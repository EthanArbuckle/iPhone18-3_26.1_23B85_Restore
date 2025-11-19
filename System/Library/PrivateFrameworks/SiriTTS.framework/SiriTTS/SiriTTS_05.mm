void std::vector<float>::push_back[abi:ne200100](const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

uint64_t kaldi::CuMatrix<float>::operator=(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 32))
  {
    *(a1 + 32) = *(a2 + 32);
  }

  kaldi::CuMatrix<float>::Resize(a1, *(a2 + 20), *(a2 + 16), 1u, 0);
  if (*(a2 + 20))
  {
    kaldi::MatrixBase<float>::CopyFromMat<float>((a1 + 8), a2 + 8, 111, v4, v5);
  }

  return a1;
}

{
  v4 = kaldi::MatrixBase<float>::NumRows(a2);
  v5 = kaldi::MatrixBase<float>::NumCols(a2);
  kaldi::CuMatrix<float>::Resize(a1, v4, v5, 1u, 0);
  kaldi::MatrixBase<float>::CopyFromMat<float>((a1 + 8), a2, 111, v6, v7);
  return a1;
}

void kaldi::CuMatrixBase<float>::FindRowMaxId(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (!a2)
  {
    kaldi::KaldiAssertFailure_("FindRowMaxId", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", 0x5C0, "id", a5);
  }

  kaldi::CuArray<int>::Resize(a2, *(a1 + 20), 0, a4, a5);
  if (*a2 >= 1)
  {
    v8 = 0;
    v9 = *(a2 + 1);
    do
    {
      *(v9 + 4 * v8++) = -1;
    }

    while (v8 < *a2);
  }

  v10 = *(a1 + 20);
  if (v10 >= 1)
  {
    v11 = 0;
    v12 = *(a1 + 16);
    do
    {
      if (v11 >= *(a1 + 20))
      {
        kaldi::KaldiAssertFailure_("RowData", "../engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.h", 0xC4, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v7);
      }

      if (v12 < 1)
      {
        v15 = -1;
      }

      else
      {
        v13 = 0;
        v15 = -1;
        v16 = -1.0e21;
        do
        {
          v14 = *(a1 + 8) + 4 * *(a1 + 24) * v11;
          if (v16 < *(v14 + 4 * v13))
          {
            v16 = *(v14 + 4 * v13);
            v15 = v13;
          }

          ++v13;
        }

        while (v12 != v13);
      }

      *(*(a2 + 1) + 4 * v11++) = v15;
    }

    while (v11 != v10);
  }
}

void kaldi::CuArray<int>::Resize(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, const char *a5)
{
  v6 = a3 < 2 || a3 == 3;
  if ((a2 & 0x80000000) != 0 || !v6)
  {
    kaldi::KaldiAssertFailure_("Resize", "../engine/common/libquasar/libkaldi/src/cudamatrix/cu-array-inl.h", 0x2B, "(resize_type == kSetZero || resize_type == kUndefined || resize_type == kSetZeroIfNewMemory) && dim >= 0", a5);
  }

  v7 = a3;
  if (a3 == 3)
  {
    v7 = *a1 >= a2;
  }

  if (*(a1 + 4) >= a2)
  {
    *a1 = a2;
    if (!a2 || v7)
    {
      return;
    }

    v12 = *(a1 + 8);
    v13 = 4 * a2;
    goto LABEL_21;
  }

  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  if (v10)
  {
    free(v10);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = v11;
  if (a2)
  {
    v12 = malloc_type_malloc(4 * a2, 0x100004052888210uLL);
    *(a1 + 8) = v12;
    if (!v12)
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v18, "Resize", "../engine/common/libquasar/libkaldi/src/cudamatrix/cu-array-inl.h", 75);
      v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "Memory allocation failed when initializing CuVector ", 52);
      v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "with dimension ", 15);
      v16 = MEMORY[0x1C692A960](v15, a2);
      v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " object size in bytes: ", 23);
      MEMORY[0x1C692A980](v17, 4);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v18);
    }

    *a1 = a2;
    *(a1 + 4) = a2;
    if (!v7)
    {
      v13 = 4 * a2;
LABEL_21:

      bzero(v12, v13);
    }
  }
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *(a1 + 104);
  if (!v6)
  {
    kaldi::KaldiAssertFailure_("Linearity", "../engine/common/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 0x150, "linearity_", a5);
  }

  return kaldi::CuMatrixBase<float>::AddMatMat<signed char>(a3, a2, 111, v6, 0x70, 1.0, 0.0);
}

void *kaldi::quasar::TorchEncoderDecoder::GetAlignmentProbabilities(void *result, const void **a2, unsigned int a3, uint64_t a4, const char *a5)
{
  v5 = *(result + 1006);
  if (v5 >= 1)
  {
    if (*(result + 1007) <= a3)
    {
      kaldi::KaldiAssertFailure_("Row", "../engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", 0x22A, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", a5);
    }

    v7 = result[505];
    v9[1] = result[502] + 4 * (*(result + 1008) * a3);
    v9[0] = &unk_1F42BFF30;
    v9[2] = v5;
    v9[3] = v7;
    kaldi::CuVector<float>::CuVector(v10, v9);
    if (v11 >= 1)
    {
      for (i = 0; i < v11; ++i)
      {
        LODWORD(v9[0]) = *(v10[1] + 4 * i);
        std::vector<float>::push_back[abi:ne200100](a2, v9);
      }
    }

    return kaldi::CuVector<float>::~CuVector(v10);
  }

  return result;
}

void sub_1C2FEE938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  kaldi::CuVector<float>::~CuVector(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::TorchEncoderDecoder::GetBestAlignment(kaldi::quasar::TorchEncoderDecoder *this, int a2)
{
  v2 = *(this + 498);
  if (v2 == *(this + 499))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *(v2 + 4 * a2);
  }
}

void FRCode::get_replacement(std::string *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  if (*(a2 + 4))
  {
    v12 = 0;
    do
    {
      v13 = *(*(a2 + 16) + v12);
      if (v13 == 255)
      {
        std::string::basic_string[abi:ne200100]<0>(&__p, *(*(a2 + 8) + 8 * v12));
        if ((v23 & 0x80u) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        if ((v23 & 0x80u) == 0)
        {
          v20 = v23;
        }

        else
        {
          v20 = v22;
        }
      }

      else
      {
        v14 = 4 * v13 + 8;
        v15 = (*(a5 + v14) - 1);
        v16 = *(a6 + v14);
        v17 = boost::basic_string_ref<char,std::char_traits<char>>::substr(a3, a4, v15);
        std::string::__init_with_size[abi:ne200100]<char const*,char const*>(&__p, v17, &v17[v18], v18);
        if ((v23 & 0x80u) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        if ((v23 & 0x80u) == 0)
        {
          v20 = v23;
        }

        else
        {
          v20 = v22;
        }
      }

      std::string::append(a1, p_p, v20);
      if (v23 < 0)
      {
        operator delete(__p);
      }

      ++v12;
    }

    while (v12 < *(a2 + 4));
  }
}

void sub_1C2FEEA98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1C692A8E0](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x1E69E5318]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x1C692A8F0](v13);
  return a1;
}

{
  MEMORY[0x1C692A8E0](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x1E69E5318]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x1C692A8F0](v13);
  return a1;
}

void sub_1C2FEEC14(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x1C692A8F0](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x1C2FEEBF4);
}

void sub_1C2FEEDBC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x1C692A8F0](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x1C2FEED9CLL);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_1C2FEEFF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C2FEF1D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pcre2_substitute_8(uint64_t a1, _BYTE *a2, unint64_t a3, size_t a4, int a5, uint64_t a6, __int128 *a7, unsigned __int8 *a8, unint64_t a9, char *a10, size_t *a11)
{
  v11 = a11;
  v193 = *MEMORY[0x1E69E9840];
  v12 = *(a1 + 88);
  v172 = *a11;
  *a11 = -1;
  if ((a5 & 0x30) != 0)
  {
    v13 = 4294967262;
    goto LABEL_3;
  }

  v16 = a6;
  v17 = (a5 & 0x10000) == 0;
  if (!a6)
  {
    if ((a5 & 0x10000) != 0)
    {
      v13 = 4294967245;
      goto LABEL_3;
    }

    v18 = a4;
    v163 = a7;
    if (a7)
    {
      v20 = a7;
    }

    else
    {
      v20 = a1;
    }

    v174 = a1;
    v19 = pcre2_match_data_create_from_pattern_8(a1, v20);
    v16 = v19;
    if (v19)
    {
      goto LABEL_21;
    }

    goto LABEL_393;
  }

  v18 = a4;
  v163 = a7;
  v174 = a1;
  if ((a5 & 0x10000) != 0)
  {
    if (a7)
    {
      v21 = a7;
    }

    else
    {
      v21 = a1;
    }

    v22 = *(a1 + 128);
    v23 = *(a6 + 74);
    v24 = pcre2_match_data_create_8(v23, v21);
    if (v24)
    {
      v19 = v24;
      if (v22 + 1 < v23)
      {
        v25 = v22 + 1;
      }

      else
      {
        v25 = v23;
      }

      memcpy(v24, v16, 16 * v25 + 80);
      v16 = v19;
      v11 = a11;
      goto LABEL_21;
    }

LABEL_393:
    v13 = 4294967248;
    goto LABEL_3;
  }

  v19 = 0;
LABEL_21:
  v188 = 0;
  v185 = 0u;
  v186 = 0;
  v184[0] = 0;
  ovector_pointer_8 = pcre2_get_ovector_pointer_8(v16);
  ovector_count_8 = pcre2_get_ovector_count_8(v16);
  v184[1] = a2;
  *&v185 = a10;
  v187 = ovector_pointer_8;
  if (a3 == -1)
  {
    a3 = _pcre2_strlen_8(a2);
  }

  v166 = v12 & 0x80000;
  v27 = v18;
  v28 = a9;
  if (a9 == -1)
  {
    v28 = _pcre2_strlen_8(a8);
  }

  v189 = 0;
  v29 = ovector_pointer_8;
  if ((a5 & 0x40000000) == 0)
  {
    if (v166)
    {
      valid = _pcre2_valid_utf_8(a8, v28, (v16 + 64));
      if (valid)
      {
        *(v16 + 48) = 0;
        v13 = valid;
        goto LABEL_384;
      }
    }
  }

  if (a3 < v27)
  {
    *(v16 + 48) = 0;
    v13 = 4294967263;
    goto LABEL_384;
  }

  if ((a5 & 0x20000) != 0)
  {
    v156 = v11;
    v158 = v19;
    v164 = v16;
    v32 = 0;
    v175 = 0;
    v167 = 0;
    v31 = v172;
  }

  else
  {
    v31 = v172 - v27;
    if (v172 >= v27)
    {
      v156 = v11;
      v158 = v19;
      v164 = v16;
      memcpy(a10, a2, v27);
      v32 = 0;
      v175 = 0;
      v167 = v27;
    }

    else
    {
      if ((a5 & 0x1000) == 0)
      {
        goto LABEL_380;
      }

      v156 = v11;
      v158 = v19;
      v164 = v16;
      v167 = 0;
      v175 = v27 - v172;
      v32 = 1;
      v31 = v172;
    }
  }

  v171 = 0;
  v33 = 0;
  v173 = 0;
  v34 = 0;
  v35 = &a8[v28];
  v165 = v12 & 0xA0000;
  v162 = 0;
  v169 = -1;
  v170 = -1;
  v36 = a5;
  v37 = -1;
  v159 = v29;
  v157 = v28;
  while (1)
  {
    memset(v192, 0, sizeof(v192));
    v176 = v36;
    if (!v17)
    {
      break;
    }

    v38 = v34;
    matched = pcre2_match_8(v174);
    v34 = v38;
    v36 = v176;
    if ((matched & 0x80000000) != 0)
    {
      goto LABEL_49;
    }

LABEL_41:
    v41 = *v29;
    v40 = v29[1];
    v42 = 4294967236;
    if (v40 < *v29)
    {
      goto LABEL_382;
    }

    v43 = v41 - v27;
    if (v41 < v27)
    {
      goto LABEL_382;
    }

    if (v169 != v41 || v37 != v40)
    {
      if (v162 != 0x7FFFFFFF)
      {
        if (matched)
        {
          v47 = matched;
        }

        else
        {
          v47 = ovector_count_8;
        }

        if ((a5 & 0x20000) == 0)
        {
          if (v32 || v31 >= v43)
          {
            if (v32)
            {
              v48 = v43 + v175;
              goto LABEL_83;
            }

            v130 = v47;
            v131 = v34;
            memcpy(&a10[v167], &a2[v27], v41 - v27);
            v34 = v131;
            v36 = v176;
            v32 = 0;
            v167 += v43;
            v47 = v130;
            v31 -= v43;
          }

          else
          {
            if ((v36 & 0x1000) == 0)
            {
              goto LABEL_367;
            }

            v48 = v43 - v31;
LABEL_83:
            v175 = v48;
            v32 = 1;
          }
        }

        ++v162;
        v49 = a8;
        *(&v185 + 1) = v167;
        LODWORD(v188) = v47;
        v189 = a8;
        if ((v36 & 0x8000) != 0)
        {
          if (v32 || v31 >= v28)
          {
            if (!v32)
            {
              v132 = v34;
              memcpy(&a10[v167], a8, v28);
              v34 = v132;
              v36 = v176;
              v32 = 0;
              v167 += v28;
              v31 -= v28;
              goto LABEL_340;
            }

            v128 = v175 + v28;
          }

          else
          {
            if ((v36 & 0x1000) == 0)
            {
              goto LABEL_367;
            }

            v128 = v28 - v31;
          }

          v175 = v128;
          v32 = 1;
          goto LABEL_355;
        }

        text_end = v47;
        v50 = 0;
        if ((v36 & 0x800) != 0)
        {
          v51 = -55;
        }

        else
        {
          v51 = -49;
        }

        if ((v36 & 0x400) != 0)
        {
          v52 = 9;
        }

        else
        {
          v52 = 16;
        }

        v154 = v52;
        v155 = v51;
        v53 = v27;
        v54 = v166;
        while (2)
        {
          v183 = 0;
          if (v49 < v35)
          {
            v55 = *v49;
            if (v33)
            {
              v56 = v55 != 92 || v49 >= v35 - 1;
              if (!v56 && v49[1] == 69)
              {
                v33 = 0;
                v57 = v49 + 2;
                goto LABEL_102;
              }

LABEL_124:
              v58 = v49;
LABEL_125:
              v189 = v58 + 1;
              v67 = *v58;
              v183 = v67;
              if (v54 && v67 >= 0xC0)
              {
                if ((v67 & 0x20) == 0)
                {
                  v189 = v58 + 2;
                  v183 = v58[1] & 0x3F | ((v67 & 0x1F) << 6);
                  if (!v34)
                  {
                    goto LABEL_129;
                  }

LABEL_161:
                  if (v165)
                  {
                    v77 = &_pcre2_ucd_records_8[3 * _pcre2_ucd_stage2_8[v183 - (v55 & 0xFFFFFF80) + (_pcre2_ucd_stage1_8[v183 / 128] << 7)]];
                    v78 = *(v77 + 1);
                    v68 = v173;
                    if (_pcre2_ucp_gentype_8[v78] == 1)
                    {
                      v79 = v34 <= 0 ? 5 : 9;
                      v68 = v173;
                      if (v79 != v78)
                      {
                        v80 = v77[1] + v183;
                        goto LABEL_172;
                      }
                    }
                  }

                  else
                  {
                    v81 = *(v174 + 24);
                    v82 = 128;
                    if (v34 > 0)
                    {
                      v82 = 96;
                    }

                    v68 = v173;
                    if (((*(v81 + v82 + (v183 >> 3) + 512) >> (v183 & 7)) & 1) == 0)
                    {
                      v80 = *(v81 + v183 + 256);
LABEL_172:
                      v183 = v80;
                      v68 = v173;
                    }
                  }

LABEL_173:
                  if (v54)
                  {
                    v83 = _pcre2_ord2utf_8(v183, v190);
                    v36 = v176;
                    v84 = v83;
                    if (v32)
                    {
LABEL_180:
                      if (v32)
                      {
                        v85 = v84 + v175;
                        goto LABEL_182;
                      }

                      memcpy(&a10[v167], v190, v84);
                      v36 = v176;
                      v167 += v84;
                      v54 = v166;
                      v31 -= v84;
LABEL_183:
                      v34 = v68;
                      v27 = v53;
LABEL_184:
                      v49 = v189;
                      continue;
                    }
                  }

                  else
                  {
                    v190[0] = v183;
                    v84 = 1;
                    if (v32)
                    {
                      goto LABEL_180;
                    }
                  }

                  if (v31 >= v84)
                  {
                    goto LABEL_180;
                  }

                  if ((v36 & 0x1000) == 0)
                  {
                    goto LABEL_367;
                  }

                  v85 = v84 - v31;
LABEL_182:
                  v175 = v85;
                  v32 = 1;
                  goto LABEL_183;
                }

                v55 = v58[1] & 0x3F;
                if ((v67 & 0x10) == 0)
                {
                  v183 = ((v67 & 0xF) << 12) | (v55 << 6) | v58[2] & 0x3F;
                  v69 = v58 + 3;
                  goto LABEL_159;
                }

                if ((v67 & 8) == 0)
                {
                  v183 = ((v67 & 7) << 18) | (v55 << 12) | ((v58[2] & 0x3F) << 6) | v58[3] & 0x3F;
                  v69 = v58 + 4;
                  goto LABEL_159;
                }

                v70 = v58[2] & 0x3F;
                v71 = v58[3] & 0x3F;
                v72 = v58[4] & 0x3F;
                if ((v67 & 4) == 0)
                {
                  v183 = ((v67 & 3) << 24) | (v55 << 18) | (v70 << 12) | (v71 << 6) | v72;
                  v189 = v58 + 5;
                  if (v34)
                  {
                    goto LABEL_161;
                  }

LABEL_129:
                  v68 = 0;
                  goto LABEL_173;
                }

                v183 = ((v67 & 1) << 30) | (v55 << 24) | (v70 << 18) | (v71 << 12) | (v72 << 6) | v58[5] & 0x3F;
                v69 = v58 + 6;
LABEL_159:
                v189 = v69;
              }

              if (v34)
              {
                goto LABEL_161;
              }

              goto LABEL_129;
            }

            if (v55 == 36)
            {
              v182 = 0;
              v58 = v49 + 1;
              v189 = v49 + 1;
              if ((v49 + 1) >= v35)
              {
                goto LABEL_193;
              }

              v55 = *v58;
              if (v55 == 36)
              {
                goto LABEL_125;
              }

              v59 = *v58;
              if (v55 == 123)
              {
                v58 = v49 + 2;
                v189 = v49 + 2;
                if ((v49 + 2) >= v35)
                {
                  goto LABEL_193;
                }

                v59 = *v58;
              }

              if (v59 == 42)
              {
                v189 = ++v58;
                if (v58 >= v35)
                {
                  goto LABEL_193;
                }

                v64 = *v58;
              }

              else
              {
                v60 = v59 - 48;
                if (v59 - 48 <= 9)
                {
                  v61 = v58 + 1;
                  v189 = v58 + 1;
                  if ((v58 + 1) >= v35)
                  {
                    v64 = v59;
                  }

                  else
                  {
                    v62 = ~v58 + v35;
                    v63 = v58 + 2;
                    while (1)
                    {
                      v64 = *v61;
                      if (v64 - 58 < 0xFFFFFFF6)
                      {
                        goto LABEL_205;
                      }

                      v60 = v64 + 10 * v60 - 48;
                      if (v60 > *(v174 + 128))
                      {
                        break;
                      }

                      v189 = ++v61;
                      ++v63;
                      if (!--v62)
                      {
                        goto LABEL_205;
                      }
                    }

                    if ((v36 & 0x800) == 0)
                    {
                      v102 = -49;
                      goto LABEL_237;
                    }

                    do
                    {
                      v61 = v63;
                      v189 = v63;
                      if (v63 >= v35)
                      {
                        break;
                      }

                      ++v63;
                    }

                    while (*v61 - 48 < 0xA);
                  }

LABEL_205:
                  if (v55 != 123)
                  {
                    v92 = 0;
                    v93 = 0;
                    v94 = 0;
                    v95 = 0;
                    v96 = 0;
                    goto LABEL_215;
                  }

                  if ((v36 & 0x200) == 0 || v59 == 42 || v64 != 58 || v61 >= v35 - 2)
                  {
                    if (v61 >= v35 || *v61 != 125)
                    {
                      v102 = -58;
LABEL_237:
                      text_end = v102;
                      v66 = 16;
                      goto LABEL_194;
                    }

                    v92 = 0;
                    v93 = 0;
                    v94 = 0;
                    v95 = 0;
                    v96 = 0;
                    goto LABEL_233;
                  }

                  v189 = v61 + 1;
                  v91 = v61[1];
                  if (v91 != 45 && v91 != 43)
                  {
                    v102 = -59;
                    goto LABEL_237;
                  }

                  v150 = v34;
                  v151 = v61 + 2;
                  v189 = v61 + 2;
                  v147 = v91;
                  text_end = find_text_end(v174, &v189, v35, v91 == 45);
                  if (text_end)
                  {
                    goto LABEL_213;
                  }

                  v94 = v189;
                  v92 = v147;
                  v34 = v150;
                  if (v147 == 43)
                  {
                    if (*v189 == 58)
                    {
                      v146 = v189 + 1;
                      v149 = v189++;
                      text_end = find_text_end(v174, &v189, v35, 1);
                      if (text_end)
                      {
LABEL_213:
                        v66 = 16;
                        v36 = v176;
LABEL_310:
                        v34 = v150;
                        goto LABEL_194;
                      }

                      text_end = 0;
                      v92 = 43;
                      v61 = v189;
                      v96 = v189;
                      v34 = v150;
                      v93 = v151;
                      v95 = v146;
                      v94 = v149;
LABEL_233:
                      v189 = v61 + 1;
LABEL_215:
                      if (v59 == 42)
                      {
                        v101 = v34;
                        if (_pcre2_strcmp_8(v191, "MARK"))
                        {
                          v66 = 11;
                          v36 = v176;
                          v34 = v101;
                          goto LABEL_194;
                        }

                        mark_8 = pcre2_get_mark_8(v164);
                        if (mark_8)
                        {
                          v104 = -1;
                            ;
                          }

                          if (v32 || v31 >= v104)
                          {
                            if (v32)
                            {
                              v175 += v104;
                              v32 = 1;
                            }

                            else
                            {
                              memcpy(&a10[v167], mark_8, v104);
                              v167 += v104;
                              v31 -= v104;
                            }

                            v36 = v176;
                          }

                          else
                          {
                            v36 = v176;
                            if ((v176 & 0x1000) == 0)
                            {
                              v32 = 0;
                              v66 = 3;
                              v34 = v101;
                              goto LABEL_194;
                            }

                            v175 = v104 - v31;
                            v32 = 1;
                          }

                          v34 = v101;
                        }

                        else
                        {
                          v36 = v176;
                          v34 = v101;
                        }
                      }

                      else
                      {
                        v144 = v96;
                        v145 = v95;
                        v97 = v92;
                        v152 = v93;
                        v150 = v34;
                        v148 = v94;
                        if ((v60 & 0x80000000) == 0)
                        {
                          goto LABEL_220;
                        }

                        v180 = 0;
                        v181 = 0;
                        v98 = pcre2_substring_nametable_scan_8(v174, v191, &v181, &v180);
                        v36 = v176;
                        if ((v176 & 0x800) != 0 && v98 == -49)
                        {
                          v60 = *(v174 + 128) + 1;
LABEL_220:
                          v27 = v53;
                        }

                        else
                        {
                          text_end = v98;
                          if ((v98 & 0x80000000) != 0)
                          {
                            v66 = 16;
                            v27 = v53;
                            goto LABEL_310;
                          }

                          v27 = v53;
                          if (v181 <= v180)
                          {
                            v126 = v181;
                            do
                            {
                              v127 = __rev16(*v126);
                              if (v127 < ovector_count_8)
                              {
                                if (v60 < 0)
                                {
                                  v60 = v127;
                                }

                                if (v159[2 * v127] != -1)
                                {
                                  v60 = v127;
                                  goto LABEL_221;
                                }
                              }

                              v126 = (v126 + v98);
                            }

                            while (v126 <= v180);
                            if ((v60 & 0x80000000) == 0)
                            {
                              goto LABEL_221;
                            }
                          }

                          v60 = __rev16(*v181);
                        }

LABEL_221:
                        v99 = pcre2_substring_length_bynumber_8(v164, v60, &v182);
                        v34 = v150;
                        text_end = v99;
                        if ((v99 & 0x80000000) != 0)
                        {
                          v106 = v99;
                          if (v99 == -49)
                          {
                            v106 = v155;
                          }

                          text_end = v106;
                          if (v106 != -55)
                          {
                            v66 = 16;
                            goto LABEL_300;
                          }

                          text_end = -55;
                          if (!v97)
                          {
                            v66 = v154;
LABEL_300:
                            v36 = v176;
                            goto LABEL_194;
                          }
                        }

                        if (v97)
                        {
                          if (v97 != 45 || (v144 = v148, v145 = v152, text_end))
                          {
                            v36 = v176;
                            if (v50 > 0x13)
                            {
LABEL_193:
                              v66 = 11;
                              goto LABEL_194;
                            }

                            *&v192[v50 / 2] = v189;
                            *(&v192[v50 / 2] + 1) = v35;
                            v50 += 2;
                            v100 = v145;
                            if (text_end)
                            {
                              v35 = v144;
                            }

                            else
                            {
                              v100 = v152;
                              v35 = v148;
                            }

                            v189 = v100;
                            v66 = 9;
LABEL_194:
                            v33 = 0;
                            goto LABEL_195;
                          }
                        }

                        v107 = v159[2 * v60];
                        v108 = v159[(2 * (v60 & 0x3FFFFFFF)) | 1u];
                        v36 = v176;
                        if (v107 < v108)
                        {
                          v153 = &a2[v108];
                          v109 = &a2[v107];
                          while (1)
                          {
                            v110 = *v109;
                            v183 = v110;
                            if (v54 && v110 >= 0xC0)
                            {
                              if ((v110 & 0x20) != 0)
                              {
                                v115 = v109[1] & 0x3F;
                                if ((v110 & 0x10) != 0)
                                {
                                  if ((v110 & 8) != 0)
                                  {
                                    v123 = v109[2] & 0x3F;
                                    v124 = v109[3] & 0x3F;
                                    v125 = v109[4] & 0x3F;
                                    if ((v110 & 4) != 0)
                                    {
                                      v110 = ((v110 & 1) << 30) | (v115 << 24) | (v123 << 18) | (v124 << 12) | (v125 << 6) | v109[5] & 0x3F;
                                      v183 = v110;
                                      v109 += 6;
                                    }

                                    else
                                    {
                                      v109 += 5;
                                      v110 = ((v110 & 3) << 24) | (v115 << 18) | (v123 << 12) | (v124 << 6) | v125;
                                      v183 = v110;
                                    }
                                  }

                                  else
                                  {
                                    v110 = ((v110 & 7) << 18) | (v115 << 12) | ((v109[2] & 0x3F) << 6) | v109[3] & 0x3F;
                                    v183 = v110;
                                    v109 += 4;
                                  }
                                }

                                else
                                {
                                  v110 = ((v110 & 0xF) << 12) | (v115 << 6) | v109[2] & 0x3F;
                                  v183 = v110;
                                  v109 += 3;
                                }
                              }

                              else
                              {
                                v111 = v109[1];
                                v109 += 2;
                                v183 = v111 & 0x3F | ((v110 & 0x1F) << 6);
                                v110 = v183;
                              }
                            }

                            else
                            {
                              ++v109;
                            }

                            if (v34)
                            {
                              break;
                            }

LABEL_278:
                            if (v54)
                            {
                              v118 = v34;
                              v119 = _pcre2_ord2utf_8(v110, v190);
                              v34 = v118;
                              v36 = v176;
                              v120 = v119;
                            }

                            else
                            {
                              v190[0] = v110;
                              v120 = 1;
                            }

                            if (v32 || v31 >= v120)
                            {
                              if (!v32)
                              {
                                v122 = v34;
                                memcpy(&a10[v167], v190, v120);
                                v34 = v122;
                                v36 = v176;
                                v32 = 0;
                                v167 += v120;
                                v54 = v166;
                                v31 -= v120;
                                goto LABEL_288;
                              }

                              v121 = v120 + v175;
                            }

                            else
                            {
                              if ((v36 & 0x1000) == 0)
                              {
                                v32 = 0;
                                v66 = 3;
                                goto LABEL_194;
                              }

                              v121 = v120 - v31;
                            }

                            v175 = v121;
                            v32 = 1;
LABEL_288:
                            if (v109 >= v153)
                            {
                              goto LABEL_325;
                            }
                          }

                          if (v165)
                          {
                            v112 = &_pcre2_ucd_records_8[3 * _pcre2_ucd_stage2_8[v110 & 0x7F | (_pcre2_ucd_stage1_8[v110 >> 7] << 7)]];
                            v113 = *(v112 + 1);
                            if (_pcre2_ucp_gentype_8[v113] == 1)
                            {
                              v114 = v34 <= 0 ? 5 : 9;
                              if (v114 != v113)
                              {
                                v110 += v112[1];
                                goto LABEL_276;
                              }
                            }
                          }

                          else
                          {
                            v116 = *(v174 + 24);
                            v117 = 128;
                            if (v34 > 0)
                            {
                              v117 = 96;
                            }

                            if (((*(v116 + v117 + (v110 >> 3) + 512) >> (v110 & 7)) & 1) == 0)
                            {
                              v110 = *(v116 + v110 + 256);
LABEL_276:
                              v183 = v110;
                            }
                          }

                          v34 = v173;
                          goto LABEL_278;
                        }
                      }

LABEL_325:
                      v33 = 0;
                      goto LABEL_184;
                    }

                    v95 = 0;
                    v96 = 0;
                    text_end = 0;
                    v92 = 43;
                  }

                  else
                  {
                    v95 = 0;
                    v96 = 0;
                    text_end = 0;
                  }

                  v61 = v189;
                  v93 = v151;
                  goto LABEL_233;
                }

                v64 = v59;
              }

              v86 = *(v174 + 24) + 832;
              if ((*(v86 + v64) & 0x10) == 0)
              {
                goto LABEL_193;
              }

              v87 = v58 + 1;
              v88 = v191 + 1;
              v89 = 32;
              do
              {
                *(v88 - 1) = v64;
                if (!v89)
                {
                  goto LABEL_193;
                }

                v90 = v88;
                v61 = v87;
                v189 = v87;
                if (v87 >= v35)
                {
                  break;
                }

                ++v87;
                v64 = *v61;
                --v89;
                ++v88;
              }

              while ((*(v86 + *v61) & 0x10) != 0);
              *v90 = 0;
              v60 = -1;
              goto LABEL_205;
            }

            if ((v36 & 0x200) == 0 || v55 != 92)
            {
              goto LABEL_124;
            }

            v191[0] = 0;
            if (v49 < v35 - 1)
            {
              v65 = v49[1];
              if (v65 <= 0x6B)
              {
                if (v65 == 76)
                {
                  v33 = 0;
                  v189 = v49 + 2;
                  v66 = 9;
                  v173 = -1;
                  v34 = 0xFFFFFFFFLL;
                  goto LABEL_195;
                }

                if (v65 == 85)
                {
                  v33 = 0;
                  v189 = v49 + 2;
                  v66 = 9;
                  v173 = 1;
                  v34 = 1;
                  goto LABEL_195;
                }

                goto LABEL_140;
              }

              if (v65 == 108)
              {
                v33 = 0;
                v173 = 0;
                v189 = v49 + 2;
                v34 = 0xFFFFFFFFLL;
                goto LABEL_190;
              }

              if (v65 == 117)
              {
                v33 = 0;
                v173 = 0;
                v189 = v49 + 2;
                v34 = 1;
LABEL_190:
                v66 = 9;
                goto LABEL_195;
              }
            }

LABEL_140:
            v73 = v34;
            v189 = v49 + 1;
            v74 = _pcre2_check_escape_8(&v189, v35, &v183, v191, *(v174 + 88), *(v174 + 92), 0, 0);
            text_end = v74;
            if (v191[0])
            {
              v33 = 0;
              v66 = 28;
              v36 = v176;
              v34 = v73;
            }

            else
            {
              LODWORD(v34) = v73;
              if (!v74)
              {
                text_end = 0;
                v36 = v176;
                if (v73)
                {
                  goto LABEL_161;
                }

                goto LABEL_129;
              }

              if (v74 == 26)
              {
                v75 = 9;
              }

              else
              {
                v75 = 28;
              }

              v33 = v74 != 25 && v74 == 26;
              v76 = v173;
              if (v74 == 25)
              {
                v76 = 0;
              }

              v173 = v76;
              if (v74 == 25)
              {
                v66 = 9;
              }

              else
              {
                v66 = v75;
              }

              if (v74 == 25)
              {
                v34 = 0;
              }

              else
              {
                v34 = v73;
              }

              v36 = v176;
            }

LABEL_195:
            if (v66 != 9)
            {
              if (v66 > 10)
              {
                v16 = v164;
                v19 = v158;
                v13 = text_end;
                if (v66 == 11)
                {
                  v13 = 4294967261;
                }

                else if (v66 != 16)
                {
                  v13 = 4294967239;
                }

                *v156 = v189 - a8;
              }

              else
              {
                v16 = v164;
                v19 = v158;
                v13 = 4294967248;
              }

              goto LABEL_384;
            }

            goto LABEL_184;
          }

          break;
        }

        if (v50)
        {
          v35 = *(&v192[v50 / 2 - 1] + 1);
          v50 -= 2;
          v57 = *&v192[v50 / 2];
LABEL_102:
          v189 = v57;
          goto LABEL_184;
        }

        v28 = v157;
        v29 = v159;
LABEL_340:
        if (!v163 || v32)
        {
          goto LABEL_355;
        }

        v133 = *(v163 + 7);
        if (!v133)
        {
          v32 = 0;
          goto LABEL_355;
        }

        v134 = v34;
        HIDWORD(v188) = v162;
        v186 = v167;
        v135 = v133(v184, *(v163 + 8));
        if (!v135)
        {
          v32 = 0;
          v36 = v176;
          v34 = v134;
          goto LABEL_355;
        }

        v136 = v135;
        v167 -= v186 - *(&v185 + 1);
        v31 += v186 - *(&v185 + 1);
        v36 = v176;
        if ((a5 & 0x20000) != 0)
        {
          v32 = 0;
        }

        else
        {
          v137 = v29[1] - *v29;
          if (v31 < v137)
          {
            if ((v176 & 0x1000) != 0)
            {
              v34 = v134;
              v175 = v137 - v31;
              v32 = 1;
LABEL_353:
              if (v136 < 0)
              {
                v36 &= ~0x100u;
              }

LABEL_355:
              v37 = v29[1];
              if (*v29 <= v27)
              {
                v138 = -2147483640;
              }

              else
              {
                v138 = 0;
              }

              v169 = *v29;
              if (*v29 != v37)
              {
                v138 = 0;
              }

              v171 = v138;
              v44 = v29[1];
              goto LABEL_361;
            }

LABEL_367:
            v13 = 4294967248;
LABEL_383:
            v16 = v164;
            v19 = v158;
            goto LABEL_384;
          }

          memcpy(&a10[v167], &a2[*v29], v137);
          v36 = v176;
          v32 = 0;
          v167 += v137;
          v31 -= v137;
        }

        v34 = v134;
        goto LABEL_353;
      }

      v42 = 4294967235;
LABEL_382:
      v13 = v42;
      goto LABEL_383;
    }

    v42 = 4294967231;
    if (v169 != v37)
    {
      goto LABEL_382;
    }

    v171 = -2147483640;
    v169 = v37;
    v44 = v27;
    if (v170 == v27)
    {
      goto LABEL_382;
    }

LABEL_361:
    v170 = v27;
    v27 = v44;
    v17 = 1;
    if ((v36 & 0x100) == 0)
    {
      goto LABEL_362;
    }
  }

  matched = *(v164 + 76);
  if ((matched & 0x80000000) == 0)
  {
    goto LABEL_41;
  }

LABEL_49:
  v42 = matched;
  if (matched != -1)
  {
    goto LABEL_382;
  }

  if (v171 && v27 < a3)
  {
    v44 = v27 + 1;
    if (a2[v27] == 13 && *(v174 + 122) - 3 <= 0xFFFFFFFD && v44 < a3 && a2[v44] == 10)
    {
      v44 = v27 + 2;
    }

    else if ((*(v174 + 90) & 8) != 0 && v44 < a3)
    {
      while ((a2[v44] & 0xC0) == 0x80)
      {
        if (a3 == ++v44)
        {
          v44 = a3;
          break;
        }
      }
    }

    if ((a5 & 0x20000) != 0)
    {
      v171 = 0;
    }

    else
    {
      v45 = v44 - v27;
      if (v32 || v31 >= v45)
      {
        if (v32)
        {
          v171 = 0;
          v46 = v45 + v175;
          goto LABEL_79;
        }

        v129 = v34;
        memcpy(&a10[v167], &a2[v27], v44 - v27);
        v34 = v129;
        v36 = v176;
        v171 = 0;
        v32 = 0;
        v167 += v45;
        v29 = v159;
        v31 -= v45;
      }

      else
      {
        if ((v36 & 0x1000) == 0)
        {
          goto LABEL_367;
        }

        v171 = 0;
        v46 = v45 - v31;
LABEL_79:
        v175 = v46;
        v32 = 1;
      }
    }

    v27 = v170;
    goto LABEL_361;
  }

LABEL_362:
  if ((a5 & 0x20000) != 0)
  {
    v16 = v164;
    v19 = v158;
    goto LABEL_369;
  }

  v139 = v31;
  v140 = a3 - v27;
  if (v32 || v139 >= v140)
  {
    v16 = v164;
    v19 = v158;
    if (v32)
    {
      v141 = v175 + v140;
LABEL_377:
      v190[0] = 0;
      goto LABEL_378;
    }

    v143 = v36;
    memcpy(&a10[v167], &a2[v27], a3 - v27);
    LOWORD(v36) = v143;
    v32 = 0;
    v167 += v140;
    v31 = v139 - v140;
LABEL_369:
    v190[0] = 0;
    if (!v32 && !v31)
    {
      if ((v36 & 0x1000) == 0)
      {
        goto LABEL_380;
      }

      v142 = 1;
      goto LABEL_379;
    }

    v141 = v175;
    if (!v32)
    {
      a10[v167] = v190[0];
      *v156 = v167;
      v13 = v162;
      goto LABEL_384;
    }

LABEL_378:
    v142 = v141 + 1;
LABEL_379:
    *v156 = v142 + v172;
    goto LABEL_380;
  }

  v16 = v164;
  v19 = v158;
  if ((v36 & 0x1000) != 0)
  {
    v141 = v140 - v139;
    goto LABEL_377;
  }

LABEL_380:
  v13 = 4294967248;
LABEL_384:
  if (v19)
  {
    pcre2_match_data_free_8(v19);
  }

  else
  {
    *(v16 + 76) = v13;
  }

LABEL_3:
  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

std::string *FRPCREGraph::replace@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  v41 = *MEMORY[0x1E69E9840];
  std::string::operator=((a1 + 136), a2);
  v5 = *(a1 + 160);
  v38 = a1;
  if (!v5)
  {
    operator new();
  }

  v7 = *v5;
  for (i = v5[1]; i != v7; std::allocator_traits<std::allocator<FRReplaceInst>>::destroy[abi:ne200100]<FRReplaceInst,0>(i))
  {
    i -= 80;
  }

  v5[1] = v7;
  v8 = v38;
  if (*(v38 + 128))
  {
    v35 = a3;
    *(v38 + 184) = *(v38 + 176);
    *(v38 + 132) = 0;
    v9 = *(a2 + 23);
    if ((v9 & 0x80u) != 0)
    {
      v9 = *(a2 + 8);
    }

    v10 = v9 + 257;
    v11 = malloc_type_malloc(v9 + 257, 0x100004077774924uLL);
    v12 = malloc_type_malloc(v10, 0x100004077774924uLL);
    v13 = *(a2 + 23);
    if ((v13 & 0x80u) == 0)
    {
      v14 = a2;
    }

    else
    {
      v14 = *a2;
    }

    if ((v13 & 0x80u) != 0)
    {
      v13 = *(a2 + 8);
    }

    memcpy(v11, v14, v13 + 1);
    *v12 = 0;
    v15 = *(a2 + 23);
    v16 = *(a2 + 8);
    v39 = v10;
    pcre2_match_context_create_8(0);
    v18 = v17;
    v34 = pcre2_jit_stack_create_8(0x1000uLL, 0x8000uLL, 0);
    pcre2_jit_stack_assign_8(v18, 0, v34);
    v19 = pcre2_match_data_create_8(0xAu, 0);
    pcre2_set_substitute_callout_8(v18, FRPCREGraph::replace(std::string const&)::$_0::__invoke, v38);
    *(v38 + 132) = 0;
    if (*(v38 + 128) < 1)
    {
      v28 = v12;
LABEL_35:
      free(v11);
      free(v28);
      pcre2_match_data_free_8(v19);
      pcre2_general_context_free_8(v18);
      pcre2_jit_stack_free_8(v34);
      v8 = v38;
      if (**(v38 + 160) != *(*(v38 + 160) + 8))
      {
        operator new();
      }
    }

    else
    {
      v20 = 0;
      if ((v15 & 0x80u) != 0)
      {
        v15 = v16;
      }

      while (1)
      {
        v21 = v8;
        v22 = *(*(v8 + 80) + 8 * v20);
        v23 = *(*(v21 + 104) + 8 * v20);
        v24 = pcre2_substitute_8(v22, v11, v15, 0, 7424, v19, v18, v23, 0xFFFFFFFFFFFFFFFFLL, v12, &v39);
        v37 = *(v38 + 132);
        for (j = v39; v24 == -48 && v39 > v10; j = v39)
        {
          v10 += 256;
          v12 = malloc_type_realloc(v12, v10, 0x100004077774924uLL);
          v11 = malloc_type_realloc(v11, v10, 0x100004077774924uLL);
          v39 = v10;
          *(v38 + 132) = -1;
          v24 = pcre2_substitute_8(v22, v11, v15, 0, 7424, v19, v18, v23, 0xFFFFFFFFFFFFFFFFLL, v12, &v39);
        }

        v8 = v38;
        *(v38 + 132) = v37;
        if ((v24 & 0x80000000) != 0)
        {
          break;
        }

        v27 = *(v38 + 128);
        if (v37 >= v27 - 1)
        {
          v28 = v12;
        }

        else
        {
          v39 = v10;
          v28 = v11;
          v15 = j;
          v11 = v12;
          v12 = v28;
        }

        v20 = v37 + 1;
        *(v38 + 132) = v37 + 1;
        if (v37 + 1 >= v27)
        {
          goto LABEL_35;
        }
      }

      if (Diagnostics_GetLogObject(void)::onceToken != -1)
      {
        dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
      }

      v31 = Diagnostics_GetLogObject(void)::__profile_log_default;
      if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v40.__r_.__value_.__l.__data_) = 67109120;
        HIDWORD(v40.__r_.__value_.__r.__words[0]) = v24;
        _os_log_impl(&dword_1C2F95000, v31, OS_LOG_TYPE_ERROR, "pcre2_substitute failed: %d", &v40, 8u);
      }

      Diagnostics::log(3, "pcre2_substitute failed: %d", v32, v24);
      free(v11);
      free(v12);
    }

    result = std::pair<std::string,std::shared_ptr<std::vector<FRReplaceInst>>>::pair[abi:ne200100](v35, (v8 + 136));
    v33 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v29 = *MEMORY[0x1E69E9840];

    return std::pair<std::string,std::shared_ptr<std::vector<FRReplaceInst>>>::pair[abi:ne200100](a3, (v38 + 136));
  }

  return result;
}

void sub_1C2FF0EF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  _Unwind_Resume(a1);
}

void std::vector<FRReplaceInst>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    for (i = v1[1]; i != v2; std::allocator_traits<std::allocator<FRReplaceInst>>::destroy[abi:ne200100]<FRReplaceInst,0>(i))
    {
      i -= 80;
    }

    v1[1] = v2;
    v5 = **a1;

    operator delete(v5);
  }
}

uint64_t pcre2_match_8(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = v2;
  v13 = v1;
  v185 = *MEMORY[0x1E69E9840];
  v182 = 0u;
  v183 = 0u;
  v180 = 0u;
  v181 = 0u;
  v179 = 0u;
  v177 = 0u;
  memset(v178, 0, sizeof(v178));
  v175 = 0u;
  v176 = 0u;
  v173 = 0u;
  v174 = 0u;
  v171 = 0u;
  v172 = 0u;
  v169 = 0u;
  v170 = 0u;
  v167 = 0u;
  v168 = 0u;
  v165 = 0u;
  v166 = 0u;
  v164 = 0u;
  v161 = 0u;
  v162 = 0u;
  v160 = 0u;
  memset(v184, 0, sizeof(v184));
  v163 = v184;
  if (v3 == -1)
  {
    v14 = _pcre2_strlen_8(v2);
    v15 = 1;
  }

  else
  {
    v14 = v3;
    v15 = 0;
  }

  if ((v9 & 0x1FFF9FC0) != 0)
  {
    goto LABEL_5;
  }

  v16 = 4294967245;
  if (!v13 || !v12 || !v7)
  {
    goto LABEL_6;
  }

  if (v14 < v11)
  {
    v16 = 4294967263;
    goto LABEL_6;
  }

  if (v13[10].i32[0] != 1346589253)
  {
    v16 = 4294967265;
    goto LABEL_6;
  }

  v19 = v13[12].u32[0];
  if ((v19 & 7) != 1)
  {
    v16 = 4294967264;
    goto LABEL_6;
  }

  v21 = (v9 & 0xA0002000) == 0 && *&v13[4] != 0;
  v22 = v13[11].i32[0];
  v23 = (v9 >> 4) & 1;
  if ((v9 & 0x20) != 0)
  {
    v23 = 2;
  }

  LOWORD(v168) = v23;
  if (v23)
  {
    if (((v22 | v9) & 0x20000000) != 0)
    {
LABEL_5:
      v16 = 4294967262;
      goto LABEL_6;
    }
  }

  if (v5 && *(v5 + 72) != -1 && (v22 & 0x800000) == 0)
  {
    v16 = 4294967240;
    goto LABEL_6;
  }

  v151 = &v12[v11];
  v24 = (v19 >> 14) & 0xC;
  v153 = v22 & 0x80000;
  v138 = v15;
  v158 = v22;
  if (*(v7 + 73))
  {
    (*(v7 + 8))(*(v7 + 32), *(v7 + 16));
    v22 = v158;
    *(v7 + 73) &= ~1u;
  }

  v142 = v24 | v9;
  *(v7 + 64) = 0;
  v152 = (v7 + 64);
  *(v7 + 32) = 0;
  v25 = 0;
  if (!v21)
  {
    v29 = &v12[v11];
    goto LABEL_53;
  }

  if (v9 >> 30 || !v153 || (v22 & 0x4000000) != 0)
  {
    v29 = &v12[v11];
  }

  else
  {
    if (v14 > v11 && (*v151 & 0xC0) == 0x80)
    {
      goto LABEL_72;
    }

    v26 = v13[15].u16[2];
    if (v13[15].i16[2] && v11 >= 1)
    {
      v27 = &v12[v11];
LABEL_41:
      v28 = (v27 - 1);
      while (1)
      {
        v29 = v28;
        if (v28 <= v12)
        {
          break;
        }

        --v28;
        if ((*v29 & 0xC0) != 0x80)
        {
          v27 = v29;
          if (--v26)
          {
            goto LABEL_41;
          }

          break;
        }
      }
    }

    else
    {
      v29 = &v12[v11];
    }

    valid = _pcre2_valid_utf_8(v29, v14 - (v29 - v12), v152);
    *(v7 + 76) = valid;
    if (valid)
    {
      v16 = valid;
      *v152 += v29 - v12;
      goto LABEL_6;
    }

    v25 = 1;
  }

  matched = pcre2_jit_match_8(v13, v12, v14, v11, v142, v7, v5);
  v22 = v158;
  if (matched == -45)
  {
LABEL_53:
    v32 = 0;
    v33 = &v12[v14];
    *&v170 = v12;
    v141 = &v12[v14];
    if (!v153 || v25)
    {
      goto LABEL_98;
    }

    if ((v9 & 0x40000000) != 0 && (v22 & 0x4000000) == 0)
    {
      v32 = 0;
      goto LABEL_98;
    }

    if ((v22 & 0x4000000) != 0)
    {
      if (v29 < v33)
      {
        v34 = *v29 & 0xC0;
        if (v34 == 128)
        {
          v35 = &v12[v14];
          v36 = &v12[v14 + ~v29];
          while (v36)
          {
            v37 = *++v29;
            --v36;
            if ((v37 & 0xC0) != 0x80)
            {
              goto LABEL_64;
            }
          }

          *&v170 = &v12[v14];
          v29 = &v12[v14];
          goto LABEL_85;
        }

LABEL_64:
        *&v170 = v29;
        v35 = v29;
        if (v34 == 128)
        {
LABEL_85:
          v42 = _pcre2_valid_utf_8(v35, &v12[v14] - v35, v152);
          *(v7 + 76) = v42;
          if (v42)
          {
            v16 = v42;
            v43 = (v7 + 64);
            v44 = v158;
            while (1)
            {
              v45 = v170;
              v46 = *v43;
              v47 = v170 - v12 + *v43;
              *v43 = v47;
              if ((v44 & 0x4000000) == 0 || v16 > 0)
              {
                goto LABEL_6;
              }

              v48 = &v12[v47];
              if (&v12[v47] >= v29)
              {
                break;
              }

              v49 = (v46 + v45 + 1);
              v155 = &v12[v47];
              while (v49 < v29)
              {
                v50 = *v49++;
                if ((v50 & 0xC0) != 0x80)
                {
                  v51 = (v49 - 1);
                  goto LABEL_95;
                }
              }

              v51 = v29;
LABEL_95:
              *&v170 = v51;
              v43 = (v7 + 64);
              v16 = _pcre2_valid_utf_8(v51, &v12[v14] - v51, v152);
              *(v7 + 76) = v16;
              v44 = v158;
              if (!v16)
              {
                v32 = 0;
                v33 = &v12[v14];
                v48 = v155;
                goto LABEL_99;
              }
            }

            v32 = 2;
            v33 = &v12[v14];
LABEL_99:
            v52 = &_pcre2_default_match_context_8;
            if (v5)
            {
              v53 = v5;
            }

            else
            {
              v53 = v13;
            }

            v54 = *v53;
            if (v5)
            {
              v52 = v5;
            }

            v160 = *v53;
            *&v161 = *(v53 + 16);
            v55 = v13[11].i32[0];
            v56 = v13[12].u32[0];
            v57 = *(v52 + 9);
            if (v57 == -1)
            {
              v58 = v33;
            }

            else
            {
              v58 = &v12[v57];
            }

            v150 = v58;
            LODWORD(v178[0]) = 2;
            *&v179 = v12;
            *(&v179 + 1) = v48 - v12;
            DWORD2(v183) = 0;
            v59 = *(v52 + 5);
            *&v177 = *(v52 + 6);
            *(&v177 + 1) = v59;
            *(&v176 + 1) = v178;
            *&v167 = v11;
            *(&v170 + 1) = v48;
            v137 = v56;
            if (v13[15].i16[2])
            {
              v60 = 1;
            }

            else
            {
              v60 = (v56 >> 13) & 1;
            }

            LODWORD(v165) = (v56 >> 12) & 1;
            DWORD1(v165) = v60;
            *(&v172 + 1) = 0;
            *&v173 = 0;
            WORD2(v168) = v13[16].i16[3];
            WORD3(v168) = v13[16].i16[2];
            *(&v168 + 1) = v13 + 17;
            *&v169 = v13 + WORD3(v168) * WORD2(v168) + 136;
            *(&v169 + 1) = v12;
            WORD1(v168) = v13[15].i16[0];
            v156 = v55;
            LODWORD(v175) = v55;
            *(&v175 + 1) = 0;
            v16 = 4294967252;
            v61 = v13[15].u16[1];
            if (v61 > 3)
            {
              switch(v61)
              {
                case 4u:
                  v63 = 1;
                  break;
                case 5u:
                  v63 = 2;
                  break;
                case 6u:
                  LODWORD(v176) = 1;
                  BYTE4(v176) = 0;
                  goto LABEL_125;
                default:
                  goto LABEL_6;
              }

              HIDWORD(v175) = v63;
            }

            else
            {
              switch(v61)
              {
                case 1u:
                  LODWORD(v176) = 1;
                  v62 = 13;
                  break;
                case 2u:
                  LODWORD(v176) = 1;
                  v62 = 10;
                  break;
                case 3u:
                  LODWORD(v176) = 2;
                  WORD2(v176) = 2573;
                  goto LABEL_125;
                default:
                  goto LABEL_6;
              }

              BYTE4(v176) = v62;
            }

LABEL_125:
            v64 = v13[16].u16[0];
            v65 = 16 * v64;
            v66 = 16 * v64 + 128;
            LODWORD(v67) = *(v52 + 20);
            v68 = v13[12].u32[1];
            if (v67 >= v68)
            {
              v67 = v68;
            }

            else
            {
              v67 = v67;
            }

            *(&v163 + 1) = v67;
            *&v164 = vmin_u32(*(v52 + 84), v13[13]);
            if (v64 > 0x78)
            {
              *(&v161 + 1) = 10 * v66;
              if (v67 < (10 * v66) >> 10)
              {
                if (v66 > v67 << 10)
                {
                  v16 = 4294967233;
                  goto LABEL_6;
                }

                *(&v161 + 1) = (v67 << 10) - (v67 << 10) % v66;
              }

              v69 = v32;
              v70 = v48;
              v148 = (16 * v64 + 128);
              v71 = (v160)();
              *&v162 = v71;
              if (!v71)
              {
                goto LABEL_382;
              }

              v72 = *(&v161 + 1);
              v65 = 16 * v13[16].u16[0];
            }

            else
            {
              v69 = v32;
              v70 = v48;
              v71 = v163;
              v148 = (16 * v64 + 128);
              v72 = 0x5000 / v66 * v66;
              *(&v161 + 1) = v72;
              *&v162 = v163;
            }

            *(&v162 + 1) = v71 + v72;
            memset((v71 + 128), 255, v65);
            v73 = mapped_global_table;
            if (v13[3])
            {
              v73 = v13[3];
            }

            v74 = v73 + 256;
            *(&v165 + 1) = v73;
            *&v166 = v73 + 256;
            *(&v166 + 1) = v73 + 832;
            v75 = v13[12].i32[0];
            v144 = v75 & 0x10;
            v145 = v75;
            if ((v75 & 0x10) != 0)
            {
              v76 = v13[14].i32[0];
              v77 = v70;
              v78 = v158;
              v79 = v69;
              __c[0] = v76;
              if ((v75 & 0x20) != 0)
              {
                v147 = 0;
                __c[1] = *(v74 + v76);
                if (v76 >= 0x80u && (v158 & 0x20000) != 0 && !v153)
                {
                  v147 = 0;
                  __c[1] = (_pcre2_ucd_records_8[3 * _pcre2_ucd_stage2_8[v76 & 0x7F | (_pcre2_ucd_stage1_8[v76 >> 7] << 7)] + 1] + v76);
                }
              }

              else
              {
                v147 = 0;
                __c[1] = v13[14].i32[0];
              }
            }

            else
            {
              *__c = 0;
              v80 = (v137 >> 9) & 1;
              if ((v75 & 0x40) == 0)
              {
                v80 = 1;
              }

              if (v80)
              {
                v81 = 0;
              }

              else
              {
                v81 = v13 + 5;
              }

              v147 = v81;
              v77 = v70;
              v78 = v158;
              v79 = v69;
            }

            v136 = v151 - 1;
            v146 = (v78 >> 19) & 1;
            v154 = v156 | v9;
            if ((v75 & 0x80) != 0)
            {
              v82 = v13[14].i32[1];
              if ((v75 & 0x100) != 0)
              {
                LOBYTE(v74) = *(v74 + v13[14].i32[1]);
                if (v13[14].i32[1] >= 0x80u && (v78 & 0x20000) != 0 && !v153)
                {
                  LODWORD(v74) = _pcre2_ucd_records_8[3 * _pcre2_ucd_stage2_8[v13[14].i32[1] & 0x7F | (_pcre2_ucd_stage1_8[v13[14].i32[1] >> 7] << 7)] + 1] + v13[14].i32[1];
                }
              }

              else
              {
                LODWORD(v74) = v13[14].i32[1];
              }
            }

            else
            {
              LOBYTE(v82) = 0;
              LOBYTE(v74) = 0;
            }

            v84 = (v75 & 0x10) != 0 || v147 != 0;
            v139 = v84;
            v135 = v144 >> 4;
            v133 = v82;
            v134 = v74;
LABEL_162:
            v140 = 0;
            v157 = 0;
            v159 = 0;
            HIDWORD(v164) = 0;
            v149 = v79 | v142;
            while (1)
            {
              if (v13[11].i8[2])
              {
                goto LABEL_282;
              }

              if ((v156 & 0x100) == 0)
              {
                v85 = v77;
                goto LABEL_166;
              }

              if (v153)
              {
                v85 = v29;
                if (v29 >= v77)
                {
                  goto LABEL_166;
                }

LABEL_175:
                if (HIDWORD(v175))
                {
                  if (v85 < *(&v170 + 1))
                  {
                    v90 = v77;
                    is_newline_8 = _pcre2_is_newline_8(v85, SHIDWORD(v175), *(&v170 + 1), &v176, v146);
                    v77 = v90;
                    if (is_newline_8)
                    {
                      goto LABEL_166;
                    }
                  }
                }

                else if (v85 <= *(&v170 + 1) - v176 && *v85 == BYTE4(v176) && (v176 == 1 || v85[1] == BYTE5(v176)))
                {
                  goto LABEL_166;
                }

                ++v85;
                while (v85 < v77)
                {
                  v92 = *v85++;
                  if ((v92 & 0xC0) != 0x80)
                  {
                    --v85;
                    goto LABEL_175;
                  }
                }
              }

              else
              {
                v85 = v29;
                if (v29 < v77)
                {
                  do
                  {
                    if (HIDWORD(v175))
                    {
                      if (v85 < *(&v170 + 1))
                      {
                        v97 = v77;
                        v98 = _pcre2_is_newline_8(v85, SHIDWORD(v175), *(&v170 + 1), &v176, v146);
                        v77 = v97;
                        if (v98)
                        {
                          break;
                        }
                      }
                    }

                    else if (v85 <= *(&v170 + 1) - v176 && *v85 == BYTE4(v176) && (v176 == 1 || v85[1] == BYTE5(v176)))
                    {
                      break;
                    }

                    ++v85;
                  }

                  while (v85 < v77);
                }
              }

LABEL_166:
              if (v154 < 0)
              {
                if (v139)
                {
                  if (v29 >= v85)
                  {
                    goto LABEL_347;
                  }

                  v93 = *v29;
                  v95 = v93 != __c[0] && v93 != __c[1] || v144 == 0;
                  v96 = !v95;
                  if (v95 && v147)
                  {
                    v96 = (v147->u8[*v29 >> 3] >> (v93 & 7)) & 1;
                  }

                  if (!v96)
                  {
LABEL_347:
                    v16 = 0;
LABEL_348:
                    v77 = v85;
LABEL_349:
                    if (v153 && v77 != v141 && (!v16 || v16 == -2))
                    {
                      while (2)
                      {
                        v124 = v77;
                        while (1)
                        {
                          v29 = (v124 + 1);
                          if ((v124 + 1) >= v141)
                          {
                            v16 = 0;
                            goto LABEL_362;
                          }

                          ++v124;
                          if ((*v29 & 0xC0) != 0x80)
                          {
                            v125 = v77;
                            *&v170 = v29;
                            v126 = _pcre2_valid_utf_8(v29, &v12[v14 - v29], v152);
                            if (!v126)
                            {
                              *(&v170 + 1) = &v12[v14];
                              v79 = 1;
                              v77 = &v12[v14];
                              goto LABEL_162;
                            }

                            v77 = v125;
                            v124 = v125;
                            if (v126 < 0)
                            {
                              break;
                            }
                          }
                        }

                        v127 = *v152;
                        v77 = (v29 + *v152);
                        *(&v170 + 1) = v77;
                        if (v127 <= 0)
                        {
                          continue;
                        }

                        break;
                      }

                      v79 = 3;
                      goto LABEL_162;
                    }

LABEL_362:
                    if (v162 != v163)
                    {
                      v128 = v77;
                      (*(&v160 + 1))(v162, v161);
                      v77 = v128;
                    }

                    *(v7 + 24) = v13;
                    *(v7 + 40) = *(&v172 + 1);
                    *(v7 + 72) = 0;
                    if (v16 == 1)
                    {
                      if (SDWORD2(v167) < 2 * *(v7 + 74))
                      {
                        v16 = (SDWORD2(v167) / 2 + 1);
                      }

                      else
                      {
                        v16 = 0;
                      }

                      *(v7 + 64) = v29 - v12;
                      v130 = *(&v171 + 1);
                      v129 = v172;
                      if (v172 <= v171)
                      {
                        v129 = v171;
                      }

                      *(v7 + 76) = v16;
                      *(v7 + 48) = v130 - v12;
                      *(v7 + 56) = v129 - v12;
                      if ((v9 & 0x4000) == 0)
                      {
                        *(v7 + 32) = v12;
                        goto LABEL_6;
                      }

                      v131 = (*v7)(v14 + v138, *(v7 + 16));
                      *(v7 + 32) = v131;
                      if (v131)
                      {
                        memcpy(v131, v12, v14 + v138);
                        *(v7 + 73) |= 1u;
                        v16 = *(v7 + 76);
                        goto LABEL_6;
                      }

LABEL_382:
                      v16 = 4294967248;
                      goto LABEL_6;
                    }

                    *(v7 + 40) = v173;
                    if (v16 == -2 || !v16)
                    {
                      if (v159)
                      {
                        *(v7 + 32) = v12;
                        *(v7 + 80) = v159 - v12;
                        *(v7 + 88) = v77 - v12;
                        *(v7 + 56) = v77 - v12;
                        *(v7 + 64) = v159 - v12;
                        *(v7 + 48) = v157 - v12;
                        v16 = 4294967294;
                      }

                      else
                      {
                        v16 = 0xFFFFFFFFLL;
                      }
                    }

                    *(v7 + 76) = v16;
                    goto LABEL_6;
                  }
                }

                goto LABEL_278;
              }

              if (v144)
              {
                v86 = &v85[-v29];
                if (__c[0] == __c[1])
                {
                  v87 = memchr(v29, __c[0], &v85[-v29]);
                  if (v87)
                  {
                    v88 = v87;
                  }

                  else
                  {
                    v88 = v85;
                  }

                  v89 = v145;
                  goto LABEL_268;
                }

                if (HIDWORD(v140))
                {
                  v100 = 0;
                  goto LABEL_243;
                }

                v103 = memchr(v29, __c[0], &v85[-v29]);
                v100 = v103;
                if (v103)
                {
                  HIDWORD(v140) = 0;
                  v86 = v103 - v29;
                }

                else
                {
LABEL_243:
                  HIDWORD(v140) = 1;
                }

                if (v140)
                {
                  v104 = 0;
                  v105 = 1;
                }

                else
                {
                  v104 = memchr(v29, __c[1], v86);
                  v105 = (v100 | v104) == 0;
                }

                v89 = v145;
                LODWORD(v140) = v105;
                if (v100)
                {
                  if (v100 < v104 || v104 == 0)
                  {
                    v88 = v100;
                  }

                  else
                  {
                    v88 = v104;
                  }
                }

                else if (v104)
                {
                  v88 = v104;
                }

                else
                {
                  v88 = v85;
                }

LABEL_268:
                v101 = v168;
                v77 = *(&v170 + 1);
                if (!v168 && v88 >= *(&v170 + 1))
                {
                  goto LABEL_346;
                }

                goto LABEL_280;
              }

              if ((v137 & 0x200) != 0)
              {
                if (v29 > *(&v169 + 1) + v11)
                {
                  if (!v153)
                  {
                    while (v29 < v85)
                    {
                      if (HIDWORD(v175))
                      {
                        if (v29 > *(&v169 + 1) && _pcre2_was_newline_8(v29, SHIDWORD(v175), *(&v169 + 1), &v176, v146))
                        {
                          goto LABEL_271;
                        }
                      }

                      else if (v29 >= *(&v169 + 1) + v176 && *(v29 - v176) == BYTE4(v176) && (v176 == 1 || *(v29 - v176 + 1) == BYTE5(v176)))
                      {
                        goto LABEL_271;
                      }

                      ++v29;
                    }

                    goto LABEL_271;
                  }

                  if (v29 < v85)
                  {
LABEL_219:
                    if (HIDWORD(v175))
                    {
                      if (v29 > *(&v169 + 1) && _pcre2_was_newline_8(v29, SHIDWORD(v175), *(&v169 + 1), &v176, v146))
                      {
                        goto LABEL_271;
                      }
                    }

                    else if (v29 >= *(&v169 + 1) + v176 && *(v29 - v176) == BYTE4(v176) && (v176 == 1 || *(v29 - v176 + 1) == BYTE5(v176)))
                    {
                      goto LABEL_271;
                    }

                    ++v29;
                    while (v29 < v85)
                    {
                      v99 = *v29++;
                      if ((v99 & 0xC0) != 0x80)
                      {
                        --v29;
                        goto LABEL_219;
                      }
                    }
                  }

LABEL_271:
                  if (*(v29 - 1) == 13)
                  {
                    v107 = (HIDWORD(v175) - 1) > 1 || v29 >= v85;
                    if (!v107 && *v29 == 10)
                    {
                      ++v29;
                    }
                  }
                }
              }

              else if (v147)
              {
                do
                {
                  v88 = v29;
                  if (v29 >= v85)
                  {
                    break;
                  }

                  ++v29;
                }

                while (((v147->u8[*v88 >> 3] >> (*v88 & 7)) & 1) == 0);
                v101 = v168;
                v77 = *(&v170 + 1);
                if (v168)
                {
                  v102 = 0;
                }

                else
                {
                  v102 = v88 >= *(&v170 + 1);
                }

                if (v102)
                {
LABEL_346:
                  v16 = 0;
                  v29 = v88;
                  goto LABEL_348;
                }

                goto LABEL_279;
              }

LABEL_278:
              v101 = v168;
              v77 = *(&v170 + 1);
              v88 = v29;
LABEL_279:
              v89 = v145;
              if (v101)
              {
                goto LABEL_281;
              }

LABEL_280:
              v117 = v77 - v88;
              if (v77 - v88 < v13[15].u16[3])
              {
                goto LABEL_343;
              }

              if (v89 < 0 && (v118 = &v88[v135], &v88[v135] > v136) && (v154 >= 0 ? (v119 = v117 >= 0x4C4B40) : (v119 = 1), v119 ? (v120 = 0) : (v120 = 1), v117 >> 3 < 0x271 || v120))
              {
                __n = v77 - v118;
                v121 = v77;
                v122 = memchr(&v88[v135], v133, v77 - v118);
                if (v133 == v134)
                {
                  if (!v122)
                  {
                    v122 = v121;
                  }

                  v77 = v121;
                }

                else
                {
                  v77 = v121;
                  if (!v122)
                  {
                    v122 = memchr(v118, v134, __n);
                    v77 = v121;
                    if (!v122)
                    {
                      v122 = v121;
                    }
                  }
                }

                if (v122 >= v77)
                {
LABEL_343:
                  v16 = 0;
                  v29 = v88;
                  goto LABEL_349;
                }

                v29 = v88;
                v136 = v122;
              }

              else
              {
LABEL_281:
                v29 = v88;
              }

LABEL_282:
              if (v29 > v150)
              {
                goto LABEL_345;
              }

              v108 = v77;
              *&v180 = v29 - v12;
              DWORD2(v183) |= 1u;
              *(&v171 + 1) = v29;
              *&v172 = v29;
              DWORD2(v164) = 0;
              *(&v167 + 1) = 0;
              HIDWORD(v174) = v149;
              DWORD1(v175) = 0;
              v109 = match(v29, v169, (v7 + 80), *(v7 + 74), v13[16].u16[0], v148, &v160);
              v16 = v109;
              v110 = HIDWORD(v164) != 0;
              v111 = v157;
              v112 = v157 == 0;
              v113 = !v110 || !v112;
              if (v110 && v112)
              {
                v111 = *(&v171 + 1);
              }

              v114 = v159;
              if (!v113)
              {
                v114 = v29;
              }

              v157 = v111;
              v159 = v114;
              if (v109 <= -995)
              {
                v77 = v108;
                if (v109 == -996)
                {
                  goto LABEL_295;
                }

                if (v109 != -995)
                {
                  if (v109 != -997)
                  {
                    goto LABEL_349;
                  }

LABEL_345:
                  v16 = 0;
                  goto LABEL_349;
                }

                v88 = v174;
                if (v174 <= v29)
                {
LABEL_295:
                  DWORD2(v175) = 0;
                  v88 = (v29 + 1);
                  if (v153 && v88 < v77)
                  {
                    v115 = &v77[~v29];
                    while ((*v88 & 0xC0) == 0x80)
                    {
                      ++v88;
                      if (!--v115)
                      {
                        v88 = v77;
                        break;
                      }
                    }
                  }
                }
              }

              else
              {
                v77 = v108;
                if (!v109 || v109 == -993)
                {
                  goto LABEL_295;
                }

                if (v109 != -994)
                {
                  goto LABEL_349;
                }

                DWORD2(v175) = DWORD1(v175);
                v88 = v29;
              }

              if ((v156 & 0x100) != 0)
              {
                if (HIDWORD(v175))
                {
                  if (v29 < *(&v170 + 1))
                  {
                    v116 = _pcre2_is_newline_8(v29, SHIDWORD(v175), *(&v170 + 1), &v176, v146);
                    v77 = v108;
                    if (v116)
                    {
                      goto LABEL_345;
                    }
                  }
                }

                else if (v29 <= *(&v170 + 1) - v176 && *v29 == BYTE4(v176) && (v176 == 1 || *(v29 + 1) == BYTE5(v176)))
                {
                  goto LABEL_345;
                }
              }

              if (v154 < 0 || v88 > v77)
              {
                goto LABEL_343;
              }

              if (v88 > v151 && *(v88 - 1) == 13 && v88 < v77 && *v88 == 10 && (v13[12].i8[1] & 8) == 0 && ((HIDWORD(v175) - 1) < 2 || v176 == 2))
              {
                ++v88;
              }

              *(&v172 + 1) = 0;
              v29 = v88;
            }
          }

          v32 = 0;
          v33 = &v12[v14];
LABEL_98:
          v48 = v33;
          goto LABEL_99;
        }

LABEL_76:
        v39 = v13[15].u16[2];
        if (v13[15].i16[2] && v29 > v12)
        {
          v40 = v29;
          do
          {
            v41 = (v40 - 1);
            do
            {
              v35 = v41;
              *&v170 = v41;
              if (v41 <= v12)
              {
                goto LABEL_85;
              }

              --v41;
            }

            while ((*v35 & 0xC0) == 0x80);
            v40 = v35;
            --v39;
          }

          while (v39);
        }

        else
        {
          v35 = v29;
        }

        goto LABEL_85;
      }

LABEL_75:
      *&v170 = v29;
      goto LABEL_76;
    }

    if (v29 >= v33 || (*v29 & 0xC0) != 0x80)
    {
      goto LABEL_75;
    }

LABEL_72:
    if (v11)
    {
      v16 = 4294967260;
    }

    else
    {
      v16 = 4294967274;
    }

    goto LABEL_6;
  }

  v16 = matched;
  if ((v9 & 0x4000) != 0 && (matched & 0x80000000) == 0)
  {
    v38 = (*v7)(v14 + v138, *(v7 + 16));
    *(v7 + 32) = v38;
    if (!v38)
    {
      goto LABEL_382;
    }

    memcpy(v38, v12, v14 + v138);
    *(v7 + 73) |= 1u;
  }

LABEL_6:
  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

void *pcre2_match_data_create_8(unsigned int a1, __int128 *a2)
{
  if (a1 <= 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = a1;
  }

  result = _pcre2_memctl_malloc_8(8 * (2 * v2) + 80, a2);
  if (result)
  {
    *(result + 37) = v2;
    *(result + 73) = 0;
  }

  return result;
}

void *pcre2_jit_stack_create_8(unint64_t a1, unint64_t a2, __int128 *a3)
{
  v3 = 0;
  if (a1)
  {
    if (a2)
    {
      v6 = _pcre2_memctl_malloc_8(0x20uLL, a3);
      v3 = v6;
      if (v6)
      {
        if (a1 >= a2)
        {
          v7 = a2;
        }

        else
        {
          v7 = a1;
        }

        v8 = (a2 + 0x1FFF) & 0xFFFFFFFFFFFFE000;
        v9 = (v7 + 0x1FFF) & 0xFFFFFFFFFFFFE000;
        if (v9 - 1 < v8)
        {
          v10 = (*v6)(32, v6[2]);
          if (v10)
          {
            v11 = v10;
            v12 = get_page_alignment_sljit_page_align;
            if (!get_page_alignment_sljit_page_align)
            {
              v13 = sysconf(29);
              v12 = v13 - 1;
              if (v13 < 0)
              {
                v12 = 4095;
              }

              get_page_alignment_sljit_page_align = v12;
            }

            v14 = (v12 + v8) & ~v12;
            v15 = mmap(0, v14, 3, 4098, -1, 0);
            if (v15 != -1)
            {
              v11[2] = &v15[v14 - v9];
              v11[3] = v15;
              *v11 = &v15[v14];
              v11[1] = &v15[v14];
              v3[3] = v11;
              return v3;
            }

            (v3[1])(v11, v3[2]);
          }
        }

        v3[3] = 0;
        (v3[1])(v3, v3[2]);
        return 0;
      }
    }
  }

  return v3;
}

__n128 pcre2_match_context_create_8(uint64_t a1)
{
  v2 = _pcre2_memctl_malloc_8(0x60uLL, a1);
  if (v2)
  {
    v4 = unk_1F42CE558;
    v2[2] = xmmword_1F42CE548;
    v2[3] = v4;
    v5 = unk_1F42CE578;
    v2[4] = xmmword_1F42CE568;
    v2[5] = v5;
    result.n128_u64[0] = _pcre2_default_match_context_8;
    v6 = unk_1F42CE538;
    *v2 = _pcre2_default_match_context_8;
    v2[1] = v6;
    if (a1)
    {
      result = *a1;
      *(v2 + 2) = *(a1 + 16);
      *v2 = result;
    }
  }

  return result;
}

uint64_t _pcre2_valid_utf_8(unsigned __int8 *a1, unint64_t a2, void *a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = a1;
  while (1)
  {
    v4 = a2 - 1;
    if ((*v3 & 0x80000000) == 0)
    {
      --a2;
      v5 = v3;
      goto LABEL_5;
    }

    v6 = *v3;
    if (v6 <= 0xBF)
    {
      *a3 = v3 - a1;
      return 4294967274;
    }

    if (v6 >= 0xFE)
    {
      *a3 = v3 - a1;
      return 4294967273;
    }

    v7 = _pcre2_utf8_table4[*v3 & 0x3F];
    a2 = v4 - v7;
    if (v4 < v7)
    {
      *a3 = v3 - a1;
      v8 = ~v4 + v7;
      if (v8 < 5)
      {
        return (-3 - v8);
      }
    }

    v5 = (v3 + 1);
    v9 = v3[1];
    if ((v9 & 0xC0) != 0x80)
    {
      *a3 = v5 + ~a1;
      return 4294967288;
    }

    if (v7 <= 2)
    {
      if (v7 == 1)
      {
        if ((v6 & 0x3E) == 0)
        {
          *a3 = v5 + ~a1;
          return 4294967279;
        }

        goto LABEL_5;
      }

      if (v7 != 2)
      {
        goto LABEL_34;
      }

      v5 = (v3 + 2);
      if ((v3[2] & 0xC0) != 0x80)
      {
        v14 = v5 - a1;
LABEL_57:
        v15 = v14 - 2;
LABEL_59:
        *a3 = v15;
        return 4294967287;
      }

      if (v6 == 224 && (v9 & 0x20) == 0)
      {
        *a3 = v3 - a1;
        return 4294967278;
      }

      if (v6 == 237 && v9 >= 0xA0)
      {
        *a3 = v3 - a1;
        return 4294967280;
      }

      goto LABEL_5;
    }

    if (v7 != 3)
    {
      break;
    }

    if ((v3[2] & 0xC0) != 0x80)
    {
      v15 = v3 - a1;
      goto LABEL_59;
    }

    v5 = (v3 + 3);
    if ((v3[3] & 0xC0) != 0x80)
    {
      v16 = v5 - a1;
LABEL_64:
      *a3 = v16 - 3;
      return 4294967286;
    }

    if (v6 == 240 && (v9 & 0x30) == 0)
    {
      *a3 = v3 - a1;
      return 4294967277;
    }

    if (v6 > 0xF4 || v6 == 244 && v9 >= 0x90)
    {
      *a3 = v3 - a1;
      return 4294967281;
    }

LABEL_5:
    v3 = (v5 + 1);
    if (!a2)
    {
      return 0;
    }
  }

  if (v7 == 4)
  {
    v10 = v3 + 2;
    if ((v3[2] & 0xC0) == 0x80)
    {
      v11 = v3 + 3;
      if ((v3[3] & 0xC0) == 0x80)
      {
        v13 = v3[4];
        v12 = v3 + 4;
        if ((v13 & 0xC0) == 0x80)
        {
          if (v6 != 248 || (v9 & 0x38) != 0)
          {
            *a3 = (v12 - a1 - 4);
            return 4294967283;
          }

          else
          {
            *a3 = v12 - a1 - 4;
            return 4294967276;
          }
        }

        v18 = v12 - a1;
LABEL_67:
        *a3 = v18 - 4;
        return 4294967285;
      }

LABEL_63:
      v16 = v11 - a1;
      goto LABEL_64;
    }

LABEL_55:
    v14 = v10 - a1;
    goto LABEL_57;
  }

  if (v7 != 5)
  {
LABEL_34:
    if (v7 >= 4)
    {
      goto LABEL_35;
    }

    goto LABEL_5;
  }

  v10 = v3 + 2;
  if ((v3[2] & 0xC0) != 0x80)
  {
    goto LABEL_55;
  }

  v11 = v3 + 3;
  if ((v3[3] & 0xC0) != 0x80)
  {
    goto LABEL_63;
  }

  if ((v3[4] & 0xC0) != 0x80)
  {
    v18 = v3 + 4 - a1;
    goto LABEL_67;
  }

  LODWORD(v5) = v3 + 5;
  if ((v3[5] & 0xC0) == 0x80)
  {
    if (v6 != 252 || (v9 & 0x3C) != 0)
    {
LABEL_35:
      *a3 = (v5 - a1 - v7);
      return 4294967282;
    }

    *a3 = v3 - a1;
    return 4294967275;
  }

  else
  {
    *a3 = v3 - a1;
    return 4294967284;
  }
}

uint64_t pcre2_set_substitute_callout_8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 56) = a2;
  *(a1 + 64) = a3;
  return 0;
}

void *_pcre2_memctl_malloc_8(size_t a1, __int128 *a2)
{
  if (a2)
  {
    result = (*a2)(a1, *(a2 + 2));
    if (result)
    {
      v4 = *a2;
      result[2] = *(a2 + 2);
      *result = v4;
    }
  }

  else
  {
    result = malloc_type_malloc(a1, 0x26376E82uLL);
    if (result)
    {
      *result = default_malloc;
      result[1] = default_free;
      result[2] = 0;
    }
  }

  return result;
}

uint64_t pcre2_jit_stack_assign_8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    *(result + 24) = a2;
    *(result + 32) = a3;
  }

  return result;
}

uint64_t _pcre2_strlen_8(_BYTE *a1)
{
  if (!*a1)
  {
    return 0;
  }

  v1 = 0;
  v2 = a1 + 1;
  do
  {
    result = v1 + 1;
  }

  while (v2[v1++]);
  return result;
}

std::string *std::pair<std::string,std::shared_ptr<std::vector<FRReplaceInst>>>::pair[abi:ne200100](std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  v5 = *(a2 + 4);
  this[1].__r_.__value_.__r.__words[0] = *(a2 + 3);
  this[1].__r_.__value_.__l.__size_ = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

uint64_t pcre2_jit_stack_free_8(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 24);
    munmap(*(v2 + 24), *(v2 + 8) - *(v2 + 24));
    (*(v1 + 8))(v2, *(v1 + 16));
    v4 = *(v1 + 8);
    v3 = *(v1 + 16);

    return v4(v1, v3);
  }

  return result;
}

uint64_t pcre2_general_context_free_8(uint64_t result)
{
  if (result)
  {
    return (*(result + 8))(result, *(result + 16));
  }

  return result;
}

uint64_t pcre2_match_data_free_8(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 73))
    {
      (*(result + 8))(*(result + 32), *(result + 16));
    }

    v3 = *(v1 + 8);
    v2 = *(v1 + 16);

    return v3(v1, v2);
  }

  return result;
}

uint64_t match(unsigned __int8 *a1, unsigned __int8 *a2, void *a3, unsigned int a4, int a5, unsigned __int8 *a6, uint64_t a7)
{
  v8 = a6;
  v1319 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v1330 = 0;
  v16 = *(a7 + 240);
  v17 = v16 & 0x80000;
  v1326 = (v16 >> 19) & 1;
  __n = (a6 - 80);
  v18 = *(a7 + 32);
  *(v18 + 48) = 0;
  *(v18 + 104) = 0xFFFFFFFFLL;
  *(v18 + 80) = a1;
  *(v18 + 88) = a1;
  *(v18 + 96) = 0;
  *(v18 + 112) = xmmword_1C3791450;
  v1320 = -a6;
  v1321 = (a7 + 256);
  v1317 = v16;
  v1325 = v16 & 0xA0000;
  v1327 = v16 & 0x80000;
LABEL_2:
  *(v18 + 52) = v14;
  *v18 = a2;
  *(v18 + 32) = v8;
  if (v14)
  {
    *(v18 + 112) = v18 - *(a7 + 32);
    if ((v14 & 0xFFFF0000) == 0x40000)
    {
      *(v18 + 104) = v14;
    }
  }

  v19 = *(a7 + 72);
  *(a7 + 72) = v19 + 1;
  if (v19 >= *(a7 + 64))
  {
    return 4294967249;
  }

  if (v12 >= *(a7 + 68))
  {
    return 4294967243;
  }

  v1322 = v15;
LABEL_8:
  while (2)
  {
    v20 = *v18;
    v21 = **v18;
    *(v18 + 73) = v21;
    v22 = 4294967252;
    v23 = 0;
    switch(v21)
    {
      case 0u:
      case 0xA3u:
        if (*(v18 + 104) != -1)
        {
          v75 = v18;
          do
          {
            v76 = v75[14];
            if (v76 == -1)
            {
              return 4294967252;
            }

            v77 = *(a7 + 32) + v76;
            v75 = (v77 + v1320);
          }

          while (*(v77 + 54) << 16 != 0x40000);
          v1322 = v77;
          v75[10] = *(v18 + 80);
          v75[12] = *(v18 + 96);
          *v75 += 3;
          v18 = v77 + v1320;
          continue;
        }

        v349 = *(v18 + 80);
        v350 = *(v18 + 88);
        if (v349 == v350)
        {
          v529 = *(a7 + 236);
          if ((v529 & 4) != 0 || (v529 & 8) != 0 && v349 == (*(a7 + 152) + *(a7 + 112)))
          {
            v23 = 0;
            goto LABEL_2516;
          }
        }

        if (v349 < *(a7 + 168) && ((*(a7 + 240) | *(a7 + 236)) & 0x20000000) != 0)
        {
          v23 = 0;
          v22 = 0;
          if (!v21)
          {
            goto LABEL_2516;
          }
        }

        else
        {
          *(a7 + 176) = v349;
          *(a7 + 120) = *(v18 + 120);
          *(a7 + 200) = *(v18 + 96);
          if (v349 > *(a7 + 192))
          {
            *(a7 + 192) = v349;
          }

          v1308 = *(a7 + 152);
          *a3 = &v350[-v1308];
          a3[1] = &v349[-v1308];
          if (a5 + 1 < a4)
          {
            v1309 = a5 + 1;
          }

          else
          {
            v1309 = a4;
          }

          v1310 = 2 * v1309;
          v1311 = 2 * v1309 - 2;
          memcpy(a3 + 2, (v18 + 128), 8 * v1311);
          v1312 = (v1310 - 1);
          if (*(v18 + 120) + 2 <= v1312)
          {
            do
            {
              a3[v1312] = -1;
              v1312 = v1311;
              v74 = *(v18 + 120) + 2 > v1311;
              v22 = 1;
              --v1311;
            }

            while (!v74);
          }

          else
          {
            return 1;
          }
        }

        return v22;
      case 1u:
        v161 = *(v18 + 80);
        v162 = *(a7 + 152);
        goto LABEL_289;
      case 2u:
        v161 = *(v18 + 80);
        v162 = (*(a7 + 152) + *(a7 + 112));
LABEL_289:
        if (v161 == v162)
        {
          goto LABEL_2484;
        }

        goto LABEL_3275;
      case 3u:
        *(v18 + 88) = *(v18 + 80);
        goto LABEL_2484;
      case 4u:
      case 5u:
        v78 = *(v18 + 80);
        if (v78 == *(a7 + 160))
        {
          goto LABEL_786;
        }

        if (!v17)
        {
          v79 = v78 - 1;
          v80 = *(v78 - 1);
          goto LABEL_781;
        }

        v79 = *(v18 + 80);
        do
        {
          v81 = *--v79;
          v80 = v81;
        }

        while ((v81 & 0xC0) == 0x80);
        if (v80 < 0xC0)
        {
          goto LABEL_781;
        }

        v82 = v79[1] & 0x3F;
        if ((v80 & 0x20) == 0)
        {
          v80 = v79[1] & 0x3F | ((v80 & 0x1F) << 6);
          goto LABEL_781;
        }

        if ((v80 & 0x10) != 0)
        {
          if ((v80 & 8) != 0)
          {
            v824 = v79[2] & 0x3F;
            v825 = v79[3] & 0x3F;
            v826 = v79[4] & 0x3F;
            if ((v80 & 4) == 0)
            {
              v80 = ((v80 & 3) << 24) | (v82 << 18) | (v824 << 12) | (v825 << 6) | v826;
              goto LABEL_781;
            }

            v638 = ((v80 & 1) << 30) | (v82 << 24) | (v824 << 18) | (v825 << 12) | (v826 << 6);
            v639 = v79[5];
          }

          else
          {
            v638 = ((v80 & 7) << 18) | (v82 << 12) | ((v79[2] & 0x3F) << 6);
            v639 = v79[3];
          }
        }

        else
        {
          v638 = ((v80 & 0xF) << 12) | (v82 << 6);
          v639 = v79[2];
        }

        v80 = v638 & 0xFFFFFFC0 | v639 & 0x3F;
LABEL_781:
        if (v79 < *(a7 + 184))
        {
          *(a7 + 184) = v79;
        }

        if ((*(a7 + 242) & 2) != 0)
        {
          v364 = v80 == 95 || (_pcre2_ucp_gentype_8[BYTE1(_pcre2_ucd_records_8[3 * _pcre2_ucd_stage2_8[v80 & 0x7F | (_pcre2_ucd_stage1_8[v80 >> 7] << 7)]])] & 0xFFFFFFFD) == 1;
        }

        else if (v80 > 0xFF)
        {
LABEL_786:
          v364 = 0;
        }

        else
        {
          v364 = (*(*(a7 + 104) + v80) >> 4) & 1;
        }

        v518 = *(a7 + 168);
        if (v78 >= v518)
        {
          v523 = *(a7 + 128);
          if (!*(a7 + 128))
          {
            goto LABEL_1153;
          }

          if (v78 > *(a7 + 184) || (v524 = *(a7 + 84)) != 0)
          {
            *(a7 + 76) = 1;
            if (v523 != 1)
            {
              return 4294967294;
            }

LABEL_1153:
            v524 = 0;
          }

LABEL_1154:
          *v18 = v20 + 1;
          if (*v20 == 5)
          {
            v23 = 0;
            if (v524 == v364)
            {
              goto LABEL_2516;
            }
          }

          else
          {
            v23 = 0;
            if (v524 != v364)
            {
              goto LABEL_2516;
            }
          }

          continue;
        }

        v519 = v78 + 1;
        if (v17)
        {
          v520 = v78 + 1;
          if (v519 < v518)
          {
            v520 = v78 + 1;
            while ((*v520 & 0xC0) == 0x80)
            {
              if (++v520 == v518)
              {
                v520 = *(a7 + 168);
                break;
              }
            }
          }

          v521 = *v78;
          if (v521 < 0xC0)
          {
            goto LABEL_1148;
          }

          v522 = *v519 & 0x3F;
          if ((v521 & 0x20) != 0)
          {
            if ((v521 & 0x10) != 0)
            {
              if ((v521 & 8) != 0)
              {
                v842 = v78[2] & 0x3F;
                v843 = v78[3] & 0x3F;
                v844 = v78[4] & 0x3F;
                if ((v521 & 4) == 0)
                {
                  v521 = ((v521 & 3) << 24) | (v522 << 18) | (v842 << 12) | (v843 << 6) | v844;
                  goto LABEL_1148;
                }

                v642 = ((v521 & 1) << 30) | (v522 << 24) | (v842 << 18) | (v843 << 12) | (v844 << 6);
                v643 = v78[5];
              }

              else
              {
                v642 = ((v521 & 7) << 18) | (v522 << 12) | ((v78[2] & 0x3F) << 6);
                v643 = v78[3];
              }
            }

            else
            {
              v642 = ((v521 & 0xF) << 12) | (v522 << 6);
              v643 = v78[2];
            }

            v521 = v642 & 0xFFFFFFC0 | v643 & 0x3F;
            goto LABEL_1148;
          }

          v521 = v522 & 0xFFFFF83F | ((v521 & 0x1F) << 6);
        }

        else
        {
          v521 = *v78;
          v520 = v78 + 1;
        }

LABEL_1148:
        if (v520 > *(a7 + 192))
        {
          *(a7 + 192) = v520;
        }

        if ((*(a7 + 242) & 2) == 0)
        {
          if (v521 <= 0xFF)
          {
            v524 = (*(*(a7 + 104) + v521) >> 4) & 1;
            goto LABEL_1154;
          }

          goto LABEL_1153;
        }

        v524 = v521 == 95 || (_pcre2_ucp_gentype_8[BYTE1(_pcre2_ucd_records_8[3 * _pcre2_ucd_stage2_8[v521 & 0x7F | (_pcre2_ucd_stage1_8[v521 >> 7] << 7)]])] & 0xFFFFFFFD) == 1;
        goto LABEL_1154;
      case 6u:
        v61 = *(v18 + 80);
        if (v61 >= *(a7 + 168))
        {
          goto LABEL_1904;
        }

        *(v18 + 80) = v61 + 1;
        v160 = *v61;
        if (v17 && v160 >= 0xC0)
        {
          if ((v160 & 0x20) != 0)
          {
            v656 = v61[1] & 0x3F;
            if ((v160 & 0x10) != 0)
            {
              if ((v160 & 8) != 0)
              {
                v863 = v61[2] & 0x3F;
                v864 = v61[3] & 0x3F;
                v865 = v61[4] & 0x3F;
                if ((v160 & 4) != 0)
                {
                  v160 = ((v160 & 1) << 30) | (v656 << 24) | (v863 << 18) | (v864 << 12) | (v865 << 6) | v61[5] & 0x3F;
                  v657 = v61 + 6;
                }

                else
                {
                  v160 = ((v160 & 3) << 24) | (v656 << 18) | (v863 << 12) | (v864 << 6) | v865;
                  v657 = v61 + 5;
                }
              }

              else
              {
                v160 = ((v160 & 7) << 18) | (v656 << 12) | ((v61[2] & 0x3F) << 6) | v61[3] & 0x3F;
                v657 = v61 + 4;
              }
            }

            else
            {
              v160 = ((v160 & 0xF) << 12) | (v656 << 6) | v61[2] & 0x3F;
              v657 = v61 + 3;
            }

            *(v18 + 80) = v657;
          }

          else
          {
            *(v18 + 80) = v61 + 2;
            v160 = v61[1] & 0x3F | ((v160 & 0x1F) << 6);
          }

          if (v160 > 0xFF)
          {
            goto LABEL_2484;
          }
        }

        if ((*(*(a7 + 104) + v160) & 8) == 0)
        {
          goto LABEL_2484;
        }

        goto LABEL_1908;
      case 7u:
        v61 = *(v18 + 80);
        if (v61 >= *(a7 + 168))
        {
          goto LABEL_1904;
        }

        *(v18 + 80) = v61 + 1;
        v148 = *v61;
        if (!v17 || v148 < 0xC0)
        {
          goto LABEL_2387;
        }

        if ((v148 & 0x20) != 0)
        {
          v652 = v61[1] & 0x3F;
          if ((v148 & 0x10) != 0)
          {
            if ((v148 & 8) != 0)
            {
              v857 = v61[2] & 0x3F;
              v858 = v61[3] & 0x3F;
              v859 = v61[4] & 0x3F;
              if ((v148 & 4) != 0)
              {
                v148 = ((v148 & 1) << 30) | (v652 << 24) | (v857 << 18) | (v858 << 12) | (v859 << 6) | v61[5] & 0x3F;
                v653 = v61 + 6;
              }

              else
              {
                v148 = ((v148 & 3) << 24) | (v652 << 18) | (v857 << 12) | (v858 << 6) | v859;
                v653 = v61 + 5;
              }
            }

            else
            {
              v148 = ((v148 & 7) << 18) | (v652 << 12) | ((v61[2] & 0x3F) << 6) | v61[3] & 0x3F;
              v653 = v61 + 4;
            }
          }

          else
          {
            v148 = ((v148 & 0xF) << 12) | (v652 << 6) | v61[2] & 0x3F;
            v653 = v61 + 3;
          }

          *(v18 + 80) = v653;
        }

        else
        {
          *(v18 + 80) = v61 + 2;
          v148 = v61[1] & 0x3F | ((v148 & 0x1F) << 6);
        }

        if (v148 <= 0xFF)
        {
LABEL_2387:
          if ((*(*(a7 + 104) + v148) & 8) != 0)
          {
            goto LABEL_2484;
          }
        }

        goto LABEL_1908;
      case 8u:
        v61 = *(v18 + 80);
        if (v61 >= *(a7 + 168))
        {
          goto LABEL_1904;
        }

        *(v18 + 80) = v61 + 1;
        v176 = *v61;
        if (v17 && v176 >= 0xC0)
        {
          if ((v176 & 0x20) != 0)
          {
            v664 = v61[1] & 0x3F;
            if ((v176 & 0x10) != 0)
            {
              if ((v176 & 8) != 0)
              {
                v878 = v61[2] & 0x3F;
                v879 = v61[3] & 0x3F;
                v880 = v61[4] & 0x3F;
                if ((v176 & 4) != 0)
                {
                  v176 = ((v176 & 1) << 30) | (v664 << 24) | (v878 << 18) | (v879 << 12) | (v880 << 6) | v61[5] & 0x3F;
                  v665 = v61 + 6;
                }

                else
                {
                  v176 = ((v176 & 3) << 24) | (v664 << 18) | (v878 << 12) | (v879 << 6) | v880;
                  v665 = v61 + 5;
                }
              }

              else
              {
                v176 = ((v176 & 7) << 18) | (v664 << 12) | ((v61[2] & 0x3F) << 6) | v61[3] & 0x3F;
                v665 = v61 + 4;
              }
            }

            else
            {
              v176 = ((v176 & 0xF) << 12) | (v664 << 6) | v61[2] & 0x3F;
              v665 = v61 + 3;
            }

            *(v18 + 80) = v665;
          }

          else
          {
            *(v18 + 80) = v61 + 2;
            v176 = v61[1] & 0x3F | ((v176 & 0x1F) << 6);
          }

          if (v176 > 0xFF)
          {
            goto LABEL_2484;
          }
        }

        if ((*(*(a7 + 104) + v176) & 1) == 0)
        {
          goto LABEL_2484;
        }

        goto LABEL_1908;
      case 9u:
        v61 = *(v18 + 80);
        if (v61 >= *(a7 + 168))
        {
          goto LABEL_1904;
        }

        *(v18 + 80) = v61 + 1;
        v173 = *v61;
        if (!v17 || v173 < 0xC0)
        {
          goto LABEL_2467;
        }

        if ((v173 & 0x20) != 0)
        {
          v662 = v61[1] & 0x3F;
          if ((v173 & 0x10) != 0)
          {
            if ((v173 & 8) != 0)
            {
              v875 = v61[2] & 0x3F;
              v876 = v61[3] & 0x3F;
              v877 = v61[4] & 0x3F;
              if ((v173 & 4) != 0)
              {
                v173 = ((v173 & 1) << 30) | (v662 << 24) | (v875 << 18) | (v876 << 12) | (v877 << 6) | v61[5] & 0x3F;
                v663 = v61 + 6;
              }

              else
              {
                v173 = ((v173 & 3) << 24) | (v662 << 18) | (v875 << 12) | (v876 << 6) | v877;
                v663 = v61 + 5;
              }
            }

            else
            {
              v173 = ((v173 & 7) << 18) | (v662 << 12) | ((v61[2] & 0x3F) << 6) | v61[3] & 0x3F;
              v663 = v61 + 4;
            }
          }

          else
          {
            v173 = ((v173 & 0xF) << 12) | (v662 << 6) | v61[2] & 0x3F;
            v663 = v61 + 3;
          }

          *(v18 + 80) = v663;
        }

        else
        {
          *(v18 + 80) = v61 + 2;
          v173 = v61[1] & 0x3F | ((v173 & 0x1F) << 6);
        }

        if (v173 <= 0xFF)
        {
LABEL_2467:
          if (*(*(a7 + 104) + v173))
          {
            goto LABEL_2484;
          }
        }

        goto LABEL_1908;
      case 0xAu:
        v61 = *(v18 + 80);
        if (v61 >= *(a7 + 168))
        {
          goto LABEL_1904;
        }

        *(v18 + 80) = v61 + 1;
        v147 = *v61;
        if (v17 && v147 >= 0xC0)
        {
          if ((v147 & 0x20) != 0)
          {
            v650 = v61[1] & 0x3F;
            if ((v147 & 0x10) != 0)
            {
              if ((v147 & 8) != 0)
              {
                v854 = v61[2] & 0x3F;
                v855 = v61[3] & 0x3F;
                v856 = v61[4] & 0x3F;
                if ((v147 & 4) != 0)
                {
                  v147 = ((v147 & 1) << 30) | (v650 << 24) | (v854 << 18) | (v855 << 12) | (v856 << 6) | v61[5] & 0x3F;
                  v651 = v61 + 6;
                }

                else
                {
                  v147 = ((v147 & 3) << 24) | (v650 << 18) | (v854 << 12) | (v855 << 6) | v856;
                  v651 = v61 + 5;
                }
              }

              else
              {
                v147 = ((v147 & 7) << 18) | (v650 << 12) | ((v61[2] & 0x3F) << 6) | v61[3] & 0x3F;
                v651 = v61 + 4;
              }
            }

            else
            {
              v147 = ((v147 & 0xF) << 12) | (v650 << 6) | v61[2] & 0x3F;
              v651 = v61 + 3;
            }

            *(v18 + 80) = v651;
          }

          else
          {
            *(v18 + 80) = v61 + 2;
            v147 = v61[1] & 0x3F | ((v147 & 0x1F) << 6);
          }

          if (v147 > 0xFF)
          {
            goto LABEL_2484;
          }
        }

        if ((*(*(a7 + 104) + v147) & 0x10) == 0)
        {
          goto LABEL_2484;
        }

        goto LABEL_1908;
      case 0xBu:
        v61 = *(v18 + 80);
        if (v61 >= *(a7 + 168))
        {
          goto LABEL_1904;
        }

        *(v18 + 80) = v61 + 1;
        v146 = *v61;
        if (!v17 || v146 < 0xC0)
        {
          goto LABEL_2377;
        }

        if ((v146 & 0x20) != 0)
        {
          v648 = v61[1] & 0x3F;
          if ((v146 & 0x10) != 0)
          {
            if ((v146 & 8) != 0)
            {
              v851 = v61[2] & 0x3F;
              v852 = v61[3] & 0x3F;
              v853 = v61[4] & 0x3F;
              if ((v146 & 4) != 0)
              {
                v146 = ((v146 & 1) << 30) | (v648 << 24) | (v851 << 18) | (v852 << 12) | (v853 << 6) | v61[5] & 0x3F;
                v649 = v61 + 6;
              }

              else
              {
                v146 = ((v146 & 3) << 24) | (v648 << 18) | (v851 << 12) | (v852 << 6) | v853;
                v649 = v61 + 5;
              }
            }

            else
            {
              v146 = ((v146 & 7) << 18) | (v648 << 12) | ((v61[2] & 0x3F) << 6) | v61[3] & 0x3F;
              v649 = v61 + 4;
            }
          }

          else
          {
            v146 = ((v146 & 0xF) << 12) | (v648 << 6) | v61[2] & 0x3F;
            v649 = v61 + 3;
          }

          *(v18 + 80) = v649;
        }

        else
        {
          *(v18 + 80) = v61 + 2;
          v146 = v61[1] & 0x3F | ((v146 & 0x1F) << 6);
        }

        if (v146 <= 0xFF)
        {
LABEL_2377:
          if ((*(*(a7 + 104) + v146) & 0x10) != 0)
          {
            goto LABEL_2484;
          }
        }

        goto LABEL_1908;
      case 0xCu:
        v174 = *(a7 + 252);
        v175 = *(v18 + 80);
        v164 = *(a7 + 168);
        if (v174)
        {
          if (v175 < v164)
          {
            if (_pcre2_is_newline_8(v175, v174, v164, v1321, v1326))
            {
              v23 = 0;
LABEL_953:
              v17 = v1327;
              goto LABEL_2516;
            }

            v164 = *(a7 + 168);
            v17 = v1327;
          }
        }

        else
        {
          v515 = *v1321;
          if (v175 <= v164 - v515 && *v175 == *(a7 + 260) && (v515 == 1 || v175[1] == *(a7 + 261)))
          {
            goto LABEL_1908;
          }
        }

        v670 = *(a7 + 128);
        if (*(a7 + 128))
        {
          v671 = *(v18 + 80);
          if (v671 == (v164 - 1) && !*(a7 + 252) && *v1321 == 2 && *v671 == *(a7 + 260))
          {
            *(a7 + 76) = 1;
            if (v670 != 1)
            {
              return 4294967294;
            }
          }
        }

LABEL_1517:
        v61 = *(v18 + 80);
        if (v61 >= v164)
        {
          goto LABEL_1904;
        }

        v672 = v61 + 1;
        *(v18 + 80) = v61 + 1;
        if (v17 && v672 < v164)
        {
          do
          {
            if ((*v672 & 0xC0) != 0x80)
            {
              break;
            }

            *(v18 + 80) = ++v672;
          }

          while (v672 != v164);
        }

LABEL_1522:
        ++*v18;
        continue;
      case 0xDu:
        v164 = *(a7 + 168);
        goto LABEL_1517;
      case 0xEu:
        v61 = *(v18 + 80);
        if (v61 >= *(a7 + 168))
        {
          goto LABEL_1904;
        }

        v145 = v61 + 1;
        goto LABEL_236;
      case 0xFu:
      case 0x10u:
        v61 = *(v18 + 80);
        if (v61 >= *(a7 + 168))
        {
          goto LABEL_1904;
        }

        *(v18 + 80) = v61 + 1;
        v62 = *v61;
        if (v17 && v62 >= 0xC0)
        {
          if ((v62 & 0x20) != 0)
          {
            v533 = v61[1] & 0x3F;
            if ((v62 & 0x10) != 0)
            {
              if ((v62 & 8) != 0)
              {
                v797 = v61[2] & 0x3F;
                v798 = v61[3] & 0x3F;
                v799 = v61[4] & 0x3F;
                if ((v62 & 4) != 0)
                {
                  v62 = ((v62 & 1) << 30) | (v533 << 24) | (v797 << 18) | (v798 << 12) | (v799 << 6) | v61[5] & 0x3F;
                  v534 = v61 + 6;
                }

                else
                {
                  v62 = ((v62 & 3) << 24) | (v533 << 18) | (v797 << 12) | (v798 << 6) | v799;
                  v534 = v61 + 5;
                }
              }

              else
              {
                v62 = ((v62 & 7) << 18) | (v533 << 12) | ((v61[2] & 0x3F) << 6) | v61[3] & 0x3F;
                v534 = v61 + 4;
              }
            }

            else
            {
              v62 = ((v62 & 0xF) << 12) | (v533 << 6) | v61[2] & 0x3F;
              v534 = v61 + 3;
            }

            *(v18 + 80) = v534;
          }

          else
          {
            *(v18 + 80) = v61 + 2;
            v62 = v61[1] & 0x3F | ((v62 & 0x1F) << 6);
          }
        }

        v827 = &_pcre2_ucd_records_8[3 * _pcre2_ucd_stage2_8[v62 & 0x7F | (_pcre2_ucd_stage1_8[v62 >> 7] << 7)]];
        v828 = v20[1];
        v22 = 4294967252;
        if (v828 <= 5)
        {
          if (v20[1] <= 2u)
          {
            if (v20[1])
            {
              if (v828 != 1)
              {
                v829 = _pcre2_ucp_gentype_8[v827[1]];
                v830 = v20[2];
LABEL_2067:
                v832 = v829 != v830;
                v833 = v21 == 16;
                goto LABEL_2068;
              }

              v836 = v827[1];
              if (v836 != 5 && v836 != 9)
              {
                v835 = v836 == 8;
LABEL_2110:
                v838 = v835;
LABEL_2113:
                if (v838 != (v21 == 15))
                {
                  goto LABEL_3311;
                }

                goto LABEL_1908;
              }

              goto LABEL_2059;
            }

LABEL_2076:
            if (v21 != 15)
            {
              goto LABEL_3311;
            }

            goto LABEL_1908;
          }

          if (v828 == 3)
          {
            v829 = v20[2];
            v830 = v827[1];
            goto LABEL_2067;
          }

          if (v828 == 4)
          {
            v829 = v20[2];
            v830 = *v827;
            goto LABEL_2067;
          }

          if (v828 != 5)
          {
            return v22;
          }

          v831 = (_pcre2_ucp_gentype_8[v827[1]] & 0xFFFFFFFD) == 1;
LABEL_2042:
          v832 = v831;
          v833 = v21 == 15;
LABEL_2068:
          v841 = !v833;
          if (((v841 ^ v832) & 1) == 0)
          {
            goto LABEL_3311;
          }

          goto LABEL_1908;
        }

        if (v20[1] <= 8u)
        {
          if (v828 - 6 >= 2)
          {
            if (v828 != 8)
            {
              return v22;
            }

            if ((_pcre2_ucp_gentype_8[v827[1]] | 2) != 3)
            {
              v835 = v62 == 95;
              goto LABEL_2110;
            }

LABEL_2059:
            v838 = 1;
            goto LABEL_2113;
          }

          if (v62 < 0x2000)
          {
            if (v62 > 132)
            {
              if (v62 > 5759)
              {
                if (v62 == 5760 || v62 == 6158)
                {
                  goto LABEL_2076;
                }
              }

              else if (v62 == 133 || v62 == 160)
              {
                goto LABEL_2076;
              }
            }

            else if (v62 <= 0x20 && ((1 << v62) & 0x100003E00) != 0)
            {
              goto LABEL_2076;
            }
          }

          else if ((v62 - 0x2000) < 0xB || (v62 - 8232) <= 0x37 && ((1 << (v62 - 40)) & 0x80000000000083) != 0 || v62 == 12288)
          {
            goto LABEL_2076;
          }

          v831 = _pcre2_ucp_gentype_8[v827[1]] == 6;
          goto LABEL_2042;
        }

        if (v828 == 9)
        {
          v839 = (&_pcre2_ucd_caseless_sets_8 + 4 * v20[2]);
          while (1)
          {
            v840 = *v839;
            if (v62 < *v839)
            {
              break;
            }

            ++v839;
            if (v62 == v840)
            {
              if (v21 == 16)
              {
                goto LABEL_3311;
              }

LABEL_1093:
              v23 = 0;
              goto LABEL_2516;
            }
          }

          if (v21 == 16)
          {
            goto LABEL_1093;
          }

LABEL_3311:
          *v18 = v20 + 3;
          continue;
        }

        if (v828 == 10)
        {
          if ((v62 - 36) <= 0x3C && ((1 << (v62 - 36)) & 0x1000000010000001) != 0)
          {
            v834 = 1;
          }

          else
          {
            v956 = (v62 - 160) >> 5;
            v957 = v62 >> 13 > 6;
            v834 = v956 < 0x6BB || v957;
          }

          if (v834 == (v21 == 15))
          {
            goto LABEL_1093;
          }

          goto LABEL_3311;
        }

        return v22;
      case 0x11u:
        v165 = *(v18 + 80);
        v166 = *(a7 + 168);
        if (v165 < v166)
        {
          v167 = v165 + 1;
          *(v18 + 80) = v165 + 1;
          v168 = *v165;
          if (v17 && v168 >= 0xC0)
          {
            if ((v168 & 0x20) != 0)
            {
              v660 = *v167 & 0x3F;
              if ((v168 & 0x10) != 0)
              {
                if ((v168 & 8) != 0)
                {
                  v869 = v165[2] & 0x3F;
                  v870 = v165[3] & 0x3F;
                  v871 = v165[4] & 0x3F;
                  if ((v168 & 4) != 0)
                  {
                    v168 = ((v168 & 1) << 30) | (v660 << 24) | (v869 << 18) | (v870 << 12) | (v871 << 6) | v165[5] & 0x3F;
                    v167 = v165 + 6;
                  }

                  else
                  {
                    v168 = ((v168 & 3) << 24) | (v660 << 18) | (v869 << 12) | (v870 << 6) | v871;
                    v167 = v165 + 5;
                  }
                }

                else
                {
                  v168 = ((v168 & 7) << 18) | (v660 << 12) | ((v165[2] & 0x3F) << 6) | v165[3] & 0x3F;
                  v167 = v165 + 4;
                }
              }

              else
              {
                v168 = ((v168 & 0xF) << 12) | (v660 << 6) | v165[2] & 0x3F;
                v167 = v165 + 3;
              }

              *(v18 + 80) = v167;
            }

            else
            {
              v167 = v165 + 2;
              *(v18 + 80) = v165 + 2;
              v168 = v165[1] & 0x3F | ((v168 & 0x1F) << 6);
            }
          }

          v23 = 0;
          if (v168 <= 12)
          {
            if ((v168 - 11) >= 2)
            {
              if (v168 != 10)
              {
                goto LABEL_2516;
              }

              goto LABEL_2484;
            }
          }

          else if ((v168 - 8232) >= 2 && v168 != 133)
          {
            if (v168 != 13)
            {
              goto LABEL_2516;
            }

            if (v167 < v166)
            {
              if (*v167 == 10)
              {
                v145 = v167 + 1;
LABEL_236:
                *(v18 + 80) = v145;
              }

              goto LABEL_2484;
            }

            v155 = *(a7 + 128);
            if (*(a7 + 128))
            {
              if (v167 <= *(a7 + 184))
              {
LABEL_848:
                if (!*(a7 + 84))
                {
                  goto LABEL_2484;
                }
              }

LABEL_265:
              *(a7 + 76) = 1;
              if (v155 != 1)
              {
                return 4294967294;
              }
            }

LABEL_2484:
            *v18 = v20 + 1;
            continue;
          }

          if (*(a7 + 130) == 2)
          {
            goto LABEL_1908;
          }

          goto LABEL_2484;
        }

        v132 = *(a7 + 128);
        if (!*(a7 + 128))
        {
          goto LABEL_1908;
        }

        if (v165 > *(a7 + 184))
        {
          goto LABEL_1907;
        }

        goto LABEL_1906;
      case 0x12u:
        v61 = *(v18 + 80);
        if (v61 >= *(a7 + 168))
        {
          goto LABEL_1904;
        }

        *(v18 + 80) = v61 + 1;
        v156 = *v61;
        if (v17 && v156 >= 0xC0)
        {
          if ((v156 & 0x20) != 0)
          {
            v654 = v61[1] & 0x3F;
            if ((v156 & 0x10) != 0)
            {
              if ((v156 & 8) != 0)
              {
                v860 = v61[2] & 0x3F;
                v861 = v61[3] & 0x3F;
                v862 = v61[4] & 0x3F;
                if ((v156 & 4) != 0)
                {
                  v156 = ((v156 & 1) << 30) | (v654 << 24) | (v860 << 18) | (v861 << 12) | (v862 << 6) | v61[5] & 0x3F;
                  v655 = v61 + 6;
                }

                else
                {
                  v156 = ((v156 & 3) << 24) | (v654 << 18) | (v860 << 12) | (v861 << 6) | v862;
                  v655 = v61 + 5;
                }
              }

              else
              {
                v156 = ((v156 & 7) << 18) | (v654 << 12) | ((v61[2] & 0x3F) << 6) | v61[3] & 0x3F;
                v655 = v61 + 4;
              }
            }

            else
            {
              v156 = ((v156 & 0xF) << 12) | (v654 << 6) | v61[2] & 0x3F;
              v655 = v61 + 3;
            }

            *(v18 + 80) = v655;
          }

          else
          {
            *(v18 + 80) = v61 + 2;
            v156 = v61[1] & 0x3F | ((v156 & 0x1F) << 6);
          }
        }

        v23 = 0;
        if (v156 < 0x2000)
        {
          if (v156 <= 159)
          {
            if (v156 == 9 || v156 == 32)
            {
              goto LABEL_2516;
            }
          }

          else if (v156 == 160 || v156 == 5760 || v156 == 6158)
          {
            goto LABEL_2516;
          }
        }

        else if (v156 > 8238)
        {
          v968 = v156 == 8239 || v156 == 8287;
          if (v968 || v156 == 12288)
          {
            goto LABEL_2516;
          }
        }

        else if ((v156 - 0x2000) < 0xB)
        {
          goto LABEL_2516;
        }

        goto LABEL_2484;
      case 0x13u:
        v61 = *(v18 + 80);
        if (v61 >= *(a7 + 168))
        {
          goto LABEL_1904;
        }

        *(v18 + 80) = v61 + 1;
        v163 = *v61;
        if (v17 && v163 >= 0xC0)
        {
          if ((v163 & 0x20) != 0)
          {
            v658 = v61[1] & 0x3F;
            if ((v163 & 0x10) != 0)
            {
              if ((v163 & 8) != 0)
              {
                v866 = v61[2] & 0x3F;
                v867 = v61[3] & 0x3F;
                v868 = v61[4] & 0x3F;
                if ((v163 & 4) != 0)
                {
                  v163 = ((v163 & 1) << 30) | (v658 << 24) | (v866 << 18) | (v867 << 12) | (v868 << 6) | v61[5] & 0x3F;
                  v659 = v61 + 6;
                }

                else
                {
                  v163 = ((v163 & 3) << 24) | (v658 << 18) | (v866 << 12) | (v867 << 6) | v868;
                  v659 = v61 + 5;
                }
              }

              else
              {
                v163 = ((v163 & 7) << 18) | (v658 << 12) | ((v61[2] & 0x3F) << 6) | v61[3] & 0x3F;
                v659 = v61 + 4;
              }
            }

            else
            {
              v163 = ((v163 & 0xF) << 12) | (v658 << 6) | v61[2] & 0x3F;
              v659 = v61 + 3;
            }

            *(v18 + 80) = v659;
          }

          else
          {
            *(v18 + 80) = v61 + 2;
            v163 = v61[1] & 0x3F | ((v163 & 0x1F) << 6);
          }
        }

        v23 = 0;
        if (v163 < 0x2000)
        {
          if (v163 <= 159)
          {
            if (v163 != 9 && v163 != 32)
            {
              goto LABEL_2516;
            }

            goto LABEL_2484;
          }

          v969 = v163 == 160 || v163 == 5760;
          v970 = 6158;
        }

        else
        {
          if (v163 <= 8238)
          {
            if ((v163 - 0x2000) >= 0xB)
            {
              goto LABEL_2516;
            }

            goto LABEL_2484;
          }

          if (v163 == 8239)
          {
            goto LABEL_2484;
          }

          v969 = v163 == 12288;
          v970 = 8287;
        }

        if (!v969 && v163 != v970)
        {
          goto LABEL_2516;
        }

        goto LABEL_2484;
      case 0x14u:
        v61 = *(v18 + 80);
        if (v61 >= *(a7 + 168))
        {
          goto LABEL_1904;
        }

        *(v18 + 80) = v61 + 1;
        v188 = *v61;
        if (v17 && v188 >= 0xC0)
        {
          if ((v188 & 0x20) != 0)
          {
            v668 = v61[1] & 0x3F;
            if ((v188 & 0x10) != 0)
            {
              if ((v188 & 8) != 0)
              {
                v881 = v61[2] & 0x3F;
                v882 = v61[3] & 0x3F;
                v883 = v61[4] & 0x3F;
                if ((v188 & 4) != 0)
                {
                  v188 = ((v188 & 1) << 30) | (v668 << 24) | (v881 << 18) | (v882 << 12) | (v883 << 6) | v61[5] & 0x3F;
                  v669 = v61 + 6;
                }

                else
                {
                  v188 = ((v188 & 3) << 24) | (v668 << 18) | (v881 << 12) | (v882 << 6) | v883;
                  v669 = v61 + 5;
                }
              }

              else
              {
                v188 = ((v188 & 7) << 18) | (v668 << 12) | ((v61[2] & 0x3F) << 6) | v61[3] & 0x3F;
                v669 = v61 + 4;
              }
            }

            else
            {
              v188 = ((v188 & 0xF) << 12) | (v668 << 6) | v61[2] & 0x3F;
              v669 = v61 + 3;
            }

            *(v18 + 80) = v669;
          }

          else
          {
            *(v18 + 80) = v61 + 2;
            v188 = v61[1] & 0x3F | ((v188 & 0x1F) << 6);
          }
        }

        v23 = 0;
        v977 = v188 - 10 >= 4 && v188 - 8232 >= 2;
        if (v977 && v188 != 133)
        {
          goto LABEL_2484;
        }

        goto LABEL_2516;
      case 0x15u:
        v61 = *(v18 + 80);
        if (v61 >= *(a7 + 168))
        {
          goto LABEL_1904;
        }

        *(v18 + 80) = v61 + 1;
        v144 = *v61;
        if (v17 && v144 >= 0xC0)
        {
          if ((v144 & 0x20) != 0)
          {
            v646 = v61[1] & 0x3F;
            if ((v144 & 0x10) != 0)
            {
              if ((v144 & 8) != 0)
              {
                v848 = v61[2] & 0x3F;
                v849 = v61[3] & 0x3F;
                v850 = v61[4] & 0x3F;
                if ((v144 & 4) != 0)
                {
                  v144 = ((v144 & 1) << 30) | (v646 << 24) | (v848 << 18) | (v849 << 12) | (v850 << 6) | v61[5] & 0x3F;
                  v647 = v61 + 6;
                }

                else
                {
                  v144 = ((v144 & 3) << 24) | (v646 << 18) | (v848 << 12) | (v849 << 6) | v850;
                  v647 = v61 + 5;
                }
              }

              else
              {
                v144 = ((v144 & 7) << 18) | (v646 << 12) | ((v61[2] & 0x3F) << 6) | v61[3] & 0x3F;
                v647 = v61 + 4;
              }
            }

            else
            {
              v144 = ((v144 & 0xF) << 12) | (v646 << 6) | v61[2] & 0x3F;
              v647 = v61 + 3;
            }

            *(v18 + 80) = v647;
          }

          else
          {
            *(v18 + 80) = v61 + 2;
            v144 = v61[1] & 0x3F | ((v144 & 0x1F) << 6);
          }
        }

        v965 = v144 - 10 >= 4 && v144 - 8232 >= 2;
        if (!v965 || v144 == 133)
        {
          goto LABEL_2484;
        }

        goto LABEL_1908;
      case 0x16u:
        v169 = *(v18 + 80);
        v170 = *(a7 + 168);
        if (v169 >= v170)
        {
          v385 = *(a7 + 128);
          if (!*(a7 + 128) || v169 <= *(a7 + 184) && !*(a7 + 84))
          {
            goto LABEL_1093;
          }

          *(a7 + 76) = 1;
          if (v385 == 1)
          {
            goto LABEL_1093;
          }

          return 4294967294;
        }

        v171 = v169 + 1;
        *(v18 + 80) = v169 + 1;
        v172 = *v169;
        if (v17 && v172 >= 0xC0)
        {
          if ((v172 & 0x20) != 0)
          {
            v661 = *v171 & 0x3F;
            if ((v172 & 0x10) != 0)
            {
              if ((v172 & 8) != 0)
              {
                v872 = v169[2] & 0x3F;
                v873 = v169[3] & 0x3F;
                v874 = v169[4] & 0x3F;
                if ((v172 & 4) != 0)
                {
                  v172 = ((v172 & 1) << 30) | (v661 << 24) | (v872 << 18) | (v873 << 12) | (v874 << 6) | v169[5] & 0x3F;
                  v171 = v169 + 6;
                }

                else
                {
                  v172 = ((v172 & 3) << 24) | (v661 << 18) | (v872 << 12) | (v873 << 6) | v874;
                  v171 = v169 + 5;
                }
              }

              else
              {
                v172 = ((v172 & 7) << 18) | (v661 << 12) | ((v169[2] & 0x3F) << 6) | v169[3] & 0x3F;
                v171 = v169 + 4;
              }
            }

            else
            {
              v172 = ((v172 & 0xF) << 12) | (v661 << 6) | v169[2] & 0x3F;
              v171 = v169 + 3;
            }

            *(v18 + 80) = v171;
          }

          else
          {
            v171 = v169 + 2;
            *(v18 + 80) = v169 + 2;
            v172 = v169[1] & 0x3F | ((v172 & 0x1F) << 6);
          }
        }

        v972 = _pcre2_extuni_8(v172, v171, *(a7 + 152), v170, v1326, 0);
        *(v18 + 80) = v972;
        if (v972 >= *(a7 + 168))
        {
          v973 = *(a7 + 128);
          if (*(a7 + 128))
          {
            if (v972 > *(a7 + 184) || *(a7 + 84))
            {
              *(a7 + 76) = 1;
              if (v973 != 1)
              {
                return 4294967294;
              }
            }
          }
        }

        v63 = (*v18 + 1);
        goto LABEL_3314;
      case 0x17u:
        goto LABEL_255;
      case 0x18u:
        goto LABEL_263;
      case 0x19u:
        if ((*(a7 + 236) & 2) != 0)
        {
          goto LABEL_3275;
        }

        if ((*(a7 + 240) & 0x10) == 0)
        {
LABEL_255:
          v149 = *(v18 + 80);
          v150 = *(a7 + 168);
          if (v149 < v150)
          {
            v151 = *(a7 + 252);
            if (v151)
            {
              is_newline_8 = _pcre2_is_newline_8(v149, v151, v150, v1321, v1326);
              v17 = v1327;
              if (!is_newline_8)
              {
                goto LABEL_1403;
              }

              v149 = *(v18 + 80);
              v150 = *(a7 + 168);
              v153 = *v1321;
            }

            else
            {
              v153 = *v1321;
              if (v149 > v150 - v153 || *v149 != *(a7 + 260) || v153 != 1 && v149[1] != *(a7 + 261))
              {
                goto LABEL_1403;
              }
            }

            if (v149 != (v150 - v153))
            {
              goto LABEL_1403;
            }
          }

          v154 = *(a7 + 128);
          if (*(a7 + 128))
          {
            *(a7 + 76) = 1;
            if (v154 != 1)
            {
              return 4294967294;
            }
          }

          goto LABEL_1522;
        }

LABEL_263:
        if (*(v18 + 80) < *(a7 + 168))
        {
          goto LABEL_3275;
        }

        v155 = *(a7 + 128);
        if (!*(a7 + 128))
        {
          goto LABEL_2484;
        }

        goto LABEL_265;
      case 0x1Au:
        v196 = *(v18 + 80);
        v197 = *(a7 + 168);
        if (v196 < v197)
        {
          v198 = *(a7 + 252);
          if (v198)
          {
            v199 = _pcre2_is_newline_8(v196, v198, v197, v1321, v1326);
            v17 = v1327;
            if (!v199)
            {
              goto LABEL_1403;
            }

            v20 = *v18;
          }

          else
          {
            v614 = *v1321;
            if (v196 > v197 - v614 || *v196 != *(a7 + 260) || v614 != 1 && v196[1] != *(a7 + 261))
            {
LABEL_1403:
              v615 = *(a7 + 128);
              if (*(a7 + 128))
              {
                v616 = *(v18 + 80);
                if ((v616 + 1) >= *(a7 + 168) && !*(a7 + 252) && *v1321 == 2 && *v616 == *(a7 + 260))
                {
                  goto LABEL_1802;
                }
              }

              goto LABEL_3275;
            }
          }

          goto LABEL_2484;
        }

        if ((*(a7 + 236) & 2) != 0)
        {
          goto LABEL_3275;
        }

        v155 = *(a7 + 128);
        if (!*(a7 + 128))
        {
          goto LABEL_2484;
        }

        if (v196 > *(a7 + 184))
        {
          goto LABEL_265;
        }

        goto LABEL_848;
      case 0x1Bu:
        if (*(v18 + 80) != *(a7 + 152) || (*(a7 + 236) & 1) != 0)
        {
          goto LABEL_3275;
        }

        goto LABEL_2484;
      case 0x1Cu:
        v157 = *(v18 + 80);
        v158 = *(a7 + 152);
        if ((*(a7 + 236) & 1) != 0 && v157 == v158)
        {
          goto LABEL_3275;
        }

        if (v157 == v158)
        {
          goto LABEL_2484;
        }

        if (v157 == *(a7 + 168) && (*(a7 + 242) & 0x20) == 0)
        {
          goto LABEL_3275;
        }

        v159 = *(a7 + 252);
        if (v159)
        {
          if (v157 <= v158)
          {
            goto LABEL_3275;
          }

          v23 = _pcre2_was_newline_8(v157, v159, v158, v1321, v1326);
          if (!v23)
          {
            goto LABEL_176;
          }

          v20 = *v18;
          v17 = v1327;
        }

        else
        {
          v674 = *v1321;
          if (v157 < v158 + v674 || v157[-v674] != *(a7 + 260) || v674 != 1 && v157[-v674 + 1] != *(a7 + 261))
          {
            goto LABEL_3275;
          }
        }

        goto LABEL_2484;
      case 0x1Du:
        if (!v17)
        {
          v177 = *(v18 + 80);
          if ((*(a7 + 168) - v177) <= 0)
          {
            goto LABEL_1258;
          }

          v384 = v20[1];
          *(v18 + 80) = v177 + 1;
          if (v384 != *v177)
          {
            goto LABEL_1908;
          }

          goto LABEL_2000;
        }

        v142 = 1;
        *(v18 + 24) = 1;
        *v18 = v20 + 1;
        v143 = v20[1];
        if (v143 >= 0xC0)
        {
          if ((v143 & 0x20) != 0)
          {
            if ((v143 & 0x10) != 0)
            {
              v142 = 4;
              v800 = 5;
              if ((v143 & 4) != 0)
              {
                v800 = 6;
              }

              if ((v143 & 8) != 0)
              {
                v142 = v800;
              }
            }

            else
            {
              v142 = 3;
            }
          }

          else
          {
            v142 = 2;
          }

          *(v18 + 24) = v142;
        }

        v801 = *(a7 + 168);
        v61 = *(v18 + 80);
        if (v142 <= v801 - v61)
        {
          v802 = v61 + 1;
          v803 = v20 + 2;
          v804 = (v142 - 1);
          while (1)
          {
            *v18 = v803;
            v805 = *(v803 - 1);
            *(v18 + 80) = v802;
            if (v805 != *(v802 - 1))
            {
              goto LABEL_1908;
            }

            *(v18 + 24) = v804;
            ++v802;
            ++v803;
            if (--v804 == -1)
            {
              goto LABEL_8;
            }
          }
        }

        if (v61 < v801)
        {
          goto LABEL_1908;
        }

LABEL_1904:
        v132 = *(a7 + 128);
        if (!*(a7 + 128))
        {
          goto LABEL_1908;
        }

        if (v61 <= *(a7 + 184))
        {
          goto LABEL_1906;
        }

        goto LABEL_1907;
      case 0x1Eu:
        v177 = *(v18 + 80);
        if (v177 >= *(a7 + 168))
        {
          goto LABEL_1258;
        }

        if (!v17)
        {
          if ((v1317 & 0x20000) != 0)
          {
            v540 = *v177;
            v666 = v20[1];
            if ((v20[1] & 0x80000000) == 0)
            {
              v667 = *(a7 + 88);
              v539 = *(v667 + v20[1]);
              v540 = *(v667 + *v177);
              goto LABEL_1998;
            }

            if (v540 != v666)
            {
              v539 = _pcre2_ucd_records_8[3 * _pcre2_ucd_stage2_8[v666 & 0x7F | 0x80] + 1] + v666;
              goto LABEL_1998;
            }
          }

          else
          {
            v538 = *(a7 + 88);
            v539 = *(v538 + v20[1]);
            v540 = *(v538 + *v177);
LABEL_1998:
            if (v539 != v540)
            {
              goto LABEL_1908;
            }
          }

          *(v18 + 80) = v177 + 1;
LABEL_2000:
          *v18 = v20 + 2;
          continue;
        }

        v178 = 1;
        *(v18 + 24) = 1;
        v179 = v20 + 1;
        *v18 = v20 + 1;
        v180 = v20[1];
        if (v180 >= 0xC0)
        {
          v181 = v20[2] & 0x3F;
          if ((v180 & 0x20) != 0)
          {
            if ((v180 & 0x10) != 0)
            {
              if ((v180 & 8) != 0)
              {
                v974 = v20[3] & 0x3F;
                v975 = v20[4] & 0x3F;
                v976 = v20[5] & 0x3F;
                if ((v180 & 4) != 0)
                {
                  v180 = ((v180 & 1) << 30) | (v181 << 24) | (v974 << 18) | (v975 << 12) | (v976 << 6) | v20[6] & 0x3F;
                  v178 = 6;
                }

                else
                {
                  v180 = ((v180 & 3) << 24) | (v181 << 18) | (v974 << 12) | (v975 << 6) | v976;
                  v178 = 5;
                }
              }

              else
              {
                v180 = ((v180 & 7) << 18) | (v181 << 12) | ((v20[3] & 0x3F) << 6) | v20[4] & 0x3F;
                v178 = 4;
              }
            }

            else
            {
              v180 = ((v180 & 0xF) << 12) | (v181 << 6) | v20[3] & 0x3F;
              v178 = 3;
            }
          }

          else
          {
            v178 = 2;
            v180 = v20[2] & 0x3F | ((v180 & 0x1F) << 6);
          }

          *(v18 + 24) = v178;
        }

        if (v180 > 0x7F)
        {
          *(v18 + 80) = v177 + 1;
          v980 = *v177;
          if (v980 >= 0xC0)
          {
            if ((v980 & 0x20) != 0)
            {
              v981 = v177[1] & 0x3F;
              if ((v980 & 0x10) != 0)
              {
                if ((v980 & 8) != 0)
                {
                  v983 = v177[2] & 0x3F;
                  v984 = v177[3] & 0x3F;
                  v985 = v177[4] & 0x3F;
                  if ((v980 & 4) != 0)
                  {
                    v980 = ((v980 & 1) << 30) | (v981 << 24) | (v983 << 18) | (v984 << 12) | (v985 << 6) | v177[5] & 0x3F;
                    v982 = v177 + 6;
                  }

                  else
                  {
                    v980 = ((v980 & 3) << 24) | (v981 << 18) | (v983 << 12) | (v984 << 6) | v985;
                    v982 = v177 + 5;
                  }
                }

                else
                {
                  v980 = ((v980 & 7) << 18) | (v981 << 12) | ((v177[2] & 0x3F) << 6) | v177[3] & 0x3F;
                  v982 = v177 + 4;
                }
              }

              else
              {
                v980 = ((v980 & 0xF) << 12) | (v981 << 6) | v177[2] & 0x3F;
                v982 = v177 + 3;
              }

              *(v18 + 80) = v982;
            }

            else
            {
              *(v18 + 80) = v177 + 2;
              v980 = v177[1] & 0x3F | ((v980 & 0x1F) << 6);
            }
          }

          *v18 = &v179[v178];
          if (v980 == v180)
          {
            continue;
          }

          v23 = 0;
          if (v980 == _pcre2_ucd_records_8[3 * _pcre2_ucd_stage2_8[v180 & 0x7F | (_pcre2_ucd_stage1_8[v180 >> 7] << 7)] + 1] + v180)
          {
            continue;
          }

LABEL_2516:
          while (2)
          {
            while (2)
            {
              v987 = *(v18 + 80);
              if (v987 > *(a7 + 192))
              {
                *(a7 + 192) = v987;
              }

              if (!*(v18 + 48))
              {
                return v23;
              }

              v18 -= *(v18 + 32);
              *(*(a7 + 264) + 104) |= 2u;
              v988 = *(v18 + 72);
              v22 = 4294967252;
              if (v988 <= 0x63)
              {
                switch(*(v18 + 72))
                {
                  case 1:
                    if (v23)
                    {
                      continue;
                    }

                    v20 = *(v18 + 8);
                    *v18 = v20;
                    goto LABEL_3262;
                  case 2:
                    if (v23 == -993)
                    {
                      v1041 = *v18;
                      v1042 = __rev16(*(*v18 + 1));
                      v1108 = (*v18 + v1042);
                      if (*(a7 + 216) >= v1108)
                      {
                        continue;
                      }

                      if (*v1041 != 120)
                      {
                        v23 = 4294966303;
                        if (*v1108 != 120)
                        {
                          continue;
                        }
                      }
                    }

                    else
                    {
                      if (v23)
                      {
                        continue;
                      }

                      v1041 = *v18;
                      v1042 = __rev16(*(*v18 + 1));
                    }

                    v23 = 0;
                    v20 = &v1041[v1042];
                    *v18 = &v1041[v1042];
                    if (v1041[v1042] != 120)
                    {
                      continue;
                    }

                    v14 = *(v18 + 56);
                    goto LABEL_3412;
                  case 3:
                    if (v23 == -993 || !v23)
                    {
                      v23 = 0;
                      v1106 = *v18;
                      v1107 = __rev16(*(*v18 + 1));
                      v20 = (*v18 + v1107);
                      *v18 = v20;
                      if (v1106[v1107] != 120)
                      {
                        continue;
                      }

                      v14 = *(v18 + 56);
                      v1275 = 0x78u;
LABEL_3375:
                      a2 = &v20[_pcre2_OP_lengths_8[v1275]];
                      v1287 = 3;
                      goto LABEL_3351;
                    }

                    if (v23 != -999)
                    {
                      continue;
                    }

                    memcpy((v18 + 128), v1319 + 16, 8 * v1319[15]);
                    *(v18 + 120) = v1319[15];
                    *(v18 + 96) = v1319[12];
                    v1252 = *v18;
                    do
                    {
                      v1252 += __rev16(*(v1252 + 1));
                      *v18 = v1252;
                    }

                    while (*v1252 == 120);
                    v63 = v1252 + 3;
LABEL_3314:
                    *v18 = v63;
                    v17 = v1327;
                    goto LABEL_8;
                  case 4:
                    if (v23 <= -994)
                    {
                      if (v23 == -999)
                      {
                        goto LABEL_1093;
                      }

                      if ((v23 + 997) >= 3)
                      {
                        continue;
                      }

                      v20 = *v18;
                      do
                      {
                        v20 += __rev16(*(v20 + 1));
                        *v18 = v20;
                      }

                      while (*v20 == 120);
                      goto LABEL_3311;
                    }

                    if (v23 == 1)
                    {
                      goto LABEL_1093;
                    }

                    if (v23 == -993 || !v23)
                    {
                      v20 = (*v18 + __rev16(*(*v18 + 1)));
                      *v18 = v20;
                      if (*v20 != 120)
                      {
                        goto LABEL_3311;
                      }

                      v14 = *(v18 + 56);
                      v1285 = 0x78u;
LABEL_3403:
                      v8 = a6;
                      a2 = &v20[_pcre2_OP_lengths_8[v1285]];
                      v1287 = 4;
                      goto LABEL_3352;
                    }

                    continue;
                  case 5:
                    if (v23 <= -994)
                    {
                      if ((v23 + 997) >= 3)
                      {
                        if (v23 != -999)
                        {
                          continue;
                        }

                        memcpy((v18 + 128), v1319 + 16, 8 * v1319[15]);
                        v17 = v1327;
                        *(v18 + 120) = v1319[15];
                        goto LABEL_3306;
                      }

                      goto LABEL_3239;
                    }

                    if (v23 != -993 && v23)
                    {
                      if (v23 != 1)
                      {
                        continue;
                      }

LABEL_3306:
                      if (!*(v18 + 56))
                      {
                        goto LABEL_3307;
                      }

LABEL_3240:
                      v114 = *v18;
                      do
                      {
                        v114 += __rev16(*(v114 + 1));
                        *v18 = v114;
                        v511 = *v114;
                      }

                      while (v511 == 120);
                      goto LABEL_3242;
                    }

                    v1229 = *(v18 + 8);
                    v1230 = __rev16(*(v1229 + 1));
                    v114 = &v1229[v1230];
                    *(v18 + 8) = &v1229[v1230];
                    if (v1229[v1230] != 120)
                    {
LABEL_3239:
                      if (*(v18 + 56))
                      {
LABEL_3307:
                        v113 = *(v18 + 24);
                        v114 = *v18;
                        goto LABEL_3308;
                      }

                      goto LABEL_3240;
                    }

                    v1295 = **v18;
                    v1296 = 0x78u;
                    v8 = a6;
                    goto LABEL_3507;
                  case 6:
                    if (v23)
                    {
                      continue;
                    }

                    *v18 -= __rev16(*(*v18 + 1));
                    goto LABEL_8;
                  case 7:
                    if (v23)
                    {
                      continue;
                    }

                    v190 = *v18;
                    goto LABEL_3318;
                  case 8:
                    if (v23 == -993)
                    {
                      v1109 = *v18;
                      v1110 = __rev16(*(*v18 + 1));
                      v1112 = (*v18 + v1110);
                      if (*(a7 + 216) >= v1112)
                      {
                        continue;
                      }

                      if (*v1109 != 120)
                      {
                        v23 = 4294966303;
                        if (*v1112 != 120)
                        {
                          continue;
                        }
                      }
                    }

                    else
                    {
                      if (v23)
                      {
                        if (v23 != -998)
                        {
                          continue;
                        }

                        *(v18 + 60) = 1;
                        if (*(v18 + 80) == *(v18 + 8))
                        {
                          v190 = *v18;
                          do
                          {
                            v190 += __rev16(*(v190 + 1));
                            *v18 = v190;
                          }

                          while (*v190 == 120);
LABEL_3318:
                          *v18 = v190 + 3;
                          goto LABEL_8;
                        }

                        v1111 = *(v18 + 16);
                        *v18 = v1111;
LABEL_3501:
                        v8 = a6;
LABEL_3502:
                        *(v18 + 8) = *(v18 + 80);
                        v14 = *(v18 + 56);
                        a2 = &v1111[_pcre2_OP_lengths_8[*v1111]];
                        v1287 = 8;
                        goto LABEL_3352;
                      }

                      v1109 = *v18;
                      v1110 = __rev16(*(*v18 + 1));
                    }

                    v1111 = &v1109[v1110];
                    *v18 = &v1109[v1110];
                    if (v1109[v1110] == 120)
                    {
                      goto LABEL_3501;
                    }

                    if (!*(v18 + 60))
                    {
                      v23 = 0;
                      if (!*(v18 + 64))
                      {
                        continue;
                      }
                    }

                    v190 = &v1109[v1110];
                    goto LABEL_3318;
                  case 9:
                    if (v23)
                    {
                      continue;
                    }

                    v190 = *(v18 + 8);
                    do
                    {
                      v190 += __rev16(*(v190 + 1));
                      *(v18 + 8) = v190;
                    }

                    while (*v190 == 120);
                    goto LABEL_3318;
                  case 0xA:
                    if (!v23)
                    {
                      goto LABEL_1522;
                    }

                    continue;
                  case 0xB:
                    v1049 = *(v18 + 8);
                    v1050 = &v1049[__rev16(*(v1049 + 1))];
                    if ((v23 + 997) >= 5)
                    {
                      if (v23)
                      {
                        continue;
                      }
                    }

                    else
                    {
                      if ((*(v18 + 56) ^ *(a7 + 232)) != 0x40000)
                      {
                        continue;
                      }

                      v101 = v23 == -993;
                      v23 = 0;
                      if (!v101)
                      {
                        continue;
                      }

                      v23 = 0;
                      if (*(a7 + 216) >= v1050)
                      {
                        continue;
                      }

                      if (*v1049 != 120)
                      {
                        v23 = 0;
                        if (*v1050 != 120)
                        {
                          continue;
                        }
                      }
                    }

                    v23 = 0;
                    *(v18 + 8) = v1050;
                    if (*v1050 != 120)
                    {
                      continue;
                    }

                    v14 = *(v18 + 56);
                    v1282 = 0x78u;
                    v8 = a6;
                    goto LABEL_3457;
                  case 0xC:
                    if (v23 == -994)
                    {
                      v1002 = _pcre2_strcmp_8((*v18 + 2), *(a7 + 224));
                      v17 = v1327;
                      v1003 = v1002;
                      v23 = 4294966302;
                      if (!v1003)
                      {
                        *(a7 + 224) = *(v18 + 80);
                        v23 = 4294966301;
                      }
                    }

                    continue;
                  case 0xD:
                    if (!v23)
                    {
                      *(a7 + 232) = *(v18 + 104);
                      v23 = 4294966299;
                    }

                    continue;
                  case 0xE:
                  case 0xF:
                    if (!v23)
                    {
                      *(a7 + 232) = *(v18 + 104);
                      v23 = 4294966300;
                    }

                    continue;
                  case 0x10:
                    if (!v23)
                    {
                      *(a7 + 224) = *(v18 + 80);
                      *(a7 + 232) = *(v18 + 104);
                      v23 = 4294966301;
                    }

                    continue;
                  case 0x11:
                    if (!v23)
                    {
                      *(a7 + 224) = *v18 + 2;
                      *(a7 + 232) = *(v18 + 104);
                      v23 = 4294966302;
                    }

                    continue;
                  case 0x12:
                  case 0x13:
                    if (!v23)
                    {
                      *(a7 + 216) = *v18;
                      *(a7 + 232) = *(v18 + 104);
                      v23 = 4294966303;
                    }

                    continue;
                  case 0x14:
                    if (v23)
                    {
                      continue;
                    }

                    v1089 = *(v18 + 56);
                    v1090 = *(v18 + 60);
                    *(v18 + 56) = v1089 + 1;
                    if (v1089 >= v1090)
                    {
                      continue;
                    }

                    matched = match_ref(*(v18 + 40), *(v18 + 64), v18, a7, &v1328);
                    if (matched)
                    {
                      if (matched <= 0)
                      {
                        v1092 = *(v18 + 80);
                      }

                      else
                      {
                        v1092 = *(a7 + 168);
                        *(v18 + 80) = v1092;
                      }

                      v17 = v1327;
                      v23 = 0;
                      if (v1092 < *(a7 + 168))
                      {
                        continue;
                      }

                      v23 = 0;
                      v1131 = *(a7 + 128);
                      if (!*(a7 + 128))
                      {
                        continue;
                      }

                      if (v1092 <= *(a7 + 184))
                      {
                        v23 = 0;
                        if (!*(a7 + 84))
                        {
                          continue;
                        }
                      }

                      v23 = 0;
                      *(a7 + 76) = 1;
                      if (v1131 == 1)
                      {
                        continue;
                      }

                      return 4294967294;
                    }

                    *(v18 + 80) += v1328;
                    goto LABEL_3393;
                  case 0x15:
                    if (v23)
                    {
                      continue;
                    }

                    v676 = (*(v18 + 80) - *(v18 + 24));
                    *(v18 + 80) = v676;
                    goto LABEL_3274;
                  case 0x16:
                    if (v23)
                    {
                      continue;
                    }

                    v1044 = *(v18 + 8);
                    if (*(v18 + 80) == v1044)
                    {
                      continue;
                    }

                    *(v18 + 80) = v1044;
                    v1278 = *(v18 + 56);
                    v1279 = *(v18 + 60) - 1;
                    *(v18 + 60) = v1279;
                    while (v1278 < v1279)
                    {
                      v1329 = 0;
                      match_ref(*(v18 + 40), *(v18 + 64), v18, a7, &v1329);
                      *(v18 + 80) += v1329;
                      ++v1278;
                      v1279 = *(v18 + 60);
                    }

                    goto LABEL_3504;
                  case 0x17:
                    if (v23)
                    {
                      continue;
                    }

                    v1087 = *(v18 + 56);
                    v1088 = *(v18 + 60);
                    *(v18 + 56) = v1087 + 1;
                    if (v1087 >= v1088)
                    {
                      continue;
                    }

                    v1057 = *(v18 + 80);
                    if (v1057 >= *(a7 + 168))
                    {
                      goto LABEL_2806;
                    }

                    v23 = 0;
                    *(v18 + 80) = v1057 + 1;
                    if (((*(*(v18 + 16) + (*v1057 >> 3)) >> (*v1057 & 7)) & 1) == 0)
                    {
                      continue;
                    }

                    a2 = *v18;
                    v8 = a6;
                    goto LABEL_3414;
                  case 0x18:
                    if (v23)
                    {
                      continue;
                    }

                    v530 = (*(v18 + 80) - 1);
                    *(v18 + 80) = v530;
                    v392 = *(v18 + 8);
                    v51 = v13;
                    goto LABEL_3272;
                  case 0x19:
                    if (v23)
                    {
                      continue;
                    }

                    v1012 = *(v18 + 56);
                    v1013 = *(v18 + 60);
                    *(v18 + 56) = v1012 + 1;
                    if (v1012 >= v1013)
                    {
                      continue;
                    }

                    v1014 = *(v18 + 80);
                    if (v1014 >= *(a7 + 168))
                    {
                      goto LABEL_2811;
                    }

                    v1015 = *v1014;
                    if (*(v18 + 64) != v1015)
                    {
                      v23 = 0;
                      if (*(v18 + 68) != v1015)
                      {
                        continue;
                      }
                    }

                    v14 = 0;
                    *(v18 + 80) = v1014 + 1;
                    a2 = *v18;
                    goto LABEL_3399;
                  case 0x1A:
                    v103 = (*(v18 + 80) - 1);
                    *(v18 + 80) = v103;
                    if (v23)
                    {
                      continue;
                    }

                    v102 = *(v18 + 8);
                    v30 = v13;
                    goto LABEL_3270;
                  case 0x1B:
                    if (v23)
                    {
                      continue;
                    }

                    v1103 = *(v18 + 56);
                    v1104 = *(v18 + 60);
                    *(v18 + 56) = v1103 + 1;
                    if (v1103 >= v1104)
                    {
                      continue;
                    }

                    v1057 = *(v18 + 80);
                    if (v1057 >= *(a7 + 168))
                    {
                      goto LABEL_2806;
                    }

                    v23 = 0;
                    v1105 = *(v18 + 64);
                    *(v18 + 80) = v1057 + 1;
                    if (v1105 != *v1057)
                    {
                      continue;
                    }

                    v14 = 0;
                    a2 = *v18;
                    goto LABEL_3424;
                  case 0x1C:
                    v94 = (*(v18 + 80) - 1);
                    *(v18 + 80) = v94;
                    if (v23)
                    {
                      continue;
                    }

                    v93 = *(v18 + 8);
                    v30 = v13;
                    goto LABEL_3260;
                  case 0x1D:
                    if (v23)
                    {
                      continue;
                    }

                    v1100 = *(v18 + 56);
                    v1101 = *(v18 + 60);
                    *(v18 + 56) = v1100 + 1;
                    if (v1100 >= v1101)
                    {
                      continue;
                    }

                    v1014 = *(v18 + 80);
                    if (v1014 >= *(a7 + 168))
                    {
LABEL_2811:
                      v23 = 0;
                      v1114 = *(a7 + 128);
                      if (!*(a7 + 128))
                      {
                        continue;
                      }

                      if (v1014 <= *(a7 + 184))
                      {
                        v23 = 0;
                        if (!*(a7 + 84))
                        {
                          continue;
                        }
                      }

                      v23 = 0;
                      *(a7 + 76) = 1;
                      if (v1114 == 1)
                      {
                        continue;
                      }

                      return 4294967294;
                    }

                    v23 = 0;
                    v1102 = *v1014;
                    if (*(v18 + 64) == v1102)
                    {
                      continue;
                    }

                    v23 = 0;
                    if (*(v18 + 68) == v1102)
                    {
                      continue;
                    }

                    *(v18 + 80) = v1014 + 1;
                    a2 = *v18;
                    v8 = a6;
                    goto LABEL_3464;
                  case 0x1E:
                    if (v23)
                    {
                      continue;
                    }

                    v317 = (*(v18 + 80) - 1);
                    *(v18 + 80) = v317;
                    v316 = *(v18 + 8);
                    v37 = v13;
                    goto LABEL_3298;
                  case 0x1F:
                    if (v23)
                    {
                      continue;
                    }

                    v1055 = *(v18 + 56);
                    v1056 = *(v18 + 60);
                    *(v18 + 56) = v1055 + 1;
                    if (v1055 >= v1056)
                    {
                      continue;
                    }

                    v1057 = *(v18 + 80);
                    if (v1057 >= *(a7 + 168))
                    {
LABEL_2806:
                      v23 = 0;
                      v1113 = *(a7 + 128);
                      if (!*(a7 + 128))
                      {
                        continue;
                      }

                      if (v1057 <= *(a7 + 184))
                      {
                        v23 = 0;
                        if (!*(a7 + 84))
                        {
                          continue;
                        }
                      }

                      v23 = 0;
                      *(a7 + 76) = 1;
                      if (v1113 == 1)
                      {
                        continue;
                      }

                      return 4294967294;
                    }

                    v23 = 0;
                    v1058 = *(v18 + 64);
                    *(v18 + 80) = v1057 + 1;
                    if (v1058 == *v1057)
                    {
                      continue;
                    }

                    a2 = *v18;
                    v8 = a6;
                    goto LABEL_3418;
                  case 0x20:
                    if (v23)
                    {
                      continue;
                    }

                    v302 = (*(v18 + 80) - 1);
                    *(v18 + 80) = v302;
                    v301 = *(v18 + 8);
                    v37 = v13;
                    goto LABEL_3264;
                  case 0x21:
                    if (v23)
                    {
                      continue;
                    }

                    v1059 = *(v18 + 56);
                    v1060 = *(v18 + 60);
                    *(v18 + 56) = v1059 + 1;
                    if (v1059 >= v1060)
                    {
                      continue;
                    }

                    v1061 = *(v18 + 80);
                    v1062 = *(a7 + 168);
                    if (v1061 >= v1062)
                    {
                      v23 = 0;
                      v1126 = *(a7 + 128);
                      if (!*(a7 + 128))
                      {
                        continue;
                      }

                      if (v1061 <= *(a7 + 184))
                      {
                        v23 = 0;
                        if (!*(a7 + 84))
                        {
                          continue;
                        }
                      }

                      v23 = 0;
                      *(a7 + 76) = 1;
                      if (v1126 == 1)
                      {
                        continue;
                      }

                      return 4294967294;
                    }

                    v1063 = *(v18 + 64);
                    if (v1063 != 12)
                    {
                      goto LABEL_2715;
                    }

                    v1064 = *(a7 + 252);
                    if (!v1064)
                    {
                      v1160 = *v1321;
                      if (v1061 <= v1062 - v1160 && *v1061 == *(a7 + 260))
                      {
                        v23 = 0;
                        if (v1160 == 1)
                        {
                          continue;
                        }

                        v23 = 0;
                        if (v1061[1] == *(a7 + 261))
                        {
                          continue;
                        }
                      }

                      v1298 = v1061 + 1;
                      *(v18 + 80) = v1061 + 1;
                      v1068 = *v1061;
LABEL_3469:
                      v1299 = *(a7 + 128);
                      if (*(a7 + 128))
                      {
                        if (v1298 >= *(a7 + 168) && !*(a7 + 252) && *v1321 == 2 && v1068 == *(a7 + 260))
                        {
                          *(a7 + 76) = 1;
                          if (v1299 != 1)
                          {
                            return 4294967294;
                          }
                        }
                      }

                      goto LABEL_3527;
                    }

                    v1065 = _pcre2_is_newline_8(*(v18 + 80), v1064, v1062, v1321, v1326);
                    v17 = v1327;
                    v1066 = v1065;
                    v23 = 0;
                    if (v1066)
                    {
                      continue;
                    }

                    v1063 = *(v18 + 64);
                    v1061 = *(v18 + 80);
LABEL_2715:
                    *(v18 + 80) = v1061 + 1;
                    v22 = 4294967252;
                    v1067 = v1063 - 6;
                    v1068 = *v1061;
                    switch(v1067)
                    {
                      case 0:
                        v23 = 0;
                        if ((*(*(a7 + 104) + *v1061) & 8) == 0)
                        {
                          goto LABEL_3527;
                        }

                        continue;
                      case 1:
                        v23 = 0;
                        if ((*(*(a7 + 104) + *v1061) & 8) != 0)
                        {
                          goto LABEL_3527;
                        }

                        continue;
                      case 2:
                        v23 = 0;
                        if ((*(*(a7 + 104) + *v1061) & 1) == 0)
                        {
                          goto LABEL_3527;
                        }

                        continue;
                      case 3:
                        v23 = 0;
                        if (*(*(a7 + 104) + *v1061))
                        {
                          goto LABEL_3527;
                        }

                        continue;
                      case 4:
                        v23 = 0;
                        if ((*(*(a7 + 104) + *v1061) & 0x10) == 0)
                        {
                          goto LABEL_3527;
                        }

                        continue;
                      case 5:
                        v23 = 0;
                        if ((*(*(a7 + 104) + *v1061) & 0x10) != 0)
                        {
                          goto LABEL_3527;
                        }

                        continue;
                      case 6:
                        v1298 = v1061 + 1;
                        goto LABEL_3469;
                      case 7:
                      case 8:
                        goto LABEL_3527;
                      case 11:
                        v23 = 0;
                        if (*v1061 > 0xCu)
                        {
                          if (v1068 != 133)
                          {
                            if (v1068 != 13)
                            {
                              continue;
                            }

                            if ((v1061 + 1) < *(a7 + 168) && v1061[1] == 10)
                            {
                              *(v18 + 80) = v1061 + 2;
                            }

                            goto LABEL_3527;
                          }
                        }

                        else if ((v1068 - 11) >= 2)
                        {
                          if (v1068 != 10)
                          {
                            continue;
                          }

                          goto LABEL_3527;
                        }

                        v23 = 0;
                        if (*(a7 + 130) == 2)
                        {
                          continue;
                        }

                        goto LABEL_3527;
                      case 12:
                        v23 = 0;
                        if (v1068 != 9 && v1068 != 32 && v1068 != 160)
                        {
                          goto LABEL_3527;
                        }

                        continue;
                      case 13:
                        if (v1068 == 9)
                        {
                          goto LABEL_3527;
                        }

                        if (v1068 == 32)
                        {
                          goto LABEL_3527;
                        }

                        v23 = 0;
                        if (v1068 == 160)
                        {
                          goto LABEL_3527;
                        }

                        continue;
                      case 14:
                        v23 = 0;
                        if ((v1068 - 10) >= 4 && v1068 != 133)
                        {
                          goto LABEL_3527;
                        }

                        continue;
                      case 15:
                        if ((v1068 - 10) < 4)
                        {
                          goto LABEL_3527;
                        }

                        v23 = 0;
                        if (v1068 == 133)
                        {
                          goto LABEL_3527;
                        }

                        continue;
                      default:
                        return v22;
                    }

                  case 0x22:
                    if (v23)
                    {
                      continue;
                    }

                    v1236 = *(v18 + 80);
                    v918 = v1236 - 1;
                    *(v18 + 80) = v1236 - 1;
                    if (*(v18 + 64) == 17 && v918 > *(v18 + 8) && *v918 == 10)
                    {
                      v1238 = *(v1236 - 2);
                      v1237 = v1236 - 2;
                      if (v1238 == 13)
                      {
                        *(v18 + 80) = v1237;
                        v918 = v1237;
                      }
                    }

                    goto LABEL_3258;
                  case 0x23:
                    continue;
                  case 0x24:
                    if (!v23)
                    {
                      *(a7 + 232) = *(v18 + 104);
                      v23 = 4294966299;
                    }

                    continue;
                  default:
                    return v22;
                }
              }

              break;
            }

            switch(*(v18 + 72))
            {
              case 0xC8:
                if (v23)
                {
                  continue;
                }

                v989 = *(v18 + 56);
                v990 = *(v18 + 60);
                *(v18 + 56) = v989 + 1;
                if (v989 >= v990)
                {
                  continue;
                }

                v991 = *(v18 + 80);
                if (v991 >= *(a7 + 168))
                {
                  v23 = 0;
                  v1123 = *(a7 + 128);
                  if (!*(a7 + 128))
                  {
                    continue;
                  }

                  if (v991 <= *(a7 + 184))
                  {
                    v23 = 0;
                    if (!*(a7 + 84))
                    {
                      continue;
                    }
                  }

                  v23 = 0;
                  *(a7 + 76) = 1;
                  if (v1123 == 1)
                  {
                    continue;
                  }

                  return 4294967294;
                }

                *(v18 + 80) = v991 + 1;
                v992 = *v991;
                if (v992 < 0xC0)
                {
                  goto LABEL_3118;
                }

                if ((v992 & 0x20) != 0)
                {
                  v1148 = v991[1] & 0x3F;
                  if ((v992 & 0x10) != 0)
                  {
                    if ((v992 & 8) != 0)
                    {
                      v1189 = v991[2] & 0x3F;
                      v1190 = v991[3] & 0x3F;
                      v1191 = v991[4] & 0x3F;
                      if ((v992 & 4) != 0)
                      {
                        v992 = ((v992 & 1) << 30) | (v1148 << 24) | (v1189 << 18) | (v1190 << 12) | (v1191 << 6) | v991[5] & 0x3F;
                        v1149 = v991 + 6;
                      }

                      else
                      {
                        v992 = ((v992 & 3) << 24) | (v1148 << 18) | (v1189 << 12) | (v1190 << 6) | v1191;
                        v1149 = v991 + 5;
                      }
                    }

                    else
                    {
                      v992 = ((v992 & 7) << 18) | (v1148 << 12) | ((v991[2] & 0x3F) << 6) | v991[3] & 0x3F;
                      v1149 = v991 + 4;
                    }
                  }

                  else
                  {
                    v992 = ((v992 & 0xF) << 12) | (v1148 << 6) | v991[2] & 0x3F;
                    v1149 = v991 + 3;
                  }

                  *(v18 + 80) = v1149;
                }

                else
                {
                  *(v18 + 80) = v991 + 2;
                  v992 = v991[1] & 0x3F | ((v992 & 0x1F) << 6);
                }

                if (v992 < 0x100)
                {
LABEL_3118:
                  v23 = 0;
                  if (((*(*(v18 + 16) + (v992 >> 3)) >> (v992 & 7)) & 1) == 0)
                  {
                    continue;
                  }
                }

                else
                {
                  v23 = 0;
                  if (*(v18 + 73) == 110)
                  {
                    continue;
                  }
                }

                v14 = 0;
                a2 = *v18;
                v1287 = -56;
                goto LABEL_3351;
              case 0xC9:
                if (v23)
                {
                  continue;
                }

                v1043 = *(v18 + 80);
                *(v18 + 80) = v1043 - 1;
                if (v1043 <= *(v18 + 8))
                {
                  continue;
                }

                if ((*(v1043 - 1) & 0xC0) == 0x80)
                {
                  v1276 = v1043 - 2;
                  do
                  {
                    *(v18 + 80) = v1276;
                    v1277 = *v1276--;
                  }

                  while ((v1277 & 0xC0) == 0x80);
                }

                v51 = v13;
                goto LABEL_3365;
              case 0xCA:
                if (v23)
                {
                  continue;
                }

                v1028 = *(v18 + 56);
                v1029 = *(v18 + 60);
                *(v18 + 56) = v1028 + 1;
                if (v1028 >= v1029)
                {
                  continue;
                }

                v1030 = *(v18 + 80);
                v1031 = *(a7 + 168);
                v1032 = *(v18 + 24);
                if (v1030 > v1031 - v1032 || (v1033 = memcmp(*(v18 + 80), *(v18 + 16), *(v18 + 24)), v17 = v1327, v1033))
                {
                  v1032 = *(v18 + 40);
                  v1034 = !v1032 || v1030 > v1031 - v1032;
                  if (v1034 || (v1035 = memcmp(v1030, (v18 + 74), *(v18 + 40)), v17 = v1327, v1035))
                  {
                    v23 = 0;
                    if (v1030 < v1031)
                    {
                      continue;
                    }

                    v23 = 0;
                    v1036 = *(a7 + 128);
                    if (!*(a7 + 128))
                    {
                      continue;
                    }

                    if (v1030 <= *(a7 + 184))
                    {
                      v23 = 0;
                      if (!*(a7 + 84))
                      {
                        continue;
                      }
                    }

                    v23 = 0;
                    *(a7 + 76) = 1;
                    if (v1036 == 1)
                    {
                      continue;
                    }

                    return 4294967294;
                  }
                }

                *(v18 + 80) = &v1032[v1030];
                goto LABEL_3410;
              case 0xCB:
                if (v23)
                {
                  continue;
                }

                v1240 = (*(v18 + 80) - 1);
                do
                {
                  *(v18 + 80) = v1240;
                  v1241 = *v1240--;
                }

                while ((v1241 & 0xC0) == 0x80);
                v426 = *(v18 + 8);
                v427 = v1240 + 1;
                v37 = v13;
                goto LABEL_3268;
              case 0xCC:
                if (v23)
                {
                  continue;
                }

                v1008 = *(v18 + 56);
                v1009 = *(v18 + 60);
                *(v18 + 56) = v1008 + 1;
                if (v1008 >= v1009)
                {
                  continue;
                }

                v1010 = *(v18 + 80);
                if (v1010 >= *(a7 + 168))
                {
                  v23 = 0;
                  v1118 = *(a7 + 128);
                  if (!*(a7 + 128))
                  {
                    continue;
                  }

                  if (v1010 <= *(a7 + 184))
                  {
                    v23 = 0;
                    if (!*(a7 + 84))
                    {
                      continue;
                    }
                  }

                  v23 = 0;
                  *(a7 + 76) = 1;
                  if (v1118 == 1)
                  {
                    continue;
                  }

                  return 4294967294;
                }

                *(v18 + 80) = v1010 + 1;
                v1011 = *v1010;
                if (v1011 >= 0xC0)
                {
                  if ((v1011 & 0x20) != 0)
                  {
                    v1138 = v1010[1] & 0x3F;
                    if ((v1011 & 0x10) != 0)
                    {
                      if ((v1011 & 8) != 0)
                      {
                        v1174 = v1010[2] & 0x3F;
                        v1175 = v1010[3] & 0x3F;
                        v1176 = v1010[4] & 0x3F;
                        if ((v1011 & 4) != 0)
                        {
                          v1011 = ((v1011 & 1) << 30) | (v1138 << 24) | (v1174 << 18) | (v1175 << 12) | (v1176 << 6) | v1010[5] & 0x3F;
                          v1139 = v1010 + 6;
                        }

                        else
                        {
                          v1011 = ((v1011 & 3) << 24) | (v1138 << 18) | (v1174 << 12) | (v1175 << 6) | v1176;
                          v1139 = v1010 + 5;
                        }
                      }

                      else
                      {
                        v1011 = ((v1011 & 7) << 18) | (v1138 << 12) | ((v1010[2] & 0x3F) << 6) | v1010[3] & 0x3F;
                        v1139 = v1010 + 4;
                      }
                    }

                    else
                    {
                      v1011 = ((v1011 & 0xF) << 12) | (v1138 << 6) | v1010[2] & 0x3F;
                      v1139 = v1010 + 3;
                    }

                    *(v18 + 80) = v1139;
                  }

                  else
                  {
                    *(v18 + 80) = v1010 + 2;
                    v1011 = v1010[1] & 0x3F | ((v1011 & 0x1F) << 6);
                  }
                }

                v23 = 0;
                if (*(v18 + 64) == v1011)
                {
                  continue;
                }

                v23 = 0;
                if (*(v18 + 68) == v1011)
                {
                  continue;
                }

                v14 = 0;
                a2 = *v18;
                v1287 = -52;
                goto LABEL_3351;
              case 0xCD:
                if (v23)
                {
                  continue;
                }

                v1250 = (*(v18 + 80) - 1);
                do
                {
                  *(v18 + 80) = v1250;
                  v1251 = *v1250--;
                }

                while ((v1251 & 0xC0) == 0x80);
                v316 = *(v18 + 8);
                v317 = v1250 + 1;
                v37 = v13;
                goto LABEL_3296;
              case 0xCE:
                if (v23)
                {
                  continue;
                }

                v1069 = *(v18 + 56);
                v1070 = *(v18 + 60);
                *(v18 + 56) = v1069 + 1;
                if (v1069 >= v1070)
                {
                  continue;
                }

                v1071 = *(v18 + 80);
                if (v1071 >= *(a7 + 168))
                {
                  v23 = 0;
                  v1127 = *(a7 + 128);
                  if (!*(a7 + 128))
                  {
                    continue;
                  }

                  if (v1071 <= *(a7 + 184))
                  {
                    v23 = 0;
                    if (!*(a7 + 84))
                    {
                      continue;
                    }
                  }

                  v23 = 0;
                  *(a7 + 76) = 1;
                  if (v1127 == 1)
                  {
                    continue;
                  }

                  return 4294967294;
                }

                *(v18 + 80) = v1071 + 1;
                v1072 = *v1071;
                if (v1072 >= 0xC0)
                {
                  if ((v1072 & 0x20) != 0)
                  {
                    v1152 = v1071[1] & 0x3F;
                    if ((v1072 & 0x10) != 0)
                    {
                      if ((v1072 & 8) != 0)
                      {
                        v1195 = v1071[2] & 0x3F;
                        v1196 = v1071[3] & 0x3F;
                        v1197 = v1071[4] & 0x3F;
                        if ((v1072 & 4) != 0)
                        {
                          v1072 = ((v1072 & 1) << 30) | (v1152 << 24) | (v1195 << 18) | (v1196 << 12) | (v1197 << 6) | v1071[5] & 0x3F;
                          v1153 = v1071 + 6;
                        }

                        else
                        {
                          v1072 = ((v1072 & 3) << 24) | (v1152 << 18) | (v1195 << 12) | (v1196 << 6) | v1197;
                          v1153 = v1071 + 5;
                        }
                      }

                      else
                      {
                        v1072 = ((v1072 & 7) << 18) | (v1152 << 12) | ((v1071[2] & 0x3F) << 6) | v1071[3] & 0x3F;
                        v1153 = v1071 + 4;
                      }
                    }

                    else
                    {
                      v1072 = ((v1072 & 0xF) << 12) | (v1152 << 6) | v1071[2] & 0x3F;
                      v1153 = v1071 + 3;
                    }

                    *(v18 + 80) = v1153;
                  }

                  else
                  {
                    *(v18 + 80) = v1071 + 2;
                    v1072 = v1071[1] & 0x3F | ((v1072 & 0x1F) << 6);
                  }
                }

                v23 = 0;
                if (*(v18 + 64) == v1072)
                {
                  continue;
                }

                v14 = 0;
                a2 = *v18;
                v1287 = -50;
                goto LABEL_3351;
              case 0xCF:
                if (v23)
                {
                  continue;
                }

                v1248 = (*(v18 + 80) - 1);
                do
                {
                  *(v18 + 80) = v1248;
                  v1249 = *v1248--;
                }

                while ((v1249 & 0xC0) == 0x80);
                v301 = *(v18 + 8);
                v302 = v1248 + 1;
                v37 = v13;
                goto LABEL_3292;
              case 0xD0:
                if (v23)
                {
                  continue;
                }

                v1082 = *(v18 + 56);
                v1083 = *(v18 + 60);
                *(v18 + 56) = v1082 + 1;
                if (v1082 >= v1083)
                {
                  continue;
                }

                v1084 = *(v18 + 80);
                if (v1084 >= *(a7 + 168))
                {
                  v23 = 0;
                  v1129 = *(a7 + 128);
                  if (!*(a7 + 128))
                  {
                    continue;
                  }

                  if (v1084 <= *(a7 + 184))
                  {
                    v23 = 0;
                    if (!*(a7 + 84))
                    {
                      continue;
                    }
                  }

                  v23 = 0;
                  *(a7 + 76) = 1;
                  if (v1129 == 1)
                  {
                    continue;
                  }

                  return 4294967294;
                }

                *(v18 + 80) = v1084 + 1;
                if (v17)
                {
                  v1085 = *v1084;
                  if (v1085 >= 0xC0)
                  {
                    if ((v1085 & 0x20) != 0)
                    {
                      v1158 = 4;
                      v1159 = 5;
                      if ((v1085 & 4) != 0)
                      {
                        v1159 = 6;
                      }

                      if ((v1085 & 8) != 0)
                      {
                        v1158 = v1159;
                      }

                      if ((v1085 & 0x10) != 0)
                      {
                        v1086 = v1158;
                      }

                      else
                      {
                        v1086 = 3;
                      }
                    }

                    else
                    {
                      v1086 = 2;
                    }

                    *(v18 + 80) = &v1084[v1086];
                  }
                }

                v23 = 0;
                if (*(v18 + 64) == 15)
                {
                  continue;
                }

                v8 = a6;
                goto LABEL_3423;
              case 0xD1:
                if (v23)
                {
                  continue;
                }

                v1024 = *(v18 + 56);
                v1025 = *(v18 + 60);
                *(v18 + 56) = v1024 + 1;
                if (v1024 >= v1025)
                {
                  continue;
                }

                v1026 = *(v18 + 80);
                if (v1026 >= *(a7 + 168))
                {
                  v23 = 0;
                  v1121 = *(a7 + 128);
                  if (!*(a7 + 128))
                  {
                    continue;
                  }

                  if (v1026 <= *(a7 + 184))
                  {
                    v23 = 0;
                    if (!*(a7 + 84))
                    {
                      continue;
                    }
                  }

                  v23 = 0;
                  *(a7 + 76) = 1;
                  if (v1121 == 1)
                  {
                    continue;
                  }

                  return 4294967294;
                }

                *(v18 + 80) = v1026 + 1;
                v1027 = *v1026;
                if (v17 && v1027 >= 0xC0)
                {
                  if ((v1027 & 0x20) != 0)
                  {
                    v1144 = v1026[1] & 0x3F;
                    if ((v1027 & 0x10) != 0)
                    {
                      if ((v1027 & 8) != 0)
                      {
                        v1183 = v1026[2] & 0x3F;
                        v1184 = v1026[3] & 0x3F;
                        v1185 = v1026[4] & 0x3F;
                        if ((v1027 & 4) != 0)
                        {
                          v1027 = ((v1027 & 1) << 30) | (v1144 << 24) | (v1183 << 18) | (v1184 << 12) | (v1185 << 6) | v1026[5] & 0x3F;
                          v1145 = v1026 + 6;
                        }

                        else
                        {
                          v1027 = ((v1027 & 3) << 24) | (v1144 << 18) | (v1183 << 12) | (v1184 << 6) | v1185;
                          v1145 = v1026 + 5;
                        }
                      }

                      else
                      {
                        v1027 = ((v1027 & 7) << 18) | (v1144 << 12) | ((v1026[2] & 0x3F) << 6) | v1026[3] & 0x3F;
                        v1145 = v1026 + 4;
                      }
                    }

                    else
                    {
                      v1027 = ((v1027 & 0xF) << 12) | (v1144 << 6) | v1026[2] & 0x3F;
                      v1145 = v1026 + 3;
                    }

                    *(v18 + 80) = v1145;
                  }

                  else
                  {
                    *(v18 + 80) = v1026 + 2;
                    v1027 = v1026[1] & 0x3F | ((v1027 & 0x1F) << 6);
                  }
                }

                v1213 = BYTE1(_pcre2_ucd_records_8[3 * _pcre2_ucd_stage2_8[v1027 & 0x7F | (_pcre2_ucd_stage1_8[v1027 >> 7] << 7)]]);
                v1215 = v1213 == 5 || v1213 == 9 || v1213 == 8;
                v23 = 0;
                if (v1215 == (*(v18 + 64) == 15))
                {
                  continue;
                }

                v8 = a6;
                goto LABEL_3421;
              case 0xD2:
                if (v23)
                {
                  continue;
                }

                v1078 = *(v18 + 56);
                v1079 = *(v18 + 60);
                *(v18 + 56) = v1078 + 1;
                if (v1078 >= v1079)
                {
                  continue;
                }

                v1080 = *(v18 + 80);
                if (v1080 >= *(a7 + 168))
                {
                  v23 = 0;
                  v1128 = *(a7 + 128);
                  if (!*(a7 + 128))
                  {
                    continue;
                  }

                  if (v1080 <= *(a7 + 184))
                  {
                    v23 = 0;
                    if (!*(a7 + 84))
                    {
                      continue;
                    }
                  }

                  v23 = 0;
                  *(a7 + 76) = 1;
                  if (v1128 == 1)
                  {
                    continue;
                  }

                  return 4294967294;
                }

                *(v18 + 80) = v1080 + 1;
                v1081 = *v1080;
                if (v17 && v1081 >= 0xC0)
                {
                  if ((v1081 & 0x20) != 0)
                  {
                    v1156 = v1080[1] & 0x3F;
                    if ((v1081 & 0x10) != 0)
                    {
                      if ((v1081 & 8) != 0)
                      {
                        v1201 = v1080[2] & 0x3F;
                        v1202 = v1080[3] & 0x3F;
                        v1203 = v1080[4] & 0x3F;
                        if ((v1081 & 4) != 0)
                        {
                          v1081 = ((v1081 & 1) << 30) | (v1156 << 24) | (v1201 << 18) | (v1202 << 12) | (v1203 << 6) | v1080[5] & 0x3F;
                          v1157 = v1080 + 6;
                        }

                        else
                        {
                          v1081 = ((v1081 & 3) << 24) | (v1156 << 18) | (v1201 << 12) | (v1202 << 6) | v1203;
                          v1157 = v1080 + 5;
                        }
                      }

                      else
                      {
                        v1081 = ((v1081 & 7) << 18) | (v1156 << 12) | ((v1080[2] & 0x3F) << 6) | v1080[3] & 0x3F;
                        v1157 = v1080 + 4;
                      }
                    }

                    else
                    {
                      v1081 = ((v1081 & 0xF) << 12) | (v1156 << 6) | v1080[2] & 0x3F;
                      v1157 = v1080 + 3;
                    }

                    *(v18 + 80) = v1157;
                  }

                  else
                  {
                    *(v18 + 80) = v1080 + 2;
                    v1081 = v1080[1] & 0x3F | ((v1081 & 0x1F) << 6);
                  }
                }

                v23 = 0;
                if ((_pcre2_ucp_gentype_8[BYTE1(_pcre2_ucd_records_8[3 * _pcre2_ucd_stage2_8[v1081 & 0x7F | (_pcre2_ucd_stage1_8[v1081 >> 7] << 7)]])] == *(v18 + 68)) != (*(v18 + 64) != 15))
                {
                  continue;
                }

                goto LABEL_3387;
              case 0xD3:
                if (v23)
                {
                  continue;
                }

                v1004 = *(v18 + 56);
                v1005 = *(v18 + 60);
                *(v18 + 56) = v1004 + 1;
                if (v1004 >= v1005)
                {
                  continue;
                }

                v1006 = *(v18 + 80);
                if (v1006 >= *(a7 + 168))
                {
                  v23 = 0;
                  v1117 = *(a7 + 128);
                  if (!*(a7 + 128))
                  {
                    continue;
                  }

                  if (v1006 <= *(a7 + 184))
                  {
                    v23 = 0;
                    if (!*(a7 + 84))
                    {
                      continue;
                    }
                  }

                  v23 = 0;
                  *(a7 + 76) = 1;
                  if (v1117 == 1)
                  {
                    continue;
                  }

                  return 4294967294;
                }

                *(v18 + 80) = v1006 + 1;
                v1007 = *v1006;
                if (v17 && v1007 >= 0xC0)
                {
                  if ((v1007 & 0x20) != 0)
                  {
                    v1136 = v1006[1] & 0x3F;
                    if ((v1007 & 0x10) != 0)
                    {
                      if ((v1007 & 8) != 0)
                      {
                        v1171 = v1006[2] & 0x3F;
                        v1172 = v1006[3] & 0x3F;
                        v1173 = v1006[4] & 0x3F;
                        if ((v1007 & 4) != 0)
                        {
                          v1007 = ((v1007 & 1) << 30) | (v1136 << 24) | (v1171 << 18) | (v1172 << 12) | (v1173 << 6) | v1006[5] & 0x3F;
                          v1137 = v1006 + 6;
                        }

                        else
                        {
                          v1007 = ((v1007 & 3) << 24) | (v1136 << 18) | (v1171 << 12) | (v1172 << 6) | v1173;
                          v1137 = v1006 + 5;
                        }
                      }

                      else
                      {
                        v1007 = ((v1007 & 7) << 18) | (v1136 << 12) | ((v1006[2] & 0x3F) << 6) | v1006[3] & 0x3F;
                        v1137 = v1006 + 4;
                      }
                    }

                    else
                    {
                      v1007 = ((v1007 & 0xF) << 12) | (v1136 << 6) | v1006[2] & 0x3F;
                      v1137 = v1006 + 3;
                    }

                    *(v18 + 80) = v1137;
                  }

                  else
                  {
                    *(v18 + 80) = v1006 + 2;
                    v1007 = v1006[1] & 0x3F | ((v1007 & 0x1F) << 6);
                  }
                }

                v23 = 0;
                if ((*(v18 + 68) == BYTE1(_pcre2_ucd_records_8[3 * _pcre2_ucd_stage2_8[v1007 & 0x7F | (_pcre2_ucd_stage1_8[v1007 >> 7] << 7)]])) != (*(v18 + 64) != 15))
                {
                  continue;
                }

                v8 = a6;
                goto LABEL_3416;
              case 0xD4:
                if (v23)
                {
                  continue;
                }

                v1016 = *(v18 + 56);
                v1017 = *(v18 + 60);
                *(v18 + 56) = v1016 + 1;
                if (v1016 >= v1017)
                {
                  continue;
                }

                v1018 = *(v18 + 80);
                if (v1018 >= *(a7 + 168))
                {
                  v23 = 0;
                  v1119 = *(a7 + 128);
                  if (!*(a7 + 128))
                  {
                    continue;
                  }

                  if (v1018 <= *(a7 + 184))
                  {
                    v23 = 0;
                    if (!*(a7 + 84))
                    {
                      continue;
                    }
                  }

                  v23 = 0;
                  *(a7 + 76) = 1;
                  if (v1119 == 1)
                  {
                    continue;
                  }

                  return 4294967294;
                }

                *(v18 + 80) = v1018 + 1;
                v1019 = *v1018;
                if (v17 && v1019 >= 0xC0)
                {
                  if ((v1019 & 0x20) != 0)
                  {
                    v1140 = v1018[1] & 0x3F;
                    if ((v1019 & 0x10) != 0)
                    {
                      if ((v1019 & 8) != 0)
                      {
                        v1177 = v1018[2] & 0x3F;
                        v1178 = v1018[3] & 0x3F;
                        v1179 = v1018[4] & 0x3F;
                        if ((v1019 & 4) != 0)
                        {
                          v1019 = ((v1019 & 1) << 30) | (v1140 << 24) | (v1177 << 18) | (v1178 << 12) | (v1179 << 6) | v1018[5] & 0x3F;
                          v1141 = v1018 + 6;
                        }

                        else
                        {
                          v1019 = ((v1019 & 3) << 24) | (v1140 << 18) | (v1177 << 12) | (v1178 << 6) | v1179;
                          v1141 = v1018 + 5;
                        }
                      }

                      else
                      {
                        v1019 = ((v1019 & 7) << 18) | (v1140 << 12) | ((v1018[2] & 0x3F) << 6) | v1018[3] & 0x3F;
                        v1141 = v1018 + 4;
                      }
                    }

                    else
                    {
                      v1019 = ((v1019 & 0xF) << 12) | (v1140 << 6) | v1018[2] & 0x3F;
                      v1141 = v1018 + 3;
                    }

                    *(v18 + 80) = v1141;
                  }

                  else
                  {
                    *(v18 + 80) = v1018 + 2;
                    v1019 = v1018[1] & 0x3F | ((v1019 & 0x1F) << 6);
                  }
                }

                v23 = 0;
                if ((*(v18 + 68) == LOBYTE(_pcre2_ucd_records_8[3 * _pcre2_ucd_stage2_8[v1019 & 0x7F | (_pcre2_ucd_stage1_8[v1019 >> 7] << 7)]])) != (*(v18 + 64) != 15))
                {
                  continue;
                }

                v8 = a6;
                goto LABEL_3417;
              case 0xD5:
                if (v23)
                {
                  continue;
                }

                v1051 = *(v18 + 56);
                v1052 = *(v18 + 60);
                *(v18 + 56) = v1051 + 1;
                if (v1051 >= v1052)
                {
                  continue;
                }

                v1053 = *(v18 + 80);
                if (v1053 >= *(a7 + 168))
                {
                  v23 = 0;
                  v1125 = *(a7 + 128);
                  if (!*(a7 + 128))
                  {
                    continue;
                  }

                  if (v1053 <= *(a7 + 184))
                  {
                    v23 = 0;
                    if (!*(a7 + 84))
                    {
                      continue;
                    }
                  }

                  v23 = 0;
                  *(a7 + 76) = 1;
                  if (v1125 == 1)
                  {
                    continue;
                  }

                  return 4294967294;
                }

                *(v18 + 80) = v1053 + 1;
                v1054 = *v1053;
                if (v17 && v1054 >= 0xC0)
                {
                  if ((v1054 & 0x20) != 0)
                  {
                    v1154 = v1053[1] & 0x3F;
                    if ((v1054 & 0x10) != 0)
                    {
                      if ((v1054 & 8) != 0)
                      {
                        v1198 = v1053[2] & 0x3F;
                        v1199 = v1053[3] & 0x3F;
                        v1200 = v1053[4] & 0x3F;
                        if ((v1054 & 4) != 0)
                        {
                          v1054 = ((v1054 & 1) << 30) | (v1154 << 24) | (v1198 << 18) | (v1199 << 12) | (v1200 << 6) | v1053[5] & 0x3F;
                          v1155 = v1053 + 6;
                        }

                        else
                        {
                          v1054 = ((v1054 & 3) << 24) | (v1154 << 18) | (v1198 << 12) | (v1199 << 6) | v1200;
                          v1155 = v1053 + 5;
                        }
                      }

                      else
                      {
                        v1054 = ((v1054 & 7) << 18) | (v1154 << 12) | ((v1053[2] & 0x3F) << 6) | v1053[3] & 0x3F;
                        v1155 = v1053 + 4;
                      }
                    }

                    else
                    {
                      v1054 = ((v1054 & 0xF) << 12) | (v1154 << 6) | v1053[2] & 0x3F;
                      v1155 = v1053 + 3;
                    }

                    *(v18 + 80) = v1155;
                  }

                  else
                  {
                    *(v18 + 80) = v1053 + 2;
                    v1054 = v1053[1] & 0x3F | ((v1054 & 0x1F) << 6);
                  }
                }

                v23 = 0;
                if (((_pcre2_ucp_gentype_8[BYTE1(_pcre2_ucd_records_8[3 * _pcre2_ucd_stage2_8[v1054 & 0x7F | (_pcre2_ucd_stage1_8[v1054 >> 7] << 7)]])] & 0xFFFFFFFD) == 1) != (*(v18 + 64) != 15))
                {
                  continue;
                }

                goto LABEL_3480;
              case 0xD6:
                if (v23)
                {
                  continue;
                }

                v998 = *(v18 + 56);
                v999 = *(v18 + 60);
                *(v18 + 56) = v998 + 1;
                if (v998 >= v999)
                {
                  continue;
                }

                v1000 = *(v18 + 80);
                if (v1000 >= *(a7 + 168))
                {
                  v23 = 0;
                  v1116 = *(a7 + 128);
                  if (!*(a7 + 128))
                  {
                    continue;
                  }

                  if (v1000 <= *(a7 + 184))
                  {
                    v23 = 0;
                    if (!*(a7 + 84))
                    {
                      continue;
                    }
                  }

                  v23 = 0;
                  *(a7 + 76) = 1;
                  if (v1116 == 1)
                  {
                    continue;
                  }

                  return 4294967294;
                }

                *(v18 + 80) = v1000 + 1;
                v1001 = *v1000;
                if (v17 && v1001 >= 0xC0)
                {
                  if ((v1001 & 0x20) != 0)
                  {
                    v1134 = v1000[1] & 0x3F;
                    if ((v1001 & 0x10) != 0)
                    {
                      if ((v1001 & 8) != 0)
                      {
                        v1168 = v1000[2] & 0x3F;
                        v1169 = v1000[3] & 0x3F;
                        v1170 = v1000[4] & 0x3F;
                        if ((v1001 & 4) != 0)
                        {
                          v1001 = ((v1001 & 1) << 30) | (v1134 << 24) | (v1168 << 18) | (v1169 << 12) | (v1170 << 6) | v1000[5] & 0x3F;
                          v1135 = v1000 + 6;
                        }

                        else
                        {
                          v1001 = ((v1001 & 3) << 24) | (v1134 << 18) | (v1168 << 12) | (v1169 << 6) | v1170;
                          v1135 = v1000 + 5;
                        }
                      }

                      else
                      {
                        v1001 = ((v1001 & 7) << 18) | (v1134 << 12) | ((v1000[2] & 0x3F) << 6) | v1000[3] & 0x3F;
                        v1135 = v1000 + 4;
                      }
                    }

                    else
                    {
                      v1001 = ((v1001 & 0xF) << 12) | (v1134 << 6) | v1000[2] & 0x3F;
                      v1135 = v1000 + 3;
                    }

                    *(v18 + 80) = v1135;
                  }

                  else
                  {
                    *(v18 + 80) = v1000 + 2;
                    v1001 = v1000[1] & 0x3F | ((v1001 & 0x1F) << 6);
                  }
                }

                if (v1001 >= 0x2000)
                {
                  if ((v1001 - 0x2000) >= 0xB)
                  {
                    v1209 = (v1001 - 8232) > 0x37 || ((1 << (v1001 - 40)) & 0x80000000000083) == 0;
                    if (v1209 && v1001 != 12288)
                    {
                      goto LABEL_3067;
                    }
                  }

LABEL_3074:
                  v23 = 0;
                  if (*(v18 + 64) == 15)
                  {
                    continue;
                  }

                  goto LABEL_3415;
                }

                if (v1001 > 132)
                {
                  if (v1001 <= 5759)
                  {
                    if (v1001 != 133 && v1001 != 160)
                    {
                      goto LABEL_3067;
                    }

                    goto LABEL_3074;
                  }

                  if (v1001 == 5760 || v1001 == 6158)
                  {
                    goto LABEL_3074;
                  }
                }

                else if (v1001 <= 0x20 && ((1 << v1001) & 0x100003E00) != 0)
                {
                  goto LABEL_3074;
                }

LABEL_3067:
                v23 = 0;
                if ((_pcre2_ucp_gentype_8[BYTE1(_pcre2_ucd_records_8[3 * _pcre2_ucd_stage2_8[v1001 & 0x7F | (_pcre2_ucd_stage1_8[v1001 >> 7] << 7)]])] == 6) != (*(v18 + 64) != 15))
                {
                  continue;
                }

LABEL_3415:
                v8 = a6;
                goto LABEL_3437;
              case 0xD7:
                if (v23)
                {
                  continue;
                }

                v1037 = *(v18 + 56);
                v1038 = *(v18 + 60);
                *(v18 + 56) = v1037 + 1;
                if (v1037 >= v1038)
                {
                  continue;
                }

                v1039 = *(v18 + 80);
                if (v1039 >= *(a7 + 168))
                {
                  v23 = 0;
                  v1122 = *(a7 + 128);
                  if (!*(a7 + 128))
                  {
                    continue;
                  }

                  if (v1039 <= *(a7 + 184))
                  {
                    v23 = 0;
                    if (!*(a7 + 84))
                    {
                      continue;
                    }
                  }

                  v23 = 0;
                  *(a7 + 76) = 1;
                  if (v1122 == 1)
                  {
                    continue;
                  }

                  return 4294967294;
                }

                *(v18 + 80) = v1039 + 1;
                v1040 = *v1039;
                if (v17 && v1040 >= 0xC0)
                {
                  if ((v1040 & 0x20) != 0)
                  {
                    v1146 = v1039[1] & 0x3F;
                    if ((v1040 & 0x10) != 0)
                    {
                      if ((v1040 & 8) != 0)
                      {
                        v1186 = v1039[2] & 0x3F;
                        v1187 = v1039[3] & 0x3F;
                        v1188 = v1039[4] & 0x3F;
                        if ((v1040 & 4) != 0)
                        {
                          v1040 = ((v1040 & 1) << 30) | (v1146 << 24) | (v1186 << 18) | (v1187 << 12) | (v1188 << 6) | v1039[5] & 0x3F;
                          v1147 = v1039 + 6;
                        }

                        else
                        {
                          v1040 = ((v1040 & 3) << 24) | (v1146 << 18) | (v1186 << 12) | (v1187 << 6) | v1188;
                          v1147 = v1039 + 5;
                        }
                      }

                      else
                      {
                        v1040 = ((v1040 & 7) << 18) | (v1146 << 12) | ((v1039[2] & 0x3F) << 6) | v1039[3] & 0x3F;
                        v1147 = v1039 + 4;
                      }
                    }

                    else
                    {
                      v1040 = ((v1040 & 0xF) << 12) | (v1146 << 6) | v1039[2] & 0x3F;
                      v1147 = v1039 + 3;
                    }

                    *(v18 + 80) = v1147;
                  }

                  else
                  {
                    *(v18 + 80) = v1039 + 2;
                    v1040 = v1039[1] & 0x3F | ((v1040 & 0x1F) << 6);
                  }
                }

                v23 = 0;
                v1217 = v1040 == 95 || (_pcre2_ucp_gentype_8[BYTE1(_pcre2_ucd_records_8[3 * _pcre2_ucd_stage2_8[v1040 & 0x7F | (_pcre2_ucd_stage1_8[v1040 >> 7] << 7)]])] & 0xFFFFFFFD) == 1;
                if (((*(v18 + 64) != 15) ^ v1217))
                {
                  continue;
                }

                goto LABEL_3496;
              case 0xD8:
                if (v23)
                {
                  continue;
                }

                v994 = *(v18 + 56);
                v995 = *(v18 + 60);
                *(v18 + 56) = v994 + 1;
                if (v994 >= v995)
                {
                  continue;
                }

                v996 = *(v18 + 80);
                if (v996 >= *(a7 + 168))
                {
                  v23 = 0;
                  v1115 = *(a7 + 128);
                  if (!*(a7 + 128))
                  {
                    continue;
                  }

                  if (v996 <= *(a7 + 184))
                  {
                    v23 = 0;
                    if (!*(a7 + 84))
                    {
                      continue;
                    }
                  }

                  v23 = 0;
                  *(a7 + 76) = 1;
                  if (v1115 == 1)
                  {
                    continue;
                  }

                  return 4294967294;
                }

                *(v18 + 80) = v996 + 1;
                v997 = *v996;
                if (v17 && v997 >= 0xC0)
                {
                  if ((v997 & 0x20) != 0)
                  {
                    v1132 = v996[1] & 0x3F;
                    if ((v997 & 0x10) != 0)
                    {
                      if ((v997 & 8) != 0)
                      {
                        v1165 = v996[2] & 0x3F;
                        v1166 = v996[3] & 0x3F;
                        v1167 = v996[4] & 0x3F;
                        if ((v997 & 4) != 0)
                        {
                          v997 = ((v997 & 1) << 30) | (v1132 << 24) | (v1165 << 18) | (v1166 << 12) | (v1167 << 6) | v996[5] & 0x3F;
                          v1133 = v996 + 6;
                        }

                        else
                        {
                          v997 = ((v997 & 3) << 24) | (v1132 << 18) | (v1165 << 12) | (v1166 << 6) | v1167;
                          v1133 = v996 + 5;
                        }
                      }

                      else
                      {
                        v997 = ((v997 & 7) << 18) | (v1132 << 12) | ((v996[2] & 0x3F) << 6) | v996[3] & 0x3F;
                        v1133 = v996 + 4;
                      }
                    }

                    else
                    {
                      v997 = ((v997 & 0xF) << 12) | (v1132 << 6) | v996[2] & 0x3F;
                      v1133 = v996 + 3;
                    }

                    *(v18 + 80) = v1133;
                  }

                  else
                  {
                    *(v18 + 80) = v996 + 2;
                    v997 = v996[1] & 0x3F | ((v997 & 0x1F) << 6);
                  }
                }

                v1207 = (&_pcre2_ucd_caseless_sets_8 + 4 * *(v18 + 68));
                do
                {
                  v1208 = *v1207;
                  if (v997 < *v1207)
                  {
                    v23 = 0;
                    if (*(v18 + 64) != 15)
                    {
                      goto LABEL_2516;
                    }

LABEL_3419:
                    v8 = a6;
                    goto LABEL_3420;
                  }

                  ++v1207;
                }

                while (v997 != v1208);
                v23 = 0;
                if (*(v18 + 64) != 15)
                {
                  goto LABEL_3419;
                }

                continue;
              case 0xD9:
                if (v23)
                {
                  continue;
                }

                v1045 = *(v18 + 56);
                v1046 = *(v18 + 60);
                *(v18 + 56) = v1045 + 1;
                if (v1045 >= v1046)
                {
                  continue;
                }

                v1047 = *(v18 + 80);
                if (v1047 < *(a7 + 168))
                {
                  *(v18 + 80) = v1047 + 1;
                  v1048 = *v1047;
                  if (v17 && v1048 >= 0xC0)
                  {
                    if ((v1048 & 0x20) != 0)
                    {
                      v1150 = v1047[1] & 0x3F;
                      if ((v1048 & 0x10) != 0)
                      {
                        if ((v1048 & 8) != 0)
                        {
                          v1192 = v1047[2] & 0x3F;
                          v1193 = v1047[3] & 0x3F;
                          v1194 = v1047[4] & 0x3F;
                          if ((v1048 & 4) != 0)
                          {
                            v1048 = ((v1048 & 1) << 30) | (v1150 << 24) | (v1192 << 18) | (v1193 << 12) | (v1194 << 6) | v1047[5] & 0x3F;
                            v1151 = v1047 + 6;
                          }

                          else
                          {
                            v1048 = ((v1048 & 3) << 24) | (v1150 << 18) | (v1192 << 12) | (v1193 << 6) | v1194;
                            v1151 = v1047 + 5;
                          }
                        }

                        else
                        {
                          v1048 = ((v1048 & 7) << 18) | (v1150 << 12) | ((v1047[2] & 0x3F) << 6) | v1047[3] & 0x3F;
                          v1151 = v1047 + 4;
                        }
                      }

                      else
                      {
                        v1048 = ((v1048 & 0xF) << 12) | (v1150 << 6) | v1047[2] & 0x3F;
                        v1151 = v1047 + 3;
                      }

                      *(v18 + 80) = v1151;
                    }

                    else
                    {
                      *(v18 + 80) = v1047 + 2;
                      v1048 = v1047[1] & 0x3F | ((v1048 & 0x1F) << 6);
                    }
                  }

                  if (v1048 - 36 > 0x3C || ((1 << (v1048 - 36)) & 0x1000000010000001) == 0)
                  {
                    v1220 = (v1048 - 160) >> 5;
                    v1219 = v1048 >> 13 > 6;
                    if (v1220 < 0x6BB)
                    {
                      v1219 = 1;
                    }
                  }

                  else
                  {
                    v1219 = 1;
                  }

                  v23 = 0;
                  if (v1219 == (*(v18 + 64) == 15))
                  {
                    continue;
                  }

                  goto LABEL_3485;
                }

                v23 = 0;
                v1124 = *(a7 + 128);
                if (!*(a7 + 128))
                {
                  continue;
                }

                if (v1047 <= *(a7 + 184))
                {
                  v23 = 0;
                  if (!*(a7 + 84))
                  {
                    continue;
                  }
                }

                v23 = 0;
                *(a7 + 76) = 1;
                if (v1124 == 1)
                {
                  continue;
                }

                return 4294967294;
              case 0xDA:
                if (v23)
                {
                  continue;
                }

                v1073 = *(v18 + 56);
                v1074 = *(v18 + 60);
                *(v18 + 56) = v1073 + 1;
                if (v1073 >= v1074)
                {
                  continue;
                }

                v1075 = *(v18 + 80);
                v1076 = *(a7 + 168);
                if (v1075 < v1076)
                {
                  v1283 = v1075 + 1;
                  *(v18 + 80) = v1075 + 1;
                  v1284 = *v1075;
                  if (v17)
                  {
                    v8 = a6;
                    if (v1284 >= 0xC0)
                    {
                      if ((v1284 & 0x20) != 0)
                      {
                        v1297 = *v1283 & 0x3F;
                        if ((v1284 & 0x10) != 0)
                        {
                          if ((v1284 & 8) != 0)
                          {
                            v1301 = v1075[2] & 0x3F;
                            v1302 = v1075[3] & 0x3F;
                            v1303 = v1075[4] & 0x3F;
                            if ((v1284 & 4) != 0)
                            {
                              v1284 = ((v1284 & 1) << 30) | (v1297 << 24) | (v1301 << 18) | (v1302 << 12) | (v1303 << 6) | v1075[5] & 0x3F;
                              v1283 = v1075 + 6;
                            }

                            else
                            {
                              v1284 = ((v1284 & 3) << 24) | (v1297 << 18) | (v1301 << 12) | (v1302 << 6) | v1303;
                              v1283 = v1075 + 5;
                            }
                          }

                          else
                          {
                            v1284 = ((v1284 & 7) << 18) | (v1297 << 12) | ((v1075[2] & 0x3F) << 6) | v1075[3] & 0x3F;
                            v1283 = v1075 + 4;
                          }
                        }

                        else
                        {
                          v1284 = ((v1284 & 0xF) << 12) | (v1297 << 6) | v1075[2] & 0x3F;
                          v1283 = v1075 + 3;
                        }

                        *(v18 + 80) = v1283;
                      }

                      else
                      {
                        v1283 = v1075 + 2;
                        *(v18 + 80) = v1075 + 2;
                        v1284 = v1075[1] & 0x3F | ((v1284 & 0x1F) << 6);
                      }
                    }
                  }

                  else
                  {
                    v8 = a6;
                  }

                  v1305 = _pcre2_extuni_8(v1284, v1283, *(a7 + 152), v1076, v1326, 0);
                  *(v18 + 80) = v1305;
                  if (v1305 >= *(a7 + 168))
                  {
                    v1306 = *(a7 + 128);
                    if (*(a7 + 128))
                    {
                      if (v1305 > *(a7 + 184) || *(a7 + 84))
                      {
                        *(a7 + 76) = 1;
                        if (v1306 != 1)
                        {
                          return 4294967294;
                        }
                      }
                    }
                  }

LABEL_3522:
                  v14 = 0;
                  a2 = *v18;
                  v1287 = -38;
                  goto LABEL_3352;
                }

                v23 = 0;
                v1077 = *(a7 + 128);
                if (!*(a7 + 128))
                {
                  continue;
                }

                if (v1075 <= *(a7 + 184))
                {
                  v23 = 0;
                  if (!*(a7 + 84))
                  {
                    continue;
                  }
                }

                v23 = 0;
                *(a7 + 76) = 1;
                if (v1077 == 1)
                {
                  continue;
                }

                return 4294967294;
              case 0xDB:
                if (v23)
                {
                  continue;
                }

                v1093 = *(v18 + 56);
                v1094 = *(v18 + 60);
                *(v18 + 56) = v1093 + 1;
                if (v1093 >= v1094)
                {
                  continue;
                }

                v1095 = *(v18 + 80);
                v1096 = *(a7 + 168);
                if (v1095 < v1096)
                {
                  if (*(v18 + 64) == 12)
                  {
                    v1097 = *(a7 + 252);
                    if (v1097)
                    {
                      v1098 = _pcre2_is_newline_8(*(v18 + 80), v1097, v1096, v1321, v1326);
                      v17 = v1327;
                      v1099 = v1098;
                      v23 = 0;
                      if (v1099)
                      {
                        continue;
                      }

                      v1095 = *(v18 + 80);
                    }

                    else
                    {
                      v1161 = *v1321;
                      if (v1095 <= v1096 - v1161 && *v1095 == *(a7 + 260))
                      {
                        v23 = 0;
                        if (v1161 == 1)
                        {
                          continue;
                        }

                        v23 = 0;
                        if (v1095[1] == *(a7 + 261))
                        {
                          continue;
                        }
                      }
                    }
                  }

                  v1162 = v1095 + 1;
                  *(v18 + 80) = v1095 + 1;
                  v1163 = *v1095;
                  if (v1163 >= 0xC0)
                  {
                    if ((v1163 & 0x20) != 0)
                    {
                      v1164 = *v1162 & 0x3F;
                      if ((v1163 & 0x10) != 0)
                      {
                        if ((v1163 & 8) != 0)
                        {
                          v1204 = v1095[2] & 0x3F;
                          v1205 = v1095[3] & 0x3F;
                          v1206 = v1095[4] & 0x3F;
                          if ((v1163 & 4) != 0)
                          {
                            v1163 = ((v1163 & 1) << 30) | (v1164 << 24) | (v1204 << 18) | (v1205 << 12) | (v1206 << 6) | v1095[5] & 0x3F;
                            v1162 = v1095 + 6;
                          }

                          else
                          {
                            v1163 = ((v1163 & 3) << 24) | (v1164 << 18) | (v1204 << 12) | (v1205 << 6) | v1206;
                            v1162 = v1095 + 5;
                          }
                        }

                        else
                        {
                          v1163 = ((v1163 & 7) << 18) | (v1164 << 12) | ((v1095[2] & 0x3F) << 6) | v1095[3] & 0x3F;
                          v1162 = v1095 + 4;
                        }
                      }

                      else
                      {
                        v1163 = ((v1163 & 0xF) << 12) | (v1164 << 6) | v1095[2] & 0x3F;
                        v1162 = v1095 + 3;
                      }

                      *(v18 + 80) = v1162;
                    }

                    else
                    {
                      v1162 = v1095 + 2;
                      *(v18 + 80) = v1095 + 2;
                      v1163 = v1095[1] & 0x3F | ((v1163 & 0x1F) << 6);
                    }
                  }

                  v22 = 4294967252;
                  switch(*(v18 + 64))
                  {
                    case 6:
                      if (v1163 > 0xFF)
                      {
                        goto LABEL_3477;
                      }

                      v23 = 0;
                      if ((*(*(a7 + 104) + v1163) & 8) == 0)
                      {
                        goto LABEL_3477;
                      }

                      continue;
                    case 7:
                      v23 = 0;
                      if (v1163 <= 0xFF)
                      {
                        v23 = 0;
                        if ((*(*(a7 + 104) + v1163) & 8) != 0)
                        {
                          goto LABEL_3477;
                        }
                      }

                      continue;
                    case 8:
                      if (v1163 > 0xFF)
                      {
                        goto LABEL_3477;
                      }

                      v23 = 0;
                      if ((*(*(a7 + 104) + v1163) & 1) == 0)
                      {
                        goto LABEL_3477;
                      }

                      continue;
                    case 9:
                      v23 = 0;
                      if (v1163 <= 0xFF)
                      {
                        v23 = 0;
                        if (*(*(a7 + 104) + v1163))
                        {
                          goto LABEL_3477;
                        }
                      }

                      continue;
                    case 0xA:
                      if (v1163 > 0xFF)
                      {
                        goto LABEL_3477;
                      }

                      v23 = 0;
                      if ((*(*(a7 + 104) + v1163) & 0x10) == 0)
                      {
                        goto LABEL_3477;
                      }

                      continue;
                    case 0xB:
                      v23 = 0;
                      if (v1163 <= 0xFF)
                      {
                        v23 = 0;
                        if ((*(*(a7 + 104) + v1163) & 0x10) != 0)
                        {
                          goto LABEL_3477;
                        }
                      }

                      continue;
                    case 0xC:
                      v1304 = *(a7 + 128);
                      if (*(a7 + 128))
                      {
                        if (v1162 >= *(a7 + 168) && !*(a7 + 252) && *v1321 == 2 && v1163 == *(a7 + 260))
                        {
                          *(a7 + 76) = 1;
                          if (v1304 != 1)
                          {
                            return 4294967294;
                          }
                        }
                      }

                      goto LABEL_3477;
                    case 0xD:
                    case 0xE:
                      goto LABEL_3477;
                    case 0x11:
                      v23 = 0;
                      if (v1163 <= 132)
                      {
                        if ((v1163 - 11) >= 2)
                        {
                          if (v1163 != 10)
                          {
                            if (v1163 != 13)
                            {
                              continue;
                            }

                            if (v1162 < *(a7 + 168) && *v1162 == 10)
                            {
                              *(v18 + 80) = v1162 + 1;
                            }
                          }

                          goto LABEL_3477;
                        }
                      }

                      else if ((v1163 - 8232) >= 2 && v1163 != 133)
                      {
                        continue;
                      }

                      v23 = 0;
                      if (*(a7 + 130) == 2)
                      {
                        continue;
                      }

                      goto LABEL_3477;
                    case 0x12:
                      v23 = 0;
                      if (v1163 < 0x2000)
                      {
                        if (v1163 <= 159)
                        {
                          if (v1163 == 9 || v1163 == 32)
                          {
                            continue;
                          }
                        }

                        else if (v1163 == 160 || v1163 == 5760 || v1163 == 6158)
                        {
                          continue;
                        }
                      }

                      else if (v1163 > 8238)
                      {
                        v1228 = v1163 == 8239 || v1163 == 8287;
                        if (v1228 || v1163 == 12288)
                        {
                          continue;
                        }
                      }

                      else if ((v1163 - 0x2000) < 0xB)
                      {
                        continue;
                      }

                      goto LABEL_3477;
                    case 0x13:
                      v23 = 0;
                      if (v1163 < 0x2000)
                      {
                        if (v1163 <= 159)
                        {
                          if (v1163 != 9 && v1163 != 32)
                          {
                            continue;
                          }
                        }

                        else if (v1163 != 160 && v1163 != 5760 && v1163 != 6158)
                        {
                          continue;
                        }
                      }

                      else if (v1163 > 8238)
                      {
                        v1227 = v1163 == 8239 || v1163 == 8287;
                        if (!v1227 && v1163 != 12288)
                        {
                          continue;
                        }
                      }

                      else if ((v1163 - 0x2000) >= 0xB)
                      {
                        continue;
                      }

                      goto LABEL_3477;
                    case 0x14:
                      v23 = 0;
                      v1221 = (v1163 - 10) >= 4 && (v1163 - 8232) >= 2;
                      if (v1221 && v1163 != 133)
                      {
                        goto LABEL_3477;
                      }

                      continue;
                    case 0x15:
                      if ((v1163 - 10) < 4 || (v1163 - 8232) < 2)
                      {
                        goto LABEL_3477;
                      }

                      v23 = 0;
                      if (v1163 == 133)
                      {
                        goto LABEL_3477;
                      }

                      continue;
                    default:
                      return v22;
                  }
                }

                v23 = 0;
                v1130 = *(a7 + 128);
                if (!*(a7 + 128))
                {
                  continue;
                }

                if (v1095 <= *(a7 + 184))
                {
                  v23 = 0;
                  if (!*(a7 + 84))
                  {
                    continue;
                  }
                }

                v23 = 0;
                *(a7 + 76) = 1;
                if (v1130 == 1)
                {
                  continue;
                }

                return 4294967294;
              case 0xDC:
                if (v23)
                {
                  continue;
                }

                v1231 = *(v18 + 80);
                v224 = v1231 - 1;
                *(v18 + 80) = v1231 - 1;
                v1232 = *(v1231 - 1);
                if (!v17)
                {
                  goto LABEL_3327;
                }

                if ((v1232 & 0xC0) == 0x80)
                {
                  v1233 = v1231 - 2;
                  do
                  {
                    *(v18 + 80) = v1233;
                    v1234 = *v1233--;
                    v1232 = v1234;
                  }

                  while ((v1234 & 0xC0) == 0x80);
                  v224 = v1233 + 1;
                }

                if (v1232 < 0xC0)
                {
                  goto LABEL_3327;
                }

                v1235 = v224[1] & 0x3F;
                if ((v1232 & 0x20) == 0)
                {
                  v1232 = v224[1] & 0x3F | ((v1232 & 0x1F) << 6);
                  goto LABEL_3327;
                }

                if ((v1232 & 0x10) != 0)
                {
                  if ((v1232 & 8) != 0)
                  {
                    v1255 = v224[2] & 0x3F;
                    v1256 = v224[3] & 0x3F;
                    v1257 = v224[4] & 0x3F;
                    if ((v1232 & 4) == 0)
                    {
                      v1232 = ((v1232 & 3) << 24) | (v1235 << 18) | (v1255 << 12) | (v1256 << 6) | v1257;
                      goto LABEL_3327;
                    }

                    v1253 = ((v1232 & 1) << 30) | (v1235 << 24) | (v1255 << 18) | (v1256 << 12) | (v1257 << 6);
                    v1254 = v224[5];
                  }

                  else
                  {
                    v1253 = ((v1232 & 7) << 18) | (v1235 << 12) | ((v224[2] & 0x3F) << 6);
                    v1254 = v224[3];
                  }
                }

                else
                {
                  v1253 = ((v1232 & 0xF) << 12) | (v1235 << 6);
                  v1254 = v224[2];
                }

                v1232 = v1253 & 0xFFFFFFC0 | v1254 & 0x3F;
LABEL_3327:
                v641 = *(v18 + 8);
                if (v224 <= v641)
                {
                  goto LABEL_3346;
                }

                v1258 = BYTE2(_pcre2_ucd_records_8[3 * _pcre2_ucd_stage2_8[v1232 & 0x7F | (_pcre2_ucd_stage1_8[v1232 >> 7] << 7)]]);
                v1259 = v224;
                break;
              case 0xDD:
                if (v23)
                {
                  continue;
                }

                v979 = (*(v18 + 80) - 1);
                do
                {
                  *(v18 + 80) = v979;
                  v1243 = *v979--;
                  v1242 = v1243;
                }

                while ((v1243 & 0xC0) == 0x80);
                if (*(v18 + 64) == 17 && (v1242 == 10 ? (v1244 = (v979 + 1) > *(v18 + 8)) : (v1244 = 0), v1244 && *v979 == 13))
                {
                  *(v18 + 80) = v979;
                }

                else
                {
                  ++v979;
                }

                goto LABEL_3303;
              case 0xDE:
                if (v23)
                {
                  continue;
                }

                v1245 = *(v18 + 80);
                v613 = v1245 - 1;
                *(v18 + 80) = v1245 - 1;
                if (v17 && (*v613 & 0xC0) == 0x80)
                {
                  v1246 = v1245 - 2;
                  do
                  {
                    *(v18 + 80) = v1246;
                    v1247 = *v1246--;
                  }

                  while ((v1247 & 0xC0) == 0x80);
                  v613 = v1246 + 1;
                }

                goto LABEL_1394;
              default:
                if (v988 == 100)
                {
                  if (v23)
                  {
                    continue;
                  }

                  v1020 = *(v18 + 56);
                  v1021 = *(v18 + 60);
                  *(v18 + 56) = v1020 + 1;
                  if (v1020 >= v1021)
                  {
                    continue;
                  }

                  v1022 = *(v18 + 80);
                  if (v1022 >= *(a7 + 168))
                  {
                    v23 = 0;
                    v1120 = *(a7 + 128);
                    if (!*(a7 + 128))
                    {
                      continue;
                    }

                    if (v1022 <= *(a7 + 184))
                    {
                      v23 = 0;
                      if (!*(a7 + 84))
                      {
                        continue;
                      }
                    }

                    v23 = 0;
                    *(a7 + 76) = 1;
                    if (v1120 == 1)
                    {
                      continue;
                    }

                    return 4294967294;
                  }

                  *(v18 + 80) = v1022 + 1;
                  v1023 = *v1022;
                  if (v17 && v1023 >= 0xC0)
                  {
                    if ((v1023 & 0x20) != 0)
                    {
                      v1142 = v1022[1] & 0x3F;
                      if ((v1023 & 0x10) != 0)
                      {
                        if ((v1023 & 8) != 0)
                        {
                          v1180 = v1022[2] & 0x3F;
                          v1181 = v1022[3] & 0x3F;
                          v1182 = v1022[4] & 0x3F;
                          if ((v1023 & 4) != 0)
                          {
                            v1023 = ((v1023 & 1) << 30) | (v1142 << 24) | (v1180 << 18) | (v1181 << 12) | (v1182 << 6) | v1022[5] & 0x3F;
                            v1143 = v1022 + 6;
                          }

                          else
                          {
                            v1023 = ((v1023 & 3) << 24) | (v1142 << 18) | (v1180 << 12) | (v1181 << 6) | v1182;
                            v1143 = v1022 + 5;
                          }
                        }

                        else
                        {
                          v1023 = ((v1023 & 7) << 18) | (v1142 << 12) | ((v1022[2] & 0x3F) << 6) | v1022[3] & 0x3F;
                          v1143 = v1022 + 4;
                        }
                      }

                      else
                      {
                        v1023 = ((v1023 & 0xF) << 12) | (v1142 << 6) | v1022[2] & 0x3F;
                        v1143 = v1022 + 3;
                      }

                      *(v18 + 80) = v1143;
                    }

                    else
                    {
                      *(v18 + 80) = v1022 + 2;
                      v1023 = v1022[1] & 0x3F | ((v1023 & 0x1F) << 6);
                    }
                  }

                  v1212 = _pcre2_xclass_8(v1023, *(v18 + 16));
                  v23 = 0;
                  v17 = v1327;
                  if (!v1212)
                  {
                    continue;
                  }

LABEL_3492:
                  v8 = a6;
                  v14 = 0;
                  a2 = *v18;
                  v1287 = 100;
                  goto LABEL_3352;
                }

                if (v988 == 101)
                {
                  if (v23)
                  {
                    continue;
                  }

                  v993 = *(v18 + 80);
                  *(v18 + 80) = v993 - 1;
                  if (v993 <= *(v18 + 8))
                  {
                    continue;
                  }

                  if (v17 && (*(v993 - 1) & 0xC0) == 0x80)
                  {
                    v1280 = v993 - 2;
                    do
                    {
                      *(v18 + 80) = v1280;
                      v1281 = *v1280--;
                    }

                    while ((v1281 & 0xC0) == 0x80);
                  }

                  v187 = v13;
LABEL_3373:
                  v14 = 0;
                  a2 = *v18;
                  v1287 = 101;
                  v13 = v187;
                  goto LABEL_3351;
                }

                return v22;
            }

            break;
          }

LABEL_3329:
          if (v17)
          {
            do
            {
              v1261 = *--v1259;
              v1260 = v1261;
            }

            while ((v1261 & 0xC0) == 0x80);
            if (v1260 >= 0xC0)
            {
              v1262 = v1259[1] & 0x3F;
              if ((v1260 & 0x20) == 0)
              {
                v1260 = v1259[1] & 0x3F | ((v1260 & 0x1F) << 6);
                goto LABEL_3335;
              }

              if ((v1260 & 0x10) == 0)
              {
                v1264 = ((v1260 & 0xF) << 12) | (v1262 << 6);
                v1265 = v1259[2];
                goto LABEL_3345;
              }

              if ((v1260 & 8) == 0)
              {
                v1264 = ((v1260 & 7) << 18) | (v1262 << 12) | ((v1259[2] & 0x3F) << 6);
                v1265 = v1259[3];
                goto LABEL_3345;
              }

              v1266 = v1259[2] & 0x3F;
              v1267 = v1259[3] & 0x3F;
              v1268 = v1259[4] & 0x3F;
              if ((v1260 & 4) != 0)
              {
                v1264 = ((v1260 & 1) << 30) | (v1262 << 24) | (v1266 << 18) | (v1267 << 12) | (v1268 << 6);
                v1265 = v1259[5];
LABEL_3345:
                v1260 = v1264 & 0xFFFFFFC0 | v1265 & 0x3F;
              }

              else
              {
                v1260 = ((v1260 & 3) << 24) | (v1262 << 18) | (v1266 << 12) | (v1267 << 6) | v1268;
              }
            }
          }

          else
          {
            v1259 = v224 - 1;
            v1260 = *(v224 - 1);
          }

LABEL_3335:
          v1263 = BYTE2(_pcre2_ucd_records_8[3 * _pcre2_ucd_stage2_8[v1260 & 0x7F | (_pcre2_ucd_stage1_8[v1260 >> 7] << 7)]]);
          if (((_pcre2_ucp_gbtable_8[v1263] >> v1258) & 1) == 0)
          {
            goto LABEL_3346;
          }

          *(v18 + 80) = v1259;
          v1258 = v1263;
          v224 = v1259;
          if (v1259 <= v641)
          {
            v224 = v1259;
LABEL_3346:
            if (v224 > v641)
            {
              v14 = 0;
              a2 = *v18;
              v1287 = -36;
              goto LABEL_3351;
            }

            continue;
          }

          goto LABEL_3329;
        }

        if (*(*(a7 + 88) + v180) != *(*(a7 + 88) + *v177))
        {
          goto LABEL_1908;
        }

        *v18 = v20 + 2;
        *(v18 + 80) = v177 + 1;
        continue;
      case 0x1Fu:
      case 0x20u:
        v83 = *(v18 + 80);
        if (v83 >= *(a7 + 168))
        {
          v132 = *(a7 + 128);
          if (!*(a7 + 128))
          {
            goto LABEL_1908;
          }

          if (v83 > *(a7 + 184))
          {
            goto LABEL_1907;
          }

LABEL_1906:
          if (!*(a7 + 84))
          {
            goto LABEL_1908;
          }

LABEL_1907:
          *(a7 + 76) = 1;
          if (v132 != 1)
          {
            return 4294967294;
          }

          goto LABEL_1908;
        }

        if (v17)
        {
          *v18 = v20 + 2;
          v84 = v20[1];
          if (v84 >= 0xC0)
          {
            if ((v84 & 0x20) != 0)
            {
              v644 = v20[2] & 0x3F;
              if ((v84 & 0x10) != 0)
              {
                if ((v84 & 8) != 0)
                {
                  v845 = v20[3] & 0x3F;
                  v846 = v20[4] & 0x3F;
                  v847 = v20[5] & 0x3F;
                  if ((v84 & 4) != 0)
                  {
                    v84 = ((v84 & 1) << 30) | (v644 << 24) | (v845 << 18) | (v846 << 12) | (v847 << 6) | v20[6] & 0x3F;
                    v645 = v20 + 7;
                  }

                  else
                  {
                    v84 = ((v84 & 3) << 24) | (v644 << 18) | (v845 << 12) | (v846 << 6) | v847;
                    v645 = v20 + 6;
                  }
                }

                else
                {
                  v84 = ((v84 & 7) << 18) | (v644 << 12) | ((v20[3] & 0x3F) << 6) | v20[4] & 0x3F;
                  v645 = v20 + 5;
                }
              }

              else
              {
                v84 = ((v84 & 0xF) << 12) | (v644 << 6) | v20[3] & 0x3F;
                v645 = v20 + 4;
              }

              *v18 = v645;
            }

            else
            {
              *v18 = v20 + 3;
              v84 = v20[2] & 0x3F | ((v84 & 0x1F) << 6);
            }
          }

          *(v18 + 80) = v83 + 1;
          v958 = *v83;
          if (v958 >= 0xC0)
          {
            if ((v958 & 0x20) != 0)
            {
              v959 = v83[1] & 0x3F;
              if ((v958 & 0x10) != 0)
              {
                if ((v958 & 8) != 0)
                {
                  v961 = v83[2] & 0x3F;
                  v962 = v83[3] & 0x3F;
                  v963 = v83[4] & 0x3F;
                  if ((v958 & 4) != 0)
                  {
                    v958 = ((v958 & 1) << 30) | (v959 << 24) | (v961 << 18) | (v962 << 12) | (v963 << 6) | v83[5] & 0x3F;
                    v960 = v83 + 6;
                  }

                  else
                  {
                    v958 = ((v958 & 3) << 24) | (v959 << 18) | (v961 << 12) | (v962 << 6) | v963;
                    v960 = v83 + 5;
                  }
                }

                else
                {
                  v958 = ((v958 & 7) << 18) | (v959 << 12) | ((v83[2] & 0x3F) << 6) | v83[3] & 0x3F;
                  v960 = v83 + 4;
                }
              }

              else
              {
                v958 = ((v958 & 0xF) << 12) | (v959 << 6) | v83[2] & 0x3F;
                v960 = v83 + 3;
              }

              *(v18 + 80) = v960;
            }

            else
            {
              *(v18 + 80) = v83 + 2;
              v958 = v83[1] & 0x3F | ((v958 & 0x1F) << 6);
            }
          }

          if (v84 == v958)
          {
            goto LABEL_1908;
          }

          if (v21 == 32)
          {
            v964 = v84 < 0x80 ? *(*(a7 + 96) + v84) : _pcre2_ucd_records_8[3 * _pcre2_ucd_stage2_8[v84 & 0x7F | (_pcre2_ucd_stage1_8[v84 >> 7] << 7)] + 1] + v84;
            v23 = 0;
            if (v964 == v958)
            {
              goto LABEL_2516;
            }
          }
        }

        else
        {
          if ((v1317 & 0x20000) == 0)
          {
            v381 = v20[1];
            *(v18 + 80) = v83 + 1;
            v382 = *v83;
            if (v381 == v382 || v21 == 32 && *(*(a7 + 96) + v381) == v382)
            {
              goto LABEL_1908;
            }

            goto LABEL_2000;
          }

          *(v18 + 80) = v83 + 1;
          v535 = *v83;
          v536 = v20[1];
          *v18 = v20 + 2;
          if (v536 == v535)
          {
            goto LABEL_1908;
          }

          if (v21 == 32)
          {
            v537 = (v536 & 0x80) != 0 ? _pcre2_ucd_records_8[3 * _pcre2_ucd_stage2_8[v536 & 0x7F | 0x80] + 1] + v536 : *(*(a7 + 96) + v536);
            v23 = 0;
            if (v537 == v535)
            {
              goto LABEL_2516;
            }
          }
        }

        continue;
      case 0x21u:
      case 0x22u:
      case 0x23u:
      case 0x24u:
      case 0x25u:
      case 0x26u:
      case 0x2Eu:
      case 0x2Fu:
      case 0x30u:
      case 0x31u:
      case 0x32u:
      case 0x33u:
        v24 = v20 + 1;
        *v18 = v20 + 1;
        v25 = *v20;
        if (v21 >= 0x2E)
        {
          v26 = -46;
        }

        else
        {
          v26 = -33;
        }

        v27 = v26 + v25;
        v28 = rep_min[v27];
        *(v18 + 56) = v28;
        v29 = rep_max[v27];
        *(v18 + 60) = v29;
        v30 = rep_typ[v27];
        if (v17)
        {
          goto LABEL_102;
        }

        goto LABEL_109;
      case 0x27u:
      case 0x34u:
        v28 = 0;
        *(v18 + 56) = 0;
        v29 = __rev16(*(v20 + 1));
        *(v18 + 60) = v29;
        v24 = v20 + 3;
        *v18 = v20 + 3;
        v30 = 1;
        if (v17)
        {
          goto LABEL_102;
        }

        goto LABEL_109;
      case 0x28u:
      case 0x35u:
        v28 = 0;
        v30 = 0;
        *(v18 + 56) = 0;
        v29 = __rev16(*(v20 + 1));
        *(v18 + 60) = v29;
        v24 = v20 + 3;
        *v18 = v20 + 3;
        if (!v17)
        {
          goto LABEL_109;
        }

        goto LABEL_102;
      case 0x29u:
      case 0x36u:
        v29 = __rev16(*(v20 + 1));
        *(v18 + 56) = v29;
        *(v18 + 60) = v29;
        v24 = v20 + 3;
        *v18 = v20 + 3;
        v28 = v29;
        v30 = v13;
        if (v17)
        {
          goto LABEL_102;
        }

        goto LABEL_109;
      case 0x2Au:
      case 0x37u:
        v28 = 0;
        *(v18 + 56) = 0xFFFFFFFF00000000;
        v24 = v20 + 1;
        *v18 = v20 + 1;
        v30 = 2;
        goto LABEL_85;
      case 0x2Bu:
      case 0x38u:
        *(v18 + 56) = 0xFFFFFFFF00000001;
        v24 = v20 + 1;
        *v18 = v20 + 1;
        v30 = 2;
        v28 = 1;
LABEL_85:
        v29 = -1;
        if (v17)
        {
          goto LABEL_102;
        }

        goto LABEL_109;
      case 0x2Cu:
      case 0x39u:
        v28 = 0;
        *(v18 + 56) = 0x100000000;
        v24 = v20 + 1;
        *v18 = v20 + 1;
        v30 = 2;
        v29 = 1;
        if (v17)
        {
          goto LABEL_102;
        }

        goto LABEL_109;
      case 0x2Du:
      case 0x3Au:
        v28 = 0;
        *(v18 + 56) = 0;
        v29 = __rev16(*(v20 + 1));
        *(v18 + 60) = v29;
        v24 = v20 + 3;
        *v18 = v20 + 3;
        v30 = 2;
        if (v17)
        {
LABEL_102:
          *(v18 + 16) = v24;
          *(v18 + 24) = 1;
          v85 = *v24;
          if (v85 >= 0xC0)
          {
            v86 = v24[1] & 0x3F;
            v1314 = v30;
            if ((v85 & 0x20) != 0)
            {
              if ((v85 & 0x10) != 0)
              {
                if ((v85 & 8) != 0)
                {
                  v333 = v24[2] & 0x3F;
                  v334 = v24[3] & 0x3F;
                  v335 = v24[4] & 0x3F;
                  if ((v85 & 4) != 0)
                  {
                    v87 = ((v85 & 1) << 30) | (v86 << 24) | (v333 << 18) | (v334 << 12) | (v335 << 6) | v24[5] & 0x3F;
                    v88 = 6;
                  }

                  else
                  {
                    v87 = ((v85 & 3) << 24) | (v86 << 18) | (v333 << 12) | (v334 << 6) | v335;
                    v88 = 5;
                  }
                }

                else
                {
                  v87 = ((v85 & 7) << 18) | (v86 << 12) | ((v24[2] & 0x3F) << 6) | v24[3] & 0x3F;
                  v88 = 4;
                }
              }

              else
              {
                v87 = ((v85 & 0xF) << 12) | (v86 << 6) | v24[2] & 0x3F;
                v88 = 3;
              }
            }

            else
            {
              v87 = v24[1] & 0x3F | ((v85 & 0x1F) << 6);
              v88 = 2;
            }

            v1315 = a4;
            v1316 = a5;
            *(v18 + 24) = v88;
            *v18 = &v24[v88];
            if (v21 >= 0x2E)
            {
              v416 = _pcre2_ucd_records_8[3 * _pcre2_ucd_stage2_8[v87 & 0x7F | (_pcre2_ucd_stage1_8[v87 >> 7] << 7)] + 1];
              if (v416)
              {
                v417 = _pcre2_ord2utf_8(v416 + v87, v18 + 74);
                *(v18 + 40) = v417;
                v28 = *(v18 + 56);
                if (v28)
                {
                  goto LABEL_933;
                }

                goto LABEL_940;
              }
            }

            v417 = 0;
            *(v18 + 40) = 0;
            if (!v28)
            {
LABEL_940:
              v425 = *(v18 + 60);
              a4 = v1315;
              v13 = v1314;
              v17 = v1327;
              if (v425 == v28)
              {
                continue;
              }

              if (!v1314)
              {
                v13 = 0;
LABEL_3410:
                v14 = 0;
                a2 = *v18;
                v1287 = -54;
                goto LABEL_3351;
              }

              v426 = *(v18 + 80);
              *(v18 + 8) = v426;
              v427 = v426;
              v428 = v425 - v28;
              if (v425 > v28)
              {
                v429 = *(a7 + 168);
                v430 = *(v18 + 24);
                v431 = v429 - v430;
                v1313 = v429;
                v432 = v429 - v417;
                v427 = v426;
                while (1)
                {
                  if (v427 > v431 || (v433 = memcmp(v427, *(v18 + 16), v430), v434 = v430, v433))
                  {
                    if (!v417)
                    {
                      break;
                    }

                    if (v427 > v432)
                    {
                      break;
                    }

                    v435 = memcmp(v427, (v18 + 74), v417);
                    v434 = v417;
                    if (v435)
                    {
                      break;
                    }
                  }

                  v427 += v434;
                  *(v18 + 80) = v427;
                  if (!--v428)
                  {
                    goto LABEL_962;
                  }
                }

                if (v427 >= v1313)
                {
                  v436 = *(a7 + 128);
                  if (*(a7 + 128))
                  {
                    if (v427 > *(a7 + 184) || *(a7 + 84))
                    {
                      *(a7 + 76) = 1;
                      if (v436 != 1)
                      {
                        return 4294967294;
                      }
                    }
                  }
                }
              }

LABEL_962:
              v13 = 2;
              v37 = v1314;
              a4 = v1315;
              a5 = v1316;
              v17 = v1327;
              if (v1314 == 2)
              {
                continue;
              }

LABEL_3268:
              v13 = v37;
              if (v427 <= v426)
              {
                continue;
              }

              v14 = 0;
              a2 = *v18;
              v1287 = -53;
              goto LABEL_3426;
            }

LABEL_933:
            v418 = *(a7 + 168);
            v419 = *(v18 + 24);
            v420 = *(v18 + 80);
            v421 = 1;
            while (1)
            {
              if (v420 > v418 - v419 || (v422 = memcmp(v420, *(v18 + 16), v419), v423 = v419, v422))
              {
                if (!v417)
                {
                  break;
                }

                if (v420 > v418 - v417)
                {
                  break;
                }

                v424 = memcmp(v420, (v18 + 74), v417);
                v423 = v417;
                if (v424)
                {
                  break;
                }
              }

              v420 += v423;
              *(v18 + 80) = v420;
              if (++v421 > v28)
              {
                goto LABEL_940;
              }
            }

            if (v420 < v418)
            {
              v23 = 0;
              v13 = v1314;
              a4 = v1315;
              goto LABEL_953;
            }

            v132 = *(a7 + 128);
            a4 = v1315;
            v17 = v1327;
            v13 = v1314;
            if (*(a7 + 128))
            {
              if (v420 <= *(a7 + 184))
              {
                goto LABEL_1906;
              }

              goto LABEL_1907;
            }

LABEL_1908:
            v23 = 0;
            goto LABEL_2516;
          }

          a2 = v24 + 1;
          *v18 = v24 + 1;
        }

        else
        {
LABEL_109:
          a2 = v24 + 1;
          *v18 = v24 + 1;
          v85 = *v24;
        }

        *(v18 + 64) = v85;
        if (v21 <= 0x2D)
        {
          if (v28)
          {
            v90 = *(a7 + 168);
            v91 = *(v18 + 80);
            v92 = 1;
            while (v91 < v90)
            {
              *(v18 + 80) = v91 + 1;
              if (v85 != *v91)
              {
                goto LABEL_160;
              }

              ++v92;
              ++v91;
              if (v92 > v28)
              {
                goto LABEL_119;
              }
            }

            v108 = *(a7 + 128);
            if (*(a7 + 128) && (v91 > *(a7 + 184) || *(a7 + 84)))
            {
              *(a7 + 76) = 1;
              if (v108 != 1)
              {
                return 4294967294;
              }
            }

LABEL_160:
            v23 = 0;
            v13 = v30;
            goto LABEL_2516;
          }

LABEL_119:
          v13 = v30;
          if (v29 == v28)
          {
            continue;
          }

          if (!v30)
          {
            v13 = 0;
            v14 = 0;
LABEL_3424:
            v1287 = 27;
            goto LABEL_3351;
          }

          v93 = *(v18 + 80);
          *(v18 + 8) = v93;
          v94 = v93;
          v303 = v29 >= v28;
          v95 = v29 - v28;
          if (v95 != 0 && v303)
          {
            v96 = *(a7 + 168);
            v94 = v93;
            while (v94 < v96)
            {
              if (v85 == *v94)
              {
                *(v18 + 80) = ++v94;
                if (--v95)
                {
                  continue;
                }
              }

              goto LABEL_854;
            }

            v386 = *(a7 + 128);
            if (*(a7 + 128) && (v94 > *(a7 + 184) || *(a7 + 84)))
            {
              *(a7 + 76) = 1;
              if (v386 != 1)
              {
                return 4294967294;
              }
            }
          }

LABEL_854:
          v13 = 2;
          if (v30 == 2)
          {
            continue;
          }

LABEL_3260:
          v13 = v30;
          if (v94 <= v93)
          {
            continue;
          }

          v14 = 0;
          a2 = *v18;
          v1287 = 28;
        }

        else
        {
          if (v1325 == 0x20000 && v85 >= 0x80)
          {
            v89 = _pcre2_ucd_records_8[3 * _pcre2_ucd_stage2_8[v85 & 0x7F | (_pcre2_ucd_stage1_8[v85 >> 7] << 7)] + 1] + v85;
          }

          else
          {
            v89 = *(*(a7 + 96) + v85);
          }

          *(v18 + 68) = v89;
          if (v28)
          {
            v97 = *(a7 + 168);
            v98 = *(v18 + 80);
            v99 = 1;
            while (v98 < v97)
            {
              v100 = *v98;
              v101 = v85 == v100 || v89 == v100;
              if (!v101)
              {
                goto LABEL_160;
              }

              *(v18 + 80) = ++v98;
              if (++v99 > v28)
              {
                goto LABEL_138;
              }
            }

            v109 = *(a7 + 128);
            if (*(a7 + 128) && (v98 > *(a7 + 184) || *(a7 + 84)))
            {
              *(a7 + 76) = 1;
              if (v109 != 1)
              {
                return 4294967294;
              }
            }

            goto LABEL_160;
          }

LABEL_138:
          v13 = v30;
          if (v29 == v28)
          {
            continue;
          }

          if (!v30)
          {
            v13 = 0;
            v14 = 0;
LABEL_3399:
            v1287 = 25;
            goto LABEL_3351;
          }

          v102 = *(v18 + 80);
          *(v18 + 8) = v102;
          v103 = v102;
          v303 = v29 >= v28;
          v104 = v29 - v28;
          if (v104 != 0 && v303)
          {
            v105 = *(a7 + 168);
            v103 = v102;
            while (v103 < v105)
            {
              v106 = *v103;
              if (v85 == v106 || v89 == v106)
              {
                *(v18 + 80) = ++v103;
                if (--v104)
                {
                  continue;
                }
              }

              goto LABEL_860;
            }

            v387 = *(a7 + 128);
            if (*(a7 + 128) && (v103 > *(a7 + 184) || *(a7 + 84)))
            {
              *(a7 + 76) = 1;
              if (v387 != 1)
              {
                return 4294967294;
              }
            }
          }

LABEL_860:
          v13 = 2;
          if (v30 == 2)
          {
            continue;
          }

LABEL_3270:
          v13 = v30;
          if (v103 == v102)
          {
            continue;
          }

          v14 = 0;
          a2 = *v18;
          v1287 = 26;
        }

        v13 = v30;
        goto LABEL_3351;
      case 0x3Bu:
      case 0x3Cu:
      case 0x3Du:
      case 0x3Eu:
      case 0x3Fu:
      case 0x40u:
      case 0x48u:
      case 0x49u:
      case 0x4Au:
      case 0x4Bu:
      case 0x4Cu:
      case 0x4Du:
        v31 = v20 + 1;
        *v18 = v20 + 1;
        v32 = *v20;
        if (v21 <= 0x47)
        {
          v33 = -59;
        }

        else
        {
          v33 = -72;
        }

        v34 = v33 + v32;
        v35 = rep_min[v34];
        *(v18 + 56) = v35;
        v36 = rep_max[v34];
        *(v18 + 60) = v36;
        v37 = rep_typ[v34];
        goto LABEL_163;
      case 0x41u:
      case 0x4Eu:
        v35 = 0;
        *(v18 + 56) = 0;
        v36 = __rev16(*(v20 + 1));
        *(v18 + 60) = v36;
        v31 = v20 + 3;
        *v18 = v20 + 3;
        v37 = 1;
        goto LABEL_163;
      case 0x42u:
      case 0x4Fu:
        v35 = 0;
        v37 = 0;
        *(v18 + 56) = 0;
        v36 = __rev16(*(v20 + 1));
        *(v18 + 60) = v36;
        v31 = v20 + 3;
        *v18 = v20 + 3;
        goto LABEL_163;
      case 0x43u:
      case 0x50u:
        v36 = __rev16(*(v20 + 1));
        *(v18 + 56) = v36;
        *(v18 + 60) = v36;
        v31 = v20 + 3;
        *v18 = v20 + 3;
        v35 = v36;
        v37 = v13;
        goto LABEL_163;
      case 0x44u:
      case 0x51u:
        v35 = 0;
        *(v18 + 56) = 0xFFFFFFFF00000000;
        v31 = v20 + 1;
        *v18 = v20 + 1;
        v37 = 2;
        goto LABEL_53;
      case 0x45u:
      case 0x52u:
        *(v18 + 56) = 0xFFFFFFFF00000001;
        v31 = v20 + 1;
        *v18 = v20 + 1;
        v37 = 2;
        v35 = 1;
LABEL_53:
        v36 = -1;
        goto LABEL_163;
      case 0x46u:
      case 0x53u:
        v35 = 0;
        *(v18 + 56) = 0x100000000;
        v31 = v20 + 1;
        *v18 = v20 + 1;
        v37 = 2;
        v36 = 1;
        goto LABEL_163;
      case 0x47u:
      case 0x54u:
        v35 = 0;
        *(v18 + 56) = 0;
        v36 = __rev16(*(v20 + 1));
        *(v18 + 60) = v36;
        v31 = v20 + 3;
        *v18 = v20 + 3;
        v37 = 2;
LABEL_163:
        a2 = v31 + 1;
        *v18 = v31 + 1;
        v110 = *v31;
        *(v18 + 64) = v110;
        if (v17 && v110 >= 0xC0)
        {
          if ((v110 & 0x20) != 0)
          {
            v112 = *a2 & 0x3F;
            if ((v110 & 0x10) != 0)
            {
              if ((v110 & 8) != 0)
              {
                v120 = v31[2] & 0x3F;
                v121 = v31[3] & 0x3F;
                v122 = v31[4] & 0x3F;
                if ((v110 & 4) != 0)
                {
                  v110 = ((v110 & 1) << 30) | (v112 << 24) | (v120 << 18) | (v121 << 12) | (v122 << 6) | v31[5] & 0x3F;
                  *(v18 + 64) = v110;
                  a2 = v31 + 6;
                }

                else
                {
                  a2 = v31 + 5;
                  v110 = ((v110 & 3) << 24) | (v112 << 18) | (v120 << 12) | (v121 << 6) | v122;
                  *(v18 + 64) = v110;
                }
              }

              else
              {
                v110 = ((v110 & 7) << 18) | (v112 << 12) | ((v31[2] & 0x3F) << 6) | v31[3] & 0x3F;
                *(v18 + 64) = v110;
                a2 = v31 + 4;
              }
            }

            else
            {
              v110 = ((v110 & 0xF) << 12) | (v112 << 6) | v31[2] & 0x3F;
              *(v18 + 64) = v110;
              a2 = v31 + 3;
            }

            *v18 = a2;
          }

          else
          {
            a2 = v31 + 2;
            *v18 = v31 + 2;
            v111 = v31[1] & 0x3F | ((v110 & 0x1F) << 6);
            *(v18 + 64) = v111;
            v110 = v111;
          }
        }

        if (v21 >= 0x48)
        {
          if (v1325 && v110 >= 0x80)
          {
            v279 = _pcre2_ucd_records_8[3 * _pcre2_ucd_stage2_8[v110 & 0x7F | (_pcre2_ucd_stage1_8[v110 >> 7] << 7)] + 1] + v110;
          }

          else
          {
            v279 = *(*(a7 + 96) + v110);
          }

          *(v18 + 68) = v279;
          if (v17)
          {
            if (v35)
            {
              v289 = *(a7 + 168);
              v290 = *(v18 + 80);
              v291 = 1;
              while (v290 < v289)
              {
                *(v18 + 80) = v290 + 1;
                v292 = *v290;
                if (v292 < 0xC0)
                {
                  ++v290;
                }

                else if ((v292 & 0x20) != 0)
                {
                  v294 = v290[1] & 0x3F;
                  if ((v292 & 0x10) != 0)
                  {
                    if ((v292 & 8) != 0)
                    {
                      v295 = v290[2] & 0x3F;
                      v296 = v290[3] & 0x3F;
                      v297 = v290[4] & 0x3F;
                      if ((v292 & 4) != 0)
                      {
                        v292 = ((v292 & 1) << 30) | (v294 << 24) | (v295 << 18) | (v296 << 12) | (v297 << 6) | v290[5] & 0x3F;
                        v290 += 6;
                      }

                      else
                      {
                        v292 = ((v292 & 3) << 24) | (v294 << 18) | (v295 << 12) | (v296 << 6) | v297;
                        v290 += 5;
                      }
                    }

                    else
                    {
                      v292 = ((v292 & 7) << 18) | (v294 << 12) | ((v290[2] & 0x3F) << 6) | v290[3] & 0x3F;
                      v290 += 4;
                    }
                  }

                  else
                  {
                    v292 = ((v292 & 0xF) << 12) | (v294 << 6) | v290[2] & 0x3F;
                    v290 += 3;
                  }

                  *(v18 + 80) = v290;
                }

                else
                {
                  *(v18 + 80) = v290 + 2;
                  v293 = v290[1] & 0x3F | ((v292 & 0x1F) << 6);
                  v290 += 2;
                  v292 = v293;
                }

                if (v110 == v292 || v279 == v292)
                {
                  goto LABEL_687;
                }

                if (++v291 > v35)
                {
                  goto LABEL_656;
                }
              }

              goto LABEL_680;
            }

            goto LABEL_656;
          }

          if (!v35)
          {
LABEL_656:
            v13 = v37;
            if (v36 == v35)
            {
              continue;
            }

            if (!v37)
            {
              v13 = 0;
              v8 = a6;
              if (!v17)
              {
LABEL_3464:
                v14 = 0;
                v1287 = 29;
                goto LABEL_3352;
              }

              v1287 = -52;
              goto LABEL_3380;
            }

            v316 = *(v18 + 80);
            *(v18 + 8) = v316;
            v317 = v316;
            v318 = v36 >= v35;
            v319 = v36 - v35;
            if (v17)
            {
              if (v319 != 0 && v318)
              {
                v320 = *(a7 + 168);
                v317 = v316;
                while (v317 < v320)
                {
                  v321 = *v317;
                  if (v321 < 0xC0)
                  {
                    v323 = 1;
                  }

                  else
                  {
                    v322 = v317[1] & 0x3F;
                    if ((v321 & 0x20) != 0)
                    {
                      if ((v321 & 0x10) != 0)
                      {
                        if ((v321 & 8) != 0)
                        {
                          v325 = v317[2] & 0x3F;
                          v326 = v317[3] & 0x3F;
                          v327 = v317[4] & 0x3F;
                          if ((v321 & 4) != 0)
                          {
                            v321 = ((v321 & 1) << 30) | (v322 << 24) | (v325 << 18) | (v326 << 12) | (v327 << 6) | v317[5] & 0x3F;
                            v323 = 6;
                          }

                          else
                          {
                            v321 = ((v321 & 3) << 24) | (v322 << 18) | (v325 << 12) | (v326 << 6) | v327;
                            v323 = 5;
                          }
                        }

                        else
                        {
                          v321 = ((v321 & 7) << 18) | (v322 << 12) | ((v317[2] & 0x3F) << 6) | v317[3] & 0x3F;
                          v323 = 4;
                        }
                      }

                      else
                      {
                        v321 = ((v321 & 0xF) << 12) | (v322 << 6) | v317[2] & 0x3F;
                        v323 = 3;
                      }
                    }

                    else
                    {
                      v323 = 2;
                      v321 = v317[1] & 0x3F | ((v321 & 0x1F) << 6);
                    }
                  }

                  if (v110 != v321 && v279 != v321)
                  {
                    v317 += v323;
                    *(v18 + 80) = v317;
                    if (--v319)
                    {
                      continue;
                    }
                  }

                  goto LABEL_1177;
                }

                v527 = *(a7 + 128);
                if (*(a7 + 128) && (v317 > *(a7 + 184) || *(a7 + 84)))
                {
                  *(a7 + 76) = 1;
                  if (v527 != 1)
                  {
                    return 4294967294;
                  }
                }
              }

LABEL_1177:
              v13 = 2;
              if (v37 == 2)
              {
                continue;
              }

LABEL_3296:
              v13 = v37;
              if (v317 <= v316)
              {
                continue;
              }

              v14 = 0;
              a2 = *v18;
              v1287 = -51;
            }

            else
            {
              if (v319 != 0 && v318)
              {
                v330 = *(a7 + 168);
                v317 = v316;
                while (v317 < v330)
                {
                  v331 = *v317;
                  if (v110 != v331 && v279 != v331)
                  {
                    *(v18 + 80) = ++v317;
                    if (--v319)
                    {
                      continue;
                    }
                  }

                  goto LABEL_1183;
                }

                v528 = *(a7 + 128);
                if (*(a7 + 128) && (v317 > *(a7 + 184) || *(a7 + 84)))
                {
                  *(a7 + 76) = 1;
                  if (v528 != 1)
                  {
                    return 4294967294;
                  }
                }
              }

LABEL_1183:
              v13 = 2;
              if (v37 == 2)
              {
                continue;
              }

LABEL_3298:
              v13 = v37;
              if (v317 == v316)
              {
                continue;
              }

              v14 = 0;
              a2 = *v18;
              v1287 = 30;
            }

LABEL_3426:
            v13 = v37;
            goto LABEL_3351;
          }

          v312 = *(a7 + 168);
          v281 = *(v18 + 80);
          v313 = 1;
          while (v281 < v312)
          {
            v314 = *v281;
            if (v110 == v314 || v279 == v314)
            {
              goto LABEL_687;
            }

            *(v18 + 80) = ++v281;
            if (++v313 > v35)
            {
              goto LABEL_656;
            }
          }

LABEL_683:
          v328 = *(a7 + 128);
          if (!*(a7 + 128))
          {
            goto LABEL_687;
          }

          if (v281 > *(a7 + 184))
          {
            goto LABEL_686;
          }

          goto LABEL_685;
        }

        if (v17)
        {
          if (v35)
          {
            v280 = *(a7 + 168);
            v281 = *(v18 + 80);
            v282 = 1;
            while (v281 < v280)
            {
              *(v18 + 80) = v281 + 1;
              v283 = *v281;
              if (v283 < 0xC0)
              {
                ++v281;
              }

              else if ((v283 & 0x20) != 0)
              {
                v285 = v281[1] & 0x3F;
                if ((v283 & 0x10) != 0)
                {
                  if ((v283 & 8) != 0)
                  {
                    v286 = v281[2] & 0x3F;
                    v287 = v281[3] & 0x3F;
                    v288 = v281[4] & 0x3F;
                    if ((v283 & 4) != 0)
                    {
                      v283 = ((v283 & 1) << 30) | (v285 << 24) | (v286 << 18) | (v287 << 12) | (v288 << 6) | v281[5] & 0x3F;
                      v281 += 6;
                    }

                    else
                    {
                      v283 = ((v283 & 3) << 24) | (v285 << 18) | (v286 << 12) | (v287 << 6) | v288;
                      v281 += 5;
                    }
                  }

                  else
                  {
                    v283 = ((v283 & 7) << 18) | (v285 << 12) | ((v281[2] & 0x3F) << 6) | v281[3] & 0x3F;
                    v281 += 4;
                  }
                }

                else
                {
                  v283 = ((v283 & 0xF) << 12) | (v285 << 6) | v281[2] & 0x3F;
                  v281 += 3;
                }

                *(v18 + 80) = v281;
              }

              else
              {
                *(v18 + 80) = v281 + 2;
                v284 = v281[1] & 0x3F | ((v283 & 0x1F) << 6);
                v281 += 2;
                v283 = v284;
              }

              if (v110 == v283)
              {
                goto LABEL_687;
              }

              if (++v282 > v35)
              {
                goto LABEL_627;
              }
            }

            goto LABEL_683;
          }
        }

        else if (v35)
        {
          v299 = *(a7 + 168);
          v290 = *(v18 + 80);
          v300 = 1;
          while (v290 < v299)
          {
            *(v18 + 80) = v290 + 1;
            if (v110 == *v290)
            {
              goto LABEL_687;
            }

            ++v300;
            ++v290;
            if (v300 > v35)
            {
              goto LABEL_627;
            }
          }

LABEL_680:
          v328 = *(a7 + 128);
          if (!*(a7 + 128))
          {
            goto LABEL_687;
          }

          if (v290 > *(a7 + 184))
          {
LABEL_686:
            *(a7 + 76) = 1;
            if (v328 != 1)
            {
              return 4294967294;
            }

LABEL_687:
            v23 = 0;
            v13 = v37;
            goto LABEL_2516;
          }

LABEL_685:
          if (!*(a7 + 84))
          {
            goto LABEL_687;
          }

          goto LABEL_686;
        }

LABEL_627:
        v13 = v37;
        if (v36 == v35)
        {
          continue;
        }

        if (!v37)
        {
          v13 = 0;
          v8 = a6;
          if (!v17)
          {
LABEL_3418:
            v14 = 0;
            v1287 = 31;
            goto LABEL_3352;
          }

          v1287 = -50;
          goto LABEL_3380;
        }

        v301 = *(v18 + 80);
        *(v18 + 8) = v301;
        v302 = v301;
        v303 = v36 >= v35;
        v304 = v36 - v35;
        if (v17)
        {
          if (v304 != 0 && v303)
          {
            v305 = *(a7 + 168);
            v302 = v301;
            while (v302 < v305)
            {
              v306 = *v302;
              if (v306 < 0xC0)
              {
                v308 = 1;
              }

              else
              {
                v307 = v302[1] & 0x3F;
                if ((v306 & 0x20) != 0)
                {
                  if ((v306 & 0x10) != 0)
                  {
                    if ((v306 & 8) != 0)
                    {
                      v309 = v302[2] & 0x3F;
                      v310 = v302[3] & 0x3F;
                      v311 = v302[4] & 0x3F;
                      if ((v306 & 4) != 0)
                      {
                        v306 = ((v306 & 1) << 30) | (v307 << 24) | (v309 << 18) | (v310 << 12) | (v311 << 6) | v302[5] & 0x3F;
                        v308 = 6;
                      }

                      else
                      {
                        v306 = ((v306 & 3) << 24) | (v307 << 18) | (v309 << 12) | (v310 << 6) | v311;
                        v308 = 5;
                      }
                    }

                    else
                    {
                      v306 = ((v306 & 7) << 18) | (v307 << 12) | ((v302[2] & 0x3F) << 6) | v302[3] & 0x3F;
                      v308 = 4;
                    }
                  }

                  else
                  {
                    v306 = ((v306 & 0xF) << 12) | (v307 << 6) | v302[2] & 0x3F;
                    v308 = 3;
                  }
                }

                else
                {
                  v308 = 2;
                  v306 = v302[1] & 0x3F | ((v306 & 0x1F) << 6);
                }
              }

              if (v110 != v306)
              {
                v302 += v308;
                *(v18 + 80) = v302;
                if (--v304)
                {
                  continue;
                }
              }

              goto LABEL_1165;
            }

            v525 = *(a7 + 128);
            if (*(a7 + 128) && (v302 > *(a7 + 184) || *(a7 + 84)))
            {
              *(a7 + 76) = 1;
              if (v525 != 1)
              {
                return 4294967294;
              }
            }
          }

LABEL_1165:
          v13 = 2;
          if (v37 == 2)
          {
            continue;
          }

LABEL_3292:
          v13 = v37;
          if (v302 <= v301)
          {
            continue;
          }

          v14 = 0;
          a2 = *v18;
          v1287 = -49;
        }

        else
        {
          if (v304 != 0 && v303)
          {
            v329 = *(a7 + 168);
            v302 = v301;
            while (v302 < v329)
            {
              if (v110 != *v302)
              {
                *(v18 + 80) = ++v302;
                if (--v304)
                {
                  continue;
                }
              }

              goto LABEL_1171;
            }

            v526 = *(a7 + 128);
            if (*(a7 + 128) && (v302 > *(a7 + 184) || *(a7 + 84)))
            {
              *(a7 + 76) = 1;
              if (v526 != 1)
              {
                return 4294967294;
              }
            }
          }

LABEL_1171:
          v13 = 2;
          if (v37 == 2)
          {
            continue;
          }

LABEL_3264:
          v13 = v37;
          if (v302 == v301)
          {
            continue;
          }

          v14 = 0;
          a2 = *v18;
          v1287 = 32;
        }

        goto LABEL_3426;
      case 0x55u:
      case 0x56u:
      case 0x57u:
      case 0x58u:
      case 0x59u:
      case 0x5Au:
        v38 = v20 + 1;
        *v18 = v20 + 1;
        v39 = *v20 - 85;
        v40 = rep_min[v39];
        *(v18 + 56) = v40;
        *(v18 + 60) = rep_max[v39];
        v13 = rep_typ[v39];
        goto LABEL_354;
      case 0x5Bu:
      case 0x5Cu:
        v40 = 0;
        *(v18 + 56) = 0;
        *(v18 + 60) = __rev16(*(v20 + 1));
        v13 = *v20 != 92;
        goto LABEL_353;
      case 0x5Du:
        v40 = __rev16(*(v20 + 1));
        *(v18 + 56) = v40;
        *(v18 + 60) = v40;
LABEL_353:
        v38 = v20 + 3;
        *v18 = v20 + 3;
        goto LABEL_354;
      case 0x5Eu:
        v40 = 0;
        v141 = 0xFFFFFFFF00000000;
        goto LABEL_350;
      case 0x5Fu:
        *(v18 + 56) = 0xFFFFFFFF00000001;
        v191 = (v18 + 56);
        *v18 = v20 + 2;
        v192 = v20[1];
        *(v18 + 64) = v192;
        v193 = (v18 + 64);
        if ((v192 - 15) <= 1)
        {
          *v18 = v20 + 3;
          v194 = v20[2];
          *v18 = v20 + 4;
          v195 = v20[3];
          *(v18 + 68) = v195;
          v13 = 2;
          v40 = 1;
LABEL_356:
          v200 = v192;
          v22 = 4294967252;
          if (v194 <= 5)
          {
            if (v194 <= 2)
            {
              if (v194)
              {
                if (v194 != 1)
                {
                  v201 = *(a7 + 168);
                  v202 = *(v18 + 80);
                  v203 = 1;
                  while (v202 < v201)
                  {
                    *(v18 + 80) = v202 + 1;
                    v204 = *v202;
                    if (v17 && v204 >= 0xC0)
                    {
                      if ((v204 & 0x20) != 0)
                      {
                        v206 = v202[1] & 0x3F;
                        if ((v204 & 0x10) != 0)
                        {
                          if ((v204 & 8) != 0)
                          {
                            v207 = v202[2] & 0x3F;
                            v208 = v202[3] & 0x3F;
                            v209 = v202[4] & 0x3F;
                            if ((v204 & 4) != 0)
                            {
                              v204 = ((v204 & 1) << 30) | (v206 << 24) | (v207 << 18) | (v208 << 12) | (v209 << 6) | v202[5] & 0x3F;
                              v202 += 6;
                            }

                            else
                            {
                              v204 = ((v204 & 3) << 24) | (v206 << 18) | (v207 << 12) | (v208 << 6) | v209;
                              v202 += 5;
                            }
                          }

                          else
                          {
                            v204 = ((v204 & 7) << 18) | (v206 << 12) | ((v202[2] & 0x3F) << 6) | v202[3] & 0x3F;
                            v202 += 4;
                          }
                        }

                        else
                        {
                          v204 = ((v204 & 0xF) << 12) | (v206 << 6) | v202[2] & 0x3F;
                          v202 += 3;
                        }

                        *(v18 + 80) = v202;
                      }

                      else
                      {
                        *(v18 + 80) = v202 + 2;
                        v205 = v202[1] & 0x3F | ((v204 & 0x1F) << 6);
                        v202 += 2;
                        v204 = v205;
                      }
                    }

                    else
                    {
                      ++v202;
                    }

                    if ((_pcre2_ucp_gentype_8[BYTE1(_pcre2_ucd_records_8[3 * _pcre2_ucd_stage2_8[v204 & 0x7F | (_pcre2_ucd_stage1_8[v204 >> 7] << 7)]])] == v195) != (v192 != 15))
                    {
                      goto LABEL_1093;
                    }

                    if (++v203 > v40)
                    {
                      goto LABEL_402;
                    }
                  }

                  v497 = *(a7 + 128);
                  if (!*(a7 + 128))
                  {
                    goto LABEL_1093;
                  }

                  if (v202 > *(a7 + 184))
                  {
                    goto LABEL_1092;
                  }

LABEL_1091:
                  if (!*(a7 + 84))
                  {
                    goto LABEL_1093;
                  }

                  goto LABEL_1092;
                }

                v447 = *(a7 + 168);
                v448 = *(v18 + 80);
                v449 = v192 == 15;
                v450 = 1;
                while (v448 < v447)
                {
                  *(v18 + 80) = v448 + 1;
                  v451 = *v448;
                  if (v17 && v451 >= 0xC0)
                  {
                    if ((v451 & 0x20) != 0)
                    {
                      v453 = v448[1] & 0x3F;
                      if ((v451 & 0x10) != 0)
                      {
                        if ((v451 & 8) != 0)
                        {
                          v454 = v448[2] & 0x3F;
                          v455 = v448[3] & 0x3F;
                          v456 = v448[4] & 0x3F;
                          if ((v451 & 4) != 0)
                          {
                            v451 = ((v451 & 1) << 30) | (v453 << 24) | (v454 << 18) | (v455 << 12) | (v456 << 6) | v448[5] & 0x3F;
                            v448 += 6;
                          }

                          else
                          {
                            v451 = ((v451 & 3) << 24) | (v453 << 18) | (v454 << 12) | (v455 << 6) | v456;
                            v448 += 5;
                          }
                        }

                        else
                        {
                          v451 = ((v451 & 7) << 18) | (v453 << 12) | ((v448[2] & 0x3F) << 6) | v448[3] & 0x3F;
                          v448 += 4;
                        }
                      }

                      else
                      {
                        v451 = ((v451 & 0xF) << 12) | (v453 << 6) | v448[2] & 0x3F;
                        v448 += 3;
                      }

                      *(v18 + 80) = v448;
                    }

                    else
                    {
                      *(v18 + 80) = v448 + 2;
                      v452 = v448[1] & 0x3F | ((v451 & 0x1F) << 6);
                      v448 += 2;
                      v451 = v452;
                    }
                  }

                  else
                  {
                    ++v448;
                  }

                  v457 = BYTE1(_pcre2_ucd_records_8[3 * _pcre2_ucd_stage2_8[v451 & 0x7F | (_pcre2_ucd_stage1_8[v451 >> 7] << 7)]]);
                  v459 = v457 == 5 || v457 == 9 || v457 == 8;
                  if (v459 == v449)
                  {
                    goto LABEL_1093;
                  }

                  if (++v450 > v40)
                  {
                    goto LABEL_402;
                  }
                }

                v497 = *(a7 + 128);
                if (!*(a7 + 128))
                {
                  goto LABEL_1093;
                }

                if (v448 <= *(a7 + 184))
                {
                  goto LABEL_1091;
                }
              }

              else
              {
                if (v192 == 15)
                {
                  goto LABEL_1093;
                }

                v480 = *(a7 + 168);
                v481 = *(v18 + 80);
                v482 = 1;
                while (v481 < v480)
                {
                  v483 = v481 + 1;
                  *(v18 + 80) = v481 + 1;
                  if (v17)
                  {
                    v484 = *v481;
                    if (v484 >= 0xC0)
                    {
                      v485 = 2;
                      v486 = 3;
                      v487 = 4;
                      v488 = 5;
                      if ((v484 & 4) != 0)
                      {
                        v488 = 6;
                      }

                      if ((v484 & 8) != 0)
                      {
                        v487 = v488;
                      }

                      if ((v484 & 0x10) != 0)
                      {
                        v486 = v487;
                      }

                      if ((v484 & 0x20) != 0)
                      {
                        v485 = v486;
                      }

                      v483 = &v481[v485];
                      *(v18 + 80) = v483;
                    }
                  }

                  ++v482;
                  v481 = v483;
                  if (v482 > v40)
                  {
                    goto LABEL_402;
                  }
                }

                v497 = *(a7 + 128);
                if (!*(a7 + 128))
                {
                  goto LABEL_1093;
                }

                if (v481 <= *(a7 + 184))
                {
                  goto LABEL_1091;
                }
              }

LABEL_1092:
              *(a7 + 76) = 1;
              if (v497 == 1)
              {
                goto LABEL_1093;
              }

              return 4294967294;
            }

            if (v194 == 3)
            {
              v489 = *(a7 + 168);
              v243 = *(v18 + 80);
              v490 = 1;
              while (v243 < v489)
              {
                *(v18 + 80) = v243 + 1;
                v491 = *v243;
                if (v17 && v491 >= 0xC0)
                {
                  if ((v491 & 0x20) != 0)
                  {
                    v493 = v243[1] & 0x3F;
                    if ((v491 & 0x10) != 0)
                    {
                      if ((v491 & 8) != 0)
                      {
                        v494 = v243[2] & 0x3F;
                        v495 = v243[3] & 0x3F;
                        v496 = v243[4] & 0x3F;
                        if ((v491 & 4) != 0)
                        {
                          v491 = ((v491 & 1) << 30) | (v493 << 24) | (v494 << 18) | (v495 << 12) | (v496 << 6) | v243[5] & 0x3F;
                          v243 += 6;
                        }

                        else
                        {
                          v491 = ((v491 & 3) << 24) | (v493 << 18) | (v494 << 12) | (v495 << 6) | v496;
                          v243 += 5;
                        }
                      }

                      else
                      {
                        v491 = ((v491 & 7) << 18) | (v493 << 12) | ((v243[2] & 0x3F) << 6) | v243[3] & 0x3F;
                        v243 += 4;
                      }
                    }

                    else
                    {
                      v491 = ((v491 & 0xF) << 12) | (v493 << 6) | v243[2] & 0x3F;
                      v243 += 3;
                    }

                    *(v18 + 80) = v243;
                  }

                  else
                  {
                    *(v18 + 80) = v243 + 2;
                    v492 = v243[1] & 0x3F | ((v491 & 0x1F) << 6);
                    v243 += 2;
                    v491 = v492;
                  }
                }

                else
                {
                  ++v243;
                }

                if ((v195 == BYTE1(_pcre2_ucd_records_8[3 * _pcre2_ucd_stage2_8[v491 & 0x7F | (_pcre2_ucd_stage1_8[v491 >> 7] << 7)]])) != (v192 != 15))
                {
                  goto LABEL_1093;
                }

                if (++v490 > v40)
                {
                  goto LABEL_402;
                }
              }
            }

            else if (v194 == 4)
            {
              v460 = *(a7 + 168);
              v243 = *(v18 + 80);
              v461 = 1;
              while (v243 < v460)
              {
                *(v18 + 80) = v243 + 1;
                v462 = *v243;
                if (v17 && v462 >= 0xC0)
                {
                  if ((v462 & 0x20) != 0)
                  {
                    v464 = v243[1] & 0x3F;
                    if ((v462 & 0x10) != 0)
                    {
                      if ((v462 & 8) != 0)
                      {
                        v465 = v243[2] & 0x3F;
                        v466 = v243[3] & 0x3F;
                        v467 = v243[4] & 0x3F;
                        if ((v462 & 4) != 0)
                        {
                          v462 = ((v462 & 1) << 30) | (v464 << 24) | (v465 << 18) | (v466 << 12) | (v467 << 6) | v243[5] & 0x3F;
                          v243 += 6;
                        }

                        else
                        {
                          v462 = ((v462 & 3) << 24) | (v464 << 18) | (v465 << 12) | (v466 << 6) | v467;
                          v243 += 5;
                        }
                      }

                      else
                      {
                        v462 = ((v462 & 7) << 18) | (v464 << 12) | ((v243[2] & 0x3F) << 6) | v243[3] & 0x3F;
                        v243 += 4;
                      }
                    }

                    else
                    {
                      v462 = ((v462 & 0xF) << 12) | (v464 << 6) | v243[2] & 0x3F;
                      v243 += 3;
                    }

                    *(v18 + 80) = v243;
                  }

                  else
                  {
                    *(v18 + 80) = v243 + 2;
                    v463 = v243[1] & 0x3F | ((v462 & 0x1F) << 6);
                    v243 += 2;
                    v462 = v463;
                  }
                }

                else
                {
                  ++v243;
                }

                if ((v195 == LOBYTE(_pcre2_ucd_records_8[3 * _pcre2_ucd_stage2_8[v462 & 0x7F | (_pcre2_ucd_stage1_8[v462 >> 7] << 7)]])) != (v192 != 15))
                {
                  goto LABEL_1093;
                }

                if (++v461 > v40)
                {
                  goto LABEL_402;
                }
              }
            }

            else
            {
              v260 = *(a7 + 168);
              v243 = *(v18 + 80);
              v261 = 1;
              while (v243 < v260)
              {
                *(v18 + 80) = v243 + 1;
                v262 = *v243;
                if (v17 && v262 >= 0xC0)
                {
                  if ((v262 & 0x20) != 0)
                  {
                    v264 = v243[1] & 0x3F;
                    if ((v262 & 0x10) != 0)
                    {
                      if ((v262 & 8) != 0)
                      {
                        v265 = v243[2] & 0x3F;
                        v266 = v243[3] & 0x3F;
                        v267 = v243[4] & 0x3F;
                        if ((v262 & 4) != 0)
                        {
                          v262 = ((v262 & 1) << 30) | (v264 << 24) | (v265 << 18) | (v266 << 12) | (v267 << 6) | v243[5] & 0x3F;
                          v243 += 6;
                        }

                        else
                        {
                          v262 = ((v262 & 3) << 24) | (v264 << 18) | (v265 << 12) | (v266 << 6) | v267;
                          v243 += 5;
                        }
                      }

                      else
                      {
                        v262 = ((v262 & 7) << 18) | (v264 << 12) | ((v243[2] & 0x3F) << 6) | v243[3] & 0x3F;
                        v243 += 4;
                      }
                    }

                    else
                    {
                      v262 = ((v262 & 0xF) << 12) | (v264 << 6) | v243[2] & 0x3F;
                      v243 += 3;
                    }

                    *(v18 + 80) = v243;
                  }

                  else
                  {
                    *(v18 + 80) = v243 + 2;
                    v263 = v243[1] & 0x3F | ((v262 & 0x1F) << 6);
                    v243 += 2;
                    v262 = v263;
                  }
                }

                else
                {
                  ++v243;
                }

                if (((_pcre2_ucp_gentype_8[BYTE1(_pcre2_ucd_records_8[3 * _pcre2_ucd_stage2_8[v262 & 0x7F | (_pcre2_ucd_stage1_8[v262 >> 7] << 7)]])] & 0xFFFFFFFD) == 1) != (v192 != 15))
                {
                  goto LABEL_1093;
                }

                if (++v261 > v40)
                {
                  goto LABEL_402;
                }
              }
            }

LABEL_1089:
            v497 = *(a7 + 128);
            if (!*(a7 + 128))
            {
              goto LABEL_1093;
            }

            if (v243 > *(a7 + 184))
            {
              goto LABEL_1092;
            }

            goto LABEL_1091;
          }

          if (v194 > 8)
          {
            if (v194 != 9)
            {
              if (v194 == 10)
              {
                v336 = *(a7 + 168);
                v337 = *(v18 + 80);
                v338 = v192 == 15;
                v339 = 1;
                while (v337 < v336)
                {
                  *(v18 + 80) = v337 + 1;
                  v340 = *v337;
                  if (v17 && v340 >= 0xC0)
                  {
                    if ((v340 & 0x20) != 0)
                    {
                      v342 = v337[1] & 0x3F;
                      if ((v340 & 0x10) != 0)
                      {
                        if ((v340 & 8) != 0)
                        {
                          v343 = v337[2] & 0x3F;
                          v344 = v337[3] & 0x3F;
                          v345 = v337[4] & 0x3F;
                          if ((v340 & 4) != 0)
                          {
                            v340 = ((v340 & 1) << 30) | (v342 << 24) | (v343 << 18) | (v344 << 12) | (v345 << 6) | v337[5] & 0x3F;
                            v337 += 6;
                          }

                          else
                          {
                            v340 = ((v340 & 3) << 24) | (v342 << 18) | (v343 << 12) | (v344 << 6) | v345;
                            v337 += 5;
                          }
                        }

                        else
                        {
                          v340 = ((v340 & 7) << 18) | (v342 << 12) | ((v337[2] & 0x3F) << 6) | v337[3] & 0x3F;
                          v337 += 4;
                        }
                      }

                      else
                      {
                        v340 = ((v340 & 0xF) << 12) | (v342 << 6) | v337[2] & 0x3F;
                        v337 += 3;
                      }

                      *(v18 + 80) = v337;
                    }

                    else
                    {
                      *(v18 + 80) = v337 + 2;
                      v341 = v337[1] & 0x3F | ((v340 & 0x1F) << 6);
                      v337 += 2;
                      v340 = v341;
                    }
                  }

                  else
                  {
                    ++v337;
                  }

                  if (v340 - 36 > 0x3C || ((1 << (v340 - 36)) & 0x1000000010000001) == 0)
                  {
                    v348 = (v340 - 160) >> 5;
                    v347 = v340 >> 13 > 6;
                    if (v348 < 0x6BB)
                    {
                      v347 = 1;
                    }
                  }

                  else
                  {
                    v347 = 1;
                  }

                  if (v347 == v338)
                  {
                    goto LABEL_3275;
                  }

                  if (++v339 > v40)
                  {
                    goto LABEL_402;
                  }
                }

                v615 = *(a7 + 128);
                if (!*(a7 + 128) || v337 <= *(a7 + 184) && !*(a7 + 84))
                {
                  goto LABEL_1093;
                }

                goto LABEL_1802;
              }

              return v22;
            }

            v468 = *(a7 + 168);
            v469 = *(v18 + 80);
            v470 = (&_pcre2_ucd_caseless_sets_8 + 4 * v195);
            v471 = 1;
            while (v469 < v468)
            {
              *(v18 + 80) = v469 + 1;
              v472 = *v469;
              if (v17 && v472 >= 0xC0)
              {
                if ((v472 & 0x20) != 0)
                {
                  v474 = v469[1] & 0x3F;
                  if ((v472 & 0x10) != 0)
                  {
                    if ((v472 & 8) != 0)
                    {
                      v475 = v469[2] & 0x3F;
                      v476 = v469[3] & 0x3F;
                      v477 = v469[4] & 0x3F;
                      if ((v472 & 4) != 0)
                      {
                        v472 = ((v472 & 1) << 30) | (v474 << 24) | (v475 << 18) | (v476 << 12) | (v477 << 6) | v469[5] & 0x3F;
                        v469 += 6;
                      }

                      else
                      {
                        v472 = ((v472 & 3) << 24) | (v474 << 18) | (v475 << 12) | (v476 << 6) | v477;
                        v469 += 5;
                      }
                    }

                    else
                    {
                      v472 = ((v472 & 7) << 18) | (v474 << 12) | ((v469[2] & 0x3F) << 6) | v469[3] & 0x3F;
                      v469 += 4;
                    }
                  }

                  else
                  {
                    v472 = ((v472 & 0xF) << 12) | (v474 << 6) | v469[2] & 0x3F;
                    v469 += 3;
                  }

                  *(v18 + 80) = v469;
                }

                else
                {
                  *(v18 + 80) = v469 + 2;
                  v473 = v469[1] & 0x3F | ((v472 & 0x1F) << 6);
                  v469 += 2;
                  v472 = v473;
                }
              }

              else
              {
                ++v469;
              }

              v478 = v470;
              while (1)
              {
                v479 = *v478;
                if (v472 < *v478)
                {
                  break;
                }

                ++v478;
                if (v472 == v479)
                {
                  if (v200 == 15)
                  {
                    goto LABEL_1093;
                  }

                  goto LABEL_1053;
                }
              }

              if (v192 != 15)
              {
                goto LABEL_1093;
              }

              v200 = 15;
LABEL_1053:
              if (++v471 > v40)
              {
                goto LABEL_402;
              }
            }

            v497 = *(a7 + 128);
            if (!*(a7 + 128))
            {
              goto LABEL_1093;
            }

            if (v469 <= *(a7 + 184))
            {
              goto LABEL_1091;
            }

            goto LABEL_1092;
          }

          if ((v194 - 6) >= 2)
          {
            if (v194 != 8)
            {
              return v22;
            }

            v437 = *(a7 + 168);
            v243 = *(v18 + 80);
            v438 = 1;
            while (v243 < v437)
            {
              *(v18 + 80) = v243 + 1;
              v439 = *v243;
              if (v17 && v439 >= 0xC0)
              {
                if ((v439 & 0x20) != 0)
                {
                  v441 = v243[1] & 0x3F;
                  if ((v439 & 0x10) != 0)
                  {
                    if ((v439 & 8) != 0)
                    {
                      v442 = v243[2] & 0x3F;
                      v443 = v243[3] & 0x3F;
                      v444 = v243[4] & 0x3F;
                      if ((v439 & 4) != 0)
                      {
                        v439 = ((v439 & 1) << 30) | (v441 << 24) | (v442 << 18) | (v443 << 12) | (v444 << 6) | v243[5] & 0x3F;
                        v243 += 6;
                      }

                      else
                      {
                        v439 = ((v439 & 3) << 24) | (v441 << 18) | (v442 << 12) | (v443 << 6) | v444;
                        v243 += 5;
                      }
                    }

                    else
                    {
                      v439 = ((v439 & 7) << 18) | (v441 << 12) | ((v243[2] & 0x3F) << 6) | v243[3] & 0x3F;
                      v243 += 4;
                    }
                  }

                  else
                  {
                    v439 = ((v439 & 0xF) << 12) | (v441 << 6) | v243[2] & 0x3F;
                    v243 += 3;
                  }

                  *(v18 + 80) = v243;
                }

                else
                {
                  *(v18 + 80) = v243 + 2;
                  v440 = v243[1] & 0x3F | ((v439 & 0x1F) << 6);
                  v243 += 2;
                  v439 = v440;
                }
              }

              else
              {
                ++v243;
              }

              v446 = v439 == 95 || (_pcre2_ucp_gentype_8[BYTE1(_pcre2_ucd_records_8[3 * _pcre2_ucd_stage2_8[v439 & 0x7F | (_pcre2_ucd_stage1_8[v439 >> 7] << 7)]])] & 0xFFFFFFFD) == 1;
              if (((v192 != 15) ^ v446))
              {
                goto LABEL_1093;
              }

              if (++v438 > v40)
              {
                goto LABEL_402;
              }
            }

            goto LABEL_1089;
          }

          v242 = *(a7 + 168);
          v243 = *(v18 + 80);
          v244 = 1;
          while (1)
          {
            if (v243 >= v242)
            {
              goto LABEL_1089;
            }

            *(v18 + 80) = v243 + 1;
            v245 = *v243;
            if (v17 && v245 >= 0xC0)
            {
              if ((v245 & 0x20) != 0)
              {
                v247 = v243[1] & 0x3F;
                if ((v245 & 0x10) != 0)
                {
                  if ((v245 & 8) != 0)
                  {
                    v248 = v243[2] & 0x3F;
                    v249 = v243[3] & 0x3F;
                    v250 = v243[4] & 0x3F;
                    if ((v245 & 4) != 0)
                    {
                      v245 = ((v245 & 1) << 30) | (v247 << 24) | (v248 << 18) | (v249 << 12) | (v250 << 6) | v243[5] & 0x3F;
                      v243 += 6;
                    }

                    else
                    {
                      v245 = ((v245 & 3) << 24) | (v247 << 18) | (v248 << 12) | (v249 << 6) | v250;
                      v243 += 5;
                    }
                  }

                  else
                  {
                    v245 = ((v245 & 7) << 18) | (v247 << 12) | ((v243[2] & 0x3F) << 6) | v243[3] & 0x3F;
                    v243 += 4;
                  }
                }

                else
                {
                  v245 = ((v245 & 0xF) << 12) | (v247 << 6) | v243[2] & 0x3F;
                  v243 += 3;
                }

                *(v18 + 80) = v243;
              }

              else
              {
                *(v18 + 80) = v243 + 2;
                v246 = v243[1] & 0x3F | ((v245 & 0x1F) << 6);
                v243 += 2;
                v245 = v246;
              }
            }

            else
            {
              ++v243;
            }

            if (v245 < 0x2000)
            {
              if (v245 > 132)
              {
                if (v245 > 5759)
                {
                  if (v245 == 5760 || v245 == 6158)
                  {
                    goto LABEL_474;
                  }
                }

                else if (v245 == 133 || v245 == 160)
                {
                  goto LABEL_474;
                }
              }

              else if (v245 <= 0x20 && ((1 << v245) & 0x100003E00) != 0)
              {
                goto LABEL_474;
              }
            }

            else if ((v245 - 0x2000) < 0xB || (v245 - 8232) <= 0x37 && ((1 << (v245 - 40)) & 0x80000000000083) != 0 || v245 == 12288)
            {
LABEL_474:
              if (v192 == 15)
              {
                goto LABEL_1093;
              }

              goto LABEL_475;
            }

            if ((_pcre2_ucp_gentype_8[BYTE1(_pcre2_ucd_records_8[3 * _pcre2_ucd_stage2_8[v245 & 0x7F | (_pcre2_ucd_stage1_8[v245 >> 7] << 7)]])] == 6) != (v192 != 15))
            {
              goto LABEL_1093;
            }

LABEL_475:
            if (++v244 > v40)
            {
              goto LABEL_402;
            }
          }
        }

        v13 = 2;
        v40 = 1;
LABEL_380:
        if (v192 == 22)
        {
          v210 = *(v18 + 80);
          v211 = *(a7 + 168);
          v212 = 1;
          while (v210 < v211)
          {
            v213 = v210 + 1;
            *(v18 + 80) = v210 + 1;
            v214 = *v210;
            if (v17 && v214 >= 0xC0)
            {
              if ((v214 & 0x20) != 0)
              {
                v215 = *v213 & 0x3F;
                if ((v214 & 0x10) != 0)
                {
                  if ((v214 & 8) != 0)
                  {
                    v216 = v210[2] & 0x3F;
                    v217 = v210[3] & 0x3F;
                    v218 = v210[4] & 0x3F;
                    if ((v214 & 4) != 0)
                    {
                      v214 = ((v214 & 1) << 30) | (v215 << 24) | (v216 << 18) | (v217 << 12) | (v218 << 6) | v210[5] & 0x3F;
                      v213 = v210 + 6;
                    }

                    else
                    {
                      v214 = ((v214 & 3) << 24) | (v215 << 18) | (v216 << 12) | (v217 << 6) | v218;
                      v213 = v210 + 5;
                    }
                  }

                  else
                  {
                    v214 = ((v214 & 7) << 18) | (v215 << 12) | ((v210[2] & 0x3F) << 6) | v210[3] & 0x3F;
                    v213 = v210 + 4;
                  }
                }

                else
                {
                  v214 = ((v214 & 0xF) << 12) | (v215 << 6) | v210[2] & 0x3F;
                  v213 = v210 + 3;
                }

                *(v18 + 80) = v213;
              }

              else
              {
                v213 = v210 + 2;
                *(v18 + 80) = v210 + 2;
                v214 = v210[1] & 0x3F | ((v214 & 0x1F) << 6);
              }
            }

            v210 = _pcre2_extuni_8(v214, v213, *(a7 + 152), v211, v1326, 0);
            *(v18 + 80) = v210;
            v211 = *(a7 + 168);
            if (v210 >= v211)
            {
              v219 = *(a7 + 128);
              if (*(a7 + 128))
              {
                if (v210 > *(a7 + 184) || *(a7 + 84))
                {
                  *(a7 + 76) = 1;
                  if (v219 != 1)
                  {
                    return 4294967294;
                  }
                }
              }
            }

            ++v212;
            v17 = v1327;
            if (v212 > *v191)
            {
              goto LABEL_401;
            }
          }

LABEL_1799:
          v615 = *(a7 + 128);
          if (*(a7 + 128))
          {
            if (v210 <= *(a7 + 184))
            {
              goto LABEL_1801;
            }

            goto LABEL_1802;
          }

          goto LABEL_3275;
        }

        v22 = 4294967252;
        if (v17)
        {
          switch(v192)
          {
            case 6:
              v233 = *(a7 + 168);
              v234 = *(v18 + 80);
              v235 = 1;
              while (v234 < v233)
              {
                *(v18 + 80) = v234 + 1;
                v236 = *v234;
                if (v236 < 0xC0)
                {
                  ++v234;
                }

                else if ((v236 & 0x20) != 0)
                {
                  v238 = v234[1] & 0x3F;
                  if ((v236 & 0x10) != 0)
                  {
                    if ((v236 & 8) != 0)
                    {
                      v239 = v234[2] & 0x3F;
                      v240 = v234[3] & 0x3F;
                      v241 = v234[4] & 0x3F;
                      if ((v236 & 4) != 0)
                      {
                        v236 = ((v236 & 1) << 30) | (v238 << 24) | (v239 << 18) | (v240 << 12) | (v241 << 6) | v234[5] & 0x3F;
                        v234 += 6;
                      }

                      else
                      {
                        v236 = ((v236 & 3) << 24) | (v238 << 18) | (v239 << 12) | (v240 << 6) | v241;
                        v234 += 5;
                      }
                    }

                    else
                    {
                      v236 = ((v236 & 7) << 18) | (v238 << 12) | ((v234[2] & 0x3F) << 6) | v234[3] & 0x3F;
                      v234 += 4;
                    }
                  }

                  else
                  {
                    v236 = ((v236 & 0xF) << 12) | (v238 << 6) | v234[2] & 0x3F;
                    v234 += 3;
                  }

                  *(v18 + 80) = v234;
                }

                else
                {
                  *(v18 + 80) = v234 + 2;
                  v237 = v234[1] & 0x3F | ((v236 & 0x1F) << 6);
                  v234 += 2;
                  v236 = v237;
                }

                if (v236 <= 0x7F && (*(*(a7 + 104) + v236) & 8) != 0)
                {
                  goto LABEL_3275;
                }

                ++v235;
                v194 = 0xFFFFFFFFLL;
                if (v235 > v40)
                {
                  goto LABEL_402;
                }
              }

              goto LABEL_1777;
            case 7:
              v729 = *(a7 + 168);
              v269 = *(v18 + 80);
              v730 = 1;
              while (v269 < v729)
              {
                v731 = *v269;
                if (v731 < 0 || (*(*(a7 + 104) + v731) & 8) == 0)
                {
                  goto LABEL_3275;
                }

                *(v18 + 80) = ++v269;
                ++v730;
                v194 = 0xFFFFFFFFLL;
                if (v730 > v40)
                {
                  goto LABEL_402;
                }
              }

              goto LABEL_1619;
            case 8:
              v725 = *(a7 + 168);
              v269 = *(v18 + 80);
              v726 = 1;
              while (v269 < v725)
              {
                v727 = *v269;
                if (v727 & 0x8000000000000000) == 0 && (*(*(a7 + 104) + v727))
                {
                  goto LABEL_3275;
                }

                v728 = v269 + 1;
                do
                {
                  v269 = v728;
                  *(v18 + 80) = v728;
                  if (v728 >= v725)
                  {
                    break;
                  }

                  ++v728;
                }

                while ((*v269 & 0xC0) == 0x80);
                ++v726;
                v194 = 0xFFFFFFFFLL;
                if (v726 > v40)
                {
                  goto LABEL_402;
                }
              }

              goto LABEL_1619;
            case 9:
              v750 = *(a7 + 168);
              v269 = *(v18 + 80);
              v751 = 1;
              while (v269 < v750)
              {
                v752 = *v269;
                if (v752 < 0 || (*(*(a7 + 104) + v752) & 1) == 0)
                {
                  goto LABEL_3275;
                }

                *(v18 + 80) = ++v269;
                ++v751;
                v194 = 0xFFFFFFFFLL;
                if (v751 > v40)
                {
                  goto LABEL_402;
                }
              }

              goto LABEL_1619;
            case 10:
              v768 = *(a7 + 168);
              v269 = *(v18 + 80);
              v769 = 1;
              while (v269 < v768)
              {
                v770 = *v269;
                if ((v770 & 0x8000000000000000) == 0 && (*(*(a7 + 104) + v770) & 0x10) != 0)
                {
                  goto LABEL_3275;
                }

                v771 = v269 + 1;
                do
                {
                  v269 = v771;
                  *(v18 + 80) = v771;
                  if (v771 >= v768)
                  {
                    break;
                  }

                  ++v771;
                }

                while ((*v269 & 0xC0) == 0x80);
                ++v769;
                v194 = 0xFFFFFFFFLL;
                if (v769 > v40)
                {
                  goto LABEL_402;
                }
              }

              goto LABEL_1619;
            case 11:
              v722 = *(a7 + 168);
              v269 = *(v18 + 80);
              v723 = 1;
              while (v269 < v722)
              {
                v724 = *v269;
                if (v724 < 0 || (*(*(a7 + 104) + v724) & 0x10) == 0)
                {
                  goto LABEL_3275;
                }

                *(v18 + 80) = ++v269;
                ++v723;
                v194 = 0xFFFFFFFFLL;
                if (v723 > v40)
                {
                  goto LABEL_402;
                }
              }

              goto LABEL_1619;
            case 12:
              v210 = *(v18 + 80);
              v762 = *(a7 + 168);
              v763 = 1;
              while (v210 < v762)
              {
                v764 = *(a7 + 252);
                if (v764)
                {
                  if (_pcre2_is_newline_8(v210, v764, v762, v1321, v1326))
                  {
                    goto LABEL_175;
                  }

                  v210 = *(v18 + 80);
                  v762 = *(a7 + 168);
                  v17 = v1327;
                }

                else
                {
                  v765 = *v1321;
                  if (v210 <= v762 - v765 && *v210 == *(a7 + 260) && (v765 == 1 || v210[1] == *(a7 + 261)))
                  {
                    goto LABEL_3275;
                  }
                }

                v766 = *(a7 + 128);
                v767 = v210 + 1;
                if (*(a7 + 128))
                {
                  if (v767 >= v762 && !*(a7 + 252) && *v1321 == 2 && *v210 == *(a7 + 260))
                  {
                    *(a7 + 76) = 1;
                    if (v766 != 1)
                    {
                      return 4294967294;
                    }
                  }
                }

                do
                {
                  v210 = v767;
                  *(v18 + 80) = v767;
                  if (v767 >= v762)
                  {
                    break;
                  }

                  ++v767;
                }

                while ((*v210 & 0xC0) == 0x80);
                ++v763;
                v194 = 0xFFFFFFFFLL;
                if (v763 > *v191)
                {
                  goto LABEL_402;
                }
              }

              goto LABEL_1799;
            case 13:
              v719 = *(a7 + 168);
              v234 = *(v18 + 80);
              v720 = 1;
              while (v234 < v719)
              {
                v721 = v234 + 1;
                do
                {
                  v234 = v721;
                  *(v18 + 80) = v721;
                  if (v721 >= v719)
                  {
                    break;
                  }

                  ++v721;
                }

                while ((*v234 & 0xC0) == 0x80);
                ++v720;
                v194 = 0xFFFFFFFFLL;
                if (v720 > v40)
                {
                  goto LABEL_402;
                }
              }

              goto LABEL_1777;
            case 14:
              v269 = *(v18 + 80);
              if (v269 <= *(a7 + 168) - v40)
              {
                goto LABEL_1748;
              }

              goto LABEL_3275;
            case 17:
              v772 = *(a7 + 168);
              v684 = *(v18 + 80);
              v773 = 1;
              while (1)
              {
                if (v684 >= v772)
                {
                  goto LABEL_1939;
                }

                v774 = v684 + 1;
                *(v18 + 80) = v684 + 1;
                v775 = *v684;
                if (v775 >= 0xC0)
                {
                  if ((v775 & 0x20) != 0)
                  {
                    v776 = *v774 & 0x3F;
                    if ((v775 & 0x10) != 0)
                    {
                      if ((v775 & 8) != 0)
                      {
                        v777 = v684[2] & 0x3F;
                        v778 = v684[3] & 0x3F;
                        v779 = v684[4] & 0x3F;
                        if ((v775 & 4) != 0)
                        {
                          v775 = ((v775 & 1) << 30) | (v776 << 24) | (v777 << 18) | (v778 << 12) | (v779 << 6) | v684[5] & 0x3F;
                          v774 = v684 + 6;
                        }

                        else
                        {
                          v775 = ((v775 & 3) << 24) | (v776 << 18) | (v777 << 12) | (v778 << 6) | v779;
                          v774 = v684 + 5;
                        }
                      }

                      else
                      {
                        v775 = ((v775 & 7) << 18) | (v776 << 12) | ((v684[2] & 0x3F) << 6) | v684[3] & 0x3F;
                        v774 = v684 + 4;
                      }
                    }

                    else
                    {
                      v775 = ((v775 & 0xF) << 12) | (v776 << 6) | v684[2] & 0x3F;
                      v774 = v684 + 3;
                    }

                    *(v18 + 80) = v774;
                  }

                  else
                  {
                    v774 = v684 + 2;
                    *(v18 + 80) = v684 + 2;
                    v775 = v684[1] & 0x3F | ((v775 & 0x1F) << 6);
                  }
                }

                if (v775 <= 12)
                {
                  if ((v775 - 11) < 2)
                  {
                    goto LABEL_1834;
                  }

                  if (v775 != 10)
                  {
                    goto LABEL_3275;
                  }
                }

                else
                {
                  if ((v775 - 8232) < 2 || v775 == 133)
                  {
LABEL_1834:
                    if (*(a7 + 130) == 2)
                    {
                      goto LABEL_3275;
                    }

                    goto LABEL_1835;
                  }

                  if (v775 != 13)
                  {
                    goto LABEL_3275;
                  }

                  if (v774 < v772 && *v774 == 10)
                  {
                    *(v18 + 80) = ++v774;
                  }
                }

LABEL_1835:
                ++v773;
                v194 = 0xFFFFFFFFLL;
                v684 = v774;
                if (v773 > v40)
                {
                  goto LABEL_402;
                }
              }

            case 18:
              v710 = *(a7 + 168);
              v711 = *(v18 + 80);
              v712 = 1;
              while (v711 < v710)
              {
                *(v18 + 80) = v711 + 1;
                v713 = *v711;
                if (v713 < 0xC0)
                {
                  ++v711;
                }

                else if ((v713 & 0x20) != 0)
                {
                  v715 = v711[1] & 0x3F;
                  if ((v713 & 0x10) != 0)
                  {
                    if ((v713 & 8) != 0)
                    {
                      v716 = v711[2] & 0x3F;
                      v717 = v711[3] & 0x3F;
                      v718 = v711[4] & 0x3F;
                      if ((v713 & 4) != 0)
                      {
                        v713 = ((v713 & 1) << 30) | (v715 << 24) | (v716 << 18) | (v717 << 12) | (v718 << 6) | v711[5] & 0x3F;
                        v711 += 6;
                      }

                      else
                      {
                        v713 = ((v713 & 3) << 24) | (v715 << 18) | (v716 << 12) | (v717 << 6) | v718;
                        v711 += 5;
                      }
                    }

                    else
                    {
                      v713 = ((v713 & 7) << 18) | (v715 << 12) | ((v711[2] & 0x3F) << 6) | v711[3] & 0x3F;
                      v711 += 4;
                    }
                  }

                  else
                  {
                    v713 = ((v713 & 0xF) << 12) | (v715 << 6) | v711[2] & 0x3F;
                    v711 += 3;
                  }

                  *(v18 + 80) = v711;
                }

                else
                {
                  *(v18 + 80) = v711 + 2;
                  v714 = v711[1] & 0x3F | ((v713 & 0x1F) << 6);
                  v711 += 2;
                  v713 = v714;
                }

                if (v713 < 0x2000)
                {
                  if (v713 <= 159)
                  {
                    if (v713 == 9 || v713 == 32)
                    {
                      goto LABEL_1908;
                    }
                  }

                  else if (v713 == 160 || v713 == 5760 || v713 == 6158)
                  {
                    goto LABEL_1908;
                  }
                }

                else if (v713 > 8238)
                {
                  if (v713 == 8239 || v713 == 8287 || v713 == 12288)
                  {
                    goto LABEL_1908;
                  }
                }

                else if ((v713 - 0x2000) < 0xB)
                {
                  goto LABEL_1908;
                }

                ++v712;
                v194 = 0xFFFFFFFFLL;
                if (v712 > v40)
                {
                  goto LABEL_402;
                }
              }

              v986 = *(a7 + 128);
              if (!*(a7 + 128))
              {
                goto LABEL_3275;
              }

              if (v711 > *(a7 + 184) || *(a7 + 84))
              {
                *(a7 + 76) = 1;
                if (v986 != 1)
                {
                  return 4294967294;
                }
              }

              goto LABEL_175;
            case 19:
              v732 = *(a7 + 168);
              v691 = *(v18 + 80);
              v733 = 1;
              break;
            case 20:
              v753 = *(a7 + 168);
              v234 = *(v18 + 80);
              v754 = 1;
              while (v234 < v753)
              {
                *(v18 + 80) = v234 + 1;
                v755 = *v234;
                if (v755 < 0xC0)
                {
                  ++v234;
                }

                else if ((v755 & 0x20) != 0)
                {
                  v757 = v234[1] & 0x3F;
                  if ((v755 & 0x10) != 0)
                  {
                    if ((v755 & 8) != 0)
                    {
                      v758 = v234[2] & 0x3F;
                      v759 = v234[3] & 0x3F;
                      v760 = v234[4] & 0x3F;
                      if ((v755 & 4) != 0)
                      {
                        v755 = ((v755 & 1) << 30) | (v757 << 24) | (v758 << 18) | (v759 << 12) | (v760 << 6) | v234[5] & 0x3F;
                        v234 += 6;
                      }

                      else
                      {
                        v755 = ((v755 & 3) << 24) | (v757 << 18) | (v758 << 12) | (v759 << 6) | v760;
                        v234 += 5;
                      }
                    }

                    else
                    {
                      v755 = ((v755 & 7) << 18) | (v757 << 12) | ((v234[2] & 0x3F) << 6) | v234[3] & 0x3F;
                      v234 += 4;
                    }
                  }

                  else
                  {
                    v755 = ((v755 & 0xF) << 12) | (v757 << 6) | v234[2] & 0x3F;
                    v234 += 3;
                  }

                  *(v18 + 80) = v234;
                }

                else
                {
                  *(v18 + 80) = v234 + 2;
                  v756 = v234[1] & 0x3F | ((v755 & 0x1F) << 6);
                  v234 += 2;
                  v755 = v756;
                }

                v761 = v755 - 10 >= 4 && v755 - 8232 >= 2;
                if (!v761 || v755 == 133)
                {
                  goto LABEL_1908;
                }

                ++v754;
                v194 = 0xFFFFFFFFLL;
                if (v754 > v40)
                {
                  goto LABEL_402;
                }
              }

              goto LABEL_1777;
            case 21:
              v741 = *(a7 + 168);
              v234 = *(v18 + 80);
              v742 = 1;
              while (v234 < v741)
              {
                *(v18 + 80) = v234 + 1;
                v743 = *v234;
                if (v743 < 0xC0)
                {
                  ++v234;
                }

                else if ((v743 & 0x20) != 0)
                {
                  v745 = v234[1] & 0x3F;
                  if ((v743 & 0x10) != 0)
                  {
                    if ((v743 & 8) != 0)
                    {
                      v746 = v234[2] & 0x3F;
                      v747 = v234[3] & 0x3F;
                      v748 = v234[4] & 0x3F;
                      if ((v743 & 4) != 0)
                      {
                        v743 = ((v743 & 1) << 30) | (v745 << 24) | (v746 << 18) | (v747 << 12) | (v748 << 6) | v234[5] & 0x3F;
                        v234 += 6;
                      }

                      else
                      {
                        v743 = ((v743 & 3) << 24) | (v745 << 18) | (v746 << 12) | (v747 << 6) | v748;
                        v234 += 5;
                      }
                    }

                    else
                    {
                      v743 = ((v743 & 7) << 18) | (v745 << 12) | ((v234[2] & 0x3F) << 6) | v234[3] & 0x3F;
                      v234 += 4;
                    }
                  }

                  else
                  {
                    v743 = ((v743 & 0xF) << 12) | (v745 << 6) | v234[2] & 0x3F;
                    v234 += 3;
                  }

                  *(v18 + 80) = v234;
                }

                else
                {
                  *(v18 + 80) = v234 + 2;
                  v744 = v234[1] & 0x3F | ((v743 & 0x1F) << 6);
                  v234 += 2;
                  v743 = v744;
                }

                v749 = v743 - 10 >= 4 && v743 - 8232 >= 2;
                if (v749 && v743 != 133)
                {
                  goto LABEL_1908;
                }

                ++v742;
                v194 = 0xFFFFFFFFLL;
                if (v742 > v40)
                {
                  goto LABEL_402;
                }
              }

LABEL_1777:
              v615 = *(a7 + 128);
              if (!*(a7 + 128))
              {
                goto LABEL_3275;
              }

              if (v234 <= *(a7 + 184))
              {
                goto LABEL_1801;
              }

              goto LABEL_1802;
            default:
              return v22;
          }

          while (1)
          {
            if (v691 >= v732)
            {
              goto LABEL_1722;
            }

            *(v18 + 80) = v691 + 1;
            v734 = *v691;
            if (v734 < 0xC0)
            {
              ++v691;
            }

            else if ((v734 & 0x20) != 0)
            {
              v736 = v691[1] & 0x3F;
              if ((v734 & 0x10) != 0)
              {
                if ((v734 & 8) != 0)
                {
                  v737 = v691[2] & 0x3F;
                  v738 = v691[3] & 0x3F;
                  v739 = v691[4] & 0x3F;
                  if ((v734 & 4) != 0)
                  {
                    v734 = ((v734 & 1) << 30) | (v736 << 24) | (v737 << 18) | (v738 << 12) | (v739 << 6) | v691[5] & 0x3F;
                    v691 += 6;
                  }

                  else
                  {
                    v734 = ((v734 & 3) << 24) | (v736 << 18) | (v737 << 12) | (v738 << 6) | v739;
                    v691 += 5;
                  }
                }

                else
                {
                  v734 = ((v734 & 7) << 18) | (v736 << 12) | ((v691[2] & 0x3F) << 6) | v691[3] & 0x3F;
                  v691 += 4;
                }
              }

              else
              {
                v734 = ((v734 & 0xF) << 12) | (v736 << 6) | v691[2] & 0x3F;
                v691 += 3;
              }

              *(v18 + 80) = v691;
            }

            else
            {
              *(v18 + 80) = v691 + 2;
              v735 = v691[1] & 0x3F | ((v734 & 0x1F) << 6);
              v691 += 2;
              v734 = v735;
            }

            if (v734 < 0x2000)
            {
              if (v734 > 159)
              {
                if (v734 == 160 || v734 == 5760)
                {
                  goto LABEL_1708;
                }

                v740 = 6158;
                goto LABEL_1717;
              }

              if (v734 != 9 && v734 != 32)
              {
                goto LABEL_1908;
              }
            }

            else
            {
              if (v734 <= 8238)
              {
                if ((v734 - 0x2000) >= 0xB)
                {
                  goto LABEL_1908;
                }

                goto LABEL_1708;
              }

              if (v734 != 8239 && v734 != 12288)
              {
                v740 = 8287;
LABEL_1717:
                if (v734 != v740)
                {
                  goto LABEL_1908;
                }
              }
            }

LABEL_1708:
            ++v733;
            v194 = 0xFFFFFFFFLL;
            if (v733 > v40)
            {
              goto LABEL_402;
            }
          }
        }

        switch(v192)
        {
          case 6:
            v268 = *(a7 + 168);
            v269 = *(v18 + 80);
            v270 = 1;
            while (v269 < v268)
            {
              if ((*(*(a7 + 104) + *v269) & 8) != 0)
              {
                goto LABEL_3275;
              }

              *(v18 + 80) = ++v269;
              ++v270;
              v194 = 0xFFFFFFFFLL;
              if (v270 > v40)
              {
                goto LABEL_402;
              }
            }

            goto LABEL_1619;
          case 7:
            v679 = *(a7 + 168);
            v269 = *(v18 + 80);
            v680 = 1;
            while (v269 < v679)
            {
              if ((*(*(a7 + 104) + *v269) & 8) == 0)
              {
                goto LABEL_3275;
              }

              *(v18 + 80) = ++v269;
              ++v680;
              v194 = 0xFFFFFFFFLL;
              if (v680 > v40)
              {
                goto LABEL_402;
              }
            }

            goto LABEL_1619;
          case 8:
            v688 = *(a7 + 168);
            v269 = *(v18 + 80);
            v689 = 1;
            while (v269 < v688)
            {
              if (*(*(a7 + 104) + *v269))
              {
                goto LABEL_3275;
              }

              *(v18 + 80) = ++v269;
              ++v689;
              v194 = 0xFFFFFFFFLL;
              if (v689 > v40)
              {
                goto LABEL_402;
              }
            }

            goto LABEL_1619;
          case 9:
            v681 = *(a7 + 168);
            v269 = *(v18 + 80);
            v682 = 1;
            while (v269 < v681)
            {
              if ((*(*(a7 + 104) + *v269) & 1) == 0)
              {
                goto LABEL_3275;
              }

              *(v18 + 80) = ++v269;
              ++v682;
              v194 = 0xFFFFFFFFLL;
              if (v682 > v40)
              {
                goto LABEL_402;
              }
            }

            goto LABEL_1619;
          case 10:
            v699 = *(a7 + 168);
            v269 = *(v18 + 80);
            v700 = 1;
            while (v269 < v699)
            {
              if ((*(*(a7 + 104) + *v269) & 0x10) != 0)
              {
                goto LABEL_3275;
              }

              *(v18 + 80) = ++v269;
              ++v700;
              v194 = 0xFFFFFFFFLL;
              if (v700 > v40)
              {
                goto LABEL_402;
              }
            }

            goto LABEL_1619;
          case 11:
            v677 = *(a7 + 168);
            v269 = *(v18 + 80);
            v678 = 1;
            while (v269 < v677)
            {
              if ((*(*(a7 + 104) + *v269) & 0x10) == 0)
              {
                goto LABEL_3275;
              }

              *(v18 + 80) = ++v269;
              ++v678;
              v194 = 0xFFFFFFFFLL;
              if (v678 > v40)
              {
                goto LABEL_402;
              }
            }

LABEL_1619:
            v615 = *(a7 + 128);
            if (!*(a7 + 128))
            {
              goto LABEL_3275;
            }

            if (v269 <= *(a7 + 184))
            {
              goto LABEL_1801;
            }

            goto LABEL_1802;
          case 12:
            v210 = *(v18 + 80);
            v694 = 1;
            while (1)
            {
              v695 = *(a7 + 168);
              if (v210 >= v695)
              {
                goto LABEL_1799;
              }

              v696 = *(a7 + 252);
              if (v696)
              {
                if (_pcre2_is_newline_8(v210, v696, v695, v1321, v1326))
                {
LABEL_175:
                  v23 = 0;
LABEL_176:
                  v17 = v1327;
                  goto LABEL_2516;
                }

                v210 = *(v18 + 80);
                v17 = v1327;
              }

              else
              {
                v697 = *v1321;
                if (v210 <= v695 - v697 && *v210 == *(a7 + 260) && (v697 == 1 || v210[1] == *(a7 + 261)))
                {
                  goto LABEL_3275;
                }
              }

              v698 = *(a7 + 128);
              if (*(a7 + 128))
              {
                if ((v210 + 1) >= *(a7 + 168) && !*(a7 + 252) && *v1321 == 2 && *v210 == *(a7 + 260))
                {
                  *(a7 + 76) = 1;
                  if (v698 != 1)
                  {
                    return 4294967294;
                  }
                }
              }

              *(v18 + 80) = ++v210;
              ++v694;
              v194 = 0xFFFFFFFFLL;
              if (v694 > *(v18 + 56))
              {
                goto LABEL_402;
              }
            }

          case 13:
            v269 = *(v18 + 80);
            if (v269 > *(a7 + 168) - v40)
            {
              goto LABEL_1619;
            }

LABEL_1748:
            *(v18 + 80) = &v269[v40];
            goto LABEL_401;
          case 17:
            v683 = *(a7 + 168);
            v684 = *(v18 + 80);
            v685 = 1;
            break;
          case 18:
            v701 = *(a7 + 168);
            v691 = *(v18 + 80);
            v702 = 1;
            while (v691 < v701)
            {
              *(v18 + 80) = v691 + 1;
              v703 = *v691;
              if (v703 == 9 || v703 == 32 || v703 == 160)
              {
                goto LABEL_1908;
              }

              ++v702;
              v194 = 0xFFFFFFFFLL;
              ++v691;
              if (v702 > v40)
              {
                goto LABEL_402;
              }
            }

            goto LABEL_1722;
          case 19:
            v707 = *(a7 + 168);
            v691 = *(v18 + 80);
            v708 = 1;
            while (v691 < v707)
            {
              *(v18 + 80) = v691 + 1;
              v709 = *v691;
              if (v709 != 9 && v709 != 160 && v709 != 32)
              {
                goto LABEL_1908;
              }

              ++v708;
              v194 = 0xFFFFFFFFLL;
              ++v691;
              if (v708 > v40)
              {
                goto LABEL_402;
              }
            }

            goto LABEL_1722;
          case 20:
            v690 = *(a7 + 168);
            v691 = *(v18 + 80);
            v692 = 1;
            while (v691 < v690)
            {
              *(v18 + 80) = v691 + 1;
              v693 = *v691;
              if ((v693 - 10) < 4 || v693 == 133)
              {
                goto LABEL_1908;
              }

              ++v692;
              v194 = 0xFFFFFFFFLL;
              ++v691;
              if (v692 > v40)
              {
                goto LABEL_402;
              }
            }

            goto LABEL_1722;
          case 21:
            v704 = *(a7 + 168);
            v691 = *(v18 + 80);
            v705 = 1;
            while (v691 < v704)
            {
              *(v18 + 80) = v691 + 1;
              v706 = *v691;
              if ((v706 - 10) >= 4 && v706 != 133)
              {
                goto LABEL_1908;
              }

              ++v705;
              v194 = 0xFFFFFFFFLL;
              ++v691;
              if (v705 > v40)
              {
                goto LABEL_402;
              }
            }

LABEL_1722:
            v615 = *(a7 + 128);
            if (*(a7 + 128))
            {
              if (v691 <= *(a7 + 184))
              {
                goto LABEL_1801;
              }

              goto LABEL_1802;
            }

            goto LABEL_3275;
          default:
            return v22;
        }

        while (1)
        {
          if (v684 >= v683)
          {
LABEL_1939:
            v615 = *(a7 + 128);
            if (*(a7 + 128))
            {
              if (v684 > *(a7 + 184))
              {
                goto LABEL_1802;
              }

LABEL_1801:
              if (*(a7 + 84))
              {
LABEL_1802:
                *(a7 + 76) = 1;
                if (v615 != 1)
                {
                  return 4294967294;
                }
              }
            }

            goto LABEL_3275;
          }

          v686 = v684 + 1;
          *(v18 + 80) = v684 + 1;
          v687 = *v684;
          if (v687 > 0xC)
          {
            if (v687 == 133)
            {
LABEL_1569:
              if (*(a7 + 130) == 2)
              {
                goto LABEL_3275;
              }

              goto LABEL_1570;
            }

            if (v687 != 13)
            {
              goto LABEL_3275;
            }

            if (v686 < v683 && *v686 == 10)
            {
              v686 = v684 + 2;
              *(v18 + 80) = v684 + 2;
            }
          }

          else
          {
            if (v687 - 11 < 2)
            {
              goto LABEL_1569;
            }

            if (v687 != 10)
            {
              goto LABEL_3275;
            }
          }

LABEL_1570:
          ++v685;
          v194 = 0xFFFFFFFFLL;
          v684 = v686;
          if (v685 > v40)
          {
            goto LABEL_402;
          }
        }

      case 0x60u:
        v40 = 0;
        v141 = 0x100000000;
LABEL_350:
        *(v18 + 56) = v141;
        v38 = v20 + 1;
        goto LABEL_351;
      case 0x61u:
        v40 = 0;
        *(v18 + 56) = 0;
        *(v18 + 60) = __rev16(*(v20 + 1));
        v38 = v20 + 3;
LABEL_351:
        *v18 = v38;
        v13 = 2;
LABEL_354:
        *v18 = v38 + 1;
        v192 = *v38;
        *(v18 + 64) = v192;
        v193 = (v18 + 64);
        if ((v192 - 15) >= 2)
        {
          if (v40)
          {
            v191 = (v18 + 56);
            goto LABEL_380;
          }

LABEL_401:
          v194 = 0xFFFFFFFFLL;
        }

        else
        {
          *v18 = v38 + 2;
          v194 = v38[1];
          *v18 = v38 + 3;
          v195 = v38[2];
          *(v18 + 68) = v195;
          if (v40)
          {
            goto LABEL_356;
          }
        }

LABEL_402:
        v220 = v13;
        v222 = *(v18 + 56);
        v221 = *(v18 + 60);
        v223 = v221 - v222;
        if (v221 == v222)
        {
          continue;
        }

        if (!v13)
        {
          v8 = a6;
          if ((v194 & 0x80000000) == 0)
          {
            v13 = 0;
            v22 = 4294967252;
            if (v194 <= 5)
            {
              if (v194 > 2)
              {
                if (v194 == 3)
                {
LABEL_3416:
                  v14 = 0;
                  a2 = *v18;
                  v1287 = -45;
                  goto LABEL_3352;
                }

                if (v194 == 4)
                {
LABEL_3417:
                  v14 = 0;
                  a2 = *v18;
                  v1287 = -44;
                  goto LABEL_3352;
                }

LABEL_3480:
                v14 = 0;
                a2 = *v18;
                v1287 = -43;
                goto LABEL_3351;
              }

              switch(v194)
              {
                case 0:
                  v13 = v194;
LABEL_3423:
                  v14 = 0;
                  a2 = *v18;
                  v1287 = -48;
                  goto LABEL_3352;
                case 1:
LABEL_3421:
                  v14 = 0;
                  a2 = *v18;
                  v1287 = -47;
                  goto LABEL_3352;
                case 2:
LABEL_3387:
                  v14 = 0;
                  a2 = *v18;
                  v1287 = -46;
                  goto LABEL_3351;
              }

              return v22;
            }

            if (v194 <= 8)
            {
              if ((v194 - 6) >= 2)
              {
                if (v194 == 8)
                {
LABEL_3496:
                  v14 = 0;
                  a2 = *v18;
                  v1287 = -41;
                  goto LABEL_3351;
                }

                return v22;
              }

LABEL_3437:
              v14 = 0;
              a2 = *v18;
              v1287 = -42;
              goto LABEL_3352;
            }

            if (v194 == 9)
            {
LABEL_3420:
              v14 = 0;
              a2 = *v18;
              v1287 = -40;
              goto LABEL_3352;
            }

            if (v194 != 10)
            {
              return v22;
            }

LABEL_3485:
            v14 = 0;
            a2 = *v18;
            v1287 = -39;
            goto LABEL_3351;
          }

          if (*v193 == 22)
          {
            v13 = 0;
            goto LABEL_3522;
          }

          v13 = 0;
          if (v17)
          {
LABEL_3477:
            v14 = 0;
            a2 = *v18;
            v1287 = -37;
            goto LABEL_3351;
          }

LABEL_3527:
          v14 = 0;
          a2 = *v18;
          v1287 = 33;
          goto LABEL_3351;
        }

        v224 = *(v18 + 80);
        *(v18 + 8) = v224;
        if ((v194 & 0x80000000) == 0)
        {
          v22 = 4294967252;
          if (v194 <= 5)
          {
            if (v194 > 2)
            {
              if (v194 == 3)
              {
                v303 = v221 >= v222;
                v604 = v221 - v222;
                if (v604 != 0 && v303)
                {
                  v605 = *(a7 + 168);
                  while (v224 < v605)
                  {
                    v606 = *v224;
                    v607 = 1;
                    if (v17 && v606 >= 0xC0)
                    {
                      v608 = v224[1] & 0x3F;
                      if ((v606 & 0x20) != 0)
                      {
                        if ((v606 & 0x10) != 0)
                        {
                          if ((v606 & 8) != 0)
                          {
                            v609 = v224[2] & 0x3F;
                            v610 = v224[3] & 0x3F;
                            v611 = v224[4] & 0x3F;
                            if ((v606 & 4) != 0)
                            {
                              v606 = ((v606 & 1) << 30) | (v608 << 24) | (v609 << 18) | (v610 << 12) | (v611 << 6) | v224[5] & 0x3F;
                              v607 = 6;
                            }

                            else
                            {
                              v606 = ((v606 & 3) << 24) | (v608 << 18) | (v609 << 12) | (v610 << 6) | v611;
                              v607 = 5;
                            }
                          }

                          else
                          {
                            v606 = ((v606 & 7) << 18) | (v608 << 12) | ((v224[2] & 0x3F) << 6) | v224[3] & 0x3F;
                            v607 = 4;
                          }
                        }

                        else
                        {
                          v606 = ((v606 & 0xF) << 12) | (v608 << 6) | v224[2] & 0x3F;
                          v607 = 3;
                        }
                      }

                      else
                      {
                        v607 = 2;
                        v606 = v224[1] & 0x3F | ((v606 & 0x1F) << 6);
                      }
                    }

                    if ((*(v18 + 68) == BYTE1(_pcre2_ucd_records_8[3 * _pcre2_ucd_stage2_8[v606 & 0x7F | (_pcre2_ucd_stage1_8[v606 >> 7] << 7)]])) == (*(v18 + 64) != 15))
                    {
                      v224 += v607;
                      *(v18 + 80) = v224;
                      if (--v604)
                      {
                        continue;
                      }
                    }

                    goto LABEL_1392;
                  }

                  goto LABEL_1388;
                }
              }

              else if (v194 == 4)
              {
                v303 = v221 >= v222;
                v579 = v221 - v222;
                if (v579 != 0 && v303)
                {
                  v580 = *(a7 + 168);
                  while (v224 < v580)
                  {
                    v581 = *v224;
                    v582 = 1;
                    if (v17 && v581 >= 0xC0)
                    {
                      v583 = v224[1] & 0x3F;
                      if ((v581 & 0x20) != 0)
                      {
                        if ((v581 & 0x10) != 0)
                        {
                          if ((v581 & 8) != 0)
                          {
                            v584 = v224[2] & 0x3F;
                            v585 = v224[3] & 0x3F;
                            v586 = v224[4] & 0x3F;
                            if ((v581 & 4) != 0)
                            {
                              v581 = ((v581 & 1) << 30) | (v583 << 24) | (v584 << 18) | (v585 << 12) | (v586 << 6) | v224[5] & 0x3F;
                              v582 = 6;
                            }

                            else
                            {
                              v581 = ((v581 & 3) << 24) | (v583 << 18) | (v584 << 12) | (v585 << 6) | v586;
                              v582 = 5;
                            }
                          }

                          else
                          {
                            v581 = ((v581 & 7) << 18) | (v583 << 12) | ((v224[2] & 0x3F) << 6) | v224[3] & 0x3F;
                            v582 = 4;
                          }
                        }

                        else
                        {
                          v581 = ((v581 & 0xF) << 12) | (v583 << 6) | v224[2] & 0x3F;
                          v582 = 3;
                        }
                      }

                      else
                      {
                        v582 = 2;
                        v581 = v224[1] & 0x3F | ((v581 & 0x1F) << 6);
                      }
                    }

                    if ((*(v18 + 68) == LOBYTE(_pcre2_ucd_records_8[3 * _pcre2_ucd_stage2_8[v581 & 0x7F | (_pcre2_ucd_stage1_8[v581 >> 7] << 7)]])) == (*(v18 + 64) != 15))
                    {
                      v224 += v582;
                      *(v18 + 80) = v224;
                      if (--v579)
                      {
                        continue;
                      }
                    }

                    goto LABEL_1392;
                  }

                  goto LABEL_1388;
                }
              }

              else
              {
                v303 = v221 >= v222;
                v365 = v221 - v222;
                if (v365 != 0 && v303)
                {
                  v366 = *(a7 + 168);
                  while (v224 < v366)
                  {
                    v367 = *v224;
                    v368 = 1;
                    if (v17 && v367 >= 0xC0)
                    {
                      v369 = v224[1] & 0x3F;
                      if ((v367 & 0x20) != 0)
                      {
                        if ((v367 & 0x10) != 0)
                        {
                          if ((v367 & 8) != 0)
                          {
                            v370 = v224[2] & 0x3F;
                            v371 = v224[3] & 0x3F;
                            v372 = v224[4] & 0x3F;
                            if ((v367 & 4) != 0)
                            {
                              v367 = ((v367 & 1) << 30) | (v369 << 24) | (v370 << 18) | (v371 << 12) | (v372 << 6) | v224[5] & 0x3F;
                              v368 = 6;
                            }

                            else
                            {
                              v367 = ((v367 & 3) << 24) | (v369 << 18) | (v370 << 12) | (v371 << 6) | v372;
                              v368 = 5;
                            }
                          }

                          else
                          {
                            v367 = ((v367 & 7) << 18) | (v369 << 12) | ((v224[2] & 0x3F) << 6) | v224[3] & 0x3F;
                            v368 = 4;
                          }
                        }

                        else
                        {
                          v367 = ((v367 & 0xF) << 12) | (v369 << 6) | v224[2] & 0x3F;
                          v368 = 3;
                        }
                      }

                      else
                      {
                        v368 = 2;
                        v367 = v224[1] & 0x3F | ((v367 & 0x1F) << 6);
                      }
                    }

                    if (((_pcre2_ucp_gentype_8[BYTE1(_pcre2_ucd_records_8[3 * _pcre2_ucd_stage2_8[v367 & 0x7F | (_pcre2_ucd_stage1_8[v367 >> 7] << 7)]])] & 0xFFFFFFFD) == 1) == (*v193 != 15))
                    {
                      v224 += v368;
                      *(v18 + 80) = v224;
                      if (--v365)
                      {
                        continue;
                      }
                    }

                    goto LABEL_1392;
                  }

                  goto LABEL_1388;
                }
              }
            }

            else if (v194)
            {
              if (v194 == 1)
              {
                v303 = v221 >= v222;
                v568 = v221 - v222;
                if (v568 != 0 && v303)
                {
                  v569 = *(a7 + 168);
                  while (v224 < v569)
                  {
                    v570 = *v224;
                    v571 = 1;
                    if (v17 && v570 >= 0xC0)
                    {
                      v572 = v224[1] & 0x3F;
                      if ((v570 & 0x20) != 0)
                      {
                        if ((v570 & 0x10) != 0)
                        {
                          if ((v570 & 8) != 0)
                          {
                            v573 = v224[2] & 0x3F;
                            v574 = v224[3] & 0x3F;
                            v575 = v224[4] & 0x3F;
                            if ((v570 & 4) != 0)
                            {
                              v570 = ((v570 & 1) << 30) | (v572 << 24) | (v573 << 18) | (v574 << 12) | (v575 << 6) | v224[5] & 0x3F;
                              v571 = 6;
                            }

                            else
                            {
                              v570 = ((v570 & 3) << 24) | (v572 << 18) | (v573 << 12) | (v574 << 6) | v575;
                              v571 = 5;
                            }
                          }

                          else
                          {
                            v570 = ((v570 & 7) << 18) | (v572 << 12) | ((v224[2] & 0x3F) << 6) | v224[3] & 0x3F;
                            v571 = 4;
                          }
                        }

                        else
                        {
                          v570 = ((v570 & 0xF) << 12) | (v572 << 6) | v224[2] & 0x3F;
                          v571 = 3;
                        }
                      }

                      else
                      {
                        v571 = 2;
                        v570 = v224[1] & 0x3F | ((v570 & 0x1F) << 6);
                      }
                    }

                    v576 = BYTE1(_pcre2_ucd_records_8[3 * _pcre2_ucd_stage2_8[v570 & 0x7F | (_pcre2_ucd_stage1_8[v570 >> 7] << 7)]]);
                    v578 = v576 == 5 || v576 == 9 || v576 == 8;
                    if (v578 != (*v193 == 15))
                    {
                      v224 += v571;
                      *(v18 + 80) = v224;
                      if (--v568)
                      {
                        continue;
                      }
                    }

                    goto LABEL_1392;
                  }

                  goto LABEL_1388;
                }
              }

              else
              {
                if (v194 != 2)
                {
                  return v22;
                }

                v303 = v221 >= v222;
                v225 = v221 - v222;
                if (v225 == 0 || !v303)
                {
                  goto LABEL_1392;
                }

                v226 = *(a7 + 168);
                while (v224 < v226)
                {
                  v227 = *v224;
                  v228 = 1;
                  if (v17 && v227 >= 0xC0)
                  {
                    v229 = v224[1] & 0x3F;
                    if ((v227 & 0x20) != 0)
                    {
                      if ((v227 & 0x10) != 0)
                      {
                        if ((v227 & 8) != 0)
                        {
                          v230 = v224[2] & 0x3F;
                          v231 = v224[3] & 0x3F;
                          v232 = v224[4] & 0x3F;
                          if ((v227 & 4) != 0)
                          {
                            v227 = ((v227 & 1) << 30) | (v229 << 24) | (v230 << 18) | (v231 << 12) | (v232 << 6) | v224[5] & 0x3F;
                            v228 = 6;
                          }

                          else
                          {
                            v227 = ((v227 & 3) << 24) | (v229 << 18) | (v230 << 12) | (v231 << 6) | v232;
                            v228 = 5;
                          }
                        }

                        else
                        {
                          v227 = ((v227 & 7) << 18) | (v229 << 12) | ((v224[2] & 0x3F) << 6) | v224[3] & 0x3F;
                          v228 = 4;
                        }
                      }

                      else
                      {
                        v227 = ((v227 & 0xF) << 12) | (v229 << 6) | v224[2] & 0x3F;
                        v228 = 3;
                      }
                    }

                    else
                    {
                      v228 = 2;
                      v227 = v224[1] & 0x3F | ((v227 & 0x1F) << 6);
                    }
                  }

                  if ((_pcre2_ucp_gentype_8[BYTE1(_pcre2_ucd_records_8[3 * _pcre2_ucd_stage2_8[v227 & 0x7F | (_pcre2_ucd_stage1_8[v227 >> 7] << 7)]])] == *(v18 + 68)) == (*(v18 + 64) != 15))
                  {
                    v224 += v228;
                    *(v18 + 80) = v224;
                    if (--v225)
                    {
                      continue;
                    }
                  }

                  goto LABEL_1392;
                }

LABEL_1388:
                v612 = *(a7 + 128);
                if (*(a7 + 128) && (v224 > *(a7 + 184) || *(a7 + 84)))
                {
                  *(a7 + 76) = 1;
                  if (v612 != 1)
                  {
                    return 4294967294;
                  }
                }
              }
            }

            else
            {
              v303 = v221 >= v222;
              v596 = v221 - v222;
              if (v596 != 0 && v303)
              {
                v597 = *(a7 + 168);
                while (v224 < v597)
                {
                  v598 = 1;
                  if (v17)
                  {
                    v599 = *v224;
                    v600 = 2;
                    v601 = 3;
                    v602 = 4;
                    v603 = 5;
                    if ((v599 & 4) != 0)
                    {
                      v603 = 6;
                    }

                    if ((v599 & 8) != 0)
                    {
                      v602 = v603;
                    }

                    if ((v599 & 0x10) != 0)
                    {
                      v601 = v602;
                    }

                    if ((v599 & 0x20) != 0)
                    {
                      v600 = v601;
                    }

                    if (v599 >= 0xC0)
                    {
                      v598 = v600;
                    }
                  }

                  if (*v193 != 15)
                  {
                    v224 += v598;
                    *(v18 + 80) = v224;
                    if (--v596)
                    {
                      continue;
                    }
                  }

                  goto LABEL_1392;
                }

                goto LABEL_1388;
              }
            }

            goto LABEL_1392;
          }

          if (v194 > 8)
          {
            if (v194 != 9)
            {
              if (v194 != 10)
              {
                return v22;
              }

              v303 = v221 >= v222;
              v403 = v221 - v222;
              if (v403 == 0 || !v303)
              {
                goto LABEL_1392;
              }

              v404 = *(a7 + 168);
              while (v224 < v404)
              {
                v405 = *v224;
                v406 = 1;
                if (v17 && v405 >= 0xC0)
                {
                  v407 = v224[1] & 0x3F;
                  if ((v405 & 0x20) != 0)
                  {
                    if ((v405 & 0x10) != 0)
                    {
                      if ((v405 & 8) != 0)
                      {
                        v408 = v224[2] & 0x3F;
                        v409 = v224[3] & 0x3F;
                        v410 = v224[4] & 0x3F;
                        if ((v405 & 4) != 0)
                        {
                          v405 = ((v405 & 1) << 30) | (v407 << 24) | (v408 << 18) | (v409 << 12) | (v410 << 6) | v224[5] & 0x3F;
                          v406 = 6;
                        }

                        else
                        {
                          v405 = ((v405 & 3) << 24) | (v407 << 18) | (v408 << 12) | (v409 << 6) | v410;
                          v406 = 5;
                        }
                      }

                      else
                      {
                        v405 = ((v405 & 7) << 18) | (v407 << 12) | ((v224[2] & 0x3F) << 6) | v224[3] & 0x3F;
                        v406 = 4;
                      }
                    }

                    else
                    {
                      v405 = ((v405 & 0xF) << 12) | (v407 << 6) | v224[2] & 0x3F;
                      v406 = 3;
                    }
                  }

                  else
                  {
                    v406 = 2;
                    v405 = v224[1] & 0x3F | ((v405 & 0x1F) << 6);
                  }
                }

                v411 = v405 - 36;
                v412 = (v405 - 160) >> 5;
                v413 = v405 >> 13 > 6;
                if (v412 < 0x6BB)
                {
                  v413 = 1;
                }

                v74 = v411 > 0x3C;
                v414 = (1 << v411) & 0x1000000010000001;
                if (!v74 && v414 != 0)
                {
                  v413 = 1;
                }

                if (v413 != (*v193 == 15))
                {
                  v224 += v406;
                  *(v18 + 80) = v224;
                  if (--v403)
                  {
                    continue;
                  }
                }

                goto LABEL_1392;
              }

              goto LABEL_1388;
            }

            if (v221 > v222)
            {
              v587 = *(a7 + 168);
              while (v224 < v587)
              {
                v588 = *v224;
                v589 = 1;
                if (v17 && v588 >= 0xC0)
                {
                  v590 = v224[1] & 0x3F;
                  if ((v588 & 0x20) != 0)
                  {
                    if ((v588 & 0x10) != 0)
                    {
                      if ((v588 & 8) != 0)
                      {
                        v591 = v224[2] & 0x3F;
                        v592 = v224[3] & 0x3F;
                        v593 = v224[4] & 0x3F;
                        if ((v588 & 4) != 0)
                        {
                          v588 = ((v588 & 1) << 30) | (v590 << 24) | (v591 << 18) | (v592 << 12) | (v593 << 6) | v224[5] & 0x3F;
                          v589 = 6;
                        }

                        else
                        {
                          v588 = ((v588 & 3) << 24) | (v590 << 18) | (v591 << 12) | (v592 << 6) | v593;
                          v589 = 5;
                        }
                      }

                      else
                      {
                        v588 = ((v588 & 7) << 18) | (v590 << 12) | ((v224[2] & 0x3F) << 6) | v224[3] & 0x3F;
                        v589 = 4;
                      }
                    }

                    else
                    {
                      v588 = ((v588 & 0xF) << 12) | (v590 << 6) | v224[2] & 0x3F;
                      v589 = 3;
                    }
                  }

                  else
                  {
                    v589 = 2;
                    v588 = v224[1] & 0x3F | ((v588 & 0x1F) << 6);
                  }
                }

                v594 = (&_pcre2_ucd_caseless_sets_8 + 4 * *(v18 + 68));
                while (1)
                {
                  v595 = *v594;
                  if (v588 < *v594)
                  {
                    break;
                  }

                  ++v594;
                  if (v588 == v595)
                  {
                    if (*v193 == 15)
                    {
                      goto LABEL_1392;
                    }

                    goto LABEL_1350;
                  }
                }

                if (*v193 != 15)
                {
                  goto LABEL_1392;
                }

LABEL_1350:
                v224 += v589;
                *(v18 + 80) = v224;
                if (++v222 == v221)
                {
                  goto LABEL_1392;
                }
              }

              goto LABEL_1388;
            }

LABEL_1392:
            v13 = 2;
            if (v220 != 2)
            {
              v613 = *(v18 + 80);
              v13 = v220;
LABEL_1394:
              if (v613 > *(v18 + 8))
              {
                v14 = 0;
                a2 = *v18;
                v1287 = -34;
                goto LABEL_3351;
              }
            }

            continue;
          }

          if ((v194 - 6) >= 2)
          {
            if (v194 != 8)
            {
              return v22;
            }

            v303 = v221 >= v222;
            v558 = v221 - v222;
            if (v558 == 0 || !v303)
            {
              goto LABEL_1392;
            }

            v559 = *(a7 + 168);
            while (v224 < v559)
            {
              v560 = *v224;
              v561 = 1;
              if (v17 && v560 >= 0xC0)
              {
                v562 = v224[1] & 0x3F;
                if ((v560 & 0x20) != 0)
                {
                  if ((v560 & 0x10) != 0)
                  {
                    if ((v560 & 8) != 0)
                    {
                      v563 = v224[2] & 0x3F;
                      v564 = v224[3] & 0x3F;
                      v565 = v224[4] & 0x3F;
                      if ((v560 & 4) != 0)
                      {
                        v560 = ((v560 & 1) << 30) | (v562 << 24) | (v563 << 18) | (v564 << 12) | (v565 << 6) | v224[5] & 0x3F;
                        v561 = 6;
                      }

                      else
                      {
                        v560 = ((v560 & 3) << 24) | (v562 << 18) | (v563 << 12) | (v564 << 6) | v565;
                        v561 = 5;
                      }
                    }

                    else
                    {
                      v560 = ((v560 & 7) << 18) | (v562 << 12) | ((v224[2] & 0x3F) << 6) | v224[3] & 0x3F;
                      v561 = 4;
                    }
                  }

                  else
                  {
                    v560 = ((v560 & 0xF) << 12) | (v562 << 6) | v224[2] & 0x3F;
                    v561 = 3;
                  }
                }

                else
                {
                  v561 = 2;
                  v560 = v224[1] & 0x3F | ((v560 & 0x1F) << 6);
                }
              }

              v567 = v560 == 95 || (_pcre2_ucp_gentype_8[BYTE1(_pcre2_ucd_records_8[3 * _pcre2_ucd_stage2_8[v560 & 0x7F | (_pcre2_ucd_stage1_8[v560 >> 7] << 7)]])] & 0xFFFFFFFD) == 1;
              if ((((*v193 != 15) ^ v567) & 1) == 0)
              {
                v224 += v561;
                *(v18 + 80) = v224;
                if (--v558)
                {
                  continue;
                }
              }

              goto LABEL_1392;
            }

            goto LABEL_1388;
          }

          v303 = v221 >= v222;
          v271 = v221 - v222;
          if (v271 == 0 || !v303)
          {
            goto LABEL_1392;
          }

          v272 = *(a7 + 168);
          while (2)
          {
            if (v224 >= v272)
            {
              goto LABEL_1388;
            }

            v273 = *v224;
            v274 = 1;
            if (v17 && v273 >= 0xC0)
            {
              v275 = v224[1] & 0x3F;
              if ((v273 & 0x20) != 0)
              {
                if ((v273 & 0x10) != 0)
                {
                  if ((v273 & 8) != 0)
                  {
                    v276 = v224[2] & 0x3F;
                    v277 = v224[3] & 0x3F;
                    v278 = v224[4] & 0x3F;
                    if ((v273 & 4) != 0)
                    {
                      v273 = ((v273 & 1) << 30) | (v275 << 24) | (v276 << 18) | (v277 << 12) | (v278 << 6) | v224[5] & 0x3F;
                      v274 = 6;
                    }

                    else
                    {
                      v273 = ((v273 & 3) << 24) | (v275 << 18) | (v276 << 12) | (v277 << 6) | v278;
                      v274 = 5;
                    }
                  }

                  else
                  {
                    v273 = ((v273 & 7) << 18) | (v275 << 12) | ((v224[2] & 0x3F) << 6) | v224[3] & 0x3F;
                    v274 = 4;
                  }
                }

                else
                {
                  v273 = ((v273 & 0xF) << 12) | (v275 << 6) | v224[2] & 0x3F;
                  v274 = 3;
                }
              }

              else
              {
                v274 = 2;
                v273 = v224[1] & 0x3F | ((v273 & 0x1F) << 6);
              }
            }

            if (v273 < 0x2000)
            {
              if (v273 > 132)
              {
                if (v273 > 5759)
                {
                  if (v273 == 5760 || v273 == 6158)
                  {
                    goto LABEL_560;
                  }
                }

                else if (v273 == 133 || v273 == 160)
                {
                  goto LABEL_560;
                }
              }

              else if (v273 <= 0x20 && ((1 << v273) & 0x100003E00) != 0)
              {
                goto LABEL_560;
              }

LABEL_569:
              if ((_pcre2_ucp_gentype_8[BYTE1(_pcre2_ucd_records_8[3 * _pcre2_ucd_stage2_8[v273 & 0x7F | (_pcre2_ucd_stage1_8[v273 >> 7] << 7)]])] == 6) != (*v193 != 15))
              {
                goto LABEL_1392;
              }
            }

            else
            {
              if ((v273 - 0x2000) >= 0xB && ((v273 - 8232) > 0x37 || ((1 << (v273 - 40)) & 0x80000000000083) == 0) && v273 != 12288)
              {
                goto LABEL_569;
              }

LABEL_560:
              if (*v193 == 15)
              {
                goto LABEL_1392;
              }
            }

            v224 += v274;
            *(v18 + 80) = v224;
            if (!--v271)
            {
              goto LABEL_1392;
            }

            continue;
          }
        }

        v251 = *v193;
        if (*v193 == 22)
        {
          if (v221 > v222)
          {
            v252 = *(a7 + 168);
            while (v224 < v252)
            {
              v253 = v224 + 1;
              *(v18 + 80) = v224 + 1;
              v254 = *v224;
              if (v17 && v254 >= 0xC0)
              {
                if ((v254 & 0x20) != 0)
                {
                  v255 = *v253 & 0x3F;
                  if ((v254 & 0x10) != 0)
                  {
                    if ((v254 & 8) != 0)
                    {
                      v256 = v224[2] & 0x3F;
                      v257 = v224[3] & 0x3F;
                      v258 = v224[4] & 0x3F;
                      if ((v254 & 4) != 0)
                      {
                        v254 = ((v254 & 1) << 30) | (v255 << 24) | (v256 << 18) | (v257 << 12) | (v258 << 6) | v224[5] & 0x3F;
                        v253 = v224 + 6;
                      }

                      else
                      {
                        v254 = ((v254 & 3) << 24) | (v255 << 18) | (v256 << 12) | (v257 << 6) | v258;
                        v253 = v224 + 5;
                      }
                    }

                    else
                    {
                      v254 = ((v254 & 7) << 18) | (v255 << 12) | ((v224[2] & 0x3F) << 6) | v224[3] & 0x3F;
                      v253 = v224 + 4;
                    }
                  }

                  else
                  {
                    v254 = ((v254 & 0xF) << 12) | (v255 << 6) | v224[2] & 0x3F;
                    v253 = v224 + 3;
                  }

                  *(v18 + 80) = v253;
                }

                else
                {
                  v253 = v224 + 2;
                  *(v18 + 80) = v224 + 2;
                  v254 = v224[1] & 0x3F | ((v254 & 0x1F) << 6);
                }
              }

              v224 = _pcre2_extuni_8(v254, v253, *(a7 + 152), v252, v1326, 0);
              *(v18 + 80) = v224;
              v252 = *(a7 + 168);
              if (v224 >= v252)
              {
                v259 = *(a7 + 128);
                if (*(a7 + 128))
                {
                  if (v224 > *(a7 + 184) || *(a7 + 84))
                  {
                    *(a7 + 76) = 1;
                    if (v259 != 1)
                    {
                      return 4294967294;
                    }
                  }
                }
              }

              ++v222;
              v17 = v1327;
              if (v222 >= *(v18 + 60))
              {
                goto LABEL_1461;
              }
            }

            v640 = *(a7 + 128);
            if (*(a7 + 128) && (v224 > *(a7 + 184) || *(a7 + 84)))
            {
              *(a7 + 76) = 1;
              if (v640 != 1)
              {
                return 4294967294;
              }
            }
          }

LABEL_1461:
          v13 = 2;
          if (v220 != 2)
          {
            v641 = *(v18 + 8);
            v13 = v220;
            goto LABEL_3346;
          }

          continue;
        }

        v22 = 4294967252;
        if (v17)
        {
          if (v251 <= 12)
          {
            if (v251 > 8)
            {
              if (v251 > 10)
              {
                if (v251 == 11)
                {
                  v303 = v221 >= v222;
                  v927 = v221 - v222;
                  if (v927 == 0 || !v303)
                  {
                    goto LABEL_2491;
                  }

                  v928 = *(a7 + 168);
                  while (v224 < v928)
                  {
                    v929 = *v224;
                    if (v929 >= 0xC0)
                    {
                      v930 = v224[1] & 0x3F;
                      if ((v929 & 0x20) != 0)
                      {
                        if ((v929 & 0x10) != 0)
                        {
                          if ((v929 & 8) != 0)
                          {
                            v932 = v224[2] & 0x3F;
                            v933 = v224[3] & 0x3F;
                            v934 = v224[4] & 0x3F;
                            if ((v929 & 4) != 0)
                            {
                              v929 = ((v929 & 1) << 30) | (v930 << 24) | (v932 << 18) | (v933 << 12) | (v934 << 6) | v224[5] & 0x3F;
                              v931 = 6;
                            }

                            else
                            {
                              v929 = ((v929 & 3) << 24) | (v930 << 18) | (v932 << 12) | (v933 << 6) | v934;
                              v931 = 5;
                            }
                          }

                          else
                          {
                            v929 = ((v929 & 7) << 18) | (v930 << 12) | ((v224[2] & 0x3F) << 6) | v224[3] & 0x3F;
                            v931 = 4;
                          }
                        }

                        else
                        {
                          v929 = ((v929 & 0xF) << 12) | (v930 << 6) | v224[2] & 0x3F;
                          v931 = 3;
                        }
                      }

                      else
                      {
                        v931 = 2;
                        v929 = v224[1] & 0x3F | ((v929 & 0x1F) << 6);
                      }

                      if (v929 > 0xFF)
                      {
                        goto LABEL_2491;
                      }
                    }

                    else
                    {
                      v931 = 1;
                    }

                    if ((*(*(a7 + 104) + v929) & 0x10) != 0)
                    {
                      v224 += v931;
                      *(v18 + 80) = v224;
                      if (--v927)
                      {
                        continue;
                      }
                    }

                    goto LABEL_2491;
                  }

                  goto LABEL_2328;
                }

                if (v221 > v222)
                {
                  v806 = *(a7 + 168);
                  while (v224 < v806)
                  {
                    v807 = *(a7 + 252);
                    if (v807)
                    {
                      if (_pcre2_is_newline_8(v224, v807, v806, v1321, v1326))
                      {
                        goto LABEL_2491;
                      }

                      v224 = *(v18 + 80);
                      v806 = *(a7 + 168);
                    }

                    else
                    {
                      v808 = *v1321;
                      if (v224 <= v806 - v808 && *v224 == *(a7 + 260) && (v808 == 1 || v224[1] == *(a7 + 261)))
                      {
                        goto LABEL_2491;
                      }
                    }

                    v809 = *(a7 + 128);
                    v810 = v224 + 1;
                    if (*(a7 + 128))
                    {
                      if (v810 >= v806 && !*(a7 + 252) && *v1321 == 2 && *v224 == *(a7 + 260))
                      {
                        *(a7 + 76) = 1;
                        if (v809 != 1)
                        {
                          return 4294967294;
                        }
                      }
                    }

                    do
                    {
                      v224 = v810;
                      *(v18 + 80) = v810;
                      if (v810 >= v806)
                      {
                        break;
                      }

                      ++v810;
                    }

                    while ((*v224 & 0xC0) == 0x80);
                    if (++v222 >= *(v18 + 60))
                    {
                      goto LABEL_2491;
                    }
                  }

                  goto LABEL_2328;
                }
              }

              else
              {
                if (v251 != 9)
                {
                  v303 = v221 >= v222;
                  v351 = v221 - v222;
                  if (v351 == 0 || !v303)
                  {
                    goto LABEL_2491;
                  }

                  v352 = *(a7 + 168);
                  while (2)
                  {
                    if (v224 >= v352)
                    {
                      goto LABEL_2328;
                    }

                    v353 = *v224;
                    if (v353 >= 0xC0)
                    {
                      v354 = v224[1] & 0x3F;
                      if ((v353 & 0x20) != 0)
                      {
                        if ((v353 & 0x10) != 0)
                        {
                          if ((v353 & 8) != 0)
                          {
                            v356 = v224[2] & 0x3F;
                            v357 = v224[3] & 0x3F;
                            v358 = v224[4] & 0x3F;
                            if ((v353 & 4) != 0)
                            {
                              v353 = ((v353 & 1) << 30) | (v354 << 24) | (v356 << 18) | (v357 << 12) | (v358 << 6) | v224[5] & 0x3F;
                              v355 = 6;
                            }

                            else
                            {
                              v353 = ((v353 & 3) << 24) | (v354 << 18) | (v356 << 12) | (v357 << 6) | v358;
                              v355 = 5;
                            }
                          }

                          else
                          {
                            v353 = ((v353 & 7) << 18) | (v354 << 12) | ((v224[2] & 0x3F) << 6) | v224[3] & 0x3F;
                            v355 = 4;
                          }
                        }

                        else
                        {
                          v353 = ((v353 & 0xF) << 12) | (v354 << 6) | v224[2] & 0x3F;
                          v355 = 3;
                        }
                      }

                      else
                      {
                        v355 = 2;
                        v353 = v224[1] & 0x3F | ((v353 & 0x1F) << 6);
                      }

                      if (v353 <= 0xFF)
                      {
                        goto LABEL_760;
                      }
                    }

                    else
                    {
                      v355 = 1;
LABEL_760:
                      if ((*(*(a7 + 104) + v353) & 0x10) != 0)
                      {
                        goto LABEL_2491;
                      }
                    }

                    v224 += v355;
                    *(v18 + 80) = v224;
                    if (!--v351)
                    {
                      goto LABEL_2491;
                    }

                    continue;
                  }
                }

                v303 = v221 >= v222;
                v919 = v221 - v222;
                if (v919 == 0 || !v303)
                {
                  goto LABEL_2491;
                }

                v920 = *(a7 + 168);
                while (v224 < v920)
                {
                  v921 = *v224;
                  if (v921 >= 0xC0)
                  {
                    v922 = v224[1] & 0x3F;
                    if ((v921 & 0x20) != 0)
                    {
                      if ((v921 & 0x10) != 0)
                      {
                        if ((v921 & 8) != 0)
                        {
                          v924 = v224[2] & 0x3F;
                          v925 = v224[3] & 0x3F;
                          v926 = v224[4] & 0x3F;
                          if ((v921 & 4) != 0)
                          {
                            v921 = ((v921 & 1) << 30) | (v922 << 24) | (v924 << 18) | (v925 << 12) | (v926 << 6) | v224[5] & 0x3F;
                            v923 = 6;
                          }

                          else
                          {
                            v921 = ((v921 & 3) << 24) | (v922 << 18) | (v924 << 12) | (v925 << 6) | v926;
                            v923 = 5;
                          }
                        }

                        else
                        {
                          v921 = ((v921 & 7) << 18) | (v922 << 12) | ((v224[2] & 0x3F) << 6) | v224[3] & 0x3F;
                          v923 = 4;
                        }
                      }

                      else
                      {
                        v921 = ((v921 & 0xF) << 12) | (v922 << 6) | v224[2] & 0x3F;
                        v923 = 3;
                      }
                    }

                    else
                    {
                      v923 = 2;
                      v921 = v224[1] & 0x3F | ((v921 & 0x1F) << 6);
                    }

                    if (v921 > 0xFF)
                    {
                      goto LABEL_2491;
                    }
                  }

                  else
                  {
                    v923 = 1;
                  }

                  if (*(*(a7 + 104) + v921))
                  {
                    v224 += v923;
                    *(v18 + 80) = v224;
                    if (--v919)
                    {
                      continue;
                    }
                  }

                  goto LABEL_2491;
                }

LABEL_2328:
                v955 = *(a7 + 128);
                if (*(a7 + 128))
                {
                  if (v224 <= *(a7 + 184))
                  {
                    goto LABEL_2330;
                  }

LABEL_2331:
                  *(a7 + 76) = 1;
                  if (v955 != 1)
                  {
                    return 4294967294;
                  }

                  goto LABEL_2491;
                }
              }

              goto LABEL_2491;
            }

            if (v251 != 6)
            {
              if (v251 == 7)
              {
                v303 = v221 >= v222;
                v935 = v221 - v222;
                if (v935 == 0 || !v303)
                {
                  goto LABEL_2491;
                }

                v936 = *(a7 + 168);
                while (v224 < v936)
                {
                  v937 = *v224;
                  if (v937 >= 0xC0)
                  {
                    v938 = v224[1] & 0x3F;
                    if ((v937 & 0x20) != 0)
                    {
                      if ((v937 & 0x10) != 0)
                      {
                        if ((v937 & 8) != 0)
                        {
                          v940 = v224[2] & 0x3F;
                          v941 = v224[3] & 0x3F;
                          v942 = v224[4] & 0x3F;
                          if ((v937 & 4) != 0)
                          {
                            v937 = ((v937 & 1) << 30) | (v938 << 24) | (v940 << 18) | (v941 << 12) | (v942 << 6) | v224[5] & 0x3F;
                            v939 = 6;
                          }

                          else
                          {
                            v937 = ((v937 & 3) << 24) | (v938 << 18) | (v940 << 12) | (v941 << 6) | v942;
                            v939 = 5;
                          }
                        }

                        else
                        {
                          v937 = ((v937 & 7) << 18) | (v938 << 12) | ((v224[2] & 0x3F) << 6) | v224[3] & 0x3F;
                          v939 = 4;
                        }
                      }

                      else
                      {
                        v937 = ((v937 & 0xF) << 12) | (v938 << 6) | v224[2] & 0x3F;
                        v939 = 3;
                      }
                    }

                    else
                    {
                      v939 = 2;
                      v937 = v224[1] & 0x3F | ((v937 & 0x1F) << 6);
                    }

                    if (v937 > 0xFF)
                    {
                      goto LABEL_2491;
                    }
                  }

                  else
                  {
                    v939 = 1;
                  }

                  if ((*(*(a7 + 104) + v937) & 8) != 0)
                  {
                    v224 += v939;
                    *(v18 + 80) = v224;
                    if (--v935)
                    {
                      continue;
                    }
                  }

                  goto LABEL_2491;
                }

                goto LABEL_2328;
              }

              if (v251 != 8)
              {
                return v22;
              }

              v303 = v221 >= v222;
              v780 = v221 - v222;
              if (v780 == 0 || !v303)
              {
                goto LABEL_2491;
              }

              v781 = *(a7 + 168);
              while (2)
              {
                if (v224 >= v781)
                {
                  goto LABEL_2328;
                }

                v782 = *v224;
                if (v782 >= 0xC0)
                {
                  v783 = v224[1] & 0x3F;
                  if ((v782 & 0x20) != 0)
                  {
                    if ((v782 & 0x10) != 0)
                    {
                      if ((v782 & 8) != 0)
                      {
                        v785 = v224[2] & 0x3F;
                        v786 = v224[3] & 0x3F;
                        v787 = v224[4] & 0x3F;
                        if ((v782 & 4) != 0)
                        {
                          v782 = ((v782 & 1) << 30) | (v783 << 24) | (v785 << 18) | (v786 << 12) | (v787 << 6) | v224[5] & 0x3F;
                          v784 = 6;
                        }

                        else
                        {
                          v782 = ((v782 & 3) << 24) | (v783 << 18) | (v785 << 12) | (v786 << 6) | v787;
                          v784 = 5;
                        }
                      }

                      else
                      {
                        v782 = ((v782 & 7) << 18) | (v783 << 12) | ((v224[2] & 0x3F) << 6) | v224[3] & 0x3F;
                        v784 = 4;
                      }
                    }

                    else
                    {
                      v782 = ((v782 & 0xF) << 12) | (v783 << 6) | v224[2] & 0x3F;
                      v784 = 3;
                    }
                  }

                  else
                  {
                    v784 = 2;
                    v782 = v224[1] & 0x3F | ((v782 & 0x1F) << 6);
                  }

                  if (v782 <= 0xFF)
                  {
                    goto LABEL_1858;
                  }
                }

                else
                {
                  v784 = 1;
LABEL_1858:
                  if (*(*(a7 + 104) + v782))
                  {
                    goto LABEL_2491;
                  }
                }

                v224 += v784;
                *(v18 + 80) = v224;
                if (!--v780)
                {
                  goto LABEL_2491;
                }

                continue;
              }
            }

            v303 = v221 >= v222;
            v945 = v221 - v222;
            if (v945 == 0 || !v303)
            {
              goto LABEL_2491;
            }

            v946 = *(a7 + 168);
            while (2)
            {
              if (v224 >= v946)
              {
                goto LABEL_2328;
              }

              v947 = *v224;
              if (v947 >= 0xC0)
              {
                v948 = v224[1] & 0x3F;
                if ((v947 & 0x20) != 0)
                {
                  if ((v947 & 0x10) != 0)
                  {
                    if ((v947 & 8) != 0)
                    {
                      v950 = v224[2] & 0x3F;
                      v951 = v224[3] & 0x3F;
                      v952 = v224[4] & 0x3F;
                      if ((v947 & 4) != 0)
                      {
                        v947 = ((v947 & 1) << 30) | (v948 << 24) | (v950 << 18) | (v951 << 12) | (v952 << 6) | v224[5] & 0x3F;
                        v949 = 6;
                      }

                      else
                      {
                        v947 = ((v947 & 3) << 24) | (v948 << 18) | (v950 << 12) | (v951 << 6) | v952;
                        v949 = 5;
                      }
                    }

                    else
                    {
                      v947 = ((v947 & 7) << 18) | (v948 << 12) | ((v224[2] & 0x3F) << 6) | v224[3] & 0x3F;
                      v949 = 4;
                    }
                  }

                  else
                  {
                    v947 = ((v947 & 0xF) << 12) | (v948 << 6) | v224[2] & 0x3F;
                    v949 = 3;
                  }
                }

                else
                {
                  v949 = 2;
                  v947 = v224[1] & 0x3F | ((v947 & 0x1F) << 6);
                }

                if (v947 <= 0xFF)
                {
                  goto LABEL_2316;
                }
              }

              else
              {
                v949 = 1;
LABEL_2316:
                if ((*(*(a7 + 104) + v947) & 8) != 0)
                {
                  goto LABEL_2491;
                }
              }

              v224 += v949;
              *(v18 + 80) = v224;
              if (!--v945)
              {
                goto LABEL_2491;
              }

              continue;
            }
          }

          if (v251 > 17)
          {
            if ((v251 - 18) >= 2)
            {
              if ((v251 - 20) >= 2)
              {
                return v22;
              }

              v303 = v221 >= v222;
              v624 = v221 - v222;
              if (v624 == 0 || !v303)
              {
                goto LABEL_2491;
              }

              v625 = *(a7 + 168);
              v626 = v251 == 20;
              while (v224 < v625)
              {
                v627 = *v224;
                if (v627 >= 0xC0)
                {
                  v628 = v224[1] & 0x3F;
                  if ((v627 & 0x20) != 0)
                  {
                    if ((v627 & 0x10) != 0)
                    {
                      if ((v627 & 8) != 0)
                      {
                        v635 = v224[2] & 0x3F;
                        v636 = v224[3] & 0x3F;
                        v637 = v224[4] & 0x3F;
                        if ((v627 & 4) != 0)
                        {
                          v627 = ((v627 & 1) << 30) | (v628 << 24) | (v635 << 18) | (v636 << 12) | (v637 << 6) | v224[5] & 0x3F;
                          v629 = 6;
                        }

                        else
                        {
                          v627 = ((v627 & 3) << 24) | (v628 << 18) | (v635 << 12) | (v636 << 6) | v637;
                          v629 = 5;
                        }
                      }

                      else
                      {
                        v627 = ((v627 & 7) << 18) | (v628 << 12) | ((v224[2] & 0x3F) << 6) | v224[3] & 0x3F;
                        v629 = 4;
                      }
                    }

                    else
                    {
                      v627 = ((v627 & 0xF) << 12) | (v628 << 6) | v224[2] & 0x3F;
                      v629 = 3;
                    }
                  }

                  else
                  {
                    v629 = 2;
                    v627 = v224[1] & 0x3F | ((v627 & 0x1F) << 6);
                  }
                }

                else
                {
                  v629 = 1;
                }

                v630 = v627 - 10;
                v631 = v627 == 133;
                v632 = v627 - 8232;
                v634 = v630 < 4 || v632 < 2 || v631;
                if (v634 != v626)
                {
                  v224 += v629;
                  *(v18 + 80) = v224;
                  if (--v624)
                  {
                    continue;
                  }
                }

                goto LABEL_2491;
              }

              goto LABEL_2328;
            }

            v303 = v221 >= v222;
            v811 = v221 - v222;
            if (v811 == 0 || !v303)
            {
              goto LABEL_2491;
            }

            v812 = *(a7 + 168);
            v813 = v251 == 18;
            while (2)
            {
              if (v224 >= v812)
              {
                goto LABEL_2328;
              }

              v814 = *v224;
              if (v814 >= 0xC0)
              {
                v815 = v224[1] & 0x3F;
                if ((v814 & 0x20) != 0)
                {
                  if ((v814 & 0x10) != 0)
                  {
                    if ((v814 & 8) != 0)
                    {
                      v818 = v224[2] & 0x3F;
                      v819 = v224[3] & 0x3F;
                      v820 = v224[4] & 0x3F;
                      if ((v814 & 4) != 0)
                      {
                        v814 = ((v814 & 1) << 30) | (v815 << 24) | (v818 << 18) | (v819 << 12) | (v820 << 6) | v224[5] & 0x3F;
                        v816 = 6;
                      }

                      else
                      {
                        v814 = ((v814 & 3) << 24) | (v815 << 18) | (v818 << 12) | (v819 << 6) | v820;
                        v816 = 5;
                      }
                    }

                    else
                    {
                      v814 = ((v814 & 7) << 18) | (v815 << 12) | ((v224[2] & 0x3F) << 6) | v224[3] & 0x3F;
                      v816 = 4;
                    }
                  }

                  else
                  {
                    v814 = ((v814 & 0xF) << 12) | (v815 << 6) | v224[2] & 0x3F;
                    v816 = 3;
                  }
                }

                else
                {
                  v816 = 2;
                  v814 = v224[1] & 0x3F | ((v814 & 0x1F) << 6);
                }
              }

              else
              {
                v816 = 1;
              }

              v817 = 1;
              if (v814 < 0x2000)
              {
                if (v814 <= 159)
                {
                  if (v814 != 9 && v814 != 32)
                  {
                    goto LABEL_1992;
                  }
                }

                else if (v814 != 160 && v814 != 5760 && v814 != 6158)
                {
                  goto LABEL_1992;
                }
              }

              else
              {
                if (v814 <= 8238)
                {
                  if ((v814 - 0x2000) < 0xB)
                  {
                    goto LABEL_1974;
                  }

LABEL_1992:
                  v817 = 0;
                  goto LABEL_1974;
                }

                if (v814 != 8239 && v814 != 8287 && v814 != 12288)
                {
                  goto LABEL_1992;
                }
              }

LABEL_1974:
              if (v817 == v813)
              {
                goto LABEL_2491;
              }

              v224 += v816;
              *(v18 + 80) = v224;
              if (!--v811)
              {
                goto LABEL_2491;
              }

              continue;
            }
          }

          if (v251 == 13)
          {
            if (v221 == -1)
            {
              v978 = *(a7 + 168);
              *(v18 + 80) = v978;
              v955 = *(a7 + 128);
              if (*(a7 + 128))
              {
                if (v978 > *(a7 + 184))
                {
                  goto LABEL_2331;
                }

LABEL_2330:
                if (*(a7 + 84))
                {
                  goto LABEL_2331;
                }
              }
            }

            else if (v221 > v222)
            {
              v953 = *(a7 + 168);
              while (v224 < v953)
              {
                v954 = v224 + 1;
                do
                {
                  v224 = v954;
                  *(v18 + 80) = v954;
                  if (v954 >= v953)
                  {
                    break;
                  }

                  ++v954;
                }

                while ((*v224 & 0xC0) == 0x80);
                if (++v222 == v221)
                {
                  goto LABEL_2491;
                }
              }

              goto LABEL_2328;
            }

LABEL_2491:
            v13 = 2;
            v17 = v1327;
            if (v220 != 2)
            {
              v979 = *(v18 + 80);
              v13 = v220;
LABEL_3303:
              if (v979 > *(v18 + 8))
              {
                v14 = 0;
                a2 = *v18;
                v1287 = -35;
                goto LABEL_3351;
              }
            }

            continue;
          }

          if (v251 == 14)
          {
            v943 = *(a7 + 168);
            if (v223 > v943 - v224)
            {
              *(v18 + 80) = v943;
              v944 = *(a7 + 128);
              if (*(a7 + 128) && (v943 > *(a7 + 184) || *(a7 + 84)))
              {
                *(a7 + 76) = 1;
                if (v944 != 1)
                {
                  return 4294967294;
                }
              }
            }

            else
            {
              *(v18 + 80) = &v224[v223];
            }

            goto LABEL_2491;
          }

          if (v251 != 17)
          {
            return v22;
          }

          v303 = v221 >= v222;
          v788 = v221 - v222;
          if (v788 == 0 || !v303)
          {
            goto LABEL_2491;
          }

          v789 = *(a7 + 168);
          while (2)
          {
            if (v224 >= v789)
            {
              goto LABEL_2328;
            }

            v790 = *v224;
            if (v790 >= 0xC0)
            {
              v791 = v224[1] & 0x3F;
              if ((v790 & 0x20) != 0)
              {
                if ((v790 & 0x10) != 0)
                {
                  if ((v790 & 8) != 0)
                  {
                    v794 = v224[2] & 0x3F;
                    v795 = v224[3] & 0x3F;
                    v796 = v224[4] & 0x3F;
                    if ((v790 & 4) != 0)
                    {
                      v790 = ((v790 & 1) << 30) | (v791 << 24) | (v794 << 18) | (v795 << 12) | (v796 << 6) | v224[5] & 0x3F;
                      v792 = 6;
                    }

                    else
                    {
                      v790 = ((v790 & 3) << 24) | (v791 << 18) | (v794 << 12) | (v795 << 6) | v796;
                      v792 = 5;
                    }
                  }

                  else
                  {
                    v790 = ((v790 & 7) << 18) | (v791 << 12) | ((v224[2] & 0x3F) << 6) | v224[3] & 0x3F;
                    v792 = 4;
                  }
                }

                else
                {
                  v790 = ((v790 & 0xF) << 12) | (v791 << 6) | v224[2] & 0x3F;
                  v792 = 3;
                }
              }

              else
              {
                v792 = 2;
                v790 = v224[1] & 0x3F | ((v790 & 0x1F) << 6);
              }
            }

            else
            {
              v792 = 1;
            }

            if (v790 != 10)
            {
              if (v790 == 13)
              {
                v793 = v224 + 1;
                *(v18 + 80) = v224 + 1;
                if ((v224 + 1) >= v789)
                {
                  goto LABEL_2491;
                }

                if (*v793 == 10)
                {
                  v792 = 2;
                  break;
                }

LABEL_1882:
                v224 = v793;
                if (!--v788)
                {
                  goto LABEL_2491;
                }

                continue;
              }

              if (*(a7 + 130) == 2 || v790 - 11 >= 2 && v790 - 8232 >= 2 && v790 != 133)
              {
                goto LABEL_2491;
              }
            }

            break;
          }

          v793 = &v224[v792];
          *(v18 + 80) = &v224[v792];
          goto LABEL_1882;
        }

        switch(v251)
        {
          case 6:
            v303 = v221 >= v222;
            v891 = v221 - v222;
            if (v891 == 0 || !v303)
            {
              goto LABEL_2234;
            }

            v892 = *(a7 + 168);
            while (v224 < v892)
            {
              if ((*(*(a7 + 104) + *v224) & 8) == 0)
              {
                *(v18 + 80) = ++v224;
                if (--v891)
                {
                  continue;
                }
              }

              goto LABEL_2234;
            }

            goto LABEL_2228;
          case 7:
            v303 = v221 >= v222;
            v893 = v221 - v222;
            if (v893 == 0 || !v303)
            {
              goto LABEL_2234;
            }

            v894 = *(a7 + 168);
            while (v224 < v894)
            {
              if ((*(*(a7 + 104) + *v224) & 8) != 0)
              {
                *(v18 + 80) = ++v224;
                if (--v893)
                {
                  continue;
                }
              }

              goto LABEL_2234;
            }

            goto LABEL_2228;
          case 8:
            v303 = v221 >= v222;
            v889 = v221 - v222;
            if (v889 == 0 || !v303)
            {
              goto LABEL_2234;
            }

            v890 = *(a7 + 168);
            while (v224 < v890)
            {
              if ((*(*(a7 + 104) + *v224) & 1) == 0)
              {
                *(v18 + 80) = ++v224;
                if (--v889)
                {
                  continue;
                }
              }

              goto LABEL_2234;
            }

            goto LABEL_2228;
          case 9:
            v303 = v221 >= v222;
            v895 = v221 - v222;
            if (v895 == 0 || !v303)
            {
              goto LABEL_2234;
            }

            v896 = *(a7 + 168);
            while (v224 < v896)
            {
              if (*(*(a7 + 104) + *v224))
              {
                *(v18 + 80) = ++v224;
                if (--v895)
                {
                  continue;
                }
              }

              goto LABEL_2234;
            }

            goto LABEL_2228;
          case 10:
            v303 = v221 >= v222;
            v907 = v221 - v222;
            if (v907 == 0 || !v303)
            {
              goto LABEL_2234;
            }

            v908 = *(a7 + 168);
            while (v224 < v908)
            {
              if ((*(*(a7 + 104) + *v224) & 0x10) == 0)
              {
                *(v18 + 80) = ++v224;
                if (--v907)
                {
                  continue;
                }
              }

              goto LABEL_2234;
            }

            goto LABEL_2228;
          case 11:
            v303 = v221 >= v222;
            v887 = v221 - v222;
            if (v887 == 0 || !v303)
            {
              goto LABEL_2234;
            }

            v888 = *(a7 + 168);
            while (v224 < v888)
            {
              if ((*(*(a7 + 104) + *v224) & 0x10) != 0)
              {
                *(v18 + 80) = ++v224;
                if (--v887)
                {
                  continue;
                }
              }

              goto LABEL_2234;
            }

            goto LABEL_2228;
          case 12:
            if (v221 <= v222)
            {
              goto LABEL_2234;
            }

            while (1)
            {
              v903 = *(a7 + 168);
              if (v224 >= v903)
              {
                goto LABEL_2228;
              }

              v904 = *(a7 + 252);
              if (v904)
              {
                if (_pcre2_is_newline_8(v224, v904, v903, v1321, v1326))
                {
                  goto LABEL_2234;
                }

                v224 = *(v18 + 80);
              }

              else
              {
                v905 = *v1321;
                if (v224 <= v903 - v905 && *v224 == *(a7 + 260) && (v905 == 1 || v224[1] == *(a7 + 261)))
                {
                  goto LABEL_2234;
                }
              }

              v906 = *(a7 + 128);
              if (*(a7 + 128))
              {
                if ((v224 + 1) >= *(a7 + 168) && !*(a7 + 252) && *v1321 == 2 && *v224 == *(a7 + 260))
                {
                  *(a7 + 76) = 1;
                  if (v906 != 1)
                  {
                    return 4294967294;
                  }
                }
              }

              *(v18 + 80) = ++v224;
              if (++v222 >= *(v18 + 60))
              {
                goto LABEL_2234;
              }
            }

          case 13:
          case 14:
            v516 = *(a7 + 168);
            if (v223 <= v516 - v224)
            {
              *(v18 + 80) = &v224[v223];
            }

            else
            {
              *(v18 + 80) = v516;
              v517 = *(a7 + 128);
              if (*(a7 + 128) && (v516 > *(a7 + 184) || *(a7 + 84)))
              {
                *(a7 + 76) = 1;
                if (v517 != 1)
                {
                  return 4294967294;
                }
              }
            }

            goto LABEL_2234;
          case 17:
            v303 = v221 >= v222;
            v912 = v221 - v222;
            if (v912 == 0 || !v303)
            {
              goto LABEL_2234;
            }

            v913 = *(a7 + 168);
            while (2)
            {
              if (v224 >= v913)
              {
                goto LABEL_2228;
              }

              v914 = *v224;
              if (v914 == 10)
              {
                v916 = 1;
LABEL_2225:
                v915 = &v224[v916];
                *(v18 + 80) = v915;
LABEL_2226:
                v224 = v915;
                if (!--v912)
                {
                  goto LABEL_2234;
                }

                continue;
              }

              break;
            }

            if (v914 == 13)
            {
              v915 = v224 + 1;
              *(v18 + 80) = v224 + 1;
              if ((v224 + 1) >= v913)
              {
                goto LABEL_2234;
              }

              if (*v915 == 10)
              {
                v916 = 2;
                goto LABEL_2225;
              }

              goto LABEL_2226;
            }

            if (*(a7 + 130) != 2)
            {
              v916 = 1;
              if ((v914 - 11) < 2 || v914 == 133)
              {
                goto LABEL_2225;
              }
            }

LABEL_2234:
            v13 = 2;
            v17 = v1327;
            if (v220 != 2)
            {
              v918 = *(v18 + 80);
              v13 = v220;
LABEL_3258:
              if (v918 != *(v18 + 8))
              {
                v14 = 0;
                a2 = *v18;
                v1287 = 34;
                goto LABEL_3351;
              }
            }

            break;
          case 18:
            v303 = v221 >= v222;
            v884 = v221 - v222;
            if (v884 == 0 || !v303)
            {
              goto LABEL_2234;
            }

            v885 = *(a7 + 168);
            while (v224 < v885)
            {
              v886 = *v224;
              if (v886 != 9 && v886 != 32 && v886 != 160)
              {
                *(v18 + 80) = ++v224;
                if (--v884)
                {
                  continue;
                }
              }

              goto LABEL_2234;
            }

            goto LABEL_2228;
          case 19:
            v303 = v221 >= v222;
            v897 = v221 - v222;
            if (v897 == 0 || !v303)
            {
              goto LABEL_2234;
            }

            v898 = *(a7 + 168);
            while (v224 < v898)
            {
              v899 = *v224;
              if (v899 == 9 || v899 == 160 || v899 == 32)
              {
                *(v18 + 80) = ++v224;
                if (--v897)
                {
                  continue;
                }
              }

              goto LABEL_2234;
            }

            goto LABEL_2228;
          case 20:
            v303 = v221 >= v222;
            v909 = v221 - v222;
            if (v909 == 0 || !v303)
            {
              goto LABEL_2234;
            }

            v910 = *(a7 + 168);
            while (v224 < v910)
            {
              v911 = *v224;
              if ((v911 - 10) >= 4 && v911 != 133)
              {
                *(v18 + 80) = ++v224;
                if (--v909)
                {
                  continue;
                }
              }

              goto LABEL_2234;
            }

            goto LABEL_2228;
          case 21:
            v303 = v221 >= v222;
            v900 = v221 - v222;
            if (v900 == 0 || !v303)
            {
              goto LABEL_2234;
            }

            v901 = *(a7 + 168);
            while (v224 < v901)
            {
              v902 = *v224;
              if ((v902 - 10) < 4 || v902 == 133)
              {
                *(v18 + 80) = ++v224;
                if (--v900)
                {
                  continue;
                }
              }

              goto LABEL_2234;
            }

LABEL_2228:
            v917 = *(a7 + 128);
            if (*(a7 + 128) && (v224 > *(a7 + 184) || *(a7 + 84)))
            {
              *(a7 + 76) = 1;
              if (v917 != 1)
              {
                return 4294967294;
              }
            }

            goto LABEL_2234;
          default:
            return v22;
        }

        continue;
      case 0x6Eu:
      case 0x6Fu:
        v46 = v20 + 1;
        *(v18 + 16) = v20 + 1;
        a2 = v20 + 33;
        *v18 = v20 + 33;
        v47 = v20[33] - 98;
        if (v47 > 0xB)
        {
          *(v18 + 56) = 0x100000001;
          v50 = 1;
          v49 = 1;
          if (v17)
          {
            goto LABEL_30;
          }
        }

        else
        {
          if (((1 << v47) & 0x73F) != 0)
          {
            a2 = v20 + 34;
            *v18 = v20 + 34;
            v48 = v20[33] - 98;
            v49 = rep_min[v48];
            *(v18 + 56) = v49;
            v50 = rep_max[v48];
            *(v18 + 60) = v50;
            v51 = rep_typ[v48];
            if (v17)
            {
              goto LABEL_28;
            }
          }

          else
          {
            v49 = __rev16(*(v20 + 17));
            *(v18 + 56) = v49;
            v388 = __rev16(*(v20 + 18));
            if (v388)
            {
              v50 = v388;
            }

            else
            {
              v50 = -1;
            }

            *(v18 + 60) = v50;
            v51 = rep_typ[v20[33] - 98];
            a2 = v20 + 38;
            *v18 = v20 + 38;
            if (v17)
            {
LABEL_28:
              if (!v49)
              {
                goto LABEL_873;
              }

              v13 = v51;
LABEL_30:
              v52 = *(a7 + 168);
              v53 = *(v18 + 80);
              v54 = 1;
              while (v53 < v52)
              {
                v55 = v53 + 1;
                *(v18 + 80) = v53 + 1;
                v56 = *v53;
                if (v56 < 0xC0)
                {
                  goto LABEL_46;
                }

                if ((v56 & 0x20) != 0)
                {
                  v57 = *v55 & 0x3F;
                  if ((v56 & 0x10) != 0)
                  {
                    if ((v56 & 8) != 0)
                    {
                      v58 = v53[2] & 0x3F;
                      v59 = v53[3] & 0x3F;
                      v60 = v53[4] & 0x3F;
                      if ((v56 & 4) != 0)
                      {
                        v56 = ((v56 & 1) << 30) | (v57 << 24) | (v58 << 18) | (v59 << 12) | (v60 << 6) | v53[5] & 0x3F;
                        v55 = v53 + 6;
                      }

                      else
                      {
                        v56 = ((v56 & 3) << 24) | (v57 << 18) | (v58 << 12) | (v59 << 6) | v60;
                        v55 = v53 + 5;
                      }
                    }

                    else
                    {
                      v56 = ((v56 & 7) << 18) | (v57 << 12) | ((v53[2] & 0x3F) << 6) | v53[3] & 0x3F;
                      v55 = v53 + 4;
                    }
                  }

                  else
                  {
                    v56 = ((v56 & 0xF) << 12) | (v57 << 6) | v53[2] & 0x3F;
                    v55 = v53 + 3;
                  }

                  *(v18 + 80) = v55;
                }

                else
                {
                  v55 = v53 + 2;
                  *(v18 + 80) = v53 + 2;
                  v56 = v53[1] & 0x3F | ((v56 & 0x1F) << 6);
                }

                if (v56 < 0x100)
                {
LABEL_46:
                  if (((v46[v56 >> 3] >> (v56 & 7)) & 1) == 0)
                  {
                    goto LABEL_1908;
                  }
                }

                else if (v21 == 110)
                {
                  goto LABEL_1908;
                }

                ++v54;
                v53 = v55;
                if (v54 > v49)
                {
                  goto LABEL_872;
                }
              }

              v132 = *(a7 + 128);
              if (*(a7 + 128))
              {
                if (v53 <= *(a7 + 184))
                {
                  goto LABEL_1906;
                }

                goto LABEL_1907;
              }

              goto LABEL_1908;
            }
          }

          if (!v49)
          {
            goto LABEL_873;
          }

          v13 = v51;
        }

        v389 = *(a7 + 168);
        v390 = *(v18 + 80);
        v391 = 1;
        while (v390 < v389)
        {
          *(v18 + 80) = v390 + 1;
          if (((v46[*v390 >> 3] >> (*v390 & 7)) & 1) == 0)
          {
            goto LABEL_1908;
          }

          ++v391;
          ++v390;
          if (v391 > v49)
          {
LABEL_872:
            v51 = v13;
LABEL_873:
            v13 = v51;
            if (v50 == v49)
            {
              goto LABEL_8;
            }

            if (v51)
            {
              v392 = *(v18 + 80);
              *(v18 + 8) = v392;
              if (v17)
              {
                v303 = v50 >= v49;
                v393 = v50 - v49;
                if (v393 == 0 || !v303)
                {
                  goto LABEL_2005;
                }

                v394 = *(a7 + 168);
                while (2)
                {
                  if (v392 < v394)
                  {
                    v395 = *v392;
                    if (v395 < 0xC0)
                    {
                      v397 = 1;
                    }

                    else
                    {
                      v396 = v392[1] & 0x3F;
                      if ((v395 & 0x20) != 0)
                      {
                        if ((v395 & 0x10) != 0)
                        {
                          if ((v395 & 8) != 0)
                          {
                            v398 = v392[2] & 0x3F;
                            v399 = v392[3] & 0x3F;
                            v400 = v392[4] & 0x3F;
                            if ((v395 & 4) != 0)
                            {
                              v395 = ((v395 & 1) << 30) | (v396 << 24) | (v398 << 18) | (v399 << 12) | (v400 << 6) | v392[5] & 0x3F;
                              v397 = 6;
                            }

                            else
                            {
                              v395 = ((v395 & 3) << 24) | (v396 << 18) | (v398 << 12) | (v399 << 6) | v400;
                              v397 = 5;
                            }
                          }

                          else
                          {
                            v395 = ((v395 & 7) << 18) | (v396 << 12) | ((v392[2] & 0x3F) << 6) | v392[3] & 0x3F;
                            v397 = 4;
                          }
                        }

                        else
                        {
                          v395 = ((v395 & 0xF) << 12) | (v396 << 6) | v392[2] & 0x3F;
                          v397 = 3;
                        }
                      }

                      else
                      {
                        v397 = 2;
                        v395 = v392[1] & 0x3F | ((v395 & 0x1F) << 6);
                      }

                      if (v395 >= 0x100)
                      {
                        if (v21 == 110)
                        {
                          goto LABEL_2005;
                        }

                        goto LABEL_895;
                      }
                    }

                    if (((v46[v395 >> 3] >> (v395 & 7)) & 1) == 0)
                    {
                      goto LABEL_2005;
                    }

LABEL_895:
                    v392 += v397;
                    *(v18 + 80) = v392;
                    if (!--v393)
                    {
                      goto LABEL_2005;
                    }

                    continue;
                  }

                  break;
                }

                v821 = *(a7 + 128);
                if (*(a7 + 128) && (v392 > *(a7 + 184) || *(a7 + 84)))
                {
                  *(a7 + 76) = 1;
                  if (v821 != 1)
                  {
                    return 4294967294;
                  }
                }

LABEL_2005:
                v13 = 2;
                if (v51 != 2)
                {
LABEL_3365:
                  v14 = 0;
                  a2 = *v18;
                  v1287 = -55;
                  goto LABEL_3350;
                }
              }

              else
              {
                v530 = v392;
                v303 = v50 >= v49;
                v531 = v50 - v49;
                if (v531 != 0 && v303)
                {
                  v532 = *(a7 + 168);
                  v530 = v392;
                  while (v530 < v532)
                  {
                    if ((v46[*v530 >> 3] >> (*v530 & 7)))
                    {
                      *(v18 + 80) = ++v530;
                      if (--v531)
                      {
                        continue;
                      }
                    }

                    goto LABEL_2011;
                  }

                  v822 = *(a7 + 128);
                  if (*(a7 + 128) && (v530 > *(a7 + 184) || *(a7 + 84)))
                  {
                    *(a7 + 76) = 1;
                    if (v822 != 1)
                    {
                      return 4294967294;
                    }
                  }
                }

LABEL_2011:
                v13 = 2;
                if (v51 != 2)
                {
LABEL_3272:
                  if (v530 < v392)
                  {
                    v23 = 0;
                    v13 = v51;
                    goto LABEL_2516;
                  }

                  v14 = 0;
                  a2 = *v18;
                  v1287 = 24;
LABEL_3350:
                  v13 = v51;
                  goto LABEL_3351;
                }
              }

              goto LABEL_8;
            }

            v13 = 0;
            v8 = a6;
            if (!v17)
            {
LABEL_3414:
              v14 = 0;
              v1287 = 23;
              goto LABEL_3352;
            }

            v1287 = -56;
LABEL_3380:
            v14 = 0;
            goto LABEL_3352;
          }
        }

        v132 = *(a7 + 128);
        if (*(a7 + 128))
        {
          if (v390 <= *(a7 + 184))
          {
            goto LABEL_1906;
          }

          goto LABEL_1907;
        }

        goto LABEL_1908;
      case 0x70u:
        *(v18 + 16) = v20 + 3;
        v182 = &v20[__rev16(*(v20 + 1))];
        *v18 = v182;
        v183 = *v182 - 98;
        if (v183 > 0xB)
        {
          *(v18 + 56) = 0x100000001;
        }

        else
        {
          if (((1 << v183) & 0x73F) != 0)
          {
            *v18 = v182 + 1;
            v184 = *v182 - 98;
            v185 = rep_min[v184];
            *(v18 + 56) = v185;
            v186 = rep_max[v184];
            *(v18 + 60) = v186;
            v187 = rep_typ[v184];
          }

          else
          {
            v185 = __rev16(*(v182 + 1));
            *(v18 + 56) = v185;
            v186 = __rev16(*(v182 + 3));
            if (!v186)
            {
              v186 = -1;
            }

            *(v18 + 60) = v186;
            v187 = rep_typ[*v182 - 98];
            *v18 = v182 + 5;
          }

          if (!v185)
          {
            v548 = 0;
            v13 = v187;
            goto LABEL_1233;
          }

          v13 = v187;
        }

        v541 = 1;
        do
        {
          v177 = *(v18 + 80);
          if (v177 >= *(a7 + 168))
          {
            goto LABEL_1258;
          }

          *(v18 + 80) = v177 + 1;
          v542 = *v177;
          if (v17 && v542 >= 0xC0)
          {
            if ((v542 & 0x20) != 0)
            {
              v543 = v177[1] & 0x3F;
              if ((v542 & 0x10) != 0)
              {
                if ((v542 & 8) != 0)
                {
                  v545 = v177[2] & 0x3F;
                  v546 = v177[3] & 0x3F;
                  v547 = v177[4] & 0x3F;
                  if ((v542 & 4) != 0)
                  {
                    v542 = ((v542 & 1) << 30) | (v543 << 24) | (v545 << 18) | (v546 << 12) | (v547 << 6) | v177[5] & 0x3F;
                    v544 = v177 + 6;
                  }

                  else
                  {
                    v542 = ((v542 & 3) << 24) | (v543 << 18) | (v545 << 12) | (v546 << 6) | v547;
                    v544 = v177 + 5;
                  }
                }

                else
                {
                  v542 = ((v542 & 7) << 18) | (v543 << 12) | ((v177[2] & 0x3F) << 6) | v177[3] & 0x3F;
                  v544 = v177 + 4;
                }
              }

              else
              {
                v542 = ((v542 & 0xF) << 12) | (v543 << 6) | v177[2] & 0x3F;
                v544 = v177 + 3;
              }

              *(v18 + 80) = v544;
            }

            else
            {
              *(v18 + 80) = v177 + 2;
              v542 = v177[1] & 0x3F | ((v542 & 0x1F) << 6);
            }
          }

          v23 = _pcre2_xclass_8(v542, *(v18 + 16));
          if (!v23)
          {
            goto LABEL_953;
          }

          ++v541;
          v548 = *(v18 + 56);
          v17 = v1327;
        }

        while (v541 <= v548);
        v186 = *(v18 + 60);
        v187 = v13;
LABEL_1233:
        if (v548 == v186)
        {
          continue;
        }

        if (!v187)
        {
          v13 = 0;
          goto LABEL_3492;
        }

        v549 = *(v18 + 80);
        *(v18 + 8) = v549;
        while (v548 < *(v18 + 60))
        {
          if (v549 >= *(a7 + 168))
          {
            v823 = *(a7 + 128);
            if (*(a7 + 128) && (v549 > *(a7 + 184) || *(a7 + 84)))
            {
              *(a7 + 76) = 1;
              if (v823 != 1)
              {
                return 4294967294;
              }
            }

            break;
          }

          v550 = *v549;
          v551 = 1;
          if (v17 && v550 >= 0xC0)
          {
            v552 = v549[1] & 0x3F;
            if ((v550 & 0x20) != 0)
            {
              if ((v550 & 0x10) != 0)
              {
                if ((v550 & 8) != 0)
                {
                  v553 = v549[2] & 0x3F;
                  v554 = v549[3] & 0x3F;
                  v555 = v549[4] & 0x3F;
                  if ((v550 & 4) != 0)
                  {
                    v550 = ((v550 & 1) << 30) | (v552 << 24) | (v553 << 18) | (v554 << 12) | (v555 << 6) | v549[5] & 0x3F;
                    v551 = 6;
                  }

                  else
                  {
                    v550 = ((v550 & 3) << 24) | (v552 << 18) | (v553 << 12) | (v554 << 6) | v555;
                    v551 = 5;
                  }
                }

                else
                {
                  v550 = ((v550 & 7) << 18) | (v552 << 12) | ((v549[2] & 0x3F) << 6) | v549[3] & 0x3F;
                  v551 = 4;
                }
              }

              else
              {
                v550 = ((v550 & 0xF) << 12) | (v552 << 6) | v549[2] & 0x3F;
                v551 = 3;
              }
            }

            else
            {
              v551 = 2;
              v550 = v549[1] & 0x3F | ((v550 & 0x1F) << 6);
            }
          }

          v556 = _pcre2_xclass_8(v550, *(v18 + 16));
          v17 = v1327;
          if (!v556)
          {
            break;
          }

          v549 = (*(v18 + 80) + v551);
          *(v18 + 80) = v549;
          ++v548;
        }

        v13 = 2;
        if (v187 != 2)
        {
          goto LABEL_3373;
        }

        continue;
      case 0x71u:
      case 0x72u:
        v64 = v21 == 114;
        *(v18 + 64) = v64;
        *(v18 + 40) = ((v20[1] << 9) | (2 * v20[2])) - 2;
        v70 = v20 + 3;
        *v18 = v20 + 3;
        goto LABEL_178;
      case 0x73u:
      case 0x74u:
        v64 = v21 == 116;
        *(v18 + 64) = v64;
        v65 = __rev16(*(v20 + 3));
        v66 = *(a7 + 136);
        v67 = v20[1];
        v68 = v20[2];
        v69 = *(a7 + 134);
        v70 = v20 + 5;
        *v18 = v20 + 5;
        if (!v65)
        {
          goto LABEL_178;
        }

        v71 = *(v18 + 120);
        v72 = (v66 + (v68 | (v67 << 8)) * v69 + 1);
        while (2)
        {
          v73 = (((*(v72 - 1) << 9) | (2 * *v72)) - 2);
          *(v18 + 40) = v73;
          if (v73 >= v71)
          {
            if (v65 >= 2)
            {
              goto LABEL_77;
            }
          }

          else
          {
            v74 = *(v18 + 128 + 8 * v73) == -1 && v65 > 1;
            if (v74)
            {
LABEL_77:
              v72 += v69;
              --v65;
              continue;
            }
          }

          break;
        }

LABEL_178:
        v116 = *v70;
        if ((v116 - 98) >= 6)
        {
          if ((v116 - 104) >= 2)
          {
            v401 = match_ref(*(v18 + 40), v64, v18, a7, &v1330);
            if (v401)
            {
              v17 = v1327;
              if (v401 < 1)
              {
                v402 = *(v18 + 80);
                if (v402 < *(a7 + 168))
                {
                  goto LABEL_3275;
                }
              }

              else
              {
                v402 = *(a7 + 168);
                *(v18 + 80) = v402;
              }

              v673 = *(a7 + 128);
              if (*(a7 + 128) && (v402 > *(a7 + 184) || *(a7 + 84)))
              {
                *(a7 + 76) = 1;
                if (v673 != 1)
                {
                  return 4294967294;
                }
              }

LABEL_3275:
              v23 = 0;
              goto LABEL_2516;
            }

            *(v18 + 80) += v1330;
            v17 = v1327;
            continue;
          }

          v118 = __rev16(*(v70 + 1));
          *(v18 + 56) = v118;
          v119 = __rev16(*(v70 + 3));
          *(v18 + 60) = v119;
          v124 = *v70;
          v123 = v70 + 5;
          v13 = rep_typ[v124 - 98];
          if (!v119)
          {
            v119 = -1;
          }

          *(v18 + 60) = v119;
          *v18 = v123;
        }

        else
        {
          *v18 = v70 + 1;
          v117 = *v70 - 98;
          v118 = rep_min[v117];
          *(v18 + 56) = v118;
          v119 = rep_max[v117];
          *(v18 + 60) = v119;
          v13 = rep_typ[v117];
        }

        v125 = *(v18 + 40);
        if (v125 >= *(v18 + 120) || (v126 = *(v18 + 128 + 8 * v125), v126 == -1))
        {
          if (!v118 || (*(a7 + 241) & 2) != 0)
          {
            continue;
          }
        }

        else
        {
          if (v126 == *(v18 + 128 + 8 * v125 + 8))
          {
            continue;
          }

          if (!v118)
          {
            v127 = 0;
            goto LABEL_199;
          }
        }

        v128 = 1;
        while (1)
        {
          v1329 = 0;
          v129 = match_ref(*(v18 + 40), *(v18 + 64), v18, a7, &v1329);
          if (v129)
          {
            break;
          }

          *(v18 + 80) += v1329;
          ++v128;
          v127 = *(v18 + 56);
          if (v128 > v127)
          {
            v119 = *(v18 + 60);
            v17 = v1327;
LABEL_199:
            if (v127 != v119)
            {
              if (!v13)
              {
LABEL_3393:
                v8 = a6;
                v14 = 0;
                v1328 = 0;
                a2 = *v18;
                v1287 = 20;
                goto LABEL_3352;
              }

              *(v18 + 8) = *(v18 + 80);
              *(v18 + 24) = *(v18 + 8 * *(v18 + 40) + 136) - *(v18 + 8 * *(v18 + 40) + 128);
              if (v127 >= v119)
              {
                goto LABEL_1542;
              }

              v130 = 1;
              while (1)
              {
                v1329 = 0;
                v131 = match_ref(*(v18 + 40), *(v18 + 64), v18, a7, &v1329);
                if (v131)
                {
                  break;
                }

                if (v1329 != *(v18 + 24))
                {
                  v130 = 0;
                }

                *(v18 + 80) += v1329;
                if (++v127 >= *(v18 + 60))
                {
                  goto LABEL_1541;
                }
              }

              if (v131 >= 1)
              {
                v675 = *(a7 + 128);
                if (*(a7 + 128))
                {
                  if (*(a7 + 168) > *(a7 + 184))
                  {
                    *(a7 + 76) = 1;
                    if (v675 != 1)
                    {
                      return 4294967294;
                    }
                  }
                }
              }

LABEL_1541:
              v17 = v1327;
              if (v130)
              {
LABEL_1542:
                v676 = *(v18 + 80);
LABEL_3274:
                if (v676 < *(v18 + 8))
                {
                  goto LABEL_3275;
                }

                v14 = 0;
                a2 = *v18;
                v1287 = 21;
              }

              else
              {
                *(v18 + 60) = v127;
LABEL_3504:
                v14 = 0;
                a2 = *v18;
                v1287 = 22;
              }

LABEL_3351:
              v8 = a6;
              goto LABEL_3352;
            }

            goto LABEL_8;
          }
        }

        if (v129 < 1)
        {
          v177 = *(v18 + 80);
          v17 = v1327;
          if (v177 < *(a7 + 168))
          {
            goto LABEL_1908;
          }
        }

        else
        {
          v177 = *(a7 + 168);
          *(v18 + 80) = v177;
          v17 = v1327;
        }

LABEL_1258:
        v557 = *(a7 + 128);
        if (*(a7 + 128) && (v177 > *(a7 + 184) || *(a7 + 84)))
        {
          *(a7 + 76) = 1;
          if (v557 != 1)
          {
            return 4294967294;
          }
        }

        goto LABEL_1908;
      case 0x75u:
        v1291 = __rev16(*(v20 + 1));
        v1050 = (*(a7 + 144) + v1291);
        v14 = 0x40000;
        if (v1291)
        {
          v14 = (bswap32(*(v1050 + 3)) >> 16) | 0x40000;
        }

        v8 = a6;
        if (*(v18 + 104) == -1)
        {
          goto LABEL_3456;
        }

        v1292 = v18;
        do
        {
          v1293 = v1292[14];
          if (v1293 == -1)
          {
            goto LABEL_3456;
          }

          v1294 = &v1293[*(a7 + 32)];
          v1292 = &v1294[v1320];
        }

        while (*(v1294 + 13) != v14);
        if (*(v18 + 80) == v1292[10])
        {
          return 4294967244;
        }

LABEL_3456:
        *(v18 + 8) = v1050;
        *(v18 + 56) = v14;
        v1282 = *v1050;
LABEL_3457:
        a2 = &v1050[_pcre2_OP_lengths_8[v1282]];
        v1287 = 11;
LABEL_3352:
        *(v18 + 72) = v1287;
        v15 = &v8[v18];
        if (&v8[v18] < *(a7 + 40))
        {
          goto LABEL_3360;
        }

        v1269 = *(a7 + 24);
        v1270 = 2 * v1269;
        v1271 = *(a7 + 56);
        if (v1271 < (2 * v1269) >> 10)
        {
          v1270 = (v1271 << 10) / v8 * v8;
          if (v1269 >= v1270)
          {
            return 4294967233;
          }
        }

        v1272 = (*a7)(v1270, *(a7 + 16));
        if (!v1272)
        {
          return 4294967248;
        }

        v1273 = v1272;
        memcpy(v1272, *(a7 + 32), *(a7 + 24));
        v1274 = *(a7 + 32);
        if (v1274 != *(a7 + 48))
        {
          (*(a7 + 8))(*(a7 + 32), *(a7 + 16));
        }

        *(a7 + 32) = v1273;
        *(a7 + 40) = &v1273[v1270];
        v18 = &v1273[v18 - v1274];
        v8 = a6;
        *(a7 + 24) = v1270;
        v15 = &a6[v18];
LABEL_3360:
        memcpy(v15 + 80, (v18 + 80), __n);
        v12 = *(v18 + 48) + 1;
        *(v15 + 12) = v12;
        v18 = v15;
        v17 = v1327;
        goto LABEL_2;
      case 0x76u:
      case 0x77u:
        v23 = do_callout(v18, a7, &v1330);
        if (v23 > 0)
        {
          goto LABEL_175;
        }

        if ((v23 & 0x80000000) != 0)
        {
          goto LABEL_176;
        }

        v63 = &v1330[*v18];
        goto LABEL_3314;
      case 0x78u:
        do
        {
          v20 += __rev16(*(v20 + 1));
          *v18 = v20;
        }

        while (*v20 == 120);
        continue;
      case 0x79u:
      case 0x7Au:
      case 0x7Bu:
      case 0x7Cu:
        v41 = 0;
        v42 = &v20[-__rev16(*(v20 + 1))];
        v43 = *v42;
        if (v43 == 134)
        {
          v44 = v1320;
        }

        else
        {
          v44 = v1320;
          if (v43 != 138)
          {
            v45 = (*(a7 + 32) + *(v18 + 112));
            v41 = &v45[v1320];
            *(v18 + 112) = *&v45[v1320 + 112];
            v1322 = v45;
            if (*(v45 + 27) << 16 == 196608)
            {
              memcpy(v41 + 128, (v18 + 128), 8 * *(v18 + 120));
              v17 = v1327;
              *(v41 + 15) = *(v18 + 120);
              *(v41 + 12) = *(v18 + 96);
              *(v18 + 32) = v18 - v41;
              v23 = 1;
              goto LABEL_2516;
            }

            v43 = *v42;
          }
        }

        if (v43 > 131)
        {
          v360 = v43 - 132;
          if (v360 > 0xA)
          {
            goto LABEL_820;
          }

          if (((1 << v360) & 0x630) != 0)
          {
            v361 = *(v42 + 3);
            if (*(v18 + 104) == bswap32(v361) >> 16)
            {
              v362 = &v1322[v44];
              memcpy((v18 + 128), &v1322[v44 + 128], 8 * *&v1322[v44 + 120]);
              v17 = v1327;
              *(v18 + 120) = v362[15];
              *(v18 + 104) = v362[13];
              v190 = *v362;
              goto LABEL_3318;
            }

            v374 = __rev16(v361);
            v375 = 2 * v374 - 2;
            *(v18 + 108) = v374;
            v376 = *(a7 + 152);
            v377 = (*(v41 + 10) - v376);
            v378 = (v18 + 8 * v375);
            v379 = (*(v18 + 80) - v376);
            v378[16] = v377;
            v378[17] = v379;
            if (*(v18 + 120) <= v375)
            {
              *(v18 + 120) = v375 + 2;
            }
          }

          else
          {
            if (!v360)
            {
              goto LABEL_813;
            }

            if (v360 == 1)
            {
              v23 = _pcre2_script_run_8(*(v41 + 10), *(v18 + 80), v1326);
              v17 = v1327;
              if (!v23)
              {
                goto LABEL_2516;
              }
            }
          }
        }

        else
        {
          v23 = 1;
          if (v43 > 128)
          {
            if ((v43 - 130) >= 2)
            {
              if (v43 == 129)
              {
                goto LABEL_2516;
              }
            }

            else
            {
              v363 = *(v18 + 80);
              if (v363 > *(a7 + 192))
              {
                *(a7 + 192) = v363;
              }

              *(v18 + 80) = *(v41 + 10);
            }
          }

          else
          {
            switch(v43)
            {
              case 126:
                goto LABEL_769;
              case 127:
                goto LABEL_2516;
              case 128:
LABEL_769:
                v359 = *(v18 + 80);
                if (v359 > *(a7 + 192))
                {
                  *(a7 + 192) = v359;
                }

                *(v18 + 80) = *(v41 + 10);
LABEL_813:
                *(v18 + 32) = v18 - v41;
                for (i = *v41; ; *v41 = i)
                {
                  i += __rev16(*(i + 1));
                  if (*i != 120)
                  {
                    break;
                  }
                }

                break;
            }
          }
        }

LABEL_820:
        v190 = *v18;
        if (**v18 == 124)
        {
          memcpy(v41 + 80, (v18 + 80), __n);
          v17 = v1327;
          v23 = 4294966298;
          goto LABEL_2516;
        }

        v380 = *(v18 + 73);
        if (v380 != 121 && (!v41 || *(v18 + 80) != *(v41 + 10)))
        {
          v14 = 0;
          v1288 = v190 + 3;
          if (v380 == 123)
          {
            v1287 = 6;
          }

          else
          {
            v1287 = 7;
          }

          if (v380 == 123)
          {
            a2 = v1288;
          }

          else
          {
            a2 = v42;
          }

          goto LABEL_3351;
        }

        goto LABEL_3318;
      case 0x7Du:
        v136 = __rev16(*(v20 + 1));
        if (v17)
        {
          if (v136)
          {
            v137 = *(a7 + 160);
            v138 = *(v18 + 80);
            do
            {
              if (v138 <= v137)
              {
                goto LABEL_3275;
              }

              LODWORD(v136) = v136 - 1;
              v139 = v138 - 1;
              do
              {
                *(v18 + 80) = v139;
                v140 = *v139--;
              }

              while ((v140 & 0xC0) == 0x80);
              v138 = v139 + 1;
            }

            while (v136);
          }

          else
          {
            v138 = *(v18 + 80);
          }
        }

        else
        {
          v383 = *(v18 + 80);
          if (&v383[-*(a7 + 152)] < v136)
          {
            goto LABEL_3275;
          }

          v138 = &v383[-v136];
          *(v18 + 80) = v138;
        }

        if (v138 < *(a7 + 184))
        {
          *(a7 + 184) = v138;
        }

        goto LABEL_3311;
      case 0x7Eu:
      case 0x80u:
      case 0x82u:
      case 0x83u:
        v14 = v21 | 0x20000;
        *(v18 + 56) = v21 | 0x20000;
        v1275 = *v20;
        goto LABEL_3375;
      case 0x7Fu:
      case 0x81u:
        v14 = v21 | 0x20000;
        *(v18 + 56) = v21 | 0x20000;
        v1285 = *v20;
        goto LABEL_3403;
      case 0x84u:
      case 0x85u:
      case 0x8Bu:
        v14 = v21 | 0x20000;
        goto LABEL_3401;
      case 0x86u:
        if (*(a7 + 80) || !*(v18 + 48))
        {
          v14 = 0;
          *(v18 + 56) = 0;
LABEL_3412:
          a2 = &v20[_pcre2_OP_lengths_8[*v20]];
          v1287 = 2;
          goto LABEL_3351;
        }

LABEL_3262:
        v1239 = __rev16(*(v20 + 1));
        *(v18 + 8) = &v20[v1239];
        a2 = &v20[_pcre2_OP_lengths_8[*v20]];
        if (v20[v1239] == 120)
        {
          v14 = 0;
          v1287 = 1;
          goto LABEL_3351;
        }

        *v18 = a2;
        continue;
      case 0x87u:
      case 0x8Cu:
        *(v18 + 64) = 0;
        v1286 = 0x20000;
        v1111 = v20;
        v8 = a6;
        goto LABEL_3408;
      case 0x88u:
      case 0x8Du:
        v14 = (bswap32(*(v20 + 3)) >> 16) | 0x10000;
LABEL_3401:
        *(v18 + 56) = v14;
        goto LABEL_3412;
      case 0x89u:
      case 0x8Eu:
        *(v18 + 64) = 0;
        goto LABEL_3406;
      case 0x8Au:
      case 0x8Fu:
        v113 = __rev16(*(v20 + 1));
        *(v18 + 24) = v113;
        if (v20[v113] != 120)
        {
          v113 -= 3;
          *(v18 + 24) = v113;
        }

        v8 = a6;
        v114 = v20 + 3;
        *v18 = v20 + 3;
        v115 = v20[3];
        if ((v115 & 0xFE) != 0x76)
        {
          goto LABEL_1101;
        }

        v23 = do_callout(v18, a7, &v1330);
        if (v23 > 0)
        {
          goto LABEL_175;
        }

        v17 = v1327;
        if ((v23 & 0x80000000) != 0)
        {
          goto LABEL_2516;
        }

        v510 = v1330;
        v114 = &v1330[*v18];
        *v18 = v114;
        v113 = *(v18 + 24) - v510;
        *(v18 + 24) = v113;
        v115 = *v114;
LABEL_1101:
        v511 = v115;
        if (v115 > 146)
        {
          if (v115 > 148)
          {
            if (v115 != 149)
            {
              if (v115 != 162)
              {
                goto LABEL_3505;
              }

              goto LABEL_3308;
            }

            goto LABEL_3242;
          }

          if (v115 == 147)
          {
            v621 = *(v18 + 104);
            if (v621 != -1)
            {
              if (v114[4] | (v114[3] << 8))
              {
                v622 = (v114[3] << 8) + v114[4] + 1;
                v623 = *(a7 + 136) + *(a7 + 134) * __rev16(*(v114 + 1)) + 1;
                while (v621 != bswap32(*(v623 - 1)) >> 16)
                {
                  v623 += *(a7 + 134);
                  if (--v622 <= 1)
                  {
                    goto LABEL_3308;
                  }
                }

                v511 = 0x93u;
                goto LABEL_3242;
              }
            }
          }

          goto LABEL_3308;
        }

        if (v115 <= 144)
        {
          if (v115 != 144)
          {
            if (v115 == 126)
            {
              v1300 = 1;
            }

            else
            {
LABEL_3505:
              v1300 = v115 == 128;
            }

            *(v18 + 56) = v1300;
            *(v18 + 8) = v114;
            v1295 = *v114;
            v1296 = *v114;
LABEL_3507:
            v14 = v1295 | 0x30000;
            a2 = &v114[_pcre2_OP_lengths_8[v1296]];
            v1287 = 5;
            goto LABEL_3352;
          }

          v617 = ((v114[1] << 9) | (2 * v114[2])) - 2;
          if (v617 >= *(v18 + 120) || *(v18 + 8 * v617 + 128) == -1)
          {
LABEL_3308:
            a2 = &v114[v113];
            *v18 = &v114[v113];
            if (*(v18 + 73) == 143)
            {
              v14 = 131215;
              v1287 = 35;
              goto LABEL_3351;
            }

            continue;
          }

          v511 = 0x90u;
        }

        else
        {
          if (v115 == 145)
          {
            if (!(v114[4] | (v114[3] << 8)))
            {
              goto LABEL_3308;
            }

            v618 = (v114[3] << 8) + v114[4] + 1;
            v619 = (*(a7 + 136) + *(a7 + 134) * __rev16(*(v114 + 1)) + 1);
            while (1)
            {
              v620 = ((*(v619 - 1) << 9) | (2 * *v619)) - 2;
              if (v620 < *(v18 + 120) && *(v18 + 128 + 8 * v620) != -1)
              {
                break;
              }

              v619 += *(a7 + 134);
              if (--v618 <= 1)
              {
                goto LABEL_3308;
              }
            }

            v511 = 0x91u;
            goto LABEL_3242;
          }

          v512 = *(v18 + 104);
          if (v512 == -1)
          {
            goto LABEL_3308;
          }

          v513 = __rev16(*(v114 + 1));
          if (v513 != 0xFFFF && v513 != v512)
          {
            goto LABEL_3308;
          }

          v511 = 0x92u;
        }

LABEL_3242:
        v113 = _pcre2_OP_lengths_8[v511];
        goto LABEL_3308;
      case 0x96u:
        v14 = 0;
        a2 = v20 + 1;
        *(v18 + 8) = v20 + 1;
        v1287 = 9;
        goto LABEL_3351;
      case 0x97u:
        v1289 = v20 + 1;
        *(v18 + 8) = v20 + 1;
        do
        {
          v1289 += __rev16(*(v1289 + 1));
          *(v18 + 8) = v1289;
        }

        while (*v1289 == 120);
        v14 = 0;
        a2 = v1289 + 3;
        v1287 = 10;
        goto LABEL_3351;
      case 0x98u:
        *(v18 + 64) = 1;
        v1111 = v20 + 1;
        *v18 = v20 + 1;
        v1290 = v20[1];
        if (v1290 == 137)
        {
          ++v20;
LABEL_3406:
          v8 = a6;
        }

        else
        {
          v8 = a6;
          if (v1290 != 142)
          {
            v1286 = 0x20000;
LABEL_3408:
            *(v18 + 56) = v1286;
            *(v18 + 60) = 0;
            *(v18 + 16) = v1111;
            goto LABEL_3502;
          }

          ++v20;
        }

        v1286 = (bswap32(*(v20 + 3)) >> 16) | 0x10000;
        v1111 = v20;
        goto LABEL_3408;
      case 0x99u:
        v14 = 0;
        *(a7 + 208) = v20 + 2;
        *(v18 + 96) = v20 + 2;
        a2 = &v20[v20[1] + _pcre2_OP_lengths_8[*v20]];
        v1287 = 12;
        goto LABEL_3351;
      case 0x9Au:
        v14 = 0;
        a2 = v20 + 1;
        v1287 = 14;
        goto LABEL_3351;
      case 0x9Bu:
        v14 = 0;
        *(a7 + 208) = v20 + 2;
        *(v18 + 96) = v20 + 2;
        a2 = &v20[v20[1] + _pcre2_OP_lengths_8[*v20]];
        v1287 = 15;
        goto LABEL_3351;
      case 0x9Cu:
        v14 = 0;
        a2 = v20 + 1;
        v1287 = 16;
        goto LABEL_3351;
      case 0x9Du:
        v133 = *(a7 + 248);
        v134 = *(a7 + 244) + 1;
        *(a7 + 244) = v134;
        v135 = _pcre2_OP_lengths_8[*v20];
        if (v134 > v133)
        {
          v14 = 0;
          a2 = &v20[v135 + v20[1]];
          v1287 = 17;
          goto LABEL_3351;
        }

        *v18 = &v20[v135 + v20[1]];
        continue;
      case 0x9Eu:
        v14 = 0;
        a2 = v20 + 1;
        v1287 = 18;
        goto LABEL_3351;
      case 0x9Fu:
        v14 = 0;
        *(a7 + 208) = v20 + 2;
        *(v18 + 96) = v20 + 2;
        a2 = &v20[v20[1] + _pcre2_OP_lengths_8[*v20]];
        v1287 = 19;
        goto LABEL_3351;
      case 0xA0u:
        v14 = 0;
        a2 = v20 + 1;
        v1287 = 13;
        goto LABEL_3351;
      case 0xA1u:
        v14 = 0;
        *(a7 + 208) = v20 + 2;
        *(v18 + 96) = v20 + 2;
        a2 = &v20[v20[1] + _pcre2_OP_lengths_8[*v20]];
        v1287 = 36;
        goto LABEL_3351;
      case 0xA2u:
        goto LABEL_2516;
      case 0xA4u:
        v189 = *(v18 + 80);
        if (v189 > *(a7 + 192))
        {
          *(a7 + 192) = v189;
        }

        v23 = 4294966297;
        v1319 = v18;
        goto LABEL_2516;
      case 0xA5u:
        if (*(v18 + 104) != -1)
        {
          goto LABEL_213;
        }

        v498 = *(v20 + 1);
        v499 = __rev16(v498);
        v500 = (bswap32(v498) >> 16) | 0x10000;
        v501 = v18;
        do
        {
          v502 = v501[14];
          if (v502 == -1)
          {
            return 4294967252;
          }

          v503 = &v502[*(a7 + 32)];
          v501 = &v503[v1320];
        }

        while (*(v503 + 13) != v500);
        v1322 = v503;
        v504 = 2 * v499 - 2;
        *(v18 + 108) = v499;
        v505 = v501[10];
        v506 = *(a7 + 152);
        v507 = &v505[-v506];
        v508 = (v18 + 8 * v504);
        v509 = (*(v18 + 80) - v506);
        v508[16] = v507;
        v508[17] = v509;
        if (*(v18 + 120) <= v504)
        {
          *(v18 + 120) = v504 + 2;
        }

LABEL_213:
        *v18 = &v20[_pcre2_OP_lengths_8[*v20]];
        continue;
      case 0xA6u:
        v190 = v20 + 1;
        *v18 = v20 + 1;
        do
        {
          v190 += __rev16(*(v190 + 1));
          *v18 = v190;
        }

        while (*v190 == 120);
        goto LABEL_3318;
      default:
        return v22;
    }
  }
}