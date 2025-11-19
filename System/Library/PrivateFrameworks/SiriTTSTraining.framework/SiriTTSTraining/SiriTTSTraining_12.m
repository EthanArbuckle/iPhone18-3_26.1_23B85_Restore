void kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::GetUnitOutputFnc(uint64_t a1, _DWORD *a2, unsigned int a3, uint64_t a4, const char *a5)
{
  v5 = *(a1 + 104);
  if (!v5)
  {
    kaldi::KaldiAssertFailure_("Linearity", "../subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", &stru_108.reserved2 + 3, "linearity_", a5);
  }

  if (*(v5 + 20) <= a3)
  {
    kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.segname[11], "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", a5);
  }

  v6 = *(v5 + 8) + 4 * (*(v5 + 24) * a3);
  v7 = *(v5 + 16);
  v8 = *(v5 + 32);
  v9[1] = v6;
  v9[0] = &off_276FE0;
  v9[2] = v7;
  v9[3] = v8;
  kaldi::CuVectorBase<float>::AddMatVec(a4, a2, CblasNoTrans, v9, a5, 1.0, 0.0);
}

float kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::GetUnitOutputFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *(a1 + 104);
  if (!v5)
  {
    kaldi::KaldiAssertFailure_("Linearity", "../subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", &stru_108.reserved2 + 3, "linearity_", a5);
  }

  if (*(v5 + 20) <= a3)
  {
    kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.segname[11], "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", a5);
  }

  v6 = *(v5 + 8) + 4 * *(v5 + 24) * a3;
  v7 = *(v5 + 16);
  v8 = *(v5 + 32);
  v10[1] = v6;
  v10[0] = &off_276FE0;
  v10[2] = v7;
  v10[3] = v8;
  return kaldi::VecVec<float>(a2, v10, a3, a4, a5);
}

void kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::AccumGradients(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::EnsureCorrs(a1);
  v10 = *(a1 + 60);
  *(*(a1 + 176) + 4 * a5) = *(a2 + 20);
  *(kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::LinearityCorr(a1, a5, v11, v12, v13) + 32) = a4;
  v17 = kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::LinearityCorr(a1, a5, v14, v15, v16);

  kaldi::CuMatrixBase<float>::AddMatMat(v17, a3, CblasTrans, a2, &stru_68.sectname[7], 1.0, v10);
}

void kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::EnsureCorrs(uint64_t a1)
{
  if ((*(a1 + 224) & 1) == 0)
  {
    v2 = *(a1 + 160);
    v3 = *(a1 + 80);
    if (v3 > 1)
    {
      v4 = (v3 + 1);
    }

    else
    {
      v4 = 1;
    }

    std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::resize((a1 + 112), v4);
    std::vector<kaldi::CuMatrix<float>>::resize((a1 + 136), v4);
    if (v4 >= 1)
    {
      operator new();
    }

    std::vector<int>::resize((a1 + 176), v4);
    *(a1 + 224) = 1;
  }
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::SetGradientNormalization(uint64_t result, int a2, float a3)
{
  *(result + 164) = a3;
  *(result + 160) = a2;
  *(result + 224) = 0;
  return result;
}

void kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::NormalizeGradients(uint64_t a1, int a2, uint64_t a3, uint64_t a4, const char *a5, float a6)
{
  v7 = a6;
  v9 = *(a1 + 160);
  if (v9 == 3)
  {
    if (a6 >= 0.0 && a6 <= 1.0)
    {
      v13 = kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::LinearityCorr(a1, a2, a3, a4, a5);
      v14 = *(a1 + 136) + 48 * a2;

      kaldi::nnet1::UpdatableComponent::RmspropGradient(v13, v14, v7);
    }
  }

  else if (v9 == 2)
  {
    if (a6 > 0.0)
    {
      if (*(a1 + 84))
      {
        v7 = *(*(a1 + 176) + 4 * a2) * a6;
      }

      v15 = kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::LinearityCorr(a1, a2, a3, a4, a5);
      v19 = (*(a1 + 136) + 48 * a2);

      kaldi::nnet1::UpdatableComponent::LimitL2NormGradient(v15, v19, v7, v16, v17, v18);
    }
  }

  else if (v9 == 1 && a6 > 0.0)
  {
    if (*(a1 + 84) == 1)
    {
      v7 = *(*(a1 + 176) + 4 * a2) * a6;
    }

    v10 = kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::LinearityCorr(a1, a2, a3, a4, a5);

    kaldi::nnet1::UpdatableComponent::ClipGradient(v10, v7);
  }
}

float kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::GetNormalizedLearningRate(uint64_t a1, int a2)
{
  if ((*(a1 + 84) & 1) == 0)
  {
    return *(a1 + 56);
  }

  v2 = *(a1 + 200);
  v3 = *(a1 + 208) - v2;
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

uint64_t kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::GetGradient(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  v8 = (*(*a1 + 16))(a1);
  (*(*v8 + 232))(v8, a2, a3, 0, 0);
  v9 = (*(*a1 + 176))(a1);
  kaldi::Vector<float>::Resize(a4, v9, 1, v10, v11);
  v15 = kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::LinearityCorr(v8, 0, v12, v13, v14);
  kaldi::VectorBase<float>::CopyRowsFromMat(a4, v15, v16, v17, v18);
  v19 = *(*v8 + 8);

  return v19(v8);
}

unsigned int *kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::SetLinearity(uint64_t a1, kaldi::ContextDependency *this)
{
  v4 = kaldi::ContextDependency::CentralPosition(this);
  v6 = *(a1 + 104);
  if (!v6)
  {
    goto LABEL_8;
  }

  if (v4 != *(v6 + 20))
  {
    kaldi::KaldiAssertFailure_("SetLinearity", "../subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", &stru_158.sectname[10], "linearity.NumRows() == Linearity().NumRows()", v5);
  }

  v8 = kaldi::ContextDependency::ContextWidth(this);
  v9 = *(a1 + 104);
  if (!v9)
  {
LABEL_8:
    kaldi::KaldiAssertFailure_("Linearity", "../subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", &stru_108.reserved3 + 3, "linearity_", v5);
  }

  if (v8 != *(v9 + 16))
  {
    kaldi::KaldiAssertFailure_("SetLinearity", "../subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", &stru_158.sectname[11], "linearity.NumCols() == Linearity().NumCols()", v5);
  }

  return kaldi::CuMatrixBase<float>::CopyFromMat(v9, this, 111, v7, v5);
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::CountZeroCorr(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::EnsureCorrs(a1);
  v9 = *(a1 + 104);
  if (!v9)
  {
    kaldi::KaldiAssertFailure_("Linearity", "../subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", &stru_108.reserved3 + 3, "linearity_", v8);
  }

  *a3 = *(v9 + 16) * *(v9 + 20);
  v10 = *(a1 + 120) - *(a1 + 112);
  if (v10)
  {
    v11 = v10 >> 3;
    if (*(a1 + 80) == 1)
    {
      v12 = 0;
    }

    else
    {
      v12 = *(a1 + 80);
    }

    if (v11 - 1 != v12)
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v21, "CountZeroCorr", "../subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 372);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "Unexpected mismatch in indexes: ", 32);
      v19 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "  ", 2);
      v20 = (*(a1 + 120) - *(a1 + 112)) >> 3;
      std::ostream::operator<<();
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v21);
    }

    v13 = kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::LinearityCorr(a1, v12, v6, v7, v8);
    result = kaldi::CuMatrixBase<float>::CountZeros(v13, v14, v15, v16, v17);
  }

  else
  {
    result = 0;
  }

  *a2 = result;
  return result;
}

void kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::ApplyCorr(uint64_t a1, int a2, float a3)
{
  kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::EnsureCorrs(a1);
  v9 = *(a1 + 104);
  if (!v9)
  {
    kaldi::KaldiAssertFailure_("Linearity", "../subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", &stru_108.reserved3 + 3, "linearity_", v8);
  }

  v10 = -(a3 * *(a1 + 168));
  v11 = kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::LinearityCorr(a1, a2, v6, v7, v8);

  kaldi::CuMatrixBase<float>::AddMat(v9, v11, 111, v12, v13, v10, 1.0);
}

void kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::LinearTransform(uint64_t a1, int a2, int a3)
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
  *a1 = off_2784F8;
  *(a1 + 88) = off_278630;
  *(a1 + 96) = off_278658;
  operator new();
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::LinearTransform(uint64_t a1, uint64_t a2)
{
  *a1 = off_279038;
  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  std::vector<kaldi::EventMap *>::__init_with_size[abi:ne200100]<kaldi::EventMap **,kaldi::EventMap **>(a1 + 24, *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 3);
  *a1 = off_27A660;
  *(a1 + 48) = off_282980;
  v5 = *(a2 + 56);
  *(a1 + 71) = *(a2 + 71);
  *(a1 + 56) = v5;
  *a1 = off_2784F8;
  *(a1 + 88) = off_278630;
  *(a1 + 104) = 0;
  *(a1 + 96) = off_278658;
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::vector[abi:ne200100]((a1 + 112), (*(a2 + 120) - *(a2 + 112)) >> 3);
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 136, *(a2 + 136), *(a2 + 144), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 144) - *(a2 + 136)) >> 4));
  v6 = *(a2 + 160);
  v7 = *(a2 + 164);
  *(a1 + 176) = 0;
  *(a1 + 160) = v6;
  *(a1 + 164) = v7;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 176, *(a2 + 176), *(a2 + 184), (*(a2 + 184) - *(a2 + 176)) >> 2);
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 200, *(a2 + 200), *(a2 + 208), (*(a2 + 208) - *(a2 + 200)) >> 2);
  v11 = *(a2 + 224);
  *(a1 + 232) = 0u;
  *(a1 + 224) = v11;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0;
  if (*(a1 + 16) == 1)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v17, "LinearTransform", "../subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 79);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "deep copy constructor not implemented in the case of vectorized_weights.", 72);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v17);
  }

  if (*(a2 + 104))
  {
    operator new();
  }

  v13 = *(a1 + 112);
  v12 = *(a1 + 120);
  if (v12 != v13)
  {
    v14 = 0;
    do
    {
      if (*(*(a2 + 112) + 8 * v14))
      {
        v15 = kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::LinearityCorr(a2, v14, v8, v9, v10);
        kaldi::NewCuSubOrMat<float>(v15, *(a1 + 16));
      }

      ++v14;
    }

    while (v14 < (v12 - v13) >> 3);
  }

  if (*(a2 + 240) != *(a2 + 232))
  {
    kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::InitResidualAggregator(a1, (a1 + 232));
  }

  return a1;
}

void sub_D0A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  kaldi::nnet1::QuantizerResidualAggregator::~QuantizerResidualAggregator(v8);
  v10 = *v7;
  if (*v7)
  {
    *(v4 + 26) = v10;
    operator delete(v10);
  }

  v11 = *v6;
  if (*v6)
  {
    *(v4 + 23) = v11;
    operator delete(v11);
  }

  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](va);
  std::unique_ptr<kaldi::QuantizedMatrix<signed char>>::reset[abi:ne200100](v5, 0);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a3);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a4);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v4);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::InitResidualAggregator(uint64_t a1, uint64_t *a2)
{
  kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::EnsureCorrs(a1);
  v7 = kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::LinearityCorr(a1, ((*(a1 + 120) - *(a1 + 112)) >> 3) - 1, v4, v5, v6);

  return kaldi::nnet1::QuantizerResidualAggregator::PushSetup(a2, v7);
}

void kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::~LinearTransform(uint64_t a1)
{
  *a1 = off_2784F8;
  v2 = a1 + 88;
  *(a1 + 88) = off_278630;
  v3 = a1 + 96;
  *(a1 + 96) = off_278658;
  kaldi::nnet1::QuantizerResidualAggregator::~QuantizerResidualAggregator((a1 + 232));
  v4 = *(a1 + 200);
  if (v4)
  {
    *(a1 + 208) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 176);
  if (v5)
  {
    *(a1 + 184) = v5;
    operator delete(v5);
  }

  v6 = (a1 + 136);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v6 = (a1 + 112);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&v6);
  std::unique_ptr<kaldi::QuantizedMatrix<signed char>>::reset[abi:ne200100]((a1 + 104), 0);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v3);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v2);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(a1);
}

{
  kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::~LinearTransform(a1);

  operator delete();
}

void non-virtual thunk tokaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::~LinearTransform(uint64_t a1)
{
  kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::~LinearTransform(a1 - 88);
}

{
  kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::~LinearTransform(a1 - 96);
}

{
  kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::~LinearTransform(a1 - 88);

  operator delete();
}

{
  kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::~LinearTransform(a1 - 96);

  operator delete();
}

void kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::InitData(uint64_t a1, uint64_t *a2, kaldi::UniformRandomNumber *a3)
{
  v73 = 1036831949;
  kaldi::nnet1::Component::TypeToMarker((&dword_0 + 2), &v72);
  kaldi::nnet1::Component::TypeToMarker(*(a1 + 160), &v71);
  v70 = -1;
  memset(v69, 0, sizeof(v69));
  while (1)
  {
    if ((*(a2 + *(*a2 - 24) + 32) & 2) != 0)
    {
      goto LABEL_98;
    }

    kaldi::ReadToken(a2, 0, v69, v6, v7);
    if (SHIBYTE(v69[2]) < 0)
    {
      break;
    }

    if (HIBYTE(v69[2]) <= 0xEu)
    {
      if (HIBYTE(v69[2]) == 9)
      {
        v19 = v69;
        goto LABEL_78;
      }

      if (HIBYTE(v69[2]) == 12)
      {
        if (v69[0] != 0x536D6F646E61523CLL || LODWORD(v69[1]) != 1046766949)
        {
          v30 = v69;
          goto LABEL_93;
        }

LABEL_66:
        kaldi::ReadBasicType<int>(a2, 0, &v70, v8, v9);
        goto LABEL_89;
      }

      if (HIBYTE(v69[2]) != 13)
      {
        goto LABEL_142;
      }

      if (v69[0] != 0x74536D617261503CLL || *(v69 + 5) != 0x3E7665646474536DLL)
      {
        goto LABEL_142;
      }

      goto LABEL_60;
    }

    if (HIBYTE(v69[2]) != 15)
    {
      if (HIBYTE(v69[2]) == 18)
      {
        if (v69[0] != 0x6E6569646172473CLL || v69[1] != 0x7079546D726F4E74 || LOWORD(v69[2]) != 15973)
        {
          goto LABEL_142;
        }

        goto LABEL_75;
      }

      if (HIBYTE(v69[2]) != 19)
      {
        goto LABEL_142;
      }

      v20 = v69[0] == 0x61725474696E493CLL && v69[1] == 0x79546D726F66736ELL;
      if (!v20 || *(&v69[1] + 3) != 0x3E657079546D726FLL)
      {
        goto LABEL_142;
      }

LABEL_59:
      v22 = &v72;
LABEL_76:
      kaldi::ReadToken(a2, 0, v22, v8, v9);
      goto LABEL_89;
    }

    v29 = v69[0] == 0x61526E7261654C3CLL && *(v69 + 7) == 0x3E66656F43657461;
    v13 = (a1 + 168);
    if (!v29)
    {
      goto LABEL_142;
    }

LABEL_88:
    kaldi::ReadBasicType<float>(a2, 0, v13, v8, v9);
LABEL_89:
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }

  if (v69[1] == &dword_C + 1 && *v69[0] == 0x74536D617261503CLL && *(v69[0] + 5) == 0x3E7665646474536DLL)
  {
LABEL_60:
    v13 = &v73;
    goto LABEL_88;
  }

  if (v69[1] == &dword_C + 3)
  {
    v12 = *v69[0] == 0x61526E7261654C3CLL && *(v69[0] + 7) == 0x3E66656F43657461;
    v13 = (a1 + 168);
    if (v12)
    {
      goto LABEL_88;
    }
  }

  if (v69[1] == &dword_10 + 3)
  {
    if (*v69[0] == 0x61725474696E493CLL && *(v69[0] + 1) == 0x79546D726F66736ELL && *(v69[0] + 11) == 0x3E657079546D726FLL)
    {
      goto LABEL_59;
    }
  }

  else if (v69[1] == &dword_C && *v69[0] == 0x536D6F646E61523CLL && *(v69[0] + 2) == 1046766949)
  {
    goto LABEL_66;
  }

  if (v69[1] != &dword_8 + 1)
  {
    if (v69[1] != &dword_10 + 2)
    {
      goto LABEL_91;
    }

    v17 = *v69[0] == 0x6E6569646172473CLL && *(v69[0] + 1) == 0x7079546D726F4E74;
    if (!v17 || *(v69[0] + 8) != 15973)
    {
      goto LABEL_91;
    }

LABEL_75:
    v22 = &v71;
    goto LABEL_76;
  }

  v19 = v69[0];
LABEL_78:
  v26 = *v19;
  v27 = *(v19 + 8);
  v28 = v26 == 0x6461724778614D3CLL && v27 == 62;
  v13 = (a1 + 164);
  if (v28)
  {
    goto LABEL_88;
  }

  if ((HIBYTE(v69[2]) & 0x80) == 0)
  {
    goto LABEL_142;
  }

LABEL_91:
  if (v69[1] != &dword_C)
  {
    goto LABEL_142;
  }

  v30 = v69[0];
LABEL_93:
  v31 = *v30;
  v32 = *(v30 + 2);
  if (v31 != 0x6E6F706D6F432F3CLL || v32 != 1047817829)
  {
LABEL_142:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v68, "InitData", "../subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 140);
    v55 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v68, "Unknown token ", 14);
    if (SHIBYTE(v69[2]) >= 0)
    {
      v56 = v69;
    }

    else
    {
      v56 = v69[0];
    }

    if (SHIBYTE(v69[2]) >= 0)
    {
      v57 = HIBYTE(v69[2]);
    }

    else
    {
      v57 = v69[1];
    }

    v58 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v55, v56, v57);
    v59 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, ", a typo in config?", 19);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v59, " (ParamStddev|LearnRateCoef|InitTransformType|RandomSeed|GradientNormType|MaxGrad)", 82);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v68);
  }

LABEL_98:
  inited = kaldi::nnet1::Component::MarkerToMatrixInitType(&v72);
  *(a1 + 160) = kaldi::nnet1::Component::MarkerToGradientNormType(&v71);
  if (v70 >= 1)
  {
    kaldi::UniformRandomNumber::SetRandomSeeds(a3, v70);
  }

  kaldi::GaussRandomNumber::GaussRandomNumber(v64, a3);
  kaldi::Matrix<float>::Matrix(&v60, *(a1 + 12), *(a1 + 8), 0, 0);
  v38 = *(a1 + 12);
  if (v38 < 1)
  {
    goto LABEL_126;
  }

  v39 = 0;
  LODWORD(v40) = *(a1 + 8);
  while (2)
  {
    if (v40 < 1)
    {
      goto LABEL_125;
    }

    v41 = 0;
    while (2)
    {
      switch(inited)
      {
        case 0:
          if (v39 >= v62 || v41 >= v61)
          {
LABEL_141:
            kaldi::KaldiAssertFailure_("operator()", "../subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.h", &stru_B8.segname[5], "static_cast<UnsignedMatrixIndexT>(r) < static_cast<UnsignedMatrixIndexT>(num_rows_) && static_cast<UnsignedMatrixIndexT>(c) < static_cast<UnsignedMatrixIndexT>(num_cols_)", v37);
          }

          v44 = v60 + 4 * v39 * v63;
          if (v39 == v41)
          {
            v45 = 1.0;
          }

          else
          {
            v45 = 0.0;
          }

          goto LABEL_122;
        case 2:
          v46 = *&v73;
          kaldi::GaussRandomNumber::Rand(v64, 0, v35, v36, v37);
          if (v39 >= v62 || v41 >= v61)
          {
            goto LABEL_141;
          }

          v44 = v60 + 4 * v39 * v63;
          v45 = v46 * v47;
LABEL_122:
          *(v44 + 4 * v41) = v45;
          break;
        case 1:
          v42 = *&v73;
          v43 = kaldi::UniformRandomNumber::RandUniform(a3, 0, v35, v36, v37);
          if (v39 >= v62 || v41 >= v61)
          {
            goto LABEL_141;
          }

          v44 = v60 + 4 * v39 * v63;
          v45 = (v43 + -0.5) * (v42 + v42);
          goto LABEL_122;
      }

      ++v41;
      v40 = *(a1 + 8);
      if (v41 < v40)
      {
        continue;
      }

      break;
    }

    v38 = *(a1 + 12);
LABEL_125:
    if (++v39 < v38)
    {
      continue;
    }

    break;
  }

LABEL_126:
  v50 = *(a1 + 104);
  if (!v50)
  {
    goto LABEL_149;
  }

  v51 = kaldi::QuantizedMatrixBase<short>::NumRows(v50);
  if (v51 != kaldi::ContextDependency::CentralPosition(&v60))
  {
    goto LABEL_140;
  }

  v52 = *(a1 + 104);
  if (!v52)
  {
    goto LABEL_149;
  }

  v53 = kaldi::QuantizedMatrixBase<short>::NumCols(v52);
  if (v53 != kaldi::ContextDependency::ContextWidth(&v60))
  {
LABEL_140:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v68, "InitData", "../subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 163);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v68, "Linearity().NumRows() == mat.NumRows() && Linearity().NumCols() == mat.NumCols()", 80);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v68);
  }

  v54 = *(a1 + 104);
  if (!v54)
  {
LABEL_149:
    kaldi::KaldiAssertFailure_("Linearity", "../subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", &stru_108.reserved3 + 3, "linearity_", v37);
  }

  kaldi::QuantizedMatrixBase<signed char>::CopyFromMat(v54, &v60);
  kaldi::Matrix<float>::~Matrix(&v60);
  if (__p)
  {
    v67 = __p;
    operator delete(__p);
  }

  v68[0] = &v65;
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](v68);
  if (SHIBYTE(v69[2]) < 0)
  {
    operator delete(v69[0]);
  }

  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v71.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v72.__r_.__value_.__l.__data_);
  }
}

void sub_D1624(_Unwind_Exception *a1)
{
  kaldi::Matrix<float>::~Matrix(&v3);
  kaldi::GaussRandomNumber::~GaussRandomNumber(&v4);
  if (*(v1 - 185) < 0)
  {
    operator delete(*(v1 - 208));
  }

  if (*(v1 - 153) < 0)
  {
    operator delete(*(v1 - 176));
  }

  if (*(v1 - 129) < 0)
  {
    operator delete(*(v1 - 152));
  }

  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::ReadData(uint64_t a1, uint64_t *a2, int a3, uint64_t a4)
{
  while (kaldi::Peek(a2, a3) == 60)
  {
    v33 = 0uLL;
    v34 = 0;
    kaldi::ReadToken(a2, a3, &v33, v7, v8);
    if (SHIBYTE(v34) < 0)
    {
      if (*(&v33 + 1) != 15 || (*v33 == 0x61526E7261654C3CLL ? (v13 = *(v33 + 7) == 0x3E66656F43657461) : (v13 = 0), v14 = (a1 + 168), !v13))
      {
        if (*(&v33 + 1) == 18)
        {
          v15 = *v33 == 0x6E6569646172473CLL && *(v33 + 8) == 0x7079546D726F4E74;
          if (v15 && *(v33 + 16) == 15973)
          {
            goto LABEL_29;
          }
        }

        if (*(&v33 + 1) != 9)
        {
          goto LABEL_52;
        }

        v17 = v33;
        goto LABEL_37;
      }
    }

    else
    {
      if (HIBYTE(v34) == 9)
      {
        v17 = &v33;
LABEL_37:
        v19 = *v17;
        v20 = *(v17 + 8);
        v21 = v19 == 0x6461724778614D3CLL && v20 == 62;
        v14 = (a1 + 164);
        if (!v21)
        {
LABEL_52:
          kaldi::KaldiErrorMessage::KaldiErrorMessage(__p, "ReadData", "../subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 181);
          v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "unrecognized config token ", 26);
          if (v34 >= 0)
          {
            v28 = &v33;
          }

          else
          {
            v28 = v33;
          }

          if (v34 >= 0)
          {
            v29 = HIBYTE(v34);
          }

          else
          {
            v29 = *(&v33 + 1);
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, v28, v29);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
        }

        goto LABEL_42;
      }

      if (HIBYTE(v34) != 15)
      {
        if (HIBYTE(v34) != 18)
        {
          goto LABEL_52;
        }

        v11 = v33 == 0x6E6569646172473CLL && *(&v33 + 1) == 0x7079546D726F4E74;
        if (!v11 || v34 != 15973)
        {
          goto LABEL_52;
        }

LABEL_29:
        __p[0] = 0;
        __p[1] = 0;
        v32 = 0;
        kaldi::ReadToken(a2, a3, __p, v9, v10);
        *(a1 + 160) = kaldi::nnet1::Component::MarkerToGradientNormType(__p);
        if (SHIBYTE(v32) < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_43;
      }

      v18 = v33 == 0x61526E7261654C3CLL && *(&v33 + 7) == 0x3E66656F43657461;
      v14 = (a1 + 168);
      if (!v18)
      {
        goto LABEL_52;
      }
    }

LABEL_42:
    kaldi::ReadBasicType<float>(a2, a3, v14, v9, v10);
LABEL_43:
    if (SHIBYTE(v34) < 0)
    {
      operator delete(v33);
    }
  }

  v22 = *(a1 + 104);
  if (!v22)
  {
    goto LABEL_59;
  }

  kaldi::QuantizedMatrix<signed char>::Read(v22, a2, a3, a4, v8);
  *(a1 + 16) = 0;
  v23 = *(a1 + 104);
  if (!v23)
  {
    goto LABEL_59;
  }

  if (kaldi::QuantizedMatrixBase<short>::NumRows(v23) != *(a1 + 12))
  {
    kaldi::KaldiAssertFailure_("ReadData", "../subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", &stru_B8.sectname[7], "Linearity().NumRows() == output_dim_", v8);
  }

  v24 = *(a1 + 104);
  if (!v24)
  {
LABEL_59:
    kaldi::KaldiAssertFailure_("Linearity", "../subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", &stru_108.reserved3 + 3, "linearity_", v8);
  }

  result = kaldi::QuantizedMatrixBase<short>::NumCols(v24);
  if (result != *(a1 + 8))
  {
    kaldi::KaldiAssertFailure_("ReadData", "../subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", &stru_B8.sectname[8], "Linearity().NumCols() == input_dim_", v26);
  }

  return result;
}

void sub_D19CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (*(v16 - 89) < 0)
  {
    operator delete(*(v16 - 112));
  }

  _Unwind_Resume(exception_object);
}

void *kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::WriteConfig(unsigned int *a1, void *a2, const char *a3, uint64_t a4, const char *a5)
{
  kaldi::WriteToken(a2, a3, "<LearnRateCoef>", a4, a5);
  v8 = a1[42];
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<GradientNormType>", v9, v10);
  kaldi::nnet1::Component::TypeToMarker(a1[40], &__p);
  kaldi::WriteToken(a2, a3, &__p, v11, v12);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  kaldi::WriteToken(a2, a3, "<MaxGrad>", v13, v14);
  v15 = a1[41];
  return kaldi::WriteBasicType<float>(a2, a3);
}

void sub_D1AC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::WriteData(void *a1, void *a2, int a3, int a4)
{
  (*(*a1 + 168))(a1);
  v9 = a1[13];
  if (!v9)
  {
    kaldi::KaldiAssertFailure_("Linearity", "../subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", &stru_108.reserved2 + 3, "linearity_", v8);
  }

  return kaldi::QuantizedMatrix<signed char>::Write(v9, a2, a3, a4);
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::NumParams(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *(a1 + 104);
  if (!v6 || (v7 = kaldi::QuantizedMatrixBase<short>::NumRows(v6), (v8 = *(a1 + 104)) == 0))
  {
    kaldi::KaldiAssertFailure_("Linearity", "../subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", &stru_108.reserved2 + 3, "linearity_", a5);
  }

  return kaldi::QuantizedMatrixBase<short>::NumCols(v8) * v7;
}

void kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::GetParams(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *(a1 + 104);
  if (!v6)
  {
    goto LABEL_6;
  }

  v8 = kaldi::QuantizedMatrixBase<short>::NumRows(v6);
  v9 = *(a1 + 104);
  if (!v9)
  {
    goto LABEL_6;
  }

  v10 = kaldi::QuantizedMatrixBase<short>::NumCols(v9) * v8;
  kaldi::Vector<float>::Resize(a2, v10, 0, v11, v12);
  v15 = 0;
  v16 = 0;
  if (v10 > *(a2 + 8))
  {
    kaldi::KaldiAssertFailure_("SubVector", "../subproject/libquasar/libkaldi/src/matrix/kaldi-vector.h", &stru_1F8.size + 6, "static_cast<UnsignedMatrixIndexT>(origin)+ static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", a5);
  }

  v14 = *a2;
  LODWORD(v15) = v10;
  v13 = *(a1 + 104);
  if (!v13)
  {
LABEL_6:
    kaldi::KaldiAssertFailure_("Linearity", "../subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", &stru_108.reserved2 + 3, "linearity_", a5);
  }

  kaldi::VectorBase<float>::CopyRowsFromMat<signed char>(&v14, v13);
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::SetParams(void *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4 != (*(*a1 + 176))(a1))
  {
    kaldi::KaldiAssertFailure_("SetParams", "../subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", &stru_B8.addr + 2, "wei_src.Dim() == NumParams()", v5);
  }

  v6 = a1[13];
  if (!v6)
  {
    kaldi::KaldiAssertFailure_("Linearity", "../subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", &stru_108.reserved3 + 3, "linearity_", v5);
  }

  return kaldi::QuantizedMatrixBase<signed char>::CopyRowsFromVec(v6, a2);
}

float kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::SumParams(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *(a1 + 104);
  if (!v6)
  {
    kaldi::KaldiAssertFailure_("Linearity", "../subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", &stru_108.reserved2 + 3, "linearity_", a5);
  }

  return kaldi::QuantizedMatrixBase<signed char>::Sum(v6, a2, a3, a4, a5);
}

void kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::PerturbParams(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *(a1 + 104);
  if (v6)
  {
    v7 = kaldi::QuantizedMatrixBase<short>::NumRows(v6);
    v8 = *(a1 + 104);
    if (v8)
    {
      v9 = kaldi::QuantizedMatrixBase<short>::NumCols(v8);
      kaldi::CuMatrix<float>::CuMatrix(v11, v7, v9, 1u, 0, 0);
      kaldi::CuMatrixBase<float>::SetRandn(v11);
      if (*(a1 + 104))
      {
        kaldi::QuantizedMatrixBase<signed char>::AddMat();
      }

      kaldi::KaldiAssertFailure_("Linearity", "../subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", &stru_108.reserved3 + 3, "linearity_", v10);
    }
  }

  kaldi::KaldiAssertFailure_("Linearity", "../subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", &stru_108.reserved3 + 3, "linearity_", a5);
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::Info(void *a1)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v10);
  (*(*a1 + 168))(a1, &v10, 0);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "\n linearity", 11);
  v4 = a1[13];
  if (!v4)
  {
    kaldi::KaldiAssertFailure_("Linearity", "../subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", &stru_108.reserved2 + 3, "linearity_", v2);
  }

  kaldi::nnet1::MomentStatistics<signed char>(v4);
  if ((v9 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v9 & 0x80u) == 0)
  {
    v6 = v9;
  }

  else
  {
    v6 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, v5, v6);
  if (v9 < 0)
  {
    operator delete(__p[0]);
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

void sub_D208C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::MomentStatistics<signed char>(unsigned int *a1)
{
  v2 = kaldi::QuantizedMatrixBase<short>::NumRows(a1);
  v3 = kaldi::QuantizedMatrixBase<short>::NumCols(a1);
  memset(v10, 0, sizeof(v10));
  kaldi::Vector<float>::Resize(v10, (v3 * v2), 0, v4, v5);
  kaldi::VectorBase<float>::CopyRowsFromMat<signed char>(v10, a1);
  kaldi::nnet1::MomentStatistics<float>(v10, v6, v7, v8, v9);
  kaldi::Vector<float>::Destroy(v10);
}

void sub_D213C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::Vector<float>::Destroy(va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::InfoGradient(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  boost::filesystem::path::path(&v21, "\n  linearity_grad");
  kaldi::nnet1::MomentStatistics<float>((a1 + 112), v4, v5, v6, v7);
  if ((v20 & 0x80u) == 0)
  {
    v8 = v19;
  }

  else
  {
    v8 = v19[0];
  }

  if ((v20 & 0x80u) == 0)
  {
    v9 = v20;
  }

  else
  {
    v9 = v19[1];
  }

  v10 = std::string::append(&v21, v8, v9);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v22.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v22.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = std::string::append(&v22, ", lr-coef ");
  v13 = *&v12->__r_.__value_.__l.__data_;
  v23.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v23.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  kaldi::nnet1::ToString<float>((a1 + 168));
  if ((v18 & 0x80u) == 0)
  {
    v14 = __p;
  }

  else
  {
    v14 = __p[0];
  }

  if ((v18 & 0x80u) == 0)
  {
    v15 = v18;
  }

  else
  {
    v15 = __p[1];
  }

  v16 = std::string::append(&v23, v14, v15);
  *a2 = *v16;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
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

void sub_D22A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v33 - 41) < 0)
  {
    operator delete(*(v33 - 64));
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

kaldi::ContextDependency *kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *(a1 + 104);
  if (!v6)
  {
    kaldi::KaldiAssertFailure_("Linearity", "../subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", &stru_108.reserved3 + 3, "linearity_", a5);
  }

  return kaldi::CuMatrixBase<float>::AddMatMat<signed char>(a3, a2, 111, v6, &stru_68.sectname[8], 1.0, 0.0);
}

void kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(a1 + 104))
  {

    kaldi::CuVectorBase<float>::AddMatVec<signed char>();
  }

  kaldi::KaldiAssertFailure_("Linearity", "../subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", &stru_108.reserved3 + 3, "linearity_", a5);
}

kaldi::ContextDependency *kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::BackpropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *(a1 + 104);
  if (!v6)
  {
    kaldi::KaldiAssertFailure_("Linearity", "../subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", &stru_108.reserved3 + 3, "linearity_", a5);
  }

  return kaldi::CuMatrixBase<float>::AddMatMat<signed char>(a5, a4, 111, v6, &stru_68.sectname[7], 1.0, 0.0);
}

void kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::GetUnitOutputFnc(uint64_t a1, _DWORD *a2, int a3, uint64_t a4, const char *a5)
{
  v5 = *(a1 + 104);
  if (!v5)
  {
    kaldi::KaldiAssertFailure_("Linearity", "../subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", &stru_108.reserved2 + 3, "linearity_", a5);
  }

  kaldi::QuantizedMatrixBase<signed char>::Row(v5, a3, v9);
  kaldi::CuVectorBase<float>::AddMatVec<signed char>(a4, a2, 111, v9, v8, 1.0, 0.0);
}

float kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::GetUnitOutputFnc(uint64_t a1, uint64_t a2, int a3, uint64_t a4, const char *a5)
{
  v5 = *(a1 + 104);
  if (!v5)
  {
    kaldi::KaldiAssertFailure_("Linearity", "../subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", &stru_108.reserved2 + 3, "linearity_", a5);
  }

  kaldi::QuantizedMatrixBase<signed char>::Row(v5, a3, v11);
  return kaldi::VecVec<float,signed char>(a2, v11, v7, v8, v9);
}

void kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::AccumGradients(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::EnsureCorrs(a1);
  v10 = *(a1 + 60);
  *(*(a1 + 176) + 4 * a5) = *(a2 + 20);
  *(kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::LinearityCorr(a1, a5, v11, v12, v13) + 32) = a4;
  v17 = kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::LinearityCorr(a1, a5, v14, v15, v16);

  kaldi::CuMatrixBase<float>::AddMatMat(v17, a3, CblasTrans, a2, &stru_68.sectname[7], 1.0, v10);
}

void kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::EnsureCorrs(uint64_t a1)
{
  if ((*(a1 + 224) & 1) == 0)
  {
    v2 = *(a1 + 160);
    v3 = *(a1 + 80);
    if (v3 > 1)
    {
      v4 = (v3 + 1);
    }

    else
    {
      v4 = 1;
    }

    std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::resize((a1 + 112), v4);
    std::vector<kaldi::CuMatrix<float>>::resize((a1 + 136), v4);
    if (v4 >= 1)
    {
      operator new();
    }

    std::vector<int>::resize((a1 + 176), v4);
    *(a1 + 224) = 1;
  }
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::SetGradientNormalization(uint64_t result, int a2, float a3)
{
  *(result + 164) = a3;
  *(result + 160) = a2;
  *(result + 224) = 0;
  return result;
}

void kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::NormalizeGradients(uint64_t a1, int a2, uint64_t a3, uint64_t a4, const char *a5, float a6)
{
  v7 = a6;
  v9 = *(a1 + 160);
  if (v9 == 3)
  {
    if (a6 >= 0.0 && a6 <= 1.0)
    {
      v13 = kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::LinearityCorr(a1, a2, a3, a4, a5);
      v14 = *(a1 + 136) + 48 * a2;

      kaldi::nnet1::UpdatableComponent::RmspropGradient(v13, v14, v7);
    }
  }

  else if (v9 == 2)
  {
    if (a6 > 0.0)
    {
      if (*(a1 + 84))
      {
        v7 = *(*(a1 + 176) + 4 * a2) * a6;
      }

      v15 = kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::LinearityCorr(a1, a2, a3, a4, a5);
      v19 = (*(a1 + 136) + 48 * a2);

      kaldi::nnet1::UpdatableComponent::LimitL2NormGradient(v15, v19, v7, v16, v17, v18);
    }
  }

  else if (v9 == 1 && a6 > 0.0)
  {
    if (*(a1 + 84) == 1)
    {
      v7 = *(*(a1 + 176) + 4 * a2) * a6;
    }

    v10 = kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::LinearityCorr(a1, a2, a3, a4, a5);

    kaldi::nnet1::UpdatableComponent::ClipGradient(v10, v7);
  }
}

float kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::GetNormalizedLearningRate(uint64_t a1, int a2)
{
  if ((*(a1 + 84) & 1) == 0)
  {
    return *(a1 + 56);
  }

  v2 = *(a1 + 200);
  v3 = *(a1 + 208) - v2;
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

void kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::UpdateWeights()
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v0, "UpdateWeights", "../subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 314);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Unimplemented except for BaseFloat weights");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::GetGradient(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  v8 = (*(*a1 + 16))(a1);
  (*(*v8 + 232))(v8, a2, a3, 0, 0);
  v9 = (*(*a1 + 176))(a1);
  kaldi::Vector<float>::Resize(a4, v9, 1, v10, v11);
  v15 = kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::LinearityCorr(v8, 0, v12, v13, v14);
  kaldi::VectorBase<float>::CopyRowsFromMat(a4, v15, v16, v17, v18);
  v19 = *(*v8 + 8);

  return v19(v8);
}

void kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::VectorizeWeightsCorrs()
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v0, "VectorizeWeightsCorrs", "../subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 334);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Unimplemented except for BaseFloat weights");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::CountZeroCorr(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::EnsureCorrs(a1);
  v7 = *(a1 + 104);
  if (!v7 || (v8 = kaldi::QuantizedMatrixBase<short>::NumRows(v7), (v9 = *(a1 + 104)) == 0))
  {
    kaldi::KaldiAssertFailure_("Linearity", "../subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", &stru_108.reserved3 + 3, "linearity_", v6);
  }

  *a3 = kaldi::QuantizedMatrixBase<short>::NumCols(v9) * v8;
  v13 = *(a1 + 120) - *(a1 + 112);
  if (v13)
  {
    v14 = v13 >> 3;
    if (*(a1 + 80) == 1)
    {
      v15 = 0;
    }

    else
    {
      v15 = *(a1 + 80);
    }

    if (v14 - 1 != v15)
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v24, "CountZeroCorr", "../subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 372);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "Unexpected mismatch in indexes: ", 32);
      v22 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "  ", 2);
      v23 = (*(a1 + 120) - *(a1 + 112)) >> 3;
      std::ostream::operator<<();
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v24);
    }

    v16 = kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::LinearityCorr(a1, v15, v10, v11, v12);
    result = kaldi::CuMatrixBase<float>::CountZeros(v16, v17, v18, v19, v20);
  }

  else
  {
    result = 0;
  }

  *a2 = result;
  return result;
}

void kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::LinearTransform(uint64_t a1, int a2, int a3)
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
  *a1 = off_278680;
  *(a1 + 88) = off_2787B8;
  *(a1 + 96) = off_2787E0;
  operator new();
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::LinearTransform(uint64_t a1, uint64_t a2)
{
  *a1 = off_279038;
  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  std::vector<kaldi::EventMap *>::__init_with_size[abi:ne200100]<kaldi::EventMap **,kaldi::EventMap **>(a1 + 24, *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 3);
  *a1 = off_27A660;
  *(a1 + 48) = off_282980;
  v5 = *(a2 + 56);
  *(a1 + 71) = *(a2 + 71);
  *(a1 + 56) = v5;
  *a1 = off_278680;
  *(a1 + 88) = off_2787B8;
  *(a1 + 104) = 0;
  *(a1 + 96) = off_2787E0;
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::vector[abi:ne200100]((a1 + 112), (*(a2 + 120) - *(a2 + 112)) >> 3);
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 136, *(a2 + 136), *(a2 + 144), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 144) - *(a2 + 136)) >> 4));
  v6 = *(a2 + 160);
  v7 = *(a2 + 164);
  *(a1 + 176) = 0;
  *(a1 + 160) = v6;
  *(a1 + 164) = v7;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 176, *(a2 + 176), *(a2 + 184), (*(a2 + 184) - *(a2 + 176)) >> 2);
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 200, *(a2 + 200), *(a2 + 208), (*(a2 + 208) - *(a2 + 200)) >> 2);
  v11 = *(a2 + 224);
  *(a1 + 232) = 0u;
  *(a1 + 224) = v11;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0;
  if (*(a1 + 16) == 1)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v17, "LinearTransform", "../subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 79);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "deep copy constructor not implemented in the case of vectorized_weights.", 72);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v17);
  }

  if (*(a2 + 104))
  {
    operator new();
  }

  v13 = *(a1 + 112);
  v12 = *(a1 + 120);
  if (v12 != v13)
  {
    v14 = 0;
    do
    {
      if (*(*(a2 + 112) + 8 * v14))
      {
        v15 = kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::LinearityCorr(a2, v14, v8, v9, v10);
        kaldi::NewCuSubOrMat<float>(v15, *(a1 + 16));
      }

      ++v14;
    }

    while (v14 < (v12 - v13) >> 3);
  }

  if (*(a2 + 240) != *(a2 + 232))
  {
    kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::InitResidualAggregator(a1, (a1 + 232));
  }

  return a1;
}

void sub_D3170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  kaldi::nnet1::QuantizerResidualAggregator::~QuantizerResidualAggregator(v8);
  v10 = *v7;
  if (*v7)
  {
    *(v4 + 26) = v10;
    operator delete(v10);
  }

  v11 = *v6;
  if (*v6)
  {
    *(v4 + 23) = v11;
    operator delete(v11);
  }

  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](va);
  std::unique_ptr<kaldi::QuantizedMatrix<short>>::reset[abi:ne200100](v5, 0);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a3);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a4);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v4);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::InitResidualAggregator(uint64_t a1, uint64_t *a2)
{
  kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::EnsureCorrs(a1);
  v7 = kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::LinearityCorr(a1, ((*(a1 + 120) - *(a1 + 112)) >> 3) - 1, v4, v5, v6);

  return kaldi::nnet1::QuantizerResidualAggregator::PushSetup(a2, v7);
}

void kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::~LinearTransform(uint64_t a1)
{
  *a1 = off_278680;
  v2 = a1 + 88;
  *(a1 + 88) = off_2787B8;
  v3 = a1 + 96;
  *(a1 + 96) = off_2787E0;
  kaldi::nnet1::QuantizerResidualAggregator::~QuantizerResidualAggregator((a1 + 232));
  v4 = *(a1 + 200);
  if (v4)
  {
    *(a1 + 208) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 176);
  if (v5)
  {
    *(a1 + 184) = v5;
    operator delete(v5);
  }

  v6 = (a1 + 136);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v6 = (a1 + 112);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&v6);
  std::unique_ptr<kaldi::QuantizedMatrix<short>>::reset[abi:ne200100]((a1 + 104), 0);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v3);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v2);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(a1);
}

{
  kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::~LinearTransform(a1);

  operator delete();
}

void non-virtual thunk tokaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::~LinearTransform(uint64_t a1)
{
  kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::~LinearTransform(a1 - 88);
}

{
  kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::~LinearTransform(a1 - 96);
}

{
  kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::~LinearTransform(a1 - 88);

  operator delete();
}

{
  kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::~LinearTransform(a1 - 96);

  operator delete();
}

void kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::InitData(uint64_t a1, uint64_t *a2, kaldi::UniformRandomNumber *a3)
{
  v73 = 1036831949;
  kaldi::nnet1::Component::TypeToMarker((&dword_0 + 2), &v72);
  kaldi::nnet1::Component::TypeToMarker(*(a1 + 160), &v71);
  v70 = -1;
  memset(v69, 0, sizeof(v69));
  while (1)
  {
    if ((*(a2 + *(*a2 - 24) + 32) & 2) != 0)
    {
      goto LABEL_98;
    }

    kaldi::ReadToken(a2, 0, v69, v6, v7);
    if (SHIBYTE(v69[2]) < 0)
    {
      break;
    }

    if (HIBYTE(v69[2]) <= 0xEu)
    {
      if (HIBYTE(v69[2]) == 9)
      {
        v19 = v69;
        goto LABEL_78;
      }

      if (HIBYTE(v69[2]) == 12)
      {
        if (v69[0] != 0x536D6F646E61523CLL || LODWORD(v69[1]) != 1046766949)
        {
          v30 = v69;
          goto LABEL_93;
        }

LABEL_66:
        kaldi::ReadBasicType<int>(a2, 0, &v70, v8, v9);
        goto LABEL_89;
      }

      if (HIBYTE(v69[2]) != 13)
      {
        goto LABEL_142;
      }

      if (v69[0] != 0x74536D617261503CLL || *(v69 + 5) != 0x3E7665646474536DLL)
      {
        goto LABEL_142;
      }

      goto LABEL_60;
    }

    if (HIBYTE(v69[2]) != 15)
    {
      if (HIBYTE(v69[2]) == 18)
      {
        if (v69[0] != 0x6E6569646172473CLL || v69[1] != 0x7079546D726F4E74 || LOWORD(v69[2]) != 15973)
        {
          goto LABEL_142;
        }

        goto LABEL_75;
      }

      if (HIBYTE(v69[2]) != 19)
      {
        goto LABEL_142;
      }

      v20 = v69[0] == 0x61725474696E493CLL && v69[1] == 0x79546D726F66736ELL;
      if (!v20 || *(&v69[1] + 3) != 0x3E657079546D726FLL)
      {
        goto LABEL_142;
      }

LABEL_59:
      v22 = &v72;
LABEL_76:
      kaldi::ReadToken(a2, 0, v22, v8, v9);
      goto LABEL_89;
    }

    v29 = v69[0] == 0x61526E7261654C3CLL && *(v69 + 7) == 0x3E66656F43657461;
    v13 = (a1 + 168);
    if (!v29)
    {
      goto LABEL_142;
    }

LABEL_88:
    kaldi::ReadBasicType<float>(a2, 0, v13, v8, v9);
LABEL_89:
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }

  if (v69[1] == &dword_C + 1 && *v69[0] == 0x74536D617261503CLL && *(v69[0] + 5) == 0x3E7665646474536DLL)
  {
LABEL_60:
    v13 = &v73;
    goto LABEL_88;
  }

  if (v69[1] == &dword_C + 3)
  {
    v12 = *v69[0] == 0x61526E7261654C3CLL && *(v69[0] + 7) == 0x3E66656F43657461;
    v13 = (a1 + 168);
    if (v12)
    {
      goto LABEL_88;
    }
  }

  if (v69[1] == &dword_10 + 3)
  {
    if (*v69[0] == 0x61725474696E493CLL && *(v69[0] + 1) == 0x79546D726F66736ELL && *(v69[0] + 11) == 0x3E657079546D726FLL)
    {
      goto LABEL_59;
    }
  }

  else if (v69[1] == &dword_C && *v69[0] == 0x536D6F646E61523CLL && *(v69[0] + 2) == 1046766949)
  {
    goto LABEL_66;
  }

  if (v69[1] != &dword_8 + 1)
  {
    if (v69[1] != &dword_10 + 2)
    {
      goto LABEL_91;
    }

    v17 = *v69[0] == 0x6E6569646172473CLL && *(v69[0] + 1) == 0x7079546D726F4E74;
    if (!v17 || *(v69[0] + 8) != 15973)
    {
      goto LABEL_91;
    }

LABEL_75:
    v22 = &v71;
    goto LABEL_76;
  }

  v19 = v69[0];
LABEL_78:
  v26 = *v19;
  v27 = *(v19 + 8);
  v28 = v26 == 0x6461724778614D3CLL && v27 == 62;
  v13 = (a1 + 164);
  if (v28)
  {
    goto LABEL_88;
  }

  if ((HIBYTE(v69[2]) & 0x80) == 0)
  {
    goto LABEL_142;
  }

LABEL_91:
  if (v69[1] != &dword_C)
  {
    goto LABEL_142;
  }

  v30 = v69[0];
LABEL_93:
  v31 = *v30;
  v32 = *(v30 + 2);
  if (v31 != 0x6E6F706D6F432F3CLL || v32 != 1047817829)
  {
LABEL_142:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v68, "InitData", "../subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 140);
    v55 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v68, "Unknown token ", 14);
    if (SHIBYTE(v69[2]) >= 0)
    {
      v56 = v69;
    }

    else
    {
      v56 = v69[0];
    }

    if (SHIBYTE(v69[2]) >= 0)
    {
      v57 = HIBYTE(v69[2]);
    }

    else
    {
      v57 = v69[1];
    }

    v58 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v55, v56, v57);
    v59 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, ", a typo in config?", 19);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v59, " (ParamStddev|LearnRateCoef|InitTransformType|RandomSeed|GradientNormType|MaxGrad)", 82);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v68);
  }

LABEL_98:
  inited = kaldi::nnet1::Component::MarkerToMatrixInitType(&v72);
  *(a1 + 160) = kaldi::nnet1::Component::MarkerToGradientNormType(&v71);
  if (v70 >= 1)
  {
    kaldi::UniformRandomNumber::SetRandomSeeds(a3, v70);
  }

  kaldi::GaussRandomNumber::GaussRandomNumber(v64, a3);
  kaldi::Matrix<float>::Matrix(&v60, *(a1 + 12), *(a1 + 8), 0, 0);
  v38 = *(a1 + 12);
  if (v38 < 1)
  {
    goto LABEL_126;
  }

  v39 = 0;
  LODWORD(v40) = *(a1 + 8);
  while (2)
  {
    if (v40 < 1)
    {
      goto LABEL_125;
    }

    v41 = 0;
    while (2)
    {
      switch(inited)
      {
        case 0:
          if (v39 >= v62 || v41 >= v61)
          {
LABEL_141:
            kaldi::KaldiAssertFailure_("operator()", "../subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.h", &stru_B8.segname[5], "static_cast<UnsignedMatrixIndexT>(r) < static_cast<UnsignedMatrixIndexT>(num_rows_) && static_cast<UnsignedMatrixIndexT>(c) < static_cast<UnsignedMatrixIndexT>(num_cols_)", v37);
          }

          v44 = v60 + 4 * v39 * v63;
          if (v39 == v41)
          {
            v45 = 1.0;
          }

          else
          {
            v45 = 0.0;
          }

          goto LABEL_122;
        case 2:
          v46 = *&v73;
          kaldi::GaussRandomNumber::Rand(v64, 0, v35, v36, v37);
          if (v39 >= v62 || v41 >= v61)
          {
            goto LABEL_141;
          }

          v44 = v60 + 4 * v39 * v63;
          v45 = v46 * v47;
LABEL_122:
          *(v44 + 4 * v41) = v45;
          break;
        case 1:
          v42 = *&v73;
          v43 = kaldi::UniformRandomNumber::RandUniform(a3, 0, v35, v36, v37);
          if (v39 >= v62 || v41 >= v61)
          {
            goto LABEL_141;
          }

          v44 = v60 + 4 * v39 * v63;
          v45 = (v43 + -0.5) * (v42 + v42);
          goto LABEL_122;
      }

      ++v41;
      v40 = *(a1 + 8);
      if (v41 < v40)
      {
        continue;
      }

      break;
    }

    v38 = *(a1 + 12);
LABEL_125:
    if (++v39 < v38)
    {
      continue;
    }

    break;
  }

LABEL_126:
  v50 = *(a1 + 104);
  if (!v50)
  {
    goto LABEL_149;
  }

  v51 = kaldi::QuantizedMatrixBase<short>::NumRows(v50);
  if (v51 != kaldi::ContextDependency::CentralPosition(&v60))
  {
    goto LABEL_140;
  }

  v52 = *(a1 + 104);
  if (!v52)
  {
    goto LABEL_149;
  }

  v53 = kaldi::QuantizedMatrixBase<short>::NumCols(v52);
  if (v53 != kaldi::ContextDependency::ContextWidth(&v60))
  {
LABEL_140:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v68, "InitData", "../subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 163);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v68, "Linearity().NumRows() == mat.NumRows() && Linearity().NumCols() == mat.NumCols()", 80);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v68);
  }

  v54 = *(a1 + 104);
  if (!v54)
  {
LABEL_149:
    kaldi::KaldiAssertFailure_("Linearity", "../subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", &stru_108.reserved3 + 3, "linearity_", v37);
  }

  kaldi::QuantizedMatrixBase<short>::CopyFromMat(v54, &v60);
  kaldi::Matrix<float>::~Matrix(&v60);
  if (__p)
  {
    v67 = __p;
    operator delete(__p);
  }

  v68[0] = &v65;
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](v68);
  if (SHIBYTE(v69[2]) < 0)
  {
    operator delete(v69[0]);
  }

  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v71.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v72.__r_.__value_.__l.__data_);
  }
}

void sub_D3D58(_Unwind_Exception *a1)
{
  kaldi::Matrix<float>::~Matrix(&v3);
  kaldi::GaussRandomNumber::~GaussRandomNumber(&v4);
  if (*(v1 - 185) < 0)
  {
    operator delete(*(v1 - 208));
  }

  if (*(v1 - 153) < 0)
  {
    operator delete(*(v1 - 176));
  }

  if (*(v1 - 129) < 0)
  {
    operator delete(*(v1 - 152));
  }

  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::ReadData(uint64_t a1, uint64_t *a2, int a3, uint64_t a4)
{
  while (kaldi::Peek(a2, a3) == 60)
  {
    v33 = 0uLL;
    v34 = 0;
    kaldi::ReadToken(a2, a3, &v33, v7, v8);
    if (SHIBYTE(v34) < 0)
    {
      if (*(&v33 + 1) != 15 || (*v33 == 0x61526E7261654C3CLL ? (v13 = *(v33 + 7) == 0x3E66656F43657461) : (v13 = 0), v14 = (a1 + 168), !v13))
      {
        if (*(&v33 + 1) == 18)
        {
          v15 = *v33 == 0x6E6569646172473CLL && *(v33 + 8) == 0x7079546D726F4E74;
          if (v15 && *(v33 + 16) == 15973)
          {
            goto LABEL_29;
          }
        }

        if (*(&v33 + 1) != 9)
        {
          goto LABEL_52;
        }

        v17 = v33;
        goto LABEL_37;
      }
    }

    else
    {
      if (HIBYTE(v34) == 9)
      {
        v17 = &v33;
LABEL_37:
        v19 = *v17;
        v20 = *(v17 + 8);
        v21 = v19 == 0x6461724778614D3CLL && v20 == 62;
        v14 = (a1 + 164);
        if (!v21)
        {
LABEL_52:
          kaldi::KaldiErrorMessage::KaldiErrorMessage(__p, "ReadData", "../subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 181);
          v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "unrecognized config token ", 26);
          if (v34 >= 0)
          {
            v28 = &v33;
          }

          else
          {
            v28 = v33;
          }

          if (v34 >= 0)
          {
            v29 = HIBYTE(v34);
          }

          else
          {
            v29 = *(&v33 + 1);
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, v28, v29);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
        }

        goto LABEL_42;
      }

      if (HIBYTE(v34) != 15)
      {
        if (HIBYTE(v34) != 18)
        {
          goto LABEL_52;
        }

        v11 = v33 == 0x6E6569646172473CLL && *(&v33 + 1) == 0x7079546D726F4E74;
        if (!v11 || v34 != 15973)
        {
          goto LABEL_52;
        }

LABEL_29:
        __p[0] = 0;
        __p[1] = 0;
        v32 = 0;
        kaldi::ReadToken(a2, a3, __p, v9, v10);
        *(a1 + 160) = kaldi::nnet1::Component::MarkerToGradientNormType(__p);
        if (SHIBYTE(v32) < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_43;
      }

      v18 = v33 == 0x61526E7261654C3CLL && *(&v33 + 7) == 0x3E66656F43657461;
      v14 = (a1 + 168);
      if (!v18)
      {
        goto LABEL_52;
      }
    }

LABEL_42:
    kaldi::ReadBasicType<float>(a2, a3, v14, v9, v10);
LABEL_43:
    if (SHIBYTE(v34) < 0)
    {
      operator delete(v33);
    }
  }

  v22 = *(a1 + 104);
  if (!v22)
  {
    goto LABEL_59;
  }

  kaldi::QuantizedMatrix<short>::Read(v22, a2, a3, a4, v8);
  *(a1 + 16) = 0;
  v23 = *(a1 + 104);
  if (!v23)
  {
    goto LABEL_59;
  }

  if (kaldi::QuantizedMatrixBase<short>::NumRows(v23) != *(a1 + 12))
  {
    kaldi::KaldiAssertFailure_("ReadData", "../subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", &stru_B8.sectname[7], "Linearity().NumRows() == output_dim_", v8);
  }

  v24 = *(a1 + 104);
  if (!v24)
  {
LABEL_59:
    kaldi::KaldiAssertFailure_("Linearity", "../subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", &stru_108.reserved3 + 3, "linearity_", v8);
  }

  result = kaldi::QuantizedMatrixBase<short>::NumCols(v24);
  if (result != *(a1 + 8))
  {
    kaldi::KaldiAssertFailure_("ReadData", "../subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", &stru_B8.sectname[8], "Linearity().NumCols() == input_dim_", v26);
  }

  return result;
}

void sub_D4100(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (*(v16 - 89) < 0)
  {
    operator delete(*(v16 - 112));
  }

  _Unwind_Resume(exception_object);
}

void *kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::WriteConfig(unsigned int *a1, void *a2, const char *a3, uint64_t a4, const char *a5)
{
  kaldi::WriteToken(a2, a3, "<LearnRateCoef>", a4, a5);
  v8 = a1[42];
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<GradientNormType>", v9, v10);
  kaldi::nnet1::Component::TypeToMarker(a1[40], &__p);
  kaldi::WriteToken(a2, a3, &__p, v11, v12);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  kaldi::WriteToken(a2, a3, "<MaxGrad>", v13, v14);
  v15 = a1[41];
  return kaldi::WriteBasicType<float>(a2, a3);
}

void sub_D41F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::WriteData(void *a1, void *a2, int a3, int a4)
{
  (*(*a1 + 168))(a1);
  v9 = a1[13];
  if (!v9)
  {
    kaldi::KaldiAssertFailure_("Linearity", "../subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", &stru_108.reserved2 + 3, "linearity_", v8);
  }

  return kaldi::QuantizedMatrix<short>::Write(v9, a2, a3, a4);
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::NumParams(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *(a1 + 104);
  if (!v6 || (v7 = kaldi::QuantizedMatrixBase<short>::NumRows(v6), (v8 = *(a1 + 104)) == 0))
  {
    kaldi::KaldiAssertFailure_("Linearity", "../subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", &stru_108.reserved2 + 3, "linearity_", a5);
  }

  return kaldi::QuantizedMatrixBase<short>::NumCols(v8) * v7;
}

void kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::GetParams(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *(a1 + 104);
  if (!v6)
  {
    goto LABEL_6;
  }

  v8 = kaldi::QuantizedMatrixBase<short>::NumRows(v6);
  v9 = *(a1 + 104);
  if (!v9)
  {
    goto LABEL_6;
  }

  v10 = kaldi::QuantizedMatrixBase<short>::NumCols(v9) * v8;
  kaldi::Vector<float>::Resize(a2, v10, 0, v11, v12);
  v15 = 0;
  v16 = 0;
  if (v10 > *(a2 + 8))
  {
    kaldi::KaldiAssertFailure_("SubVector", "../subproject/libquasar/libkaldi/src/matrix/kaldi-vector.h", &stru_1F8.size + 6, "static_cast<UnsignedMatrixIndexT>(origin)+ static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", a5);
  }

  v14 = *a2;
  LODWORD(v15) = v10;
  v13 = *(a1 + 104);
  if (!v13)
  {
LABEL_6:
    kaldi::KaldiAssertFailure_("Linearity", "../subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", &stru_108.reserved2 + 3, "linearity_", a5);
  }

  kaldi::VectorBase<float>::CopyRowsFromMat<short>(&v14, v13);
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::SetParams(void *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4 != (*(*a1 + 176))(a1))
  {
    kaldi::KaldiAssertFailure_("SetParams", "../subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", &stru_B8.addr + 2, "wei_src.Dim() == NumParams()", v5);
  }

  v6 = a1[13];
  if (!v6)
  {
    kaldi::KaldiAssertFailure_("Linearity", "../subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", &stru_108.reserved3 + 3, "linearity_", v5);
  }

  return kaldi::QuantizedMatrixBase<short>::CopyRowsFromVec(v6, a2);
}

float kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::SumParams(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *(a1 + 104);
  if (!v6)
  {
    kaldi::KaldiAssertFailure_("Linearity", "../subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", &stru_108.reserved2 + 3, "linearity_", a5);
  }

  return kaldi::QuantizedMatrixBase<short>::Sum(v6, a2, a3, a4, a5);
}

void kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::PerturbParams(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *(a1 + 104);
  if (v6)
  {
    v7 = kaldi::QuantizedMatrixBase<short>::NumRows(v6);
    v8 = *(a1 + 104);
    if (v8)
    {
      v9 = kaldi::QuantizedMatrixBase<short>::NumCols(v8);
      kaldi::CuMatrix<float>::CuMatrix(v11, v7, v9, 1u, 0, 0);
      kaldi::CuMatrixBase<float>::SetRandn(v11);
      if (*(a1 + 104))
      {
        kaldi::QuantizedMatrixBase<short>::AddMat();
      }

      kaldi::KaldiAssertFailure_("Linearity", "../subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", &stru_108.reserved3 + 3, "linearity_", v10);
    }
  }

  kaldi::KaldiAssertFailure_("Linearity", "../subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", &stru_108.reserved3 + 3, "linearity_", a5);
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::Info(void *a1)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v10);
  (*(*a1 + 168))(a1, &v10, 0);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "\n linearity", 11);
  v4 = a1[13];
  if (!v4)
  {
    kaldi::KaldiAssertFailure_("Linearity", "../subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", &stru_108.reserved2 + 3, "linearity_", v2);
  }

  kaldi::nnet1::MomentStatistics<short>(v4);
  if ((v9 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v9 & 0x80u) == 0)
  {
    v6 = v9;
  }

  else
  {
    v6 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, v5, v6);
  if (v9 < 0)
  {
    operator delete(__p[0]);
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

void sub_D47C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::MomentStatistics<short>(unsigned int *a1)
{
  v2 = kaldi::QuantizedMatrixBase<short>::NumRows(a1);
  v3 = kaldi::QuantizedMatrixBase<short>::NumCols(a1);
  memset(v10, 0, sizeof(v10));
  kaldi::Vector<float>::Resize(v10, (v3 * v2), 0, v4, v5);
  kaldi::VectorBase<float>::CopyRowsFromMat<short>(v10, a1);
  kaldi::nnet1::MomentStatistics<float>(v10, v6, v7, v8, v9);
  kaldi::Vector<float>::Destroy(v10);
}

void sub_D4870(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::Vector<float>::Destroy(va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::InfoGradient(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  boost::filesystem::path::path(&v21, "\n  linearity_grad");
  kaldi::nnet1::MomentStatistics<float>((a1 + 112), v4, v5, v6, v7);
  if ((v20 & 0x80u) == 0)
  {
    v8 = v19;
  }

  else
  {
    v8 = v19[0];
  }

  if ((v20 & 0x80u) == 0)
  {
    v9 = v20;
  }

  else
  {
    v9 = v19[1];
  }

  v10 = std::string::append(&v21, v8, v9);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v22.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v22.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = std::string::append(&v22, ", lr-coef ");
  v13 = *&v12->__r_.__value_.__l.__data_;
  v23.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v23.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  kaldi::nnet1::ToString<float>((a1 + 168));
  if ((v18 & 0x80u) == 0)
  {
    v14 = __p;
  }

  else
  {
    v14 = __p[0];
  }

  if ((v18 & 0x80u) == 0)
  {
    v15 = v18;
  }

  else
  {
    v15 = __p[1];
  }

  v16 = std::string::append(&v23, v14, v15);
  *a2 = *v16;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
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

void sub_D49D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v33 - 41) < 0)
  {
    operator delete(*(v33 - 64));
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

kaldi::ContextDependency *kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *(a1 + 104);
  if (!v6)
  {
    kaldi::KaldiAssertFailure_("Linearity", "../subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", &stru_108.reserved3 + 3, "linearity_", a5);
  }

  return kaldi::CuMatrixBase<float>::AddMatMat<short>(a3, a2, 111, v6, &stru_68.sectname[8], 1.0, 0.0);
}

void kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(a1 + 104))
  {

    kaldi::CuVectorBase<float>::AddMatVec<short>();
  }

  kaldi::KaldiAssertFailure_("Linearity", "../subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", &stru_108.reserved3 + 3, "linearity_", a5);
}

kaldi::ContextDependency *kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::BackpropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *(a1 + 104);
  if (!v6)
  {
    kaldi::KaldiAssertFailure_("Linearity", "../subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", &stru_108.reserved3 + 3, "linearity_", a5);
  }

  return kaldi::CuMatrixBase<float>::AddMatMat<short>(a5, a4, 111, v6, &stru_68.sectname[7], 1.0, 0.0);
}

void kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::GetUnitOutputFnc(uint64_t a1, _DWORD *a2, int a3, uint64_t a4, const char *a5)
{
  v5 = *(a1 + 104);
  if (!v5)
  {
    kaldi::KaldiAssertFailure_("Linearity", "../subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", &stru_108.reserved2 + 3, "linearity_", a5);
  }

  kaldi::QuantizedMatrixBase<short>::Row(v5, a3, v9);
  kaldi::CuVectorBase<float>::AddMatVec<short>(a4, a2, 111, v9, v8, 1.0, 0.0);
}

float kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::GetUnitOutputFnc(uint64_t a1, uint64_t a2, int a3, uint64_t a4, const char *a5)
{
  v5 = *(a1 + 104);
  if (!v5)
  {
    kaldi::KaldiAssertFailure_("Linearity", "../subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", &stru_108.reserved2 + 3, "linearity_", a5);
  }

  kaldi::QuantizedMatrixBase<short>::Row(v5, a3, v11);
  return kaldi::VecVec<float,short>(a2, v11, v7, v8, v9);
}

void kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::AccumGradients(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::EnsureCorrs(a1);
  v10 = *(a1 + 60);
  *(*(a1 + 176) + 4 * a5) = *(a2 + 20);
  *(kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::LinearityCorr(a1, a5, v11, v12, v13) + 32) = a4;
  v17 = kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::LinearityCorr(a1, a5, v14, v15, v16);

  kaldi::CuMatrixBase<float>::AddMatMat(v17, a3, CblasTrans, a2, &stru_68.sectname[7], 1.0, v10);
}

void kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::EnsureCorrs(uint64_t a1)
{
  if ((*(a1 + 224) & 1) == 0)
  {
    v2 = *(a1 + 160);
    v3 = *(a1 + 80);
    if (v3 > 1)
    {
      v4 = (v3 + 1);
    }

    else
    {
      v4 = 1;
    }

    std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::resize((a1 + 112), v4);
    std::vector<kaldi::CuMatrix<float>>::resize((a1 + 136), v4);
    if (v4 >= 1)
    {
      operator new();
    }

    std::vector<int>::resize((a1 + 176), v4);
    *(a1 + 224) = 1;
  }
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::SetGradientNormalization(uint64_t result, int a2, float a3)
{
  *(result + 164) = a3;
  *(result + 160) = a2;
  *(result + 224) = 0;
  return result;
}

void kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::NormalizeGradients(uint64_t a1, int a2, uint64_t a3, uint64_t a4, const char *a5, float a6)
{
  v7 = a6;
  v9 = *(a1 + 160);
  if (v9 == 3)
  {
    if (a6 >= 0.0 && a6 <= 1.0)
    {
      v13 = kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::LinearityCorr(a1, a2, a3, a4, a5);
      v14 = *(a1 + 136) + 48 * a2;

      kaldi::nnet1::UpdatableComponent::RmspropGradient(v13, v14, v7);
    }
  }

  else if (v9 == 2)
  {
    if (a6 > 0.0)
    {
      if (*(a1 + 84))
      {
        v7 = *(*(a1 + 176) + 4 * a2) * a6;
      }

      v15 = kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::LinearityCorr(a1, a2, a3, a4, a5);
      v19 = (*(a1 + 136) + 48 * a2);

      kaldi::nnet1::UpdatableComponent::LimitL2NormGradient(v15, v19, v7, v16, v17, v18);
    }
  }

  else if (v9 == 1 && a6 > 0.0)
  {
    if (*(a1 + 84) == 1)
    {
      v7 = *(*(a1 + 176) + 4 * a2) * a6;
    }

    v10 = kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::LinearityCorr(a1, a2, a3, a4, a5);

    kaldi::nnet1::UpdatableComponent::ClipGradient(v10, v7);
  }
}

float kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::GetNormalizedLearningRate(uint64_t a1, int a2)
{
  if ((*(a1 + 84) & 1) == 0)
  {
    return *(a1 + 56);
  }

  v2 = *(a1 + 200);
  v3 = *(a1 + 208) - v2;
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

void kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::UpdateWeights()
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v0, "UpdateWeights", "../subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 314);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Unimplemented except for BaseFloat weights");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::GetGradient(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  v8 = (*(*a1 + 16))(a1);
  (*(*v8 + 232))(v8, a2, a3, 0, 0);
  v9 = (*(*a1 + 176))(a1);
  kaldi::Vector<float>::Resize(a4, v9, 1, v10, v11);
  v15 = kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::LinearityCorr(v8, 0, v12, v13, v14);
  kaldi::VectorBase<float>::CopyRowsFromMat(a4, v15, v16, v17, v18);
  v19 = *(*v8 + 8);

  return v19(v8);
}

void kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::VectorizeWeightsCorrs()
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v0, "VectorizeWeightsCorrs", "../subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 334);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Unimplemented except for BaseFloat weights");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::CountZeroCorr(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::EnsureCorrs(a1);
  v7 = *(a1 + 104);
  if (!v7 || (v8 = kaldi::QuantizedMatrixBase<short>::NumRows(v7), (v9 = *(a1 + 104)) == 0))
  {
    kaldi::KaldiAssertFailure_("Linearity", "../subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", &stru_108.reserved3 + 3, "linearity_", v6);
  }

  *a3 = kaldi::QuantizedMatrixBase<short>::NumCols(v9) * v8;
  v13 = *(a1 + 120) - *(a1 + 112);
  if (v13)
  {
    v14 = v13 >> 3;
    if (*(a1 + 80) == 1)
    {
      v15 = 0;
    }

    else
    {
      v15 = *(a1 + 80);
    }

    if (v14 - 1 != v15)
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v24, "CountZeroCorr", "../subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 372);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "Unexpected mismatch in indexes: ", 32);
      v22 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "  ", 2);
      v23 = (*(a1 + 120) - *(a1 + 112)) >> 3;
      std::ostream::operator<<();
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v24);
    }

    v16 = kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::LinearityCorr(a1, v15, v10, v11, v12);
    result = kaldi::CuMatrixBase<float>::CountZeros(v16, v17, v18, v19, v20);
  }

  else
  {
    result = 0;
  }

  *a2 = result;
  return result;
}

void kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::LinearTransform(uint64_t a1, int a2, int a3)
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
  *a1 = off_278370;
  *(a1 + 88) = off_2784A8;
  *(a1 + 96) = off_2784D0;
  operator new();
}

void kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::VectorizeWeightsCorrs(uint64_t a1)
{
  if (*(a1 + 16) != 1)
  {
    if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
    {
      kaldi::KaldiLogMessage::KaldiLogMessage(v3, "VectorizeWeightsCorrs", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.cc", 91);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "Performing  vectorization of linear component", 45);
      kaldi::KaldiLogMessage::~KaldiLogMessage(v3);
    }

    v2 = (*(*(a1 + 104) + 16) * *(*(a1 + 104) + 20));
    kaldi::CuSubMatrix<float>::CopyDataAndReplaceWithCuSub((a1 + 104));
  }

  kaldi::KaldiErrorMessage::KaldiErrorMessage(v3, "VectorizeWeightsCorrs", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.cc", 88);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v3, "Weights are already vectorized");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v3);
}

void kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::UpdateWeights(uint64_t a1, uint64_t a2, int a3)
{
  kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::EnsureCorrs(a1);
  v9 = *(a1 + 104);
  if (!v9)
  {
    goto LABEL_38;
  }

  v11 = *(a1 + 64);
  v10 = *(a1 + 68);
  v12 = *(a1 + 72);
  v13 = *(a1 + 76);
  *(v9 + 32) = a2;
  v14 = *(a1 + 80);
  if (a3 >= 0)
  {
    v15 = a3;
  }

  else
  {
    v15 = *(a1 + 80);
  }

  if (v14 == 1)
  {
    v16 = 0;
  }

  else
  {
    v16 = v15;
  }

  if (v16 > v14)
  {
    kaldi::KaldiAssertFailure_("UpdateWeights", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.cc", &stru_68.size + 4, "batch_idx <= opts_.num_subbatches", v8);
  }

  *(kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::LinearityCorr(a1, v16, v6, v7, v8) + 32) = a2;
  *(*(a1 + 136) + 48 * v16 + 32) = a2;
  if (v16 == *(a1 + 80))
  {
    v20 = kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::LinearityCorr(a1, v16, v17, v18, v8);
    v24 = kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::LinearityCorr(a1, 0, v21, v22, v23);
    kaldi::CuMatrixBase<float>::AddMat(v20, v24, 111, v25, v26, 1.0, 0.0);
    if (*(a1 + 80) > 1)
    {
      v27 = 1;
      do
      {
        v28 = kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::LinearityCorr(a1, v16, v17, v18, v8);
        v32 = kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::LinearityCorr(a1, v27, v29, v30, v31);
        kaldi::CuMatrixBase<float>::AddMat(v28, v32, 111, v33, v34, 1.0, 1.0);
        ++v27;
      }

      while (v27 < *(a1 + 80));
    }

    v35 = *(a1 + 176);
    v35[v16] = 0;
    if (v16 >= 1)
    {
      v36 = 0;
      v37 = v16;
      v38 = v35;
      do
      {
        v39 = *v38++;
        v36 += v39;
        v35[v16] = v36;
        --v37;
      }

      while (v37);
    }
  }

  v40 = *(a1 + 56);
  if (*(a1 + 84) == 1)
  {
    *v19.i32 = *(*(a1 + 176) + 4 * v16);
    v40 = v40 / *v19.i32;
  }

  v41 = *(a1 + 200);
  if (v16 >= ((*(a1 + 208) - v41) >> 2))
  {
    LODWORD(v50[0]) = 2143289344;
    std::vector<float>::resize((a1 + 200), v16 + 1, v50, v19);
    v41 = *(a1 + 200);
  }

  *(v41 + 4 * v16) = v40;
  if (*(a1 + 164) >= 0.0)
  {
    (*(*a1 + 248))(a1, v16);
  }

  if (v11 != 0.0)
  {
    v42 = *(a1 + 104);
    if (!v42)
    {
      goto LABEL_38;
    }

    kaldi::CuMatrixBase<float>::AddMat(v42, *(a1 + 104), 111, v18, v8, -(v40 * v11) * *(*(a1 + 176) + 4 * v16), 1.0);
  }

  if (v10 == 0.0)
  {
    goto LABEL_28;
  }

  v43 = *(a1 + 104);
  if (!v43)
  {
LABEL_38:
    kaldi::KaldiAssertFailure_("Linearity", "../subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", &stru_108.reserved3 + 3, "linearity_", v8);
  }

  v44 = kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::LinearityCorr(a1, v16, v17, v18, v8);
  kaldi::cu::RegularizeL1<float>(v43, v44, (v10 * v40) * *(*(a1 + 176) + 4 * v16), v40, v45, v46, v47);
LABEL_28:
  if (v12 > 0.0)
  {
    if (*(a1 + 80) >= 2)
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v50, "UpdateWeights", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.cc", 185);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v50, "the multi batch gradient quantization does not work yet");
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v50);
    }

    if (*(a1 + 240) == *(a1 + 232))
    {
      kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::InitResidualAggregator(a1, (a1 + 232));
    }

    kaldi::nnet1::QuantizerResidualAggregator::Quantize((a1 + 232), v13, v12, v17, v18, v8);
  }

  kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::ApplyCorr(a1, v16, v40);
  v48 = *(a1 + 176);
  if (v16 == *(a1 + 80))
  {
    v49 = *(a1 + 184);
    if (v48 != v49)
    {
      bzero(v48, v49 - v48);
    }
  }

  else
  {
    *&v48[4 * v16] = 0;
  }
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::LinearTransform<kaldi::CuMatrixBase<float>>(uint64_t a1, uint64_t a2)
{
  *a1 = off_279038;
  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  std::vector<kaldi::EventMap *>::__init_with_size[abi:ne200100]<kaldi::EventMap **,kaldi::EventMap **>(a1 + 24, *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 3);
  *a1 = off_27A660;
  *(a1 + 48) = off_282980;
  v5 = *(a2 + 56);
  *(a1 + 71) = *(a2 + 71);
  *(a1 + 56) = v5;
  *a1 = off_2784F8;
  *(a1 + 88) = off_278630;
  *(a1 + 104) = 0;
  *(a1 + 96) = off_278658;
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::vector[abi:ne200100]((a1 + 112), (*(a2 + 120) - *(a2 + 112)) >> 3);
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 136, *(a2 + 136), *(a2 + 144), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 144) - *(a2 + 136)) >> 4));
  v6 = *(a2 + 160);
  v7 = *(a2 + 164);
  *(a1 + 176) = 0;
  *(a1 + 160) = v6;
  *(a1 + 164) = v7;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 176, *(a2 + 176), *(a2 + 184), (*(a2 + 184) - *(a2 + 176)) >> 2);
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 200, *(a2 + 200), *(a2 + 208), (*(a2 + 208) - *(a2 + 200)) >> 2);
  v11 = *(a2 + 224);
  *(a1 + 232) = 0u;
  *(a1 + 224) = v11;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0;
  if (*(a1 + 16) == 1)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v17, "LinearTransform", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.cc", 63);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "deep copy constructor not implemented in the case of vectorized_weights.", 72);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v17);
  }

  if (*(a2 + 104))
  {
    operator new();
  }

  v13 = *(a1 + 112);
  v12 = *(a1 + 120);
  if (v12 != v13)
  {
    v14 = 0;
    do
    {
      if (*(*(a2 + 112) + 8 * v14))
      {
        v15 = kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::LinearityCorr(a2, v14, v8, v9, v10);
        kaldi::NewCuSubOrMat<float>(v15, *(a1 + 16));
      }

      ++v14;
    }

    while (v14 < (v12 - v13) >> 3);
  }

  if (*(a2 + 240) != *(a2 + 232))
  {
    kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::InitResidualAggregator(a1, (a1 + 232));
  }

  return a1;
}

void sub_D5FEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  kaldi::nnet1::QuantizerResidualAggregator::~QuantizerResidualAggregator(v8);
  v10 = *v7;
  if (*v7)
  {
    *(v4 + 26) = v10;
    operator delete(v10);
  }

  v11 = *v6;
  if (*v6)
  {
    *(v4 + 23) = v11;
    operator delete(v11);
  }

  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](va);
  std::unique_ptr<kaldi::QuantizedMatrix<signed char>>::reset[abi:ne200100](v5, 0);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a3);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a4);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v4);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::LinearTransform<kaldi::CuMatrixBase<float>>(uint64_t a1, uint64_t a2)
{
  *a1 = off_279038;
  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  std::vector<kaldi::EventMap *>::__init_with_size[abi:ne200100]<kaldi::EventMap **,kaldi::EventMap **>(a1 + 24, *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 3);
  *a1 = off_27A660;
  *(a1 + 48) = off_282980;
  v5 = *(a2 + 56);
  *(a1 + 71) = *(a2 + 71);
  *(a1 + 56) = v5;
  *a1 = off_278680;
  *(a1 + 88) = off_2787B8;
  *(a1 + 104) = 0;
  *(a1 + 96) = off_2787E0;
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::vector[abi:ne200100]((a1 + 112), (*(a2 + 120) - *(a2 + 112)) >> 3);
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 136, *(a2 + 136), *(a2 + 144), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 144) - *(a2 + 136)) >> 4));
  v6 = *(a2 + 160);
  v7 = *(a2 + 164);
  *(a1 + 176) = 0;
  *(a1 + 160) = v6;
  *(a1 + 164) = v7;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 176, *(a2 + 176), *(a2 + 184), (*(a2 + 184) - *(a2 + 176)) >> 2);
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 200, *(a2 + 200), *(a2 + 208), (*(a2 + 208) - *(a2 + 200)) >> 2);
  v11 = *(a2 + 224);
  *(a1 + 232) = 0u;
  *(a1 + 224) = v11;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0;
  if (*(a1 + 16) == 1)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v17, "LinearTransform", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.cc", 63);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "deep copy constructor not implemented in the case of vectorized_weights.", 72);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v17);
  }

  if (*(a2 + 104))
  {
    operator new();
  }

  v13 = *(a1 + 112);
  v12 = *(a1 + 120);
  if (v12 != v13)
  {
    v14 = 0;
    do
    {
      if (*(*(a2 + 112) + 8 * v14))
      {
        v15 = kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::LinearityCorr(a2, v14, v8, v9, v10);
        kaldi::NewCuSubOrMat<float>(v15, *(a1 + 16));
      }

      ++v14;
    }

    while (v14 < (v12 - v13) >> 3);
  }

  if (*(a2 + 240) != *(a2 + 232))
  {
    kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::InitResidualAggregator(a1, (a1 + 232));
  }

  return a1;
}

void sub_D6404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  kaldi::nnet1::QuantizerResidualAggregator::~QuantizerResidualAggregator(v8);
  v10 = *v7;
  if (*v7)
  {
    *(v4 + 26) = v10;
    operator delete(v10);
  }

  v11 = *v6;
  if (*v6)
  {
    *(v4 + 23) = v11;
    operator delete(v11);
  }

  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](va);
  std::unique_ptr<kaldi::QuantizedMatrix<short>>::reset[abi:ne200100](v5, 0);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a3);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a4);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v4);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<kaldi::QuantizedMatrix<signed char>>::reset[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    kaldi::QuantizedMatrixBase<signed char>::~QuantizedMatrixBase(result);

    operator delete();
  }

  return result;
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::LinearTransform<kaldi::QuantizedMatrix<signed char>>(uint64_t a1, uint64_t a2)
{
  *a1 = off_279038;
  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  std::vector<kaldi::EventMap *>::__init_with_size[abi:ne200100]<kaldi::EventMap **,kaldi::EventMap **>(a1 + 24, *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 3);
  *a1 = off_27A660;
  *(a1 + 48) = off_282980;
  v5 = *(a2 + 56);
  *(a1 + 71) = *(a2 + 71);
  *(a1 + 56) = v5;
  *a1 = off_278680;
  *(a1 + 88) = off_2787B8;
  *(a1 + 104) = 0;
  *(a1 + 96) = off_2787E0;
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::vector[abi:ne200100]((a1 + 112), (*(a2 + 120) - *(a2 + 112)) >> 3);
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 136, *(a2 + 136), *(a2 + 144), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 144) - *(a2 + 136)) >> 4));
  v6 = *(a2 + 160);
  v7 = *(a2 + 164);
  *(a1 + 176) = 0;
  *(a1 + 160) = v6;
  *(a1 + 164) = v7;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 176, *(a2 + 176), *(a2 + 184), (*(a2 + 184) - *(a2 + 176)) >> 2);
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 200, *(a2 + 200), *(a2 + 208), (*(a2 + 208) - *(a2 + 200)) >> 2);
  v11 = *(a2 + 224);
  *(a1 + 232) = 0u;
  *(a1 + 224) = v11;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0;
  if (*(a1 + 16) == 1)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v17, "LinearTransform", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.cc", 63);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "deep copy constructor not implemented in the case of vectorized_weights.", 72);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v17);
  }

  if (*(a2 + 104))
  {
    operator new();
  }

  v13 = *(a1 + 112);
  v12 = *(a1 + 120);
  if (v12 != v13)
  {
    v14 = 0;
    do
    {
      if (*(*(a2 + 112) + 8 * v14))
      {
        v15 = kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::LinearityCorr(a2, v14, v8, v9, v10);
        kaldi::NewCuSubOrMat<float>(v15, *(a1 + 16));
      }

      ++v14;
    }

    while (v14 < (v12 - v13) >> 3);
  }

  if (*(a2 + 240) != *(a2 + 232))
  {
    kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::InitResidualAggregator(a1, (a1 + 232));
  }

  return a1;
}

void sub_D6868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  kaldi::nnet1::QuantizerResidualAggregator::~QuantizerResidualAggregator(v8);
  v10 = *v7;
  if (*v7)
  {
    *(v4 + 26) = v10;
    operator delete(v10);
  }

  v11 = *v6;
  if (*v6)
  {
    *(v4 + 23) = v11;
    operator delete(v11);
  }

  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](va);
  std::unique_ptr<kaldi::QuantizedMatrix<short>>::reset[abi:ne200100](v5, 0);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a3);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a4);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v4);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<kaldi::QuantizedMatrix<short>>::reset[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    kaldi::QuantizedMatrixBase<short>::~QuantizedMatrixBase(result);

    operator delete();
  }

  return result;
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::LinearTransform<kaldi::QuantizedMatrix<short>>(uint64_t a1, uint64_t a2)
{
  *a1 = off_279038;
  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  std::vector<kaldi::EventMap *>::__init_with_size[abi:ne200100]<kaldi::EventMap **,kaldi::EventMap **>(a1 + 24, *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 3);
  *a1 = off_27A660;
  *(a1 + 48) = off_282980;
  v5 = *(a2 + 56);
  *(a1 + 71) = *(a2 + 71);
  *(a1 + 56) = v5;
  *a1 = off_2784F8;
  *(a1 + 88) = off_278630;
  *(a1 + 104) = 0;
  *(a1 + 96) = off_278658;
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::vector[abi:ne200100]((a1 + 112), (*(a2 + 120) - *(a2 + 112)) >> 3);
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 136, *(a2 + 136), *(a2 + 144), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 144) - *(a2 + 136)) >> 4));
  v6 = *(a2 + 160);
  v7 = *(a2 + 164);
  *(a1 + 176) = 0;
  *(a1 + 160) = v6;
  *(a1 + 164) = v7;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 176, *(a2 + 176), *(a2 + 184), (*(a2 + 184) - *(a2 + 176)) >> 2);
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 200, *(a2 + 200), *(a2 + 208), (*(a2 + 208) - *(a2 + 200)) >> 2);
  v11 = *(a2 + 224);
  *(a1 + 232) = 0u;
  *(a1 + 224) = v11;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0;
  if (*(a1 + 16) == 1)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v17, "LinearTransform", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.cc", 63);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "deep copy constructor not implemented in the case of vectorized_weights.", 72);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v17);
  }

  if (*(a2 + 104))
  {
    operator new();
  }

  v13 = *(a1 + 112);
  v12 = *(a1 + 120);
  if (v12 != v13)
  {
    v14 = 0;
    do
    {
      if (*(*(a2 + 112) + 8 * v14))
      {
        v15 = kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::LinearityCorr(a2, v14, v8, v9, v10);
        kaldi::NewCuSubOrMat<float>(v15, *(a1 + 16));
      }

      ++v14;
    }

    while (v14 < (v12 - v13) >> 3);
  }

  if (*(a2 + 240) != *(a2 + 232))
  {
    kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::InitResidualAggregator(a1, (a1 + 232));
  }

  return a1;
}

void sub_D6CCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  kaldi::nnet1::QuantizerResidualAggregator::~QuantizerResidualAggregator(v8);
  v10 = *v7;
  if (*v7)
  {
    *(v4 + 26) = v10;
    operator delete(v10);
  }

  v11 = *v6;
  if (*v6)
  {
    *(v4 + 23) = v11;
    operator delete(v11);
  }

  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](va);
  std::unique_ptr<kaldi::QuantizedMatrix<signed char>>::reset[abi:ne200100](v5, 0);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a3);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a4);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v4);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::Component::GetComponentTypeMap(kaldi::nnet1::Component *this)
{
  if (atomic_load_explicit(&kaldi::nnet1::Component::GetComponentTypeMap(void)::flag, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&kaldi::nnet1::Component::GetComponentTypeMap(void)::flag, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<kaldi::nnet1::Component::GetComponentTypeMap(void)::$_0 &&>>);
  }

  return kaldi::nnet1::Component::GetComponentTypeMap(void)::init_map_heap;
}

uint64_t kaldi::nnet1::Component::GetGradientNormTypeMap(kaldi::nnet1::Component *this)
{
  if (atomic_load_explicit(&kaldi::nnet1::Component::GetGradientNormTypeMap(void)::flag, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&kaldi::nnet1::Component::GetGradientNormTypeMap(void)::flag, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<kaldi::nnet1::Component::GetGradientNormTypeMap(void)::$_0 &&>>);
  }

  return kaldi::nnet1::Component::GetGradientNormTypeMap(void)::init_map_heap;
}

uint64_t kaldi::nnet1::Component::GetMatrixInitTypeMap(kaldi::nnet1::Component *this)
{
  if (atomic_load_explicit(&kaldi::nnet1::Component::GetMatrixInitTypeMap(void)::flag, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&kaldi::nnet1::Component::GetMatrixInitTypeMap(void)::flag, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<kaldi::nnet1::Component::GetMatrixInitTypeMap(void)::$_0 &&>>);
  }

  return kaldi::nnet1::Component::GetMatrixInitTypeMap(void)::init_map_heap;
}

void kaldi::nnet1::Component::TypeToMarker(kaldi::nnet1::Component *a1@<X0>, std::string *a2@<X8>)
{
  v2 = a1;
  ComponentTypeMap = kaldi::nnet1::Component::GetComponentTypeMap(a1);
  v5 = *ComponentTypeMap;
  v6 = kaldi::nnet1::Component::GetComponentTypeMap(ComponentTypeMap);
  if (v5 == (v6 + 8))
  {
LABEL_9:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v13, "TypeToMarker", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-component.cc", 202);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "Unknown component type: ", 24);
    std::ostream::operator<<();
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v13);
  }

  while (*(v5 + 14) != v2)
  {
    v7 = v5[1];
    if (v7)
    {
      do
      {
        v8 = v7;
        v7 = *v7;
      }

      while (v7);
    }

    else
    {
      do
      {
        v8 = v5[2];
        v9 = *v8 == v5;
        v5 = v8;
      }

      while (!v9);
    }

    v6 = kaldi::nnet1::Component::GetComponentTypeMap(v6);
    v5 = v8;
    if (v8 == (v6 + 8))
    {
      goto LABEL_9;
    }
  }

  if (*(v5 + 55) < 0)
  {
    v11 = v5[4];
    v12 = v5[5];

    std::string::__init_copy_ctor_external(a2, v11, v12);
  }

  else
  {
    v10 = *(v5 + 2);
    a2->__r_.__value_.__r.__words[2] = v5[6];
    *&a2->__r_.__value_.__l.__data_ = v10;
  }
}

{
  v2 = a1;
  GradientNormTypeMap = kaldi::nnet1::Component::GetGradientNormTypeMap(a1);
  v5 = *GradientNormTypeMap;
  v6 = kaldi::nnet1::Component::GetGradientNormTypeMap(GradientNormTypeMap);
  if (v5 == (v6 + 8))
  {
LABEL_9:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v13, "TypeToMarker", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-component.cc", 210);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "Unknown gradient normalizaiton type: ", 37);
    std::ostream::operator<<();
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v13);
  }

  while (*(v5 + 14) != v2)
  {
    v7 = v5[1];
    if (v7)
    {
      do
      {
        v8 = v7;
        v7 = *v7;
      }

      while (v7);
    }

    else
    {
      do
      {
        v8 = v5[2];
        v9 = *v8 == v5;
        v5 = v8;
      }

      while (!v9);
    }

    v6 = kaldi::nnet1::Component::GetGradientNormTypeMap(v6);
    v5 = v8;
    if (v8 == (v6 + 8))
    {
      goto LABEL_9;
    }
  }

  if (*(v5 + 55) < 0)
  {
    v11 = v5[4];
    v12 = v5[5];

    std::string::__init_copy_ctor_external(a2, v11, v12);
  }

  else
  {
    v10 = *(v5 + 2);
    a2->__r_.__value_.__r.__words[2] = v5[6];
    *&a2->__r_.__value_.__l.__data_ = v10;
  }
}

{
  v2 = a1;
  MatrixInitTypeMap = kaldi::nnet1::Component::GetMatrixInitTypeMap(a1);
  v5 = *MatrixInitTypeMap;
  v6 = kaldi::nnet1::Component::GetMatrixInitTypeMap(MatrixInitTypeMap);
  if (v5 == (v6 + 8))
  {
LABEL_9:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v13, "TypeToMarker", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-component.cc", 218);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "Unknown matrix initialization type: ", 36);
    std::ostream::operator<<();
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v13);
  }

  while (*(v5 + 14) != v2)
  {
    v7 = v5[1];
    if (v7)
    {
      do
      {
        v8 = v7;
        v7 = *v7;
      }

      while (v7);
    }

    else
    {
      do
      {
        v8 = v5[2];
        v9 = *v8 == v5;
        v5 = v8;
      }

      while (!v9);
    }

    v6 = kaldi::nnet1::Component::GetMatrixInitTypeMap(v6);
    v5 = v8;
    if (v8 == (v6 + 8))
    {
      goto LABEL_9;
    }
  }

  if (*(v5 + 55) < 0)
  {
    v11 = v5[4];
    v12 = v5[5];

    std::string::__init_copy_ctor_external(a2, v11, v12);
  }

  else
  {
    v10 = *(v5 + 2);
    a2->__r_.__value_.__r.__words[2] = v5[6];
    *&a2->__r_.__value_.__l.__data_ = v10;
  }
}

uint64_t kaldi::nnet1::Component::MarkerToComponentType(std::string::size_type *a1)
{
  ComponentTypeMap = kaldi::nnet1::Component::GetComponentTypeMap(a1);
  v4 = std::__tree<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::__map_value_compare<std::string,std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>>>::find<std::string>(ComponentTypeMap, a1);
  v5 = kaldi::nnet1::Component::GetComponentTypeMap(v4);
  if ((v5 + 8) != v4)
  {
    return v4[14];
  }

  v6 = *(a1 + 23);
  if (v6 < 0)
  {
    std::string::__init_copy_ctor_external(&v39, *a1, a1[1]);
    v6 = *(a1 + 23);
    if (v6 < 0)
    {
      v8 = *a1;
      v7 = a1[1];
      if (v7)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v39 = *a1;
  }

  v7 = v6;
  v8 = a1;
  if (v6)
  {
LABEL_7:
    if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = &v39;
    }

    else
    {
      v9 = v39.__r_.__value_.__r.__words[0];
    }

    do
    {
      v5 = __tolower(*v8);
      v9->__r_.__value_.__s.__data_[0] = v5;
      v9 = (v9 + 1);
      ++v8;
      --v7;
    }

    while (v7);
  }

LABEL_11:
  v10 = kaldi::nnet1::Component::GetComponentTypeMap(v5);
  v11 = *v10;
  while (1)
  {
    v10 = kaldi::nnet1::Component::GetComponentTypeMap(v10);
    if (v11 == (v10 + 8))
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v37, "MarkerToComponentType", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-component.cc", 237);
      v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, "Unknown component type marker: ", 31);
      v34 = *(a1 + 23);
      if (v34 >= 0)
      {
        v35 = a1;
      }

      else
      {
        v35 = *a1;
      }

      if (v34 >= 0)
      {
        v36 = *(a1 + 23);
      }

      else
      {
        v36 = a1[1];
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, v35, v36);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v37);
    }

    if ((*(v11 + 55) & 0x80000000) == 0)
    {
      v12 = *(v11 + 55);
      v38 = *(v11 + 4);
LABEL_17:
      v13 = (v11 + 4);
      goto LABEL_18;
    }

    std::string::__init_copy_ctor_external(&v38, v11[4], v11[5]);
    if ((*(v11 + 55) & 0x80000000) == 0)
    {
      v12 = *(v11 + 55);
      goto LABEL_17;
    }

    v13 = v11[4];
    v12 = v11[5];
LABEL_18:
    v14 = HIBYTE(v38.__r_.__value_.__r.__words[2]);
    if (v12)
    {
      if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v15 = &v38;
      }

      else
      {
        v15 = v38.__r_.__value_.__r.__words[0];
      }

      do
      {
        v10 = __tolower(*v13);
        v15->__r_.__value_.__s.__data_[0] = v10;
        v15 = (v15 + 1);
        ++v13;
        --v12;
      }

      while (v12);
      v14 = HIBYTE(v38.__r_.__value_.__r.__words[2]);
    }

    if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v39.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v39.__r_.__value_.__l.__size_;
    }

    v17 = v38.__r_.__value_.__l.__size_;
    if ((v14 & 0x80u) == 0)
    {
      v17 = v14;
    }

    if (size != v17 || ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v18 = &v39) : (v18 = v39.__r_.__value_.__r.__words[0]), (v14 & 0x80u) == 0 ? (v19 = &v38) : (v19 = v38.__r_.__value_.__r.__words[0]), v10 = memcmp(v18, v19, size), v10))
    {
      v20 = 0;
      if ((v14 & 0x80) == 0)
      {
        goto LABEL_39;
      }

LABEL_38:
      operator delete(v38.__r_.__value_.__l.__data_);
      goto LABEL_39;
    }

    if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
    {
      kaldi::KaldiLogMessage::KaldiLogMessage(v37, "MarkerToComponentType", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-component.cc", 233);
      v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, "please update to formatted name ", 32);
      v24 = *(v11 + 55);
      if (v24 >= 0)
      {
        v25 = (v11 + 4);
      }

      else
      {
        v25 = v11[4];
      }

      if (v24 >= 0)
      {
        v26 = *(v11 + 55);
      }

      else
      {
        v26 = v11[5];
      }

      v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, v25, v26);
      v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, " ASAP, you used ", 16);
      v29 = *(a1 + 23);
      if (v29 >= 0)
      {
        v30 = a1;
      }

      else
      {
        v30 = *a1;
      }

      if (v29 >= 0)
      {
        v31 = *(a1 + 23);
      }

      else
      {
        v31 = a1[1];
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, v30, v31);
      kaldi::KaldiLogMessage::~KaldiLogMessage(v37);
      LOBYTE(v14) = *(&v38.__r_.__value_.__s + 23);
    }

    v1 = *(v11 + 14);
    v20 = 1;
    if ((v14 & 0x80) != 0)
    {
      goto LABEL_38;
    }

LABEL_39:
    if (v20)
    {
      break;
    }

    v21 = v11[1];
    if (v21)
    {
      do
      {
        v11 = v21;
        v21 = *v21;
      }

      while (v21);
    }

    else
    {
      do
      {
        v22 = v11;
        v11 = v11[2];
      }

      while (*v11 != v22);
    }
  }

  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  return v1;
}

void sub_D75C8(_Unwind_Exception *exception_object)
{
  if (*(v1 - 89) < 0)
  {
    operator delete(*(v1 - 112));
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::nnet1::Component::MarkerToGradientNormType(kaldi::nnet1::Component *a1)
{
  GradientNormTypeMap = kaldi::nnet1::Component::GetGradientNormTypeMap(a1);
  v3 = std::__tree<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::__map_value_compare<std::string,std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>>>::find<std::string>(GradientNormTypeMap, a1);
  if ((kaldi::nnet1::Component::GetGradientNormTypeMap(v3) + 8) == v3)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v6, "MarkerToGradientNormType", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-component.cc", 244);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Unknown gradient normalization marker: ", 39);
    std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v5, a1);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v6);
  }

  return v3[14];
}

uint64_t kaldi::nnet1::Component::MarkerToMatrixInitType(kaldi::nnet1::Component *a1)
{
  MatrixInitTypeMap = kaldi::nnet1::Component::GetMatrixInitTypeMap(a1);
  v3 = std::__tree<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::__map_value_compare<std::string,std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>>>::find<std::string>(MatrixInitTypeMap, a1);
  if ((kaldi::nnet1::Component::GetMatrixInitTypeMap(v3) + 8) == v3)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v6, "MarkerToMatrixInitType", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-component.cc", 251);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Unknown matrix initialization marker: ", 38);
    std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v5, a1);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v6);
  }

  return v3[14];
}

void kaldi::nnet1::Component::NewComponentOfType(kaldi::nnet1::Component *a1)
{
  if (a1 <= 1024)
  {
    switch(a1)
    {
      case 257:
        operator new();
      case 258:
        operator new();
      case 259:
        operator new();
      case 260:
        operator new();
      case 261:
        operator new();
      case 262:
        operator new();
      case 263:
        operator new();
      case 264:
        operator new();
      case 265:
        operator new();
      case 266:
        operator new();
      case 267:
        operator new();
      case 268:
        operator new();
      case 269:
        operator new();
      case 270:
        operator new();
      case 271:
        operator new();
      case 272:
        operator new();
      case 273:
        operator new();
      case 274:
        operator new();
      case 275:
        operator new();
      case 276:
        operator new();
      case 277:
        operator new();
      case 278:
        operator new();
      case 279:
        operator new();
      case 280:
        operator new();
      case 281:
        operator new();
      case 282:
        operator new();
      case 283:
        operator new();
      case 284:
        operator new();
      case 285:
        operator new();
      case 286:
        operator new();
      case 287:
        operator new();
      case 288:
        operator new();
      case 289:
        operator new();
      case 290:
        operator new();
      default:
        switch(a1)
        {
          case 513:
            operator new();
          case 514:
            operator new();
          case 515:
            operator new();
          case 516:
            operator new();
          case 517:
            operator new();
          case 518:
            operator new();
          case 519:
            operator new();
          case 520:
            operator new();
          case 521:
            operator new();
          case 522:
            operator new();
          case 523:
            operator new();
          case 524:
            operator new();
          case 525:
            operator new();
          default:
            goto LABEL_91;
        }
    }
  }

  else if (a1 > 2047)
  {
    if (a1 <= 2052)
    {
      if (a1 > 2049)
      {
        if (a1 != 2050)
        {
          if (a1 != 2051)
          {
            operator new();
          }

          operator new();
        }

        operator new();
      }

      if (a1 != 2048)
      {
        operator new();
      }

      operator new();
    }

    if (a1 <= 2055)
    {
      if (a1 != 2053)
      {
        if (a1 != 2054)
        {
          operator new();
        }

        operator new();
      }

      operator new();
    }

    switch(a1)
    {
      case 0x808:
        operator new();
      case 0x809:
        operator new();
      case 0x80A:
        operator new();
    }
  }

  else
  {
    switch(a1)
    {
      case 1025:
        operator new();
      case 1026:
        operator new();
      case 1027:
        operator new();
      case 1028:
        operator new();
      case 1031:
        operator new();
      case 1032:
        operator new();
      case 1033:
        operator new();
      case 1034:
        operator new();
      case 1035:
        operator new();
      case 1036:
        operator new();
      case 1037:
        operator new();
      case 1038:
        operator new();
      case 1039:
        operator new();
      case 1040:
        operator new();
      case 1041:
        operator new();
      case 1042:
        operator new();
      default:
        break;
    }
  }

LABEL_91:
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v4, "NewComponentOfType", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-component.cc", 483);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Missing type: ", 14);
  kaldi::nnet1::Component::TypeToMarker(a1, &v3);
  std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v2, &v3);
  std::string::~string(&v3);
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
}

double kaldi::nnet1::GatedRecurrentUnit::GatedRecurrentUnit(kaldi::nnet1::GatedRecurrentUnit *this, int a2, int a3)
{
  *(this + 224) = a2;
  *(this + 225) = a3;
  *(this + 452) = 0;
  *(this + 114) = 0;
  *(this + 116) = 0;
  *(this + 115) = 0;
  *(this + 111) = off_27A660;
  *(this + 117) = off_282980;
  *(this + 59) = xmmword_21A620;
  *(this + 120) = 0x3BF800000;
  *(this + 242) = 1;
  *(this + 486) = 0;
  *(this + 974) = 0;
  kaldi::nnet1::RecurrentBaseComponent::RecurrentBaseComponent(this, off_280930);
  *v3 = off_2805A8;
  *(v3 + 888) = off_280810;
  result = 0.0;
  *(v3 + 168) = 0u;
  *(v3 + 184) = 0u;
  *(v3 + 160) = off_276F88;
  *(v3 + 200) = 0;
  *(v3 + 216) = 0u;
  *(v3 + 232) = 0u;
  *(v3 + 208) = off_276F88;
  *(v3 + 248) = 0;
  *(v3 + 264) = 0u;
  *(v3 + 280) = 0u;
  *(v3 + 256) = off_276F88;
  *(v3 + 296) = 0;
  *(v3 + 320) = 0;
  *(v3 + 328) = 0;
  *(v3 + 304) = off_277020;
  *(v3 + 312) = 0;
  *(v3 + 336) = 0;
  *(v3 + 600) = 0;
  *(v3 + 568) = 0u;
  *(v3 + 584) = 0u;
  *(v3 + 536) = 0u;
  *(v3 + 552) = 0u;
  *(v3 + 504) = 0u;
  *(v3 + 520) = 0u;
  *(v3 + 472) = 0u;
  *(v3 + 488) = 0u;
  *(v3 + 440) = 0u;
  *(v3 + 456) = 0u;
  *(v3 + 408) = 0u;
  *(v3 + 424) = 0u;
  *(v3 + 376) = 0u;
  *(v3 + 392) = 0u;
  *(v3 + 344) = 0u;
  *(v3 + 360) = 0u;
  *(v3 + 608) = 1065353216;
  *(v3 + 620) = 0;
  *(v3 + 628) = 0;
  *(v3 + 612) = 0;
  *(v3 + 633) = 0;
  *(v3 + 648) = 0u;
  *(v3 + 664) = 0u;
  *(v3 + 680) = 0u;
  *(v3 + 696) = 0u;
  *(v3 + 712) = 0u;
  *(v3 + 728) = 0u;
  *(v3 + 744) = 0u;
  *(v3 + 760) = 0u;
  *(v3 + 776) = 0u;
  *(v3 + 792) = 0u;
  *(v3 + 808) = 0u;
  *(v3 + 824) = 0u;
  *(v3 + 840) = 0u;
  *(v3 + 856) = 0u;
  *(v3 + 872) = 0u;
  return result;
}

uint64_t kaldi::nnet1::SimplerSimpleRecurrentUnit::SimplerSimpleRecurrentUnit(uint64_t this, int a2, int a3)
{
  *(this + 56) = a2;
  *(this + 60) = a3;
  *(this + 64) = 0;
  *(this + 80) = 0;
  *(this + 88) = 0;
  *(this + 72) = 0;
  *(this + 120) = 0;
  *(this + 128) = 0;
  *(this + 136) = off_2829A0;
  *(this + 144) = 1;
  *(this + 40) = 0;
  *(this + 48) = off_277568;
  *this = off_277418;
  *(this + 8) = 0;
  *(this + 96) = off_277638;
  *(this + 104) = off_2776B8;
  *(this + 112) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 16) = off_277020;
  return this;
}

void kaldi::nnet1::ParallelComponent::ParallelComponent(kaldi::nnet1::ParallelComponent *this, int a2, int a3)
{
  *(this + 54) = a2;
  *(this + 55) = a3;
  *(this + 112) = 0;
  *(this + 30) = 0;
  *(this + 31) = 0;
  *(this + 29) = 0;
  *(this + 26) = off_27A660;
  *(this + 32) = off_282980;
  *(this + 264) = xmmword_21A620;
  *(this + 35) = 0x3BF800000;
  *(this + 72) = 1;
  *(this + 146) = 0;
  *(this + 294) = 0;
  kaldi::nnet1::RecurrentBaseComponent::RecurrentBaseComponent(this, off_279D78);
  *v3 = off_2799A0;
  *(v3 + 200) = 0;
  *(v3 + 208) = off_279C58;
  *(v3 + 160) = off_279AF8;
  *(v3 + 168) = off_279B20;
  *(v3 + 176) = 0;
  *(v3 + 184) = 0;
  *(v3 + 192) = 0;
}

kaldi::nnet1::Recurrent *kaldi::nnet1::Recurrent::Recurrent(kaldi::nnet1::Recurrent *this, uint64_t a2, uint64_t a3)
{
  *(this + 134) = a2;
  *(this + 135) = a3;
  *(this + 272) = 0;
  *(this + 69) = 0;
  *(this + 71) = 0;
  *(this + 70) = 0;
  *(this + 66) = off_27A660;
  *(this + 72) = off_282980;
  *(this + 584) = xmmword_21A620;
  *(this + 75) = 0x3BF800000;
  *(this + 152) = 1;
  *(this + 306) = 0;
  *(this + 614) = 0;
  kaldi::nnet1::RecurrentBaseComponent::RecurrentBaseComponent(this, off_27A200);
  *this = off_279E90;
  *(this + 66) = off_27A0E0;
  kaldi::CuMatrix<float>::CuMatrix(this + 160, a3, a2, 1u, 0, 0);
  *(this + 27) = 0;
  *(this + 28) = 0;
  *(this + 26) = off_277020;
  *(this + 29) = 0;
  kaldi::CuVector<float>::Resize(this + 208, a3, 1u, v6, v7);
  *(this + 22) = 0u;
  *(this + 23) = 0u;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 15) = 0u;
  *(this + 96) = 516;
  *(this + 194) = 0;
  __asm { FMOV            V1.2S, #1.0 }

  *(this + 49) = _D1;
  *(this + 100) = 0;
  *(this + 52) = 0;
  *(this + 53) = 0;
  *(this + 51) = 0;
  *(this + 440) = 0u;
  *(this + 456) = 0u;
  *(this + 54) = off_276F88;
  *(this + 472) = 0;
  *(this + 30) = 0u;
  *(this + 31) = 0u;
  *(this + 32) = 0u;
  return this;
}

void sub_D91C0(_Unwind_Exception *a1)
{
  kaldi::CuMatrix<float>::~CuMatrix(v1 + 160);
  kaldi::nnet1::RecurrentBaseComponent::~RecurrentBaseComponent(v1, off_27A200);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v2);
  _Unwind_Resume(a1);
}

double kaldi::nnet1::ScaledDotAttention::ScaledDotAttention(kaldi::nnet1::ScaledDotAttention *this, int a2, int a3)
{
  *(this + 18) = off_279038;
  *(this + 38) = a2;
  *(this + 39) = a3;
  *(this + 80) = 0;
  *(this + 22) = 0;
  *(this + 23) = 0;
  *(this + 21) = 0;
  *this = off_27B348;
  *(this + 24) = off_27B370;
  v3 = kaldi::nnet1::AttentionBaseInferenceComponent::AttentionBaseInferenceComponent(this, off_27DA70);
  v3[18] = off_27D980;
  *v3 = off_27D850;
  v3[24] = off_27DA50;
  result = 0.0;
  *(v3 + 1) = 0u;
  *(v3 + 2) = 0u;
  v3[1] = off_276F88;
  *(v3 + 48) = 0;
  *(v3 + 4) = 0u;
  *(v3 + 5) = 0u;
  v3[7] = off_276F88;
  *(v3 + 96) = 0;
  *(v3 + 104) = 0;
  *(v3 + 27) = 1065353216;
  *(v3 + 7) = 0u;
  *(v3 + 8) = 0u;
  return result;
}

kaldi::nnet1::MultiHeadAttention *kaldi::nnet1::MultiHeadAttention::MultiHeadAttention(kaldi::nnet1::MultiHeadAttention *this, int a2, int a3)
{
  *(this + 19) = off_279038;
  *(this + 40) = a2;
  *(this + 41) = a3;
  *(this + 84) = 0;
  *(this + 22) = 0;
  *(this + 23) = 0;
  *(this + 24) = 0;
  *this = off_27B348;
  *(this + 25) = off_27B370;
  kaldi::nnet1::ScaledDotAttention::ScaledDotAttention(this, &off_27DD00);
  *(this + 19) = off_27DC10;
  *this = off_27DAE0;
  *(this + 25) = off_27DCE0;
  *(this + 36) = -1;
  return this;
}

void sub_D9478(_Unwind_Exception *exception_object)
{
  v5 = v3;
  *v5 = v2;
  v7 = *v4;
  if (*v4)
  {
    *(v1 + 184) = v7;
    operator delete(v7);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *kaldi::nnet1::SelfAttention::SelfAttention(kaldi::nnet1::SelfAttention *this, int a2, int a3)
{
  *(this + 10) = off_279038;
  *(this + 22) = a2;
  *(this + 23) = a3;
  *(this + 48) = 0;
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 13) = 0;
  *this = off_27B348;
  *(this + 16) = off_27B370;
  result = kaldi::nnet1::AttentionBaseInferenceComponent::AttentionBaseInferenceComponent(this, off_27E320);
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  result[5] = off_2829A0;
  *(result + 12) = 1;
  result[9] = 0;
  result[10] = off_27E230;
  result[16] = off_27E300;
  *result = off_27E060;
  result[1] = off_27E118;
  result[7] = 0;
  result[8] = 0;
  return result;
}

kaldi::nnet1::SupervisedMultiHeadAttention *kaldi::nnet1::SupervisedMultiHeadAttention::SupervisedMultiHeadAttention(kaldi::nnet1::SupervisedMultiHeadAttention *this, int a2, int a3)
{
  *(this + 25) = off_279038;
  *(this + 52) = a2;
  *(this + 53) = a3;
  *(this + 108) = 0;
  *(this + 28) = 0;
  *(this + 29) = 0;
  *(this + 30) = 0;
  *this = off_27B348;
  *(this + 31) = off_27B370;
  kaldi::nnet1::MultiHeadAttention::MultiHeadAttention(this, off_27DFB0);
  *(this + 25) = off_27DEC0;
  *this = off_27DD90;
  *(this + 31) = off_27DF90;
  *(this + 37) = -1;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 19) = off_276F88;
  *(this + 192) = 0;
  return this;
}

void sub_D972C(_Unwind_Exception *exception_object)
{
  v5 = v3;
  *v5 = v2;
  v7 = *v4;
  if (*v4)
  {
    *(v1 + 232) = v7;
    operator delete(v7);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *kaldi::nnet1::AverageAttention::AverageAttention(kaldi::nnet1::AverageAttention *this, int a2, int a3)
{
  *(this + 9) = off_279038;
  *(this + 20) = a2;
  *(this + 21) = a3;
  *(this + 44) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 12) = 0;
  *this = off_27B348;
  *(this + 15) = off_27B370;
  result = kaldi::nnet1::AttentionBaseInferenceComponent::AttentionBaseInferenceComponent(this, off_27E650);
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  result[5] = off_2829A0;
  *(result + 12) = 1;
  result[8] = 0;
  result[9] = off_27E560;
  result[15] = off_27E630;
  *result = off_27E390;
  result[1] = off_27E448;
  result[7] = 0;
  return result;
}

uint64_t kaldi::nnet1::LayerNorm::LayerNorm(uint64_t this, int a2, int a3)
{
  *(this + 8) = a2;
  *(this + 12) = a3;
  *(this + 16) = 0;
  *(this + 32) = 0;
  *(this + 40) = 0;
  *(this + 24) = 0;
  *this = off_280C30;
  *(this + 48) = 730643660;
  *(this + 52) = 1;
  *(this + 72) = 0;
  *(this + 80) = 0;
  *(this + 56) = off_277020;
  *(this + 64) = 0;
  *(this + 104) = 0;
  *(this + 112) = 0;
  *(this + 88) = off_277020;
  *(this + 96) = 0;
  return this;
}

char **kaldi::nnet1::Component::Delete(char **this, kaldi::nnet1::Component *a2)
{
  if (!this)
  {
    return this;
  }

  v2 = a2;
  v3 = this;
  v4 = (*(*this + 3))(this);
  v5 = v4;
  if (v4 <= 1024)
  {
    switch(v4)
    {
      case 257:
        v8 = **v3;
        goto LABEL_98;
      case 258:
        v57 = **v3;
        goto LABEL_98;
      case 259:
        v52 = **v3;
        goto LABEL_98;
      case 260:
        v54 = **v3;
        goto LABEL_98;
      case 261:
        v45 = **v3;
        goto LABEL_98;
      case 262:
        v65 = **v3;
        goto LABEL_98;
      case 263:
        v68 = **v3;
        goto LABEL_98;
      case 264:
        v56 = **v3;
        goto LABEL_98;
      case 265:
        v71 = **v3;
        goto LABEL_98;
      case 266:
        v47 = **v3;
        goto LABEL_98;
      case 267:
        v70 = **v3;
        goto LABEL_98;
      case 268:
        v44 = **v3;
        goto LABEL_98;
      case 269:
        v46 = **v3;
        goto LABEL_98;
      case 270:
        v67 = **v3;
        goto LABEL_98;
      case 271:
        v42 = **v3;
        goto LABEL_98;
      case 272:
        v53 = **v3;
        goto LABEL_98;
      case 273:
        v41 = **v3;
        goto LABEL_105;
      case 274:
        v62 = **v3;
        goto LABEL_105;
      case 275:
        v69 = **v3;
        goto LABEL_105;
      case 276:
        v83 = **v3;
        goto LABEL_105;
      case 277:
        v64 = **v3;
        goto LABEL_105;
      case 278:
        v66 = **v3;
        goto LABEL_111;
      case 279:
        v82 = **v3;
        goto LABEL_116;
      case 280:
        v84 = **v3;
        goto LABEL_105;
      case 281:
        v50 = **v3;
        goto LABEL_116;
      case 282:
        v48 = **v3;
        goto LABEL_116;
      case 283:
        v87 = **v3;
LABEL_116:
        if (!this)
        {
          return this;
        }

        v81 = *(*this + 1);

        return v81();
      case 284:
        v40 = **v3;
        goto LABEL_98;
      case 285:
        v85 = **v3;
        goto LABEL_111;
      case 286:
        v86 = **v3;
        goto LABEL_111;
      case 287:
        v74 = **v3;
        goto LABEL_111;
      case 288:
        v60 = **v3;
        goto LABEL_111;
      case 289:
        v75 = **v3;
LABEL_111:
        if (!this)
        {
          return this;
        }

        v81 = *(*this + 1);

        break;
      case 290:
        v43 = **v3;
        goto LABEL_98;
      default:
        switch(v4)
        {
          case 513:
            v11 = **v3;
            goto LABEL_98;
          case 514:
            v76 = **v3;
            goto LABEL_98;
          case 515:
            v63 = **v3;
            goto LABEL_98;
          case 516:
            v72 = **v3;
            goto LABEL_98;
          case 517:
            v55 = **v3;
            goto LABEL_98;
          case 518:
            v77 = **v3;
            goto LABEL_98;
          case 519:
            v78 = **v3;
            goto LABEL_98;
          case 520:
            v73 = **v3;
            goto LABEL_98;
          case 521:
            v80 = **v3;
            goto LABEL_98;
          case 522:
            v59 = **v3;
            goto LABEL_98;
          case 523:
            v79 = **v3;
            goto LABEL_98;
          case 524:
            v51 = **v3;
            goto LABEL_98;
          case 525:
            v58 = **v3;
            goto LABEL_98;
          default:
            goto LABEL_47;
        }
    }

    return v81();
  }

  if (v4 <= 2047)
  {
    switch(v4)
    {
      case 1025:
        v6 = **v3;
        goto LABEL_98;
      case 1026:
        v19 = **v3;
        goto LABEL_98;
      case 1027:
        v25 = **v3;
        goto LABEL_98;
      case 1028:
        v23 = **v3;
        goto LABEL_98;
      case 1031:
        v21 = **v3;
        goto LABEL_98;
      case 1032:
        v24 = **v3;
        goto LABEL_98;
      case 1033:
        v22 = **v3;
        goto LABEL_98;
      case 1034:
        v29 = **v3;
        goto LABEL_98;
      case 1035:
        v27 = **v3;
        goto LABEL_98;
      case 1036:
        v28 = **v3;
        goto LABEL_98;
      case 1037:
        v20 = **v3;
        goto LABEL_98;
      case 1038:
        v17 = **v3;
        goto LABEL_98;
      case 1039:
        v26 = **v3;
        goto LABEL_98;
      case 1040:
        v16 = **v3;
        goto LABEL_98;
      case 1041:
        v15 = **v3;
        goto LABEL_98;
      case 1042:
        v18 = **v3;
        goto LABEL_98;
      default:
        goto LABEL_47;
    }
  }

  if (v4 <= 2052)
  {
    if (v4 <= 2049)
    {
      if (v4 == 2048)
      {
        v32 = **v3;
      }

      else
      {
        v14 = **v3;
      }
    }

    else if (v4 == 2050)
    {
      v30 = **v3;
    }

    else if (v4 == 2051)
    {
      v31 = **v3;
    }

    else
    {
      v12 = **v3;
    }
  }

  else if (v4 > 2055)
  {
    switch(v4)
    {
      case 0x808:
        v34 = **v3;
        break;
      case 0x809:
        v36 = **v3;
        break;
      case 0x80A:
        v13 = **v3;
        break;
      default:
LABEL_47:
        if (!v2)
        {
          kaldi::KaldiErrorMessage::KaldiErrorMessage(v91, "Delete", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-component.cc", 723);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v91, "Missing type: ", 14);
          v88 = std::ostream::operator<<();
          v89 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v88, " ", 1);
          kaldi::nnet1::Component::TypeToMarker(v5, &__p);
          std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v89, &__p);
          std::string::~string(&__p);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(v91);
        }

        if (kaldi::g_kaldi_verbose_level >= -1)
        {
          kaldi::KaldiWarnMessage::KaldiWarnMessage(v91, "Delete", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-component.cc", 720);
          v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v91, "Missing type: ", 14);
          kaldi::nnet1::Component::TypeToMarker(v5, &__p);
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

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, p_p, size);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          kaldi::KaldiWarnMessage::~KaldiWarnMessage(v91);
        }

        return (*(*v3 + 1))(v3);
    }
  }

  else if (v4 == 2053)
  {
    v33 = **v3;
  }

  else
  {
    if (v4 != 2054)
    {
      v9 = **v3;
LABEL_105:
      if (this)
      {
        v81 = *(*this + 1);

        return v81();
      }

      return this;
    }

    v35 = **v3;
  }

LABEL_98:
  if (this)
  {
    v81 = *(*this + 1);

    return v81();
  }

  return this;
}

void kaldi::nnet1::Component::Init(const std::string *a1)
{
  std::istringstream::basic_istringstream[abi:ne200100](v16, a1, 8);
  __p = 0;
  v14 = 0;
  v15 = 0;
  v12 = 0;
  kaldi::ReadToken(v16, 0, &__p, v1, v2);
  v3 = kaldi::nnet1::Component::MarkerToComponentType(&__p);
  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v11, "Init", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-component.cc", 736, 3);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "Initializing component of type ", 31);
    if (v15 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v15 >= 0)
    {
      v6 = HIBYTE(v15);
    }

    else
    {
      v6 = v14;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, p_p, v6);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v11);
  }

  kaldi::ExpectToken(v16, 0, "<InputDim>");
  kaldi::ReadBasicType<int>(v16, 0, &v12 + 4, v7, v8);
  kaldi::ExpectToken(v16, 0, "<OutputDim>");
  kaldi::ReadBasicType<int>(v16, 0, &v12, v9, v10);
  kaldi::nnet1::Component::NewComponentOfType(v3);
}

void sub_DB238(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *__p, uint64_t a47, int a48, __int16 a49, char a50, char a51, char a52)
{
  if (a51 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::Component::Read(uint64_t *a1, int a2)
{
  v23 = 0;
  v24 = 0;
  __p = 0;
  v22 = 0;
  if (kaldi::Peek(a1, a2) == -1)
  {
    return 0;
  }

  kaldi::ReadToken(a1, a2, &__p, v4, v5);
  v8 = HIBYTE(v23);
  if (SHIBYTE(v23) < 0)
  {
    if (v22 != 6)
    {
      goto LABEL_16;
    }

    p_p = __p;
LABEL_8:
    v10 = *p_p;
    v11 = p_p[2];
    if (v10 == 1701727804 && v11 == 15988)
    {
      kaldi::ReadToken(a1, a2, &__p, v6, v7);
      v8 = HIBYTE(v23);
      if ((v23 & 0x8000000000000000) == 0)
      {
        goto LABEL_13;
      }
    }

    else if ((v23 & 0x8000000000000000) == 0)
    {
      goto LABEL_13;
    }

LABEL_16:
    if (v22 != 7)
    {
      goto LABEL_22;
    }

    v13 = __p;
    goto LABEL_18;
  }

  if (HIBYTE(v23) == 6)
  {
    p_p = &__p;
    goto LABEL_8;
  }

LABEL_13:
  if (v8 != 7)
  {
    goto LABEL_22;
  }

  v13 = &__p;
LABEL_18:
  v14 = *v13;
  v15 = *(v13 + 3);
  if (v14 != 1850617660 || v15 != 1047815534)
  {
LABEL_22:
    kaldi::ReadBasicType<int>(a1, a2, &v24 + 4, v6, v7);
    kaldi::ReadBasicType<int>(a1, a2, &v24, v17, v18);
    v19 = kaldi::nnet1::Component::MarkerToComponentType(&__p);
    kaldi::nnet1::Component::NewComponentOfType(v19);
  }

  if ((v8 & 0x80) != 0)
  {
    operator delete(__p);
  }

  return 0;
}

void sub_DB420(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::nnet1::Component::Write(unsigned int *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = (*(*a1 + 24))(a1);
  kaldi::nnet1::Component::TypeToMarker(v8, &__p);
  kaldi::WriteToken(a2, a3, &__p, v9, v10);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v11 = a1[3];
  kaldi::WriteBasicType<int>(a2, a3);
  v12 = a1[2];
  kaldi::WriteBasicType<int>(a2, a3);
  if ((a3 & 1) == 0)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "\n", 1);
  }

  return (*(*a1 + 104))(a1, a2, a3, a4);
}

void sub_DB534(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::UpdatableComponent::LimitL2NormGradient(uint64_t a1, unsigned int *a2, float a3, uint64_t a4, uint64_t a5, const char *a6)
{
  if (a3 <= 0.0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v19, "LimitL2NormGradient", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-component.cc", 794);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "the L2 Norm clipping value must be greater than 0, you set ", 59);
    std::ostream::operator<<();
    goto LABEL_11;
  }

  if (!a1 || !a2)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v19, "LimitL2NormGradient", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-component.cc", 795);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v19, "either the gradient or the gradient norm data is not initialized");
LABEL_11:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v19);
  }

  kaldi::CuMatrixBase<float>::CopyFromMat<float>(a2, a1, 111, a5, a6);
  kaldi::CuMatrixBase<float>::ApplyPow(a2, v9, v10, v11, v12, 2.0);
  v17 = sqrtf(kaldi::CuMatrixBase<float>::Sum(a2, v13, v14, v15, v16));
  if (v17 > a3)
  {
    v18 = a3 / v17;

    kaldi::CuMatrixBase<float>::Scale(a1, v18);
  }
}

void kaldi::nnet1::UpdatableComponent::LimitL2NormGradient(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, const char *a5, float a6)
{
  if (a6 <= 0.0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v11, "LimitL2NormGradient", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-component.cc", 809);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "the L2 Norm clipping value must be greater than 0, you set ", 59);
    std::ostream::operator<<();
    goto LABEL_11;
  }

  if (!a1 || !a2)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v11, "LimitL2NormGradient", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-component.cc", 810);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v11, "either the gradient or the gradient norm data is not initialized");
LABEL_11:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v11);
  }

  kaldi::CuVectorBase<float>::CopyFromVec(a2, a1, a3, a4, a5);
  kaldi::CuVectorBase<float>::ApplyPow(a2, 2.0);
  v9 = sqrtf(COERCE_FLOAT(COERCE_UNSIGNED_INT64(kaldi::CuVectorBase<float>::Sum(a2))));
  if (v9 > a6)
  {
    v10 = a6 / v9;

    kaldi::CuVectorBase<float>::Scale(a1, v10);
  }
}

uint64_t kaldi::nnet1::UpdatableComponent::ClipGradient(uint64_t a1, float a2)
{
  if (a2 <= 0.0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v5, "ClipGradient", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-component.cc", 822);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "the gradient clipping value must be greater than 0, you set ", 60);
    std::ostream::operator<<();
    goto LABEL_8;
  }

  if (!a1)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v5, "ClipGradient", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-component.cc", 823);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v5, "the gradient data is not initialized");
LABEL_8:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v5);
  }

  kaldi::CuMatrixBase<float>::ApplyCeiling(a1, a2);

  return kaldi::CuMatrixBase<float>::ApplyFloor(a1, -a2);
}

{
  if (a2 <= 0.0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v5, "ClipGradient", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-component.cc", 829);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "the gradient clipping value must be greater than 0, you set ", 60);
    std::ostream::operator<<();
    goto LABEL_8;
  }

  if (!a1)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v5, "ClipGradient", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-component.cc", 830);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v5, "the gradient data is not initialized");
LABEL_8:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v5);
  }

  kaldi::CuVectorBase<float>::ApplyCeiling(a1, a2);

  return kaldi::CuVectorBase<float>::ApplyFloor(a1, -a2);
}

void kaldi::nnet1::UpdatableComponent::RmspropGradient(uint64_t a1, uint64_t a2, float a3)
{
  if (a3 < 0.0 || a3 > 1.0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v17, "RmspropGradient", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-component.cc", 838);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "the factor in RMSPROP must be [0, 1], you set ", 46);
    std::ostream::operator<<();
    goto LABEL_12;
  }

  if (!a1 || !a2)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v17, "RmspropGradient", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-component.cc", 839);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v17, "either the gradient or the gradient norm data is not initialized");
LABEL_12:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v17);
  }

  kaldi::CuMatrixBase<float>::AddMatEwpMat(a2, a1, 111, a1, &stru_68.sectname[7], 1.0 - a3, a3);
  kaldi::CuMatrixBase<float>::ApplyPow(a2, v6, v7, v8, v9, 0.5);
  kaldi::CuMatrixBase<float>::DivElements(a1, a2, v10, v11, v12);

  kaldi::CuMatrixBase<float>::ApplyPow(a2, v13, v14, v15, v16, 2.0);
}

void kaldi::nnet1::UpdatableComponent::RmspropGradient(uint64_t a1, uint64_t a2, float a3, uint64_t a4, uint64_t a5, const char *a6)
{
  if (a3 < 0.0 || a3 > 1.0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v12, "RmspropGradient", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-component.cc", 849);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "the factor in RMSPROP must be [0, 1], you set ", 46);
    std::ostream::operator<<();
    goto LABEL_12;
  }

  if (!a1 || !a2)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v12, "RmspropGradient", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-component.cc", 850);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v12, "either the gradient or the gradient norm data is not initialized");
LABEL_12:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v12);
  }

  kaldi::CuVectorBase<float>::AddVecVec(a2, a1, a1, a5, a6, 1.0 - a3, a3);
  kaldi::CuVectorBase<float>::ApplyPow(a2, 0.5);
  kaldi::CuVectorBase<float>::DivElements(a1, a2, v9, v10, v11);

  kaldi::CuVectorBase<float>::ApplyPow(a2, 2.0);
}

void kaldi::nnet1::Component::~Component(kaldi::nnet1::Component *this)
{
  *this = off_279038;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

void kaldi::nnet1::MaxPooling2DComponent::~MaxPooling2DComponent(kaldi::nnet1::MaxPooling2DComponent *this)
{
  *this = off_279038;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  *this = off_279038;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  operator delete();
}

void kaldi::nnet1::AddShift::~AddShift(kaldi::nnet1::AddShift *this)
{
  *this = off_278E50;
  v2 = *(this + 23);
  if (v2)
  {
    *(this + 24) = v2;
    operator delete(v2);
  }

  v3 = (this + 144);
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 120);
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&v3);
  kaldi::CuVector<float>::~CuVector(this + 11);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(this);
}

{
  kaldi::nnet1::AddShift::~AddShift(this);

  operator delete();
}

void kaldi::nnet1::UpdatableComponent::~UpdatableComponent(kaldi::nnet1::UpdatableComponent *this)
{
  *this = off_27A660;
  kaldi::nnet1::NnetTrainOptions::~NnetTrainOptions((this + 48));
  *this = off_279038;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

void kaldi::nnet1::AveragePooling2DComponent::~AveragePooling2DComponent(kaldi::nnet1::AveragePooling2DComponent *this)
{
  *this = off_279038;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  *this = off_279038;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  operator delete();
}

void kaldi::nnet1::AveragePoolingComponent::~AveragePoolingComponent(kaldi::nnet1::AveragePoolingComponent *this)
{
  *this = off_279038;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  *this = off_279038;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  operator delete();
}

void kaldi::nnet1::BlockSoftmax::~BlockSoftmax(kaldi::nnet1::BlockSoftmax *this)
{
  *this = off_278F78;
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  v3 = *(this + 6);
  if (v3)
  {
    *(this + 7) = v3;
    operator delete(v3);
  }

  *this = off_279038;
  v4 = *(this + 3);
  if (v4)
  {
    *(this + 4) = v4;
    operator delete(v4);
  }
}

{
  kaldi::nnet1::BlockSoftmax::~BlockSoftmax(this);

  operator delete();
}

void kaldi::nnet1::CompressedWordVecComponent::~CompressedWordVecComponent(kaldi::nnet1::CompressedWordVecComponent *this)
{
  *this = off_2790F8;
  kaldi::CompressedMatrix::Destroy((this + 48));
  *this = off_279038;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  kaldi::nnet1::CompressedWordVecComponent::~CompressedWordVecComponent(this);

  operator delete();
}

void kaldi::nnet1::ConvolutionalComponent::~ConvolutionalComponent(kaldi::nnet1::ConvolutionalComponent *this)
{
  *this = off_2791B8;
  v2 = *(this + 44);
  if (v2)
  {
    *(this + 45) = v2;
    operator delete(v2);
  }

  v3 = (this + 328);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 304);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 264);
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 240);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 216);
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 192);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v3);
  kaldi::CuVector<float>::~CuVector(this + 19);
  kaldi::CuMatrix<float>::~CuMatrix(this + 104);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(this);
}

{
  kaldi::nnet1::ConvolutionalComponent::~ConvolutionalComponent(this);

  operator delete();
}

void kaldi::nnet1::CopyComponent::~CopyComponent(kaldi::nnet1::CopyComponent *this)
{
  *this = off_2792E0;
  v2 = *(this + 7);
  if (v2)
  {
    free(v2);
  }

  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *this = off_279038;
  v3 = *(this + 3);
  if (v3)
  {
    *(this + 4) = v3;
    operator delete(v3);
  }
}

{
  kaldi::nnet1::CopyComponent::~CopyComponent(this);

  operator delete();
}

void kaldi::nnet1::Desplice::~Desplice(kaldi::nnet1::Desplice *this)
{
  *this = off_2793A0;
  v2 = *(this + 18);
  if (v2)
  {
    free(v2);
  }

  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 19) = 0;
  v3 = *(this + 15);
  if (v3)
  {
    free(v3);
  }

  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
  v4 = *(this + 12);
  if (v4)
  {
    free(v4);
  }

  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  v5 = *(this + 9);
  if (v5)
  {
    free(v5);
  }

  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *this = off_279038;
  v6 = *(this + 3);
  if (v6)
  {
    *(this + 4) = v6;
    operator delete(v6);
  }
}

{
  kaldi::nnet1::Desplice::~Desplice(this);

  operator delete();
}

void kaldi::nnet1::Dropout::~Dropout(kaldi::nnet1::Dropout *this)
{
  *this = off_279460;
  kaldi::CuMatrix<float>::~CuMatrix(this + 144);
  kaldi::CuRand<float>::~CuRand(this + 48);
  *this = off_279038;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  kaldi::nnet1::Dropout::~Dropout(this);

  operator delete();
}

void kaldi::nnet1::DuplicateComponent::~DuplicateComponent(kaldi::nnet1::DuplicateComponent *this)
{
  *this = off_279038;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  *this = off_279038;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  operator delete();
}

void kaldi::nnet1::FofeWordVecComponent::~FofeWordVecComponent(kaldi::nnet1::FofeWordVecComponent *this)
{
  *this = off_279520;
  *(this + 11) = off_279650;
  kaldi::CuMatrix<float>::~CuMatrix(this + 440);
  kaldi::CuMatrix<float>::~CuMatrix(this + 392);

  kaldi::nnet1::WordVecComponent::~WordVecComponent(this);
}

{
  kaldi::nnet1::FofeWordVecComponent::~FofeWordVecComponent(this);

  operator delete();
}

void kaldi::nnet1::WordVecComponent::~WordVecComponent(kaldi::nnet1::WordVecComponent *this)
{
  *this = off_27A788;
  *(this + 11) = off_27A8B8;
  kaldi::nnet1::QuantizerResidualAggregator::~QuantizerResidualAggregator(this + 39);
  kaldi::CuMatrix<float>::~CuMatrix(this + 264);
  kaldi::CuMatrix<float>::~CuMatrix(this + 192);
  kaldi::CuMatrix<float>::~CuMatrix(this + 144);
  kaldi::CuMatrix<float>::~CuMatrix(this + 96);

  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(this);
}

{
  kaldi::nnet1::WordVecComponent::~WordVecComponent(this);

  operator delete();
}

void non-virtual thunk tokaldi::nnet1::FofeWordVecComponent::~FofeWordVecComponent(kaldi::nnet1::FofeWordVecComponent *this)
{
  kaldi::nnet1::FofeWordVecComponent::~FofeWordVecComponent((this - 88));
}

{
  kaldi::nnet1::FofeWordVecComponent::~FofeWordVecComponent((this - 88));

  operator delete();
}

void kaldi::nnet1::FramePoolingComponent::~FramePoolingComponent(kaldi::nnet1::FramePoolingComponent *this)
{
  *this = off_279678;
  v3 = (this + 144);
  std::vector<kaldi::Vector<float>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 120);
  std::vector<kaldi::Vector<float>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(this + 12);
  if (v2)
  {
    *(this + 13) = v2;
    operator delete(v2);
  }

  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(this);
}

{
  kaldi::nnet1::FramePoolingComponent::~FramePoolingComponent(this);

  operator delete();
}

void kaldi::nnet1::HistoricalComponent::~HistoricalComponent(kaldi::nnet1::HistoricalComponent *this)
{
  *this = off_2797A0;
  v1 = (this + 8);
  kaldi::nnet1::HistoryOptions::~HistoryOptions((this + 32));
  v2 = v1;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v2);
}

void kaldi::nnet1::IdentityComponent::~IdentityComponent(kaldi::nnet1::IdentityComponent *this)
{
  *this = off_279038;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  *this = off_279038;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  operator delete();
}

void kaldi::nnet1::InterpolationComponent::~InterpolationComponent(kaldi::nnet1::InterpolationComponent *this)
{
  *this = off_279810;
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  *this = off_279038;
  v3 = *(this + 3);
  if (v3)
  {
    *(this + 4) = v3;
    operator delete(v3);
  }
}

{
  kaldi::nnet1::InterpolationComponent::~InterpolationComponent(this);

  operator delete();
}

void kaldi::nnet1::KlHmm::~KlHmm(kaldi::nnet1::KlHmm *this)
{
  *this = off_2798D8;
  kaldi::CuMatrix<float>::~CuMatrix(this + 88);
  kaldi::Matrix<float>::~Matrix(this + 48);
  *this = off_279038;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  kaldi::nnet1::KlHmm::~KlHmm(this);

  operator delete();
}

void kaldi::nnet1::LogSoftmax::~LogSoftmax(kaldi::nnet1::LogSoftmax *this)
{
  *this = off_279038;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  *this = off_279038;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  operator delete();
}

void kaldi::nnet1::MaxoutComponent::~MaxoutComponent(kaldi::nnet1::MaxoutComponent *this)
{
  *this = off_279038;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  *this = off_279038;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  operator delete();
}

void kaldi::nnet1::MaxPoolingComponent::~MaxPoolingComponent(kaldi::nnet1::MaxPoolingComponent *this)
{
  *this = off_279038;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  *this = off_279038;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  operator delete();
}

void kaldi::nnet1::MultiSoftmax::~MultiSoftmax(kaldi::nnet1::MultiSoftmax *this)
{
  kaldi::nnet1::BlockSoftmax::~BlockSoftmax(this);

  operator delete();
}

void kaldi::nnet1::ParallelComponent::~ParallelComponent(kaldi::nnet1::ParallelComponent *this, uint64_t *a2)
{
  v4 = *a2;
  *this = *a2;
  *(this + *(v4 - 24)) = a2[3];
  *(this + 20) = off_279AF8;
  *(this + 21) = off_279B20;
  v5 = (this + 184);
  std::vector<kaldi::nnet1::Nnet>::__destroy_vector::operator()[abi:ne200100](&v5);
  kaldi::nnet1::RecurrentBaseComponent::~RecurrentBaseComponent(this, a2 + 1);
}

void kaldi::nnet1::RecurrentBaseComponent::~RecurrentBaseComponent(kaldi::nnet1::RecurrentBaseComponent *this, uint64_t *a2)
{
  v3 = *a2;
  *this = *a2;
  *(this + *(v3 - 24)) = a2[1];
  v4 = (this + 128);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = (this + 104);
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&v4);
  kaldi::nnet1::RecurrentNnetTrainOptions::~RecurrentNnetTrainOptions((this + 48));
  *this = off_2797A0;
  kaldi::nnet1::HistoryOptions::~HistoryOptions((this + 32));
  v4 = (this + 8);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v4);
}

void kaldi::nnet1::ParallelComponent::~ParallelComponent(kaldi::nnet1::ParallelComponent *this)
{
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent((v1 + 208));
}

{
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent((v1 + 208));

  operator delete();
}

void non-virtual thunk tokaldi::nnet1::ParallelComponent::~ParallelComponent(kaldi::nnet1::ParallelComponent *this)
{

  kaldi::nnet1::UpdatableComponent::~UpdatableComponent((this + 48));
}

{

  kaldi::nnet1::UpdatableComponent::~UpdatableComponent((this + 40));
}

{
  kaldi::nnet1::ParallelComponent::~ParallelComponent((this - 160));
}

{
  kaldi::nnet1::ParallelComponent::~ParallelComponent((this - 168));
}

void virtual thunk tokaldi::nnet1::ParallelComponent::~ParallelComponent(kaldi::nnet1::ParallelComponent *this)
{
  v2 = (v1 + 208);

  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v2);
}

{
  kaldi::nnet1::ParallelComponent::~ParallelComponent((this + *(*this - 24)));
}

void kaldi::nnet1::PNormComponent::~PNormComponent(kaldi::nnet1::PNormComponent *this)
{
  *this = off_279038;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  *this = off_279038;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  operator delete();
}

void kaldi::nnet1::Rbm::~Rbm(kaldi::nnet1::Rbm *this)
{
  *this = off_279DA0;
  kaldi::CuVector<float>::~CuVector(this + 33);
  kaldi::CuVector<float>::~CuVector(this + 29);
  kaldi::CuMatrix<float>::~CuMatrix(this + 184);
  kaldi::CuVector<float>::~CuVector(this + 19);
  kaldi::CuVector<float>::~CuVector(this + 15);
  kaldi::CuMatrix<float>::~CuMatrix(this + 72);
  *this = off_279038;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  kaldi::nnet1::Rbm::~Rbm(this);

  operator delete();
}

void kaldi::nnet1::RectifiedLinearComponent::~RectifiedLinearComponent(kaldi::nnet1::RectifiedLinearComponent *this)
{
  *this = off_279038;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  *this = off_279038;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  operator delete();
}

void kaldi::nnet1::ExponentialLinearComponent::~ExponentialLinearComponent(kaldi::nnet1::ExponentialLinearComponent *this)
{
  *this = off_279038;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  *this = off_279038;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  operator delete();
}

void kaldi::nnet1::ScaledExponentialLinearComponent::~ScaledExponentialLinearComponent(kaldi::nnet1::ScaledExponentialLinearComponent *this)
{
  *this = off_279038;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  *this = off_279038;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  operator delete();
}

void kaldi::nnet1::Recurrent::~Recurrent(kaldi::nnet1::Recurrent *this, uint64_t *a2)
{
  v4 = *a2;
  *this = *a2;
  *(this + *(v4 - 24)) = a2[3];
  v6 = (this + 504);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v6 = (this + 480);
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&v6);
  kaldi::CuMatrix<float>::~CuMatrix(this + 432);
  v5 = *(this + 51);
  if (v5)
  {
    *(this + 52) = v5;
    operator delete(v5);
  }

  v6 = (this + 360);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v6 = (this + 336);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v6 = (this + 312);
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v6 = (this + 288);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v6 = (this + 264);
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v6 = (this + 240);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v6);
  kaldi::CuVector<float>::~CuVector(this + 26);
  kaldi::CuMatrix<float>::~CuMatrix(this + 160);
  kaldi::nnet1::RecurrentBaseComponent::~RecurrentBaseComponent(this, a2 + 1);
}

void kaldi::nnet1::Recurrent::~Recurrent(kaldi::nnet1::Recurrent *this)
{
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent((v1 + 528));
}

{
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent((v1 + 528));

  operator delete();
}

void virtual thunk tokaldi::nnet1::Recurrent::~Recurrent(kaldi::nnet1::Recurrent *this)
{
  v2 = (v1 + 528);

  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v2);
}

{
  kaldi::nnet1::Recurrent::~Recurrent((this + *(*this - 24)));
}

void kaldi::nnet1::RelaxedSoftmax::~RelaxedSoftmax(kaldi::nnet1::RelaxedSoftmax *this)
{
  *this = off_279038;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  *this = off_279038;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  operator delete();
}

void kaldi::nnet1::Rescale::~Rescale(kaldi::nnet1::Rescale *this)
{
  *this = off_27A228;
  v2 = *(this + 29);
  if (v2)
  {
    *(this + 30) = v2;
    operator delete(v2);
  }

  kaldi::CuMatrix<float>::~CuMatrix(this + 168);
  v3 = (this + 144);
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 120);
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&v3);
  kaldi::CuVector<float>::~CuVector(this + 11);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(this);
}

{
  kaldi::nnet1::Rescale::~Rescale(this);

  operator delete();
}

void kaldi::nnet1::SentenceAveragingComponent::~SentenceAveragingComponent(kaldi::nnet1::SentenceAveragingComponent *this)
{
  *this = off_27A350;
  kaldi::nnet1::Nnet::~Nnet((this + 88));

  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(this);
}

{
  *this = off_27A350;
  kaldi::nnet1::Nnet::~Nnet((this + 88));
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(this);

  operator delete();
}

void kaldi::nnet1::SharedNceComponent::~SharedNceComponent(kaldi::nnet1::SharedNceComponent *this)
{
  *this = off_27A478;
  v2 = this + 88;
  kaldi::CuVector<float>::~CuVector(this + 47);
  kaldi::CuVector<float>::~CuVector(this + 43);
  kaldi::CuVector<float>::~CuVector(this + 39);
  kaldi::CuMatrix<float>::~CuMatrix(this + 264);
  kaldi::CuMatrix<float>::~CuMatrix(this + 216);
  kaldi::CuMatrix<float>::~CuMatrix(this + 168);
  kaldi::CuVector<float>::~CuVector(this + 17);
  kaldi::CuMatrix<float>::~CuMatrix(v2);

  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(this);
}

{
  kaldi::nnet1::SharedNceComponent::~SharedNceComponent(this);

  operator delete();
}

void kaldi::nnet1::Sigmoid::~Sigmoid(kaldi::nnet1::Sigmoid *this)
{
  *this = off_279038;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  *this = off_279038;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  operator delete();
}

void kaldi::nnet1::Softmax::~Softmax(kaldi::nnet1::Softmax *this)
{
  *this = off_279038;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  *this = off_279038;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  operator delete();
}

void kaldi::nnet1::Splice::~Splice(kaldi::nnet1::Splice *this)
{
  *this = off_27A5A0;
  v2 = *(this + 7);
  if (v2)
  {
    free(v2);
  }

  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *this = off_279038;
  v3 = *(this + 3);
  if (v3)
  {
    *(this + 4) = v3;
    operator delete(v3);
  }
}

{
  kaldi::nnet1::Splice::~Splice(this);

  operator delete();
}

void kaldi::nnet1::Tanh::~Tanh(kaldi::nnet1::Tanh *this)
{
  *this = off_279038;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  *this = off_279038;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  operator delete();
}

void kaldi::nnet1::TemporalMaxPoolingComponent::~TemporalMaxPoolingComponent(kaldi::nnet1::TemporalMaxPoolingComponent *this)
{
  *this = off_279038;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  *this = off_279038;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  operator delete();
}

void non-virtual thunk tokaldi::nnet1::WordVecComponent::~WordVecComponent(kaldi::nnet1::WordVecComponent *this)
{
  kaldi::nnet1::WordVecComponent::~WordVecComponent((this - 88));
}

{
  kaldi::nnet1::WordVecComponent::~WordVecComponent((this - 88));

  operator delete();
}

void kaldi::nnet1::CompressedWordTransComponent::~CompressedWordTransComponent(kaldi::nnet1::CompressedWordTransComponent *this)
{
  *this = off_27A8E0;
  kaldi::CompressedMatrix::Destroy((this + 80));
  kaldi::CuVector<float>::~CuVector(this + 6);
  *this = off_279038;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  kaldi::nnet1::CompressedWordTransComponent::~CompressedWordTransComponent(this);

  operator delete();
}

float kaldi::nnet1::RelaxedSoftmax::InitData(uint64_t a1, uint64_t *a2)
{
  kaldi::ExpectToken(a2, 0, "<RelaxFactor>");
  kaldi::ReadBasicType<float>(a2, 0, (a1 + 48), v4, v5);
  result = *(a1 + 48);
  if (result <= 0.0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v8, "InitData", "../subproject/libquasar/libkaldi/src/nnet/nnet-activation.h", 98);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "Relaxation factor must be positive; found: ", 43);
    v7 = *(a1 + 48);
    std::ostream::operator<<();
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v8);
  }

  return result;
}

void *kaldi::nnet1::RelaxedSoftmax::WriteData(uint64_t a1, void *a2, const char *a3, uint64_t a4, const char *a5)
{
  v5 = a3;
  kaldi::WriteToken(a2, a3, "<RelaxFactor>", a4, a5);
  v8 = *(a1 + 48);

  return kaldi::WriteBasicType<float>(a2, v5);
}

uint64_t kaldi::nnet1::RelaxedSoftmax::PropagateFnc(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4, const char *a5)
{
  kaldi::CuMatrixBase<float>::AddMat(a3, a2, 111, a4, a5, *(a1 + 48), 0.0);

  return kaldi::CuMatrixBase<float>::ApplySoftMaxPerRow(a3, a3, v6, v7, v8);
}

float kaldi::nnet1::RelaxedSoftmax::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  kaldi::CuVectorBase<float>::AddVec(a3, a2, a3, a4, a5, *(a1 + 48), 0.0);

  return kaldi::CuVectorBase<float>::ApplySoftMax(a3, v6);
}

float kaldi::nnet1::RelaxedSoftmax::ReadData(uint64_t a1, uint64_t *a2, int a3)
{
  kaldi::ExpectToken(a2, a3, "<RelaxFactor>");
  kaldi::ReadBasicType<float>(a2, a3, (a1 + 48), v6, v7);
  result = *(a1 + 48);
  if (result <= 0.0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v10, "ReadData", "../subproject/libquasar/libkaldi/src/nnet/nnet-activation.h", 105);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "Relaxation factor must be positive; found: ", 43);
    v9 = *(a1 + 48);
    std::ostream::operator<<();
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v10);
  }

  return result;
}

void kaldi::nnet1::LogSoftmax::PropagateFnc(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4, const char *a5)
{
  kaldi::CuMatrixBase<float>::ApplySoftMaxPerRow(a3, a2, a3, a4, a5);
  kaldi::CuMatrixBase<float>::ApplyFloor(a3, 1.0e-20);

  kaldi::CuMatrixBase<float>::ApplyLog(a3, v6, v7, v8, v9);
}

void kaldi::nnet1::LogSoftmax::PropagateFnc(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, const char *a5)
{
  kaldi::CuVectorBase<float>::CopyFromVec(a3, a2, a3, a4, a5);
  kaldi::CuVectorBase<float>::ApplySoftMax(a3, v6);
  kaldi::CuVectorBase<float>::ApplyFloor(a3, 1.0e-20);

  kaldi::CuVectorBase<float>::ApplyLog(a3);
}

float kaldi::nnet1::Softmax::PropagateFnc(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, const char *a5)
{
  kaldi::CuVectorBase<float>::CopyFromVec(a3, a2, a3, a4, a5);

  return kaldi::CuVectorBase<float>::ApplySoftMax(a3, v6);
}

void kaldi::nnet1::BlockSoftmax::InitData(std::vector<int> *this, uint64_t *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v7 = a2 + 4;
  while (1)
  {
    if ((*(v7 + *(*a2 - 24)) & 2) != 0)
    {
      goto LABEL_25;
    }

    kaldi::ReadToken(a2, 0, &v23, a4, a5);
    if ((SHIBYTE(v25) & 0x80000000) == 0)
    {
      break;
    }

    v9 = v24;
    if (v24 != 11)
    {
      goto LABEL_16;
    }

    v8 = v23;
LABEL_8:
    v10 = *v8;
    v11 = *(v8 + 3);
    if (v10 != 0x69446B636F6C423CLL || v11 != 0x3E736D69446B636FLL)
    {
      if (v25 < 0)
      {
        v9 = v24;
LABEL_16:
        if (v9 == 12)
        {
          v13 = v23;
          goto LABEL_20;
        }
      }

      goto LABEL_28;
    }

    kaldi::ReadIntegerVector<int>(a2, 0, this + 2, 0, 0, 0, 0);
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }

  if (HIBYTE(v25) == 11)
  {
    v8 = &v23;
    goto LABEL_8;
  }

  if (HIBYTE(v25) != 12)
  {
    goto LABEL_28;
  }

  v13 = &v23;
LABEL_20:
  v14 = *v13;
  v15 = *(v13 + 2);
  if (v14 != 0x6E6F706D6F432F3CLL || v15 != 1047817829)
  {
LABEL_28:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v22, "InitData", "../subproject/libquasar/libkaldi/src/nnet/nnet-activation.h", 210);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "Unknown token ", 14);
    if (v25 >= 0)
    {
      v18 = &v23;
    }

    else
    {
      v18 = v23;
    }

    if (v25 >= 0)
    {
      v19 = HIBYTE(v25);
    }

    else
    {
      v19 = v24;
    }

    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, v18, v19);
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, ", a typo in config?", 19);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, " (BlockDims)", 12);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v22);
  }

LABEL_25:
  kaldi::nnet1::BlockSoftmax::InitOffset(this);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(v23);
  }
}

void sub_DE75C(_Unwind_Exception *a1)
{
  if (*(v1 - 49) < 0)
  {
    operator delete(*(v1 - 72));
  }

  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::BlockSoftmax::PropagateFnc(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 48);
  if (*(result + 56) != v3)
  {
    v6 = result;
    v7 = 0;
    do
    {
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v14, a2, 0, *(a2 + 20), *(v6[9] + 4 * v7), *(v3 + 4 * v7));
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v11, a3, 0, *(a3 + 20), *(v6[9] + 4 * v7), *(v6[6] + 4 * v7));
      kaldi::CuMatrixBase<float>::ApplySoftMaxPerRow(&v11, &v14, v8, v9, v10);
      v11 = off_276F40;
      v12 = 0u;
      v13 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v11);
      v14 = off_276F40;
      v15 = 0u;
      v16 = 0u;
      result = fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v14);
      ++v7;
      v3 = v6[6];
    }

    while (v7 < (v6[7] - v3) >> 2);
  }

  return result;
}

void sub_DE8B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void (**a14)())
{
  a14 = off_276F40;
  *(v14 + 8) = 0u;
  *(v14 + 24) = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&a14);
  _Unwind_Resume(a1);
}

unsigned int *kaldi::nnet1::BlockSoftmax::BackpropagateFnc(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = kaldi::CuMatrixBase<float>::CopyFromMat<float>(a5, a4, 111, a4, a5);
  v8 = a1[6];
  if (a1[7] != v8)
  {
    v9 = 0;
    do
    {
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v23, a5, 0, *(a5 + 20), *(a1[9] + 4 * v9), *(v8 + 4 * v9));
      memset(&v22[1], 0, 24);
      v22[0] = off_277020;
      kaldi::CuVector<float>::Resize(v22, HIDWORD(v24), 0, v10, v11);
      kaldi::CuVectorBase<float>::AddRowSumMat(v22, &v23, 1.0, 0.0, v12, v13, v14);
      kaldi::CuVector<float>::CuVector(v21, v22, v15, v16, v17);
      kaldi::CuVectorBase<float>::Scale(v21, -1.0);
      kaldi::CuVectorBase<float>::Add(v21, 1.0);
      kaldi::CuMatrixBase<float>::MulRowsVec(&v23, v21, v18, v19, v20);
      kaldi::CuVector<float>::~CuVector(v21);
      kaldi::CuVector<float>::~CuVector(v22);
      v23 = off_276F40;
      v24 = 0u;
      v25 = 0u;
      result = fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v23);
      ++v9;
      v8 = a1[6];
    }

    while (v9 < (a1[7] - v8) >> 2);
  }

  return result;
}

void sub_DEA80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void (**a18)())
{
  a18 = off_276F40;
  *(v18 + 8) = 0u;
  *(v18 + 24) = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&a18);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::BlockSoftmax::ReadData(std::vector<int> *a1, void *a2, int a3)
{
  kaldi::ReadIntegerVector<int>(a2, a3, a1 + 2, 0, 0, 0, 0);

  kaldi::nnet1::BlockSoftmax::InitOffset(a1);
}

void sub_DEDF8()
{
  kaldi::CuRand<float>::~CuRand((v0 + 6));
  *v0 = v1;
  v2 = v0[3];
  if (v2)
  {
    v0[4] = v2;
    operator delete(v2);
  }

  operator delete();
}

void kaldi::nnet1::Dropout::InitData(uint64_t a1, void *a2)
{
  std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  v26 = 0;
  v27 = 0;
  v6 = (a1 + 192);
  v28 = 0;
  while (1)
  {
    if ((*(a2 + *(*a2 - 24) + 32) & 2) != 0)
    {
      goto LABEL_28;
    }

    kaldi::ReadToken(a2, 0, &v26, v4, v5);
    if (SHIBYTE(v28) < 0)
    {
      v9 = v27;
      if (v27 != 18)
      {
        goto LABEL_21;
      }

      v8 = v26;
    }

    else
    {
      if (HIBYTE(v28) != 18)
      {
        goto LABEL_18;
      }

      v8 = &v26;
    }

    v10 = *v8;
    v11 = v8[1];
    v12 = *(v8 + 8);
    v13 = v10 == 0x74756F706F72443CLL && v11 == 0x6F69746E65746552;
    if (!v13 || v12 != 15982)
    {
      break;
    }

    kaldi::ReadBasicType<float>(a2, 0, v6, v7, v5);
  }

  if (v28 < 0)
  {
    v9 = v27;
LABEL_21:
    if (v9 != 12)
    {
LABEL_35:
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v25, "InitData", "../subproject/libquasar/libkaldi/src/nnet/nnet-activation.h", 358);
      v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "Unknown token ", 14);
      if (v28 >= 0)
      {
        v21 = &v26;
      }

      else
      {
        v21 = v26;
      }

      if (v28 >= 0)
      {
        v22 = HIBYTE(v28);
      }

      else
      {
        v22 = v27;
      }

      v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, v21, v22);
      v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, ", a typo in config?", 19);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, " (DropoutRetention)", 19);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v25);
    }

    v15 = v26;
  }

  else
  {
LABEL_18:
    if (HIBYTE(v28) != 12)
    {
      goto LABEL_35;
    }

    v15 = &v26;
  }

  v16 = *v15;
  v17 = *(v15 + 2);
  if (v16 != 0x6E6F706D6F432F3CLL || v17 != 1047817829)
  {
    goto LABEL_35;
  }

LABEL_28:
  if (*v6 <= 0.0 || *v6 > 1.0)
  {
    kaldi::KaldiAssertFailure_("InitData", "../subproject/libquasar/libkaldi/src/nnet/nnet-activation.h", &stru_158.segname[1], "dropout_retention_ > 0.0 && dropout_retention_ <= 1.0", v5);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(v26);
  }
}

void sub_DF070(_Unwind_Exception *a1)
{
  if (*(v1 - 65) < 0)
  {
    operator delete(*(v1 - 88));
  }

  _Unwind_Resume(a1);
}

void *kaldi::nnet1::Dropout::WriteData(uint64_t a1, void *a2, const char *a3, uint64_t a4, const char *a5)
{
  v5 = a3;
  kaldi::WriteToken(a2, a3, "<DropoutRetention>", a4, a5);
  v8 = *(a1 + 192);

  return kaldi::WriteBasicType<float>(a2, v5);
}

void kaldi::nnet1::Dropout::PropagateFnc(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4, const char *a5)
{
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(a3, a2, 111, a4, a5);
  kaldi::CuMatrix<float>::Resize(a1 + 144, a3[5], a3[4], 0, 0);
  kaldi::CuMatrixBase<float>::Set(a1 + 144, v7, v8, v9, v10, *(a1 + 192));
  kaldi::CuRand<float>::BinarizeProbs(a1 + 48, a1 + 144, a1 + 144);
  kaldi::CuMatrixBase<float>::MulElements(a3, a1 + 144, v11, v12, v13);
  v14 = 1.0 / *(a1 + 192);

  kaldi::CuMatrixBase<float>::Scale(a3, v14);
}

void kaldi::nnet1::Dropout::BackpropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(a5, a4, 111, a4, a5);
  kaldi::CuMatrixBase<float>::MulElements(a5, a1 + 144, v7, v8, v9);
  v10 = 1.0 / *(a1 + 192);

  kaldi::CuMatrixBase<float>::Scale(a5, v10);
}

void kaldi::nnet1::Dropout::ReadData(uint64_t a1, uint64_t *a2, int a3)
{
  if (kaldi::Peek(a2, a3) == 60)
  {
    kaldi::ExpectToken(a2, a3, "<DropoutRetention>");
    kaldi::ReadBasicType<float>(a2, a3, (a1 + 192), v7, v8);
  }

  v9 = *(a1 + 192);
  if (v9 <= 0.0 || v9 > 1.0)
  {
    kaldi::KaldiAssertFailure_("ReadData", "../subproject/libquasar/libkaldi/src/nnet/nnet-activation.h", &stru_158.segname[9], "dropout_retention_ > 0.0 && dropout_retention_ <= 1.0", v6);
  }
}

void kaldi::nnet1::MaxoutComponent::BackpropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  kaldi::CuMatrixBase<float>::MaxoutDerivative(a5, a2, a3, a4, a5);

  kaldi::CuMatrixBase<float>::MulRowsGroupMat(a5, a4, v7, v8, v9);
}

void kaldi::nnet1::PNormComponent::InitData(uint64_t a1, uint64_t *a2)
{
  kaldi::ExpectToken(a2, 0, "<P>");
  kaldi::ReadBasicType<float>(a2, 0, (a1 + 48), v4, v5);
  v7 = *(a1 + 8);
  v8 = *(a1 + 12);
  if (v7 < v8 || v8 <= 0)
  {
    kaldi::KaldiAssertFailure_("InitData", "../subproject/libquasar/libkaldi/src/nnet/nnet-activation.h", &stru_1A8.align + 3, "(input_dim_ >= output_dim_) && (output_dim_ > 0)", v6);
  }

  if (v7 % v8)
  {
    kaldi::KaldiAssertFailure_("InitData", "../subproject/libquasar/libkaldi/src/nnet/nnet-activation.h", &stru_1A8.reloff, "input_dim_ % output_dim_ == 0", v6);
  }
}

void *kaldi::nnet1::PNormComponent::WriteData(uint64_t a1, void *a2, const char *a3, uint64_t a4, const char *a5)
{
  v5 = a3;
  kaldi::WriteToken(a2, a3, "<P>", a4, a5);
  v8 = *(a1 + 48);

  return kaldi::WriteBasicType<float>(a2, v5);
}

void kaldi::nnet1::PNormComponent::BackpropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  kaldi::CuMatrixBase<float>::GroupPnormDeriv(a5, a2, a3, a4, a5, *(a1 + 48));

  kaldi::CuMatrixBase<float>::MulRowsGroupMat(a5, a4, v7, v8, v9);
}

void kaldi::nnet1::PNormComponent::ReadData(uint64_t a1, uint64_t *a2, int a3)
{
  kaldi::ExpectToken(a2, a3, "<P>");
  kaldi::ReadBasicType<float>(a2, a3, (a1 + 48), v6, v7);
  v9 = *(a1 + 8);
  v10 = *(a1 + 12);
  if (v9 < v10 || v10 <= 0)
  {
    kaldi::KaldiAssertFailure_("ReadData", "../subproject/libquasar/libkaldi/src/nnet/nnet-activation.h", &stru_1A8.nreloc + 2, "(input_dim_ >= output_dim_) && (output_dim_ > 0)", v8);
  }

  if (v9 % v10)
  {
    kaldi::KaldiAssertFailure_("ReadData", "../subproject/libquasar/libkaldi/src/nnet/nnet-activation.h", &stru_1A8.nreloc + 3, "input_dim_ % output_dim_ == 0", v8);
  }
}

uint64_t kaldi::nnet1::RectifiedLinearComponent::PropagateFnc(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4, const char *a5)
{
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(a3, a2, 111, a4, a5);

  return kaldi::CuMatrixBase<float>::ApplyFloor(a3, 0.0);
}

uint64_t kaldi::nnet1::RectifiedLinearComponent::PropagateFnc(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, const char *a5)
{
  kaldi::CuVectorBase<float>::CopyFromVec(a3, a2, a3, a4, a5);

  return kaldi::CuVectorBase<float>::ApplyFloor(a3, 0.0);
}

float kaldi::nnet1::ExponentialLinearComponent::InitData(uint64_t a1, uint64_t *a2)
{
  kaldi::ExpectToken(a2, 0, "<Alpha>");

  return kaldi::ReadBasicType<float>(a2, 0, (a1 + 48), v4, v5);
}

void *kaldi::nnet1::ExponentialLinearComponent::WriteData(uint64_t a1, void *a2, const char *a3, uint64_t a4, const char *a5)
{
  v5 = a3;
  kaldi::WriteToken(a2, a3, "<Alpha>", a4, a5);
  v8 = *(a1 + 48);

  return kaldi::WriteBasicType<float>(a2, v5);
}

uint64_t kaldi::nnet1::ExponentialLinearComponent::PropagateFnc(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  kaldi::CuMatrix<float>::CuMatrix(v17, a3[5], a3[4], 0, 0, 0);
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(v17, a2, 111, v6, v7);
  kaldi::CuMatrixBase<float>::ApplyCeiling(v17, 0.0);
  kaldi::CuMatrixBase<float>::ApplyExp(v17, v8, v9, v10, v11);
  kaldi::CuMatrixBase<float>::Add(v17, -1.0);
  kaldi::CuMatrixBase<float>::Scale(v17, *(a1 + 48));
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(a3, a2, 111, v12, v13);
  kaldi::CuMatrixBase<float>::ApplyFloor(a3, 0.0);
  kaldi::CuMatrixBase<float>::AddMat(a3, v17, 111, v14, v15, 1.0, 1.0);
  return kaldi::CuMatrix<float>::~CuMatrix(v17);
}

void *kaldi::nnet1::ExponentialLinearComponent::PropagateFnc(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, const char *a5)
{
  v8 = a3[4];
  v19[0] = off_277020;
  memset(&v19[1], 0, 24);
  kaldi::CuVector<float>::Resize(v19, v8, 0, a4, a5);
  kaldi::CuVectorBase<float>::CopyFromVec(v19, a2, v9, v10, v11);
  kaldi::CuVectorBase<float>::ApplyCeiling(v19, 0.0);
  kaldi::CuVectorBase<float>::ApplyExp(v19);
  kaldi::CuVectorBase<float>::Add(v19, -1.0);
  kaldi::CuVectorBase<float>::Scale(v19, *(a1 + 48));
  kaldi::CuVectorBase<float>::CopyFromVec(a3, a2, v12, v13, v14);
  kaldi::CuVectorBase<float>::ApplyFloor(a3, 0.0);
  kaldi::CuVectorBase<float>::AddVec(a3, v19, v15, v16, v17, 1.0, 1.0);
  return kaldi::CuVector<float>::~CuVector(v19);
}

uint64_t kaldi::nnet1::ExponentialLinearComponent::BackpropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  kaldi::CuMatrix<float>::CuMatrix(v28, a5[5], a5[4], 0, 0, 0);
  kaldi::CuMatrix<float>::CuMatrix(v27, a5[5], a5[4], 0, 0, 0);
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(v28, a2, 111, v9, v10);
  kaldi::CuMatrixBase<float>::ApplyCeiling(v28, 0.0);
  kaldi::CuMatrixBase<float>::ApplyExp(v28, v11, v12, v13, v14);
  kaldi::CuMatrixBase<float>::Add(v28, -1.0);
  kaldi::CuMatrixBase<float>::Scale(v28, *(a1 + 48));
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(v27, a2, 111, v15, v16);
  kaldi::CuMatrixBase<float>::ApplyHeaviside(v27);
  kaldi::CuMatrixBase<float>::Add(v27, -1.0);
  kaldi::CuMatrixBase<float>::Scale(v27, -*(a1 + 48));
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(a5, a2, 111, v17, v18);
  kaldi::CuMatrixBase<float>::ApplyHeaviside(a5);
  kaldi::CuMatrixBase<float>::AddMat(a5, v28, 111, v19, v20, 1.0, 1.0);
  kaldi::CuMatrixBase<float>::AddMat(a5, v27, 111, v21, v22, 1.0, 1.0);
  kaldi::CuMatrixBase<float>::MulElements(a5, a4, v23, v24, v25);
  kaldi::CuMatrix<float>::~CuMatrix(v27);
  return kaldi::CuMatrix<float>::~CuMatrix(v28);
}

void sub_DFB94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  kaldi::CuMatrix<float>::~CuMatrix(va);
  _Unwind_Resume(a1);
}

float kaldi::nnet1::ExponentialLinearComponent::ReadData(uint64_t a1, uint64_t *a2, int a3)
{
  kaldi::ExpectToken(a2, a3, "<Alpha>");

  return kaldi::ReadBasicType<float>(a2, a3, (a1 + 48), v6, v7);
}

uint64_t kaldi::nnet1::ScaledExponentialLinearComponent::PropagateFnc(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  kaldi::CuMatrix<float>::CuMatrix(v17, a3[5], a3[4], 0, 0, 0);
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(v17, a2, 111, v6, v7);
  kaldi::CuMatrixBase<float>::ApplyCeiling(v17, 0.0);
  kaldi::CuMatrixBase<float>::ApplyExp(v17, v8, v9, v10, v11);
  kaldi::CuMatrixBase<float>::Add(v17, -1.0);
  kaldi::CuMatrixBase<float>::Scale(v17, *(a1 + 48));
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(a3, a2, 111, v12, v13);
  kaldi::CuMatrixBase<float>::ApplyFloor(a3, 0.0);
  kaldi::CuMatrixBase<float>::AddMat(a3, v17, 111, v14, v15, 1.0, 1.0);
  kaldi::CuMatrixBase<float>::Scale(a3, *(a1 + 52));
  return kaldi::CuMatrix<float>::~CuMatrix(v17);
}

void *kaldi::nnet1::ScaledExponentialLinearComponent::PropagateFnc(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, const char *a5)
{
  v8 = a3[4];
  v19[0] = off_277020;
  memset(&v19[1], 0, 24);
  kaldi::CuVector<float>::Resize(v19, v8, 0, a4, a5);
  kaldi::CuVectorBase<float>::CopyFromVec(v19, a2, v9, v10, v11);
  kaldi::CuVectorBase<float>::ApplyCeiling(v19, 0.0);
  kaldi::CuVectorBase<float>::ApplyExp(v19);
  kaldi::CuVectorBase<float>::Add(v19, -1.0);
  kaldi::CuVectorBase<float>::Scale(v19, *(a1 + 48));
  kaldi::CuVectorBase<float>::CopyFromVec(a3, a2, v12, v13, v14);
  kaldi::CuVectorBase<float>::ApplyFloor(a3, 0.0);
  kaldi::CuVectorBase<float>::AddVec(a3, v19, v15, v16, v17, 1.0, 1.0);
  kaldi::CuVectorBase<float>::Scale(a3, *(a1 + 52));
  return kaldi::CuVector<float>::~CuVector(v19);
}

uint64_t kaldi::nnet1::ScaledExponentialLinearComponent::BackpropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  kaldi::CuMatrix<float>::CuMatrix(v28, a5[5], a5[4], 0, 0, 0);
  kaldi::CuMatrix<float>::CuMatrix(v27, a5[5], a5[4], 0, 0, 0);
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(v28, a2, 111, v9, v10);
  kaldi::CuMatrixBase<float>::ApplyCeiling(v28, 0.0);
  kaldi::CuMatrixBase<float>::ApplyExp(v28, v11, v12, v13, v14);
  kaldi::CuMatrixBase<float>::Add(v28, -1.0);
  kaldi::CuMatrixBase<float>::Scale(v28, *(a1 + 48));
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(v27, a2, 111, v15, v16);
  kaldi::CuMatrixBase<float>::ApplyHeaviside(v27);
  kaldi::CuMatrixBase<float>::Add(v27, -1.0);
  kaldi::CuMatrixBase<float>::Scale(v27, -*(a1 + 48));
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(a5, a2, 111, v17, v18);
  kaldi::CuMatrixBase<float>::ApplyHeaviside(a5);
  kaldi::CuMatrixBase<float>::AddMat(a5, v28, 111, v19, v20, 1.0, 1.0);
  kaldi::CuMatrixBase<float>::AddMat(a5, v27, 111, v21, v22, 1.0, 1.0);
  kaldi::CuMatrixBase<float>::Scale(a5, *(a1 + 52));
  kaldi::CuMatrixBase<float>::MulElements(a5, a4, v23, v24, v25);
  kaldi::CuMatrix<float>::~CuMatrix(v27);
  return kaldi::CuMatrix<float>::~CuMatrix(v28);
}

void sub_E0014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  kaldi::CuMatrix<float>::~CuMatrix(va);
  _Unwind_Resume(a1);
}

void sub_E010C()
{
  kaldi::Matrix<float>::~Matrix(v2);
  *v0 = v1;
  v3 = v0[3];
  if (v3)
  {
    v0[4] = v3;
    operator delete(v3);
  }

  operator delete();
}

uint64_t kaldi::nnet1::KlHmm::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a1 + 108))
  {
    kaldi::Matrix<float>::Matrix(v52, *(a2 + 20), *(a2 + 16), 0, 0);
    kaldi::CuMatrixBase<float>::CopyToMat<float>(a2, v52, 111, v6, v7);
    kaldi::MatrixBase<float>::Row(v52, 0, v8, v51);
    v10 = kaldi::VectorBase<float>::Sum(v51);
    if (*&v10 != 1.0 && (COERCE_INT(fabs(*&v10 + -1.0)) > 2139095039 || fabsf(*&v10 + -1.0) > ((fabsf(*&v10) + 1.0) * 0.001)))
    {
      kaldi::KaldiAssertFailure_("PropagateFnc", "../subproject/libquasar/libkaldi/src/nnet/nnet-kl-hmm.h", &stru_20.segname[14], "ApproxEqual(post_sum, 1.0)", v9);
    }

    kaldi::Matrix<float>::Matrix<double>(v51, a1 + 48, 111);
    v11 = kaldi::ContextDependency::CentralPosition((a1 + 48));
    memset(v53, 0, 24);
    kaldi::Vector<float>::Resize(v53, v11, 0, v12, v13);
    kaldi::VectorBase<float>::AddColSumMat(v53, v51, 1.0, 1.0);
    kaldi::VectorBase<float>::ApplyFloor(v53, 1.0e-20);
    kaldi::VectorBase<float>::InvertElements(v53);
    kaldi::MatrixBase<float>::MulRowsVec(v51, v53, v14, v15, v16);
    kaldi::MatrixBase<float>::ApplyFloor(v51, 1.0e-20);
    kaldi::MatrixBase<float>::InvertElements(v51, v17, v18, v19, v20);
    kaldi::MatrixBase<float>::ApplyLog(v51, v21, v22, v23, v24);
    v25 = kaldi::ContextDependency::CentralPosition((a1 + 48));
    v26 = kaldi::ContextDependency::ContextWidth((a1 + 48));
    kaldi::CuMatrix<float>::Resize(a1 + 88, v25, v26, 0, 0);
    kaldi::CuMatrixBase<float>::CopyFromMat(a1 + 88, v51, 111, v27, v28);
    kaldi::Vector<float>::Destroy(v53);
    kaldi::Matrix<float>::~Matrix(v51);
    kaldi::Matrix<float>::~Matrix(v52);
  }

  kaldi::Matrix<float>::Matrix(v53, *(a2 + 20), *(a2 + 16), 0, 0);
  kaldi::CuMatrixBase<float>::CopyToMat<float>(a2, v53, 111, v29, v30);
  kaldi::MatrixBase<float>::ApplyFloor(v53, 1.0e-20);
  kaldi::MatrixBase<float>::ApplyLog(v53, v31, v32, v33, v34);
  kaldi::CuMatrix<float>::CuMatrix(v52, *(a2 + 20), *(a2 + 16), 0, 0, 0);
  kaldi::CuMatrixBase<float>::CopyFromMat(v52, v53, 111, v35, v36);
  kaldi::CuMatrix<float>::CuMatrix(v51, a2, 111);
  kaldi::CuMatrixBase<float>::MulElements(v51, v52, v37, v38, v39);
  v40 = *(a2 + 20);
  v50[0] = off_277020;
  memset(&v50[1], 0, 24);
  kaldi::CuVector<float>::Resize(v50, v40, 0, v41, v42);
  kaldi::CuVectorBase<float>::AddColSumMat(v50, v51, 1.0, 1.0, v43, v44, v45);
  kaldi::CuMatrixBase<float>::AddMatMat(a3, a2, CblasNoTrans, a1 + 88, &stru_68.sectname[8], 1.0, 0.0);
  kaldi::CuMatrixBase<float>::AddVecToCols(a3, v50, v46, v47, v48, 1.0, 1.0);
  kaldi::CuMatrixBase<float>::Scale(a3, -1.0);
  kaldi::CuVector<float>::~CuVector(v50);
  kaldi::CuMatrix<float>::~CuMatrix(v51);
  kaldi::CuMatrix<float>::~CuMatrix(v52);
  return kaldi::Matrix<float>::~Matrix(v53);
}

void sub_E0458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  kaldi::Matrix<float>::~Matrix(va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::KlHmm::BackpropagateFnc()
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v0, "BackpropagateFnc", "../subproject/libquasar/libkaldi/src/nnet/nnet-kl-hmm.h", 106);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Unimplemented");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

uint64_t kaldi::nnet1::KlHmm::ReadData(_DWORD *a1, uint64_t *a2, uint64_t a3)
{
  kaldi::Matrix<double>::Read((a1 + 12), a2, a3, 0, 0);
  if (kaldi::ContextDependency::CentralPosition((a1 + 12)) != a1[3])
  {
    kaldi::KaldiAssertFailure_("ReadData", "../subproject/libquasar/libkaldi/src/nnet/nnet-kl-hmm.h", &stru_68.sectname[8], "kl_stats_.NumRows() == output_dim_", v4);
  }

  result = kaldi::ContextDependency::ContextWidth((a1 + 12));
  if (result != a1[2])
  {
    kaldi::KaldiAssertFailure_("ReadData", "../subproject/libquasar/libkaldi/src/nnet/nnet-kl-hmm.h", &stru_68.sectname[9], "kl_stats_.NumCols() == input_dim_", v6);
  }

  return result;
}

void sub_E0694()
{
  *v0 = v1;
  v2 = v0[3];
  if (v2)
  {
    v0[4] = v2;
    operator delete(v2);
  }

  operator delete();
}

uint64_t kaldi::nnet1::Splice::Info@<X0>(kaldi::nnet1::Splice *this@<X0>, std::string *a2@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v10);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "\n  frame_offsets ", 17);
  kaldi::operator<<<int>(v4, this + 12);
  std::stringbuf::str();
  v5 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  v6 = v5;
  v7 = a2 + v5;
  if (v6 >= 0)
  {
    v8 = a2;
  }

  else
  {
    v7 = a2->__r_.__value_.__r.__words[0] + a2->__r_.__value_.__l.__size_;
    v8 = a2->__r_.__value_.__r.__words[0];
  }

  std::string::erase(a2, v7 + ~v8, 1uLL);
  if (v13 < 0)
  {
    operator delete(v12[7].__locale_);
  }

  std::locale::~locale(v12);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_E0864(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::Splice::InitData(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  memset(&v50, 0, sizeof(v50));
  v47 = 0;
  v48 = 0;
  v49 = 0;
  v7 = a2 + 4;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  while (1)
  {
    if ((*(v7 + *(*a2 - 24)) & 2) != 0)
    {
      goto LABEL_54;
    }

    kaldi::ReadToken(a2, 0, &v44, a4, a5);
    if (SHIBYTE(v46) < 0)
    {
      break;
    }

    if (HIBYTE(v46) != 12)
    {
      if (HIBYTE(v46) == 13)
      {
        v8 = &v44;
        goto LABEL_14;
      }

      goto LABEL_83;
    }

    if (v44 != 0x636556646165523CLL || v45 != 1047687028)
    {
      goto LABEL_46;
    }

LABEL_42:
    kaldi::ReadIntegerVector<int>(a2, 0, &v50, 0, 0, 0, 0);
LABEL_43:
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }

  if (v45 == 12 && *v44 == 0x636556646165523CLL && v44[2] == 1047687028)
  {
    goto LABEL_42;
  }

  if (v45 != 13)
  {
    goto LABEL_47;
  }

  v8 = v44;
LABEL_14:
  v10 = *v8;
  v11 = *(v8 + 5);
  if (v10 == 0x6556646C6975423CLL && v11 == 0x3E726F7463655664)
  {
    while (1)
    {
      if ((*(v7 + *(*a2 - 24)) & 2) != 0)
      {
        goto LABEL_43;
      }

      __p = 0;
      v41 = 0;
      v42 = 0;
      kaldi::ReadToken(a2, 0, &__p, a4, a5);
      if (SHIBYTE(v42) < 0)
      {
        if (v41 != 14)
        {
          goto LABEL_29;
        }

        p_p = __p;
      }

      else
      {
        if (SHIBYTE(v42) != 14)
        {
          goto LABEL_29;
        }

        p_p = &__p;
      }

      v14 = *p_p;
      v15 = *(p_p + 6);
      if (v14 == 0x56646C6975422F3CLL && v15 == 0x3E726F7463655664)
      {
        v17 = 0;
        if (v42 < 0)
        {
          goto LABEL_35;
        }

LABEL_32:
        if ((v17 & 1) == 0)
        {
          goto LABEL_43;
        }
      }

      else
      {
LABEL_29:
        memset(&v43, 0, sizeof(v43));
        kaldi::SplitStringToIntegers<int>(&__p, ":", 0, &v43, a5);
        std::vector<std::vector<int>>::push_back[abi:ne200100](&v47, &v43);
        if (v43.__begin_)
        {
          v43.__end_ = v43.__begin_;
          operator delete(v43.__begin_);
        }

        v17 = 1;
        if ((v42 & 0x8000000000000000) == 0)
        {
          goto LABEL_32;
        }

LABEL_35:
        operator delete(__p);
        if ((v17 & 1) == 0)
        {
          goto LABEL_43;
        }
      }
    }
  }

  if ((v46 & 0x8000000000000000) == 0)
  {
    if (HIBYTE(v46) == 12)
    {
LABEL_46:
      v19 = &v44;
      goto LABEL_49;
    }

    goto LABEL_83;
  }

LABEL_47:
  if (v45 != 12)
  {
    goto LABEL_83;
  }

  v19 = v44;
LABEL_49:
  v20 = *v19;
  v21 = *(v19 + 2);
  if (v20 != 0x6E6F706D6F432F3CLL || v21 != 1047817829)
  {
LABEL_83:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(&__p, "InitData", "../subproject/libquasar/libkaldi/src/nnet/nnet-various.h", 293);
    v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Unknown token ", 14);
    if (v46 >= 0)
    {
      v36 = &v44;
    }

    else
    {
      v36 = v44;
    }

    if (v46 >= 0)
    {
      v37 = HIBYTE(v46);
    }

    else
    {
      v37 = v45;
    }

    v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, v36, v37);
    v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, ", a typo in config?", 19);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, " (ReadVector|BuildVector)", 25);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
  }

LABEL_54:
  v23 = v47;
  if (v48 != v47)
  {
    v24 = 0;
    do
    {
      v25 = v23 + 24 * v24;
      v26 = *v25;
      v27 = (*(v25 + 8) - *v25) >> 2;
      switch(v27)
      {
        case 3:
          v30 = *v26;
          v31 = v26[1];
          v32 = v26[2];
          v33 = *v26 > v32 || v31 <= 0;
          if (v33 && (v30 < v32 || (v31 & 0x80000000) == 0))
          {
            kaldi::KaldiAssertFailure_("InitData", "../subproject/libquasar/libkaldi/src/nnet/nnet-various.h", &stru_108.offset + 3, "(min <= max && step > 0) || (min >= max && step < 0)", a5);
          }

          while (1)
          {
            LODWORD(__p) = v30;
            if (v30 > v32)
            {
              break;
            }

            std::vector<int>::push_back[abi:ne200100](&v50.__begin_, &__p);
            v30 = __p + v31;
          }

          break;
        case 2:
          v28 = v26[1];
          if (*v26 > v28)
          {
            kaldi::KaldiAssertFailure_("InitData", "../subproject/libquasar/libkaldi/src/nnet/nnet-various.h", &stru_108.size + 4, "min <= max", a5);
          }

          LODWORD(__p) = *v26;
          do
          {
            std::vector<int>::push_back[abi:ne200100](&v50.__begin_, &__p);
            v29 = __p;
            LODWORD(__p) = __p + 1;
          }

          while (v29 < v28);
          break;
        case 1:
          std::vector<int>::push_back[abi:ne200100](&v50.__begin_, v26);
          break;
        default:
          kaldi::KaldiErrorMessage::KaldiErrorMessage(&__p, "InitData", "../subproject/libquasar/libkaldi/src/nnet/nnet-various.h", 322);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Error parsing <BuildVector>", 27);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
      }

      ++v24;
      v23 = v47;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v48 - v47) >> 3) > v24);
  }

  kaldi::CuArray<int>::Resize(a1 + 48, (v50.__end_ - v50.__begin_) >> 2, 1u, a4, a5);
  memcpy(*(a1 + 56), v50.__begin_, v50.__end_ - v50.__begin_);
  if (*(a1 + 8) * *(a1 + 48) != *(a1 + 12))
  {
    kaldi::KaldiAssertFailure_("InitData", "../subproject/libquasar/libkaldi/src/nnet/nnet-various.h", &stru_108.flags + 3, "frame_offsets_.Dim()*InputDim() == OutputDim()", v34);
  }

  if (SHIBYTE(v46) < 0)
  {
    operator delete(v44);
  }

  __p = &v47;
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (v50.__begin_)
  {
    v50.__end_ = v50.__begin_;
    operator delete(v50.__begin_);
  }
}

void sub_E0DE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 - 137) < 0)
  {
    operator delete(*(v15 - 160));
  }

  __p = (v15 - 136);
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&__p);
  v17 = *(v15 - 112);
  if (v17)
  {
    *(v15 - 104) = v17;
    operator delete(v17);
  }

  _Unwind_Resume(a1);
}

void sub_E0DF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  if (*(v10 - 137) < 0)
  {
    operator delete(*(v10 - 160));
  }

  a10 = (v10 - 136);
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&a10);
  v12 = *(v10 - 112);
  if (v12)
  {
    *(v10 - 104) = v12;
    operator delete(v12);
  }

  _Unwind_Resume(a1);
}

void sub_E0DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v16 = *(v15 - 184);
  if (v16)
  {
    *(v15 - 176) = v16;
    operator delete(v16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  JUMPOUT(0xE0E1CLL);
}

void kaldi::nnet1::Splice::WriteData(uint64_t a1, void *a2, int a3)
{
  v5 = (a1 + 48);
  std::vector<int>::vector[abi:ne200100](&__p, *(a1 + 48));
  kaldi::CuArray<int>::CopyToVec(v5, &__p);
  kaldi::WriteIntegerByteArray<int>(a2, a3, 0, __p.__end_ - __p.__begin_, __p.__begin_);
  if (__p.__begin_)
  {
    __p.__end_ = __p.__begin_;
    operator delete(__p.__begin_);
  }
}

void sub_E0ED0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::Splice::BackpropagateFnc()
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v1, "BackpropagateFnc", "../subproject/libquasar/libkaldi/src/nnet/nnet-various.h", 365);
  v0 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v1, "BackpropagateFnc", 16);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Not implemented!");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v1);
}

void kaldi::nnet1::Splice::ReadData(uint64_t a1, void *a2, int a3)
{
  memset(&__p, 0, sizeof(__p));
  kaldi::ReadIntegerVector<int>(a2, a3, &__p, 0, 0, 0, 0);
  kaldi::CuArray<int>::Resize(a1 + 48, (__p.__end_ - __p.__begin_) >> 2, 1u, v4, v5);
  memcpy(*(a1 + 56), __p.__begin_, __p.__end_ - __p.__begin_);
  if (*(a1 + 8) * *(a1 + 48) != *(a1 + 12))
  {
    kaldi::KaldiAssertFailure_("ReadData", "../subproject/libquasar/libkaldi/src/nnet/nnet-various.h", &stru_108.reserved2 + 3, "frame_offsets_.Dim() * InputDim() == OutputDim()", v6);
  }

  if (__p.__begin_)
  {
    __p.__end_ = __p.__begin_;
    operator delete(__p.__begin_);
  }
}

void sub_E1028(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_E10FC()
{
  *v0 = v1;
  v2 = v0[3];
  if (v2)
  {
    v0[4] = v2;
    operator delete(v2);
  }

  operator delete();
}

void kaldi::nnet1::CopyComponent::InitData(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  memset(&v56, 0, sizeof(v56));
  v53 = 0;
  v54 = 0;
  v55 = 0;
  v7 = a2 + 4;
  v51 = 0uLL;
  v52 = 0;
  while (1)
  {
    if ((*(v7 + *(*a2 - 24)) & 2) != 0)
    {
      goto LABEL_53;
    }

    kaldi::ReadToken(a2, 0, &v51, a4, a5);
    if (SHIBYTE(v52) < 0)
    {
      if (*(&v51 + 1) == 12)
      {
        v17 = v51;
        if (*v51 != 0x636556646165523CLL || *(v51 + 8) != 1047687028)
        {
          goto LABEL_48;
        }

        goto LABEL_46;
      }

      if (*(&v51 + 1) != 13)
      {
        goto LABEL_93;
      }

      if (*v51 != 0x6556646C6975423CLL || *(v51 + 5) != 0x3E726F7463655664)
      {
        goto LABEL_93;
      }

      while (1)
      {
LABEL_18:
        if ((*(v7 + *(*a2 - 24)) & 2) != 0)
        {
          goto LABEL_47;
        }

        __p = 0;
        v48 = 0;
        v49 = 0;
        kaldi::ReadToken(a2, 0, &__p, a4, a5);
        if (SHIBYTE(v49) < 0)
        {
          if (v48 != 14)
          {
            goto LABEL_28;
          }

          p_p = __p;
        }

        else
        {
          if (SHIBYTE(v49) != 14)
          {
            goto LABEL_28;
          }

          p_p = &__p;
        }

        v11 = *p_p;
        v12 = *(p_p + 6);
        if (v11 == 0x56646C6975422F3CLL && v12 == 0x3E726F7463655664)
        {
          v14 = 0;
          if (v49 < 0)
          {
            goto LABEL_34;
          }

LABEL_31:
          if ((v14 & 1) == 0)
          {
            goto LABEL_47;
          }
        }

        else
        {
LABEL_28:
          memset(&v50, 0, sizeof(v50));
          kaldi::SplitStringToIntegers<int>(&__p, ":", 0, &v50, a5);
          std::vector<std::vector<int>>::push_back[abi:ne200100](&v53, &v50);
          if (v50.__begin_)
          {
            v50.__end_ = v50.__begin_;
            operator delete(v50.__begin_);
          }

          v14 = 1;
          if ((v49 & 0x8000000000000000) == 0)
          {
            goto LABEL_31;
          }

LABEL_34:
          operator delete(__p);
          if ((v14 & 1) == 0)
          {
            goto LABEL_47;
          }
        }
      }
    }

    if (HIBYTE(v52) != 12)
    {
      if (HIBYTE(v52) == 13 && v51 == 0x6556646C6975423CLL && *(&v51 + 5) == 0x3E726F7463655664)
      {
        goto LABEL_18;
      }

      goto LABEL_93;
    }

    if (v51 != 0x636556646165523CLL || DWORD2(v51) != 1047687028)
    {
      break;
    }

LABEL_46:
    kaldi::ReadIntegerVector<int>(a2, 0, &v56, 0, 0, 0, 0);
LABEL_47:
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }

  v17 = &v51;
LABEL_48:
  v18 = *v17;
  v19 = *(v17 + 2);
  if (v18 != 0x6E6F706D6F432F3CLL || v19 != 1047817829)
  {
LABEL_93:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(&__p, "InitData", "../subproject/libquasar/libkaldi/src/nnet/nnet-various.h", 411);
    v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Unknown token ", 14);
    if (v52 >= 0)
    {
      v42 = &v51;
    }

    else
    {
      v42 = v51;
    }

    if (v52 >= 0)
    {
      v43 = HIBYTE(v52);
    }

    else
    {
      v43 = *(&v51 + 1);
    }

    v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, v42, v43);
    v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, ", a typo in config?", 19);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, " (ReadVector|BuildVector)", 25);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
  }

LABEL_53:
  v21 = v53;
  if (v54 != v53)
  {
    v22 = 0;
    do
    {
      v23 = v21 + 24 * v22;
      v24 = *v23;
      v25 = (*(v23 + 8) - *v23) >> 2;
      switch(v25)
      {
        case 3:
          v28 = *v24;
          v29 = v24[1];
          v30 = v24[2];
          v31 = *v24 > v30 || v29 <= 0;
          if (v31 && (v28 < v30 || (v29 & 0x80000000) == 0))
          {
            kaldi::KaldiAssertFailure_("InitData", "../subproject/libquasar/libkaldi/src/nnet/nnet-various.h", &stru_1A8.sectname[9], "(min <= max && step > 0) || (min >= max && step < 0)", a5);
          }

          while (1)
          {
            LODWORD(__p) = v28;
            if (v28 > v30)
            {
              break;
            }

            std::vector<int>::push_back[abi:ne200100](&v56.__begin_, &__p);
            v28 = __p + v29;
          }

          break;
        case 2:
          v26 = v24[1];
          if (*v24 > v26)
          {
            kaldi::KaldiAssertFailure_("InitData", "../subproject/libquasar/libkaldi/src/nnet/nnet-various.h", &stru_1A8.sectname[2], "min <= max", a5);
          }

          LODWORD(__p) = *v24;
          do
          {
            std::vector<int>::push_back[abi:ne200100](&v56.__begin_, &__p);
            v27 = __p;
            LODWORD(__p) = __p + 1;
          }

          while (v27 < v26);
          break;
        case 1:
          std::vector<int>::push_back[abi:ne200100](&v56.__begin_, v24);
          break;
        default:
          kaldi::KaldiErrorMessage::KaldiErrorMessage(&__p, "InitData", "../subproject/libquasar/libkaldi/src/nnet/nnet-various.h", 440);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Error parsing <BuildVector>", 27);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
      }

      ++v22;
      v21 = v53;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v54 - v53) >> 3) > v22);
  }

  begin = v56.__begin_;
  end = v56.__end_;
  if (v56.__begin_ == v56.__end_)
  {
    end = v56.__begin_;
  }

  else
  {
    v34 = v56.__begin_;
    do
    {
      --*v34++;
    }

    while (v34 != end);
  }

  kaldi::CuArray<int>::Resize(a1 + 48, (end - begin) >> 2, 1u, a4, a5);
  memcpy(*(a1 + 56), v56.__begin_, v56.__end_ - v56.__begin_);
  v36 = v56.__begin_;
  if (v56.__end_ != v56.__begin_)
  {
    if ((v56.__end_ - v56.__begin_) <= 1)
    {
      v37 = 1;
    }

    else
    {
      v37 = v56.__end_ - v56.__begin_;
    }

    v38 = "copy_from_indices[i] >= 0";
    while (1)
    {
      v40 = *v36++;
      v39 = v40;
      if (v40 < 0)
      {
        break;
      }

      if (v39 >= *(a1 + 8))
      {
        v46 = (&stru_1A8 + 30);
        v38 = "copy_from_indices[i] < InputDim()";
        goto LABEL_102;
      }

      if (!--v37)
      {
        goto LABEL_87;
      }
    }

    v46 = &stru_1A8.segname[13];
LABEL_102:
    kaldi::KaldiAssertFailure_("InitData", "../subproject/libquasar/libkaldi/src/nnet/nnet-various.h", v46, v38, v35);
  }

LABEL_87:
  if (*(a1 + 48) != *(a1 + 12))
  {
    kaldi::KaldiAssertFailure_("InitData", "../subproject/libquasar/libkaldi/src/nnet/nnet-various.h", &stru_1A8.addr + 1, "copy_from_indices_.Dim() == OutputDim()", v35);
  }

  if (SHIBYTE(v52) < 0)
  {
    operator delete(v51);
  }

  __p = &v53;
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (v56.__begin_)
  {
    v56.__end_ = v56.__begin_;
    operator delete(v56.__begin_);
  }
}

void sub_E1718(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 - 137) < 0)
  {
    operator delete(*(v15 - 160));
  }

  __p = (v15 - 136);
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&__p);
  v17 = *(v15 - 112);
  if (v17)
  {
    *(v15 - 104) = v17;
    operator delete(v17);
  }

  _Unwind_Resume(a1);
}

void sub_E1720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  if (*(v10 - 137) < 0)
  {
    operator delete(*(v10 - 160));
  }

  a10 = (v10 - 136);
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&a10);
  v12 = *(v10 - 112);
  if (v12)
  {
    *(v10 - 104) = v12;
    operator delete(v12);
  }

  _Unwind_Resume(a1);
}

void sub_E1728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v16 = *(v15 - 184);
  if (v16)
  {
    *(v15 - 176) = v16;
    operator delete(v16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  JUMPOUT(0xE174CLL);
}

void kaldi::nnet1::CopyComponent::WriteData(uint64_t a1, void *a2, int a3)
{
  v5 = (a1 + 48);
  std::vector<int>::vector[abi:ne200100](&__p, *(a1 + 48));
  kaldi::CuArray<int>::CopyToVec(v5, &__p);
  begin = __p.__begin_;
  end = __p.__end_;
  v8 = __p.__begin_;
  if (__p.__begin_ != __p.__end_)
  {
    v9 = __p.__begin_;
    do
    {
      ++*v9++;
    }

    while (v9 != end);
    v8 = end;
  }

  kaldi::WriteIntegerByteArray<int>(a2, a3, 0, v8 - begin, begin);
  if (__p.__begin_)
  {
    __p.__end_ = __p.__begin_;
    operator delete(__p.__begin_);
  }
}

void sub_E1828(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::CopyComponent::BackpropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((kaldi::nnet1::CopyComponent::BackpropagateFnc(kaldi::CuMatrixBase<float> const&,kaldi::CuMatrixBase<float> const&,kaldi::CuMatrixBase<float> const&,kaldi::CuMatrixBase<float>*,int)::warning_displayed & 1) == 0)
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v7, "BackpropagateFnc", "../subproject/libquasar/libkaldi/src/nnet/nnet-various.h", 503);
      v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "BackpropagateFnc", 16);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Not implemented!", 16);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(v7);
    }

    kaldi::nnet1::CopyComponent::BackpropagateFnc(kaldi::CuMatrixBase<float> const&,kaldi::CuMatrixBase<float> const&,kaldi::CuMatrixBase<float> const&,kaldi::CuMatrixBase<float>*,int)::warning_displayed = 1;
  }

  kaldi::CuMatrixBase<float>::SetZero(a5);
}

void kaldi::nnet1::CopyComponent::ReadData(uint64_t a1, void *a2, int a3)
{
  memset(&__p, 0, sizeof(__p));
  kaldi::ReadIntegerVector<int>(a2, a3, &__p, 0, 0, 0, 0);
  begin = __p.__begin_;
  end = __p.__end_;
  if (__p.__begin_ == __p.__end_)
  {
    end = __p.__begin_;
  }

  else
  {
    v8 = __p.__begin_;
    do
    {
      --*v8++;
    }

    while (v8 != end);
  }

  kaldi::CuArray<int>::Resize(a1 + 48, (end - begin) >> 2, 1u, v4, v5);
  memcpy(*(a1 + 56), __p.__begin_, __p.__end_ - __p.__begin_);
  if (*(a1 + 48) != *(a1 + 12))
  {
    kaldi::KaldiAssertFailure_("ReadData", "../subproject/libquasar/libkaldi/src/nnet/nnet-various.h", &stru_1A8.size + 4, "copy_from_indices_.Dim() == OutputDim()", v9);
  }

  if (__p.__begin_)
  {
    __p.__end_ = __p.__begin_;
    operator delete(__p.__begin_);
  }
}

void sub_E1A04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *kaldi::nnet1::IdentityComponent::InitData(uint64_t a1, void *a2)
{
  result = std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  if ((*(a2 + *(*a2 - 24) + 32) & 2) == 0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v4, "InitData", "../subproject/libquasar/libkaldi/src/nnet/nnet-various.h", 537);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "Unity component doesn't expect any tokens");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  return result;
}

void kaldi::nnet1::DuplicateComponent::InitData(_DWORD *a1, uint64_t *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  a1[14] = 1;
  v7 = a1 + 14;
  v35 = 0uLL;
  v36 = 0;
  v8 = a2 + 4;
  v9 = a1 + 13;
  while (1)
  {
    if ((*(v8 + *(*a2 - 24)) & 2) != 0)
    {
      goto LABEL_48;
    }

    kaldi::ReadToken(a2, 0, &v35, a4, a5);
    if (SHIBYTE(v36) < 0)
    {
      break;
    }

    if (HIBYTE(v36) != 15)
    {
      if (HIBYTE(v36) != 16)
      {
        goto LABEL_38;
      }

      if (v35 != 0x6163696C7075443CLL || *(&v35 + 1) != 0x3E74726174536574)
      {
        goto LABEL_55;
      }

LABEL_11:
      LODWORD(v34[0]) = 0;
      kaldi::ReadBasicType<int>(a2, 0, v34, v10, v11);
      a1[12] = v34[0];
      goto LABEL_36;
    }

    v18 = v35 == 0x6163696C7075443CLL && *(&v35 + 7) == 0x3E657A6953657461;
    v15 = v9;
    if (!v18)
    {
      v17 = &v35;
      goto LABEL_30;
    }

LABEL_35:
    kaldi::ReadBasicType<int>(a2, 0, v15, v10, v11);
LABEL_36:
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }

  if (*(&v35 + 1) == 15)
  {
    v14 = *v35 == 0x6163696C7075443CLL && *(v35 + 7) == 0x3E657A6953657461;
    v15 = v9;
    if (v14)
    {
      goto LABEL_35;
    }
  }

  else if (*(&v35 + 1) == 16 && *v35 == 0x6163696C7075443CLL && *(v35 + 8) == 0x3E74726174536574)
  {
    goto LABEL_11;
  }

  v16 = *(&v35 + 1);
  if (*(&v35 + 1) != 15)
  {
    goto LABEL_41;
  }

  v17 = v35;
LABEL_30:
  v19 = *v17;
  v20 = *(v17 + 7);
  v21 = v19 == 0x6C7075446D754E3CLL && v20 == 0x3E7365746163696CLL;
  v15 = v7;
  if (v21)
  {
    goto LABEL_35;
  }

  if ((v36 & 0x8000000000000000) == 0)
  {
LABEL_38:
    if (HIBYTE(v36) == 12)
    {
      v22 = &v35;
      goto LABEL_43;
    }

    goto LABEL_55;
  }

  v16 = *(&v35 + 1);
LABEL_41:
  if (v16 != 12)
  {
    goto LABEL_55;
  }

  v22 = v35;
LABEL_43:
  v23 = *v22;
  v24 = *(v22 + 2);
  if (v23 != 0x6E6F706D6F432F3CLL || v24 != 1047817829)
  {
LABEL_55:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v34, "InitData", "../subproject/libquasar/libkaldi/src/nnet/nnet-various.h", 609);
    v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "Unknown token ", 14);
    if (v36 >= 0)
    {
      v30 = &v35;
    }

    else
    {
      v30 = v35;
    }

    if (v36 >= 0)
    {
      v31 = HIBYTE(v36);
    }

    else
    {
      v31 = *(&v35 + 1);
    }

    v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, v30, v31);
    v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, ", a typo in config?", 19);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, " (DuplicateStart|DuplicateSize|NumDuplicates)", 45);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v34);
  }

LABEL_48:
  v26 = a1[13];
  v27 = a1[2];
  if (v27 + a1[14] * v26 != a1[3])
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v34, "InitData", "../subproject/libquasar/libkaldi/src/nnet/nnet-various.h", 616);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "Requested duplication doesn't match the output and input sizes", 62);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v34);
  }

  if (v26 < 0 || (v28 = a1[12], v28 < 0) || v28 + v26 > v27)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v34, "InitData", "../subproject/libquasar/libkaldi/src/nnet/nnet-various.h", 620);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "Duplication parameters out of range", 35);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v34);
  }

  if (SHIBYTE(v36) < 0)
  {
    operator delete(v35);
  }
}

void sub_E1FE8(_Unwind_Exception *exception_object)
{
  if (*(v1 - 89) < 0)
  {
    operator delete(*(v1 - 112));
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::nnet1::DuplicateComponent::WriteData(unsigned int *a1, void *a2, int a3)
{
  v6 = a1[12];
  kaldi::WriteBasicType<int>(a2, a3);
  v7 = a1[13];
  kaldi::WriteBasicType<int>(a2, a3);
  v8 = a1[14];

  return kaldi::WriteBasicType<int>(a2, a3);
}

uint64_t kaldi::nnet1::DuplicateComponent::PropagateFnc(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v20, a3, 0, *(a3 + 20), 0, a1[2]);
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v20, a2, 111, v6, v7);
  v8 = a1[13];
  if (v8 >= 1)
  {
    kaldi::CuSubMatrix<float>::CuSubMatrix(&v17, a2, 0, *(a2 + 20), a1[12], v8);
    if (a1[14] >= 1)
    {
      v9 = 0;
      v10 = a1[2];
      do
      {
        kaldi::CuSubMatrix<float>::CuSubMatrix(&v14, a3, 0, *(a3 + 20), v10, a1[13]);
        kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v14, &v17, 111, v11, v12);
        v10 = (a1[13] + v10);
        v14 = off_276F40;
        v15 = 0u;
        v16 = 0u;
        fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v14);
        ++v9;
      }

      while (v9 < a1[14]);
    }

    v17 = off_276F40;
    v18 = 0u;
    v19 = 0u;
    fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v17);
  }

  v20 = off_276F40;
  v21 = 0u;
  v22 = 0u;
  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v20);
}

void sub_E21F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void (**a20)(), __int128 a21, __int128 a22)
{
  a20 = off_276F40;
  a21 = 0u;
  a22 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&a20);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::DuplicateComponent::BackpropagateFnc(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v19, a4, 0, *(a4 + 20), 0, a1[2]);
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(a5, &v19, 111, v8, v9);
  v19 = off_276F40;
  v20 = 0u;
  v21 = 0u;
  result = fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v19);
  v11 = a1[13];
  if (v11 >= 1)
  {
    kaldi::CuSubMatrix<float>::CuSubMatrix(&v19, a5, 0, *(a5 + 20), a1[12], v11);
    if (a1[14] >= 1)
    {
      v12 = 0;
      v13 = a1[2];
      do
      {
        kaldi::CuSubMatrix<float>::CuSubMatrix(&v16, a4, 0, *(a4 + 20), v13, a1[13]);
        kaldi::CuMatrixBase<float>::AddMat(&v19, &v16, 111, v14, v15, 1.0, 1.0);
        v13 = (a1[13] + v13);
        v16 = off_276F40;
        v17 = 0u;
        v18 = 0u;
        fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v16);
        ++v12;
      }

      while (v12 < a1[14]);
    }

    v19 = off_276F40;
    v20 = 0u;
    v21 = 0u;
    return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v19);
  }

  return result;
}

void sub_E242C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void (**a14)(), __int128 a15, __int128 a16)
{
  a14 = off_276F40;
  a15 = 0u;
  a16 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&a14);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::DuplicateComponent::ReadData(_DWORD *a1, void *a2, int a3, uint64_t a4, const char *a5)
{
  v13 = 0;
  kaldi::ReadBasicType<int>(a2, a3, &v13, a4, a5);
  a1[12] = v13;
  kaldi::ReadBasicType<int>(a2, a3, &v13, v8, v9);
  a1[13] = v13;
  result = kaldi::ReadBasicType<int>(a2, a3, &v13, v10, v11);
  a1[14] = v13;
  return result;
}

uint64_t kaldi::nnet1::AddShift::Info(kaldi::nnet1::AddShift *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v12);
  (*(*this + 168))(this, &v12, 0);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, "\n shift_data", 12);
  kaldi::nnet1::MomentStatistics<float>(this + 22, v3, v4, v5, v6);
  if ((v11 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v11 & 0x80u) == 0)
  {
    v8 = v11;
  }

  else
  {
    v8 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, v7, v8);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::stringbuf::str();
  if (v15 < 0)
  {
    operator delete(v14[7].__locale_);
  }

  std::locale::~locale(v14);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_E2790(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::AddShift::InfoGradient(kaldi::nnet1::AddShift *this@<X0>, std::string *a2@<X8>)
{
  boost::filesystem::path::path(&v21, "\n  shift_data_grad");
  kaldi::nnet1::MomentStatistics<float>(this + 15, v4, v5, v6, v7);
  if ((v20 & 0x80u) == 0)
  {
    v8 = v19;
  }

  else
  {
    v8 = v19[0];
  }

  if ((v20 & 0x80u) == 0)
  {
    v9 = v20;
  }

  else
  {
    v9 = v19[1];
  }

  v10 = std::string::append(&v21, v8, v9);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v22.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v22.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = std::string::append(&v22, ", lr-coef ");
  v13 = *&v12->__r_.__value_.__l.__data_;
  v23.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v23.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  kaldi::nnet1::ToString<float>(this + 44);
  if ((v18 & 0x80u) == 0)
  {
    v14 = __p;
  }

  else
  {
    v14 = __p[0];
  }

  if ((v18 & 0x80u) == 0)
  {
    v15 = v18;
  }

  else
  {
    v15 = __p[1];
  }

  v16 = std::string::append(&v23, v14, v15);
  *a2 = *v16;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
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

void sub_E290C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v33 - 41) < 0)
  {
    operator delete(*(v33 - 64));
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::AddShift::InitData(uint64_t a1, uint64_t *a2)
{
  v37 = 0;
  kaldi::nnet1::Component::TypeToMarker(*(a1 + 168), &v36);
  v34 = 0uLL;
  v35 = 0;
  while (1)
  {
    if ((*(a2 + *(*a2 - 24) + 32) & 2) != 0)
    {
      goto LABEL_68;
    }

    kaldi::ReadToken(a2, 0, &v34, v4, v5);
    if ((SHIBYTE(v35) & 0x80000000) == 0)
    {
      break;
    }

    if (*(&v34 + 1) == 11 && *v34 == 0x72615074696E493CLL && *(v34 + 3) == 0x3E6D617261507469)
    {
      goto LABEL_43;
    }

    if (*(&v34 + 1) != 15 || (*v34 == 0x61526E7261654C3CLL ? (v11 = *(v34 + 7) == 0x3E66656F43657461) : (v11 = 0), v12 = (a1 + 176), !v11))
    {
      if (*(&v34 + 1) != 9)
      {
        if (*(&v34 + 1) != 18)
        {
          goto LABEL_59;
        }

        v13 = *v34 == 0x6E6569646172473CLL && *(v34 + 8) == 0x7079546D726F4E74;
        if (!v13 || *(v34 + 16) != 15973)
        {
          goto LABEL_59;
        }

        goto LABEL_44;
      }

      v15 = v34;
      goto LABEL_46;
    }

LABEL_56:
    kaldi::ReadBasicType<float>(a2, 0, v12, v6, v7);
LABEL_57:
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }

  if (HIBYTE(v35) <= 0xBu)
  {
    if (HIBYTE(v35) == 9)
    {
      v15 = &v34;
LABEL_46:
      v17 = *v15;
      v18 = *(v15 + 8);
      v19 = v17 == 0x6461724778614D3CLL && v18 == 62;
      v12 = (a1 + 172);
      if (!v19)
      {
        if (v35 < 0)
        {
LABEL_59:
          if (*(&v34 + 1) == 12)
          {
            v21 = v34;
            goto LABEL_63;
          }
        }

LABEL_73:
        kaldi::KaldiErrorMessage::KaldiErrorMessage(v33, "InitData", "../subproject/libquasar/libkaldi/src/nnet/nnet-various.h", 725);
        v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "Unknown token ", 14);
        if (v35 >= 0)
        {
          v29 = &v34;
        }

        else
        {
          v29 = v34;
        }

        if (v35 >= 0)
        {
          v30 = HIBYTE(v35);
        }

        else
        {
          v30 = *(&v34 + 1);
        }

        v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, v29, v30);
        v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, ", a typo in config?", 19);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, " (InitParam|LearnRateCoef|GradientNormType|MaxGrad)", 51);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v33);
      }

      goto LABEL_56;
    }

    if (HIBYTE(v35) != 11)
    {
      goto LABEL_73;
    }

    if (v34 != 0x72615074696E493CLL || *(&v34 + 3) != 0x3E6D617261507469)
    {
      goto LABEL_73;
    }

LABEL_43:
    v12 = &v37;
    goto LABEL_56;
  }

  if (HIBYTE(v35) == 15)
  {
    v20 = v34 == 0x61526E7261654C3CLL && *(&v34 + 7) == 0x3E66656F43657461;
    v12 = (a1 + 176);
    if (!v20)
    {
      goto LABEL_73;
    }

    goto LABEL_56;
  }

  if (HIBYTE(v35) == 18)
  {
    if (v34 != 0x6E6569646172473CLL || *(&v34 + 1) != 0x7079546D726F4E74 || v35 != 15973)
    {
      goto LABEL_73;
    }

LABEL_44:
    kaldi::ReadToken(a2, 0, &v36, v6, v7);
    goto LABEL_57;
  }

  if (HIBYTE(v35) != 12)
  {
    goto LABEL_73;
  }

  v21 = &v34;
LABEL_63:
  v22 = *v21;
  v23 = *(v21 + 2);
  if (v22 != 0x6E6F706D6F432F3CLL || v23 != 1047817829)
  {
    goto LABEL_73;
  }

LABEL_68:
  *(a1 + 168) = kaldi::nnet1::Component::MarkerToGradientNormType(&v36);
  kaldi::CuVector<float>::Resize(a1 + 88, *(a1 + 8), 0, v25, v26);
  v27.i32[0] = v37;
  kaldi::CuVectorBase<float>::Set(a1 + 88, v27);
  if (SHIBYTE(v35) < 0)
  {
    operator delete(v34);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }
}

void sub_E2D64(_Unwind_Exception *a1)
{
  if (*(v1 - 121) < 0)
  {
    operator delete(*(v1 - 144));
  }

  if (*(v1 - 97) < 0)
  {
    operator delete(*(v1 - 120));
  }

  _Unwind_Resume(a1);
}

void kaldi::nnet1::AddShift::WriteData(_DWORD *a1, void *a2, int a3)
{
  v5 = a1 + 22;
  (*(*a1 + 168))(a1);

  kaldi::CuVectorBase<float>::Write(v5, a2, a3, v6, v7);
}

uint64_t *kaldi::nnet1::AddShift::PropagateFnc(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4, const char *a5)
{
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(a3, a2, 111, a4, a5);

  return kaldi::CuMatrixBase<float>::AddVecToRows(a3, a1 + 88, v7, v8, v9, 1.0, 1.0);
}

double kaldi::nnet1::AddShift::ReadData(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  while (kaldi::Peek(a2, a3) == 60)
  {
    v27 = 0uLL;
    v28 = 0;
    kaldi::ReadToken(a2, a3, &v27, v6, v7);
    if (SHIBYTE(v28) < 0)
    {
      if (*(&v27 + 1) != 15 || (*v27 == 0x61526E7261654C3CLL ? (v12 = *(v27 + 7) == 0x3E66656F43657461) : (v12 = 0), v13 = (a1 + 176), !v12))
      {
        if (*(&v27 + 1) == 18)
        {
          v14 = *v27 == 0x6E6569646172473CLL && *(v27 + 8) == 0x7079546D726F4E74;
          if (v14 && *(v27 + 16) == 15973)
          {
            goto LABEL_29;
          }
        }

        if (*(&v27 + 1) != 9)
        {
          goto LABEL_47;
        }

        v16 = v27;
        goto LABEL_37;
      }
    }

    else
    {
      if (HIBYTE(v28) == 9)
      {
        v16 = &v27;
LABEL_37:
        v18 = *v16;
        v19 = *(v16 + 8);
        v20 = v18 == 0x6461724778614D3CLL && v19 == 62;
        v13 = (a1 + 172);
        if (!v20)
        {
LABEL_47:
          kaldi::KaldiErrorMessage::KaldiErrorMessage(__p, "ReadData", "../subproject/libquasar/libkaldi/src/nnet/nnet-various.h", 751);
          v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "unrecognized config token ", 26);
          if (v28 >= 0)
          {
            v23 = &v27;
          }

          else
          {
            v23 = v27;
          }

          if (v28 >= 0)
          {
            v24 = HIBYTE(v28);
          }

          else
          {
            v24 = *(&v27 + 1);
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, v23, v24);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
        }

        goto LABEL_42;
      }

      if (HIBYTE(v28) != 15)
      {
        if (HIBYTE(v28) != 18)
        {
          goto LABEL_47;
        }

        v10 = v27 == 0x6E6569646172473CLL && *(&v27 + 1) == 0x7079546D726F4E74;
        if (!v10 || v28 != 15973)
        {
          goto LABEL_47;
        }

LABEL_29:
        __p[0] = 0;
        __p[1] = 0;
        v26 = 0;
        kaldi::ReadToken(a2, a3, __p, v8, v9);
        *(a1 + 168) = kaldi::nnet1::Component::MarkerToGradientNormType(__p);
        if (SHIBYTE(v26) < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_43;
      }

      v17 = v27 == 0x61526E7261654C3CLL && *(&v27 + 7) == 0x3E66656F43657461;
      v13 = (a1 + 176);
      if (!v17)
      {
        goto LABEL_47;
      }
    }

LABEL_42:
    kaldi::ReadBasicType<float>(a2, a3, v13, v8, v9);
LABEL_43:
    if (SHIBYTE(v28) < 0)
    {
      operator delete(v27);
    }
  }

  return kaldi::CuVector<float>::Read(a1 + 88, a2, a3, v6, v7);
}

void sub_E310C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
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

void *kaldi::nnet1::AddShift::WriteConfig(unsigned int *a1, void *a2, const char *a3, uint64_t a4, const char *a5)
{
  kaldi::WriteToken(a2, a3, "<LearnRateCoef>", a4, a5);
  v8 = a1[44];
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<GradientNormType>", v9, v10);
  kaldi::nnet1::Component::TypeToMarker(a1[42], &__p);
  kaldi::WriteToken(a2, a3, &__p, v11, v12);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  kaldi::WriteToken(a2, a3, "<MaxGrad>", v13, v14);
  v15 = a1[43];
  return kaldi::WriteBasicType<float>(a2, a3);
}

void sub_E3204(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *kaldi::nnet1::AddShift::GetParams(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, const char *a5)
{
  kaldi::Vector<float>::Resize(a2, *(a1 + 8), 0, a4, a5);

  return kaldi::CuVectorBase<float>::CopyToVec<float>((a1 + 88), a2, v7, v8, v9);
}

_DWORD *kaldi::nnet1::AddShift::SetParams(_DWORD *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4 != (*(*a1 + 176))(a1))
  {
    kaldi::KaldiAssertFailure_("SetParams", "../subproject/libquasar/libkaldi/src/nnet/nnet-various.h", &stru_2E8.addr + 5, "wei_src.Dim() == NumParams()", v7);
  }

  return kaldi::CuVectorBase<float>::CopyFromVec<float>(a1 + 22, a2, v5, v6, v7);
}

void *kaldi::nnet1::AddShift::PerturbParams(kaldi::nnet1::AddShift *this, float a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6)
{
  v8 = *(this + 26);
  v13[0] = off_277020;
  memset(&v13[1], 0, 24);
  kaldi::CuVector<float>::Resize(v13, v8, 1u, a5, a6);
  kaldi::CuVectorBase<float>::SetRandn(v13);
  kaldi::CuVectorBase<float>::AddVec(this + 88, v13, v9, v10, v11, a2, 1.0);
  return kaldi::CuVector<float>::~CuVector(v13);
}

uint64_t kaldi::nnet1::AddShift::GetGradient(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  v8 = (*(*a1 + 16))(a1);
  (*(*v8 + 29))(v8, a2, a3, 0, 0);
  v9 = (*(*a1 + 176))(a1);
  kaldi::Vector<float>::Resize(a4, v9, 1, v10, v11);
  kaldi::CuVectorBase<float>::CopyToVec<float>(v8[15], a4, v12, v13, v14);
  v15 = *(*v8 + 1);

  return v15(v8);
}

void kaldi::nnet1::AddShift::AccumGradients(kaldi::nnet1::AddShift *a1, uint64_t a2, _DWORD *a3, uint64_t a4, const char *a5)
{
  v5 = a5;
  kaldi::nnet1::AddShift::EnsureCorrs(a1, a2, a3, a4, a5);
  *(*(a1 + 23) + 4 * v5) = *(a2 + 20);
  v13 = *(a1 + 15) + 32 * v5;
  *(v13 + 24) = a4;

  kaldi::CuVectorBase<float>::AddRowSumMat(v13, a3, 1.0, 0.0, v10, v11, v12);
}

uint64_t kaldi::nnet1::AddShift::SetGradientNormalization(uint64_t result, int a2, float a3)
{
  *(result + 172) = a3;
  *(result + 168) = a2;
  *(result + 208) = 0;
  return result;
}

void kaldi::nnet1::AddShift::NormalizeGradients(kaldi::nnet1::AddShift *this, float a2, int a3, uint64_t a4, uint64_t a5, const char *a6)
{
  v6 = *(this + 42);
  if (v6 == 3)
  {
    if (a2 >= 0.0 && a2 <= 1.0)
    {
      kaldi::nnet1::UpdatableComponent::RmspropGradient(*(this + 15) + 32 * a3, *(this + 18) + 32 * a3, a2, a4, a5, a6);
    }
  }

  else if (v6 == 2)
  {
    if (a2 > 0.0)
    {
      if (*(this + 84))
      {
        a2 = *(*(this + 23) + 4 * a3) * a2;
      }

      kaldi::nnet1::UpdatableComponent::LimitL2NormGradient(*(this + 15) + 32 * a3, (*(this + 18) + 32 * a3), a4, a5, a6, a2);
    }
  }

  else if (v6 == 1 && a2 > 0.0)
  {
    if (*(this + 84))
    {
      a2 = *(*(this + 23) + 4 * a3) * a2;
    }

    kaldi::nnet1::UpdatableComponent::ClipGradient(*(this + 15) + 32 * a3, a2);
  }
}

void kaldi::nnet1::AddShift::UpdateWeights(kaldi::nnet1::AddShift *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = a3;
  kaldi::nnet1::AddShift::EnsureCorrs(this, a2, a3, a4, a5);
  v11 = *(this + 20);
  if (v5 >= 0)
  {
    v12 = v5;
  }

  else
  {
    v12 = *(this + 20);
  }

  if (v11 == 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12;
  }

  if (v13 > v11)
  {
    kaldi::KaldiAssertFailure_("UpdateWeights", "../subproject/libquasar/libkaldi/src/nnet/nnet-various.h", &stru_338.size + 3, "batch_idx <= opts_.num_subbatches", v10);
  }

  v14 = *(this + 14);
  v15 = *(this + 15);
  v16 = v15 + 32 * v13;
  *(v16 + 24) = a2;
  *(*(this + 18) + 32 * v13 + 24) = a2;
  if (v13 == v11)
  {
    kaldi::CuVectorBase<float>::AddVec(v16, v15, v8, v9, v10, 1.0, 0.0);
    if (*(this + 20) > 1)
    {
      v17 = 1;
      v18 = 32;
      do
      {
        kaldi::CuVectorBase<float>::AddVec(*(this + 15) + 32 * v13, *(this + 15) + v18, v8, v9, v10, 1.0, 1.0);
        ++v17;
        v18 += 32;
      }

      while (v17 < *(this + 20));
    }

    v19 = *(this + 23);
    v19[v13] = 0;
    if (v11 >= 1)
    {
      v20 = 0;
      v21 = v19;
      do
      {
        v22 = *v21++;
        v20 += v22;
        v19[v13] = v20;
        --v11;
      }

      while (v11);
    }
  }

  if (*(this + 84) == 1)
  {
    v14 = v14 / *(*(this + 23) + 4 * v13);
  }

  if (*(this + 43) >= 0.0)
  {
    (*(*this + 248))(this, v13);
  }

  *(this + 14) = a2;
  kaldi::CuVectorBase<float>::AddVec(this + 88, *(this + 15) + 32 * v13, v8, v9, v10, -(v14 * *(this + 44)), 1.0);
  v23 = *(this + 23);
  if (v13 == *(this + 20))
  {
    v24 = *(this + 24);
    if (v23 != v24)
    {

      bzero(v23, v24 - v23);
    }
  }

  else
  {
    *&v23[4 * v13] = 0;
  }
}

uint64_t kaldi::nnet1::Rescale::Info(kaldi::nnet1::Rescale *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v12);
  (*(*this + 168))(this, &v12, 0);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, "\n scale_data", 12);
  kaldi::nnet1::MomentStatistics<float>(this + 22, v3, v4, v5, v6);
  if ((v11 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v11 & 0x80u) == 0)
  {
    v8 = v11;
  }

  else
  {
    v8 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, v7, v8);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::stringbuf::str();
  if (v15 < 0)
  {
    operator delete(v14[7].__locale_);
  }

  std::locale::~locale(v14);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_E3A48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::Rescale::InfoGradient(kaldi::nnet1::Rescale *this@<X0>, std::string *a2@<X8>)
{
  boost::filesystem::path::path(&v21, "\n  scale_data_grad");
  kaldi::nnet1::MomentStatistics<float>(this + 15, v4, v5, v6, v7);
  if ((v20 & 0x80u) == 0)
  {
    v8 = v19;
  }

  else
  {
    v8 = v19[0];
  }

  if ((v20 & 0x80u) == 0)
  {
    v9 = v20;
  }

  else
  {
    v9 = v19[1];
  }

  v10 = std::string::append(&v21, v8, v9);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v22.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v22.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = std::string::append(&v22, ", lr-coef ");
  v13 = *&v12->__r_.__value_.__l.__data_;
  v23.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v23.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  kaldi::nnet1::ToString<float>(this + 56);
  if ((v18 & 0x80u) == 0)
  {
    v14 = __p;
  }

  else
  {
    v14 = __p[0];
  }

  if ((v18 & 0x80u) == 0)
  {
    v15 = v18;
  }

  else
  {
    v15 = __p[1];
  }

  v16 = std::string::append(&v23, v14, v15);
  *a2 = *v16;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
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

void sub_E3BC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v33 - 41) < 0)
  {
    operator delete(*(v33 - 64));
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::Rescale::InitData(uint64_t a1, uint64_t *a2)
{
  v37 = 0;
  kaldi::nnet1::Component::TypeToMarker(*(a1 + 216), &v36);
  v34 = 0uLL;
  v35 = 0;
  while (1)
  {
    if ((*(a2 + *(*a2 - 24) + 32) & 2) != 0)
    {
      goto LABEL_68;
    }

    kaldi::ReadToken(a2, 0, &v34, v4, v5);
    if ((SHIBYTE(v35) & 0x80000000) == 0)
    {
      break;
    }

    if (*(&v34 + 1) == 11 && *v34 == 0x72615074696E493CLL && *(v34 + 3) == 0x3E6D617261507469)
    {
      goto LABEL_43;
    }

    if (*(&v34 + 1) != 15 || (*v34 == 0x61526E7261654C3CLL ? (v11 = *(v34 + 7) == 0x3E66656F43657461) : (v11 = 0), v12 = (a1 + 224), !v11))
    {
      if (*(&v34 + 1) != 9)
      {
        if (*(&v34 + 1) != 18)
        {
          goto LABEL_59;
        }

        v13 = *v34 == 0x6E6569646172473CLL && *(v34 + 8) == 0x7079546D726F4E74;
        if (!v13 || *(v34 + 16) != 15973)
        {
          goto LABEL_59;
        }

        goto LABEL_44;
      }

      v15 = v34;
      goto LABEL_46;
    }

LABEL_56:
    kaldi::ReadBasicType<float>(a2, 0, v12, v6, v7);
LABEL_57:
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }

  if (HIBYTE(v35) <= 0xBu)
  {
    if (HIBYTE(v35) == 9)
    {
      v15 = &v34;
LABEL_46:
      v17 = *v15;
      v18 = *(v15 + 8);
      v19 = v17 == 0x6461724778614D3CLL && v18 == 62;
      v12 = (a1 + 220);
      if (!v19)
      {
        if (v35 < 0)
        {
LABEL_59:
          if (*(&v34 + 1) == 12)
          {
            v21 = v34;
            goto LABEL_63;
          }
        }

LABEL_73:
        kaldi::KaldiErrorMessage::KaldiErrorMessage(v33, "InitData", "../subproject/libquasar/libkaldi/src/nnet/nnet-various.h", 1002);
        v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "Unknown token ", 14);
        if (v35 >= 0)
        {
          v29 = &v34;
        }

        else
        {
          v29 = v34;
        }

        if (v35 >= 0)
        {
          v30 = HIBYTE(v35);
        }

        else
        {
          v30 = *(&v34 + 1);
        }

        v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, v29, v30);
        v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, ", a typo in config?", 19);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, " (InitParam)", 12);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v33);
      }

      goto LABEL_56;
    }

    if (HIBYTE(v35) != 11)
    {
      goto LABEL_73;
    }

    if (v34 != 0x72615074696E493CLL || *(&v34 + 3) != 0x3E6D617261507469)
    {
      goto LABEL_73;
    }

LABEL_43:
    v12 = &v37;
    goto LABEL_56;
  }

  if (HIBYTE(v35) == 15)
  {
    v20 = v34 == 0x61526E7261654C3CLL && *(&v34 + 7) == 0x3E66656F43657461;
    v12 = (a1 + 224);
    if (!v20)
    {
      goto LABEL_73;
    }

    goto LABEL_56;
  }

  if (HIBYTE(v35) == 18)
  {
    if (v34 != 0x6E6569646172473CLL || *(&v34 + 1) != 0x7079546D726F4E74 || v35 != 15973)
    {
      goto LABEL_73;
    }

LABEL_44:
    kaldi::ReadToken(a2, 0, &v36, v6, v7);
    goto LABEL_57;
  }

  if (HIBYTE(v35) != 12)
  {
    goto LABEL_73;
  }

  v21 = &v34;
LABEL_63:
  v22 = *v21;
  v23 = *(v21 + 2);
  if (v22 != 0x6E6F706D6F432F3CLL || v23 != 1047817829)
  {
    goto LABEL_73;
  }

LABEL_68:
  *(a1 + 216) = kaldi::nnet1::Component::MarkerToGradientNormType(&v36);
  kaldi::CuVector<float>::Resize(a1 + 88, *(a1 + 8), 0, v25, v26);
  v27.i32[0] = v37;
  kaldi::CuVectorBase<float>::Set(a1 + 88, v27);
  if (SHIBYTE(v35) < 0)
  {
    operator delete(v34);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }
}

void sub_E401C(_Unwind_Exception *a1)
{
  if (*(v1 - 121) < 0)
  {
    operator delete(*(v1 - 144));
  }

  if (*(v1 - 97) < 0)
  {
    operator delete(*(v1 - 120));
  }

  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::Rescale::PropagateFnc(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4, const char *a5)
{
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(a3, a2, 111, a4, a5);

  return kaldi::CuMatrixBase<float>::MulColsVec(a3, a1 + 88, v7, v8, v9);
}

uint64_t kaldi::nnet1::Rescale::BackpropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(a5, a4, 111, a4, a5);

  return kaldi::CuMatrixBase<float>::MulColsVec(a5, a1 + 88, v7, v8, v9);
}

double kaldi::nnet1::Rescale::ReadData(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  while (kaldi::Peek(a2, a3) == 60)
  {
    v27 = 0uLL;
    v28 = 0;
    kaldi::ReadToken(a2, a3, &v27, v6, v7);
    if (SHIBYTE(v28) < 0)
    {
      if (*(&v27 + 1) != 15 || (*v27 == 0x61526E7261654C3CLL ? (v12 = *(v27 + 7) == 0x3E66656F43657461) : (v12 = 0), v13 = (a1 + 224), !v12))
      {
        if (*(&v27 + 1) == 18)
        {
          v14 = *v27 == 0x6E6569646172473CLL && *(v27 + 8) == 0x7079546D726F4E74;
          if (v14 && *(v27 + 16) == 15973)
          {
            goto LABEL_29;
          }
        }

        if (*(&v27 + 1) != 9)
        {
          goto LABEL_47;
        }

        v16 = v27;
        goto LABEL_37;
      }
    }

    else
    {
      if (HIBYTE(v28) == 9)
      {
        v16 = &v27;
LABEL_37:
        v18 = *v16;
        v19 = *(v16 + 8);
        v20 = v18 == 0x6461724778614D3CLL && v19 == 62;
        v13 = (a1 + 220);
        if (!v20)
        {
LABEL_47:
          kaldi::KaldiErrorMessage::KaldiErrorMessage(__p, "ReadData", "../subproject/libquasar/libkaldi/src/nnet/nnet-various.h", 1027);
          v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "unrecognized config token ", 26);
          if (v28 >= 0)
          {
            v23 = &v27;
          }

          else
          {
            v23 = v27;
          }

          if (v28 >= 0)
          {
            v24 = HIBYTE(v28);
          }

          else
          {
            v24 = *(&v27 + 1);
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, v23, v24);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
        }

        goto LABEL_42;
      }

      if (HIBYTE(v28) != 15)
      {
        if (HIBYTE(v28) != 18)
        {
          goto LABEL_47;
        }

        v10 = v27 == 0x6E6569646172473CLL && *(&v27 + 1) == 0x7079546D726F4E74;
        if (!v10 || v28 != 15973)
        {
          goto LABEL_47;
        }

LABEL_29:
        __p[0] = 0;
        __p[1] = 0;
        v26 = 0;
        kaldi::ReadToken(a2, a3, __p, v8, v9);
        *(a1 + 216) = kaldi::nnet1::Component::MarkerToGradientNormType(__p);
        if (SHIBYTE(v26) < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_43;
      }

      v17 = v27 == 0x61526E7261654C3CLL && *(&v27 + 7) == 0x3E66656F43657461;
      v13 = (a1 + 224);
      if (!v17)
      {
        goto LABEL_47;
      }
    }

LABEL_42:
    kaldi::ReadBasicType<float>(a2, a3, v13, v8, v9);
LABEL_43:
    if (SHIBYTE(v28) < 0)
    {
      operator delete(v27);
    }
  }

  return kaldi::CuVector<float>::Read(a1 + 88, a2, a3, v6, v7);
}

void sub_E4398(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
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

void *kaldi::nnet1::Rescale::WriteConfig(unsigned int *a1, void *a2, const char *a3, uint64_t a4, const char *a5)
{
  kaldi::WriteToken(a2, a3, "<LearnRateCoef>", a4, a5);
  v8 = a1[56];
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<GradientNormType>", v9, v10);
  kaldi::nnet1::Component::TypeToMarker(a1[54], &__p);
  kaldi::WriteToken(a2, a3, &__p, v11, v12);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  kaldi::WriteToken(a2, a3, "<MaxGrad>", v13, v14);
  v15 = a1[55];
  return kaldi::WriteBasicType<float>(a2, a3);
}

void sub_E4490(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *kaldi::nnet1::Rescale::SetParams(_DWORD *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4 != (*(*a1 + 176))(a1))
  {
    kaldi::KaldiAssertFailure_("SetParams", "../subproject/libquasar/libkaldi/src/nnet/nnet-various.h", &stru_3D8.reserved2, "wei_src.Dim() == NumParams()", v7);
  }

  return kaldi::CuVectorBase<float>::CopyFromVec<float>(a1 + 22, a2, v5, v6, v7);
}

void kaldi::nnet1::Rescale::AccumGradients(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = a5;
  kaldi::nnet1::Rescale::EnsureCorrs(a1, a2, a3, a4, a5);
  v10 = *(a1 + 120) + 32 * v5;
  *(v10 + 24) = a4;
  kaldi::CuVectorBase<float>::SetZero(v10);
  *(*(a1 + 232) + 4 * v5) = *(a2 + 20);
  *(a1 + 200) = a4;
  kaldi::CuMatrix<float>::operator=(a1 + 168, a3);
  kaldi::CuMatrixBase<float>::MulElements(a1 + 168, a2, v11, v12, v13);
  v17 = *(a1 + 120) + 32 * v5;

  kaldi::CuVectorBase<float>::AddRowSumMat(v17, (a1 + 168), 1.0, 1.0, v14, v15, v16);
}

uint64_t kaldi::nnet1::Rescale::SetGradientNormalization(uint64_t result, int a2, float a3)
{
  *(result + 220) = a3;
  *(result + 216) = a2;
  *(result + 256) = 0;
  return result;
}

void kaldi::nnet1::Rescale::NormalizeGradients(kaldi::nnet1::Rescale *this, float a2, int a3, uint64_t a4, uint64_t a5, const char *a6)
{
  v6 = *(this + 54);
  if (v6 == 3)
  {
    if (a2 >= 0.0 && a2 <= 1.0)
    {
      kaldi::nnet1::UpdatableComponent::RmspropGradient(*(this + 15) + 32 * a3, *(this + 18) + 32 * a3, a2, a4, a5, a6);
    }
  }

  else if (v6 == 2)
  {
    if (a2 > 0.0)
    {
      if (*(this + 84))
      {
        a2 = *(*(this + 29) + 4 * a3) * a2;
      }

      kaldi::nnet1::UpdatableComponent::LimitL2NormGradient(*(this + 15) + 32 * a3, (*(this + 18) + 32 * a3), a4, a5, a6, a2);
    }
  }

  else if (v6 == 1 && a2 > 0.0)
  {
    if (*(this + 84))
    {
      a2 = *(*(this + 29) + 4 * a3) * a2;
    }

    kaldi::nnet1::UpdatableComponent::ClipGradient(*(this + 15) + 32 * a3, a2);
  }
}

void kaldi::nnet1::Rescale::UpdateWeights(kaldi::nnet1::Rescale *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = a3;
  kaldi::nnet1::Rescale::EnsureCorrs(this, a2, a3, a4, a5);
  v11 = *(this + 20);
  if (v5 >= 0)
  {
    v12 = v5;
  }

  else
  {
    v12 = *(this + 20);
  }

  if (v11 == 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12;
  }

  if (v13 > v11)
  {
    kaldi::KaldiAssertFailure_("UpdateWeights", "../subproject/libquasar/libkaldi/src/nnet/nnet-various.h", &stru_478.sectname[4], "batch_idx <= opts_.num_subbatches", v10);
  }

  v14 = *(this + 14);
  v15 = *(this + 15);
  v16 = v15 + 32 * v13;
  *(v16 + 24) = a2;
  *(*(this + 18) + 32 * v13 + 24) = a2;
  if (v13 == v11)
  {
    kaldi::CuVectorBase<float>::AddVec(v16, v15, v8, v9, v10, 1.0, 0.0);
    if (*(this + 20) > 1)
    {
      v17 = 1;
      v18 = 32;
      do
      {
        kaldi::CuVectorBase<float>::AddVec(*(this + 15) + 32 * v13, *(this + 15) + v18, v8, v9, v10, 1.0, 1.0);
        ++v17;
        v18 += 32;
      }

      while (v17 < *(this + 20));
    }

    v19 = *(this + 29);
    v19[v13] = 0;
    if (v11 >= 1)
    {
      v20 = 0;
      v21 = v19;
      do
      {
        v22 = *v21++;
        v20 += v22;
        v19[v13] = v20;
        --v11;
      }

      while (v11);
    }
  }

  if (*(this + 84) == 1)
  {
    v14 = v14 / *(*(this + 29) + 4 * v13);
  }

  if (*(this + 55) >= 0.0)
  {
    (*(*this + 248))(this, v13);
  }

  *(this + 14) = a2;
  kaldi::CuVectorBase<float>::AddVec(this + 88, *(this + 15) + 32 * v13, v8, v9, v10, -(v14 * *(this + 56)), 1.0);
  v23 = *(this + 29);
  if (v13 == *(this + 20))
  {
    v24 = *(this + 30);
    if (v23 != v24)
    {

      bzero(v23, v24 - v23);
    }
  }

  else
  {
    *&v23[4 * v13] = 0;
  }
}