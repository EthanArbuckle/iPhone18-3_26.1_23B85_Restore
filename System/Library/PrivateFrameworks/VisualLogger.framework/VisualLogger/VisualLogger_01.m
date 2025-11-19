void sub_271130538(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112D66C(va);
  _Unwind_Resume(a1);
}

void sub_27113054C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    sub_271127178(&v3, *a1, *(a1 + 8));
  }

  else
  {
    v3 = *a1;
  }

  sub_27184BC8C(&v3, "cv3d::", 6, "", 0, 0, 0, &__p);
  sub_27184BC8C(&__p, "kit::", 5, "", 0, 0, 0, a2);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v3.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_8:
    operator delete(v3.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_8;
  }
}

void sub_27113062C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  _Unwind_Resume(exception_object);
}

void sub_271130678(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v5 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v5;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v6 = v3 + 24;
LABEL_3:
    *(a1 + 8) = v6;
    return;
  }

  v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v8 = v7 + 1;
  if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_271135560();
  }

  v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
  if (2 * v9 > v8)
  {
    v8 = 2 * v9;
  }

  if (v9 >= 0x555555555555555)
  {
    v10 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    if (v10 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_2711270EC();
  }

  v11 = 24 * v7;
  *v11 = *a2;
  *(v11 + 16) = *(a2 + 2);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v6 = 24 * v7 + 24;
  v12 = *a1;
  v13 = *(a1 + 8) - *a1;
  v14 = v11 - v13;
  memcpy((v11 - v13), *a1, v13);
  *a1 = v14;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (!v12)
  {
    goto LABEL_3;
  }

  operator delete(v12);
  *(a1 + 8) = v6;
}

uint64_t sub_2711307D4(uint64_t result)
{
  if (*(result + 120) == 1 && *(result + 112) == 1)
  {
    if (*(result + 104) == 1)
    {
      if (*(result + 103) < 0)
      {
        v1 = result;
        operator delete(*(result + 80));
        result = v1;
      }

      if (*(result + 71) < 0)
      {
        v2 = result;
        operator delete(*(result + 48));
        result = v2;
      }
    }

    if (*(result + 40) == 1 && *(result + 39) < 0)
    {
      v3 = result;
      operator delete(*(result + 16));
      return v3;
    }
  }

  return result;
}

uint64_t sub_271130878(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 != -1)
  {
    (off_28812D1B0[v2])(&v4, a1);
  }

  *(a1 + 24) = -1;
  return a1;
}

void sub_2711308D4()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82900] + 16;
  __cxa_throw(exception, MEMORY[0x277D82768], std::exception::~exception);
}

void sub_271130928(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

void sub_27113093C(uint64_t a1, void ***a2)
{
  v2 = *a2;
  if (*a2)
  {
    v4 = a2[1];
    v5 = *a2;
    if (v4 == v2)
    {
      a2[1] = v2;
    }

    else
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 3;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v2);
      v5 = *a2;
      a2[1] = v2;
    }

    operator delete(v5);
  }
}

void *sub_2711309E8(void *result, uint64_t a2, unint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3)
  {
    if (a3 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_271135560();
  }

  return result;
}

void sub_271130B00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, char a11)
{
  sub_2713B296C(&a11);
  *(v11 + 8) = v12;
  sub_2713540AC(&a9);
  _Unwind_Resume(a1);
}

void sub_271130B20(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

__n128 sub_271130B2C@<Q0>(__n128 *a1@<X1>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  a1->n128_u64[1] = 0;
  a1[1].n128_u64[0] = 0;
  a1->n128_u64[0] = 0;
  return result;
}

void sub_271130B58(uint64_t a1@<X0>, uint64_t a2@<X1>, const std::string::value_type *a3@<X2>, std::string::size_type a4@<X3>, std::string *a5@<X8>)
{
  v10 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v10 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  }

  v12 = (v11 - 1) * a4;
  v13 = a2 - a1;
  if (a2 == a1)
  {
    v14 = 0;
    goto LABEL_26;
  }

  v15 = v13 - 24;
  if ((v13 - 24) < 0x60)
  {
    v14 = 0;
    v16 = a1;
    goto LABEL_23;
  }

  v17 = v15 / 0x18;
  v18 = v15 / 0x18 + 1;
  if (v15 < 0x180)
  {
    v14 = 0;
    v19 = 0;
LABEL_18:
    v79 = v18 & 3;
    if ((v18 & 3) == 0)
    {
      v79 = 4;
    }

    v16 = a1 + 24 * (v18 - v79);
    v80 = 0uLL;
    v81 = v14;
    v82 = ~v17 + v19 + v79;
    v83 = (a1 + 24 * v19 + 47);
    v84.i64[0] = 255;
    v84.i64[1] = 255;
    do
    {
      v85 = (v83 - 39);
      v86 = (v83 + 9);
      v87 = vld3q_f64(v85);
      v88 = vld3q_f64(v86);
      v89.i16[0] = *(v83 - 24);
      v89.i16[1] = *v83;
      v89.i16[2] = v83[24];
      v89.i16[3] = v83[48];
      v90 = vmovl_u16(vcltz_s16(vshr_n_s16(vshl_n_s16(v89, 8uLL), 8uLL)));
      v91.i64[0] = v90.u32[0];
      v91.i64[1] = v90.u32[1];
      v92 = vshrq_n_s64(vshlq_n_s64(v91, 0x38uLL), 0x38uLL);
      v91.i64[0] = v90.u32[2];
      v91.i64[1] = v90.u32[3];
      v93 = vshrq_n_s64(vshlq_n_s64(v91, 0x38uLL), 0x38uLL);
      v91.i64[0] = v83[24];
      v91.i64[1] = v83[48];
      v94 = vbicq_s8(v91, v93);
      v91.i64[0] = *(v83 - 24);
      v91.i64[1] = *v83;
      v80 = vaddq_s64(vorrq_s8(vandq_s8(v88, v93), vandq_s8(v94, v84)), v80);
      v81 = vaddq_s64(vorrq_s8(vandq_s8(v87, v92), vandq_s8(vbicq_s8(v91, v92), v84)), v81);
      v83 += 96;
      v82 += 4;
    }

    while (v82);
    v14 = vaddvq_s64(vaddq_s64(v81, v80));
    goto LABEL_23;
  }

  v106 = v17 + 1;
  v107 = v15 / 0x18;
  v20 = 0uLL;
  v21 = 0uLL;
  if ((v18 & 0xF) != 0)
  {
    v22 = v18 & 0xF;
  }

  else
  {
    v22 = 16;
  }

  v108 = v22;
  v23 = v18 - v22;
  v24 = (a1 + 191);
  v109 = v18 - v22;
  v25 = 0uLL;
  v26 = 0uLL;
  v27 = 0uLL;
  v28 = 0uLL;
  v29 = 0uLL;
  v30 = 0uLL;
  do
  {
    v31.i8[0] = *(v24 - 168);
    v32.i8[0] = v31.i8[0];
    v32.i8[1] = *(v24 - 144);
    v32.i8[2] = *(v24 - 120);
    v32.i8[3] = *(v24 - 96);
    v32.i8[4] = *(v24 - 72);
    v32.i8[5] = *(v24 - 48);
    v32.i8[6] = *(v24 - 24);
    v32.i8[7] = *v24;
    v33 = (v24 - 183);
    v34 = (v24 - 135);
    v35 = (v24 - 87);
    v36 = (v24 - 39);
    v37 = (v24 + 9);
    v38 = (v24 + 57);
    v39 = vld3q_f64(v33);
    v40 = vld3q_f64(v34);
    v41 = vld3q_f64(v35);
    v42 = vld3q_f64(v36);
    v110 = v42;
    v43 = vld3q_f64(v37);
    v44 = vld3q_f64(v38);
    v32.i8[8] = v24[24];
    v32.i8[9] = v24[48];
    v32.i8[10] = v24[72];
    v32.i8[11] = v24[96];
    v45.i32[0] = v32.i32[2];
    v32.i8[12] = v24[120];
    v32.i8[13] = v24[144];
    v45.i16[2] = v32.i16[6];
    v32.i8[14] = v24[168];
    v45.i8[6] = v32.i8[14];
    v32.i8[15] = v24[192];
    v31.i8[1] = v32.i8[1];
    v31.i8[2] = v32.i8[2];
    v46 = vcltzq_s8(v32);
    v47 = vmovl_high_s8(v46);
    v31.i8[3] = *(v24 - 96);
    v31.i8[4] = *(v24 - 72);
    v48 = vmovl_s8(*v46.i8);
    v49 = vmovl_s16(*v48.i8);
    v31.i8[5] = *(v24 - 48);
    v31.i8[6] = *(v24 - 24);
    v50.i64[0] = v49.i32[0];
    v50.i64[1] = v49.i32[1];
    v51 = v50;
    v31.i8[7] = *v24;
    v52 = vmovl_u8(v31);
    v53 = vmovl_u16(*v52.i8);
    v50.i64[0] = v53.u32[0];
    v50.i64[1] = v53.u32[1];
    v54 = vbslq_s8(v51, v39, v50);
    v55 = vmovl_s16(*v47.i8);
    v45.i8[7] = v24[192];
    v56 = vmovl_u8(v45);
    v57 = vmovl_u16(*v56.i8);
    v50.i64[0] = v55.i32[0];
    v50.i64[1] = v55.i32[1];
    v58 = v50;
    v50.i64[0] = v57.u32[0];
    v50.i64[1] = v57.u32[1];
    v59 = vbslq_s8(v58, v43, v50);
    v60 = vmovl_high_s16(v48);
    v50.i64[0] = v49.i32[2];
    v50.i64[1] = v49.i32[3];
    v61 = v50;
    v50.i64[0] = v53.u32[2];
    v50.i64[1] = v53.u32[3];
    v62 = vbslq_s8(v61, v40, v50);
    v50.i64[0] = v60.i32[0];
    v50.i64[1] = v60.i32[1];
    v63 = v50;
    v64 = (v24 + 105);
    v65 = (v24 + 153);
    v66 = vmovl_high_u16(v52);
    v50.i64[0] = v66.u32[0];
    v50.i64[1] = v66.u32[1];
    v67 = vbslq_s8(v63, v41, v50);
    v68 = vld3q_f64(v64);
    v69 = vld3q_f64(v65);
    v50.i64[0] = v55.i32[2];
    v50.i64[1] = v55.i32[3];
    v70 = v50;
    v50.i64[0] = v57.u32[2];
    v50.i64[1] = v57.u32[3];
    v71 = vbslq_s8(v70, v44, v50);
    v72 = vmovl_high_s16(v47);
    v73 = vmovl_high_u16(v56);
    v50.i64[0] = v72.i32[0];
    v50.i64[1] = v72.i32[1];
    v74 = v50;
    v50.i64[0] = v73.u32[0];
    v50.i64[1] = v73.u32[1];
    v75 = vbslq_s8(v74, v68, v50);
    v50.i64[0] = v60.i32[2];
    v50.i64[1] = v60.i32[3];
    v76 = v50;
    v50.i64[0] = v66.u32[2];
    v50.i64[1] = v66.u32[3];
    v77 = vbslq_s8(v76, v110, v50);
    v50.i64[0] = v72.i32[2];
    v50.i64[1] = v72.i32[3];
    v78 = v50;
    v50.i64[0] = v73.u32[2];
    v50.i64[1] = v73.u32[3];
    v30 = vaddq_s64(vbslq_s8(v78, v69, v50), v30);
    v26 = vaddq_s64(v77, v26);
    v29 = vaddq_s64(v75, v29);
    v28 = vaddq_s64(v71, v28);
    v25 = vaddq_s64(v67, v25);
    v21 = vaddq_s64(v62, v21);
    v27 = vaddq_s64(v59, v27);
    v20 = vaddq_s64(v54, v20);
    v24 += 384;
    v23 -= 16;
  }

  while (v23);
  v14 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v20, v27), vaddq_s64(v25, v29)), vaddq_s64(vaddq_s64(v21, v28), vaddq_s64(v26, v30))));
  if (v108 >= 5)
  {
    v19 = v109;
    v18 = v106;
    v17 = v107;
    goto LABEL_18;
  }

  v16 = a1 + 24 * v109;
  do
  {
LABEL_23:
    v95 = *(v16 + 23);
    if ((v95 & 0x80u) != 0)
    {
      v95 = *(v16 + 8);
    }

    v14 += v95;
    v16 += 24;
  }

  while (v16 != a2);
LABEL_26:
  v96 = v14 + v12;
  a5->__r_.__value_.__r.__words[0] = 0;
  a5->__r_.__value_.__l.__size_ = 0;
  a5->__r_.__value_.__r.__words[2] = 0;
  if ((v14 + v12) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  if (v96 >= 0x17)
  {
    v97 = v96 | 7;
    if (v97 == 23)
    {
      v98 = 24;
    }

    else
    {
      v98 = v97;
    }

    sub_27113107C(a5, v98);
  }

  if (v13 >= 1)
  {
    v99 = *(a1 + 23);
    v100 = v99 >= 0 ? a1 : *a1;
    v101 = v99 >= 0 ? *(a1 + 23) : *(a1 + 8);
    std::string::append(a5, v100, v101);
    if (v10 >= 2)
    {
      for (i = a1 + 24; i != a2; i += 24)
      {
        std::string::append(a5, a3, a4);
        v103 = *(i + 23);
        if (v103 >= 0)
        {
          v104 = i;
        }

        else
        {
          v104 = *i;
        }

        if (v103 >= 0)
        {
          v105 = *(i + 23);
        }

        else
        {
          v105 = *(i + 8);
        }

        std::string::append(a5, v104, v105);
      }
    }
  }
}

void sub_271131058(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_27113107C(_BYTE *__dst, unint64_t a2)
{
  v3 = __dst[23];
  if ((v3 & 0x8000000000000000) == 0)
  {
    v4 = 22;
    LOBYTE(v5) = __dst[23];
    v6 = a2 < 0x17;
    if (a2 < 0x17)
    {
      goto LABEL_3;
    }

LABEL_6:
    if (v4 < a2)
    {
      operator new();
    }

    operator new();
  }

  v3 = *(__dst + 1);
  v8 = *(__dst + 2);
  v4 = (v8 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  v5 = HIBYTE(v8);
  v6 = a2 < 0x17;
  if (a2 >= 0x17)
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = *__dst;
  if ((v5 & 0x80) == 0)
  {
    v9 = v5 + 1;
LABEL_9:
    memmove(__dst, v7, v9);
    goto LABEL_10;
  }

  v10 = *(__dst + 1);
  v6 = 1;
  v9 = v10 + 1;
  if (v10 != -1)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (v6)
  {
    operator delete(v7);
  }

  __dst[23] = v3 & 0x7F;
}

void sub_271131208(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void sub_271131230(uint64_t a1@<X0>, uint64_t a2@<X1>, const std::string::value_type *a3@<X2>, std::string::size_type a4@<X3>, std::string *a5@<X8>)
{
  v10 = (a2 - a1) >> 4;
  if (v10 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = (a2 - a1) >> 4;
  }

  v12 = (v11 - 1) * a4;
  v13 = a2 - a1;
  if (a2 == a1)
  {
    v14 = 0;
  }

  else
  {
    if ((v13 - 16) >= 0x40)
    {
      v16 = ((v13 - 16) >> 4) + 1;
      v17 = v16 & 3;
      if ((v16 & 3) == 0)
      {
        v17 = 4;
      }

      v18 = v16 - v17;
      v15 = a1 + 16 * v18;
      v19 = (a1 + 40);
      v20 = 0uLL;
      v21 = 0uLL;
      do
      {
        v22 = v19 - 4;
        v23 = vld2q_f64(v22);
        v24 = vld2q_f64(v19);
        v20 = vaddq_s64(v23, v20);
        v21 = vaddq_s64(v24, v21);
        v19 += 8;
        v18 -= 4;
      }

      while (v18);
      v14 = vaddvq_s64(vaddq_s64(v21, v20));
    }

    else
    {
      v14 = 0;
      v15 = a1;
    }

    do
    {
      v14 += *(v15 + 8);
      v15 += 16;
    }

    while (v15 != a2);
  }

  v25 = v14 + v12;
  a5->__r_.__value_.__r.__words[0] = 0;
  a5->__r_.__value_.__l.__size_ = 0;
  a5->__r_.__value_.__r.__words[2] = 0;
  if (v25 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  if (v25 >= 0x17)
  {
    v26 = v25 | 7;
    if (v26 == 23)
    {
      v27 = 24;
    }

    else
    {
      v27 = v26;
    }

    sub_27113107C(a5, v27);
  }

  if (v10 >= 1)
  {
    std::string::append(a5, *a1, *(a1 + 8));
    if (v13 != 16)
    {
      for (i = a1 + 16; i != a2; i += 16)
      {
        std::string::append(a5, a3, a4);
        v29 = *i;
        v30 = *(i + 8);
        std::string::append(a5, v29, v30);
      }
    }
  }
}

void sub_2711313A8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711313CC(uint64_t *a1, uint64_t a2)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  *(v18 + 7) = *(a2 + 15);
  v4 = *a2;
  v18[0] = *(a2 + 8);
  v3 = v18[0];
  v5 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v13 = v4;
  *v14 = v3;
  *&v14[7] = *(v18 + 7);
  v15 = v5;
  memset(v18, 0, 15);
  v6 = a1[1];
  v7 = strlen(v6);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v17 = v7;
  if (v7)
  {
    memmove(&__p, v6, v7);
    *(&__p + v8) = 0;
    v9 = *(v2 + 24);
    if (v9 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v9 = *(v2 + 24);
  if (v9 != -1)
  {
LABEL_8:
    (off_28812D1B0[v9])(&v12, v2);
  }

LABEL_9:
  *(v2 + 24) = -1;
  sub_2711309E8(v2, &v13, 2uLL);
  *(v2 + 24) = 2;
  if (v17 < 0)
  {
    operator delete(__p);
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((v15 & 0x80000000) == 0)
  {
LABEL_11:
    v10 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v13);
  v11 = *MEMORY[0x277D85DE8];
}

void sub_27113158C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_2711315E8(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_2711319E8(a2, v3);
    *(a2 + 8) = result;
  }

  else
  {
    v5 = strlen(*(*a1 + 32));
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_271120DA8();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      operator new();
    }

    v4[23] = v5;
    if (v5)
    {
      memmove(v4, v3, v5);
    }

    v4[v6] = 0;
    result = v4 + 24;
    *(a2 + 8) = v4 + 24;
    *(a2 + 8) = v4 + 24;
  }

  return result;
}

size_t sub_2711316E8(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_28812D1B0[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

void sub_2711317DC(uint64_t *a1, uint64_t a2)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  *(v18 + 7) = *(a2 + 15);
  v4 = *a2;
  v18[0] = *(a2 + 8);
  v3 = v18[0];
  v5 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v13 = v4;
  *v14 = v3;
  *&v14[7] = *(v18 + 7);
  v15 = v5;
  memset(v18, 0, 15);
  v6 = a1[1];
  v7 = strlen(v6);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v17 = v7;
  if (v7)
  {
    memmove(&__p, v6, v7);
    *(&__p + v8) = 0;
    v9 = *(v2 + 24);
    if (v9 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v9 = *(v2 + 24);
  if (v9 != -1)
  {
LABEL_8:
    (off_28812D1B0[v9])(&v12, v2);
  }

LABEL_9:
  *(v2 + 24) = -1;
  sub_2711309E8(v2, &v13, 2uLL);
  *(v2 + 24) = 2;
  if (v17 < 0)
  {
    operator delete(__p);
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((v15 & 0x80000000) == 0)
  {
LABEL_11:
    v10 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v13);
  v11 = *MEMORY[0x277D85DE8];
}

void sub_27113199C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_2711319E8(uint64_t a1, const char *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_271135560();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_2711270EC();
  }

  v6 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v14 = v6;
  v15 = v6;
  v7 = strlen(a2);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v6[23] = v7;
  if (v7)
  {
    memmove(v6, a2, v7);
  }

  v6[v8] = 0;
  v9 = v6 + 24;
  v10 = *(a1 + 8) - *a1;
  v11 = &v6[-v10];
  memcpy(&v14[-v10], *a1, v10);
  v12 = *a1;
  *a1 = v11;
  *(a1 + 8) = v15 + 24;
  *(a1 + 16) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v9;
}

void sub_271131B84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

uint64_t sub_271131BB4(uint64_t a1, const char **a2)
{
  v4 = *(a1 + 24);
  if (v4 != -1)
  {
    (off_28812D1B0[v4])(&v9, a1);
  }

  *(a1 + 24) = -1;
  v5 = *a2;
  v6 = strlen(*a2);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v6;
  if (v6)
  {
    memmove(a1, v5, v6);
  }

  *(a1 + v7) = 0;
  *(a1 + 24) = 1;
  return a1;
}

void sub_271131CB0(uint64_t *a1, uint64_t a2)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  *(v18 + 7) = *(a2 + 15);
  v4 = *a2;
  v18[0] = *(a2 + 8);
  v3 = v18[0];
  v5 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v13 = v4;
  *v14 = v3;
  *&v14[7] = *(v18 + 7);
  v15 = v5;
  memset(v18, 0, 15);
  v6 = *a1[1];
  v7 = strlen(v6);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v17 = v7;
  if (v7)
  {
    memmove(&__p, v6, v7);
    *(&__p + v8) = 0;
    v9 = *(v2 + 24);
    if (v9 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v9 = *(v2 + 24);
  if (v9 != -1)
  {
LABEL_8:
    (off_28812D1B0[v9])(&v12, v2);
  }

LABEL_9:
  *(v2 + 24) = -1;
  sub_2711309E8(v2, &v13, 2uLL);
  *(v2 + 24) = 2;
  if (v17 < 0)
  {
    operator delete(__p);
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((v15 & 0x80000000) == 0)
  {
LABEL_11:
    v10 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v13);
  v11 = *MEMORY[0x277D85DE8];
}

void sub_271131E74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_271131EC0(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_271131FC0(a2, v3);
    *(a2 + 8) = result;
  }

  else
  {
    v5 = *v3;
    v6 = strlen(*v3);
    if (v6 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_271120DA8();
    }

    v7 = v6;
    if (v6 >= 0x17)
    {
      operator new();
    }

    v4[23] = v6;
    if (v6)
    {
      memmove(v4, v5, v6);
    }

    v4[v7] = 0;
    result = v4 + 24;
    *(a2 + 8) = v4 + 24;
    *(a2 + 8) = v4 + 24;
  }

  return result;
}

_BYTE *sub_271131FC0(uint64_t a1, const char **a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_271135560();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v4 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v4 = v2;
  }

  if (v4)
  {
    if (v4 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_2711270EC();
  }

  v5 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v14 = v5;
  v15 = v5;
  v6 = *a2;
  v7 = strlen(*a2);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v5[23] = v7;
  if (v7)
  {
    memmove(v5, v6, v7);
  }

  v5[v8] = 0;
  v9 = v5 + 24;
  v10 = *(a1 + 8) - *a1;
  v11 = &v14[-v10];
  memcpy(&v14[-v10], *a1, v10);
  v12 = *a1;
  *a1 = v11;
  *(a1 + 8) = v15 + 24;
  *(a1 + 16) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v9;
}

void sub_271132160(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

uint64_t VZRetain(uint64_t result)
{
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

uint64_t VZRelease(uint64_t result)
{
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t VZGetTypeID(uint64_t a1)
{
  if (!a1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/VL/VisualLogger/VisualLogger/src/VZBase.cpp", 43, "vz", 2uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v1 = qword_28087C408, v2 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_9:
        qword_28087C420(*algn_28087C428, "vz", 2, "", 0);
        a1 = 0;
        goto LABEL_10;
      }
    }

    else
    {
      v1 = qword_28087C408;
      v2 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_13;
      }
    }

    do
    {
      v4 = *v1;
      v3 = *(v1 + 8);
      v1 += 16;
      v4(v3, "vz", 2, "", 0);
    }

    while (v1 != v2);
    if (byte_28087C430)
    {
      goto LABEL_9;
    }

LABEL_13:
    abort();
  }

LABEL_10:
  v5 = *(*a1 + 32);

  return v5();
}

uint64_t VZEqual(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    return (*(*a1 + 40))();
  }

  else
  {
    return (a1 | a2) == 0;
  }
}

uint64_t VZCopyDescription(uint64_t a1)
{
  if (!a1)
  {
    v5 = 4;
    strcpy(bytes, "null");
    v3 = CFStringCreateWithBytes(*MEMORY[0x277CBECE8], bytes, 4, 0x8000100u, 0);
    sub_2715CB2C0(&v6, v3);
  }

  v1 = *(*a1 + 48);

  return v1();
}

void sub_2711324FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  sub_27112F828(&a16);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t VZGetRetainCount(uint64_t result)
{
  if (result)
  {
    return (*(*result + 56))();
  }

  return result;
}

uint64_t sub_271132554(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_2711325CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_271132648(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

void sub_2711326D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t VZBlobGetTypeID()
{
  if (atomic_load_explicit(&qword_280879BC8, memory_order_acquire))
  {
    return qword_280879BC0;
  }

  if (__cxa_guard_acquire(&qword_280879BC8))
  {
    qword_280879BC0 = sub_27112B4B8();
    __cxa_guard_release(&qword_280879BC8);
  }

  return qword_280879BC0;
}

uint64_t VZDataCreateWithBlob(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v82 = *MEMORY[0x277D85DE8];
  if (!sub_2711331C0("VZDataCreateWithBlob", a1, a3))
  {
    sub_27113347C(a2, &v20);
    v18 = &v19;
    v19 = a3;
    LOBYTE(v49) = 0;
    v81 = 0;
    if (v48 != 1)
    {
      goto LABEL_20;
    }

    v49 = v20;
    v50 = v21;
    LOBYTE(v51) = 0;
    v53 = 0;
    if (v24 == 1)
    {
      v51 = *v22;
      v52 = v23;
      v22[1] = 0;
      v23 = 0;
      v22[0] = 0;
      v53 = 1;
    }

    v54 = v25;
    v55 = v26;
    LOBYTE(v56) = 0;
    v58 = 0;
    if (v29 == 1)
    {
      v56 = v27;
      v57 = v28;
      v28 = 0;
      v27 = 0uLL;
      v58 = 1;
      LOBYTE(v59) = 0;
      v63 = 0;
      if (v32 != 1)
      {
LABEL_8:
        LOBYTE(v64[0]) = 0;
        v66 = 0;
        if (v35 != 1)
        {
          goto LABEL_9;
        }

        goto LABEL_13;
      }
    }

    else
    {
      LOBYTE(v59) = 0;
      v63 = 0;
      if (v32 != 1)
      {
        goto LABEL_8;
      }
    }

    _X0 = 0;
    _X1 = 0;
    v60 = v31;
    v59 = *v30;
    v30[1] = 0;
    v31 = 0;
    v30[0] = 0;
    __asm { CASPAL          X0, X1, X0, X1, [X8] }

    v61 = _X0;
    v62 = 0;
    v63 = 1;
    LOBYTE(v64[0]) = 0;
    v66 = 0;
    if (v35 != 1)
    {
LABEL_9:
      LOBYTE(v67) = 0;
      v80 = 0;
      if (v47 != 1)
      {
        goto LABEL_19;
      }

      goto LABEL_14;
    }

LABEL_13:
    *v64 = *v33;
    v65 = v34;
    v34 = 0;
    v33[1] = 0;
    v33[0] = 0;
    v66 = 1;
    LOBYTE(v67) = 0;
    v80 = 0;
    if (v47 != 1)
    {
LABEL_19:
      v81 = 1;
LABEL_20:
      sub_2711BD664((a1 + 16));
    }

LABEL_14:
    LOBYTE(v67) = 0;
    v69 = 0;
    if (v38 == 1)
    {
      v67 = v36;
      v68 = v37;
      v37 = 0;
      v36 = 0uLL;
      v69 = 1;
      LOBYTE(v70) = 0;
      v74 = 0;
      if (v41 != 1)
      {
LABEL_16:
        LOBYTE(__p) = 0;
        v77 = 0;
        if (v44 != 1)
        {
LABEL_18:
          v78 = v45;
          v79 = v46;
          v80 = 1;
          goto LABEL_19;
        }

LABEL_17:
        __p = *v42;
        v76 = v43;
        v43 = 0;
        v42[0] = 0;
        v42[1] = 0;
        v77 = 1;
        goto LABEL_18;
      }
    }

    else
    {
      LOBYTE(v70) = 0;
      v74 = 0;
      if (v41 != 1)
      {
        goto LABEL_16;
      }
    }

    _X0 = 0;
    _X1 = 0;
    v70 = *v39;
    v71 = v40;
    v40 = 0;
    v39[0] = 0;
    v39[1] = 0;
    __asm { CASPAL          X0, X1, X0, X1, [X9] }

    v72 = _X0;
    v73 = 0;
    v74 = 1;
    LOBYTE(__p) = 0;
    v77 = 0;
    if (v44 != 1)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v16 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_271132F88(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::logic_error a10, int a11, __int16 a12, char a13, char a14, char a15, __int128 a16, __int128 a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::runtime_error __p, int a30, __int16 a31, char a32, char a33, char a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t *a53)
{
  if (a2)
  {
    sub_2711307D4(&a37);
    sub_271137BDC(&STACK[0x4A0]);
    if (a2 == 3)
    {
      exception_ptr = __cxa_get_exception_ptr(a1);
      std::logic_error::logic_error(&a10, exception_ptr);
      a10.__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_begin_catch(a1);
      a9 = std::logic_error::what(&a10);
      sub_27113604C(&__p, &a9);
      sub_271369D54(&__p, &a16);
      *&STACK[0x4A0] = a16;
      sub_27184A2B4(&STACK[0x4B0], &a17);
      LOBYTE(STACK[0x518]) = 1;
      sub_271135A88(&a53, &STACK[0x4A0]);
      sub_2711307D4(&STACK[0x4A0]);
      sub_27112D71C(&a16);
      if (a34 == 1 && a33 < 0)
      {
        operator delete(__p.__vftable);
      }

      MEMORY[0x2743BE520](&a10);
      __cxa_end_catch();
    }

    else if (a2 == 2)
    {
      v56 = __cxa_get_exception_ptr(a1);
      sub_271135FD0(&__p, v56);
      __cxa_begin_catch(a1);
      v57 = (a35 + 48);
      if (*(a35 + 71) < 0)
      {
        v57 = *v57;
      }

      a9 = v57;
      sub_27113604C(&a10, &a9);
      sub_27136A868(&a10, &a16);
      *&STACK[0x4A0] = a16;
      sub_27184A2B4(&STACK[0x4B0], &a17);
      LOBYTE(STACK[0x518]) = 1;
      sub_271135A88(&a53, &STACK[0x4A0]);
      sub_2711307D4(&STACK[0x4A0]);
      sub_27112D71C(&a16);
      if (a15 == 1 && a14 < 0)
      {
        operator delete(a10.__vftable);
      }

      MEMORY[0x2743BEBB0](&__p);
      __cxa_end_catch();
    }

    else
    {
      __cxa_begin_catch(a1);
      LOBYTE(STACK[0x4A0]) = 0;
      LOBYTE(STACK[0x518]) = 0;
      sub_271135A88(&a53, &STACK[0x4A0]);
      sub_2711307D4(&STACK[0x4A0]);
      __cxa_end_catch();
    }

    JUMPOUT(0x271132DF8);
  }

  _Unwind_Resume(a1);
}

BOOL sub_2711331C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    if ((atomic_load_explicit(&qword_2808777F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2808777F0))
    {
      sub_271134EB4(&xmmword_2808777D8);
      __cxa_guard_release(&qword_2808777F0);
    }

    if (byte_2808777EF < 0)
    {
      sub_271127178(v7, xmmword_2808777D8, *(&xmmword_2808777D8 + 1));
    }

    else
    {
      *v7 = xmmword_2808777D8;
      v8 = unk_2808777E8;
    }

    v9 = 1;
    sub_27112D7CC(a1, v7, &v10);
    v21 = v10;
    LOBYTE(v22) = 0;
    v31 = 0;
    if (v20 == 1)
    {
      v24 = 0;
      if (v13 == 1)
      {
        v22 = v11;
        v23 = v12;
        v12 = 0;
        v11 = 0uLL;
        v24 = 1;
      }

      LOBYTE(v25) = 0;
      v30 = 0;
      if (v19 == 1)
      {
        v26 = v15;
        v25 = *v14;
        v14[0] = 0;
        v14[1] = 0;
        v27 = v16;
        *__p = *v17;
        v29 = v18;
        v15 = 0;
        v17[0] = 0;
        v17[1] = 0;
        v18 = 0;
        v30 = 1;
      }

      v31 = 1;
    }

    v32 = 0;
    sub_27112B960(&v21, a3);
    if ((v32 & 1) == 0 && v31 == 1)
    {
      if (v30 == 1)
      {
        if (SHIBYTE(v29) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v26) < 0)
        {
          operator delete(v25);
        }
      }

      if (v24 == 1 && SHIBYTE(v23) < 0)
      {
        operator delete(v22);
      }
    }

    if (v20 == 1)
    {
      if (v19 == 1)
      {
        if (SHIBYTE(v18) < 0)
        {
          operator delete(v17[0]);
        }

        if (SHIBYTE(v15) < 0)
        {
          operator delete(v14[0]);
        }
      }

      if (v13 == 1 && SHIBYTE(v12) < 0)
      {
        operator delete(v11);
      }
    }

    if (v9 == 1 && SHIBYTE(v8) < 0)
    {
      operator delete(v7[0]);
    }
  }

  return a2 == 0;
}

void sub_27113343C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  sub_27112E024(&a32);
  sub_27112D71C(&a17);
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_27113347C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    *a2 = *(a1 + 32);
    *(a2 + 16) = *(a1 + 48);
    sub_27113523C(a2 + 32, (a1 + 64));
    *(a2 + 224) = 0;
    *(a2 + 384) = 0;
    if (*(a1 + 416) == 1)
    {
      sub_271135578(a2 + 224, (a1 + 256));
      *(a2 + 320) = 0;
      *(a2 + 344) = 0;
      if (*(a1 + 376) == 1)
      {
        if (*(a1 + 375) < 0)
        {
          sub_271127178((a2 + 320), *(a1 + 352), *(a1 + 360));
        }

        else
        {
          *(a2 + 320) = *(a1 + 352);
          *(a2 + 336) = *(a1 + 368);
        }

        *(a2 + 344) = 1;
      }

      result = *(a1 + 384);
      *(a2 + 352) = result;
      *(a2 + 368) = *(a1 + 400);
      *(a2 + 384) = 1;
      *(a2 + 400) = 1;
    }

    else
    {
      *(a2 + 400) = 1;
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 400) = 0;
  }

  return result;
}

void sub_27113357C(void *a1)
{
  if (*(v1 + 344) == 1 && *(v1 + 343) < 0)
  {
    operator delete(*(v1 + 320));
  }

  sub_271134C34(v2);
  sub_271134B90(v2);
  sub_271134CBC(v1 + 32);
  __cxa_begin_catch(a1);
  v4 = sub_271135110();
  v5 = sub_2711351A4();
  sub_27112E8EC(v4, v5, 0);
  *v1 = 0;
  *(v1 + 400) = 0;
  __cxa_end_catch();
  JUMPOUT(0x271133514);
}

uint64_t VZDataGetBlob(uint64_t a1, uint64_t a2)
{
  if (sub_271133B3C("VZDataGetBlob", a1, a2))
  {
    return 0;
  }

  result = *(a1 + 584);
  if (!result)
  {
    v5 = &v6;
    v6 = a2;
    sub_2711BE0A0(a1 + 32);
  }

  return result;
}

void sub_27113392C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, const char *a9, std::logic_error a10, int a11, __int16 a12, char a13, char a14, char a15, __int128 a16, __int128 a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::runtime_error __p, int a30, __int16 a31, char a32, char a33, char a34, uint64_t a35, uint64_t a36, char a37)
{
  sub_2711307D4(&a37);
  sub_27113827C(v37 - 192);
  if (a2 == 3)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    std::logic_error::logic_error(&a10, exception_ptr);
    a10.__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_begin_catch(a1);
    a9 = std::logic_error::what(&a10);
    sub_27113604C(&__p, &a9);
    sub_271369D54(&__p, &a16);
    *(v37 - 192) = a16;
    sub_27184A2B4(v37 - 176, &a17);
    *(v37 - 72) = 1;
    sub_271137EE8((v37 - 64), v37 - 192);
    sub_2711307D4(v37 - 192);
    sub_27112D71C(&a16);
    if (a34 == 1 && a33 < 0)
    {
      operator delete(__p.__vftable);
    }

    MEMORY[0x2743BE520](&a10);
    __cxa_end_catch();
  }

  else if (a2 == 2)
  {
    v41 = __cxa_get_exception_ptr(a1);
    sub_271135FD0(&__p, v41);
    __cxa_begin_catch(a1);
    v42 = (a35 + 48);
    if (*(a35 + 71) < 0)
    {
      v42 = *v42;
    }

    a9 = v42;
    sub_27113604C(&a10, &a9);
    sub_27136A868(&a10, &a16);
    *(v37 - 192) = a16;
    sub_27184A2B4(v37 - 176, &a17);
    *(v37 - 72) = 1;
    sub_271137EE8((v37 - 64), v37 - 192);
    sub_2711307D4(v37 - 192);
    sub_27112D71C(&a16);
    if (a15 == 1 && a14 < 0)
    {
      operator delete(a10.__vftable);
    }

    MEMORY[0x2743BEBB0](&__p);
    __cxa_end_catch();
  }

  else
  {
    __cxa_begin_catch(a1);
    *(v37 - 192) = 0;
    *(v37 - 72) = 0;
    sub_271137EE8((v37 - 64), v37 - 192);
    sub_2711307D4(v37 - 192);
    __cxa_end_catch();
  }

  JUMPOUT(0x27113390CLL);
}

BOOL sub_271133B3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    if ((atomic_load_explicit(&qword_280877890, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877890))
    {
      sub_271137C8C(&xmmword_280877878);
      __cxa_guard_release(&qword_280877890);
    }

    if (byte_28087788F < 0)
    {
      sub_271127178(v7, xmmword_280877878, *(&xmmword_280877878 + 1));
    }

    else
    {
      *v7 = xmmword_280877878;
      v8 = unk_280877888;
    }

    v9 = 1;
    sub_27112D7CC(a1, v7, &v10);
    v21 = v10;
    LOBYTE(v22) = 0;
    v31 = 0;
    if (v20 == 1)
    {
      v24 = 0;
      if (v13 == 1)
      {
        v22 = v11;
        v23 = v12;
        v12 = 0;
        v11 = 0uLL;
        v24 = 1;
      }

      LOBYTE(v25) = 0;
      v30 = 0;
      if (v19 == 1)
      {
        v26 = v15;
        v25 = *v14;
        v14[0] = 0;
        v14[1] = 0;
        v27 = v16;
        *__p = *v17;
        v29 = v18;
        v15 = 0;
        v17[0] = 0;
        v17[1] = 0;
        v18 = 0;
        v30 = 1;
      }

      v31 = 1;
    }

    v32 = 0;
    sub_27112B960(&v21, a3);
    if ((v32 & 1) == 0 && v31 == 1)
    {
      if (v30 == 1)
      {
        if (SHIBYTE(v29) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v26) < 0)
        {
          operator delete(v25);
        }
      }

      if (v24 == 1 && SHIBYTE(v23) < 0)
      {
        operator delete(v22);
      }
    }

    if (v20 == 1)
    {
      if (v19 == 1)
      {
        if (SHIBYTE(v18) < 0)
        {
          operator delete(v17[0]);
        }

        if (SHIBYTE(v15) < 0)
        {
          operator delete(v14[0]);
        }
      }

      if (v13 == 1 && SHIBYTE(v12) < 0)
      {
        operator delete(v11);
      }
    }

    if (v9 == 1 && SHIBYTE(v8) < 0)
    {
      operator delete(v7[0]);
    }
  }

  return a2 == 0;
}

void sub_271133DB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  sub_27112E024(&a32);
  sub_27112D71C(&a17);
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

_OWORD *VZBlobCreateWithBytes(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v31 = &v32;
  v32 = a3;
  sub_2711BD180(a1, a2, &v20);
  v4 = v30;
  if ((v30 & 1) == 0)
  {
    v9 = v20;
    LOBYTE(v10) = 0;
    v18 = 0;
    if (v29 == 1)
    {
      sub_27112F6CC(&v10, &v21);
      v18 = 1;
    }

    v19 = 1;
    sub_271138670(&v31, &v9);
    if (v19 == 1 && v18 == 1)
    {
      if (v17 == 1)
      {
        if (v16 < 0)
        {
          operator delete(__p);
        }

        if (v14 < 0)
        {
          operator delete(v13);
        }
      }

      if (v12 == 1 && v11 < 0)
      {
        operator delete(v10);
        if (v30 == 1)
        {
          goto LABEL_31;
        }

LABEL_35:
        if (v29 == 1)
        {
          if (v28 == 1)
          {
            if (v27 < 0)
            {
              operator delete(v26);
            }

            if (v25 < 0)
            {
              operator delete(v24);
            }
          }

          if (v23 == 1 && v22 < 0)
          {
            operator delete(v21);
          }
        }

        goto LABEL_44;
      }
    }

LABEL_30:
    if (v30 != 1)
    {
      goto LABEL_35;
    }

    goto LABEL_31;
  }

  v5 = sub_2711381C0(&v20);
  v6 = operator new(0x28uLL, MEMORY[0x277D826F0]);
  if (!v6)
  {
    LOBYTE(v9) = 0;
    v19 = 0;
    sub_271138670(&v31, &v9);
    if (v19 == 1)
    {
      if (v18 != 1)
      {
        v3 = 0;
        if (v30 != 1)
        {
          goto LABEL_35;
        }

        goto LABEL_31;
      }

      if (v17 == 1)
      {
        if (v16 < 0)
        {
          operator delete(__p);
        }

        if (v14 < 0)
        {
          operator delete(v13);
        }
      }

      v3 = 0;
      if (v12 == 1 && v11 < 0)
      {
        operator delete(v10);
        v3 = 0;
        if (v30 == 1)
        {
          goto LABEL_31;
        }

        goto LABEL_35;
      }
    }

    else
    {
      v3 = 0;
    }

    goto LABEL_30;
  }

  v3 = v6;
  v6[1] = *v5;
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v6 + 8) = 1;
  *v6 = &unk_288119278;
  *(v6 + 1) = &unk_2881192C8;
  if (v30 != 1)
  {
    goto LABEL_35;
  }

LABEL_31:
  v7 = *(&v20 + 1);
  if (*(&v20 + 1) && !atomic_fetch_add((*(&v20 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

LABEL_44:
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  return v3;
}

void sub_2711340D4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, const char *a9, std::logic_error a10, int a11, __int16 a12, char a13, char a14, char a15, __int128 a16, __int128 a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::runtime_error __p, int a30, __int16 a31, char a32, char a33, char a34, uint64_t a35, uint64_t a36, char a37)
{
  sub_2711307D4(&a37);
  sub_27113827C(v37 - 176);
  if (a2 == 3)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    std::logic_error::logic_error(&a10, exception_ptr);
    a10.__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_begin_catch(a1);
    a9 = std::logic_error::what(&a10);
    sub_27113604C(&__p, &a9);
    sub_271369D54(&__p, &a16);
    *(v37 - 176) = a16;
    sub_27184A2B4(v37 - 160, &a17);
    *(v37 - 56) = 1;
    sub_271138670((v37 - 48), v37 - 176);
    sub_2711307D4(v37 - 176);
    sub_27112D71C(&a16);
    if (a34 == 1 && a33 < 0)
    {
      operator delete(__p.__vftable);
    }

    MEMORY[0x2743BE520](&a10);
    __cxa_end_catch();
  }

  else if (a2 == 2)
  {
    v41 = __cxa_get_exception_ptr(a1);
    sub_271135FD0(&__p, v41);
    __cxa_begin_catch(a1);
    v42 = (a35 + 48);
    if (*(a35 + 71) < 0)
    {
      v42 = *v42;
    }

    a9 = v42;
    sub_27113604C(&a10, &a9);
    sub_27136A868(&a10, &a16);
    *(v37 - 176) = a16;
    sub_27184A2B4(v37 - 160, &a17);
    *(v37 - 56) = 1;
    sub_271138670((v37 - 48), v37 - 176);
    sub_2711307D4(v37 - 176);
    sub_27112D71C(&a16);
    if (a15 == 1 && a14 < 0)
    {
      operator delete(a10.__vftable);
    }

    MEMORY[0x2743BEBB0](&__p);
    __cxa_end_catch();
  }

  else
  {
    __cxa_begin_catch(a1);
    *(v37 - 176) = 0;
    *(v37 - 56) = 0;
    sub_271138670((v37 - 48), v37 - 176);
    sub_2711307D4(v37 - 176);
    __cxa_end_catch();
  }

  JUMPOUT(0x2711340B8);
}

uint64_t VZBlobGetBytePtr(uint64_t a1)
{
  v2 = sub_2711331C0("VZBlobGetBytePtr", a1, 0);
  result = 0;
  if (!v2)
  {
    return *(*(a1 + 16) + 16);
  }

  return result;
}

uint64_t VZBlobGetByteCount(uint64_t a1)
{
  v2 = sub_2711331C0("VZBlobGetByteCount", a1, 0);
  result = 0;
  if (!v2)
  {
    return *(*(a1 + 16) + 24);
  }

  return result;
}

uint64_t sub_271134384(uint64_t result)
{
  if (atomic_fetch_add((result + 32), 0xFFFFFFFF) == 1)
  {
    return (*(*(result + 8) + 8))();
  }

  return result;
}

uint64_t sub_2711343C0()
{
  if (atomic_load_explicit(&qword_280879BC8, memory_order_acquire))
  {
    return qword_280879BC0;
  }

  if (__cxa_guard_acquire(&qword_280879BC8))
  {
    qword_280879BC0 = sub_27112B4B8();
    __cxa_guard_release(&qword_280879BC8);
  }

  return qword_280879BC0;
}

uint64_t sub_271134424(uint64_t a1, char **lpsrc)
{
  v3 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_28812C878, &unk_28812C3A8, 0);
  if (result)
  {
    v5 = *(a1 + 16);
    v6 = *(result + 16);
    v7 = *(v5 + 24);
    if (v7 == *(v6 + 24))
    {
      v8 = *(v5 + 16);
      v9 = *(v6 + 16);
      if (v7)
      {
        v10 = v8 == v9;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
        return 1;
      }

      else
      {
        v11 = v7 - 1;
        do
        {
          v12 = v11;
          v13 = *v8;
          v14 = *v9;
          result = v13 == v14;
          if (v13 != v14)
          {
            break;
          }

          ++v8;
          ++v9;
          v11 = v12 - 1;
        }

        while (v12);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_271134500(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_2808778B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_2808778B0))
    {
      sub_2718519B4("VZBlob]", 6uLL, qword_280877898);
      __cxa_guard_release(&qword_2808778B0);
    }
  }

  v2 = a1;
  operator new();
}

void sub_2711349AC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  __cxa_guard_abort(&qword_2808778B0);
  __cxa_begin_catch(a1);
  sub_271138384();
  sub_27112B400(&__p, "failed to create description");
  sub_27112DB38(qword_280877898, &__p, 0);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  JUMPOUT(0x27113491CLL);
}

uint64_t sub_271134AEC(uint64_t result)
{
  if (*(result + 400) == 1)
  {
    v1 = result;
    if (*(result + 384) == 1)
    {
      if (*(result + 344) == 1 && *(result + 343) < 0)
      {
        operator delete(*(result + 320));
        result = v1;
      }

      if (*(result + 304) == 1 && *(result + 279) < 0)
      {
        operator delete(*(result + 256));
        result = v1;
      }

      if (*(result + 248) == 1 && *(result + 247) < 0)
      {
        operator delete(*(result + 224));
      }
    }

    sub_271134CBC(v1 + 32);
    return v1;
  }

  return result;
}

uint64_t sub_271134B90(uint64_t result)
{
  if (*(result + 160) == 1)
  {
    if (*(result + 120) == 1 && *(result + 119) < 0)
    {
      v1 = result;
      operator delete(*(result + 96));
      result = v1;
    }

    if (*(result + 80) == 1 && *(result + 55) < 0)
    {
      v2 = result;
      operator delete(*(result + 32));
      result = v2;
    }

    if (*(result + 24) == 1 && *(result + 23) < 0)
    {
      v3 = result;
      operator delete(*result);
      return v3;
    }
  }

  return result;
}

uint64_t sub_271134C34(uint64_t result)
{
  if (*(result + 80) == 1 && *(result + 55) < 0)
  {
    v1 = result;
    operator delete(*(result + 32));
    result = v1;
    if (*(v1 + 24) != 1)
    {
      return result;
    }
  }

  else if (*(result + 24) != 1)
  {
    return result;
  }

  if (*(result + 23) < 0)
  {
    v2 = result;
    operator delete(*result);
    return v2;
  }

  return result;
}

uint64_t sub_271134CBC(uint64_t a1)
{
  if (*(a1 + 184) == 1)
  {
    v2 = *(a1 + 160);
    if (v2)
    {
      v3 = *(a1 + 168);
      v4 = *(a1 + 160);
      if (v3 == v2)
      {
LABEL_14:
        *(a1 + 168) = v2;
        operator delete(v4);
        goto LABEL_15;
      }

      while (1)
      {
        v5 = v3;
        if (*(v3 - 16) == 1 && *(v3 - 41) < 0)
        {
          operator delete(*(v3 - 8));
          v3 -= 12;
          if (*(v5 - 72) == 1)
          {
LABEL_9:
            if (*(v5 - 73) < 0)
            {
              operator delete(*v3);
            }
          }
        }

        else
        {
          v3 -= 12;
          if (*(v5 - 72) == 1)
          {
            goto LABEL_9;
          }
        }

        if (v3 == v2)
        {
          v4 = *(a1 + 160);
          goto LABEL_14;
        }
      }
    }
  }

LABEL_15:
  if (*(a1 + 144) == 1 && *(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
    if (*(a1 + 80) != 1)
    {
      goto LABEL_21;
    }
  }

  else if (*(a1 + 80) != 1)
  {
    goto LABEL_21;
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

LABEL_21:
  if (*(a1 + 24) != 1 || (*(a1 + 23) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*a1);
  return a1;
}

uint64_t sub_271134DF4(uint64_t a1)
{
  if (*(a1 + 24) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      v3 = *(a1 + 8);
      v4 = *a1;
      if (v3 == v2)
      {
LABEL_14:
        *(a1 + 8) = v2;
        operator delete(v4);
        return a1;
      }

      while (1)
      {
        v5 = v3;
        if (*(v3 - 16) == 1 && *(v3 - 41) < 0)
        {
          operator delete(*(v3 - 8));
          v3 -= 12;
          if (*(v5 - 72) == 1)
          {
LABEL_9:
            if (*(v5 - 73) < 0)
            {
              operator delete(*v3);
            }
          }
        }

        else
        {
          v3 -= 12;
          if (*(v5 - 72) == 1)
          {
            goto LABEL_9;
          }
        }

        if (v3 == v2)
        {
          v4 = *a1;
          goto LABEL_14;
        }
      }
    }
  }

  return a1;
}

double sub_271134EB4@<D0>(uint64_t a1@<X8>)
{
  *(&__p.__r_.__value_.__s + 23) = 6;
  strcpy(&__p, "VZBlob");
  sub_27184BC8C(&__p, "std::__1::", 10, "std::", 5uLL, 0, 0, &v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v2 = std::string::insert(&v11, 0, "const ", 6uLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v10 = v2->__r_.__value_.__r.__words[2];
  v9 = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
    v4 = SHIBYTE(v10);
    if ((SHIBYTE(v10) & 0x8000000000000000) == 0)
    {
LABEL_5:
      v5 = &v9;
      if (v4 == 22)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v4 = SHIBYTE(v10);
    if ((SHIBYTE(v10) & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }
  }

  v4 = *(&v9 + 1);
  v6 = (v10 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v6 == *(&v9 + 1))
  {
    if ((v10 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

LABEL_10:
    operator new();
  }

  v5 = v9;
LABEL_12:
  *(v5 + v4) = 42;
  v7 = v4 + 1;
  if (SHIBYTE(v10) < 0)
  {
    *(&v9 + 1) = v7;
  }

  else
  {
    HIBYTE(v10) = v7 & 0x7F;
  }

  *(v5 + v7) = 0;
  result = *&v9;
  *a1 = v9;
  *(a1 + 16) = v10;
  return result;
}

void sub_2711350D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_271135110()
{
  if ((atomic_load_explicit(&qword_280877810, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(&qword_280877810))
  {
    return &unk_2808777F8;
  }

  sub_2718519B4("VZDataInfo]", 0xAuLL, &unk_2808777F8);
  __cxa_guard_release(&qword_280877810);
  return &unk_2808777F8;
}

__int128 *sub_2711351A4()
{
  if ((atomic_load_explicit(&qword_280877830, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877830))
  {
    sub_271135818();
  }

  return &xmmword_280877818;
}

uint64_t sub_27113523C(uint64_t a1, __int128 *a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  if (*(a2 + 24) == 1)
  {
    if (*(a2 + 23) < 0)
    {
      sub_271127178(a1, *a2, *(a2 + 1));
    }

    else
    {
      v4 = *a2;
      *(a1 + 16) = *(a2 + 2);
      *a1 = v4;
    }

    *(a1 + 24) = 1;
  }

  v5 = a2[2];
  v6 = *(a2 + 6);
  *(a1 + 56) = 0;
  *(a1 + 48) = v6;
  *(a1 + 32) = v5;
  *(a1 + 80) = 0;
  if (*(a2 + 80) == 1)
  {
    if (*(a2 + 79) < 0)
    {
      sub_271127178((a1 + 56), *(a2 + 7), *(a2 + 8));
    }

    else
    {
      v7 = *(a2 + 56);
      *(a1 + 72) = *(a2 + 9);
      *(a1 + 56) = v7;
    }

    *(a1 + 80) = 1;
  }

  *(a1 + 96) = 0;
  *(a1 + 144) = 0;
  if (*(a2 + 144) == 1)
  {
    if (*(a2 + 119) < 0)
    {
      sub_271127178((a1 + 96), *(a2 + 12), *(a2 + 13));
    }

    else
    {
      v8 = a2[6];
      *(a1 + 112) = *(a2 + 14);
      *(a1 + 96) = v8;
    }

    _X0 = 0;
    _X1 = 0;
    __asm { CASPAL          X0, X1, X0, X1, [X8] }

    *(a1 + 128) = _X0;
    *(a1 + 136) = 0;
    *(a1 + 144) = 1;
  }

  *(a1 + 160) = 0;
  *(a1 + 184) = 0;
  if (*(a2 + 184) == 1)
  {
    *(a1 + 160) = 0;
    *(a1 + 168) = 0;
    *(a1 + 176) = 0;
    sub_271135440(a1 + 160, *(a2 + 20), *(a2 + 21), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 21) - *(a2 + 20)) >> 5));
    *(a1 + 184) = 1;
  }

  return a1;
}

void sub_2711353B8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 144) == 1 && *(v1 + 119) < 0)
  {
    operator delete(*v3);
  }

  if (*(v1 + 80) == 1 && *(v1 + 79) < 0)
  {
    operator delete(*v2);
  }

  if (*(v1 + 24) == 1 && *(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_271135440(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x2AAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_271135560();
  }
}

void sub_271135540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, char a11)
{
  sub_2711356AC(&a11);
  *(v11 + 8) = v12;
  sub_27113574C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_271135578(uint64_t a1, __int128 *a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  if (*(a2 + 24) == 1)
  {
    if (*(a2 + 23) < 0)
    {
      v4 = a2;
      sub_271127178(a1, *a2, *(a2 + 1));
      a2 = v4;
    }

    else
    {
      v3 = *a2;
      *(a1 + 16) = *(a2 + 2);
      *a1 = v3;
    }

    *(a1 + 24) = 1;
  }

  *(a1 + 32) = 0;
  *(a1 + 80) = 0;
  if (*(a2 + 80) == 1)
  {
    if (*(a2 + 55) < 0)
    {
      sub_271127178((a1 + 32), *(a2 + 4), *(a2 + 5));
    }

    else
    {
      v5 = a2[2];
      *(a1 + 48) = *(a2 + 6);
      *(a1 + 32) = v5;
    }

    _X2 = 0;
    _X3 = 0;
    __asm { CASPAL          X2, X3, X2, X3, [X8] }

    *(a1 + 64) = _X2;
    *(a1 + 72) = 0;
    *(a1 + 80) = 1;
  }

  return a1;
}

void sub_271135660(_Unwind_Exception *exception_object)
{
  if (*(v1 + 80) == 1 && *(v1 + 55) < 0)
  {
    operator delete(*v2);
  }

  if (*(v1 + 24) == 1 && *(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2711356AC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (1)
    {
      while (1)
      {
        if (v3 == v4)
        {
          return a1;
        }

        v5 = v3;
        if (*(v3 - 16) != 1 || (*(v3 - 41) & 0x80000000) == 0)
        {
          break;
        }

        operator delete(*(v3 - 8));
        v3 -= 12;
        if (*(v5 - 72) == 1)
        {
          goto LABEL_8;
        }
      }

      v3 -= 12;
      if (*(v5 - 72) == 1)
      {
LABEL_8:
        if (*(v5 - 73) < 0)
        {
          operator delete(*v3);
        }
      }
    }
  }

  return a1;
}

void ****sub_27113574C(void ****a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 == v3)
      {
LABEL_14:
        v2[1] = v3;
        operator delete(v5);
        return a1;
      }

      while (1)
      {
        v6 = v4;
        if (*(v4 - 16) == 1 && *(v4 - 41) < 0)
        {
          operator delete(*(v4 - 8));
          v4 -= 12;
          if (*(v6 - 72) == 1)
          {
LABEL_9:
            if (*(v6 - 73) < 0)
            {
              operator delete(*v4);
            }
          }
        }

        else
        {
          v4 -= 12;
          if (*(v6 - 72) == 1)
          {
            goto LABEL_9;
          }
        }

        if (v4 == v3)
        {
          v5 = **a1;
          goto LABEL_14;
        }
      }
    }
  }

  return a1;
}

void sub_271135818()
{
  *(&__p.__r_.__value_.__s + 23) = 13;
  strcpy(&__p, "std::optional");
  sub_27184BC8C(&__p, "std::__1::", 10, "std::", 5uLL, 0, 0, &v0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_2711358FC();
}

void sub_2711358CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271135A48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  sub_27137F4D0(&a9);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271135A88(uint64_t **a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_280877850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877850))
  {
    sub_2718519B4("VZData]", 6uLL, qword_280877838);
    __cxa_guard_release(&qword_280877850);
  }

  if ((atomic_load_explicit(&qword_280877870, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877870))
  {
    sub_27113638C(&xmmword_280877858);
    __cxa_guard_release(&qword_280877870);
  }

  if (byte_28087786F < 0)
  {
    sub_271127178(&v23, xmmword_280877858, *(&xmmword_280877858 + 1));
  }

  else
  {
    v23 = xmmword_280877858;
    v24 = unk_280877868;
  }

  if ((atomic_load_explicit(&qword_280877830, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877830))
  {
    sub_271135818();
  }

  if (byte_28087782F < 0)
  {
    sub_271127178(&v25, xmmword_280877818, *(&xmmword_280877818 + 1));
  }

  else
  {
    v25 = xmmword_280877818;
    v26 = unk_280877828;
  }

  sub_2711309E8(&v21, &v23, 2uLL);
  LOBYTE(v10) = 0;
  v20 = 0;
  if (*(a2 + 120) == 1)
  {
    v10 = *a2;
    LOBYTE(v11) = 0;
    v19 = 0;
    if (*(a2 + 112) == 1)
    {
      sub_27112F6CC(&v11, (a2 + 16));
      v19 = 1;
    }

    v20 = 1;
  }

  sub_27112E0C4(qword_280877838, &v21, &v10, **a1);
  if (v20 == 1 && v19 == 1)
  {
    if (v18 == 1)
    {
      if (v17 < 0)
      {
        operator delete(__p);
      }

      if (v15 < 0)
      {
        operator delete(v14);
      }
    }

    if (v13 == 1 && v12 < 0)
    {
      operator delete(v11);
    }
  }

  v4 = v21;
  if (v21)
  {
    v5 = v22;
    v6 = v21;
    if (v22 != v21)
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = v21;
    }

    v22 = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25);
    if ((SHIBYTE(v24) & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

LABEL_37:
    operator delete(v23);
    v9 = *MEMORY[0x277D85DE8];
    return;
  }

  if (SHIBYTE(v24) < 0)
  {
    goto LABEL_37;
  }

LABEL_34:
  v8 = *MEMORY[0x277D85DE8];
}

void sub_271135D88(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_280877830);
  if (*(v1 - 73) < 0)
  {
    operator delete(*(v1 - 96));
  }

  _Unwind_Resume(a1);
}

double sub_271135E2C(__int128 *a1)
{
  v2 = operator new(0x250uLL, MEMORY[0x277D826F0]);
  if (v2)
  {
    v4 = v2;
    *v2 = &unk_288117810;
    sub_271136654((v2 + 2), a1);
    *v4 = &unk_288119208;
    v4[2] = &unk_288119258;
    result = 0.0;
    *(v4 + 36) = 0u;
  }

  return result;
}

uint64_t sub_271135EDC(void *a1)
{
  MEMORY[0x2743BF040](v1, MEMORY[0x277D826F0]);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  return 0;
}

uint64_t sub_271135F14(uint64_t result)
{
  if ((*(result + 544) & 1) == 0)
  {
    v1 = result;
    exception = __cxa_allocate_exception(0x80uLL);
    sub_2711365E8(v3, v1);
    sub_271137B44(exception, v3);
    __cxa_throw(exception, &unk_28811C2F0, sub_271130150);
  }

  return result;
}

void sub_271135F8C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112D71C(va);
  _Unwind_Resume(a1);
}

void sub_271135FA0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112D71C(va);
  __cxa_free_exception(v2);
  _Unwind_Resume(a1);
}

std::runtime_error *sub_271135FD0(std::runtime_error *a1, uint64_t a2)
{
  result = std::runtime_error::runtime_error(a1, a2);
  result->__vftable = (MEMORY[0x277D82840] + 16);
  result[1] = *(a2 + 16);
  result->__vftable = (MEMORY[0x277D828A8] + 16);
  v4 = *(a2 + 40);
  result[2].__vftable = *(a2 + 32);
  result[2].__imp_.__imp_ = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

_BYTE *sub_27113604C(_BYTE *a1, const char **a2)
{
  v3 = *a2;
  v4 = strlen(*a2);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, v3, v4);
  }

  a1[v5] = 0;
  a1[24] = 1;
  return a1;
}

__n128 sub_27113610C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v2;
  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  if (*(a2 + 56) == 1)
  {
    v3 = a2[2];
    *(a1 + 48) = *(a2 + 6);
    *(a1 + 32) = v3;
    *(a2 + 5) = 0;
    *(a2 + 6) = 0;
    *(a2 + 4) = 0;
    *(a1 + 56) = 1;
  }

  result = a2[4];
  v5 = *(a2 + 10);
  *(a1 + 88) = 0;
  *(a1 + 80) = v5;
  *(a1 + 64) = result;
  *(a1 + 112) = 0;
  if (*(a2 + 112) == 1)
  {
    result = *(a2 + 88);
    *(a1 + 104) = *(a2 + 13);
    *(a1 + 88) = result;
    *(a2 + 12) = 0;
    *(a2 + 13) = 0;
    *(a2 + 11) = 0;
    *(a1 + 112) = 1;
    *(a1 + 128) = 0;
    v6 = (a1 + 128);
    *(a1 + 176) = 0;
    if (*(a2 + 176) != 1)
    {
LABEL_5:
      *(a1 + 192) = 0;
      v7 = (a1 + 192);
      *(a1 + 216) = 0;
      if (*(a2 + 216) != 1)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else
  {
    *(a1 + 128) = 0;
    v6 = (a1 + 128);
    *(a1 + 176) = 0;
    if (*(a2 + 176) != 1)
    {
      goto LABEL_5;
    }
  }

  _X2 = 0;
  _X3 = 0;
  result = a2[8];
  v6[1].n128_u64[0] = *(a2 + 18);
  *v6 = result;
  *(a2 + 17) = 0;
  *(a2 + 18) = 0;
  *(a2 + 16) = 0;
  __asm { CASPAL          X2, X3, X2, X3, [X8] }

  *(a1 + 160) = _X2;
  *(a1 + 168) = 0;
  *(a1 + 176) = 1;
  *(a1 + 192) = 0;
  v7 = (a1 + 192);
  *(a1 + 216) = 0;
  if (*(a2 + 216) != 1)
  {
LABEL_6:
    *(a1 + 224) = 0;
    v8 = a1 + 224;
    *(a1 + 384) = 0;
    if (*(a2 + 384) != 1)
    {
      return result;
    }

LABEL_11:
    *(a1 + 224) = 0;
    *(a1 + 248) = 0;
    if (*(a2 + 248) == 1)
    {
      v17 = a2[14];
      *(v8 + 16) = *(a2 + 30);
      *v8 = v17;
      *(a2 + 29) = 0;
      *(a2 + 30) = 0;
      *(a2 + 28) = 0;
      *(a1 + 248) = 1;
      *(a1 + 256) = 0;
      *(a1 + 304) = 0;
      if (*(a2 + 304) != 1)
      {
LABEL_13:
        *(a1 + 320) = 0;
        *(a1 + 344) = 0;
        if (*(a2 + 344) != 1)
        {
LABEL_15:
          result = a2[22];
          *(a1 + 368) = *(a2 + 46);
          *(a1 + 352) = result;
          *(a1 + 384) = 1;
          return result;
        }

LABEL_14:
        v16 = a2[20];
        *(a1 + 336) = *(a2 + 42);
        *(a1 + 320) = v16;
        *(a2 + 41) = 0;
        *(a2 + 42) = 0;
        *(a2 + 40) = 0;
        *(a1 + 344) = 1;
        goto LABEL_15;
      }
    }

    else
    {
      *(a1 + 256) = 0;
      *(a1 + 304) = 0;
      if (*(a2 + 304) != 1)
      {
        goto LABEL_13;
      }
    }

    _X2 = 0;
    _X3 = 0;
    v20 = a2[16];
    *(a1 + 272) = *(a2 + 34);
    *(a1 + 256) = v20;
    *(a2 + 33) = 0;
    *(a2 + 34) = 0;
    *(a2 + 32) = 0;
    __asm { CASPAL          X2, X3, X2, X3, [X8] }

    *(a1 + 288) = _X2;
    *(a1 + 296) = 0;
    *(a1 + 304) = 1;
    *(a1 + 320) = 0;
    *(a1 + 344) = 0;
    if (*(a2 + 344) != 1)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_10:
  *v7 = 0;
  v7[1] = 0;
  v7[2] = 0;
  result = a2[12];
  *(a1 + 192) = result;
  *(a1 + 208) = *(a2 + 26);
  *(a2 + 24) = 0;
  *(a2 + 25) = 0;
  *(a2 + 26) = 0;
  *(a1 + 216) = 1;
  *(a1 + 224) = 0;
  v8 = a1 + 224;
  *(a1 + 384) = 0;
  if (*(a2 + 384) == 1)
  {
    goto LABEL_11;
  }

  return result;
}

double sub_27113638C@<D0>(uint64_t a1@<X8>)
{
  *(&__p.__r_.__value_.__s + 23) = 6;
  strcpy(&__p, "VZBlob");
  sub_27184BC8C(&__p, "std::__1::", 10, "std::", 5uLL, 0, 0, &v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v2 = std::string::insert(&v11, 0, "const ", 6uLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v10 = v2->__r_.__value_.__r.__words[2];
  v9 = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
    v4 = SHIBYTE(v10);
    if ((SHIBYTE(v10) & 0x8000000000000000) == 0)
    {
LABEL_5:
      v5 = &v9;
      if (v4 == 22)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v4 = SHIBYTE(v10);
    if ((SHIBYTE(v10) & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }
  }

  v4 = *(&v9 + 1);
  v6 = (v10 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v6 == *(&v9 + 1))
  {
    if ((v10 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

LABEL_10:
    operator new();
  }

  v5 = v9;
LABEL_12:
  *(v5 + v4) = 38;
  v7 = v4 + 1;
  if (SHIBYTE(v10) < 0)
  {
    *(&v9 + 1) = v7;
  }

  else
  {
    HIBYTE(v10) = v7 & 0x7F;
  }

  *(v5 + v7) = 0;
  result = *&v9;
  *a1 = v9;
  *(a1 + 16) = v10;
  return result;
}

void sub_2711365A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2711365E8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = 0;
  *(a1 + 112) = 0;
  if (*(a2 + 112) == 1)
  {
    sub_27112F6CC(a1 + 16, (a2 + 16));
    *(a1 + 112) = 1;
  }

  return a1;
}

uint64_t sub_271136654(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 32) = *(a2 + 2);
  *(a1 + 16) = v4;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(a1 + 40) = *(a2 + 6);
  v5 = sub_27113610C(a1 + 48, a2 + 2);
  v6 = *(a2 + 55);
  v7 = *(a2 + 56);
  *(a1 + 448) = off_28810C940;
  *(a1 + 456) = v6;
  *(a1 + 464) = v7;
  *(a2 + 55) = 0;
  *(a2 + 56) = 0;
  *(a1 + 480) = 0;
  *(a1 + 512) = 0;
  if (*(a2 + 496) == 1)
  {
    *(a1 + 480) = 0;
    *(a1 + 488) = 0;
    v8 = *(a2 + 58);
    if (v8)
    {
      v8(2, (a2 + 29), a1 + 480, 0, 0, v5);
    }

    *(a1 + 512) = 1;
  }

  *(a1 + 520) = 0;
  *(a1 + 544) = 0;
  if (*(a2 + 528) == 1)
  {
    *(a1 + 520) = &unk_288109288;
    *(a1 + 528) = a2[32];
    a2[32] = 0u;
    *(a1 + 544) = 1;
  }

  *a1 = &unk_28810A4B8;
  *(a1 + 552) = 1;
  return a1;
}

void sub_271136788(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

void sub_2711367D0(uint64_t a1)
{
  sub_27113681C(a1 + 16);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27113681C(uint64_t a1)
{
  if (*(a1 + 528) == 1 && (*(a1 + 504) = &unk_288109288, (v2 = *(a1 + 520)) != 0) && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    if (*(a1 + 496) != 1)
    {
      goto LABEL_7;
    }
  }

  else if (*(a1 + 496) != 1)
  {
    goto LABEL_7;
  }

  v3 = *(a1 + 464);
  if (v3)
  {
    v3(0, a1 + 464, 0, 0, 0);
  }

LABEL_7:
  v4 = *(a1 + 448);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
    if (*(a1 + 416) != 1)
    {
      goto LABEL_20;
    }
  }

  else if (*(a1 + 416) != 1)
  {
    goto LABEL_20;
  }

  if (*(a1 + 376) == 1 && *(a1 + 375) < 0)
  {
    operator delete(*(a1 + 352));
  }

  if (*(a1 + 336) == 1 && *(a1 + 311) < 0)
  {
    operator delete(*(a1 + 288));
  }

  if (*(a1 + 280) == 1 && *(a1 + 279) < 0)
  {
    operator delete(*(a1 + 256));
  }

LABEL_20:
  sub_271134CBC(a1 + 64);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_2711369D4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v14 = 0;
  v15 = v13;
  v16 = a1;
  v17 = v13;
  v18 = a1;
  v19 = a1;
  v20 = &v15;
  sub_271136E64(&v20);
  v15 = v13;
  v16 = a2;
  v17 = v13;
  v18 = a2;
  v19 = a2;
  if (v14 == -1)
  {
    sub_2711308D4();
  }

  v20 = &v15;
  (off_28812D258[v14])(&v20, v13);
  v15 = v13;
  v16 = a3;
  v17 = v13;
  v18 = a3;
  v19 = a3;
  if (v14 == -1)
  {
    sub_2711308D4();
  }

  v20 = &v15;
  (*(&off_28812D210 + v14))(&v20, v13);
  sub_271136C48(&v12, v13, a4);
  v15 = v13;
  v16 = a5;
  v17 = v13;
  v18 = a5;
  v19 = a5;
  if (v14 == -1)
  {
    sub_2711308D4();
  }

  v20 = &v15;
  (*(&off_28812D210 + v14))(&v20, v13);
  v15 = v13;
  v16 = a6;
  v17 = v13;
  v18 = a6;
  v19 = a6;
  if (v14 == -1)
  {
    sub_2711308D4();
  }

  v20 = &v15;
  (off_28812D258[v14])(&v20, v13);
  if (v14 == -1)
  {
    sub_2711308D4();
  }

  v15 = &v20;
  result = (off_28812D288[v14])(&v15, v13);
  if (v14 != -1)
  {
    return (off_28812D228[v14])(&v15, v13);
  }

  return result;
}

void sub_271136BBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271137AE8(va);
  _Unwind_Resume(a1);
}

void sub_271136BD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271137AE8(va);
  _Unwind_Resume(a1);
}

void sub_271136BE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271137AE8(va);
  _Unwind_Resume(a1);
}

void sub_271136BF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271137AE8(va);
  _Unwind_Resume(a1);
}

void sub_271136C0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271137AE8(va);
  _Unwind_Resume(a1);
}

void sub_271136C20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271137AE8(va);
  _Unwind_Resume(a1);
}

void sub_271136C34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271137AE8(va);
  _Unwind_Resume(a1);
}

size_t sub_271136C48(uint64_t a1, uint64_t a2, void *a3)
{
  if (*a3)
  {
    sub_2711375E4();
  }

  v6[0] = a2;
  v6[1] = "nullptr";
  v6[2] = a2;
  v6[3] = "nullptr";
  v6[4] = "nullptr";
  v3 = *(a2 + 24);
  if (v3 == -1)
  {
    sub_2711308D4();
  }

  __p = v6;
  return (*(&off_28812D240 + v3))(&__p);
}

void sub_271136D38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_271136D64(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_271137164(a2, v3);
    *(a2 + 8) = result;
  }

  else
  {
    v5 = strlen(*(*a1 + 32));
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_271120DA8();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      operator new();
    }

    v4[23] = v5;
    if (v5)
    {
      memmove(v4, v3, v5);
    }

    v4[v6] = 0;
    result = v4 + 24;
    *(a2 + 8) = v4 + 24;
    *(a2 + 8) = v4 + 24;
  }

  return result;
}

size_t sub_271136E64(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_28812D228[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

void sub_271136F58(uint64_t *a1, uint64_t a2)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  *(v18 + 7) = *(a2 + 15);
  v4 = *a2;
  v18[0] = *(a2 + 8);
  v3 = v18[0];
  v5 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v13 = v4;
  *v14 = v3;
  *&v14[7] = *(v18 + 7);
  v15 = v5;
  memset(v18, 0, 15);
  v6 = a1[1];
  v7 = strlen(v6);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v17 = v7;
  if (v7)
  {
    memmove(&__p, v6, v7);
    *(&__p + v8) = 0;
    v9 = *(v2 + 24);
    if (v9 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v9 = *(v2 + 24);
  if (v9 != -1)
  {
LABEL_8:
    (off_28812D228[v9])(&v12, v2);
  }

LABEL_9:
  *(v2 + 24) = -1;
  sub_2711309E8(v2, &v13, 2uLL);
  *(v2 + 24) = 2;
  if (v17 < 0)
  {
    operator delete(__p);
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((v15 & 0x80000000) == 0)
  {
LABEL_11:
    v10 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v13);
  v11 = *MEMORY[0x277D85DE8];
}

void sub_271137118(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_271137164(uint64_t a1, const char *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_271135560();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_2711270EC();
  }

  v6 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v14 = v6;
  v15 = v6;
  v7 = strlen(a2);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v6[23] = v7;
  if (v7)
  {
    memmove(v6, a2, v7);
  }

  v6[v8] = 0;
  v9 = v6 + 24;
  v10 = *(a1 + 8) - *a1;
  v11 = &v6[-v10];
  memcpy(&v14[-v10], *a1, v10);
  v12 = *a1;
  *a1 = v11;
  *(a1 + 8) = v15 + 24;
  *(a1 + 16) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v9;
}

void sub_271137300(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_271137314(uint64_t **result)
{
  v1 = **result;
  v2 = (*result)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    result = (off_28812D228[v3])(&v5, v1);
  }

  *(v1 + 24) = -1;
  if (*(v2 + 23) < 0)
  {
    result = sub_271127178(v1, *v2, *(v2 + 1));
  }

  else
  {
    v4 = *v2;
    *(v1 + 16) = *(v2 + 2);
    *v1 = v4;
  }

  *(v1 + 24) = 1;
  return result;
}

uint64_t sub_2711373C0(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_271127424(a2, v3);
    *(a2 + 8) = result;
  }

  else
  {
    if (*(v3 + 23) < 0)
    {
      sub_271127178(*(a2 + 8), *v3, *(v3 + 8));
    }

    else
    {
      v5 = *v3;
      *(v4 + 16) = *(v3 + 16);
      *v4 = v5;
    }

    result = v4 + 24;
    *(a2 + 8) = v4 + 24;
    *(a2 + 8) = v4 + 24;
  }

  return result;
}

void sub_271137460(uint64_t *a1, uint64_t a2)
{
  v16[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  *(v16 + 7) = *(a2 + 15);
  v3 = *a2;
  v16[0] = *(a2 + 8);
  v4 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v11 = v3;
  *v12 = v16[0];
  *&v12[7] = *(v16 + 7);
  v13 = v4;
  memset(v16, 0, 15);
  v5 = a1[1];
  if (*(v5 + 23) < 0)
  {
    sub_271127178(&__p, *v5, *(v5 + 1));
  }

  else
  {
    v6 = *v5;
    v15 = *(v5 + 2);
    __p = v6;
  }

  v7 = *(v2 + 24);
  if (v7 != -1)
  {
    (off_28812D228[v7])(&v10, v2);
  }

  *(v2 + 24) = -1;
  sub_2711309E8(v2, &v11, 2uLL);
  *(v2 + 24) = 2;
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p);
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_11:
    operator delete(v11);
    v9 = *MEMORY[0x277D85DE8];
    return;
  }

  if (v13 < 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v8 = *MEMORY[0x277D85DE8];
}

void sub_2711375A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271137770(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v11 = a10;
  a10 = 0;
  if (!v11)
  {
    _Unwind_Resume(exception_object);
  }

  sub_27184D728(&a10, v11);
  _Unwind_Resume(exception_object);
}

__n128 sub_271137798(__n128 ***a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = v1[1].n128_u32[2];
  if (v3 != -1)
  {
    (off_28812D228[v3])(&v5, v1);
  }

  v1[1].n128_u32[2] = -1;
  result = *v2;
  v1[1].n128_u64[0] = v2[1].n128_u64[0];
  *v1 = result;
  v2->n128_u64[1] = 0;
  v2[1].n128_u64[0] = 0;
  v2->n128_u64[0] = 0;
  v1[1].n128_u32[2] = 1;
  return result;
}

void sub_271137824(uint64_t *a1, uint64_t a2)
{
  v16[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  *(v16 + 7) = *(a2 + 15);
  v3 = *a2;
  v16[0] = *(a2 + 8);
  v4 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v11 = v3;
  *v12 = v16[0];
  *&v12[7] = *(v16 + 7);
  v13 = v4;
  memset(v16, 0, 15);
  v5 = a1[1];
  v6 = *(v5 + 16);
  *__p = *v5;
  v15 = v6;
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  v7 = *(v2 + 24);
  if (v7 != -1)
  {
    (off_28812D228[v7])(&v10, v2);
  }

  *(v2 + 24) = -1;
  sub_2711309E8(v2, &v11, 2uLL);
  *(v2 + 24) = 2;
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    operator delete(v11);
    v9 = *MEMORY[0x277D85DE8];
    return;
  }

  if (v13 < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  v8 = *MEMORY[0x277D85DE8];
}

void sub_271137950(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27113798C(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if (v4 < v5)
  {
    v6 = *v3;
    *(v4 + 16) = *(v3 + 2);
    *v4 = v6;
    *(v3 + 1) = 0;
    *(v3 + 2) = 0;
    *v3 = 0;
    v7 = v4 + 24;
LABEL_3:
    *(a2 + 8) = v7;
    return;
  }

  v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3);
  v9 = v8 + 1;
  if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_271135560();
  }

  v10 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a2) >> 3);
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

  if (v11)
  {
    if (v11 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_2711270EC();
  }

  v12 = 24 * v8;
  v13 = *v3;
  *(v12 + 16) = *(v3 + 2);
  *v12 = v13;
  *(v3 + 1) = 0;
  *(v3 + 2) = 0;
  *v3 = 0;
  v7 = 24 * v8 + 24;
  v14 = *a2;
  v15 = *(a2 + 8) - *a2;
  v16 = 24 * v8 - v15;
  memcpy((v12 - v15), *a2, v15);
  *a2 = v16;
  *(a2 + 8) = v7;
  *(a2 + 16) = 0;
  if (!v14)
  {
    goto LABEL_3;
  }

  operator delete(v14);
  *(a2 + 8) = v7;
}

uint64_t sub_271137AE8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 != -1)
  {
    (off_28812D228[v2])(&v4, a1);
  }

  *(a1 + 24) = -1;
  return a1;
}

uint64_t sub_271137B44(uint64_t a1, __int128 *a2)
{
  *a1 = &unk_288108EE8;
  v3 = *a2;
  *(a1 + 24) = 0;
  *(a1 + 8) = v3;
  *(a1 + 120) = 0;
  if (*(a2 + 112) == 1)
  {
    sub_27112F6CC(a1 + 24, a2 + 1);
    *(a1 + 120) = 1;
  }

  return a1;
}

void sub_271137BC0(_Unwind_Exception *a1)
{
  sub_27112D66C(v2);
  std::exception::~exception(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_271137BDC(uint64_t result)
{
  if (*(result + 544) == 1)
  {
    return sub_27113681C(result);
  }

  if (*(result + 112) == 1)
  {
    if (*(result + 104) == 1)
    {
      if (*(result + 103) < 0)
      {
        v1 = result;
        operator delete(*(result + 80));
        result = v1;
      }

      if (*(result + 71) < 0)
      {
        v2 = result;
        operator delete(*(result + 48));
        result = v2;
      }
    }

    if (*(result + 40) == 1 && *(result + 39) < 0)
    {
      v3 = result;
      operator delete(*(result + 16));
      return v3;
    }
  }

  return result;
}

double sub_271137C8C@<D0>(uint64_t a1@<X8>)
{
  *(&__p.__r_.__value_.__s + 23) = 6;
  strcpy(&__p, "VZData");
  sub_27184BC8C(&__p, "std::__1::", 10, "std::", 5uLL, 0, 0, &v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v2 = std::string::insert(&v11, 0, "const ", 6uLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v10 = v2->__r_.__value_.__r.__words[2];
  v9 = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
    v4 = SHIBYTE(v10);
    if ((SHIBYTE(v10) & 0x8000000000000000) == 0)
    {
LABEL_5:
      v5 = &v9;
      if (v4 == 22)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v4 = SHIBYTE(v10);
    if ((SHIBYTE(v10) & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }
  }

  v4 = *(&v9 + 1);
  v6 = (v10 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v6 == *(&v9 + 1))
  {
    if ((v10 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

LABEL_10:
    operator new();
  }

  v5 = v9;
LABEL_12:
  *(v5 + v4) = 42;
  v7 = v4 + 1;
  if (SHIBYTE(v10) < 0)
  {
    *(&v9 + 1) = v7;
  }

  else
  {
    HIBYTE(v10) = v7 & 0x7F;
  }

  *(v5 + v7) = 0;
  result = *&v9;
  *a1 = v9;
  *(a1 + 16) = v10;
  return result;
}

void sub_271137EA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271137EE8(uint64_t **a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_2808778B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2808778B0))
  {
    sub_2718519B4("VZBlob]", 6uLL, qword_280877898);
    __cxa_guard_release(&qword_2808778B0);
  }

  if ((atomic_load_explicit(&qword_2808778D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2808778D0))
  {
    sub_271138414(&xmmword_2808778B8);
    __cxa_guard_release(&qword_2808778D0);
  }

  if (byte_2808778CF < 0)
  {
    sub_271127178(&v22, xmmword_2808778B8, *(&xmmword_2808778B8 + 1));
  }

  else
  {
    v22 = xmmword_2808778B8;
    v23 = unk_2808778C8;
  }

  sub_2711309E8(&v20, &v22, 1uLL);
  LOBYTE(v9) = 0;
  v19 = 0;
  if (*(a2 + 120) == 1)
  {
    v9 = *a2;
    LOBYTE(v10) = 0;
    v18 = 0;
    if (*(a2 + 112) == 1)
    {
      sub_27112F6CC(&v10, (a2 + 16));
      v18 = 1;
    }

    v19 = 1;
  }

  sub_27112E0C4(qword_280877898, &v20, &v9, **a1);
  if (v19 == 1 && v18 == 1)
  {
    if (v17 == 1)
    {
      if (v16 < 0)
      {
        operator delete(__p);
      }

      if (v14 < 0)
      {
        operator delete(v13);
      }
    }

    if (v12 == 1 && v11 < 0)
    {
      operator delete(v10);
    }
  }

  v4 = v20;
  if (v20)
  {
    v5 = v21;
    v6 = v20;
    if (v21 != v20)
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = v20;
    }

    v21 = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_271138170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_27112D66C(v9 + 16);
  sub_2711307D4(&a9);
  sub_27137F4D0((v10 - 96));
  if (*(v10 - 41) < 0)
  {
    operator delete(*(v10 - 64));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2711381C0(uint64_t result)
{
  if ((*(result + 120) & 1) == 0)
  {
    v1 = result;
    exception = __cxa_allocate_exception(0x80uLL);
    sub_2711365E8(v3, v1);
    sub_271137B44(exception, v3);
    __cxa_throw(exception, &unk_28811C2F0, sub_271130150);
  }

  return result;
}

void sub_271138238(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112D71C(va);
  _Unwind_Resume(a1);
}

void sub_27113824C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112D71C(va);
  __cxa_free_exception(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_27113827C(uint64_t result)
{
  if (*(result + 120) == 1)
  {
    v1 = *(result + 8);
    if (v1)
    {
      if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v5 = result;
        (v1->__on_zero_shared)(v1);
        std::__shared_weak_count::__release_weak(v1);
        return v5;
      }
    }
  }

  else if (*(result + 112) == 1)
  {
    if (*(result + 104) == 1)
    {
      if (*(result + 103) < 0)
      {
        v2 = result;
        operator delete(*(result + 80));
        result = v2;
      }

      if (*(result + 71) < 0)
      {
        v3 = result;
        operator delete(*(result + 48));
        result = v3;
      }
    }

    if (*(result + 40) == 1 && *(result + 39) < 0)
    {
      v4 = result;
      operator delete(*(result + 16));
      return v4;
    }
  }

  return result;
}

void sub_271138384()
{
  if ((atomic_load_explicit(&qword_2808778B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2808778B0))
  {
    sub_2718519B4("VZBlob]", 6uLL, qword_280877898);

    __cxa_guard_release(&qword_2808778B0);
  }
}

double sub_271138414@<D0>(uint64_t a1@<X8>)
{
  *(&__p.__r_.__value_.__s + 23) = 6;
  strcpy(&__p, "VZData");
  sub_27184BC8C(&__p, "std::__1::", 10, "std::", 5uLL, 0, 0, &v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v2 = std::string::insert(&v11, 0, "const ", 6uLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v10 = v2->__r_.__value_.__r.__words[2];
  v9 = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
    v4 = SHIBYTE(v10);
    if ((SHIBYTE(v10) & 0x8000000000000000) == 0)
    {
LABEL_5:
      v5 = &v9;
      if (v4 == 22)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v4 = SHIBYTE(v10);
    if ((SHIBYTE(v10) & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }
  }

  v4 = *(&v9 + 1);
  v6 = (v10 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v6 == *(&v9 + 1))
  {
    if ((v10 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

LABEL_10:
    operator new();
  }

  v5 = v9;
LABEL_12:
  *(v5 + v4) = 38;
  v7 = v4 + 1;
  if (SHIBYTE(v10) < 0)
  {
    *(&v9 + 1) = v7;
  }

  else
  {
    HIBYTE(v10) = v7 & 0x7F;
  }

  *(v5 + v7) = 0;
  result = *&v9;
  *a1 = v9;
  *(a1 + 16) = v10;
  return result;
}

void sub_271138630(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271138670(uint64_t **a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_2808778B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2808778B0))
  {
    sub_2718519B4("VZBlob]", 6uLL, qword_280877898);
    __cxa_guard_release(&qword_2808778B0);
  }

  if ((atomic_load_explicit(&qword_2808778F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2808778F0))
  {
    sub_271138A14(&xmmword_2808778D8);
    __cxa_guard_release(&qword_2808778F0);
  }

  if (byte_2808778EF < 0)
  {
    sub_271127178(&v23, xmmword_2808778D8, *(&xmmword_2808778D8 + 1));
  }

  else
  {
    v23 = xmmword_2808778D8;
    v24 = unk_2808778E8;
  }

  if ((atomic_load_explicit(&qword_280877910, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877910))
  {
    sub_271138D60(&xmmword_2808778F8);
    __cxa_guard_release(&qword_280877910);
  }

  if (byte_28087790F < 0)
  {
    sub_271127178(&v25, xmmword_2808778F8, *(&xmmword_2808778F8 + 1));
  }

  else
  {
    v25 = xmmword_2808778F8;
    v26 = unk_280877908;
  }

  sub_2711309E8(&v21, &v23, 2uLL);
  LOBYTE(v10) = 0;
  v20 = 0;
  if (*(a2 + 120) == 1)
  {
    v10 = *a2;
    LOBYTE(v11) = 0;
    v19 = 0;
    if (*(a2 + 112) == 1)
    {
      sub_27112F6CC(&v11, (a2 + 16));
      v19 = 1;
    }

    v20 = 1;
  }

  sub_27112E0C4(qword_280877898, &v21, &v10, **a1);
  if (v20 == 1 && v19 == 1)
  {
    if (v18 == 1)
    {
      if (v17 < 0)
      {
        operator delete(__p);
      }

      if (v15 < 0)
      {
        operator delete(v14);
      }
    }

    if (v13 == 1 && v12 < 0)
    {
      operator delete(v11);
    }
  }

  v4 = v21;
  if (v21)
  {
    v5 = v22;
    v6 = v21;
    if (v22 != v21)
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = v21;
    }

    v22 = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25);
    if ((SHIBYTE(v24) & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

LABEL_37:
    operator delete(v23);
    v9 = *MEMORY[0x277D85DE8];
    return;
  }

  if (SHIBYTE(v24) < 0)
  {
    goto LABEL_37;
  }

LABEL_34:
  v8 = *MEMORY[0x277D85DE8];
}

void sub_271138970(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_280877910);
  if (*(v1 - 73) < 0)
  {
    operator delete(*(v1 - 96));
  }

  _Unwind_Resume(a1);
}

double sub_271138A14@<D0>(uint64_t a1@<X8>)
{
  *(&v17.__r_.__value_.__s + 23) = 4;
  strcpy(&v17, "void");
  v2 = std::string::insert(&v17, 0, "const ", 6uLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v16 = v2->__r_.__value_.__r.__words[2];
  v15 = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
    v4 = SHIBYTE(v16);
    if ((SHIBYTE(v16) & 0x8000000000000000) == 0)
    {
LABEL_3:
      v5 = &v15;
      if (v4 == 22)
      {
        goto LABEL_8;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v4 = SHIBYTE(v16);
    if ((SHIBYTE(v16) & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  v4 = *(&v15 + 1);
  v6 = (v16 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v6 == *(&v15 + 1))
  {
    if ((v16 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

LABEL_8:
    operator new();
  }

  v5 = v15;
LABEL_10:
  *(v5 + v4) = 42;
  v7 = v4 + 1;
  if (SHIBYTE(v16) < 0)
  {
    *(&v15 + 1) = v7;
  }

  else
  {
    HIBYTE(v16) = v7 & 0x7F;
  }

  *(v5 + v7) = 0;
  v14 = v16;
  v13 = v15;
  v8 = SHIBYTE(v16);
  if ((SHIBYTE(v16) & 0x8000000000000000) != 0)
  {
    v8 = *(&v13 + 1);
    v10 = (v14 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v10 == *(&v13 + 1))
    {
      if ((v14 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
      {
        sub_271120DA8();
      }

LABEL_18:
      operator new();
    }

    v9 = v13;
  }

  else
  {
    v9 = &v13;
    if (SHIBYTE(v16) == 22)
    {
      goto LABEL_18;
    }
  }

  *(v9 + v8) = 38;
  v11 = v8 + 1;
  if (SHIBYTE(v14) < 0)
  {
    *(&v13 + 1) = v11;
  }

  else
  {
    HIBYTE(v14) = v11 & 0x7F;
  }

  *(v9 + v11) = 0;
  result = *&v13;
  *a1 = v13;
  *(a1 + 16) = v14;
  return result;
}

void sub_271138D24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (v21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_271138D60@<D0>(uint64_t a1@<X8>)
{
  *(&__p.__r_.__value_.__s + 23) = 13;
  strcpy(&__p, "unsigned long");
  sub_27184BC8C(&__p, "std::__1::", 10, "std::", 5uLL, 0, 0, &v7);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    v2 = SHIBYTE(v8);
    if ((SHIBYTE(v8) & 0x8000000000000000) == 0)
    {
LABEL_3:
      v3 = &v7;
      if (v2 == 22)
      {
        goto LABEL_8;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v2 = SHIBYTE(v8);
    if ((SHIBYTE(v8) & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  v2 = *(&v7 + 1);
  v4 = (v8 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v4 == *(&v7 + 1))
  {
    if ((v8 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

LABEL_8:
    operator new();
  }

  v3 = v7;
LABEL_10:
  *(v3 + v2) = 38;
  v5 = v2 + 1;
  if (SHIBYTE(v8) < 0)
  {
    *(&v7 + 1) = v5;
  }

  else
  {
    HIBYTE(v8) = v5 & 0x7F;
  }

  *(v3 + v5) = 0;
  result = *&v7;
  *a1 = v7;
  *(a1 + 16) = v8;
  return result;
}

void sub_271138F38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t VZBlobCreateWithCFDataCopy(const void *a1, uint64_t a2)
{
  if (!sub_2711390A4("VZBlobCreateWithCFDataCopy", a1, a2))
  {
    if (a1)
    {
      CFRetain(a1);
    }

    sub_2711C268C(&v4, a1);
  }

  return 0;
}

BOOL sub_2711390A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    if ((atomic_load_explicit(&qword_280879BD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280879BD0))
    {
      sub_271139EC4();
      __cxa_guard_release(&qword_280879BD0);
    }

    if (byte_280879BEF < 0)
    {
      sub_271127178(v7, xmmword_280879BD8, *(&xmmword_280879BD8 + 1));
    }

    else
    {
      *v7 = xmmword_280879BD8;
      v8 = unk_280879BE8;
    }

    v9 = 1;
    sub_27112D7CC(a1, v7, &v10);
    v21 = v10;
    LOBYTE(v22) = 0;
    v31 = 0;
    if (v20 == 1)
    {
      v24 = 0;
      if (v13 == 1)
      {
        v22 = v11;
        v23 = v12;
        v12 = 0;
        v11 = 0uLL;
        v24 = 1;
      }

      LOBYTE(v25) = 0;
      v30 = 0;
      if (v19 == 1)
      {
        v26 = v15;
        v25 = *v14;
        v14[0] = 0;
        v14[1] = 0;
        v27 = v16;
        *__p = *v17;
        v29 = v18;
        v15 = 0;
        v17[0] = 0;
        v17[1] = 0;
        v18 = 0;
        v30 = 1;
      }

      v31 = 1;
    }

    v32 = 0;
    sub_27112B960(&v21, a3);
    if ((v32 & 1) == 0 && v31 == 1)
    {
      if (v30 == 1)
      {
        if (SHIBYTE(v29) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v26) < 0)
        {
          operator delete(v25);
        }
      }

      if (v24 == 1 && SHIBYTE(v23) < 0)
      {
        operator delete(v22);
      }
    }

    if (v20 == 1)
    {
      if (v19 == 1)
      {
        if (SHIBYTE(v18) < 0)
        {
          operator delete(v17[0]);
        }

        if (SHIBYTE(v15) < 0)
        {
          operator delete(v14[0]);
        }
      }

      if (v13 == 1 && SHIBYTE(v12) < 0)
      {
        operator delete(v11);
      }
    }

    if (v9 == 1 && SHIBYTE(v8) < 0)
    {
      operator delete(v7[0]);
    }
  }

  return a2 == 0;
}

void sub_271139314(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  sub_27112E024(&a32);
  sub_27112D71C(&a17);
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

std::__shared_weak_count *sub_271139354(void (*a1)(__int128 *__return_ptr, __int128 *), uint64_t a2, __int128 *a3)
{
  v43 = &v44;
  v44 = a2;
  v31 = *a3;
  *a3 = 0;
  *(a3 + 1) = 0;
  a1(&v32, &v31);
  v3 = *(&v31 + 1);
  if (!*(&v31 + 1) || atomic_fetch_add((*(&v31 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    v4 = v42;
    if (v42)
    {
      goto LABEL_4;
    }

LABEL_8:
    v20 = v32;
    LOBYTE(v21) = 0;
    v29 = 0;
    if (v41 == 1)
    {
      sub_27112F6CC(&v21, &v33);
      v29 = 1;
    }

    v30 = 1;
    sub_27113A124(&v43, &v20);
    if (v30 == 1 && v29 == 1)
    {
      if (v28 == 1)
      {
        if (v27 < 0)
        {
          operator delete(__p);
        }

        if (v25 < 0)
        {
          operator delete(v24);
        }
      }

      if (v23 == 1 && v22 < 0)
      {
        operator delete(v21);
        if (v42 == 1)
        {
          goto LABEL_34;
        }

LABEL_38:
        if (v41 == 1)
        {
          if (v40 == 1)
          {
            if (v39 < 0)
            {
              operator delete(v38);
            }

            if (v37 < 0)
            {
              operator delete(v36);
            }
          }

          if (v35 == 1 && v34 < 0)
          {
            operator delete(v33);
          }
        }

        goto LABEL_47;
      }
    }

LABEL_33:
    if (v42 != 1)
    {
      goto LABEL_38;
    }

    goto LABEL_34;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  v4 = v42;
  if ((v42 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = sub_2711381C0(&v32);
  v6 = operator new(0x28uLL, MEMORY[0x277D826F0]);
  if (!v6)
  {
    v9[0] = 0;
    v19 = 0;
    sub_27113A124(&v43, v9);
    if (v19 == 1)
    {
      if (v18 != 1)
      {
        v3 = 0;
        if (v42 != 1)
        {
          goto LABEL_38;
        }

        goto LABEL_34;
      }

      if (v17 == 1)
      {
        if (v16 < 0)
        {
          operator delete(v15);
        }

        if (v14 < 0)
        {
          operator delete(v13);
        }
      }

      v3 = 0;
      if (v12 == 1 && v11 < 0)
      {
        operator delete(v10);
        v3 = 0;
        if (v42 == 1)
        {
          goto LABEL_34;
        }

        goto LABEL_38;
      }
    }

    else
    {
      v3 = 0;
    }

    goto LABEL_33;
  }

  v3 = v6;
  *&v6->__shared_weak_owners_ = *v5;
  *v5 = 0;
  *(v5 + 8) = 0;
  LODWORD(v6[1].__shared_owners_) = 1;
  v6->__vftable = &unk_288119278;
  v6->__shared_owners_ = &unk_2881192C8;
  if (v42 != 1)
  {
    goto LABEL_38;
  }

LABEL_34:
  v7 = *(&v32 + 1);
  if (*(&v32 + 1) && !atomic_fetch_add((*(&v32 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

LABEL_47:
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  return v3;
}

void sub_271139694(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, __int128 a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, char a39, __int128 a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54, std::logic_error a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_2711307D4(&STACK[0x200]);
  sub_27113827C(v71 - 176);
  if (a2 == 3)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    std::logic_error::logic_error(&a55, exception_ptr);
    a55.__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_begin_catch(a1);
    a32 = std::logic_error::what(&a55);
    sub_27113604C(&__p, &a32);
    sub_271369D54(&__p, v71 - 176);
    a16 = *(v71 - 176);
    sub_27184A2B4(&a17, (v71 - 160));
    a30 = 1;
    sub_27113A124((v71 - 48), &a16);
    sub_2711307D4(&a16);
    sub_27112D71C(v71 - 176);
    if (a15 == 1 && a14 < 0)
    {
      operator delete(__p);
    }

    MEMORY[0x2743BE520](&a55);
    __cxa_end_catch();
  }

  else if (a2 == 2)
  {
    v75 = __cxa_get_exception_ptr(a1);
    sub_271135FD0(&a55, v75);
    __cxa_begin_catch(a1);
    v76 = (a58 + 48);
    if (*(a58 + 71) < 0)
    {
      v76 = *v76;
    }

    a32 = v76;
    sub_27113604C(&a33, &a32);
    sub_27136A868(&a33, v71 - 176);
    a40 = *(v71 - 176);
    sub_27184A2B4(&a41, (v71 - 160));
    a54 = 1;
    sub_27113A124((v71 - 48), &a40);
    sub_2711307D4(&a40);
    sub_27112D71C(v71 - 176);
    if (a39 == 1 && a38 < 0)
    {
      operator delete(a33);
    }

    MEMORY[0x2743BEBB0](&a55);
    __cxa_end_catch();
  }

  else
  {
    __cxa_begin_catch(a1);
    a60 = 0;
    a71 = 0;
    sub_27113A124((v71 - 48), &a60);
    sub_2711307D4(&a60);
    __cxa_end_catch();
  }

  JUMPOUT(0x271139678);
}

uint64_t VZBlobCreateWithCFDataNoCopy(const void *a1, uint64_t a2)
{
  if (!sub_2711390A4("VZBlobCreateWithCFDataNoCopy", a1, a2))
  {
    if (a1)
    {
      CFRetain(a1);
    }

    sub_2711C268C(&v4, a1);
  }

  return 0;
}

CFTypeRef VZBlobCreateCFDataCopy(uint64_t a1, uint64_t a2)
{
  if (!sub_2711331C0("VZBlobCreateCFDataCopy", a1, a2))
  {
    v3 = *(a1 + 24);
    v7[0] = *(a1 + 16);
    v7[1] = v3;
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    }

    sub_2711C1EE8(v7);
  }

  cf = 0;
  v9 = 0;
  v19 = 1;
  sub_271139C00(&cf);
  v4 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v19 == 1)
  {
    v5 = v9;
    if (!v9 || atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      return v4;
    }

    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    return v4;
  }

  else
  {
    if (v18 != 1)
    {
      return v4;
    }

    if (v17 == 1)
    {
      if (v16 < 0)
      {
        operator delete(__p);
      }

      if (v14 < 0)
      {
        operator delete(v13);
      }
    }

    if (v12 != 1 || (v11 & 0x80000000) == 0)
    {
      return v4;
    }

    operator delete(v10);
    return v4;
  }
}

void sub_271139BEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27113827C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_271139C00(uint64_t result)
{
  if ((*(result + 120) & 1) == 0)
  {
    v1 = result;
    exception = __cxa_allocate_exception(0x80uLL);
    sub_2711365E8(v3, v1);
    sub_271137B44(exception, v3);
    __cxa_throw(exception, &unk_28811C2F0, sub_271130150);
  }

  return result;
}

void sub_271139C78(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112D71C(va);
  _Unwind_Resume(a1);
}

void sub_271139C8C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112D71C(va);
  __cxa_free_exception(v2);
  _Unwind_Resume(a1);
}

CFTypeRef VZBlobCreateCFDataNoCopy(uint64_t a1, uint64_t a2)
{
  if (!sub_2711331C0("VZBlobCreateCFDataNoCopy", a1, a2))
  {
    v3 = *(a1 + 24);
    v7[0] = *(a1 + 16);
    v7[1] = v3;
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    }

    sub_2711C20DC(v7);
  }

  cf = 0;
  v9 = 0;
  v19 = 1;
  sub_271139C00(&cf);
  v4 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v19 == 1)
  {
    v5 = v9;
    if (!v9 || atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      return v4;
    }

    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    return v4;
  }

  else
  {
    if (v18 != 1)
    {
      return v4;
    }

    if (v17 == 1)
    {
      if (v16 < 0)
      {
        operator delete(__p);
      }

      if (v14 < 0)
      {
        operator delete(v13);
      }
    }

    if (v12 != 1 || (v11 & 0x80000000) == 0)
    {
      return v4;
    }

    operator delete(v10);
    return v4;
  }
}

void sub_271139EB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27113827C(va);
  _Unwind_Resume(a1);
}

double sub_271139EC4()
{
  *(&__p.__r_.__value_.__s + 23) = 8;
  strcpy(&__p, "__CFData");
  sub_27184BC8C(&__p, "std::__1::", 10, "std::", 5uLL, 0, 0, &v9);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v0 = std::string::insert(&v9, 0, "const ", 6uLL);
  v1 = *&v0->__r_.__value_.__l.__data_;
  v8 = v0->__r_.__value_.__r.__words[2];
  v7 = v1;
  v0->__r_.__value_.__l.__size_ = 0;
  v0->__r_.__value_.__r.__words[2] = 0;
  v0->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
    v2 = SHIBYTE(v8);
    if ((SHIBYTE(v8) & 0x8000000000000000) == 0)
    {
LABEL_5:
      v3 = &v7;
      if (v2 == 22)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v2 = SHIBYTE(v8);
    if ((SHIBYTE(v8) & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }
  }

  v2 = *(&v7 + 1);
  v4 = (v8 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v4 == *(&v7 + 1))
  {
    if ((v8 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

LABEL_10:
    operator new();
  }

  v3 = v7;
LABEL_12:
  *(v3 + v2) = 42;
  v5 = v2 + 1;
  if (SHIBYTE(v8) < 0)
  {
    *(&v7 + 1) = v5;
  }

  else
  {
    HIBYTE(v8) = v5 & 0x7F;
  }

  *(v3 + v5) = 0;
  result = *&v7;
  xmmword_280879BD8 = v7;
  unk_280879BE8 = v8;
  return result;
}

void sub_27113A0E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27113A124(uint64_t **a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_2808778B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2808778B0))
  {
    sub_2718519B4("VZBlob]", 6uLL, qword_280877898);
    __cxa_guard_release(&qword_2808778B0);
  }

  if ((atomic_load_explicit(&qword_280877930, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877930))
  {
    sub_27113A3FC();
  }

  if (byte_28087792F < 0)
  {
    sub_271127178(&v22, xmmword_280877918, *(&xmmword_280877918 + 1));
  }

  else
  {
    v22 = xmmword_280877918;
    v23 = unk_280877928;
  }

  sub_2711309E8(&v20, &v22, 1uLL);
  LOBYTE(v9) = 0;
  v19 = 0;
  if (*(a2 + 120) == 1)
  {
    v9 = *a2;
    LOBYTE(v10) = 0;
    v18 = 0;
    if (*(a2 + 112) == 1)
    {
      sub_27112F6CC(&v10, (a2 + 16));
      v18 = 1;
    }

    v19 = 1;
  }

  sub_27112E0C4(qword_280877898, &v20, &v9, **a1);
  if (v19 == 1 && v18 == 1)
  {
    if (v17 == 1)
    {
      if (v16 < 0)
      {
        operator delete(__p);
      }

      if (v14 < 0)
      {
        operator delete(v13);
      }
    }

    if (v12 == 1 && v11 < 0)
    {
      operator delete(v10);
    }
  }

  v4 = v20;
  if (v20)
  {
    v5 = v21;
    v6 = v20;
    if (v21 != v20)
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = v20;
    }

    v21 = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_27113A3AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_27112D66C(v9 + 16);
  sub_2711307D4(&a9);
  sub_27137F4D0((v10 - 96));
  if (*(v10 - 41) < 0)
  {
    operator delete(*(v10 - 64));
  }

  _Unwind_Resume(a1);
}

void sub_27113A4D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27113A500(const void **a1@<X0>, std::string *a2@<X8>)
{
  v22 = *MEMORY[0x277D85DE8];
  *(&__p.__r_.__value_.__s + 23) = 8;
  strcpy(&__p, "__CFData");
  sub_27184BC8C(&__p, "std::__1::", 10, "std::", 5uLL, 0, 0, &v18);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v4 = std::string::insert(&v18, 0, "const ", 6uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v17 = v4->__r_.__value_.__r.__words[2];
  v16 = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
    v6 = SHIBYTE(v17);
    if ((SHIBYTE(v17) & 0x8000000000000000) == 0)
    {
LABEL_5:
      v7 = &v16;
      if (v6 == 22)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v6 = SHIBYTE(v17);
    if ((SHIBYTE(v17) & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }
  }

  v6 = *(&v16 + 1);
  v8 = (v17 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v8 == *(&v16 + 1))
  {
    if ((v17 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

LABEL_10:
    operator new();
  }

  v7 = v16;
LABEL_12:
  *(v7 + v6) = 42;
  v9 = v6 + 1;
  if (SHIBYTE(v17) < 0)
  {
    *(&v16 + 1) = v9;
  }

  else
  {
    HIBYTE(v17) = v9 & 0x7F;
  }

  *(v7 + v9) = 0;
  *v20 = v16;
  v21 = v17;
  sub_2711309E8(v15, v20, 1uLL);
  sub_271851AD8(a1, v15, a2);
  v10 = v15[0];
  if (v15[0])
  {
    v11 = v15[1];
    v12 = v15[0];
    if (v15[1] != v15[0])
    {
      do
      {
        v13 = *(v11 - 1);
        v11 -= 3;
        if (v13 < 0)
        {
          operator delete(*v11);
        }
      }

      while (v11 != v10);
      v12 = v15[0];
    }

    v15[1] = v10;
    operator delete(v12);
  }

  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20[0]);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void sub_27113A7CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (v34 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_27113A830(uint64_t result)
{
  *(result + 16) = &unk_288114818;
  v1 = *(result + 32);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_27113A8C8(uint64_t a1)
{
  *(a1 + 8) = &unk_288114818;
  v1 = *(a1 + 24);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_27113A964(uint64_t a1)
{
  *(a1 + 16) = &unk_288114818;
  v1 = *(a1 + 32);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

void sub_27113AA10(uint64_t a1)
{
  *(a1 + 8) = &unk_288114818;
  v1 = *(a1 + 24);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t VZCameraGetTypeID()
{
  if (atomic_load_explicit(&qword_280879BF8, memory_order_acquire))
  {
    return qword_280879BF0;
  }

  if (__cxa_guard_acquire(&qword_280879BF8))
  {
    qword_280879BF0 = sub_27112B4B8();
    __cxa_guard_release(&qword_280879BF8);
  }

  return qword_280879BF0;
}

uint64_t VZDataCreateWithCamera(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v82 = *MEMORY[0x277D85DE8];
  if (!sub_27113B51C("VZDataCreateWithCamera", a1, a3))
  {
    sub_27113347C(a2, &v20);
    v18 = &v19;
    v19 = a3;
    LOBYTE(v49) = 0;
    v81 = 0;
    if (v48 != 1)
    {
      goto LABEL_20;
    }

    v49 = v20;
    v50 = v21;
    LOBYTE(v51) = 0;
    v53 = 0;
    if (v24 == 1)
    {
      v51 = *v22;
      v52 = v23;
      v22[1] = 0;
      v23 = 0;
      v22[0] = 0;
      v53 = 1;
    }

    v54 = v25;
    v55 = v26;
    LOBYTE(v56) = 0;
    v58 = 0;
    if (v29 == 1)
    {
      v56 = v27;
      v57 = v28;
      v28 = 0;
      v27 = 0uLL;
      v58 = 1;
      LOBYTE(v59) = 0;
      v63 = 0;
      if (v32 != 1)
      {
LABEL_8:
        LOBYTE(v64[0]) = 0;
        v66 = 0;
        if (v35 != 1)
        {
          goto LABEL_9;
        }

        goto LABEL_13;
      }
    }

    else
    {
      LOBYTE(v59) = 0;
      v63 = 0;
      if (v32 != 1)
      {
        goto LABEL_8;
      }
    }

    _X0 = 0;
    _X1 = 0;
    v60 = v31;
    v59 = *v30;
    v30[1] = 0;
    v31 = 0;
    v30[0] = 0;
    __asm { CASPAL          X0, X1, X0, X1, [X8] }

    v61 = _X0;
    v62 = 0;
    v63 = 1;
    LOBYTE(v64[0]) = 0;
    v66 = 0;
    if (v35 != 1)
    {
LABEL_9:
      LOBYTE(v67) = 0;
      v80 = 0;
      if (v47 != 1)
      {
        goto LABEL_19;
      }

      goto LABEL_14;
    }

LABEL_13:
    *v64 = *v33;
    v65 = v34;
    v34 = 0;
    v33[1] = 0;
    v33[0] = 0;
    v66 = 1;
    LOBYTE(v67) = 0;
    v80 = 0;
    if (v47 != 1)
    {
LABEL_19:
      v81 = 1;
LABEL_20:
      sub_2711C9C2C(a1 + 16, &v49);
    }

LABEL_14:
    LOBYTE(v67) = 0;
    v69 = 0;
    if (v38 == 1)
    {
      v67 = v36;
      v68 = v37;
      v37 = 0;
      v36 = 0uLL;
      v69 = 1;
      LOBYTE(v70) = 0;
      v74 = 0;
      if (v41 != 1)
      {
LABEL_16:
        LOBYTE(__p) = 0;
        v77 = 0;
        if (v44 != 1)
        {
LABEL_18:
          v78 = v45;
          v79 = v46;
          v80 = 1;
          goto LABEL_19;
        }

LABEL_17:
        __p = *v42;
        v76 = v43;
        v43 = 0;
        v42[0] = 0;
        v42[1] = 0;
        v77 = 1;
        goto LABEL_18;
      }
    }

    else
    {
      LOBYTE(v70) = 0;
      v74 = 0;
      if (v41 != 1)
      {
        goto LABEL_16;
      }
    }

    _X0 = 0;
    _X1 = 0;
    v70 = *v39;
    v71 = v40;
    v40 = 0;
    v39[0] = 0;
    v39[1] = 0;
    __asm { CASPAL          X0, X1, X0, X1, [X9] }

    v72 = _X0;
    v73 = 0;
    v74 = 1;
    LOBYTE(__p) = 0;
    v77 = 0;
    if (v44 != 1)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v16 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_27113B2E4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::logic_error a10, int a11, __int16 a12, char a13, char a14, char a15, __int128 a16, __int128 a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::runtime_error __p, int a30, __int16 a31, char a32, char a33, char a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t *a53)
{
  if (a2)
  {
    sub_2711307D4(&a37);
    sub_271137BDC(&STACK[0x4A0]);
    if (a2 == 3)
    {
      exception_ptr = __cxa_get_exception_ptr(a1);
      std::logic_error::logic_error(&a10, exception_ptr);
      a10.__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_begin_catch(a1);
      a9 = std::logic_error::what(&a10);
      sub_27113604C(&__p, &a9);
      sub_271369D54(&__p, &a16);
      *&STACK[0x4A0] = a16;
      sub_27184A2B4(&STACK[0x4B0], &a17);
      LOBYTE(STACK[0x518]) = 1;
      sub_27113E130(&a53, &STACK[0x4A0]);
      sub_2711307D4(&STACK[0x4A0]);
      sub_27112D71C(&a16);
      if (a34 == 1 && a33 < 0)
      {
        operator delete(__p.__vftable);
      }

      MEMORY[0x2743BE520](&a10);
      __cxa_end_catch();
    }

    else if (a2 == 2)
    {
      v56 = __cxa_get_exception_ptr(a1);
      sub_271135FD0(&__p, v56);
      __cxa_begin_catch(a1);
      v57 = (a35 + 48);
      if (*(a35 + 71) < 0)
      {
        v57 = *v57;
      }

      a9 = v57;
      sub_27113604C(&a10, &a9);
      sub_27136A868(&a10, &a16);
      *&STACK[0x4A0] = a16;
      sub_27184A2B4(&STACK[0x4B0], &a17);
      LOBYTE(STACK[0x518]) = 1;
      sub_27113E130(&a53, &STACK[0x4A0]);
      sub_2711307D4(&STACK[0x4A0]);
      sub_27112D71C(&a16);
      if (a15 == 1 && a14 < 0)
      {
        operator delete(a10.__vftable);
      }

      MEMORY[0x2743BEBB0](&__p);
      __cxa_end_catch();
    }

    else
    {
      __cxa_begin_catch(a1);
      LOBYTE(STACK[0x4A0]) = 0;
      LOBYTE(STACK[0x518]) = 0;
      sub_27113E130(&a53, &STACK[0x4A0]);
      sub_2711307D4(&STACK[0x4A0]);
      __cxa_end_catch();
    }

    JUMPOUT(0x27113B154);
  }

  _Unwind_Resume(a1);
}

BOOL sub_27113B51C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    if ((atomic_load_explicit(&qword_280879C00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280879C00))
    {
      sub_27113DED0();
      __cxa_guard_release(&qword_280879C00);
    }

    if (byte_280879C3F < 0)
    {
      sub_271127178(v7, xmmword_280879C28, *(&xmmword_280879C28 + 1));
    }

    else
    {
      *v7 = xmmword_280879C28;
      v8 = unk_280879C38;
    }

    v9 = 1;
    sub_27112D7CC(a1, v7, &v10);
    v21 = v10;
    LOBYTE(v22) = 0;
    v31 = 0;
    if (v20 == 1)
    {
      v24 = 0;
      if (v13 == 1)
      {
        v22 = v11;
        v23 = v12;
        v12 = 0;
        v11 = 0uLL;
        v24 = 1;
      }

      LOBYTE(v25) = 0;
      v30 = 0;
      if (v19 == 1)
      {
        v26 = v15;
        v25 = *v14;
        v14[0] = 0;
        v14[1] = 0;
        v27 = v16;
        *__p = *v17;
        v29 = v18;
        v15 = 0;
        v17[0] = 0;
        v17[1] = 0;
        v18 = 0;
        v30 = 1;
      }

      v31 = 1;
    }

    v32 = 0;
    sub_27112B960(&v21, a3);
    if ((v32 & 1) == 0 && v31 == 1)
    {
      if (v30 == 1)
      {
        if (SHIBYTE(v29) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v26) < 0)
        {
          operator delete(v25);
        }
      }

      if (v24 == 1 && SHIBYTE(v23) < 0)
      {
        operator delete(v22);
      }
    }

    if (v20 == 1)
    {
      if (v19 == 1)
      {
        if (SHIBYTE(v18) < 0)
        {
          operator delete(v17[0]);
        }

        if (SHIBYTE(v15) < 0)
        {
          operator delete(v14[0]);
        }
      }

      if (v13 == 1 && SHIBYTE(v12) < 0)
      {
        operator delete(v11);
      }
    }

    if (v9 == 1 && SHIBYTE(v8) < 0)
    {
      operator delete(v7[0]);
    }
  }

  return a2 == 0;
}

void sub_27113B78C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  sub_27112E024(&a32);
  sub_27112D71C(&a17);
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void VZDataGetCamera(uint64_t a1, uint64_t a2)
{
  if (sub_271133B3C("VZDataGetCamera", a1, a2) || *(a1 + 584))
  {
    return;
  }

  v32 = &v33;
  v33 = a2;
  sub_2711CAB30(a1 + 32, v22);
  v4 = v31;
  if ((v31 & 1) == 0)
  {
    v11 = *v22;
    LOBYTE(v12) = 0;
    v20 = 0;
    if (v30 == 1)
    {
      sub_27112F6CC(&v12, &v22[16]);
      v20 = 1;
    }

    v21 = 1;
    sub_27113E728(&v32, &v11);
    if (v21 == 1 && v20 == 1)
    {
      if (v19 == 1)
      {
        if (v18 < 0)
        {
          operator delete(__p);
        }

        if (v16 < 0)
        {
          operator delete(v15);
        }
      }

      if (v14 == 1 && v13 < 0)
      {
        operator delete(v12);
      }
    }

    goto LABEL_29;
  }

  sub_27113EA00(v22);
  v5 = operator new(0x30uLL, MEMORY[0x277D826F0]);
  if (v5)
  {
    *(v5 + 2) = &unk_288114818;
    *(v5 + 24) = *&v22[8];
    *&v22[8] = 0;
    *&v22[16] = 0;
    *(v5 + 10) = 1;
    *v5 = &unk_2881190B8;
    *(v5 + 1) = &unk_288119108;
  }

  else
  {
    LOBYTE(v11) = 0;
    v21 = 0;
    sub_27113E728(&v32, &v11);
    if (v21 == 1 && v20 == 1)
    {
      if (v19 == 1)
      {
        if (v18 < 0)
        {
          operator delete(__p);
        }

        if (v16 < 0)
        {
          operator delete(v15);
        }
      }

      v5 = 0;
      if (v14 != 1 || (v13 & 0x80000000) == 0)
      {
        goto LABEL_29;
      }

      operator delete(v12);
    }

    v5 = 0;
  }

LABEL_29:
  if (v31 == 1)
  {
    *v22 = &unk_288114818;
    v6 = *&v22[16];
    if (*&v22[16] && !atomic_fetch_add((*&v22[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      v7 = v5;
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
      v5 = v7;
    }
  }

  else if (v30 == 1)
  {
    if (v29 == 1)
    {
      if (v28 < 0)
      {
        v8 = v5;
        operator delete(v27);
        v5 = v8;
      }

      if (v26 < 0)
      {
        v9 = v5;
        operator delete(v25);
        v5 = v9;
      }
    }

    if (v24 == 1 && v23 < 0)
    {
      v10 = v5;
      operator delete(*&v22[16]);
      v5 = v10;
    }
  }

  if ((v4 & 1) == 0)
  {
    v5 = 0;
  }

  *(a1 + 584) = v5;
}

void sub_27113BB38(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, const char *a9, std::logic_error a10, int a11, __int16 a12, char a13, char a14, char a15, __int128 a16, __int128 a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::runtime_error __p, int a30, __int16 a31, char a32, char a33, char a34, uint64_t a35, uint64_t a36, char a37)
{
  sub_2711307D4(&a37);
  sub_27113EABC(v37 - 192);
  if (a2 == 3)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    std::logic_error::logic_error(&a10, exception_ptr);
    a10.__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_begin_catch(a1);
    a9 = std::logic_error::what(&a10);
    sub_27113604C(&__p, &a9);
    sub_271369D54(&__p, &a16);
    *(v37 - 192) = a16;
    sub_27184A2B4(v37 - 176, &a17);
    *(v37 - 72) = 1;
    sub_27113E728((v37 - 64), v37 - 192);
    sub_2711307D4(v37 - 192);
    sub_27112D71C(&a16);
    if (a34 == 1 && a33 < 0)
    {
      operator delete(__p.__vftable);
    }

    MEMORY[0x2743BE520](&a10);
    __cxa_end_catch();
  }

  else if (a2 == 2)
  {
    v41 = __cxa_get_exception_ptr(a1);
    sub_271135FD0(&__p, v41);
    __cxa_begin_catch(a1);
    v42 = (a35 + 48);
    if (*(a35 + 71) < 0)
    {
      v42 = *v42;
    }

    a9 = v42;
    sub_27113604C(&a10, &a9);
    sub_27136A868(&a10, &a16);
    *(v37 - 192) = a16;
    sub_27184A2B4(v37 - 176, &a17);
    *(v37 - 72) = 1;
    sub_27113E728((v37 - 64), v37 - 192);
    sub_2711307D4(v37 - 192);
    sub_27112D71C(&a16);
    if (a15 == 1 && a14 < 0)
    {
      operator delete(a10.__vftable);
    }

    MEMORY[0x2743BEBB0](&__p);
    __cxa_end_catch();
  }

  else
  {
    __cxa_begin_catch(a1);
    *(v37 - 192) = 0;
    *(v37 - 72) = 0;
    sub_27113E728((v37 - 64), v37 - 192);
    sub_2711307D4(v37 - 192);
    __cxa_end_catch();
  }

  JUMPOUT(0x27113BB18);
}

void VZCameraCreate(char a1)
{
  v1[0] = a1;
  v2 = &v3;
  v3 = 0;
  sub_2711C8868(v1);
}

void sub_27113C074(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, const char *a11, std::logic_error a12, int a13, __int16 a14, char a15, char a16, char a17, __int128 a18, __int128 a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, std::runtime_error a31, int a32, __int16 a33, char a34, char a35, char a36, uint64_t a37, uint64_t a38, char a39)
{
  sub_2711307D4(&a39);
  sub_27113EABC(v40 - 192);
  if (a2 == 3)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    std::logic_error::logic_error(&a12, exception_ptr);
    a12.__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_begin_catch(a1);
    a11 = std::logic_error::what(&a12);
    sub_27113604C(&a31, &a11);
    sub_271369D54(&a31, &a18);
    *(v39 + 176) = a18;
    sub_27184A2B4(v40 - 176, &a19);
    *(v40 - 72) = 1;
    sub_27113EC70((v40 - 64), v40 - 192);
    sub_2711307D4(v40 - 192);
    sub_27112D71C(&a18);
    if (a36 == 1 && a35 < 0)
    {
      operator delete(*v39);
    }

    MEMORY[0x2743BE520](&a12);
    __cxa_end_catch();
  }

  else if (a2 == 2)
  {
    v44 = __cxa_get_exception_ptr(a1);
    sub_271135FD0(&a31, v44);
    __cxa_begin_catch(a1);
    v45 = *(v39 + 32);
    v46 = (v45 + 48);
    if (*(v45 + 71) < 0)
    {
      v46 = *v46;
    }

    a11 = v46;
    sub_27113604C(&a12, &a11);
    sub_27136A868(&a12, &a18);
    *(v39 + 176) = a18;
    sub_27184A2B4(v40 - 176, &a19);
    *(v40 - 72) = 1;
    sub_27113EC70((v40 - 64), v40 - 192);
    sub_2711307D4(v40 - 192);
    sub_27112D71C(&a18);
    if (a17 == 1 && a16 < 0)
    {
      operator delete(a12.__vftable);
    }

    MEMORY[0x2743BEBB0](&a31);
    __cxa_end_catch();
  }

  else
  {
    __cxa_begin_catch(a1);
    *(v40 - 192) = 0;
    *(v40 - 72) = 0;
    sub_27113EC70((v40 - 64), v40 - 192);
    sub_2711307D4(v40 - 192);
    __cxa_end_catch();
  }

  JUMPOUT(0x27113C054);
}

uint64_t VZCameraSetPinholeLensParametersF(uint64_t a1, float a2, float a3, float a4, float a5)
{
  if (!sub_27113C3B8("VZCameraSetPinholeLensParametersF", a1))
  {
    sub_2711C2C64(a1 + 16, &v11, a2, a3, a4, a5);
  }

  return 0;
}

BOOL sub_27113C3B8(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    if ((atomic_load_explicit(&qword_280879C20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280879C20))
    {
      sub_27113EF50();
      __cxa_guard_release(&qword_280879C20);
    }

    if (byte_280879C9F < 0)
    {
      sub_271127178(v5, xmmword_280879C88, *(&xmmword_280879C88 + 1));
    }

    else
    {
      *v5 = xmmword_280879C88;
      v6 = unk_280879C98;
    }

    v7 = 1;
    sub_27112D7CC(a1, v5, &v8);
    v19 = v8;
    LOBYTE(v20) = 0;
    v29 = 0;
    if (v18 == 1)
    {
      v22 = 0;
      if (v11 == 1)
      {
        v20 = v9;
        v21 = v10;
        v10 = 0;
        v9 = 0uLL;
        v22 = 1;
      }

      LOBYTE(v23) = 0;
      v28 = 0;
      if (v17 == 1)
      {
        v24 = v13;
        v23 = *v12;
        v12[0] = 0;
        v12[1] = 0;
        v25 = v14;
        *__p = *v15;
        v27 = v16;
        v13 = 0;
        v15[0] = 0;
        v15[1] = 0;
        v16 = 0;
        v28 = 1;
      }

      v29 = 1;
    }

    v30 = 0;
    sub_27112B960(&v19, 0);
    if ((v30 & 1) == 0 && v29 == 1)
    {
      if (v28 == 1)
      {
        if (SHIBYTE(v27) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v24) < 0)
        {
          operator delete(v23);
        }
      }

      if (v22 == 1 && SHIBYTE(v21) < 0)
      {
        operator delete(v20);
      }
    }

    if (v18 == 1)
    {
      if (v17 == 1)
      {
        if (SHIBYTE(v16) < 0)
        {
          operator delete(v15[0]);
        }

        if (SHIBYTE(v13) < 0)
        {
          operator delete(v12[0]);
        }
      }

      if (v11 == 1 && SHIBYTE(v10) < 0)
      {
        operator delete(v9);
      }
    }

    if (v7 == 1 && SHIBYTE(v6) < 0)
    {
      operator delete(v5[0]);
    }
  }

  return a2 == 0;
}

void sub_27113C61C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  sub_27112E024(&a32);
  sub_27112D71C(&a17);
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_27113C65C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a1;
  if (*(a2 + 120))
  {
    return 1;
  }

  v4 = a3;
  sub_27113F150("in function ", &v20);
  sub_271849064(a2, &v8, v10);
  sub_27112B960(v10, a4);
  if (v19 == 1)
  {
    if (v18 == 1)
    {
      if (v17 < 0)
      {
        operator delete(__p);
      }

      if (v15 < 0)
      {
        operator delete(v14);
      }
    }

    if (v13 == 1 && v12 < 0)
    {
      operator delete(v11);
    }
  }

  if ((v9 & 0x80000000) == 0)
  {
    return v4;
  }

  operator delete(v8);
  return v4;
}

void sub_27113C754(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  sub_27112D71C(&a16);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t VZCameraSetPinholeLensParametersD(uint64_t a1, double a2, double a3, double a4, double a5)
{
  if (!sub_27113C3B8("VZCameraSetPinholeLensParametersD", a1))
  {
    sub_2711C4BEC(a1 + 16, &v11, a2, a3, a4, a5);
  }

  return 0;
}

uint64_t VZCameraSetHeikkilaLensParametersF(uint64_t a1, float a2, float a3, float a4, float a5, float a6, float a7, float a8, float a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17)
{
  if (!sub_27113C3B8("VZCameraSetHeikkilaLensParametersF", a1))
  {
    sub_2711C4D90(a1 + 16, v27, a2, a3, a4, a5, a6, a7, a8, a9, a17);
  }

  return 0;
}

void sub_27113CA10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

uint64_t VZCameraSetHeikkilaLensParametersD(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (!sub_27113C3B8("VZCameraSetHeikkilaLensParametersD", a1))
  {
    sub_2711C6620(a1 + 16, v27, a2, a3, a4, a5, a6, a7, a8, a9, a17);
  }

  return 0;
}

void sub_27113CB74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

BOOL VZCameraSetImageSize(uint64_t a1)
{
  v2 = sub_27113C3B8("VZCameraSetImageSize", a1);
  if (!v2)
  {
    sub_2711C8DDC(a1 + 16);
  }

  return !v2;
}

uint64_t VZCameraGetLensModelType(uint64_t a1)
{
  if (sub_27113B51C("VZCameraGetLensModelType", a1, 0))
  {
    return 255;
  }

  v3 = *(**(a1 + 24) + 24);

  return v3();
}

uint64_t VZCameraGetValueType(uint64_t a1)
{
  if (sub_27113B51C("VZCameraGetValueType", a1, 0))
  {
    return 255;
  }

  v3 = *(**(a1 + 24) + 32);

  return v3();
}

uint64_t VZCameraGetPixelOrigin(uint64_t a1)
{
  if (sub_27113B51C("VZCameraGetPixelOrigin", a1, 0))
  {
    return 255;
  }

  v3 = *(**(a1 + 24) + 16);

  return v3();
}

uint64_t VZCameraGetFocalLengthF(uint64_t a1)
{
  v2 = sub_27113B51C("VZCameraGetFocalLengthF", a1, 0);
  result = 0;
  if (!v2)
  {
    sub_2711C6874(a1 + 16, v7);
    result = sub_27113CE50("VZCameraGetFocalLengthF", v7);
    if ((v16 & 1) == 0 && v15 == 1)
    {
      if (v14 == 1)
      {
        if (v13 < 0)
        {
          v4 = result;
          operator delete(__p);
          result = v4;
        }

        if (v11 < 0)
        {
          v5 = result;
          operator delete(v10);
          result = v5;
        }
      }

      if (v9 == 1 && v8 < 0)
      {
        v6 = result;
        operator delete(v7[2]);
        return v6;
      }
    }
  }

  return result;
}

uint64_t sub_27113CE50(uint64_t a1, uint64_t *a2)
{
  v16 = a1;
  if (a2[15])
  {
    return *a2;
  }

  sub_27113F150("in function ", &v16);
  sub_271849064(a2, &v4, v6);
  sub_27112B960(v6, 0);
  if (v15 == 1)
  {
    if (v14 == 1)
    {
      if (v13 < 0)
      {
        operator delete(__p);
      }

      if (v11 < 0)
      {
        operator delete(v10);
      }
    }

    if (v9 == 1 && v8 < 0)
    {
      operator delete(v7);
    }
  }

  if (v5 < 0)
  {
    operator delete(v4);
  }

  return 0;
}

void sub_27113CF44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  sub_27112D71C(&a16);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t VZCameraGetFocalLengthD(uint64_t a1)
{
  v2 = sub_27113B51C("VZCameraGetFocalLengthD", a1, 0);
  result = 0;
  if (!v2)
  {
    sub_2711C6BE0(a1 + 16, v7);
    result = sub_27113D068("VZCameraGetFocalLengthD", v7);
    if ((v16 & 1) == 0 && v15 == 1)
    {
      if (v14 == 1)
      {
        if (v13 < 0)
        {
          v4 = result;
          operator delete(__p);
          result = v4;
        }

        if (v11 < 0)
        {
          v5 = result;
          operator delete(v10);
          result = v5;
        }
      }

      if (v9 == 1 && v8 < 0)
      {
        v6 = result;
        operator delete(v7[2]);
        return v6;
      }
    }
  }

  return result;
}

uint64_t sub_27113D068(uint64_t a1, uint64_t *a2)
{
  v16 = a1;
  if (a2[15])
  {
    return *a2;
  }

  sub_27113F150("in function ", &v16);
  sub_271849064(a2, &v4, v6);
  sub_27112B960(v6, 0);
  if (v15 == 1)
  {
    if (v14 == 1)
    {
      if (v13 < 0)
      {
        operator delete(__p);
      }

      if (v11 < 0)
      {
        operator delete(v10);
      }
    }

    if (v9 == 1 && v8 < 0)
    {
      operator delete(v7);
    }
  }

  if (v5 < 0)
  {
    operator delete(v4);
  }

  return 0;
}

void sub_27113D15C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  sub_27112D71C(&a16);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t VZCameraGetPrincipalPointF(uint64_t a1)
{
  v2 = sub_27113B51C("VZCameraGetPrincipalPointF", a1, 0);
  result = 0;
  if (!v2)
  {
    sub_2711C6F4C(a1 + 16, v7);
    result = sub_27113CE50("VZCameraGetPrincipalPointF", v7);
    if ((v16 & 1) == 0 && v15 == 1)
    {
      if (v14 == 1)
      {
        if (v13 < 0)
        {
          v4 = result;
          operator delete(__p);
          result = v4;
        }

        if (v11 < 0)
        {
          v5 = result;
          operator delete(v10);
          result = v5;
        }
      }

      if (v9 == 1 && v8 < 0)
      {
        v6 = result;
        operator delete(v7[2]);
        return v6;
      }
    }
  }

  return result;
}

uint64_t VZCameraGetPrincipalPointD(uint64_t a1)
{
  v2 = sub_27113B51C("VZCameraGetPrincipalPointD", a1, 0);
  result = 0;
  if (!v2)
  {
    sub_2711C72B8(a1 + 16, v7);
    result = sub_27113D068("VZCameraGetPrincipalPointD", v7);
    if ((v16 & 1) == 0 && v15 == 1)
    {
      if (v14 == 1)
      {
        if (v13 < 0)
        {
          v4 = result;
          operator delete(__p);
          result = v4;
        }

        if (v11 < 0)
        {
          v5 = result;
          operator delete(v10);
          result = v5;
        }
      }

      if (v9 == 1 && v8 < 0)
      {
        v6 = result;
        operator delete(v7[2]);
        return v6;
      }
    }
  }

  return result;
}

uint64_t VZCameraGetHeikkilaLensDistortionCoefficientsF(uint64_t a1)
{
  v2 = sub_27113B51C("VZCameraGetHeikkilaLensDistortionCoefficientsF", a1, 0);
  result = 0;
  if (!v2)
  {
    sub_2711C7624(a1 + 16, v4);
    v26 = "VZCameraGetHeikkilaLensDistortionCoefficientsF";
    if (v13)
    {
      return v4[0];
    }

    sub_27113F150("in function ", &v26);
    sub_271849064(v4, &v14, v16);
    sub_27112B960(v16, 0);
    if (v25 == 1)
    {
      if (v24 == 1)
      {
        if (v23 < 0)
        {
          operator delete(__p);
        }

        if (v21 < 0)
        {
          operator delete(v20);
        }
      }

      if (v19 == 1 && v18 < 0)
      {
        operator delete(v17);
      }
    }

    if (v15 < 0)
    {
      operator delete(v14);
      if (v13)
      {
        return 0;
      }
    }

    else if (v13)
    {
      return 0;
    }

    if (v12 != 1)
    {
      return 0;
    }

    if (v11 == 1)
    {
      if (v10 < 0)
      {
        operator delete(v9);
      }

      if (v8 < 0)
      {
        operator delete(v7);
      }
    }

    result = 0;
    if (v6 == 1 && v5 < 0)
    {
      operator delete(v4[2]);
      return 0;
    }
  }

  return result;
}

void sub_27113D514(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32)
{
  sub_27112D71C(&a32);
  if (a31 < 0)
  {
    operator delete(__p);
    sub_27112E024(&a10);
    _Unwind_Resume(a1);
  }

  sub_27112E024(&a10);
  _Unwind_Resume(a1);
}

uint64_t VZCameraGetHeikkilaLensDistortionCoefficientsD(uint64_t a1)
{
  v2 = sub_27113B51C("VZCameraGetHeikkilaLensDistortionCoefficientsD", a1, 0);
  result = 0;
  if (!v2)
  {
    sub_2711C81B4(a1 + 16, v4);
    v26 = "VZCameraGetHeikkilaLensDistortionCoefficientsD";
    if (v13)
    {
      return v4[0];
    }

    sub_27113F150("in function ", &v26);
    sub_271849064(v4, &v14, v16);
    sub_27112B960(v16, 0);
    if (v25 == 1)
    {
      if (v24 == 1)
      {
        if (v23 < 0)
        {
          operator delete(__p);
        }

        if (v21 < 0)
        {
          operator delete(v20);
        }
      }

      if (v19 == 1 && v18 < 0)
      {
        operator delete(v17);
      }
    }

    if (v15 < 0)
    {
      operator delete(v14);
      if (v13)
      {
        return 0;
      }
    }

    else if (v13)
    {
      return 0;
    }

    if (v12 != 1)
    {
      return 0;
    }

    if (v11 == 1)
    {
      if (v10 < 0)
      {
        operator delete(v9);
      }

      if (v8 < 0)
      {
        operator delete(v7);
      }
    }

    result = 0;
    if (v6 == 1 && v5 < 0)
    {
      operator delete(v4[2]);
      return 0;
    }
  }

  return result;
}

void sub_27113D6F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32)
{
  sub_27112D71C(&a32);
  if (a31 < 0)
  {
    operator delete(__p);
    sub_27112E024(&a10);
    _Unwind_Resume(a1);
  }

  sub_27112E024(&a10);
  _Unwind_Resume(a1);
}

uint64_t VZCameraGetImageSize(uint64_t a1)
{
  if (sub_27113B51C("VZCameraGetImageSize", a1, 0))
  {
    return 0;
  }

  v3 = *(**(a1 + 24) + 40);

  return v3();
}

uint64_t sub_27113D7CC(uint64_t result)
{
  if (atomic_fetch_add((result + 40), 0xFFFFFFFF) == 1)
  {
    return (*(*(result + 8) + 8))();
  }

  return result;
}

uint64_t sub_27113D808()
{
  if (atomic_load_explicit(&qword_280879BF8, memory_order_acquire))
  {
    return qword_280879BF0;
  }

  if (__cxa_guard_acquire(&qword_280879BF8))
  {
    qword_280879BF0 = sub_27112B4B8();
    __cxa_guard_release(&qword_280879BF8);
  }

  return qword_280879BF0;
}

void *sub_27113D86C(uint64_t a1, char **lpsrc)
{
  v3 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_28812C878, &unk_28812C2C8, 0);
  if (result)
  {
    return sub_27173FF38(a1 + 16, result + 16);
  }

  return result;
}

void sub_27113D8EC(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_280879C10, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280879C10))
    {
      sub_2718519B4("VZCamera]", 8uLL, qword_280879C58);
      __cxa_guard_release(&qword_280879C10);
    }
  }

  v2 = a1;
  operator new();
}

void sub_27113DD90(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  __cxa_guard_abort(&qword_280879C10);
  __cxa_begin_catch(a1);
  sub_27113EBE0();
  sub_27112B400(&__p, "failed to create description");
  sub_27112DB38(qword_280879C58, &__p, 0);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  JUMPOUT(0x27113DD00);
}

double sub_27113DED0()
{
  *(&__p.__r_.__value_.__s + 23) = 8;
  strcpy(&__p, "VZCamera");
  sub_27184BC8C(&__p, "std::__1::", 10, "std::", 5uLL, 0, 0, &v9);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v0 = std::string::insert(&v9, 0, "const ", 6uLL);
  v1 = *&v0->__r_.__value_.__l.__data_;
  v8 = v0->__r_.__value_.__r.__words[2];
  v7 = v1;
  v0->__r_.__value_.__l.__size_ = 0;
  v0->__r_.__value_.__r.__words[2] = 0;
  v0->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
    v2 = SHIBYTE(v8);
    if ((SHIBYTE(v8) & 0x8000000000000000) == 0)
    {
LABEL_5:
      v3 = &v7;
      if (v2 == 22)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v2 = SHIBYTE(v8);
    if ((SHIBYTE(v8) & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }
  }

  v2 = *(&v7 + 1);
  v4 = (v8 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v4 == *(&v7 + 1))
  {
    if ((v8 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

LABEL_10:
    operator new();
  }

  v3 = v7;
LABEL_12:
  *(v3 + v2) = 42;
  v5 = v2 + 1;
  if (SHIBYTE(v8) < 0)
  {
    *(&v7 + 1) = v5;
  }

  else
  {
    HIBYTE(v8) = v5 & 0x7F;
  }

  *(v3 + v5) = 0;
  result = *&v7;
  xmmword_280879C28 = v7;
  unk_280879C38 = v8;
  return result;
}

void sub_27113E0F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27113E130(uint64_t **a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_280877850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877850))
  {
    sub_2718519B4("VZData]", 6uLL, qword_280877838);
    __cxa_guard_release(&qword_280877850);
  }

  if ((atomic_load_explicit(&qword_280879C08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280879C08))
  {
    sub_27113E4C8();
    __cxa_guard_release(&qword_280879C08);
  }

  if (byte_280879C57 < 0)
  {
    sub_271127178(&v23, xmmword_280879C40, *(&xmmword_280879C40 + 1));
  }

  else
  {
    v23 = xmmword_280879C40;
    v24 = unk_280879C50;
  }

  if ((atomic_load_explicit(&qword_280877830, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877830))
  {
    sub_271135818();
  }

  if (byte_28087782F < 0)
  {
    sub_271127178(&v25, xmmword_280877818, *(&xmmword_280877818 + 1));
  }

  else
  {
    v25 = xmmword_280877818;
    v26 = unk_280877828;
  }

  sub_2711309E8(&v21, &v23, 2uLL);
  LOBYTE(v10) = 0;
  v20 = 0;
  if (*(a2 + 120) == 1)
  {
    v10 = *a2;
    LOBYTE(v11) = 0;
    v19 = 0;
    if (*(a2 + 112) == 1)
    {
      sub_27112F6CC(&v11, (a2 + 16));
      v19 = 1;
    }

    v20 = 1;
  }

  sub_27112E0C4(qword_280877838, &v21, &v10, **a1);
  if (v20 == 1 && v19 == 1)
  {
    if (v18 == 1)
    {
      if (v17 < 0)
      {
        operator delete(__p);
      }

      if (v15 < 0)
      {
        operator delete(v14);
      }
    }

    if (v13 == 1 && v12 < 0)
    {
      operator delete(v11);
    }
  }

  v4 = v21;
  if (v21)
  {
    v5 = v22;
    v6 = v21;
    if (v22 != v21)
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = v21;
    }

    v22 = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25);
    if ((SHIBYTE(v24) & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

LABEL_37:
    operator delete(v23);
    v9 = *MEMORY[0x277D85DE8];
    return;
  }

  if (SHIBYTE(v24) < 0)
  {
    goto LABEL_37;
  }

LABEL_34:
  v8 = *MEMORY[0x277D85DE8];
}

void sub_27113E424(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_280877830);
  if (*(v1 - 73) < 0)
  {
    operator delete(*(v1 - 96));
  }

  _Unwind_Resume(a1);
}

double sub_27113E4C8()
{
  *(&__p.__r_.__value_.__s + 23) = 8;
  strcpy(&__p, "VZCamera");
  sub_27184BC8C(&__p, "std::__1::", 10, "std::", 5uLL, 0, 0, &v9);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v0 = std::string::insert(&v9, 0, "const ", 6uLL);
  v1 = *&v0->__r_.__value_.__l.__data_;
  v8 = v0->__r_.__value_.__r.__words[2];
  v7 = v1;
  v0->__r_.__value_.__l.__size_ = 0;
  v0->__r_.__value_.__r.__words[2] = 0;
  v0->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
    v2 = SHIBYTE(v8);
    if ((SHIBYTE(v8) & 0x8000000000000000) == 0)
    {
LABEL_5:
      v3 = &v7;
      if (v2 == 22)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v2 = SHIBYTE(v8);
    if ((SHIBYTE(v8) & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }
  }

  v2 = *(&v7 + 1);
  v4 = (v8 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v4 == *(&v7 + 1))
  {
    if ((v8 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

LABEL_10:
    operator new();
  }

  v3 = v7;
LABEL_12:
  *(v3 + v2) = 38;
  v5 = v2 + 1;
  if (SHIBYTE(v8) < 0)
  {
    *(&v7 + 1) = v5;
  }

  else
  {
    HIBYTE(v8) = v5 & 0x7F;
  }

  *(v3 + v5) = 0;
  result = *&v7;
  xmmword_280879C40 = v7;
  unk_280879C50 = v8;
  return result;
}

void sub_27113E6E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27113E728(uint64_t **a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_280879C10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280879C10))
  {
    sub_2718519B4("VZCamera]", 8uLL, qword_280879C58);
    __cxa_guard_release(&qword_280879C10);
  }

  if ((atomic_load_explicit(&qword_2808778D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2808778D0))
  {
    sub_271138414(&xmmword_2808778B8);
    __cxa_guard_release(&qword_2808778D0);
  }

  if (byte_2808778CF < 0)
  {
    sub_271127178(&v22, xmmword_2808778B8, *(&xmmword_2808778B8 + 1));
  }

  else
  {
    v22 = xmmword_2808778B8;
    v23 = unk_2808778C8;
  }

  sub_2711309E8(&v20, &v22, 1uLL);
  LOBYTE(v9) = 0;
  v19 = 0;
  if (*(a2 + 120) == 1)
  {
    v9 = *a2;
    LOBYTE(v10) = 0;
    v18 = 0;
    if (*(a2 + 112) == 1)
    {
      sub_27112F6CC(&v10, (a2 + 16));
      v18 = 1;
    }

    v19 = 1;
  }

  sub_27112E0C4(qword_280879C58, &v20, &v9, **a1);
  if (v19 == 1 && v18 == 1)
  {
    if (v17 == 1)
    {
      if (v16 < 0)
      {
        operator delete(__p);
      }

      if (v14 < 0)
      {
        operator delete(v13);
      }
    }

    if (v12 == 1 && v11 < 0)
    {
      operator delete(v10);
    }
  }

  v4 = v20;
  if (v20)
  {
    v5 = v21;
    v6 = v20;
    if (v21 != v20)
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = v20;
    }

    v21 = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_27113E9B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_27112D66C(v9 + 16);
  sub_2711307D4(&a9);
  sub_27137F4D0((v10 - 96));
  if (*(v10 - 41) < 0)
  {
    operator delete(*(v10 - 64));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_27113EA00(uint64_t result)
{
  if ((*(result + 120) & 1) == 0)
  {
    v1 = result;
    exception = __cxa_allocate_exception(0x80uLL);
    sub_2711365E8(v3, v1);
    sub_271137B44(exception, v3);
    __cxa_throw(exception, &unk_28811C2F0, sub_271130150);
  }

  return result;
}

void sub_27113EA78(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112D71C(va);
  _Unwind_Resume(a1);
}

void sub_27113EA8C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112D71C(va);
  __cxa_free_exception(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_27113EABC(uint64_t result)
{
  if (*(result + 120) == 1)
  {
    *result = &unk_288114818;
    v1 = *(result + 16);
    if (v1)
    {
      if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v5 = result;
        (v1->__on_zero_shared)(v1);
        std::__shared_weak_count::__release_weak(v1);
        return v5;
      }
    }
  }

  else if (*(result + 112) == 1)
  {
    if (*(result + 104) == 1)
    {
      if (*(result + 103) < 0)
      {
        v2 = result;
        operator delete(*(result + 80));
        result = v2;
      }

      if (*(result + 71) < 0)
      {
        v3 = result;
        operator delete(*(result + 48));
        result = v3;
      }
    }

    if (*(result + 40) == 1 && *(result + 39) < 0)
    {
      v4 = result;
      operator delete(*(result + 16));
      return v4;
    }
  }

  return result;
}

void sub_27113EBE0()
{
  if ((atomic_load_explicit(&qword_280879C10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280879C10))
  {
    sub_2718519B4("VZCamera]", 8uLL, qword_280879C58);

    __cxa_guard_release(&qword_280879C10);
  }
}

void sub_27113EC70(uint64_t **a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_280879C10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280879C10))
  {
    sub_2718519B4("VZCamera]", 8uLL, qword_280879C58);
    __cxa_guard_release(&qword_280879C10);
  }

  if ((atomic_load_explicit(&qword_280879C18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280879C18))
  {
    sub_2718519B4("cv3d::kit::cam::PixelOrigin]", 0x1BuLL, &xmmword_280879C70);
    __cxa_guard_release(&qword_280879C18);
  }

  if (byte_280879C87 < 0)
  {
    sub_271127178(&v22, xmmword_280879C70, *(&xmmword_280879C70 + 1));
  }

  else
  {
    v22 = xmmword_280879C70;
    v23 = unk_280879C80;
  }

  sub_2711309E8(&v20, &v22, 1uLL);
  LOBYTE(v9) = 0;
  v19 = 0;
  if (*(a2 + 120) == 1)
  {
    v9 = *a2;
    LOBYTE(v10) = 0;
    v18 = 0;
    if (*(a2 + 112) == 1)
    {
      sub_27112F6CC(&v10, (a2 + 16));
      v18 = 1;
    }

    v19 = 1;
  }

  sub_27112E0C4(qword_280879C58, &v20, &v9, **a1);
  if (v19 == 1 && v18 == 1)
  {
    if (v17 == 1)
    {
      if (v16 < 0)
      {
        operator delete(__p);
      }

      if (v14 < 0)
      {
        operator delete(v13);
      }
    }

    if (v12 == 1 && v11 < 0)
    {
      operator delete(v10);
    }
  }

  v4 = v20;
  if (v20)
  {
    v5 = v21;
    v6 = v20;
    if (v21 != v20)
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = v20;
    }

    v21 = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_27113EF00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_27112D66C(v9 + 16);
  sub_2711307D4(&a9);
  sub_27137F4D0((v10 - 88));
  if (*(v10 - 41) < 0)
  {
    operator delete(*(v10 - 64));
  }

  _Unwind_Resume(a1);
}

double sub_27113EF50()
{
  *(&__p.__r_.__value_.__s + 23) = 8;
  strcpy(&__p, "VZCamera");
  sub_27184BC8C(&__p, "std::__1::", 10, "std::", 5uLL, 0, 0, &v5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    v0 = SHIBYTE(v6);
    if ((SHIBYTE(v6) & 0x8000000000000000) == 0)
    {
LABEL_3:
      v1 = &v5;
      if (v0 == 22)
      {
        goto LABEL_8;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v0 = SHIBYTE(v6);
    if ((SHIBYTE(v6) & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  v0 = *(&v5 + 1);
  v2 = (v6 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v2 == *(&v5 + 1))
  {
    if ((v6 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

LABEL_8:
    operator new();
  }

  v1 = v5;
LABEL_10:
  *(v1 + v0) = 42;
  v3 = v0 + 1;
  if (SHIBYTE(v6) < 0)
  {
    *(&v5 + 1) = v3;
  }

  else
  {
    HIBYTE(v6) = v3 & 0x7F;
  }

  *(v1 + v3) = 0;
  result = *&v5;
  xmmword_280879C88 = v5;
  unk_280879C98 = v6;
  return result;
}

void sub_27113F120(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_27113F150(const char *a1, const char *a2)
{
  v5 = 0;
  v6 = v4;
  v7 = a1;
  v8 = v4;
  v9 = a1;
  v10 = a1;
  v11 = &v6;
  sub_27113F2D4(&v11);
  if (*a2)
  {
    v6 = v4;
    v7 = a2;
    v8 = v4;
    v9 = a2;
    v10 = a2;
    if (v5 != -1)
    {
      v11 = &v6;
      (off_28812D2E8[v5])(&v11, v4);
      goto LABEL_6;
    }

LABEL_10:
    sub_2711308D4();
  }

  v6 = v4;
  v7 = "nullptr";
  v8 = v4;
  v9 = "nullptr";
  v10 = "nullptr";
  if (v5 == -1)
  {
    goto LABEL_10;
  }

  v11 = &v6;
  (*(&off_28812D2B8 + v5))(&v11, v4);
LABEL_6:
  if (v5 == -1)
  {
    sub_2711308D4();
  }

  v6 = &v11;
  result = (off_28812D2D0[v5])(&v6, v4);
  if (v5 != -1)
  {
    return (off_28812D2A0[v5])(&v6, v4);
  }

  return result;
}

size_t sub_27113F2D4(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_28812D2A0[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

uint64_t sub_27113F3C8(uint64_t result)
{
  if (*(result + 168) == 1)
  {
    v1 = *(result + 160);
    if (v1)
    {
      if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v2 = result;
        (v1->__on_zero_shared)(v1);
        std::__shared_weak_count::__release_weak(v1);
        result = v2;
      }
    }
  }

  if (*(result + 120) == 1)
  {
    v3 = *(result + 112);
    if (v3 == result + 88)
    {
      v4 = result;
      (*(*v3 + 32))(*(result + 112));
    }

    else
    {
      if (!v3)
      {
        goto LABEL_11;
      }

      v4 = result;
      (*(*v3 + 40))(*(result + 112));
    }

    result = v4;
  }

LABEL_11:
  if (*(result + 56) == 1 && *(result + 39) < 0)
  {
    v5 = result;
    operator delete(*(result + 16));
    return v5;
  }

  return result;
}

void sub_27113F4F4(uint64_t a1)
{
  if (*(a1 + 160) == 1)
  {
    v2 = *(a1 + 152);
    if (v2)
    {
      if (!atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v2->__on_zero_shared)(v2);
        std::__shared_weak_count::__release_weak(v2);
      }
    }
  }

  if (*(a1 + 112) == 1)
  {
    v3 = *(a1 + 104);
    if (v3 == a1 + 80)
    {
      (*(*v3 + 32))(v3);
      if (*(a1 + 48) != 1)
      {
        return;
      }

      goto LABEL_10;
    }

    if (v3)
    {
      (*(*v3 + 40))(v3);
    }
  }

  if (*(a1 + 48) != 1)
  {
    return;
  }

LABEL_10:
  if (*(a1 + 31) < 0)
  {
    v4 = *(a1 + 8);

    operator delete(v4);
  }
}

void sub_27113F610(uint64_t a1)
{
  if (*(a1 + 168) == 1)
  {
    v1 = *(a1 + 160);
    if (v1)
    {
      if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v2 = a1;
        (v1->__on_zero_shared)(v1);
        std::__shared_weak_count::__release_weak(v1);
        a1 = v2;
      }
    }
  }

  if (*(a1 + 120) == 1)
  {
    v3 = *(a1 + 112);
    if (v3 == a1 + 88)
    {
      v4 = a1;
      (*(*v3 + 32))(*(a1 + 112));
      goto LABEL_10;
    }

    if (v3)
    {
      v4 = a1;
      (*(*v3 + 40))(*(a1 + 112));
LABEL_10:
      a1 = v4;
    }
  }

  if (*(a1 + 56) == 1 && *(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  JUMPOUT(0x2743BF050);
}

void sub_27113F750(uint64_t a1)
{
  if (*(a1 + 160) == 1)
  {
    v2 = *(a1 + 152);
    if (v2)
    {
      if (!atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v2->__on_zero_shared)(v2);
        std::__shared_weak_count::__release_weak(v2);
      }
    }
  }

  if (*(a1 + 112) == 1)
  {
    v3 = *(a1 + 104);
    if (v3 == a1 + 80)
    {
      (*(*v3 + 32))(v3);
      if (*(a1 + 48) != 1)
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }

    if (v3)
    {
      (*(*v3 + 40))(v3);
    }
  }

  if (*(a1 + 48) != 1)
  {
    goto LABEL_13;
  }

LABEL_10:
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

LABEL_13:

  JUMPOUT(0x2743BF050);
}

void *sub_27113F87C(void *a1)
{
  v2 = a1[11];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[9];
  a1[9] = 0;
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  sub_2711D4E88(a1 + 2);
  return a1;
}

void *sub_27113F920(void *a1)
{
  v2 = a1[10];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[8];
  a1[8] = 0;
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  return sub_2711D4E88(a1 + 1);
}

void sub_27113F9CC(void *a1)
{
  v2 = a1[11];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[9];
  a1[9] = 0;
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  sub_2711D4E88(a1 + 2);

  JUMPOUT(0x2743BF050);
}

void sub_27113FA90(void *a1)
{
  v2 = a1[10];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[8];
  a1[8] = 0;
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  sub_2711D4E88(a1 + 1);

  JUMPOUT(0x2743BF050);
}

uint64_t VZClientOptionsGetTypeID()
{
  if (atomic_load_explicit(&qword_280879CB0, memory_order_acquire))
  {
    return qword_280879CA8;
  }

  if (__cxa_guard_acquire(&qword_280879CB0))
  {
    qword_280879CA8 = sub_27112B4B8();
    __cxa_guard_release(&qword_280879CB0);
  }

  return qword_280879CA8;
}

void *VZClientOptionsCreate()
{
  result = operator new(0xB8uLL, MEMORY[0x277D826F0]);
  if (result)
  {
    result[22] = 0;
    *(result + 9) = 0u;
    *(result + 10) = 0u;
    *(result + 7) = 0u;
    *(result + 8) = 0u;
    *(result + 5) = 0u;
    *(result + 6) = 0u;
    *(result + 3) = 0u;
    *(result + 4) = 0u;
    *(result + 1) = 0u;
    *(result + 2) = 0u;
    *(result + 168) = 1;
    *(result + 44) = 1;
    *result = &unk_2881196F8;
    result[1] = &unk_288119748;
  }

  else
  {
    if ((atomic_load_explicit(&qword_280879CB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280879CB8))
    {
      sub_2718519B4("VZClientOptions]", 0xFuLL, qword_280879D10);
      __cxa_guard_release(&qword_280879CB8);
    }

    v16 = 0;
    v17 = 0;
    v18 = 0;
    LOBYTE(v5) = 0;
    v15 = 0;
    sub_27112E0C4(qword_280879D10, &v16, &v5, 0);
    if (v15 == 1 && v14 == 1)
    {
      if (v13 == 1)
      {
        if (v12 < 0)
        {
          operator delete(__p);
        }

        if (v10 < 0)
        {
          operator delete(v9);
        }
      }

      if (v8 == 1 && v7 < 0)
      {
        operator delete(v6);
      }
    }

    v1 = v16;
    if (v16)
    {
      v2 = v17;
      v3 = v16;
      if (v17 != v16)
      {
        do
        {
          v4 = *(v2 - 1);
          v2 -= 3;
          if (v4 < 0)
          {
            operator delete(*v2);
          }
        }

        while (v2 != v1);
        v3 = v16;
      }

      v17 = v1;
      operator delete(v3);
    }

    return 0;
  }

  return result;
}

void VZClientOptionsSetControlledLogger(uint64_t a1, uint64_t a2)
{
  if (!sub_27113FE2C("VZClientOptionsSetControlledLogger", a1) && !sub_2711400D0("VZClientOptionsSetControlledLogger", a2, 0))
  {
    v4 = (a2 + 16);
    if (!a2)
    {
      v4 = 0;
    }

    sub_2711D3C98(a1 + 16, (v4 | (a2 + 16) & 0xFFFFFFFFFFFFFF00), a2 != 0);
  }
}

BOOL sub_27113FE2C(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    if ((atomic_load_explicit(&qword_280879CC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280879CC0))
    {
      sub_271143CE0();
      __cxa_guard_release(&qword_280879CC0);
    }

    if (byte_280879D3F < 0)
    {
      sub_271127178(v5, xmmword_280879D28, *(&xmmword_280879D28 + 1));
    }

    else
    {
      *v5 = xmmword_280879D28;
      v6 = unk_280879D38;
    }

    v7 = 1;
    sub_27112D7CC(a1, v5, &v8);
    v19 = v8;
    LOBYTE(v20) = 0;
    v29 = 0;
    if (v18 == 1)
    {
      v22 = 0;
      if (v11 == 1)
      {
        v20 = v9;
        v21 = v10;
        v10 = 0;
        v9 = 0uLL;
        v22 = 1;
      }

      LOBYTE(v23) = 0;
      v28 = 0;
      if (v17 == 1)
      {
        v24 = v13;
        v23 = *v12;
        v12[0] = 0;
        v12[1] = 0;
        v25 = v14;
        *__p = *v15;
        v27 = v16;
        v13 = 0;
        v15[0] = 0;
        v15[1] = 0;
        v16 = 0;
        v28 = 1;
      }

      v29 = 1;
    }

    v30 = 0;
    sub_27112B960(&v19, 0);
    if ((v30 & 1) == 0 && v29 == 1)
    {
      if (v28 == 1)
      {
        if (SHIBYTE(v27) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v24) < 0)
        {
          operator delete(v23);
        }
      }

      if (v22 == 1 && SHIBYTE(v21) < 0)
      {
        operator delete(v20);
      }
    }

    if (v18 == 1)
    {
      if (v17 == 1)
      {
        if (SHIBYTE(v16) < 0)
        {
          operator delete(v15[0]);
        }

        if (SHIBYTE(v13) < 0)
        {
          operator delete(v12[0]);
        }
      }

      if (v11 == 1 && SHIBYTE(v10) < 0)
      {
        operator delete(v9);
      }
    }

    if (v7 == 1 && SHIBYTE(v6) < 0)
    {
      operator delete(v5[0]);
    }
  }

  return a2 == 0;
}

void sub_271140090(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  sub_27112E024(&a32);
  sub_27112D71C(&a17);
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL sub_2711400D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    if ((atomic_load_explicit(&qword_280877970, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877970))
    {
      sub_271143EE4(&xmmword_280877958);
      __cxa_guard_release(&qword_280877970);
    }

    if (byte_28087796F < 0)
    {
      sub_271127178(v7, xmmword_280877958, *(&xmmword_280877958 + 1));
    }

    else
    {
      *v7 = xmmword_280877958;
      v8 = unk_280877968;
    }

    v9 = 1;
    sub_27112D7CC(a1, v7, &v10);
    v21 = v10;
    LOBYTE(v22) = 0;
    v31 = 0;
    if (v20 == 1)
    {
      v24 = 0;
      if (v13 == 1)
      {
        v22 = v11;
        v23 = v12;
        v12 = 0;
        v11 = 0uLL;
        v24 = 1;
      }

      LOBYTE(v25) = 0;
      v30 = 0;
      if (v19 == 1)
      {
        v26 = v15;
        v25 = *v14;
        v14[0] = 0;
        v14[1] = 0;
        v27 = v16;
        *__p = *v17;
        v29 = v18;
        v15 = 0;
        v17[0] = 0;
        v17[1] = 0;
        v18 = 0;
        v30 = 1;
      }

      v31 = 1;
    }

    v32 = 0;
    sub_27112B960(&v21, a3);
    if ((v32 & 1) == 0 && v31 == 1)
    {
      if (v30 == 1)
      {
        if (SHIBYTE(v29) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v26) < 0)
        {
          operator delete(v25);
        }
      }

      if (v24 == 1 && SHIBYTE(v23) < 0)
      {
        operator delete(v22);
      }
    }

    if (v20 == 1)
    {
      if (v19 == 1)
      {
        if (SHIBYTE(v18) < 0)
        {
          operator delete(v17[0]);
        }

        if (SHIBYTE(v15) < 0)
        {
          operator delete(v14[0]);
        }
      }

      if (v13 == 1 && SHIBYTE(v12) < 0)
      {
        operator delete(v11);
      }
    }

    if (v9 == 1 && SHIBYTE(v8) < 0)
    {
      operator delete(v7[0]);
    }
  }

  return a2 == 0;
}

void sub_27114034C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  sub_27112E024(&a32);
  sub_27112D71C(&a17);
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void VZClientOptionsDisableLogControl(uint64_t a1)
{
  if (!sub_27113FE2C("VZClientOptionsDisableLogControl", a1) && *(a1 + 168) == 1)
  {
    v2 = *(a1 + 160);
    if (v2)
    {
      if (!atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v2->__on_zero_shared)(v2);
        std::__shared_weak_count::__release_weak(v2);
      }
    }

    *(a1 + 168) = 0;
  }
}

double VZClientOptionsSetTcpIpAddress(uint64_t a1, char *a2, __int16 a3)
{
  if (!sub_27113FE2C("VZClientOptionsSetTcpIpAddress", a1))
  {

    return sub_2711D3794(a1 + 16, a2, a3);
  }

  return result;
}

BOOL VZClientOptionsSetServer(uint64_t a1, uint64_t a2)
{
  result = sub_27113FE2C("VZClientOptionsSetServer", a1);
  if (!result)
  {
    if (a2)
    {
      *(a1 + 72) = *(a2 + 16);
      v5 = 1;
    }

    else
    {
      v5 = 0;
      *(a1 + 72) = 0;
    }

    *(a1 + 80) = v5;
  }

  return result;
}

BOOL VZClientOptionsSetAsyncQueueMaxElementCount(uint64_t a1, uint64_t a2)
{
  result = sub_27113FE2C("VZClientOptionsSetAsyncQueueMaxElementCount", a1);
  if (!result)
  {
    if (a2)
    {
      if ((*(a1 + 144) & 1) == 0)
      {
        *(a1 + 136) = 0;
        *(a1 + 144) = 1;
      }

      *(a1 + 128) = a2;
      *(a1 + 136) = 1;
    }

    else if (*(a1 + 144) == 1)
    {
      *(a1 + 144) = 0;
    }
  }

  return result;
}

void VZClientOptionsSetSyncType(uint64_t a1, unsigned int a2)
{
  if (!sub_27113FE2C("VZClientOptionsSetSyncType", a1))
  {
    sub_2711D38FC(a1 + 16, a2, v4);
    sub_27114062C("VZClientOptionsSetSyncType", v4, 0);
    if ((v14 & 1) == 0 && v13 == 1)
    {
      if (v12 == 1)
      {
        if (v11 < 0)
        {
          operator delete(__p);
        }

        if (v9 < 0)
        {
          operator delete(v8);
        }
      }

      if (v7 == 1 && v6 < 0)
      {
        operator delete(v5);
      }
    }
  }
}

void sub_27114062C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  if ((*(a2 + 120) & 1) == 0)
  {
    sub_27113F150("in function ", &v17);
    sub_271849064(a2, &v5, v7);
    sub_27112B960(v7, a3);
    if (v16 == 1)
    {
      if (v15 == 1)
      {
        if (v14 < 0)
        {
          operator delete(__p);
        }

        if (v12 < 0)
        {
          operator delete(v11);
        }
      }

      if (v10 == 1 && v9 < 0)
      {
        operator delete(v8);
      }
    }

    if (v6 < 0)
    {
      operator delete(v5);
    }
  }
}

void sub_271140708(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  sub_27112D71C(&a16);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t VZClientGetTypeID()
{
  if (atomic_load_explicit(&qword_280879CD0, memory_order_acquire))
  {
    return qword_280879CC8;
  }

  if (__cxa_guard_acquire(&qword_280879CD0))
  {
    qword_280879CC8 = sub_27112B4B8();
    __cxa_guard_release(&qword_280879CD0);
  }

  return qword_280879CC8;
}

std::__shared_weak_count *VZClientCreate(uint64_t a1, std::__shared_weak_count *a2)
{
  v66 = *MEMORY[0x277D85DE8];
  sub_271141088(v33, a1);
  v31 = &v32;
  v32 = a2;
  LOBYTE(v51) = 0;
  v65 = 0;
  if (v47 == 1)
  {
    v55 = 0;
    if (v37 == 1)
    {
      v51 = *v33;
      v52 = v34;
      v33[1] = 0;
      v34 = 0;
      v33[0] = 0;
      v53 = v35;
      v54 = v36;
      v55 = 1;
    }

    v56 = v38;
    v57 = v39;
    v58[0] = 0;
    v60 = 0;
    if (v42 == 1)
    {
      if (v41)
      {
        if (v41 == v40)
        {
          v59 = v58;
          (*(*v41 + 24))();
        }

        else
        {
          v59 = v41;
          v41 = 0;
        }
      }

      else
      {
        v59 = 0;
      }

      v60 = 1;
    }

    v61 = v43;
    v62 = v44;
    LOBYTE(v63) = 0;
    v64 = 0;
    if (v46 == 1)
    {
      v63 = v45;
      v45 = 0uLL;
      v64 = v46;
    }

    v65 = 1;
  }

  v48[0] = &unk_288108A18;
  v48[1] = sub_271141150;
  v49 = v48;
  v50 = 1;
  sub_2711D4454(&v51, v48, &v21);
  if (v50 != 1)
  {
LABEL_18:
    if (v65 != 1)
    {
      goto LABEL_31;
    }

    goto LABEL_19;
  }

  if (v49 != v48)
  {
    if (v49)
    {
      (*(*v49 + 40))(v49);
    }

    goto LABEL_18;
  }

  (*(*v49 + 32))(v49);
  if (v65 != 1)
  {
    goto LABEL_31;
  }

LABEL_19:
  if (v64 == 1)
  {
    a2 = *(&v63 + 1);
    if (*(&v63 + 1))
    {
      if (!atomic_fetch_add((*(&v63 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (a2->__on_zero_shared)(a2);
        std::__shared_weak_count::__release_weak(a2);
      }
    }
  }

  if (v60 == 1)
  {
    if (v59 == v58)
    {
      (*(*v59 + 32))(v59);
      if (v55 != 1)
      {
        goto LABEL_31;
      }

      goto LABEL_28;
    }

    if (v59)
    {
      (*(*v59 + 40))(v59);
    }
  }

  if (v55 != 1)
  {
    goto LABEL_31;
  }

LABEL_28:
  if (SHIBYTE(v52) < 0)
  {
    operator delete(v51);
  }

LABEL_31:
  v3 = v30;
  if (v30)
  {
    v4 = operator new(0x60uLL, MEMORY[0x277D826F0]);
    if (v4)
    {
      a2 = v4;
      v5 = v21;
      v6 = v22;
      v21 = 0uLL;
      *&v4->__shared_weak_owners_ = v5;
      *&v4[1].__shared_owners_ = v6;
      v22 = 0uLL;
      v4[2].std::__shared_count = v23;
      v23 = 0;
      LODWORD(v4[2].__shared_weak_owners_) = 1;
      v4->__vftable = &unk_288119048;
      v4->__shared_owners_ = &unk_288119098;
      v4[3].__shared_owners_ = 0;
      v4[3].__shared_weak_owners_ = 0;
      v4[3].__vftable = 0;
      if (v30 != 1)
      {
        goto LABEL_65;
      }

LABEL_63:
      sub_2711D4E88(&v21);
      goto LABEL_74;
    }

    LOBYTE(v10) = 0;
    v20 = 0;
    sub_2711445BC(&v31, &v10);
    if (v20 == 1)
    {
      if (v19 != 1)
      {
        a2 = 0;
        if (v30 != 1)
        {
          goto LABEL_65;
        }

        goto LABEL_63;
      }

      if (v18 == 1)
      {
        if (v17 < 0)
        {
          operator delete(__p);
        }

        if (v15 < 0)
        {
          operator delete(v14);
        }
      }

      a2 = 0;
      if (v13 == 1 && v12 < 0)
      {
        operator delete(v11);
        a2 = 0;
        if (v30 == 1)
        {
          goto LABEL_63;
        }

        goto LABEL_65;
      }
    }

    else
    {
      a2 = 0;
    }

LABEL_62:
    if (v30 != 1)
    {
      goto LABEL_65;
    }

    goto LABEL_63;
  }

  v10 = v21;
  LOBYTE(v11) = 0;
  v19 = 0;
  if (v29 == 1)
  {
    sub_27112F6CC(&v11, &v22);
    v19 = 1;
  }

  v20 = 1;
  sub_2711445BC(&v31, &v10);
  if (v20 != 1 || v19 != 1)
  {
    goto LABEL_62;
  }

  if (v18 == 1)
  {
    if (v17 < 0)
    {
      operator delete(__p);
    }

    if (v15 < 0)
    {
      operator delete(v14);
    }
  }

  if (v13 != 1 || (v12 & 0x80000000) == 0)
  {
    goto LABEL_62;
  }

  operator delete(v11);
  if (v30 == 1)
  {
    goto LABEL_63;
  }

LABEL_65:
  if (v29 == 1)
  {
    if (v28 == 1)
    {
      if (v27 < 0)
      {
        operator delete(v26);
      }

      if (v25 < 0)
      {
        operator delete(v24);
      }
    }

    if (LOBYTE(v23.__shared_owners_) == 1 && SHIBYTE(v23.__vftable) < 0)
    {
      operator delete(v22);
    }
  }

LABEL_74:
  if ((v3 & 1) == 0)
  {
    a2 = 0;
  }

  if (v47 == 1)
  {
    if (v46 == 1)
    {
      v7 = *(&v45 + 1);
      if (*(&v45 + 1))
      {
        if (!atomic_fetch_add((*(&v45 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v7->__on_zero_shared)(v7);
          std::__shared_weak_count::__release_weak(v7);
        }
      }
    }

    if (v42 == 1)
    {
      if (v41 == v40)
      {
        (*(*v41 + 32))(v41);
        if (v37 != 1)
        {
          goto LABEL_88;
        }

LABEL_86:
        if (SHIBYTE(v34) < 0)
        {
          operator delete(v33[0]);
        }

        goto LABEL_88;
      }

      if (v41)
      {
        (*(*v41 + 40))();
      }
    }

    if (v37 != 1)
    {
      goto LABEL_88;
    }

    goto LABEL_86;
  }

LABEL_88:
  v8 = *MEMORY[0x277D85DE8];
  return a2;
}