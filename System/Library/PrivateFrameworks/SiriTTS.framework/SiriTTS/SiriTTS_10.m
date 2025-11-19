uint64_t kaldi::CompressedMatrix::Write(uint64_t *a1, void *a2, int a3, uint64_t a4, const char *a5)
{
  if (a3)
  {
    v7 = a4;
    if (a4)
    {
      v8 = "CN";
    }

    else
    {
      v8 = "CM";
    }

    kaldi::WriteToken(a2, 1, v8, a4, a5);
    if (v7 && !fst::AlignOutput(a2))
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v14, "Write", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/compressed-matrix.cc", 261);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v14, "Could not align output");
LABEL_18:
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v14);
    }

    if (*a1)
    {
      v9 = (*(*a1 + 8) + 8) * *(*a1 + 12) + 16;
    }

    else
    {
      v14[0] = 0;
      v14[1] = 0;
    }

    result = std::ostream::write();
  }

  else
  {
    v10 = *a1;
    if (*a1)
    {
      v11 = *(v10 + 8);
      v12 = *(v10 + 12);
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }

    kaldi::Matrix<float>::Matrix(v14, v11, v12, 1, 0);
    kaldi::CompressedMatrix::CopyToMat<float>(a1, v14);
    kaldi::MatrixBase<float>::Write(v14, a2, 0, 0);
    result = kaldi::Matrix<float>::~Matrix(v14);
  }

  if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v14, "Write", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/compressed-matrix.cc", 303);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v14, "Error writing compressed matrix to stream.");
    goto LABEL_18;
  }

  return result;
}

void kaldi::CompressedMatrix::Read(uint64_t a1, void *a2, int a3, uint64_t a4)
{
  v40 = *MEMORY[0x1E69E9840];
  if (*a1)
  {
    if (*(a1 + 8) == 1)
    {
      *(a1 + 8) = 0;
    }

    else
    {
      MEMORY[0x1C692ADF0]();
    }

    *a1 = 0;
  }

  if (!a3)
  {
    v14 = kaldi::Matrix<float>::Matrix(v38);
    kaldi::Matrix<float>::Read(v38, a2, 0, 0, 0, v14);
    kaldi::CompressedMatrix::CopyFromMat<float>(a1, v38);
LABEL_22:
    kaldi::Matrix<float>::~Matrix(v38);
LABEL_23:
    if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v38, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/compressed-matrix.cc", 404);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v38, "Failed to read data.");
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v38);
    }

    goto LABEL_24;
  }

  if (kaldi::Peek(a2, 1) != 67)
  {
    v15 = kaldi::Matrix<float>::Matrix(v38);
    kaldi::Matrix<float>::Read(v38, a2, 1, a4 != 0, 0, v15);
    kaldi::CompressedMatrix::CopyFromMat<float>(a1, v38);
    goto LABEL_22;
  }

  v37 = 2;
  if (a4)
  {
    v10 = 20035;
  }

  else
  {
    v10 = 19779;
  }

  v35 = v10;
  v36 = 0;
  __p = 0;
  v33 = 0;
  v34 = 0;
  kaldi::ReadToken(a2, 1, &__p, v8, v9);
  v11 = HIBYTE(v34);
  if (v34 < 0)
  {
    v11 = v33;
  }

  if (v11 == 2)
  {
    p_p = __p;
    if (v34 >= 0)
    {
      p_p = &__p;
    }

    if (*p_p == v35)
    {
      if (!a4)
      {
        goto LABEL_37;
      }

      goto LABEL_33;
    }
  }

  if (SHIBYTE(v34) < 0)
  {
    if (v33 != 2)
    {
      goto LABEL_45;
    }

    v13 = __p;
  }

  else
  {
    if (SHIBYTE(v34) != 2)
    {
      goto LABEL_45;
    }

    v13 = &__p;
  }

  if (*v13 != v35)
  {
    goto LABEL_45;
  }

  v17 = &__p;
  if (v34 < 0)
  {
    v17 = __p;
  }

  if (v17[1] != 78)
  {
LABEL_45:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v38, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/compressed-matrix.cc", 323);
    v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "Expected token ", 15);
    v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, &v35, 2);
    v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, ", got ", 6);
    if (v34 >= 0)
    {
      v27 = &__p;
    }

    else
    {
      v27 = __p;
    }

    if (v34 >= 0)
    {
      v28 = HIBYTE(v34);
    }

    else
    {
      v28 = v33;
    }

    v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, v27, v28);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, ". This could mean that you're trying to memory map an unaligned file.", 69);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v38);
  }

  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiLogMessage::KaldiLogMessage(v38, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/compressed-matrix.cc", 320);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "Reading aligned matrix as a stream", 34);
    kaldi::KaldiLogMessage::~KaldiLogMessage(v38);
  }

LABEL_33:
  fst::AlignInput();
  if (a4)
  {
    std::istream::tellg();
    v18 = a4 + v39;
    *a1 = a4 + v39;
    *(a1 + 8) = 1;
    v19 = ((*(v18 + 8) + 8) * *(v18 + 12) + 16);
    std::istream::seekg();
    if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v38, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/compressed-matrix.cc", 342);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "Seeking for aligned data failed", 31);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v38);
    }

    if (SHIBYTE(v34) < 0)
    {
      operator delete(__p);
    }

    goto LABEL_23;
  }

LABEL_37:
  std::istream::read();
  if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v38, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/compressed-matrix.cc", 349);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "Failed to read header", 21);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v38);
  }

  if (v31)
  {
    kaldi::CompressedMatrix::AllocateData(((v30 + 8) * v31 + 16), v20, v21, v22, v23);
  }

  if (SHIBYTE(v34) < 0)
  {
    operator delete(__p);
  }

LABEL_24:
  v16 = *MEMORY[0x1E69E9840];
}

void sub_1C3046608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  kaldi::Matrix<float>::~Matrix(va);
  _Unwind_Resume(a1);
}

float kaldi::CompressedMatrix::Sum(kaldi::CompressedMatrix *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*this)
  {
    v6 = *(*this + 8);
  }

  else
  {
    v6 = 0;
  }

  memset(v18, 0, sizeof(v18));
  kaldi::Vector<float>::Resize(v18, v6, 0, a4, a5);
  v14 = 0;
  v15 = 0.0;
  while (1)
  {
    v16 = *this;
    if (*this)
    {
      LODWORD(v16) = *(v16 + 12);
    }

    if (v14 >= v16)
    {
      break;
    }

    kaldi::CompressedMatrix::CopyColToVec<float>(this, v14, v18, v9, v10, v11, v12, v13, v7, v8);
    v9 = kaldi::VectorBase<float>::Sum(v18);
    v15 = v15 + *&v9;
    ++v14;
  }

  kaldi::Vector<float>::Destroy(v18);
  return v15;
}

void sub_1C30466E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::Vector<float>::Destroy(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::CompressedMatrix::operator=(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*a1)
  {
    if (*(a1 + 8) == 1)
    {
      *(a1 + 8) = 0;
    }

    else
    {
      MEMORY[0x1C692ADF0]();
    }

    *a1 = 0;
  }

  if (*a2)
  {
    kaldi::CompressedMatrix::AllocateData(((*(*a2 + 8) + 8) * *(*a2 + 12) + 16), a2, a3, a4, a5);
  }

  return a1;
}

uint64_t kaldi::CompressedMatrix::CompressedMatrix(uint64_t this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  *this = 0;
  *(this + 8) = 0;
  return kaldi::CompressedMatrix::operator=(this, a2, a3, a4, a5);
}

void kaldi::CompressedMatrix::ComputeColHeader<float>(float *a1, float *a2, int a3, int a4, uint64_t a5)
{
  if (a4 <= 0)
  {
    kaldi::KaldiAssertFailure_("ComputeColHeader", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/compressed-matrix.cc", 0x84, "num_rows > 0", a5);
  }

  v10 = a4;
  std::vector<float>::vector[abi:ne200100](&__p, a4);
  v12 = __p;
  v13 = v43;
  if (v43 != __p)
  {
    v14 = (v43 - __p) >> 2;
    if (v14 <= 1)
    {
      v14 = 1;
    }

    v15 = __p;
    do
    {
      v11 = *a2;
      *v15++ = *a2;
      a2 += a3;
      --v14;
    }

    while (v14);
  }

  if (a4 <= 4)
  {
    std::__sort<std::__less<float,float> &,float *>();
    v24 = __p;
    v35 = *a1;
    v36 = a1[1];
    v37 = (*__p - *a1) / v36;
    v38 = 1.0;
    if (v37 > 1.0)
    {
      v37 = 1.0;
    }

    if (v37 >= 0.0)
    {
      v39 = v37;
    }

    else
    {
      v39 = 0.0;
    }

    v32 = ((v39 * 65535.0) + 0.499);
    *a5 = v32;
    if (a4 == 1)
    {
      LOWORD(v32) = v32 + 1;
      *(a5 + 2) = v32;
    }

    else
    {
      if (((v24[1] - v35) / v36) <= 1.0)
      {
        v38 = (v24[1] - v35) / v36;
      }

      if (v38 < 0.0)
      {
        v38 = 0.0;
      }

      v32 = (v32 + 1);
      if (v32 <= ((v38 * 65535.0) + 0.499))
      {
        LOWORD(v32) = ((v38 * 65535.0) + 0.499);
      }

      *(a5 + 2) = v32;
      if (a4 > 2)
      {
        if (((v24[2] - v35) / v36) <= 1.0)
        {
          v40 = (v24[2] - v35) / v36;
        }

        else
        {
          v40 = 1.0;
        }

        if (v40 < 0.0)
        {
          v40 = 0.0;
        }

        v32 = (v32 + 1);
        if (v32 <= ((v40 * 65535.0) + 0.499))
        {
          LOWORD(v32) = ((v40 * 65535.0) + 0.499);
        }

        *(a5 + 4) = v32;
        if (a4 == 4)
        {
          v41 = (v24[3] - v35) / v36;
          if (v41 > 1.0)
          {
            v41 = 1.0;
          }

          if (v41 < 0.0)
          {
            v41 = 0.0;
          }

          v34 = (v41 * 65535.0) + 0.499;
          goto LABEL_33;
        }

LABEL_63:
        LOWORD(v32) = v32 + 1;
        goto LABEL_64;
      }
    }

    LOWORD(v32) = v32 + 1;
    *(a5 + 4) = v32;
    goto LABEL_63;
  }

  v16 = a4 >> 2;
  v17 = v16;
  v18 = &v12[v17];
  if (&v12[v17] != v13)
  {
    std::__nth_element[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<float *>>(v12, &v12[v16], v13, v11);
    v12 = __p;
    v18 = (__p + v17 * 4);
  }

  std::__nth_element[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<float *>>(v12, v12, v18, v11);
  v20 = (3 * v16);
  v22 = __p;
  v21 = v43;
  v23 = (__p + 4 * v20);
  if (v23 != v43)
  {
    std::__nth_element[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<float *>>((__p + v17 * 4 + 4), v23, v43, v19);
    v22 = __p;
    v21 = v43;
  }

  std::__nth_element[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<float *>>(&v22[(3 * v16) + 1], v21 - 1, v21, v19);
  v24 = __p;
  v25 = *a1;
  v26 = a1[1];
  v27 = (*__p - *a1) / v26;
  if (v27 > 1.0)
  {
    v27 = 1.0;
  }

  if (v27 < 0.0)
  {
    v27 = 0.0;
  }

  v28 = ((v27 * 65535.0) + 0.499);
  *a5 = v28;
  v29 = (v24[v16] - v25) / v26;
  if (v29 > 1.0)
  {
    v29 = 1.0;
  }

  if (v29 < 0.0)
  {
    v29 = 0.0;
  }

  v30 = (v28 + 1);
  if (v30 <= ((v29 * 65535.0) + 0.499))
  {
    LOWORD(v30) = ((v29 * 65535.0) + 0.499);
  }

  *(a5 + 2) = v30;
  v31 = (v24[v20] - v25) / v26;
  if (v31 > 1.0)
  {
    v31 = 1.0;
  }

  if (v31 < 0.0)
  {
    v31 = 0.0;
  }

  v32 = (v30 + 1);
  if (v32 <= ((v31 * 65535.0) + 0.499))
  {
    LOWORD(v32) = ((v31 * 65535.0) + 0.499);
  }

  *(a5 + 4) = v32;
  v33 = (v24[v10 - 1] - v25) / v26;
  if (v33 > 1.0)
  {
    v33 = 1.0;
  }

  if (v33 < 0.0)
  {
    v33 = 0.0;
  }

  v34 = (v33 * 65535.0) + 0.499;
LABEL_33:
  v32 = (v32 + 1);
  if (v32 <= v34)
  {
    LOWORD(v32) = v34;
  }

LABEL_64:
  *(a5 + 6) = v32;
  v43 = v24;
  operator delete(v24);
}

void sub_1C3046B44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__nth_element[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<float *>>(float *a1, float *a2, float *a3, float a4)
{
  while (a3 != a2)
  {
    v4 = a3 - a1;
    if (v4 < 2)
    {
      break;
    }

    if (v4 == 3)
    {
      v37 = a1[1];
      v38 = *(a3 - 1);
      if (v37 < v38)
      {
        v39 = *(a1 + 1);
      }

      else
      {
        v39 = *(a3 - 1);
      }

      if (v37 < v38)
      {
        v37 = *(a3 - 1);
      }

      *(a3 - 1) = v37;
      *(a1 + 1) = v39;
      v40 = *(a3 - 1);
      if (v40 < *a1)
      {
        v41 = *(a3 - 1);
      }

      else
      {
        v41 = *a1;
      }

      if (v40 < *a1)
      {
        v40 = *a1;
      }

      *(a3 - 1) = v40;
      v42 = a1[1];
      if (v41 < v42)
      {
        v41 = a1[1];
      }

      else
      {
        *a1 = v42;
      }

      a1[1] = v41;
      return;
    }

    if (v4 == 2)
    {
      v43 = *(a3 - 1);
      v44 = *a1;
      if (v43 < *a1)
      {
        *a1 = v43;
        *(a3 - 1) = v44;
      }

      return;
    }

    if (v4 <= 7)
    {
      std::__selection_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<float *>>(a1, a3, a4);
      return;
    }

    v5 = &a1[(a3 - a1) >> 3];
    v6 = a3 - 1;
    v7 = *(a3 - 1);
    v8 = *v5;
    if (*v5 < v7)
    {
      v9 = *v5;
    }

    else
    {
      v9 = *(a3 - 1);
    }

    if (*v5 < v7)
    {
      v10 = *(a3 - 1);
    }

    else
    {
      v10 = *v5;
    }

    *v6 = v10;
    *v5 = v9;
    v11 = *v6;
    v12 = *a1;
    if (*v6 < *a1)
    {
      v13 = *v6;
    }

    else
    {
      v13 = *a1;
    }

    if (*v6 < *a1)
    {
      v14 = *a1;
    }

    else
    {
      v14 = *v6;
    }

    *v6 = v14;
    v15 = *v5;
    v16 = *v5;
    if (v13 >= *v5)
    {
      *a1 = v15;
      v16 = v13;
    }

    v17 = v11 >= v12;
    if (v13 >= v15)
    {
      v17 = 1;
    }

    *v5 = v16;
    if (v8 >= v7)
    {
      v17 = 1;
    }

    a4 = *a1;
    if (*a1 >= v16)
    {
      v18 = a3 - 1;
      while (--v18 != a1)
      {
        if (*v18 < v16)
        {
          *a1 = *v18;
          *v18 = a4;
          if (v17)
          {
            v17 = 2;
          }

          else
          {
            v17 = 1;
          }

          goto LABEL_33;
        }
      }

      v28 = a1 + 1;
      if (a4 >= *v6)
      {
        while (v28 != v6)
        {
          v29 = *v28;
          if (a4 < *v28)
          {
            *v28++ = *v6;
            *v6 = v29;
            goto LABEL_65;
          }

          ++v28;
        }

        return;
      }

LABEL_65:
      if (v28 == v6)
      {
        return;
      }

      while (1)
      {
        v32 = *a1;
        do
        {
          v33 = *v28++;
          a4 = v33;
        }

        while (v32 >= v33);
        v34 = v28 - 1;
        do
        {
          v35 = *--v6;
          v36 = v35;
        }

        while (v32 < v35);
        if (v34 >= v6)
        {
          break;
        }

        *v34 = v36;
        *v6 = a4;
      }

      a1 = v28 - 1;
      if (v34 > a2)
      {
        return;
      }
    }

    else
    {
      v18 = a3 - 1;
LABEL_33:
      v19 = a1 + 1;
      if (a1 + 1 >= v18)
      {
        v23 = a1 + 1;
      }

      else
      {
        v20 = a1 + 1;
        while (1)
        {
          v21 = *v5;
          do
          {
            v22 = *v20++;
            a4 = v22;
          }

          while (v22 < v21);
          v23 = v20 - 1;
          do
          {
            v24 = *--v18;
            v25 = v24;
          }

          while (v24 >= v21);
          if (v23 >= v18)
          {
            break;
          }

          *v23 = v25;
          *v18 = a4;
          ++v17;
          if (v23 == v5)
          {
            v5 = v18;
          }
        }
      }

      if (v23 != v5)
      {
        a4 = *v5;
        v26 = *v23;
        if (*v5 < *v23)
        {
          *v23 = a4;
          *v5 = v26;
          ++v17;
        }
      }

      if (v23 == a2)
      {
        return;
      }

      if (!v17)
      {
        if (v23 <= a2)
        {
          v30 = v23 + 1;
          while (v30 != a3)
          {
            v31 = *(v30 - 1);
            a4 = *v30++;
            if (a4 < v31)
            {
              goto LABEL_49;
            }
          }
        }

        else
        {
          while (v19 != v23)
          {
            v27 = *(v19 - 1);
            a4 = *v19++;
            if (a4 < v27)
            {
              goto LABEL_49;
            }
          }
        }

        return;
      }

LABEL_49:
      if (v23 <= a2)
      {
        a1 = v23 + 1;
      }

      else
      {
        a3 = v23;
      }
    }
  }
}

float std::__selection_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<float *>>(float *a1, float *a2, float result)
{
  while (a1 != a2 - 1)
  {
    v3 = a1++;
    if (v3 != a2 && a1 != a2)
    {
      result = *v3;
      v4 = a1;
      v5 = v3;
      v6 = a1;
      do
      {
        v7 = *v6++;
        v8 = v7;
        if (v7 < result)
        {
          result = v8;
          v5 = v4;
        }

        v4 = v6;
      }

      while (v6 != a2);
      if (v5 != v3)
      {
        result = *v3;
        *v3 = *v5;
        *v5 = result;
      }
    }
  }

  return result;
}

void *std::vector<double>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<double>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<double>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1C3046F0C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::Matrix<float>::Matrix<double>(uint64_t a1, uint64_t a2, int a3)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  if (a3 == 111)
  {
    kaldi::Matrix<float>::Resize(a1, *(a2 + 12), *(a2 + 8), 0, 0);
    v7 = 111;
  }

  else
  {
    kaldi::Matrix<float>::Resize(a1, *(a2 + 8), *(a2 + 12), 0, 0);
    v7 = 112;
  }

  kaldi::MatrixBase<float>::CopyFromMat<double>(a1, a2, v7, v5, v6);
  return a1;
}

void kaldi::MatrixBase<float>::CopyFromMat<double>(uint64_t a1, uint64_t a2, int a3, uint64_t a4, const char *a5)
{
  v7 = *(a2 + 12);
  if (a3 == 111)
  {
    v8 = *(a1 + 12);
    if (v8 != v7 || *(a1 + 8) != *(a2 + 8))
    {
      kaldi::KaldiAssertFailure_("CopyFromMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0x34D, "num_rows_ == M.NumRows() && num_cols_ == M.NumCols()", a5);
    }

    if (v8 >= 1)
    {
      v9 = 0;
      do
      {
        kaldi::MatrixBase<float>::Row(a1, v9, a5, v30);
        if (*(a2 + 12) <= v9)
        {
          kaldi::KaldiAssertFailure_("Row", "../engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.h", 0x129, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v12);
        }

        v13 = *a2 + 8 * (*(a2 + 16) * v9);
        v14 = *(a2 + 8);
        v28 = 0;
        v29 = 0;
        v26 = v13;
        v27 = v14;
        kaldi::VectorBase<float>::CopyFromVec<double>(v30, &v26, v10, v11, v12);
        ++v9;
      }

      while (v9 < *(a1 + 12));
    }
  }

  else
  {
    v15 = *(a1 + 8);
    if (v15 != v7 || (v16 = *(a1 + 12), v16 != *(a2 + 8)))
    {
      kaldi::KaldiAssertFailure_("CopyFromMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0x350, "num_cols_ == M.NumRows() && num_rows_ == M.NumCols()", a5);
    }

    if (v16 >= 1)
    {
      v17 = 0;
      v18 = *a1;
      v19 = *a2;
      v20 = 4 * *(a1 + 16);
      v21 = 8 * *(a2 + 16);
      do
      {
        v22 = v15;
        v23 = v19;
        v24 = v18;
        if (v15 >= 1)
        {
          do
          {
            v25 = *v23;
            *v24++ = v25;
            v23 = (v23 + v21);
            --v22;
          }

          while (v22);
        }

        ++v17;
        v18 = (v18 + v20);
        ++v19;
      }

      while (v17 != v16);
    }
  }
}

void kaldi::Matrix<double>::Resize(uint64_t a1, uint64_t a2, uint64_t a3, int a4, const char *a5)
{
  v5 = a5;
  v6 = a3;
  v7 = a2;
  v9 = *(a1 + 16);
  if (v9 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *(a1 + 20) / v9;
  }

  if (v9 == a3)
  {
    v11 = 0;
  }

  else
  {
    v11 = a5;
  }

  v12 = *a1;
  if (!a4)
  {
    v16 = 1;
    goto LABEL_35;
  }

  if (a4 != 2)
  {
    if (a4 == 3)
    {
      if (!v12)
      {
        kaldi::Matrix<double>::Init(a1, a2, a3, a5, a5);
        goto LABEL_57;
      }

      if (*(a1 + 12) == a2)
      {
        v13 = *(a1 + 8) == a3 ? v11 : 1;
        if ((v13 & 1) == 0)
        {
          return;
        }
      }

      if (v9 >= a3 && v10 >= a2)
      {
        v15 = v11;
      }

      else
      {
        v15 = 1;
      }

      if ((v15 & 1) == 0)
      {
        *(a1 + 8) = a3;
        *(a1 + 12) = a2;
        goto LABEL_57;
      }

      LOBYTE(v16) = 1;
LABEL_43:
      if ((*(a1 + 32) & 1) == 0)
      {
        free(v12);
      }

      *(a1 + 32) = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *a1 = 0;
      kaldi::Matrix<double>::Init(a1, v7, v6, v5, a5);
      if ((v16 & 1) == 0)
      {
        return;
      }

LABEL_57:

      kaldi::MatrixBase<double>::SetZero(a1);
      return;
    }

    v16 = 0;
    if (!v12)
    {
LABEL_48:
      kaldi::Matrix<double>::Init(a1, a2, a3, a5, a5);
      if (!v16)
      {
        return;
      }

      goto LABEL_57;
    }

LABEL_36:
    if (v9 >= a3 && v10 >= a2)
    {
      v21 = v11;
    }

    else
    {
      v21 = 1;
    }

    if ((v21 & 1) == 0)
    {
      *(a1 + 8) = a3;
      *(a1 + 12) = a2;
      if (!v16)
      {
        return;
      }

      goto LABEL_57;
    }

    goto LABEL_43;
  }

  v16 = 1;
  if (!a2 || !v12)
  {
LABEL_35:
    if (!v12)
    {
      goto LABEL_48;
    }

    goto LABEL_36;
  }

  if (v9 < a3 || v10 < a2)
  {
    v11 = 1;
  }

  v18 = *(a1 + 12);
  if (v11)
  {
    v19 = a2 <= v18 && *(a1 + 8) >= a3;
    v42 = 0;
    memset(v41, 0, sizeof(v41));
    kaldi::Matrix<double>::Resize(v41, a2, a3, v19, a5);
    if (*(a1 + 12) >= v7)
    {
      v24 = v7;
    }

    else
    {
      v24 = *(a1 + 12);
    }

    if (*(a1 + 8) >= v6)
    {
      v25 = v6;
    }

    else
    {
      v25 = *(a1 + 8);
    }

    v40 = 0;
    if (!HIDWORD(v41[1]) || !LODWORD(v41[1]) || HIDWORD(v41[1]) < v24 || LODWORD(v41[1]) < v25)
    {
      kaldi::KaldiAssertFailure_("SubMatrix", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0x71A, "static_cast<UnsignedMatrixIndexT>(ro) < static_cast<UnsignedMatrixIndexT>(M.num_rows_) && static_cast<UnsignedMatrixIndexT>(co) < static_cast<UnsignedMatrixIndexT>(M.num_cols_) && static_cast<UnsignedMatrixIndexT>(r) <= static_cast<UnsignedMatrixIndexT>(M.num_rows_ - ro) && static_cast<UnsignedMatrixIndexT>(c) <= static_cast<UnsignedMatrixIndexT>(M.num_cols_ - co)", v23);
    }

    v37 = v25;
    v38 = v24;
    v36 = v41[0];
    v39 = v41[2];
    kaldi::SubMatrix<double>::SubMatrix(v35, a1, 0, v24, 0, v25);
    kaldi::MatrixBase<double>::CopyFromMat<double>(&v36, v35, 111, v26, v27);
    v28 = v41[0];
    v41[0] = *a1;
    v29 = v41[0];
    *a1 = v28;
    v30 = *&v41[1];
    *&v41[1] = *(a1 + 8);
    *(a1 + 8) = v30;
    v31 = v42;
    v32 = *(a1 + 32);
    v42 = v32;
    *(a1 + 32) = v31;
    if (v29 && (v32 & 1) == 0)
    {
      free(v29);
    }
  }

  else
  {
    v22 = *(a1 + 8);
    *(a1 + 8) = v9;
    *(a1 + 12) = v10;
    if (a3 > v22)
    {
      kaldi::SubMatrix<double>::SubMatrix(v41, a1, 0, a2, v22, a3 - v22);
      if (LODWORD(v41[1]) == LODWORD(v41[2]))
      {
        bzero(v41[0], 8 * SLODWORD(v41[1]) * SHIDWORD(v41[1]));
      }

      else if (SHIDWORD(v41[1]) >= 1)
      {
        v33 = 0;
        do
        {
          bzero(v41[0] + 8 * LODWORD(v41[2]) * v33++, 8 * SLODWORD(v41[1]));
        }

        while (v33 < SHIDWORD(v41[1]));
      }
    }

    if (v7 > v18)
    {
      kaldi::SubMatrix<double>::SubMatrix(v41, a1, v18, v7 - v18, 0, v6);
      if (LODWORD(v41[1]) == LODWORD(v41[2]))
      {
        bzero(v41[0], 8 * SLODWORD(v41[1]) * SHIDWORD(v41[1]));
      }

      else if (SHIDWORD(v41[1]) >= 1)
      {
        v34 = 0;
        do
        {
          bzero(v41[0] + 8 * LODWORD(v41[2]) * v34++, 8 * SLODWORD(v41[1]));
        }

        while (v34 < SHIDWORD(v41[1]));
      }
    }

    *(a1 + 8) = v6;
    *(a1 + 12) = v7;
  }
}

void sub_1C304750C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a17)
  {
    if ((a21 & 1) == 0)
    {
      free(a17);
    }
  }

  _Unwind_Resume(exception_object);
}

void kaldi::MatrixBase<double>::CopyFromMat<float>(uint64_t a1, uint64_t a2, int a3, uint64_t a4, const char *a5)
{
  v7 = *(a2 + 12);
  if (a3 == 111)
  {
    v8 = *(a1 + 12);
    if (v8 != v7 || *(a1 + 8) != *(a2 + 8))
    {
      kaldi::KaldiAssertFailure_("CopyFromMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0x34D, "num_rows_ == M.NumRows() && num_cols_ == M.NumCols()", a5);
    }

    if (v8 >= 1)
    {
      v9 = 0;
      do
      {
        v10 = *a1 + 8 * *(a1 + 16) * v9;
        v11 = *(a1 + 8);
        v28 = 0;
        v29 = 0;
        v26 = v10;
        v27 = v11;
        kaldi::MatrixBase<float>::Row(a2, v9, a5, v25);
        kaldi::VectorBase<double>::CopyFromVec<float>(&v26, v25, v12, v13, v14);
        ++v9;
      }

      while (v9 < *(a1 + 12));
    }
  }

  else
  {
    v15 = *(a1 + 8);
    if (v15 != v7 || (v16 = *(a1 + 12), v16 != *(a2 + 8)))
    {
      kaldi::KaldiAssertFailure_("CopyFromMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0x350, "num_cols_ == M.NumRows() && num_rows_ == M.NumCols()", a5);
    }

    if (v16 >= 1)
    {
      v17 = 0;
      v18 = *a1;
      v19 = *a2;
      v20 = 8 * *(a1 + 16);
      v21 = 4 * *(a2 + 16);
      do
      {
        v22 = v15;
        v23 = v19;
        v24 = v18;
        if (v15 >= 1)
        {
          do
          {
            *v24++ = *v23;
            v23 = (v23 + v21);
            --v22;
          }

          while (v22);
        }

        ++v17;
        v18 = (v18 + v20);
        ++v19;
      }

      while (v17 != v16);
    }
  }
}

unsigned int *kaldi::MatrixBase<double>::CopyFromMat<double>(unsigned int *result, unsigned int *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (a2 != result)
  {
    v6 = result;
    v7 = a2[3];
    if (a3 == 111)
    {
      v8 = result[3];
      if (v8 != v7 || result[2] != a2[2])
      {
        kaldi::KaldiAssertFailure_("CopyFromMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0x34D, "num_rows_ == M.NumRows() && num_cols_ == M.NumCols()", a5);
      }

      if (v8 >= 1)
      {
        v9 = 0;
        do
        {
          v10 = *v6 + 8 * (v6[4] * v9);
          v11 = v6[2];
          v30 = 0;
          v31 = 0;
          v28 = v10;
          v29 = v11;
          if (a2[3] <= v9)
          {
            kaldi::KaldiAssertFailure_("Row", "../engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.h", 0x129, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", a5);
          }

          v12 = *a2 + 8 * (a2[4] * v9);
          v13 = a2[2];
          v26 = 0;
          v27 = 0;
          v24 = v12;
          v25 = v13;
          result = kaldi::VectorBase<double>::CopyFromVec(&v28, &v24, a3, a4, a5);
          ++v9;
        }

        while (v9 < v6[3]);
      }
    }

    else
    {
      v14 = result[2];
      if (v14 != v7 || (v15 = result[3], v15 != a2[2]))
      {
        kaldi::KaldiAssertFailure_("CopyFromMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0x350, "num_cols_ == M.NumRows() && num_rows_ == M.NumCols()", a5);
      }

      if (v15 >= 1)
      {
        v16 = 0;
        v17 = *result;
        v18 = *a2;
        v19 = 8 * result[4];
        v20 = 8 * a2[4];
        do
        {
          v21 = v14;
          v22 = v18;
          v23 = v17;
          if (v14 >= 1)
          {
            do
            {
              *v23++ = *v22;
              v22 = (v22 + v20);
              --v21;
            }

            while (v21);
          }

          ++v16;
          v17 = (v17 + v19);
          ++v18;
        }

        while (v16 != v15);
      }
    }
  }

  return result;
}

void kaldi::MatrixBase<double>::SetZero(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 == *(a1 + 16))
  {
    v3 = *a1;
    v4 = 8 * v2 * *(a1 + 12);

    bzero(v3, v4);
  }

  else if (*(a1 + 12) >= 1)
  {
    v5 = 0;
    do
    {
      bzero((*a1 + 8 * *(a1 + 16) * v5++), 8 * *(a1 + 8));
    }

    while (v5 < *(a1 + 12));
  }
}

uint64_t kaldi::MatrixBase<float>::CopyFromMat<signed char>(uint64_t a1, uint64_t a2, int a3)
{
  v6 = kaldi::QuantizedMatrixBase<short>::NumCols(a2);
  if (a3 == 111)
  {
    if (v6 != *(a1 + 8))
    {
      kaldi::KaldiAssertFailure_("CopyFromMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0x93C, "qm.NumCols() == num_cols_", v7);
    }

    result = kaldi::QuantizedMatrixBase<short>::NumRows(a2);
    if (result != *(a1 + 12))
    {
      kaldi::KaldiAssertFailure_("CopyFromMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0x93D, "qm.NumRows() == num_rows_", v9);
    }

    v10 = *(a1 + 8);
    if (v10 >= 1)
    {
      for (i = 0; i < v10; ++i)
      {
        if (result >= 1)
        {
          v12 = 0;
          do
          {
            v13 = kaldi::QuantizedMatrixBase<signed char>::Data(a2);
            v14 = *(v13 + (kaldi::QuantizedMatrixBase<short>::NumCols(a2) * v12) + i) / *(a2 + 12);
            v10 = *(a1 + 8);
            result = *(a1 + 12);
            *(*a1 + 4 * *(a1 + 16) * v12++ + 4 * i) = v14;
          }

          while (v12 < result);
        }
      }
    }
  }

  else
  {
    if (v6 != *(a1 + 12))
    {
      kaldi::KaldiAssertFailure_("CopyFromMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0x944, "qm.NumCols() == num_rows_", v7);
    }

    result = kaldi::QuantizedMatrixBase<short>::NumRows(a2);
    if (result != *(a1 + 8))
    {
      kaldi::KaldiAssertFailure_("CopyFromMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0x945, "qm.NumRows() == num_cols_", v15);
    }

    if (result >= 1)
    {
      v16 = 0;
      LODWORD(v17) = *(a1 + 12);
      do
      {
        if (v17 >= 1)
        {
          v18 = 0;
          do
          {
            v19 = kaldi::QuantizedMatrixBase<signed char>::Data(a2);
            v20 = *(v19 + (v16 * kaldi::QuantizedMatrixBase<short>::NumCols(a2)) + v18) / *(a2 + 12);
            result = *(a1 + 8);
            v17 = *(a1 + 12);
            *(*a1 + 4 * *(a1 + 16) * v18++ + 4 * v16) = v20;
          }

          while (v18 < v17);
        }

        ++v16;
      }

      while (v16 < result);
    }
  }

  return result;
}

uint64_t kaldi::MatrixBase<float>::CopyFromMat<short>(uint64_t a1, uint64_t a2, int a3)
{
  v6 = kaldi::QuantizedMatrixBase<short>::NumCols(a2);
  if (a3 == 111)
  {
    if (v6 != *(a1 + 8))
    {
      kaldi::KaldiAssertFailure_("CopyFromMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0x93C, "qm.NumCols() == num_cols_", v7);
    }

    result = kaldi::QuantizedMatrixBase<short>::NumRows(a2);
    if (result != *(a1 + 12))
    {
      kaldi::KaldiAssertFailure_("CopyFromMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0x93D, "qm.NumRows() == num_rows_", v9);
    }

    v10 = *(a1 + 8);
    if (v10 >= 1)
    {
      for (i = 0; i < v10; ++i)
      {
        if (result >= 1)
        {
          v12 = 0;
          do
          {
            v13 = kaldi::QuantizedMatrixBase<signed char>::Data(a2);
            v14 = *(v13 + 2 * (kaldi::QuantizedMatrixBase<short>::NumCols(a2) * v12) + 2 * i) / *(a2 + 12);
            v10 = *(a1 + 8);
            result = *(a1 + 12);
            *(*a1 + 4 * *(a1 + 16) * v12++ + 4 * i) = v14;
          }

          while (v12 < result);
        }
      }
    }
  }

  else
  {
    if (v6 != *(a1 + 12))
    {
      kaldi::KaldiAssertFailure_("CopyFromMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0x944, "qm.NumCols() == num_rows_", v7);
    }

    result = kaldi::QuantizedMatrixBase<short>::NumRows(a2);
    if (result != *(a1 + 8))
    {
      kaldi::KaldiAssertFailure_("CopyFromMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0x945, "qm.NumRows() == num_cols_", v15);
    }

    if (result >= 1)
    {
      v16 = 0;
      LODWORD(v17) = *(a1 + 12);
      do
      {
        if (v17 >= 1)
        {
          v18 = 0;
          do
          {
            v19 = kaldi::QuantizedMatrixBase<signed char>::Data(a2);
            v20 = *(v19 + 2 * (v16 * kaldi::QuantizedMatrixBase<short>::NumCols(a2)) + 2 * v18) / *(a2 + 12);
            result = *(a1 + 8);
            v17 = *(a1 + 12);
            *(*a1 + 4 * *(a1 + 16) * v18++ + 4 * v16) = v20;
          }

          while (v18 < v17);
        }

        ++v16;
      }

      while (v16 < result);
    }
  }

  return result;
}

uint64_t kaldi::Matrix<float>::Matrix<signed char>(uint64_t a1, unsigned int *a2)
{
  v4 = kaldi::QuantizedMatrixBase<short>::NumRows(a2);
  v5 = kaldi::QuantizedMatrixBase<short>::NumCols(a2);
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  kaldi::Matrix<float>::Resize(a1, v4, v5, 0, 0);
  kaldi::MatrixBase<float>::CopyFromMat<signed char>(a1, a2, 111);
  return a1;
}

void sub_1C3047D88(_Unwind_Exception *exception_object)
{
  if (*v1)
  {
    if ((*(v1 + 32) & 1) == 0)
    {
      free(*v1);
    }
  }

  *(v1 + 32) = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  *v1 = 0;
  _Unwind_Resume(exception_object);
}

uint64_t kaldi::Matrix<float>::Matrix<short>(uint64_t a1, unsigned int *a2)
{
  v4 = kaldi::QuantizedMatrixBase<short>::NumRows(a2);
  v5 = kaldi::QuantizedMatrixBase<short>::NumCols(a2);
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  kaldi::Matrix<float>::Resize(a1, v4, v5, 0, 0);
  kaldi::MatrixBase<float>::CopyFromMat<short>(a1, a2, 111);
  return a1;
}

void sub_1C3047E2C(_Unwind_Exception *exception_object)
{
  if (*v1)
  {
    if ((*(v1 + 32) & 1) == 0)
    {
      free(*v1);
    }
  }

  *(v1 + 32) = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  *v1 = 0;
  _Unwind_Resume(exception_object);
}

double kaldi::Matrix<float>::Matrix(uint64_t a1)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t kaldi::Matrix<float>::Matrix(uint64_t a1, uint64_t a2, int a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  if (a3 == 111)
  {
    kaldi::Matrix<float>::Resize(a1, *(a2 + 12), *(a2 + 8), 0, 0);
    v7 = 111;
  }

  else
  {
    kaldi::Matrix<float>::Resize(a1, *(a2 + 8), *(a2 + 12), 0, 0);
    v7 = 112;
  }

  kaldi::MatrixBase<float>::CopyFromMat<float>(a1, a2, v7, v5, v6);
  return a1;
}

uint64_t kaldi::Matrix<float>::Matrix(uint64_t a1, unsigned int *a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  kaldi::Matrix<float>::Resize(a1, a2[3], a2[2], 1, (a2[2] == a2[4]));
  kaldi::MatrixBase<float>::CopyFromMat<float>(a1, a2, 111, v4, v5);
  return a1;
}

uint64_t kaldi::Matrix<float>::Matrix(uint64_t a1, uint64_t *a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v4 = *a2;
  if (*a2)
  {
    v5 = *(v4 + 8);
    v6 = *(v4 + 12);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  kaldi::Matrix<float>::Resize(a1, v5, v6, 1, 0);
  kaldi::CompressedMatrix::CopyToMat<float>(a2, a1);
  return a1;
}

void kaldi::Matrix<float>::Read(uint64_t a1, uint64_t *a2, uint64_t a3, int a4, uint64_t a5)
{
  v6 = a3;
  v100 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v90 = 0;
    *v88 = 0u;
    v89 = 0u;
    kaldi::Matrix<float>::Read(v88, a2, a3, 0, a5, 0.0);
    v11 = *(a1 + 12);
    if (v11)
    {
      if (v11 != HIDWORD(v88[1]))
      {
        if (HIDWORD(v88[1]))
        {
          goto LABEL_131;
        }

        goto LABEL_16;
      }

      if (*(a1 + 8) != LODWORD(v88[1]))
      {
LABEL_131:
        kaldi::KaldiErrorMessage::KaldiErrorMessage(v96, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 1556);
        v67 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v96, "Matrix::Read, size mismatch ", 28);
        v68 = MEMORY[0x1C692A960](v67, *(a1 + 12));
        v69 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v68, ", ", 2);
        v70 = MEMORY[0x1C692A960](v69, *(a1 + 8));
        v71 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v70, " vs. ", 5);
        v72 = MEMORY[0x1C692A960](v71, HIDWORD(v88[1]));
        v73 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v72, ", ", 2);
        MEMORY[0x1C692A960](v73, LODWORD(v88[1]));
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v96);
      }
    }

    else
    {
      kaldi::Matrix<float>::Resize(a1, HIDWORD(v88[1]), LODWORD(v88[1]), 0, 0);
    }

    kaldi::MatrixBase<float>::AddMat(a1, v88, 111, 1.0, 1.0, v9, v10);
LABEL_16:
    if (v88[0] && (v90 & 1) == 0)
    {
      free(v88[0]);
    }

    goto LABEL_130;
  }

  std::istream::tellg();
  v12 = v99;
  std::ostringstream::basic_ostringstream[abi:ne200100](v88);
  if (!v6)
  {
    memset(&v94, 0, sizeof(v94));
    std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, &v94);
    if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v88, ": Expected [, got EOF", 23);
LABEL_92:
      v48 = 2;
      goto LABEL_93;
    }

    if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v94.__r_.__value_.__l.__size_ == 2 && *v94.__r_.__value_.__l.__data_ == 23899)
      {
        goto LABEL_113;
      }

      if (v94.__r_.__value_.__l.__size_ != 1)
      {
LABEL_85:
        v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v88, ": Expected [, got ", 21);
        if ((v94.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v45 = &v94;
        }

        else
        {
          v45 = v94.__r_.__value_.__r.__words[0];
        }

        if ((v94.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v94.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v94.__r_.__value_.__l.__size_;
        }

        v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, v45, size);
        LOBYTE(v96[0]) = 34;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, v96, 1);
        goto LABEL_92;
      }

      v32 = v94.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (HIBYTE(v94.__r_.__value_.__r.__words[2]) != 1)
      {
        if (HIBYTE(v94.__r_.__value_.__r.__words[2]) == 2 && LOWORD(v94.__r_.__value_.__l.__data_) == 23899)
        {
LABEL_113:
          kaldi::Matrix<float>::Resize(a1, 0, 0, 0, 0);
          v48 = 1;
LABEL_93:
          if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v94.__r_.__value_.__l.__data_);
          }

          if ((v48 | 2) != 2)
          {
            goto LABEL_127;
          }

          goto LABEL_96;
        }

        goto LABEL_85;
      }

      v32 = &v94;
    }

    if (v32->__r_.__value_.__s.__data_[0] == 91)
    {
      __p = 0;
      v86 = 0;
      v87 = 0;
      operator new();
    }

    goto LABEL_85;
  }

  v13 = kaldi::Peek(a2, 1);
  if (v13 == 68)
  {
    if (a5)
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v96, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 1584);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v96, "Can not map into the wrong matrix data type", 43);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v96);
    }

    v17 = *(a1 + 8);
    v16 = *(a1 + 12);
    *v96 = 0u;
    v97 = 0u;
    v98 = 0;
    kaldi::Matrix<double>::Resize(v96, v16, v17, 0, 0);
    kaldi::Matrix<double>::Read(v96, a2, 1, 0, 0);
    kaldi::Matrix<float>::Resize(a1, HIDWORD(v96[1]), LODWORD(v96[1]), 0, 0);
    kaldi::MatrixBase<float>::CopyFromMat<double>(a1, v96, 111, v18, v19);
    if (v96[0] && (v98 & 1) == 0)
    {
      free(v96[0]);
    }

    goto LABEL_127;
  }

  if (v13 != 67)
  {
    memset(&v94, 0, sizeof(v94));
    std::string::append(&v94, "F");
    v20 = a5 != 0;
    if (a5)
    {
      v21 = "N";
    }

    else
    {
      v21 = "M";
    }

    std::string::append(&v94, v21);
    __p = 0;
    v86 = 0;
    v87 = 0;
    kaldi::ReadToken(a2, 1, &__p, v22, v23);
    v24 = SHIBYTE(v87);
    v25 = v86;
    if (v87 >= 0)
    {
      v26 = HIBYTE(v87);
    }

    else
    {
      v26 = v86;
    }

    v27 = HIBYTE(v94.__r_.__value_.__r.__words[2]);
    v28 = SHIBYTE(v94.__r_.__value_.__r.__words[2]);
    if ((v94.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v27 = v94.__r_.__value_.__l.__size_;
    }

    if (v26 == v27)
    {
      v29 = v87 >= 0 ? &__p : __p;
      v30 = (v94.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v94 : v94.__r_.__value_.__r.__words[0];
      if (!memcmp(v29, v30, v26))
      {
LABEL_64:
        LODWORD(v82) = 0;
        LODWORD(v83) = 0;
        v84 = 0;
        kaldi::ReadBasicType<int>(a2, 1, &v82);
        kaldi::ReadBasicType<int>(a2, 1, &v83);
        if (v20)
        {
          kaldi::ReadBasicType<int>(a2, 1, &v84);
          fst::AlignInput();
        }

        else
        {
          v84 = v83;
        }

        v37 = v82;
        if (a5)
        {
          *(a1 + 8) = v83;
          *(a1 + 12) = v37;
          *(a1 + 16) = v84;
          if (*a1 && (*(a1 + 32) & 1) == 0)
          {
            free(*a1);
          }

          std::istream::tellg();
          *a1 = a5 + v99;
          *(a1 + 32) = 1;
          std::istream::seekg();
          v38 = *a2;
          if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
          {
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v88, ": Seeking failed", 16);
LABEL_121:
            v61 = 1;
            goto LABEL_122;
          }
        }

        else
        {
          v39 = v83;
          if (v82 == *(a1 + 12) && v83 == *(a1 + 8))
          {
            v40 = v83;
          }

          else
          {
            kaldi::Matrix<float>::Resize(a1, v82, v83, 1, 0);
            v40 = *(a1 + 8);
            v39 = v83;
            v37 = v82;
          }

          v41 = *(a1 + 16);
          v42 = v84;
          if (v41 == v40 && v41 == v84 && v39 * v37)
          {
            v43 = *a1;
            std::istream::read();
            v38 = *a2;
            if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
            {
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v88, ": Reading whole matrix failed", 29);
              goto LABEL_121;
            }
          }

          else
          {
            if (v37 > 0)
            {
              v56 = 0;
              v57 = 4 * (v84 - v39);
              v58 = a2 + 4;
              while (1)
              {
                if (*(a1 + 12) <= v56)
                {
                  kaldi::KaldiAssertFailure_("RowData", "../engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.h", 0xBE, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v36);
                }

                v59 = *a1 + 4 * (*(a1 + 16) * v56);
                std::istream::read();
                v38 = *a2;
                if ((*(v58 + *(*a2 - 24)) & 5) != 0)
                {
                  v62 = v88;
                  v63 = 29;
                  v64 = ": Reading a matrix row failed";
                  goto LABEL_120;
                }

                if (v42 != v39)
                {
                  std::istream::seekg();
                  v38 = *a2;
                  if ((*(v58 + *(*a2 - 24)) & 5) != 0)
                  {
                    break;
                  }
                }

                if (++v56 >= v82)
                {
                  goto LABEL_115;
                }
              }

              v65 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v88, ": Seek for padding ", 19);
              v62 = MEMORY[0x1C692A980](v65, v57);
              v64 = " failed";
              v63 = 7;
LABEL_120:
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, v64, v63);
              goto LABEL_121;
            }

            v38 = *a2;
          }
        }

LABEL_115:
        v60 = *(a2 + *(v38 - 24) + 32);
        v61 = (v60 & 2) == 0 && (v60 & 5) != 0;
LABEL_122:
        if (SHIBYTE(v87) < 0)
        {
          operator delete(__p);
        }

        if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v94.__r_.__value_.__l.__data_);
        }

        if (!v61)
        {
          goto LABEL_127;
        }

LABEL_96:
        kaldi::KaldiErrorMessage::KaldiErrorMessage(v96, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 1802);
        v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v96, "Failed to read matrix from stream.  ", 36);
        std::stringbuf::str();
        if (v87 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        if (v87 >= 0)
        {
          v51 = HIBYTE(v87);
        }

        else
        {
          v51 = v86;
        }

        v52 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, p_p, v51);
        v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, " File position at start is ", 27);
        v54 = MEMORY[0x1C692A960](v53, v12);
        v55 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, ", currently ", 12);
        std::istream::tellg();
        MEMORY[0x1C692A9A0](v55, v95);
        if (SHIBYTE(v87) < 0)
        {
          operator delete(__p);
        }

        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v96);
      }
    }

    if (v24 < 0)
    {
      if (v25 != 2)
      {
        goto LABEL_132;
      }

      v31 = __p;
    }

    else
    {
      if (v24 != 2)
      {
        goto LABEL_132;
      }

      v31 = &__p;
    }

    v33 = *v31;
    v34 = v94.__r_.__value_.__r.__words[0];
    if (v28 >= 0)
    {
      v34 = &v94;
    }

    if (v33 == v34->__r_.__value_.__s.__data_[0])
    {
      v35 = __p;
      if (v24 >= 0)
      {
        v35 = &__p;
      }

      if (v35[1] == 78)
      {
        if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
        {
          kaldi::KaldiLogMessage::KaldiLogMessage(v96, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 1601);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v96, "Reading aligned matrix as a stream", 34);
          kaldi::KaldiLogMessage::~KaldiLogMessage(v96);
        }

        v20 = 1;
        goto LABEL_64;
      }
    }

LABEL_132:
    v74 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v88, ": Expected token ", 17);
    if ((v94.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v75 = &v94;
    }

    else
    {
      v75 = v94.__r_.__value_.__r.__words[0];
    }

    if ((v94.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v76 = HIBYTE(v94.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v76 = v94.__r_.__value_.__l.__size_;
    }

    v77 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v74, v75, v76);
    v78 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v77, ", got ", 6);
    if (v87 >= 0)
    {
      v79 = &__p;
    }

    else
    {
      v79 = __p;
    }

    if (v87 >= 0)
    {
      v80 = HIBYTE(v87);
    }

    else
    {
      v80 = v86;
    }

    v81 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v78, v79, v80);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v81, ". This could mean that you're trying to memory map an unaligned file.", 69);
    if (SHIBYTE(v87) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v94.__r_.__value_.__l.__data_);
    }

    goto LABEL_96;
  }

  v96[0] = 0;
  LOBYTE(v96[1]) = 0;
  kaldi::CompressedMatrix::Read(v96, a2, 1, a5);
  if (v96[0])
  {
    v14 = *(v96[0] + 2);
    v15 = *(v96[0] + 3);
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  kaldi::Matrix<float>::Resize(a1, v14, v15, 0, 0);
  kaldi::CompressedMatrix::CopyToMat<float>(v96, a1);
  kaldi::CompressedMatrix::Destroy(v96);
LABEL_127:
  v88[0] = *MEMORY[0x1E69E54E8];
  *(v88 + *(v88[0] - 3)) = *(MEMORY[0x1E69E54E8] + 24);
  v88[1] = (MEMORY[0x1E69E5548] + 16);
  if (v92 < 0)
  {
    operator delete(v91);
  }

  v88[1] = (MEMORY[0x1E69E5538] + 16);
  std::locale::~locale(&v89);
  std::ostream::~ostream();
  MEMORY[0x1C692AD30](&v93);
LABEL_130:
  v66 = *MEMORY[0x1E69E9840];
}

void sub_1C3049404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a67)
  {
    if ((a71 & 1) == 0)
    {
      free(a67);
    }
  }

  JUMPOUT(0x1C3049490);
}

void sub_1C3049440(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a58 < 0)
  {
    operator delete(a53);
  }

  std::ostringstream::~ostringstream(&a20);
  JUMPOUT(0x1C30494BCLL);
}

void sub_1C30494A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a17)
  {
    if ((a21 & 1) == 0)
    {
      free(a17);
    }
  }

  _Unwind_Resume(exception_object);
}

void kaldi::Matrix<double>::Read(uint64_t a1, uint64_t *a2, uint64_t a3, int a4, uint64_t a5)
{
  v6 = a3;
  v101 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v91 = 0;
    *v89 = 0u;
    v90 = 0u;
    kaldi::Matrix<double>::Read(v89, a2, a3, 0, a5);
    v11 = *(a1 + 12);
    if (v11)
    {
      if (v11 != HIDWORD(v89[1]))
      {
        if (HIDWORD(v89[1]))
        {
          goto LABEL_131;
        }

        goto LABEL_16;
      }

      if (*(a1 + 8) != LODWORD(v89[1]))
      {
LABEL_131:
        kaldi::KaldiErrorMessage::KaldiErrorMessage(v97, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 1556);
        v68 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v97, "Matrix::Read, size mismatch ", 28);
        v69 = MEMORY[0x1C692A960](v68, *(a1 + 12));
        v70 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v69, ", ", 2);
        v71 = MEMORY[0x1C692A960](v70, *(a1 + 8));
        v72 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v71, " vs. ", 5);
        v73 = MEMORY[0x1C692A960](v72, HIDWORD(v89[1]));
        v74 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v73, ", ", 2);
        MEMORY[0x1C692A960](v74, LODWORD(v89[1]));
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v97);
      }
    }

    else
    {
      kaldi::Matrix<double>::Resize(a1, HIDWORD(v89[1]), LODWORD(v89[1]), 0, 0);
    }

    kaldi::MatrixBase<double>::AddMat(a1, v89, 111, 1.0, 1.0, v9, v10);
LABEL_16:
    if (v89[0] && (v91 & 1) == 0)
    {
      free(v89[0]);
    }

    goto LABEL_130;
  }

  std::istream::tellg();
  v12 = v100;
  std::ostringstream::basic_ostringstream[abi:ne200100](v89);
  if (!v6)
  {
    memset(&v95, 0, sizeof(v95));
    std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, &v95);
    if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v89, ": Expected [, got EOF", 23);
LABEL_92:
      v49 = 2;
      goto LABEL_93;
    }

    if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v95.__r_.__value_.__l.__size_ == 2 && *v95.__r_.__value_.__l.__data_ == 23899)
      {
        goto LABEL_113;
      }

      if (v95.__r_.__value_.__l.__size_ != 1)
      {
LABEL_85:
        v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v89, ": Expected [, got ", 21);
        if ((v95.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v46 = &v95;
        }

        else
        {
          v46 = v95.__r_.__value_.__r.__words[0];
        }

        if ((v95.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v95.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v95.__r_.__value_.__l.__size_;
        }

        v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, v46, size);
        LOBYTE(v97[0]) = 34;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, v97, 1);
        goto LABEL_92;
      }

      v33 = v95.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (HIBYTE(v95.__r_.__value_.__r.__words[2]) != 1)
      {
        if (HIBYTE(v95.__r_.__value_.__r.__words[2]) == 2 && LOWORD(v95.__r_.__value_.__l.__data_) == 23899)
        {
LABEL_113:
          kaldi::Matrix<double>::Resize(a1, 0, 0, 0, 0);
          v49 = 1;
LABEL_93:
          if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v95.__r_.__value_.__l.__data_);
          }

          if ((v49 | 2) != 2)
          {
            goto LABEL_127;
          }

          goto LABEL_96;
        }

        goto LABEL_85;
      }

      v33 = &v95;
    }

    if (v33->__r_.__value_.__s.__data_[0] == 91)
    {
      __p = 0;
      v87 = 0;
      v88 = 0;
      operator new();
    }

    goto LABEL_85;
  }

  v13 = kaldi::Peek(a2, 1);
  if (v13 == 70)
  {
    if (a5)
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v97, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 1584);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v97, "Can not map into the wrong matrix data type", 43);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v97);
    }

    v17 = *(a1 + 8);
    v16 = *(a1 + 12);
    *v97 = 0u;
    v98 = 0u;
    v99 = 0;
    kaldi::Matrix<float>::Resize(v97, v16, v17, 0, 0);
    kaldi::Matrix<float>::Read(v97, a2, 1, 0, 0, v18);
    kaldi::Matrix<double>::Resize(a1, HIDWORD(v97[1]), LODWORD(v97[1]), 0, 0);
    kaldi::MatrixBase<double>::CopyFromMat<float>(a1, v97, 111, v19, v20);
    if (v97[0] && (v99 & 1) == 0)
    {
      free(v97[0]);
    }

    goto LABEL_127;
  }

  if (v13 != 67)
  {
    memset(&v95, 0, sizeof(v95));
    std::string::append(&v95, "D");
    v21 = a5 != 0;
    if (a5)
    {
      v22 = "N";
    }

    else
    {
      v22 = "M";
    }

    std::string::append(&v95, v22);
    __p = 0;
    v87 = 0;
    v88 = 0;
    kaldi::ReadToken(a2, 1, &__p, v23, v24);
    v25 = SHIBYTE(v88);
    v26 = v87;
    if (v88 >= 0)
    {
      v27 = HIBYTE(v88);
    }

    else
    {
      v27 = v87;
    }

    v28 = HIBYTE(v95.__r_.__value_.__r.__words[2]);
    v29 = SHIBYTE(v95.__r_.__value_.__r.__words[2]);
    if ((v95.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v28 = v95.__r_.__value_.__l.__size_;
    }

    if (v27 == v28)
    {
      v30 = v88 >= 0 ? &__p : __p;
      v31 = (v95.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v95 : v95.__r_.__value_.__r.__words[0];
      if (!memcmp(v30, v31, v27))
      {
LABEL_64:
        LODWORD(v83) = 0;
        LODWORD(v84) = 0;
        v85 = 0;
        kaldi::ReadBasicType<int>(a2, 1, &v83);
        kaldi::ReadBasicType<int>(a2, 1, &v84);
        if (v21)
        {
          kaldi::ReadBasicType<int>(a2, 1, &v85);
          fst::AlignInput();
        }

        else
        {
          v85 = v84;
        }

        v38 = v83;
        if (a5)
        {
          *(a1 + 8) = v84;
          *(a1 + 12) = v38;
          *(a1 + 16) = v85;
          if (*a1 && (*(a1 + 32) & 1) == 0)
          {
            free(*a1);
          }

          std::istream::tellg();
          *a1 = a5 + v100;
          *(a1 + 32) = 1;
          std::istream::seekg();
          v39 = *a2;
          if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
          {
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v89, ": Seeking failed", 16);
LABEL_121:
            v62 = 1;
            goto LABEL_122;
          }
        }

        else
        {
          v40 = v84;
          if (v83 == *(a1 + 12) && v84 == *(a1 + 8))
          {
            v41 = v84;
          }

          else
          {
            kaldi::Matrix<double>::Resize(a1, v83, v84, 1, 0);
            v41 = *(a1 + 8);
            v40 = v84;
            v38 = v83;
          }

          v42 = *(a1 + 16);
          v43 = v85;
          if (v42 == v41 && v42 == v85 && v40 * v38)
          {
            v44 = *a1;
            std::istream::read();
            v39 = *a2;
            if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
            {
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v89, ": Reading whole matrix failed", 29);
              goto LABEL_121;
            }
          }

          else
          {
            if (v38 > 0)
            {
              v57 = 0;
              v58 = 8 * (v85 - v40);
              v59 = a2 + 4;
              while (1)
              {
                if (*(a1 + 12) <= v57)
                {
                  kaldi::KaldiAssertFailure_("RowData", "../engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.h", 0xBE, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v37);
                }

                v60 = *a1 + 8 * (*(a1 + 16) * v57);
                std::istream::read();
                v39 = *a2;
                if ((*(v59 + *(*a2 - 24)) & 5) != 0)
                {
                  v63 = v89;
                  v64 = 29;
                  v65 = ": Reading a matrix row failed";
                  goto LABEL_120;
                }

                if (v43 != v40)
                {
                  std::istream::seekg();
                  v39 = *a2;
                  if ((*(v59 + *(*a2 - 24)) & 5) != 0)
                  {
                    break;
                  }
                }

                if (++v57 >= v83)
                {
                  goto LABEL_115;
                }
              }

              v66 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v89, ": Seek for padding ", 19);
              v63 = MEMORY[0x1C692A980](v66, v58);
              v65 = " failed";
              v64 = 7;
LABEL_120:
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v63, v65, v64);
              goto LABEL_121;
            }

            v39 = *a2;
          }
        }

LABEL_115:
        v61 = *(a2 + *(v39 - 24) + 32);
        v62 = (v61 & 2) == 0 && (v61 & 5) != 0;
LABEL_122:
        if (SHIBYTE(v88) < 0)
        {
          operator delete(__p);
        }

        if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v95.__r_.__value_.__l.__data_);
        }

        if (!v62)
        {
          goto LABEL_127;
        }

LABEL_96:
        kaldi::KaldiErrorMessage::KaldiErrorMessage(v97, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 1802);
        v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v97, "Failed to read matrix from stream.  ", 36);
        std::stringbuf::str();
        if (v88 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        if (v88 >= 0)
        {
          v52 = HIBYTE(v88);
        }

        else
        {
          v52 = v87;
        }

        v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, p_p, v52);
        v54 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, " File position at start is ", 27);
        v55 = MEMORY[0x1C692A960](v54, v12);
        v56 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v55, ", currently ", 12);
        std::istream::tellg();
        MEMORY[0x1C692A9A0](v56, v96);
        if (SHIBYTE(v88) < 0)
        {
          operator delete(__p);
        }

        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v97);
      }
    }

    if (v25 < 0)
    {
      if (v26 != 2)
      {
        goto LABEL_132;
      }

      v32 = __p;
    }

    else
    {
      if (v25 != 2)
      {
        goto LABEL_132;
      }

      v32 = &__p;
    }

    v34 = *v32;
    v35 = v95.__r_.__value_.__r.__words[0];
    if (v29 >= 0)
    {
      v35 = &v95;
    }

    if (v34 == v35->__r_.__value_.__s.__data_[0])
    {
      v36 = __p;
      if (v25 >= 0)
      {
        v36 = &__p;
      }

      if (v36[1] == 78)
      {
        if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
        {
          kaldi::KaldiLogMessage::KaldiLogMessage(v97, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 1601);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v97, "Reading aligned matrix as a stream", 34);
          kaldi::KaldiLogMessage::~KaldiLogMessage(v97);
        }

        v21 = 1;
        goto LABEL_64;
      }
    }

LABEL_132:
    v75 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v89, ": Expected token ", 17);
    if ((v95.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v76 = &v95;
    }

    else
    {
      v76 = v95.__r_.__value_.__r.__words[0];
    }

    if ((v95.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v77 = HIBYTE(v95.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v77 = v95.__r_.__value_.__l.__size_;
    }

    v78 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v75, v76, v77);
    v79 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v78, ", got ", 6);
    if (v88 >= 0)
    {
      v80 = &__p;
    }

    else
    {
      v80 = __p;
    }

    if (v88 >= 0)
    {
      v81 = HIBYTE(v88);
    }

    else
    {
      v81 = v87;
    }

    v82 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v79, v80, v81);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v82, ". This could mean that you're trying to memory map an unaligned file.", 69);
    if (SHIBYTE(v88) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v95.__r_.__value_.__l.__data_);
    }

    goto LABEL_96;
  }

  v97[0] = 0;
  LOBYTE(v97[1]) = 0;
  kaldi::CompressedMatrix::Read(v97, a2, 1, a5);
  if (v97[0])
  {
    v14 = *(v97[0] + 2);
    v15 = *(v97[0] + 3);
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  kaldi::Matrix<double>::Resize(a1, v14, v15, 0, 0);
  kaldi::CompressedMatrix::CopyToMat<double>(v97, a1);
  kaldi::CompressedMatrix::Destroy(v97);
LABEL_127:
  v89[0] = *MEMORY[0x1E69E54E8];
  *(v89 + *(v89[0] - 3)) = *(MEMORY[0x1E69E54E8] + 24);
  v89[1] = (MEMORY[0x1E69E5548] + 16);
  if (v93 < 0)
  {
    operator delete(v92);
  }

  v89[1] = (MEMORY[0x1E69E5538] + 16);
  std::locale::~locale(&v90);
  std::ostream::~ostream();
  MEMORY[0x1C692AD30](&v94);
LABEL_130:
  v67 = *MEMORY[0x1E69E9840];
}

void sub_1C304A918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a67)
  {
    if ((a71 & 1) == 0)
    {
      free(a67);
    }
  }

  JUMPOUT(0x1C304A9A4);
}

void sub_1C304A954(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a58 < 0)
  {
    operator delete(a53);
  }

  std::ostringstream::~ostringstream(&a20);
  JUMPOUT(0x1C304A9D0);
}

void sub_1C304A9B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a17)
  {
    if ((a21 & 1) == 0)
    {
      free(a17);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::Matrix<double>::Matrix(uint64_t a1, uint64_t a2, uint64_t a3, int a4, const char *a5)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  kaldi::Matrix<double>::Resize(a1, a2, a3, a4, a5);
  return a1;
}

uint64_t kaldi::Matrix<double>::Matrix(uint64_t a1, unsigned int *a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  kaldi::Matrix<double>::Resize(a1, a2[3], a2[2], 1, (a2[2] == a2[4]));
  kaldi::MatrixBase<double>::CopyFromMat<double>(a1, a2, 111, v4, v5);
  return a1;
}

uint64_t kaldi::MatrixBase<double>::AddMat(uint64_t result, uint64_t *a2, int a3, double a4, double a5, uint64_t a6, const char *a7)
{
  v8 = result;
  if (a2 == result)
  {
    if (a3 == 111)
    {
      v20 = a4 + a5;

      return kaldi::MatrixBase<double>::Scale(result, v20);
    }

    else
    {
      v25 = *(result + 12);
      if (v25 != *(result + 8))
      {
        kaldi::KaldiAssertFailure_("AddMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0x1C0, "num_rows_ == num_cols_ && AddMat: adding to self (transposed): not symmetric.", a7);
      }

      v26 = *result;
      if (a4 == 1.0 && a5 == 1.0)
      {
        if (v25 >= 1)
        {
          v37 = 0;
          v38 = *(result + 16);
          v39 = 8 * v38;
          v40 = *result;
          v41 = *result;
          do
          {
            if (v37)
            {
              v42 = 0;
              v43 = v37 * v38;
              v44 = v41;
              do
              {
                v45 = v40[v42] + *v44;
                *v44 = v45;
                v40[v42++] = v45;
                v44 = (v44 + v39);
              }

              while (v37 != v42);
            }

            else
            {
              v43 = 0;
            }

            v26[v43 + v37] = v26[v43 + v37] + v26[v43 + v37];
            ++v37;
            ++v41;
            v40 = (v40 + v39);
          }

          while (v37 != v25);
        }
      }

      else if (v25 >= 1)
      {
        v28 = 0;
        v29 = *(result + 16);
        v30 = 8 * v29;
        v31 = *result;
        v32 = *result;
        do
        {
          if (v28)
          {
            v33 = 0;
            v34 = v28 * v29;
            v35 = v32;
            do
            {
              v36 = v31[v33];
              v31[v33] = v36 * a5 + a4 * *v35;
              *v35 = *v35 * a5 + a4 * v36;
              ++v33;
              v35 = (v35 + v30);
            }

            while (v28 != v33);
          }

          else
          {
            v34 = 0;
          }

          v26[v34 + v28] = (a4 + a5) * v26[v34 + v28];
          ++v28;
          ++v32;
          v31 = (v31 + v30);
        }

        while (v28 != v25);
      }
    }
  }

  else
  {
    if (a5 != 1.0)
    {
      result = kaldi::MatrixBase<double>::Scale(result, a5);
    }

    v10 = *(a2 + 4);
    v11 = *a2;
    v12 = *v8;
    v13 = *(v8 + 12);
    v14 = *(v8 + 16);
    if (a3 == 111)
    {
      v15 = *(a2 + 3);
      if (v15 != v13 || *(a2 + 2) != *(v8 + 8))
      {
        kaldi::KaldiAssertFailure_("AddMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0x1DC, "A.num_rows_ == num_rows_ && A.num_cols_ == num_cols_", a7);
      }

      if (v15 >= 1)
      {
        v16 = 0;
        v17 = 8 * v14;
        v18 = 8 * v10;
        do
        {
          v19 = *(v8 + 8);
          result = cblas_daxpy_NEWLAPACK_ILP64();
          ++v16;
          v12 += v17;
          v11 += v18;
        }

        while (v16 < *(v8 + 12));
      }
    }

    else
    {
      v21 = *(a2 + 2);
      if (v21 != v13 || *(a2 + 3) != *(v8 + 8))
      {
        kaldi::KaldiAssertFailure_("AddMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0x1E2, "A.num_cols_ == num_rows_ && A.num_rows_ == num_cols_", a7);
      }

      if (v21 >= 1)
      {
        v22 = 0;
        v23 = 8 * v14;
        do
        {
          v24 = *(v8 + 8);
          result = cblas_daxpy_NEWLAPACK_ILP64();
          ++v22;
          v11 += 8;
          v12 += v23;
        }

        while (v22 < *(v8 + 12));
      }
    }
  }

  return result;
}

void std::vector<double>::push_back[abi:ne200100](const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
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

uint64_t kaldi::Matrix<double>::Init(uint64_t result, int a2, int a3, int a4, const char *a5)
{
  v7 = result;
  if (a3 * a2)
  {
    if (a2 < 1 || a3 <= 0)
    {
      kaldi::KaldiAssertFailure_("Init", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0x2D7, "rows > 0 && cols > 0", a5);
    }

    memptr = 0;
    v8 = a3 & 1;
    if (a4)
    {
      v8 = 0;
    }

    v9 = v8 + a3;
    result = malloc_type_posix_memalign(&memptr, 0x10uLL, 8 * a2 * (v8 + a3), 0x77C5AFA7uLL);
    if (result)
    {
      v10 = 1;
    }

    else
    {
      v10 = memptr == 0;
    }

    if (v10)
    {
      exception = __cxa_allocate_exception(8uLL);
      v12 = std::bad_alloc::bad_alloc(exception);
      __cxa_throw(v12, MEMORY[0x1E69E5430], MEMORY[0x1E69E5388]);
    }

    *v7 = memptr;
    *(v7 + 32) = 0;
    *(v7 + 8) = a3;
    *(v7 + 12) = a2;
    *(v7 + 16) = v9;
    *(v7 + 20) = v9 * a2;
  }

  else
  {
    if (a3 | a2)
    {
      kaldi::KaldiAssertFailure_("Init", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0x2CE, "rows == 0 && cols == 0", a5);
    }

    *(result + 32) = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = 0;
  }

  return result;
}

uint64_t kaldi::MatrixBase<float>::Set(uint64_t result, int16x4_t a2)
{
  v2 = *(result + 12);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *(result + 8);
    v5 = vdupq_n_s64(v4 - 1);
    v6 = vdupq_n_s64(4uLL);
    do
    {
      if (v4 >= 1)
      {
        v7 = (*result + 4 * *(result + 16) * v3 + 8);
        v8 = (v4 + 3) & 0xFFFFFFFC;
        v9 = xmmword_1C378AF00;
        v10 = xmmword_1C378AEF0;
        do
        {
          v11 = vmovn_s64(vcgeq_u64(v5, v9));
          if (vuzp1_s16(v11, a2).u8[0])
          {
            *(v7 - 2) = a2.i32[0];
          }

          if (vuzp1_s16(v11, a2).i8[2])
          {
            *(v7 - 1) = a2.i32[0];
          }

          if (vuzp1_s16(a2, vmovn_s64(vcgeq_u64(v5, *&v10))).i32[1])
          {
            *v7 = a2.i32[0];
            v7[1] = a2.i32[0];
          }

          v10 = vaddq_s64(v10, v6);
          v9 = vaddq_s64(v9, v6);
          v7 += 4;
          v8 -= 4;
        }

        while (v8);
      }

      ++v3;
    }

    while (v3 != v2);
  }

  return result;
}

void kaldi::MatrixBase<float>::SetRandn(uint64_t a1)
{
  v11 = kaldi::Rand(0);
  v2 = *(a1 + 12);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 8);
    do
    {
      if (v4 >= 1)
      {
        v5 = 0;
        v6 = *a1 + 4 * *(a1 + 16) * v3;
        do
        {
          v7 = (kaldi::Rand(&v11) + 1.0) / 2147483650.0;
          v8 = sqrtf(logf(v7) * -2.0);
          v9 = (kaldi::Rand(&v11) + 1.0) / 2147483650.0;
          v10 = v9 * 6.28318531;
          *(v6 + 4 * v5) = v8 * cosf(v10);
          v4 = *(a1 + 8);
          ++v5;
        }

        while (v5 < v4);
        v2 = *(a1 + 12);
      }

      ++v3;
    }

    while (v3 < v2);
  }
}

void **kaldi::MatrixBase<float>::CopyRowsFromVec(void **result, char **a2)
{
  v2 = result;
  v3 = *(a2 + 2);
  v5 = *(result + 2);
  v4 = *(result + 3);
  if (v3 == v5 * v4)
  {
    v6 = *(result + 4);
    if (v6 == v5)
    {
      v7 = *a2;
      v8 = *result;

      return memcpy(v8, v7, 4 * v4 * v5);
    }

    else if (v4 >= 1)
    {
      v11 = 0;
      v12 = *a2;
      v13 = *result;
      v14 = 4 * v6;
      do
      {
        if (v5 >= 1)
        {
          v15 = 0;
          do
          {
            *&v13[v15] = *&v12[v15];
            v15 += 4;
          }

          while (4 * v5 != v15);
        }

        ++v11;
        v13 += v14;
        v12 += 4 * v5;
      }

      while (v11 != v4);
    }
  }

  else
  {
    if (v3 != v5)
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v16, "CopyRowsFromVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 963);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v16, "Wrong sized arguments");
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v16);
    }

    if (v4 >= 1)
    {
      v9 = 0;
      v10 = *a2;
      do
      {
        result = memcpy(*v2 + 4 * *(v2 + 4) * v9++, v10, 4 * *(v2 + 2));
      }

      while (v9 < *(v2 + 3));
    }
  }

  return result;
}

uint64_t kaldi::MatrixBase<float>::ConcatenateVec(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(a1 + 12) != *(a3 + 12))
  {
    kaldi::KaldiAssertFailure_("ConcatenateVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0x41A, "num_rows_ == index.NumRows()", a5);
  }

  if (*(a1 + 8) != *(a2 + 8) * *(a3 + 8))
  {
    kaldi::KaldiAssertFailure_("ConcatenateVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0x41B, "num_cols_ == index.NumCols() * vec_table.NumCols()", a5);
  }

  kaldi::MatrixBase<float>::Min(a3, a2, a3, a4, a5);
  if (v12 < 0.0)
  {
    kaldi::KaldiAssertFailure_("ConcatenateVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0x41C, "index.Min() >= 0", v11);
  }

  result = kaldi::MatrixBase<float>::Max(a3, v8, v9, v10, v11);
  if (v15 >= *(a2 + 12))
  {
    kaldi::KaldiAssertFailure_("ConcatenateVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0x41D, "index.Max() < vec_table.NumRows()", v14);
  }

  v16 = *(a1 + 12);
  if (v16 >= 1)
  {
    v17 = 0;
    v18 = 0;
    v19 = *(a1 + 8);
    v20 = *(a2 + 8);
    v21 = *a3;
    v22 = *(a3 + 16);
    v23 = *a2;
    v24 = *(a2 + 16);
    do
    {
      if (v19 >= 1)
      {
        v25 = 0;
        result = v21 + 4 * v18 * v22;
        v26 = *a1 + v17 * *(a1 + 16);
        v27 = v23;
        do
        {
          *(v26 + 4 * v25) = *(v27 - 4 * v25 / v20 * v20 + 4 * v24 * *(result + 4 * (v25 / v20)));
          ++v25;
          v27 += 4;
        }

        while (v19 != v25);
      }

      ++v18;
      v17 += 4;
    }

    while (v18 != v16);
  }

  return result;
}

uint64_t kaldi::MatrixBase<float>::SummarizeVec(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t a4, const char *a5)
{
  v5 = *(result + 12);
  if (v5 != *(a3 + 3))
  {
    kaldi::KaldiAssertFailure_("SummarizeVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0x43B, "num_rows_ == index.NumRows()", a5);
  }

  v6 = *(result + 8);
  if (v6 != *(a2 + 2))
  {
    kaldi::KaldiAssertFailure_("SummarizeVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0x43C, "num_cols_ == vec_table.NumCols()", a5);
  }

  if (v5 >= 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = *(a2 + 3);
    v10 = *(a3 + 2);
    v11 = *a3;
    v12 = *(a3 + 4);
    do
    {
      if (v10 >= 1)
      {
        v13 = 0;
        v14 = *a2;
        v15 = *(a2 + 4);
        do
        {
          v16 = *(v11 + 4 * v8 * v12 + 4 * v13);
          if ((v16 & 0x80000000) == 0)
          {
            if (v9 <= v16)
            {
              kaldi::KaldiErrorMessage::KaldiErrorMessage(v21, "SummarizeVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 1093);
              v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "index item is bigger than the voc size ", 39);
              MEMORY[0x1C692A960](v20, v9);
              kaldi::KaldiErrorMessage::~KaldiErrorMessage(v21);
            }

            if (v6 >= 1)
            {
              v17 = 0;
              v18 = v14 + 4 * v15 * v16;
              v19 = *result + v7 * *(result + 16);
              do
              {
                *(v19 + 4 * v17) = *(v18 + 4 * v17) + *(v19 + 4 * v17);
                ++v17;
              }

              while (v6 != v17);
            }
          }

          ++v13;
        }

        while (v13 != v10);
      }

      ++v8;
      v7 += 4;
    }

    while (v8 != v5);
  }

  return result;
}

void kaldi::MatrixBase<float>::SummarizeVec(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *(a1 + 12);
  if (v5 != *(a3 + 12))
  {
    kaldi::KaldiAssertFailure_("SummarizeVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0x44F, "num_rows_ == index.NumRows()", a5);
  }

  v9 = *(a1 + 8);
  v10 = *a2;
  if (*a2)
  {
    if (v9 == *(v10 + 12))
    {
      v11 = *(v10 + 8);
      goto LABEL_7;
    }

LABEL_23:
    kaldi::KaldiAssertFailure_("SummarizeVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0x450, "num_cols_ == vec_table.NumCols()", a5);
  }

  if (v9)
  {
    goto LABEL_23;
  }

  v11 = 0;
LABEL_7:
  if (v5 >= 1)
  {
    v12 = 0;
    v13 = *(a3 + 8);
    do
    {
      if (v13 >= 1)
      {
        for (i = 0; i < v13; ++i)
        {
          v15 = *(*a3 + 4 * *(a3 + 16) * v12 + 4 * i);
          if ((v15 & 0x80000000) == 0)
          {
            if (v11 <= v15)
            {
              kaldi::KaldiErrorMessage::KaldiErrorMessage(v30, "SummarizeVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 1113);
              v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "index item is bigger than the voc size ", 39);
              MEMORY[0x1C692A960](v29, v11);
              kaldi::KaldiErrorMessage::~KaldiErrorMessage(v30);
            }

            v16 = *(a1 + 8);
            memset(v30, 0, 24);
            kaldi::Vector<float>::Resize(v30, v16, 0, a4, a5);
            kaldi::CompressedMatrix::CopyRowToVec<float>(a2, v15, v30, v19, v20, v21, v22, v23, v24, v17, v18);
            v25 = *(a1 + 8);
            if (v25 >= 1)
            {
              v26 = 0;
              v27 = v30[0];
              v28 = *a1 + 4 * v12 * *(a1 + 16);
              do
              {
                *(v28 + 4 * v26) = v27[v26] + *(v28 + 4 * v26);
                ++v26;
              }

              while (v25 != v26);
            }

            kaldi::Vector<float>::Destroy(v30);
            v13 = *(a3 + 8);
          }
        }

        v5 = *(a1 + 12);
      }

      ++v12;
    }

    while (v12 < v5);
  }
}

uint64_t kaldi::MatrixBase<float>::CountZeros(uint64_t a1)
{
  v1 = *(a1 + 12);
  if (v1 < 1)
  {
    return 0;
  }

  v2 = 0;
  v3 = 0;
  do
  {
    if (*(a1 + 8) >= 1)
    {
      v4 = (*a1 + 4 * *(a1 + 16) * v2);
      v5 = *(a1 + 8);
      do
      {
        v6 = *v4++;
        if (v6 == 0.0)
        {
          v3 = (v3 + 1);
        }

        else
        {
          v3 = v3;
        }

        --v5;
      }

      while (v5);
    }

    ++v2;
  }

  while (v2 != v1);
  return v3;
}

float32_t kaldi::MatrixBase<float>::MulElements(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *(a2 + 12);
  if (v5 != *(a1 + 12) || (v6 = *(a2 + 8), v6 != *(a1 + 8)))
  {
    kaldi::KaldiAssertFailure_("MulElements", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0x47F, "a.NumRows() == num_rows_ && a.NumCols() == num_cols_", a5);
  }

  v7 = *(a1 + 16);
  v8 = *(a2 + 16);
  if (v6 == v7 && v6 == v8)
  {
    v20 = (v6 * v5);
    v21 = *a2;
    v22 = *a1;
    if (v20 >= 4)
    {
      v24 = 4;
      v25 = *a2;
      v26 = *a1;
      do
      {
        v27 = *v25++;
        v19 = vmulq_f32(v27, *v26);
        *v26++ = v19;
        v24 += 4;
      }

      while (v24 <= v20);
      v23 = v20 & 0x7FFFFFFC;
    }

    else
    {
      v23 = 0;
    }

    if (v23 < v20)
    {
      v28 = v20 - v23;
      v29 = &v22->f32[v23];
      v30 = &v21->f32[v23];
      do
      {
        v31 = *v30++;
        v19.f32[0] = v31 * *v29;
        *v29++ = v19.f32[0];
        --v28;
      }

      while (v28);
    }
  }

  else if (v5 >= 1)
  {
    v10 = 0;
    v11 = v8;
    v12 = *a2;
    v13 = *a1;
    v14 = 4 * v7;
    v15 = 4 * v11;
    do
    {
      if (v6 >= 4)
      {
        v17 = 0;
        for (i = 4; i <= v6; i += 4)
        {
          v19 = vmulq_f32(v12[v17], v13[v17]);
          v13[v17++] = v19;
        }

        LODWORD(v16) = v6 & 0x7FFFFFFC;
      }

      else
      {
        LODWORD(v16) = 0;
      }

      if (v16 < v6)
      {
        v16 = v16;
        do
        {
          v19.f32[0] = v12->f32[v16] * v13->f32[v16];
          v13->i32[v16++] = v19.i32[0];
        }

        while (v6 != v16);
      }

      ++v10;
      v13 = (v13 + v14);
      v12 = (v12 + v15);
    }

    while (v10 != v5);
  }

  return v19.f32[0];
}

uint64_t kaldi::MatrixBase<float>::DivElements(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *(a2 + 3);
  if (v5 != *(result + 12) || (v6 = *(a2 + 2), v6 != *(result + 8)))
  {
    kaldi::KaldiAssertFailure_("DivElements", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0x490, "a.NumRows() == num_rows_ && a.NumCols() == num_cols_", a5);
  }

  if (v5 >= 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = *a2;
    v10 = 4 * *(a2 + 4);
    do
    {
      if (v6 >= 1)
      {
        v11 = 0;
        v12 = *result + v7 * *(result + 16);
        do
        {
          *(v12 + 4 * v11) = *(v12 + 4 * v11) / *(v9 + 4 * v11);
          ++v11;
        }

        while (v6 != v11);
      }

      ++v8;
      v7 += 4;
      v9 += v10;
    }

    while (v8 != v5);
  }

  return result;
}

uint64_t kaldi::MatrixBase<float>::MulRowsGroupMat(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *(a2 + 12);
  if (v5 != *(result + 12) || (v7 = result, v8 = *(result + 8), v9 = *(a2 + 8), v10 = v8 / v9, v8 % v9))
  {
    kaldi::KaldiAssertFailure_("MulRowsGroupMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0x4DD, "src.NumRows() == this->NumRows() && this->NumCols() % src.NumCols() == 0", a5);
  }

  if (v5 >= 1)
  {
    v11 = 0;
    v12 = 4 * v10;
    v13 = (v8 / v10);
    do
    {
      if (*(v7 + 12) <= v11)
      {
        kaldi::KaldiAssertFailure_("RowData", "../engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.h", 0xBE, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", a5);
      }

      if (v13 >= 1)
      {
        v14 = 0;
        v15 = *v7 + 4 * (*(v7 + 16) * v11);
        do
        {
          v16 = *(*a2 + 4 * (v11 * *(a2 + 16)) + 4 * v14);
          result = cblas_sscal_NEWLAPACK_ILP64();
          ++v14;
          v15 += v12;
        }

        while (v13 != v14);
      }

      ++v11;
    }

    while (v11 != v5);
  }

  return result;
}

uint64_t kaldi::MatrixBase<float>::InvertElements(uint64_t result)
{
  v1 = *(result + 12);
  if (v1 >= 1)
  {
    v2 = 0;
    v3 = *(result + 8);
    do
    {
      if (v3 >= 1)
      {
        v4 = (*result + 4 * *(result + 16) * v2);
        v5 = v3;
        do
        {
          *v4 = 1.0 / *v4;
          ++v4;
          --v5;
        }

        while (v5);
      }

      ++v2;
    }

    while (v2 != v1);
  }

  return result;
}

uint64_t kaldi::MatrixBase<float>::CopyCols(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t a4, const char *a5)
{
  v5 = *(result + 12);
  if (v5 != *(a2 + 3))
  {
    kaldi::KaldiAssertFailure_("CopyCols", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0xC1A, "NumRows() == src.NumRows()", a5);
  }

  v6 = *(result + 8);
  v7 = *a3;
  if (v6 != ((a3[1] - *a3) >> 2))
  {
    kaldi::KaldiAssertFailure_("CopyCols", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0xC1B, "NumCols() == static_cast<MatrixIndexT>(indices.size())", a5);
  }

  if (v5 >= 1)
  {
    v8 = 0;
    v9 = *a2;
    v10 = *result;
    v11 = *(a2 + 4);
    v12 = 4 * *(result + 16);
    do
    {
      if (v6 >= 1)
      {
        v13 = 0;
        do
        {
          result = *(v7 + v13);
          if ((result & 0x80000000) != 0)
          {
            v14 = 0;
          }

          else
          {
            v14 = *(v9 + 4 * result);
          }

          *(v10 + v13) = v14;
          v13 += 4;
        }

        while (4 * v6 != v13);
      }

      ++v8;
      v9 += 4 * v11;
      v10 += v12;
    }

    while (v8 != v5);
  }

  return result;
}

void kaldi::MatrixBase<float>::CopyRows(char **a1, uint64_t *a2, void *a3, uint64_t a4, const char *a5)
{
  if (*(a1 + 2) != *(a2 + 2))
  {
    kaldi::KaldiAssertFailure_("CopyRows", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0xC34, "NumCols() == src.NumCols()", a5);
  }

  v7 = *(a1 + 3);
  if (v7 != ((a3[1] - *a3) >> 2))
  {
    kaldi::KaldiAssertFailure_("CopyRows", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0xC35, "NumRows() == static_cast<MatrixIndexT>(indices.size())", a5);
  }

  if (v7 >= 1)
  {
    v9 = 0;
    v10 = *a1;
    v11 = 4 * v7;
    v12 = 4 * *(a1 + 4);
    do
    {
      v13 = *(*a3 + v9);
      if ((v13 & 0x80000000) != 0)
      {
        bzero(v10, 4 * *(a1 + 2));
      }

      else
      {
        if (*(a2 + 3) <= v13)
        {
          kaldi::KaldiAssertFailure_("RowData", "../engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.h", 0xC4, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", a5);
        }

        v14 = *a2;
        v15 = *(a2 + 4);
        cblas_scopy_NEWLAPACK_ILP64();
      }

      v9 += 4;
      v10 += v12;
    }

    while (v11 != v9);
  }
}

unint64_t kaldi::MatrixBase<float>::CopyIndexedItems(unint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, const char *a5, int a6)
{
  v6 = *(result + 12);
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = *a2;
    v10 = *(a2 + 4);
    v11 = v10 * *(a2 + 3);
    v12 = *(result + 8);
    v13 = *result;
    v14 = *(result + 16) - v12;
    do
    {
      v15 = v12;
      result = v7;
      if (v12 >= 1)
      {
        do
        {
          v16 = *(a4 + 4 * (result % a5)) + *(a3 + 4 * (result % a5)) * v10;
          v17 = v16 + result / a5 * a6;
          if (v17 >= v11)
          {
            kaldi::KaldiAssertFailure_("CopyIndexedItems", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0xC5C, "src_index + shift < max_index", a5);
          }

          if (v16 < 0)
          {
            v18 = 0;
          }

          else
          {
            v18 = *(v9 + 4 * v17);
          }

          *v13++ = v18;
          ++result;
          --v15;
        }

        while (v15);
      }

      ++v8;
      v13 += v14;
      v7 += v12;
    }

    while (v8 != v6);
  }

  return result;
}

uint64_t kaldi::MatrixBase<float>::CopySelectedRows(uint64_t result, uint64_t *a2, uint64_t a3, int a4, const char *a5)
{
  if (*(result + 8) != *(a2 + 2))
  {
    kaldi::KaldiAssertFailure_("CopySelectedRows", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0xC68, "NumCols() == src.NumCols()", a5);
  }

  v6 = *(a3 + 8);
  if (*(result + 12) < v6)
  {
    kaldi::KaldiAssertFailure_("CopySelectedRows", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0xC69, "NumRows() >= selection.Dim()", a5);
  }

  if (*(a2 + 3) != v6)
  {
    kaldi::KaldiAssertFailure_("CopySelectedRows", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0xC6A, "src.NumRows() == selection.Dim()", a5);
  }

  if (v6 >= 1)
  {
    v9 = 0;
    v10 = *result;
    v11 = 4 * *(result + 16);
    do
    {
      if ((*(*a3 + 4 * v9) == 1) != a4)
      {
        if (v9 >= *(a2 + 3))
        {
          kaldi::KaldiAssertFailure_("RowData", "../engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.h", 0xC4, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", a5);
        }

        v12 = *a2;
        v13 = (*(a2 + 4) * v9);
        result = cblas_scopy_NEWLAPACK_ILP64();
      }

      ++v9;
      v10 += v11;
    }

    while (v6 != v9);
  }

  return result;
}

uint64_t kaldi::MatrixBase<float>::ApplyCeiling(uint64_t a1, float a2)
{
  v2 = *(a1 + 12);
  if (v2 < 1)
  {
    return 0;
  }

  v4 = 0;
  result = 0;
  v6 = *(a1 + 8);
  v7 = *a1;
  v8 = 4 * *(a1 + 16);
  do
  {
    v9 = v6;
    v10 = v7;
    if (v6 >= 1)
    {
      do
      {
        if (*v10 > a2)
        {
          *v10 = a2;
          result = (result + 1);
        }

        ++v10;
        --v9;
      }

      while (v9);
    }

    ++v4;
    v7 = (v7 + v8);
  }

  while (v4 != v2);
  return result;
}

void kaldi::MatrixBase<float>::ApplyLog(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(a1 + 12) >= 1)
  {
    v9[5] = v5;
    v9[6] = v6;
    v8 = 0;
    do
    {
      kaldi::MatrixBase<float>::Row(a1, v8, a5, v9);
      kaldi::VectorBase<float>::ApplyLog(v9);
      ++v8;
    }

    while (v8 < *(a1 + 12));
  }
}

void kaldi::MatrixBase<float>::ApplyExp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(a1 + 12) >= 1)
  {
    v9[5] = v5;
    v9[6] = v6;
    v8 = 0;
    do
    {
      kaldi::MatrixBase<float>::Row(a1, v8, a5, v9);
      kaldi::VectorBase<float>::ApplyExp(v9);
      ++v8;
    }

    while (v8 < *(a1 + 12));
  }
}

void kaldi::MatrixBase<float>::ApplyPow(uint64_t a1, float a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6)
{
  if (*(a1 + 12) >= 1)
  {
    v13[3] = v9;
    v13[4] = v8;
    v13[7] = v6;
    v13[8] = v7;
    v12 = 0;
    do
    {
      kaldi::MatrixBase<float>::Row(a1, v12, a6, v13);
      kaldi::VectorBase<float>::ApplyPow(v13, a2);
      ++v12;
    }

    while (v12 < *(a1 + 12));
  }
}

uint64_t kaldi::MatrixBase<float>::ApplyHeaviside(uint64_t result)
{
  v1 = *(result + 12);
  if (v1 >= 1)
  {
    v2 = 0;
    v3 = *(result + 8);
    v4 = *result;
    v5 = 4 * *(result + 16);
    do
    {
      v6 = v3;
      v7 = v4;
      if (v3 >= 1)
      {
        do
        {
          if (*v7 <= 0.0)
          {
            v8 = 0.0;
          }

          else
          {
            v8 = 1.0;
          }

          *v7++ = v8;
          --v6;
        }

        while (v6);
      }

      ++v2;
      v4 = (v4 + v5);
    }

    while (v2 != v1);
  }

  return result;
}

uint64_t kaldi::MatrixBase<float>::Sigmoid(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *(result + 8);
  v5 = *(result + 12);
  if (v5 != *(a2 + 12) || v6 != *(a2 + 8))
  {
    kaldi::KaldiAssertFailure_("Sigmoid", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0xCBF, "SameDim(*this, src)", a5);
  }

  v9 = result;
  if (v6 == *(result + 16) && v6 == *(a2 + 16))
  {
    v17 = *a2;
    v21 = 0;
    v18[2] = 0;
    v19 = v17;
    v20 = (v6 * v5);
    v18[0] = *result;
    v18[1] = v20;
    return kaldi::VectorBase<float>::Sigmoid(v18, &v19, a3, a4, a5);
  }

  else if (v5 >= 1)
  {
    v11 = 0;
    do
    {
      kaldi::SubVector<float>::SubVector(&v19, a2, v11, a4, a5);
      kaldi::SubVector<float>::SubVector(v18, v9, v11, v12, v13);
      result = kaldi::VectorBase<float>::Sigmoid(v18, &v19, v14, v15, v16);
      ++v11;
    }

    while (v11 < *(v9 + 12));
  }

  return result;
}

void kaldi::MatrixBase<float>::GroupPnorm(uint64_t a1, uint64_t a2, float a3, uint64_t a4, uint64_t a5, const char *a6)
{
  v6 = *(a2 + 8);
  v7 = *(a1 + 8);
  v8 = v6 / v7;
  v23 = v7;
  if (v6 % v7 || (v11 = *(a2 + 12), v11 != *(a1 + 12)))
  {
    kaldi::KaldiAssertFailure_("GroupPnorm", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0xC11, "src.NumCols() % this->NumCols() == 0 && src.NumRows() == this->NumRows()", a6);
  }

  if (v11 >= 1)
  {
    v13 = 0;
    v22 = *(a2 + 12);
    do
    {
      if (v23 >= 1)
      {
        v14 = 0;
        v15 = 0;
        for (i = 0; i != v23; ++i)
        {
          kaldi::MatrixBase<float>::Row(a2, v13, a6, &v24);
          v27 = 0;
          v28 = 0;
          v14 += v8;
          if (v14 > v25)
          {
            kaldi::KaldiAssertFailure_("SubVector", "../engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.h", 0x264, "static_cast<UnsignedMatrixIndexT>(origin) + static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v20);
          }

          v26 = v24 + v15;
          LODWORD(v27) = v8;
          kaldi::VectorBase<float>::Norm(&v26, a3, v17, v18, v19, v20);
          *(*a1 + 4 * (v13 * *(a1 + 16)) + 4 * i) = v21;
          v15 += 4 * v8;
        }
      }

      ++v13;
    }

    while (v13 != v22);
  }
}

void kaldi::MatrixBase<float>::GroupPnormDeriv(uint64_t a1, uint64_t *a2, uint64_t *a3, float a4, uint64_t a5, const char *a6)
{
  v6 = *(a2 + 2);
  if (v6 != *(a1 + 8) || (v8 = *(a2 + 3), v8 != *(a1 + 12)))
  {
    kaldi::KaldiAssertFailure_("GroupPnormDeriv", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0x4EC, "input.NumCols() == this->NumCols() && input.NumRows() == this->NumRows()", a6);
  }

  v9 = *(a3 + 2);
  v10 = v6 / v9;
  if (v6 % v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = v8 == *(a3 + 3);
  }

  if (!v11)
  {
    kaldi::KaldiAssertFailure_("GroupPnormDeriv", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0x4ED, "this->NumCols() % output.NumCols() == 0 && this->NumRows() == output.NumRows()", a6);
  }

  if (a4 == 1.0)
  {
    if (v8 >= 1)
    {
      v12 = 0;
      v13 = 0;
      v14 = *a2;
      v15 = 4 * *(a2 + 4);
      do
      {
        if (v6 >= 1)
        {
          v16 = 0;
          v17 = *a1 + v12 * *(a1 + 16);
          do
          {
            v18 = *(v14 + 4 * v16);
            v19 = v18 == 0.0;
            if (v18 <= 0.0)
            {
              v20 = -1.0;
            }

            else
            {
              v20 = 1.0;
            }

            if (v19)
            {
              v20 = 0.0;
            }

            *(v17 + 4 * v16++) = v20;
          }

          while (v6 != v16);
        }

        ++v13;
        v12 += 4;
        v14 += v15;
      }

      while (v13 != v8);
    }
  }

  else if (v8 >= 1)
  {
    v21 = 0;
    v22 = 0;
    v33 = *(a3 + 4);
    v34 = *a3;
    v23 = a4 + -1.0;
    v24 = 1.0 - a4;
    do
    {
      if (v6 >= 1)
      {
        v25 = 0;
        v26 = *a1 + v21 * *(a1 + 16);
        v27 = *a2 + v21 * *(a2 + 4);
        do
        {
          v28 = *(v34 + 4 * v22 * v33 + 4 * (v25 / v10));
          v29 = 0.0;
          if (v28 != 0.0)
          {
            v30 = *(v27 + 4 * v25);
            v31 = powf(fabsf(v30), v23);
            v32 = powf(v28, v24) * v31;
            v29 = -v32;
            if (v30 >= 0.0)
            {
              v29 = v32;
            }
          }

          *(v26 + 4 * v25++) = v29;
        }

        while (v6 != v25);
      }

      ++v22;
      v21 += 4;
    }

    while (v22 != v8);
  }
}

void kaldi::MatrixBase<float>::Tanh(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 12);
  if (v5 != *(a2 + 12) || v6 != *(a2 + 8))
  {
    kaldi::KaldiAssertFailure_("Tanh", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0xBE9, "SameDim(*this, src)", a5);
  }

  if (v6 == *(a1 + 16) && v6 == *(a2 + 16))
  {
    v17 = *a2;
    v21 = 0;
    v18[2] = 0;
    v19 = v17;
    v20 = (v6 * v5);
    v18[0] = *a1;
    v18[1] = v20;
    kaldi::VectorBase<float>::Tanh(v18, &v19, a3, a4, a5);
  }

  else if (v5 >= 1)
  {
    v11 = 0;
    do
    {
      kaldi::SubVector<float>::SubVector(&v19, a2, v11, a4, a5);
      kaldi::SubVector<float>::SubVector(v18, a1, v11, v12, v13);
      kaldi::VectorBase<float>::Tanh(v18, &v19, v14, v15, v16);
      ++v11;
    }

    while (v11 < *(a1 + 12));
  }
}

void kaldi::MatrixBase<float>::ApplyTanh(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(a1 + 12) >= 1)
  {
    v9[5] = v5;
    v9[6] = v6;
    v8 = 0;
    do
    {
      kaldi::MatrixBase<float>::Row(a1, v8, a5, v9);
      kaldi::VectorBase<float>::ApplyTanh(v9);
      ++v8;
    }

    while (v8 < *(a1 + 12));
  }
}

uint64_t *kaldi::MatrixBase<float>::DiffSigmoid(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t a4, const char *a5)
{
  v6 = *(result + 2);
  v5 = *(result + 3);
  v7 = v5 == *(a2 + 3) && v6 == *(a2 + 2);
  if (!v7 || (v5 == *(a3 + 3) ? (v8 = v6 == *(a3 + 2)) : (v8 = 0), !v8))
  {
    kaldi::KaldiAssertFailure_("DiffSigmoid", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0xCCE, "SameDim(*this, value) && SameDim(*this, diff)", a5);
  }

  if (v5 >= 1)
  {
    v9 = 0;
    v10 = *a3;
    v11 = *a2;
    v12 = *result;
    v13 = 4 * *(result + 4);
    v14 = 4 * *(a2 + 4);
    v15 = 4 * *(a3 + 4);
    do
    {
      if (v6 >= 1)
      {
        result = 0;
        do
        {
          v16 = (1.0 - *(result + v11)) * (*(result + v10) * *(result + v11));
          *(result + v12) = v16;
          result = (result + 4);
        }

        while ((4 * v6) != result);
      }

      ++v9;
      v12 += v13;
      v11 += v14;
      v10 += v15;
    }

    while (v9 != v5);
  }

  return result;
}

uint64_t *kaldi::MatrixBase<float>::DiffTanh(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t a4, const char *a5)
{
  v6 = *(result + 2);
  v5 = *(result + 3);
  v7 = v5 == *(a2 + 3) && v6 == *(a2 + 2);
  if (!v7 || (v5 == *(a3 + 3) ? (v8 = v6 == *(a3 + 2)) : (v8 = 0), !v8))
  {
    kaldi::KaldiAssertFailure_("DiffTanh", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0xCDD, "SameDim(*this, value) && SameDim(*this, diff)", a5);
  }

  if (v5 >= 1)
  {
    v9 = 0;
    v10 = *a3;
    v11 = *a2;
    v12 = *result;
    v13 = 4 * *(result + 4);
    v14 = 4 * *(a2 + 4);
    v15 = 4 * *(a3 + 4);
    do
    {
      if (v6 >= 1)
      {
        result = 0;
        do
        {
          v16 = (1.0 - (*(result + v11) * *(result + v11))) * *(result + v10);
          *(result + v12) = v16;
          result = (result + 4);
        }

        while ((4 * v6) != result);
      }

      ++v9;
      v12 += v13;
      v11 += v14;
      v10 += v15;
    }

    while (v9 != v5);
  }

  return result;
}

uint64_t *kaldi::MatrixBase<float>::MaxoutForward(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *(a2 + 8);
  LODWORD(v6) = *(result + 2);
  v7 = v5 / v6;
  if (v5 % v6 || (v9 = result, v10 = *(a2 + 12), v10 != *(result + 3)))
  {
    kaldi::KaldiAssertFailure_("MaxoutForward", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0xD12, "input.NumCols() % this->NumCols() == 0 && input.NumRows() == this->NumRows()", a5);
  }

  if (v10 >= 1)
  {
    for (i = 0; i < v10; ++i)
    {
      if (v6 >= 1)
      {
        v12 = 0;
        v13 = 0;
        v14 = 0;
        do
        {
          kaldi::MatrixBase<float>::Row(a2, i, a5, &v18);
          v21 = 0;
          v22 = 0;
          v12 += v7;
          if (v12 > v19)
          {
            kaldi::KaldiAssertFailure_("SubVector", "../engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.h", 0x264, "static_cast<UnsignedMatrixIndexT>(origin) + static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v15);
          }

          v20 = v18 + v13;
          LODWORD(v21) = v7;
          result = kaldi::VectorBase<float>::Max(&v20, v16);
          v10 = *(v9 + 3);
          v6 = *(v9 + 2);
          *(*v9 + 4 * i * *(v9 + 4) + 4 * v14) = v17;
          v13 += 4 * v7;
          ++v14;
        }

        while (v14 < v6);
      }
    }
  }

  return result;
}

uint64_t kaldi::MatrixBase<float>::MaxoutDerivative(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t a4, const char *a5)
{
  v5 = *(result + 8);
  if (*(a2 + 2) % v5 || (v6 = *(a2 + 3), v6 != *(result + 12)))
  {
    kaldi::KaldiAssertFailure_("MaxoutDerivative", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0xD1C, "input.NumCols() % this->NumCols() == 0 && input.NumRows() == this->NumRows()", a5);
  }

  if (v6 >= 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = *a2;
    v10 = *a3;
    v11 = *(a3 + 4);
    v12 = 4 * *(a2 + 4);
    v13 = v5 / *(a3 + 2);
    do
    {
      if (v5 >= 1)
      {
        v14 = 0;
        v15 = *result + v7 * *(result + 16);
        do
        {
          if (*(v9 + 4 * v14) == *(v10 + 4 * v8 * v11 + 4 * (v14 / v13)))
          {
            v16 = 1.0;
          }

          else
          {
            v16 = 0.0;
          }

          *(v15 + 4 * v14++) = v16;
        }

        while (v5 != v14);
      }

      ++v8;
      v7 += 4;
      v9 += v12;
    }

    while (v8 != v6);
  }

  return result;
}

uint64_t kaldi::MatrixBase<float>::AddToDiag(uint64_t result, float a2)
{
  LODWORD(v2) = *(result + 8);
  v3 = *(result + 12);
  if (v2 >= v3)
  {
    v2 = v3;
  }

  else
  {
    v2 = v2;
  }

  if (v2 >= 1)
  {
    v4 = *result;
    v5 = 4 * *(result + 16) + 4;
    do
    {
      *v4 = *v4 + a2;
      v4 = (v4 + v5);
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t kaldi::MatrixBase<float>::AddToDiag(uint64_t result, uint64_t *a2, float a3, float a4, uint64_t a5, uint64_t a6, const char *a7)
{
  LODWORD(v7) = *(result + 8);
  v8 = *(result + 12);
  if (v7 >= v8)
  {
    v7 = v8;
  }

  else
  {
    v7 = v7;
  }

  if (*(a2 + 2) != v7)
  {
    kaldi::KaldiAssertFailure_("AddToDiag", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0x746, "src.Dim() == num_to_add", a7);
  }

  if (v7 >= 1)
  {
    v9 = 0;
    v10 = *a2;
    v11 = *result;
    v12 = 4 * (*(result + 16) + 1);
    do
    {
      *v11 = (*v11 * a4) + (a3 * *(v10 + 4 * v9++));
      v11 = (v11 + v12);
    }

    while (v7 != v9);
  }

  return result;
}

uint64_t kaldi::MatrixBase<float>::AddIndexedRows(uint64_t result, uint64_t *a2, uint64_t a3, float a4, uint64_t a5, const char *a6)
{
  v6 = *(a2 + 2);
  v7 = *(result + 8);
  if (v7 * v6 != *(a3 + 8))
  {
    kaldi::KaldiAssertFailure_("AddIndexedRows", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0xC9E, "indices.NumCols() * NumCols() == src.NumCols()", a6);
  }

  v8 = *(a2 + 3);
  if (v8 != *(a3 + 12))
  {
    kaldi::KaldiAssertFailure_("AddIndexedRows", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0xC9F, "indices.NumRows() == src.NumRows()", a6);
  }

  if (v8 >= 1)
  {
    v9 = 0;
    v10 = 0;
    v11 = *a2;
    v12 = *(a2 + 4);
    do
    {
      if (v6 >= 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = *a3 + v9 * *(a3 + 16);
        do
        {
          v16 = *(v11 + 4 * v10 * v12 + 4 * v14);
          if ((v16 & 0x80000000) == 0)
          {
            if (*(result + 12) <= v16)
            {
              v23 = result;
              kaldi::KaldiErrorMessage::KaldiErrorMessage(v24, "AddIndexedRows", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 3239);
              v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "index ", 6);
              v21 = MEMORY[0x1C692A960](v20, v16);
              v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, " is too big for matrix that has rows = ", 39);
              MEMORY[0x1C692A960](v22, *(v23 + 12));
              kaldi::KaldiErrorMessage::~KaldiErrorMessage(v24);
            }

            if (v7 >= 1)
            {
              v17 = (*result + 4 * *(result + 16) * v16);
              v18 = v7;
              v19 = v13;
              do
              {
                *v17 = *v17 + (a4 * *(v15 + 4 * v19));
                ++v17;
                ++v19;
                --v18;
              }

              while (v18);
            }
          }

          ++v14;
          v13 += v7;
        }

        while (v14 != v6);
      }

      ++v10;
      v9 += 4;
    }

    while (v10 != v8);
  }

  return result;
}

uint64_t kaldi::MatrixBase<float>::AddDiagVecMat(uint64_t result, uint64_t a2, uint64_t *a3, int a4, const char *a5, double a6, float a7)
{
  v10 = result;
  if (a7 != 1.0)
  {
    result = kaldi::MatrixBase<float>::Scale(result, a7);
  }

  if (a4 == 111)
  {
    v11 = *(v10 + 12);
    if (v11 != *(a3 + 3) || *(v10 + 8) != *(a3 + 2))
    {
      kaldi::KaldiAssertFailure_("AddDiagVecMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0x206, "SameDim(*this, M)", a5);
    }
  }

  else if (*(a3 + 3) != *(v10 + 8) || (v11 = *(a3 + 2), v11 != *(v10 + 12)))
  {
    kaldi::KaldiAssertFailure_("AddDiagVecMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0x208, "M.NumRows() == NumCols() && M.NumCols() == NumRows()", a5);
  }

  if (*(a2 + 8) != v11)
  {
    kaldi::KaldiAssertFailure_("AddDiagVecMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0x20A, "v.Dim() == this->NumRows()", a5);
  }

  if (v11 >= 1)
  {
    v13 = *a2;
    v14 = *a3;
    v15 = *v10;
    v16 = *(a3 + 4);
    if (a4 == 112)
    {
      v17 = *(a3 + 4);
      v16 = 1;
    }

    v18 = *(v10 + 16);
    v19 = 4 * v16;
    v20 = 4 * v18;
    do
    {
      v21 = *v13++;
      result = cblas_saxpy_NEWLAPACK_ILP64();
      v14 += v19;
      v15 += v20;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t kaldi::MatrixBase<float>::AddMatDiagVec(uint64_t result, uint64_t *a2, int a3, uint64_t a4, const char *a5, double a6, float a7)
{
  v10 = result;
  if (a7 != 1.0)
  {
    result = kaldi::MatrixBase<float>::Scale(result, a7);
  }

  if (a3 == 111)
  {
    v12 = *(v10 + 8);
    v11 = *(v10 + 12);
    if (v11 != *(a2 + 3) || v12 != *(a2 + 2))
    {
      kaldi::KaldiAssertFailure_("AddMatDiagVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0x21D, "SameDim(*this, M)", a5);
    }
  }

  else
  {
    v12 = *(a2 + 3);
    if (v12 != *(v10 + 8) || (v11 = *(a2 + 2), v11 != *(v10 + 12)))
    {
      kaldi::KaldiAssertFailure_("AddMatDiagVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0x21F, "M.NumRows() == NumCols() && M.NumCols() == NumRows()", a5);
    }
  }

  if (*(a4 + 8) != v12)
  {
    kaldi::KaldiAssertFailure_("AddMatDiagVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0x221, "v.Dim() == this->NumCols()", a5);
  }

  if (v11 && v12 >= 1)
  {
    v14 = *a4;
    v15 = *a2;
    v16 = *v10;
    if (a3 == 112)
    {
      v17 = *(a2 + 4);
    }

    else
    {
      v17 = 1;
    }

    v18 = *(v10 + 16);
    v19 = 4 * v17;
    do
    {
      v20 = *v14++;
      result = cblas_saxpy_NEWLAPACK_ILP64();
      v16 += 4;
      v15 += v19;
      --v12;
    }

    while (v12);
  }

  return result;
}

uint64_t kaldi::MatrixBase<float>::AddMatEwpMat(uint64_t result, uint64_t a2, int a3, uint64_t a4, const char *a5, float a6, float a7)
{
  v7 = *(result + 12);
  if (a3 == 111)
  {
    if (v7 != *(a2 + 12) || (v8 = *(result + 8), v8 != *(a2 + 8)))
    {
      kaldi::KaldiAssertFailure_("AddMatEwpMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0x7F3, "num_rows_ == A.num_rows_ && num_cols_ == A.num_cols_", a5);
    }
  }

  else if (v7 != *(a2 + 8) || (v8 = *(result + 8), v8 != *(a2 + 12)))
  {
    kaldi::KaldiAssertFailure_("AddMatEwpMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0x7F5, "num_rows_ == A.num_cols_ && num_cols_ == A.num_rows_", a5);
  }

  if (a5 == 111)
  {
    if (__PAIR64__(v7, v8) != *(a4 + 8))
    {
      kaldi::KaldiAssertFailure_("AddMatEwpMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0x7F9, "num_rows_ == B.num_rows_ && num_cols_ == B.num_cols_", a5);
    }
  }

  else if (__PAIR64__(v8, v7) != *(a4 + 8))
  {
    kaldi::KaldiAssertFailure_("AddMatEwpMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0x7FB, "num_rows_ == B.num_cols_ && num_cols_ == B.num_rows_", a5);
  }

  if (v7 >= 1)
  {
    v9 = 0;
    v10 = *(a4 + 16);
    if (a5 == 112)
    {
      v11 = 1;
    }

    else
    {
      v11 = *(a4 + 16);
    }

    v12 = *(a2 + 16);
    if (a5 == 112)
    {
      v13 = *(a4 + 16);
    }

    else
    {
      v13 = 1;
    }

    if (a3 == 112)
    {
      v14 = 1;
    }

    else
    {
      v14 = *(a2 + 16);
    }

    if (a3 == 112)
    {
      v15 = *(a2 + 16);
    }

    else
    {
      v15 = 1;
    }

    v16 = *result;
    v17 = *(result + 16);
    v18 = *a2;
    v19 = 4 * v11;
    v20 = 4 * v13;
    v21 = *a4;
    v22 = 4 * v14;
    result = 4 * v15;
    do
    {
      if (v8 >= 1)
      {
        v23 = (v16 + 4 * v9 * v17);
        v24 = v18;
        v25 = v21;
        v26 = v8;
        do
        {
          *v23 = ((*v24 * a6) * *v25) + (a7 * *v23);
          ++v23;
          v25 = (v25 + v20);
          v24 = (v24 + result);
          --v26;
        }

        while (v26);
      }

      ++v9;
      v21 = (v21 + v19);
      v18 = (v18 + v22);
    }

    while (v9 != v7);
  }

  return result;
}

void kaldi::MatrixBase<float>::Write(uint64_t *a1, void *a2, int a3, int a4)
{
  if (*(a2 + *(*a2 - 24) + 32))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v25, "Write", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 1450);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v25, "Failed to write matrix to stream: stream not good");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v25);
  }

  if (a3)
  {
    memset(&v24, 0, sizeof(v24));
    std::string::append(&v24, "F");
    if (a4)
    {
      v7 = "N";
    }

    else
    {
      v7 = "M";
    }

    std::string::append(&v24, v7);
    kaldi::WriteToken(a2, 1, &v24, v8, v9);
    v10 = *(a1 + 2);
    kaldi::WriteBasicType<int>(a2, 1, *(a1 + 3));
    kaldi::WriteBasicType<int>(a2, 1, v10);
    v11 = *(a1 + 4);
    if (a4)
    {
      kaldi::WriteBasicType<int>(a2, 1, *(a1 + 4));
      if (!fst::AlignOutput(a2))
      {
        kaldi::KaldiErrorMessage::KaldiErrorMessage(v25, "Write", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 1472);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "Could not align output", 22);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v25);
      }
    }

    else if (v11 != *(a1 + 2))
    {
      if (*(a1 + 3) >= 1)
      {
        v21 = 0;
        do
        {
          v22 = *a1 + 4 * *(a1 + 4) * v21;
          v23 = *(a1 + 2);
          std::ostream::write();
          ++v21;
        }

        while (v21 < *(a1 + 3));
      }

      goto LABEL_26;
    }

    v12 = *a1;
    v13 = v11 * *(a1 + 3);
    std::ostream::write();
LABEL_26:
    if (*(a2 + *(*a2 - 24) + 32))
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v25, "Write", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 1486);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "Failed to write matrix to stream", 32);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v25);
    }

    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }

    return;
  }

  if (*(a1 + 2))
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " [", 2);
    if (*(a1 + 3) >= 1)
    {
      v14 = 0;
      do
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "\n  ", 3);
        if (*(a1 + 2) >= 1)
        {
          v15 = 0;
          do
          {
            v16 = *(*a1 + 4 * v14 * *(a1 + 4) + 4 * v15);
            v17 = std::ostream::operator<<();
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " ", 1);
            ++v15;
          }

          while (v15 < *(a1 + 2));
        }

        ++v14;
      }

      while (v14 < *(a1 + 3));
    }

    v18 = "]\n";
    v19 = a2;
    v20 = 2;
  }

  else
  {
    v18 = " [ ]\n";
    v19 = a2;
    v20 = 5;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, v18, v20);
}

void sub_1C304D798(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::MatrixBase<double>::Scale(uint64_t result, double a2)
{
  if (a2 != 1.0)
  {
    v2 = result;
    v3 = *(result + 12);
    if (v3)
    {
      if (*(result + 8) == *(result + 16))
      {
        v4 = *result;

        return cblas_dscal_NEWLAPACK_ILP64();
      }

      else if (v3 >= 1)
      {
        v5 = 0;
        v6 = *result;
        do
        {
          v7 = v2[2];
          result = cblas_dscal_NEWLAPACK_ILP64();
          ++v5;
          v6 += 8 * v2[4];
        }

        while (v5 < v2[3]);
      }
    }
  }

  return result;
}

void kaldi::MatrixBase<double>::Write(uint64_t *a1, void *a2, int a3, int a4)
{
  if (*(a2 + *(*a2 - 24) + 32))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v24, "Write", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 1450);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v24, "Failed to write matrix to stream: stream not good");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v24);
  }

  if (a3)
  {
    memset(&v23, 0, sizeof(v23));
    std::string::append(&v23, "D");
    if (a4)
    {
      v7 = "N";
    }

    else
    {
      v7 = "M";
    }

    std::string::append(&v23, v7);
    kaldi::WriteToken(a2, 1, &v23, v8, v9);
    v10 = *(a1 + 2);
    kaldi::WriteBasicType<int>(a2, 1, *(a1 + 3));
    kaldi::WriteBasicType<int>(a2, 1, v10);
    v11 = *(a1 + 4);
    if (a4)
    {
      kaldi::WriteBasicType<int>(a2, 1, *(a1 + 4));
      if (!fst::AlignOutput(a2))
      {
        kaldi::KaldiErrorMessage::KaldiErrorMessage(v24, "Write", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 1472);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "Could not align output", 22);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v24);
      }
    }

    else if (v11 != *(a1 + 2))
    {
      if (*(a1 + 3) >= 1)
      {
        v20 = 0;
        do
        {
          v21 = *a1 + 8 * *(a1 + 4) * v20;
          v22 = *(a1 + 2);
          std::ostream::write();
          ++v20;
        }

        while (v20 < *(a1 + 3));
      }

      goto LABEL_26;
    }

    v12 = *a1;
    v13 = v11 * *(a1 + 3);
    std::ostream::write();
LABEL_26:
    if (*(a2 + *(*a2 - 24) + 32))
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v24, "Write", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 1486);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "Failed to write matrix to stream", 32);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v24);
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }

    return;
  }

  if (*(a1 + 2))
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " [", 2);
    if (*(a1 + 3) >= 1)
    {
      v14 = 0;
      do
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "\n  ", 3);
        if (*(a1 + 2) >= 1)
        {
          v15 = 0;
          do
          {
            v16 = MEMORY[0x1C692A940](a2, *(*a1 + 8 * v14 * *(a1 + 4) + 8 * v15));
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " ", 1);
            ++v15;
          }

          while (v15 < *(a1 + 2));
        }

        ++v14;
      }

      while (v14 < *(a1 + 3));
    }

    v17 = "]\n";
    v18 = a2;
    v19 = 2;
  }

  else
  {
    v17 = " [ ]\n";
    v18 = a2;
    v19 = 5;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v17, v19);
}

void sub_1C304DBFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::SubMatrix<float>::SubMatrix(uint64_t result, uint64_t a2, int a3, int a4, const char *a5)
{
  *(result + 8) = a4;
  *result = a2;
  *(result + 12) = a3;
  *(result + 16) = a5;
  *(result + 20) = a5 * a3;
  *(result + 24) = 0;
  if (a2)
  {
    if (a5 < a4)
    {
      kaldi::KaldiAssertFailure_("SubMatrix", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0x72D, "this->stride_ >= this->num_cols_", a5);
    }
  }

  else
  {
    if (a4 * a3)
    {
      kaldi::KaldiAssertFailure_("SubMatrix", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0x727, "num_rows * num_cols == 0", a5);
    }

    *(result + 8) = 0;
    *(result + 16) = 0;
  }

  return result;
}

uint64_t kaldi::SubMatrix<double>::SubMatrix(uint64_t result, uint64_t a2, unsigned int a3, unsigned int a4, const char *a5, unsigned int a6)
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
  *result = *a2 + 8 * a5 + 8 * (v12 * a3);
  *(result + 16) = v12;
  *(result + 20) = v13 - a5 - v12 * a3;
  return result;
}

uint64_t kaldi::Quant3Levels<float>(uint64_t result, uint64_t a2, float a3, uint64_t a4, uint64_t a5, const char *a6)
{
  if (a3 <= 0.0)
  {
    kaldi::KaldiAssertFailure_("Quant3Levels", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0xD2B, "value > 0.0", a6);
  }

  v6 = *(result + 12);
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = *(result + 8);
    while (v8 < 1)
    {
LABEL_12:
      if (++v7 == v6)
      {
        return result;
      }
    }

    v9 = 0;
    v10 = *a2 + 4 * *(a2 + 16) * v7;
    v11 = *result + 4 * *(result + 16) * v7;
    while (1)
    {
      v12 = *(v11 + 4 * v9);
      if (v12 >= a3)
      {
        break;
      }

      v13 = 0.0;
      if (v12 <= -a3)
      {
        v14 = v12 + a3;
        v13 = -a3;
LABEL_10:
        *(v11 + 4 * v9) = v14;
      }

      *(v10 + 4 * v9++) = v13;
      if (v8 == v9)
      {
        goto LABEL_12;
      }
    }

    v14 = v12 - a3;
    v13 = a3;
    goto LABEL_10;
  }

  return result;
}

uint64_t kaldi::ZeroSmallValues<float>(uint64_t result, uint64_t a2, float a3, uint64_t a4, uint64_t a5, const char *a6)
{
  if (a3 <= 0.0)
  {
    kaldi::KaldiAssertFailure_("ZeroSmallValues", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0xD3D, "threshold > 0.0", a6);
  }

  v6 = *(result + 12);
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = *(result + 8);
    while (v8 < 1)
    {
LABEL_12:
      if (++v7 == v6)
      {
        return result;
      }
    }

    v9 = 0;
    v10 = *result + 4 * *(result + 16) * v7;
    while (1)
    {
      v11 = *(v10 + 4 * v9);
      if (v11 >= a3)
      {
        v12 = (*a2 + 4 * *(a2 + 16) * v7 + 4 * v9);
      }

      else
      {
        v12 = (*a2 + 4 * *(a2 + 16) * v7 + 4 * v9);
        if (v11 > -a3)
        {
          goto LABEL_11;
        }
      }

      *v12 = v11;
      v12 = (v10 + 4 * v9);
LABEL_11:
      *v12 = 0.0;
      if (++v9 == v8)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t kaldi::MatrixBase<float>::AddMatMat<short>(uint64_t result, uint64_t a2, uint64_t a3, unsigned int *a4, const char *a5, float a6, float a7)
{
  v12 = result;
  if (a5 == 111)
  {
    v13 = kaldi::QuantizedMatrixBase<short>::NumCols(a4);
    v14 = kaldi::QuantizedMatrixBase<short>::NumRows(a4);
    kaldi::QuantizedMatrix<short>::QuantizedMatrix(v18, v13, v14);
    kaldi::QuantizedMatrixBase<short>::CopyFromMat(v18, a4, 112, v15, v16);
    kaldi::MatrixBase<float>::AddMatMat<short>(v12, a2, a3, v18, 112, a6, a7);
    return kaldi::QuantizedMatrixBase<short>::~QuantizedMatrixBase(v18);
  }

  else
  {
    if (a3 != 111)
    {
      kaldi::KaldiAssertFailure_("AddMatMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0xE4, "transA == kNoTrans", a5);
    }

    if (a5 != 112)
    {
      kaldi::KaldiAssertFailure_("AddMatMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0xE5, "transB == kTrans", a5);
    }

    if (*(a2 + 8) != a4[1])
    {
      kaldi::KaldiAssertFailure_("AddMatMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0xE6, "A.num_cols_ == B.num_cols_", a5);
    }

    v17 = *(a2 + 12);
    if (v17 != *(result + 12))
    {
      kaldi::KaldiAssertFailure_("AddMatMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0xE7, "A.num_rows_ == num_rows_", a5);
    }

    if (*a4 != *(result + 8))
    {
      kaldi::KaldiAssertFailure_("AddMatMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0xE8, "B.num_rows_ == num_cols_", a5);
    }

    if (a6 != 1.0)
    {
      kaldi::KaldiAssertFailure_("AddMatMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0xEA, "alpha == 1.0", a5);
    }

    if (a2 == result)
    {
      kaldi::KaldiAssertFailure_("AddMatMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0xEB, "&A != this", a5);
    }

    if (v17)
    {

      return kaldi::QuantizedMatrixBase<short>::AddMatMat(a4, a2, result, a4, a5, a7);
    }
  }

  return result;
}

unsigned int *kaldi::MatrixBase<float>::AddMatMat<signed char>(unsigned int *result, uint64_t a2, int a3, _DWORD *a4, const char *a5, float a6, float a7)
{
  if (a5 == 111)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v8, "AddMatMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 251);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v8, "Unimplemented");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v8);
  }

  if (a3 != 111)
  {
    kaldi::KaldiAssertFailure_("AddMatMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0xFE, "transA == kNoTrans", a5);
  }

  if (a5 != 112)
  {
    kaldi::KaldiAssertFailure_("AddMatMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0xFF, "transB == kTrans", a5);
  }

  if (*(a2 + 8) != a4[1])
  {
    kaldi::KaldiAssertFailure_("AddMatMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0x100, "A.num_cols_ == B.num_cols_", a5);
  }

  v7 = *(a2 + 12);
  if (v7 != result[3])
  {
    kaldi::KaldiAssertFailure_("AddMatMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0x101, "A.num_rows_ == num_rows_", a5);
  }

  if (*a4 != result[2])
  {
    kaldi::KaldiAssertFailure_("AddMatMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0x102, "B.num_rows_ == num_cols_", a5);
  }

  if (a6 != 1.0)
  {
    kaldi::KaldiAssertFailure_("AddMatMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0x104, "alpha == 1.0", a5);
  }

  if (a2 == result)
  {
    kaldi::KaldiAssertFailure_("AddMatMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0x105, "&A != this", a5);
  }

  if (v7)
  {

    return kaldi::VectorwiseQuantizedMatrix<signed char>::AddMatMat(a4, a2, result, a7);
  }

  return result;
}

unsigned int *kaldi::MatrixBase<float>::AddMatMat<short>(unsigned int *result, uint64_t a2, int a3, _DWORD *a4, const char *a5, float a6, float a7)
{
  if (a5 == 111)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v8, "AddMatMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 251);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v8, "Unimplemented");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v8);
  }

  if (a3 != 111)
  {
    kaldi::KaldiAssertFailure_("AddMatMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0xFE, "transA == kNoTrans", a5);
  }

  if (a5 != 112)
  {
    kaldi::KaldiAssertFailure_("AddMatMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0xFF, "transB == kTrans", a5);
  }

  if (*(a2 + 8) != a4[1])
  {
    kaldi::KaldiAssertFailure_("AddMatMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0x100, "A.num_cols_ == B.num_cols_", a5);
  }

  v7 = *(a2 + 12);
  if (v7 != result[3])
  {
    kaldi::KaldiAssertFailure_("AddMatMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0x101, "A.num_rows_ == num_rows_", a5);
  }

  if (*a4 != result[2])
  {
    kaldi::KaldiAssertFailure_("AddMatMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0x102, "B.num_rows_ == num_cols_", a5);
  }

  if (a6 != 1.0)
  {
    kaldi::KaldiAssertFailure_("AddMatMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0x104, "alpha == 1.0", a5);
  }

  if (a2 == result)
  {
    kaldi::KaldiAssertFailure_("AddMatMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0x105, "&A != this", a5);
  }

  if (v7)
  {

    return kaldi::VectorwiseQuantizedMatrix<short>::AddMatMat(a4, a2, result, a7);
  }

  return result;
}

uint64_t kaldi::MatrixBase<float>::AddVecVec<float>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, const char *a5)
{
  if (*(a2 + 2) != *(a1 + 3) || *(a3 + 2) != *(a1 + 2))
  {
    kaldi::KaldiAssertFailure_("AddVecVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0x88, "a.Dim() == num_rows_ && rb.Dim() == num_cols_", a5);
  }

  v5 = *a2;
  v6 = *a3;
  v7 = *a1;
  v9 = *(a1 + 4);
  return cblas_sger_NEWLAPACK_ILP64();
}

void kaldi::KaldiVlogMessage::~KaldiVlogMessage(std::locale *this)
{
  v2 = kaldi::KaldiVlogMessage::g_logger;
  std::stringbuf::str();
  locale_low = LODWORD(this[33].__locale_);
  locale = this[34].__locale_;
  v2(&__p);
  if (v8 < 0)
  {
    operator delete(__p);
  }

  v5 = MEMORY[0x1E69E54E8];
  v6 = *MEMORY[0x1E69E54E8];
  this->__locale_ = *MEMORY[0x1E69E54E8];
  *(this + *(v6 - 24)) = v5[3];
  this[1].__locale_ = (MEMORY[0x1E69E5548] + 16);
  if (SHIBYTE(this[11].__locale_) < 0)
  {
    operator delete(this[9].__locale_);
  }

  this[1].__locale_ = (MEMORY[0x1E69E5538] + 16);
  std::locale::~locale(this + 2);
  std::ostream::~ostream();
  MEMORY[0x1C692AD30](&this[14]);
}

_DWORD *std::vector<float>::emplace_back<float const&>(const void **a1, _DWORD *a2)
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
  return v6 - 1;
}

void *std::vector<double>::emplace_back<double const&>(const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
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
  return v6 - 1;
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E5558] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E53C0], MEMORY[0x1E69E52E8]);
}

uint64_t kaldi::QuantizedMatrix<signed char>::QuantizedMatrix(uint64_t a1, int a2, int a3)
{
  kaldi::QuantizedMatrixBase<signed char>::QuantizedMatrixBase(a1, a2, a3);
  memptr = 0;
  v6 = malloc_type_posix_memalign(&memptr, 0x20uLL, a3 * a2, 0x100004077774924uLL);
  v7 = memptr;
  if (v6)
  {
    v7 = 0;
  }

  memptr = v7;
  v8 = *(a1 + 16);
  *(a1 + 16) = v7;
  if (v8)
  {
    (*(a1 + 24))();
  }

  kaldi::QuantizedMatrixBase<signed char>::UpdateFilter(a1);
  return a1;
}

void kaldi::QuantizedMatrixBase<signed char>::CopyFromMat(uint64_t a1, uint64_t a2)
{
  if (kaldi::MatrixBase<float>::NumRows(a2) != *a1)
  {
    kaldi::KaldiAssertFailure_("CopyFromMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-quantized-matrix.cc", 0x8F, "M.NumRows() == NumRows()", v4);
  }

  if (kaldi::MatrixBase<float>::NumCols(a2) != *(a1 + 4))
  {
    kaldi::KaldiAssertFailure_("CopyFromMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-quantized-matrix.cc", 0x90, "M.NumCols() == NumCols()", v5);
  }

  v6 = kaldi::MatrixBase<float>::NumRows(a2);
  v7 = kaldi::MatrixBase<float>::NumCols(a2);
  if (v6)
  {
    v8 = 0;
    v9 = -INFINITY;
    v10 = INFINITY;
    do
    {
      if (v7)
      {
        v11 = 0;
        for (i = 0; i != v7; ++i)
        {
          v13 = *a2 + 4 * *(a2 + 16) * v8;
          v14 = *(v13 + (v11 >> 30));
          if (v14 < v10)
          {
            v10 = *(v13 + (v11 >> 30));
          }

          if (v9 < v14)
          {
            v9 = *(v13 + (v11 >> 30));
          }

          v11 += 0x100000000;
        }
      }

      ++v8;
    }

    while (v8 != v6);
  }

  else
  {
    v10 = INFINITY;
    v9 = -INFINITY;
  }

  if ((*(a1 + 4) * 16129.0) > 2147500000.0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v18, "CopyFromMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-quantized-matrix.cc", 169);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v18, "Too many rows*cols for 8-bit Matrix");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v18);
  }

  v15 = fabsf(v9);
  v16 = fabsf(v10);
  if (v15 >= v16)
  {
    v16 = v15;
  }

  *(a1 + 8) = 1123942400;
  *(a1 + 12) = 127.0 / v16;
  v17 = kaldi::QuantizedMatrixBase<signed char>::MutableData(a1);
  kaldi::ComputeQuantizedData<signed char>(v17, a2, *(a1 + 12));

  kaldi::QuantizedMatrixBase<signed char>::UpdateFilter(a1);
}

uint64_t kaldi::QuantizedMatrix<signed char>::QuantizedMatrix<short>(uint64_t a1, int *a2)
{
  kaldi::QuantizedMatrix<signed char>::QuantizedMatrix(a1, *a2, a2[1]);
  kaldi::Matrix<float>::Matrix<short>(v5, a2);
  kaldi::QuantizedMatrixBase<signed char>::CopyFromMat(a1, v5);
  kaldi::Matrix<float>::~Matrix(v5);
  return a1;
}

void sub_1C304EBBC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::Matrix<float>::~Matrix(va);
  kaldi::QuantizedMatrixBase<signed char>::~QuantizedMatrixBase(v2);
  _Unwind_Resume(a1);
}

uint64_t kaldi::QuantizedMatrix<short>::QuantizedMatrix(uint64_t a1, int a2, int a3)
{
  kaldi::QuantizedMatrixBase<short>::QuantizedMatrixBase(a1, a2, a3);
  memptr = 0;
  v6 = malloc_type_posix_memalign(&memptr, 0x20uLL, 2 * a3 * a2, 0x1000040BDFB0063uLL);
  v7 = memptr;
  if (v6)
  {
    v7 = 0;
  }

  memptr = v7;
  v8 = *(a1 + 16);
  *(a1 + 16) = v7;
  if (v8)
  {
    (*(a1 + 24))();
  }

  kaldi::QuantizedMatrixBase<short>::UpdateFilter(a1);
  return a1;
}

void kaldi::QuantizedMatrixBase<short>::CopyFromMat(uint64_t a1, uint64_t a2)
{
  if (kaldi::MatrixBase<float>::NumRows(a2) != *a1)
  {
    kaldi::KaldiAssertFailure_("CopyFromMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-quantized-matrix.cc", 0x8F, "M.NumRows() == NumRows()", v4);
  }

  if (kaldi::MatrixBase<float>::NumCols(a2) != *(a1 + 4))
  {
    kaldi::KaldiAssertFailure_("CopyFromMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-quantized-matrix.cc", 0x90, "M.NumCols() == NumCols()", v5);
  }

  v6 = kaldi::MatrixBase<float>::NumRows(a2);
  v7 = kaldi::MatrixBase<float>::NumCols(a2);
  if (v6)
  {
    v8 = 0;
    v9 = -INFINITY;
    v10 = INFINITY;
    do
    {
      if (v7)
      {
        v11 = 0;
        for (i = 0; i != v7; ++i)
        {
          v13 = *a2 + 4 * *(a2 + 16) * v8;
          v14 = *(v13 + (v11 >> 30));
          if (v14 < v10)
          {
            v10 = *(v13 + (v11 >> 30));
          }

          if (v9 < v14)
          {
            v9 = *(v13 + (v11 >> 30));
          }

          v11 += 0x100000000;
        }
      }

      ++v8;
    }

    while (v8 != v6);
  }

  else
  {
    v10 = INFINITY;
    v9 = -INFINITY;
  }

  v15 = fabsf(v9);
  v16 = fabsf(v10);
  if (v15 >= v16)
  {
    v16 = v15;
  }

  v17 = 2147500000.0 / (v7 * v6);
  if (v17 > 32767.0)
  {
    v17 = 32767.0;
  }

  *(a1 + 8) = v17;
  *(a1 + 12) = v17 / v16;
  v18 = kaldi::QuantizedMatrixBase<short>::MutableData(a1);
  kaldi::ComputeQuantizedData<short>(v18, a2, *(a1 + 12));

  kaldi::QuantizedMatrixBase<short>::UpdateFilter(a1);
}

uint64_t kaldi::QuantizedMatrix<short>::QuantizedMatrix<signed char>(uint64_t a1, int *a2)
{
  kaldi::QuantizedMatrix<short>::QuantizedMatrix(a1, *a2, a2[1]);
  kaldi::Matrix<float>::Matrix<signed char>(v5, a2);
  kaldi::QuantizedMatrixBase<short>::CopyFromMat(a1, v5);
  kaldi::Matrix<float>::~Matrix(v5);
  return a1;
}

void sub_1C304EE7C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::Matrix<float>::~Matrix(va);
  kaldi::QuantizedMatrixBase<short>::~QuantizedMatrixBase(v2);
  _Unwind_Resume(a1);
}

uint64_t kaldi::QuantizedMatrixBase<signed char>::~QuantizedMatrixBase(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    BNNSFilterDestroy(v2);
  }

  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    (*(a1 + 24))();
  }

  return a1;
}

uint64_t kaldi::QuantizedMatrixBase<signed char>::CopyRowsFromVec(unsigned int *a1, char **a2)
{
  kaldi::Matrix<float>::Matrix(v5, *a1, a1[1], 0, 0);
  kaldi::MatrixBase<float>::CopyRowsFromVec(v5, a2);
  kaldi::QuantizedMatrixBase<signed char>::CopyFromMat(a1, v5);
  return kaldi::Matrix<float>::~Matrix(v5);
}

void sub_1C304EF50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::Matrix<float>::~Matrix(va);
  _Unwind_Resume(a1);
}

void kaldi::QuantizedMatrixBase<signed char>::CopyFromMat(int *a1, uint64_t a2, int a3, uint64_t a4, const char *a5)
{
  *(a1 + 1) = *(a2 + 8);
  if (a3 == 111)
  {
    if (*a1 != *a2)
    {
      kaldi::KaldiAssertFailure_("CopyFromMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-quantized-matrix.cc", 0x117, "num_rows_ == M.NumRows()", a5);
    }

    if (a1[1] != *(a2 + 4))
    {
      kaldi::KaldiAssertFailure_("CopyFromMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-quantized-matrix.cc", 0x118, "num_cols_ == M.NumCols()", a5);
    }

    v7 = kaldi::QuantizedMatrixBase<signed char>::MutableData(a1);
    if (*(a2 + 32))
    {
      v8 = *(a2 + 32);
    }

    else
    {
      v8 = *(a2 + 16);
    }

    memmove(v7, v8, *a1 * a1[1]);
  }

  else
  {
    v9 = a1[1];
    if (v9 != *a2)
    {
      kaldi::KaldiAssertFailure_("CopyFromMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-quantized-matrix.cc", 0x11B, "num_cols_ == M.NumRows()", a5);
    }

    v10 = *a1;
    if (v10 != *(a2 + 4))
    {
      kaldi::KaldiAssertFailure_("CopyFromMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-quantized-matrix.cc", 0x11C, "num_rows_ == M.NumCols()", a5);
    }

    v11 = kaldi::QuantizedMatrixBase<signed char>::MutableData(a1);
    v12 = *(a2 + 32);
    if (!v12)
    {
      v12 = *(a2 + 16);
    }

    v13 = *a1;
    if (*a1 >= 1)
    {
      v14 = 0;
      LODWORD(v15) = a1[1];
      do
      {
        if (v15 >= 1)
        {
          v16 = 0;
          v17 = v12;
          do
          {
            *(v11 + v16++) = *v17;
            v15 = a1[1];
            v17 += v10;
          }

          while (v16 < v15);
          v13 = *a1;
        }

        ++v14;
        v11 += v9;
        ++v12;
      }

      while (v14 < v13);
    }
  }

  kaldi::QuantizedMatrixBase<signed char>::UpdateFilter(a1);
}

uint64_t kaldi::QuantizedMatrixBase<signed char>::MutableData(uint64_t a1)
{
  if (*(a1 + 32))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v2, "MutableData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-quantized-matrix.cc", 269);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "Attempt to write into immutable matrix");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return *(a1 + 16);
}

uint64_t kaldi::QuantizedMatrixBase<signed char>::Data(uint64_t a1)
{
  result = *(a1 + 32);
  if (!result)
  {
    return *(a1 + 16);
  }

  return result;
}

void kaldi::QuantizedMatrixBase<signed char>::UpdateFilter(int *a1)
{
  v2 = *(a1 + 5);
  if (v2)
  {
    BNNSFilterDestroy(v2);
    *(a1 + 5) = 0;
  }

  v3 = *(a1 + 4);
  if (v3 || *(a1 + 2))
  {
    v5 = *a1;
    v4 = a1[1];
    v18[2] = 0;
    v19[0] = v4;
    v19[1] = 0x3F80000000020008;
    v19[2] = 0;
    v18[0] = v5;
    v18[1] = 65568;
    if (!v3)
    {
      v3 = *(a1 + 2);
    }

    v16[0] = 1;
    v17 = 0u;
    v16[1] = 1;
    v6[0] = v4;
    v6[1] = v5;
    v6[2] = v3;
    v7 = 131080;
    v8 = 1065353216;
    v9 = 0;
    v10 = 0;
    v11 = xmmword_1C378AFC0;
    v12 = *algn_1C378AFD0;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    *(a1 + 5) = MEMORY[0x1C692A0B0](v19, v18, v6, v16);
  }
}

double kaldi::QuantizedMatrixBase<signed char>::Sum(int *a1)
{
  v1 = *a1;
  if (!v1)
  {
    return 0.0;
  }

  v2 = 0;
  v3 = a1[1];
  result = 0.0;
  do
  {
    if (v3)
    {
      v5 = 0;
      for (i = 0; i != v3; ++i)
      {
        v7 = *(a1 + 4);
        if (!v7)
        {
          v7 = *(a1 + 2);
        }

        *&result = *&result + (*(v7 + v3 * v2 + (v5 >> 32)) / *(a1 + 3));
        v5 += 0x100000000;
      }
    }

    ++v2;
  }

  while (v2 != v1);
  return result;
}

float kaldi::QuantizedMatrixBase<signed char>::Row@<S0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 32);
  if (!v5)
  {
    v5 = *(a1 + 16);
  }

  return kaldi::QuantizedSubVector<signed char>::QuantizedSubVector(a3, v5 + *(a1 + 4) * a2, *(a1 + 4), *(a1 + 12));
}

uint64_t kaldi::QuantizedMatrixBase<signed char>::Range@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X8>)
{
  LODWORD(v8) = a3;
  LODWORD(v9) = a2;
  result = kaldi::QuantizedMatrix<signed char>::QuantizedMatrix(a6, a3, a5);
  *(a6 + 8) = *(a1 + 8);
  if (v8)
  {
    v13 = 0;
    v8 = v8;
    v9 = v9;
    do
    {
      v14 = kaldi::QuantizedMatrixBase<signed char>::MutableData(a6);
      v15 = *(a1 + 32);
      if (!v15)
      {
        v15 = *(a1 + 16);
      }

      result = memcpy((v14 + v13), (v15 + v9 * *(a1 + 4) + a4), a5);
      ++v9;
      v13 += a5;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t kaldi::QuantizedMatrixBase<signed char>::QuantizedMatrixBase(uint64_t a1, int a2, int a3)
{
  *a1 = a2;
  *(a1 + 4) = a3;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = kaldi::kaldi_memalign_free;
  kaldi::QuantizedMatrixBase<signed char>::UpdateFilter(a1);
  return a1;
}

void sub_1C304F424(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v3)
  {
    (*(v1 + 24))();
  }

  _Unwind_Resume(exception_object);
}

int *kaldi::QuantizedMatrixBase<signed char>::QuantizedMatrixBase(int *a1, int *a2)
{
  v3 = *a2;
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 2) = 0;
  v5 = *(a2 + 4);
  *(a1 + 3) = kaldi::kaldi_memalign_free;
  *(a1 + 4) = v5;
  *(a1 + 5) = 0;
  if (*(a2 + 2))
  {
    memptr = 0;
    if (malloc_type_posix_memalign(&memptr, 0x20uLL, v4 * v3, 0x100004077774924uLL))
    {
      v7 = 0;
    }

    else
    {
      v7 = memptr;
    }

    memptr = v7;
    v8 = *(a1 + 2);
    *(a1 + 2) = v7;
    if (v8)
    {
      (*(a1 + 3))(v8);
      v7 = *(a1 + 2);
    }

    memcpy(v7, *(a2 + 2), a1[1] * *a1);
  }

  kaldi::QuantizedMatrixBase<signed char>::UpdateFilter(a1);
  return a1;
}

void sub_1C304F51C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v3)
  {
    (*(v1 + 24))();
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::QuantizedMatrixBase<short>::~QuantizedMatrixBase(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    BNNSFilterDestroy(v2);
  }

  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    (*(a1 + 24))();
  }

  return a1;
}

uint64_t kaldi::QuantizedMatrixBase<short>::AddMatMat(uint64_t a1, uint64_t a2, void **a3, uint64_t a4, const char *a5, float a6)
{
  v27 = 0;
  v28 = kaldi::kaldi_memalign_free;
  v30 = 0;
  v29 = 0;
  v31 = 0;
  kaldi::QuantizedMatrixBase<short>::PrepareMatMat(a1, a2, &v27, a4, a5);
  v9 = kaldi::MatrixBase<float>::NumRows(a3);
  v10 = kaldi::MatrixBase<float>::NumCols(a3);
  v11 = 1.0 / (*(a1 + 12) * *&v29);
  if (a6 == 0.0)
  {
    v12 = *(a1 + 40);
    v13 = v27;
    v14 = *(a1 + 4);
    v15 = *a3;
    v16 = kaldi::MatrixBase<float>::Stride(a3);
    BNNSFilterApplyBatch(v12, v9, v13, v14, v15, v16);
    kaldi::MatrixBase<float>::Scale(a3, v11);
  }

  else
  {
    kaldi::Matrix<float>::Matrix(v26, v9, v10, 0, 0);
    v17 = *(a1 + 40);
    v18 = kaldi::MatrixBase<float>::NumRows(v26);
    v19 = v27;
    v20 = *(a1 + 4);
    v21 = v26[0];
    v22 = kaldi::MatrixBase<float>::Stride(v26);
    BNNSFilterApplyBatch(v17, v18, v19, v20, v21, v22);
    kaldi::MatrixBase<float>::AddMat(a3, v26, 111, v11, a6, v23, v24);
    kaldi::Matrix<float>::~Matrix(v26);
  }

  result = v27;
  v27 = 0;
  if (result)
  {
    return v28();
  }

  return result;
}

void sub_1C304F6FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void (*a15)(void))
{
  if (a14)
  {
    a15();
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::QuantizedMatrixBase<short>::PrepareMatMat(float *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v8 = kaldi::MatrixBase<float>::AbsMax(a2, a2, a3, a4, a5);
  if (v8 == 0.0)
  {
    v9 = 1.0;
  }

  else
  {
    v9 = v8;
  }

  v10 = kaldi::MatrixBase<float>::NumRows(a2);
  v11 = kaldi::MatrixBase<float>::NumCols(a2);
  v12 = a1[2];
  v13 = 2147500000.0 / (v12 * v11);
  v14 = v12 / v9;
  if (v14 >= v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  memptr = 0;
  if (malloc_type_posix_memalign(&memptr, 0x20uLL, 2 * v11 * v10, 0x1000040BDFB0063uLL))
  {
    v16 = 0;
  }

  else
  {
    v16 = memptr;
  }

  memptr = v16;
  v17 = *a3;
  *a3 = v16;
  if (v17)
  {
    (*(a3 + 8))(v17);
    v16 = *a3;
  }

  result = kaldi::ComputeQuantizedData<short>(v16, a2, v15);
  *(a3 + 16) = v15;
  v19 = *a1;
  v20 = *(a1 + 4);
  if (!v20)
  {
    v20 = *(a1 + 2);
  }

  v21 = *(a1 + 1);
  if (*(a3 + 20) != LODWORD(v19) || *(a3 + 24) != v21 || *(a3 + 32) != v20)
  {
    *(a3 + 20) = v19;
    *(a3 + 24) = v21;
    *(a3 + 32) = v20;
  }

  return result;
}

uint64_t kaldi::QuantizedMatrixBase<short>::CopyRowsFromVec(unsigned int *a1, char **a2)
{
  kaldi::Matrix<float>::Matrix(v5, *a1, a1[1], 0, 0);
  kaldi::MatrixBase<float>::CopyRowsFromVec(v5, a2);
  kaldi::QuantizedMatrixBase<short>::CopyFromMat(a1, v5);
  return kaldi::Matrix<float>::~Matrix(v5);
}

void sub_1C304F8D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::Matrix<float>::~Matrix(va);
  _Unwind_Resume(a1);
}

void kaldi::QuantizedMatrixBase<short>::CopyFromMat(int *a1, uint64_t a2, int a3, uint64_t a4, const char *a5)
{
  *(a1 + 1) = *(a2 + 8);
  if (a3 == 111)
  {
    if (*a1 != *a2)
    {
      kaldi::KaldiAssertFailure_("CopyFromMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-quantized-matrix.cc", 0x117, "num_rows_ == M.NumRows()", a5);
    }

    if (a1[1] != *(a2 + 4))
    {
      kaldi::KaldiAssertFailure_("CopyFromMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-quantized-matrix.cc", 0x118, "num_cols_ == M.NumCols()", a5);
    }

    v7 = kaldi::QuantizedMatrixBase<short>::MutableData(a1);
    if (*(a2 + 32))
    {
      v8 = *(a2 + 32);
    }

    else
    {
      v8 = *(a2 + 16);
    }

    memmove(v7, v8, 2 * *a1 * a1[1]);
  }

  else
  {
    v9 = a1[1];
    if (v9 != *a2)
    {
      kaldi::KaldiAssertFailure_("CopyFromMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-quantized-matrix.cc", 0x11B, "num_cols_ == M.NumRows()", a5);
    }

    v10 = *a1;
    if (v10 != *(a2 + 4))
    {
      kaldi::KaldiAssertFailure_("CopyFromMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-quantized-matrix.cc", 0x11C, "num_rows_ == M.NumCols()", a5);
    }

    v11 = kaldi::QuantizedMatrixBase<short>::MutableData(a1);
    v12 = *(a2 + 32);
    if (!v12)
    {
      v12 = *(a2 + 16);
    }

    v13 = *a1;
    if (v13 >= 1)
    {
      v14 = 0;
      v15 = a1[1];
      do
      {
        v16 = v15;
        v17 = v12;
        v18 = v11;
        if (v15 >= 1)
        {
          do
          {
            *v18++ = *v17;
            v17 += v10;
            --v16;
          }

          while (v16);
        }

        ++v14;
        v11 += 2 * v9;
        ++v12;
      }

      while (v14 != v13);
    }
  }

  kaldi::QuantizedMatrixBase<short>::UpdateFilter(a1);
}

uint64_t kaldi::QuantizedMatrixBase<short>::MutableData(uint64_t a1)
{
  if (*(a1 + 32))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v2, "MutableData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-quantized-matrix.cc", 269);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "Attempt to write into immutable matrix");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return *(a1 + 16);
}

void kaldi::QuantizedMatrixBase<short>::UpdateFilter(int *a1)
{
  v2 = *(a1 + 5);
  if (v2)
  {
    BNNSFilterDestroy(v2);
    *(a1 + 5) = 0;
  }

  v3 = *(a1 + 4);
  if (v3 || *(a1 + 2))
  {
    v5 = *a1;
    v4 = a1[1];
    v18[2] = 0;
    v19[0] = v4;
    v19[1] = 0x3F80000000020010;
    v19[2] = 0;
    v18[0] = v5;
    v18[1] = 65568;
    if (!v3)
    {
      v3 = *(a1 + 2);
    }

    v16[0] = 1;
    v17 = 0u;
    v16[1] = 1;
    v6[0] = v4;
    v6[1] = v5;
    v6[2] = v3;
    v7 = 131088;
    v8 = 1065353216;
    v9 = 0;
    v10 = 0;
    v11 = xmmword_1C378AFC0;
    v12 = *algn_1C378AFD0;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    *(a1 + 5) = MEMORY[0x1C692A0B0](v19, v18, v6, v16);
  }
}

double kaldi::QuantizedMatrixBase<short>::Sum(int *a1)
{
  v1 = *a1;
  if (!v1)
  {
    return 0.0;
  }

  v2 = 0;
  v3 = a1[1];
  result = 0.0;
  do
  {
    if (v3)
    {
      v5 = 0;
      for (i = 0; i != v3; ++i)
      {
        v7 = *(a1 + 4);
        if (!v7)
        {
          v7 = *(a1 + 2);
        }

        *&result = *&result + (*(v7 + 2 * v3 * v2 + (v5 >> 31)) / *(a1 + 3));
        v5 += 0x100000000;
      }
    }

    ++v2;
  }

  while (v2 != v1);
  return result;
}

float kaldi::QuantizedMatrixBase<short>::Row@<S0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 32);
  if (!v5)
  {
    v5 = *(a1 + 16);
  }

  return kaldi::QuantizedSubVector<signed char>::QuantizedSubVector(a3, v5 + 2 * *(a1 + 4) * a2, *(a1 + 4), *(a1 + 12));
}

uint64_t kaldi::QuantizedMatrixBase<short>::Range@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X8>)
{
  LODWORD(v8) = a3;
  LODWORD(v9) = a2;
  result = kaldi::QuantizedMatrix<short>::QuantizedMatrix(a6, a3, a5);
  *(a6 + 8) = *(a1 + 8);
  if (v8)
  {
    v13 = 0;
    v8 = v8;
    v9 = v9;
    v14 = 2 * a5;
    do
    {
      v15 = kaldi::QuantizedMatrixBase<short>::MutableData(a6);
      v16 = *(a1 + 32);
      if (!v16)
      {
        v16 = *(a1 + 16);
      }

      result = memcpy((v15 + v13), (v16 + 2 * v9 * *(a1 + 4) + 2 * a4), v14);
      ++v9;
      v13 += v14;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t kaldi::ComputeQuantizedData<short>(uint64_t a1, uint64_t a2, float a3)
{
  v6 = kaldi::MatrixBase<float>::NumRows(a2);
  result = kaldi::MatrixBase<float>::NumCols(a2);
  if (v6)
  {
    v8 = 0;
    v9 = *a2;
    v10 = *(a2 + 16);
    do
    {
      if (result)
      {
        v11 = 0;
        v12 = 0;
        do
        {
          *(a1 + 2 * v12++) = llroundf(*(v9 + 4 * v10 * v8 + (v11 >> 30)) * a3);
          v11 += 0x100000000;
        }

        while (result != v12);
      }

      ++v8;
      a1 += 2 * result;
    }

    while (v8 != v6);
  }

  return result;
}

uint64_t kaldi::QuantizedMatrixBase<short>::QuantizedMatrixBase(uint64_t a1, int a2, int a3)
{
  *a1 = a2;
  *(a1 + 4) = a3;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = kaldi::kaldi_memalign_free;
  kaldi::QuantizedMatrixBase<short>::UpdateFilter(a1);
  return a1;
}

void sub_1C304FE4C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v3)
  {
    (*(v1 + 24))();
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::QuantizedMatrixBase<short>::QuantizedMatrixBase(uint64_t a1, int *a2)
{
  v3 = *a2;
  v4 = a2[1];
  *a1 = *a2;
  *(a1 + 4) = v4;
  *(a1 + 8) = *(a2 + 1);
  *(a1 + 16) = 0;
  v5 = *(a2 + 4);
  *(a1 + 24) = kaldi::kaldi_memalign_free;
  *(a1 + 32) = v5;
  *(a1 + 40) = 0;
  if (*(a2 + 2))
  {
    memptr = 0;
    if (malloc_type_posix_memalign(&memptr, 0x20uLL, 2 * v4 * v3, 0x1000040BDFB0063uLL))
    {
      v7 = 0;
    }

    else
    {
      v7 = memptr;
    }

    memptr = v7;
    v8 = *(a1 + 16);
    *(a1 + 16) = v7;
    if (v8)
    {
      (*(a1 + 24))(v8);
      v7 = *(a1 + 16);
    }

    memcpy(v7, *(a2 + 2), 2 * *(a1 + 4) * *a1);
  }

  kaldi::QuantizedMatrixBase<short>::UpdateFilter(a1);
  return a1;
}

void sub_1C304FF48(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v3)
  {
    (*(v1 + 24))();
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::QuantizedMatrix<signed char>::QuantizedMatrix(uint64_t a1, int *a2)
{
  v4 = kaldi::QuantizedMatrix<signed char>::QuantizedMatrix(a1, *a2, a2[1]);
  kaldi::QuantizedMatrixBase<signed char>::CopyFromMat(v4, a2, 111, v5, v6);
  return a1;
}

void kaldi::QuantizedMatrix<signed char>::Read(int *a1, void *a2, int a3, uint64_t a4)
{
  kaldi::ReadBasicType<float>(a2, a3, a1 + 3);
  a1[2] = 1123942400;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  kaldi::ReadIntegerVector<signed char>(a2, a3, &v12, a4, a1 + 32, 0, 0);
  if (*(a1 + 4))
  {
    v8 = *(a1 + 2);
    *(a1 + 2) = 0;
    if (v8)
    {
      (*(a1 + 3))();
    }
  }

  else
  {
    if (v13 - v12 != a1[1] * *a1)
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(memptr, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-quantized-matrix.cc", 502);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(memptr, "Quantized matrix improperly serialized", 38);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(memptr);
    }

    memptr[0] = 0;
    if (malloc_type_posix_memalign(memptr, 0x20uLL, v13 - v12, 0x100004077774924uLL))
    {
      v9 = 0;
    }

    else
    {
      v9 = memptr[0];
    }

    memptr[0] = v9;
    v10 = *(a1 + 2);
    *(a1 + 2) = v9;
    if (v10)
    {
      (*(a1 + 3))(v10);
      v9 = *(a1 + 2);
    }

    memcpy(v9, v12, v13 - v12);
  }

  kaldi::QuantizedMatrixBase<signed char>::UpdateFilter(a1);
  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }
}

void sub_1C30501B0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 72);
  if (v3)
  {
    *(v1 - 64) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::ReadIntegerVector<signed char>(void *a1, int a2, uint64_t a3, uint64_t a4, const char *a5, void *a6, void *a7)
{
  v27[34] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    kaldi::KaldiAssertFailure_("ReadIntegerVector", "../engine/common/libquasar/libkaldi/src/base/io-funcs-inl.h", 0x109, "v != NULL", a5);
  }

  if (a5)
  {
    *a5 = 0;
  }

  if (a2)
  {
    v12 = std::istream::peek();
    if (v12 != 1)
    {
      v17 = v12;
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v27, "ReadIntegerVector", "../engine/common/libquasar/libkaldi/src/base/io-funcs-inl.h", 274);
      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "ReadIntegerVector: expected to see type of size ", 48);
      v19 = MEMORY[0x1C692A980](v18, 1);
      v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, ", saw instead ", 14);
      v21 = MEMORY[0x1C692A960](v20, v17);
      v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, ", at file position ", 19);
      std::istream::tellg();
      MEMORY[0x1C692A9A0](v22);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v27);
    }

    std::istream::get();
    std::istream::read();
    if ((*(a1 + *(*a1 - 24) + 32) & 5) == 0)
    {
      if (a7)
      {
        *a7 = 0;
      }

      if (a4 && a6)
      {
        std::istream::tellg();
        *a6 = a4 + v27[16];
        std::istream::seekg();
        *(a3 + 8) = *a3;
        std::vector<signed char>::shrink_to_fit(a3);
      }

      else if (*(a3 + 8) != *a3)
      {
        *(a3 + 8) = *a3;
      }

      goto LABEL_24;
    }

LABEL_26:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v27, "ReadIntegerVector", "../engine/common/libquasar/libkaldi/src/base/io-funcs-inl.h", 341);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "ReadIntegerVector: read failure at file position ", 49);
    std::istream::tellg();
    MEMORY[0x1C692A9A0](v16);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v27);
  }

  std::ws[abi:ne200100]<char,std::char_traits<char>>(a1);
  if (std::istream::peek() != 91)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v27, "ReadIntegerVector", "../engine/common/libquasar/libkaldi/src/base/io-funcs-inl.h", 311);
    v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "ReadIntegerVector: expected to see [, saw ", 42);
    v24 = std::istream::peek();
    v25 = MEMORY[0x1C692A960](v23, v24);
    v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, ", at file position ", 19);
    std::istream::tellg();
    MEMORY[0x1C692A9A0](v26);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v27);
  }

  std::istream::get();
  std::ws[abi:ne200100]<char,std::char_traits<char>>(a1);
  v13 = std::istream::peek();
  if (v13 == 93)
  {
    std::istream::get();
    std::vector<signed char>::__assign_with_size[abi:ne200100]<signed char *,signed char *>(a3, 0, 0, 0);
    if (a7)
    {
      *a7 = *(a3 + 8) - *a3;
    }
  }

  else
  {
    LOWORD(v27[0]) = 0;
    v14 = MEMORY[0x1C692A8A0](a1, v27);
    std::ws[abi:ne200100]<char,std::char_traits<char>>(v14);
    if ((*(a1 + *(*a1 - 24) + 32) & 5) == 0)
    {
      operator new();
    }
  }

  if (v13 != 93)
  {
    goto LABEL_26;
  }

LABEL_24:
  if ((*(a1 + *(*a1 - 24) + 32) & 5) != 0)
  {
    goto LABEL_26;
  }

  v15 = *MEMORY[0x1E69E9840];
}

void sub_1C3050700(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::QuantizedMatrix<signed char>::Write(int *a1, void *a2, int a3, int a4)
{
  v8 = a1[3];
  kaldi::WriteBasicType<float>(a2, a3);
  v9 = *a1;
  v10 = a1[1];
  v11 = *(a1 + 4);
  if (!v11)
  {
    v11 = *(a1 + 2);
  }

  return kaldi::WriteIntegerByteArray<signed char>(a2, a3, a4, v10 * v9, v11);
}

uint64_t kaldi::QuantizedMatrix<short>::QuantizedMatrix(uint64_t a1, int *a2)
{
  v4 = kaldi::QuantizedMatrix<short>::QuantizedMatrix(a1, *a2, a2[1]);
  kaldi::QuantizedMatrixBase<short>::CopyFromMat(v4, a2, 111, v5, v6);
  return a1;
}

void kaldi::QuantizedMatrix<short>::Read(int *a1, void *a2, int a3, uint64_t a4)
{
  kaldi::ReadBasicType<float>(a2, a3, a1 + 3);
  kaldi::ReadBasicType<float>(a2, a3, a1 + 2);
  v12 = 0;
  v13 = 0;
  v14 = 0;
  kaldi::ReadIntegerVector<short>(a2, a3, &v12, a4, a1 + 32, 0, 0);
  if (*(a1 + 4))
  {
    v8 = *(a1 + 2);
    *(a1 + 2) = 0;
    if (v8)
    {
      (*(a1 + 3))();
    }
  }

  else
  {
    if (a1[1] * *a1 != (v13 - v12) >> 1)
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(memptr, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-quantized-matrix.cc", 502);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(memptr, "Quantized matrix improperly serialized", 38);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(memptr);
    }

    memptr[0] = 0;
    if (malloc_type_posix_memalign(memptr, 0x20uLL, v13 - v12, 0x1000040BDFB0063uLL))
    {
      v9 = 0;
    }

    else
    {
      v9 = memptr[0];
    }

    memptr[0] = v9;
    v10 = *(a1 + 2);
    *(a1 + 2) = v9;
    if (v10)
    {
      (*(a1 + 3))(v10);
      v9 = *(a1 + 2);
    }

    memcpy(v9, v12, v13 - v12);
  }

  kaldi::QuantizedMatrixBase<short>::UpdateFilter(a1);
  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }
}

void sub_1C30509FC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 72);
  if (v3)
  {
    *(v1 - 64) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::ReadIntegerVector<short>(void *a1, int a2, uint64_t a3, uint64_t a4, char *a5, void *a6, uint64_t *a7)
{
  v48 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    kaldi::KaldiAssertFailure_("ReadIntegerVector", "../engine/common/libquasar/libkaldi/src/base/io-funcs-inl.h", 0x109, "v != NULL", a5);
  }

  if (a5)
  {
    *a5 = 0;
  }

  if (a2)
  {
    v13 = std::istream::peek();
    if (v13 != 2)
    {
      v31 = v13;
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v46, "ReadIntegerVector", "../engine/common/libquasar/libkaldi/src/base/io-funcs-inl.h", 274);
      v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, "ReadIntegerVector: expected to see type of size ", 48);
      v33 = MEMORY[0x1C692A980](v32, 2);
      v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, ", saw instead ", 14);
      v35 = MEMORY[0x1C692A960](v34, v31);
      v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, ", at file position ", 19);
      std::istream::tellg();
      MEMORY[0x1C692A9A0](v36, v45);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v46);
    }

    std::istream::get();
    v44 = 0;
    std::istream::read();
    if ((*(a1 + *(*a1 - 24) + 32) & 5) == 0)
    {
      v14 = v44;
      v15 = v44;
      if (a7)
      {
        *a7 = v44;
      }

      if (a4 && (a5 ? (v16 = v14 < 0) : (v16 = 0), !v16 ? (v17 = 0) : (v17 = 1), a6 || v17))
      {
        if (v17)
        {
          std::istream::tellg();
          *a5 = a4 + v47;
        }

        else if (a6)
        {
          std::istream::tellg();
          *a6 = a4 + v47;
        }

        std::istream::seekg();
        *(a3 + 8) = *a3;
        std::vector<short>::shrink_to_fit(a3);
      }

      else
      {
        std::vector<short>::resize(a3, v15);
        if (v44 >= 1)
        {
          v18 = *a3;
          std::istream::read();
        }
      }

      goto LABEL_51;
    }

LABEL_54:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v46, "ReadIntegerVector", "../engine/common/libquasar/libkaldi/src/base/io-funcs-inl.h", 341);
    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, "ReadIntegerVector: read failure at file position ", 49);
    std::istream::tellg();
    MEMORY[0x1C692A9A0](v30, v45);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v46);
  }

  __src = 0;
  v42 = 0;
  v43 = 0;
  std::ws[abi:ne200100]<char,std::char_traits<char>>(a1);
  if (std::istream::peek() != 91)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v46, "ReadIntegerVector", "../engine/common/libquasar/libkaldi/src/base/io-funcs-inl.h", 311);
    v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, "ReadIntegerVector: expected to see [, saw ", 42);
    v38 = std::istream::peek();
    v39 = MEMORY[0x1C692A960](v37, v38);
    v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, ", at file position ", 19);
    std::istream::tellg();
    MEMORY[0x1C692A9A0](v40, v45);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v46);
  }

  std::istream::get();
  std::ws[abi:ne200100]<char,std::char_traits<char>>(a1);
  while (1)
  {
    v19 = std::istream::peek();
    if (v19 == 93)
    {
      break;
    }

    LOWORD(v46[0]) = 0;
    v20 = MEMORY[0x1C692A8A0](a1, v46);
    std::ws[abi:ne200100]<char,std::char_traits<char>>(v20);
    if ((*(a1 + *(*a1 - 24) + 32) & 5) != 0)
    {
      goto LABEL_42;
    }

    v21 = v42;
    if (v42 >= v43)
    {
      v23 = __src;
      v24 = v42 - __src;
      v25 = (v42 - __src) >> 1;
      if (v25 <= -2)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      if (v43 - __src <= v25 + 1)
      {
        v26 = v25 + 1;
      }

      else
      {
        v26 = v43 - __src;
      }

      if (v43 - __src >= 0x7FFFFFFFFFFFFFFELL)
      {
        v27 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v27 = v26;
      }

      if (v27)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<short>>(&__src, v27);
      }

      *(2 * v25) = v46[0];
      v22 = (2 * v25 + 2);
      memcpy(0, v23, v24);
      v28 = __src;
      __src = 0;
      v42 = v22;
      v43 = 0;
      if (v28)
      {
        operator delete(v28);
      }
    }

    else
    {
      *v42 = v46[0];
      v22 = v21 + 2;
    }

    v42 = v22;
  }

  std::istream::get();
  if (&__src != a3)
  {
    std::vector<short>::__assign_with_size[abi:ne200100]<short *,short *>(a3, __src, v42, (v42 - __src) >> 1);
  }

  if (a7)
  {
    *a7 = (*(a3 + 8) - *a3) >> 1;
  }

LABEL_42:
  if (__src)
  {
    v42 = __src;
    operator delete(__src);
  }

  if (v19 != 93)
  {
    goto LABEL_54;
  }

LABEL_51:
  if ((*(a1 + *(*a1 - 24) + 32) & 5) != 0)
  {
    goto LABEL_54;
  }

  v29 = *MEMORY[0x1E69E9840];
}

void sub_1C3050F44(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1C3050F7CLL);
}

void sub_1C3050F68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::QuantizedMatrix<short>::Write(int *a1, void *a2, int a3, int a4)
{
  v8 = a1[3];
  kaldi::WriteBasicType<float>(a2, a3);
  v9 = a1[2];
  kaldi::WriteBasicType<float>(a2, a3);
  v10 = *a1;
  v11 = a1[1];
  v12 = *(a1 + 4);
  if (!v12)
  {
    v12 = *(a1 + 2);
  }

  return kaldi::WriteIntegerByteArray<short>(a2, a3, a4, v11 * v10, v12);
}

double kaldi::VectorwiseQuantizedMatrix<signed char>::VectorwiseQuantizedMatrix(uint64_t a1, int a2, int a3)
{
  *a1 = a2;
  *(a1 + 4) = a3;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  return result;
}

void sub_1C3051158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  kaldi::CuMatrixBase<float>::~CuMatrixBase(va);
  _Unwind_Resume(a1);
}

int *kaldi::VectorwiseQuantizedMatrix<signed char>::VectorwiseQuantizedMatrix(int *result, void *a2)
{
  *result = *a2;
  *(result + 2) = 0u;
  *(result + 6) = 0u;
  v2 = a2[2];
  if (!v2)
  {
    operator new[]();
  }

  *(result + 2) = v2;
  v3 = a2[4];
  if (!v3)
  {
    v4 = *result;
    operator new[]();
  }

  *(result + 4) = v3;
  return result;
}

void sub_1C3051280(_Unwind_Exception *a1)
{
  v4 = *(v1 + 24);
  *(v1 + 24) = 0;
  if (v4)
  {
    MEMORY[0x1C692AE10](v4, 0x1000C4077774924);
  }

  kaldi::VectorwiseQuantizedMatrix<signed char>::VectorwiseQuantizedMatrix(v2);
  _Unwind_Resume(a1);
}

uint64_t kaldi::VectorwiseQuantizedMatrix<signed char>::Read(unsigned int *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = kaldi::Matrix<float>::Matrix(v17, 1, *a1, 0, 0);
  kaldi::Matrix<float>::Read(v8, a2, a3, 0, a4);
  if (v18 != 1)
  {
    *(a1 + 2) = 0;
    *a1;
    operator new[]();
  }

  v9 = v17[0];
  v10 = *(a1 + 1);
  *(a1 + 1) = 0;
  *(a1 + 2) = v9;
  if (v10)
  {
    MEMORY[0x1C692AE10](v10, 0x1000C4052888210);
  }

  v14 = 0;
  v15 = 0;
  v16 = 0;
  kaldi::ReadIntegerVector<signed char>(a2, a3, &v14, a4, a1 + 32, 0, 0);
  if (!*(a1 + 4))
  {
    if (v15 - v14 == a1[1] * *a1)
    {
      operator new[]();
    }

    kaldi::KaldiErrorMessage::KaldiErrorMessage(v13, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-quantized-matrix.cc", 619);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "Quantized matrix improperly serialized", 38);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v13);
  }

  v11 = *(a1 + 3);
  *(a1 + 3) = 0;
  if (v11)
  {
    MEMORY[0x1C692AE10](v11, 0x1000C4077774924);
  }

  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }

  return kaldi::Matrix<float>::~Matrix(v17);
}

void sub_1C30514D4(_Unwind_Exception *a1)
{
  v3 = *(v1 - 112);
  if (v3)
  {
    *(v1 - 104) = v3;
    operator delete(v3);
  }

  kaldi::Matrix<float>::~Matrix(v1 - 88);
  _Unwind_Resume(a1);
}

uint64_t kaldi::VectorwiseQuantizedMatrix<signed char>::Write(unsigned int *a1, void *a2, int a3)
{
  v6 = *(a1 + 2);
  if (!v6)
  {
    v6 = *(a1 + 1);
  }

  kaldi::SubMatrix<float>::SubMatrix(v9, v6, 1, *a1, *a1);
  kaldi::MatrixBase<float>::Write(v9, a2, a3, a3);
  v7 = *(a1 + 4);
  if (!v7)
  {
    v7 = *(a1 + 3);
  }

  kaldi::WriteIntegerByteArray<signed char>(a2, a3, a3, a1[1] * *a1, v7);
  return kaldi::CuMatrixBase<float>::~CuMatrixBase(v9);
}

float kaldi::VectorwiseQuantizedMatrix<signed char>::Row@<S0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 32);
  if (!v5)
  {
    v5 = *(a1 + 24);
  }

  v6 = *(a1 + 16);
  if (!v6)
  {
    v6 = *(a1 + 8);
  }

  return kaldi::QuantizedSubVector<signed char>::QuantizedSubVector(a3, v5 + *(a1 + 4) * a2, *(a1 + 4), *(v6 + 4 * a2));
}

uint64_t kaldi::VectorwiseQuantizedMatrix<signed char>::AddMatMat(uint64_t a1, uint64_t a2, unsigned int *a3, float a4)
{
  v8 = kaldi::MatrixBase<float>::NumCols(a3);
  kaldi::Matrix<float>::Matrix(v17, a3, 112);
  if (v8)
  {
    for (i = 0; i != v8; ++i)
    {
      kaldi::MatrixBase<float>::Row(v17, i, v10, v16);
      kaldi::VectorwiseQuantizedMatrix<signed char>::Row(a1, i, v15);
      kaldi::QuantizedVectorBase<signed char>::AddMatVec(v15, a2, v16, a4, v12, v13);
    }
  }

  kaldi::MatrixBase<float>::CopyFromMat<float>(a3, v17, 112, v9, v10);
  return kaldi::Matrix<float>::~Matrix(v17);
}

void sub_1C30516B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  kaldi::Matrix<float>::~Matrix(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::VectorwiseQuantizedMatrix<short>::VectorwiseQuantizedMatrix(uint64_t result, void *a2)
{
  *result = *a2;
  *(result + 8) = 0u;
  *(result + 24) = 0u;
  v2 = a2[2];
  if (!v2)
  {
    operator new[]();
  }

  *(result + 16) = v2;
  v3 = a2[4];
  if (!v3)
  {
    *result;
    operator new[]();
  }

  *(result + 32) = v3;
  return result;
}

void sub_1C30517F8(_Unwind_Exception *a1)
{
  v4 = *(v1 + 24);
  *(v1 + 24) = 0;
  if (v4)
  {
    MEMORY[0x1C692AE10](v4, 0x1000C40BDFB0063);
  }

  kaldi::VectorwiseQuantizedMatrix<signed char>::VectorwiseQuantizedMatrix(v2);
  _Unwind_Resume(a1);
}

uint64_t kaldi::VectorwiseQuantizedMatrix<short>::Read(unsigned int *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = kaldi::Matrix<float>::Matrix(v17, 1, *a1, 0, 0);
  kaldi::Matrix<float>::Read(v8, a2, a3, 0, a4);
  if (v18 != 1)
  {
    *(a1 + 2) = 0;
    *a1;
    operator new[]();
  }

  v9 = v17[0];
  v10 = *(a1 + 1);
  *(a1 + 1) = 0;
  *(a1 + 2) = v9;
  if (v10)
  {
    MEMORY[0x1C692AE10](v10, 0x1000C4052888210);
  }

  v14 = 0;
  v15 = 0;
  v16 = 0;
  kaldi::ReadIntegerVector<short>(a2, a3, &v14, a4, a1 + 32, 0, 0);
  if (!*(a1 + 4))
  {
    if ((v15 - v14) >> 1 == a1[1] * *a1)
    {
      operator new[]();
    }

    kaldi::KaldiErrorMessage::KaldiErrorMessage(v13, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-quantized-matrix.cc", 619);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "Quantized matrix improperly serialized", 38);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v13);
  }

  v11 = *(a1 + 3);
  *(a1 + 3) = 0;
  if (v11)
  {
    MEMORY[0x1C692AE10](v11, 0x1000C40BDFB0063);
  }

  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }

  return kaldi::Matrix<float>::~Matrix(v17);
}

void sub_1C3051A58(_Unwind_Exception *a1)
{
  v3 = *(v1 - 112);
  if (v3)
  {
    *(v1 - 104) = v3;
    operator delete(v3);
  }

  kaldi::Matrix<float>::~Matrix(v1 - 88);
  _Unwind_Resume(a1);
}

uint64_t kaldi::VectorwiseQuantizedMatrix<short>::Write(unsigned int *a1, void *a2, int a3)
{
  v6 = *(a1 + 2);
  if (!v6)
  {
    v6 = *(a1 + 1);
  }

  kaldi::SubMatrix<float>::SubMatrix(v9, v6, 1, *a1, *a1);
  kaldi::MatrixBase<float>::Write(v9, a2, a3, a3);
  v7 = *(a1 + 4);
  if (!v7)
  {
    v7 = *(a1 + 3);
  }

  kaldi::WriteIntegerByteArray<short>(a2, a3, a3, a1[1] * *a1, v7);
  return kaldi::CuMatrixBase<float>::~CuMatrixBase(v9);
}

float kaldi::VectorwiseQuantizedMatrix<short>::Row@<S0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 32);
  if (!v5)
  {
    v5 = *(a1 + 24);
  }

  v6 = *(a1 + 16);
  if (!v6)
  {
    v6 = *(a1 + 8);
  }

  return kaldi::QuantizedSubVector<signed char>::QuantizedSubVector(a3, v5 + 2 * *(a1 + 4) * a2, *(a1 + 4), *(v6 + 4 * a2));
}

uint64_t kaldi::VectorwiseQuantizedMatrix<short>::AddMatMat(uint64_t a1, uint64_t a2, unsigned int *a3, float a4)
{
  v8 = kaldi::MatrixBase<float>::NumCols(a3);
  kaldi::Matrix<float>::Matrix(v17, a3, 112);
  if (v8)
  {
    for (i = 0; i != v8; ++i)
    {
      kaldi::MatrixBase<float>::Row(v17, i, v10, v16);
      kaldi::VectorwiseQuantizedMatrix<short>::Row(a1, i, v15);
      kaldi::QuantizedVectorBase<short>::AddMatVec(v15, a2, v16, a4, v12, v13);
    }
  }

  kaldi::MatrixBase<float>::CopyFromMat<float>(a3, v17, 112, v9, v10);
  return kaldi::Matrix<float>::~Matrix(v17);
}

void sub_1C3051C3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  kaldi::Matrix<float>::~Matrix(va);
  _Unwind_Resume(a1);
}

void std::vector<signed char>::shrink_to_fit(char **a1)
{
  v1 = a1[1];
  v2 = *a1;
  v3 = a1[2] - *a1;
  v4 = (v1 - *a1);
  if (v3 > v4)
  {
    if (v1 != v2)
    {
      v6 = (v1 - *a1);
      operator new();
    }

    if (v4 < v3)
    {
      v7 = (v1 - *a1);
      v8 = a1[1];
      v9 = &v4[v2 - v8];
      memcpy(v9, v2, v8 - v2);
      *a1 = v9;
      a1[1] = v7;
      a1[2] = v7;
      if (v2)
      {

        operator delete(v2);
      }
    }
  }
}

void std::vector<signed char>::__append(char **a1, size_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v4 - v5 >= a2)
  {
    if (a2)
    {
      bzero(a1[1], a2);
      v5 += a2;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = *a1;
    v7 = (v5 - *a1);
    v8 = &v7[a2];
    if (&v7[a2] < 0)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = v5 - *a1;
    bzero(v7, a2);
    memcpy(&v7[v6 - v5], v6, v11);
    *a1 = &v7[v6 - v5];
    a1[1] = &v7[a2];
    a1[2] = 0;
    if (v6)
    {

      operator delete(v6);
    }
  }
}

void *std::vector<signed char>::__assign_with_size[abi:ne200100]<signed char *,signed char *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (v7 - *result < a4)
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

    if ((a4 & 0x8000000000000000) == 0)
    {
      v9 = 2 * v7;
      if (2 * v7 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<signed char>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (v11 - v8 >= a4)
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

void std::vector<signed char>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

uint64_t kaldi::WriteIntegerByteArray<signed char>(void *a1, int a2, int a3, uint64_t a4, char *a5)
{
  if (a2)
  {
    v17 = 1;
    std::ostream::write();
    if (a4 != a4)
    {
      kaldi::KaldiAssertFailure_("WriteIntegerByteArray", "../engine/common/libquasar/libkaldi/src/base/io-funcs-inl.h", 0xD0, "static_cast<size_t>(vecsz) == count", v9);
    }

    if (a3)
    {
      v10 = -a4;
    }

    else
    {
      v10 = a4;
    }

    v16 = v10;
    result = std::ostream::write();
    if (a4)
    {
      if (a3 && !fst::AlignOutput(a1))
      {
        kaldi::KaldiErrorMessage::KaldiErrorMessage(v15, "WriteIntegerByteArray", "../engine/common/libquasar/libkaldi/src/base/io-funcs-inl.h", 214);
        std::operator<<[abi:ne200100]<std::char_traits<char>>(v15, "Could not align output");
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v15);
      }

      result = std::ostream::write();
    }
  }

  else
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "[ ", 2);
    for (; a4; --a4)
    {
      v12 = *a5++;
      v13 = MEMORY[0x1C692A990](a1, v12);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " ", 1);
    }

    result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "]\n", 2);
  }

  if ((*(a1 + *(*a1 - 24) + 32) & 5) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Write failure in WriteIntegerType.");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return result;
}

void std::vector<short>::shrink_to_fit(const void **a1)
{
  v1 = a1[1];
  v2 = *a1;
  v3 = a1[2] - *a1;
  v4 = v1 - *a1;
  if (v3 > v4)
  {
    if (v1 != v2)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<short>>(a1, v4 >> 1);
    }

    v6 = 0;
    if (v3 >> 1)
    {
      v7 = 2 * (v4 >> 1);
      v8 = a1[1] - v2;
      v9 = v7 - v8;
      memcpy((v7 - v8), v2, v8);
      v6 = *a1;
      *a1 = v9;
      a1[1] = v7;
      a1[2] = 0;
    }

    if (v6)
    {

      operator delete(v6);
    }
  }
}

void std::vector<short>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 1;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 2 * a2;
    }
  }

  else
  {
    std::vector<short>::__append(a1, a2 - v2);
  }
}

void std::vector<short>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 1)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 2 * a2);
      v5 += 2 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 1);
    if (v8 < 0)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (v9 > v8)
    {
      v8 = v9;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<short>>(a1, v10);
    }

    v11 = (2 * (v7 >> 1));
    bzero(v11, 2 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[2 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

uint64_t kaldi::WriteIntegerByteArray<short>(void *a1, int a2, int a3, uint64_t a4, __int16 *a5)
{
  if (a2)
  {
    v17 = 2;
    std::ostream::write();
    if (a4 != a4)
    {
      kaldi::KaldiAssertFailure_("WriteIntegerByteArray", "../engine/common/libquasar/libkaldi/src/base/io-funcs-inl.h", 0xD0, "static_cast<size_t>(vecsz) == count", v9);
    }

    if (a3)
    {
      v10 = -a4;
    }

    else
    {
      v10 = a4;
    }

    v16 = v10;
    result = std::ostream::write();
    if (a4)
    {
      if (a3 && !fst::AlignOutput(a1))
      {
        kaldi::KaldiErrorMessage::KaldiErrorMessage(v15, "WriteIntegerByteArray", "../engine/common/libquasar/libkaldi/src/base/io-funcs-inl.h", 214);
        std::operator<<[abi:ne200100]<std::char_traits<char>>(v15, "Could not align output");
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v15);
      }

      result = std::ostream::write();
    }
  }

  else
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "[ ", 2);
    for (; a4; --a4)
    {
      v12 = *a5++;
      v13 = MEMORY[0x1C692A990](a1, v12);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " ", 1);
    }

    result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "]\n", 2);
  }

  if ((*(a1 + *(*a1 - 24) + 32) & 5) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Write failure in WriteIntegerType.");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return result;
}

uint64_t kaldi::VectorwiseQuantizedMatrix<signed char>::VectorwiseQuantizedMatrix(uint64_t *a1)
{
  result = *a1;
  *a1 = 0;
  if (result)
  {
    OUTLINED_FUNCTION_0_0();
  }

  return result;
}

float kaldi::QuantizedSubVector<signed char>::QuantizedSubVector(uint64_t a1, uint64_t a2, int a3, float a4)
{
  *(a1 + 8) = a3;
  *a1 = a2;
  result = 1.0 / a4;
  *(a1 + 12) = result;
  return result;
}

void kaldi::QuantizedVectorBase<signed char>::AddMatVec(uint64_t a1, uint64_t a2, uint64_t a3, float a4, uint64_t a5, const char *a6)
{
  if (a4 != 1.0)
  {
    kaldi::VectorBase<float>::Scale(a3);
  }

  v38 = *(a3 + 8);
  v9 = 0;
  if ((v38 & 0xFFFFFFFFFFFFFFFCLL) != 0)
  {
    do
    {
      if (*(a2 + 12) <= v9)
      {
        kaldi::KaldiAssertFailure_("RowData", "../engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.h", 0xC4, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", a6);
      }

      v10 = (*a2 + 4 * *(a2 + 16) * v9);
      v11 = kaldi::MatrixBase<float>::Stride(a2);
      v12 = *a1;
      v13 = *(a1 + 8);
      v14 = 0uLL;
      v15 = 0;
      v16 = v13 & 0xFFFFFFFFFFFFFFF8;
      if ((v13 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v17 = 0uLL;
        v18 = 0uLL;
        v19 = 0uLL;
        v20 = 0uLL;
        v21 = 0uLL;
        v22 = 0uLL;
        v23 = 0uLL;
        v24 = 0uLL;
        do
        {
          v25 = *v12->i8;
          v12 = (v12 + 8);
          v26 = vcvtq_f32_s32(vmovl_s16(vshr_n_s16(vshl_n_s16(vzip1_s8(v25, 0), 8uLL), 8uLL)));
          v27 = vcvtq_f32_s32(vmovl_s16(vshr_n_s16(vshl_n_s16(vzip2_s8(v25, 0), 8uLL), 8uLL)));
          v24 = vmlaq_f32(v24, v27, v10[1]);
          v23 = vmlaq_f32(v23, v26, *v10);
          v22 = vmlaq_f32(v22, v27, *(v10 + 4 * v11 + 16));
          v21 = vmlaq_f32(v21, v26, *(v10 + 4 * v11));
          v20 = vmlaq_f32(v20, v27, *(v10 + 8 * v11 + 16));
          v19 = vmlaq_f32(v19, v26, *(v10 + 8 * v11));
          v18 = vmlaq_f32(v18, v27, *(v10 + 12 * v11 + 16));
          v17 = vmlaq_f32(v17, v26, *(v10 + 12 * v11));
          v10 += 2;
          v15 += 8;
        }

        while (v15 < v16);
        v15 = ((v16 - 1) & 0xFFFFFFFFFFFFFFF8) + 8;
      }

      else
      {
        v23 = 0uLL;
        v24 = 0uLL;
        v21 = 0uLL;
        v22 = 0uLL;
        v19 = 0uLL;
        v20 = 0uLL;
        v17 = 0uLL;
        v18 = 0uLL;
      }

      v28 = 0;
      v29 = (*a3 + 4 * v9);
      v30 = *(a1 + 12);
      do
      {
        v42[0] = v23;
        v42[1] = v24;
        v31 = 4 * (v28 & 7);
        v41[0] = v21;
        v41[1] = v22;
        v40[0] = v19;
        v40[1] = v20;
        v39[0] = v17;
        v39[1] = v18;
        v32.i32[0] = *(v42 + v31);
        v32.i32[1] = *(v41 + v31);
        v32.i32[2] = *(v40 + v31);
        v32.i32[3] = *(v39 + v31);
        v14 = vaddq_f32(v14, v32);
        ++v28;
      }

      while (v28 != 8);
      v33 = v13 > v15;
      v34 = v13 - v15;
      if (v33)
      {
        do
        {
          v35.i32[0] = v10->i32[0];
          v36 = v12->i8[0];
          v12 = (v12 + 1);
          v35.i32[1] = v10->i32[v11];
          v35.i32[2] = v10->i32[2 * v11];
          v35.i32[3] = v10->i32[3 * v11];
          v14 = vmlaq_n_f32(v14, v35, v36);
          v10 = (v10 + 4);
          --v34;
        }

        while (v34);
      }

      *v29 = vmlaq_n_f32(*v29, v14, v30);
      v9 += 4;
    }

    while (v9 < (v38 & 0xFFFFFFFFFFFFFFFCLL));
  }

  if (v9 < v38)
  {
    v37 = 4 * v9;
    do
    {
      kaldi::MatrixBase<float>::Row(a2, v9, a6, &v43);
      kaldi::VecVecOne<signed char>(v43, *a1, (*a3 + v37), *(a1 + 8), *(a1 + 12));
      ++v9;
      v37 += 4;
    }

    while (v38 != v9);
  }
}

float kaldi::VecVecOne<signed char>(float32x4_t *a1, int8x16_t *a2, float *a3, unint64_t a4, float a5)
{
  v5 = a4 & 0xFFFFFFFFFFFFFFF0;
  if ((a4 & 0xFFFFFFFFFFFFFFF0) != 0)
  {
    v6 = 0;
    v7 = 0uLL;
    v8 = 0uLL;
    v9 = 0uLL;
    v10 = 0uLL;
    do
    {
      v11 = *a2++;
      v12 = vmovl_s8(*v11.i8);
      v13 = vmovl_high_s8(v11);
      v7 = vmlaq_f32(v7, vcvtq_f32_s32(vmovl_s16(*v12.i8)), *a1);
      v8 = vmlaq_f32(v8, vcvtq_f32_s32(vmovl_high_s16(v12)), a1[1]);
      v9 = vmlaq_f32(v9, vcvtq_f32_s32(vmovl_s16(*v13.i8)), a1[2]);
      v10 = vmlaq_f32(v10, vcvtq_f32_s32(vmovl_high_s16(v13)), a1[3]);
      a1 += 4;
      v6 += 16;
    }

    while (v6 < v5);
    v5 = ((v5 - 1) & 0xFFFFFFFFFFFFFFF0) + 16;
    v14 = vaddq_f32(vaddq_f32(v10, v9), vaddq_f32(v8, v7));
  }

  else
  {
    v14 = 0uLL;
  }

  v15 = vaddv_f32(*&vpaddq_f32(v14, v14));
  v16 = a4 >= v5;
  v17 = a4 - v5;
  if (v17 != 0 && v16)
  {
    do
    {
      v18 = a1->f32[0];
      a1 = (a1 + 4);
      v19 = v18;
      v20 = a2->i8[0];
      a2 = (a2 + 1);
      v15 = v15 + (v19 * v20);
      --v17;
    }

    while (v17);
  }

  result = *a3 + (v15 * a5);
  *a3 = result;
  return result;
}

float kaldi::QuantizedVectorBase<signed char>::VecVec(uint64_t a1, float32x4_t **a2)
{
  v3 = 0.0;
  kaldi::VecVecOne<signed char>(*a2, *a1, &v3, *(a1 + 8), *(a1 + 12));
  return v3;
}

void kaldi::QuantizedVectorBase<short>::AddMatVec(uint64_t a1, uint64_t a2, uint64_t a3, float a4, uint64_t a5, const char *a6)
{
  if (a4 != 1.0)
  {
    kaldi::VectorBase<float>::Scale(a3);
  }

  v9 = *(a3 + 8);
  v10 = 0;
  if ((v9 & 0xFFFFFFFFFFFFFFFCLL) != 0)
  {
    do
    {
      if (*(a2 + 12) <= v10)
      {
        kaldi::KaldiAssertFailure_("RowData", "../engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.h", 0xC4, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", a6);
      }

      v11 = (*a2 + 4 * *(a2 + 16) * v10);
      v12 = kaldi::MatrixBase<float>::Stride(a2);
      v13 = *a1;
      v14 = *(a1 + 8);
      v15 = 0;
      v16 = v14 & 0xFFFFFFFFFFFFFFF8;
      if ((v14 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v17 = v12;
        v18 = 8 * v12;
        v19 = 12 * v12;
        v20 = 4 * v12;
        v21 = 0uLL;
        v22 = 0uLL;
        v23 = 0uLL;
        v24 = 0uLL;
        do
        {
          v25 = (v11 + v20);
          v26 = (v11 + v19);
          v27 = *v13++;
          v28 = (v11 + v18);
          v29 = vcvtq_f32_s32(vmovl_s16(*v27.i8));
          v30 = vcvtq_f32_s32(vmovl_high_s16(v27));
          v31 = *v11;
          v32 = *(v11 + 1);
          v11 += 2;
          v21 = vmlaq_f32(vmlaq_f32(v21, v29, v31), v30, v32);
          v22 = vmlaq_f32(vmlaq_f32(v22, v29, *v25), v30, v25[1]);
          v23 = vmlaq_f32(vmlaq_f32(v23, v29, *v28), v30, v28[1]);
          v24 = vmlaq_f32(vmlaq_f32(v24, v29, *v26), v30, v26[1]);
          v15 += 8;
        }

        while (v15 < v16);
        v15 = ((v16 - 1) & 0xFFFFFFFFFFFFFFF8) + 8;
        v33 = v11 + v17;
        v34 = (v11 + v18);
        v35 = (v11 + v19);
      }

      else
      {
        v33 = v11 + v12;
        v34 = v11 + 2 * v12;
        v24 = 0uLL;
        v23 = 0uLL;
        v22 = 0uLL;
        v21 = 0uLL;
        v35 = v11 + 3 * v12;
      }

      v36 = vzip1q_s32(v21, v22);
      v37 = vzip2q_s32(v21, v22);
      v38 = vzip1q_s32(v23, v24);
      v39 = vzip2q_s32(v23, v24);
      v40 = vaddq_f32(vaddq_f32(vzip1q_s32(v36, v38), vzip2q_s32(v36, v38)), vaddq_f32(vzip1q_s32(v37, v39), vzip2q_s32(v37, v39)));
      v41 = vuzp1q_s32(v40, vrev64q_s32(v40));
      v42 = v14 > v15;
      v43 = v14 - v15;
      if (v42)
      {
        do
        {
          v45 = v13->i16[0];
          v13 = (v13 + 2);
          v44 = v45;
          v46 = *v11;
          v11 = (v11 + 4);
          v47.i32[0] = v46;
          v48 = *v35++;
          v47.i32[1] = *v33++;
          v47.i32[2] = *v34++;
          v47.i32[3] = v48;
          v41 = vmlaq_n_f32(v41, v47, v44);
          --v43;
        }

        while (v43);
      }

      *(*a3 + 4 * v10) = vmlaq_n_f32(*(*a3 + 4 * v10), v41, *(a1 + 12));
      v10 += 4;
    }

    while (v10 < (v9 & 0xFFFFFFFFFFFFFFFCLL));
  }

  if (v10 < v9)
  {
    v49 = 4 * v10;
    do
    {
      kaldi::MatrixBase<float>::Row(a2, v10, a6, v50);
      kaldi::VecVecOne<short>(v50[0], *a1, (*a3 + v49), *(a1 + 8), *(a1 + 12));
      ++v10;
      v49 += 4;
    }

    while (v9 != v10);
  }
}

float kaldi::VecVecOne<short>(_OWORD *a1, int16x8_t *a2, float *a3, unint64_t a4, float a5)
{
  v5 = a4 & 0xFFFFFFFFFFFFFFF8;
  if ((a4 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v6 = 0;
    v7 = 0uLL;
    do
    {
      v8 = *a1;
      v9 = *(a1 + 1);
      a1 += 2;
      v10 = *a2++;
      v7 = vmlaq_f32(vmlaq_f32(v7, vcvtq_f32_s32(vmovl_s16(*v10.i8)), v8), vcvtq_f32_s32(vmovl_high_s16(v10)), v9);
      v6 += 8;
    }

    while (v6 < v5);
    v5 = ((v5 - 1) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  else
  {
    v7 = 0uLL;
  }

  v11 = v7.f32[3] + (v7.f32[2] + vaddv_f32(*v7.f32));
  v12 = a4 >= v5;
  v13 = a4 - v5;
  if (v13 != 0 && v12)
  {
    do
    {
      v14 = *a1;
      a1 = (a1 + 4);
      v15 = v14;
      v16 = a2->i16[0];
      a2 = (a2 + 2);
      v11 = v11 + (v15 * v16);
      --v13;
    }

    while (v13);
  }

  result = *a3 + (v11 * a5);
  *a3 = result;
  return result;
}

float kaldi::QuantizedVectorBase<short>::VecVec(uint64_t a1, _OWORD **a2)
{
  v3 = 0.0;
  kaldi::VecVecOne<short>(*a2, *a1, &v3, *(a1 + 8), *(a1 + 12));
  return v3;
}

float kaldi::VecVec<signed char>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(a1 + 8) != *(a2 + 8))
  {
    kaldi::KaldiAssertFailure_("VecVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.cc", 0x5C, "a.Dim() == b.Dim()", a5);
  }

  return kaldi::QuantizedVectorBase<signed char>::VecVec(a2, a1);
}

float kaldi::VecVec<short>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(a1 + 8) != *(a2 + 8))
  {
    kaldi::KaldiAssertFailure_("VecVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.cc", 0x5C, "a.Dim() == b.Dim()", a5);
  }

  return kaldi::QuantizedVectorBase<short>::VecVec(a2, a1);
}

float kaldi::VectorBase<float>::CopyFromVec<double>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *(a1 + 8);
  if (v5 != *(a2 + 8))
  {
    kaldi::KaldiAssertFailure_("CopyFromVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.cc", 0x13B, "dim_ == other.Dim()", a5);
  }

  if (v5 >= 1)
  {
    v6 = *a1;
    v7 = *a2;
    do
    {
      v8 = *v7++;
      result = v8;
      *v6++ = result;
      --v5;
    }

    while (v5);
  }

  return result;
}

void *kaldi::VectorBase<double>::CopyFromVec(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *(a1 + 8);
  if (v6 != *(a2 + 8))
  {
    kaldi::KaldiAssertFailure_("CopyFromVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.cc", 0x115, "Dim() == v.Dim()", a5);
  }

  result = *a1;
  v8 = *a2;
  if (result != v8)
  {

    return memcpy(result, v8, 8 * v6);
  }

  return result;
}

double kaldi::VectorBase<double>::CopyFromVec<float>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *(a1 + 8);
  if (v5 != *(a2 + 8))
  {
    kaldi::KaldiAssertFailure_("CopyFromVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.cc", 0x13B, "dim_ == other.Dim()", a5);
  }

  if (v5 >= 1)
  {
    v6 = *a1;
    v7 = *a2;
    do
    {
      v8 = *v7++;
      result = v8;
      *v6++ = v8;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t kaldi::VectorBase<float>::CopyRowsFromMat<signed char>(uint64_t *a1, uint64_t a2)
{
  v4 = *(a1 + 2);
  v5 = kaldi::QuantizedMatrixBase<short>::NumCols(a2);
  if (v4 != kaldi::QuantizedMatrixBase<short>::NumRows(a2) * v5)
  {
    kaldi::KaldiAssertFailure_("CopyRowsFromMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.cc", 0x1B1, "dim_ == mat.NumCols() * mat.NumRows()", v6);
  }

  v7 = *a1;
  v8 = kaldi::QuantizedMatrixBase<short>::NumCols(a2);
  result = kaldi::QuantizedMatrixBase<short>::NumRows(a2);
  if (result >= 1)
  {
    v10 = result;
    for (i = 0; i != v10; ++i)
    {
      if (v8 >= 1)
      {
        for (j = 0; j != v8; ++j)
        {
          v13 = kaldi::QuantizedMatrixBase<signed char>::Data(a2);
          result = kaldi::QuantizedMatrixBase<short>::NumCols(a2);
          *(v7 + 4 * j) = *(v13 + i * result + j) / *(a2 + 12);
        }
      }

      v7 += 4 * v8;
    }
  }

  return result;
}

uint64_t kaldi::VectorBase<float>::CopyRowsFromMat<short>(uint64_t *a1, uint64_t a2)
{
  v4 = *(a1 + 2);
  v5 = kaldi::QuantizedMatrixBase<short>::NumCols(a2);
  if (v4 != kaldi::QuantizedMatrixBase<short>::NumRows(a2) * v5)
  {
    kaldi::KaldiAssertFailure_("CopyRowsFromMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.cc", 0x1B1, "dim_ == mat.NumCols() * mat.NumRows()", v6);
  }

  v7 = *a1;
  v8 = kaldi::QuantizedMatrixBase<short>::NumCols(a2);
  result = kaldi::QuantizedMatrixBase<short>::NumRows(a2);
  if (result >= 1)
  {
    v10 = result;
    for (i = 0; i != v10; ++i)
    {
      if (v8 >= 1)
      {
        for (j = 0; j != v8; ++j)
        {
          v13 = kaldi::QuantizedMatrixBase<signed char>::Data(a2);
          result = kaldi::QuantizedMatrixBase<short>::NumCols(a2);
          *(v7 + 4 * j) = *(v13 + 2 * i * result + 2 * j) / *(a2 + 12);
        }
      }

      v7 += 4 * v8;
    }
  }

  return result;
}

float kaldi::VectorBase<float>::CopyColFromMat<float>(uint64_t *a1, uint64_t a2, int a3)
{
  if (kaldi::MatrixBase<float>::NumCols(a2) <= a3)
  {
    kaldi::KaldiAssertFailure_("CopyColFromMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.cc", 0x2FF, "col < mat.NumCols()", v6);
  }

  v7 = *(a1 + 2);
  if (v7 != kaldi::MatrixBase<float>::NumRows(a2))
  {
    kaldi::KaldiAssertFailure_("CopyColFromMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.cc", 0x300, "dim_ == mat.NumRows()", v8);
  }

  v10 = *(a1 + 2);
  if (v10 >= 1)
  {
    v11 = 0;
    v12 = (*a2 + 4 * a3);
    v13 = *a1;
    v14 = 4 * *(a2 + 16);
    do
    {
      result = *v12;
      *(v13 + 4 * v11++) = *v12;
      v12 = (v12 + v14);
    }

    while (v10 != v11);
  }

  return result;
}

uint64_t kaldi::VectorBase<float>::AddMatVec(uint64_t *a1, uint64_t *a2, int a3, uint64_t *a4, const char *a5)
{
  if (a3 == 112)
  {
    if (kaldi::MatrixBase<float>::NumRows(a2) != *(a4 + 2))
    {
      goto LABEL_10;
    }

    v8 = kaldi::MatrixBase<float>::NumCols(a2);
  }

  else
  {
    if (a3 != 111 || kaldi::MatrixBase<float>::NumCols(a2) != *(a4 + 2))
    {
LABEL_10:
      kaldi::KaldiAssertFailure_("AddMatVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.cc", 0x7C, "(trans == kNoTrans && M.NumCols() == v.dim_ && M.NumRows() == dim_) || (trans == kTrans && M.NumRows() == v.dim_ && M.NumCols() == dim_)", a5);
    }

    v8 = kaldi::MatrixBase<float>::NumRows(a2);
  }

  if (v8 != *(a1 + 2))
  {
    goto LABEL_10;
  }

  if (a4 == a1)
  {
    kaldi::KaldiAssertFailure_("AddMatVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.cc", 0x7D, "&v != this", a5);
  }

  kaldi::MatrixBase<float>::NumRows(a2);
  kaldi::MatrixBase<float>::NumCols(a2);
  v9 = *a2;
  kaldi::MatrixBase<float>::Stride(a2);
  v10 = *a4;
  v12 = *a1;
  return cblas_sgemv_NEWLAPACK_ILP64();
}

void kaldi::Vector<float>::Read(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v101 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v8 = *(a1 + 8);
    v91 = 0;
    v92[0].__locale_ = 0;
    v90 = 0;
    kaldi::Vector<float>::Resize(&v90, v8, 0, a4, a5);
    kaldi::Vector<float>::Read(&v90, a2, a3, 0);
    v12 = *(a1 + 8);
    if (!v12)
    {
      kaldi::Vector<float>::Resize(a1, v91, 0, v10, v11);
      v12 = *(a1 + 8);
    }

    if (v12 != v91)
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(&v97, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.cc", 1325);
      v62 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v97, "Vector<Real>::Read, adding but dimensions mismatch ", 51);
      v63 = MEMORY[0x1C692A960](v62, *(a1 + 8));
      v64 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v63, " vs. ", 5);
      MEMORY[0x1C692A960](v64, v91);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v97);
    }

    kaldi::VectorBase<float>::AddVec<float>(a1, &v90, v9, v10, v11);
    if (v90)
    {
      free(v90);
    }

    goto LABEL_123;
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](&v90);
  std::istream::tellg();
  v13 = v100;
  if (a3)
  {
    if (kaldi::Peek(a2, 1) == 68)
    {
      v16 = *(a1 + 8);
      v98 = 0;
      v99 = 0;
      v97 = 0;
      kaldi::Vector<double>::Resize(&v97, v16, 0, v14, v15);
      kaldi::Vector<double>::Read(&v97, a2, 1, 0, v17);
      if (*(a1 + 8) != v98)
      {
        kaldi::Vector<float>::Resize(a1, v98, 0, v19, v20);
      }

      kaldi::VectorBase<float>::CopyFromVec<double>(a1, &v97, v18, v19, v20);
      if (v97)
      {
        free(v97);
      }

      goto LABEL_120;
    }

    v97 = 0;
    v98 = 0;
    v99 = 0;
    kaldi::ReadToken(a2, 1, &v97, v14, v15);
    if (SHIBYTE(v99) < 0)
    {
      if (v98 != 2)
      {
        goto LABEL_136;
      }

      v41 = v97;
    }

    else
    {
      if (SHIBYTE(v99) != 2)
      {
        goto LABEL_136;
      }

      v41 = &v97;
    }

    if (*v41 == 22086)
    {
      LODWORD(v95.__r_.__value_.__l.__data_) = 0;
      kaldi::ReadBasicType<int>(a2, 1, &v95);
      data = v95.__r_.__value_.__l.__data_;
      if (LODWORD(v95.__r_.__value_.__l.__data_) != *(a1 + 8))
      {
        kaldi::Vector<float>::Resize(a1, LODWORD(v95.__r_.__value_.__l.__data_), 0, v43, v44);
        data = v95.__r_.__value_.__l.__data_;
      }

      if (data >= 1)
      {
        v46 = *a1;
        std::istream::read();
      }

      if ((*(a2 + *(*a2 - 24) + 32) & 5) == 0)
      {
        if ((SHIBYTE(v99) & 0x80000000) == 0)
        {
          goto LABEL_120;
        }

        v42 = v97;
        goto LABEL_94;
      }

      v81 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v90, "Error reading vector data (binary mode); truncated stream? (size = ", 67);
      v82 = MEMORY[0x1C692A960](v81, LODWORD(v95.__r_.__value_.__l.__data_));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v82, ")", 1);
LABEL_163:
      v83 = v13;
      if (SHIBYTE(v99) < 0)
      {
        v73 = v97;
LABEL_152:
        operator delete(v73);
      }

LABEL_153:
      kaldi::KaldiErrorMessage::KaldiErrorMessage(&v97, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.cc", 1468);
      v74 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v97, "Failed to read vector from stream.  ", 36);
      std::stringbuf::str();
      if (v89 >= 0)
      {
        p_src = &__src;
      }

      else
      {
        p_src = __src;
      }

      if (v89 >= 0)
      {
        v76 = HIBYTE(v89);
      }

      else
      {
        v76 = v88;
      }

      v77 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v74, p_src, v76);
      v78 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v77, " File position at start is ", 27);
      v79 = MEMORY[0x1C692A960](v78, v83);
      v80 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v79, ", currently ", 12);
      std::istream::tellg();
      MEMORY[0x1C692A9A0](v80, v96);
      if (SHIBYTE(v89) < 0)
      {
        operator delete(__src);
      }

      kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v97);
    }

LABEL_136:
    v65 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v90, ": Expected token ", 17);
    v66 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v65, "FV", 2);
    v67 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v66, ", got ", 6);
    if (v99 >= 0)
    {
      v68 = &v97;
    }

    else
    {
      v68 = v97;
    }

    if (v99 >= 0)
    {
      v69 = HIBYTE(v99);
    }

    else
    {
      v69 = v98;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v67, v68, v69);
    goto LABEL_163;
  }

  memset(&v95, 0, sizeof(v95));
  std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, &v95);
  if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v90, "EOF while trying to read vector.", 32);
LABEL_150:
    v83 = v13;
    if ((SHIBYTE(v95.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_153;
    }

    v73 = v95.__r_.__value_.__r.__words[0];
    goto LABEL_152;
  }

  if (!std::string::compare(&v95, "[]"))
  {
    kaldi::Vector<float>::Resize(a1, 0, 0, v21, v22);
    if ((SHIBYTE(v95.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_120;
    }

    v42 = v95.__r_.__value_.__r.__words[0];
LABEL_94:
    operator delete(v42);
    goto LABEL_120;
  }

  v83 = v13;
  if (std::string::compare(&v95, "["))
  {
    v70 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v90, "Expected [ but got ", 21);
    if ((v95.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v71 = &v95;
    }

    else
    {
      v71 = v95.__r_.__value_.__r.__words[0];
    }

    if ((v95.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v95.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v95.__r_.__value_.__l.__size_;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v70, v71, size);
    goto LABEL_150;
  }

  v23 = a2 + 4;
  v84 = 22;
  v85 = "Failed to read number.";
  __src = 0;
  v88 = 0;
  v89 = 0;
  v24 = MEMORY[0x1E69E9830];
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v25 = std::istream::peek();
          if ((v25 - 48) > 9)
          {
            break;
          }

          LODWORD(v97) = 0;
          MEMORY[0x1C692A870](a2, &v97);
          if ((*(v23 + *(*a2 - 24)) & 5) != 0)
          {
            goto LABEL_97;
          }

          v26 = std::istream::peek();
          if (v26 <= 0x7F)
          {
            if ((*(v24 + 4 * v26 + 60) & 0x4000) != 0)
            {
              goto LABEL_32;
            }
          }

          else if (__maskrune(v26, 0x4000uLL))
          {
            goto LABEL_32;
          }

          if (std::istream::peek() != 93)
          {
            v84 = 33;
            v85 = "Expected whitespace after number.";
            goto LABEL_97;
          }

LABEL_32:
          v28 = v88;
          if (v88 >= v89)
          {
            v30 = __src;
            v31 = v88 - __src;
            v32 = (v88 - __src) >> 2;
            v33 = v32 + 1;
            if ((v32 + 1) >> 62)
            {
              std::vector<int>::__throw_length_error[abi:ne200100]();
            }

            v34 = v89 - __src;
            if ((v89 - __src) >> 1 > v33)
            {
              v33 = v34 >> 1;
            }

            if (v34 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v35 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v35 = v33;
            }

            if (v35)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&__src, v35);
            }

            *(4 * v32) = v97;
            v29 = 4 * v32 + 4;
            memcpy(0, v30, v31);
            v36 = __src;
            __src = 0;
            v88 = v29;
            v89 = 0;
            if (v36)
            {
              operator delete(v36);
            }
          }

          else
          {
            *v88 = v97;
            v29 = (v28 + 4);
          }

          v88 = v29;
        }

        if (v25 > 31)
        {
          break;
        }

        if (v25 > 9)
        {
          if (v25 == 10 || v25 == 13)
          {
            v47 = "Newline found while reading vector (maybe it's a matrix?)";
            v48 = 57;
            goto LABEL_113;
          }

          goto LABEL_57;
        }

        if (v25 != 9)
        {
          if (v25 == -1)
          {
            v47 = "EOF while reading vector data.";
            v48 = 30;
LABEL_113:
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v90, v47, v48);
            goto LABEL_114;
          }

          goto LABEL_57;
        }

LABEL_44:
        std::istream::get();
      }

      if (v25 == 32)
      {
        goto LABEL_44;
      }

      if (v25 != 45)
      {
        break;
      }

      std::istream::get();
      if (std::istream::peek() - 48 > 9)
      {
        std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, &v95);
        if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
        {
          v37 = v95.__r_.__value_.__r.__words[0];
          if (!strcasecmp(v95.__r_.__value_.__l.__data_, "inf"))
          {
            goto LABEL_77;
          }

          v38 = v37;
LABEL_73:
          if (!strcasecmp(v38, "infinity"))
          {
            goto LABEL_77;
          }

          if (strcasecmp(v37, "nan"))
          {
LABEL_124:
            v59 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v90, "Expecting numeric vector data, got ", 35);
            if ((v95.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v60 = &v95;
            }

            else
            {
              v60 = v95.__r_.__value_.__r.__words[0];
            }

            if ((v95.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v61 = HIBYTE(v95.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v61 = v95.__r_.__value_.__l.__size_;
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v59, v60, v61);
            goto LABEL_114;
          }

          LODWORD(v97) = -4194304;
          std::vector<float>::push_back[abi:ne200100](&__src, &v97);
          if (kaldi::g_kaldi_verbose_level >= -1)
          {
            kaldi::KaldiWarnMessage::KaldiWarnMessage(&v97, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.cc", 1421);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v97, "Reading negative NaN value into vector.", 39);
            kaldi::KaldiWarnMessage::~KaldiWarnMessage(&v97);
          }
        }

        else
        {
          if (strcasecmp(&v95, "inf"))
          {
            v37 = &v95;
            v38 = &v95;
            goto LABEL_73;
          }

LABEL_77:
          LODWORD(v97) = -8388608;
          std::vector<float>::push_back[abi:ne200100](&__src, &v97);
          if (kaldi::g_kaldi_verbose_level >= -1)
          {
            kaldi::KaldiWarnMessage::KaldiWarnMessage(&v97, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.cc", 1418);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v97, "Reading negative infinite value into vector.", 44);
            kaldi::KaldiWarnMessage::~KaldiWarnMessage(&v97);
          }
        }
      }

      else
      {
        LODWORD(v97) = 0;
        MEMORY[0x1C692A870](a2, &v97);
        if ((*(v23 + *(*a2 - 24)) & 5) != 0)
        {
          goto LABEL_97;
        }

        v27 = std::istream::peek();
        if (v27 <= 0x7F)
        {
          if ((*(v24 + 4 * v27 + 60) & 0x4000) != 0)
          {
            goto LABEL_70;
          }
        }

        else if (__maskrune(v27, 0x4000uLL))
        {
          goto LABEL_70;
        }

        if (std::istream::peek() != 93)
        {
          v84 = 33;
          v85 = "Expected whitespace after number.";
LABEL_97:
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v90, v85, v84);
LABEL_114:
          v57 = 1;
          goto LABEL_115;
        }

LABEL_70:
        v86 = -*&v97;
        std::vector<float>::push_back[abi:ne200100](&__src, &v86);
      }
    }

    if (v25 == 93)
    {
      break;
    }

LABEL_57:
    std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, &v95);
    if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
    {
      v39 = v95.__r_.__value_.__r.__words[0];
      if (!strcasecmp(v95.__r_.__value_.__l.__data_, "inf"))
      {
        goto LABEL_66;
      }

      v40 = v39;
LABEL_62:
      if (!strcasecmp(v40, "infinity"))
      {
        goto LABEL_66;
      }

      if (strcasecmp(v39, "nan"))
      {
        goto LABEL_124;
      }

      LODWORD(v97) = 2143289344;
      std::vector<float>::push_back[abi:ne200100](&__src, &v97);
      if (kaldi::g_kaldi_verbose_level >= -1)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v97, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.cc", 1458);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v97, "Reading NaN value into vector.", 30);
        kaldi::KaldiWarnMessage::~KaldiWarnMessage(&v97);
      }
    }

    else
    {
      if (strcasecmp(&v95, "inf"))
      {
        v39 = &v95;
        v40 = &v95;
        goto LABEL_62;
      }

LABEL_66:
      LODWORD(v97) = 2139095040;
      std::vector<float>::push_back[abi:ne200100](&__src, &v97);
      if (kaldi::g_kaldi_verbose_level >= -1)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v97, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.cc", 1455);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v97, "Reading infinite value into vector.", 35);
        kaldi::KaldiWarnMessage::~KaldiWarnMessage(&v97);
      }
    }
  }

  std::istream::get();
  kaldi::Vector<float>::Resize(a1, (v88 - __src) >> 2, 0, v49, v50);
  v51 = __src;
  if (v88 != __src)
  {
    v52 = (v88 - __src) >> 2;
    v53 = *a1;
    if (v52 <= 1)
    {
      v52 = 1;
    }

    do
    {
      v54 = *v51++;
      *v53++ = v54;
      --v52;
    }

    while (v52);
  }

  v55 = std::istream::peek();
  if (v55 == 10)
  {
LABEL_105:
    std::istream::get();
  }

  else if (v55 == 13)
  {
    std::istream::get();
    goto LABEL_105;
  }

  if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0 && kaldi::g_kaldi_verbose_level >= -1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v97, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.cc", 1441);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v97, "After end of vector data, read error.", 37);
    kaldi::KaldiWarnMessage::~KaldiWarnMessage(&v97);
  }

  v57 = 0;
LABEL_115:
  if (__src)
  {
    v88 = __src;
    operator delete(__src);
  }

  if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v95.__r_.__value_.__l.__data_);
  }

  if (v57)
  {
    goto LABEL_153;
  }

LABEL_120:
  v90 = *MEMORY[0x1E69E54E8];
  *(&v90 + *(v90 - 3)) = *(MEMORY[0x1E69E54E8] + 24);
  v91 = MEMORY[0x1E69E5548] + 16;
  if (v93 < 0)
  {
    operator delete(v92[7].__locale_);
  }

  v91 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v92);
  std::ostream::~ostream();
  MEMORY[0x1C692AD30](&v94);
LABEL_123:
  v58 = *MEMORY[0x1E69E9840];
}

void sub_1C30540B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  v11 = *(v9 + 136);
  if (v11)
  {
    free(v11);
  }

  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void sub_1C30540CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if ((a72 & 0x80000000) == 0)
  {
    std::ostringstream::~ostringstream(&a17);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1C3054158);
}

void sub_1C30540E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void sub_1C30540F0(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1C3054164);
}

void sub_1C305411C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17)
{
  if (a17)
  {
    free(a17);
  }

  JUMPOUT(0x1C3054164);
}

void sub_1C3054134(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a55 < 0)
  {
    operator delete(a50);
  }

  std::ostringstream::~ostringstream(&a17);
  _Unwind_Resume(a1);
}

uint64_t kaldi::VectorBase<float>::AddVec<float>(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(a1 + 2) != *(a2 + 2))
  {
    kaldi::KaldiAssertFailure_("AddVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.cc", 0x68, "dim_ == v.dim_", a5);
  }

  if (a2 == a1)
  {
    kaldi::KaldiAssertFailure_("AddVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.cc", 0x69, "&v != this", a5);
  }

  v5 = *a2;
  v6 = *a1;

  return cblas_saxpy_NEWLAPACK_ILP64();
}

void kaldi::Vector<double>::Read(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v100 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v8 = *(a1 + 8);
    v90 = 0;
    v91[0].__locale_ = 0;
    v89 = 0;
    kaldi::Vector<double>::Resize(&v89, v8, 0, a4, a5);
    kaldi::Vector<double>::Read(&v89, a2, a3, 0);
    v12 = *(a1 + 8);
    if (!v12)
    {
      kaldi::Vector<double>::Resize(a1, v90, 0, v10, v11);
      v12 = *(a1 + 8);
    }

    if (v12 != v90)
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(&__p, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.cc", 1325);
      v61 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Vector<Real>::Read, adding but dimensions mismatch ", 51);
      v62 = MEMORY[0x1C692A960](v61, *(a1 + 8));
      v63 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, " vs. ", 5);
      MEMORY[0x1C692A960](v63, v90);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
    }

    kaldi::VectorBase<double>::AddVec<double>(a1, &v89, v9, v10, v11);
    if (v89)
    {
      free(v89);
    }

    goto LABEL_123;
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](&v89);
  std::istream::tellg();
  v13 = v99;
  if (a3)
  {
    if (kaldi::Peek(a2, 1) == 70)
    {
      v16 = *(a1 + 8);
      v97 = 0;
      v98 = 0;
      *&__p = 0.0;
      kaldi::Vector<float>::Resize(&__p, v16, 0, v14, v15);
      kaldi::Vector<float>::Read(&__p, a2, 1, 0);
      if (*(a1 + 8) != v97)
      {
        kaldi::Vector<double>::Resize(a1, v97, 0, v18, v19);
      }

      kaldi::VectorBase<double>::CopyFromVec<float>(a1, &__p, v17, v18, v19);
      if (*&__p != 0.0)
      {
        free(__p);
      }

      goto LABEL_120;
    }

    *&__p = 0.0;
    v97 = 0;
    v98 = 0;
    kaldi::ReadToken(a2, 1, &__p, v14, v15);
    if (SHIBYTE(v98) < 0)
    {
      if (v97 != 2)
      {
        goto LABEL_136;
      }

      p_p = __p;
    }

    else
    {
      if (SHIBYTE(v98) != 2)
      {
        goto LABEL_136;
      }

      p_p = &__p;
    }

    if (*p_p == 22084)
    {
      LODWORD(v94.__r_.__value_.__l.__data_) = 0;
      kaldi::ReadBasicType<int>(a2, 1, &v94);
      data = v94.__r_.__value_.__l.__data_;
      if (LODWORD(v94.__r_.__value_.__l.__data_) != *(a1 + 8))
      {
        kaldi::Vector<double>::Resize(a1, LODWORD(v94.__r_.__value_.__l.__data_), 0, v42, v43);
        data = v94.__r_.__value_.__l.__data_;
      }

      if (data >= 1)
      {
        v45 = *a1;
        std::istream::read();
      }

      if ((*(a2 + *(*a2 - 24) + 32) & 5) == 0)
      {
        if ((SHIBYTE(v98) & 0x80000000) == 0)
        {
          goto LABEL_120;
        }

        v41 = __p;
        goto LABEL_94;
      }

      v80 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v89, "Error reading vector data (binary mode); truncated stream? (size = ", 67);
      v81 = MEMORY[0x1C692A960](v80, LODWORD(v94.__r_.__value_.__l.__data_));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v81, ")", 1);
LABEL_163:
      v82 = v13;
      if (SHIBYTE(v98) < 0)
      {
        v72 = __p;
LABEL_152:
        operator delete(v72);
      }

LABEL_153:
      kaldi::KaldiErrorMessage::KaldiErrorMessage(&__p, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.cc", 1468);
      v73 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Failed to read vector from stream.  ", 36);
      std::stringbuf::str();
      if (v88 >= 0)
      {
        p_src = &__src;
      }

      else
      {
        p_src = __src;
      }

      if (v88 >= 0)
      {
        v75 = HIBYTE(v88);
      }

      else
      {
        v75 = v87;
      }

      v76 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v73, p_src, v75);
      v77 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v76, " File position at start is ", 27);
      v78 = MEMORY[0x1C692A960](v77, v82);
      v79 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v78, ", currently ", 12);
      std::istream::tellg();
      MEMORY[0x1C692A9A0](v79, v95);
      if (SHIBYTE(v88) < 0)
      {
        operator delete(__src);
      }

      kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
    }

LABEL_136:
    v64 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v89, ": Expected token ", 17);
    v65 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v64, "DV", 2);
    v66 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v65, ", got ", 6);
    if (v98 >= 0)
    {
      v67 = &__p;
    }

    else
    {
      v67 = __p;
    }

    if (v98 >= 0)
    {
      v68 = HIBYTE(v98);
    }

    else
    {
      v68 = v97;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v66, v67, v68);
    goto LABEL_163;
  }

  memset(&v94, 0, sizeof(v94));
  std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, &v94);
  if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v89, "EOF while trying to read vector.", 32);
LABEL_150:
    v82 = v13;
    if ((SHIBYTE(v94.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_153;
    }

    v72 = v94.__r_.__value_.__r.__words[0];
    goto LABEL_152;
  }

  if (!std::string::compare(&v94, "[]"))
  {
    kaldi::Vector<double>::Resize(a1, 0, 0, v20, v21);
    if ((SHIBYTE(v94.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_120;
    }

    v41 = v94.__r_.__value_.__r.__words[0];
LABEL_94:
    operator delete(v41);
    goto LABEL_120;
  }

  v82 = v13;
  if (std::string::compare(&v94, "["))
  {
    v69 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v89, "Expected [ but got ", 21);
    if ((v94.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v70 = &v94;
    }

    else
    {
      v70 = v94.__r_.__value_.__r.__words[0];
    }

    if ((v94.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v94.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v94.__r_.__value_.__l.__size_;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v69, v70, size);
    goto LABEL_150;
  }

  v22 = a2 + 4;
  v83 = 22;
  v84 = "Failed to read number.";
  __src = 0;
  v87 = 0;
  v88 = 0;
  v23 = MEMORY[0x1E69E9830];
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v24 = std::istream::peek();
          if ((v24 - 48) > 9)
          {
            break;
          }

          *&__p = 0.0;
          MEMORY[0x1C692A860](a2, &__p);
          if ((*(v22 + *(*a2 - 24)) & 5) != 0)
          {
            goto LABEL_97;
          }

          v25 = std::istream::peek();
          if (v25 <= 0x7F)
          {
            if ((*(v23 + 4 * v25 + 60) & 0x4000) != 0)
            {
              goto LABEL_32;
            }
          }

          else if (__maskrune(v25, 0x4000uLL))
          {
            goto LABEL_32;
          }

          if (std::istream::peek() != 93)
          {
            v83 = 33;
            v84 = "Expected whitespace after number.";
            goto LABEL_97;
          }

LABEL_32:
          v27 = v87;
          if (v87 >= v88)
          {
            v29 = __src;
            v30 = v87 - __src;
            v31 = (v87 - __src) >> 3;
            v32 = v31 + 1;
            if ((v31 + 1) >> 61)
            {
              std::vector<int>::__throw_length_error[abi:ne200100]();
            }

            v33 = v88 - __src;
            if ((v88 - __src) >> 2 > v32)
            {
              v32 = v33 >> 2;
            }

            if (v33 >= 0x7FFFFFFFFFFFFFF8)
            {
              v34 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v34 = v32;
            }

            if (v34)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(&__src, v34);
            }

            *(8 * v31) = *&__p;
            v28 = 8 * v31 + 8;
            memcpy(0, v29, v30);
            v35 = __src;
            __src = 0;
            v87 = v28;
            v88 = 0;
            if (v35)
            {
              operator delete(v35);
            }
          }

          else
          {
            *v87 = *&__p;
            v28 = (v27 + 1);
          }

          v87 = v28;
        }

        if (v24 > 31)
        {
          break;
        }

        if (v24 > 9)
        {
          if (v24 == 10 || v24 == 13)
          {
            v46 = "Newline found while reading vector (maybe it's a matrix?)";
            v47 = 57;
            goto LABEL_113;
          }

          goto LABEL_57;
        }

        if (v24 != 9)
        {
          if (v24 == -1)
          {
            v46 = "EOF while reading vector data.";
            v47 = 30;
LABEL_113:
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v89, v46, v47);
            goto LABEL_114;
          }

          goto LABEL_57;
        }

LABEL_44:
        std::istream::get();
      }

      if (v24 == 32)
      {
        goto LABEL_44;
      }

      if (v24 != 45)
      {
        break;
      }

      std::istream::get();
      if (std::istream::peek() - 48 > 9)
      {
        std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, &v94);
        if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
        {
          v36 = v94.__r_.__value_.__r.__words[0];
          if (!strcasecmp(v94.__r_.__value_.__l.__data_, "inf"))
          {
            goto LABEL_77;
          }

          v37 = v36;
LABEL_73:
          if (!strcasecmp(v37, "infinity"))
          {
            goto LABEL_77;
          }

          if (strcasecmp(v36, "nan"))
          {
LABEL_124:
            v58 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v89, "Expecting numeric vector data, got ", 35);
            if ((v94.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v59 = &v94;
            }

            else
            {
              v59 = v94.__r_.__value_.__r.__words[0];
            }

            if ((v94.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v60 = HIBYTE(v94.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v60 = v94.__r_.__value_.__l.__size_;
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, v59, v60);
            goto LABEL_114;
          }

          *&__p = NAN;
          std::vector<double>::push_back[abi:ne200100](&__src, &__p);
          if (kaldi::g_kaldi_verbose_level >= -1)
          {
            kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.cc", 1421);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Reading negative NaN value into vector.", 39);
            kaldi::KaldiWarnMessage::~KaldiWarnMessage(&__p);
          }
        }

        else
        {
          if (strcasecmp(&v94, "inf"))
          {
            v36 = &v94;
            v37 = &v94;
            goto LABEL_73;
          }

LABEL_77:
          *&__p = -INFINITY;
          std::vector<double>::push_back[abi:ne200100](&__src, &__p);
          if (kaldi::g_kaldi_verbose_level >= -1)
          {
            kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.cc", 1418);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Reading negative infinite value into vector.", 44);
            kaldi::KaldiWarnMessage::~KaldiWarnMessage(&__p);
          }
        }
      }

      else
      {
        *&__p = 0.0;
        MEMORY[0x1C692A860](a2, &__p);
        if ((*(v22 + *(*a2 - 24)) & 5) != 0)
        {
          goto LABEL_97;
        }

        v26 = std::istream::peek();
        if (v26 <= 0x7F)
        {
          if ((*(v23 + 4 * v26 + 60) & 0x4000) != 0)
          {
            goto LABEL_70;
          }
        }

        else if (__maskrune(v26, 0x4000uLL))
        {
          goto LABEL_70;
        }

        if (std::istream::peek() != 93)
        {
          v83 = 33;
          v84 = "Expected whitespace after number.";
LABEL_97:
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v89, v84, v83);
LABEL_114:
          v56 = 1;
          goto LABEL_115;
        }

LABEL_70:
        v85 = -*&__p;
        std::vector<double>::push_back[abi:ne200100](&__src, &v85);
      }
    }

    if (v24 == 93)
    {
      break;
    }

LABEL_57:
    std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, &v94);
    if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
    {
      v38 = v94.__r_.__value_.__r.__words[0];
      if (!strcasecmp(v94.__r_.__value_.__l.__data_, "inf"))
      {
        goto LABEL_66;
      }

      v39 = v38;
LABEL_62:
      if (!strcasecmp(v39, "infinity"))
      {
        goto LABEL_66;
      }

      if (strcasecmp(v38, "nan"))
      {
        goto LABEL_124;
      }

      *&__p = NAN;
      std::vector<double>::push_back[abi:ne200100](&__src, &__p);
      if (kaldi::g_kaldi_verbose_level >= -1)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.cc", 1458);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Reading NaN value into vector.", 30);
        kaldi::KaldiWarnMessage::~KaldiWarnMessage(&__p);
      }
    }

    else
    {
      if (strcasecmp(&v94, "inf"))
      {
        v38 = &v94;
        v39 = &v94;
        goto LABEL_62;
      }

LABEL_66:
      *&__p = INFINITY;
      std::vector<double>::push_back[abi:ne200100](&__src, &__p);
      if (kaldi::g_kaldi_verbose_level >= -1)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.cc", 1455);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Reading infinite value into vector.", 35);
        kaldi::KaldiWarnMessage::~KaldiWarnMessage(&__p);
      }
    }
  }

  std::istream::get();
  kaldi::Vector<double>::Resize(a1, (v87 - __src) >> 3, 0, v48, v49);
  v50 = __src;
  if (v87 != __src)
  {
    v51 = (v87 - __src) >> 3;
    v52 = *a1;
    if (v51 <= 1)
    {
      v51 = 1;
    }

    do
    {
      v53 = *v50++;
      *v52++ = v53;
      --v51;
    }

    while (v51);
  }

  v54 = std::istream::peek();
  if (v54 == 10)
  {
LABEL_105:
    std::istream::get();
  }

  else if (v54 == 13)
  {
    std::istream::get();
    goto LABEL_105;
  }

  if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0 && kaldi::g_kaldi_verbose_level >= -1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.cc", 1441);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "After end of vector data, read error.", 37);
    kaldi::KaldiWarnMessage::~KaldiWarnMessage(&__p);
  }

  v56 = 0;
LABEL_115:
  if (__src)
  {
    v87 = __src;
    operator delete(__src);
  }

  if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v94.__r_.__value_.__l.__data_);
  }

  if (v56)
  {
    goto LABEL_153;
  }

LABEL_120:
  v89 = *MEMORY[0x1E69E54E8];
  *(&v89 + *(v89 - 3)) = *(MEMORY[0x1E69E54E8] + 24);
  v90 = MEMORY[0x1E69E5548] + 16;
  if (v92 < 0)
  {
    operator delete(v91[7].__locale_);
  }

  v90 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v91);
  std::ostream::~ostream();
  MEMORY[0x1C692AD30](&v93);
LABEL_123:
  v57 = *MEMORY[0x1E69E9840];
}