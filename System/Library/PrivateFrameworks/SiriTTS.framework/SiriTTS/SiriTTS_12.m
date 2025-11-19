void sub_1C3068974(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
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

void sub_1C3068A6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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
    kaldi::KaldiAssertFailure_("Linearity", "../engine/common/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 0x14C, "linearity_", v8);
  }

  return kaldi::QuantizedMatrix<signed char>::Write(v9, a2, a3, a4);
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::NumParams(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *(a1 + 104);
  if (!v6 || (v7 = kaldi::QuantizedMatrixBase<short>::NumRows(v6), (v8 = *(a1 + 104)) == 0))
  {
    kaldi::KaldiAssertFailure_("Linearity", "../engine/common/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 0x14C, "linearity_", a5);
  }

  return kaldi::QuantizedMatrixBase<short>::NumCols(v8) * v7;
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::GetParams(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
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
  v16 = 0;
  v17 = 0;
  if (v10 > *(a2 + 8))
  {
    kaldi::KaldiAssertFailure_("SubVector", "../engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.h", 0x264, "static_cast<UnsignedMatrixIndexT>(origin) + static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", a5);
  }

  v15 = *a2;
  LODWORD(v16) = v10;
  v13 = *(a1 + 104);
  if (!v13)
  {
LABEL_6:
    kaldi::KaldiAssertFailure_("Linearity", "../engine/common/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 0x14C, "linearity_", a5);
  }

  return kaldi::VectorBase<float>::CopyRowsFromMat<signed char>(&v15, v13);
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::SetParams(void *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4 != (*(*a1 + 176))(a1))
  {
    kaldi::KaldiAssertFailure_("SetParams", "../engine/common/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 0xD5, "wei_src.Dim() == NumParams()", v5);
  }

  v6 = a1[13];
  if (!v6)
  {
    kaldi::KaldiAssertFailure_("Linearity", "../engine/common/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 0x150, "linearity_", v5);
  }

  return kaldi::QuantizedMatrixBase<signed char>::CopyRowsFromVec(v6, a2);
}

double kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::SumParams(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *(a1 + 104);
  if (!v6)
  {
    kaldi::KaldiAssertFailure_("Linearity", "../engine/common/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 0x14C, "linearity_", a5);
  }

  return kaldi::QuantizedMatrixBase<signed char>::Sum(v6);
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

      kaldi::KaldiAssertFailure_("Linearity", "../engine/common/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 0x150, "linearity_", v10);
    }
  }

  kaldi::KaldiAssertFailure_("Linearity", "../engine/common/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 0x150, "linearity_", a5);
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::Info(void *a1)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v10);
  (*(*a1 + 168))(a1, &v10, 0);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "\n linearity", 11);
  v4 = a1[13];
  if (!v4)
  {
    kaldi::KaldiAssertFailure_("Linearity", "../engine/common/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 0x14C, "linearity_", v2);
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
  v10 = *MEMORY[0x1E69E54E8];
  *(&v10 + *(v10 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v11 = MEMORY[0x1E69E5548] + 16;
  if (v13 < 0)
  {
    operator delete(v12[7].__locale_);
  }

  v11 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v12);
  std::ostream::~ostream();
  return MEMORY[0x1C692AD30](&v14);
}

void sub_1C3069034(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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

void sub_1C30690E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::Vector<float>::Destroy(va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::InfoGradient(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v21, "\n  linearity_grad");
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

void sub_1C3069248(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
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

void kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(a1 + 104))
  {

    kaldi::CuVectorBase<float>::AddMatVec<signed char>();
  }

  kaldi::KaldiAssertFailure_("Linearity", "../engine/common/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 0x150, "linearity_", a5);
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::BackpropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *(a1 + 104);
  if (!v6)
  {
    kaldi::KaldiAssertFailure_("Linearity", "../engine/common/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 0x150, "linearity_", a5);
  }

  return kaldi::CuMatrixBase<float>::AddMatMat<signed char>(a5, a4, 111, v6, 0x6F, 1.0, 0.0);
}

void kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::GetUnitOutputFnc(uint64_t a1, uint64_t a2, int a3, uint64_t a4, const char *a5)
{
  v5 = *(a1 + 104);
  if (!v5)
  {
    kaldi::KaldiAssertFailure_("Linearity", "../engine/common/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 0x14C, "linearity_", a5);
  }

  kaldi::QuantizedMatrixBase<signed char>::Row(v5, a3, v9);
  kaldi::CuVectorBase<float>::AddMatVec<signed char>(a4, a2, 111, v9, v8, 1.0, 0.0);
}

float kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::GetUnitOutputFnc(uint64_t a1, uint64_t a2, int a3, uint64_t a4, const char *a5)
{
  v5 = *(a1 + 104);
  if (!v5)
  {
    kaldi::KaldiAssertFailure_("Linearity", "../engine/common/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 0x14C, "linearity_", a5);
  }

  kaldi::QuantizedMatrixBase<signed char>::Row(v5, a3, v11);
  return kaldi::VecVec<float,signed char>(a2, v11, v7, v8, v9);
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::AccumGradients(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::EnsureCorrs(a1);
  v10 = *(a1 + 60);
  *(*(a1 + 176) + 4 * a5) = *(a2 + 20);
  *(kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::LinearityCorr(a1, a5, v11, v12, v13) + 32) = a4;
  v17 = kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::LinearityCorr(a1, a5, v14, v15, v16);

  return kaldi::CuMatrixBase<float>::AddMatMat(v17, a3, 112, a2, 0x6F);
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

    std::vector<float>::resize((a1 + 176), v4);
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
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v0, "UpdateWeights", "../engine/common/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 308);
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
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v0, "VectorizeWeightsCorrs", "../engine/common/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 327);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Unimplemented except for BaseFloat weights");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

void kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::SetLinearity(uint64_t a1, uint64_t a2)
{
  v5 = kaldi::MatrixBase<float>::NumRows(a2);
  v6 = *(a1 + 104);
  if (!v6)
  {
    goto LABEL_9;
  }

  if (v5 != kaldi::QuantizedMatrixBase<short>::NumRows(v6))
  {
    kaldi::KaldiAssertFailure_("SetLinearity", "../engine/common/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 0x15B, "linearity.NumRows() == Linearity().NumRows()", v7);
  }

  v8 = kaldi::MatrixBase<float>::NumCols(a2);
  v9 = *(a1 + 104);
  if (!v9)
  {
    goto LABEL_9;
  }

  if (v8 != kaldi::QuantizedMatrixBase<short>::NumCols(v9))
  {
    kaldi::KaldiAssertFailure_("SetLinearity", "../engine/common/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 0x15C, "linearity.NumCols() == Linearity().NumCols()", v4);
  }

  v10 = *(a1 + 104);
  if (!v10)
  {
LABEL_9:
    kaldi::KaldiAssertFailure_("Linearity", "../engine/common/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 0x150, "linearity_", v4);
  }

  kaldi::QuantizedMatrixBase<signed char>::CopyFromMat(v10, a2);
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::CountZeroCorr(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::EnsureCorrs(a1);
  v7 = *(a1 + 104);
  if (!v7 || (v8 = kaldi::QuantizedMatrixBase<short>::NumRows(v7), (v9 = *(a1 + 104)) == 0))
  {
    kaldi::KaldiAssertFailure_("Linearity", "../engine/common/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 0x150, "linearity_", v6);
  }

  *a3 = kaldi::QuantizedMatrixBase<short>::NumCols(v9) * v8;
  v13 = *(a1 + 120) - *(a1 + 112);
  if (v13)
  {
    v14 = v13 >> 3;
    v15 = *(a1 + 80);
    if (v15 == 1)
    {
      v16 = 0;
    }

    else
    {
      v16 = v15;
    }

    if (v14 - 1 != v16)
    {
      v19 = v16;
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v23, "CountZeroCorr", "../engine/common/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 365);
      v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "Unexpected mismatch in indexes: ", 32);
      v21 = MEMORY[0x1C692A960](v20, v19);
      v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "  ", 2);
      MEMORY[0x1C692A980](v22, ((*(a1 + 120) - *(a1 + 112)) >> 3) - 1);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v23);
    }

    v17 = kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::LinearityCorr(a1, v16, v10, v11, v12);
    result = kaldi::CuMatrixBase<float>::CountZeros(v17);
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
  *(a1 + 48) = &unk_1F42CB198;
  *(a1 + 56) = xmmword_1C378B0E0;
  *(a1 + 72) = -1082130432;
  *(a1 + 76) = 0x100000003;
  *(a1 + 84) = 0;
  *(a1 + 86) = 0;
  *a1 = &unk_1F42C0E98;
  *(a1 + 88) = &unk_1F42C0FD0;
  *(a1 + 96) = &unk_1F42C0FF8;
  operator new();
}

void sub_1C3069E04(_Unwind_Exception *a1)
{
  MEMORY[0x1C692AE10](v4, 0x10D0C4068EB0291);
  kaldi::CuMatrixBase<float>::~CuMatrixBase(v3);
  kaldi::CuMatrixBase<float>::~CuMatrixBase(v2);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v1);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::LinearTransform(uint64_t a1, uint64_t a2)
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
  *a1 = &unk_1F42C0E98;
  *(a1 + 88) = &unk_1F42C0FD0;
  *(a1 + 104) = 0;
  *(a1 + 96) = &unk_1F42C0FF8;
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
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v17, "LinearTransform", "../engine/common/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 76);
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

void sub_1C306A1A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
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
  kaldi::CuMatrixBase<float>::~CuMatrixBase(a3);
  kaldi::CuMatrixBase<float>::~CuMatrixBase(a4);
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
  *a1 = &unk_1F42C0E98;
  v2 = a1 + 88;
  *(a1 + 88) = &unk_1F42C0FD0;
  v3 = a1 + 96;
  *(a1 + 96) = &unk_1F42C0FF8;
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
  kaldi::CuMatrixBase<float>::~CuMatrixBase(v3);
  kaldi::CuMatrixBase<float>::~CuMatrixBase(v2);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(a1);
}

{
  kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::~LinearTransform(a1);

  JUMPOUT(0x1C692AE10);
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

  JUMPOUT(0x1C692AE10);
}

{
  kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::~LinearTransform(a1 - 96);

  JUMPOUT(0x1C692AE10);
}

void kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::InitData(uint64_t a1, uint64_t *a2, kaldi::UniformRandomNumber *a3)
{
  v67 = 1036831949;
  kaldi::nnet1::Component::TypeToMarker(2, &v66);
  kaldi::nnet1::Component::TypeToMarker(*(a1 + 160), &v65);
  v64 = -1;
  memset(v63, 0, sizeof(v63));
  while (1)
  {
    if ((*(a2 + *(*a2 - 24) + 32) & 2) != 0)
    {
      goto LABEL_98;
    }

    kaldi::ReadToken(a2, 0, v63, v6, v7);
    if (SHIBYTE(v63[2]) < 0)
    {
      break;
    }

    if (HIBYTE(v63[2]) <= 0xEu)
    {
      if (HIBYTE(v63[2]) == 9)
      {
        v19 = v63;
        goto LABEL_78;
      }

      if (HIBYTE(v63[2]) == 12)
      {
        if (v63[0] != 0x536D6F646E61523CLL || LODWORD(v63[1]) != 1046766949)
        {
          v30 = v63;
          goto LABEL_93;
        }

LABEL_66:
        kaldi::ReadBasicType<int>(a2, 0, &v64);
        goto LABEL_89;
      }

      if (HIBYTE(v63[2]) != 13)
      {
        goto LABEL_131;
      }

      if (v63[0] != 0x74536D617261503CLL || *(v63 + 5) != 0x3E7665646474536DLL)
      {
        goto LABEL_131;
      }

      goto LABEL_60;
    }

    if (HIBYTE(v63[2]) != 15)
    {
      if (HIBYTE(v63[2]) == 18)
      {
        if (v63[0] != 0x6E6569646172473CLL || v63[1] != 0x7079546D726F4E74 || LOWORD(v63[2]) != 15973)
        {
          goto LABEL_131;
        }

        goto LABEL_75;
      }

      if (HIBYTE(v63[2]) != 19)
      {
        goto LABEL_131;
      }

      v20 = v63[0] == 0x61725474696E493CLL && v63[1] == 0x79546D726F66736ELL;
      if (!v20 || *(&v63[1] + 3) != 0x3E657079546D726FLL)
      {
        goto LABEL_131;
      }

LABEL_59:
      v22 = &v66;
LABEL_76:
      kaldi::ReadToken(a2, 0, v22, v8, v9);
      goto LABEL_89;
    }

    v29 = v63[0] == 0x61526E7261654C3CLL && *(v63 + 7) == 0x3E66656F43657461;
    v13 = (a1 + 168);
    if (!v29)
    {
      goto LABEL_131;
    }

LABEL_88:
    kaldi::ReadBasicType<float>(a2, 0, v13);
LABEL_89:
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }

  if (v63[1] == 13 && *v63[0] == 0x74536D617261503CLL && *(v63[0] + 5) == 0x3E7665646474536DLL)
  {
LABEL_60:
    v13 = &v67;
    goto LABEL_88;
  }

  if (v63[1] == 15)
  {
    v12 = *v63[0] == 0x61526E7261654C3CLL && *(v63[0] + 7) == 0x3E66656F43657461;
    v13 = (a1 + 168);
    if (v12)
    {
      goto LABEL_88;
    }
  }

  if (v63[1] == 19)
  {
    if (*v63[0] == 0x61725474696E493CLL && *(v63[0] + 1) == 0x79546D726F66736ELL && *(v63[0] + 11) == 0x3E657079546D726FLL)
    {
      goto LABEL_59;
    }
  }

  else if (v63[1] == 12 && *v63[0] == 0x536D6F646E61523CLL && *(v63[0] + 2) == 1046766949)
  {
    goto LABEL_66;
  }

  if (v63[1] != 9)
  {
    if (v63[1] != 18)
    {
      goto LABEL_91;
    }

    v17 = *v63[0] == 0x6E6569646172473CLL && *(v63[0] + 1) == 0x7079546D726F4E74;
    if (!v17 || *(v63[0] + 8) != 15973)
    {
      goto LABEL_91;
    }

LABEL_75:
    v22 = &v65;
    goto LABEL_76;
  }

  v19 = v63[0];
LABEL_78:
  v26 = *v19;
  v27 = *(v19 + 8);
  v28 = v26 == 0x6461724778614D3CLL && v27 == 62;
  v13 = (a1 + 164);
  if (v28)
  {
    goto LABEL_88;
  }

  if ((HIBYTE(v63[2]) & 0x80) == 0)
  {
    goto LABEL_131;
  }

LABEL_91:
  if (v63[1] != 12)
  {
    goto LABEL_131;
  }

  v30 = v63[0];
LABEL_93:
  v31 = *v30;
  v32 = *(v30 + 2);
  if (v31 != 0x6E6F706D6F432F3CLL || v32 != 1047817829)
  {
LABEL_131:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v62, "InitData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 135);
    v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, "Unknown token ", 14);
    if (SHIBYTE(v63[2]) >= 0)
    {
      v52 = v63;
    }

    else
    {
      v52 = v63[0];
    }

    if (SHIBYTE(v63[2]) >= 0)
    {
      v53 = HIBYTE(v63[2]);
    }

    else
    {
      v53 = v63[1];
    }

    v54 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, v52, v53);
    v55 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, ", a typo in config?", 19);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v55, " (ParamStddev|LearnRateCoef|InitTransformType|RandomSeed|GradientNormType|MaxGrad)", 82);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v62);
  }

LABEL_98:
  inited = kaldi::nnet1::Component::MarkerToMatrixInitType(&v66);
  *(a1 + 160) = kaldi::nnet1::Component::MarkerToGradientNormType(&v65);
  if (v64 >= 1)
  {
    kaldi::UniformRandomNumber::SetRandomSeeds(a3, v64);
  }

  kaldi::GaussRandomNumber::GaussRandomNumber(v58, a3);
  kaldi::Matrix<float>::Matrix(v56, *(a1 + 12), *(a1 + 8), 0, 0);
  v38 = *(a1 + 12);
  if (v38 < 1)
  {
    goto LABEL_116;
  }

  v39 = 0;
  LODWORD(v40) = *(a1 + 8);
  while (2)
  {
    if (v40 < 1)
    {
      goto LABEL_115;
    }

    v41 = 0;
    while (2)
    {
      switch(inited)
      {
        case 0:
          if (v39 == v41)
          {
            v43 = 1.0;
          }

          else
          {
            v43 = 0.0;
          }

          goto LABEL_112;
        case 2:
          v44 = *&v67;
          kaldi::GaussRandomNumber::Rand(v58, 0, v35, v36, v37);
          v43 = v44 * v45;
LABEL_112:
          *(v56[0] + 4 * v39 * v57 + 4 * v41) = v43;
          break;
        case 1:
          v42 = *&v67;
          v43 = (kaldi::UniformRandomNumber::RandUniform(a3, 0, v35, v36, v37) + -0.5) * (v42 + v42);
          goto LABEL_112;
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
LABEL_115:
    if (++v39 < v38)
    {
      continue;
    }

    break;
  }

LABEL_116:
  v46 = *(a1 + 104);
  if (!v46)
  {
    goto LABEL_138;
  }

  v47 = kaldi::QuantizedMatrixBase<short>::NumRows(v46);
  if (v47 != kaldi::MatrixBase<float>::NumRows(v56))
  {
    goto LABEL_130;
  }

  v48 = *(a1 + 104);
  if (!v48)
  {
    goto LABEL_138;
  }

  v49 = kaldi::QuantizedMatrixBase<short>::NumCols(v48);
  if (v49 != kaldi::MatrixBase<float>::NumCols(v56))
  {
LABEL_130:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v62, "InitData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 158);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, "Linearity().NumRows() == mat.NumRows() && Linearity().NumCols() == mat.NumCols()", 80);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v62);
  }

  v50 = *(a1 + 104);
  if (!v50)
  {
LABEL_138:
    kaldi::KaldiAssertFailure_("Linearity", "../engine/common/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 0x150, "linearity_", v37);
  }

  kaldi::QuantizedMatrixBase<short>::CopyFromMat(v50, v56);
  kaldi::Matrix<float>::~Matrix(v56);
  if (__p)
  {
    v61 = __p;
    operator delete(__p);
  }

  v62[0] = &v59;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](v62);
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
          kaldi::KaldiErrorMessage::KaldiErrorMessage(__p, "ReadData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 176);
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
    kaldi::ReadBasicType<float>(a2, a3, v14);
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

  kaldi::QuantizedMatrix<short>::Read(v22, a2, a3, a4);
  *(a1 + 16) = 0;
  v23 = *(a1 + 104);
  if (!v23)
  {
    goto LABEL_59;
  }

  if (kaldi::QuantizedMatrixBase<short>::NumRows(v23) != *(a1 + 12))
  {
    kaldi::KaldiAssertFailure_("ReadData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 0xBA, "Linearity().NumRows() == output_dim_", v8);
  }

  v24 = *(a1 + 104);
  if (!v24)
  {
LABEL_59:
    kaldi::KaldiAssertFailure_("Linearity", "../engine/common/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 0x150, "linearity_", v8);
  }

  result = kaldi::QuantizedMatrixBase<short>::NumCols(v24);
  if (result != *(a1 + 8))
  {
    kaldi::KaldiAssertFailure_("ReadData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 0xBB, "Linearity().NumCols() == input_dim_", v26);
  }

  return result;
}

void sub_1C306B0B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
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

void sub_1C306B1B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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
    kaldi::KaldiAssertFailure_("Linearity", "../engine/common/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 0x14C, "linearity_", v8);
  }

  return kaldi::QuantizedMatrix<short>::Write(v9, a2, a3, a4);
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::NumParams(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *(a1 + 104);
  if (!v6 || (v7 = kaldi::QuantizedMatrixBase<short>::NumRows(v6), (v8 = *(a1 + 104)) == 0))
  {
    kaldi::KaldiAssertFailure_("Linearity", "../engine/common/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 0x14C, "linearity_", a5);
  }

  return kaldi::QuantizedMatrixBase<short>::NumCols(v8) * v7;
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::GetParams(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
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
  v16 = 0;
  v17 = 0;
  if (v10 > *(a2 + 8))
  {
    kaldi::KaldiAssertFailure_("SubVector", "../engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.h", 0x264, "static_cast<UnsignedMatrixIndexT>(origin) + static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", a5);
  }

  v15 = *a2;
  LODWORD(v16) = v10;
  v13 = *(a1 + 104);
  if (!v13)
  {
LABEL_6:
    kaldi::KaldiAssertFailure_("Linearity", "../engine/common/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 0x14C, "linearity_", a5);
  }

  return kaldi::VectorBase<float>::CopyRowsFromMat<short>(&v15, v13);
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::SetParams(void *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4 != (*(*a1 + 176))(a1))
  {
    kaldi::KaldiAssertFailure_("SetParams", "../engine/common/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 0xD5, "wei_src.Dim() == NumParams()", v5);
  }

  v6 = a1[13];
  if (!v6)
  {
    kaldi::KaldiAssertFailure_("Linearity", "../engine/common/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 0x150, "linearity_", v5);
  }

  return kaldi::QuantizedMatrixBase<short>::CopyRowsFromVec(v6, a2);
}

double kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::SumParams(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *(a1 + 104);
  if (!v6)
  {
    kaldi::KaldiAssertFailure_("Linearity", "../engine/common/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 0x14C, "linearity_", a5);
  }

  return kaldi::QuantizedMatrixBase<short>::Sum(v6);
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

      kaldi::KaldiAssertFailure_("Linearity", "../engine/common/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 0x150, "linearity_", v10);
    }
  }

  kaldi::KaldiAssertFailure_("Linearity", "../engine/common/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 0x150, "linearity_", a5);
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::Info(void *a1)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v10);
  (*(*a1 + 168))(a1, &v10, 0);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "\n linearity", 11);
  v4 = a1[13];
  if (!v4)
  {
    kaldi::KaldiAssertFailure_("Linearity", "../engine/common/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 0x14C, "linearity_", v2);
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
  v10 = *MEMORY[0x1E69E54E8];
  *(&v10 + *(v10 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v11 = MEMORY[0x1E69E5548] + 16;
  if (v13 < 0)
  {
    operator delete(v12[7].__locale_);
  }

  v11 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v12);
  std::ostream::~ostream();
  return MEMORY[0x1C692AD30](&v14);
}

void sub_1C306B778(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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

void sub_1C306B828(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::Vector<float>::Destroy(va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::InfoGradient(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v21, "\n  linearity_grad");
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

void sub_1C306B98C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
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

uint64_t kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *(a1 + 104);
  if (!v6)
  {
    kaldi::KaldiAssertFailure_("Linearity", "../engine/common/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 0x150, "linearity_", a5);
  }

  return kaldi::CuMatrixBase<float>::AddMatMat<short>(a3, a2, 111, v6, 0x70, 1.0, 0.0);
}

void kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(a1 + 104))
  {

    kaldi::CuVectorBase<float>::AddMatVec<short>();
  }

  kaldi::KaldiAssertFailure_("Linearity", "../engine/common/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 0x150, "linearity_", a5);
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::BackpropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *(a1 + 104);
  if (!v6)
  {
    kaldi::KaldiAssertFailure_("Linearity", "../engine/common/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 0x150, "linearity_", a5);
  }

  return kaldi::CuMatrixBase<float>::AddMatMat<short>(a5, a4, 111, v6, 0x6F, 1.0, 0.0);
}

void kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::GetUnitOutputFnc(uint64_t a1, uint64_t a2, int a3, uint64_t a4, const char *a5)
{
  v5 = *(a1 + 104);
  if (!v5)
  {
    kaldi::KaldiAssertFailure_("Linearity", "../engine/common/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 0x14C, "linearity_", a5);
  }

  kaldi::QuantizedMatrixBase<short>::Row(v5, a3, v9);
  kaldi::CuVectorBase<float>::AddMatVec<short>(a4, a2, 111, v9, v8, 1.0, 0.0);
}

float kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::GetUnitOutputFnc(uint64_t a1, uint64_t a2, int a3, uint64_t a4, const char *a5)
{
  v5 = *(a1 + 104);
  if (!v5)
  {
    kaldi::KaldiAssertFailure_("Linearity", "../engine/common/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 0x14C, "linearity_", a5);
  }

  kaldi::QuantizedMatrixBase<short>::Row(v5, a3, v11);
  return kaldi::VecVec<float,short>(a2, v11, v7, v8, v9);
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::AccumGradients(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::EnsureCorrs(a1);
  v10 = *(a1 + 60);
  *(*(a1 + 176) + 4 * a5) = *(a2 + 20);
  *(kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::LinearityCorr(a1, a5, v11, v12, v13) + 32) = a4;
  v17 = kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::LinearityCorr(a1, a5, v14, v15, v16);

  return kaldi::CuMatrixBase<float>::AddMatMat(v17, a3, 112, a2, 0x6F);
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

    std::vector<float>::resize((a1 + 176), v4);
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
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v0, "UpdateWeights", "../engine/common/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 308);
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
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v0, "VectorizeWeightsCorrs", "../engine/common/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 327);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Unimplemented except for BaseFloat weights");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

void kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::SetLinearity(uint64_t a1, uint64_t a2)
{
  v5 = kaldi::MatrixBase<float>::NumRows(a2);
  v6 = *(a1 + 104);
  if (!v6)
  {
    goto LABEL_9;
  }

  if (v5 != kaldi::QuantizedMatrixBase<short>::NumRows(v6))
  {
    kaldi::KaldiAssertFailure_("SetLinearity", "../engine/common/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 0x15B, "linearity.NumRows() == Linearity().NumRows()", v7);
  }

  v8 = kaldi::MatrixBase<float>::NumCols(a2);
  v9 = *(a1 + 104);
  if (!v9)
  {
    goto LABEL_9;
  }

  if (v8 != kaldi::QuantizedMatrixBase<short>::NumCols(v9))
  {
    kaldi::KaldiAssertFailure_("SetLinearity", "../engine/common/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 0x15C, "linearity.NumCols() == Linearity().NumCols()", v4);
  }

  v10 = *(a1 + 104);
  if (!v10)
  {
LABEL_9:
    kaldi::KaldiAssertFailure_("Linearity", "../engine/common/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 0x150, "linearity_", v4);
  }

  kaldi::QuantizedMatrixBase<short>::CopyFromMat(v10, a2);
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::CountZeroCorr(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::EnsureCorrs(a1);
  v7 = *(a1 + 104);
  if (!v7 || (v8 = kaldi::QuantizedMatrixBase<short>::NumRows(v7), (v9 = *(a1 + 104)) == 0))
  {
    kaldi::KaldiAssertFailure_("Linearity", "../engine/common/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 0x150, "linearity_", v6);
  }

  *a3 = kaldi::QuantizedMatrixBase<short>::NumCols(v9) * v8;
  v13 = *(a1 + 120) - *(a1 + 112);
  if (v13)
  {
    v14 = v13 >> 3;
    v15 = *(a1 + 80);
    if (v15 == 1)
    {
      v16 = 0;
    }

    else
    {
      v16 = v15;
    }

    if (v14 - 1 != v16)
    {
      v19 = v16;
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v23, "CountZeroCorr", "../engine/common/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 365);
      v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "Unexpected mismatch in indexes: ", 32);
      v21 = MEMORY[0x1C692A960](v20, v19);
      v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "  ", 2);
      MEMORY[0x1C692A980](v22, ((*(a1 + 120) - *(a1 + 112)) >> 3) - 1);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v23);
    }

    v17 = kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::LinearityCorr(a1, v16, v10, v11, v12);
    result = kaldi::CuMatrixBase<float>::CountZeros(v17);
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
  *(a1 + 48) = &unk_1F42CB198;
  *(a1 + 56) = xmmword_1C378B0E0;
  *(a1 + 72) = -1082130432;
  *(a1 + 76) = 0x100000003;
  *(a1 + 84) = 0;
  *(a1 + 86) = 0;
  *a1 = &unk_1F42C0B88;
  *(a1 + 88) = &unk_1F42C0CC0;
  *(a1 + 96) = &unk_1F42C0CE8;
  operator new();
}

void sub_1C306C5AC(_Unwind_Exception *a1)
{
  MEMORY[0x1C692AE10](v4, 0x1081C40CC61A6CELL);
  kaldi::CuMatrixBase<float>::~CuMatrixBase(v3);
  kaldi::CuMatrixBase<float>::~CuMatrixBase(v2);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v1);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::VectorizeWeightsCorrs(uint64_t a1)
{
  if (*(a1 + 16) != 1)
  {
    if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
    {
      kaldi::KaldiLogMessage::KaldiLogMessage(v3, "VectorizeWeightsCorrs", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-linear-transform.cc", 90);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "Performing  vectorization of linear component", 45);
      kaldi::KaldiLogMessage::~KaldiLogMessage(v3);
    }

    v2 = (*(*(a1 + 104) + 16) * *(*(a1 + 104) + 20));
    kaldi::CuSubMatrix<float>::CopyDataAndReplaceWithCuSub((a1 + 104));
  }

  kaldi::KaldiErrorMessage::KaldiErrorMessage(v3, "VectorizeWeightsCorrs", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-linear-transform.cc", 87);
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
    kaldi::KaldiAssertFailure_("UpdateWeights", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-linear-transform.cc", 0x93, "batch_idx <= opts_.num_subbatches", v8);
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
    kaldi::KaldiAssertFailure_("Linearity", "../engine/common/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 0x150, "linearity_", v8);
  }

  v44 = kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::LinearityCorr(a1, v16, v17, v18, v8);
  kaldi::cu::RegularizeL1<float>(v43, v44, (v10 * v40) * *(*(a1 + 176) + 4 * v16), v40, v45, v46, v47);
LABEL_28:
  if (v12 > 0.0)
  {
    if (*(a1 + 80) >= 2)
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v50, "UpdateWeights", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-linear-transform.cc", 184);
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
  *a1 = &unk_1F42C0D10;
  *(a1 + 88) = &unk_1F42C0E48;
  *(a1 + 104) = 0;
  *(a1 + 96) = &unk_1F42C0E70;
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
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v17, "LinearTransform", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-linear-transform.cc", 62);
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

void sub_1C306D08C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
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
  kaldi::CuMatrixBase<float>::~CuMatrixBase(a3);
  kaldi::CuMatrixBase<float>::~CuMatrixBase(a4);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v4);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::LinearTransform<kaldi::CuMatrixBase<float>>(uint64_t a1, uint64_t a2)
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
  *a1 = &unk_1F42C0E98;
  *(a1 + 88) = &unk_1F42C0FD0;
  *(a1 + 104) = 0;
  *(a1 + 96) = &unk_1F42C0FF8;
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
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v17, "LinearTransform", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-linear-transform.cc", 62);
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

void sub_1C306D4A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
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
  kaldi::CuMatrixBase<float>::~CuMatrixBase(a3);
  kaldi::CuMatrixBase<float>::~CuMatrixBase(a4);
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

    JUMPOUT(0x1C692AE10);
  }

  return result;
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::LinearTransform<kaldi::QuantizedMatrix<signed char>>(uint64_t a1, uint64_t a2)
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
  *a1 = &unk_1F42C0E98;
  *(a1 + 88) = &unk_1F42C0FD0;
  *(a1 + 104) = 0;
  *(a1 + 96) = &unk_1F42C0FF8;
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
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v17, "LinearTransform", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-linear-transform.cc", 62);
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

void sub_1C306D908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
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
  kaldi::CuMatrixBase<float>::~CuMatrixBase(a3);
  kaldi::CuMatrixBase<float>::~CuMatrixBase(a4);
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

    JUMPOUT(0x1C692AE10);
  }

  return result;
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::LinearTransform<kaldi::QuantizedMatrix<short>>(uint64_t a1, uint64_t a2)
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
  *a1 = &unk_1F42C0D10;
  *(a1 + 88) = &unk_1F42C0E48;
  *(a1 + 104) = 0;
  *(a1 + 96) = &unk_1F42C0E70;
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
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v17, "LinearTransform", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-linear-transform.cc", 62);
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

void sub_1C306DD6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
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
  kaldi::CuMatrixBase<float>::~CuMatrixBase(a3);
  kaldi::CuMatrixBase<float>::~CuMatrixBase(a4);
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
  ComponentTypeMap = kaldi::nnet1::Component::GetComponentTypeMap(a1);
  v5 = *ComponentTypeMap;
  v6 = kaldi::nnet1::Component::GetComponentTypeMap(ComponentTypeMap);
  if (v5 == (v6 + 8))
  {
LABEL_9:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v14, "TypeToMarker", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-component.cc", 201);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "Unknown component type: ", 24);
    MEMORY[0x1C692A960](v10, a1);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v14);
  }

  while (*(v5 + 14) != a1)
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
    v12 = v5[4];
    v13 = v5[5];

    std::string::__init_copy_ctor_external(a2, v12, v13);
  }

  else
  {
    v11 = *(v5 + 2);
    a2->__r_.__value_.__r.__words[2] = v5[6];
    *&a2->__r_.__value_.__l.__data_ = v11;
  }
}

{
  GradientNormTypeMap = kaldi::nnet1::Component::GetGradientNormTypeMap(a1);
  v5 = *GradientNormTypeMap;
  v6 = kaldi::nnet1::Component::GetGradientNormTypeMap(GradientNormTypeMap);
  if (v5 == (v6 + 8))
  {
LABEL_9:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v14, "TypeToMarker", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-component.cc", 210);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "Unknown gradient normalizaiton type: ", 37);
    MEMORY[0x1C692A960](v10, a1);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v14);
  }

  while (*(v5 + 14) != a1)
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
    v12 = v5[4];
    v13 = v5[5];

    std::string::__init_copy_ctor_external(a2, v12, v13);
  }

  else
  {
    v11 = *(v5 + 2);
    a2->__r_.__value_.__r.__words[2] = v5[6];
    *&a2->__r_.__value_.__l.__data_ = v11;
  }
}

{
  MatrixInitTypeMap = kaldi::nnet1::Component::GetMatrixInitTypeMap(a1);
  v5 = *MatrixInitTypeMap;
  v6 = kaldi::nnet1::Component::GetMatrixInitTypeMap(MatrixInitTypeMap);
  if (v5 == (v6 + 8))
  {
LABEL_9:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v14, "TypeToMarker", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-component.cc", 219);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "Unknown matrix initialization type: ", 36);
    MEMORY[0x1C692A960](v10, a1);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v14);
  }

  while (*(v5 + 14) != a1)
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
    v12 = v5[4];
    v13 = v5[5];

    std::string::__init_copy_ctor_external(a2, v12, v13);
  }

  else
  {
    v11 = *(v5 + 2);
    a2->__r_.__value_.__r.__words[2] = v5[6];
    *&a2->__r_.__value_.__l.__data_ = v11;
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
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v37, "MarkerToComponentType", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-component.cc", 238);
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
      kaldi::KaldiLogMessage::KaldiLogMessage(v37, "MarkerToComponentType", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-component.cc", 234);
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

void sub_1C306E668(_Unwind_Exception *exception_object)
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
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v6, "MarkerToGradientNormType", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-component.cc", 245);
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
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v6, "MarkerToMatrixInitType", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-component.cc", 252);
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
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v4, "NewComponentOfType", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-component.cc", 483);
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
  *(this + 111) = &unk_1F42C2E78;
  *(this + 117) = &unk_1F42CB198;
  *(this + 59) = xmmword_1C378B0E0;
  *(this + 120) = 0x3BF800000;
  *(this + 242) = 1;
  *(this + 486) = 0;
  *(this + 974) = 0;
  kaldi::nnet1::RecurrentBaseComponent::RecurrentBaseComponent(this, off_1F42C9148);
  *v3 = &unk_1F42C8DC0;
  *(v3 + 888) = &unk_1F42C9028;
  result = 0.0;
  *(v3 + 168) = 0u;
  *(v3 + 184) = 0u;
  *(v3 + 160) = &unk_1F42BFED8;
  *(v3 + 200) = 0;
  *(v3 + 216) = 0u;
  *(v3 + 232) = 0u;
  *(v3 + 208) = &unk_1F42BFED8;
  *(v3 + 248) = 0;
  *(v3 + 264) = 0u;
  *(v3 + 280) = 0u;
  *(v3 + 256) = &unk_1F42BFED8;
  *(v3 + 296) = 0;
  *(v3 + 320) = 0;
  *(v3 + 328) = 0;
  *(v3 + 304) = &unk_1F42BFF70;
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
  *(this + 136) = &unk_1F42CB1B8;
  *(this + 144) = 1;
  *(this + 40) = 0;
  *(this + 48) = &unk_1F42CB790;
  *this = &unk_1F42CB640;
  *(this + 8) = 0;
  *(this + 96) = &unk_1F42CB860;
  *(this + 104) = &unk_1F42CB8E0;
  *(this + 112) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 16) = &unk_1F42BFF70;
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
  *(this + 26) = &unk_1F42C2E78;
  *(this + 32) = &unk_1F42CB198;
  *(this + 264) = xmmword_1C378B0E0;
  *(this + 35) = 0x3BF800000;
  *(this + 72) = 1;
  *(this + 146) = 0;
  *(this + 294) = 0;
  kaldi::nnet1::RecurrentBaseComponent::RecurrentBaseComponent(this, off_1F42C2590);
  *v3 = &unk_1F42C21B8;
  *(v3 + 200) = 0;
  *(v3 + 208) = &unk_1F42C2470;
  *(v3 + 160) = &unk_1F42C2310;
  *(v3 + 168) = &unk_1F42C2338;
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
  *(this + 66) = &unk_1F42C2E78;
  *(this + 72) = &unk_1F42CB198;
  *(this + 584) = xmmword_1C378B0E0;
  *(this + 75) = 0x3BF800000;
  *(this + 152) = 1;
  *(this + 306) = 0;
  *(this + 614) = 0;
  kaldi::nnet1::RecurrentBaseComponent::RecurrentBaseComponent(this, off_1F42C2A18);
  *this = &unk_1F42C26A8;
  *(this + 66) = &unk_1F42C28F8;
  kaldi::CuMatrix<float>::CuMatrix(this + 160, a3, a2, 1u, 0, 0);
  *(this + 27) = 0;
  *(this + 28) = 0;
  *(this + 26) = &unk_1F42BFF70;
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
  *(this + 54) = &unk_1F42BFED8;
  *(this + 472) = 0;
  *(this + 30) = 0u;
  *(this + 31) = 0u;
  *(this + 32) = 0u;
  return this;
}

void sub_1C307015C(_Unwind_Exception *a1)
{
  kaldi::CuMatrix<float>::~CuMatrix(v1 + 160);
  kaldi::nnet1::RecurrentBaseComponent::~RecurrentBaseComponent(v1, off_1F42C2A18);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v2);
  _Unwind_Resume(a1);
}

double kaldi::nnet1::ScaledDotAttention::ScaledDotAttention(kaldi::nnet1::ScaledDotAttention *this, int a2, int a3)
{
  *(this + 18) = &unk_1F42C1850;
  *(this + 38) = a2;
  *(this + 39) = a3;
  *(this + 80) = 0;
  *(this + 22) = 0;
  *(this + 23) = 0;
  *(this + 21) = 0;
  *this = &unk_1F42C3B60;
  *(this + 24) = &unk_1F42C3B88;
  v3 = kaldi::nnet1::AttentionBaseInferenceComponent::AttentionBaseInferenceComponent(this, off_1F42C6288);
  v3[18] = &unk_1F42C6198;
  *v3 = &unk_1F42C6068;
  v3[24] = &unk_1F42C6268;
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

kaldi::nnet1::MultiHeadAttention *kaldi::nnet1::MultiHeadAttention::MultiHeadAttention(kaldi::nnet1::MultiHeadAttention *this, int a2, int a3)
{
  *(this + 19) = &unk_1F42C1850;
  *(this + 40) = a2;
  *(this + 41) = a3;
  *(this + 84) = 0;
  *(this + 22) = 0;
  *(this + 23) = 0;
  *(this + 24) = 0;
  *this = &unk_1F42C3B60;
  *(this + 25) = &unk_1F42C3B88;
  kaldi::nnet1::ScaledDotAttention::ScaledDotAttention(this, &off_1F42C6518);
  *(this + 19) = &unk_1F42C6428;
  *this = &unk_1F42C62F8;
  *(this + 25) = &unk_1F42C64F8;
  *(this + 36) = -1;
  return this;
}

void sub_1C3070414(_Unwind_Exception *exception_object)
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
  *(this + 10) = &unk_1F42C1850;
  *(this + 22) = a2;
  *(this + 23) = a3;
  *(this + 48) = 0;
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 13) = 0;
  *this = &unk_1F42C3B60;
  *(this + 16) = &unk_1F42C3B88;
  result = kaldi::nnet1::AttentionBaseInferenceComponent::AttentionBaseInferenceComponent(this, off_1F42C6B38);
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  result[5] = &unk_1F42CB1B8;
  *(result + 12) = 1;
  result[9] = 0;
  result[10] = &unk_1F42C6A48;
  result[16] = &unk_1F42C6B18;
  *result = &unk_1F42C6878;
  result[1] = &unk_1F42C6930;
  result[7] = 0;
  result[8] = 0;
  return result;
}

kaldi::nnet1::SupervisedMultiHeadAttention *kaldi::nnet1::SupervisedMultiHeadAttention::SupervisedMultiHeadAttention(kaldi::nnet1::SupervisedMultiHeadAttention *this, int a2, int a3)
{
  *(this + 25) = &unk_1F42C1850;
  *(this + 52) = a2;
  *(this + 53) = a3;
  *(this + 108) = 0;
  *(this + 28) = 0;
  *(this + 29) = 0;
  *(this + 30) = 0;
  *this = &unk_1F42C3B60;
  *(this + 31) = &unk_1F42C3B88;
  kaldi::nnet1::MultiHeadAttention::MultiHeadAttention(this, off_1F42C67C8);
  *(this + 25) = &unk_1F42C66D8;
  *this = &unk_1F42C65A8;
  *(this + 31) = &unk_1F42C67A8;
  *(this + 37) = -1;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 19) = &unk_1F42BFED8;
  *(this + 192) = 0;
  return this;
}

void sub_1C30706C8(_Unwind_Exception *exception_object)
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
  *(this + 9) = &unk_1F42C1850;
  *(this + 20) = a2;
  *(this + 21) = a3;
  *(this + 44) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 12) = 0;
  *this = &unk_1F42C3B60;
  *(this + 15) = &unk_1F42C3B88;
  result = kaldi::nnet1::AttentionBaseInferenceComponent::AttentionBaseInferenceComponent(this, off_1F42C6E68);
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  result[5] = &unk_1F42CB1B8;
  *(result + 12) = 1;
  result[8] = 0;
  result[9] = &unk_1F42C6D78;
  result[15] = &unk_1F42C6E48;
  *result = &unk_1F42C6BA8;
  result[1] = &unk_1F42C6C60;
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
  *this = &unk_1F42C9448;
  *(this + 48) = 730643660;
  *(this + 52) = 1;
  *(this + 72) = 0;
  *(this + 80) = 0;
  *(this + 56) = &unk_1F42BFF70;
  *(this + 64) = 0;
  *(this + 104) = 0;
  *(this + 112) = 0;
  *(this + 88) = &unk_1F42BFF70;
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
          kaldi::KaldiErrorMessage::KaldiErrorMessage(v92, "Delete", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-component.cc", 723);
          v88 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v92, "Missing type: ", 14);
          v89 = MEMORY[0x1C692A960](v88, v5);
          v90 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v89, " ", 1);
          kaldi::nnet1::Component::TypeToMarker(v5, &__p);
          std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v90, &__p);
          std::string::~string(&__p);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(v92);
        }

        if (kaldi::g_kaldi_verbose_level >= -1)
        {
          kaldi::KaldiWarnMessage::KaldiWarnMessage(v92, "Delete", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-component.cc", 720);
          v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v92, "Missing type: ", 14);
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

          kaldi::KaldiWarnMessage::~KaldiWarnMessage(v92);
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
  std::istringstream::basic_istringstream[abi:ne200100](v12, a1, 8);
  __p = 0;
  v10 = 0;
  v11 = 0;
  v8 = 0;
  kaldi::ReadToken(v12, 0, &__p, v1, v2);
  v3 = kaldi::nnet1::Component::MarkerToComponentType(&__p);
  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v7, "Init", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-component.cc", 736, 3);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Initializing component of type ", 31);
    if (v11 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v11 >= 0)
    {
      v6 = HIBYTE(v11);
    }

    else
    {
      v6 = v10;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, p_p, v6);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v7);
  }

  kaldi::ExpectToken(v12, 0, "<InputDim>");
  kaldi::ReadBasicType<int>(v12, 0, &v8 + 4);
  kaldi::ExpectToken(v12, 0, "<OutputDim>");
  kaldi::ReadBasicType<int>(v12, 0, &v8);
  kaldi::nnet1::Component::NewComponentOfType(v3);
}

void sub_1C30720D0(_Unwind_Exception *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, ...)
{
  va_start(va, a59);
  if (a44 < 0)
  {
    operator delete(__p);
  }

  std::istringstream::~istringstream(&a45, MEMORY[0x1E69E54E0]);
  MEMORY[0x1C692AD30](va);
  _Unwind_Resume(a1);
}

uint64_t *std::istringstream::basic_istringstream[abi:ne200100](uint64_t *a1, const std::string *a2, int a3)
{
  a1[21] = 0;
  v6 = MEMORY[0x1E69E5568] + 64;
  a1[15] = MEMORY[0x1E69E5568] + 64;
  v7 = *(MEMORY[0x1E69E54E0] + 16);
  v8 = *(MEMORY[0x1E69E54E0] + 8);
  *a1 = v8;
  *(a1 + *(v8 - 24)) = v7;
  a1[1] = 0;
  v9 = (a1 + *(*a1 - 24));
  std::ios_base::init(v9, a1 + 2);
  v10 = MEMORY[0x1E69E5568] + 24;
  v9[1].__vftable = 0;
  v9[1].__fmtflags_ = -1;
  *a1 = v10;
  a1[15] = v6;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 2), a2, a3 | 8);
  return a1;
}

void sub_1C3072280(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x1C692AD30](v1);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::Component::Read(uint64_t *a1, int a2)
{
  v21 = 0;
  v22 = 0;
  __p = 0;
  v20 = 0;
  if (kaldi::Peek(a1, a2) == -1)
  {
    return 0;
  }

  kaldi::ReadToken(a1, a2, &__p, v4, v5);
  v8 = HIBYTE(v21);
  if (SHIBYTE(v21) < 0)
  {
    if (v20 != 6)
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
      v8 = HIBYTE(v21);
      if ((v21 & 0x8000000000000000) == 0)
      {
        goto LABEL_13;
      }
    }

    else if ((v21 & 0x8000000000000000) == 0)
    {
      goto LABEL_13;
    }

LABEL_16:
    if (v20 != 7)
    {
      goto LABEL_22;
    }

    v13 = __p;
    goto LABEL_18;
  }

  if (HIBYTE(v21) == 6)
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
    kaldi::ReadBasicType<int>(a1, a2, &v22 + 4);
    kaldi::ReadBasicType<int>(a1, a2, &v22);
    v17 = kaldi::nnet1::Component::MarkerToComponentType(&__p);
    kaldi::nnet1::Component::NewComponentOfType(v17);
  }

  if ((v8 & 0x80) != 0)
  {
    operator delete(__p);
  }

  return 0;
}

void sub_1C307243C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
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

  kaldi::WriteBasicType<int>(a2, a3, a1[3]);
  kaldi::WriteBasicType<int>(a2, a3, a1[2]);
  if ((a3 & 1) == 0)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "\n", 1);
  }

  return (*(*a1 + 104))(a1, a2, a3, a4);
}

void sub_1C3072550(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v19, "LimitL2NormGradient", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-component.cc", 791);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "the L2 Norm clipping value must be greater than 0, you set ", 59);
    std::ostream::operator<<();
    goto LABEL_11;
  }

  if (!a1 || !a2)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v19, "LimitL2NormGradient", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-component.cc", 792);
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
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v9, "LimitL2NormGradient", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-component.cc", 806);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "the L2 Norm clipping value must be greater than 0, you set ", 59);
    std::ostream::operator<<();
    goto LABEL_11;
  }

  if (!a1 || !a2)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v9, "LimitL2NormGradient", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-component.cc", 807);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v9, "either the gradient or the gradient norm data is not initialized");
LABEL_11:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v9);
  }

  kaldi::CuVectorBase<float>::CopyFromVec(a2, a1, a3, a4, a5);
  kaldi::CuVectorBase<float>::ApplyPow(a2, 2.0);
  if (sqrtf(COERCE_FLOAT(COERCE_UNSIGNED_INT64(kaldi::CuVectorBase<float>::Sum(a2)))) > a6)
  {

    kaldi::CuVectorBase<float>::Scale(a1);
  }
}

uint64_t kaldi::nnet1::UpdatableComponent::ClipGradient(uint64_t a1, float a2)
{
  if (a2 <= 0.0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v5, "ClipGradient", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-component.cc", 819);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "the gradient clipping value must be greater than 0, you set ", 60);
    std::ostream::operator<<();
    goto LABEL_8;
  }

  if (!a1)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v5, "ClipGradient", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-component.cc", 820);
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
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v5, "ClipGradient", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-component.cc", 826);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "the gradient clipping value must be greater than 0, you set ", 60);
    std::ostream::operator<<();
    goto LABEL_8;
  }

  if (!a1)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v5, "ClipGradient", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-component.cc", 827);
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
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v17, "RmspropGradient", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-component.cc", 835);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "the factor in RMSPROP must be [0, 1], you set ", 46);
    std::ostream::operator<<();
    goto LABEL_12;
  }

  if (!a1 || !a2)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v17, "RmspropGradient", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-component.cc", 836);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v17, "either the gradient or the gradient norm data is not initialized");
LABEL_12:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v17);
  }

  kaldi::CuMatrixBase<float>::AddMatEwpMat(a2, a1, 111, a1, 0x6F, 1.0 - a3, a3);
  kaldi::CuMatrixBase<float>::ApplyPow(a2, v6, v7, v8, v9, 0.5);
  kaldi::CuMatrixBase<float>::DivElements(a1, a2, v10, v11, v12);

  kaldi::CuMatrixBase<float>::ApplyPow(a2, v13, v14, v15, v16, 2.0);
}

void kaldi::nnet1::UpdatableComponent::RmspropGradient(uint64_t a1, uint64_t a2, float a3, uint64_t a4, uint64_t a5, const char *a6)
{
  if (a3 < 0.0 || a3 > 1.0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v12, "RmspropGradient", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-component.cc", 846);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "the factor in RMSPROP must be [0, 1], you set ", 46);
    std::ostream::operator<<();
    goto LABEL_12;
  }

  if (!a1 || !a2)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v12, "RmspropGradient", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-component.cc", 847);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v12, "either the gradient or the gradient norm data is not initialized");
LABEL_12:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v12);
  }

  kaldi::CuVectorBase<float>::AddVecVec(a2, a1, a1, a5, a6);
  kaldi::CuVectorBase<float>::ApplyPow(a2, 0.5);
  kaldi::CuVectorBase<float>::DivElements(a1, a2, v9, v10, v11);

  kaldi::CuVectorBase<float>::ApplyPow(a2, 2.0);
}

void kaldi::nnet1::Component::~Component(kaldi::nnet1::Component *this)
{
  *this = &unk_1F42C1850;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

void kaldi::nnet1::MaxPooling2DComponent::~MaxPooling2DComponent(kaldi::nnet1::MaxPooling2DComponent *this)
{
  *this = &unk_1F42C1850;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_1F42C1850;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1C692AE10);
}

void kaldi::nnet1::AddShift::~AddShift(kaldi::nnet1::AddShift *this)
{
  *this = &unk_1F42C1668;
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

  JUMPOUT(0x1C692AE10);
}

void kaldi::nnet1::UpdatableComponent::~UpdatableComponent(kaldi::nnet1::UpdatableComponent *this)
{
  *this = &unk_1F42C2E78;
  kaldi::nnet1::NnetTrainOptions::~NnetTrainOptions((this + 48));
  *this = &unk_1F42C1850;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

void kaldi::nnet1::AveragePooling2DComponent::~AveragePooling2DComponent(kaldi::nnet1::AveragePooling2DComponent *this)
{
  *this = &unk_1F42C1850;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_1F42C1850;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1C692AE10);
}

void kaldi::nnet1::AveragePoolingComponent::~AveragePoolingComponent(kaldi::nnet1::AveragePoolingComponent *this)
{
  *this = &unk_1F42C1850;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_1F42C1850;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1C692AE10);
}

void kaldi::nnet1::BlockSoftmax::~BlockSoftmax(kaldi::nnet1::BlockSoftmax *this)
{
  *this = &unk_1F42C1790;
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

  *this = &unk_1F42C1850;
  v4 = *(this + 3);
  if (v4)
  {
    *(this + 4) = v4;
    operator delete(v4);
  }
}

{
  kaldi::nnet1::BlockSoftmax::~BlockSoftmax(this);

  JUMPOUT(0x1C692AE10);
}

void kaldi::nnet1::CompressedWordVecComponent::~CompressedWordVecComponent(kaldi::nnet1::CompressedWordVecComponent *this)
{
  *this = &unk_1F42C1910;
  kaldi::CompressedMatrix::Destroy((this + 48));
  *this = &unk_1F42C1850;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  kaldi::nnet1::CompressedWordVecComponent::~CompressedWordVecComponent(this);

  JUMPOUT(0x1C692AE10);
}

void kaldi::nnet1::ConvolutionalComponent::~ConvolutionalComponent(kaldi::nnet1::ConvolutionalComponent *this)
{
  *this = &unk_1F42C19D0;
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

  JUMPOUT(0x1C692AE10);
}

void kaldi::nnet1::CopyComponent::~CopyComponent(kaldi::nnet1::CopyComponent *this)
{
  *this = &unk_1F42C1AF8;
  v2 = *(this + 7);
  if (v2)
  {
    free(v2);
  }

  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *this = &unk_1F42C1850;
  v3 = *(this + 3);
  if (v3)
  {
    *(this + 4) = v3;
    operator delete(v3);
  }
}

{
  kaldi::nnet1::CopyComponent::~CopyComponent(this);

  JUMPOUT(0x1C692AE10);
}

void kaldi::nnet1::Desplice::~Desplice(kaldi::nnet1::Desplice *this)
{
  *this = &unk_1F42C1BB8;
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
  *this = &unk_1F42C1850;
  v6 = *(this + 3);
  if (v6)
  {
    *(this + 4) = v6;
    operator delete(v6);
  }
}

{
  kaldi::nnet1::Desplice::~Desplice(this);

  JUMPOUT(0x1C692AE10);
}

void kaldi::nnet1::Dropout::~Dropout(kaldi::nnet1::Dropout *this)
{
  *this = &unk_1F42C1C78;
  kaldi::CuMatrix<float>::~CuMatrix(this + 144);
  kaldi::CuRand<float>::~CuRand(this + 48);
  *this = &unk_1F42C1850;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  kaldi::nnet1::Dropout::~Dropout(this);

  JUMPOUT(0x1C692AE10);
}

void kaldi::nnet1::DuplicateComponent::~DuplicateComponent(kaldi::nnet1::DuplicateComponent *this)
{
  *this = &unk_1F42C1850;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_1F42C1850;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1C692AE10);
}

void kaldi::nnet1::FofeWordVecComponent::~FofeWordVecComponent(kaldi::nnet1::FofeWordVecComponent *this)
{
  *this = &unk_1F42C1D38;
  *(this + 11) = &unk_1F42C1E68;
  kaldi::CuMatrix<float>::~CuMatrix(this + 440);
  kaldi::CuMatrix<float>::~CuMatrix(this + 392);

  kaldi::nnet1::WordVecComponent::~WordVecComponent(this);
}

{
  kaldi::nnet1::FofeWordVecComponent::~FofeWordVecComponent(this);

  JUMPOUT(0x1C692AE10);
}

void kaldi::nnet1::WordVecComponent::~WordVecComponent(kaldi::nnet1::WordVecComponent *this)
{
  *this = &unk_1F42C2FA0;
  *(this + 11) = &unk_1F42C30D0;
  kaldi::nnet1::QuantizerResidualAggregator::~QuantizerResidualAggregator(this + 39);
  kaldi::CuMatrix<float>::~CuMatrix(this + 264);
  kaldi::CuMatrix<float>::~CuMatrix(this + 192);
  kaldi::CuMatrix<float>::~CuMatrix(this + 144);
  kaldi::CuMatrix<float>::~CuMatrix(this + 96);

  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(this);
}

{
  kaldi::nnet1::WordVecComponent::~WordVecComponent(this);

  JUMPOUT(0x1C692AE10);
}

void non-virtual thunk tokaldi::nnet1::FofeWordVecComponent::~FofeWordVecComponent(kaldi::nnet1::FofeWordVecComponent *this)
{
  kaldi::nnet1::FofeWordVecComponent::~FofeWordVecComponent((this - 88));
}

{
  kaldi::nnet1::FofeWordVecComponent::~FofeWordVecComponent((this - 88));

  JUMPOUT(0x1C692AE10);
}

void kaldi::nnet1::FramePoolingComponent::~FramePoolingComponent(kaldi::nnet1::FramePoolingComponent *this)
{
  *this = &unk_1F42C1E90;
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

  JUMPOUT(0x1C692AE10);
}

void kaldi::nnet1::HistoricalComponent::~HistoricalComponent(kaldi::nnet1::HistoricalComponent *this)
{
  *this = &unk_1F42C1FB8;
  v1 = (this + 8);
  kaldi::nnet1::HistoryOptions::~HistoryOptions((this + 32));
  v2 = v1;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v2);
}

void kaldi::nnet1::IdentityComponent::~IdentityComponent(kaldi::nnet1::IdentityComponent *this)
{
  *this = &unk_1F42C1850;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_1F42C1850;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1C692AE10);
}

void kaldi::nnet1::InterpolationComponent::~InterpolationComponent(kaldi::nnet1::InterpolationComponent *this)
{
  *this = &unk_1F42C2028;
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  *this = &unk_1F42C1850;
  v3 = *(this + 3);
  if (v3)
  {
    *(this + 4) = v3;
    operator delete(v3);
  }
}

{
  kaldi::nnet1::InterpolationComponent::~InterpolationComponent(this);

  JUMPOUT(0x1C692AE10);
}

void kaldi::nnet1::KlHmm::~KlHmm(kaldi::nnet1::KlHmm *this)
{
  *this = &unk_1F42C20F0;
  kaldi::CuMatrix<float>::~CuMatrix(this + 88);
  kaldi::Matrix<float>::~Matrix(this + 48);
  *this = &unk_1F42C1850;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  kaldi::nnet1::KlHmm::~KlHmm(this);

  JUMPOUT(0x1C692AE10);
}

void kaldi::nnet1::LogSoftmax::~LogSoftmax(kaldi::nnet1::LogSoftmax *this)
{
  *this = &unk_1F42C1850;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_1F42C1850;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1C692AE10);
}

void kaldi::nnet1::MaxoutComponent::~MaxoutComponent(kaldi::nnet1::MaxoutComponent *this)
{
  *this = &unk_1F42C1850;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_1F42C1850;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1C692AE10);
}

void kaldi::nnet1::MaxPoolingComponent::~MaxPoolingComponent(kaldi::nnet1::MaxPoolingComponent *this)
{
  *this = &unk_1F42C1850;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_1F42C1850;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1C692AE10);
}

void kaldi::nnet1::MultiSoftmax::~MultiSoftmax(kaldi::nnet1::MultiSoftmax *this)
{
  kaldi::nnet1::BlockSoftmax::~BlockSoftmax(this);

  JUMPOUT(0x1C692AE10);
}

void kaldi::nnet1::ParallelComponent::~ParallelComponent(kaldi::nnet1::ParallelComponent *this, uint64_t *a2)
{
  v4 = *a2;
  *this = *a2;
  *(this + *(v4 - 24)) = a2[3];
  *(this + 20) = &unk_1F42C2310;
  *(this + 21) = &unk_1F42C2338;
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
  *this = &unk_1F42C1FB8;
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

  JUMPOUT(0x1C692AE10);
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
  *this = &unk_1F42C1850;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_1F42C1850;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1C692AE10);
}

void kaldi::nnet1::Rbm::~Rbm(kaldi::nnet1::Rbm *this)
{
  *this = &unk_1F42C25B8;
  kaldi::CuVector<float>::~CuVector(this + 33);
  kaldi::CuVector<float>::~CuVector(this + 29);
  kaldi::CuMatrix<float>::~CuMatrix(this + 184);
  kaldi::CuVector<float>::~CuVector(this + 19);
  kaldi::CuVector<float>::~CuVector(this + 15);
  kaldi::CuMatrix<float>::~CuMatrix(this + 72);
  *this = &unk_1F42C1850;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  kaldi::nnet1::Rbm::~Rbm(this);

  JUMPOUT(0x1C692AE10);
}

void kaldi::nnet1::RectifiedLinearComponent::~RectifiedLinearComponent(kaldi::nnet1::RectifiedLinearComponent *this)
{
  *this = &unk_1F42C1850;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_1F42C1850;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1C692AE10);
}

void kaldi::nnet1::ExponentialLinearComponent::~ExponentialLinearComponent(kaldi::nnet1::ExponentialLinearComponent *this)
{
  *this = &unk_1F42C1850;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_1F42C1850;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1C692AE10);
}

void kaldi::nnet1::ScaledExponentialLinearComponent::~ScaledExponentialLinearComponent(kaldi::nnet1::ScaledExponentialLinearComponent *this)
{
  *this = &unk_1F42C1850;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_1F42C1850;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1C692AE10);
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

  JUMPOUT(0x1C692AE10);
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
  *this = &unk_1F42C1850;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_1F42C1850;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1C692AE10);
}

void kaldi::nnet1::Rescale::~Rescale(kaldi::nnet1::Rescale *this)
{
  *this = &unk_1F42C2A40;
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

  JUMPOUT(0x1C692AE10);
}

void kaldi::nnet1::SentenceAveragingComponent::~SentenceAveragingComponent(kaldi::nnet1::SentenceAveragingComponent *this)
{
  *this = &unk_1F42C2B68;
  kaldi::nnet1::Nnet::~Nnet((this + 88));

  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(this);
}

{
  *this = &unk_1F42C2B68;
  kaldi::nnet1::Nnet::~Nnet((this + 88));
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(this);

  JUMPOUT(0x1C692AE10);
}

void kaldi::nnet1::SharedNceComponent::~SharedNceComponent(kaldi::nnet1::SharedNceComponent *this)
{
  *this = &unk_1F42C2C90;
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

  JUMPOUT(0x1C692AE10);
}

void kaldi::nnet1::Sigmoid::~Sigmoid(kaldi::nnet1::Sigmoid *this)
{
  *this = &unk_1F42C1850;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_1F42C1850;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1C692AE10);
}

void kaldi::nnet1::Softmax::~Softmax(kaldi::nnet1::Softmax *this)
{
  *this = &unk_1F42C1850;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_1F42C1850;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1C692AE10);
}

void kaldi::nnet1::Splice::~Splice(kaldi::nnet1::Splice *this)
{
  *this = &unk_1F42C2DB8;
  v2 = *(this + 7);
  if (v2)
  {
    free(v2);
  }

  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *this = &unk_1F42C1850;
  v3 = *(this + 3);
  if (v3)
  {
    *(this + 4) = v3;
    operator delete(v3);
  }
}

{
  kaldi::nnet1::Splice::~Splice(this);

  JUMPOUT(0x1C692AE10);
}

void kaldi::nnet1::Tanh::~Tanh(kaldi::nnet1::Tanh *this)
{
  *this = &unk_1F42C1850;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_1F42C1850;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1C692AE10);
}

void kaldi::nnet1::TemporalMaxPoolingComponent::~TemporalMaxPoolingComponent(kaldi::nnet1::TemporalMaxPoolingComponent *this)
{
  *this = &unk_1F42C1850;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_1F42C1850;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1C692AE10);
}

void non-virtual thunk tokaldi::nnet1::WordVecComponent::~WordVecComponent(kaldi::nnet1::WordVecComponent *this)
{
  kaldi::nnet1::WordVecComponent::~WordVecComponent((this - 88));
}

{
  kaldi::nnet1::WordVecComponent::~WordVecComponent((this - 88));

  JUMPOUT(0x1C692AE10);
}

void kaldi::nnet1::CompressedWordTransComponent::~CompressedWordTransComponent(kaldi::nnet1::CompressedWordTransComponent *this)
{
  *this = &unk_1F42C30F8;
  kaldi::CompressedMatrix::Destroy((this + 80));
  kaldi::CuVector<float>::~CuVector(this + 6);
  *this = &unk_1F42C1850;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  kaldi::nnet1::CompressedWordTransComponent::~CompressedWordTransComponent(this);

  JUMPOUT(0x1C692AE10);
}

float kaldi::nnet1::RelaxedSoftmax::InitData(uint64_t a1, uint64_t *a2)
{
  kaldi::ExpectToken(a2, 0, "<RelaxFactor>");
  kaldi::ReadBasicType<float>(a2, 0, (a1 + 48));
  result = *(a1 + 48);
  if (result <= 0.0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v6, "InitData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-activation.h", 93);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Relaxation factor must be positive; found: ", 43);
    v5 = *(a1 + 48);
    std::ostream::operator<<();
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v6);
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

float kaldi::nnet1::RelaxedSoftmax::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, double a6)
{
  LODWORD(a6) = *(a1 + 48);
  kaldi::CuVectorBase<float>::AddVec(a3, a2, a3, a4, a5, a6, 0.0);

  return kaldi::CuVectorBase<float>::ApplySoftMax(a3, v7);
}

float kaldi::nnet1::RelaxedSoftmax::ReadData(uint64_t a1, uint64_t *a2, int a3)
{
  kaldi::ExpectToken(a2, a3, "<RelaxFactor>");
  kaldi::ReadBasicType<float>(a2, a3, (a1 + 48));
  result = *(a1 + 48);
  if (result <= 0.0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v8, "ReadData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-activation.h", 99);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "Relaxation factor must be positive; found: ", 43);
    v7 = *(a1 + 48);
    std::ostream::operator<<();
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v8);
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
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v22, "InitData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-activation.h", 202);
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

void sub_1C3075784(_Unwind_Exception *a1)
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
      v11 = &unk_1F42BFE90;
      v12 = 0u;
      v13 = 0u;
      kaldi::CuMatrixBase<float>::~CuMatrixBase(&v11);
      v14 = &unk_1F42BFE90;
      v15 = 0u;
      v16 = 0u;
      result = kaldi::CuMatrixBase<float>::~CuMatrixBase(&v14);
      ++v7;
      v3 = v6[6];
    }

    while (v7 < (v6[7] - v3) >> 2);
  }

  return result;
}

void sub_1C30758DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  a14 = &unk_1F42BFE90;
  *(v14 + 8) = 0u;
  *(v14 + 24) = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&a14);
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
      v22[0] = &unk_1F42BFF70;
      kaldi::CuVector<float>::Resize(v22, HIDWORD(v24), 0, v10, v11);
      kaldi::CuVectorBase<float>::AddRowSumMat(v22, &v23, v12, v13, v14);
      kaldi::CuVector<float>::CuVector(v21, v22, v15, v16, v17);
      kaldi::CuVectorBase<float>::Scale(v21);
      kaldi::CuVectorBase<float>::Add(v21, 1.0);
      kaldi::CuMatrixBase<float>::MulRowsVec(&v23, v21, v18, v19, v20);
      kaldi::CuVector<float>::~CuVector(v21);
      kaldi::CuVector<float>::~CuVector(v22);
      v23 = &unk_1F42BFE90;
      v24 = 0u;
      v25 = 0u;
      result = kaldi::CuMatrixBase<float>::~CuMatrixBase(&v23);
      ++v9;
      v8 = a1[6];
    }

    while (v9 < (a1[7] - v8) >> 2);
  }

  return result;
}

void sub_1C3075AA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  a18 = &unk_1F42BFE90;
  *(v18 + 8) = 0u;
  *(v18 + 24) = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&a18);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::BlockSoftmax::ReadData(std::vector<int> *a1, void *a2, int a3)
{
  kaldi::ReadIntegerVector<int>(a2, a3, a1 + 2, 0, 0, 0, 0);

  kaldi::nnet1::BlockSoftmax::InitOffset(a1);
}

uint64_t kaldi::nnet1::Sigmoid::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  return kaldi::CuMatrixBase<float>::Sigmoid(a3, a2, a3, a4, a5);
}

{
  return kaldi::CuVectorBase<float>::Sigmoid(a3, a2, a3, a4, a5);
}

void kaldi::nnet1::Tanh::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  kaldi::CuMatrixBase<float>::Tanh(a3, a2, a3, a4, a5);
}

{
  kaldi::CuVectorBase<float>::Tanh(a3, a2, a3, a4, a5);
}

void sub_1C3075E20(_Unwind_Exception *a1)
{
  kaldi::CuRand<float>::~CuRand((v2 + 6));
  *v2 = v3;
  v5 = v2[3];
  if (v5)
  {
    v2[4] = v5;
    operator delete(v5);
  }

  MEMORY[0x1C692AE10](v2, v1);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::Dropout::InitData(uint64_t a1, void *a2)
{
  std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  v25 = 0;
  v26 = 0;
  v6 = (a1 + 192);
  v27 = 0;
  while (1)
  {
    if ((*(a2 + *(*a2 - 24) + 32) & 2) != 0)
    {
      goto LABEL_28;
    }

    kaldi::ReadToken(a2, 0, &v25, v4, v5);
    if (SHIBYTE(v27) < 0)
    {
      v8 = v26;
      if (v26 != 18)
      {
        goto LABEL_21;
      }

      v7 = v25;
    }

    else
    {
      if (HIBYTE(v27) != 18)
      {
        goto LABEL_18;
      }

      v7 = &v25;
    }

    v9 = *v7;
    v10 = v7[1];
    v11 = *(v7 + 8);
    v12 = v9 == 0x74756F706F72443CLL && v10 == 0x6F69746E65746552;
    if (!v12 || v11 != 15982)
    {
      break;
    }

    kaldi::ReadBasicType<float>(a2, 0, v6);
  }

  if (v27 < 0)
  {
    v8 = v26;
LABEL_21:
    if (v8 != 12)
    {
LABEL_35:
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v24, "InitData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-activation.h", 342);
      v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "Unknown token ", 14);
      if (v27 >= 0)
      {
        v20 = &v25;
      }

      else
      {
        v20 = v25;
      }

      if (v27 >= 0)
      {
        v21 = HIBYTE(v27);
      }

      else
      {
        v21 = v26;
      }

      v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, v20, v21);
      v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, ", a typo in config?", 19);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, " (DropoutRetention)", 19);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v24);
    }

    v14 = v25;
  }

  else
  {
LABEL_18:
    if (HIBYTE(v27) != 12)
    {
      goto LABEL_35;
    }

    v14 = &v25;
  }

  v15 = *v14;
  v16 = *(v14 + 2);
  if (v15 != 0x6E6F706D6F432F3CLL || v16 != 1047817829)
  {
    goto LABEL_35;
  }

LABEL_28:
  if (*v6 <= 0.0 || *v6 > 1.0)
  {
    kaldi::KaldiAssertFailure_("InitData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-activation.h", 0x159, "dropout_retention_ > 0.0 && dropout_retention_ <= 1.0", v5);
  }

  if (SHIBYTE(v27) < 0)
  {
    operator delete(v25);
  }
}

void sub_1C3076098(_Unwind_Exception *a1)
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

uint64_t kaldi::nnet1::Dropout::PropagateFnc(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4, const char *a5)
{
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(a3, a2, 111, a4, a5);
  kaldi::CuMatrix<float>::Resize(a1 + 144, a3[5], a3[4], 0, 0);
  v7.i32[0] = *(a1 + 192);
  kaldi::CuMatrixBase<float>::Set(a1 + 144, v7);
  kaldi::CuRand<float>::BinarizeProbs(a1 + 48, a1 + 144, a1 + 144);
  kaldi::CuMatrixBase<float>::MulElements(a3, a1 + 144, v8, v9, v10);
  v11 = 1.0 / *(a1 + 192);

  return kaldi::CuMatrixBase<float>::Scale(a3, v11);
}

uint64_t kaldi::nnet1::Dropout::BackpropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(a5, a4, 111, a4, a5);
  kaldi::CuMatrixBase<float>::MulElements(a5, a1 + 144, v7, v8, v9);
  v10 = 1.0 / *(a1 + 192);

  return kaldi::CuMatrixBase<float>::Scale(a5, v10);
}

uint64_t kaldi::nnet1::Dropout::ReadData(uint64_t a1, uint64_t *a2, int a3)
{
  result = kaldi::Peek(a2, a3);
  if (result == 60)
  {
    kaldi::ExpectToken(a2, a3, "<DropoutRetention>");
    result = kaldi::ReadBasicType<float>(a2, a3, (a1 + 192));
  }

  v8 = *(a1 + 192);
  if (v8 <= 0.0 || v8 > 1.0)
  {
    kaldi::KaldiAssertFailure_("ReadData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-activation.h", 0x161, "dropout_retention_ > 0.0 && dropout_retention_ <= 1.0", v7);
  }

  return result;
}

uint64_t kaldi::nnet1::MaxoutComponent::BackpropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  kaldi::CuMatrixBase<float>::MaxoutDerivative(a5, a2, a3, a4, a5);

  return kaldi::CuMatrixBase<float>::MulRowsGroupMat(a5, a4, v7, v8, v9);
}

uint64_t kaldi::nnet1::PNormComponent::InitData(uint64_t a1, uint64_t *a2)
{
  kaldi::ExpectToken(a2, 0, "<P>");
  result = kaldi::ReadBasicType<float>(a2, 0, (a1 + 48));
  v6 = *(a1 + 8);
  v7 = *(a1 + 12);
  if (v6 < v7 || v7 <= 0)
  {
    kaldi::KaldiAssertFailure_("InitData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-activation.h", 0x1CB, "(input_dim_ >= output_dim_) && (output_dim_ > 0)", v5);
  }

  if (v6 % v7)
  {
    kaldi::KaldiAssertFailure_("InitData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-activation.h", 0x1CC, "input_dim_ % output_dim_ == 0", v5);
  }

  return result;
}

void *kaldi::nnet1::PNormComponent::WriteData(uint64_t a1, void *a2, const char *a3, uint64_t a4, const char *a5)
{
  v5 = a3;
  kaldi::WriteToken(a2, a3, "<P>", a4, a5);
  v8 = *(a1 + 48);

  return kaldi::WriteBasicType<float>(a2, v5);
}

uint64_t kaldi::nnet1::PNormComponent::BackpropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  kaldi::CuMatrixBase<float>::GroupPnormDeriv(a5, a2, a3, a4, a5, *(a1 + 48));

  return kaldi::CuMatrixBase<float>::MulRowsGroupMat(a5, a4, v7, v8, v9);
}

uint64_t kaldi::nnet1::PNormComponent::ReadData(uint64_t a1, uint64_t *a2, int a3)
{
  kaldi::ExpectToken(a2, a3, "<P>");
  result = kaldi::ReadBasicType<float>(a2, a3, (a1 + 48));
  v8 = *(a1 + 8);
  v9 = *(a1 + 12);
  if (v8 < v9 || v9 <= 0)
  {
    kaldi::KaldiAssertFailure_("ReadData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-activation.h", 0x1D2, "(input_dim_ >= output_dim_) && (output_dim_ > 0)", v7);
  }

  if (v8 % v9)
  {
    kaldi::KaldiAssertFailure_("ReadData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-activation.h", 0x1D3, "input_dim_ % output_dim_ == 0", v7);
  }

  return result;
}

uint64_t kaldi::nnet1::RectifiedLinearComponent::PropagateFnc(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, const char *a5)
{
  kaldi::CuVectorBase<float>::CopyFromVec(a3, a2, a3, a4, a5);

  return kaldi::CuVectorBase<float>::ApplyFloor(a3, 0.0);
}

uint64_t kaldi::nnet1::ExponentialLinearComponent::InitData(uint64_t a1, uint64_t *a2)
{
  kaldi::ExpectToken(a2, 0, "<Alpha>");

  return kaldi::ReadBasicType<float>(a2, 0, (a1 + 48));
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
  v21[0] = &unk_1F42BFF70;
  memset(&v21[1], 0, 24);
  kaldi::CuVector<float>::Resize(v21, v8, 0, a4, a5);
  kaldi::CuVectorBase<float>::CopyFromVec(v21, a2, v9, v10, v11);
  kaldi::CuVectorBase<float>::ApplyCeiling(v21, 0.0);
  kaldi::CuVectorBase<float>::ApplyExp(v21);
  kaldi::CuVectorBase<float>::Add(v21, -1.0);
  v12 = *(a1 + 48);
  kaldi::CuVectorBase<float>::Scale(v21);
  kaldi::CuVectorBase<float>::CopyFromVec(a3, a2, v13, v14, v15);
  kaldi::CuVectorBase<float>::ApplyFloor(a3, 0.0);
  LODWORD(v16) = 1.0;
  kaldi::CuVectorBase<float>::AddVec(a3, v21, v17, v18, v19, v16, 1.0);
  return kaldi::CuVector<float>::~CuVector(v21);
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

void sub_1C3076B80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  kaldi::CuMatrix<float>::~CuMatrix(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::ExponentialLinearComponent::ReadData(uint64_t a1, uint64_t *a2, int a3)
{
  kaldi::ExpectToken(a2, a3, "<Alpha>");

  return kaldi::ReadBasicType<float>(a2, a3, (a1 + 48));
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
  v22[0] = &unk_1F42BFF70;
  memset(&v22[1], 0, 24);
  kaldi::CuVector<float>::Resize(v22, v8, 0, a4, a5);
  kaldi::CuVectorBase<float>::CopyFromVec(v22, a2, v9, v10, v11);
  kaldi::CuVectorBase<float>::ApplyCeiling(v22, 0.0);
  kaldi::CuVectorBase<float>::ApplyExp(v22);
  kaldi::CuVectorBase<float>::Add(v22, -1.0);
  v12 = *(a1 + 48);
  kaldi::CuVectorBase<float>::Scale(v22);
  kaldi::CuVectorBase<float>::CopyFromVec(a3, a2, v13, v14, v15);
  kaldi::CuVectorBase<float>::ApplyFloor(a3, 0.0);
  LODWORD(v16) = 1.0;
  kaldi::CuVectorBase<float>::AddVec(a3, v22, v17, v18, v19, v16, 1.0);
  v20 = *(a1 + 52);
  kaldi::CuVectorBase<float>::Scale(a3);
  return kaldi::CuVector<float>::~CuVector(v22);
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

void sub_1C3077000(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  kaldi::CuMatrix<float>::~CuMatrix(va);
  _Unwind_Resume(a1);
}

void sub_1C30770DC(_Unwind_Exception *a1)
{
  *v2 = v3;
  v5 = v2[3];
  if (v5)
  {
    v2[4] = v5;
    operator delete(v5);
  }

  MEMORY[0x1C692AE10](v2, v1);
  _Unwind_Resume(a1);
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
  v10 = *MEMORY[0x1E69E54E8];
  *(&v10 + *(v10 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v11 = MEMORY[0x1E69E5548] + 16;
  if (v13 < 0)
  {
    operator delete(v12[7].__locale_);
  }

  v11 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v12);
  std::ostream::~ostream();
  return MEMORY[0x1C692AD30](&v14);
}

void sub_1C30772AC(_Unwind_Exception *a1, uint64_t a2, ...)
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
    kaldi::KaldiErrorMessage::KaldiErrorMessage(&__p, "InitData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-various.h", 288);
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
            kaldi::KaldiAssertFailure_("InitData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-various.h", 0x136, "(min <= max && step > 0) || (min >= max && step < 0)", a5);
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
            kaldi::KaldiAssertFailure_("InitData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-various.h", 0x12F, "min <= max", a5);
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
          kaldi::KaldiErrorMessage::KaldiErrorMessage(&__p, "InitData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-various.h", 317);
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
    kaldi::KaldiAssertFailure_("InitData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-various.h", 0x146, "frame_offsets_.Dim() * InputDim() == OutputDim()", v34);
  }

  if (SHIBYTE(v46) < 0)
  {
    operator delete(v44);
  }

  __p = &v47;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (v50.__begin_)
  {
    v50.__end_ = v50.__begin_;
    operator delete(v50.__begin_);
  }
}

void sub_1C3077830(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&__p);
  v17 = *(v15 - 112);
  if (v17)
  {
    *(v15 - 104) = v17;
    operator delete(v17);
  }

  _Unwind_Resume(a1);
}

void sub_1C3077838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  if (*(v10 - 137) < 0)
  {
    operator delete(*(v10 - 160));
  }

  a10 = (v10 - 136);
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a10);
  v12 = *(v10 - 112);
  if (v12)
  {
    *(v10 - 104) = v12;
    operator delete(v12);
  }

  _Unwind_Resume(a1);
}

void sub_1C3077840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

  JUMPOUT(0x1C3077864);
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

void sub_1C3077918(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::Splice::BackpropagateFnc()
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v1, "BackpropagateFnc", "../engine/common/libquasar/libkaldi/src/nnet/nnet-various.h", 359);
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
    kaldi::KaldiAssertFailure_("ReadData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-various.h", 0x14D, "frame_offsets_.Dim() * InputDim() == OutputDim()", v6);
  }

  if (__p.__begin_)
  {
    __p.__end_ = __p.__begin_;
    operator delete(__p.__begin_);
  }
}

void sub_1C3077A70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C3077B44(_Unwind_Exception *a1)
{
  *v2 = v3;
  v5 = v2[3];
  if (v5)
  {
    v2[4] = v5;
    operator delete(v5);
  }

  MEMORY[0x1C692AE10](v2, v1);
  _Unwind_Resume(a1);
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
    kaldi::KaldiErrorMessage::KaldiErrorMessage(&__p, "InitData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-various.h", 401);
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
            kaldi::KaldiAssertFailure_("InitData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-various.h", 0x1A7, "(min <= max && step > 0) || (min >= max && step < 0)", a5);
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
            kaldi::KaldiAssertFailure_("InitData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-various.h", 0x1A0, "min <= max", a5);
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
          kaldi::KaldiErrorMessage::KaldiErrorMessage(&__p, "InitData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-various.h", 430);
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
        v46 = 444;
        v38 = "copy_from_indices[i] < InputDim()";
        goto LABEL_102;
      }

      if (!--v37)
      {
        goto LABEL_87;
      }
    }

    v46 = 443;
LABEL_102:
    kaldi::KaldiAssertFailure_("InitData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-various.h", v46, v38, v35);
  }

LABEL_87:
  if (*(a1 + 48) != *(a1 + 12))
  {
    kaldi::KaldiAssertFailure_("InitData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-various.h", 0x1BF, "copy_from_indices_.Dim() == OutputDim()", v35);
  }

  if (SHIBYTE(v52) < 0)
  {
    operator delete(v51);
  }

  __p = &v53;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (v56.__begin_)
  {
    v56.__end_ = v56.__begin_;
    operator delete(v56.__begin_);
  }
}

void sub_1C3078160(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&__p);
  v17 = *(v15 - 112);
  if (v17)
  {
    *(v15 - 104) = v17;
    operator delete(v17);
  }

  _Unwind_Resume(a1);
}

void sub_1C3078168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  if (*(v10 - 137) < 0)
  {
    operator delete(*(v10 - 160));
  }

  a10 = (v10 - 136);
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a10);
  v12 = *(v10 - 112);
  if (v12)
  {
    *(v10 - 104) = v12;
    operator delete(v12);
  }

  _Unwind_Resume(a1);
}

void sub_1C3078170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

  JUMPOUT(0x1C3078194);
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

  kaldi::WriteIntegerByteArray<int>(a2, a3, 0, (v8 - begin) >> 2, begin);
  if (__p.__begin_)
  {
    __p.__end_ = __p.__begin_;
    operator delete(__p.__begin_);
  }
}

void sub_1C3078270(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
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
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v7, "BackpropagateFnc", "../engine/common/libquasar/libkaldi/src/nnet/nnet-various.h", 493);
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
    kaldi::KaldiAssertFailure_("ReadData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-various.h", 0x1CA, "copy_from_indices_.Dim() == OutputDim()", v9);
  }

  if (__p.__begin_)
  {
    __p.__end_ = __p.__begin_;
    operator delete(__p.__begin_);
  }
}

void sub_1C307844C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
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
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v4, "InitData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-various.h", 522);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "Unity component doesn't expect any tokens");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  return result;
}

void kaldi::nnet1::DuplicateComponent::InitData(_DWORD *a1, uint64_t *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  a1[14] = 1;
  v7 = a1 + 14;
  v33 = 0uLL;
  v34 = 0;
  v8 = a2 + 4;
  v9 = a1 + 13;
  while (1)
  {
    if ((*(v8 + *(*a2 - 24)) & 2) != 0)
    {
      goto LABEL_48;
    }

    kaldi::ReadToken(a2, 0, &v33, a4, a5);
    if (SHIBYTE(v34) < 0)
    {
      break;
    }

    if (HIBYTE(v34) != 15)
    {
      if (HIBYTE(v34) != 16)
      {
        goto LABEL_38;
      }

      if (v33 != 0x6163696C7075443CLL || *(&v33 + 1) != 0x3E74726174536574)
      {
        goto LABEL_55;
      }

LABEL_11:
      LODWORD(v32[0]) = 0;
      kaldi::ReadBasicType<int>(a2, 0, v32);
      a1[12] = v32[0];
      goto LABEL_36;
    }

    v16 = v33 == 0x6163696C7075443CLL && *(&v33 + 7) == 0x3E657A6953657461;
    v13 = v9;
    if (!v16)
    {
      v15 = &v33;
      goto LABEL_30;
    }

LABEL_35:
    kaldi::ReadBasicType<int>(a2, 0, v13);
LABEL_36:
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }

  if (*(&v33 + 1) == 15)
  {
    v12 = *v33 == 0x6163696C7075443CLL && *(v33 + 7) == 0x3E657A6953657461;
    v13 = v9;
    if (v12)
    {
      goto LABEL_35;
    }
  }

  else if (*(&v33 + 1) == 16 && *v33 == 0x6163696C7075443CLL && *(v33 + 8) == 0x3E74726174536574)
  {
    goto LABEL_11;
  }

  v14 = *(&v33 + 1);
  if (*(&v33 + 1) != 15)
  {
    goto LABEL_41;
  }

  v15 = v33;
LABEL_30:
  v17 = *v15;
  v18 = *(v15 + 7);
  v19 = v17 == 0x6C7075446D754E3CLL && v18 == 0x3E7365746163696CLL;
  v13 = v7;
  if (v19)
  {
    goto LABEL_35;
  }

  if ((v34 & 0x8000000000000000) == 0)
  {
LABEL_38:
    if (HIBYTE(v34) == 12)
    {
      v20 = &v33;
      goto LABEL_43;
    }

    goto LABEL_55;
  }

  v14 = *(&v33 + 1);
LABEL_41:
  if (v14 != 12)
  {
    goto LABEL_55;
  }

  v20 = v33;
LABEL_43:
  v21 = *v20;
  v22 = *(v20 + 2);
  if (v21 != 0x6E6F706D6F432F3CLL || v22 != 1047817829)
  {
LABEL_55:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v32, "InitData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-various.h", 590);
    v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "Unknown token ", 14);
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

    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, v28, v29);
    v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, ", a typo in config?", 19);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, " (DuplicateStart|DuplicateSize|NumDuplicates)", 45);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v32);
  }

LABEL_48:
  v24 = a1[13];
  v25 = a1[2];
  if (v25 + a1[14] * v24 != a1[3])
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v32, "InitData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-various.h", 597);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "Requested duplication doesn't match the output and input sizes", 62);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v32);
  }

  if (v24 < 0 || (v26 = a1[12], v26 < 0) || v26 + v24 > v25)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v32, "InitData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-various.h", 601);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "Duplication parameters out of range", 35);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v32);
  }

  if (SHIBYTE(v34) < 0)
  {
    operator delete(v33);
  }
}

void sub_1C3078A2C(_Unwind_Exception *exception_object)
{
  if (*(v1 - 89) < 0)
  {
    operator delete(*(v1 - 112));
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::nnet1::DuplicateComponent::WriteData(unsigned int *a1, void *a2, int a3)
{
  kaldi::WriteBasicType<int>(a2, a3, a1[12]);
  kaldi::WriteBasicType<int>(a2, a3, a1[13]);
  v6 = a1[14];

  return kaldi::WriteBasicType<int>(a2, a3, v6);
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
        v14 = &unk_1F42BFE90;
        v15 = 0u;
        v16 = 0u;
        kaldi::CuMatrixBase<float>::~CuMatrixBase(&v14);
        ++v9;
      }

      while (v9 < a1[14]);
    }

    v17 = &unk_1F42BFE90;
    v18 = 0u;
    v19 = 0u;
    kaldi::CuMatrixBase<float>::~CuMatrixBase(&v17);
  }

  v20 = &unk_1F42BFE90;
  v21 = 0u;
  v22 = 0u;
  return kaldi::CuMatrixBase<float>::~CuMatrixBase(&v20);
}

void sub_1C3078C34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, __int128 a21, __int128 a22)
{
  a20 = &unk_1F42BFE90;
  a21 = 0u;
  a22 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&a20);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::DuplicateComponent::BackpropagateFnc(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v19, a4, 0, *(a4 + 20), 0, a1[2]);
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(a5, &v19, 111, v8, v9);
  v19 = &unk_1F42BFE90;
  v20 = 0u;
  v21 = 0u;
  result = kaldi::CuMatrixBase<float>::~CuMatrixBase(&v19);
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
        v16 = &unk_1F42BFE90;
        v17 = 0u;
        v18 = 0u;
        kaldi::CuMatrixBase<float>::~CuMatrixBase(&v16);
        ++v12;
      }

      while (v12 < a1[14]);
    }

    v19 = &unk_1F42BFE90;
    v20 = 0u;
    v21 = 0u;
    return kaldi::CuMatrixBase<float>::~CuMatrixBase(&v19);
  }

  return result;
}

void sub_1C3078E70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, __int128 a15, __int128 a16)
{
  a14 = &unk_1F42BFE90;
  a15 = 0u;
  a16 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&a14);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::DuplicateComponent::ReadData(_DWORD *a1, void *a2, int a3)
{
  v7 = 0;
  kaldi::ReadBasicType<int>(a2, a3, &v7);
  a1[12] = v7;
  kaldi::ReadBasicType<int>(a2, a3, &v7);
  a1[13] = v7;
  result = kaldi::ReadBasicType<int>(a2, a3, &v7);
  a1[14] = v7;
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
  v12 = *MEMORY[0x1E69E54E8];
  *(&v12 + *(v12 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v13 = MEMORY[0x1E69E5548] + 16;
  if (v15 < 0)
  {
    operator delete(v14[7].__locale_);
  }

  v13 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v14);
  std::ostream::~ostream();
  return MEMORY[0x1C692AD30](&v16);
}

void sub_1C30791D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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
  std::string::basic_string[abi:ne200100]<0>(&v21, "\n  shift_data_grad");
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

void sub_1C3079350(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
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
    kaldi::ReadBasicType<float>(a2, 0, v12);
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
        kaldi::KaldiErrorMessage::KaldiErrorMessage(v33, "InitData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-various.h", 706);
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

void sub_1C30797A8(_Unwind_Exception *a1)
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
          kaldi::KaldiErrorMessage::KaldiErrorMessage(__p, "ReadData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-various.h", 732);
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
    kaldi::ReadBasicType<float>(a2, a3, v13);
LABEL_43:
    if (SHIBYTE(v28) < 0)
    {
      operator delete(v27);
    }
  }

  return kaldi::CuVector<float>::Read(a1 + 88, a2, a3, v6, v7);
}

void sub_1C3079B50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
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

void sub_1C3079C48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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
    kaldi::KaldiAssertFailure_("SetParams", "../engine/common/libquasar/libkaldi/src/nnet/nnet-various.h", 0x2FA, "wei_src.Dim() == NumParams()", v7);
  }

  return kaldi::CuVectorBase<float>::CopyFromVec<float>(a1 + 22, a2, v5, v6, v7);
}

void *kaldi::nnet1::AddShift::PerturbParams(kaldi::nnet1::AddShift *this, float a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6)
{
  v8 = *(this + 26);
  v14[0] = &unk_1F42BFF70;
  memset(&v14[1], 0, 24);
  kaldi::CuVector<float>::Resize(v14, v8, 1u, a5, a6);
  kaldi::CuVectorBase<float>::SetRandn(v14);
  *&v9 = a2;
  kaldi::CuVectorBase<float>::AddVec(this + 88, v14, v10, v11, v12, v9, 1.0);
  return kaldi::CuVector<float>::~CuVector(v14);
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

void kaldi::nnet1::AddShift::AccumGradients(kaldi::nnet1::AddShift *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = a5;
  kaldi::nnet1::AddShift::EnsureCorrs(a1, a2, a3, a4, a5);
  *(*(a1 + 23) + 4 * v5) = *(a2 + 20);
  v13 = *(a1 + 15) + 32 * v5;
  *(v13 + 24) = a4;

  kaldi::CuVectorBase<float>::AddRowSumMat(v13, a3, v10, v11, v12);
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
  v12 = *(this + 20);
  if (v5 >= 0)
  {
    v13 = v5;
  }

  else
  {
    v13 = *(this + 20);
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
    kaldi::KaldiAssertFailure_("UpdateWeights", "../engine/common/libquasar/libkaldi/src/nnet/nnet-various.h", 0x34E, "batch_idx <= opts_.num_subbatches", v10);
  }

  v15 = *(this + 14);
  v16 = *(this + 15);
  v17 = v16 + 32 * v14;
  *(v17 + 24) = a2;
  *(*(this + 18) + 32 * v14 + 24) = a2;
  if (v14 == v12)
  {
    v11.n128_u32[0] = 1.0;
    kaldi::CuVectorBase<float>::AddVec(v17, v16, v8, v9, v10, v11.n128_f64[0], 0.0);
    if (*(this + 20) > 1)
    {
      v18 = 1;
      v19 = 32;
      do
      {
        v11.n128_u32[0] = 1.0;
        kaldi::CuVectorBase<float>::AddVec(*(this + 15) + 32 * v14, *(this + 15) + v19, v8, v9, v10, v11.n128_f64[0], 1.0);
        ++v18;
        v19 += 32;
      }

      while (v18 < *(this + 20));
    }

    v20 = *(this + 23);
    v20[v14] = 0;
    if (v12 >= 1)
    {
      v21 = 0;
      v22 = v20;
      do
      {
        v23 = *v22++;
        v21 += v23;
        v20[v14] = v21;
        --v12;
      }

      while (v12);
    }
  }

  if (*(this + 84) == 1)
  {
    v15 = v15 / *(*(this + 23) + 4 * v14);
  }

  if (*(this + 43) >= 0.0)
  {
    v11 = (*(*this + 248))(this, v14);
  }

  *(this + 14) = a2;
  v11.n128_f32[0] = -(v15 * *(this + 44));
  kaldi::CuVectorBase<float>::AddVec(this + 88, *(this + 15) + 32 * v14, v8, v9, v10, v11.n128_f64[0], 1.0);
  v24 = *(this + 23);
  if (v14 == *(this + 20))
  {
    v25 = *(this + 24);
    if (v24 != v25)
    {

      bzero(v24, v25 - v24);
    }
  }

  else
  {
    *&v24[4 * v14] = 0;
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
  v12 = *MEMORY[0x1E69E54E8];
  *(&v12 + *(v12 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v13 = MEMORY[0x1E69E5548] + 16;
  if (v15 < 0)
  {
    operator delete(v14[7].__locale_);
  }

  v13 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v14);
  std::ostream::~ostream();
  return MEMORY[0x1C692AD30](&v16);
}

void sub_1C307A494(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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
  std::string::basic_string[abi:ne200100]<0>(&v21, "\n  scale_data_grad");
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

void sub_1C307A610(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
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
    kaldi::ReadBasicType<float>(a2, 0, v12);
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
        kaldi::KaldiErrorMessage::KaldiErrorMessage(v33, "InitData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-various.h", 978);
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

void sub_1C307AA68(_Unwind_Exception *a1)
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
          kaldi::KaldiErrorMessage::KaldiErrorMessage(__p, "ReadData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-various.h", 1003);
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
    kaldi::ReadBasicType<float>(a2, a3, v13);
LABEL_43:
    if (SHIBYTE(v28) < 0)
    {
      operator delete(v27);
    }
  }

  return kaldi::CuVector<float>::Read(a1 + 88, a2, a3, v6, v7);
}

void sub_1C307ADE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
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

void sub_1C307AEDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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
    kaldi::KaldiAssertFailure_("SetParams", "../engine/common/libquasar/libkaldi/src/nnet/nnet-various.h", 0x408, "wei_src.Dim() == NumParams()", v7);
  }

  return kaldi::CuVectorBase<float>::CopyFromVec<float>(a1 + 22, a2, v5, v6, v7);
}

void kaldi::nnet1::Rescale::AccumGradients(kaldi::nnet1::Rescale *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = a5;
  kaldi::nnet1::Rescale::EnsureCorrs(a1, a2, a3, a4, a5);
  v10 = *(a1 + 15) + 32 * v5;
  *(v10 + 24) = a4;
  kaldi::CuVectorBase<float>::SetZero(v10);
  *(*(a1 + 29) + 4 * v5) = *(a2 + 20);
  *(a1 + 25) = a4;
  kaldi::CuMatrix<float>::operator=(a1 + 168, a3);
  kaldi::CuMatrixBase<float>::MulElements(a1 + 168, a2, v11, v12, v13);
  v17 = *(a1 + 15) + 32 * v5;

  kaldi::CuVectorBase<float>::AddRowSumMat(v17, a1 + 168, v14, v15, v16);
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
  v12 = *(this + 20);
  if (v5 >= 0)
  {
    v13 = v5;
  }

  else
  {
    v13 = *(this + 20);
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
    kaldi::KaldiAssertFailure_("UpdateWeights", "../engine/common/libquasar/libkaldi/src/nnet/nnet-various.h", 0x462, "batch_idx <= opts_.num_subbatches", v10);
  }

  v15 = *(this + 14);
  v16 = *(this + 15);
  v17 = v16 + 32 * v14;
  *(v17 + 24) = a2;
  *(*(this + 18) + 32 * v14 + 24) = a2;
  if (v14 == v12)
  {
    v11.n128_u32[0] = 1.0;
    kaldi::CuVectorBase<float>::AddVec(v17, v16, v8, v9, v10, v11.n128_f64[0], 0.0);
    if (*(this + 20) > 1)
    {
      v18 = 1;
      v19 = 32;
      do
      {
        v11.n128_u32[0] = 1.0;
        kaldi::CuVectorBase<float>::AddVec(*(this + 15) + 32 * v14, *(this + 15) + v19, v8, v9, v10, v11.n128_f64[0], 1.0);
        ++v18;
        v19 += 32;
      }

      while (v18 < *(this + 20));
    }

    v20 = *(this + 29);
    v20[v14] = 0;
    if (v12 >= 1)
    {
      v21 = 0;
      v22 = v20;
      do
      {
        v23 = *v22++;
        v21 += v23;
        v20[v14] = v21;
        --v12;
      }

      while (v12);
    }
  }

  if (*(this + 84) == 1)
  {
    v15 = v15 / *(*(this + 29) + 4 * v14);
  }

  if (*(this + 55) >= 0.0)
  {
    v11 = (*(*this + 248))(this, v14);
  }

  *(this + 14) = a2;
  v11.n128_f32[0] = -(v15 * *(this + 56));
  kaldi::CuVectorBase<float>::AddVec(this + 88, *(this + 15) + 32 * v14, v8, v9, v10, v11.n128_f64[0], 1.0);
  v24 = *(this + 29);
  if (v14 == *(this + 20))
  {
    v25 = *(this + 30);
    if (v24 != v25)
    {

      bzero(v24, v25 - v24);
    }
  }

  else
  {
    *&v24[4 * v14] = 0;
  }
}

void sub_1C307B3D0(_Unwind_Exception *a1)
{
  kaldi::Matrix<float>::~Matrix(v4);
  *v2 = v3;
  v6 = v2[3];
  if (v6)
  {
    v2[4] = v6;
    operator delete(v6);
  }

  MEMORY[0x1C692AE10](v2, v1);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::KlHmm::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a1 + 108))
  {
    kaldi::Matrix<float>::Matrix(v48, *(a2 + 20), *(a2 + 16), 0, 0);
    kaldi::CuMatrixBase<float>::CopyToMat<float>(a2, v48, 111, v6, v7);
    kaldi::MatrixBase<float>::Row(v48, 0, v8, v47);
    v10 = kaldi::VectorBase<float>::Sum(v47);
    if (*&v10 != 1.0 && (COERCE_INT(fabs(*&v10 + -1.0)) > 2139095039 || fabsf(*&v10 + -1.0) > ((fabsf(*&v10) + 1.0) * 0.001)))
    {
      kaldi::KaldiAssertFailure_("PropagateFnc", "../engine/common/libquasar/libkaldi/src/nnet/nnet-kl-hmm.h", 0x31, "ApproxEqual(post_sum, 1.0)", v9);
    }

    kaldi::Matrix<float>::Matrix<double>(v47, a1 + 48, 111);
    v11 = kaldi::MatrixBase<float>::NumRows(a1 + 48);
    memset(v49, 0, 24);
    kaldi::Vector<float>::Resize(v49, v11, 0, v12, v13);
    kaldi::VectorBase<float>::AddColSumMat(v49, v47, 1.0, 1.0);
    kaldi::VectorBase<float>::ApplyFloor(v49, 1.0e-20);
    kaldi::VectorBase<float>::InvertElements(v49);
    kaldi::MatrixBase<float>::MulRowsVec(v47, v49, v14, v15, v16);
    kaldi::MatrixBase<float>::ApplyFloor(v47, 1.0e-20);
    kaldi::MatrixBase<float>::InvertElements(v47);
    kaldi::MatrixBase<float>::ApplyLog(v47, v17, v18, v19, v20);
    v21 = kaldi::MatrixBase<float>::NumRows(a1 + 48);
    v22 = kaldi::MatrixBase<float>::NumCols(a1 + 48);
    kaldi::CuMatrix<float>::Resize(a1 + 88, v21, v22, 0, 0);
    kaldi::CuMatrixBase<float>::CopyFromMat(a1 + 88, v47, 111, v23, v24);
    kaldi::Vector<float>::Destroy(v49);
    kaldi::Matrix<float>::~Matrix(v47);
    kaldi::Matrix<float>::~Matrix(v48);
  }

  kaldi::Matrix<float>::Matrix(v49, *(a2 + 20), *(a2 + 16), 0, 0);
  kaldi::CuMatrixBase<float>::CopyToMat<float>(a2, v49, 111, v25, v26);
  kaldi::MatrixBase<float>::ApplyFloor(v49, 1.0e-20);
  kaldi::MatrixBase<float>::ApplyLog(v49, v27, v28, v29, v30);
  kaldi::CuMatrix<float>::CuMatrix(v48, *(a2 + 20), *(a2 + 16), 0, 0, 0);
  kaldi::CuMatrixBase<float>::CopyFromMat(v48, v49, 111, v31, v32);
  kaldi::CuMatrix<float>::CuMatrix(v47, a2, 111);
  kaldi::CuMatrixBase<float>::MulElements(v47, v48, v33, v34, v35);
  v36 = *(a2 + 20);
  v46[0] = &unk_1F42BFF70;
  memset(&v46[1], 0, 24);
  kaldi::CuVector<float>::Resize(v46, v36, 0, v37, v38);
  kaldi::CuVectorBase<float>::AddColSumMat(v46, v47, v39, v40, v41);
  kaldi::CuMatrixBase<float>::AddMatMat(a3, a2, 111, a1 + 88, 0x70);
  kaldi::CuMatrixBase<float>::AddVecToCols(a3, v46, v42, v43, v44, 1.0, 1.0);
  kaldi::CuMatrixBase<float>::Scale(a3, -1.0);
  kaldi::CuVector<float>::~CuVector(v46);
  kaldi::CuMatrix<float>::~CuMatrix(v47);
  kaldi::CuMatrix<float>::~CuMatrix(v48);
  return kaldi::Matrix<float>::~Matrix(v49);
}

void sub_1C307B724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  kaldi::Matrix<float>::~Matrix(va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::KlHmm::BackpropagateFnc()
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v0, "BackpropagateFnc", "../engine/common/libquasar/libkaldi/src/nnet/nnet-kl-hmm.h", 101);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Unimplemented");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

uint64_t kaldi::nnet1::KlHmm::ReadData(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  kaldi::Matrix<double>::Read(a1 + 48, a2, a3, 0, 0);
  if (kaldi::MatrixBase<float>::NumRows(a1 + 48) != *(a1 + 12))
  {
    kaldi::KaldiAssertFailure_("ReadData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-kl-hmm.h", 0x6B, "kl_stats_.NumRows() == output_dim_", v4);
  }

  result = kaldi::MatrixBase<float>::NumCols(a1 + 48);
  if (result != *(a1 + 8))
  {
    kaldi::KaldiAssertFailure_("ReadData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-kl-hmm.h", 0x6C, "kl_stats_.NumCols() == input_dim_", v6);
  }

  return result;
}

void kaldi::nnet1::Rbm::InitData(unsigned int *a1, uint64_t *a2, kaldi::UniformRandomNumber *a3, uint64_t a4, const char *a5)
{
  v135 = 0;
  v136 = 0;
  v137 = 0;
  v132 = 0;
  v133 = 0;
  v134 = 0;
  v130 = 0;
  v131 = 0;
  v129 = 1036831949;
  v128 = -1;
  v125 = 0;
  v126 = 0;
  v8 = a2 + 4;
  v127 = 0;
  v123 = 0uLL;
  v124 = 0;
  while (1)
  {
    if ((*(v8 + *(*a2 - 24)) & 2) != 0)
    {
      goto LABEL_143;
    }

    kaldi::ReadToken(a2, 0, &v123, a4, a5);
    if (SHIBYTE(v124) < 0)
    {
      if (*(&v123 + 1) > 16)
      {
        if (*(&v123 + 1) != 17)
        {
          if (*(&v123 + 1) != 18)
          {
            if (*(&v123 + 1) != 25)
            {
              goto LABEL_263;
            }

LABEL_73:
            if (*v123 != 0x656C62697369563CLL || *(v123 + 8) != 0x6E766D4373616942 || *(v123 + 16) != 0x656D616E656C6946 || *(v123 + 24) != 62)
            {
              break;
            }

            v30 = &v125;
LABEL_101:
            kaldi::ReadToken(a2, 0, v30, v9, v10);
            goto LABEL_121;
          }

          if (*v123 != 0x656C62697369563CLL || *(v123 + 8) != 0x676E615273616942 || *(v123 + 16) != 15973)
          {
            goto LABEL_263;
          }

          goto LABEL_94;
        }

        if (*v123 != 0x656C62697369563CLL || *(v123 + 8) != 0x6E61654D73616942 || *(v123 + 16) != 62)
        {
          if (*v123 != 0x426E65646469483CLL || *(v123 + 8) != 0x65676E6152736169 || *(v123 + 16) != 62)
          {
            goto LABEL_136;
          }

          goto LABEL_117;
        }

LABEL_118:
        v17 = &v131 + 1;
        goto LABEL_120;
      }

      if (*(&v123 + 1) == 12)
      {
        v33 = v123;
        if (*v123 == 0x546E65646469483CLL && *(v123 + 8) == 1046835321)
        {
LABEL_100:
          v30 = &v132;
          goto LABEL_101;
        }

        goto LABEL_125;
      }

      if (*(&v123 + 1) != 13)
      {
        if (*(&v123 + 1) != 16)
        {
          goto LABEL_263;
        }

        if (*v123 != 0x426E65646469483CLL || *(v123 + 8) != 0x3E6E61654D736169)
        {
          goto LABEL_263;
        }

        goto LABEL_41;
      }

      v15 = v123;
      if (*v123 == 0x656C62697369563CLL && *(v123 + 5) == 0x3E65707954656C62)
      {
        goto LABEL_85;
      }
    }

    else
    {
      if (HIBYTE(v124) > 0xFu)
      {
        if (HIBYTE(v124) != 16)
        {
          if (HIBYTE(v124) != 17)
          {
            if (HIBYTE(v124) != 18)
            {
              goto LABEL_263;
            }

            v11 = v123 == 0x656C62697369563CLL && *(&v123 + 1) == 0x676E615273616942;
            if (!v11 || v124 != 15973)
            {
              goto LABEL_263;
            }

LABEL_94:
            v17 = &v131;
            goto LABEL_120;
          }

          if (v123 != 0x656C62697369563CLL || *(&v123 + 1) != 0x6E61654D73616942 || v124 != 62)
          {
            if (v123 != 0x426E65646469483CLL || *(&v123 + 1) != 0x65676E6152736169 || v124 != 62)
            {
              goto LABEL_263;
            }

LABEL_117:
            v17 = &v130;
            goto LABEL_120;
          }

          goto LABEL_118;
        }

        if (v123 != 0x426E65646469483CLL || *(&v123 + 1) != 0x3E6E61654D736169)
        {
          goto LABEL_263;
        }

LABEL_41:
        v17 = &v130 + 1;
LABEL_120:
        kaldi::ReadBasicType<float>(a2, 0, v17);
        goto LABEL_121;
      }

      if (HIBYTE(v124) == 12)
      {
        if (v123 == 0x546E65646469483CLL && DWORD2(v123) == 1046835321)
        {
          goto LABEL_100;
        }

        goto LABEL_124;
      }

      if (HIBYTE(v124) != 13)
      {
        goto LABEL_263;
      }

      if (v123 == 0x656C62697369563CLL && *(&v123 + 5) == 0x3E65707954656C62)
      {
LABEL_85:
        v30 = &v135;
        goto LABEL_101;
      }

      v15 = &v123;
    }

    v24 = *v15;
    v25 = *(v15 + 5);
    if (v24 == 0x74536D617261503CLL && v25 == 0x3E7665646474536DLL)
    {
      v17 = &v129;
      goto LABEL_120;
    }

    if (v124 < 0 && *(&v123 + 1) == 25)
    {
      goto LABEL_73;
    }

    if ((v124 & 0x8000000000000000) == 0)
    {
      if (HIBYTE(v124) != 12)
      {
        goto LABEL_263;
      }

LABEL_124:
      v33 = &v123;
      goto LABEL_125;
    }

    if (*(&v123 + 1) != 12)
    {
      goto LABEL_136;
    }

    v33 = v123;
LABEL_125:
    v39 = *v33;
    v40 = *(v33 + 2);
    if (v39 != 0x536D6F646E61523CLL || v40 != 1046766949)
    {
      break;
    }

    kaldi::ReadBasicType<int>(a2, 0, &v128);
LABEL_121:
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }

  if ((v124 & 0x8000000000000000) == 0)
  {
    if (HIBYTE(v124) == 12)
    {
      v42 = &v123;
      goto LABEL_138;
    }

    goto LABEL_263;
  }

LABEL_136:
  if (*(&v123 + 1) != 12)
  {
    goto LABEL_263;
  }

  v42 = v123;
LABEL_138:
  v43 = *v42;
  v44 = *(v42 + 2);
  if (v43 != 0x6E6F706D6F432F3CLL || v44 != 1047817829)
  {
LABEL_263:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(&v111, "InitData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-rbm.h", 122);
    v100 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v111, "Unknown token ", 14);
    if (v124 >= 0)
    {
      v101 = &v123;
    }

    else
    {
      v101 = v123;
    }

    if (v124 >= 0)
    {
      v102 = HIBYTE(v124);
    }

    else
    {
      v102 = *(&v123 + 1);
    }

    v103 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v100, v101, v102);
    v104 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v103, " Typo in config?", 16);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v104, " (VisibleType|HiddenType|VisibleBiasMean|VisibleBiasRange|HiddenBiasMean|HiddenBiasRange|ParamStddev|VisibleBiasCmvnFilename|RandomSeed)", 136);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v111);
  }

LABEL_143:
  if (SHIBYTE(v137) < 0)
  {
    if (v136 > 7)
    {
      if (v136 == 8)
      {
        v51 = v135;
        goto LABEL_180;
      }

      if (v136 == 9 && *v135 == 0x6C6C756F6E726542 && v135[8] == 105)
      {
        goto LABEL_178;
      }
    }

    else
    {
      if (v136 == 4)
      {
        v50 = *v135;
LABEL_177:
        if (v50 != 1852990818)
        {
          goto LABEL_270;
        }

        goto LABEL_178;
      }

      if (v136 == 5 && *v135 == 1937072487 && v135[4] == 115)
      {
        goto LABEL_181;
      }
    }

LABEL_270:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(&v111, "InitData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-rbm.h", 136);
    v105 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v111, "Wrong <VisibleType>", 19);
    if (v137 >= 0)
    {
      v106 = &v135;
    }

    else
    {
      v106 = v135;
    }

    if (v137 >= 0)
    {
      v107 = HIBYTE(v137);
    }

    else
    {
      v107 = v136;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v105, v106, v107);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v111);
  }

  if (HIBYTE(v137) > 7u)
  {
    if (HIBYTE(v137) != 8)
    {
      if (HIBYTE(v137) != 9)
      {
        goto LABEL_270;
      }

      if (v135 != 0x6C6C756F6E726542 || v136 != 105)
      {
        goto LABEL_270;
      }

LABEL_178:
      v52 = 0;
      goto LABEL_182;
    }

    v51 = &v135;
LABEL_180:
    if (*v51 != 0x6E61697373756147)
    {
      goto LABEL_270;
    }

    goto LABEL_181;
  }

  if (HIBYTE(v137) == 4)
  {
    v50 = v135;
    goto LABEL_177;
  }

  if (HIBYTE(v137) != 5)
  {
    goto LABEL_270;
  }

  if (v135 != 1937072487 || BYTE4(v135) != 115)
  {
    goto LABEL_270;
  }

LABEL_181:
  v52 = 1;
LABEL_182:
  a1[74] = v52;
  if (v134 < 0)
  {
    if (v133 > 7)
    {
      if (v133 == 8)
      {
        v58 = v132;
        goto LABEL_219;
      }

      if (v133 == 9 && *v132 == 0x6C6C756F6E726542 && v132[8] == 105)
      {
        goto LABEL_217;
      }
    }

    else
    {
      if (v133 == 4)
      {
        v57 = *v132;
LABEL_216:
        if (v57 != 1852990818)
        {
          goto LABEL_277;
        }

        goto LABEL_217;
      }

      if (v133 == 5 && *v132 == 1937072487 && v132[4] == 115)
      {
        goto LABEL_220;
      }
    }

LABEL_277:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(&v111, "InitData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-rbm.h", 143);
    v108 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v111, "Wrong <HiddenType>", 18);
    if (v134 >= 0)
    {
      v109 = &v132;
    }

    else
    {
      v109 = v132;
    }

    if (v134 >= 0)
    {
      v110 = HIBYTE(v134);
    }

    else
    {
      v110 = v133;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v108, v109, v110);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v111);
  }

  if (HIBYTE(v134) > 7u)
  {
    if (HIBYTE(v134) != 8)
    {
      if (HIBYTE(v134) != 9)
      {
        goto LABEL_277;
      }

      if (v132 != 0x6C6C756F6E726542 || v133 != 105)
      {
        goto LABEL_277;
      }

LABEL_217:
      v59 = 0;
      goto LABEL_221;
    }

    v58 = &v132;
LABEL_219:
    if (*v58 != 0x6E61697373756147)
    {
      goto LABEL_277;
    }

    goto LABEL_220;
  }

  if (HIBYTE(v134) == 4)
  {
    v57 = v132;
    goto LABEL_216;
  }

  if (HIBYTE(v134) != 5)
  {
    goto LABEL_277;
  }

  if (v132 != 1937072487 || BYTE4(v132) != 115)
  {
    goto LABEL_277;
  }

LABEL_220:
  v59 = 1;
LABEL_221:
  a1[75] = v59;
  if (v128 >= 1)
  {
    kaldi::UniformRandomNumber::SetRandomSeeds(a3, v128);
  }

  kaldi::GaussRandomNumber::GaussRandomNumber(v119, a3);
  kaldi::Matrix<float>::Matrix(v117, a1[3], a1[2], 0, 0);
  v63 = a1[3];
  if (v63 >= 1)
  {
    v64 = 0;
    LODWORD(v65) = a1[2];
    do
    {
      if (v65 >= 1)
      {
        v66 = 0;
        do
        {
          v67 = *&v129;
          kaldi::GaussRandomNumber::Rand(v119, 0, v60, v61, v62);
          *(v117[0] + 4 * v64 * v118 + 4 * v66++) = v67 * v68;
          v65 = a1[2];
        }

        while (v66 < v65);
        v63 = a1[3];
      }

      ++v64;
    }

    while (v64 < v63);
  }

  kaldi::CuMatrix<float>::operator=((a1 + 18), v117);
  v69 = a1[3];
  v115 = 0;
  v116 = 0;
  v114 = 0;
  kaldi::Vector<float>::Resize(&v114, v69, 0, v70, v71);
  if (a1[3] < 1)
  {
    v79 = v115;
  }

  else
  {
    v75 = 0;
    do
    {
      v76 = *(&v130 + 1);
      v77 = kaldi::UniformRandomNumber::RandUniform(a3, 0, v72, v73, v74);
      v78 = v76 + (v77 + -0.5) * *&v130;
      v79 = v115;
      v114[v75++] = v78;
    }

    while (v75 < a1[3]);
  }

  kaldi::CuVector<float>::Resize((a1 + 38), v79, 1u, v73, v74);
  kaldi::CuVectorBase<float>::CopyFromVec<float>(a1 + 38, &v114, v80, v81, v82);
  if (SHIBYTE(v127) < 0)
  {
    if (v126)
    {
LABEL_237:
      if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
      {
        kaldi::KaldiLogMessage::KaldiLogMessage(&v111, "InitData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-rbm.h", 171);
        v85 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v111, "Initializing from <VisibleBiasCmvnFilename> ", 44);
        if (v127 >= 0)
        {
          v86 = &v125;
        }

        else
        {
          v86 = v125;
        }

        if (v127 >= 0)
        {
          v87 = HIBYTE(v127);
        }

        else
        {
          v87 = v126;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v85, v86, v87);
        kaldi::KaldiLogMessage::~KaldiLogMessage(&v111);
      }

      kaldi::nnet1::Nnet::Nnet(&v111);
    }
  }

  else if (HIBYTE(v127))
  {
    goto LABEL_237;
  }

  v88 = a1[2];
  v112 = 0;
  v113 = 0;
  v111.__locale_ = 0;
  kaldi::Vector<float>::Resize(&v111.__locale_, v88, 0, v83, v84);
  if (a1[2] < 1)
  {
    v96 = v112;
  }

  else
  {
    v92 = 0;
    do
    {
      v93 = *(&v131 + 1);
      v94 = kaldi::UniformRandomNumber::RandUniform(a3, 0, v89, v90, v91);
      v95 = v93 + (v94 + -0.5) * *&v131;
      v96 = v112;
      *(v111.__locale_ + v92++) = v95;
    }

    while (v92 < a1[2]);
  }

  kaldi::CuVector<float>::Resize((a1 + 30), v96, 1u, v90, v91);
  kaldi::CuVectorBase<float>::CopyFromVec<float>(a1 + 30, &v111, v97, v98, v99);
  kaldi::Vector<float>::Destroy(&v111);
  kaldi::Vector<float>::Destroy(&v114);
  kaldi::Matrix<float>::~Matrix(v117);
  if (__p)
  {
    v122 = __p;
    operator delete(__p);
  }

  v111.__locale_ = &v120;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v111);
  if (SHIBYTE(v124) < 0)
  {
    operator delete(v123);
  }

  if (SHIBYTE(v127) < 0)
  {
    operator delete(v125);
  }

  if (SHIBYTE(v134) < 0)
  {
    operator delete(v132);
  }

  if (SHIBYTE(v137) < 0)
  {
    operator delete(v135);
  }
}

void sub_1C307C788(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x247]) < 0)
  {
    operator delete(STACK[0x230]);
  }

  if (*(v1 - 225) < 0)
  {
    operator delete(*(v1 - 248));
  }

  if (*(v1 - 177) < 0)
  {
    operator delete(*(v1 - 200));
  }

  if (*(v1 - 153) < 0)
  {
    operator delete(*(v1 - 176));
  }

  _Unwind_Resume(a1);
}

void kaldi::nnet1::Rbm::WriteData(_DWORD *a1, void *a2, const char *a3, uint64_t a4, const char *a5)
{
  v8 = a1[74];
  if (v8)
  {
    if (v8 != 1)
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v20, "WriteData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-rbm.h", 225);
      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "Unknown type ", 13);
      MEMORY[0x1C692A960](v18, a1[74]);
      goto LABEL_14;
    }

    v9 = "gauss";
  }

  else
  {
    v9 = "bern";
  }

  kaldi::WriteToken(a2, a3, v9, a4, a5);
  v12 = a1[75];
  if (v12)
  {
    if (v12 == 1)
    {
      v13 = "gauss";
      goto LABEL_9;
    }

    kaldi::KaldiErrorMessage::KaldiErrorMessage(v20, "WriteData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-rbm.h", 235);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "Unknown type ", 13);
    MEMORY[0x1C692A960](v19, a1[75]);
LABEL_14:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v20);
  }

  v13 = "bern";
LABEL_9:
  kaldi::WriteToken(a2, a3, v13, v10, v11);
  kaldi::CuMatrixBase<float>::Write((a1 + 18), a2, a3, 0);
  kaldi::CuVectorBase<float>::Write(a1 + 30, a2, a3, v14, v15);

  kaldi::CuVectorBase<float>::Write(a1 + 38, a2, a3, v16, v17);
}

uint64_t kaldi::nnet1::Rbm::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  kaldi::CuMatrixBase<float>::AddVecToRows(a3, a1 + 152, a3, a4, a5, 1.0, 0.0);
  result = kaldi::CuMatrixBase<float>::AddMatMat(a3, a2, 111, a1 + 72, 0x70);
  if (!*(a1 + 300))
  {

    return kaldi::CuMatrixBase<float>::Sigmoid(a3, a3, v9, v10, v11);
  }

  return result;
}

void kaldi::nnet1::Rbm::ReadData(_DWORD *a1, uint64_t *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v32 = 0;
  v33 = 0;
  v34 = 0;
  __p = 0;
  v30 = 0;
  v31 = 0;
  kaldi::ReadToken(a2, a3, &v32, a4, a5);
  kaldi::ReadToken(a2, a3, &__p, v8, v9);
  if ((SHIBYTE(v34) & 0x80000000) == 0)
  {
    if (HIBYTE(v34) != 4)
    {
      if (HIBYTE(v34) != 5)
      {
        goto LABEL_18;
      }

      v10 = &v32;
      goto LABEL_9;
    }

    if (v32 != 1852990818)
    {
      goto LABEL_18;
    }

LABEL_16:
    v14 = 0;
    goto LABEL_17;
  }

  if (v33 == 4 && *v32 == 1852990818)
  {
    goto LABEL_16;
  }

  if (v33 != 5)
  {
    goto LABEL_18;
  }

  v10 = v32;
LABEL_9:
  v11 = *v10;
  v12 = v10[4];
  if (v11 == 1937072487 && v12 == 115)
  {
    v14 = 1;
LABEL_17:
    a1[74] = v14;
  }

LABEL_18:
  if ((SHIBYTE(v31) & 0x80000000) == 0)
  {
    if (HIBYTE(v31) != 4)
    {
      if (HIBYTE(v31) != 5)
      {
        goto LABEL_35;
      }

      p_p = &__p;
      goto LABEL_26;
    }

    if (__p != 1852990818)
    {
      goto LABEL_35;
    }

LABEL_33:
    v19 = 0;
    goto LABEL_34;
  }

  if (v30 == 4 && *__p == 1852990818)
  {
    goto LABEL_33;
  }

  if (v30 != 5)
  {
    goto LABEL_35;
  }

  p_p = __p;
LABEL_26:
  v16 = *p_p;
  v17 = p_p[4];
  if (v16 == 1937072487 && v17 == 115)
  {
    v19 = 1;
LABEL_34:
    a1[75] = v19;
  }

LABEL_35:
  kaldi::CuMatrix<float>::Read((a1 + 18), a2, a3, 0);
  kaldi::CuVector<float>::Read((a1 + 30), a2, a3, v20, v21);
  kaldi::CuVector<float>::Read((a1 + 38), a2, a3, v22, v23);
  v25 = a1[23];
  if (v25 != a1[3])
  {
    v27 = "vis_hid_.NumRows() == output_dim_";
    v28 = 210;
    goto LABEL_48;
  }

  v26 = a1[22];
  if (v26 != a1[2])
  {
    v27 = "vis_hid_.NumCols() == input_dim_";
    v28 = 211;
    goto LABEL_48;
  }

  if (a1[34] != v26)
  {
    v27 = "vis_bias_.Dim() == input_dim_";
    v28 = 212;
    goto LABEL_48;
  }

  if (a1[42] != v25)
  {
    v27 = "hid_bias_.Dim() == output_dim_";
    v28 = 213;
LABEL_48:
    kaldi::KaldiAssertFailure_("ReadData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-rbm.h", v28, v27, v24);
  }

  if (SHIBYTE(v31) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v34) < 0)
  {
    operator delete(v32);
  }
}