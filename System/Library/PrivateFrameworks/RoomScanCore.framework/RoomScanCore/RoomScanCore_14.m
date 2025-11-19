void sub_2622BB47C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::locale a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  std::locale::~locale(&a21);
  sub_2621C57C8(&a27);
  _Unwind_Resume(a1);
}

uint64_t sub_2622BB4B0(float32x2_t *a1, uint64_t a2, float *a3)
{
  v35 = 0;
  v36 = 0;
  v37 = 0;
  DWORD2(v33) = 0;
  *&v33 = a1[4];
  DWORD2(v34) = 0;
  *&v34 = a1[6];
  sub_2621D9F60(&v35, &v33);
  sub_2621D9F60(&v35, &v34);
  sub_2621D9F60(&v35, (a2 + 208));
  sub_2623A3C7C(v32, (a2 + 192), v6);
  v7 = v35;
  v8 = v32[0];
  if ((sub_262257F0C(v35, (v36 - v35) >> 4, v32[0], (v32[1] - v32[0]) >> 4) & 1) == 0)
  {
    goto LABEL_16;
  }

  v9 = vsub_f32(a1[2], a1[3]);
  v10 = vmul_f32(v9, v9);
  v10.f32[0] = sqrtf(vaddv_f32(v10));
  v11 = ((v10.f32[0] + -0.000001) / 0.01);
  if (v11 < 0)
  {
    v25 = 0.0;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v15 = *a1[4].f32;
    v14 = *a1[6].f32;
    v15.i32[2] = 0;
    v14.i32[2] = 0;
    v31 = v15;
    v16 = vsubq_f32(v14, v15);
    if (v10.f32[0] < 0.000001)
    {
      v10.f32[0] = 0.000001;
    }

    v30 = vmulq_f32(vdivq_f32(v16, vdupq_lane_s32(v10, 0)), vdupq_n_s32(0x3C23D70Au));
    do
    {
      v17 = vmlaq_n_f32(v31, v30, v13);
      v18 = *(a2 + 208);
      v19 = vsubq_f32(v17, v18);
      v20 = vmulq_f32(v19, v19);
      v20.f32[0] = sqrtf(v20.f32[2] + vaddv_f32(*v20.f32));
      if (v20.f32[0] < 0.000001)
      {
        v20.f32[0] = 0.000001;
      }

      v21 = vdivq_f32(v19, vdupq_lane_s32(*v20.f32, 0));
      v22 = vmlaq_f32(vmlaq_n_f32(v18, v21, COERCE_FLOAT(*(a2 + 224))), 0, v21);
      v23 = vsubq_f32(v17, v22);
      v24 = vmulq_f32(v23, v23);
      if (sqrtf(v24.f32[2] + vaddv_f32(*v24.f32)) <= a3[11])
      {
        v12 += sub_2623A3EA4((a2 + 192), v22, 0.0);
      }

      ++v13;
    }

    while (v11 + 1 != v13);
    v25 = v12;
  }

  v26 = v25 / (v11 + 1);
  if (v26 <= a3[10])
  {
LABEL_16:
    v28 = 0xFFFFFFFFLL;
    if (!v8)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v27 = vsub_f32(a1[2], a1[3]);
  v28 = ((1.0 - v26) * sqrtf(vaddv_f32(vmul_f32(v27, v27)))) >= a3[17];
  if (v8)
  {
LABEL_17:
    operator delete(v8);
  }

LABEL_18:
  if (v7)
  {
    operator delete(v7);
  }

  return v28;
}

void sub_2622BB700(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p)
{
  if (v22)
  {
    operator delete(v22);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2622BB734(uint64_t a1, float32x4_t *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v8 = a4;
  v9 = v8;
  v10 = *(a5 + 32);
  memset(v57, 0, 24);
  v54 = 0;
  v55 = 0;
  v56 = 0;
  __p = 0;
  v52 = 0;
  v12 = a2[14].f32[1];
  v11 = a2[14].f32[2];
  v53 = 0;
  if (v11 <= v12)
  {
    goto LABEL_24;
  }

  if (v8)
  {
    v13 = vcvt_f32_f64(*(v8 + 7));
    v14 = *(v8 + 5);
  }

  v15 = v11 + 1.0;
  if (v12 >= (v11 + 1.0))
  {
LABEL_24:
    v33 = 0;
  }

  else
  {
    v16 = -5 - v10;
    v17 = v10 + 6;
    do
    {
      v18 = a2[14].f32[0];
      v19 = __sincosf_stret((v12 / 180.0) * 3.1416);
      *&v20 = v19.__cosval * v18;
      *(&v20 + 1) = v19.__sinval * v18;
      v21 = a2[13];
      v21.i32[2] = 0;
      v45 = vaddq_f32(v20, v21);
      if (v16 < v17)
      {
        if (v9)
        {
          v22 = v9[5];
          v23 = v9[6];
        }

        v24 = *(a1 + 224);
        v25 = vsubq_f32(v45, *(a1 + 208));
        sub_2621CBEC8(1uLL);
      }

      v50 = 0;
      v49 = 0u;
      v48 = MEMORY[0];
      v26 = MEMORY[0];
      sub_2621C8F2C(v57, &v48);
      v47.i32[0] = v26 > *(a5 + 20);
      sub_2621C7CD0(&v54, &v47);
      v27 = *(a1 + 208);
      v28 = vsubq_f32(v45, v27);
      v29 = vmulq_f32(v28, v28);
      v29.f32[0] = sqrtf(v29.f32[2] + vaddv_f32(*v29.f32));
      if (v29.f32[0] < 0.000001)
      {
        v29.f32[0] = 0.000001;
      }

      v30 = vdivq_f32(v28, vdupq_lane_s32(*v29.f32, 0));
      v47 = vmlaq_f32(vmlaq_n_f32(v27, v30, COERCE_FLOAT(*(a1 + 224))), 0, v30);
      sub_2621D9F60(&__p, &v47);
      v12 = v12 + 1.0;
    }

    while (v12 < v15);
    v33 = v54;
    v32 = v55;
    if (v55 != v54)
    {
      *v54 = 1;
      *(v32 - 1) = 1;
      v34 = v33;
      while (*v34 == 1)
      {
        if (++v34 == v32)
        {
          v46 = *(a1 + 208);
          v35 = *(a1 + 224);
          LODWORD(v31) = v35;
          v36 = sub_2623A3DE4(v46, v31, *__p);
          LODWORD(v37) = v35;
          v38 = sub_2623A3DE4(v46, v37, *(v52 - 16));
          v39 = *(a1 + 228);
          v40 = v36 + -360.0;
          if (v36 <= v38)
          {
            v40 = v36;
          }

          if (v40 >= 0.0 || v39 <= 0.0 || vabds_f32(v39, v40) <= 180.0)
          {
            if (v40 > 0.0 && v39 < 0.0 && vabds_f32(v39, v40) > 180.0)
            {
              v40 = v40 + -360.0;
            }
          }

          else
          {
            v39 = v39 + -360.0;
            v41 = *(a1 + 232) + -360.0;
          }

          if (v40 < v39)
          {
            v39 = v40;
          }

          v43 = LODWORD(v39) << 32;
          v42 = 1;
          goto LABEL_26;
        }
      }
    }
  }

  v42 = 0;
  v43 = 0;
LABEL_26:
  if (__p)
  {
    operator delete(__p);
  }

  if (v33)
  {
    operator delete(v33);
  }

  if (v57[0])
  {
    operator delete(v57[0]);
  }

  return v43 | v42;
}

void sub_2622BBD24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, uint64_t a31, void *a32)
{
  if (v34)
  {
    operator delete(v34);
  }

  if (v33)
  {
    operator delete(v33);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a32)
  {
    operator delete(a32);
  }

  v37 = *(v35 - 176);
  if (v37)
  {
    operator delete(v37);
  }

  _Unwind_Resume(a1);
}

void sub_2622BBD94(uint64_t a1, float a2, __n128 a3)
{
  v3 = a3.n128_f32[0];
  *(a1 + 228) = a2;
  *(a1 + 232) = a3.n128_u32[0];
  a3.n128_u32[0] = *(a1 + 224);
  v26 = a3;
  v5 = __sincosf_stret((a2 / 180.0) * 3.1416);
  v6.i64[1] = v26.n128_i64[1];
  *v6.f32 = vmul_n_f32(__PAIR64__(LODWORD(v5.__sinval), LODWORD(v5.__cosval)), v26.n128_f32[0]);
  v7 = *(a1 + 208);
  v7.i32[2] = 0;
  v24 = v7;
  v25 = vaddq_f32(v7, v6);
  v10 = __sincosf_stret((v3 / 180.0) * 3.1416);
  v11.i64[1] = v26.n128_i64[1];
  *v11.f32 = vmul_n_f32(__PAIR64__(LODWORD(v10.__sinval), LODWORD(v10.__cosval)), v26.n128_f32[0]);
  v12 = vaddq_f32(v24, v11);
  *&v13 = v25.i64[0];
  *(&v13 + 1) = v12.i64[0];
  v14 = v25;
  v15 = v25;
  v14.i32[2] = *(a1 + 64);
  v16 = v12;
  v16.i32[2] = *(a1 + 68);
  *(a1 + 16) = v13;
  *(a1 + 32) = v14;
  v15.i32[2] = v16.i32[2];
  v12.i32[2] = v14.i32[2];
  *(a1 + 48) = v16;
  v17 = *(a1 + 8);
  src = v15;
  v28 = v16;
  v29 = v12;
  v30 = v14;
  if (v17)
  {
    objc_copyStruct((v17 + 272), &src, 64, 1, 0);
  }

  v18 = *(a1 + 176);
  if (v18)
  {
    *(v18 + 105) = 1;
    *(v18 + 336) = *(a1 + 224);
    *(v18 + 340) = *(a1 + 228);
    *(v18 + 344) = *(a1 + 232);
    *(v18 + 360) = *(a1 + 208);
  }

  objc_msgSend_quad(*(a1 + 8), v8, *&v9, *&v24, *&v25);
  v19 = *(a1 + 176);
  src = v20;
  v28 = v21;
  v29 = v22;
  v30 = v23;
  if (v19)
  {
    objc_copyStruct((v19 + 272), &src, 64, 1, 0);
  }
}

void *sub_2622BBF0C(void *a1, void *a2)
{
  v4 = sub_2621D1580(a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_2621D19D0(v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_2622BC388(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2622BC8EC(va);
  _Unwind_Resume(a1);
}

void *sub_2622BC3A0(void *a1, void *a2)
{
  v4 = sub_2621D1580(a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_2621D19D0(v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

uint64_t sub_2622BC7FC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      sub_2622BC85C((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void sub_2622BC85C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  if (*(a1 + 23) < 0)
  {
    v5 = *a1;

    operator delete(v5);
  }
}

uint64_t sub_2622BC8EC(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_2622BC85C(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_2622BD198(void *a1, float32x2_t *a2)
{
  v177 = *MEMORY[0x277D85DE8];
  v149 = v150;
  v150[0] = 0;
  v151 = 0;
  v152 = 0;
  v150[1] = 0;
  v150[2] = &v151;
  memset(v153, 0, sizeof(v153));
  v154 = 1065353216;
  v155 = 0u;
  v156 = 0u;
  v157 = 0u;
  v158 = 0;
  v159 = 1065353216;
  v174 = 0u;
  v175 = 0u;
  v176.i32[0] = 1065353216;
  memset(__p, 0, sizeof(__p));
  LODWORD(v173) = 1065353216;
  v3 = a2[47];
  v2 = a2[48];
  if (v3 == v2)
  {
    goto LABEL_112;
  }

  v5 = a2 + 40;
  v6 = vdup_n_s32(0x3DCCCCCDu);
  do
  {
    v7 = a2[47];
    v8 = a2[48];
    while (v7 != v8)
    {
      v9 = *v3;
      v10 = *v7;
      if (*v3 < *v7)
      {
        v11 = sub_2621C6E90(*&a2[58], *&a2[59], *v3, *v7);
        if (v11)
        {
          v12 = *v5;
          if (!*v5)
          {
            goto LABEL_14;
          }

          v13 = v5;
          v14 = *v5;
          do
          {
            if (v14[4].i32[0] >= v9)
            {
              v13 = v14;
            }

            v14 = v14[v14[4].i32[0] < v9];
          }

          while (v14);
          if (v13 == v5 || v9 < v13[4].i32[0])
          {
LABEL_14:
            v13 = v5;
          }

          if (!v12)
          {
            goto LABEL_22;
          }

          v15 = v5;
          do
          {
            if (v12[4].i32[0] >= v10)
            {
              v15 = v12;
            }

            v12 = v12[v12[4].i32[0] < v10];
          }

          while (v12);
          if (v15 == v5 || v10 < v15[4].i32[0])
          {
LABEL_22:
            v15 = v5;
          }

          if (*(v11 + 136) == 1)
          {
            v16 = v11[16];
            if (sub_2621DC76C(v16, v13[5], v13[6], 0.0) < 0.1 && sub_2621DC76C(v16, v15[5], v15[6], 0.0) < 0.1)
            {
              v167[0] = vcvt_s32_f32(vrnda_f32(vdiv_f32(v16, v6)));
              v167[1] = v16;
              v17 = sub_2622C1924(&v174, v167);
              sub_2621C729C(v17, *v3);
              v18 = sub_2622C1924(&v174, v167);
              sub_2621C729C(v18, *v7);
            }
          }
        }
      }

      ++v7;
    }

    ++v3;
  }

  while (v3 != v2);
  v19 = v175;
  if (!v175)
  {
LABEL_112:
    *v167 = 0u;
    v168 = 0u;
    v169 = 1065353216;
    goto LABEL_113;
  }

  do
  {
    v20 = v19[6];
    if (!v20)
    {
      goto LABEL_70;
    }

    do
    {
      v21 = *(v20 + 4);
      if (!__p[1])
      {
        goto LABEL_47;
      }

      v22 = vcnt_s8(__p[1]);
      v22.i16[0] = vaddlv_u8(v22);
      if (v22.u32[0] > 1uLL)
      {
        v23 = *(v20 + 4);
        if (__p[1] <= v21)
        {
          v23 = v21 % __p[1];
        }
      }

      else
      {
        v23 = (__p[1] - 1) & v21;
      }

      v24 = *(__p[0] + v23);
      if (!v24 || (v25 = *v24) == 0)
      {
LABEL_47:
        operator new();
      }

      while (1)
      {
        v26 = v25[1];
        if (v26 == v21)
        {
          break;
        }

        if (v22.u32[0] > 1uLL)
        {
          if (v26 >= __p[1])
          {
            v26 %= __p[1];
          }
        }

        else
        {
          v26 &= __p[1] - 1;
        }

        if (v26 != v23)
        {
          goto LABEL_47;
        }

LABEL_46:
        v25 = *v25;
        if (!v25)
        {
          goto LABEL_47;
        }
      }

      if (v25[2].i32[0] != v21)
      {
        goto LABEL_46;
      }

      v27 = *(v19 + 4);
      v28 = *(v19 + 5);
      v29 = v28 + 2654435769 + ((v27 + 2654435769) << 6) + ((v27 + 2654435769) >> 2);
      v30 = v29 ^ (v27 + 2654435769);
      v31 = v25[4];
      if (!*&v31)
      {
        goto LABEL_68;
      }

      v32 = vcnt_s8(v31);
      v32.i16[0] = vaddlv_u8(v32);
      if (v32.u32[0] > 1uLL)
      {
        v33 = v29 ^ (v27 + 2654435769);
        if (v30 >= *&v31)
        {
          v33 = v30 % *&v31;
        }
      }

      else
      {
        v33 = v30 & (*&v31 - 1);
      }

      v34 = *(*&v25[3] + 8 * v33);
      if (!v34 || (v35 = *v34) == 0)
      {
LABEL_68:
        operator new();
      }

      while (2)
      {
        v36 = v35[1];
        if (v36 != v30)
        {
          if (v32.u32[0] > 1uLL)
          {
            if (v36 >= *&v31)
            {
              v36 %= *&v31;
            }
          }

          else
          {
            v36 &= *&v31 - 1;
          }

          if (v36 != v33)
          {
            goto LABEL_68;
          }

          goto LABEL_67;
        }

        if (*(v35 + 4) != v27 || *(v35 + 5) != v28)
        {
LABEL_67:
          v35 = *v35;
          if (!v35)
          {
            goto LABEL_68;
          }

          continue;
        }

        break;
      }

      v20 = *v20;
    }

    while (v20);
LABEL_70:
    v19 = *v19;
  }

  while (v19);
  v38 = v175;
  *v167 = 0u;
  v168 = 0u;
  v169 = 1065353216;
  while (2)
  {
    v39 = *(v38 + 4);
    v40 = *(v38 + 5);
    v41 = v152;
    v42 = v40 + 2654435769 + ((v39 + 2654435769) << 6) + ((v39 + 2654435769) >> 2);
    v43 = v42 ^ (v39 + 2654435769);
    if (!v167[1])
    {
      goto LABEL_92;
    }

    v44 = vcnt_s8(v167[1]);
    v44.i16[0] = vaddlv_u8(v44);
    if (v44.u32[0] > 1uLL)
    {
      v45 = v42 ^ (v39 + 2654435769);
      if (v43 >= v167[1])
      {
        v45 = v43 % v167[1];
      }
    }

    else
    {
      v45 = v43 & (v167[1] - 1);
    }

    v46 = *(v167[0] + v45);
    if (!v46 || (v47 = *v46) == 0)
    {
LABEL_92:
      operator new();
    }

    while (2)
    {
      v48 = v47[1];
      if (v48 != v43)
      {
        if (v44.u32[0] > 1uLL)
        {
          if (v48 >= v167[1])
          {
            v48 %= v167[1];
          }
        }

        else
        {
          v48 &= v167[1] - 1;
        }

        if (v48 != v45)
        {
          goto LABEL_92;
        }

        goto LABEL_91;
      }

      if (*(v47 + 4) != v39 || *(v47 + 5) != v40)
      {
LABEL_91:
        v47 = *v47;
        if (!v47)
        {
          goto LABEL_92;
        }

        continue;
      }

      break;
    }

    *(v47 + 8) = v152;
    LODWORD(v160) = v41;
    v164[1] = 0;
    *&v165 = 0;
    v164[0] = &v164[1];
    *&v162 = &v160;
    v50 = sub_2621C6404(&v149, v41);
    v51 = v50 + 6;
    sub_2621C6C04(v50[6]);
    v52 = v164[1];
    v50[5] = v164[0];
    *v51 = v52;
    v53 = v165;
    v50[7] = v165;
    if (v53)
    {
      v52[2] = v51;
      v164[0] = &v164[1];
      v164[1] = 0;
      *&v165 = 0;
      v52 = 0;
    }

    else
    {
      v50[5] = v51;
    }

    sub_2621C6C04(v52);
    v54 = v151;
    if (!v151)
    {
LABEL_102:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v55 = v54;
        v56 = *(v54 + 8);
        if (v160 >= v56)
        {
          break;
        }

        v54 = *v55;
        if (!*v55)
        {
          goto LABEL_102;
        }
      }

      if (v56 >= v160)
      {
        break;
      }

      v54 = v55[1];
      if (!v54)
      {
        goto LABEL_102;
      }
    }

    v55[5] = v38[3];
    v57 = v155;
    if (v155 != *(&v155 + 1))
    {
      while (*v57 != v160)
      {
        if (++v57 == *(&v155 + 1))
        {
          goto LABEL_108;
        }
      }
    }

    if (v57 == *(&v155 + 1))
    {
LABEL_108:
      sub_2621C7CD0(&v155, &v160);
      v164[0] = 0;
      v164[1] = 0;
      *&v165 = 0;
      sub_2621CB5C4(&v156 + 1, v160);
      if (v164[0])
      {
        operator delete(v164[0]);
      }
    }

    v38 = *v38;
    if (v38)
    {
      continue;
    }

    break;
  }

LABEL_113:
  v58 = __p[2];
  if (__p[2])
  {
    v59 = a2 + 40;
    do
    {
      v60 = v58[5];
      v61 = v60;
      v145 = v58;
      if (v60)
      {
        while (1)
        {
          while (v60)
          {
            v62 = *(v61 + 4);
            v63 = *(v60 + 4);
            if (v62 < v63)
            {
              v64 = *(v61 + 5);
              v65 = *(v60 + 5);
              if (v64 < v65)
              {
                v66 = v167[0];
                v67 = v167[1];
                v68 = *(sub_2622C1E90(v167[0], v167[1], v62, v64) + 8);
                v69 = sub_2622C1E90(v66, v67, v63, v65);
                v70 = *v59;
                if (!*v59)
                {
                  goto LABEL_126;
                }

                v71 = *(v145 + 4);
                v72 = a2 + 40;
                do
                {
                  if (v70[4].i32[0] >= v71)
                  {
                    v72 = v70;
                  }

                  v70 = v70[v70[4].i32[0] < v71];
                }

                while (v70);
                if (v72 == v59 || v71 < v72[4].i32[0])
                {
LABEL_126:
                  v72 = a2 + 40;
                }

                v73 = *(v69 + 8);
                LODWORD(v160) = v68;
                LODWORD(v146) = v73;
                *&v162 = __PAIR64__(v73, v68);
                v164[0] = &v162;
                v74 = sub_2621CB808(v153, v68, v73);
                v75 = *v72[5].f32;
                *(v74 + 5) = *v72[7].f32;
                *(v74 + 3) = v75;
                v164[0] = &v160;
                v76 = sub_2621C6404(&v149, v160);
                v164[0] = &v146;
                *(sub_2621CAE44((v76 + 5), v146) + 8) = 1065353216;
                v164[0] = &v146;
                v77 = sub_2621C6404(&v149, v146);
                v164[0] = &v160;
                *(sub_2621CAE44((v77 + 5), v160) + 8) = 1065353216;
                v164[0] = &v160;
                v78 = sub_2621C65A4(&v156 + 1, v160)[3];
                v164[0] = &v160;
                v79 = sub_2621C65A4(&v156 + 1, v160);
                v80 = v79[4];
                if (v78 != v80)
                {
                  while (*v78 != v146)
                  {
                    if (++v78 == v80)
                    {
                      v78 = v79[4];
                      break;
                    }
                  }
                }

                v164[0] = &v160;
                if (v78 == sub_2621C65A4(&v156 + 1, v160)[4])
                {
                  v164[0] = &v160;
                  v81 = sub_2621C65A4(&v156 + 1, v160);
                  sub_2621C7CD0((v81 + 3), &v146);
                }

                v164[0] = &v146;
                v82 = sub_2621C65A4(&v156 + 1, v146)[3];
                v164[0] = &v146;
                v83 = sub_2621C65A4(&v156 + 1, v146);
                v84 = v83[4];
                if (v82 != v84)
                {
                  while (*v82 != v160)
                  {
                    if (++v82 == v84)
                    {
                      v82 = v83[4];
                      break;
                    }
                  }
                }

                v164[0] = &v146;
                if (v82 == sub_2621C65A4(&v156 + 1, v146)[4])
                {
                  v164[0] = &v146;
                  v85 = sub_2621C65A4(&v156 + 1, v146);
                  sub_2621C7CD0((v85 + 3), &v160);
                }
              }
            }

            v60 = *v60;
          }

          v61 = *v61;
          v58 = v145;
          if (!v61)
          {
            break;
          }

          v60 = v145[5];
        }
      }

      v58 = *v58;
    }

    while (v58);
  }

  sub_2621C74C4(v167);
  sub_2622C1DD0(__p);
  sub_2622C1E30(&v174);
  v146 = 0;
  v147 = 0;
  v148 = 0;
  v170[0] = &unk_2874EE660;
  v170[1] = &v146;
  v171 = v170;
  *v167 = 0u;
  v168 = 0u;
  v169 = 1065353216;
  *v164 = 0u;
  v165 = 0u;
  v166 = 1065353216;
  v87 = *(&v155 + 1);
  v86 = v155;
  if (v155 != *(&v155 + 1))
  {
LABEL_144:
    v88 = *v86;
    if (!v167[1])
    {
      goto LABEL_160;
    }

    v89 = vcnt_s8(v167[1]);
    v89.i16[0] = vaddlv_u8(v89);
    if (v89.u32[0] > 1uLL)
    {
      v90 = *v86;
      if (v167[1] <= v88)
      {
        v90 = v88 % v167[1];
      }
    }

    else
    {
      v90 = (v167[1] - 1) & v88;
    }

    v91 = *(v167[0] + v90);
    if (!v91 || (v92 = *v91) == 0)
    {
LABEL_160:
      operator new();
    }

    while (1)
    {
      v93 = v92[1];
      if (v93 == v88)
      {
        if (*(v92 + 4) == v88)
        {
          v174 = 0u;
          v175 = 0u;
          v176.i32[0] = 1065353216;
          v94 = *v86;
          v95 = sub_262283740(*(&v156 + 1), v157, *v86);
          if (v95)
          {
            v97 = v95[3];
            v96 = v95[4];
            if (v97 != v96)
            {
              do
              {
                v98 = *v97;
                if (!sub_2621C719C(v167, *v97))
                {
                  sub_2621C729C(&v174, v98);
                }

                ++v97;
              }

              while (v97 != v96);
              v94 = *v86;
            }
          }

          if (!v164[1])
          {
            goto LABEL_183;
          }

          v99 = vcnt_s8(v164[1]);
          v99.i16[0] = vaddlv_u8(v99);
          if (v99.u32[0] > 1uLL)
          {
            v100 = v94;
            if (v164[1] <= v94)
            {
              v100 = v94 % v164[1];
            }
          }

          else
          {
            v100 = (v164[1] - 1) & v94;
          }

          v101 = *(v164[0] + v100);
          if (!v101 || (v102 = *v101) == 0)
          {
LABEL_183:
            operator new();
          }

          while (1)
          {
            v103 = v102[1];
            if (v103 == v94)
            {
              if (*(v102 + 4) == v94)
              {
                sub_2621C74C4(&v174);
                if (++v86 == v87)
                {
                  v87 = *(&v155 + 1);
                  v86 = v155;
                  goto LABEL_186;
                }

                goto LABEL_144;
              }
            }

            else
            {
              if (v99.u32[0] > 1uLL)
              {
                if (v103 >= v164[1])
                {
                  v103 %= v164[1];
                }
              }

              else
              {
                v103 &= v164[1] - 1;
              }

              if (v103 != v100)
              {
                goto LABEL_183;
              }
            }

            v102 = *v102;
            if (!v102)
            {
              goto LABEL_183;
            }
          }
        }
      }

      else
      {
        if (v89.u32[0] > 1uLL)
        {
          if (v93 >= v167[1])
          {
            v93 %= v167[1];
          }
        }

        else
        {
          v93 &= v167[1] - 1;
        }

        if (v93 != v90)
        {
          goto LABEL_160;
        }
      }

      v92 = *v92;
      if (!v92)
      {
        goto LABEL_160;
      }
    }
  }

LABEL_186:
  v175 = 0u;
  v176 = 0u;
  v174 = 0u;
  v104 = a1;
  if (v86 != v87)
  {
    do
    {
      memset(__p, 0, 24);
      v105 = sub_262283740(v164[0], v164[1], *v86);
      if (v105)
      {
        v106 = v105[5];
        v107 = 0uLL;
        if (v106)
        {
          do
          {
            sub_2621C7CD0(__p, (v106 + 16));
            v106 = *v106;
          }

          while (v106);
          v107 = *__p;
        }
      }

      else
      {
        v107 = 0uLL;
      }

      v108 = 126 - 2 * __clz((*(&v107 + 1) - v107) >> 2);
      *&v162 = v167;
      if (*(&v107 + 1) == v107)
      {
        v109 = 0;
      }

      else
      {
        v109 = v108;
      }

      sub_2622C0010(v107, *(&v107 + 1), &v162, v109, 1);
      v110 = *(&v174 + 1);
      LODWORD(v162) = *v86;
      if (v175 == *(&v174 + 1))
      {
        v111 = 0;
      }

      else
      {
        v111 = 85 * ((v175 - *(&v174 + 1)) >> 3) - 1;
      }

      v112 = v176.i64[1] + v176.i64[0];
      if (v111 == v176.i64[1] + v176.i64[0])
      {
        sub_2622C0C60(&v174);
        v110 = *(&v174 + 1);
        v112 = v176.i64[1] + v176.i64[0];
      }

      v113 = *(v110 + 8 * (v112 / 0x55)) - 4080 * (v112 / 0x55) + 48 * v112;
      *v113 = 0;
      *(v113 + 8) = 0;
      *(v113 + 16) = 0;
      sub_2621DD5D0(v113, &v162, &v162 + 4, 1uLL);
      *(v113 + 24) = *__p;
      *(v113 + 40) = __p[2];
      v114 = ++v176.i64[1];
      ++v86;
    }

    while (v86 != v87);
    v104 = a1;
    if (v114)
    {
      while (1)
      {
        v115 = *(*(&v174 + 1) + 8 * (v176.i64[0] / 0x55uLL)) - 4080 * (v176.i64[0] / 0x55uLL) + 48 * v176.i64[0];
        v116 = *v115;
        __p[0] = *v115;
        *v142 = *(v115 + 8);
        *&__p[1] = *v142;
        *v115 = 0;
        *(v115 + 8) = 0;
        *(v115 + 16) = 0;
        v117 = *(v115 + 24);
        __p[3] = v117;
        *__src = *(v115 + 32);
        v173 = *__src;
        *(v115 + 24) = 0;
        *(v115 + 32) = 0;
        *(v115 + 40) = 0;
        sub_2622C0C08(*(*(&v174 + 1) + 8 * (v176.i64[0] / 0x55uLL)) - 4080 * (v176.i64[0] / 0x55uLL) + 48 * v176.i64[0]);
        v176 = vaddq_s64(v176, xmmword_2623A7BE0);
        if (v176.i64[0] >= 0xAAuLL)
        {
          operator delete(**(&v174 + 1));
          *(&v174 + 1) += 8;
          v176.i64[0] -= 85;
        }

        v118 = v142[0];
        v119 = (v142[0] - v116) >> 2;
        *&v162 = v116;
        *(&v162 + 1) = v119;
        if (!v171)
        {
          sub_2621C7250();
        }

        if (((*(*v171 + 48))(v171, &v162) & 1) == 0)
        {
          break;
        }

        v120 = v117;
        v143 = v117;
        if (v117 != __src[0])
        {
          do
          {
            v162 = 0uLL;
            v163 = 0;
            sub_2621C8B60(&v162, v116, v118, v119);
            sub_2621C7CD0(&v162, v120);
            v160 = 0uLL;
            v161 = 0;
            for (i = v120 + 1; i != __src[0]; ++i)
            {
              sub_2621C7CD0(&v160, i);
            }

            v122 = sub_262283740(v164[0], v164[1], *v120);
            if (v122)
            {
              v123 = *(&v160 + 1);
              v124 = v160;
              if (v160 != *(&v160 + 1))
              {
                v125 = v122;
                while (sub_2621C719C(v125 + 3, *v124))
                {
                  if (++v124 == v123)
                  {
                    goto LABEL_224;
                  }
                }

                if (v124 != v123)
                {
                  for (j = v124 + 1; j != v123; ++j)
                  {
                    v127 = *j;
                    if (sub_2621C719C(v125 + 3, *j))
                    {
                      *v124++ = v127;
                    }
                  }
                }
              }

              v104 = a1;
              if (v124 != v123)
              {
                *(&v160 + 1) = v124;
              }
            }

LABEL_224:
            v128 = *(&v174 + 1);
            if (v175 == *(&v174 + 1))
            {
              v129 = 0;
            }

            else
            {
              v129 = 85 * ((v175 - *(&v174 + 1)) >> 3) - 1;
            }

            v130 = v176.i64[1] + v176.i64[0];
            if (v129 == v176.i64[1] + v176.i64[0])
            {
              sub_2622C0C60(&v174);
              v128 = *(&v174 + 1);
              v130 = v176.i64[1] + v176.i64[0];
            }

            v131 = *(v128 + 8 * (v130 / 0x55)) - 4080 * (v130 / 0x55) + 48 * v130;
            *v131 = v162;
            *(v131 + 16) = v163;
            *(v131 + 24) = v160;
            *(v131 + 40) = v161;
            ++v176.i64[1];
            ++v120;
          }

          while (v120 != __src[0]);
        }

        if (v143)
        {
          operator delete(v143);
        }

        if (v116)
        {
          operator delete(v116);
        }

        if (!v176.i64[1])
        {
          goto LABEL_240;
        }
      }

      if (v117)
      {
        operator delete(v117);
      }

      if (v116)
      {
        operator delete(v116);
      }
    }
  }

LABEL_240:
  sub_2622C0A38(&v174);
  sub_2622C0BA8(v164);
  sub_2621C74C4(v167);
  sub_2622BFE8C(v170);
  if (v146 != v147)
  {
    v132 = v151;
    if (v151)
    {
      v133 = *v146;
      v134 = &v151;
      do
      {
        v135 = v132;
        v136 = v134;
        v137 = *(v132 + 8);
        if (v137 >= v133)
        {
          v134 = v132;
        }

        v132 = v132[v137 < v133];
      }

      while (v132);
      if (v134 != &v151)
      {
        if (v137 < v133)
        {
          v135 = v136;
        }

        *(v135 + 8);
      }
    }

    sub_2621CBEC8(1uLL);
  }

  memset(__p, 0, sizeof(__p));
  LODWORD(v173) = 1065353216;
  v104[1] = *v104;
  sub_2621C74C4(__p);
  if (v146)
  {
    v147 = v146;
    operator delete(v146);
  }

  sub_2621C7150(*(&v157 + 1));
  v138 = *(&v156 + 1);
  *(&v156 + 1) = 0;
  if (v138)
  {
    operator delete(v138);
  }

  if (v155)
  {
    *(&v155 + 1) = v155;
    operator delete(v155);
  }

  sub_2621C74C4(v153);
  sub_2621C6C04(v151);
  sub_2621C70A8(v150[0]);
  v139 = *MEMORY[0x277D85DE8];
}

void sub_2622BFC74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, char a36)
{
  sub_2621C74C4(&STACK[0x350]);
  if (__p)
  {
    operator delete(__p);
  }

  if (a33)
  {
    operator delete(a33);
  }

  sub_2622BFF0C(&a36);
  _Unwind_Resume(a1);
}

uint64_t sub_2622BFE8C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_2622BFF0C(uint64_t a1)
{
  sub_2621C7004(a1 + 112);
  v2 = *(a1 + 88);
  if (v2)
  {
    *(a1 + 96) = v2;
    operator delete(v2);
  }

  sub_2621C74C4(a1 + 48);
  sub_2621C6C04(*(a1 + 32));
  sub_2621C70A8(*(a1 + 8));
  return a1;
}

void sub_2622BFFB4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2622BFFD0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    sub_2621C7E7C(a2);
  }

  sub_2621CBEB0();
}

uint64_t *sub_2622C0010(uint64_t *result, int *a2, void **a3, uint64_t a4, char a5)
{
  v7 = result;
  while (2)
  {
    v133 = a2 - 1;
    v122 = a2 - 3;
    v123 = a2 - 2;
    v8 = v7;
    v129 = a2;
    v9 = a3;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v10 = v8;
          v11 = a2 - v8;
          v12 = v11 - 2;
          if (v11 > 2)
          {
            switch(v11)
            {
              case 3:
                v57 = *v9;

                return sub_2622C1114(v8, v8 + 1, v133, v57);
              case 4:

                return sub_2622C123C(v8, v8 + 1, v8 + 2, v133, v9);
              case 5:

                return sub_2622C1338(v8, v8 + 1, v8 + 2, v8 + 3, v133, v9);
            }
          }

          else
          {
            if (v11 < 2)
            {
              return result;
            }

            v9 = a3;
            if (v11 == 2)
            {
              v53 = *v133;
              v54 = *v8;
              v55 = *a3;
              v56 = sub_2621C719C(*a3, *v133)[3];
              result = sub_2621C719C(v55, v54);
              if (v56 < result[3])
              {
                *v10 = v53;
                *v133 = v54;
              }

              return result;
            }
          }

          v132 = v8;
          if (v11 <= 23)
          {
            v58 = v8 + 1;
            v60 = v8 == a2 || v58 == a2;
            if (a5)
            {
              if (!v60)
              {
                v61 = 0;
                v62 = *a3;
                v63 = v8;
                do
                {
                  v65 = *v63;
                  v64 = v63[1];
                  v63 = v58;
                  v66 = sub_2621C719C(v62, v64)[3];
                  result = sub_2621C719C(v62, v65);
                  if (v66 < result[3])
                  {
                    v67 = *a3;
                    v68 = v61;
                    while (1)
                    {
                      *(v10 + v68 + 4) = v65;
                      if (!v68)
                      {
                        break;
                      }

                      v65 = *(v10 + v68 - 4);
                      v69 = sub_2621C719C(v67, v64)[3];
                      result = sub_2621C719C(v67, v65);
                      v68 -= 4;
                      v37 = v69 >= result[3];
                      v10 = v132;
                      if (v37)
                      {
                        v70 = (v132 + v68 + 4);
                        goto LABEL_88;
                      }
                    }

                    v70 = v10;
LABEL_88:
                    *v70 = v64;
                  }

                  v58 = v63 + 1;
                  v61 += 4;
                }

                while (v63 + 1 != a2);
              }
            }

            else if (!v60)
            {
              v116 = *a3;
              do
              {
                v118 = *v10;
                v117 = v10[1];
                v10 = v58;
                v119 = sub_2621C719C(v116, v117)[3];
                result = sub_2621C719C(v116, v118);
                if (v119 < result[3])
                {
                  v120 = v10;
                  do
                  {
                    *v120 = v118;
                    v118 = *(v120 - 2);
                    v121 = sub_2621C719C(v116, v117)[3];
                    result = sub_2621C719C(v116, v118);
                    --v120;
                  }

                  while (v121 < result[3]);
                  *v120 = v117;
                }

                v58 = v10 + 1;
              }

              while (v10 + 1 != a2);
            }

            return result;
          }

          if (!a4)
          {
            if (v8 != a2)
            {
              v71 = *a3;
              v137 = v12 >> 1;
              v72 = v12 >> 1;
              v124 = *a3;
              do
              {
                v73 = v72;
                if (v137 >= v72)
                {
                  v74 = (2 * v72) | 1;
                  v75 = &v10[v74];
                  v76 = 2 * v72 + 2;
                  v77 = *v75;
                  v127 = v72;
                  if (v76 < v11)
                  {
                    v78 = v75[1];
                    v79 = sub_2621C719C(v71, v77)[3];
                    v80 = sub_2621C719C(v71, v78)[3];
                    if (v79 < v80)
                    {
                      v77 = v78;
                    }

                    v73 = v127;
                    if (v79 < v80)
                    {
                      ++v75;
                      v74 = v76;
                    }
                  }

                  v81 = &v10[v73];
                  v82 = *v81;
                  v83 = sub_2621C719C(v71, v77)[3];
                  v134 = v82;
                  result = sub_2621C719C(v71, v82);
                  if (v83 >= result[3])
                  {
                    v84 = *a3;
                    do
                    {
                      v85 = v75;
                      *v81 = v77;
                      if (v137 < v74)
                      {
                        break;
                      }

                      v86 = (2 * v74) | 1;
                      v75 = &v10[v86];
                      v87 = 2 * v74 + 2;
                      v77 = *v75;
                      if (v87 < v11)
                      {
                        v88 = v75[1];
                        v89 = sub_2621C719C(v84, *v75)[3];
                        v90 = sub_2621C719C(v84, v88)[3];
                        if (v89 < v90)
                        {
                          v77 = v88;
                          ++v75;
                        }

                        v10 = v132;
                        if (v89 < v90)
                        {
                          v86 = v87;
                        }
                      }

                      v91 = sub_2621C719C(v84, v77)[3];
                      result = sub_2621C719C(v84, v134);
                      v81 = v85;
                      v74 = v86;
                    }

                    while (v91 >= result[3]);
                    *v85 = v134;
                    v71 = v124;
                    v73 = v127;
                  }
                }

                v72 = v73 - 1;
              }

              while (v73);
              v92 = v129;
              v125 = *a3;
              do
              {
                v130 = v92;
                v93 = 0;
                v128 = *v10;
                v94 = (v11 - 2) / 2;
                v135 = *a3;
                v138 = v11;
                v95 = v10;
                do
                {
                  v96 = &v95[v93];
                  v98 = v96 + 1;
                  v97 = v96[1];
                  v99 = (2 * v93) | 1;
                  v100 = 2 * v93 + 2;
                  if (v100 >= v11)
                  {
                    v93 = (2 * v93) | 1;
                  }

                  else
                  {
                    v103 = v96[2];
                    v102 = v96 + 2;
                    v101 = v103;
                    v104 = sub_2621C719C(v135, v97)[3];
                    result = sub_2621C719C(v135, v103);
                    v37 = v104 >= result[3];
                    v11 = v138;
                    if (v37)
                    {
                      v93 = v99;
                    }

                    else
                    {
                      v97 = v101;
                      v98 = v102;
                      v93 = v100;
                    }
                  }

                  *v95 = v97;
                  v95 = v98;
                }

                while (v93 <= v94);
                v92 = v130 - 1;
                if (v98 == v130 - 1)
                {
                  *v98 = v128;
                }

                else
                {
                  *v98 = *v92;
                  *v92 = v128;
                  v105 = (v98 - v132 + 4) >> 2;
                  v106 = v105 < 2;
                  v107 = v105 - 2;
                  if (!v106)
                  {
                    v108 = v107 >> 1;
                    v109 = &v132[v107 >> 1];
                    v110 = *v109;
                    v111 = *v98;
                    v112 = sub_2621C719C(v125, *v109)[3];
                    result = sub_2621C719C(v125, v111);
                    if (v112 < result[3])
                    {
                      v113 = *a3;
                      do
                      {
                        v114 = v109;
                        *v98 = v110;
                        if (!v108)
                        {
                          break;
                        }

                        v108 = (v108 - 1) >> 1;
                        v109 = &v132[v108];
                        v110 = *v109;
                        v115 = sub_2621C719C(v113, *v109)[3];
                        result = sub_2621C719C(v113, v111);
                        v98 = v114;
                      }

                      while (v115 < result[3]);
                      *v114 = v111;
                      v92 = v130 - 1;
                    }
                  }
                }

                v106 = v11-- <= 2;
                v10 = v132;
              }

              while (!v106);
            }

            return result;
          }

          v13 = &v8[v11 >> 1];
          v14 = *v9;
          if (v11 < 0x81)
          {
            sub_2622C1114(&v8[v11 >> 1], v8, v133, v14);
          }

          else
          {
            sub_2622C1114(v8, &v8[v11 >> 1], v133, v14);
            sub_2622C1114(v8 + 1, v13 - 1, v123, *v9);
            sub_2622C1114(v8 + 2, &v8[(v11 >> 1) + 1], v122, *v9);
            sub_2622C1114(v13 - 1, &v8[v11 >> 1], &v8[(v11 >> 1) + 1], *v9);
            v15 = *v8;
            *v8 = *v13;
            *v13 = v15;
          }

          --a4;
          v16 = *v8;
          v17 = *v9;
          if (a5)
          {
            break;
          }

          v18 = sub_2621C719C(*v9, *(v8 - 1))[3];
          v19 = sub_2621C719C(v17, v16)[3];
          if (v18 < v19)
          {
            break;
          }

          result = sub_2621C719C(v17, *v133);
          if (v19 >= result[3])
          {
            v40 = v10 + 1;
            do
            {
              v8 = v40;
              if (v40 >= a2)
              {
                break;
              }

              ++v40;
              v41 = *v8;
              v42 = sub_2621C719C(v17, v16)[3];
              result = sub_2621C719C(v17, v41);
            }

            while (v42 >= result[3]);
          }

          else
          {
            v8 = v10;
            do
            {
              v39 = v8[1];
              ++v8;
              result = sub_2621C719C(v17, v39);
            }

            while (v19 >= result[3]);
          }

          v43 = a2;
          if (v8 < a2)
          {
            v44 = sub_2621C719C(v17, v16)[3];
            v43 = a2;
            do
            {
              v45 = *--v43;
              result = sub_2621C719C(v17, v45);
            }

            while (v44 < result[3]);
          }

          if (v8 < v43)
          {
            v46 = *v8;
            v47 = *v43;
            do
            {
              *v8 = v47;
              *v43 = v46;
              v48 = sub_2621C719C(v17, v16)[3];
              do
              {
                v49 = v8[1];
                ++v8;
                v46 = v49;
              }

              while (v48 >= sub_2621C719C(v17, v49)[3]);
              v50 = sub_2621C719C(v17, v16)[3];
              do
              {
                v51 = *--v43;
                v47 = v51;
                result = sub_2621C719C(v17, v51);
              }

              while (v50 < result[3]);
            }

            while (v8 < v43);
          }

          v52 = v8 - 1;
          a2 = v129;
          if (v8 - 1 != v10)
          {
            *v10 = *v52;
          }

          a5 = 0;
          *v52 = v16;
        }

        v136 = a4;
        v20 = sub_2621C719C(v17, v16)[3];
        v21 = v10;
        do
        {
          v22 = v21;
          v24 = v21[1];
          ++v21;
          v23 = v24;
        }

        while (sub_2621C719C(v17, v24)[3] < v20);
        v25 = a2;
        if (v22 == v10)
        {
          do
          {
            if (v21 >= v25)
            {
              break;
            }

            v28 = *--v25;
            v29 = sub_2621C719C(v17, v28)[3];
          }

          while (v29 >= sub_2621C719C(v17, v16)[3]);
        }

        else
        {
          v26 = sub_2621C719C(v17, v16)[3];
          v25 = a2;
          do
          {
            v27 = *--v25;
          }

          while (sub_2621C719C(v17, v27)[3] >= v26);
        }

        if (v21 < v25)
        {
          v30 = *v25;
          v31 = v21;
          v32 = v25;
          do
          {
            *v31 = v30;
            *v32 = v23;
            v33 = sub_2621C719C(v17, v16)[3];
            do
            {
              v22 = v31;
              v34 = v31[1];
              ++v31;
              v23 = v34;
            }

            while (sub_2621C719C(v17, v34)[3] < v33);
            v35 = sub_2621C719C(v17, v16)[3];
            do
            {
              v36 = *--v32;
              v30 = v36;
            }

            while (sub_2621C719C(v17, v36)[3] >= v35);
          }

          while (v31 < v32);
        }

        v7 = v132;
        if (v22 != v132)
        {
          *v132 = *v22;
        }

        *v22 = v16;
        v37 = v21 >= v25;
        a2 = v129;
        v9 = a3;
        a4 = v136;
        if (v37)
        {
          break;
        }

LABEL_38:
        result = sub_2622C0010(v132, v22, a3, v136, a5 & 1);
        a5 = 0;
        v8 = v22 + 1;
      }

      v38 = sub_2622C1478(v132, v22, a3);
      v8 = v22 + 1;
      result = sub_2622C1478(v22 + 1, v129, a3);
      if (result)
      {
        break;
      }

      if (!v38)
      {
        goto LABEL_38;
      }
    }

    a2 = v22;
    if (!v38)
    {
      continue;
    }

    return result;
  }
}

uint64_t sub_2622C0A38(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 == v3)
  {
    v4 = (a1 + 40);
    v10 = *(a1 + 8);
  }

  else
  {
    v4 = (a1 + 40);
    v5 = *(a1 + 32);
    v6 = &v3[v5 / 0x55];
    v7 = *v6 + 48 * v5 + -4080 * (v5 / 0x55);
    v8 = v3[(*(a1 + 40) + v5) / 0x55] + 48 * *(a1 + 40) + 48 * v5 + -4080 * ((*(a1 + 40) + v5) / 0x55);
    if (v7 != v8)
    {
      do
      {
        sub_2622C0C08(v7);
        v7 += 48;
        if (v7 - *v6 == 4080)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v3 = *(a1 + 8);
      v2 = *(a1 + 16);
    }

    v10 = v2;
  }

  *v4 = 0;
  v11 = v10 - v3;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v3);
      v2 = *(a1 + 16);
      v3 = (*(a1 + 8) + 8);
      *(a1 + 8) = v3;
      v11 = v2 - v3;
    }

    while (v11 > 2);
    v10 = v2;
  }

  if (v11 == 1)
  {
    v12 = 42;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_17;
    }

    v12 = 85;
  }

  *(a1 + 32) = v12;
LABEL_17:
  if (v3 != v10)
  {
    do
    {
      v13 = *v3++;
      operator delete(v13);
    }

    while (v3 != v10);
    v10 = *(a1 + 8);
    v2 = *(a1 + 16);
  }

  if (v2 != v10)
  {
    *(a1 + 16) = v2 + ((v10 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_2622C0BA8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      sub_2621C74C4((v2 + 3));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void sub_2622C0C08(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;

    operator delete(v3);
  }
}

void *sub_2622C0C60(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x55;
  v3 = v1 - 85;
  if (!v2)
  {
    v6 = a1[3];
    v7 = v6 - *a1;
    if (a1[2] - a1[1] < v7)
    {
      operator new();
    }

    v8 = v7 >> 2;
    if (v6 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    sub_26223B6E4(v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  v10 = *v4;
  a1[1] = v4 + 1;
  return sub_26223B72C(a1, &v10);
}

void sub_2622C10E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  operator delete(v11);
  if (a11)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_2622C1114(int *a1, int *a2, int *a3, void *a4)
{
  v8 = *a2;
  v9 = *a1;
  v10 = sub_2621C719C(a4, *a2)[3];
  v11 = sub_2621C719C(a4, v9)[3];
  v12 = *a3;
  result = sub_2621C719C(a4, *a3);
  v14 = result[3];
  if (v10 >= v11)
  {
    if (v14 < v10)
    {
      *a2 = v12;
      *a3 = v8;
      v15 = *a2;
      v16 = *a1;
      v17 = sub_2621C719C(a4, *a2)[3];
      result = sub_2621C719C(a4, v16);
      if (v17 < result[3])
      {
        *a1 = v15;
        *a2 = v16;
      }
    }
  }

  else
  {
    if (v14 >= v10)
    {
      *a1 = v8;
      *a2 = v9;
      v18 = *a3;
      v19 = sub_2621C719C(a4, *a3)[3];
      result = sub_2621C719C(a4, v9);
      if (v19 >= result[3])
      {
        return result;
      }

      *a2 = v18;
    }

    else
    {
      *a1 = v12;
    }

    *a3 = v9;
  }

  return result;
}

uint64_t *sub_2622C123C(int *a1, int *a2, int *a3, int *a4, void **a5)
{
  sub_2622C1114(a1, a2, a3, *a5);
  v10 = *a4;
  v11 = *a3;
  v12 = *a5;
  v13 = sub_2621C719C(v12, *a4)[3];
  result = sub_2621C719C(v12, v11);
  if (v13 < result[3])
  {
    *a3 = v10;
    *a4 = v11;
    v15 = *a3;
    v16 = *a2;
    v17 = sub_2621C719C(v12, *a3)[3];
    result = sub_2621C719C(v12, v16);
    if (v17 < result[3])
    {
      *a2 = v15;
      *a3 = v16;
      v18 = *a2;
      v19 = *a1;
      v20 = sub_2621C719C(v12, *a2)[3];
      result = sub_2621C719C(v12, v19);
      if (v20 < result[3])
      {
        *a1 = v18;
        *a2 = v19;
      }
    }
  }

  return result;
}

uint64_t *sub_2622C1338(int *a1, int *a2, int *a3, int *a4, int *a5, void **a6)
{
  sub_2622C123C(a1, a2, a3, a4, a6);
  v12 = *a5;
  v13 = *a4;
  v14 = *a6;
  v15 = sub_2621C719C(v14, *a5)[3];
  result = sub_2621C719C(v14, v13);
  if (v15 < result[3])
  {
    *a4 = v12;
    *a5 = v13;
    v17 = *a4;
    v18 = *a3;
    v19 = sub_2621C719C(v14, *a4)[3];
    result = sub_2621C719C(v14, v18);
    if (v19 < result[3])
    {
      *a3 = v17;
      *a4 = v18;
      v20 = *a3;
      v21 = *a2;
      v22 = sub_2621C719C(v14, *a3)[3];
      result = sub_2621C719C(v14, v21);
      if (v22 < result[3])
      {
        *a2 = v20;
        *a3 = v21;
        v23 = *a2;
        v24 = *a1;
        v25 = sub_2621C719C(v14, *a2)[3];
        result = sub_2621C719C(v14, v24);
        if (v25 < result[3])
        {
          *a1 = v23;
          *a2 = v24;
        }
      }
    }
  }

  return result;
}

BOOL sub_2622C1478(int *a1, int *a2, void **a3)
{
  v3 = a3;
  v4 = a2;
  v6 = a2 - a1;
  if (v6 <= 2)
  {
    if (v6 >= 2)
    {
      if (v6 == 2)
      {
        v7 = *(a2 - 1);
        v8 = *a1;
        v9 = *a3;
        v10 = sub_2621C719C(*a3, v7)[3];
        if (v10 < sub_2621C719C(v9, v8)[3])
        {
          *a1 = v7;
          *(v4 - 1) = v8;
        }

        return 1;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v6)
  {
    case 3:
      sub_2622C1114(a1, a1 + 1, a2 - 1, *a3);
      return 1;
    case 4:
      sub_2622C123C(a1, a1 + 1, a1 + 2, a2 - 1, a3);
      return 1;
    case 5:
      sub_2622C1338(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
      return 1;
  }

LABEL_11:
  v11 = a1 + 2;
  sub_2622C1114(a1, a1 + 1, a1 + 2, *a3);
  v12 = a1 + 3;
  if (a1 + 3 == v4)
  {
    return 1;
  }

  v13 = 0;
  v14 = *v3;
  v15 = 12;
  v26 = v3;
  v27 = v4;
  while (1)
  {
    v16 = *v12;
    v17 = *v11;
    v18 = sub_2621C719C(v14, *v12)[3];
    if (v18 < sub_2621C719C(v14, v17)[3])
    {
      v19 = *v3;
      v20 = v15;
      while (1)
      {
        *(a1 + v20) = v17;
        v21 = v20 - 4;
        if (v20 == 4)
        {
          break;
        }

        v17 = *(a1 + v20 - 8);
        v22 = sub_2621C719C(v19, v16)[3];
        v23 = sub_2621C719C(v19, v17);
        v20 = v21;
        if (v22 >= v23[3])
        {
          v24 = (a1 + v21);
          goto LABEL_19;
        }
      }

      v24 = a1;
LABEL_19:
      *v24 = v16;
      ++v13;
      v3 = v26;
      v4 = v27;
      if (v13 == 8)
      {
        return v12 + 1 == v27;
      }
    }

    v11 = v12;
    v15 += 4;
    if (++v12 == v4)
    {
      return 1;
    }
  }
}

uint64_t sub_2622C1688(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  v5 = a2[2];
  v3 = a2 + 2;
  v4 = v5;
  v6 = *(v3 - 1);
  *(result + 16) = v5;
  *(result + 8) = v6;
  *(v3 - 1) = 0;
  v7 = v3[1];
  *(result + 24) = v7;
  *(result + 32) = *(v3 + 4);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 16;
    *v3 = 0;
    v3[1] = 0;
  }

  return result;
}

uint64_t sub_2622C16F8(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_2621C74C4(v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_2622C1744(uint64_t a1, uint64_t **a2)
{
  if (a2[1] == 3)
  {
    v2 = *a2;
    v3 = *(a1 + 8);
    v5 = *(v3 + 8);
    v4 = *(v3 + 16);
    if (v5 >= v4)
    {
      v7 = *v3;
      v8 = v5 - *v3;
      v9 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 2) + 1;
      if (v9 > 0x1555555555555555)
      {
        sub_2621CBEB0();
      }

      v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v7) >> 2);
      if (2 * v10 > v9)
      {
        v9 = 2 * v10;
      }

      if (v10 >= 0xAAAAAAAAAAAAAAALL)
      {
        v11 = 0x1555555555555555;
      }

      else
      {
        v11 = v9;
      }

      if (v11)
      {
        if (v11 <= 0x1555555555555555)
        {
          operator new();
        }

        sub_2621C6A34();
      }

      v12 = 4 * (v8 >> 2);
      *(v12 + 8) = 0;
      *v12 = 0;
      v6 = v12 + 12;
      v13 = v12 - v8;
      memcpy((v12 - v8), v7, v8);
      *v3 = v13;
      *(v3 + 8) = v6;
      *(v3 + 16) = 0;
      if (v7)
      {
        operator delete(v7);
      }
    }

    else
    {
      *(v5 + 8) = 0;
      *v5 = 0;
      v6 = v5 + 12;
    }

    *(v3 + 8) = v6;
    v14 = *v2;
    *(v6 - 4) = *(v2 + 2);
    *(v6 - 12) = v14;
  }

  return 1;
}

uint64_t sub_2622C1890(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2874EE660;
  a2[1] = v2;
  return result;
}

uint64_t *sub_2622C1924(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = (v3 + ((v2 + 2654435769) << 6) + ((v2 + 2654435769) >> 2) + 2654435769u) ^ (v2 + 2654435769);
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_22;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = (v3 + ((v2 + 2654435769) << 6) + ((v2 + 2654435769) >> 2) + 2654435769u) ^ (v2 + 2654435769);
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_22;
    }

LABEL_21:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_22;
    }
  }

  if (*(v9 + 4) != v2 || *(v9 + 5) != v3)
  {
    goto LABEL_21;
  }

  return v9 + 4;
}

void sub_2622C1D70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2622C1FBC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2622C1D84(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_2622C1F5C(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_2622C1DD0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      sub_2622C1F5C((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_2622C1E30(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      sub_2621C74C4((v2 + 4));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t *sub_2622C1E90(uint64_t a1, unint64_t a2, int a3, int a4)
{
  if (!a2)
  {
    return 0;
  }

  v4 = (((a3 + 2654435769) << 6) + a4 + ((a3 + 2654435769) >> 2) + 2654435769u) ^ (a3 + 2654435769);
  v5 = vcnt_s8(a2);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = (((a3 + 2654435769) << 6) + a4 + ((a3 + 2654435769) >> 2) + 2654435769u) ^ (a3 + 2654435769);
    if (v4 >= a2)
    {
      v6 = v4 % a2;
    }
  }

  else
  {
    v6 = v4 & (a2 - 1);
  }

  v7 = *(a1 + 8 * v6);
  if (!v7)
  {
    return 0;
  }

  for (result = *v7; result; result = *result)
  {
    v9 = result[1];
    if (v9 == v4)
    {
      if (*(result + 4) == a3 && *(result + 5) == a4)
      {
        return result;
      }
    }

    else
    {
      if (v5.u32[0] > 1uLL)
      {
        if (v9 >= a2)
        {
          v9 %= a2;
        }
      }

      else
      {
        v9 &= a2 - 1;
      }

      if (v9 != v6)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_2622C1F5C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v4)
  {

    operator delete(v4);
  }
}

uint64_t sub_2622C1FBC(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_2621C74C4(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_2622C2794(void *a1, _OWORD *a2)
{
  v3 = a1;
  if (objc_msgSend_count(v3, v4, v5) == 4)
  {
    v7 = 0;
    while (1)
    {
      v8 = objc_msgSend_objectAtIndexedSubscript_(v3, v6, v7);
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        break;
      }

      v11 = objc_msgSend_objectAtIndexedSubscript_(v3, v10, v7);
      v12 = sub_2622C2EB0(v11, a2);

      if (!v12)
      {
        break;
      }

      ++v7;
      ++a2;
      if (v7 == 4)
      {
        v13 = 1;
        goto LABEL_8;
      }
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

void sub_2622C2884(void *a1, _OWORD *a2)
{
  v29 = a1;
  if (objc_msgSend_count(v29, v3, v4) == 4)
  {
    v6 = objc_msgSend_objectAtIndexedSubscript_(v29, v5, 0);
    objc_msgSend_floatValue(v6, v7, v8);
    v28 = v9;
    v11 = objc_msgSend_objectAtIndexedSubscript_(v29, v10, 1);
    objc_msgSend_floatValue(v11, v12, v13);
    v27 = v14;
    v16 = objc_msgSend_objectAtIndexedSubscript_(v29, v15, 2);
    objc_msgSend_floatValue(v16, v17, v18);
    v26 = v19;
    v21 = objc_msgSend_objectAtIndexedSubscript_(v29, v20, 3);
    objc_msgSend_floatValue(v21, v22, v23);
    *&v24 = __PAIR64__(v27, v28);
    *(&v24 + 1) = __PAIR64__(v25, v26);
    *a2 = v24;
  }
}

void sub_2622C29BC(void *a1, uint64_t a2)
{
  v22 = a1;
  for (i = 0; objc_msgSend_count(v22, v3, v4) > i; ++i)
  {
    v7 = objc_msgSend_objectAtIndexedSubscript_(v22, v6, i);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      break;
    }

    DWORD2(v23) = 0;
    *&v23 = 0;
    v10 = objc_msgSend_objectAtIndexedSubscript_(v22, v9, i);
    v11 = sub_2622C2EB0(v10, &v23);

    if (!v11)
    {
      break;
    }

    v13 = *(a2 + 8);
    v12 = *(a2 + 16);
    if (v13 >= v12)
    {
      v15 = (v13 - *a2) >> 4;
      if ((v15 + 1) >> 60)
      {
        sub_2621CBEB0();
      }

      v16 = v12 - *a2;
      v17 = v16 >> 3;
      if (v16 >> 3 <= (v15 + 1))
      {
        v17 = v15 + 1;
      }

      if (v16 >= 0x7FFFFFFFFFFFFFF0)
      {
        v18 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v17;
      }

      if (v18)
      {
        sub_2621CBF10(v18);
      }

      *(16 * v15) = v23;
      v14 = 16 * v15 + 16;
      v19 = *(a2 + 8) - *a2;
      v20 = (16 * v15 - v19);
      memcpy(v20, *a2, v19);
      v21 = *a2;
      *a2 = v20;
      *(a2 + 8) = v14;
      *(a2 + 16) = 0;
      if (v21)
      {
        operator delete(v21);
      }
    }

    else
    {
      *v13 = v23;
      v14 = (v13 + 1);
    }

    *(a2 + 8) = v14;
  }
}

void sub_2622C2B70(void *a1, uint64_t a2)
{
  v22 = a1;
  for (i = 0; objc_msgSend_count(v22, v3, v4) > i; ++i)
  {
    v7 = objc_msgSend_objectAtIndexedSubscript_(v22, v6, i);
    v9 = objc_msgSend_objectAtIndexedSubscript_(v7, v8, 0);
    v12 = objc_msgSend_intValue(v9, v10, v11);
    v14 = *(a2 + 8);
    v13 = *(a2 + 16);
    if (v14 >= v13)
    {
      v16 = *a2;
      v17 = &v14[-*a2];
      v18 = (v17 + 1);
      if ((v17 + 1) < 0)
      {
        sub_2621CBEB0();
      }

      v19 = v13 - v16;
      if (2 * v19 > v18)
      {
        v18 = 2 * v19;
      }

      if (v19 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v20 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v18;
      }

      if (v20)
      {
        operator new();
      }

      v21 = &v14[-*a2];
      *v17 = v12;
      v15 = v17 + 1;
      memcpy(0, v16, v21);
      *a2 = 0;
      *(a2 + 8) = v17 + 1;
      *(a2 + 16) = 0;
      if (v16)
      {
        operator delete(v16);
      }
    }

    else
    {
      *v14 = v12;
      v15 = v14 + 1;
    }

    *(a2 + 8) = v15;
  }
}

void sub_2622C2D10(void *a1, uint64_t a2)
{
  v22 = a1;
  for (i = 0; objc_msgSend_count(v22, v3, v4) > i; ++i)
  {
    v7 = objc_msgSend_objectAtIndexedSubscript_(v22, v6, i);
    v9 = objc_msgSend_objectAtIndexedSubscript_(v7, v8, 0);
    v12 = objc_msgSend_intValue(v9, v10, v11);
    v14 = *(a2 + 8);
    v13 = *(a2 + 16);
    if (v14 >= v13)
    {
      v16 = *a2;
      v17 = &v14[-*a2];
      v18 = (v17 + 1);
      if ((v17 + 1) < 0)
      {
        sub_2621CBEB0();
      }

      v19 = v13 - v16;
      if (2 * v19 > v18)
      {
        v18 = 2 * v19;
      }

      if (v19 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v20 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v18;
      }

      if (v20)
      {
        operator new();
      }

      v21 = &v14[-*a2];
      *v17 = v12;
      v15 = v17 + 1;
      memcpy(0, v16, v21);
      *a2 = 0;
      *(a2 + 8) = v17 + 1;
      *(a2 + 16) = 0;
      if (v16)
      {
        operator delete(v16);
      }
    }

    else
    {
      *v14 = v12;
      v15 = v14 + 1;
    }

    *(a2 + 8) = v15;
  }
}

BOOL sub_2622C2EB0(void *a1, _OWORD *a2)
{
  v3 = a1;
  v7 = objc_msgSend_count(v3, v4, v5);
  if (v7 == 3)
  {
    v8 = objc_msgSend_objectAtIndexedSubscript_(v3, v6, 0);
    objc_msgSend_floatValue(v8, v9, v10);
    v25 = v11;
    v13 = objc_msgSend_objectAtIndexedSubscript_(v3, v12, 1);
    objc_msgSend_floatValue(v13, v14, v15);
    v24 = v16;
    v18 = objc_msgSend_objectAtIndexedSubscript_(v3, v17, 2);
    objc_msgSend_floatValue(v18, v19, v20);
    v21 = v25;
    DWORD1(v21) = v24;
    DWORD2(v21) = v22;
    *a2 = v21;
  }

  return v7 == 3;
}

id sub_2622C3298(__n128 *a1, const char *a2, uint64_t a3)
{
  v18[4] = *MEMORY[0x277D85DE8];
  v4 = sub_2622C3514(*a1, a1, a2, a3);
  v18[0] = v4;
  v7 = sub_2622C3514(a1[1], v4, v5, v6);
  v18[1] = v7;
  v10 = sub_2622C3514(a1[2], v7, v8, v9);
  v18[2] = v10;
  v13 = sub_2622C3514(a1[3], v10, v11, v12);
  v18[3] = v13;
  v15 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v14, v18, 4);

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

id sub_2622C33C8(__n128 a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v20[4] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], a3, a4);
  v20[0] = v4;
  HIDWORD(v5) = a1.n128_u32[1];
  LODWORD(v5) = a1.n128_u32[1];
  v8 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v6, v7, v5);
  v20[1] = v8;
  v11 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v9, v10, COERCE_DOUBLE(__PAIR64__(a1.n128_u32[1], a1.n128_u32[2])));
  v20[2] = v11;
  v14 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v12, v13, COERCE_DOUBLE(__PAIR64__(a1.n128_u32[1], a1.n128_u32[3])));
  v20[3] = v14;
  v16 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v15, v20, 4);

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

id sub_2622C3514(__n128 a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v17[3] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], a3, a4);
  v17[0] = v4;
  HIDWORD(v5) = a1.n128_u32[1];
  LODWORD(v5) = a1.n128_u32[1];
  v8 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v6, v7, v5);
  v17[1] = v8;
  v11 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v9, v10, COERCE_DOUBLE(__PAIR64__(a1.n128_u32[1], a1.n128_u32[2])));
  v17[2] = v11;
  v13 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v12, v17, 3);

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

id sub_2622C362C(char **a1, const char *a2, uint64_t a3)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, a3);
  v6 = *a1;
  v7 = a1[1];
  if (*a1 != v7)
  {
    do
    {
      v8 = objc_msgSend_numberWithChar_(MEMORY[0x277CCABB0], v4, *v6);
      v14[0] = v8;
      v14[1] = &stru_2874F1610;
      v10 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v9, v14, 2);
      objc_msgSend_addObject_(v5, v11, v10);

      ++v6;
    }

    while (v6 != v7);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

id sub_2622C3758(char **a1, const char *a2, uint64_t a3)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, a3);
  v6 = *a1;
  v7 = a1[1];
  if (*a1 != v7)
  {
    do
    {
      v8 = objc_msgSend_numberWithChar_(MEMORY[0x277CCABB0], v4, *v6);
      v14[0] = v8;
      v14[1] = &stru_2874F1610;
      v10 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v9, v14, 2);
      objc_msgSend_addObject_(v5, v11, v10);

      ++v6;
    }

    while (v6 != v7);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

uint64_t RS3DSurfaceTypeGetDirectionalAxis(unsigned int a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return qword_2623A8640[a1];
  }
}

void sub_2622C51B4(void *a1, char *a2, char *a3, char *a4, unint64_t a5)
{
  if (a1)
  {
    sub_26229CC54(a1 + 1, a2, &a2[16 * a5], a5);
    sub_2622ACF80(a1 + 4, a3, &a3[a5], a5);
    sub_26225E46C(a1 + 7, a4, &a4[4 * a5], a5);
    v10 = a1[10];
    v9 = a1[11];
    if (a5 <= &v9[-v10])
    {
      if (a5 < &v9[-v10])
      {
        a1[11] = v10 + a5;
      }
    }

    else
    {
      v11 = a1[12];
      if (v11 - v9 < a5 - &v9[-v10])
      {
        if ((a5 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_2621CBEB0();
      }

      v12 = a5 + v10;
      bzero(v9, a5 - &v9[-v10]);
      a1[11] = v12;
    }

    if (a5 >= 3)
    {
      v13 = a1[10];
      if (a5 != 3)
      {
        bzero(v13, a5 - 3);
      }

      v13[a5 - 3] = 1;
      *&v13[a5 - 2] = 770;
    }
  }
}

void sub_2622C533C(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 144), a2);
  }
}

void sub_2622C534C(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 152), a2);
  }
}

void *sub_2622C57A4(void *result, unint64_t a2)
{
  if (result)
  {
    if (result[7] <= a2)
    {
      return 0;
    }

    else
    {
      return (sub_2622C5800(result) + result[3] * a2 * result[5]);
    }
  }

  return result;
}

__CVBuffer *sub_2622C5800(__CVBuffer *result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 8);
    result = *(result + 1);
    if (v2)
    {
      if (result)
      {
        IsPlanar = CVPixelBufferIsPlanar(result);
        v4 = *(v1 + 1);
        if (IsPlanar)
        {

          return CVPixelBufferGetBaseAddressOfPlane(v4, 0);
        }

        else
        {

          return CVPixelBufferGetBaseAddress(v4);
        }
      }
    }
  }

  return result;
}

void sub_2622C58C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = RSSemanticImage;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_2622C58F8(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 64);
    v3 = *(a1 + 8);
    if (v2)
    {
      if (!v3)
      {
        return;
      }

      CVPixelBufferRelease(v3);
    }

    else
    {
      if (!v3)
      {
        return;
      }

      free(v3);
    }

    *(a1 + 8) = 0;
  }
}

void *sub_2622C5968(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  if (!a1)
  {
    return 0;
  }

  v15.receiver = a1;
  v15.super_class = RSSemanticImage;
  v11 = objc_msgSendSuper2(&v15, sel_init);
  v13 = v11;
  if (v11)
  {
    v11[5] = a2;
    v11[6] = a3;
    v11[7] = a4;
    v11[8] = a5;
    *(v11 + 4) = a6;
    sub_2622C5A18(v11, v12);
  }

  return v13;
}

size_t sub_2622C5A18(size_t result, const char *a2)
{
  v2 = result;
  v11[1] = *MEMORY[0x277D85DE8];
  if (!*(result + 64))
  {
    v4 = 4 * *(result + 48);
    result = *(result + 40) * v4 * *(result + 56);
    *(v2 + 24) = v4;
    *(v2 + 32) = result;
    if (result)
    {
      result = malloc_type_calloc(result, 1uLL, 0x100004052888210uLL);
      *(v2 + 8) = result;
    }

    else
    {
      *(v2 + 8) = 0;
    }

    goto LABEL_19;
  }

  if (!*(result + 40) || !*(result + 48) || !*(result + 56))
  {
    *(result + 8) = 0;
LABEL_9:
    *(v2 + 24) = 0;
    *(v2 + 32) = 0;
    goto LABEL_19;
  }

  v10 = *MEMORY[0x277CC4DE8];
  v11[0] = MEMORY[0x277CBEC10];
  v3 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v11, &v10, 1);
  texture = 0;
  if (CVPixelBufferCreate(*MEMORY[0x277CBECE8], *(v2 + 48), *(v2 + 56) * *(v2 + 40), *(v2 + 16), v3, &texture))
  {
    if (texture)
    {
      CVPixelBufferRelease(texture);
    }
  }

  else
  {
    *(v2 + 8) = texture;
  }

  result = *(v2 + 8);
  if (!result)
  {
    goto LABEL_9;
  }

  IsPlanar = CVPixelBufferIsPlanar(result);
  v6 = *(v2 + 8);
  if (IsPlanar)
  {
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(v6, 0);
  }

  else
  {
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRow(v6);
  }

  *(v2 + 24) = BytesPerRowOfPlane;
  result = CVPixelBufferGetDataSize(*(v2 + 8));
  *(v2 + 32) = result;
LABEL_19:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2622C5BB4(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 64) == 1 && CVPixelBufferLockBaseAddress(*(a1 + 8), 0) == 0;
    v3 = sub_2622C5800(a1);
    if (v3)
    {
      v4 = *(a1 + 32);
      if (v4)
      {
        bzero(v3, v4);
      }
    }

    if (v2)
    {
      v5 = *(a1 + 8);

      CVPixelBufferUnlockBaseAddress(v5, 1uLL);
    }
  }
}

void sub_2622C5C44(char **a1)
{
  v8 = 0;
  v2 = 0uLL;
  v7 = 0u;
  v3 = *a1;
  if (a1[1] == *a1)
  {
    v6 = 0;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    do
    {
      sub_2621C9004(&v7, &v3[v4]);
      v5 += 3;
      v3 = *a1;
      v4 += 24;
    }

    while (v5 < (a1[1] - *a1) >> 3);
    v2 = v7;
    v6 = v8;
  }

  *a1 = v2;
  a1[2] = v6;
  if (v3)
  {

    operator delete(v3);
  }
}

void sub_2622C5CFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2622C5D14(uint64_t a1, __int128 *a2)
{
  if (a1)
  {
    v3 = *a2;
    v4 = *(a2 + 1);
    v5 = *a2;
    if (*a2 != v4)
    {
      v15 = 0uLL;
      v16 = 0;
      memset(v13, 0, sizeof(v13));
      v14 = 1065353216;
      v12 = vdupq_n_s32(0x42C80000u);
      do
      {
        v7 = vmulq_f32(*(a1 + 16 * *v5), v12);
        v7.i32[3] = 0;
        v8 = _simd_round_f4(v7);
        v9 = vcvt_s32_f32(*v8.f32);
        v8.i16[0] = 0;
        v8.i16[1] = v9.i16[0];
        v8.i16[2] = v9.i16[2];
        v8.i16[3] = v8.f32[2];
        v10 = v8.i64[0];
        if (!sub_262295160(v13, v8.u64[0]))
        {
          sub_2622C5E50(v13, v10);
          sub_2621C9004(&v15, v5);
        }

        ++v5;
      }

      while (v5 != v4);
      v11 = *a2;
      *a2 = v15;
      *(a2 + 2) = v16;
      sub_2621C74C4(v13);
      if (v11)
      {
        operator delete(v11);
      }
    }
  }
}

void sub_2622C5E2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p)
{
  sub_2621C74C4(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_2622C5E50(void *result, unint64_t a2)
{
  v2 = result[1];
  if (!*&v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*result + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return result;
}

uint64_t sub_2622C606C(uint64_t result, void *a2)
{
  if (result)
  {
    v2 = a2[1];
    if (*a2 != v2)
    {
      v3 = (v2 - *a2) >> 3;
      if (!(v3 >> 60))
      {
        sub_2621CBF10(v3);
      }

      sub_2621CBEB0();
    }
  }

  return result;
}

void sub_2622C6368(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (v11)
  {
    operator delete(v11);
  }

  _Unwind_Resume(exception_object);
}

double sub_2622C6390(int32x4_t *a1, __n128 *a2, unint64_t a3, __n128 *a4, uint64_t a5, __n128 a6)
{
  if (a3 >= 2)
  {
    v7 = a1;
    if (a3 == 2)
    {
      a6 = a2[-1];
      v8 = *a1;
      v9 = *a1;
      if (a6.n128_i32[0] < v9 || a6.n128_i32[0] <= v9 && (a6.n128_i32[1] < v8.i32[1] || a6.n128_i32[1] <= v8.i32[1] && (vmovn_s32(vcgtq_s32(v8, *&a6)).i32[1] & 1) != 0))
      {
        *a1 = a6;
        a2[-1] = v8;
      }
    }

    else if (a3 > 128)
    {
      v21 = a4;
      v22 = a3 >> 1;
      v23 = &a1[a3 >> 1];
      v24 = a3 >> 1;
      if (a3 <= a5)
      {
        *v25.i64 = sub_2622C6674(a1, v23, v24, a4, a6);
        v26 = &v21[v22];
        a6.n128_f64[0] = sub_2622C6674(&v7[a3 >> 1], a2, a3 - (a3 >> 1), v26, v25);
        v27 = &v21[a3];
        v28 = v26;
        while (v28 != v27)
        {
          a6 = *v28;
          v29 = *v28;
          v30 = *v21;
          v31 = *v21;
          if (v29 < v31 || v29 <= v31 && (a6.n128_i32[1] < v30.i32[1] || a6.n128_i32[1] <= v30.i32[1] && (vmovn_s32(vcgtq_s32(v30, *&a6)).i32[1] & 1) != 0))
          {
            *v7 = a6;
            ++v28;
          }

          else
          {
            *v7 = v30;
            ++v21;
          }

          ++v7;
          if (v21 == v26)
          {
            while (v28 != v27)
            {
              v33 = *v28++;
              a6.n128_u64[0] = v33.n128_u64[0];
              *v7++ = v33;
            }

            return a6.n128_f64[0];
          }
        }

        while (v21 != v26)
        {
          v32 = *v21++;
          a6.n128_u64[0] = v32.i64[0];
          *v7++ = v32;
        }
      }

      else
      {
        sub_2622C6390(a1, v23, v24, a4, a5);
        sub_2622C6390(&v7[a3 >> 1], a2, a3 - (a3 >> 1), v21, a5);

        sub_2622C6924(v7, &v7[a3 >> 1], a2, a3 >> 1, a3 - (a3 >> 1), v21, a5);
      }
    }

    else if (a1 != a2)
    {
      v11 = &a1[1];
      if (&a1[1] != a2)
      {
        v12 = 0;
        v13 = a1;
        do
        {
          v14 = v13;
          v13 = v11;
          a6 = *v11;
          v15 = *v11;
          v16 = *v14;
          v17 = *v14;
          if (v15 < v17 || v15 <= v17 && (a6.n128_i32[1] < v16.i32[1] || a6.n128_i32[1] <= v16.i32[1] && (vmovn_s32(vcgtq_s32(v16, *&a6)).i32[1] & 1) != 0))
          {
            *v13 = v16;
            if (v14 == a1)
            {
LABEL_18:
              v14 = a1;
            }

            else
            {
              v18 = v12;
              while (1)
              {
                v19 = *(&a1[-1] + v18);
                if (v15 >= v19.i32[0])
                {
                  if (v15 > v19.i32[0])
                  {
                    goto LABEL_19;
                  }

                  if (a6.n128_i32[1] >= v19.i32[1] && (a6.n128_i32[1] > v19.i32[1] || (vmovn_s32(vcgtq_s32(v19, *&a6)).i32[1] & 1) == 0))
                  {
                    break;
                  }
                }

                --v14;
                *(a1 + v18) = v19;
                v18 -= 16;
                if (!v18)
                {
                  goto LABEL_18;
                }
              }

              v14 = (a1 + v18);
            }

LABEL_19:
            *v14 = a6;
          }

          v11 = (v13 + 1);
          v12 += 16;
        }

        while (v13 + 1 != a2);
      }
    }
  }

  return a6.n128_f64[0];
}

double sub_2622C6674(int32x4_t *a1, __n128 *a2, unint64_t a3, __n128 *a4, int32x4_t a5)
{
  if (a3)
  {
    v5 = a4;
    v7 = a1;
    if (a3 == 1)
    {
      v9 = a1;
LABEL_35:
      a5 = *v9;
      *v5 = *v9;
      return *a5.i64;
    }

    if (a3 == 2)
    {
      v9 = a2 - 1;
      v10 = a2[-1];
      v11 = *a1;
      v12 = *a1;
      if (v10.i32[0] < v12 || v10.i32[0] <= v12 && (v10.i32[1] < v11.i32[1] || v10.i32[1] <= v11.i32[1] && (vmovn_s32(vcgtq_s32(v11, v10)).i32[1] & 1) != 0))
      {
        v9 = a1;
      }

      else
      {
        v10 = *a1;
      }

      *a4 = v10;
      v5 = &a4[1];
      goto LABEL_35;
    }

    if (a3 > 8)
    {
      v26 = &a1[a3 >> 1];
      sub_2622C6390(a1, v26, a3 >> 1, a4, a3 >> 1);
      sub_2622C6390(&v7[a3 >> 1], a2, a3 - (a3 >> 1), &v5[a3 >> 1], a3 - (a3 >> 1));
      v27 = &v7[a3 >> 1];
      while (v27 != a2)
      {
        a5 = *v27;
        v28 = *v27;
        v29 = *v7;
        v30 = *v7;
        if (v28 < v30 || v28 <= v30 && (a5.i32[1] < v29.i32[1] || a5.i32[1] <= v29.i32[1] && (vmovn_s32(vcgtq_s32(v29, a5)).i32[1] & 1) != 0))
        {
          *v5 = a5;
          ++v27;
        }

        else
        {
          *v5 = v29;
          ++v7;
        }

        ++v5;
        if (v7 == v26)
        {
          while (v27 != a2)
          {
            v32 = *v27++;
            a5.i64[0] = v32.i64[0];
            *v5++ = v32;
          }

          return *a5.i64;
        }
      }

      while (v7 != v26)
      {
        v31 = *v7++;
        a5.i64[0] = v31.i64[0];
        *v5++ = v31;
      }
    }

    else if (a1 != a2)
    {
      v13 = a1 + 1;
      a5 = *a1;
      *a4 = *a1;
      if (&a1[1] != a2)
      {
        v14 = 0;
        v15 = a4;
        v16 = a4;
        do
        {
          v17 = *v16++;
          a5 = v17;
          v18 = *v13;
          v19 = *v13;
          v20 = v19 <= v17.i32[0];
          if (v19 < v17.i32[0] || v20 && (v18.i32[1] < a5.i32[1] || v18.i32[1] <= a5.i32[1] && (vmovn_s32(vcgtq_s32(a5, v18)).i32[1] & 1) != 0))
          {
            v15[1] = a5;
            v21 = a4;
            if (v15 != a4)
            {
              v22 = v14;
              while (1)
              {
                v23 = *v13;
                v24 = *v13;
                v25 = *(&a4[-1] + v22);
                if (v24 >= v25.i32[0])
                {
                  if (v24 > v25.i32[0])
                  {
                    v21 = v15;
                    goto LABEL_29;
                  }

                  if (v23.i32[1] >= v25.i32[1] && (v23.i32[1] > v25.i32[1] || (vmovn_s32(vcgtq_s32(v25, v23)).i32[1] & 1) == 0))
                  {
                    break;
                  }
                }

                --v15;
                *(a4 + v22) = v25;
                v22 -= 16;
                if (!v22)
                {
                  v21 = a4;
                  goto LABEL_29;
                }
              }

              v21 = (a4 + v22);
            }

LABEL_29:
            a5 = *v13;
            *v21 = *v13;
          }

          else
          {
            *v16 = v18;
          }

          ++v13;
          v14 += 16;
          v15 = v16;
        }

        while (v13 != a2);
      }
    }
  }

  return *a5.i64;
}

int32x4_t *sub_2622C6924(int32x4_t *result, int32x4_t *a2, int32x4_t *a3, uint64_t a4, uint64_t a5, int32x4_t *a6, uint64_t a7)
{
  if (a5)
  {
    v8 = a6;
    v9 = a5;
    v12 = result;
    while (v9 > a7 && a4 > a7)
    {
      if (!a4)
      {
        return result;
      }

      v13 = *a2;
      v14 = *a2;
      v15 = HIDWORD(a2->i64[0]);
      while (1)
      {
        v16 = *v12;
        v17 = *v12;
        if (v14 < v17 || v14 <= v17 && (v15 < v16.i32[1] || v15 <= v16.i32[1] && (vmovn_s32(vcgtq_s32(v16, v13)).i32[1] & 1) != 0))
        {
          break;
        }

        ++v12;
        if (!--a4)
        {
          return result;
        }
      }

      if (a4 >= v9)
      {
        if (a4 == 1)
        {
          *v12 = v13;
          *a2 = v16;
          return result;
        }

        v28 = a4 / 2;
        v20 = &v12[a4 / 2];
        v19 = a2;
        if (a2 != a3)
        {
          v34 = a3 - a2;
          v35 = *v20;
          v36 = HIDWORD(v20->i64[0]);
          v19 = a2;
          do
          {
            v37 = v34 >> 1;
            v38 = &v19[v34 >> 1];
            v39 = *v38;
            v40 = *v38;
            if (v40 < v35 || v40 <= v35 && (v39.i32[1] < v36 || v39.i32[1] <= v36 && (vmovn_s32(vcgtq_s32(*v20, v39)).i32[1] & 1) != 0))
            {
              v19 = v38 + 1;
              v37 = v34 + ~v37;
            }

            v34 = v37;
          }

          while (v37);
        }

        v18 = v19 - a2;
      }

      else
      {
        v18 = v9 / 2;
        v19 = &a2[v9 / 2];
        v20 = a2;
        if (a2 != v12)
        {
          v21 = a2 - v12;
          v22 = *v19;
          v23 = HIDWORD(v19->i64[0]);
          v20 = v12;
          do
          {
            v24 = v21 >> 1;
            v25 = &v20[v21 >> 1];
            v26 = *v25;
            v27 = *v25;
            if (v22 >= v27 && (v22 > v27 || v23 >= v26.i32[1] && (v23 > v26.i32[1] || (vmovn_s32(vcgtq_s32(v26, *v19)).i32[1] & 1) == 0)))
            {
              v20 = v25 + 1;
              v24 = v21 + ~v24;
            }

            v21 = v24;
          }

          while (v24);
        }

        v28 = v20 - v12;
      }

      v29 = v19;
      v30 = a2 - v20;
      if (a2 != v20)
      {
        v29 = v20;
        v31 = v19 - a2;
        if (v19 != a2)
        {
          if (&v20[1] == a2)
          {
            v78 = *v20;
            v32 = v19 - a2;
            v33 = a3;
            memmove(v20, a2, v19 - a2);
            a3 = v33;
            v29 = (v20 + v32);
            *v29 = v78;
          }

          else if (&a2[1] == v19)
          {
            v41 = v19[-1];
            v29 = v20 + 1;
            if (&v19[-1] != v20)
            {
              v79 = a3;
              v77 = v19[-1];
              memmove(&v20[1], v20, &v19[-1] - v20);
              v41 = v77;
              a3 = v79;
            }

            *v20 = v41;
          }

          else
          {
            v42 = v30 >> 4;
            if (v30 >> 4 == v31 >> 4)
            {
              v43 = v20 + 1;
              v44 = a2 + 1;
              do
              {
                v45 = v43[-1];
                v43[-1] = v44[-1];
                v44[-1] = v45;
                if (v43 == a2)
                {
                  break;
                }

                ++v43;
              }

              while (v44++ != v19);
              v29 = a2;
            }

            else
            {
              v47 = v31 >> 4;
              v48 = v30 >> 4;
              do
              {
                v49 = v48;
                v48 = v47;
                v47 = v49 % v47;
              }

              while (v47);
              v50 = &v20[v48];
              do
              {
                v51 = v50[-1];
                --v50;
                v52 = v51;
                v53 = (v50 + v30);
                v54 = v50;
                do
                {
                  v55 = v53;
                  *v54 = *v53;
                  v56 = &v53[v42];
                  v57 = __OFSUB__(v42, v19 - v53);
                  v59 = v42 - (v19 - v53);
                  v58 = (v59 < 0) ^ v57;
                  v53 = &v20[v59];
                  if (v58)
                  {
                    v53 = v56;
                  }

                  v54 = v55;
                }

                while (v53 != v50);
                *v55 = v52;
              }

              while (v50 != v20);
              v29 = (v20 + v31);
            }
          }
        }
      }

      a4 -= v28;
      v9 -= v18;
      if (v28 + v18 >= a4 + v9)
      {
        v8 = a6;
        result = sub_2622C6924(v29, v19, a3, a4, v9, a6, a7);
        v19 = v20;
        v9 = v18;
        a4 = v28;
        a3 = v29;
      }

      else
      {
        v60 = v12;
        v8 = a6;
        v61 = a3;
        result = sub_2622C6924(v60, v20, v29, v28, v18, a6, a7);
        a3 = v61;
        v12 = v29;
      }

      a2 = v19;
      if (!v9)
      {
        return result;
      }
    }

    if (a4 <= v9)
    {
      if (a2 != v12)
      {
        v70 = v8;
        v71 = v12;
        do
        {
          v72 = *v71++;
          *v70 = v72;
          v70 += 16;
        }

        while (v71 != a2);
        while (a2 != a3)
        {
          v73 = *a2;
          v74 = *a2;
          v75 = *v8;
          v76 = *v8;
          if (v74 < v76 || v74 <= v76 && (v73.i32[1] < v75.i32[1] || v73.i32[1] <= v75.i32[1] && (vmovn_s32(vcgtq_s32(v75, v73)).i32[1] & 1) != 0))
          {
            *v12 = v73;
            ++a2;
          }

          else
          {
            *v12 = v75;
            ++v8;
          }

          ++v12;
          if (v8 == v70)
          {
            return result;
          }
        }

        return memmove(v12, v8, v70 - v8);
      }
    }

    else if (a2 != a3)
    {
      v62 = v8;
      v63 = a2;
      do
      {
        v64 = *v63++;
        *v62++ = v64;
      }

      while (v63 != a3);
      while (a2 != v12)
      {
        v65 = a2 - 1;
        v66 = a2[-1];
        v67 = v62[-1];
        if (v67.i32[0] >= v66.i32[0] && (v67.i32[0] > v66.i32[0] || v67.i32[1] >= v66.i32[1] && (v67.i32[1] > v66.i32[1] || (vmovn_s32(vcgtq_s32(v66, v67)).i32[1] & 1) == 0)))
        {
          v66 = v62[-1];
          v65 = a2;
          --v62;
        }

        a3[-1] = v66;
        --a3;
        a2 = v65;
        if (v62 == v8)
        {
          return result;
        }
      }

      if (v62 != v8)
      {
        v68 = 0xFFFFFFFFFFFFFFFLL;
        do
        {
          v69 = v62[-1];
          --v62;
          a3[v68--] = v69;
        }

        while (v62 != v8);
      }
    }
  }

  return result;
}

void sub_2622C6EA0(uint64_t a1, __int128 *a2)
{
  if (a1)
  {
    v3 = *a2;
    v4 = *(a2 + 1);
    v5 = *a2;
    if (*a2 != v4)
    {
      v29 = 0uLL;
      v7 = 0uLL;
      v8 = v5;
      v30 = 0;
      do
      {
        v9 = *v8++;
        v10 = *(a1 + 16 * v9);
        v7 = vaddq_f32(v7, v10);
      }

      while (v8 != v4);
      v10.f32[0] = (v4 - v5);
      v11 = vdivq_f32(v7, vdupq_lane_s32(*v10.f32, 0));
      v12 = 0uLL;
      v13 = v5;
      do
      {
        v14 = *v13++;
        v15 = vsubq_f32(*(a1 + 16 * v14), v11);
        v12 = vmlaq_f32(v12, v15, v15);
      }

      while (v13 != v4);
      v28 = v11;
      _Q0 = vdivq_f32(v12, vdupq_lane_s32(*v10.f32, 0));
      v17 = vsqrt_f32(*&vextq_s8(_Q0, _Q0, 4uLL));
      v18 = sqrtf(*_Q0.i32) * 3.0;
      __asm { FMOV            V0.2S, #3.0 }

      v23 = vmul_f32(v17, *_Q0.i8);
      do
      {
        v24 = vabdq_f32(*(a1 + 16 * *v5), v28);
        if (*v24.i32 < v18)
        {
          v25 = vmvn_s8(vcge_f32(*&vextq_s8(v24, v24, 4uLL), v23));
          if (v25.i8[0] & 1) != 0 && (v25.i8[4])
          {
            sub_2621C9004(&v29, v5);
          }
        }

        ++v5;
      }

      while (v5 != v4);
      v26 = *a2;
      v27 = v30;
      *a2 = v29;
      *(a2 + 2) = v27;
      if (v26)
      {
        operator delete(v26);
      }
    }
  }
}

void sub_2622C6FDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_2622C6FF4(uint64_t a1, float32x2_t a2)
{
  v2 = *(a1 + 72);
  v3 = (a1 + 80);
  if (v2 == (a1 + 80))
  {
    return 0;
  }

  while (1)
  {
    v5 = sub_2621DC76C(a2, v2[5], v2[6], 0.00001);
    result = v5 <= 0.2;
    if (v5 <= 0.2)
    {
      break;
    }

    v7 = v2[1];
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
        v8 = v2[2];
        v9 = *v8 == v2;
        v2 = v8;
      }

      while (!v9);
    }

    v2 = v8;
    if (v8 == v3)
    {
      return 0;
    }
  }

  return result;
}

void sub_2622C7134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_2621DED18(&a9);
  _Unwind_Resume(a1);
}

void *sub_2622C7154(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 > (v8 - *result) >> 3)
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    v10 = v8 >> 2;
    if (v8 >> 2 <= a4)
    {
      v10 = a4;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    sub_2621CC71C(v7, v11);
  }

  v12 = result[1];
  v13 = v12 - v9;
  if (a4 <= (v12 - v9) >> 3)
  {
    v18 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v9[v18];
  }

  else
  {
    if (v12 != v9)
    {
      result = memmove(*result, __src, v12 - v9);
      v12 = v7[1];
    }

    v14 = &__src[v13];
    v15 = v12;
    if (&__src[v13] != a3)
    {
      v15 = v12;
      do
      {
        v16 = *v14;
        v14 += 8;
        *v15 = v16;
        v15 += 8;
      }

      while (v14 != a3);
    }

    v17 = v15;
  }

  v7[1] = v17;
  return result;
}

uint64_t *sub_2622C7278(uint64_t *result)
{
  if (result[2])
  {
    v1 = *result;
    v2 = result[1];
    *result = (result + 1);
    *(v2 + 16) = 0;
    result[1] = 0;
    result[2] = 0;
    if (*(v1 + 8))
    {
      v1 = *(v1 + 8);
    }

    v3 = result;
    v4 = v1;
    v5 = v1;
    if (v1)
    {
      v4 = sub_2621CBE5C(v1);
    }

    return sub_2622CA89C(&v3);
  }

  return result;
}

void sub_2622C72E8(uint64_t a1, int a2)
{
  v39[10] = *MEMORY[0x277D85DE8];
  *a1 = 0;
  *(a1 + 8) = 0xFFFFFFFF00000000;
  *(a1 + 16) = 1065353216;
  *(a1 + 24) = 3;
  if (a2)
  {
    *(a1 + 32) = 1058893870;
    v27 = 0x3F80000000000000;
    v23 = 0;
    v24 = 0;
    v22 = 0;
    sub_2621DC430(&v22, &v27, &v28, 2uLL);
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v3 = v22;
    sub_2621C8E70(&v31, v22, v23, (v23 - v22) >> 2);
    v34 = 1;
    v25 = 0x42C800003F800000;
    v21 = 0;
    v20 = 0uLL;
    sub_2621DC430(&v20, &v25, v26, 2uLL);
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v4 = v20;
    sub_2621C8E70(&v35, v20, *(&v20 + 1), (*(&v20 + 1) - v20) >> 2);
    v38 = 2;
    sub_262217F3C((a1 + 40), &v31, v39);
    v5 = 0;
    while (1)
    {
      v6 = *(&v35 + v5);
      if (v6)
      {
        *(&v36 + v5) = v6;
        operator delete(v6);
      }

      v5 -= 32;
      if (v5 == -64)
      {
        if (v4)
        {
          operator delete(v4);
        }

        if (v3)
        {
          operator delete(v3);
        }

        *(a1 + 64) = xmmword_2623A7840;
        *(a1 + 80) = 1027620402;
        *(a1 + 112) = 0xBC31136ABDB71A7DLL;
        *(a1 + 152) = 1033090475;
        v27 = 0x4000000000000000;
        v23 = 0;
        v24 = 0;
        v22 = 0;
        sub_2621DC430(&v22, &v27, &v28, 2uLL);
        v31 = 0;
        v32 = 0;
        v33 = 0;
        v7 = v22;
        sub_2621C8E70(&v31, v22, v23, (v23 - v22) >> 2);
        v34 = 1;
        v25 = 0x42C8000040000000;
        v21 = 0;
        v20 = 0uLL;
        sub_2621DC430(&v20, &v25, v26, 2uLL);
        v35 = 0;
        v36 = 0;
        v37 = 0;
        v8 = v20;
        sub_2621C8E70(&v35, v20, *(&v20 + 1), (*(&v20 + 1) - v20) >> 2);
        v38 = 2;
        sub_262217F3C((a1 + 160), &v31, v39);
        v9 = 0;
        while (1)
        {
          v10 = *(&v35 + v9);
          if (v10)
          {
            *(&v36 + v9) = v10;
            operator delete(v10);
          }

          v9 -= 32;
          if (v9 == -64)
          {
            if (v8)
            {
              operator delete(v8);
            }

            if (v7)
            {
              operator delete(v7);
            }

            *(a1 + 184) = 1036831949;
            *(a1 + 144) = 0x4270000041F00000;
            v30 = 0x3F80000000000000;
            v23 = 0;
            v24 = 0;
            v22 = 0;
            sub_2621DC430(&v22, &v30, &v31, 2uLL);
            v19 = 1050253722;
            v28 = 0;
            v29 = 0;
            v27 = 0;
            sub_2621DC430(&v27, &v19, &v20, 1uLL);
            v20 = 0uLL;
            v21 = 0;
            sub_2622180B8(&v20, &v27, &v30, 1uLL);
          }
        }
      }
    }
  }

  *(a1 + 32) = 1063675494;
  v27 = 0x3F80000000000000;
  v23 = 0;
  v24 = 0;
  v22 = 0;
  sub_2621DC430(&v22, &v27, &v28, 2uLL);
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v11 = v22;
  sub_2621C8E70(&v31, v22, v23, (v23 - v22) >> 2);
  v34 = 1;
  v25 = 0x42C800003F800000;
  v21 = 0;
  v20 = 0uLL;
  sub_2621DC430(&v20, &v25, v26, 2uLL);
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v12 = v20;
  sub_2621C8E70(&v35, v20, *(&v20 + 1), (*(&v20 + 1) - v20) >> 2);
  v38 = 2;
  sub_262217F3C((a1 + 40), &v31, v39);
  v13 = 0;
  while (1)
  {
    v14 = *(&v35 + v13);
    if (v14)
    {
      *(&v36 + v13) = v14;
      operator delete(v14);
    }

    v13 -= 32;
    if (v13 == -64)
    {
      if (v12)
      {
        operator delete(v12);
      }

      if (v11)
      {
        operator delete(v11);
      }

      *(a1 + 64) = xmmword_2623A7840;
      *(a1 + 80) = 1039348752;
      *(a1 + 112) = 0xBD11F167BCA30516;
      *(a1 + 152) = 1025477729;
      v27 = 0x4000000000000000;
      v23 = 0;
      v24 = 0;
      v22 = 0;
      sub_2621DC430(&v22, &v27, &v28, 2uLL);
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v15 = v22;
      sub_2621C8E70(&v31, v22, v23, (v23 - v22) >> 2);
      v34 = 1;
      v25 = 0x42C8000040000000;
      v21 = 0;
      v20 = 0uLL;
      sub_2621DC430(&v20, &v25, v26, 2uLL);
      v35 = 0;
      v36 = 0;
      v37 = 0;
      v16 = v20;
      sub_2621C8E70(&v35, v20, *(&v20 + 1), (*(&v20 + 1) - v20) >> 2);
      v38 = 2;
      sub_262217F3C((a1 + 160), &v31, v39);
      v17 = 0;
      while (1)
      {
        v18 = *(&v35 + v17);
        if (v18)
        {
          *(&v36 + v17) = v18;
          operator delete(v18);
        }

        v17 -= 32;
        if (v17 == -64)
        {
          if (v16)
          {
            operator delete(v16);
          }

          if (v15)
          {
            operator delete(v15);
          }

          *(a1 + 184) = 1036831949;
          *(a1 + 144) = 0x4270000041F00000;
          v30 = 0x3F80000000000000;
          v23 = 0;
          v24 = 0;
          v22 = 0;
          sub_2621DC430(&v22, &v30, &v31, 2uLL);
          v19 = 1050253722;
          v28 = 0;
          v29 = 0;
          v27 = 0;
          sub_2621DC430(&v27, &v19, &v20, 1uLL);
          v20 = 0uLL;
          v21 = 0;
          sub_2622180B8(&v20, &v27, &v30, 1uLL);
        }
      }
    }
  }
}

void sub_2622C7E68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char *__p, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void **a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void **a39)
{
  v42 = -144;
  v43 = v39;
  do
  {
    v43 = sub_262218330(v43) - 48;
    v42 += 48;
  }

  while (v42);
  *(v40 + 24) = &a11;
  sub_2621E1D40(&a30);
  v44 = *(v40 + 32);
  if (v44)
  {
    *(v40 + 40) = v44;
    operator delete(v44);
  }

  if (__p)
  {
    operator delete(__p);
  }

  __p = &a19;
  sub_2621E1D40(&__p);
  v45 = *(v40 + 64);
  if (v45)
  {
    *(v40 + 72) = v45;
    operator delete(v45);
  }

  v46 = *(v40 + 96);
  if (v46)
  {
    operator delete(v46);
  }

  *(v40 + 96) = &a23;
  sub_2621E1D40(&a39);
  v47 = *(v40 + 120);
  if (v47)
  {
    *(v40 + 128) = v47;
    operator delete(v47);
  }

  if (*v40)
  {
    operator delete(*v40);
  }

  _Unwind_Resume(a1);
}

void sub_2622C83B0(uint64_t a1, int a2)
{
  v39[10] = *MEMORY[0x277D85DE8];
  *a1 = 0;
  *(a1 + 8) = 0xFFFFFFFF00000000;
  *(a1 + 16) = 1065353216;
  *(a1 + 24) = 3;
  if (a2)
  {
    *(a1 + 32) = 1058811162;
    v27 = 0x3F80000000000000;
    v23 = 0;
    v24 = 0;
    v22 = 0;
    sub_2621DC430(&v22, &v27, &v28, 2uLL);
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v3 = v22;
    sub_2621C8E70(&v31, v22, v23, (v23 - v22) >> 2);
    v34 = 1;
    v25 = 0x42C800003F800000;
    v21 = 0;
    v20 = 0uLL;
    sub_2621DC430(&v20, &v25, v26, 2uLL);
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v4 = v20;
    sub_2621C8E70(&v35, v20, *(&v20 + 1), (*(&v20 + 1) - v20) >> 2);
    v38 = 2;
    sub_262217F3C((a1 + 40), &v31, v39);
    v5 = 0;
    while (1)
    {
      v6 = *(&v35 + v5);
      if (v6)
      {
        *(&v36 + v5) = v6;
        operator delete(v6);
      }

      v5 -= 32;
      if (v5 == -64)
      {
        if (v4)
        {
          operator delete(v4);
        }

        if (v3)
        {
          operator delete(v3);
        }

        *(a1 + 64) = xmmword_2623A7840;
        *(a1 + 80) = 1050374069;
        *(a1 + 112) = 0xBDCCCCCD3CC4E8F0;
        *(a1 + 152) = 1036276941;
        v27 = 0x4000000000000000;
        v23 = 0;
        v24 = 0;
        v22 = 0;
        sub_2621DC430(&v22, &v27, &v28, 2uLL);
        v31 = 0;
        v32 = 0;
        v33 = 0;
        v7 = v22;
        sub_2621C8E70(&v31, v22, v23, (v23 - v22) >> 2);
        v34 = 1;
        v25 = 0x42C8000040000000;
        v21 = 0;
        v20 = 0uLL;
        sub_2621DC430(&v20, &v25, v26, 2uLL);
        v35 = 0;
        v36 = 0;
        v37 = 0;
        v8 = v20;
        sub_2621C8E70(&v35, v20, *(&v20 + 1), (*(&v20 + 1) - v20) >> 2);
        v38 = 2;
        sub_262217F3C((a1 + 160), &v31, v39);
        v9 = 0;
        while (1)
        {
          v10 = *(&v35 + v9);
          if (v10)
          {
            *(&v36 + v9) = v10;
            operator delete(v10);
          }

          v9 -= 32;
          if (v9 == -64)
          {
            if (v8)
            {
              operator delete(v8);
            }

            if (v7)
            {
              operator delete(v7);
            }

            *(a1 + 184) = 1036831949;
            *(a1 + 144) = 0x4270000041F00000;
            v30 = 0x3F80000000000000;
            v23 = 0;
            v24 = 0;
            v22 = 0;
            sub_2621DC430(&v22, &v30, &v31, 2uLL);
            v19 = 1050253722;
            v28 = 0;
            v29 = 0;
            v27 = 0;
            sub_2621DC430(&v27, &v19, &v20, 1uLL);
            v20 = 0uLL;
            v21 = 0;
            sub_2622180B8(&v20, &v27, &v30, 1uLL);
          }
        }
      }
    }
  }

  *(a1 + 32) = 1047642390;
  v27 = 0x3F80000000000000;
  v23 = 0;
  v24 = 0;
  v22 = 0;
  sub_2621DC430(&v22, &v27, &v28, 2uLL);
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v11 = v22;
  sub_2621C8E70(&v31, v22, v23, (v23 - v22) >> 2);
  v34 = 1;
  v25 = 0x42C800003F800000;
  v21 = 0;
  v20 = 0uLL;
  sub_2621DC430(&v20, &v25, v26, 2uLL);
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v12 = v20;
  sub_2621C8E70(&v35, v20, *(&v20 + 1), (*(&v20 + 1) - v20) >> 2);
  v38 = 2;
  sub_262217F3C((a1 + 40), &v31, v39);
  v13 = 0;
  while (1)
  {
    v14 = *(&v35 + v13);
    if (v14)
    {
      *(&v36 + v13) = v14;
      operator delete(v14);
    }

    v13 -= 32;
    if (v13 == -64)
    {
      if (v12)
      {
        operator delete(v12);
      }

      if (v11)
      {
        operator delete(v11);
      }

      *(a1 + 64) = xmmword_2623A7840;
      *(a1 + 80) = 1049802648;
      *(a1 + 112) = 0xBD5CE8C1BCB998DDLL;
      *(a1 + 152) = 1035019953;
      v27 = 0x4000000000000000;
      v23 = 0;
      v24 = 0;
      v22 = 0;
      sub_2621DC430(&v22, &v27, &v28, 2uLL);
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v15 = v22;
      sub_2621C8E70(&v31, v22, v23, (v23 - v22) >> 2);
      v34 = 1;
      v25 = 0x42C8000040000000;
      v21 = 0;
      v20 = 0uLL;
      sub_2621DC430(&v20, &v25, v26, 2uLL);
      v35 = 0;
      v36 = 0;
      v37 = 0;
      v16 = v20;
      sub_2621C8E70(&v35, v20, *(&v20 + 1), (*(&v20 + 1) - v20) >> 2);
      v38 = 2;
      sub_262217F3C((a1 + 160), &v31, v39);
      v17 = 0;
      while (1)
      {
        v18 = *(&v35 + v17);
        if (v18)
        {
          *(&v36 + v17) = v18;
          operator delete(v18);
        }

        v17 -= 32;
        if (v17 == -64)
        {
          if (v16)
          {
            operator delete(v16);
          }

          if (v15)
          {
            operator delete(v15);
          }

          *(a1 + 184) = 1036831949;
          *(a1 + 144) = 0x4270000041F00000;
          v30 = 0x3F80000000000000;
          v23 = 0;
          v24 = 0;
          v22 = 0;
          sub_2621DC430(&v22, &v30, &v31, 2uLL);
          v19 = 1050253722;
          v28 = 0;
          v29 = 0;
          v27 = 0;
          sub_2621DC430(&v27, &v19, &v20, 1uLL);
          v20 = 0uLL;
          v21 = 0;
          sub_2622180B8(&v20, &v27, &v30, 1uLL);
        }
      }
    }
  }
}

void sub_2622C8F30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char *__p, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void **a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void **a39)
{
  v42 = -144;
  v43 = v39;
  do
  {
    v43 = sub_262218330(v43) - 48;
    v42 += 48;
  }

  while (v42);
  *(v40 + 24) = &a11;
  sub_2621E1D40(&a30);
  v44 = *(v40 + 32);
  if (v44)
  {
    *(v40 + 40) = v44;
    operator delete(v44);
  }

  if (__p)
  {
    operator delete(__p);
  }

  __p = &a19;
  sub_2621E1D40(&__p);
  v45 = *(v40 + 64);
  if (v45)
  {
    *(v40 + 72) = v45;
    operator delete(v45);
  }

  v46 = *(v40 + 96);
  if (v46)
  {
    operator delete(v46);
  }

  *(v40 + 96) = &a23;
  sub_2621E1D40(&a39);
  v47 = *(v40 + 120);
  if (v47)
  {
    *(v40 + 128) = v47;
    operator delete(v47);
  }

  if (*v40)
  {
    operator delete(*v40);
  }

  _Unwind_Resume(a1);
}

void sub_2622C9478(void *a1)
{
  if (a1)
  {
    sub_2622C9478(*a1);
    sub_2622C9478(a1[1]);
    sub_2622C9508((a1 + 4));

    operator delete(a1);
  }
}

uint64_t sub_2622C94CC(uint64_t a1)
{
  sub_2622C9478(*(a1 + 40));
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_2622C9508(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v2;

    operator delete(v2);
  }
}

void sub_2622C9560(uint64_t a1, int a2)
{
  v16[12] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v15 = 0x4000000000000000;
    v5 = 0;
    v6 = 0;
    v4 = 0;
    sub_2621DC430(&v4, &v15, v16, 2uLL);
    v8 = 0x3F0000003ECCCCCDLL;
    v10 = 0;
    v11 = 0;
    v9 = 0;
    sub_2621DC430(&v9, &v8, &v9, 2uLL);
    v7 = 0x3ECCCCCD3F59999ALL;
    v13 = 0;
    v14 = 0;
    v12 = 0;
    sub_2621DC430(&v12, &v7, &v8, 2uLL);
    v2 = 0uLL;
    v3 = 0;
    sub_2622180B8(&v2, &v9, &v15, 2uLL);
  }

  v15 = 0x4000000000000000;
  v5 = 0;
  v6 = 0;
  v4 = 0;
  sub_2621DC430(&v4, &v15, v16, 2uLL);
  v8 = 0x3F0000003ECCCCCDLL;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  sub_2621DC430(&v9, &v8, &v9, 2uLL);
  v7 = 0x3ECCCCCD3F59999ALL;
  v13 = 0;
  v14 = 0;
  v12 = 0;
  sub_2621DC430(&v12, &v7, &v8, 2uLL);
  v2 = 0uLL;
  v3 = 0;
  sub_2622180B8(&v2, &v9, &v15, 2uLL);
}

void sub_2622C9BBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  v39 = -96;
  v40 = v36;
  do
  {
    v40 = sub_262218330(v40) - 48;
    v39 += 48;
  }

  while (v39);
  a21 = &a9;
  sub_2621E1D40(&a21);
  v41 = &a36;
  v42 = -96;
  while (1)
  {
    v43 = *(v41 - 1);
    if (v43)
    {
      *v41 = v43;
      operator delete(v43);
    }

    v41 -= 3;
    v42 += 24;
    if (!v42)
    {
      if (__p)
      {
        operator delete(__p);
      }

      a26 = &a15;
      sub_2621E1D40(&a26);
      v44 = (v37 - 192);
      v45 = -48;
      while (1)
      {
        v46 = *(v44 - 1);
        if (v46)
        {
          *v44 = v46;
          operator delete(v46);
        }

        v44 -= 3;
        v45 += 24;
        if (!v45)
        {
          if (a18)
          {
            operator delete(a18);
          }

          _Unwind_Resume(a1);
        }
      }
    }
  }
}

uint64_t sub_2622C9EC4(uint64_t result)
{
  v1 = *(result + 88);
  if (v1 != (result + 96))
  {
    do
    {
      v2 = v1[7];
      v3 = v1[8];
      while (v2 != v3)
      {
        v4 = *v2;
        v2 += 3;
        v5 = v4[1];
        *v4 = *(result + 112) + *v4;
        v4[1] = *(result + 116) + v5;
      }

      v6 = v1[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v1[2];
          v8 = *v7 == v1;
          v1 = v7;
        }

        while (!v8);
      }

      v1 = v7;
    }

    while (v7 != (result + 96));
  }

  return result;
}

void sub_2622C9F40(uint64_t a1, int a2)
{
  v16[12] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v15 = 0x3F80000000000000;
    v5 = 0;
    v6 = 0;
    v4 = 0;
    sub_2621DC430(&v4, &v15, v16, 2uLL);
    v8 = 0x3F0000003F000000;
    v10 = 0;
    v11 = 0;
    v9 = 0;
    sub_2621DC430(&v9, &v8, &v9, 2uLL);
    v7 = 0x3ECCCCCD3F733333;
    v13 = 0;
    v14 = 0;
    v12 = 0;
    sub_2621DC430(&v12, &v7, &v8, 2uLL);
    v2 = 0uLL;
    v3 = 0;
    sub_2622180B8(&v2, &v9, &v15, 2uLL);
  }

  v15 = 0x3F80000000000000;
  v5 = 0;
  v6 = 0;
  v4 = 0;
  sub_2621DC430(&v4, &v15, v16, 2uLL);
  v8 = 0x3F0000003F000000;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  sub_2621DC430(&v9, &v8, &v9, 2uLL);
  v7 = 0x3ECCCCCD3F733333;
  v13 = 0;
  v14 = 0;
  v12 = 0;
  sub_2621DC430(&v12, &v7, &v8, 2uLL);
  v2 = 0uLL;
  v3 = 0;
  sub_2622180B8(&v2, &v9, &v15, 2uLL);
}

void sub_2622CA594(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  v39 = -96;
  v40 = v36;
  do
  {
    v40 = sub_262218330(v40) - 48;
    v39 += 48;
  }

  while (v39);
  a21 = &a9;
  sub_2621E1D40(&a21);
  v41 = &a36;
  v42 = -96;
  while (1)
  {
    v43 = *(v41 - 1);
    if (v43)
    {
      *v41 = v43;
      operator delete(v43);
    }

    v41 -= 3;
    v42 += 24;
    if (!v42)
    {
      if (__p)
      {
        operator delete(__p);
      }

      a26 = &a15;
      sub_2621E1D40(&a26);
      v44 = (v37 - 192);
      v45 = -48;
      while (1)
      {
        v46 = *(v44 - 1);
        if (v46)
        {
          *v44 = v46;
          operator delete(v46);
        }

        v44 -= 3;
        v45 += 24;
        if (!v45)
        {
          if (a18)
          {
            operator delete(a18);
          }

          _Unwind_Resume(a1);
        }
      }
    }
  }
}

uint64_t sub_2622CA89C(uint64_t a1)
{
  sub_2622C9478(*(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_2622C9478(v2);
  }

  return a1;
}

uint64_t sub_2622CA8EC(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_2622C9508(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_2622CA938(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_26226C934(a2);
  }

  sub_2621CBEB0();
}

char *sub_2622CA988(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
{
  v4 = __dst;
  v11 = __dst;
  v12 = __dst;
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
        sub_2621CC810(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        *(v4 + 2) = *(v6 + 2);
        *v4 = v7;
      }

      v6 = (v6 + 24);
      v4 += 24;
      v12 = v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_2622CAA48(v9);
  return v4;
}

uint64_t sub_2622CAA48(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 1);
      v3 -= 3;
      if (v5 < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

id sub_2622CAAA8(uint64_t *a1, const char *a2, float a3, double a4)
{
  v5 = a2;
  v7 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], a2, 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
  v9 = *a1;
  v10 = a1[1];
  if (*a1 != v10)
  {
    *v8.i32 = a3 * 6.0;
    v11 = vdupq_lane_s32(v8, 0);
    *v12.i64 = a4;
    *&v12.i64[1] = a4;
    v29 = v11;
    v31 = v12;
    __asm { FMOV            V0.4S, #6.0 }

    v28 = _Q0;
    do
    {
      v37 = *v9;
      v36 = *(v9 + 8);
      v18 = *(v9 + 16);
      v19 = objc_alloc_init(RS3DSurface);
      v21 = v19;
      v22.i64[0] = v37;
      v22.i64[1] = v36;
      v23 = vsubq_f32(vdivq_f32(vmulq_f32(v22, v28), v29), v31);
      v24 = vzip2q_s64(v23, 0);
      v23.i32[2] = 0;
      v25 = v23;
      v25.i32[3] = v35;
      v26 = v24;
      v26.i32[3] = v34;
      v24.i32[3] = v33;
      v23.i32[3] = v32;
      src[0] = v25;
      src[1] = v26;
      src[2] = v24;
      src[3] = v23;
      if (v19)
      {
        objc_copyStruct(&v19[1], src, 64, 1, 0);
        *(v21 + 108) = v18;
        *(v21 + 104) = v5;
      }

      objc_msgSend_addObject_(v7, v20, v21, *&v28, *&v29);

      v9 += 24;
    }

    while (v9 != v10);
  }

  return v7;
}

void sub_2622CAC48(uint64_t a1, void *a2, float a3)
{
  v30 = a2;
  objc_msgSend_quad(v30, v5, v6);
  v29 = v7;
  objc_msgSend_quad(v30, v8, v9);
  v28 = v10;
  objc_msgSend_quad(v30, v11, v12);
  v13 = 0;
  v14 = vsubq_f32(v29, v28);
  v15 = vmulq_f32(v14, v14);
  *&v16 = *&v15.i32[2] + vaddv_f32(*v15.i8);
  *v15.i8 = vrsqrte_f32(v16);
  *v15.i8 = vmul_f32(*v15.i8, vrsqrts_f32(v16, vmul_f32(*v15.i8, *v15.i8)));
  v17 = vdupq_n_s32(0x3F4CCCCDu);
  *v15.i8 = vmul_f32(*v15.i8, vrsqrts_f32(v16, vmul_f32(*v15.i8, *v15.i8)));
  v18 = vmulq_n_f32(v14, *v15.i32);
  *v15.i32 = -*&v18.i32[1];
  v19 = vzip1q_s32(v15, v18);
  v19.i32[2] = v18.i32[2];
  v21 = v20;
  v22 = vmlsq_f32(v28, v17, v19);
  v23 = vmlaq_f32(v28, v17, v19);
  v24 = vmlaq_f32(v29, v17, v19);
  v25 = vmlsq_f32(v29, v17, v19);
  v26 = (a1 + 8);
  do
  {
    if (v13 == 4)
    {
      v21 = a3;
    }

    if ((v13 & 3u) > 1)
    {
      v27 = v23;
      if ((v13 & 3) != 2)
      {
        v27 = v22;
      }
    }

    else
    {
      v27 = v25;
      if ((v13 & 3) != 0)
      {
        v27 = v24;
      }
    }

    *(v26 - 2) = v27;
    *v26 = v21;
    v26 += 4;
    ++v13;
  }

  while (v13 != 8);
}

void sub_2622CAD9C(float32x4_t *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v11 = a2;
  v76 = a6;
  a3[1] = *a3;
  *(a4 + 8) = *a4;
  *(a5 + 8) = *a5;
  a6[1] = *a6;
  v12 = a1[1];
  v81 = v12;
  v83 = a1[3];
  v77 = *a1;
  v79 = a1[4];
  v74 = a1[6];
  v75 = v11;
  v15 = objc_msgSend_count(v11, v13, v14);
  v18 = objc_msgSend_points(v75, v16, v17);
  v21 = objc_msgSend_semanticLabels(v75, v19, v20);
  v24 = objc_msgSend_semanticVotes(v75, v22, v23);
  v27 = objc_msgSend_colors(v75, v25, v26);
  if (v15)
  {
    v28 = v27;
    v29 = vsubq_f32(v77, v83);
    v30 = vmulq_f32(v29, v29);
    v30.f32[0] = v30.f32[2] + vaddv_f32(*v30.f32);
    v31 = vrsqrte_f32(v30.u32[0]);
    v32 = vmul_f32(v31, vrsqrts_f32(v30.u32[0], vmul_f32(v31, v31)));
    v84 = vmulq_n_f32(v29, vmul_f32(v32, vrsqrts_f32(v30.u32[0], vmul_f32(v32, v32))).f32[0]);
    v33 = vsubq_f32(v77, v81);
    v34 = vmulq_f32(v33, v33);
    v34.f32[0] = v34.f32[2] + vaddv_f32(*v34.f32);
    v35 = vrsqrte_f32(v34.u32[0]);
    v36 = vmul_f32(v35, vrsqrts_f32(v34.u32[0], vmul_f32(v35, v35)));
    v82 = vmulq_n_f32(v33, vmul_f32(v36, vrsqrts_f32(v34.u32[0], vmul_f32(v36, v36))).f32[0]);
    v37 = vsubq_f32(v77, v79);
    v38 = vmulq_f32(v37, v37);
    v38.f32[0] = v38.f32[2] + vaddv_f32(*v38.f32);
    v39 = vrsqrte_f32(v38.u32[0]);
    v40 = vmul_f32(v39, vrsqrts_f32(v38.u32[0], vmul_f32(v39, v39)));
    v41 = sqrtf(v30.f32[0]) * 0.5;
    v42 = sqrtf(v34.f32[0]) * 0.5;
    v43 = sqrtf(v38.f32[0]) * 0.5;
    v30.i64[0] = 0x3F0000003F000000;
    v30.i64[1] = 0x3F0000003F000000;
    v78 = vmulq_f32(vaddq_f32(v77, v74), v30);
    v80 = vmulq_n_f32(v37, vmul_f32(v40, vrsqrts_f32(v38.u32[0], vmul_f32(v40, v40))).f32[0]);
    do
    {
      v44 = vsubq_f32(*v18, v78);
      v45 = vmulq_f32(v84, v44);
      v46 = vmulq_f32(v82, v44);
      v47 = fabsf(v46.f32[2] + vaddv_f32(*v46.f32));
      v48 = vmulq_f32(v80, v44);
      v49 = fabsf(v48.f32[2] + vaddv_f32(*v48.f32));
      if (fabsf(v45.f32[2] + vaddv_f32(*v45.f32)) <= v41 && v47 <= v42 && v49 <= v43)
      {
        sub_2621D9F60(a3, v18);
        v53 = *(a4 + 8);
        v52 = *(a4 + 16);
        if (v53 >= v52)
        {
          v55 = (v53 - *a4) >> 2;
          if ((v55 + 1) >> 62)
          {
            sub_2621CBEB0();
          }

          v56 = v52 - *a4;
          v57 = v56 >> 1;
          if (v56 >> 1 <= (v55 + 1))
          {
            v57 = v55 + 1;
          }

          if (v56 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v58 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v58 = v57;
          }

          if (v58)
          {
            sub_2621C7F54(v58);
          }

          v59 = (4 * v55);
          *v59 = *v21;
          v54 = 4 * v55 + 4;
          v60 = *(a4 + 8) - *a4;
          v61 = v59 - v60;
          memcpy(v59 - v60, *a4, v60);
          v62 = *a4;
          *a4 = v61;
          *(a4 + 8) = v54;
          *(a4 + 16) = 0;
          if (v62)
          {
            operator delete(v62);
          }
        }

        else
        {
          *v53 = *v21;
          v54 = (v53 + 1);
        }

        *(a4 + 8) = v54;
        v64 = *(a5 + 8);
        v63 = *(a5 + 16);
        if (v64 >= v63)
        {
          v66 = (v64 - *a5) >> 3;
          if ((v66 + 1) >> 61)
          {
            sub_2621CBEB0();
          }

          v67 = v63 - *a5;
          v68 = v67 >> 2;
          if (v67 >> 2 <= (v66 + 1))
          {
            v68 = v66 + 1;
          }

          if (v67 >= 0x7FFFFFFFFFFFFFF8)
          {
            v69 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v69 = v68;
          }

          if (v69)
          {
            sub_2621CBEC8(v69);
          }

          v70 = (8 * v66);
          *v70 = *v24;
          v65 = 8 * v66 + 8;
          v71 = *(a5 + 8) - *a5;
          v72 = v70 - v71;
          memcpy(v70 - v71, *a5, v71);
          v73 = *a5;
          *a5 = v72;
          *(a5 + 8) = v65;
          *(a5 + 16) = 0;
          if (v73)
          {
            operator delete(v73);
          }
        }

        else
        {
          *v64 = *v24;
          v65 = (v64 + 1);
        }

        *(a5 + 8) = v65;
        sub_2621D9F60(v76, v28);
      }

      ++v28;
      ++v24;
      ++v21;
      ++v18;
      --v15;
    }

    while (v15);
  }
}

__int32 *sub_2622CB1A4(__int32 *result, uint16x4_t *a2, uint64_t a3, double a4, double a5, uint8x8_t a6)
{
  v24 = *MEMORY[0x277D85DE8];
  *(a3 + 96) = 0;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  v6 = *a2;
  v7 = vmovl_u16(*a2);
  v7.i64[0] = vaddw_u16(vextq_s8(v7, v7, 8uLL), *a2).u64[0];
  v22 = v7.i16[2];
  v21 = v7.i16[0];
  if (v7.i16[0] + v7.i16[2])
  {
    v8 = 1.0 / (v21 + v22);
    if (v6.i16[3])
    {
      for (i = 0; i != 33; ++i)
      {
        *(a3 + 4 * byte_2623A84C0[i]) = ((v8 * v6.u16[3]) / 30.0) + *(a3 + 4 * byte_2623A84C0[i]);
      }

      v6 = *a2;
    }

    for (j = 0; j != 3; ++j)
    {
      v20 = v6;
      if (*(&v20 & 0xFFFFFFFFFFFFFFF9 | (2 * (j & 3))))
      {
        a6.i32[0] = *result;
        a6 = vmovl_u8(a6).u64[0];
        v19 = a6;
        v11 = *(&v19 & 0xFFFFFFFFFFFFFFF9 | (2 * (j & 3)));
        if (v11 <= 0x20u)
        {
          v12 = byte_2623A84C0[v11];
          v23[j] = v12;
          *(a3 + 4 * v12) = 0;
          v6 = *a2;
        }
      }
    }

    v13 = 0;
    a6.i32[0] = *result;
    v14 = vmovl_u8(a6).u64[0];
    do
    {
      v18 = v6;
      v15 = *(&v18 & 0xFFFFFFFFFFFFFFF9 | (2 * (v13 & 3)));
      v17 = v14;
      if (v15 && *(&v17 & 0xFFFFFFFFFFFFFFF9 | (2 * (v13 & 3))) <= 0x20u)
      {
        *(a3 + 4 * v23[v13]) = *(a3 + 4 * v23[v13]) + (v15 * v8);
        v6 = *a2;
        v14.i32[0] = *result;
        v14 = vmovl_u8(v14).u64[0];
      }

      ++v13;
    }

    while (v13 != 3);
  }

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2622CB354(void *a1, __n128 a2, __n128 a3)
{
  v18 = a2;
  v19 = a3;
  v20 = a1;
  for (i = 0; objc_msgSend_count(v20, v3, v4, *&v18, *&v19) > i; ++i)
  {
    v7 = objc_msgSend_objectAtIndexedSubscript_(v20, v6, i);
    objc_msgSend_quad(v7, v8, v9);
    *&v11 = v10;
    *(&v11 + 1) = v18.n128_u32[0];
    *&v13 = v12;
    *(&v13 + 1) = v18.n128_u32[0];
    *&v15 = v14;
    *(&v15 + 1) = v19.n128_u32[0];
    *&v17 = v16;
    *(&v17 + 1) = v19.n128_u32[0];
    src[0] = v11;
    src[1] = v13;
    src[2] = v15;
    src[3] = v17;
    if (v7)
    {
      objc_copyStruct((v7 + 272), src, 64, 1, 0);
    }
  }
}

int8x16_t sub_2622CB45C(uint64_t a1, uint64_t a2, uint64_t a3, int8x16_t result)
{
  v4 = a1 + 16 * a2;
  if (a2 == a3)
  {
    result.i32[0] = *v4;
    goto LABEL_63;
  }

  v5 = a1 + 16 * a3;
  v6 = v4 + 16;
  if (v4 + 16 == v5)
  {
    LODWORD(v11) = HIDWORD(*v4);
    result = *v4;
    goto LABEL_41;
  }

  v7 = *(v4 + 16);
  v8 = vmovn_s32(vcgtq_f32(*v4, v7)).u8[0];
  if (v8)
  {
    v9 = -1;
  }

  else
  {
    v9 = 0;
  }

  result = vbslq_s8(vdupq_n_s32(v9), v7, *v4);
  v10 = v4 + 32;
  LODWORD(v11) = HIDWORD(*v4);
  if (v4 + 32 != v5)
  {
    if (v8)
    {
      v12 = (a1 + 16 * a2);
    }

    else
    {
      v12 = (v4 + 16);
    }

    if (v8)
    {
      v13 = (v4 + 16);
    }

    else
    {
      v13 = (a1 + 16 * a2);
    }

    v14 = 16 * a2;
    v15 = 16 * a3;
    v16 = a1;
    v17 = (a1 + 16 * a2);
    while (1)
    {
      v18 = v17;
      v17 = v10;
      v19 = (v16 + v14);
      v20 = (v16 + v14 + 32);
      if (16 * a2 + 48 == v15)
      {
        result = *v20;
        if (COERCE_FLOAT(*v20) < v13->f32[0])
        {
          v13 = (v16 + v14 + 32);
          goto LABEL_39;
        }

        if (*result.i32 < *v12)
        {
LABEL_39:
          v20 = v12;
        }

LABEL_40:
        result.i32[0] = v13->i32[0];
        v29 = *v20;
        break;
      }

      v22 = v19[3];
      v21 = v19 + 3;
      v23 = v22;
      v24 = *v20;
      if (vmovn_s32(vcgtq_f32(*v20, v22)).u8[0])
      {
        v25 = vmovn_s32(vcgtq_f32(*v13, v23)).u8[0];
        if (v25)
        {
          v26 = -1;
        }

        else
        {
          v26 = 0;
        }

        result = vbslq_s8(vdupq_n_s32(v26), v23, *v13);
        if (v25)
        {
          v13 = v21;
        }

        if (v24.f32[0] >= *v12)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v27 = vmovn_s32(vcgtq_f32(result, v24)).u8[0];
        if (v27)
        {
          v28 = -1;
        }

        else
        {
          v28 = 0;
        }

        result = vbslq_s8(vdupq_n_s32(v28), v24, result);
        if (v27)
        {
          v13 = (v16 + v14 + 32);
        }

        if (v23.f32[0] >= *v12)
        {
          v20 = v18 + 3;
          goto LABEL_32;
        }
      }

      v20 = v12;
LABEL_32:
      v10 = &v17[2];
      v16 += 32;
      v15 -= 32;
      v12 = v20;
      if (16 * a2 + 32 == v15)
      {
        goto LABEL_40;
      }
    }
  }

LABEL_41:
  if (v6 != v5)
  {
    v30 = *(v4 + 20);
    if (v30 >= v11)
    {
      v31 = a1 + 16 * a2;
    }

    else
    {
      v31 = v4 + 16;
    }

    if (v30 < v11)
    {
      v6 = a1 + 16 * a2;
    }

    v32 = v4 + 32;
    if (v4 + 32 != v5)
    {
      v33 = 16 * a2;
      v34 = 16 * a3;
      v35 = 16 * a2 + 32;
      v36 = 16 * a2 + 48;
      while (1)
      {
        v37 = v32;
        v38 = a1 + v33;
        if (v36 == v34)
        {
          break;
        }

        v39 = v4 + 48;
        v40 = v38 + 48;
        v41 = *(v38 + 52);
        v42 = *(v38 + 36);
        v43 = *(v31 + 4);
        v44 = *(v6 + 4);
        if (v42 >= v43)
        {
          v45 = v31;
        }

        else
        {
          v45 = a1 + v33 + 32;
        }

        if (v41 < v44)
        {
          v39 = v6;
        }

        if (v41 < v43)
        {
          v31 = v40;
        }

        if (v42 >= v44)
        {
          v6 = a1 + v33 + 32;
        }

        if (v41 >= v42)
        {
          v31 = v45;
          v6 = v39;
        }

        v32 += 32;
        a1 += 32;
        v34 -= 32;
        v4 = v37;
        if (v35 == v34)
        {
          goto LABEL_68;
        }
      }

      v46 = *(v38 + 36);
      if (v46 < *(v31 + 4))
      {
        v4 = a1 + v33 + 32;
        goto LABEL_69;
      }

      if (v46 >= *(v6 + 4))
      {
        v6 = a1 + v33 + 32;
      }
    }

LABEL_68:
    v4 = v31;
    goto LABEL_69;
  }

LABEL_63:
  v6 = a1 + 16 * a2;
LABEL_69:
  result.i32[1] = *(v4 + 4);
  result.i32[3] = *(v6 + 4);
  return result;
}

uint64_t sub_2622CB6CC(uint64_t a1, unint64_t *a2)
{
  v24[1] = *MEMORY[0x277D85DE8];
  if (*(a1 + 137) == 1)
  {
    v4 = MEMORY[0x277D82670];
    v5 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v6 = sub_2621D552C(v5, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
    v7 = sub_2621D552C(v6, " ", 1);
    v8 = MEMORY[0x266727260](v7, 1125);
    v9 = sub_2621D552C(v8, " ", 1);
    v10 = sub_2621D552C(v9, "at", 2);
    std::ios_base::getloc((v10 + *(*v10 - 24)));
    v11 = std::locale::use_facet(&v23, MEMORY[0x277D82680]);
    (v11->__vftable[2].~facet_0)(v11, 10);
    std::locale::~locale(&v23);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D6874("err", "empty tensor");
    std::ios_base::getloc((v4 + *(*v4 - 24)));
    v12 = std::locale::use_facet(&v23, MEMORY[0x277D82680]);
    (v12->__vftable[2].~facet_0)(v12, 10);
    std::locale::~locale(&v23);
    std::ostream::put();
    std::ostream::flush();
  }

  v13 = *a2;
  v24[0] = v13;
  v22 = 0;
  if (v13 >= *(a1 + 8))
  {
    v14 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v15 = sub_2621D552C(v14, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
    sub_2621D552C(v15, " ", 1);
    v16 = MEMORY[0x277D82670];
    v17 = MEMORY[0x266727260](MEMORY[0x277D82670], 1133);
    sub_2621D552C(v17, " ", 1);
    sub_2621D552C(v17, "at", 2);
    std::ios_base::getloc((v17 + *(*v17 - 24)));
    v18 = std::locale::use_facet(&v23, MEMORY[0x277D82680]);
    (v18->__vftable[2].~facet_0)(v18, 10);
    std::locale::~locale(&v23);
    std::ostream::put();
    std::ostream::flush();
    sub_2621DA198("err", "shape", &v22, "=", v24, "should smaller then", (a1 + 8));
    std::ios_base::getloc((v16 + *(*v16 - 24)));
    v19 = std::locale::use_facet(&v23, MEMORY[0x277D82680]);
    (v19->__vftable[2].~facet_0)(v19, 10);
    std::locale::~locale(&v23);
    std::ostream::put();
    std::ostream::flush();
  }

  v20 = *MEMORY[0x277D85DE8];
  return *(a1 + 144) + 4 * *(a1 + 56) * v13;
}

void sub_2622CBAD8(_Unwind_Exception *exception_object)
{
  *v1 = &unk_2874EF6A8;
  v3 = v1[16];
  if (v3)
  {
    sub_2621D1B78(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2622CBB0C(uint64_t a1, uint64_t a2, float32x2_t *a3, void *a4)
{
  v8 = (a4[1] - *a4) >> 3;
  LODWORD(v48[0]) = 0;
  sub_2621CD1D8(&__p, v8);
  v9 = *a4;
  v10 = __p;
  v11 = a4[1] - *a4;
  v12 = v11 >> 3;
  if (v11)
  {
    v13 = 0;
    do
    {
      v14 = v9[v13];
      if (v14.f32[0] >= 0.0)
      {
        v10[v13] = sub_2621DC76C(v14, *a3, a3[1], 0.00001);
      }

      ++v13;
    }

    while (v12 > v13);
  }

  if (v12 - 1 >= 2)
  {
    LODWORD(v15) = -1;
    v16 = -3.4028e38;
    v17 = 1;
    do
    {
      v18 = &v10[v17];
      v19 = v18 - 1;
      v20 = v18 + 2;
      v21 = *(v18 - 1);
      v22 = v18;
      do
      {
        v23 = *v22++;
        v24 = v23;
        if (v21 < v23)
        {
          v21 = v24;
          v19 = v18;
        }

        v18 = v22;
      }

      while (v22 != v20);
      v25 = v19 - v10;
      v26 = (v25 << 30) >> 30;
      v27 = *(v10 + v26);
      v28 = v25 >> 2;
      if (v27 <= v16)
      {
        v15 = v15;
      }

      else
      {
        v15 = v28;
      }

      if (v27 > v16)
      {
        v16 = *(v10 + v26);
      }

      ++v17;
    }

    while (v17 != v12 - 1);
    v29 = v15 << 32;
    v30 = LODWORD(v16);
    goto LABEL_21;
  }

  if (v10)
  {
    v29 = 0xFFFFFFFF00000000;
    v30 = 4286578687;
LABEL_21:
    v52 = v10;
    operator delete(v10);
    v31 = v29 | v30;
    goto LABEL_22;
  }

  v31 = -8388609;
LABEL_22:
  if (*&v31 >= *(a1 + 12))
  {
    v32 = HIDWORD(v31);
    v33 = v31 >> 32;
    v34 = v33 - 1;
    v35 = *a4;
    v36 = *(*a4 + 8 * v33);
    v37 = vabds_f32(*&v36, COERCE_FLOAT(*(*a4 + 8 * (v33 - 1))));
    v38 = v33 + 1;
    *&v36 = vabds_f32(*&v36, COERCE_FLOAT(*(*a4 + 8 * v38)));
    v39 = v37 < *&v36;
    if (v37 < *&v36)
    {
      v34 = v32;
    }

    v40 = &v35[v34];
    v42 = *v40;
    v41 = v40 + 1;
    v43 = v42;
    if (v39)
    {
      v44 = v38;
    }

    else
    {
      v44 = v32;
    }

    v45 = a3[1];
    v50[0] = *a3;
    v50[1] = v43;
    v49[0] = v35[v44];
    v49[1] = v45;
    __p = 0;
    v52 = 0;
    v53 = 0;
    memset(v48, 0, sizeof(v48));
    if (v41 != v35)
    {
      do
      {
        sub_2621CBA84(&__p, v35++);
      }

      while (v35 != v41);
      v35 = *a4;
    }

    v46 = &v35[v44];
    v47 = a4[1];
    while (v46 != v47)
    {
      sub_2621CBA84(v48, v46++);
    }

    sub_2622CBB0C(a1, a2, v50, &__p);
    sub_2622CBB0C(a1, a2, v49, v48);
    if (v48[0])
    {
      operator delete(v48[0]);
    }

    if (__p)
    {
      operator delete(__p);
    }
  }

  else
  {

    sub_2621DE070(a2, a3);
  }
}

void sub_2622CBDA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2622CBDD0(uint64_t a1, double *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  v7 = ((v5 - v6) << 6) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = *(a1 + 40) + *(a1 + 32);
  if (v7 == v8)
  {
    sub_2622CBE5C(a1);
    v6 = *(a1 + 8);
    v8 = *(a1 + 40) + *(a1 + 32);
  }

  result = *a2;
  *(*(v6 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  ++*(a1 + 40);
  return result;
}

void *sub_2622CBE5C(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v6 = a1[3];
    v7 = v6 - *a1;
    if (a1[2] - a1[1] < v7)
    {
      operator new();
    }

    v8 = v7 >> 2;
    if (v6 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    sub_2622317F8(v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  v10 = *v4;
  a1[1] = v4 + 1;
  return sub_262231BA4(a1, &v10);
}

void sub_2622CC2E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  operator delete(v11);
  if (a11)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

void sub_2622CC310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2621D1AA0(&v17, a2);
  v14 = v18;
  v15 = v19;
  v16 = v20;
  v22 = 0u;
  v23 = 0u;
  *&v21[0].__locale_ = 0u;
  sub_2621D1AA0(&v24, a3);
  *&v21[0].__locale_ = v25;
  v22 = v26;
  v23 = v27;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = v14;
  v32 = v15;
  v33 = v16;
  sub_2621D1AA0(v34, &v17);
  v35[1] = v22;
  v35[2] = v23;
  v35[0] = *&v21[0].__locale_;
  sub_2621D1AA0(v36, &v24);
  v4 = 0;
  v5 = 1;
  do
  {
    v6 = *(&v31 + v4);
    v7 = *(v35 + v4);
    if ((v5 & 1) == 0)
    {
      break;
    }

    v5 = 0;
    v4 = 1;
  }

  while (v6 == v7);
  if (v6 != v7)
  {
    v8 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v9 = sub_2621D552C(v8, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/function/../expression/exp_element_binary.hpp", 127);
    sub_2621D552C(v9, " ", 1);
    v10 = MEMORY[0x277D82670];
    v11 = MEMORY[0x266727260](MEMORY[0x277D82670], 64);
    sub_2621D552C(v11, " ", 1);
    sub_2621D552C(v11, "TensorBinaryExp", 15);
    std::ios_base::getloc((v11 + *(*v11 - 24)));
    v12 = std::locale::use_facet(v48, MEMORY[0x277D82680]);
    (v12->__vftable[2].~facet_0)(v12, 10);
    std::locale::~locale(v48);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D6B98("err", "Binary Exp shape should equal");
    std::ios_base::getloc((v10 + *(*v10 - 24)));
    v13 = std::locale::use_facet(v48, MEMORY[0x277D82680]);
    (v13->__vftable[2].~facet_0)(v13, 10);
    std::locale::~locale(v48);
    std::ostream::put();
    std::ostream::flush();
  }

  v28 = v31;
  v29 = v32;
  v30 = v33;
  v47 = 0;
  v42 = 0u;
  v43 = 0u;
  v37 = v31;
  v39 = v33;
  v38 = v32;
  v36[20] = &unk_2874EEB10;
  v40 = *(&v31 + 1);
  v41 = 1;
  v44 = v31 * *(&v31 + 1);
  v46 = 0;
  v45 = 0;
  sub_2621D7174();
}

void sub_2622CD5E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, std::__shared_weak_count *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, std::locale a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a69)
  {
    sub_2621D1B78(a69);
  }

  STACK[0x290] = &unk_2874EEB10;
  if (STACK[0x310])
  {
    sub_2621D1B78(STACK[0x310]);
  }

  if (a43)
  {
    sub_2621D1B78(a43);
  }

  sub_2622837EC(&STACK[0x490]);
  *v69 = &unk_2874EEB10;
  v71 = v69[16];
  if (v71)
  {
    sub_2621D1B78(v71);
  }

  STACK[0x3F8] = a9;
  if (STACK[0x478])
  {
    sub_2621D1B78(STACK[0x478]);
  }

  _Unwind_Resume(a1);
}

void *sub_2622CD800(void *a1)
{
  a1[37] = &unk_2874EEB10;
  v2 = a1[53];
  if (v2)
  {
    sub_2621D1B78(v2);
  }

  a1[12] = &unk_2874EEB10;
  v3 = a1[28];
  if (v3)
  {
    sub_2621D1B78(v3);
  }

  return a1;
}

uint64_t sub_2622CD87C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = 0;
  v164 = *MEMORY[0x277D85DE8];
  v5 = (result + 8);
  v6 = 1;
  do
  {
    v7 = *(v5 + v4);
    v8 = *(a2 + 8 * v4);
    if ((v6 & 1) == 0)
    {
      break;
    }

    v6 = 0;
    v4 = 1;
  }

  while (v7 == v8);
  v9 = *(a2 + 232);
  if (v7 == v8)
  {
    if (*(a2 + 232))
    {
      v150 = 0uLL;
      v151 = 0uLL;
      v149 = 0uLL;
      v10 = *(result + 104);
      v11 = *(result + 144);
      if (*(result + 136))
      {
        if (v10)
        {
          v12 = *(a2 + 240);
          do
          {
            v13 = *v12++;
            *v11++ = *(a2 + 352) * (v13 / *(a2 + 296));
            --v10;
          }

          while (v10);
        }
      }

      else if (v10)
      {
        v82 = 0;
        v83 = *(result + 56);
        v84 = *(result + 64);
        v85 = *(a2 + 240);
        do
        {
          v86 = 0;
          v11[v84 * *(&v149 + 1) + v83 * v149] = *(a2 + 352) * (*(v85 + 4 * v82) / *(a2 + 296));
          do
          {
            v87 = *(&v149 + v86 + 8) + 1;
            *(&v149 + v86 + 8) = v87;
            result = *(v3 + 16 + v86);
            if (v87 != result)
            {
              break;
            }

            *(&v149 + v86 + 8) = 0;
            v86 -= 8;
          }

          while (v86 != -16);
          ++v82;
        }

        while (v82 != v10);
      }
    }

    else
    {
      v150 = 0uLL;
      v151 = 0uLL;
      v149 = 0uLL;
      v42 = *(result + 104);
      v43 = *(result + 144);
      if (*(result + 136))
      {
        if (v42)
        {
          v44 = 0;
          v45 = *(a2 + 152);
          v46 = *(a2 + 160);
          v47 = *(a2 + 240);
          do
          {
            v48 = 0;
            *(v43 + 4 * v44) = *(a2 + 352) * (*(v47 + 4 * v46 * *(&v149 + 1) + 4 * v45 * v149) / *(a2 + 296));
            do
            {
              v49 = *(&v149 + v48 + 8) + 1;
              *(&v149 + v48 + 8) = v49;
              result = *(v3 + 16 + v48);
              if (v49 != result)
              {
                break;
              }

              *(&v149 + v48 + 8) = 0;
              v48 -= 8;
            }

            while (v48 != -16);
            ++v44;
          }

          while (v44 != v42);
        }
      }

      else if (v42)
      {
        v88 = 0;
        v89 = *(result + 56);
        v90 = *(result + 64);
        v91 = *(a2 + 152);
        v92 = *(a2 + 160);
        v93 = *(a2 + 240);
        do
        {
          result = 0;
          *(v43 + 4 * v90 * *(&v149 + 1) + 4 * v89 * v149) = *(a2 + 352) * (*(v93 + 4 * v92 * *(&v149 + 1) + 4 * v91 * v149) / *(a2 + 296));
          do
          {
            v94 = *(&v149 + result + 8) + 1;
            *(&v149 + result + 8) = v94;
            if (v94 != *(v3 + 16 + result))
            {
              break;
            }

            *(&v149 + result + 8) = 0;
            result -= 8;
          }

          while (result != -16);
          ++v88;
        }

        while (v88 != v42);
      }
    }
  }

  else
  {
    if (*(a2 + 232))
    {
      v162 = 0uLL;
      v163 = 0uLL;
      v160 = 0uLL;
      v161 = 0uLL;
      v158 = 0uLL;
      v159 = 0uLL;
      v156 = 0uLL;
      v157 = 0uLL;
      v154 = 0uLL;
      v155 = 0uLL;
      v152 = 0uLL;
      v153 = 0uLL;
      v150 = 0uLL;
      v151 = 0uLL;
      v149 = 0uLL;
      v141 = 0uLL;
      v142 = 0uLL;
      v140 = 0uLL;
      sub_2621D96E4(&v149, v5, a2, &v140);
      v14 = 0;
      v15 = &v140;
      v16 = 1;
      do
      {
        v17 = *v15;
        v18 = *(v5 + v14);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v16 = 0;
        v15 = &v140 + 1;
        v14 = 1;
      }

      while (v17 == v18);
      if (v17 != v18)
      {
        v19 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v20 = sub_2621D552C(v19, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v20, " ", 1);
        v21 = MEMORY[0x277D82670];
        v22 = MEMORY[0x266727260](MEMORY[0x277D82670], 190);
        sub_2621D552C(v22, " ", 1);
        sub_2621D552C(v22, "broadcast_assign_continue", 25);
        std::ios_base::getloc((v22 + *(*v22 - 24)));
        v23 = std::locale::use_facet(v146, MEMORY[0x277D82680]);
        (v23->__vftable[2].~facet_0)(v23, 10);
        std::locale::~locale(v146);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v21 + *(*v21 - 24)));
        v24 = std::locale::use_facet(v146, MEMORY[0x277D82680]);
        (v24->__vftable[2].~facet_0)(v24, 10);
        std::locale::~locale(v146);
        std::ostream::put();
        std::ostream::flush();
      }

      v147 = 0u;
      v148 = 0u;
      v145 = 0u;
      *&v146[0].__locale_ = 0u;
      v143 = 0u;
      v144 = 0u;
      v25 = *(v3 + 104);
      v26 = *(v3 + 144);
      if (*(v3 + 136))
      {
        if (v25)
        {
          v27 = 0;
          v29 = *(&v150 + 1);
          v28 = v151;
          v30 = (v151 - *(&v150 + 1)) >> 3;
          if (v30 <= 1)
          {
            v30 = 1;
          }

          v31 = *(a2 + 240);
          do
          {
            v143 = *&v146[0].__locale_;
            if (v28 != v29)
            {
              v32 = v29;
              v33 = v30;
              do
              {
                v34 = *v32++;
                *(&v143 + v34) = 0;
                --v33;
              }

              while (v33);
            }

            v35 = 0;
            v36 = 0;
            v37 = &v143;
            v38 = 1;
            do
            {
              v39 = v38;
              v36 += *(&v161 + v35) * *v37;
              v37 = (&v143 + 8);
              v35 = 1;
              v38 = 0;
            }

            while ((v39 & 1) != 0);
            *(v26 + 4 * v27) = *(a2 + 352) * (*(v31 + 4 * v36) / *(a2 + 296));
            for (i = 1; i != -1; --i)
            {
              v41 = (v146[i].__locale_ + 1);
              v146[i].__locale_ = v41;
              if (v41 != *(&v140 + i * 8))
              {
                break;
              }

              v146[i].__locale_ = 0;
            }

            ++v27;
          }

          while (v27 != v25);
        }
      }

      else if (v25)
      {
        v95 = 0;
        v97 = *(&v150 + 1);
        v96 = v151;
        v98 = (v151 - *(&v150 + 1)) >> 3;
        if (v98 <= 1)
        {
          v98 = 1;
        }

        v99 = *(v3 + 56);
        v100 = *(v3 + 64);
        v101 = *(a2 + 240);
        do
        {
          locale = v146[0].__locale_;
          v103 = v146[1].__locale_;
          v143 = *&v146[0].__locale_;
          if (v96 != v97)
          {
            v104 = v97;
            v105 = v98;
            do
            {
              v106 = *v104++;
              *(&v143 + v106) = 0;
              --v105;
            }

            while (v105);
          }

          v107 = 0;
          v108 = 0;
          v109 = &v143;
          v110 = 1;
          do
          {
            v111 = v110;
            v108 += *(&v161 + v107) * *v109;
            v109 = (&v143 + 8);
            v107 = 1;
            v110 = 0;
          }

          while ((v111 & 1) != 0);
          *(v26 + 4 * v103 * v100 + 4 * locale * v99) = *(a2 + 352) * (*(v101 + 4 * v108) / *(a2 + 296));
          for (j = 1; j != -1; --j)
          {
            v113 = (v146[j].__locale_ + 1);
            v146[j].__locale_ = v113;
            if (v113 != *(&v140 + j * 8))
            {
              break;
            }

            v146[j].__locale_ = 0;
          }

          ++v95;
        }

        while (v95 != v25);
      }
    }

    else
    {
      v162 = 0uLL;
      v163 = 0uLL;
      v160 = 0uLL;
      v161 = 0uLL;
      v158 = 0uLL;
      v159 = 0uLL;
      v156 = 0uLL;
      v157 = 0uLL;
      v154 = 0uLL;
      v155 = 0uLL;
      v152 = 0uLL;
      v153 = 0uLL;
      v150 = 0uLL;
      v151 = 0uLL;
      v149 = 0uLL;
      v141 = 0uLL;
      v142 = 0uLL;
      v140 = 0uLL;
      sub_2621D96E4(&v149, v5, a2, &v140);
      v50 = 0;
      v51 = &v140;
      v52 = 1;
      do
      {
        v53 = *v51;
        v54 = *(v5 + v50);
        if ((v52 & 1) == 0)
        {
          break;
        }

        v52 = 0;
        v51 = &v140 + 1;
        v50 = 1;
      }

      while (v53 == v54);
      if (v53 != v54)
      {
        v55 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v56 = sub_2621D552C(v55, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v56, " ", 1);
        v57 = MEMORY[0x277D82670];
        v58 = MEMORY[0x266727260](MEMORY[0x277D82670], 239);
        sub_2621D552C(v58, " ", 1);
        sub_2621D552C(v58, "broadcast_assign_stride", 23);
        std::ios_base::getloc((v58 + *(*v58 - 24)));
        v59 = std::locale::use_facet(v146, MEMORY[0x277D82680]);
        (v59->__vftable[2].~facet_0)(v59, 10);
        std::locale::~locale(v146);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v57 + *(*v57 - 24)));
        v60 = std::locale::use_facet(v146, MEMORY[0x277D82680]);
        (v60->__vftable[2].~facet_0)(v60, 10);
        std::locale::~locale(v146);
        std::ostream::put();
        std::ostream::flush();
      }

      v147 = 0u;
      v148 = 0u;
      v145 = 0u;
      *&v146[0].__locale_ = 0u;
      v143 = 0u;
      v144 = 0u;
      v61 = *(v3 + 104);
      v62 = *(v3 + 144);
      if (*(v3 + 136))
      {
        if (v61)
        {
          v63 = 0;
          v65 = *(&v150 + 1);
          v64 = v151;
          v66 = (v151 - *(&v150 + 1)) >> 3;
          if (v66 <= 1)
          {
            v66 = 1;
          }

          v67 = *(a2 + 232);
          v68 = *(a2 + 152);
          v69 = *(a2 + 160);
          v70 = *(a2 + 240);
          do
          {
            v143 = *&v146[0].__locale_;
            if (v64 != v65)
            {
              v71 = v65;
              v72 = v66;
              do
              {
                v73 = *v71++;
                *(&v143 + v73) = 0;
                --v72;
              }

              while (v72);
            }

            v74 = 0;
            v75 = 0;
            v76 = &v143;
            v77 = 1;
            do
            {
              v78 = v77;
              v75 += *(&v161 + v74) * *v76;
              v76 = (&v143 + 8);
              v74 = 1;
              v77 = 0;
            }

            while ((v78 & 1) != 0);
            v79 = (v70 + 4 * v75);
            if (!v67)
            {
              v79 = (v70 + 4 * *(&v143 + 1) * v69 + 4 * v143 * v68);
            }

            *(v62 + 4 * v63) = *(a2 + 352) * (*v79 / *(a2 + 296));
            for (k = 1; k != -1; --k)
            {
              v81 = (v146[k].__locale_ + 1);
              v146[k].__locale_ = v81;
              if (v81 != *(&v140 + k * 8))
              {
                break;
              }

              v146[k].__locale_ = 0;
            }

            ++v63;
          }

          while (v63 != v61);
        }
      }

      else if (v61)
      {
        v114 = 0;
        v116 = *(&v150 + 1);
        v115 = v151;
        v117 = (v151 - *(&v150 + 1)) >> 3;
        if (v117 <= 1)
        {
          v117 = 1;
        }

        v118 = *(v3 + 56);
        v119 = *(v3 + 64);
        v120 = *(a2 + 232);
        v121 = *(a2 + 152);
        v122 = *(a2 + 160);
        v123 = *(a2 + 240);
        do
        {
          v124 = v146[0].__locale_;
          v125 = v146[1].__locale_;
          v143 = *&v146[0].__locale_;
          if (v115 != v116)
          {
            v126 = v116;
            v127 = v117;
            do
            {
              v128 = *v126++;
              *(&v143 + v128) = 0;
              --v127;
            }

            while (v127);
          }

          v129 = 0;
          v130 = 0;
          v131 = &v143;
          v132 = 1;
          do
          {
            v133 = v132;
            v130 += *(&v161 + v129) * *v131;
            v131 = (&v143 + 8);
            v129 = 1;
            v132 = 0;
          }

          while ((v133 & 1) != 0);
          v134 = v124 * v118;
          v135 = v125 * v119;
          v136 = (v123 + 4 * v130);
          if (!v120)
          {
            v136 = (v123 + 4 * *(&v143 + 1) * v122 + 4 * v143 * v121);
          }

          *(v62 + 4 * v135 + 4 * v134) = *(a2 + 352) * (*v136 / *(a2 + 296));
          for (m = 1; m != -1; --m)
          {
            v138 = (v146[m].__locale_ + 1);
            v146[m].__locale_ = v138;
            if (v138 != *(&v140 + m * 8))
            {
              break;
            }

            v146[m].__locale_ = 0;
          }

          ++v114;
        }

        while (v114 != v61);
      }
    }

    result = sub_2621C57C8(&v149);
  }

  v139 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2622CE34C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::locale a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  std::locale::~locale(&a21);
  sub_2621C57C8(&a27);
  _Unwind_Resume(a1);
}

uint64_t sub_2622CE380(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = 0;
  v167 = *MEMORY[0x277D85DE8];
  v5 = (result + 8);
  v6 = 1;
  do
  {
    v7 = *(v5 + v4);
    v8 = *(a2 + 8 * v4);
    if ((v6 & 1) == 0)
    {
      break;
    }

    v6 = 0;
    v4 = 1;
  }

  while (v7 == v8);
  v9 = *(a2 + 232);
  if (v7 == v8)
  {
    if (*(a2 + 232) && *(a2 + 432) == 1)
    {
      v153 = 0u;
      v154 = 0u;
      v152 = 0u;
      v10 = *(result + 104);
      v11 = *(result + 144);
      if (*(result + 136))
      {
        if (v10)
        {
          v12 = *(a2 + 240);
          v13 = *(a2 + 440);
          do
          {
            v15 = *v12++;
            v14 = v15;
            if (v15 < 0)
            {
              v14 = -v14;
            }

            v17 = *v13++;
            v16 = v17;
            if (v17 < 0)
            {
              v16 = -v16;
            }

            *v11++ = v16 + v14;
            --v10;
          }

          while (v10);
        }
      }

      else if (v10)
      {
        v103 = 0;
        v104 = *(result + 56);
        v105 = *(result + 64);
        v106 = *(a2 + 240);
        v107 = *(a2 + 440);
        do
        {
          v108 = 0;
          v109 = *(v106 + 4 * v103);
          v110 = *(v107 + 4 * v103);
          if (v109 < 0)
          {
            v109 = -v109;
          }

          if (v110 < 0)
          {
            v110 = -v110;
          }

          v11[v105 * *(&v152 + 1) + v104 * v152] = v110 + v109;
          do
          {
            result = *(&v152 + v108 + 8) + 1;
            *(&v152 + v108 + 8) = result;
            if (result != *(v3 + 16 + v108))
            {
              break;
            }

            *(&v152 + v108 + 8) = 0;
            v108 -= 8;
          }

          while (v108 != -16);
          ++v103;
        }

        while (v103 != v10);
      }
    }

    else
    {
      v153 = 0u;
      v154 = 0u;
      v152 = 0u;
      v49 = *(result + 104);
      v50 = *(result + 144);
      if (*(result + 136))
      {
        if (v49)
        {
          for (i = 0; i != v49; ++i)
          {
            result = sub_2622CEE6C(a2, i, v152, *(&v152 + 1));
            v52 = 0;
            *(v50 + 4 * i) = result;
            do
            {
              v53 = *(&v152 + v52 + 8) + 1;
              *(&v152 + v52 + 8) = v53;
              if (v53 != *(v3 + 16 + v52))
              {
                break;
              }

              *(&v152 + v52 + 8) = 0;
              v52 -= 8;
            }

            while (v52 != -16);
          }
        }
      }

      else if (v49)
      {
        v80 = 0;
        v81 = *(result + 56);
        v82 = *(result + 64);
        v83 = result + 16;
        do
        {
          v84 = v81 * v152;
          v85 = v50 + 4 * v82 * *(&v152 + 1);
          result = sub_2622CEE6C(a2, v80, v152, *(&v152 + 1));
          v86 = 0;
          *(v85 + 4 * v84) = result;
          do
          {
            v87 = *(&v152 + v86 + 8) + 1;
            *(&v152 + v86 + 8) = v87;
            if (v87 != *(v83 + v86))
            {
              break;
            }

            *(&v152 + v86 + 8) = 0;
            v86 -= 8;
          }

          while (v86 != -16);
          ++v80;
        }

        while (v80 != v49);
      }
    }
  }

  else
  {
    if (*(a2 + 232) && *(a2 + 432) == 1)
    {
      v165 = 0u;
      v166 = 0u;
      v163 = 0u;
      v164 = 0u;
      v161 = 0u;
      v162 = 0u;
      v159 = 0u;
      v160 = 0u;
      v157 = 0u;
      v158 = 0u;
      v155 = 0u;
      v156 = 0u;
      v153 = 0u;
      v154 = 0u;
      v152 = 0u;
      v144 = 0u;
      v145 = 0u;
      v143 = 0u;
      sub_2621D96E4(&v152, v5, a2, &v143);
      v18 = 0;
      v19 = &v143;
      v20 = 1;
      do
      {
        v21 = *v19;
        v22 = *(v5 + v18);
        if ((v20 & 1) == 0)
        {
          break;
        }

        v20 = 0;
        v19 = &v143 + 1;
        v18 = 1;
      }

      while (v21 == v22);
      if (v21 != v22)
      {
        v23 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v24 = sub_2621D552C(v23, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v24, " ", 1);
        v25 = MEMORY[0x277D82670];
        v26 = MEMORY[0x266727260](MEMORY[0x277D82670], 190);
        sub_2621D552C(v26, " ", 1);
        sub_2621D552C(v26, "broadcast_assign_continue", 25);
        std::ios_base::getloc((v26 + *(*v26 - 24)));
        v27 = std::locale::use_facet(v149, MEMORY[0x277D82680]);
        (v27->__vftable[2].~facet_0)(v27, 10);
        std::locale::~locale(v149);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v25 + *(*v25 - 24)));
        v28 = std::locale::use_facet(v149, MEMORY[0x277D82680]);
        (v28->__vftable[2].~facet_0)(v28, 10);
        std::locale::~locale(v149);
        std::ostream::put();
        std::ostream::flush();
      }

      v150 = 0u;
      v151 = 0u;
      v148 = 0u;
      *&v149[0].__locale_ = 0u;
      v146 = 0u;
      v147 = 0u;
      v29 = *(v3 + 104);
      v30 = *(v3 + 144);
      if (*(v3 + 136))
      {
        if (v29)
        {
          v31 = 0;
          v33 = *(&v153 + 1);
          v32 = v154;
          v34 = (v154 - *(&v153 + 1)) >> 3;
          if (v34 <= 1)
          {
            v34 = 1;
          }

          v35 = *(a2 + 240);
          v36 = *(a2 + 440);
          do
          {
            v146 = *&v149[0].__locale_;
            if (v32 != v33)
            {
              v37 = v33;
              v38 = v34;
              do
              {
                v39 = *v37++;
                *(&v146 + v39) = 0;
                --v38;
              }

              while (v38);
            }

            v40 = 0;
            v41 = 0;
            v42 = &v146;
            v43 = 1;
            do
            {
              v44 = v43;
              v41 += *(&v164 + v40) * *v42;
              v42 = (&v146 + 8);
              v40 = 1;
              v43 = 0;
            }

            while ((v44 & 1) != 0);
            v45 = *(v35 + 4 * v41);
            if (v45 < 0)
            {
              v45 = -v45;
            }

            v46 = *(v36 + 4 * v41);
            if (v46 < 0)
            {
              v46 = -v46;
            }

            *(v30 + 4 * v31) = v46 + v45;
            for (j = 1; j != -1; --j)
            {
              v48 = (v149[j].__locale_ + 1);
              v149[j].__locale_ = v48;
              if (v48 != *(&v143 + j * 8))
              {
                break;
              }

              v149[j].__locale_ = 0;
            }

            ++v31;
          }

          while (v31 != v29);
        }
      }

      else if (v29)
      {
        v111 = 0;
        v113 = *(&v153 + 1);
        v112 = v154;
        v114 = (v154 - *(&v153 + 1)) >> 3;
        if (v114 <= 1)
        {
          v114 = 1;
        }

        v115 = *(v3 + 56);
        v116 = *(v3 + 64);
        v117 = *(a2 + 240);
        v118 = *(a2 + 440);
        do
        {
          locale = v149[0].__locale_;
          v119 = v149[1].__locale_;
          v146 = *&v149[0].__locale_;
          if (v112 != v113)
          {
            v121 = v113;
            v122 = v114;
            do
            {
              v123 = *v121++;
              *(&v146 + v123) = 0;
              --v122;
            }

            while (v122);
          }

          v124 = 0;
          v125 = 0;
          v126 = &v146;
          v127 = 1;
          do
          {
            v128 = v127;
            v125 += *(&v164 + v124) * *v126;
            v126 = (&v146 + 8);
            v124 = 1;
            v127 = 0;
          }

          while ((v128 & 1) != 0);
          v129 = locale * v115;
          v130 = *(v117 + 4 * v125);
          v131 = v119 * v116;
          if (v130 < 0)
          {
            v130 = -v130;
          }

          v132 = *(v118 + 4 * v125);
          if (v132 < 0)
          {
            v132 = -v132;
          }

          *(v30 + 4 * v131 + 4 * v129) = v132 + v130;
          for (k = 1; k != -1; --k)
          {
            v134 = (v149[k].__locale_ + 1);
            v149[k].__locale_ = v134;
            if (v134 != *(&v143 + k * 8))
            {
              break;
            }

            v149[k].__locale_ = 0;
          }

          ++v111;
        }

        while (v111 != v29);
      }
    }

    else
    {
      v165 = 0u;
      v166 = 0u;
      v163 = 0u;
      v164 = 0u;
      v161 = 0u;
      v162 = 0u;
      v159 = 0u;
      v160 = 0u;
      v157 = 0u;
      v158 = 0u;
      v155 = 0u;
      v156 = 0u;
      v153 = 0u;
      v154 = 0u;
      v152 = 0u;
      v144 = 0u;
      v145 = 0u;
      v143 = 0u;
      sub_2621D96E4(&v152, v5, a2, &v143);
      v54 = 0;
      v55 = &v143;
      v56 = 1;
      do
      {
        v57 = *v55;
        v58 = *(v5 + v54);
        if ((v56 & 1) == 0)
        {
          break;
        }

        v56 = 0;
        v55 = &v143 + 1;
        v54 = 1;
      }

      while (v57 == v58);
      if (v57 != v58)
      {
        v59 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v60 = sub_2621D552C(v59, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v60, " ", 1);
        v61 = MEMORY[0x277D82670];
        v62 = MEMORY[0x266727260](MEMORY[0x277D82670], 239);
        sub_2621D552C(v62, " ", 1);
        sub_2621D552C(v62, "broadcast_assign_stride", 23);
        std::ios_base::getloc((v62 + *(*v62 - 24)));
        v63 = std::locale::use_facet(v149, MEMORY[0x277D82680]);
        (v63->__vftable[2].~facet_0)(v63, 10);
        std::locale::~locale(v149);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v61 + *(*v61 - 24)));
        v64 = std::locale::use_facet(v149, MEMORY[0x277D82680]);
        (v64->__vftable[2].~facet_0)(v64, 10);
        std::locale::~locale(v149);
        std::ostream::put();
        std::ostream::flush();
      }

      v150 = 0u;
      v151 = 0u;
      v148 = 0u;
      *&v149[0].__locale_ = 0u;
      v146 = 0u;
      v147 = 0u;
      v65 = *(v3 + 104);
      v142 = *(v3 + 144);
      if (*(v3 + 136))
      {
        if (v65)
        {
          v66 = 0;
          v68 = *(&v153 + 1);
          v67 = v154;
          v69 = (v154 - *(&v153 + 1)) >> 3;
          if (v69 <= 1)
          {
            v69 = 1;
          }

          v140 = v69;
          do
          {
            v146 = *&v149[0].__locale_;
            if (v67 != v68)
            {
              v70 = v68;
              v71 = v140;
              do
              {
                v72 = *v70++;
                *(&v146 + v72) = 0;
                --v71;
              }

              while (v71);
            }

            v73 = 0;
            v74 = 0;
            v75 = &v146;
            v76 = 1;
            do
            {
              v77 = v76;
              v74 += *(&v164 + v73) * *v75;
              v75 = (&v146 + 8);
              v73 = 1;
              v76 = 0;
            }

            while ((v77 & 1) != 0);
            *(v142 + 4 * v66) = sub_2622CEE6C(a2, v74, v146, *(&v146 + 1));
            for (m = 1; m != -1; --m)
            {
              v79 = (v149[m].__locale_ + 1);
              v149[m].__locale_ = v79;
              if (v79 != *(&v143 + m * 8))
              {
                break;
              }

              v149[m].__locale_ = 0;
            }

            ++v66;
          }

          while (v66 != v65);
        }
      }

      else if (v65)
      {
        v88 = 0;
        v139 = v154;
        v141 = *(&v153 + 1);
        if (((v154 - *(&v153 + 1)) >> 3) <= 1)
        {
          v89 = 1;
        }

        else
        {
          v89 = (v154 - *(&v153 + 1)) >> 3;
        }

        v138 = *(v3 + 64);
        v136 = v89;
        v137 = *(v3 + 56);
        do
        {
          v90 = v65;
          v92 = v149[0].__locale_;
          v91 = v149[1].__locale_;
          v146 = *&v149[0].__locale_;
          if (v139 != v141)
          {
            v93 = v141;
            v94 = v136;
            do
            {
              v95 = *v93++;
              *(&v146 + v95) = 0;
              --v94;
            }

            while (v94);
          }

          v96 = 0;
          v97 = 0;
          v98 = &v146;
          v99 = 1;
          do
          {
            v100 = v99;
            v97 += *(&v164 + v96) * *v98;
            v98 = (&v146 + 8);
            v96 = 1;
            v99 = 0;
          }

          while ((v100 & 1) != 0);
          *(v142 + 4 * v138 * v91 + 4 * v137 * v92) = sub_2622CEE6C(a2, v97, v146, *(&v146 + 1));
          for (n = 1; n != -1; --n)
          {
            v102 = (v149[n].__locale_ + 1);
            v149[n].__locale_ = v102;
            if (v102 != *(&v143 + n * 8))
            {
              break;
            }

            v149[n].__locale_ = 0;
          }

          ++v88;
          v65 = v90;
        }

        while (v88 != v90);
      }
    }

    result = sub_2621C57C8(&v152);
  }

  v135 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2622CEE38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, std::locale a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  std::locale::~locale(&a27);
  sub_2621C57C8(&a33);
  _Unwind_Resume(a1);
}

uint64_t sub_2622CEE6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 232) == 1)
  {
    v4 = (*(a1 + 240) + 4 * a2);
  }

  else
  {
    v4 = (*(a1 + 240) + 4 * *(a1 + 160) * a4 + 4 * *(a1 + 152) * a3);
  }

  v5 = *v4;
  if (*(a1 + 432) == 1)
  {
    v6 = (*(a1 + 440) + 4 * a2);
  }

  else
  {
    v6 = (*(a1 + 440) + 4 * *(a1 + 360) * a4 + 4 * *(a1 + 352) * a3);
  }

  if (v5 < 0)
  {
    v5 = -v5;
  }

  v7 = *v6;
  if (v7 < 0)
  {
    v7 = -v7;
  }

  return (v7 + v5);
}

void sub_2622CEEEC(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  sub_26222D2A8(&v5, a2);
  v2 = v6;
  v3 = v7;
  v4 = v8;
  v19 = 0;
  v20 = 0;
  v15 = 0u;
  v16 = 0u;
  v10 = v6;
  v11 = v7;
  v12 = v8;
  v9 = &unk_2874EF0B8;
  v13 = *(&v6 + 1);
  v14 = 1;
  v17 = v6 * *(&v6 + 1);
  v18 = 0;
  sub_262224B84();
}

void sub_2622CFD08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, std::__shared_weak_count *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, std::__shared_weak_count *a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::locale::~locale(&a65);
  sub_2621C57C8(&a71);
  if (a50)
  {
    sub_2621D1B78(a50);
  }

  if (a31)
  {
    sub_2621D1B78(a31);
  }

  _Unwind_Resume(a1);
}

BOOL sub_2622CFE08(uint64_t a1, void *a2, int a3)
{
  v3 = 54;
  if (!a3)
  {
    v3 = 51;
  }

  v4 = &a2[v3];
  if (a3)
  {
    v5 = 638;
  }

  else
  {
    v5 = 636;
  }

  if (a3)
  {
    v6 = 648;
  }

  else
  {
    v6 = 644;
  }

  v7 = a2 + 80;
  if (a3)
  {
    v7 = a2 + 641;
  }

  v8 = 642;
  if (a3)
  {
    v8 = 643;
  }

  if (*(v4 + 16) != 1)
  {
    return 0;
  }

  if (*(a2[82] + 4 * a3) >= *(a1 + 24))
  {
    return 0;
  }

  v9 = a3 >> 6;
  v10 = 1 << a3;
  if ((*(a2[69] + 8 * v9) & (1 << a3)) != 0)
  {
    return 0;
  }

  result = 0;
  if ((*(a2[86] + 8 * v9) & v10) == 0)
  {
    v12 = *(a2 + v5);
    if ((v12 & 0x100) != 0)
    {
      result = 0;
      if (!v12 && *(a2 + v6) > 15.0 && (*v7 & 1) == 0 && (*(a2 + v8) & 1) == 0)
      {
        return (*(a2[90] + 8 * v9) & v10) == 0;
      }
    }
  }

  return result;
}

void *sub_2622CFEEC(uint64_t a1)
{
  result = MEMORY[0x28223BE20](a1);
  v25[115] = *MEMORY[0x277D85DE8];
  if ((*(v3 + 137) & 1) == 0)
  {
    v4 = v2;
    if (*(v2 + 137) != 1)
    {
      if ((atomic_load_explicit(&qword_27FF0C228, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FF0C228))
      {
        LODWORD(v8[0].__locale_) = 5;
        LODWORD(__p[0]) = 5;
        sub_2622D4838(v19, v8, __p);
        sub_26225F17C(&unk_27FF0C190, 1, v19);
        __cxa_atexit(sub_26222F778, &unk_27FF0C190, &dword_2621C3000);
        __cxa_guard_release(&qword_27FF0C228);
      }

      if ((atomic_load_explicit(&qword_27FF0C2C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FF0C2C8))
      {
        LODWORD(v8[0].__locale_) = 7;
        LODWORD(__p[0]) = 7;
        sub_2622D4838(v19, v8, __p);
        sub_26225F17C(&unk_27FF0C230, 1, v19);
        __cxa_atexit(sub_26222F778, &unk_27FF0C230, &dword_2621C3000);
        __cxa_guard_release(&qword_27FF0C2C8);
      }

      v10 = 0u;
      v9 = 0u;
      *&v8[0].__locale_ = 0u;
      sub_26222D2A8(&v11, v4);
      v17 = 0u;
      v16 = 0u;
      v15 = 0u;
      LOBYTE(v18) = 2;
      *&v8[0].__locale_ = v12;
      v9 = v13;
      v10 = v14;
      *&v19[0].__locale_ = 0u;
      v20 = 0u;
      v24 = v14;
      v23 = v13;
      v21 = 0u;
      v22 = v12;
      sub_26222D2A8(v25, &v11);
      *&v25[21].__locale_ = v16;
      *&v25[23].__locale_ = v17;
      *&v25[19].__locale_ = v15;
      v25[25].__locale_ = v18;
      *&v19[0].__locale_ = v22;
      v20 = v23;
      v21 = v24;
      sub_2622D4AC8(v7, v19);
    }
  }

  result[2] = 0;
  result[1] = 0;
  *result = result + 1;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

_OWORD *sub_2622D4838(_OWORD *a1, int *a2, int *a3)
{
  v4 = 0;
  v17[2] = *MEMORY[0x277D85DE8];
  a1[1] = 0u;
  a1[2] = 0u;
  v5 = 1;
  *a1 = 0u;
  v6 = MEMORY[0x277D82670];
  v7 = MEMORY[0x277D82680];
  v8 = *a3;
  v17[0] = *a2;
  v17[1] = v8;
  v15 = 0;
  do
  {
    v9 = v17[v4];
    if (v9 >= 0xBEBC200)
    {
      sub_2621D552C(v6, "runtime_err in ", 15);
      sub_2621D552C(v6, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/../common/../tensor/shape.hpp", 118);
      sub_2621D552C(v6, " ", 1);
      v10 = MEMORY[0x266727260](v6, 71);
      sub_2621D552C(v10, " ", 1);
      sub_2621D552C(v10, "Shape", 5);
      std::ios_base::getloc((v10 + *(*v10 - 24)));
      v11 = std::locale::use_facet(&v16, v7);
      (v11->__vftable[2].~facet_0)(v11, 10);
      std::locale::~locale(&v16);
      std::ostream::put();
      std::ostream::flush();
      sub_262223C90("err", "shape[", &v15, "]", " is ", &v17[v4], " ,it should <= 6");
      std::ios_base::getloc((v6 + *(*v6 - 24)));
      v12 = std::locale::use_facet(&v16, v7);
      (v12->__vftable[2].~facet_0)(v12, 10);
      std::locale::~locale(&v16);
      std::ostream::put();
      std::ostream::flush();
    }

    v15 = v5;
    *(a1 + v4 * 8) = v9;
    ++v4;
    ++v5;
  }

  while (v4 != 2);
  v13 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_2622D4AC8(uint64_t a1, _OWORD *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  *a1 = &unk_2874EEC38;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 128) = 0;
  v3 = a2[1];
  v2 = a2[2];
  *(a1 + 8) = *a2;
  *(a1 + 40) = v2;
  *(a1 + 24) = v3;
  v4 = *(a1 + 16);
  *(a1 + 56) = v4;
  *(a1 + 64) = 1;
  *(a1 + 104) = *(a1 + 8) * v4;
  *(a1 + 112) = 0;
  sub_26225F984();
}

void sub_2622D5854(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, std::locale a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, std::locale a47)
{
  std::locale::~locale(&a41);
  sub_2621C57C8(&a47);
  if (a26)
  {
    sub_2621D1B78(a26);
  }

  v49 = *(v47 + 128);
  if (v49)
  {
    sub_2621D1B78(v49);
  }

  _Unwind_Resume(a1);
}

vImage_Error sub_2622D58E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  v13 = *(a2 + 16);
  v7 = v13;
  v14 = v6;
  sub_262223490(&src, &v14, &v13);
  sub_26225F17C(a1, 0, &src);
  v8 = *(a3 + 8);
  v9 = *(a3 + 16);
  src.width = v7;
  src.rowBytes = v7;
  src.data = *(a2 + 144);
  src.height = v6;
  v11.width = v7;
  v11.rowBytes = v7;
  v11.data = *(a1 + 144);
  v11.height = v6;
  return vImageDilate_Planar8(&src, &v11, 0, 0, *(a3 + 144), v8, v9, 0);
}

void sub_2622D5988(_Unwind_Exception *exception_object)
{
  *v1 = &unk_2874EEC38;
  v3 = v1[16];
  if (v3)
  {
    sub_2621D1B78(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2622D59BC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_262236A0C(result, a4);
  }

  return result;
}

void sub_2622D5A14(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2622D5A30(uint64_t result, _OWORD *a2)
{
  *result = &unk_2874EE6A8;
  *(result + 8) = 0u;
  *(result + 24) = 0u;
  *(result + 40) = 0u;
  *(result + 56) = 0u;
  *(result + 72) = 0u;
  *(result + 88) = 0u;
  *(result + 120) = 0;
  *(result + 128) = 0;
  *(result + 136) = 1;
  v3 = a2[1];
  v2 = a2[2];
  *(result + 8) = *a2;
  *(result + 40) = v2;
  *(result + 24) = v3;
  *(result + 56) = 1;
  v4 = *(result + 8);
  *(result + 104) = v4;
  *(result + 112) = 0;
  if (v4)
  {
    operator new();
  }

  *(result + 137) = 1;
  return result;
}

void sub_2622D5B4C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 128);
  if (v3)
  {
    sub_2621D1B78(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2622D5B64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 137) == 1)
  {
    v6 = MEMORY[0x277D82670];
    v7 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v8 = sub_2621D552C(v7, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/function/tensor_isin.hpp", 106);
    v9 = sub_2621D552C(v8, " ", 1);
    v10 = MEMORY[0x266727260](v9, 23);
    v11 = sub_2621D552C(v10, " ", 1);
    v12 = sub_2621D552C(v11, "isin", 4);
    std::ios_base::getloc((v12 + *(*v12 - 24)));
    v13 = std::locale::use_facet(&v65, MEMORY[0x277D82680]);
    (v13->__vftable[2].~facet_0)(v13, 10);
    std::locale::~locale(&v65);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D6874("err", "empty tensor");
    std::ios_base::getloc((v6 + *(*v6 - 24)));
    v14 = std::locale::use_facet(&v65, MEMORY[0x277D82680]);
    (v14->__vftable[2].~facet_0)(v14, 10);
    std::locale::~locale(&v65);
    std::ostream::put();
    std::ostream::flush();
  }

  if (*(a3 + 137) == 1)
  {
    v15 = MEMORY[0x277D82670];
    v16 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v17 = sub_2621D552C(v16, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/function/tensor_isin.hpp", 106);
    v18 = sub_2621D552C(v17, " ", 1);
    v19 = MEMORY[0x266727260](v18, 24);
    v20 = sub_2621D552C(v19, " ", 1);
    v21 = sub_2621D552C(v20, "isin", 4);
    std::ios_base::getloc((v21 + *(*v21 - 24)));
    v22 = std::locale::use_facet(&v65, MEMORY[0x277D82680]);
    (v22->__vftable[2].~facet_0)(v22, 10);
    std::locale::~locale(&v65);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D6874("err", "empty tensor");
    std::ios_base::getloc((v15 + *(*v15 - 24)));
    v23 = std::locale::use_facet(&v65, MEMORY[0x277D82680]);
    (v23->__vftable[2].~facet_0)(v23, 10);
    std::locale::~locale(&v65);
    std::ostream::put();
    std::ostream::flush();
  }

  sub_26222D2A8(&v65, a2);
  v53 = &unk_2874EE6A8;
  v61 = 0;
  v62 = 0;
  v57 = *(a3 + 56);
  v58 = *(a3 + 72);
  v59 = *(a3 + 88);
  v60 = *(a3 + 104);
  v54 = *(a3 + 8);
  v55 = *(a3 + 24);
  v56 = *(a3 + 40);
  v24 = *(a3 + 120);
  v25 = *(a3 + 128);
  if (v25)
  {
    atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
    v61 = v24;
    v62 = v25;
  }

  else
  {
    v61 = *(a3 + 120);
    v62 = 0;
  }

  v26 = *(a3 + 144);
  v64 = v26;
  v63 = *(a3 + 136);
  v27 = v69;
  v28 = v67;
  *__p = 0u;
  v51 = 0u;
  v52 = 1065353216;
  if (v60)
  {
    v29 = &v26[v60];
    do
    {
      v30 = *v26;
      if (!__p[1])
      {
        goto LABEL_26;
      }

      v31 = vcnt_s8(__p[1]);
      v31.i16[0] = vaddlv_u8(v31);
      if (v31.u32[0] > 1uLL)
      {
        v32 = *v26;
        if (__p[1] <= v30)
        {
          v32 = v30 % LOBYTE(__p[1]);
        }
      }

      else
      {
        v32 = (LODWORD(__p[1]) - 1) & v30;
      }

      v33 = *(__p[0] + v32);
      if (!v33 || (v34 = *v33) == 0)
      {
LABEL_26:
        operator new();
      }

      while (1)
      {
        v35 = v34[1];
        if (v35 == v30)
        {
          break;
        }

        if (v31.u32[0] > 1uLL)
        {
          if (v35 >= __p[1])
          {
            v35 %= __p[1];
          }
        }

        else
        {
          v35 &= __p[1] - 1;
        }

        if (v35 != v32)
        {
          goto LABEL_26;
        }

LABEL_25:
        v34 = *v34;
        if (!v34)
        {
          goto LABEL_26;
        }
      }

      if (*(v34 + 16) != v30)
      {
        goto LABEL_25;
      }

      ++v26;
    }

    while (v26 != v29);
  }

  v36 = sub_2622E2B8C(a1, v66);
  if (v28)
  {
    v37 = 0;
    v38 = *(v36 + 144);
    v40 = __p[0];
    v39 = __p[1];
    v41 = vcnt_s8(__p[1]);
    v41.i16[0] = vaddlv_u8(v41);
    v42 = LOBYTE(__p[1]);
    v43 = __p[1] + 255;
    v44 = __p[1] - 1;
    do
    {
      if (v39)
      {
        v45 = *(v27 + v37);
        if (v41.u32[0] > 1uLL)
        {
          v46 = *(v27 + v37);
          if (v39 <= v45)
          {
            v46 = v45 % v42;
          }
        }

        else
        {
          v46 = v43 & v45;
        }

        v47 = v40[v46];
        if (v47)
        {
          while (1)
          {
            v47 = *v47;
            if (!v47)
            {
              break;
            }

            v48 = v47[1];
            if (v48 == v45)
            {
              if (*(v47 + 16) == v45)
              {
                v49 = 1;
                goto LABEL_46;
              }
            }

            else
            {
              if (v41.u32[0] > 1uLL)
              {
                if (v48 >= v39)
                {
                  v48 %= v39;
                }
              }

              else
              {
                v48 &= v44;
              }

              if (v48 != v46)
              {
                break;
              }
            }
          }
        }
      }

      v49 = 0;
LABEL_46:
      *(v38 + v37++) = v49;
    }

    while (v37 != v28);
  }

  sub_2621C74C4(__p);
  v53 = &unk_2874EE6A8;
  if (v62)
  {
    sub_2621D1B78(v62);
  }

  v65.__locale_ = &unk_2874EEC38;
  if (v68)
  {
    sub_2621D1B78(v68);
  }
}

void sub_2622D647C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, std::__shared_weak_count *a33, uint64_t a34, uint64_t a35, std::locale a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, std::__shared_weak_count *a52)
{
  sub_2621C74C4(&a11);
  a17 = a10;
  if (a33)
  {
    sub_2621D1B78(a33);
  }

  a36.__locale_ = &unk_2874EEC38;
  if (a52)
  {
    sub_2621D1B78(a52);
  }

  _Unwind_Resume(a1);
}

void sub_2622D6504(uint64_t a1, _OWORD *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  *a1 = &unk_2874EEC38;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 128) = 0;
  v3 = a2[1];
  v2 = a2[2];
  *(a1 + 8) = *a2;
  *(a1 + 40) = v2;
  *(a1 + 24) = v3;
  v4 = *(a1 + 16);
  *(a1 + 56) = v4;
  *(a1 + 64) = 1;
  *(a1 + 104) = *(a1 + 8) * v4;
  *(a1 + 112) = 0;
  sub_26225F984();
}

void sub_2622D7208(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::locale a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, std::locale a27)
{
  std::locale::~locale(&a21);
  sub_2621C57C8(&a27);
  v29 = *(v27 + 128);
  if (v29)
  {
    sub_2621D1B78(v29);
  }

  _Unwind_Resume(a1);
}

vImage_Error sub_2622D7268(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v9 = *(a2 + 16);
  v5 = v9;
  v10 = v4;
  sub_262223490(&src, &v10, &v9);
  sub_26225F17C(a1, 0, &src);
  src.width = v5;
  src.rowBytes = v5;
  src.data = *(a2 + 144);
  src.height = v4;
  v7.width = v5;
  v7.rowBytes = v5;
  v7.data = *(a1 + 144);
  v7.height = v4;
  return vImageErode_Planar8(&src, &v7, 0, 0, qword_27FF0C220, qword_27FF0C198, unk_27FF0C1A0, 0);
}

void sub_2622D7304(_Unwind_Exception *exception_object)
{
  *v1 = &unk_2874EEC38;
  v3 = v1[16];
  if (v3)
  {
    sub_2621D1B78(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2622D7338(uint64_t a1, __int128 *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  sub_262223DB8();
}

void sub_2622D826C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, std::locale a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, std::locale a47)
{
  std::locale::~locale(&a41);
  sub_2621C57C8(&a47);
  if (a26)
  {
    sub_2621D1B78(a26);
  }

  _Unwind_Resume(a1);
}

void sub_2622D8324(uint64_t a1, float *a2, uint64_t a3, char a4)
{
  v314 = *MEMORY[0x277D85DE8];
LABEL_2:
  k = (a2 - 20);
  v255 = a2 - 60;
  v256 = a2 - 40;
  i = a1;
  v279 = a2;
  v258 = a2 - 20;
  while (1)
  {
    a1 = i;
    v9 = a2 - i;
    v10 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - i) >> 4);
    v11 = v10 - 2;
    if (v10 > 2)
    {
      switch(v10)
      {
        case 3:
          v106 = *MEMORY[0x277D85DE8];

          sub_2622E38E4(a1, a1 + 80, k);
          return;
        case 4:
          v107 = *MEMORY[0x277D85DE8];

          sub_2622E3AB0(a1, a1 + 80, a1 + 160, k);
          return;
        case 5:
          v101 = *MEMORY[0x277D85DE8];

          sub_2622E3BF4(a1, a1 + 80, a1 + 160, a1 + 240, k);
          return;
      }

      goto LABEL_10;
    }

    if (v10 < 2)
    {
      goto LABEL_381;
    }

    if (v10 == 2)
    {
      break;
    }

LABEL_10:
    if (v9 <= 1919)
    {
      v108 = (a1 + 80);
      v110 = a1 == a2 || v108 == a2;
      if ((a4 & 1) == 0)
      {
        if (v110)
        {
          goto LABEL_381;
        }

        v231 = a1 + 136;
        while (1)
        {
          v232 = a1;
          a1 = v108;
          v233 = *(v232 + 80);
          v234 = *(v232 + 84);
          v235 = *v232;
          v236 = *(v232 + 4);
          if (v233 != *v232 || v234 != v236)
          {
            break;
          }

          v240 = *(v232 + 148);
          if (v240 < *(v232 + 68))
          {
            goto LABEL_362;
          }

LABEL_380:
          v108 = (a1 + 80);
          v231 += 80;
          if ((a1 + 80) == a2)
          {
            goto LABEL_381;
          }
        }

        v238 = v234 < v236;
        v38 = v233 == v235;
        v239 = v233 < v235;
        if (v38)
        {
          v239 = v238;
        }

        if (!v239)
        {
          goto LABEL_380;
        }

        v240 = *(v232 + 148);
LABEL_362:
        v242 = *a1;
        v241 = *(a1 + 4);
        v243 = *(v232 + 88);
        *v292 = *(v232 + 96);
        *&v292[7] = *(v232 + 103);
        v244 = *(v232 + 111);
        *(v232 + 88) = 0;
        *(v232 + 96) = 0;
        v278 = *(v232 + 112);
        *v299 = *(v232 + 113);
        *&v299[14] = *(v232 + 127);
        v245 = *(v232 + 135);
        *(v232 + 120) = 0;
        *(v232 + 128) = 0;
        *(v232 + 104) = 0;
        *(v232 + 112) = 0;
        v313 = *(v232 + 144);
        v308 = *(v232 + 136);
        v246 = *(v232 + 152);
        v247 = v231;
        v248 = *v232;
        while (1)
        {
          v249 = *(v247 - 132);
          *(v247 - 56) = v248;
          *(v247 - 52) = v249;
          v250 = (v247 - 48);
          if (*(v247 - 25) < 0)
          {
            operator delete(*v250);
          }

          *v250 = *(v247 - 128);
          *(v247 - 32) = *(v247 - 112);
          *(v247 - 105) = 0;
          *(v247 - 128) = 0;
          v251 = (v247 - 24);
          if (*(v247 - 1) < 0)
          {
            operator delete(*v251);
          }

          *v251 = *(v247 - 104);
          *(v247 - 8) = *(v247 - 88);
          *(v247 - 81) = 0;
          *(v247 - 104) = 0;
          *v247 = *(v247 - 80);
          *(v247 + 16) = *(v247 - 64);
          v248 = *(v247 - 216);
          v252 = *(v247 - 212);
          if (v248 == v242 && v252 == v241)
          {
            if (v240 >= *(v247 - 148))
            {
              goto LABEL_375;
            }
          }

          else
          {
            v253 = v252 > v241;
            if (v248 != v242)
            {
              v253 = v248 > v242;
            }

            if (!v253)
            {
LABEL_375:
              *(v247 - 136) = v242;
              *(v247 - 132) = v241;
              if (*(v247 - 105) < 0)
              {
                operator delete(*(v247 - 128));
              }

              *(v247 - 128) = v243;
              *(v247 - 120) = *v292;
              *(v247 - 113) = *&v292[7];
              *(v247 - 105) = v244;
              if (*(v247 - 81) < 0)
              {
                operator delete(*(v247 - 104));
              }

              *(v247 - 104) = v278;
              *(v247 - 103) = *v299;
              *(v247 - 89) = *&v299[14];
              *(v247 - 81) = v245;
              *(v247 - 72) = v313;
              *(v247 - 80) = v308;
              *(v247 - 68) = v240;
              *(v247 - 64) = v246;
              a2 = v279;
              goto LABEL_380;
            }
          }

          v247 -= 80;
        }
      }

      if (v110)
      {
        goto LABEL_381;
      }

      v111 = 0;
      v112 = a1;
LABEL_191:
      v113 = v112;
      v112 = v108;
      v114 = v113[20];
      v115 = v113[21];
      v116 = *v113;
      v117 = v113[1];
      if (v114 == *v113 && v115 == v117)
      {
        v121 = *(v113 + 37);
        if (v121 >= *(v113 + 17))
        {
          goto LABEL_221;
        }
      }

      else
      {
        v119 = v115 < v117;
        v38 = v114 == LODWORD(v116);
        v120 = v114 < SLODWORD(v116);
        if (v38)
        {
          v120 = v119;
        }

        if (!v120)
        {
          goto LABEL_221;
        }

        v121 = *(v113 + 37);
      }

      v123 = *v112;
      v122 = v112[1];
      v124 = *(v113 + 11);
      *v289 = *(v113 + 12);
      *&v289[7] = *(v113 + 103);
      v125 = *(v113 + 111);
      *(v113 + 11) = 0;
      *(v113 + 12) = 0;
      *v296 = *(v113 + 113);
      *&v296[14] = *(v113 + 127);
      v269 = *(v113 + 135);
      v274 = *(v113 + 112);
      *(v113 + 15) = 0;
      *(v113 + 16) = 0;
      *(v113 + 13) = 0;
      *(v113 + 14) = 0;
      v311 = v113[36];
      v305 = *(v113 + 17);
      v126 = *(v113 + 19);
      v127 = v111;
      v128 = *v113;
      while (1)
      {
        v129 = a1 + v127;
        v130 = *(a1 + v127 + 4);
        *(v129 + 80) = v128;
        *(v129 + 84) = v130;
        if (*(a1 + v127 + 111) < 0)
        {
          operator delete(*(v129 + 88));
        }

        *(v129 + 88) = *(v129 + 8);
        *(v129 + 104) = *(v129 + 24);
        *(v129 + 31) = 0;
        *(v129 + 8) = 0;
        if (*(v129 + 135) < 0)
        {
          operator delete(*(v129 + 112));
        }

        v131 = a1 + v127;
        *(v129 + 112) = *(a1 + v127 + 32);
        *(v129 + 128) = *(a1 + v127 + 48);
        *(v131 + 55) = 0;
        *(v131 + 32) = 0;
        *(v131 + 136) = *(a1 + v127 + 56);
        *(v131 + 152) = *(a1 + v127 + 72);
        if (!v127)
        {
          v134 = v131 + 56;
          v135 = a1;
          goto LABEL_216;
        }

        v128 = *(v131 - 80);
        v132 = *(v131 - 76);
        if (LODWORD(v128) == v123 && v132 == v122)
        {
          if (v121 >= *(a1 + v127 - 12))
          {
            goto LABEL_215;
          }
        }

        else
        {
          v133 = v132 > v122;
          if (LODWORD(v128) != v123)
          {
            v133 = SLODWORD(v128) > v123;
          }

          if (!v133)
          {
LABEL_215:
            v131 = a1 + v127;
            v134 = a1 + v127 + 56;
            v135 = v131;
LABEL_216:
            *v135 = v123;
            *(v135 + 4) = v122;
            if (*(v135 + 31) < 0)
            {
              operator delete(*(v131 + 8));
            }

            *(v131 + 8) = v124;
            *(v131 + 16) = *v289;
            *(v131 + 23) = *&v289[7];
            *(v131 + 31) = v125;
            if (*(v135 + 55) < 0)
            {
              operator delete(*(v131 + 32));
            }

            *(v131 + 32) = v274;
            *(v131 + 33) = *v296;
            *(v131 + 47) = *&v296[14];
            *(v131 + 55) = v269;
            *(v134 + 8) = v311;
            *v134 = v305;
            *(v131 + 68) = v121;
            *(v131 + 72) = v126;
            a2 = v279;
LABEL_221:
            v108 = (v112 + 20);
            v111 += 80;
            if (v112 + 20 == a2)
            {
LABEL_381:
              v254 = *MEMORY[0x277D85DE8];
              return;
            }

            goto LABEL_191;
          }
        }

        v127 -= 80;
      }
    }

    if (!a3)
    {
      if (a1 == a2)
      {
        goto LABEL_381;
      }

      v136 = v11 >> 1;
      v137 = v11 >> 1;
      while (2)
      {
        v138 = v137;
        if (v136 < v137)
        {
          goto LABEL_276;
        }

        v139 = (2 * v137) | 1;
        v140 = a1 + 80 * v139;
        if (2 * v138 + 2 < v10)
        {
          v141 = *(v140 + 80);
          v142 = *v140;
          v143 = *(v140 + 4);
          v144 = *(v140 + 84);
          if (*v140 == v141 && v143 == v144)
          {
            if (*(v140 + 68) < *(v140 + 148))
            {
              goto LABEL_234;
            }
          }

          else
          {
            v146 = v143 < v144;
            v38 = v142 == v141;
            v147 = v142 < v141;
            if (v38)
            {
              v147 = v146;
            }

            if (v147)
            {
LABEL_234:
              v140 += 80;
              v139 = 2 * v138 + 2;
            }
          }
        }

        v148 = a1 + 80 * v138;
        v149 = *v140;
        v150 = *(v140 + 4);
        v151 = *v148;
        v152 = *(v148 + 4);
        if (*v140 != *v148 || v150 != v152)
        {
          v154 = v150 < v152;
          v38 = v149 == v151;
          v155 = v149 < v151;
          if (v38)
          {
            v155 = v154;
          }

          if (!v155)
          {
            v156 = *(v148 + 68);
            goto LABEL_244;
          }

LABEL_276:
          v137 = v138 - 1;
          if (v138)
          {
            continue;
          }

          v177 = 0xCCCCCCCCCCCCCCCDLL * (v9 >> 4);
          while (2)
          {
            v178 = a2;
            v179 = 0;
            v180 = *a1;
            v181 = *(a1 + 8);
            *&v285[7] = *(a1 + 23);
            *v285 = *(a1 + 16);
            v271 = *(a1 + 31);
            *(a1 + 8) = 0;
            *(a1 + 16) = 0;
            v276 = *(a1 + 32);
            *v284 = *(a1 + 40);
            *&v284[7] = *(a1 + 47);
            v280 = *(a1 + 55);
            *(a1 + 40) = 0;
            *(a1 + 48) = 0;
            *(a1 + 24) = 0;
            *(a1 + 32) = 0;
            v301 = *(a1 + 72);
            v182 = a1;
            v298 = *(a1 + 56);
LABEL_281:
            v183 = v182 + 80 * v179;
            v184 = v183 + 80;
            v185 = 2 * v179;
            v179 = (2 * v179) | 1;
            v186 = v185 + 2;
            if (v186 < v177)
            {
              v187 = v183 + 160;
              v188 = *(v183 + 160);
              v189 = *(v183 + 80);
              v190 = *(v183 + 84);
              v191 = *(v183 + 164);
              if (v189 == v188 && v190 == v191)
              {
                if (*(v183 + 148) < *(v183 + 228))
                {
                  goto LABEL_289;
                }
              }

              else
              {
                v193 = v190 < v191;
                v38 = v189 == v188;
                v194 = v189 < v188;
                if (!v38)
                {
                  v193 = v194;
                }

                if (v193)
                {
LABEL_289:
                  v184 = v187;
                  v179 = v186;
                }
              }
            }

            *v182 = *v184;
            *(v182 + 4) = *(v184 + 4);
            if (*(v182 + 31) < 0)
            {
              operator delete(*(v182 + 8));
            }

            v195 = *(v184 + 8);
            *(v182 + 24) = *(v184 + 24);
            *(v182 + 8) = v195;
            *(v184 + 31) = 0;
            *(v184 + 8) = 0;
            if (*(v182 + 55) < 0)
            {
              operator delete(*(v182 + 32));
            }

            v196 = *(v184 + 32);
            *(v182 + 48) = *(v184 + 48);
            *(v182 + 32) = v196;
            *(v184 + 55) = 0;
            *(v184 + 32) = 0;
            v197 = *(v184 + 56);
            *(v182 + 72) = *(v184 + 72);
            *(v182 + 56) = v197;
            v182 = v184;
            if (v179 > ((v177 - 2) >> 1))
            {
              v198 = v178 - 20;
              if (v184 == v178 - 20)
              {
                *v184 = v180;
                if (*(v184 + 31) < 0)
                {
                  operator delete(*(v184 + 8));
                }

                *(v184 + 8) = v181;
                *(v184 + 16) = *v285;
                *(v184 + 23) = *&v285[7];
                *(v184 + 31) = v271;
                if (*(v184 + 55) < 0)
                {
                  operator delete(*(v184 + 32));
                }

                *(v184 + 32) = v276;
                *(v184 + 40) = *v284;
                *(v184 + 47) = *&v284[7];
                *(v184 + 55) = v280;
                *(v184 + 56) = v298;
                *(v184 + 72) = v301;
              }

              else
              {
                *v184 = *(v178 - 20);
                *(v184 + 4) = *(v178 - 19);
                if (*(v184 + 31) < 0)
                {
                  operator delete(*(v184 + 8));
                }

                v199 = *(v178 - 18);
                *(v184 + 24) = *(v178 - 7);
                *(v184 + 8) = v199;
                *(v178 - 49) = 0;
                *(v178 - 72) = 0;
                if (*(v184 + 55) < 0)
                {
                  operator delete(*(v184 + 32));
                }

                v200 = *(v178 - 3);
                *(v184 + 48) = *(v178 - 4);
                *(v184 + 32) = v200;
                *(v178 - 25) = 0;
                *(v178 - 48) = 0;
                v201 = *(v178 - 6);
                *(v184 + 72) = *(v178 - 1);
                *(v184 + 56) = v201;
                *(v178 - 10) = v180;
                if (*(v178 - 49) < 0)
                {
                  operator delete(*(v178 - 9));
                }

                *(v178 - 9) = v181;
                *(v178 - 57) = *&v285[7];
                *(v178 - 8) = *v285;
                *(v178 - 49) = v271;
                if (*(v178 - 25) < 0)
                {
                  operator delete(*(v178 - 6));
                }

                v202 = v178 - 6;
                *(v178 - 6) = v276;
                *(v178 - 33) = *&v284[7];
                *(v178 - 5) = *v284;
                *(v178 - 25) = v280;
                *(v202 + 2) = v301;
                *v202 = v298;
                v203 = v184 + 80 - a1;
                if (v203 >= 81)
                {
                  v204 = (-2 - 0x3333333333333333 * (v203 >> 4)) >> 1;
                  v205 = a1 + 80 * v204;
                  v206 = *v205;
                  v207 = *(v205 + 4);
                  v208 = *v184;
                  v209 = *(v184 + 4);
                  if (*v205 == *v184 && v207 == v209)
                  {
                    v210 = *(v184 + 68);
                    if (*(v205 + 68) >= v210)
                    {
                      goto LABEL_342;
                    }

LABEL_321:
                    v213 = 0;
                    v214 = *v184;
                    v215 = *(v184 + 4);
                    v216 = *(v184 + 8);
                    *&v307[7] = *(v184 + 23);
                    *v307 = *(v184 + 16);
                    v217 = *(v184 + 31);
                    *(v184 + 8) = 0;
                    *(v184 + 16) = 0;
                    v281 = *(v184 + 32);
                    *&v291[14] = *(v184 + 47);
                    *v291 = *(v184 + 33);
                    v272 = v217;
                    v277 = *(v184 + 55);
                    *(v184 + 24) = 0;
                    *(v184 + 32) = 0;
                    *(v184 + 40) = 0;
                    *(v184 + 48) = 0;
                    v283 = *(v184 + 64);
                    v282 = *(v184 + 56);
                    v218 = *(v184 + 72);
                    v219 = *v205;
                    while (1)
                    {
                      *v184 = v219;
                      *(v184 + 4) = *(v205 + 4);
                      if (v213 < 0)
                      {
                        operator delete(*(v184 + 8));
                      }

                      v220 = *(v205 + 8);
                      *(v184 + 24) = *(v205 + 24);
                      *(v184 + 8) = v220;
                      *(v205 + 31) = 0;
                      *(v205 + 8) = 0;
                      if (*(v184 + 55) < 0)
                      {
                        operator delete(*(v184 + 32));
                      }

                      v221 = *(v205 + 32);
                      *(v184 + 48) = *(v205 + 48);
                      *(v184 + 32) = v221;
                      *(v205 + 55) = 0;
                      *(v205 + 32) = 0;
                      v222 = *(v205 + 56);
                      *(v184 + 72) = *(v205 + 72);
                      *(v184 + 56) = v222;
                      if (!v204)
                      {
                        break;
                      }

                      v204 = (v204 - 1) >> 1;
                      v223 = a1 + 80 * v204;
                      v219 = *v223;
                      v224 = *(v223 + 4);
                      if (*v223 == v214 && v224 == v215)
                      {
                        if (*(v223 + 68) >= v210)
                        {
                          break;
                        }
                      }

                      else
                      {
                        v226 = v224 < v215;
                        if (v219 != v214)
                        {
                          v226 = v219 < v214;
                        }

                        if (!v226)
                        {
                          break;
                        }
                      }

                      v213 = *(v205 + 31);
                      v184 = v205;
                      v205 = a1 + 80 * v204;
                    }

                    *v205 = v214;
                    *(v205 + 4) = v215;
                    if (*(v205 + 31) < 0)
                    {
                      operator delete(*(v205 + 8));
                    }

                    *(v205 + 8) = v216;
                    *(v205 + 16) = *v307;
                    *(v205 + 23) = *&v307[7];
                    *(v205 + 31) = v272;
                    if (*(v205 + 55) < 0)
                    {
                      operator delete(*(v205 + 32));
                    }

                    *(v205 + 32) = v281;
                    *(v205 + 33) = *v291;
                    *(v205 + 47) = *&v291[14];
                    *(v205 + 55) = v277;
                    *(v205 + 56) = v282;
                    *(v205 + 64) = v283;
                    *(v205 + 68) = v210;
                    *(v205 + 72) = v218;
                  }

                  else
                  {
                    v211 = v207 < v209;
                    v38 = v206 == v208;
                    v212 = v206 < v208;
                    if (v38)
                    {
                      v212 = v211;
                    }

                    if (v212)
                    {
                      v210 = *(v184 + 68);
                      goto LABEL_321;
                    }
                  }
                }
              }

LABEL_342:
              a2 = v198;
              if (v177-- <= 2)
              {
                goto LABEL_381;
              }

              continue;
            }

            goto LABEL_281;
          }
        }

        break;
      }

      v156 = *(v148 + 68);
      if (*(v140 + 68) < v156)
      {
        goto LABEL_276;
      }

LABEL_244:
      v157 = *v148;
      v158 = *(v148 + 4);
      v266 = *(v148 + 8);
      *&v290[7] = *(v148 + 23);
      *v290 = *(v148 + 16);
      v263 = *(v148 + 31);
      *(v148 + 8) = 0;
      *(v148 + 16) = 0;
      *(v148 + 24) = 0;
      *v297 = *(v148 + 33);
      *&v297[14] = *(v148 + 47);
      v270 = *(v148 + 55);
      v275 = *(v148 + 32);
      *(v148 + 32) = 0;
      *(v148 + 40) = 0;
      *(v148 + 48) = 0;
      v306 = *(v148 + 56);
      v312 = *(v148 + 64);
      v159 = *(v148 + 72);
      v160 = *v140;
      while (2)
      {
        v161 = v140;
        *v148 = v160;
        *(v148 + 4) = *(v140 + 4);
        if (*(v148 + 31) < 0)
        {
          operator delete(*(v148 + 8));
        }

        v162 = *(v161 + 8);
        *(v148 + 24) = *(v161 + 24);
        *(v148 + 8) = v162;
        *(v161 + 31) = 0;
        *(v161 + 8) = 0;
        if (*(v148 + 55) < 0)
        {
          operator delete(*(v148 + 32));
        }

        v163 = *(v161 + 32);
        *(v148 + 48) = *(v161 + 48);
        *(v148 + 32) = v163;
        *(v161 + 55) = 0;
        *(v161 + 32) = 0;
        v164 = *(v161 + 56);
        *(v148 + 72) = *(v161 + 72);
        *(v148 + 56) = v164;
        if (v136 < v139)
        {
LABEL_271:
          *v161 = v157;
          *(v161 + 4) = v158;
          if (*(v161 + 31) < 0)
          {
            operator delete(*(v161 + 8));
          }

          *(v161 + 8) = v266;
          *(v161 + 16) = *v290;
          *(v161 + 23) = *&v290[7];
          *(v161 + 31) = v263;
          a2 = v279;
          if (*(v161 + 55) < 0)
          {
            operator delete(*(v161 + 32));
          }

          *(v161 + 32) = v275;
          *(v161 + 33) = *v297;
          *(v161 + 47) = *&v297[14];
          *(v161 + 55) = v270;
          *(v161 + 56) = v306;
          *(v161 + 64) = v312;
          *(v161 + 68) = v156;
          *(v161 + 72) = v159;
          goto LABEL_276;
        }

        v165 = 2 * v139;
        v139 = (2 * v139) | 1;
        v140 = a1 + 80 * v139;
        v166 = v165 + 2;
        if (v166 < v10)
        {
          v167 = *(v140 + 80);
          v168 = *v140;
          v169 = *(v140 + 4);
          v170 = *(v140 + 84);
          if (*v140 == v167 && v169 == v170)
          {
            if (*(v140 + 68) < *(v140 + 148))
            {
              goto LABEL_258;
            }
          }

          else
          {
            v172 = v169 < v170;
            v38 = v168 == v167;
            v173 = v168 < v167;
            if (v38)
            {
              v173 = v172;
            }

            if (v173)
            {
LABEL_258:
              v140 += 80;
              v139 = v166;
            }
          }
        }

        v160 = *v140;
        v174 = *(v140 + 4);
        if (*v140 == v157 && v174 == v158)
        {
          v148 = v161;
          if (*(v140 + 68) < v156)
          {
            goto LABEL_271;
          }
        }

        else
        {
          v176 = v174 < v158;
          if (v160 != v157)
          {
            v176 = v160 < v157;
          }

          v148 = v161;
          if (v176)
          {
            goto LABEL_271;
          }
        }

        continue;
      }
    }

    v12 = a1 + 80 * (v10 >> 1);
    if (v9 < 0x2801)
    {
      sub_2622E38E4(v12, a1, k);
    }

    else
    {
      sub_2622E38E4(a1, v12, k);
      sub_2622E38E4(a1 + 80, v12 - 80, v256);
      sub_2622E38E4(a1 + 160, v12 + 80, v255);
      sub_2622E38E4(v12 - 80, v12, (v12 + 80));
      v13 = *a1;
      v14 = *(a1 + 8);
      *(&v286 + 7) = *(a1 + 23);
      *&v286 = *(a1 + 16);
      v15 = *(a1 + 31);
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      v16 = *(a1 + 32);
      *&v302 = *(a1 + 40);
      *(&v302 + 7) = *(a1 + 47);
      v17 = *(a1 + 55);
      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
      v293 = *(a1 + 56);
      v300 = *(a1 + 72);
      *a1 = *v12;
      v18 = *(v12 + 24);
      *(a1 + 8) = *(v12 + 8);
      *(a1 + 24) = v18;
      v19 = *(v12 + 32);
      *(a1 + 48) = *(v12 + 48);
      *(a1 + 32) = v19;
      v20 = *(v12 + 56);
      *(a1 + 72) = *(v12 + 72);
      *(a1 + 56) = v20;
      *v12 = v13;
      *(v12 + 8) = v14;
      *(v12 + 16) = v286;
      *(v12 + 23) = *(&v286 + 7);
      *(v12 + 31) = v15;
      *(v12 + 32) = v16;
      *(v12 + 47) = *(&v302 + 7);
      *(v12 + 40) = v302;
      *(v12 + 55) = v17;
      *(v12 + 72) = v300;
      *(v12 + 56) = v293;
    }

    v273 = a3 - 1;
    if ((a4 & 1) == 0)
    {
      v21 = *(a1 - 80);
      v22 = *(a1 - 76);
      v23 = *a1;
      v24 = *(a1 + 4);
      if (v21 == *a1 && v22 == v24)
      {
        v25 = *(a1 + 68);
        if (*(a1 - 12) >= v25)
        {
          goto LABEL_97;
        }
      }

      else
      {
        v26 = v22 < v24;
        v38 = v21 == v23;
        v27 = v21 < v23;
        if (v38)
        {
          v27 = v26;
        }

        if (!v27)
        {
          v25 = *(a1 + 68);
LABEL_97:
          v68 = *a1;
          v67 = *(a1 + 4);
          v69 = (a1 + 8);
          v262 = *(a1 + 8);
          *&v288[7] = *(a1 + 23);
          *v288 = *(a1 + 16);
          v260 = *(a1 + 31);
          *(a1 + 8) = 0;
          v70 = (a1 + 32);
          v268 = *(a1 + 32);
          *(a1 + 16) = 0;
          *(a1 + 24) = 0;
          *&v295[14] = *(a1 + 47);
          *v295 = *(a1 + 33);
          v265 = *(a1 + 55);
          *(a1 + 32) = 0;
          *(a1 + 40) = 0;
          *(a1 + 48) = 0;
          v310 = *(a1 + 64);
          v304 = *(a1 + 56);
          v71 = *(a2 - 20);
          v72 = *(a2 - 19);
          if (v71 == v68 && v72 == v67)
          {
            if (v25 < *(a2 - 3))
            {
              goto LABEL_115;
            }
          }

          else
          {
            v78 = v72 > v67;
            if (v71 != v68)
            {
              v78 = v71 > v68;
            }

            if (v78)
            {
LABEL_115:
              for (i = a1 + 80; ; i += 80)
              {
                v79 = *i;
                v80 = *(i + 4);
                if (*i == v68 && v80 == v67)
                {
                  if (v25 < *(i + 68))
                  {
                    goto LABEL_126;
                  }
                }

                else
                {
                  v82 = v80 > v67;
                  v38 = v79 == v68;
                  v83 = v79 > v68;
                  if (v38)
                  {
                    v83 = v82;
                  }

                  if (v83)
                  {
                    goto LABEL_126;
                  }
                }
              }
            }
          }

          for (i = a1 + 80; i < a2; i += 80)
          {
            v73 = *i;
            v74 = *(i + 4);
            if (*i == v68 && v74 == v67)
            {
              if (v25 < *(i + 68))
              {
                break;
              }
            }

            else
            {
              v76 = v74 > v67;
              v38 = v73 == v68;
              v77 = v73 > v68;
              if (v38)
              {
                v77 = v76;
              }

              if (v77)
              {
                break;
              }
            }
          }

LABEL_126:
          v84 = *(a1 + 72);
          j = a2;
          if (i < a2)
          {
            for (j = k; ; j -= 80)
            {
              if (v71 == v68 && v72 == v67)
              {
                if (v25 >= *(j + 68))
                {
                  break;
                }
              }

              else
              {
                v86 = v72 > v67;
                v38 = v71 == v68;
                v87 = v71 > v68;
                if (v38)
                {
                  v87 = v86;
                }

                if (!v87)
                {
                  break;
                }
              }

              v71 = *(j - 80);
              v72 = *(j - 76);
            }
          }

LABEL_155:
          while (i < j)
          {
            sub_2622E3764(i, j);
            do
            {
              while (1)
              {
                v88 = *(i + 80);
                v89 = *(i + 84);
                i += 80;
                if (v88 != v68 || v89 != v67)
                {
                  break;
                }

                if (v25 < *(i + 68))
                {
                  goto LABEL_148;
                }
              }

              v91 = v89 > v67;
              v38 = v88 == v68;
              v92 = v88 > v68;
              if (v38)
              {
                v92 = v91;
              }
            }

            while (!v92);
            do
            {
LABEL_148:
              while (1)
              {
                v93 = *(j - 80);
                v94 = *(j - 76);
                j -= 80;
                if (v93 != v68 || v94 != v67)
                {
                  break;
                }

                if (v25 >= *(j + 68))
                {
                  goto LABEL_155;
                }
              }

              v96 = v94 > v67;
              v38 = v93 == v68;
              v97 = v93 > v68;
              if (v38)
              {
                v97 = v96;
              }
            }

            while (v97);
          }

          if (i - 80 != a1)
          {
            *a1 = *(i - 80);
            *(a1 + 4) = *(i - 76);
            if (*(a1 + 31) < 0)
            {
              operator delete(*v69);
            }

            v98 = *(i - 72);
            *(a1 + 24) = *(i - 56);
            *v69 = v98;
            *(i - 49) = 0;
            *(i - 72) = 0;
            if (*(a1 + 55) < 0)
            {
              operator delete(*v70);
            }

            v99 = *(i - 48);
            *(a1 + 48) = *(i - 32);
            *v70 = v99;
            *(i - 25) = 0;
            *(i - 48) = 0;
            v100 = *(i - 24);
            *(a1 + 72) = *(i - 8);
            *(a1 + 56) = v100;
          }

          *(i - 80) = v68;
          *(i - 76) = v67;
          if (*(i - 49) < 0)
          {
            operator delete(*(i - 72));
          }

          *(i - 72) = v262;
          *(i - 57) = *&v288[7];
          *(i - 64) = *v288;
          *(i - 49) = v260;
          a3 = v273;
          if (*(i - 25) < 0)
          {
            operator delete(*(i - 48));
          }

          a4 = 0;
          *(i - 48) = v268;
          *(i - 47) = *v295;
          *(i - 33) = *&v295[14];
          *(i - 25) = v265;
          *(i - 16) = v310;
          *(i - 24) = v304;
          *(i - 12) = v25;
          *(i - 8) = v84;
          continue;
        }
      }
    }

    v29 = *a1;
    v28 = *(a1 + 4);
    v30 = (a1 + 8);
    v264 = *(a1 + 8);
    *&v287[7] = *(a1 + 23);
    *v287 = *(a1 + 16);
    v31 = *(a1 + 31);
    *(a1 + 8) = 0;
    v32 = (a1 + 32);
    v267 = *(a1 + 32);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *&v294[14] = *(a1 + 47);
    *v294 = *(a1 + 33);
    v259 = v31;
    v261 = *(a1 + 55);
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    v309 = *(a1 + 64);
    v303 = *(a1 + 56);
    v33 = *(a1 + 68);
    v34 = a1 + 80;
    v35 = *(a1 + 72);
    while (1)
    {
      v36 = *v34;
      v37 = *(v34 + 4);
      v38 = *v34 == v29 && v37 == v28;
      if (!v38)
      {
        break;
      }

      if (*(v34 + 68) >= v33)
      {
        goto LABEL_34;
      }

LABEL_33:
      v34 += 80;
    }

    v39 = v37 < v28;
    v38 = v36 == v29;
    v40 = v36 < v29;
    if (v38)
    {
      v40 = v39;
    }

    if (v40)
    {
      goto LABEL_33;
    }

LABEL_34:
    if (v34 - 80 != a1)
    {
      while (1)
      {
        v41 = *k;
        v42 = *(k + 4);
        if (*k == v29 && v42 == v28)
        {
          if (*(k + 68) < v33)
          {
            goto LABEL_59;
          }
        }

        else
        {
          v44 = v42 < v28;
          v38 = LODWORD(v41) == v29;
          v45 = SLODWORD(v41) < v29;
          if (v38)
          {
            v45 = v44;
          }

          if (v45)
          {
            goto LABEL_59;
          }
        }

        k -= 80;
      }
    }

    k = v279;
    if (v34 < v279)
    {
      for (k = v258; ; k -= 80)
      {
        v46 = *k;
        v47 = *(k + 4);
        if (*k == v29 && v47 == v28)
        {
          if (v34 >= k || *(k + 68) < v33)
          {
            break;
          }
        }

        else
        {
          v49 = v47 >= v28;
          v38 = LODWORD(v46) == v29;
          v50 = SLODWORD(v46) >= v29;
          if (v38)
          {
            v50 = v49;
          }

          if (v34 >= k || !v50)
          {
            break;
          }
        }
      }
    }

LABEL_59:
    i = v34;
    if (v34 < k)
    {
      i = v34;
      v51 = k;
      do
      {
        sub_2622E3764(i, v51);
        do
        {
          while (1)
          {
            v52 = *(i + 80);
            v53 = *(i + 84);
            i += 80;
            if (v52 != v29 || v53 != v28)
            {
              break;
            }

            if (*(i + 68) >= v33)
            {
              goto LABEL_73;
            }
          }

          v55 = v53 < v28;
          v38 = v52 == v29;
          v56 = v52 < v29;
          if (v38)
          {
            v56 = v55;
          }
        }

        while (v56);
        do
        {
LABEL_73:
          while (1)
          {
            v57 = *(v51 - 80);
            v58 = *(v51 - 76);
            v51 -= 80;
            if (v57 != v29 || v58 != v28)
            {
              break;
            }

            if (*(v51 + 68) < v33)
            {
              goto LABEL_80;
            }
          }

          v60 = v58 < v28;
          v38 = v57 == v29;
          v61 = v57 < v29;
          if (v38)
          {
            v61 = v60;
          }
        }

        while (!v61);
LABEL_80:
        ;
      }

      while (i < v51);
    }

    if (i - 80 != a1)
    {
      *a1 = *(i - 80);
      *(a1 + 4) = *(i - 76);
      if (*(a1 + 31) < 0)
      {
        operator delete(*v30);
      }

      v62 = *(i - 72);
      *(a1 + 24) = *(i - 56);
      *v30 = v62;
      *(i - 49) = 0;
      *(i - 72) = 0;
      if (*(a1 + 55) < 0)
      {
        operator delete(*v32);
      }

      v63 = *(i - 48);
      *(a1 + 48) = *(i - 32);
      *v32 = v63;
      *(i - 25) = 0;
      *(i - 48) = 0;
      v64 = *(i - 24);
      *(a1 + 72) = *(i - 8);
      *(a1 + 56) = v64;
    }

    *(i - 80) = v29;
    *(i - 76) = v28;
    if (*(i - 49) < 0)
    {
      operator delete(*(i - 72));
    }

    *(i - 72) = v264;
    *(i - 57) = *&v287[7];
    *(i - 64) = *v287;
    *(i - 49) = v259;
    a3 = v273;
    a2 = v279;
    if (*(i - 25) < 0)
    {
      operator delete(*(i - 48));
    }

    *(i - 48) = v267;
    *(i - 47) = *v294;
    *(i - 33) = *&v294[14];
    *(i - 25) = v261;
    *(i - 16) = v309;
    *(i - 24) = v303;
    *(i - 12) = v33;
    *(i - 8) = v35;
    v65 = v34 >= k;
    k = v258;
    if (v65)
    {
      v66 = sub_2622E3D9C(a1, i - 80);
      if (sub_2622E3D9C(i, v279))
      {
        a2 = (i - 80);
        if (v66)
        {
          goto LABEL_381;
        }

        goto LABEL_2;
      }

      if (!v66)
      {
        goto LABEL_95;
      }
    }

    else
    {
LABEL_95:
      sub_2622D8324(a1, i - 80, v273, a4 & 1);
      a4 = 0;
    }
  }

  v102 = *(a2 - 20);
  v103 = *(a2 - 19);
  v104 = *a1;
  v105 = *(a1 + 4);
  if (v102 == *a1 && v103 == v105)
  {
    if (*(a2 - 3) >= *(a1 + 68))
    {
      goto LABEL_381;
    }
  }

  else
  {
    v228 = v103 < v105;
    v38 = v102 == v104;
    v229 = v102 < v104;
    if (v38)
    {
      v229 = v228;
    }

    if (!v229)
    {
      goto LABEL_381;
    }
  }

  v230 = *MEMORY[0x277D85DE8];

  sub_2622E3764(a1, (a2 - 20));
}