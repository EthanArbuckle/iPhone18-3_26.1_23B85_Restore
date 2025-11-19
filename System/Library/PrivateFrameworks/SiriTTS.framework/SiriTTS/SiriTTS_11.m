void sub_1C3054F6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a67)
  {
    free(a67);
  }

  std::ostringstream::~ostringstream(&a17);
  _Unwind_Resume(a1);
}

void sub_1C3054F80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if ((a72 & 0x80000000) == 0)
  {
    std::ostringstream::~ostringstream(&a17);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1C3055000);
}

void sub_1C3054F98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void sub_1C3054FA0(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1C305500CLL);
}

void sub_1C3054FC8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17)
{
  if (a17)
  {
    free(a17);
  }

  JUMPOUT(0x1C305500CLL);
}

void sub_1C3054FE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55)
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

void kaldi::Vector<double>::Resize(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = a2;
  v7 = *a1;
  if (!a3)
  {
    v8 = 1;
    goto LABEL_13;
  }

  if (a3 != 2)
  {
    if (a3 == 3)
    {
      if (!v7)
      {
        kaldi::Vector<double>::Init(a1, a2, a3, a4, a5);
LABEL_25:
        v7 = *a1;
        v14 = 8 * *(a1 + 2);
LABEL_26:

        bzero(v7, v14);
        return;
      }

      if (*(a1 + 2) == a2)
      {
        return;
      }

      v8 = 1;
LABEL_14:
      if (*(a1 + 3) >= a2)
      {
        *(a1 + 2) = a2;
      }

      else if (*(a1 + 2) != a2)
      {
        free(v7);
        *a1 = 0;
        a1[1] = 0;
        kaldi::Vector<double>::Init(a1, v5, v11, v12, v13);
        if ((v8 & 1) == 0)
        {
          return;
        }

        goto LABEL_25;
      }

      if (!v8)
      {
        return;
      }

      v14 = 8 * a2;
      goto LABEL_26;
    }

    v8 = 0;
    if (v7)
    {
      goto LABEL_14;
    }

LABEL_19:
    kaldi::Vector<double>::Init(a1, a2, a3, a4, a5);
    if (!v8)
    {
      return;
    }

    goto LABEL_25;
  }

  v8 = 1;
  if (!a2 || !v7)
  {
LABEL_13:
    if (v7)
    {
      goto LABEL_14;
    }

    goto LABEL_19;
  }

  if (*(a1 + 3) >= a2)
  {
    v15 = *(a1 + 2);
    if (a2 > v15)
    {
      bzero(&v7[8 * v15], 8 * (a2 - v15));
    }

    *(a1 + 2) = v5;
  }

  else
  {
    __dst = 0;
    v20 = 0;
    v21 = 0;
    kaldi::Vector<double>::Resize(&__dst, a2, 1);
    v9 = *(a1 + 2);
    v10 = *a1;
    if (v9 >= v5)
    {
      memcpy(__dst, v10, 8 * v5);
    }

    else
    {
      memcpy(__dst, v10, 8 * v9);
      bzero(__dst + 8 * *(a1 + 2), 8 * (v5 - *(a1 + 2)));
    }

    v16 = __dst;
    __dst = *a1;
    v17 = __dst;
    *a1 = v16;
    v18 = v20;
    v20 = a1[1];
    a1[1] = v18;
    if (v17)
    {
      free(v17);
    }
  }
}

uint64_t kaldi::VectorBase<double>::AddVec<double>(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(a1 + 2) != *(a2 + 2))
  {
    kaldi::KaldiAssertFailure_("AddVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.cc", 0x70, "dim_ == v.dim_", a5);
  }

  if (a2 == a1)
  {
    kaldi::KaldiAssertFailure_("AddVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.cc", 0x71, "&v != this", a5);
  }

  v5 = *a2;
  v6 = *a1;

  return cblas_daxpy_NEWLAPACK_ILP64();
}

void **kaldi::Vector<double>::Init(void **result, int a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (a2 < 0)
  {
    kaldi::KaldiAssertFailure_("Init", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.cc", 0xC6, "dim >= 0", a5);
  }

  v6 = result;
  if (a2)
  {
    memptr = 0;
    v7 = 8 * a2;
    result = malloc_type_posix_memalign(&memptr, 0x10uLL, 8 * a2, 0x47F99594uLL);
    if (result || !memptr)
    {
      if (v7 < 0 && kaldi::g_kaldi_verbose_level >= -1)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v11, "Init", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.cc", 217);
        v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "Negative dimension: size=", 25);
        MEMORY[0x1C692A960](v8, (8 * a2));
        kaldi::KaldiWarnMessage::~KaldiWarnMessage(v11);
      }

      exception = __cxa_allocate_exception(8uLL);
      v10 = std::bad_alloc::bad_alloc(exception);
      __cxa_throw(v10, MEMORY[0x1E69E5430], MEMORY[0x1E69E5388]);
    }

    *v6 = memptr;
    *(v6 + 2) = a2;
    *(v6 + 3) = a2;
  }

  else
  {
    *result = 0;
    result[1] = 0;
  }

  return result;
}

void sub_1C3055394(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::KaldiWarnMessage::~KaldiWarnMessage(va);
  _Unwind_Resume(a1);
}

unsigned int *kaldi::VectorBase<float>::Set(unsigned int *result, int16x4_t a2)
{
  v2 = result[2];
  if (v2 >= 1)
  {
    v3 = (v2 + 3) & 0xFFFFFFFC;
    v4 = vdupq_n_s64(v2 - 1);
    v5 = xmmword_1C378AEF0;
    v6 = xmmword_1C378AF00;
    v7 = (*result + 8);
    v8 = vdupq_n_s64(4uLL);
    do
    {
      v9 = vmovn_s64(vcgeq_u64(v4, v6));
      if (vuzp1_s16(v9, a2).u8[0])
      {
        *(v7 - 2) = a2.i32[0];
      }

      if (vuzp1_s16(v9, a2).i8[2])
      {
        *(v7 - 1) = a2.i32[0];
      }

      if (vuzp1_s16(a2, vmovn_s64(vcgeq_u64(v4, *&v5))).i32[1])
      {
        *v7 = a2.i32[0];
        v7[1] = a2.i32[0];
      }

      v5 = vaddq_s64(v5, v8);
      v6 = vaddq_s64(v6, v8);
      v7 += 4;
      v3 -= 4;
    }

    while (v3);
  }

  return result;
}

void kaldi::VectorBase<float>::SetRandn(uint64_t a1)
{
  v7 = kaldi::Rand(0);
  if (*(a1 + 8) >= 1)
  {
    v2 = 0;
    do
    {
      v3 = (kaldi::Rand(&v7) + 1.0) / 2147483650.0;
      v4 = sqrtf(logf(v3) * -2.0);
      v5 = (kaldi::Rand(&v7) + 1.0) / 2147483650.0;
      v6 = v5 * 6.28318531;
      *(*a1 + 4 * v2++) = v4 * cosf(v6);
    }

    while (v2 < *(a1 + 8));
  }
}

uint64_t *kaldi::VectorBase<float>::Min(uint64_t *result, double a2)
{
  v2 = *(result + 2);
  if (!v2)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v9, "Min", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.cc", 709);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v9, "Empty vector");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v9);
  }

  v3 = *result;
  if (v2 >= 4)
  {
    LODWORD(v4) = v2 & 0x7FFFFFFC;
    LODWORD(a2) = 2139095040;
    v5 = 4;
    v6 = *result;
    do
    {
      v7 = *v6;
      if (vmaxv_u16(vmovn_s32(vcgtq_f32(vdupq_lane_s32(*&a2, 0), *v6))))
      {
        LODWORD(v8) = HIDWORD(*v6);
        if (v7.f32[0] < v7.f32[1])
        {
          LODWORD(v8) = *v6;
        }

        v7.i32[0] = HIDWORD(*v6);
        if (v7.f32[2] < v7.f32[3])
        {
          v7.i32[0] = DWORD2(*(v6 + 8));
        }

        if (v8 < *&a2)
        {
          *&a2 = v8;
        }

        if (v7.f32[0] < *&a2)
        {
          *&a2 = v7.f32[0];
        }
      }

      v5 += 4;
      v6 += 16;
    }

    while (v5 <= v2);
  }

  else
  {
    LODWORD(v4) = 0;
    LODWORD(a2) = 2139095040;
  }

  if (v4 < v2)
  {
    v4 = v4;
    do
    {
      if (*(v3 + 4 * v4) < *&a2)
      {
        LODWORD(a2) = *(v3 + 4 * v4);
      }

      ++v4;
    }

    while (v2 > v4);
  }

  return result;
}

float kaldi::VectorBase<float>::ReverseCopyFromVec(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *(a1 + 8);
  if (v5 != *(a2 + 8) || (v6 = *a1, *a1 == *a2))
  {
    kaldi::KaldiAssertFailure_("ReverseCopyFromVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.cc", 0x11E, "Dim() == v.Dim() && data_ != v.data_", a5);
  }

  if (v5 >= 1)
  {
    v7 = *a2 - 4;
    v8 = 4 * v5;
    do
    {
      result = *(v7 + v8);
      *v6++ = result;
      v8 -= 4;
    }

    while (v8);
  }

  return result;
}

uint64_t kaldi::VectorBase<float>::ApplyFloor(uint64_t a1, float a2)
{
  v2 = *(a1 + 8);
  if (v2 < 1)
  {
    return 0;
  }

  result = 0;
  v5 = *a1;
  do
  {
    if (*v5 < a2)
    {
      *v5 = a2;
      result = (result + 1);
    }

    ++v5;
    --v2;
  }

  while (v2);
  return result;
}

uint64_t kaldi::VectorBase<float>::ApplyCeiling(uint64_t a1, float a2)
{
  v2 = *(a1 + 8);
  if (v2 < 1)
  {
    return 0;
  }

  result = 0;
  v5 = *a1;
  do
  {
    if (*v5 > a2)
    {
      *v5 = a2;
      result = (result + 1);
    }

    ++v5;
    --v2;
  }

  while (v2);
  return result;
}

uint64_t kaldi::VectorBase<float>::Add(uint64_t result, float a2)
{
  v2 = *(result + 8);
  if (v2 >= 1)
  {
    v3 = *result;
    do
    {
      *v3 = *v3 + a2;
      ++v3;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t kaldi::VectorBase<float>::Sigmoid(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(a1 + 8) != *(a2 + 8))
  {
    kaldi::KaldiAssertFailure_("Sigmoid", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.cc", 0x478, "dim_ == src.dim_", a5);
  }

  kaldi::VectorBase<float>::CopyFromVec(a1, a2, a3, a4, a5);
  v6 = *(a1 + 8);
  v7 = *a1;
  cblas_sscal_NEWLAPACK_ILP64();
  v12 = *(a1 + 8);
  vvtanhf(*a1, *a1, &v12);
  v8 = *a1;
  if (*(a1 + 8) >= 1)
  {
    v9 = *a1;
    v10 = *(a1 + 8);
    do
    {
      *v9 = *v9 + 1.0;
      ++v9;
      --v10;
    }

    while (v10);
  }

  return cblas_sscal_NEWLAPACK_ILP64();
}

void kaldi::VectorBase<float>::Norm(uint64_t a1, float a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6)
{
  if (a2 < 0.0)
  {
    kaldi::KaldiAssertFailure_("Norm", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.cc", 0x258, "p >= 0.0", a6);
  }

  if (a2 == 0.0)
  {
    v7 = *(a1 + 8);
    if (v7 >= 1)
    {
      v8 = *a1;
      v9 = 0.0;
      do
      {
        v10 = *v8++;
        if (v10 != 0.0)
        {
          v9 = v9 + 1.0;
        }

        --v7;
      }

      while (v7);
    }

    return;
  }

  if (a2 == 1.0)
  {
    v12 = *(a1 + 8);
    v13 = *a1;

    MEMORY[0x1EEDB0E18](v12, v13, 1);
    return;
  }

  v14 = *(a1 + 8);
  if (a2 == 2.0)
  {
    v15 = *a1;

    MEMORY[0x1EEDB0EF0](v14, v15, 1);
    return;
  }

  if (v14 < 1)
  {
    if (powf(0.0, 1.0 / a2) != INFINITY)
    {
      return;
    }

LABEL_30:
    kaldi::KaldiAssertFailure_("Norm", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.cc", 0x26C, "tmp != HUGE_VAL", v21);
  }

  v16 = *a1;
  v17 = 1;
  v18 = 0.0;
  do
  {
    v19 = *v16++;
    v20 = powf(fabsf(v19), a2);
    v17 &= v20 != INFINITY;
    v18 = v18 + v20;
    --v14;
  }

  while (v14);
  *&v22 = powf(v18, 1.0 / a2);
  if (*&v22 == INFINITY)
  {
    goto LABEL_30;
  }

  if ((v17 & 1) == 0)
  {
    kaldi::VectorBase<float>::Max(a1, v22);
    v24 = *&v23;
    kaldi::VectorBase<float>::Min(a1, v23);
    v28 = -v27;
    if (v24 < v28)
    {
      v24 = v28;
    }

    if (v24 <= 0.0)
    {
      kaldi::KaldiAssertFailure_("Norm", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.cc", 0x271, "max_abs > 0", v26);
    }

    memset(v32, 0, sizeof(v32));
    kaldi::Vector<float>::Resize(v32, *(a1 + 8), 1, v25, v26);
    kaldi::VectorBase<float>::CopyFromVec(v32, a1, v29, v30, v31);
    cblas_sscal_NEWLAPACK_ILP64();
    kaldi::VectorBase<float>::Norm(v32, a2);
    if (v32[0])
    {
      free(v32[0]);
    }
  }
}

void sub_1C3055B20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
    free(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::VectorBase<float>::InvertElements(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 >= 1)
  {
    v2 = *result;
    do
    {
      *v2 = 1.0 / *v2;
      ++v2;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t kaldi::VectorBase<float>::ReplaceValue(uint64_t result, float a2, float a3)
{
  v3 = *(result + 8);
  if (v3 >= 1)
  {
    v4 = *result;
    do
    {
      if (*v4 == a2)
      {
        *v4 = a3;
      }

      ++v4;
      --v3;
    }

    while (v3);
  }

  return result;
}

float kaldi::VectorBase<float>::DivElements(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *(a1 + 8);
  if (v5 != *(a2 + 8))
  {
    kaldi::KaldiAssertFailure_("DivElements", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.cc", 0x4D5, "dim_ == v.dim_", a5);
  }

  if (v5 >= 1)
  {
    v6 = *a2;
    v7 = *a1;
    do
    {
      v8 = *v6++;
      result = *v7 / v8;
      *v7++ = result;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t kaldi::VectorBase<float>::AddVecVec(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, const char *a5)
{
  if (*a2 == *a1 || *a3 == *a1)
  {
    kaldi::KaldiAssertFailure_("AddVecVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.cc", 0x4CD, "v.data_ != this->data_ && r.data_ != this->data_", a5);
  }

  v5 = *(a1 + 2);
  if (v5 != *(a2 + 8) || v5 != *(a3 + 2))
  {
    kaldi::KaldiAssertFailure_("AddVecVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.cc", 0x4CF, "dim_ == v.dim_ && dim_ == r.dim_", a5);
  }

  v9 = *a1;
  v8 = *a3;
  return cblas_sgbmv_NEWLAPACK_ILP64();
}

void *kaldi::VectorBase<float>::CopyRowsFromMat(char **a1, uint64_t a2)
{
  v4 = *(a1 + 2);
  v5 = kaldi::MatrixBase<float>::NumCols(a2);
  if (v4 != kaldi::MatrixBase<float>::NumRows(a2) * v5)
  {
    kaldi::KaldiAssertFailure_("CopyRowsFromMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.cc", 0x196, "dim_ == mat.NumCols() * mat.NumRows()", v6);
  }

  v7 = *a1;
  v8 = kaldi::MatrixBase<float>::NumCols(a2);
  v9 = kaldi::MatrixBase<float>::NumRows(a2);
  v10 = kaldi::MatrixBase<float>::Stride(a2);
  result = kaldi::MatrixBase<float>::NumCols(a2);
  if (v10 == result)
  {
    v13 = *a2;

    return memcpy(v7, v13, 4 * v9 * v8);
  }

  else if (v9 >= 1)
  {
    v14 = 0;
    v15 = 4 * v8;
    do
    {
      if (*(a2 + 12) <= v14)
      {
        kaldi::KaldiAssertFailure_("RowData", "../engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.h", 0xC4, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v12);
      }

      result = memcpy(v7, (*a2 + 4 * (*(a2 + 16) * v14++)), v15);
      v7 += v15;
    }

    while (v9 != v14);
  }

  return result;
}

double kaldi::VectorBase<float>::CopyRowsFromMat(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *(a1 + 8);
  v7 = *a2;
  if (*a2)
  {
    LODWORD(v7) = *(v7 + 8) * *(v7 + 12);
  }

  if (v6 != v7)
  {
    kaldi::KaldiAssertFailure_("CopyRowsFromMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.cc", 0x1A9, "dim_ == mat.NumCols() * mat.NumRows()", a5);
  }

  kaldi::SubMatrix<float>::SubMatrix(v9, *a1, 1, v6, v6);
  kaldi::CompressedMatrix::CopyToMat<float>(a2, v9);
  *&result = kaldi::CuMatrixBase<float>::~CuMatrixBase(v9).n128_u64[0];
  return result;
}

uint64_t kaldi::VectorBase<float>::CountZeros(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 < 1)
  {
    return 0;
  }

  v2 = *a1;
  v3 = 0.0;
  do
  {
    v4 = *v2++;
    if (v4 == 0.0)
    {
      v3 = v3 + 1.0;
    }

    --v1;
  }

  while (v1);
  return v3;
}

uint64_t kaldi::VectorBase<float>::AddColSumMat(uint64_t a1, uint64_t a2, float a3, float a4)
{
  v8 = *(a1 + 8);
  if (v8 != kaldi::MatrixBase<float>::NumRows(a2))
  {
    kaldi::KaldiAssertFailure_("AddColSumMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.cc", 0x34A, "dim_ == M.NumRows()", v9);
  }

  result = kaldi::MatrixBase<float>::NumCols(a2);
  v12 = *(a1 + 8);
  if (v12 >= 1)
  {
    v13 = 0;
    v14 = *a2;
    v15 = *(a2 + 12);
    v16 = 4 * *(a2 + 16);
    do
    {
      if (v13 == v15)
      {
        kaldi::KaldiAssertFailure_("RowData", "../engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.h", 0xC4, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v11);
      }

      v17 = 0.0;
      if (result >= 1)
      {
        v18 = result;
        v19 = v14;
        do
        {
          v20 = *v19++;
          v17 = v17 + v20;
          --v18;
        }

        while (v18);
      }

      v21 = (*(*a1 + 4 * v13) * a4) + a3 * v17;
      *(*a1 + 4 * v13++) = v21;
      v14 = (v14 + v16);
    }

    while (v13 != v12);
  }

  return result;
}

uint64_t kaldi::VectorBase<float>::AddDiagMat2(uint64_t a1, uint64_t *a2, int a3, float a4, float a5)
{
  v9 = *(a1 + 8);
  if (a3 == 111)
  {
    if (v9 != kaldi::MatrixBase<float>::NumRows(a2))
    {
      kaldi::KaldiAssertFailure_("AddDiagMat2", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.cc", 0x604, "this->dim_ == M.NumRows()", v10);
    }

    v11 = *(a1 + 8);
    kaldi::MatrixBase<float>::NumCols(a2);
    result = kaldi::MatrixBase<float>::Stride(a2);
    if (v11 >= 1)
    {
      v13 = *a2;
      v14 = *a1;
      v15 = 4 * result;
      do
      {
        v16 = *v14;
        result = cblas_sdot_NEWLAPACK_ILP64();
        *v14++ = (v17 * a4) + (a5 * v16);
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    if (v9 != kaldi::MatrixBase<float>::NumCols(a2))
    {
      kaldi::KaldiAssertFailure_("AddDiagMat2", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.cc", 0x60B, "this->dim_ == M.NumCols()", v18);
    }

    kaldi::MatrixBase<float>::NumRows(a2);
    v19 = *(a1 + 8);
    result = kaldi::MatrixBase<float>::Stride(a2);
    if (v19 >= 1)
    {
      v20 = *a2;
      v21 = *a1;
      do
      {
        v22 = *v21;
        result = cblas_sdot_NEWLAPACK_ILP64();
        *v21++ = (v23 * a4) + (a5 * v22);
        v20 += 4;
        --v19;
      }

      while (v19);
    }
  }

  return result;
}

uint64_t kaldi::VectorBase<float>::AddDiagMatMat(uint64_t a1, uint64_t *a2, int a3, uint64_t *a4, int a5, float a6, float a7)
{
  v14 = *(a1 + 8);
  if (a3 == 112)
  {
    v15 = kaldi::MatrixBase<float>::NumRows(a2);
  }

  else
  {
    v15 = kaldi::MatrixBase<float>::NumCols(a2);
  }

  v16 = v15;
  if (a5 == 112)
  {
    v17 = kaldi::MatrixBase<float>::NumCols(a4);
  }

  else
  {
    v17 = kaldi::MatrixBase<float>::NumRows(a4);
  }

  if (v16 != v17)
  {
    kaldi::KaldiAssertFailure_("AddDiagMatMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.cc", 0x61D, "M_col_dim == N_row_dim", v18);
  }

  v19 = kaldi::MatrixBase<float>::Stride(a2);
  result = kaldi::MatrixBase<float>::Stride(a4);
  if (v14 >= 1)
  {
    v21 = *a4;
    v22 = *a2;
    v23 = *a1;
    if (a5 == 112)
    {
      v24 = result;
    }

    else
    {
      v24 = 1;
    }

    if (a3 == 112)
    {
      v25 = 1;
    }

    else
    {
      v25 = v19;
    }

    v26 = 4 * v24;
    v27 = 4 * v25;
    do
    {
      v28 = *v23;
      result = cblas_sdot_NEWLAPACK_ILP64();
      *v23++ = (v29 * a6) + (a7 * v28);
      v21 += v26;
      v22 += v27;
      --v14;
    }

    while (v14);
  }

  return result;
}

void kaldi::VectorBase<float>::Write(int *a1, void *a2, int a3)
{
  if (*(a2 + *(*a2 - 24) + 32))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(__p, "Write", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.cc", 1475);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(__p, "Failed to write vector to stream: stream not good");
    goto LABEL_13;
  }

  if (a3)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "FV");
    kaldi::WriteToken(a2, 1, __p, v5, v6);
    kaldi::WriteBasicType<int>(a2, 1, a1[2]);
    v7 = *a1;
    std::ostream::write();
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " [ ", 3);
    if (a1[2] >= 1)
    {
      v8 = 0;
      do
      {
        v9 = *(*a1 + 4 * v8);
        v10 = std::ostream::operator<<();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " ", 1);
        ++v8;
      }

      while (v8 < a1[2]);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "]\n", 2);
  }

  if (*(a2 + *(*a2 - 24) + 32))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(__p, "Write", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.cc", 1490);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(__p, "Failed to write vector to stream");
LABEL_13:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
  }
}

void kaldi::VectorBase<float>::AddMatVec<signed char>(uint64_t a1, uint64_t a2, int a3, uint64_t a4, const char *a5, float a6, float a7)
{
  if (a3 != 111 || kaldi::MatrixBase<float>::NumCols(a2) != *(a4 + 8) || kaldi::MatrixBase<float>::NumRows(a2) != *(a1 + 8))
  {
    kaldi::KaldiAssertFailure_("AddMatVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.cc", 0x88, "trans == kNoTrans && M.NumCols() == v.Dim() && M.NumRows() == dim_", a5);
  }

  if (a6 != 1.0)
  {
    kaldi::KaldiAssertFailure_("AddMatVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.cc", 0x8A, "alpha == 1.0", a5);
  }

  kaldi::QuantizedVectorBase<signed char>::AddMatVec(a4, a2, a1, a7, v12, a5);
}

void kaldi::VectorBase<float>::AddMatVec<short>(uint64_t a1, uint64_t a2, int a3, uint64_t a4, const char *a5, float a6, float a7)
{
  if (a3 != 111 || kaldi::MatrixBase<float>::NumCols(a2) != *(a4 + 8) || kaldi::MatrixBase<float>::NumRows(a2) != *(a1 + 8))
  {
    kaldi::KaldiAssertFailure_("AddMatVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.cc", 0x88, "trans == kNoTrans && M.NumCols() == v.Dim() && M.NumRows() == dim_", a5);
  }

  if (a6 != 1.0)
  {
    kaldi::KaldiAssertFailure_("AddMatVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.cc", 0x8A, "alpha == 1.0", a5);
  }

  kaldi::QuantizedVectorBase<short>::AddMatVec(a4, a2, a1, a7, v12, a5);
}

void kaldi::VectorBase<float>::ApplyPow(uint64_t a1, float a2)
{
  v3 = a2;
  v2 = *(a1 + 8);
  vvpowsf(*a1, &v3, *a1, &v2);
}

void kaldi::VectorBase<float>::Tanh(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(a1 + 8) != *(a2 + 8))
  {
    kaldi::KaldiAssertFailure_("Tanh", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.cc", 0x43B, "dim_ == src.dim_", a5);
  }

  v5 = *(a1 + 8);
  vvtanhf(*a1, *a2, &v5);
}

void std::vector<kaldi::Matrix<float>>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<kaldi::Matrix<float>>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 40 * a2;
    while (v3 != v7)
    {
      v3 = kaldi::Matrix<float>::~Matrix(v3 - 40);
    }

    a1[1] = v7;
  }
}

void std::vector<kaldi::Matrix<float>>::__append(uint64_t *a1, unint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (0xCCCCCCCCCCCCCCCDLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = v5 + 40 * a2;
      v11 = 40 * a2;
      do
      {
        kaldi::Matrix<float>::Matrix(v5);
        v5 += 40;
        v11 -= 40;
      }

      while (v11);
      v5 = v10;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0x666666666666666)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x333333333333333)
    {
      v9 = 0x666666666666666;
    }

    else
    {
      v9 = v7;
    }

    v23 = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::Matrix<float>>>(a1, v9);
    }

    v12 = 40 * v6;
    v20 = 0;
    v21 = v12;
    v22 = v12;
    v13 = 5 * a2;
    v14 = v12 + 40 * a2;
    v15 = 8 * v13;
    do
    {
      kaldi::Matrix<float>::Matrix(v12);
      v12 += 40;
      v15 -= 40;
    }

    while (v15);
    *&v22 = v14;
    v16 = a1[1];
    v17 = v21 + *a1 - v16;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::Matrix<float>>,kaldi::Matrix<float>*>(a1, *a1, v16, v17);
    v18 = *a1;
    *a1 = v17;
    v19 = a1[2];
    *(a1 + 1) = v22;
    *&v22 = v18;
    *(&v22 + 1) = v19;
    v20 = v18;
    v21 = v18;
    std::__split_buffer<kaldi::Matrix<float>>::~__split_buffer(&v20);
  }
}

void sub_1C305693C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<kaldi::Matrix<float>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::Matrix<float>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::Matrix<float>>,kaldi::Matrix<float>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      result = kaldi::Matrix<float>::Matrix(a4, v8);
      v8 += 40;
      a4 += 40;
      v7 -= 40;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      result = kaldi::Matrix<float>::~Matrix(v6);
      v6 += 40;
    }
  }

  return result;
}

void sub_1C3056A40(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 40;
    do
    {
      v4 = kaldi::Matrix<float>::~Matrix(v4) - 40;
      v2 += 40;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<kaldi::Matrix<float>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
    kaldi::Matrix<float>::~Matrix(i - 40);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<kaldi::Matrix<float>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = kaldi::Matrix<float>::~Matrix(v4 - 40);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t kaldi::nnet1::AffineTransform::PropagateFnc(uint64_t a1, uint64_t a2, unsigned int *a3, int a4)
{
  v8 = kaldi::nnet1::AffineTransform::Bias(a1);
  kaldi::CuMatrixBase<float>::AddVecToRows(a3, v8, v9, v10, v11, 1.0, 0.0);
  v12 = *(a1 + 352);
  if (v12 == *(a1 + 360) || !*(v12 + 48 * a4 + 20))
  {
    v18 = kaldi::nnet1::AffineTransform::Linearity(a1);
    result = kaldi::CuMatrixBase<float>::AddMatMat(a3, a2, 111, v18, 0x70);
  }

  else
  {
    v13 = kaldi::nnet1::AffineTransform::Linearity(a1);
    result = kaldi::CuMatrixBase<float>::AddMatMatMasked(a3, a2, 111, v13, 0x70, *(a1 + 352) + 48 * a4);
  }

  if (*(a1 + 128) == 1)
  {

    return kaldi::CuMatrixBase<float>::ApplySoftMaxPerRow(a3, a3, v15, v16, v17);
  }

  return result;
}

uint64_t kaldi::nnet1::AffineTransform::Bias(kaldi::nnet1::AffineTransform *this)
{
  result = *(this + 15);
  if (!result)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v2, "Bias", "../engine/common/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", 713);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "bias_");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return result;
}

uint64_t kaldi::nnet1::AffineTransform::Linearity(kaldi::nnet1::AffineTransform *this)
{
  result = *(this + 14);
  if (!result)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v2, "Linearity", "../engine/common/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", 709);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "linearity_");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return result;
}

float kaldi::nnet1::AffineTransform::PropagateFnc(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v6 = kaldi::nnet1::AffineTransform::Bias(a1);
  kaldi::CuVectorBase<float>::CopyFromVec(a3, v6, v7, v8, v9);
  v10 = *(a1 + 352);
  if (v10 == *(a1 + 360) || !*(v10 + 20))
  {
    v12 = kaldi::nnet1::AffineTransform::Linearity(a1);
    kaldi::CuVectorBase<float>::AddMatVec(a3, v12, 111, a2, v13);
  }

  else
  {
    kaldi::nnet1::Component::PropagateFnc(a1, a2, a3);
  }

  if (*(a1 + 128) == 1)
  {

    *&v11 = kaldi::CuVectorBase<float>::ApplySoftMax(a3, v11);
  }

  return *&v11;
}

uint64_t kaldi::nnet1::Component::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 8);
  v11 = &unk_1F42BFE90;
  *&v12 = v4;
  *(&v12 + 1) = v3 | 0x100000000;
  LODWORD(v13) = v3;
  DWORD1(v13) = v3;
  *(&v13 + 1) = *(a2 + 24);
  v5 = *(a3 + 16);
  v6 = *(a3 + 8);
  v8 = &unk_1F42BFE90;
  *&v9 = v6;
  *(&v9 + 1) = v5 | 0x100000000;
  LODWORD(v10) = v5;
  DWORD1(v10) = v5;
  *(&v10 + 1) = *(a3 + 24);
  (*(*a1 + 112))(a1, &v11, &v8, 0);
  v8 = &unk_1F42BFE90;
  v9 = 0u;
  v10 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&v8);
  v11 = &unk_1F42BFE90;
  v12 = 0u;
  v13 = 0u;
  return kaldi::CuMatrixBase<float>::~CuMatrixBase(&v11);
}

void sub_1C3057038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, __int128 a16)
{
  *(v16 + 8) = 0u;
  *(v16 + 24) = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&a9);
  a15 = 0u;
  a16 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&a14);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::AffineTransform::~AffineTransform(kaldi::nnet1::AffineTransform *this)
{
  kaldi::nnet1::AffineTransform::~AffineTransform(this);

  JUMPOUT(0x1C692AE10);
}

{
  *this = &unk_1F42BFFC0;
  v2 = this + 88;
  *(this + 11) = &unk_1F42C0100;
  v3 = this + 96;
  *(this + 12) = &unk_1F42C0128;
  v4 = this + 104;
  *(this + 13) = &unk_1F42C0150;
  kaldi::nnet1::QuantizerResidualAggregator::~QuantizerResidualAggregator(this + 47);
  v9 = (this + 352);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v9);
  kaldi::CuMatrix<float>::~CuMatrix(this + 304);
  v5 = *(this + 35);
  if (v5)
  {
    *(this + 36) = v5;
    operator delete(v5);
  }

  v6 = *(this + 32);
  if (v6)
  {
    *(this + 33) = v6;
    operator delete(v6);
  }

  v9 = (this + 208);
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (this + 184);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (this + 160);
  std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (this + 136);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v7 = *(this + 15);
  *(this + 15) = 0;
  if (v7)
  {
    (*(*v7 + 16))(v7);
  }

  v8 = *(this + 14);
  *(this + 14) = 0;
  if (v8)
  {
    (*(*v8 + 24))(v8);
  }

  kaldi::CuMatrixBase<float>::~CuMatrixBase(v4);
  kaldi::CuMatrixBase<float>::~CuMatrixBase(v3);
  kaldi::CuMatrixBase<float>::~CuMatrixBase(v2);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(this);
}

uint64_t kaldi::nnet1::AffineTransform::CountZeroCorr(kaldi::nnet1::AffineTransform *this, int *a2, int *a3)
{
  kaldi::nnet1::AffineTransform::EnsureCorrs(this);
  v6 = *(kaldi::nnet1::AffineTransform::Bias(this) + 16);
  v7 = *(kaldi::nnet1::AffineTransform::Linearity(this) + 20);
  result = kaldi::nnet1::AffineTransform::Linearity(this);
  *a3 = v6 + *(result + 16) * v7;
  v9 = *(this + 18) - *(this + 17);
  if (v9)
  {
    v10 = *(this + 21) - *(this + 20);
    if (v10)
    {
      v11 = v9 >> 3;
      v12 = v10 >> 3;
      v13 = *(this + 20);
      if (v13 == 1)
      {
        v14 = 0;
      }

      else
      {
        v14 = v13;
      }

      v15 = v12 - 1;
      if (v11 - 1 != v14 || v15 != v14)
      {
        kaldi::KaldiErrorMessage::KaldiErrorMessage(v25, "CountZeroCorr", "../engine/common/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", 647);
        v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "Unexpected mismatch in indexes: ", 32);
        v21 = MEMORY[0x1C692A960](v20, v14);
        v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "  ", 2);
        v23 = MEMORY[0x1C692A980](v22, ((*(this + 18) - *(this + 17)) >> 3) - 1);
        v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "  ", 2);
        MEMORY[0x1C692A980](v24, ((*(this + 21) - *(this + 20)) >> 3) - 1);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v25);
      }

      v17 = kaldi::nnet1::AffineTransform::LinearityCorr(this, v14);
      v18 = kaldi::CuMatrixBase<float>::CountZeros(v17);
      v19 = kaldi::nnet1::AffineTransform::BiasCorr(this, v14);
      result = kaldi::CuVectorBase<float>::CountZeros(v19);
      LODWORD(v9) = result + v18;
    }

    else
    {
      LODWORD(v9) = 0;
    }
  }

  *a2 = v9;
  return result;
}

void kaldi::nnet1::AffineTransform::VectorizeWeightsCorrs(uint64_t a1)
{
  if (*(a1 + 16) == 1)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v3, "VectorizeWeightsCorrs", "../engine/common/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", 542);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v3, "Weights are already vectorized");
  }

  else
  {
    if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
    {
      kaldi::KaldiLogMessage::KaldiLogMessage(v3, "VectorizeWeightsCorrs", "../engine/common/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", 545);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "Performing vectorization of affine transform component", 54);
      kaldi::KaldiLogMessage::~KaldiLogMessage(v3);
    }

    v2 = *(*(a1 + 120) + 16) + *(*(a1 + 112) + 16) * *(*(a1 + 112) + 20);
    if (v2 == (*(*a1 + 176))(a1))
    {
      kaldi::CuSubMatrix<float>::CopyDataAndReplaceWithCuSub((a1 + 112));
    }

    kaldi::KaldiErrorMessage::KaldiErrorMessage(v3, "VectorizeWeightsCorrs", "../engine/common/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", 548);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v3, "(nlinparams + bias_->Dim()) == NumParams()");
  }

  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v3);
}

uint64_t kaldi::nnet1::AffineTransform::Info(kaldi::nnet1::AffineTransform *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v21);
  (*(*this + 168))(this, &v21, 0);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, "\n linearity", 11);
  v4 = *(this + 14);
  if (!v4)
  {
    kaldi::KaldiAssertFailure_("Linearity", "../engine/common/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", 0x252, "linearity_", v2);
  }

  kaldi::nnet1::MomentStatistics<float>(v4);
  if ((v20 & 0x80u) == 0)
  {
    v5 = v19;
  }

  else
  {
    v5 = v19[0];
  }

  if ((v20 & 0x80u) == 0)
  {
    v6 = v20;
  }

  else
  {
    v6 = v19[1];
  }

  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, v5, v6);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "\n bias", 6);
  v13 = *(this + 15);
  if (!v13)
  {
    kaldi::KaldiAssertFailure_("Bias", "../engine/common/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", 0x256, "bias_", v11);
  }

  kaldi::nnet1::MomentStatistics<float>(v13, v8, v9, v10, v11);
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

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v14, v15);
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  std::stringbuf::str();
  v21 = *MEMORY[0x1E69E54E8];
  *(&v21 + *(v21 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v22 = MEMORY[0x1E69E5548] + 16;
  if (v24 < 0)
  {
    operator delete(v23[7].__locale_);
  }

  v22 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v23);
  std::ostream::~ostream();
  return MEMORY[0x1C692AD30](&v25);
}

void sub_1C3057AA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  std::ostringstream::~ostringstream(&a22);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::AffineTransform::InfoGradient(kaldi::nnet1::AffineTransform *this@<X0>, uint64_t a2@<X8>)
{
  if (*(this + 232))
  {
    std::string::basic_string[abi:ne200100]<0>(&v50, "\n  linearity_grad");
    kaldi::nnet1::MomentStatistics<float>(this + 17, v4, v5, v6, v7);
    if ((v49 & 0x80u) == 0)
    {
      v8 = v48;
    }

    else
    {
      v8 = v48[0];
    }

    if ((v49 & 0x80u) == 0)
    {
      v9 = v49;
    }

    else
    {
      v9 = v48[1];
    }

    v10 = std::string::append(&v50, v8, v9);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v51.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v51.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = std::string::append(&v51, ", lr-coef ");
    v13 = *&v12->__r_.__value_.__l.__data_;
    v52.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
    *&v52.__r_.__value_.__l.__data_ = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    kaldi::nnet1::ToString<float>(this + 59);
    if ((v47 & 0x80u) == 0)
    {
      v14 = v46;
    }

    else
    {
      v14 = v46[0];
    }

    if ((v47 & 0x80u) == 0)
    {
      v15 = v47;
    }

    else
    {
      v15 = v46[1];
    }

    v16 = std::string::append(&v52, v14, v15);
    v17 = *&v16->__r_.__value_.__l.__data_;
    v53.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
    *&v53.__r_.__value_.__l.__data_ = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    v18 = std::string::append(&v53, ", max-norm ");
    v19 = *&v18->__r_.__value_.__l.__data_;
    v54.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
    *&v54.__r_.__value_.__l.__data_ = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    kaldi::nnet1::ToString<float>(this + 63);
    if ((v45 & 0x80u) == 0)
    {
      v20 = v44;
    }

    else
    {
      v20 = v44[0];
    }

    if ((v45 & 0x80u) == 0)
    {
      v21 = v45;
    }

    else
    {
      v21 = v44[1];
    }

    v22 = std::string::append(&v54, v20, v21);
    v23 = *&v22->__r_.__value_.__l.__data_;
    v55.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
    *&v55.__r_.__value_.__l.__data_ = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    v24 = std::string::append(&v55, "\n  bias_grad");
    v25 = *&v24->__r_.__value_.__l.__data_;
    v56.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
    *&v56.__r_.__value_.__l.__data_ = v25;
    v24->__r_.__value_.__l.__size_ = 0;
    v24->__r_.__value_.__r.__words[2] = 0;
    v24->__r_.__value_.__r.__words[0] = 0;
    kaldi::nnet1::MomentStatistics<float>(this + 20, v26, v27, v28, v29);
    if ((v43 & 0x80u) == 0)
    {
      v30 = v42;
    }

    else
    {
      v30 = v42[0];
    }

    if ((v43 & 0x80u) == 0)
    {
      v31 = v43;
    }

    else
    {
      v31 = v42[1];
    }

    v32 = std::string::append(&v56, v30, v31);
    v33 = *&v32->__r_.__value_.__l.__data_;
    v57.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
    *&v57.__r_.__value_.__l.__data_ = v33;
    v32->__r_.__value_.__l.__size_ = 0;
    v32->__r_.__value_.__r.__words[2] = 0;
    v32->__r_.__value_.__r.__words[0] = 0;
    v34 = std::string::append(&v57, ", lr-coef ");
    v35 = *&v34->__r_.__value_.__l.__data_;
    v58.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
    *&v58.__r_.__value_.__l.__data_ = v35;
    v34->__r_.__value_.__l.__size_ = 0;
    v34->__r_.__value_.__r.__words[2] = 0;
    v34->__r_.__value_.__r.__words[0] = 0;
    kaldi::nnet1::ToString<float>(this + 60);
    if ((v41 & 0x80u) == 0)
    {
      v36 = __p;
    }

    else
    {
      v36 = __p[0];
    }

    if ((v41 & 0x80u) == 0)
    {
      v37 = v41;
    }

    else
    {
      v37 = __p[1];
    }

    v38 = std::string::append(&v58, v36, v37);
    v39 = *&v38->__r_.__value_.__l.__data_;
    *(a2 + 16) = *(&v38->__r_.__value_.__l + 2);
    *a2 = v39;
    v38->__r_.__value_.__l.__size_ = 0;
    v38->__r_.__value_.__r.__words[2] = 0;
    v38->__r_.__value_.__r.__words[0] = 0;
    if (v41 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v58.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v57.__r_.__value_.__l.__data_);
    }

    if (v43 < 0)
    {
      operator delete(v42[0]);
    }

    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v56.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v55.__r_.__value_.__l.__data_);
    }

    if (v45 < 0)
    {
      operator delete(v44[0]);
    }

    if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v54.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v53.__r_.__value_.__l.__data_);
    }

    if (v47 < 0)
    {
      operator delete(v46[0]);
    }

    if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v52.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v51.__r_.__value_.__l.__data_);
    }

    if (v49 < 0)
    {
      operator delete(v48[0]);
    }

    if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v50.__r_.__value_.__l.__data_);
    }
  }

  else
  {

    std::string::basic_string[abi:ne200100]<0>(a2, "\n  linearity_grad is uninitialized\n  bias_grad is uninitialized");
  }
}

void sub_1C3057E54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57, uint64_t a58, void *a59, uint64_t a60, int a61, __int16 a62, char a63)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v64 - 41) < 0)
  {
    operator delete(*(v64 - 64));
  }

  if (*(v64 - 73) < 0)
  {
    operator delete(*(v64 - 96));
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (*(v64 - 105) < 0)
  {
    operator delete(*(v64 - 128));
  }

  if (*(v64 - 137) < 0)
  {
    operator delete(*(v64 - 160));
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (*(v64 - 169) < 0)
  {
    operator delete(*(v64 - 192));
  }

  if (a64 < 0)
  {
    operator delete(a59);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a57 < 0)
  {
    operator delete(a52);
  }

  if (a50 < 0)
  {
    operator delete(a45);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  _Unwind_Resume(a1);
}

void kaldi::nnet1::AffineTransform::InitData(uint64_t a1, uint64_t *a2, kaldi::UniformRandomNumber *a3)
{
  v97 = 2.0;
  v98 = -1073741824;
  v96 = 1036831949;
  kaldi::nnet1::Component::TypeToMarker(2, &v95);
  kaldi::nnet1::Component::TypeToMarker(*(a1 + 244), &v94);
  v93 = -1;
  memset(v92, 0, sizeof(v92));
  while (1)
  {
    if ((*(a2 + *(*a2 - 24) + 32) & 2) != 0)
    {
      goto LABEL_158;
    }

    kaldi::ReadToken(a2, 0, v92, v6, v7);
    if ((SHIBYTE(v92[2]) & 0x80000000) == 0)
    {
      break;
    }

    if (v92[1] <= 12)
    {
      if (v92[1] <= 10)
      {
        if (v92[1] == 9)
        {
          v27 = v92[0];
          v32 = *v92[0] == 0x6D726F4E78614D3CLL && *(v92[0] + 8) == 62;
          v12 = (a1 + 252);
          if (!v32)
          {
            v33 = *v92[0] == 0x6461724778614D3CLL && *(v92[0] + 8) == 62;
            v12 = (a1 + 248);
            if (!v33)
            {
              goto LABEL_120;
            }
          }

          goto LABEL_138;
        }

        if (v92[1] != 10)
        {
          goto LABEL_193;
        }

        if (*v92[0] != 0x61654D736169423CLL || *(v92[0] + 4) != 15982)
        {
          goto LABEL_193;
        }

        goto LABEL_22;
      }

      if (v92[1] != 11)
      {
        if (*v92[0] != 0x536D6F646E61523CLL || *(v92[0] + 2) != 1046766949)
        {
          goto LABEL_152;
        }

LABEL_66:
        kaldi::ReadBasicType<int>(a2, 0, &v93);
        goto LABEL_149;
      }

      if (*v92[0] != 0x6E6152736169423CLL || *(v92[0] + 3) != 0x3E65676E61527361)
      {
        goto LABEL_193;
      }

LABEL_137:
      v12 = &v97;
      goto LABEL_138;
    }

    if (v92[1] <= 17)
    {
      if (v92[1] != 13)
      {
        if (v92[1] != 15)
        {
          goto LABEL_193;
        }

        v13 = *v92[0] == 0x61526E7261654C3CLL && *(v92[0] + 7) == 0x3E66656F43657461;
        goto LABEL_35;
      }

      if (*v92[0] != 0x74536D617261503CLL || *(v92[0] + 5) != 0x3E7665646474536DLL)
      {
        goto LABEL_193;
      }

LABEL_131:
      v12 = &v96;
      goto LABEL_138;
    }

    if (v92[1] == 18)
    {
      if (*v92[0] != 0x6E6569646172473CLL || *(v92[0] + 1) != 0x7079546D726F4E74 || *(v92[0] + 8) != 15973)
      {
        goto LABEL_151;
      }

      goto LABEL_147;
    }

    if (v92[1] != 19)
    {
      goto LABEL_193;
    }

    v21 = *v92[0] == 0x61654C736169423CLL && *(v92[0] + 1) == 0x6F43657461526E72 && *(v92[0] + 11) == 0x3E66656F43657461;
    v12 = (a1 + 240);
    if (v21)
    {
      goto LABEL_138;
    }

    if (*v92[0] != 0x61725474696E493CLL || *(v92[0] + 1) != 0x79546D726F66736ELL || *(v92[0] + 11) != 0x3E657079546D726FLL)
    {
      goto LABEL_151;
    }

LABEL_84:
    v24 = &v95;
LABEL_148:
    kaldi::ReadToken(a2, 0, v24, v8, v9);
LABEL_149:
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }

  if (HIBYTE(v92[2]) > 0xCu)
  {
    if (HIBYTE(v92[2]) <= 0x11u)
    {
      if (HIBYTE(v92[2]) == 13)
      {
        if (v92[0] != 0x74536D617261503CLL || *(v92 + 5) != 0x3E7665646474536DLL)
        {
          goto LABEL_193;
        }

        goto LABEL_131;
      }

      if (HIBYTE(v92[2]) != 15)
      {
        goto LABEL_193;
      }

      v13 = v92[0] == 0x61526E7261654C3CLL && *(v92 + 7) == 0x3E66656F43657461;
LABEL_35:
      v12 = (a1 + 236);
      if (!v13)
      {
        goto LABEL_193;
      }

LABEL_138:
      kaldi::ReadBasicType<float>(a2, 0, v12);
      goto LABEL_149;
    }

    if (HIBYTE(v92[2]) == 18)
    {
      if (v92[0] != 0x6E6569646172473CLL || v92[1] != 0x7079546D726F4E74 || LOWORD(v92[2]) != 15973)
      {
        goto LABEL_193;
      }

LABEL_147:
      v24 = &v94;
      goto LABEL_148;
    }

    if (HIBYTE(v92[2]) != 19)
    {
      goto LABEL_193;
    }

    v16 = v92[0] == 0x61654C736169423CLL && v92[1] == 0x6F43657461526E72 && *(&v92[1] + 3) == 0x3E66656F43657461;
    v12 = (a1 + 240);
    if (v16)
    {
      goto LABEL_138;
    }

    if (v92[0] != 0x61725474696E493CLL || v92[1] != 0x79546D726F66736ELL || *(&v92[1] + 3) != 0x3E657079546D726FLL)
    {
      goto LABEL_193;
    }

    goto LABEL_84;
  }

  if (HIBYTE(v92[2]) > 0xAu)
  {
    if (HIBYTE(v92[2]) != 11)
    {
      if (v92[0] != 0x536D6F646E61523CLL || LODWORD(v92[1]) != 1046766949)
      {
        v41 = v92;
        goto LABEL_153;
      }

      goto LABEL_66;
    }

    if (v92[0] != 0x6E6152736169423CLL || *(v92 + 3) != 0x3E65676E61527361)
    {
      goto LABEL_193;
    }

    goto LABEL_137;
  }

  if (HIBYTE(v92[2]) != 9)
  {
    if (HIBYTE(v92[2]) != 10)
    {
      goto LABEL_193;
    }

    if (v92[0] != 0x61654D736169423CLL || LOWORD(v92[1]) != 15982)
    {
      goto LABEL_193;
    }

LABEL_22:
    v12 = &v98;
    goto LABEL_138;
  }

  v25 = v92[0] == 0x6D726F4E78614D3CLL && LOBYTE(v92[1]) == 62;
  v12 = (a1 + 252);
  if (v25)
  {
    goto LABEL_138;
  }

  v26 = v92[0] == 0x6461724778614D3CLL && LOBYTE(v92[1]) == 62;
  v12 = (a1 + 248);
  if (v26)
  {
    goto LABEL_138;
  }

  v27 = v92;
LABEL_120:
  v34 = *v27;
  v35 = *(v27 + 8);
  if (v34 == 0x78616D74666F533CLL && v35 == 62)
  {
    *(a1 + 128) = 1;
    goto LABEL_149;
  }

  if ((HIBYTE(v92[2]) & 0x80) == 0)
  {
    goto LABEL_193;
  }

LABEL_151:
  if (v92[1] != 12)
  {
LABEL_193:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v91, "InitData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", 171);
    v77 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v91, "Unknown token ", 14);
    if (SHIBYTE(v92[2]) >= 0)
    {
      v78 = v92;
    }

    else
    {
      v78 = v92[0];
    }

    if (SHIBYTE(v92[2]) >= 0)
    {
      v79 = HIBYTE(v92[2]);
    }

    else
    {
      v79 = v92[1];
    }

    v80 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v77, v78, v79);
    v81 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v80, ", a typo in config?", 19);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v81, " (ParamStddev|BiasMean|BiasRange|LearnRateCoef|BiasLearnRateCoef|MaxNorm|InitTransformType|GradientNormType|MaxGrad|RandomSeed)", 127);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v91);
  }

LABEL_152:
  v41 = v92[0];
LABEL_153:
  v42 = *v41;
  v43 = *(v41 + 2);
  if (v42 != 0x6E6F706D6F432F3CLL || v43 != 1047817829)
  {
    goto LABEL_193;
  }

LABEL_158:
  inited = kaldi::nnet1::Component::MarkerToMatrixInitType(&v95);
  *(a1 + 244) = kaldi::nnet1::Component::MarkerToGradientNormType(&v94);
  if (v93 >= 1)
  {
    kaldi::UniformRandomNumber::SetRandomSeeds(a3, v93);
  }

  kaldi::GaussRandomNumber::GaussRandomNumber(v87, a3);
  kaldi::Matrix<float>::Matrix(v85, *(a1 + 12), *(a1 + 8), 0, 0);
  v49 = *(a1 + 12);
  if (v49 < 1)
  {
    goto LABEL_176;
  }

  v50 = 0;
  v51 = *(a1 + 8);
  while (2)
  {
    if (v51 < 1)
    {
      goto LABEL_175;
    }

    v52 = 0;
    while (2)
    {
      switch(inited)
      {
        case 0:
          if (v50 == v52)
          {
            v54 = 1.0;
          }

          else
          {
            v54 = 0.0;
          }

          goto LABEL_172;
        case 2:
          v55 = *&v96;
          kaldi::GaussRandomNumber::Rand(v87, 0, v46, v47, v48);
          v54 = v55 * v56;
LABEL_172:
          *(v85[0] + 4 * v50 * v86 + 4 * v52) = v54;
          v51 = *(a1 + 8);
          break;
        case 1:
          v53 = *&v96;
          v54 = (kaldi::UniformRandomNumber::RandUniform(a3, 0, v46, v47, v48) + -0.5) * (v53 + v53);
          goto LABEL_172;
      }

      if (++v52 < v51)
      {
        continue;
      }

      break;
    }

    v49 = *(a1 + 12);
LABEL_175:
    if (++v50 < v49)
    {
      continue;
    }

    break;
  }

LABEL_176:
  v57 = *(kaldi::nnet1::AffineTransform::Linearity(a1) + 20);
  if (v57 != kaldi::MatrixBase<float>::NumRows(v85) || (v58 = *(kaldi::nnet1::AffineTransform::Linearity(a1) + 16), v58 != kaldi::MatrixBase<float>::NumCols(v85)))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v91, "InitData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", 197);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v91, "Linearity().NumRows() == mat.NumRows() && Linearity().NumCols() == mat.NumCols()", 80);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v91);
  }

  v59 = kaldi::nnet1::AffineTransform::Linearity(a1);
  kaldi::CuMatrixBase<float>::CopyFromMat(v59, v85, 111, v60, v61);
  v62 = *(a1 + 12);
  v83 = 0;
  v84 = 0;
  v82 = 0;
  kaldi::Vector<float>::Resize(&v82, v62, 0, v63, v64);
  if (*(a1 + 12) >= 1)
  {
    v68 = 0;
    do
    {
      v69 = *&v98;
      v70 = kaldi::UniformRandomNumber::RandUniform(a3, 0, v65, v66, v67);
      v71 = v69 + (v70 + -0.5) * v97;
      v82[v68++] = v71;
    }

    while (v68 < *(a1 + 12));
  }

  v72 = kaldi::nnet1::AffineTransform::Bias(a1);
  if (*(v72 + 16) != v83)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v91, "InitData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", 207);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v91, "Bias().Dim() == vec.Dim()", 25);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v91);
  }

  v73 = kaldi::nnet1::AffineTransform::Bias(a1);
  kaldi::CuVectorBase<float>::CopyFromVec<float>(v73, &v82, v74, v75, v76);
  kaldi::Vector<float>::Destroy(&v82);
  kaldi::Matrix<float>::~Matrix(v85);
  if (__p)
  {
    v90 = __p;
    operator delete(__p);
  }

  v91[0] = &v88;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](v91);
  if (SHIBYTE(v92[2]) < 0)
  {
    operator delete(v92[0]);
  }

  if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v94.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v95.__r_.__value_.__l.__data_);
  }
}

void kaldi::nnet1::AffineTransform::WriteData(void *a1, void *a2, int a3, int a4)
{
  (*(*a1 + 168))(a1);
  v9 = a1[14];
  if (!v9)
  {
    kaldi::KaldiAssertFailure_("Linearity", "../engine/common/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", 0x252, "linearity_", v8);
  }

  kaldi::CuMatrixBase<float>::Write(v9, a2, a3, a4);
  v12 = a1[15];
  if (!v12)
  {
    kaldi::KaldiAssertFailure_("Bias", "../engine/common/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", 0x256, "bias_", v11);
  }

  kaldi::CuVectorBase<float>::Write(v12, a2, a3, v10, v11);
}

uint64_t kaldi::nnet1::AffineTransform::BackpropagateFnc(kaldi::nnet1::AffineTransform *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v9 = *(this + 44);
  if (v9 == *(this + 45) || !*(v9 + 48 * a6 + 20))
  {
    v14 = kaldi::nnet1::AffineTransform::Linearity(this);

    return kaldi::CuMatrixBase<float>::AddMatMat(a5, a4, 111, v14, 0x6F);
  }

  else
  {
    v11 = kaldi::nnet1::AffineTransform::Linearity(this);
    v12 = *(this + 44) + 48 * a6;

    return kaldi::CuMatrixBase<float>::AddMatMatMasked(a5, a4, 111, v11, 0x6F, v12);
  }
}

char **kaldi::nnet1::Component::SetWorkspace(uint64_t a1, char **a2)
{
  result = (a1 + 24);
  if (result != a2)
  {
    return std::vector<kaldi::CuWorkspace *>::__assign_with_size[abi:ne200100]<kaldi::CuWorkspace **,kaldi::CuWorkspace **>(result, *a2, a2[1], (a2[1] - *a2) >> 3);
  }

  return result;
}

uint64_t kaldi::nnet1::AffineTransform::GetUnitOutputFnc(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, const char *a5, int16x4_t a6)
{
  v6 = *(a1 + 120);
  if (!v6)
  {
    kaldi::KaldiAssertFailure_("Bias", "../engine/common/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", 0x256, "bias_", a5);
  }

  a6.i32[0] = *(*(v6 + 8) + 4 * a3);
  kaldi::CuVectorBase<float>::Set(a4, a6);
  v12 = *(a1 + 112);
  if (!v12)
  {
    kaldi::KaldiAssertFailure_("Linearity", "../engine/common/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", 0x252, "linearity_", v11);
  }

  if (*(v12 + 20) <= a3)
  {
    kaldi::KaldiAssertFailure_("Row", "../engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", 0x225, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v11);
  }

  v13 = *(v12 + 8) + 4 * (*(v12 + 24) * a3);
  v14 = *(v12 + 16);
  v15 = *(v12 + 32);
  v17[1] = v13;
  v17[0] = &unk_1F42BFF30;
  v17[2] = v14;
  v17[3] = v15;
  return kaldi::CuVectorBase<float>::AddMatVec(a4, a2, 111, v17, v11);
}

float kaldi::nnet1::AffineTransform::GetUnitOutputFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *(a1 + 120);
  if (!v5)
  {
    kaldi::KaldiAssertFailure_("Bias", "../engine/common/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", 0x256, "bias_", a5);
  }

  v6 = *(a1 + 112);
  if (!v6)
  {
    kaldi::KaldiAssertFailure_("Linearity", "../engine/common/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", 0x252, "linearity_", a5);
  }

  if (*(v6 + 20) <= a3)
  {
    kaldi::KaldiAssertFailure_("Row", "../engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", 0x225, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", a5);
  }

  v7 = *(*(v5 + 8) + 4 * a3);
  v8 = *(v6 + 8) + 4 * *(v6 + 24) * a3;
  v9 = *(v6 + 16);
  v10 = *(v6 + 32);
  v13[1] = v8;
  v13[0] = &unk_1F42BFF30;
  v13[2] = v9;
  v13[3] = v10;
  kaldi::VecVec<float>(a2, v13, a3, a4, a5);
  return v7 + v11;
}

uint64_t kaldi::nnet1::AffineTransform::ReadData(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  while (kaldi::Peek(a2, a3) == 60)
  {
    memset(v40, 0, 24);
    kaldi::ReadToken(a2, a3, v40, v7, v8);
    if (SHIBYTE(v40[2]) < 0)
    {
      if (v40[1] != 15 || (*v40[0] == 0x61526E7261654C3CLL ? (v13 = *(v40[0] + 7) == 0x3E66656F43657461) : (v13 = 0), v12 = (a1 + 236), !v13))
      {
        if (v40[1] != 19 || (*v40[0] == 0x61654C736169423CLL ? (v14 = *(v40[0] + 1) == 0x6F43657461526E72) : (v14 = 0), v14 ? (v15 = *(v40[0] + 11) == 0x3E66656F43657461) : (v15 = 0), v12 = (a1 + 240), !v15))
        {
          if (v40[1] == 18)
          {
            if (*v40[0] == 0x6E6569646172473CLL && *(v40[0] + 1) == 0x7079546D726F4E74 && *(v40[0] + 8) == 15973)
            {
              goto LABEL_83;
            }

LABEL_38:
            if (v40[1] != 9)
            {
              goto LABEL_89;
            }

            v19 = v40[0];
            v20 = *v40[0] == 0x6461724778614D3CLL && *(v40[0] + 8) == 62;
            v12 = (a1 + 248);
            if (!v20)
            {
              goto LABEL_64;
            }

            goto LABEL_70;
          }

          if (v40[1] != 9)
          {
            goto LABEL_38;
          }

          v16 = *v40[0] == 0x6D726F4E78614D3CLL && *(v40[0] + 8) == 62;
          v12 = (a1 + 252);
          if (!v16)
          {
            goto LABEL_38;
          }
        }
      }
    }

    else if (HIBYTE(v40[2]) > 0x11u)
    {
      if (HIBYTE(v40[2]) == 18)
      {
        if (v40[0] != 0x6E6569646172473CLL || v40[1] != 0x7079546D726F4E74 || LOWORD(v40[2]) != 15973)
        {
LABEL_89:
          kaldi::KaldiErrorMessage::KaldiErrorMessage(__p, "ReadData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", 231);
          v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "unrecognized config token ", 26);
          if (SHIBYTE(v40[2]) >= 0)
          {
            v35 = v40;
          }

          else
          {
            v35 = v40[0];
          }

          if (SHIBYTE(v40[2]) >= 0)
          {
            v36 = HIBYTE(v40[2]);
          }

          else
          {
            v36 = v40[1];
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, v35, v36);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
        }

LABEL_83:
        __p[0] = 0;
        __p[1] = 0;
        v39 = 0;
        kaldi::ReadToken(a2, a3, __p, v9, v10);
        *(a1 + 244) = kaldi::nnet1::Component::MarkerToGradientNormType(__p);
        if (SHIBYTE(v39) < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_71;
      }

      if (HIBYTE(v40[2]) != 19)
      {
        goto LABEL_89;
      }

      v21 = v40[0] == 0x61654C736169423CLL && v40[1] == 0x6F43657461526E72;
      v22 = v21 && *(&v40[1] + 3) == 0x3E66656F43657461;
      v12 = (a1 + 240);
      if (!v22)
      {
        goto LABEL_89;
      }
    }

    else if (HIBYTE(v40[2]) == 9)
    {
      v23 = v40[0] == 0x6D726F4E78614D3CLL && LOBYTE(v40[1]) == 62;
      v12 = (a1 + 252);
      if (!v23)
      {
        v24 = v40[0] == 0x6461724778614D3CLL && LOBYTE(v40[1]) == 62;
        v12 = (a1 + 248);
        if (!v24)
        {
          v19 = v40;
LABEL_64:
          v25 = *v19;
          v26 = *(v19 + 8);
          if (v25 != 0x78616D74666F533CLL || v26 != 62)
          {
            goto LABEL_89;
          }

          *(a1 + 128) = 1;
          goto LABEL_71;
        }
      }
    }

    else
    {
      if (HIBYTE(v40[2]) != 15)
      {
        goto LABEL_89;
      }

      v11 = v40[0] == 0x61526E7261654C3CLL && *(v40 + 7) == 0x3E66656F43657461;
      v12 = (a1 + 236);
      if (!v11)
      {
        goto LABEL_89;
      }
    }

LABEL_70:
    kaldi::ReadBasicType<float>(a2, a3, v12);
LABEL_71:
    if (SHIBYTE(v40[2]) < 0)
    {
      operator delete(v40[0]);
    }
  }

  (***(a1 + 112))(*(a1 + 112), a2, a3, a4);
  (***(a1 + 120))();
  *(a1 + 16) = 0;
  if (*(kaldi::nnet1::AffineTransform::Linearity(a1) + 20) != *(a1 + 12))
  {
    kaldi::KaldiAssertFailure_("ReadData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", 0xF2, "Linearity().NumRows() == output_dim_", v30);
  }

  if (*(kaldi::nnet1::AffineTransform::Linearity(a1) + 16) != *(a1 + 8))
  {
    kaldi::KaldiAssertFailure_("ReadData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", 0xF3, "Linearity().NumCols() == input_dim_", v31);
  }

  result = kaldi::nnet1::AffineTransform::Bias(a1);
  if (*(result + 16) != *(a1 + 12))
  {
    kaldi::KaldiAssertFailure_("ReadData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", 0xF4, "Bias().Dim() == output_dim_", v33);
  }

  return result;
}

void sub_1C3059394(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
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

void *kaldi::nnet1::AffineTransform::WriteConfig(uint64_t a1, void *a2, const char *a3, uint64_t a4, const char *a5)
{
  kaldi::WriteToken(a2, a3, "<LearnRateCoef>", a4, a5);
  v8 = *(a1 + 236);
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<BiasLearnRateCoef>", v9, v10);
  v11 = *(a1 + 240);
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<MaxNorm>", v12, v13);
  v14 = *(a1 + 252);
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<GradientNormType>", v15, v16);
  kaldi::nnet1::Component::TypeToMarker(*(a1 + 244), &__p);
  kaldi::WriteToken(a2, a3, &__p, v17, v18);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  kaldi::WriteToken(a2, a3, "<MaxGrad>", v19, v20);
  v21 = *(a1 + 248);
  result = kaldi::WriteBasicType<float>(a2, a3);
  if (*(a1 + 128) == 1)
  {
    return kaldi::WriteToken(a2, a3, "<Softmax>", v23, v24);
  }

  return result;
}

void sub_1C30594F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::nnet1::AffineTransform::NumParams(kaldi::nnet1::AffineTransform *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *(this + 14);
  if (!v5)
  {
    kaldi::KaldiAssertFailure_("Linearity", "../engine/common/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", 0x252, "linearity_", a5);
  }

  v6 = *(this + 15);
  if (!v6)
  {
    kaldi::KaldiAssertFailure_("Bias", "../engine/common/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", 0x256, "bias_", a5);
  }

  return (*(v6 + 16) + *(v5 + 16) * *(v5 + 20));
}

_DWORD *kaldi::nnet1::AffineTransform::GetParams(void *a1, uint64_t a2)
{
  v4 = (*(*a1 + 176))(a1);
  kaldi::Vector<float>::Resize(a2, v4, 0, v5, v6);
  v10 = a1[14];
  if (!v10)
  {
    kaldi::KaldiAssertFailure_("Linearity", "../engine/common/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", 0x252, "linearity_", v9);
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
  v14 = a1[15];
  if (!v14)
  {
    kaldi::KaldiAssertFailure_("Bias", "../engine/common/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", 0x256, "bias_", v9);
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

_DWORD *kaldi::nnet1::AffineTransform::SetParams(kaldi::nnet1::AffineTransform *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4 != (*(*a1 + 176))(a1))
  {
    kaldi::KaldiAssertFailure_("SetParams", "../engine/common/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", 0x129, "wei_src.Dim() == NumParams()", v5);
  }

  v6 = *(kaldi::nnet1::AffineTransform::Linearity(a1) + 20);
  v7 = *(kaldi::nnet1::AffineTransform::Linearity(a1) + 16) * v6;
  v8 = kaldi::nnet1::AffineTransform::Linearity(a1);
  v16 = 0;
  v17 = 0;
  if (v7 > *(a2 + 8) || (v15 = *a2, LODWORD(v16) = v7, kaldi::CuMatrixBase<float>::CopyRowsFromVec(v8, &v15), v10 = kaldi::nnet1::AffineTransform::Bias(a1), v13 = *(kaldi::nnet1::AffineTransform::Bias(a1) + 16), v16 = 0, v17 = 0, (v13 + v7) > *(a2 + 8)))
  {
    kaldi::KaldiAssertFailure_("SubVector", "../engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.h", 0x264, "static_cast<UnsignedMatrixIndexT>(origin) + static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v9);
  }

  v15 = (*a2 + 4 * v7);
  LODWORD(v16) = v13;
  return kaldi::CuVectorBase<float>::CopyFromVec<float>(v10, &v15, v11, v12, v9);
}

float kaldi::nnet1::AffineTransform::GetNormalizedLearningRate(kaldi::nnet1::AffineTransform *this, int a2)
{
  if ((*(this + 84) & 1) == 0)
  {
    return *(this + 14);
  }

  v2 = *(this + 35);
  v3 = *(this + 36) - v2;
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

float kaldi::nnet1::AffineTransform::SumParams(kaldi::nnet1::AffineTransform *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *(this + 14);
  if (!v6)
  {
    kaldi::KaldiAssertFailure_("Linearity", "../engine/common/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", 0x252, "linearity_", a5);
  }

  v8 = kaldi::CuMatrixBase<float>::Sum(v6, a2, a3, a4, a5);
  v9 = *(this + 15);
  if (!v9)
  {
    kaldi::KaldiAssertFailure_("Bias", "../engine/common/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", 0x256, "bias_", v7);
  }

  v10 = v8;
  v11 = kaldi::CuVectorBase<float>::Sum(v9);
  return v10 + *&v11;
}

uint64_t kaldi::nnet1::AffineTransform::PerturbParams(kaldi::nnet1::AffineTransform *this, float a2)
{
  v4 = *(kaldi::nnet1::AffineTransform::Linearity(this) + 20);
  v5 = kaldi::nnet1::AffineTransform::Linearity(this);
  kaldi::CuMatrix<float>::CuMatrix(v19, v4, *(v5 + 16), 1u, 0, 0);
  kaldi::CuMatrixBase<float>::SetRandn(v19);
  v6 = kaldi::nnet1::AffineTransform::Linearity(this);
  kaldi::CuMatrixBase<float>::AddMat(v6, v19, 111, v7, v8, a2, 1.0);
  v9 = *(kaldi::nnet1::AffineTransform::Bias(this) + 16);
  memset(&v18[1], 0, 24);
  v18[0] = &unk_1F42BFF70;
  kaldi::CuVector<float>::Resize(v18, v9, 1u, v10, v11);
  kaldi::CuVectorBase<float>::SetRandn(v18);
  v12 = kaldi::nnet1::AffineTransform::Bias(this);
  *&v13 = a2;
  kaldi::CuVectorBase<float>::AddVec(v12, v18, v14, v15, v16, v13, 1.0);
  kaldi::CuVector<float>::~CuVector(v18);
  return kaldi::CuMatrix<float>::~CuMatrix(v19);
}

void sub_1C30599AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  kaldi::CuMatrix<float>::~CuMatrix(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::AffineTransform::GetGradient(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = (*(*a1 + 16))(a1);
  (*(*v8 + 232))(v8, a2, a3, 0, 0);
  v10 = a1[14];
  if (!v10)
  {
    kaldi::KaldiAssertFailure_("Linearity", "../engine/common/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", 0x252, "linearity_", v9);
  }

  v11 = *(v10 + 16) * *(v10 + 20);
  v12 = (*(*a1 + 176))(a1);
  kaldi::Vector<float>::Resize(a4, v12, 0, v13, v14);
  v28 = 0;
  v29 = 0;
  if (v11 > *(a4 + 8))
  {
    goto LABEL_6;
  }

  v27 = *a4;
  LODWORD(v28) = v11;
  v16 = kaldi::nnet1::AffineTransform::LinearityCorr(v8, 0);
  kaldi::VectorBase<float>::CopyRowsFromMat(&v27, v16, v17, v18, v19);
  v20 = a1[15];
  if (!v20)
  {
    kaldi::KaldiAssertFailure_("Bias", "../engine/common/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", 0x256, "bias_", v15);
  }

  v21 = *(v20 + 16);
  v28 = 0;
  v29 = 0;
  if ((v21 + v11) > *(a4 + 8))
  {
LABEL_6:
    kaldi::KaldiAssertFailure_("SubVector", "../engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.h", 0x264, "static_cast<UnsignedMatrixIndexT>(origin) + static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v15);
  }

  v27 = (*a4 + 4 * v11);
  LODWORD(v28) = v21;
  v22 = kaldi::nnet1::AffineTransform::BiasCorr(v8, 0);
  kaldi::CuVectorBase<float>::CopyToVec<float>(v22, &v27, v23, v24, v25);
  return (*(*v8 + 8))(v8);
}

void kaldi::nnet1::AffineTransform::AccumGradients(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  kaldi::nnet1::AffineTransform::EnsureCorrs(a1);
  *(kaldi::nnet1::AffineTransform::LinearityCorr(a1, a5) + 32) = a4;
  *(kaldi::nnet1::AffineTransform::BiasCorr(a1, a5) + 24) = a4;
  v10 = *(a1 + 60);
  *(*(a1 + 256) + 4 * a5) = *(a2 + 20);
  v11 = *(a1 + 352);
  if (v11 == *(a1 + 360) || !*(v11 + 48 * a5 + 20))
  {
    v13 = kaldi::nnet1::AffineTransform::LinearityCorr(a1, a5);
    kaldi::CuMatrixBase<float>::AddMatMat(v13, a3, 112, a2, 0x6F);
  }

  else
  {
    v12 = kaldi::nnet1::AffineTransform::LinearityCorr(a1, a5);
    if (v10 == 0.0)
    {
      kaldi::CuMatrixBase<float>::SetZero(v12);
    }

    else
    {
      kaldi::CuMatrixBase<float>::Scale(v12, v10);
    }

    v14 = kaldi::nnet1::AffineTransform::LinearityCorr(a1, a5);
    kaldi::CuMatrixBase<float>::AddMatMatMasked(v14, a3, 112, a2, 0x6F, *(a1 + 352) + 48 * a5);
  }

  v15 = kaldi::nnet1::AffineTransform::BiasCorr(a1, a5);

  kaldi::CuVectorBase<float>::AddRowSumMat(v15, a3, v16, v17, v18);
}

uint64_t kaldi::nnet1::AffineTransform::SetGradientNormalization(uint64_t result, int a2, float a3)
{
  *(result + 248) = a3;
  *(result + 244) = a2;
  *(result + 232) = 0;
  return result;
}

void kaldi::nnet1::AffineTransform::NormalizeGradients(kaldi::nnet1::AffineTransform *this, float a2, int a3)
{
  v4 = a2;
  v6 = *(this + 61);
  if (v6 == 3)
  {
    if (a2 >= 0.0 && a2 <= 1.0)
    {
      v11 = kaldi::nnet1::AffineTransform::LinearityCorr(this, a3);
      kaldi::nnet1::UpdatableComponent::RmspropGradient(v11, *(this + 23) + 48 * a3, v4);
      v12 = kaldi::nnet1::AffineTransform::BiasCorr(this, a3);
      v16 = *(this + 26) + 32 * a3;

      kaldi::nnet1::UpdatableComponent::RmspropGradient(v12, v16, v4, v13, v14, v15);
    }
  }

  else if (v6 == 2)
  {
    if (a2 > 0.0)
    {
      v9 = a3;
      if (*(this + 84))
      {
        v4 = *(*(this + 32) + 4 * a3) * a2;
      }

      v17 = kaldi::nnet1::AffineTransform::LinearityCorr(this, a3);
      kaldi::nnet1::UpdatableComponent::LimitL2NormGradient(v17, (*(this + 23) + 48 * v9), v4, v18, v19, v20);
      v21 = kaldi::nnet1::AffineTransform::BiasCorr(this, a3);
      v25 = (*(this + 26) + 32 * v9);

      kaldi::nnet1::UpdatableComponent::LimitL2NormGradient(v21, v25, v22, v23, v24, v4);
    }
  }

  else if (v6 == 1 && a2 > 0.0)
  {
    if (*(this + 84) == 1)
    {
      v4 = *(*(this + 32) + 4 * a3) * a2;
    }

    v7 = kaldi::nnet1::AffineTransform::LinearityCorr(this, a3);
    kaldi::nnet1::UpdatableComponent::ClipGradient(v7, v4);
    v8 = kaldi::nnet1::AffineTransform::BiasCorr(this, a3);

    kaldi::nnet1::UpdatableComponent::ClipGradient(v8, v4);
  }
}

void kaldi::nnet1::AffineTransform::UpdateWeights(kaldi::nnet1::AffineTransform *this, void *a2, int a3)
{
  kaldi::nnet1::AffineTransform::EnsureCorrs(this);
  v6 = *(this + 16);
  v7 = *(this + 17);
  v8 = *(this + 18);
  v9 = *(this + 19);
  *(kaldi::nnet1::AffineTransform::Linearity(this) + 32) = a2;
  *(kaldi::nnet1::AffineTransform::Bias(this) + 24) = a2;
  v11 = *(this + 20);
  if (a3 >= 0)
  {
    v12 = a3;
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
    kaldi::KaldiAssertFailure_("UpdateWeights", "../engine/common/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", 0x1BA, "batch_idx <= opts_.num_subbatches", v10);
  }

  *(kaldi::nnet1::AffineTransform::LinearityCorr(this, v13) + 32) = a2;
  *(kaldi::nnet1::AffineTransform::BiasCorr(this, v13) + 24) = a2;
  *(*(this + 23) + 48 * v13 + 32) = a2;
  *(*(this + 26) + 32 * v13 + 24) = a2;
  if (v13 == *(this + 20))
  {
    v18 = kaldi::nnet1::AffineTransform::LinearityCorr(this, v13);
    v19 = kaldi::nnet1::AffineTransform::LinearityCorr(this, 0);
    kaldi::CuMatrixBase<float>::AddMat(v18, v19, 111, v20, v21, 1.0, 0.0);
    v22 = kaldi::nnet1::AffineTransform::BiasCorr(this, v13);
    v23 = kaldi::nnet1::AffineTransform::BiasCorr(this, 0);
    LODWORD(v24) = 1.0;
    kaldi::CuVectorBase<float>::AddVec(v22, v23, v25, v26, v27, v24, 0.0);
    if (*(this + 20) > 1)
    {
      v28 = 1;
      do
      {
        v29 = kaldi::nnet1::AffineTransform::LinearityCorr(this, v13);
        v30 = kaldi::nnet1::AffineTransform::LinearityCorr(this, v28);
        kaldi::CuMatrixBase<float>::AddMat(v29, v30, 111, v31, v32, 1.0, 1.0);
        v33 = kaldi::nnet1::AffineTransform::BiasCorr(this, v13);
        v34 = kaldi::nnet1::AffineTransform::BiasCorr(this, v28);
        LODWORD(v35) = 1.0;
        kaldi::CuVectorBase<float>::AddVec(v33, v34, v36, v37, v38, v35, 1.0);
        ++v28;
      }

      while (v28 < *(this + 20));
    }

    v39 = *(this + 32);
    v39[v13] = 0;
    if (v13 >= 1)
    {
      v40 = 0;
      v41 = v13;
      v42 = v39;
      do
      {
        v43 = *v42++;
        v40 += v43;
        v39[v13] = v40;
        --v41;
      }

      while (v41);
    }
  }

  v44 = *(this + 14);
  if (*(this + 84) == 1)
  {
    *v17.i32 = *(*(this + 32) + 4 * v13);
    v44 = v44 / *v17.i32;
  }

  v45 = *(this + 35);
  if (v13 >= ((*(this + 36) - v45) >> 2))
  {
    LODWORD(v85[0]) = 2143289344;
    std::vector<float>::resize(this + 35, v13 + 1, v85, v17);
    v45 = *(this + 35);
  }

  *(v45 + 4 * v13) = v44;
  if (*(this + 62) >= 0.0)
  {
    (*(*this + 248))(this, v13);
  }

  if (v6 != 0.0)
  {
    v46 = kaldi::nnet1::AffineTransform::Linearity(this);
    v47 = -(v44 * v6) * *(*(this + 32) + 4 * v13);
    v48 = kaldi::nnet1::AffineTransform::Linearity(this);
    kaldi::CuMatrixBase<float>::AddMat(v46, v48, 111, v49, v50, v47, 1.0);
  }

  if (v7 != 0.0)
  {
    v51 = kaldi::nnet1::AffineTransform::Linearity(this);
    v52 = kaldi::nnet1::AffineTransform::LinearityCorr(this, v13);
    kaldi::cu::RegularizeL1<float>(v51, v52, (v7 * v44) * *(*(this + 32) + 4 * v13), v44, v53, v54, v55);
  }

  if (v8 > 0.0)
  {
    if (*(this + 20) >= 2)
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v85, "UpdateWeights", "../engine/common/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", 481);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v85, "the multi batch gradient quantization does not work yet");
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v85);
    }

    if (*(this + 48) == *(this + 47))
    {
      kaldi::nnet1::AffineTransform::InitResidualAggregator(this, (this + 376));
    }

    kaldi::nnet1::QuantizerResidualAggregator::Quantize((this + 376), v9, v8, v14, v15, v16);
  }

  kaldi::nnet1::AffineTransform::ApplyCorr(this, v44, v13);
  if (*(this + 63) > 0.0)
  {
    *(this + 42) = a2;
    v56 = kaldi::nnet1::AffineTransform::Linearity(this);
    kaldi::CuMatrixBase<float>::CopyFromMat<float>(this + 76, v56, 111, v57, v58);
    v59 = kaldi::nnet1::AffineTransform::Linearity(this);
    kaldi::CuMatrixBase<float>::MulElements(this + 304, v59, v60, v61, v62);
    v63 = *(this + 3);
    v85[2] = 0;
    v86 = 0;
    v85[0] = &unk_1F42BFF70;
    v85[1] = 0;
    kaldi::CuVector<float>::Resize(v85, v63, 0, v64, v65);
    v86 = a2;
    kaldi::CuVectorBase<float>::AddColSumMat(v85, this + 304, v66, v67, v68);
    kaldi::CuVectorBase<float>::ApplyPow(v85, 0.5);
    kaldi::CuVector<float>::CuVector(v84, v85, v69, v70, v71);
    v72 = 1.0 / *(this + 63);
    kaldi::CuVectorBase<float>::Scale(v84);
    kaldi::CuVectorBase<float>::ApplyFloor(v84, 1.0);
    kaldi::CuVectorBase<float>::InvertElements(v84);
    v73 = kaldi::nnet1::AffineTransform::Linearity(this);
    kaldi::CuMatrixBase<float>::MulRowsVec(v73, v84, v74, v75, v76);
    v77 = kaldi::nnet1::AffineTransform::Bias(this);
    kaldi::CuVectorBase<float>::ApplyMaxNorm(v77, *(this + 63), v78, v79, v80, v81);
    kaldi::CuVector<float>::~CuVector(v84);
    kaldi::CuVector<float>::~CuVector(v85);
  }

  v82 = *(this + 32);
  if (v13 == *(this + 20))
  {
    v83 = *(this + 33);
    if (v82 != v83)
    {
      bzero(v82, v83 - v82);
    }
  }

  else
  {
    *&v82[4 * v13] = 0;
  }
}

void sub_1C305A3BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  kaldi::CuVector<float>::~CuVector(va);
  _Unwind_Resume(a1);
}

__n128 kaldi::nnet1::UpdatableComponent::SetTrainOptions(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 8);
  *(a1 + 71) = *(a2 + 23);
  *(a1 + 56) = result;
  return result;
}

void non-virtual thunk tokaldi::nnet1::AffineTransform::~AffineTransform(kaldi::nnet1::AffineTransform *this)
{
  kaldi::nnet1::AffineTransform::~AffineTransform((this - 88));
}

{
  kaldi::nnet1::AffineTransform::~AffineTransform((this - 88));

  JUMPOUT(0x1C692AE10);
}

{
  kaldi::nnet1::AffineTransform::~AffineTransform((this - 96));
}

{
  kaldi::nnet1::AffineTransform::~AffineTransform((this - 96));

  JUMPOUT(0x1C692AE10);
}

{
  kaldi::nnet1::AffineTransform::~AffineTransform((this - 104));
}

{
  kaldi::nnet1::AffineTransform::~AffineTransform((this - 104));

  JUMPOUT(0x1C692AE10);
}

void kaldi::nnet1::QuantizerResidualAggregator::~QuantizerResidualAggregator(void **this)
{
  v2 = this + 6;
  std::vector<kaldi::CuSubMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this + 3;
  std::vector<kaldi::CuSubMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v2);
}

void std::vector<kaldi::CuSubMatrix<float>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 40;
      v7 = v4 - 40;
      v8 = v4 - 40;
      do
      {
        v9 = *v8;
        v8 -= 40;
        (*(v9 + 16))(v7);
        v6 -= 40;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 32;
      v7 = v4 - 32;
      v8 = v4 - 32;
      do
      {
        v9 = *v8;
        v8 -= 32;
        (*(v9 + 8))(v7);
        v6 -= 32;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::clear[abi:ne200100](void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 16))(result);
    }
  }

  v1[1] = v2;
  return result;
}

void std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::clear[abi:ne200100](void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 24))(result);
    }
  }

  v1[1] = v2;
  return result;
}

kaldi::nnet1::AffineTransform *kaldi::nnet1::AffineTransform::AffineTransform(kaldi::nnet1::AffineTransform *this, const kaldi::nnet1::AffineTransform *a2)
{
  *this = &unk_1F42C1850;
  v4 = *(a2 + 1);
  *(this + 8) = *(a2 + 8);
  *(this + 1) = v4;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  std::vector<kaldi::CuWorkspace *>::__init_with_size[abi:ne200100]<kaldi::CuWorkspace **,kaldi::CuWorkspace **>(this + 24, *(a2 + 3), *(a2 + 4), (*(a2 + 4) - *(a2 + 3)) >> 3);
  *this = &unk_1F42C2E78;
  *(this + 6) = &unk_1F42CB198;
  v5 = *(a2 + 56);
  *(this + 71) = *(a2 + 71);
  *(this + 56) = v5;
  *this = &unk_1F42BFFC0;
  *(this + 11) = &unk_1F42C0100;
  *(this + 12) = &unk_1F42C0128;
  *(this + 13) = &unk_1F42C0150;
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 128) = *(a2 + 128);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::vector[abi:ne200100](this + 17, (*(a2 + 18) - *(a2 + 17)) >> 3);
  std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::vector[abi:ne200100](this + 20, (*(a2 + 21) - *(a2 + 20)) >> 3);
  *(this + 23) = 0;
  *(this + 24) = 0;
  *(this + 25) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(this + 184, *(a2 + 23), *(a2 + 24), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 24) - *(a2 + 23)) >> 4));
  *(this + 26) = 0;
  *(this + 27) = 0;
  *(this + 28) = 0;
  std::vector<kaldi::CuVector<float>>::__init_with_size[abi:ne200100]<kaldi::CuVector<float>*,kaldi::CuVector<float>*>(this + 208, *(a2 + 26), *(a2 + 27), (*(a2 + 27) - *(a2 + 26)) >> 5);
  *(this + 232) = *(a2 + 232);
  *(this + 236) = *(a2 + 236);
  *(this + 61) = *(a2 + 61);
  *(this + 31) = *(a2 + 31);
  *(this + 33) = 0;
  *(this + 34) = 0;
  *(this + 32) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(this + 256, *(a2 + 32), *(a2 + 33), (*(a2 + 33) - *(a2 + 32)) >> 2);
  *(this + 35) = 0;
  *(this + 36) = 0;
  *(this + 37) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(this + 280, *(a2 + 35), *(a2 + 36), (*(a2 + 36) - *(a2 + 35)) >> 2);
  kaldi::CuMatrix<float>::CuMatrix(this + 304, a2 + 304, 111);
  *(this + 44) = 0;
  *(this + 45) = 0;
  *(this + 46) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(this + 352, *(a2 + 44), *(a2 + 45), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 45) - *(a2 + 44)) >> 4));
  *(this + 55) = 0;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  *(this + 376) = 0u;
  *(this + 392) = 0u;
  if (*(this + 16) == 1)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v17, "AffineTransform", "../engine/common/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", 103);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "deep copy constructor not implemented in the case of vectorized_weights.", 72);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v17);
  }

  v6 = *(a2 + 14);
  if (v6)
  {
    kaldi::NewCuSubOrMat<float>(v6, 0);
  }

  if (*(a2 + 15))
  {
    v7 = *(this + 16);
    kaldi::NewCuSubOrVec<float>();
  }

  v9 = *(this + 17);
  v8 = *(this + 18);
  if (v8 != v9)
  {
    v10 = 0;
    do
    {
      if (*(*(a2 + 17) + 8 * v10))
      {
        v11 = kaldi::nnet1::AffineTransform::LinearityCorr(a2, v10);
        kaldi::NewCuSubOrMat<float>(v11, *(this + 16));
      }

      ++v10;
    }

    while (v10 < (v8 - v9) >> 3);
  }

  v13 = *(this + 20);
  v12 = *(this + 21);
  if (v12 != v13)
  {
    v14 = 0;
    do
    {
      if (*(*(a2 + 20) + 8 * v14))
      {
        kaldi::nnet1::AffineTransform::BiasCorr(a2, v14);
        v15 = *(this + 16);
        kaldi::NewCuSubOrVec<float>();
      }

      ++v14;
    }

    while (v14 < (v12 - v13) >> 3);
  }

  if (*(a2 + 48) != *(a2 + 47))
  {
    kaldi::nnet1::AffineTransform::InitResidualAggregator(this, (this + 376));
  }

  return this;
}

void sub_1C305AF40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  kaldi::nnet1::QuantizerResidualAggregator::~QuantizerResidualAggregator(v13);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a12);
  kaldi::CuMatrix<float>::~CuMatrix(v12 + 304);
  v16 = *(v12 + 35);
  if (v16)
  {
    *(v12 + 36) = v16;
    operator delete(v16);
  }

  v17 = *(v12 + 32);
  if (v17)
  {
    *(v12 + 33) = v17;
    operator delete(v17);
  }

  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&a12);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a12);
  std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a12);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a12);
  v18 = *(v12 + 15);
  *(v12 + 15) = 0;
  if (v18)
  {
    (*(*v18 + 16))(v18);
  }

  v19 = *v14;
  *v14 = 0;
  if (v19)
  {
    (*(*v19 + 24))(v19);
  }

  kaldi::CuMatrixBase<float>::~CuMatrixBase(a9);
  kaldi::CuMatrixBase<float>::~CuMatrixBase(a10);
  kaldi::CuMatrixBase<float>::~CuMatrixBase(a11);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v12);
  _Unwind_Resume(a1);
}

void kaldi::NewCuSubOrMat<float>(uint64_t a1, int a2)
{
  if (a2)
  {
    operator new();
  }

  operator new();
}

uint64_t kaldi::nnet1::AffineTransform::LinearityCorr(kaldi::nnet1::AffineTransform *this, int a2)
{
  v2 = *(this + 17);
  if (a2 >= ((*(this + 18) - v2) >> 3))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v4, "LinearityCorr", "../engine/common/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", 718);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "linearity_corr_.size() > batch_idx");
    goto LABEL_6;
  }

  result = *(v2 + 8 * a2);
  if (!result)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v4, "LinearityCorr", "../engine/common/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", 719);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "linearity_corr_[batch_idx]");
LABEL_6:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  return result;
}

{
  v2 = *(this + 17);
  if (a2 >= ((*(this + 18) - v2) >> 3))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v4, "LinearityCorr", "../engine/common/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", 723);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "linearity_corr_.size() > batch_idx");
    goto LABEL_6;
  }

  result = *(v2 + 8 * a2);
  if (!result)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v4, "LinearityCorr", "../engine/common/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", 724);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "linearity_corr_[batch_idx]");
LABEL_6:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  return result;
}

uint64_t kaldi::nnet1::AffineTransform::BiasCorr(kaldi::nnet1::AffineTransform *this, int a2)
{
  v2 = *(this + 20);
  if (a2 >= ((*(this + 21) - v2) >> 3))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v4, "BiasCorr", "../engine/common/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", 728);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "bias_corr_.size() > batch_idx");
    goto LABEL_6;
  }

  result = *(v2 + 8 * a2);
  if (!result)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v4, "BiasCorr", "../engine/common/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", 729);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "bias_corr_[batch_idx]");
LABEL_6:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  return result;
}

{
  v2 = *(this + 20);
  if (a2 >= ((*(this + 21) - v2) >> 3))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v4, "BiasCorr", "../engine/common/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", 733);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "bias_corr_.size() > batch_idx");
    goto LABEL_6;
  }

  result = *(v2 + 8 * a2);
  if (!result)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v4, "BiasCorr", "../engine/common/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", 734);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "bias_corr_[batch_idx]");
LABEL_6:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  return result;
}

uint64_t kaldi::nnet1::AffineTransform::InitResidualAggregator(kaldi::nnet1::AffineTransform *this, kaldi::nnet1::QuantizerResidualAggregator *a2)
{
  kaldi::nnet1::AffineTransform::EnsureCorrs(this);
  v4 = kaldi::nnet1::AffineTransform::LinearityCorr(this, ((*(this + 18) - *(this + 17)) >> 3) - 1);
  kaldi::nnet1::QuantizerResidualAggregator::PushSetup(a2, v4);
  v5 = kaldi::nnet1::AffineTransform::BiasCorr(this, ((*(this + 21) - *(this + 20)) >> 3) - 1);

  return kaldi::nnet1::QuantizerResidualAggregator::PushSetup(a2, v5);
}

void *std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<kaldi::CuWorkspace *>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void *std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<kaldi::CuWorkspace *>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

uint64_t std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<kaldi::CuMatrix<float>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C305B560(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<kaldi::CuMatrix<float>>,kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      kaldi::CuMatrix<float>::CuMatrix(a4 + v7, v6, 111);
      v6 += 48;
      v7 += 48;
    }

    while (v6 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_1C305B5E4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::CuMatrix<float>>,kaldi::CuMatrix<float>*>();
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<kaldi::CuVector<float>>::__init_with_size[abi:ne200100]<kaldi::CuVector<float>*,kaldi::CuVector<float>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<kaldi::CuVector<float>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C305B668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<kaldi::CuVector<float>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuVector<float>>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuVector<float>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<kaldi::CuVector<float>>,kaldi::CuVector<float>*,kaldi::CuVector<float>*,kaldi::CuVector<float>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = a4;
  if (a2 != a3)
  {
    v7 = a2;
    v8 = 0;
    do
    {
      kaldi::CuVector<float>::CuVector(v5 + v8, v7, a3, a4, a5);
      v7 += 32;
      v8 += 32;
    }

    while (v7 != a3);
    v5 += v8;
  }

  return v5;
}

void sub_1C305B76C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<kaldi::CuVector<float>>,kaldi::CuVector<float>*,kaldi::CuVector<float>*,kaldi::CuVector<float>*>();
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::AffineTransform::EnsureCorrs(kaldi::nnet1::AffineTransform *this)
{
  if ((*(this + 232) & 1) == 0)
  {
    v2 = *(this + 61);
    v3 = *(this + 20);
    if (v3 > 1)
    {
      v4 = (v3 + 1);
    }

    else
    {
      v4 = 1;
    }

    std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::resize(this + 17, v4);
    std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::resize(this + 20, v4);
    std::vector<kaldi::CuMatrix<float>>::resize(this + 23, v4);
    std::vector<kaldi::CuVector<float>>::resize(this + 26, v4, v5, v6, v7);
    if (v4 >= 1)
    {
      operator new();
    }

    std::vector<float>::resize((this + 256), v4);
    if (*(this + 63) > 0.0)
    {
      v8 = *(kaldi::nnet1::AffineTransform::Linearity(this) + 20);
      v9 = kaldi::nnet1::AffineTransform::Linearity(this);
      kaldi::CuMatrix<float>::Resize(this + 304, v8, *(v9 + 16), 1u, 0);
    }

    *(this + 232) = 1;
  }
}

uint64_t kaldi::nnet1::QuantizerResidualAggregator::PushSetup(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  v4 = a1[1];
  v9 = 0u;
  v8 = 0u;
  v7 = &unk_1F42BFED8;
  v10 = 0;
  std::vector<kaldi::CuMatrix<float>>::push_back[abi:ne200100](a1, &v7);
  kaldi::CuMatrix<float>::~CuMatrix(&v7);
  kaldi::CuMatrix<float>::Resize(*a1 + v4 - v5, *(a2 + 20), *(a2 + 16), 0, 0);
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v7, a2, 0, *(a2 + 20), 0, *(a2 + 16));
  std::vector<kaldi::CuSubMatrix<float>>::push_back[abi:ne200100](a1 + 3, &v7);
  v7 = &unk_1F42BFE90;
  v8 = 0u;
  v9 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&v7);
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v7, a2, 0, *(a2 + 20), 0, *(a2 + 16));
  std::vector<kaldi::CuSubMatrix<float>>::push_back[abi:ne200100](a1 + 6, &v7);
  v7 = &unk_1F42BFE90;
  v8 = 0u;
  v9 = 0u;
  return kaldi::CuMatrixBase<float>::~CuMatrixBase(&v7);
}

{
  v5 = *a1;
  v4 = a1[1];
  v13 = 0u;
  v12 = 0u;
  v11 = &unk_1F42BFED8;
  v14 = 0;
  std::vector<kaldi::CuMatrix<float>>::push_back[abi:ne200100](a1, &v11);
  kaldi::CuMatrix<float>::~CuMatrix(&v11);
  kaldi::CuMatrix<float>::Resize(*a1 + v4 - v5, 1, *(a2 + 16), 0, 0);
  v6 = *(a2 + 16);
  v7 = *(a2 + 8);
  v11 = &unk_1F42BFE90;
  *&v12 = v7;
  *(&v12 + 1) = v6 | 0x100000000;
  LODWORD(v13) = v6;
  DWORD1(v13) = v6;
  *(&v13 + 1) = *(a2 + 24);
  std::vector<kaldi::CuSubMatrix<float>>::push_back[abi:ne200100](a1 + 3, &v11);
  v11 = &unk_1F42BFE90;
  v12 = 0u;
  v13 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&v11);
  v8 = *(a2 + 16);
  v9 = *(a2 + 8);
  v11 = &unk_1F42BFE90;
  *&v12 = v9;
  *(&v12 + 1) = v8 | 0x100000000;
  LODWORD(v13) = v8;
  DWORD1(v13) = v8;
  *(&v13 + 1) = *(a2 + 24);
  std::vector<kaldi::CuSubMatrix<float>>::push_back[abi:ne200100](a1 + 6, &v11);
  v11 = &unk_1F42BFE90;
  v12 = 0u;
  v13 = 0u;
  return kaldi::CuMatrixBase<float>::~CuMatrixBase(&v11);
}

void sub_1C305BB8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, __int128 a10, __int128 a11)
{
  a9 = &unk_1F42BFE90;
  a10 = 0u;
  a11 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&a9);
  _Unwind_Resume(a1);
}

void sub_1C305BE18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 8) = 0u;
  *(v9 + 24) = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = (v3 - *a1) >> 3;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *a1 + 8 * a2;
      while (v3 != v6)
      {
        v8 = *--v3;
        v7 = v8;
        *v3 = 0;
        if (v8)
        {
          (*(*v7 + 24))(v7);
        }
      }

      a1[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__append(a1, v5);
  }
}

void std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = (v3 - *a1) >> 3;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *a1 + 8 * a2;
      while (v3 != v6)
      {
        v8 = *--v3;
        v7 = v8;
        *v3 = 0;
        if (v8)
        {
          (*(*v7 + 16))(v7);
        }
      }

      a1[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::__append(a1, v5);
  }
}

uint64_t *std::vector<kaldi::CuVector<float>>::resize(uint64_t *result, unint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = result;
  v6 = result[1];
  v7 = (v6 - *result) >> 5;
  if (a2 <= v7)
  {
    if (a2 < v7)
    {
      v9 = *result + 32 * a2;
      if (v6 != v9)
      {
        v10 = v6 - 32;
        v11 = (v6 - 32);
        v12 = (v6 - 32);
        do
        {
          v13 = *v12;
          v12 -= 4;
          result = (*(v13 + 8))(v11);
          v10 -= 32;
          v14 = v11 == v9;
          v11 = v12;
        }

        while (!v14);
      }

      v5[1] = v9;
    }
  }

  else
  {
    v8 = a2 - v7;

    return std::vector<kaldi::CuVector<float>>::__append(result, v8, a3, a4, a5);
  }

  return result;
}

void std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__append(uint64_t a1, unint64_t a2)
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
      std::vector<int>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float> *>>(a1, v10);
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
    std::__split_buffer<std::unique_ptr<kaldi::CuMatrixBase<float>>>::~__split_buffer(v14);
  }
}

uint64_t std::__split_buffer<std::unique_ptr<kaldi::CuMatrixBase<float>>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__split_buffer<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destruct_at_end[abi:ne200100](void *result, void *a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *--v2;
      result = v5;
      v4[2] = v2;
      *v2 = 0;
      if (v5)
      {
        result = (*(*result + 24))(result);
        v2 = v4[2];
      }
    }

    while (v2 != a2);
  }

  return result;
}

void std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::__append(uint64_t a1, unint64_t a2)
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
      std::vector<int>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float> *>>(a1, v10);
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
    std::__split_buffer<std::unique_ptr<kaldi::CuVectorBase<float>>>::~__split_buffer(v14);
  }
}

uint64_t std::__split_buffer<std::unique_ptr<kaldi::CuVectorBase<float>>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::unique_ptr<kaldi::CuVectorBase<float>>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__split_buffer<std::unique_ptr<kaldi::CuVectorBase<float>>>::__destruct_at_end[abi:ne200100](void *result, void *a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *--v2;
      result = v5;
      v4[2] = v2;
      *v2 = 0;
      if (v5)
      {
        result = (*(*result + 16))(result);
        v2 = v4[2];
      }
    }

    while (v2 != a2);
  }

  return result;
}

uint64_t *std::vector<kaldi::CuVector<float>>::__append(uint64_t *result, unint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = result;
  v7 = result[1];
  v8 = result[2];
  if (a2 <= (v8 - v7) >> 5)
  {
    if (a2)
    {
      v14 = 32 * a2;
      v15 = (v7 + 8);
      v16 = v7 + 32 * a2;
      do
      {
        *v15 = 0;
        v15[1] = 0;
        v15[2] = 0;
        *(v15 - 1) = &unk_1F42BFF70;
        v15 += 4;
        v7 += 32;
        v14 -= 32;
      }

      while (v14);
      v7 = v16;
    }

    result[1] = v7;
  }

  else
  {
    v9 = v7 - *result;
    v10 = a2 + (v9 >> 5);
    if (v10 >> 59)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v11 = v9 >> 5;
    v12 = v8 - *result;
    if (v12 >> 4 > v10)
    {
      v10 = v12 >> 4;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFE0)
    {
      v13 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v10;
    }

    v28 = result;
    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuVector<float>>>(result, v13);
    }

    v17 = 32 * v11;
    v25 = 0;
    v26 = 32 * v11;
    *(&v27 + 1) = 0;
    v18 = 32 * a2;
    v19 = (32 * v11 + 8);
    v20 = 32 * v11;
    do
    {
      *v19 = 0;
      v19[1] = 0;
      v19[2] = 0;
      *(v19 - 1) = &unk_1F42BFF70;
      v19 += 4;
      v20 += 32;
      v18 -= 32;
    }

    while (v18);
    *&v27 = v17 + 32 * a2;
    v21 = result[1];
    v22 = v17 + *result - v21;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::CuVector<float>>,kaldi::CuVector<float>*>(result, *result, v21, v22, a5);
    v23 = *v6;
    *v6 = v22;
    v24 = v6[2];
    *(v6 + 1) = v27;
    *&v27 = v23;
    *(&v27 + 1) = v24;
    v25 = v23;
    v26 = v23;
    return std::__split_buffer<kaldi::CuVector<float>>::~__split_buffer(&v25);
  }

  return result;
}

void sub_1C305C664(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<kaldi::CuVector<float>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::CuVector<float>>,kaldi::CuVector<float>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (a2 != a3)
  {
    v7 = a2;
    v8 = 0;
    v9 = a2;
    do
    {
      result = kaldi::CuVector<float>::CuVector(a4 + v8, v9, a3, a4, a5);
      v9 += 32;
      v8 += 32;
    }

    while (v9 != a3);
    if (v7 != a3)
    {
      v11 = v7;
      v12 = v7;
      do
      {
        v13 = *v12;
        v12 += 4;
        result = (*(v13 + 8))(v7);
        v11 += 4;
        v7 = v12;
      }

      while (v12 != a3);
    }
  }

  return result;
}

void sub_1C305C724(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<kaldi::CuVector<float>>,kaldi::CuVector<float>*,kaldi::CuVector<float>*,kaldi::CuVector<float>*>();
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<kaldi::CuVector<float>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 32);
    *(a1 + 16) = i - 32;
    (*(v4 + 8))();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::vector<kaldi::CuMatrix<float>>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<kaldi::CuMatrix<float>>::__emplace_back_slow_path<kaldi::CuMatrix<float>>(a1, a2);
  }

  else
  {
    kaldi::CuMatrix<float>::CuMatrix(*(a1 + 8), a2, 111);
    result = v3 + 48;
    *(a1 + 8) = v3 + 48;
  }

  *(a1 + 8) = result;
  return result;
}

{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<kaldi::CuMatrix<float>>::__emplace_back_slow_path<kaldi::CuMatrix<float>>(a1, a2);
  }

  else
  {
    kaldi::CuMatrix<float>::CuMatrix(*(a1 + 8), a2, 111);
    result = v3 + 48;
    *(a1 + 8) = v3 + 48;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t std::vector<kaldi::CuSubMatrix<float>>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<kaldi::CuSubMatrix<float>>::__emplace_back_slow_path<kaldi::CuSubMatrix<float>>(a1, a2);
  }

  else
  {
    v4 = *(a2 + 32);
    *(v3 + 8) = *(a2 + 8);
    *(v3 + 16) = *(a2 + 16);
    *(v3 + 32) = v4;
    *v3 = &unk_1F42BFE90;
    result = v3 + 40;
  }

  a1[1] = result;
  return result;
}

uint64_t std::vector<kaldi::CuMatrix<float>>::__emplace_back_slow_path<kaldi::CuMatrix<float>>(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuMatrix<float>>>(a1, v6);
  }

  v13 = 0;
  v14 = 48 * v2;
  kaldi::CuMatrix<float>::CuMatrix(48 * v2, a2, 111);
  v15 = 48 * v2 + 48;
  v7 = *(a1 + 8);
  v8 = 48 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::CuMatrix<float>>,kaldi::CuMatrix<float>*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<kaldi::CuMatrix<float>>::~__split_buffer(&v13);
  return v12;
}

void sub_1C305C998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<kaldi::CuMatrix<float>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<kaldi::CuSubMatrix<float>>::__emplace_back_slow_path<kaldi::CuSubMatrix<float>>(uint64_t *a1, uint64_t a2)
{
  v3 = 0x666666666666666;
  v4 = *a1;
  v5 = a1[1];
  v6 = v5 - *a1;
  v7 = 0xCCCCCCCCCCCCCCCDLL * (v6 >> 3) + 1;
  if (v7 > 0x666666666666666)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - v4) >> 3) > v7)
  {
    v7 = 0x999999999999999ALL * ((a1[2] - v4) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - v4) >> 3) < 0x333333333333333)
  {
    v3 = v7;
  }

  v19 = a1;
  if (v3)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuSubMatrix<float>>>(a1, v3);
  }

  v9 = 8 * (v6 >> 3);
  v16 = 0;
  v17 = v9;
  *(&v18 + 1) = 0;
  v10 = *(a2 + 32);
  *(v9 + 8) = *(a2 + 8);
  *(v9 + 16) = *(a2 + 16);
  *(v9 + 32) = v10;
  *v9 = &unk_1F42BFE90;
  *&v18 = v9 + 40;
  v11 = v9 - v6;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::CuSubMatrix<float>>,kaldi::CuSubMatrix<float>*>(a1, v4, v5, v9 - v6);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<kaldi::CuSubMatrix<float>>::~__split_buffer(&v16);
  return v15;
}

void sub_1C305CAF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<kaldi::CuSubMatrix<float>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuSubMatrix<float>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::CuSubMatrix<float>>,kaldi::CuSubMatrix<float>*>(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a4 + 16;
    v7 = a2;
    do
    {
      v8 = v7[4];
      *(v6 - 8) = v7[1];
      *v6 = *(v7 + 1);
      *(v6 + 16) = v8;
      *(v6 - 16) = &unk_1F42BFE90;
      v7 += 5;
      v6 += 40;
      a4 += 40;
    }

    while (v7 != a3);
    if (a2 != a3)
    {
      v9 = a2;
      v10 = a2;
      do
      {
        v11 = *v10;
        v10 += 5;
        (*(v11 + 16))(v5);
        v9 += 5;
        v5 = v10;
      }

      while (v10 != a3);
    }
  }
}

uint64_t std::__split_buffer<kaldi::CuSubMatrix<float>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 40);
    *(a1 + 16) = i - 40;
    (*(v4 + 16))();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t kaldi::CuSubMatrix<float>::CuSubMatrix(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *a1 = &unk_1F42BFE90;
  v7 = (*(a2 + 16) * *(a2 + 20));
  if (*(a3 + 16) < v7)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v17, "CuSubMatrix", "../engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", 1020);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "Insufficient storage area: ", 27);
    v14 = MEMORY[0x1C692A960](v13, *(a3 + 16));
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " needed: ", 9);
    MEMORY[0x1C692A960](v15, v7);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v17);
  }

  kaldi::CuSubVector<float>::CuSubVector(v16, a3, 0, v7, a5);
  kaldi::CuSubMatrix<float>::CuSubMatrix(v17, v16, *(a2 + 20));
  if (v17 != a1)
  {
    *(a1 + 8) = *(&v17[0] + 1);
    *(a1 + 16) = v17[1];
    *(a1 + 32) = *&v17[2];
  }

  *&v17[0] = &unk_1F42BFE90;
  memset(v17 + 8, 0, 32);
  kaldi::CuMatrixBase<float>::~CuMatrixBase(v17);
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(a1, a2, 111, v9, v10);
  v11 = *(a3 + 16) - v7;
  *(a3 + 8) += 4 * v7;
  *(a3 + 16) = v11;
  *(a3 + 24) = 0;
  return a1;
}

void *kaldi::CuSubVector<float>::CuSubVector(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  *a1 = &unk_1F42BFF30;
  v7 = *(a2 + 16);
  if (*(a3 + 16) < v7)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v18, "CuSubVector", "../engine/common/libquasar/libkaldi/src/cudamatrix/cu-vector.h", 536);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "Insufficient storage area: ", 27);
    v16 = MEMORY[0x1C692A960](v15, *(a3 + 16));
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " needed: ", 9);
    MEMORY[0x1C692A960](v17, *(a2 + 16));
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v18);
  }

  kaldi::CuSubVector<float>::CuSubVector(v18, a3, 0, v7, a5);
  if (v18 != a1)
  {
    a1[1] = v18[1];
    *(a1 + 4) = v19;
    a1[3] = v20;
  }

  kaldi::CuVectorBase<float>::CopyFromVec(a1, a2, v9, v10, v11);
  v12 = *(a2 + 16);
  v13 = *(a3 + 16) - v12;
  *(a3 + 8) += 4 * v12;
  *(a3 + 16) = v13;
  *(a3 + 24) = 0;
  return a1;
}

uint64_t kaldi::nnet1::MomentStatistics<float>(uint64_t a1)
{
  kaldi::Matrix<float>::Matrix(v5, *(a1 + 20), *(a1 + 16), 0, 0);
  kaldi::CuMatrixBase<float>::CopyToMat<float>(a1, v5, 111, v2, v3);
  kaldi::nnet1::MomentStatistics<float>(v5);
  return kaldi::Matrix<float>::~Matrix(v5);
}

void sub_1C305D194(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::Matrix<float>::~Matrix(va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::MomentStatistics<float>(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = a1[4];
  memset(v14, 0, sizeof(v14));
  kaldi::Vector<float>::Resize(v14, v6, 0, a4, a5);
  kaldi::CuVectorBase<float>::CopyToVec<float>(a1, v14, v7, v8, v9);
  kaldi::nnet1::MomentStatistics<float>(v14, v10, v11, v12, v13);
  kaldi::Vector<float>::Destroy(v14);
}

void sub_1C305D210(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::Vector<float>::Destroy(va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::MomentStatistics<float>(uint64_t a1)
{
  v2 = kaldi::MatrixBase<float>::NumRows(a1);
  v3 = kaldi::MatrixBase<float>::NumCols(a1);
  memset(v10, 0, sizeof(v10));
  kaldi::Vector<float>::Resize(v10, (v3 * v2), 0, v4, v5);
  kaldi::VectorBase<float>::CopyRowsFromMat(v10, a1);
  kaldi::nnet1::MomentStatistics<float>(v10, v6, v7, v8, v9);
  kaldi::Vector<float>::Destroy(v10);
}

void sub_1C305D2A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::Vector<float>::Destroy(va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::MomentStatistics<float>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v48 = 0;
  v49 = 0;
  v50 = 0;
  kaldi::Vector<float>::Resize(&v48, *(a1 + 8), 1, a4, a5);
  kaldi::VectorBase<float>::CopyFromVec(&v48, a1, v6, v7, v8);
  memset(v47, 0, sizeof(v47));
  kaldi::Vector<float>::Resize(v47, *(a1 + 8), 1, v9, v10);
  kaldi::VectorBase<float>::CopyFromVec(v47, a1, v11, v12, v13);
  v14 = kaldi::VectorBase<float>::Sum(a1);
  kaldi::VectorBase<float>::Add(&v48, -(*&v14 / *(a1 + 8)));
  kaldi::Vector<float>::Resize(v47, v49, 1, v15, v16);
  kaldi::VectorBase<float>::CopyFromVec(v47, &v48, v17, v18, v19);
  kaldi::VectorBase<float>::MulElements(&v48, v47, v20, v21, v22);
  v23 = kaldi::VectorBase<float>::Sum(&v48);
  v24 = *&v23;
  v25 = *(a1 + 8);
  kaldi::VectorBase<float>::MulElements(&v48, v47, v26, v27, v28);
  kaldi::VectorBase<float>::Sum(&v48);
  pow((v24 / v25), 1.5);
  v29 = *(a1 + 8);
  kaldi::VectorBase<float>::MulElements(&v48, v47, v30, v31, v32);
  kaldi::VectorBase<float>::Sum(&v48);
  v33 = *(a1 + 8);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v42);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v42, "(min ", 7);
  kaldi::VectorBase<float>::Min(a1, v34);
  v35 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, ", max ", 6);
  kaldi::VectorBase<float>::Max(a1, v36);
  v37 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, ", mean ", 7);
  v38 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, ", variance ", 11);
  v39 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, ", skewness ", 11);
  v40 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, ", kurtosis ", 11);
  v41 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, ") ", 3);
  std::stringbuf::str();
  v42 = *MEMORY[0x1E69E54E8];
  *(&v42 + *(v42 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v43 = MEMORY[0x1E69E5548] + 16;
  if (v45 < 0)
  {
    operator delete(v44[7].__locale_);
  }

  v43 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v44);
  std::ostream::~ostream();
  MEMORY[0x1C692AD30](&v46);
  kaldi::Vector<float>::Destroy(v47);
  kaldi::Vector<float>::Destroy(&v48);
}

void sub_1C305D60C(_Unwind_Exception *a1)
{
  kaldi::Vector<float>::Destroy(v1 - 144);
  kaldi::Vector<float>::Destroy(v1 - 120);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::MomentStatistics<float>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (a1[1] == *a1)
  {
    kaldi::KaldiAssertFailure_("MomentStatistics", "../engine/common/libquasar/libkaldi/src/nnet/nnet-various.h", 0xBE, "mats.size() > 0", a5);
  }

  kaldi::CuMatrix<float>::CuMatrix(v13, *(**a1 + 20), *(**a1 + 16), 0, 0, 0);
  v8 = *a1;
  if (a1[1] != *a1)
  {
    v9 = 0;
    do
    {
      v10 = *(v8 + 8 * v9);
      if (*(v10 + 20) != v15 || *(v10 + 16) != v14)
      {
        kaldi::KaldiAssertFailure_("MomentStatistics", "../engine/common/libquasar/libkaldi/src/nnet/nnet-various.h", 0xC1, "mats[i]->NumRows() == mat.NumRows() && mats[i]->NumCols() == mat.NumCols()", v7);
      }

      kaldi::CuMatrixBase<float>::AddMat(v13, v10, 111, v6, v7, 1.0, 1.0);
      ++v9;
      v8 = *a1;
    }

    while (v9 < (a1[1] - *a1) >> 3);
  }

  kaldi::Matrix<float>::Matrix<float>(v12, v13, 111, v6, v7);
  kaldi::nnet1::MomentStatistics<float>(v12);
  kaldi::Matrix<float>::~Matrix(v12);
  return kaldi::CuMatrix<float>::~CuMatrix(v13);
}

{
  if (a1[1] == *a1)
  {
    kaldi::KaldiAssertFailure_("MomentStatistics", "../engine/common/libquasar/libkaldi/src/nnet/nnet-various.h", 0xAE, "mats.size() > 0", a5);
  }

  kaldi::CuMatrix<float>::CuMatrix(v14, *(*a1 + 20), *(*a1 + 16), 0, 0, 0);
  v8 = *a1;
  if (a1[1] != *a1)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = v8 + v9;
      if (*(v8 + v9 + 20) != v16 || *(v11 + 16) != v15)
      {
        kaldi::KaldiAssertFailure_("MomentStatistics", "../engine/common/libquasar/libkaldi/src/nnet/nnet-various.h", 0xB1, "mats[i].NumRows() == mat.NumRows() && mats[i].NumCols() == mat.NumCols()", v7);
      }

      kaldi::CuMatrixBase<float>::AddMat(v14, v11, 111, v6, v7, 1.0, 1.0);
      ++v10;
      v8 = *a1;
      v9 += 48;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4) > v10);
  }

  kaldi::Matrix<float>::Matrix<float>(v13, v14, 111, v6, v7);
  kaldi::nnet1::MomentStatistics<float>(v13);
  kaldi::Matrix<float>::~Matrix(v13);
  return kaldi::CuMatrix<float>::~CuMatrix(v14);
}

void sub_1C305D780(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  kaldi::Matrix<float>::~Matrix(va);
  kaldi::CuMatrix<float>::~CuMatrix(va1);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::ToString<float>(int *a1)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v4);
  v2 = *a1;
  std::ostream::operator<<();
  std::stringbuf::str();
  v4 = *MEMORY[0x1E69E54E8];
  *(&v4 + *(v4 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v5 = MEMORY[0x1E69E5548] + 16;
  if (v7 < 0)
  {
    operator delete(v6[7].__locale_);
  }

  v5 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v6);
  std::ostream::~ostream();
  return MEMORY[0x1C692AD30](&v8);
}

void sub_1C305D8FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void *kaldi::nnet1::MomentStatistics<float>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (a1[1] == *a1)
  {
    kaldi::KaldiAssertFailure_("MomentStatistics", "../engine/common/libquasar/libkaldi/src/nnet/nnet-various.h", 0x9E, "vecs.size() > 0", a5);
  }

  v6 = *(**a1 + 16);
  v23[1] = 0;
  v24 = 0;
  v23[0] = &unk_1F42BFF70;
  v25 = 0;
  kaldi::CuVector<float>::Resize(v23, v6, 0, a4, a5);
  v11 = *a1;
  if (a1[1] != *a1)
  {
    v12 = 0;
    do
    {
      v13 = *(v11 + 8 * v12);
      if (*(v13 + 16) != v24)
      {
        kaldi::KaldiAssertFailure_("MomentStatistics", "../engine/common/libquasar/libkaldi/src/nnet/nnet-various.h", 0xA1, "vecs[i]->Dim() == vec.Dim()", v9);
      }

      LODWORD(v10) = 1.0;
      kaldi::CuVectorBase<float>::AddVec(v23, v13, v7, v8, v9, v10, 1.0);
      ++v12;
      v11 = *a1;
    }

    while (v12 < (a1[1] - *a1) >> 3);
  }

  memset(v22, 0, sizeof(v22));
  kaldi::Vector<float>::Init(v22, v24, v7, v8, v9);
  kaldi::CuVectorBase<float>::CopyToVec<float>(v23, v22, v14, v15, v16);
  kaldi::nnet1::MomentStatistics<float>(v22, v17, v18, v19, v20);
  kaldi::Vector<float>::Destroy(v22);
  return kaldi::CuVector<float>::~CuVector(v23);
}

{
  if (a1[1] == *a1)
  {
    kaldi::KaldiAssertFailure_("MomentStatistics", "../engine/common/libquasar/libkaldi/src/nnet/nnet-various.h", 0x8D, "vecs.size() > 0", a5);
  }

  v6 = *(*a1 + 16);
  v23[1] = 0;
  v24 = 0;
  v23[0] = &unk_1F42BFF70;
  v25 = 0;
  kaldi::CuVector<float>::Resize(v23, v6, 0, a4, a5);
  v11 = *a1;
  if (a1[1] != *a1)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      if (*(v11 + v12 + 16) != v24)
      {
        kaldi::KaldiAssertFailure_("MomentStatistics", "../engine/common/libquasar/libkaldi/src/nnet/nnet-various.h", 0x90, "vecs[i].Dim() == vec.Dim()", v9);
      }

      LODWORD(v10) = 1.0;
      kaldi::CuVectorBase<float>::AddVec(v23, v11 + v12, v7, v8, v9, v10, 1.0);
      ++v13;
      v11 = *a1;
      v12 += 32;
    }

    while (v13 < (a1[1] - *a1) >> 5);
  }

  memset(v22, 0, sizeof(v22));
  kaldi::Vector<float>::Init(v22, v24, v7, v8, v9);
  kaldi::CuVectorBase<float>::CopyToVec<float>(v23, v22, v14, v15, v16);
  kaldi::nnet1::MomentStatistics<float>(v22, v17, v18, v19, v20);
  kaldi::Vector<float>::Destroy(v22);
  return kaldi::CuVector<float>::~CuVector(v23);
}

void sub_1C305DA58(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  kaldi::Vector<float>::Destroy(va);
  kaldi::CuVector<float>::~CuVector(va1);
  _Unwind_Resume(a1);
}

void kaldi::GaussRandomNumber::~GaussRandomNumber(kaldi::GaussRandomNumber *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }

  v3 = (this + 16);
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void *std::vector<kaldi::CuWorkspace *>::__assign_with_size[abi:ne200100]<kaldi::CuWorkspace **,kaldi::CuWorkspace **>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
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

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<kaldi::CuWorkspace *>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
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

void std::vector<float>::resize(void *a1, unint64_t a2, __int32 *a3, int16x4_t a4)
{
  v4 = (a1[1] - *a1) >> 2;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      a1[1] = *a1 + 4 * a2;
    }
  }

  else
  {
    std::vector<float>::__append(a1, a2 - v4, a3, a4);
  }
}

uint64_t kaldi::nnet1::QuantizerResidualAggregator::Quantize(kaldi::nnet1::QuantizerResidualAggregator *this, uint64_t a2, float a3, uint64_t a4, uint64_t a5, const char *a6)
{
  v6 = *this;
  v7 = *(this + 1) - *this;
  if (!v7 || (v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 4), v9 != 0xCCCCCCCCCCCCCCCDLL * ((*(this + 4) - *(this + 3)) >> 3)) || v9 != 0xCCCCCCCCCCCCCCCDLL * ((*(this + 7) - *(this + 6)) >> 3))
  {
    kaldi::KaldiAssertFailure_("Quantize", "../engine/common/libquasar/libkaldi/src/nnet/nnet-component.h", 0x42, "residuals_.size() != 0 && residuals_.size() == orig_corrs_.size() && residuals_.size() == dest_corrs_.size()", a6);
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
  do
  {
    result = kaldi::nnet1::QuantizerResidualAggregator::AddCorrectionToResidualAndQuantize(a2, *(this + 3) + v13, v6 + v12, *(this + 6) + v13, a6, a3);
    ++v14;
    v6 = *this;
    v13 += 40;
    v12 += 48;
  }

  while (v14 < 0xAAAAAAAAAAAAAAABLL * ((*(this + 1) - *this) >> 4));
  return result;
}

uint64_t kaldi::nnet1::AffineTransform::ApplyCorr(kaldi::nnet1::AffineTransform *this, float a2, int a3)
{
  kaldi::nnet1::AffineTransform::EnsureCorrs(this);
  v6 = kaldi::nnet1::AffineTransform::Linearity(this);
  v7 = -(a2 * *(this + 59));
  v8 = kaldi::nnet1::AffineTransform::LinearityCorr(this, a3);
  kaldi::CuMatrixBase<float>::AddMat(v6, v8, 111, v9, v10, v7, 1.0);
  v11 = kaldi::nnet1::AffineTransform::Bias(this);
  v12 = -(a2 * *(this + 60));
  v13 = kaldi::nnet1::AffineTransform::BiasCorr(this, a3);
  *&v17 = v12;

  return kaldi::CuVectorBase<float>::AddVec(v11, v13, v14, v15, v16, v17, 1.0);
}

void std::vector<float>::__append(uint64_t a1, unint64_t a2, __int32 *a3, int16x4_t a4)
{
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (a2 <= (v6 - v7) >> 2)
  {
    if (a2)
    {
      v13 = 0;
      a4.i32[0] = *a3;
      v14 = (a2 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
      v15 = vdupq_n_s64(v14);
      v16 = v7 + 4 * a2;
      v17 = v14 - ((a2 + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
      v18 = (v7 + 8);
      do
      {
        v19 = vdupq_n_s64(v13);
        v20 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v19, xmmword_1C378AF00)));
        if (vuzp1_s16(v20, a4).u8[0])
        {
          *(v18 - 2) = a4.i32[0];
        }

        if (vuzp1_s16(v20, a4).i8[2])
        {
          *(v18 - 1) = a4.i32[0];
        }

        if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v19, xmmword_1C378AEF0)))).i32[1])
        {
          *v18 = a4.i32[0];
          v18[1] = a4.i32[0];
        }

        v13 += 4;
        v18 += 4;
      }

      while (v17 != v13);
    }

    else
    {
      v16 = *(a1 + 8);
    }

    *(a1 + 8) = v16;
  }

  else
  {
    v8 = v7 - *a1;
    v9 = a2 + (v8 >> 2);
    if (v9 >> 62)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v10 = v8 >> 2;
    v11 = v6 - *a1;
    if (v11 >> 1 > v9)
    {
      v9 = v11 >> 1;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v12 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, v12);
    }

    v21 = 0;
    v22 = 4 * v10;
    a4.i32[0] = *a3;
    v23 = 4 * v10 + 4 * a2;
    v24 = (a2 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
    v25 = vdupq_n_s64(v24);
    v26 = v24 - ((a2 + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
    v27 = (4 * v10 + 8);
    do
    {
      v28 = vdupq_n_s64(v21);
      v29 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(v28, xmmword_1C378AF00)));
      if (vuzp1_s16(v29, a4).u8[0])
      {
        *(v27 - 2) = a4.i32[0];
      }

      if (vuzp1_s16(v29, a4).i8[2])
      {
        *(v27 - 1) = a4.i32[0];
      }

      if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v25, vorrq_s8(v28, xmmword_1C378AEF0)))).i32[1])
      {
        *v27 = a4.i32[0];
        v27[1] = a4.i32[0];
      }

      v21 += 4;
      v27 += 4;
    }

    while (v26 != v21);
    v30 = *(a1 + 8) - *a1;
    v31 = v22 - v30;
    memcpy((v22 - v30), *a1, v30);
    v32 = *a1;
    *a1 = v31;
    *(a1 + 8) = v23;
    *(a1 + 16) = 0;
    if (v32)
    {

      operator delete(v32);
    }
  }
}

uint64_t kaldi::nnet1::QuantizerResidualAggregator::AddCorrectionToResidualAndQuantize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, float a6)
{
  kaldi::CuMatrixBase<float>::AddMat(a3, a2, 111, a4, a5, 1.0, 1.0);
  if (a1)
  {
    if (a1 != 3)
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v19, "AddCorrectionToResidualAndQuantize", "../engine/common/libquasar/libkaldi/src/nnet/nnet-component.h", 115);
      v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Wrong quantizer type (neither ", 30);
      v15 = MEMORY[0x1C692A960](v14, 0);
      v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " nor ", 5);
      v17 = MEMORY[0x1C692A960](v16, 3);
      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "): ", 4);
      MEMORY[0x1C692A960](v18, a1);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v19);
    }

    return kaldi::Quant3Levels<float>(a3, a4, v10, v11, v12, a6);
  }

  else
  {

    return kaldi::ZeroSmallValues<float>(a3, a4, v10, v11, v12, a6);
  }
}

uint64_t kaldi::nnet1::QuantizedAffineTransform<signed char>::QuantizedAffineTransform(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  *(a1 + 8) = a2[1];
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_1F42C01D0;
  v7 = a2[14];
  if (!v7)
  {
    kaldi::KaldiAssertFailure_("Linearity", "../engine/common/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", 0x252, "linearity_", a5);
  }

  kaldi::QuantizedMatrix<signed char>::QuantizedMatrix(a1 + 48, v7);
  v9 = a2[15];
  if (!v9)
  {
    kaldi::KaldiAssertFailure_("Bias", "../engine/common/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", 0x256, "bias_", v8);
  }

  kaldi::CuVector<float>::CuVector(a1 + 96, v9);
  return a1;
}

void sub_1C305E22C(_Unwind_Exception *a1)
{
  kaldi::QuantizedMatrixBase<signed char>::~QuantizedMatrixBase(v1 + 48);
  kaldi::nnet1::Component::~Component(v1);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::QuantizedAffineTransform<signed char>::~QuantizedAffineTransform(kaldi::nnet1::Component *a1)
{
  kaldi::nnet1::QuantizedAffineTransform<signed char>::~QuantizedAffineTransform(a1);

  JUMPOUT(0x1C692AE10);
}

{
  *a1 = &unk_1F42C01D0;
  v2 = a1 + 48;
  kaldi::CuVector<float>::~CuVector(a1 + 12);
  kaldi::QuantizedMatrixBase<signed char>::~QuantizedMatrixBase(v2);

  kaldi::nnet1::Component::~Component(a1);
}

void sub_1C305E350(_Unwind_Exception *a1)
{
  kaldi::QuantizedMatrixBase<signed char>::~QuantizedMatrixBase(v3);
  kaldi::nnet1::Component::~Component(v2);
  MEMORY[0x1C692AE10](v2, v1);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::Component::VectorizeWeightsCorrs(uint64_t a1)
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v9, "VectorizeWeightsCorrs", "../engine/common/libquasar/libkaldi/src/nnet/nnet-component.h", 272);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "VectorizeWeightsCorrs", 21);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, " is not implemented for ", 24);
  v4 = (*(*a1 + 24))(a1);
  kaldi::nnet1::Component::TypeToMarker(v4, &v8);
  if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v8;
  }

  else
  {
    v5 = v8.__r_.__value_.__r.__words[0];
  }

  if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v8.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v8.__r_.__value_.__l.__size_;
  }

  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, v5, size);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v7, " component.");
  std::string::~string(&v8);
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v9);
}

void kaldi::nnet1::QuantizedAffineTransform<signed char>::Info(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v15, "\n  linearity is quantized");
  v4 = std::string::append(&v15, "\n  bias");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v16.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v16.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  kaldi::nnet1::MomentStatistics<float>((a1 + 96), v6, v7, v8, v9);
  if ((v14 & 0x80u) == 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  if ((v14 & 0x80u) == 0)
  {
    v11 = v14;
  }

  else
  {
    v11 = __p[1];
  }

  v12 = std::string::append(&v16, v10, v11);
  *a2 = *v12;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }
}

void sub_1C305E580(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::QuantizedAffineTransform<signed char>::WriteData(uint64_t a1, void *a2, int a3, int a4)
{
  kaldi::QuantizedMatrix<signed char>::Write((a1 + 48), a2, a3, a4);

  kaldi::CuVectorBase<float>::Write((a1 + 96), a2, a3, v7, v8);
}

void kaldi::nnet1::QuantizedAffineTransform<signed char>::BackpropagateFnc()
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v1, "BackpropagateFnc", "../engine/common/libquasar/libkaldi/src/nnet/nnet-quantized-affine-transform.h", 62);
  v0 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v1, "BackpropagateFnc", 16);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, " Not implemented!");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v1);
}

void kaldi::nnet1::QuantizedAffineTransform<signed char>::GetUnitOutputFnc(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int16x4_t a5)
{
  a5.i32[0] = *(*(a1 + 104) + 4 * a3);
  kaldi::CuVectorBase<float>::Set(a4, a5);
  kaldi::QuantizedMatrixBase<signed char>::Row(a1 + 48, a3, v10);
  kaldi::CuVectorBase<float>::AddMatVec<signed char>(a4, a2, 111, v10, v9, 1.0, 1.0);
}

float kaldi::nnet1::QuantizedAffineTransform<signed char>::GetUnitOutputFnc(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(*(a1 + 104) + 4 * a3);
  kaldi::QuantizedMatrixBase<signed char>::Row(a1 + 48, a3, v9);
  return v4 + kaldi::VecVec<float,signed char>(a2, v9, v5, v6, v7);
}

double kaldi::nnet1::QuantizedAffineTransform<signed char>::ReadData(_DWORD *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  kaldi::QuantizedMatrix<signed char>::Read(a1 + 12, a2, a3, a4);
  result = kaldi::CuVector<float>::Read((a1 + 24), a2, a3, v7, v8);
  if (a1[28] != a1[3])
  {
    kaldi::KaldiAssertFailure_("ReadData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-quantized-affine-transform.h", 0x28, "bias_.Dim() == output_dim_", v9);
  }

  return result;
}

uint64_t kaldi::nnet1::QuantizedAffineTransform<short>::QuantizedAffineTransform(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  *(a1 + 8) = a2[1];
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_1F42C02A8;
  v7 = a2[14];
  if (!v7)
  {
    kaldi::KaldiAssertFailure_("Linearity", "../engine/common/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", 0x252, "linearity_", a5);
  }

  kaldi::QuantizedMatrix<short>::QuantizedMatrix(a1 + 48, v7);
  v9 = a2[15];
  if (!v9)
  {
    kaldi::KaldiAssertFailure_("Bias", "../engine/common/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", 0x256, "bias_", v8);
  }

  kaldi::CuVector<float>::CuVector(a1 + 96, v9);
  return a1;
}

void sub_1C305E8F4(_Unwind_Exception *a1)
{
  kaldi::QuantizedMatrixBase<short>::~QuantizedMatrixBase(v1 + 48);
  kaldi::nnet1::Component::~Component(v1);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::QuantizedAffineTransform<short>::~QuantizedAffineTransform(kaldi::nnet1::Component *a1)
{
  kaldi::nnet1::QuantizedAffineTransform<short>::~QuantizedAffineTransform(a1);

  JUMPOUT(0x1C692AE10);
}

{
  *a1 = &unk_1F42C02A8;
  v2 = a1 + 48;
  kaldi::CuVector<float>::~CuVector(a1 + 12);
  kaldi::QuantizedMatrixBase<short>::~QuantizedMatrixBase(v2);

  kaldi::nnet1::Component::~Component(a1);
}

void sub_1C305EA18(_Unwind_Exception *a1)
{
  kaldi::QuantizedMatrixBase<short>::~QuantizedMatrixBase(v3);
  kaldi::nnet1::Component::~Component(v2);
  MEMORY[0x1C692AE10](v2, v1);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::QuantizedAffineTransform<short>::WriteData(uint64_t a1, void *a2, int a3, int a4)
{
  kaldi::QuantizedMatrix<short>::Write((a1 + 48), a2, a3, a4);

  kaldi::CuVectorBase<float>::Write((a1 + 96), a2, a3, v7, v8);
}

uint64_t *kaldi::nnet1::QuantizedAffineTransform<short>::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3)
{
  kaldi::CuMatrixBase<float>::AddMatMat<short>(a3, a2, 111, (a1 + 48), 0x70, 1.0, 0.0);

  return kaldi::CuMatrixBase<float>::AddVecToRows(a3, a1 + 96, v5, v6, v7, 1.0, 1.0);
}

void kaldi::nnet1::QuantizedAffineTransform<short>::GetUnitOutputFnc(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int16x4_t a5)
{
  a5.i32[0] = *(*(a1 + 104) + 4 * a3);
  kaldi::CuVectorBase<float>::Set(a4, a5);
  kaldi::QuantizedMatrixBase<short>::Row(a1 + 48, a3, v10);
  kaldi::CuVectorBase<float>::AddMatVec<short>(a4, a2, 111, v10, v9, 1.0, 1.0);
}

float kaldi::nnet1::QuantizedAffineTransform<short>::GetUnitOutputFnc(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(*(a1 + 104) + 4 * a3);
  kaldi::QuantizedMatrixBase<short>::Row(a1 + 48, a3, v9);
  return v4 + kaldi::VecVec<float,short>(a2, v9, v5, v6, v7);
}

double kaldi::nnet1::QuantizedAffineTransform<short>::ReadData(_DWORD *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  kaldi::QuantizedMatrix<short>::Read(a1 + 12, a2, a3, a4);
  result = kaldi::CuVector<float>::Read((a1 + 24), a2, a3, v7, v8);
  if (a1[28] != a1[3])
  {
    kaldi::KaldiAssertFailure_("ReadData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-quantized-affine-transform.h", 0x28, "bias_.Dim() == output_dim_", v9);
  }

  return result;
}

void kaldi::nnet1::VectorwiseQuantizedAffineTransform<signed char>::VectorwiseQuantizedAffineTransform(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_1F42C0380;
  v5 = *(a2 + 112);
  if (v5)
  {
    kaldi::VectorwiseQuantizedMatrix<signed char>::VectorwiseQuantizedMatrix(a1 + 48, v5);
  }

  kaldi::KaldiAssertFailure_("Linearity", "../engine/common/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", 0x252, "linearity_", a5);
}

void sub_1C305ED78(_Unwind_Exception *a1)
{
  kaldi::VectorwiseQuantizedMatrix<signed char>::~VectorwiseQuantizedMatrix(v1 + 48);
  kaldi::nnet1::Component::~Component(v1);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::VectorwiseQuantizedAffineTransform<signed char>::~VectorwiseQuantizedAffineTransform(kaldi::nnet1::Component *a1)
{
  kaldi::nnet1::VectorwiseQuantizedAffineTransform<signed char>::~VectorwiseQuantizedAffineTransform(a1);

  JUMPOUT(0x1C692AE10);
}

{
  *a1 = &unk_1F42C0380;
  kaldi::CuVector<float>::~CuVector(a1 + 11);
  v2 = *(a1 + 9);
  *(a1 + 9) = 0;
  if (v2)
  {
    MEMORY[0x1C692AE10](v2, 0x1000C4077774924);
  }

  v3 = *(a1 + 7);
  *(a1 + 7) = 0;
  if (v3)
  {
    MEMORY[0x1C692AE10](v3, 0x1000C4052888210);
  }

  kaldi::nnet1::Component::~Component(a1);
}

void kaldi::nnet1::VectorwiseQuantizedAffineTransform<signed char>::Info(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v15, "\n  linearity is vectorwise quantized");
  v4 = std::string::append(&v15, "\n  bias");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v16.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v16.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  kaldi::nnet1::MomentStatistics<float>((a1 + 88), v6, v7, v8, v9);
  if ((v14 & 0x80u) == 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  if ((v14 & 0x80u) == 0)
  {
    v11 = v14;
  }

  else
  {
    v11 = __p[1];
  }

  v12 = std::string::append(&v16, v10, v11);
  *a2 = *v12;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }
}

void sub_1C305EF30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::VectorwiseQuantizedAffineTransform<signed char>::WriteData(uint64_t a1, void *a2, int a3)
{
  kaldi::VectorwiseQuantizedMatrix<signed char>::Write((a1 + 48), a2, a3);

  kaldi::CuVectorBase<float>::Write((a1 + 88), a2, a3, v6, v7);
}

uint64_t *kaldi::nnet1::VectorwiseQuantizedAffineTransform<signed char>::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3)
{
  kaldi::CuMatrixBase<float>::AddMatMat<signed char>(a3, a2, 111, (a1 + 48), 0x70, 1.0, 0.0);

  return kaldi::CuMatrixBase<float>::AddVecToRows(a3, a1 + 88, v5, v6, v7, 1.0, 1.0);
}

void kaldi::nnet1::VectorwiseQuantizedAffineTransform<signed char>::BackpropagateFnc()
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v1, "BackpropagateFnc", "../engine/common/libquasar/libkaldi/src/nnet/nnet-vectorwise-quantized-affine-transform.h", 66);
  v0 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v1, "BackpropagateFnc", 16);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, " Not implemented!");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v1);
}

void kaldi::nnet1::VectorwiseQuantizedAffineTransform<signed char>::GetUnitOutputFnc(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int16x4_t a5)
{
  a5.i32[0] = *(*(a1 + 96) + 4 * a3);
  kaldi::CuVectorBase<float>::Set(a4, a5);
  kaldi::VectorwiseQuantizedMatrix<signed char>::Row(a1 + 48, a3, v11);
  kaldi::QuantizedVectorBase<signed char>::AddMatVec(v11, a2 + 8, a4 + 8, 1.0, v9, v10);
}

float kaldi::nnet1::VectorwiseQuantizedAffineTransform<signed char>::GetUnitOutputFnc(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(*(a1 + 96) + 4 * a3);
  kaldi::VectorwiseQuantizedMatrix<signed char>::Row(a1 + 48, a3, v9);
  return v4 + kaldi::VecVec<float,signed char>(a2, v9, v5, v6, v7);
}

double kaldi::nnet1::VectorwiseQuantizedAffineTransform<signed char>::ReadData(_DWORD *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  kaldi::VectorwiseQuantizedMatrix<signed char>::Read(a1 + 12, a2, a3, a4);
  result = kaldi::CuVector<float>::Read((a1 + 22), a2, a3, v7, v8);
  if (a1[26] != a1[3])
  {
    kaldi::KaldiAssertFailure_("ReadData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-vectorwise-quantized-affine-transform.h", 0x2A, "bias_.Dim() == output_dim_", v9);
  }

  return result;
}

uint64_t kaldi::nnet1::VectorwiseQuantizedAffineTransform<signed char>::VectorwiseQuantizedAffineTransform(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F42C1850;
  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  std::vector<kaldi::CuWorkspace *>::__init_with_size[abi:ne200100]<kaldi::CuWorkspace **,kaldi::CuWorkspace **>(a1 + 24, *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 3);
  *a1 = &unk_1F42C0380;
  kaldi::VectorwiseQuantizedMatrix<signed char>::VectorwiseQuantizedMatrix(a1 + 48, a2 + 48);
  kaldi::CuVector<float>::CuVector(a1 + 88, a2 + 88, v5, v6, v7);
  return a1;
}

void sub_1C305F310(_Unwind_Exception *a1)
{
  kaldi::VectorwiseQuantizedMatrix<signed char>::~VectorwiseQuantizedMatrix(v1 + 48);
  kaldi::nnet1::Component::~Component(v1);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<kaldi::CuVector<float>>,kaldi::CuVector<float>*,kaldi::CuVector<float>*,kaldi::CuVector<float>*>()
{
  OUTLINED_FUNCTION_1();
  do
  {
    v4 = *v3;
    v3 -= 4;
    result = (*(v4 + 8))(v1);
    v2 -= 32;
    v6 = v1 == v0;
    v1 = v3;
  }

  while (!v6);
  return result;
}

double kaldi::nnet1::RecurrentBaseComponent::RecurrentBaseComponent(kaldi::nnet1::RecurrentBaseComponent *this, uint64_t *a2)
{
  *this = &unk_1F42C1FB8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = &unk_1F42CB1B8;
  *(this + 10) = 1;
  v2 = *a2;
  *this = *a2;
  *(this + *(v2 - 24)) = a2[1];
  *(this + 56) = xmmword_1C378B0E0;
  *(this + 18) = -1082130432;
  *(this + 76) = 0x100000003;
  *(this + 42) = 0;
  *(this + 86) = 0;
  *(this + 6) = &unk_1F42CB1D8;
  *(this + 11) = &unk_1F42CB1F8;
  *(this + 12) = 0x100000001;
  result = 0.0;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 19) = 0;
  return result;
}

double kaldi::nnet1::BidirectionalRecurrentComponent::BidirectionalRecurrentComponent(kaldi::nnet1::BidirectionalRecurrentComponent *this, int a2, int a3)
{
  *(this + 94) = a2;
  *(this + 95) = a3;
  *(this + 192) = 0;
  *(this + 50) = 0;
  *(this + 51) = 0;
  *(this + 49) = 0;
  *(this + 46) = &unk_1F42C2E78;
  *(this + 52) = &unk_1F42CB198;
  *(this + 424) = xmmword_1C378B0E0;
  *(this + 55) = 0x3BF800000;
  *(this + 112) = 1;
  *(this + 226) = 0;
  *(this + 454) = 0;
  kaldi::nnet1::RecurrentBaseComponent::RecurrentBaseComponent(this, off_1F42C0840);
  *v3 = &unk_1F42C0460;
  *(v3 + 368) = &unk_1F42C0720;
  *(v3 + 160) = &unk_1F42C05C0;
  *(v3 + 168) = &unk_1F42C05E8;
  result = 0.0;
  *(v3 + 192) = 0u;
  *(v3 + 208) = 0u;
  *(v3 + 224) = 0u;
  *(v3 + 240) = 0u;
  *(v3 + 256) = 0u;
  *(v3 + 272) = 0u;
  *(v3 + 288) = 0u;
  *(v3 + 304) = 0u;
  *(v3 + 320) = 0u;
  *(v3 + 336) = 0u;
  *(v3 + 176) = 0u;
  *(v3 + 345) = 0u;
  return result;
}

kaldi::nnet1::BidirectionalRecurrentComponent *kaldi::nnet1::BidirectionalRecurrentComponent::BidirectionalRecurrentComponent(kaldi::nnet1::BidirectionalRecurrentComponent *this, const std::string *a2)
{
  *(this + 47) = *(&a2->__r_.__value_.__l.__size_ + *(a2->__r_.__value_.__r.__words[0] - 24));
  *(this + 192) = 0;
  *(this + 50) = 0;
  *(this + 51) = 0;
  *(this + 49) = 0;
  *(this + 46) = &unk_1F42C2E78;
  *(this + 52) = &unk_1F42CB198;
  *(this + 424) = xmmword_1C378B0E0;
  *(this + 110) = -1082130432;
  *(this + 444) = 0x100000003;
  *(this + 226) = 0;
  *(this + 454) = 0;
  v4 = a2 + *(a2->__r_.__value_.__r.__words[0] - 24);
  v5 = *(v4 + 2);
  v6 = *(v4 + 3);
  kaldi::nnet1::RecurrentBaseComponent::RecurrentBaseComponent(this, off_1F42C0840);
  *this = &unk_1F42C0460;
  *(this + 46) = &unk_1F42C0720;
  *(this + 20) = &unk_1F42C05C0;
  *(this + 12) = 0u;
  *(this + 21) = &unk_1F42C05E8;
  *(this + 15) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 44) = 0;
  std::string::operator=(this + 8, a2 + 8);
  size = a2[7].__r_.__value_.__l.__size_;
  if (!size)
  {
    v15 = "src.forward_rnn_";
    v16 = 33;
    goto LABEL_10;
  }

  if (!a2[7].__r_.__value_.__r.__words[2])
  {
    v15 = "src.backward_rnn_";
    v16 = 34;
LABEL_10:
    kaldi::KaldiAssertFailure_("BidirectionalRecurrentComponent", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-birnn.cc", v16, v15, v7);
  }

  v9 = (*(*&size[*(*size - 24)] + 16))(&size[*(*size - 24)]);
  if (v9)
  {
    v10 = **v9;
  }

  *(this + 22) = v9;
  v11 = a2[7].__r_.__value_.__r.__words[2] + *(*a2[7].__r_.__value_.__r.__words[2] - 24);
  v12 = (*(*v11 + 16))(v11);
  if (v12)
  {
    v13 = **v12;
  }

  *(this + 23) = v12;
  *(this + 360) = 0;
  return this;
}

void kaldi::nnet1::BidirectionalRecurrentComponent::CopyQuantized<kaldi::nnet1::Quantizable8BitComponentItf>(uint64_t a1)
{
  v2 = *(a1 + 176);
  if (v2)
  {
    v3 = **v2;
    v5 = *(a1 + 184);
    if (!v5)
    {
      if (v4)
      {
LABEL_11:
        kaldi::KaldiErrorMessage::KaldiErrorMessage(&v8, "CopyQuantized", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-birnn.cc", 62);
        std::operator<<[abi:ne200100]<std::char_traits<char>>(&v8, "Backward RNN is not quantizable");
LABEL_12:
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v8);
      }

      goto LABEL_10;
    }
  }

  else
  {
    v5 = *(a1 + 184);
    if (!v5)
    {
      goto LABEL_10;
    }

    v4 = 0;
  }

  v6 = **v5;
  if (v4)
  {
    if (v7)
    {
      operator new();
    }

    goto LABEL_11;
  }

LABEL_10:
  kaldi::KaldiErrorMessage::KaldiErrorMessage(&v8, "CopyQuantized", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-birnn.cc", 59);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(&v8, "Forward RNN is not quantizable");
  goto LABEL_12;
}

void kaldi::nnet1::BidirectionalRecurrentComponent::CopyQuantized<kaldi::nnet1::Quantizable16BitComponentItf>(uint64_t a1)
{
  v2 = *(a1 + 176);
  if (v2)
  {
    v3 = **v2;
    v5 = *(a1 + 184);
    if (!v5)
    {
      if (v4)
      {
LABEL_11:
        kaldi::KaldiErrorMessage::KaldiErrorMessage(&v8, "CopyQuantized", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-birnn.cc", 62);
        std::operator<<[abi:ne200100]<std::char_traits<char>>(&v8, "Backward RNN is not quantizable");
LABEL_12:
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v8);
      }

      goto LABEL_10;
    }
  }

  else
  {
    v5 = *(a1 + 184);
    if (!v5)
    {
      goto LABEL_10;
    }

    v4 = 0;
  }

  v6 = **v5;
  if (v4)
  {
    if (v7)
    {
      operator new();
    }

    goto LABEL_11;
  }

LABEL_10:
  kaldi::KaldiErrorMessage::KaldiErrorMessage(&v8, "CopyQuantized", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-birnn.cc", 59);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(&v8, "Forward RNN is not quantizable");
  goto LABEL_12;
}

void kaldi::nnet1::BidirectionalRecurrentComponent::InitData(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v7 = a2 + 4;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v8 = (a1 + 192);
  while (1)
  {
    if ((*(v7 + *(*a2 - 24)) & 2) != 0)
    {
      goto LABEL_24;
    }

    kaldi::ReadToken(a2, 0, &v44, a4, a5);
    if ((SHIBYTE(v46) & 0x80000000) == 0 || v45 != 24)
    {
      break;
    }

    if (*v44 != 0x657272756365523CLL || v44[1] != 0x6E6F706D6F43746ELL || v44[2] != 0x3E65707954746E65)
    {
      goto LABEL_38;
    }

    kaldi::ReadToken(a2, 0, v8, v9, v10);
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }

  if (SHIBYTE(v46) < 0)
  {
    if (v45 != 12)
    {
      goto LABEL_38;
    }

    v13 = v44;
  }

  else
  {
    if (SHIBYTE(v46) != 12)
    {
      goto LABEL_38;
    }

    v13 = &v44;
  }

  v14 = *v13;
  v15 = *(v13 + 2);
  if (v14 == 0x6E6F706D6F432F3CLL && v15 == 1047817829)
  {
LABEL_24:
    v17 = kaldi::nnet1::Component::MarkerToComponentType(v8);
    __p = 0;
    v41 = 0;
    v42 = 0;
    kaldi::ReadToken(a2, 0, &__p, v18, v19);
    v39 = 0;
    if (v42 >= 0)
    {
      v20 = HIBYTE(v42);
    }

    else
    {
      v20 = v41;
    }

    v21 = *(a1 + 215);
    v22 = v21;
    if ((v21 & 0x80u) != 0)
    {
      v21 = *(a1 + 200);
    }

    if (v20 == v21)
    {
      v23 = v42 >= 0 ? &__p : __p;
      v24 = *v8;
      v25 = v22 >= 0 ? v8 : *v8;
      if (!memcmp(v23, v25, v20))
      {
        kaldi::ExpectToken(a2, 0, "<InputDim>");
        kaldi::ReadBasicType<int>(a2, 0, &v39 + 4);
        kaldi::ExpectToken(a2, 0, "<OutputDim>");
        kaldi::ReadBasicType<int>(a2, 0, &v39);
        kaldi::nnet1::Component::NewComponentOfType(v17);
      }
    }

    kaldi::KaldiErrorMessage::KaldiErrorMessage(v43, "InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-birnn.cc", 105);
    v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, "you defined two different recurrent component types ", 52);
    v32 = *(a1 + 215);
    if (v32 >= 0)
    {
      v33 = v8;
    }

    else
    {
      v33 = *(a1 + 192);
    }

    if (v32 >= 0)
    {
      v34 = *(a1 + 215);
    }

    else
    {
      v34 = *(a1 + 200);
    }

    v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, v33, v34);
    v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, " vs ", 4);
    if (v42 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v42 >= 0)
    {
      v38 = HIBYTE(v42);
    }

    else
    {
      v38 = v41;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, p_p, v38);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v43);
  }

LABEL_38:
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v43, "InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-birnn.cc", 93);
  v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, "Unknown token ", 14);
  if (v46 >= 0)
  {
    v27 = &v44;
  }

  else
  {
    v27 = v44;
  }

  if (v46 >= 0)
  {
    v28 = HIBYTE(v46);
  }

  else
  {
    v28 = v45;
  }

  v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, v27, v28);
  v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, ", a typo in config?", 19);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, " (RecurrentComponentType)", 25);
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v43);
}

void sub_1C30607F0(_Unwind_Exception *exception_object)
{
  if (*(v1 - 81) < 0)
  {
    operator delete(*(v1 - 104));
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::BidirectionalRecurrentComponent::ReadData(void *a1, uint64_t *a2, int a3)
{
  v26 = 0;
  v27 = 0;
  v28 = 0;
  while (1)
  {
    if (kaldi::Peek(a2, a3) != 60)
    {
      goto LABEL_24;
    }

    kaldi::ReadToken(a2, a3, &v26, v6, v7);
    if ((SHIBYTE(v28) & 0x80000000) == 0 || v27 != 24)
    {
      break;
    }

    if (*v26 != 0x657272756365523CLL || v26[1] != 0x6E6F706D6F43746ELL || v26[2] != 0x3E65707954746E65)
    {
      goto LABEL_31;
    }

    kaldi::ReadToken(a2, a3, (a1 + 24), v8, v9);
  }

  if (SHIBYTE(v28) < 0)
  {
    if (v27 != 12)
    {
      goto LABEL_31;
    }

    v12 = v26;
  }

  else
  {
    if (SHIBYTE(v28) != 12)
    {
      goto LABEL_31;
    }

    v12 = &v26;
  }

  v13 = *v12;
  v14 = *(v12 + 2);
  if (v13 != 0x6E6F706D6F432F3CLL || v14 != 1047817829)
  {
LABEL_31:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v25, "ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-birnn.cc", 149);
    v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "Unrecognized token ", 19);
    if (v28 >= 0)
    {
      v23 = &v26;
    }

    else
    {
      v23 = v26;
    }

    if (v28 >= 0)
    {
      v24 = HIBYTE(v28);
    }

    else
    {
      v24 = v27;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, v23, v24);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v25);
  }

LABEL_24:
  v16 = kaldi::nnet1::Component::Read(a2, a3);
  if (!v16)
  {
    a1[22] = 0;
LABEL_39:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v25, "ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-birnn.cc", 152);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "forward component is not an RNN", 31);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v25);
  }

  v17 = **v16;
  a1[22] = v18;
  if (!v18)
  {
    goto LABEL_39;
  }

  kaldi::ExpectToken(a2, a3, "</Component>");
  v19 = kaldi::nnet1::Component::Read(a2, a3);
  if (!v19)
  {
    a1[23] = 0;
LABEL_41:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v25, "ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-birnn.cc", 155);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "backward component is not an RNN", 32);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v25);
  }

  v20 = **v19;
  a1[23] = v21;
  if (!v21)
  {
    goto LABEL_41;
  }

  (*(*a1 + 128))(a1);
  if (SHIBYTE(v28) < 0)
  {
    operator delete(v26);
  }
}

void sub_1C3060B64(_Unwind_Exception *a1)
{
  if (*(v1 - 65) < 0)
  {
    operator delete(*(v1 - 88));
  }

  _Unwind_Resume(a1);
}

void *kaldi::nnet1::BidirectionalRecurrentComponent::WriteConfig(uint64_t a1, void *a2, const char *a3, uint64_t a4, const char *a5)
{
  kaldi::WriteToken(a2, a3, "<RecurrentComponentType>", a4, a5);
  kaldi::WriteToken(a2, a3, (a1 + 192), v8, v9);

  return kaldi::WriteToken(a2, a3, "</Component>", v10, v11);
}

uint64_t kaldi::nnet1::BidirectionalRecurrentComponent::WriteData(void *a1, void *a2, const char *a3, uint64_t a4)
{
  (*(*a1 + 184))(a1);
  kaldi::nnet1::Component::Write((a1[22] + *(*a1[22] - 24)), a2, a3, a4);
  kaldi::WriteToken(a2, a3, "</Component>", v8, v9);
  v10 = (a1[23] + *(*a1[23] - 24));

  return kaldi::nnet1::Component::Write(v10, a2, a3, a4);
}

uint64_t kaldi::nnet1::BidirectionalRecurrentComponent::NumParams(kaldi::nnet1::BidirectionalRecurrentComponent *this)
{
  v2 = *(this + 22) + *(**(this + 22) - 24);
  v3 = (*(*v2 + 176))(v2);
  v4 = *(this + 23) + *(**(this + 23) - 24);
  return (*(*v4 + 176))(v4) + v3;
}

void kaldi::nnet1::BidirectionalRecurrentComponent::GetParams(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 176) + *(**(a1 + 176) - 24);
  v5 = (*(*v4 + 176))(v4);
  v6 = *(a1 + 184) + *(**(a1 + 184) - 24);
  v7 = (*(*v6 + 176))(v6);
  v8 = v7 + v5;
  kaldi::Vector<float>::Resize(a2, v8, 1, v9, v10);
  memset(v22, 0, sizeof(v22));
  v11 = *(a1 + 176) + *(**(a1 + 176) - 24);
  (*(*v11 + 184))(v11, v22);
  v20 = 0;
  v21 = 0;
  if (v5 > *(a2 + 8))
  {
    kaldi::KaldiAssertFailure_("SubVector", "../engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.h", 0x264, "static_cast<UnsignedMatrixIndexT>(origin) + static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v14);
  }

  v19 = *a2;
  LODWORD(v20) = v5;
  kaldi::VectorBase<float>::CopyFromVec(&v19, v22, v12, v13, v14);
  v15 = *(a1 + 184) + *(**(a1 + 184) - 24);
  (*(*v15 + 184))(v15, v22);
  v20 = 0;
  v21 = 0;
  if (v8 > *(a2 + 8))
  {
    kaldi::KaldiAssertFailure_("SubVector", "../engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.h", 0x264, "static_cast<UnsignedMatrixIndexT>(origin) + static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v18);
  }

  v19 = (*a2 + 4 * v5);
  LODWORD(v20) = v7;
  kaldi::VectorBase<float>::CopyFromVec(&v19, v22, v16, v17, v18);
  kaldi::Vector<float>::Destroy(v22);
}

void sub_1C3060FF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  kaldi::Vector<float>::Destroy(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::BidirectionalRecurrentComponent::SetParams(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 176) + *(**(a1 + 176) - 24);
  v5 = (*(*v4 + 176))(v4);
  v6 = *(a1 + 184) + *(**(a1 + 184) - 24);
  v7 = (*(*v6 + 176))(v6);
  v9 = *(a2 + 8);
  if (v9 != v7 + v5)
  {
    kaldi::KaldiAssertFailure_("SetParams", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-birnn.cc", 0xBC, "wei_src.Dim() == forward_params + backward_params", v8);
  }

  v10 = *(a1 + 176);
  v11 = *(*v10 - 24);
  v17 = 0;
  v18 = 0;
  if (v5 > v9)
  {
    goto LABEL_5;
  }

  v12 = v7;
  v16 = *a2;
  LODWORD(v17) = v5;
  (*(*&v10[v11] + 192))(&v10[v11], &v16);
  v13 = *(a1 + 184);
  v14 = *(*v13 - 24);
  v17 = 0;
  v18 = 0;
  if (v9 > *(a2 + 8))
  {
LABEL_5:
    kaldi::KaldiAssertFailure_("SubVector", "../engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.h", 0x264, "static_cast<UnsignedMatrixIndexT>(origin) + static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v8);
  }

  v16 = *a2 + 4 * v5;
  LODWORD(v17) = v12;
  return (*(*&v13[v14] + 192))(&v13[v14], &v16);
}

float kaldi::nnet1::BidirectionalRecurrentComponent::SumParams(kaldi::nnet1::BidirectionalRecurrentComponent *this)
{
  v2 = *(this + 22) + *(**(this + 22) - 24);
  v3 = (*(*v2 + 208))(v2);
  v4 = *(this + 23) + *(**(this + 23) - 24);
  return v3 + (*(*v4 + 208))(v4);
}

void kaldi::nnet1::BidirectionalRecurrentComponent::GetGradient(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  v11 = a1[22] + *(*a1[22] - 24);
  v12 = (*(*v11 + 176))(v11);
  v13 = a1[23] + *(*a1[23] - 24);
  v14 = (*(*v13 + 176))(v13);
  v15 = *(a2 + 20);
  v16 = v14 + v12;
  kaldi::Vector<float>::Resize(a4, v16, 1, v17, v18);
  memset(v40, 0, sizeof(v40));
  ((*v10)[3].__end_cap_.__value_)(v10);
  std::vector<float>::resize(v10[27], v15);
  if (v15 >= 1)
  {
    v19 = 0;
    v20 = vdupq_n_s64(v15 - 1);
    v21 = xmmword_1C378AEF0;
    v22 = xmmword_1C378AF00;
    v23 = vdupq_n_s64(4uLL);
    v24 = v15 - 1;
    v25 = v10[27]->__begin_ + 2;
    do
    {
      v26 = vmovn_s64(vcgeq_u64(v20, v22));
      if (vuzp1_s16(v26, *v20.i8).u8[0])
      {
        *(v25 - 2) = v24;
      }

      if (vuzp1_s16(v26, *&v20).i8[2])
      {
        *(v25 - 1) = v15 + (v19 ^ 0xFFFFFFFE);
      }

      if (vuzp1_s16(*&v20, vmovn_s64(vcgeq_u64(v20, *&v21))).i32[1])
      {
        *v25 = v15 + (v19 ^ 0xFFFFFFFD);
        v25[1] = v15 + (v19 ^ 0xFFFFFFFC);
      }

      v19 += 4;
      v21 = vaddq_s64(v21, v23);
      v22 = vaddq_s64(v22, v23);
      v24 -= 4;
      v25 += 4;
    }

    while (((v15 + 3) & 0xFFFFFFFC) != v19);
  }

  kaldi::CuMatrix<float>::Resize(v10[30], v15, *(a2 + 16), 1u, 0);
  kaldi::CuMatrixBase<float>::CopyRows(v10[30], a2, v10[27], v27, v28);
  v29 = v10[22] + *(v10[22]->__begin_ - 3);
  (*(*v29 + 224))(v29, a2, a3, v40);
  v38 = 0;
  v39 = 0;
  if (v12 > *(a4 + 8))
  {
    kaldi::KaldiAssertFailure_("SubVector", "../engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.h", 0x264, "static_cast<UnsignedMatrixIndexT>(origin) + static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v32);
  }

  v37 = *a4;
  LODWORD(v38) = v12;
  kaldi::VectorBase<float>::CopyFromVec(&v37, v40, v30, v31, v32);
  v33 = v10[23] + *(v10[23]->__begin_ - 3);
  (*(*v33 + 224))(v33, v10[30], a3, v40);
  v38 = 0;
  v39 = 0;
  if (v16 > *(a4 + 8))
  {
    kaldi::KaldiAssertFailure_("SubVector", "../engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.h", 0x264, "static_cast<UnsignedMatrixIndexT>(origin) + static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v36);
  }

  v37 = (*a4 + 4 * v12);
  LODWORD(v38) = v14;
  kaldi::VectorBase<float>::CopyFromVec(&v37, v40, v34, v35, v36);
  ((*v10)->__end_)(v10);
  kaldi::Vector<float>::Destroy(v40);
}

void sub_1C30616E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  kaldi::Vector<float>::Destroy(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::BidirectionalRecurrentComponent::PerturbParams(kaldi::nnet1::BidirectionalRecurrentComponent *this, float a2)
{
  v4 = *(this + 22) + *(**(this + 22) - 24);
  (*(*v4 + 216))(v4);
  v5 = *(*(*(this + 23) + *(**(this + 23) - 24)) + 216);
  v6.n128_f32[0] = a2;

  return v5(v6);
}

uint64_t kaldi::nnet1::BidirectionalRecurrentComponent::Info(kaldi::nnet1::BidirectionalRecurrentComponent *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v22);
  (*(*this + 184))(this, &v22, 0);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, "\n## Forward RNN: input-dim ", 27);
  v3 = MEMORY[0x1C692A960](v2, *(*(this + 22) + *(**(this + 22) - 24) + 8));
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, ", output-dim ", 13);
  v5 = MEMORY[0x1C692A960](v4, *(*(this + 22) + *(**(this + 22) - 24) + 12));
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "\n", 1);
  (*(*(*(this + 22) + *(**(this + 22) - 24)) + 64))(v20);
  if ((v21 & 0x80u) == 0)
  {
    v7 = v20;
  }

  else
  {
    v7 = v20[0];
  }

  if ((v21 & 0x80u) == 0)
  {
    v8 = v21;
  }

  else
  {
    v8 = v20[1];
  }

  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v7, v8);
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "\n## Backward RNN: input-dim ", 28);
  v11 = MEMORY[0x1C692A960](v10, *(*(this + 23) + *(**(this + 23) - 24) + 8));
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ", output-dim ", 13);
  v13 = MEMORY[0x1C692A960](v12, *(*(this + 23) + *(**(this + 23) - 24) + 12));
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "\n", 1);
  (*(*(*(this + 23) + *(**(this + 23) - 24)) + 64))(__p);
  if ((v19 & 0x80u) == 0)
  {
    v15 = __p;
  }

  else
  {
    v15 = __p[0];
  }

  if ((v19 & 0x80u) == 0)
  {
    v16 = v19;
  }

  else
  {
    v16 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v15, v16);
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  std::stringbuf::str();
  v22 = *MEMORY[0x1E69E54E8];
  *(&v22 + *(v22 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v23 = MEMORY[0x1E69E5548] + 16;
  if (v25 < 0)
  {
    operator delete(v24[7].__locale_);
  }

  v23 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v24);
  std::ostream::~ostream();
  return MEMORY[0x1C692AD30](&v26);
}

void sub_1C3061B68(_Unwind_Exception *a1, uint64_t a2, void *__p, uint64_t a4, int a5, __int16 a6, char a7, char a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  if (a8 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  std::ostringstream::~ostringstream(&a15, MEMORY[0x1E69E54E8]);
  MEMORY[0x1C692AD30](va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::BidirectionalRecurrentComponent::InfoGradient(kaldi::nnet1::BidirectionalRecurrentComponent *this@<X0>, std::string *a2@<X8>)
{
  (*(*(*(this + 22) + *(**(this + 22) - 24)) + 72))(&v13);
  (*(*(*(this + 23) + *(**(this + 23) - 24)) + 72))(__p);
  if ((v12 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v12 & 0x80u) == 0)
  {
    v5 = v12;
  }

  else
  {
    v5 = __p[1];
  }

  v6 = std::string::append(&v13, v4, v5);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v15 = v6->__r_.__value_.__r.__words[2];
  *v14 = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v13, "\n");
  if (v15 >= 0)
  {
    v8 = v14;
  }

  else
  {
    v8 = v14[0];
  }

  if (v15 >= 0)
  {
    v9 = HIBYTE(v15);
  }

  else
  {
    v9 = v14[1];
  }

  v10 = std::string::insert(&v13, 0, v8, v9);
  *a2 = *v10;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14[0]);
  }
}

void sub_1C3061D64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::BidirectionalRecurrentComponent::InfoPropagate(kaldi::nnet1::BidirectionalRecurrentComponent *this@<X0>, std::string *a2@<X8>)
{
  (*(*(*(this + 22) + *(**(this + 22) - 24)) + 80))(&v13);
  (*(*(*(this + 23) + *(**(this + 23) - 24)) + 80))(__p);
  if ((v12 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v12 & 0x80u) == 0)
  {
    v5 = v12;
  }

  else
  {
    v5 = __p[1];
  }

  v6 = std::string::append(&v13, v4, v5);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v15 = v6->__r_.__value_.__r.__words[2];
  *v14 = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v13, "\n");
  if (v15 >= 0)
  {
    v8 = v14;
  }

  else
  {
    v8 = v14[0];
  }

  if (v15 >= 0)
  {
    v9 = HIBYTE(v15);
  }

  else
  {
    v9 = v14[1];
  }

  v10 = std::string::insert(&v13, 0, v8, v9);
  *a2 = *v10;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14[0]);
  }
}

void sub_1C3061F60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::BidirectionalRecurrentComponent::InfoBackPropagate(kaldi::nnet1::BidirectionalRecurrentComponent *this@<X0>, std::string *a2@<X8>)
{
  (*(*(*(this + 22) + *(**(this + 22) - 24)) + 88))(&v13);
  (*(*(*(this + 23) + *(**(this + 23) - 24)) + 88))(__p);
  if ((v12 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v12 & 0x80u) == 0)
  {
    v5 = v12;
  }

  else
  {
    v5 = __p[1];
  }

  v6 = std::string::append(&v13, v4, v5);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v15 = v6->__r_.__value_.__r.__words[2];
  *v14 = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v13, "\n");
  if (v15 >= 0)
  {
    v8 = v14;
  }

  else
  {
    v8 = v14[0];
  }

  if (v15 >= 0)
  {
    v9 = HIBYTE(v15);
  }

  else
  {
    v9 = v14[1];
  }

  v10 = std::string::insert(&v13, 0, v8, v9);
  *a2 = *v10;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14[0]);
  }
}

void sub_1C306215C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::nnet1::BidirectionalRecurrentComponent::GetInternalMemory(uint64_t a1, uint64_t a2, uint64_t a3)
{
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v21, a2, 0, *(a2 + 20), 0, *(*(a1 + 176) + *(**(a1 + 176) - 24) + 12));
  (*(**(a1 + 176) + 112))(*(a1 + 176), &v21, a3);
  v6 = *(a2 + 20);
  std::vector<float>::resize((*(a1 + 216) + 24 * a3), v6);
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = vdupq_n_s64(v6 - 1);
    v9 = xmmword_1C378AEF0;
    v10 = xmmword_1C378AF00;
    v11 = vdupq_n_s64(4uLL);
    v12 = v6 - 1;
    v13 = (*(*(a1 + 216) + 24 * a3) + 8);
    do
    {
      v14 = vmovn_s64(vcgeq_u64(v8, v10));
      if (vuzp1_s16(v14, *v8.i8).u8[0])
      {
        *(v13 - 2) = v12;
      }

      if (vuzp1_s16(v14, *&v8).i8[2])
      {
        *(v13 - 1) = v6 + (v7 ^ 0xFFFFFFFE);
      }

      if (vuzp1_s16(*&v8, vmovn_s64(vcgeq_u64(v8, *&v9))).i32[1])
      {
        *v13 = v6 + (v7 ^ 0xFFFFFFFD);
        v13[1] = v6 + (v7 ^ 0xFFFFFFFC);
      }

      v7 += 4;
      v9 = vaddq_s64(v9, v11);
      v10 = vaddq_s64(v10, v11);
      v12 -= 4;
      v13 += 4;
    }

    while (((v6 + 3) & 0xFFFFFFFC) != v7);
  }

  (*(**(a1 + 184) + 112))(*(a1 + 184), *(a1 + 264) + 48 * a3, a3);
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v18, a2, 0, *(a2 + 20), *(*(a1 + 176) + *(**(a1 + 176) - 24) + 12), *(*(a1 + 184) + *(**(a1 + 184) - 24) + 12));
  kaldi::CuMatrixBase<float>::CopyRows(&v18, *(a1 + 264) + 48 * a3, (*(a1 + 216) + 24 * a3), v15, v16);
  v18 = &unk_1F42BFE90;
  v19 = 0u;
  v20 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&v18);
  v21 = &unk_1F42BFE90;
  v22 = 0u;
  v23 = 0u;
  return kaldi::CuMatrixBase<float>::~CuMatrixBase(&v21);
}

void sub_1C3062478(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, __int128 a10, __int128 a11, void *a12, __int128 a13, __int128 a14)
{
  a9 = &unk_1F42BFE90;
  a10 = 0u;
  a11 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&a9);
  a12 = &unk_1F42BFE90;
  a13 = 0u;
  a14 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&a12);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::BidirectionalRecurrentComponent::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(*a1 + 88))(a1);
  v9 = *(a2 + 20);
  v10 = *(a1 + 96);
  if (v9 % v10)
  {
    kaldi::KaldiAssertFailure_("PropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-birnn.cc", 0x111, "batch_size % num_utts == 0", v8);
  }

  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(&v35, "PropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-birnn.cc", 275, 3);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v35, "Running forward propagation for batch size = ", 45);
    v12 = MEMORY[0x1C692A960](v11, v9);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ", which contains ", 17);
    v14 = MEMORY[0x1C692A960](v13, (v9 / v10));
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " frames each from ", 18);
    v16 = MEMORY[0x1C692A960](v15, v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " utterances.", 12);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v35);
  }

  std::vector<float>::resize((*(a1 + 216) + 24 * a4), v9);
  if (v9 >= 1)
  {
    v17 = 0;
    v18 = vdupq_n_s64(v9 - 1);
    v19 = xmmword_1C378AEF0;
    v20 = xmmword_1C378AF00;
    v21 = vdupq_n_s64(4uLL);
    v22 = v9 - 1;
    v23 = (*(*(a1 + 216) + 24 * a4) + 8);
    do
    {
      v24 = vmovn_s64(vcgeq_u64(v18, v20));
      if (vuzp1_s16(v24, *v18.i8).u8[0])
      {
        *(v23 - 2) = v22;
      }

      if (vuzp1_s16(v24, *&v18).i8[2])
      {
        *(v23 - 1) = v9 + (v17 ^ 0xFFFFFFFE);
      }

      if (vuzp1_s16(*&v18, vmovn_s64(vcgeq_u64(v18, *&v19))).i32[1])
      {
        *v23 = v9 + (v17 ^ 0xFFFFFFFD);
        v23[1] = v9 + (v17 ^ 0xFFFFFFFC);
      }

      v17 += 4;
      v19 = vaddq_s64(v19, v21);
      v20 = vaddq_s64(v20, v21);
      v22 -= 4;
      v23 += 4;
    }

    while (((v9 + 3) & 0xFFFFFFFC) != v17);
  }

  kaldi::CuMatrix<float>::Resize(*(a1 + 240) + 48 * a4, v9, *(a2 + 16), 1u, 0);
  kaldi::CuMatrixBase<float>::CopyRows(*(a1 + 240) + 48 * a4, a2, (*(a1 + 216) + 24 * a4), v25, v26);
  kaldi::CuMatrix<float>::Resize(*(a1 + 264) + 48 * a4, v9, *(*(a1 + 184) + *(**(a1 + 184) - 24) + 12), 1u, 0);
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v35, a3, 0, *(a3 + 20), 0, *(*(a1 + 176) + *(**(a1 + 176) - 24) + 12));
  v27 = *(a1 + 176) + *(**(a1 + 176) - 24);
  (*(*v27 + 112))(v27, a2, &v35, a4);
  v28 = *(a1 + 184) + *(**(a1 + 184) - 24);
  (*(*v28 + 112))(v28, *(a1 + 240) + 48 * a4, *(a1 + 264) + 48 * a4, a4);
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v32, a3, 0, *(a3 + 20), *(*(a1 + 176) + *(**(a1 + 176) - 24) + 12), *(*(a1 + 184) + *(**(a1 + 184) - 24) + 12));
  kaldi::CuMatrixBase<float>::CopyRows(&v32, *(a1 + 264) + 48 * a4, (*(a1 + 216) + 24 * a4), v29, v30);
  v32 = &unk_1F42BFE90;
  v33 = 0u;
  v34 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&v32);
  v35.__locale_ = &unk_1F42BFE90;
  v36 = 0u;
  v37 = 0u;
  return kaldi::CuMatrixBase<float>::~CuMatrixBase(&v35);
}

void sub_1C306293C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, __int128 a10, __int128 a11, void *a12, __int128 a13, __int128 a14)
{
  a9 = &unk_1F42BFE90;
  a10 = 0u;
  a11 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&a9);
  a12 = &unk_1F42BFE90;
  a13 = 0u;
  a14 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&a12);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::BidirectionalRecurrentComponent::BackpropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  (*(*a1 + 88))(a1);
  v12 = *(a2 + 20);
  v13 = *(a1 + 96);
  v14 = *(*(a1 + 176) + *(**(a1 + 176) - 24) + 12);
  v15 = *(a1 + 184);
  v16 = *v15;
  if (v12 % v13)
  {
    kaldi::KaldiAssertFailure_("BackpropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-birnn.cc", 0x12E, "batch_size % num_utts == 0", v11);
  }

  v17 = *(v15 + *(*v15 - 24) + 12);
  if (kaldi::g_kaldi_verbose_level > 2)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(&v45, "BackpropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-birnn.cc", 304, 3);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v45, "Running backward propagation for batch size = ", 46);
    v19 = MEMORY[0x1C692A960](v18, v12);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, ", which contains ", 17);
    v21 = MEMORY[0x1C692A960](v20, (v12 / v13));
    v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, " frames each from ", 18);
    v23 = MEMORY[0x1C692A960](v22, v13);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, " utterances.", 12);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v45);
  }

  if (v12 / v13 < 2)
  {
    kaldi::KaldiAssertFailure_("BackpropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-birnn.cc", 0x133, "frames_in_batch > 1 && Bidirectional recurrent component backprop will not work with batches of single frames.", v11);
  }

  if (v12 != (*(*(a1 + 216) + 24 * a6 + 8) - *(*(a1 + 216) + 24 * a6)) >> 2)
  {
    kaldi::KaldiAssertFailure_("BackpropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-birnn.cc", 0x134, "reversed_indices_[batch_index].size() == batch_size", v11);
  }

  v40 = a6;
  v24 = a6;
  v25 = *(a1 + 240) + 48 * a6;
  if (*(v25 + 20) != v12 || *(v25 + 16) != *(a2 + 16))
  {
    kaldi::KaldiAssertFailure_("BackpropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-birnn.cc", 0x136, "reversed_input_[batch_index].NumRows() == batch_size && reversed_input_[batch_index].NumCols() == in.NumCols()", v11);
  }

  kaldi::CuMatrix<float>::Resize(*(a1 + 288) + 48 * a6, v12, *(a1 + *(*a1 - 24) + 8), 0, 0);
  kaldi::CuMatrix<float>::Resize(*(a1 + 312) + 48 * a6, v12, *(a1 + *(*a1 - 24) + 8), 0, 0);
  v26 = *(a1 + 176);
  v27 = *(*v26 - 24);
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v45, a3, 0, *(a3 + 20), 0, v14);
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v42, a4, 0, *(a4 + 20), 0, v14);
  (*(*&v26[v27] + 128))(&v26[v27], a2, &v45, &v42, *(a1 + 288) + 48 * v24, v40);
  v42 = &unk_1F42BFE90;
  v43 = 0u;
  v44 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&v42);
  v45.__locale_ = &unk_1F42BFE90;
  v46 = 0u;
  v47 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&v45);
  kaldi::CuMatrix<float>::Resize(*(a1 + 336) + 48 * v24, v12, v17, 1u, 0);
  v28 = *(a1 + 336) + 48 * v24;
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v45, a4, 0, *(a4 + 20), v14, v17);
  kaldi::CuMatrixBase<float>::CopyRows(v28, &v45, (*(a1 + 216) + 24 * v24), v29, v30);
  v45.__locale_ = &unk_1F42BFE90;
  v46 = 0u;
  v47 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&v45);
  kaldi::CuMatrix<float>::Resize(*(a1 + 264) + 48 * v24, v12, v17, 1u, 0);
  v31 = *(a1 + 264) + 48 * v24;
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v45, a3, 0, *(a3 + 20), v14, v17);
  kaldi::CuMatrixBase<float>::CopyRows(v31, &v45, (*(a1 + 216) + 24 * v24), v32, v33);
  v45.__locale_ = &unk_1F42BFE90;
  v46 = 0u;
  v47 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&v45);
  v34 = *(a1 + 184) + *(**(a1 + 184) - 24);
  result = (*(*v34 + 128))(v34, *(a1 + 240) + 48 * v24, *(a1 + 264) + 48 * v24, *(a1 + 336) + 48 * v24, *(a1 + 312) + 48 * v24, v40);
  if (a5)
  {
    kaldi::CuMatrixBase<float>::CopyRows(a5, *(a1 + 312) + 48 * v24, (*(a1 + 216) + 24 * v24), v36, v37);
    return kaldi::CuMatrixBase<float>::AddMat(a5, *(a1 + 288) + 48 * v24, 111, v38, v39, 1.0, 1.0);
  }

  return result;
}

void sub_1C3062F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, __int128 a18, __int128 a19)
{
  a17 = &unk_1F42BFE90;
  a18 = 0u;
  a19 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&a17);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::BidirectionalRecurrentComponent::AccumGradients(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v7 = a1[22] + *(*a1[22] - 24);
  (*(*v7 + 232))(v7);
  v8 = a1[30] + 48 * a5;
  v9 = *(*(a1[23] + *(*a1[23] - 24)) + 232);

  return v9();
}

uint64_t kaldi::nnet1::BidirectionalRecurrentComponent::UpdateWeights(kaldi::nnet1::BidirectionalRecurrentComponent *this, void *a2, uint64_t a3)
{
  v6 = *(this + 22) + *(**(this + 22) - 24);
  (*(*v6 + 256))(v6);
  v7 = *(this + 23);
  v8 = *(*v7 - 24);
  v9 = *(*&v7[v8] + 256);

  return v9(&v7[v8], a2, a3);
}

uint64_t kaldi::nnet1::BidirectionalRecurrentComponent::SetGradientNormalization(uint64_t a1, float a2)
{
  v4 = *(a1 + 176) + *(**(a1 + 176) - 24);
  (*(*v4 + 240))(v4);
  v5 = *(*(*(a1 + 184) + *(**(a1 + 184) - 24)) + 240);
  v6.n128_f32[0] = a2;

  return v5(v6);
}

uint64_t kaldi::nnet1::BidirectionalRecurrentComponent::NormalizeGradients(kaldi::nnet1::BidirectionalRecurrentComponent *this, float a2)
{
  v4 = *(this + 22) + *(**(this + 22) - 24);
  (*(*v4 + 248))(v4);
  v5 = *(*(*(this + 23) + *(**(this + 23) - 24)) + 248);
  v6.n128_f32[0] = a2;

  return v5(v6);
}

uint64_t kaldi::nnet1::BidirectionalRecurrentComponent::Check(kaldi::nnet1::BidirectionalRecurrentComponent *this)
{
  v2 = *(this + 22) + *(**(this + 22) - 24);
  if ((*(*v2 + 24))(v2) == 280 || (v3 = *(this + 23) + *(**(this + 23) - 24), (*(*v3 + 24))(v3) == 280))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v22, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-birnn.cc", 363);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v22, "no recursive recurrent definition");
    goto LABEL_10;
  }

  v4 = *(this + 22);
  v5 = v4 + *(*v4 - 24);
  v6 = *(v5 + 8);
  v7 = this + *(*this - 24);
  if (v6 != *(v7 + 2))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v22, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-birnn.cc", 366);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "the forward RNN's input dimension does not match the component's input dimension ", 81);
    v12 = MEMORY[0x1C692A960](v11, *(*(this + 22) + *(**(this + 22) - 24) + 8));
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " vs ", 4);
    MEMORY[0x1C692A960](v13, *(this + *(*this - 24) + 8));
    goto LABEL_10;
  }

  v8 = *(this + 23) + *(**(this + 23) - 24);
  if (*(v8 + 8) != v6)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v22, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-birnn.cc", 370);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "the backward RNN's input dimension does not match the component's input dimension ", 82);
    v15 = MEMORY[0x1C692A960](v14, *(*(this + 23) + *(**(this + 23) - 24) + 8));
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " vs ", 4);
    MEMORY[0x1C692A960](v16, *(this + *(*this - 24) + 8));
    goto LABEL_10;
  }

  if (*(v8 + 12) + *(v5 + 12) != *(v7 + 3))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v22, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-birnn.cc", 374);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "the component has output dimension ", 35);
    v18 = MEMORY[0x1C692A960](v17, *(this + *(*this - 24) + 12));
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " , doesn't equal the sum of individual RNN ", 43);
    v20 = MEMORY[0x1C692A960](v19, *(*(this + 22) + *(**(this + 22) - 24) + 12));
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, " and ", 5);
    MEMORY[0x1C692A960](v21, *(*(this + 23) + *(**(this + 23) - 24) + 12));
LABEL_10:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v22);
  }

  (*(*v4 + 128))();
  v9 = *(**(this + 23) + 128);

  return v9();
}

uint64_t kaldi::nnet1::BidirectionalRecurrentComponent::GetHistoryState(uint64_t a1, uint64_t a2, int a3, uint64_t a4, const char *a5)
{
  if (a3 < 0 || *(a1 + 80) <= a3)
  {
    kaldi::KaldiAssertFailure_("GetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-birnn.cc", 0x182, "batch_index >= 0 && batch_index < ropts_.num_subbatches", a5);
  }

  v7 = *(*(a1 + 176) + 8) + 48 * a3;
  v8 = *(v7 + 20);
  v9 = *(*(a1 + 184) + 8) + 48 * a3;
  if (*(v9 + 20) != v8)
  {
    kaldi::KaldiAssertFailure_("GetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-birnn.cc", 0x183, "backward_rnn_->history_state_[batch_index].NumRows() == history_num_seqs", a5);
  }

  v11 = *(v7 + 16);
  v12 = *(v9 + 16);
  kaldi::CuMatrix<float>::Resize(a2, v8, (v12 + v11), 1u, 0);
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v18, a2, 0, *(a2 + 20), 0, v11);
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v18, *(*(a1 + 176) + 8) + 48 * a3, 111, v13, v14);
  v18 = &unk_1F42BFE90;
  v19 = 0u;
  v20 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&v18);
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v18, a2, 0, *(a2 + 20), v11, v12);
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v18, *(*(a1 + 184) + 8) + 48 * a3, 111, v15, v16);
  v18 = &unk_1F42BFE90;
  v19 = 0u;
  v20 = 0u;
  return kaldi::CuMatrixBase<float>::~CuMatrixBase(&v18);
}

void sub_1C3063948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, __int128 a11, __int128 a12)
{
  a10 = &unk_1F42BFE90;
  a11 = 0u;
  a12 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&a10);
  _Unwind_Resume(a1);
}

_DWORD *kaldi::nnet1::BidirectionalRecurrentComponent::GetHistoryState(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, const char *a5)
{
  if ((a4 & 0x80000000) != 0 || *(a1 + 80) <= a4)
  {
    kaldi::KaldiAssertFailure_("GetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-birnn.cc", 0x190, "batch_index >= 0 && batch_index < ropts_.num_subbatches", a5);
  }

  if ((a3 & 0x80000000) != 0 || (v7 = *(*(a1 + 176) + 8) + 48 * a4, v8 = *(v7 + 20), v8 <= a3))
  {
    kaldi::KaldiAssertFailure_("GetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-birnn.cc", 0x191, "sequence_idx >= 0 && sequence_idx < history_num_seqs", a5);
  }

  v9 = *(*(a1 + 184) + 8) + 48 * a4;
  if (*(v9 + 20) != v8)
  {
    kaldi::KaldiAssertFailure_("GetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-birnn.cc", 0x192, "backward_rnn_->history_state_[batch_index].NumRows() == history_num_seqs", a5);
  }

  v11 = a4;
  v12 = *(v7 + 16);
  v13 = *(v9 + 16);
  kaldi::CuVector<float>::Resize(a2, (v13 + v12), 1u, a4, a5);
  kaldi::CuSubVector<float>::CuSubVector(v35, a2, 0, v12, v14);
  v18 = *(*(a1 + 176) + 8) + 48 * v11;
  if (*(v18 + 20) <= a3)
  {
    kaldi::KaldiAssertFailure_("Row", "../engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", 0x22A, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v17);
  }

  v19 = *(v18 + 8) + 4 * (*(v18 + 24) * a3);
  v20 = *(v18 + 16);
  v21 = *(v18 + 32);
  v32 = v19;
  v31 = &unk_1F42BFF30;
  v33 = v20;
  v34 = v21;
  kaldi::CuVectorBase<float>::CopyFromVec(v35, &v31, v15, v16, v17);
  kaldi::CuSubVector<float>::CuSubVector(v35, a2, v12, v13, v22);
  v26 = *(*(a1 + 184) + 8) + 48 * v11;
  if (*(v26 + 20) <= a3)
  {
    kaldi::KaldiAssertFailure_("Row", "../engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", 0x22A, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v25);
  }

  v27 = *(v26 + 8) + 4 * (*(v26 + 24) * a3);
  v28 = *(v26 + 16);
  v29 = *(v26 + 32);
  v32 = v27;
  v31 = &unk_1F42BFF30;
  v33 = v28;
  v34 = v29;
  return kaldi::CuVectorBase<float>::CopyFromVec(v35, &v31, v23, v24, v25);
}

float kaldi::nnet1::BidirectionalRecurrentComponent::SetInternalBoundary(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = a3;
  v8 = *(a1 + 176);
  v10 = *(v8 + 104);
  v11 = *(v8 + 112);
  v9 = (v8 + 104);
  if (v10 == v11)
  {
    std::vector<kaldi::CuVector<float>>::resize(v9, *(a1 + 80), a3, a4, a5);
    std::vector<kaldi::CuMatrix<float>>::resize((*(a1 + 176) + 128), *(a1 + 80));
  }

  v12 = *(a1 + 184);
  v14 = *(v12 + 104);
  v15 = *(v12 + 112);
  v13 = (v12 + 104);
  if (v14 == v15)
  {
    std::vector<kaldi::CuVector<float>>::resize(v13, *(a1 + 80), a3, a4, a5);
    std::vector<kaldi::CuMatrix<float>>::resize((*(a1 + 184) + 128), *(a1 + 80));
  }

  v16 = *(a2 + 16);
  if (v16)
  {
    if (((v16 + (v16 >> 31)) & 0xFFFFFFFE) != v16)
    {
      kaldi::KaldiAssertFailure_("SetInternalBoundary", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-birnn.cc", 0x1AB, "actual_boundary_dim * 2 == boundary.Dim()", a5);
    }

    v17 = (v16 / 2);
    kaldi::CuSubVector<float>::CuSubVector(v36, a2, 0, v16 / 2, a5);
    kaldi::CuSubVector<float>::CuSubVector(v35, a2, v17, v17, v18);
    v21 = kaldi::CuVectorBase<float>::Sum(v36);
    v22 = *(*(a1 + 176) + 104) + 32 * v5;
    if (*&v21 <= 0.0)
    {
      kaldi::CuVector<float>::Resize(v22, 0, 1u, v19, v20);
    }

    else
    {
      kaldi::CuVector<float>::Resize(v22, v17, 1u, v19, v20);
      kaldi::CuVectorBase<float>::CopyFromVec((*(*(a1 + 176) + 104) + 32 * v5), v36, v23, v24, v25);
    }

    kaldi::CuVector<float>::Resize(*(*(a1 + 184) + 104) + 32 * v5, v17, 1u, v26, v27);
    return kaldi::CuVectorBase<float>::ReverseCopyFromVec(*(*(a1 + 184) + 104) + 32 * v5, v35, v32, v33, v34);
  }

  else
  {
    kaldi::CuVector<float>::Resize(*(*(a1 + 176) + 104) + 32 * v5, 0, 1u, a4, a5);
    v30 = *(*(a1 + 184) + 104) + 32 * v5;

    kaldi::CuVector<float>::Resize(v30, 0, 1u, v28, v29);
  }

  return result;
}

uint64_t kaldi::nnet1::BidirectionalRecurrentComponent::SetTrainOptions(kaldi::nnet1::BidirectionalRecurrentComponent *this, char **a2)
{
  kaldi::nnet1::RecurrentBaseComponent::SetTrainOptions(this, a2);
  (*(**(this + 22) + 104))(*(this + 22), a2);
  v4 = *(**(this + 23) + 104);

  return v4();
}

void kaldi::nnet1::RecurrentBaseComponent::SetTrainOptions(kaldi::nnet1::RecurrentBaseComponent *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {
    v6 = *(v5 + 8);
    *(this + 71) = *(v5 + 23);
    *(this + 56) = v6;
    *(this + 12) = *(v5 + 6);
    v7 = this + *(*this - 24);
    v8 = *(lpsrc + 1);
    *(v7 + 71) = *(lpsrc + 23);
    *(v7 + 56) = v8;
  }

  else if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiLogMessage::KaldiLogMessage(v9, "SetTrainOptions", "../engine/common/libquasar/libkaldi/src/nnet/nnet-component.h", 566);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "need RecurrentNnetTrainOptions in recurrent style component, ignoring SetTrainOptions", 85);
    kaldi::KaldiLogMessage::~KaldiLogMessage(v9);
  }
}

void kaldi::nnet1::BidirectionalRecurrentComponent::SetHistoryState()
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v0, "SetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-birnn.cc", 452);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "This function is probably not meaningful for bidirectional RNNs.");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v0, "SetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-birnn.cc", 458);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "This function is probably not meaningful for bidirectional RNNs.");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

void kaldi::nnet1::BidirectionalRecurrentComponent::ResetHistoryState()
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v0, "ResetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-birnn.cc", 464);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "This function is probably not meaningful for bidirectional RNNs.");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

uint64_t kaldi::nnet1::BidirectionalRecurrentComponent::ResetHistoryState(kaldi::nnet1::BidirectionalRecurrentComponent *this)
{
  (*(**(this + 22) + 32))(*(this + 22));
  v2 = *(**(this + 23) + 32);

  return v2();
}

_BYTE *kaldi::nnet1::BidirectionalRecurrentComponent::EnsureBuffers(_BYTE *this)
{
  if ((this[360] & 1) == 0)
  {
    v1 = this;
    (*(*this + 128))(this);
    v2 = *(v1 + 20);
    std::vector<std::vector<int>>::resize(v1 + 27, v2);
    std::vector<kaldi::CuMatrix<float>>::resize(v1 + 30, v2);
    std::vector<kaldi::CuMatrix<float>>::resize(v1 + 33, v2);
    std::vector<kaldi::CuMatrix<float>>::resize(v1 + 36, v2);
    std::vector<kaldi::CuMatrix<float>>::resize(v1 + 39, v2);
    std::vector<kaldi::CuMatrix<float>>::resize(v1 + 42, v2);
    (*(**(v1 + 22) + 88))(*(v1 + 22));
    this = (*(**(v1 + 23) + 88))(*(v1 + 23));
    v1[360] = 1;
  }

  return this;
}

void kaldi::nnet1::RecurrentBaseComponent::SetHistoryOptions(kaldi::nnet1::RecurrentBaseComponent *this, const kaldi::nnet1::HistoryOptions *a2)
{
  v4 = (*(*this + 120))(this);
  v5 = **v4;
  if (v6)
  {
    v7 = *(v6 + 8);
    *&v10[15] = *(v6 + 23);
    *v10 = v7;
    v9 = &unk_1F42CB1D8;
    v11 = &unk_1F42CB1F8;
    v8 = *(v6 + 13);
    v12 = *(a2 + 2);
    v13 = v8;
    (*(*this + 104))(this, &v9);
    kaldi::nnet1::RecurrentNnetTrainOptions::~RecurrentNnetTrainOptions(&v9);
  }

  else if (kaldi::g_kaldi_verbose_level >= -1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v9, "SetHistoryOptions", "../engine/common/libquasar/libkaldi/src/nnet/nnet-component.h", 585);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, "Inconsistent return type: RecurrentBaseComponent::GetTrainOptions() can not be cast to RecurrentNnetTrainOptions", 112);
    kaldi::KaldiWarnMessage::~KaldiWarnMessage(&v9);
  }
}

void kaldi::nnet1::Component::GetUnitOutputFnc(uint64_t a1)
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v9, "GetUnitOutputFnc", "../engine/common/libquasar/libkaldi/src/nnet/nnet-component.h", 353);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "GetUnitOutputFnc", 16);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, " is not implemented for ", 24);
  v4 = (*(*a1 + 24))(a1);
  kaldi::nnet1::Component::TypeToMarker(v4, &v8);
  if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v8;
  }

  else
  {
    v5 = v8.__r_.__value_.__r.__words[0];
  }

  if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v8.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v8.__r_.__value_.__l.__size_;
  }

  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, v5, size);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v7, " component.");
  std::string::~string(&v8);
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v9);
}

{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v9, "GetUnitOutputFnc", "../engine/common/libquasar/libkaldi/src/nnet/nnet-component.h", 357);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "GetUnitOutputFnc", 16);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, " is not implemented for ", 24);
  v4 = (*(*a1 + 24))(a1);
  kaldi::nnet1::Component::TypeToMarker(v4, &v8);
  if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v8;
  }

  else
  {
    v5 = v8.__r_.__value_.__r.__words[0];
  }

  if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v8.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v8.__r_.__value_.__l.__size_;
  }

  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, v5, size);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v7, " component.");
  std::string::~string(&v8);
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v9);
}

void kaldi::nnet1::UpdatableComponent::GetNormalizedLearningRate(kaldi::nnet1::UpdatableComponent *this)
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v9, "GetNormalizedLearningRate", "../engine/common/libquasar/libkaldi/src/nnet/nnet-component.h", 410);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "GetNormalizedLearningRate", 25);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, " is not implemented for ", 24);
  v4 = (*(*this + 24))(this);
  kaldi::nnet1::Component::TypeToMarker(v4, &v8);
  if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v8;
  }

  else
  {
    v5 = v8.__r_.__value_.__r.__words[0];
  }

  if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v8.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v8.__r_.__value_.__l.__size_;
  }

  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, v5, size);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v7, " component.");
  std::string::~string(&v8);
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v9);
}

void kaldi::nnet1::UpdatableComponent::PerturbParams(kaldi::nnet1::UpdatableComponent *this, float a2)
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v10, "PerturbParams", "../engine/common/libquasar/libkaldi/src/nnet/nnet-component.h", 430);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "PerturbParams", 13);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, " is not implemented for ", 24);
  v5 = (*(*this + 24))(this);
  kaldi::nnet1::Component::TypeToMarker(v5, &v9);
  if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v9;
  }

  else
  {
    v6 = v9.__r_.__value_.__r.__words[0];
  }

  if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v9.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v9.__r_.__value_.__l.__size_;
  }

  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v6, size);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v8, " component.");
  std::string::~string(&v9);
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v10);
}

void kaldi::nnet1::UpdatableComponent::GetGradient(uint64_t a1)
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v9, "GetGradient", "../engine/common/libquasar/libkaldi/src/nnet/nnet-component.h", 441);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "GetGradient", 11);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, " is not implemented for ", 24);
  v4 = (*(*a1 + 24))(a1);
  kaldi::nnet1::Component::TypeToMarker(v4, &v8);
  if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v8;
  }

  else
  {
    v5 = v8.__r_.__value_.__r.__words[0];
  }

  if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v8.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v8.__r_.__value_.__l.__size_;
  }

  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, v5, size);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v7, " component.");
  std::string::~string(&v8);
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v9);
}

void kaldi::nnet1::BidirectionalRecurrentComponent::~BidirectionalRecurrentComponent(kaldi::nnet1::BidirectionalRecurrentComponent *this)
{
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent((v1 + 368));
}

{
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent((v1 + 368));

  JUMPOUT(0x1C692AE10);
}

void kaldi::nnet1::BidirectionalRecurrentComponent::PropagateFnc()
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v0, "PropagateFnc", "../engine/common/libquasar/libkaldi/src/nnet/nnet-birnn.h", 82);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Running on single input doesn't make sense for bidirectional RNNs, since history state is not saved.");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

void non-virtual thunk tokaldi::nnet1::BidirectionalRecurrentComponent::~BidirectionalRecurrentComponent(kaldi::nnet1::BidirectionalRecurrentComponent *this)
{

  kaldi::nnet1::UpdatableComponent::~UpdatableComponent((this + 208));
}

{
  kaldi::nnet1::BidirectionalRecurrentComponent::~BidirectionalRecurrentComponent((this - 160));
}

{

  kaldi::nnet1::UpdatableComponent::~UpdatableComponent((this + 200));
}

{
  kaldi::nnet1::BidirectionalRecurrentComponent::~BidirectionalRecurrentComponent((this - 168));
}

void virtual thunk tokaldi::nnet1::BidirectionalRecurrentComponent::~BidirectionalRecurrentComponent(kaldi::nnet1::BidirectionalRecurrentComponent *this)
{
  v2 = (v1 + 368);

  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v2);
}

{
  kaldi::nnet1::BidirectionalRecurrentComponent::~BidirectionalRecurrentComponent((this + *(*this - 24)));
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 8) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

void kaldi::nnet1::BidirectionalRecurrentComponent::~BidirectionalRecurrentComponent(kaldi::nnet1::BidirectionalRecurrentComponent *this, uint64_t *a2)
{
  v4 = *a2;
  *this = *a2;
  *(this + *(v4 - 24)) = a2[3];
  *(this + 20) = &unk_1F42C05C0;
  *(this + 21) = &unk_1F42C05E8;
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

  v7 = (this + 336);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v7);
  v7 = (this + 312);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v7);
  v7 = (this + 288);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v7);
  v7 = (this + 264);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v7);
  v7 = (this + 240);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v7);
  v7 = (this + 216);
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v7);
  if (*(this + 215) < 0)
  {
    operator delete(*(this + 24));
  }

  kaldi::CuMatrixBase<float>::~CuMatrixBase(this + 168);
  kaldi::CuMatrixBase<float>::~CuMatrixBase(this + 160);
  kaldi::nnet1::RecurrentBaseComponent::~RecurrentBaseComponent(this, a2 + 1);
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::LinearTransform(uint64_t a1, uint64_t a2)
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
  *a1 = &unk_1F42C0B88;
  *(a1 + 88) = &unk_1F42C0CC0;
  *(a1 + 96) = &unk_1F42C0CE8;
  *(a1 + 104) = 0;
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
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v18, "LinearTransform", "../engine/common/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 76);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "deep copy constructor not implemented in the case of vectorized_weights.", 72);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v18);
  }

  v12 = *(a2 + 104);
  if (v12)
  {
    kaldi::NewCuSubOrMat<float>(v12, 0);
  }

  v14 = *(a1 + 112);
  v13 = *(a1 + 120);
  if (v13 != v14)
  {
    v15 = 0;
    do
    {
      if (*(*(a2 + 112) + 8 * v15))
      {
        v16 = kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::LinearityCorr(a2, v15, v8, v9, v10);
        kaldi::NewCuSubOrMat<float>(v16, *(a1 + 16));
      }

      ++v15;
    }

    while (v15 < (v13 - v14) >> 3);
  }

  if (*(a2 + 240) != *(a2 + 232))
  {
    kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::InitResidualAggregator(a1, (a1 + 232));
  }

  return a1;
}

void sub_1C3065254(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  kaldi::nnet1::QuantizerResidualAggregator::~QuantizerResidualAggregator(v15);
  v17 = *v14;
  if (*v14)
  {
    *(v10 + 26) = v17;
    operator delete(v17);
  }

  v18 = *v13;
  if (*v13)
  {
    *(v10 + 23) = v18;
    operator delete(v18);
  }

  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a10);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a10);
  v19 = *(v10 + 13);
  *(v10 + 13) = 0;
  if (v19)
  {
    (*(*v19 + 24))(v19);
  }

  kaldi::CuMatrixBase<float>::~CuMatrixBase(v12);
  kaldi::CuMatrixBase<float>::~CuMatrixBase(v11);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v10);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::LinearityCorr(uint64_t a1, int a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *(a1 + 112);
  if (a2 >= ((*(a1 + 120) - v5) >> 3))
  {
    kaldi::KaldiAssertFailure_("LinearityCorr", "../engine/common/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 0x19A, "linearity_corr_.size() > batch_idx", a5);
  }

  result = *(v5 + 8 * a2);
  if (!result)
  {
    kaldi::KaldiAssertFailure_("LinearityCorr", "../engine/common/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 0x19B, "linearity_corr_[batch_idx]", a5);
  }

  return result;
}

{
  v5 = *(a1 + 112);
  if (a2 >= ((*(a1 + 120) - v5) >> 3))
  {
    kaldi::KaldiAssertFailure_("LinearityCorr", "../engine/common/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 0x19F, "linearity_corr_.size() > batch_idx", a5);
  }

  result = *(v5 + 8 * a2);
  if (!result)
  {
    kaldi::KaldiAssertFailure_("LinearityCorr", "../engine/common/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 0x1A0, "linearity_corr_[batch_idx]", a5);
  }

  return result;
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::InitResidualAggregator(uint64_t a1, uint64_t *a2)
{
  kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::EnsureCorrs(a1);
  v7 = kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::LinearityCorr(a1, ((*(a1 + 120) - *(a1 + 112)) >> 3) - 1, v4, v5, v6);

  return kaldi::nnet1::QuantizerResidualAggregator::PushSetup(a2, v7);
}

void kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::~LinearTransform(uint64_t a1)
{
  *a1 = &unk_1F42C0B88;
  v2 = a1 + 88;
  *(a1 + 88) = &unk_1F42C0CC0;
  v3 = a1 + 96;
  *(a1 + 96) = &unk_1F42C0CE8;
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

  v7 = (a1 + 136);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v7);
  v7 = (a1 + 112);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&v7);
  v6 = *(a1 + 104);
  *(a1 + 104) = 0;
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  kaldi::CuMatrixBase<float>::~CuMatrixBase(v3);
  kaldi::CuMatrixBase<float>::~CuMatrixBase(v2);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(a1);
}

{
  kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::~LinearTransform(a1);

  JUMPOUT(0x1C692AE10);
}

void non-virtual thunk tokaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::~LinearTransform(uint64_t a1)
{
  kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::~LinearTransform(a1 - 88);
}

{
  kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::~LinearTransform(a1 - 96);
}

{
  kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::~LinearTransform(a1 - 88);

  JUMPOUT(0x1C692AE10);
}

{
  kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::~LinearTransform(a1 - 96);

  JUMPOUT(0x1C692AE10);
}

void kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::InitData(uint64_t a1, uint64_t *a2, kaldi::UniformRandomNumber *a3)
{
  v68 = 1036831949;
  kaldi::nnet1::Component::TypeToMarker(2, &v67);
  kaldi::nnet1::Component::TypeToMarker(*(a1 + 160), &v66);
  v65 = -1;
  memset(v64, 0, sizeof(v64));
  while (1)
  {
    if ((*(a2 + *(*a2 - 24) + 32) & 2) != 0)
    {
      goto LABEL_98;
    }

    kaldi::ReadToken(a2, 0, v64, v6, v7);
    if (SHIBYTE(v64[2]) < 0)
    {
      break;
    }

    if (HIBYTE(v64[2]) <= 0xEu)
    {
      if (HIBYTE(v64[2]) == 9)
      {
        v19 = v64;
        goto LABEL_78;
      }

      if (HIBYTE(v64[2]) == 12)
      {
        if (v64[0] != 0x536D6F646E61523CLL || LODWORD(v64[1]) != 1046766949)
        {
          v30 = v64;
          goto LABEL_93;
        }

LABEL_66:
        kaldi::ReadBasicType<int>(a2, 0, &v65);
        goto LABEL_89;
      }

      if (HIBYTE(v64[2]) != 13)
      {
        goto LABEL_131;
      }

      if (v64[0] != 0x74536D617261503CLL || *(v64 + 5) != 0x3E7665646474536DLL)
      {
        goto LABEL_131;
      }

      goto LABEL_60;
    }

    if (HIBYTE(v64[2]) != 15)
    {
      if (HIBYTE(v64[2]) == 18)
      {
        if (v64[0] != 0x6E6569646172473CLL || v64[1] != 0x7079546D726F4E74 || LOWORD(v64[2]) != 15973)
        {
          goto LABEL_131;
        }

        goto LABEL_75;
      }

      if (HIBYTE(v64[2]) != 19)
      {
        goto LABEL_131;
      }

      v20 = v64[0] == 0x61725474696E493CLL && v64[1] == 0x79546D726F66736ELL;
      if (!v20 || *(&v64[1] + 3) != 0x3E657079546D726FLL)
      {
        goto LABEL_131;
      }

LABEL_59:
      v22 = &v67;
LABEL_76:
      kaldi::ReadToken(a2, 0, v22, v8, v9);
      goto LABEL_89;
    }

    v29 = v64[0] == 0x61526E7261654C3CLL && *(v64 + 7) == 0x3E66656F43657461;
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

  if (v64[1] == 13 && *v64[0] == 0x74536D617261503CLL && *(v64[0] + 5) == 0x3E7665646474536DLL)
  {
LABEL_60:
    v13 = &v68;
    goto LABEL_88;
  }

  if (v64[1] == 15)
  {
    v12 = *v64[0] == 0x61526E7261654C3CLL && *(v64[0] + 7) == 0x3E66656F43657461;
    v13 = (a1 + 168);
    if (v12)
    {
      goto LABEL_88;
    }
  }

  if (v64[1] == 19)
  {
    if (*v64[0] == 0x61725474696E493CLL && *(v64[0] + 1) == 0x79546D726F66736ELL && *(v64[0] + 11) == 0x3E657079546D726FLL)
    {
      goto LABEL_59;
    }
  }

  else if (v64[1] == 12 && *v64[0] == 0x536D6F646E61523CLL && *(v64[0] + 2) == 1046766949)
  {
    goto LABEL_66;
  }

  if (v64[1] != 9)
  {
    if (v64[1] != 18)
    {
      goto LABEL_91;
    }

    v17 = *v64[0] == 0x6E6569646172473CLL && *(v64[0] + 1) == 0x7079546D726F4E74;
    if (!v17 || *(v64[0] + 8) != 15973)
    {
      goto LABEL_91;
    }

LABEL_75:
    v22 = &v66;
    goto LABEL_76;
  }

  v19 = v64[0];
LABEL_78:
  v26 = *v19;
  v27 = *(v19 + 8);
  v28 = v26 == 0x6461724778614D3CLL && v27 == 62;
  v13 = (a1 + 164);
  if (v28)
  {
    goto LABEL_88;
  }

  if ((HIBYTE(v64[2]) & 0x80) == 0)
  {
    goto LABEL_131;
  }

LABEL_91:
  if (v64[1] != 12)
  {
    goto LABEL_131;
  }

  v30 = v64[0];
LABEL_93:
  v31 = *v30;
  v32 = *(v30 + 2);
  if (v31 != 0x6E6F706D6F432F3CLL || v32 != 1047817829)
  {
LABEL_131:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v63, "InitData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 135);
    v52 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v63, "Unknown token ", 14);
    if (SHIBYTE(v64[2]) >= 0)
    {
      v53 = v64;
    }

    else
    {
      v53 = v64[0];
    }

    if (SHIBYTE(v64[2]) >= 0)
    {
      v54 = HIBYTE(v64[2]);
    }

    else
    {
      v54 = v64[1];
    }

    v55 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, v53, v54);
    v56 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v55, ", a typo in config?", 19);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v56, " (ParamStddev|LearnRateCoef|InitTransformType|RandomSeed|GradientNormType|MaxGrad)", 82);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v63);
  }

LABEL_98:
  inited = kaldi::nnet1::Component::MarkerToMatrixInitType(&v67);
  *(a1 + 160) = kaldi::nnet1::Component::MarkerToGradientNormType(&v66);
  if (v65 >= 1)
  {
    kaldi::UniformRandomNumber::SetRandomSeeds(a3, v65);
  }

  kaldi::GaussRandomNumber::GaussRandomNumber(v59, a3);
  kaldi::Matrix<float>::Matrix(v57, *(a1 + 12), *(a1 + 8), 0, 0);
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
          v44 = *&v68;
          kaldi::GaussRandomNumber::Rand(v59, 0, v35, v36, v37);
          v43 = v44 * v45;
LABEL_112:
          *(v57[0] + 4 * v39 * v58 + 4 * v41) = v43;
          break;
        case 1:
          v42 = *&v68;
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

  v47 = *(v46 + 20);
  if (v47 != kaldi::MatrixBase<float>::NumRows(v57))
  {
    goto LABEL_130;
  }

  v48 = *(a1 + 104);
  if (!v48)
  {
    goto LABEL_138;
  }

  v49 = *(v48 + 16);
  if (v49 != kaldi::MatrixBase<float>::NumCols(v57))
  {
LABEL_130:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v63, "InitData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 158);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v63, "Linearity().NumRows() == mat.NumRows() && Linearity().NumCols() == mat.NumCols()", 80);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v63);
  }

  v51 = *(a1 + 104);
  if (!v51)
  {
LABEL_138:
    kaldi::KaldiAssertFailure_("Linearity", "../engine/common/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 0x150, "linearity_", v37);
  }

  kaldi::CuMatrixBase<float>::CopyFromMat(v51, v57, 111, v50, v37);
  kaldi::Matrix<float>::~Matrix(v57);
  if (__p)
  {
    v62 = __p;
    operator delete(__p);
  }

  v63[0] = &v60;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](v63);
  if (SHIBYTE(v64[2]) < 0)
  {
    operator delete(v64[0]);
  }

  if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v66.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v67.__r_.__value_.__l.__data_);
  }
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::ReadData(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  while (kaldi::Peek(a2, a3) == 60)
  {
    v31 = 0uLL;
    v32 = 0;
    kaldi::ReadToken(a2, a3, &v31, v7, v8);
    if (SHIBYTE(v32) < 0)
    {
      if (*(&v31 + 1) != 15 || (*v31 == 0x61526E7261654C3CLL ? (v13 = *(v31 + 7) == 0x3E66656F43657461) : (v13 = 0), v14 = (a1 + 168), !v13))
      {
        if (*(&v31 + 1) == 18)
        {
          v15 = *v31 == 0x6E6569646172473CLL && *(v31 + 8) == 0x7079546D726F4E74;
          if (v15 && *(v31 + 16) == 15973)
          {
            goto LABEL_29;
          }
        }

        if (*(&v31 + 1) != 9)
        {
          goto LABEL_51;
        }

        v17 = v31;
        goto LABEL_37;
      }
    }

    else
    {
      if (HIBYTE(v32) == 9)
      {
        v17 = &v31;
LABEL_37:
        v19 = *v17;
        v20 = *(v17 + 8);
        v21 = v19 == 0x6461724778614D3CLL && v20 == 62;
        v14 = (a1 + 164);
        if (!v21)
        {
LABEL_51:
          kaldi::KaldiErrorMessage::KaldiErrorMessage(__p, "ReadData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 176);
          v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "unrecognized config token ", 26);
          if (v32 >= 0)
          {
            v26 = &v31;
          }

          else
          {
            v26 = v31;
          }

          if (v32 >= 0)
          {
            v27 = HIBYTE(v32);
          }

          else
          {
            v27 = *(&v31 + 1);
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, v26, v27);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
        }

        goto LABEL_42;
      }

      if (HIBYTE(v32) != 15)
      {
        if (HIBYTE(v32) != 18)
        {
          goto LABEL_51;
        }

        v11 = v31 == 0x6E6569646172473CLL && *(&v31 + 1) == 0x7079546D726F4E74;
        if (!v11 || v32 != 15973)
        {
          goto LABEL_51;
        }

LABEL_29:
        __p[0] = 0;
        __p[1] = 0;
        v30 = 0;
        kaldi::ReadToken(a2, a3, __p, v9, v10);
        *(a1 + 160) = kaldi::nnet1::Component::MarkerToGradientNormType(__p);
        if (SHIBYTE(v30) < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_43;
      }

      v18 = v31 == 0x61526E7261654C3CLL && *(&v31 + 7) == 0x3E66656F43657461;
      v14 = (a1 + 168);
      if (!v18)
      {
        goto LABEL_51;
      }
    }

LABEL_42:
    kaldi::ReadBasicType<float>(a2, a3, v14);
LABEL_43:
    if (SHIBYTE(v32) < 0)
    {
      operator delete(v31);
    }
  }

  v22 = *(a1 + 104);
  if (!v22 || (result = (**v22)(v22, a2, a3, a4), *(a1 + 16) = 0, (v24 = *(a1 + 104)) == 0))
  {
    kaldi::KaldiAssertFailure_("Linearity", "../engine/common/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 0x150, "linearity_", v8);
  }

  if (*(v24 + 20) != *(a1 + 12))
  {
    kaldi::KaldiAssertFailure_("ReadData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 0xBA, "Linearity().NumRows() == output_dim_", v8);
  }

  if (*(v24 + 16) != *(a1 + 8))
  {
    kaldi::KaldiAssertFailure_("ReadData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 0xBB, "Linearity().NumCols() == input_dim_", v8);
  }

  return result;
}

void sub_1C3066210(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
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

void *kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::WriteConfig(unsigned int *a1, void *a2, const char *a3, uint64_t a4, const char *a5)
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

void sub_1C3066308(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::WriteData(void *a1, void *a2, int a3, int a4)
{
  (*(*a1 + 168))(a1);
  v9 = a1[13];
  if (!v9)
  {
    kaldi::KaldiAssertFailure_("Linearity", "../engine/common/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 0x14C, "linearity_", v8);
  }

  return kaldi::CuMatrixBase<float>::Write(v9, a2, a3, a4);
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::NumParams(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *(a1 + 104);
  if (!v5)
  {
    kaldi::KaldiAssertFailure_("Linearity", "../engine/common/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 0x14C, "linearity_", a5);
  }

  return (*(v5 + 16) * *(v5 + 20));
}

void *kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::GetParams(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *(a1 + 104);
  if (!v5)
  {
    goto LABEL_5;
  }

  v8 = *(v5 + 16) * *(v5 + 20);
  kaldi::Vector<float>::Resize(a2, v8, 0, a4, a5);
  v14 = 0;
  v15 = 0;
  if (v8 > *(a2 + 8))
  {
    kaldi::KaldiAssertFailure_("SubVector", "../engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.h", 0x264, "static_cast<UnsignedMatrixIndexT>(origin) + static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", a5);
  }

  v13 = *a2;
  LODWORD(v14) = v8;
  v11 = *(a1 + 104);
  if (!v11)
  {
LABEL_5:
    kaldi::KaldiAssertFailure_("Linearity", "../engine/common/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 0x14C, "linearity_", a5);
  }

  return kaldi::VectorBase<float>::CopyRowsFromMat(&v13, v11, v9, v10, a5);
}

void **kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::SetParams(void *a1, uint64_t a2)
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

  return kaldi::CuMatrixBase<float>::CopyRowsFromVec(v6, a2);
}

float kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::SumParams(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *(a1 + 104);
  if (!v6)
  {
    kaldi::KaldiAssertFailure_("Linearity", "../engine/common/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 0x14C, "linearity_", a5);
  }

  return kaldi::CuMatrixBase<float>::Sum(v6, a2, a3, a4, a5);
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::PerturbParams(uint64_t a1, float a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6)
{
  v6 = *(a1 + 104);
  if (!v6)
  {
    kaldi::KaldiAssertFailure_("Linearity", "../engine/common/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 0x150, "linearity_", a6);
  }

  kaldi::CuMatrix<float>::CuMatrix(v13, *(v6 + 20), *(v6 + 16), 1u, 0, 0);
  kaldi::CuMatrixBase<float>::SetRandn(v13);
  v11 = *(a1 + 104);
  if (!v11)
  {
    kaldi::KaldiAssertFailure_("Linearity", "../engine/common/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 0x150, "linearity_", v10);
  }

  kaldi::CuMatrixBase<float>::AddMat(v11, v13, 111, v9, v10, a2, 1.0);
  return kaldi::CuMatrix<float>::~CuMatrix(v13);
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::Info(void *a1)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v10);
  (*(*a1 + 168))(a1, &v10, 0);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "\n linearity", 11);
  v4 = a1[13];
  if (!v4)
  {
    kaldi::KaldiAssertFailure_("Linearity", "../engine/common/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 0x14C, "linearity_", v2);
  }

  kaldi::nnet1::MomentStatistics<float>(v4);
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

void sub_1C3066888(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::InfoGradient(uint64_t a1@<X0>, std::string *a2@<X8>)
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

void sub_1C3066A04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
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

uint64_t kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *(a1 + 104);
  if (!v6)
  {
    kaldi::KaldiAssertFailure_("Linearity", "../engine/common/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 0x150, "linearity_", a5);
  }

  return kaldi::CuMatrixBase<float>::AddMatMat(a3, a2, 111, v6, 0x70);
}

{
  v7 = *(a1 + 104);
  if (!v7)
  {
    kaldi::KaldiAssertFailure_("Linearity", "../engine/common/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 0x150, "linearity_", a5);
  }

  return kaldi::CuVectorBase<float>::AddMatVec(a3, v7, 111, a2, a5);
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::BackpropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *(a1 + 104);
  if (!v6)
  {
    kaldi::KaldiAssertFailure_("Linearity", "../engine/common/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 0x150, "linearity_", a5);
  }

  return kaldi::CuMatrixBase<float>::AddMatMat(a5, a4, 111, v6, 0x6F);
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::GetUnitOutputFnc(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, const char *a5)
{
  v5 = *(a1 + 104);
  if (!v5)
  {
    kaldi::KaldiAssertFailure_("Linearity", "../engine/common/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 0x14C, "linearity_", a5);
  }

  if (*(v5 + 20) <= a3)
  {
    kaldi::KaldiAssertFailure_("Row", "../engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", 0x225, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", a5);
  }

  v6 = *(v5 + 8) + 4 * (*(v5 + 24) * a3);
  v7 = *(v5 + 16);
  v8 = *(v5 + 32);
  v10[1] = v6;
  v10[0] = &unk_1F42BFF30;
  v10[2] = v7;
  v10[3] = v8;
  return kaldi::CuVectorBase<float>::AddMatVec(a4, a2, 111, v10, a5);
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::GetUnitOutputFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *(a1 + 104);
  if (!v5)
  {
    kaldi::KaldiAssertFailure_("Linearity", "../engine/common/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 0x14C, "linearity_", a5);
  }

  if (*(v5 + 20) <= a3)
  {
    kaldi::KaldiAssertFailure_("Row", "../engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", 0x225, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", a5);
  }

  v6 = *(v5 + 8) + 4 * *(v5 + 24) * a3;
  v7 = *(v5 + 16);
  v8 = *(v5 + 32);
  v10[1] = v6;
  v10[0] = &unk_1F42BFF30;
  v10[2] = v7;
  v10[3] = v8;
  return kaldi::VecVec<float>(a2, v10, a3, a4, a5);
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::AccumGradients(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::EnsureCorrs(a1);
  v10 = *(a1 + 60);
  *(*(a1 + 176) + 4 * a5) = *(a2 + 20);
  *(kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::LinearityCorr(a1, a5, v11, v12, v13) + 32) = a4;
  v17 = kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::LinearityCorr(a1, a5, v14, v15, v16);

  return kaldi::CuMatrixBase<float>::AddMatMat(v17, a3, 112, a2, 0x6F);
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

    std::vector<float>::resize((a1 + 176), v4);
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

unsigned int *kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::SetLinearity(uint64_t a1, uint64_t a2)
{
  v4 = kaldi::MatrixBase<float>::NumRows(a2);
  v6 = *(a1 + 104);
  if (!v6)
  {
    goto LABEL_8;
  }

  if (v4 != *(v6 + 20))
  {
    kaldi::KaldiAssertFailure_("SetLinearity", "../engine/common/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 0x15B, "linearity.NumRows() == Linearity().NumRows()", v5);
  }

  v8 = kaldi::MatrixBase<float>::NumCols(a2);
  v9 = *(a1 + 104);
  if (!v9)
  {
LABEL_8:
    kaldi::KaldiAssertFailure_("Linearity", "../engine/common/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 0x150, "linearity_", v5);
  }

  if (v8 != *(v9 + 16))
  {
    kaldi::KaldiAssertFailure_("SetLinearity", "../engine/common/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 0x15C, "linearity.NumCols() == Linearity().NumCols()", v5);
  }

  return kaldi::CuMatrixBase<float>::CopyFromMat(v9, a2, 111, v7, v5);
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::CountZeroCorr(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::EnsureCorrs(a1);
  v9 = *(a1 + 104);
  if (!v9)
  {
    kaldi::KaldiAssertFailure_("Linearity", "../engine/common/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 0x150, "linearity_", v8);
  }

  *a3 = *(v9 + 16) * *(v9 + 20);
  v10 = *(a1 + 120) - *(a1 + 112);
  if (v10)
  {
    v11 = v10 >> 3;
    v12 = *(a1 + 80);
    if (v12 == 1)
    {
      v13 = 0;
    }

    else
    {
      v13 = v12;
    }

    if (v11 - 1 != v13)
    {
      v16 = v13;
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v20, "CountZeroCorr", "../engine/common/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 365);
      v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "Unexpected mismatch in indexes: ", 32);
      v18 = MEMORY[0x1C692A960](v17, v16);
      v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "  ", 2);
      MEMORY[0x1C692A980](v19, ((*(a1 + 120) - *(a1 + 112)) >> 3) - 1);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v20);
    }

    v14 = kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::LinearityCorr(a1, v13, v6, v7, v8);
    result = kaldi::CuMatrixBase<float>::CountZeros(v14);
  }

  else
  {
    result = 0;
  }

  *a2 = result;
  return result;
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::ApplyCorr(uint64_t a1, int a2, float a3)
{
  kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::EnsureCorrs(a1);
  v9 = *(a1 + 104);
  if (!v9)
  {
    kaldi::KaldiAssertFailure_("Linearity", "../engine/common/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 0x150, "linearity_", v8);
  }

  v10 = -(a3 * *(a1 + 168));
  v11 = kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::LinearityCorr(a1, a2, v6, v7, v8);

  return kaldi::CuMatrixBase<float>::AddMat(v9, v11, 111, v12, v13, v10, 1.0);
}

void kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::LinearTransform(uint64_t a1, int a2, int a3)
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
  *a1 = &unk_1F42C0D10;
  *(a1 + 88) = &unk_1F42C0E48;
  *(a1 + 96) = &unk_1F42C0E70;
  operator new();
}

void sub_1C30676C0(_Unwind_Exception *a1)
{
  MEMORY[0x1C692AE10](v4, 0x10D0C4068EB0291);
  kaldi::CuMatrixBase<float>::~CuMatrixBase(v3);
  kaldi::CuMatrixBase<float>::~CuMatrixBase(v2);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v1);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::LinearTransform(uint64_t a1, uint64_t a2)
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
    kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::InitResidualAggregator(a1, (a1 + 232));
  }

  return a1;
}

void sub_1C3067A64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
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

uint64_t kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::InitResidualAggregator(uint64_t a1, uint64_t *a2)
{
  kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::EnsureCorrs(a1);
  v7 = kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::LinearityCorr(a1, ((*(a1 + 120) - *(a1 + 112)) >> 3) - 1, v4, v5, v6);

  return kaldi::nnet1::QuantizerResidualAggregator::PushSetup(a2, v7);
}

void kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::~LinearTransform(uint64_t a1)
{
  *a1 = &unk_1F42C0D10;
  v2 = a1 + 88;
  *(a1 + 88) = &unk_1F42C0E48;
  v3 = a1 + 96;
  *(a1 + 96) = &unk_1F42C0E70;
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
  kaldi::CuMatrixBase<float>::~CuMatrixBase(v3);
  kaldi::CuMatrixBase<float>::~CuMatrixBase(v2);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(a1);
}

{
  kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::~LinearTransform(a1);

  JUMPOUT(0x1C692AE10);
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

  JUMPOUT(0x1C692AE10);
}

{
  kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::~LinearTransform(a1 - 96);

  JUMPOUT(0x1C692AE10);
}

void kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::InitData(uint64_t a1, uint64_t *a2, kaldi::UniformRandomNumber *a3)
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

  kaldi::QuantizedMatrixBase<signed char>::CopyFromMat(v50, v56);
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

  kaldi::QuantizedMatrix<signed char>::Read(v22, a2, a3, a4);
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