void sub_29AAADEC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, std::__shared_weak_count *a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, std::__shared_weak_count *a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  if (a23)
  {
    sub_29A014BEC(a23);
  }

  if (a37 < 0)
  {
    operator delete(__p);
  }

  if (a31)
  {
    sub_29A014BEC(a31);
  }

  if (a43 < 0)
  {
    operator delete(a38);
  }

  sub_29A008B0C(&a44);
  a44 = (v49 - 168);
  sub_29A012C90(&a44);
  if (*(v49 - 121) < 0)
  {
    operator delete(*(v49 - 144));
  }

  v51 = *(v49 - 112);
  if (v51)
  {
    sub_29A014BEC(v51);
  }

  sub_29A09932C(v49 - 104, *(v49 - 96));
  v52 = *(v49 - 72);
  if (v52)
  {
    sub_29A014BEC(v52);
  }

  _Unwind_Resume(a1);
}

void sub_29AAAE0F8(__int128 *a1@<X0>, void *a2@<X8>)
{
  v21[4] = *MEMORY[0x29EDCA608];
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v4)
  {
    v4 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  sub_29AAAE400(v17, "constant", v4 + 17);
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v5)
  {
    v5 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  sub_29AAAE400(v18, "uniform", v5 + 146);
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v6)
  {
    v6 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  sub_29AAAE400(v19, "varying", v6 + 152);
  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v7)
  {
    v7 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  sub_29AAAE400(v20, "vertex", v7 + 154);
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v8)
  {
    v8 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  sub_29AAAE400(v21, "faceVarying", v8 + 40);
  sub_29AAAE450(&v15, v17, 5);
  for (i = 0; i != -20; i -= 4)
  {
    v10 = &v17[i];
    v11 = v21[i + 3];
    if ((v11 & 7) != 0)
    {
      atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (*(v10 + 151) < 0)
    {
      operator delete(v10[16]);
    }
  }

  if (&v16 == sub_29A01BCCC(&v15, a1))
  {
    v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    if (!v13)
    {
      v13 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    }

    v12 = *(v13 + 85);
  }

  else
  {
    v17[0] = a1;
    v12 = sub_29AAAE6F4(&v15, a1, &unk_29B4D6118, v17)[7];
  }

  *a2 = v12;
  if ((v12 & 7) != 0)
  {
    v14 = (v12 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a2 = v14;
    }
  }

  sub_29AAAE698(&v15, v16);
}

uint64_t sub_29AAAE3B4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_29AAAE400(void *a1, char *a2, uint64_t *a3)
{
  result = sub_29A008E78(a1, a2);
  v5 = *a3;
  result[3] = *a3;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    result[3] &= 0xFFFFFFFFFFFFFFF8;
  }

  return result;
}

uint64_t sub_29AAAE450(uint64_t a1, const void **a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  v4 = a1 + 8;
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      sub_29AAAE4D0(a1, v4, a2, a2);
      a2 += 4;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

uint64_t *sub_29AAAE4D0(uint64_t **a1, uint64_t a2, const void **a3, __int128 *a4)
{
  v6 = sub_29A0194B4(a1, a2, &v10, &v9, a3);
  result = *v6;
  if (!*v6)
  {
    sub_29AAAE554(a1, a4, &v8);
    sub_29A00B204(a1, v10, v6, v8);
    return v8;
  }

  return result;
}

void *sub_29AAAE554@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x40uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  result = sub_29AAAE5C0(v6 + 4, a2);
  *(a3 + 16) = 1;
  return result;
}

void *sub_29AAAE5C0(void *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v4;
  }

  v5 = *(a2 + 3);
  __dst[3] = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    __dst[3] &= 0xFFFFFFFFFFFFFFF8;
  }

  return __dst;
}

void sub_29AAAE63C(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29A8FB09C(v2 + 32);
    }

    operator delete(v2);
  }
}

void sub_29AAAE698(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29AAAE698(a1, *a2);
    sub_29AAAE698(a1, a2[1]);
    sub_29A8FB09C((a2 + 4));

    operator delete(a2);
  }
}

uint64_t *sub_29AAAE6F4(uint64_t **a1, const void **a2, uint64_t a3, __int128 **a4)
{
  v6 = sub_29A00B0D0(a1, &v9, a2);
  result = *v6;
  if (!*v6)
  {
    sub_29AAAE78C(a1, a4, &v8);
    sub_29A00B204(a1, v9, v6, v8);
    return v8;
  }

  return result;
}

_BYTE *sub_29AAAE78C@<X0>(uint64_t a1@<X0>, __int128 **a2@<X2>, void *a3@<X8>)
{
  result = operator new(0x40uLL);
  v7 = result;
  *a3 = result;
  a3[1] = a1;
  a3[2] = 0;
  v8 = *a2;
  if (*(*a2 + 23) < 0)
  {
    result = sub_29A008D14(result + 32, *v8, *(v8 + 1));
  }

  else
  {
    v9 = *v8;
    *(result + 6) = *(v8 + 2);
    *(result + 2) = v9;
  }

  *(v7 + 7) = 0;
  *(a3 + 16) = 1;
  return result;
}

uint64_t sub_29AAAE820(uint64_t *a1, void *a2, _BYTE *a3, int *a4, int16x4_t a5)
{
  v7 = *a3;
  if (v7 <= 1)
  {
    if (*a3)
    {
      if (v7 != 1)
      {
LABEL_22:
        v13 = v5;
        v14 = v6;
        v10 = sub_29AABB028();
        sub_29A008E78(__p, "Unknown quantization function");
        sub_29AA5B750(v10, __p);
        if (v12 < 0)
        {
          operator delete(__p[0]);
        }

        return 112;
      }

      v9 = *a4;

      return sub_29AA5FD04(a1, a2, a3, v9, a5);
    }

    else
    {

      return sub_29AAAE900(a1, a2, a5);
    }
  }

  else
  {
    switch(v7)
    {
      case 2u:

        return sub_29AAAE9A0(a1, a2, a3, a4, a5);
      case 3u:

        return sub_29AAAEB78(a1, a2, a3, a5);
      case 4u:

        return sub_29AAAF018(a1, a2, a3, a4, a5);
      default:
        goto LABEL_22;
    }
  }
}

uint64_t sub_29AAAE900(uint64_t *a1, void *a2, int16x4_t a3)
{
  v5 = (a1[1] - *a1) >> 2;
  v10 = 0;
  v11 = &v10;
  sub_29A18E224(a2, v5, &v11, a3);
  v6 = *a1;
  if (a1[1] != *a1)
  {
    v7 = 0;
    do
    {
      v8 = *(v6 + 4 * v7);
      sub_29A18E624(a2);
      *(a2[4] + 4 * v7++) = v8;
      v6 = *a1;
    }

    while (v7 < (a1[1] - *a1) >> 2);
  }

  return 0;
}

uint64_t sub_29AAAE9A0(void *a1, void *a2, uint64_t a3, _DWORD *a4, int16x4_t a5)
{
  v13 = a1[1] - *a1;
  if (v13)
  {
    v14 = (v13 & 4) == 0;
  }

  else
  {
    v14 = 0;
  }

  if (!v14)
  {
    return 112;
  }

  v41[1] = v12;
  v41[2] = v11;
  v41[3] = v10;
  v41[4] = v9;
  v41[5] = v8;
  v41[6] = v7;
  v41[15] = v5;
  v41[16] = v6;
  if (*(a3 + 32) < 3 || *a4 != 2)
  {
    return 112;
  }

  v21 = v13 >> 2;
  v40 = 0;
  v41[0] = &v40;
  sub_29A18E224(a2, (v13 >> 2) + ((v13 >> 2) >> 1), v41, a5);
  if (v21 >= 1)
  {
    v22 = 0;
    v23 = 0;
    v24 = ~(-1 << (*(a3 + 32) - 1));
    do
    {
      v25 = (*a1 + 4 * v23);
      v26 = *v25 - v24;
      v27 = v25[1] - v24;
      if (v26 >= 0)
      {
        v28 = v26;
      }

      else
      {
        v28 = -v26;
      }

      if (v27 >= 0)
      {
        v29 = v27;
      }

      else
      {
        v29 = -v27;
      }

      v30 = v24 - v28;
      v31 = v29 - v24;
      if (v26 >= 0)
      {
        v31 = v24 - v29;
      }

      v32 = v28 - v24;
      if (v27 >= 0)
      {
        v32 = v30;
      }

      if (v30 - v29 < 0)
      {
        v26 = v31;
        v27 = v32;
      }

      v33 = v26;
      v34 = v27;
      v35 = (v30 - v29);
      v37 = v30 == v29 && v26 == 0 && v27 == 0;
      v38 = 1.0;
      if (!v37)
      {
        v38 = 1.0 / sqrtf((v35 * v35) + ((v33 * v33) + (v34 * v34)));
      }

      v39 = v38 * v33;
      sub_29A18E624(a2);
      *(a2[4] + v22) = v39;
      sub_29A18E624(a2);
      *(a2[4] + v22 + 4) = v38 * v34;
      sub_29A18E624(a2);
      *(a2[4] + v22 + 8) = v38 * v35;
      v23 += 2;
      v22 += 12;
    }

    while (v23 < v21);
  }

  result = 0;
  ++*a4;
  return result;
}

uint64_t sub_29AAAEB78(void *a1, void *a2, uint64_t a3, int16x4_t a4)
{
  v4 = a1[1] - *a1;
  v5 = v4 >> 2;
  if ((v4 >> 2) < 3 || (v4 >> 2) % 3 != 0)
  {
    v7 = sub_29AABB028();
    std::to_string(&v52, v5);
    v8 = std::string::insert(&v52, 0, "dequantizeColorRGB: Incompatible data dimension: componentCount ");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v54 = v8->__r_.__value_.__r.__words[2];
    v53 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    sub_29AA5B750(v7, &v53);
    if (SHIBYTE(v54) < 0)
    {
      operator delete(v53);
    }

    if ((SHIBYTE(v52.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return 112;
    }

    v10 = v52.__r_.__value_.__r.__words[0];
    goto LABEL_49;
  }

  a4.i32[0] = *(a3 + 4);
  v45 = *a4.i32;
  LODWORD(v52.__r_.__value_.__l.__data_) = 0;
  *&v53 = &v52;
  sub_29A18E224(a2, (v4 >> 2), &v53, a4);
  if (v5 < 1)
  {
    return 0;
  }

  v13 = 0;
  v14 = 0;
  v15 = &unk_29B4DF5B8;
  v16 = vld1_dup_f32(v15);
  v44 = v16.i32[1];
  while (1)
  {
    v17 = *a1 + v14;
    v18.i32[1] = v44;
    v19 = vadd_f32(vmul_n_f32(vcvt_f32_s32(*(v17 + 4)), v45), 0xBF000000BF000000);
    v20 = vmul_f32(v19, 0x3EEFAEBC3E3FD36FLL);
    v21 = 1.8556 * v19.f32[0];
    v19.f32[0] = v45;
    v18.f32[0] = *v17;
    v22 = vmul_f32(v19, v18);
    v23 = fminf(fmaxf(vaddv_f32(v22), 0.0), 1.0);
    v24 = fminf(fmaxf(vsub_f32(vsub_f32(v22, v20), vdup_lane_s32(v20, 1)).f32[0], 0.0), 1.0);
    v25 = fminf(fmaxf(v22.f32[0] + v21, 0.0), 1.0);
    v26 = v23 <= 1.0 && v24 <= 1.0;
    if (!v26 || v25 > 1.0)
    {
      break;
    }

    sub_29A18E624(a2);
    *(a2[4] + v14) = v23;
    sub_29A18E624(a2);
    *(a2[4] + v14 + 4) = v24;
    sub_29A18E624(a2);
    *(a2[4] + v14 + 8) = v25;
    v14 += 12;
    v13 += 3;
    if (v13 >= v5)
    {
      return 0;
    }
  }

  v29 = sub_29AABB028();
  std::to_string(&v48, v23);
  v30 = std::string::insert(&v48, 0, "dequantizeColorRGB: values out of bound r=");
  v31 = *&v30->__r_.__value_.__l.__data_;
  v49.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
  *&v49.__r_.__value_.__l.__data_ = v31;
  v30->__r_.__value_.__l.__size_ = 0;
  v30->__r_.__value_.__r.__words[2] = 0;
  v30->__r_.__value_.__r.__words[0] = 0;
  v32 = std::string::append(&v49, ", g=");
  v33 = *&v32->__r_.__value_.__l.__data_;
  v50.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
  *&v50.__r_.__value_.__l.__data_ = v33;
  v32->__r_.__value_.__l.__size_ = 0;
  v32->__r_.__value_.__r.__words[2] = 0;
  v32->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v47, v24);
  if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v34 = &v47;
  }

  else
  {
    v34 = v47.__r_.__value_.__r.__words[0];
  }

  if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v47.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v47.__r_.__value_.__l.__size_;
  }

  v36 = std::string::append(&v50, v34, size);
  v37 = *&v36->__r_.__value_.__l.__data_;
  v51.__r_.__value_.__r.__words[2] = v36->__r_.__value_.__r.__words[2];
  *&v51.__r_.__value_.__l.__data_ = v37;
  v36->__r_.__value_.__l.__size_ = 0;
  v36->__r_.__value_.__r.__words[2] = 0;
  v36->__r_.__value_.__r.__words[0] = 0;
  v38 = std::string::append(&v51, ", b=");
  v39 = *&v38->__r_.__value_.__l.__data_;
  v52.__r_.__value_.__r.__words[2] = v38->__r_.__value_.__r.__words[2];
  *&v52.__r_.__value_.__l.__data_ = v39;
  v38->__r_.__value_.__l.__size_ = 0;
  v38->__r_.__value_.__r.__words[2] = 0;
  v38->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v46, v25);
  if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v40 = &v46;
  }

  else
  {
    v40 = v46.__r_.__value_.__r.__words[0];
  }

  if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v41 = HIBYTE(v46.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v41 = v46.__r_.__value_.__l.__size_;
  }

  v42 = std::string::append(&v52, v40, v41);
  v43 = *&v42->__r_.__value_.__l.__data_;
  v54 = v42->__r_.__value_.__r.__words[2];
  v53 = v43;
  v42->__r_.__value_.__l.__size_ = 0;
  v42->__r_.__value_.__r.__words[2] = 0;
  v42->__r_.__value_.__r.__words[0] = 0;
  sub_29AA5B750(v29, &v53);
  if (SHIBYTE(v54) < 0)
  {
    operator delete(v53);
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    v10 = v48.__r_.__value_.__r.__words[0];
LABEL_49:
    operator delete(v10);
  }

  return 112;
}

void sub_29AAAEF58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (*(v51 - 169) < 0)
  {
    operator delete(*(v51 - 192));
  }

  if (a51 < 0)
  {
    operator delete(a46);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AAAF018(void *a1, void *a2, uint64_t a3, _DWORD *a4, int16x4_t a5)
{
  v5 = *a4;
  *a4 = v5 + 1;
  if (v5 <= 0)
  {
    v27 = sub_29AABB028();
    v28 = "Weight dequantization: componentsPerVector value too small";
LABEL_21:
    sub_29A008E78(__p, v28);
    sub_29AA5B750(v27, __p);
    if (v30 < 0)
    {
      operator delete(__p[0]);
    }

    return 112;
  }

  v7 = (a1[1] - *a1) >> 2;
  if (v7 % v5)
  {
    v8 = 0;
  }

  else
  {
    v8 = v5 <= v7;
  }

  if (v8)
  {
    v11 = v7 / v5 * (v5 + 1);
    v12 = *(a3 + 4);
    v31 = 0;
    __p[0] = &v31;
    sub_29A18E224(a2, v11, __p, a5);
    if (v5 > v7)
    {
      return 0;
    }

    v13 = 0;
    LODWORD(v14) = 0;
    while (1)
    {
      v14 = v14;
      v15 = 4 * v13;
      v16 = v5;
      v17 = v15;
      v18 = 0.0;
      do
      {
        v19 = *(*a1 + 4 * v14++);
        v20 = fminf(fmaxf(v12 * v19, 0.0), 1.0);
        sub_29A18E624(a2);
        *(a2[4] + v17) = v20;
        v18 = v18 + v20;
        v17 += 4;
        --v16;
      }

      while (v16);
      v21 = fminf(fmaxf(1.0 - v18, 0.0), 1.0);
      sub_29A18E624(a2);
      *(a2[4] + 4 * (v13 + v5)) = v21;
      v22 = v18 + v21;
      if (v22 <= 0.0)
      {
        break;
      }

      LODWORD(v23) = *a4;
      if (vabds_f32(1.0, v22) > 0.000001 && v23 >= 1)
      {
        v25 = 0;
        do
        {
          sub_29A18E624(a2);
          *(a2[4] + v15) = *(a2[4] + v15) / v22;
          ++v25;
          v23 = *a4;
          v15 += 4;
        }

        while (v25 < v23);
      }

      v13 += v23;
      if (v13 >= v11)
      {
        return 0;
      }
    }

    v27 = sub_29AABB028();
    v28 = "Weight dequantization: negative weights sum";
    goto LABEL_21;
  }

  return 112;
}

uint64_t sub_29AAAF21C(uint64_t *a1, unint64_t *a2, _BYTE *a3, int *a4)
{
  v6 = *a3;
  if (v6 <= 1)
  {
    if (*a3)
    {
      if (v6 != 1)
      {
LABEL_22:
        v12 = v4;
        v13 = v5;
        v9 = sub_29AABB028();
        sub_29A008E78(__p, "Unknown quantization function");
        sub_29AA5B750(v9, __p);
        if (v11 < 0)
        {
          operator delete(__p[0]);
        }

        return 112;
      }

      v8 = *a4;

      return sub_29AAAF398(a1, a2, a3, v8);
    }

    else
    {

      return sub_29AAAF2FC(a1, a2);
    }
  }

  else
  {
    switch(v6)
    {
      case 2u:

        return sub_29AAAF4A4(a1, a2, a3, a4);
      case 3u:

        return sub_29AAAF678(a1, a2, a3);
      case 4u:

        return sub_29AAAFB20(a1, a2, a3, a4);
      default:
        goto LABEL_22;
    }
  }
}

uint64_t sub_29AAAF2FC(uint64_t *a1, unint64_t *a2)
{
  v4 = (a1[1] - *a1) >> 2;
  v9 = 0;
  v10 = &v9;
  sub_29A18FD48(a2, v4, &v10);
  v5 = *a1;
  if (a1[1] != *a1)
  {
    v6 = 0;
    do
    {
      v7 = *(v5 + 4 * v6);
      sub_29A190088(a2);
      *(a2[4] + 8 * v6++) = v7;
      v5 = *a1;
    }

    while (v6 < (a1[1] - *a1) >> 2);
  }

  return 0;
}

uint64_t sub_29AAAF398(void *a1, unint64_t *a2, uint64_t a3, int a4)
{
  v8 = a1[1] - *a1;
  v9 = v8 >> 2;
  v16 = 0;
  v17 = &v16;
  sub_29A18FD48(a2, (v8 >> 2), &v17);
  if (!v9)
  {
    return 0;
  }

  result = 112;
  if (a4 >= 1 && v9 >= a4 && !(v9 % a4))
  {
    v11 = 0;
    v12 = *(a3 + 4);
    do
    {
      v13 = 0;
      v14 = v11;
      do
      {
        v15 = ((v12 * *(*a1 + 4 * v14)) + *(*(a3 + 8) + v13));
        sub_29A190088(a2);
        *(a2[4] + 8 * v14++) = v15;
        v13 += 4;
      }

      while (4 * a4 != v13);
      v11 += a4;
    }

    while (v11 < v9);
    return 0;
  }

  return result;
}

uint64_t sub_29AAAF4A4(void *a1, unint64_t *a2, uint64_t a3, _DWORD *a4)
{
  v12 = a1[1] - *a1;
  if (v12)
  {
    v13 = (v12 & 4) == 0;
  }

  else
  {
    v13 = 0;
  }

  if (!v13)
  {
    return 112;
  }

  v40[1] = v11;
  v40[2] = v10;
  v40[3] = v9;
  v40[4] = v8;
  v40[5] = v7;
  v40[6] = v6;
  v40[15] = v4;
  v40[16] = v5;
  if (*(a3 + 32) < 3 || *a4 != 2)
  {
    return 112;
  }

  v20 = v12 >> 2;
  v39 = 0;
  v40[0] = &v39;
  sub_29A18FD48(a2, (v12 >> 2) + ((v12 >> 2) >> 1), v40);
  if (v20 >= 1)
  {
    v21 = 0;
    v22 = 0;
    v23 = ~(-1 << (*(a3 + 32) - 1));
    do
    {
      v24 = (*a1 + 4 * v22);
      v25 = *v24 - v23;
      v26 = v24[1] - v23;
      if (v25 >= 0)
      {
        v27 = v25;
      }

      else
      {
        v27 = -v25;
      }

      if (v26 >= 0)
      {
        v28 = v26;
      }

      else
      {
        v28 = -v26;
      }

      v29 = v23 - v27;
      v30 = v28 - v23;
      if (v25 >= 0)
      {
        v30 = v23 - v28;
      }

      v31 = v27 - v23;
      if (v26 >= 0)
      {
        v31 = v29;
      }

      if (v29 - v28 < 0)
      {
        v25 = v30;
        v26 = v31;
      }

      v32 = v25;
      v33 = v26;
      v34 = (v29 - v28);
      v36 = v29 == v28 && v25 == 0 && v26 == 0;
      v37 = 1.0;
      if (!v36)
      {
        v37 = 1.0 / sqrt(v34 * v34 + v32 * v32 + v33 * v33);
      }

      v38 = v37 * v32;
      sub_29A190088(a2);
      *(a2[4] + v21) = v38;
      sub_29A190088(a2);
      *(a2[4] + v21 + 8) = v37 * v33;
      sub_29A190088(a2);
      *(a2[4] + v21 + 16) = v37 * v34;
      v22 += 2;
      v21 += 24;
    }

    while (v22 < v20);
  }

  result = 0;
  ++*a4;
  return result;
}

uint64_t sub_29AAAF678(void *a1, unint64_t *a2, uint64_t a3)
{
  v3 = a1[1] - *a1;
  v4 = v3 >> 2;
  if ((v3 >> 2) < 3 || (v3 >> 2) % 3 != 0)
  {
    v6 = sub_29AABB028();
    std::to_string(&v50, v4);
    v7 = std::string::insert(&v50, 0, "dequantizeColorRGB: Incompatible data dimension: componentCount ");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v52 = v7->__r_.__value_.__r.__words[2];
    v51 = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    sub_29AA5B750(v6, &v51);
    if (SHIBYTE(v52) < 0)
    {
      operator delete(v51);
    }

    if ((SHIBYTE(v50.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return 112;
    }

    v9 = v50.__r_.__value_.__r.__words[0];
    goto LABEL_49;
  }

  v43 = *(a3 + 4);
  v50.__r_.__value_.__r.__words[0] = 0;
  *&v51 = &v50;
  sub_29A18FD48(a2, (v3 >> 2), &v51);
  if (v4 < 1)
  {
    return 0;
  }

  v12 = 0;
  v13 = 4;
  v14 = &unk_29B4DF5B8;
  v15 = vld1_dup_f32(v14);
  v42 = v15.i32[1];
  while (1)
  {
    v16.i32[1] = v42;
    v17 = vadd_f32(vmul_n_f32(vcvt_f32_s32(*(*a1 + v13)), v43), 0xBF000000BF000000);
    v18 = vmul_f32(v17, 0x3EEFAEBC3E3FD36FLL);
    v19 = 1.8556 * v17.f32[0];
    v17.f32[0] = v43;
    v16.f32[0] = *(*a1 + 4 * v12);
    v20 = vmul_f32(v17, v16);
    v21 = fminf(fmaxf(vaddv_f32(v20), 0.0), 1.0);
    v22 = fminf(fmaxf(vsub_f32(vsub_f32(v20, v18), vdup_lane_s32(v18, 1)).f32[0], 0.0), 1.0);
    v23 = fminf(fmaxf(v20.f32[0] + v19, 0.0), 1.0);
    v24 = v21 <= 1.0 && v22 <= 1.0;
    if (!v24 || v23 > 1.0)
    {
      break;
    }

    sub_29A190088(a2);
    *(a2[4] + 8 * v12) = v21;
    sub_29A190088(a2);
    *(a2[4] + 8 * v12 + 8) = v22;
    sub_29A190088(a2);
    *(a2[4] + 8 * v12 + 16) = v23;
    v12 += 3;
    v13 += 12;
    if (v12 >= v4)
    {
      return 0;
    }
  }

  v27 = sub_29AABB028();
  std::to_string(&v46, v21);
  v28 = std::string::insert(&v46, 0, "dequantizeColorRGB: values out of bound r=");
  v29 = *&v28->__r_.__value_.__l.__data_;
  v47.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
  *&v47.__r_.__value_.__l.__data_ = v29;
  v28->__r_.__value_.__l.__size_ = 0;
  v28->__r_.__value_.__r.__words[2] = 0;
  v28->__r_.__value_.__r.__words[0] = 0;
  v30 = std::string::append(&v47, ", g=");
  v31 = *&v30->__r_.__value_.__l.__data_;
  v48.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
  *&v48.__r_.__value_.__l.__data_ = v31;
  v30->__r_.__value_.__l.__size_ = 0;
  v30->__r_.__value_.__r.__words[2] = 0;
  v30->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v45, v22);
  if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v32 = &v45;
  }

  else
  {
    v32 = v45.__r_.__value_.__r.__words[0];
  }

  if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v45.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v45.__r_.__value_.__l.__size_;
  }

  v34 = std::string::append(&v48, v32, size);
  v35 = *&v34->__r_.__value_.__l.__data_;
  v49.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
  *&v49.__r_.__value_.__l.__data_ = v35;
  v34->__r_.__value_.__l.__size_ = 0;
  v34->__r_.__value_.__r.__words[2] = 0;
  v34->__r_.__value_.__r.__words[0] = 0;
  v36 = std::string::append(&v49, ", b=");
  v37 = *&v36->__r_.__value_.__l.__data_;
  v50.__r_.__value_.__r.__words[2] = v36->__r_.__value_.__r.__words[2];
  *&v50.__r_.__value_.__l.__data_ = v37;
  v36->__r_.__value_.__l.__size_ = 0;
  v36->__r_.__value_.__r.__words[2] = 0;
  v36->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v44, v23);
  if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v38 = &v44;
  }

  else
  {
    v38 = v44.__r_.__value_.__r.__words[0];
  }

  if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v39 = HIBYTE(v44.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v39 = v44.__r_.__value_.__l.__size_;
  }

  v40 = std::string::append(&v50, v38, v39);
  v41 = *&v40->__r_.__value_.__l.__data_;
  v52 = v40->__r_.__value_.__r.__words[2];
  v51 = v41;
  v40->__r_.__value_.__l.__size_ = 0;
  v40->__r_.__value_.__r.__words[2] = 0;
  v40->__r_.__value_.__r.__words[0] = 0;
  sub_29AA5B750(v27, &v51);
  if (SHIBYTE(v52) < 0)
  {
    operator delete(v51);
  }

  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    v9 = v46.__r_.__value_.__r.__words[0];
LABEL_49:
    operator delete(v9);
  }

  return 112;
}

void sub_29AAAFA60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (*(v51 - 169) < 0)
  {
    operator delete(*(v51 - 192));
  }

  if (a51 < 0)
  {
    operator delete(a46);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AAAFB20(void *a1, unint64_t *a2, uint64_t a3, _DWORD *a4)
{
  v4 = *a4;
  *a4 = v4 + 1;
  if (v4 <= 0)
  {
    v26 = sub_29AABB028();
    v27 = "Weight dequantization: componentsPerVector value too small";
LABEL_21:
    sub_29A008E78(__p, v27);
    sub_29AA5B750(v26, __p);
    if (v29 < 0)
    {
      operator delete(__p[0]);
    }

    return 112;
  }

  v6 = (a1[1] - *a1) >> 2;
  if (v6 % v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = v4 <= v6;
  }

  if (v7)
  {
    v10 = v6 / v4 * (v4 + 1);
    v11 = *(a3 + 4);
    v30 = 0;
    __p[0] = &v30;
    sub_29A18FD48(a2, v10, __p);
    if (v4 > v6)
    {
      return 0;
    }

    v12 = 0;
    LODWORD(v13) = 0;
    while (1)
    {
      v13 = v13;
      v14 = 8 * v12;
      v15 = v4;
      v16 = v14;
      v17 = 0.0;
      do
      {
        v18 = *(*a1 + 4 * v13++);
        v19 = fmin(fmaxf(v11 * v18, 0.0), 1.0);
        sub_29A190088(a2);
        *(a2[4] + v16) = v19;
        v17 = v17 + v19;
        v16 += 8;
        --v15;
      }

      while (v15);
      v20 = fmin(fmax(1.0 - v17, 0.0), 1.0);
      sub_29A190088(a2);
      *(a2[4] + 8 * (v12 + v4)) = v20;
      v21 = v17 + v20;
      if (v21 <= 0.0)
      {
        break;
      }

      LODWORD(v22) = *a4;
      if (vabdd_f64(1.0, v21) > 0.000001 && v22 >= 1)
      {
        v24 = 0;
        do
        {
          sub_29A190088(a2);
          *(a2[4] + v14) = *(a2[4] + v14) / v21;
          ++v24;
          v22 = *a4;
          v14 += 8;
        }

        while (v24 < v22);
      }

      v12 += v22;
      if (v12 >= v10)
      {
        return 0;
      }
    }

    v26 = sub_29AABB028();
    v27 = "Weight dequantization: negative weights sum";
    goto LABEL_21;
  }

  return 112;
}

uint64_t sub_29AAAFD34(uint64_t *a1, void *a2, _BYTE *a3, int *a4)
{
  v4 = *a3;
  if (v4 <= 1)
  {
    if (*a3)
    {
      if (v4 != 1)
      {
        goto LABEL_20;
      }

      v7 = *a4;

      return sub_29AAAFEEC(a1, a2, a3, v7);
    }

    else
    {

      return sub_29AAAFE58(a1, a2);
    }
  }

  else
  {
    switch(v4)
    {
      case 2u:

        return sub_29AAB0014(a1, a2, a3, a4);
      case 3u:

        return sub_29AAB01FC(a1, a2, a3);
      case 4u:
        v5 = sub_29AABB028();
        v6 = "Weight dequantization: incompatible type int";
LABEL_21:
        sub_29A008E78(__p, v6);
        sub_29AA5B750(v5, __p);
        if (v10 < 0)
        {
          operator delete(__p[0]);
        }

        return 112;
      default:
LABEL_20:
        v5 = sub_29AABB028();
        v6 = "Unknown quantization function";
        goto LABEL_21;
    }
  }
}

uint64_t sub_29AAAFE58(uint64_t *a1, void *a2)
{
  v4 = (a1[1] - *a1) >> 2;
  v9 = 0;
  v10 = &v9;
  sub_29A19D7EC(a2, v4, &v10);
  v5 = *a1;
  if (a1[1] != *a1)
  {
    v6 = 0;
    do
    {
      v7 = *(v5 + 4 * v6);
      sub_29A19DBEC(a2);
      *(a2[4] + 4 * v6++) = v7;
      v5 = *a1;
    }

    while (v6 < (a1[1] - *a1) >> 2);
  }

  return 0;
}

uint64_t sub_29AAAFEEC(void *a1, void *a2, uint64_t a3, int a4)
{
  v8 = a1[1] - *a1;
  v9 = v8 >> 2;
  v20 = 0;
  v21 = &v20;
  sub_29A19D7EC(a2, (v8 >> 2), &v21);
  if (!v9)
  {
    return 0;
  }

  result = 112;
  if (a4 >= 1 && v9 >= a4 && !(v9 % a4))
  {
    v11 = 0;
    v12 = 0;
    v13 = *(a3 + 4);
    v14 = 4 * a4;
    v19 = a4;
    do
    {
      v15 = v9;
      v16 = 0;
      v17 = v11;
      do
      {
        v18 = ((v13 * *(*a1 + v17)) + *(*(a3 + 8) + v16));
        sub_29A19DBEC(a2);
        *(a2[4] + v17) = v18;
        v17 += 4;
        v16 += 4;
      }

      while (v14 != v16);
      v12 += v19;
      v11 += v14;
      v9 = v15;
    }

    while (v12 < v15);
    return 0;
  }

  return result;
}

uint64_t sub_29AAB0014(void *a1, void *a2, uint64_t a3, _DWORD *a4)
{
  v10 = a1[1] - *a1;
  if (v10)
  {
    v11 = (v10 & 4) == 0;
  }

  else
  {
    v11 = 0;
  }

  if (!v11)
  {
    return 112;
  }

  v38[1] = v9;
  v38[2] = v8;
  v38[3] = v7;
  v38[4] = v6;
  v38[15] = v4;
  v38[16] = v5;
  if (*(a3 + 32) < 3 || *a4 != 2)
  {
    return 112;
  }

  v18 = v10 >> 2;
  v37 = 0;
  v38[0] = &v37;
  sub_29A19D7EC(a2, (v10 >> 2) + ((v10 >> 2) >> 1), v38);
  if (v18 >= 1)
  {
    v19 = 0;
    v20 = 0;
    v21 = ~(-1 << (*(a3 + 32) - 1));
    while (1)
    {
      v22 = (*a1 + 4 * v20);
      v23 = *v22 - v21;
      v24 = v22[1] - v21;
      v25 = v23 >= 0 ? v23 : -v23;
      v26 = v24 >= 0 ? v24 : -v24;
      v27 = v21 - v25;
      v28 = v21 - v25 - v26;
      if (v28 < 0)
      {
        break;
      }

      if (v24 | v23)
      {
        v29 = 0;
      }

      else
      {
        v29 = v27 == v26;
      }

      if (!v29)
      {
        goto LABEL_32;
      }

      v30 = 1.0;
      v31 = 0.0;
      v32 = 0.0;
LABEL_33:
      v36 = (v32 * v30);
      sub_29A19DBEC(a2);
      *(a2[4] + v19) = v36;
      sub_29A19DBEC(a2);
      *(a2[4] + v19 + 4) = (v31 * v30);
      sub_29A19DBEC(a2);
      *(a2[4] + v19 + 8) = (v30 * v28);
      v20 += 2;
      v19 += 12;
      if (v20 >= v18)
      {
        goto LABEL_34;
      }
    }

    v33 = v26 - v21;
    v34 = v21 - v26;
    if (v23 >= 0)
    {
      v23 = v34;
    }

    else
    {
      v23 = v33;
    }

    v35 = v25 - v21;
    if (v24 >= 0)
    {
      v24 = v27;
    }

    else
    {
      v24 = v35;
    }

LABEL_32:
    v30 = 1.0 / sqrt((v28 * v28 + v24 * v24 + v23 * v23));
    v32 = v23;
    v31 = v24;
    goto LABEL_33;
  }

LABEL_34:
  result = 0;
  ++*a4;
  return result;
}

uint64_t sub_29AAB01FC(void *a1, void *a2, uint64_t a3)
{
  v3 = a1[1] - *a1;
  v4 = v3 >> 2;
  if ((v3 >> 2) < 3 || (v3 >> 2) % 3 != 0)
  {
    v6 = sub_29AABB028();
    std::to_string(&v51, v4);
    v7 = std::string::insert(&v51, 0, "dequantizeColorRGB: Incompatible data dimension: componentCount ");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v53 = v7->__r_.__value_.__r.__words[2];
    v52 = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    sub_29AA5B750(v6, &v52);
    if (SHIBYTE(v53) < 0)
    {
      operator delete(v52);
    }

    if ((SHIBYTE(v51.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return 112;
    }

    v9 = v51.__r_.__value_.__r.__words[0];
    goto LABEL_49;
  }

  v44 = *(a3 + 4);
  LODWORD(v51.__r_.__value_.__l.__data_) = 0;
  *&v52 = &v51;
  sub_29A19D7EC(a2, (v3 >> 2), &v52);
  if (v4 < 1)
  {
    return 0;
  }

  v12 = 0;
  v13 = 0;
  v14 = &unk_29B4DF5B8;
  v15 = vld1_dup_f32(v14);
  v43 = v15.i32[1];
  while (1)
  {
    v16 = *a1 + v13;
    v17.i32[1] = v43;
    v18 = vadd_f32(vmul_n_f32(vcvt_f32_s32(*(v16 + 4)), v44), 0xBF000000BF000000);
    v19 = vmul_f32(v18, 0x3EEFAEBC3E3FD36FLL);
    v20 = 1.8556 * v18.f32[0];
    v18.f32[0] = v44;
    v17.f32[0] = *v16;
    v21 = vmul_f32(v18, v17);
    v22 = fminf(fmaxf(vaddv_f32(v21), 0.0), 1.0);
    v23 = fminf(fmaxf(vsub_f32(vsub_f32(v21, v19), vdup_lane_s32(v19, 1)).f32[0], 0.0), 1.0);
    v24 = fminf(fmaxf(v21.f32[0] + v20, 0.0), 1.0);
    v25 = v22 <= 1.0 && v23 <= 1.0;
    if (!v25 || v24 > 1.0)
    {
      break;
    }

    sub_29A19DBEC(a2);
    *(a2[4] + v13) = v22;
    sub_29A19DBEC(a2);
    *(a2[4] + v13 + 4) = v23;
    sub_29A19DBEC(a2);
    *(a2[4] + v13 + 8) = v24;
    v13 += 12;
    v12 += 3;
    if (v12 >= v4)
    {
      return 0;
    }
  }

  v28 = sub_29AABB028();
  std::to_string(&v47, v22);
  v29 = std::string::insert(&v47, 0, "dequantizeColorRGB: values out of bound r=");
  v30 = *&v29->__r_.__value_.__l.__data_;
  v48.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
  *&v48.__r_.__value_.__l.__data_ = v30;
  v29->__r_.__value_.__l.__size_ = 0;
  v29->__r_.__value_.__r.__words[2] = 0;
  v29->__r_.__value_.__r.__words[0] = 0;
  v31 = std::string::append(&v48, ", g=");
  v32 = *&v31->__r_.__value_.__l.__data_;
  v49.__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
  *&v49.__r_.__value_.__l.__data_ = v32;
  v31->__r_.__value_.__l.__size_ = 0;
  v31->__r_.__value_.__r.__words[2] = 0;
  v31->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v46, v23);
  if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v33 = &v46;
  }

  else
  {
    v33 = v46.__r_.__value_.__r.__words[0];
  }

  if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v46.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v46.__r_.__value_.__l.__size_;
  }

  v35 = std::string::append(&v49, v33, size);
  v36 = *&v35->__r_.__value_.__l.__data_;
  v50.__r_.__value_.__r.__words[2] = v35->__r_.__value_.__r.__words[2];
  *&v50.__r_.__value_.__l.__data_ = v36;
  v35->__r_.__value_.__l.__size_ = 0;
  v35->__r_.__value_.__r.__words[2] = 0;
  v35->__r_.__value_.__r.__words[0] = 0;
  v37 = std::string::append(&v50, ", b=");
  v38 = *&v37->__r_.__value_.__l.__data_;
  v51.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
  *&v51.__r_.__value_.__l.__data_ = v38;
  v37->__r_.__value_.__l.__size_ = 0;
  v37->__r_.__value_.__r.__words[2] = 0;
  v37->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v45, v24);
  if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v39 = &v45;
  }

  else
  {
    v39 = v45.__r_.__value_.__r.__words[0];
  }

  if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v40 = HIBYTE(v45.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v40 = v45.__r_.__value_.__l.__size_;
  }

  v41 = std::string::append(&v51, v39, v40);
  v42 = *&v41->__r_.__value_.__l.__data_;
  v53 = v41->__r_.__value_.__r.__words[2];
  v52 = v42;
  v41->__r_.__value_.__l.__size_ = 0;
  v41->__r_.__value_.__r.__words[2] = 0;
  v41->__r_.__value_.__r.__words[0] = 0;
  sub_29AA5B750(v28, &v52);
  if (SHIBYTE(v53) < 0)
  {
    operator delete(v52);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    v9 = v47.__r_.__value_.__r.__words[0];
LABEL_49:
    operator delete(v9);
  }

  return 112;
}

void sub_29AAB05E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (*(v51 - 169) < 0)
  {
    operator delete(*(v51 - 192));
  }

  if (a51 < 0)
  {
    operator delete(a46);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AAB06A8(uint64_t *a1, unint64_t *a2, _BYTE *a3, int *a4)
{
  v4 = *a3;
  if (v4 <= 1)
  {
    if (*a3)
    {
      if (v4 != 1)
      {
        goto LABEL_20;
      }

      v7 = *a4;

      return sub_29AAB0868(a1, a2, a3, v7);
    }

    else
    {

      return sub_29AAB07CC(a1, a2);
    }
  }

  else
  {
    switch(v4)
    {
      case 2u:

        return sub_29AAB097C(a1, a2, a3, a4);
      case 3u:

        return sub_29AAB0B84(a1, a2, a3);
      case 4u:
        v5 = sub_29AABB028();
        v6 = "Weight dequantization: incompatible type BOOL";
LABEL_21:
        sub_29A008E78(__p, v6);
        sub_29AA5B750(v5, __p);
        if (v10 < 0)
        {
          operator delete(__p[0]);
        }

        return 112;
      default:
LABEL_20:
        v5 = sub_29AABB028();
        v6 = "Unknown quantization function";
        goto LABEL_21;
    }
  }
}

uint64_t sub_29AAB07CC(uint64_t *a1, unint64_t *a2)
{
  v4 = (a1[1] - *a1) >> 2;
  v9 = 0;
  v10 = &v9;
  sub_29A20CFDC(a2, v4, &v10);
  v5 = *a1;
  if (a1[1] != *a1)
  {
    v6 = 0;
    do
    {
      v7 = *(v5 + 4 * v6) != 0;
      sub_29A20D1F0(a2);
      *(a2[4] + v6++) = v7;
      v5 = *a1;
    }

    while (v6 < (a1[1] - *a1) >> 2);
  }

  return 0;
}

uint64_t sub_29AAB0868(void *a1, unint64_t *a2, uint64_t a3, int a4)
{
  v8 = a1[1] - *a1;
  v9 = v8 >> 2;
  v16 = 0;
  v17 = &v16;
  sub_29A20CFDC(a2, (v8 >> 2), &v17);
  if (!v9)
  {
    return 0;
  }

  result = 112;
  if (a4 >= 1 && v9 >= a4 && !(v9 % a4))
  {
    v11 = 0;
    v12 = *(a3 + 4);
    do
    {
      v13 = 0;
      v14 = v11;
      do
      {
        v15 = ((v12 * *(*a1 + 4 * v14)) + *(*(a3 + 8) + v13)) != 0.0;
        sub_29A20D1F0(a2);
        *(a2[4] + v14++) = v15;
        v13 += 4;
      }

      while (4 * a4 != v13);
      v11 += a4;
    }

    while (v11 < v9);
    return 0;
  }

  return result;
}

uint64_t sub_29AAB097C(void *a1, unint64_t *a2, uint64_t a3, _DWORD *a4)
{
  v10 = a1[1] - *a1;
  if (v10)
  {
    v11 = (v10 & 4) == 0;
  }

  else
  {
    v11 = 0;
  }

  if (!v11)
  {
    return 112;
  }

  v44[1] = v9;
  v44[2] = v8;
  v44[3] = v7;
  v44[4] = v6;
  v44[15] = v4;
  v44[16] = v5;
  if (*(a3 + 32) < 3 || *a4 != 2)
  {
    return 112;
  }

  v17 = v10 >> 2;
  v43 = 0;
  v44[0] = &v43;
  sub_29A20CFDC(a2, (v10 >> 2) + ((v10 >> 2) >> 1), v44);
  if (v17 >= 1)
  {
    v18 = 0;
    v19 = 0;
    v20 = ~(-1 << (*(a3 + 32) - 1));
    do
    {
      v21 = (*a1 + 4 * v19);
      v22 = *v21 - v20;
      v23 = v21[1] - v20;
      if (v22 >= 0)
      {
        v24 = *v21 - v20;
      }

      else
      {
        v24 = v20 - *v21;
      }

      if (v23 >= 0)
      {
        v25 = v23;
      }

      else
      {
        v25 = -v23;
      }

      v26 = v20 - v24;
      v27 = v25 - v20;
      if (v22 >= 0)
      {
        v27 = v20 - v25;
      }

      v28 = v24 - v20;
      if (v23 >= 0)
      {
        v29 = v26;
      }

      else
      {
        v29 = v28;
      }

      if (v26 < v25)
      {
        v30 = v27;
      }

      else
      {
        v30 = v22;
      }

      if (v26 < v25)
      {
        v31 = v29;
      }

      else
      {
        v31 = v23;
      }

      v33 = v26 == v25 && v30 == 0 && v31 == 0;
      v34 = 1.0;
      if (!v33)
      {
        v35 = v26 != v25;
        if (v30)
        {
          ++v35;
        }

        if (v31)
        {
          ++v35;
        }

        v34 = 1.0 / sqrt(v35);
      }

      if (v30)
      {
        v36 = 1.0;
      }

      else
      {
        v36 = 0.0;
      }

      v37 = v34 * v36 != 0.0;
      sub_29A20D1F0(a2);
      *(a2[4] + v18) = v37;
      if (v31)
      {
        v38 = 1.0;
      }

      else
      {
        v38 = 0.0;
      }

      v39 = v34 * v38 != 0.0;
      sub_29A20D1F0(a2);
      *(a2[4] + v18 + 1) = v39;
      if (v26 == v25)
      {
        v40 = 0.0;
      }

      else
      {
        v40 = 1.0;
      }

      v41 = v34 * v40 != 0.0;
      sub_29A20D1F0(a2);
      *(a2[4] + v18 + 2) = v41;
      v19 += 2;
      v18 += 3;
    }

    while (v19 < v17);
  }

  result = 0;
  ++*a4;
  return result;
}

uint64_t sub_29AAB0B84(void *a1, unint64_t *a2, uint64_t a3)
{
  v3 = a1[1] - *a1;
  v4 = v3 >> 2;
  if ((v3 >> 2) < 3 || (v3 >> 2) % 3 != 0)
  {
    v6 = sub_29AABB028();
    std::to_string(&v50, v4);
    v7 = std::string::insert(&v50, 0, "dequantizeColorRGB: Incompatible data dimension: componentCount ");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v52 = v7->__r_.__value_.__r.__words[2];
    v51 = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    sub_29AA5B750(v6, &v51);
    if (SHIBYTE(v52) < 0)
    {
      operator delete(v51);
    }

    if ((SHIBYTE(v50.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return 112;
    }

    v9 = v50.__r_.__value_.__r.__words[0];
    goto LABEL_49;
  }

  v43 = *(a3 + 4);
  v50.__r_.__value_.__s.__data_[0] = 0;
  *&v51 = &v50;
  sub_29A20CFDC(a2, (v3 >> 2), &v51);
  if (v4 < 1)
  {
    return 0;
  }

  v12 = 0;
  v13 = 4;
  v14 = &unk_29B4DF5B8;
  v15 = vld1_dup_f32(v14);
  v42 = v15.i32[1];
  while (1)
  {
    v16.i32[1] = v42;
    v17 = vadd_f32(vmul_n_f32(vcvt_f32_s32(*(*a1 + v13)), v43), 0xBF000000BF000000);
    v18 = vmul_f32(v17, 0x3EEFAEBC3E3FD36FLL);
    v19 = 1.8556 * v17.f32[0];
    v17.f32[0] = v43;
    v16.f32[0] = *(*a1 + 4 * v12);
    v20 = vmul_f32(v17, v16);
    v21 = fminf(fmaxf(vaddv_f32(v20), 0.0), 1.0);
    v22 = fminf(fmaxf(vsub_f32(vsub_f32(v20, v18), vdup_lane_s32(v18, 1)).f32[0], 0.0), 1.0);
    v23 = fminf(fmaxf(v20.f32[0] + v19, 0.0), 1.0);
    v24 = v21 <= 1.0 && v22 <= 1.0;
    if (!v24 || v23 > 1.0)
    {
      break;
    }

    sub_29A20D1F0(a2);
    *(a2[4] + v12) = v21 != 0.0;
    sub_29A20D1F0(a2);
    *(a2[4] + v12 + 1) = v22 != 0.0;
    sub_29A20D1F0(a2);
    *(a2[4] + v12 + 2) = v23 != 0.0;
    v12 += 3;
    v13 += 12;
    if (v12 >= v4)
    {
      return 0;
    }
  }

  v27 = sub_29AABB028();
  std::to_string(&v46, v21);
  v28 = std::string::insert(&v46, 0, "dequantizeColorRGB: values out of bound r=");
  v29 = *&v28->__r_.__value_.__l.__data_;
  v47.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
  *&v47.__r_.__value_.__l.__data_ = v29;
  v28->__r_.__value_.__l.__size_ = 0;
  v28->__r_.__value_.__r.__words[2] = 0;
  v28->__r_.__value_.__r.__words[0] = 0;
  v30 = std::string::append(&v47, ", g=");
  v31 = *&v30->__r_.__value_.__l.__data_;
  v48.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
  *&v48.__r_.__value_.__l.__data_ = v31;
  v30->__r_.__value_.__l.__size_ = 0;
  v30->__r_.__value_.__r.__words[2] = 0;
  v30->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v45, v22);
  if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v32 = &v45;
  }

  else
  {
    v32 = v45.__r_.__value_.__r.__words[0];
  }

  if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v45.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v45.__r_.__value_.__l.__size_;
  }

  v34 = std::string::append(&v48, v32, size);
  v35 = *&v34->__r_.__value_.__l.__data_;
  v49.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
  *&v49.__r_.__value_.__l.__data_ = v35;
  v34->__r_.__value_.__l.__size_ = 0;
  v34->__r_.__value_.__r.__words[2] = 0;
  v34->__r_.__value_.__r.__words[0] = 0;
  v36 = std::string::append(&v49, ", b=");
  v37 = *&v36->__r_.__value_.__l.__data_;
  v50.__r_.__value_.__r.__words[2] = v36->__r_.__value_.__r.__words[2];
  *&v50.__r_.__value_.__l.__data_ = v37;
  v36->__r_.__value_.__l.__size_ = 0;
  v36->__r_.__value_.__r.__words[2] = 0;
  v36->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v44, v23);
  if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v38 = &v44;
  }

  else
  {
    v38 = v44.__r_.__value_.__r.__words[0];
  }

  if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v39 = HIBYTE(v44.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v39 = v44.__r_.__value_.__l.__size_;
  }

  v40 = std::string::append(&v50, v38, v39);
  v41 = *&v40->__r_.__value_.__l.__data_;
  v52 = v40->__r_.__value_.__r.__words[2];
  v51 = v41;
  v40->__r_.__value_.__l.__size_ = 0;
  v40->__r_.__value_.__r.__words[2] = 0;
  v40->__r_.__value_.__r.__words[0] = 0;
  sub_29AA5B750(v27, &v51);
  if (SHIBYTE(v52) < 0)
  {
    operator delete(v51);
  }

  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    v9 = v46.__r_.__value_.__r.__words[0];
LABEL_49:
    operator delete(v9);
  }

  return 112;
}

void sub_29AAB0F78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (*(v51 - 169) < 0)
  {
    operator delete(*(v51 - 192));
  }

  if (a51 < 0)
  {
    operator delete(a46);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AAB1038(uint64_t *a1, unint64_t *a2, _BYTE *a3, int *a4)
{
  v4 = *a3;
  if (v4 <= 1)
  {
    if (*a3)
    {
      if (v4 != 1)
      {
        goto LABEL_20;
      }

      v7 = *a4;

      return sub_29AAB11F0(a1, a2, a3, v7);
    }

    else
    {

      return sub_29AAB115C(a1, a2);
    }
  }

  else
  {
    switch(v4)
    {
      case 2u:

        return sub_29AAB1300(a1, a2, a3, a4);
      case 3u:

        return sub_29AAB14FC(a1, a2, a3);
      case 4u:
        v5 = sub_29AABB028();
        v6 = "Weight dequantization: incompatible type uint8_t";
LABEL_21:
        sub_29A008E78(__p, v6);
        sub_29AA5B750(v5, __p);
        if (v10 < 0)
        {
          operator delete(__p[0]);
        }

        return 112;
      default:
LABEL_20:
        v5 = sub_29AABB028();
        v6 = "Unknown quantization function";
        goto LABEL_21;
    }
  }
}

uint64_t sub_29AAB115C(uint64_t *a1, unint64_t *a2)
{
  v4 = (a1[1] - *a1) >> 2;
  v9 = 0;
  v10 = &v9;
  sub_29A19E2EC(a2, v4, &v10);
  v5 = *a1;
  if (a1[1] != *a1)
  {
    v6 = 0;
    do
    {
      v7 = *(v5 + 4 * v6);
      sub_29A19E500(a2);
      *(a2[4] + v6++) = v7;
      v5 = *a1;
    }

    while (v6 < (a1[1] - *a1) >> 2);
  }

  return 0;
}

uint64_t sub_29AAB11F0(void *a1, unint64_t *a2, uint64_t a3, int a4)
{
  v8 = a1[1] - *a1;
  v9 = v8 >> 2;
  v16 = 0;
  v17 = &v16;
  sub_29A19E2EC(a2, (v8 >> 2), &v17);
  if (!v9)
  {
    return 0;
  }

  result = 112;
  if (a4 >= 1 && v9 >= a4 && !(v9 % a4))
  {
    v11 = 0;
    v12 = *(a3 + 4);
    do
    {
      v13 = 0;
      v14 = v11;
      do
      {
        v15 = ((v12 * *(*a1 + 4 * v14)) + *(*(a3 + 8) + v13));
        sub_29A19E500(a2);
        *(a2[4] + v14++) = v15;
        v13 += 4;
      }

      while (4 * a4 != v13);
      v11 += a4;
    }

    while (v11 < v9);
    return 0;
  }

  return result;
}

uint64_t sub_29AAB1300(void *a1, unint64_t *a2, uint64_t a3, _DWORD *a4)
{
  v10 = a1[1] - *a1;
  if (v10)
  {
    v11 = (v10 & 4) == 0;
  }

  else
  {
    v11 = 0;
  }

  if (!v11)
  {
    return 112;
  }

  v41[1] = v9;
  v41[2] = v8;
  v41[3] = v7;
  v41[4] = v6;
  v41[15] = v4;
  v41[16] = v5;
  if (*(a3 + 32) < 3 || *a4 != 2)
  {
    return 112;
  }

  v18 = v10 >> 2;
  v40 = 0;
  v41[0] = &v40;
  sub_29A19E2EC(a2, (v10 >> 2) + ((v10 >> 2) >> 1), v41);
  if (v18 >= 1)
  {
    v19 = 0;
    v20 = 0;
    v21 = -1 << (*(a3 + 32) - 1);
    v22 = ~v21;
    v23 = ~v21;
    while (1)
    {
      v24 = (*a1 + 4 * v20);
      v25 = *v24 - v22;
      v26 = v24[1] - v22;
      v27 = v25 >= 0 ? v25 : -v25;
      v28 = v26 >= 0 ? v26 : -v26;
      v29 = v22 - v27;
      v30 = v22 - v27 - v28;
      if (v22 - v27 - v28 < 0)
      {
        break;
      }

      if (v26 | v25)
      {
        v31 = 0;
      }

      else
      {
        v31 = v29 == v28;
      }

      if (!v31)
      {
        goto LABEL_32;
      }

      v32 = 1.0;
      v33 = 0.0;
      v34 = v23;
      v35 = 0.0;
LABEL_33:
      v39 = (v35 * v32);
      sub_29A19E500(a2);
      *(a2[4] + v19) = v39;
      sub_29A19E500(a2);
      *(a2[4] + v19 + 1) = (v33 * v32);
      sub_29A19E500(a2);
      *(a2[4] + v19 + 2) = (v32 * v34);
      v20 += 2;
      v19 += 3;
      if (v20 >= v18)
      {
        goto LABEL_34;
      }
    }

    v36 = v28 - v22;
    v37 = v22 - v28;
    if (v25 >= 0)
    {
      LOBYTE(v25) = v37;
    }

    else
    {
      LOBYTE(v25) = v36;
    }

    v38 = v27 - v22;
    if (v26 >= 0)
    {
      LOBYTE(v26) = v29;
    }

    else
    {
      LOBYTE(v26) = v38;
    }

LABEL_32:
    v25 = v25;
    v26 = v26;
    v34 = v30;
    v32 = 1.0 / sqrt((v34 * v34 + v26 * v26 + v25 * v25));
    v35 = v25;
    v33 = v26;
    goto LABEL_33;
  }

LABEL_34:
  result = 0;
  ++*a4;
  return result;
}

uint64_t sub_29AAB14FC(void *a1, unint64_t *a2, uint64_t a3)
{
  v3 = a1[1] - *a1;
  v4 = v3 >> 2;
  if ((v3 >> 2) < 3 || (v3 >> 2) % 3 != 0)
  {
    v6 = sub_29AABB028();
    std::to_string(&v50, v4);
    v7 = std::string::insert(&v50, 0, "dequantizeColorRGB: Incompatible data dimension: componentCount ");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v52 = v7->__r_.__value_.__r.__words[2];
    v51 = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    sub_29AA5B750(v6, &v51);
    if (SHIBYTE(v52) < 0)
    {
      operator delete(v51);
    }

    if ((SHIBYTE(v50.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return 112;
    }

    v9 = v50.__r_.__value_.__r.__words[0];
    goto LABEL_49;
  }

  v43 = *(a3 + 4);
  v50.__r_.__value_.__s.__data_[0] = 0;
  *&v51 = &v50;
  sub_29A19E2EC(a2, (v3 >> 2), &v51);
  if (v4 < 1)
  {
    return 0;
  }

  v12 = 0;
  v13 = 4;
  v14 = &unk_29B4DF5B8;
  v15 = vld1_dup_f32(v14);
  v42 = v15.i32[1];
  while (1)
  {
    v16.i32[1] = v42;
    v17 = vadd_f32(vmul_n_f32(vcvt_f32_s32(*(*a1 + v13)), v43), 0xBF000000BF000000);
    v18 = vmul_f32(v17, 0x3EEFAEBC3E3FD36FLL);
    v19 = 1.8556 * v17.f32[0];
    v17.f32[0] = v43;
    v16.f32[0] = *(*a1 + 4 * v12);
    v20 = vmul_f32(v17, v16);
    v21 = fminf(fmaxf(vaddv_f32(v20), 0.0), 1.0);
    v22 = fminf(fmaxf(vsub_f32(vsub_f32(v20, v18), vdup_lane_s32(v18, 1)).f32[0], 0.0), 1.0);
    v23 = fminf(fmaxf(v20.f32[0] + v19, 0.0), 1.0);
    v24 = v21 <= 1.0 && v22 <= 1.0;
    if (!v24 || v23 > 1.0)
    {
      break;
    }

    sub_29A19E500(a2);
    *(a2[4] + v12) = v21;
    sub_29A19E500(a2);
    *(a2[4] + v12 + 1) = v22;
    sub_29A19E500(a2);
    *(a2[4] + v12 + 2) = v23;
    v12 += 3;
    v13 += 12;
    if (v12 >= v4)
    {
      return 0;
    }
  }

  v27 = sub_29AABB028();
  std::to_string(&v46, v21);
  v28 = std::string::insert(&v46, 0, "dequantizeColorRGB: values out of bound r=");
  v29 = *&v28->__r_.__value_.__l.__data_;
  v47.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
  *&v47.__r_.__value_.__l.__data_ = v29;
  v28->__r_.__value_.__l.__size_ = 0;
  v28->__r_.__value_.__r.__words[2] = 0;
  v28->__r_.__value_.__r.__words[0] = 0;
  v30 = std::string::append(&v47, ", g=");
  v31 = *&v30->__r_.__value_.__l.__data_;
  v48.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
  *&v48.__r_.__value_.__l.__data_ = v31;
  v30->__r_.__value_.__l.__size_ = 0;
  v30->__r_.__value_.__r.__words[2] = 0;
  v30->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v45, v22);
  if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v32 = &v45;
  }

  else
  {
    v32 = v45.__r_.__value_.__r.__words[0];
  }

  if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v45.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v45.__r_.__value_.__l.__size_;
  }

  v34 = std::string::append(&v48, v32, size);
  v35 = *&v34->__r_.__value_.__l.__data_;
  v49.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
  *&v49.__r_.__value_.__l.__data_ = v35;
  v34->__r_.__value_.__l.__size_ = 0;
  v34->__r_.__value_.__r.__words[2] = 0;
  v34->__r_.__value_.__r.__words[0] = 0;
  v36 = std::string::append(&v49, ", b=");
  v37 = *&v36->__r_.__value_.__l.__data_;
  v50.__r_.__value_.__r.__words[2] = v36->__r_.__value_.__r.__words[2];
  *&v50.__r_.__value_.__l.__data_ = v37;
  v36->__r_.__value_.__l.__size_ = 0;
  v36->__r_.__value_.__r.__words[2] = 0;
  v36->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v44, v23);
  if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v38 = &v44;
  }

  else
  {
    v38 = v44.__r_.__value_.__r.__words[0];
  }

  if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v39 = HIBYTE(v44.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v39 = v44.__r_.__value_.__l.__size_;
  }

  v40 = std::string::append(&v50, v38, v39);
  v41 = *&v40->__r_.__value_.__l.__data_;
  v52 = v40->__r_.__value_.__r.__words[2];
  v51 = v41;
  v40->__r_.__value_.__l.__size_ = 0;
  v40->__r_.__value_.__r.__words[2] = 0;
  v40->__r_.__value_.__r.__words[0] = 0;
  sub_29AA5B750(v27, &v51);
  if (SHIBYTE(v52) < 0)
  {
    operator delete(v51);
  }

  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    v9 = v46.__r_.__value_.__r.__words[0];
LABEL_49:
    operator delete(v9);
  }

  return 112;
}

void sub_29AAB18E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (*(v51 - 169) < 0)
  {
    operator delete(*(v51 - 192));
  }

  if (a51 < 0)
  {
    operator delete(a46);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AAB19A4(uint64_t *a1, void *a2, _BYTE *a3, int *a4)
{
  v4 = *a3;
  if (v4 <= 1)
  {
    if (*a3)
    {
      if (v4 != 1)
      {
        goto LABEL_20;
      }

      v7 = *a4;

      return sub_29AAB1B5C(a1, a2, a3, v7);
    }

    else
    {

      return sub_29AAB1AC8(a1, a2);
    }
  }

  else
  {
    switch(v4)
    {
      case 2u:

        return sub_29AAB1C84(a1, a2, a3, a4);
      case 3u:

        return sub_29AAB1E6C(a1, a2, a3);
      case 4u:
        v5 = sub_29AABB028();
        v6 = "Weight dequantization: incompatible type unsigned int";
LABEL_21:
        sub_29A008E78(__p, v6);
        sub_29AA5B750(v5, __p);
        if (v10 < 0)
        {
          operator delete(__p[0]);
        }

        return 112;
      default:
LABEL_20:
        v5 = sub_29AABB028();
        v6 = "Unknown quantization function";
        goto LABEL_21;
    }
  }
}

uint64_t sub_29AAB1AC8(uint64_t *a1, void *a2)
{
  v4 = (a1[1] - *a1) >> 2;
  v9 = 0;
  v10 = &v9;
  sub_29A19CAF8(a2, v4, &v10);
  v5 = *a1;
  if (a1[1] != *a1)
  {
    v6 = 0;
    do
    {
      v7 = *(v5 + 4 * v6);
      sub_29A19CEF8(a2);
      *(a2[4] + 4 * v6++) = v7;
      v5 = *a1;
    }

    while (v6 < (a1[1] - *a1) >> 2);
  }

  return 0;
}

uint64_t sub_29AAB1B5C(void *a1, void *a2, uint64_t a3, int a4)
{
  v8 = a1[1] - *a1;
  v9 = v8 >> 2;
  v20 = 0;
  v21 = &v20;
  sub_29A19CAF8(a2, (v8 >> 2), &v21);
  if (!v9)
  {
    return 0;
  }

  result = 112;
  if (a4 >= 1 && v9 >= a4 && !(v9 % a4))
  {
    v11 = 0;
    v12 = 0;
    v13 = *(a3 + 4);
    v14 = 4 * a4;
    v19 = a4;
    do
    {
      v15 = v9;
      v16 = 0;
      v17 = v11;
      do
      {
        v18 = ((v13 * *(*a1 + v17)) + *(*(a3 + 8) + v16));
        sub_29A19CEF8(a2);
        *(a2[4] + v17) = v18;
        v17 += 4;
        v16 += 4;
      }

      while (v14 != v16);
      v12 += v19;
      v11 += v14;
      v9 = v15;
    }

    while (v12 < v15);
    return 0;
  }

  return result;
}

uint64_t sub_29AAB1C84(void *a1, void *a2, uint64_t a3, _DWORD *a4)
{
  v10 = a1[1] - *a1;
  if (v10)
  {
    v11 = (v10 & 4) == 0;
  }

  else
  {
    v11 = 0;
  }

  if (!v11)
  {
    return 112;
  }

  v38[1] = v9;
  v38[2] = v8;
  v38[3] = v7;
  v38[4] = v6;
  v38[15] = v4;
  v38[16] = v5;
  if (*(a3 + 32) < 3 || *a4 != 2)
  {
    return 112;
  }

  v18 = v10 >> 2;
  v37 = 0;
  v38[0] = &v37;
  sub_29A19CAF8(a2, (v10 >> 2) + ((v10 >> 2) >> 1), v38);
  if (v18 >= 1)
  {
    v19 = 0;
    v20 = 0;
    v21 = ~(-1 << (*(a3 + 32) - 1));
    while (1)
    {
      v22 = (*a1 + 4 * v20);
      v23 = *v22 - v21;
      v24 = v22[1] - v21;
      v25 = v23 >= 0 ? v23 : -v23;
      v26 = v24 >= 0 ? v24 : -v24;
      v27 = v21 - v25;
      v28 = v21 - v25 - v26;
      if (v28 < 0)
      {
        break;
      }

      if (v24 | v23)
      {
        v29 = 0;
      }

      else
      {
        v29 = v27 == v26;
      }

      if (!v29)
      {
        goto LABEL_32;
      }

      v30 = 1.0;
      v31 = 0.0;
      v32 = 0.0;
LABEL_33:
      v36 = (v32 * v30);
      sub_29A19CEF8(a2);
      *(a2[4] + v19) = v36;
      sub_29A19CEF8(a2);
      *(a2[4] + v19 + 4) = (v31 * v30);
      sub_29A19CEF8(a2);
      *(a2[4] + v19 + 8) = (v30 * v28);
      v20 += 2;
      v19 += 12;
      if (v20 >= v18)
      {
        goto LABEL_34;
      }
    }

    v33 = v26 - v21;
    v34 = v21 - v26;
    if (v23 >= 0)
    {
      v23 = v34;
    }

    else
    {
      v23 = v33;
    }

    v35 = v25 - v21;
    if (v24 >= 0)
    {
      v24 = v27;
    }

    else
    {
      v24 = v35;
    }

LABEL_32:
    v30 = 1.0 / sqrt((v28 * v28 + v24 * v24 + v23 * v23));
    v32 = v23;
    v31 = v24;
    goto LABEL_33;
  }

LABEL_34:
  result = 0;
  ++*a4;
  return result;
}

uint64_t sub_29AAB1E6C(void *a1, void *a2, uint64_t a3)
{
  v3 = a1[1] - *a1;
  v4 = v3 >> 2;
  if ((v3 >> 2) < 3 || (v3 >> 2) % 3 != 0)
  {
    v6 = sub_29AABB028();
    std::to_string(&v51, v4);
    v7 = std::string::insert(&v51, 0, "dequantizeColorRGB: Incompatible data dimension: componentCount ");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v53 = v7->__r_.__value_.__r.__words[2];
    v52 = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    sub_29AA5B750(v6, &v52);
    if (SHIBYTE(v53) < 0)
    {
      operator delete(v52);
    }

    if ((SHIBYTE(v51.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return 112;
    }

    v9 = v51.__r_.__value_.__r.__words[0];
    goto LABEL_49;
  }

  v44 = *(a3 + 4);
  LODWORD(v51.__r_.__value_.__l.__data_) = 0;
  *&v52 = &v51;
  sub_29A19CAF8(a2, (v3 >> 2), &v52);
  if (v4 < 1)
  {
    return 0;
  }

  v12 = 0;
  v13 = 0;
  v14 = &unk_29B4DF5B8;
  v15 = vld1_dup_f32(v14);
  v43 = v15.i32[1];
  while (1)
  {
    v16 = *a1 + v13;
    v17.i32[1] = v43;
    v18 = vadd_f32(vmul_n_f32(vcvt_f32_s32(*(v16 + 4)), v44), 0xBF000000BF000000);
    v19 = vmul_f32(v18, 0x3EEFAEBC3E3FD36FLL);
    v20 = 1.8556 * v18.f32[0];
    v18.f32[0] = v44;
    v17.f32[0] = *v16;
    v21 = vmul_f32(v18, v17);
    v22 = fminf(fmaxf(vaddv_f32(v21), 0.0), 1.0);
    v23 = fminf(fmaxf(vsub_f32(vsub_f32(v21, v19), vdup_lane_s32(v19, 1)).f32[0], 0.0), 1.0);
    v24 = fminf(fmaxf(v21.f32[0] + v20, 0.0), 1.0);
    v25 = v22 <= 1.0 && v23 <= 1.0;
    if (!v25 || v24 > 1.0)
    {
      break;
    }

    sub_29A19CEF8(a2);
    *(a2[4] + v13) = v22;
    sub_29A19CEF8(a2);
    *(a2[4] + v13 + 4) = v23;
    sub_29A19CEF8(a2);
    *(a2[4] + v13 + 8) = v24;
    v13 += 12;
    v12 += 3;
    if (v12 >= v4)
    {
      return 0;
    }
  }

  v28 = sub_29AABB028();
  std::to_string(&v47, v22);
  v29 = std::string::insert(&v47, 0, "dequantizeColorRGB: values out of bound r=");
  v30 = *&v29->__r_.__value_.__l.__data_;
  v48.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
  *&v48.__r_.__value_.__l.__data_ = v30;
  v29->__r_.__value_.__l.__size_ = 0;
  v29->__r_.__value_.__r.__words[2] = 0;
  v29->__r_.__value_.__r.__words[0] = 0;
  v31 = std::string::append(&v48, ", g=");
  v32 = *&v31->__r_.__value_.__l.__data_;
  v49.__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
  *&v49.__r_.__value_.__l.__data_ = v32;
  v31->__r_.__value_.__l.__size_ = 0;
  v31->__r_.__value_.__r.__words[2] = 0;
  v31->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v46, v23);
  if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v33 = &v46;
  }

  else
  {
    v33 = v46.__r_.__value_.__r.__words[0];
  }

  if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v46.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v46.__r_.__value_.__l.__size_;
  }

  v35 = std::string::append(&v49, v33, size);
  v36 = *&v35->__r_.__value_.__l.__data_;
  v50.__r_.__value_.__r.__words[2] = v35->__r_.__value_.__r.__words[2];
  *&v50.__r_.__value_.__l.__data_ = v36;
  v35->__r_.__value_.__l.__size_ = 0;
  v35->__r_.__value_.__r.__words[2] = 0;
  v35->__r_.__value_.__r.__words[0] = 0;
  v37 = std::string::append(&v50, ", b=");
  v38 = *&v37->__r_.__value_.__l.__data_;
  v51.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
  *&v51.__r_.__value_.__l.__data_ = v38;
  v37->__r_.__value_.__l.__size_ = 0;
  v37->__r_.__value_.__r.__words[2] = 0;
  v37->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v45, v24);
  if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v39 = &v45;
  }

  else
  {
    v39 = v45.__r_.__value_.__r.__words[0];
  }

  if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v40 = HIBYTE(v45.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v40 = v45.__r_.__value_.__l.__size_;
  }

  v41 = std::string::append(&v51, v39, v40);
  v42 = *&v41->__r_.__value_.__l.__data_;
  v53 = v41->__r_.__value_.__r.__words[2];
  v52 = v42;
  v41->__r_.__value_.__l.__size_ = 0;
  v41->__r_.__value_.__r.__words[2] = 0;
  v41->__r_.__value_.__r.__words[0] = 0;
  sub_29AA5B750(v28, &v52);
  if (SHIBYTE(v53) < 0)
  {
    operator delete(v52);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    v9 = v47.__r_.__value_.__r.__words[0];
LABEL_49:
    operator delete(v9);
  }

  return 112;
}

void sub_29AAB2258(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (*(v51 - 169) < 0)
  {
    operator delete(*(v51 - 192));
  }

  if (a51 < 0)
  {
    operator delete(a46);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29AAB2318(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2, uint64_t a3, uint64_t *a4)
{
  v8 = *(a1 + 8);
  if (!v8 || (*(v8 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  v9 = *v8;
  v11[1] = a3;
  v11[2] = MEMORY[0x29EDC94D0];
  v12 = 0;
  v11[0] = &unk_2A2070BE0;
  return pxrInternal__aapl__pxrReserved__::UsdStage::_GetStrongestResolvedMetadata(v9, a1, a2, a4, 1, v11);
}

uint64_t sub_29AAB23C0(unint64_t *a1, int32x2_t **a2, _BYTE *a3, int *a4, char a5, double a6)
{
  v6 = *a3;
  if (v6 <= 1)
  {
    if (!*a3)
    {
      return sub_29AAB241C(a1, a2);
    }

    if (v6 == 1)
    {
      return sub_29AA7BBFC(a1, a2, a3, *a4, a5);
    }
  }

  else
  {
    switch(v6)
    {
      case 2u:
        return sub_29AAB2474(a1, a2, a4, a5);
      case 3u:
        return sub_29AAB2568(a1, a2, a3, a5);
      case 4u:
        return sub_29AAB2B74(a1, a2, a3, a4, a5, a6);
    }
  }

  return 112;
}

uint64_t sub_29AAB241C(unint64_t *a1, void *a2)
{
  sub_29A0A171C(a2, *a1);
  v4 = *a1;
  if (*a1)
  {
    v5 = a1[4];
    v6 = *a2;
    do
    {
      v7 = *v5++;
      *v6++ = v7;
      --v4;
    }

    while (v4);
  }

  return 0;
}

uint64_t sub_29AAB2474(unint64_t *a1, void *a2, _DWORD *a3, int a4)
{
  v4 = *a1;
  if (!*a1)
  {
    return 112;
  }

  v5 = a4;
  result = 112;
  if (a4 >= 3 && !(v4 % 3) && *a3 == 3)
  {
    sub_29A0A171C(a2, 2 * (v4 / 3));
    if (v4 >= 1)
    {
      v11 = 0;
      v12 = 0;
      v13 = -1 << (v5 - 1);
      do
      {
        sub_29AAB2CF8((*a2 + v11), (*a2 + v11 + 4), ~v13, *(a1[4] + 8 * v12), *(a1[4] + 8 * v12 + 8), *(a1[4] + 8 * v12 + 16));
        v12 += 3;
        v11 += 8;
      }

      while (v12 < v4);
    }

    result = 0;
    --*a3;
  }

  return result;
}

uint64_t sub_29AAB2568(uint64_t *a1, int32x2_t **a2, uint64_t a3, char a4)
{
  v4 = *a1;
  if (*a1 < 3 || *a1 % 3 != 0)
  {
    v6 = sub_29AABB028();
    std::to_string(&v68, v4);
    v7 = std::string::insert(&v68, 0, "quantizeColorRGB: Incompatible data dimension: componentCount ");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v70 = v7->__r_.__value_.__r.__words[2];
    v69 = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    sub_29AA5B750(v6, &v69);
    if (SHIBYTE(v70) < 0)
    {
      operator delete(v69);
    }

    if ((SHIBYTE(v68.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return 112;
    }

    v9 = v68.__r_.__value_.__r.__words[0];
    goto LABEL_13;
  }

  v14 = a1[4];
  v68.__r_.__value_.__s.__data_[0] = 0;
  if (*sub_29AAB2E7C(v14, &v14[v4]) < 0.0 || (v16 = *v15, *v15 > 1.0))
  {
    v17 = sub_29AABB028();
    sub_29A008E78(&v69, "quantizeColorRGB: Input out of range");
    sub_29AA5B750(v17, &v69);
    if ((SHIBYTE(v70) & 0x80000000) == 0)
    {
      return 112;
    }

    v9 = v69;
LABEL_13:
    operator delete(v9);
    return 112;
  }

  v19 = 1 << a4;
  v20 = v19 + -1.0;
  *v16.i32 = 1.0 / v20;
  *(a3 + 4) = 1.0 / v20;
  LODWORD(v69) = 0;
  sub_29A0AB144((a3 + 8), 3uLL, &v69, v16);
  sub_29A0A171C(a2, v4);
  if (v4 >= 1)
  {
    v21 = 0;
    v22 = v20;
    v23 = (a1[4] + 8);
    v24 = *a2 + 1;
    __asm { FMOV            V16.2D, #0.5 }

    while (1)
    {
      v29.f64[0] = *(v23 - 1);
      v30 = v23[1];
      v31.f64[0] = *v23 * 0.715200007;
      v32 = v29.f64[0] * 0.5;
      v29.f64[1] = v30;
      v31.f64[1] = v29.f64[0] * -0.114600003 + *v23 * -0.385399997;
      v33 = vaddq_f64(vmulq_f64(v29, xmmword_29B4DF5D0), v31);
      v31.f64[1] = *(&_Q16 + 1);
      v31.f64[0] = v30 * 0.0722000003;
      v34 = vmovn_s64(vcvtq_s64_f64(vrndaq_f64(vmulq_n_f64(vaddq_f64(v33, v31), v22))));
      v35 = llround((v32 + *v23 * -0.4542 + v30 * -0.0458000004 + 0.5) * v22);
      v36 = v34.i32[0];
      if (v34.i32[0] < 0 || v19 <= v34.i32[0] || v34.i32[1] < 0 || v19 <= v34.i32[1] || v35 < 0 || v19 <= v35)
      {
        break;
      }

      result = 0;
      v24[-1] = v34;
      v24->i32[0] = v35;
      v24 = (v24 + 12);
      v23 += 3;
      v21 += 3;
      if (v21 >= v4)
      {
        return result;
      }
    }

    v58 = v34.i32[1];
    v37 = sub_29AABB028();
    std::to_string(&v62, v19);
    v38 = std::string::insert(&v62, 0, "quantizeColorRGB: values out of bound qp1=");
    v39 = *&v38->__r_.__value_.__l.__data_;
    v63.__r_.__value_.__r.__words[2] = v38->__r_.__value_.__r.__words[2];
    *&v63.__r_.__value_.__l.__data_ = v39;
    v38->__r_.__value_.__l.__size_ = 0;
    v38->__r_.__value_.__r.__words[2] = 0;
    v38->__r_.__value_.__r.__words[0] = 0;
    v40 = std::string::append(&v63, ", y=");
    v41 = *&v40->__r_.__value_.__l.__data_;
    v64.__r_.__value_.__r.__words[2] = v40->__r_.__value_.__r.__words[2];
    *&v64.__r_.__value_.__l.__data_ = v41;
    v40->__r_.__value_.__l.__size_ = 0;
    v40->__r_.__value_.__r.__words[2] = 0;
    v40->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v61, v36);
    if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v42 = &v61;
    }

    else
    {
      v42 = v61.__r_.__value_.__r.__words[0];
    }

    if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v61.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v61.__r_.__value_.__l.__size_;
    }

    v44 = std::string::append(&v64, v42, size);
    v45 = *&v44->__r_.__value_.__l.__data_;
    v65.__r_.__value_.__r.__words[2] = v44->__r_.__value_.__r.__words[2];
    *&v65.__r_.__value_.__l.__data_ = v45;
    v44->__r_.__value_.__l.__size_ = 0;
    v44->__r_.__value_.__r.__words[2] = 0;
    v44->__r_.__value_.__r.__words[0] = 0;
    v46 = std::string::append(&v65, ", u=");
    v47 = *&v46->__r_.__value_.__l.__data_;
    v66.__r_.__value_.__r.__words[2] = v46->__r_.__value_.__r.__words[2];
    *&v66.__r_.__value_.__l.__data_ = v47;
    v46->__r_.__value_.__l.__size_ = 0;
    v46->__r_.__value_.__r.__words[2] = 0;
    v46->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v60, v58);
    if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v48 = &v60;
    }

    else
    {
      v48 = v60.__r_.__value_.__r.__words[0];
    }

    if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v49 = HIBYTE(v60.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v49 = v60.__r_.__value_.__l.__size_;
    }

    v50 = std::string::append(&v66, v48, v49);
    v51 = *&v50->__r_.__value_.__l.__data_;
    v67.__r_.__value_.__r.__words[2] = v50->__r_.__value_.__r.__words[2];
    *&v67.__r_.__value_.__l.__data_ = v51;
    v50->__r_.__value_.__l.__size_ = 0;
    v50->__r_.__value_.__r.__words[2] = 0;
    v50->__r_.__value_.__r.__words[0] = 0;
    v52 = std::string::append(&v67, ", v=");
    v53 = *&v52->__r_.__value_.__l.__data_;
    v68.__r_.__value_.__r.__words[2] = v52->__r_.__value_.__r.__words[2];
    *&v68.__r_.__value_.__l.__data_ = v53;
    v52->__r_.__value_.__l.__size_ = 0;
    v52->__r_.__value_.__r.__words[2] = 0;
    v52->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v59, v35);
    if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v54 = &v59;
    }

    else
    {
      v54 = v59.__r_.__value_.__r.__words[0];
    }

    if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v55 = HIBYTE(v59.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v55 = v59.__r_.__value_.__l.__size_;
    }

    v56 = std::string::append(&v68, v54, v55);
    v57 = *&v56->__r_.__value_.__l.__data_;
    v70 = v56->__r_.__value_.__r.__words[2];
    v69 = v57;
    v56->__r_.__value_.__l.__size_ = 0;
    v56->__r_.__value_.__r.__words[2] = 0;
    v56->__r_.__value_.__r.__words[0] = 0;
    sub_29AA5B750(v37, &v69);
    if (SHIBYTE(v70) < 0)
    {
      operator delete(v69);
    }

    if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v59.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v68.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v67.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v60.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v66.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v65.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v61.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v64.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v63.__r_.__value_.__l.__data_);
    }

    if ((SHIBYTE(v62.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return 112;
    }

    v9 = v62.__r_.__value_.__r.__words[0];
    goto LABEL_13;
  }

  return 0;
}

void sub_29AAB2A6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (*(v54 - 105) < 0)
  {
    operator delete(*(v54 - 128));
  }

  if (*(v54 - 137) < 0)
  {
    operator delete(*(v54 - 160));
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (*(v54 - 169) < 0)
  {
    operator delete(*(v54 - 192));
  }

  if (a54 < 0)
  {
    operator delete(a49);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AAB2B74(uint64_t a1, uint64_t *a2, uint64_t a3, _DWORD *a4, char a5, double a6)
{
  v7 = *a4;
  if (v7 < 2)
  {
    return 112;
  }

  v10 = *a1;
  result = 112;
  if (v7 <= v10 && !(v10 % v7))
  {
    v12 = (v7 - 1);
    v13 = v10 / v7;
    v14 = (1 << a5) + -1.0;
    *&a6 = 1.0 / v14;
    *(a3 + 4) = 1.0 / v14;
    LODWORD(__p[0]) = 0;
    sub_29A0AB144((a3 + 8), v7, __p, *&a6);
    sub_29A0A171C(a2, v13 * v12);
    LODWORD(v15) = 0;
    v16 = 0;
    v17 = *(a1 + 32);
    v18 = *a2;
    while (1)
    {
      v15 = v15;
      v19 = 0.0;
      v20 = v12;
      v21 = (v17 + 8 * v16);
      do
      {
        v22 = *v21++;
        v19 = v22 + v19;
        *(v18 + 4 * v15++) = llround(v22 * v14);
        --v20;
      }

      while (v20);
      v23 = *(v17 + 8 * (v16 + v12)) + v19;
      if (vabds_f32(1.0, v23) > 0.00001)
      {
        break;
      }

      v16 += *a4;
      if (v16 >= v10)
      {
        result = 0;
        --*a4;
        return result;
      }
    }

    v24 = sub_29AABB028();
    sub_29A008E78(__p, "Weight quantization: sum too far from 1.0");
    sub_29AA5B750(v24, __p);
    if (v26 < 0)
    {
      operator delete(__p[0]);
    }

    return 112;
  }

  return result;
}

int *sub_29AAB2CF8(int *result, int *a2, int a3, double a4, double a5, double a6)
{
  v6 = fabs(a6);
  v7 = fabs(a4) + fabs(a5) + v6;
  if (v7 <= 0.0)
  {
    *result = a3;
  }

  else
  {
    v8 = 0;
    v9 = a3 / v7;
    v10 = v9 * a4;
    v11 = v9 * a5;
    v12 = vcvtmd_s64_f64(v9 * a4);
    v13 = v6 * v9;
    v14 = vcvtmd_s64_f64(v9 * a5);
    if (v12 >= 0)
    {
      v15 = v12;
    }

    else
    {
      v15 = -v12;
    }

    if (v14 >= 0)
    {
      v16 = v14;
    }

    else
    {
      v16 = -v14;
    }

    v17 = (v10 * v12 + v11 * v14 + v13 * (a3 - (v16 + v15))) / sqrt((v14 * v14 + v12 * v12 + (a3 - (v16 + v15)) * (a3 - (v16 + v15))));
    v18 = 1;
    v19 = v12;
    v20 = v14;
    do
    {
      v21 = 0;
      v22 = v18;
      v23 = v8 + v14;
      if (v8 + v14 >= 0)
      {
        v24 = v8 + v14;
      }

      else
      {
        v24 = -v23;
      }

      v25 = 1;
      v26 = a3 - v24;
      do
      {
        v27 = v25;
        v28 = v21 + v12;
        if (v21 + v12 >= 0)
        {
          v29 = v21 + v12;
        }

        else
        {
          v29 = -v28;
        }

        if (v21 | v8)
        {
          v30 = v26 - v29;
          if (((v26 - v29) & 0x80000000) == 0)
          {
            v31 = sqrt((v23 * v23 + v28 * v28 + v30 * v30));
            if (v17 < (v11 * v23 + v10 * v28 + v13 * v30) / v31)
            {
              v20 = v8 + v14;
              v19 = v28;
              v17 = (v11 * v23 + v10 * v28 + v13 * v30) / v31;
            }
          }
        }

        v25 = 0;
        v21 = 1;
      }

      while ((v27 & 1) != 0);
      v18 = 0;
      v8 = 1;
    }

    while ((v22 & 1) != 0);
    if (a6 >= 0.0)
    {
      *result = v19 + a3;
      a3 += v20;
    }

    else
    {
      v32 = 2 * a3;
      if (v20 >= 0)
      {
        v33 = v20;
      }

      else
      {
        v33 = -v20;
      }

      if (a4 >= 0.0)
      {
        v33 = v32 - v33;
      }

      *result = v33;
      if (v19 >= 0)
      {
        v34 = v19;
      }

      else
      {
        v34 = -v19;
      }

      v35 = v32 - v34;
      if (a5 >= 0.0)
      {
        a3 = v35;
      }

      else
      {
        a3 = v34;
      }
    }
  }

  *a2 = a3;
  return result;
}

double *sub_29AAB2E7C(double *result, double *a2)
{
  v2 = result;
  if (result != a2 && result + 1 != a2)
  {
    v5 = *result;
    v4 = result[1];
    if (v4 < *result)
    {
      ++result;
    }

    v6 = v4 >= *v2 ? v2 + 1 : v2;
    v7 = v2 + 2;
    if (v7 != a2)
    {
      if (v4 >= v5)
      {
        v4 = v5;
      }

      while (v7 + 1 != a2)
      {
        v9 = *v7;
        v8 = v7[1];
        if (v8 >= *v7)
        {
          if (v9 < v4)
          {
            v4 = *v7;
            result = v7;
          }

          if (v8 >= *v6)
          {
            v6 = v7 + 1;
          }
        }

        else
        {
          v4 = *result;
          if (v8 < *result)
          {
            v4 = v7[1];
            result = v7 + 1;
          }

          if (v9 >= *v6)
          {
            v6 = v7;
          }
        }

        v7 += 2;
        if (v7 == a2)
        {
          return result;
        }
      }

      if (*v7 < *result)
      {
        return v7;
      }
    }
  }

  return result;
}

uint64_t sub_29AAB2F50(uint64_t *a1, uint64_t *a2, _BYTE *a3, int *a4, char a5, double a6)
{
  v8 = *a3;
  if (v8 <= 1)
  {
    if (*a3)
    {
      if (v8 != 1)
      {
        return 112;
      }

      v10 = *a4;

      return sub_29AAB307C(a1, a2, a3, v10, a5);
    }

    else
    {

      return sub_29AAB3028(a1, a2);
    }
  }

  else
  {
    if (v8 == 2)
    {
      v14 = v6;
      v15 = v7;
      v11 = sub_29AABB028();
      sub_29A008E78(__p, "Weight quantizeUnitary3DVector: incompatible type int");
      sub_29AA5B750(v11, __p);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }

      return 112;
    }

    if (v8 != 3)
    {
      if (v8 == 4)
      {

        return sub_29AAB3A7C(a1, a2, a3, a4, a5, a6);
      }

      return 112;
    }

    return sub_29AAB34A0(a1, a2, a3, a5);
  }
}

uint64_t sub_29AAB3028(unint64_t *a1, void *a2)
{
  sub_29A0A171C(a2, *a1);
  v4 = *a1;
  if (*a1)
  {
    v5 = a1[4];
    v6 = *a2;
    do
    {
      v7 = *v5++;
      *v6++ = v7;
      --v4;
    }

    while (v4);
  }

  return 0;
}

uint64_t sub_29AAB307C(uint64_t *a1, void *a2, uint64_t a3, int a4, int a5)
{
  v10 = *a1;
  sub_29A0A171C(a2, *a1);
  if (!v10)
  {
    return 0;
  }

  v11 = 112;
  if (a4 >= 1 && v10 >= a4 && !(v10 % a4))
  {
    v12 = a4;
    *v58 = *a1[4];
    sub_29AA7BAE8(&v59, a4, v58);
    *__p = *a1[4];
    sub_29AA7BAE8(v58, a4, __p);
    v13 = 0;
    v14 = v58[0];
    v15 = v59;
    v16 = 4 * a4;
    v17 = a1[4];
    do
    {
      v18 = 0;
      do
      {
        v19 = *(v17 + v18);
        v20 = *&v15[v18];
        if (v20 >= v19)
        {
          v20 = *(v17 + v18);
        }

        *&v15[v18] = v20;
        if (v14[v18 / 4] > v19)
        {
          v19 = v14[v18 / 4];
        }

        v14[v18 / 4] = v19;
        v18 += 4;
      }

      while (v16 != v18);
      v13 += a4;
      v17 += v16;
    }

    while (v13 < v10);
    v21 = v59;
    v22 = *v14 - *v59;
    if (a4 != 1)
    {
      if (a4 <= 2)
      {
        v23 = 2;
      }

      else
      {
        v23 = a4;
      }

      v24 = v14 + 1;
      v25 = (v59 + 4);
      v26 = v23 - 1;
      do
      {
        v27 = *v24++;
        v28 = v27;
        v29 = *v25++;
        v30 = v28 - v29;
        if (v30 >= v22)
        {
          v22 = v30;
        }

        --v26;
      }

      while (v26);
    }

    v31 = 1 << a5;
    if (a5)
    {
      if (v22 < 2.2204e-16)
      {
        v22 = 1.0;
      }

      v32 = (v31 + -1.0) / v22;
    }

    else
    {
      v32 = 1.0;
    }

    v33 = 0;
    v34 = 0;
    v35 = a1[4];
    while (2)
    {
      v36 = (*a2 + v33);
      v37 = v12;
      v38 = v21;
      v39 = v35;
      do
      {
        v40 = *v39++;
        v41 = llroundf(v32 * (v40 - *v38));
        if (v41 < 0 || v31 <= v41)
        {
          v42 = sub_29AABB028();
          std::to_string(&v53, v41);
          v43 = std::string::insert(&v53, 0, "Uniform quantization: values out of bound; qvalue=");
          v44 = *&v43->__r_.__value_.__l.__data_;
          v54.__r_.__value_.__r.__words[2] = v43->__r_.__value_.__r.__words[2];
          *&v54.__r_.__value_.__l.__data_ = v44;
          v43->__r_.__value_.__l.__size_ = 0;
          v43->__r_.__value_.__r.__words[2] = 0;
          v43->__r_.__value_.__r.__words[0] = 0;
          v45 = std::string::append(&v54, " and qp1=");
          v46 = *&v45->__r_.__value_.__l.__data_;
          v55.__r_.__value_.__r.__words[2] = v45->__r_.__value_.__r.__words[2];
          *&v55.__r_.__value_.__l.__data_ = v46;
          v45->__r_.__value_.__l.__size_ = 0;
          v45->__r_.__value_.__r.__words[2] = 0;
          v45->__r_.__value_.__r.__words[0] = 0;
          std::to_string(&v52, 1 << a5);
          if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v47 = &v52;
          }

          else
          {
            v47 = v52.__r_.__value_.__r.__words[0];
          }

          if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v52.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v52.__r_.__value_.__l.__size_;
          }

          v49 = std::string::append(&v55, v47, size);
          v50 = *&v49->__r_.__value_.__l.__data_;
          v57 = v49->__r_.__value_.__r.__words[2];
          *__p = v50;
          v49->__r_.__value_.__l.__size_ = 0;
          v49->__r_.__value_.__r.__words[2] = 0;
          v49->__r_.__value_.__r.__words[0] = 0;
          sub_29AA5B750(v42, __p);
          if (SHIBYTE(v57) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v52.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v55.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v54.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v53.__r_.__value_.__l.__data_);
          }

          v11 = 112;
          goto LABEL_53;
        }

        *v36++ = v41;
        ++v38;
        --v37;
      }

      while (v37);
      v34 += v12;
      v35 = (v35 + v16);
      v33 += v16;
      if (v34 < v10)
      {
        continue;
      }

      break;
    }

    if ((a3 + 8) != &v59)
    {
      sub_29A36CF34((a3 + 8), v59, v60, (v60 - v59) >> 2);
    }

    v11 = 0;
    *(a3 + 4) = 1.0 / v32;
LABEL_53:
    if (v58[0])
    {
      v58[1] = v58[0];
      operator delete(v58[0]);
    }

    if (v59)
    {
      v60 = v59;
      operator delete(v59);
    }
  }

  return v11;
}

void sub_29AAB3404(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  v35 = *(v33 - 128);
  if (v35)
  {
    *(v33 - 120) = v35;
    operator delete(v35);
  }

  v36 = *(v33 - 104);
  if (v36)
  {
    *(v33 - 96) = v36;
    operator delete(v36);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AAB34A0(uint64_t *a1, void *a2, uint64_t a3, char a4)
{
  v4 = *a1;
  if (*a1 < 3 || *a1 % 3 != 0)
  {
    v6 = sub_29AABB028();
    std::to_string(&v62, v4);
    v7 = std::string::insert(&v62, 0, "quantizeColorRGB: Incompatible data dimension: componentCount ");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v64 = v7->__r_.__value_.__r.__words[2];
    v63 = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    sub_29AA5B750(v6, &v63);
    if (SHIBYTE(v64) < 0)
    {
      operator delete(v63);
    }

    if ((SHIBYTE(v62.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return 112;
    }

    v9 = v62.__r_.__value_.__r.__words[0];
    goto LABEL_13;
  }

  v14 = a1[4];
  v62.__r_.__value_.__s.__data_[0] = 0;
  if ((*sub_29AA7B008(v14, &v14[v4]) & 0x80000000) != 0 || *v15 > 1)
  {
    v17 = sub_29AABB028();
    sub_29A008E78(&v63, "quantizeColorRGB: Input out of range");
    sub_29AA5B750(v17, &v63);
    if (SHIBYTE(v64) < 0)
    {
      v9 = v63;
LABEL_13:
      operator delete(v9);
    }
  }

  else
  {
    v19 = 1 << a4;
    v51 = v19 + -1.0;
    *v16.i32 = 1.0 / v51;
    *(a3 + 4) = 1.0 / v51;
    LODWORD(v63) = 0;
    sub_29A0AB144((a3 + 8), 3uLL, &v63, v16);
    sub_29A0A171C(a2, v4);
    if (v4 < 1)
    {
      return 0;
    }

    v20 = 0;
    v21 = (a1[4] + 8);
    for (i = (*a2 + 4); ; i = (i + 12))
    {
      v23 = vcvt_f32_s32(*(v21 - 2));
      v24 = *v21;
      v25 = llroundf(v51 * (vaddv_f32(vmul_f32(v23, 0x3F3717593E59B3D0)) + (v24 * 0.0722)));
      v26 = vadd_f32(vmul_n_f32(0x3F000000BDEAB368, v23.f32[0]), vmul_lane_f32(0xBEE88CE7BEC55326, v23, 1));
      v27 = vmul_n_f32(0x3D3B98C83F000000, v24);
      v28.i32[0] = vadd_f32(v26, v27).u32[0];
      v28.i32[1] = vsub_f32(v26, v27).i32[1];
      v29 = vcvt_s32_f32(vrnda_f32(vmul_n_f32(vadd_f32(v28, 0x3F0000003F000000), v51)));
      if (v25 < 0 || v19 <= v25 || v29.i32[0] < 0 || v19 <= v29.i32[0] || v29.i32[1] < 0 || v19 <= v29.i32[1])
      {
        break;
      }

      result = 0;
      v21 += 3;
      i[-1].i32[1] = v25;
      *i = v29;
      v20 += 3;
      if (v20 >= v4)
      {
        return result;
      }
    }

    v52 = v29;
    v30 = sub_29AABB028();
    std::to_string(&v56, v19);
    v31 = std::string::insert(&v56, 0, "quantizeColorRGB: values out of bound qp1=");
    v32 = *&v31->__r_.__value_.__l.__data_;
    v57.__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
    *&v57.__r_.__value_.__l.__data_ = v32;
    v31->__r_.__value_.__l.__size_ = 0;
    v31->__r_.__value_.__r.__words[2] = 0;
    v31->__r_.__value_.__r.__words[0] = 0;
    v33 = std::string::append(&v57, ", y=");
    v34 = *&v33->__r_.__value_.__l.__data_;
    v58.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
    *&v58.__r_.__value_.__l.__data_ = v34;
    v33->__r_.__value_.__l.__size_ = 0;
    v33->__r_.__value_.__r.__words[2] = 0;
    v33->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v55, v25);
    if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v35 = &v55;
    }

    else
    {
      v35 = v55.__r_.__value_.__r.__words[0];
    }

    if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v55.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v55.__r_.__value_.__l.__size_;
    }

    v37 = std::string::append(&v58, v35, size);
    v38 = *&v37->__r_.__value_.__l.__data_;
    v59.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
    *&v59.__r_.__value_.__l.__data_ = v38;
    v37->__r_.__value_.__l.__size_ = 0;
    v37->__r_.__value_.__r.__words[2] = 0;
    v37->__r_.__value_.__r.__words[0] = 0;
    v39 = std::string::append(&v59, ", u=");
    v40 = *&v39->__r_.__value_.__l.__data_;
    v60.__r_.__value_.__r.__words[2] = v39->__r_.__value_.__r.__words[2];
    *&v60.__r_.__value_.__l.__data_ = v40;
    v39->__r_.__value_.__l.__size_ = 0;
    v39->__r_.__value_.__r.__words[2] = 0;
    v39->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v54, v52.i32[0]);
    if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v41 = &v54;
    }

    else
    {
      v41 = v54.__r_.__value_.__r.__words[0];
    }

    if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v42 = HIBYTE(v54.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v42 = v54.__r_.__value_.__l.__size_;
    }

    v43 = std::string::append(&v60, v41, v42);
    v44 = *&v43->__r_.__value_.__l.__data_;
    v61.__r_.__value_.__r.__words[2] = v43->__r_.__value_.__r.__words[2];
    *&v61.__r_.__value_.__l.__data_ = v44;
    v43->__r_.__value_.__l.__size_ = 0;
    v43->__r_.__value_.__r.__words[2] = 0;
    v43->__r_.__value_.__r.__words[0] = 0;
    v45 = std::string::append(&v61, ", v=");
    v46 = *&v45->__r_.__value_.__l.__data_;
    v62.__r_.__value_.__r.__words[2] = v45->__r_.__value_.__r.__words[2];
    *&v62.__r_.__value_.__l.__data_ = v46;
    v45->__r_.__value_.__l.__size_ = 0;
    v45->__r_.__value_.__r.__words[2] = 0;
    v45->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v53, v52.i32[1]);
    if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v47 = &v53;
    }

    else
    {
      v47 = v53.__r_.__value_.__r.__words[0];
    }

    if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v48 = HIBYTE(v53.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v48 = v53.__r_.__value_.__l.__size_;
    }

    v49 = std::string::append(&v62, v47, v48);
    v50 = *&v49->__r_.__value_.__l.__data_;
    v64 = v49->__r_.__value_.__r.__words[2];
    v63 = v50;
    v49->__r_.__value_.__l.__size_ = 0;
    v49->__r_.__value_.__r.__words[2] = 0;
    v49->__r_.__value_.__r.__words[0] = 0;
    sub_29AA5B750(v30, &v63);
    if (SHIBYTE(v64) < 0)
    {
      operator delete(v63);
    }

    if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v53.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v62.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v61.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v54.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v60.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v59.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v55.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v58.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v57.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
    {
      v9 = v56.__r_.__value_.__r.__words[0];
      goto LABEL_13;
    }
  }

  return 112;
}

void sub_29AAB3974(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (*(v54 - 89) < 0)
  {
    operator delete(*(v54 - 112));
  }

  if (*(v54 - 121) < 0)
  {
    operator delete(*(v54 - 144));
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (*(v54 - 153) < 0)
  {
    operator delete(*(v54 - 176));
  }

  if (a54 < 0)
  {
    operator delete(a49);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AAB3A7C(uint64_t a1, uint64_t *a2, uint64_t a3, _DWORD *a4, char a5, double a6)
{
  v7 = *a4;
  if (v7 < 2)
  {
    return 112;
  }

  v10 = *a1;
  result = 112;
  if (v7 <= v10 && !(v10 % v7))
  {
    v12 = (v7 - 1);
    v13 = v10 / v7;
    v14 = (1 << a5) + -1.0;
    *&a6 = 1.0 / v14;
    *(a3 + 4) = 1.0 / v14;
    LODWORD(__p[0]) = 0;
    sub_29A0AB144((a3 + 8), v7, __p, *&a6);
    sub_29A0A171C(a2, v13 * v12);
    LODWORD(v15) = 0;
    v16 = 0;
    v17 = *(a1 + 32);
    v18 = *a2;
    while (1)
    {
      v15 = v15;
      v19 = 0.0;
      v20 = v12;
      v21 = (v17 + 4 * v16);
      do
      {
        v22 = *v21++;
        v19 = v19 + v22;
        *(v18 + 4 * v15++) = llroundf(v14 * v22);
        --v20;
      }

      while (v20);
      if (vabds_f32(1.0, v19 + *(v17 + 4 * (v16 + v12))) > 0.00001)
      {
        break;
      }

      v16 += *a4;
      if (v16 >= v10)
      {
        result = 0;
        --*a4;
        return result;
      }
    }

    v23 = sub_29AABB028();
    sub_29A008E78(__p, "Weight quantization: sum too far from 1.0");
    sub_29AA5B750(v23, __p);
    if (v25 < 0)
    {
      operator delete(__p[0]);
    }

    return 112;
  }

  return result;
}

uint64_t sub_29AAB3BF4(uint64_t *a1, uint64_t *a2, _BYTE *a3, int *a4, char a5, double a6)
{
  v8 = *a3;
  if (v8 <= 1)
  {
    if (*a3)
    {
      if (v8 != 1)
      {
        return 112;
      }

      v10 = *a4;

      return sub_29AAB3D20(a1, a2, a3, v10, a5);
    }

    else
    {

      return sub_29AAB3CCC(a1, a2);
    }
  }

  else
  {
    if (v8 == 2)
    {
      v14 = v6;
      v15 = v7;
      v11 = sub_29AABB028();
      sub_29A008E78(__p, "Weight quantizeUnitary3DVector: incompatible type BOOL");
      sub_29AA5B750(v11, __p);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }

      return 112;
    }

    if (v8 != 3)
    {
      if (v8 == 4)
      {

        return sub_29AAB46E4(a1, a2, a3, a4, a5, a6);
      }

      return 112;
    }

    return sub_29AAB4144(a1, a2, a3, a5);
  }
}

uint64_t sub_29AAB3CCC(unint64_t *a1, void *a2)
{
  sub_29A0A171C(a2, *a1);
  v4 = *a1;
  if (*a1)
  {
    v5 = a1[4];
    v6 = *a2;
    do
    {
      v7 = *v5++;
      *v6++ = v7;
      --v4;
    }

    while (v4);
  }

  return 0;
}

uint64_t sub_29AAB3D20(uint64_t *a1, void *a2, uint64_t a3, int a4, int a5)
{
  v10 = *a1;
  sub_29A0A171C(a2, *a1);
  if (!v10)
  {
    return 0;
  }

  v12 = 112;
  if (a4 >= 1 && v10 >= a4 && !(v10 % a4))
  {
    v13 = a4;
    LOBYTE(v11) = *a1[4];
    *v59 = v11;
    sub_29AA7BAE8(&v60, a4, v59);
    LOBYTE(v14) = *a1[4];
    *__p = v14;
    sub_29AA7BAE8(v59, a4, __p);
    v16 = 0;
    v17 = v59[0];
    v18 = v60;
    v19 = a1[4];
    do
    {
      v20 = 0;
      do
      {
        LOBYTE(v15) = *(v19 + v20);
        v15 = LODWORD(v15);
        v21 = *&v18[4 * v20];
        if (v21 >= v15)
        {
          v21 = v15;
        }

        *&v18[4 * v20] = v21;
        if (v17[v20] > v15)
        {
          v15 = v17[v20];
        }

        v17[v20++] = v15;
      }

      while (a4 != v20);
      v16 += a4;
      v19 += a4;
    }

    while (v16 < v10);
    v22 = v60;
    v23 = *v17 - *v60;
    if (a4 != 1)
    {
      if (a4 <= 2)
      {
        v24 = 2;
      }

      else
      {
        v24 = a4;
      }

      v25 = v17 + 1;
      v26 = (v60 + 4);
      v27 = v24 - 1;
      do
      {
        v28 = *v25++;
        v29 = v28;
        v30 = *v26++;
        v31 = v29 - v30;
        if (v31 >= v23)
        {
          v23 = v31;
        }

        --v27;
      }

      while (v27);
    }

    v32 = 1 << a5;
    if (a5)
    {
      if (v23 < 2.2204e-16)
      {
        v23 = 1.0;
      }

      v33 = (v32 + -1.0) / v23;
    }

    else
    {
      v33 = 1.0;
    }

    v34 = 0;
    v35 = 0;
    v36 = a1[4];
    while (2)
    {
      v37 = (*a2 + v34);
      v38 = v13;
      v39 = v22;
      v40 = v36;
      do
      {
        v41 = *v40++;
        v42 = llroundf(v33 * (v41 - *v39));
        if (v42 < 0 || v32 <= v42)
        {
          v43 = sub_29AABB028();
          std::to_string(&v54, v42);
          v44 = std::string::insert(&v54, 0, "Uniform quantization: values out of bound; qvalue=");
          v45 = *&v44->__r_.__value_.__l.__data_;
          v55.__r_.__value_.__r.__words[2] = v44->__r_.__value_.__r.__words[2];
          *&v55.__r_.__value_.__l.__data_ = v45;
          v44->__r_.__value_.__l.__size_ = 0;
          v44->__r_.__value_.__r.__words[2] = 0;
          v44->__r_.__value_.__r.__words[0] = 0;
          v46 = std::string::append(&v55, " and qp1=");
          v47 = *&v46->__r_.__value_.__l.__data_;
          v56.__r_.__value_.__r.__words[2] = v46->__r_.__value_.__r.__words[2];
          *&v56.__r_.__value_.__l.__data_ = v47;
          v46->__r_.__value_.__l.__size_ = 0;
          v46->__r_.__value_.__r.__words[2] = 0;
          v46->__r_.__value_.__r.__words[0] = 0;
          std::to_string(&v53, 1 << a5);
          if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v48 = &v53;
          }

          else
          {
            v48 = v53.__r_.__value_.__r.__words[0];
          }

          if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v53.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v53.__r_.__value_.__l.__size_;
          }

          v50 = std::string::append(&v56, v48, size);
          v51 = *&v50->__r_.__value_.__l.__data_;
          v58 = v50->__r_.__value_.__r.__words[2];
          *__p = v51;
          v50->__r_.__value_.__l.__size_ = 0;
          v50->__r_.__value_.__r.__words[2] = 0;
          v50->__r_.__value_.__r.__words[0] = 0;
          sub_29AA5B750(v43, __p);
          if (SHIBYTE(v58) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v53.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v56.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v55.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v54.__r_.__value_.__l.__data_);
          }

          v12 = 112;
          goto LABEL_53;
        }

        *v37++ = v42;
        ++v39;
        --v38;
      }

      while (v38);
      v35 += v13;
      v36 += v13;
      v34 += 4 * v13;
      if (v35 < v10)
      {
        continue;
      }

      break;
    }

    if ((a3 + 8) != &v60)
    {
      sub_29A36CF34((a3 + 8), v60, v61, (v61 - v60) >> 2);
    }

    v12 = 0;
    *(a3 + 4) = 1.0 / v33;
LABEL_53:
    if (v59[0])
    {
      v59[1] = v59[0];
      operator delete(v59[0]);
    }

    if (v60)
    {
      v61 = v60;
      operator delete(v60);
    }
  }

  return v12;
}

void sub_29AAB40A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  v35 = *(v33 - 128);
  if (v35)
  {
    *(v33 - 120) = v35;
    operator delete(v35);
  }

  v36 = *(v33 - 104);
  if (v36)
  {
    *(v33 - 96) = v36;
    operator delete(v36);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AAB4144(uint64_t *a1, void *a2, uint64_t a3, char a4)
{
  v4 = *a1;
  if (*a1 < 3 || *a1 % 3 != 0)
  {
    v6 = sub_29AABB028();
    std::to_string(&v62, v4);
    v7 = std::string::insert(&v62, 0, "quantizeColorRGB: Incompatible data dimension: componentCount ");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v64 = v7->__r_.__value_.__r.__words[2];
    v63 = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    sub_29AA5B750(v6, &v63);
    if (SHIBYTE(v64) < 0)
    {
      operator delete(v63);
    }

    if ((SHIBYTE(v62.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return 112;
    }

    v9 = v62.__r_.__value_.__r.__words[0];
    goto LABEL_59;
  }

  v14 = a1[4];
  v62.__r_.__value_.__s.__data_[0] = 0;
  sub_29AAB4860(v14, &v14[v4]);
  v15 = 1 << a4;
  v51 = v15 + -1.0;
  *v16.i32 = 1.0 / v51;
  *(a3 + 4) = 1.0 / v51;
  LODWORD(v63) = 0;
  sub_29A0AB144((a3 + 8), 3uLL, &v63, v16);
  sub_29A0A171C(a2, v4);
  if (v4 < 1)
  {
    return 0;
  }

  v19 = 0;
  v20 = (a1[4] + 2);
  for (i = (*a2 + 4); ; i = (i + 12))
  {
    v17.i8[0] = *(v20 - 2);
    v22 = v17.u32[0];
    v18.i8[0] = *(v20 - 1);
    v23 = v18.u32[0];
    *&v24 = v23 * 0.7152;
    LOBYTE(v24) = *v20;
    v25 = v24;
    v26 = llroundf(v51 * (((v22 * 0.2126) + (v23 * 0.7152)) + (v25 * 0.0722)));
    v27 = vadd_f32(vmul_n_f32(0x3F000000BDEAB368, v22), vmul_n_f32(0xBEE88CE7BEC55326, v23));
    v28 = vmul_n_f32(0x3D3B98C83F000000, v25);
    v18.i32[0] = vadd_f32(v27, v28).u32[0];
    v18.i32[1] = vsub_f32(v27, v28).i32[1];
    v17 = vcvt_s32_f32(vrnda_f32(vmul_n_f32(vadd_f32(v18, 0x3F0000003F000000), v51)));
    if (v26 < 0 || v15 <= v26 || v17.i32[0] < 0 || v15 <= v17.i32[0] || v17.i32[1] < 0 || v15 <= v17.i32[1])
    {
      break;
    }

    v20 += 3;
    i[-1].i32[1] = v26;
    *i = v17;
    v19 += 3;
    if (v19 >= v4)
    {
      return 0;
    }
  }

  v52 = v17;
  v30 = sub_29AABB028();
  std::to_string(&v56, v15);
  v31 = std::string::insert(&v56, 0, "quantizeColorRGB: values out of bound qp1=");
  v32 = *&v31->__r_.__value_.__l.__data_;
  v57.__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
  *&v57.__r_.__value_.__l.__data_ = v32;
  v31->__r_.__value_.__l.__size_ = 0;
  v31->__r_.__value_.__r.__words[2] = 0;
  v31->__r_.__value_.__r.__words[0] = 0;
  v33 = std::string::append(&v57, ", y=");
  v34 = *&v33->__r_.__value_.__l.__data_;
  v58.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
  *&v58.__r_.__value_.__l.__data_ = v34;
  v33->__r_.__value_.__l.__size_ = 0;
  v33->__r_.__value_.__r.__words[2] = 0;
  v33->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v55, v26);
  if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v35 = &v55;
  }

  else
  {
    v35 = v55.__r_.__value_.__r.__words[0];
  }

  if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v55.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v55.__r_.__value_.__l.__size_;
  }

  v37 = std::string::append(&v58, v35, size);
  v38 = *&v37->__r_.__value_.__l.__data_;
  v59.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
  *&v59.__r_.__value_.__l.__data_ = v38;
  v37->__r_.__value_.__l.__size_ = 0;
  v37->__r_.__value_.__r.__words[2] = 0;
  v37->__r_.__value_.__r.__words[0] = 0;
  v39 = std::string::append(&v59, ", u=");
  v40 = *&v39->__r_.__value_.__l.__data_;
  v60.__r_.__value_.__r.__words[2] = v39->__r_.__value_.__r.__words[2];
  *&v60.__r_.__value_.__l.__data_ = v40;
  v39->__r_.__value_.__l.__size_ = 0;
  v39->__r_.__value_.__r.__words[2] = 0;
  v39->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v54, v52.i32[0]);
  if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v41 = &v54;
  }

  else
  {
    v41 = v54.__r_.__value_.__r.__words[0];
  }

  if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v42 = HIBYTE(v54.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v42 = v54.__r_.__value_.__l.__size_;
  }

  v43 = std::string::append(&v60, v41, v42);
  v44 = *&v43->__r_.__value_.__l.__data_;
  v61.__r_.__value_.__r.__words[2] = v43->__r_.__value_.__r.__words[2];
  *&v61.__r_.__value_.__l.__data_ = v44;
  v43->__r_.__value_.__l.__size_ = 0;
  v43->__r_.__value_.__r.__words[2] = 0;
  v43->__r_.__value_.__r.__words[0] = 0;
  v45 = std::string::append(&v61, ", v=");
  v46 = *&v45->__r_.__value_.__l.__data_;
  v62.__r_.__value_.__r.__words[2] = v45->__r_.__value_.__r.__words[2];
  *&v62.__r_.__value_.__l.__data_ = v46;
  v45->__r_.__value_.__l.__size_ = 0;
  v45->__r_.__value_.__r.__words[2] = 0;
  v45->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v53, v52.i32[1]);
  if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v47 = &v53;
  }

  else
  {
    v47 = v53.__r_.__value_.__r.__words[0];
  }

  if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v48 = HIBYTE(v53.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v48 = v53.__r_.__value_.__l.__size_;
  }

  v49 = std::string::append(&v62, v47, v48);
  v50 = *&v49->__r_.__value_.__l.__data_;
  v64 = v49->__r_.__value_.__r.__words[2];
  v63 = v50;
  v49->__r_.__value_.__l.__size_ = 0;
  v49->__r_.__value_.__r.__words[2] = 0;
  v49->__r_.__value_.__r.__words[0] = 0;
  sub_29AA5B750(v30, &v63);
  if (SHIBYTE(v64) < 0)
  {
    operator delete(v63);
  }

  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v54.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    v9 = v56.__r_.__value_.__r.__words[0];
LABEL_59:
    operator delete(v9);
  }

  return 112;
}

void sub_29AAB45DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (*(v54 - 89) < 0)
  {
    operator delete(*(v54 - 112));
  }

  if (*(v54 - 121) < 0)
  {
    operator delete(*(v54 - 144));
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (*(v54 - 153) < 0)
  {
    operator delete(*(v54 - 176));
  }

  if (a54 < 0)
  {
    operator delete(a49);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AAB46D0()
{
  if (*(v0 - 89) < 0)
  {
    JUMPOUT(0x29AAB46BCLL);
  }

  JUMPOUT(0x29AAB46C0);
}

uint64_t sub_29AAB46E4(uint64_t a1, uint64_t *a2, uint64_t a3, _DWORD *a4, char a5, double a6)
{
  v7 = *a4;
  if (v7 < 2)
  {
    return 112;
  }

  v10 = *a1;
  result = 112;
  if (v7 <= v10 && !(v10 % v7))
  {
    v12 = (v7 - 1);
    v13 = v10 / v7;
    v14 = (1 << a5) + -1.0;
    *&a6 = 1.0 / v14;
    *(a3 + 4) = 1.0 / v14;
    LODWORD(__p[0]) = 0;
    sub_29A0AB144((a3 + 8), v7, __p, *&a6);
    sub_29A0A171C(a2, v13 * v12);
    LODWORD(v15) = 0;
    v16 = 0;
    v17 = *(a1 + 32);
    v18 = *a2;
    while (1)
    {
      v19 = v16;
      v15 = v15;
      v20 = 0.0;
      v21 = v12;
      v22 = (v17 + v16);
      do
      {
        v23 = *v22++;
        v20 = v20 + v23;
        v24 = v14 * v23;
        *(v18 + 4 * v15++) = llroundf(v24);
        --v21;
      }

      while (v21);
      LOBYTE(v24) = *(v17 + v19 + v12);
      if (vabds_f32(1.0, v20 + LODWORD(v24)) > 0.00001)
      {
        break;
      }

      v16 = *a4 + v19;
      if (v16 >= v10)
      {
        result = 0;
        --*a4;
        return result;
      }
    }

    v25 = sub_29AABB028();
    sub_29A008E78(__p, "Weight quantization: sum too far from 1.0");
    sub_29AA5B750(v25, __p);
    if (v27 < 0)
    {
      operator delete(__p[0]);
    }

    return 112;
  }

  return result;
}

unsigned __int8 *sub_29AAB4860(unsigned __int8 *result, unsigned __int8 *a2)
{
  v2 = result;
  if (result != a2 && result + 1 != a2)
  {
    v3 = result[1];
    v4 = *result;
    if (v3 >= v4)
    {
      v5 = result + 1;
    }

    else
    {
      ++result;
      v5 = v2;
    }

    v6 = v2 + 2;
    if (v2 + 2 != a2)
    {
      if (v2 + 3 == a2)
      {
LABEL_21:
        if (*v6 < *result)
        {
          return v6;
        }
      }

      else
      {
        if (v3 >= v4)
        {
          v7 = v4;
        }

        else
        {
          v7 = v3;
        }

        while (1)
        {
          v8 = v6[1];
          v9 = *v6;
          if (v8 >= v9)
          {
            if (v9 < v7)
            {
              v7 = *v6;
              result = v6;
            }

            if (v8 >= *v5)
            {
              v5 = v6 + 1;
            }
          }

          else
          {
            v7 = 0;
            if (v8 < *result)
            {
              result = v6 + 1;
            }

            v5 = v6;
          }

          v6 += 2;
          if (v6 == a2)
          {
            break;
          }

          if (v6 + 1 == a2)
          {
            goto LABEL_21;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_29AAB4950(uint64_t *a1, uint64_t *a2, _BYTE *a3, int *a4, char a5, double a6)
{
  v8 = *a3;
  if (v8 <= 1)
  {
    if (*a3)
    {
      if (v8 != 1)
      {
        return 112;
      }

      v10 = *a4;

      return sub_29AAB4A28(a1, a2, a3, v10, a5);
    }

    else
    {

      return sub_29AAB3CCC(a1, a2);
    }
  }

  else
  {
    if (v8 == 2)
    {
      v14 = v6;
      v15 = v7;
      v11 = sub_29AABB028();
      sub_29A008E78(__p, "Weight quantizeUnitary3DVector: incompatible type uint8_t");
      sub_29AA5B750(v11, __p);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }

      return 112;
    }

    if (v8 != 3)
    {
      if (v8 == 4)
      {

        return sub_29AAB46E4(a1, a2, a3, a4, a5, a6);
      }

      return 112;
    }

    return sub_29AAB4E4C(a1, a2, a3, a5);
  }
}

uint64_t sub_29AAB4A28(uint64_t *a1, void *a2, uint64_t a3, int a4, int a5)
{
  v10 = *a1;
  sub_29A0A171C(a2, *a1);
  if (!v10)
  {
    return 0;
  }

  v12 = 112;
  if (a4 >= 1 && v10 >= a4 && !(v10 % a4))
  {
    v13 = a4;
    LOBYTE(v11) = *a1[4];
    *v59 = v11;
    sub_29AA7BAE8(&v60, a4, v59);
    LOBYTE(v14) = *a1[4];
    *__p = v14;
    sub_29AA7BAE8(v59, a4, __p);
    v16 = 0;
    v17 = v59[0];
    v18 = v60;
    v19 = a1[4];
    do
    {
      v20 = 0;
      do
      {
        LOBYTE(v15) = *(v19 + v20);
        v15 = LODWORD(v15);
        v21 = *&v18[4 * v20];
        if (v21 >= v15)
        {
          v21 = v15;
        }

        *&v18[4 * v20] = v21;
        if (v17[v20] > v15)
        {
          v15 = v17[v20];
        }

        v17[v20++] = v15;
      }

      while (a4 != v20);
      v16 += a4;
      v19 += a4;
    }

    while (v16 < v10);
    v22 = v60;
    v23 = *v17 - *v60;
    if (a4 != 1)
    {
      if (a4 <= 2)
      {
        v24 = 2;
      }

      else
      {
        v24 = a4;
      }

      v25 = v17 + 1;
      v26 = (v60 + 4);
      v27 = v24 - 1;
      do
      {
        v28 = *v25++;
        v29 = v28;
        v30 = *v26++;
        v31 = v29 - v30;
        if (v31 >= v23)
        {
          v23 = v31;
        }

        --v27;
      }

      while (v27);
    }

    v32 = 1 << a5;
    if (a5)
    {
      if (v23 < 2.2204e-16)
      {
        v23 = 1.0;
      }

      v33 = (v32 + -1.0) / v23;
    }

    else
    {
      v33 = 1.0;
    }

    v34 = 0;
    v35 = 0;
    v36 = a1[4];
    while (2)
    {
      v37 = (*a2 + v34);
      v38 = v13;
      v39 = v22;
      v40 = v36;
      do
      {
        v41 = *v40++;
        v42 = llroundf(v33 * (v41 - *v39));
        if (v42 < 0 || v32 <= v42)
        {
          v43 = sub_29AABB028();
          std::to_string(&v54, v42);
          v44 = std::string::insert(&v54, 0, "Uniform quantization: values out of bound; qvalue=");
          v45 = *&v44->__r_.__value_.__l.__data_;
          v55.__r_.__value_.__r.__words[2] = v44->__r_.__value_.__r.__words[2];
          *&v55.__r_.__value_.__l.__data_ = v45;
          v44->__r_.__value_.__l.__size_ = 0;
          v44->__r_.__value_.__r.__words[2] = 0;
          v44->__r_.__value_.__r.__words[0] = 0;
          v46 = std::string::append(&v55, " and qp1=");
          v47 = *&v46->__r_.__value_.__l.__data_;
          v56.__r_.__value_.__r.__words[2] = v46->__r_.__value_.__r.__words[2];
          *&v56.__r_.__value_.__l.__data_ = v47;
          v46->__r_.__value_.__l.__size_ = 0;
          v46->__r_.__value_.__r.__words[2] = 0;
          v46->__r_.__value_.__r.__words[0] = 0;
          std::to_string(&v53, 1 << a5);
          if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v48 = &v53;
          }

          else
          {
            v48 = v53.__r_.__value_.__r.__words[0];
          }

          if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v53.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v53.__r_.__value_.__l.__size_;
          }

          v50 = std::string::append(&v56, v48, size);
          v51 = *&v50->__r_.__value_.__l.__data_;
          v58 = v50->__r_.__value_.__r.__words[2];
          *__p = v51;
          v50->__r_.__value_.__l.__size_ = 0;
          v50->__r_.__value_.__r.__words[2] = 0;
          v50->__r_.__value_.__r.__words[0] = 0;
          sub_29AA5B750(v43, __p);
          if (SHIBYTE(v58) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v53.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v56.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v55.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v54.__r_.__value_.__l.__data_);
          }

          v12 = 112;
          goto LABEL_53;
        }

        *v37++ = v42;
        ++v39;
        --v38;
      }

      while (v38);
      v35 += v13;
      v36 += v13;
      v34 += 4 * v13;
      if (v35 < v10)
      {
        continue;
      }

      break;
    }

    if ((a3 + 8) != &v60)
    {
      sub_29A36CF34((a3 + 8), v60, v61, (v61 - v60) >> 2);
    }

    v12 = 0;
    *(a3 + 4) = 1.0 / v33;
LABEL_53:
    if (v59[0])
    {
      v59[1] = v59[0];
      operator delete(v59[0]);
    }

    if (v60)
    {
      v61 = v60;
      operator delete(v60);
    }
  }

  return v12;
}

void sub_29AAB4DB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  v35 = *(v33 - 128);
  if (v35)
  {
    *(v33 - 120) = v35;
    operator delete(v35);
  }

  v36 = *(v33 - 104);
  if (v36)
  {
    *(v33 - 96) = v36;
    operator delete(v36);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AAB4E4C(uint64_t *a1, void *a2, uint64_t a3, char a4)
{
  v4 = *a1;
  if (*a1 < 3 || *a1 % 3 != 0)
  {
    v6 = sub_29AABB028();
    std::to_string(&v64, v4);
    v7 = std::string::insert(&v64, 0, "quantizeColorRGB: Incompatible data dimension: componentCount ");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v66 = v7->__r_.__value_.__r.__words[2];
    v65 = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    sub_29AA5B750(v6, &v65);
    if (SHIBYTE(v66) < 0)
    {
      operator delete(v65);
    }

    if ((SHIBYTE(v64.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return 112;
    }

    v9 = v64.__r_.__value_.__r.__words[0];
    goto LABEL_62;
  }

  v14 = a1[4];
  v64.__r_.__value_.__s.__data_[0] = 0;
  sub_29AAB542C(v14, &v14[v4]);
  if (*v16 < 2u)
  {
    v18 = 1 << a4;
    v53 = v18 + -1.0;
    *v15.i32 = 1.0 / v53;
    *(a3 + 4) = 1.0 / v53;
    LODWORD(v65) = 0;
    sub_29A0AB144((a3 + 8), 3uLL, &v65, v15);
    sub_29A0A171C(a2, v4);
    if (v4 < 1)
    {
      return 0;
    }

    v21 = 0;
    v22 = (a1[4] + 2);
    for (i = (*a2 + 4); ; i = (i + 12))
    {
      v19.i8[0] = *(v22 - 2);
      v24 = v19.u32[0];
      v20.i8[0] = *(v22 - 1);
      v25 = v20.u32[0];
      *&v26 = v25 * 0.7152;
      LOBYTE(v26) = *v22;
      v27 = v26;
      v28 = llroundf(v53 * (((v24 * 0.2126) + (v25 * 0.7152)) + (v27 * 0.0722)));
      v29 = vadd_f32(vmul_n_f32(0x3F000000BDEAB368, v24), vmul_n_f32(0xBEE88CE7BEC55326, v25));
      v30 = vmul_n_f32(0x3D3B98C83F000000, v27);
      v20.i32[0] = vadd_f32(v29, v30).u32[0];
      v20.i32[1] = vsub_f32(v29, v30).i32[1];
      v19 = vcvt_s32_f32(vrnda_f32(vmul_n_f32(vadd_f32(v20, 0x3F0000003F000000), v53)));
      if (v28 < 0 || v18 <= v28 || v19.i32[0] < 0 || v18 <= v19.i32[0] || v19.i32[1] < 0 || v18 <= v19.i32[1])
      {
        break;
      }

      v22 += 3;
      i[-1].i32[1] = v28;
      *i = v19;
      v21 += 3;
      if (v21 >= v4)
      {
        return 0;
      }
    }

    v54 = v19;
    v32 = sub_29AABB028();
    std::to_string(&v58, v18);
    v33 = std::string::insert(&v58, 0, "quantizeColorRGB: values out of bound qp1=");
    v34 = *&v33->__r_.__value_.__l.__data_;
    v59.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
    *&v59.__r_.__value_.__l.__data_ = v34;
    v33->__r_.__value_.__l.__size_ = 0;
    v33->__r_.__value_.__r.__words[2] = 0;
    v33->__r_.__value_.__r.__words[0] = 0;
    v35 = std::string::append(&v59, ", y=");
    v36 = *&v35->__r_.__value_.__l.__data_;
    v60.__r_.__value_.__r.__words[2] = v35->__r_.__value_.__r.__words[2];
    *&v60.__r_.__value_.__l.__data_ = v36;
    v35->__r_.__value_.__l.__size_ = 0;
    v35->__r_.__value_.__r.__words[2] = 0;
    v35->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v57, v28);
    if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v37 = &v57;
    }

    else
    {
      v37 = v57.__r_.__value_.__r.__words[0];
    }

    if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v57.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v57.__r_.__value_.__l.__size_;
    }

    v39 = std::string::append(&v60, v37, size);
    v40 = *&v39->__r_.__value_.__l.__data_;
    v61.__r_.__value_.__r.__words[2] = v39->__r_.__value_.__r.__words[2];
    *&v61.__r_.__value_.__l.__data_ = v40;
    v39->__r_.__value_.__l.__size_ = 0;
    v39->__r_.__value_.__r.__words[2] = 0;
    v39->__r_.__value_.__r.__words[0] = 0;
    v41 = std::string::append(&v61, ", u=");
    v42 = *&v41->__r_.__value_.__l.__data_;
    v62.__r_.__value_.__r.__words[2] = v41->__r_.__value_.__r.__words[2];
    *&v62.__r_.__value_.__l.__data_ = v42;
    v41->__r_.__value_.__l.__size_ = 0;
    v41->__r_.__value_.__r.__words[2] = 0;
    v41->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v56, v54.i32[0]);
    if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v43 = &v56;
    }

    else
    {
      v43 = v56.__r_.__value_.__r.__words[0];
    }

    if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v44 = HIBYTE(v56.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v44 = v56.__r_.__value_.__l.__size_;
    }

    v45 = std::string::append(&v62, v43, v44);
    v46 = *&v45->__r_.__value_.__l.__data_;
    v63.__r_.__value_.__r.__words[2] = v45->__r_.__value_.__r.__words[2];
    *&v63.__r_.__value_.__l.__data_ = v46;
    v45->__r_.__value_.__l.__size_ = 0;
    v45->__r_.__value_.__r.__words[2] = 0;
    v45->__r_.__value_.__r.__words[0] = 0;
    v47 = std::string::append(&v63, ", v=");
    v48 = *&v47->__r_.__value_.__l.__data_;
    v64.__r_.__value_.__r.__words[2] = v47->__r_.__value_.__r.__words[2];
    *&v64.__r_.__value_.__l.__data_ = v48;
    v47->__r_.__value_.__l.__size_ = 0;
    v47->__r_.__value_.__r.__words[2] = 0;
    v47->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v55, v54.i32[1]);
    if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v49 = &v55;
    }

    else
    {
      v49 = v55.__r_.__value_.__r.__words[0];
    }

    if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v50 = HIBYTE(v55.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v50 = v55.__r_.__value_.__l.__size_;
    }

    v51 = std::string::append(&v64, v49, v50);
    v52 = *&v51->__r_.__value_.__l.__data_;
    v66 = v51->__r_.__value_.__r.__words[2];
    v65 = v52;
    v51->__r_.__value_.__l.__size_ = 0;
    v51->__r_.__value_.__r.__words[2] = 0;
    v51->__r_.__value_.__r.__words[0] = 0;
    sub_29AA5B750(v32, &v65);
    if (SHIBYTE(v66) < 0)
    {
      operator delete(v65);
    }

    if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v55.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v64.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v63.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v56.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v62.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v61.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v57.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v60.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v59.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
    {
      v9 = v58.__r_.__value_.__r.__words[0];
      goto LABEL_62;
    }
  }

  else
  {
    v17 = sub_29AABB028();
    sub_29A008E78(&v65, "quantizeColorRGB: Input out of range");
    sub_29AA5B750(v17, &v65);
    if (SHIBYTE(v66) < 0)
    {
      v9 = v65;
LABEL_62:
      operator delete(v9);
    }
  }

  return 112;
}

void sub_29AAB5324(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (*(v54 - 89) < 0)
  {
    operator delete(*(v54 - 112));
  }

  if (*(v54 - 121) < 0)
  {
    operator delete(*(v54 - 144));
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (*(v54 - 153) < 0)
  {
    operator delete(*(v54 - 176));
  }

  if (a54 < 0)
  {
    operator delete(a49);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *sub_29AAB542C(unsigned __int8 *result, unsigned __int8 *a2)
{
  v2 = result;
  if (result != a2 && result + 1 != a2)
  {
    v4 = result[1];
    v5 = *result;
    if (v4 >= v5)
    {
      v6 = result + 1;
    }

    else
    {
      ++result;
      v6 = v2;
    }

    v7 = v2 + 2;
    if (v7 != a2)
    {
      if (v4 <= v5)
      {
        LOBYTE(v8) = v5;
      }

      else
      {
        LOBYTE(v8) = v4;
      }

      if (v4 >= v5)
      {
        LOBYTE(v4) = v5;
      }

      while (v7 + 1 != a2)
      {
        v9 = v7[1];
        v10 = *v7;
        if (v9 >= v10)
        {
          if (v10 < v4)
          {
            LOBYTE(v4) = *v7;
            result = v7;
          }

          v12 = v9 >= v8;
          if (v9 > v8)
          {
            LOBYTE(v8) = v7[1];
          }

          if (v12)
          {
            v6 = v7 + 1;
          }
        }

        else
        {
          v4 = *result;
          if (v9 < v4)
          {
            LOBYTE(v4) = v7[1];
            result = v7 + 1;
          }

          v8 = *v6;
          v11 = v10 >= v8;
          if (v10 > v8)
          {
            LOBYTE(v8) = *v7;
          }

          if (v11)
          {
            v6 = v7;
          }
        }

        v7 += 2;
        if (v7 == a2)
        {
          return result;
        }
      }

      if (*v7 < *result)
      {
        return v7;
      }
    }
  }

  return result;
}

uint64_t sub_29AAB5518(uint64_t *a1, uint64_t *a2, _BYTE *a3, int *a4, char a5, double a6)
{
  v8 = *a3;
  if (v8 <= 1)
  {
    if (*a3)
    {
      if (v8 != 1)
      {
        return 112;
      }

      v10 = *a4;

      return sub_29AAB55F0(a1, a2, a3, v10, a5);
    }

    else
    {

      return sub_29AAB3028(a1, a2);
    }
  }

  else
  {
    if (v8 == 2)
    {
      v14 = v6;
      v15 = v7;
      v11 = sub_29AABB028();
      sub_29A008E78(__p, "Weight quantizeUnitary3DVector: incompatible type unsigned int");
      sub_29AA5B750(v11, __p);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }

      return 112;
    }

    if (v8 != 3)
    {
      if (v8 == 4)
      {

        return sub_29AAB5FE0(a1, a2, a3, a4, a5, a6);
      }

      return 112;
    }

    return sub_29AAB5A14(a1, a2, a3, a5);
  }
}

uint64_t sub_29AAB55F0(uint64_t *a1, void *a2, uint64_t a3, int a4, int a5)
{
  v10 = *a1;
  sub_29A0A171C(a2, *a1);
  if (!v10)
  {
    return 0;
  }

  v11 = 112;
  if (a4 >= 1 && v10 >= a4 && !(v10 % a4))
  {
    v12 = a4;
    *v58 = *a1[4];
    sub_29AA7BAE8(&v59, a4, v58);
    *__p = *a1[4];
    sub_29AA7BAE8(v58, a4, __p);
    v13 = 0;
    v14 = v58[0];
    v15 = v59;
    v16 = 4 * a4;
    v17 = a1[4];
    do
    {
      v18 = 0;
      do
      {
        v19 = *(v17 + v18);
        v20 = *&v15[v18];
        if (v20 >= v19)
        {
          v20 = *(v17 + v18);
        }

        *&v15[v18] = v20;
        if (v14[v18 / 4] > v19)
        {
          v19 = v14[v18 / 4];
        }

        v14[v18 / 4] = v19;
        v18 += 4;
      }

      while (v16 != v18);
      v13 += a4;
      v17 += v16;
    }

    while (v13 < v10);
    v21 = v59;
    v22 = *v14 - *v59;
    if (a4 != 1)
    {
      if (a4 <= 2)
      {
        v23 = 2;
      }

      else
      {
        v23 = a4;
      }

      v24 = v14 + 1;
      v25 = (v59 + 4);
      v26 = v23 - 1;
      do
      {
        v27 = *v24++;
        v28 = v27;
        v29 = *v25++;
        v30 = v28 - v29;
        if (v30 >= v22)
        {
          v22 = v30;
        }

        --v26;
      }

      while (v26);
    }

    v31 = 1 << a5;
    if (a5)
    {
      if (v22 < 2.2204e-16)
      {
        v22 = 1.0;
      }

      v32 = (v31 + -1.0) / v22;
    }

    else
    {
      v32 = 1.0;
    }

    v33 = 0;
    v34 = 0;
    v35 = a1[4];
    while (2)
    {
      v36 = (*a2 + v33);
      v37 = v12;
      v38 = v21;
      v39 = v35;
      do
      {
        v40 = *v39++;
        v41 = llroundf(v32 * (v40 - *v38));
        if (v41 < 0 || v31 <= v41)
        {
          v42 = sub_29AABB028();
          std::to_string(&v53, v41);
          v43 = std::string::insert(&v53, 0, "Uniform quantization: values out of bound; qvalue=");
          v44 = *&v43->__r_.__value_.__l.__data_;
          v54.__r_.__value_.__r.__words[2] = v43->__r_.__value_.__r.__words[2];
          *&v54.__r_.__value_.__l.__data_ = v44;
          v43->__r_.__value_.__l.__size_ = 0;
          v43->__r_.__value_.__r.__words[2] = 0;
          v43->__r_.__value_.__r.__words[0] = 0;
          v45 = std::string::append(&v54, " and qp1=");
          v46 = *&v45->__r_.__value_.__l.__data_;
          v55.__r_.__value_.__r.__words[2] = v45->__r_.__value_.__r.__words[2];
          *&v55.__r_.__value_.__l.__data_ = v46;
          v45->__r_.__value_.__l.__size_ = 0;
          v45->__r_.__value_.__r.__words[2] = 0;
          v45->__r_.__value_.__r.__words[0] = 0;
          std::to_string(&v52, 1 << a5);
          if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v47 = &v52;
          }

          else
          {
            v47 = v52.__r_.__value_.__r.__words[0];
          }

          if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v52.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v52.__r_.__value_.__l.__size_;
          }

          v49 = std::string::append(&v55, v47, size);
          v50 = *&v49->__r_.__value_.__l.__data_;
          v57 = v49->__r_.__value_.__r.__words[2];
          *__p = v50;
          v49->__r_.__value_.__l.__size_ = 0;
          v49->__r_.__value_.__r.__words[2] = 0;
          v49->__r_.__value_.__r.__words[0] = 0;
          sub_29AA5B750(v42, __p);
          if (SHIBYTE(v57) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v52.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v55.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v54.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v53.__r_.__value_.__l.__data_);
          }

          v11 = 112;
          goto LABEL_53;
        }

        *v36++ = v41;
        ++v38;
        --v37;
      }

      while (v37);
      v34 += v12;
      v35 = (v35 + v16);
      v33 += v16;
      if (v34 < v10)
      {
        continue;
      }

      break;
    }

    if ((a3 + 8) != &v59)
    {
      sub_29A36CF34((a3 + 8), v59, v60, (v60 - v59) >> 2);
    }

    v11 = 0;
    *(a3 + 4) = 1.0 / v32;
LABEL_53:
    if (v58[0])
    {
      v58[1] = v58[0];
      operator delete(v58[0]);
    }

    if (v59)
    {
      v60 = v59;
      operator delete(v59);
    }
  }

  return v11;
}

void sub_29AAB5978(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  v35 = *(v33 - 128);
  if (v35)
  {
    *(v33 - 120) = v35;
    operator delete(v35);
  }

  v36 = *(v33 - 104);
  if (v36)
  {
    *(v33 - 96) = v36;
    operator delete(v36);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AAB5A14(uint64_t *a1, void *a2, uint64_t a3, char a4)
{
  v4 = *a1;
  if (*a1 < 3 || *a1 % 3 != 0)
  {
    v6 = sub_29AABB028();
    std::to_string(&v62, v4);
    v7 = std::string::insert(&v62, 0, "quantizeColorRGB: Incompatible data dimension: componentCount ");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v64 = v7->__r_.__value_.__r.__words[2];
    v63 = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    sub_29AA5B750(v6, &v63);
    if (SHIBYTE(v64) < 0)
    {
      operator delete(v63);
    }

    if ((SHIBYTE(v62.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return 112;
    }

    v9 = v62.__r_.__value_.__r.__words[0];
    goto LABEL_62;
  }

  v14 = a1[4];
  v62.__r_.__value_.__s.__data_[0] = 0;
  sub_29AAB6158(v14, &v14[v4]);
  if (*v16 < 2u)
  {
    v18 = 1 << a4;
    v51 = v18 + -1.0;
    *v15.i32 = 1.0 / v51;
    *(a3 + 4) = 1.0 / v51;
    LODWORD(v63) = 0;
    sub_29A0AB144((a3 + 8), 3uLL, &v63, v15);
    sub_29A0A171C(a2, v4);
    if (v4 < 1)
    {
      return 0;
    }

    v19 = 0;
    v20 = (a1[4] + 8);
    for (i = (*a2 + 4); ; i = (i + 12))
    {
      v22 = vcvt_f32_u32(*(v20 - 2));
      v23 = *v20;
      v24 = llroundf(v51 * (vaddv_f32(vmul_f32(v22, 0x3F3717593E59B3D0)) + (v23 * 0.0722)));
      v25 = vadd_f32(vmul_n_f32(0x3F000000BDEAB368, v22.f32[0]), vmul_lane_f32(0xBEE88CE7BEC55326, v22, 1));
      v26 = vmul_n_f32(0x3D3B98C83F000000, v23);
      v27.i32[0] = vadd_f32(v25, v26).u32[0];
      v27.i32[1] = vsub_f32(v25, v26).i32[1];
      v28 = vcvt_s32_f32(vrnda_f32(vmul_n_f32(vadd_f32(v27, 0x3F0000003F000000), v51)));
      if (v24 < 0 || v18 <= v24 || v28.i32[0] < 0 || v18 <= v28.i32[0] || v28.i32[1] < 0 || v18 <= v28.i32[1])
      {
        break;
      }

      v20 += 3;
      i[-1].i32[1] = v24;
      *i = v28;
      v19 += 3;
      if (v19 >= v4)
      {
        return 0;
      }
    }

    v52 = v28;
    v30 = sub_29AABB028();
    std::to_string(&v56, v18);
    v31 = std::string::insert(&v56, 0, "quantizeColorRGB: values out of bound qp1=");
    v32 = *&v31->__r_.__value_.__l.__data_;
    v57.__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
    *&v57.__r_.__value_.__l.__data_ = v32;
    v31->__r_.__value_.__l.__size_ = 0;
    v31->__r_.__value_.__r.__words[2] = 0;
    v31->__r_.__value_.__r.__words[0] = 0;
    v33 = std::string::append(&v57, ", y=");
    v34 = *&v33->__r_.__value_.__l.__data_;
    v58.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
    *&v58.__r_.__value_.__l.__data_ = v34;
    v33->__r_.__value_.__l.__size_ = 0;
    v33->__r_.__value_.__r.__words[2] = 0;
    v33->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v55, v24);
    if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v35 = &v55;
    }

    else
    {
      v35 = v55.__r_.__value_.__r.__words[0];
    }

    if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v55.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v55.__r_.__value_.__l.__size_;
    }

    v37 = std::string::append(&v58, v35, size);
    v38 = *&v37->__r_.__value_.__l.__data_;
    v59.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
    *&v59.__r_.__value_.__l.__data_ = v38;
    v37->__r_.__value_.__l.__size_ = 0;
    v37->__r_.__value_.__r.__words[2] = 0;
    v37->__r_.__value_.__r.__words[0] = 0;
    v39 = std::string::append(&v59, ", u=");
    v40 = *&v39->__r_.__value_.__l.__data_;
    v60.__r_.__value_.__r.__words[2] = v39->__r_.__value_.__r.__words[2];
    *&v60.__r_.__value_.__l.__data_ = v40;
    v39->__r_.__value_.__l.__size_ = 0;
    v39->__r_.__value_.__r.__words[2] = 0;
    v39->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v54, v52.i32[0]);
    if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v41 = &v54;
    }

    else
    {
      v41 = v54.__r_.__value_.__r.__words[0];
    }

    if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v42 = HIBYTE(v54.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v42 = v54.__r_.__value_.__l.__size_;
    }

    v43 = std::string::append(&v60, v41, v42);
    v44 = *&v43->__r_.__value_.__l.__data_;
    v61.__r_.__value_.__r.__words[2] = v43->__r_.__value_.__r.__words[2];
    *&v61.__r_.__value_.__l.__data_ = v44;
    v43->__r_.__value_.__l.__size_ = 0;
    v43->__r_.__value_.__r.__words[2] = 0;
    v43->__r_.__value_.__r.__words[0] = 0;
    v45 = std::string::append(&v61, ", v=");
    v46 = *&v45->__r_.__value_.__l.__data_;
    v62.__r_.__value_.__r.__words[2] = v45->__r_.__value_.__r.__words[2];
    *&v62.__r_.__value_.__l.__data_ = v46;
    v45->__r_.__value_.__l.__size_ = 0;
    v45->__r_.__value_.__r.__words[2] = 0;
    v45->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v53, v52.i32[1]);
    if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v47 = &v53;
    }

    else
    {
      v47 = v53.__r_.__value_.__r.__words[0];
    }

    if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v48 = HIBYTE(v53.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v48 = v53.__r_.__value_.__l.__size_;
    }

    v49 = std::string::append(&v62, v47, v48);
    v50 = *&v49->__r_.__value_.__l.__data_;
    v64 = v49->__r_.__value_.__r.__words[2];
    v63 = v50;
    v49->__r_.__value_.__l.__size_ = 0;
    v49->__r_.__value_.__r.__words[2] = 0;
    v49->__r_.__value_.__r.__words[0] = 0;
    sub_29AA5B750(v30, &v63);
    if (SHIBYTE(v64) < 0)
    {
      operator delete(v63);
    }

    if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v53.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v62.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v61.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v54.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v60.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v59.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v55.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v58.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v57.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
    {
      v9 = v56.__r_.__value_.__r.__words[0];
      goto LABEL_62;
    }
  }

  else
  {
    v17 = sub_29AABB028();
    sub_29A008E78(&v63, "quantizeColorRGB: Input out of range");
    sub_29AA5B750(v17, &v63);
    if (SHIBYTE(v64) < 0)
    {
      v9 = v63;
LABEL_62:
      operator delete(v9);
    }
  }

  return 112;
}

void sub_29AAB5ED8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (*(v54 - 89) < 0)
  {
    operator delete(*(v54 - 112));
  }

  if (*(v54 - 121) < 0)
  {
    operator delete(*(v54 - 144));
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (*(v54 - 153) < 0)
  {
    operator delete(*(v54 - 176));
  }

  if (a54 < 0)
  {
    operator delete(a49);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AAB5FE0(uint64_t a1, uint64_t *a2, uint64_t a3, _DWORD *a4, char a5, double a6)
{
  v7 = *a4;
  if (v7 < 2)
  {
    return 112;
  }

  v10 = *a1;
  result = 112;
  if (v7 <= v10 && !(v10 % v7))
  {
    v12 = (v7 - 1);
    v13 = v10 / v7;
    v14 = (1 << a5) + -1.0;
    *&a6 = 1.0 / v14;
    *(a3 + 4) = 1.0 / v14;
    LODWORD(__p[0]) = 0;
    sub_29A0AB144((a3 + 8), v7, __p, *&a6);
    sub_29A0A171C(a2, v13 * v12);
    LODWORD(v15) = 0;
    v16 = 0;
    v17 = *(a1 + 32);
    v18 = *a2;
    while (1)
    {
      v15 = v15;
      v19 = 0.0;
      v20 = v12;
      v21 = (v17 + 4 * v16);
      do
      {
        v22 = *v21++;
        v19 = v19 + v22;
        *(v18 + 4 * v15++) = llroundf(v14 * v22);
        --v20;
      }

      while (v20);
      if (vabds_f32(1.0, v19 + *(v17 + 4 * (v16 + v12))) > 0.00001)
      {
        break;
      }

      v16 += *a4;
      if (v16 >= v10)
      {
        result = 0;
        --*a4;
        return result;
      }
    }

    v23 = sub_29AABB028();
    sub_29A008E78(__p, "Weight quantization: sum too far from 1.0");
    sub_29AA5B750(v23, __p);
    if (v25 < 0)
    {
      operator delete(__p[0]);
    }

    return 112;
  }

  return result;
}

unsigned int *sub_29AAB6158(unsigned int *result, unsigned int *a2)
{
  v2 = result;
  if (result != a2 && result + 1 != a2)
  {
    v5 = *result;
    v4 = result[1];
    if (v4 < *result)
    {
      ++result;
    }

    v6 = v4 >= v5 ? v2 + 1 : v2;
    v7 = v2 + 2;
    if (v7 != a2)
    {
      if (v4 <= v5)
      {
        v8 = v5;
      }

      else
      {
        v8 = v4;
      }

      if (v4 >= v5)
      {
        v4 = v5;
      }

      while (v7 + 1 != a2)
      {
        v10 = *v7;
        v9 = v7[1];
        if (v9 >= *v7)
        {
          if (v10 < v4)
          {
            v4 = *v7;
            result = v7;
          }

          v11 = v9 >= v8;
          if (v9 > v8)
          {
            v8 = v7[1];
          }

          if (v11)
          {
            v6 = v7 + 1;
          }
        }

        else
        {
          v4 = *result;
          if (v9 < *result)
          {
            v4 = v7[1];
            result = v7 + 1;
          }

          v8 = *v6;
          if (v10 > *v6)
          {
            v8 = *v7;
          }

          if (v10 >= *v6)
          {
            v6 = v7;
          }
        }

        v7 += 2;
        if (v7 == a2)
        {
          return result;
        }
      }

      if (*v7 < *result)
      {
        return v7;
      }
    }
  }

  return result;
}

uint64_t sub_29AAB6234(unint64_t *a1, int32x2_t **a2, _BYTE *a3, int *a4, char a5, double a6)
{
  v6 = *a3;
  if (v6 <= 1)
  {
    if (!*a3)
    {
      return sub_29AAB6290(a1, a2);
    }

    if (v6 == 1)
    {
      return sub_29AAB62F4(a1, a2, a3, *a4, a5);
    }
  }

  else
  {
    switch(v6)
    {
      case 2u:
        return sub_29AAB672C(a1, a2, a4, a5);
      case 3u:
        return sub_29AAB6838(a1, a2, a3, a5);
      case 4u:
        return sub_29AAB6E5C(a1, a2, a3, a4, a5, a6);
    }
  }

  return 112;
}

uint64_t sub_29AAB6290(unint64_t *a1, void *a2)
{
  sub_29A0A171C(a2, *a1);
  v4 = *a1;
  if (*a1)
  {
    v5 = a1[4];
    v6 = *a2;
    do
    {
      v7 = *v5++;
      *v6++ = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v7];
      --v4;
    }

    while (v4);
  }

  return 0;
}

uint64_t sub_29AAB62F4(uint64_t *a1, void *a2, uint64_t a3, int a4, int a5)
{
  v10 = *a1;
  sub_29A0A171C(a2, *a1);
  if (!v10)
  {
    return 0;
  }

  v11 = 112;
  if (a4 >= 1 && v10 >= a4 && !(v10 % a4))
  {
    v12 = a4;
    *v58 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*a1[4]];
    sub_29AA7BAE8(&v59, a4, v58);
    *__p = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*a1[4]];
    sub_29AA7BAE8(v58, a4, __p);
    v13 = 0;
    v14 = v58[0];
    v15 = v59;
    v16 = 2 * a4;
    v17 = a1[4];
    do
    {
      v18 = 0;
      do
      {
        v19 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*(v17 + 2 * v18)];
        v20 = *&v15[4 * v18];
        if (v20 >= v19)
        {
          v20 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*(v17 + 2 * v18)];
        }

        *&v15[4 * v18] = v20;
        if (v19 < v14[v18])
        {
          v19 = v14[v18];
        }

        v14[v18++] = v19;
      }

      while (a4 != v18);
      v13 += a4;
      v17 += v16;
    }

    while (v13 < v10);
    v21 = v59;
    v22 = *v14 - *v59;
    if (a4 != 1)
    {
      if (a4 <= 2)
      {
        v23 = 2;
      }

      else
      {
        v23 = a4;
      }

      v24 = v14 + 1;
      v25 = (v59 + 4);
      v26 = v23 - 1;
      do
      {
        v27 = *v24++;
        v28 = v27;
        v29 = *v25++;
        v30 = v28 - v29;
        if (v30 >= v22)
        {
          v22 = v30;
        }

        --v26;
      }

      while (v26);
    }

    v31 = 1 << a5;
    if (a5)
    {
      if (v22 < 2.2204e-16)
      {
        v22 = 1.0;
      }

      v32 = (v31 + -1.0) / v22;
    }

    else
    {
      v32 = 1.0;
    }

    v33 = 0;
    v34 = 0;
    v35 = a1[4];
    while (2)
    {
      v36 = (*a2 + v33);
      v37 = v12;
      v38 = v21;
      v39 = v35;
      do
      {
        v40 = *v39++;
        v41 = llroundf(v32 * (pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v40] - *v38));
        if (v41 < 0 || v31 <= v41)
        {
          v42 = sub_29AABB028();
          std::to_string(&v53, v41);
          v43 = std::string::insert(&v53, 0, "Uniform quantization: values out of bound; qvalue=");
          v44 = *&v43->__r_.__value_.__l.__data_;
          v54.__r_.__value_.__r.__words[2] = v43->__r_.__value_.__r.__words[2];
          *&v54.__r_.__value_.__l.__data_ = v44;
          v43->__r_.__value_.__l.__size_ = 0;
          v43->__r_.__value_.__r.__words[2] = 0;
          v43->__r_.__value_.__r.__words[0] = 0;
          v45 = std::string::append(&v54, " and qp1=");
          v46 = *&v45->__r_.__value_.__l.__data_;
          v55.__r_.__value_.__r.__words[2] = v45->__r_.__value_.__r.__words[2];
          *&v55.__r_.__value_.__l.__data_ = v46;
          v45->__r_.__value_.__l.__size_ = 0;
          v45->__r_.__value_.__r.__words[2] = 0;
          v45->__r_.__value_.__r.__words[0] = 0;
          std::to_string(&v52, 1 << a5);
          if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v47 = &v52;
          }

          else
          {
            v47 = v52.__r_.__value_.__r.__words[0];
          }

          if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v52.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v52.__r_.__value_.__l.__size_;
          }

          v49 = std::string::append(&v55, v47, size);
          v50 = *&v49->__r_.__value_.__l.__data_;
          v57 = v49->__r_.__value_.__r.__words[2];
          *__p = v50;
          v49->__r_.__value_.__l.__size_ = 0;
          v49->__r_.__value_.__r.__words[2] = 0;
          v49->__r_.__value_.__r.__words[0] = 0;
          sub_29AA5B750(v42, __p);
          if (SHIBYTE(v57) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v52.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v55.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v54.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v53.__r_.__value_.__l.__data_);
          }

          v11 = 112;
          goto LABEL_53;
        }

        *v36++ = v41;
        ++v38;
        --v37;
      }

      while (v37);
      v34 += v12;
      v35 = (v35 + v16);
      v33 += 4 * v12;
      if (v34 < v10)
      {
        continue;
      }

      break;
    }

    if ((a3 + 8) != &v59)
    {
      sub_29A36CF34((a3 + 8), v59, v60, (v60 - v59) >> 2);
    }

    v11 = 0;
    *(a3 + 4) = 1.0 / v32;
LABEL_53:
    if (v58[0])
    {
      v58[1] = v58[0];
      operator delete(v58[0]);
    }

    if (v59)
    {
      v60 = v59;
      operator delete(v59);
    }
  }

  return v11;
}

void sub_29AAB6690(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40)
{
  if (__p)
  {
    operator delete(__p);
  }

  v42 = *(v40 - 120);
  if (v42)
  {
    *(v40 - 112) = v42;
    operator delete(v42);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AAB672C(unint64_t *a1, void *a2, _DWORD *a3, int a4)
{
  v4 = *a1;
  if (!*a1)
  {
    return 112;
  }

  v5 = a4;
  result = 112;
  if (a4 >= 3 && !(v4 % 3) && *a3 == 3)
  {
    sub_29A0A171C(a2, 2 * (v4 / 3));
    if (v4 >= 1)
    {
      v11 = 0;
      v12 = 0;
      v13 = -1 << (v5 - 1);
      do
      {
        sub_29AA7CA5C((*a2 + v11), (*a2 + v11 + 4), ~v13, pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*(a1[4] + 2 * v12)], pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*(a1[4] + 2 * v12 + 2)], pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*(a1[4] + 2 * v12 + 4)]);
        v12 += 3;
        v11 += 8;
      }

      while (v12 < v4);
    }

    result = 0;
    --*a3;
  }

  return result;
}

uint64_t sub_29AAB6838(uint64_t *a1, int32x2_t **a2, uint64_t a3, char a4)
{
  v4 = *a1;
  if (*a1 < 3 || *a1 % 3 != 0)
  {
    v6 = sub_29AABB028();
    std::to_string(&v64, v4);
    v7 = std::string::insert(&v64, 0, "quantizeColorRGB: Incompatible data dimension: componentCount ");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v66 = v7->__r_.__value_.__r.__words[2];
    v65 = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    sub_29AA5B750(v6, &v65);
    if (SHIBYTE(v66) < 0)
    {
      operator delete(v65);
    }

    if ((SHIBYTE(v64.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return 112;
    }

    v9 = v64.__r_.__value_.__r.__words[0];
    goto LABEL_13;
  }

  v14 = a1[4];
  v64.__r_.__value_.__s.__data_[0] = 0;
  if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*sub_29AAB6FDC(v14, &v14[v4])] >= 0.0 && pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*v15] <= 1.0)
  {
    v19 = 1 << a4;
    v53 = v19 + -1.0;
    *v16.i32 = 1.0 / v53;
    *(a3 + 4) = 1.0 / v53;
    LODWORD(v65) = 0;
    sub_29A0AB144((a3 + 8), 3uLL, &v65, v16);
    sub_29A0A171C(a2, v4);
    if (v4 < 1)
    {
      return 0;
    }

    v20 = 0;
    v21 = (a1[4] + 2);
    for (i = *a2 + 1; ; i = (i + 12))
    {
      v23.f32[0] = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*(v21 - 1)];
      v24 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*v21];
      v25.f32[0] = v24 * 0.7152;
      v26 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v21[1]];
      v27 = v23.f32[0] * 0.5;
      v23.f32[1] = v26;
      v25.f32[1] = (v23.f32[0] * -0.1146) + (v24 * -0.3854);
      v28 = vadd_f32(vmul_f32(v23, 0x3F0000003E59B3D0), v25);
      v25.i32[1] = 1056964608;
      v25.f32[0] = v26 * 0.0722;
      v29 = vcvt_s32_f32(vrnda_f32(vmul_n_f32(vadd_f32(v28, v25), v53)));
      v30 = llroundf(v53 * (((v27 + (v24 * -0.4542)) + (v26 * -0.0458)) + 0.5));
      v31 = v29.i32[0];
      if (v29.i32[0] < 0 || v19 <= v29.i32[0] || v29.i32[1] < 0 || v19 <= v29.i32[1] || v30 < 0 || v19 <= v30)
      {
        break;
      }

      result = 0;
      v21 += 3;
      i[-1] = v29;
      i->i32[0] = v30;
      v20 += 3;
      if (v20 >= v4)
      {
        return result;
      }
    }

    v54 = v29.i32[1];
    v32 = sub_29AABB028();
    std::to_string(&v58, v19);
    v33 = std::string::insert(&v58, 0, "quantizeColorRGB: values out of bound qp1=");
    v34 = *&v33->__r_.__value_.__l.__data_;
    v59.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
    *&v59.__r_.__value_.__l.__data_ = v34;
    v33->__r_.__value_.__l.__size_ = 0;
    v33->__r_.__value_.__r.__words[2] = 0;
    v33->__r_.__value_.__r.__words[0] = 0;
    v35 = std::string::append(&v59, ", y=");
    v36 = *&v35->__r_.__value_.__l.__data_;
    v60.__r_.__value_.__r.__words[2] = v35->__r_.__value_.__r.__words[2];
    *&v60.__r_.__value_.__l.__data_ = v36;
    v35->__r_.__value_.__l.__size_ = 0;
    v35->__r_.__value_.__r.__words[2] = 0;
    v35->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v57, v31);
    if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v37 = &v57;
    }

    else
    {
      v37 = v57.__r_.__value_.__r.__words[0];
    }

    if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v57.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v57.__r_.__value_.__l.__size_;
    }

    v39 = std::string::append(&v60, v37, size);
    v40 = *&v39->__r_.__value_.__l.__data_;
    v61.__r_.__value_.__r.__words[2] = v39->__r_.__value_.__r.__words[2];
    *&v61.__r_.__value_.__l.__data_ = v40;
    v39->__r_.__value_.__l.__size_ = 0;
    v39->__r_.__value_.__r.__words[2] = 0;
    v39->__r_.__value_.__r.__words[0] = 0;
    v41 = std::string::append(&v61, ", u=");
    v42 = *&v41->__r_.__value_.__l.__data_;
    v62.__r_.__value_.__r.__words[2] = v41->__r_.__value_.__r.__words[2];
    *&v62.__r_.__value_.__l.__data_ = v42;
    v41->__r_.__value_.__l.__size_ = 0;
    v41->__r_.__value_.__r.__words[2] = 0;
    v41->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v56, v54);
    if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v43 = &v56;
    }

    else
    {
      v43 = v56.__r_.__value_.__r.__words[0];
    }

    if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v44 = HIBYTE(v56.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v44 = v56.__r_.__value_.__l.__size_;
    }

    v45 = std::string::append(&v62, v43, v44);
    v46 = *&v45->__r_.__value_.__l.__data_;
    v63.__r_.__value_.__r.__words[2] = v45->__r_.__value_.__r.__words[2];
    *&v63.__r_.__value_.__l.__data_ = v46;
    v45->__r_.__value_.__l.__size_ = 0;
    v45->__r_.__value_.__r.__words[2] = 0;
    v45->__r_.__value_.__r.__words[0] = 0;
    v47 = std::string::append(&v63, ", v=");
    v48 = *&v47->__r_.__value_.__l.__data_;
    v64.__r_.__value_.__r.__words[2] = v47->__r_.__value_.__r.__words[2];
    *&v64.__r_.__value_.__l.__data_ = v48;
    v47->__r_.__value_.__l.__size_ = 0;
    v47->__r_.__value_.__r.__words[2] = 0;
    v47->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v55, v30);
    if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v49 = &v55;
    }

    else
    {
      v49 = v55.__r_.__value_.__r.__words[0];
    }

    if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v50 = HIBYTE(v55.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v50 = v55.__r_.__value_.__l.__size_;
    }

    v51 = std::string::append(&v64, v49, v50);
    v52 = *&v51->__r_.__value_.__l.__data_;
    v66 = v51->__r_.__value_.__r.__words[2];
    v65 = v52;
    v51->__r_.__value_.__l.__size_ = 0;
    v51->__r_.__value_.__r.__words[2] = 0;
    v51->__r_.__value_.__r.__words[0] = 0;
    sub_29AA5B750(v32, &v65);
    if (SHIBYTE(v66) < 0)
    {
      operator delete(v65);
    }

    if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v55.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v64.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v63.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v56.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v62.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v61.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v57.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v60.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v59.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
    {
      v9 = v58.__r_.__value_.__r.__words[0];
      goto LABEL_13;
    }
  }

  else
  {
    v17 = sub_29AABB028();
    sub_29A008E78(&v65, "quantizeColorRGB: Input out of range");
    sub_29AA5B750(v17, &v65);
    if (SHIBYTE(v66) < 0)
    {
      v9 = v65;
LABEL_13:
      operator delete(v9);
    }
  }

  return 112;
}

void sub_29AAB6D54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (*(v54 - 105) < 0)
  {
    operator delete(*(v54 - 128));
  }

  if (*(v54 - 137) < 0)
  {
    operator delete(*(v54 - 160));
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (*(v54 - 169) < 0)
  {
    operator delete(*(v54 - 192));
  }

  if (a54 < 0)
  {
    operator delete(a49);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AAB6E5C(uint64_t a1, uint64_t *a2, uint64_t a3, _DWORD *a4, char a5, double a6)
{
  v7 = *a4;
  if (v7 < 2)
  {
    return 112;
  }

  v10 = *a1;
  result = 112;
  if (v7 <= v10 && !(v10 % v7))
  {
    v12 = (v7 - 1);
    v13 = v10 / v7;
    v14 = (1 << a5) + -1.0;
    *&a6 = 1.0 / v14;
    *(a3 + 4) = 1.0 / v14;
    LODWORD(__p[0]) = 0;
    sub_29A0AB144((a3 + 8), v7, __p, *&a6);
    sub_29A0A171C(a2, v13 * v12);
    LODWORD(v15) = 0;
    v16 = 0;
    v17 = *(a1 + 32);
    v18 = *a2;
    while (1)
    {
      v15 = v15;
      v19 = 0.0;
      v20 = v12;
      v21 = (v17 + 2 * v16);
      do
      {
        v22 = *v21++;
        v23 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v22];
        v19 = v19 + v23;
        *(v18 + 4 * v15++) = llroundf(v14 * v23);
        --v20;
      }

      while (v20);
      if (vabds_f32(1.0, v19 + pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*(v17 + 2 * (v16 + v12))]) > 0.00001)
      {
        break;
      }

      v16 += *a4;
      if (v16 >= v10)
      {
        result = 0;
        --*a4;
        return result;
      }
    }

    v24 = sub_29AABB028();
    sub_29A008E78(__p, "Weight quantization: sum too far from 1.0");
    sub_29AA5B750(v24, __p);
    if (v26 < 0)
    {
      operator delete(__p[0]);
    }

    return 112;
  }

  return result;
}

unsigned __int16 *sub_29AAB6FDC(unsigned __int16 *result, unsigned __int16 *a2)
{
  v2 = result;
  if (result != a2 && result + 1 != a2)
  {
    v4 = result[1];
    v5 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v4];
    v6 = *result;
    v7 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v6];
    if (v5 >= v7)
    {
      v8 = result + 1;
    }

    else
    {
      ++result;
      v8 = v2;
    }

    v9 = v2 + 2;
    if (v9 != a2)
    {
      if (v5 >= v7)
      {
        LOWORD(v4) = v6;
      }

      while (v9 + 1 != a2)
      {
        v10 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v9[1]];
        v11 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*v9];
        if (v10 >= v11)
        {
          if (v11 < pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v4])
          {
            LOWORD(v4) = *v9;
            result = v9;
          }

          if (v10 >= pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*v8])
          {
            v8 = v9 + 1;
          }
        }

        else
        {
          v4 = *result;
          if (v10 < pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v4])
          {
            LOWORD(v4) = v9[1];
            result = v9 + 1;
          }

          if (v11 >= pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*v8])
          {
            v8 = v9;
          }
        }

        v9 += 2;
        if (v9 == a2)
        {
          return result;
        }
      }

      if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*v9] < pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*result])
      {
        return v9;
      }
    }
  }

  return result;
}

uint64_t sub_29AAB70F0(uint64_t a1, const void **a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  v4 = a1 + 8;
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      sub_29AAA03B4(a1, v4, a2, a2);
      a2 += 4;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

std::string::size_type *sub_29AAB7170(std::string *__str, std::string *this)
{
  std::string::operator=(this, __str);
  std::string::operator=(this + 1, (__str + 112));
  sub_29AA600AC(__str[5].__r_.__value_.__s.__data_[16], &v7);
  if ((v7 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((v7 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v4);
  }

  std::string::operator=(this + 2, EmptyString);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  LODWORD(this[3].__r_.__value_.__l.__data_) = __str[6].__r_.__value_.__l.__data_;
  this[3].__r_.__value_.__s.__data_[4] = __str[6].__r_.__value_.__s.__data_[4];
  sub_29A008E78(&v7, off_29F295D30[__str[3].__r_.__value_.__s.__data_[0]]);
  if (this[4].__r_.__value_.__s.__data_[7] < 0)
  {
    operator delete(this[3].__r_.__value_.__l.__size_);
  }

  *&this[3].__r_.__value_.__r.__words[1] = v7;
  this[4].__r_.__value_.__r.__words[0] = v8;
  LODWORD(this[4].__r_.__value_.__r.__words[1]) = HIDWORD(__str[3].__r_.__value_.__r.__words[0]);
  result = &this[4].__r_.__value_.__r.__words[2];
  if (&this[4].__r_.__value_.__r.__words[2] != &__str[3].__r_.__value_.__r.__words[1])
  {
    result = sub_29A36CF34(result, __str[3].__r_.__value_.__l.__size_, __str[3].__r_.__value_.__r.__words[2], (__str[3].__r_.__value_.__r.__words[2] - __str[3].__r_.__value_.__l.__size_) >> 2);
  }

  this[5].__r_.__value_.__s.__data_[16] = __str[6].__r_.__value_.__s.__data_[5];
  return result;
}

void *sub_29AAB7290()
{
  v33[3] = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1747A98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1747A98))
  {
    v2[0] = 0;
    sub_29A008E78(v3, "nm");
    v4 = 2;
    sub_29A008E78(v5, "fg2ss");
    v6 = 1;
    sub_29A008E78(v7, "ssn");
    v8 = 3;
    sub_29A008E78(v9, "fn");
    v10 = 4;
    sub_29A008E78(v11, "sc");
    v12 = 5;
    sub_29A008E78(v13, "sh");
    v14 = 6;
    sub_29A008E78(v15, "attr");
    v16 = 7;
    sub_29A008E78(v17, "nm");
    v18 = 8;
    sub_29A008E78(v19, "tp");
    v20 = 9;
    sub_29A008E78(v21, "int");
    v22 = 10;
    sub_29A008E78(v23, "usdCPV");
    v24 = 11;
    sub_29A008E78(v25, "isPV");
    v26 = 12;
    sub_29A008E78(v27, "fn");
    v28 = 13;
    sub_29A008E78(v29, "sc");
    v30 = 14;
    sub_29A008E78(v31, "sh");
    v32 = 15;
    sub_29A008E78(v33, "hasI");
    sub_29AABA918(&unk_2A1747A80, v2, 16);
    v1 = 128;
    do
    {
      if (SHIBYTE(v2[v1 - 1]) < 0)
      {
        operator delete(*&v2[v1 - 6]);
      }

      v1 -= 8;
    }

    while (v1 * 4);
    __cxa_guard_release(&qword_2A1747A98);
  }

  return &unk_2A1747A80;
}

void sub_29AAB7538(_Unwind_Exception *a1)
{
  v3 = v1 + 488;
  v4 = -512;
  while (1)
  {
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    v3 -= 32;
    v4 += 32;
    if (!v4)
    {
      __cxa_guard_abort(&qword_2A1747A98);
      _Unwind_Resume(a1);
    }
  }
}

uint64_t sub_29AAB75DC(uint64_t a1, unsigned __int8 *a2, char *a3)
{
  pxrInternal__aapl__pxrReserved__::JsParseString(a2, 0, a3, &v15);
  if (pxrInternal__aapl__pxrReserved__::JsValue::IsNull(&v15))
  {
    v4 = sub_29AABB028();
    std::operator+<char>();
    sub_29AA5B750(v4, __p);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    v5 = 300;
  }

  else
  {
    JsObject = pxrInternal__aapl__pxrReserved__::JsValue::GetJsObject(&v15);
    sub_29A1519B8(__p, JsObject);
    pxrInternal__aapl__pxrReserved__::JsValue::JsValue(&v10, __p);
    v7 = sub_29AAB7754(a1, &v10);
    if (v11)
    {
      sub_29A014BEC(v11);
    }

    if (v7)
    {
      v8 = sub_29AABB028();
      std::operator+<char>();
      sub_29AA5B750(v8, &v10);
      if (v12 < 0)
      {
        operator delete(v10);
      }

      v5 = 301;
    }

    else
    {
      v5 = 0;
    }

    sub_29A09932C(__p, __p[1]);
  }

  if (v16)
  {
    sub_29A014BEC(v16);
  }

  return v5;
}

void sub_29AAB7704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, void *a13)
{
  sub_29A09932C(&a12, a13);
  v15 = *(v13 - 24);
  if (v15)
  {
    sub_29A014BEC(v15);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29AAB7754(uint64_t a1, unint64_t **this)
{
  if (pxrInternal__aapl__pxrReserved__::JsValue::IsObject(this))
  {
    JsObject = pxrInternal__aapl__pxrReserved__::JsValue::GetJsObject(this);
    sub_29A1519B8(&v112, JsObject);
    sub_29AAB7290();
    LODWORD(v101.__r_.__value_.__l.__data_) = 0;
    v5 = sub_29AAB97FC(&unk_2A1747A80, &v101);
    if (v113 == sub_29A01BCCC(&v112, v5))
    {
      v37 = sub_29AABB028();
      sub_29AAB7290();
      LODWORD(__p[0]) = 0;
      sub_29AAB97FC(&unk_2A1747A80, __p);
      std::operator+<char>();
    }

    else
    {
      sub_29AAB7290();
      LODWORD(v101.__r_.__value_.__l.__data_) = 6;
      v6 = sub_29AAB97FC(&unk_2A1747A80, &v101);
      if (v113 != sub_29A01BCCC(&v112, v6))
      {
        memset(&v101, 0, sizeof(v101));
        v103[0] = 0;
        v103[1] = 0;
        v102 = v103;
        memset(&v104, 0, sizeof(v104));
        v106 = 0u;
        v107 = 0u;
        v108 = 0u;
        v109 = 0u;
        v110 = 0u;
        v111 = 0u;
        sub_29AAB7290();
        LODWORD(v98) = 0;
        __p[0] = sub_29AAB97FC(&unk_2A1747A80, &v98);
        v7 = sub_29AABAB28(&v112, __p[0], &unk_29B4D6118, __p);
        if (pxrInternal__aapl__pxrReserved__::JsValue::IsString((v7 + 7)))
        {
          sub_29AAB7290();
          LODWORD(v98) = 0;
          __p[0] = sub_29AAB97FC(&unk_2A1747A80, &v98);
          v8 = sub_29AABAB28(&v112, __p[0], &unk_29B4D6118, __p);
          String = pxrInternal__aapl__pxrReserved__::JsValue::GetString((v8 + 7));
          std::string::operator=(&v101, String);
          sub_29AAB7290();
          LODWORD(v98) = 3;
          v10 = sub_29AAB97FC(&unk_2A1747A80, &v98);
          if (v113 == sub_29A01BCCC(&v112, v10) || (sub_29AAB7290(), LODWORD(v93) = 3, __p[0] = sub_29AAB97FC(&unk_2A1747A80, &v93), v11 = sub_29AABAB28(&v112, __p[0], &unk_29B4D6118, __p), !pxrInternal__aapl__pxrReserved__::JsValue::IsString((v11 + 7))))
          {
            v38 = sub_29AABB028();
            sub_29AAB7290();
            LODWORD(v98) = 3;
            sub_29AAB97FC(&unk_2A1747A80, &v98);
            std::operator+<char>();
          }

          else
          {
            sub_29AAB7290();
            LODWORD(v98) = 3;
            __p[0] = sub_29AAB97FC(&unk_2A1747A80, &v98);
            v12 = sub_29AABAB28(&v112, __p[0], &unk_29B4D6118, __p);
            v13 = pxrInternal__aapl__pxrReserved__::JsValue::GetString((v12 + 7));
            std::string::operator=(&v104, v13);
            sub_29AAB7290();
            LODWORD(v98) = 4;
            v14 = sub_29AAB97FC(&unk_2A1747A80, &v98);
            if (v113 == sub_29A01BCCC(&v112, v14) || (sub_29AAB7290(), LODWORD(v93) = 4, __p[0] = sub_29AAB97FC(&unk_2A1747A80, &v93), v15 = sub_29AABAB28(&v112, __p[0], &unk_29B4D6118, __p), !pxrInternal__aapl__pxrReserved__::JsValue::IsReal((v15 + 7))))
            {
              v38 = sub_29AABB028();
              sub_29AAB7290();
              LODWORD(v98) = 4;
              sub_29AAB97FC(&unk_2A1747A80, &v98);
              std::operator+<char>();
            }

            else
            {
              sub_29AAB7290();
              LODWORD(v98) = 4;
              __p[0] = sub_29AAB97FC(&unk_2A1747A80, &v98);
              v16 = sub_29AABAB28(&v112, __p[0], &unk_29B4D6118, __p);
              Real = pxrInternal__aapl__pxrReserved__::JsValue::GetReal(v16 + 7);
              v105 = Real;
              sub_29AAB7290();
              LODWORD(v98) = 5;
              v18 = sub_29AAB97FC(&unk_2A1747A80, &v98);
              if (v113 != sub_29A01BCCC(&v112, v18))
              {
                sub_29AAB7290();
                LODWORD(v93) = 5;
                __p[0] = sub_29AAB97FC(&unk_2A1747A80, &v93);
                v19 = sub_29AABAB28(&v112, __p[0], &unk_29B4D6118, __p);
                if (pxrInternal__aapl__pxrReserved__::JsValue::IsArray((v19 + 7)))
                {
                  sub_29AAB7290();
                  LODWORD(v93) = 5;
                  __p[0] = sub_29AAB97FC(&unk_2A1747A80, &v93);
                  v20 = sub_29AABAB28(&v112, __p[0], &unk_29B4D6118, __p);
                  JsArray = pxrInternal__aapl__pxrReserved__::JsValue::GetJsArray(v20 + 7);
                  v98 = 0;
                  v99 = 0;
                  v100 = 0;
                  sub_29A151C2C(&v98, *JsArray, JsArray[1], (JsArray[1] - *JsArray) >> 4);
                  *(&v106 + 1) = v106;
                  v22 = v98;
                  for (i = v99; v22 != i; v22 += 16)
                  {
                    v24 = *(v22 + 8);
                    v93 = *v22;
                    v94 = v24;
                    if (v24)
                    {
                      atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
                    }

                    IsReal = pxrInternal__aapl__pxrReserved__::JsValue::IsReal(&v93);
                    if (IsReal)
                    {
                      v26 = pxrInternal__aapl__pxrReserved__::JsValue::GetReal(&v93);
                      *__p = v26;
                      sub_29A0C2184(&v106, __p);
                    }

                    else
                    {
                      v27 = sub_29AABB028();
                      sub_29AAB7290();
                      LODWORD(v89) = 5;
                      sub_29AAB97FC(&unk_2A1747A80, &v89);
                      std::operator+<char>();
                      sub_29AA5B750(v27, __p);
                      if (SBYTE7(v78) < 0)
                      {
                        operator delete(__p[0]);
                      }
                    }

                    if (v94)
                    {
                      sub_29A014BEC(v94);
                    }

                    if (!IsReal)
                    {
                      goto LABEL_121;
                    }
                  }

                  v28 = *(a1 + 220);
                  if (v28 <= 1 && (v28 != 1 || *(a1 + 221) < 5u))
                  {
                    goto LABEL_55;
                  }

                  sub_29AAB7290();
                  LODWORD(__p[0]) = 2;
                  v29 = sub_29AAB97FC(&unk_2A1747A80, __p);
                  if (v113 == sub_29A01BCCC(&v112, v29) || (sub_29AAB7290(), LODWORD(v89) = 2, v93 = sub_29AAB97FC(&unk_2A1747A80, &v89), v30 = sub_29AABAB28(&v112, v93, &unk_29B4D6118, &v93), !pxrInternal__aapl__pxrReserved__::JsValue::IsArray((v30 + 7))))
                  {
                    v49 = sub_29AABB028();
                    sub_29AAB7290();
                    LODWORD(v93) = 2;
                    sub_29AAB97FC(&unk_2A1747A80, &v93);
                    std::operator+<char>();
LABEL_67:
                    sub_29AA5B750(v49, __p);
                    if (SBYTE7(v78) < 0)
                    {
                      operator delete(__p[0]);
                    }

                    goto LABEL_121;
                  }

                  sub_29AAB7290();
                  LODWORD(v89) = 2;
                  v93 = sub_29AAB97FC(&unk_2A1747A80, &v89);
                  v31 = sub_29AABAB28(&v112, v93, &unk_29B4D6118, &v93);
                  v32 = pxrInternal__aapl__pxrReserved__::JsValue::GetJsArray(v31 + 7);
                  __p[0] = 0;
                  __p[1] = 0;
                  *&v78 = 0;
                  sub_29A151C2C(__p, *v32, v32[1], (v32[1] - *v32) >> 4);
                  v33 = *(&v109 + 1);
                  v34 = v109;
                  while (v33 != v34)
                  {
                    v33 -= 3;
                    sub_29A0EB800(v33);
                  }

                  *(&v109 + 1) = v34;
                  v50 = __p[0];
                  v76 = __p[1];
                  if (__p[0] == __p[1])
                  {
LABEL_91:
                    sub_29AAB7290();
                    LODWORD(v93) = 1;
                    v62 = sub_29AAB97FC(&unk_2A1747A80, &v93);
                    if (v113 == sub_29A01BCCC(&v112, v62) || (sub_29AAB7290(), LODWORD(v96) = 1, v89 = sub_29AAB97FC(&unk_2A1747A80, &v96), v63 = sub_29AABAB28(&v112, v89, &unk_29B4D6118, &v89), !pxrInternal__aapl__pxrReserved__::JsValue::IsArray((v63 + 7))))
                    {
                      v69 = sub_29AABB028();
                      sub_29AAB7290();
                      LODWORD(v89) = 1;
                      sub_29AAB97FC(&unk_2A1747A80, &v89);
                      std::operator+<char>();
                      sub_29AA5B750(v69, &v93);
                      if (SHIBYTE(v95) < 0)
                      {
                        operator delete(v93);
                      }
                    }

                    else
                    {
                      sub_29AAB7290();
                      LODWORD(v96) = 1;
                      v89 = sub_29AAB97FC(&unk_2A1747A80, &v96);
                      v64 = sub_29AABAB28(&v112, v89, &unk_29B4D6118, &v89);
                      v65 = pxrInternal__aapl__pxrReserved__::JsValue::GetJsArray(v64 + 7);
                      v93 = 0;
                      v94 = 0;
                      v95 = 0;
                      sub_29A151C2C(&v93, *v65, v65[1], (v65[1] - *v65) >> 4);
                      v66 = *(&v110 + 1);
                      v67 = v111;
                      while (v67 != v66)
                      {
                        v68 = *(v67 - 1);
                        v67 -= 3;
                        if (v68 < 0)
                        {
                          operator delete(*v67);
                        }
                      }

                      *&v111 = v66;
                      v71 = v93;
                      v72 = v94;
                      if (v93 == v94)
                      {
LABEL_118:
                        v89 = &v93;
                        sub_29A0176E4(&v89);
                        v93 = __p;
                        sub_29A0176E4(&v93);
LABEL_55:
                        sub_29AAB7290();
                        LODWORD(__p[0]) = 6;
                        v93 = sub_29AAB97FC(&unk_2A1747A80, __p);
                        v40 = sub_29AABAB28(&v112, v93, &unk_29B4D6118, &v93);
                        if (pxrInternal__aapl__pxrReserved__::JsValue::IsArray((v40 + 7)))
                        {
                          sub_29AAB7290();
                          LODWORD(__p[0]) = 6;
                          v89 = sub_29AAB97FC(&unk_2A1747A80, __p);
                          v41 = sub_29AABAB28(&v112, v89, &unk_29B4D6118, &v89);
                          v42 = pxrInternal__aapl__pxrReserved__::JsValue::GetJsArray(v41 + 7);
                          v93 = 0;
                          v94 = 0;
                          v95 = 0;
                          v43 = sub_29A151C2C(&v93, *v42, v42[1], (v42[1] - *v42) >> 4);
                          v90 = 0uLL;
                          v89 = &v90;
                          v44 = v93;
                          v45 = v94;
                          v46 = &v90;
                          if (v93 == v94)
                          {
LABEL_64:
                            sub_29AABAC40(&v102, v46, &v90);
                            sub_29AAB987C(a1, &v101);
                            v36 = 0;
                          }

                          else
                          {
                            while (1)
                            {
                              shared_owners = v44->__shared_owners_;
                              v96 = v44->__vftable;
                              v97 = shared_owners;
                              if (shared_owners)
                              {
                                atomic_fetch_add_explicit(&shared_owners->__shared_owners_, 1uLL, memory_order_relaxed);
                              }

                              v82 = 0;
                              v83 = 0;
                              v84 = 0;
                              v86 = 0;
                              v87 = 0;
                              v85 = 0;
                              *__p = 0u;
                              v78 = 0u;
                              v79 = 0u;
                              v80 = 0u;
                              v81 = 0;
                              if (sub_29AAB996C(v43, &v96, __p))
                              {
                                break;
                              }

                              v91 = __p;
                              v48 = sub_29AA7DF08(&v89, __p, &unk_29B4D6118, &v91);
                              sub_29AABA88C((v48 + 7), __p);
                              sub_29AA654EC(__p);
                              v43 = v97;
                              if (v97)
                              {
                                sub_29A014BEC(v97);
                              }

                              v44 = (v44 + 16);
                              if (v44 == v45)
                              {
                                v46 = v89;
                                goto LABEL_64;
                              }
                            }

                            sub_29AA654EC(__p);
                            if (v97)
                            {
                              sub_29A014BEC(v97);
                            }

                            v36 = 301;
                          }

                          sub_29AA7AD68(&v89, v90);
                          __p[0] = &v93;
                          sub_29A0176E4(__p);
                          goto LABEL_122;
                        }

                        v49 = sub_29AABB028();
                        sub_29AAB7290();
                        LODWORD(v93) = 6;
                        sub_29AAB97FC(&unk_2A1747A80, &v93);
                        std::operator+<char>();
                        goto LABEL_67;
                      }

                      while (1)
                      {
                        v73 = v71->__shared_owners_;
                        v96 = v71->__vftable;
                        v97 = v73;
                        if (v73)
                        {
                          atomic_fetch_add_explicit(&v73->__shared_owners_, 1uLL, memory_order_relaxed);
                        }

                        IsString = pxrInternal__aapl__pxrReserved__::JsValue::IsString(&v96);
                        if (IsString)
                        {
                          pxrInternal__aapl__pxrReserved__::JsValue::GetString(&v96);
                          sub_29A070BA0(&v110 + 8);
                        }

                        v75 = sub_29AABB028();
                        sub_29AAB7290();
                        LODWORD(v91) = 1;
                        sub_29AAB97FC(&unk_2A1747A80, &v91);
                        std::operator+<char>();
                        sub_29AA5B750(v75, &v89);
                        if (SHIBYTE(v90) < 0)
                        {
                          operator delete(v89);
                        }

                        if (v97)
                        {
                          sub_29A014BEC(v97);
                        }

                        if (!IsString)
                        {
                          break;
                        }

                        v71 = (v71 + 16);
                        if (v71 == v72)
                        {
                          goto LABEL_118;
                        }
                      }

                      v89 = &v93;
                      sub_29A0176E4(&v89);
                    }
                  }

                  else
                  {
                    while (1)
                    {
                      v51 = *(v50 + 1);
                      v96 = *v50;
                      v97 = v51;
                      if (v51)
                      {
                        atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
                      }

                      if (!pxrInternal__aapl__pxrReserved__::JsValue::IsArray(&v96))
                      {
                        break;
                      }

                      v93 = &v93;
                      v94 = &v93;
                      v95 = 0;
                      v52 = pxrInternal__aapl__pxrReserved__::JsValue::GetJsArray(&v96);
                      v53 = *v52;
                      v54 = v52[1];
                      while (1)
                      {
                        if (v53 == v54)
                        {
                          sub_29AA5E490(&v109, &v93);
                          v61 = 1;
                          goto LABEL_87;
                        }

                        v55 = *(v53 + 8);
                        v91 = *v53;
                        v92 = v55;
                        if (v55)
                        {
                          atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
                        }

                        IsInt = pxrInternal__aapl__pxrReserved__::JsValue::IsInt(&v91);
                        if (IsInt)
                        {
                          Int = pxrInternal__aapl__pxrReserved__::JsValue::GetInt(&v91);
                          v58 = operator new(0x18uLL);
                          v58[4] = Int;
                          v59 = v93;
                          *v58 = v93;
                          *(v58 + 1) = &v93;
                          v59[1] = v58;
                          v93 = v58;
                          ++v95;
                        }

                        else
                        {
                          v60 = sub_29AABB028();
                          sub_29AAB7290();
                          v88 = 2;
                          sub_29AAB97FC(&unk_2A1747A80, &v88);
                          std::operator+<char>();
                          sub_29AA5B750(v60, &v89);
                          if (SHIBYTE(v90) < 0)
                          {
                            operator delete(v89);
                          }
                        }

                        if (v92)
                        {
                          sub_29A014BEC(v92);
                        }

                        if (!IsInt)
                        {
                          break;
                        }

                        v53 += 16;
                      }

                      v61 = 0;
LABEL_87:
                      sub_29A0EB800(&v93);
                      if (v97)
                      {
                        sub_29A014BEC(v97);
                      }

                      if ((v61 & 1) == 0)
                      {
                        goto LABEL_120;
                      }

                      v50 += 16;
                      if (v50 == v76)
                      {
                        goto LABEL_91;
                      }
                    }

                    v70 = sub_29AABB028();
                    sub_29AAB7290();
                    LODWORD(v89) = 2;
                    sub_29AAB97FC(&unk_2A1747A80, &v89);
                    std::operator+<char>();
                    sub_29AA5B750(v70, &v93);
                    if (SHIBYTE(v95) < 0)
                    {
                      operator delete(v93);
                    }

                    if (v97)
                    {
                      sub_29A014BEC(v97);
                    }
                  }

LABEL_120:
                  v93 = __p;
                  sub_29A0176E4(&v93);
LABEL_121:
                  v36 = 301;
LABEL_122:
                  __p[0] = &v98;
                  sub_29A0176E4(__p);
LABEL_43:
                  __p[0] = &v110 + 8;
                  sub_29A012C90(__p);
                  __p[0] = &v109;
                  sub_29AA7B3C4(__p);
                  if (*(&v107 + 1))
                  {
                    *&v108 = *(&v107 + 1);
                    operator delete(*(&v107 + 1));
                  }

                  if (v106)
                  {
                    *(&v106 + 1) = v106;
                    operator delete(v106);
                  }

                  if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v104.__r_.__value_.__l.__data_);
                  }

                  sub_29AA7AD68(&v102, v103[0]);
                  if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v101.__r_.__value_.__l.__data_);
                  }

LABEL_51:
                  sub_29A09932C(&v112, v113[0]);
                  return v36;
                }
              }

              v38 = sub_29AABB028();
              sub_29AAB7290();
              LODWORD(v98) = 5;
              sub_29AAB97FC(&unk_2A1747A80, &v98);
              std::operator+<char>();
            }
          }
        }

        else
        {
          v38 = sub_29AABB028();
          sub_29AAB7290();
          LODWORD(v98) = 0;
          sub_29AAB97FC(&unk_2A1747A80, &v98);
          std::operator+<char>();
        }

        sub_29AA5B750(v38, __p);
        if (SBYTE7(v78) < 0)
        {
          operator delete(__p[0]);
        }

        v36 = 301;
        goto LABEL_43;
      }

      v37 = sub_29AABB028();
      sub_29AAB7290();
      LODWORD(__p[0]) = 6;
      sub_29AAB97FC(&unk_2A1747A80, __p);
      std::operator+<char>();
    }

    sub_29AA5B750(v37, &v101);
    if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v101.__r_.__value_.__l.__data_);
    }

    v36 = 301;
    goto LABEL_51;
  }

  v35 = sub_29AABB028();
  sub_29A008E78(&v101, "parseJsonMesh: Not an object!");
  sub_29AA5B750(v35, &v101);
  if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v101.__r_.__value_.__l.__data_);
  }

  return 301;
}

void sub_29AAB8618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void ***a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, char a44)
{
  a36 = &a11;
  sub_29A0176E4(&a36);
  a11 = &a41;
  sub_29A0176E4(&a11);
  sub_29AA658F4(&a44);
  sub_29A09932C(v44 - 120, *(v44 - 112));
  _Unwind_Resume(a1);
}

uint64_t sub_29AAB8828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 < 1)
  {
    return 300;
  }

  **(a1 + 192) = *a2;
  if (a3 == 1)
  {
    return 300;
  }

  *(*(a1 + 192) + 1) = *(a2 + 1);
  if (a3 == 2)
  {
    return 300;
  }

  *(*(a1 + 192) + 2) = *(a2 + 2);
  if (a3 == 3)
  {
    return 300;
  }

  *(*(a1 + 192) + 3) = *(a2 + 3);
  if ((a3 & 0x7FFFFFFFFFFFFFFCLL) == 4)
  {
    return 300;
  }

  *(a1 + 216) = *(a2 + 4);
  if (a3 == 8)
  {
    return 300;
  }

  *(a1 + 220) = *(a2 + 8);
  if (a3 == 9)
  {
    return 300;
  }

  *(a1 + 221) = *(a2 + 9);
  if ((a3 & 0x7FFFFFFFFFFFFFFELL) == 0xA)
  {
    return 300;
  }

  *(a1 + 222) = *(a2 + 10);
  if ((a3 & 0x7FFFFFFFFFFFFFFCLL) == 0xC)
  {
    return 300;
  }

  v5 = *(a2 + 12);
  *(a1 + 224) = v5;
  v6 = (a2 + 16);
  if (a2 == -16)
  {
    return 300;
  }

  result = sub_29AAB8994(a1);
  if (result)
  {
    return result;
  }

  v8 = v5 - *(a1 + 232);
  v9 = a3 - 16 - v8;
  if ((v8 | v9) < 0)
  {
    return 300;
  }

  v10 = &v6[v8];
  sub_29A02887C(__p, v6, v8 & ~(v8 >> 63));
  *(a1 + 176) = v10;
  *(a1 + 184) = v9;
  result = sub_29AAB75DC(a1, __p, v11);
  if (v14 < 0)
  {
    v12 = result;
    operator delete(__p[0]);
    return v12;
  }

  return result;
}

void sub_29AAB8978(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AAB8994(uint64_t a1)
{
  v1 = *(a1 + 192);
  if (*v1 != 71 || v1[1] != 67 || v1[2] != 76 || v1[3] != 74)
  {
    return 300;
  }

  v2 = *(a1 + 220);
  if ((v2 - 4) < 0xFFFFFFFD || v2 == 3 && *(a1 + 221))
  {
    return 302;
  }

  if (*(a1 + 232) == *(a1 + 224))
  {
    return 300;
  }

  return 0;
}

uint64_t sub_29AAB8A10(uint64_t a1, uint64_t a2)
{
  v89[0] = 0;
  v89[1] = 0;
  v88 = v89;
  pxrInternal__aapl__pxrReserved__::JsValue::JsValue(__p, a1);
  sub_29AAB7290();
  LODWORD(v86[0]) = 0;
  v87[0] = sub_29AAB97FC(&unk_2A1747A80, v86);
  v4 = sub_29AABAB28(&v88, v87[0], &unk_29B4D6118, v87);
  v5 = *__p;
  __p[0] = 0;
  __p[1] = 0;
  v6 = v4[8];
  *(v4 + 7) = v5;
  if (v6)
  {
    sub_29A014BEC(v6);
    if (__p[1])
    {
      sub_29A014BEC(__p[1]);
    }
  }

  pxrInternal__aapl__pxrReserved__::JsValue::JsValue(__p, a1 + 48);
  sub_29AAB7290();
  LODWORD(v86[0]) = 3;
  v87[0] = sub_29AAB97FC(&unk_2A1747A80, v86);
  v7 = sub_29AABAB28(&v88, v87[0], &unk_29B4D6118, v87);
  v8 = *__p;
  __p[0] = 0;
  __p[1] = 0;
  v9 = v7[8];
  *(v7 + 7) = v8;
  if (v9)
  {
    sub_29A014BEC(v9);
    if (__p[1])
    {
      sub_29A014BEC(__p[1]);
    }
  }

  pxrInternal__aapl__pxrReserved__::JsValue::JsValue(__p, *(a1 + 72));
  sub_29AAB7290();
  LODWORD(v86[0]) = 4;
  v87[0] = sub_29AAB97FC(&unk_2A1747A80, v86);
  v10 = sub_29AABAB28(&v88, v87[0], &unk_29B4D6118, v87);
  v11 = *__p;
  __p[0] = 0;
  __p[1] = 0;
  v12 = v10[8];
  *(v10 + 7) = v11;
  if (v12)
  {
    sub_29A014BEC(v12);
    if (__p[1])
    {
      sub_29A014BEC(__p[1]);
    }
  }

  memset(v87, 0, sizeof(v87));
  v13 = *(a1 + 80);
  v14 = *(a1 + 88);
  while (v13 != v14)
  {
    pxrInternal__aapl__pxrReserved__::JsValue::JsValue(__p, *v13);
    sub_29A8D76FC(v87, __p);
    if (__p[1])
    {
      sub_29A014BEC(__p[1]);
    }

    ++v13;
  }

  pxrInternal__aapl__pxrReserved__::JsValue::JsValue(__p, v87);
  sub_29AAB7290();
  LODWORD(v83) = 5;
  v86[0] = sub_29AAB97FC(&unk_2A1747A80, &v83);
  v15 = sub_29AABAB28(&v88, v86[0], &unk_29B4D6118, v86);
  v16 = *__p;
  __p[0] = 0;
  __p[1] = 0;
  v17 = v15[8];
  *(v15 + 7) = v16;
  if (v17)
  {
    sub_29A014BEC(v17);
    if (__p[1])
    {
      sub_29A014BEC(__p[1]);
    }
  }

  memset(v86, 0, sizeof(v86));
  v19 = *(a1 + 128);
  for (i = *(a1 + 136); v19 != i; v19 += 24)
  {
    sub_29AA7D0B0(__p, v19);
    v83 = 0;
    v84 = 0;
    v85 = 0;
    for (j = __p[1]; j != __p; j = j[1])
    {
      pxrInternal__aapl__pxrReserved__::JsValue::JsValue(&v80, *(j + 4));
      sub_29A8D76FC(&v83, &v80);
      if (v81)
      {
        sub_29A014BEC(v81);
      }
    }

    pxrInternal__aapl__pxrReserved__::JsValue::JsValue(&v80, &v83);
    sub_29A8D76FC(v86, &v80);
    if (v81)
    {
      sub_29A014BEC(v81);
    }

    v80 = &v83;
    sub_29A0176E4(&v80);
    sub_29A0EB800(__p);
  }

  pxrInternal__aapl__pxrReserved__::JsValue::JsValue(__p, v86);
  sub_29AAB7290();
  LODWORD(v80) = 2;
  v83 = sub_29AAB97FC(&unk_2A1747A80, &v80);
  v21 = sub_29AABAB28(&v88, v83, &unk_29B4D6118, &v83);
  v22 = *__p;
  __p[0] = 0;
  __p[1] = 0;
  v23 = v21[8];
  *(v21 + 7) = v22;
  if (v23)
  {
    sub_29A014BEC(v23);
    if (__p[1])
    {
      sub_29A014BEC(__p[1]);
    }
  }

  v83 = 0;
  v84 = 0;
  v85 = 0;
  v24 = *(a1 + 152);
  v25 = *(a1 + 160);
  while (v24 != v25)
  {
    if (*(v24 + 23) < 0)
    {
      sub_29A008D14(__p, *v24, *(v24 + 1));
    }

    else
    {
      v26 = *v24;
      v71 = *(v24 + 2);
      *__p = v26;
    }

    pxrInternal__aapl__pxrReserved__::JsValue::JsValue(&v80, __p);
    sub_29A8D76FC(&v83, &v80);
    if (v81)
    {
      sub_29A014BEC(v81);
    }

    if (SHIBYTE(v71) < 0)
    {
      operator delete(__p[0]);
    }

    v24 = (v24 + 24);
  }

  pxrInternal__aapl__pxrReserved__::JsValue::JsValue(__p, &v83);
  sub_29AAB7290();
  LODWORD(v78) = 1;
  v80 = sub_29AAB97FC(&unk_2A1747A80, &v78);
  v27 = sub_29AABAB28(&v88, v80, &unk_29B4D6118, &v80);
  v28 = *__p;
  __p[0] = 0;
  __p[1] = 0;
  v29 = v27[8];
  *(v27 + 7) = v28;
  v69 = a2;
  if (v29)
  {
    sub_29A014BEC(v29);
    if (__p[1])
    {
      sub_29A014BEC(__p[1]);
    }
  }

  v80 = 0;
  v81 = 0;
  v82 = 0;
  v30 = *(a1 + 24);
  if (v30 != (a1 + 32))
  {
    do
    {
      __p[1] = 0;
      v71 = 0;
      __p[0] = &__p[1];
      pxrInternal__aapl__pxrReserved__::JsValue::JsValue(&v78, v30 + 4);
      sub_29AAB7290();
      LODWORD(v90[0]) = 7;
      *&v77 = sub_29AAB97FC(&unk_2A1747A80, v90);
      v31 = sub_29AABAB28(__p, v77, &unk_29B4D6118, &v77);
      v32 = v78;
      v78 = 0uLL;
      v33 = v31[8];
      *(v31 + 7) = v32;
      if (v33)
      {
        sub_29A014BEC(v33);
        if (*(&v78 + 1))
        {
          sub_29A014BEC(*(&v78 + 1));
        }
      }

      pxrInternal__aapl__pxrReserved__::JsValue::JsValue(&v78, v30 + 10);
      sub_29AAB7290();
      LODWORD(v90[0]) = 8;
      *&v77 = sub_29AAB97FC(&unk_2A1747A80, v90);
      v34 = sub_29AABAB28(__p, v77, &unk_29B4D6118, &v77);
      v35 = v78;
      v78 = 0uLL;
      v36 = v34[8];
      *(v34 + 7) = v35;
      if (v36)
      {
        sub_29A014BEC(v36);
        if (*(&v78 + 1))
        {
          sub_29A014BEC(*(&v78 + 1));
        }
      }

      pxrInternal__aapl__pxrReserved__::JsValue::JsValue(&v78, v30 + 13);
      sub_29AAB7290();
      LODWORD(v90[0]) = 9;
      *&v77 = sub_29AAB97FC(&unk_2A1747A80, v90);
      v37 = sub_29AABAB28(__p, v77, &unk_29B4D6118, &v77);
      v38 = v78;
      v78 = 0uLL;
      v39 = v37[8];
      *(v37 + 7) = v38;
      if (v39)
      {
        sub_29A014BEC(v39);
        if (*(&v78 + 1))
        {
          sub_29A014BEC(*(&v78 + 1));
        }
      }

      pxrInternal__aapl__pxrReserved__::JsValue::JsValue(&v78, *(v30 + 32));
      sub_29AAB7290();
      LODWORD(v90[0]) = 10;
      *&v77 = sub_29AAB97FC(&unk_2A1747A80, v90);
      v40 = sub_29AABAB28(__p, v77, &unk_29B4D6118, &v77);
      v41 = v78;
      v78 = 0uLL;
      v42 = v40[8];
      *(v40 + 7) = v41;
      if (v42)
      {
        sub_29A014BEC(v42);
        if (*(&v78 + 1))
        {
          sub_29A014BEC(*(&v78 + 1));
        }
      }

      pxrInternal__aapl__pxrReserved__::JsValue::JsValue(&v78, *(v30 + 132));
      sub_29AAB7290();
      LODWORD(v90[0]) = 11;
      *&v77 = sub_29AAB97FC(&unk_2A1747A80, v90);
      v43 = sub_29AABAB28(__p, v77, &unk_29B4D6118, &v77);
      v44 = v78;
      v78 = 0uLL;
      v45 = v43[8];
      *(v43 + 7) = v44;
      if (v45)
      {
        sub_29A014BEC(v45);
        if (*(&v78 + 1))
        {
          sub_29A014BEC(*(&v78 + 1));
        }
      }

      pxrInternal__aapl__pxrReserved__::JsValue::JsValue(&v78, *(v30 + 192));
      sub_29AAB7290();
      LODWORD(v90[0]) = 15;
      *&v77 = sub_29AAB97FC(&unk_2A1747A80, v90);
      v46 = sub_29AABAB28(__p, v77, &unk_29B4D6118, &v77);
      v47 = v78;
      v78 = 0uLL;
      v48 = v46[8];
      *(v46 + 7) = v47;
      if (v48)
      {
        sub_29A014BEC(v48);
        if (*(&v78 + 1))
        {
          sub_29A014BEC(*(&v78 + 1));
        }
      }

      pxrInternal__aapl__pxrReserved__::JsValue::JsValue(&v78, v30 + 17);
      sub_29AAB7290();
      LODWORD(v90[0]) = 12;
      *&v77 = sub_29AAB97FC(&unk_2A1747A80, v90);
      v49 = sub_29AABAB28(__p, v77, &unk_29B4D6118, &v77);
      v50 = v78;
      v78 = 0uLL;
      v51 = v49[8];
      *(v49 + 7) = v50;
      if (v51)
      {
        sub_29A014BEC(v51);
        if (*(&v78 + 1))
        {
          sub_29A014BEC(*(&v78 + 1));
        }
      }

      pxrInternal__aapl__pxrReserved__::JsValue::JsValue(&v78, *(v30 + 40));
      sub_29AAB7290();
      LODWORD(v90[0]) = 13;
      *&v77 = sub_29AAB97FC(&unk_2A1747A80, v90);
      v52 = sub_29AABAB28(__p, v77, &unk_29B4D6118, &v77);
      v53 = v78;
      v78 = 0uLL;
      v54 = v52[8];
      *(v52 + 7) = v53;
      if (v54)
      {
        sub_29A014BEC(v54);
        if (*(&v78 + 1))
        {
          sub_29A014BEC(*(&v78 + 1));
        }
      }

      v78 = 0uLL;
      v79 = 0;
      v55 = v30[21];
      v56 = v30[22];
      while (v55 != v56)
      {
        pxrInternal__aapl__pxrReserved__::JsValue::JsValue(&v77, *v55);
        sub_29A8D76FC(&v78, &v77);
        if (*(&v77 + 1))
        {
          sub_29A014BEC(*(&v77 + 1));
        }

        ++v55;
      }

      pxrInternal__aapl__pxrReserved__::JsValue::JsValue(&v77, &v78);
      sub_29AAB7290();
      v76 = 14;
      v90[0] = sub_29AAB97FC(&unk_2A1747A80, &v76);
      v57 = sub_29AABAB28(__p, v90[0], &unk_29B4D6118, v90);
      v58 = v77;
      v77 = 0uLL;
      v59 = v57[8];
      *(v57 + 7) = v58;
      if (v59)
      {
        sub_29A014BEC(v59);
        if (*(&v77 + 1))
        {
          sub_29A014BEC(*(&v77 + 1));
        }
      }

      pxrInternal__aapl__pxrReserved__::JsValue::JsValue(&v77, __p);
      sub_29A8D76FC(&v80, &v77);
      if (*(&v77 + 1))
      {
        sub_29A014BEC(*(&v77 + 1));
      }

      *&v77 = &v78;
      sub_29A0176E4(&v77);
      sub_29A09932C(__p, __p[1]);
      v60 = v30[1];
      if (v60)
      {
        do
        {
          v61 = v60;
          v60 = *v60;
        }

        while (v60);
      }

      else
      {
        do
        {
          v61 = v30[2];
          v62 = *v61 == v30;
          v30 = v61;
        }

        while (!v62);
      }

      v30 = v61;
    }

    while (v61 != (a1 + 32));
  }

  pxrInternal__aapl__pxrReserved__::JsValue::JsValue(__p, &v80);
  sub_29AAB7290();
  LODWORD(v77) = 6;
  *&v78 = sub_29AAB97FC(&unk_2A1747A80, &v77);
  v63 = sub_29AABAB28(&v88, v78, &unk_29B4D6118, &v78);
  v64 = *__p;
  __p[0] = 0;
  __p[1] = 0;
  v65 = v63[8];
  *(v63 + 7) = v64;
  if (v65)
  {
    sub_29A014BEC(v65);
    if (__p[1])
    {
      sub_29A014BEC(__p[1]);
    }
  }

  sub_29A008864(__p);
  pxrInternal__aapl__pxrReserved__::JsWriter::JsWriter(&v77, &v71, 0);
  pxrInternal__aapl__pxrReserved__::JsValue::JsValue(&v78, &v88);
  pxrInternal__aapl__pxrReserved__::JsWriteValue(&v77, &v78, v66);
  if (*(&v78 + 1))
  {
    sub_29A014BEC(*(&v78 + 1));
  }

  std::stringbuf::str();
  if (*(v69 + 23) < 0)
  {
    operator delete(*v69);
  }

  *v69 = v78;
  *(v69 + 16) = v79;
  pxrInternal__aapl__pxrReserved__::JsWriter::~JsWriter(&v77);
  __p[0] = *MEMORY[0x29EDC9528];
  v67 = *(MEMORY[0x29EDC9528] + 72);
  *(__p + *(__p[0] - 3)) = *(MEMORY[0x29EDC9528] + 64);
  v71 = v67;
  v72 = MEMORY[0x29EDC9570] + 16;
  if (v74 < 0)
  {
    operator delete(v73[7].__locale_);
  }

  v72 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v73);
  std::iostream::~basic_iostream();
  MEMORY[0x29C2C4390](&v75);
  __p[0] = &v80;
  sub_29A0176E4(__p);
  __p[0] = &v83;
  sub_29A0176E4(__p);
  __p[0] = v86;
  sub_29A0176E4(__p);
  __p[0] = v87;
  sub_29A0176E4(__p);
  sub_29A09932C(&v88, v89[0]);
  return 0;
}

void sub_29AAB9580(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  pxrInternal__aapl__pxrReserved__::JsWriter::~JsWriter(&a50);
  sub_29A008B0C(&__p);
  __p = (v51 - 224);
  sub_29A0176E4(&__p);
  __p = (v51 - 200);
  sub_29A0176E4(&__p);
  __p = (v51 - 176);
  sub_29A0176E4(&__p);
  __p = (v51 - 152);
  sub_29A0176E4(&__p);
  sub_29A09932C(v51 - 128, *(v51 - 120));
  _Unwind_Resume(a1);
}

uint64_t *sub_29AAB97FC(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    sub_29A0F26E4("map::at:  key not found");
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = *(v2 + 8);
      if (v3 >= v4)
      {
        break;
      }

      v2 = *v2;
      if (!v2)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= v3)
    {
      return v2 + 5;
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_29AAB987C(uint64_t a1, uint64_t a2)
{
  std::string::operator=(a1, a2);
  if (a1 == a2)
  {
    std::string::operator=((a1 + 48), (a2 + 48));
    *(a1 + 72) = *(a2 + 72);
  }

  else
  {
    sub_29AABAC40((a1 + 24), *(a2 + 24), (a2 + 32));
    std::string::operator=((a1 + 48), (a2 + 48));
    *(a1 + 72) = *(a2 + 72);
    sub_29A36CF34((a1 + 80), *(a2 + 80), *(a2 + 88), (*(a2 + 88) - *(a2 + 80)) >> 2);
    sub_29AA39DA4((a1 + 104), *(a2 + 104), *(a2 + 112), *(a2 + 112) - *(a2 + 104));
    sub_29AA7D708((a1 + 128), *(a2 + 128), *(a2 + 136), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 136) - *(a2 + 128)) >> 3));
    sub_29A095E3C(a1 + 152, *(a2 + 152), *(a2 + 160), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 160) - *(a2 + 152)) >> 3));
  }

  return a1;
}

uint64_t sub_29AAB996C(int a1, unint64_t **this, uint64_t a3)
{
  if (pxrInternal__aapl__pxrReserved__::JsValue::IsObject(this))
  {
    JsObject = pxrInternal__aapl__pxrReserved__::JsValue::GetJsObject(this);
    sub_29A1519B8(&v98, JsObject);
    sub_29AAB7290();
    LODWORD(v95.__r_.__value_.__l.__data_) = 7;
    v6 = sub_29AAB97FC(&unk_2A1747A80, &v95);
    if (&v99 == sub_29A01BCCC(&v98, v6) || (sub_29AAB7290(), LODWORD(v94.__r_.__value_.__l.__data_) = 7, __p[0] = sub_29AAB97FC(&unk_2A1747A80, &v94), v7 = sub_29AABAB28(&v98, __p[0], &unk_29B4D6118, __p), !pxrInternal__aapl__pxrReserved__::JsValue::IsString((v7 + 7))))
    {
      v28 = sub_29AABB028();
      sub_29AAB7290();
      LODWORD(v95.__r_.__value_.__l.__data_) = 7;
      sub_29AAB97FC(&unk_2A1747A80, &v95);
      std::operator+<char>();
      sub_29AA5B750(v28, __p);
      if (SHIBYTE(v97) < 0)
      {
        v29 = __p[0];
LABEL_97:
        operator delete(v29);
      }
    }

    else
    {
      sub_29AAB7290();
      LODWORD(v95.__r_.__value_.__l.__data_) = 7;
      __p[0] = sub_29AAB97FC(&unk_2A1747A80, &v95);
      v8 = sub_29AABAB28(&v98, __p[0], &unk_29B4D6118, __p);
      String = pxrInternal__aapl__pxrReserved__::JsValue::GetString((v8 + 7));
      std::string::operator=(a3, String);
      sub_29AAB7290();
      LODWORD(v95.__r_.__value_.__l.__data_) = 8;
      v10 = sub_29AAB97FC(&unk_2A1747A80, &v95);
      if (&v99 == sub_29A01BCCC(&v98, v10) || (sub_29AAB7290(), LODWORD(v94.__r_.__value_.__l.__data_) = 8, __p[0] = sub_29AAB97FC(&unk_2A1747A80, &v94), v11 = sub_29AABAB28(&v98, __p[0], &unk_29B4D6118, __p), !pxrInternal__aapl__pxrReserved__::JsValue::IsString((v11 + 7))))
      {
        v30 = sub_29AABB028();
        std::operator+<char>();
        v31 = std::string::append(&v94, ", key ");
        v32 = *&v31->__r_.__value_.__l.__data_;
        v95.__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
        *&v95.__r_.__value_.__l.__data_ = v32;
        v31->__r_.__value_.__l.__size_ = 0;
        v31->__r_.__value_.__r.__words[2] = 0;
        v31->__r_.__value_.__r.__words[0] = 0;
        sub_29AAB7290();
        LODWORD(v91.__r_.__value_.__l.__data_) = 8;
        v33 = sub_29AAB97FC(&unk_2A1747A80, &v91);
        v34 = *(v33 + 23);
        if (v34 >= 0)
        {
          v35 = v33;
        }

        else
        {
          v35 = *v33;
        }

        if (v34 >= 0)
        {
          v36 = *(v33 + 23);
        }

        else
        {
          v36 = v33[1];
        }
      }

      else
      {
        sub_29AAB7290();
        LODWORD(v95.__r_.__value_.__l.__data_) = 8;
        __p[0] = sub_29AAB97FC(&unk_2A1747A80, &v95);
        v12 = sub_29AABAB28(&v98, __p[0], &unk_29B4D6118, __p);
        v13 = pxrInternal__aapl__pxrReserved__::JsValue::GetString((v12 + 7));
        std::string::operator=((a3 + 24), v13);
        sub_29AAB7290();
        LODWORD(v95.__r_.__value_.__l.__data_) = 9;
        v14 = sub_29AAB97FC(&unk_2A1747A80, &v95);
        if (&v99 == sub_29A01BCCC(&v98, v14) || (sub_29AAB7290(), LODWORD(v94.__r_.__value_.__l.__data_) = 9, __p[0] = sub_29AAB97FC(&unk_2A1747A80, &v94), v15 = sub_29AABAB28(&v98, __p[0], &unk_29B4D6118, __p), !pxrInternal__aapl__pxrReserved__::JsValue::IsString((v15 + 7))))
        {
          v30 = sub_29AABB028();
          std::operator+<char>();
          v37 = std::string::append(&v94, ", key ");
          v38 = *&v37->__r_.__value_.__l.__data_;
          v95.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
          *&v95.__r_.__value_.__l.__data_ = v38;
          v37->__r_.__value_.__l.__size_ = 0;
          v37->__r_.__value_.__r.__words[2] = 0;
          v37->__r_.__value_.__r.__words[0] = 0;
          sub_29AAB7290();
          LODWORD(v91.__r_.__value_.__l.__data_) = 9;
          v39 = sub_29AAB97FC(&unk_2A1747A80, &v91);
          v40 = *(v39 + 23);
          if (v40 >= 0)
          {
            v35 = v39;
          }

          else
          {
            v35 = *v39;
          }

          if (v40 >= 0)
          {
            v36 = *(v39 + 23);
          }

          else
          {
            v36 = v39[1];
          }
        }

        else
        {
          sub_29AAB7290();
          LODWORD(v95.__r_.__value_.__l.__data_) = 9;
          __p[0] = sub_29AAB97FC(&unk_2A1747A80, &v95);
          v16 = sub_29AABAB28(&v98, __p[0], &unk_29B4D6118, __p);
          v17 = pxrInternal__aapl__pxrReserved__::JsValue::GetString((v16 + 7));
          std::string::operator=((a3 + 48), v17);
          sub_29AAB7290();
          LODWORD(v95.__r_.__value_.__l.__data_) = 10;
          v18 = sub_29AAB97FC(&unk_2A1747A80, &v95);
          if (&v99 == sub_29A01BCCC(&v98, v18) || (sub_29AAB7290(), LODWORD(v94.__r_.__value_.__l.__data_) = 10, __p[0] = sub_29AAB97FC(&unk_2A1747A80, &v94), v19 = sub_29AABAB28(&v98, __p[0], &unk_29B4D6118, __p), !pxrInternal__aapl__pxrReserved__::JsValue::IsInt((v19 + 7))))
          {
            v30 = sub_29AABB028();
            std::operator+<char>();
            v41 = std::string::append(&v94, ", key ");
            v42 = *&v41->__r_.__value_.__l.__data_;
            v95.__r_.__value_.__r.__words[2] = v41->__r_.__value_.__r.__words[2];
            *&v95.__r_.__value_.__l.__data_ = v42;
            v41->__r_.__value_.__l.__size_ = 0;
            v41->__r_.__value_.__r.__words[2] = 0;
            v41->__r_.__value_.__r.__words[0] = 0;
            sub_29AAB7290();
            LODWORD(v91.__r_.__value_.__l.__data_) = 10;
            v43 = sub_29AAB97FC(&unk_2A1747A80, &v91);
            v44 = *(v43 + 23);
            if (v44 >= 0)
            {
              v35 = v43;
            }

            else
            {
              v35 = *v43;
            }

            if (v44 >= 0)
            {
              v36 = *(v43 + 23);
            }

            else
            {
              v36 = v43[1];
            }
          }

          else
          {
            sub_29AAB7290();
            LODWORD(v95.__r_.__value_.__l.__data_) = 10;
            __p[0] = sub_29AAB97FC(&unk_2A1747A80, &v95);
            v20 = sub_29AABAB28(&v98, __p[0], &unk_29B4D6118, __p);
            *(a3 + 72) = pxrInternal__aapl__pxrReserved__::JsValue::GetInt(v20 + 7);
            sub_29AAB7290();
            LODWORD(v95.__r_.__value_.__l.__data_) = 11;
            v21 = sub_29AAB97FC(&unk_2A1747A80, &v95);
            if (&v99 == sub_29A01BCCC(&v98, v21) || (sub_29AAB7290(), LODWORD(v94.__r_.__value_.__l.__data_) = 11, __p[0] = sub_29AAB97FC(&unk_2A1747A80, &v94), v22 = sub_29AABAB28(&v98, __p[0], &unk_29B4D6118, __p), !pxrInternal__aapl__pxrReserved__::JsValue::IsBool((v22 + 7))))
            {
              v30 = sub_29AABB028();
              std::operator+<char>();
              v45 = std::string::append(&v94, ", key ");
              v46 = *&v45->__r_.__value_.__l.__data_;
              v95.__r_.__value_.__r.__words[2] = v45->__r_.__value_.__r.__words[2];
              *&v95.__r_.__value_.__l.__data_ = v46;
              v45->__r_.__value_.__l.__size_ = 0;
              v45->__r_.__value_.__r.__words[2] = 0;
              v45->__r_.__value_.__r.__words[0] = 0;
              sub_29AAB7290();
              LODWORD(v91.__r_.__value_.__l.__data_) = 11;
              v47 = sub_29AAB97FC(&unk_2A1747A80, &v91);
              v48 = *(v47 + 23);
              if (v48 >= 0)
              {
                v35 = v47;
              }

              else
              {
                v35 = *v47;
              }

              if (v48 >= 0)
              {
                v36 = *(v47 + 23);
              }

              else
              {
                v36 = v47[1];
              }
            }

            else
            {
              sub_29AAB7290();
              LODWORD(v95.__r_.__value_.__l.__data_) = 11;
              __p[0] = sub_29AAB97FC(&unk_2A1747A80, &v95);
              v23 = sub_29AABAB28(&v98, __p[0], &unk_29B4D6118, __p);
              *(a3 + 76) = pxrInternal__aapl__pxrReserved__::JsValue::GetBool(v23 + 7);
              *(a3 + 136) = 0;
              sub_29AAB7290();
              LODWORD(__p[0]) = 15;
              v24 = sub_29AAB97FC(&unk_2A1747A80, __p);
              if (&v99 == sub_29A01BCCC(&v98, v24))
              {
                if (sub_29A0F2648((a3 + 48), "faceVarying"))
                {
                  *(a3 + 136) = 1;
                }
              }

              else
              {
                sub_29AAB7290();
                LODWORD(v95.__r_.__value_.__l.__data_) = 15;
                __p[0] = sub_29AAB97FC(&unk_2A1747A80, &v95);
                v25 = sub_29AABAB28(&v98, __p[0], &unk_29B4D6118, __p);
                *(a3 + 136) = pxrInternal__aapl__pxrReserved__::JsValue::GetBool(v25 + 7);
              }

              sub_29AAB7290();
              LODWORD(v95.__r_.__value_.__l.__data_) = 12;
              v49 = sub_29AAB97FC(&unk_2A1747A80, &v95);
              if (&v99 == sub_29A01BCCC(&v98, v49) || (sub_29AAB7290(), LODWORD(v94.__r_.__value_.__l.__data_) = 12, __p[0] = sub_29AAB97FC(&unk_2A1747A80, &v94), v50 = sub_29AABAB28(&v98, __p[0], &unk_29B4D6118, __p), !pxrInternal__aapl__pxrReserved__::JsValue::IsString((v50 + 7))))
              {
                v30 = sub_29AABB028();
                std::operator+<char>();
                v75 = std::string::append(&v94, ", key ");
                v76 = *&v75->__r_.__value_.__l.__data_;
                v95.__r_.__value_.__r.__words[2] = v75->__r_.__value_.__r.__words[2];
                *&v95.__r_.__value_.__l.__data_ = v76;
                v75->__r_.__value_.__l.__size_ = 0;
                v75->__r_.__value_.__r.__words[2] = 0;
                v75->__r_.__value_.__r.__words[0] = 0;
                sub_29AAB7290();
                LODWORD(v91.__r_.__value_.__l.__data_) = 12;
                v77 = sub_29AAB97FC(&unk_2A1747A80, &v91);
                v78 = *(v77 + 23);
                if (v78 >= 0)
                {
                  v35 = v77;
                }

                else
                {
                  v35 = *v77;
                }

                if (v78 >= 0)
                {
                  v36 = *(v77 + 23);
                }

                else
                {
                  v36 = v77[1];
                }
              }

              else
              {
                sub_29AAB7290();
                LODWORD(v95.__r_.__value_.__l.__data_) = 12;
                __p[0] = sub_29AAB97FC(&unk_2A1747A80, &v95);
                v51 = sub_29AABAB28(&v98, __p[0], &unk_29B4D6118, __p);
                v52 = pxrInternal__aapl__pxrReserved__::JsValue::GetString((v51 + 7));
                std::string::operator=((a3 + 80), v52);
                sub_29AAB7290();
                LODWORD(v95.__r_.__value_.__l.__data_) = 13;
                v53 = sub_29AAB97FC(&unk_2A1747A80, &v95);
                if (&v99 == sub_29A01BCCC(&v98, v53) || (sub_29AAB7290(), LODWORD(v94.__r_.__value_.__l.__data_) = 13, __p[0] = sub_29AAB97FC(&unk_2A1747A80, &v94), v54 = sub_29AABAB28(&v98, __p[0], &unk_29B4D6118, __p), !pxrInternal__aapl__pxrReserved__::JsValue::IsReal((v54 + 7))))
                {
                  v30 = sub_29AABB028();
                  std::operator+<char>();
                  v79 = std::string::append(&v94, ", key ");
                  v80 = *&v79->__r_.__value_.__l.__data_;
                  v95.__r_.__value_.__r.__words[2] = v79->__r_.__value_.__r.__words[2];
                  *&v95.__r_.__value_.__l.__data_ = v80;
                  v79->__r_.__value_.__l.__size_ = 0;
                  v79->__r_.__value_.__r.__words[2] = 0;
                  v79->__r_.__value_.__r.__words[0] = 0;
                  sub_29AAB7290();
                  LODWORD(v91.__r_.__value_.__l.__data_) = 13;
                  v81 = sub_29AAB97FC(&unk_2A1747A80, &v91);
                  v82 = *(v81 + 23);
                  if (v82 >= 0)
                  {
                    v35 = v81;
                  }

                  else
                  {
                    v35 = *v81;
                  }

                  if (v82 >= 0)
                  {
                    v36 = *(v81 + 23);
                  }

                  else
                  {
                    v36 = v81[1];
                  }
                }

                else
                {
                  sub_29AAB7290();
                  LODWORD(v95.__r_.__value_.__l.__data_) = 13;
                  __p[0] = sub_29AAB97FC(&unk_2A1747A80, &v95);
                  v55 = sub_29AABAB28(&v98, __p[0], &unk_29B4D6118, __p);
                  Real = pxrInternal__aapl__pxrReserved__::JsValue::GetReal(v55 + 7);
                  *(a3 + 104) = Real;
                  sub_29AAB7290();
                  LODWORD(v95.__r_.__value_.__l.__data_) = 14;
                  v57 = sub_29AAB97FC(&unk_2A1747A80, &v95);
                  if (&v99 != sub_29A01BCCC(&v98, v57))
                  {
                    sub_29AAB7290();
                    LODWORD(v94.__r_.__value_.__l.__data_) = 14;
                    __p[0] = sub_29AAB97FC(&unk_2A1747A80, &v94);
                    v58 = sub_29AABAB28(&v98, __p[0], &unk_29B4D6118, __p);
                    if (pxrInternal__aapl__pxrReserved__::JsValue::IsArray((v58 + 7)))
                    {
                      sub_29AAB7290();
                      LODWORD(v94.__r_.__value_.__l.__data_) = 14;
                      v95.__r_.__value_.__r.__words[0] = sub_29AAB97FC(&unk_2A1747A80, &v94);
                      v59 = sub_29AABAB28(&v98, v95.__r_.__value_.__l.__data_, &unk_29B4D6118, &v95);
                      JsArray = pxrInternal__aapl__pxrReserved__::JsValue::GetJsArray(v59 + 7);
                      __p[0] = 0;
                      __p[1] = 0;
                      v97 = 0;
                      sub_29A151C2C(__p, *JsArray, JsArray[1], (JsArray[1] - *JsArray) >> 4);
                      *(a3 + 120) = *(a3 + 112);
                      v61 = __p[0];
                      v62 = __p[1];
                      if (__p[0] == __p[1])
                      {
LABEL_72:
                        v27 = 0;
                      }

                      else
                      {
                        while (1)
                        {
                          v63 = *(v61 + 1);
                          v92 = *v61;
                          v93 = v63;
                          if (v63)
                          {
                            atomic_fetch_add_explicit(&v63->__shared_owners_, 1uLL, memory_order_relaxed);
                          }

                          IsReal = pxrInternal__aapl__pxrReserved__::JsValue::IsReal(&v92);
                          if (IsReal)
                          {
                            v65 = pxrInternal__aapl__pxrReserved__::JsValue::GetReal(&v92);
                            *&v95.__r_.__value_.__l.__data_ = v65;
                            sub_29A0C2184((a3 + 112), &v95);
                          }

                          else
                          {
                            v66 = sub_29AABB028();
                            std::operator+<char>();
                            v67 = std::string::append(&v91, ", key ");
                            v68 = *&v67->__r_.__value_.__l.__data_;
                            v94.__r_.__value_.__r.__words[2] = v67->__r_.__value_.__r.__words[2];
                            *&v94.__r_.__value_.__l.__data_ = v68;
                            v67->__r_.__value_.__l.__size_ = 0;
                            v67->__r_.__value_.__r.__words[2] = 0;
                            v67->__r_.__value_.__r.__words[0] = 0;
                            sub_29AAB7290();
                            v90 = 14;
                            v69 = sub_29AAB97FC(&unk_2A1747A80, &v90);
                            v70 = *(v69 + 23);
                            if (v70 >= 0)
                            {
                              v71 = v69;
                            }

                            else
                            {
                              v71 = *v69;
                            }

                            if (v70 >= 0)
                            {
                              v72 = *(v69 + 23);
                            }

                            else
                            {
                              v72 = v69[1];
                            }

                            v73 = std::string::append(&v94, v71, v72);
                            v74 = *&v73->__r_.__value_.__l.__data_;
                            v95.__r_.__value_.__r.__words[2] = v73->__r_.__value_.__r.__words[2];
                            *&v95.__r_.__value_.__l.__data_ = v74;
                            v73->__r_.__value_.__l.__size_ = 0;
                            v73->__r_.__value_.__r.__words[2] = 0;
                            v73->__r_.__value_.__r.__words[0] = 0;
                            sub_29AA5B750(v66, &v95);
                            if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
                            {
                              operator delete(v95.__r_.__value_.__l.__data_);
                            }

                            if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
                            {
                              operator delete(v94.__r_.__value_.__l.__data_);
                            }

                            if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
                            {
                              operator delete(v91.__r_.__value_.__l.__data_);
                            }
                          }

                          if (v93)
                          {
                            sub_29A014BEC(v93);
                          }

                          if (!IsReal)
                          {
                            break;
                          }

                          v61 += 16;
                          if (v61 == v62)
                          {
                            goto LABEL_72;
                          }
                        }

                        v27 = 301;
                      }

                      v95.__r_.__value_.__r.__words[0] = __p;
                      sub_29A0176E4(&v95);
                      goto LABEL_99;
                    }
                  }

                  v30 = sub_29AABB028();
                  std::operator+<char>();
                  v83 = std::string::append(&v94, ", key ");
                  v84 = *&v83->__r_.__value_.__l.__data_;
                  v95.__r_.__value_.__r.__words[2] = v83->__r_.__value_.__r.__words[2];
                  *&v95.__r_.__value_.__l.__data_ = v84;
                  v83->__r_.__value_.__l.__size_ = 0;
                  v83->__r_.__value_.__r.__words[2] = 0;
                  v83->__r_.__value_.__r.__words[0] = 0;
                  sub_29AAB7290();
                  LODWORD(v91.__r_.__value_.__l.__data_) = 14;
                  v85 = sub_29AAB97FC(&unk_2A1747A80, &v91);
                  v86 = *(v85 + 23);
                  if (v86 >= 0)
                  {
                    v35 = v85;
                  }

                  else
                  {
                    v35 = *v85;
                  }

                  if (v86 >= 0)
                  {
                    v36 = *(v85 + 23);
                  }

                  else
                  {
                    v36 = v85[1];
                  }
                }
              }
            }
          }
        }
      }

      v87 = std::string::append(&v95, v35, v36);
      v88 = *&v87->__r_.__value_.__l.__data_;
      v97 = v87->__r_.__value_.__r.__words[2];
      *__p = v88;
      v87->__r_.__value_.__l.__size_ = 0;
      v87->__r_.__value_.__r.__words[2] = 0;
      v87->__r_.__value_.__r.__words[0] = 0;
      sub_29AA5B750(v30, __p);
      if (SHIBYTE(v97) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v95.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
      {
        v29 = v94.__r_.__value_.__r.__words[0];
        goto LABEL_97;
      }
    }

    v27 = 301;
LABEL_99:
    sub_29A09932C(&v98, v99);
    return v27;
  }

  v26 = sub_29AABB028();
  sub_29A008E78(&v98, "parseJsonAttribute: Not an object!");
  sub_29AA5B750(v26, &v98);
  if (v100 < 0)
  {
    operator delete(v98);
  }

  return 301;
}