void sub_11FD3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  kaldi::Vector<float>::Destroy(va);
  JUMPOUT(0x11FD68);
}

void sub_11FD58(_Unwind_Exception *exception_object)
{
  if (*(v1 - 121) < 0)
  {
    operator delete(*(v1 - 144));
  }

  _Unwind_Resume(exception_object);
}

void sub_11FD64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  kaldi::Matrix<float>::~Matrix(va);
  kaldi::GaussRandomNumber::~GaussRandomNumber(va1);
  JUMPOUT(0x11FD78);
}

void kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<short>>::ReadData(uint64_t a1, uint64_t *a2, int a3)
{
  *(a1 + 116) = *(a1 + 8);
  v6 = a1 + 116;
  *(a1 + 132) = 0x100000001;
  v7 = a1 + 132;
  v55 = a1 + 136;
  if (kaldi::Peek(a2, a3) != 60)
  {
LABEL_151:
    v46 = *(a1 + 12);
    v47 = *(a1 + 108);
    v48 = *(a1 + 8) / *(a1 + 104) - *(a1 + 128);
    v49 = (*(a1 + 120) - *(a1 + 132)) / *(a1 + 136) + 1;
    *(a1 + 148) = v49;
    *(a1 + 16) = 0;
    *(a1 + 140) = v48;
    *(a1 + 144) = v46 / (v47 * v49);
    LOBYTE(v58) = 0;
    kaldi::ReadBasicType<char>(a2, a3, &v58, v8, v9);
    if (!*(a1 + 152))
    {
      kaldi::ExpectToken(a2, a3, "<Filters>");
      v50 = ((*(a1 + 128) + *(a1 + 124)) * *(a1 + 104));
      v51 = (*(a1 + 144) * *(a1 + 108));
      operator new();
    }

    kaldi::KaldiErrorMessage::KaldiErrorMessage(__p, "ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.cc", 348);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(__p, "pointer is thought to be un-initialized here");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
  }

  while (1)
  {
    v58 = 0uLL;
    v59 = 0;
    kaldi::ReadToken(a2, a3, &v58, v8, v9);
    if (SHIBYTE(v59) < 0)
    {
      if (*(&v58 + 1) == 15)
      {
        v15 = *v58 == 0x75746165466E493CLL && *(v58 + 7) == 0x3E7370614D657275;
        v13 = a1 + 104;
        if (v15)
        {
          goto LABEL_141;
        }
      }

      if (*(&v58 + 1) == 16)
      {
        v16 = *v58 == 0x7461654674754F3CLL && *(v58 + 8) == 0x3E7370614D657275;
        v13 = a1 + 108;
        if (v16)
        {
          goto LABEL_141;
        }
      }

      if (*(&v58 + 1) == 13)
      {
        v18 = *v58 == 0x6E6F69746365533CLL && *(v58 + 5) == 0x3E706574536E6F69;
        v13 = v6;
        if (v18)
        {
          goto LABEL_141;
        }
      }

      else if (*(&v58 + 1) == 11)
      {
        v17 = *v58 == 0x745368637461503CLL && *(v58 + 3) == 0x3E70657453686374;
        v13 = a1 + 112;
        if (v17)
        {
          goto LABEL_141;
        }
      }

      v19 = *(&v58 + 1);
      if (*(&v58 + 1) == 13)
      {
        v20 = *v58 == 0x6E6F69746365533CLL && *(v58 + 5) == 0x3E657A69536E6F69;
        v13 = a1 + 120;
        if (v20)
        {
          goto LABEL_141;
        }

        v19 = *(&v58 + 1);
      }

      if (v19 == 12)
      {
        v21 = *v58 == 0x537265746C69463CLL && *(v58 + 8) == 1046837865;
        v13 = a1 + 124;
        if (v21)
        {
          goto LABEL_141;
        }

        if ((v59 & 0x8000000000000000) == 0)
        {
          goto LABEL_57;
        }
      }

      if (*(&v58 + 1) == 10)
      {
        v37 = *v58 == 0x7A69536C6F6F503CLL && *(v58 + 8) == 15973;
        v13 = v7;
        if (v37)
        {
          goto LABEL_141;
        }

        if ((v59 & 0x8000000000000000) == 0)
        {
          if (HIBYTE(v59) == 19)
          {
            goto LABEL_71;
          }

          if (HIBYTE(v59) == 15)
          {
            goto LABEL_121;
          }

          if (HIBYTE(v59) != 10)
          {
            goto LABEL_142;
          }

          goto LABEL_94;
        }
      }

      else if (*(&v58 + 1) == 15)
      {
        v22 = *v58 == 0x65726168536E493CLL && *(v58 + 7) == 0x3E73646E61426465;
        v13 = a1 + 128;
        if (v22)
        {
          goto LABEL_141;
        }

        if ((v59 & 0x8000000000000000) == 0)
        {
LABEL_57:
          if (HIBYTE(v59) != 10)
          {
            if (HIBYTE(v59) == 15)
            {
LABEL_121:
              v38 = v58 == 0x61526E7261654C3CLL && *(&v58 + 7) == 0x3E66656F43657461;
              v30 = (a1 + 264);
              if (!v38)
              {
                goto LABEL_142;
              }

              goto LABEL_147;
            }

LABEL_70:
            if (HIBYTE(v59) != 19)
            {
              goto LABEL_142;
            }

LABEL_71:
            v24 = &v58;
            goto LABEL_72;
          }

LABEL_90:
          v33 = v58 == 0x7A69536C6F6F503CLL && WORD4(v58) == 15973;
          v13 = v7;
          if (v33)
          {
            goto LABEL_141;
          }

LABEL_94:
          v34 = v58 == 0x6574536C6F6F503CLL && WORD4(v58) == 15984;
          v13 = v55;
          if (!v34)
          {
            goto LABEL_142;
          }

          goto LABEL_141;
        }
      }

      v39 = *(&v58 + 1);
      if (*(&v58 + 1) != 10)
      {
        goto LABEL_133;
      }

      v40 = *v58 == 0x6574536C6F6F503CLL && *(v58 + 8) == 15984;
      v13 = v55;
      if (!v40)
      {
        v39 = *(&v58 + 1);
LABEL_133:
        if (v39 == 15)
        {
          v41 = *v58 == 0x61526E7261654C3CLL && *(v58 + 7) == 0x3E66656F43657461;
          v30 = (a1 + 264);
          if (!v41)
          {
            if (v59 < 0)
            {
              goto LABEL_139;
            }

LABEL_142:
            v42 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v58, "<MaxNorm>");
            v30 = (a1 + 280);
            if (!v42)
            {
              if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v58, "<GradientNormType>"))
              {
                __p[0] = 0;
                __p[1] = 0;
                v57 = 0;
                kaldi::ReadToken(a2, a3, __p, v43, v44);
                *(a1 + 272) = kaldi::nnet1::Component::MarkerToGradientNormType(__p);
                if (SHIBYTE(v57) < 0)
                {
                  operator delete(__p[0]);
                }

                goto LABEL_148;
              }

              v45 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v58, "<MaxGrad>");
              v30 = (a1 + 276);
              if (!v45)
              {
                kaldi::KaldiErrorMessage::KaldiErrorMessage(__p, "ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.cc", 332);
                v52 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "unrecognized config token ", 26);
                if (v59 >= 0)
                {
                  v53 = &v58;
                }

                else
                {
                  v53 = v58;
                }

                if (v59 >= 0)
                {
                  v54 = HIBYTE(v59);
                }

                else
                {
                  v54 = *(&v58 + 1);
                }

                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, v53, v54);
                kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
              }
            }
          }

LABEL_147:
          kaldi::ReadBasicType<float>(a2, a3, v30, v10, v11);
          goto LABEL_148;
        }

LABEL_139:
        if (*(&v58 + 1) != 19)
        {
          goto LABEL_142;
        }

        v24 = v58;
LABEL_72:
        v25 = *v24;
        v26 = v24[1];
        v27 = *(v24 + 11);
        v29 = v25 == 0x61654C736169423CLL && v26 == 0x6F43657461526E72 && v27 == 0x3E66656F43657461;
        v30 = (a1 + 268);
        if (!v29)
        {
          goto LABEL_142;
        }

        goto LABEL_147;
      }
    }

    else if (HIBYTE(v59) <= 0xCu)
    {
      if (HIBYTE(v59) == 10)
      {
        goto LABEL_90;
      }

      if (HIBYTE(v59) != 11)
      {
        goto LABEL_62;
      }

      v36 = v58 == 0x745368637461503CLL && *(&v58 + 3) == 0x3E70657453686374;
      v13 = a1 + 112;
      if (!v36)
      {
        goto LABEL_142;
      }
    }

    else if (HIBYTE(v59) > 0xFu)
    {
      if (HIBYTE(v59) != 16)
      {
        goto LABEL_70;
      }

      v35 = v58 == 0x7461654674754F3CLL && *(&v58 + 1) == 0x3E7370614D657275;
      v13 = a1 + 108;
      if (!v35)
      {
        goto LABEL_142;
      }
    }

    else
    {
      if (HIBYTE(v59) == 13)
      {
        v31 = v58 == 0x6E6F69746365533CLL && *(&v58 + 5) == 0x3E706574536E6F69;
        v13 = v6;
        if (v31)
        {
          goto LABEL_141;
        }

        v32 = v58 == 0x6E6F69746365533CLL && *(&v58 + 5) == 0x3E657A69536E6F69;
        v13 = a1 + 120;
        if (v32)
        {
          goto LABEL_141;
        }

LABEL_62:
        if (HIBYTE(v59) != 12)
        {
          goto LABEL_142;
        }

        v23 = v58 == 0x537265746C69463CLL && DWORD2(v58) == 1046837865;
        v13 = a1 + 124;
        if (!v23)
        {
          goto LABEL_142;
        }

        goto LABEL_141;
      }

      if (HIBYTE(v59) != 15)
      {
        goto LABEL_142;
      }

      v12 = v58 == 0x75746165466E493CLL && *(&v58 + 7) == 0x3E7370614D657275;
      v13 = a1 + 104;
      if (!v12)
      {
        v14 = v58 == 0x65726168536E493CLL && *(&v58 + 7) == 0x3E73646E61426465;
        v13 = a1 + 128;
        if (!v14)
        {
          goto LABEL_121;
        }
      }
    }

LABEL_141:
    kaldi::ReadBasicType<int>(a2, a3, v13, v10, v11);
LABEL_148:
    if (SHIBYTE(v59) < 0)
    {
      operator delete(v58);
    }

    if (kaldi::Peek(a2, a3) != 60)
    {
      goto LABEL_151;
    }
  }
}

void sub_12096C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (*(v24 - 89) < 0)
  {
    operator delete(*(v24 - 112));
  }

  _Unwind_Resume(exception_object);
}

void *kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<short>>::WriteConfig(unsigned int *a1, void *a2, const char *a3, uint64_t a4, const char *a5)
{
  kaldi::WriteToken(a2, a3, "<InFeatureMaps>", a4, a5);
  v8 = a1[26];
  kaldi::WriteBasicType<int>(a2, a3);
  kaldi::WriteToken(a2, a3, "<OutFeatureMaps>", v9, v10);
  v11 = a1[27];
  kaldi::WriteBasicType<int>(a2, a3);
  kaldi::WriteToken(a2, a3, "<PatchStep>", v12, v13);
  v14 = a1[28];
  kaldi::WriteBasicType<int>(a2, a3);
  kaldi::WriteToken(a2, a3, "<SectionStep>", v15, v16);
  v17 = a1[29];
  kaldi::WriteBasicType<int>(a2, a3);
  kaldi::WriteToken(a2, a3, "<SectionSize>", v18, v19);
  v20 = a1[30];
  kaldi::WriteBasicType<int>(a2, a3);
  kaldi::WriteToken(a2, a3, "<FilterSize>", v21, v22);
  v23 = a1[31];
  kaldi::WriteBasicType<int>(a2, a3);
  kaldi::WriteToken(a2, a3, "<InSharedBands>", v24, v25);
  v26 = a1[32];
  kaldi::WriteBasicType<int>(a2, a3);
  kaldi::WriteToken(a2, a3, "<PoolSize>", v27, v28);
  v29 = a1[33];
  kaldi::WriteBasicType<int>(a2, a3);
  kaldi::WriteToken(a2, a3, "<PoolStep>", v30, v31);
  v32 = a1[34];
  kaldi::WriteBasicType<int>(a2, a3);
  kaldi::WriteToken(a2, a3, "<LearnRateCoef>", v33, v34);
  v35 = a1[66];
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<BiasLearnRateCoef>", v36, v37);
  v38 = a1[67];
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<MaxNorm>", v39, v40);
  v41 = a1[70];
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<GradientNormType>", v42, v43);
  kaldi::nnet1::Component::TypeToMarker(a1[68], &__p);
  kaldi::WriteToken(a2, a3, &__p, v44, v45);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  kaldi::WriteToken(a2, a3, "<MaxGrad>", v46, v47);
  v48 = a1[69];
  return kaldi::WriteBasicType<float>(a2, a3);
}

void sub_120C14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<short>>::WriteData(void *a1, void *a2, const char *a3, int a4)
{
  (*(*a1 + 168))(a1);
  kaldi::WriteBasicType<char>(a2, a3);
  kaldi::WriteToken(a2, a3, "<Filters>", v8, v9);
  v11 = a1[19];
  if (!v11)
  {
    kaldi::KaldiAssertFailure_("Filters", "../subproject/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h", &stru_B8.size + 3, "filters_", v10);
  }

  kaldi::QuantizedMatrix<short>::Write(v11, a2, a3, a4);
  kaldi::WriteToken(a2, a3, "<Bias>", v12, v13);
  v16 = a1[20];
  if (!v16)
  {
    kaldi::KaldiAssertFailure_("Bias", "../subproject/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h", &stru_B8.offset + 3, "bias_", v15);
  }

  kaldi::CuVectorBase<float>::Write(v16, a2, a3, v14, v15);
}

uint64_t kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<short>>::NumParams(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *(a1 + 152);
  if (!v6 || (v7 = kaldi::QuantizedMatrixBase<short>::NumRows(v6), (v8 = *(a1 + 152)) == 0))
  {
    kaldi::KaldiAssertFailure_("Filters", "../subproject/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h", &stru_B8.size + 3, "filters_", a5);
  }

  v9 = kaldi::QuantizedMatrixBase<short>::NumCols(v8);
  v11 = *(a1 + 160);
  if (!v11)
  {
    kaldi::KaldiAssertFailure_("Bias", "../subproject/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h", &stru_B8.offset + 3, "bias_", v10);
  }

  return (*(v11 + 16) + v9 * v7);
}

_DWORD *kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<short>>::GetParams(void *a1, uint64_t a2)
{
  v4 = (*(*a1 + 176))(a1);
  kaldi::Vector<float>::Resize(a2, v4, 0, v5, v6);
  v8 = a1[19];
  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = kaldi::QuantizedMatrixBase<short>::NumRows(v8);
  v10 = a1[19];
  if (!v10)
  {
    goto LABEL_8;
  }

  v11 = kaldi::QuantizedMatrixBase<short>::NumCols(v10) * v9;
  v19 = 0;
  v20 = 0;
  if (v11 > *(a2 + 8))
  {
    goto LABEL_9;
  }

  v18 = *a2;
  LODWORD(v19) = v11;
  v12 = a1[19];
  if (!v12)
  {
LABEL_8:
    kaldi::KaldiAssertFailure_("Filters", "../subproject/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h", &stru_B8.size + 3, "filters_", v7);
  }

  kaldi::VectorBase<float>::CopyRowsFromMat<short>(&v18, v12);
  v15 = a1[20];
  if (!v15)
  {
    kaldi::KaldiAssertFailure_("Bias", "../subproject/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h", &stru_B8.offset + 3, "bias_", v7);
  }

  v16 = v15[4];
  v19 = 0;
  v20 = 0;
  if (v16 + v11 > *(a2 + 8))
  {
LABEL_9:
    kaldi::KaldiAssertFailure_("SubVector", "../subproject/libquasar/libkaldi/src/matrix/kaldi-vector.h", &stru_1F8.size + 6, "static_cast<UnsignedMatrixIndexT>(origin)+ static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v7);
  }

  v18 = (*a2 + 4 * v11);
  LODWORD(v19) = v16;
  return kaldi::CuVectorBase<float>::CopyToVec<float>(v15, &v18, v13, v14, v7);
}

_DWORD *kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<short>>::SetParams(void *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4 != (*(*a1 + 176))(a1))
  {
    kaldi::KaldiAssertFailure_("SetParams", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.cc", &stru_2E8.nreloc, "wei_src.Dim() == NumParams()", v5);
  }

  v6 = a1[19];
  if (!v6 || (v7 = kaldi::QuantizedMatrixBase<short>::NumRows(v6), (v8 = a1[19]) == 0) || (v9 = kaldi::QuantizedMatrixBase<short>::NumCols(v8), (v10 = a1[19]) == 0))
  {
    kaldi::KaldiAssertFailure_("Filters", "../subproject/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h", &stru_B8.size + 7, "filters_", v5);
  }

  v11 = v9 * v7;
  v18 = 0;
  v19 = 0;
  if (v11 > *(a2 + 8))
  {
    goto LABEL_10;
  }

  v17 = *a2;
  LODWORD(v18) = v11;
  kaldi::QuantizedMatrixBase<short>::CopyRowsFromVec(v10, &v17);
  v14 = a1[20];
  if (!v14)
  {
    kaldi::KaldiAssertFailure_("Bias", "../subproject/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h", &stru_B8.align + 3, "bias_", v5);
  }

  v15 = v14[4];
  v18 = 0;
  v19 = 0;
  if ((v15 + v11) > *(a2 + 8))
  {
LABEL_10:
    kaldi::KaldiAssertFailure_("SubVector", "../subproject/libquasar/libkaldi/src/matrix/kaldi-vector.h", &stru_1F8.size + 6, "static_cast<UnsignedMatrixIndexT>(origin)+ static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v5);
  }

  v17 = (*a2 + 4 * v11);
  LODWORD(v18) = v15;
  return kaldi::CuVectorBase<float>::CopyFromVec<float>(v14, &v17, v12, v13, v5);
}

float kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<short>>::GetNormalizedLearningRate(uint64_t a1, int a2)
{
  if ((*(a1 + 84) & 1) == 0)
  {
    return *(a1 + 56);
  }

  v2 = *(a1 + 312);
  v3 = *(a1 + 320) - v2;
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

float kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<short>>::SumParams(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *(a1 + 152);
  if (!v6)
  {
    kaldi::KaldiAssertFailure_("Filters", "../subproject/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h", &stru_B8.size + 3, "filters_", a5);
  }

  v8 = kaldi::QuantizedMatrixBase<short>::Sum(v6, a2, a3, a4, a5);
  v9 = *(a1 + 160);
  if (!v9)
  {
    kaldi::KaldiAssertFailure_("Bias", "../subproject/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h", &stru_B8.offset + 3, "bias_", v7);
  }

  v10 = v8;
  v11 = kaldi::CuVectorBase<float>::Sum(v9);
  return v10 + *&v11;
}

void kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<short>>::PerturbParams(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *(a1 + 152);
  if (v6)
  {
    v7 = kaldi::QuantizedMatrixBase<short>::NumRows(v6);
    v8 = *(a1 + 152);
    if (v8)
    {
      v9 = kaldi::QuantizedMatrixBase<short>::NumCols(v8);
      kaldi::CuMatrix<float>::CuMatrix(v11, v7, v9, 1u, 0, 0);
      kaldi::CuMatrixBase<float>::SetRandn(v11);
      if (*(a1 + 152))
      {
        kaldi::QuantizedMatrixBase<short>::AddMat();
      }

      kaldi::KaldiAssertFailure_("Filters", "../subproject/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h", &stru_B8.size + 7, "filters_", v10);
    }
  }

  kaldi::KaldiAssertFailure_("Filters", "../subproject/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h", &stru_B8.size + 7, "filters_", a5);
}

void sub_1212A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  kaldi::CuMatrix<float>::~CuMatrix(va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<short>>::Info(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  boost::filesystem::path::path(&v32, " ");
  kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<short>>::ParamsString(a1);
  if ((v31 & 0x80u) == 0)
  {
    v4 = v30;
  }

  else
  {
    v4 = v30[0];
  }

  if ((v31 & 0x80u) == 0)
  {
    v5 = v31;
  }

  else
  {
    v5 = v30[1];
  }

  v6 = std::string::append(&v32, v4, v5);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v33.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v33.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  v8 = std::string::append(&v33, "\n  filters");
  v10 = *&v8->__r_.__value_.__l.__data_;
  v34.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v34.__r_.__value_.__l.__data_ = v10;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v11 = *(a1 + 152);
  if (!v11)
  {
    kaldi::KaldiAssertFailure_("Filters", "../subproject/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h", &stru_B8.size + 3, "filters_", v9);
  }

  kaldi::nnet1::MomentStatistics<short>(v11);
  if ((v29 & 0x80u) == 0)
  {
    v12 = v28;
  }

  else
  {
    v12 = v28[0];
  }

  if ((v29 & 0x80u) == 0)
  {
    v13 = v29;
  }

  else
  {
    v13 = v28[1];
  }

  v14 = std::string::append(&v34, v12, v13);
  v15 = *&v14->__r_.__value_.__l.__data_;
  v35.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v35.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  v16 = std::string::append(&v35, "\n  bias");
  v21 = *&v16->__r_.__value_.__l.__data_;
  v36.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v36.__r_.__value_.__l.__data_ = v21;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v22 = *(a1 + 160);
  if (!v22)
  {
    kaldi::KaldiAssertFailure_("Bias", "../subproject/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h", &stru_B8.offset + 3, "bias_", v20);
  }

  kaldi::nnet1::MomentStatistics<float>(v22, v17, v18, v19, v20);
  if ((v27 & 0x80u) == 0)
  {
    v23 = __p;
  }

  else
  {
    v23 = __p[0];
  }

  if ((v27 & 0x80u) == 0)
  {
    v24 = v27;
  }

  else
  {
    v24 = __p[1];
  }

  v25 = std::string::append(&v36, v23, v24);
  *a2 = *v25;
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  v25->__r_.__value_.__r.__words[0] = 0;
  if (v27 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  if (v29 < 0)
  {
    operator delete(v28[0]);
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  if (v31 < 0)
  {
    operator delete(v30[0]);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }
}

void sub_12150C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v45 - 41) < 0)
  {
    operator delete(*(v45 - 64));
  }

  if (*(v45 - 73) < 0)
  {
    operator delete(*(v45 - 96));
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a45 < 0)
  {
    operator delete(a40);
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

uint64_t kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<short>>::ParamsString(unsigned int *a1)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v6);
  (*(*a1 + 168))(a1, &v6, 0);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, " , # of sections: ", 18);
  v2 = a1[36];
  v3 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, ", section size after pooling: ", 30);
  v4 = a1[37];
  std::ostream::operator<<();
  std::stringbuf::str();
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  std::locale::~locale(v8);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_121778(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<short>>::InfoGradient(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  boost::filesystem::path::path(&v57, " ");
  kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<short>>::ParamsString(a1);
  if ((v56 & 0x80u) == 0)
  {
    v4 = v55;
  }

  else
  {
    v4 = v55[0];
  }

  if ((v56 & 0x80u) == 0)
  {
    v5 = v56;
  }

  else
  {
    v5 = v55[1];
  }

  v6 = std::string::append(&v57, v4, v5);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v58.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v58.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  v8 = std::string::append(&v58, "\n  filters_grad");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v59.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v59.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  kaldi::nnet1::MomentStatistics<float>((a1 + 168), v10, v11, v12, v13);
  if ((v54 & 0x80u) == 0)
  {
    v14 = v53;
  }

  else
  {
    v14 = v53[0];
  }

  if ((v54 & 0x80u) == 0)
  {
    v15 = v54;
  }

  else
  {
    v15 = v53[1];
  }

  v16 = std::string::append(&v59, v14, v15);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v60.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v60.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::string::append(&v60, ", lr-coef ");
  v19 = *&v18->__r_.__value_.__l.__data_;
  v61.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v61.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  kaldi::nnet1::ToString<float>((a1 + 264));
  if ((v52 & 0x80u) == 0)
  {
    v20 = v51;
  }

  else
  {
    v20 = v51[0];
  }

  if ((v52 & 0x80u) == 0)
  {
    v21 = v52;
  }

  else
  {
    v21 = v51[1];
  }

  v22 = std::string::append(&v61, v20, v21);
  v23 = *&v22->__r_.__value_.__l.__data_;
  v62.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
  *&v62.__r_.__value_.__l.__data_ = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  v24 = std::string::append(&v62, ", max-norm ");
  v25 = *&v24->__r_.__value_.__l.__data_;
  v63.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
  *&v63.__r_.__value_.__l.__data_ = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  kaldi::nnet1::ToString<float>((a1 + 280));
  if ((v50 & 0x80u) == 0)
  {
    v26 = v49;
  }

  else
  {
    v26 = v49[0];
  }

  if ((v50 & 0x80u) == 0)
  {
    v27 = v50;
  }

  else
  {
    v27 = v49[1];
  }

  v28 = std::string::append(&v63, v26, v27);
  v29 = *&v28->__r_.__value_.__l.__data_;
  v64.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
  *&v64.__r_.__value_.__l.__data_ = v29;
  v28->__r_.__value_.__l.__size_ = 0;
  v28->__r_.__value_.__r.__words[2] = 0;
  v28->__r_.__value_.__r.__words[0] = 0;
  v30 = std::string::append(&v64, "\n  bias_grad");
  v31 = *&v30->__r_.__value_.__l.__data_;
  v65.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
  *&v65.__r_.__value_.__l.__data_ = v31;
  v30->__r_.__value_.__l.__size_ = 0;
  v30->__r_.__value_.__r.__words[2] = 0;
  v30->__r_.__value_.__r.__words[0] = 0;
  kaldi::nnet1::MomentStatistics<float>((a1 + 192), v32, v33, v34, v35);
  if ((v48 & 0x80u) == 0)
  {
    v36 = v47;
  }

  else
  {
    v36 = v47[0];
  }

  if ((v48 & 0x80u) == 0)
  {
    v37 = v48;
  }

  else
  {
    v37 = v47[1];
  }

  v38 = std::string::append(&v65, v36, v37);
  v39 = *&v38->__r_.__value_.__l.__data_;
  v66.__r_.__value_.__r.__words[2] = v38->__r_.__value_.__r.__words[2];
  *&v66.__r_.__value_.__l.__data_ = v39;
  v38->__r_.__value_.__l.__size_ = 0;
  v38->__r_.__value_.__r.__words[2] = 0;
  v38->__r_.__value_.__r.__words[0] = 0;
  v40 = std::string::append(&v66, ", lr-coef ");
  v41 = *&v40->__r_.__value_.__l.__data_;
  v67.__r_.__value_.__r.__words[2] = v40->__r_.__value_.__r.__words[2];
  *&v67.__r_.__value_.__l.__data_ = v41;
  v40->__r_.__value_.__l.__size_ = 0;
  v40->__r_.__value_.__r.__words[2] = 0;
  v40->__r_.__value_.__r.__words[0] = 0;
  kaldi::nnet1::ToString<float>((a1 + 268));
  if ((v46 & 0x80u) == 0)
  {
    v42 = __p;
  }

  else
  {
    v42 = __p[0];
  }

  if ((v46 & 0x80u) == 0)
  {
    v43 = v46;
  }

  else
  {
    v43 = __p[1];
  }

  v44 = std::string::append(&v67, v42, v43);
  *a2 = *v44;
  v44->__r_.__value_.__l.__size_ = 0;
  v44->__r_.__value_.__r.__words[2] = 0;
  v44->__r_.__value_.__r.__words[0] = 0;
  if (v46 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v67.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v66.__r_.__value_.__l.__data_);
  }

  if (v48 < 0)
  {
    operator delete(v47[0]);
  }

  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v65.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v64.__r_.__value_.__l.__data_);
  }

  if (v50 < 0)
  {
    operator delete(v49[0]);
  }

  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v63.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
  }

  if (v52 < 0)
  {
    operator delete(v51[0]);
  }

  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
  }

  if (v54 < 0)
  {
    operator delete(v53[0]);
  }

  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
  }

  if (v56 < 0)
  {
    operator delete(v55[0]);
  }

  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__r_.__value_.__l.__data_);
  }
}

void sub_121B64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57, uint64_t a58, void *a59, uint64_t a60, int a61, __int16 a62, char a63)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v73 - 57) < 0)
  {
    operator delete(*(v73 - 80));
  }

  if (*(v73 - 89) < 0)
  {
    operator delete(*(v73 - 112));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v73 - 121) < 0)
  {
    operator delete(*(v73 - 144));
  }

  if (*(v73 - 153) < 0)
  {
    operator delete(*(v73 - 176));
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (*(v73 - 185) < 0)
  {
    operator delete(*(v73 - 208));
  }

  if (*(v73 - 217) < 0)
  {
    operator delete(*(v73 - 240));
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a73 < 0)
  {
    operator delete(a72);
  }

  if (a71 < 0)
  {
    operator delete(a66);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  if (a64 < 0)
  {
    operator delete(a59);
  }

  if (a57 < 0)
  {
    operator delete(a52);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  if (a51 < 0)
  {
    operator delete(a46);
  }

  _Unwind_Resume(a1);
}

void kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<short>>::PropagateFncDirect(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::InitOutBuffers(a1);
  if (*(a1 + 128) <= 0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = 1.0;
  }

  kaldi::CuMatrix<float>::Resize(*(a1 + 384) + 48 * a4, *(a2 + 20), (*(a1 + 108) * *(a1 + 120)), 3u, 0);
  if (*(a1 + 144) >= 1)
  {
    v9 = 0;
    do
    {
      v10 = *(a1 + 120);
      if (*(a1 + 128) >= 1)
      {
        kaldi::CuSubMatrix<float>::CuSubMatrix(&v45, a3, 0, *(a3 + 20), (v10 * v9 * *(a1 + 108)), *(a1 + 108));
        kaldi::CuSubMatrix<float>::CuSubMatrix(&v42, a2, 0, *(a2 + 20), (*(a1 + 104) * *(a1 + 140)), *(a1 + 128) * *(a1 + 104));
        v12 = *(a1 + 152);
        if (!v12)
        {
          kaldi::KaldiAssertFailure_("Filters", "../subproject/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h", &stru_B8.size + 7, "filters_", v11);
        }

        kaldi::QuantizedMatrixBase<short>::Range(v12, *(a1 + 104) * *(a1 + 124), *(a1 + 128) * *(a1 + 104), *(a1 + 108) * v9, *(a1 + 108), &v39);
        kaldi::CuMatrixBase<float>::AddMatMat<short>(&v45, &v42, 111, &v39, &stru_68.sectname[7], 1.0, 0.0);
        v13 = *(a1 + 120);
        if (v13 >= 2)
        {
          for (i = 1; i < v13; ++i)
          {
            kaldi::CuSubMatrix<float>::CuSubMatrix(&v36, a3, 0, *(a3 + 20), (*(a1 + 108) * (i + v9 * v13)), *(a1 + 108));
            kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v36, &v45, 111, v15, v16);
            v36 = off_276F40;
            v37 = 0u;
            v38 = 0u;
            fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v36);
            v13 = *(a1 + 120);
          }
        }

        kaldi::QuantizedMatrixBase<short>::~QuantizedMatrixBase(&v39);
        v42 = off_276F40;
        v43 = 0u;
        v44 = 0u;
        fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v42);
        v45 = off_276F40;
        v46 = 0u;
        v47 = 0u;
        fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v45);
        v10 = *(a1 + 120);
      }

      if (v10 >= 1)
      {
        v17 = 0;
        do
        {
          v18 = *(a1 + 384) + 48 * a4;
          kaldi::CuSubMatrix<float>::CuSubMatrix(&v45, v18, 0, *(v18 + 20), (*(a1 + 108) * v17), *(a1 + 108));
          v20 = *(a1 + 160);
          if (!v20)
          {
            kaldi::KaldiAssertFailure_("Bias", "../subproject/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h", &stru_B8.align + 3, "bias_", v19);
          }

          kaldi::CuSubVector<float>::CuSubVector(&v39, v20, *(a1 + 108) * v9, *(a1 + 108), v19);
          kaldi::CuMatrixBase<float>::AddVecToRows(&v45, &v39, v21, v22, v23, 1.0, v8);
          kaldi::CuSubMatrix<float>::CuSubMatrix(&v42, a2, 0, *(a2 + 20), ((*(a1 + 116) * v9 + *(a1 + 112) * v17) * *(a1 + 104)), *(a1 + 124) * *(a1 + 104));
          v25 = *(a1 + 152);
          if (!v25)
          {
            kaldi::KaldiAssertFailure_("Filters", "../subproject/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h", &stru_B8.size + 7, "filters_", v24);
          }

          kaldi::QuantizedMatrixBase<short>::Range(v25, 0, *(a1 + 104) * *(a1 + 124), *(a1 + 108) * v9, *(a1 + 108), &v39);
          kaldi::CuMatrixBase<float>::AddMatMat<short>(&v45, &v42, 111, &v39, &stru_68.sectname[7], 1.0, 1.0);
          kaldi::QuantizedMatrixBase<short>::~QuantizedMatrixBase(&v39);
          v42 = off_276F40;
          v43 = 0u;
          v44 = 0u;
          fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v42);
          v45 = off_276F40;
          v46 = 0u;
          v47 = 0u;
          fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v45);
          ++v17;
        }

        while (v17 < *(a1 + 120));
      }

      v26 = *(a1 + 148);
      if (v26 >= 1)
      {
        for (j = 0; j < v26; ++j)
        {
          kaldi::CuSubMatrix<float>::CuSubMatrix(&v39, a3, 0, *(a3 + 20), (*(a1 + 108) * (j + v26 * v9)), *(a1 + 108));
          v28 = *(a1 + 384) + 48 * a4;
          kaldi::CuSubMatrix<float>::CuSubMatrix(&v45, v28, 0, *(v28 + 20), (*(a1 + 136) * j * *(a1 + 108)), *(a1 + 108));
          kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v39, &v45, 111, v29, v30);
          v45 = off_276F40;
          v46 = 0u;
          v47 = 0u;
          fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v45);
          if (*(a1 + 132) >= 2)
          {
            v31 = 1;
            do
            {
              v32 = *(a1 + 384) + 48 * a4;
              kaldi::CuSubMatrix<float>::CuSubMatrix(&v45, v32, 0, *(v32 + 20), ((v31 + j * *(a1 + 136)) * *(a1 + 108)), *(a1 + 108));
              kaldi::CuMatrixBase<float>::Max(&v39, &v45, v33, v34, v35);
              v45 = off_276F40;
              v46 = 0u;
              v47 = 0u;
              fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v45);
              ++v31;
            }

            while (v31 < *(a1 + 132));
          }

          v39 = off_276F40;
          v40 = 0u;
          v41 = 0u;
          fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v39);
          v26 = *(a1 + 148);
        }
      }

      ++v9;
    }

    while (v9 < *(a1 + 144));
  }
}

void sub_122274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void (**a20)(), __int128 a21, __int128 a22, void (**a23)())
{
  a20 = off_276F40;
  a21 = 0u;
  a22 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&a20);
  a23 = off_276F40;
  *(v23 + 8) = 0u;
  *(v23 + 24) = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&a23);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<short>>::BackpropagateFnc()
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v0, "BackpropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.cc", 596);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Backpropagation of CNN ConvolutionalMaxPoolingComponent is not supported for quantized weights");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

void kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<short>>::AccumGradients()
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v0, "AccumGradients", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.cc", 640);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Not supported for quantized weights");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

void kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<short>>::UpdateWeights()
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v0, "UpdateWeights", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.cc", 687);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Unimplemented");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

uint64_t kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<short>>::GetGradient(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = (*(*a1 + 16))(a1);
  kaldi::CuMatrix<float>::CuMatrix(v43, *(a3 + 20), *(a3 + 16), 0, 0, 0);
  kaldi::CuMatrix<float>::CuMatrix(v42, *(a2 + 20), *(a2 + 16), 0, 0, 0);
  (*(*v8 + 112))(v8, a2, v43, 0);
  (*(*v8 + 128))(v8, a2, v43, a3, v42, 0);
  (*(*v8 + 232))(v8, a2, a3, 0, 0);
  v10 = a1[19];
  if (!v10 || (v11 = kaldi::QuantizedMatrixBase<short>::NumRows(v10), (v12 = a1[19]) == 0))
  {
    kaldi::KaldiAssertFailure_("Filters", "../subproject/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h", &stru_B8.size + 3, "filters_", v9);
  }

  v13 = kaldi::QuantizedMatrixBase<short>::NumCols(v12);
  v14 = (*(*a1 + 176))(a1);
  kaldi::Vector<float>::Resize(a4, v14, 1, v15, v16);
  v20 = v13 * v11;
  v40 = 0;
  v41 = 0;
  if (v20 > *(a4 + 8))
  {
    kaldi::KaldiAssertFailure_("SubVector", "../subproject/libquasar/libkaldi/src/matrix/kaldi-vector.h", &stru_1F8.size + 6, "static_cast<UnsignedMatrixIndexT>(origin)+ static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v19);
  }

  v39 = *a4;
  LODWORD(v40) = v20;
  v21 = kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::FiltersGrad(v8, 0, v17, v18, v19);
  kaldi::VectorBase<float>::CopyRowsFromMat(&v39, v21, v22, v23, v24);
  v28 = a1[20];
  if (!v28)
  {
    v35 = "bias_";
    v36 = (&stru_B8 + 51);
    v37 = "../subproject/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h";
    v38 = "Bias";
    goto LABEL_11;
  }

  v29 = *(v28 + 16);
  v40 = 0;
  v41 = 0;
  if ((v29 + v20) > *(a4 + 8))
  {
    v35 = "static_cast<UnsignedMatrixIndexT>(origin)+ static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())";
    v36 = &stru_1F8.size + 6;
    v37 = "../subproject/libquasar/libkaldi/src/matrix/kaldi-vector.h";
    v38 = "SubVector";
LABEL_11:
    kaldi::KaldiAssertFailure_(v38, v37, v36, v35, v27);
  }

  v39 = (*a4 + 4 * v20);
  LODWORD(v40) = v29;
  v30 = kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::BiasGrad(v8, 0, v25, v26, v27);
  kaldi::CuVectorBase<float>::CopyToVec<float>(v30, &v39, v31, v32, v33);
  (*(*v8 + 8))(v8);
  kaldi::CuMatrix<float>::~CuMatrix(v42);
  return kaldi::CuMatrix<float>::~CuMatrix(v43);
}

void sub_1227C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
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

uint64_t kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<short>>::SetGradientNormalization(uint64_t result, int a2, float a3)
{
  *(result + 276) = a3;
  *(result + 272) = a2;
  *(result + 480) = 0;
  return result;
}

void kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<short>>::NormalizeGradients(uint64_t a1, int a2, uint64_t a3, uint64_t a4, const char *a5, float a6)
{
  v7 = a6;
  v9 = *(a1 + 272);
  if (v9 == 3)
  {
    if (a6 >= 0.0 && a6 <= 1.0)
    {
      v17 = kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::FiltersGrad(a1, a2, a3, a4, a5);
      kaldi::nnet1::UpdatableComponent::RmspropGradient(v17, *(a1 + 216) + 48 * a2, v7);
      v21 = kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::BiasGrad(a1, a2, v18, v19, v20);
      v25 = *(a1 + 240) + 32 * a2;

      kaldi::nnet1::UpdatableComponent::RmspropGradient(v21, v25, v7, v22, v23, v24);
    }
  }

  else if (v9 == 2)
  {
    if (a6 > 0.0)
    {
      v15 = a2;
      if (*(a1 + 84))
      {
        v7 = *(*(a1 + 288) + 4 * a2) * a6;
      }

      v26 = kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::FiltersGrad(a1, a2, a3, a4, a5);
      kaldi::nnet1::UpdatableComponent::LimitL2NormGradient(v26, (*(a1 + 216) + 48 * v15), v7, v27, v28, v29);
      v33 = kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::BiasGrad(a1, a2, v30, v31, v32);
      v37 = (*(a1 + 240) + 32 * v15);

      kaldi::nnet1::UpdatableComponent::LimitL2NormGradient(v33, v37, v34, v35, v36, v7);
    }
  }

  else if (v9 == 1 && a6 > 0.0)
  {
    if (*(a1 + 84) == 1)
    {
      v7 = *(*(a1 + 288) + 4 * a2) * a6;
    }

    v10 = kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::FiltersGrad(a1, a2, a3, a4, a5);
    kaldi::nnet1::UpdatableComponent::ClipGradient(v10, v7);
    v14 = kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::BiasGrad(a1, a2, v11, v12, v13);

    kaldi::nnet1::UpdatableComponent::ClipGradient(v14, v7);
  }
}

uint64_t kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<short>>::CountZeroCorr(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<short>>::EnsureCorrs(a1);
  v7 = *(a1 + 160);
  if (!v7)
  {
    kaldi::KaldiAssertFailure_("Bias", "../subproject/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h", &stru_B8.align + 3, "bias_", v6);
  }

  v8 = *(a1 + 152);
  if (!v8 || (v9 = *(v7 + 16), v10 = kaldi::QuantizedMatrixBase<short>::NumRows(v8), (v11 = *(a1 + 152)) == 0))
  {
    kaldi::KaldiAssertFailure_("Filters", "../subproject/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h", &stru_B8.size + 7, "filters_", v6);
  }

  result = kaldi::QuantizedMatrixBase<short>::NumCols(v11);
  *a3 = v9 + result * v10;
  v16 = *(a1 + 176) - *(a1 + 168);
  if (v16)
  {
    v17 = *(a1 + 200) - *(a1 + 192);
    if (v17)
    {
      v18 = v16 >> 3;
      if (*(a1 + 80) == 1)
      {
        v19 = 0;
      }

      else
      {
        v19 = *(a1 + 80);
      }

      if (v18 - 1 != v19 || (v17 >> 3) - 1 != v19)
      {
        kaldi::KaldiErrorMessage::KaldiErrorMessage(v34, "CountZeroCorr", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.cc", 883);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "Unexpected mismatch in indexes: ", 32);
        v30 = std::ostream::operator<<();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "  ", 2);
        v31 = (*(a1 + 176) - *(a1 + 168)) >> 3;
        v32 = std::ostream::operator<<();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "  ", 2);
        v33 = (*(a1 + 200) - *(a1 + 192)) >> 3;
        std::ostream::operator<<();
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v34);
      }

      v20 = kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::FiltersGrad(a1, v19, v13, v14, v15);
      v25 = kaldi::CuMatrixBase<float>::CountZeros(v20, v21, v22, v23, v24);
      v29 = kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::BiasGrad(a1, v19, v26, v27, v28);
      result = kaldi::CuVectorBase<float>::CountZeros(v29);
      LODWORD(v17) = result + v25;
    }
  }

  else
  {
    LODWORD(v17) = 0;
  }

  *a2 = v17;
  return result;
}

void kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<short>>::EnsureCorrs(uint64_t a1)
{
  kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::InitOutBuffers(a1);
  if ((*(a1 + 480) & 1) == 0)
  {
    v2 = *(a1 + 80);
    if (v2 > 1)
    {
      v3 = (v2 + 1);
    }

    else
    {
      v3 = 1;
    }

    std::vector<kaldi::CuMatrix<float>>::resize((a1 + 408), v3);
    std::vector<kaldi::CuMatrix<float>>::resize((a1 + 360), v3);
    std::vector<BOOL>::resize(a1 + 456, v3, 0);
    v4 = *(a1 + 272);
    std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::resize((a1 + 168), v3);
    std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::resize((a1 + 192), v3);
    std::vector<kaldi::CuMatrix<float>>::resize((a1 + 216), v3);
    std::vector<kaldi::CuVector<float>>::resize((a1 + 240), v3, v5, v6, v7);
    if (v3 >= 1)
    {
      operator new();
    }

    std::vector<int>::resize((a1 + 288), v3);
    *(a1 + 480) = 1;
  }
}

void kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<short>>::VectorizeWeightsCorrs()
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v0, "VectorizeWeightsCorrs", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.cc", 908);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Unimplemented");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

void kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::BackpropagateFnc(uint64_t a1)
{
  kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::EnsureCorrs(a1);
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v1, "BackpropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.cc", 608);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v1, "Backpropagation of CNN ConvolutionalMaxPoolingComponent is not supported on CPU");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v1);
}

void kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::AccumGradients(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::EnsureCorrs(a1);
  *(*(a1 + 288) + 4 * a5) = *(a2 + 20);
  if (((*(*(a1 + 456) + ((a5 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a5) & 1) == 0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(&v46, "AccumGradients", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.cc", 653);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v46, "ConvolutionalMaxPoolingComponent::AccumGradients can't be called before ConvolutionalMaxPoolingComponent::Backpropagate");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v46);
  }

  *(kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::FiltersGrad(a1, a5, v9, v10, v11) + 32) = a4;
  *(kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::BiasGrad(a1, a5, v12, v13, v14) + 24) = a4;
  v18 = kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::FiltersGrad(a1, a5, v15, v16, v17);
  kaldi::CuMatrixBase<float>::SetZero(v18);
  v22 = kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::BiasGrad(a1, a5, v19, v20, v21);
  kaldi::CuVectorBase<float>::SetZero(v22);
  if (*(a1 + 144) >= 1)
  {
    v26 = 0;
    do
    {
      v27 = kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::FiltersGrad(a1, a5, v23, v24, v25);
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v46, v27, 0, *(v27 + 20), (*(a1 + 108) * v26), *(a1 + 108));
      v28 = *(a1 + 408) + 48 * a5;
      v29 = *(a2 + 20) * *(a1 + 120);
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v43, v28, v29 * v26, v29, 0, *(v28 + 16));
      v30 = *(a2 + 20) * *(a1 + 120);
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v40, *(a1 + 336) + 48 * a5, v30 * v26, v30, 0, *(a1 + 104) * *(a1 + 124));
      kaldi::CuMatrixBase<float>::AddMatMat(&v46, &v40, CblasTrans, &v43, &stru_68.sectname[7], 1.0, 0.0);
      v34 = kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::BiasGrad(a1, a5, v31, v32, v33);
      kaldi::CuSubVector<float>::CuSubVector(v39, v34, *(a1 + 108) * v26, *(a1 + 108), v35);
      kaldi::CuVectorBase<float>::AddRowSumMat(v39, &v43, 1.0, 1.0, v36, v37, v38);
      v40 = off_276F40;
      v41 = 0u;
      v42 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v40);
      v43 = off_276F40;
      v44 = 0u;
      v45 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v43);
      v46 = off_276F40;
      v47 = 0u;
      v48 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v46);
      ++v26;
    }

    while (v26 < *(a1 + 144));
  }
}

void sub_12330C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void (**a23)())
{
  a23 = off_276F40;
  *(v23 + 8) = 0u;
  *(v23 + 24) = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&a23);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::UpdateWeights(uint64_t a1, uint64_t a2, int a3)
{
  kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::EnsureCorrs(a1);
  v9 = *(a1 + 152);
  if (!v9)
  {
    goto LABEL_46;
  }

  v11 = *(a1 + 64);
  v10 = *(a1 + 68);
  v12 = *(a1 + 72);
  v13 = *(a1 + 76);
  *(v9 + 32) = a2;
  v14 = *(a1 + 160);
  if (!v14)
  {
    kaldi::KaldiAssertFailure_("Bias", "../subproject/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h", &stru_B8.align + 3, "bias_", v8);
  }

  *(v14 + 24) = a2;
  v15 = *(a1 + 80);
  if (a3 >= 0)
  {
    v16 = a3;
  }

  else
  {
    v16 = *(a1 + 80);
  }

  if (v15 == 1)
  {
    v17 = 0;
  }

  else
  {
    v17 = v16;
  }

  if (v17 > v15)
  {
    kaldi::KaldiAssertFailure_("UpdateWeights", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.cc", &stru_298.offset, "batch_idx <= opts_.num_subbatches", v8);
  }

  *(kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::FiltersGrad(a1, v17, v6, v7, v8) + 32) = a2;
  *(kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::BiasGrad(a1, v17, v18, v19, v20) + 24) = a2;
  *(*(a1 + 216) + 48 * v17 + 32) = a2;
  *(*(a1 + 240) + 32 * v17 + 24) = a2;
  if (v17 == *(a1 + 80))
  {
    v24 = kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::FiltersGrad(a1, v17, v21, v22, v8);
    v28 = kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::FiltersGrad(a1, 0, v25, v26, v27);
    kaldi::CuMatrixBase<float>::AddMat(v24, v28, 111, v29, v30, 1.0, 0.0);
    v34 = kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::BiasGrad(a1, v17, v31, v32, v33);
    v38 = kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::BiasGrad(a1, 0, v35, v36, v37);
    kaldi::CuVectorBase<float>::AddVec(v34, v38, v39, v40, v41, 1.0, 0.0);
    if (*(a1 + 80) > 1)
    {
      v42 = 1;
      do
      {
        v43 = kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::FiltersGrad(a1, v17, v21, v22, v8);
        v47 = kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::FiltersGrad(a1, v42, v44, v45, v46);
        kaldi::CuMatrixBase<float>::AddMat(v43, v47, 111, v48, v49, 1.0, 1.0);
        v53 = kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::BiasGrad(a1, v17, v50, v51, v52);
        v57 = kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::BiasGrad(a1, v42, v54, v55, v56);
        kaldi::CuVectorBase<float>::AddVec(v53, v57, v58, v59, v60, 1.0, 1.0);
        ++v42;
      }

      while (v42 < *(a1 + 80));
    }

    v61 = *(a1 + 288);
    v61[v17] = 0;
    if (v17 >= 1)
    {
      v62 = 0;
      v63 = v17;
      v64 = v61;
      do
      {
        v65 = *v64++;
        v62 += v65;
        v61[v17] = v62;
        --v63;
      }

      while (v63);
    }
  }

  v66 = *(a1 + 56);
  if (*(a1 + 84) == 1)
  {
    *v23.i32 = *(*(a1 + 288) + 4 * v17);
    v66 = v66 / *v23.i32;
  }

  v67 = *(a1 + 312);
  if (v17 >= ((*(a1 + 320) - v67) >> 2))
  {
    LODWORD(v105[0]) = 2143289344;
    std::vector<float>::resize((a1 + 312), v17 + 1, v105, v23);
    v67 = *(a1 + 312);
  }

  *(v67 + 4 * v17) = v66;
  if (*(a1 + 276) >= 0.0)
  {
    (*(*a1 + 248))(a1, v17);
  }

  if (v11 != 0.0)
  {
    v68 = *(a1 + 152);
    if (!v68)
    {
      goto LABEL_46;
    }

    kaldi::CuMatrixBase<float>::AddMat(v68, *(a1 + 152), 111, v22, v8, -(v66 * v11) * *(*(a1 + 288) + 4 * v17), 1.0);
  }

  if (v10 != 0.0)
  {
    v69 = *(a1 + 152);
    if (!v69)
    {
      goto LABEL_46;
    }

    v70 = kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::FiltersGrad(a1, v17, v21, v22, v8);
    kaldi::cu::RegularizeL1<float>(v69, v70, (v10 * v66) * *(*(a1 + 288) + 4 * v17), v66, v71, v72, v73);
  }

  if (v12 > 0.0)
  {
    if (*(a1 + 80) >= 2)
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v105, "UpdateWeights", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.cc", 751);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v105, "the multi batch gradient quantization does not work yet");
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v105);
    }

    if (*(a1 + 496) == *(a1 + 488))
    {
      kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::InitResidualAggregator(a1, (a1 + 488));
    }

    kaldi::nnet1::QuantizerResidualAggregator::Quantize((a1 + 488), v13, v12, v21, v22, v8);
  }

  kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::ApplyCorr(a1, v17, v66);
  if (*(a1 + 280) > 0.0)
  {
    v74 = *(a1 + 152);
    if (v74)
    {
      kaldi::CuMatrix<float>::CuMatrix(v105, v74, 111);
      v78 = *(a1 + 152);
      if (!v78)
      {
        kaldi::KaldiAssertFailure_("Filters", "../subproject/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h", &stru_B8.size + 7, "filters_", v77);
      }

      kaldi::CuMatrixBase<float>::MulElements(v105, v78, v75, v76, v77);
      v81 = *(a1 + 152);
      if (!v81)
      {
        kaldi::KaldiAssertFailure_("Filters", "../subproject/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h", &stru_B8.size + 7, "filters_", v80);
      }

      v82 = *(v81 + 20);
      v103[1] = 0;
      v103[2] = 0;
      v103[0] = off_277020;
      v104 = 0;
      kaldi::CuVector<float>::Resize(v103, v82, 0, v79, v80);
      v104 = a2;
      kaldi::CuVectorBase<float>::AddColSumMat(v103, v105, 1.0, 0.0, v83, v84, v85);
      kaldi::CuVectorBase<float>::ApplyPow(v103, 0.5);
      kaldi::CuVector<float>::CuVector(v102, v103, v86, v87, v88);
      kaldi::CuVectorBase<float>::Scale(v102, 1.0 / *(a1 + 280));
      kaldi::CuVectorBase<float>::ApplyFloor(v102, 1.0);
      kaldi::CuVectorBase<float>::InvertElements(v102);
      v92 = *(a1 + 152);
      if (v92)
      {
        kaldi::CuMatrixBase<float>::MulRowsVec(v92, v102, v89, v90, v91);
        v96 = *(a1 + 160);
        if (v96)
        {
          kaldi::CuVectorBase<float>::ApplyMaxNorm(v96, *(a1 + 280), v93, v94, v95, v91);
          kaldi::CuVector<float>::~CuVector(v102);
          kaldi::CuVector<float>::~CuVector(v103);
          kaldi::CuMatrix<float>::~CuMatrix(v105);
          goto LABEL_41;
        }

        v99 = "bias_";
        v100 = &stru_B8.align + 3;
        v101 = "Bias";
      }

      else
      {
        v99 = "filters_";
        v100 = (&stru_B8 + 47);
        v101 = "Filters";
      }

      kaldi::KaldiAssertFailure_(v101, "../subproject/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h", v100, v99, v91);
    }

LABEL_46:
    kaldi::KaldiAssertFailure_("Filters", "../subproject/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h", &stru_B8.size + 7, "filters_", v8);
  }

LABEL_41:
  v97 = *(a1 + 288);
  if (v17 == *(a1 + 80))
  {
    v98 = *(a1 + 296);
    if (v97 != v98)
    {
      bzero(v97, v98 - v97);
    }
  }

  else
  {
    *&v97[4 * v17] = 0;
  }
}

void sub_12396C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  kaldi::CuVector<float>::~CuVector(va);
  kaldi::CuMatrix<float>::~CuMatrix(va1);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::VectorizeWeightsCorrs(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(a1 + 16) == 1)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v9, "VectorizeWeightsCorrs", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.cc", 918);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v9, "Weights are already vectorized");
  }

  else
  {
    if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
    {
      kaldi::KaldiLogMessage::KaldiLogMessage(v9, "VectorizeWeightsCorrs", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.cc", 921);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "Performing vectorization of convolutional maxpooling component", 62);
      kaldi::KaldiLogMessage::~KaldiLogMessage(v9);
    }

    v6 = *(a1 + 152);
    if (!v6)
    {
      kaldi::KaldiAssertFailure_("Filters", "../subproject/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h", &stru_B8.size + 7, "filters_", a5);
    }

    v7 = *(a1 + 160);
    if (!v7)
    {
      kaldi::KaldiAssertFailure_("Bias", "../subproject/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h", &stru_B8.align + 3, "bias_", a5);
    }

    v8 = *(v7 + 16) + *(v6 + 16) * *(v6 + 20);
    if (v8 == (*(*a1 + 176))(a1))
    {
      kaldi::CuSubMatrix<float>::CopyDataAndReplaceWithCuSub((a1 + 152));
    }

    kaldi::KaldiErrorMessage::KaldiErrorMessage(v9, "VectorizeWeightsCorrs", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.cc", 924);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v9, "(nlinparams + Bias().Dim()) == NumParams()");
  }

  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v9);
}

void kaldi::nnet1::CnnRearrangeComponent::InitData(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v49 = 0;
  v50 = 0;
  v51 = 0;
  memset(&v48, 0, sizeof(v48));
  v47 = -1;
  v44 = 0;
  v45 = 0;
  v7 = a2 + 4;
  v46 = 0;
  while ((*(v7 + *(*a2 - 24)) & 2) == 0)
  {
    kaldi::ReadToken(a2, 0, &v44, a4, a5);
    if (SHIBYTE(v46) < 0)
    {
      if (v45 != 10)
      {
        goto LABEL_45;
      }

      v10 = v44;
    }

    else
    {
      if (SHIBYTE(v46) != 10)
      {
        goto LABEL_45;
      }

      v10 = &v44;
    }

    v11 = *v10;
    v12 = *(v10 + 4);
    if (v11 != 0x646E61426D754E3CLL || v12 != 15987)
    {
LABEL_45:
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v43, "InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.cc", 1071);
      v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, "Unknown token ", 14);
      if (v46 >= 0)
      {
        v39 = &v44;
      }

      else
      {
        v39 = v44;
      }

      if (v46 >= 0)
      {
        v40 = HIBYTE(v46);
      }

      else
      {
        v40 = v45;
      }

      v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, v39, v40);
      v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, ", a typo in config?", 19);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, " (NumBands)", 11);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v43);
    }

    kaldi::ReadBasicType<int>(a2, 0, &v47, v8, v9);
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }

  v14 = v47;
  if (v47 <= 0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v43, "InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.cc", 1076);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, "NumBands should be > 0", 22);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v43);
  }

  v15 = *(a1 + 8);
  v16 = v15 / v47;
  if (v15 % v47)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v43, "InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.cc", 1078);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, "Invalid NumBands value", 22);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v43);
  }

  v17 = 0;
  do
  {
    if (v16 >= 1)
    {
      v18 = 0;
      v19 = v50;
      do
      {
        v20 = v17 + v47 * v18;
        if (v19 >= v51)
        {
          v21 = v49;
          v22 = v19 - v49;
          v23 = (v19 - v49) >> 2;
          v24 = v23 + 1;
          if ((v23 + 1) >> 62)
          {
            std::vector<float>::__throw_length_error[abi:ne200100]();
          }

          v25 = v51 - v49;
          if ((v51 - v49) >> 1 > v24)
          {
            v24 = v25 >> 1;
          }

          if (v25 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v26 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v26 = v24;
          }

          if (v26)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(&v49, v26);
          }

          v27 = (v19 - v49) >> 2;
          v28 = (4 * v23);
          v29 = (4 * v23 - 4 * v27);
          *v28 = v20;
          v19 = (v28 + 1);
          memcpy(v29, v21, v22);
          v30 = v49;
          v49 = v29;
          v50 = v19;
          v51 = 0;
          if (v30)
          {
            operator delete(v30);
          }
        }

        else
        {
          *v19 = v20;
          v19 += 4;
        }

        v50 = v19;
        ++v18;
      }

      while (v16 != v18);
      v14 = v47;
    }

    ++v17;
  }

  while (v17 < v14);
  std::vector<int>::resize(&v48, *(a1 + 8));
  v33 = v49;
  if (*(a1 + 8) >= 1)
  {
    v34 = 0;
    begin = v48.__begin_;
    do
    {
      begin[*&v33[4 * v34]] = v34;
      ++v34;
    }

    while (v34 < *(a1 + 8));
  }

  kaldi::CuArray<int>::Resize(a1 + 48, (v50 - v33) >> 2, 1u, v31, v32);
  memcpy(*(a1 + 56), v49, v50 - v49);
  kaldi::CuArray<int>::Resize(a1 + 72, (v48.__end_ - v48.__begin_) >> 2, 1u, v36, v37);
  memcpy(*(a1 + 80), v48.__begin_, v48.__end_ - v48.__begin_);
  if (SHIBYTE(v46) < 0)
  {
    operator delete(v44);
  }

  if (v48.__begin_)
  {
    v48.__end_ = v48.__begin_;
    operator delete(v48.__begin_);
  }

  if (v49)
  {
    v50 = v49;
    operator delete(v49);
  }
}

void sub_12434C(_Unwind_Exception *exception_object)
{
  if (*(v1 - 145) < 0)
  {
    operator delete(*(v1 - 168));
  }

  v3 = *(v1 - 136);
  if (v3)
  {
    *(v1 - 128) = v3;
    operator delete(v3);
  }

  v4 = *(v1 - 112);
  if (v4)
  {
    *(v1 - 104) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::CnnRearrangeComponent::ReadData(uint64_t a1, void *a2, int a3, uint64_t a4, const char *a5)
{
  v18 = 0;
  kaldi::ReadBasicType<char>(a2, a3, &v18, a4, a5);
  memset(&v17, 0, sizeof(v17));
  kaldi::ReadIntegerVector<int>(a2, a3, &v17, 0, 0, 0, 0);
  kaldi::CuArray<int>::Resize(a1 + 48, (v17.__end_ - v17.__begin_) >> 2, 1u, v8, v9);
  memcpy(*(a1 + 56), v17.__begin_, v17.__end_ - v17.__begin_);
  memset(&__p, 0, sizeof(__p));
  kaldi::ReadIntegerVector<int>(a2, a3, &__p, 0, 0, 0, 0);
  kaldi::CuArray<int>::Resize(a1 + 72, (__p.__end_ - __p.__begin_) >> 2, 1u, v10, v11);
  memcpy(*(a1 + 80), __p.__begin_, __p.__end_ - __p.__begin_);
  v13 = *(a1 + 48);
  if (v13 != *(a1 + 12))
  {
    v14 = "copy_from_indices_.Dim() == OutputDim()";
    v15 = (&stru_428 + 43);
    goto LABEL_10;
  }

  if (*(a1 + 72) != v13)
  {
    v14 = "back_copy_from_indices_.Dim() == OutputDim()";
    v15 = &stru_428.size + 4;
LABEL_10:
    kaldi::KaldiAssertFailure_("ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.cc", v15, v14, v12);
  }

  if (__p.__begin_)
  {
    __p.__end_ = __p.__begin_;
    operator delete(__p.__begin_);
  }

  if (v17.__begin_)
  {
    v17.__end_ = v17.__begin_;
    operator delete(v17.__begin_);
  }
}

void sub_1244E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::CnnRearrangeComponent::WriteData(uint64_t a1, void *a2, int a3)
{
  kaldi::WriteBasicType<char>(a2, a3);
  std::vector<int>::vector[abi:ne200100](&v7, *(a1 + 48));
  kaldi::CuArray<int>::CopyToVec((a1 + 48), &v7);
  kaldi::WriteIntegerByteArray<int>(a2, a3, 0, v7.__end_ - v7.__begin_, v7.__begin_);
  std::vector<int>::vector[abi:ne200100](&__p, *(a1 + 72));
  kaldi::CuArray<int>::CopyToVec((a1 + 72), &__p);
  kaldi::WriteIntegerByteArray<int>(a2, a3, 0, __p.__end_ - __p.__begin_, __p.__begin_);
  if (__p.__begin_)
  {
    __p.__end_ = __p.__begin_;
    operator delete(__p.__begin_);
  }

  if (v7.__begin_)
  {
    v7.__end_ = v7.__begin_;
    operator delete(v7.__begin_);
  }
}

void sub_1245EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::PaddingComponent::InitData(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  *(a1 + 56) = 0;
  v7 = a1 + 56;
  v8 = a1 + 52;
  v9 = (a1 + 60);
  *(a1 + 48) = 0;
  v10 = (a1 + 48);
  v32 = 0uLL;
  v33 = 0;
  v11 = a2 + 4;
  while ((*(v11 + *(*a2 - 24)) & 2) == 0)
  {
    kaldi::ReadToken(a2, 0, &v32, a4, a5);
    if (SHIBYTE(v33) < 0)
    {
      if (*(&v32 + 1) == 12)
      {
        v16 = *v32 == 0x646461506572503CLL && *(v32 + 8) == 1046965865;
        v15 = v8;
        if (v16)
        {
          goto LABEL_49;
        }
      }

      if (*(&v32 + 1) == 13)
      {
        v17 = *v32 == 0x64615074736F503CLL && *(v32 + 5) == 0x3E676E6964646150;
        v15 = v7;
        if (v17)
        {
          goto LABEL_49;
        }
      }

      if (*(&v32 + 1) != 10)
      {
        if (*(&v32 + 1) != 11 || (*v32 == 0x626D6174736F503CLL ? (v18 = *(v32 + 3) == 0x3E656C626D617473) : (v18 = 0), v15 = v9, !v18))
        {
LABEL_57:
          kaldi::KaldiErrorMessage::KaldiErrorMessage(v31, "InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.cc", 1158);
          v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, "Unknown token ", 14);
          if (v33 >= 0)
          {
            v27 = &v32;
          }

          else
          {
            v27 = v32;
          }

          if (v33 >= 0)
          {
            v28 = HIBYTE(v33);
          }

          else
          {
            v28 = *(&v32 + 1);
          }

          v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, v27, v28);
          v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, ", a typo in config?", 19);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, " (NumBands)", 11);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(v31);
        }

        goto LABEL_49;
      }

      v19 = v32;
    }

    else
    {
      if (HIBYTE(v33) > 0xBu)
      {
        if (HIBYTE(v33) == 12)
        {
          v24 = v32 == 0x646461506572503CLL && DWORD2(v32) == 1046965865;
          v15 = v8;
          if (!v24)
          {
            goto LABEL_57;
          }
        }

        else
        {
          if (HIBYTE(v33) != 13)
          {
            goto LABEL_57;
          }

          v20 = v32 == 0x64615074736F503CLL && *(&v32 + 5) == 0x3E676E6964646150;
          v15 = v7;
          if (!v20)
          {
            goto LABEL_57;
          }
        }

        goto LABEL_49;
      }

      if (HIBYTE(v33) != 10)
      {
        if (HIBYTE(v33) != 11)
        {
          goto LABEL_57;
        }

        v14 = v32 == 0x626D6174736F503CLL && *(&v32 + 3) == 0x3E656C626D617473;
        v15 = v9;
        if (!v14)
        {
          goto LABEL_57;
        }

LABEL_49:
        kaldi::ReadBasicType<int>(a2, 0, v15, v12, v13);
        goto LABEL_50;
      }

      v19 = &v32;
    }

    v21 = *v19;
    v22 = *(v19 + 4);
    if (v21 != 0x756C61566461503CLL || v22 != 15973)
    {
      goto LABEL_57;
    }

    kaldi::ReadBasicType<float>(a2, 0, v10, v12, v13);
LABEL_50:
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }

  v25 = *(a1 + 8);
  if (*(a1 + 52) + v25 + *(a1 + 56) != *(a1 + 12))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v31, "InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.cc", 1164);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, "Invalid pre and post padding sizes", 34);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v31);
  }

  if (v25 < *v9 || (*v9 & 0x80000000) != 0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v31, "InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.cc", 1166);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, "Invalid postamble size", 22);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v31);
  }

  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32);
  }
}

void sub_124A4C(_Unwind_Exception *a1)
{
  if (*(v1 - 89) < 0)
  {
    operator delete(*(v1 - 112));
  }

  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::PaddingComponent::ReadData(uint64_t a1, uint64_t *a2, int a3)
{
  *(a1 + 56) = 0;
  v6 = a1 + 56;
  v7 = (a1 + 60);
  *(a1 + 48) = 0;
  v8 = (a1 + 48);
  while (kaldi::Peek(a2, a3) == 60)
  {
    v31 = 0uLL;
    v32 = 0;
    kaldi::ReadToken(a2, a3, &v31, v9, v10);
    if (SHIBYTE(v32) < 0)
    {
      if (*(&v31 + 1) != 11 || (*v31 == 0x626D6174736F503CLL ? (v15 = *(v31 + 3) == 0x3E656C626D617473) : (v15 = 0), v14 = v7, !v15))
      {
        if (*(&v31 + 1) != 12 || (*v31 == 0x646461506572503CLL ? (v16 = *(v31 + 8) == 1046965865) : (v16 = 0), v14 = v6 - 4, !v16))
        {
          if (*(&v31 + 1) == 10)
          {
            v18 = v31;
LABEL_37:
            v20 = *v18;
            v21 = *(v18 + 4);
            if (v20 != 0x756C61566461503CLL || v21 != 15973)
            {
              goto LABEL_55;
            }

            kaldi::ReadBasicType<float>(a2, a3, v8, v11, v12);
            goto LABEL_49;
          }

          if (*(&v31 + 1) != 13 || (*v31 == 0x64615074736F503CLL ? (v17 = *(v31 + 5) == 0x3E676E6964646150) : (v17 = 0), v14 = v6, !v17))
          {
LABEL_55:
            kaldi::KaldiErrorMessage::KaldiErrorMessage(v30, "ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.cc", 1187);
            v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "unrecognized config token ", 26);
            if (v32 >= 0)
            {
              v28 = &v31;
            }

            else
            {
              v28 = v31;
            }

            if (v32 >= 0)
            {
              v29 = HIBYTE(v32);
            }

            else
            {
              v29 = *(&v31 + 1);
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, v28, v29);
            kaldi::KaldiErrorMessage::~KaldiErrorMessage(v30);
          }
        }
      }
    }

    else if (HIBYTE(v32) > 0xBu)
    {
      if (HIBYTE(v32) == 12)
      {
        v23 = v31 == 0x646461506572503CLL && DWORD2(v31) == 1046965865;
        v14 = v6 - 4;
        if (!v23)
        {
          goto LABEL_55;
        }
      }

      else
      {
        if (HIBYTE(v32) != 13)
        {
          goto LABEL_55;
        }

        v19 = v31 == 0x64615074736F503CLL && *(&v31 + 5) == 0x3E676E6964646150;
        v14 = v6;
        if (!v19)
        {
          goto LABEL_55;
        }
      }
    }

    else
    {
      if (HIBYTE(v32) == 10)
      {
        v18 = &v31;
        goto LABEL_37;
      }

      if (HIBYTE(v32) != 11)
      {
        goto LABEL_55;
      }

      v13 = v31 == 0x626D6174736F503CLL && *(&v31 + 3) == 0x3E656C626D617473;
      v14 = v7;
      if (!v13)
      {
        goto LABEL_55;
      }
    }

    kaldi::ReadBasicType<int>(a2, a3, v14, v11, v12);
LABEL_49:
    if (SHIBYTE(v32) < 0)
    {
      operator delete(v31);
    }
  }

  LOBYTE(v30[0]) = 0;
  result = kaldi::ReadBasicType<char>(a2, a3, v30, v9, v10);
  v26 = *(a1 + 8);
  if (*(a1 + 52) + v26 + *(a1 + 56) != *(a1 + 12))
  {
    kaldi::KaldiAssertFailure_("ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.cc", &stru_478.offset + 2, "InputDim() + pre_pad_size_ + post_pad_size_ == OutputDim()", v25);
  }

  if (v26 < *v7)
  {
    kaldi::KaldiAssertFailure_("ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.cc", &stru_478.offset + 3, "InputDim() >= postamble_", v25);
  }

  return result;
}

void sub_124E14(_Unwind_Exception *exception_object)
{
  if (*(v1 - 89) < 0)
  {
    operator delete(*(v1 - 112));
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::nnet1::PaddingComponent::WriteData(float *a1, void *a2, const char *a3, uint64_t a4, const char *a5)
{
  if (a1[12] != 0.0)
  {
    kaldi::WriteToken(a2, a3, "<PadValue>", a4, a5);
    v8 = *(a1 + 12);
    kaldi::WriteBasicType<float>(a2, a3);
  }

  kaldi::WriteToken(a2, a3, "<Postamble>", a4, a5);
  v9 = *(a1 + 15);
  kaldi::WriteBasicType<int>(a2, a3);
  kaldi::WriteToken(a2, a3, "<PrePadding>", v10, v11);
  v12 = *(a1 + 13);
  kaldi::WriteBasicType<int>(a2, a3);
  kaldi::WriteToken(a2, a3, "<PostPadding>", v13, v14);
  v15 = *(a1 + 14);
  kaldi::WriteBasicType<int>(a2, a3);

  return kaldi::WriteBasicType<char>(a2, a3);
}

uint64_t kaldi::nnet1::PaddingComponent::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  kaldi::CuMatrixBase<float>::Set(a3, a2, a3, a4, a5, *(a1 + 48));
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v17, a3, 0, *(a3 + 20), *(a1 + 52), *(a2 + 16) - *(a1 + 60));
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v14, a2, 0, *(a2 + 20), 0, *(a2 + 16) - *(a1 + 60));
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v17, &v14, 111, v8, v9);
  v14 = off_276F40;
  v15 = 0u;
  v16 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v14);
  v17 = off_276F40;
  v18 = 0u;
  v19 = 0u;
  result = fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v17);
  v11 = *(a1 + 60);
  if (v11 >= 1)
  {
    kaldi::CuSubMatrix<float>::CuSubMatrix(&v17, a3, 0, *(a3 + 20), (*(a3 + 16) - v11), v11);
    kaldi::CuSubMatrix<float>::CuSubMatrix(&v14, a2, 0, *(a2 + 20), (*(a2 + 16) - *(a1 + 60)), *(a1 + 60));
    kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v17, &v14, 111, v12, v13);
    v14 = off_276F40;
    v15 = 0u;
    v16 = 0u;
    fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v14);
    v17 = off_276F40;
    v18 = 0u;
    v19 = 0u;
    return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v17);
  }

  return result;
}

void sub_1250E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (**a9)(), __int128 a10, __int128 a11, void (**a12)(), __int128 a13, __int128 a14)
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

uint64_t kaldi::nnet1::PaddingComponent::BackpropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v17, a5, 0, *(a5 + 20), 0, *(a5 + 16) - *(a1 + 60));
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v14, a4, 0, *(a4 + 20), *(a1 + 52), *(a5 + 16) - *(a1 + 60));
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v17, &v14, 111, v8, v9);
  v14 = off_276F40;
  v15 = 0u;
  v16 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v14);
  v17 = off_276F40;
  v18 = 0u;
  v19 = 0u;
  result = fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v17);
  v11 = *(a1 + 60);
  if (v11 >= 1)
  {
    kaldi::CuSubMatrix<float>::CuSubMatrix(&v17, a5, 0, *(a5 + 20), (*(a5 + 16) - v11), v11);
    kaldi::CuSubMatrix<float>::CuSubMatrix(&v14, a4, 0, *(a4 + 20), (*(a4 + 16) - *(a1 + 60)), *(a1 + 60));
    kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v17, &v14, 111, v12, v13);
    v14 = off_276F40;
    v15 = 0u;
    v16 = 0u;
    fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v14);
    v17 = off_276F40;
    v18 = 0u;
    v19 = 0u;
    return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v17);
  }

  return result;
}

void sub_125328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (**a9)(), __int128 a10, __int128 a11, void (**a12)(), __int128 a13, __int128 a14)
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

void *kaldi::nnet1::Padding2DComponent::Init(void *this)
{
  this[6] = 0;
  this[7] = 0;
  this[8] = 0;
  return this;
}

void kaldi::nnet1::Padding2DComponent::Read(uint64_t a1, uint64_t *a2, int a3, uint64_t a4, const char *a5)
{
  __p = 0uLL;
  v24 = 0;
  kaldi::ReadToken(a2, a3, &__p, a4, a5);
  if ((SHIBYTE(v24) & 0x80000000) == 0)
  {
    if (HIBYTE(v24) <= 9u)
    {
      if (HIBYTE(v24) != 8)
      {
        if (HIBYTE(v24) != 9)
        {
          goto LABEL_65;
        }

        if (__p != 0x7466654C6461503CLL || BYTE8(__p) != 62)
        {
          goto LABEL_65;
        }

        goto LABEL_35;
      }

      if (__p != 0x3E706F546461503CLL)
      {
        goto LABEL_65;
      }

LABEL_45:
      v15 = 56;
      goto LABEL_64;
    }

    if (HIBYTE(v24) != 10)
    {
      if (HIBYTE(v24) != 11)
      {
        goto LABEL_65;
      }

      if (__p != 0x74746F426461503CLL || *(&__p + 3) != 0x3E6D6F74746F4264)
      {
        goto LABEL_65;
      }

LABEL_43:
      v15 = 60;
      goto LABEL_64;
    }

    if (__p != 0x654C5870616D463CLL || WORD4(__p) != 15982)
    {
      if (__p != 0x654C5970616D463CLL || WORD4(__p) != 15982)
      {
        p_p = &__p;
        goto LABEL_58;
      }

LABEL_56:
      v15 = 52;
      goto LABEL_64;
    }

LABEL_55:
    v15 = 48;
    goto LABEL_64;
  }

  if (*(&__p + 1) == 10 && *__p == 0x654C5870616D463CLL && *(__p + 8) == 15982)
  {
    goto LABEL_55;
  }

  if (*(&__p + 1) == 10 && *__p == 0x654C5970616D463CLL && *(__p + 8) == 15982)
  {
    goto LABEL_56;
  }

  if (*(&__p + 1) == 8 && *__p == 0x3E706F546461503CLL)
  {
    goto LABEL_45;
  }

  if (*(&__p + 1) == 11 && *__p == 0x74746F426461503CLL && *(__p + 3) == 0x3E6D6F74746F4264)
  {
    goto LABEL_43;
  }

  if (*(&__p + 1) == 10)
  {
    p_p = __p;
LABEL_58:
    v20 = *p_p;
    v21 = *(p_p + 4);
    if (v20 == 0x686769526461503CLL && v21 == 15988)
    {
      v15 = 68;
      goto LABEL_64;
    }

    goto LABEL_65;
  }

  if (*(&__p + 1) == 9 && *__p == 0x7466654C6461503CLL && *(__p + 8) == 62)
  {
LABEL_35:
    v15 = 64;
LABEL_64:
    kaldi::ReadBasicType<int>(a2, a3, a1 + v15, v8, v9);
  }

LABEL_65:
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p);
  }
}

void sub_1256C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int32x2_t *kaldi::nnet1::Padding2DComponent::Check(int32x2_t *this)
{
  v2 = this[6].u32[0];
  v1 = this[6].i32[1];
  if (v1 < 1 || v2 <= 0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v12, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.cc", 1265);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v12, "h > 0 && w > 0");
    goto LABEL_17;
  }

  v4 = this[7];
  v5 = vmax_s32(vneg_s32(v4), 0);
  if (vadd_s32(vdup_lane_s32(v5, 1), v5).u32[0] >= v1)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v12, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.cc", 1268);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v12, "num_to_trim_h < h");
    goto LABEL_17;
  }

  v6 = this[8];
  v7 = vmax_s32(vneg_s32(v6), 0);
  if (vadd_s32(vdup_lane_s32(v7, 1), v7).u32[0] >= v2)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v12, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.cc", 1271);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v12, "num_to_trim_w < w");
    goto LABEL_17;
  }

  v8 = this[1].i32[0];
  v9 = v8 / (v2 * v1);
  if (v8 % (v2 * v1))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v12, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.cc", 1275);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v12, "input_dim_ % (h * w) == 0");
    goto LABEL_17;
  }

  v10 = this[1].i32[1];
  v11 = (v6.i32[0] + v2 + v6.i32[1]) * (v4.i32[0] + v1 + v4.i32[1]);
  if (v10 % v11)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v12, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.cc", 1276);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v12, "output_dim_ % (out_h * out_w) == 0");
    goto LABEL_17;
  }

  if (v9 != v10 / v11)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v12, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.cc", 1280);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v12, "c == out_c");
LABEL_17:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v12);
  }

  return this;
}

int32x2_t *kaldi::nnet1::Padding2DComponent::InitData(int32x2_t *this, uint64_t *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  this[6] = 0;
  this[7] = 0;
  this[8] = 0;
  v6 = a2 + 4;
  while ((*(v6 + *(*a2 - 24)) & 2) == 0)
  {
    kaldi::nnet1::Padding2DComponent::Read(this, a2, 0, a4, a5);
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }

  return kaldi::nnet1::Padding2DComponent::Check(this);
}

int32x2_t *kaldi::nnet1::Padding2DComponent::ReadData(int32x2_t *a1, uint64_t *a2, int a3)
{
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  v6 = a2;
  for (i = a3; kaldi::Peek(v6, i) == 60; i = a3)
  {
    kaldi::nnet1::Padding2DComponent::Read(a1, a2, a3, v8, v9);
    v6 = a2;
  }

  v11 = 0;
  kaldi::ReadBasicType<char>(a2, a3, &v11, v8, v9);
  return kaldi::nnet1::Padding2DComponent::Check(a1);
}

uint64_t kaldi::nnet1::Padding2DComponent::WriteData(unsigned int *a1, void *a2, const char *a3, uint64_t a4, const char *a5)
{
  kaldi::WriteToken(a2, a3, "<FmapXLen>", a4, a5);
  v8 = a1[12];
  kaldi::WriteBasicType<int>(a2, a3);
  kaldi::WriteToken(a2, a3, "<FmapYLen>", v9, v10);
  v11 = a1[13];
  kaldi::WriteBasicType<int>(a2, a3);
  kaldi::WriteToken(a2, a3, "<PadTop>", v12, v13);
  v14 = a1[14];
  kaldi::WriteBasicType<int>(a2, a3);
  kaldi::WriteToken(a2, a3, "<PadBottom>", v15, v16);
  v17 = a1[15];
  kaldi::WriteBasicType<int>(a2, a3);
  kaldi::WriteToken(a2, a3, "<PadLeft>", v18, v19);
  v20 = a1[16];
  kaldi::WriteBasicType<int>(a2, a3);
  kaldi::WriteToken(a2, a3, "<PadRight>", v21, v22);
  v23 = a1[17];
  kaldi::WriteBasicType<int>(a2, a3);

  return kaldi::WriteBasicType<char>(a2, a3);
}

uint64_t kaldi::nnet1::Padding2DComponent::Info(kaldi::nnet1::Padding2DComponent *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v3);
  (*(*this + 104))(this, &v3, 0, 0);
  std::stringbuf::str();
  if (v6 < 0)
  {
    operator delete(v5[7].__locale_);
  }

  std::locale::~locale(v5);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_125CBC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::Pad2D(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v32 = a8;
  if (a5 > 0 || a3 > 0 || a4 > 0 || a6 >= 1)
  {
    kaldi::CuMatrixBase<float>::SetZero(a2);
    a8 = v32;
  }

  v27 = *(a1 + 16) / (a8 * a7);
  v28 = a8 * a7;
  if (v27 >= 1)
  {
    v15 = 0;
    v33 = a7 + a4;
    v16 = a7 + a4 + a3;
    v17 = a6 + a5 + a8;
    v18 = -a3;
    v19 = (a6 & (a6 >> 31)) + a8;
    v20 = a5 & (a5 >> 31);
    v30 = -v20;
    v31 = (a5 & ~(a5 >> 31)) + a3 * v17;
    v26 = v17 * v16;
    do
    {
      v29 = v15;
      if (a7 >= 1)
      {
        v21 = 0;
        v23 = v30;
        v22 = v31;
        do
        {
          if (v21 >= v18 && v21 < v33)
          {
            kaldi::CuSubMatrix<float>::CuSubMatrix(&v37, a2, 0, *(a2 + 20), v22, v19 + v20);
            kaldi::CuSubMatrix<float>::CuSubMatrix(&v34, a1, 0, *(a1 + 20), v23, v19 + v20);
            kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v37, &v34, 111, v24, v25);
            v34 = off_276F40;
            v35 = 0u;
            v36 = 0u;
            fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v34);
            v37 = off_276F40;
            v38 = 0u;
            v39 = 0u;
            fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v37);
            a8 = v32;
          }

          ++v21;
          v23 = (v23 + a8);
          v22 = (v22 + v17);
        }

        while (a7 != v21);
      }

      v15 = v29 + 1;
      v30 += v28;
      v31 += v26;
    }

    while (v29 + 1 != v27);
  }
}

void sub_125EF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void (**a18)(), __int128 a19, __int128 a20)
{
  a18 = off_276F40;
  a19 = 0u;
  a20 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&a18);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::CnnRearrangeComponent::~CnnRearrangeComponent(kaldi::nnet1::CnnRearrangeComponent *this)
{
  kaldi::nnet1::CnnRearrangeComponent::~CnnRearrangeComponent(this);

  operator delete();
}

{
  *this = off_27C8C8;
  v2 = *(this + 10);
  if (v2)
  {
    free(v2);
  }

  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  v3 = *(this + 7);
  if (v3)
  {
    free(v3);
  }

  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;

  kaldi::nnet1::Component::~Component(this);
}

void sub_1260B4()
{
  v2 = *(v0 + 7);
  if (v2)
  {
    free(v2);
  }

  *v1 = 0;
  v1[1] = 0;
  v1[2] = 0;
  kaldi::nnet1::Component::~Component(v0);
  operator delete();
}

void kaldi::nnet1::PaddingComponent::~PaddingComponent(kaldi::nnet1::PaddingComponent *this)
{
  kaldi::nnet1::Component::~Component(this);

  operator delete();
}

void kaldi::nnet1::Padding2DComponent::~Padding2DComponent(kaldi::nnet1::Padding2DComponent *this)
{
  kaldi::nnet1::Component::~Component(this);

  operator delete();
}

uint64_t kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<signed char>>::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>(uint64_t a1, uint64_t a2)
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
  *a1 = off_27C5B8;
  *(a1 + 88) = off_27C6F0;
  *(a1 + 96) = off_27C718;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::vector[abi:ne200100]((a1 + 168), (*(a2 + 176) - *(a2 + 168)) >> 3);
  std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::vector[abi:ne200100]((a1 + 192), (*(a2 + 200) - *(a2 + 192)) >> 3);
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 216, *(a2 + 216), *(a2 + 224), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 224) - *(a2 + 216)) >> 4));
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  std::vector<kaldi::CuVector<float>>::__init_with_size[abi:ne200100]<kaldi::CuVector<float>*,kaldi::CuVector<float>*>(a1 + 240, *(a2 + 240), *(a2 + 248), (*(a2 + 248) - *(a2 + 240)) >> 5);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 276) = *(a2 + 276);
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 288) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 288, *(a2 + 288), *(a2 + 296), (*(a2 + 296) - *(a2 + 288)) >> 2);
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 312, *(a2 + 312), *(a2 + 320), (*(a2 + 320) - *(a2 + 312)) >> 2);
  *(a1 + 552) = 0;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0;
  if (*(a1 + 16) == 1)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v16, "ConvolutionalMaxPoolingComponent", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.cc", 133);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "deep copy constructor not implemented in the case of vectorized_weights.", 72);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v16);
  }

  if (*(a2 + 152))
  {
    operator new();
  }

  if (*(a2 + 160))
  {
    v6 = *(a1 + 16);
    kaldi::NewCuSubOrVec<float>();
  }

  v8 = *(a1 + 168);
  v7 = *(a1 + 176);
  if (v7 != v8)
  {
    v9 = 0;
    do
    {
      v10 = *(*(a2 + 168) + 8 * v9);
      if (v10)
      {
        kaldi::NewCuSubOrMat<float>(v10, *(a1 + 16));
      }

      ++v9;
    }

    while (v9 < (v7 - v8) >> 3);
  }

  v12 = *(a1 + 192);
  v11 = *(a1 + 200);
  if (v11 != v12)
  {
    v13 = 0;
    do
    {
      if (*(*(a2 + 192) + 8 * v13))
      {
        v14 = *(a1 + 16);
        kaldi::NewCuSubOrVec<float>();
      }

      ++v13;
    }

    while (v13 < (v11 - v12) >> 3);
  }

  if (*(a2 + 496) != *(a2 + 488))
  {
    kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<signed char>>::InitResidualAggregator(a1, (a1 + 488));
  }

  return a1;
}

void sub_126870(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, _Unwind_Exception *exception_object, uint64_t a12, uint64_t a13, void *a14)
{
  kaldi::nnet1::QuantizerResidualAggregator::~QuantizerResidualAggregator(v16);
  v17 = *(v14 + 57);
  if (v17)
  {
    operator delete(v17);
  }

  a14 = (v14 + 432);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a14);
  a14 = (v14 + 408);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a14);
  a14 = (v14 + 384);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a14);
  a14 = (v14 + 360);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a14);
  a14 = (v14 + 336);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a14);
  v18 = *(v14 + 39);
  if (v18)
  {
    *(v14 + 40) = v18;
    operator delete(v18);
  }

  v19 = *(v14 + 36);
  if (v19)
  {
    *(v14 + 37) = v19;
    operator delete(v19);
  }

  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&a14);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a14);
  std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a14);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a14);
  v20 = *(v14 + 20);
  *(v14 + 20) = 0;
  if (v20)
  {
    (*(*v20 + 16))(v20);
  }

  std::unique_ptr<kaldi::QuantizedMatrix<signed char>>::reset[abi:ne200100](v15, 0);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a12);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a13);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v14);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<short>>::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>(uint64_t a1, uint64_t a2)
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
  *a1 = off_27C740;
  *(a1 + 88) = off_27C878;
  *(a1 + 96) = off_27C8A0;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::vector[abi:ne200100]((a1 + 168), (*(a2 + 176) - *(a2 + 168)) >> 3);
  std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::vector[abi:ne200100]((a1 + 192), (*(a2 + 200) - *(a2 + 192)) >> 3);
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 216, *(a2 + 216), *(a2 + 224), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 224) - *(a2 + 216)) >> 4));
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  std::vector<kaldi::CuVector<float>>::__init_with_size[abi:ne200100]<kaldi::CuVector<float>*,kaldi::CuVector<float>*>(a1 + 240, *(a2 + 240), *(a2 + 248), (*(a2 + 248) - *(a2 + 240)) >> 5);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 276) = *(a2 + 276);
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 288) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 288, *(a2 + 288), *(a2 + 296), (*(a2 + 296) - *(a2 + 288)) >> 2);
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 312, *(a2 + 312), *(a2 + 320), (*(a2 + 320) - *(a2 + 312)) >> 2);
  *(a1 + 552) = 0;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0;
  if (*(a1 + 16) == 1)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v16, "ConvolutionalMaxPoolingComponent", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.cc", 133);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "deep copy constructor not implemented in the case of vectorized_weights.", 72);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v16);
  }

  if (*(a2 + 152))
  {
    operator new();
  }

  if (*(a2 + 160))
  {
    v6 = *(a1 + 16);
    kaldi::NewCuSubOrVec<float>();
  }

  v8 = *(a1 + 168);
  v7 = *(a1 + 176);
  if (v7 != v8)
  {
    v9 = 0;
    do
    {
      v10 = *(*(a2 + 168) + 8 * v9);
      if (v10)
      {
        kaldi::NewCuSubOrMat<float>(v10, *(a1 + 16));
      }

      ++v9;
    }

    while (v9 < (v7 - v8) >> 3);
  }

  v12 = *(a1 + 192);
  v11 = *(a1 + 200);
  if (v11 != v12)
  {
    v13 = 0;
    do
    {
      if (*(*(a2 + 192) + 8 * v13))
      {
        v14 = *(a1 + 16);
        kaldi::NewCuSubOrVec<float>();
      }

      ++v13;
    }

    while (v13 < (v11 - v12) >> 3);
  }

  if (*(a2 + 496) != *(a2 + 488))
  {
    kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<short>>::InitResidualAggregator(a1, (a1 + 488));
  }

  return a1;
}

void sub_126ED0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, _Unwind_Exception *exception_object, uint64_t a12, uint64_t a13, void *a14)
{
  kaldi::nnet1::QuantizerResidualAggregator::~QuantizerResidualAggregator(v16);
  v17 = *(v14 + 57);
  if (v17)
  {
    operator delete(v17);
  }

  a14 = (v14 + 432);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a14);
  a14 = (v14 + 408);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a14);
  a14 = (v14 + 384);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a14);
  a14 = (v14 + 360);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a14);
  a14 = (v14 + 336);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a14);
  v18 = *(v14 + 39);
  if (v18)
  {
    *(v14 + 40) = v18;
    operator delete(v18);
  }

  v19 = *(v14 + 36);
  if (v19)
  {
    *(v14 + 37) = v19;
    operator delete(v19);
  }

  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&a14);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a14);
  std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a14);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a14);
  v20 = *(v14 + 20);
  *(v14 + 20) = 0;
  if (v20)
  {
    (*(*v20 + 16))(v20);
  }

  std::unique_ptr<kaldi::QuantizedMatrix<short>>::reset[abi:ne200100](v15, 0);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a12);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a13);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v14);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<short>>::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<signed char>>(uint64_t a1, uint64_t a2)
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
  *a1 = off_27C740;
  *(a1 + 88) = off_27C878;
  *(a1 + 96) = off_27C8A0;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::vector[abi:ne200100]((a1 + 168), (*(a2 + 176) - *(a2 + 168)) >> 3);
  std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::vector[abi:ne200100]((a1 + 192), (*(a2 + 200) - *(a2 + 192)) >> 3);
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 216, *(a2 + 216), *(a2 + 224), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 224) - *(a2 + 216)) >> 4));
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  std::vector<kaldi::CuVector<float>>::__init_with_size[abi:ne200100]<kaldi::CuVector<float>*,kaldi::CuVector<float>*>(a1 + 240, *(a2 + 240), *(a2 + 248), (*(a2 + 248) - *(a2 + 240)) >> 5);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 276) = *(a2 + 276);
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 288) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 288, *(a2 + 288), *(a2 + 296), (*(a2 + 296) - *(a2 + 288)) >> 2);
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 312, *(a2 + 312), *(a2 + 320), (*(a2 + 320) - *(a2 + 312)) >> 2);
  *(a1 + 552) = 0;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0;
  if (*(a1 + 16) == 1)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v16, "ConvolutionalMaxPoolingComponent", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.cc", 133);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "deep copy constructor not implemented in the case of vectorized_weights.", 72);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v16);
  }

  if (*(a2 + 152))
  {
    operator new();
  }

  if (*(a2 + 160))
  {
    v6 = *(a1 + 16);
    kaldi::NewCuSubOrVec<float>();
  }

  v8 = *(a1 + 168);
  v7 = *(a1 + 176);
  if (v7 != v8)
  {
    v9 = 0;
    do
    {
      v10 = *(*(a2 + 168) + 8 * v9);
      if (v10)
      {
        kaldi::NewCuSubOrMat<float>(v10, *(a1 + 16));
      }

      ++v9;
    }

    while (v9 < (v7 - v8) >> 3);
  }

  v12 = *(a1 + 192);
  v11 = *(a1 + 200);
  if (v11 != v12)
  {
    v13 = 0;
    do
    {
      if (*(*(a2 + 192) + 8 * v13))
      {
        v14 = *(a1 + 16);
        kaldi::NewCuSubOrVec<float>();
      }

      ++v13;
    }

    while (v13 < (v11 - v12) >> 3);
  }

  if (*(a2 + 496) != *(a2 + 488))
  {
    kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<short>>::InitResidualAggregator(a1, (a1 + 488));
  }

  return a1;
}

void sub_127530(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, _Unwind_Exception *exception_object, uint64_t a12, uint64_t a13, void *a14)
{
  kaldi::nnet1::QuantizerResidualAggregator::~QuantizerResidualAggregator(v16);
  v17 = *(v14 + 57);
  if (v17)
  {
    operator delete(v17);
  }

  a14 = (v14 + 432);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a14);
  a14 = (v14 + 408);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a14);
  a14 = (v14 + 384);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a14);
  a14 = (v14 + 360);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a14);
  a14 = (v14 + 336);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a14);
  v18 = *(v14 + 39);
  if (v18)
  {
    *(v14 + 40) = v18;
    operator delete(v18);
  }

  v19 = *(v14 + 36);
  if (v19)
  {
    *(v14 + 37) = v19;
    operator delete(v19);
  }

  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&a14);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a14);
  std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a14);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a14);
  v20 = *(v14 + 20);
  *(v14 + 20) = 0;
  if (v20)
  {
    (*(*v20 + 16))(v20);
  }

  std::unique_ptr<kaldi::QuantizedMatrix<short>>::reset[abi:ne200100](v15, 0);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a12);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a13);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v14);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<signed char>>::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<short>>(uint64_t a1, uint64_t a2)
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
  *a1 = off_27C5B8;
  *(a1 + 88) = off_27C6F0;
  *(a1 + 96) = off_27C718;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::vector[abi:ne200100]((a1 + 168), (*(a2 + 176) - *(a2 + 168)) >> 3);
  std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::vector[abi:ne200100]((a1 + 192), (*(a2 + 200) - *(a2 + 192)) >> 3);
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 216, *(a2 + 216), *(a2 + 224), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 224) - *(a2 + 216)) >> 4));
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  std::vector<kaldi::CuVector<float>>::__init_with_size[abi:ne200100]<kaldi::CuVector<float>*,kaldi::CuVector<float>*>(a1 + 240, *(a2 + 240), *(a2 + 248), (*(a2 + 248) - *(a2 + 240)) >> 5);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 276) = *(a2 + 276);
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 288) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 288, *(a2 + 288), *(a2 + 296), (*(a2 + 296) - *(a2 + 288)) >> 2);
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 312, *(a2 + 312), *(a2 + 320), (*(a2 + 320) - *(a2 + 312)) >> 2);
  *(a1 + 552) = 0;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0;
  if (*(a1 + 16) == 1)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v16, "ConvolutionalMaxPoolingComponent", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.cc", 133);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "deep copy constructor not implemented in the case of vectorized_weights.", 72);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v16);
  }

  if (*(a2 + 152))
  {
    operator new();
  }

  if (*(a2 + 160))
  {
    v6 = *(a1 + 16);
    kaldi::NewCuSubOrVec<float>();
  }

  v8 = *(a1 + 168);
  v7 = *(a1 + 176);
  if (v7 != v8)
  {
    v9 = 0;
    do
    {
      v10 = *(*(a2 + 168) + 8 * v9);
      if (v10)
      {
        kaldi::NewCuSubOrMat<float>(v10, *(a1 + 16));
      }

      ++v9;
    }

    while (v9 < (v7 - v8) >> 3);
  }

  v12 = *(a1 + 192);
  v11 = *(a1 + 200);
  if (v11 != v12)
  {
    v13 = 0;
    do
    {
      if (*(*(a2 + 192) + 8 * v13))
      {
        v14 = *(a1 + 16);
        kaldi::NewCuSubOrVec<float>();
      }

      ++v13;
    }

    while (v13 < (v11 - v12) >> 3);
  }

  if (*(a2 + 496) != *(a2 + 488))
  {
    kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<signed char>>::InitResidualAggregator(a1, (a1 + 488));
  }

  return a1;
}

void sub_127B90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, _Unwind_Exception *exception_object, uint64_t a12, uint64_t a13, void *a14)
{
  kaldi::nnet1::QuantizerResidualAggregator::~QuantizerResidualAggregator(v16);
  v17 = *(v14 + 57);
  if (v17)
  {
    operator delete(v17);
  }

  a14 = (v14 + 432);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a14);
  a14 = (v14 + 408);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a14);
  a14 = (v14 + 384);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a14);
  a14 = (v14 + 360);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a14);
  a14 = (v14 + 336);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a14);
  v18 = *(v14 + 39);
  if (v18)
  {
    *(v14 + 40) = v18;
    operator delete(v18);
  }

  v19 = *(v14 + 36);
  if (v19)
  {
    *(v14 + 37) = v19;
    operator delete(v19);
  }

  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&a14);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a14);
  std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a14);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a14);
  v20 = *(v14 + 20);
  *(v14 + 20) = 0;
  if (v20)
  {
    (*(*v20 + 16))(v20);
  }

  std::unique_ptr<kaldi::QuantizedMatrix<signed char>>::reset[abi:ne200100](v15, 0);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a12);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a13);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v14);
  _Unwind_Resume(a1);
}

double kaldi::nnet1::FixedAttentionComponent::FixedAttentionComponent(kaldi::nnet1::FixedAttentionComponent *this, int a2, int a3)
{
  *(this + 46) = a2;
  *(this + 47) = a3;
  *(this + 96) = 0;
  *(this + 26) = 0;
  *(this + 27) = 0;
  *(this + 25) = 0;
  *(this + 28) = off_282980;
  *(this + 232) = xmmword_21A620;
  *(this + 62) = -1082130432;
  *(this + 252) = 0x100000003;
  *(this + 130) = 0;
  *(this + 262) = 0;
  *(this + 1) = -1;
  *this = off_27CC30;
  *(this + 22) = off_27CE38;
  result = 0.0;
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
  *(this + 168) = 0;
  return result;
}

kaldi::nnet1::FixedAttentionComponent *kaldi::nnet1::FixedAttentionComponent::FixedAttentionComponent(kaldi::nnet1::FixedAttentionComponent *this, const kaldi::nnet1::FixedAttentionComponent *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  *(this + 23) = *(a2 + *(*a2 - 24) + 8);
  *(this + 96) = 0;
  *(this + 26) = 0;
  *(this + 27) = 0;
  *(this + 25) = 0;
  *(this + 28) = off_282980;
  *(this + 232) = xmmword_21A620;
  *(this + 62) = -1082130432;
  *(this + 252) = 0x100000003;
  *(this + 130) = 0;
  *(this + 262) = 0;
  *(this + 1) = -1;
  *this = off_27CC30;
  *(this + 22) = off_27CE38;
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
  v9 = *(a2 + 2);
  if (!v9)
  {
    kaldi::KaldiAssertFailure_("FixedAttentionComponent", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-fixed-attention-component.cc", &stru_20.cmd + 3, "src.component_", a5);
  }

  *(this + 1) = *(a2 + 1);
  *(this + 2) = (*(*v9 + 16))(v9);
  kaldi::CuMatrix<float>::operator=(v6, a2 + 24);
  kaldi::CuMatrix<float>::operator=(v7, a2 + 72);
  kaldi::CuMatrix<float>::operator=(v8, a2 + 120);
  *(this + 168) = *(a2 + 168);
  return this;
}

void sub_128028(_Unwind_Exception *a1)
{
  kaldi::CuMatrix<float>::~CuMatrix(v5);
  kaldi::CuMatrix<float>::~CuMatrix(v4);
  kaldi::CuMatrix<float>::~CuMatrix(v3);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v2);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v1);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::FixedAttentionComponent::~FixedAttentionComponent(kaldi::nnet1::FixedAttentionComponent *this, uint64_t *a2)
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
  kaldi::CuMatrix<float>::~CuMatrix(this + 120);
  kaldi::CuMatrix<float>::~CuMatrix(this + 72);
  kaldi::CuMatrix<float>::~CuMatrix(this + 24);

  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(this);
}

void kaldi::nnet1::FixedAttentionComponent::~FixedAttentionComponent(kaldi::nnet1::FixedAttentionComponent *this)
{
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent((v1 + 176));
}

{
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent((v1 + 176));

  operator delete();
}

void virtual thunk tokaldi::nnet1::FixedAttentionComponent::~FixedAttentionComponent(kaldi::nnet1::FixedAttentionComponent *this)
{
  v2 = (v1 + 176);

  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v2);
}

{
  kaldi::nnet1::FixedAttentionComponent::~FixedAttentionComponent((this + *(*this - 24)));
}

void kaldi::nnet1::FixedAttentionComponent::InitData(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v42 = 0;
  v43 = 0uLL;
  v7 = a2 + 4;
  v8 = a1 + 12;
  v9 = a1 + 8;
  while (1)
  {
    if ((*(v7 + *(*a2 - 24)) & 2) != 0)
    {
      goto LABEL_42;
    }

    kaldi::ReadToken(a2, 0, &v42, a4, a5);
    if (SHIBYTE(v43) < 0)
    {
      if (v43 != 15)
      {
        if (v43 != 22)
        {
          goto LABEL_35;
        }

        v13 = *v42 == 0x53656372756F533CLL && v42[1] == 0x656D694465746174;
        v14 = v13 && *(v42 + 14) == 0x3E6E6F69736E656DLL;
        v12 = v9;
        if (!v14)
        {
          goto LABEL_35;
        }

        goto LABEL_31;
      }

      v15 = v42;
    }

    else
    {
      if (HIBYTE(v43) != 15)
      {
        if (HIBYTE(v43) != 22)
        {
          goto LABEL_33;
        }

        v11 = v42 == 0x53656372756F533CLL && v43 == 0x656D694465746174 && *(&v43 + 6) == 0x3E6E6F69736E656DLL;
        v12 = v9;
        if (!v11)
        {
          goto LABEL_53;
        }

        goto LABEL_31;
      }

      v15 = &v42;
    }

    v16 = *v15;
    v17 = *(v15 + 7);
    v18 = v16 == 0x6574744178614D3CLL && v17 == 0x3E736E6F69746E65;
    v12 = v8;
    if (!v18)
    {
      if ((HIBYTE(v43) & 0x80) != 0)
      {
LABEL_35:
        if (v43 == 12)
        {
          v19 = v42;
          goto LABEL_37;
        }
      }

      else
      {
LABEL_33:
        if (HIBYTE(v43) == 12)
        {
          v19 = &v42;
LABEL_37:
          v20 = *v19;
          v21 = *(v19 + 2);
          if (v20 == 0x6E6F706D6F432F3CLL && v21 == 1047817829)
          {
LABEL_42:
            v23 = *(a1 + 16);
            if (v23)
            {
              (*(*v23 + 8))(v23);
            }

            v39 = 0;
            v40 = 0;
            v41 = 0;
            kaldi::ReadToken(a2, 0, &v39, a4, a5);
            v24 = kaldi::nnet1::Component::MarkerToComponentType(&v39);
            v38 = 0;
            if (kaldi::g_kaldi_verbose_level >= 3)
            {
              kaldi::KaldiVlogMessage::KaldiVlogMessage(v37, "InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-fixed-attention-component.cc", 91, 3);
              v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, "Initializing component of type ", 31);
              if (v41 >= 0)
              {
                v26 = &v39;
              }

              else
              {
                v26 = v39;
              }

              if (v41 >= 0)
              {
                v27 = HIBYTE(v41);
              }

              else
              {
                v27 = v40;
              }

              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, v26, v27);
              kaldi::KaldiVlogMessage::~KaldiVlogMessage(v37);
            }

            kaldi::ExpectToken(a2, 0, "<InputDim>");
            kaldi::ReadBasicType<int>(a2, 0, &v38 + 4, v28, v29);
            kaldi::ExpectToken(a2, 0, "<OutputDim>");
            kaldi::ReadBasicType<int>(a2, 0, &v38, v30, v31);
            kaldi::nnet1::Component::NewComponentOfType(v24);
          }
        }
      }

LABEL_53:
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v37, "InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-fixed-attention-component.cc", 81);
      v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, "Unknown token ", 14);
      if (v43 >= 0)
      {
        v33 = &v42;
      }

      else
      {
        v33 = v42;
      }

      if (v43 >= 0)
      {
        v34 = HIBYTE(v43);
      }

      else
      {
        v34 = v43;
      }

      v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, v33, v34);
      v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, ", a typo in config?", 19);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, " (SourceStateDimension|MaxAttentions)", 37);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v37);
    }

LABEL_31:
    kaldi::ReadBasicType<int>(a2, 0, v12, a4, a5);
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }
}

void *kaldi::nnet1::FixedAttentionComponent::Check(void *this)
{
  if ((this[21] & 1) == 0)
  {
    v1 = this;
    v2 = this[2];
    if (!v2)
    {
      goto LABEL_5;
    }

    v3 = *v2;
    v4 = **v2;
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v22, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-fixed-attention-component.cc", 342);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v22, "this is a non-recurrent version, cannot have a recurrent internal component");
      goto LABEL_16;
    }

    v5 = *v3;
    if (this)
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v22, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-fixed-attention-component.cc", 345);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v22, "no recursive inclusion");
    }

    else
    {
LABEL_5:
      v6 = *(v1 + 12);
      if (v6 < 1 || (v7 = *(v1 + 8), v7 <= 0))
      {
        kaldi::KaldiErrorMessage::KaldiErrorMessage(v22, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-fixed-attention-component.cc", 348);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "component is not initialized, max attention is ", 47);
        v9 = *(v1 + 12);
        v10 = std::ostream::operator<<();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ", source state dimension is ", 28);
        v11 = *(v1 + 8);
        std::ostream::operator<<();
      }

      else
      {
        v8 = v1 + *(*v1 - 24);
        if (*(v8 + 8) + v7 * v6 == v2[2])
        {
          if (*(v8 + 12) == v2[3])
          {
            *(v1 + 168) = 1;
            return this;
          }

          kaldi::KaldiErrorMessage::KaldiErrorMessage(v22, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-fixed-attention-component.cc", 358);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "the output dim of attention component is ", 41);
          v19 = *(v1 + *(*v1 - 24) + 12);
          v20 = std::ostream::operator<<();
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, " , however, the internal training component has output dim ", 59);
          v21 = *(*(v1 + 16) + 12);
          std::ostream::operator<<();
        }

        else
        {
          kaldi::KaldiErrorMessage::KaldiErrorMessage(v22, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-fixed-attention-component.cc", 352);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "component has input dim ", 24);
          v12 = *(v1 + *(*v1 - 24) + 8);
          v13 = std::ostream::operator<<();
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, ", attentions ", 13);
          v14 = *(v1 + 12);
          v15 = std::ostream::operator<<();
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, ", source state dimension ", 25);
          v16 = *(v1 + 8);
          v17 = std::ostream::operator<<();
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, ", however, the internal training component has input dim ", 57);
          v18 = *(*(v1 + 16) + 8);
          std::ostream::operator<<();
        }
      }
    }

LABEL_16:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v22);
  }

  return this;
}

void kaldi::nnet1::FixedAttentionComponent::ReadData(void *a1, uint64_t *a2, int a3)
{
  v32 = 0;
  v33 = 0uLL;
  v6 = a1 + 12;
  v7 = a1 + 1;
  while (1)
  {
    if (kaldi::Peek(a2, a3) != 60)
    {
      goto LABEL_42;
    }

    kaldi::ReadToken(a2, a3, &v32, v8, v9);
    if ((SHIBYTE(v33) & 0x80000000) == 0)
    {
      break;
    }

    if (v33 == 15)
    {
      v17 = v32;
      goto LABEL_26;
    }

    if (v33 != 22)
    {
      goto LABEL_35;
    }

    v15 = *v32 == 0x53656372756F533CLL && v32[1] == 0x656D694465746174;
    v16 = v15 && *(v32 + 14) == 0x3E6E6F69736E656DLL;
    v14 = v7;
    if (!v16)
    {
      goto LABEL_35;
    }

LABEL_31:
    kaldi::ReadBasicType<int>(a2, a3, v14, v10, v11);
  }

  if (HIBYTE(v33) != 15)
  {
    if (HIBYTE(v33) != 22)
    {
      goto LABEL_33;
    }

    v13 = v32 == 0x53656372756F533CLL && v33 == 0x656D694465746174 && *(&v33 + 6) == 0x3E6E6F69736E656DLL;
    v14 = v7;
    if (!v13)
    {
      goto LABEL_49;
    }

    goto LABEL_31;
  }

  v17 = &v32;
LABEL_26:
  v18 = *v17;
  v19 = *(v17 + 7);
  v20 = v18 == 0x6574744178614D3CLL && v19 == 0x3E736E6F69746E65;
  v14 = v6;
  if (v20)
  {
    goto LABEL_31;
  }

  if ((HIBYTE(v33) & 0x80) == 0)
  {
LABEL_33:
    if (HIBYTE(v33) == 12)
    {
      v21 = &v32;
      goto LABEL_37;
    }

    goto LABEL_49;
  }

LABEL_35:
  if (v33 != 12)
  {
    goto LABEL_49;
  }

  v21 = v32;
LABEL_37:
  v22 = *v21;
  v23 = *(v21 + 2);
  if (v22 != 0x6E6F706D6F432F3CLL || v23 != 1047817829)
  {
LABEL_49:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v31, "ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-fixed-attention-component.cc", 112);
    v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, "Unrecognized token ", 19);
    if (v33 >= 0)
    {
      v29 = &v32;
    }

    else
    {
      v29 = v32;
    }

    if (v33 >= 0)
    {
      v30 = HIBYTE(v33);
    }

    else
    {
      v30 = v33;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, v29, v30);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v31);
  }

LABEL_42:
  v25 = a1[2];
  if (v25)
  {
    (*(*v25 + 8))(v25);
  }

  v26 = kaldi::nnet1::Component::Read(a2, a3);
  if (v26)
  {
    v27 = **v26;
  }

  a1[2] = v26;
  kaldi::nnet1::FixedAttentionComponent::Check(a1);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32);
  }
}

void sub_128D74(_Unwind_Exception *a1)
{
  if (*(v1 - 89) < 0)
  {
    operator delete(*(v1 - 112));
  }

  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::FixedAttentionComponent::WriteConfig(uint64_t a1, void *a2, const char *a3, uint64_t a4, const char *a5)
{
  kaldi::WriteToken(a2, a3, "<SourceStateDimension>", a4, a5);
  v8 = *(a1 + 8);
  kaldi::WriteBasicType<int>(a2, a3);
  kaldi::WriteToken(a2, a3, "<MaxAttentions>", v9, v10);
  v11 = *(a1 + 12);
  kaldi::WriteBasicType<int>(a2, a3);
  kaldi::WriteToken(a2, a3, "</Component>", v12, v13);
  v14 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  kaldi::nnet1::Component::TypeToMarker(v14, &__p);
  kaldi::WriteToken(a2, a3, &__p, v15, v16);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v17 = *(*(a1 + 16) + 12);
  kaldi::WriteBasicType<int>(a2, a3);
  v18 = *(*(a1 + 16) + 8);
  return kaldi::WriteBasicType<int>(a2, a3);
}

void sub_128EBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::nnet1::FixedAttentionComponent::WriteData(void **a1)
{
  ((*a1)[12])(a1);
  v2 = *(*a1[2] + 104);

  return v2();
}

uint64_t virtual thunk tokaldi::nnet1::FixedAttentionComponent::WriteData(void *a1)
{
  v1 = (a1 + *(*a1 - 120));
  ((*v1)[12])(v1);
  v2 = *(*v1[2] + 104);

  return v2();
}

uint64_t kaldi::nnet1::FixedAttentionComponent::Info(kaldi::nnet1::FixedAttentionComponent *this)
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

void sub_129418(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::FixedAttentionComponent::SetTrainOptions(uint64_t a1, uint64_t a2)
{
  v2 = a1 + *(*a1 - 24);
  v3 = *(a2 + 8);
  *(v2 + 71) = *(a2 + 23);
  *(v2 + 56) = v3;
  return (*(**(a1 + 16) + 264))();
}

uint64_t virtual thunk tokaldi::nnet1::FixedAttentionComponent::SetTrainOptions(void *a1, uint64_t a2)
{
  v2 = a1 + *(*a1 - 280);
  v3 = &v2[*(*v2 - 24)];
  v4 = *(a2 + 8);
  *(v3 + 71) = *(a2 + 23);
  *(v3 + 56) = v4;
  return (*(**(v2 + 2) + 264))();
}

void kaldi::nnet1::FixedAttentionComponent::SetSourceStates(uint64_t a1, uint64_t a2, void *a3)
{
  kaldi::nnet1::FixedAttentionComponent::Check(a1);
  v21 = a3;
  v7 = a3[1] - *a3;
  v8 = v7 >> 2;
  if (*(a2 + 20) % (v7 >> 2))
  {
    kaldi::KaldiAssertFailure_("SetSourceStates", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-fixed-attention-component.cc", &stru_68.nreloc + 1, "seq_size * num_seq == source.NumRows()", v6);
  }

  if (*(a2 + 16) != *(a1 + 8))
  {
    kaldi::KaldiAssertFailure_("SetSourceStates", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-fixed-attention-component.cc", &stru_68.nreloc + 2, "source.NumCols() == source_vec_dim_", v6);
  }

  kaldi::CuMatrix<float>::Resize(a1 + 24, v8, *(*(a1 + 16) + 8), 0, 0);
  if (v8 >= 1)
  {
    v9 = 0;
    v22 = (v7 >> 2) & 0x7FFFFFFF;
    v10 = *(a1 + 12);
    do
    {
      if (v10 >= 1)
      {
        v11 = *(*v21 + 4 * v9);
        if (v11 >= 1)
        {
          v12 = v11 & ~(v11 >> 31);
          v13 = v9 + v8 * (v11 - 1);
          v14 = 1;
          do
          {
            kaldi::CuSubMatrix<float>::CuSubMatrix(&v24, a1 + 24, 0, *(a1 + 44), (*(a1 + 8) * (v14 - 1)), *(a1 + 8));
            if (v9 >= HIDWORD(v25))
            {
              kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.addr + 1, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v17);
            }

            v28 = v25 + 4 * v26 * v9;
            v27 = &off_276FE0;
            v29 = DWORD2(v25);
            v30 = *(&v26 + 1);
            if (*(a2 + 20) <= v13)
            {
              kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.segname[11], "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v17);
            }

            v18 = *(a2 + 16);
            v19 = *(a2 + 32);
            v23[1] = *(a2 + 8) + 4 * (*(a2 + 24) * v13);
            v23[0] = &off_276FE0;
            v23[2] = v18;
            v23[3] = v19;
            kaldi::CuVectorBase<float>::CopyFromVec(&v27, v23, v15, v16, v17);
            v27 = &off_276FE0;
            v28 = 0;
            LODWORD(v29) = 0;
            v30 = 0;
            v24 = off_276F40;
            v25 = 0u;
            v26 = 0u;
            fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v24);
            v10 = *(a1 + 12);
            if (v14 >= v10)
            {
              break;
            }

            v13 -= v8;
          }

          while (v12 != v14++);
        }
      }

      ++v9;
    }

    while (v9 != v22);
  }
}

void sub_12986C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void (**a16)())
{
  a16 = off_276F40;
  *(v16 + 8) = 0u;
  *(v16 + 24) = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&a16);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::FixedAttentionComponent::GetSourceDiffs(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  kaldi::nnet1::FixedAttentionComponent::Check(a1);
  v26 = a3;
  v9 = a3[1] - *a3;
  v10 = v9 >> 2;
  v11 = *(a2 + 20);
  if (v11 % (v9 >> 2))
  {
    kaldi::KaldiAssertFailure_("GetSourceDiffs", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-fixed-attention-component.cc", &stru_B8.sectname[3], "seq_size * num_seq == source.NumRows()", v8);
  }

  v12 = *(a2 + 16);
  if (v12 != *(a1 + 8))
  {
    kaldi::KaldiAssertFailure_("GetSourceDiffs", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-fixed-attention-component.cc", &stru_B8.sectname[4], "source.NumCols() == source_vec_dim_", v8);
  }

  if (*(a1 + 92) != v10)
  {
    kaldi::KaldiAssertFailure_("GetSourceDiffs", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-fixed-attention-component.cc", &stru_B8.sectname[5], "accumed_source_states_diff_.NumRows() == num_seq", v8);
  }

  if (*(a1 + 88) != *(a1 + 12) * v12)
  {
    kaldi::KaldiAssertFailure_("GetSourceDiffs", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-fixed-attention-component.cc", &stru_B8.sectname[6], "accumed_source_states_diff_.NumCols() == max_attentions_ * source_vec_dim_", v8);
  }

  kaldi::CuMatrix<float>::Resize(a4, v11, v12, 0, 0);
  if (v10 >= 1)
  {
    v14 = 0;
    v27 = (v9 >> 2) & 0x7FFFFFFF;
    v15 = *(a1 + 12);
    do
    {
      if (v15 >= 1)
      {
        v16 = *(*v26 + 4 * v14);
        if (v16 >= 1)
        {
          v17 = v16 & ~(v16 >> 31);
          v18 = v14 + v10 * (v16 - 1);
          v19 = 1;
          do
          {
            if (*(a4 + 20) <= v18)
            {
              kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.addr + 1, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v13);
            }

            v20 = *(a4 + 16);
            v21 = *(a4 + 32);
            v35[1] = *(a4 + 8) + 4 * (*(a4 + 24) * v18);
            v35[0] = &off_276FE0;
            v35[2] = v20;
            v35[3] = v21;
            kaldi::CuSubMatrix<float>::CuSubMatrix(&v28, a1 + 72, 0, *(a1 + 92), (*(a1 + 8) * (v19 - 1)), *(a1 + 8));
            if (v14 >= HIDWORD(v29))
            {
              kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.addr + 1, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v24);
            }

            v32 = v29 + 4 * v30 * v14;
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
            v15 = *(a1 + 12);
            if (v19 >= v15)
            {
              break;
            }

            v18 -= v10;
          }

          while (v17 != v19++);
        }
      }

      ++v14;
    }

    while (v14 != v27);
  }
}

void sub_129BC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void (**a12)(), uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, uint64_t a20)
{
  a18 = 0;
  a19 = 0;
  a20 = 0;
  a12 = off_276F40;
  *(v20 + 8) = 0u;
  *(v20 + 24) = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&a12);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::FixedAttentionComponent::SetSourceVectorDimension(uint64_t this, int a2)
{
  if (*(this + 8) != a2)
  {
    *(this + 8) = a2;
    *(this + 168) = 0;
  }

  return this;
}

uint64_t kaldi::nnet1::FixedAttentionComponent::SetMaxAttentions(uint64_t this, int a2)
{
  if (*(this + 12) != a2)
  {
    *(this + 12) = a2;
    *(this + 168) = 0;
  }

  return this;
}

void *kaldi::nnet1::FixedAttentionComponent::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  result = kaldi::nnet1::FixedAttentionComponent::Check(a1);
  if (*(a2 + 16) != *(a1 + *(*a1 - 24) + 8))
  {
    kaldi::KaldiAssertFailure_("PropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-fixed-attention-component.cc", &stru_B8.size + 2, "in.NumCols() == input_dim_", v9);
  }

  if (a4)
  {
    kaldi::KaldiAssertFailure_("PropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-fixed-attention-component.cc", &stru_B8.size + 4, "batch_idx == 0", v9);
  }

  v10 = *(a1 + 44);
  v11 = *(a2 + 20);
  v12 = v11 / v10;
  if (v11 / v10 * v10 != v11)
  {
    kaldi::KaldiAssertFailure_("PropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-fixed-attention-component.cc", &stru_B8.size + 7, "num_seq * seq_size == in.NumRows()", v9);
  }

  v13 = *(a1 + 8);
  v14 = *(a1 + 12);
  *(a1 + 56) = *(a3 + 32);
  if (v12 >= 1)
  {
    v15 = 0;
    v16 = (v13 * v14);
    do
    {
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v22, a1 + 24, 0, *(a1 + 44), v16, *(a1 + 8 + *(*a1 - 24)));
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v19, a2, v15, v10, 0, *(a2 + 16));
      kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v22, &v19, 111, v17, v18);
      v19 = off_276F40;
      v20 = 0u;
      v21 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v19);
      v22 = off_276F40;
      v23 = 0u;
      v24 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v22);
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v22, a3, v15, v10, 0, *(a3 + 16));
      (*(**(a1 + 16) + 112))(*(a1 + 16), a1 + 24, &v22, 0);
      v22 = off_276F40;
      v23 = 0u;
      v24 = 0u;
      result = fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v22);
      v15 += v10;
      --v12;
    }

    while (v12);
  }

  return result;
}

void sub_129EC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void (**a14)())
{
  a14 = off_276F40;
  *(v14 + 8) = 0u;
  *(v14 + 24) = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&a14);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::FixedAttentionComponent::BackpropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  kaldi::nnet1::FixedAttentionComponent::Check(a1);
  if (*(a2 + 16) != *(a1 + *(*a1 - 24) + 8))
  {
    kaldi::KaldiAssertFailure_("BackpropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-fixed-attention-component.cc", &stru_B8.flags + 1, "in.NumCols() == input_dim_", v9);
  }

  if (a6)
  {
    kaldi::KaldiAssertFailure_("BackpropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-fixed-attention-component.cc", &stru_B8.flags + 2, "batch_idx == 0", v9);
  }

  v10 = *(a1 + 44);
  v11 = *(a2 + 20);
  v12 = v11 / v10;
  if (v11 / v10 * v10 != v11)
  {
    kaldi::KaldiAssertFailure_("BackpropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-fixed-attention-component.cc", &stru_B8.reserved1 + 1, "num_seq * seq_size == in.NumRows()", v9);
  }

  v13 = (*(a1 + 8) * *(a1 + 12));
  v14 = *(a5 + 32);
  *(a1 + 104) = v14;
  *(a1 + 152) = v14;
  kaldi::CuMatrix<float>::Resize(a1 + 72, v10, v13, 0, 0);
  kaldi::CuMatrix<float>::Resize(a1 + 120, v10, *(*(a1 + 16) + 8), 0, 0);
  if (v12 >= 1)
  {
    v15 = 0;
    do
    {
      v16 = *(a1 + 16);
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v30, a2, v15, v10, 0, *(a2 + 16));
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v27, a3, v15, v10, 0, *(a3 + 16));
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v24, a4, v15, v10, 0, *(a4 + 16));
      (*(*v16 + 128))(v16, &v30, &v27, &v24, a1 + 120, 0);
      v24 = off_276F40;
      v25 = 0u;
      v26 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v24);
      v27 = off_276F40;
      v28 = 0u;
      v29 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v27);
      v30 = off_276F40;
      v31 = 0u;
      v32 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v30);
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v30, a5, v15, v10, 0, *(a5 + 16));
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v27, a1 + 120, 0, *(a1 + 140), v13, *(a1 + 8 + *(*a1 - 24)));
      kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v30, &v27, 111, v17, v18);
      v27 = off_276F40;
      v28 = 0u;
      v29 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v27);
      v30 = off_276F40;
      v31 = 0u;
      v32 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v30);
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v30, a1 + 120, 0, *(a1 + 140), 0, v13);
      kaldi::CuMatrixBase<float>::AddMat(a1 + 72, &v30, 111, v19, v20, 1.0, 1.0);
      v30 = off_276F40;
      v31 = 0u;
      v32 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v30);
      v15 += v10;
      --v12;
    }

    while (v12);
  }
}

void sub_12A314(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void (**a22)())
{
  a22 = off_276F40;
  *(v22 + 8) = 0u;
  *(v22 + 24) = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&a22);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::FixedAttentionComponent::AccumGradients(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  kaldi::nnet1::FixedAttentionComponent::Check(a1);
  if (*(a2 + 16) != *(a1 + *(*a1 - 24) + 8))
  {
    kaldi::KaldiAssertFailure_("AccumGradients", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-fixed-attention-component.cc", &stru_108.segname[8], "input.NumCols() == input_dim_", v10);
  }

  if (a5)
  {
    kaldi::KaldiAssertFailure_("AccumGradients", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-fixed-attention-component.cc", &stru_108.segname[9], "batch_idx == 0", v10);
  }

  v11 = *(a1 + 44);
  v12 = *(a2 + 20);
  v13 = v12 / v11;
  if (v12 / v11 * v11 != v12)
  {
    kaldi::KaldiAssertFailure_("AccumGradients", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-fixed-attention-component.cc", &stru_108.segname[12], "num_seq * seq_size == input.NumRows()", v10);
  }

  v14 = *(a1 + 8);
  v15 = *(a1 + 12);
  *(a1 + 56) = a4;
  v16 = (*(**(a1 + 16) + 272))(*(a1 + 16));
  v29 = off_282980;
  v17 = *(v16 + 23);
  *v30 = *(v16 + 8);
  *(&v30[3] + 3) = v17;
  v18 = v30[0];
  v30[0] = v30[0] / v13;
  (*(**(a1 + 16) + 264))();
  if (v13 >= 1)
  {
    v19 = 0;
    v20 = (v14 * v15);
    do
    {
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v26, a1 + 24, 0, *(a1 + 44), v20, *(a1 + 8 + *(*a1 - 24)));
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v23, a2, v19, v11, 0, *(a2 + 16));
      kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v26, &v23, 111, v21, v22);
      v23 = off_276F40;
      v24 = 0u;
      v25 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v23);
      v26 = off_276F40;
      v27 = 0u;
      v28 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v26);
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v26, a3, v19, v11, 0, *(a3 + 16));
      (*(**(a1 + 16) + 232))(*(a1 + 16), a1 + 24, &v26, a4, 0);
      (*(**(a1 + 16) + 256))(*(a1 + 16), a4, 0);
      v26 = off_276F40;
      v27 = 0u;
      v28 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v26);
      v19 += v11;
      --v13;
    }

    while (v13);
  }

  v30[0] = v18;
  (*(**(a1 + 16) + 264))(*(a1 + 16), &v29);
  kaldi::nnet1::NnetTrainOptions::~NnetTrainOptions(&v29);
}

void sub_12A810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  kaldi::nnet1::NnetTrainOptions::~NnetTrainOptions(va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::FixedAttentionComponent::GetGradient(_DWORD *a1, uint64_t a2, uint64_t a3, void **a4)
{
  v8 = (*(*a1 + 64))(a1);
  v9 = **v8;
  v12 = v10[11];
  v13 = *(a2 + 20);
  v14 = v13 / v12;
  if (v13 / v12 * v12 != v13)
  {
    kaldi::KaldiAssertFailure_("GetGradient", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-fixed-attention-component.cc", &stru_108.reloff + 3, "num_seq * seq_size == input.NumRows()", v11);
  }

  v15 = v10;
  v16 = a1[3];
  v17 = a1[2];
  v18 = (*(*a1 + 112))(a1);
  kaldi::Vector<float>::Resize(a4, v18, 0, v19, v20);
  v21 = (*(*a1 + 112))(a1);
  memset(v38, 0, sizeof(v38));
  kaldi::Vector<float>::Resize(v38, v21, 1, v22, v23);
  if (v14 > 0)
  {
    v31 = a4;
    v24 = 0;
    v25 = (v17 * v16);
    do
    {
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v32, (v15 + 6), 0, v15[11], v25, *(a1 + *(*a1 - 24) + 8));
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v35, a2, v24, v12, 0, *(a2 + 16));
      kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v32, &v35, 111, v26, v27);
      v35 = off_276F40;
      v36 = 0u;
      v37 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v35);
      v32 = off_276F40;
      v33 = 0u;
      v34 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v32);
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v35, a3, v24, v12, 0, *(a3 + 16));
      kaldi::CuMatrix<float>::CuMatrix(&v32, &v35, 111);
      v35 = off_276F40;
      v36 = 0u;
      v37 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v35);
      (*(*v15 + 168))(v15, v15 + 6, &v32, v38);
      kaldi::VectorBase<float>::AddVec<float>(v31, v38, 1.0, v28, v29, v30);
      kaldi::CuMatrix<float>::~CuMatrix(&v32);
      v24 += v12;
      --v14;
    }

    while (v14);
  }

  (*(*v15 + 8))(v15);
  kaldi::Vector<float>::Destroy(v38);
}

double kaldi::nnet1::GlobalAttentionComponent::GlobalAttentionComponent(kaldi::nnet1::GlobalAttentionComponent *this, int a2, int a3)
{
  *(this + 220) = a2;
  *(this + 221) = a3;
  *(this + 444) = 0;
  *(this + 112) = 0;
  *(this + 904) = 0u;
  *(this + 115) = off_282980;
  *(this + 58) = xmmword_21A620;
  *(this + 118) = 0x3BF800000;
  *(this + 238) = 1;
  *(this + 478) = 0;
  *(this + 958) = 0;
  *(this + 1) = -1;
  *this = off_27D230;
  *(this + 109) = off_27D438;
  result = 0.0;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 6) = off_276F88;
  *(this + 88) = 0;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 12) = off_276F88;
  *(this + 136) = 0;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 18) = off_276F88;
  *(this + 184) = 0;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 24) = off_276F88;
  *(this + 232) = 0;
  *(this + 248) = 0u;
  *(this + 264) = 0u;
  *(this + 30) = off_276F88;
  *(this + 280) = 0;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 36) = off_276F88;
  *(this + 328) = 0;
  *(this + 344) = 0u;
  *(this + 360) = 0u;
  *(this + 42) = off_276F88;
  *(this + 376) = 0;
  *(this + 392) = 0u;
  *(this + 408) = 0u;
  *(this + 48) = off_276F88;
  *(this + 424) = 0;
  *(this + 440) = 0u;
  *(this + 456) = 0u;
  *(this + 54) = off_276F88;
  *(this + 472) = 0;
  *(this + 488) = 0u;
  *(this + 504) = 0u;
  *(this + 60) = off_276F88;
  *(this + 520) = 0;
  *(this + 536) = 0u;
  *(this + 552) = 0u;
  *(this + 66) = off_276F88;
  *(this + 568) = 0;
  *(this + 584) = 0u;
  *(this + 600) = 0u;
  *(this + 72) = off_276F88;
  *(this + 616) = 0;
  *(this + 81) = 0;
  *(this + 632) = 0u;
  *(this + 78) = off_277020;
  *(this + 664) = 0u;
  *(this + 680) = 0u;
  *(this + 82) = off_276F88;
  *(this + 696) = 0;
  *(this + 91) = 0;
  *(this + 712) = 0u;
  *(this + 88) = off_277020;
  *(this + 95) = 0;
  *(this + 744) = 0u;
  *(this + 92) = off_277020;
  *(this + 776) = 0u;
  *(this + 792) = 0u;
  *(this + 96) = off_276F88;
  *(this + 808) = 0;
  *(this + 52) = 0u;
  *(this + 53) = 0u;
  *(this + 51) = 0u;
  *(this + 216) = -1;
  *(this + 868) = 0;
  return result;
}

kaldi::nnet1::GlobalAttentionComponent *kaldi::nnet1::GlobalAttentionComponent::GlobalAttentionComponent(kaldi::nnet1::GlobalAttentionComponent *this, const kaldi::nnet1::GlobalAttentionComponent *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  *(this + 110) = *(a2 + *(*a2 - 24) + 8);
  *(this + 444) = 0;
  *(this + 112) = 0;
  *(this + 904) = 0u;
  *(this + 115) = off_282980;
  *(this + 58) = xmmword_21A620;
  *(this + 236) = -1082130432;
  *(this + 948) = 0x100000003;
  *(this + 478) = 0;
  *(this + 958) = 0;
  *(this + 1) = -1;
  *this = off_27D230;
  *(this + 109) = off_27D438;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  v38 = this + 48;
  *(this + 6) = off_276F88;
  *(this + 88) = 0;
  *(this + 120) = 0u;
  *(this + 104) = 0u;
  v37 = this + 96;
  *(this + 12) = off_276F88;
  *(this + 136) = 0;
  *(this + 168) = 0u;
  *(this + 152) = 0u;
  v36 = this + 144;
  *(this + 18) = off_276F88;
  *(this + 184) = 0;
  *(this + 216) = 0u;
  *(this + 200) = 0u;
  v35 = this + 192;
  *(this + 24) = off_276F88;
  *(this + 232) = 0;
  *(this + 248) = 0u;
  *(this + 264) = 0u;
  v34 = this + 240;
  *(this + 30) = off_276F88;
  *(this + 280) = 0;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  v33 = this + 288;
  *(this + 36) = off_276F88;
  *(this + 328) = 0;
  *(this + 344) = 0u;
  *(this + 360) = 0u;
  v32 = this + 336;
  *(this + 42) = off_276F88;
  *(this + 376) = 0;
  *(this + 392) = 0u;
  *(this + 408) = 0u;
  v31 = this + 384;
  *(this + 48) = off_276F88;
  *(this + 424) = 0;
  *(this + 440) = 0u;
  *(this + 456) = 0u;
  v30 = this + 432;
  *(this + 54) = off_276F88;
  *(this + 472) = 0;
  *(this + 488) = 0u;
  *(this + 504) = 0u;
  v29 = this + 480;
  *(this + 60) = off_276F88;
  *(this + 520) = 0;
  v6 = this + 528;
  *(this + 536) = 0u;
  *(this + 552) = 0u;
  *(this + 66) = off_276F88;
  *(this + 568) = 0;
  v7 = this + 576;
  *(this + 584) = 0u;
  *(this + 600) = 0u;
  *(this + 72) = off_276F88;
  *(this + 616) = 0;
  v8 = this + 624;
  *(this + 632) = 0u;
  *(this + 78) = off_277020;
  v9 = this + 656;
  *(this + 664) = 0u;
  *(this + 680) = 0u;
  *(this + 81) = 0;
  *(this + 82) = off_276F88;
  *(this + 696) = 0;
  v10 = this + 704;
  *(this + 712) = 0u;
  *(this + 88) = off_277020;
  v11 = this + 736;
  *(this + 95) = 0;
  *(this + 744) = 0u;
  *(this + 91) = 0;
  *(this + 92) = off_277020;
  v12 = this + 768;
  *(this + 776) = 0u;
  *(this + 792) = 0u;
  *(this + 96) = off_276F88;
  *(this + 808) = 0;
  v13 = (this + 816);
  v28 = (this + 840);
  *(this + 53) = 0u;
  *(this + 52) = 0u;
  *(this + 51) = 0u;
  *(this + 1) = *(a2 + 1);
  v14 = *(a2 + 2);
  if (!v14)
  {
    v26 = "src.src_dot_trans_";
    v27 = (&stru_20 + 52);
    goto LABEL_12;
  }

  if (!*(a2 + 3))
  {
    v26 = "src.tgt_dot_trans_";
    v27 = (&stru_20 + 53);
    goto LABEL_12;
  }

  if (!*(a2 + 4))
  {
    v26 = "src.src_add_trans_";
    v27 = (&stru_20 + 54);
    goto LABEL_12;
  }

  if (!*(a2 + 5))
  {
    v26 = "src.tgt_add_trans_";
    v27 = &stru_20.filesize + 7;
LABEL_12:
    kaldi::KaldiAssertFailure_("GlobalAttentionComponent", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-global-attention-component.cc", v27, v26, a5);
  }

  *(this + 2) = (*(*v14 + 16))(v14);
  *(this + 3) = (*(**(a2 + 3) + 16))(*(a2 + 3));
  *(this + 4) = (*(**(a2 + 4) + 16))(*(a2 + 4));
  *(this + 5) = (*(**(a2 + 5) + 16))(*(a2 + 5));
  kaldi::CuMatrix<float>::operator=(v38, a2 + 48);
  kaldi::CuMatrix<float>::operator=(v37, a2 + 96);
  kaldi::CuMatrix<float>::operator=(v36, a2 + 144);
  kaldi::CuMatrix<float>::operator=(v35, a2 + 192);
  kaldi::CuMatrix<float>::operator=(v34, a2 + 240);
  kaldi::CuMatrix<float>::operator=(v33, a2 + 288);
  kaldi::CuMatrix<float>::operator=(v32, a2 + 336);
  kaldi::CuMatrix<float>::operator=(v31, a2 + 384);
  kaldi::CuMatrix<float>::operator=(v30, a2 + 432);
  kaldi::CuMatrix<float>::operator=(v29, a2 + 480);
  kaldi::CuMatrix<float>::operator=(v6, a2 + 528);
  kaldi::CuMatrix<float>::operator=(v7, a2 + 576);
  kaldi::CuVector<float>::operator=(v8, a2 + 624, v16, v17, v18);
  kaldi::CuMatrix<float>::operator=(v9, a2 + 656);
  kaldi::CuVector<float>::operator=(v10, a2 + 704, v19, v20, v21);
  kaldi::CuVector<float>::operator=(v11, a2 + 736, v22, v23, v24);
  kaldi::CuMatrix<float>::operator=(v12, a2 + 768);
  if (this != a2)
  {
    std::vector<std::vector<int>>::__assign_with_size[abi:ne200100]<std::vector<int>*,std::vector<int>*>(v13, *(a2 + 102), *(a2 + 103), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 103) - *(a2 + 102)) >> 3));
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v28, *(a2 + 105), *(a2 + 106), (*(a2 + 106) - *(a2 + 105)) >> 2);
  }

  *(this + 216) = *(a2 + 216);
  *(this + 868) = *(a2 + 868);
  return this;
}

void sub_12B730(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, kaldi::nnet1::UpdatableComponent *a10, void **a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v32 = *a11;
  if (*a11)
  {
    *(v21 + 848) = v32;
    operator delete(v32);
  }

  *(v30 - 88) = v24;
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100]((v30 - 88));
  kaldi::CuMatrix<float>::~CuMatrix(v23);
  kaldi::CuVector<float>::~CuVector(v22);
  kaldi::CuVector<float>::~CuVector(v29);
  kaldi::CuMatrix<float>::~CuMatrix(v28);
  kaldi::CuVector<float>::~CuVector(v27);
  kaldi::CuMatrix<float>::~CuMatrix(v26);
  kaldi::CuMatrix<float>::~CuMatrix(v25);
  kaldi::CuMatrix<float>::~CuMatrix(a12);
  kaldi::CuMatrix<float>::~CuMatrix(a13);
  kaldi::CuMatrix<float>::~CuMatrix(a14);
  kaldi::CuMatrix<float>::~CuMatrix(a15);
  kaldi::CuMatrix<float>::~CuMatrix(a16);
  kaldi::CuMatrix<float>::~CuMatrix(a17);
  kaldi::CuMatrix<float>::~CuMatrix(a18);
  kaldi::CuMatrix<float>::~CuMatrix(a19);
  kaldi::CuMatrix<float>::~CuMatrix(a20);
  kaldi::CuMatrix<float>::~CuMatrix(a21);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v21);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(a10);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::GlobalAttentionComponent::~GlobalAttentionComponent(kaldi::nnet1::GlobalAttentionComponent *this, uint64_t *a2)
{
  v3 = *a2;
  *this = *a2;
  *(this + *(v3 - 24)) = a2[3];
  v4 = *(this + 2);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 3);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 4);
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 5);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(this + 105);
  if (v8)
  {
    *(this + 106) = v8;
    operator delete(v8);
  }

  v9 = (this + 816);
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&v9);
  kaldi::CuMatrix<float>::~CuMatrix(this + 768);
  kaldi::CuVector<float>::~CuVector(this + 92);
  kaldi::CuVector<float>::~CuVector(this + 88);
  kaldi::CuMatrix<float>::~CuMatrix(this + 656);
  kaldi::CuVector<float>::~CuVector(this + 78);
  kaldi::CuMatrix<float>::~CuMatrix(this + 576);
  kaldi::CuMatrix<float>::~CuMatrix(this + 528);
  kaldi::CuMatrix<float>::~CuMatrix(this + 480);
  kaldi::CuMatrix<float>::~CuMatrix(this + 432);
  kaldi::CuMatrix<float>::~CuMatrix(this + 384);
  kaldi::CuMatrix<float>::~CuMatrix(this + 336);
  kaldi::CuMatrix<float>::~CuMatrix(this + 288);
  kaldi::CuMatrix<float>::~CuMatrix(this + 240);
  kaldi::CuMatrix<float>::~CuMatrix(this + 192);
  kaldi::CuMatrix<float>::~CuMatrix(this + 144);
  kaldi::CuMatrix<float>::~CuMatrix(this + 96);
  kaldi::CuMatrix<float>::~CuMatrix(this + 48);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(this);
}

void kaldi::nnet1::GlobalAttentionComponent::~GlobalAttentionComponent(kaldi::nnet1::GlobalAttentionComponent *this)
{
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent((v1 + 872));
}

{
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent((v1 + 872));

  operator delete();
}

void virtual thunk tokaldi::nnet1::GlobalAttentionComponent::~GlobalAttentionComponent(kaldi::nnet1::GlobalAttentionComponent *this)
{
  v2 = (v1 + 872);

  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v2);
}

{
  kaldi::nnet1::GlobalAttentionComponent::~GlobalAttentionComponent((this + *(*this - 24)));
}

void kaldi::nnet1::GlobalAttentionComponent::InitData(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v44 = 0;
  v45 = 0uLL;
  v7 = a2 + 4;
  v8 = a1 + 12;
  v9 = a1 + 1;
  while (1)
  {
    if ((*(v7 + *(*a2 - 24)) & 2) != 0)
    {
      goto LABEL_42;
    }

    kaldi::ReadToken(a2, 0, &v44, a4, a5);
    if (SHIBYTE(v45) < 0)
    {
      if (v45 != 15)
      {
        if (v45 != 22)
        {
          goto LABEL_35;
        }

        v15 = *v44 == 0x53656372756F533CLL && v44[1] == 0x656D694465746174;
        v16 = v15 && *(v44 + 14) == 0x3E6E6F69736E656DLL;
        v14 = v9;
        if (!v16)
        {
          goto LABEL_35;
        }

        goto LABEL_31;
      }

      v17 = v44;
    }

    else
    {
      if (HIBYTE(v45) != 15)
      {
        if (HIBYTE(v45) != 22)
        {
          goto LABEL_33;
        }

        v13 = v44 == 0x53656372756F533CLL && v45 == 0x656D694465746174 && *(&v45 + 6) == 0x3E6E6F69736E656DLL;
        v14 = v9;
        if (!v13)
        {
          goto LABEL_51;
        }

        goto LABEL_31;
      }

      v17 = &v44;
    }

    v18 = *v17;
    v19 = *(v17 + 7);
    v20 = v18 == 0x6574744178614D3CLL && v19 == 0x3E736E6F69746E65;
    v14 = v8;
    if (!v20)
    {
      if ((HIBYTE(v45) & 0x80) != 0)
      {
LABEL_35:
        if (v45 == 12)
        {
          v21 = v44;
          goto LABEL_37;
        }
      }

      else
      {
LABEL_33:
        if (HIBYTE(v45) == 12)
        {
          v21 = &v44;
LABEL_37:
          v22 = *v21;
          v23 = *(v21 + 2);
          if (v22 == 0x6E6F706D6F432F3CLL && v23 == 1047817829)
          {
LABEL_42:
            v25 = a1[2];
            if (v25)
            {
              (*(*v25 + 8))(v25);
            }

            v26 = a1[3];
            if (v26)
            {
              (*(*v26 + 8))(v26);
            }

            v27 = a1[4];
            if (v27)
            {
              (*(*v27 + 8))(v27);
            }

            v28 = a1[5];
            if (v28)
            {
              (*(*v28 + 8))(v28);
            }

            memset(__p, 0, sizeof(__p));
            v41 = 0;
            kaldi::ExpectToken(a2, 0, "<SourceDotTransform>");
            kaldi::ReadToken(a2, 0, __p, v29, v30);
            v31 = kaldi::nnet1::Component::MarkerToComponentType(__p);
            kaldi::ExpectToken(a2, 0, "<InputDim>");
            kaldi::ReadBasicType<int>(a2, 0, &v41 + 4, v32, v33);
            kaldi::ExpectToken(a2, 0, "<OutputDim>");
            kaldi::ReadBasicType<int>(a2, 0, &v41, v34, v35);
            kaldi::nnet1::Component::NewComponentOfType(v31);
          }
        }
      }

LABEL_51:
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v43, "InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-global-attention-component.cc", 179);
      v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, "Unknown token ", 14);
      if (v45 >= 0)
      {
        v37 = &v44;
      }

      else
      {
        v37 = v44;
      }

      if (v45 >= 0)
      {
        v38 = HIBYTE(v45);
      }

      else
      {
        v38 = v45;
      }

      v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, v37, v38);
      v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, ", a typo in config?", 19);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, " (SourceStateDimension|MaxAttentions)", 37);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v43);
    }

LABEL_31:
    kaldi::ReadBasicType<int>(a2, 0, v14, v10, v11);
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }
}

uint64_t kaldi::nnet1::GlobalAttentionComponent::Check(uint64_t this)
{
  if ((*(this + 868) & 1) == 0)
  {
    if (*(this + 12) < 1 || (v1 = *(this + 8), v1 <= 0))
    {
      v33 = this;
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v41, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-global-attention-component.cc", 645);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, "component is not initialized, max attention is ", 47);
      v9 = *(v33 + 12);
      v10 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ", source state dimension is ", 28);
      v11 = *(v33 + 8);
      std::ostream::operator<<();
    }

    else
    {
      v2 = *(this + 16);
      if (v1 == *(v2 + 8))
      {
        v3 = *(this + 32);
        if (v1 == *(v3 + 8))
        {
          v4 = this + *(*this - 24);
          v5 = *(v4 + 8);
          v6 = *(this + 24);
          if (v5 == *(v6 + 8))
          {
            v7 = *(this + 40);
            if (v5 == *(v7 + 8))
            {
              if (*(v2 + 12) == *(v6 + 12))
              {
                v8 = *(v3 + 12);
                if (v8 == *(v7 + 12))
                {
                  if (*(v4 + 12) == v8)
                  {
                    *(this + 868) = 1;
                    return this;
                  }

                  v40 = this;
                  kaldi::KaldiErrorMessage::KaldiErrorMessage(v41, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-global-attention-component.cc", 680);
                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, "the source/target add transform has output dim ", 47);
                  v30 = *(v40[4] + 12);
                  v31 = std::ostream::operator<<();
                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, " , but the component has output dim ", 36);
                  v32 = *(v40 + *(*v40 - 24) + 12);
                  std::ostream::operator<<();
                }

                else
                {
                  v39 = this;
                  kaldi::KaldiErrorMessage::KaldiErrorMessage(v41, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-global-attention-component.cc", 675);
                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, "the source and target add transform has different output dim ", 61);
                  v27 = *(*(v39 + 32) + 12);
                  v28 = std::ostream::operator<<();
                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, " vs ", 4);
                  v29 = *(*(v39 + 40) + 12);
                  std::ostream::operator<<();
                }
              }

              else
              {
                v38 = this;
                kaldi::KaldiErrorMessage::KaldiErrorMessage(v41, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-global-attention-component.cc", 670);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, "the source and target dot transform has different output dim ", 61);
                v24 = *(*(v38 + 16) + 12);
                v25 = std::ostream::operator<<();
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, " vs ", 4);
                v26 = *(*(v38 + 24) + 12);
                std::ostream::operator<<();
              }
            }

            else
            {
              v37 = this;
              kaldi::KaldiErrorMessage::KaldiErrorMessage(v41, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-global-attention-component.cc", 665);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, "the component has input dim ", 28);
              v21 = *(v37 + *(*v37 - 24) + 8);
              v22 = std::ostream::operator<<();
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, " , but the target add transform has input dim ", 46);
              v23 = *(v37[5] + 8);
              std::ostream::operator<<();
            }
          }

          else
          {
            v36 = this;
            kaldi::KaldiErrorMessage::KaldiErrorMessage(v41, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-global-attention-component.cc", 660);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, "the component has input dim ", 28);
            v18 = *(v36 + *(*v36 - 24) + 8);
            v19 = std::ostream::operator<<();
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, " , but the target dot transform has input dim ", 46);
            v20 = *(v36[3] + 8);
            std::ostream::operator<<();
          }
        }

        else
        {
          v35 = this;
          kaldi::KaldiErrorMessage::KaldiErrorMessage(v41, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-global-attention-component.cc", 655);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, "source state dimension is ", 26);
          v15 = *(v35 + 8);
          v16 = std::ostream::operator<<();
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " , but the source add transform has input dim ", 46);
          v17 = *(*(v35 + 32) + 8);
          std::ostream::operator<<();
        }
      }

      else
      {
        v34 = this;
        kaldi::KaldiErrorMessage::KaldiErrorMessage(v41, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-global-attention-component.cc", 650);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, "source state dimension is ", 26);
        v12 = *(v34 + 8);
        v13 = std::ostream::operator<<();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " , but the source dot transform has input dim ", 46);
        v14 = *(*(v34 + 16) + 8);
        std::ostream::operator<<();
      }
    }

    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v41);
  }

  return this;
}

void kaldi::nnet1::GlobalAttentionComponent::ReadData(void *a1, uint64_t *a2, int a3)
{
  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiLogMessage::KaldiLogMessage(v44, "ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-global-attention-component.cc", 245);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, "Reading attention model", 23);
    kaldi::KaldiLogMessage::~KaldiLogMessage(v44);
  }

  __p = 0;
  v43 = 0uLL;
  while (1)
  {
    if (kaldi::Peek(a2, a3) != 60)
    {
      goto LABEL_44;
    }

    kaldi::ReadToken(a2, a3, &__p, v6, v7);
    if ((SHIBYTE(v43) & 0x80000000) == 0)
    {
      break;
    }

    if (v43 == 15)
    {
      p_p = __p;
      goto LABEL_28;
    }

    if (v43 != 22)
    {
      goto LABEL_37;
    }

    v13 = *__p == 0x53656372756F533CLL && *(__p + 1) == 0x656D694465746174;
    v14 = v13 && *(__p + 14) == 0x3E6E6F69736E656DLL;
    v12 = (a1 + 1);
    if (!v14)
    {
      goto LABEL_37;
    }

LABEL_33:
    kaldi::ReadBasicType<int>(a2, a3, v12, v8, v9);
  }

  if (HIBYTE(v43) != 15)
  {
    if (HIBYTE(v43) != 22)
    {
      goto LABEL_35;
    }

    v11 = __p == 0x53656372756F533CLL && v43 == 0x656D694465746174 && *(&v43 + 6) == 0x3E6E6F69736E656DLL;
    v12 = (a1 + 1);
    if (!v11)
    {
      goto LABEL_63;
    }

    goto LABEL_33;
  }

  p_p = &__p;
LABEL_28:
  v16 = *p_p;
  v17 = *(p_p + 7);
  v18 = v16 == 0x6574744178614D3CLL && v17 == 0x3E736E6F69746E65;
  v12 = a1 + 12;
  if (v18)
  {
    goto LABEL_33;
  }

  if ((HIBYTE(v43) & 0x80) == 0)
  {
LABEL_35:
    if (HIBYTE(v43) == 12)
    {
      v19 = &__p;
      goto LABEL_39;
    }

    goto LABEL_63;
  }

LABEL_37:
  if (v43 != 12)
  {
    goto LABEL_63;
  }

  v19 = __p;
LABEL_39:
  v20 = *v19;
  v21 = v19[2];
  if (v20 != 0x6E6F706D6F432F3CLL || v21 != 1047817829)
  {
LABEL_63:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v44, "ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-global-attention-component.cc", 256);
    v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, "Unrecognized token ", 19);
    if (v43 >= 0)
    {
      v40 = &__p;
    }

    else
    {
      v40 = __p;
    }

    if (v43 >= 0)
    {
      v41 = HIBYTE(v43);
    }

    else
    {
      v41 = v43;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, v40, v41);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v44);
  }

LABEL_44:
  v23 = a1[2];
  if (v23)
  {
    (*(*v23 + 8))(v23);
  }

  v24 = a1[3];
  if (v24)
  {
    (*(*v24 + 8))(v24);
  }

  v25 = a1[4];
  if (v25)
  {
    (*(*v25 + 8))(v25);
  }

  v26 = a1[5];
  if (v26)
  {
    (*(*v26 + 8))(v26);
  }

  kaldi::ExpectToken(a2, a3, "<SourceDotTransform>");
  v27 = kaldi::nnet1::Component::Read(a2, a3);
  if (!v27)
  {
    a1[2] = 0;
LABEL_71:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v44, "ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-global-attention-component.cc", 266);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, "read source dot transform failed", 32);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v44);
  }

  v28 = **v27;
  a1[2] = v29;
  if (!v29)
  {
    goto LABEL_71;
  }

  kaldi::ExpectToken(a2, a3, "</Component>");
  kaldi::ExpectToken(a2, a3, "<TargetDotTransform>");
  v30 = kaldi::nnet1::Component::Read(a2, a3);
  if (!v30)
  {
    a1[3] = 0;
LABEL_73:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v44, "ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-global-attention-component.cc", 270);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, "read target dot transform failed", 32);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v44);
  }

  v31 = **v30;
  a1[3] = v32;
  if (!v32)
  {
    goto LABEL_73;
  }

  kaldi::ExpectToken(a2, a3, "</Component>");
  kaldi::ExpectToken(a2, a3, "<SourceAddTransform>");
  v33 = kaldi::nnet1::Component::Read(a2, a3);
  if (!v33)
  {
    a1[4] = 0;
LABEL_75:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v44, "ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-global-attention-component.cc", 274);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, "read source add transform failed", 32);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v44);
  }

  v34 = **v33;
  a1[4] = v35;
  if (!v35)
  {
    goto LABEL_75;
  }

  kaldi::ExpectToken(a2, a3, "</Component>");
  kaldi::ExpectToken(a2, a3, "<TargetAddTransform>");
  v36 = kaldi::nnet1::Component::Read(a2, a3);
  if (!v36)
  {
    a1[5] = 0;
LABEL_77:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v44, "ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-global-attention-component.cc", 278);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, "read target dot transform failed", 32);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v44);
  }

  v37 = **v36;
  a1[5] = v38;
  if (!v38)
  {
    goto LABEL_77;
  }

  kaldi::ExpectToken(a2, a3, "</Component>");
  kaldi::nnet1::GlobalAttentionComponent::Check(a1);
  if (SHIBYTE(v43) < 0)
  {
    operator delete(__p);
  }
}

void sub_12CFF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *kaldi::nnet1::GlobalAttentionComponent::WriteConfig(uint64_t a1, void *a2, const char *a3, uint64_t a4, const char *a5)
{
  kaldi::WriteToken(a2, a3, "<SourceStateDimension>", a4, a5);
  v8 = *(a1 + 8);
  kaldi::WriteBasicType<int>(a2, a3);
  kaldi::WriteToken(a2, a3, "<MaxAttentions>", v9, v10);
  v11 = *(a1 + 12);
  kaldi::WriteBasicType<int>(a2, a3);

  return kaldi::WriteToken(a2, a3, "</Component>", v12, v13);
}

void *kaldi::nnet1::GlobalAttentionComponent::WriteData(unsigned int **a1, void *a2, const char *a3, uint64_t a4)
{
  (*(*a1 + 12))(a1);
  kaldi::WriteToken(a2, a3, "<SourceDotTransform>", v8, v9);
  kaldi::nnet1::Component::Write(a1[2], a2, a3, a4);
  kaldi::WriteToken(a2, a3, "</Component>", v10, v11);
  kaldi::WriteToken(a2, a3, "<TargetDotTransform>", v12, v13);
  kaldi::nnet1::Component::Write(a1[3], a2, a3, a4);
  kaldi::WriteToken(a2, a3, "</Component>", v14, v15);
  kaldi::WriteToken(a2, a3, "<SourceAddTransform>", v16, v17);
  kaldi::nnet1::Component::Write(a1[4], a2, a3, a4);
  kaldi::WriteToken(a2, a3, "</Component>", v18, v19);
  kaldi::WriteToken(a2, a3, "<TargetAddTransform>", v20, v21);
  kaldi::nnet1::Component::Write(a1[5], a2, a3, a4);

  return kaldi::WriteToken(a2, a3, "</Component>", v22, v23);
}

uint64_t kaldi::nnet1::GlobalAttentionComponent::NumParams(kaldi::nnet1::GlobalAttentionComponent *this)
{
  v2 = (*(**(this + 2) + 176))(*(this + 2));
  v3 = (*(**(this + 3) + 176))(*(this + 3)) + v2;
  v4 = (*(**(this + 4) + 176))(*(this + 4));
  return v3 + v4 + (*(**(this + 5) + 176))(*(this + 5));
}

void kaldi::nnet1::GlobalAttentionComponent::GetParams(void **a1, uint64_t a2)
{
  v4 = ((*a1)[14])(a1);
  kaldi::Vector<float>::Resize(a2, v4, 1, v5, v6);
  v28 = 0;
  v29 = 0;
  v30 = 0;
  (*(*a1[2] + 184))(a1[2], &v28);
  v26 = 0;
  v27 = 0;
  if (v29 > *(a2 + 8))
  {
    kaldi::KaldiAssertFailure_("SubVector", "../subproject/libquasar/libkaldi/src/matrix/kaldi-vector.h", &stru_1F8.size + 6, "static_cast<UnsignedMatrixIndexT>(origin)+ static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v9);
  }

  v25 = *a2;
  LODWORD(v26) = v29;
  kaldi::VectorBase<float>::CopyFromVec(&v25, &v28, v7, v8, v9);
  v10 = v29;
  (*(*a1[3] + 184))(a1[3], &v28);
  v26 = 0;
  v27 = 0;
  if ((v29 + v10) > *(a2 + 8))
  {
    kaldi::KaldiAssertFailure_("SubVector", "../subproject/libquasar/libkaldi/src/matrix/kaldi-vector.h", &stru_1F8.size + 6, "static_cast<UnsignedMatrixIndexT>(origin)+ static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v13);
  }

  v25 = (*a2 + 4 * v10);
  LODWORD(v26) = v29;
  kaldi::VectorBase<float>::CopyFromVec(&v25, &v28, v11, v12, v13);
  v14 = v29;
  (*(*a1[4] + 184))(a1[4], &v28);
  v18 = v14 + v10;
  v26 = 0;
  v27 = 0;
  if ((v29 + v18) > *(a2 + 8))
  {
    kaldi::KaldiAssertFailure_("SubVector", "../subproject/libquasar/libkaldi/src/matrix/kaldi-vector.h", &stru_1F8.size + 6, "static_cast<UnsignedMatrixIndexT>(origin)+ static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v17);
  }

  v25 = (*a2 + 4 * v18);
  LODWORD(v26) = v29;
  kaldi::VectorBase<float>::CopyFromVec(&v25, &v28, v15, v16, v17);
  v19 = v29;
  (*(*a1[5] + 184))(a1[5], &v28);
  v23 = v19 + v18;
  v26 = 0;
  v27 = 0;
  if ((v29 + v19 + v18) > *(a2 + 8))
  {
    kaldi::KaldiAssertFailure_("SubVector", "../subproject/libquasar/libkaldi/src/matrix/kaldi-vector.h", &stru_1F8.size + 6, "static_cast<UnsignedMatrixIndexT>(origin)+ static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v22);
  }

  v25 = (*a2 + 4 * v23);
  LODWORD(v26) = v29;
  kaldi::VectorBase<float>::CopyFromVec(&v25, &v28, v20, v21, v22);
  if (v29 + v23 != *(a2 + 8))
  {
    kaldi::KaldiAssertFailure_("GetParams", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-global-attention-component.cc", &stru_108.flags, "shift == wei_copy->Dim()", v24);
  }

  kaldi::Vector<float>::Destroy(&v28);
}

void sub_12D618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  kaldi::Vector<float>::Destroy(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::GlobalAttentionComponent::SetParams(void *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = (*(*v4 + 176))(v4);
  v19 = 0;
  v20 = 0;
  if (v5 > *(a2 + 8))
  {
    goto LABEL_7;
  }

  v18 = *a2;
  LODWORD(v19) = v5;
  (*(*v4 + 192))(v4, &v18);
  v7 = (*(*a1[2] + 176))(a1[2]);
  v8 = a1[3];
  v9 = (*(*v8 + 176))(v8);
  v19 = 0;
  v20 = 0;
  if ((v9 + v7) > *(a2 + 8))
  {
    goto LABEL_7;
  }

  v18 = *a2 + 4 * v7;
  LODWORD(v19) = v9;
  (*(*v8 + 192))(v8, &v18);
  v10 = (*(*a1[3] + 176))(a1[3]) + v7;
  v11 = a1[4];
  v12 = (*(*v11 + 176))(v11);
  v19 = 0;
  v20 = 0;
  if ((v12 + v10) > *(a2 + 8))
  {
    goto LABEL_7;
  }

  v18 = *a2 + 4 * v10;
  LODWORD(v19) = v12;
  (*(*v11 + 192))(v11, &v18);
  v13 = (*(*a1[4] + 176))(a1[4]) + v10;
  v14 = a1[5];
  v15 = (*(*v14 + 176))(v14);
  v19 = 0;
  v20 = 0;
  if ((v15 + v13) > *(a2 + 8))
  {
LABEL_7:
    kaldi::KaldiAssertFailure_("SubVector", "../subproject/libquasar/libkaldi/src/matrix/kaldi-vector.h", &stru_1F8.size + 6, "static_cast<UnsignedMatrixIndexT>(origin)+ static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v6);
  }

  v18 = *a2 + 4 * v13;
  LODWORD(v19) = v15;
  (*(*v14 + 192))(v14, &v18);
  result = (*(*a1[5] + 176))(a1[5]);
  if (result + v13 != *(a2 + 8))
  {
    kaldi::KaldiAssertFailure_("SetParams", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-global-attention-component.cc", &stru_108.reserved3 + 1, "shift == wei_src.Dim()", v17);
  }

  return result;
}

float kaldi::nnet1::GlobalAttentionComponent::SumParams(kaldi::nnet1::GlobalAttentionComponent *this)
{
  v2 = (*(**(this + 2) + 208))(*(this + 2));
  v3 = v2 + (*(**(this + 3) + 208))(*(this + 3));
  v4 = v3 + (*(**(this + 4) + 208))(*(this + 4));
  return v4 + (*(**(this + 5) + 208))(*(this + 5));
}

uint64_t kaldi::nnet1::GlobalAttentionComponent::PerturbParams(kaldi::nnet1::GlobalAttentionComponent *this, float a2)
{
  (*(**(this + 2) + 216))(*(this + 2));
  (*(**(this + 3) + 216))(*(this + 3), a2);
  (*(**(this + 4) + 216))(*(this + 4), a2);
  v4 = *(**(this + 5) + 216);
  v5.n128_f32[0] = a2;

  return v4(v5);
}

uint64_t kaldi::nnet1::GlobalAttentionComponent::Info(kaldi::nnet1::GlobalAttentionComponent *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v42);
  (*(*this + 96))(this, &v42, 0);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v42, "\n## Source Dot Transform: input-dim ", 36);
  v2 = *(*(this + 2) + 8);
  v3 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, ", output-dim ", 13);
  v4 = *(*(this + 2) + 12);
  v5 = std::ostream::operator<<();
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "\n", 1);
  (*(**(this + 2) + 64))(v40);
  if ((v41 & 0x80u) == 0)
  {
    v7 = v40;
  }

  else
  {
    v7 = v40[0];
  }

  if ((v41 & 0x80u) == 0)
  {
    v8 = v41;
  }

  else
  {
    v8 = v40[1];
  }

  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v7, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "\n## Target Dot Transform: input-dim ", 36);
  v10 = *(*(this + 3) + 8);
  v11 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ", output-dim ", 13);
  v12 = *(*(this + 3) + 12);
  v13 = std::ostream::operator<<();
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "\n", 1);
  (*(**(this + 3) + 64))(v38);
  if ((v39 & 0x80u) == 0)
  {
    v15 = v38;
  }

  else
  {
    v15 = v38[0];
  }

  if ((v39 & 0x80u) == 0)
  {
    v16 = v39;
  }

  else
  {
    v16 = v38[1];
  }

  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v15, v16);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "\n## Source Add Transform: input-dim ", 36);
  v18 = *(*(this + 4) + 8);
  v19 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, ", output-dim ", 13);
  v20 = *(*(this + 4) + 12);
  v21 = std::ostream::operator<<();
  v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "\n", 1);
  (*(**(this + 4) + 64))(v36);
  if ((v37 & 0x80u) == 0)
  {
    v23 = v36;
  }

  else
  {
    v23 = v36[0];
  }

  if ((v37 & 0x80u) == 0)
  {
    v24 = v37;
  }

  else
  {
    v24 = v36[1];
  }

  v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, v23, v24);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "\n## Target Add Transform: input-dim ", 36);
  v26 = *(*(this + 5) + 8);
  v27 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, ", output-dim ", 13);
  v28 = *(*(this + 5) + 12);
  v29 = std::ostream::operator<<();
  v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "\n", 1);
  (*(**(this + 5) + 64))(__p);
  if ((v35 & 0x80u) == 0)
  {
    v31 = __p;
  }

  else
  {
    v31 = __p[0];
  }

  if ((v35 & 0x80u) == 0)
  {
    v32 = v35;
  }

  else
  {
    v32 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, v31, v32);
  if (v35 < 0)
  {
    operator delete(__p[0]);
  }

  if (v37 < 0)
  {
    operator delete(v36[0]);
  }

  if (v39 < 0)
  {
    operator delete(v38[0]);
  }

  if (v41 < 0)
  {
    operator delete(v40[0]);
  }

  std::stringbuf::str();
  if (v45 < 0)
  {
    operator delete(v44[7].__locale_);
  }

  std::locale::~locale(v44);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_12DFC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, char a34)
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

  std::ios::~ios();
  _Unwind_Resume(a1);
}

void kaldi::nnet1::GlobalAttentionComponent::InfoGradient(kaldi::nnet1::GlobalAttentionComponent *this@<X0>, std::string *a2@<X8>)
{
  (*(**(this + 2) + 72))(&v27);
  (*(**(this + 3) + 72))(v25);
  if ((v26 & 0x80u) == 0)
  {
    v4 = v25;
  }

  else
  {
    v4 = v25[0];
  }

  if ((v26 & 0x80u) == 0)
  {
    v5 = v26;
  }

  else
  {
    v5 = v25[1];
  }

  v6 = std::string::append(&v27, v4, v5);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v28.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v28.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  (*(**(this + 4) + 72))(v23);
  if ((v24 & 0x80u) == 0)
  {
    v8 = v23;
  }

  else
  {
    v8 = v23[0];
  }

  if ((v24 & 0x80u) == 0)
  {
    v9 = v24;
  }

  else
  {
    v9 = v23[1];
  }

  v10 = std::string::append(&v28, v8, v9);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v29.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v29.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  (*(**(this + 5) + 72))(v21);
  if ((v22 & 0x80u) == 0)
  {
    v12 = v21;
  }

  else
  {
    v12 = v21[0];
  }

  if ((v22 & 0x80u) == 0)
  {
    v13 = v22;
  }

  else
  {
    v13 = v21[1];
  }

  v14 = std::string::append(&v29, v12, v13);
  v15 = *&v14->__r_.__value_.__l.__data_;
  v30.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v30.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  boost::filesystem::path::path(__p, "\n");
  if ((v20 & 0x80u) == 0)
  {
    v16 = __p;
  }

  else
  {
    v16 = __p[0];
  }

  if ((v20 & 0x80u) == 0)
  {
    v17 = v20;
  }

  else
  {
    v17 = __p[1];
  }

  v18 = std::string::append(&v30, v16, v17);
  *a2 = *v18;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (v22 < 0)
  {
    operator delete(v21[0]);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (v24 < 0)
  {
    operator delete(v23[0]);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (v26 < 0)
  {
    operator delete(v25[0]);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }
}

void sub_12E2E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v45 - 41) < 0)
  {
    operator delete(*(v45 - 64));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v45 - 73) < 0)
  {
    operator delete(*(v45 - 96));
  }

  if (a27 < 0)
  {
    operator delete(a22);
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

uint64_t kaldi::nnet1::GlobalAttentionComponent::SetTrainOptions(uint64_t a1, uint64_t a2)
{
  v3 = a1 + *(*a1 - 24);
  v4 = *(a2 + 8);
  *(v3 + 71) = *(a2 + 23);
  *(v3 + 56) = v4;
  (*(**(a1 + 16) + 264))();
  (*(**(a1 + 24) + 264))();
  (*(**(a1 + 32) + 264))();
  v5 = *(**(a1 + 40) + 264);

  return v5();
}

void kaldi::nnet1::GlobalAttentionComponent::SetSourceStates(uint64_t a1, uint64_t a2, char **a3)
{
  kaldi::nnet1::GlobalAttentionComponent::Check(a1);
  v7 = a3[1] - *a3;
  v8 = *(a2 + 20);
  v9 = v8 / (v7 >> 2);
  if (v9 * (v7 >> 2) != v8)
  {
    kaldi::KaldiAssertFailure_("SetSourceStates", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-global-attention-component.cc", &stru_158.size + 3, "seq_size * num_seq == source.NumRows()", v6);
  }

  if (*(a2 + 16) != *(a1 + 8))
  {
    kaldi::KaldiAssertFailure_("SetSourceStates", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-global-attention-component.cc", &stru_158.size + 4, "source.NumCols() == source_vec_dim_", v6);
  }

  kaldi::CuMatrix<float>::operator=(a1 + 384, a2);
  if ((a1 + 840) != a3)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a1 + 840), *a3, a3[1], (a3[1] - *a3) >> 2);
  }

  v11 = a3[1];
  v13 = (*a3 + 4);
  v12 = **a3;
  *(a1 + 864) = v12;
  while (v13 != v11)
  {
    v14 = *v13;
    if (*v13 > v12)
    {
      *(a1 + 864) = v14;
      v12 = v14;
    }

    ++v13;
  }

  if (v12 >= *(a1 + 12))
  {
    kaldi::KaldiAssertFailure_("SetSourceStates", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-global-attention-component.cc", &stru_158.align + 1, "max_src_length_ < max_attentions_", v10);
  }

  if (v12 >= v9)
  {
    kaldi::KaldiAssertFailure_("SetSourceStates", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-global-attention-component.cc", &stru_158.align + 2, "max_src_length_ + 1 <= seq_size", v10);
  }

  kaldi::nnet1::Component::Propagate(*(a1 + 16), a1 + 384, a1 + 48, 0);
  kaldi::nnet1::Component::Propagate(*(a1 + 32), a1 + 384, a1 + 144, 0);
  __p = 0;
  v16 = 0;
  v17 = 0;
  std::vector<std::vector<int>>::assign((a1 + 816), (v7 >> 2), &__p);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }
}

void sub_12E6E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::vector<int>>::assign(uint64_t *a1, unint64_t a2, char **a3)
{
  v6 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < a2)
  {
    std::vector<std::vector<int>>::__vdeallocate(a1);
    if (a2 <= 0xAAAAAAAAAAAAAAALL)
    {
      v7 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
      if (v7 <= a2)
      {
        v7 = a2;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
      {
        v8 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v8 = v7;
      }

      std::vector<std::vector<int>>::__vallocate[abi:ne200100](a1, v8);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v9 = (a1[1] - v6) >> 3;
  v10 = 0xAAAAAAAAAAAAAAABLL * v9;
  if (0xAAAAAAAAAAAAAAABLL * v9 >= a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = 0xAAAAAAAAAAAAAAABLL * v9;
  }

  for (; v11; --v11)
  {
    if (v6 != a3)
    {
      std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v6, *a3, a3[1], (a3[1] - *a3) >> 2);
    }

    v6 += 3;
  }

  if (a2 <= v10)
  {
    v15 = a1[1];
    v16 = *a1 + 24 * a2;
    if (v15 != v16)
    {
      v17 = a1[1];
      do
      {
        v19 = *(v17 - 24);
        v17 -= 24;
        v18 = v19;
        if (v19)
        {
          *(v15 - 16) = v18;
          operator delete(v18);
        }

        v15 = v17;
      }

      while (v17 != v16);
    }

    a1[1] = v16;
  }

  else
  {
    v12 = a1[1];
    v13 = &v12[3 * (a2 - v10)];
    v14 = 24 * a2 - 24 * v10;
    do
    {
      *v12 = 0;
      v12[1] = 0;
      v12[2] = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v12, *a3, a3[1], (a3[1] - *a3) >> 2);
      v12 += 3;
      v14 -= 24;
    }

    while (v14);
    a1[1] = v13;
  }
}

uint64_t kaldi::nnet1::GlobalAttentionComponent::GetSourceDiffs(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  kaldi::nnet1::GlobalAttentionComponent::Check(a1);
  if (*(a2 + 20) != *(a1 + 404))
  {
    kaldi::KaldiAssertFailure_("GetSourceDiffs", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-global-attention-component.cc", &stru_158.flags + 2, "source.NumRows() == source_states_.NumRows()", v8);
  }

  if (*(a2 + 16) != *(a1 + 400))
  {
    kaldi::KaldiAssertFailure_("GetSourceDiffs", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-global-attention-component.cc", &stru_158.flags + 3, "source.NumCols() == source_states_.NumCols()", v8);
  }

  v9 = *(a3 + 8) - *a3;
  v10 = *(a1 + 840);
  if (v9 != *(a1 + 848) - v10 || memcmp(*a3, v10, v9))
  {
    kaldi::KaldiAssertFailure_("GetSourceDiffs", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-global-attention-component.cc", &stru_158.reserved1, "sequence_length == src_sequence_length_", v8);
  }

  return kaldi::CuMatrix<float>::Swap(a1 + 432, a4);
}

uint64_t kaldi::nnet1::GlobalAttentionComponent::GetCurrentAlignment(uint64_t a1, std::vector<int> *this)
{
  v4 = -1431655765 * ((*(a1 + 824) - *(a1 + 816)) >> 3);
  std::vector<int>::resize(this, v4);
  if (v4 >= 1)
  {
    begin = this->__begin_;
    v6 = v4 & 0x7FFFFFFF;
    v7 = (*(a1 + 816) + 8);
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

uint64_t kaldi::nnet1::GlobalAttentionComponent::GetOverallAlignment(uint64_t a1, uint64_t *a2)
{
  if ((a1 + 816) != a2)
  {
    std::vector<std::vector<int>>::__assign_with_size[abi:ne200100]<std::vector<int>*,std::vector<int>*>(a2, *(a1 + 816), *(a1 + 824), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 824) - *(a1 + 816)) >> 3));
  }

  return 1;
}

uint64_t kaldi::nnet1::GlobalAttentionComponent::SetSourceVectorDimension(uint64_t this, int a2)
{
  if (*(this + 8) != a2)
  {
    *(this + 8) = a2;
    *(this + 868) = 0;
  }

  return this;
}

uint64_t kaldi::nnet1::GlobalAttentionComponent::SetMaxAttentions(uint64_t this, int a2)
{
  if (*(this + 12) != a2)
  {
    *(this + 12) = a2;
    *(this + 868) = 0;
  }

  return this;
}

void kaldi::nnet1::GlobalAttentionComponent::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  kaldi::nnet1::GlobalAttentionComponent::Check(a1);
  if (*(a2 + 16) != *(a1 + *(*a1 - 24) + 8))
  {
    kaldi::KaldiAssertFailure_("PropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-global-attention-component.cc", &stru_1A8.segname[9], "in.NumCols() == input_dim_", v7);
  }

  if (a4)
  {
    kaldi::KaldiAssertFailure_("PropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-global-attention-component.cc", &stru_1A8.segname[11], "batch_idx == 0", v7);
  }

  v8 = *(a1 + 848) - *(a1 + 840);
  v9 = v8 >> 2;
  v10 = *(a2 + 20);
  v72 = v10 / (v8 >> 2);
  if (v72 * (v8 >> 2) != v10)
  {
    kaldi::KaldiAssertFailure_("PropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-global-attention-component.cc", &stru_1A8.addr + 1, "num_seq * tgt_seq_size == in.NumRows()", v7);
  }

  v11 = *(a1 + 404);
  kaldi::nnet1::Component::Propagate(*(a1 + 24), a2, a1 + 96, 0);
  kaldi::nnet1::Component::Propagate(*(a1 + 40), a2, a1 + 192, 0);
  kaldi::CuVector<float>::Resize(a1 + 624, *(a1 + 404), 0, v12, v13);
  v14 = *(a1 + 404);
  v94 = 0;
  v95 = 0;
  v93 = 0;
  kaldi::Vector<float>::Resize(&v93, v14, 1, v15, v16);
  kaldi::Matrix<float>::Matrix(&v89);
  kaldi::CuMatrix<float>::Resize(a1 + 480, v10, (v11 / v9), 1u, 0);
  if (v72 >= 1)
  {
    v73 = 0;
    v17 = (v8 >> 2);
    v69 = "../subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.h";
    v70 = "static_cast<UnsignedMatrixIndexT>(r) < static_cast<UnsignedMatrixIndexT>(num_rows_) && static_cast<UnsignedMatrixIndexT>(c) < static_cast<UnsignedMatrixIndexT>(num_cols_)";
    do
    {
      kaldi::CuMatrix<float>::operator=(a1 + 576, a1 + 48);
      v74 = v73 * v9;
      if (*(a1 + 864) >= 1)
      {
        v21 = 0;
        v22 = 0;
        do
        {
          kaldi::CuSubMatrix<float>::CuSubMatrix(&v86, a1 + 576, v21, v9, 0, *(a1 + 592));
          kaldi::CuSubMatrix<float>::CuSubMatrix(&v83, a1 + 96, v74, v9, 0, *(a1 + 112));
          kaldi::CuMatrixBase<float>::MulElements(&v86, &v83, v23, v24, v25);
          v83 = off_276F40;
          v84 = 0u;
          v85 = 0u;
          fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v83);
          v86 = off_276F40;
          v87 = 0u;
          v88 = 0u;
          fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v86);
          ++v22;
          v21 += v9;
        }

        while (v22 < *(a1 + 864));
      }

      kaldi::CuVectorBase<float>::AddColSumMat(a1 + 624, (a1 + 576), 1.0, 0.0, v18, v19, v20);
      kaldi::CuVectorBase<float>::CopyToVec<float>((a1 + 624), &v93, v26, v27, v28);
      kaldi::Matrix<float>::Resize(&v89, v9, (v11 / v9), 0, 0);
      if (v9 >= 1)
      {
        v30 = 0;
        do
        {
          v31 = *(*(a1 + 840) + 4 * v30);
          if (v31 < 1)
          {
            v33 = -1;
            v34 = -INFINITY;
          }

          else
          {
            v32 = 0;
            v33 = -1;
            v34 = -INFINITY;
            v35 = v30;
            do
            {
              if (v35 >= v94)
              {
                kaldi::KaldiAssertFailure_("operator()", "../subproject/libquasar/libkaldi/src/matrix/kaldi-vector.h", stru_68.sectname, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(dim_)", v29);
              }

              if (v93[v35] > v34)
              {
                v33 = v32;
                v34 = v93[v35];
              }

              ++v32;
              v35 += v17;
            }

            while (v31 != v32);
          }

          v36 = *(a1 + 816) + 24 * v30;
          v38 = *(v36 + 8);
          v37 = *(v36 + 16);
          if (v38 >= v37)
          {
            v40 = *v36;
            v41 = v38 - *v36;
            v42 = v41 >> 2;
            v43 = (v41 >> 2) + 1;
            if (v43 >> 62)
            {
              std::vector<float>::__throw_length_error[abi:ne200100]();
            }

            v44 = v37 - v40;
            if (v44 >> 1 > v43)
            {
              v43 = v44 >> 1;
            }

            v45 = v44 >= 0x7FFFFFFFFFFFFFFCLL;
            v46 = 0x3FFFFFFFFFFFFFFFLL;
            if (!v45)
            {
              v46 = v43;
            }

            if (v46)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(*(a1 + 816) + 24 * v30, v46);
            }

            *(4 * v42) = v33;
            v39 = 4 * v42 + 4;
            memcpy(0, v40, v41);
            v47 = *v36;
            *v36 = 0;
            *(v36 + 8) = v39;
            *(v36 + 16) = 0;
            if (v47)
            {
              operator delete(v47);
            }
          }

          else
          {
            *v38 = v33;
            v39 = (v38 + 1);
          }

          *(v36 + 8) = v39;
          if (v31 >= 1)
          {
            v48 = v94;
            v49 = v93;
            v50 = 0.0;
            v51 = v31;
            v52 = v30;
            do
            {
              if (v52 >= v48)
              {
                kaldi::KaldiAssertFailure_("operator()", "../subproject/libquasar/libkaldi/src/matrix/kaldi-vector.h", stru_68.sectname, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(dim_)", v29);
              }

              v53 = expf(v49[v52] - v34);
              v49[v52] = v53;
              v50 = v50 + v53;
              v52 += v17;
              --v51;
            }

            while (v51);
            v54 = 0;
            v55 = v94;
            v56 = v93;
            v57 = v91;
            v58 = v89 + 4 * v92 * v30;
            v59 = v30;
            while (v59 < v55)
            {
              v60 = &stru_B8 + 21;
              if (v30 >= v57 || v54 >= v90)
              {
                goto LABEL_53;
              }

              *(v58 + 4 * v54++) = (1.0 / v50) * v56[v59];
              v59 += v17;
              if (v31 == v54)
              {
                goto LABEL_39;
              }
            }

            v60 = &stru_68;
            v69 = "../subproject/libquasar/libkaldi/src/matrix/kaldi-vector.h";
            v70 = "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(dim_)";
LABEL_53:
            kaldi::KaldiAssertFailure_("operator()", v69, v60->sectname, v70, v29);
          }

LABEL_39:
          ++v30;
        }

        while (v30 != v17);
      }

      kaldi::CuSubMatrix<float>::CuSubMatrix(&v86, a1 + 480, v74, v9, 0, *(a1 + 496));
      kaldi::CuMatrixBase<float>::CopyFromMat(&v86, &v89, 111, v61, v62);
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v83, a3, v74, v9, 0, *(a3 + 16));
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v80, a1 + 192, v74, v9, 0, *(a1 + 208));
      kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v83, &v80, 111, v63, v64);
      v80 = off_276F40;
      v81 = 0u;
      v82 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v80);
      if (v9 >= 1)
      {
        v66 = 0;
        do
        {
          if (v66 >= HIDWORD(v84))
          {
            kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.addr + 1, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v65);
          }

          v67 = *(*(a1 + 840) + 4 * v66);
          v79[1] = v84 + 4 * v85 * v66;
          v79[0] = &off_276FE0;
          v79[2] = DWORD2(v84);
          v79[3] = *(&v85 + 1);
          kaldi::CuSubMatrix<float>::CuSubMatrix(&v80, a1 + 144, v66, v67 * v9, 0, *(a1 + 160));
          if (v9 != 1)
          {
            kaldi::CuMatrixBase<float>::SetStride(&v80, *(a1 + 168) * v9);
          }

          if (v66 >= HIDWORD(v87))
          {
            kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.addr + 1, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v68);
          }

          v77 = 0;
          v78 = 0;
          v76 = 0;
          v75 = &off_276FE0;
          if (v67 > DWORD2(v87))
          {
            kaldi::KaldiAssertFailure_("CuSubVector", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-vector.h", &stru_1A8.size + 4, "static_cast<UnsignedMatrixIndexT>(origin)+ static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v68);
          }

          v76 = v87 + 4 * v88 * v66;
          LODWORD(v77) = v67;
          v78 = *(&v88 + 1);
          kaldi::CuVectorBase<float>::AddMatVec(v79, &v80, CblasTrans, &v75, v68, 1.0, 1.0);
          v80 = off_276F40;
          v81 = 0u;
          v82 = 0u;
          fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v80);
          ++v66;
        }

        while (v17 != v66);
      }

      v83 = off_276F40;
      v84 = 0u;
      v85 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v83);
      v86 = off_276F40;
      v87 = 0u;
      v88 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v86);
      ++v73;
    }

    while (v73 != v72);
  }

  kaldi::Matrix<float>::~Matrix(&v89);
  kaldi::Vector<float>::Destroy(&v93);
}

void sub_12F320(_Unwind_Exception *a1)
{
  kaldi::Matrix<float>::~Matrix(v1 - 184);
  kaldi::Vector<float>::Destroy(v1 - 144);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::GlobalAttentionComponent::BackpropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  kaldi::nnet1::GlobalAttentionComponent::Check(a1);
  if (*(a2 + 16) != *(a1 + *(*a1 - 24) + 8))
  {
    kaldi::KaldiAssertFailure_("BackpropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-global-attention-component.cc", &stru_1F8.segname[6], "in.NumCols() == input_dim_", v11);
  }

  if (a6)
  {
    kaldi::KaldiAssertFailure_("BackpropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-global-attention-component.cc", &stru_1F8.segname[7], "batch_idx == 0", v11);
  }

  v54 = a5;
  v12 = *(a1 + 848) - *(a1 + 840);
  v13 = v12 >> 2;
  v14 = *(a2 + 20);
  v15 = (v14 / (v12 >> 2));
  if (v15 * (v12 >> 2) != v14)
  {
    kaldi::KaldiAssertFailure_("BackpropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-global-attention-component.cc", &stru_1F8.segname[10], "num_seq * tgt_seq_size == in.NumRows()", v11);
  }

  kaldi::CuMatrix<float>::Resize(a1 + 240, *(a1 + 404), *(*(a1 + 16) + 12), 0, 0);
  v53 = a2;
  kaldi::CuMatrix<float>::Resize(a1 + 288, *(a2 + 20), *(*(a1 + 24) + 12), 0, 0);
  kaldi::CuMatrix<float>::Resize(a1 + 336, *(a1 + 404), *(*(a1 + 32) + 12), 0, 0);
  if (v15 >= 1)
  {
    v57 = 0;
    v18 = 0;
    v19 = (v12 >> 2);
    v55 = v15;
    do
    {
      v56 = v18;
      if (v13 >= 1)
      {
        v20 = 0;
        v21 = v57;
        do
        {
          v22 = *(*(a1 + 840) + 4 * v20);
          kaldi::CuVector<float>::Resize(a1 + 704, v22, 1u, v16, v17);
          kaldi::CuSubMatrix<float>::CuSubMatrix(&v66, a1 + 144, v20, v22 * v13, 0, *(a1 + 160));
          if (v13 != 1)
          {
            kaldi::CuMatrixBase<float>::SetStride(&v66, *(a1 + 168) * v13);
          }

          if (v21 >= *(a4 + 20))
          {
            kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.segname[11], "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v23);
          }

          v24 = *(a4 + 16);
          v25 = *(a4 + 32);
          v63 = *(a4 + 8) + 4 * *(a4 + 24) * v21;
          v62 = &off_276FE0;
          v64 = v24;
          v65 = v25;
          kaldi::CuVectorBase<float>::AddMatVec(a1 + 704, &v66, CblasNoTrans, &v62, v23, 1.0, 0.0);
          v66 = off_276F40;
          v67 = 0u;
          v68 = 0u;
          fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v66);
          if (v21 >= *(a1 + 500))
          {
            kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.addr + 1, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v26);
          }

          v27 = *(a1 + 488) + 4 * *(a1 + 504) * v21;
          v28 = *(a1 + 496);
          v29 = *(a1 + 512);
          *&v67 = v27;
          v66 = &off_276FE0;
          *(&v67 + 1) = v28;
          *&v68 = v29;
          v64 = 0;
          v65 = 0;
          v63 = 0;
          v62 = &off_276FE0;
          if (v22 > v28)
          {
            kaldi::KaldiAssertFailure_("CuSubVector", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-vector.h", &stru_1A8.size + 4, "static_cast<UnsignedMatrixIndexT>(origin)+ static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v26);
          }

          v63 = v27;
          LODWORD(v64) = v22;
          v65 = v29;
          kaldi::CuMatrix<float>::Resize(a1 + 656, v22, v22, 0, 0);
          kaldi::CuMatrixBase<float>::AddToDiag(a1 + 656, &v62, v30, v31, v32, 1.0, 0.0);
          kaldi::CuMatrixBase<float>::AddVecVec(a1 + 656, &v62, &v62, v33, v34, -1.0, 1.0);
          kaldi::CuVector<float>::Resize(a1 + 736, v22, 1u, v35, v36);
          kaldi::CuVectorBase<float>::AddMatVec(a1 + 736, (a1 + 656), CblasNoTrans, a1 + 704, v37, 1.0, 0.0);
          kaldi::CuSubMatrix<float>::CuSubMatrix(&v66, a1 + 240, v20, v22 * v13, 0, *(a1 + 256));
          if (v13 != 1)
          {
            kaldi::CuMatrixBase<float>::SetStride(&v66, *(a1 + 264) * v13);
          }

          if (v21 >= *(a1 + 116))
          {
            kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.addr + 1, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v39);
          }

          v40 = *(a1 + 112);
          v41 = *(a1 + 128);
          v59 = *(a1 + 104) + 4 * *(a1 + 120) * v21;
          v58 = &off_276FE0;
          v60 = v40;
          v61 = v41;
          kaldi::CuMatrixBase<float>::AddVecVec(&v66, a1 + 736, &v58, v38, v39, 1.0, 1.0);
          v66 = off_276F40;
          v67 = 0u;
          v68 = 0u;
          fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v66);
          kaldi::CuSubMatrix<float>::CuSubMatrix(&v66, a1 + 336, v20, v22 * v13, 0, *(a1 + 352));
          if (v13 != 1)
          {
            kaldi::CuMatrixBase<float>::SetStride(&v66, *(a1 + 360) * v13);
          }

          if (v21 >= *(a4 + 20))
          {
            kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.segname[11], "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v43);
          }

          v44 = *(a4 + 16);
          v45 = *(a4 + 32);
          v59 = *(a4 + 8) + 4 * *(a4 + 24) * v21;
          v58 = &off_276FE0;
          v60 = v44;
          v61 = v45;
          kaldi::CuMatrixBase<float>::AddVecVec(&v66, &v62, &v58, v42, v43, 1.0, 1.0);
          v66 = off_276F40;
          v67 = 0u;
          v68 = 0u;
          fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v66);
          kaldi::CuMatrix<float>::Resize(a1 + 768, v22, *(*(a1 + 24) + 12), 0, 0);
          kaldi::CuSubMatrix<float>::CuSubMatrix(&v66, a1 + 48, v20, v22 * v13, 0, *(a1 + 64));
          if (v13 != 1)
          {
            kaldi::CuMatrixBase<float>::SetStride(&v66, *(a1 + 72) * v13);
          }

          kaldi::CuMatrixBase<float>::AddMatMat(a1 + 768, a1 + 656, CblasNoTrans, &v66, &stru_68.sectname[7], 1.0, 0.0);
          v66 = off_276F40;
          v67 = 0u;
          v68 = 0u;
          fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v66);
          if (v21 >= *(a1 + 308))
          {
            kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.addr + 1, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v46);
          }

          v47 = *(a1 + 304);
          v48 = *(a1 + 320);
          *&v67 = *(a1 + 296) + 4 * *(a1 + 312) * v21;
          v66 = &off_276FE0;
          *(&v67 + 1) = v47;
          *&v68 = v48;
          kaldi::CuVectorBase<float>::AddMatVec(&v66, (a1 + 768), CblasTrans, a1 + 704, v46, 1.0, 1.0);
          ++v20;
          ++v21;
        }

        while (v19 != v20);
      }

      v18 = v56 + 1;
      v57 += v19;
    }

    while (v56 + 1 != v55);
  }

  kaldi::CuMatrix<float>::Resize(a1 + 528, *(v53 + 20), *(*(a1 + 40) + 8), 0, 0);
  (*(**(a1 + 40) + 128))(*(a1 + 40), v53, a1 + 192, a4, a1 + 528, 0);
  (*(**(a1 + 24) + 128))(*(a1 + 24), v53, a1 + 96, a1 + 288, v54, 0);
  kaldi::CuMatrixBase<float>::AddMat(v54, a1 + 528, 111, v49, v50, 1.0, 1.0);
  kaldi::CuMatrix<float>::Resize(a1 + 528, *(a1 + 404), *(*(a1 + 32) + 8), 0, 0);
  kaldi::CuMatrix<float>::Resize(a1 + 432, *(a1 + 404), *(*(a1 + 32) + 8), 0, 0);
  (*(**(a1 + 32) + 128))(*(a1 + 32), a1 + 384, a1 + 144, a1 + 336, a1 + 528, 0);
  (*(**(a1 + 16) + 128))(*(a1 + 16), a1 + 384, a1 + 48, a1 + 240, a1 + 432, 0);
  kaldi::CuMatrixBase<float>::AddMat(a1 + 432, a1 + 528, 111, v51, v52, 1.0, 1.0);
}

void sub_12FCFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void (**a22)())
{
  a22 = off_276F40;
  *(v22 + 8) = 0u;
  *(v22 + 24) = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&a22);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::GlobalAttentionComponent::SetGradientNormalization(void **a1, uint64_t a2, float a3)
{
  (*(*a1[2] + 240))(a1[2]);
  (*(*a1[3] + 240))(a1[3], a2, a3);
  (*(*a1[4] + 240))(a1[4], a2, a3);
  v6 = *(*a1[5] + 240);
  v7.n128_f32[0] = a3;

  return v6(v7);
}

uint64_t kaldi::nnet1::GlobalAttentionComponent::AccumGradients(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  kaldi::nnet1::GlobalAttentionComponent::Check(a1);
  if (*(a2 + 16) != *(a1 + *(*a1 - 24) + 8))
  {
    kaldi::KaldiAssertFailure_("AccumGradients", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-global-attention-component.cc", &stru_248.sectname[14], "input.NumCols() == input_dim_", v9);
  }

  (*(**(a1 + 16) + 232))(*(a1 + 16), a1 + 384, a1 + 240, a4, a5);
  (*(**(a1 + 24) + 232))(*(a1 + 24), a2, a1 + 288, a4, a5);
  (*(**(a1 + 32) + 232))(*(a1 + 32), a1 + 384, a1 + 336, a4, a5);
  v10 = *(**(a1 + 40) + 232);

  return v10();
}

uint64_t kaldi::nnet1::GlobalAttentionComponent::UpdateWeights(kaldi::nnet1::GlobalAttentionComponent *this, void *a2, uint64_t a3)
{
  kaldi::nnet1::GlobalAttentionComponent::Check(this);
  (*(**(this + 2) + 256))(*(this + 2), a2, a3);
  (*(**(this + 3) + 256))();
  (*(**(this + 4) + 256))();
  v6 = *(**(this + 5) + 256);

  return v6();
}

void kaldi::nnet1::GlobalAttentionComponent::GetGradient(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v8 = (*(*a1 + 112))(a1);
  kaldi::Vector<float>::Resize(a4, v8, 1, v9, v10);
  v11 = (*(*a1 + 64))(a1);
  if (v11)
  {
    v12 = **v11;
  }

  else
  {
    v13 = 0;
  }

  kaldi::CuMatrix<float>::CuMatrix(v39, *(a2 + 20), *(a3 + 16), 0, 0, 0);
  v36 = 0u;
  v37 = 0u;
  v35 = off_276F88;
  v38 = 0;
  kaldi::nnet1::Component::Backpropagate((v13 + *(*v13 - 3)), a2, v39, a3, &v35, 0);
  (*(*v13[2] + 224))(v13[2], a1 + 384, v13 + 30, &v40);
  v33 = 0;
  v34 = 0;
  if (v41 > *(a4 + 8))
  {
    kaldi::KaldiAssertFailure_("SubVector", "../subproject/libquasar/libkaldi/src/matrix/kaldi-vector.h", &stru_1F8.size + 6, "static_cast<UnsignedMatrixIndexT>(origin)+ static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v16);
  }

  v32 = *a4;
  LODWORD(v33) = v41;
  kaldi::VectorBase<float>::CopyFromVec(&v32, &v40, v14, v15, v16);
  v17 = v41;
  (*(*v13[3] + 224))(v13[3], a2, v13 + 36, &v40);
  v33 = 0;
  v34 = 0;
  if ((v41 + v17) > *(a4 + 8))
  {
    kaldi::KaldiAssertFailure_("SubVector", "../subproject/libquasar/libkaldi/src/matrix/kaldi-vector.h", &stru_1F8.size + 6, "static_cast<UnsignedMatrixIndexT>(origin)+ static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v20);
  }

  v32 = (*a4 + 4 * v17);
  LODWORD(v33) = v41;
  kaldi::VectorBase<float>::CopyFromVec(&v32, &v40, v18, v19, v20);
  v21 = v41;
  (*(*v13[4] + 224))(v13[4], a1 + 384, v13 + 42, &v40);
  v25 = v21 + v17;
  v33 = 0;
  v34 = 0;
  if ((v41 + v21 + v17) > *(a4 + 8))
  {
    kaldi::KaldiAssertFailure_("SubVector", "../subproject/libquasar/libkaldi/src/matrix/kaldi-vector.h", &stru_1F8.size + 6, "static_cast<UnsignedMatrixIndexT>(origin)+ static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v24);
  }

  v32 = (*a4 + 4 * v25);
  LODWORD(v33) = v41;
  kaldi::VectorBase<float>::CopyFromVec(&v32, &v40, v22, v23, v24);
  v26 = v41;
  (*(*v13[5] + 224))(v13[5], a2, a3, &v40);
  v30 = v26 + v25;
  v33 = 0;
  v34 = 0;
  if ((v41 + v26 + v25) > *(a4 + 8))
  {
    kaldi::KaldiAssertFailure_("SubVector", "../subproject/libquasar/libkaldi/src/matrix/kaldi-vector.h", &stru_1F8.size + 6, "static_cast<UnsignedMatrixIndexT>(origin)+ static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v29);
  }

  v32 = (*a4 + 4 * v30);
  LODWORD(v33) = v41;
  kaldi::VectorBase<float>::CopyFromVec(&v32, &v40, v27, v28, v29);
  if (v41 + v30 != *(a4 + 8))
  {
    kaldi::KaldiAssertFailure_("GetGradient", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-global-attention-component.cc", &stru_248.align, "shift == gradient_out->Dim()", v31);
  }

  ((*v13)[1])(v13);
  kaldi::CuMatrix<float>::~CuMatrix(&v35);
  kaldi::CuMatrix<float>::~CuMatrix(v39);
  kaldi::Vector<float>::Destroy(&v40);
}

void sub_1305E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  kaldi::CuMatrix<float>::~CuMatrix(va);
  kaldi::CuMatrix<float>::~CuMatrix(va1);
  kaldi::Vector<float>::Destroy(v4 - 88);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::Component::Backpropagate(_DWORD *lpsrc, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (lpsrc[3] != *(a4 + 16))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v27, "Backpropagate", "../subproject/libquasar/libkaldi/src/nnet/nnet-component.h", 712);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "Non-matching output dims, component:", 36);
    v24 = lpsrc[3];
    v25 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, " data:", 6);
    v26 = *(a4 + 16);
    std::ostream::operator<<();
    goto LABEL_22;
  }

  if (*(lpsrc + 17) == 1)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v27, "Backpropagate", "../subproject/libquasar/libkaldi/src/nnet/nnet-component.h", 716);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v27, "Backpropagate() attempted while disabled");
LABEL_22:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v27);
  }

  if (a5)
  {
    kaldi::CuMatrix<float>::Resize(a5, *(a2 + 20), lpsrc[2], 0, 0);
    if (*(a4 + 20) != *(a3 + 20) || (*(*lpsrc + 56))(lpsrc, *(a2 + 20)) != *(a3 + 20))
    {
      kaldi::KaldiAssertFailure_("Backpropagate", "../subproject/libquasar/libkaldi/src/nnet/nnet-component.h", &stru_298.reserved1 + 2, "out_diff.NumRows() == out.NumRows() && OutputRowCount(in.NumRows()) == out.NumRows()", v12);
    }

    if (*(a2 + 16) != *(a5 + 16))
    {
      kaldi::KaldiAssertFailure_("Backpropagate", "../subproject/libquasar/libkaldi/src/nnet/nnet-component.h", &stru_298.reserved1 + 3, "in.NumCols() == in_diff->NumCols()", v12);
    }

    if (*(a3 + 16) != *(a4 + 16))
    {
      kaldi::KaldiAssertFailure_("Backpropagate", "../subproject/libquasar/libkaldi/src/nnet/nnet-component.h", &stru_298.reserved2, "out.NumCols() == out_diff.NumCols()", v12);
    }

    v13 = *(*lpsrc + 128);
    v14 = lpsrc;
    v15 = a2;
    v16 = a3;
    v17 = a4;
    v18 = a5;
    goto LABEL_15;
  }

  v19 = *lpsrc;
  v20 = **lpsrc;
  if ((*(v19 + 24))(lpsrc) == 2055 || ((result = (*(*lpsrc + 24))(lpsrc), result != 2049) ? (v23 = v21 == 0) : (v23 = 0), !v23))
  {
    v13 = *(*lpsrc + 128);
    v14 = lpsrc;
    v15 = a2;
    v16 = a3;
    v17 = a4;
    v18 = 0;
LABEL_15:

    return v13(v14, v15, v16, v17, v18, a6);
  }

  return result;
}

kaldi::nnet1::ScaledDotAttention *kaldi::nnet1::ScaledDotAttention::ScaledDotAttention(kaldi::nnet1::ScaledDotAttention *this, const kaldi::nnet1::ScaledDotAttention *a2, uint64_t a3)
{
  v6 = a3 + *(*a3 - 40);
  v7 = *(v6 + 8);
  v8 = *(v6 + 12);
  v9 = kaldi::nnet1::AttentionBaseInferenceComponent::AttentionBaseInferenceComponent(this, a2 + 1);
  v10 = *a2;
  *v9 = *a2;
  *(this + *(v10 - 40)) = *(a2 + 5);
  *(this + *(*this - 48)) = *(a2 + 6);
  *(this + *(*this - 56)) = *(a2 + 7);
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 1) = off_276F88;
  *(this + 48) = 0;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  LOBYTE(v10) = *(a3 + 104);
  v11 = *(a3 + 108);
  *(this + 7) = 0u;
  v12 = (this + 112);
  *(this + 7) = off_276F88;
  *(this + 96) = 0;
  *(this + 104) = v10;
  *(this + 27) = v11;
  *(this + 8) = 0u;
  v13 = *(a3 + 112);
  if (v13)
  {
    v14 = (*(*v13 + 16))(v13);
    v15 = *v12;
    *v12 = v14;
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }
  }

  v16 = *(a3 + 120);
  if (v16)
  {
    v17 = (*(*v16 + 16))(v16);
    v18 = *(this + 15);
    *(this + 15) = v17;
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }
  }

  v19 = *(a3 + 128);
  if (v19)
  {
    v20 = (*(*v19 + 16))(v19);
    v21 = *(this + 16);
    *(this + 16) = v20;
    if (v21)
    {
      (*(*v21 + 8))(v21);
    }
  }

  v22 = *(a3 + 136);
  if (v22)
  {
    v23 = (*(*v22 + 16))(v22);
    v24 = *(this + 17);
    *(this + 17) = v23;
    if (v24)
    {
      (*(*v24 + 8))(v24);
    }
  }

  return this;
}

void sub_130CE4(_Unwind_Exception *a1)
{
  v6 = v1[17];
  v1[17] = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = v1[16];
  v1[16] = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = v1[15];
  v1[15] = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *v4;
  *v4 = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  kaldi::CuMatrix<float>::~CuMatrix(v3);
  kaldi::CuMatrix<float>::~CuMatrix(v2);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v1);
  _Unwind_Resume(a1);
}

kaldi::nnet1::ScaledDotAttention *kaldi::nnet1::ScaledDotAttention::ScaledDotAttention(kaldi::nnet1::ScaledDotAttention *this, const kaldi::nnet1::ScaledDotAttention *a2)
{
  v4 = a2 + *(*a2 - 40);
  *(this + 18) = off_279038;
  *(this + 19) = *(v4 + 1);
  *(this + 80) = 0;
  *(this + 22) = 0;
  *(this + 23) = 0;
  *(this + 21) = 0;
  *this = off_27B348;
  *(this + 24) = off_27B370;
  v5 = a2 + *(*a2 - 40);
  v6 = *(v5 + 2);
  v7 = *(v5 + 3);
  v8 = kaldi::nnet1::AttentionBaseInferenceComponent::AttentionBaseInferenceComponent(this, off_27DA70);
  v8[18] = off_27D980;
  v8[24] = off_27DA50;
  *(v8 + 1) = 0u;
  *(v8 + 2) = 0u;
  *v8 = off_27D850;
  v8[1] = off_276F88;
  *(v8 + 48) = 0;
  *(v8 + 4) = 0u;
  *(v8 + 5) = 0u;
  v8[7] = off_276F88;
  *(v8 + 96) = 0;
  v9 = *(a2 + 104);
  v10 = *(a2 + 27);
  *(v8 + 7) = 0u;
  v11 = v8 + 14;
  *(v8 + 104) = v9;
  *(v8 + 27) = v10;
  *(v8 + 8) = 0u;
  v12 = *(a2 + 14);
  if (v12)
  {
    v13 = (*(*v12 + 16))(v12);
    v14 = *v11;
    *v11 = v13;
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }
  }

  v15 = *(a2 + 15);
  if (v15)
  {
    v16 = (*(*v15 + 16))(v15);
    v17 = *(this + 15);
    *(this + 15) = v16;
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }
  }

  v18 = *(a2 + 16);
  if (v18)
  {
    v19 = (*(*v18 + 16))(v18);
    v20 = *(this + 16);
    *(this + 16) = v19;
    if (v20)
    {
      (*(*v20 + 8))(v20);
    }
  }

  v21 = *(a2 + 17);
  if (v21)
  {
    v22 = (*(*v21 + 16))(v21);
    v23 = *(this + 17);
    *(this + 17) = v22;
    if (v23)
    {
      (*(*v23 + 8))(v23);
    }
  }

  return this;
}

void sub_13110C(_Unwind_Exception *a1)
{
  v8 = v1[17];
  v1[17] = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = v1[16];
  v1[16] = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = v1[15];
  v1[15] = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = *v6;
  *v6 = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  kaldi::CuMatrix<float>::~CuMatrix(v5);
  kaldi::CuMatrix<float>::~CuMatrix(v4);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v1);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v3);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v1);
  kaldi::nnet1::Component::~Component(v2);
  _Unwind_Resume(a1);
}

double kaldi::nnet1::ScaledDotAttention::ScaledDotAttention(kaldi::nnet1::ScaledDotAttention *this, int a2, int a3, char a4, float a5)
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
  v7 = kaldi::nnet1::AttentionBaseInferenceComponent::AttentionBaseInferenceComponent(this, off_27DA70);
  v7[18] = off_27D980;
  *v7 = off_27D850;
  v7[24] = off_27DA50;
  result = 0.0;
  *(v7 + 1) = 0u;
  *(v7 + 2) = 0u;
  v7[1] = off_276F88;
  *(v7 + 48) = 0;
  *(v7 + 4) = 0u;
  *(v7 + 5) = 0u;
  v7[7] = off_276F88;
  *(v7 + 96) = 0;
  *(v7 + 104) = a4;
  *(v7 + 27) = a5;
  *(v7 + 7) = 0u;
  *(v7 + 8) = 0u;
  return result;
}

void kaldi::nnet1::ScaledDotAttention::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(a2 + 16) != *(a1 + *(*a1 - 40) + 8))
  {
    kaldi::KaldiAssertFailure_("PropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-attention-component.cc", &stru_20.segname[8], "in.NumCols() == InputDim()", a5);
  }

  (*(*a1 + 96))();
  if (*(a1 + 136))
  {
    v11 = kaldi::CuMatrix<float>::CuMatrix(v12, a3, 111);
    (*(**(a1 + 136) + 112))(*(a1 + 136), v12, a3, a4, v11);
    kaldi::CuMatrix<float>::~CuMatrix(v12);
  }

  if (*(a1 + 104) == 1)
  {
    kaldi::CuMatrixBase<float>::AddMat(a3, a2, 111, v9, v10, 1.0, 1.0);
  }
}

unsigned int *kaldi::nnet1::ScaledDotAttention::SetKeyValueStates(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 20);
  if (v6 != *(a3 + 20))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v39, "SetKeyValueStates", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-attention-component.cc", 65);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, "Mismatch in number of key and value pairs in ScaledDotAttention, got ", 69);
    v21 = *(a2 + 20);
    v22 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, " keys and ", 10);
    v23 = *(a3 + 20);
    v24 = std::ostream::operator<<();
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v24, " values");
    goto LABEL_27;
  }

  v9 = *(a1 + 120);
  v10 = *(a2 + 16);
  if (v9)
  {
    if (v10 != *(v9 + 8))
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v39, "SetKeyValueStates", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-attention-component.cc", 79);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, "Mismatch of key matrix input in ScaledDotAttention, expected ", 61);
      v25 = *(*(a1 + 120) + 8);
      v26 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, ", but got ", 10);
      v27 = *(a2 + 16);
      std::ostream::operator<<();
      goto LABEL_27;
    }

    kaldi::CuMatrix<float>::Resize(a1 + 8, v6, *(v9 + 12), 0, 0);
    (*(**(a1 + 120) + 112))(*(a1 + 120), a2, a1 + 8, a4);
  }

  else
  {
    if (v10 != *(*(a1 + 112) + 12))
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v39, "SetKeyValueStates", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-attention-component.cc", 71);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, "Mismatch of key matrix input in ScaledDotAttention, expected ", 61);
      v31 = *(*(a1 + 112) + 12);
      v32 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, ", but got ", 10);
      v33 = *(a2 + 16);
      std::ostream::operator<<();
      goto LABEL_27;
    }

    kaldi::CuMatrix<float>::Resize(a1 + 8, v6, v10, 0, 0);
    kaldi::CuMatrixBase<float>::CopyFromMat<float>((a1 + 8), a2, 111, v11, v12);
  }

  v13 = *(a1 + 128);
  if (v13)
  {
    if (*(a3 + 16) == *(v13 + 8))
    {
      kaldi::CuMatrix<float>::Resize(a1 + 56, *(a3 + 20), *(v13 + 12), 0, 0);
      v14 = *(**(a1 + 128) + 112);

      return v14();
    }

    kaldi::KaldiErrorMessage::KaldiErrorMessage(v39, "SetKeyValueStates", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-attention-component.cc", 98);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, "Mismatch of value matrix input in ScaledDotAttention, expected ", 63);
    v28 = *(*(a1 + 128) + 8);
    v29 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, ", but got ", 10);
    v30 = *(a3 + 16);
    std::ostream::operator<<();
LABEL_27:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v39);
  }

  v16 = *(a1 + 136);
  v17 = *(a3 + 16);
  if (v16)
  {
    v18 = *(v16 + 8);
  }

  else
  {
    v18 = *(a1 + *(*a1 - 40) + 12);
  }

  if (v17 != v18)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v39, "SetKeyValueStates", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-attention-component.cc", 90);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, "Mismatch of value matrix input in ScaledDotAttention, expected ", 63);
    v34 = *(a1 + 136);
    if (v34)
    {
      v35 = (v34 + 8);
    }

    else
    {
      v35 = (a1 + *(*a1 - 40) + 12);
    }

    v36 = *v35;
    v37 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, ", but got ", 10);
    v38 = *(a3 + 16);
    std::ostream::operator<<();
    goto LABEL_27;
  }

  kaldi::CuMatrix<float>::Resize(a1 + 56, *(a3 + 20), v17, 0, 0);

  return kaldi::CuMatrixBase<float>::CopyFromMat<float>((a1 + 56), a3, 111, v19, v20);
}

uint64_t kaldi::nnet1::ScaledDotAttention::ClearKeyValueStates(kaldi::nnet1::ScaledDotAttention *this)
{
  v9 = 0u;
  v8 = 0u;
  v7 = off_276F88;
  v10 = 0;
  v5 = 0u;
  v4 = 0u;
  v3 = off_276F88;
  v6 = 0;
  kaldi::CuMatrix<float>::Swap(this + 8, &v7);
  kaldi::CuMatrix<float>::Swap(this + 56, &v3);
  kaldi::CuMatrix<float>::~CuMatrix(&v3);
  return kaldi::CuMatrix<float>::~CuMatrix(&v7);
}

void sub_131A40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  kaldi::CuMatrix<float>::~CuMatrix(&a9);
  kaldi::CuMatrix<float>::~CuMatrix(&a15);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::ScaledDotAttention::ComputeAttention(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*(a1 + 112) + 12);
  if (v5 != *(a1 + 24))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v10, "ComputeAttention", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-attention-component.cc", 117);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v10, "SetKeyValueStores needs to be called in ScaledDotAttention for attention to work");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v10);
  }

  kaldi::CuMatrix<float>::CuMatrix(v10, *(a2 + 20), v5, 0, 0, 0);
  (*(**(a1 + 112) + 112))(*(a1 + 112), a2, v10, a4);
  kaldi::nnet1::ScaledDotAttention::ComputeScaledDotAttention(a1, v10, a1 + 8, a1 + 56, a3, 0);
  return kaldi::CuMatrix<float>::~CuMatrix(v10);
}

uint64_t kaldi::nnet1::ScaledDotAttention::ComputeScaledDotAttention(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  kaldi::CuMatrix<float>::CuMatrix(v19, *(a2 + 20), *(a3 + 20), 0, 0, 0);
  kaldi::CuMatrixBase<float>::AddMatMat(v19, a2, CblasNoTrans, a3, &stru_68.sectname[8], 1.0, 0.0);
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

  kaldi::CuMatrixBase<float>::AddMatMat(a5, v19, CblasNoTrans, a4, &stru_68.sectname[7], 1.0, 0.0);
  return kaldi::CuMatrix<float>::~CuMatrix(v19);
}

char *kaldi::nnet1::ScaledDotAttention::CopyQuantized<kaldi::nnet1::Quantizable8BitComponentItf>(char ***a1)
{
  v2 = ((*a1)[11])(a1, 1);
  {
    kaldi::KaldiAssertFailure_("CopyQuantized", "../subproject/libquasar/libkaldi/src/nnet/nnet-attention-component.h", &stru_68.segname[1], "quantized_attention", v3);
  }

  v6 = v5;
  kaldi::nnet1::ScaledDotAttention::CopyOrQuantize<kaldi::nnet1::Quantizable8BitComponentItf>(a1 + 14, &v20);
  v7 = v20;
  v20 = 0;
  v8 = v6[14];
  v6[14] = v7;
  if (v8)
  {
    (*(*v8 + 8))(v8);
    v9 = v20;
    v20 = 0;
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }
  }

  kaldi::nnet1::ScaledDotAttention::CopyOrQuantize<kaldi::nnet1::Quantizable8BitComponentItf>(a1 + 15, &v20);
  v10 = v20;
  v20 = 0;
  v11 = v6[15];
  v6[15] = v10;
  if (v11)
  {
    (*(*v11 + 8))(v11);
    v12 = v20;
    v20 = 0;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }
  }

  kaldi::nnet1::ScaledDotAttention::CopyOrQuantize<kaldi::nnet1::Quantizable8BitComponentItf>(a1 + 16, &v20);
  v13 = v20;
  v20 = 0;
  v14 = v6[16];
  v6[16] = v13;
  if (v14)
  {
    (*(*v14 + 8))(v14);
    v15 = v20;
    v20 = 0;
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }
  }

  kaldi::nnet1::ScaledDotAttention::CopyOrQuantize<kaldi::nnet1::Quantizable8BitComponentItf>(a1 + 17, &v20);
  v16 = v20;
  v20 = 0;
  v17 = v6[17];
  v6[17] = v16;
  if (v17)
  {
    (*(*v17 + 8))(v17);
    v18 = v20;
    v20 = 0;
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }
  }

  return v6 + *(*v6 - 40);
}

char *kaldi::nnet1::ScaledDotAttention::CopyQuantized<kaldi::nnet1::Quantizable16BitComponentItf>(char ***a1)
{
  v2 = ((*a1)[11])(a1, 1);
  {
    kaldi::KaldiAssertFailure_("CopyQuantized", "../subproject/libquasar/libkaldi/src/nnet/nnet-attention-component.h", &stru_68.segname[1], "quantized_attention", v3);
  }

  v6 = v5;
  kaldi::nnet1::ScaledDotAttention::CopyOrQuantize<kaldi::nnet1::Quantizable16BitComponentItf>(a1 + 14, &v20);
  v7 = v20;
  v20 = 0;
  v8 = v6[14];
  v6[14] = v7;
  if (v8)
  {
    (*(*v8 + 8))(v8);
    v9 = v20;
    v20 = 0;
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }
  }

  kaldi::nnet1::ScaledDotAttention::CopyOrQuantize<kaldi::nnet1::Quantizable16BitComponentItf>(a1 + 15, &v20);
  v10 = v20;
  v20 = 0;
  v11 = v6[15];
  v6[15] = v10;
  if (v11)
  {
    (*(*v11 + 8))(v11);
    v12 = v20;
    v20 = 0;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }
  }

  kaldi::nnet1::ScaledDotAttention::CopyOrQuantize<kaldi::nnet1::Quantizable16BitComponentItf>(a1 + 16, &v20);
  v13 = v20;
  v20 = 0;
  v14 = v6[16];
  v6[16] = v13;
  if (v14)
  {
    (*(*v14 + 8))(v14);
    v15 = v20;
    v20 = 0;
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }
  }

  kaldi::nnet1::ScaledDotAttention::CopyOrQuantize<kaldi::nnet1::Quantizable16BitComponentItf>(a1 + 17, &v20);
  v16 = v20;
  v20 = 0;
  v17 = v6[17];
  v6[17] = v16;
  if (v17)
  {
    (*(*v17 + 8))(v17);
    v18 = v20;
    v20 = 0;
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }
  }

  return v6 + *(*v6 - 40);
}

uint64_t kaldi::nnet1::ScaledDotAttention::Info(kaldi::nnet1::ScaledDotAttention *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v20);
  kaldi::WriteToken(&v20, 0, "<AddQuery>", v2, v3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, " ", 1);
  v4 = *(this + 104);
  v5 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, " ", 1);
  if (*(this + 14))
  {
    kaldi::WriteToken(&v20, 0, "<QueryTransform>", v6, v7);
    (*(**(this + 14) + 64))(&__p);
    v8 = (v19 & 0x80u) == 0 ? &__p : __p;
    v9 = (v19 & 0x80u) == 0 ? v19 : v18;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, v8, v9);
    if (v19 < 0)
    {
      operator delete(__p);
    }
  }

  if (*(this + 15))
  {
    kaldi::WriteToken(&v20, 0, "<KeyTransform>", v6, v7);
    (*(**(this + 15) + 64))(&__p);
    v10 = (v19 & 0x80u) == 0 ? &__p : __p;
    v11 = (v19 & 0x80u) == 0 ? v19 : v18;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, v10, v11);
    if (v19 < 0)
    {
      operator delete(__p);
    }
  }

  if (*(this + 16))
  {
    kaldi::WriteToken(&v20, 0, "<ValueTransform>", v6, v7);
    (*(**(this + 16) + 64))(&__p);
    v12 = (v19 & 0x80u) == 0 ? &__p : __p;
    v13 = (v19 & 0x80u) == 0 ? v19 : v18;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, v12, v13);
    if (v19 < 0)
    {
      operator delete(__p);
    }
  }

  if (*(this + 17))
  {
    kaldi::WriteToken(&v20, 0, "<OutputTransform>", v6, v7);
    (*(**(this + 17) + 64))(&__p);
    v14 = (v19 & 0x80u) == 0 ? &__p : __p;
    v15 = (v19 & 0x80u) == 0 ? v19 : v18;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, v14, v15);
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

void sub_132568(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::ScaledDotAttention::ReadData(uint64_t a1, uint64_t *a2, int a3)
{
  if (kaldi::g_kaldi_verbose_level >= 2)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v52, "ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-attention-component.cc", 170, 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, "Reading ScaledDotAttention component", 36);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v52);
  }

  __p = 0uLL;
  v51 = 0;
  while (1)
  {
    while (1)
    {
      if (kaldi::Peek(a2, a3) != 60)
      {
        goto LABEL_104;
      }

      kaldi::ReadToken(a2, a3, &__p, v6, v7);
      if (SHIBYTE(v51) < 0)
      {
        break;
      }

      if (HIBYTE(v51) <= 0xDu)
      {
        if (HIBYTE(v51) == 7)
        {
          if (__p != 1633899324 || *(&__p + 3) != 1046834273)
          {
            goto LABEL_120;
          }

LABEL_53:
          kaldi::ReadBasicType<float>(a2, a3, (a1 + 108), v8, v7);
        }

        else
        {
          if (HIBYTE(v51) != 10)
          {
            goto LABEL_95;
          }

          if (__p != 0x726575516464413CLL || WORD4(__p) != 15993)
          {
            goto LABEL_120;
          }

LABEL_47:
          kaldi::ReadBasicType<BOOL>(a2, a3, (a1 + 104), v8, v7);
        }
      }

      else
      {
        switch(HIBYTE(v51))
        {
          case 0xEu:
            if (__p != 0x6E61725479654B3CLL || *(&__p + 6) != 0x3E6D726F66736E61)
            {
              goto LABEL_120;
            }

LABEL_82:
            v28 = kaldi::nnet1::Component::Read(a2, a3);
            v29 = *(a1 + 120);
            *(a1 + 120) = v28;
            if (v29)
            {
              (*(*v29 + 8))(v29);
              v28 = *(a1 + 120);
            }

            if (!v28)
            {
              kaldi::KaldiErrorMessage::KaldiErrorMessage(v52, "ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-attention-component.cc", 187);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, "reading key transform failed", 28);
              kaldi::KaldiErrorMessage::~KaldiErrorMessage(v52);
            }

            break;
          case 0x10u:
            if (__p == 0x725479726575513CLL && *(&__p + 1) == 0x3E6D726F66736E61)
            {
LABEL_86:
              v30 = kaldi::nnet1::Component::Read(a2, a3);
              v31 = *(a1 + 112);
              *(a1 + 112) = v30;
              if (v31)
              {
                (*(*v31 + 8))(v31);
                v30 = *(a1 + 112);
              }

              if (!v30)
              {
                kaldi::KaldiErrorMessage::KaldiErrorMessage(v52, "ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-attention-component.cc", 182);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, "reading query transform failed", 30);
                kaldi::KaldiErrorMessage::~KaldiErrorMessage(v52);
              }
            }

            else
            {
              if (__p != 0x725465756C61563CLL || *(&__p + 1) != 0x3E6D726F66736E61)
              {
                goto LABEL_95;
              }

LABEL_90:
              v32 = kaldi::nnet1::Component::Read(a2, a3);
              v33 = *(a1 + 128);
              *(a1 + 128) = v32;
              if (v33)
              {
                (*(*v33 + 8))(v33);
                v32 = *(a1 + 128);
              }

              if (!v32)
              {
                kaldi::KaldiErrorMessage::KaldiErrorMessage(v52, "ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-attention-component.cc", 192);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, "reading value transform failed", 30);
                kaldi::KaldiErrorMessage::~KaldiErrorMessage(v52);
              }
            }

            break;
          case 0x11u:
            p_p = &__p;
            goto LABEL_65;
          default:
            goto LABEL_120;
        }
      }
    }

    if (*(&__p + 1) == 7)
    {
      if (*__p == 1633899324 && *(__p + 3) == 1046834273)
      {
        goto LABEL_53;
      }
    }

    else if (*(&__p + 1) == 10 && *__p == 0x726575516464413CLL && *(__p + 8) == 15993)
    {
      goto LABEL_47;
    }

    if (*(&__p + 1) == 14)
    {
      if (*__p == 0x6E61725479654B3CLL && *(__p + 6) == 0x3E6D726F66736E61)
      {
        goto LABEL_82;
      }
    }

    else if (*(&__p + 1) == 16 && *__p == 0x725479726575513CLL && *(__p + 8) == 0x3E6D726F66736E61)
    {
      goto LABEL_86;
    }

    v14 = *(&__p + 1);
    if (*(&__p + 1) == 16)
    {
      if (*__p == 0x725465756C61563CLL && *(__p + 8) == 0x3E6D726F66736E61)
      {
        goto LABEL_90;
      }

      v14 = *(&__p + 1);
    }

    if (v14 != 17)
    {
      goto LABEL_97;
    }

    p_p = __p;
LABEL_65:
    v20 = *p_p;
    v21 = *(p_p + 1);
    v22 = *(p_p + 16);
    v23 = v20 == 0x5474757074754F3CLL && v21 == 0x6D726F66736E6172;
    if (!v23 || v22 != 62)
    {
      break;
    }

    v25 = kaldi::nnet1::Component::Read(a2, a3);
    v26 = *(a1 + 136);
    *(a1 + 136) = v25;
    if (v26)
    {
      (*(*v26 + 8))(v26);
      v25 = *(a1 + 136);
    }

    if (!v25)
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v52, "ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-attention-component.cc", 197);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, "reading output transform failed", 31);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v52);
    }
  }

  if ((v51 & 0x8000000000000000) == 0)
  {
LABEL_95:
    if (HIBYTE(v51) == 12)
    {
      v34 = &__p;
      goto LABEL_99;
    }

    goto LABEL_120;
  }

LABEL_97:
  if (*(&__p + 1) != 12)
  {
    goto LABEL_120;
  }

  v34 = __p;
LABEL_99:
  v35 = *v34;
  v36 = *(v34 + 2);
  if (v35 != 0x6E6F706D6F432F3CLL || v36 != 1047817829)
  {
LABEL_120:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v52, "ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-attention-component.cc", 202);
    v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, "Unrecognized token ", 19);
    if (v51 >= 0)
    {
      v46 = &__p;
    }

    else
    {
      v46 = __p;
    }

    if (v51 >= 0)
    {
      v47 = HIBYTE(v51);
    }

    else
    {
      v47 = *(&__p + 1);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, v46, v47);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v52);
  }

LABEL_104:
  v38 = *(a1 + 112);
  if (!v38)
  {
    v48 = "query_transform_";
    v49 = (&stru_B8 + 22);
    goto LABEL_133;
  }

  v39 = *(a1 + 120);
  if (v39 && *(v38 + 12) != *(v39 + 12))
  {
    v48 = "!key_transform_ || query_transform_->OutputDim() == key_transform_->OutputDim()";
    v49 = (&stru_B8 + 23);
    goto LABEL_133;
  }

  v40 = a1 + *(*a1 - 40);
  v41 = *(v40 + 8);
  if (v41 != *(v38 + 8))
  {
    v48 = "InputDim() == query_transform_->InputDim()";
    v49 = (&stru_B8 + 24);
    goto LABEL_133;
  }

  if (*(a1 + 104) == 1 && v41 != *(v40 + 12))
  {
    v48 = "!add_query_ || InputDim() == OutputDim()";
    v49 = &stru_B8.segname[9];
    goto LABEL_133;
  }

  v42 = *(a1 + 136);
  if (!v42)
  {
    v44 = *(a1 + 128);
    if (!v44 || *(v40 + 12) == *(v44 + 12))
    {
      goto LABEL_117;
    }

LABEL_131:
    v48 = "!value_transform_ || (!output_transform_ && OutputDim() == value_transform_->OutputDim()) || (output_transform_ && output_transform_->InputDim() == value_transform_->OutputDim())";
    v49 = (&stru_B8 + 28);
LABEL_133:
    kaldi::KaldiAssertFailure_("ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-attention-component.cc", v49, v48, v7);
  }

  if (*(v40 + 12) != *(v42 + 12))
  {
    v48 = "!output_transform_ || OutputDim() == output_transform_->OutputDim()";
    v49 = (&stru_B8 + 26);
    goto LABEL_133;
  }

  v43 = *(a1 + 128);
  if (v43 && *(v42 + 8) != *(v43 + 12))
  {
    goto LABEL_131;
  }

LABEL_117:
  if (SHIBYTE(v51) < 0)
  {
    operator delete(__p);
  }
}

void sub_132D74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *kaldi::nnet1::ScaledDotAttention::WriteData(uint64_t a1, void *a2, const char *a3, uint64_t a4, const char *a5)
{
  kaldi::WriteToken(a2, a3, "<AddQuery>", a4, a5);
  kaldi::WriteBasicType<BOOL>(a2, a3, *(a1 + 104));
  kaldi::WriteToken(a2, a3, "<Scale>", v9, v10);
  v11 = *(a1 + 108);
  kaldi::WriteBasicType<float>(a2, a3);
  if (*(a1 + 112))
  {
    kaldi::WriteToken(a2, a3, "<QueryTransform>", v12, v13);
    kaldi::nnet1::Component::Write(*(a1 + 112), a2, a3, a4);
  }

  if (*(a1 + 120))
  {
    kaldi::WriteToken(a2, a3, "<KeyTransform>", v12, v13);
    kaldi::nnet1::Component::Write(*(a1 + 120), a2, a3, a4);
  }

  if (*(a1 + 128))
  {
    kaldi::WriteToken(a2, a3, "<ValueTransform>", v12, v13);
    kaldi::nnet1::Component::Write(*(a1 + 128), a2, a3, a4);
  }

  if (*(a1 + 136))
  {
    kaldi::WriteToken(a2, a3, "<OutputTransform>", v12, v13);
    kaldi::nnet1::Component::Write(*(a1 + 136), a2, a3, a4);
  }

  return kaldi::WriteToken(a2, a3, "</Component>", v12, v13);
}

kaldi::nnet1::ScaledDotAttention *kaldi::nnet1::MultiHeadAttention::MultiHeadAttention(kaldi::nnet1::MultiHeadAttention *this, const kaldi::nnet1::MultiHeadAttention *a2, uint64_t a3)
{
  result = kaldi::nnet1::ScaledDotAttention::ScaledDotAttention(this, (a2 + 8), a3);
  v6 = *a2;
  *result = *a2;
  *(result + *(v6 - 40)) = *(a2 + 9);
  *(result + *(*result - 48)) = *(a2 + 10);
  *(result + *(*result - 56)) = *(a2 + 11);
  *(result + 36) = *(a3 + 144);
  return result;
}

kaldi::nnet1::MultiHeadAttention *kaldi::nnet1::MultiHeadAttention::MultiHeadAttention(kaldi::nnet1::MultiHeadAttention *this, const kaldi::nnet1::MultiHeadAttention *a2)
{
  v4 = a2 + *(*a2 - 40);
  *(this + 19) = off_279038;
  *(this + 20) = *(v4 + 1);
  *(this + 84) = 0;
  *(this + 23) = 0;
  *(this + 24) = 0;
  *(this + 22) = 0;
  *this = off_27B348;
  *(this + 25) = off_27B370;
  kaldi::nnet1::ScaledDotAttention::ScaledDotAttention(this, &off_27DD00, a2);
  *(this + 19) = off_27DC10;
  *this = off_27DAE0;
  *(this + 25) = off_27DCE0;
  *(this + 36) = *(a2 + 36);
  return this;
}

void sub_13319C(_Unwind_Exception *a1)
{
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v3);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v1);
  kaldi::nnet1::Component::~Component(v2);
  _Unwind_Resume(a1);
}

kaldi::nnet1::MultiHeadAttention *kaldi::nnet1::MultiHeadAttention::MultiHeadAttention(kaldi::nnet1::MultiHeadAttention *this, int a2, _BOOL4 a3, int a4, float a5, int a6)
{
  *(this + 19) = off_279038;
  *(this + 40) = a2;
  *(this + 41) = a3;
  *(this + 84) = 0;
  *(this + 23) = 0;
  *(this + 24) = 0;
  *(this + 22) = 0;
  *this = off_27B348;
  *(this + 25) = off_27B370;
  kaldi::nnet1::ScaledDotAttention::ScaledDotAttention(this, &off_27DD00, a2, a3, a5, a4 != 0);
  *(this + 19) = off_27DC10;
  *this = off_27DAE0;
  *(this + 25) = off_27DCE0;
  *(this + 36) = a6;
  return this;
}

void sub_13339C(_Unwind_Exception *a1)
{
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v3);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v1);
  kaldi::nnet1::Component::~Component(v2);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::MultiHeadAttention::ComputeAttention(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*(a1 + 112) + 12);
  if (v5 != *(a1 + 24))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v26, "ComputeAttention", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-attention-component.cc", 261);
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
      v14 = off_276F40;
      v15 = 0u;
      v16 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v14);
      v17 = off_276F40;
      v18 = 0u;
      v19 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v17);
      v20 = off_276F40;
      v21 = 0u;
      v22 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v20);
      v23 = off_276F40;
      v24 = 0u;
      v25 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v23);
      ++v11;
      v10 = (v10 + v12);
    }

    while (v11 < *(a1 + 144));
  }

  return kaldi::CuMatrix<float>::~CuMatrix(v26);
}

uint64_t kaldi::nnet1::MultiHeadAttention::Info(kaldi::nnet1::MultiHeadAttention *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v11);
  kaldi::WriteToken(&v11, 0, "<NumberHeads>", v2, v3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, " ", 1);
  v4 = *(this + 36);
  v5 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, " ", 1);
  kaldi::nnet1::ScaledDotAttention::Info(__p, this);
  if ((v10 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v10 & 0x80u) == 0)
  {
    v7 = v10;
  }

  else
  {
    v7 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, v6, v7);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  std::stringbuf::str();
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  std::locale::~locale(v13);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_133918(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::MultiHeadAttention::ReadData(uint64_t a1, uint64_t *a2, int a3)
{
  if (kaldi::g_kaldi_verbose_level >= 2)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v9, "ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-attention-component.cc", 288, 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "Reading MultiHeadAttention component", 36);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v9);
  }

  kaldi::ExpectToken(a2, a3, "<NumberHeads>");
  kaldi::ReadBasicType<int>(a2, a3, a1 + 144, v6, v7);
  kaldi::nnet1::ScaledDotAttention::ReadData(a1, a2, a3);
  if (*(*(a1 + 112) + 12) % *(a1 + 144))
  {
    kaldi::KaldiAssertFailure_("ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-attention-component.cc", &stru_108.segname[14], "int(query_transform_->OutputDim() / number_heads_) * number_heads_ == query_transform_->OutputDim()", v8);
  }
}

void sub_133A68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::KaldiVlogMessage::~KaldiVlogMessage(va);
  _Unwind_Resume(a1);
}

void *kaldi::nnet1::MultiHeadAttention::WriteData(uint64_t a1, void *a2, const char *a3, uint64_t a4, const char *a5)
{
  kaldi::WriteToken(a2, a3, "<NumberHeads>", a4, a5);
  v9 = *(a1 + 144);
  kaldi::WriteBasicType<int>(a2, a3);

  return kaldi::nnet1::ScaledDotAttention::WriteData(a1, a2, a3, a4, v10);
}

kaldi::nnet1::SupervisedMultiHeadAttention *kaldi::nnet1::SupervisedMultiHeadAttention::SupervisedMultiHeadAttention(kaldi::nnet1::SupervisedMultiHeadAttention *this, const kaldi::nnet1::SupervisedMultiHeadAttention *a2)
{
  v4 = a2 + *(*a2 - 40);
  *(this + 25) = off_279038;
  *(this + 26) = *(v4 + 1);
  *(this + 108) = 0;
  *(this + 29) = 0;
  *(this + 30) = 0;
  *(this + 28) = 0;
  *this = off_27B348;
  *(this + 31) = off_27B370;
  kaldi::nnet1::MultiHeadAttention::MultiHeadAttention(this, off_27DFB0, a2);
  *(this + 25) = off_27DEC0;
  *this = off_27DD90;
  *(this + 31) = off_27DF90;
  *(this + 37) = *(a2 + 37);
  kaldi::CuMatrix<float>::CuMatrix(this + 152, a2 + 152, 111);
  return this;
}

void sub_133C64(_Unwind_Exception *a1)
{
  kaldi::nnet1::ScaledDotAttention::~ScaledDotAttention(v2, &off_27DFB8);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v3);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v2);
  kaldi::nnet1::Component::~Component(v1);
  _Unwind_Resume(a1);
}

kaldi::nnet1::SupervisedMultiHeadAttention *kaldi::nnet1::SupervisedMultiHeadAttention::SupervisedMultiHeadAttention(kaldi::nnet1::SupervisedMultiHeadAttention *this, int a2, _BOOL4 a3, int a4, float a5, int a6, int a7)
{
  *(this + 25) = off_279038;
  *(this + 52) = a2;
  *(this + 53) = a3;
  *(this + 108) = 0;
  *(this + 29) = 0;
  *(this + 30) = 0;
  *(this + 28) = 0;
  *this = off_27B348;
  *(this + 31) = off_27B370;
  kaldi::nnet1::MultiHeadAttention::MultiHeadAttention(this, off_27DFB0, a2, a3, a5, a4, a6);
  *(this + 25) = off_27DEC0;
  *this = off_27DD90;
  *(this + 31) = off_27DF90;
  *(this + 37) = a7;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 19) = off_276F88;
  *(this + 192) = 0;
  return this;
}

void sub_133EB0(_Unwind_Exception *a1)
{
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v3);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v1);
  kaldi::nnet1::Component::~Component(v2);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::SupervisedMultiHeadAttention::ComputeAttention(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*(a1 + 112) + 12);
  if (v5 != *(a1 + 24))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v28, "ComputeAttention", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-attention-component.cc", 331);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v28, "SetKeyValueStores needs to be called in ScaledDotAttention for attention to work");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v28);
  }

  kaldi::CuMatrix<float>::CuMatrix(v28, *(a2 + 20), v5, 0, 0, 0);
  (*(**(a1 + 112) + 112))(*(a1 + 112), a2, v28, a4);
  kaldi::CuMatrix<float>::Resize(a1 + 152, v29, *(a1 + 28), 0, 0);
  kaldi::CuMatrixBase<float>::SetZero(a1 + 152);
  v9 = *(a1 + 144);
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = 0;
    v12 = *(a2 + 16) / v9;
    do
    {
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v25, v28, 0, v29, v10, v12);
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v22, a1 + 8, 0, *(a1 + 28), v10, v12);
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v19, a1 + 56, 0, *(a1 + 76), v10, v12);
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v16, a3, 0, *(a3 + 20), v10, v12);
      if (v11 >= *(a1 + 148))
      {
        kaldi::nnet1::ScaledDotAttention::ComputeScaledDotAttention(a1, &v25, &v22, &v19, &v16, 0);
      }

      else
      {
        kaldi::nnet1::ScaledDotAttention::ComputeScaledDotAttention(a1, &v25, &v22, &v19, &v16, a1 + 152);
      }

      v16 = off_276F40;
      v17 = 0u;
      v18 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v16);
      v19 = off_276F40;
      v20 = 0u;
      v21 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v19);
      v22 = off_276F40;
      v23 = 0u;
      v24 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v22);
      v25 = off_276F40;
      v26 = 0u;
      v27 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v25);
      ++v11;
      v10 = (v10 + v12);
    }

    while (v11 < *(a1 + 144));
  }

  v13 = *(a1 + 148);
  if (v13 > 1)
  {
    v14 = 1.0 / v13;
    kaldi::CuMatrixBase<float>::Scale(a1 + 152, v14);
  }

  return kaldi::CuMatrix<float>::~CuMatrix(v28);
}

uint64_t kaldi::nnet1::SupervisedMultiHeadAttention::Info(kaldi::nnet1::SupervisedMultiHeadAttention *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v11);
  kaldi::WriteToken(&v11, 0, "<SupervisedHeads>", v2, v3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, " ", 1);
  v4 = *(this + 37);
  v5 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, " ", 1);
  kaldi::nnet1::MultiHeadAttention::Info(__p, this);
  if ((v10 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v10 & 0x80u) == 0)
  {
    v7 = v10;
  }

  else
  {
    v7 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, v6, v7);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  std::stringbuf::str();
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  std::locale::~locale(v13);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_1344A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::SupervisedMultiHeadAttention::ReadData(uint64_t a1, uint64_t *a2, int a3)
{
  if (kaldi::g_kaldi_verbose_level > 1)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v10, "ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-attention-component.cc", 367, 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "Reading SupervisedMultiHeadAttention component", 46);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v10);
  }

  kaldi::ExpectToken(a2, a3, "<SupervisedHeads>");
  kaldi::ReadBasicType<int>(a2, a3, a1 + 148, v6, v7);
  kaldi::nnet1::MultiHeadAttention::ReadData(a1, a2, a3);
  v9 = *(a1 + 148);
  if (v9 < 1)
  {
    kaldi::KaldiAssertFailure_("ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-attention-component.cc", &stru_158.segname[13], "number_supervised_heads_ >= 1", v8);
  }

  if (v9 > *(a1 + 144))
  {
    kaldi::KaldiAssertFailure_("ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-attention-component.cc", &stru_158.segname[14], "number_supervised_heads_ <= number_heads_", v8);
  }
}

void sub_134610(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::KaldiVlogMessage::~KaldiVlogMessage(va);
  _Unwind_Resume(a1);
}

void *kaldi::nnet1::SupervisedMultiHeadAttention::WriteData(uint64_t a1, void *a2, const char *a3, uint64_t a4, const char *a5)
{
  kaldi::WriteToken(a2, a3, "<SupervisedHeads>", a4, a5);
  v9 = *(a1 + 148);
  kaldi::WriteBasicType<int>(a2, a3);

  return kaldi::nnet1::MultiHeadAttention::WriteData(a1, a2, a3, a4, v10);
}

kaldi::nnet1::SelfAttention *kaldi::nnet1::SelfAttention::SelfAttention(kaldi::nnet1::SelfAttention *this, const kaldi::nnet1::SelfAttention *a2)
{
  v4 = a2 + *(*a2 - 40);
  *(this + 10) = off_279038;
  *(this + 11) = *(v4 + 1);
  *(this + 48) = 0;
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 13) = 0;
  *this = off_27B348;
  *(this + 16) = off_27B370;
  v5 = a2 + *(*a2 - 40);
  v6 = *(v5 + 2);
  v7 = *(v5 + 3);
  v8 = kaldi::nnet1::AttentionBaseInferenceComponent::AttentionBaseInferenceComponent(this, off_27E320);
  v8[3] = 0;
  v8[4] = 0;
  v8[5] = off_2829A0;
  *(v8 + 12) = 1;
  v8[9] = 0;
  v8[10] = off_27E230;
  *v8 = off_27E060;
  v8[16] = off_27E300;
  v8[1] = off_27E118;
  v8[2] = 0;
  v8[7] = 0;
  v9 = v8 + 7;
  v8[8] = 0;
  v10 = *(a2 + 7);
  if (v10)
  {
    v11 = (*(*v10 + 16))(v10);
    v12 = *v9;
    *v9 = v11;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }
  }

  v13 = *(a2 + 8);
  if (v13)
  {
    v14 = (*(*v13 + 16))(v13);
    v15 = *(this + 8);
    *(this + 8) = v14;
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }
  }

  v16 = *(a2 + 9);
  if (v16)
  {
    v17 = (*(*&v16[*(*v16 - 40)] + 16))(&v16[*(*v16 - 40)]);
    if (v17)
    {
      v19 = **v17;
    }

    v20 = *(this + 9);
    *(this + 9) = v17;
    if (v20)
    {
      (*(*v20 + 8))(v20);
      v17 = *(this + 9);
    }

    if (!v17)
    {
      kaldi::KaldiAssertFailure_("SelfAttention", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-attention-component.cc", &stru_158.reloff + 1, "attention_", v18);
    }
  }

  return this;
}

void sub_134A14(_Unwind_Exception *a1)
{
  v7 = *(v2 + 72);
  *(v2 + 72) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(v2 + 64);
  *(v2 + 64) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *v5;
  *v5 = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  kaldi::nnet1::HistoricalComponent::~HistoricalComponent(v4);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v2);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v3);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v2);
  kaldi::nnet1::Component::~Component(v1);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::SelfAttention::PropagateFnc(uint64_t *a1, int *a2, int *a3, uint64_t a4, const char *a5)
{
  v5 = *(a1 + 12);
  if (a2[5] % v5)
  {
    kaldi::KaldiAssertFailure_("PropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-attention-component.cc", &stru_158.flags + 1, "batch_size % num_utts == 0", a5);
  }

  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v58, "PropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-attention-component.cc", 411, 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, "Running forward propagation for batch size = ", 45);
    v10 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ", which contains ", 17);
    v11 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, " frames each from ", 18);
    v12 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " utterances.", 12);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v58);
  }

  (*(*a1 + 160))(a1);
  v13 = a1[2];
  v14 = a1[7];
  if (v14)
  {
    v15 = (v14 + 12);
  }

  else
  {
    v15 = (a1 + *(*a1 - 40) + 8);
  }

  v16 = *v15;
  v17 = a1[8];
  if (v17)
  {
    v18 = (v17 + 12);
    v19 = *a1;
  }

  else
  {
    v19 = *a1;
    v18 = (a1 + *(*a1 - 40) + 8);
  }

  v36 = *v18;
  v20 = *v18 + v16;
  if (v20 != (*(v19 + 88))(a1))
  {
    kaldi::KaldiAssertFailure_("PropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-attention-component.cc", &stru_158.reserved3, "history_state_size == HistoryStateSize()", v21);
  }

  v22 = v13 + 48 * a4;
  kaldi::CuMatrix<float>::CuMatrix(v58, *(a1 + 12), (a2[5] * v20 / v5 + *(v22 + 16)), 0, 0, 0);
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v55, v58, 0, v60, 0, *(v22 + 16));
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v55, v22, 111, v23, v24);
  v55 = off_276F40;
  v56 = 0u;
  v57 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v55);
  if (v5 >= 1)
  {
    v25 = 0;
    for (i = 0; i != v5; ++i)
    {
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v55, a2, i, v25 + a2[5], 0, a2[4]);
      if (v5 != 1)
      {
        kaldi::CuMatrixBase<float>::SetStride(&v55, a2[6] * v5);
      }

      kaldi::CuSubMatrix<float>::CuSubMatrix(&v52, a3, i, v25 + a3[5], 0, a3[4]);
      if (v5 != 1)
      {
        kaldi::CuMatrixBase<float>::SetStride(&v52, a3[6] * v5);
      }

      if (v60 <= i)
      {
        kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.addr + 1, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v27);
      }

      *&v47 = v58[1].__locale_ + 4 * (v61 * i);
      v46 = &off_276FE0;
      *(&v47 + 1) = v59;
      *&v48 = v62;
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v49, &v46, v59 / v20);
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v46, &v49, 0, SHIDWORD(v50), 0, v16);
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v43, &v49, 0, SHIDWORD(v50), v16, v36);
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v40, &v46, HIDWORD(v47) - HIDWORD(v56), SHIDWORD(v56), 0, SDWORD2(v47));
      v30 = a1[7];
      if (v30)
      {
        (*(*v30 + 112))(v30, &v55, &v40, a4);
      }

      else
      {
        kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v40, &v55, 111, v28, v29);
      }

      kaldi::CuSubMatrix<float>::CuSubMatrix(&v37, &v43, HIDWORD(v44) - HIDWORD(v56), SHIDWORD(v56), 0, SDWORD2(v44));
      v33 = a1[8];
      if (v33)
      {
        (*(*v33 + 112))(v33, &v55, &v37, a4);
      }

      else
      {
        kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v37, &v55, 111, v31, v32);
      }

      (*(*a1[9] + 24))(a1[9], &v46, &v43, a4);
      v34 = a1[9] + *(*a1[9] - 40);
      (*(*v34 + 112))(v34, &v55, &v52, a4);
      v37 = off_276F40;
      v38 = 0u;
      v39 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v37);
      v40 = off_276F40;
      v41 = 0u;
      v42 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v40);
      v43 = off_276F40;
      v44 = 0u;
      v45 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v43);
      v46 = off_276F40;
      v47 = 0u;
      v48 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v46);
      v49 = off_276F40;
      v50 = 0u;
      v51 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v49);
      v52 = off_276F40;
      v53 = 0u;
      v54 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v52);
      v55 = off_276F40;
      v56 = 0u;
      v57 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v55);
      --v25;
    }
  }

  (*(*a1[9] + 32))(a1[9]);
  (*(*a1 + 128))(a1, v58, a4);
  return kaldi::CuMatrix<float>::~CuMatrix(v58);
}

void sub_1351F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void (**a40)(), uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  a40 = off_276F40;
  *(v45 + 8) = 0u;
  *(v45 + 24) = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&a40);
  kaldi::CuMatrix<float>::~CuMatrix(&a45);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::SelfAttention::Info(kaldi::nnet1::SelfAttention *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v15);
  if (*(this + 7))
  {
    kaldi::WriteToken(&v15, 0, "<KeyTransform>", v2, v3);
    (*(**(this + 7) + 64))(&__p);
    v4 = (v14 & 0x80u) == 0 ? &__p : __p;
    v5 = (v14 & 0x80u) == 0 ? v14 : v13;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, v4, v5);
    if (v14 < 0)
    {
      operator delete(__p);
    }
  }

  if (*(this + 8))
  {
    kaldi::WriteToken(&v15, 0, "<ValueTransform>", v2, v3);
    (*(**(this + 8) + 64))(&__p);
    v6 = (v14 & 0x80u) == 0 ? &__p : __p;
    v7 = (v14 & 0x80u) == 0 ? v14 : v13;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, v6, v7);
    if (v14 < 0)
    {
      operator delete(__p);
    }
  }

  v8 = *(this + 9);
  if (v8)
  {
    (*(*(v8 + *(*v8 - 40)) + 64))(&__p);
    v9 = (v14 & 0x80u) == 0 ? &__p : __p;
    v10 = (v14 & 0x80u) == 0 ? v14 : v13;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, v9, v10);
    if (v14 < 0)
    {
      operator delete(__p);
    }
  }

  std::stringbuf::str();
  if (v18 < 0)
  {
    operator delete(v17[7].__locale_);
  }

  std::locale::~locale(v17);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_1356EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::ScaledDotAttention::CopyOrQuantize<kaldi::nnet1::Quantizable8BitComponentItf>@<X0>(char ***a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = *v3;
    v5 = **v3;
    if (v6)
    {
      result = kaldi::nnet1::Quantizable8BitComponentItf::CopyQuantized(v6);
    }

    else
    {
      result = (*(v4 + 2))(v3);
    }
  }

  else
  {
    result = 0;
  }

  *a2 = result;
  return result;
}

uint64_t kaldi::nnet1::ScaledDotAttention::CopyOrQuantize<kaldi::nnet1::Quantizable16BitComponentItf>@<X0>(char ***a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = *v3;
    v5 = **v3;
    if (v6)
    {
      result = kaldi::nnet1::Quantizable16BitComponentItf::CopyQuantized(v6);
    }

    else
    {
      result = (*(v4 + 2))(v3);
    }
  }

  else
  {
    result = 0;
  }

  *a2 = result;
  return result;
}

void kaldi::nnet1::SelfAttention::ReadData(void *a1, uint64_t *a2, int a3)
{
  if (kaldi::g_kaldi_verbose_level >= 2)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v33, "ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-attention-component.cc", 509, 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "Reading SelfAttention component", 31);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v33);
  }

  __p = 0uLL;
  v32 = 0;
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

      if (*(&__p + 1) == 14 && *__p == 0x6E61725479654B3CLL && *(__p + 6) == 0x3E6D726F66736E61)
      {
        goto LABEL_48;
      }

      if (*(&__p + 1) == 16 && *__p == 0x725465756C61563CLL && *(__p + 8) == 0x3E6D726F66736E61)
      {
        goto LABEL_26;
      }

      v11 = *(&__p + 1);
      if (*(&__p + 1) != 11)
      {
        goto LABEL_54;
      }

      p_p = __p;
LABEL_32:
      v15 = *p_p;
      v16 = *(p_p + 3);
      if (v15 != 0x69746E657474413CLL || v16 != 0x3E6E6F69746E6574)
      {
        if (v32 < 0)
        {
          v11 = *(&__p + 1);
LABEL_54:
          if (v11 == 12)
          {
            v24 = __p;
            goto LABEL_58;
          }
        }

        goto LABEL_67;
      }

      v18 = kaldi::nnet1::Component::Read(a2, a3);
      if (v18)
      {
        v19 = **v18;
      }

      v20 = a1[9];
      a1[9] = v18;
      if (v20)
      {
        (*(*v20 + 8))(v20);
        v18 = a1[9];
      }

      if (!v18)
      {
        kaldi::KaldiErrorMessage::KaldiErrorMessage(v33, "ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-attention-component.cc", 528);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "failed to read attention component in SelfAttention", 51);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v33);
      }
    }

    if (HIBYTE(v32) <= 0xDu)
    {
      break;
    }

    if (HIBYTE(v32) == 14)
    {
      if (__p != 0x6E61725479654B3CLL || *(&__p + 6) != 0x3E6D726F66736E61)
      {
        goto LABEL_67;
      }

LABEL_48:
      v22 = kaldi::nnet1::Component::Read(a2, a3);
      v23 = a1[7];
      a1[7] = v22;
      if (v23)
      {
        (*(*v23 + 8))(v23);
        v22 = a1[7];
      }

      if (!v22)
      {
        kaldi::KaldiErrorMessage::KaldiErrorMessage(v33, "ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-attention-component.cc", 517);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "reading key transform failed", 28);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v33);
      }
    }

    else
    {
      if (HIBYTE(v32) != 16)
      {
        goto LABEL_67;
      }

      if (__p != 0x725465756C61563CLL || *(&__p + 1) != 0x3E6D726F66736E61)
      {
        goto LABEL_67;
      }

LABEL_26:
      v13 = kaldi::nnet1::Component::Read(a2, a3);
      v14 = a1[8];
      a1[8] = v13;
      if (v14)
      {
        (*(*v14 + 8))(v14);
        v13 = a1[8];
      }

      if (!v13)
      {
        kaldi::KaldiErrorMessage::KaldiErrorMessage(v33, "ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-attention-component.cc", 522);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "reading value transform failed", 30);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v33);
      }
    }
  }

  if (HIBYTE(v32) == 11)
  {
    p_p = &__p;
    goto LABEL_32;
  }

  if (HIBYTE(v32) != 12)
  {
    goto LABEL_67;
  }

  v24 = &__p;
LABEL_58:
  v25 = *v24;
  v26 = *(v24 + 2);
  if (v25 != 0x6E6F706D6F432F3CLL || v26 != 1047817829)
  {
LABEL_67:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v33, "ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-attention-component.cc", 533);
    v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "Unrecognized token ", 19);
    if (v32 >= 0)
    {
      v29 = &__p;
    }

    else
    {
      v29 = __p;
    }

    if (v32 >= 0)
    {
      v30 = HIBYTE(v32);
    }

    else
    {
      v30 = *(&__p + 1);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, v29, v30);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v33);
  }

LABEL_63:
  if (!a1[9])
  {
    kaldi::KaldiAssertFailure_("ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-attention-component.cc", &stru_1F8.addr + 1, "attention_", v7);
  }

  if (SHIBYTE(v32) < 0)
  {
    operator delete(__p);
  }
}

void sub_136280(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *kaldi::nnet1::SelfAttention::WriteData(uint64_t a1, void *a2, const char *a3, uint64_t a4, const char *a5)
{
  if (!*(a1 + 72))
  {
    kaldi::KaldiAssertFailure_("WriteData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-attention-component.cc", &stru_1F8.addr + 5, "attention_", a5);
  }

  if (*(a1 + 56))
  {
    kaldi::WriteToken(a2, a3, "<KeyTransform>", a4, a5);
    kaldi::nnet1::Component::Write(*(a1 + 56), a2, a3, a4);
  }

  if (*(a1 + 64))
  {
    kaldi::WriteToken(a2, a3, "<ValueTransform>", a4, a5);
    kaldi::nnet1::Component::Write(*(a1 + 64), a2, a3, a4);
  }

  kaldi::WriteToken(a2, a3, "<Attention>", a4, a5);
  kaldi::nnet1::Component::Write((*(a1 + 72) + *(**(a1 + 72) - 40)), a2, a3, a4);

  return kaldi::WriteToken(a2, a3, "</Component>", v9, v10);
}

uint64_t kaldi::nnet1::SelfAttention::HistoryStateSize(kaldi::nnet1::SelfAttention *this)
{
  v1 = *(this + 7);
  if (v1)
  {
    v2 = (v1 + 12);
  }

  else
  {
    v2 = (this + *(*this - 40) + 8);
  }

  v3 = *v2;
  v4 = *(this + 8);
  if (v4)
  {
    v5 = (v4 + 12);
  }

  else
  {
    v5 = (this + *(*this - 40) + 8);
  }

  return (*v5 + v3);
}

uint64_t non-virtual thunk tokaldi::nnet1::SelfAttention::HistoryStateSize(kaldi::nnet1::SelfAttention *this)
{
  v1 = (this - 8);
  v2 = *(this + 6);
  if (v2)
  {
    v3 = (v2 + 12);
  }

  else
  {
    v4 = *v1;
    v3 = (this + *(*(this - 1) - 40));
  }

  v5 = *v3;
  v6 = *(this + 7);
  if (v6)
  {
    v7 = (v6 + 12);
  }

  else
  {
    v7 = (this + *(*v1 - 40));
  }

  return (*v7 + v5);
}

uint64_t kaldi::nnet1::SelfAttention::ResetHistoryState(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  (*(*a1 + 160))(a1);
  if (a4)
  {
    kaldi::KaldiAssertFailure_("ResetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-attention-component.cc", &stru_1F8.nreloc + 3, "batch_idx == 0", v8);
  }

  v9 = a2[1];
  if (v9 != *(a1 + 48))
  {
    kaldi::KaldiAssertFailure_("ResetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-attention-component.cc", &stru_1F8.flags, "sequence_idx.size() == hopts_.num_sequences", v8);
  }

  v10 = *(a1 + 16);
  *(v10 + 32) = a3;
  if (v9)
  {
    for (i = 0; i != v9; ++i)
    {
      if (((*(*a2 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8)) >> i) & 1) == 0)
      {
        kaldi::KaldiErrorMessage::KaldiErrorMessage(&v13, "ResetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-attention-component.cc", 573);
        std::operator<<[abi:ne200100]<std::char_traits<char>>(&v13, "ResetHistoryState for SelfAttention makes only sense if all utterances get reset at the same time");
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

uint64_t kaldi::nnet1::SelfAttention::ResetHistoryState(kaldi::nnet1::SelfAttention *this)
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

unsigned int *kaldi::nnet1::SelfAttention::GetHistoryState(uint64_t a1, unsigned int *a2, int a3, uint64_t a4, const char *a5)
{
  if (a3)
  {
    kaldi::KaldiAssertFailure_("GetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-attention-component.cc", &stru_248.sectname[1], "batch_idx == 0", a5);
  }

  kaldi::CuMatrix<float>::Resize(a2, *(*(a1 + 16) + 20), *(*(a1 + 16) + 16), 1u, 0);
  v9 = *(a1 + 16);

  return kaldi::CuMatrixBase<float>::CopyFromMat<float>(a2, v9, 111, v7, v8);
}

void kaldi::nnet1::SelfAttention::GetHistoryState(uint64_t a1, _DWORD *a2, unsigned int a3, uint64_t a4, const char *a5)
{
  if (a4)
  {
    kaldi::KaldiAssertFailure_("GetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-attention-component.cc", &stru_248.sectname[7], "batch_idx == 0", a5);
  }

  if ((a3 & 0x80000000) != 0 || *(a1 + 48) <= a3)
  {
    kaldi::KaldiAssertFailure_("GetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-attention-component.cc", &stru_248.sectname[8], "sequence_idx >= 0 && sequence_idx < hopts_.num_sequences", a5);
  }

  kaldi::CuVector<float>::Resize(a2, *(*(a1 + 16) + 16), 1u, a4, a5);
  v11 = *(a1 + 16);
  v12 = *(v11 + 20);
  if (v12 >= 1)
  {
    if (v12 <= a3)
    {
      kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.segname[11], "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v10);
    }

    v13 = *(v11 + 8) + 4 * (*(v11 + 24) * a3);
    v14 = *(v11 + 16);
    v15 = *(v11 + 32);
    v16[1] = v13;
    v16[0] = &off_276FE0;
    v16[2] = v14;
    v16[3] = v15;
    kaldi::CuVectorBase<float>::CopyFromVec(a2, v16, v8, v9, v10);
  }
}