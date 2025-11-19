void kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<short>>::AssignMembers<kaldi::QuantizedMatrix<short>>(uint64_t a1, uint64_t a2)
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

  std::unique_ptr<kaldi::QuantizedMatrix<short>>::reset[abi:ne200100]((a1 + 184), 0);
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

  kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<short>>::UpdateBNNSFilter(a1);
  if (*(a2 + 384) != *(a2 + 376))
  {
    kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<short>>::InitResidualAggregator(a1, (a1 + 376));
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

void kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<short>>::~Convolutional2DComponent(uint64_t a1)
{
  *a1 = &unk_1F42C49E8;
  v2 = a1 + 88;
  *(a1 + 88) = &unk_1F42C4B20;
  v3 = a1 + 96;
  *(a1 + 96) = &unk_1F42C4B48;
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

  std::unique_ptr<kaldi::QuantizedMatrix<short>>::reset[abi:ne200100]((a1 + 184), 0);
  v8 = (a1 + 160);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v8);
  kaldi::CuMatrixBase<float>::~CuMatrixBase(v3);
  kaldi::CuMatrixBase<float>::~CuMatrixBase(v2);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(a1);
}

{
  kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<short>>::~Convolutional2DComponent(a1);

  JUMPOUT(0x1C692AE10);
}

void non-virtual thunk tokaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<short>>::~Convolutional2DComponent(uint64_t a1)
{
  kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<short>>::~Convolutional2DComponent(a1 - 88);
}

{
  kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<short>>::~Convolutional2DComponent(a1 - 96);
}

{
  kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<short>>::~Convolutional2DComponent(a1 - 88);

  JUMPOUT(0x1C692AE10);
}

{
  kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<short>>::~Convolutional2DComponent(a1 - 96);

  JUMPOUT(0x1C692AE10);
}

void kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<short>>::InitData(int *a1, uint64_t *a2, kaldi::UniformRandomNumber *a3)
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

void sub_1C30A66D4(_Unwind_Exception *a1)
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

void *kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<short>>::UpdateBNNSFilter(uint64_t a1)
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
  layer_params.weights.data_type = BNNSDataTypeInt16;
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
    kaldi::MatrixBase<float>::CopyFromMat<short>(v29, *(a1 + 184), 111);
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

void sub_1C30A6A40(_Unwind_Exception *a1, uint64_t a2, ...)
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

void kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<short>>::ReadData(float *a1, uint64_t *a2, int a3)
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

uint64_t kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<short>>::WriteConfig(unsigned int *a1, void *a2, const char *a3, uint64_t a4, const char *a5)
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

void sub_1C30A7638(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<short>>::WriteData(uint64_t a1, void *a2, int a3, int a4)
{
  (*(*a1 + 168))(a1);
  kaldi::QuantizedMatrix<short>::Write(*(a1 + 184), a2, a3, a4);
  v10 = *(a1 + 192);

  kaldi::CuVectorBase<float>::Write(v10, a2, a3, v8, v9);
}

_DWORD *kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<short>>::GetParams(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 176))(a1);
  kaldi::Vector<float>::Resize(a2, v4, 0, v5, v6);
  v7 = kaldi::QuantizedMatrixBase<short>::NumRows(*(a1 + 184));
  v9 = kaldi::QuantizedMatrixBase<short>::NumCols(*(a1 + 184)) * v7;
  v16 = 0;
  v17 = 0;
  if (v9 > *(a2 + 8) || (v15 = *a2, LODWORD(v16) = v9, kaldi::VectorBase<float>::CopyRowsFromMat<short>(&v15, *(a1 + 184)), v12 = *(a1 + 192), v13 = v12[4], v16 = 0, v17 = 0, v13 + v9 > *(a2 + 8)))
  {
    kaldi::KaldiAssertFailure_("SubVector", "../engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.h", 0x264, "static_cast<UnsignedMatrixIndexT>(origin) + static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v8);
  }

  v15 = (*a2 + 4 * v9);
  LODWORD(v16) = v13;
  return kaldi::CuVectorBase<float>::CopyToVec<float>(v12, &v15, v10, v11, v8);
}

_DWORD *kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<short>>::SetParams(uint64_t a1, uint64_t a2)
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
  if (v7 > *(a2 + 8) || (v14 = *a2, LODWORD(v15) = v7, kaldi::QuantizedMatrixBase<short>::CopyRowsFromVec(v8, &v14), v11 = *(a1 + 192), v12 = v11[4], v15 = 0, v16 = 0, v12 + v7 > *(a2 + 8)))
  {
    kaldi::KaldiAssertFailure_("SubVector", "../engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.h", 0x264, "static_cast<UnsignedMatrixIndexT>(origin) + static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v6);
  }

  v14 = (*a2 + 4 * v7);
  LODWORD(v15) = v12;
  return kaldi::CuVectorBase<float>::CopyFromVec<float>(v11, &v14, v9, v10, v6);
}

float kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<short>>::SumParams(uint64_t a1)
{
  v2 = kaldi::QuantizedMatrixBase<short>::Sum(*(a1 + 184));
  v3 = *&v2;
  v4 = kaldi::CuVectorBase<float>::Sum(*(a1 + 192));
  return v3 + *&v4;
}

void kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<short>>::PerturbParams(uint64_t a1)
{
  v2 = kaldi::QuantizedMatrixBase<short>::NumRows(*(a1 + 184));
  v3 = kaldi::QuantizedMatrixBase<short>::NumCols(*(a1 + 184));
  kaldi::CuMatrix<float>::CuMatrix(v5, v2, v3, 1u, 0, 0);
  kaldi::CuMatrixBase<float>::SetRandn(v5);
  v4 = *(a1 + 184);
  kaldi::QuantizedMatrixBase<short>::AddMat();
}

uint64_t sub_1C30A7A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
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

void sub_1C30A7A7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  kaldi::CuMatrix<float>::~CuMatrix(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<short>>::Info(uint64_t a1)
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
  kaldi::nnet1::MomentStatistics<short>(*(a1 + 184));
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

void sub_1C30A7D84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
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

void kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<short>>::InfoGradient(uint64_t a1@<X0>, std::string *a2@<X8>)
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

void sub_1C30A806C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
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

void kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<short>>::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, int a4, const char *a5)
{
  if (a4 || (*(a1 + 17) & 1) == 0)
  {
    kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<short>>::PropagateCpu(a1, a2, a3, a4);
  }

  else
  {
    kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<short>>::PropagateBNNS(a1, a2, a3, 0, a5);
  }
}

uint64_t kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<short>>::PropagateBNNS(uint64_t a1, uint64_t a2, uint64_t a3, int a4, const char *a5)
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

void kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<short>>::PropagateCpu(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
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
      kaldi::CuMatrixBase<float>::AddMatMat<short>(&__p, *(*(a1 + 296) + 24 * v71) + v27, 111, *(a1 + 184), 0x70, 1.0, 1.0);
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

void sub_1C30A8814(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<short>>::BackpropagateCpu(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
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

void sub_1C30A8EB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void **a20)
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

uint64_t kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<short>>::SetGradientNormalization(uint64_t result, int a2, float a3)
{
  *(result + 148) = a3;
  *(result + 144) = a2;
  *(result + 344) = 0;
  return result;
}

void kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<short>>::NormalizeGradients(uint64_t a1, int a2, uint64_t a3, uint64_t a4, const char *a5, float a6)
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

void kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<short>>::AccumGradients(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<short>>::EnsureCorrs(a1);

  kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<short>>::AccumGradientsCpu(a1, a2, a3, a4, a5);
}

void kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<short>>::EnsureCorrs(uint64_t a1)
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

void kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<short>>::AccumGradientsCpu(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
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

void sub_1C30A9628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  a10 = &unk_1F42BFE90;
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&a10);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<short>>::UpdateWeights()
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v0, "UpdateWeights", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-2d-component.cc", 767);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Unsupported");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

uint64_t kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<short>>::GetGradient(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void sub_1C30A991C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
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

float kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<short>>::GetNormalizedLearningRate(uint64_t a1, int a2)
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

uint64_t kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<short>>::CountZeroCorr(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<short>>::EnsureCorrs(a1);
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

void kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<short>>::VectorizeWeightsCorrs(uint64_t a1)
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

uint64_t kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<short>>::InitResidualAggregator(uint64_t a1, uint64_t *a2)
{
  kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<short>>::EnsureCorrs(a1);
  kaldi::nnet1::QuantizerResidualAggregator::PushSetup(a2, *(*(a1 + 208) - 8));
  v4 = *(*(a1 + 232) - 8);

  return kaldi::nnet1::QuantizerResidualAggregator::PushSetup(a2, v4);
}

void kaldi::nnet1::Convolutional2DComponent<kaldi::CuMatrixBase<float>>::UpdateWeights(uint64_t a1, uint64_t a2, int a3)
{
  kaldi::nnet1::Convolutional2DComponent<kaldi::CuMatrixBase<float>>::EnsureCorrs(a1);
  v11 = *(a1 + 64);
  v10 = *(a1 + 68);
  v12 = *(a1 + 72);
  v13 = *(a1 + 76);
  *(*(a1 + 184) + 32) = a2;
  *(*(a1 + 192) + 24) = a2;
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
    kaldi::KaldiAssertFailure_("UpdateWeights", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-2d-component.cc", 0x318, "batch_idx <= opts_.num_subbatches", v8);
  }

  v17 = *(a1 + 200);
  v18 = v17[v16];
  *(v18 + 32) = a2;
  *(*(*(a1 + 224) + 8 * v16) + 24) = a2;
  *(*(a1 + 248) + 48 * v16 + 32) = a2;
  *(*(a1 + 272) + 32 * v16 + 24) = a2;
  if (v16 == v14)
  {
    kaldi::CuMatrixBase<float>::AddMat(v18, *v17, 111, v7, v8, 1.0, 0.0);
    LODWORD(v19) = 1.0;
    kaldi::CuVectorBase<float>::AddVec(*(*(a1 + 224) + 8 * v16), **(a1 + 224), v20, v21, v22, v19, 0.0);
    if (*(a1 + 80) > 1)
    {
      v23 = 1;
      do
      {
        kaldi::CuMatrixBase<float>::AddMat(*(*(a1 + 200) + 8 * v16), *(*(a1 + 200) + 8 * v23), 111, v7, v8, 1.0, 1.0);
        LODWORD(v24) = 1.0;
        kaldi::CuVectorBase<float>::AddVec(*(*(a1 + 224) + 8 * v16), *(*(a1 + 224) + 8 * v23++), v25, v26, v27, v24, 1.0);
      }

      while (v23 < *(a1 + 80));
    }

    v28 = *(a1 + 320);
    v28[v16] = 0;
    if (v14 >= 1)
    {
      v29 = 0;
      v30 = v28;
      do
      {
        v31 = *v30++;
        v29 += v31;
        v28[v16] = v29;
        --v14;
      }

      while (v14);
    }
  }

  v32 = *(a1 + 56);
  if (*(a1 + 84) == 1)
  {
    *v9.i32 = *(*(a1 + 320) + 4 * v16);
    v32 = v32 / *v9.i32;
  }

  v33 = *(a1 + 352);
  if (v16 >= ((*(a1 + 360) - v33) >> 2))
  {
    LODWORD(v40[0]) = 2143289344;
    std::vector<float>::resize((a1 + 352), v16 + 1, v40, v9);
    v33 = *(a1 + 352);
  }

  *(v33 + 4 * v16) = v32;
  if (*(a1 + 148) >= 0.0)
  {
    (*(*a1 + 248))(a1, v16);
  }

  if (v11 != 0.0)
  {
    kaldi::CuMatrixBase<float>::AddMat(*(a1 + 184), *(a1 + 184), 111, v7, v8, -(v32 * v11) * *(*(a1 + 320) + 4 * v16), 1.0);
  }

  if (v10 != 0.0)
  {
    kaldi::cu::RegularizeL1<float>(*(a1 + 184), *(*(a1 + 200) + 8 * v16), (v10 * v32) * *(*(a1 + 320) + 4 * v16), v32, v6, v7, v8);
  }

  if (v12 > 0.0)
  {
    if (*(a1 + 80) >= 2)
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v40, "UpdateWeights", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-2d-component.cc", 831);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v40, "the multi batch gradient quantization does not work yet");
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v40);
    }

    if (*(a1 + 384) == *(a1 + 376))
    {
      kaldi::nnet1::Convolutional2DComponent<kaldi::CuMatrixBase<float>>::InitResidualAggregator(a1, (a1 + 376));
    }

    kaldi::nnet1::QuantizerResidualAggregator::Quantize((a1 + 376), v13, v12, v6, v7, v8);
  }

  kaldi::CuMatrixBase<float>::AddMat(*(a1 + 184), *(*(a1 + 200) + 8 * v16), 111, v7, v8, -(v32 * *(a1 + 136)), 1.0);
  *&v34 = -(v32 * *(a1 + 140));
  kaldi::CuVectorBase<float>::AddVec(*(a1 + 192), *(*(a1 + 224) + 8 * v16), v35, v36, v37, v34, 1.0);
  v38 = *(a1 + 320);
  if (v16 == *(a1 + 80))
  {
    v39 = *(a1 + 328);
    if (v38 != v39)
    {
      bzero(v38, v39 - v38);
    }
  }

  else
  {
    *&v38[4 * v16] = 0;
  }
}

void std::string::__throw_out_of_range[abi:ne200100]()
{
  std::__throw_out_of_range[abi:ne200100]("basic_string");
}

{
  std::__throw_out_of_range[abi:ne200100]("basic_string");
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B8] + 16);
  return result;
}

uint64_t kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<signed char>>::Convolutional2DComponent<kaldi::CuMatrixBase<float>>(uint64_t a1, uint64_t a2)
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
  kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<signed char>>::AssignMembers<kaldi::CuMatrixBase<float>>(a1, a2);
  return a1;
}

void sub_1C30AA714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
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

void kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<signed char>>::AssignMembers<kaldi::CuMatrixBase<float>>(uint64_t a1, uint64_t a2)
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

uint64_t kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<short>>::Convolutional2DComponent<kaldi::CuMatrixBase<float>>(uint64_t a1, uint64_t a2)
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
  kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<short>>::AssignMembers<kaldi::CuMatrixBase<float>>(a1, a2);
  return a1;
}

void sub_1C30AAC04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
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

void kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<short>>::AssignMembers<kaldi::CuMatrixBase<float>>(uint64_t a1, uint64_t a2)
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

  std::unique_ptr<kaldi::QuantizedMatrix<short>>::reset[abi:ne200100]((a1 + 184), 0);
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

  kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<short>>::UpdateBNNSFilter(a1);
  if (*(a2 + 384) != *(a2 + 376))
  {
    kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<short>>::InitResidualAggregator(a1, (a1 + 376));
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

void std::vector<std::vector<kaldi::CuMatrix<float>>>::__append(const void **a1, unint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(a1[1], v10);
      v5 += v10;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v18[4] = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<kaldi::CuMatrix<float>>>>(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = a1[1] - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    a1[1] = v13;
    v17 = a1[2];
    a1[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    std::__split_buffer<std::vector<kaldi::CuMatrix<float>>>::~__split_buffer(v18);
  }
}

void **std::__split_buffer<std::vector<kaldi::CuMatrix<float>>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::vector<kaldi::CuMatrix<float>>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<kaldi::CuMatrix<float>>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v5);
  }
}

void *std::vector<kaldi::CuSubMatrix<float>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<kaldi::CuSubMatrix<float>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

uint64_t kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<short>>::Convolutional2DComponent<kaldi::QuantizedMatrix<signed char>>(uint64_t a1, uint64_t a2)
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
  kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<short>>::AssignMembers<kaldi::QuantizedMatrix<signed char>>(a1, a2);
  return a1;
}

void sub_1C30AB394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
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

void kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<short>>::AssignMembers<kaldi::QuantizedMatrix<signed char>>(uint64_t a1, uint64_t a2)
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

  std::unique_ptr<kaldi::QuantizedMatrix<short>>::reset[abi:ne200100]((a1 + 184), 0);
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

  kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<short>>::UpdateBNNSFilter(a1);
  if (*(a2 + 384) != *(a2 + 376))
  {
    kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<short>>::InitResidualAggregator(a1, (a1 + 376));
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

uint64_t kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<signed char>>::Convolutional2DComponent<kaldi::QuantizedMatrix<short>>(uint64_t a1, uint64_t a2)
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
  kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<signed char>>::AssignMembers<kaldi::QuantizedMatrix<short>>(a1, a2);
  return a1;
}

void sub_1C30AB884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
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

void kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<signed char>>::AssignMembers<kaldi::QuantizedMatrix<short>>(uint64_t a1, uint64_t a2)
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

double kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::ConvolutionalMaxPoolingComponent(uint64_t a1, int a2, int a3)
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
  *a1 = &unk_1F42C4C48;
  *(a1 + 88) = &unk_1F42C4D80;
  *(a1 + 96) = &unk_1F42C4DA8;
  result = 0.0;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 152) = 0u;
  __asm { FMOV            V1.2S, #1.0 }

  *(a1 + 264) = _D1;
  *(a1 + 272) = 0;
  *(a1 + 276) = 0;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 552) = 0;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
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
  return result;
}

uint64_t kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::ConvolutionalMaxPoolingComponent(uint64_t a1, uint64_t a2)
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
  *a1 = &unk_1F42C4C48;
  *(a1 + 88) = &unk_1F42C4D80;
  *(a1 + 96) = &unk_1F42C4DA8;
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
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v17, "ConvolutionalMaxPoolingComponent", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.cc", 77);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "deep copy constructor not implemented in the case of vectorized_weights.", 72);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v17);
  }

  v6 = *(a2 + 152);
  if (v6)
  {
    kaldi::NewCuSubOrMat<float>(v6, 0);
  }

  if (*(a2 + 160))
  {
    v7 = *(a1 + 16);
    kaldi::NewCuSubOrVec<float>();
  }

  v9 = *(a1 + 168);
  v8 = *(a1 + 176);
  if (v8 != v9)
  {
    v10 = 0;
    do
    {
      v11 = *(*(a2 + 168) + 8 * v10);
      if (v11)
      {
        kaldi::NewCuSubOrMat<float>(v11, *(a1 + 16));
      }

      ++v10;
    }

    while (v10 < (v8 - v9) >> 3);
  }

  v13 = *(a1 + 192);
  v12 = *(a1 + 200);
  if (v12 != v13)
  {
    v14 = 0;
    do
    {
      if (*(*(a2 + 192) + 8 * v14))
      {
        v15 = *(a1 + 16);
        kaldi::NewCuSubOrVec<float>();
      }

      ++v14;
    }

    while (v14 < (v12 - v13) >> 3);
  }

  if (*(a2 + 496) != *(a2 + 488))
  {
    kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::InitResidualAggregator(a1, (a1 + 488));
  }

  return a1;
}

void sub_1C30AC224(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _Unwind_Exception *exception_object, uint64_t a13, void *a14)
{
  kaldi::nnet1::QuantizerResidualAggregator::~QuantizerResidualAggregator(v16);
  v18 = *(v14 + 57);
  if (v18)
  {
    operator delete(v18);
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
  v19 = *(v14 + 39);
  if (v19)
  {
    *(v14 + 40) = v19;
    operator delete(v19);
  }

  v20 = *(v14 + 36);
  if (v20)
  {
    *(v14 + 37) = v20;
    operator delete(v20);
  }

  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&a14);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a14);
  std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a14);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a14);
  v21 = *(v14 + 20);
  *(v14 + 20) = 0;
  if (v21)
  {
    (*(*v21 + 16))(v21);
  }

  v22 = *v17;
  *v17 = 0;
  if (v22)
  {
    (*(*v22 + 24))(v22);
  }

  kaldi::CuMatrixBase<float>::~CuMatrixBase(v15);
  kaldi::CuMatrixBase<float>::~CuMatrixBase(a13);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v14);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::InitResidualAggregator(void *a1, uint64_t *a2)
{
  kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::EnsureCorrs(a1);
  v7 = kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::FiltersGrad(a1, ((a1[22] - a1[21]) >> 3) - 1, v4, v5, v6);
  kaldi::nnet1::QuantizerResidualAggregator::PushSetup(a2, v7);
  v11 = kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::BiasGrad(a1, ((a1[25] - a1[24]) >> 3) - 1, v8, v9, v10);

  return kaldi::nnet1::QuantizerResidualAggregator::PushSetup(a2, v11);
}

void kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::~ConvolutionalMaxPoolingComponent(uint64_t a1)
{
  *a1 = &unk_1F42C4C48;
  v2 = a1 + 88;
  *(a1 + 88) = &unk_1F42C4D80;
  v3 = a1 + 96;
  *(a1 + 96) = &unk_1F42C4DA8;
  kaldi::nnet1::QuantizerResidualAggregator::~QuantizerResidualAggregator((a1 + 488));
  v4 = *(a1 + 456);
  if (v4)
  {
    operator delete(v4);
  }

  v9 = (a1 + 432);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (a1 + 408);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (a1 + 384);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (a1 + 360);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (a1 + 336);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v5 = *(a1 + 312);
  if (v5)
  {
    *(a1 + 320) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 288);
  if (v6)
  {
    *(a1 + 296) = v6;
    operator delete(v6);
  }

  v9 = (a1 + 240);
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (a1 + 216);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (a1 + 192);
  std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (a1 + 168);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v7 = *(a1 + 160);
  *(a1 + 160) = 0;
  if (v7)
  {
    (*(*v7 + 16))(v7);
  }

  v8 = *(a1 + 152);
  *(a1 + 152) = 0;
  if (v8)
  {
    (*(*v8 + 24))(v8);
  }

  kaldi::CuMatrixBase<float>::~CuMatrixBase(v3);
  kaldi::CuMatrixBase<float>::~CuMatrixBase(v2);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(a1);
}

{
  kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::~ConvolutionalMaxPoolingComponent(a1);

  JUMPOUT(0x1C692AE10);
}

void non-virtual thunk tokaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::~ConvolutionalMaxPoolingComponent(uint64_t a1)
{
  kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::~ConvolutionalMaxPoolingComponent(a1 - 88);
}

{
  kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::~ConvolutionalMaxPoolingComponent(a1 - 96);
}

{
  kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::~ConvolutionalMaxPoolingComponent(a1 - 88);

  JUMPOUT(0x1C692AE10);
}

{
  kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::~ConvolutionalMaxPoolingComponent(a1 - 96);

  JUMPOUT(0x1C692AE10);
}

void kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::InitData(uint64_t a1, uint64_t *a2, kaldi::UniformRandomNumber *a3, uint64_t a4, const char *a5)
{
  v89 = 0x40000000;
  v90 = -1073741824;
  v88 = 1036831949;
  *(a1 + 116) = *(a1 + 8);
  v8 = (a1 + 116);
  *(a1 + 132) = 0x100000001;
  v9 = (a1 + 132);
  v87 = -1;
  memset(v86, 0, sizeof(v86));
  v10 = a2 + 4;
  v11 = (a1 + 280);
  v77 = (a1 + 136);
  v78 = (a1 + 264);
  v12 = (a1 + 124);
  v75 = (a1 + 120);
  v76 = (a1 + 128);
  v79 = (a1 + 268);
  v80 = (a1 + 112);
  v81 = (a1 + 108);
  v13 = (a1 + 104);
  while (1)
  {
    if ((*(v10 + *(*a2 - 24)) & 2) != 0)
    {
      v52 = *(a1 + 8);
      v53 = *(a1 + 12);
      v54 = *(a1 + 104);
      v55 = *(a1 + 108);
      v56 = *(a1 + 132);
      v57 = v52 / v54 - *(a1 + 128);
      v58 = *(a1 + 120);
      v59 = *(a1 + 136);
      v60 = (v58 - v56) / v59 + 1;
      *(a1 + 148) = v60;
      v61 = v55 * v60;
      v62 = v53 / v61;
      *(a1 + 140) = v57;
      *(a1 + 144) = v53 / v61;
      if (v56 >= 1 && v58 >= v56)
      {
        if (v59 > 0)
        {
          if (v53 == v61 * v62)
          {
            if (v52 == v52 / v54 * v54)
            {
              if (*v12 + *v80 * (v58 - 1) + *v8 * (v62 - 1) <= v57)
              {
                if (v87 >= 1)
                {
                  kaldi::UniformRandomNumber::SetRandomSeeds(a3, v87);
                }

                kaldi::GaussRandomNumber::GaussRandomNumber(v84, a3);
                kaldi::Matrix<float>::Matrix(v82, ((*(a1 + 128) + *(a1 + 124)) * *(a1 + 104)), (*(a1 + 144) * *(a1 + 108)), 0, 0);
                for (i = 0; i < kaldi::MatrixBase<float>::NumRows(v82); ++i)
                {
                  for (j = 0; j < kaldi::MatrixBase<float>::NumCols(v82); ++j)
                  {
                    v68 = *&v88;
                    kaldi::GaussRandomNumber::Rand(v84, 0, v65, v66, v67);
                    *(v82[0] + 4 * i * v83 + 4 * j) = v68 * v69;
                  }
                }

                if (!*(a1 + 152))
                {
                  operator new();
                }

                kaldi::KaldiErrorMessage::KaldiErrorMessage(v85, "InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.cc", 276);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v85, "pointer is thought to be un-initialized here", 44);
                kaldi::KaldiErrorMessage::~KaldiErrorMessage(v85);
              }

              kaldi::KaldiErrorMessage::KaldiErrorMessage(v85, "InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.cc", 262);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v85, "ConvolutionalMaxPoolingComponent: too few input bands to compute the output", 75);
              kaldi::KaldiErrorMessage::~KaldiErrorMessage(v85);
            }

            kaldi::KaldiErrorMessage::KaldiErrorMessage(v85, "InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.cc", 258);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v85, "ConvolutionalMaxPoolingComponent: input dim mismatch", 52);
            kaldi::KaldiErrorMessage::~KaldiErrorMessage(v85);
          }

          kaldi::KaldiErrorMessage::KaldiErrorMessage(v85, "InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.cc", 255);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v85, "ConvolutionalMaxPoolingComponent: output dim mismatch", 53);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(v85);
        }

        kaldi::KaldiErrorMessage::KaldiErrorMessage(v85, "InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.cc", 252);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v85, "ConvolutionalMaxPoolingComponent: Max pooling step must be >= 1", 63);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v85);
      }

      kaldi::KaldiErrorMessage::KaldiErrorMessage(v85, "InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.cc", 251);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v85, "ConvolutionalMaxPoolingComponent: Invalid max pooling size", 58);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v85);
    }

    kaldi::ReadToken(a2, 0, v86, a4, a5);
    if (SHIBYTE(v86[2]) < 0)
    {
      break;
    }

    if (HIBYTE(v86[2]) <= 0xCu)
    {
      if (HIBYTE(v86[2]) > 0xAu)
      {
        if (HIBYTE(v86[2]) != 11)
        {
          v25 = v86[0] == 0x537265746C69463CLL && LODWORD(v86[1]) == 1046837865;
          v16 = v12;
          if (v25)
          {
            goto LABEL_186;
          }

LABEL_163:
          v46 = v86;
          goto LABEL_180;
        }

        if (v86[0] != 0x6E6152736169423CLL || *(v86 + 3) != 0x3E65676E61527361)
        {
          v32 = v86[0] == 0x745368637461503CLL && *(v86 + 3) == 0x3E70657453686374;
          v16 = v80;
          if (!v32)
          {
            goto LABEL_205;
          }

          goto LABEL_186;
        }

LABEL_171:
        v23 = &v89;
        goto LABEL_187;
      }

      if (HIBYTE(v86[2]) == 9)
      {
        goto LABEL_164;
      }

      if (HIBYTE(v86[2]) != 10)
      {
        goto LABEL_205;
      }

      if (v86[0] != 0x61654D736169423CLL || LOWORD(v86[1]) != 15982)
      {
        v15 = v86[0] == 0x7A69536C6F6F503CLL && LOWORD(v86[1]) == 15973;
        v16 = v9;
        if (v15)
        {
          goto LABEL_186;
        }

        v17 = v86[0] == 0x6574536C6F6F503CLL && LOWORD(v86[1]) == 15984;
        v16 = v77;
        if (v17)
        {
          goto LABEL_186;
        }

LABEL_161:
        if (HIBYTE(v86[2]) != 9)
        {
          if (HIBYTE(v86[2]) != 12)
          {
            goto LABEL_205;
          }

          goto LABEL_163;
        }

LABEL_164:
        v47 = v86[0] == 0x6D726F4E78614D3CLL && LOBYTE(v86[1]) == 62;
        v23 = v11;
        if (!v47)
        {
          goto LABEL_205;
        }

        goto LABEL_187;
      }

LABEL_170:
      v23 = &v90;
      goto LABEL_187;
    }

    if (HIBYTE(v86[2]) > 0xFu)
    {
      if (HIBYTE(v86[2]) == 16)
      {
        v24 = v86[0] == 0x7461654674754F3CLL && v86[1] == 0x3E7370614D657275;
        goto LABEL_95;
      }

      if (HIBYTE(v86[2]) != 19 || (v86[0] == 0x61654C736169423CLL ? (v26 = v86[1] == 0x6F43657461526E72) : (v26 = 0), v26 ? (v27 = *(&v86[1] + 3) == 0x3E66656F43657461) : (v27 = 0), v23 = v79, !v27))
      {
LABEL_205:
        kaldi::KaldiErrorMessage::KaldiErrorMessage(v85, "InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.cc", 239);
        v70 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v85, "Unknown token ", 14);
        if (v86[2] >= 0)
        {
          v71 = v86;
        }

        else
        {
          v71 = v86[0];
        }

        if (v86[2] >= 0)
        {
          v72 = HIBYTE(v86[2]);
        }

        else
        {
          v72 = v86[1];
        }

        v73 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v70, v71, v72);
        v74 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v73, ", a typo in config?", 19);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v74, " (ParamStddev|BiasMean|BiasRange|InFeatureMaps|OutFeatureMaps|PatchStep|SectionStep|SectionSize|FilterSize|LearnRateCoef|BiasLearnRateCoef|MaxNorm|RandomSeed)", 158);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v85);
      }
    }

    else
    {
      if (HIBYTE(v86[2]) == 13)
      {
        if (v86[0] != 0x74536D617261503CLL || *(v86 + 5) != 0x3E7665646474536DLL)
        {
          v29 = v86[0] == 0x6E6F69746365533CLL && *(v86 + 5) == 0x3E706574536E6F69;
          v16 = v8;
          if (!v29)
          {
            v30 = v86[0] == 0x6E6F69746365533CLL && *(v86 + 5) == 0x3E657A69536E6F69;
            v16 = v75;
            if (!v30)
            {
              goto LABEL_205;
            }
          }

          goto LABEL_186;
        }

LABEL_169:
        v23 = &v88;
        goto LABEL_187;
      }

      if (HIBYTE(v86[2]) != 15)
      {
        goto LABEL_205;
      }

      v20 = v86[0] == 0x75746165466E493CLL && *(v86 + 7) == 0x3E7370614D657275;
      v16 = v13;
      if (v20)
      {
        goto LABEL_186;
      }

      v21 = v86[0] == 0x65726168536E493CLL && *(v86 + 7) == 0x3E73646E61426465;
      v16 = v76;
      if (v21)
      {
        goto LABEL_186;
      }

      v22 = v86[0] == 0x61526E7261654C3CLL && *(v86 + 7) == 0x3E66656F43657461;
      v23 = v78;
      if (!v22)
      {
        goto LABEL_205;
      }
    }

LABEL_187:
    kaldi::ReadBasicType<float>(a2, 0, v23);
LABEL_188:
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }

  v18 = v86[1];
  if (v86[1] > 12)
  {
    switch(v86[1])
    {
      case 0xDLL:
        if (*v86[0] == 0x74536D617261503CLL && *(v86[0] + 5) == 0x3E7665646474536DLL)
        {
          goto LABEL_169;
        }

        v36 = *v86[0] == 0x6E6F69746365533CLL && *(v86[0] + 5) == 0x3E706574536E6F69;
        v16 = v8;
        if (v36)
        {
          goto LABEL_186;
        }

        v37 = *v86[0] == 0x6E6F69746365533CLL && *(v86[0] + 5) == 0x3E657A69536E6F69;
        v16 = v75;
        if (v37)
        {
          goto LABEL_186;
        }

        break;
      case 0xFLL:
        v40 = *v86[0] == 0x75746165466E493CLL && *(v86[0] + 7) == 0x3E7370614D657275;
        v16 = v13;
        if (v40)
        {
          goto LABEL_186;
        }

        v41 = *v86[0] == 0x65726168536E493CLL && *(v86[0] + 7) == 0x3E73646E61426465;
        v16 = v76;
        if (v41)
        {
          goto LABEL_186;
        }

        break;
      case 0x10:
        v24 = *v86[0] == 0x7461654674754F3CLL && *(v86[0] + 8) == 0x3E7370614D657275;
LABEL_95:
        v16 = v81;
        if (!v24)
        {
          goto LABEL_205;
        }

        goto LABEL_186;
      default:
        goto LABEL_145;
    }
  }

  else
  {
    switch(v86[1])
    {
      case 0xALL:
        if (*v86[0] == 0x61654D736169423CLL && *(v86[0] + 8) == 15982)
        {
          goto LABEL_170;
        }

        v34 = *v86[0] == 0x7A69536C6F6F503CLL && *(v86[0] + 8) == 15973;
        v16 = v9;
        if (v34)
        {
          goto LABEL_186;
        }

        break;
      case 0xBLL:
        if (*v86[0] == 0x6E6152736169423CLL && *(v86[0] + 3) == 0x3E65676E61527361)
        {
          goto LABEL_171;
        }

        v39 = *v86[0] == 0x745368637461503CLL && *(v86[0] + 3) == 0x3E70657453686374;
        v16 = v80;
        if (v39)
        {
          goto LABEL_186;
        }

        break;
      case 0xCLL:
        v19 = *v86[0] == 0x537265746C69463CLL && *(v86[0] + 8) == 1046837865;
        v16 = v12;
        if (v19)
        {
          goto LABEL_186;
        }

        break;
      default:
LABEL_145:
        if (v18 == 15)
        {
          v43 = *v86[0] == 0x61526E7261654C3CLL && *(v86[0] + 7) == 0x3E66656F43657461;
          v23 = v78;
          if (v43)
          {
            goto LABEL_187;
          }

          if ((v86[2] & 0x8000000000000000) == 0)
          {
            goto LABEL_161;
          }
        }

        if (v86[1] == 9)
        {
          v48 = *v86[0] == 0x6D726F4E78614D3CLL && *(v86[0] + 8) == 62;
          v23 = v11;
          if (!v48)
          {
            if ((v86[2] & 0x8000000000000000) == 0)
            {
              goto LABEL_205;
            }

LABEL_178:
            if (v86[1] != 12)
            {
              goto LABEL_205;
            }

            v46 = v86[0];
LABEL_180:
            v49 = *v46;
            v50 = *(v46 + 2);
            if (v49 != 0x536D6F646E61523CLL || v50 != 1046766949)
            {
              goto LABEL_205;
            }

            v16 = &v87;
LABEL_186:
            kaldi::ReadBasicType<int>(a2, 0, v16);
            goto LABEL_188;
          }
        }

        else
        {
          if (v86[1] != 19)
          {
            goto LABEL_178;
          }

          v45 = *v86[0] == 0x61654C736169423CLL && *(v86[0] + 8) == 0x6F43657461526E72 && *(v86[0] + 11) == 0x3E66656F43657461;
          v23 = v79;
          if (!v45)
          {
            if ((v86[2] & 0x8000000000000000) != 0)
            {
              goto LABEL_178;
            }

            goto LABEL_161;
          }
        }

        goto LABEL_187;
    }
  }

  v18 = v86[1];
  if (v86[1] == 10)
  {
    v42 = *v86[0] == 0x6574536C6F6F503CLL && *(v86[0] + 8) == 15984;
    v16 = v77;
    if (v42)
    {
      goto LABEL_186;
    }

    v18 = v86[1];
  }

  goto LABEL_145;
}

void sub_1C30AD608(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  if (*(v24 - 121) < 0)
  {
    operator delete(*(v24 - 144));
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::ReadData(uint64_t a1, uint64_t *a2, int a3)
{
  *(a1 + 116) = *(a1 + 8);
  v6 = a1 + 116;
  *(a1 + 132) = 0x100000001;
  v7 = a1 + 132;
  v53 = a1 + 136;
  if (kaldi::Peek(a2, a3) != 60)
  {
LABEL_151:
    v44 = *(a1 + 12);
    v45 = *(a1 + 108);
    v46 = *(a1 + 8) / *(a1 + 104) - *(a1 + 128);
    v47 = (*(a1 + 120) - *(a1 + 132)) / *(a1 + 136) + 1;
    *(a1 + 148) = v47;
    *(a1 + 16) = 0;
    *(a1 + 140) = v46;
    *(a1 + 144) = v44 / (v45 * v47);
    LOBYTE(v56) = 0;
    kaldi::ReadBasicType<char>(a2, a3, &v56);
    if (!*(a1 + 152))
    {
      kaldi::ExpectToken(a2, a3, "<Filters>");
      v48 = ((*(a1 + 128) + *(a1 + 124)) * *(a1 + 104));
      v49 = (*(a1 + 144) * *(a1 + 108));
      operator new();
    }

    kaldi::KaldiErrorMessage::KaldiErrorMessage(__p, "ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.cc", 349);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(__p, "pointer is thought to be un-initialized here");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
  }

  while (1)
  {
    v56 = 0uLL;
    v57 = 0;
    kaldi::ReadToken(a2, a3, &v56, v8, v9);
    if (SHIBYTE(v57) < 0)
    {
      if (*(&v56 + 1) == 15)
      {
        v13 = *v56 == 0x75746165466E493CLL && *(v56 + 7) == 0x3E7370614D657275;
        v11 = a1 + 104;
        if (v13)
        {
          goto LABEL_141;
        }
      }

      if (*(&v56 + 1) == 16)
      {
        v14 = *v56 == 0x7461654674754F3CLL && *(v56 + 8) == 0x3E7370614D657275;
        v11 = a1 + 108;
        if (v14)
        {
          goto LABEL_141;
        }
      }

      if (*(&v56 + 1) == 13)
      {
        v16 = *v56 == 0x6E6F69746365533CLL && *(v56 + 5) == 0x3E706574536E6F69;
        v11 = v6;
        if (v16)
        {
          goto LABEL_141;
        }
      }

      else if (*(&v56 + 1) == 11)
      {
        v15 = *v56 == 0x745368637461503CLL && *(v56 + 3) == 0x3E70657453686374;
        v11 = a1 + 112;
        if (v15)
        {
          goto LABEL_141;
        }
      }

      v17 = *(&v56 + 1);
      if (*(&v56 + 1) == 13)
      {
        v18 = *v56 == 0x6E6F69746365533CLL && *(v56 + 5) == 0x3E657A69536E6F69;
        v11 = a1 + 120;
        if (v18)
        {
          goto LABEL_141;
        }

        v17 = *(&v56 + 1);
      }

      if (v17 == 12)
      {
        v19 = *v56 == 0x537265746C69463CLL && *(v56 + 8) == 1046837865;
        v11 = a1 + 124;
        if (v19)
        {
          goto LABEL_141;
        }

        if ((v57 & 0x8000000000000000) == 0)
        {
          goto LABEL_57;
        }
      }

      if (*(&v56 + 1) == 10)
      {
        v35 = *v56 == 0x7A69536C6F6F503CLL && *(v56 + 8) == 15973;
        v11 = v7;
        if (v35)
        {
          goto LABEL_141;
        }

        if ((v57 & 0x8000000000000000) == 0)
        {
          if (HIBYTE(v57) == 19)
          {
            goto LABEL_71;
          }

          if (HIBYTE(v57) == 15)
          {
            goto LABEL_121;
          }

          if (HIBYTE(v57) != 10)
          {
            goto LABEL_142;
          }

          goto LABEL_94;
        }
      }

      else if (*(&v56 + 1) == 15)
      {
        v20 = *v56 == 0x65726168536E493CLL && *(v56 + 7) == 0x3E73646E61426465;
        v11 = a1 + 128;
        if (v20)
        {
          goto LABEL_141;
        }

        if ((v57 & 0x8000000000000000) == 0)
        {
LABEL_57:
          if (HIBYTE(v57) != 10)
          {
            if (HIBYTE(v57) == 15)
            {
LABEL_121:
              v36 = v56 == 0x61526E7261654C3CLL && *(&v56 + 7) == 0x3E66656F43657461;
              v28 = (a1 + 264);
              if (!v36)
              {
                goto LABEL_142;
              }

              goto LABEL_147;
            }

LABEL_70:
            if (HIBYTE(v57) != 19)
            {
              goto LABEL_142;
            }

LABEL_71:
            v22 = &v56;
            goto LABEL_72;
          }

LABEL_90:
          v31 = v56 == 0x7A69536C6F6F503CLL && WORD4(v56) == 15973;
          v11 = v7;
          if (v31)
          {
            goto LABEL_141;
          }

LABEL_94:
          v32 = v56 == 0x6574536C6F6F503CLL && WORD4(v56) == 15984;
          v11 = v53;
          if (!v32)
          {
            goto LABEL_142;
          }

          goto LABEL_141;
        }
      }

      v37 = *(&v56 + 1);
      if (*(&v56 + 1) != 10)
      {
        goto LABEL_133;
      }

      v38 = *v56 == 0x6574536C6F6F503CLL && *(v56 + 8) == 15984;
      v11 = v53;
      if (!v38)
      {
        v37 = *(&v56 + 1);
LABEL_133:
        if (v37 == 15)
        {
          v39 = *v56 == 0x61526E7261654C3CLL && *(v56 + 7) == 0x3E66656F43657461;
          v28 = (a1 + 264);
          if (!v39)
          {
            if (v57 < 0)
            {
              goto LABEL_139;
            }

LABEL_142:
            v40 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v56, "<MaxNorm>");
            v28 = (a1 + 280);
            if (!v40)
            {
              if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v56, "<GradientNormType>"))
              {
                __p[0] = 0;
                __p[1] = 0;
                v55 = 0;
                kaldi::ReadToken(a2, a3, __p, v41, v42);
                *(a1 + 272) = kaldi::nnet1::Component::MarkerToGradientNormType(__p);
                if (SHIBYTE(v55) < 0)
                {
                  operator delete(__p[0]);
                }

                goto LABEL_148;
              }

              v43 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v56, "<MaxGrad>");
              v28 = (a1 + 276);
              if (!v43)
              {
                kaldi::KaldiErrorMessage::KaldiErrorMessage(__p, "ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.cc", 333);
                v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "unrecognized config token ", 26);
                if (v57 >= 0)
                {
                  v51 = &v56;
                }

                else
                {
                  v51 = v56;
                }

                if (v57 >= 0)
                {
                  v52 = HIBYTE(v57);
                }

                else
                {
                  v52 = *(&v56 + 1);
                }

                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, v51, v52);
                kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
              }
            }
          }

LABEL_147:
          kaldi::ReadBasicType<float>(a2, a3, v28);
          goto LABEL_148;
        }

LABEL_139:
        if (*(&v56 + 1) != 19)
        {
          goto LABEL_142;
        }

        v22 = v56;
LABEL_72:
        v23 = *v22;
        v24 = v22[1];
        v25 = *(v22 + 11);
        v27 = v23 == 0x61654C736169423CLL && v24 == 0x6F43657461526E72 && v25 == 0x3E66656F43657461;
        v28 = (a1 + 268);
        if (!v27)
        {
          goto LABEL_142;
        }

        goto LABEL_147;
      }
    }

    else if (HIBYTE(v57) <= 0xCu)
    {
      if (HIBYTE(v57) == 10)
      {
        goto LABEL_90;
      }

      if (HIBYTE(v57) != 11)
      {
        goto LABEL_62;
      }

      v34 = v56 == 0x745368637461503CLL && *(&v56 + 3) == 0x3E70657453686374;
      v11 = a1 + 112;
      if (!v34)
      {
        goto LABEL_142;
      }
    }

    else if (HIBYTE(v57) > 0xFu)
    {
      if (HIBYTE(v57) != 16)
      {
        goto LABEL_70;
      }

      v33 = v56 == 0x7461654674754F3CLL && *(&v56 + 1) == 0x3E7370614D657275;
      v11 = a1 + 108;
      if (!v33)
      {
        goto LABEL_142;
      }
    }

    else
    {
      if (HIBYTE(v57) == 13)
      {
        v29 = v56 == 0x6E6F69746365533CLL && *(&v56 + 5) == 0x3E706574536E6F69;
        v11 = v6;
        if (v29)
        {
          goto LABEL_141;
        }

        v30 = v56 == 0x6E6F69746365533CLL && *(&v56 + 5) == 0x3E657A69536E6F69;
        v11 = a1 + 120;
        if (v30)
        {
          goto LABEL_141;
        }

LABEL_62:
        if (HIBYTE(v57) != 12)
        {
          goto LABEL_142;
        }

        v21 = v56 == 0x537265746C69463CLL && DWORD2(v56) == 1046837865;
        v11 = a1 + 124;
        if (!v21)
        {
          goto LABEL_142;
        }

        goto LABEL_141;
      }

      if (HIBYTE(v57) != 15)
      {
        goto LABEL_142;
      }

      v10 = v56 == 0x75746165466E493CLL && *(&v56 + 7) == 0x3E7370614D657275;
      v11 = a1 + 104;
      if (!v10)
      {
        v12 = v56 == 0x65726168536E493CLL && *(&v56 + 7) == 0x3E73646E61426465;
        v11 = a1 + 128;
        if (!v12)
        {
          goto LABEL_121;
        }
      }
    }

LABEL_141:
    kaldi::ReadBasicType<int>(a2, a3, v11);
LABEL_148:
    if (SHIBYTE(v57) < 0)
    {
      operator delete(v56);
    }

    if (kaldi::Peek(a2, a3) != 60)
    {
      goto LABEL_151;
    }
  }
}

void sub_1C30AE248(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (*(v24 - 89) < 0)
  {
    operator delete(*(v24 - 112));
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::ReadBasicType<char>(void *a1, int a2, _BYTE *a3)
{
  v18[51] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v5 = std::istream::get();
    if (v5 == -1)
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v18, "ReadBasicType", "../engine/common/libquasar/libkaldi/src/base/io-funcs-inl.h", 72);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v18, "ReadBasicType: encountered end of stream.");
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v18);
    }

    v6 = v5;
    if (v5 << 24 != 0x1000000)
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v18, "ReadBasicType", "../engine/common/libquasar/libkaldi/src/base/io-funcs-inl.h", 76);
      v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "ReadBasicType: did not get expected integer type, ", 50);
      v14 = MEMORY[0x1C692A960](v13, v6);
      v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " vs. ", 5);
      v16 = MEMORY[0x1C692A960](v15, 1);
      v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, ".  You can change this code to successfully", 43);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v17, " read it later, if needed.");
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v18);
    }

    result = std::istream::read();
  }

  else
  {
    LOWORD(v18[0]) = 0;
    result = MEMORY[0x1C692A8A0](a1, v18);
    *a3 = v18[0];
  }

  if ((*(a1 + *(*a1 - 24) + 32) & 5) != 0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v18, "ReadBasicType", "../engine/common/libquasar/libkaldi/src/base/io-funcs-inl.h", 92);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "Read failure in ReadBasicType, file position is ", 48);
    std::istream::tellg();
    v10 = MEMORY[0x1C692A9A0](v9, v18[50]);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ", next char is ", 15);
    v12 = std::istream::peek();
    MEMORY[0x1C692A960](v11, v12);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v18);
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C30AE4C4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void *kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::WriteConfig(unsigned int *a1, void *a2, const char *a3, uint64_t a4, const char *a5)
{
  kaldi::WriteToken(a2, a3, "<InFeatureMaps>", a4, a5);
  kaldi::WriteBasicType<int>(a2, a3, a1[26]);
  kaldi::WriteToken(a2, a3, "<OutFeatureMaps>", v8, v9);
  kaldi::WriteBasicType<int>(a2, a3, a1[27]);
  kaldi::WriteToken(a2, a3, "<PatchStep>", v10, v11);
  kaldi::WriteBasicType<int>(a2, a3, a1[28]);
  kaldi::WriteToken(a2, a3, "<SectionStep>", v12, v13);
  kaldi::WriteBasicType<int>(a2, a3, a1[29]);
  kaldi::WriteToken(a2, a3, "<SectionSize>", v14, v15);
  kaldi::WriteBasicType<int>(a2, a3, a1[30]);
  kaldi::WriteToken(a2, a3, "<FilterSize>", v16, v17);
  kaldi::WriteBasicType<int>(a2, a3, a1[31]);
  kaldi::WriteToken(a2, a3, "<InSharedBands>", v18, v19);
  kaldi::WriteBasicType<int>(a2, a3, a1[32]);
  kaldi::WriteToken(a2, a3, "<PoolSize>", v20, v21);
  kaldi::WriteBasicType<int>(a2, a3, a1[33]);
  kaldi::WriteToken(a2, a3, "<PoolStep>", v22, v23);
  kaldi::WriteBasicType<int>(a2, a3, a1[34]);
  kaldi::WriteToken(a2, a3, "<LearnRateCoef>", v24, v25);
  v26 = a1[66];
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<BiasLearnRateCoef>", v27, v28);
  v29 = a1[67];
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<MaxNorm>", v30, v31);
  v32 = a1[70];
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<GradientNormType>", v33, v34);
  kaldi::nnet1::Component::TypeToMarker(a1[68], &__p);
  kaldi::WriteToken(a2, a3, &__p, v35, v36);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  kaldi::WriteToken(a2, a3, "<MaxGrad>", v37, v38);
  v39 = a1[69];
  return kaldi::WriteBasicType<float>(a2, a3);
}

void sub_1C30AE71C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::WriteData(void *a1, void *a2, const char *a3, int a4)
{
  (*(*a1 + 168))(a1);
  kaldi::WriteBasicType<char>(a2, a3, 0);
  kaldi::WriteToken(a2, a3, "<Filters>", v8, v9);
  v11 = a1[19];
  if (!v11)
  {
    kaldi::KaldiAssertFailure_("Filters", "../engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h", 0xE4, "filters_", v10);
  }

  kaldi::CuMatrixBase<float>::Write(v11, a2, a3, a4);
  kaldi::WriteToken(a2, a3, "<Bias>", v12, v13);
  v16 = a1[20];
  if (!v16)
  {
    kaldi::KaldiAssertFailure_("Bias", "../engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h", 0xEC, "bias_", v15);
  }

  kaldi::CuVectorBase<float>::Write(v16, a2, a3, v14, v15);
}

uint64_t kaldi::WriteBasicType<char>(void *a1, int a2, uint64_t a3)
{
  if (a2)
  {
    std::ostream::put();
    result = std::ostream::write();
  }

  else
  {
    v5 = MEMORY[0x1C692A990](a1, a3);
    result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, " ", 1);
  }

  if ((*(a1 + *(*a1 - 24) + 32) & 5) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Write failure in WriteBasicType.");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return result;
}

uint64_t kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::NumParams(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *(a1 + 152);
  if (!v5)
  {
    kaldi::KaldiAssertFailure_("Filters", "../engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h", 0xE4, "filters_", a5);
  }

  v6 = *(a1 + 160);
  if (!v6)
  {
    kaldi::KaldiAssertFailure_("Bias", "../engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h", 0xEC, "bias_", a5);
  }

  return (*(v6 + 16) + *(v5 + 16) * *(v5 + 20));
}

_DWORD *kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::GetParams(void *a1, uint64_t a2)
{
  v4 = (*(*a1 + 176))(a1);
  kaldi::Vector<float>::Resize(a2, v4, 0, v5, v6);
  v10 = a1[19];
  if (!v10)
  {
    kaldi::KaldiAssertFailure_("Filters", "../engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h", 0xE4, "filters_", v9);
  }

  v11 = *(v10 + 16) * *(v10 + 20);
  v18 = 0;
  v19 = 0;
  if (v11 > *(a2 + 8))
  {
    goto LABEL_6;
  }

  v17 = *a2;
  LODWORD(v18) = v11;
  kaldi::VectorBase<float>::CopyRowsFromMat(&v17, v10, v7, v8, v9);
  v14 = a1[20];
  if (!v14)
  {
    kaldi::KaldiAssertFailure_("Bias", "../engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h", 0xEC, "bias_", v9);
  }

  v15 = v14[4];
  v18 = 0;
  v19 = 0;
  if ((v15 + v11) > *(a2 + 8))
  {
LABEL_6:
    kaldi::KaldiAssertFailure_("SubVector", "../engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.h", 0x264, "static_cast<UnsignedMatrixIndexT>(origin) + static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v9);
  }

  v17 = (*a2 + 4 * v11);
  LODWORD(v18) = v15;
  return kaldi::CuVectorBase<float>::CopyToVec<float>(v14, &v17, v12, v13, v9);
}

_DWORD *kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::SetParams(void *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4 != (*(*a1 + 176))(a1))
  {
    kaldi::KaldiAssertFailure_("SetParams", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.cc", 0x328, "wei_src.Dim() == NumParams()", v5);
  }

  v6 = a1[19];
  if (!v6)
  {
    kaldi::KaldiAssertFailure_("Filters", "../engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h", 0xE8, "filters_", v5);
  }

  v7 = *(v6 + 16) * *(v6 + 20);
  v14 = 0;
  v15 = 0;
  if (v7 > *(a2 + 8))
  {
    goto LABEL_7;
  }

  v13 = *a2;
  LODWORD(v14) = v7;
  kaldi::CuMatrixBase<float>::CopyRowsFromVec(v6, &v13);
  v10 = a1[20];
  if (!v10)
  {
    kaldi::KaldiAssertFailure_("Bias", "../engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h", 0xF0, "bias_", v5);
  }

  v11 = v10[4];
  v14 = 0;
  v15 = 0;
  if ((v11 + v7) > *(a2 + 8))
  {
LABEL_7:
    kaldi::KaldiAssertFailure_("SubVector", "../engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.h", 0x264, "static_cast<UnsignedMatrixIndexT>(origin) + static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v5);
  }

  v13 = (*a2 + 4 * v7);
  LODWORD(v14) = v11;
  return kaldi::CuVectorBase<float>::CopyFromVec<float>(v10, &v13, v8, v9, v5);
}

float kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::GetNormalizedLearningRate(uint64_t a1, int a2)
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

float kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::SumParams(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *(a1 + 152);
  if (!v6)
  {
    kaldi::KaldiAssertFailure_("Filters", "../engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h", 0xE4, "filters_", a5);
  }

  v8 = kaldi::CuMatrixBase<float>::Sum(v6, a2, a3, a4, a5);
  v9 = *(a1 + 160);
  if (!v9)
  {
    kaldi::KaldiAssertFailure_("Bias", "../engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h", 0xEC, "bias_", v7);
  }

  v10 = v8;
  v11 = kaldi::CuVectorBase<float>::Sum(v9);
  return v10 + *&v11;
}

uint64_t kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::PerturbParams(uint64_t a1, float a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6)
{
  v6 = *(a1 + 152);
  if (!v6)
  {
    kaldi::KaldiAssertFailure_("Filters", "../engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h", 0xE8, "filters_", a6);
  }

  kaldi::CuMatrix<float>::CuMatrix(v21, *(v6 + 20), *(v6 + 16), 1u, 0, 0);
  kaldi::CuMatrixBase<float>::SetRandn(v21);
  v11 = *(a1 + 152);
  if (!v11)
  {
    kaldi::KaldiAssertFailure_("Filters", "../engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h", 0xE8, "filters_", v10);
  }

  kaldi::CuMatrixBase<float>::AddMat(v11, v21, 111, v9, v10, a2, 1.0);
  v13 = *(a1 + 160);
  if (!v13)
  {
    kaldi::KaldiAssertFailure_("Bias", "../engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h", 0xF0, "bias_", v12);
  }

  kaldi::CuVector<float>::CuVector(v20, v13);
  kaldi::CuVectorBase<float>::SetRandn(v20);
  v18 = *(a1 + 160);
  if (!v18)
  {
    kaldi::KaldiAssertFailure_("Bias", "../engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h", 0xF0, "bias_", v16);
  }

  *&v17 = a2;
  kaldi::CuVectorBase<float>::AddVec(v18, v20, v14, v15, v16, v17, 1.0);
  kaldi::CuVector<float>::~CuVector(v20);
  return kaldi::CuMatrix<float>::~CuMatrix(v21);
}

void sub_1C30AEE20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  kaldi::CuMatrix<float>::~CuMatrix(va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::Info(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v32, " ");
  kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::ParamsString(a1);
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
    kaldi::KaldiAssertFailure_("Filters", "../engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h", 0xE4, "filters_", v9);
  }

  kaldi::nnet1::MomentStatistics<float>(v11);
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
    kaldi::KaldiAssertFailure_("Bias", "../engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h", 0xEC, "bias_", v20);
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

void sub_1C30AF084(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
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

uint64_t kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::ParamsString(unsigned int *a1)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v6);
  (*(*a1 + 168))(a1, &v6, 0);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, " , # of sections: ", 18);
  v3 = MEMORY[0x1C692A960](v2, a1[36]);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, ", section size after pooling: ", 30);
  MEMORY[0x1C692A960](v4, a1[37]);
  std::stringbuf::str();
  v6 = *MEMORY[0x1E69E54E8];
  *(&v6 + *(v6 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v7 = MEMORY[0x1E69E5548] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v8);
  std::ostream::~ostream();
  return MEMORY[0x1C692AD30](&v10);
}

void sub_1C30AF2F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::InfoGradient(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v57, " ");
  kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::ParamsString(a1);
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

void sub_1C30AF6DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57, uint64_t a58, void *a59, uint64_t a60, int a61, __int16 a62, char a63)
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

void kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::PropagateFncDirect(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
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
          kaldi::KaldiAssertFailure_("Filters", "../engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h", 0xE8, "filters_", v11);
        }

        kaldi::CuSubMatrix<float>::CuSubMatrix(&v39, v12, *(a1 + 104) * *(a1 + 124), *(a1 + 128) * *(a1 + 104), (*(a1 + 108) * v9), *(a1 + 108));
        kaldi::CuMatrixBase<float>::AddMatMat(&v45, &v42, 111, &v39, 0x6F);
        v13 = *(a1 + 120);
        if (v13 >= 2)
        {
          for (i = 1; i < v13; ++i)
          {
            kaldi::CuSubMatrix<float>::CuSubMatrix(&v36, a3, 0, *(a3 + 20), (*(a1 + 108) * (i + v9 * v13)), *(a1 + 108));
            kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v36, &v45, 111, v15, v16);
            v36 = &unk_1F42BFE90;
            v37 = 0u;
            v38 = 0u;
            kaldi::CuMatrixBase<float>::~CuMatrixBase(&v36);
            v13 = *(a1 + 120);
          }
        }

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
        kaldi::CuMatrixBase<float>::~CuMatrixBase(&v45);
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
            kaldi::KaldiAssertFailure_("Bias", "../engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h", 0xF0, "bias_", v19);
          }

          kaldi::CuSubVector<float>::CuSubVector(&v42, v20, *(a1 + 108) * v9, *(a1 + 108), v19);
          kaldi::CuMatrixBase<float>::AddVecToRows(&v45, &v42, v21, v22, v23, 1.0, v8);
          kaldi::CuSubMatrix<float>::CuSubMatrix(&v42, a2, 0, *(a2 + 20), ((*(a1 + 116) * v9 + *(a1 + 112) * v17) * *(a1 + 104)), *(a1 + 124) * *(a1 + 104));
          v25 = *(a1 + 152);
          if (!v25)
          {
            kaldi::KaldiAssertFailure_("Filters", "../engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h", 0xE8, "filters_", v24);
          }

          kaldi::CuSubMatrix<float>::CuSubMatrix(&v39, v25, 0, *(a1 + 104) * *(a1 + 124), (*(a1 + 108) * v9), *(a1 + 108));
          kaldi::CuMatrixBase<float>::AddMatMat(&v45, &v42, 111, &v39, 0x6F);
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
          kaldi::CuMatrixBase<float>::~CuMatrixBase(&v45);
          ++v17;
        }

        while (v17 < *(a1 + 120));
      }

      v26 = *(a1 + 148);
      if (v26 >= 1)
      {
        for (j = 0; j < v26; ++j)
        {
          kaldi::CuSubMatrix<float>::CuSubMatrix(&v45, a3, 0, *(a3 + 20), (*(a1 + 108) * (j + v26 * v9)), *(a1 + 108));
          v28 = *(a1 + 384) + 48 * a4;
          kaldi::CuSubMatrix<float>::CuSubMatrix(&v42, v28, 0, *(v28 + 20), (*(a1 + 136) * j * *(a1 + 108)), *(a1 + 108));
          kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v45, &v42, 111, v29, v30);
          v42 = &unk_1F42BFE90;
          v43 = 0u;
          v44 = 0u;
          kaldi::CuMatrixBase<float>::~CuMatrixBase(&v42);
          if (*(a1 + 132) >= 2)
          {
            v31 = 1;
            do
            {
              v32 = *(a1 + 384) + 48 * a4;
              kaldi::CuSubMatrix<float>::CuSubMatrix(&v42, v32, 0, *(v32 + 20), ((v31 + j * *(a1 + 136)) * *(a1 + 108)), *(a1 + 108));
              kaldi::CuMatrixBase<float>::Max(&v45, &v42, v33, v34, v35);
              v42 = &unk_1F42BFE90;
              v43 = 0u;
              v44 = 0u;
              kaldi::CuMatrixBase<float>::~CuMatrixBase(&v42);
              ++v31;
            }

            while (v31 < *(a1 + 132));
          }

          v45 = &unk_1F42BFE90;
          v46 = 0u;
          v47 = 0u;
          kaldi::CuMatrixBase<float>::~CuMatrixBase(&v45);
          v26 = *(a1 + 148);
        }
      }

      ++v9;
    }

    while (v9 < *(a1 + 144));
  }
}

void sub_1C30AFE3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25)
{
  a20 = &unk_1F42BFE90;
  *(v26 + 8) = 0u;
  *(v26 + 24) = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&a20);
  a25 = &unk_1F42BFE90;
  *(v25 + 8) = 0u;
  *(v25 + 24) = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&a25);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::GetGradient(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = (*(*a1 + 16))(a1);
  kaldi::CuMatrix<float>::CuMatrix(v42, *(a3 + 20), *(a3 + 16), 0, 0, 0);
  kaldi::CuMatrix<float>::CuMatrix(v41, *(a2 + 20), *(a2 + 16), 0, 0, 0);
  (*(*v8 + 112))(v8, a2, v42, 0);
  (*(*v8 + 128))(v8, a2, v42, a3, v41, 0);
  (*(*v8 + 232))(v8, a2, a3, 0, 0);
  v10 = a1[19];
  if (!v10)
  {
    kaldi::KaldiAssertFailure_("Filters", "../engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h", 0xE4, "filters_", v9);
  }

  v12 = *(v10 + 16);
  v11 = *(v10 + 20);
  v13 = (*(*a1 + 176))(a1);
  kaldi::Vector<float>::Resize(a4, v13, 1, v14, v15);
  v19 = v12 * v11;
  v39 = 0;
  v40 = 0;
  if (v19 > *(a4 + 8))
  {
    kaldi::KaldiAssertFailure_("SubVector", "../engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.h", 0x264, "static_cast<UnsignedMatrixIndexT>(origin) + static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v18);
  }

  v38 = *a4;
  LODWORD(v39) = v19;
  v20 = kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::FiltersGrad(v8, 0, v16, v17, v18);
  kaldi::VectorBase<float>::CopyRowsFromMat(&v38, v20, v21, v22, v23);
  v27 = a1[20];
  if (!v27)
  {
    v34 = "bias_";
    v35 = 236;
    v36 = "../engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h";
    v37 = "Bias";
    goto LABEL_10;
  }

  v28 = *(v27 + 16);
  v39 = 0;
  v40 = 0;
  if ((v28 + v19) > *(a4 + 8))
  {
    v34 = "static_cast<UnsignedMatrixIndexT>(origin) + static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())";
    v35 = 612;
    v36 = "../engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.h";
    v37 = "SubVector";
LABEL_10:
    kaldi::KaldiAssertFailure_(v37, v36, v35, v34, v26);
  }

  v38 = (*a4 + 4 * v19);
  LODWORD(v39) = v28;
  v29 = kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::BiasGrad(v8, 0, v24, v25, v26);
  kaldi::CuVectorBase<float>::CopyToVec<float>(v29, &v38, v30, v31, v32);
  (*(*v8 + 8))(v8);
  kaldi::CuMatrix<float>::~CuMatrix(v41);
  return kaldi::CuMatrix<float>::~CuMatrix(v42);
}

void sub_1C30B0230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
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

uint64_t kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::FiltersGrad(uint64_t a1, int a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *(a1 + 168);
  if (a2 >= ((*(a1 + 176) - v5) >> 3))
  {
    kaldi::KaldiAssertFailure_("FiltersGrad", "../engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h", 0xFC, "filters_grad_.size() > i", a5);
  }

  result = *(v5 + 8 * a2);
  if (!result)
  {
    kaldi::KaldiAssertFailure_("FiltersGrad", "../engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h", 0xFD, "filters_grad_[i]", a5);
  }

  return result;
}

uint64_t kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::BiasGrad(uint64_t a1, int a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *(a1 + 192);
  if (a2 >= ((*(a1 + 200) - v5) >> 3))
  {
    kaldi::KaldiAssertFailure_("BiasGrad", "../engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h", 0x106, "bias_grad_.size() > i", a5);
  }

  result = *(v5 + 8 * a2);
  if (!result)
  {
    kaldi::KaldiAssertFailure_("BiasGrad", "../engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h", 0x107, "bias_grad_[i]", a5);
  }

  return result;
}

uint64_t kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::SetGradientNormalization(uint64_t result, int a2, float a3)
{
  *(result + 276) = a3;
  *(result + 272) = a2;
  *(result + 480) = 0;
  return result;
}

void kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::NormalizeGradients(uint64_t a1, int a2, uint64_t a3, uint64_t a4, const char *a5, float a6)
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

void kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::CountZeroCorr(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::EnsureCorrs(a1);
  v9 = *(a1 + 160);
  if (!v9)
  {
    kaldi::KaldiAssertFailure_("Bias", "../engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h", 0xF0, "bias_", v8);
  }

  v10 = *(a1 + 152);
  if (!v10)
  {
    kaldi::KaldiAssertFailure_("Filters", "../engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h", 0xE8, "filters_", v8);
  }

  *a3 = *(v9 + 16) + *(v10 + 16) * *(v10 + 20);
  v11 = *(a1 + 176) - *(a1 + 168);
  if (v11)
  {
    v12 = *(a1 + 200) - *(a1 + 192);
    if (v12)
    {
      v13 = v11 >> 3;
      v14 = v12 >> 3;
      v15 = *(a1 + 80);
      if (v15 == 1)
      {
        v16 = 0;
      }

      else
      {
        v16 = v15;
      }

      v17 = v14 - 1;
      if (v13 - 1 != v16 || v17 != v16)
      {
        kaldi::KaldiErrorMessage::KaldiErrorMessage(v30, "CountZeroCorr", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.cc", 883);
        v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "Unexpected mismatch in indexes: ", 32);
        v26 = MEMORY[0x1C692A960](v25, v16);
        v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "  ", 2);
        v28 = MEMORY[0x1C692A980](v27, ((*(a1 + 176) - *(a1 + 168)) >> 3) - 1);
        v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "  ", 2);
        MEMORY[0x1C692A980](v29, ((*(a1 + 200) - *(a1 + 192)) >> 3) - 1);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v30);
      }

      v19 = kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::FiltersGrad(a1, v16, v6, v7, v8);
      v20 = kaldi::CuMatrixBase<float>::CountZeros(v19);
      v24 = kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::BiasGrad(a1, v16, v21, v22, v23);
      LODWORD(v11) = kaldi::CuVectorBase<float>::CountZeros(v24) + v20;
    }

    else
    {
      LODWORD(v11) = 0;
    }
  }

  *a2 = v11;
}

void kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::EnsureCorrs(uint64_t a1)
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

    std::vector<float>::resize((a1 + 288), v3);
    *(a1 + 480) = 1;
  }
}

uint64_t kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::ApplyCorr(uint64_t a1, int a2, float a3)
{
  kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::EnsureCorrs(a1);
  v9 = *(a1 + 152);
  if (!v9)
  {
    kaldi::KaldiAssertFailure_("Filters", "../engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h", 0xE8, "filters_", v8);
  }

  v10 = -(a3 * *(a1 + 264));
  v11 = kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::FiltersGrad(a1, a2, v6, v7, v8);
  kaldi::CuMatrixBase<float>::AddMat(v9, v11, 111, v12, v13, v10, 1.0);
  v17 = *(a1 + 160);
  if (!v17)
  {
    kaldi::KaldiAssertFailure_("Bias", "../engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h", 0xF0, "bias_", v16);
  }

  v18 = *(a1 + 268) * -a3;
  v19 = kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::BiasGrad(a1, a2, v14, v15, v16);
  *&v23 = v18;

  return kaldi::CuVectorBase<float>::AddVec(v17, v19, v20, v21, v22, v23, 1.0);
}

void *kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::InitOutBuffers(uint64_t a1)
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

  std::vector<kaldi::CuMatrix<float>>::resize((a1 + 336), v3);
  std::vector<kaldi::CuMatrix<float>>::resize((a1 + 384), v3);

  return std::vector<kaldi::CuMatrix<float>>::resize((a1 + 432), v3);
}

void std::vector<BOOL>::resize(uint64_t a1, unint64_t a2, int a3)
{
  v4 = *(a1 + 8);
  v5 = a2 - v4;
  if (a2 <= v4)
  {
    *(a1 + 8) = a2;
    return;
  }

  v7 = *(a1 + 16);
  v8 = v7 << 6;
  if (v7 << 6 < v5 || v4 > (v7 << 6) - v5)
  {
    v20 = 0;
    v21 = 0uLL;
    if ((a2 & 0x8000000000000000) != 0)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v10 = v7 << 7;
    if (v10 <= ((a2 + 63) & 0xFFFFFFFFFFFFFFC0))
    {
      v10 = (a2 + 63) & 0xFFFFFFFFFFFFFFC0;
    }

    if (v8 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    std::vector<BOOL>::reserve(&v20, v11);
    v12 = *a1;
    v13 = *(a1 + 8);
    *&v21 = v13 + v5;
    v22 = v20;
    v23 = 0;
    std::__copy_aligned[abi:ne200100]<std::vector<BOOL>,true>(v12, 0, &v12[v13 >> 6], v13 & 0x3F, &v22, &v18);
    v14 = v18;
    LODWORD(v15) = v19;
    v16 = *a1;
    *a1 = v20;
    v20 = v16;
    v17 = *(a1 + 8);
    *(a1 + 8) = v21;
    v21 = v17;
    if (v16)
    {
      operator delete(v16);
    }

    if (!a3)
    {
      goto LABEL_19;
    }

LABEL_16:
    v20 = v14;
    LODWORD(v21) = v15;
    std::__fill_n_BOOL[abi:ne200100]<true,std::vector<BOOL>>(&v20, v5);
    return;
  }

  v14 = *a1 + 8 * (v4 >> 6);
  v15 = *(a1 + 8) & 0x3FLL;
  *(a1 + 8) = a2;
  if (a3)
  {
    goto LABEL_16;
  }

LABEL_19:
  v20 = v14;
  LODWORD(v21) = v15;
  std::__fill_n_BOOL[abi:ne200100]<false,std::vector<BOOL>>(&v20, v5);
}

void sub_1C30B0D48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<signed char>>::ConvolutionalMaxPoolingComponent(uint64_t a1, int a2, int a3)
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
  *a1 = &unk_1F42C4DD0;
  *(a1 + 88) = &unk_1F42C4F08;
  *(a1 + 96) = &unk_1F42C4F30;
  result = 0.0;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 152) = 0u;
  __asm { FMOV            V1.2S, #1.0 }

  *(a1 + 264) = _D1;
  *(a1 + 272) = 0;
  *(a1 + 276) = 0;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 552) = 0;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
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
  return result;
}

uint64_t kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<signed char>>::ConvolutionalMaxPoolingComponent(uint64_t a1, uint64_t a2)
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
  *a1 = &unk_1F42C4DD0;
  *(a1 + 88) = &unk_1F42C4F08;
  *(a1 + 96) = &unk_1F42C4F30;
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
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v16, "ConvolutionalMaxPoolingComponent", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.cc", 77);
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

void sub_1C30B136C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, _Unwind_Exception *exception_object, uint64_t a12, uint64_t a13, void *a14)
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
  kaldi::CuMatrixBase<float>::~CuMatrixBase(a12);
  kaldi::CuMatrixBase<float>::~CuMatrixBase(a13);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v14);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<signed char>>::InitResidualAggregator(void *a1, uint64_t *a2)
{
  kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<signed char>>::EnsureCorrs(a1);
  v7 = kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::FiltersGrad(a1, ((a1[22] - a1[21]) >> 3) - 1, v4, v5, v6);
  kaldi::nnet1::QuantizerResidualAggregator::PushSetup(a2, v7);
  v11 = kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::BiasGrad(a1, ((a1[25] - a1[24]) >> 3) - 1, v8, v9, v10);

  return kaldi::nnet1::QuantizerResidualAggregator::PushSetup(a2, v11);
}

void kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<signed char>>::~ConvolutionalMaxPoolingComponent(uint64_t a1)
{
  *a1 = &unk_1F42C4DD0;
  v2 = a1 + 88;
  *(a1 + 88) = &unk_1F42C4F08;
  v3 = a1 + 96;
  *(a1 + 96) = &unk_1F42C4F30;
  kaldi::nnet1::QuantizerResidualAggregator::~QuantizerResidualAggregator((a1 + 488));
  v4 = *(a1 + 456);
  if (v4)
  {
    operator delete(v4);
  }

  v8 = (a1 + 432);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v8);
  v8 = (a1 + 408);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v8);
  v8 = (a1 + 384);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v8);
  v8 = (a1 + 360);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v8);
  v8 = (a1 + 336);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v8);
  v5 = *(a1 + 312);
  if (v5)
  {
    *(a1 + 320) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 288);
  if (v6)
  {
    *(a1 + 296) = v6;
    operator delete(v6);
  }

  v8 = (a1 + 240);
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&v8);
  v8 = (a1 + 216);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v8);
  v8 = (a1 + 192);
  std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::__destroy_vector::operator()[abi:ne200100](&v8);
  v8 = (a1 + 168);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&v8);
  v7 = *(a1 + 160);
  *(a1 + 160) = 0;
  if (v7)
  {
    (*(*v7 + 16))(v7);
  }

  std::unique_ptr<kaldi::QuantizedMatrix<signed char>>::reset[abi:ne200100]((a1 + 152), 0);
  kaldi::CuMatrixBase<float>::~CuMatrixBase(v3);
  kaldi::CuMatrixBase<float>::~CuMatrixBase(v2);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(a1);
}

{
  kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<signed char>>::~ConvolutionalMaxPoolingComponent(a1);

  JUMPOUT(0x1C692AE10);
}

void non-virtual thunk tokaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<signed char>>::~ConvolutionalMaxPoolingComponent(uint64_t a1)
{
  kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<signed char>>::~ConvolutionalMaxPoolingComponent(a1 - 88);
}

{
  kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<signed char>>::~ConvolutionalMaxPoolingComponent(a1 - 96);
}

{
  kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<signed char>>::~ConvolutionalMaxPoolingComponent(a1 - 88);

  JUMPOUT(0x1C692AE10);
}

{
  kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<signed char>>::~ConvolutionalMaxPoolingComponent(a1 - 96);

  JUMPOUT(0x1C692AE10);
}

void kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<signed char>>::InitData(uint64_t a1, uint64_t *a2, kaldi::UniformRandomNumber *a3, uint64_t a4, const char *a5)
{
  v89 = 0x40000000;
  v90 = -1073741824;
  v88 = 1036831949;
  *(a1 + 116) = *(a1 + 8);
  v8 = (a1 + 116);
  *(a1 + 132) = 0x100000001;
  v9 = (a1 + 132);
  v87 = -1;
  memset(v86, 0, sizeof(v86));
  v10 = a2 + 4;
  v11 = (a1 + 280);
  v77 = (a1 + 136);
  v78 = (a1 + 264);
  v12 = (a1 + 124);
  v75 = (a1 + 120);
  v76 = (a1 + 128);
  v79 = (a1 + 268);
  v80 = (a1 + 112);
  v81 = (a1 + 108);
  v13 = (a1 + 104);
  while (1)
  {
    if ((*(v10 + *(*a2 - 24)) & 2) != 0)
    {
      v52 = *(a1 + 8);
      v53 = *(a1 + 12);
      v54 = *(a1 + 104);
      v55 = *(a1 + 108);
      v56 = *(a1 + 132);
      v57 = v52 / v54 - *(a1 + 128);
      v58 = *(a1 + 120);
      v59 = *(a1 + 136);
      v60 = (v58 - v56) / v59 + 1;
      *(a1 + 148) = v60;
      v61 = v55 * v60;
      v62 = v53 / v61;
      *(a1 + 140) = v57;
      *(a1 + 144) = v53 / v61;
      if (v56 >= 1 && v58 >= v56)
      {
        if (v59 > 0)
        {
          if (v53 == v61 * v62)
          {
            if (v52 == v52 / v54 * v54)
            {
              if (*v12 + *v80 * (v58 - 1) + *v8 * (v62 - 1) <= v57)
              {
                if (v87 >= 1)
                {
                  kaldi::UniformRandomNumber::SetRandomSeeds(a3, v87);
                }

                kaldi::GaussRandomNumber::GaussRandomNumber(v84, a3);
                kaldi::Matrix<float>::Matrix(v82, ((*(a1 + 128) + *(a1 + 124)) * *(a1 + 104)), (*(a1 + 144) * *(a1 + 108)), 0, 0);
                for (i = 0; i < kaldi::MatrixBase<float>::NumRows(v82); ++i)
                {
                  for (j = 0; j < kaldi::MatrixBase<float>::NumCols(v82); ++j)
                  {
                    v68 = *&v88;
                    kaldi::GaussRandomNumber::Rand(v84, 0, v65, v66, v67);
                    *(v82[0] + 4 * i * v83 + 4 * j) = v68 * v69;
                  }
                }

                if (!*(a1 + 152))
                {
                  operator new();
                }

                kaldi::KaldiErrorMessage::KaldiErrorMessage(v85, "InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.cc", 276);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v85, "pointer is thought to be un-initialized here", 44);
                kaldi::KaldiErrorMessage::~KaldiErrorMessage(v85);
              }

              kaldi::KaldiErrorMessage::KaldiErrorMessage(v85, "InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.cc", 262);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v85, "ConvolutionalMaxPoolingComponent: too few input bands to compute the output", 75);
              kaldi::KaldiErrorMessage::~KaldiErrorMessage(v85);
            }

            kaldi::KaldiErrorMessage::KaldiErrorMessage(v85, "InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.cc", 258);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v85, "ConvolutionalMaxPoolingComponent: input dim mismatch", 52);
            kaldi::KaldiErrorMessage::~KaldiErrorMessage(v85);
          }

          kaldi::KaldiErrorMessage::KaldiErrorMessage(v85, "InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.cc", 255);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v85, "ConvolutionalMaxPoolingComponent: output dim mismatch", 53);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(v85);
        }

        kaldi::KaldiErrorMessage::KaldiErrorMessage(v85, "InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.cc", 252);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v85, "ConvolutionalMaxPoolingComponent: Max pooling step must be >= 1", 63);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v85);
      }

      kaldi::KaldiErrorMessage::KaldiErrorMessage(v85, "InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.cc", 251);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v85, "ConvolutionalMaxPoolingComponent: Invalid max pooling size", 58);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v85);
    }

    kaldi::ReadToken(a2, 0, v86, a4, a5);
    if (SHIBYTE(v86[2]) < 0)
    {
      break;
    }

    if (HIBYTE(v86[2]) <= 0xCu)
    {
      if (HIBYTE(v86[2]) > 0xAu)
      {
        if (HIBYTE(v86[2]) != 11)
        {
          v25 = v86[0] == 0x537265746C69463CLL && LODWORD(v86[1]) == 1046837865;
          v16 = v12;
          if (v25)
          {
            goto LABEL_186;
          }

LABEL_163:
          v46 = v86;
          goto LABEL_180;
        }

        if (v86[0] != 0x6E6152736169423CLL || *(v86 + 3) != 0x3E65676E61527361)
        {
          v32 = v86[0] == 0x745368637461503CLL && *(v86 + 3) == 0x3E70657453686374;
          v16 = v80;
          if (!v32)
          {
            goto LABEL_205;
          }

          goto LABEL_186;
        }

LABEL_171:
        v23 = &v89;
        goto LABEL_187;
      }

      if (HIBYTE(v86[2]) == 9)
      {
        goto LABEL_164;
      }

      if (HIBYTE(v86[2]) != 10)
      {
        goto LABEL_205;
      }

      if (v86[0] != 0x61654D736169423CLL || LOWORD(v86[1]) != 15982)
      {
        v15 = v86[0] == 0x7A69536C6F6F503CLL && LOWORD(v86[1]) == 15973;
        v16 = v9;
        if (v15)
        {
          goto LABEL_186;
        }

        v17 = v86[0] == 0x6574536C6F6F503CLL && LOWORD(v86[1]) == 15984;
        v16 = v77;
        if (v17)
        {
          goto LABEL_186;
        }

LABEL_161:
        if (HIBYTE(v86[2]) != 9)
        {
          if (HIBYTE(v86[2]) != 12)
          {
            goto LABEL_205;
          }

          goto LABEL_163;
        }

LABEL_164:
        v47 = v86[0] == 0x6D726F4E78614D3CLL && LOBYTE(v86[1]) == 62;
        v23 = v11;
        if (!v47)
        {
          goto LABEL_205;
        }

        goto LABEL_187;
      }

LABEL_170:
      v23 = &v90;
      goto LABEL_187;
    }

    if (HIBYTE(v86[2]) > 0xFu)
    {
      if (HIBYTE(v86[2]) == 16)
      {
        v24 = v86[0] == 0x7461654674754F3CLL && v86[1] == 0x3E7370614D657275;
        goto LABEL_95;
      }

      if (HIBYTE(v86[2]) != 19 || (v86[0] == 0x61654C736169423CLL ? (v26 = v86[1] == 0x6F43657461526E72) : (v26 = 0), v26 ? (v27 = *(&v86[1] + 3) == 0x3E66656F43657461) : (v27 = 0), v23 = v79, !v27))
      {
LABEL_205:
        kaldi::KaldiErrorMessage::KaldiErrorMessage(v85, "InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.cc", 239);
        v70 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v85, "Unknown token ", 14);
        if (v86[2] >= 0)
        {
          v71 = v86;
        }

        else
        {
          v71 = v86[0];
        }

        if (v86[2] >= 0)
        {
          v72 = HIBYTE(v86[2]);
        }

        else
        {
          v72 = v86[1];
        }

        v73 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v70, v71, v72);
        v74 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v73, ", a typo in config?", 19);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v74, " (ParamStddev|BiasMean|BiasRange|InFeatureMaps|OutFeatureMaps|PatchStep|SectionStep|SectionSize|FilterSize|LearnRateCoef|BiasLearnRateCoef|MaxNorm|RandomSeed)", 158);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v85);
      }
    }

    else
    {
      if (HIBYTE(v86[2]) == 13)
      {
        if (v86[0] != 0x74536D617261503CLL || *(v86 + 5) != 0x3E7665646474536DLL)
        {
          v29 = v86[0] == 0x6E6F69746365533CLL && *(v86 + 5) == 0x3E706574536E6F69;
          v16 = v8;
          if (!v29)
          {
            v30 = v86[0] == 0x6E6F69746365533CLL && *(v86 + 5) == 0x3E657A69536E6F69;
            v16 = v75;
            if (!v30)
            {
              goto LABEL_205;
            }
          }

          goto LABEL_186;
        }

LABEL_169:
        v23 = &v88;
        goto LABEL_187;
      }

      if (HIBYTE(v86[2]) != 15)
      {
        goto LABEL_205;
      }

      v20 = v86[0] == 0x75746165466E493CLL && *(v86 + 7) == 0x3E7370614D657275;
      v16 = v13;
      if (v20)
      {
        goto LABEL_186;
      }

      v21 = v86[0] == 0x65726168536E493CLL && *(v86 + 7) == 0x3E73646E61426465;
      v16 = v76;
      if (v21)
      {
        goto LABEL_186;
      }

      v22 = v86[0] == 0x61526E7261654C3CLL && *(v86 + 7) == 0x3E66656F43657461;
      v23 = v78;
      if (!v22)
      {
        goto LABEL_205;
      }
    }

LABEL_187:
    kaldi::ReadBasicType<float>(a2, 0, v23);
LABEL_188:
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }

  v18 = v86[1];
  if (v86[1] > 12)
  {
    switch(v86[1])
    {
      case 0xDLL:
        if (*v86[0] == 0x74536D617261503CLL && *(v86[0] + 5) == 0x3E7665646474536DLL)
        {
          goto LABEL_169;
        }

        v36 = *v86[0] == 0x6E6F69746365533CLL && *(v86[0] + 5) == 0x3E706574536E6F69;
        v16 = v8;
        if (v36)
        {
          goto LABEL_186;
        }

        v37 = *v86[0] == 0x6E6F69746365533CLL && *(v86[0] + 5) == 0x3E657A69536E6F69;
        v16 = v75;
        if (v37)
        {
          goto LABEL_186;
        }

        break;
      case 0xFLL:
        v40 = *v86[0] == 0x75746165466E493CLL && *(v86[0] + 7) == 0x3E7370614D657275;
        v16 = v13;
        if (v40)
        {
          goto LABEL_186;
        }

        v41 = *v86[0] == 0x65726168536E493CLL && *(v86[0] + 7) == 0x3E73646E61426465;
        v16 = v76;
        if (v41)
        {
          goto LABEL_186;
        }

        break;
      case 0x10:
        v24 = *v86[0] == 0x7461654674754F3CLL && *(v86[0] + 8) == 0x3E7370614D657275;
LABEL_95:
        v16 = v81;
        if (!v24)
        {
          goto LABEL_205;
        }

        goto LABEL_186;
      default:
        goto LABEL_145;
    }
  }

  else
  {
    switch(v86[1])
    {
      case 0xALL:
        if (*v86[0] == 0x61654D736169423CLL && *(v86[0] + 8) == 15982)
        {
          goto LABEL_170;
        }

        v34 = *v86[0] == 0x7A69536C6F6F503CLL && *(v86[0] + 8) == 15973;
        v16 = v9;
        if (v34)
        {
          goto LABEL_186;
        }

        break;
      case 0xBLL:
        if (*v86[0] == 0x6E6152736169423CLL && *(v86[0] + 3) == 0x3E65676E61527361)
        {
          goto LABEL_171;
        }

        v39 = *v86[0] == 0x745368637461503CLL && *(v86[0] + 3) == 0x3E70657453686374;
        v16 = v80;
        if (v39)
        {
          goto LABEL_186;
        }

        break;
      case 0xCLL:
        v19 = *v86[0] == 0x537265746C69463CLL && *(v86[0] + 8) == 1046837865;
        v16 = v12;
        if (v19)
        {
          goto LABEL_186;
        }

        break;
      default:
LABEL_145:
        if (v18 == 15)
        {
          v43 = *v86[0] == 0x61526E7261654C3CLL && *(v86[0] + 7) == 0x3E66656F43657461;
          v23 = v78;
          if (v43)
          {
            goto LABEL_187;
          }

          if ((v86[2] & 0x8000000000000000) == 0)
          {
            goto LABEL_161;
          }
        }

        if (v86[1] == 9)
        {
          v48 = *v86[0] == 0x6D726F4E78614D3CLL && *(v86[0] + 8) == 62;
          v23 = v11;
          if (!v48)
          {
            if ((v86[2] & 0x8000000000000000) == 0)
            {
              goto LABEL_205;
            }

LABEL_178:
            if (v86[1] != 12)
            {
              goto LABEL_205;
            }

            v46 = v86[0];
LABEL_180:
            v49 = *v46;
            v50 = *(v46 + 2);
            if (v49 != 0x536D6F646E61523CLL || v50 != 1046766949)
            {
              goto LABEL_205;
            }

            v16 = &v87;
LABEL_186:
            kaldi::ReadBasicType<int>(a2, 0, v16);
            goto LABEL_188;
          }
        }

        else
        {
          if (v86[1] != 19)
          {
            goto LABEL_178;
          }

          v45 = *v86[0] == 0x61654C736169423CLL && *(v86[0] + 8) == 0x6F43657461526E72 && *(v86[0] + 11) == 0x3E66656F43657461;
          v23 = v79;
          if (!v45)
          {
            if ((v86[2] & 0x8000000000000000) != 0)
            {
              goto LABEL_178;
            }

            goto LABEL_161;
          }
        }

        goto LABEL_187;
    }
  }

  v18 = v86[1];
  if (v86[1] == 10)
  {
    v42 = *v86[0] == 0x6574536C6F6F503CLL && *(v86[0] + 8) == 15984;
    v16 = v77;
    if (v42)
    {
      goto LABEL_186;
    }

    v18 = v86[1];
  }

  goto LABEL_145;
}

void sub_1C30B26FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  if (*(v24 - 121) < 0)
  {
    operator delete(*(v24 - 144));
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<signed char>>::ReadData(uint64_t a1, uint64_t *a2, int a3)
{
  *(a1 + 116) = *(a1 + 8);
  v6 = a1 + 116;
  *(a1 + 132) = 0x100000001;
  v7 = a1 + 132;
  v53 = a1 + 136;
  if (kaldi::Peek(a2, a3) != 60)
  {
LABEL_151:
    v44 = *(a1 + 12);
    v45 = *(a1 + 108);
    v46 = *(a1 + 8) / *(a1 + 104) - *(a1 + 128);
    v47 = (*(a1 + 120) - *(a1 + 132)) / *(a1 + 136) + 1;
    *(a1 + 148) = v47;
    *(a1 + 16) = 0;
    *(a1 + 140) = v46;
    *(a1 + 144) = v44 / (v45 * v47);
    LOBYTE(v56) = 0;
    kaldi::ReadBasicType<char>(a2, a3, &v56);
    if (!*(a1 + 152))
    {
      kaldi::ExpectToken(a2, a3, "<Filters>");
      v48 = ((*(a1 + 128) + *(a1 + 124)) * *(a1 + 104));
      v49 = (*(a1 + 144) * *(a1 + 108));
      operator new();
    }

    kaldi::KaldiErrorMessage::KaldiErrorMessage(__p, "ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.cc", 349);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(__p, "pointer is thought to be un-initialized here");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
  }

  while (1)
  {
    v56 = 0uLL;
    v57 = 0;
    kaldi::ReadToken(a2, a3, &v56, v8, v9);
    if (SHIBYTE(v57) < 0)
    {
      if (*(&v56 + 1) == 15)
      {
        v13 = *v56 == 0x75746165466E493CLL && *(v56 + 7) == 0x3E7370614D657275;
        v11 = a1 + 104;
        if (v13)
        {
          goto LABEL_141;
        }
      }

      if (*(&v56 + 1) == 16)
      {
        v14 = *v56 == 0x7461654674754F3CLL && *(v56 + 8) == 0x3E7370614D657275;
        v11 = a1 + 108;
        if (v14)
        {
          goto LABEL_141;
        }
      }

      if (*(&v56 + 1) == 13)
      {
        v16 = *v56 == 0x6E6F69746365533CLL && *(v56 + 5) == 0x3E706574536E6F69;
        v11 = v6;
        if (v16)
        {
          goto LABEL_141;
        }
      }

      else if (*(&v56 + 1) == 11)
      {
        v15 = *v56 == 0x745368637461503CLL && *(v56 + 3) == 0x3E70657453686374;
        v11 = a1 + 112;
        if (v15)
        {
          goto LABEL_141;
        }
      }

      v17 = *(&v56 + 1);
      if (*(&v56 + 1) == 13)
      {
        v18 = *v56 == 0x6E6F69746365533CLL && *(v56 + 5) == 0x3E657A69536E6F69;
        v11 = a1 + 120;
        if (v18)
        {
          goto LABEL_141;
        }

        v17 = *(&v56 + 1);
      }

      if (v17 == 12)
      {
        v19 = *v56 == 0x537265746C69463CLL && *(v56 + 8) == 1046837865;
        v11 = a1 + 124;
        if (v19)
        {
          goto LABEL_141;
        }

        if ((v57 & 0x8000000000000000) == 0)
        {
          goto LABEL_57;
        }
      }

      if (*(&v56 + 1) == 10)
      {
        v35 = *v56 == 0x7A69536C6F6F503CLL && *(v56 + 8) == 15973;
        v11 = v7;
        if (v35)
        {
          goto LABEL_141;
        }

        if ((v57 & 0x8000000000000000) == 0)
        {
          if (HIBYTE(v57) == 19)
          {
            goto LABEL_71;
          }

          if (HIBYTE(v57) == 15)
          {
            goto LABEL_121;
          }

          if (HIBYTE(v57) != 10)
          {
            goto LABEL_142;
          }

          goto LABEL_94;
        }
      }

      else if (*(&v56 + 1) == 15)
      {
        v20 = *v56 == 0x65726168536E493CLL && *(v56 + 7) == 0x3E73646E61426465;
        v11 = a1 + 128;
        if (v20)
        {
          goto LABEL_141;
        }

        if ((v57 & 0x8000000000000000) == 0)
        {
LABEL_57:
          if (HIBYTE(v57) != 10)
          {
            if (HIBYTE(v57) == 15)
            {
LABEL_121:
              v36 = v56 == 0x61526E7261654C3CLL && *(&v56 + 7) == 0x3E66656F43657461;
              v28 = (a1 + 264);
              if (!v36)
              {
                goto LABEL_142;
              }

              goto LABEL_147;
            }

LABEL_70:
            if (HIBYTE(v57) != 19)
            {
              goto LABEL_142;
            }

LABEL_71:
            v22 = &v56;
            goto LABEL_72;
          }

LABEL_90:
          v31 = v56 == 0x7A69536C6F6F503CLL && WORD4(v56) == 15973;
          v11 = v7;
          if (v31)
          {
            goto LABEL_141;
          }

LABEL_94:
          v32 = v56 == 0x6574536C6F6F503CLL && WORD4(v56) == 15984;
          v11 = v53;
          if (!v32)
          {
            goto LABEL_142;
          }

          goto LABEL_141;
        }
      }

      v37 = *(&v56 + 1);
      if (*(&v56 + 1) != 10)
      {
        goto LABEL_133;
      }

      v38 = *v56 == 0x6574536C6F6F503CLL && *(v56 + 8) == 15984;
      v11 = v53;
      if (!v38)
      {
        v37 = *(&v56 + 1);
LABEL_133:
        if (v37 == 15)
        {
          v39 = *v56 == 0x61526E7261654C3CLL && *(v56 + 7) == 0x3E66656F43657461;
          v28 = (a1 + 264);
          if (!v39)
          {
            if (v57 < 0)
            {
              goto LABEL_139;
            }

LABEL_142:
            v40 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v56, "<MaxNorm>");
            v28 = (a1 + 280);
            if (!v40)
            {
              if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v56, "<GradientNormType>"))
              {
                __p[0] = 0;
                __p[1] = 0;
                v55 = 0;
                kaldi::ReadToken(a2, a3, __p, v41, v42);
                *(a1 + 272) = kaldi::nnet1::Component::MarkerToGradientNormType(__p);
                if (SHIBYTE(v55) < 0)
                {
                  operator delete(__p[0]);
                }

                goto LABEL_148;
              }

              v43 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v56, "<MaxGrad>");
              v28 = (a1 + 276);
              if (!v43)
              {
                kaldi::KaldiErrorMessage::KaldiErrorMessage(__p, "ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.cc", 333);
                v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "unrecognized config token ", 26);
                if (v57 >= 0)
                {
                  v51 = &v56;
                }

                else
                {
                  v51 = v56;
                }

                if (v57 >= 0)
                {
                  v52 = HIBYTE(v57);
                }

                else
                {
                  v52 = *(&v56 + 1);
                }

                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, v51, v52);
                kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
              }
            }
          }

LABEL_147:
          kaldi::ReadBasicType<float>(a2, a3, v28);
          goto LABEL_148;
        }

LABEL_139:
        if (*(&v56 + 1) != 19)
        {
          goto LABEL_142;
        }

        v22 = v56;
LABEL_72:
        v23 = *v22;
        v24 = v22[1];
        v25 = *(v22 + 11);
        v27 = v23 == 0x61654C736169423CLL && v24 == 0x6F43657461526E72 && v25 == 0x3E66656F43657461;
        v28 = (a1 + 268);
        if (!v27)
        {
          goto LABEL_142;
        }

        goto LABEL_147;
      }
    }

    else if (HIBYTE(v57) <= 0xCu)
    {
      if (HIBYTE(v57) == 10)
      {
        goto LABEL_90;
      }

      if (HIBYTE(v57) != 11)
      {
        goto LABEL_62;
      }

      v34 = v56 == 0x745368637461503CLL && *(&v56 + 3) == 0x3E70657453686374;
      v11 = a1 + 112;
      if (!v34)
      {
        goto LABEL_142;
      }
    }

    else if (HIBYTE(v57) > 0xFu)
    {
      if (HIBYTE(v57) != 16)
      {
        goto LABEL_70;
      }

      v33 = v56 == 0x7461654674754F3CLL && *(&v56 + 1) == 0x3E7370614D657275;
      v11 = a1 + 108;
      if (!v33)
      {
        goto LABEL_142;
      }
    }

    else
    {
      if (HIBYTE(v57) == 13)
      {
        v29 = v56 == 0x6E6F69746365533CLL && *(&v56 + 5) == 0x3E706574536E6F69;
        v11 = v6;
        if (v29)
        {
          goto LABEL_141;
        }

        v30 = v56 == 0x6E6F69746365533CLL && *(&v56 + 5) == 0x3E657A69536E6F69;
        v11 = a1 + 120;
        if (v30)
        {
          goto LABEL_141;
        }

LABEL_62:
        if (HIBYTE(v57) != 12)
        {
          goto LABEL_142;
        }

        v21 = v56 == 0x537265746C69463CLL && DWORD2(v56) == 1046837865;
        v11 = a1 + 124;
        if (!v21)
        {
          goto LABEL_142;
        }

        goto LABEL_141;
      }

      if (HIBYTE(v57) != 15)
      {
        goto LABEL_142;
      }

      v10 = v56 == 0x75746165466E493CLL && *(&v56 + 7) == 0x3E7370614D657275;
      v11 = a1 + 104;
      if (!v10)
      {
        v12 = v56 == 0x65726168536E493CLL && *(&v56 + 7) == 0x3E73646E61426465;
        v11 = a1 + 128;
        if (!v12)
        {
          goto LABEL_121;
        }
      }
    }

LABEL_141:
    kaldi::ReadBasicType<int>(a2, a3, v11);
LABEL_148:
    if (SHIBYTE(v57) < 0)
    {
      operator delete(v56);
    }

    if (kaldi::Peek(a2, a3) != 60)
    {
      goto LABEL_151;
    }
  }
}

void sub_1C30B330C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (*(v24 - 89) < 0)
  {
    operator delete(*(v24 - 112));
  }

  _Unwind_Resume(exception_object);
}

void *kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<signed char>>::WriteConfig(unsigned int *a1, void *a2, const char *a3, uint64_t a4, const char *a5)
{
  kaldi::WriteToken(a2, a3, "<InFeatureMaps>", a4, a5);
  kaldi::WriteBasicType<int>(a2, a3, a1[26]);
  kaldi::WriteToken(a2, a3, "<OutFeatureMaps>", v8, v9);
  kaldi::WriteBasicType<int>(a2, a3, a1[27]);
  kaldi::WriteToken(a2, a3, "<PatchStep>", v10, v11);
  kaldi::WriteBasicType<int>(a2, a3, a1[28]);
  kaldi::WriteToken(a2, a3, "<SectionStep>", v12, v13);
  kaldi::WriteBasicType<int>(a2, a3, a1[29]);
  kaldi::WriteToken(a2, a3, "<SectionSize>", v14, v15);
  kaldi::WriteBasicType<int>(a2, a3, a1[30]);
  kaldi::WriteToken(a2, a3, "<FilterSize>", v16, v17);
  kaldi::WriteBasicType<int>(a2, a3, a1[31]);
  kaldi::WriteToken(a2, a3, "<InSharedBands>", v18, v19);
  kaldi::WriteBasicType<int>(a2, a3, a1[32]);
  kaldi::WriteToken(a2, a3, "<PoolSize>", v20, v21);
  kaldi::WriteBasicType<int>(a2, a3, a1[33]);
  kaldi::WriteToken(a2, a3, "<PoolStep>", v22, v23);
  kaldi::WriteBasicType<int>(a2, a3, a1[34]);
  kaldi::WriteToken(a2, a3, "<LearnRateCoef>", v24, v25);
  v26 = a1[66];
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<BiasLearnRateCoef>", v27, v28);
  v29 = a1[67];
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<MaxNorm>", v30, v31);
  v32 = a1[70];
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<GradientNormType>", v33, v34);
  kaldi::nnet1::Component::TypeToMarker(a1[68], &__p);
  kaldi::WriteToken(a2, a3, &__p, v35, v36);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  kaldi::WriteToken(a2, a3, "<MaxGrad>", v37, v38);
  v39 = a1[69];
  return kaldi::WriteBasicType<float>(a2, a3);
}

void sub_1C30B35B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<signed char>>::WriteData(void *a1, void *a2, const char *a3, int a4)
{
  (*(*a1 + 168))(a1);
  kaldi::WriteBasicType<char>(a2, a3, 0);
  kaldi::WriteToken(a2, a3, "<Filters>", v8, v9);
  v11 = a1[19];
  if (!v11)
  {
    kaldi::KaldiAssertFailure_("Filters", "../engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h", 0xE4, "filters_", v10);
  }

  kaldi::QuantizedMatrix<signed char>::Write(v11, a2, a3, a4);
  kaldi::WriteToken(a2, a3, "<Bias>", v12, v13);
  v16 = a1[20];
  if (!v16)
  {
    kaldi::KaldiAssertFailure_("Bias", "../engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h", 0xEC, "bias_", v15);
  }

  kaldi::CuVectorBase<float>::Write(v16, a2, a3, v14, v15);
}

uint64_t kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<signed char>>::NumParams(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *(a1 + 152);
  if (!v6 || (v7 = kaldi::QuantizedMatrixBase<short>::NumRows(v6), (v8 = *(a1 + 152)) == 0))
  {
    kaldi::KaldiAssertFailure_("Filters", "../engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h", 0xE4, "filters_", a5);
  }

  v9 = kaldi::QuantizedMatrixBase<short>::NumCols(v8);
  v11 = *(a1 + 160);
  if (!v11)
  {
    kaldi::KaldiAssertFailure_("Bias", "../engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h", 0xEC, "bias_", v10);
  }

  return (*(v11 + 16) + v9 * v7);
}

_DWORD *kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<signed char>>::GetParams(void *a1, uint64_t a2)
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
    kaldi::KaldiAssertFailure_("Filters", "../engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h", 0xE4, "filters_", v7);
  }

  kaldi::VectorBase<float>::CopyRowsFromMat<signed char>(&v18, v12);
  v15 = a1[20];
  if (!v15)
  {
    kaldi::KaldiAssertFailure_("Bias", "../engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h", 0xEC, "bias_", v7);
  }

  v16 = v15[4];
  v19 = 0;
  v20 = 0;
  if (v16 + v11 > *(a2 + 8))
  {
LABEL_9:
    kaldi::KaldiAssertFailure_("SubVector", "../engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.h", 0x264, "static_cast<UnsignedMatrixIndexT>(origin) + static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v7);
  }

  v18 = (*a2 + 4 * v11);
  LODWORD(v19) = v16;
  return kaldi::CuVectorBase<float>::CopyToVec<float>(v15, &v18, v13, v14, v7);
}

_DWORD *kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<signed char>>::SetParams(void *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4 != (*(*a1 + 176))(a1))
  {
    kaldi::KaldiAssertFailure_("SetParams", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.cc", 0x328, "wei_src.Dim() == NumParams()", v5);
  }

  v6 = a1[19];
  if (!v6 || (v7 = kaldi::QuantizedMatrixBase<short>::NumRows(v6), (v8 = a1[19]) == 0) || (v9 = kaldi::QuantizedMatrixBase<short>::NumCols(v8), (v10 = a1[19]) == 0))
  {
    kaldi::KaldiAssertFailure_("Filters", "../engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h", 0xE8, "filters_", v5);
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
  kaldi::QuantizedMatrixBase<signed char>::CopyRowsFromVec(v10, &v17);
  v14 = a1[20];
  if (!v14)
  {
    kaldi::KaldiAssertFailure_("Bias", "../engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h", 0xF0, "bias_", v5);
  }

  v15 = v14[4];
  v18 = 0;
  v19 = 0;
  if ((v15 + v11) > *(a2 + 8))
  {
LABEL_10:
    kaldi::KaldiAssertFailure_("SubVector", "../engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.h", 0x264, "static_cast<UnsignedMatrixIndexT>(origin) + static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v5);
  }

  v17 = (*a2 + 4 * v11);
  LODWORD(v18) = v15;
  return kaldi::CuVectorBase<float>::CopyFromVec<float>(v14, &v17, v12, v13, v5);
}

float kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<signed char>>::GetNormalizedLearningRate(uint64_t a1, int a2)
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

float kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<signed char>>::SumParams(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *(a1 + 152);
  if (!v6)
  {
    kaldi::KaldiAssertFailure_("Filters", "../engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h", 0xE4, "filters_", a5);
  }

  v8 = kaldi::QuantizedMatrixBase<signed char>::Sum(v6);
  v9 = *(a1 + 160);
  if (!v9)
  {
    kaldi::KaldiAssertFailure_("Bias", "../engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h", 0xEC, "bias_", v7);
  }

  v10 = *&v8;
  v11 = kaldi::CuVectorBase<float>::Sum(v9);
  return v10 + *&v11;
}

void kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<signed char>>::PerturbParams(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
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
        kaldi::QuantizedMatrixBase<signed char>::AddMat();
      }

      kaldi::KaldiAssertFailure_("Filters", "../engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h", 0xE8, "filters_", v10);
    }
  }

  kaldi::KaldiAssertFailure_("Filters", "../engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h", 0xE8, "filters_", a5);
}

void sub_1C30B3C48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  kaldi::CuMatrix<float>::~CuMatrix(va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<signed char>>::Info(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v32, " ");
  kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<signed char>>::ParamsString(a1);
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
    kaldi::KaldiAssertFailure_("Filters", "../engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h", 0xE4, "filters_", v9);
  }

  kaldi::nnet1::MomentStatistics<signed char>(v11);
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
    kaldi::KaldiAssertFailure_("Bias", "../engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h", 0xEC, "bias_", v20);
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

void sub_1C30B3EAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
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

uint64_t kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<signed char>>::ParamsString(unsigned int *a1)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v6);
  (*(*a1 + 168))(a1, &v6, 0);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, " , # of sections: ", 18);
  v3 = MEMORY[0x1C692A960](v2, a1[36]);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, ", section size after pooling: ", 30);
  MEMORY[0x1C692A960](v4, a1[37]);
  std::stringbuf::str();
  v6 = *MEMORY[0x1E69E54E8];
  *(&v6 + *(v6 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v7 = MEMORY[0x1E69E5548] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v8);
  std::ostream::~ostream();
  return MEMORY[0x1C692AD30](&v10);
}

void sub_1C30B4118(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<signed char>>::InfoGradient(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v57, " ");
  kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<signed char>>::ParamsString(a1);
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

void sub_1C30B4504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57, uint64_t a58, void *a59, uint64_t a60, int a61, __int16 a62, char a63)
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

void kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<signed char>>::PropagateFncDirect(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
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
          kaldi::KaldiAssertFailure_("Filters", "../engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h", 0xE8, "filters_", v11);
        }

        kaldi::QuantizedMatrixBase<signed char>::Range(v12, *(a1 + 104) * *(a1 + 124), *(a1 + 128) * *(a1 + 104), *(a1 + 108) * v9, *(a1 + 108), &v39);
        kaldi::CuMatrixBase<float>::AddMatMat<signed char>(&v45, &v42, 111, &v39, 0x6F, 1.0, 0.0);
        v13 = *(a1 + 120);
        if (v13 >= 2)
        {
          for (i = 1; i < v13; ++i)
          {
            kaldi::CuSubMatrix<float>::CuSubMatrix(&v36, a3, 0, *(a3 + 20), (*(a1 + 108) * (i + v9 * v13)), *(a1 + 108));
            kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v36, &v45, 111, v15, v16);
            v36 = &unk_1F42BFE90;
            v37 = 0u;
            v38 = 0u;
            kaldi::CuMatrixBase<float>::~CuMatrixBase(&v36);
            v13 = *(a1 + 120);
          }
        }

        kaldi::QuantizedMatrixBase<signed char>::~QuantizedMatrixBase(&v39);
        v42 = &unk_1F42BFE90;
        v43 = 0u;
        v44 = 0u;
        kaldi::CuMatrixBase<float>::~CuMatrixBase(&v42);
        v45 = &unk_1F42BFE90;
        v46 = 0u;
        v47 = 0u;
        kaldi::CuMatrixBase<float>::~CuMatrixBase(&v45);
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
            kaldi::KaldiAssertFailure_("Bias", "../engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h", 0xF0, "bias_", v19);
          }

          kaldi::CuSubVector<float>::CuSubVector(&v39, v20, *(a1 + 108) * v9, *(a1 + 108), v19);
          kaldi::CuMatrixBase<float>::AddVecToRows(&v45, &v39, v21, v22, v23, 1.0, v8);
          kaldi::CuSubMatrix<float>::CuSubMatrix(&v42, a2, 0, *(a2 + 20), ((*(a1 + 116) * v9 + *(a1 + 112) * v17) * *(a1 + 104)), *(a1 + 124) * *(a1 + 104));
          v25 = *(a1 + 152);
          if (!v25)
          {
            kaldi::KaldiAssertFailure_("Filters", "../engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h", 0xE8, "filters_", v24);
          }

          kaldi::QuantizedMatrixBase<signed char>::Range(v25, 0, *(a1 + 104) * *(a1 + 124), *(a1 + 108) * v9, *(a1 + 108), &v39);
          kaldi::CuMatrixBase<float>::AddMatMat<signed char>(&v45, &v42, 111, &v39, 0x6F, 1.0, 1.0);
          kaldi::QuantizedMatrixBase<signed char>::~QuantizedMatrixBase(&v39);
          v42 = &unk_1F42BFE90;
          v43 = 0u;
          v44 = 0u;
          kaldi::CuMatrixBase<float>::~CuMatrixBase(&v42);
          v45 = &unk_1F42BFE90;
          v46 = 0u;
          v47 = 0u;
          kaldi::CuMatrixBase<float>::~CuMatrixBase(&v45);
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
          v45 = &unk_1F42BFE90;
          v46 = 0u;
          v47 = 0u;
          kaldi::CuMatrixBase<float>::~CuMatrixBase(&v45);
          if (*(a1 + 132) >= 2)
          {
            v31 = 1;
            do
            {
              v32 = *(a1 + 384) + 48 * a4;
              kaldi::CuSubMatrix<float>::CuSubMatrix(&v45, v32, 0, *(v32 + 20), ((v31 + j * *(a1 + 136)) * *(a1 + 108)), *(a1 + 108));
              kaldi::CuMatrixBase<float>::Max(&v39, &v45, v33, v34, v35);
              v45 = &unk_1F42BFE90;
              v46 = 0u;
              v47 = 0u;
              kaldi::CuMatrixBase<float>::~CuMatrixBase(&v45);
              ++v31;
            }

            while (v31 < *(a1 + 132));
          }

          v39 = &unk_1F42BFE90;
          v40 = 0u;
          v41 = 0u;
          kaldi::CuMatrixBase<float>::~CuMatrixBase(&v39);
          v26 = *(a1 + 148);
        }
      }

      ++v9;
    }

    while (v9 < *(a1 + 144));
  }
}

void sub_1C30B4C14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, __int128 a21, __int128 a22, void *a23)
{
  a20 = &unk_1F42BFE90;
  a21 = 0u;
  a22 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&a20);
  a23 = &unk_1F42BFE90;
  *(v23 + 8) = 0u;
  *(v23 + 24) = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&a23);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<signed char>>::BackpropagateFnc()
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v0, "BackpropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.cc", 599);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Backpropagation of CNN ConvolutionalMaxPoolingComponent is not supported for quantized weights");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

void kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<signed char>>::AccumGradients()
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v0, "AccumGradients", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.cc", 642);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Not supported for quantized weights");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

void kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<signed char>>::UpdateWeights()
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v0, "UpdateWeights", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.cc", 691);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Unimplemented");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

uint64_t kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<signed char>>::GetGradient(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
    kaldi::KaldiAssertFailure_("Filters", "../engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h", 0xE4, "filters_", v9);
  }

  v13 = kaldi::QuantizedMatrixBase<short>::NumCols(v12);
  v14 = (*(*a1 + 176))(a1);
  kaldi::Vector<float>::Resize(a4, v14, 1, v15, v16);
  v20 = v13 * v11;
  v40 = 0;
  v41 = 0;
  if (v20 > *(a4 + 8))
  {
    kaldi::KaldiAssertFailure_("SubVector", "../engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.h", 0x264, "static_cast<UnsignedMatrixIndexT>(origin) + static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v19);
  }

  v39 = *a4;
  LODWORD(v40) = v20;
  v21 = kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::FiltersGrad(v8, 0, v17, v18, v19);
  kaldi::VectorBase<float>::CopyRowsFromMat(&v39, v21, v22, v23, v24);
  v28 = a1[20];
  if (!v28)
  {
    v35 = "bias_";
    v36 = 236;
    v37 = "../engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h";
    v38 = "Bias";
    goto LABEL_11;
  }

  v29 = *(v28 + 16);
  v40 = 0;
  v41 = 0;
  if ((v29 + v20) > *(a4 + 8))
  {
    v35 = "static_cast<UnsignedMatrixIndexT>(origin) + static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())";
    v36 = 612;
    v37 = "../engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.h";
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

void sub_1C30B5164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
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

uint64_t kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<signed char>>::SetGradientNormalization(uint64_t result, int a2, float a3)
{
  *(result + 276) = a3;
  *(result + 272) = a2;
  *(result + 480) = 0;
  return result;
}

void kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<signed char>>::NormalizeGradients(uint64_t a1, int a2, uint64_t a3, uint64_t a4, const char *a5, float a6)
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

uint64_t kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<signed char>>::CountZeroCorr(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<signed char>>::EnsureCorrs(a1);
  v7 = *(a1 + 160);
  if (!v7)
  {
    kaldi::KaldiAssertFailure_("Bias", "../engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h", 0xF0, "bias_", v6);
  }

  v8 = *(a1 + 152);
  if (!v8 || (v9 = *(v7 + 16), v10 = kaldi::QuantizedMatrixBase<short>::NumRows(v8), (v11 = *(a1 + 152)) == 0))
  {
    kaldi::KaldiAssertFailure_("Filters", "../engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h", 0xE8, "filters_", v6);
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
      v19 = *(a1 + 80);
      if (v19 == 1)
      {
        v20 = 0;
      }

      else
      {
        v20 = v19;
      }

      if (v18 - 1 != v20 || (v17 >> 3) - 1 != v20)
      {
        kaldi::KaldiErrorMessage::KaldiErrorMessage(v32, "CountZeroCorr", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.cc", 883);
        v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "Unexpected mismatch in indexes: ", 32);
        v28 = MEMORY[0x1C692A960](v27, v20);
        v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "  ", 2);
        v30 = MEMORY[0x1C692A980](v29, ((*(a1 + 176) - *(a1 + 168)) >> 3) - 1);
        v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "  ", 2);
        MEMORY[0x1C692A980](v31, ((*(a1 + 200) - *(a1 + 192)) >> 3) - 1);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v32);
      }

      v21 = kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::FiltersGrad(a1, v20, v13, v14, v15);
      v22 = kaldi::CuMatrixBase<float>::CountZeros(v21);
      v26 = kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::BiasGrad(a1, v20, v23, v24, v25);
      result = kaldi::CuVectorBase<float>::CountZeros(v26);
      LODWORD(v17) = result + v22;
    }
  }

  else
  {
    LODWORD(v17) = 0;
  }

  *a2 = v17;
  return result;
}

void kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<signed char>>::EnsureCorrs(uint64_t a1)
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

    std::vector<float>::resize((a1 + 288), v3);
    *(a1 + 480) = 1;
  }
}

void kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<signed char>>::VectorizeWeightsCorrs()
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v0, "VectorizeWeightsCorrs", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.cc", 908);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Unimplemented");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

double kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<short>>::ConvolutionalMaxPoolingComponent(uint64_t a1, int a2, int a3)
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
  *a1 = &unk_1F42C4F58;
  *(a1 + 88) = &unk_1F42C5090;
  *(a1 + 96) = &unk_1F42C50B8;
  result = 0.0;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 152) = 0u;
  __asm { FMOV            V1.2S, #1.0 }

  *(a1 + 264) = _D1;
  *(a1 + 272) = 0;
  *(a1 + 276) = 0;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 552) = 0;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
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
  return result;
}

uint64_t kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<short>>::ConvolutionalMaxPoolingComponent(uint64_t a1, uint64_t a2)
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
  *a1 = &unk_1F42C4F58;
  *(a1 + 88) = &unk_1F42C5090;
  *(a1 + 96) = &unk_1F42C50B8;
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
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v16, "ConvolutionalMaxPoolingComponent", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.cc", 77);
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

void sub_1C30B5FAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, _Unwind_Exception *exception_object, uint64_t a12, uint64_t a13, void *a14)
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
  kaldi::CuMatrixBase<float>::~CuMatrixBase(a12);
  kaldi::CuMatrixBase<float>::~CuMatrixBase(a13);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v14);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<short>>::InitResidualAggregator(void *a1, uint64_t *a2)
{
  kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<short>>::EnsureCorrs(a1);
  v7 = kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::FiltersGrad(a1, ((a1[22] - a1[21]) >> 3) - 1, v4, v5, v6);
  kaldi::nnet1::QuantizerResidualAggregator::PushSetup(a2, v7);
  v11 = kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::BiasGrad(a1, ((a1[25] - a1[24]) >> 3) - 1, v8, v9, v10);

  return kaldi::nnet1::QuantizerResidualAggregator::PushSetup(a2, v11);
}

void kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<short>>::~ConvolutionalMaxPoolingComponent(uint64_t a1)
{
  *a1 = &unk_1F42C4F58;
  v2 = a1 + 88;
  *(a1 + 88) = &unk_1F42C5090;
  v3 = a1 + 96;
  *(a1 + 96) = &unk_1F42C50B8;
  kaldi::nnet1::QuantizerResidualAggregator::~QuantizerResidualAggregator((a1 + 488));
  v4 = *(a1 + 456);
  if (v4)
  {
    operator delete(v4);
  }

  v8 = (a1 + 432);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v8);
  v8 = (a1 + 408);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v8);
  v8 = (a1 + 384);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v8);
  v8 = (a1 + 360);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v8);
  v8 = (a1 + 336);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v8);
  v5 = *(a1 + 312);
  if (v5)
  {
    *(a1 + 320) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 288);
  if (v6)
  {
    *(a1 + 296) = v6;
    operator delete(v6);
  }

  v8 = (a1 + 240);
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&v8);
  v8 = (a1 + 216);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v8);
  v8 = (a1 + 192);
  std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::__destroy_vector::operator()[abi:ne200100](&v8);
  v8 = (a1 + 168);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&v8);
  v7 = *(a1 + 160);
  *(a1 + 160) = 0;
  if (v7)
  {
    (*(*v7 + 16))(v7);
  }

  std::unique_ptr<kaldi::QuantizedMatrix<short>>::reset[abi:ne200100]((a1 + 152), 0);
  kaldi::CuMatrixBase<float>::~CuMatrixBase(v3);
  kaldi::CuMatrixBase<float>::~CuMatrixBase(v2);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(a1);
}

{
  kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<short>>::~ConvolutionalMaxPoolingComponent(a1);

  JUMPOUT(0x1C692AE10);
}

void non-virtual thunk tokaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<short>>::~ConvolutionalMaxPoolingComponent(uint64_t a1)
{
  kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<short>>::~ConvolutionalMaxPoolingComponent(a1 - 88);
}

{
  kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<short>>::~ConvolutionalMaxPoolingComponent(a1 - 96);
}

{
  kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<short>>::~ConvolutionalMaxPoolingComponent(a1 - 88);

  JUMPOUT(0x1C692AE10);
}

{
  kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<short>>::~ConvolutionalMaxPoolingComponent(a1 - 96);

  JUMPOUT(0x1C692AE10);
}

void kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<short>>::InitData(uint64_t a1, uint64_t *a2, kaldi::UniformRandomNumber *a3, uint64_t a4, const char *a5)
{
  v89 = 0x40000000;
  v90 = -1073741824;
  v88 = 1036831949;
  *(a1 + 116) = *(a1 + 8);
  v8 = (a1 + 116);
  *(a1 + 132) = 0x100000001;
  v9 = (a1 + 132);
  v87 = -1;
  memset(v86, 0, sizeof(v86));
  v10 = a2 + 4;
  v11 = (a1 + 280);
  v77 = (a1 + 136);
  v78 = (a1 + 264);
  v12 = (a1 + 124);
  v75 = (a1 + 120);
  v76 = (a1 + 128);
  v79 = (a1 + 268);
  v80 = (a1 + 112);
  v81 = (a1 + 108);
  v13 = (a1 + 104);
  while (1)
  {
    if ((*(v10 + *(*a2 - 24)) & 2) != 0)
    {
      v52 = *(a1 + 8);
      v53 = *(a1 + 12);
      v54 = *(a1 + 104);
      v55 = *(a1 + 108);
      v56 = *(a1 + 132);
      v57 = v52 / v54 - *(a1 + 128);
      v58 = *(a1 + 120);
      v59 = *(a1 + 136);
      v60 = (v58 - v56) / v59 + 1;
      *(a1 + 148) = v60;
      v61 = v55 * v60;
      v62 = v53 / v61;
      *(a1 + 140) = v57;
      *(a1 + 144) = v53 / v61;
      if (v56 >= 1 && v58 >= v56)
      {
        if (v59 > 0)
        {
          if (v53 == v61 * v62)
          {
            if (v52 == v52 / v54 * v54)
            {
              if (*v12 + *v80 * (v58 - 1) + *v8 * (v62 - 1) <= v57)
              {
                if (v87 >= 1)
                {
                  kaldi::UniformRandomNumber::SetRandomSeeds(a3, v87);
                }

                kaldi::GaussRandomNumber::GaussRandomNumber(v84, a3);
                kaldi::Matrix<float>::Matrix(v82, ((*(a1 + 128) + *(a1 + 124)) * *(a1 + 104)), (*(a1 + 144) * *(a1 + 108)), 0, 0);
                for (i = 0; i < kaldi::MatrixBase<float>::NumRows(v82); ++i)
                {
                  for (j = 0; j < kaldi::MatrixBase<float>::NumCols(v82); ++j)
                  {
                    v68 = *&v88;
                    kaldi::GaussRandomNumber::Rand(v84, 0, v65, v66, v67);
                    *(v82[0] + 4 * i * v83 + 4 * j) = v68 * v69;
                  }
                }

                if (!*(a1 + 152))
                {
                  operator new();
                }

                kaldi::KaldiErrorMessage::KaldiErrorMessage(v85, "InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.cc", 276);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v85, "pointer is thought to be un-initialized here", 44);
                kaldi::KaldiErrorMessage::~KaldiErrorMessage(v85);
              }

              kaldi::KaldiErrorMessage::KaldiErrorMessage(v85, "InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.cc", 262);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v85, "ConvolutionalMaxPoolingComponent: too few input bands to compute the output", 75);
              kaldi::KaldiErrorMessage::~KaldiErrorMessage(v85);
            }

            kaldi::KaldiErrorMessage::KaldiErrorMessage(v85, "InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.cc", 258);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v85, "ConvolutionalMaxPoolingComponent: input dim mismatch", 52);
            kaldi::KaldiErrorMessage::~KaldiErrorMessage(v85);
          }

          kaldi::KaldiErrorMessage::KaldiErrorMessage(v85, "InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.cc", 255);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v85, "ConvolutionalMaxPoolingComponent: output dim mismatch", 53);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(v85);
        }

        kaldi::KaldiErrorMessage::KaldiErrorMessage(v85, "InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.cc", 252);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v85, "ConvolutionalMaxPoolingComponent: Max pooling step must be >= 1", 63);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v85);
      }

      kaldi::KaldiErrorMessage::KaldiErrorMessage(v85, "InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.cc", 251);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v85, "ConvolutionalMaxPoolingComponent: Invalid max pooling size", 58);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v85);
    }

    kaldi::ReadToken(a2, 0, v86, a4, a5);
    if (SHIBYTE(v86[2]) < 0)
    {
      break;
    }

    if (HIBYTE(v86[2]) <= 0xCu)
    {
      if (HIBYTE(v86[2]) > 0xAu)
      {
        if (HIBYTE(v86[2]) != 11)
        {
          v25 = v86[0] == 0x537265746C69463CLL && LODWORD(v86[1]) == 1046837865;
          v16 = v12;
          if (v25)
          {
            goto LABEL_186;
          }

LABEL_163:
          v46 = v86;
          goto LABEL_180;
        }

        if (v86[0] != 0x6E6152736169423CLL || *(v86 + 3) != 0x3E65676E61527361)
        {
          v32 = v86[0] == 0x745368637461503CLL && *(v86 + 3) == 0x3E70657453686374;
          v16 = v80;
          if (!v32)
          {
            goto LABEL_205;
          }

          goto LABEL_186;
        }

LABEL_171:
        v23 = &v89;
        goto LABEL_187;
      }

      if (HIBYTE(v86[2]) == 9)
      {
        goto LABEL_164;
      }

      if (HIBYTE(v86[2]) != 10)
      {
        goto LABEL_205;
      }

      if (v86[0] != 0x61654D736169423CLL || LOWORD(v86[1]) != 15982)
      {
        v15 = v86[0] == 0x7A69536C6F6F503CLL && LOWORD(v86[1]) == 15973;
        v16 = v9;
        if (v15)
        {
          goto LABEL_186;
        }

        v17 = v86[0] == 0x6574536C6F6F503CLL && LOWORD(v86[1]) == 15984;
        v16 = v77;
        if (v17)
        {
          goto LABEL_186;
        }

LABEL_161:
        if (HIBYTE(v86[2]) != 9)
        {
          if (HIBYTE(v86[2]) != 12)
          {
            goto LABEL_205;
          }

          goto LABEL_163;
        }

LABEL_164:
        v47 = v86[0] == 0x6D726F4E78614D3CLL && LOBYTE(v86[1]) == 62;
        v23 = v11;
        if (!v47)
        {
          goto LABEL_205;
        }

        goto LABEL_187;
      }

LABEL_170:
      v23 = &v90;
      goto LABEL_187;
    }

    if (HIBYTE(v86[2]) > 0xFu)
    {
      if (HIBYTE(v86[2]) == 16)
      {
        v24 = v86[0] == 0x7461654674754F3CLL && v86[1] == 0x3E7370614D657275;
        goto LABEL_95;
      }

      if (HIBYTE(v86[2]) != 19 || (v86[0] == 0x61654C736169423CLL ? (v26 = v86[1] == 0x6F43657461526E72) : (v26 = 0), v26 ? (v27 = *(&v86[1] + 3) == 0x3E66656F43657461) : (v27 = 0), v23 = v79, !v27))
      {
LABEL_205:
        kaldi::KaldiErrorMessage::KaldiErrorMessage(v85, "InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.cc", 239);
        v70 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v85, "Unknown token ", 14);
        if (v86[2] >= 0)
        {
          v71 = v86;
        }

        else
        {
          v71 = v86[0];
        }

        if (v86[2] >= 0)
        {
          v72 = HIBYTE(v86[2]);
        }

        else
        {
          v72 = v86[1];
        }

        v73 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v70, v71, v72);
        v74 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v73, ", a typo in config?", 19);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v74, " (ParamStddev|BiasMean|BiasRange|InFeatureMaps|OutFeatureMaps|PatchStep|SectionStep|SectionSize|FilterSize|LearnRateCoef|BiasLearnRateCoef|MaxNorm|RandomSeed)", 158);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v85);
      }
    }

    else
    {
      if (HIBYTE(v86[2]) == 13)
      {
        if (v86[0] != 0x74536D617261503CLL || *(v86 + 5) != 0x3E7665646474536DLL)
        {
          v29 = v86[0] == 0x6E6F69746365533CLL && *(v86 + 5) == 0x3E706574536E6F69;
          v16 = v8;
          if (!v29)
          {
            v30 = v86[0] == 0x6E6F69746365533CLL && *(v86 + 5) == 0x3E657A69536E6F69;
            v16 = v75;
            if (!v30)
            {
              goto LABEL_205;
            }
          }

          goto LABEL_186;
        }

LABEL_169:
        v23 = &v88;
        goto LABEL_187;
      }

      if (HIBYTE(v86[2]) != 15)
      {
        goto LABEL_205;
      }

      v20 = v86[0] == 0x75746165466E493CLL && *(v86 + 7) == 0x3E7370614D657275;
      v16 = v13;
      if (v20)
      {
        goto LABEL_186;
      }

      v21 = v86[0] == 0x65726168536E493CLL && *(v86 + 7) == 0x3E73646E61426465;
      v16 = v76;
      if (v21)
      {
        goto LABEL_186;
      }

      v22 = v86[0] == 0x61526E7261654C3CLL && *(v86 + 7) == 0x3E66656F43657461;
      v23 = v78;
      if (!v22)
      {
        goto LABEL_205;
      }
    }

LABEL_187:
    kaldi::ReadBasicType<float>(a2, 0, v23);
LABEL_188:
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }

  v18 = v86[1];
  if (v86[1] > 12)
  {
    switch(v86[1])
    {
      case 0xDLL:
        if (*v86[0] == 0x74536D617261503CLL && *(v86[0] + 5) == 0x3E7665646474536DLL)
        {
          goto LABEL_169;
        }

        v36 = *v86[0] == 0x6E6F69746365533CLL && *(v86[0] + 5) == 0x3E706574536E6F69;
        v16 = v8;
        if (v36)
        {
          goto LABEL_186;
        }

        v37 = *v86[0] == 0x6E6F69746365533CLL && *(v86[0] + 5) == 0x3E657A69536E6F69;
        v16 = v75;
        if (v37)
        {
          goto LABEL_186;
        }

        break;
      case 0xFLL:
        v40 = *v86[0] == 0x75746165466E493CLL && *(v86[0] + 7) == 0x3E7370614D657275;
        v16 = v13;
        if (v40)
        {
          goto LABEL_186;
        }

        v41 = *v86[0] == 0x65726168536E493CLL && *(v86[0] + 7) == 0x3E73646E61426465;
        v16 = v76;
        if (v41)
        {
          goto LABEL_186;
        }

        break;
      case 0x10:
        v24 = *v86[0] == 0x7461654674754F3CLL && *(v86[0] + 8) == 0x3E7370614D657275;
LABEL_95:
        v16 = v81;
        if (!v24)
        {
          goto LABEL_205;
        }

        goto LABEL_186;
      default:
        goto LABEL_145;
    }
  }

  else
  {
    switch(v86[1])
    {
      case 0xALL:
        if (*v86[0] == 0x61654D736169423CLL && *(v86[0] + 8) == 15982)
        {
          goto LABEL_170;
        }

        v34 = *v86[0] == 0x7A69536C6F6F503CLL && *(v86[0] + 8) == 15973;
        v16 = v9;
        if (v34)
        {
          goto LABEL_186;
        }

        break;
      case 0xBLL:
        if (*v86[0] == 0x6E6152736169423CLL && *(v86[0] + 3) == 0x3E65676E61527361)
        {
          goto LABEL_171;
        }

        v39 = *v86[0] == 0x745368637461503CLL && *(v86[0] + 3) == 0x3E70657453686374;
        v16 = v80;
        if (v39)
        {
          goto LABEL_186;
        }

        break;
      case 0xCLL:
        v19 = *v86[0] == 0x537265746C69463CLL && *(v86[0] + 8) == 1046837865;
        v16 = v12;
        if (v19)
        {
          goto LABEL_186;
        }

        break;
      default:
LABEL_145:
        if (v18 == 15)
        {
          v43 = *v86[0] == 0x61526E7261654C3CLL && *(v86[0] + 7) == 0x3E66656F43657461;
          v23 = v78;
          if (v43)
          {
            goto LABEL_187;
          }

          if ((v86[2] & 0x8000000000000000) == 0)
          {
            goto LABEL_161;
          }
        }

        if (v86[1] == 9)
        {
          v48 = *v86[0] == 0x6D726F4E78614D3CLL && *(v86[0] + 8) == 62;
          v23 = v11;
          if (!v48)
          {
            if ((v86[2] & 0x8000000000000000) == 0)
            {
              goto LABEL_205;
            }

LABEL_178:
            if (v86[1] != 12)
            {
              goto LABEL_205;
            }

            v46 = v86[0];
LABEL_180:
            v49 = *v46;
            v50 = *(v46 + 2);
            if (v49 != 0x536D6F646E61523CLL || v50 != 1046766949)
            {
              goto LABEL_205;
            }

            v16 = &v87;
LABEL_186:
            kaldi::ReadBasicType<int>(a2, 0, v16);
            goto LABEL_188;
          }
        }

        else
        {
          if (v86[1] != 19)
          {
            goto LABEL_178;
          }

          v45 = *v86[0] == 0x61654C736169423CLL && *(v86[0] + 8) == 0x6F43657461526E72 && *(v86[0] + 11) == 0x3E66656F43657461;
          v23 = v79;
          if (!v45)
          {
            if ((v86[2] & 0x8000000000000000) != 0)
            {
              goto LABEL_178;
            }

            goto LABEL_161;
          }
        }

        goto LABEL_187;
    }
  }

  v18 = v86[1];
  if (v86[1] == 10)
  {
    v42 = *v86[0] == 0x6574536C6F6F503CLL && *(v86[0] + 8) == 15984;
    v16 = v77;
    if (v42)
    {
      goto LABEL_186;
    }

    v18 = v86[1];
  }

  goto LABEL_145;
}

void sub_1C30B733C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  if (*(v24 - 121) < 0)
  {
    operator delete(*(v24 - 144));
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<short>>::ReadData(uint64_t a1, uint64_t *a2, int a3)
{
  *(a1 + 116) = *(a1 + 8);
  v6 = a1 + 116;
  *(a1 + 132) = 0x100000001;
  v7 = a1 + 132;
  v53 = a1 + 136;
  if (kaldi::Peek(a2, a3) != 60)
  {
LABEL_151:
    v44 = *(a1 + 12);
    v45 = *(a1 + 108);
    v46 = *(a1 + 8) / *(a1 + 104) - *(a1 + 128);
    v47 = (*(a1 + 120) - *(a1 + 132)) / *(a1 + 136) + 1;
    *(a1 + 148) = v47;
    *(a1 + 16) = 0;
    *(a1 + 140) = v46;
    *(a1 + 144) = v44 / (v45 * v47);
    LOBYTE(v56) = 0;
    kaldi::ReadBasicType<char>(a2, a3, &v56);
    if (!*(a1 + 152))
    {
      kaldi::ExpectToken(a2, a3, "<Filters>");
      v48 = ((*(a1 + 128) + *(a1 + 124)) * *(a1 + 104));
      v49 = (*(a1 + 144) * *(a1 + 108));
      operator new();
    }

    kaldi::KaldiErrorMessage::KaldiErrorMessage(__p, "ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.cc", 349);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(__p, "pointer is thought to be un-initialized here");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
  }

  while (1)
  {
    v56 = 0uLL;
    v57 = 0;
    kaldi::ReadToken(a2, a3, &v56, v8, v9);
    if (SHIBYTE(v57) < 0)
    {
      if (*(&v56 + 1) == 15)
      {
        v13 = *v56 == 0x75746165466E493CLL && *(v56 + 7) == 0x3E7370614D657275;
        v11 = a1 + 104;
        if (v13)
        {
          goto LABEL_141;
        }
      }

      if (*(&v56 + 1) == 16)
      {
        v14 = *v56 == 0x7461654674754F3CLL && *(v56 + 8) == 0x3E7370614D657275;
        v11 = a1 + 108;
        if (v14)
        {
          goto LABEL_141;
        }
      }

      if (*(&v56 + 1) == 13)
      {
        v16 = *v56 == 0x6E6F69746365533CLL && *(v56 + 5) == 0x3E706574536E6F69;
        v11 = v6;
        if (v16)
        {
          goto LABEL_141;
        }
      }

      else if (*(&v56 + 1) == 11)
      {
        v15 = *v56 == 0x745368637461503CLL && *(v56 + 3) == 0x3E70657453686374;
        v11 = a1 + 112;
        if (v15)
        {
          goto LABEL_141;
        }
      }

      v17 = *(&v56 + 1);
      if (*(&v56 + 1) == 13)
      {
        v18 = *v56 == 0x6E6F69746365533CLL && *(v56 + 5) == 0x3E657A69536E6F69;
        v11 = a1 + 120;
        if (v18)
        {
          goto LABEL_141;
        }

        v17 = *(&v56 + 1);
      }

      if (v17 == 12)
      {
        v19 = *v56 == 0x537265746C69463CLL && *(v56 + 8) == 1046837865;
        v11 = a1 + 124;
        if (v19)
        {
          goto LABEL_141;
        }

        if ((v57 & 0x8000000000000000) == 0)
        {
          goto LABEL_57;
        }
      }

      if (*(&v56 + 1) == 10)
      {
        v35 = *v56 == 0x7A69536C6F6F503CLL && *(v56 + 8) == 15973;
        v11 = v7;
        if (v35)
        {
          goto LABEL_141;
        }

        if ((v57 & 0x8000000000000000) == 0)
        {
          if (HIBYTE(v57) == 19)
          {
            goto LABEL_71;
          }

          if (HIBYTE(v57) == 15)
          {
            goto LABEL_121;
          }

          if (HIBYTE(v57) != 10)
          {
            goto LABEL_142;
          }

          goto LABEL_94;
        }
      }

      else if (*(&v56 + 1) == 15)
      {
        v20 = *v56 == 0x65726168536E493CLL && *(v56 + 7) == 0x3E73646E61426465;
        v11 = a1 + 128;
        if (v20)
        {
          goto LABEL_141;
        }

        if ((v57 & 0x8000000000000000) == 0)
        {
LABEL_57:
          if (HIBYTE(v57) != 10)
          {
            if (HIBYTE(v57) == 15)
            {
LABEL_121:
              v36 = v56 == 0x61526E7261654C3CLL && *(&v56 + 7) == 0x3E66656F43657461;
              v28 = (a1 + 264);
              if (!v36)
              {
                goto LABEL_142;
              }

              goto LABEL_147;
            }

LABEL_70:
            if (HIBYTE(v57) != 19)
            {
              goto LABEL_142;
            }

LABEL_71:
            v22 = &v56;
            goto LABEL_72;
          }

LABEL_90:
          v31 = v56 == 0x7A69536C6F6F503CLL && WORD4(v56) == 15973;
          v11 = v7;
          if (v31)
          {
            goto LABEL_141;
          }

LABEL_94:
          v32 = v56 == 0x6574536C6F6F503CLL && WORD4(v56) == 15984;
          v11 = v53;
          if (!v32)
          {
            goto LABEL_142;
          }

          goto LABEL_141;
        }
      }

      v37 = *(&v56 + 1);
      if (*(&v56 + 1) != 10)
      {
        goto LABEL_133;
      }

      v38 = *v56 == 0x6574536C6F6F503CLL && *(v56 + 8) == 15984;
      v11 = v53;
      if (!v38)
      {
        v37 = *(&v56 + 1);
LABEL_133:
        if (v37 == 15)
        {
          v39 = *v56 == 0x61526E7261654C3CLL && *(v56 + 7) == 0x3E66656F43657461;
          v28 = (a1 + 264);
          if (!v39)
          {
            if (v57 < 0)
            {
              goto LABEL_139;
            }

LABEL_142:
            v40 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v56, "<MaxNorm>");
            v28 = (a1 + 280);
            if (!v40)
            {
              if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v56, "<GradientNormType>"))
              {
                __p[0] = 0;
                __p[1] = 0;
                v55 = 0;
                kaldi::ReadToken(a2, a3, __p, v41, v42);
                *(a1 + 272) = kaldi::nnet1::Component::MarkerToGradientNormType(__p);
                if (SHIBYTE(v55) < 0)
                {
                  operator delete(__p[0]);
                }

                goto LABEL_148;
              }

              v43 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v56, "<MaxGrad>");
              v28 = (a1 + 276);
              if (!v43)
              {
                kaldi::KaldiErrorMessage::KaldiErrorMessage(__p, "ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.cc", 333);
                v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "unrecognized config token ", 26);
                if (v57 >= 0)
                {
                  v51 = &v56;
                }

                else
                {
                  v51 = v56;
                }

                if (v57 >= 0)
                {
                  v52 = HIBYTE(v57);
                }

                else
                {
                  v52 = *(&v56 + 1);
                }

                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, v51, v52);
                kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
              }
            }
          }

LABEL_147:
          kaldi::ReadBasicType<float>(a2, a3, v28);
          goto LABEL_148;
        }

LABEL_139:
        if (*(&v56 + 1) != 19)
        {
          goto LABEL_142;
        }

        v22 = v56;
LABEL_72:
        v23 = *v22;
        v24 = v22[1];
        v25 = *(v22 + 11);
        v27 = v23 == 0x61654C736169423CLL && v24 == 0x6F43657461526E72 && v25 == 0x3E66656F43657461;
        v28 = (a1 + 268);
        if (!v27)
        {
          goto LABEL_142;
        }

        goto LABEL_147;
      }
    }

    else if (HIBYTE(v57) <= 0xCu)
    {
      if (HIBYTE(v57) == 10)
      {
        goto LABEL_90;
      }

      if (HIBYTE(v57) != 11)
      {
        goto LABEL_62;
      }

      v34 = v56 == 0x745368637461503CLL && *(&v56 + 3) == 0x3E70657453686374;
      v11 = a1 + 112;
      if (!v34)
      {
        goto LABEL_142;
      }
    }

    else if (HIBYTE(v57) > 0xFu)
    {
      if (HIBYTE(v57) != 16)
      {
        goto LABEL_70;
      }

      v33 = v56 == 0x7461654674754F3CLL && *(&v56 + 1) == 0x3E7370614D657275;
      v11 = a1 + 108;
      if (!v33)
      {
        goto LABEL_142;
      }
    }

    else
    {
      if (HIBYTE(v57) == 13)
      {
        v29 = v56 == 0x6E6F69746365533CLL && *(&v56 + 5) == 0x3E706574536E6F69;
        v11 = v6;
        if (v29)
        {
          goto LABEL_141;
        }

        v30 = v56 == 0x6E6F69746365533CLL && *(&v56 + 5) == 0x3E657A69536E6F69;
        v11 = a1 + 120;
        if (v30)
        {
          goto LABEL_141;
        }

LABEL_62:
        if (HIBYTE(v57) != 12)
        {
          goto LABEL_142;
        }

        v21 = v56 == 0x537265746C69463CLL && DWORD2(v56) == 1046837865;
        v11 = a1 + 124;
        if (!v21)
        {
          goto LABEL_142;
        }

        goto LABEL_141;
      }

      if (HIBYTE(v57) != 15)
      {
        goto LABEL_142;
      }

      v10 = v56 == 0x75746165466E493CLL && *(&v56 + 7) == 0x3E7370614D657275;
      v11 = a1 + 104;
      if (!v10)
      {
        v12 = v56 == 0x65726168536E493CLL && *(&v56 + 7) == 0x3E73646E61426465;
        v11 = a1 + 128;
        if (!v12)
        {
          goto LABEL_121;
        }
      }
    }

LABEL_141:
    kaldi::ReadBasicType<int>(a2, a3, v11);
LABEL_148:
    if (SHIBYTE(v57) < 0)
    {
      operator delete(v56);
    }

    if (kaldi::Peek(a2, a3) != 60)
    {
      goto LABEL_151;
    }
  }
}

void sub_1C30B7F4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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
  kaldi::WriteBasicType<int>(a2, a3, a1[26]);
  kaldi::WriteToken(a2, a3, "<OutFeatureMaps>", v8, v9);
  kaldi::WriteBasicType<int>(a2, a3, a1[27]);
  kaldi::WriteToken(a2, a3, "<PatchStep>", v10, v11);
  kaldi::WriteBasicType<int>(a2, a3, a1[28]);
  kaldi::WriteToken(a2, a3, "<SectionStep>", v12, v13);
  kaldi::WriteBasicType<int>(a2, a3, a1[29]);
  kaldi::WriteToken(a2, a3, "<SectionSize>", v14, v15);
  kaldi::WriteBasicType<int>(a2, a3, a1[30]);
  kaldi::WriteToken(a2, a3, "<FilterSize>", v16, v17);
  kaldi::WriteBasicType<int>(a2, a3, a1[31]);
  kaldi::WriteToken(a2, a3, "<InSharedBands>", v18, v19);
  kaldi::WriteBasicType<int>(a2, a3, a1[32]);
  kaldi::WriteToken(a2, a3, "<PoolSize>", v20, v21);
  kaldi::WriteBasicType<int>(a2, a3, a1[33]);
  kaldi::WriteToken(a2, a3, "<PoolStep>", v22, v23);
  kaldi::WriteBasicType<int>(a2, a3, a1[34]);
  kaldi::WriteToken(a2, a3, "<LearnRateCoef>", v24, v25);
  v26 = a1[66];
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<BiasLearnRateCoef>", v27, v28);
  v29 = a1[67];
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<MaxNorm>", v30, v31);
  v32 = a1[70];
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<GradientNormType>", v33, v34);
  kaldi::nnet1::Component::TypeToMarker(a1[68], &__p);
  kaldi::WriteToken(a2, a3, &__p, v35, v36);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  kaldi::WriteToken(a2, a3, "<MaxGrad>", v37, v38);
  v39 = a1[69];
  return kaldi::WriteBasicType<float>(a2, a3);
}

void sub_1C30B81F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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
  kaldi::WriteBasicType<char>(a2, a3, 0);
  kaldi::WriteToken(a2, a3, "<Filters>", v8, v9);
  v11 = a1[19];
  if (!v11)
  {
    kaldi::KaldiAssertFailure_("Filters", "../engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h", 0xE4, "filters_", v10);
  }

  kaldi::QuantizedMatrix<short>::Write(v11, a2, a3, a4);
  kaldi::WriteToken(a2, a3, "<Bias>", v12, v13);
  v16 = a1[20];
  if (!v16)
  {
    kaldi::KaldiAssertFailure_("Bias", "../engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h", 0xEC, "bias_", v15);
  }

  kaldi::CuVectorBase<float>::Write(v16, a2, a3, v14, v15);
}

uint64_t kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<short>>::NumParams(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *(a1 + 152);
  if (!v6 || (v7 = kaldi::QuantizedMatrixBase<short>::NumRows(v6), (v8 = *(a1 + 152)) == 0))
  {
    kaldi::KaldiAssertFailure_("Filters", "../engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h", 0xE4, "filters_", a5);
  }

  v9 = kaldi::QuantizedMatrixBase<short>::NumCols(v8);
  v11 = *(a1 + 160);
  if (!v11)
  {
    kaldi::KaldiAssertFailure_("Bias", "../engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h", 0xEC, "bias_", v10);
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
    kaldi::KaldiAssertFailure_("Filters", "../engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h", 0xE4, "filters_", v7);
  }

  kaldi::VectorBase<float>::CopyRowsFromMat<short>(&v18, v12);
  v15 = a1[20];
  if (!v15)
  {
    kaldi::KaldiAssertFailure_("Bias", "../engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h", 0xEC, "bias_", v7);
  }

  v16 = v15[4];
  v19 = 0;
  v20 = 0;
  if (v16 + v11 > *(a2 + 8))
  {
LABEL_9:
    kaldi::KaldiAssertFailure_("SubVector", "../engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.h", 0x264, "static_cast<UnsignedMatrixIndexT>(origin) + static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v7);
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
    kaldi::KaldiAssertFailure_("SetParams", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.cc", 0x328, "wei_src.Dim() == NumParams()", v5);
  }

  v6 = a1[19];
  if (!v6 || (v7 = kaldi::QuantizedMatrixBase<short>::NumRows(v6), (v8 = a1[19]) == 0) || (v9 = kaldi::QuantizedMatrixBase<short>::NumCols(v8), (v10 = a1[19]) == 0))
  {
    kaldi::KaldiAssertFailure_("Filters", "../engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h", 0xE8, "filters_", v5);
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
    kaldi::KaldiAssertFailure_("Bias", "../engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h", 0xF0, "bias_", v5);
  }

  v15 = v14[4];
  v18 = 0;
  v19 = 0;
  if ((v15 + v11) > *(a2 + 8))
  {
LABEL_10:
    kaldi::KaldiAssertFailure_("SubVector", "../engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.h", 0x264, "static_cast<UnsignedMatrixIndexT>(origin) + static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v5);
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
    kaldi::KaldiAssertFailure_("Filters", "../engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h", 0xE4, "filters_", a5);
  }

  v8 = kaldi::QuantizedMatrixBase<short>::Sum(v6);
  v9 = *(a1 + 160);
  if (!v9)
  {
    kaldi::KaldiAssertFailure_("Bias", "../engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h", 0xEC, "bias_", v7);
  }

  v10 = *&v8;
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

      kaldi::KaldiAssertFailure_("Filters", "../engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h", 0xE8, "filters_", v10);
    }
  }

  kaldi::KaldiAssertFailure_("Filters", "../engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h", 0xE8, "filters_", a5);
}

void sub_1C30B8888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  kaldi::CuMatrix<float>::~CuMatrix(va);
  _Unwind_Resume(a1);
}