void sub_18DF04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  v26 = *v24;
  if (*v24)
  {
    *(v24 + 8) = v26;
    operator delete(v26);
  }

  if (a20)
  {
    operator delete(a20);
  }

  if (a23)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

void *DSP::get_resampling_highpass_iir_filter_coefficients(int a1, int a2, void *a3, void *a4)
{
  v5 = a1 == 192000 && a2 == 48000;
  if (v5 || a1 == 48000 && a2 == 192000)
  {
    v25 = xmmword_21F788;
    v26 = *"ǤKqc^R?P";
    v27 = xmmword_21F7A8;
    v28 = 0x3ED6646F7914977ALL;
    v23 = xmmword_21F768;
    v24 = unk_21F778;
    std::vector<double>::__assign_with_size[abi:ne200100]<double const*,double const*>(a3, &v23, &v29, 0xBuLL);
    v6 = &xmmword_21F7C0;
LABEL_8:
    v7 = v6[3];
    v25 = v6[2];
    v26 = v7;
    v27 = v6[4];
    v28 = *(v6 + 10);
    v8 = v6[1];
    v23 = *v6;
    v24 = v8;
    return std::vector<double>::__assign_with_size[abi:ne200100]<double const*,double const*>(a4, &v23, &v29, 0xBuLL);
  }

  if (a1 == 48000 && a2 == 24000 || a1 == 24000 && a2 == 48000)
  {
    v25 = xmmword_21F838;
    v26 = unk_21F848;
    v27 = xmmword_21F858;
    v28 = 0x3F60FC4BECDC6AB6;
    v23 = xmmword_21F818;
    v24 = unk_21F828;
    std::vector<double>::__assign_with_size[abi:ne200100]<double const*,double const*>(a3, &v23, &v29, 0xBuLL);
    v6 = &xmmword_21F870;
    goto LABEL_8;
  }

  if (a1 == 48000 && a2 == 22050 || a1 == 22050 && a2 == 48000)
  {
    v25 = xmmword_21F8E8;
    v26 = unk_21F8F8;
    v27 = xmmword_21F908;
    v28 = 0x3F57F43AF3997A24;
    v23 = xmmword_21F8C8;
    v24 = unk_21F8D8;
    std::vector<double>::__assign_with_size[abi:ne200100]<double const*,double const*>(a3, &v23, &v29, 0xBuLL);
    v6 = &xmmword_21F920;
    goto LABEL_8;
  }

  if (a1 == 48000 && a2 == 16000 || a1 == 16000 && a2 == 48000)
  {
    v25 = xmmword_21F998;
    v26 = unk_21F9A8;
    v27 = xmmword_21F9B8;
    v28 = 0x3F121FC3C3426C68;
    v23 = xmmword_21F978;
    v24 = unk_21F988;
    std::vector<double>::__assign_with_size[abi:ne200100]<double const*,double const*>(a3, &v23, &v29, 0xBuLL);
    v6 = &xmmword_21F9D0;
    goto LABEL_8;
  }

  v11 = a1 == 22050 && a2 == 24000;
  v12 = a2 == 22050 && a1 == 24000;
  if (v12 || v11)
  {
    v25 = xmmword_21FA48;
    v26 = unk_21FA58;
    v27 = xmmword_21FA68;
    v28 = 0x3FDC38EDB811BB02;
    v23 = xmmword_21FA28;
    v24 = unk_21FA38;
    std::vector<double>::__assign_with_size[abi:ne200100]<double const*,double const*>(a3, &v23, &v29, 0xBuLL);
    v6 = &xmmword_21FA80;
    goto LABEL_8;
  }

  v14 = a1 == 16000 && a2 == 24000;
  v15 = a2 == 16000 && a1 == 24000;
  if (v15 || v14)
  {
    v25 = xmmword_21FAF8;
    v26 = unk_21FB08;
    v27 = xmmword_21FB18;
    v28 = 0x3F95500E95DE96B5;
    v23 = xmmword_21FAD8;
    v24 = unk_21FAE8;
    std::vector<double>::__assign_with_size[abi:ne200100]<double const*,double const*>(a3, &v23, &v29, 0xBuLL);
    v6 = &xmmword_21FB30;
    goto LABEL_8;
  }

  v17 = a1 == 16000 && a2 == 22050;
  v18 = a2 == 16000 && a1 == 22050;
  if (v18 || v17)
  {
    v25 = xmmword_21FBA8;
    v26 = unk_21FBB8;
    v27 = xmmword_21FBC8;
    v28 = 0x3FA110EF889EA268;
    v23 = xmmword_21FB88;
    v24 = unk_21FB98;
    std::vector<double>::__assign_with_size[abi:ne200100]<double const*,double const*>(a3, &v23, &v29, 0xBuLL);
    v6 = &xmmword_21FBE0;
    goto LABEL_8;
  }

  v20 = a1 == 8000 && a2 == 16000;
  v21 = a2 == 8000 && a1 == 16000;
  if (v21 || v20)
  {
    v25 = xmmword_21FC58;
    v26 = unk_21FC68;
    v27 = xmmword_21FC78;
    v28 = 0x3F509BFBA50105AELL;
    v23 = xmmword_21FC38;
    v24 = unk_21FC48;
    std::vector<double>::__assign_with_size[abi:ne200100]<double const*,double const*>(a3, &v23, &v29, 0xBuLL);
    v6 = &xmmword_21FC90;
    goto LABEL_8;
  }

  v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&std::cerr, "Warning: Anti-alias filter for resampling not supported: output may be distorted.", 81);

  return std::endl[abi:ne200100]<char,std::char_traits<char>>(v22);
}

void std::vector<short>::push_back[abi:ne200100](const void **a1, _WORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = v8 >> 1;
    if (v8 >> 1 <= -2)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    else
    {
      v11 = v10;
    }

    v12 = v10 >= 0x7FFFFFFFFFFFFFFELL;
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v11;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(a1, v13);
    }

    v14 = (2 * v9);
    v15 = *a2;
    v16 = &v14[-(v8 >> 1)];
    *v14 = v15;
    v6 = v14 + 1;
    memcpy(v16, v7, v8);
    v17 = *a1;
    *a1 = v16;
    a1[1] = v6;
    a1[2] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void DSP::get_highpass_70hz_coefficients(DSP *this)
{
  v1 = off_270E88(this);
  v3 = v2;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  __p[0] = 0;
  __p[1] = 0;
  v11 = 0;
  memcpy(__dst, &unk_21B508, sizeof(__dst));
  std::vector<double>::__assign_with_size[abi:ne200100]<double const*,double const*>(&v18, __dst, &v22, 0x213uLL);
  memcpy(__dst, &unk_21C5A0, sizeof(__dst));
  std::vector<double>::__assign_with_size[abi:ne200100]<double const*,double const*>(&v15, __dst, &v22, 0x213uLL);
  memcpy(__dst, &unk_21D638, sizeof(__dst));
  std::vector<double>::__assign_with_size[abi:ne200100]<double const*,double const*>(&v12, __dst, &v22, 0x213uLL);
  memcpy(__dst, &unk_21E6D0, sizeof(__dst));
  std::vector<double>::__assign_with_size[abi:ne200100]<double const*,double const*>(__p, __dst, &v22, 0x213uLL);
  if (v1 <= 3999)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&std::cerr, "Error: Sampling rate not supported: ", 36);
    v4 = std::ostream::operator<<();
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, " Hz", 3);
    std::ios_base::getloc((v5 + *(*v5 - 24)));
    v6 = std::locale::use_facet(__dst, &std::ctype<char>::id);
    (v6->__vftable[2].~facet_0)(v6, 10);
    std::locale::~locale(__dst);
    std::ostream::put();
    std::ostream::flush();
    goto LABEL_8;
  }

  if (v1 >> 5 < 0x271)
  {
    v7 = &v15;
LABEL_7:
    *v3 = *v7;
    v3[2] = v7[2];
    v3 = v7;
LABEL_8:
    *v3 = 0;
    v3[1] = 0;
    v3[2] = 0;
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    goto LABEL_10;
  }

  if (v1 >> 4 < 0x753)
  {
    v7 = &v12;
    goto LABEL_7;
  }

  if (v1 > 0x1116F)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&std::cerr, "Error: Sampling rate not supported: ", 36);
    v8 = std::ostream::operator<<();
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " Hz", 3);
    std::endl[abi:ne200100]<char,std::char_traits<char>>(v9);
    exit(1);
  }

  *v3 = *__p;
  v3[2] = v11;
LABEL_10:
  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }

  if (v18)
  {
    v19 = v18;
    operator delete(v18);
  }
}

void sub_18E7F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, std::locale a21)
{
  std::locale::~locale(&a21);
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

void DSP::smooth_voiced_pitch_contour(uint64_t *a1@<X0>, DSP *a2@<X1>, void *a3@<X8>)
{
  if (a2 > 2)
  {
    DSP::make_pitch_contour_continuous(a1, v29);
    DSP::window_hann_norm_double(a2, __p);
    std::vector<double>::vector[abi:ne200100](a3, (a1[1] - *a1) >> 3);
    v9 = (a2 - 1) >> 1;
    v10 = *a1;
    v11 = a1[1];
    v12 = (v11 - *a1) >> 3;
    if (v11 != *a1)
    {
      v13 = 0;
      v14 = -v9;
      if (v12 <= 1)
      {
        v15 = 1;
      }

      else
      {
        v15 = (v11 - *a1) >> 3;
      }

      do
      {
        v16 = v29[0];
        v17 = __p[0];
        v18 = 2 * v9 + 1;
        v19 = v14;
        v20 = *a3;
        do
        {
          if ((v19 & 0x8000000000000000) == 0 && v12 > v19)
          {
            *&v20[v13] = *&v20[v13] + v16[v19] * *v17;
          }

          ++v17;
          ++v19;
          --v18;
        }

        while (v18);
        ++v13;
        ++v14;
      }

      while (v13 != v15);
    }

    v21 = 0;
    v22 = v29[0];
    v23 = *a3;
    if (v9 <= 1)
    {
      v24 = 1;
    }

    else
    {
      v24 = (a2 - 1) >> 1;
    }

    v25 = 8 * v12 - 8;
    v26 = 8 * v24;
    do
    {
      v23[v21 / 8] = *&v22[v21];
      *(v23 + v25) = *&v22[v25];
      v25 -= 8;
      v21 += 8;
    }

    while (v26 != v21);
    if (v11 != v10)
    {
      v27 = *a3;
      if (v12 <= 1)
      {
        v12 = 1;
      }

      do
      {
        if (*v10 == 0.0)
        {
          *v27 = 0;
        }

        ++v27;
        ++v10;
        --v12;
      }

      while (v12);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v29[0])
    {
      v29[1] = v29[0];
      operator delete(v29[0]);
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v5 = *a1;
    v6 = a1[1];
    v7 = (v6 - *a1) >> 3;

    std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(a3, v5, v6, v7);
  }
}

void sub_18EA28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
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

uint64_t DSP::make_pitch_contour_continuous@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  result = std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(a2, *a1, a1[1], (a1[1] - *a1) >> 3);
  v5 = *a1;
  v6 = a1[1] - *a1;
  v7 = v6 >> 3;
  if ((v6 >> 3) < 1)
  {
    return result;
  }

  v8 = 0;
  v9 = v5 - 8;
  v10 = *a2;
  v11 = *a2 + 8;
  v12 = vdupq_n_s64(2uLL);
  while (1)
  {
    v13 = (v5 + 8 * v8);
    if (*v13 == 0.0)
    {
      break;
    }

    v16 = (v8 + 1);
LABEL_28:
    v8 = v16;
    if (v16 >= v7)
    {
      return result;
    }
  }

  v14 = v8;
  result = (v7 - v8);
  if (v7 <= v8)
  {
    result = 0;
    v16 = v8;
    if (v8)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v15 = 0;
    while (*v13 == 0.0)
    {
      --v15;
      ++v13;
      if (v8 - ((v6 >> 3) & 0x7FFFFFFF) == v15)
      {
        v16 = v6 >> 3;
        if (!v8)
        {
          goto LABEL_14;
        }

        goto LABEL_15;
      }
    }

    result = -v15;
    v16 = (v8 - v15);
    if (v8)
    {
      goto LABEL_15;
    }
  }

LABEL_14:
  if (result == v7)
  {
    return result;
  }

LABEL_15:
  if (!v8)
  {
    if (result)
    {
      v19 = *(v5 + 8 * v16);
      v20 = (result + 1) & 0x1FFFFFFFELL;
      v21 = vdupq_n_s64(result - 1);
      v22 = v11;
      v23 = xmmword_212100;
      do
      {
        v24 = vmovn_s64(vcgeq_u64(v21, v23));
        if (v24.i8[0])
        {
          *(v22 - 1) = v19;
        }

        result = v24.u32[1];
        if (v24.i8[4])
        {
          *v22 = v19;
        }

        v23 = vaddq_s64(v23, v12);
        v22 += 2;
        v20 -= 2;
      }

      while (v20);
    }

    goto LABEL_28;
  }

  if (v16 != v7)
  {
    if (result)
    {
      v17 = (result + 1);
      v18 = result;
      result = v10 + 8 * v14;
      do
      {
        *result = (1.0 - v18 / v17) * *(v5 + 8 * v16) + *(v9 + 8 * v14) * (v18 / v17);
        result += 8;
        --v18;
      }

      while (v18);
    }

    goto LABEL_28;
  }

  if (result)
  {
    v25 = *(v9 + 8 * v8);
    v26 = (result + 1) & 0x1FFFFFFFELL;
    v27 = vdupq_n_s64(result - 1);
    v28 = (v10 + 8 * v8 + 8);
    v29 = xmmword_212100;
    v30 = vdupq_n_s64(2uLL);
    do
    {
      v31 = vmovn_s64(vcgeq_u64(v27, v29));
      if (v31.i8[0])
      {
        *(v28 - 1) = v25;
      }

      if (v31.i8[4])
      {
        *v28 = v25;
      }

      v29 = vaddq_s64(v29, v30);
      v28 += 2;
      v26 -= 2;
    }

    while (v26);
  }

  return result;
}

void DSP::window_hann_norm_double(DSP *this@<X0>, double **a2@<X8>)
{
  v2 = this;
  std::vector<double>::vector[abi:ne200100](a2, this);
  if (v2 >= 1)
  {
    v4 = v2;
    v26 = vdupq_lane_s64(COERCE__INT64((v2 - 1)), 0);
    v27 = vdupq_n_s64(v2 - 1);
    v5 = (v2 + 1) & 0xFFFFFFFE;
    v6 = 0x100000000;
    v7 = xmmword_212100;
    v8 = *a2 + 1;
    v9 = 0.0;
    __asm { FMOV            V0.2D, #1.0 }

    v24 = _Q0;
    v25 = vdupq_n_s64(0x401921FB54442D18uLL);
    __asm { FMOV            V2.2D, #0.5 }

    v22 = vnegq_f64(0);
    v23 = _Q2;
    v21 = vdupq_n_s64(2uLL);
    do
    {
      v31 = vcgeq_u64(v27, v7);
      v32 = v7;
      v30 = vmovn_s64(v31);
      v16.i64[0] = v6.u32[0];
      v16.i64[1] = v6.u32[1];
      __x = vdivq_f64(vmulq_f64(vcvtq_f64_u64(v16), v25), v26);
      v29 = cos(__x.f64[1]);
      v17.f64[0] = cos(__x.f64[0]);
      v17.f64[1] = v29;
      v18 = vmulq_f64(vsubq_f64(v24, v17), v23);
      if (v30.i8[0])
      {
        *(v8 - 1) = v18.i64[0];
      }

      if (v30.i8[4])
      {
        *v8 = v18.i64[1];
      }

      v19 = vbslq_s8(v31, v18, v22);
      v9 = v9 + *v19.i64 + *&v19.i64[1];
      v7 = vaddq_s64(v32, v21);
      v6 = vadd_s32(v6, 0x200000002);
      v8 += 2;
      v5 -= 2;
    }

    while (v5);
    v20 = *a2;
    do
    {
      *v20 = *v20 / v9;
      ++v20;
      --v4;
    }

    while (v4);
  }
}

double DSP::gradient_index(void *a1)
{
  v1 = (a1[1] - *a1) >> 3;
  result = 0.0;
  if (v1 >= 3)
  {
    v3 = (*a1 + 16);
    v4 = v1 - 2;
    do
    {
      v5 = *(v3 - 1);
      v6 = *(v3 - 2);
      v7 = (*v3 > v5) - (*v3 < v5) - (v5 > v6);
      if (v5 < v6)
      {
        ++v7;
      }

      if (v7 < 0)
      {
        v7 = -v7;
      }

      result = result + v7 * vabdd_f64(*v3++, v5);
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t DSP::zero_crossing_rate_plus_zero(uint64_t a1)
{
  v1 = *a1;
  v2 = (*(a1 + 8) - *a1) >> 3;
  result = 0;
  v4 = v2 - 1;
  if (v4)
  {
    v6 = *v1;
    v5 = v1 + 1;
    v7 = v6;
    do
    {
      v8 = v7 == 0.0;
      v9 = v7;
      v10 = *v5++;
      v7 = v10;
      v11 = (*&v10 ^ *&v9) >> 63;
      v12 = v8;
      if (v7 != 0.0)
      {
        v12 = 0;
      }

      result = (result + v11 + v12);
      --v4;
    }

    while (v4);
  }

  return result;
}

void DSP::IAIF(double **a1@<X0>, void *a2@<X1>, double **a3@<X2>, int a4@<W3>, double **a5@<X8>, double a6@<D0>)
{
  v12 = a1[1] - *a1;
  std::vector<double>::vector[abi:ne200100](v79, (v12 >> 3));
  std::vector<double>::vector[abi:ne200100](a5, (v12 >> 3));
  v13 = v12 >> 3;
  std::vector<double>::vector[abi:ne200100](__p, ((v12 >> 3) + a4));
  v14 = (v12 >> 3) & 0x7FFFFFFF;
  if ((v12 >> 3) >= 1)
  {
    v15 = *a1;
    v16 = *a3;
    v17 = (v12 >> 3) & 0x7FFFFFFF;
    v18 = v79[0];
    do
    {
      v19 = *v15++;
      v20 = v19;
      v21 = *v16++;
      *v18++ = v20 * v21;
      --v17;
    }

    while (v17);
  }

  DSP::LP(v79, 1, &v75);
  v22 = v75;
  v73 = 0;
  v74 = 0;
  v72 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v72, v75, *(&v75 + 1), (*(&v75 + 1) - v75) >> 3);
  DSP::firfilter(&v72, a2, &v75);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  *__p = v75;
  v78 = v76;
  v76 = 0;
  v75 = 0uLL;
  if (v72)
  {
    v73 = v72;
    operator delete(v72);
  }

  if (v13 >= 1)
  {
    v23 = *a5;
    v24 = (__p[0] + 8 * a4);
    v25 = (v12 >> 3) & 0x7FFFFFFF;
    do
    {
      v26 = *v24++;
      *v23++ = v26;
      --v25;
    }

    while (v25);
    v27 = *a5;
    v28 = *a3;
    v29 = (v12 >> 3) & 0x7FFFFFFF;
    do
    {
      v30 = *v28++;
      *v27 = *v27 * v30;
      ++v27;
      --v29;
    }

    while (v29);
  }

  DSP::LP(a5, a4, &v75);
  if (v22)
  {
    operator delete(v22);
  }

  v31 = v75;
  v70 = 0;
  v71 = 0;
  v69 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v69, v75, *(&v75 + 1), (*(&v75 + 1) - v75) >> 3);
  DSP::firfilter(&v69, a2, &v75);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  *__p = v75;
  v78 = v76;
  v76 = 0;
  v75 = 0uLL;
  if (v69)
  {
    v70 = v69;
    operator delete(v69);
  }

  v32 = *a5;
  if (v13 >= 1)
  {
    v33 = (__p[0] + 8 * a4);
    v34 = (v12 >> 3) & 0x7FFFFFFF;
    v35 = *a5;
    do
    {
      v36 = *v33++;
      *v35++ = v36;
      --v34;
    }

    while (v34);
  }

  v37 = a5[1] - v32;
  if (v37 >= 2)
  {
    v38 = v32 + 1;
    v39 = *v32;
    v40 = v37 - 1;
    do
    {
      v39 = *v38 + a6 * v39;
      *v38++ = v39;
      --v40;
    }

    while (v40);
  }

  if (v13 >= 1)
  {
    v41 = *a3;
    v42 = (v12 >> 3) & 0x7FFFFFFF;
    do
    {
      v43 = *v41++;
      *v32 = *v32 * v43;
      ++v32;
      --v42;
    }

    while (v42);
  }

  DSP::LP(a5, 8, &v75);
  if (v31)
  {
    operator delete(v31);
  }

  v44 = v75;
  v67 = 0;
  v68 = 0;
  v66 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v66, v75, *(&v75 + 1), (*(&v75 + 1) - v75) >> 3);
  DSP::firfilter(&v66, a2, &v75);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  *__p = v75;
  v78 = v76;
  v76 = 0;
  v75 = 0uLL;
  if (v66)
  {
    v67 = v66;
    operator delete(v66);
  }

  v45 = *a5;
  if (v13 >= 1)
  {
    v46 = (__p[0] + 8 * a4);
    v47 = (v12 >> 3) & 0x7FFFFFFF;
    v48 = *a5;
    do
    {
      v49 = *v46++;
      *v48++ = v49;
      --v47;
    }

    while (v47);
  }

  v50 = a5[1] - v45;
  if (v50 >= 2)
  {
    v51 = v45 + 1;
    v52 = *v45;
    v53 = v50 - 1;
    do
    {
      v52 = *v51 + a6 * v52;
      *v51++ = v52;
      --v53;
    }

    while (v53);
  }

  if (v13 >= 1)
  {
    v54 = *a3;
    v55 = (v12 >> 3) & 0x7FFFFFFF;
    do
    {
      v56 = *v54++;
      *v45 = *v45 * v56;
      ++v45;
      --v55;
    }

    while (v55);
  }

  DSP::LP(a5, a4, &v75);
  if (v44)
  {
    operator delete(v44);
  }

  v57 = v75;
  v64 = 0;
  v65 = 0;
  v63 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v63, v75, *(&v75 + 1), (*(&v75 + 1) - v75) >> 3);
  DSP::firfilter(&v63, a2, &v75);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v58 = v75;
  *__p = v75;
  v78 = v76;
  v76 = 0;
  v75 = 0uLL;
  if (v63)
  {
    v64 = v63;
    operator delete(v63);
    v59 = __p[0];
  }

  else
  {
    v59 = v58;
  }

  if (v13 < 1)
  {
    if (!v59)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v60 = *a5;
    v61 = &v59[8 * a4];
    do
    {
      v62 = *v61;
      v61 += 8;
      *v60++ = v62;
      --v14;
    }

    while (v14);
  }

  __p[1] = v59;
  operator delete(v59);
LABEL_56:
  if (v79[0])
  {
    v79[1] = v79[0];
    operator delete(v79[0]);
  }

  if (v57)
  {
    operator delete(v57);
  }
}

void sub_18F344(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a25)
  {
    operator delete(a25);
  }

  v30 = *v26;
  if (*v26)
  {
    *(v26 + 8) = v30;
    operator delete(v30);
  }

  v31 = *(v28 - 120);
  if (v31)
  {
    *(v28 - 112) = v31;
    operator delete(v31);
  }

  if (v27)
  {
    operator delete(v27);
  }

  _Unwind_Resume(exception_object);
}

void DSP::medfilt(uint64_t *a1@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = (v6 - *a1) >> 3;
  if (v7 > a2)
  {
    v8 = a2 | 1;
    if (v8 > 2)
    {
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(a3, v5, v6, v7);
      std::vector<double>::vector[abi:ne200100](__p, a2 | 1);
      v10 = 1 - v8;
      v11 = *a1;
      if (1 - v8 + ((a1[1] - *a1) >> 3))
      {
        v13 = 0;
        v14 = 0;
        v15 = a2 >> 1;
        v16 = 8 * v8;
        do
        {
          v17 = 0;
          v18 = __p[0];
          v19 = v11 + v13;
          do
          {
            *&v18[v17] = *(v19 + v17);
            v17 += 8;
          }

          while (v16 != v17);
          std::__sort<std::__less<double,double> &,double *>();
          v12 = __p[0];
          *(*a3 + 8 * v14++ + 8 * v15) = *(__p[0] + v15);
          v11 = *a1;
          v13 += 8;
        }

        while (v10 + ((a1[1] - *a1) >> 3) > v14);
      }

      else
      {
        v12 = __p[0];
        if (!__p[0])
        {
          return;
        }
      }

      __p[1] = v12;
      operator delete(v12);
      return;
    }
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;

  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(a3, v5, v6, v7);
}

void sub_18F570(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  v12 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v12;
    operator delete(v12);
  }

  _Unwind_Resume(exception_object);
}

void DSP::window_blackman(DSP *this@<X0>, void *a2@<X8>)
{
  v2 = this;
  v3 = std::vector<double>::vector[abi:ne200100](a2, this);
  v4 = v2 - 1;
  if (v2 >= 1)
  {
    v5 = v2;
    v6 = (v2 + 1) & 0xFFFFFFFE;
    v25 = vdupq_n_s64(v5 - 1);
    v33 = vdupq_lane_s64(COERCE__INT64(v4), 0);
    v7 = 0x100000000;
    v8 = xmmword_212100;
    v23 = vdupq_n_s64(0x3FDAE147AE147AE1uLL);
    v24 = vdupq_n_s64(0x401921FB54442D18uLL);
    v9 = (*v3 + 8);
    __asm { FMOV            V2.2D, #-0.5 }

    v21 = vdupq_n_s64(0x402921FB54442D18uLL);
    v22 = _Q2;
    v19 = vdupq_n_s64(2uLL);
    v20 = vdupq_n_s64(0x3FB47AE147AE147BuLL);
    do
    {
      v31 = vmovn_s64(vcgeq_u64(v25, v8));
      v32 = v8;
      v15.i64[0] = v7.u32[0];
      v15.i64[1] = v7.u32[1];
      v30 = vcvtq_f64_u64(v15);
      __x = vdivq_f64(vmulq_f64(v30, v24), v33);
      v28 = cos(__x.f64[1]);
      v16.f64[0] = cos(__x.f64[0]);
      v16.f64[1] = v28;
      v29 = vmlaq_f64(v23, v22, v16);
      __xa = vdivq_f64(vmulq_f64(v30, v21), v33);
      v30.f64[0] = cos(__xa.f64[1]);
      v17.f64[0] = cos(__xa.f64[0]);
      v17.f64[1] = v30.f64[0];
      v18 = vmlaq_f64(v29, v20, v17);
      if (v31.i8[0])
      {
        *(v9 - 1) = *&v18.f64[0];
      }

      if (v31.i8[4])
      {
        *v9 = *&v18.f64[1];
      }

      v8 = vaddq_s64(v32, v19);
      v7 = vadd_s32(v7, 0x200000002);
      v9 += 2;
      v6 -= 2;
    }

    while (v6);
  }
}

uint64_t DSP::remove_mean(uint64_t result)
{
  v1 = *result;
  v2 = *(result + 8) - *result;
  if (v2)
  {
    v3 = v2 >> 3;
    if ((v2 >> 3) <= 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = v2 >> 3;
    }

    v5 = 0.0;
    v6 = v4;
    v7 = *result;
    do
    {
      v8 = *v7++;
      v5 = v5 + v8;
      --v6;
    }

    while (v6);
    v9 = v5 / v3;
    do
    {
      *v1 = *v1 - v9;
      ++v1;
      --v4;
    }

    while (v4);
  }

  return result;
}

void DSP::smooth(uint64_t *a1@<X0>, int a2@<W1>, char **a3@<X8>)
{
  DSP::window_hann_norm_double(((2 * a2) | 1u), &v11);
  v8 = 0;
  v9 = 0;
  v10 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v8, v11, v12, v12 - v11);
  __p = 0;
  v6 = 0;
  v7 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&__p, *a1, a1[1], (a1[1] - *a1) >> 3);
  DSP::high_pass_filter(&v8, &__p, a3);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }

  if (v8)
  {
    v9 = v8;
    operator delete(v8);
  }

  if (v11)
  {
    v12 = v11;
    operator delete(v11);
  }
}

void sub_18F874(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  v16 = *(v14 - 40);
  if (v16)
  {
    *(v14 - 32) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<double *>,std::__wrap_iter<double *>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_18F91C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

float std::__split_buffer<float>::emplace_back<float>(void *a1, float *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 1;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1[4], v11);
    }

    v7 = ((v6 >> 2) + 1) / -2;
    v8 = ((v6 >> 2) + 1) / 2;
    v9 = &v5[-4 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-4 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[4 * v7];
  }

  result = *a2;
  *v4 = *a2;
  a1[2] = v4 + 4;
  return result;
}

void sub_18FB30(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *std::vector<double>::__insert_with_size[abi:ne200100]<std::__wrap_iter<double *>,std::__wrap_iter<double *>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v15);
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

char *std::vector<float>::__insert_with_size[abi:ne200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 2)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 2);
    if (v12 >> 62)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 1 > v12)
    {
      v12 = v14 >> 1;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v15 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 2;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, v15);
    }

    v33 = 4 * v16;
    v34 = 4 * a5;
    v35 = (4 * v16);
    do
    {
      v36 = *v7++;
      *v35++ = v36;
      v34 -= 4;
    }

    while (v34);
    memcpy((v33 + 4 * a5), v5, *(a1 + 8) - v5);
    v37 = *a1;
    v38 = v33 + 4 * a5 + *(a1 + 8) - v5;
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

    return (4 * v16);
  }

  v17 = v10 - __dst;
  v18 = (v10 - __dst) >> 2;
  if (v18 >= a5)
  {
    v29 = &__dst[4 * a5];
    v30 = (v10 - 4 * a5);
    v31 = *(a1 + 8);
    while (v30 < v10)
    {
      v32 = *v30++;
      *v31++ = v32;
    }

    *(a1 + 8) = v31;
    if (v10 != v29)
    {
      memmove(&__dst[4 * a5], __dst, v10 - v29);
    }

    v28 = 4 * a5;
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
    v22 = &v5[4 * a5];
    v23 = v10 + v20;
    if (&v21[-4 * a5] < v10)
    {
      v24 = &v5[a4];
      v25 = &v5[a4 + -4 * a5];
      do
      {
        *(v24 - v7) = *(v25 - v7);
        v25 += 4;
        v24 += 4;
      }

      while (v25 - v7 < v10);
      v23 = v24 - v7;
    }

    *(a1 + 8) = v23;
    if (v21 != v22)
    {
      memmove(&v5[4 * a5], v5, v21 - v22);
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

void std::vector<short>::__append(uint64_t a1, unint64_t a2, __int16 *a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v6) >> 1)
  {
    if (a2)
    {
      v12 = 0;
      v13 = (a2 + 0x7FFFFFFFFFFFFFFFLL) & 0x7FFFFFFFFFFFFFFFLL;
      v14 = v13 - ((a2 + 0x7FFFFFFFFFFFFFFFLL) & 7);
      v15 = vdupq_n_s64(v13);
      v16 = v6 + 2 * a2;
      v17 = *a3;
      v18 = v14 + 8;
      v19 = (v6 + 8);
      do
      {
        v20 = vdupq_n_s64(v12);
        v21 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_212100)));
        if (vuzp1_s8(vuzp1_s16(v21, *v15.i8), *v15.i8).u8[0])
        {
          *(v19 - 4) = v17;
        }

        if (vuzp1_s8(vuzp1_s16(v21, *&v15), *&v15).i8[1])
        {
          *(v19 - 3) = v17;
        }

        if (vuzp1_s8(vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_2120F0)))), *&v15).i8[2])
        {
          *(v19 - 2) = v17;
          *(v19 - 1) = v17;
        }

        v22 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_218970)));
        if (vuzp1_s8(*&v15, vuzp1_s16(v22, *&v15)).i32[1])
        {
          *v19 = v17;
        }

        if (vuzp1_s8(*&v15, vuzp1_s16(v22, *&v15)).i8[5])
        {
          v19[1] = v17;
        }

        if (vuzp1_s8(*&v15, vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_218960))))).i8[6])
        {
          v19[2] = v17;
          v19[3] = v17;
        }

        v12 += 8;
        v19 += 8;
      }

      while (v18 != v12);
    }

    else
    {
      v16 = *(a1 + 8);
    }

    *(a1 + 8) = v16;
  }

  else
  {
    v7 = v6 - *a1;
    if ((a2 + (v7 >> 1)) < 0)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v8 = v7 >> 1;
    v9 = v5 - *a1;
    if (v9 <= a2 + (v7 >> 1))
    {
      v10 = a2 + (v7 >> 1);
    }

    else
    {
      v10 = v9;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(a1, v11);
    }

    v23 = 0;
    v24 = 2 * v8;
    v25 = 2 * v8 + 2 * a2;
    v26 = *a3;
    v27 = (a2 + 0x7FFFFFFFFFFFFFFFLL) & 0x7FFFFFFFFFFFFFFFLL;
    v28 = v27 - ((a2 + 0x7FFFFFFFFFFFFFFFLL) & 7) + 8;
    v29 = vdupq_n_s64(v27);
    v30 = (v24 + 8);
    do
    {
      v31 = vdupq_n_s64(v23);
      v32 = vmovn_s64(vcgeq_u64(v29, vorrq_s8(v31, xmmword_212100)));
      if (vuzp1_s8(vuzp1_s16(v32, *v29.i8), *v29.i8).u8[0])
      {
        *(v30 - 4) = v26;
      }

      if (vuzp1_s8(vuzp1_s16(v32, *&v29), *&v29).i8[1])
      {
        *(v30 - 3) = v26;
      }

      if (vuzp1_s8(vuzp1_s16(*&v29, vmovn_s64(vcgeq_u64(v29, vorrq_s8(v31, xmmword_2120F0)))), *&v29).i8[2])
      {
        *(v30 - 2) = v26;
        *(v30 - 1) = v26;
      }

      v33 = vmovn_s64(vcgeq_u64(v29, vorrq_s8(v31, xmmword_218970)));
      if (vuzp1_s8(*&v29, vuzp1_s16(v33, *&v29)).i32[1])
      {
        *v30 = v26;
      }

      if (vuzp1_s8(*&v29, vuzp1_s16(v33, *&v29)).i8[5])
      {
        v30[1] = v26;
      }

      if (vuzp1_s8(*&v29, vuzp1_s16(*&v29, vmovn_s64(vcgeq_u64(v29, vorrq_s8(v31, xmmword_218960))))).i8[6])
      {
        v30[2] = v26;
        v30[3] = v26;
      }

      v23 += 8;
      v30 += 8;
    }

    while (v28 != v23);
    v34 = *(a1 + 8) - *a1;
    v35 = v24 - v34;
    memcpy((v24 - v34), *a1, v34);
    v36 = *a1;
    *a1 = v35;
    *(a1 + 8) = v25;
    *(a1 + 16) = 0;
    if (v36)
    {

      operator delete(v36);
    }
  }
}

char *std::vector<short>::__insert_with_size[abi:ne200100]<std::__wrap_iter<double *>,std::__wrap_iter<double *>>(void *a1, char *__src, double *a3, double *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return __src;
  }

  v7 = a3;
  v9 = a1[1];
  v10 = a1[2];
  if (a5 <= (v10 - v9) >> 1)
  {
    v16 = (v9 - __src) >> 1;
    if (v16 >= a5)
    {
      v20 = &__src[2 * a5];
      v21 = &v9[-2 * a5];
      v22 = a1[1];
      while (v21 < v9)
      {
        v23 = *v21;
        v21 += 2;
        *v22++ = v23;
      }

      a1[1] = v22;
      if (v9 != v20)
      {
        memmove(&__src[2 * a5], __src, v9 - v20);
      }

      v24 = &v7[a5];
      v25 = __src;
      do
      {
        v26 = *v7++;
        *v25++ = v26;
      }

      while (v7 != v24);
    }

    else
    {
      v17 = (a3 + 4 * (v9 - __src));
      v18 = a1[1];
      if (v17 == a4)
      {
        v19 = a1[1];
      }

      else
      {
        v36 = (a3 + 4 * (v9 - __src));
        v19 = a1[1];
        do
        {
          v37 = *v36++;
          *v19 = v37;
          v19 += 2;
          ++v18;
        }

        while (v36 != a4);
      }

      a1[1] = v18;
      if (v16 >= 1)
      {
        v38 = &__src[2 * a5];
        v39 = &v18[-a5];
        v40 = v18;
        while (v39 < v9)
        {
          v41 = *v39;
          v39 += 2;
          *v40++ = v41;
        }

        a1[1] = v40;
        if (v19 != v38)
        {
          memmove(&__src[2 * a5], __src, v18 - v38);
        }

        v42 = __src;
        do
        {
          v43 = *v7++;
          *v42++ = v43;
        }

        while (v7 != v17);
      }
    }

    return __src;
  }

  v11 = *a1;
  v12 = a5 + (&v9[-*a1] >> 1);
  if (v12 < 0)
  {
    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v13 = __src - v11;
  v14 = v10 - v11;
  if (v14 > v12)
  {
    v12 = v14;
  }

  if (v14 >= 0x7FFFFFFFFFFFFFFELL)
  {
    v15 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v15 = v12;
  }

  if (v15)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(a1, v15);
  }

  v27 = 2 * (v13 >> 1);
  v28 = 2 * a5;
  v29 = v27;
  do
  {
    v30 = *v7++;
    *v29++ = v30;
    v28 -= 2;
  }

  while (v28);
  memcpy((v27 + 2 * a5), __src, a1[1] - __src);
  v31 = *a1;
  v32 = v27 + 2 * a5 + a1[1] - __src;
  a1[1] = __src;
  v33 = (__src - v31);
  v34 = (v27 - (__src - v31));
  memcpy(v34, v31, v33);
  v35 = *a1;
  *a1 = v34;
  a1[1] = v32;
  a1[2] = 0;
  if (v35)
  {
    operator delete(v35);
  }

  return v27;
}

uint64_t std::vector<double>::__init_with_size[abi:ne200100]<std::__wrap_iter<short *>,std::__wrap_iter<short *>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<int,float>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_190570(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<short>::__init_with_size[abi:ne200100]<short *,short *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned short>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1905EC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<double>::__assign_with_size[abi:ne200100]<double const*,double const*>(void *result, char *__src, char *a3, unint64_t a4)
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

      std::vector<std::pair<int,float>>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13;
        v13 += 8;
        *v15 = v16;
        v15 += 8;
        v14 += 8;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

uint64_t std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<int,float>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_190794(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(void *result, char *__src, char *a3, unint64_t a4)
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

      std::vector<std::pair<int,float>>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
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

void estimate_and_vote_pitch(uint64_t *a1@<X0>, DSP *a2@<X1>, unsigned int a3@<W2>, unsigned int a4@<W3>, void *a5@<X8>)
{
  v7 = a2;
  if (a3)
  {
    v10 = &loc_3E80;
    if (a2 != 16000)
    {
      v69 = 0;
      v70 = 0;
      v68 = 0;
      std::vector<short>::__init_with_size[abi:ne200100]<short *,short *>(&v68, *a1, a1[1], (a1[1] - *a1) >> 1);
      DSP::resample(&v68, v7, 16000, &v53);
      v11 = *a1;
      if (*a1)
      {
        a1[1] = v11;
        operator delete(v11);
        *a1 = 0;
        a1[1] = 0;
        a1[2] = 0;
      }

      *a1 = v53;
      a1[2] = v54;
      v54 = 0;
      v53 = 0uLL;
      if (v68)
      {
        v69 = v68;
        operator delete(v68);
      }
    }
  }

  else
  {
    v10 = a2;
  }

  memset(v67, 0, sizeof(v67));
  boost::filesystem::path::path(__p, "acf0");
  AutocF0::AutocF0(&v53, __p);
  if (v52 < 0)
  {
    operator delete(__p[0]);
  }

  v55 = a3;
  v56 = a4;
  AutocF0::estimate_pitch(&v53, a1, v10, v44);
  std::vector<std::tuple<std::vector<float>,std::vector<float>,std::vector<float>,std::vector<float>>>::push_back[abi:ne200100](v67, v44);
  boost::filesystem::path::path(v31, "iaif0");
  AutocF0::AutocF0(v33, v31);
  if (v32 < 0)
  {
    operator delete(v31[0]);
  }

  v33[6] = a3;
  v33[7] = a4;
  AutocF0::estimate_pitch(v33, a1, v10, v19);
  std::__memberwise_forward_assign[abi:ne200100]<std::tuple<std::vector<float>,std::vector<float>,std::vector<float>,std::vector<float>>,std::tuple<std::vector<float>,std::vector<float>,std::vector<float>,std::vector<float>>,std::vector<float>,std::vector<float>,std::vector<float>,std::vector<float>,0ul,1ul,2ul,3ul>(v44, v19);
  if (v26)
  {
    v27 = v26;
    operator delete(v26);
  }

  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }

  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }

  if (v19[0])
  {
    v19[1] = v19[0];
    operator delete(v19[0]);
  }

  std::vector<std::tuple<std::vector<float>,std::vector<float>,std::vector<float>,std::vector<float>>>::push_back[abi:ne200100](v67, v44);
  SRH::SRH(v19);
  v20 = __PAIR64__(a4, a3);
  SRH::estimate_pitch(v19, a1, v10, v12);
  std::__memberwise_forward_assign[abi:ne200100]<std::tuple<std::vector<float>,std::vector<float>,std::vector<float>,std::vector<float>>,std::tuple<std::vector<float>,std::vector<float>,std::vector<float>,std::vector<float>>,std::vector<float>,std::vector<float>,std::vector<float>,std::vector<float>,0ul,1ul,2ul,3ul>(v44, v12);
  if (v17)
  {
    v18 = v17;
    operator delete(v17);
  }

  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }

  if (v13)
  {
    v14 = v13;
    operator delete(v13);
  }

  if (v12[0])
  {
    v12[1] = v12[0];
    operator delete(v12[0]);
  }

  std::vector<std::tuple<std::vector<float>,std::vector<float>,std::vector<float>,std::vector<float>>>::push_back[abi:ne200100](v67, v44);
  vote_f0_external(v67, a4, a5);
  if (v29)
  {
    v30 = v29;
    operator delete(v29);
  }

  if (v27)
  {
    v28 = v27;
    operator delete(v27);
  }

  if (v24)
  {
    v25 = v24;
    operator delete(v24);
  }

  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }

  if (v43 < 0)
  {
    operator delete(v42);
  }

  if (v40)
  {
    v41 = v40;
    operator delete(v40);
  }

  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }

  if (v36)
  {
    v37 = v36;
    operator delete(v36);
  }

  if (v34)
  {
    v35 = v34;
    operator delete(v34);
  }

  if (v49)
  {
    v50 = v49;
    operator delete(v49);
  }

  if (v47)
  {
    v48 = v47;
    operator delete(v47);
  }

  if (v45)
  {
    v46 = v45;
    operator delete(v45);
  }

  if (v44[0])
  {
    v44[1] = v44[0];
    operator delete(v44[0]);
  }

  if (v66 < 0)
  {
    operator delete(v65);
  }

  if (v63)
  {
    v64 = v63;
    operator delete(v63);
  }

  if (v61)
  {
    v62 = v61;
    operator delete(v61);
  }

  if (v59)
  {
    v60 = v59;
    operator delete(v59);
  }

  if (v57)
  {
    v58 = v57;
    operator delete(v57);
  }

  *&v53 = v67;
  std::vector<std::tuple<std::vector<float>,std::vector<float>,std::vector<float>,std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v53);
}

void sub_190D28(_Unwind_Exception *a1)
{
  v3 = *(v1 - 88);
  if (v3)
  {
    *(v1 - 80) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(a1);
}

uint64_t std::vector<std::tuple<std::vector<float>,std::vector<float>,std::vector<float>,std::vector<float>>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::tuple<std::vector<float>,std::vector<float>,std::vector<float>,std::vector<float>>>::__emplace_back_slow_path<std::tuple<std::vector<float>,std::vector<float>,std::vector<float>,std::vector<float>> const&>(a1, a2);
  }

  else
  {
    std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul>,std::vector<float>,std::vector<float>,std::vector<float>,std::vector<float>>::__tuple_impl(*(a1 + 8), a2);
    result = v3 + 96;
    *(a1 + 8) = v3 + 96;
  }

  *(a1 + 8) = result;
  return result;
}

void vote_f0_external(uint64_t *a1@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  v4 = 0;
  memset(v29, 0, 24);
  v5 = *a1;
  do
  {
    v27 = 0uLL;
    v28 = 0;
    v25 = 0uLL;
    v26 = 0;
    v23[0] = 0;
    v23[1] = 0;
    v24 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v16 = &v27;
    v17 = &v25;
    v18 = v23;
    v19 = &v20;
    std::__memberwise_copy_assign[abi:ne200100]<std::tuple<std::vector<float> &,std::vector<float> &,std::vector<float> &,std::vector<float> &>,std::tuple<std::vector<float>,std::vector<float>,std::vector<float>,std::vector<float>>,0ul,1ul,2ul,3ul>(&v16, (v5 + 96 * v4));
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v6 = v27;
    if (*(&v27 + 1) != v27)
    {
      v7 = 0;
      do
      {
        __p = 0;
        v14 = 0;
        v15 = 0;
        *&v10 = *(v6 + 4 * v7);
        std::vector<double>::push_back[abi:ne200100](&__p, &v10);
        *&v10 = *(v25 + 4 * v7);
        std::vector<double>::push_back[abi:ne200100](&__p, &v10);
        *&v10 = *(v23[0] + v7);
        std::vector<double>::push_back[abi:ne200100](&__p, &v10);
        *&v10 = *(v20 + v7);
        std::vector<double>::push_back[abi:ne200100](&__p, &v10);
        std::vector<std::vector<double>>::push_back[abi:ne200100](&v16, &__p);
        if (__p)
        {
          v14 = __p;
          operator delete(__p);
        }

        ++v7;
        v6 = v27;
      }

      while (v7 < (*(&v27 + 1) - v27) >> 2);
    }

    std::vector<std::vector<std::vector<double>>>::push_back[abi:ne200100](v29, &v16);
    __p = &v16;
    std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&__p);
    if (v20)
    {
      v21 = v20;
      operator delete(v20);
    }

    if (v23[0])
    {
      v23[1] = v23[0];
      operator delete(v23[0]);
    }

    if (v25)
    {
      *(&v25 + 1) = v25;
      operator delete(v25);
    }

    if (v27)
    {
      *(&v27 + 1) = v27;
      operator delete(v27);
    }

    ++v4;
    v5 = *a1;
  }

  while (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5) > v4);
  std::vector<double>::vector[abi:ne200100](&v16, 0xAAAAAAAAAAAAAAABLL * (v29[0][1] - *v29[0]));
  std::vector<double>::vector[abi:ne200100](&v27, 0xAAAAAAAAAAAAAAABLL * (v29[0][1] - *v29[0]));
  std::vector<double>::vector[abi:ne200100](&v25, 0xAAAAAAAAAAAAAAABLL * (v29[0][1] - *v29[0]));
  vote_f0_files(v29, &v16, &v27, &v25);
  DSP::smooth_voiced_pitch_contour(&v27, a2, v23);
  if (v27)
  {
    *(&v27 + 1) = v27;
    operator delete(v27);
  }

  v27 = *v23;
  v28 = v24;
  DSP::smooth_voiced_pitch_contour(&v25, a2, v23);
  if (v25)
  {
    *(&v25 + 1) = v25;
    operator delete(v25);
  }

  v25 = *v23;
  v26 = v24;
  v23[1] = 0;
  v24 = 0;
  v23[0] = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<double *>,std::__wrap_iter<double *>>(v23, v16, v17, (v17 - v16) >> 3);
  v21 = 0;
  v22 = 0;
  v20 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<double *>,std::__wrap_iter<double *>>(&v20, v27, *(&v27 + 1), (*(&v27 + 1) - v27) >> 3);
  v14 = 0;
  v15 = 0;
  __p = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<double *>,std::__wrap_iter<double *>>(&__p, v25, *(&v25 + 1), (*(&v25 + 1) - v25) >> 3);
  *&v10 = 0.0;
  v11 = 0;
  v12 = 0;
  _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3EEEEJNS_6vectorIfNS_9allocatorIfEEEES6_S6_S6_EEC2B8ne200100IJLm0ELm1ELm2ELm3EEJS6_S6_S6_S6_EJEJEJRS6_S9_S9_S6_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSB_IJDpT2_EEEDpOT3_(a3, v23, &v20, &__p, &v10);
  if (*&v10 != 0.0)
  {
    v11 = v10;
    operator delete(v10);
  }

  if (__p)
  {
    v14 = __p;
    operator delete(__p);
  }

  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }

  if (v23[0])
  {
    v23[1] = v23[0];
    operator delete(v23[0]);
  }

  if (v25)
  {
    *(&v25 + 1) = v25;
    operator delete(v25);
  }

  if (v27)
  {
    *(&v27 + 1) = v27;
    operator delete(v27);
  }

  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  v16 = v29;
  std::vector<std::vector<std::vector<double>>>::__destroy_vector::operator()[abi:ne200100](&v16);
}

void sub_1911E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (a22)
  {
    a23 = a22;
    operator delete(a22);
  }

  if (a25)
  {
    a26 = a25;
    operator delete(a25);
  }

  if (a29)
  {
    a30 = a29;
    operator delete(a29);
  }

  v32 = *(v30 - 144);
  if (v32)
  {
    *(v30 - 136) = v32;
    operator delete(v32);
  }

  if (a18)
  {
    a19 = a18;
    operator delete(a18);
  }

  a18 = (v30 - 120);
  std::vector<std::vector<std::vector<double>>>::__destroy_vector::operator()[abi:ne200100](&a18);
  _Unwind_Resume(a1);
}

void AutocF0::~AutocF0(void **this)
{
  if (*(this + 151) < 0)
  {
    operator delete(this[16]);
  }

  v2 = this[13];
  if (v2)
  {
    this[14] = v2;
    operator delete(v2);
  }

  v3 = this[10];
  if (v3)
  {
    this[11] = v3;
    operator delete(v3);
  }

  v4 = this[7];
  if (v4)
  {
    this[8] = v4;
    operator delete(v4);
  }

  v5 = this[4];
  if (v5)
  {
    this[5] = v5;
    operator delete(v5);
  }
}

uint64_t std::vector<std::vector<double>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::vector<double>>::__emplace_back_slow_path<std::vector<double> const&>(a1, a2);
  }

  else
  {
    std::vector<std::vector<double>>::__construct_one_at_end[abi:ne200100]<std::vector<double> const&>(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t std::vector<std::vector<std::vector<double>>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::vector<std::vector<double>>>::__emplace_back_slow_path<std::vector<std::vector<double>> const&>(a1, a2);
  }

  else
  {
    std::vector<std::vector<std::vector<double>>>::__construct_one_at_end[abi:ne200100]<std::vector<std::vector<double>> const&>(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

void vote_f0_files(double ****a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = -1431655765 * (a1[1] - *a1);
  if (v5 > 1)
  {
    v6 = 1;
    while (1)
    {
      v7 = 0xAAAAAAAAAAAAAAABLL * ((*a1)[1] - **a1);
      std::vector<double>::vector[abi:ne200100](&__p, (*a1)[3 * v6][1] - *(*a1)[3 * v6]);
      std::vector<std::vector<double>>::vector[abi:ne200100](&v128, v7);
      if (__p)
      {
        v127 = __p;
        operator delete(__p);
      }

      v8 = *a1;
      v9 = **a1;
      if ((*a1)[1] != v9)
      {
        break;
      }

LABEL_53:
      __p = &v128;
      std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&__p);
      if (++v6 == (v5 & 0x7FFFFFFF))
      {
        goto LABEL_54;
      }
    }

    v10 = 0;
    v11 = 0;
    while (1)
    {
      v12 = v10;
      v13 = *v9[3 * v10];
      v14 = v8[3 * v6];
      v15 = v8[3 * v6 + 1] - v14;
      v16 = 0xAAAAAAAAAAAAAAABLL * v15;
      v17 = -1431655765 * v15 - 1;
      v18 = v17 >= v10 ? v10 : -1431655765 * v15 - 1;
      v19 = *v14[3 * v18];
      if (v13 < v19)
      {
        break;
      }

      if (v13 > v19)
      {
        v24 = v16 - 1;
        v25 = v18 + 1;
        if (v16 - 1 <= v25 || *v14[3 * v25] >= v13)
        {
          LODWORD(v22) = -1;
        }

        else
        {
          v26 = v17;
          if (v10 < v17)
          {
            v26 = v10;
          }

          v27 = &v14[3 * v26 + 6];
          v28 = 2;
          do
          {
            v29 = v28;
            if (v24 <= v26 + v28)
            {
              break;
            }

            v30 = *v27;
            v27 += 3;
            ++v28;
          }

          while (*v30 < v13);
          v22 = v17;
          if (v10 < v17)
          {
            v22 = v10;
          }

          v25 = v22 + v29;
          LODWORD(v22) = -v29;
        }

        if (v24 < v25 || vabdd_f64(v13, *v14[3 * v25]) > vabdd_f64(v13, *v14[3 * v25 - 3]))
        {
          LODWORD(v22) = v22 + 1;
        }

        goto LABEL_42;
      }

      LODWORD(v22) = 0;
LABEL_43:
      v31 = &v14[3 * (v18 - v22)];
      v32 = &v128[3 * v10];
      if (v32 != v31)
      {
        std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(v32, *v31, v31[1], (v31[1] - *v31) >> 3);
        v8 = *a1;
        v9 = **a1;
      }

      if (0xAAAAAAAAAAAAAAABLL * (v8[1] - v9) <= ++v10)
      {
        if (v11 == 1)
        {
          v33 = &v8[3 * v6];
          v34 = v128;
          if (v33 != &v128)
          {
            std::vector<std::vector<double>>::__assign_with_size[abi:ne200100]<std::vector<double>*,std::vector<double>*>(v33, v128, v129, 0xAAAAAAAAAAAAAAABLL * (v129 - v128));
            v34 = v128;
          }

          if (v129 != v34)
          {
            v35 = 0xAAAAAAAAAAAAAAABLL * (v129 - v34);
            v36 = **a1;
            v37 = (*a1)[3 * v6];
            if (v35 <= 1)
            {
              v35 = 1;
            }

            do
            {
              v38 = *v36;
              v36 += 3;
              v39 = *v38;
              v40 = *v37;
              v37 += 3;
              *v40 = v39;
              --v35;
            }

            while (v35);
          }
        }

        goto LABEL_53;
      }
    }

    if (v18 < 2)
    {
      v23 = v18 - 1;
      LODWORD(v22) = 1;
      if (v18 - 1 < 0)
      {
        goto LABEL_41;
      }
    }

    else
    {
      if (v10 >= v17)
      {
        v20 = v17;
      }

      else
      {
        v20 = v10;
      }

      v21 = &v14[3 * (v20 - 1)];
      v22 = 1;
      while (**v21 > v13)
      {
        ++v22;
        v21 -= 3;
        if (v20 == v22)
        {
          v23 = 0;
          LODWORD(v22) = v18;
          goto LABEL_40;
        }
      }

      if (v10 >= v17)
      {
        v12 = v17;
      }

      v23 = v12 - v22;
    }

LABEL_40:
    if (vabdd_f64(v13, *v14[3 * v23]) <= vabdd_f64(v13, *v14[3 * v23 + 3]))
    {
LABEL_42:
      v11 = 1;
      goto LABEL_43;
    }

LABEL_41:
    LODWORD(v22) = v22 - 1;
    goto LABEL_42;
  }

LABEL_54:
  v128 = 0;
  v129 = 0;
  v130 = 0;
  v117 = v5;
  if (v5 < 1)
  {
    v51 = 0x4059000000000000;
    v50 = a4;
  }

  else
  {
    v41 = 0;
    v42 = v5 & 0x7FFFFFFF;
    v43 = *a1;
    do
    {
      v44 = v43[3 * v41];
      if (v43[3 * v41 + 1] != v44)
      {
        v45 = 0;
        v46 = 0;
        do
        {
          v47 = v44[v45];
          v49 = v47[1];
          v48 = v47 + 1;
          if (v49 > 0.0)
          {
            std::vector<double>::push_back[abi:ne200100](&v128, v48);
            v43 = *a1;
          }

          ++v46;
          v44 = v43[3 * v41];
          v45 += 3;
        }

        while (0xAAAAAAAAAAAAAAABLL * (v43[3 * v41 + 1] - v44) > v46);
      }

      ++v41;
    }

    while (v41 != v42);
    if (v129 == v128)
    {
      v51 = 0x4059000000000000;
      v50 = a4;
      v5 = v117;
    }

    else
    {
      std::__sort<std::__less<double,double> &,double *>();
      v50 = a4;
      v5 = v117;
      v51 = v128[((v129 - v128) >> 3) / 2];
    }
  }

  v52 = **a1;
  v53 = *v52[3];
  v54 = **v52;
  v55 = 0xAAAAAAAAAAAAAAABLL * ((*a1)[1] - v52);
  v125[0] = 0;
  std::vector<double>::vector[abi:ne200100](&__p, v55);
  if ((*a1)[1] == **a1)
  {
    goto LABEL_135;
  }

  v56 = 0;
  v57 = llround(0.05 / (v53 - v54));
  v58 = -v57;
  v118 = v5 & 0x7FFFFFFF;
  do
  {
    memset(v125, 0, sizeof(v125));
    if (v5 <= 0)
    {
      *(__p + v56) = v51;
      goto LABEL_82;
    }

    v59 = 0;
    do
    {
      v60 = v58;
      v61 = (2 * v57) | 1;
      if ((v57 & 0x80000000) == 0)
      {
        do
        {
          if ((v60 & 0x80000000) == 0)
          {
            v62 = (*a1)[3 * v59];
            if (0xAAAAAAAAAAAAAAABLL * ((*a1)[3 * v59 + 1] - v62) > v60)
            {
              v63 = v62[3 * v60];
              v65 = v63[1];
              v64 = v63 + 1;
              if (v65 > 0.0)
              {
                std::vector<double>::push_back[abi:ne200100](v125, v64);
              }
            }
          }

          ++v60;
          --v61;
        }

        while (v61);
      }

      ++v59;
    }

    while (v59 != v118);
    v66 = v125[0];
    if (v125[1] == v125[0])
    {
      *(__p + v56) = v51;
      v5 = v117;
      if (!v66)
      {
        goto LABEL_82;
      }
    }

    else
    {
      std::__sort<std::__less<double,double> &,double *>();
      v5 = v117;
      v66 = v125[0];
      *(__p + v56) = *(v125[0] + ((v125[1] - v125[0]) >> 3) / 2);
    }

    v125[1] = v66;
    operator delete(v66);
LABEL_82:
    ++v56;
    v68 = **a1;
    v67 = (*a1)[1];
    ++v58;
  }

  while (0xAAAAAAAAAAAAAAABLL * (v67 - v68) > v56);
  v50 = a4;
  if (v67 != v68)
  {
    v69 = 0;
    v70 = floor(vcvtd_n_f64_s32(v5, 1uLL));
    while (1)
    {
      memset(v125, 0, sizeof(v125));
      v123[0] = 0;
      v123[1] = 0;
      v124 = 0;
      v120 = 0;
      v121 = 0;
      v122 = 0;
      if (v5 < 1)
      {
        v77 = 0.0;
      }

      else
      {
        v71 = 0;
        v72 = 0;
        v73 = v118;
        do
        {
          v74 = (*a1)[v71][3 * v69];
          v76 = v74[1];
          v75 = v74 + 1;
          if (v76 > 0.0)
          {
            std::vector<double>::push_back[abi:ne200100](v125, v75);
            ++v72;
          }

          v71 += 3;
          --v73;
        }

        while (v73);
        v77 = v72;
        v5 = v117;
        if (v117 >= 1)
        {
          v78 = 0;
          v79 = v118;
          do
          {
            v80 = &(*a1)[v78][3 * v69];
            v81 = *v80;
            if (v80[1] - *v80 == 32)
            {
              std::vector<double>::push_back[abi:ne200100](v123, v81 + 2);
              std::vector<double>::push_back[abi:ne200100](&v120, (*a1)[v78][3 * v69] + 3);
            }

            else
            {
              v83 = v81[1];
              v82 = v81 + 1;
              if (v83 <= 0.0)
              {
                std::vector<double>::push_back[abi:ne200100](v123, __p + v69);
                v119 = 0;
              }

              else
              {
                std::vector<double>::push_back[abi:ne200100](v123, v82);
                v119 = 0x3FE0000000000000;
              }

              std::vector<double>::push_back[abi:ne200100](&v120, &v119);
            }

            v78 += 3;
            --v79;
          }

          while (v79);
          v50 = a4;
        }
      }

      if (v70 > v77)
      {
        break;
      }

      v95 = (v125[1] - v125[0]) >> 3;
      if (v95 == 2)
      {
        v97 = *(__p + v69);
        v96 = *v125[0];
        v98 = *(v125[0] + 1);
      }

      else
      {
        if (v95 == 1)
        {
          v96 = *v125[0];
          goto LABEL_124;
        }

        std::__sort<std::__less<double,double> &,double *>();
        v100 = (v125[1] - v125[0]) >> 3;
        if ((v100 & 0x80000001) == 1)
        {
          v96 = *(v125[0] + ((v100 - 1) >> 1));
          goto LABEL_124;
        }

        v101 = (v125[0] + 8 * (v100 / 2));
        v96 = *(v101 - 1);
        v98 = *v101;
        if (vabdd_f64(v96, *v101) < 10.0)
        {
          v96 = (v96 + v98) * 0.5;
LABEL_124:
          v99 = *a3;
LABEL_125:
          *(v99 + 8 * v69) = v96;
          goto LABEL_126;
        }

        v97 = *(__p + v69);
      }

      v99 = *a3;
      if (vabdd_f64(v96, v97) < vabdd_f64(v98, v97))
      {
        goto LABEL_125;
      }

      *(v99 + 8 * v69) = v98;
LABEL_126:
      *(*a2 + 8 * v69) = *(**a1)[3 * v69];
      if (v120)
      {
        v121 = v120;
        operator delete(v120);
      }

      if (v123[0])
      {
        v123[1] = v123[0];
        operator delete(v123[0]);
      }

      if (v125[0])
      {
        v125[1] = v125[0];
        operator delete(v125[0]);
      }

      if (0xAAAAAAAAAAAAAAABLL * ((*a1)[1] - **a1) <= ++v69)
      {
        goto LABEL_135;
      }
    }

    *(*a3 + 8 * v69) = 0;
    v84 = v123[1];
    v85 = v123[0];
    v86 = v123[0];
    if (v123[1] != v123[0])
    {
      v87 = 0;
      v88 = (v123[1] - v123[0]) >> 3;
      v89 = __p;
      if (v88 <= 1)
      {
        v88 = 1;
      }

      do
      {
        v85[v87] = v85[v87] - v89[v69];
        ++v87;
      }

      while (v88 != v87);
      v90 = v85 + 1;
      if (v85 + 1 == v84)
      {
        v86 = v85;
      }

      else
      {
        v91 = *v85;
        v86 = v85;
        v92 = v85 + 1;
        do
        {
          v93 = *v92++;
          v94 = v93;
          if (v93 < v91)
          {
            v91 = v94;
            v86 = v90;
          }

          v90 = v92;
        }

        while (v92 != v84);
      }
    }

    v96 = *(v85 + ((v86 - v85) << 29 >> 29)) + *(__p + v69);
    v99 = *v50;
    goto LABEL_125;
  }

LABEL_135:
  v102 = *v50;
  v103 = v50[1] - *v50;
  if (v103)
  {
    v104 = v103 >> 3;
    v105 = *a3;
    if (v104 <= 1)
    {
      v104 = 1;
    }

    do
    {
      if (*v102 == 0.0)
      {
        *v102 = *v105;
      }

      ++v105;
      ++v102;
      --v104;
    }

    while (v104);
  }

  DSP::medfilt(v50, 9u, v125);
  v106 = *v50;
  if (*v50)
  {
    v50[1] = v106;
    operator delete(v106);
    *v50 = 0;
    v50[1] = 0;
    v50[2] = 0;
  }

  *v50 = *v125;
  v50[2] = v125[2];
  DSP::smooth(v50, 7, v125);
  v107 = *v50;
  if (*v50)
  {
    v50[1] = v107;
    operator delete(v107);
    *v50 = 0;
    v50[1] = 0;
    v50[2] = 0;
  }

  v108 = v125[0];
  *v50 = v125[0];
  v109 = v125[1];
  *(v50 + 1) = *&v125[1];
  if (v109 != v108)
  {
    v110 = (v109 - v108) >> 3;
    v111 = *a3;
    if (v110 <= 1)
    {
      v110 = 1;
    }

    do
    {
      if (*v111 > 0.0)
      {
        *v108 = *v111;
      }

      ++v108;
      ++v111;
      --v110;
    }

    while (v110);
  }

  DSP::medfilt(v50, 3u, v125);
  v112 = *v50;
  if (*v50)
  {
    v50[1] = v112;
    operator delete(v112);
    *v50 = 0;
    v50[1] = 0;
    v50[2] = 0;
  }

  *v50 = *v125;
  v113 = __p;
  v50[2] = v125[2];
  if (v113)
  {
    v127 = v113;
    operator delete(v113);
  }

  if (v128)
  {
    v129 = v128;
    operator delete(v128);
  }
}

void sub_191E84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  v29 = *(v27 - 144);
  if (v29)
  {
    *(v27 - 136) = v29;
    operator delete(v29);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::tuple<std::vector<float>,std::vector<float>,std::vector<float>,std::vector<float>>::~tuple(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    *(a1 + 80) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    *(a1 + 56) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    *(a1 + 32) = v4;
    operator delete(v4);
  }

  v5 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v5;
    operator delete(v5);
  }

  return a1;
}

void SRH::~SRH(SRH *this)
{
  v2 = *(this + 13);
  if (v2)
  {
    *(this + 14) = v2;
    operator delete(v2);
  }

  v3 = *(this + 10);
  if (v3)
  {
    *(this + 11) = v3;
    operator delete(v3);
  }

  v4 = *(this + 7);
  if (v4)
  {
    *(this + 8) = v4;
    operator delete(v4);
  }

  v5 = *(this + 4);
  if (v5)
  {
    *(this + 5) = v5;
    operator delete(v5);
  }
}

void *_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3EEEEJNS_6vectorIfNS_9allocatorIfEEEES6_S6_S6_EEC2B8ne200100IJLm0ELm1ELm2ELm3EEJS6_S6_S6_S6_EJEJEJRS6_S9_S9_S6_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSB_IJDpT2_EEEDpOT3_(void *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1, *a2, a2[1], (a2[1] - *a2) >> 2);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a1 + 3), *a3, a3[1], (a3[1] - *a3) >> 2);
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a1 + 6), *a4, a4[1], (a4[1] - *a4) >> 2);
  a1[9] = 0;
  a1[10] = 0;
  a1[11] = 0;
  *(a1 + 9) = *a5;
  a1[11] = *(a5 + 16);
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  return a1;
}

void sub_1920CC(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  v5 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::tuple<std::vector<float>,std::vector<float>,std::vector<float>,std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::tuple<std::vector<float>,std::vector<float>,std::vector<float>,std::vector<float>>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::tuple<std::vector<float>,std::vector<float>,std::vector<float>,std::vector<float>>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    do
    {
      v4 = *(v3 - 24);
      if (v4)
      {
        *(v3 - 16) = v4;
        operator delete(v4);
      }

      v5 = *(v3 - 48);
      if (v5)
      {
        *(v3 - 40) = v5;
        operator delete(v5);
      }

      v6 = *(v3 - 72);
      if (v6)
      {
        *(v3 - 64) = v6;
        operator delete(v6);
      }

      v7 = v3 - 96;
      v8 = *(v3 - 96);
      if (v8)
      {
        *(v3 - 88) = v8;
        operator delete(v8);
      }

      v3 -= 96;
    }

    while (v7 != v2);
  }

  a1[1] = v2;
}

uint64_t std::vector<std::tuple<std::vector<float>,std::vector<float>,std::vector<float>,std::vector<float>>>::__emplace_back_slow_path<std::tuple<std::vector<float>,std::vector<float>,std::vector<float>,std::vector<float>> const&>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 5) >= 0x155555555555555)
  {
    v6 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<std::vector<float>,std::vector<float>,std::vector<float>,std::vector<float>>>>(a1, v6);
  }

  v13 = 0;
  v14 = 96 * v2;
  v15 = 96 * v2;
  v16 = 0;
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul>,std::vector<float>,std::vector<float>,std::vector<float>,std::vector<float>>::__tuple_impl((96 * v2), a2);
  v7 = 96 * v2 + 96;
  v8 = *(a1 + 8) - *a1;
  v9 = 96 * v2 - v8;
  memcpy((v14 - v8), *a1, v8);
  v10 = *a1;
  *a1 = v9;
  *(a1 + 8) = v7;
  v11 = *(a1 + 16);
  *(a1 + 16) = v16;
  v15 = v10;
  v16 = v11;
  v13 = v10;
  v14 = v10;
  std::__split_buffer<std::tuple<std::vector<float>,std::vector<float>,std::vector<float>,std::vector<float>>>::~__split_buffer(&v13);
  return v7;
}

void sub_1922E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::tuple<std::vector<float>,std::vector<float>,std::vector<float>,std::vector<float>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul>,std::vector<float>,std::vector<float>,std::vector<float>,std::vector<float>>::__tuple_impl(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1, *a2, a2[1], (a2[1] - *a2) >> 2);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a1 + 3), a2[3], a2[4], (a2[4] - a2[3]) >> 2);
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a1 + 6), a2[6], a2[7], (a2[7] - a2[6]) >> 2);
  a1[9] = 0;
  a1[10] = 0;
  a1[11] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a1 + 9), a2[9], a2[10], (a2[10] - a2[9]) >> 2);
  return a1;
}

void sub_1923A4(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 56) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v6;
    operator delete(v6);
  }

  v7 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v7;
    operator delete(v7);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<std::vector<float>,std::vector<float>,std::vector<float>,std::vector<float>>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::tuple<std::vector<float>,std::vector<float>,std::vector<float>,std::vector<float>>>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 96);
    *(a1 + 16) = i - 96;
    v5 = *(i - 24);
    if (v5)
    {
      *(i - 16) = v5;
      operator delete(v5);
    }

    v6 = *(i - 48);
    if (v6)
    {
      *(i - 40) = v6;
      operator delete(v6);
    }

    v7 = *(i - 72);
    if (v7)
    {
      *(i - 64) = v7;
      operator delete(v7);
    }

    v8 = *v4;
    if (*v4)
    {
      *(i - 88) = v8;
      operator delete(v8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

double std::__memberwise_forward_assign[abi:ne200100]<std::tuple<std::vector<float>,std::vector<float>,std::vector<float>,std::vector<float>>,std::tuple<std::vector<float>,std::vector<float>,std::vector<float>,std::vector<float>>,std::vector<float>,std::vector<float>,std::vector<float>,std::vector<float>,0ul,1ul,2ul,3ul>(uint64_t a1, uint64_t a2)
{
  std::vector<float>::__move_assign(a1, a2);
  std::vector<float>::__move_assign(a1 + 24, (a2 + 24));
  std::vector<float>::__move_assign(a1 + 48, (a2 + 48));

  *&result = std::vector<float>::__move_assign(a1 + 72, (a2 + 72)).n128_u64[0];
  return result;
}

__n128 std::vector<float>::__move_assign(uint64_t a1, __n128 *a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

void std::vector<std::vector<std::vector<double>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 3;
        v6 = v4;
        std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

char **std::__memberwise_copy_assign[abi:ne200100]<std::tuple<std::vector<float> &,std::vector<float> &,std::vector<float> &,std::vector<float> &>,std::tuple<std::vector<float>,std::vector<float>,std::vector<float>,std::vector<float>>,0ul,1ul,2ul,3ul>(char ***a1, char **a2)
{
  v4 = *a1;
  if (v4 != a2)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v4, *a2, a2[1], (a2[1] - *a2) >> 2);
  }

  v5 = a1[1];
  if (v5 != a2 + 3)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v5, a2[3], a2[4], (a2[4] - a2[3]) >> 2);
  }

  v6 = a1[2];
  if (v6 != a2 + 6)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v6, a2[6], a2[7], (a2[7] - a2[6]) >> 2);
  }

  result = a1[3];
  if (result != a2 + 9)
  {
    v8 = a2[9];
    v9 = a2[10];

    return std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(result, v8, v9, (v9 - v8) >> 2);
  }

  return result;
}

uint64_t std::vector<std::vector<double>>::__construct_one_at_end[abi:ne200100]<std::vector<double> const&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(v3, *a2, a2[1], (a2[1] - *a2) >> 3);
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t std::vector<std::vector<double>>::__emplace_back_slow_path<std::vector<double> const&>(uint64_t a1, uint64_t *a2)
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
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(24 * v2, *a2, a2[1], (a2[1] - *a2) >> 3);
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

void sub_192824(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<std::pair<int,int>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::vector<std::vector<double>>>::__construct_one_at_end[abi:ne200100]<std::vector<std::vector<double>> const&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<std::vector<double>>::__init_with_size[abi:ne200100]<std::vector<double>*,std::vector<double>*>(v3, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t std::vector<std::vector<std::vector<double>>>::__emplace_back_slow_path<std::vector<std::vector<double>> const&>(uint64_t a1, uint64_t *a2)
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<kaldi::HmmTopology::HmmState>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<std::vector<double>>::__init_with_size[abi:ne200100]<std::vector<double>*,std::vector<double>*>(24 * v2, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
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
  std::__split_buffer<std::vector<std::vector<std::pair<int,int>>>>::~__split_buffer(&v14);
  return v8;
}

void sub_1929C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<std::vector<std::pair<int,int>>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::vector<double>>::__init_with_size[abi:ne200100]<std::vector<double>*,std::vector<double>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<float>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_192A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<double>>,std::vector<double>*,std::vector<double>*,std::vector<double>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(v4, *v6, v6[1], (v6[1] - *v6) >> 3);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<double>>,std::vector<double>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<double>>,std::vector<double>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<int>>,std::vector<int>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::vector<std::vector<double>>::__assign_with_size[abi:ne200100]<std::vector<double>*,std::vector<double>*>(uint64_t *a1, char **a2, char **a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < a4)
  {
    std::vector<std::vector<int>>::__vdeallocate(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::vector<float>>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1] - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v11 >> 3) >= a4)
  {
    std::__copy_impl::operator()[abi:ne200100]<std::vector<double> *,std::vector<double> *,std::vector<double> *>(&v19, a2, a3, v8);
    v13 = v12;
    v14 = a1[1];
    if (v14 != v12)
    {
      v15 = a1[1];
      do
      {
        v17 = *(v15 - 24);
        v15 -= 24;
        v16 = v17;
        if (v17)
        {
          *(v14 - 16) = v16;
          operator delete(v16);
        }

        v14 = v15;
      }

      while (v15 != v13);
    }

    a1[1] = v13;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<std::vector<double> *,std::vector<double> *,std::vector<double> *>(&v18, a2, (a2 + v11), v8);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<double>>,std::vector<double>*,std::vector<double>*,std::vector<double>*>(a1, (a2 + v11), a3, a1[1]);
  }
}

char **std::__copy_impl::operator()[abi:ne200100]<std::vector<double> *,std::vector<double> *,std::vector<double> *>(int a1, char **a2, char **a3, char **a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (v5 != a4)
      {
        std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(a4, *v5, v5[1], (v5[1] - *v5) >> 3);
      }

      v5 += 3;
      a4 += 3;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void SiriTTS::ForcedAlignment::Lexicon::Lexicon(uint64_t a1)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  _ZNSt3__115allocate_sharedB8ne200100IN3fst11SymbolTableENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

void sub_19361C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  v18 = v16[6];
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  v19 = v16[4];
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  __p = v16;
  std::vector<SiriTTS::ForcedAlignment::Lexeme>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void SiriTTS::ForcedAlignment::Lexicon::add_lexeme(SiriTTS::ForcedAlignment::Lexicon *this, const std::string *a2)
{
  if (a2[1].__r_.__value_.__l.__size_ != a2[1].__r_.__value_.__r.__words[0])
  {
    v28 = 0u;
    memset(v27, 0, sizeof(v27));
    std::string::operator=(v27, a2);
    data = a2[1].__r_.__value_.__l.__data_;
    if (a2[1].__r_.__value_.__l.__size_ - data == 24)
    {
      if (data[23] >= 0)
      {
        v5 = data[23];
      }

      else
      {
        v5 = *(data + 1);
      }

      v6 = __p;
      std::string::basic_string[abi:ne200100](__p, v5 + 2);
      if (v26 < 0)
      {
        v6 = __p[0];
      }

      if (v5)
      {
        if (data[23] >= 0)
        {
          v7 = data;
        }

        else
        {
          v7 = *data;
        }

        memmove(v6, v7, v5);
      }

      strcpy(v6 + v5, "_S");
      std::vector<std::string>::push_back[abi:ne200100](&v27[24], __p);
    }

    else
    {
      if (data[23] >= 0)
      {
        v8 = data[23];
      }

      else
      {
        v8 = *(data + 1);
      }

      v9 = __p;
      std::string::basic_string[abi:ne200100](__p, v8 + 2);
      if (v26 < 0)
      {
        v9 = __p[0];
      }

      if (v8)
      {
        if (data[23] >= 0)
        {
          v10 = data;
        }

        else
        {
          v10 = *data;
        }

        memmove(v9, v10, v8);
      }

      strcpy(v9 + v8, "_B");
      std::vector<std::string>::push_back[abi:ne200100](&v27[24], __p);
      if (v26 < 0)
      {
        operator delete(__p[0]);
      }

      v11 = a2[1].__r_.__value_.__l.__data_;
      size = a2[1].__r_.__value_.__l.__size_;
      if (0xAAAAAAAAAAAAAAABLL * ((size - v11) >> 3) - 3 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v13 = 0;
        v14 = 1;
        do
        {
          v15 = &v11[v13];
          v16 = v11[v13 + 47];
          if ((v16 & 0x80u) == 0)
          {
            v17 = v16;
          }

          else
          {
            v17 = *(v15 + 4);
          }

          std::string::basic_string[abi:ne200100](__p, v17 + 2);
          if (v26 >= 0)
          {
            v18 = __p;
          }

          else
          {
            v18 = __p[0];
          }

          if (v17)
          {
            if (v15[47] >= 0)
            {
              v19 = v15 + 24;
            }

            else
            {
              v19 = *(v15 + 3);
            }

            memmove(v18, v19, v17);
          }

          strcpy(v18 + v17, "_I");
          std::vector<std::string>::push_back[abi:ne200100](&v27[24], __p);
          if (v26 < 0)
          {
            operator delete(__p[0]);
          }

          ++v14;
          v11 = a2[1].__r_.__value_.__l.__data_;
          size = a2[1].__r_.__value_.__l.__size_;
          v13 += 24;
        }

        while (-1 - 0x5555555555555555 * ((size - v11) >> 3) > v14);
      }

      if (*(size - 1) >= 0)
      {
        v20 = *(size - 1);
      }

      else
      {
        v20 = *(size - 16);
      }

      v21 = __p;
      std::string::basic_string[abi:ne200100](__p, v20 + 2);
      if (v26 < 0)
      {
        v21 = __p[0];
      }

      if (v20)
      {
        if (*(size - 1) >= 0)
        {
          v22 = (size - 24);
        }

        else
        {
          v22 = *(size - 24);
        }

        memmove(v21, v22, v20);
      }

      strcpy(v21 + v20, "_E");
      std::vector<std::string>::push_back[abi:ne200100](&v27[24], __p);
    }

    if (v26 < 0)
    {
      operator delete(__p[0]);
    }

    std::vector<SiriTTS::ForcedAlignment::Lexeme>::push_back[abi:ne200100](this, v27);
    (*(**(this + 5) + 32))(*(this + 5), v27);
    v23 = *&v27[24];
    v24 = v28;
    while (v23 != v24)
    {
      (*(**(this + 3) + 32))(*(this + 3), v23);
      v23 += 24;
    }

    __p[0] = &v27[24];
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
    if ((v27[23] & 0x80000000) != 0)
    {
      operator delete(*v27);
    }
  }
}

void sub_193A6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  SiriTTS::ForcedAlignment::Lexeme::~Lexeme(&a16);
  _Unwind_Resume(a1);
}

void std::vector<std::string>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    v18.__end_cap_.__value_ = a1;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = 24 * v8 + 24;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18.__end_ = v16;
    v18.__end_cap_.__value_ = v17;
    v18.__first_ = v16;
    v18.__begin_ = v16;
    std::__split_buffer<std::string>::~__split_buffer(&v18);
  }

  else
  {
    v6 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v6;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = v4 + 24;
  }

  *(a1 + 8) = v7;
}

uint64_t std::vector<SiriTTS::ForcedAlignment::Lexeme>::push_back[abi:ne200100](uint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<SiriTTS::ForcedAlignment::Lexeme>::__emplace_back_slow_path<SiriTTS::ForcedAlignment::Lexeme const&>(a1, a2);
  }

  else
  {
    std::vector<SiriTTS::ForcedAlignment::Lexeme>::__construct_one_at_end[abi:ne200100]<SiriTTS::ForcedAlignment::Lexeme const&>(a1, a2);
    result = v3 + 48;
  }

  a1[1] = result;
  return result;
}

void SiriTTS::ForcedAlignment::Lexicon::int_to_phone(SiriTTS::ForcedAlignment::Lexicon *this@<X0>, const BOOL *a2@<X2>, boost::filesystem::path *a3@<X8>)
{
  (*(**(this + 3) + 88))(&__str);
  size = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if (*(&__str.__r_.__value_.__s + 23))
    {
      goto LABEL_3;
    }

LABEL_11:
    boost::filesystem::path::path(a3, "");
    goto LABEL_24;
  }

  size = __str.__r_.__value_.__l.__size_;
  if (!__str.__r_.__value_.__l.__size_)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (!*a2)
  {
    *a3 = __str;
    memset(&__str, 0, sizeof(__str));
    goto LABEL_24;
  }

  std::string::basic_string(&v9, &__str, size - 2, 2uLL, &v11);
  v6 = HIBYTE(v9.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v9.__r_.__value_.__l.__size_ == 2 && *v9.__r_.__value_.__l.__data_ == 21343 || v9.__r_.__value_.__l.__size_ == 2 && *v9.__r_.__value_.__l.__data_ == 16991 || v9.__r_.__value_.__l.__size_ == 2 && *v9.__r_.__value_.__l.__data_ == 18783)
    {
      goto LABEL_27;
    }

    if (v9.__r_.__value_.__l.__size_ != 2)
    {
      goto LABEL_22;
    }

    v7 = v9.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) != 2)
    {
      goto LABEL_22;
    }

    if (LOWORD(v9.__r_.__value_.__l.__data_) == 21343 || LOWORD(v9.__r_.__value_.__l.__data_) == 16991 || LOWORD(v9.__r_.__value_.__l.__data_) == 18783)
    {
      goto LABEL_27;
    }

    v7 = &v9;
  }

  if (LOWORD(v7->__r_.__value_.__l.__data_) != 17759)
  {
LABEL_22:
    *a3 = __str;
    memset(&__str, 0, sizeof(__str));
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_27:
  v8 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v8 = __str.__r_.__value_.__l.__size_;
  }

  std::string::basic_string(a3, &__str, 0, v8 - 2, &v11);
  if ((*(&v9.__r_.__value_.__s + 23) & 0x80) != 0)
  {
LABEL_23:
    operator delete(v9.__r_.__value_.__l.__data_);
  }

LABEL_24:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_193E20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void *SiriTTS::ForcedAlignment::Lexicon::write_text_fst(__int128 **a1, void *a2)
{
  *(a2 + *(*a2 - 24) + 16) = 15;
  v3 = std::ostream::operator<<();
  v86.__r_.__value_.__s.__data_[0] = 9;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, &v86, 1);
  v4 = std::ostream::operator<<();
  v86.__r_.__value_.__s.__data_[0] = 9;
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, &v86, 1);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "<eps>", 5);
  v86.__r_.__value_.__s.__data_[0] = 9;
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, &v86, 1);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "<eps>", 5);
  v86.__r_.__value_.__s.__data_[0] = 9;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, &v86, 1);
  v9 = std::ostream::operator<<();
  v86.__r_.__value_.__s.__data_[0] = 10;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, &v86, 1);
  v10 = std::ostream::operator<<();
  v86.__r_.__value_.__s.__data_[0] = 9;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, &v86, 1);
  v11 = std::ostream::operator<<();
  v86.__r_.__value_.__s.__data_[0] = 9;
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, &v86, 1);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "sil", 3);
  v86.__r_.__value_.__s.__data_[0] = 9;
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, &v86, 1);
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "<eps>", 5);
  v86.__r_.__value_.__s.__data_[0] = 9;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, &v86, 1);
  v16 = std::ostream::operator<<();
  v86.__r_.__value_.__s.__data_[0] = 10;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, &v86, 1);
  v17 = std::ostream::operator<<();
  v86.__r_.__value_.__s.__data_[0] = 9;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, &v86, 1);
  v18 = std::ostream::operator<<();
  v86.__r_.__value_.__s.__data_[0] = 9;
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, &v86, 1);
  v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "sil", 3);
  v86.__r_.__value_.__s.__data_[0] = 9;
  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, &v86, 1);
  v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "<eps>", 5);
  v86.__r_.__value_.__s.__data_[0] = 10;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, &v86, 1);
  v23 = *a1;
  v84 = a1[1];
  if (*a1 != v84)
  {
    v85 = 3;
    do
    {
      v24 = *(v23 + 3);
      v25 = *(v23 + 4);
      v26 = v25 - v24;
      v27 = 0xAAAAAAAAAAAAAAABLL * ((v25 - v24) >> 3);
      if (v27 >= 2)
      {
        v28 = std::ostream::operator<<();
        v86.__r_.__value_.__s.__data_[0] = 9;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, &v86, 1);
        v29 = std::ostream::operator<<();
        v86.__r_.__value_.__s.__data_[0] = 9;
        v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, &v86, 1);
        v31 = *(v24 + 23);
        if (v31 >= 0)
        {
          v32 = v24;
        }

        else
        {
          v32 = *v24;
        }

        if (v31 >= 0)
        {
          v33 = *(v24 + 23);
        }

        else
        {
          v33 = *(v24 + 8);
        }

        v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, v32, v33);
        v86.__r_.__value_.__s.__data_[0] = 9;
        v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, &v86, 1);
        v36 = *(v23 + 23);
        if (v36 >= 0)
        {
          v37 = v23;
        }

        else
        {
          v37 = *v23;
        }

        if (v36 >= 0)
        {
          v38 = *(v23 + 23);
        }

        else
        {
          v38 = *(v23 + 1);
        }

        v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, v37, v38);
        v86.__r_.__value_.__s.__data_[0] = 10;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, &v86, 1);
        v25 = *(v23 + 4);
        v26 = v25 - *(v23 + 3);
        v27 = 0xAAAAAAAAAAAAAAABLL * (v26 >> 3);
        ++v85;
      }

      if (v27 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v40 = 0;
        v41 = 0;
        do
        {
          v42 = v40;
          v43 = std::ostream::operator<<();
          v86.__r_.__value_.__s.__data_[0] = 9;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, &v86, 1);
          v44 = std::ostream::operator<<();
          v86.__r_.__value_.__s.__data_[0] = 9;
          v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, &v86, 1);
          v46 = *(v23 + 3) + v41;
          v49 = *(v46 + 24);
          v47 = v46 + 24;
          v48 = v49;
          v50 = *(v47 + 23);
          if (v50 >= 0)
          {
            v51 = v47;
          }

          else
          {
            v51 = v48;
          }

          if (v50 >= 0)
          {
            v52 = *(v47 + 23);
          }

          else
          {
            v52 = *(v47 + 8);
          }

          v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, v51, v52);
          v86.__r_.__value_.__s.__data_[0] = 9;
          v54 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, &v86, 1);
          v55 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, "<eps>", 5);
          v86.__r_.__value_.__s.__data_[0] = 10;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v55, &v86, 1);
          v25 = *(v23 + 4);
          v26 = v25 - *(v23 + 3);
          v41 += 24;
          v40 = v42 + 1;
        }

        while (-1 - 0x5555555555555555 * (v26 >> 3) > (v42 + 2));
        v85 += v40;
      }

      if (v26 == 24)
      {
        if (*(v23 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v86, *v23, *(v23 + 1));
        }

        else
        {
          v56 = *v23;
          v86.__r_.__value_.__r.__words[2] = *(v23 + 2);
          *&v86.__r_.__value_.__l.__data_ = v56;
        }
      }

      else
      {
        boost::filesystem::path::path(&v86, "<eps>");
      }

      v57 = std::ostream::operator<<();
      v87 = 9;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, &v87, 1);
      v58 = std::ostream::operator<<();
      v87 = 9;
      v59 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, &v87, 1);
      v60 = *(v25 - 1);
      if (v60 >= 0)
      {
        v61 = v25 - 24;
      }

      else
      {
        v61 = *(v25 - 24);
      }

      if (v60 >= 0)
      {
        v62 = *(v25 - 1);
      }

      else
      {
        v62 = *(v25 - 16);
      }

      v63 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v59, v61, v62);
      v87 = 9;
      v64 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v63, &v87, 1);
      if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v65 = &v86;
      }

      else
      {
        v65 = v86.__r_.__value_.__r.__words[0];
      }

      if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v86.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v86.__r_.__value_.__l.__size_;
      }

      v67 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v64, v65, size);
      v87 = 9;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v67, &v87, 1);
      v68 = std::ostream::operator<<();
      v87 = 10;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v68, &v87, 1);
      v69 = std::ostream::operator<<();
      v87 = 9;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v69, &v87, 1);
      v70 = std::ostream::operator<<();
      v87 = 9;
      v71 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v70, &v87, 1);
      v72 = *(v25 - 1);
      if (v72 >= 0)
      {
        v73 = v25 - 24;
      }

      else
      {
        v73 = *(v25 - 24);
      }

      if (v72 >= 0)
      {
        v74 = *(v25 - 1);
      }

      else
      {
        v74 = *(v25 - 16);
      }

      v75 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v71, v73, v74);
      v87 = 9;
      v76 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v75, &v87, 1);
      if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v77 = &v86;
      }

      else
      {
        v77 = v86.__r_.__value_.__r.__words[0];
      }

      if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v78 = HIBYTE(v86.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v78 = v86.__r_.__value_.__l.__size_;
      }

      v79 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v76, v77, v78);
      v87 = 9;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v79, &v87, 1);
      v80 = std::ostream::operator<<();
      v87 = 10;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v80, &v87, 1);
      if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v86.__r_.__value_.__l.__data_);
      }

      v23 += 3;
    }

    while (v23 != v84);
  }

  v81 = std::ostream::operator<<();
  v86.__r_.__value_.__s.__data_[0] = 9;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v81, &v86, 1);
  v82 = std::ostream::operator<<();
  v86.__r_.__value_.__s.__data_[0] = 10;
  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v82, &v86, 1);
}

void sub_194478(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SiriTTS::ForcedAlignment::Lexicon::generate_fst(__int128 **this)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v5);
  SiriTTS::ForcedAlignment::Lexicon::write_text_fst(this, &v6);
  boost::filesystem::path::path(&__p, "LexiconService");
  v2 = this[3];
  v3 = this[5];
  fst::FstCompiler<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::FstCompiler();
}

void sub_1946D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  fst::FstCompiler<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::~FstCompiler(&a16);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void SiriTTS::ForcedAlignment::Lexeme::~Lexeme(void **this)
{
  v2 = this + 3;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void *fst::FstCompiler<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::~FstCompiler(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::__unordered_map_hasher<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,std::__hash_value_type<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::hash<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*>,std::equal_to<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*>,true>,std::__unordered_map_equal<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,std::__hash_value_type<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::equal_to<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*>,std::hash<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*>,true>,std::allocator<std::__hash_value_type<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::~__hash_table(a1 + 72);
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~ImplToFst(a1);
}

void std::vector<SiriTTS::ForcedAlignment::Lexeme>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 48;
        std::allocator<SiriTTS::ForcedAlignment::Lexeme>::destroy[abi:ne200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator<SiriTTS::ForcedAlignment::Lexeme>::destroy[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

void _ZNSt3__120__shared_ptr_emplaceIN3fst11SymbolTableENS_9allocatorIS2_EEEC2B8ne200100IJES4_Li0EEES4_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_282DF8;
  fst::SymbolTable::SymbolTable((a1 + 3));
}

void std::__shared_ptr_emplace<fst::SymbolTable>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = off_282DF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_194A88(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

uint64_t std::vector<SiriTTS::ForcedAlignment::Lexeme>::__construct_one_at_end[abi:ne200100]<SiriTTS::ForcedAlignment::Lexeme const&>(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
  }

  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  result = std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v4 + 24, *(a2 + 3), *(a2 + 4), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 4) - *(a2 + 3)) >> 3));
  *(a1 + 8) = v4 + 48;
  return result;
}

uint64_t std::vector<SiriTTS::ForcedAlignment::Lexeme>::__emplace_back_slow_path<SiriTTS::ForcedAlignment::Lexeme const&>(uint64_t *a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<SiriTTS::ForcedAlignment::Lexeme>>(a1, v6);
  }

  v7 = 48 * v2;
  v15 = 0;
  v16 = v7;
  v17 = v7;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v7, *a2, *(a2 + 1));
  }

  else
  {
    v8 = *a2;
    *(v7 + 16) = *(a2 + 2);
    *v7 = v8;
  }

  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v7 + 24, *(a2 + 3), *(a2 + 4), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 4) - *(a2 + 3)) >> 3));
  *&v17 = v17 + 48;
  v9 = a1[1];
  v10 = v16 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<SiriTTS::ForcedAlignment::Lexeme>,SiriTTS::ForcedAlignment::Lexeme*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<SiriTTS::ForcedAlignment::Lexeme>::~__split_buffer(&v15);
  return v14;
}

void sub_194CC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (*(v4 + 23) < 0)
  {
    operator delete(*v4);
  }

  std::__split_buffer<SiriTTS::ForcedAlignment::Lexeme>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_194D5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::string>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v11 = this;
  v12 = this;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
      }

      v6 = (v6 + 24);
      v12 = ++v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 1);
    v1 -= 3;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<SiriTTS::ForcedAlignment::Lexeme>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<SiriTTS::ForcedAlignment::Lexeme>,SiriTTS::ForcedAlignment::Lexeme*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      *(a4 + 16) = *(v7 + 16);
      *a4 = v8;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *v7 = 0;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + 40) = 0;
      *(a4 + 24) = *(v7 + 24);
      *(a4 + 40) = *(v7 + 40);
      *(v7 + 24) = 0;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      v7 += 48;
      a4 += 48;
    }

    while (v7 != a3);
    v13 = a4;
    v11 = 1;
    while (v5 != a3)
    {
      std::allocator<SiriTTS::ForcedAlignment::Lexeme>::destroy[abi:ne200100](a1, v5);
      v5 += 48;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<SiriTTS::ForcedAlignment::Lexeme>,SiriTTS::ForcedAlignment::Lexeme*>>::~__exception_guard_exceptions[abi:ne200100](v10);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<SiriTTS::ForcedAlignment::Lexeme>,SiriTTS::ForcedAlignment::Lexeme*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<SiriTTS::ForcedAlignment::Lexeme>,SiriTTS::ForcedAlignment::Lexeme*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<SiriTTS::ForcedAlignment::Lexeme>,SiriTTS::ForcedAlignment::Lexeme*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 48;
      std::allocator<SiriTTS::ForcedAlignment::Lexeme>::destroy[abi:ne200100](v5, v3);
    }

    while (v3 != v4);
  }
}

void **std::__split_buffer<SiriTTS::ForcedAlignment::Lexeme>::~__split_buffer(void **a1)
{
  std::__split_buffer<SiriTTS::ForcedAlignment::Lexeme>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<SiriTTS::ForcedAlignment::Lexeme>::clear[abi:ne200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 48;
    std::allocator<SiriTTS::ForcedAlignment::Lexeme>::destroy[abi:ne200100](v4, i - 48);
  }
}

void sub_195200(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::__unordered_map_hasher<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,std::__hash_value_type<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::hash<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*>,std::equal_to<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*>,true>,std::__unordered_map_equal<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,std::__hash_value_type<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::equal_to<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*>,std::hash<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*>,true>,std::allocator<std::__hash_value_type<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::~__hash_table(v2);
  if (*(v1 + 47) < 0)
  {
    operator delete(*v3);
  }

  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~ImplToFst(v1);
  _Unwind_Resume(a1);
}

void fst::FstCompiler<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, char a10, char a11, char a12)
{
  v12 = off_270E90();
  v53 = v13;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = v12;
  v12->__r_.__value_.__r.__words[2] = 0;
  v54 = v12 + 1;
  std::string::operator=(v12 + 1, v25);
  *(v24 + 48) = v21;
  *(v24 + 56) = v19;
  *(v24 + 64) = v17;
  *(v24 + 112) = 0;
  *(v24 + 116) = a10;
  *(v24 + 117) = a11;
  *(v24 + 118) = a12;
  while (1)
  {
    std::ios_base::getloc((v23 + *(*v23 - 24)));
    v26 = std::locale::use_facet(&v64, &std::ctype<char>::id);
    (v26->__vftable[2].~facet_0)(v26, 10);
    std::locale::~locale(&v64);
    v27 = std::istream::getline();
    if ((*(v27 + *(*v27 - 24) + 32) & 5) != 0)
    {
      break;
    }

    ++*(v24 + 16);
    v64.__locale_ = 0;
    locale = 0;
    v66 = 0;
    boost::filesystem::path::path(&v61, FLAGS_fst_field_separator);
    v28 = std::string::append(&v61, "\n");
    v29 = *&v28->__r_.__value_.__l.__data_;
    v63 = v28->__r_.__value_.__r.__words[2];
    *v62 = v29;
    v28->__r_.__value_.__l.__size_ = 0;
    v28->__r_.__value_.__r.__words[2] = 0;
    v28->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v61.__r_.__value_.__l.__data_);
    }

    if (v63 >= 0)
    {
      v30 = v62;
    }

    else
    {
      v30 = v62[0];
    }

    fst::SplitToVector(__s1, v30, &v64, 1);
    v31 = locale - v64.__locale_;
    if (locale != v64.__locale_ && **v64.__locale_)
    {
      if (v31 == 40)
      {
        v32 = v15;
      }

      else
      {
        v32 = 0;
      }

      if (v31 > 0x28)
      {
        v32 = 1;
      }

      if (v31 == 24)
      {
        v33 = v15;
      }

      else
      {
        v33 = 1;
      }

      if (v32 != v33)
      {
        v34 = fst::FstCompiler<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::StrToStateId(v24, *v64.__locale_);
        if (v34 >= ((*(*(v24 + 8) + 72) - *(*(v24 + 8) + 64)) >> 3))
        {
          fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::AddState(v24);
        }

        if (*(v24 + 16) == 1)
        {
          fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetStart(v24, v34);
        }

        v39 = (locale - v64.__locale_) >> 3;
        if (v39 > 2)
        {
          switch(v39)
          {
            case 3:
              v49 = fst::FstCompiler<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::StrToStateId(v24, *(v64.__locale_ + 1));
              HIDWORD(v61.__r_.__value_.__r.__words[1]) = v49;
              LODWORD(v61.__r_.__value_.__l.__data_) = fst::FstCompiler<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::StrToId(v24, *(v64.__locale_ + 2), *(v24 + 48), "arc ilabel", *(v24 + 117));
              *(v61.__r_.__value_.__r.__words + 4) = LODWORD(v61.__r_.__value_.__l.__data_);
              fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::MutateCheck(v24);
              fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::AddArc(*(v24 + 8), v34, &v61);
              v34 = v49;
              break;
            case 4:
              v50 = fst::FstCompiler<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::StrToStateId(v24, *(v64.__locale_ + 1));
              HIDWORD(v61.__r_.__value_.__r.__words[1]) = v50;
              v51 = fst::FstCompiler<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::StrToId(v24, *(v64.__locale_ + 2), *(v24 + 48), "arc ilabel", *(v24 + 117));
              LODWORD(v61.__r_.__value_.__l.__data_) = v51;
              if (v15)
              {
                HIDWORD(v61.__r_.__value_.__r.__words[0]) = v51;
                v52 = fst::FstCompiler<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::StrToWeight(v24, *(v64.__locale_ + 3), 1);
              }

              else
              {
                HIDWORD(v61.__r_.__value_.__r.__words[0]) = fst::FstCompiler<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::StrToId(v24, *(v64.__locale_ + 3), *(v24 + 56), "arc olabel", *(v24 + 117));
                v52 = 0.0;
              }

              *&v61.__r_.__value_.__r.__words[1] = v52;
              fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::MutateCheck(v24);
              fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::AddArc(*(v24 + 8), v34, &v61);
              v34 = v50;
              break;
            case 5:
              v40 = fst::FstCompiler<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::StrToStateId(v24, *(v64.__locale_ + 1));
              HIDWORD(v61.__r_.__value_.__r.__words[1]) = v40;
              LODWORD(v61.__r_.__value_.__l.__data_) = fst::FstCompiler<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::StrToId(v24, *(v64.__locale_ + 2), *(v24 + 48), "arc ilabel", *(v24 + 117));
              HIDWORD(v61.__r_.__value_.__r.__words[0]) = fst::FstCompiler<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::StrToId(v24, *(v64.__locale_ + 3), *(v24 + 56), "arc olabel", *(v24 + 117));
              LODWORD(v61.__r_.__value_.__r.__words[1]) = fst::FstCompiler<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::StrToWeight(v24, *(v64.__locale_ + 4), 1);
              fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::MutateCheck(v24);
              fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::AddArc(*(v24 + 8), v34, &v61);
              v34 = v40;
              break;
          }

          goto LABEL_55;
        }

        if (v39 == 1)
        {
          v48 = 0.0;
          fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::MutateCheck(v24);
LABEL_52:
          fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::SetFinal(*(v24 + 8), v34, v48);
        }

        else if (v39 == 2)
        {
          v48 = fst::FstCompiler<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::StrToWeight(v24, *(v64.__locale_ + 1), 1);
          fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::MutateCheck(v24);
          goto LABEL_52;
        }

LABEL_55:
        if (v34 >= ((*(*(v24 + 8) + 72) - *(*(v24 + 8) + 64)) >> 3))
        {
          fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::AddState(v24);
        }

        v35 = 0;
        goto LABEL_58;
      }

      v36 = FLAGS_fst_error_fatal;
      if (FLAGS_fst_error_fatal == 1)
      {
        boost::filesystem::path::path(v58, "FATAL");
        v37 = fst::LogMessage::LogMessage(&v60, v58);
      }

      else
      {
        boost::filesystem::path::path(__p, "ERROR");
        v37 = fst::LogMessage::LogMessage(&v57, __p);
      }

      v38 = fst::cerr(v37);
      v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "FstCompiler: Bad number of columns, source = ", 45);
      v42 = *(v24 + 47);
      if (v42 >= 0)
      {
        v43 = v54;
      }

      else
      {
        v43 = *(v24 + 24);
      }

      if (v42 >= 0)
      {
        v44 = *(v24 + 47);
      }

      else
      {
        v44 = *(v24 + 32);
      }

      v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, v43, v44);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, ", line = ", 9);
      v46 = *(v24 + 16);
      std::ostream::operator<<();
      if (v36)
      {
        fst::LogMessage::~LogMessage(&v60);
        if (v59 < 0)
        {
          v47 = v58[0];
          goto LABEL_43;
        }
      }

      else
      {
        fst::LogMessage::~LogMessage(&v57);
        if (v56 < 0)
        {
          v47 = __p[0];
LABEL_43:
          operator delete(v47);
        }
      }

      fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetProperties(v24, 4, 4);
      v35 = 1;
      goto LABEL_58;
    }

    v35 = 2;
LABEL_58:
    if (SHIBYTE(v63) < 0)
    {
      operator delete(v62[0]);
    }

    if (v64.__locale_)
    {
      locale = v64.__locale_;
      operator delete(v64.__locale_);
    }

    if ((v35 | 2) != 2)
    {
      return;
    }
  }

  if (v53)
  {
    fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::MutateCheck(v24);
    fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::SetInputSymbols(*(v24 + 8), v21);
  }

  if (a9)
  {
    fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::MutateCheck(v24);
    fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::SetOutputSymbols(*(v24 + 8), v19);
  }
}

void sub_195858(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45, std::locale a46, uint64_t a47)
{
  if (a45 < 0)
  {
    operator delete(__p);
  }

  if (a46.__locale_)
  {
    operator delete(a46.__locale_);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::FstCompiler<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::StrToStateId(uint64_t a1, char *a2)
{
  result = fst::FstCompiler<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::StrToId(a1, a2, *(a1 + 64), "state ID", 0);
  v6 = result;
  if ((*(a1 + 116) & 1) == 0)
  {
    v4 = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>((a1 + 72), &v6);
    if (v4)
    {
      return *(v4 + 5);
    }

    else
    {
      v5 = *(a1 + 112);
      v7 = &v6;
      *(std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>((a1 + 72), &v6) + 5) = v5;
      result = *(a1 + 112);
      *(a1 + 112) = result + 1;
    }
  }

  return result;
}

float fst::FstCompiler<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::StrToWeight(uint64_t a1, const char *a2, char a3)
{
  boost::filesystem::path::path(&__p, a2);
  std::istringstream::basic_istringstream[abi:ne200100](v19, &__p, 8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  fst::operator>><float,(fst::FloatWeightTplAlignmentType)1>(v19, &v23);
  if ((*(&v21[1].__locale_ + *(v19[0] - 3)) & 5) != 0 || (a3 & 1) == 0 && (*&__p.__r_.__value_.__l.__data_ = v23, v24 = 2139095040, v23 == INFINITY))
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      boost::filesystem::path::path(&__p, "FATAL");
    }

    else
    {
      boost::filesystem::path::path(&__p, "ERROR");
    }

    v6 = fst::LogMessage::LogMessage(&v24, &__p);
    v7 = fst::cerr(v6);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "FstCompiler: Bad weight = ", 27);
    v9 = strlen(a2);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, a2, v9);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ", source = ", 12);
    v12 = *(a1 + 47);
    if (v12 >= 0)
    {
      v13 = a1 + 24;
    }

    else
    {
      v13 = *(a1 + 24);
    }

    if (v12 >= 0)
    {
      v14 = *(a1 + 47);
    }

    else
    {
      v14 = *(a1 + 32);
    }

    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v13, v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, ", line = ", 9);
    v16 = *(a1 + 16);
    std::ostream::operator<<();
    fst::LogMessage::~LogMessage(&v24);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetProperties(a1, 4, 4);
    v23 = NAN;
  }

  if (v22 < 0)
  {
    operator delete(v21[7].__locale_);
  }

  std::locale::~locale(v21);
  std::istream::~istream();
  std::ios::~ios();
  return v23;
}

void sub_195C98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  fst::LogMessage::~LogMessage((v15 - 52));
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t fst::FstCompiler<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::StrToId(uint64_t a1, char *__s, uint64_t a3, const char *a4, char a5)
{
  if (!a3)
  {
    __endptr = 0;
    v10 = strtoll(__s, &__endptr, 10);
    v11 = &__s[strlen(__s)];
    if (v10 >= 0)
    {
      v12 = 1;
    }

    else
    {
      v12 = a5;
    }

    if (__endptr >= v11 && (v12 & 1) != 0)
    {
      return v10;
    }

    if (FLAGS_fst_error_fatal == 1)
    {
      boost::filesystem::path::path(__p, "FATAL");
    }

    else
    {
      boost::filesystem::path::path(__p, "ERROR");
    }

    v13 = fst::LogMessage::LogMessage(&v50, __p);
    v14 = fst::cerr(v13);
    v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "FstCompiler: Bad ", 17);
    v38 = strlen(a4);
    v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, a4, v38);
    v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, " integer = ", 12);
    v41 = strlen(__s);
    v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, __s, v41);
    v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, ", source = ", 12);
    v44 = *(a1 + 47);
    if (v44 >= 0)
    {
      v45 = a1 + 24;
    }

    else
    {
      v45 = *(a1 + 24);
    }

    if (v44 >= 0)
    {
      v46 = *(a1 + 47);
    }

    else
    {
      v46 = *(a1 + 32);
    }

    v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, v45, v46);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, ", line = ", 9);
    v48 = *(a1 + 16);
    std::ostream::operator<<();
    p_endptr = &v50;
    goto LABEL_42;
  }

  if (*(a1 + 118) == 1)
  {
    boost::filesystem::path::path(__p, __s);
    v10 = (*(*a3 + 32))(a3, __p);
    if (v53 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v10 = (*(*a3 + 104))(a3, __s);
  }

  if (v10 >= 0)
  {
    v15 = 1;
  }

  else
  {
    v15 = a5;
  }

  if (v10 == -1 || (v15 & 1) == 0)
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      boost::filesystem::path::path(__p, "FATAL");
    }

    else
    {
      boost::filesystem::path::path(__p, "ERROR");
    }

    v16 = fst::LogMessage::LogMessage(&__endptr, __p);
    v17 = fst::cerr(v16);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "FstCompiler: Symbol ", 21);
    v19 = strlen(__s);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, __s, v19);
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, " is not mapped to any integer ", 31);
    v22 = strlen(a4);
    v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, a4, v22);
    v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, ", symbol table = ", 17);
    v25 = (*(*a3 + 48))(a3);
    v26 = *(v25 + 23);
    if (v26 >= 0)
    {
      v27 = v25;
    }

    else
    {
      v27 = *v25;
    }

    if (v26 >= 0)
    {
      v28 = *(v25 + 23);
    }

    else
    {
      v28 = *(v25 + 8);
    }

    v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, v27, v28);
    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, ", source = ", 11);
    v31 = *(a1 + 47);
    if (v31 >= 0)
    {
      v32 = a1 + 24;
    }

    else
    {
      v32 = *(a1 + 24);
    }

    if (v31 >= 0)
    {
      v33 = *(a1 + 47);
    }

    else
    {
      v33 = *(a1 + 32);
    }

    v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, v32, v33);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, ", line = ", 9);
    v35 = *(a1 + 16);
    std::ostream::operator<<();
    p_endptr = &__endptr;
LABEL_42:
    fst::LogMessage::~LogMessage(p_endptr);
    if (v53 < 0)
    {
      operator delete(__p[0]);
    }

    fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetProperties(a1, 4, 4);
  }

  return v10;
}

void sub_1960CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  fst::LogMessage::~LogMessage(&a13);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t *fst::operator>><float,(fst::FloatWeightTplAlignmentType)1>(uint64_t *a1, int *a2)
{
  v16 = 0;
  v17 = 0;
  v18 = 0;
  std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, &v16);
  v4 = HIBYTE(v18);
  if ((SHIBYTE(v18) & 0x80000000) == 0)
  {
    if (HIBYTE(v18) != 8)
    {
      if (HIBYTE(v18) != 9)
      {
        goto LABEL_23;
      }

      if (v16 != 0x74696E69666E492DLL || v17 != 121)
      {
        goto LABEL_23;
      }

      goto LABEL_18;
    }

    if (v16 != 0x7974696E69666E49)
    {
LABEL_23:
      v15 = 0;
      v6 = &v16;
      goto LABEL_26;
    }

LABEL_20:
    v8 = 2139095040;
LABEL_21:
    *a2 = v8;
    if ((v4 & 0x80) == 0)
    {
      return a1;
    }

LABEL_33:
    operator delete(v16);
    return a1;
  }

  if (v17 == 8 && *v16 == 0x7974696E69666E49)
  {
    goto LABEL_20;
  }

  if (v17 == 9)
  {
    v6 = v16;
    if (*v16 == 0x74696E69666E492DLL && v16[8] == 121)
    {
LABEL_18:
      v8 = -8388608;
      goto LABEL_21;
    }
  }

  else
  {
    v6 = v16;
  }

  v15 = 0;
LABEL_26:
  v9 = strtod(v6, &v15);
  v10 = v16;
  v11 = HIBYTE(v18);
  v12 = HIBYTE(v18);
  if (v18 < 0)
  {
    v11 = v17;
  }

  else
  {
    v10 = &v16;
  }

  if (v15 >= &v10[v11])
  {
    v13 = v9;
    *a2 = v13;
    if ((v12 & 0x80) == 0)
    {
      return a1;
    }

    goto LABEL_33;
  }

  std::ios_base::clear((a1 + *(*a1 - 24)), 1u);
  if (v18 < 0)
  {
    goto LABEL_33;
  }

  return a1;
}

void sub_196504(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *SiriTTS::ForcedAlignment::AlignmentDecoder::AlignmentDecoder(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  v2 = a2[1];
  result[2] = *a2;
  result[3] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void SiriTTS::ForcedAlignment::AlignmentDecoder::decodePhoneAlignment(uint64_t a1@<X0>, uint64_t *a2@<X1>, float *a3@<X2>, uint64_t *a4@<X3>, void *a5@<X8>)
{
  v10 = *a2;
  v9 = a2[1];
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (a4[1] != *a4 && (*(*v10 + 24))(v10) != -1)
  {
    v13 = *(a1 + 16);
    __p = 0;
    v19 = 0;
    v20 = 0;
    kaldi::AddTransitionProbs(v13, &__p, v10, a3[3], a3[4], v11, v12);
    if (__p)
    {
      v19 = __p;
      operator delete(__p);
    }

    v22 = 0x147FFFFFFFLL;
    v23 = 0;
    v24 = 0x400000003F000000;
    v21 = *a3;
    kaldi::FasterDecoder::FasterDecoder(&__p, v10, &v21);
    memset(v16, 0, sizeof(v16));
    std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(v16, *a4, a4[1], 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3));
    SiriTTS::ForcedAlignment::kaldi_matrix_from_matrix(v16, v17);
    v15 = v16;
    std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&v15);
    v14 = *(a1 + 16);
    operator new();
  }

  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

void sub_196914(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
{
  *(v32 - 96) = &a9;
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100]((v32 - 96));
  if (__p)
  {
    a14 = __p;
    operator delete(__p);
  }

  if (a16)
  {
    a17 = a16;
    operator delete(a16);
  }

  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>::~ImplToFst(&a19);
  (*(*v31 + 80))(v31);
  kaldi::Matrix<float>::~Matrix(&a24);
  kaldi::FasterDecoder::~FasterDecoder(&a29, v34, v35, v36, v37);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::GetLinearSymbolSequence<fst::ArcTpl<fst::LatticeWeightTpl<float>>,int>(uint64_t a1, void **a2, void **a3, float32x2_t *a4, int a5)
{
  v29 = 0;
  v30 = 0;
  v31 = 0;
  __p = 0;
  v27 = 0;
  v28 = 0;
  v10 = (*(*a1 + 24))(a1);
  if (v10 == -1)
  {
    if (a2)
    {
      a2[1] = *a2;
    }

    if (a3)
    {
      a3[1] = *a3;
    }

    if (a4)
    {
      *a4 = vneg_f32(0x7F0000007FLL);
    }

    v17 = 1;
  }

  else
  {
    for (i = 0; ; i = vadd_f32(i, v14))
    {
      (*(*a1 + 32))(&v25, a1, v10);
      v34 = *(&v25 + 1);
      LODWORD(v22[0]) = v25;
      v33 = 2139095040;
      v32 = INFINITY;
      v12.n128_u32[0] = v25;
      if (*&v25 != INFINITY)
      {
        break;
      }

      v12.n128_f32[0] = v34;
      if (v34 != v32)
      {
        break;
      }

      if ((*(*a1 + 40))(a1, v10, v34) != 1)
      {
        goto LABEL_25;
      }

      v24 = 0;
      (*(*a1 + 136))(a1, v10, v22);
      if (v22[0])
      {
        v13 = (*(*v22[0] + 32))(v22[0]);
      }

      else
      {
        v13 = v22[1] + 20 * v24;
      }

      v14 = *(v13 + 8);
      if (*v13)
      {
        v15 = 0;
      }

      else
      {
        v15 = a5 == 0;
      }

      if (!v15)
      {
        std::vector<int>::push_back[abi:ne200100](&v29, v13);
      }

      if (*(v13 + 4))
      {
        v16 = 0;
      }

      else
      {
        v16 = a5 == 0;
      }

      if (!v16)
      {
        std::vector<int>::push_back[abi:ne200100](&__p, (v13 + 4));
      }

      v10 = *(v13 + 16);
      if (v22[0])
      {
        (*(*v22[0] + 8))(v22[0]);
      }

      else if (v23)
      {
        --*v23;
      }
    }

    v20 = HIDWORD(v25);
    v21 = v25;
    if ((*(*a1 + 40))(a1, v10, v12))
    {
LABEL_25:
      v17 = 0;
      goto LABEL_42;
    }

    if (a2 && &v29 != a2)
    {
      std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(a2, v29, v30, (v30 - v29) >> 2);
    }

    if (a3 && &__p != a3)
    {
      std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(a3, __p, v27, (v27 - __p) >> 2);
    }

    v18.i32[0] = v21;
    if (a4)
    {
      v18.i32[1] = v20;
      *a4 = vadd_f32(i, v18);
    }

    v17 = 1;
LABEL_42:
    if (__p)
    {
      v27 = __p;
      operator delete(__p);
    }
  }

  if (v29)
  {
    v30 = v29;
    operator delete(v29);
  }

  return v17;
}

void sub_196D78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a22)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::FasterDecoder::~FasterDecoder(kaldi::FasterDecoder *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *(this + 1);
  if (v6 != -1)
  {
    v7 = *(this + 3);
    do
    {
      v8 = (v7 + 16 * v6);
      v8[1] = 0;
      v6 = *v8;
    }

    while (v6 != -1);
  }

  v9 = *this;
  *this = 0;
  *(this + 1) = -1;
  kaldi::FasterDecoder::ClearToks(this, v9, a3, a4, a5);
  v10 = *(this + 17);
  if (v10)
  {
    *(this + 18) = v10;
    operator delete(v10);
  }

  v11 = *(this + 14);
  if (v11)
  {
    *(this + 15) = v11;
    operator delete(v11);
  }

  kaldi::HashList<int,kaldi::FasterDecoder::Token *,std::hash<int>,std::equal_to<int>>::~HashList(this);
}

uint64_t std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<float>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_196ED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<float>>,std::vector<float>*,std::vector<float>*,std::vector<float>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v4, *v6, v6[1], (v6[1] - *v6) >> 2);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<float>>,std::vector<float>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<float>>,std::vector<float>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<int>>,std::vector<int>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void (__cdecl ***std::ofstream::basic_ofstream(void (__cdecl ***a1)(std::ofstream *__hidden this), uint64_t *a2))(std::ofstream *__hidden this)
{
  a1[58] = 0;
  *a1 = v5;
  *(*(v5 - 3) + a1) = v4;
  v6 = (*(*a1 - 3) + a1);
  std::ios_base::init(v6, a1 + 1);
  v6[1].__vftable = 0;
  v6[1].__fmtflags_ = -1;
  std::filebuf::basic_filebuf();
  if (*(a2 + 23) < 0)
  {
    v7 = *a2;
  }

  if (!std::filebuf::open())
  {
    std::ios_base::clear((*(*a1 - 3) + a1), *(*(*a1 - 3) + a1 + 32) | 4);
  }

  return a1;
}

void sub_1971B0(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void (__cdecl ***std::ifstream::basic_ifstream(void (__cdecl ***a1)(std::ifstream *__hidden this), uint64_t *a2))(std::ifstream *__hidden this)
{
  a1[59] = 0;
  *a1 = v5;
  *(*(v5 - 3) + a1) = v4;
  a1[1] = 0;
  v6 = (*(*a1 - 3) + a1);
  std::ios_base::init(v6, a1 + 2);
  v6[1].__vftable = 0;
  v6[1].__fmtflags_ = -1;
  std::filebuf::basic_filebuf();
  if (*(a2 + 23) < 0)
  {
    v7 = *a2;
  }

  if (!std::filebuf::open())
  {
    std::ios_base::clear((*(*a1 - 3) + a1), *(*(*a1 - 3) + a1 + 32) | 4);
  }

  return a1;
}

void sub_197380(_Unwind_Exception *a1)
{
  std::istream::~istream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t utils::update_progress_bar(uint64_t result, int a2, int a3, int a4, uint64_t a5)
{
  if (!(result % (a2 / a3 + 1)))
  {
    v7 = result / a2;
    v8 = (v7 * a4);
    v9 = *(a5 + 23);
    if (v9 >= 0)
    {
      v10 = a5;
    }

    else
    {
      v10 = *a5;
    }

    if (v9 >= 0)
    {
      v11 = *(a5 + 23);
    }

    else
    {
      v11 = *(a5 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&std::cout, v10, v11);
    printf(" %3d%% [", (v7 * 100.0));
    if (v8 >= 1)
    {
      v12 = v8;
      do
      {
        putchar(61);
        --v12;
      }

      while (v12);
    }

    v13 = __OFSUB__(a4, v8);
    v14 = a4 - v8;
    if (!((v14 < 0) ^ v13 | (v14 == 0)))
    {
      do
      {
        putchar(32);
        --v14;
      }

      while (v14);
    }

    return printf("]\n\x1B[F\x1B[J");
  }

  return result;
}

char **std::__memberwise_copy_assign[abi:ne200100]<std::tuple<std::vector<float> &,std::vector<float> &>,std::tuple<std::vector<float>,std::vector<float>>,0ul,1ul>(char ***a1, char **a2)
{
  v4 = *a1;
  if (v4 != a2)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v4, *a2, a2[1], (a2[1] - *a2) >> 2);
  }

  result = a1[1];
  if (result != a2 + 3)
  {
    v6 = a2[3];
    v7 = a2[4];

    return std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(result, v6, v7, (v7 - v6) >> 2);
  }

  return result;
}

void SiriTTS::ForcedAlignment::FeatureExtractorWav::compute(uint64_t *a1@<X1>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v14 = 0;
  v15 = 0;
  v13 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(&v13, v4, v5, (v5 - v4) >> 2);
  v6 = (a1[1] - *a1) >> 2;
  v12[2] = 0;
  v12[0] = v13;
  v12[1] = v6;
  kaldi::Matrix<float>::Matrix(v11);
  kaldi::FbankOptions::FbankOptions(v9);
  v10 = 80;
  kaldi::Fbank::Fbank(v8, v9);
  kaldi::Fbank::Compute(v8, v12, v11, 0, 1.0, 0, 0);
  kaldi::Matrix<float>::Matrix(v7, v11);
  SiriTTS::ForcedAlignment::matrix_from_kaldi_matrix(v7, a2);
  kaldi::Matrix<float>::~Matrix(v7);
  kaldi::Fbank::~Fbank(v8);
  kaldi::FbankOptions::~FbankOptions(v9);
  kaldi::Matrix<float>::~Matrix(v11);
  if (v13)
  {
    v14 = v13;
    operator delete(v13);
  }
}

void sub_197624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37)
{
  kaldi::Matrix<float>::~Matrix(&a9);
  kaldi::Fbank::~Fbank(&a14);
  kaldi::FbankOptions::~FbankOptions(&a37);
  kaldi::Matrix<float>::~Matrix(v37 - 120);
  v39 = *(v37 - 56);
  if (v39)
  {
    *(v37 - 48) = v39;
    operator delete(v39);
  }

  _Unwind_Resume(a1);
}

double kaldi::FbankOptions::FbankOptions(kaldi::FbankOptions *this)
{
  *this = off_271040;
  *(this + 8) = xmmword_21FD50;
  *(this + 6) = 1064849900;
  *(this + 28) = 1;
  *(this + 55) = 5;
  strcpy(this + 32, "povey");
  *(this + 28) = 257;
  *(this + 60) = 0x17BF800000;
  *(this + 68) = xmmword_21FD60;
  *(this + 42) = 0;
  *(this + 88) = 0;
  *(this + 23) = 0;
  *&result = 16842753;
  *(this + 24) = 16842753;
  return result;
}

uint64_t std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_19776C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AutocF0::AutocF0(uint64_t a1, __int128 *a2)
{
  *(a1 + 32) = 0u;
  v3 = a1 + 32;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 128), *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(a1 + 144) = *(a2 + 2);
    *(a1 + 128) = v4;
  }

  *(a1 + 192) = xmmword_21FD80;
  *(a1 + 208) = xmmword_21FD90;
  *(a1 + 168) = xmmword_21FDA0;
  *(a1 + 152) = xmmword_21FDB0;
  *(a1 + 272) = 16000;
  *(a1 + 316) = 0x1F400001388;
  *(a1 + 224) = xmmword_21FDC0;
  *(a1 + 240) = xmmword_21FDE0;
  *(a1 + 256) = xmmword_21FDF0;
  *(a1 + 4) = 0;
  *(v3 + 252) = xmmword_21FDD0;
  *(v3 + 268) = xmmword_21FE00;
  *(a1 + 24) = 0;
  return a1;
}

void sub_197884(_Unwind_Exception *a1)
{
  v5 = v1[13];
  if (v5)
  {
    v1[14] = v5;
    operator delete(v5);
  }

  AutocF0::AutocF0(v3, v2 + 3, v2, v1);
  _Unwind_Resume(a1);
}

void AutocF0::estimate_pitch(unsigned int *a1@<X0>, uint64_t *a2@<X1>, DSP *a3@<X2>, void *a4@<X8>)
{
  clock();
  *a1 = a3;
  a1[69] = a3;
  v493 = 0uLL;
  v494 = 0;
  if (a1[6] && a1[68] != a3)
  {
    v489 = 0;
    v490 = 0;
    v488 = 0;
    std::vector<short>::__init_with_size[abi:ne200100]<short *,short *>(&v488, *a2, a2[1], (a2[1] - *a2) >> 1);
    DSP::resample(&v488, *a1, a1[68], &v491);
    if (v493)
    {
      *(&v493 + 1) = v493;
      operator delete(v493);
    }

    v493 = v491;
    v494 = v492;
    v492 = 0;
    v491 = 0uLL;
    if (v488)
    {
      v489 = v488;
      operator delete(v488);
    }

    a3 = a1[68];
    *a1 = a3;
  }

  else if (&v493 != a2)
  {
    std::vector<short>::__assign_with_size[abi:ne200100]<short *,short *>(&v493, *a2, a2[1], (a2[1] - *a2) >> 1);
    a3 = *a1;
  }

  DSP::get_highpass_70hz_coefficients(a3);
  v485 = 0;
  v483 = 0;
  v484 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v483, v491, *(&v491 + 1), (*(&v491 + 1) - v491) >> 3);
  v481 = 0;
  __p = 0;
  v482 = 0;
  std::vector<short>::__init_with_size[abi:ne200100]<short *,short *>(&__p, v493, *(&v493 + 1), (*(&v493 + 1) - v493) >> 1);
  DSP::high_pass_filter(&v483, &__p, &__dst);
  if (__p)
  {
    v481 = __p;
    operator delete(__p);
  }

  if (v483)
  {
    v484 = v483;
    operator delete(v483);
  }

  v7 = *a1;
  v8 = llround(*(a1 + 19) / 1000.0 * v7);
  v9 = __dst;
  v10 = (v487 - __dst) >> 1;
  if (v10 < v8)
  {
    v391 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&std::cerr, "Error: Signal is not long enough to be processed.", 49);
    std::endl[abi:ne200100]<char,std::char_traits<char>>(v391);
    exit(1);
  }

  v11 = *(a1 + 20);
  v12 = v8;
  if (v487 != __dst)
  {
    if (v10 <= 1)
    {
      v10 = 1;
    }

    v13 = 0.0;
    v14 = __dst;
    v15 = v10;
    do
    {
      v17 = *v14++;
      v16 = v17;
      if (v17 < 0)
      {
        v16 = -v16;
      }

      if (v13 < v16)
      {
        v13 = v16;
      }

      --v15;
    }

    while (v15);
    v18 = 32767.0 / v13 * *(a1 + 31);
    v19 = __dst;
    do
    {
      *v19 = (v18 * *v19);
      ++v19;
      --v10;
    }

    while (v10);
  }

  if (a1[6] && (v20 = a1[69], v20 < a1[68]))
  {
    v21 = v20 / 1000.0;
    v436 = powf(v21, 0.2);
    v22.f32[0] = powf(v21, 0.71429);
    v22.f32[1] = v436;
    *(a1 + 13) = vdivq_f64(*(a1 + 13), vmulq_f64(vcvtq_f64_f32(v22), xmmword_21FE10));
    v23 = v7 / 1000.0;
  }

  else
  {
    v23 = v7 / 1000.0;
    v24 = v7 / 1000.0;
    v437 = powf(v24, 0.2);
    v25.f32[0] = powf(v24, 0.71429);
    v25.f32[1] = v437;
    *(a1 + 13) = vdivq_f64(*(a1 + 13), vmulq_f64(vcvtq_f64_f32(v25), xmmword_21FE10));
  }

  v26 = a1;
  v27 = llround(v7 / *(a1 + 22));
  v28 = 1.0;
  if (*(a1 + 21) >= 1.0)
  {
    v28 = *(a1 + 21);
  }

  v29 = llround(v7 / v28);
  v30 = 2 * v8 - 1;
  if (v30 < v27)
  {
    v27 = 2 * v8 - 1;
  }

  v431 = v27;
  v417 = v29;
  if (v30 >= v29)
  {
    v31 = v29;
  }

  else
  {
    v31 = 2 * v8 - 1;
  }

  v423 = v31;
  v32 = (v23 + 4.0);
  if ((v32 & 0x80000001) == 1)
  {
    ++v32;
  }

  a1[70] = v32;
  v33 = llround(vcvtd_n_f64_s32(v8, 1uLL));
  LOWORD(v479[0]) = 0;
  std::vector<short>::insert(&__dst, v9, v33, v479);
  LOWORD(v479[0]) = 0;
  std::vector<short>::insert(&__dst, v487, v33, v479);
  v426 = llround(v11 / 1000.0 * v7);
  v419 = (v487 - __dst) >> 1;
  v34 = a1[70];
  v35 = (a1 + 14);
  v36 = (v419 / v426 - v8 / v426 + 1);
  std::vector<std::pair<int,int>>::resize(a1 + 7, v36);
  std::vector<std::pair<int,int>>::resize(a1 + 4, v36);
  std::vector<double>::vector[abi:ne200100](v479, v36);
  v477[0] = 0;
  std::vector<double>::vector[abi:ne200100](v478, v36);
  v476[0] = 0;
  std::vector<double>::vector[abi:ne200100](v477, v36);
  std::vector<double>::vector[abi:ne200100](v476, v36);
  std::vector<double>::vector[abi:ne200100](&__b, v423 + 1);
  std::vector<double>::vector[abi:ne200100](v473, v8);
  v421 = v8 / 2;
  std::vector<double>::vector[abi:ne200100](v472, v8 / 2);
  std::vector<double>::vector[abi:ne200100](&v470, v8);
  v37 = v34 + v8;
  std::vector<double>::vector[abi:ne200100](v469, v37);
  std::vector<double>::vector[abi:ne200100](&v467, v37);
  v425 = (a1 + 32);
  if (*(a1 + 151) < 0)
  {
    v40 = *(a1 + 17);
    v38 = 0.0;
    if (v40 != 4)
    {
      if (v40 != 5)
      {
        goto LABEL_57;
      }

      v39 = *v425;
      goto LABEL_46;
    }

    v46 = *v425;
LABEL_54:
    if (*v46 != 812016481)
    {
      goto LABEL_57;
    }

    v44 = 64;
    v45 = 48;
    goto LABEL_56;
  }

  v38 = 0.0;
  if (*(a1 + 151) == 4)
  {
    v46 = a1 + 32;
    goto LABEL_54;
  }

  v39 = a1 + 32;
  if (*(a1 + 151) != 5)
  {
    goto LABEL_57;
  }

LABEL_46:
  v41 = *v39;
  v42 = *(v39 + 4);
  if (v41 == 1718182249 && v42 == 48)
  {
    v44 = 66;
    v45 = 50;
LABEL_56:
    *(a1 + 23) = *&a1[v45];
    v38 = *&a1[v44];
  }

LABEL_57:
  DSP::window_blackman(v12, v466);
  if (a1[76])
  {
    v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&std::cout, "Stage 1: Start frame-wise processing", 36);
    std::ios_base::getloc((v47 + *(*v47 - 24)));
    v48 = std::locale::use_facet(v463, &std::ctype<char>::id);
    (v48->__vftable[2].~facet_0)(v48, 10);
    std::locale::~locale(v463);
    std::ostream::put();
    std::ostream::flush();
  }

  v394 = v38;
  v397 = 2 * v12;
  v399 = (a1 + 14);
  v435 = v34;
  if (v419 > v12)
  {
    v403 = v419 / v426 - v12 / v426 + 1;
    v49 = 0;
    v50 = 0;
    v408 = 0;
    v51 = v12 + 3;
    if (v12 >= 0)
    {
      v51 = v12;
    }

    v52 = v421;
    v411 = v12 + 1;
    v438 = 8 * v431;
    v35 = 8 * v423 + 8;
    v400 = 8 * v34;
    if (v431 <= v423)
    {
      v53 = v423;
    }

    else
    {
      v53 = v431;
    }

    __len = v34 + v12;
    v405 = v12;
    v406 = v37;
    v54 = 2 * v12;
    v55 = v421 + (v51 >> 2);
    v56 = -v34;
    v393 = v12 - 1;
    v416 = v12 - v431;
    v414 = v53 - v431 + 1;
    v401 = v51 >> 2;
    v433 = v51 >> 2;
    while (1)
    {
      if (v26[76] == 1 && v26[77] == 1 && v26[79] < v403)
      {
        v57 = v26[80];
        v58 = v26[78];
        boost::filesystem::path::path(v464, "Progress of stage 1/2: ");
        utils::update_progress_bar(v50, v403, v57, v58, v464);
        if (v465 < 0)
        {
          operator delete(v464[0]);
        }
      }

      *(*(v26 + 4) + 8 * v50) = v49 / *v26;
      if (v12)
      {
        v59 = 2 * v55 - 2 * v433;
        v60 = v54 - 2 * v49;
        v61 = __dst;
        v62 = v473[0];
        v63 = (__dst + 2 * v49);
        do
        {
          v64 = *v63++;
          *v62++ = v64;
          v60 -= 2;
        }

        while (v60);
        if (v411 >= 3)
        {
          v65 = &v61[2 * v49 + 2 * v401];
          v66 = v472[0];
          do
          {
            v67 = *v65;
            v65 += 2;
            *v66++ = v67;
            v59 -= 2;
          }

          while (v59);
        }
      }

      cblas_ddot_NEWLAPACK();
      v69 = v68;
      v70 = sqrt(v68 / v52);
      *(v476[0] + v50) = v70;
      v71 = DSP::gradient_index(v472);
      v72 = v477[0];
      *(v477[0] + v50) = v71 * 0.5 / v70;
      if (v69 == 0.0)
      {
        v72[v50] = *(v26 + 27) + *(v26 + 27);
      }

      v73 = DSP::zero_crossing_rate_plus_zero(v472);
      *(v478[0] + v50) = v73 / v52;
      if (v49 - v435 < 1)
      {
        v78 = v469[0];
        if (v435 >= 1)
        {
          bzero(v469[0], v400);
        }

        if (v12 >= 1)
        {
          v79 = v473[0];
          v80 = &v78[8 * v435];
          v81 = v405;
          do
          {
            v82 = *v79++;
            *v80 = v82;
            v80 += 8;
            --v81;
          }

          while (v81);
        }
      }

      else if (__len >= 1)
      {
        v74 = v469[0];
        v75 = (__dst + 2 * v56);
        v76 = v406;
        do
        {
          v77 = *v75++;
          *v74++ = v77;
          --v76;
        }

        while (v76);
      }

      if (*(v26 + 151) < 0)
      {
        v84 = *(v26 + 17);
        if (v84 != 4)
        {
          if (v84 != 5)
          {
            goto LABEL_123;
          }

          v83 = *v425;
LABEL_96:
          v85 = *v83;
          v86 = *(v83 + 4);
          if (v85 == 1718182249 && v86 == 48)
          {
            DSP::IAIF(v473, v469, v466, v26[70], v463, *(v26 + 30));
            v73 = v470;
            if (v470)
            {
              *(&v470 + 1) = v470;
              operator delete(v470);
            }

            v470 = *&v463[0].__locale_;
            locale = v463[2].__locale_;
          }

          goto LABEL_123;
        }

        v88 = *v425;
      }

      else
      {
        if (*(v26 + 151) != 4)
        {
          v83 = v425;
          if (*(v26 + 151) != 5)
          {
            goto LABEL_123;
          }

          goto LABEL_96;
        }

        v88 = v425;
      }

      if (*v88 == 812016481)
      {
        if (v12 >= 1)
        {
          v89 = v473[0];
          v90 = v466[0];
          v91 = v405;
          do
          {
            v92 = *v90++;
            *v89 = *v89 * v92;
            ++v89;
            --v91;
          }

          while (v91);
        }

        DSP::LP(v473, v26[70], v463);
        if (v408)
        {
          operator delete(v408);
        }

        v461 = 0;
        v462 = 0;
        v460 = 0;
        v408 = v463[0].__locale_;
        std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v460, v463[0].__locale_, v463[1].__locale_, (v463[1].__locale_ - v463[0].__locale_) >> 3);
        DSP::firfilter(&v460, v469, v463);
        if (v467)
        {
          *(&v467 + 1) = v467;
          operator delete(v467);
        }

        v467 = *&v463[0].__locale_;
        v468 = v463[2].__locale_;
        memset(v463, 0, sizeof(v463));
        if (v460)
        {
          v461 = v460;
          operator delete(v460);
        }

        if (v12 >= 1)
        {
          v93 = v470;
          v94 = (v467 + 8 * v435);
          v95 = v405;
          do
          {
            v96 = *v94++;
            *v93++ = v96;
            --v95;
          }

          while (v95);
        }

        DSP::remove_mean(&v470);
        if (v12 >= 2)
        {
          v97 = (v470 + 8);
          v98 = *v470;
          v99 = v393;
          do
          {
            v98 = *v97 + v98 * 0.95;
            *v97++ = v98;
            --v99;
          }

          while (v99);
        }

        v73 = DSP::remove_mean(&v470);
      }

LABEL_123:
      v427 = v50;
      v100 = v56;
      v429 = v49;
      v101 = v55;
      v102 = v54;
      v103 = v35;
      v104 = v12;
      v105 = v26;
      v106 = __b;
      if (v475 - __b >= 1)
      {
        memset_pattern16(__b, &unk_21FE20, v475 - __b);
      }

      v107 = v414;
      v108 = 8 * v431;
      v109 = v416;
      if (v431 <= v417)
      {
        do
        {
          v73 = cblas_ddot_NEWLAPACK();
          v106 = __b;
          *(__b + v108) = v110;
          --v109;
          v108 += 8;
          --v107;
        }

        while (v107);
      }

      v111 = &v106[v438];
      v35 = v103;
      if (v438 == v103)
      {
        v26 = v105;
        v12 = v104;
        v114 = v102;
      }

      else
      {
        v112 = &v106[v103];
        v113 = v111 + 1;
        v26 = v105;
        v114 = v102;
        if (v111 + 1 != &v106[v35])
        {
          v115 = *v111;
          v116 = v111 + 1;
          v12 = v104;
          v117 = v100;
          do
          {
            v118 = *v116++;
            v119 = v118;
            if (v115 < v118)
            {
              v115 = v119;
              v111 = v113;
            }

            v113 = v116;
          }

          while (v116 != v112);
          v120 = v101;
          goto LABEL_137;
        }

        v12 = v104;
      }

      v120 = v101;
      v117 = v100;
LABEL_137:
      AutocF0::remove_false_flanks(v73, &__b, (v111 - v106) >> 3, v431, v423);
      v121 = (__b + v438);
      if (v438 != v35)
      {
        v122 = v121 + 1;
        if (v121 + 1 != (__b + v35))
        {
          v123 = *v121;
          v124 = v121 + 1;
          do
          {
            v125 = *v124++;
            v126 = v125;
            if (v123 < v125)
            {
              v123 = v126;
              v121 = v122;
            }

            v122 = v124;
          }

          while (v124 != (__b + v35));
        }
      }

      v127 = ((v121 - __b) >> 3);
      if (v127 == v431 || v121 - __b == -8 || v127 == v423)
      {
        v127 = INFINITY;
      }

      *(*(v26 + 7) + 8 * v427) = *v26 / v127;
      v50 = v427 + 1;
      v49 = v429 + v426;
      v54 = v114 + 2 * v426;
      v55 = v120 + v426;
      v433 += v426;
      v56 = v117 + v426;
      if (v419 <= v12 + (v427 + 1) * v426)
      {
        goto LABEL_155;
      }
    }
  }

  v408 = 0;
LABEL_155:
  DSP::medfilt(v399, 5u, v463);
  v130 = *v399;
  if (*v399)
  {
    *(v26 + 8) = v130;
    operator delete(v130);
    *v399 = 0;
    v399[1] = 0;
    v399[2] = 0;
  }

  v131 = v463[0].__locale_;
  *(v26 + 7) = v463[0];
  v132 = v463[1].__locale_;
  *(v26 + 4) = *&v463[1].__locale_;
  if (v132 != v131)
  {
    v133 = (v132 - v131) >> 3;
    v134 = v476[0];
    v135 = v478[0];
    v136 = v477[0];
    if (v133 <= 1)
    {
      v133 = 1;
    }

    do
    {
      if (*v134 < *(v26 + 23))
      {
        *v131 = 0;
      }

      if (*v135 > *(v26 + 26))
      {
        *v131 = 0;
      }

      if (*v136 > *(v26 + 27))
      {
        *v131 = 0;
      }

      v131 = (v131 + 8);
      ++v136;
      ++v135;
      ++v134;
      --v133;
    }

    while (v133);
  }

  DSP::medfilt(v399, 5u, v463);
  v137 = *v399;
  if (*v399)
  {
    *(v26 + 8) = v137;
    operator delete(v137);
    *v399 = 0;
    v399[1] = 0;
    v399[2] = 0;
  }

  v138 = v463[0].__locale_;
  *(v26 + 7) = v463[0];
  v139 = v463[1].__locale_;
  *(v26 + 4) = *&v463[1].__locale_;
  memset(v463, 0, sizeof(v463));
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(v463, v138, v139, (v139 - v138) >> 3);
  std::__sort<std::__less<double,double> &,double *>();
  v140 = (v463[1].__locale_ - v463[0].__locale_) >> 3;
  if (v463[1].__locale_ == v463[0].__locale_)
  {
    v141 = 0;
    v145 = 1;
    v146 = 0.0;
  }

  else
  {
    if (v140 <= 1)
    {
      v141 = 1;
    }

    else
    {
      v141 = (v463[1].__locale_ - v463[0].__locale_) >> 3;
    }

    if (*v463[0].__locale_ == 0.0)
    {
      v142 = 1;
      while (1)
      {
        v143 = v142;
        if (v141 == v142)
        {
          break;
        }

        v144 = *(v463[0].__locale_ + v142++);
        if (v144 != 0.0)
        {
          v141 = v143;
          break;
        }
      }

      v145 = v140 <= v143;
    }

    else
    {
      v141 = 0;
      v145 = 0;
    }

    v146 = v141;
  }

  v147 = llround(v146 + vcvtd_n_f64_u64(v140 - v141, 1uLL));
  v148 = ((v463[1].__locale_ - v463[0].__locale_) >> 3) - 1;
  if (v148 >= v147)
  {
    v148 = v147;
  }

  v149 = *(v463[0].__locale_ + v148);
  v150 = 500.0;
  v151 = 50.0;
  if (!v145 && v149 > 0.0)
  {
    v150 = v394 * v149;
    v152 = v149;
    v151 = powf(v152, 1.1) / 5.0;
  }

  *(v26 + 21) = v151;
  *(v26 + 22) = v150;
  v153 = *v26;
  v154 = llround(v153 / v151);
  v155 = v397;
  if (v397 >= v154)
  {
    v155 = v154;
  }

  if (v155 <= v421)
  {
    v155 = v421;
  }

  if (v155 <= v154 + 1)
  {
    v156 = (v154 + 1);
  }

  else
  {
    v156 = v155;
  }

  LODWORD(v35) = llround(vcvtd_n_f64_s32(v156 - v12, 1uLL));
  if (v35 < 1)
  {
    v157 = v487;
    if ((v35 & 0x80000000) != 0)
    {
      v158 = v156;
      v159 = v26;
      v160 = __dst;
      v161 = 2 * v35;
      v162 = -2 * v35;
      v163 = v487 + v161 - __dst;
      if (v487 != __dst - v161)
      {
        memmove(__dst, __dst - v161, v487 + v161 - __dst);
      }

      v487 = &v163[v160];
      v164 = &v163[v160 + v161];
      v165 = (v487 - &v164[v162]);
      if (v487 != &v164[v162])
      {
        memmove(v164, &v164[v162], v487 - &v164[v162]);
      }

      v157 = &v165[v164];
      v487 = &v165[v164];
      v26 = v159;
      v156 = v158;
    }
  }

  else
  {
    LOWORD(v458) = 0;
    std::vector<short>::insert(&__dst, __dst, v35, &v458);
    LOWORD(v458) = 0;
    std::vector<short>::insert(&__dst, v487, v35, &v458);
    v157 = v487;
  }

  v166 = __dst;
  if (v26[76] == 1)
  {
    v167 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&std::cout, "Re-estimating f0 limits and frame size:", 39);
    std::ios_base::getloc((v167 + *(*v167 - 24)));
    v168 = std::locale::use_facet(&v458, &std::ctype<char>::id);
    (v168->__vftable[2].~facet_0)(v168, 10);
    std::locale::~locale(&v458);
    std::ostream::put();
    std::ostream::flush();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&std::cout, "    new f0min: ", 15);
    v169 = *(v26 + 21);
    v170 = std::ostream::operator<<();
    v171 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v170, " Hz", 3);
    std::ios_base::getloc((v171 + *(*v171 - 24)));
    v172 = std::locale::use_facet(&v458, &std::ctype<char>::id);
    (v172->__vftable[2].~facet_0)(v172, 10);
    std::locale::~locale(&v458);
    std::ostream::put();
    std::ostream::flush();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&std::cout, "    new f0max: ", 15);
    v173 = *(v26 + 22);
    v174 = std::ostream::operator<<();
    v175 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v174, " Hz", 3);
    std::ios_base::getloc((v175 + *(*v175 - 24)));
    v176 = std::locale::use_facet(&v458, &std::ctype<char>::id);
    (v176->__vftable[2].~facet_0)(v176, 10);
    std::locale::~locale(&v458);
    std::ostream::put();
    std::ostream::flush();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&std::cout, "    new frame size: ", 20);
    v177 = *v26;
    v178 = std::ostream::operator<<();
    v179 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v178, " ms", 3);
    std::ios_base::getloc((v179 + *(*v179 - 24)));
    v180 = std::locale::use_facet(&v458, &std::ctype<char>::id);
    (v180->__vftable[2].~facet_0)(v180, 10);
    std::locale::~locale(&v458);
    std::ostream::put();
    std::ostream::flush();
  }

  v422 = (v157 - v166) >> 1;
  v398 = v422 / v426 - v156 / v426;
  v181 = (v398 + 1);
  std::vector<std::pair<int,int>>::resize(v399, v181);
  std::vector<std::pair<int,int>>::resize(v479, v181);
  std::vector<std::pair<int,int>>::resize(v26 + 4, v181);
  std::vector<std::pair<int,int>>::resize(v478, v181);
  std::vector<std::pair<int,int>>::resize(v476, v181);
  std::vector<std::pair<int,int>>::resize(v477, v181);
  std::vector<std::pair<int,int>>::resize(v26 + 10, v181);
  std::vector<std::pair<int,int>>::resize(v26 + 13, v181);
  v182 = llround(v153 / v150);
  v183 = 2 * v156 - 1;
  if (v183 >= v182)
  {
    v184 = v182;
  }

  else
  {
    v184 = v183;
  }

  if (v183 >= v154)
  {
    v185 = v154;
  }

  else
  {
    v185 = 2 * v156 - 1;
  }

  v418 = v185;
  v186 = v185 + 1;
  std::vector<std::pair<int,int>>::resize(&__b, v185 + 1);
  v187 = v156;
  std::vector<std::pair<int,int>>::resize(v473, v156);
  v420 = v156 / 2;
  std::vector<std::pair<int,int>>::resize(v472, v156 / 2);
  std::vector<std::pair<int,int>>::resize(&v470, v156);
  v413 = v156 + v435;
  std::vector<std::pair<int,int>>::resize(v469, v413);
  std::vector<std::pair<int,int>>::resize(&v467, v413);
  DSP::window_blackman(v156, &v458);
  v188 = v466[0];
  if (v466[0])
  {
    v466[1] = v466[0];
    operator delete(v466[0]);
  }

  *v466 = v458;
  v466[2] = v459;
  if (v156 > ((v487 - __dst) >> 1))
  {
    v392 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&std::cerr, "Error: Signal is not long enough to be processed.", 49);
    std::endl[abi:ne200100]<char,std::char_traits<char>>(v392);
    exit(1);
  }

  if (v26[76])
  {
    v189 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&std::cout, "Stage 2: Re-estimate f0 from resized frames with new limits", 59);
    std::ios_base::getloc((v189 + *(*v189 - 24)));
    v190 = std::locale::use_facet(&v458, &std::ctype<char>::id);
    (v190->__vftable[2].~facet_0)(v190, 10);
    std::locale::~locale(&v458);
    std::ostream::put();
    v188 = std::ostream::flush();
  }

  v407 = (v398 + 1);
  if (v422 > v156)
  {
    v415 = v149;
    v191 = 0;
    v192 = 0;
    v412 = v156 + 1;
    v193 = v420;
    v194 = v184;
    v195 = v418;
    v402 = v186;
    v196 = v184;
    v439 = 8 * v418 + 8;
    __lena = 8 * v184 - 8;
    v434 = 2 * v156;
    v432 = v420 + v156 / 4;
    v428 = -v435;
    v395 = (v156 - 1);
    v404 = v156 / 4;
    v430 = v156 / 4;
    v197 = 8 * v184;
    do
    {
      if (v26[76] == 1 && v26[77] == 1 && v26[79] < v407)
      {
        v198 = v26[80];
        v199 = v26[78];
        boost::filesystem::path::path(v456, "Progress of stage 2/2: ");
        utils::update_progress_bar(v192, v407, v198, v199, v456);
        if (v457 < 0)
        {
          operator delete(v456[0]);
        }
      }

      *(*(v26 + 4) + 8 * v192) = (v191 / *v26);
      if (v156)
      {
        v200 = 2 * v432 - 2 * v430;
        v201 = v434 - 2 * v191;
        v202 = __dst;
        v203 = v473[0];
        v204 = (__dst + 2 * v191);
        do
        {
          v205 = *v204++;
          *v203++ = v205;
          v201 -= 2;
        }

        while (v201);
        if (v412 >= 3)
        {
          v206 = &v202[2 * v191 + 2 * v404];
          v207 = v472[0];
          do
          {
            v208 = *v206;
            v206 += 2;
            *v207++ = v208;
            v200 -= 2;
          }

          while (v200);
        }
      }

      cblas_ddot_NEWLAPACK();
      v210 = v209;
      *(v476[0] + v192) = sqrt(v209 / v420);
      v211 = DSP::gradient_index(v472);
      v212 = v477[0];
      *(v477[0] + v192) = v211 * 0.5 / sqrt(v210 / v193);
      if (v210 == 0.0)
      {
        v212[v192] = *(v26 + 27) + *(v26 + 27);
      }

      v213 = DSP::zero_crossing_rate_plus_zero(v472);
      *(v478[0] + v192) = v213 / v193;
      if (v191 - v435 < 1)
      {
        v218 = v469[0];
        if (v435 >= 1)
        {
          bzero(v469[0], 8 * v435);
        }

        if (v156 >= 1)
        {
          v219 = v473[0];
          v220 = &v218[8 * v435];
          v221 = v156;
          do
          {
            v222 = *v219++;
            *v220 = v222;
            v220 += 8;
            --v221;
          }

          while (v221);
        }
      }

      else if (v413 >= 1)
      {
        v214 = v469[0];
        v215 = (__dst + 2 * v428);
        v216 = v413;
        do
        {
          v217 = *v215++;
          *v214++ = v217;
          --v216;
        }

        while (v216);
      }

      if (*(v26 + 151) < 0)
      {
        v224 = *(v26 + 17);
        if (v224 == 4)
        {
          v228 = *v425;
LABEL_257:
          if (*v228 == 812016481)
          {
            if (v156 >= 1)
            {
              v229 = v473[0];
              v230 = v466[0];
              v231 = v156;
              do
              {
                v232 = *v230++;
                *v229 = *v229 * v232;
                ++v229;
                --v231;
              }

              while (v231);
            }

            DSP::LP(v473, v26[70], &v458);
            if (v408)
            {
              operator delete(v408);
            }

            v454 = 0;
            v455 = 0;
            v453 = 0;
            v408 = v458;
            std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v453, v458, *(&v458 + 1), (*(&v458 + 1) - v458) >> 3);
            DSP::firfilter(&v453, v469, &v458);
            if (v467)
            {
              *(&v467 + 1) = v467;
              operator delete(v467);
            }

            v467 = v458;
            v468 = v459;
            v459 = 0;
            v458 = 0uLL;
            if (v453)
            {
              v454 = v453;
              operator delete(v453);
            }

            if (v156 >= 1)
            {
              v233 = v470;
              v234 = (v467 + 8 * v435);
              v235 = v156;
              do
              {
                v236 = *v234++;
                *v233++ = v236;
                --v235;
              }

              while (v235);
            }

            DSP::remove_mean(&v470);
            if (v156 >= 2)
            {
              v237 = (v470 + 8);
              v238 = *v470;
              v239 = v395;
              do
              {
                v238 = *v237 + v238 * 0.95;
                *v237++ = v238;
                --v239;
              }

              while (v239);
            }

            DSP::remove_mean(&v470);
          }

          goto LABEL_274;
        }

        if (v224 == 5)
        {
          v223 = *v425;
LABEL_247:
          v225 = *v223;
          v226 = *(v223 + 4);
          if (v225 == 1718182249 && v226 == 48)
          {
            DSP::IAIF(v473, v469, v466, v26[70], &v458, *(v26 + 30));
            if (v470)
            {
              *(&v470 + 1) = v470;
              operator delete(v470);
            }

            v470 = v458;
            locale = v459;
          }
        }
      }

      else
      {
        if (*(v26 + 151) == 4)
        {
          v228 = v425;
          goto LABEL_257;
        }

        v223 = v425;
        if (*(v26 + 151) == 5)
        {
          goto LABEL_247;
        }
      }

LABEL_274:
      v240 = v475;
      v241 = __b;
      if (v475 == __b)
      {
        v254 = (v475 - __b) >> 3;
      }

      else
      {
        v424 = v192;
        v242 = v26;
        v243 = v191;
        v244 = v197;
        v245 = v196;
        v246 = v187;
        v247 = v184;
        v248 = 0;
        v249 = v156;
        v250 = 0;
        v251 = v249;
        v252 = v249;
        do
        {
          cblas_ddot_NEWLAPACK();
          v241 = __b;
          *(__b + v248) = v253;
          ++v250;
          v240 = v475;
          v254 = (v475 - v241) >> 3;
          --v252;
          v248 += 8;
        }

        while (v254 > v250);
        v156 = v251;
        v184 = v247;
        v187 = v246;
        v196 = v245;
        v197 = v244;
        v191 = v243;
        v26 = v242;
        v192 = v424;
      }

      v458 = 0uLL;
      v459 = 0;
      v255 = std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v458, v241, v240, v254);
      v256 = __b;
      if (v184 >= 2)
      {
        memset_pattern16(__b, &unk_21FE20, __lena);
      }

      v257 = &v256[v439];
      v258 = v475 - &v256[v439];
      if (v258 >= 1)
      {
        memset_pattern16(&v256[v439], &unk_21FE20, v258);
      }

      v259 = &v256[v197];
      if (v197 != v439)
      {
        v260 = v259 + 1;
        if (v259 + 1 != v257)
        {
          v261 = *v259;
          v262 = v259 + 1;
          do
          {
            v263 = *v262++;
            v264 = v263;
            if (v261 < v263)
            {
              v261 = v264;
              v259 = v260;
            }

            v260 = v262;
          }

          while (v262 != v257);
        }
      }

      AutocF0::remove_false_flanks(v255, &__b, (v259 - v256) >> 3, v184, v418);
      v265 = __b;
      v266 = (__b + v197);
      v267 = (__b + v439);
      v268 = (__b + v197 + 8);
      v269 = v197 == v439 || v268 == v267;
      v270 = v269;
      v271 = (__b + v197);
      if (!v269)
      {
        v272 = *v266;
        v273 = (__b + v197 + 8);
        v271 = (__b + v197);
        v274 = v273;
        do
        {
          v275 = *v274++;
          v276 = v275;
          if (v272 < v275)
          {
            v272 = v276;
            v271 = v273;
          }

          v273 = v274;
        }

        while (v274 != v267);
      }

      v277 = v271 - __b;
      v278 = (v277 >> 3);
      if (v278 == v194 || v277 == -8 || v278 == v195)
      {
        v278 = INFINITY;
      }

      if (fabs(v278) != INFINITY)
      {
        v281 = *(__b + (v278 + -1.0));
        if (fabs(v281) != INFINITY)
        {
          v282 = *(__b + (v278 + 1.0));
          if (fabs(v282) != INFINITY)
          {
            v283 = (*(__b + v278) - v281 - (*(__b + v278) - v282)) / (*(__b + v278) - v281 + *(__b + v278) - v282);
            if (fabs(v283 / v278) < 1.0)
            {
              v284 = v278 + v283 * 0.5;
              if (v284 < v195 && v284 > v194)
              {
                v278 = v284;
              }
            }
          }
        }
      }

      v286 = fabs(v278);
      if (v286 != INFINITY)
      {
        v287 = llround(v278);
        v288 = (v475 - __b) >> 3;
        if (v288 > v287 + 1)
        {
          v289 = v287;
          v290 = (__b + 8 * v287);
          v291 = ~v289 + v288;
          do
          {
            if (*v290 <= v290[1])
            {
              break;
            }

            *v290++ = -INFINITY;
            --v291;
          }

          while (v291);
        }

        v292 = llround(v278 + -1.0);
        if (v184 < v292)
        {
          v293 = v292;
          v294 = &v265[8 * v292];
          v295 = *v294;
          do
          {
            v296 = v295;
            v295 = *(v294 - 1);
            if (v296 <= v295)
            {
              break;
            }

            --v293;
            *v294-- = -INFINITY;
          }

          while (v293 > v196);
        }
      }

      if ((v270 & 1) == 0)
      {
        v297 = *v266;
        v298 = v268;
        do
        {
          v299 = *v298++;
          v300 = v299;
          if (v297 < v299)
          {
            v297 = v300;
            v266 = v268;
          }

          v268 = v298;
        }

        while (v298 != v267);
      }

      v301 = v266 - v265;
      v302 = (v301 >> 3);
      if (v302 == v194 || v301 == -8 || v302 == v195)
      {
        v302 = INFINITY;
      }

      if (fabs(v302) != INFINITY)
      {
        v305 = *&v265[8 * (v302 + -1.0)];
        if (fabs(v305) != INFINITY)
        {
          v306 = *&v265[8 * (v302 + 1.0)];
          if (fabs(v306) != INFINITY)
          {
            v307 = (*&v265[8 * v302] - v305 - (*&v265[8 * v302] - v306)) / (*&v265[8 * v302] - v305 + *&v265[8 * v302] - v306);
            if (fabs(v307 / v302) < 1.0)
            {
              v308 = v302 + v307 * 0.5;
              if (v308 < v195 && v308 > v194)
              {
                v302 = v308;
              }
            }
          }
        }
      }

      v310 = *v26;
      *(*(v26 + 7) + 8 * v192) = v310 / v278;
      *(v479[0] + v192) = v310 / v302;
      *(*(v26 + 10) + 8 * v192) = v310 / v278;
      v450 = 0;
      v451 = 0;
      v452 = 0;
      std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v450, v458, *(&v458 + 1), (*(&v458 + 1) - v458) >> 3);
      if (v286 == INFINITY && v26[74] >= 1)
      {
        memset(__src, 0, sizeof(__src));
        std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(__src, v450, v451, (v451 - v450) >> 3);
        v311 = v450;
        v312 = v26[75];
        v313 = (v451 - v450) >> 3;
        if (v451 != v450)
        {
          v314 = 0;
          v315 = -v312;
          if (v313 <= 1)
          {
            v316 = 1;
          }

          else
          {
            v316 = (v451 - v450) >> 3;
          }

          do
          {
            if ((v312 & 0x80000000) != 0)
            {
              v321 = NAN;
            }

            else
            {
              v317 = 0.0;
              v318 = v315;
              v319 = (2 * v312) | 1;
              v320 = 0.0;
              do
              {
                if ((v318 & 0x80000000) == 0 && v313 > v318)
                {
                  v320 = v320 + *(__src[0] + v318);
                  v317 = v317 + 1.0;
                }

                ++v318;
                --v319;
              }

              while (v319);
              v321 = v320 / v317;
            }

            v311[v314] = v311[v314] - v321;
            ++v314;
            ++v315;
          }

          while (v314 != v316);
        }

        v322 = fmax(v194, v312);
        v323 = &v311[v322];
        v324 = fmin(v402, (v313 - v312));
        v325 = &v311[v324];
        v326 = &v311[v322 + 1];
        if (v322 != v324 && v326 != v325)
        {
          v328 = *v323;
          v329 = v323 + 1;
          do
          {
            v330 = *v329++;
            v331 = v330;
            if (v328 < v330)
            {
              v328 = v331;
              v323 = v326;
            }

            v326 = v329;
          }

          while (v329 != v325);
        }

        if (__src[0])
        {
          __src[1] = __src[0];
          operator delete(__src[0]);
        }

        v278 = (v323 - v311);
      }

      v332 = v26[75];
      v333 = v450;
      if (v278 == fmax(v194, v332) || ((v334 = fmin(v195, (((v451 - v450) >> 3) - v332)), v278 != -1.0) ? (v335 = v278 == v334) : (v335 = 1), v335))
      {
        v337 = *v26;
        v278 = v337 / v415;
      }

      else
      {
        v337 = *v26;
      }

      *(*(v26 + 10) + 8 * v192) = v337 / v278;
      v336 = v458;
      *(*(v26 + 13) + 8 * v192) = fmax(*(v458 + 8 * v278) / *v458, 0.0);
      if (!v333 || (v451 = v333, operator delete(v333), (v336 = v458) != 0))
      {
        *(&v458 + 1) = v336;
        operator delete(v336);
      }

      ++v192;
      v191 += v426;
      v434 += 2 * v426;
      v432 += v426;
      v430 += v426;
      v428 += v426;
    }

    while (v422 > v187 + v192 * v426);
  }

  AutocF0::voiced_unvoiced_decision(*(v26 + 23), *(v26 + 26), *(v26 + 27), v188, v399, v476, v478, v477, 0);
  DSP::medfilt(v399, 5u, &v458);
  v338 = *v399;
  if (*v399)
  {
    *(v26 + 8) = v338;
    operator delete(v338);
    *v399 = 0;
    v399[1] = 0;
    v399[2] = 0;
  }

  *(v26 + 14) = v458;
  *(v26 + 9) = v459;
  DSP::medfilt(v26 + 10, 5u, &v458);
  v339 = *(v26 + 10);
  if (v339)
  {
    *(v26 + 11) = v339;
    operator delete(v339);
    *(v26 + 10) = 0;
    *(v26 + 11) = 0;
    *(v26 + 12) = 0;
  }

  *(v26 + 5) = v458;
  *(v26 + 12) = v459;
  DSP::medfilt(v26 + 13, 5u, &v458);
  v340 = *(v26 + 13);
  if (v340)
  {
    *(v26 + 14) = v340;
    operator delete(v340);
    *(v26 + 13) = 0;
    *(v26 + 14) = 0;
    *(v26 + 15) = 0;
  }

  *(v26 + 26) = v458;
  *(v26 + 15) = v459;
  v341 = v26[73];
  std::vector<double>::vector[abi:ne200100](&v458, 2 * v341);
  v342 = *(v26 + 28);
  v450 = 0;
  v451 = 0;
  v452 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v450, *(v26 + 7), *(v26 + 8), (*(v26 + 8) - *(v26 + 7)) >> 3);
  if (v398 <= 0x7FFFFFFE)
  {
    v343 = 0;
    v344 = -v341;
    do
    {
      v345 = *v399;
      if (*(*v399 + 8 * v343) == 0.0 && *(v479[0] + v343) > 0.0)
      {
        v346 = v458;
        if ((*(&v458 + 1) - v458) >= 1)
        {
          bzero(v458, *(&v458 + 1) - v458);
        }

        v347 = (*(v26 + 8) - v345) >> 3;
        if (v341 + v343 >= v347)
        {
          v347 = v347;
        }

        else
        {
          v347 = (v341 + v343);
        }

        if (((v343 - v341) & ~((v343 - v341) >> 31)) < v347)
        {
          v348 = v344 & ~(v344 >> 31);
          v349 = v346;
          do
          {
            *v349++ = *(v345 + 8 * v348++);
          }

          while (v348 < v347);
        }

        std::__sort<std::__less<double,double> &,double *>();
        v350 = (*(&v458 + 1) - v458) >> 3;
        if (*v458 == 0.0)
        {
          v351 = 0;
          v352 = ((*(&v458 + 1) - v458) >> 3) - 1;
          while (v350 - 1 != v351)
          {
            v353 = v351 + 1;
            v354 = *(v458 + 8 + 8 * v351++);
            if (v354 != 0.0)
            {
              v352 = v353;
              goto LABEL_412;
            }
          }

          v353 = v350 - 1;
LABEL_412:
          v355 = v352;
        }

        else
        {
          v353 = 0;
          v355 = 0.0;
        }

        v356 = *(v458 + 8 * (floor(v355 + vcvtd_n_f64_u64(v350 - v353, 1uLL)) + -1.0));
        v357 = *(v479[0] + v343);
        if (vabdd_f64(v357, v356) / v356 < v342)
        {
          *(v450 + v343) = v357;
        }
      }

      ++v343;
      ++v344;
    }

    while (v343 < v407);
  }

  if (v399 != &v450)
  {
    std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(v399, v450, v451, (v451 - v450) >> 3);
  }

  DSP::medfilt(v399, 5u, __src);
  v358 = *v399;
  if (*v399)
  {
    *(v26 + 8) = v358;
    operator delete(v358);
    *v399 = 0;
    v399[1] = 0;
    v399[2] = 0;
  }

  v359 = __src[0];
  *(v26 + 7) = __src[0];
  v360 = __src[1];
  *(v26 + 4) = *&__src[1];
  if (v399 != &v450)
  {
    std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(&v450, v359, v360, (v360 - v359) >> 3);
  }

  if (v398 <= 0x7FFFFFFE)
  {
    v361 = 0;
    v362 = *(v26 + 29);
    v363 = -v341;
    v364 = *v399;
    do
    {
      if (*(v364 + 8 * v361) > 0.0 && *(v479[0] + v361) > 0.0)
      {
        v365 = v458;
        if ((*(&v458 + 1) - v458) >= 1)
        {
          bzero(v458, *(&v458 + 1) - v458);
        }

        v366 = (*(v26 + 8) - v364) >> 3;
        if (v341 + v361 >= v366)
        {
          v366 = v366;
        }

        else
        {
          v366 = (v341 + v361);
        }

        if (((v361 - v341) & ~((v361 - v341) >> 31)) < v366)
        {
          v367 = v363 & ~(v363 >> 31);
          v368 = v365;
          do
          {
            *v368++ = *(v364 + 8 * v367++);
          }

          while (v367 < v366);
        }

        std::__sort<std::__less<double,double> &,double *>();
        v369 = (*(&v458 + 1) - v458) >> 3;
        if (*v458 == 0.0)
        {
          v370 = 0;
          v371 = ((*(&v458 + 1) - v458) >> 3) - 1;
          while (v369 - 1 != v370)
          {
            v372 = v370 + 1;
            v373 = *(v458 + 8 + 8 * v370++);
            if (v373 != 0.0)
            {
              v371 = v372;
              goto LABEL_441;
            }
          }

          v372 = v369 - 1;
LABEL_441:
          v374 = v371;
        }

        else
        {
          v372 = 0;
          v374 = 0.0;
        }

        v375 = *(v458 + 8 * (floor(v374 + vcvtd_n_f64_u64(v369 - v372, 1uLL)) + -1.0));
        v364 = *v399;
        if (vabdd_f64(*(*v399 + 8 * v361), v375) / v375 > v362)
        {
          *(v450 + v361) = *(v479[0] + v361);
        }
      }

      ++v361;
      ++v363;
    }

    while (v361 < v407);
  }

  if (v399 != &v450)
  {
    std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(v399, v450, v451, (v451 - v450) >> 3);
  }

  DSP::medfilt(v399, 3u, __src);
  v376 = *v399;
  if (*v399)
  {
    *(v26 + 8) = v376;
    operator delete(v376);
    *v399 = 0;
    v399[1] = 0;
    v399[2] = 0;
  }

  *(v26 + 14) = *__src;
  *(v26 + 9) = __src[2];
  AutocF0::voiced_unvoiced_decision(*(v26 + 23), *(v26 + 26), *(v26 + 27), v376, v399, v476, v478, v477, 1);
  v377 = *(v26 + 5);
  if ((v377 - *(v26 + 4)) >= 9 && *(v377 - 8) == 0.0)
  {
    *(v26 + 5) = v377 - 8;
    *(v26 + 8) -= 8;
    *(v26 + 11) -= 8;
    *(v26 + 14) -= 8;
  }

  DSP::smooth_voiced_pitch_contour(v399, v26[7], __src);
  v378 = *v399;
  if (*v399)
  {
    *(v26 + 8) = v378;
    operator delete(v378);
    *v399 = 0;
    v399[1] = 0;
    v399[2] = 0;
  }

  *(v26 + 14) = *__src;
  *(v26 + 9) = __src[2];
  DSP::smooth_voiced_pitch_contour(v26 + 10, v26[7], __src);
  v379 = *(v26 + 10);
  if (v379)
  {
    *(v26 + 11) = v379;
    operator delete(v379);
    *(v26 + 10) = 0;
    *(v26 + 11) = 0;
    *(v26 + 12) = 0;
  }

  *(v26 + 5) = *__src;
  *(v26 + 12) = __src[2];
  v380 = *(v26 + 4);
  v381 = *(v26 + 5);
  memset(__src, 0, sizeof(__src));
  std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<double *>,std::__wrap_iter<double *>>(__src, v380, v381, (v381 - v380) >> 3);
  v382 = *(v26 + 7);
  v383 = *(v26 + 8);
  v447 = 0;
  v448 = 0;
  v446 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<double *>,std::__wrap_iter<double *>>(&v446, v382, v383, (v383 - v382) >> 3);
  v384 = *(v26 + 10);
  v385 = *(v26 + 11);
  v444 = 0;
  v445 = 0;
  v443 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<double *>,std::__wrap_iter<double *>>(&v443, v384, v385, (v385 - v384) >> 3);
  v386 = *(v26 + 13);
  v387 = *(v26 + 14);
  v441 = 0;
  v442 = 0;
  v440 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<double *>,std::__wrap_iter<double *>>(&v440, v386, v387, (v387 - v386) >> 3);
  if (v26[76])
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&std::cout, "Elapsed time: ", 14);
    clock();
    v388 = std::ostream::operator<<();
    v389 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v388, " s", 2);
    std::ios_base::getloc((v389 + *(*v389 - 24)));
    v390 = std::locale::use_facet(&v495, &std::ctype<char>::id);
    (v390->__vftable[2].~facet_0)(v390, 10);
    std::locale::~locale(&v495);
    std::ostream::put();
    std::ostream::flush();
  }

  _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3EEEEJNS_6vectorIfNS_9allocatorIfEEEES6_S6_S6_EEC2B8ne200100IJLm0ELm1ELm2ELm3EEJS6_S6_S6_S6_EJEJEJRS6_S9_S9_S9_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSB_IJDpT2_EEEDpOT3_(a4, __src, &v446, &v443, &v440);
  if (v440)
  {
    v441 = v440;
    operator delete(v440);
  }

  if (v443)
  {
    v444 = v443;
    operator delete(v443);
  }

  if (v446)
  {
    v447 = v446;
    operator delete(v446);
  }

  if (__src[0])
  {
    __src[1] = __src[0];
    operator delete(__src[0]);
  }

  if (v450)
  {
    v451 = v450;
    operator delete(v450);
  }

  if (v458)
  {
    *(&v458 + 1) = v458;
    operator delete(v458);
  }

  if (v463[0].__locale_)
  {
    v463[1] = v463[0];
    operator delete(v463[0].__locale_);
  }

  if (v466[0])
  {
    v466[1] = v466[0];
    operator delete(v466[0]);
  }

  if (v408)
  {
    operator delete(v408);
  }

  if (v467)
  {
    *(&v467 + 1) = v467;
    operator delete(v467);
  }

  if (v469[0])
  {
    v469[1] = v469[0];
    operator delete(v469[0]);
  }

  if (v470)
  {
    *(&v470 + 1) = v470;
    operator delete(v470);
  }

  if (v472[0])
  {
    v472[1] = v472[0];
    operator delete(v472[0]);
  }

  if (v473[0])
  {
    v473[1] = v473[0];
    operator delete(v473[0]);
  }

  if (__b)
  {
    v475 = __b;
    operator delete(__b);
  }

  if (v476[0])
  {
    v476[1] = v476[0];
    operator delete(v476[0]);
  }

  if (v477[0])
  {
    v477[1] = v477[0];
    operator delete(v477[0]);
  }

  if (v478[0])
  {
    v478[1] = v478[0];
    operator delete(v478[0]);
  }

  if (v479[0])
  {
    v479[1] = v479[0];
    operator delete(v479[0]);
  }

  if (__dst)
  {
    v487 = __dst;
    operator delete(__dst);
  }

  if (v491)
  {
    *(&v491 + 1) = v491;
    operator delete(v491);
  }

  if (v493)
  {
    *(&v493 + 1) = v493;
    operator delete(v493);
  }
}

void sub_19A0A4(_Unwind_Exception *a1)
{
  v3 = *(v1 - 248);
  if (v3)
  {
    *(v1 - 240) = v3;
    operator delete(v3);
  }

  v4 = *(v1 - 192);
  if (v4)
  {
    *(v1 - 184) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

char *std::vector<short>::insert(void *a1, char *__src, unint64_t a3, char *a4)
{
  if (!a3)
  {
    return __src;
  }

  v5 = a4;
  v8 = a1[1];
  v9 = a1[2];
  if (a3 <= (v9 - v8) >> 1)
  {
    v15 = v8 - __src;
    v16 = a1[1];
    v17 = a3;
    if (a3 <= (v8 - __src) >> 1)
    {
      goto LABEL_27;
    }

    v18 = 0;
    v17 = v15 >> 1;
    v16 = &v8[2 * (a3 - (v15 >> 1))];
    v19 = *a4;
    v20 = (2 * a3 - v15 - 2) >> 1;
    v21 = vdupq_n_s64(v20);
    v22 = (v20 & 0x7FFFFFFFFFFFFFF8) + 8;
    v23 = v8 + 8;
    do
    {
      v24 = vdupq_n_s64(v18);
      v25 = vmovn_s64(vcgeq_u64(v21, vorrq_s8(v24, xmmword_212100)));
      if (vuzp1_s8(vuzp1_s16(v25, *v21.i8), *v21.i8).u8[0])
      {
        *(v23 - 4) = v19;
      }

      if (vuzp1_s8(vuzp1_s16(v25, *&v21), *&v21).i8[1])
      {
        *(v23 - 3) = v19;
      }

      if (vuzp1_s8(vuzp1_s16(*&v21, vmovn_s64(vcgeq_u64(v21, vorrq_s8(v24, xmmword_2120F0)))), *&v21).i8[2])
      {
        *(v23 - 2) = v19;
        *(v23 - 1) = v19;
      }

      v26 = vmovn_s64(vcgeq_u64(v21, vorrq_s8(v24, xmmword_218970)));
      if (vuzp1_s8(*&v21, vuzp1_s16(v26, *&v21)).i32[1])
      {
        *v23 = v19;
      }

      if (vuzp1_s8(*&v21, vuzp1_s16(v26, *&v21)).i8[5])
      {
        v23[1] = v19;
      }

      if (vuzp1_s8(*&v21, vuzp1_s16(*&v21, vmovn_s64(vcgeq_u64(v21, vorrq_s8(v24, xmmword_218960))))).i8[6])
      {
        v23[2] = v19;
        v23[3] = v19;
      }

      v18 += 8;
      v23 += 8;
    }

    while (v22 != v18);
    a1[1] = v16;
    if (v8 != __src)
    {
LABEL_27:
      v27 = &__src[2 * a3];
      v28 = &v16[-2 * a3];
      v29 = v16;
      if (v28 < v8)
      {
        v29 = v16;
        do
        {
          v30 = *v28;
          v28 += 2;
          *v29 = v30;
          v29 += 2;
        }

        while (v28 < v8);
      }

      a1[1] = v29;
      if (v16 != v27)
      {
        memmove(&__src[2 * a3], __src, v16 - v27);
      }

      if (__src <= v5)
      {
        if (a1[1] <= v5)
        {
          v31 = 0;
        }

        else
        {
          v31 = a3;
        }

        v5 += 2 * v31;
      }

      v32 = 0;
      v33 = *v5;
      v34 = vdupq_n_s64(v17 - 1);
      v35 = __src + 8;
      do
      {
        v36 = vdupq_n_s64(v32);
        v37 = vmovn_s64(vcgeq_u64(v34, vorrq_s8(v36, xmmword_212100)));
        if (vuzp1_s8(vuzp1_s16(v37, *v34.i8), *v34.i8).u8[0])
        {
          *(v35 - 4) = v33;
        }

        if (vuzp1_s8(vuzp1_s16(v37, *&v34), *&v34).i8[1])
        {
          *(v35 - 3) = v33;
        }

        if (vuzp1_s8(vuzp1_s16(*&v34, vmovn_s64(vcgeq_u64(v34, vorrq_s8(v36, xmmword_2120F0)))), *&v34).i8[2])
        {
          *(v35 - 2) = v33;
          *(v35 - 1) = v33;
        }

        v38 = vmovn_s64(vcgeq_u64(v34, vorrq_s8(v36, xmmword_218970)));
        if (vuzp1_s8(*&v34, vuzp1_s16(v38, *&v34)).i32[1])
        {
          *v35 = v33;
        }

        if (vuzp1_s8(*&v34, vuzp1_s16(v38, *&v34)).i8[5])
        {
          v35[1] = v33;
        }

        if (vuzp1_s8(*&v34, vuzp1_s16(*&v34, vmovn_s64(vcgeq_u64(v34, vorrq_s8(v36, xmmword_218960))))).i8[6])
        {
          v35[2] = v33;
          v35[3] = v33;
        }

        v32 += 8;
        v35 += 8;
      }

      while (((v17 + 7) & 0xFFFFFFFFFFFFFFF8) != v32);
    }

    return __src;
  }

  v10 = *a1;
  v11 = a3 + (&v8[-*a1] >> 1);
  if (v11 < 0)
  {
    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v12 = __src - v10;
  v13 = v9 - v10;
  if (v13 > v11)
  {
    v11 = v13;
  }

  if (v13 >= 0x7FFFFFFFFFFFFFFELL)
  {
    v14 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v14 = v11;
  }

  if (v14)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(a1, v14);
  }

  v40 = 0;
  v39 = 2 * (v12 >> 1);
  v41 = v39 + 2 * a3;
  v42 = *a4;
  v43 = (a3 + 0x7FFFFFFFFFFFFFFFLL) & 0x7FFFFFFFFFFFFFFFLL;
  v44 = v43 - ((a3 + 0x7FFFFFFFFFFFFFFFLL) & 7) + 8;
  v45 = vdupq_n_s64(v43);
  v46 = (v39 + 8);
  do
  {
    v47 = vdupq_n_s64(v40);
    v48 = vmovn_s64(vcgeq_u64(v45, vorrq_s8(v47, xmmword_212100)));
    if (vuzp1_s8(vuzp1_s16(v48, *v45.i8), *v45.i8).u8[0])
    {
      *(v46 - 4) = v42;
    }

    if (vuzp1_s8(vuzp1_s16(v48, *&v45), *&v45).i8[1])
    {
      *(v46 - 3) = v42;
    }

    if (vuzp1_s8(vuzp1_s16(*&v45, vmovn_s64(vcgeq_u64(v45, vorrq_s8(v47, xmmword_2120F0)))), *&v45).i8[2])
    {
      *(v46 - 2) = v42;
      *(v46 - 1) = v42;
    }

    v49 = vmovn_s64(vcgeq_u64(v45, vorrq_s8(v47, xmmword_218970)));
    if (vuzp1_s8(*&v45, vuzp1_s16(v49, *&v45)).i32[1])
    {
      *v46 = v42;
    }

    if (vuzp1_s8(*&v45, vuzp1_s16(v49, *&v45)).i8[5])
    {
      v46[1] = v42;
    }

    if (vuzp1_s8(*&v45, vuzp1_s16(*&v45, vmovn_s64(vcgeq_u64(v45, vorrq_s8(v47, xmmword_218960))))).i8[6])
    {
      v46[2] = v42;
      v46[3] = v42;
    }

    v40 += 8;
    v46 += 8;
  }

  while (v44 != v40);
  memcpy((v39 + 2 * a3), __src, a1[1] - __src);
  v50 = *a1;
  v51 = v41 + a1[1] - __src;
  a1[1] = __src;
  v52 = (__src - v50);
  v53 = (v39 - (__src - v50));
  memcpy(v53, v50, v52);
  v54 = *a1;
  *a1 = v53;
  a1[1] = v51;
  a1[2] = 0;
  if (v54)
  {
    operator delete(v54);
  }

  return v39;
}

void AutocF0::remove_false_flanks(uint64_t a1, uint64_t *a2, int a3, int a4, int a5)
{
  if (a3 == a4 || a3 == a5)
  {
    v5 = *a2;
    v6 = (a2[1] - *a2) >> 3;
    LODWORD(v7) = a4 + 1;
    if (v6 > a4 + 1)
    {
      v7 = v7;
      v8 = a4;
      do
      {
        if (*(v5 + 8 * v8) <= *(v5 + 8 * v7))
        {
          break;
        }

        *(v5 + 8 * v8) = 0xFFF0000000000000;
        ++v7;
        ++v8;
      }

      while (v6 > v7);
    }

    if (a5 > a4)
    {
      v9 = a5;
      v10 = (v5 + 8 * a5);
      v11 = *v10;
      do
      {
        v12 = v11;
        v11 = *(v10 - 1);
        if (v12 <= v11)
        {
          break;
        }

        --v9;
        *v10-- = -INFINITY;
      }

      while (v9 > a4);
    }
  }
}

void AutocF0::voiced_unvoiced_decision(double a1, double a2, double a3, uint64_t a4, uint64_t a5, double **a6, double **a7, double **a8, int a9)
{
  if (a9)
  {
    a2 = a2 * 1.5;
    a3 = a3 * 1.5;
    a1 = a1 * 0.666;
  }

  v9 = *a5;
  v10 = *(a5 + 8) - *a5;
  if (v10)
  {
    v11 = v10 >> 3;
    v12 = *a6;
    v13 = *a7;
    v14 = *a8;
    if (v11 <= 1)
    {
      v11 = 1;
    }

    do
    {
      if (*v12 < a1)
      {
        *v9 = 0;
      }

      if (*v13 > a2)
      {
        *v9 = 0;
      }

      if (*v14 > a3)
      {
        *v9 = 0;
      }

      ++v9;
      ++v14;
      ++v13;
      ++v12;
      --v11;
    }

    while (v11);
  }
}

void *_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3EEEEJNS_6vectorIfNS_9allocatorIfEEEES6_S6_S6_EEC2B8ne200100IJLm0ELm1ELm2ELm3EEJS6_S6_S6_S6_EJEJEJRS6_S9_S9_S9_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSB_IJDpT2_EEEDpOT3_(void *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1, *a2, a2[1], (a2[1] - *a2) >> 2);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a1 + 3), *a3, a3[1], (a3[1] - *a3) >> 2);
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a1 + 6), *a4, a4[1], (a4[1] - *a4) >> 2);
  a1[9] = 0;
  a1[10] = 0;
  a1[11] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a1 + 9), *a5, a5[1], (a5[1] - *a5) >> 2);
  return a1;
}

void sub_19AB08(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 56) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v6;
    operator delete(v6);
  }

  v7 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v7;
    operator delete(v7);
  }

  _Unwind_Resume(exception_object);
}

void AutocF0::AutocF0(void **a1, void **a2, void **a3, void *a4)
{
  v7 = *a1;
  if (v7)
  {
    a4[11] = v7;
    operator delete(v7);
  }

  v8 = *a2;
  if (*a2)
  {
    a4[8] = v8;
    operator delete(v8);
  }

  v9 = *a3;
  if (*a3)
  {
    a4[5] = v9;

    operator delete(v9);
  }
}

void SiriTTS::SpeechFeature::SpeechFeatureExtractor::SpeechFeatureExtractor(void *a1, const void **a2)
{
  *a1 = 0;
  a1[1] = 0;
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    v3 = a2[1];
  }

  v4 = &v10;
  std::string::basic_string[abi:ne200100](&v10, v3 + 1);
  if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v4 = v10.__r_.__value_.__r.__words[0];
  }

  if (v3)
  {
    if (*(a2 + 23) >= 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = *a2;
    }

    memmove(v4, v5, v3);
  }

  *(&v4->__r_.__value_.__l.__data_ + v3) = 47;
  v6 = std::string::append(&v10, "lexiconp.txt");
  v7 = *&v6->__r_.__value_.__l.__data_;
  v9 = v6->__r_.__value_.__r.__words[2];
  *__p = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  std::ifstream::basic_ifstream(&v10, __p);
  if (*(&v10 + *(v10.__r_.__value_.__r.__words[0] - 24) + 32))
  {
    std::allocate_shared[abi:ne200100]<SiriTTS::ForcedAlignment::ForcedAlignment,std::allocator<SiriTTS::ForcedAlignment::ForcedAlignment>,std::string const&,BOOL const&,0>();
  }

  std::allocate_shared[abi:ne200100]<SiriTTS::ForcedAlignment::ForcedAlignment,std::allocator<SiriTTS::ForcedAlignment::ForcedAlignment>,std::string const&,BOOL const&,std::string&,0>();
}

void sub_19AE20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  std::ios::~ios();
  if (a16 < 0)
  {
    operator delete(__p);
  }

  v26 = *(v24 + 8);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  _Unwind_Resume(a1);
}

void SiriTTS::SpeechFeature::SpeechFeatureExtractor::resample(uint64_t *a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  __p = 0;
  v8 = 0;
  v9 = 0;
  std::vector<short>::__init_with_size[abi:ne200100]<short *,short *>(&__p, *a1, a1[1], (a1[1] - *a1) >> 1);
  DSP::resample(&__p, a2, a3, a4);
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }
}

void sub_19AF08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SiriTTS::SpeechFeature::SpeechFeatureExtractor::extract_speech_feature(SiriTTS::ForcedAlignment::AcousticModel ***a1, uint64_t *a2, uint64_t *a3, int a4, _BYTE *a5, uint64_t a6)
{
  v39 = 0uLL;
  v40 = 0;
  std::vector<short>::__init_with_size[abi:ne200100]<short *,short *>(&v39, *a2, a2[1], (a2[1] - *a2) >> 1);
  v11 = v39;
  if (a4 != 16000)
  {
    v37 = 0;
    v38 = 0;
    v36 = 0;
    std::vector<short>::__init_with_size[abi:ne200100]<short *,short *>(&v36, v39, *(&v39 + 1), (*(&v39 + 1) - v39) >> 1);
    DSP::resample(&v36, a4, 16000, __p);
    if (v39)
    {
      *(&v39 + 1) = v39;
      operator delete(v39);
    }

    v12 = __p[0];
    v39 = *__p;
    v40 = v31;
    __p[1] = 0;
    *&v31 = 0;
    __p[0] = 0;
    if (v36)
    {
      v37 = v36;
      operator delete(v36);
      v11 = v39;
    }

    else
    {
      v11 = v12;
    }
  }

  memset(v35, 0, sizeof(v35));
  std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<short *>,std::__wrap_iter<short *>>(v35, v11, *(&v39 + 1), (*(&v39 + 1) - v11) >> 1);
  memset(v34, 0, sizeof(v34));
  v13 = *a3;
  if (a3[1] == *a3)
  {
LABEL_26:
    memset(&v29, 0, sizeof(v29));
    if (a6)
    {
      *__p = 0u;
      v31 = 0u;
      LODWORD(v32) = 1065353216;
      for (i = *(a6 + 16); i; i = *i)
      {
        v27 = 0uLL;
        v28 = 0;
        v21 = i[5];
        v20 = i[6];
        while (v21 != v20)
        {
          v24 = 0;
          v25 = 0;
          v23 = 0;
          std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v23, *(v21 + 24), *(v21 + 32), 0xAAAAAAAAAAAAAAABLL * ((*(v21 + 32) - *(v21 + 24)) >> 3));
          memset(v26, 0, sizeof(v26));
          std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v26, v23, v24, 0xAAAAAAAAAAAAAAABLL * ((v24 - v23) >> 3));
          std::vector<SiriTTS::ForcedAlignment::Phoneme>::push_back[abi:ne200100](&v27, v26);
          v41[0] = v26;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v41);
          v41[0] = &v23;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v41);
          v21 += 48;
        }

        v41[0] = (i + 2);
        v22 = std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(__p, i + 2) + 5;
        if (v22 != &v27)
        {
          std::vector<SiriTTS::ForcedAlignment::Phoneme>::__assign_with_size[abi:ne200100]<SiriTTS::ForcedAlignment::Phoneme*,SiriTTS::ForcedAlignment::Phoneme*>(v22, v27, *(&v27 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&v27 + 1) - v27) >> 3));
        }

        v26[0] = &v27;
        std::vector<SiriTTS::ForcedAlignment::Phoneme>::__destroy_vector::operator()[abi:ne200100](v26);
      }

      SiriTTS::ForcedAlignment::ForcedAlignment::align_phones_with_frame(*a1, v35, v34, a5, __p);
    }

    SiriTTS::ForcedAlignment::ForcedAlignment::align_phones_with_frame(*a1, v35, v34, a5, 0);
  }

  v14 = 0;
  v15 = 0;
  while (1)
  {
    v16 = v13 + v14;
    if (*(v13 + v14 + 32) == *(v13 + v14 + 24))
    {
      if (*(v16 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(__p, *(v13 + v14), *(v13 + v14 + 8));
      }

      else
      {
        v17 = *v16;
        *&v31 = *(v16 + 16);
        *__p = v17;
      }

      *(&v31 + 1) = 0;
      v32 = 0;
      v33 = 0;
      std::vector<SiriTTS::ForcedAlignment::Lexeme>::push_back[abi:ne200100](v34, __p);
    }

    else
    {
      if ((*(v16 + 23) & 0x8000000000000000) != 0)
      {
        if (!*(v13 + v14 + 8))
        {
LABEL_16:
          std::to_string(&v29, v15);
          SiriTTS::ForcedAlignment::Lexeme::Lexeme(__p, &v29, (*a3 + v14 + 24));
          std::vector<SiriTTS::ForcedAlignment::Lexeme>::push_back[abi:ne200100](v34, __p);
          *&v27 = &v31 + 8;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v27);
          if (SBYTE7(v31) < 0)
          {
            operator delete(__p[0]);
          }

          if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_25;
          }

          v18 = v29.__r_.__value_.__r.__words[0];
          goto LABEL_24;
        }
      }

      else if (!*(v16 + 23))
      {
        goto LABEL_16;
      }

      SiriTTS::ForcedAlignment::Lexeme::Lexeme(__p, v16, (v13 + v14 + 24));
      std::vector<SiriTTS::ForcedAlignment::Lexeme>::push_back[abi:ne200100](v34, __p);
    }

    v29.__r_.__value_.__r.__words[0] = &v31 + 8;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v29);
    if (SBYTE7(v31) < 0)
    {
      v18 = __p[0];
LABEL_24:
      operator delete(v18);
    }

LABEL_25:
    ++v15;
    v13 = *a3;
    v14 += 48;
    if (0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 4) <= v15)
    {
      goto LABEL_26;
    }
  }
}

void sub_19B404(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void **a34)
{
  a34 = &a27;
  std::vector<std::pair<std::string,int>>::__destroy_vector::operator()[abi:ne200100](&a34);
  a34 = (v34 - 200);
  std::vector<SiriTTS::ForcedAlignment::Lexeme>::__destroy_vector::operator()[abi:ne200100](&a34);
  v36 = *(v34 - 176);
  if (v36)
  {
    *(v34 - 168) = v36;
    operator delete(v36);
  }

  v37 = *(v34 - 128);
  if (v37)
  {
    *(v34 - 120) = v37;
    operator delete(v37);
  }

  _Unwind_Resume(a1);
}

uint64_t std::vector<SiriTTS::ForcedAlignment::Lexeme>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<SiriTTS::ForcedAlignment::Lexeme>::__emplace_back_slow_path<SiriTTS::ForcedAlignment::Lexeme>(a1, a2);
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 16);
    *v3 = v4;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    *(v3 + 24) = 0;
    *(v3 + 32) = 0;
    *(v3 + 40) = 0;
    *(v3 + 24) = *(a2 + 24);
    *(v3 + 40) = *(a2 + 40);
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    result = v3 + 48;
  }

  a1[1] = result;
  return result;
}

uint64_t std::vector<SiriTTS::ForcedAlignment::Phoneme>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<SiriTTS::ForcedAlignment::Phoneme>::__emplace_back_slow_path<SiriTTS::ForcedAlignment::Phoneme>(a1, a2);
  }

  else
  {
    *v3 = 0;
    v3[1] = 0;
    v3[2] = 0;
    *v3 = *a2;
    v3[2] = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    result = (v3 + 3);
  }

  *(a1 + 8) = result;
  return result;
}

void SiriTTS::SpeechFeature::SpeechFeatureExtractor::extract_dur_energy_pitch(uint64_t a1, uint64_t a2, uint64_t *a3, _BYTE *a4)
{
  v26 = 0;
  v27 = 0;
  v28 = 0;
  if (*a4 != 1 || (v5 = *a3, v6 = a3[1], *a3 == v6))
  {
LABEL_47:
    SiriTTS::SpeechFeature::SpeechFeatureExtractor::extract_phone_duration(a3, v25);
    _ZNSt3__115allocate_sharedB8ne200100I12SpeechEnergyNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  v7 = 0;
  while (1)
  {
    v8 = *(v5 + 23);
    if (v8 < 0)
    {
      v8 = *(v5 + 8);
    }

    std::string::basic_string(&v23, v5, v8 - 2, 2uLL, &v24);
    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v23.__r_.__value_.__l.__size_ != 2)
      {
        goto LABEL_22;
      }

      v9 = v23.__r_.__value_.__r.__words[0];
      if (*v23.__r_.__value_.__l.__data_ != 21343 && *v23.__r_.__value_.__l.__data_ != 16991 && *v23.__r_.__value_.__l.__data_ != 18783)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) != 2)
      {
        goto LABEL_22;
      }

      if (LOWORD(v23.__r_.__value_.__l.__data_) != 21343 && LOWORD(v23.__r_.__value_.__l.__data_) != 16991 && LOWORD(v23.__r_.__value_.__l.__data_) != 18783)
      {
        v9 = &v23;
LABEL_16:
        if (LOWORD(v9->__r_.__value_.__l.__data_) != 17759)
        {
          goto LABEL_22;
        }
      }
    }

    v10 = *(v5 + 23);
    if (v10 < 0)
    {
      v10 = *(v5 + 8);
    }

    std::string::basic_string(&v24, v5, 0, v10 - 2, &v22);
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    v11 = *&v24.__r_.__value_.__l.__data_;
    *(v5 + 16) = *(&v24.__r_.__value_.__l + 2);
    *v5 = v11;
LABEL_22:
    v12 = v27;
    if (v27 >= v28)
    {
      v14 = v26;
      v15 = v27 - v26;
      v16 = (v27 - v26) >> 2;
      v17 = v16 + 1;
      if ((v16 + 1) >> 62)
      {
        std::vector<float>::__throw_length_error[abi:ne200100]();
      }

      v18 = v28 - v26;
      if ((v28 - v26) >> 1 > v17)
      {
        v17 = v18 >> 1;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v19 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v19 = v17;
      }

      if (v19)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(&v26, v19);
      }

      *(4 * v16) = v7;
      v13 = 4 * v16 + 4;
      memcpy(0, v14, v15);
      v20 = v26;
      v26 = 0;
      v27 = v13;
      v28 = 0;
      if (v20)
      {
        operator delete(v20);
      }
    }

    else
    {
      *v27 = v7;
      v13 = (v12 + 1);
    }

    v27 = v13;
    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      v21 = v23.__r_.__value_.__r.__words[0];
      if (v23.__r_.__value_.__l.__size_ != 2)
      {
        goto LABEL_45;
      }

      if (*v23.__r_.__value_.__l.__data_ == 17759)
      {
        goto LABEL_43;
      }
    }

    else
    {
      if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) != 2)
      {
        goto LABEL_46;
      }

      if (LOWORD(v23.__r_.__value_.__l.__data_) == 17759)
      {
        goto LABEL_43;
      }

      v21 = &v23;
    }

    if (LOWORD(v21->__r_.__value_.__l.__data_) != 21343)
    {
      if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_44;
      }

      goto LABEL_46;
    }

LABEL_43:
    ++v7;
    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_44:
      v21 = v23.__r_.__value_.__r.__words[0];
LABEL_45:
      operator delete(v21);
    }

LABEL_46:
    v5 += 32;
    if (v5 == v6)
    {
      goto LABEL_47;
    }
  }
}

void sub_19BAD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45)
{
  *(v46 - 96) = v45;
  std::vector<SiriTTS::SpeechFeature::SpeechFeatureData>::__destroy_vector::operator()[abi:ne200100]((v46 - 96));
  if (__p)
  {
    operator delete(__p);
  }

  if (a20)
  {
    operator delete(a20);
  }

  if (a23)
  {
    operator delete(a23);
  }

  if (a26)
  {
    operator delete(a26);
  }

  std::tuple<std::vector<float>,std::vector<float>,std::vector<float>,std::vector<float>>::~tuple(&a29);
  if (a44)
  {
    a45 = a44;
    operator delete(a44);
  }

  v48 = *(v46 - 232);
  if (v48)
  {
    *(v46 - 224) = v48;
    operator delete(v48);
  }

  std::tuple<std::vector<float>,std::vector<float>>::~tuple(v46 - 208);
  v49 = *(v46 - 152);
  if (v49)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v49);
  }

  a29 = (v46 - 144);
  std::vector<SiriTTS::SpeechFeature::SpeechFeatureData>::__destroy_vector::operator()[abi:ne200100](&a29);
  v50 = *(v46 - 120);
  if (v50)
  {
    *(v46 - 112) = v50;
    operator delete(v50);
  }

  _Unwind_Resume(a1);
}