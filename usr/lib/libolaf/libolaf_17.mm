uint64_t calculateHmac<SUPL_SHA_256>(uint64_t **__src, char **a2)
{
  v3 = __src;
  v20 = *MEMORY[0x29EDCA608];
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v4 = *(__src + 23);
  if ((v4 & 0x80) != 0)
  {
    v4 = __src[1];
    if (v4 - 1 < 0x100)
    {
      if (v4 <= 0x40)
      {
        v3 = *__src;
        goto LABEL_16;
      }

LABEL_7:
      std::vector<unsigned char>::vector[abi:ne200100](&v18, 32);
      v19 = 32;
      v5 = *(v3 + 23);
      if (v5 >= 0)
      {
        v6 = v3;
      }

      else
      {
        v6 = *v3;
      }

      if (v5 >= 0)
      {
        v7 = *(v3 + 23);
      }

      else
      {
        v7 = v3[1];
      }

      memset(v17, 0, sizeof(v17));
      std::vector<unsigned char>::__init_with_size[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(v17, v6, v6 + v7, v7);
      SUPL_SHA_256::calculateSha();
    }
  }

  else if (*(__src + 23))
  {
    if (v4 < 0x41)
    {
LABEL_16:
      std::vector<unsigned char>::__assign_with_size[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(&v14, v3, v3 + v4, v4);
      v8 = v15 - v14;
      if ((v15 - v14) > 0x3F)
      {
        if (v8 != 64)
        {
          v15 = v14 + 64;
        }
      }

      else
      {
        std::vector<unsigned char>::__append(&v14, 64 - v8);
      }

      std::vector<unsigned char>::vector[abi:ne200100](v13, 64);
      for (i = 0; i != 64; ++i)
      {
        *(v13[0] + i) = *(v14 + i) ^ 0x36;
      }

      std::vector<unsigned char>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(v13, v13[1], *a2, a2[1], a2[1] - *a2);
      std::vector<unsigned char>::vector[abi:ne200100](&v18, 32);
      v19 = 32;
      std::vector<unsigned char>::vector[abi:ne200100](&v12, 32);
      SUPL_SHA_256::calculateSha();
    }

    goto LABEL_7;
  }

  v10 = *MEMORY[0x29EDCA608];
  return 0xFFFFFFFFLL;
}

void sub_299602470(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22)
{
  v24 = *(v22 - 104);
  if (v24)
  {
    *(v22 - 96) = v24;
    operator delete(v24);
  }

  v25 = *(v22 - 72);
  if (v25)
  {
    *(v22 - 64) = v25;
    operator delete(v25);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned char>::__append(char **a1, size_t a2)
{
  v14 = *MEMORY[0x29EDCA608];
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
    goto LABEL_17;
  }

  v6 = *a1;
  v7 = (v5 - *a1);
  v8 = &v7[a2];
  if (&v7[a2] < 0)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
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
  if (!v6)
  {
LABEL_17:
    v13 = *MEMORY[0x29EDCA608];
    return;
  }

  v12 = *MEMORY[0x29EDCA608];

  operator delete(v6);
}

void sub_2996027AC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned int>::vector[abi:ne200100](void *a1)
{
  v1 = *MEMORY[0x29EDCA608];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}

void sub_299602878(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_299602934(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<unsigned char>::__init_with_size[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  v4 = *MEMORY[0x29EDCA608];
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2996029DC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<unsigned char>::__assign_with_size[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v20 = *MEMORY[0x29EDCA608];
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

    std::vector<unsigned char>::__vallocate[abi:ne200100](v6, v10);
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (v11 - v8 >= a4)
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
      v14 = (&a3[v11] - v13);
      v15 = v11;
      do
      {
        v16 = *v13++;
        *v15++ = v16;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  v19 = *MEMORY[0x29EDCA608];
  return result;
}

void std::vector<unsigned char>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned char *>,std::__wrap_iter<unsigned char *>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t __len)
{
  v42 = *MEMORY[0x29EDCA608];
  if (__len < 1)
  {
    goto LABEL_36;
  }

  v5 = __len;
  v6 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (v9 - v10 < __len)
  {
    v11 = *a1;
    v12 = &v10[__len - *a1];
    if (v12 < 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v13 = v9 - v11;
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    if (v13 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v14 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      operator new();
    }

    v32 = (__dst - v11);
    v33 = (__dst - v11 + __len);
    v34 = (__dst - v11);
    do
    {
      v35 = *v6++;
      *v34++ = v35;
      --v5;
    }

    while (v5);
    v36 = *(a1 + 8) - __dst;
    memcpy(v33, __dst, v36);
    v37 = &v33[v36];
    *(a1 + 8) = __dst;
    v38 = *a1;
    v39 = &v32[*a1 - __dst];
    memcpy(v39, *a1, &__dst[-*a1]);
    *a1 = v39;
    *(a1 + 8) = v37;
    *(a1 + 16) = 0;
    if (v38)
    {
      v40 = *MEMORY[0x29EDCA608];

      operator delete(v38);
      return;
    }

LABEL_36:
    v41 = *MEMORY[0x29EDCA608];
    return;
  }

  v15 = v10 - __dst;
  if (v10 - __dst >= __len)
  {
    v27 = &__dst[__len];
    v28 = &v10[-__len];
    v29 = *(a1 + 8);
    if (v10 >= __len)
    {
      do
      {
        v30 = *v28++;
        *v29++ = v30;
      }

      while (v28 != v10);
    }

    *(a1 + 8) = v29;
    if (v10 != v27)
    {
      memmove(&__dst[__len], __dst, v10 - v27);
    }

    v31 = *MEMORY[0x29EDCA608];
    v24 = __dst;
    v25 = v6;
    v26 = v5;
  }

  else
  {
    v17 = a4 - &__src[v15];
    if (a4 != &__src[v15])
    {
      memmove(*(a1 + 8), &__src[v15], a4 - &__src[v15]);
    }

    v18 = &v10[v17];
    *(a1 + 8) = &v10[v17];
    if (v15 < 1)
    {
      goto LABEL_36;
    }

    v19 = &__dst[v5];
    v20 = &v10[v17];
    if (&v18[-v5] < v10)
    {
      v21 = a4 - &v6[v5];
      v22 = a4 - v6;
      do
      {
        __dst[v22++] = __dst[v21++];
      }

      while (&__dst[v21] < v10);
      v20 = &__dst[v22];
    }

    *(a1 + 8) = v20;
    if (v18 != v19)
    {
      memmove(&__dst[v5], __dst, v18 - v19);
    }

    v23 = *MEMORY[0x29EDCA608];
    v24 = __dst;
    v25 = v6;
    v26 = v10 - __dst;
  }

  memmove(v24, v25, v26);
}

uint64_t Comp_PrePos(int a1, int a2, uint64_t a3, float64x2_t *a4, uint64_t a5, int a6, unsigned int a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, double a17, double a18)
{
  v98 = *MEMORY[0x29EDCA608];
  v95 = 0;
  v96 = 0;
  memset(v89, 0, sizeof(v89));
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  memset(v94, 0, sizeof(v94));
  v87 = 0;
  v88 = 0;
  memset(v85, 0, sizeof(v85));
  memset(v86, 0, 94);
  result = Comp_CurrState(0x258u, a2, a3, v89, a18, 22000000.0);
  if (result)
  {
    v81 = a15;
    v33 = Comp_SVrange_Sag_Corr(&v97, v84, a4, &v89[1]);
    v34 = 21 - ((91 * a6 + ((((91 * a6) >> 16) >> 6) & 0x1FF)) >> 9);
    v35 = v33 + (a9 - *(&v91 + 1)) * 299792458.0 + v34;
    if (fabs(v35) >= 2130706430.0)
    {
      result = 0;
      goto LABEL_55;
    }

    v36 = 0;
    *(a8 + 8) = v35;
    v37 = 0.0;
    do
    {
      v37 = v37 + v97.f64[v36] * *(&v90 + v36 * 8);
      ++v36;
    }

    while (v36 != 3);
    v38 = 0;
    v39 = *&v92;
    *(a8 + 48) = (v37 + *&v92 * -299792458.0) * -5.25503547;
    do
    {
      v84[v38 + 2] = *(&v91 + v38) - *(a5 + 16 + 8 * v38);
      v40 = v38 + 3;
      --v38;
    }

    while (v40 > 1);
    v41 = 0;
    v42 = 0.0;
    do
    {
      v42 = v42 + v97.f64[v41] * v84[v41];
      ++v41;
    }

    while (v41 != 3);
    v43 = 0;
    *(a8 + 24) = (v42 + (a10 - v39) * 299792458.0) * -5.25503547;
    v44 = 0.0;
    do
    {
      v44 = v44 + v97.f64[v43] * *(&v90 + v43 * 8);
      ++v43;
    }

    while (v43 != 3);
    result = Comp_CurrState(0x25Du, a2, a3, v85, a18 + 1.0, 22000000.0);
    if (result)
    {
      v45 = Comp_SVrange_Sag_Corr(&v97, v84, a4, &v85[0].f64[1]);
      v46 = 0;
      v47 = 0.0;
      do
      {
        v47 = v47 + v97.f64[v46] * *(v86 + v46 * 8);
        ++v46;
      }

      while (v46 != 3);
      v48 = (v44 - v47) / 0.190293673;
      *(a8 + 40) = v48;
      if (a6 > 29)
      {
        if (a6 >= 0x3D)
        {
          v50 = ((90 - a6) * (90 - a6)) * 0.000284;
          v49 = 1.0 - v50;
          goto LABEL_21;
        }

        v49 = (a6 - 30) * 0.0166666667 + 0.25;
      }

      else
      {
        v49 = (a6 * a6) * 0.000284;
      }

      v50 = 1.0 - v49;
LABEL_21:
      if (a13 >= 30.0 || a14 >= 50.0)
      {
        if (a13 > 10000.0)
        {
          if (a13 <= 100000.0)
          {
            if (a13 <= 50000.0)
            {
              v53 = dbl_29975C8C0[a13 > 25000.0];
            }

            else
            {
              v53 = 2000.0;
            }
          }

          else
          {
            v53 = 60000.0;
          }

          a14 = v53 + a14;
        }

        if (a7)
        {
          v50 = sqrt(v50);
          v54 = a13 * 1.5 * (v50 + 1.0);
          v51.f64[0] = v54 + a13 * 3.0 * v50;
          *(a8 + 8) -= v54;
          v52 = a14 * (v49 * a14);
          v51.f64[1] = v54;
        }

        else
        {
          v52 = a14 * (v49 * a14) + v50 * a13 * a13;
          v51 = 0uLL;
        }
      }

      else
      {
        v51 = vdupq_n_s64(0x406A400000000000uLL);
        v52 = 4900.0;
      }

      v55 = *(&v92 + 1);
      v56 = v52 + *(&v92 + 1) + (2 * v34 * v34 + 120);
      if (a1 < 1)
      {
        v60 = v56 + 4.0e12;
        v59 = a1;
      }

      else
      {
        v57 = (v33 - v45) * (v33 - v45);
        if (v57 <= 0x2710)
        {
          v57 = 10000;
        }

        v58 = v57;
        v59 = a1;
        v60 = v56 + v58 * g_TOW_Stat_Var95_Table[a1];
      }

      v61 = sqrt(v60) * 3.0;
      if (a7)
      {
        v61 = v51.f64[0] + v61;
      }

      *(a8 + 4) = fmin(v61, 4278190080.0);
      v62 = a11 + a10 * g_TOW_stat_Sigma_m_Table[v59];
      v63 = v60 + v62 * v62;
      v64.f64[0] = v63 + a12 * a12;
      v64.f64[1] = v63;
      v65 = vsqrtq_f64(v64);
      __asm { FMOV            V7.2D, #3.0 }

      v71 = vmulq_f64(v65, _Q7);
      *&_Q7.f64[0] = vdup_n_s32(a7);
      v72.i64[0] = LODWORD(_Q7.f64[0]);
      v72.i64[1] = HIDWORD(_Q7.f64[0]);
      *(a8 + 12) = vmovn_s64(vcvtq_u64_f64(vminnmq_f64(vbslq_s8(vcltzq_s64(vshlq_n_s64(v72, 0x3FuLL)), vaddq_f64(v51, v71), v71), vdupq_n_s64(0x41EFE00000000000uLL))));
      v73 = v50 * a16 * a16 + v81 * v81 + v49 * a17 * a17 + 4.0;
      if (v73 < 5.0)
      {
        v73 = 5.0;
      }

      if (a1 < 1)
      {
        v75 = 9941543.2;
      }

      else
      {
        v74 = v48 * v48;
        if (v74 < 0.0025)
        {
          v74 = 0.0025;
        }

        v75 = v74 * ((v55 * 0.0625 + a13 * a13) * 0.000001 + g_TOW_Stat_Var95_Table[v59]);
      }

      v76 = sqrt(v73 + v75);
      if (v76 < 1400000000.0)
      {
        v77 = (v76 * 3.0) + 1;
      }

      else
      {
        v77 = -16777216;
      }

      *(a8 + 32) = v77;
      v78 = sqrt(v75);
      if (v78 < 1400000000.0)
      {
        v79 = (v78 * 3.0) + 1;
      }

      else
      {
        v79 = -16777216;
      }

      *(a8 + 56) = v79;
      result = 1;
    }
  }

LABEL_55:
  v80 = *MEMORY[0x29EDCA608];
  return result;
}

void GLON_Alm_Last_Asc_Pass(double *a1, double *a2, int a3, uint64_t a4, double a5, double a6)
{
  v23 = *MEMORY[0x29EDCA608];
  v7 = *(a4 + 40) + 43200.0;
  v9 = *(a4 + 16);
  v8 = *(a4 + 24);
  v10 = *(a4 + 32) + 1.09955743;
  v11 = *(a4 + 48);
  v12 = 1.0 - *(a4 + 56) * *(a4 + 56);
  v13 = a3 - *(a4 + 8);
  if (v13 < -730)
  {
    v13 += 1461;
  }

  if (v13 > 730)
  {
    v13 -= 1461;
  }

  v14 = floor((a5 - v8 + v13 * 86400.0) / v7);
  v15 = v8 + v7 * v14 + v11 * (v14 * v14);
  v16 = floor(v15 / 86400.0);
  v17 = ceil(v15 / 86400.0);
  if (v15 / 86400.0 >= 0.0)
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

  v19 = v15 + v18 * -86400.0;
  if (v19 <= a5)
  {
    v20 = v19;
  }

  else
  {
    v20 = v19 + -86400.0;
  }

  *a1 = v20;
    ;
  }

  *a2 = i;
  if (i < -3.14159265)
  {
    do
    {
      i = i + 6.28318531;
    }

    while (i < -3.14159265);
    *a2 = i;
  }

  v22 = *MEMORY[0x29EDCA608];
}

uint64_t asn1PE_SUPLEND(uint64_t a1, unsigned __int8 *a2)
{
  v10 = *MEMORY[0x29EDCA608];
  Asn1Coder::AddBitToBuffer(a1, 0);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
LABEL_9:
    SuplAsn1Logger::TraceError(v7, v5, v6);
    goto LABEL_10;
  }

  Asn1Coder::AddBitToBuffer(a1, *a2);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
    goto LABEL_9;
  }

  Asn1Coder::AddBitToBuffer(a1, a2[1]);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
    goto LABEL_9;
  }

  Asn1Coder::AddBitToBuffer(a1, a2[2]);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
    goto LABEL_9;
  }

  if (*a2)
  {
    v7 = asn1PE_Position(a1, a2 + 8);
    if (v7)
    {
      v4 = v7;
      v5 = *(a1 + 8);
      v6 = *(a1 + 12);
      goto LABEL_9;
    }
  }

  if (a2[1])
  {
    v7 = asn1PE_StatusCode(a1, a2 + 432);
    if (v7)
    {
      v4 = v7;
      v5 = *(a1 + 8);
      v6 = *(a1 + 12);
      goto LABEL_9;
    }
  }

  if (!a2[2])
  {
    v4 = 0;
    goto LABEL_10;
  }

  v7 = asn1PE_Ver(a1, a2 + 55);
  v4 = v7;
  if (v7)
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_9;
  }

LABEL_10:
  v8 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t asn1PD_SUPLEND(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x29EDCA608];
  BitFromBuffer = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
LABEL_9:
    SuplAsn1Logger::TraceError(v8, v6, v7);
    goto LABEL_10;
  }

  v9 = BitFromBuffer;
  *a2 = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_9;
  }

  *(a2 + 1) = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_9;
  }

  *(a2 + 2) = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_9;
  }

  if (*a2)
  {
    v8 = asn1PD_Position(a1, a2 + 8);
    if (v8)
    {
      v5 = v8;
      v6 = *(a1 + 8);
      v7 = *(a1 + 12);
      goto LABEL_9;
    }
  }

  if (*(a2 + 1))
  {
    v8 = asn1PD_StatusCode(a1, (a2 + 432));
    if (v8)
    {
      v5 = v8;
      v6 = *(a1 + 8);
      v7 = *(a1 + 12);
      goto LABEL_9;
    }
  }

  if (*(a2 + 2))
  {
    v8 = asn1PD_Ver(a1, (a2 + 440));
    if (v8)
    {
      v5 = v8;
      v6 = *(a1 + 8);
      v7 = *(a1 + 12);
      goto LABEL_9;
    }
  }

  if (!v9)
  {
    v5 = 0;
    goto LABEL_10;
  }

  v8 = Asn1Coder::SkipSequenceExtension(a1);
  v5 = v8;
  if (v8)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_9;
  }

LABEL_10:
  v10 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t GM_Get_Min_SNR(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x29EDCA608];
  v2 = (a2 - 1);
  if (a2 - 1 < 0)
  {
    v7 = 10;
  }

  else
  {
    v3 = 0;
    v4 = v2 + 1;
    v5 = (a1 + 36 * v2 + 4);
    do
    {
      if (Is_Legal(*(v5 - 1)) && (*(v5 + 2) & 8) != 0 && *v5 > v3)
      {
        v3 = *v5;
      }

      v5 -= 36;
    }

    while (v4-- > 1);
    if (v3 <= 0x21u)
    {
      v7 = 10;
    }

    else
    {
      v7 = v3 - 23;
    }
  }

  v8 = *MEMORY[0x29EDCA608];
  return v7;
}

char *GetStaticLpPrivate(void)
{
  v2 = *MEMORY[0x29EDCA608];
  {
    T_LP_PRIVATE::T_LP_PRIVATE(&GetStaticLpPrivate(void)::lp_prv);
  }

  v0 = *MEMORY[0x29EDCA608];
  return &GetStaticLpPrivate(void)::lp_prv;
}

char *rrl_free_asn_pdu(void)
{
  v2 = *MEMORY[0x29EDCA608];
  result = GetStaticLpPrivate();
  if (byte_2A1938FF8 == 1)
  {
    GetStaticLpPrivate();
    GenericFreeSort(byte_2A1939000, &ySDL_T_RASN_PDU);
    GetStaticLpPrivate();
    memset_s(byte_2A1939000, 0x528uLL, 0, 0x528uLL);
    result = GetStaticLpPrivate();
    byte_2A1938FF8 = 0;
  }

  v1 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t rrl_init(void)
{
  v2 = *MEMORY[0x29EDCA608];
  GetStaticLpPrivate();
  GetStaticLpPrivate(void)::lp_prv = 1;
  GetStaticLpPrivate();
  byte_2A1938FEC = 0;
  GetStaticLpPrivate();
  byte_2A1938FF8 = 0;
  GetStaticLpPrivate();
  byte_2A1939528 = 0;
  v0 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t rrl_destroy(void)
{
  v2 = *MEMORY[0x29EDCA608];
  GetStaticLpPrivate();
  if (GetStaticLpPrivate(void)::lp_prv == 1)
  {
    rrl_free_asn_pdu();
  }

  GetStaticLpPrivate();
  v0 = *MEMORY[0x29EDCA608];

  return memset_s(&GetStaticLpPrivate(void)::lp_prv, 0x560uLL, 0, 0x560uLL);
}

char *rrl_clean(void)
{
  v3 = *MEMORY[0x29EDCA608];
  result = GetStaticLpPrivate();
  if (GetStaticLpPrivate(void)::lp_prv == 1)
  {
    rrl_free_asn_pdu();
    GetStaticLpPrivate();
    v1 = *MEMORY[0x29EDCA608];

    return memset_s(&byte_2A1939528, 0x1CuLL, 0, 0x1CuLL);
  }

  else
  {
    v2 = *MEMORY[0x29EDCA608];
  }

  return result;
}

uint64_t rrl_clear_gnss_ad(void *__s, int a2)
{
  v10 = *MEMORY[0x29EDCA608];
  if (a2 == 1 || !*(__s + 304))
  {
    v4 = __s[40];
    if (v4)
    {
      MEMORY[0x29C29EAF0](v4, 0x1000C80A2FAA732);
    }

    __s[40] = 0;
    if (a2 == 1)
    {
      goto LABEL_21;
    }
  }

  if (!*(__s + 224))
  {
LABEL_21:
    v5 = __s[36];
    if (v5)
    {
      MEMORY[0x29C29EAF0](v5, 0x1000C804359ADF2);
    }

    __s[36] = 0;
    if (a2 == 1)
    {
      goto LABEL_20;
    }
  }

  if (!*(__s + 336))
  {
LABEL_20:
    v6 = __s[44];
    if (v6)
    {
      MEMORY[0x29C29EAF0](v6, 0x1000C800FACD818);
    }

    __s[44] = 0;
    if (a2 == 1)
    {
      goto LABEL_15;
    }
  }

  if (!*(__s + 388))
  {
LABEL_15:
    v7 = __s[50];
    if (v7)
    {
      free(v7);
      __s[50] = 0;
    }
  }

  result = memset_s(__s, 0x278uLL, 0, 0x278uLL);
  *(__s + 252) = 1;
  *(__s + 520) = -1;
  *(__s + 24) = -1;
  *(__s + 18) = -1;
  *(__s + 236) = -1;
  *(__s + 284) = -1;
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL rrl_set_pos_caps(unsigned __int8 *a1)
{
  v14 = *MEMORY[0x29EDCA608];
  GetStaticLpPrivate();
  if (GetStaticLpPrivate(void)::lp_prv == 1)
  {
    v2 = a1[2];
    if (v2 == 1)
    {
      v3 = a1[5];
      v4 = v3 == 1;
      v5 = a1[4];
      if (v3 == 1)
      {
        v6 = 3;
      }

      else
      {
        v6 = 2;
      }

      v7 = v5 == 1;
      if (v5 == 1)
      {
        v4 = v6;
      }

      v8 = a1[3];
      v10 = v7 || a1[5] == 1;
      if (v8 == 1)
      {
        v11 = v4 | 4;
      }

      else
      {
        v11 = v4;
      }

      if (v8 == 1)
      {
        LOBYTE(v2) = 1;
      }

      else
      {
        LOBYTE(v2) = v10;
      }
    }

    else
    {
      v11 = 0;
    }

    GetStaticLpPrivate();
    byte_2A1938FEC = 1;
    byte_2A1938FED = v2;
    dword_2A1938FF0 = v11;
    byte_2A1938FF4 = 0;
    GetStaticLpPrivate();
    result = byte_2A1938FED != 0;
  }

  else
  {
    result = 0;
  }

  v13 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t rrl_process_downlink_message(uint64_t a1, uint64_t a2, _BYTE *a3, _DWORD *a4, _DWORD *a5, uint64_t a6)
{
  v30 = *MEMORY[0x29EDCA608];
  *a3 = 0;
  *a4 = 15;
  *a6 = 0;
  *(a6 + 4) = 0;
  *(a6 + 9) = 0;
  if (a1 && *(a1 + 8))
  {
    rrl_free_asn_pdu();
    v11 = *(a1 + 8);
    v12 = *a1;
    GetStaticLpPrivate();
    v13 = decode_asn1_message(1, 0, v11, v12, byte_2A1939000, 0);
    GetStaticLpPrivate();
    byte_2A1938FF8 = 1;
    if (v13)
    {
      ms_report_exception(2, 24578, 362, "rrl_process_downlink_message");
      if ((v13 - 32) < 2)
      {
        v14 = 3;
      }

      else
      {
        if (v13 == 1)
        {
          v16 = 0;
          v14 = 0;
          v15 = 99;
          goto LABEL_51;
        }

        if (v13 == 22)
        {
          v14 = 4;
        }

        else
        {
          ms_report_exception(1, 24590, 383, "rrl_process_downlink_message");
          v14 = 2;
        }
      }

      v16 = 0;
      v15 = 1;
      *a3 = 1;
LABEL_51:
      v24 = *(a1 + 8);
      if (v24)
      {
        free(v24);
        *(a1 + 8) = 0;
      }

      *a1 = 0;
      if (*a3 == 1 && rrl_error_handling(v14, a1) != 1)
      {
        *a3 = 0;
        v15 = 99;
      }

      else if (v16)
      {
        v15 = 0;
        goto LABEL_59;
      }

      rrl_free_asn_pdu();
      goto LABEL_59;
    }

    *a6 = 1;
    *(a6 + 8) = **(a1 + 8) >> 5;
    GetStaticLpPrivate();
    if (dword_2A1939008 > 2)
    {
      if (dword_2A1939008 > 4)
      {
        if (dword_2A1939008 == 5)
        {
          *a4 = 5;
          *a5 = 0;
          *(a6 + 9) = 1;
          GetStaticLpPrivate();
          if (dword_2A1939010 < 0 || (GetStaticLpPrivate(), dword_2A1939010 > 255))
          {
            if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v17 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
              GetStaticLpPrivate();
              v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx smlc_code,%d\n", v17, "PSP", 69, "rrl_process_downlink_message", 772, dword_2A1939010);
              LbsOsaTrace_WriteLog(0x13u, __str, v18, 0, 1);
            }
          }

          else
          {
            GetStaticLpPrivate();
            *(a6 + 12) = dword_2A1939010;
          }

          GetStaticLpPrivate();
          v15 = 0;
          v14 = 0;
          *(a6 + 16) = dword_2A1939014;
          v16 = 1;
          goto LABEL_51;
        }

        if (dword_2A1939008 != 6)
        {
          goto LABEL_35;
        }
      }

      else if (dword_2A1939008 != 3)
      {
        if (dword_2A1939008 == 4)
        {
          *a3 = 1;
          *a5 = 3;
          GetStaticLpPrivate();
          if (byte_2A1939050 == 1)
          {
            *(a6 + 9) = 1;
            GetStaticLpPrivate();
            if (dword_2A1939044 < 0 || (GetStaticLpPrivate(), dword_2A1939044 > 255))
            {
              if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
              {
                bzero(__str, 0x410uLL);
                v22 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
                GetStaticLpPrivate();
                v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx smlc_code,%d\n", v22, "PSP", 69, "rrl_process_downlink_message", 772, dword_2A1939044);
                LbsOsaTrace_WriteLog(0x13u, __str, v23, 0, 1);
              }
            }

            else
            {
              GetStaticLpPrivate();
              *(a6 + 12) = dword_2A1939044;
            }

            GetStaticLpPrivate();
            v16 = 0;
            v14 = 0;
            *(a6 + 16) = dword_2A1939048;
            goto LABEL_50;
          }

          goto LABEL_36;
        }

LABEL_35:
        ms_report_exception(1, 24590, 524, "rrl_process_downlink_message");
LABEL_36:
        v16 = 0;
        v14 = 0;
        goto LABEL_50;
      }

LABEL_30:
      v16 = 0;
      v14 = 0;
      *a3 = 1;
      *a5 = 3;
LABEL_50:
      v15 = 0xFFFFFFFFLL;
      goto LABEL_51;
    }

    if (dword_2A1939008)
    {
      if (dword_2A1939008 == 1)
      {
        goto LABEL_30;
      }

      if (dword_2A1939008 != 2)
      {
        goto LABEL_35;
      }

      *a4 = 2;
      v16 = 1;
      *a5 = 1;
      GetStaticLpPrivate();
      if (byte_2A193929C == 1)
      {
        *(a6 + 9) = 1;
        GetStaticLpPrivate();
        if (dword_2A1939294 < 0 || (GetStaticLpPrivate(), dword_2A1939294 > 255))
        {
          if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v27 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
            GetStaticLpPrivate();
            v28 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx smlc_code,%d\n", v27, "PSP", 69, "rrl_process_downlink_message", 772, dword_2A1939294);
            LbsOsaTrace_WriteLog(0x13u, __str, v28, 0, 1);
          }
        }

        else
        {
          GetStaticLpPrivate();
          *(a6 + 12) = dword_2A1939294;
        }

        GetStaticLpPrivate();
        v15 = 0;
        v14 = 0;
        v21 = dword_2A1939298;
LABEL_63:
        *(a6 + 16) = v21;
        goto LABEL_51;
      }
    }

    else
    {
      *a4 = 0;
      *a5 = 2;
      GetStaticLpPrivate();
      v16 = 1;
      if (byte_2A19392B4 == 1)
      {
        *(a6 + 9) = 1;
        GetStaticLpPrivate();
        if (dword_2A19392AC < 0 || (GetStaticLpPrivate(), dword_2A19392AC > 255))
        {
          if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v19 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
            GetStaticLpPrivate();
            v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx smlc_code,%d\n", v19, "PSP", 69, "rrl_process_downlink_message", 772, dword_2A19392AC);
            LbsOsaTrace_WriteLog(0x13u, __str, v20, 0, 1);
          }
        }

        else
        {
          GetStaticLpPrivate();
          *(a6 + 12) = dword_2A19392AC;
        }

        GetStaticLpPrivate();
        v15 = 0;
        v14 = 0;
        v21 = dword_2A19392B0;
        goto LABEL_63;
      }
    }

    v15 = 0;
    v14 = 0;
    goto LABEL_51;
  }

  ms_report_exception(2, 3, 348, "rrl_process_downlink_message");
  v15 = 99;
LABEL_59:
  v25 = *MEMORY[0x29EDCA608];
  return v15;
}

uint64_t rrl_encode_air_message(uint64_t a1, uint64_t a2)
{
  __src[1] = *MEMORY[0x29EDCA608];
  __src[0] = 0;
  LODWORD(size) = 0;
  if (encode_asn1_message(1, 0, __src, 0, &size, a2))
  {
    ms_report_exception(2, 24579, 579, "rrl_encode_air_message");
    v3 = 0;
    v4 = 0;
    *(a1 + 8) = 0;
  }

  else
  {
    v4 = 1;
    v5 = gnssOsa_Calloc("posp_alloc", 18, 1, size);
    *(a1 + 8) = v5;
    memcpy_s("rrl_encode_air_message", 586, v5, size, __src[0], size);
    v3 = size;
  }

  *a1 = v3;
  v6 = *MEMORY[0x29EDCA608];
  return v4;
}

void T_LP_PRIVATE::T_LP_PRIVATE(T_LP_PRIVATE *this)
{
  v3 = *MEMORY[0x29EDCA608];
  *this = 0;
  *(this + 2) = 0;
  *(this + 2) = 0;
  *(this + 12) = 0;
  *(this + 16) = 0;
  memset_s(this + 24, 0x528uLL, 0, 0x528uLL);
  *(this + 1344) = 0;
  *(this + 337) = 0x7FFFFFFF;
  *(this + 1352) = 0;
  *(this + 1360) = 0;
  memset_s(this + 1356, 4uLL, 0, 4uLL);
  memset_s(this + 1364, 8uLL, 0, 8uLL);
  v2 = *MEMORY[0x29EDCA608];
}

uint64_t Gnm55_12ReadMENv(unsigned __int8 *a1, uint64_t a2)
{
  v31 = *MEMORY[0x29EDCA608];
  v28 = 0;
  if ((gnssOsa_getNvSize(1, &v28) & 1) == 0)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v25 = 1572;
      v24 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v9 = "%10u %s%c %s: #%04hx\n";
LABEL_24:
      v11 = snprintf(__str, 0x40FuLL, v9, v24, "GNM", 87, "Gnm55_12ReadMENv", v25, v26, v27);
      v12 = 2;
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  if (!v28)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LTL:Empty file\n", (*&g_MacClockTicksToMsRelation * v10), "GNM", 73, "Gnm55_12ReadMENv");
      v12 = 4;
LABEL_25:
      LbsOsaTrace_WriteLog(0xBu, __str, v11, v12, 1);
      goto LABEL_26;
    }

    goto LABEL_26;
  }

  v4 = a2;
  Nv = gnssOsa_readNv(1, a1, a2);
  if (Nv != a2)
  {
    v13 = Nv;
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v14 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v26 = a2;
      v27 = v13;
      v25 = 1571;
      v9 = "%10u %s%c %s: #%04hx LTL:ReqRead,%u,ActualRead,%zu\n";
LABEL_23:
      v24 = v14;
      goto LABEL_24;
    }

LABEL_26:
    v21 = 0;
    goto LABEL_27;
  }

  __dst = 0;
  if (a2 <= 3)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 87, "Gnm55_30GetNVDataVersion", 770);
      LbsOsaTrace_WriteLog(0xBu, __str, v7, 2, 1);
    }

    v8 = 0;
LABEL_21:
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v14 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v26 = v8;
      v27 = 3;
      v25 = 263;
      v9 = "%10u %s%c %s: #%04hx LTL:Version,Read,%u,Expected,%u\n";
      goto LABEL_23;
    }

    goto LABEL_26;
  }

  memcpy_s("Gnm55_30GetNVDataVersion", 432, &__dst, 4u, a1, 4uLL);
  v8 = __dst;
  if (__dst != 3)
  {
    goto LABEL_21;
  }

  *__str = 0;
  memcpy_s("Gnm55_36GetNVDataCS", 556, __str, 2u, a1 + 6, 2uLL);
  v15 = *__str;
  if (v15 != Gnm27_04ComputeCS(a1, 6u))
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      goto LABEL_26;
    }

    bzero(__str, 0x410uLL);
    v25 = 771;
    v24 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v9 = "%10u %s%c %s: #%04hx LTL:HeaderCS\n";
    goto LABEL_24;
  }

  *__str = 0;
  memcpy_s("Gnm55_36GetNVDataCS", 556, __str, 2u, a1 + 1538, 2uLL);
  v16 = *__str;
  if (v16 != Gnm27_04ComputeCS(a1 + 8, 0x5FAu))
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      goto LABEL_26;
    }

    bzero(__str, 0x410uLL);
    v25 = 771;
    v24 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v9 = "%10u %s%c %s: #%04hx LTL:Master LTL Table\n";
    goto LABEL_24;
  }

  *__str = 0;
  memcpy_s("Gnm55_36GetNVDataCS", 556, __str, 2u, a1 + 3032, 2uLL);
  v17 = *__str;
  if (v17 != Gnm27_04ComputeCS(a1 + 1540, 0x5D4u))
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      goto LABEL_26;
    }

    bzero(__str, 0x410uLL);
    v25 = 771;
    v24 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v9 = "%10u %s%c %s: #%04hx LTL:KF CLT ADC Data\n";
    goto LABEL_24;
  }

  *__str = 0;
  memcpy_s("Gnm55_36GetNVDataCS", 556, __str, 2u, a1 + 4548, 2uLL);
  v18 = *__str;
  if (v18 != Gnm27_04ComputeCS(a1 + 3034, 0x5EAu))
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      goto LABEL_26;
    }

    bzero(__str, 0x410uLL);
    v25 = 771;
    v24 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v9 = "%10u %s%c %s: #%04hx LTL:Init LTL Table\n";
    goto LABEL_24;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v19 = mach_continuous_time();
    v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LTL:Read ME variable data Size,%zubytes\n", (*&g_MacClockTicksToMsRelation * v19), "GNM", 73, "Gnm55_12ReadMENv", v4);
    v21 = 1;
    LbsOsaTrace_WriteLog(0xBu, __str, v20, 4, 1);
  }

  else
  {
    v21 = 1;
  }

LABEL_27:
  v22 = *MEMORY[0x29EDCA608];
  return v21;
}

uint64_t Gnm55_13WriteMENv(unsigned __int8 *a1, unsigned int a2)
{
  v11 = *MEMORY[0x29EDCA608];
  v3 = gnssOsa_storeBufferToNv(1, a1, a2);
  if (v3)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LTL:WriteSuccess Len,%ubytes\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 73, "Gnm55_13WriteMENv", a2);
      v6 = 4;
LABEL_6:
      LbsOsaTrace_WriteLog(0xBu, __str, v5, v6, 1);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx LTL:ReqWrite,%u\n", (*&g_MacClockTicksToMsRelation * v7), "GNM", 87, "Gnm55_13WriteMENv", 1570, a2);
    v6 = 2;
    goto LABEL_6;
  }

  v8 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t Gnm55_14ReadXOCal(uint64_t a1)
{
  v20 = *MEMORY[0x29EDCA608];
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  memset(__src, 0, sizeof(__src));
  v14 = 0;
  if ((gnssOsa_getNvSize(2, &v14) & 1) == 0)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0);
    if (!result)
    {
      goto LABEL_10;
    }

    bzero(__str, 0x410uLL);
    v11 = 1572;
    v10 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v5 = "%10u %s%c %s: #%04hx\n";
LABEL_9:
    v8 = snprintf(__str, 0x40FuLL, v5, v10, "GNM", 87, "Gnm55_14ReadXOCal", v11, v12, v13);
    LbsOsaTrace_WriteLog(0xBu, __str, v8, 2, 1);
    result = 0;
    goto LABEL_10;
  }

  Nv = gnssOsa_readNv(2, __src, 0x44uLL);
  if (Nv != 68)
  {
    v6 = Nv;
    result = LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0);
    if (!result)
    {
      goto LABEL_10;
    }

    bzero(__str, 0x410uLL);
    v7 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v12 = 68;
    v13 = v6;
    v11 = 1571;
    v5 = "%10u %s%c %s: #%04hx LTL:ReqRead,%u,ActualRead,%zu\n";
    v10 = v7;
    goto LABEL_9;
  }

  v3 = HIWORD(v19);
  if (v3 != Gnm27_04ComputeCS(__src, 0x42u))
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0);
    if (!result)
    {
      goto LABEL_10;
    }

    bzero(__str, 0x410uLL);
    v11 = 771;
    v10 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v5 = "%10u %s%c %s: #%04hx LTL:Coef Payload\n";
    goto LABEL_9;
  }

  memcpy_s("Gnm55_14ReadXOCal", 272, (a1 + 12), 0x2Cu, __src, 0x2CuLL);
  memcpy_s("Gnm55_14ReadXOCal", 277, (a1 + 56), 0x12u, &v17 + 12, 0x12uLL);
  memcpy_s("Gnm55_14ReadXOCal", 282, (a1 + 74), 4u, &v18 + 14, 4uLL);
  result = 1;
LABEL_10:
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Gnm55_15WriteXOCal(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  memset(__dst, 0, sizeof(__dst));
  memcpy_s("Gnm55_15WriteXOCal", 298, __dst, 0x44u, (a1 + 12), 0x2CuLL);
  memcpy_s("Gnm55_15WriteXOCal", 302, &v11 + 12, 0x18u, (a1 + 56), 0x12uLL);
  memcpy_s("Gnm55_15WriteXOCal", 306, &v12 + 14, 6u, (a1 + 74), 4uLL);
  HIWORD(v13) = Gnm27_04ComputeCS(__dst, 0x42u);
  v2 = gnssOsa_storeBufferToNv(2, __dst, 68);
  if (v2)
  {
    gnssOsa_flushNv();
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LTL:MECoef store success len,%ubytes\n", (*&g_MacClockTicksToMsRelation * v3), "GNM", 73, "Gnm55_15WriteXOCal", 68);
      v5 = 4;
LABEL_6:
      LbsOsaTrace_WriteLog(0xBu, __str, v4, v5, 1);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx LTL:ME Coef File ReqWrite,%u\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 87, "Gnm55_15WriteXOCal", 1570, 68);
    v5 = 2;
    goto LABEL_6;
  }

  v7 = *MEMORY[0x29EDCA608];
  return v2;
}

size_t Gnm55_16GetVarNvData(unsigned __int8 *a1, unsigned int a2, int a3, unsigned __int8 *a4, unsigned int a5, unsigned int *a6, int a7)
{
  v17 = *MEMORY[0x29EDCA608];
  result = Gnm55_18GetNvDataSize(a7);
  if (result)
  {
    v14 = result;
    v15 = *a6;
    if ((v15 + result) + 2 <= a5 && result + a3 <= a2)
    {
      a4[v15] = result;
      a4[*a6 + 1] = BYTE1(result);
      memcpy_s("Gnm55_16GetVarNvData", 351, &a4[*a6 + 2], a5 - *a6 - 2, &a1[a3], result);
      *a6 += v14 + 2;
      result = 1;
    }

    else
    {
      result = 0;
    }
  }

  v16 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Gnm55_18GetNvDataSize(int a1)
{
  v8 = *MEMORY[0x29EDCA608];
  if (a1 > 7)
  {
    switch(a1)
    {
      case 8:
        result = 768;
        goto LABEL_16;
      case 16:
        result = 4;
        goto LABEL_16;
      case 32:
        result = 24;
        goto LABEL_16;
    }
  }

  else
  {
    switch(a1)
    {
      case 1:
        result = 1004;
        goto LABEL_16;
      case 2:
        result = 502;
        goto LABEL_16;
      case 4:
        result = 720;
        goto LABEL_16;
    }
  }

  IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0);
  result = 0;
  if (IsLoggingAllowed)
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx LTL:NVType,%u\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 87, "Gnm55_18GetNvDataSize", 770, a1);
    LbsOsaTrace_WriteLog(0xBu, __str, v5, 2, 1);
    result = 0;
  }

LABEL_16:
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL Gnm55_17GetMENvData(unsigned __int8 *a1, unsigned int a2, unsigned __int16 *a3, unsigned __int8 *a4, unsigned int a5, int a6, int a7)
{
  v20 = *MEMORY[0x29EDCA608];
  NvDataSize = Gnm55_18GetNvDataSize(a7);
  if (NvDataSize && (v14 = *a3, NvDataSize + v14 + 2 <= a2) && NvDataSize + a6 <= a5)
  {
    v18 = &a1[v14];
    v19 = *&a1[v14];
    v15 = v19 == NvDataSize;
    if (v19 == NvDataSize)
    {
      memcpy_s("Gnm55_17GetMENvData", 387, &a4[a6], a5 - a6, v18 + 2, NvDataSize);
      LOWORD(v14) = *a3;
    }

    *a3 = v19 + v14 + 2;
  }

  else
  {
    v15 = 0;
  }

  v16 = *MEMORY[0x29EDCA608];
  return v15;
}

uint64_t Gnm55_34GetAgeingTime(unsigned __int8 *a1)
{
  v7 = *MEMORY[0x29EDCA608];
  __dst = 0;
  memcpy_s("Gnm55_34GetAgeingTime", 514, &__dst, 8u, a1 + 1522, 8uLL);
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v1 = mach_continuous_time();
    v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LTL:PrevAgeing GPSTime,%llus\n", (*&g_MacClockTicksToMsRelation * v1), "GNM", 73, "Gnm55_34GetAgeingTime", __dst);
    LbsOsaTrace_WriteLog(0xBu, __str, v2, 4, 1);
  }

  result = __dst;
  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Gnm55_35GetGenMasterLTLTime(unsigned __int8 *a1)
{
  v7 = *MEMORY[0x29EDCA608];
  __dst = 0;
  memcpy_s("Gnm55_35GetGenMasterLTLTime", 536, &__dst, 8u, a1 + 1530, 8uLL);
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v1 = mach_continuous_time();
    v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LTL:MasterLTL GPSTime,%llus\n", (*&g_MacClockTicksToMsRelation * v1), "GNM", 73, "Gnm55_35GetGenMasterLTLTime", __dst);
    LbsOsaTrace_WriteLog(0xBu, __str, v2, 4, 1);
  }

  result = __dst;
  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Gnm55_46SetGenMasterLTLTime(unsigned __int8 *a1, unsigned int a2)
{
  v8 = *MEMORY[0x29EDCA608];
  if (a2 > 0x601)
  {
    *__str = Gnm53_11GetCurrentReferenceTime();
    if (*__str < Gnm53_12GetBirthTime())
    {
      *__str = Gnm53_12GetBirthTime();
    }

    result = memcpy_s("Gnm55_46SetGenMasterLTLTime", 721, a1 + 1530, 8u, __str, 8uLL);
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v3), "GNM", 87, "Gnm55_46SetGenMasterLTLTime", 770);
      result = LbsOsaTrace_WriteLog(0xBu, __str, v4, 2, 1);
    }
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Gnm55_47SetNVDataCS(unsigned __int8 *a1, unsigned int a2, unsigned int a3)
{
  v10 = *MEMORY[0x29EDCA608];
  v3 = a3;
  if (a3 + 2 <= a2)
  {
    result = Gnm27_04ComputeCS(a1, a3);
    *&a1[v3] = result;
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "GNM", 87, "Gnm55_47SetNVDataCS", 770);
      result = LbsOsaTrace_WriteLog(0xBu, __str, v6, 2, 1);
    }
  }

  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t KfirController_Init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = MEMORY[0x2A1C7C4A8](a1, a2, a3, a4, a5, a6);
  v10 = *MEMORY[0x29EDCA608];
  bzero(v9, 0x42F0uLL);
  KFP_setDefaultConfig(v9);
  KFP_init(v6 + 129376, v9);
  *(v6 + 2037080) = 0xFFEFFFFFFFFFFFFFLL;
  Set_Mat_Const(3, 1u, 3, (v6 + 2037088), 0.0);
  Set_Mat_Const(3, 1u, 3, (v6 + 2037120), 0.0);
  v7 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t KfirController_ProcessMeas(uint64_t a1, char *a2, uint64_t a3)
{
  v15 = *MEMORY[0x29EDCA608];
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  if (MeasSyncher_getNextRecord(a1, v13))
  {
    v6 = 1;
    do
    {
      v7 = v6;
      v8 = KFP_run(a1 + 129376, v13, 1, a3);
      if ((v8 & 1) == 0)
      {
        break;
      }

      NextRecord = MeasSyncher_getNextRecord(a1, v13);
      v6 = (v7 + 1);
    }

    while (NextRecord);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  if (v7)
  {
    v10 = v8;
  }

  else
  {
    v10 = 1;
  }

  *a2 = v10;
  v11 = *MEMORY[0x29EDCA608];
  return v7;
}

void KfirController_GetPosition(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v145 = *MEMORY[0x29EDCA608];
  v118 = 0.0;
  TCU_GetOutTime(a2, &v118);
  if ((g_FPE_LogSeverity & 8) != 0)
  {
    v9 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    if (g_TCU)
    {
      v10 = *(g_TCU + 8);
    }

    else
    {
      v10 = 0.0;
    }

    v8 = v118;
    LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f generating position for = %4.6f time ", "KfirController_GetPosition", 198, v9, v10, v118);
  }

  else
  {
    v8 = v118;
  }

  bzero((a1 + 2027888), 0x23E8uLL);
  KFP_createOutputFromKFPool(a1 + 129376, (a1 + 2027888), v8);
  bzero(a4, 0x3F8uLL);
  v11 = *(a2 + 40) - *(a2 + 64);
  *(a4 + 1) = v11;
  v12 = *(a2 + 26);
  *(a4 + 11) = v12;
  v13 = 604800.0;
  if (v11 >= 604800.0)
  {
    v14 = 1;
    v13 = -604800.0;
  }

  else
  {
    if (v11 >= 0.0)
    {
      goto LABEL_12;
    }

    v14 = -1;
  }

  *(a4 + 1) = v11 + v13;
  *(a4 + 11) = v14 + v12;
LABEL_12:
  a4[4] = *(a2 + 20);
  *(a4 + 20) = *(a2 + 16);
  a4[1] = 0;
  v15 = *(a2 + 32);
  if (v15 >= 0.0)
  {
    LODWORD(v13) = *(a2 + 76);
    a4[1] = (v15 + *&v13 * -4294967300.0);
  }

  *a4 = *a2;
  v16 = *(a1 + 2036336);
  *(a4 + 24) = v16;
  *(a4 + 7) = 0x500000005;
  a4[9] = 0;
  if ((*(a1 + 2036940) & 0x80000000) == 0 && (!*(a1 + 2037064) || *(a1 + 2037072) <= 0.7))
  {
    a4[9] = 3;
  }

  if (v16)
  {
    memset(v144, 0, sizeof(v144));
    v142 = 0u;
    v143 = 0u;
    memset(v141, 0, sizeof(v141));
    memset(v140, 0, sizeof(v140));
    v138 = 0u;
    v139 = 0u;
    v136 = 0u;
    v137 = 0u;
    v135 = 0u;
    v117 = 0;
    calcElipseParams((a1 + 2027888), a1 + 2036344, &v135, v144, &v142, &v117, v140, v141);
    v17 = *(&v142 + 1);
    v18 = v143;
    *(a4 + 12) = vextq_s8(*(v144 + 8), *(v144 + 8), 8uLL);
    *(a4 + 26) = v144[1].i64[1];
    memset(v134, 0, sizeof(v134));
    Mult_Mat_MatT(9, v141, 3, a1 + 2027920, 3, v134);
    *(a4 + 54) = *(v134 + 8);
    *(a4 + 29) = *(&v134[1] + 1);
    v19 = Norma_Vec(3, v134);
    v20 = sqrt(*&v134[1] * *&v134[1] + *(v134 + 1) * *(v134 + 1));
    *(a4 + 30) = v19;
    *(a4 + 31) = v20;
    v21 = *(a1 + 2027968) * 57.2957795;
    if (v21 < 0.0)
    {
      v21 = v21 + 360.0;
    }

    *(a4 + 32) = v21;
    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    v129 = 0u;
    Mult_Mat_Mat(9, v141, 9, a1 + 2036424, 9, &v129);
    Mult_Mat_MatT(9, &v129, 9, v141, 9, &v129);
    memset(v128, 0, sizeof(v128));
    Copy_SubMat_from_Mat(1.0, 9, (a1 + 2036504), 0, 0, 2, 2u, 9, v128);
    v22 = *(a1 + 2027968);
    v123[0] = 0x200000002;
    v23 = __sincos_stret(v22);
    v123[1] = *&v23.__cosval;
    *&v123[2] = -v23.__sinval;
    v124 = v23;
    v125 = 0u;
    v126 = 0u;
    v127 = 0;
    memset(v122, 0, sizeof(v122));
    Mult_Mat_Mat(9, v123, 9, v128, 9, v122);
    Mult_Mat_MatT(9, v122, 9, v123, 9, v122);
    v24 = *(v122 + (DWORD1(v122[0]) + 1) + 1);
    if (v24 < 0.0)
    {
      if (g_FPE_LogSeverity)
      {
        v25 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        if (g_TCU)
        {
          v26 = *(g_TCU + 8);
        }

        else
        {
          v26 = 0.0;
        }

        LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to sqrt a negative number %f", "KfirController_GetPosition", 283, v25, v26, v24);
      }

      g_FPE_AssertFlag = 1;
      v24 = 1.0;
    }

    v27 = sqrt(v24);
    if (v27 <= 1.0)
    {
      v28 = asin(v27) * 57.2957795;
    }

    else
    {
      v28 = 180.0;
    }

    v29 = *(&v135 + 1);
    if (*(&v135 + 1) < 0.0)
    {
      if (g_FPE_LogSeverity)
      {
        v30 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        if (g_TCU)
        {
          v31 = *(g_TCU + 8);
        }

        else
        {
          v31 = 0.0;
        }

        LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to sqrt a negative number %f", "KfirController_GetPosition", 288, v30, v31, v29);
      }

      g_FPE_AssertFlag = 1;
      v29 = 1.0;
    }

    *(a4 + 5) = sqrt(v29);
    v32 = DWORD1(v135);
    v33 = (DWORD1(v135) + 1);
    v34 = *(&v135 + v33 + 1);
    if (v34 < 0.0)
    {
      if (g_FPE_LogSeverity)
      {
        v35 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        if (g_TCU)
        {
          v36 = *(g_TCU + 8);
        }

        else
        {
          v36 = 0.0;
        }

        LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to sqrt a negative number %f", "KfirController_GetPosition", 291, v35, v36, v34);
        v32 = DWORD1(v135);
        v33 = (DWORD1(v135) + 1);
      }

      g_FPE_AssertFlag = 1;
      v34 = 1.0;
    }

    *(a4 + 6) = sqrt(v34);
    v37 = *(&v135 + 1);
    v38 = *(&v135 + 1) + *(&v135 + v33 + 1);
    if (v38 < 0.0)
    {
      if (g_FPE_LogSeverity)
      {
        v39 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        if (g_TCU)
        {
          v40 = *(g_TCU + 8);
        }

        else
        {
          v40 = 0.0;
        }

        LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to sqrt a negative number %f", "KfirController_GetPosition", 294, v39, v40, v38);
        v32 = DWORD1(v135);
        v37 = *(&v135 + 1);
        v33 = (DWORD1(v135) + 1);
      }

      g_FPE_AssertFlag = 1;
      v38 = 1.0;
    }

    v41 = v117;
    *(a4 + 7) = sqrt(v38);
    *(a4 + 8) = v41;
    v42 = v37 + *(&v135 + v33 + 1) + *(&v135 + (2 * v32 + 2) + 1);
    if (v42 < 0.0)
    {
      if (g_FPE_LogSeverity)
      {
        v43 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        if (g_TCU)
        {
          v44 = *(g_TCU + 8);
        }

        else
        {
          v44 = 0.0;
        }

        LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to sqrt a negative number %f", "KfirController_GetPosition", 298, v43, v44, v42);
      }

      g_FPE_AssertFlag = 1;
      v42 = 1.0;
    }

    *(a4 + 9) = sqrt(v42);
    v45 = (a1 + 2036592);
    v46 = (*(a1 + 2036588) + 1);
    v47 = *(a1 + 2036592 + 8 * v46);
    if (v47 < 0.0)
    {
      if (g_FPE_LogSeverity)
      {
        v48 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        if (g_TCU)
        {
          v49 = *(g_TCU + 8);
        }

        else
        {
          v49 = 0.0;
        }

        LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to sqrt a negative number %f", "KfirController_GetPosition", 301, v48, v49, v47);
        v46 = (*(a1 + 2036588) + 1);
      }

      g_FPE_AssertFlag = 1;
      v47 = 1.0;
    }

    v50 = sqrt(v47);
    *(a4 + 10) = v50;
    v51 = v45[v46];
    if (v51 < 0.0)
    {
      if (g_FPE_LogSeverity)
      {
        v52 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        if (g_TCU)
        {
          v53 = *(g_TCU + 8);
        }

        else
        {
          v53 = 0.0;
        }

        LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to sqrt a negative number %f", "KfirController_GetPosition", 304, v52, v53, v51);
        v50 = *(a4 + 10);
      }

      g_FPE_AssertFlag = 1;
    }

    *(a4 + 11) = v50;
    v54 = DWORD1(v129);
    v55 = *(&v129 + 1) + *(&v129 + (DWORD1(v129) + 1) + 1);
    if (v55 < 0.0)
    {
      if (g_FPE_LogSeverity)
      {
        v56 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        if (g_TCU)
        {
          v57 = *(g_TCU + 8);
        }

        else
        {
          v57 = 0.0;
        }

        LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to sqrt a negative number %f", "KfirController_GetPosition", 307, v56, v57, v55);
        v54 = DWORD1(v129);
      }

      g_FPE_AssertFlag = 1;
      v55 = 1.0;
    }

    *(a4 + 12) = sqrt(v55);
    v58 = (2 * v54 + 2);
    v59 = *(&v129 + v58 + 1);
    if (v59 < 0.0)
    {
      if (g_FPE_LogSeverity)
      {
        v60 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        if (g_TCU)
        {
          v61 = *(g_TCU + 8);
        }

        else
        {
          v61 = 0.0;
        }

        LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to sqrt a negative number %f", "KfirController_GetPosition", 310, v60, v61, v59);
        v54 = DWORD1(v129);
        v58 = (2 * DWORD1(v129) + 2);
      }

      g_FPE_AssertFlag = 1;
      v59 = 1.0;
    }

    *(a4 + 13) = sqrt(v59);
    v62 = *(&v129 + 1) + *(&v129 + (v54 + 1) + 1) + *(&v129 + v58 + 1);
    if (v62 < 0.0)
    {
      if (g_FPE_LogSeverity)
      {
        v63 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        if (g_TCU)
        {
          v64 = *(g_TCU + 8);
        }

        else
        {
          v64 = 0.0;
        }

        LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to sqrt a negative number %f", "KfirController_GetPosition", 313, v63, v64, v62);
      }

      g_FPE_AssertFlag = 1;
      v62 = 1.0;
    }

    *(a4 + 14) = sqrt(v62);
    *(a4 + 15) = v28;
    v65 = *v45;
    if (*v45 < 0.0)
    {
      if (g_FPE_LogSeverity)
      {
        v66 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        if (g_TCU)
        {
          v67 = *(g_TCU + 8);
        }

        else
        {
          v67 = 0.0;
        }

        LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to sqrt a negative number %f", "KfirController_GetPosition", 317, v66, v67, v65);
      }

      g_FPE_AssertFlag = 1;
      v65 = 1.0;
    }

    *(a4 + 16) = sqrt(v65);
    *(a4 + 17) = v17;
    *(a4 + 9) = v18;
    v68 = *(a1 + 2036896) / 299792458.0;
    *(a4 + 20) = v68;
    *(a4 + 21) = v68 + *(a1 + 2036904) / 299792458.0;
    *(a4 + 22) = v68 + *(a1 + 2036920) / 299792458.0;
    *(a4 + 23) = *(a1 + 2036888) / 299792458.0;
    v69 = 936;
    v70 = 702;
    do
    {
      *(a4 + v69 - 672) = *(a3 + v69);
      *&a4[v70 - 562] = *(a3 + v70 * 4);
      ++v69;
      v70 += 2;
    }

    while (v69 != 984);
    *(a4 + 59) = *(a3 + 800);
    *(a4 + 480) = *(a3 + 788);
    *(a4 + 122) = *(a3 + 6384);
    *(a4 + 121) = *(a3 + 6376);
    *(a4 + 492) = *(a3 + 6364);
    *(a4 + 62) = *(a3 + 11952);
    *(a4 + 504) = *(a3 + 11940);
    if (g_TCU)
    {
      v71 = *(a4 + 1) + *(g_TCU + 64);
    }

    else
    {
      v71 = 0.0;
    }

    if (*(a1 + 2037016) == 1)
    {
      *(a4 + 312) = 1;
      a4[79] = *(a1 + 2037020);
      *(a4 + 320) = *(a1 + 2037024);
      v72 = (v71 - *(a1 + 2037032)) * 1000.0;
      v73 = v72 < 0.0;
      v74 = floor(v72 + 0.5);
      v75 = -floor(0.5 - v72);
      if (!v73)
      {
        v75 = v74;
      }

      a4[81] = v75;
      *(a4 + 82) = *(a4 + 78);
    }

    if (*(a1 + 2037040) == 1)
    {
      *(a4 + 360) = 1;
      a4[91] = *(a1 + 2037044);
      *(a4 + 368) = *(a1 + 2037048);
      v76 = (v71 - *(a1 + 2037056)) * 1000.0;
      v73 = v76 < 0.0;
      v77 = floor(v76 + 0.5);
      v78 = -floor(0.5 - v76);
      if (!v73)
      {
        v78 = v77;
      }

      a4[93] = v78;
    }

    if (*(a1 + 2036968) == 1)
    {
      *(a4 + 440) = 1;
      a4[111] = *(a1 + 2036972);
      *(a4 + 448) = *(a1 + 2036976);
      v79 = (v71 - *(a1 + 2036984)) * 1000.0;
      v73 = v79 < 0.0;
      v80 = floor(v79 + 0.5);
      v81 = -floor(0.5 - v79);
      if (!v73)
      {
        v81 = v80;
      }

      a4[113] = v81;
      *(a4 + 114) = *(a4 + 110);
    }

    if (*(a1 + 2036992) == 1)
    {
      *(a4 + 424) = 1;
      a4[107] = *(a1 + 2036996);
      *(a4 + 432) = *(a1 + 2037000);
      v82 = (v71 - *(a1 + 2037008)) * 1000.0;
      v73 = v82 < 0.0;
      v83 = floor(v82 + 0.5);
      v84 = -floor(0.5 - v82);
      if (!v73)
      {
        v84 = v83;
      }

      a4[109] = v84;
    }

    if (*(a1 + 2036944) == 1)
    {
      *(a4 + 408) = 1;
      a4[103] = *(a1 + 2036948);
      *(a4 + 416) = *(a1 + 2036952);
      v85 = (v71 - *(a1 + 2036960)) * 1000.0;
      v73 = v85 < 0.0;
      v86 = floor(v85 + 0.5);
      v87 = -floor(0.5 - v85);
      if (!v73)
      {
        v87 = v86;
      }

      a4[105] = v87;
    }

    if ((g_FPE_LogSeverity & 8) != 0)
    {
      v88 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v89 = g_TCU ? *(g_TCU + 8) : 0.0;
      v90 = *(&v135 + DWORD1(v135) + 1);
      LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f FpeNavSol = %f, %d, %.8f, %.8f, %.8f,   %f, %f, %f, %f, %f, %f, %f, %f, %f,             %f, %f, %f,    %f, %f, %f, %f, %f, %f, %f, %f, %f,    %f, %f", "KfirController_GetPosition", 367, v88, v89, *(a4 + 1), *(a4 + 11), *(a4 + 25) * 57.2957795, *(a4 + 24) * 57.2957795, *(a4 + 26), *(&v135 + 1), v90, *(&v135 + (2 * DWORD1(v135)) + 1), *&v136, *(&v135 + (DWORD1(v135) + 1) + 1), *(&v135 + ((2 * DWORD1(v135)) | 1u) + 1), *(&v136 + 1), *(&v135 + (DWORD1(v135) + 2) + 1), *(&v135 + (2 * DWORD1(v135) + 2) + 1), *(a4 + 27), *(a4 + 28), *(a4 + 29), *(&v129 + 1), *(&v129 + DWORD1(v129) + 1), *(&v129 + (2 * DWORD1(v129)) + 1), *&v130, *(&v129 + (DWORD1(v129) + 1) + 1), *(&v129 + ((2 * DWORD1(v129)) | 1u) + 1), *(&v130 + 1), *(&v129 + (DWORD1(v129) + 2) + 1), *(&v129 + (2 * DWORD1(v129) + 2) + 1), *(a1 + 2027968), 0.0);
      if ((g_FPE_LogSeverity & 8) != 0)
      {
        v91 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v92 = g_TCU ? *(g_TCU + 8) : 0.0;
        LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f $LCMSG: syncedFields = {numUsedFilters:%d, chosenOne:%d}", "KfirController_GetPosition", 371, v91, v92, *(a1 + 2017688), *(a1 + 2017692));
        if ((g_FPE_LogSeverity & 8) != 0)
        {
          v93 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          v94 = g_TCU ? *(g_TCU + 8) : 0.0;
          v95 = *(a1 + 2027968);
          v96 = *(a1 + 2027936);
          v97 = *(a1 + 2028060);
          v116 = (a1 + 2027928);
          LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f $LCMSG: DEVICE = {estPos:[%f %.12f %.12f %f %f], estVel:[%.12f %.12f %f],             estOrientation:[%f %f %f %f %f %f %f %f %f], ellipseParams:[%f %f %f], posValid:%u, headValid:%u, posConf:%u, WeekNo:%d}", "KfirController_GetPosition", 384, v93, v94, *(a4 + 1), *(a4 + 24) * 57.2957795, *(a4 + 25) * 57.2957795, *(a4 + 26), v116[5], *v116, v116[1], v116[2], v116[17], v116[v97 + 17], v116[(2 * v97) + 17], v116[18], v116[(v97 + 1) + 17], v116[((2 * v97) | 1u) + 17], v116[19], v116[(v97 + 2) + 17], v116[(2 * v97 + 2) + 17], v17, *&v18, *(&v18 + 1), *(a1 + 2036337), *(a1 + 2036338), a4[9], *(a4 + 11));
          if ((g_FPE_LogSeverity & 8) != 0)
          {
            v98 = a1 + 117472 * *(a1 + 2017692) + 129400;
            v99 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
            v100 = g_TCU ? *(g_TCU + 8) : 0.0;
            LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f $LCMSG: syncedFields = {Roll:%3.1f, Pitch:%3.1f, Yaw:%3.1f}", "KfirController_GetPosition", 393, v99, v100, *(v98 + 17736), *(v98 + 17744), *(v98 + 17752));
            if ((g_FPE_LogSeverity & 8) != 0)
            {
              v101 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
              v102 = g_TCU ? *(g_TCU + 8) : 0.0;
              LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f $LCMSG: syncedFields = {RollRt:%3.1f, PitchRt:%3.1f, YawRt:%3.1f}", "KfirController_GetPosition", 399, v101, v102, *(v98 + 17768), *(v98 + 17776), *(v98 + 17784));
              if ((g_FPE_LogSeverity & 8) != 0)
              {
                v103 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
                v104 = g_TCU ? *(g_TCU + 8) : 0.0;
                LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f $LCMSG: syncedFields = {BiasGx:%2.5f, BiasGy:%2.5f, BiasGz:%2.5f}", "KfirController_GetPosition", 405, v103, v104, *(v98 + 17120) * 57.2957795, *(v98 + 17128) * 57.2957795, *(v98 + 17136) * 57.2957795);
                if ((g_FPE_LogSeverity & 8) != 0)
                {
                  v105 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
                  v106 = g_TCU ? *(g_TCU + 8) : 0.0;
                  LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f $LCMSG: syncedFields = {BiasAx:%1.4f, BiasAy:%1.4f, BiasAz:%1.4f}", "KfirController_GetPosition", 411, v105, v106, *(v98 + 17088), *(v98 + 17096), *(v98 + 17104));
                  if ((g_FPE_LogSeverity & 8) != 0)
                  {
                    v107 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
                    if (g_TCU)
                    {
                      v108 = *(g_TCU + 8);
                    }

                    else
                    {
                      v108 = 0.0;
                    }

                    v109 = *(v98 + 67376);
                    LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f $LCMSG: syncedFields = {CCH_Value:%1.4f, Lever_Arm:%1.2f}", "KfirController_GetPosition", 416, v107, v108, v109, *(v98 + 17720));
                  }
                }
              }
            }
          }
        }
      }
    }

    v110 = *(a1 + 2037080);
    if (v110 > 0.0)
    {
      v111 = *(a1 + 2027952) - v110;
      memset(v121, 0, sizeof(v121));
      memset(v120, 0, sizeof(v120));
      memset(v119, 0, sizeof(v119));
      Mult_Mat_scalar(v111, 3, (a1 + 2037120), 3, v121);
      Add_Mat(3, (a1 + 2037088), 3, v121, 3, v120);
      Sub_Mat(3, (a1 + 2027888), 3, v120, 3, v119);
      if (Norma_Vec(3, v119) > 10.0 && (g_FPE_LogSeverity & 8) != 0)
      {
        v112 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        if (g_TCU)
        {
          v113 = *(g_TCU + 8);
        }

        else
        {
          v113 = 0.0;
        }

        v115 = Norma_Vec(3, v119);
        LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f $LCMSG: DEVICE = Warning: Position updated by %0.1fm more than expected (i.e. 10m)", "KfirController_GetPosition", 436, v112, v113, v115);
      }
    }

    Copy_Mat(3, (a1 + 2027888), 3, (a1 + 2037088));
    Copy_Mat(3, (a1 + 2027920), 3, (a1 + 2037120));
    *(a1 + 2037080) = *(a1 + 2027952);
  }

  v114 = *MEMORY[0x29EDCA608];
}

uint64_t Centroid_SV_Pos(int (*a1)[3], unsigned int a2, double *a3)
{
  v20 = *MEMORY[0x29EDCA608];
  if (!a2)
  {
    goto LABEL_12;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = &(*a1)[2];
  v9 = a2;
  do
  {
    v10 = *(v8 - 1);
    v11 = *v8;
    if (!*(v8 - 1))
    {
      if (!v11)
      {
        goto LABEL_7;
      }

      v10 = 0;
    }

    v7 += *(v8 - 2);
    v5 += v10;
    v4 += v11;
    ++v6;
LABEL_7:
    v8 += 3;
    --v9;
  }

  while (v9);
  v19[1] = v5;
  v19[2] = v4;
  v19[0] = v7;
  if (!v6)
  {
LABEL_12:
    result = 0;
    goto LABEL_13;
  }

  for (i = 0; i != 3; ++i)
  {
    *(&v17 + i) = 1.0 / v6 * v19[i];
  }

  ECEF2Geo(&v17, &WGS84_Datum, v15);
  v16 = 0;
  Geo2ECEF(v15, &WGS84_Datum, &v17);
  *a3 = v17;
  *(a3 + 2) = v18;
  result = 1;
LABEL_13:
  v14 = *MEMORY[0x29EDCA608];
  return result;
}

void *Init_DB_Nav_Soln(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x29EDCA608];
  *(&__src[8] + 3) = 0u;
  v4 = (a3 + 920);
  memset(&__src[11], 0, 160);
  v5 = *(a2 + 992);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  *&__src[0] = *(a1 + 8);
  *(&__src[0] + 1) = v6;
  v8 = *(a2 + 1000);
  LODWORD(__src[1]) = *a1;
  BYTE4(__src[1]) = *(a1 + 5);
  WORD3(__src[1]) = *(a1 + 16);
  DWORD2(__src[1]) = __src[0];
  memset(&__src[2], 0, 104);
  *&__src[7] = v7;
  *(&__src[8] + 1) = v5;
  *(a1 + 40) = v5;
  DWORD1(__src[9]) = *(a1 + 60);
  BYTE8(__src[9]) = *(a1 + 64);
  *(&__src[9] + 10) = *(a1 + 66);
  __src[10] = *(a1 + 72);
  v9 = *(a2 + 52);
  if (v9 >= 2)
  {
    if (v9 >= 5)
    {
      v12 = 0x4163125300000000;
      v11 = 9999000.0;
      v10 = 9999000.0;
    }

    else
    {
      v10 = 20.0;
      v11 = 3.0;
      v12 = 0x4033C624DD2F1AA0;
    }
  }

  else
  {
    v10 = 3.0;
    v11 = 1.0;
    v12 = 0x40069FBE76C8B439;
  }

  v13 = v8 * 99930819.3;
  memset(&__src[11], 0, 24);
  Geo2ECEF(&__src[11], &WGS84_Datum, &__src[2] + 1);
  NK_Transform_State(__src);
  *(a3 + 4) = 0;
  *(a3 + 8) = 0;
  result = memcpy((a3 + 32), __src, 0x150uLL);
  v15 = vdupq_n_s64(0x4163125300000000uLL);
  *(a3 + 816) = v15;
  *(a3 + 832) = v15;
  *(a3 + 848) = 0x4163125300000000;
  *(a3 + 856) = v12;
  *(a3 + 864) = v11;
  *(a3 + 872) = v10;
  *(a3 + 880) = 0x408F380000000000;
  *(a3 + 888) = v13;
  *(a3 + 896) = v15;
  *(a3 + 912) = 0;
  *(a3 + 744) = 0x4058FF5C28F5C28FLL;
  v16 = vdupq_n_s64(0x4058FF5C28F5C28FuLL);
  *(a3 + 752) = v16;
  *(a3 + 768) = v16;
  *(a3 + 784) = v16;
  *(a3 + 800) = v15;
  v17 = *(a3 + 336);
  *v4 = *(a3 + 320);
  v4[1] = v17;
  v4[2] = *(a3 + 352);
  v18 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t *phiu(uint64_t *result, int a2, unsigned int a3, uint64_t a4, const double *a5, unsigned int a6, double *a7, int a8)
{
  v25 = *MEMORY[0x29EDCA608];
  if (a3)
  {
    v8 = a3;
    v9 = result;
    v10 = a7;
    do
    {
      v11 = *v9++;
      *v10++ = v11;
      --v8;
    }

    while (v8);
  }

  if (a6 >= 2)
  {
    v12 = (a6 - 1) * a2;
    v13 = (a6 - 1) * a8;
    v14 = ((a6 + a6 * a6) >> 1) - a6;
    v15 = 1 - a6;
    do
    {
      v16 = a6 - 1;
      if (a3)
      {
        v17 = 0;
        v18 = a6 - 1;
        do
        {
          v19 = 0.0;
          v20 = a4;
          if (a6 <= a4)
          {
            v19 = *&result[(v12 + v17)];
            v20 = v18;
          }

          if (v20)
          {
            v21 = v20;
            v22 = v14;
            v23 = v17;
            do
            {
              v19 = v19 + *&result[v23] * a5[v22];
              v23 += a2;
              ++v22;
              --v21;
            }

            while (v21);
          }

          a7[(v17++ + v13)] = v19;
          v18 = v20;
        }

        while (v17 != a3);
      }

      v12 -= a2;
      v13 -= a8;
      v14 += v15++;
      --a6;
    }

    while (v16 > 1);
  }

  v24 = *MEMORY[0x29EDCA608];
  return result;
}

void DD_Assist_GLON_Data(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = 0;
  v103 = *MEMORY[0x29EDCA608];
  v7 = a2 + 32;
  v8 = a3 + 11224;
  v9 = a3 + 15352;
  v90 = a3 + 16336;
  v10 = 20400;
  v92 = a3 + 11224;
  v93 = a3 + 15352;
  do
  {
    if (*(v7 + v6) > 0xA5u || *(*(a3 + 16272) + v6) == 1 && a1 - *(v8 + (v6 << 6)) < 241)
    {
      goto LABEL_35;
    }

    memset(v100, 0, 62);
    if (!Core_Get_GLON_Eph((v6 + 1), a1, v100) || *(*(a3 + 16272) + v6) == 1 && SLODWORD(v100[0]) <= *(v8 + (v6 << 6)))
    {
      *(*(a3 + 11216) + 20 * v6 + 8) = 0;
      goto LABEL_35;
    }

    v11 = (WORD2(v100[2]) & 0x800) == 0;
    v12 = *(a3 + 11208);
    if ((*(v12 + v6) & 1) == 0 && (WORD2(v100[2]) & 0x800) == 0)
    {
      v13 = *(a3 + 16288);
      if (*(v13 + v6) != 1)
      {
        goto LABEL_17;
      }

      v14 = (v9 + 36 * v6);
      v15 = *v14;
      if ((*(v14 + 15) & 4) != 0 || v15 + 3600 <= a1)
      {
        if (v15 + 100 < a1)
        {
          *(*(a3 + 16256) + v6) = 0;
          *(v13 + v6) = 0;
        }

LABEL_17:
        v11 = 1;
        goto LABEL_18;
      }

      v11 = 0;
    }

LABEL_18:
    v16 = (v8 + (v6 << 6));
    v17 = v100[3];
    v18 = v100[1];
    v16[2] = v100[2];
    v16[3] = v17;
    *v16 = v100[0];
    v16[1] = v18;
    *(*(a3 + 16248) + v6) = 1;
    *(*(a3 + 16272) + v6) = 1;
    v19 = v11;
    *(v12 + v6) = v19;
    if (v19)
    {
      v20 = 1;
    }

    else
    {
      v20 = 2;
    }

    v21 = *(a3 + 11216) + 20 * v6;
    v22 = (v21 + 12);
    v23 = (v21 + 8);
    if (*(v16 + 1) == 5)
    {
      v24 = v23;
    }

    else
    {
      v24 = v22;
    }

    *v24 = v20;
    if (DWORD2(v100[0]) != 2139062143)
    {
      *(v90 + 4 * v6) = DWORD2(v100[0]);
    }

    if (g_Enable_Event_Log >= 2u)
    {
      EvLog_v("DD_Assist_GLON_Eph received Eph for SV%d ", v6 + 1);
    }

    if (a1 >= 1)
    {
      v25 = 0;
      LODWORD(v26) = 0;
      *(*(a3 + 16304) + v6) = 1;
      v27 = p_NV;
      v28 = p_NV + 72 * (v6 + 1);
      v29 = *v16;
      v30 = v16[1];
      v31 = v16[2];
      *(v28 + 20376) = v16[3];
      *(v28 + 20360) = v31;
      *(v28 + 20344) = v30;
      *(v28 + 20328) = v29;
      v32 = v27 + v10;
      v33 = 55665;
      do
      {
        v34 = *(v32 + v25) ^ BYTE1(v33);
        v33 = 52845 * (v33 + v34) + 22719;
        v26 = (v26 + v34);
        ++v25;
      }

      while (v25 != 64);
      *(v28 + 20320) = v26;
    }

    v35 = 0;
    LODWORD(v36) = 0;
    v37 = *(a3 + 11208);
    v38 = p_NV;
    v39 = p_NV + 19172;
    v40 = *(v37 + 16);
    *(p_NV + 19172) = *v37;
    *(v39 + 16) = v40;
    v41 = 55665;
    do
    {
      v42 = *(v38 + 19168 + v35) ^ BYTE1(v41);
      v41 = 52845 * (v41 + v42) + 22719;
      v36 = (v36 + v42);
      ++v35;
    }

    while (v35 != 32);
    *(v38 + 19160) = v36;
    v8 = v92;
    v9 = v93;
LABEL_35:
    ++v6;
    v10 += 72;
  }

  while (v6 != 24);
  v43 = a4;
  if (a1 >= 1)
  {
    v44 = 0;
    v45 = a3 + 12760;
    do
    {
      if (*(*(a3 + 11208) + v44) == 1 && (*(*(v43 + 904) + v44) & 1) == 0 && *(v7 + v44) <= 0xA5u && (*(*(a3 + 16280) + v44) != 1 || a1 - *(v45 + 108 * v44) >= 241))
      {
        v101 = 0u;
        memset(v102, 0, 28);
        memset(v100, 0, sizeof(v100));
        GLON_GPS_BinEph = EE_Get_GLON_GPS_BinEph((v44 + 1), a1, v100);
        v47 = *(a3 + 16280);
        if (!GLON_GPS_BinEph || (v48 = v100[0], *(v47 + v44) == 1) && SLODWORD(v100[0]) <= *(v45 + 108 * v44))
        {
          *(v47 + v44) = 0;
        }

        else
        {
          v49 = (v45 + 108 * v44);
          *(v49 + 92) = *(v102 + 12);
          v50 = v102[0];
          v51 = v100[3];
          v49[4] = v101;
          v49[5] = v50;
          v52 = v100[1];
          v49[2] = v100[2];
          v49[3] = v51;
          *v49 = v100[0];
          v49[1] = v52;
          *(*(a3 + 16248) + v44) = 1;
          *(*(a3 + 16280) + v44) = 1;
          memset(v99, 0, sizeof(v99));
          v98 = 0u;
          v97 = 0u;
          *&v96 = __PAIR64__(DWORD1(v100[0]), v48);
          LOBYTE(v97) = BYTE8(v100[0]);
          *(&v97 + 1) = *(v100 + 9);
          v53 = 21;
          v54 = 11;
          v55 = &v100[1] + 8;
          do
          {
            v56 = &v96 + v54;
            *v56 = *v55;
            *(v56 + 1) = *(v55 + 1);
            v55 += 4;
            --v53;
            v54 += 3;
          }

          while (v53 > 1);
          Debug_Log_GPS_Eph(2, v44 + 101, &v96);
        }

        v43 = a4;
      }

      ++v44;
    }

    while (v44 != 24);
  }

  v57 = 0;
  *&v100[0] = 0;
  WORD4(v100[0]) = 0;
  memset(v100 + 12, 0, 24);
  while (*(*(a3 + 16288) + v57) == 1 && a1 - *(v9 + 36 * v57) <= 1800)
  {
    v58 = v57 + 1;
LABEL_75:
    v57 = v58;
    if (v58 == 24)
    {
      goto LABEL_76;
    }
  }

  v58 = v57 + 1;
  if (!Core_Get_GLON_Alm((v57 + 1), a1, v100) || *(*(a3 + 16288) + v57) == 1 && SLODWORD(v100[0]) <= *(v9 + 36 * v57))
  {
    goto LABEL_75;
  }

  if (a1 < 1)
  {
    goto LABEL_65;
  }

  *v95 = 0;
  v96 = 0.0;
  API_Get_UTC_Cor(1, &v96);
  GPS_To_Glon_Time(0, a1 / 0x93A80, (a1 % 0x93A80), v96, v95, &v95[1], &v94);
  v59 = v95[1] - WORD4(v100[0]);
  v60 = v59 + 1461;
  if (v59 >= -730)
  {
    v60 = v95[1] - WORD4(v100[0]);
  }

  v61 = v59 <= 729 ? v60 : v59 - 1461;
  if ((v61 + 7) < 0x1D)
  {
LABEL_65:
    v62 = (v9 + 36 * v57);
    v63 = v100[1];
    *v62 = v100[0];
    v62[1] = v63;
    *(v62 + 8) = v100[2];
    *(*(a3 + 16256) + v57) = 1;
    *(*(a3 + 16288) + v57) = 1;
    DD_GLON_Alm_Set_Health_Frq(v100, a3);
    if (g_Enable_Event_Log >= 2u)
    {
      EvLog_v("DD_Assist_GLON_Alm received Alm for SV%d ", v57 + 1);
    }

    if (a1 >= 1)
    {
      v64 = 0;
      LODWORD(v65) = 0;
      v66 = p_NV + 48 * (v57 + 1);
      v67 = (v66 + 19192);
      v68 = *(v62 + 8);
      v69 = *v62;
      *(v66 + 19216) = v62[1];
      *(v66 + 19200) = v69;
      *(v66 + 19232) = v68;
      v70 = v66 + 19200;
      v71 = 55665;
      do
      {
        v72 = *(v70 + v64) ^ BYTE1(v71);
        v71 = 52845 * (v71 + v72) + 22719;
        v65 = (v65 + v72);
        ++v64;
      }

      while (v64 != 40);
      *v67 = v65;
    }

    v73 = 0;
    LODWORD(v74) = 0;
    v75 = *(a3 + 11208);
    v76 = p_NV;
    v77 = p_NV + 19172;
    v78 = *(v75 + 16);
    *(p_NV + 19172) = *v75;
    *(v77 + 16) = v78;
    v79 = 55665;
    do
    {
      v80 = *(v76 + 19168 + v73) ^ BYTE1(v79);
      v79 = 52845 * (v79 + v80) + 22719;
      v74 = (v74 + v80);
      ++v73;
    }

    while (v73 != 32);
    *(v76 + 19160) = v74;
    v9 = v93;
    goto LABEL_75;
  }

  EvLog_v("DD_Assist_GLON_Alm: Rejected! SV %d DayNo too old or new %d", v57 + 1, v61);
LABEL_76:
  *&v100[0] = 0;
  WORD4(v100[0]) = 0;
  HIDWORD(v100[0]) = 0;
  LOBYTE(v100[1]) = 0;
  DWORD1(v100[1]) = 0;
  BYTE8(v100[1]) = 0;
  if ((*(a3 + 16296) != 1 || a1 - *(a3 + 16216) >= 43201) && Core_Get_GLON_Clk1(a1, v100) && (*(a3 + 16296) != 1 || SLODWORD(v100[0]) > *(a3 + 16216)))
  {
    v81 = 0;
    LODWORD(v82) = 0;
    v83 = v100[0];
    *(a3 + 16216) = v100[0];
    v84 = *(v100 + 12);
    *(a3 + 16228) = *(v100 + 12);
    *(a3 + 16296) = 1;
    v85 = p_NV;
    v86 = p_NV + 19208;
    *(p_NV + 19208) = v83;
    *(v86 + 12) = v84;
    v87 = 55665;
    do
    {
      v88 = *(v86 + v81) ^ BYTE1(v87);
      v87 = 52845 * (v87 + v88) + 22719;
      v82 = (v82 + v88);
      ++v81;
    }

    while (v81 != 32);
    *(v85 + 19200) = v82;
    if (g_Enable_Event_Log >= 2u)
    {
      EvLog_v("DD_Assist_GLON_UTC received Clk1 ");
    }
  }

  v89 = *MEMORY[0x29EDCA608];
}

BOOL NK_Least_Squares_Core(double *a1, double (*a2)[3], signed int a3, int a4, unsigned int a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9)
{
  v112 = *MEMORY[0x29EDCA608];
  _MergedGlobals_6[0] = 0;
  *a8 = -1;
  v101 = a4;
  if (a4)
  {
    v110 = -1;
    v111 = -1;
    v11 = (*(a9 + 494) & 0x80000000) == 0 && *(a9 + 500) == 1;
  }

  else
  {
    v11 = 0;
    xmmword_2A1971FBB = 0u;
    xmmword_2A1971FCB = 0u;
    xmmword_2A1971FAB = 0u;
    v110 = -1;
    v111 = -1;
    *(a9 + 400) = 0u;
    *(a9 + 416) = 0u;
    *(a9 + 432) = 0;
  }

  v106 = 0.0;
  v12 = NK_Least_Squares_Update(a1, a3, 1, v11, v109, a9);
  v13 = v12;
  if (!v12)
  {
    goto LABEL_151;
  }

  __n = 8 * a3;
  if (__n > 0x38)
  {
    __assert_rtn("NK_Least_Squares_Core", "NK_Least_Squares_Check.cpp", 234, "(sizeof(p_Lsq_Intl->dX)) >= (NumStates*sizeof(p_Lsq_Intl->ACovMat[0]))");
  }

  v86 = v12;
  v87 = a2;
  v14 = 0;
  v97 = 0;
  v91 = v11 - a3;
  v100 = (a9 + 112);
  __src = (a9 + 112 + 8 * ((a3 + a3 * a3) / 2));
  v102 = a3;
  v103 = a9 + 592;
  v105 = a3;
  v96 = 1;
  while (2)
  {
    if (*(a9 + 408) <= 0.0)
    {
      v15 = v91;
    }

    else
    {
      v15 = v91 + 1;
    }

    memcpy(a9, __src, __n);
    v16 = 0;
    v17 = (v14 + 1);
    v99 = v14;
    v14 = (v14 - 1);
    v18 = *(a9 + 576);
    v94 = v17;
    v19 = v17 - 1;
    v20 = v18;
    v21 = 0.0;
    v22 = 0.0;
    do
    {
      if (v20)
      {
        *(v20 + 8 * v16) = 0;
      }

      v23 = *(*(a9 + 520) + v16);
      if (v14 <= 1 && (v24 = v19, v25 = &v110 + 1, *(*(a9 + 520) + v16)))
      {
        while (1)
        {
          v26 = *v25++;
          if (v16 == v26)
          {
            break;
          }

          if (!--v24)
          {
            goto LABEL_19;
          }
        }

        v27 = 0;
      }

      else
      {
LABEL_19:
        if (!*(*(a9 + 520) + v16))
        {
          goto LABEL_34;
        }

        v27 = 1;
      }

      v28 = *(a9 + 528);
      v11 = v11 & 0xFFFFFFFF00000000 | *(a9 + 496);
      NK_Least_Obs_Equ_SV(v16 != *(a9 + 512), *(a9 + 488), v11, *(v103 + 4 * v16), *(a9 + 516), &a1[7 * v16], v109, *(v28 + 8 * v16));
      if (v105)
      {
        v29 = 0.0;
        v30 = v109;
        v31 = a9;
        v32 = v102;
        do
        {
          v33 = *v30++;
          v34 = v33;
          v35 = *v31++;
          v29 = v29 + v34 * v35;
          --v32;
        }

        while (v32);
      }

      else
      {
        v29 = 0.0;
      }

      v36 = *(v28 + 8 * v16) - v29;
      v37 = *(a9 + 544);
      *(v37 + 8 * v16) = v36;
      if (v27)
      {
        v38 = *(*(a9 + 536) + 8 * v16);
        v22 = v22 + 1.0 / v38;
        v21 = v21 + v36 * v36 * (1.0 / v38);
        ++v15;
        if (v101)
        {
          if (v20)
          {
            v39 = *(a9 + 568);
            *(v39 + 8 * v16) = v38;
            v40 = *(a9 + 584);
            *(v40 + 8 * v16) = *(v37 + 8 * v16);
            invtst(v100, v109, v105, 0.0, 0.0, 1.0e20, &v106);
            v106 = fabs(v106);
            v41 = *(v39 + 8 * v16) - v106;
            *(v20 + 8 * v16) = v41;
            if (v41 <= 0.0)
            {
              if (v41 < -0.005)
              {
                EvLog_v("NK_Least_Squares_Core:  Suspect Post Res Var %d %d %f %f %f %f ", v16, v15, v41, *(v39 + 8 * v16), v106, *(v40 + 8 * v16));
                v18 = *(a9 + 576);
                v20 = v18;
              }

              *(v20 + 8 * v16) = 0;
            }
          }
        }
      }

LABEL_34:
      ++v16;
    }

    while (v16 != 48);
    v42 = 0.0;
    if (v22 > 0.0)
    {
      v42 = sqrt(v21 / v22);
    }

    **(a9 + 552) = v42;
    v43 = *(a9 + 560);
    LODWORD(v44) = v99;
    if (!v43)
    {
      break;
    }

    if (v15 < 1)
    {
      v45 = 0.0;
    }

    else
    {
      v45 = v21 / v15;
    }

    *v43 = v45;
    if (v99 > 2 || (v101 & 1) == 0)
    {
      goto LABEL_137;
    }

    v47 = v99 > 1 || v15 < 2;
    v48 = v45 < 0.2 || v47;
    if (v48 == 1)
    {
      if (v99 <= 0)
      {
        if (v96)
        {
          v80 = 0;
        }

        else
        {
          v80 = v97;
        }

        v81 = HIDWORD(v97);
        if (v96)
        {
          v81 = 0;
        }

        v97 = __PAIR64__(v81, v80);
        *(a8 + v99) = -1;
        goto LABEL_137;
      }
    }

    else if (!v99)
    {
      xmmword_2A1971FEB = 0u;
      unk_2A1971FFB = 0u;
      xmmword_2A1971FDB = 0u;
    }

    v49 = -30.0;
    if (a5 >= 6)
    {
      if (a5 - 6 > 1)
      {
        EvCrt_Illegal_Default("MeasurementToBeRejected", 0x8D6u);
        v18 = *(a9 + 576);
      }

      else
      {
        v49 = 0.0;
      }
    }

    v50 = 0;
    v51 = 0;
    v52 = 0;
    v53 = -1;
    v54 = 0.0;
    v55 = 0.0;
    v56 = -1;
    while (2)
    {
      v57 = *(v18 + 8 * v52);
      if (v57 <= 0.0)
      {
        if (_MergedGlobals_6[v52 + 49] != 1)
        {
          goto LABEL_80;
        }

        EvCrt_v("MeasurementToBeRejected: ERROR outlier_tested TRUE", v55, v54);
LABEL_92:
        v53 = -1;
        v66 = 1;
LABEL_93:
        v68 = v96;
        v67 = v97;
        goto LABEL_112;
      }

      v58 = *(*(a9 + 568) + 8 * v52);
      if (v58 < 0.01)
      {
        ++v50;
      }

      if (v57 / v58 < 0.01)
      {
        v59 = 1;
      }

      else
      {
        v59 = v48;
      }

      if (v59)
      {
        if (v57 / v58 < 0.005 && (_MergedGlobals_6[v52 + 49] & 1) != 0)
        {
          EvLog_v("MeasurementToBeRejected: AddBack %f", v57 / v58);
          goto LABEL_92;
        }
      }

      else
      {
        v60 = *(*(a9 + 584) + 8 * v52);
        v61 = v58 < 0.01;
        v62 = v60 * v60 / v57;
        if (v62 <= 4.0)
        {
          v61 = 0;
        }

        v51 += v61;
        if (v62 > v55)
        {
          v56 = v52;
          v55 = v62;
        }

        if (v60 < v49 && v62 > v54)
        {
          v53 = v52;
          v54 = v62;
        }

        _MergedGlobals_6[v52 + 49] = 1;
      }

LABEL_80:
      if (++v52 != 48)
      {
        continue;
      }

      break;
    }

    if (*(a9 + 504) == 1 && *(a9 + 500) <= 1u && (v53 & 0x80000000) == 0)
    {
      EvLog_v("MaxPosit %f %d", v54, v53);
      v55 = 999.9;
      goto LABEL_87;
    }

    if (v56 < 0)
    {
      v66 = 0;
      v53 = v56;
      goto LABEL_93;
    }

    v53 = v56;
LABEL_87:
    v63 = *(a7 + v53) ^ 1;
    v64 = *(a6 + v53);
    if (v64 > 0x10)
    {
      if (v64 < 0x21)
      {
        v65 = GaussCritVal[v63] + (GaussCritVal[(v63 + 1)] - GaussCritVal[v63]) * (v64 - 16) / 17.0;
      }

      else
      {
        v65 = GaussCritVal[(v63 + 1)];
      }
    }

    else
    {
      v65 = GaussCritVal[v63];
    }

    if (v55 >= v65)
    {
      v70 = *(a9 + 504);
      v85 = *(a6 + v53);
      if (_MergedGlobals_6[v53 + 1] == 1)
      {
        EvCrt_v("MeasurementToBeRejected: Overridden %d: Gss MaxRatio %d %g %d");
      }

      else
      {
        EvCrt_v("MeasurementToBeRejected:  %d: Gss MaxRatio %d %g %d");
      }
    }

    else
    {
      if (v15 <= 6)
      {
        v69 = v15 - 2;
        if (v64 > 0xC)
        {
          if (v64 < 0x24)
          {
            v65 = TauCritVal[3 * v69 + v63] + (TauCritVal[3 * v69 + (v63 + 1)] - TauCritVal[3 * v69 + v63]) * (v64 - 12) / 24.0;
          }

          else
          {
            v65 = TauCritVal[3 * v69 + (v63 + 1)];
          }
        }

        else
        {
          v65 = TauCritVal[3 * v69 + v63];
        }
      }

      v71 = **(a9 + 560);
      if (v55 < v65 * v71)
      {
        v66 = 0;
        v53 = -1;
        goto LABEL_93;
      }

      if (_MergedGlobals_6[v53 + 1] == 1)
      {
        EvCrt_v("MeasurementToBeRejected: Overridden %d: Tau MaxRatio %d %g %g %g %d %d");
      }

      else
      {
        EvLog_v("MeasurementToBeRejected: %d: Tau MaxRatio %d %g %g %g %d %d", *(a9 + 504), v53, v55, v71, v65, v15, v64);
      }
    }

    v68 = v96;
    v67 = v97;
    if ((_MergedGlobals_6[v53 + 49] & 1) == 0)
    {
      EvCrt_v("MeasurementToBeRejected: ERROR outlier_tested FALSE");
    }

    v66 = 0;
    _MergedGlobals_6[v53 + 49] = 0;
LABEL_112:
    if (v68)
    {
      v67 = v51;
    }

    v72 = HIDWORD(v97);
    if (v68)
    {
      v72 = v50;
    }

    v97 = __PAIR64__(v72, v67);
    v44 = v99;
    if (v99 > 1)
    {
      if (v66)
      {
        v74 = *(a9 + 536);
        goto LABEL_125;
      }
    }

    else
    {
      *(a8 + v99) = v53;
      if (v53 >= 0)
      {
        v73 = 1;
      }

      else
      {
        v73 = v66;
      }

      if (v73)
      {
        v74 = *(a9 + 536);
        if ((v66 & 1) == 0)
        {
          v75 = v99;
          v76 = v53;
          v77 = -*(v74 + 8 * v53);
          v14 = v99;
          v78 = v105;
          v79 = v95;
          v44 = v94;
          goto LABEL_126;
        }

LABEL_125:
        v78 = v105;
        v75 = v14;
        v77 = *(v74 + 8 * *(a8 + v14));
        EvLog_v("MeasurementToBeRejected: Add back %d ", *(a8 + v14));
        v53 = *(a8 + v14);
        v76 = v53;
        v79 = v95;
LABEL_126:
        v95 = v79 & 0xFFFFFFFF00000000 | *(a9 + 496);
        NK_Least_Obs_Equ_SV(v53 != *(a9 + 512), *(a9 + 488), *(a9 + 496), *(v103 + 4 * v76), *(a9 + 516), &a1[7 * v76], v109, *(*(a9 + 528) + 8 * v76));
        umeas(v100, v78, v77, v109, v108, v107, &v106, 1.0e20);
        if (v66)
        {
          *(&v110 + v44) = -1;
          *(a8 + v75) = -1;
        }

        else
        {
          *(&v110 + v44) = *(a8 + v75);
          v14 = v44;
        }

        v96 = 0;
        v101 = v66 ^ 1;
        continue;
      }

LABEL_137:
      if (!v44 && (HIDWORD(v97) - 1) <= 1 && v97 == HIDWORD(v97))
      {
        _MergedGlobals_6[0] = 1;
      }
    }

    break;
  }

  if (*(a9 + 491) >= 1)
  {
    ud2var(v100, v105, *(a9 + 491) + 1, 1u, (a9 + 8 * *(a9 + 491) + 56));
  }

  v13 = v86;
  if (*(a9 + 492) >= 1)
  {
    ud2var(v100, v105, *(a9 + 492) + 1, 1u, (a9 + 8 * *(a9 + 492) + 56));
  }

  if (*(a9 + 493) >= 1)
  {
    ud2var(v100, v105, *(a9 + 493) + 1, 1u, (a9 + 8 * *(a9 + 493) + 56));
  }

  v82 = *(a9 + 488);
  if ((v82 & 0x8000000000000000) == 0)
  {
    Comp_NEDvar_UDU(v100, v105, *(a9 + 488), v87, (a9 + 8 * v82 + 56));
  }

  if ((*(a9 + 494) & 0x80000000) == 0)
  {
    ud2var(v100, v105, *(a9 + 494) + 1, 1u, (a9 + 8 * *(a9 + 494) + 56));
  }

LABEL_151:
  v83 = *MEMORY[0x29EDCA608];
  return v13;
}

BOOL NK_Least_Squares_Update(double *a1, signed int a2, int a3, int a4, double *a5, uint64_t a6)
{
  v28[8] = *MEMORY[0x29EDCA608];
  *(a6 + 112) = 0u;
  v11 = a6 + 112;
  *(a6 + 368) = 0u;
  *(a6 + 384) = 0u;
  *(a6 + 336) = 0u;
  *(a6 + 352) = 0u;
  if (a3)
  {
    v12 = 1.0e20;
  }

  else
  {
    v12 = -1.0;
  }

  *(a6 + 304) = 0uLL;
  *(a6 + 320) = 0uLL;
  *(a6 + 272) = 0uLL;
  *(a6 + 288) = 0uLL;
  *(a6 + 240) = 0uLL;
  *(a6 + 256) = 0uLL;
  *(a6 + 208) = 0uLL;
  *(a6 + 224) = 0uLL;
  *(a6 + 176) = 0uLL;
  *(a6 + 192) = 0uLL;
  *(a6 + 144) = 0uLL;
  *(a6 + 160) = 0uLL;
  *(a6 + 128) = 0uLL;
  if (a2 >= 1)
  {
    v13 = 0;
    v14 = vdup_n_s32(a2 - 1);
    do
    {
      v15 = vcge_u32(v14, vorr_s8(vdup_n_s32(v13), 0x100000000));
      if (v15.i8[0])
      {
        *(v11 + 8 * (((v13 + 2 + (v13 + 2) * v13) >> 1) - 1)) = 0x426D1A94A2000000;
      }

      if (v15.i8[4])
      {
        *(v11 + 8 * ((((v13 + 2) * (v13 + 3)) >> 1) - 1)) = 0x426D1A94A2000000;
      }

      v13 += 2;
    }

    while (((a2 + 1) & 0xFFFFFFFE) != v13);
  }

  if (a4)
  {
    v16 = *(a6 + 494);
    if (v16 >= 1)
    {
      *(v11 + 8 * (((v16 + 2 + (v16 + 2) * v16) >> 1) - 1)) = 0x4039000000000000;
    }
  }

  v25 = 0;
  if (*(a6 + 408) > 0.0)
  {
    *(a5 + 2) = 0u;
    *(a5 + 3) = 0u;
    *a5 = 0u;
    *(a5 + 1) = 0u;
    *a5 = *(a6 + 416);
    a5[1] = *(a6 + 424);
    a5[2] = *(a6 + 432);
    a5[a2] = *(a6 + 400);
    umeas(v11, a2, *(a6 + 408), a5, v28, v27, &v25, 1.0e20);
  }

  v17 = 0;
  v18 = (a6 + 592);
  do
  {
    if (*(*(a6 + 520) + v17) == 1)
    {
      v6 = v6 & 0xFFFFFFFF00000000 | *(a6 + 496);
      NK_Least_Obs_Equ_SV(v17 != *(a6 + 512), *(a6 + 488), v6, *v18, *(a6 + 516), a1, a5, *(*(a6 + 528) + 8 * v17));
      umeas(v11, a2, *(*(a6 + 536) + 8 * v17), a5, v28, v27, &v25, v12);
    }

    ++v17;
    a1 += 7;
    v18 += 4;
  }

  while (v17 != 48);
  v19 = 1;
  ud2var(v11, a2, 1, a2, v26);
  if (a2 >= 1)
  {
    if (v26[0] <= 1000000000.0)
    {
      v20 = 1;
      do
      {
        v21 = v20;
        if (a2 == v20)
        {
          break;
        }

        v22 = v26[v20++];
      }

      while (v22 <= 1000000000.0);
      v19 = v21 >= a2;
    }

    else
    {
      v19 = 0;
    }
  }

  v23 = *MEMORY[0x29EDCA608];
  return v19;
}

void NK_Least_Obs_Equ_SV(int a1, unint64_t a2, int a3, int a4, int a5, double *a6, double *a7, double a8)
{
  v18 = *MEMORY[0x29EDCA608];
  v15 = HIBYTE(a2);
  bzero(a7, 8 * HIBYTE(a2) + 8);
  *a7 = -*a6;
  a7[1] = -a6[1];
  a7[2] = -a6[2];
  if (!a1)
  {
    goto LABEL_15;
  }

  if (a5 != 1)
  {
    a7[v15 - 1] = 1.0;
    goto LABEL_15;
  }

  if (a4 == 2)
  {
    if ((a2 >> 8) >> 24 <= 0)
    {
      goto LABEL_13;
    }

    v16 = HIDWORD(a2);
  }

  else if (a4 == 4)
  {
    if ((a2 >> 16) >> 24 < 1)
    {
      goto LABEL_13;
    }

    v16 = a2 >> 40;
  }

  else
  {
    if (a2 >> 24 <= 0)
    {
      goto LABEL_13;
    }

    v16 = a2 >> 24;
  }

  a7[v16 & 0x7F] = 1.0;
LABEL_13:
  if ((a2 >> 24) >> 24 >= 1)
  {
    a7[HIWORD(a2) & 0x7F] = -a6[6];
  }

LABEL_15:
  a7[v15] = a8;
  v17 = *MEMORY[0x29EDCA608];
}

unsigned __int8 *NK_Least_Squares_Cross_Check(unsigned __int8 *result, uint64_t a2, uint64_t a3, double *a4)
{
  v75 = *MEMORY[0x29EDCA608];
  v5 = *(a2 + 11496);
  v6 = a4[431];
  *(a3 + 31344) = 0;
  v7 = *(a4 + 3599);
  v8 = 0.0;
  if (v7 < 1 || a4[v7 + 125] >= 9999000.0 || *(a3 + 24496) >= 1.3e11)
  {
    v12 = 0;
    v11 = 0.0;
    v9 = 0.0;
    v10 = 0.0;
  }

  else
  {
    v9 = a4[102];
    v10 = *(a3 + 736) * 299792458.0;
    v11 = v9 - v10;
    v12 = 1;
  }

  v13 = *(a4 + 3600);
  if (v13 < 1 || a4[v13 + 125] >= 9999000.0 || *(a3 + 24504) >= 1.3e11)
  {
    v16 = 0;
    v14 = 0.0;
    v15 = 0.0;
  }

  else
  {
    v14 = a4[104];
    v15 = *(a3 + 744) * 299792458.0;
    v8 = v14 - v15;
    v16 = 1;
  }

  v17 = *(a4 + 3601);
  v18 = 0.0;
  if (v17 < 1 || a4[v17 + 125] >= 9999000.0 || *(a3 + 24512) >= 1.3e11)
  {
    v21 = 0;
    v19 = 0.0;
    v20 = 0.0;
  }

  else
  {
    v19 = a4[106];
    v20 = *(a3 + 752) * 299792458.0;
    v18 = v19 - v20;
    v21 = 1;
  }

  if (*a4 < 5u || *(a4 + 3464) != 1)
  {
    goto LABEL_110;
  }

  v22 = v5 + v6;
  v23 = fabs(v11);
  v24 = v23 > v22 ? v12 : 0;
  if ((v24 & 1) == 0)
  {
    v25 = fabs(v8) > v22 ? v16 : 0;
    if ((v25 & 1) == 0)
    {
      v26 = fabs(v18) > v22 ? v21 : 0;
      if (v26 != 1)
      {
        goto LABEL_110;
      }
    }
  }

  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v74 = 0;
  v31 = 0;
  v32 = 2960;
  v33 = 4832;
  v34 = "Any_SV_Meas_Edit";
  do
  {
    if (*(a3 + v32) == 1)
    {
      v35 = *(a3 + v27 + 3056);
      if ((v35 - 1) >= 0x1D)
      {
        if (v35)
        {
          v71 = v21;
          v72 = v16;
          v69 = result;
          v73 = v20;
          v70 = v18;
          v38 = v8;
          v39 = v15;
          v40 = v19;
          v41 = v14;
          v42 = v9;
          v43 = v31;
          v44 = v29;
          v45 = v28;
          v46 = v23;
          v47 = v34;
          EvCrt_Illegal_Default(v34, 0xA6u);
          v34 = v47;
          v23 = v46;
          v28 = v45;
          result = v69;
          v21 = v71;
          v16 = v72;
          v29 = v44;
          v31 = v43;
          v9 = v42;
          v14 = v41;
          v19 = v40;
          v15 = v39;
          v8 = v38;
          v18 = v70;
          v20 = v73;
        }

        else
        {
          v36 = result[v27];
          if (v36 == 4)
          {
            if (v21)
            {
              v28 = (v28 + 1);
              if (fabs(v18 + *(a3 + v33)) - fabs(*(a3 + v33)) <= 0.0)
              {
                v48 = v74 + 1;
              }

              else
              {
                v48 = v74 - 1;
              }

              LODWORD(v74) = v48;
            }
          }

          else if (v36 == 2)
          {
            if (v16)
            {
              v29 = (v29 + 1);
              if (fabs(v8 + *(a3 + v33)) - fabs(*(a3 + v33)) <= 0.0)
              {
                v37 = HIDWORD(v74) + 1;
              }

              else
              {
                v37 = HIDWORD(v74) - 1;
              }

              HIDWORD(v74) = v37;
            }
          }

          else if (v12)
          {
            ++v30;
            if (fabs(v11 + *(a3 + v33)) - fabs(*(a3 + v33)) <= 0.0)
            {
              v31 = (v31 + 1);
            }

            else
            {
              v31 = (v31 - 1);
            }
          }
        }
      }
    }

    ++v32;
    v33 += 8;
    v27 += 4;
  }

  while (v32 != 3008);
  v49 = v23 < 10000.0 ? v12 : 0;
  if (v49)
  {
    goto LABEL_110;
  }

  v50 = fabs(v8) < 10000.0 ? v16 : 0;
  if (v50)
  {
    goto LABEL_110;
  }

  v51 = fabs(v18) < 10000.0 ? v21 : 0;
  if (v51)
  {
    goto LABEL_110;
  }

  if (v12)
  {
    v53 = v31 >= 0 && v30 != 0;
    if (!(v29 + v28) || v29 >= 1 && SHIDWORD(v74) > 0 || (v54 = 0, v28 >= 1) && v74 >= 1)
    {
      v54 = 1;
      *(a3 + 31344) = 1;
    }

    v55 = result;
    v56 = v29;
    v57 = v28;
    NK_Least_Squares_Cross_Check_Adj(result, a3, 1, v53, v54, v10, v9, v11);
    LODWORD(v28) = v57;
    result = v55;
    LODWORD(v29) = v56;
  }

  else
  {
    v54 = 0;
  }

  if (v16)
  {
    v59 = v74 >= 0 && v29 != 0;
    if (!(v30 + v28) || v30 >= 1 && v31 > 0 || v28 >= 1 && v74 >= 1)
    {
      v54 = 1;
      *(a3 + 31344) = 1;
    }

    v60 = result;
    v61 = v54;
    v62 = v29;
    v63 = v28;
    NK_Least_Squares_Cross_Check_Adj(result, a3, 2, v59, v61, v15, v14, v8);
    LODWORD(v28) = v63;
    result = v60;
    LODWORD(v29) = v62;
  }

  if (v21)
  {
    v65 = v74 >= 0 && v28 != 0;
    if (!(v30 + v29) || v30 >= 1 && v31 > 0 || (v66 = 0, v29 >= 1) && SHIDWORD(v74) >= 1)
    {
      v66 = 1;
      *(a3 + 31344) = 1;
    }

    v67 = *MEMORY[0x29EDCA608];

    return NK_Least_Squares_Cross_Check_Adj(result, a3, 4, v65, v66, v20, v19, v18);
  }

  else
  {
LABEL_110:
    v68 = *MEMORY[0x29EDCA608];
  }

  return result;
}

unsigned __int8 *NK_Least_Squares_Cross_Check_Adj(unsigned __int8 *result, uint64_t a2, uint64_t a3, int a4, int a5, double a6, double a7, double a8)
{
  v21 = *MEMORY[0x29EDCA608];
  if (a4 && a5)
  {
    v10 = a3;
    v12 = result;
    result = EvLog_nd("NK_LSq_Cross_Check:  KF Clock bias change: ", 4, a3, a3, a6, a7, a8);
    switch(v10)
    {
      case 1:
        v13 = 736;
        break;
      case 4:
        v13 = 752;
        break;
      case 2:
        v13 = 744;
        break;
      default:
LABEL_10:
        v14 = 0;
        while (1)
        {
          if ((*(a2 + v14 + 2960) & 1) == 0)
          {
            v15 = *(a2 + 4 * v14 + 3056);
            if ((v15 - 1) >= 0x1D)
            {
              if (!v15)
              {
                goto LABEL_22;
              }

              result = EvCrt_Illegal_Default("Any_SV_Meas_Edit", 0xA6u);
            }
          }

          if (v10 == 4 || v10 == 2)
          {
            if (*v12 != v10)
            {
              goto LABEL_22;
            }
          }

          else
          {
            v16 = *v12;
            v17 = v16 > 5;
            v18 = (1 << v16) & 0x2A;
            if (v17 || v18 == 0)
            {
              goto LABEL_22;
            }
          }

          *(a2 + 4832 + 8 * v14) = *(a2 + 4832 + 8 * v14) + a8;
          *(a2 + 19584 + 8 * v14) = *(a2 + 19584 + 8 * v14) + a8;
          *(a2 + 5216 + 8 * v14) = *(a2 + 5216 + 8 * v14) + a8;
          *(a2 + 5600 + 8 * v14) = *(a2 + 5600 + 8 * v14) + a8;
LABEL_22:
          ++v14;
          v12 += 4;
          if (v14 == 48)
          {
            goto LABEL_26;
          }
        }
    }

    *(a2 + v13) = a7 * 0.00000000333564095;
    goto LABEL_10;
  }

LABEL_26:
  v20 = *MEMORY[0x29EDCA608];
  return result;
}

void NK_Least_Squares_Check()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v2 = v1;
  v127 = v3;
  v125 = v4;
  v6 = v5;
  v8 = v7;
  v9 = v0;
  v152[1] = *MEMORY[0x29EDCA608];
  v140[5] = 0.0;
  v140[4] = 0.0;
  v141 = 0;
  v124 = v7 + 20480;
  memset(v136, 0, sizeof(v136));
  memset(v137, 0, sizeof(v137));
  v138 = 0u;
  v139 = 0u;
  memset(v140, 0, 25);
  v143 = 0;
  *v142 = 0;
  v144 = 0;
  memset(v145, 0, sizeof(v145));
  LODWORD(__src[0]) = 0;
  WORD2(__src[0]) = 0;
  LODWORD(v146[0]) = 0;
  *(v146 + 3) = 0;
  bzero(__src + 6, 0xD3CuLL);
  *(v146 + 15) = 0;
  *(v146 + 7) = 0;
  *(&v146[1] + 7) = 0;
  LOWORD(v2->f64[0]) = 0;
  memcpy(v2->f64 + 2, __src, 0xD3EuLL);
  *(&v2[212] + 4) = 0u;
  *(&v2[213] + 4) = 0u;
  *(&v2[214] + 4) = 0u;
  *(&v2[215] + 4) = 0u;
  *(&v2[216] + 4) = 0u;
  *(&v2[217] + 4) = 0u;
  *(&v2[218] + 4) = 0u;
  *(&v2[219] + 4) = 0u;
  *(&v2[220] + 4) = 0u;
  *(&v2[221] + 4) = 0u;
  *(&v2[222] + 4) = 0u;
  HIDWORD(v2[223].f64[0]) = 0;
  *(v2 + 3577) = v146[0];
  *(v2 + 3592) = *(v146 + 15);
  LODWORD(v2[212].f64[0]) = -1;
  v2[214].f64[1] = 10000000.0;
  v10 = vdupq_n_s64(0x416312D000000000uLL);
  v2[215] = v10;
  v2[216].f64[0] = 10000000.0;
  LOBYTE(v2[217].f64[1]) = -1;
  LODWORD(v2[218].f64[0]) = -1;
  v2[220].f64[1] = 10000000.0;
  v2[221] = v10;
  v2[222].f64[0] = 10000000.0;
  LOBYTE(v2[223].f64[1]) = -1;
  memset_pattern16(&v2[62].f64[1], &unk_29975C400, 0x38uLL);
  memset_pattern16(&v2[66], &unk_29975C400, 0x20uLL);
  v2[61] = vdupq_n_s64(0x4163125300000000uLL);
  v128 = *(v8 + 48);
  xmmword_2A1971FAB = 0u;
  xmmword_2A1971FBB = 0u;
  xmmword_2A1971FCB = 0u;
  memset(v151, 0, sizeof(v151));
  memset(v133, 0, 7);
  memset(v147, 0, sizeof(v147));
  memcpy(__src, (v8 + 10408), 0x180uLL);
  v11 = v8 + 12424;
  memcpy(v146, (v8 + 12424), sizeof(v146));
  v12 = 0;
  v123 = v8 + 8536;
  v126 = v9;
  v13 = (v9 + 76);
  v130 = v8 + 14112;
  v14 = (v8 + 8880);
  v15 = v8 + 12424;
  v129 = (v9 + 76);
  v16 = _MergedGlobals_6;
  do
  {
    if (*(v11 + v12 - 3888) == 1)
    {
      v17 = *v13;
      if (v17 != 6)
      {
        v18 = v6 == 1 && v17 == 5;
        v19 = v18;
        if (!v6 || (v17 != v6 ? (v20 = !v19) : (v20 = 0), !v20))
        {
          v147[v12] = 1;
          ++BYTE1(v2->f64[0]);
          ++*(v133 + *v13);
          v21 = *v15;
          v22 = *v14;
          v23 = *v15 - *v14;
          *(v146 + v12) = v23;
          if (v23 < 0.01)
          {
            v24 = v8;
            v25 = v16;
            EvLog_v("NK_Least_Squares_Check: now negative %d %f %f %f %f", v12, v23, v21, *(v14 - 1), v22);
            v16 = v25;
            v8 = v24;
            *(v146 + v12) = 0x4058F9999999999ALL;
          }
        }
      }
    }

    if (*(v11 + v12 + 1688) == 1)
    {
      v26 = *v13;
      if (v26 != 6)
      {
        v27 = v6 == 1 && v26 == 5;
        v28 = v27;
        if (!v6 || v26 == v6 || v28)
        {
          if ((v147[v12] & 1) == 0)
          {
            v147[v12] = 1;
            ++BYTE1(v2->f64[0]);
            ++*(v133 + *v13);
          }

          *&__src[v12] = *(v15 + 3560) / *(v8 + 656);
          *(v146 + v12) = *(v15 + 5576);
          v16[v12 + 1] = 1;
        }
      }
    }

    ++v12;
    v13 += 4;
    v14 += 3;
    v15 += 8;
  }

  while (v12 != 48);
  v29 = v128;
  if (v128 == 1)
  {
    v30 = 1;
  }

  else
  {
    v30 = 2;
  }

  if (v128 == 2)
  {
    v30 = 0;
  }

  v31 = v30;
  HIDWORD(v143) = v30;
  v32 = v129;
  *&v142[3] = -1;
  *v142 = 50462976;
  v142[7] = 4;
  LODWORD(v143) = 1;
  v2[224].f64[0] = *v142;
  LODWORD(v2[224].f64[1]) = v143;
  v145[0] = 4;
  v33 = BYTE1(v2->f64[0]);
  LOBYTE(v2[223].f64[1]) = v33 - 4;
  if (((v33 - 4) & 0x80) == 0)
  {
    v34 = *(v129 + 9);
    *&v145[53] = *(v129 + 8);
    *&v145[57] = v34;
    v35 = *(v129 + 11);
    *&v145[61] = *(v129 + 10);
    *&v145[65] = v35;
    v36 = *(v129 + 5);
    *&v145[37] = *(v129 + 4);
    *&v145[41] = v36;
    v37 = *(v129 + 7);
    *&v145[45] = *(v129 + 6);
    *&v145[49] = v37;
    v38 = *(v129 + 1);
    *&v145[21] = *v129;
    *&v145[25] = v38;
    v39 = *(v129 + 3);
    *&v145[29] = *(v129 + 2);
    *&v145[33] = v39;
    *&v145[3] = v147;
    *&v145[5] = __src;
    *&v145[7] = v146;
    *&v145[9] = v2 + 408;
    *&v145[11] = v2 + 792;
    *&v145[1] = 0x2FFFFFFFFLL;
    *&v145[13] = v2 + 50;
    *&v145[15] = v2 + 140;
    *&v145[17] = v2 + 164;
    *&v145[19] = v2 + 188;
    v144 = 0;
    v138 = 0u;
    v139 = 0u;
    v140[0] = 0.0;
    if ((v33 - 5) <= 2 && v125)
    {
      if (*(v124 + 2712) == 1 && *(v124 + 2716) == 1 && (v40 = *(v8 + 23224), v40 < 9.0) && *v8 - *(v124 + 2732) <= 4999)
      {
        v41 = -*(v8 + 928) - *(v8 + 23216);
      }

      else
      {
        v41 = -*(v8 + 928);
        v40 = 9.0;
      }

      *&v138 = v41;
      *(&v138 + 1) = v40;
      v139 = vnegq_f64(*(v8 + 880));
      v140[0] = -*(v8 + 896);
    }

    if (NK_Least_Squares_Core((v8 + 20032), (v8 + 832), 4, v125, v127, v126 + 604, v151, v152, v136))
    {
      v42 = v142[3];
      v43 = v142[0];
      v44 = v130;
      if (_MergedGlobals_6[0] == 1)
      {
        for (i = 0; i != 48; ++i)
        {
          if (*(v44 + i) == 1)
          {
            EvLog_d("NK_Least_Squares_Check: Inflate variance ", i);
            v44 = v130;
            *(v130 + 8 * i + 3888) = *(v130 + 8 * i + 3888) + 1.0;
          }
        }
      }

      v46 = *&v145[13];
      v47 = **&v145[13];
      if (**&v145[13] < 4.0)
      {
        v48 = LODWORD(v152[0]);
        if ((v152[0] & 0x80000000) == 0)
        {
          v49 = *&v145[3];
          *(*&v145[3] + LODWORD(v152[0])) = 0;
          v50 = (v44 + v48);
          if (*v50)
          {
            v51 = 13964;
            v52 = 13963;
            v53 = 14208;
            v54 = v50;
          }

          else
          {
            v54 = (v123 + v48);
            v51 = 8388;
            v52 = 8387;
            v53 = 8632;
          }

          *v54 = 0;
          *(v8 + v53 + 4 * v48) = 11;
          --*(v8 + v52);
          ++*(v8 + v51);
          v151[v48] = 1;
          v55 = HIDWORD(v152[0]);
          if ((v152[0] & 0x8000000000000000) == 0)
          {
            *(v49 + HIDWORD(v152[0])) = 0;
            if (*v50)
            {
              v56 = 13964;
              v57 = 13963;
              v58 = 14208;
            }

            else
            {
              v50 = (v123 + v55);
              v56 = 8388;
              v57 = 8387;
              v58 = 8632;
              v48 = v55;
            }

            *v50 = 0;
            *(v8 + v58 + 4 * v48) = 11;
            --*(v8 + v57);
            ++*(v8 + v56);
            v151[v55] = 1;
          }
        }
      }

      v59 = v142[7];
      if (v142[7])
      {
        v60 = 0;
        v61 = v136;
        do
        {
          if (v42 == v60)
          {
            v2[57].f64[1] = -*&v136[8 * v42];
          }

          else if (v60 >= v43 && v60 < v43 + 3)
          {
            *(&v148 + v60 - v43) = *(v8 - 8 * v43 + 688 + 8 * v60) - *v61;
          }

          v2[66].f64[v60++] = sqrt(v61[7]);
          ++v61;
        }

        while (v59 != v60);
        v47 = *v46;
      }

      v32 = v129;
      v29 = v128;
      if (v47 > 1.0)
      {
        v62 = sqrt(v47);
        v2[67] = vmulq_n_f64(v2[67], v62);
        v2[66] = vmulq_n_f64(v2[66], v62);
        EvLog_v("NK_LSq: DO VarFact scaling %f", v62);
      }

      v63 = 0;
      v2[58].f64[0] = v2[57].f64[1] + *(v8 + 760) * 299792458.0;
      v64 = &v2[58].f64[1];
      v65 = v148;
      v66 = *&v149;
      v67 = (v8 + 848);
      do
      {
        v68 = *(v67 - 1) * *(&v65 + 1) + *(v67 - 2) * *&v65;
        v69 = *v67;
        v67 += 3;
        v64[v63++] = v68 + v69 * v66;
      }

      while (v63 != 3);
      v2[60].f64[0] = sqrt(v2[59].f64[0] * v2[59].f64[0] + 0.0 + v2[58].f64[1] * v2[58].f64[1]);
      Comp_Track8(v64);
      v2[60].f64[1] = v70;
      if (**&v145[13] <= 1.0)
      {
        NK_ARP_Calc_Slopes(v8 + 20032, v8 + 832, v142[7], v136, &v2[218]);
        v71 = SLOBYTE(v2[223].f64[1]);
        v72 = __OFSUB__(v71, 1);
        v73 = v71 - 1;
        if (v73 < 0 == v72)
        {
          v74 = 0.0;
          v75 = 48;
          v76 = v2;
          do
          {
            v77 = v76[164].f64[0];
            if (v77 > 0.0)
            {
              v74 = v74 + v76[25].f64[1] * v76[25].f64[1] / v77;
            }

            v76 = (v76 + 8);
            --v75;
          }

          while (v75);
          if (v73 >= 9)
          {
            v73 = 9;
          }

          v78 = sqrt(v74) / g_ARP_cTd_Table[v73 + 10];
          v2[223].f64[0] = v78;
          LOBYTE(v2[222].f64[1]) = v78 <= 1.0;
        }

        ARP_Calc(&v2[218]);
      }
    }
  }

  bzero(v136, 0x310uLL);
  v79 = 0;
  xmmword_2A1971FBB = 0u;
  xmmword_2A1971FCB = 0u;
  xmmword_2A1971FAB = 0u;
  v148 = 0u;
  v149 = 0u;
  v150 = 0u;
  v80 = v8 + 2960;
  memset(v133, 0, 7);
  v81 = v32;
  do
  {
    if (*(v8 + v79 + 2960) == 1 && *(v8 + v79 + 49) == 1)
    {
      v82 = *v81;
      if (v82 != 6)
      {
        v83 = v6 == 1 && v82 == 5;
        v84 = v83;
        if (!v6 || v82 == v6 || v84)
        {
          *(&v148 + v79) = 1;
          ++LOBYTE(v2->f64[0]);
          ++*(v133 + *v81);
        }
      }
    }

    ++v79;
    v81 += 4;
  }

  while (v79 != 48);
  HIDWORD(v143) = v31;
  LODWORD(v143) = 0;
  *&v142[3] = -1;
  *v142 = 256;
  v142[2] = 2;
  v85 = 3;
  v142[7] = 3;
  if (BYTE1(v133[0]) || BYTE1(v133[1]) || HIBYTE(v133[0]))
  {
    v142[3] = 3;
    v85 = 4;
    v142[7] = 4;
  }

  if (BYTE2(v133[0]))
  {
    v142[4] = v85++;
    v142[7] = v85;
  }

  if (LOBYTE(v133[1]))
  {
    v142[5] = v85++;
    v142[7] = v85;
  }

  if (v29 != 2)
  {
    v142[6] = v85++;
    v142[7] = v85;
  }

  LODWORD(v143) = 2;
  *(&v2[224].f64[1] + 4) = *v142;
  HIDWORD(v2[225].f64[0]) = v143;
  v145[0] = v85;
  v86 = LOBYTE(v2->f64[0]);
  LOBYTE(v2[217].f64[1]) = v86 - v85;
  if (((v86 - v85) & 0x80) == 0)
  {
    v131 = 0.0;
    v132 = 0.0;
    v87 = *(v32 + 9);
    *&v145[53] = *(v32 + 8);
    *&v145[57] = v87;
    v88 = *(v32 + 11);
    *&v145[61] = *(v32 + 10);
    *&v145[65] = v88;
    v89 = *(v32 + 5);
    *&v145[37] = *(v32 + 4);
    *&v145[41] = v89;
    v90 = *(v32 + 7);
    *&v145[45] = *(v32 + 6);
    *&v145[49] = v90;
    v91 = *(v32 + 1);
    *&v145[21] = *v32;
    *&v145[25] = v91;
    v92 = *(v32 + 3);
    *&v145[29] = *(v32 + 2);
    *&v145[33] = v92;
    *&v145[3] = &v148;
    *&v145[5] = v8 + 4832;
    *&v145[7] = v8 + 6848;
    *&v145[9] = &v2->f64[1];
    *&v145[11] = v2 + 392;
    *&v145[1] = 0x1FFFFFFFFLL;
    *&v145[13] = v2 + 25;
    *&v145[15] = v2 + 68;
    *&v145[17] = v2 + 92;
    *&v145[19] = v2 + 116;
    v144 = 1;
    v138 = 0u;
    v139 = 0u;
    v140[0] = 0.0;
    if (!v125 || v86 == v85 || (v86 - v85) > 3u)
    {
      goto LABEL_130;
    }

    if (*(v124 + 2640) == 1 && *(v124 + 2644) == 1 && (v93 = *(v8 + 23152), v93 < 625.0) && *v8 - *(v124 + 2660) <= 4999)
    {
      v94 = *(v8 + 816);
      v95 = *(v8 + 23144);
    }

    else
    {
      if (!Core_Get_Pos_H(*v8, 150000, &v132, &v131) || v131 > 500.0)
      {
        goto LABEL_130;
      }

      v96 = 4.0;
      if (v131 < 350.0)
      {
        v96 = 3.0;
        if (v131 < 250.0)
        {
          v96 = 2.0;
          if (v131 < 150.0)
          {
            v96 = 1.5;
          }
        }
      }

      v93 = v131 * v96;
      if (v131 * v96 < 5625.0)
      {
        v93 = 5625.0;
      }

      v94 = *(v8 + 816);
      v95 = v132;
    }

    *&v138 = v94 - v95;
    *(&v138 + 1) = v93;
    v139 = vnegq_f64(*(v8 + 880));
    v140[0] = -*(v8 + 896);
LABEL_130:
    memset(&v140[1], 0, 24);
    if (!NK_Least_Squares_Core((v8 + 20032), (v8 + 832), v142[7], v125, v127, v126 + 604, v151, v152, v136))
    {
      goto LABEL_173;
    }

    v97 = v142[0];
    v98 = v142[3];
    v99 = v142[4];
    v100 = v142[5];
    v101 = v142[6];
    if (**&v145[13] < 4.0)
    {
      v102 = v152[0];
      if ((v152[0] & 0x80000000) == 0)
      {
        v103 = *&v145[3];
        *(*&v145[3] + LODWORD(v152[0])) = 0;
        *(v80 + v102) = 0;
        *(v8 + 3056 + 4 * v102) = 11;
        v104 = *(v8 + 2811);
        *(v8 + 2811) = v104 - 1;
        v105 = *(v8 + 2812);
        *(v8 + 2812) = v105 + 1;
        v106 = HIDWORD(v152[0]);
        if ((v152[0] & 0x8000000000000000) == 0)
        {
          *(v103 + HIDWORD(v152[0])) = 0;
          *(v80 + v106) = 0;
          *(v8 + 3056 + 4 * v106) = 11;
          *(v8 + 2811) = v104 - 2;
          *(v8 + 2812) = v105 + 2;
        }
      }
    }

    v107 = &v2[54].f64[1];
    v108 = 488;
    while (1)
    {
      v109 = v136[v108];
      if ((v109 & 0x80000000) == 0)
      {
        if (v109 == v98)
        {
          v2[50].f64[1] = -*&v136[8 * v109];
        }

        else if (v109 == v99)
        {
          v2[51].f64[1] = -*&v136[8 * v109];
        }

        else if (v109 == v100)
        {
          v2[52].f64[1] = -*&v136[8 * v109];
        }

        else if (v109 == v101)
        {
          v2[53].f64[1] = -*&v136[8 * v109];
        }

        else
        {
          if (v109 < v97 || v97 + 2 < v109)
          {
            goto LABEL_149;
          }

          *(v107 + 8 * v109) = *(v8 + 664 + 8 * v109) - *&v136[8 * v109];
        }

        v2[62].f64[v109 + 1] = sqrt(*&v136[8 * v109 + 56]);
      }

LABEL_149:
      if (++v108 == 495)
      {
        if (v98 >= 1)
        {
          v2[51].f64[0] = v2[50].f64[1] + *(v8 + 736) * 299792458.0;
        }

        if (v99 >= 1)
        {
          v2[52].f64[0] = v2[51].f64[1] + *(v8 + 744) * 299792458.0;
        }

        if (v100 >= 1)
        {
          v2[53].f64[0] = v2[52].f64[1] + *(v8 + 752) * 299792458.0;
        }

        if (v101 >= 1)
        {
          v2[54].f64[0] = *(v8 + 792) + v2[53].f64[1];
        }

        ECEF2Geo(v107, &WGS84_Datum, &v2[56]);
        Comp_NEDvar_UDU(v137, v142[7], v97, (v8 + 832), v134);
        Comp_ErrorEllipse(v134[0], v134[1], v110, v2[61].f64, &v2[61].f64[1], v2[62].f64);
        v111 = **&v145[13];
        if (**&v145[13] > 1.0)
        {
          v112 = sqrt(v111);
          if (v145[0] >= 1)
          {
            v113 = v145[0] + 1;
            v114 = &v2[62].f64[v145[0]];
            do
            {
              *v114 = v112 * *v114;
              --v114;
              --v113;
            }

            while (v113 > 1);
          }

          v2[61] = vmulq_n_f64(v2[61], v112);
          EvLog_v("NK_LSq: PR VarFact scaling %f", v112);
          v111 = **&v145[13];
        }

        if (v111 <= 1.0)
        {
          NK_ARP_Calc_Slopes(v8 + 20032, v8 + 832, v142[7], v136, &v2[212]);
          v115 = SLOBYTE(v2[217].f64[1]);
          v72 = __OFSUB__(v115, 1);
          v116 = v115 - 1;
          if (v116 < 0 == v72)
          {
            v117 = 0.0;
            v118 = 48;
            v119 = v2;
            do
            {
              v120 = v119[92].f64[0];
              if (v120 > 0.0)
              {
                v117 = v117 + v119->f64[1] * v119->f64[1] / v120;
              }

              v119 = (v119 + 8);
              --v118;
            }

            while (v118);
            if (v116 >= 9)
            {
              v116 = 9;
            }

            v121 = sqrt(v117) / g_ARP_cTd_Table[v116 + 10];
            v2[217].f64[0] = v121;
            LOBYTE(v2[216].f64[1]) = v121 <= 1.0;
          }

          ARP_Calc(&v2[212]);
        }

        break;
      }
    }
  }

LABEL_173:
  v122 = *MEMORY[0x29EDCA608];
}

void *NK_ARP_Calc_Slopes(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v80 = *MEMORY[0x29EDCA608];
  *(a5 + 8) = 0u;
  v64 = (a5 + 8);
  *(a5 + 24) = 0u;
  result = ud2cov((a4 + 112), v78, a3);
  v11 = 0;
  v62 = a2;
  v63 = (a2 + 16);
  do
  {
    if (*(*(a4 + 520) + v11) != 1)
    {
      goto LABEL_37;
    }

    v68 = *(a4 + 491);
    v69 = *(a4 + 488);
    v66 = *(a4 + 492);
    v65 = *(a4 + 493);
    v12 = *(a4 + 592 + 4 * v11);
    v13 = *(a4 + 496);
    v70 = *(a4 + 494);
    v71 = v10 & 0xFFFFFFFF00000000 | v13;
    NK_Least_Obs_Equ_SV(1, *(a4 + 488), *(a4 + 496), v12, *(a4 + 516), (a1 + 56 * v11), v79, *(*(a4 + 528) + 8 * v11));
    v77 = 0;
    memset(v76, 0, sizeof(v76));
    v14 = *(*(a4 + 536) + 8 * v11);
    if (a3)
    {
      v15 = 0;
      do
      {
        v16 = 0;
        v17 = *(v76 + v15);
        v18 = v15 + 1;
        do
        {
          v19 = v16 + 1;
          v20 = *(v79 + v16);
          if (v16 < v15)
          {
            v21 = v16 + (((v15 + 1) * v15) >> 1);
          }

          else
          {
            v19 = v16 + 1;
            v21 = v15 + (((v16 + 1) * v16) >> 1);
          }

          v17 = v17 + v78[v21] * v20;
          v16 = v19;
        }

        while (v19 != a3);
        *(v76 + v15++) = v17 / v14;
      }

      while (v18 != a3);
    }

    v72 = 0.0;
    result = invtst((a4 + 112), v79, a3, 0.0, 0.0, 1.0e20, &v72);
    v22 = 1.0 - v72 / v14;
    v72 = v22;
    if (v22 < 0.0001)
    {
      if (*(a5 + 88) >= 1)
      {
        result = EvLog_v("NK_ARP_Calc_Slopes: Matrix B too small %f %d", v22, *(a5 + 88));
        --*(a5 + 88);
      }

      v10 = v71;
      goto LABEL_37;
    }

    v23 = 0;
    v24 = fmax(v22, 0.0001);
    v72 = v24;
    v25 = v76 + v69;
    v26 = *v25;
    v27 = v25[1];
    v28 = v25[2];
    v29 = v63;
    do
    {
      v30 = *(v29 - 1) * v27 + *(v29 - 2) * v26;
      v31 = *v29;
      v29 += 3;
      *(&v73 + v23) = v30 + v31 * v28;
      v23 += 8;
    }

    while (v23 != 24);
    v32 = v14 / v24;
    v33 = v32 * (v74 * v74 + v73 * v73);
    v10 = v71;
    if (v33 > *v64)
    {
      *(a5 + 8) = v33;
      *a5 = v11;
    }

    v34 = v32 * (v75 * v75);
    if (v34 > *(a5 + 16))
    {
      *(a5 + 16) = v34;
      *(a5 + 1) = v11;
    }

    if (v13 == 2)
    {
      if (v12 > 2)
      {
        if (v12 != 5 && v12 != 3)
        {
          goto LABEL_39;
        }
      }

      else if (v12 != 1)
      {
        if (v12 == 2)
        {
          v35 = v66;
          goto LABEL_41;
        }

LABEL_39:
        if (v12 == 4)
        {
          v35 = v65;
LABEL_41:
          v36 = v70;
          if (v35 <= 0)
          {
            goto LABEL_32;
          }

LABEL_31:
          v34 = v32 * (*(v76 + v35) * *(v76 + v35));
          goto LABEL_32;
        }

LABEL_27:
        v36 = v70;
        goto LABEL_32;
      }
    }

    else if (v13 != 1)
    {
      goto LABEL_27;
    }

    v35 = v68;
    v36 = v70;
    if (v68 >= 1)
    {
      goto LABEL_31;
    }

LABEL_32:
    if (v34 > *(a5 + 24))
    {
      *(a5 + 24) = v34;
      *(a5 + 2) = v11;
    }

    if (v36 >= 1)
    {
      v37 = v32 * (*(v76 + v36) * *(v76 + v36));
      if (v37 > *(a5 + 32))
      {
        *(a5 + 32) = v37;
        *(a5 + 3) = v11;
      }
    }

LABEL_37:
    ++v11;
  }

  while (v11 != 48);
  v38 = *(a4 + 408);
  if (v38 > 0.0)
  {
    memset(v79, 0, sizeof(v79));
    v39 = *(a4 + 488);
    v40 = v79 + 8 * v39;
    *v40 = *(a4 + 416);
    *(v40 + 2) = *(a4 + 432);
    *(v79 + a3) = *(a4 + 400);
    if (a3)
    {
      v41 = 0;
      do
      {
        v42 = 0;
        v43 = v41 + 1;
        v44 = 0.0;
        do
        {
          v45 = v42 + 1;
          v46 = *(v79 + v42);
          if (v42 < v41)
          {
            v47 = v42 + (((v41 + 1) * v41) >> 1);
          }

          else
          {
            v45 = v42 + 1;
            v47 = v41 + (((v42 + 1) * v42) >> 1);
          }

          v44 = v44 + v78[v47] * v46;
          v42 = v45;
        }

        while (v45 != a3);
        *(v76 + v41++) = v44 / v38;
      }

      while (v43 != a3);
    }

    v72 = 0.0;
    result = invtst((a4 + 112), v79, a3, 0.0, 0.0, 1.0e20, &v72);
    v48 = 1.0 - v72 / v38;
    if (v48 >= 0.0000001)
    {
      v49 = 0;
      v50 = fmax(v48, 0.0000001);
      v51 = v76 + v39;
      v52 = *v51;
      v53 = v51[1];
      v54 = v51[2];
      v55 = (v62 + 16);
      do
      {
        v56 = *(v55 - 1) * v53 + *(v55 - 2) * v52;
        v57 = *v55;
        v55 += 3;
        *(&v73 + v49) = v56 + v57 * v54;
        v49 += 8;
      }

      while (v49 != 24);
      v58 = v38 / v50;
      v59 = v58 * (v74 * v74 + v73 * v73);
      if (v59 > *v64)
      {
        *(a5 + 8) = v59;
        *a5 = 48;
      }

      v60 = v58 * (v75 * v75);
      if (v60 > *(a5 + 16))
      {
        *(a5 + 16) = v60;
        *(a5 + 1) = 48;
      }
    }

    else if (*(a5 + 88) >= 1)
    {
      result = EvLog_v("NK_ARP_Calc_Slopes: Vert Matrix B too small %f %d", 1.0 - v72 / v38, *(a5 + 88));
      --*(a5 + 88);
    }
  }

  v61 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t NK_ARP_Kalman(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = 0;
  v79 = *MEMORY[0x29EDCA608];
  v42 = a3 + 0x2000;
  v43 = (a2 + 24576);
  memset(v44, 0, 7);
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  for (i = 3056; i != 3248; i += 4)
  {
    v8 = *(a1 + i - 3056);
    if (v8 != 6 && *(a2 + v5 + 2960) == 1)
    {
      v9 = *(a2 + i);
      if ((v9 - 1) >= 0x1D)
      {
        if (v9)
        {
          EvCrt_Illegal_Default("Any_SV_Meas_Edit", 0xA6u);
        }

        else if (*(a2 + v5 + 49) == 1)
        {
          ++v44[v8];
          ++v6;
          *(&v76 + v5) = 1;
        }
      }
    }

    ++v5;
  }

  v10 = *(a2 + 48);
  if (v10 == 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  if (v10 == 2)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  bzero(v46, 0x310uLL);
  v53 = v12;
  v52 = 0;
  *&v50[3] = -1;
  *v50 = -16645888;
  v13 = 3;
  v51 = 3;
  if (v44[1] || v44[5] || v44[3])
  {
    v50[3] = 3;
    v13 = 4;
    v51 = 4;
  }

  if (v44[2])
  {
    v50[4] = v13++;
    v51 = v13;
  }

  if (v44[4])
  {
    v50[5] = v13++;
    v51 = v13;
  }

  if (v10 != 2)
  {
    v50[6] = v13++;
    v51 = v13;
  }

  v52 = 2;
  *(v42 + 3336) = v6 - v13;
  if ((v6 - v13) >= 1 && v43[595] == 1 && ((v43[590] & 1) != 0 || (v43[591] & 1) != 0 || v43[592] == 1))
  {
    v14 = a1[8];
    v15 = a1[10];
    v16 = a1[11];
    v71 = a1[9];
    v72 = v15;
    v73 = v16;
    v17 = a1[4];
    v18 = a1[6];
    v19 = a1[7];
    v67 = a1[5];
    v68 = v18;
    v69 = v19;
    v70 = v14;
    v20 = *a1;
    v21 = a1[2];
    v22 = a1[3];
    v63 = a1[1];
    v64 = v21;
    v49 = 0;
    v65 = v22;
    v66 = v17;
    v55 = 0x1FFFFFFFFLL;
    v47 = 0u;
    v48 = 0u;
    v54 = 1;
    v56 = &v76;
    v57 = (a2 + 4832);
    v58 = (a2 + 6848);
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = v20;
    if (NK_Least_Squares_Update((a2 + 20032), v13, 0, 0, v45, v46))
    {
      NK_ARP_Calc_Slopes(a2 + 20032, a2 + 832, v51, v46, a3 + 11440);
      ARP_Calc(a3 + 11440);
    }
  }

  memcpy(__dst, (a2 + 10408), sizeof(__dst));
  result = memcpy(v74, (a2 + 12424), sizeof(v74));
  v24 = 0;
  v25 = 0;
  v76 = 0u;
  v77 = 0u;
  v26 = (a2 + 8632);
  v78 = 0u;
  memset(v44, 0, 7);
  v27 = a2 + 15984;
  v28 = a1;
  do
  {
    v29 = *v28;
    if (v29 == 6)
    {
      goto LABEL_40;
    }

    if (*(a2 + 8536 + v24) == 1 && (*v26 - 1) >= 0x1D)
    {
      if (*v26)
      {
        result = EvCrt_Illegal_Default("Any_SV_Meas_Edit", 0xA6u);
        if (*v28 == 6)
        {
          goto LABEL_40;
        }
      }

      else
      {
        ++v25;
        ++v44[v29];
        *(&v76 + v24) = 1;
      }
    }

    if (*(a2 + 14112 + v24) == 1)
    {
      v30 = v26[1394];
      if ((v30 - 1) >= 0x1D)
      {
        if (v30)
        {
          result = EvCrt_Illegal_Default("Any_SV_Meas_Edit", 0xA6u);
        }

        else
        {
          *(&v76 + v24) = 1;
          __dst[v24] = *v27 / *(a2 + 656);
          v74[v24] = *(v27 + 2016);
          ++v25;
        }
      }
    }

LABEL_40:
    ++v24;
    v27 += 8;
    ++v26;
    v28 += 4;
  }

  while (v24 != 48);
  v53 = v12;
  *&v50[3] = -1;
  *v50 = 50462976;
  v51 = 4;
  v52 = 1;
  *(v42 + 3432) = v25 - 4;
  if ((v25 - 4) >= 1 && v43[598] == 1 && v43[593] == 1)
  {
    v31 = a1[8];
    v32 = a1[10];
    v33 = a1[11];
    v71 = a1[9];
    v72 = v32;
    v73 = v33;
    v34 = a1[4];
    v35 = a1[6];
    v36 = a1[7];
    v67 = a1[5];
    v68 = v35;
    v69 = v36;
    v70 = v31;
    v37 = *a1;
    v38 = a1[2];
    v39 = a1[3];
    v63 = a1[1];
    v64 = v38;
    v49 = 0;
    v65 = v39;
    v66 = v34;
    v55 = 0x2FFFFFFFFLL;
    v47 = 0u;
    v48 = 0u;
    v54 = 0;
    v56 = &v76;
    v57 = __dst;
    v58 = v74;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = v37;
    result = NK_Least_Squares_Update((a2 + 20032), 4, 0, 0, v45, v46);
    if (result)
    {
      NK_ARP_Calc_Slopes(a2 + 20032, a2 + 832, v51, v46, a3 + 11536);
      result = ARP_Calc(a3 + 11536);
    }
  }

  v40 = *MEMORY[0x29EDCA608];
  return result;
}

__n128 NK_Least_Squares_Publish_Soln(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x29EDCA608];
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 392);
  *(a1 + 24) = *(a2 + 792);
  *(a1 + 40) = *(a2 + 808);
  *(a1 + 56) = *(a2 + 824);
  *(a1 + 72) = *(a2 + 840);
  *(a1 + 88) = *(a2 + 856);
  *(a1 + 152) = *(a2 + 920);
  *(a1 + 192) = *(a2 + 960);
  v2 = *(a2 + 3596);
  *(a1 + 532) = *(a2 + 3604);
  *(a1 + 524) = v2;
  v3 = *(a2 + 3584);
  *(a1 + 520) = *(a2 + 3592);
  *(a1 + 512) = v3;
  v4 = *(a2 + 872);
  *(a1 + 120) = *(a2 + 888);
  *(a1 + 104) = v4;
  v5 = *(a2 + 896);
  *(a1 + 144) = *(a2 + 912);
  *(a1 + 128) = v5;
  v6 = *(a2 + 936);
  *(a1 + 184) = *(a2 + 952);
  *(a1 + 168) = v6;
  v7 = *(a2 + 1000);
  v8 = *(a2 + 1016);
  v9 = *(a2 + 1032);
  *(a1 + 280) = *(a2 + 1048);
  *(a1 + 264) = v9;
  *(a1 + 248) = v8;
  *(a1 + 232) = v7;
  v10 = *(a2 + 1072);
  *(a1 + 288) = *(a2 + 1056);
  *(a1 + 304) = v10;
  v11 = *(a2 + 976);
  *(a1 + 224) = *(a2 + 992);
  *(a1 + 208) = v11;
  v12 = *(a2 + 3408);
  *(a1 + 320) = *(a2 + 3392);
  *(a1 + 336) = v12;
  v13 = *(a2 + 3424);
  v14 = *(a2 + 3440);
  v15 = *(a2 + 3472);
  *(a1 + 384) = *(a2 + 3456);
  *(a1 + 400) = v15;
  *(a1 + 352) = v13;
  *(a1 + 368) = v14;
  v16 = *(a2 + 3504);
  *(a1 + 416) = *(a2 + 3488);
  *(a1 + 432) = v16;
  result = *(a2 + 3520);
  v18 = *(a2 + 3536);
  v19 = *(a2 + 3568);
  *(a1 + 480) = *(a2 + 3552);
  *(a1 + 496) = v19;
  *(a1 + 448) = result;
  *(a1 + 464) = v18;
  v20 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Track_Meas_Update(int a1, double *a2, unsigned int a3, char *a4, _BOOL8 a5, _WORD *a6, double a7, double a8, double a9)
{
  v30[3] = *MEMORY[0x29EDCA608];
  if ((*(a4 + 1) - 1) > 1 || (a4[12] = 0, *a4 != 1))
  {
    v18 = 0;
    goto LABEL_7;
  }

  v25 = 0.0;
  v16 = *(a4 + 5) - *(a4 + 3) * a9;
  *(a4 + 6) = v16;
  if (v16 >= 180.0)
  {
    v17 = -360.0;
  }

  else
  {
    if (v16 >= -180.0)
    {
      goto LABEL_10;
    }

    v17 = 360.0;
  }

  v16 = v16 + v17;
  *(a4 + 6) = v16;
LABEL_10:
  v21 = __sincos_stret(a7 * 0.0174532925);
  Comp_Track_velLOS(v21.__cosval * a8, v21.__sinval * a8, a2, v30);
  v27 = 0;
  v22 = a1 + 2;
  v23 = 2;
  memset(v26, 0, sizeof(v26));
  do
  {
    *(v26 + v22--) = v30[v23--];
  }

  while (v23 != -1);
  *(v26 + a3) = v16;
  umeas(a5, a3, *(a4 + 4), v26, v29, v28, &v25, *(a4 + 7));
  v24 = v25;
  if (v25 <= 0.0)
  {
    v18 = 0;
    *a4 = 0;
    a4[12] = 1;
    ++*a6;
    *(a4 + 8) = v24 + *(a4 + 8);
  }

  else
  {
    *(a4 + 8) = *(a4 + 4) * (v25 * (v29[a3] * v29[a3]));
    v18 = *a4;
  }

LABEL_7:
  v19 = *MEMORY[0x29EDCA608];
  return v18 & 1;
}

uint64_t NK_Comp_ith_DR_Res(uint64_t result, uint64_t a2, uint64_t a3, double *a4, double a5, double a6, double a7, double a8, double a9)
{
  v16 = *MEMORY[0x29EDCA608];
  *a4 = a6 - a9;
  *(a3 + result + 104) = 1;
  v9 = *(a3 + 2) + 1;
  v10 = a7 * 0.000025 * a8;
  *(a3 + 8 * result + 1640) = v10;
  v11 = *a4 - a5;
  *(a3 + 2024 + 8 * result) = v11;
  *(a3 + 2) = v9;
  v12 = *(a3 + 24 * result + 488) + *(a3 + 24 * result + 496);
  *(a3 + 4040 + 8 * result) = v12;
  if (*(a2 + result + 144) == 1)
  {
    v13 = a2 + 8 * result;
    v11 = v11 - *(v13 + 960) * a8;
    *(a3 + 2024 + 8 * result) = v11;
    v14 = v12 + *(v13 + 1344) * a8 * a8;
  }

  else
  {
    v14 = v10 + v12;
  }

  *(a3 + 4040 + 8 * result) = v14;
  *(a3 + 8 * result + 2792) = v11;
  if (fabs(v11) < 150000.0)
  {
    *(a3 + result + 152) = 1;
    ++*(a3 + 3);
  }

  v15 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Hal26_InitLowPowerContext(void)
{
  v5 = *MEMORY[0x29EDCA608];
  g_CommsLPCntxt = 0u;
  xmmword_2A1939F20 = 0u;
  unk_2A1939F30 = 0u;
  xmmword_2A1939F40 = 0u;
  xmmword_2A1939F10 = 0u;
  result = gnssOsa_InitCriticalSection("Hal26_InitLowPowerContext", 38, &xmmword_2A1939F10);
  if (result)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v1 = mach_continuous_time();
      v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx LowPowerTransitionCritic\n", (*&g_MacClockTicksToMsRelation * v1), "HAL", 69, "Hal26_InitLowPowerContext", 1552);
      result = LbsOsaTrace_WriteLog(0xDu, __str, v2, 0, 1);
    }
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Hal26_DeInitLowPowerContext(void)
{
  v5 = *MEMORY[0x29EDCA608];
  result = gnssOsa_MacDeinitCriticalSection("Hal26_DeInitLowPowerContext", 47, &xmmword_2A1939F10);
  if (result)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v1 = mach_continuous_time();
      v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx LowPowerTransitionCritic\n", (*&g_MacClockTicksToMsRelation * v1), "HAL", 69, "Hal26_DeInitLowPowerContext", 1553);
      result = LbsOsaTrace_WriteLog(0xDu, __str, v2, 0, 1);
    }
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Hal26_UpdateLowPowerCntxt(char a1, int a2)
{
  v11 = *MEMORY[0x29EDCA608];
  if (gnssOsa_MacEnterCriticalSection("Hal26_UpdateLowPowerCntxt", 56, &xmmword_2A1939F10))
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v5 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", v5, "HAL", 69, "Hal26_UpdateLowPowerCntxt", 1550);
LABEL_10:
      result = LbsOsaTrace_WriteLog(0xDu, __str, v6, 0, 1);
    }
  }

  else
  {
    if (a2)
    {
      LODWORD(v7) = 0;
      a1 = 0;
      *(&g_CommsLPCntxt + 1) = 256;
    }

    else
    {
      *(&g_CommsLPCntxt + 1) = 1;
      v7 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    }

    DWORD1(g_CommsLPCntxt) = v7;
    BYTE8(g_CommsLPCntxt) = a1;
    result = gnssOsa_MacExitCriticalSection("Hal26_UpdateLowPowerCntxt", 72, &xmmword_2A1939F10);
    if (result)
    {
      result = LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v8 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", v8, "HAL", 69, "Hal26_UpdateLowPowerCntxt", 1551);
        goto LABEL_10;
      }
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

_BYTE *Hal26_HandleLowPowerMsg(_BYTE *result, int a2)
{
  v10 = *MEMORY[0x29EDCA608];
  if (a2 != 12)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0);
    if (!result)
    {
      goto LABEL_13;
    }

    bzero(__str, 0x410uLL);
    v8 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx len,%u\n", v8);
LABEL_12:
    result = LbsOsaTrace_WriteLog(0xDu, __str, v6, 0, 1);
    goto LABEL_13;
  }

  v2 = result;
  if (!result)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0);
    if (!result)
    {
      goto LABEL_13;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx aResp\n");
    goto LABEL_12;
  }

  if ((BYTE1(g_CommsLPCntxt) & 1) == 0)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xDu, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LPreq ID,%u\n", (*&g_MacClockTicksToMsRelation * v3), "HAL", 68, "Hal26_HandleLowPowerMsg", v2[8]);
      LbsOsaTrace_WriteLog(0xDu, __str, v4, 5, 1);
    }

    result = gnssOsa_Calloc("Hal26_HandleLowPowerMsg", 112, 1, 0x10uLL);
    if (result)
    {
      v5 = result;
      result[12] = v2[8];
      AgpsSendFsmMsg(129, 129, 8456192, result);
      result = Hal26_UpdateLowPowerCntxt(v5[12], 0);
    }
  }

LABEL_13:
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Hal26_SendLPResponse(int a1)
{
  v25 = *MEMORY[0x29EDCA608];
  if (g_IsProdMode == 1 && LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ProdMode LPACK sent\n", (*&g_MacClockTicksToMsRelation * v2), "HAL", 73, "Hal26_SendLPResponse");
    LbsOsaTrace_WriteLog(0xDu, __str, v3, 4, 1);
  }

  if (!gnssOsa_MacEnterCriticalSection("Hal26_GetLatestSeqNum", 79, &xmmword_2A1939F10))
  {
    v9 = BYTE8(g_CommsLPCntxt);
    if (gnssOsa_MacExitCriticalSection("Hal26_GetLatestSeqNum", 86, &xmmword_2A1939F10) && LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v10), "HAL", 69, "Hal26_GetLatestSeqNum", 1551);
      LbsOsaTrace_WriteLog(0xDu, __str, v11, 0, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xDu, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PostedSn,%u,SentSn,%u\n", (*&g_MacClockTicksToMsRelation * v12), "HAL", 68, "Hal26_SendLPResponse", a1, BYTE8(g_CommsLPCntxt));
      LbsOsaTrace_WriteLog(0xDu, __str, v13, 5, 1);
    }

    *v19 = 0xD20004206C42787ALL;
    v20 = 1;
    v21 = v9;
    v22 = a1 + 1;
    v23 = 10;
    Hal_CommsItfUpdateStatus(2);
    if (Hal22_ZxSendToChip(v19, 0xDuLL) <= 0)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v17 = mach_continuous_time();
        v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Lp-ack,%u\n", (*&g_MacClockTicksToMsRelation * v17), "HAL", 69, "Hal26_SendLPResponse", 1282, BYTE8(g_CommsLPCntxt));
        v16 = 0;
        goto LABEL_19;
      }
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0xDu, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v14 = mach_continuous_time();
      v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LP resp %u id\n", (*&g_MacClockTicksToMsRelation * v14), "HAL", 68, "Hal26_SendLPResponse", BYTE8(g_CommsLPCntxt));
      v16 = 5;
LABEL_19:
      LbsOsaTrace_WriteLog(0xDu, __str, v15, v16, 1);
    }

    Hal26_UpdateLowPowerCntxt(0, 1);
    result = Hal_CommsItfUpdateStatus(3);
    goto LABEL_21;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "HAL", 69, "Hal26_GetLatestSeqNum", 1550);
    LbsOsaTrace_WriteLog(0xDu, __str, v5, 0, 1);
  }

  result = LbsOsaTrace_IsLoggingAllowed(0xDu, 2, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Hal26_SendLPResponse:Seq Num unavailable\n", (*&g_MacClockTicksToMsRelation * v7), "HAL", 87, "Hal26_SendLPResponse");
    result = LbsOsaTrace_WriteLog(0xDu, __str, v8, 2, 1);
  }

LABEL_21:
  v18 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Hal26_HandleConfigureUartLpRes(unsigned __int8 *a1, unsigned int a2)
{
  v11 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (a2 > 0xC)
    {
      g_ConfigUartLpResponse = a1[8];
      if (LbsOsaTrace_IsLoggingAllowed(0xDu, 5, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v4 = mach_continuous_time();
        v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Conf UARTLP status,%x\n", (*&g_MacClockTicksToMsRelation * v4), "HAL", 68, "Hal26_HandleConfigureUartLpRes", g_ConfigUartLpResponse);
        LbsOsaTrace_WriteLog(0xDu, __str, v5, 5, 1);
      }

      result = gnssOsa_SemRelease(g_HandleAckSem);
      if ((result & 1) == 0)
      {
        result = LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0);
        if (result)
        {
          bzero(__str, 0x410uLL);
          v6 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          v9 = *__error();
          v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx HandleAckSem err,%d\n", v6);
          goto LABEL_12;
        }
      }
    }

    else
    {
      result = LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v8 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx len,%u\n", v8);
LABEL_12:
        result = LbsOsaTrace_WriteLog(0xDu, __str, v3, 0, 1);
      }
    }
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx data\n");
      goto LABEL_12;
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GPS_To_Glon_Time(uint64_t result, int a2, double a3, double a4, int *a5, int *a6, double *a7)
{
  v16 = *MEMORY[0x29EDCA608];
  v7 = a3 / 86400 - (a2 + (result << 10)) + 8 * (a2 + (result << 10));
  v8 = (v7 - 5839) / 1461;
  *a5 = v8;
  *a6 = v7 - 1461 * v8 - 5838;
  ++*a5;
  v9 = -86400.0;
  v10 = a3 + floor(a3 / 86400.0) * -86400.0 + 10800.0 - a4;
  *a7 = v10;
  if (v10 >= 86400.0)
  {
    v11 = 1;
    goto LABEL_5;
  }

  if (v10 < 0.0)
  {
    v11 = -1;
    v9 = 86400.0;
LABEL_5:
    *a7 = v10 + v9;
    goto LABEL_7;
  }

  v11 = 0;
LABEL_7:
  v12 = *a6 + v11;
  *a6 = v12;
  if (v12 > 1461)
  {
    v13 = -1461;
    v14 = 1;
LABEL_11:
    *a5 += v14;
    *a6 += v13;
    goto LABEL_12;
  }

  if (v12 <= 0)
  {
    v13 = 1461;
    v14 = -1;
    goto LABEL_11;
  }

LABEL_12:
  v15 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Glon_To_GPS_Time(uint64_t result, int a2, double a3, double a4, int *a5, int *a6, double *a7)
{
  v20 = *MEMORY[0x29EDCA608];
  v7 = -0.5;
  if (a4 > 0.0)
  {
    v7 = 0.5;
  }

  v8 = v7 + a4;
  v9 = 2147483650.0;
  v10 = -2147483650.0;
  if (v8 >= -2147483650.0)
  {
    v10 = v8;
  }

  if (v8 <= 2147483650.0)
  {
    v9 = v10;
  }

  v11 = a2 + 1461 * result + 4377;
  *a5 = v11 / 7168;
  v12 = v11 % 7168;
  v13 = v11 % 7168 / 7;
  *a6 = v13;
  v14 = 86400.0;
  v15 = a3 + -10800.0 + v9 + a4 - v9;
  if (v15 >= 86400.0)
  {
    v15 = v15 + -86400.0;
  }

  else
  {
    v14 = 0.0;
    if (v15 < 0.0)
    {
      v15 = v15 + 86400.0;
      v14 = -86400.0;
    }
  }

  v16 = v14 + (-7 * v13 + v12) * 86400.0 + v15;
  *a7 = v16;
  v17 = 604800.0;
  if (v16 >= 604800.0)
  {
    v18 = 1;
    v17 = -604800.0;
    goto LABEL_15;
  }

  if (v16 < 0.0)
  {
    v18 = -1;
LABEL_15:
    *a6 = v18 + v13;
    *a7 = v16 + v17;
  }

  v19 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL Is_Future_Leap_Sec_Date_Not_Valid(int a1, int a2, unsigned int a3, unsigned __int8 a4)
{
  if (a1 < 1024)
  {
    v4 = 0;
    goto LABEL_23;
  }

  v4 = 0;
  if (a2 <= 2)
  {
    if (!a2)
    {
      goto LABEL_14;
    }

    if (a2 != 1)
    {
      if (a2 != 2)
      {
        goto LABEL_23;
      }

      goto LABEL_14;
    }

LABEL_13:
    a3 |= 0x400u;
    goto LABEL_14;
  }

  if (a2 > 4)
  {
    if (a2 == 6)
    {
      goto LABEL_14;
    }

    if (a2 != 5)
    {
      goto LABEL_23;
    }

    goto LABEL_13;
  }

  if (a2 == 3)
  {
    goto LABEL_13;
  }

  a3 += 1356;
LABEL_14:
  v5 = 0;
  v6 = (a1 - 127);
  v7 = v6 >= a3;
  v8 = v6 - a3;
  if (!v7)
  {
    v8 = 0;
  }

  if (a2 == 4)
  {
    v9 = a4 + 1;
  }

  else
  {
    v9 = a4;
  }

  v10 = (3257812231 * (86400 * v9 - 43200)) >> 32;
  v11 = ((v10 >> 16) + (v10 >> 31) - (((v8 + 255) & 0xFF00) + a3) + 8 * (((v8 + 255) & 0xFF00) + a3) - 5839) % 1461 + 1;
  do
  {
    v12 = Glon_Day_Num_of_Quarter_Year_Change[v5];
    v13 = v11 == v12;
    v4 = v11 != v12;
    if (v13)
    {
      break;
    }

    v13 = v5++ == 15;
  }

  while (!v13);
LABEL_23:
  v14 = *MEMORY[0x29EDCA608];
  v15 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t VecSortIndexAscR8(uint64_t result, unsigned int a2, int *a3, int a4)
{
  v12 = *MEMORY[0x29EDCA608];
  if (a2 >= 2)
  {
    v4 = 0;
    for (i = 1; i != a2; ++i)
    {
      v6 = a3[i];
      v7 = i;
      if (i - 1 >= 0)
      {
        v7 = i;
        v8 = v4;
        do
        {
          v9 = a3[v8];
          v10 = *(result + 8 * v9);
          if (a4)
          {
            if (fabs(v10) <= fabs(*(result + 8 * v6)))
            {
              v7 = v8 + 1;
              goto LABEL_11;
            }
          }

          else if (v10 <= *(result + 8 * v6))
          {
            goto LABEL_11;
          }

          a3[v8-- + 1] = v9;
          --v7;
        }

        while (v8 + 1 > 0);
        v7 = 0;
      }

LABEL_11:
      a3[v7] = v6;
      ++v4;
    }
  }

  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t VecSortDscU1(uint64_t result, unsigned int a2, signed __int8 *a3)
{
  v27 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    v3 = vdupq_n_s64(a2 - 1);
    v4 = xmmword_29975CAB0;
    v5 = xmmword_29975CAC0;
    v6 = xmmword_29975CAD0;
    v7 = xmmword_29975CAE0;
    v8 = xmmword_299729180;
    v9 = xmmword_299729170;
    v10 = xmmword_299729020;
    v11 = xmmword_299728F20;
    v12 = a3 + 7;
    v13 = 15;
    v14 = vdupq_n_s64(0x10uLL);
    do
    {
      v15 = v13 - 15;
      v16 = vmovn_s64(vcgeq_u64(v3, v11));
      if (vuzp1_s8(vuzp1_s16(v16, *v3.i8), *v3.i8).u8[0])
      {
        *(v12 - 7) = v15;
      }

      if (vuzp1_s8(vuzp1_s16(v16, *&v3), *&v3).i8[1])
      {
        *(v12 - 6) = v15 | 1;
      }

      if (vuzp1_s8(vuzp1_s16(*&v3, vmovn_s64(vcgeq_u64(v3, *&v10))), *&v3).i8[2])
      {
        *(v12 - 5) = v15 | 2;
        *(v12 - 4) = v15 | 3;
      }

      v17 = vmovn_s64(vcgeq_u64(v3, v9));
      if (vuzp1_s8(*&v3, vuzp1_s16(v17, *&v3)).i32[1])
      {
        *(v12 - 3) = v15 | 4;
      }

      if (vuzp1_s8(*&v3, vuzp1_s16(v17, *&v3)).i8[5])
      {
        *(v12 - 2) = v15 | 5;
      }

      if (vuzp1_s8(*&v3, vuzp1_s16(*&v3, vmovn_s64(vcgeq_u64(v3, *&v8)))).i8[6])
      {
        *(v12 - 1) = v15 | 6;
        *v12 = v15 | 7;
      }

      v18 = vmovn_s64(vcgeq_u64(v3, v7));
      if (vuzp1_s8(vuzp1_s16(v18, *v3.i8), *v3.i8).u8[0])
      {
        v12[1] = v15 | 8;
      }

      if (vuzp1_s8(vuzp1_s16(v18, *&v3), *&v3).i8[1])
      {
        v12[2] = v15 | 9;
      }

      if (vuzp1_s8(vuzp1_s16(*&v3, vmovn_s64(vcgeq_u64(v3, *&v6))), *&v3).i8[2])
      {
        v12[3] = v15 | 0xA;
        v12[4] = v15 | 0xB;
      }

      v19 = vmovn_s64(vcgeq_u64(v3, v5));
      if (vuzp1_s8(*&v3, vuzp1_s16(v19, *&v3)).i32[1])
      {
        v12[5] = v15 | 0xC;
      }

      if (vuzp1_s8(*&v3, vuzp1_s16(v19, *&v3)).i8[5])
      {
        v12[6] = v15 | 0xD;
      }

      if (vuzp1_s8(*&v3, vuzp1_s16(*&v3, vmovn_s64(vcgeq_u64(v3, *&v4)))).i8[6])
      {
        v12[7] = v15 | 0xE;
        v12[8] = v15 | 0xF;
      }

      v9 = vaddq_s64(v9, v14);
      v10 = vaddq_s64(v10, v14);
      v11 = vaddq_s64(v11, v14);
      v8 = vaddq_s64(v8, v14);
      v7 = vaddq_s64(v7, v14);
      v6 = vaddq_s64(v6, v14);
      v5 = vaddq_s64(v5, v14);
      v4 = vaddq_s64(v4, v14);
      v13 += 16;
      v12 += 16;
    }

    while (v13 - ((a2 + 15) & 0x1FFFFFFF0) != 15);
    if (a2 != 1)
    {
      for (i = 1; i != a2; ++i)
      {
        v21 = a3[i];
        v22 = i - 1;
        if (i - 1 >= 0)
        {
          while (1)
          {
            v23 = &a3[v22];
            v24 = *v23;
            if (*(result + v21) <= *(result + v24))
            {
              break;
            }

            v23[1] = v24;
            if (v22-- <= 0)
            {
              v22 = -1;
              break;
            }
          }
        }

        a3[v22 + 1] = v21;
      }
    }
  }

  v26 = *MEMORY[0x29EDCA608];
  return result;
}

double *VecSortAscR8(double *result, int a2, signed int a3)
{
  v15 = *MEMORY[0x29EDCA608];
  if (a3 > a2 && ((a3 | a2) & 0x80000000) == 0)
  {
    v4 = result;
    do
    {
      v5 = a2;
      for (i = a3; ; ++i)
      {
        v7 = v4[a2];
        v8 = &v4[v5];
        do
        {
          v9 = *v8++;
          v10 = v9;
          v11 = v5 + 1;
          if (v5 >= a3)
          {
            break;
          }

          ++v5;
        }

        while (v10 <= v7);
        v5 = v11 - 1;
        do
        {
          v12 = i;
          v13 = v4[i--];
        }

        while (v12 > a2 && v13 > v7);
        if ((i + 1) <= v5)
        {
          break;
        }

        *(v8 - 1) = v13;
        v4[v12] = v10;
      }

      v4[v12] = v7;
      v4[a2] = v13;
      result = VecSortAscR8(v4, a2, i);
      a2 = i + 2;
    }

    while ((i + 2) < a3 && ((a2 | a3) & 0x80000000) == 0);
  }

  v14 = *MEMORY[0x29EDCA608];
  return result;
}

double *VecMedian8(double *result, unsigned int a2)
{
  v8 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    v3 = result;
    result = VecSortAscR8(result, 0, a2 - 1);
    v4 = a2 >> 1;
    if (a2)
    {
      v6 = v3[v4];
    }

    else
    {
      v5 = (v3[v4 - 1] + v3[v4]) * 0.5;
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

double GN_AGNSS_Get_GAD_Data(_DWORD *a1, char a2, int *a3, int *a4, _WORD *a5, _BYTE *a6, int *a7, _WORD *a8, int *a9, _BYTE *a10, uint64_t a11)
{
  v30 = *MEMORY[0x29EDCA608];
  v29 = 0;
  API_Get_GAD_Data(a1, a2, a7, a8, &v29, a3, a4, a9, a10, &v16);
  *a5 = *a8;
  *a6 = v29;
  *a11 = v16;
  *(a11 + 4) = v17;
  result = v18;
  *(a11 + 8) = v18;
  *(a11 + 16) = v19;
  *(a11 + 18) = v20;
  *(a11 + 20) = v21;
  *(a11 + 24) = v22;
  *(a11 + 25) = v23;
  *(a11 + 26) = v24;
  *(a11 + 28) = v25;
  *(a11 + 30) = v26;
  *(a11 + 31) = v27;
  *(a11 + 32) = v28;
  v15 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GN_AGNSS_Get_Meas(_DWORD *a1, int a2, char *a3)
{
  v4 = a2;
  v8 = *MEMORY[0x29EDCA608];
  GNSS_MS_Ass_Meas = API_Get_GNSS_MS_Ass_Meas(a1, a2, a3);
  if (GNSS_MS_Ass_Meas)
  {
    EvLog_GN_AGNSS_Meas(3u, v4, a3);
  }

  v6 = *MEMORY[0x29EDCA608];
  return GNSS_MS_Ass_Meas;
}

char *EvLog_GN_AGNSS_Meas(unsigned int a1, char a2, uint64_t a3)
{
  v35 = *MEMORY[0x29EDCA608];
  if ((a2 & 0x10) != 0)
  {
    v5 = 81;
  }

  else
  {
    v5 = 45;
  }

  if ((a2 & 0x20) != 0)
  {
    v6 = 82;
  }

  else
  {
    v6 = 45;
  }

  v7 = vdupq_n_s32(a2);
  if ((a2 & 0x40) != 0)
  {
    v8 = 66;
  }

  else
  {
    v8 = 45;
  }

  v9 = vbsl_s8(vmovn_s32(vceqzq_s32(vandq_s8(v7, xmmword_29975CAF0))), 0x2D002D002D002DLL, 0x4D005300450047);
  v29 = vuzp1_s8(v9, v9).u32[0];
  v30 = v5;
  v31 = v6;
  v32 = v8;
  v33 = 0;
  v34 = 0;
  v10 = str_AGNSS_PM(*a3);
  result = EvLog_v("GN_AGNSS_Meas:  PM %s  %s %8d %4d %3d  %3d %u  %2d %3d", &v29, v10, *(a3 + 4), *(a3 + 8), *(a3 + 10), *(a3 + 11), *(a3 + 12), *(a3 + 16), *(a3 + 17));
  if (g_Enable_Event_Log >= a1 && *(a3 + 16))
  {
    v12 = 0;
    v13 = (a3 + 40);
    do
    {
      v14 = *(v13 - 11);
      v15 = v14 >> 3;
      v16 = v14 & 7;
      v17 = str_AGNSS_PM(*(v13 - 5));
      v18 = *(v13 - 16);
      v19 = *(v13 - 15);
      v20 = *(v13 - 14);
      v21 = *(v13 - 13);
      v22 = *(v13 - 12);
      v23 = *(v13 - 11);
      v24 = *(v13 - 2);
      v25 = *(v13 - 1);
      v26 = *(v13 - 2);
      v27 = *v13;
      v13 += 6;
      result = EvLog_v("GN_AGNSS_Meas_El: %2d %s %3d %3d %2d %d  C %3d %2d (%d,%d,%3d) %7d  D %6d %5d %d", v12++, v17, v18, v19, v20, v21, v22, v23, v15, v16, ((v16 * 0.125 + 1.0) * 0.5 * (1 << v15)), v26, v24, v25, v27);
    }

    while (v12 < *(a3 + 16));
  }

  v28 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GN_AGNSS_Get_Assist_Req(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v61 = *MEMORY[0x29EDCA608];
  strcpy(v57, "--- ");
  memset(v58, 0, sizeof(v58));
  v59 = 0;
  v55 = v58;
  v56 = &v60;
  v54[0] = v58;
  v54[1] = v58;
  GNSS_Assist_Req = API_Get_GNSS_Assist_Req(a1, a2, a3, a4, a5, a6, a7);
  sprintf1da(v54, GNSS_Assist_Req, &v60 + 1, 0, 0);
  v9 = 3;
  v10 = v54[0];
  do
  {
    v54[0] = v10 + 1;
    *v10 = 32;
    v10 = v54[0];
    if (v54[0] >= v56)
    {
      v10 = v55;
      v54[0] = v55;
    }

    --v9;
  }

  while (v9 > 1);
  if (a1)
  {
    if (*a1 == 1)
    {
      if (a1[10] == 1)
      {
        v11 = 116;
      }

      else
      {
        v11 = 84;
      }

      v57[0] = v11;
    }

    if (a1[1] == 1)
    {
      if (a1[11])
      {
        v12 = 112;
      }

      else
      {
        v12 = 80;
      }

      v57[1] = v12;
    }

    if (a1[2] == 1)
    {
      if (a1[12])
      {
        v13 = 105;
      }

      else
      {
        v13 = 73;
      }

      v57[2] = v13;
    }

    v14 = v57[0];
    if (v57[0])
    {
      v15 = &v57[1];
      do
      {
        v54[0] = v10 + 1;
        *v10 = v14;
        v10 = v54[0];
        if (v54[0] >= v56)
        {
          v10 = v55;
          v54[0] = v55;
        }

        v16 = *v15++;
        v14 = v16;
      }

      while (v16);
    }

    v17 = " g(";
    if (a1[4])
    {
      v17 = " G(";
    }

    v18 = *v17;
    if (*v17)
    {
      v19 = (v17 + 1);
      do
      {
        v54[0] = v10 + 1;
        *v10 = v18;
        v10 = v54[0];
        if (v54[0] >= v56)
        {
          v10 = v55;
          v54[0] = v55;
        }

        v20 = *v19++;
        v18 = v20;
      }

      while (v20);
    }

    sprintf1da(v54, a1[14], &v60 + 1, 0, 0);
    sprintf_cm1d(v54, a1[15]);
    sprintf_cm1d(v54, a1[16]);
    v21 = v54[0]++;
    *v21 = 41;
    v22 = v54[0];
    if (v54[0] >= v56)
    {
      v22 = v55;
      v54[0] = v55;
    }

    v23 = " r(";
    if (a1[5])
    {
      v23 = " R(";
    }

    v24 = *v23;
    if (*v23)
    {
      v25 = (v23 + 1);
      do
      {
        v54[0] = v22 + 1;
        *v22 = v24;
        v22 = v54[0];
        if (v54[0] >= v56)
        {
          v22 = v55;
          v54[0] = v55;
        }

        v26 = *v25++;
        v24 = v26;
      }

      while (v26);
    }

    sprintf1da(v54, a1[17], &v60 + 1, 0, 0);
    sprintf_cm1d(v54, a1[18]);
    sprintf_cm1d(v54, a1[19]);
    v27 = v54[0]++;
    *v27 = 41;
    v28 = v54[0];
    if (v54[0] >= v56)
    {
      v28 = v55;
      v54[0] = v55;
    }

    v29 = " q(";
    if (a1[6])
    {
      v29 = " Q(";
    }

    v30 = *v29;
    if (*v29)
    {
      v31 = (v29 + 1);
      do
      {
        v54[0] = v28 + 1;
        *v28 = v30;
        v28 = v54[0];
        if (v54[0] >= v56)
        {
          v28 = v55;
          v54[0] = v55;
        }

        v32 = *v31++;
        v30 = v32;
      }

      while (v32);
    }

    sprintf1da(v54, a1[20], &v60 + 1, 0, 0);
    sprintf_cm1d(v54, a1[21]);
    sprintf_cm1d(v54, a1[22]);
    v33 = v54[0]++;
    *v33 = 41;
    v34 = v54[0];
    if (v54[0] >= v56)
    {
      v34 = v55;
      v54[0] = v55;
    }

    v35 = " s(";
    if (a1[7])
    {
      v35 = " S(";
    }

    v36 = *v35;
    if (*v35)
    {
      v37 = (v35 + 1);
      do
      {
        v54[0] = v34 + 1;
        *v34 = v36;
        v34 = v54[0];
        if (v54[0] >= v56)
        {
          v34 = v55;
          v54[0] = v55;
        }

        v38 = *v37++;
        v36 = v38;
      }

      while (v38);
    }

    sprintf1da(v54, a1[23], &v60 + 1, 0, 0);
    sprintf_cm1d(v54, a1[24]);
    sprintf_cm1d(v54, a1[25]);
    v39 = v54[0]++;
    *v39 = 41;
    v40 = v54[0];
    if (v54[0] >= v56)
    {
      v40 = v55;
      v54[0] = v55;
    }

    v41 = " b(";
    if (a1[8])
    {
      v41 = " B(";
    }

    v42 = *v41;
    if (*v41)
    {
      v43 = (v41 + 1);
      do
      {
        v54[0] = v40 + 1;
        *v40 = v42;
        v40 = v54[0];
        if (v54[0] >= v56)
        {
          v40 = v55;
          v54[0] = v55;
        }

        v44 = *v43++;
        v42 = v44;
      }

      while (v44);
    }

    sprintf1da(v54, a1[26], &v60 + 1, 0, 0);
    sprintf_cm1d(v54, a1[27]);
    sprintf_cm1d(v54, a1[28]);
    v45 = v54[0]++;
    *v45 = 41;
    v46 = v54[0];
    if (v54[0] >= v56)
    {
      v46 = v55;
      v54[0] = v55;
    }

    v47 = " e(";
    if (a1[9])
    {
      v47 = " E(";
    }

    v48 = *v47;
    if (*v47)
    {
      v49 = (v47 + 1);
      do
      {
        v54[0] = v46 + 1;
        *v46 = v48;
        v46 = v54[0];
        if (v54[0] >= v56)
        {
          v46 = v55;
          v54[0] = v55;
        }

        v50 = *v49++;
        v48 = v50;
      }

      while (v50);
    }

    sprintf1da(v54, a1[29], &v60 + 1, 0, 0);
    sprintf_cm1d(v54, a1[30]);
    sprintf_cm1d(v54, a1[31]);
    v51 = v54[0]++;
    *v51 = 41;
    if (v54[0] >= v56)
    {
      v54[0] = v55;
    }
  }

  EvLog_v("GN_AGNSS_Assist_Req: %s", v58);
  v52 = *MEMORY[0x29EDCA608];
  return GNSS_Assist_Req;
}

uint64_t GN_AGNSS_Set_Bad_SV_List(unsigned int a1, int *a2, unsigned __int8 *a3)
{
  v55 = *MEMORY[0x29EDCA608];
  memset(v50, 0, 130);
  v48 = 0u;
  v49 = 0u;
  *v47 = 0u;
  v6 = Is_GN_API_Set_Allowed("GN_AGNSS_Set_Bad_SV_List");
  result = 0;
  if (!v6)
  {
    goto LABEL_83;
  }

  Debug_Log_AGNSS_Bad_SV_List(a1, a2, a3);
  v8 = *(p_api + 72) + 253;
  v9 = *(*(p_api + 72) + 397);
  v10 = *(*(p_api + 72) + 413);
  v11 = *(*(p_api + 72) + 365);
  *&v54[80] = *(*(p_api + 72) + 381);
  *&v54[96] = v9;
  *&v54[112] = v10;
  v12 = *(v8 + 80);
  v13 = *(v8 + 96);
  v14 = *(v8 + 48);
  *&v54[16] = *(v8 + 64);
  *&v54[32] = v12;
  v15 = *v8;
  *&v54[48] = v13;
  *&v54[64] = v11;
  v16 = *(v8 + 16);
  v17 = *(v8 + 32);
  *v51 = v15;
  v52 = v16;
  *&v54[128] = *(v8 + 176);
  v53 = v17;
  *v54 = v14;
  if (!a1)
  {
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
LABEL_81:
    EvLog_v("GN_AGNSS_Set_Bad_SV_List: G %d Q %d R %d S %d B %d E %d", a1, v31, v29, v30, v33, v32);
    result = API_Set_Inhib_SVID(v51, v47);
    goto LABEL_83;
  }

  v18 = 0;
  v46 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = a1;
  do
  {
    while (1)
    {
      v25 = a2[v18];
      if (v25 > 15)
      {
        switch(v25)
        {
          case 16:
            v21 = 1;
            goto LABEL_20;
          case 32:
            v23 = 1;
            goto LABEL_20;
          case 64:
            v22 = 1;
            goto LABEL_20;
        }

        break;
      }

      if (v25 > 3)
      {
        if (v25 == 4)
        {
          v20 = 1;
          goto LABEL_20;
        }

        if (v25 == 8)
        {
          goto LABEL_20;
        }

        break;
      }

      if (v25 == 2)
      {
        v19 = 1;
        goto LABEL_20;
      }

      if (v25 != 1)
      {
        break;
      }

      v46 = 1;
      if (a1 - 1 == v18++)
      {
        goto LABEL_26;
      }
    }

    EvCrt_Illegal_Default("GN_AGNSS_Set_Bad_SV_List", 0x216u);
LABEL_20:
    ++v18;
  }

  while (a1 != v18);
  if ((v46 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_26:
  *v51 = 0u;
  v52 = 0u;
  *&v27 = 0x101010101010101;
  *(&v27 + 1) = 0x101010101010101;
  *v47 = v27;
  v48 = v27;
LABEL_27:
  if ((v19 & 1) == 0)
  {
    if ((v20 & 1) == 0)
    {
      goto LABEL_29;
    }

LABEL_37:
    memset(&v54[91], 0, 39);
    *&v35 = 0x101010101010101;
    *(&v35 + 1) = 0x101010101010101;
    *(&v50[5] + 11) = v35;
    *(&v50[6] + 11) = v35;
    *(&v50[7] + 10) = 0x101010101010101;
    if (v21)
    {
      goto LABEL_38;
    }

LABEL_30:
    if ((v23 & 1) == 0)
    {
      goto LABEL_31;
    }

LABEL_39:
    v53 = 0uLL;
    *v54 = 0;
    *&v49 = 0x101010101010101;
    *(&v49 + 1) = 0x101010101010101;
    *&v50[0] = 0x101010101010101;
    if ((v22 & 1) == 0)
    {
      goto LABEL_33;
    }

LABEL_32:
    memset(&v54[44], 0, 37);
    *&v28 = 0x101010101010101;
    *(&v28 + 1) = 0x101010101010101;
    *(&v50[2] + 12) = v28;
    *(&v50[3] + 12) = v28;
    *(&v50[4] + 9) = 0x101010101010101;
    goto LABEL_33;
  }

  memset(&v54[8], 0, 36);
  *&v34 = 0x101010101010101;
  *(&v34 + 1) = 0x101010101010101;
  *(v50 + 8) = v34;
  *(&v50[1] + 8) = v34;
  DWORD2(v50[2]) = 16843009;
  if (v20)
  {
    goto LABEL_37;
  }

LABEL_29:
  if ((v21 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_38:
  *&v54[89] = 0;
  *&v54[81] = 0;
  *(&v50[5] + 1) = 0x101010101010101;
  *(&v50[5] + 9) = 257;
  if (v23)
  {
    goto LABEL_39;
  }

LABEL_31:
  if (v22)
  {
    goto LABEL_32;
  }

LABEL_33:
  if (a1 > 0xB2)
  {
    EvCrt_v("GN_AGNSS_Set_Bad_SV_List: FAILED: Num_Bad_SV = %d >%d, Out of range!");
    goto LABEL_82;
  }

  v36 = 0;
  while (2)
  {
    v37 = a2[v36];
    if (v37 > 15)
    {
      switch(v37)
      {
        case 16:
          v38 = 202;
          v37 = 193;
          v39 = 4;
          break;
        case 32:
          v38 = 24;
          v39 = 1;
          v37 = 1;
          break;
        case 64:
          v38 = 37;
          v37 = 1;
          v39 = 3;
          break;
        default:
          goto LABEL_53;
      }
    }

    else
    {
      switch(v37)
      {
        case 1:
          v39 = 0;
          v38 = 32;
          break;
        case 2:
          v38 = 36;
          v37 = 1;
          v39 = 2;
          break;
        case 4:
          v38 = 158;
          v37 = 120;
          v39 = 5;
          break;
        default:
LABEL_53:
          v40 = str_AGNSS_PM(a2[v36]);
          EvCrt_v("GN_AGNSS_Set_Bad_SV_List: FAILED: Bad_SV_Type_List[%d] = 0x%x (%s), Out of range!", v36, v37, v40);
LABEL_62:
          if (a1 != ++v36)
          {
            continue;
          }

          v33 = 0;
          v32 = 0;
          v31 = 0;
          v30 = 0;
          v29 = 0;
          a1 = 0;
          while (2)
          {
            v44 = *a2++;
            v43 = v44;
            if (v44 <= 7)
            {
              switch(v43)
              {
                case 1:
                  ++a1;
                  break;
                case 2:
                  ++v32;
                  break;
                case 4:
                  ++v30;
                  break;
                default:
                  goto LABEL_77;
              }
            }

            else if (v43 > 31)
            {
              if (v43 == 32)
              {
                ++v29;
              }

              else
              {
                if (v43 != 64)
                {
                  goto LABEL_77;
                }

                ++v33;
              }
            }

            else
            {
              if (v43 == 8)
              {
                goto LABEL_80;
              }

              if (v43 == 16)
              {
                ++v31;
                goto LABEL_80;
              }

LABEL_77:
              EvCrt_Illegal_Default("GN_AGNSS_Set_Bad_SV_List", 0x2B7u);
            }

LABEL_80:
            if (!--v24)
            {
              goto LABEL_81;
            }

            continue;
          }
      }
    }

    break;
  }

  v41 = a3[v36];
  if (v41 >= v37 && v38 >= v41)
  {
    v51[v41 - v37 + Num_Prn[v39]] = 1;
    goto LABEL_62;
  }

  EvCrt_v("GN_AGNSS_Set_Bad_SV_List: FAILED: Bad_SV_Id_List[%d] = %d <%d or >%d, Out of range!");
LABEL_82:
  result = 0;
LABEL_83:
  v45 = *MEMORY[0x29EDCA608];
  return result;
}

const char *str_AGNSS_PM(int a1)
{
  v3 = *MEMORY[0x29EDCA608];
  if (a1 <= 7)
  {
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        result = "E";
        goto LABEL_23;
      }

      if (a1 == 4)
      {
        result = "S";
        goto LABEL_23;
      }
    }

    else
    {
      if (!a1)
      {
LABEL_22:
        result = "X";
        goto LABEL_23;
      }

      if (a1 == 1)
      {
        result = "G";
        goto LABEL_23;
      }
    }

    goto LABEL_21;
  }

  if (a1 <= 31)
  {
    if (a1 == 8)
    {
      result = "M";
      goto LABEL_23;
    }

    if (a1 == 16)
    {
      result = "Q";
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  if (a1 == 32)
  {
    result = "R";
    goto LABEL_23;
  }

  if (a1 == 64)
  {
    result = "B";
    goto LABEL_23;
  }

  if (a1 != 128)
  {
LABEL_21:
    EvCrt_Illegal_Default("str_AGNSS_PM", 0x76u);
    goto LABEL_22;
  }

  result = "H";
LABEL_23:
  v2 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GN_AGNSS_Set_Not_Brd_SV_List(unsigned int a1, int *a2, unsigned __int8 *a3)
{
  v42 = *MEMORY[0x29EDCA608];
  result = Is_GN_API_Set_Allowed("GN_AGNSS_Set_Not_Brd_SV_List");
  if (!result)
  {
    goto LABEL_83;
  }

  Debug_Log_AGNSS_Not_Brd_SV_List(a1, a2, a3);
  v7 = *(p_api + 72);
  v8 = *(v7 + 624);
  *&v41[80] = *(v7 + 608);
  *&v41[96] = v8;
  *&v41[112] = *(v7 + 640);
  *&v41[128] = *(v7 + 656);
  v9 = *(v7 + 560);
  *&v41[16] = *(v7 + 544);
  *&v41[32] = v9;
  v10 = *(v7 + 592);
  *&v41[48] = *(v7 + 576);
  *&v41[64] = v10;
  v11 = *(v7 + 496);
  *v38 = *(v7 + 480);
  v39 = v11;
  v12 = *(v7 + 528);
  v40 = *(v7 + 512);
  *v41 = v12;
  if (!a1)
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
LABEL_81:
    EvLog_v("GN_AGNSS_Set_Not_Brd_SV_List: G %d Q %d R %d S %d B %d E %d", a1, v24, v22, v23, v26, v25);
    result = API_Set_Not_Broadcast_SVID(v38);
    goto LABEL_83;
  }

  v13 = 0;
  v37 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = a1;
  do
  {
    while (1)
    {
      v20 = a2[v13];
      if (v20 > 15)
      {
        switch(v20)
        {
          case 16:
            v16 = 1;
            goto LABEL_20;
          case 32:
            v18 = 1;
            goto LABEL_20;
          case 64:
            v17 = 1;
            goto LABEL_20;
        }

        break;
      }

      if (v20 > 3)
      {
        if (v20 == 4)
        {
          v15 = 1;
          goto LABEL_20;
        }

        if (v20 == 8)
        {
          goto LABEL_20;
        }

        break;
      }

      if (v20 == 2)
      {
        v14 = 1;
        goto LABEL_20;
      }

      if (v20 != 1)
      {
        break;
      }

      v37 = 1;
      if (a1 - 1 == v13++)
      {
        goto LABEL_26;
      }
    }

    EvCrt_Illegal_Default("GN_AGNSS_Set_Not_Brd_SV_List", 0x300u);
LABEL_20:
    ++v13;
  }

  while (a1 != v13);
  if ((v37 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_26:
  *v38 = 0u;
  v39 = 0u;
LABEL_27:
  if ((v14 & 1) == 0)
  {
    if ((v15 & 1) == 0)
    {
      goto LABEL_29;
    }

LABEL_37:
    memset(&v41[91], 0, 39);
    if (v16)
    {
      goto LABEL_38;
    }

LABEL_30:
    if ((v18 & 1) == 0)
    {
      goto LABEL_31;
    }

LABEL_39:
    v40 = 0uLL;
    *v41 = 0;
    if ((v17 & 1) == 0)
    {
      goto LABEL_33;
    }

LABEL_32:
    memset(&v41[44], 0, 37);
    goto LABEL_33;
  }

  memset(&v41[8], 0, 36);
  if (v15)
  {
    goto LABEL_37;
  }

LABEL_29:
  if ((v16 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_38:
  *&v41[89] = 0;
  *&v41[81] = 0;
  if (v18)
  {
    goto LABEL_39;
  }

LABEL_31:
  if (v17)
  {
    goto LABEL_32;
  }

LABEL_33:
  if (a1 > 0xB2)
  {
    EvCrt_v("GN_AGNSS_Set_Not_Brd_SV_List: FAILED: Num_Not_Brd_SV = %d >%d, Out of range!");
    goto LABEL_82;
  }

  v27 = 0;
  while (2)
  {
    v28 = a2[v27];
    if (v28 > 15)
    {
      switch(v28)
      {
        case 16:
          v29 = 202;
          v28 = 193;
          v30 = 4;
          break;
        case 32:
          v29 = 24;
          v30 = 1;
          v28 = 1;
          break;
        case 64:
          v29 = 37;
          v28 = 1;
          v30 = 3;
          break;
        default:
          goto LABEL_53;
      }
    }

    else
    {
      switch(v28)
      {
        case 1:
          v30 = 0;
          v29 = 32;
          break;
        case 2:
          v29 = 36;
          v28 = 1;
          v30 = 2;
          break;
        case 4:
          v29 = 158;
          v28 = 120;
          v30 = 5;
          break;
        default:
LABEL_53:
          v31 = str_AGNSS_PM(a2[v27]);
          EvCrt_v("GN_AGNSS_Set_Not_Brd_SV_List: FAILED: Not_Brd_SV_Type_List[%d] = 0x%x (%s), Out of range!", v27, v28, v31);
LABEL_62:
          if (a1 != ++v27)
          {
            continue;
          }

          v26 = 0;
          v25 = 0;
          v24 = 0;
          v23 = 0;
          v22 = 0;
          a1 = 0;
          while (2)
          {
            v35 = *a2++;
            v34 = v35;
            if (v35 <= 7)
            {
              switch(v34)
              {
                case 1:
                  ++a1;
                  break;
                case 2:
                  ++v25;
                  break;
                case 4:
                  ++v23;
                  break;
                default:
                  goto LABEL_77;
              }
            }

            else if (v34 > 31)
            {
              if (v34 == 32)
              {
                ++v22;
              }

              else
              {
                if (v34 != 64)
                {
                  goto LABEL_77;
                }

                ++v26;
              }
            }

            else
            {
              if (v34 == 8)
              {
                goto LABEL_80;
              }

              if (v34 == 16)
              {
                ++v24;
                goto LABEL_80;
              }

LABEL_77:
              EvCrt_Illegal_Default("GN_AGNSS_Set_Not_Brd_SV_List", 0x39Bu);
            }

LABEL_80:
            if (!--v19)
            {
              goto LABEL_81;
            }

            continue;
          }
      }
    }

    break;
  }

  v32 = a3[v27];
  if (v32 >= v28 && v29 >= v32)
  {
    v38[v32 - v28 + Num_Prn[v30]] = 1;
    goto LABEL_62;
  }

  EvCrt_v("GN_AGNSS_Set_Not_Brd_SV_List: FAILED: Not_Brd_SV_Id_List[%d] = %d <%d or >%d, Out of range!");
LABEL_82:
  result = 0;
LABEL_83:
  v36 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GN_AGNSS_Set_Ref_Time(unsigned int *a1)
{
  v33 = *MEMORY[0x29EDCA608];
  if (!Is_GN_API_Set_Allowed("GN_AGNSS_Set_Ref_Time"))
  {
    goto LABEL_38;
  }

  v3 = *a1;
  v2 = a1[1];
  v4 = str_AGNSS_PM(v2);
  EvLog_v("GN_AGNSS_Set_Ref_Time: %d 0x%x (%s) %d %d %d", v3, v2, v4, *(a1 + 4), a1[3], *(a1 + 8));
  if (!*a1)
  {
    EvCrt_v("GN_AGNSS_Set_Ref_Time: FAILED: OS_Time_ms = 0, Out of range!", 0, v32);
    goto LABEL_38;
  }

  v6 = a1[1];
  if (v6 - 1 > 0x3F || ((1 << (v6 - 1)) & 0x800000008000800BLL) == 0)
  {
    str_AGNSS_PM(a1[1]);
    EvCrt_v("GN_AGNSS_Set_Ref_Time: FAILED: GNSS_Type = 0x%x (%s), Out of range!");
    goto LABEL_38;
  }

  if (a1[2] < 0)
  {
    EvCrt_v("GN_AGNSS_Set_Ref_Time: FAILED: Day = %d <1 or >%d, Out of range!");
    goto LABEL_38;
  }

  if (a1[3] > 0x5265BFF)
  {
    v30 = a1[3];
    EvCrt_v("GN_AGNSS_Set_Ref_Time: FAILED: TOD_ms = %d >%d, Out of range!");
LABEL_38:
    v19 = 0;
    goto LABEL_39;
  }

  if (!*(a1 + 8))
  {
    EvCrt_v("GN_AGNSS_Set_Ref_Time: FAILED: Sigma_ms = %d ==0, Out of range!");
    goto LABEL_38;
  }

  v5 = *a1;
  if (((*&g_MacClockTicksToMsRelation * mach_continuous_time()) - v5) >= 180001)
  {
    v31 = *a1;
    EvCrt_v("GN_AGNSS_Set_Ref_Time: FAILED: OS_Time_ms = %d, too old by %d ms");
    goto LABEL_38;
  }

  Debug_Log_AGNSS_Ref_Time(a1);
  v7 = a1[1];
  v8 = v7 - 1;
  if (v8 > 0x3F)
  {
    goto LABEL_40;
  }

  if (((1 << (v7 - 1)) & 0x800000000000800BLL) != 0)
  {
    v9 = *(a1 + 4);
    v10 = a1[3];
    if (*(a1 + 4))
    {
      if (v7 != 64)
      {
        if (v7 != 2)
        {
          goto LABEL_30;
        }

        v9 = (v9 + 7168);
LABEL_23:
        v11 = 13000;
LABEL_29:
        v10 += v11;
LABEL_30:
        v20 = Complete_GPS_GNSS_Day(v9, v10 / 1000);
        v21 = v20 / 7;
        v22 = v10 * 0.001 + (86400 * (-7 * (v20 / 7) + v20));
        for (i = 0x4122750000000000; v22 >= 604800.0; LOWORD(v21) = v21 + 1)
        {
          v22 = v22 + -604800.0;
        }

        while (v22 < 0.0)
        {
          v22 = v22 + 604800.0;
          LOWORD(v21) = v21 - 1;
        }

        v24 = *a1;
        v25 = p_NA;
        *(p_NA + 412) = *a1;
        *(v25 + 424) = v21;
        *(v25 + 416) = v22;
        LOWORD(i) = *(a1 + 8);
        v26 = i * 0.001;
        *(v25 + 432) = v26;
        if (v20 >= 1)
        {
          v19 = 1;
          *(v25 + 2) = 1;
          API_Set_Ref_Time(v24, v22, v21, v26);
          goto LABEL_39;
        }

LABEL_37:
        EvCrt_v("GN_AGNSS_Set_Ref_Time: FAILED, GNSS_Day unknown");
        goto LABEL_38;
      }

      v9 = (v9 + 9492);
    }

    else if (v7 != 64)
    {
      if (v7 != 2)
      {
        goto LABEL_30;
      }

      goto LABEL_23;
    }

    v11 = 14000;
    goto LABEL_29;
  }

  if (v8 != 31)
  {
LABEL_40:
    v29 = str_AGNSS_PM(a1[1]);
    EvLog_v("GN_AGNSS_Set_Ref_Time: IGNORED, Not Implemented for GNSS Type: %s", v29);
    goto LABEL_38;
  }

  v12 = a1[3];
  v13 = Complete_Glon_GNSS_Day(*(a1 + 4), v12 / 0x3E8);
  v14 = p_NA;
  *(p_NA + 3) = 1;
  v15 = *a1;
  *(v14 + 440) = *a1;
  *(v14 + 444) = v13 / 0x5B5u + 1;
  *(v14 + 446) = v13 % 0x5B5u;
  v16 = v12 * 0.001;
  LOWORD(v17) = *(a1 + 8);
  v18 = v17 * 0.001;
  *(v14 + 448) = v16;
  *(v14 + 456) = v18;
  if (!v13)
  {
    goto LABEL_37;
  }

  API_Set_Ref_Glon_Time(v15, v13 / 0x5B5u + 1, v13 % 0x5B5u, v16, v18);
  v19 = 1;
LABEL_39:
  v27 = *MEMORY[0x29EDCA608];
  return v19;
}

uint64_t Complete_GPS_GNSS_Day(uint64_t result, int a2)
{
  if (result >= 0x2000)
  {
    goto LABEL_16;
  }

  v2 = *(p_api + 48);
  if (*(v2 + 5) != 1 || *v2 < 3 || (v3 = *(v2 + 24) + 604800 * *(v2 + 16), v3 < 1))
  {
    if (result)
    {
LABEL_9:
      v6 = *(*(p_api + 72) + 1026);
      v5 = 7 * v6 + 4096;
      if (v6 <= 1539)
      {
        v5 = 14869;
      }

      goto LABEL_11;
    }

    LOWORD(v5) = 0;
LABEL_15:
    result = v5;
    goto LABEL_16;
  }

  v4 = v3 - a2;
  v5 = (v3 - a2 + 43200) / 86400;
  if (!result)
  {
    goto LABEL_15;
  }

  if (v4 <= 707745599)
  {
    goto LABEL_9;
  }

LABEL_11:
  v7 = v5 - result;
  if (v5 - result >= 4096)
  {
    v7 = 4096;
  }

  result = ((v5 - result - v7 + 0x1FFF) & 0xFFFFE000) + result;
LABEL_16:
  v8 = *MEMORY[0x29EDCA608];
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Complete_Glon_GNSS_Day(int a1, int a2)
{
  if ((a1 & 0xE000) != 0)
  {
    LOWORD(v5) = a1;
    goto LABEL_14;
  }

  v2 = *(p_api + 48);
  if (*(v2 + 5) != 1)
  {
    goto LABEL_8;
  }

  if (*v2 < 3)
  {
    goto LABEL_8;
  }

  v3 = *(v2 + 24) + 604800 * *(v2 + 16);
  if (v3 < 1)
  {
    goto LABEL_8;
  }

  v4 = v3 - a2 + 54000;
  v5 = v4 / 0x15180 - 5840;
  if (a1 || v4 < 0x1E148980)
  {
    if (v4 > 0x484337FF)
    {
LABEL_10:
      v7 = v5 - 4096;
      do
      {
        LOWORD(v5) = a1;
        a1 += 0x2000;
      }

      while (v7 > v5);
      goto LABEL_14;
    }

LABEL_8:
    v6 = *(*(p_api + 72) + 1026);
    v5 = 7 * v6 - 1743;
    if (v6 <= 1538)
    {
      v5 = 9027;
    }

    goto LABEL_10;
  }

LABEL_14:
  v8 = *MEMORY[0x29EDCA608];
  v9 = *MEMORY[0x29EDCA608];
  return (v5 + 1);
}

uint64_t GN_AGNSS_Set_Time_Model(uint64_t a1)
{
  v37 = *MEMORY[0x29EDCA608];
  if (!Is_GN_API_Set_Allowed("GN_AGNSS_Set_Time_Model"))
  {
    goto LABEL_22;
  }

  v2 = str_AGNSS_PM(*a1);
  v3 = str_AGNSS_PM(*(a1 + 24));
  EvLog_v("GN_AGNSS_Set_Time_Model: %s->%s  %d %d  %d %d %d  %d", v2, v3, *(a1 + 4), *(a1 + 8), *(a1 + 12), *(a1 + 16), *(a1 + 20), *(a1 + 21));
  if ((*a1 - 2) > 0x3E || ((1 << (*a1 - 2)) & 0x4000000040000001) == 0)
  {
    str_AGNSS_PM(*a1);
    EvCrt_v("GN_AGNSS_Set_Time_Model: FAILED: GNSS_Type_From = 0x%x (%s), Out of range!");
    goto LABEL_22;
  }

  v4 = *(a1 + 24);
  if ((v4 - 1) > 0x3F || ((1 << (v4 - 1)) & 0x8000000080008003) == 0)
  {
    str_AGNSS_PM(*(a1 + 24));
    EvCrt_v("GN_AGNSS_Set_Time_Model: FAILED: GNSS_Type_To = 0x%x (%s), Out of range!");
    goto LABEL_22;
  }

  if (*(a1 + 4) >= 0x240C840u)
  {
    v25 = *(a1 + 4);
    EvCrt_v("GN_AGNSS_Set_Time_Model: FAILED: Ref_GNSS_TOW = %d >=604800000/16, Out of range!");
LABEL_22:
    v9 = 0;
    goto LABEL_23;
  }

  v5 = *(a1 + 16);
  if (v5 != 0x7FFFFFFF && (v5 - 0x800000) >> 24 != 255)
  {
    v26 = *(a1 + 16);
    EvCrt_v("GN_AGNSS_Set_Time_Model: FAILED: tA1 = %d <-2^23 or >=2^23, Out of range!");
    goto LABEL_22;
  }

  v6 = *(a1 + 20);
  if (v6 != 127 && ((v6 - 64) & 0x80000000) == 0)
  {
    v27 = *(a1 + 20);
    EvCrt_v("GN_AGNSS_Set_Time_Model: FAILED: tA2 = %d <-64 or >=64, Out of range!");
    goto LABEL_22;
  }

  v7 = *(a1 + 8);
  if (v7 != 0x7FFF && v7 >= 0x2000)
  {
    v28 = *(a1 + 8);
    EvCrt_v("GN_AGNSS_Set_Time_Model:  FAILED:  Ref_GNSS_Week = %d >=8192, Out of range!");
    goto LABEL_22;
  }

  v8 = *(a1 + 21);
  if (v8 != 127 && ((v8 - 64) & 0x80000000) == 0)
  {
    v29 = *(a1 + 21);
    EvCrt_v("GN_AGNSS_Set_Time_Model:  FAILED:  deltaT = %d <-64 or >=64, Out of range!");
    goto LABEL_22;
  }

  Debug_Log_AGNSS_Time_Model(a1);
  v13 = *a1;
  if (*a1 == 2)
  {
    v22 = *(a1 + 24);
    if (v22 != 16 && v22 != 1)
    {
      goto LABEL_22;
    }

    v23 = *(a1 + 16);
    LOWORD(v34) = *(a1 + 12);
    WORD1(v34) = v23;
    LODWORD(v12) = *(a1 + 4);
    BYTE4(v34) = (v12 * 0.00000444444444);
    LOWORD(v24) = (*(a1 + 8) - 1024) & 0x3F;
    if (1024 - *(a1 + 8) >= 0)
    {
      v24 = -((1024 - *(a1 + 8)) & 0x3F);
    }

    BYTE5(v34) = v24;
    BYTE6(v34) = *(a1 + 28);
    v9 = GN_AGAL_Set_GGTO(&v34);
    if ((v9 & 1) == 0)
    {
      EvCrt_v("GN_AGNSS_Set_Time_Model: FAILED, A-Galileo GGTO");
    }

    goto LABEL_23;
  }

  if (v13 == 64)
  {
    WORD2(v35) = 0;
    v34 = 0x8000800080008000;
    LODWORD(v35) = 2147450879;
    v18 = *(a1 + 16);
    v19 = (*(a1 + 12) * 2.91038305e-10);
    v20 = *(a1 + 24);
    if (v20 > 15)
    {
      if (v20 == 32)
      {
        v21 = &v35 + 2;
        LOWORD(v35) = (*(a1 + 12) * 2.91038305e-10);
        goto LABEL_45;
      }

      if (v20 != 16)
      {
        goto LABEL_46;
      }
    }

    else if (v20 != 1)
    {
      if (v20 == 2)
      {
        v21 = &v34 + 6;
        WORD2(v34) = (*(a1 + 12) * 2.91038305e-10);
LABEL_45:
        *v21 = (v18 * 4.4408921e-15);
      }

LABEL_46:
      BYTE4(v35) = *(a1 + 28);
      if ((GN_ABDS_Set_BGTO(&v34) & 1) == 0)
      {
        EvCrt_v("GN_AGNSS_Set_Time_Model:  FAILED,  A-Beidou BGTO");
      }

      v9 = 1;
      goto LABEL_23;
    }

    v21 = &v34 + 2;
    LOWORD(v34) = (*(a1 + 12) * 2.91038305e-10);
    goto LABEL_45;
  }

  if (v13 != 32)
  {
    goto LABEL_22;
  }

  v14 = *(a1 + 24);
  if (v14 != 16 && v14 != 1)
  {
    goto LABEL_22;
  }

  v34 = 0;
  v35 = 0;
  v36 = 0;
  v33 = 0.0;
  v32 = 0;
  v31 = 0;
  v15 = *(a1 + 8);
  v16 = 16 * *(a1 + 4) / 0x3E8u;
  API_Get_UTC_Cor(1, &v33);
  GPS_To_Glon_Time(0, v15, v16, v33, &v31, &v32, &v30);
  LOBYTE(v35) = v31;
  v17 = vcvtd_n_f64_s32(*(a1 + 12), 5uLL);
  LOWORD(v34) = v32;
  HIDWORD(v35) = v17;
  HIDWORD(v34) = 0;
  LOBYTE(v36) = 1;
  BYTE1(v36) = *(a1 + 28);
  v9 = GN_AGLON_Set_Clk1(&v34);
  if ((v9 & 1) == 0)
  {
    EvCrt_v("GN_AGNSS_Set_Time_Model: FAILED, A-Glonass Clk1");
  }

LABEL_23:
  v10 = *MEMORY[0x29EDCA608];
  return v9;
}

uint64_t GN_AGNSS_Set_Acq_Ass(unsigned int *a1)
{
  v121 = *MEMORY[0x29EDCA608];
  result = Is_GN_API_Set_Allowed("GN_AGNSS_Set_Acq_Ass");
  if (!result)
  {
    goto LABEL_72;
  }

  EvLog_nd("GN_AGNSS_Set_Acq_Ass: ", 5, v3, *a1, a1[1], a1[2], *(a1 + 12), *(a1 + 13));
  if (g_Enable_Event_Log >= 4u && *(a1 + 13))
  {
    v4 = 0;
    v5 = (a1 + 8);
    do
    {
      v6 = str_AGNSS_PM(*(v5 - 4));
      v7 = *(v5 - 12);
      v8 = *(v5 - 5);
      v9 = *(v5 - 8);
      v10 = *(v5 - 7);
      v11 = *(v5 - 3);
      v12 = *(v5 - 4);
      v13 = *(v5 - 3);
      v14 = *(v5 - 1);
      v15 = *v5;
      v5 += 20;
      EvLog_v("GN_AGNSS_AA_El:  %2d %s %3d   %5d %3d %d   %4d %3d %2d   %3d %2d", v4++, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15);
    }

    while (v4 < *(a1 + 13));
  }

  if (*a1 >= 0x36EE80)
  {
    *(p_NA + 297) = 0;
    EvCrt_v("GN_AGNSS_Set_Acq_Ass: FAILED: Ref_GPS_TOW = %d >=36000000, Out of range!");
    goto LABEL_71;
  }

  v16 = a1[1];
  if (v16 > 0x240C83FF)
  {
    *(p_NA + 297) = 0;
    EvCrt_v("GN_AGNSS_Set_Acq_Ass: FAILED: Ref_GPS_TOW = %d >=604800000, Out of range!");
    goto LABEL_71;
  }

  v17 = a1[2];
  if ((v17 - 1) > 0x3F || ((1 << (v17 - 1)) & 0x800000008000800BLL) == 0)
  {
    if (v17)
    {
      *(p_NA + 297) = 0;
      str_AGNSS_PM(v17);
      EvCrt_v("GN_AGNSS_Set_Acq_Ass: FAILED: GNSS_Type = 0x%x (%s), Out of range!");
      goto LABEL_71;
    }

    if (*a1 || !v16)
    {
      *(p_NA + 297) = 0;
      EvCrt_v("GN_AGNSS_Set_Acq_Ass: FAILED: GNSS_Type = 0x%x (%s), Out of range");
      goto LABEL_71;
    }
  }

  if (!*(a1 + 12) || *(a1 + 12) - 255 >= 0xFFFFFF66)
  {
    EvCrt_v("GN_AGNSS_Set_Acq_Ass: WARNING: Confidence %d, = 0 or > 100, Treated as not set!", *(a1 + 12));
    *(a1 + 12) = -1;
  }

  v18 = *(a1 + 13);
  if (v18 - 49 <= 0xFFFFFFCF)
  {
    *(p_NA + 297) = 0;
    EvCrt_v("GN_AGNSS_Set_Acq_Ass: FAILED: Num_AA = %d ==0 or >48, Out of range!");
    goto LABEL_71;
  }

  v19 = 0;
  v20 = 0;
  memset(v120, 0, sizeof(v120));
  while (1)
  {
    v21 = a1[v19 + 4];
    if (v21 > 15)
    {
      break;
    }

    switch(v21)
    {
      case 1:
        v23 = 32;
        v22 = 1;
        goto LABEL_32;
      case 2:
        v22 = 1;
        v23 = 36;
        v21 = 3;
        goto LABEL_32;
      case 4:
        v22 = 120;
        v23 = 158;
        v21 = 6;
        goto LABEL_32;
    }

LABEL_29:
    *(v120 + v20) = 0;
    v24 = str_AGNSS_PM(v21);
    EvCrt_v("GN_AGNSS_Set_Acq_Ass: FAILED: sv_Type[%d] = 0x%x (%s), Out of range!", v20, v21, v24);
    v18 = *(a1 + 13);
LABEL_45:
    ++v20;
    v19 += 5;
    if (v20 >= v18)
    {
      Debug_Log_AGNSS_Acq_Ass(a1);
      memcpy(__dst, a1, sizeof(__dst));
      v27 = __dst[1];
      if (__dst[1])
      {
        goto LABEL_74;
      }

      v28 = __dst[0];
      if (!__dst[0])
      {
        goto LABEL_74;
      }

      v29 = *(p_api + 48);
      if (*(v29 + 5) != 1 || *v29 < 3 || (v30 = *(v29 + 24) + 604800 * *(v29 + 16), v30 < 1))
      {
        v27 = 0;
        goto LABEL_74;
      }

      v31 = 1000 * (v30 % 0x93A80u);
      v32 = a1[2];
      switch(v32)
      {
        case 2u:
          v110 = 13000;
          break;
        case 0x40u:
          v110 = 14000;
          break;
        case 0x20u:
          v118[0] = 0.0;
          API_Get_UTC_Cor(1, v118);
          v33 = -0.5;
          if (v118[0] * 1000.0 > 0.0)
          {
            v33 = 0.5;
          }

          v34 = v118[0] * 1000.0 + v33;
          if (v34 <= 2147483650.0)
          {
            if (v34 >= -2147483650.0)
            {
              v35 = v34;
            }

            else
            {
              v35 = 0x80000000;
            }
          }

          else
          {
            v35 = 0x7FFFFFFF;
          }

          v110 = v35 - 10800000;
          break;
        default:
LABEL_182:
          v111 = v28 + 86400000;
          if (v28 >= 0)
          {
            v111 = v28;
          }

          if (v111 > 86400000)
          {
            v111 -= 86400000;
          }

          v112 = v31 - 43200000;
          if (v111 <= (v31 - 43200000))
          {
            v113 = v31 - 43200000;
          }

          else
          {
            v113 = v111;
          }

          v114 = v111 < v112;
          v115 = (v113 - v111 - (v111 < v112)) / 0x5265C00;
          if (v114)
          {
            ++v115;
          }

          v27 = v111 + 86400000 * v115;
          __dst[1] = v27;
LABEL_74:
          v37 = p_NA;
          if (*(p_NA + 297) == 1)
          {
            if (__dst[2])
            {
              v38 = *(p_NA + 17668);
              if (v38)
              {
                v39 = __dst[0] - v38;
                goto LABEL_81;
              }
            }

            if (v27)
            {
              v40 = *(p_NA + 17664);
              if (v40)
              {
                v39 = v27 - v40;
LABEL_81:
                if (v39 <= 4999)
                {
                  LODWORD(v118[0]) = 0;
                  BYTE4(v118[0]) = 0;
                  memset(&v118[1], 0, 37);
                  LODWORD(v117[0]) = 0;
                  BYTE4(v117[0]) = 0;
                  memset(v117 + 8, 0, 32);
                  *(&v117[2] + 5) = 0;
                  EvCrt_v("GN_AGNSS_Set_Acq_Ass: %d records from only %d ms ago, merging.", *(p_NA + 17672), v39);
                  v42 = p_NA;
                  if (*(p_NA + 17672))
                  {
                    v43 = 0;
                    do
                    {
                      v44 = (v42 + 17676 + 28 * v43);
                      v45 = BYTE1(__dst[3]) + 1;
                      v46 = v120;
                      v47 = &__dst[5];
                      while (1)
                      {
                        v48 = *v47;
                        v47 += 20;
                        if (v44[2] == v48 && *v46 == *v44)
                        {
                          break;
                        }

                        ++v46;
                        if (!--v45)
                        {
                          LODWORD(v118[0]) = *(v42 + 17664);
                          BYTE4(v118[0]) = 1;
                          LODWORD(v118[1]) = *v44;
                          v49 = v42 + 17676 + 28 * v43;
                          WORD1(v118[2]) = *(v49 + 10);
                          HIDWORD(v118[2]) = *(v49 + 12);
                          WORD1(v118[3]) = *(v49 + 16);
                          *(&v118[3] + 4) = *(v49 + 20);
                          LODWORD(v117[0]) = __dst[1];
                          Comp_Cur_Acq_Aid(v118, v117);
                          v50 = ++BYTE1(__dst[3]);
                          if (BYTE1(__dst[3]) > 0x30u)
                          {
                            goto LABEL_132;
                          }

                          v51 = v50 - 1;
                          v52 = &__dst[5 * v51 + 4];
                          *(v52 + 4) = BYTE10(v117[0]);
                          v53 = BYTE8(v117[0]);
                          *(v120 + v51) = BYTE8(v117[0]);
                          if (v53 <= 2)
                          {
                            if (v53)
                            {
                              if (v53 != 1)
                              {
                                v54 = 32;
                                goto LABEL_103;
                              }

                              *v52 = 1;
                            }

                            else
                            {
                              *v52 = 0;
                            }
                          }

                          else if (v53 > 4)
                          {
                            if (v53 == 5)
                            {
                              v54 = 16;
                              goto LABEL_103;
                            }

                            if (v53 == 6)
                            {
                              v54 = 4;
                              goto LABEL_103;
                            }

                            *v52 = 0;
                            EvCrt_Illegal_Default("GN_AGNSS_Set_Acq_Ass", 0x77Du);
                          }

                          else
                          {
                            if (v53 == 3)
                            {
                              v54 = 2;
                            }

                            else
                            {
                              v54 = 64;
                            }

LABEL_103:
                            *v52 = v54;
                          }

                          v55 = 40000 * SWORD2(v117[1]);
                          LOWORD(v56) = -1;
                          if (v55 < 0)
                          {
                            BYTE2(v55) = (v55 + 0xFFFF) >> 16;
                          }

                          v57 = SWORD3(v117[1]);
                          *(v52 + 8) = BYTE2(v55) + 42;
                          v58 = v57 * 0.380587346;
                          if (v58 <= 0.0)
                          {
                            v59 = -0.5;
                          }

                          else
                          {
                            v59 = 0.5;
                          }

                          v60 = v58 + v59;
                          if (v60 <= 2147483650.0)
                          {
                            if (v60 >= -2147483650.0)
                            {
                              v56 = v60;
                            }

                            else
                            {
                              LOWORD(v56) = 0;
                            }
                          }

                          *(v52 + 3) = v56;
                          *(v52 + 9) = 0;
                          if (WORD1(v117[1]) >= 0xDDu)
                          {
                            v61 = 5;
                            while (WORD1(v117[1]) > Acq_Ass_Table_Doppler_Unc[v61])
                            {
                              if (++v61 == 10)
                              {
                                goto LABEL_123;
                              }
                            }
                          }

                          else
                          {
                            LODWORD(v61) = 4;
                            while (WORD1(v117[1]) > Acq_Ass_Table_Doppler_Unc[v61])
                            {
                              LODWORD(v61) = v61 - 1;
                              if (v61 == -1)
                              {
                                goto LABEL_123;
                              }
                            }
                          }

                          *(v52 + 9) = v61;
LABEL_123:
                          v63 = BYTE12(v117[1]);
                          v62 = v117[2];
                          *(v52 + 5) = SLODWORD(v117[2]) % 1023;
                          *(v52 + 12) = ((((2145384445 * v62) >> 32) - v62) >> 9) + ((((2145384445 * v62) >> 32) - v62) < 0) + 36 * v63 + LOBYTE(__dst[1]);
                          *(v52 + 13) = 0;
                          v64 = 1;
                          while (WORD5(v117[1]) > Acq_Ass_Table_Code_Window[v64])
                          {
                            if (++v64 == 32)
                            {
                              goto LABEL_128;
                            }
                          }

                          *(v52 + 13) = v64;
LABEL_128:
                          v42 = p_NA;
                          v65 = p_NA + 28 * v43 + 17676;
                          *(v52 + 7) = *(p_NA + 28 * v43 + 17682);
                          *(v52 + 16) = *(v65 + 5);
                          break;
                        }
                      }

                      ++v43;
                    }

                    while (v43 < *(v42 + 17672));
                  }

LABEL_132:
                  EvLog_nd("GN_AGNSS_Set_Acq_Ass: (merged) ", 3, v41, __dst[0], __dst[1], BYTE1(__dst[3]));
                  if (g_Enable_Event_Log >= 4u && BYTE1(__dst[3]))
                  {
                    v66 = 0;
                    v67 = &__dst[8];
                    do
                    {
                      v68 = str_AGNSS_PM(*(v67 - 4));
                      v69 = *(v67 - 12);
                      v70 = *(v67 - 5);
                      v71 = *(v67 - 8);
                      v72 = *(v67 - 7);
                      v73 = *(v67 - 3);
                      v74 = *(v67 - 4);
                      v75 = *(v67 - 3);
                      v76 = *(v67 - 1);
                      v77 = *v67;
                      v67 += 20;
                      EvLog_v("GN_AGNSS_AA_El:  (merged)  %2d %s %3d   %5d %3d %d   %4d %3d %2d   %3d %2d", v66++, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77);
                    }

                    while (v66 < BYTE1(__dst[3]));
                  }

                  v27 = __dst[1];
                  v37 = p_NA;
                }
              }
            }
          }

          *(v37 + 17664) = v27;
          *(v37 + 17668) = __dst[0];
          v78 = BYTE1(__dst[3]);
          *(v37 + 17672) = BYTE1(__dst[3]);
          memset(v118, 0, sizeof(v118));
          memset(v117, 0, sizeof(v117));
          if (!v78)
          {
            bzero((v37 + 17676), 0x540uLL);
LABEL_170:
            *(v37 + 297) = 1;
            if (g_Enable_Event_Log > 3u)
            {
              EvLog_nd("GN_AGNSS_Set_Acq_Ass: (NA) ", 3, v102, *(v37 + 17664), *(v37 + 17668), *(v37 + 17672));
              v106 = p_NA;
              if (*(p_NA + 17672))
              {
                v107 = 0;
                v108 = 17676;
                do
                {
                  v109 = (v106 + v108);
                  EvLog_v("GN_AGNSS_AA_El:  (NA)  %2d   %d %3d %d   %2d %3d %3d   %4d %4d %5d   %4d %6d %7d", v107++, *v109, v109[2], v109[4], v109[5], *(v109 + 3), *(v109 + 4), *(v109 + 5), *(v109 + 6), *(v109 + 7), *(v109 + 8), *(v109 + 5), *(v109 + 6));
                  v106 = p_NA;
                  v108 += 28;
                }

                while (v107 < *(p_NA + 17672));
              }
            }

            result = 1;
            goto LABEL_72;
          }

          v79 = 0;
          v80 = &__dst[8];
          do
          {
            v81 = *v80;
            v80 += 20;
            *(v117 + v79++) = v81;
          }

          while (v78 != v79);
          for (i = 0; i != v78; ++i)
          {
            v83 = 0;
            v84 = -1;
            v85 = -1;
            do
            {
              if (*(v117 + v83) > v84)
              {
                v84 = *(v117 + v83);
                v85 = v83;
              }

              ++v83;
            }

            while (v78 != v83);
            *(v118 + i) = v85;
            *(v117 + v85) = -99;
          }

          v86 = 0;
          v87 = &__dst[7] + 1;
          v88 = v78;
          do
          {
            v89 = *v87;
            v87 += 20;
            v86 += Acq_Ass_Table_Code_Window[v89];
            --v88;
          }

          while (v88);
          v116 = (v86 / v78 + 2) / 3 + 4;
          bzero((v37 + 17676), 0x540uLL);
          v90 = 0;
          v91 = 17700;
          v92 = v37;
          while (1)
          {
            v93 = *(v118 + v90);
            v94 = &__dst[5 * v93 + 4];
            v95 = v92 + v91;
            *(v95 - 22) = *(v94 + 4);
            *(v95 - 24) = *(v120 + v93);
            *(v95 - 10) = (*(v94 + 3) * 2.62751773);
            if (*(v94 + 8))
            {
              break;
            }

            v96 = *(v94 + 9);
            if (*(v94 + 9))
            {
              *(v95 - 12) = -42;
              goto LABEL_153;
            }

            *(v95 - 12) = -16;
            v97 = v116;
LABEL_154:
            v98 = (v92 + v91);
            *(v92 + v91 - 14) = v97;
            v99 = *(v92 + 17664) - *(v94 + 12);
            v100 = v99 - 604800000;
            if (v99 <= 604800000)
            {
              v100 = *(v92 + 17664) - *(v94 + 12);
            }

            if (v99 >= 0)
            {
              v101 = v100;
            }

            else
            {
              v101 = v99 + 604800000;
            }

            *(v98 - 1) = v101 / 1500;
            v102 = v98 - 1;
            *v98 = 1023 * (v101 % 1500);
            v37 = v92;
            if (*(v94 + 5))
            {
              Inc_CA_Chips(*(v94 + 5) - (*(v94 + 5) > 0x200u), (v92 + v91), v102);
              v37 = p_NA;
            }

            v103 = *(v94 + 13);
            v104 = Acq_Ass_Table_Code_Window[v103];
            *(v98 - 4) = v104;
            if (v103)
            {
              *(v92 + v91 - 16) = 16 * v104;
              if ((v103 - 19) > 0xFFFFFFFFFFFFFFEDLL)
              {
                goto LABEL_166;
              }
            }

            else
            {
              *(v92 + v91 - 16) = -1;
            }

            *(v98 - 4) = 512;
LABEL_166:
            v105 = v92 + v91;
            *(v105 - 18) = *(v94 + 7);
            *(v105 - 19) = *(v94 + 16);
            ++v90;
            v91 += 28;
            v92 = v37;
            if (v90 >= BYTE1(__dst[3]))
            {
              goto LABEL_170;
            }
          }

          *(v95 - 12) = *(v94 + 8) - 42;
          v96 = *(v94 + 9);
LABEL_153:
          v97 = Acq_Ass_Table_Doppler_Unc[v96];
          goto LABEL_154;
      }

      v28 += v110;
      goto LABEL_182;
    }
  }

  if (v21 == 16)
  {
    v22 = 193;
    v23 = 202;
    v21 = 5;
    goto LABEL_32;
  }

  if (v21 != 32)
  {
    if (v21 == 64)
    {
      v22 = 1;
      v23 = 37;
      v21 = 4;
      goto LABEL_32;
    }

    goto LABEL_29;
  }

  v22 = 1;
  v23 = 24;
  v21 = 2;
LABEL_32:
  *(v120 + v20) = v21;
  v25 = LOBYTE(a1[v19 + 5]);
  if (v22 > v25 || v23 < v25)
  {
    EvCrt_v("GN_AGNSS_Set_Acq_Ass: FAILED: sv_Id[%d] = %d <%d or >%d, Out of range!");
    goto LABEL_71;
  }

  if (((HIWORD(a1[v19 + 5]) - 2048) >> 12) <= 0xEu)
  {
    *(p_NA + 297) = 0;
    EvCrt_v("GN_AGNSS_Set_Acq_Ass: FAILED: Doppler_0[%d] = %d <-2048 or >2047, Out of range!");
    goto LABEL_71;
  }

  if (LOBYTE(a1[v19 + 6]) >= 0x40u)
  {
    *(p_NA + 297) = 0;
    EvCrt_v("GN_AGNSS_Set_Acq_Ass: FAILED: Doppler_1[%d] = %d >63, Out of range!");
    goto LABEL_71;
  }

  if (BYTE1(a1[v19 + 6]) >= 0xAu)
  {
    *(p_NA + 297) = 0;
    EvCrt_v("GN_AGNSS_Set_Acq_Ass: FAILED: Doppler_Unc[%d] = %d >9, Out of range!");
    goto LABEL_71;
  }

  if (HIWORD(a1[v19 + 6]) >= 0x400u)
  {
    *(p_NA + 297) = 0;
    EvCrt_v("GN_AGNSS_Set_Acq_Ass: FAILED: Code_Phase[%d] = %d >1023, Out of range!");
    goto LABEL_71;
  }

  if (SLOBYTE(a1[v19 + 7]) < 0)
  {
    *(p_NA + 297) = 0;
    EvCrt_v("GN_AGNSS_Set_Acq_Ass: FAILED: Int_Code_Phase[%d] = %d >127, Out of range!");
    goto LABEL_71;
  }

  if (BYTE1(a1[v19 + 7]) >= 0x20u)
  {
    *(p_NA + 297) = 0;
    EvCrt_v("GN_AGNSS_Set_Acq_Ass: FAILED: Code_Window[%d] = %d >31, Out of range!");
    goto LABEL_71;
  }

  if (HIWORD(a1[v19 + 7]) >= 0x168u)
  {
    *(p_NA + 297) = 0;
    EvCrt_v("GN_AGNSS_Set_Acq_Ass: FAILED: Azimuth[%d] = %d >359, Out of range!");
    goto LABEL_71;
  }

  if (LOBYTE(a1[v19 + 8]) < 0x5Bu)
  {
    goto LABEL_45;
  }

  *(p_NA + 297) = 0;
  EvCrt_v("GN_AGNSS_Set_Acq_Ass: FAILED: Elevation[%d] = %d >90, Out of range!");
LABEL_71:
  result = 0;
LABEL_72:
  v36 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GM_Get_Best_SSS(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  v15 = *MEMORY[0x29EDCA608];
  v4 = (a4 - 1);
  if (a4 - 1 < 0)
  {
    v9 = 0xFFFFFFFFLL;
  }

  else
  {
    v6 = 0;
    v7 = (a1 + 36 * v4 + 8);
    v8 = (a2 + 48 * v4 + 12);
    v9 = 0xFFFFFFFFLL;
    do
    {
      if (Is_Legal(*(v7 - 2)))
      {
        v10 = *(v7 - 4);
        if (v10 >= a3 && (~*v7 & 0x308) == 0)
        {
          if (*(v8 - 8) == 1)
          {
            if (*v8)
            {
              v11 = 70;
            }

            else
            {
              v11 = 64;
            }

            v10 += v11;
            if (v8[3])
            {
              v10 += 128;
            }
          }

          if (v10 <= v6)
          {
            v9 = v9;
          }

          else
          {
            v6 = v10;
            v9 = v4;
          }
        }
      }

      v7 -= 18;
      v8 -= 48;
    }

    while (v4-- > 0);
  }

  v13 = *MEMORY[0x29EDCA608];
  return v9;
}

void GncP24_55UpdateBceOrbitAssistance(char a1)
{
  v190 = *MEMORY[0x29EDCA608];
  if (g_OrbitDataAvailable == 1)
  {
    v167[0] = 0;
    v168 = 0;
    if ((a1 & 1) == 0 && g_BceOrbitDataInjected == 1)
    {
      if (g_GncP_PEUpdate[0] != 1 || (dword_2A191DEA0 & 0xC) == 0)
      {
        goto LABEL_256;
      }

      if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v1 = mach_continuous_time();
        v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Time Jump detected, Re-injecting broadcast data\n", (*&g_MacClockTicksToMsRelation * v1), "GNC", 73, "GncP24_55UpdateBceOrbitAssistance");
        LbsOsaTrace_WriteLog(8u, __str, v2, 4, 1);
      }
    }

    if (g_GncP_PEUpdate[0] == 1)
    {
      v3 = word_2A191DD98;
      if (byte_2A191DD88 == 1 && word_2A191DD98 != 0)
      {
        v5 = *&qword_2A191DDA0;
        if (xofSvcs_GetXofEEStartTime(v167) == 1)
        {
          v6 = v5 + 604800 * v3;
          v7 = v168 + 604800 * v167[0];
          v8 = v7 - v6;
          v160 = v7;
          v161 = v6;
          v9 = v6 >= v7;
          v10 = v6 - v7;
          if (v10 != 0 && v9)
          {
            v11 = v10;
          }

          else
          {
            v11 = v8;
          }

          if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v12 = mach_continuous_time();
            v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Time GPS,%llu, XoF,%llu\n", (*&g_MacClockTicksToMsRelation * v12), "GNC", 73, "GncP24_55UpdateBceOrbitAssistance", v161, v160);
            LbsOsaTrace_WriteLog(8u, __str, v13, 4, 1);
          }

          if (v11 <= 0x93A7F)
          {
            if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v14 = mach_continuous_time();
              v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: AgeCheckOK for Iono,Utc,TM,ChanMap,Gpstime,%llu,EEStartTime,%llu\n", (*&g_MacClockTicksToMsRelation * v14), "GNC", 73, "GncP24_55UpdateBceOrbitAssistance", v161, v160);
              LbsOsaTrace_WriteLog(8u, __str, v15, 4, 1);
            }

            LOBYTE(v163) = 0;
            bzero(__str, 0x4FBuLL);
            if ((GncP24_16XofGetNotBrdCstSvs(1, 1, 32, __str, &v163) & 1) == 0 && LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
            {
              bzero(__s, 0x410uLL);
              v16 = mach_continuous_time();
              v17 = snprintf(__s, 0x40FuLL, "%10u %s%c %s: #%04hx GPS\n", (*&g_MacClockTicksToMsRelation * v16), "GNC", 87, "GncP24_17UpdtXofAssistNotBrdSv", 257);
              LbsOsaTrace_WriteLog(8u, __s, v17, 2, 1);
            }

            if ((GncP24_16XofGetNotBrdCstSvs(2, 120, 39, __str, &v163) & 1) == 0 && LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
            {
              bzero(__s, 0x410uLL);
              v18 = mach_continuous_time();
              v19 = snprintf(__s, 0x40FuLL, "%10u %s%c %s: #%04hx SBAS\n", (*&g_MacClockTicksToMsRelation * v18), "GNC", 87, "GncP24_17UpdtXofAssistNotBrdSv", 257);
              LbsOsaTrace_WriteLog(8u, __s, v19, 2, 1);
            }

            if ((GncP24_16XofGetNotBrdCstSvs(3, 193, 10, __str, &v163) & 1) == 0 && LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
            {
              bzero(__s, 0x410uLL);
              v20 = mach_continuous_time();
              v21 = snprintf(__s, 0x40FuLL, "%10u %s%c %s: #%04hx QZSS\n", (*&g_MacClockTicksToMsRelation * v20), "GNC", 87, "GncP24_17UpdtXofAssistNotBrdSv", 257);
              LbsOsaTrace_WriteLog(8u, __s, v21, 2, 1);
            }

            if ((GncP24_16XofGetNotBrdCstSvs(4, 1, 36, __str, &v163) & 1) == 0 && LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
            {
              bzero(__s, 0x410uLL);
              v22 = mach_continuous_time();
              v23 = snprintf(__s, 0x40FuLL, "%10u %s%c %s: #%04hx GAL\n", (*&g_MacClockTicksToMsRelation * v22), "GNC", 87, "GncP24_17UpdtXofAssistNotBrdSv", 257);
              LbsOsaTrace_WriteLog(8u, __s, v23, 2, 1);
            }

            if ((GncP24_16XofGetNotBrdCstSvs(5, 1, 24, __str, &v163) & 1) == 0 && LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
            {
              bzero(__s, 0x410uLL);
              v24 = mach_continuous_time();
              v25 = snprintf(__s, 0x40FuLL, "%10u %s%c %s: #%04hx GLO\n", (*&g_MacClockTicksToMsRelation * v24), "GNC", 87, "GncP24_17UpdtXofAssistNotBrdSv", 257);
              LbsOsaTrace_WriteLog(8u, __s, v25, 2, 1);
            }

            if ((GN_AGNSS_Set_Not_Brd_SV_List(v163, __str, v189) & 1) == 0 && LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
            {
              bzero(__s, 0x410uLL);
              v26 = mach_continuous_time();
              v27 = snprintf(__s, 0x40FuLL, "%10u %s%c %s: #%04hx NotBrd SV list\n", (*&g_MacClockTicksToMsRelation * v26), "GNC", 87, "GncP24_17UpdtXofAssistNotBrdSv", 257);
              LbsOsaTrace_WriteLog(8u, __s, v27, 2, 1);
            }

            v166 = 0;
            if (xofSvcs_GetIonoModel(&v166) == 1)
            {
              *__s = 0;
              *v180 = v166;
              v180[8] = 1;
              if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
              {
                bzero(__str, 0x410uLL);
                v28 = mach_continuous_time();
                v29 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:G Iono ZCount,%d,A0,%d,A1,%d,A2,%d,A3,%d,B0,%d,B1,%d,B2,%d,B3,%d\n", (*&g_MacClockTicksToMsRelation * v28), "GNC", 73, "GncP24_55UpdateBceOrbitAssistance", *__s, v180[0], v180[1], v180[2], v180[3], v180[4], v180[5], v180[6], v180[7]);
                LbsOsaTrace_WriteLog(8u, __str, v29, 4, 1);
              }

              if ((GN_AGPS_Set_Ion(__s) & 1) != 0 || !LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
              {
LABEL_49:
                v163 = 0;
                v164 = 0;
                v165 = 0;
                if (xofSvcs_GetGpsUTCModel(&v163) == 1)
                {
                  memset_s(__s, 0x14uLL, 0, 0x14uLL);
                  v180[14] = 1;
                  *__s = 0;
                  *v180 = v163;
                  if (v164 > 0xFFu)
                  {
                    if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
                    {
                      bzero(__str, 0x410uLL);
                      v34 = mach_continuous_time();
                      v35 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx UTC sTot,%u\n", (*&g_MacClockTicksToMsRelation * v34), "GNC", 87, "GncP24_55UpdateBceOrbitAssistance", 772, v164);
                      LbsOsaTrace_WriteLog(8u, __str, v35, 2, 1);
                    }
                  }

                  else
                  {
                    v180[8] = v164;
                  }

                  if (WORD1(v164) > 0xFFu)
                  {
                    if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
                    {
                      bzero(__str, 0x410uLL);
                      v36 = mach_continuous_time();
                      v37 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx UTC WNt,%u\n", (*&g_MacClockTicksToMsRelation * v36), "GNC", 87, "GncP24_55UpdateBceOrbitAssistance", 772, WORD1(v164));
                      LbsOsaTrace_WriteLog(8u, __str, v37, 2, 1);
                    }
                  }

                  else
                  {
                    v180[9] = BYTE2(v164);
                  }

                  if (WORD2(v164) == SBYTE4(v164))
                  {
                    v180[10] = BYTE4(v164);
                  }

                  else if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
                  {
                    bzero(__str, 0x410uLL);
                    v38 = mach_continuous_time();
                    v39 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx UTC DELTAls,%d\n", (*&g_MacClockTicksToMsRelation * v38), "GNC", 87, "GncP24_55UpdateBceOrbitAssistance", 772, SWORD2(v164));
                    LbsOsaTrace_WriteLog(8u, __str, v39, 2, 1);
                  }

                  if (HIWORD(v164) > 0xFFu)
                  {
                    if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
                    {
                      bzero(__str, 0x410uLL);
                      v40 = mach_continuous_time();
                      v41 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx UTC WNlsf,%u\n", (*&g_MacClockTicksToMsRelation * v40), "GNC", 87, "GncP24_55UpdateBceOrbitAssistance", 772, HIWORD(v164));
                      LbsOsaTrace_WriteLog(8u, __str, v41, 2, 1);
                    }
                  }

                  else
                  {
                    v180[11] = BYTE6(v164);
                  }

                  if (v165 == v165)
                  {
                    v180[12] = v165;
                  }

                  else if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
                  {
                    bzero(__str, 0x410uLL);
                    v42 = mach_continuous_time();
                    v43 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx UTC DN,%d\n", (*&g_MacClockTicksToMsRelation * v42), "GNC", 87, "GncP24_55UpdateBceOrbitAssistance", 772, v165);
                    LbsOsaTrace_WriteLog(8u, __str, v43, 2, 1);
                  }

                  if (HIWORD(v165) == SBYTE2(v165))
                  {
                    v180[13] = BYTE2(v165);
                  }

                  else if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
                  {
                    bzero(__str, 0x410uLL);
                    v44 = mach_continuous_time();
                    v45 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx UTC DELTAlsf,%d\n", (*&g_MacClockTicksToMsRelation * v44), "GNC", 87, "GncP24_55UpdateBceOrbitAssistance", 772, SHIWORD(v165));
                    LbsOsaTrace_WriteLog(8u, __str, v45, 2, 1);
                  }

                  if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
                  {
                    bzero(__str, 0x410uLL);
                    v46 = mach_continuous_time();
                    v47 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:UTC ZCount,%d,A1,%d,A0,%d,Tot,%d,Wnt,%d,dtLs,%d,WNLSF,%d,DN,%d,dtLSF,%d\n", (*&g_MacClockTicksToMsRelation * v46), "GNC", 73, "GncP24_55UpdateBceOrbitAssistance", *__s, *v180, *&v180[4], v180[8], v180[9], v180[10], v180[11], v180[12], v180[13]);
                    LbsOsaTrace_WriteLog(8u, __str, v47, 4, 1);
                  }

                  if ((GN_AGPS_Set_UTC(__s) & 1) != 0 || !LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
                  {
                    goto LABEL_82;
                  }

                  bzero(__str, 0x410uLL);
                  mach_continuous_time();
                  v33 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx G UTC Correction\n");
                }

                else
                {
                  if (!LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
                  {
                    goto LABEL_82;
                  }

                  bzero(__str, 0x410uLL);
                  mach_continuous_time();
                  v33 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx UTC Model\n");
                }

                LbsOsaTrace_WriteLog(8u, __str, v33, 2, 1);
LABEL_82:
                if ((GncP24_60UpdateTimeMod(2) & 1) == 0 && LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
                {
                  bzero(__str, 0x410uLL);
                  v48 = mach_continuous_time();
                  v49 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Time model,SBAS\n", (*&g_MacClockTicksToMsRelation * v48), "GNC", 87, "GncP24_55UpdateBceOrbitAssistance", 257);
                  LbsOsaTrace_WriteLog(8u, __str, v49, 2, 1);
                }

                if ((GncP24_60UpdateTimeMod(3) & 1) == 0 && LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
                {
                  bzero(__str, 0x410uLL);
                  v50 = mach_continuous_time();
                  v51 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Time model,QZSS\n", (*&g_MacClockTicksToMsRelation * v50), "GNC", 87, "GncP24_55UpdateBceOrbitAssistance", 257);
                  LbsOsaTrace_WriteLog(8u, __str, v51, 2, 1);
                }

                if ((GncP24_60UpdateTimeMod(4) & 1) == 0 && LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
                {
                  bzero(__str, 0x410uLL);
                  v52 = mach_continuous_time();
                  v53 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Time model,GAL\n", (*&g_MacClockTicksToMsRelation * v52), "GNC", 87, "GncP24_55UpdateBceOrbitAssistance", 257);
                  LbsOsaTrace_WriteLog(8u, __str, v53, 2, 1);
                }

                if ((GncP24_60UpdateTimeMod(5) & 1) == 0 && LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
                {
                  bzero(__str, 0x410uLL);
                  v54 = mach_continuous_time();
                  v55 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Time model,GLO\n", (*&g_MacClockTicksToMsRelation * v54), "GNC", 87, "GncP24_55UpdateBceOrbitAssistance", 257);
                  LbsOsaTrace_WriteLog(8u, __str, v55, 2, 1);
                }

                if ((GncP24_60UpdateTimeMod(6) & 1) == 0 && LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
                {
                  bzero(__str, 0x410uLL);
                  v56 = mach_continuous_time();
                  v57 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Time model,BDS\n", (*&g_MacClockTicksToMsRelation * v56), "GNC", 87, "GncP24_55UpdateBceOrbitAssistance", 257);
                  LbsOsaTrace_WriteLog(8u, __str, v57, 2, 1);
                }

                v58 = 1;
                *v162 = 0;
                while (1)
                {
                  GloChanMap = xofSvcs_GetGloChanMap(v58, v162);
                  if (GloChanMap == 6)
                  {
                    if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
                    {
                      bzero(__str, 0x410uLL);
                      v62 = mach_continuous_time();
                      v63 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GloChanMap not included/Unknown\n", (*&g_MacClockTicksToMsRelation * v62), "GNC", 73, "GncP24_55UpdateBceOrbitAssistance");
                      v64 = 4;
                      goto LABEL_108;
                    }
                  }

                  else
                  {
                    if (GloChanMap == 1)
                    {
                      if ((GN_AGLON_Set_Chan_Num(v162[0], v162[1]) & 1) != 0 || !LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
                      {
                        goto LABEL_109;
                      }

                      bzero(__str, 0x410uLL);
                      v60 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
                      v61 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GLO Chan map SatId,%u\n", v60);
LABEL_107:
                      v63 = v61;
                      v64 = 2;
LABEL_108:
                      LbsOsaTrace_WriteLog(8u, __str, v63, v64, 1);
                      goto LABEL_109;
                    }

                    if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
                    {
                      bzero(__str, 0x410uLL);
                      v65 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
                      v61 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GLO Chan map Cnt,%u\n", v65);
                      goto LABEL_107;
                    }
                  }

LABEL_109:
                  memset_s(v162, 2uLL, 0, 2uLL);
                  if (++v58 == 25)
                  {
                    v177[0] = 0;
                    v178 = 0;
                    if (xofSvcs_GetGpsAlmData(v177) == 1 && v177[0] - 1 <= 0x1F)
                    {
                      v67 = 0;
                      v68 = 0;
                      do
                      {
                        v66.i32[0] = *(v178 + v67);
                        v69 = vrev32_s16(*&vmovl_u8(v66));
                        *__s = vuzp1_s8(v69, v69).u32[0];
                        v69.i32[0] = *(v178 + v67 + 28);
                        v69.i32[1] = *(v178 + v67 + 4);
                        *v180 = v69;
                        *&v180[8] = *(v178 + v67 + 8);
                        *&v180[12] = *(v178 + v67 + 12);
                        v180[28] = 1;
                        if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
                        {
                          bzero(__str, 0x410uLL);
                          v70 = mach_continuous_time();
                          v71 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:G ALM %d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d\n", (*&g_MacClockTicksToMsRelation * v70), "GNC", 73, "GncP24_57UpdateAlmAssist", __s[1], __s[0], __s[2], __s[3], *v180, *&v180[2], *&v180[4], *&v180[6], *&v180[8], *&v180[12], *&v180[16], *&v180[20], *&v180[24]);
                          LbsOsaTrace_WriteLog(8u, __str, v71, 4, 1);
                        }

                        if ((GN_AGPS_Set_Alm_El(__s) & 1) == 0 && LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
                        {
                          bzero(__str, 0x410uLL);
                          v72 = mach_continuous_time();
                          v73 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx G Alm SatID,%u\n", (*&g_MacClockTicksToMsRelation * v72), "GNC", 87, "GncP24_57UpdateAlmAssist", 257, __s[1]);
                          LbsOsaTrace_WriteLog(8u, __str, v73, 2, 1);
                        }

                        ++v68;
                        v67 += 32;
                      }

                      while (v68 < v177[0]);
                      if (v178)
                      {
                        free(v178);
                      }

                      v178 = 0;
                    }

                    if (xofSvcs_GetQzssAlmData(v177) == 1 && v177[0] - 1 <= 9)
                    {
                      v75 = 0;
                      v76 = 0;
                      do
                      {
                        v74.i32[0] = *(v178 + v75);
                        v77 = vrev32_s16(*&vmovl_u8(v74));
                        *__s = vuzp1_s8(v77, v77).u32[0];
                        v77.i32[0] = *(v178 + v75 + 28);
                        v77.i32[1] = *(v178 + v75 + 4);
                        *v180 = v77;
                        *&v180[8] = *(v178 + v75 + 8);
                        *&v180[12] = *(v178 + v75 + 12);
                        v180[28] = 1;
                        if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
                        {
                          bzero(__str, 0x410uLL);
                          v78 = mach_continuous_time();
                          v79 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:G ALM %d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d\n", (*&g_MacClockTicksToMsRelation * v78), "GNC", 73, "GncP24_57UpdateAlmAssist", __s[1], __s[0], __s[2], __s[3], *v180, *&v180[2], *&v180[4], *&v180[6], *&v180[8], *&v180[12], *&v180[16], *&v180[20], *&v180[24]);
                          LbsOsaTrace_WriteLog(8u, __str, v79, 4, 1);
                        }

                        if ((GN_AGPS_Set_Alm_El(__s) & 1) == 0 && LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
                        {
                          bzero(__str, 0x410uLL);
                          v80 = mach_continuous_time();
                          v81 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Q Alm SatID,%u\n", (*&g_MacClockTicksToMsRelation * v80), "GNC", 87, "GncP24_57UpdateAlmAssist", 257, __s[1]);
                          LbsOsaTrace_WriteLog(8u, __str, v81, 2, 1);
                        }

                        ++v76;
                        v75 += 32;
                      }

                      while (v76 < v177[0]);
                      if (v178)
                      {
                        free(v178);
                      }

                      v178 = 0;
                    }

                    v176 = 0;
                    if (xofSvcs_GetGloAlmData(v175) == 1 && v175[0] - 1 <= 0x17)
                    {
                      v82 = 0;
                      v83 = 33;
                      do
                      {
                        *__s = *(v176 + v83 - 29);
                        __s[2] = *(v176 + v83 - 33);
                        __s[3] = *(v176 + v83 - 27);
                        *v180 = *(v176 + v83 - 25);
                        v180[16] = *(v176 + v83 - 9);
                        *&v180[18] = *(v176 + v83 - 7);
                        *&v180[20] = *(v176 + v83 - 5);
                        *&v180[24] = *(v176 + v83 - 1);
                        v180[26] = 1;
                        if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
                        {
                          bzero(__str, 0x410uLL);
                          v84 = mach_continuous_time();
                          v85 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:R ALM %d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d\n", (*&g_MacClockTicksToMsRelation * v84), "GNC", 73, "GncP24_57UpdateAlmAssist", __s[2], *__s, __s[3], *v180, *&v180[4], *&v180[8], *&v180[12], v180[16], *&v180[18], *&v180[20], *&v180[22], v180[24], v180[25]);
                          LbsOsaTrace_WriteLog(8u, __str, v85, 4, 1);
                        }

                        if ((GN_AGLON_Set_Alm_El(__s) & 1) == 0 && LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
                        {
                          bzero(__str, 0x410uLL);
                          v86 = mach_continuous_time();
                          v87 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx R Alm SatID,%u\n", (*&g_MacClockTicksToMsRelation * v86), "GNC", 87, "GncP24_57UpdateAlmAssist", 257, __s[2]);
                          LbsOsaTrace_WriteLog(8u, __str, v87, 2, 1);
                        }

                        ++v82;
                        v83 += 36;
                      }

                      while (v82 < v175[0]);
                      if (v176)
                      {
                        free(v176);
                      }

                      v176 = 0;
                    }

                    LOBYTE(v173) = 0;
                    v174 = 0;
                    if (xofSvcs_GetGalAlmData(&v173) == 1 && v173 - 1 <= 0x23)
                    {
                      v88 = 0;
                      v89 = 20;
                      do
                      {
                        *__s = *(v174 + v89 - 20);
                        v90 = *(v174 + v89 - 16);
                        __s[2] = (v90 / 0x93A80) & 3;
                        *v180 = v90 % 0x93A80 / 0x258;
                        *&v180[2] = *(v174 + v89 - 4);
                        LODWORD(v91) = *(v174 + v89 - 12);
                        WORD2(v91) = *(v174 + v89 - 2);
                        WORD3(v91) = *(v174 + v89 - 8);
                        *(&v91 + 1) = *(v174 + v89);
                        *&v180[4] = v91;
                        v180[20] = *(v174 + v89 - 5) & 3;
                        v92 = *(v174 + v89 - 6);
                        v180[21] = (v92 >> 2) & 3;
                        v180[22] = v92 & 3;
                        v180[23] = 1;
                        if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
                        {
                          bzero(__str, 0x410uLL);
                          v93 = mach_continuous_time();
                          v94 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:E ALM %u,%u,%u,%u,%d,%u,%d,%d,%d,%d,%d,%d,%d,%u,%u,%u\n", (*&g_MacClockTicksToMsRelation * v93), "GNC", 73, "GncP24_57UpdateAlmAssist", __s[0], __s[1], __s[2], *v180, *&v180[2], *&v180[4], *&v180[6], *&v180[8], *&v180[10], *&v180[12], *&v180[14], *&v180[16], *&v180[18], v180[20], v180[21], v180[22]);
                          LbsOsaTrace_WriteLog(8u, __str, v94, 4, 1);
                        }

                        if ((GN_AGAL_Set_Alm_El(__s) & 1) == 0 && LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
                        {
                          bzero(__str, 0x410uLL);
                          v95 = mach_continuous_time();
                          v96 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx E Alm SatID,%u\n", (*&g_MacClockTicksToMsRelation * v95), "GNC", 87, "GncP24_57UpdateAlmAssist", 257, __s[0]);
                          LbsOsaTrace_WriteLog(8u, __str, v96, 2, 1);
                        }

                        ++v88;
                        v89 += 28;
                      }

                      while (v88 < v173);
                      if (v174)
                      {
                        free(v174);
                      }
                    }

                    if (v11 >> 4 < 0x7E9)
                    {
                      v177[0] = 0;
                      v178 = 0;
                      if (xofSvcs_GetGpsBrdCstEphData(v177) == 1)
                      {
                        if (v177[0] - 1 > 0x1F)
                        {
                          if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
                          {
                            bzero(__str, 0x410uLL);
                            v104 = mach_continuous_time();
                            v105 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx G BCE NumSats,%u\n", (*&g_MacClockTicksToMsRelation * v104), "GNC", 87, "GncP24_58UpdateBrdCstEphAssist", 514, v177[0]);
                            LbsOsaTrace_WriteLog(8u, __str, v105, 2, 1);
                          }
                        }

                        else
                        {
                          v97 = 0;
                          v98 = 28;
                          do
                          {
                            __s[0] = *(v178 + v98 - 28);
                            __s[1] = 0;
                            __s[2] = *(v178 + v98 - 26);
                            __s[3] = *(v178 + v98 - 27);
                            *v180 = 0;
                            v180[2] = 0;
                            v180[3] = *(v178 + v98 - 13);
                            v180[4] = *(v178 + v98 - 14);
                            *&v180[6] = *(v178 + v98 - 24);
                            *&v180[8] = *(v178 + v98 - 22);
                            *&v180[10] = *&v180[8];
                            *&v180[12] = *(v178 + v98 - 10);
                            *&v180[14] = *(v178 + v98 - 16);
                            *&v180[16] = vqtbl1q_s8(*(v178 + v98 + 20), xmmword_29975CB80);
                            LODWORD(v99) = *(v178 + v98 - 20);
                            DWORD1(v99) = *(v178 + v98);
                            *(&v99 + 1) = *(v178 + v98 - 8);
                            *v181 = v99;
                            *&v181[16] = *(v178 + v98 + 4);
                            LOBYTE(v182) = 1;
                            if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
                            {
                              bzero(__str, 0x410uLL);
                              v100 = mach_continuous_time();
                              v101 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:G BCE %d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d\n", (*&g_MacClockTicksToMsRelation * v100), "GNC", 73, "GncP24_58UpdateBrdCstEphAssist", __s[0], __s[1], __s[2], __s[3], v180[0], v180[1], v180[2], v180[3], v180[4], *&v180[6], *&v180[8], *&v180[10], *&v180[12], *&v180[14], *&v180[16], *&v180[18], *&v180[20], *&v180[22], *&v180[24], *&v180[26], *&v180[28], *&v180[30], *v181, *&v181[4], *&v181[8], *&v181[12], *&v181[16], *&v181[20], *&v181[24], *&v181[28]);
                              LbsOsaTrace_WriteLog(8u, __str, v101, 4, 1);
                            }

                            if ((GN_AGPS_Set_Eph_El(__s) & 1) == 0 && LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
                            {
                              bzero(__str, 0x410uLL);
                              v102 = mach_continuous_time();
                              v103 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx G BCE SatID,%u\n", (*&g_MacClockTicksToMsRelation * v102), "GNC", 87, "GncP24_58UpdateBrdCstEphAssist", 257, __s[0]);
                              LbsOsaTrace_WriteLog(8u, __str, v103, 2, 1);
                            }

                            ++v97;
                            v98 += 64;
                          }

                          while (v97 < v177[0]);
                        }

                        if (v178)
                        {
                          free(v178);
                        }

                        v178 = 0;
                      }

                      if (xofSvcs_GetQzssBrdCstEphData(v177) == 1)
                      {
                        if (v177[0] - 1 > 9)
                        {
                          if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
                          {
                            bzero(__str, 0x410uLL);
                            v113 = mach_continuous_time();
                            v114 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Q BCE NumSats,%u\n", (*&g_MacClockTicksToMsRelation * v113), "GNC", 87, "GncP24_58UpdateBrdCstEphAssist", 514, v177[0]);
                            LbsOsaTrace_WriteLog(8u, __str, v114, 2, 1);
                          }
                        }

                        else
                        {
                          v106 = 0;
                          v107 = 28;
                          do
                          {
                            __s[0] = *(v178 + v107 - 28);
                            __s[1] = 0;
                            __s[2] = *(v178 + v107 - 26);
                            __s[3] = *(v178 + v107 - 27);
                            *v180 = 0;
                            v180[2] = 0;
                            v180[3] = *(v178 + v107 - 13);
                            v180[4] = *(v178 + v107 - 14);
                            *&v180[6] = *(v178 + v107 - 24);
                            *&v180[8] = *(v178 + v107 - 22);
                            *&v180[10] = *&v180[8];
                            *&v180[12] = *(v178 + v107 - 10);
                            *&v180[14] = *(v178 + v107 - 16);
                            *&v180[16] = vqtbl1q_s8(*(v178 + v107 + 20), xmmword_29975CB80);
                            LODWORD(v108) = *(v178 + v107 - 20);
                            DWORD1(v108) = *(v178 + v107);
                            *(&v108 + 1) = *(v178 + v107 - 8);
                            *v181 = v108;
                            *&v181[16] = *(v178 + v107 + 4);
                            LOBYTE(v182) = 1;
                            if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
                            {
                              bzero(__str, 0x410uLL);
                              v109 = mach_continuous_time();
                              v110 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:G BCE %d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d\n", (*&g_MacClockTicksToMsRelation * v109), "GNC", 73, "GncP24_58UpdateBrdCstEphAssist", __s[0], __s[1], __s[2], __s[3], v180[0], v180[1], v180[2], v180[3], v180[4], *&v180[6], *&v180[8], *&v180[10], *&v180[12], *&v180[14], *&v180[16], *&v180[18], *&v180[20], *&v180[22], *&v180[24], *&v180[26], *&v180[28], *&v180[30], *v181, *&v181[4], *&v181[8], *&v181[12], *&v181[16], *&v181[20], *&v181[24], *&v181[28]);
                              LbsOsaTrace_WriteLog(8u, __str, v110, 4, 1);
                            }

                            if ((GN_AGPS_Set_Eph_El(__s) & 1) == 0 && LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
                            {
                              bzero(__str, 0x410uLL);
                              v111 = mach_continuous_time();
                              v112 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Q BCE SatID,%u\n", (*&g_MacClockTicksToMsRelation * v111), "GNC", 87, "GncP24_58UpdateBrdCstEphAssist", 257, __s[0]);
                              LbsOsaTrace_WriteLog(8u, __str, v112, 2, 1);
                            }

                            ++v106;
                            v107 += 64;
                          }

                          while (v106 < v177[0]);
                        }

                        if (v178)
                        {
                          free(v178);
                        }

                        v178 = 0;
                      }

                      v175[0] = 0;
                      v176 = 0;
                      if (xofSvcs_GetGloBrdCstEphData(v175) == 1)
                      {
                        if (v175[0] - 1 <= 0x17)
                        {
                          v115 = 0;
                          v116 = 42;
                          while (1)
                          {
                            v173 = 0;
                            v117 = v176 + v116;
                            v118 = *(v176 + v116 - 40);
                            if (v118 < 0x60)
                            {
                              break;
                            }

                            if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
                            {
                              bzero(__str, 0x410uLL);
                              v119 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
                              v158 = *(v176 + v116 - 40);
                              v159 = *(v176 + v116 - 42);
                              v120 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GloTb,%u SatID,%u\n", v119);
LABEL_201:
                              LbsOsaTrace_WriteLog(8u, __str, v120, 2, 1);
                            }

LABEL_202:
                            ++v115;
                            v116 += 44;
                            if (v115 >= v175[0])
                            {
                              goto LABEL_206;
                            }
                          }

                          __s[0] = *(v117 - 42);
                          __s[2] = v118;
                          *v180 = 0;
                          v180[2] = *(v117 - 41);
                          v180[3] = *(v117 - 27);
                          *&v180[4] = *(v117 - 31);
                          v180[6] = *(v117 - 29) != 0;
                          v180[7] = *(v117 - 28);
                          *&v180[8] = *(v117 - 26);
                          *&v180[12] = vuzp2q_s32(*(v117 - 22), vrev64q_s32(*(v117 - 22)));
                          *&v180[28] = *(v117 - 6);
                          v181[0] = *(v117 - 2);
                          v181[1] = *(v117 - 1);
                          v181[2] = *v117;
                          v181[3] = *(v117 - 32);
                          *&v181[4] = *(v117 - 38);
                          *&v181[8] = *(v117 - 17);
                          v181[10] = 1;
                          v121 = xofSvcs_GetGloChanMap(__s[0], &v173);
                          v122 = HIBYTE(v173);
                          if (v121 != 1)
                          {
                            v122 = 127;
                          }

                          __s[1] = v122;
                          if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
                          {
                            bzero(__str, 0x410uLL);
                            v123 = mach_continuous_time();
                            v124 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:R BCE %d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d\n", (*&g_MacClockTicksToMsRelation * v123), "GNC", 73, "GncP24_58UpdateBrdCstEphAssist", __s[0], __s[1], __s[2], *v180, v180[2], v180[3], v180[4], v180[5], v180[6], v180[7], *&v180[8], *&v180[12], *&v180[16], *&v180[20], *&v180[24], *&v180[28], v181[0], v181[1], v181[2], v181[3], *&v181[4], *&v181[8]);
                            LbsOsaTrace_WriteLog(8u, __str, v124, 4, 1);
                          }

                          if ((GN_AGLON_Set_Eph_El(__s) & 1) != 0 || !LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
                          {
                            goto LABEL_202;
                          }

                          bzero(__str, 0x410uLL);
                          v125 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
                          v120 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx R BCE gloN,%u\n", v125);
                          goto LABEL_201;
                        }

                        if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
                        {
                          bzero(__str, 0x410uLL);
                          v126 = mach_continuous_time();
                          v127 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx R BCE NumSats,%u\n", (*&g_MacClockTicksToMsRelation * v126), "GNC", 87, "GncP24_58UpdateBrdCstEphAssist", 514, v175[0]);
                          LbsOsaTrace_WriteLog(8u, __str, v127, 2, 1);
                        }

LABEL_206:
                        if (v176)
                        {
                          free(v176);
                        }

                        v176 = 0;
                      }

                      LOBYTE(v173) = 0;
                      v174 = 0;
                      if (xofSvcs_GetGalBrdCstEphData(&v173) == 1)
                      {
                        if (v173 - 1 > 0x23)
                        {
                          if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
                          {
                            bzero(__str, 0x410uLL);
                            v137 = mach_continuous_time();
                            v138 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx E BCE NumSats,%u\n", (*&g_MacClockTicksToMsRelation * v137), "GNC", 87, "GncP24_58UpdateBrdCstEphAssist", 514, v173);
                            LbsOsaTrace_WriteLog(8u, __str, v138, 2, 1);
                          }
                        }

                        else
                        {
                          v128 = 0;
                          v129 = 52;
                          do
                          {
                            *__s = 0;
                            *v180 = *(v174 + v129 - 48);
                            v180[2] = *(v174 + v129 - 52);
                            v180[3] = *(v174 + v129 - 49);
                            *&v180[4] = *(v174 + v129 - 34);
                            *&v180[6] = *(v174 + v129 - 46);
                            *&v180[8] = vuzp2q_s32(vextq_s8(*(v174 + v129 - 28), *(v174 + v129 - 28), 4uLL), *(v174 + v129 - 28));
                            *&v180[24] = *(v174 + v129 - 12);
                            *v181 = *(v174 + v129 - 4);
                            *&v181[4] = vqtbl1q_s8(*(v174 + v129), xmmword_299729030);
                            *&v181[20] = *(v174 + v129 - 44);
                            *&v181[28] = *(v174 + v129 - 36);
                            *&v181[30] = *&v180[6];
                            HIDWORD(v130) = *(v174 + v129 - 32);
                            LODWORD(v130) = HIDWORD(v130);
                            LODWORD(v182) = v130 >> 16;
                            BYTE4(v182) = 0;
                            v131 = *(v174 + v129 - 51);
                            BYTE5(v182) = v131 & 1;
                            BYTE6(v182) = (v131 & 2) != 0;
                            HIBYTE(v182) = (v131 & 4) != 0;
                            v132 = *(v174 + v129 - 50);
                            LOBYTE(v183) = v132 & 3;
                            BYTE1(v183) = (v132 >> 2) & 3;
                            BYTE2(v183) = (v132 >> 4) & 3;
                            BYTE3(v183) = 1;
                            if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
                            {
                              bzero(__str, 0x410uLL);
                              v133 = mach_continuous_time();
                              v134 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:E EPH %d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d\n", (*&g_MacClockTicksToMsRelation * v133), "GNC", 73, "GncP24_58UpdateBrdCstEphAssist", *__s, *v180, v180[2], v180[3], *&v180[4], *&v180[6], *&v180[8], *&v180[12], *&v180[16], *&v180[20], *v181, *&v181[4], *&v181[6], *&v181[8], *&v181[10], *&v181[12], *&v181[14], *&v181[16], *&v181[18], *&v181[20], *&v181[24], *&v181[28], *&v181[30], v182, SWORD1(v182), BYTE4(v182), BYTE5(v182), BYTE6(v182), HIBYTE(v182), v183, BYTE1(v183), BYTE2(v183));
                              LbsOsaTrace_WriteLog(8u, __str, v134, 4, 1);
                            }

                            if ((GN_AGAL_Set_Eph_El(__s) & 1) == 0 && LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
                            {
                              bzero(__str, 0x410uLL);
                              v135 = mach_continuous_time();
                              v136 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx E BCE SatID,%u\n", (*&g_MacClockTicksToMsRelation * v135), "GNC", 87, "GncP24_58UpdateBrdCstEphAssist", 257, v180[2]);
                              LbsOsaTrace_WriteLog(8u, __str, v136, 2, 1);
                            }

                            ++v128;
                            v129 += 68;
                          }

                          while (v128 < v173);
                        }

                        if (v174)
                        {
                          free(v174);
                        }

                        v174 = 0;
                      }

                      v171[0] = 0;
                      v172 = 0;
                      if (xofSvcs_GetBdsBrdCstEphData(v171) == 1)
                      {
                        if (v171[0] - 1 > 0x24)
                        {
                          if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
                          {
                            bzero(__str, 0x410uLL);
                            v145 = mach_continuous_time();
                            v146 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx B BCE NumSats,%u\n", (*&g_MacClockTicksToMsRelation * v145), "GNC", 87, "GncP24_58UpdateBrdCstEphAssist", 514, v171[0]);
                            LbsOsaTrace_WriteLog(8u, __str, v146, 2, 1);
                          }
                        }

                        else
                        {
                          v139 = 0;
                          v140 = 0;
                          do
                          {
                            v183 = *(v172 + v139 + 12);
                            v184 = *(v172 + v139 + 20);
                            v180[9] = *(v172 + v139 + 26);
                            v180[8] = *(v172 + v139 + 27);
                            v182 = *(v172 + v139 + 76);
                            *&v181[16] = *(v172 + v139 + 60);
                            *&v181[10] = *(v172 + v139 + 56);
                            *&v180[20] = *(v172 + v139 + 28);
                            *v181 = *(v172 + v139 + 44);
                            *&v181[8] = *(v172 + v139 + 58);
                            *&v180[16] = *(v172 + v139 + 36);
                            *&v180[28] = *(v172 + v139 + 40);
                            *&v181[12] = *(v172 + v139 + 52);
                            v180[12] = *(v172 + v139 + 1);
                            *&v180[24] = *(v172 + v139 + 32);
                            v180[10] = *(v172 + v139);
                            v185 = *(v172 + v139 + 22);
                            v186 = *(v172 + v139 + 24);
                            *v180 = *(v172 + v139 + 8);
                            *&v180[4] = *v180;
                            v180[11] = *(v172 + v139 + 2);
                            *&v181[4] = *(v172 + v139 + 48);
                            *__s = *(v172 + v139 + 6);
                            v187 = 1;
                            if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
                            {
                              bzero(__str, 0x410uLL);
                              v141 = mach_continuous_time();
                              v142 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:B BCE %d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d\n", (*&g_MacClockTicksToMsRelation * v141), "GNC", 73, "GncP24_58UpdateBrdCstEphAssist", v180[10], *__s, *v180, *&v180[4], v180[8], v180[9], v180[11], v180[12], *&v180[16], *&v180[20], *&v180[24], *&v180[28], *v181, *&v181[4], *&v181[8], *&v181[10], *&v181[12], *&v181[28], *&v181[24], *&v181[20], *&v181[16], HIDWORD(v182), v182, v183, HIDWORD(v183), v184, v185, v186);
                              LbsOsaTrace_WriteLog(8u, __str, v142, 4, 1);
                            }

                            if ((GN_ABDS_Set_Eph_El(__s) & 1) == 0 && LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
                            {
                              bzero(__str, 0x410uLL);
                              v143 = mach_continuous_time();
                              v144 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx B BCE SatID,%u\n", (*&g_MacClockTicksToMsRelation * v143), "GNC", 87, "GncP24_58UpdateBrdCstEphAssist", 257, v180[10]);
                              LbsOsaTrace_WriteLog(8u, __str, v144, 2, 1);
                            }

                            ++v140;
                            v139 += 84;
                          }

                          while (v140 < v171[0]);
                        }

                        if (v172)
                        {
                          free(v172);
                        }

                        v172 = 0;
                      }

                      v169[0] = 0;
                      v170 = 0;
                      if (xofSvcs_GetSbasBrdCstEphData(v169) == 1)
                      {
                        if (v169[0] - 1 > 0x26)
                        {
                          if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
                          {
                            bzero(__str, 0x410uLL);
                            v153 = mach_continuous_time();
                            v154 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx S BCE NumSats,%u\n", (*&g_MacClockTicksToMsRelation * v153), "GNC", 87, "GncP24_58UpdateBrdCstEphAssist", 514, v169[0]);
                            LbsOsaTrace_WriteLog(8u, __str, v154, 2, 1);
                          }
                        }

                        else
                        {
                          v147 = 0;
                          v148 = 0;
                          do
                          {
                            *__s = *(v170 + v147 + 2);
                            __s[2] = *(v170 + v147 + 7);
                            *v180 = *(v170 + v147 + 4);
                            *&v180[4] = *(v170 + v147 + 6);
                            *&v180[8] = *(v170 + v147 + 8);
                            *&v180[12] = *(v170 + v147 + 12);
                            *&v180[16] = *(v170 + v147 + 16);
                            *&v180[20] = *(v170 + v147 + 20);
                            *&v180[24] = *(v170 + v147 + 24);
                            *&v180[28] = *(v170 + v147 + 28);
                            *v181 = *(v170 + v147 + 32);
                            *&v181[4] = *(v170 + v147 + 34);
                            *&v181[8] = *(v170 + v147 + 36);
                            v181[12] = 1;
                            if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
                            {
                              bzero(__str, 0x410uLL);
                              v149 = mach_continuous_time();
                              v150 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:S EPH %d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d\n", (*&g_MacClockTicksToMsRelation * v149), "GNC", 73, "GncP24_58UpdateBrdCstEphAssist", *__s, __s[2], *v180, *&v180[4], *&v180[8], *&v180[12], *&v180[16], *&v180[20], *&v180[24], *&v180[28], *v181, *&v181[4], *&v181[8]);
                              LbsOsaTrace_WriteLog(8u, __str, v150, 4, 1);
                            }

                            if ((GN_ASBAS_Set_Eph_El(*(v170 + v147), *(v170 + v147 + 38), __s) & 1) == 0 && LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
                            {
                              bzero(__str, 0x410uLL);
                              v151 = mach_continuous_time();
                              v152 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx S BCE SatID,%u\n", (*&g_MacClockTicksToMsRelation * v151), "GNC", 87, "GncP24_58UpdateBrdCstEphAssist", 257, *(v170 + v147));
                              LbsOsaTrace_WriteLog(8u, __str, v152, 2, 1);
                            }

                            ++v148;
                            v147 += 40;
                          }

                          while (v148 < v169[0]);
                        }

                        if (v170)
                        {
                          free(v170);
                        }
                      }

                      if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
                      {
                        bzero(__str, 0x410uLL);
                        v155 = mach_continuous_time();
                        v156 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: BCEAgeCheckOK Gpstime,%llu,EEStartTime,%llu\n", (*&g_MacClockTicksToMsRelation * v155), "GNC", 73, "GncP24_55UpdateBceOrbitAssistance", v161, v160);
                        LbsOsaTrace_WriteLog(8u, __str, v156, 4, 1);
                      }
                    }

                    g_BceOrbitDataInjected = 1;
                    goto LABEL_256;
                  }
                }
              }

              bzero(__str, 0x410uLL);
              v30 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
              v31 = 257;
            }

            else
            {
              if (!LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
              {
                goto LABEL_49;
              }

              bzero(__str, 0x410uLL);
              v30 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
              v31 = 769;
            }

            v32 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx G Iono\n", v30, "GNC", 87, "GncP24_55UpdateBceOrbitAssistance", v31);
            LbsOsaTrace_WriteLog(8u, __str, v32, 2, 1);
            goto LABEL_49;
          }
        }
      }
    }
  }

LABEL_256:
  v157 = *MEMORY[0x29EDCA608];
}