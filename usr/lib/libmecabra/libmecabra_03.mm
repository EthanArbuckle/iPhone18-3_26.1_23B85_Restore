uint64_t sub_2991B5A44(uint64_t result, uint64_t a2, uint64_t a3, void *a4, void *a5, _DWORD *a6, _DWORD *a7, int a8, int a9, int a10, int a11, int a12, int a13, int a14)
{
  v14 = 0;
  v34 = *MEMORY[0x29EDCA608];
  v16 = *(result + 16);
  v17 = (*result + 4 * v16 * a10 + 4 * a9);
  v18 = 4 * v16;
  do
  {
    v33.i32[v14++] = *v17;
    v17 = (v17 + v18);
  }

  while (v14 != 4);
  v19 = 0;
  v20 = *(a2 + 8);
  v21 = v20 + 2;
  v22 = vld1q_dup_f32(v21);
  v23 = vld1q_dup_f32(v20);
  v24 = vqrdmulhq_s32(vshlq_s32(vmlaq_s32(vaddq_s32(vdupq_n_s32(*(**a2 + 4 * a11) + (*a7 + 128) * *(*a4 + 4 * a9)), v33), vaddq_s32(vdupq_n_s32((*a7 + 128) * a8), *(*a5 + 4 * a10)), vdupq_n_s32(*a6 + 128)), vdupq_lane_s32(*(a2 + 16), 0)), v23);
  v25 = vdupq_n_s32(-HIDWORD(*(a2 + 16)));
  v26 = *(a2 + 24);
  v27 = vaddq_s32(vrshlq_s32(vqaddq_s32(v24, vcltzq_s32(vandq_s8(v25, v24))), v25), v22);
  v28 = vld1q_dup_f32(v26++);
  v29 = vld1q_dup_f32(v26);
  v30 = vminq_s32(vmaxq_s32(v27, v28), v29);
  *v30.i8 = vqmovn_s32(v30);
  v31 = vqmovun_s16(v30).u32[0];
  do
  {
    *(*a3 + a13 + *(a3 + 16) * a14) = v31 >> v19;
    v19 += 8;
    ++a14;
  }

  while (v19 != 32);
  v32 = *MEMORY[0x29EDCA608];
  return result;
}

int8x8_t sub_2991B5BB8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, _DWORD *a6, _DWORD *a7, int a8, int a9, int a10, int a11, int a12, int a13, int a14)
{
  v16 = (*a1 + 4 * a9 + 4 * *(a1 + 16) * a10);
  v17 = *v16;
  v18 = v16[1];
  v19 = (*a4 + 4 * a9);
  LODWORD(v16) = *a7 + 128;
  v20 = vdupq_n_s32(v16);
  v21 = vmlaq_s32(v18, v20, v19[1]);
  v22 = **a2 + 4 * a11;
  v23 = *(v22 + 16);
  v24 = sub_2991B00E8(a2 + 8, vaddq_s32(vmlaq_s32(vaddq_s32(*v22, v17), v20, *v19), vdupq_n_s32((*(*a5 + 4 * a10) + v16 * a8) * (*a6 + 128))));
  v25 = *(a2 + 24);
  v26 = vld1q_dup_f32(v25++);
  v27 = vld1q_dup_f32(v25);
  result = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vminq_s32(vmaxq_s32(v24, v26), v27)), vminq_s32(vmaxq_s32(v28, v26), v27)));
  *(*a3 + a13 + *(a3 + 16) * a14) = result;
  return result;
}

uint64_t sub_2991B5CA8(uint64_t result, uint64_t a2, uint64_t a3, void *a4, void *a5, _DWORD *a6, _DWORD *a7, int a8, int a9, int a10, int a11, int a12, int a13, int a14)
{
  v14 = 0;
  v15 = *a7 + 128;
  v16 = vdupq_n_s32((*(*a5 + 4 * a10) + v15 * a8) * (*a6 + 128));
  v17 = *(a2 + 8);
  v18 = a13;
  v19 = vmlaq_s32(vaddq_s32(*(**a2 + 4 * a11), *(*result + 4 * a9 + 4 * *(result + 16) * a10)), vdupq_n_s32(v15), *(*a4 + 4 * a9));
  v20 = v17 + 2;
  v21 = vld1q_dup_f32(v20);
  v22 = vld1q_dup_f32(v17);
  v23 = vshlq_s32(vaddq_s32(v19, v16), vdupq_lane_s32(*(a2 + 16), 0));
  v24 = vdupq_n_s32(-HIDWORD(*(a2 + 16)));
  v25 = vqrdmulhq_s32(v23, v22);
  v26 = *(a2 + 24);
  v27 = vrshlq_s32(vqaddq_s32(v25, vcltzq_s32(vandq_s8(v24, v25))), v24);
  v28 = vld1q_dup_f32(v26++);
  v29 = vld1q_dup_f32(v26);
  v30 = vminq_s32(vmaxq_s32(vaddq_s32(v27, v21), v28), v29);
  *v30.i8 = vqmovn_s32(v30);
  v31 = vqmovun_s16(v30).u32[0];
  do
  {
    *(*a3 + *(a3 + 16) * a14 + v18) = v31 >> v14;
    v14 += 8;
    ++v18;
  }

  while (v14 != 32);
  return result;
}

uint64_t sub_2991B5DA8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, _DWORD *a6, _DWORD *a7, int a8, int a9, int a10, int a11, int a12, int a13, int a14)
{
  result = sub_2991B022C((a2 + 8), *(*a1 + 4 * a9 + 4 * *(a1 + 16) * a10) + (*a7 + 128) * *(*a4 + 4 * a9) + *(**a2 + 4 * a11) + (*(*a5 + 4 * a10) + (*a7 + 128) * a8) * (*a6 + 128));
  v17 = *(a2 + 24);
  v19 = *v17;
  v18 = v17[1];
  if (result > v19)
  {
    v19 = result;
  }

  if (v18 >= v19)
  {
    v18 = v19;
  }

  v20 = v18 & ~(v18 >> 31);
  if (v20 >= 255)
  {
    LOBYTE(v20) = -1;
  }

  *(*a3 + a13 + *(a3 + 16) * a14) = v20;
  return result;
}

void sub_2991B5E74(void **a1, int32x4_t *a2, int a3)
{
  v3 = (a1 + 3);
  v4 = **a1 + 4 * a3;
  v5 = *(v4 + 16);
  v6 = vaddq_s32(*v4, *a2);
  v7 = vaddq_s32(v5, a2[1]);
  v8 = vaddq_s32(*v4, a2[2]);
  v9 = vaddq_s32(v5, a2[3]);
  v10 = vaddq_s32(*v4, a2[4]);
  v11 = vaddq_s32(v5, a2[5]);
  v12 = vaddq_s32(*v4, a2[6]);
  v13 = vaddq_s32(v5, a2[7]);
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v14 = v6;
  v15 = v7;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v21 = v13;
  sub_2991AFC68((a1 + 1), &v14, &v22);
  v18 = v26;
  v19 = v27;
  v20 = v28;
  v21 = v29;
  v14 = v22;
  v15 = v23;
  v16 = v24;
  v17 = v25;
  sub_2991B47A4(v3, &v14);
}

double sub_2991B5F54(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v4 = 0;
  v5 = *(a2 + 16);
  v6 = *a2 + a3 + v5 * a4;
  v7 = v6 + 1;
  v8 = v6 + 2;
  v9 = v6 + 3;
  v10 = 1;
  do
  {
    v11 = a1 + 8 * v4;
    v12 = 2 * v4 * v5;
    result = *v11;
    *(v6 + v12) = *v11;
    *(v7 + v12) = *(v11 + 1);
    *(v8 + v12) = *(v11 + 2);
    *(v9 + v12) = *(v11 + 3);
    v14 = ((2 * (v4 & 0x3FFFFFFFFFFFFFFFLL)) | 1) * v5;
    *(v6 + v14) = *(v11 + 4);
    *(v7 + v14) = *(v11 + 5);
    *(v8 + v14) = *(v11 + 6);
    LOBYTE(v12) = v10;
    *(v9 + v14) = *(v11 + 7);
    v4 = 1;
    v10 = 0;
  }

  while ((v12 & 1) != 0);
  return result;
}

void sub_2991B6000(uint64_t a1)
{
  v2 = *(a1 + 168);
  v3 = *(a1 + 172);
  v4 = *(a1 + 44);
  sub_2991B0380(v35, 0, *(a1 + 8), *(a1 + 192));
  v5 = *(a1 + 8);
  v6 = *(a1 + 192);
  v30 = v5;
  v34 = v6;
  v7 = (4 * *(v6 + 16) * *(v6 + 12) + 63) & 0xFFFFFFFFFFFFFFC0;
  v9 = v5[3];
  v8 = v5[4];
  v5[v9 + 5] = v8;
  v10 = v5[10];
  ++v5[3];
  v5[4] = v7 + v8;
  v31 = v9;
  v32 = v10;
  v33 = 5;
  sub_2991AE0F4(v5);
  if (v3 >= 1)
  {
    v11 = 0;
    v12 = *(a1 + 192);
    v13 = *(v12 + 16);
    v28 = v3;
    do
    {
      if (v3 - v11 >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = v3 - v11;
      }

      if (v2 >= 1)
      {
        v15 = 0;
        v16 = *(v12 + 12);
        do
        {
          v17 = *(a1 + 48);
          v39 = *(a1 + 32) + v17 * v15;
          if (v2 - v15 >= v16)
          {
            v18 = v16;
          }

          else
          {
            v18 = v2 - v15;
          }

          v40 = __PAIR64__(v4, v18);
          LODWORD(v41) = v17;
          v38[0] = v35;
          v38[1] = &v39;
          sub_2991AEA68(v38);
          v19 = *(a1 + 192);
          v39 = *(a1 + 24);
          v40 = v19;
          v41 = &v30;
          v42 = v35;
          v43 = a1 + 56;
          sub_2991AEFE8(&v39, v4);
          v20 = *(a1 + 164) + v11;
          LODWORD(v39) = *(a1 + 160) + v15;
          HIDWORD(v39) = v20;
          v40 = __PAIR64__(v14, v18);
          v21 = *(v36 + 8 * v37 + 40);
          v22 = *(v36 + 16);
          v23 = *(a1 + 72);
          v24 = *(v23 + 8 * *(a1 + 104) + 40);
          v25 = *(v23 + 16);
          v26 = *(a1 + 184);
          LODWORD(v38[0]) = **(a1 + 176);
          HIDWORD(v38[0]) = v18;
          v29[0] = *v26;
          v29[1] = v14;
          sub_2991B51E4(a1 + 136, &v39, &v30, v4, v21 + v22, v24 + v25, v38, v29, *(a1 + 200));
          v12 = *(a1 + 192);
          v16 = *(v12 + 12);
          v15 += v16;
        }

        while (v15 < v2);
        v13 = *(v12 + 16);
        v3 = v28;
      }

      v11 += v13;
    }

    while (v11 < v3);
  }

  v27 = *(a1 + 8);
  *v27 = 0;
  ++*(v27 + 80);
  *(v27 + 24) = 0;
  *(v27 + 32) = 0;
}

uint64_t sub_2991B6214@<X0>(unsigned int *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v18 = a1[1];
  v5 = *(a1 + 16);
  v6 = a1[37];
  v7 = v6 * *a1;
  v8 = v6 * *a1;
  v9 = 3 * *a1;
  v10 = (v5 + 4 * v6 * (2 * *a1));
  v11 = (v5 + 4 * v6 * v9);
  v12 = (4 * *a1 - v9) * v6;
  sub_2991A7728(v8, v5);
  sub_2991A74D8(v8, &v5->f32[v7]);
  sub_2991A7728(v8, v10);
  sub_2991A7728(v12, v11);
  sub_2991A73AC(v8, v10, *(a1 + 10));
  sub_2991A73AC(v8, (v5 + 4 * v7), v5);
  v13 = *(a1 + 10);
  sub_2991A72E4();
  sub_2991A7508(a1[22], *(a1 + 10), v11);
  if (a1[2])
  {
    v14 = *(a1 + 4);
    v4 = a1[12];
    v15 = a1[13];
    result = memmove(v14, v11, 4 * v12);
  }

  else
  {
    v17 = *(a1 + 4);
    v15 = a1[13];
    v14 = (v17 + 4 * v18 * v15);
    result = sub_2991A744C();
  }

  *a2 = v14;
  *(a2 + 8) = v4 * v15;
  *(a2 + 16) = v4;
  *(a2 + 20) = v15;
  *(a2 + 24) = 2;
  return result;
}

void *sub_2991B636C(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 5)
  {
    if (!(a2 >> 59))
    {
      v2 = result[1] - *result;
      sub_2991B640C(result, a2);
    }

    sub_299212A8C();
  }

  return result;
}

void sub_2991B640C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_29919600C();
}

uint64_t sub_2991B6454(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  if (a2[1] != *a2)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = (v3 + v6);
      v9 = *(v8 + 2);
      v10 = *v8;
      v11 = *a3;
      result = sub_2991A7474();
      ++v7;
      v3 = *a2;
      v6 += 32;
    }

    while ((a2[1] - *a2) >> 5 > v7);
  }

  return result;
}

uint64_t sub_2991B64D0@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v6 = *(a2 + 16);
  v7 = *a1;
  v23 = v6;
  if (v6)
  {
    v8 = 0;
    v9 = 0;
    v10 = *(a2 + 20);
    do
    {
      if (v7)
      {
        v11 = 0;
        v12 = *a2 + 4 * (v10 * v9);
        v13 = *a4;
        v14 = v7;
        v15 = v8;
        do
        {
          sub_2991A7424();
          *(*a3 + 4 * v15++) = v16;
          v11 += v10;
          --v14;
        }

        while (v14);
      }

      ++v9;
      v8 += v7;
      LODWORD(v6) = v23;
    }

    while (v9 != v23);
  }

  result = sub_2991A79EC(v23, v7, *a3, v6);
  v18 = *(a3 + 16);
  v19 = *(a3 + 20);
  *a5 = *a3;
  *(a5 + 8) = v19 * v18;
  *(a5 + 16) = v18;
  *(a5 + 20) = v19;
  *(a5 + 24) = 2;
  return result;
}

uint64_t sub_2991B65D8@<X0>(uint64_t a1@<X1>, float32x4_t **a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 20);
  if (v5)
  {
    v8 = 0;
    v9 = *(a1 + 16);
    do
    {
      sub_2991A73AC(v6, *a2, (*a1 + 4 * v8));
      v8 += v6;
      --v9;
    }

    while (v9);
  }

  result = sub_2991A7CF8(v5, v6, *a1);
  v11 = *(a1 + 16);
  v12 = *(a1 + 20);
  *a3 = *a1;
  *(a3 + 8) = v12 * v11;
  *(a3 + 16) = v11;
  *(a3 + 20) = v12;
  *(a3 + 24) = 2;
  return result;
}

unsigned __int8 *sub_2991B6674(unsigned __int8 *result, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    v8 = 0;
    v9 = 0;
    v10 = *result;
    v11 = *(a3 + 20) / v10;
    do
    {
      v12 = *a3 + 4 * v11 * v10 * v9;
      v13 = *a2 + 4 * v8;
      v14 = *a4 + 4 * (2 * v11 * v9);
      result = sub_2991A7970();
      ++v9;
      v8 += v10;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_2991B672C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 160);
  v5 = *(a2 + 4);
  if (v5)
  {
    v7 = 0;
    v8 = 0;
    v9 = *(a3 + 80) + 4 * *(a3 + 8) * v4;
    v10 = *(a2 + 5);
    v11 = v10 * *(a3 + 4);
    do
    {
      v12 = *a2;
      result = sub_2991A744C();
      v8 += v11;
      v7 += v10;
      --v5;
    }

    while (v5);
    v4 = *(a3 + 160);
  }

  v14 = *(a3 + 4);
  if (*(a3 + 296) == 1)
  {
    *(*(a3 + 264) + 4 * v4) = 1065353216;
    if (v14 - 1 == v4)
    {
      *(a3 + 296) = 0;
    }
  }

  *(a3 + 160) = (v4 + 1) % v14;
  return result;
}

void sub_2991B67FC(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  if (*(a1 + 28) == 1)
  {
    sub_2991AB0DC(*(a1 + 88), a2, &__p);
    v10 = *(a1 + 96);
    v11 = sub_2991A5E8C(a4);
    sub_2991AB24C(v10, &__p, v11, v32);
    sub_2991A5EC4(a4, (*(a2 + 8) - *a2) >> 2);
    v12 = sub_2991A5EBC(a4);
    v13 = *&v32[8];
    v14 = *v12;
    if (*&v32[8])
    {
      v15 = *(a1 + 96);
      v16 = *(v15 + 120);
      v17 = *v32;
      v18 = *(v15 + 112);
      v19 = *v12;
      do
      {
        v20 = *v17++;
        v21 = v16 * (v20 - v18);
        *v19++ = v21;
        --v13;
      }

      while (v13);
    }

    v22 = *(a1 + 104);
    *v31 = v14;
    *&v31[8] = *&v32[20] * *&v32[16];
    *&v31[16] = *&v32[16];
    *&v31[20] = *&v32[20];
    *&v31[24] = 2;
    v23 = *(a1 + 16);
    v24 = sub_2991A5EAC(a4);
    sub_2991B6AD0(v22, v31, a3, v23, v24, a5);
    if (__p)
    {
      v34 = __p;
      operator delete(__p);
    }
  }

  else
  {
    if (*(a1 + 24) == 1)
    {
      v25 = a4[1];
      sub_2991AA84C(&__p, ((*(a2 + 8) - *a2) >> 2) * *(*(a1 + 56) + 34));
      v26 = *(a1 + 56);
      v27 = *a2;
      if (*(a2 + 8) == *a2)
      {
        v30 = 0;
      }

      else
      {
        v28 = 0;
        do
        {
          memcpy(__p + 4 * v28 * *(v26 + 20), (*v26 + 4 * *(v26 + 20) * v27[v28]), 4 * *(v26 + 20));
          ++v28;
          v27 = *a2;
          v29 = *(a2 + 8) - *a2;
        }

        while (v28 < v29 >> 2);
        v26 = *(a1 + 56);
        v30 = (v29 >> 2);
      }

      sub_2991AB9A0(a1, v25, &__p, v30, *(v26 + 34));
      sub_2991ABAEC(*(a1 + 64), v25, v31);
      *v32 = *v31;
      *&v32[12] = *&v31[12];
      if (__p)
      {
        free(__p);
      }
    }

    else
    {
      sub_2991ABB5C(*(a1 + 56), a2, &__p);
      sub_2991ABCD0(*(a1 + 64), &__p, a4[1], v31);
      *v32 = *v31;
      *&v32[12] = *&v31[12];
      if (__p)
      {
        v34 = __p;
        operator delete(__p);
      }
    }

    if (*(a1 + 29) == 1)
    {
      sub_2991ABD54(*(a1 + 80), v32, a4[2], v31);
      *v32 = *v31;
      *&v32[12] = *&v31[12];
    }

    sub_2991B6C20(*(a1 + 72), v32, a3, *(a1 + 16), a4 + 6, a5);
  }
}

void sub_2991B6AA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    free(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2991B6AD0(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, int a4@<W3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v10 = *a5;
  v11 = *(a5 + 5);
  *a6 = *a5;
  *(a6 + 8) = v11;
  *(a6 + 16) = 1;
  *(a6 + 20) = v11;
  *(a6 + 24) = 1;
  v12 = *(a2 + 4);
  sub_2991AA424(__p, *(a2 + 5));
  if (v12)
  {
    for (i = 0; i != v12; ++i)
    {
      v14 = *(*a3 + 4 * i);
      if (a4 == -1 || (v15 = 0.0, v14 != a4))
      {
        v16 = *(a1 + 20);
        if (v16)
        {
          v17 = (*a1 + v16 * v14);
          v18 = *(a1 + 72);
          v19 = *(a1 + 64);
          v20 = __p[0];
          do
          {
            v21 = *v17++;
            v22 = v18 * (v21 - v19);
            *v20++ = v22;
            --v16;
          }

          while (v16);
        }

        v23 = *(*(a1 + 32) + 4 * v14);
        v24 = *(a1 + 88);
        v25 = *(a1 + 80);
        v26 = *a2;
        cblas_sdot_NEWLAPACK();
        v27 = v24 * (v23 - v25);
        v15 = v28 + v27;
      }

      *(v10 + 4 * i) = v15;
    }
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

uint64_t sub_2991B6C20@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, int a4@<W3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a5;
  v7 = *(a5 + 5);
  *a6 = *a5;
  *(a6 + 8) = v7;
  *(a6 + 16) = 1;
  *(a6 + 20) = v7;
  *(a6 + 24) = 1;
  v8 = *(a2 + 5);
  if (v8)
  {
    v12 = result;
    v13 = 0;
    v14 = *(a2 + 4);
    do
    {
      v15 = *(*a3 + v13);
      if (a4 == -1 || (v16 = 0.0, v15 != a4))
      {
        v17 = *v12 + 4 * *(v12 + 20) * v15;
        v18 = *a2;
        result = cblas_sdot_NEWLAPACK();
        v16 = v19 + *(*(v12 + 32) + 4 * v15);
      }

      *(v6 + v13) = v16;
      v13 += 4;
    }

    while (4 * v8 != v13);
  }

  return result;
}

void *sub_2991B6CFC(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 2)
  {
    if (!(a2 >> 62))
    {
      v2 = result[1] - *result;
      sub_2992F86B0(result, a2);
    }

    sub_299212A8C();
  }

  return result;
}

uint64_t sub_2991B6D9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*(a1 + 28) == 1)
  {
    result = *(a1 + 96);
    if (result && *(a1 + 88))
    {
      sub_2991A9804(result);
    }
  }

  else
  {
    result = *(a1 + 64);
    if (result && *(a1 + 56))
    {
      sub_2991A99E0(result, a2, *(a1 + 24));
    }
  }

  *a3 = 0;
  return result;
}

void sub_2991B6ED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  sub_2991A8794(&a9, 0);
  sub_2991A8868(&a10, 0);
  _Unwind_Resume(a1);
}

void sub_2991B6F18(uint64_t a1, uint64_t a2, int a3)
{
  *a1 = &unk_2A1F62688;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 20) = 0;
  *(a1 + 28) = 0;
  operator new();
}

void sub_2991B6FB8(uint64_t a1)
{
  sub_2991A8574(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_2991B6FF0(uint64_t a1, const char *a2)
{
  v3 = sub_2991A89A8(*(a1 + 40), a2);
  v4 = *(a1 + 40);
  if (v3)
  {
    v5 = *v4;
    v6 = v4[1];

    sub_2991B7228(a1, v5);
  }

  sub_2991A84D8(v4);
  return 0;
}

void sub_2991B7050(uint64_t a1, int a2)
{
  v2 = *(a1 + 144);
  if (v2)
  {
    sub_2991A926C(v2, a2);
  }
}

void sub_2991B7060(uint64_t a1@<X0>, uint64_t **a2@<X1>, void *a3@<X8>)
{
  v4 = *(a1 + 144);
  if (!v4)
  {
    v5 = (*a2)[1] - **a2;
    sub_2991B7860();
  }

  v6 = *(v4 + 8);

  sub_2991B7A78(a1, a2, v6, a3);
}

void sub_2991B70D8(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, const void **a4@<X8>)
{
  v7 = sub_2991B71D4(a1, a2, a3);
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  if (v7)
  {
    sub_2991B6CFC(a4, (a2[1] - *a2) >> 2);
    if (a2[1] != *a2)
    {
      v8 = 0;
      do
      {
        v9 = (*(*a3 + 40))(a3, v8);
        if (v10)
        {
          v11 = sub_2991A7DB8(v10, v9);
        }

        else
        {
          v11 = 0;
        }

        v12 = v11;
        sub_2992141C0(a4, &v12);
        ++v8;
      }

      while (v8 < (a2[1] - *a2) >> 2);
    }
  }
}

void sub_2991B71B0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2991B71D4(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a2[1] == *a2;
  }

  else
  {
    v3 = 1;
  }

  v4 = !v3;
  if (!v3)
  {
    sub_2991B7ED8(a1, a2, a3, &v6);
    sub_2991A6708(v7, v6);
  }

  return v4;
}

void sub_2991B7228(uint64_t a1, unsigned __int8 *a2)
{
  v25 = *MEMORY[0x29EDCA608];
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  *(a1 + 20) = v4 & 1;
  *(a1 + 24) = (v4 >> 2) & 1;
  *(a1 + 28) = (v4 & 2) != 0;
  *(a1 + 30) = v6;
  *(a1 + 29) = v6 != 0;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = 5;
  }

  sub_2991A9078(&v23, v7);
  v8 = 0;
  if (v7 <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = v7;
  }

  do
  {
    *(v23 + v8) = *&a2[v8 + 4];
    *(v23 + v8 + 2) = *&a2[v8 + 6];
    v8 += 4;
  }

  while (4 * v9 != v8);
  if (*(a1 + 28))
  {
    for (i = 0; i != 16; i += 2)
    {
      v11 = &__p[i];
      *v11 = 0;
      v11[1] = 0;
    }

    v12 = 0;
    v13 = &__p[1];
    do
    {
      v14 = &a2[v12 + v8];
      *(v13 - 2) = *(v14 + 1);
      *v13 = *(v14 + 1);
      v13 += 2;
      v12 += 12;
    }

    while (v12 != 96);
    v15 = *v23;
    v16 = *(v23 + 1);
    operator new();
  }

  sub_2991A91B8(__p, v7);
  v17 = 0;
  v18 = &a2[v8 + 4];
  v19 = 2;
  do
  {
    *(__p[0] + v17) = v18;
    v18 += 4 * *(v23 + v19 - 2) * *(v23 + v19);
    v17 += 8;
    v19 += 4;
  }

  while (8 * v9 != v17);
  v20 = *__p[0];
  v21 = *v23;
  v22 = *(v23 + 1);
  operator new();
}

void sub_2991B77EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a20)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

void sub_2991B7A38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  sub_2991A8794(&a9, 0);
  sub_2991A8868(&a10, 0);
  _Unwind_Resume(a1);
}

void sub_2991B7A78(uint64_t a1@<X0>, uint64_t **a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (*(a1 + 20) == 1)
  {
    sub_2991B7D84(a1, a2, a3, a4);
  }

  else
  {
    sub_2991B7BBC(a1, a2, a3, a4);
  }
}

void sub_2991B7A8C(uint64_t a1, uint64_t a2, int a3)
{
  if (!a3)
  {
    v3 = (*(a1 + 20) - (*(a1 + 16) >> 2));
  }

  operator new();
}

void sub_2991B7BBC(uint64_t a1@<X0>, uint64_t **a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *a2;
  v7 = a2[1];
  v10 = **a2;
  v9 = (*a2)[1];
  sub_2991AAFC8(a4, (v9 - v10) >> 2);
  LODWORD(v26) = 0;
  sub_2991AAFC8(&__p, (v9 - v10) >> 2);
  v11 = 0xAAAAAAAAAAAAAAABLL * (v7 - v8);
  if (v11 >= 2)
  {
    v12 = 0;
    v13 = v11 - 1;
    if (((v9 - v10) >> 2) <= 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = (v9 - v10) >> 2;
    }

    v15 = v13;
    while (1)
    {
      v16 = &(*a2)[3 * v12];
      sub_2991B7ED8(a1, v16, a3, &v26);
      if (v9 != v10)
      {
        break;
      }

LABEL_14:
      ++v12;
      sub_2991A6708((v29 - __p) >> 2, __p);
      v24 = a4[1] - *a4;
      sub_2991A65DC();
      if (v12 == v15)
      {
        goto LABEL_15;
      }
    }

    v17 = 0;
    v18 = *(a1 + 16);
    v19 = __p;
    v20 = v26;
    v21 = 4 * v27;
    while (1)
    {
      if (v18 == 0xFFFFFFFFLL)
      {
        v22 = *(v16[3] + 4 * v17);
      }

      else
      {
        v23 = 1.0;
        if (*(*v16 + 4 * v17) == v18)
        {
          goto LABEL_13;
        }

        v22 = *(v16[3] + 4 * v17);
        if (v22 == v18)
        {
          goto LABEL_13;
        }
      }

      v23 = *(v20 + 4 * v22);
LABEL_13:
      v19[v17++] = v23;
      v20 += v21;
      if (v14 == v17)
      {
        goto LABEL_14;
      }
    }
  }

LABEL_15:
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }
}

void sub_2991B7D50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  v17 = *v15;
  if (*v15)
  {
    *(v15 + 8) = v17;
    operator delete(v17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2991B7D84@<X0>(uint64_t a1@<X0>, uint64_t **a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v8 = 0xAAAAAAAAAAAAAAABLL * (a2[1] - *a2);
  v10 = **a2;
  v9 = (*a2)[1];
  LODWORD(v21[0]) = 0;
  sub_2991AAFC8(a4, (v9 - v10) >> 2);
  if (v8 >= 2)
  {
    v11 = 0;
    v12 = (v8 - 1);
    if (((v9 - v10) >> 2) <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = (v9 - v10) >> 2;
    }

    do
    {
      v14 = &(*a2)[3 * v11];
      sub_2991B8A1C(a1, v14, v14 + 3, a3, v21);
      v15 = v21[0];
      if (v9 != v10)
      {
        v16 = 0;
        v17 = *(a1 + 16);
        do
        {
          if (v17 != -1 && *(*v14 + 4 * v16) == v17)
          {
            *(v15 + 4 * v16) = 0;
          }

          ++v16;
        }

        while (v13 != v16);
      }

      ++v11;
      v18 = a4[1] - *a4;
      sub_2991A65DC();
    }

    while (v11 != v12);
  }

  v19 = (a4[1] - *a4) >> 2;
  return sub_2991A65BC();
}

void sub_2991B7EBC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2991B7ED8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a1 + 28) == 1)
  {
    sub_2991AB0DC(*(a1 + 88), a2, &__p);
    v8 = *(a1 + 96);
    v9 = sub_2991A5E8C(a3);
    sub_2991AB24C(v8, &__p, v9, v32);
    sub_2991A5EC4(a3, (*(a2 + 8) - *a2) >> 2);
    v10 = *(a1 + 104);
    v11 = sub_2991A5EB4(a3);
    sub_2991AB644(v10, v32, v11, v31);
    v12 = sub_2991A5EAC(a3);
    v13 = *&v31[16];
    v14 = *&v31[20];
    v15 = *&v31[20] * *&v31[16];
    v16 = *v12;
    if (v15)
    {
      v17 = *v31;
      v18 = *(a1 + 104);
      v19 = *(v18 + 120);
      v20 = *(v18 + 112);
      v21 = *v12;
      v22 = *&v31[20] * *&v31[16];
      do
      {
        v23 = *v17++;
        v24 = v19 * (v23 - v20);
        *v21++ = v24;
        --v22;
      }

      while (v22);
    }

    *a4 = v16;
    *(a4 + 8) = v15;
    *(a4 + 16) = v13;
    *(a4 + 20) = v14;
    *(a4 + 24) = 2;
    sub_2991A6944((*(a2 + 8) - *a2) >> 2, *(*(a1 + 88) + 32), v16);
    if (__p)
    {
      v34 = __p;
      operator delete(__p);
    }
  }

  else
  {
    if (*(a1 + 24) == 1)
    {
      v25 = *(a3 + 8);
      sub_2991AA84C(&__p, ((*(a2 + 8) - *a2) >> 2) * *(*(a1 + 56) + 34));
      v26 = *(a1 + 56);
      v27 = *a2;
      if (*(a2 + 8) == *a2)
      {
        v30 = 0;
      }

      else
      {
        v28 = 0;
        do
        {
          memcpy(__p + 4 * v28 * *(v26 + 20), (*v26 + 4 * *(v26 + 20) * v27[v28]), 4 * *(v26 + 20));
          ++v28;
          v27 = *a2;
          v29 = *(a2 + 8) - *a2;
        }

        while (v28 < v29 >> 2);
        v26 = *(a1 + 56);
        v30 = (v29 >> 2);
      }

      sub_2991AB9A0(a1, v25, &__p, v30, *(v26 + 34));
      sub_2991B81D0(*(a1 + 64), v25, v31);
      *v32[0].i8 = *v31;
      *&v32[1].u8[4] = *&v31[12];
      if (__p)
      {
        free(__p);
      }
    }

    else
    {
      sub_2991ABB5C(*(a1 + 56), a2, &__p);
      sub_2991B8240(*(a1 + 64), &__p, *(a3 + 8), v31);
      *v32[0].i8 = *v31;
      *&v32[1].u8[4] = *&v31[12];
      if (__p)
      {
        v34 = __p;
        operator delete(__p);
      }
    }

    if (*(a1 + 29) == 1)
    {
      sub_2991B82C4(*(a1 + 80), v32, *(a3 + 16), v31);
      *v32[0].i8 = *v31;
      *&v32[1].u8[4] = *&v31[12];
    }

    sub_2991B8458(*(a1 + 72), v32, a3 + 48, *(a1 + 20), a4);
    sub_2991A6944((*(a2 + 8) - *a2) >> 2, *(*(a1 + 56) + 32), *a4);
  }
}

void sub_2991B819C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    free(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2991B81D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 4);
  v7 = *(a1 + 5);
  v8 = *(a2 + 52);
  v9 = *a1;
  v10 = *(a2 + 32);
  v11 = *(a2 + 128);
  sub_2991A684C();

  return sub_2991B851C(a2, a3);
}

uint64_t sub_2991B8240@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_2991B8674(a1, a2, (a3 + 32));
  v7 = *(a1 + 16);
  v8 = *(a1 + 20);
  v9 = *(a3 + 52);
  v10 = *a1;
  v11 = *(a3 + 32);
  v12 = *(a3 + 128);
  sub_2991A68C8();
  sub_2991A6608(*(a3 + 144), *(a3 + 148), *(a1 + 32), *(a3 + 128));

  return sub_2991B851C(a3, a4);
}

void sub_2991B82C4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a2 + 16);
  v7 = *(a2 + 20);
  v9 = a3 + 32;
  sub_2991A6B2C(v8, *(a2 + 20), *a2, *(a3 + 32));
  v10 = *(v9 + 16);
  v11 = *(v9 + 20);
  v28 = *v9;
  v29 = v11 * v10;
  v30 = v10;
  v31 = v11;
  v32 = 2;
  sub_2991B86F0(a1, &v28, v9 + 152, (v9 + 48), v33);
  if (*(v9 + 264) == 1)
  {
    sub_2991B87F8(v33, (a3 + 264), &v28);
  }

  if (v7)
  {
    v12 = 0;
    v13 = 0;
    v14 = v7;
    do
    {
      v15 = *v9 + 4 * v12;
      v16 = *(v9 + 96);
      sub_2991A66AC();
      v13 += 2 * v8;
      v12 += v8;
      --v14;
    }

    while (v14);
  }

  v17 = *(a3 + 96);
  v18 = *(a3 + 100);
  v28 = *(a3 + 80);
  v29 = v18 * v17;
  v30 = v17;
  v31 = v18;
  v32 = 2;
  sub_2991B8894(a1, v33, &v28, (v9 + 96));
  sub_2991B894C(a1, v9, a3);
  v19 = *(a3 + 128);
  v20 = *(a3 + 144);
  v21 = *(a1 + 24);
  v22 = *(a1 + 28);
  v23 = *(a1 + 8);
  v24 = *(a3 + 32);
  sub_2991A68C8();
  sub_2991A6738(*(a1 + 24) * v7, *(a3 + 32));
  v25 = *(a1 + 24);
  v26 = *(a2 + 20);
  *a4 = *(a3 + 32);
  *(a4 + 8) = v26 * v25;
  *(a4 + 16) = v25;
  *(a4 + 20) = v26;
  *(a4 + 24) = 2;
}

uint64_t sub_2991B8458@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v8 = *(a3 + 20);
  v11 = a2 + 2;
  v10 = *(a2 + 4);
  v9 = *(v11 + 1);
  *a5 = *a3;
  *(a5 + 8) = v8 * v9;
  *(a5 + 16) = v9;
  *(a5 + 20) = v8;
  *(a5 + 24) = 2;
  v12 = *a2;
  v13 = *a1;
  if (a4 == 1)
  {
    v14 = *(a1 + 4);
  }

  else
  {
    v15 = *(a1 + 5);
  }

  result = sub_2991A68C8();
  if (*(a2 + 5))
  {
    v17 = 0;
    v18 = 0;
    do
    {
      v19 = a1[4];
      result = sub_2991A65DC();
      ++v18;
      v17 += v8;
    }

    while (v18 < *(a2 + 5));
  }

  return result;
}

uint64_t sub_2991B851C@<X0>(unsigned int *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v18 = a1[1];
  v5 = *(a1 + 16);
  v6 = a1[37];
  v7 = v6 * *a1;
  v8 = v6 * *a1;
  v9 = 3 * *a1;
  v10 = &v5[v6 * (2 * *a1)];
  v11 = &v5[v6 * v9];
  v12 = (4 * *a1 - v9) * v6;
  sub_2991A67C8(v8, v5);
  sub_2991A6738(v8, &v5[v7]);
  sub_2991A67C8(v8, v10);
  sub_2991A67C8(v12, v11);
  sub_2991A665C(v8, v10, *(a1 + 10));
  sub_2991A665C(v8, &v5[v7], v5);
  v13 = *(a1 + 10);
  sub_2991A65DC();
  sub_2991A6768(a1[22], *(a1 + 10), v11);
  if (a1[2])
  {
    v14 = *(a1 + 4);
    v4 = a1[12];
    v15 = a1[13];
    result = memmove(v14, v11, 4 * v12);
  }

  else
  {
    v17 = *(a1 + 4);
    v15 = a1[13];
    v14 = (v17 + 4 * v18 * v15);
    result = sub_2991A66AC();
  }

  *a2 = v14;
  *(a2 + 8) = v4 * v15;
  *(a2 + 16) = v4;
  *(a2 + 20) = v15;
  *(a2 + 24) = 2;
  return result;
}

uint64_t sub_2991B8674(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  if (a2[1] != *a2)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = (v3 + v6);
      v9 = *(v8 + 2);
      v10 = *v8;
      v11 = *a3;
      result = sub_2991A66D4();
      ++v7;
      v3 = *a2;
      v6 += 32;
    }

    while ((a2[1] - *a2) >> 5 > v7);
  }

  return result;
}

uint64_t sub_2991B86F0@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v6 = *a1;
  v22 = *(a2 + 16);
  if (v22)
  {
    v7 = 0;
    v8 = 0;
    v9 = *(a2 + 20);
    do
    {
      if (v6)
      {
        v10 = 0;
        v11 = *a2 + 4 * (v9 * v8);
        v12 = *a4;
        v13 = v6;
        v14 = v7;
        do
        {
          sub_2991A6684();
          *(*a3 + 4 * v14++) = v15;
          v10 += v9;
          --v13;
        }

        while (v13);
      }

      ++v8;
      v7 += v6;
    }

    while (v8 != v22);
  }

  result = sub_2991A6944(v22, v6, *a3);
  v17 = *(a3 + 16);
  v18 = *(a3 + 20);
  *a5 = *a3;
  *(a5 + 8) = v18 * v17;
  *(a5 + 16) = v17;
  *(a5 + 20) = v18;
  *(a5 + 24) = 2;
  return result;
}

uint64_t sub_2991B87F8@<X0>(uint64_t a1@<X1>, float **a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 20);
  if (v5)
  {
    v8 = 0;
    v9 = *(a1 + 16);
    do
    {
      sub_2991A665C(v6, *a2, (*a1 + 4 * v8));
      v8 += v6;
      --v9;
    }

    while (v9);
  }

  result = sub_2991A6A6C(v5, v6, *a1);
  v11 = *(a1 + 16);
  v12 = *(a1 + 20);
  *a3 = *a1;
  *(a3 + 8) = v12 * v11;
  *(a3 + 16) = v11;
  *(a3 + 20) = v12;
  *(a3 + 24) = 2;
  return result;
}

unsigned __int8 *sub_2991B8894(unsigned __int8 *result, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    v8 = 0;
    v9 = 0;
    v10 = *result;
    v11 = *(a3 + 20) / v10;
    do
    {
      v12 = *a3 + 4 * v11 * v10 * v9;
      v13 = *a2 + 4 * v8;
      v14 = *a4 + 4 * (2 * v11 * v9);
      result = sub_2991A68C8();
      ++v9;
      v8 += v10;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_2991B894C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 160);
  v5 = *(a2 + 4);
  if (v5)
  {
    v7 = 0;
    v8 = 0;
    v9 = *(a3 + 80) + 4 * *(a3 + 8) * v4;
    v10 = *(a2 + 5);
    v11 = v10 * *(a3 + 4);
    do
    {
      v12 = *a2;
      result = sub_2991A66AC();
      v8 += v11;
      v7 += v10;
      --v5;
    }

    while (v5);
    v4 = *(a3 + 160);
  }

  v14 = *(a3 + 4);
  if (*(a3 + 296) == 1)
  {
    *(*(a3 + 264) + 4 * v4) = 1065353216;
    if (v14 - 1 == v4)
    {
      *(a3 + 296) = 0;
    }
  }

  *(a3 + 160) = (v4 + 1) % v14;
  return result;
}

void sub_2991B8A1C(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  if (*(a1 + 28) == 1)
  {
    sub_2991AB0DC(*(a1 + 88), a2, &__p);
    v10 = *(a1 + 96);
    v11 = sub_2991A5E8C(a4);
    sub_2991AB24C(v10, &__p, v11, v32);
    sub_2991A5EC4(a4, (*(a2 + 8) - *a2) >> 2);
    v12 = sub_2991A5EBC(a4);
    v13 = *&v32[8];
    v14 = *v12;
    if (*&v32[8])
    {
      v15 = *(a1 + 96);
      v16 = *(v15 + 120);
      v17 = *v32;
      v18 = *(v15 + 112);
      v19 = *v12;
      do
      {
        v20 = *v17++;
        v21 = v16 * (v20 - v18);
        *v19++ = v21;
        --v13;
      }

      while (v13);
    }

    v22 = *(a1 + 104);
    *v31 = v14;
    *&v31[8] = *&v32[20] * *&v32[16];
    *&v31[16] = *&v32[16];
    *&v31[20] = *&v32[20];
    *&v31[24] = 2;
    v23 = *(a1 + 16);
    v24 = sub_2991A5EAC(a4);
    sub_2991B6AD0(v22, v31, a3, v23, v24, a5);
    if (__p)
    {
      v34 = __p;
      operator delete(__p);
    }
  }

  else
  {
    if (*(a1 + 24) == 1)
    {
      v25 = a4[1];
      sub_2991AA84C(&__p, ((*(a2 + 8) - *a2) >> 2) * *(*(a1 + 56) + 34));
      v26 = *(a1 + 56);
      v27 = *a2;
      if (*(a2 + 8) == *a2)
      {
        v30 = 0;
      }

      else
      {
        v28 = 0;
        do
        {
          memcpy(__p + 4 * v28 * *(v26 + 20), (*v26 + 4 * *(v26 + 20) * v27[v28]), 4 * *(v26 + 20));
          ++v28;
          v27 = *a2;
          v29 = *(a2 + 8) - *a2;
        }

        while (v28 < v29 >> 2);
        v26 = *(a1 + 56);
        v30 = (v29 >> 2);
      }

      sub_2991AB9A0(a1, v25, &__p, v30, *(v26 + 34));
      sub_2991B81D0(*(a1 + 64), v25, v31);
      *v32 = *v31;
      *&v32[12] = *&v31[12];
      if (__p)
      {
        free(__p);
      }
    }

    else
    {
      sub_2991ABB5C(*(a1 + 56), a2, &__p);
      sub_2991B8240(*(a1 + 64), &__p, a4[1], v31);
      *v32 = *v31;
      *&v32[12] = *&v31[12];
      if (__p)
      {
        v34 = __p;
        operator delete(__p);
      }
    }

    if (*(a1 + 29) == 1)
    {
      sub_2991B82C4(*(a1 + 80), v32, a4[2], v31);
      *v32 = *v31;
      *&v32[12] = *&v31[12];
    }

    sub_2991B8CF0(*(a1 + 72), v32, a3, *(a1 + 16), a4 + 6, a5);
  }
}

void sub_2991B8CC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    free(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2991B8CF0@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, int a4@<W3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a5;
  v7 = *(a5 + 5);
  *a6 = *a5;
  *(a6 + 8) = v7;
  *(a6 + 16) = 1;
  *(a6 + 20) = v7;
  *(a6 + 24) = 1;
  v8 = *(a2 + 5);
  if (v8)
  {
    v12 = result;
    v13 = 0;
    v14 = *(a2 + 4);
    do
    {
      v15 = *(*a3 + v13);
      if (a4 == -1 || (v16 = 0.0, v15 != a4))
      {
        v17 = *v12 + 4 * *(v12 + 20) * v15;
        v18 = *a2;
        result = cblas_sdot_NEWLAPACK();
        v16 = v19 + *(*(v12 + 32) + 4 * v15);
      }

      *(v6 + v13) = v16;
      v13 += 4;
    }

    while (4 * v8 != v13);
  }

  return result;
}

uint64_t sub_2991B8DCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*(a1 + 28) == 1)
  {
    result = *(a1 + 96);
    if (result && *(a1 + 88))
    {
      sub_2991A9804(result);
    }
  }

  else
  {
    result = *(a1 + 64);
    if (result && *(a1 + 56))
    {
      sub_2991B7A8C(result, a2, *(a1 + 24));
    }
  }

  *a3 = 0;
  return result;
}

void sub_2991B8F08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  sub_2991A8794(&a9, 0);
  sub_2991A8868(&a10, 0);
  _Unwind_Resume(a1);
}

void sub_2991B8F48(uint64_t a1, uint64_t a2, int a3)
{
  *a1 = &unk_2A1F626F8;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 20) = 0;
  *(a1 + 28) = 0;
  operator new();
}

void sub_2991B8FE8(uint64_t a1)
{
  sub_2991A8574(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_2991B9020(uint64_t a1, const char *a2)
{
  v3 = sub_2991A89A8(*(a1 + 40), a2);
  v4 = *(a1 + 40);
  if (v3)
  {
    v5 = *v4;
    v6 = v4[1];

    sub_2991B9258(a1, v5);
  }

  sub_2991A84D8(v4);
  return 0;
}

void sub_2991B9080(uint64_t a1, int a2)
{
  v2 = *(a1 + 144);
  if (v2)
  {
    sub_2991A926C(v2, a2);
  }
}

void sub_2991B9090(uint64_t a1@<X0>, uint64_t **a2@<X1>, float **a3@<X8>)
{
  v4 = *(a1 + 144);
  if (!v4)
  {
    v5 = (*a2)[1] - **a2;
    sub_2991B9890();
  }

  v6 = *(v4 + 8);

  sub_2991B9AA8(a1, a2, v6, a3);
}

void sub_2991B9108(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, const void **a4@<X8>)
{
  v7 = sub_2991B9204(a1, a2, a3);
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  if (v7)
  {
    sub_2991B6CFC(a4, (a2[1] - *a2) >> 2);
    if (a2[1] != *a2)
    {
      v8 = 0;
      do
      {
        v9 = (*(*a3 + 40))(a3, v8);
        if (v10)
        {
          v11 = sub_2991A7DB8(v10, v9);
        }

        else
        {
          v11 = 0;
        }

        v12 = v11;
        sub_2992141C0(a4, &v12);
        ++v8;
      }

      while (v8 < (a2[1] - *a2) >> 2);
    }
  }
}

void sub_2991B91E0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2991B9204(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a2[1] == *a2;
  }

  else
  {
    v3 = 1;
  }

  v4 = !v3;
  if (!v3)
  {
    sub_2991B9F08(a1, a2, a3, &v6);
    sub_2991A6CF0(v7, v6);
  }

  return v4;
}

void sub_2991B9258(uint64_t a1, unsigned __int8 *a2)
{
  v25 = *MEMORY[0x29EDCA608];
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  *(a1 + 20) = v4 & 1;
  *(a1 + 24) = (v4 >> 2) & 1;
  *(a1 + 28) = (v4 & 2) != 0;
  *(a1 + 30) = v6;
  *(a1 + 29) = v6 != 0;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = 5;
  }

  sub_2991A9078(&v23, v7);
  v8 = 0;
  if (v7 <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = v7;
  }

  do
  {
    *(v23 + v8) = *&a2[v8 + 4];
    *(v23 + v8 + 2) = *&a2[v8 + 6];
    v8 += 4;
  }

  while (4 * v9 != v8);
  if (*(a1 + 28))
  {
    for (i = 0; i != 16; i += 2)
    {
      v11 = &__p[i];
      *v11 = 0;
      v11[1] = 0;
    }

    v12 = 0;
    v13 = &__p[1];
    do
    {
      v14 = &a2[v12 + v8];
      *(v13 - 2) = *(v14 + 1);
      *v13 = *(v14 + 1);
      v13 += 2;
      v12 += 12;
    }

    while (v12 != 96);
    v15 = *v23;
    v16 = *(v23 + 1);
    operator new();
  }

  sub_2991A91B8(__p, v7);
  v17 = 0;
  v18 = &a2[v8 + 4];
  v19 = 2;
  do
  {
    *(__p[0] + v17) = v18;
    v18 += 4 * *(v23 + v19 - 2) * *(v23 + v19);
    v17 += 8;
    v19 += 4;
  }

  while (8 * v9 != v17);
  v20 = *__p[0];
  v21 = *v23;
  v22 = *(v23 + 1);
  operator new();
}

void sub_2991B981C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a20)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

void sub_2991B9A68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  sub_2991A8794(&a9, 0);
  sub_2991A8868(&a10, 0);
  _Unwind_Resume(a1);
}

void sub_2991B9AA8(uint64_t a1@<X0>, uint64_t **a2@<X1>, uint64_t a3@<X2>, float **a4@<X8>)
{
  if (*(a1 + 20) == 1)
  {
    sub_2991B9DB4(a1, a2, a3, a4);
  }

  else
  {
    sub_2991B9BEC(a1, a2, a3, a4);
  }
}

void sub_2991B9ABC(uint64_t a1, uint64_t a2, int a3)
{
  if (!a3)
  {
    v3 = (*(a1 + 20) - (*(a1 + 16) >> 2));
  }

  operator new();
}

void sub_2991B9BEC(uint64_t a1@<X0>, uint64_t **a2@<X1>, uint64_t a3@<X2>, float **a4@<X8>)
{
  v8 = *a2;
  v7 = a2[1];
  v10 = **a2;
  v9 = (*a2)[1];
  sub_2991AAFC8(a4, (v9 - v10) >> 2);
  LODWORD(v25) = 0;
  sub_2991AAFC8(&__p, (v9 - v10) >> 2);
  v11 = 0xAAAAAAAAAAAAAAABLL * (v7 - v8);
  if (v11 >= 2)
  {
    v12 = 0;
    v13 = v11 - 1;
    if (((v9 - v10) >> 2) <= 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = (v9 - v10) >> 2;
    }

    v15 = v13;
    while (1)
    {
      v16 = &(*a2)[3 * v12];
      sub_2991B9F08(a1, v16, a3, &v25);
      if (v9 != v10)
      {
        break;
      }

LABEL_14:
      ++v12;
      sub_2991A6CF0((v28 - __p) >> 2, __p);
      sub_2991A6C4C((a4[1] - *a4) >> 2, __p, *a4);
      if (v12 == v15)
      {
        goto LABEL_15;
      }
    }

    v17 = 0;
    v18 = *(a1 + 16);
    v19 = __p;
    v20 = v25;
    v21 = 4 * v26;
    while (1)
    {
      if (v18 == 0xFFFFFFFFLL)
      {
        v22 = *(v16[3] + 4 * v17);
      }

      else
      {
        v23 = 1.0;
        if (*(*v16 + 4 * v17) == v18)
        {
          goto LABEL_13;
        }

        v22 = *(v16[3] + 4 * v17);
        if (v22 == v18)
        {
          goto LABEL_13;
        }
      }

      v23 = *(v20 + 4 * v22);
LABEL_13:
      v19[v17++] = v23;
      v20 += v21;
      if (v14 == v17)
      {
        goto LABEL_14;
      }
    }
  }

LABEL_15:
  if (__p)
  {
    v28 = __p;
    operator delete(__p);
  }
}

void sub_2991B9D80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  v17 = *v15;
  if (*v15)
  {
    *(v15 + 8) = v17;
    operator delete(v17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2991B9DB4@<X0>(uint64_t a1@<X0>, uint64_t **a2@<X1>, uint64_t *a3@<X2>, float **a4@<X8>)
{
  v8 = 0xAAAAAAAAAAAAAAABLL * (a2[1] - *a2);
  v10 = **a2;
  v9 = (*a2)[1];
  LODWORD(v19) = 0;
  sub_2991AAFC8(a4, (v9 - v10) >> 2);
  if (v8 >= 2)
  {
    v11 = 0;
    v12 = (v8 - 1);
    if (((v9 - v10) >> 2) <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = (v9 - v10) >> 2;
    }

    do
    {
      v14 = &(*a2)[3 * v11];
      sub_2991BAB98(a1, v14, v14 + 3, a3, &v19);
      v15 = v19;
      if (v9 != v10)
      {
        v16 = 0;
        v17 = *(a1 + 16);
        do
        {
          if (v17 != -1 && *(*v14 + 4 * v16) == v17)
          {
            v15[v16] = 0.0;
          }

          ++v16;
        }

        while (v13 != v16);
      }

      ++v11;
      sub_2991A6C4C((a4[1] - *a4) >> 2, v15, *a4);
    }

    while (v11 != v12);
  }

  return sub_2991A6C28((a4[1] - *a4) >> 2, *a4, 0.43429);
}

void sub_2991B9EEC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2991B9F08(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a1 + 28) == 1)
  {
    sub_2991AB0DC(*(a1 + 88), a2, &__p);
    v8 = *(a1 + 96);
    v9 = sub_2991A5E8C(a3);
    sub_2991AB24C(v8, &__p, v9, v32);
    sub_2991A5EC4(a3, (*(a2 + 8) - *a2) >> 2);
    v10 = *(a1 + 104);
    v11 = sub_2991A5EB4(a3);
    sub_2991AB644(v10, v32, v11, v31);
    v12 = sub_2991A5EAC(a3);
    v13 = *&v31[16];
    v14 = *&v31[20];
    v15 = *&v31[20] * *&v31[16];
    v16 = *v12;
    if (v15)
    {
      v17 = *v31;
      v18 = *(a1 + 104);
      v19 = *(v18 + 120);
      v20 = *(v18 + 112);
      v21 = *v12;
      v22 = *&v31[20] * *&v31[16];
      do
      {
        v23 = *v17++;
        v24 = v19 * (v23 - v20);
        *v21++ = v24;
        --v22;
      }

      while (v22);
    }

    *a4 = v16;
    *(a4 + 8) = v15;
    *(a4 + 16) = v13;
    *(a4 + 20) = v14;
    *(a4 + 24) = 2;
    sub_2991A70E0((*(a2 + 8) - *a2) >> 2, *(*(a1 + 88) + 32), v16);
    if (__p)
    {
      v34 = __p;
      operator delete(__p);
    }
  }

  else
  {
    if (*(a1 + 24) == 1)
    {
      v25 = *(a3 + 8);
      sub_2991AA84C(&__p, ((*(a2 + 8) - *a2) >> 2) * *(*(a1 + 56) + 34));
      v26 = *(a1 + 56);
      v27 = *a2;
      if (*(a2 + 8) == *a2)
      {
        v30 = 0;
      }

      else
      {
        v28 = 0;
        do
        {
          memcpy(__p + 4 * v28 * *(v26 + 20), (*v26 + 4 * *(v26 + 20) * v27[v28]), 4 * *(v26 + 20));
          ++v28;
          v27 = *a2;
          v29 = *(a2 + 8) - *a2;
        }

        while (v28 < v29 >> 2);
        v26 = *(a1 + 56);
        v30 = v29 >> 2;
      }

      sub_2991BA200(a1, v25, &__p, v30, *(v26 + 34));
      sub_2991BA34C(*(a1 + 64), v25, v31);
      *v32[0].i8 = *v31;
      *&v32[1].u8[4] = *&v31[12];
      if (__p)
      {
        free(__p);
      }
    }

    else
    {
      sub_2991ABB5C(*(a1 + 56), a2, &__p);
      sub_2991BA3BC(*(a1 + 64), &__p, *(a3 + 8), v31);
      *v32[0].i8 = *v31;
      *&v32[1].u8[4] = *&v31[12];
      if (__p)
      {
        v34 = __p;
        operator delete(__p);
      }
    }

    if (*(a1 + 29) == 1)
    {
      sub_2991BA440(*(a1 + 80), v32, *(a3 + 16), v31);
      *v32[0].i8 = *v31;
      *&v32[1].u8[4] = *&v31[12];
    }

    sub_2991BA5D4(*(a1 + 72), v32, a3 + 48, *(a1 + 20), a4);
    sub_2991A70E0((*(a2 + 8) - *a2) >> 2, *(*(a1 + 56) + 32), *a4);
  }
}

void sub_2991BA1CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    free(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2991BA200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  LODWORD(v5) = a5;
  v6 = a4;
  v8 = *(a2 + 128);
  if ((a4 <= 1 || ((a4 + 2147483646) & (a4 - 1)) != 0) && (a4 < 1 || ((a4 + 0x7FFFFFFF) & a4) != 0) && ((a4 & 0x80000000) != 0 || ((a4 ^ 0x80000000) & (a4 + 1)) != 0) && a5 >= 1 && ((a5 + 0x7FFFFFFF) & a5) == 0 && (v13 = a4 | (a4 >> 1) | ((a4 | (a4 >> 1)) >> 2), v14 = v13 | (v13 >> 4) | ((v13 | (v13 >> 4)) >> 8), v15 = (v14 | HIWORD(v14)) + 1, *(a2 + 168) >= (v15 * a5)))
  {
    memcpy(*(a2 + 160), *a3, 4 * *(a3 + 8));
    sub_2991A7268(v15, v5, *(a2 + 160), *(a2 + 176));
    v16 = 0;
    v17 = 4 * v6;
    v18 = 4 * v15;
    v5 = v5;
    do
    {
      result = memcpy(v8, (*(a2 + 176) + v16), v17);
      v16 += v18;
      v8 += v17;
      --v5;
    }

    while (v5);
  }

  else
  {
    v9 = *a3;
    v11 = *(a2 + 128);

    return sub_2991A7268(a4, a5, v9, v8);
  }

  return result;
}

void sub_2991BA34C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2991A6DD4(*(a1 + 16), *(a1 + 20), *(a2 + 52), *a1, *(a2 + 32), *(a2 + 128), 0, 0);

  sub_2991BA698(a2, a3);
}

void sub_2991BA3BC(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_2991BA7F0(a1, a2, (a3 + 32));
  sub_2991A7044(*(a1 + 16), *(a1 + 20), *(a3 + 52), *a1, *(a3 + 32), *(a3 + 128), 0, 0);
  sub_2991A6608(*(a3 + 144), *(a3 + 148), *(a1 + 32), *(a3 + 128));

  sub_2991BA698(a3, a4);
}

void sub_2991BA440(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a2 + 16);
  v7 = *(a2 + 20);
  v9 = a3 + 32;
  sub_2991A7268(v8, *(a2 + 20), *a2, *(a3 + 32));
  v10 = *(v9 + 16);
  v11 = *(v9 + 20);
  v20 = *v9;
  v21 = v11 * v10;
  v22 = v10;
  v23 = v11;
  v24 = 2;
  sub_2991BA86C(a1, &v20, v9 + 152, (v9 + 48), v25);
  if (*(v9 + 264) == 1)
  {
    sub_2991BA974(v25, (a3 + 264), &v20);
  }

  if (v7)
  {
    v12 = 0;
    v13 = 0;
    v14 = v7;
    do
    {
      sub_2991A6CA4(v8, (*v9 + 4 * v12), (*(v9 + 96) + 4 * v13));
      v13 += 2 * v8;
      v12 += v8;
      --v14;
    }

    while (v14);
  }

  v15 = *(a3 + 96);
  v16 = *(a3 + 100);
  v20 = *(a3 + 80);
  v21 = v16 * v15;
  v22 = v15;
  v23 = v16;
  v24 = 2;
  sub_2991BAA10(a1, v25, &v20, (v9 + 96));
  sub_2991BAAC8(a1, v9, a3);
  sub_2991A7044(*(a1 + 24), *(a1 + 28), *(a3 + 144), *(a1 + 8), *(a3 + 128), *(a3 + 32), 0, 1);
  sub_2991A6D34(*(a1 + 24) * v7, *(a3 + 32));
  v17 = *(a1 + 24);
  v18 = *(a2 + 20);
  *a4 = *(a3 + 32);
  *(a4 + 8) = v18 * v17;
  *(a4 + 16) = v17;
  *(a4 + 20) = v18;
  *(a4 + 24) = 2;
}

void sub_2991BA5D4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v7 = *a3;
  v8 = *(a3 + 20);
  v11 = a2 + 16;
  v10 = *(a2 + 16);
  v9 = *(v11 + 4);
  *a5 = *a3;
  *(a5 + 8) = v8 * v9;
  *(a5 + 16) = v9;
  *(a5 + 20) = v8;
  *(a5 + 24) = 2;
  if (a4 == 1)
  {
    v12 = *(a1 + 16);
    v13 = v7;
    v14 = 1;
  }

  else
  {
    v12 = *(a1 + 20);
    v13 = v7;
    v14 = 0;
  }

  sub_2991A7044(v9, v10, v12, *a2, *a1, v13, 1, v14);
  if (*(a2 + 20))
  {
    v15 = 0;
    v16 = 0;
    do
    {
      sub_2991A6C4C(v8, *(a1 + 32), v7 + v15);
      ++v16;
      v15 += v8;
    }

    while (v16 < *(a2 + 20));
  }
}

void sub_2991BA698(unsigned int *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v16 = a1[1];
  v5 = *(a1 + 16);
  v6 = a1[37];
  v7 = v6 * *a1;
  v8 = v6 * *a1;
  v9 = 3 * *a1;
  v10 = &v5[v6 * (2 * *a1)];
  v11 = &v5[v6 * v9];
  v12 = (4 * *a1 - v9) * v6;
  sub_2991A6D78(v8, v5);
  sub_2991A6D34(v8, &v5[v7]);
  sub_2991A6D78(v8, v10);
  sub_2991A6D78(v12, v11);
  sub_2991A665C(v8, v10, *(a1 + 10));
  sub_2991A665C(v8, &v5[v7], v5);
  sub_2991A6C4C(v7, v5, *(a1 + 10));
  sub_2991A6768(a1[22], *(a1 + 10), v11);
  if (a1[2])
  {
    v13 = *(a1 + 4);
    v4 = a1[12];
    v14 = a1[13];
    memmove(v13, v11, 4 * v12);
  }

  else
  {
    v15 = *(a1 + 4);
    v14 = a1[13];
    v13 = (v15 + 4 * v16 * v14);
    sub_2991A6CA4(v12, v11, v13);
  }

  *a2 = v13;
  *(a2 + 8) = v4 * v14;
  *(a2 + 16) = v4;
  *(a2 + 20) = v14;
  *(a2 + 24) = 2;
}

void sub_2991BA7F0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = a2[1] - *a2;
  if (v4)
  {
    v7 = 0;
    v8 = 0;
    v9 = v4 >> 5;
    do
    {
      sub_2991A6CC4(*(v3 + v7 + 8), v9, v8++, *(v3 + v7), *a3);
      v3 = *a2;
      v9 = (a2[1] - *a2) >> 5;
      v7 += 32;
    }

    while (v9 > v8);
  }
}

void sub_2991BA86C(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v6 = *a1;
  v21 = *(a2 + 16);
  if (v21)
  {
    v7 = 0;
    v8 = 0;
    v9 = *(a2 + 20);
    do
    {
      if (v6)
      {
        v10 = 0;
        v11 = (*a2 + 4 * (v9 * v8));
        v12 = *a4 + 4 * (v9 * v8 * v6);
        v13 = v6;
        v14 = v7;
        do
        {
          v15 = sub_2991A6C74(v9, v11, (v12 + 4 * v10));
          *(*a3 + 4 * v14++) = LODWORD(v15);
          v10 += v9;
          --v13;
        }

        while (v13);
      }

      ++v8;
      v7 += v6;
    }

    while (v8 != v21);
  }

  sub_2991A70E0(v21, v6, *a3);
  v16 = *(a3 + 16);
  v17 = *(a3 + 20);
  *a5 = *a3;
  *(a5 + 8) = v17 * v16;
  *(a5 + 16) = v16;
  *(a5 + 20) = v17;
  *(a5 + 24) = 2;
}

uint64_t sub_2991BA974@<X0>(uint64_t a1@<X1>, float **a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 20);
  if (v5)
  {
    v8 = 0;
    v9 = *(a1 + 16);
    do
    {
      sub_2991A665C(v6, *a2, (*a1 + 4 * v8));
      v8 += v6;
      --v9;
    }

    while (v9);
  }

  result = sub_2991A71F8(v5, v6, *a1);
  v11 = *(a1 + 16);
  v12 = *(a1 + 20);
  *a3 = *a1;
  *(a3 + 8) = v12 * v11;
  *(a3 + 16) = v11;
  *(a3 + 20) = v12;
  *(a3 + 24) = 2;
  return result;
}

unsigned __int8 *sub_2991BAA10(unsigned __int8 *result, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    v8 = 0;
    v9 = 0;
    v10 = *result;
    v11 = *(a3 + 20) / v10;
    do
    {
      result = sub_2991A7044(1, v10, v11, *a2 + 4 * v8, (*a3 + 4 * v11 * v10 * v9), (*a4 + 4 * (2 * v11 * v9) + 4 * v11), 0, 0);
      ++v9;
      v8 += v10;
      --v4;
    }

    while (v4);
  }

  return result;
}

void sub_2991BAAC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 160);
  v5 = *(a2 + 16);
  if (v5)
  {
    v7 = 0;
    v8 = 0;
    v9 = *(a3 + 80) + 4 * *(a3 + 8) * v4;
    v10 = *(a2 + 20);
    v11 = v10 * *(a3 + 4);
    do
    {
      sub_2991A6CA4(v10, (*a2 + 4 * v7), (v9 + 4 * v8));
      v8 += v11;
      v7 += v10;
      --v5;
    }

    while (v5);
    v4 = *(a3 + 160);
  }

  v12 = *(a3 + 4);
  if (*(a3 + 296) == 1)
  {
    *(*(a3 + 264) + 4 * v4) = 1065353216;
    if (v12 - 1 == v4)
    {
      *(a3 + 296) = 0;
    }
  }

  *(a3 + 160) = (v4 + 1) % v12;
}

void sub_2991BAB98(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  if (*(a1 + 28) == 1)
  {
    sub_2991AB0DC(*(a1 + 88), a2, &__p);
    v10 = *(a1 + 96);
    v11 = sub_2991A5E8C(a4);
    sub_2991AB24C(v10, &__p, v11, v32);
    sub_2991A5EC4(a4, (*(a2 + 8) - *a2) >> 2);
    v12 = sub_2991A5EBC(a4);
    v13 = *&v32[8];
    v14 = *v12;
    if (*&v32[8])
    {
      v15 = *(a1 + 96);
      v16 = *(v15 + 120);
      v17 = *v32;
      v18 = *(v15 + 112);
      v19 = *v12;
      do
      {
        v20 = *v17++;
        v21 = v16 * (v20 - v18);
        *v19++ = v21;
        --v13;
      }

      while (v13);
    }

    v22 = *(a1 + 104);
    *v31 = v14;
    *&v31[8] = *&v32[20] * *&v32[16];
    *&v31[16] = *&v32[16];
    *&v31[20] = *&v32[20];
    *&v31[24] = 2;
    v23 = *(a1 + 16);
    v24 = sub_2991A5EAC(a4);
    sub_2991B6AD0(v22, v31, a3, v23, v24, a5);
    if (__p)
    {
      v34 = __p;
      operator delete(__p);
    }
  }

  else
  {
    if (*(a1 + 24) == 1)
    {
      v25 = a4[1];
      sub_2991AA84C(&__p, ((*(a2 + 8) - *a2) >> 2) * *(*(a1 + 56) + 34));
      v26 = *(a1 + 56);
      v27 = *a2;
      if (*(a2 + 8) == *a2)
      {
        v30 = 0;
      }

      else
      {
        v28 = 0;
        do
        {
          memcpy(__p + 4 * v28 * *(v26 + 20), (*v26 + 4 * *(v26 + 20) * v27[v28]), 4 * *(v26 + 20));
          ++v28;
          v27 = *a2;
          v29 = *(a2 + 8) - *a2;
        }

        while (v28 < v29 >> 2);
        v26 = *(a1 + 56);
        v30 = v29 >> 2;
      }

      sub_2991BA200(a1, v25, &__p, v30, *(v26 + 34));
      sub_2991BA34C(*(a1 + 64), v25, v31);
      *v32 = *v31;
      *&v32[12] = *&v31[12];
      if (__p)
      {
        free(__p);
      }
    }

    else
    {
      sub_2991ABB5C(*(a1 + 56), a2, &__p);
      sub_2991BA3BC(*(a1 + 64), &__p, a4[1], v31);
      *v32 = *v31;
      *&v32[12] = *&v31[12];
      if (__p)
      {
        v34 = __p;
        operator delete(__p);
      }
    }

    if (*(a1 + 29) == 1)
    {
      sub_2991BA440(*(a1 + 80), v32, a4[2], v31);
      *v32 = *v31;
      *&v32[12] = *&v31[12];
    }

    sub_2991BAE6C(*(a1 + 72), v32, a3, *(a1 + 16), a4 + 6, a5);
  }
}

void sub_2991BAE3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    free(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2991BAE6C@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, int a4@<W3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a5;
  v7 = *(a5 + 5);
  *a6 = *a5;
  *(a6 + 8) = v7;
  *(a6 + 16) = 1;
  *(a6 + 20) = v7;
  *(a6 + 24) = 1;
  v8 = *(a2 + 5);
  if (v8)
  {
    v12 = result;
    v13 = 0;
    v14 = *(a2 + 4);
    do
    {
      v15 = *(*a3 + v13);
      if (a4 == -1 || (v16 = 0.0, v15 != a4))
      {
        v17 = *v12 + 4 * *(v12 + 20) * v15;
        v18 = *a2;
        result = cblas_sdot_NEWLAPACK();
        v16 = v19 + *(*(v12 + 32) + 4 * v15);
      }

      *(v6 + v13) = v16;
      v13 += 4;
    }

    while (4 * v8 != v13);
  }

  return result;
}

uint64_t sub_2991BAF48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*(a1 + 28) == 1)
  {
    result = *(a1 + 96);
    if (result && *(a1 + 88))
    {
      sub_2991A9804(result);
    }
  }

  else
  {
    result = *(a1 + 64);
    if (result && *(a1 + 56))
    {
      sub_2991B9ABC(result, a2, *(a1 + 24));
    }
  }

  *a3 = 0;
  return result;
}

void sub_2991BB084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  sub_2991A8794(&a9, 0);
  sub_2991A8868(&a10, 0);
  _Unwind_Resume(a1);
}

void sub_2991BB0FC(_DWORD *a1, int *__e, long double a3)
{
  if (a3 == 0.0)
  {
    *a1 = 0;
    *__e = 0;
  }

  else
  {
    v5 = llround(frexp(a3, __e) * 2147483650.0);
    if (v5 == 0x80000000)
    {
      ++*__e;
      LODWORD(v5) = 0x40000000;
    }

    *a1 = v5;
  }
}

uint64_t sub_2991BB16C()
{
  if (qword_2A145FCF8 != -1)
  {
    sub_2991BB1CC();
  }

  return dword_2A145FCF0;
}

uint64_t sub_2991BB1A4()
{
  qos_class_self();
  result = pthread_qos_max_parallelism();
  dword_2A145FCF0 = result;
  return result;
}

void *sub_2991BB2A4(void *a1)
{
  *a1 = &unk_2A1F62788;
  v2 = a1[1];
  if (v2)
  {
    v3 = *(v2 + 32);
    if (v3)
    {
      *(v2 + 40) = v3;
      operator delete(v3);
    }

    MEMORY[0x29C29BFB0](v2, 0x1050C40AE4E9D09);
  }

  return a1;
}

void sub_2991BB318(void *a1)
{
  sub_2991BB2A4(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_2991BB350@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *(result + 8);
  if (*(v4 + 16) <= a2)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  else
  {
    v5 = *(v4 + 20);
    v6 = *v4 + v5 * a2;
    v7 = 0uLL;
    v8 = 0;
    result = sub_2991BB3EC(&v7, v6, v6 + v5, v5);
    *a3 = v7;
    a3[2] = v8;
  }

  return result;
}

uint64_t sub_2991BB3EC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_2991A5508(result, a4);
  }

  return result;
}

void sub_2991BB444(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_2991BB460(const char *a1, size_t a2)
{
  v15 = *MEMORY[0x29EDCA608];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  *__s1 = 0u;
  v8 = 0u;
  v6 = 128;
  if (sysctlbyname("hw.machine", __s1, &v6, 0, 0))
  {
    result = 0;
  }

  else
  {
    result = strncmp(__s1, a1, a2) == 0;
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_2991BB514()
{
  if (sub_2991BB460("iPhone", 6uLL) || !sub_2991BB460("iPad", 4uLL))
  {
    return 2;
  }

  v5 = 8;
  v6 = 0;
  if (sysctlbyname("hw.cpufamily", &v6, &v5, 0, 0))
  {
    v0 = -1;
  }

  else
  {
    v0 = v6;
  }

  v1 = 3;
  v2 = 2;
  v3 = sub_2991BB16C();
  if (v0 <= 1741614738)
  {
    if (v0 == 131287967)
    {
      if (v3 == 8)
      {
        return 4;
      }

      else
      {
        return 2;
      }
    }

    else if (v0 != 747742334)
    {
      return v2;
    }

    return v1;
  }

  if (v0 == 1741614739)
  {
    return v1;
  }

  if (v0 == 3894312694 || v0 == 2465937352)
  {
    return 2;
  }

  return v2;
}

uint64_t sub_2991BB630()
{
  if ((atomic_load_explicit(&qword_2A145FD08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A145FD08))
  {
    operator new();
  }

  return qword_2A145FD00;
}

void sub_2991BB6FC(_Unwind_Exception *a1)
{
  MEMORY[0x29C29BFB0](v1, 0x1080C40A6D20D6DLL);
  __cxa_guard_abort(&qword_2A145FD08);
  _Unwind_Resume(a1);
}

void *sub_2991BB734(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A1F628D8;
  v2 = a1[3];
  if (v2)
  {
    MEMORY[0x29C29BF70](v2, 0x1000C8052888210);
    a1[3] = 0;
  }

  return a1;
}

uint64_t sub_2991BB798(uint64_t a1, uint64_t a2, _DWORD *a3, unint64_t a4)
{
  *a1 = &unk_2A1F627B8;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = &unk_2A1F628D8;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = &unk_2A1F628D8;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  sub_29919C3A8((a1 + 96));
  sub_2991BB8CC(a1, a3, a4, &v8);
  sub_2991ED50C((a1 + 96), &v8);
  sub_2991ED2F4(&v8);
  return a1;
}

void sub_2991BB87C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2991ED2F4(va);
  sub_2991ED2F4((v4 + 96));
  sub_2991BB734(v5);
  sub_2991BB734(v3);
  v7 = *v2;
  *v2 = 0;
  if (v7)
  {
    sub_2991C0E20(v2, v7);
  }

  _Unwind_Resume(a1);
}

void *sub_2991BB8CC@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = a2;
  v9 = a3;
  result = sub_2991BBF74(a2, a3, (a1 + 88), a4);
  if (!*a4)
  {
    sub_2991ED2F4(a4);
    result = sub_2991EB7B4(&v8, 4uLL, a4);
    if (!*a4)
    {
      sub_2991ED2F4(a4);
      result = sub_2991BBF74(v8, v9, (a1 + 92), a4);
      if (!*a4)
      {
        sub_2991ED2F4(a4);
        result = sub_2991EB7B4(&v8, 4uLL, a4);
        if (!*a4)
        {
          sub_2991ED2F4(a4);
          v7 = 0;
          result = sub_2991BC180(v8, v9, &v7, a4);
          if (!*a4)
          {
            sub_2991ED2F4(a4);
            result = sub_2991EB7B4(&v8, 4uLL, a4);
            if (!*a4)
            {
              sub_2991ED2F4(a4);
              sub_2991BC38C();
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_2991BBF34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991BC48C(va);
  _Unwind_Resume(a1);
}

void *sub_2991BBF74@<X0>(_DWORD *a1@<X0>, unint64_t a2@<X1>, _DWORD *a3@<X2>, void *a4@<X8>)
{
  if (a2 <= 3)
  {
    v7 = 13;
    v6 = sub_2991BF614(&v8);
    sub_2991C0E9C(v6, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/util.h", 62);
    sub_2991C0E9C(&v8, "(", 1);
    MEMORY[0x29C29BD30](&v8, 448);
    sub_2991C0E9C(&v8, ") [", 3);
    sub_2991C0E9C(&v8, "string.size() >= sizeof(T)", 26);
    sub_2991C0E9C(&v8, "] ", 2);
    sub_2991BC3FC(&v7, a4);
    v8 = *MEMORY[0x29EDC9538];
    *(&v8 + *(v8 - 24)) = *(MEMORY[0x29EDC9538] + 24);
    v9 = MEMORY[0x29EDC9570] + 16;
    if (v11 < 0)
    {
      operator delete(v10[7].__locale_);
    }

    v9 = MEMORY[0x29EDC9568] + 16;
    std::locale::~locale(v10);
    std::ostream::~ostream();
    return MEMORY[0x29C29BF00](&v12);
  }

  else
  {
    *a3 = *a1;

    return sub_29919C3A8(a4);
  }
}

void *sub_2991BC180@<X0>(_DWORD *a1@<X0>, unint64_t a2@<X1>, _DWORD *a3@<X2>, void *a4@<X8>)
{
  if (a2 <= 3)
  {
    v7 = 13;
    v6 = sub_2991BF614(&v8);
    sub_2991C0E9C(v6, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/util.h", 62);
    sub_2991C0E9C(&v8, "(", 1);
    MEMORY[0x29C29BD30](&v8, 448);
    sub_2991C0E9C(&v8, ") [", 3);
    sub_2991C0E9C(&v8, "string.size() >= sizeof(T)", 26);
    sub_2991C0E9C(&v8, "] ", 2);
    sub_2991BC3FC(&v7, a4);
    v8 = *MEMORY[0x29EDC9538];
    *(&v8 + *(v8 - 24)) = *(MEMORY[0x29EDC9538] + 24);
    v9 = MEMORY[0x29EDC9570] + 16;
    if (v11 < 0)
    {
      operator delete(v10[7].__locale_);
    }

    v9 = MEMORY[0x29EDC9568] + 16;
    std::locale::~locale(v10);
    std::ostream::~ostream();
    return MEMORY[0x29C29BF00](&v12);
  }

  else
  {
    *a3 = *a1;

    return sub_29919C3A8(a4);
  }
}

void sub_2991BC3FC(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  std::stringbuf::str();
  if ((v7 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v7 & 0x80u) == 0)
  {
    v5 = v7;
  }

  else
  {
    v5 = __p[1];
  }

  sub_2991ED458(a2, v3, v4, v5);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2991BC470(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2991BC48C(uint64_t a1)
{
  v2 = MEMORY[0x29EDC9538];
  v3 = *MEMORY[0x29EDC9538];
  *(a1 + 8) = *MEMORY[0x29EDC9538];
  *(a1 + 8 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 16) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  *(a1 + 16) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 24));
  std::ostream::~ostream();
  MEMORY[0x29C29BF00](a1 + 120);
  return a1;
}

void *sub_2991BC5B0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1 || (v2 = **v1, (result = __dynamic_cast(v1, &unk_2A1F628A8, &unk_2A1F63888, 16)) == 0))
  {
    v9 = 1;
    v4 = sub_2991C0E9C(MEMORY[0x29EDC93C0], "model_interface.cc", 18);
    v5 = sub_2991C0E9C(v4, "(", 1);
    v6 = MEMORY[0x29C29BD30](v5, 103);
    v7 = sub_2991C0E9C(v6, ") [", 3);
    v8 = sub_2991C0E9C(v7, "(model_proto = dynamic_cast<const ModelProto *>(model_proto_))", 62);
    sub_2991C0E9C(v8, "] ", 2);
    result = sub_2991BF944(&v9);
    __break(1u);
  }

  return result;
}

void *sub_2991BC6A8(void *a1)
{
  *a1 = &unk_2A1F627B8;
  sub_2991ED2F4(a1 + 12);
  a1[8] = 0;
  a1[9] = 0;
  a1[7] = &unk_2A1F628D8;
  v2 = a1[10];
  if (v2)
  {
    MEMORY[0x29C29BF70](v2, 0x1000C8052888210);
    a1[10] = 0;
  }

  a1[4] = 0;
  a1[5] = 0;
  a1[3] = &unk_2A1F628D8;
  v3 = a1[6];
  if (v3)
  {
    MEMORY[0x29C29BF70](v3, 0x1000C8052888210);
    a1[6] = 0;
  }

  v4 = a1[2];
  a1[2] = 0;
  if (v4)
  {
    sub_2991C0E20((a1 + 2), v4);
  }

  return a1;
}

const char *sub_2991BC788(uint64_t a1)
{
  (*(**(a1 + 8) + 32))(*(a1 + 8));
  if (v2)
  {
    return (*(**(a1 + 8) + 32))(*(a1 + 8));
  }

  else
  {
    return "<unk>";
  }
}

const char *sub_2991BC80C(uint64_t a1)
{
  (*(**(a1 + 8) + 40))(*(a1 + 8));
  if (v2)
  {
    return (*(**(a1 + 8) + 40))(*(a1 + 8));
  }

  else
  {
    return "<s>";
  }
}

const char *sub_2991BC890(uint64_t a1)
{
  (*(**(a1 + 8) + 48))(*(a1 + 8));
  if (v2)
  {
    return (*(**(a1 + 8) + 48))(*(a1 + 8));
  }

  else
  {
    return "</s>";
  }
}

const char *sub_2991BC914(uint64_t a1)
{
  (*(**(a1 + 8) + 56))(*(a1 + 8));
  if (v2)
  {
    return (*(**(a1 + 8) + 56))(*(a1 + 8));
  }

  else
  {
    return "<pad>";
  }
}

uint64_t sub_2991BC998(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *(a1 + 72);
  v4 = *v3;
  if (a3)
  {
    v5 = 0;
    v6 = a2;
    v7 = a3;
    while (1)
    {
      v8 = *v6++;
      v5 ^= (v4 >> 10 << ((v4 >> 6) & 8)) ^ v8;
      v4 = v3[v5];
      if ((v4 & 0x800000FF) != v8)
      {
        break;
      }

      if (!--v7)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    v9 = *a2;
    if (*a2)
    {
      v5 = 0;
      v10 = a2 + 1;
      while (1)
      {
        v5 ^= (v4 >> 10 << ((v4 >> 6) & 8)) ^ v9;
        v4 = v3[v5];
        if ((v4 & 0x800000FF) != v9)
        {
          break;
        }

        v11 = *v10++;
        v9 = v11;
        if (!v11)
        {
LABEL_10:
          if ((v4 & 0x100) != 0)
          {
            goto LABEL_23;
          }

          break;
        }
      }
    }

    else
    {
      v5 = 0;
      if ((v4 & 0x100) != 0)
      {
LABEL_23:
        v19 = v5 ^ (v4 >> 10 << ((v4 >> 6) & 8));
        return v3[v19] & 0x7FFFFFFF;
      }
    }
  }

  v3 = *(a1 + 40);
  v12 = *v3;
  if (a3)
  {
    v13 = 0;
    while (1)
    {
      v14 = *a2++;
      v13 ^= (v12 >> 10 << ((v12 >> 6) & 8)) ^ v14;
      v12 = v3[v13];
      if ((v12 & 0x800000FF) != v14)
      {
        return *(a1 + 88);
      }

      if (!--a3)
      {
        goto LABEL_20;
      }
    }
  }

  v15 = *a2;
  if (*a2)
  {
    v13 = 0;
    v16 = a2 + 1;
    while (1)
    {
      v13 ^= (v12 >> 10 << ((v12 >> 6) & 8)) ^ v15;
      v12 = v3[v13];
      if ((v12 & 0x800000FF) != v15)
      {
        return *(a1 + 88);
      }

      v17 = *v16++;
      v15 = v17;
      if (!v17)
      {
LABEL_20:
        if ((v12 & 0x100) != 0)
        {
          goto LABEL_25;
        }

        return *(a1 + 88);
      }
    }
  }

  v13 = 0;
  if ((v12 & 0x100) == 0)
  {
    return *(a1 + 88);
  }

LABEL_25:
  v19 = v13 ^ (v12 >> 10 << ((v12 >> 6) & 8));
  return v3[v19] & 0x7FFFFFFF;
}

void sub_2991BCB08(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  (*(*a1 + 16))(&__p);
  v12 = __p;
  sub_2991ED2F4(&__p);
  if (v12)
  {
    sub_2991ED508(a6, a1 + 96);
  }

  else
  {
    v13 = (*(*a1 + 128))(a1);
    sub_2991BCD04(a1 + 24, a2, a3, a4, v13, &__p);
    v14 = __p;
    v15 = v22;
    while (v14 != v15)
    {
      v16 = *v14;
      if (((*(*a1 + 144))(a1, v16) & 1) == 0 && ((*(*a1 + 152))(a1, v16) & 1) == 0)
      {
        v20[0] = (*(*a1 + 120))(a1, v16);
        v20[1] = v17;
        v18 = a5[1];
        if (v18 >= a5[2])
        {
          v19 = sub_2991C13A4(a5, v20);
        }

        else
        {
          sub_2991C12E0(a5, v20);
          v19 = (v18 + 24);
        }

        a5[1] = v19;
      }

      v14 += 4;
    }

    sub_2991ED508(a6, a1 + 96);
    if (__p)
    {
      v22 = __p;
      operator delete(__p);
    }
  }
}

void sub_2991BCCE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2991BCD04(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t *a6@<X8>)
{
  if (a4 != -1)
  {
    a5 = a4;
  }

  sub_2991C122C(a6, a5);
  v12 = sub_2991BFA24(a1, a2, *a6, (a6[1] - *a6) >> 4, a3, a4);
  sub_2991BFD2C(a6, v12);
}

void sub_2991BCD84(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2991BCDA0(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, const void **a5@<X4>, uint64_t a6@<X8>)
{
  (*(*a1 + 16))(&__p);
  v12 = __p;
  sub_2991ED2F4(&__p);
  if (v12)
  {
    sub_2991ED508(a6, a1 + 96);
  }

  else
  {
    v13 = (*(*a1 + 128))(a1);
    sub_2991BCD04(a1 + 24, a2, a3, a4, v13, &__p);
    v14 = __p;
    v15 = v28;
    if (__p != v28)
    {
      do
      {
        v16 = *v14;
        if (((*(*a1 + 144))(a1, v16) & 1) == 0 && ((*(*a1 + 152))(a1, v16) & 1) == 0)
        {
          v18 = a5[1];
          v17 = a5[2];
          if (v18 >= v17)
          {
            v20 = *a5;
            v21 = v18 - *a5;
            v22 = v21 >> 2;
            v23 = (v21 >> 2) + 1;
            if (v23 >> 62)
            {
              sub_299212A8C();
            }

            v24 = v17 - v20;
            if (v24 >> 1 > v23)
            {
              v23 = v24 >> 1;
            }

            if (v24 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v25 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v25 = v23;
            }

            if (v25)
            {
              sub_2992F86B0(a5, v25);
            }

            *(4 * v22) = v16;
            v19 = 4 * v22 + 4;
            memcpy(0, v20, v21);
            v26 = *a5;
            *a5 = 0;
            a5[1] = v19;
            a5[2] = 0;
            if (v26)
            {
              operator delete(v26);
            }
          }

          else
          {
            *v18 = v16;
            v19 = (v18 + 4);
          }

          a5[1] = v19;
        }

        v14 += 4;
      }

      while (v14 != v15);
    }

    sub_2991ED508(a6, a1 + 96);
    if (__p)
    {
      v28 = __p;
      operator delete(__p);
    }
  }
}

void sub_2991BCFD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2991BCFF8(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, unint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  (*(*a1 + 16))(&v23);
  v10 = v23;
  sub_2991ED2F4(&v23);
  if (v10)
  {
    sub_2991ED508(a5, a1 + 96);
  }

  else
  {
    sub_2991BD2B4(a1 + 24, a2, a3, &v23);
    v11 = v23;
    v12 = v24;
    while (v11 != v12)
    {
      v13 = *v11;
      if (((*(*a1 + 144))(a1, v13) & 1) == 0 && ((*(*a1 + 152))(a1, v13) & 1) == 0)
      {
        __p[0] = (*(*a1 + 120))(a1, v13);
        __p[1] = v14;
        v15 = a4[1];
        if (v15 >= a4[2])
        {
          v16 = sub_2991C13A4(a4, __p);
        }

        else
        {
          sub_2991C12E0(a4, __p);
          v16 = (v15 + 24);
        }

        a4[1] = v16;
      }

      v11 += 4;
    }

    if (a3 && (*(*a1 + 184))(a1))
    {
      if (a3 < 3 || (*a2 == 38626 ? (v17 = a2[2] == 129) : (v17 = 0), !v17))
      {
        v25 = *a2;
        sub_2991BED88("<0x%02X>", &v25, __p);
        v18 = a4[1];
        if (v18 >= a4[2])
        {
          v20 = sub_2991C153C(a4, __p);
        }

        else
        {
          if (SHIBYTE(v22) < 0)
          {
            sub_2991A110C(a4[1], __p[0], __p[1]);
          }

          else
          {
            v19 = *__p;
            *(v18 + 16) = v22;
            *v18 = v19;
          }

          v20 = v18 + 24;
          a4[1] = v18 + 24;
        }

        a4[1] = v20;
        if (SHIBYTE(v22) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    sub_2991ED508(a5, a1 + 96);
    if (v23)
    {
      v24 = v23;
      operator delete(v23);
    }
  }
}

void sub_2991BD268(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17)
{
  *(v17 + 8) = v18;
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_2991BD2B4(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_2991C122C(a4, a3 + 1);
  v8 = *a4;
  v9 = (a4[1] - *a4) >> 4;
  v10 = *(a1 + 16);
  v11 = (*v10 >> 10 << ((*v10 >> 6) & 8));
  if (a3)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = a2[v12];
      v15 = v11 ^ v14;
      v16 = v10[v15];
      if ((v16 & 0x800000FF) != v14)
      {
        break;
      }

      v11 = v15 ^ (v16 >> 10 << ((v16 >> 6) & 8));
      if ((v16 & 0x100) != 0)
      {
        if (v13 < v9)
        {
          v17 = v8 + 16 * v13;
          *v17 = v10[v11] & 0x7FFFFFFF;
          *(v17 + 8) = v12 + 1;
        }

        ++v13;
      }

      ++v12;
    }

    while (a3 != v12);
  }

  else
  {
    v18 = *a2;
    if (*a2)
    {
      v13 = 0;
      v19 = 1;
      do
      {
        v20 = v11 ^ v18;
        v21 = v10[v20];
        if ((v21 & 0x800000FF) != v18)
        {
          break;
        }

        v11 = v20 ^ (v21 >> 10 << ((v21 >> 6) & 8));
        if ((v21 & 0x100) != 0)
        {
          if (v13 < v9)
          {
            v22 = v8 + 16 * v13;
            *v22 = v10[v11] & 0x7FFFFFFF;
            *(v22 + 8) = v19;
          }

          ++v13;
        }

        v18 = a2[v19++];
      }

      while (v18);
    }

    else
    {
      v13 = 0;
    }
  }

  sub_2991BFD2C(a4, v13);
}

void sub_2991BD404(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2991BD450(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, unint64_t a3@<X2>, const void **a4@<X3>, uint64_t a5@<X8>)
{
  (*(*a1 + 16))(&v41);
  v10 = v41;
  sub_2991ED2F4(&v41);
  if (v10)
  {
    sub_2991ED508(a5, a1 + 96);
  }

  else
  {
    sub_2991BD2B4(a1 + 24, a2, a3, &v41);
    v11 = v41;
    v12 = v42;
    while (v11 != v12)
    {
      v13 = *v11;
      if (((*(*a1 + 144))(a1, v13) & 1) == 0 && ((*(*a1 + 152))(a1, v13) & 1) == 0)
      {
        v15 = a4[1];
        v14 = a4[2];
        if (v15 >= v14)
        {
          v17 = *a4;
          v18 = v15 - *a4;
          v19 = v18 >> 2;
          v20 = (v18 >> 2) + 1;
          if (v20 >> 62)
          {
            sub_299212A8C();
          }

          v21 = v14 - v17;
          if (v21 >> 1 > v20)
          {
            v20 = v21 >> 1;
          }

          v22 = v21 >= 0x7FFFFFFFFFFFFFFCLL;
          v23 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v22)
          {
            v23 = v20;
          }

          if (v23)
          {
            sub_2992F86B0(a4, v23);
          }

          *(4 * v19) = v13;
          v16 = 4 * v19 + 4;
          memcpy(0, v17, v18);
          v24 = *a4;
          *a4 = 0;
          a4[1] = v16;
          a4[2] = 0;
          if (v24)
          {
            operator delete(v24);
          }
        }

        else
        {
          *v15 = v13;
          v16 = (v15 + 4);
        }

        a4[1] = v16;
      }

      v11 += 4;
    }

    if (a3 && (*(*a1 + 184))(a1))
    {
      if (a3 < 3 || (*a2 == 38626 ? (v25 = a2[2] == 129) : (v25 = 0), !v25))
      {
        v43 = *a2;
        sub_2991BED88("<0x%02X>", &v43, __p);
        if ((v40 & 0x80u) == 0)
        {
          v26 = __p;
        }

        else
        {
          v26 = __p[0];
        }

        if ((v40 & 0x80u) == 0)
        {
          v27 = v40;
        }

        else
        {
          v27 = __p[1];
        }

        v28 = (*(*a1 + 112))(a1, v26, v27);
        v30 = a4[1];
        v29 = a4[2];
        if (v30 >= v29)
        {
          v32 = *a4;
          v33 = v30 - *a4;
          v34 = v33 >> 2;
          v35 = (v33 >> 2) + 1;
          if (v35 >> 62)
          {
            sub_299212A8C();
          }

          v36 = v29 - v32;
          if (v36 >> 1 > v35)
          {
            v35 = v36 >> 1;
          }

          v22 = v36 >= 0x7FFFFFFFFFFFFFFCLL;
          v37 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v22)
          {
            v37 = v35;
          }

          if (v37)
          {
            sub_2992F86B0(a4, v37);
          }

          *(4 * v34) = v28;
          v31 = 4 * v34 + 4;
          memcpy(0, v32, v33);
          v38 = *a4;
          *a4 = 0;
          a4[1] = v31;
          a4[2] = 0;
          if (v38)
          {
            operator delete(v38);
          }
        }

        else
        {
          *v30 = v28;
          v31 = (v30 + 4);
        }

        a4[1] = v31;
        if (v40 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    sub_2991ED508(a5, a1 + 96);
    if (v41)
    {
      v42 = v41;
      operator delete(v41);
    }
  }
}

void sub_2991BD7C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2991BD808(uint64_t a1)
{
  v52 = 0;
  v53 = 0;
  v50 = 0;
  v51 = &v52;
  v48 = &v49;
  v49 = 0;
  *(a1 + 88) = -1;
  v47[0] = 0;
  v47[1] = 0;
  v46 = v47;
  LOBYTE(v54) = 0;
  sub_2991C167C(&__p, 256);
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2 - 16;
  }

  else
  {
    v3 = 0;
  }

  if (*(v3 + 64) < 1)
  {
LABEL_35:
    if (*(a1 + 88) == -1)
    {
      sub_2991ED458(&v54, 13, "unk is not defined.", 19);
      sub_2991ED50C((a1 + 96), &v54);
    }

    else
    {
      v24 = *(v3 + 80);
      if (!v24)
      {
        v24 = &unk_2A1461A18;
      }

      if (v24[248] != 1 || (*&v54 = __p, DWORD2(v54) = 0, sub_2991C1D38(&v54, v45, &v42), v42.__r_.__value_.__l.__data_ == __p + 8 * (v45 >> 6)) && LODWORD(v42.__r_.__value_.__r.__words[1]) == (v45 & 0x3F))
      {
        if (!v53 || (sub_2991BE0B8(a1 + 24, &v51, &v54), sub_2991ED50C((a1 + 96), &v54), sub_2991ED2F4(&v54), (*(*a1 + 16))(&v54, a1), v25 = v54, sub_2991ED2F4(&v54), !v25))
        {
          if (!v50 || (sub_2991BE0B8(a1 + 56, &v48, &v54), sub_2991ED50C((a1 + 96), &v54), sub_2991ED2F4(&v54), (*(*a1 + 16))(&v54, a1), v26 = v54, sub_2991ED2F4(&v54), !v26))
          {
            sub_2991BE580();
          }
        }

        goto LABEL_69;
      }

      sub_2991ED50C((a1 + 96), &v54);
    }

LABEL_68:
    sub_2991ED2F4(&v54);
    goto LABEL_69;
  }

  v4 = 0;
  while (1)
  {
    v5 = sub_2991C01E8(v3 + 56, v4);
    v6 = v5;
    v7 = *(v5 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v8 = *(v7 + 23);
    if (v8 < 0)
    {
      if (!*(v7 + 8))
      {
LABEL_47:
        sub_2991ED458(&v54, 13, "piece must not be empty.", 24);
        sub_2991ED50C((a1 + 96), &v54);
        goto LABEL_68;
      }
    }

    else if (!*(v7 + 23))
    {
      goto LABEL_47;
    }

    v9 = *(v5 + 60);
    v10 = v9 > 5;
    v11 = (1 << v9) & 0x32;
    if (v10 || v11 == 0)
    {
      v13 = &v48;
    }

    else
    {
      v13 = &v51;
    }

    if ((v8 & 0x80000000) != 0)
    {
      v14 = v7;
      v7 = *v7;
      v8 = *(v14 + 8);
    }

    *&v54 = v7;
    *(&v54 + 1) = v8;
    LODWORD(v55) = v4;
    sub_2991C18F8(v13, &v54);
    if ((v15 & 1) == 0)
    {
      break;
    }

    v16 = *(v6 + 60);
    if (v16 == 4)
    {
      v17 = *(v6 + 48) & 0xFFFFFFFFFFFFFFFELL;
      v18 = *(v17 + 23);
      if (v18 < 0)
      {
        v17 = *v17;
        v18 = *((*(v6 + 48) & 0xFFFFFFFFFFFFFFFELL) + 8);
      }

      *&v54 = v17;
      *(&v54 + 1) = v18;
      sub_2991C1CA4(&v46, &v54);
      v16 = *(v6 + 60);
    }

    if (v16 == 6)
    {
      v19 = *(v3 + 80);
      if (!v19)
      {
        v19 = &unk_2A1461A18;
      }

      if ((v19[248] & 1) == 0)
      {
        v34 = *(v6 + 48) & 0xFFFFFFFFFFFFFFFELL;
        std::operator+<char>();
        v36 = *&v35->__r_.__value_.__l.__data_;
        v55 = v35->__r_.__value_.__r.__words[2];
        v54 = v36;
        v35->__r_.__value_.__l.__size_ = 0;
        v35->__r_.__value_.__r.__words[2] = 0;
        v35->__r_.__value_.__r.__words[0] = 0;
        if (v55 >= 0)
        {
          v37 = &v54;
        }

        else
        {
          v37 = v54;
        }

LABEL_75:
        v41 = strlen(v37);
        sub_2991ED458(&v43, 13, v37, v41);
        sub_2991ED50C((a1 + 96), &v43);
        sub_2991ED2F4(&v43);
        if (SHIBYTE(v55) < 0)
        {
          operator delete(v54);
        }

        if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
        {
          v33 = v42.__r_.__value_.__r.__words[0];
          goto LABEL_79;
        }

        goto LABEL_69;
      }

      v20 = *(v6 + 48);
      v21 = (v20 & 0xFFFFFFFFFFFFFFFELL);
      v22 = *((v20 & 0xFFFFFFFFFFFFFFFELL) + 23);
      if ((v22 & 0x8000000000000000) != 0)
      {
        v21 = *v21;
        v22 = *((v20 & 0xFFFFFFFFFFFFFFFELL) + 8);
      }

      v23 = sub_2991BDF64(v21, v22);
      if ((v23 & 0x80000000) != 0)
      {
        v38 = *(v6 + 48) & 0xFFFFFFFFFFFFFFFELL;
        std::operator+<char>();
        v39 = std::string::append(&v42, " is invalid.");
        v40 = *&v39->__r_.__value_.__l.__data_;
        v55 = v39->__r_.__value_.__r.__words[2];
        v54 = v40;
        v39->__r_.__value_.__l.__size_ = 0;
        v39->__r_.__value_.__r.__words[2] = 0;
        v39->__r_.__value_.__r.__words[0] = 0;
        if (v55 >= 0)
        {
          v37 = &v54;
        }

        else
        {
          v37 = v54;
        }

        goto LABEL_75;
      }

      *(__p + ((v23 >> 3) & 0x1FFFFFF8)) |= 1 << v23;
    }

    else if (v16 == 2)
    {
      if ((*(a1 + 88) & 0x80000000) == 0)
      {
        sub_2991ED458(&v54, 13, "unk is already defined.", 23);
        sub_2991ED50C((a1 + 96), &v54);
        goto LABEL_68;
      }

      *(a1 + 88) = v4;
    }

    if (++v4 >= *(v3 + 64))
    {
      goto LABEL_35;
    }
  }

  v27 = *(v6 + 48) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v27 + 23) >= 0)
  {
    v28 = *(v27 + 23);
  }

  else
  {
    v28 = *(v27 + 8);
  }

  v29 = &v54;
  sub_2991C1C18(&v54, v28 + 20);
  if (v55 < 0)
  {
    v29 = v54;
  }

  if (v28)
  {
    if (*(v27 + 23) >= 0)
    {
      v30 = v27;
    }

    else
    {
      v30 = *v27;
    }

    memmove(v29, v30, v28);
  }

  strcpy(v29 + v28, " is already defined.");
  if (v55 >= 0)
  {
    v31 = &v54;
  }

  else
  {
    v31 = v54;
  }

  v32 = strlen(v31);
  sub_2991ED458(&v42, 13, v31, v32);
  sub_2991ED50C((a1 + 96), &v42);
  sub_2991ED2F4(&v42);
  if (SHIBYTE(v55) < 0)
  {
    v33 = v54;
LABEL_79:
    operator delete(v33);
  }

LABEL_69:
  if (__p)
  {
    operator delete(__p);
  }

  sub_29921B8CC(&v46, v47[0]);
  sub_29921B8CC(&v48, v49);
  sub_29921B8CC(&v51, v52);
}

void sub_2991BDE4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, char a19, void *a20, uint64_t a21, char a22, void *a23, uint64_t a24, char a25, void *a26)
{
  sub_2991ED2F4(&a15);
  if (*(v26 - 89) < 0)
  {
    operator delete(*(v26 - 112));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  sub_29921B8CC(&a19, a20);
  sub_29921B8CC(&a22, a23);
  sub_29921B8CC(&a25, a26);
  _Unwind_Resume(a1);
}

uint64_t sub_2991BDF64(void *__src, size_t __len)
{
  if ((atomic_load_explicit(&qword_2A145FD18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A145FD18))
  {
    sub_2991BEE38();
  }

  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2991A11B0();
  }

  v4 = qword_2A145FD10;
  if (__len >= 0x17)
  {
    operator new();
  }

  v9 = __len;
  if (__len)
  {
    memmove(&__dst, __src, __len);
  }

  *(&__dst + __len) = 0;
  v5 = sub_299218D24(v4, &__dst);
  v6 = v5;
  if (v9 < 0)
  {
    operator delete(__dst);
    if (v6)
    {
      return *(v6 + 40);
    }
  }

  else if (v5)
  {
    return *(v6 + 40);
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_2991BE0B8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if (a2[2])
  {
    __p = 0;
    v32 = 0;
    v33 = 0;
    __src = 0;
    v29 = 0;
    v30 = 0;
    v4 = a2 + 1;
    v3 = *a2;
    while (1)
    {
      v5 = v3[4];
      v6 = v32;
      if (v32 >= v33)
      {
        v8 = (v32 - __p) >> 3;
        if ((v8 + 1) >> 61)
        {
          sub_299212A8C();
        }

        v9 = (v33 - __p) >> 2;
        if (v9 <= v8 + 1)
        {
          v9 = v8 + 1;
        }

        if (v33 - __p >= 0x7FFFFFFFFFFFFFF8)
        {
          v10 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        if (v10)
        {
          sub_2991C1E60(&__p, v10);
        }

        v11 = (8 * v8);
        *v11 = v5;
        v7 = 8 * v8 + 8;
        v12 = v11 - (v32 - __p);
        memcpy(v12, __p, v32 - __p);
        v13 = __p;
        __p = v12;
        v32 = v7;
        v33 = 0;
        if (v13)
        {
          operator delete(v13);
        }
      }

      else
      {
        *v32 = v5;
        v7 = (v6 + 8);
      }

      v32 = v7;
      v14 = v29;
      if (v29 >= v30)
      {
        v16 = __src;
        v17 = v29 - __src;
        v18 = (v29 - __src) >> 2;
        v19 = v18 + 1;
        if ((v18 + 1) >> 62)
        {
          sub_299212A8C();
        }

        v20 = v30 - __src;
        if ((v30 - __src) >> 1 > v19)
        {
          v19 = v20 >> 1;
        }

        if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v21 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v21 = v19;
        }

        if (v21)
        {
          sub_2992F86B0(&__src, v21);
        }

        *(4 * v18) = *(v3 + 12);
        v15 = 4 * v18 + 4;
        memcpy(0, v16, v17);
        v22 = __src;
        __src = 0;
        v29 = v15;
        v30 = 0;
        if (v22)
        {
          operator delete(v22);
        }
      }

      else
      {
        *v29 = *(v3 + 12);
        v15 = (v14 + 4);
      }

      v29 = v15;
      v23 = v3[1];
      if (v23)
      {
        do
        {
          v24 = v23;
          v23 = *v23;
        }

        while (v23);
      }

      else
      {
        do
        {
          v24 = v3[2];
          v25 = *v24 == v3;
          v3 = v24;
        }

        while (!v25);
      }

      v3 = v24;
      if (v24 == v4)
      {
        sub_2991BEF20(a1, (v32 - __p) >> 3, __p, 0, __src, 0);
      }
    }
  }

  return sub_2991ED458(a3, 13, "no pieces are loaded.", 21);
}

void sub_2991BE528(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_2991BE5F0(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  memset(&v32, 0, sizeof(v32));
  std::string::resize(&v32, 4uLL, 0);
  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4 = &v32;
  }

  else
  {
    v4 = v32.__r_.__value_.__r.__words[0];
  }

  LODWORD(v4->__r_.__value_.__l.__data_) = *(a1 + 88);
  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v32;
  }

  else
  {
    v5 = v32.__r_.__value_.__r.__words[0];
  }

  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v32.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v32.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v5, size);
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  memset(&v32, 0, sizeof(v32));
  std::string::resize(&v32, 4uLL, 0);
  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &v32;
  }

  else
  {
    v7 = v32.__r_.__value_.__r.__words[0];
  }

  LODWORD(v7->__r_.__value_.__l.__data_) = *(a1 + 92);
  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v32;
  }

  else
  {
    v8 = v32.__r_.__value_.__r.__words[0];
  }

  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = HIBYTE(v32.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v9 = v32.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v8, v9);
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  sub_2991C63C4(*(a1 + 16), &v32);
  v10 = HIBYTE(v32.__r_.__value_.__r.__words[2]);
  v11 = v32.__r_.__value_.__r.__words[1];
  memset(&__p, 0, sizeof(__p));
  std::string::resize(&__p, 4uLL, 0);
  if ((v10 & 0x80u) == 0)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  LODWORD(p_p->__r_.__value_.__l.__data_) = v12;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &__p;
  }

  else
  {
    v14 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v15 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v14, v15);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v32;
  }

  else
  {
    v16 = v32.__r_.__value_.__r.__words[0];
  }

  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = HIBYTE(v32.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v17 = v32.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v16, v17);
  sub_2991EB74C(a2);
  v19 = *(a1 + 32);
  v18 = *(a1 + 40);
  memset(&__p, 0, sizeof(__p));
  std::string::resize(&__p, 4uLL, 0);
  v20 = 4 * v19;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &__p;
  }

  else
  {
    v21 = __p.__r_.__value_.__r.__words[0];
  }

  LODWORD(v21->__r_.__value_.__l.__data_) = v20;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = &__p;
  }

  else
  {
    v22 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v23 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v22, v23);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::append(a2, v18, v20);
  sub_2991EB74C(a2);
  v26 = a1 + 64;
  v24 = *(a1 + 64);
  v25 = *(v26 + 8);
  memset(&__p, 0, sizeof(__p));
  std::string::resize(&__p, 4uLL, 0);
  v27 = 4 * v24;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v28 = &__p;
  }

  else
  {
    v28 = __p.__r_.__value_.__r.__words[0];
  }

  LODWORD(v28->__r_.__value_.__l.__data_) = v27;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v29 = &__p;
  }

  else
  {
    v29 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v30 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v30 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v29, v30);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::append(a2, v25, v27);
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }
}

void sub_2991BE8B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (*(v20 + 23) < 0)
  {
    operator delete(*v20);
  }

  _Unwind_Resume(exception_object);
}

void sub_2991BE930(unsigned __int8 *__s1@<X0>, uint64_t a2@<X1>, char a3@<W2>, int a4@<W3>, const void **a5@<X8>)
{
  v8 = &__s1[a2];
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  if ((a3 & 1) == 0)
  {
    if (a2 < 1)
    {
      return;
    }

    v9 = 0;
    v10 = 0;
    v11 = __s1;
    while (1)
    {
      v12 = asc_299431C8E[*v11 >> 4];
      if (v8 - v11 < v12)
      {
        v12 = v8 - v11;
      }

      v13 = v12;
      if (v12 == 3)
      {
        v14 = memcmp(v11, "▁", 3uLL);
        v15 = v14 == 0;
        if (v11 == __s1)
        {
          goto LABEL_16;
        }

        if ((v10 & a4 & 1) == 0 && !v14)
        {
          v15 = 1;
LABEL_16:
          v16 = a5[2];
          if (v9 >= v16)
          {
            v17 = *a5;
            v18 = v9 - *a5;
            v19 = v18 >> 4;
            v20 = (v18 >> 4) + 1;
            if (v20 >> 60)
            {
              sub_299212A8C();
            }

            v21 = v16 - v17;
            if (v21 >> 3 > v20)
            {
              v20 = v21 >> 3;
            }

            v22 = v21 >= 0x7FFFFFFFFFFFFFF0;
            v23 = 0xFFFFFFFFFFFFFFFLL;
            if (!v22)
            {
              v23 = v20;
            }

            if (v23)
            {
              sub_2991C1E18(a5, v23);
            }

            v24 = (16 * v19);
            *v24 = v11;
            v24[1] = 0;
            v9 = (16 * v19 + 16);
            memcpy(0, v17, v18);
            v25 = *a5;
            *a5 = 0;
            a5[1] = v9;
            a5[2] = 0;
            if (v25)
            {
              operator delete(v25);
            }
          }

          else
          {
            *v9 = v11;
            *(v9 + 1) = 0;
            v9 += 16;
          }

          a5[1] = v9;
          goto LABEL_30;
        }

        if (v10)
        {
          v15 = v10 & (v14 == 0);
          goto LABEL_30;
        }
      }

      else if (v11 == __s1)
      {
        v15 = 0;
        goto LABEL_16;
      }

      v15 = 0;
LABEL_30:
      *(v9 - 1) += v13;
      v11 += v13;
      v10 = v15;
      if (v11 >= v8)
      {
        return;
      }
    }
  }

  if (a2 >= 1)
  {
    sub_2991C1E18(a5, 1uLL);
  }
}

void sub_2991BED54(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2991BED88@<X0>(char *__format@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = snprintf(0, 0, __format, *a2);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  std::string::resize(a3, v6, 0);
  v7 = *(a3 + 23);
  if ((v7 & 0x80u) == 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a3 + 8);
  }

  return snprintf(v8, v7 + 1, __format, *a2);
}

void sub_2991BEE1C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2991BEF04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2991BEF20(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, void (*a6)(unint64_t, uint64_t))
{
  v12[0] = a2;
  v12[1] = a3;
  v12[2] = a4;
  v12[3] = a5;
  v6 = a6;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0;
  sub_2991C1EA8(&v6, v12);
}

uint64_t sub_2991BF060@<X0>(void *a1@<X8>)
{
  result = sub_2991EB39C();
  if (result <= 2)
  {
    v10 = 0;
    v3 = sub_2991C0E9C(MEMORY[0x29EDC93C0], "model_interface.h", 17);
    v4 = sub_2991C0E9C(v3, "(", 1);
    v5 = MEMORY[0x29C29BD30](v4, 96);
    v6 = sub_2991C0E9C(v5, ") ", 2);
    v7 = sub_2991C0E9C(v6, "LOG(", 4);
    v8 = sub_2991C0E9C(v7, "ERROR", 5);
    v9 = sub_2991C0E9C(v8, ") ", 2);
    sub_2991C0E9C(v9, "Not implemented.", 16);
    result = sub_2991BF944(&v10);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  return result;
}

uint64_t sub_2991BF13C@<X0>(void *a1@<X8>)
{
  result = sub_2991EB39C();
  if (result <= 2)
  {
    v10 = 0;
    v3 = sub_2991C0E9C(MEMORY[0x29EDC93C0], "model_interface.h", 17);
    v4 = sub_2991C0E9C(v3, "(", 1);
    v5 = MEMORY[0x29C29BD30](v4, 102);
    v6 = sub_2991C0E9C(v5, ") ", 2);
    v7 = sub_2991C0E9C(v6, "LOG(", 4);
    v8 = sub_2991C0E9C(v7, "ERROR", 5);
    v9 = sub_2991C0E9C(v8, ") ", 2);
    sub_2991C0E9C(v9, "Not implemented.", 16);
    result = sub_2991BF944(&v10);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  return result;
}

void sub_2991BF218(void *a1@<X8>)
{
  v14 = *MEMORY[0x29EDCA608];
  if (sub_2991EB39C() <= 2)
  {
    LOBYTE(__p) = 0;
    v2 = sub_2991C0E9C(MEMORY[0x29EDC93C0], "model_interface.h", 17);
    v3 = sub_2991C0E9C(v2, "(", 1);
    v4 = MEMORY[0x29C29BD30](v3, 117);
    v5 = sub_2991C0E9C(v4, ") ", 2);
    v6 = sub_2991C0E9C(v5, "LOG(", 4);
    v7 = sub_2991C0E9C(v6, "ERROR", 5);
    v8 = sub_2991C0E9C(v7, ") ", 2);
    sub_2991C0E9C(v8, "Not implemented.", 16);
    sub_2991BF944(&__p);
  }

  __p = 0;
  v11 = 0;
  v13 = 0;
  v12 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  sub_2991C0A6C(a1, &__p, &v14, 1uLL);
  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }

  v9 = *MEMORY[0x29EDCA608];
}

void sub_2991BF340(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_2991BF36C()
{
  if (sub_2991EB39C() <= 2)
  {
    v8 = 0;
    v0 = sub_2991C0E9C(MEMORY[0x29EDC93C0], "model_interface.h", 17);
    v1 = sub_2991C0E9C(v0, "(", 1);
    v2 = MEMORY[0x29C29BD30](v1, 125);
    v3 = sub_2991C0E9C(v2, ") ", 2);
    v4 = sub_2991C0E9C(v3, "LOG(", 4);
    v5 = sub_2991C0E9C(v4, "ERROR", 5);
    v6 = sub_2991C0E9C(v5, ") ", 2);
    sub_2991C0E9C(v6, "Not implemented.", 16);
    sub_2991BF944(&v8);
  }

  return 0.0;
}

uint64_t sub_2991BF488(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

uint64_t sub_2991BF5A8(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    return (*(*result + 64))();
  }

  return result;
}

uint64_t *sub_2991BF614(uint64_t *a1)
{
  a1[20] = 0;
  v2 = MEMORY[0x29EDC95A8] + 64;
  a1[14] = MEMORY[0x29EDC95A8] + 64;
  v3 = *(MEMORY[0x29EDC9538] + 16);
  v4 = *(MEMORY[0x29EDC9538] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x29EDC95A8] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[14] = v2;
  sub_2991BF780((a1 + 1), 16);
  return a1;
}

void sub_2991BF758(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x29C29BF00](v1);
  _Unwind_Resume(a1);
}

uint64_t sub_2991BF780(uint64_t a1, int a2)
{
  *a1 = MEMORY[0x29EDC9568] + 16;
  MEMORY[0x29C29BE80](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x29EDC9570] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  sub_2991BF83C(a1);
  return a1;
}

void sub_2991BF814(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void sub_2991BF83C(uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

_BYTE *sub_2991BF944(_BYTE *a1)
{
  std::ios_base::getloc((MEMORY[0x29EDC93C0] + *(*MEMORY[0x29EDC93C0] - 24)));
  v2 = std::locale::use_facet(&v4, MEMORY[0x29EDC93D0]);
  (v2->__vftable[2].~facet_0)(v2, 10);
  std::locale::~locale(&v4);
  std::ostream::put();
  std::ostream::flush();
  if (*a1 == 1)
  {
    sub_2991ED1A8();
  }

  return a1;
}

unint64_t sub_2991BFA24(uint64_t a1, _BYTE *a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6)
{
  v9 = *(a1 + 16);
  v10 = *v9;
  if (a5)
  {
    v11 = *a2;
    v12 = (v10 >> 10 << ((v10 >> 6) & 8)) ^ v11;
    v10 = v9[v12];
    if ((v10 & 0x800000FF) == v11)
    {
      v13 = a5 - 1;
      v14 = a2 + 1;
      while (1)
      {
        v15 = v12;
        if (!v13)
        {
          goto LABEL_16;
        }

        v16 = *v14++;
        v12 = (v10 >> 10 << ((v10 >> 6) & 8)) ^ v12 ^ v16;
        v10 = v9[v12];
        --v13;
        if ((v10 & 0x800000FF) != v16)
        {
          goto LABEL_14;
        }
      }
    }
  }

  else
  {
    v17 = *a2;
    if (!*a2)
    {
      v15 = 0;
      LODWORD(v12) = 0;
LABEL_16:
      if ((v10 & 0x100) != 0)
      {
        v22 = v9[(v10 >> 10 << ((v10 >> 6) & 8)) ^ v12] & 0x7FFFFFFF;
      }

      else
      {
        v22 = -1;
      }

      goto LABEL_19;
    }

    v18 = (v10 >> 10 << ((v10 >> 6) & 8)) ^ v17;
    v10 = v9[v18];
    if ((v10 & 0x800000FF) == v17)
    {
      v19 = a2 + 1;
      LODWORD(v12) = v18;
      while (1)
      {
        v15 = v18;
        v21 = *v19++;
        v20 = v21;
        if (!v21)
        {
          goto LABEL_16;
        }

        v18 = (v10 >> 10 << ((v10 >> 6) & 8)) ^ v12 ^ v20;
        v10 = v9[v18];
        LODWORD(v12) = v18;
        if ((v10 & 0x800000FF) != v20)
        {
          goto LABEL_14;
        }
      }
    }
  }

  v15 = 0;
LABEL_14:
  v22 = -2;
LABEL_19:
  v44 = 0u;
  memset(v43, 0, sizeof(v43));
  v41.n128_u32[0] = 0;
  v41.n128_u64[1] = v15;
  v42 = v22;
  sub_2991BFD5C(v43, &v41);
  v23 = *(&v44 + 1);
  if (*(&v44 + 1))
  {
    v24 = 0;
    do
    {
      v25 = (*(*(&v43[0] + 1) + 8 * (v44 / 0xAA)) + 24 * (v44 % 0xAA));
      v26 = *v25;
      v27 = v25[2];
      v28 = v25[4];
      *&v44 = v44 + 1;
      *(&v44 + 1) = v23 - 1;
      if (v44 >= 0x154)
      {
        operator delete(**(&v43[0] + 1));
        *(&v43[0] + 1) += 8;
        *&v44 = v44 - 170;
      }

      if ((v28 & 0x80000000) == 0)
      {
        v29 = a3 + 16 * v24;
        *v29 = v28;
        *(v29 + 8) = a5;
        ++v24;
      }

      v31 = a6 >= 0 && v26 > a6;
      if (v24 >= a4 || v31)
      {
        break;
      }

      if (v28 != -2)
      {
        v32 = v26 + 1;
        for (i = 1; i != 256; ++i)
        {
          v34 = *(a1 + 16);
          v35 = (*(v34 + 4 * v27) >> 10 << ((*(v34 + 4 * v27) >> 6) & 8)) ^ v27 ^ i;
          v36 = *(v34 + 4 * v35);
          if (i == (v36 & 0x800000FF))
          {
            if ((v36 & 0x100) != 0)
            {
              v37 = *(v34 + 4 * ((v36 >> 10 << ((v36 >> 6) & 8)) ^ v35)) & 0x7FFFFFFF;
            }

            else
            {
              v37 = -1;
            }

            v41.n128_u32[0] = v32;
            v41.n128_u64[1] = v35;
            v42 = v37;
            sub_2991BFD5C(v43, &v41);
          }
        }
      }

      v23 = *(&v44 + 1);
    }

    while (*(&v44 + 1));
  }

  else
  {
    v24 = 0;
  }

  sub_2991BFFE0(v43);
  return v24;
}

void sub_2991BFD14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2991BFFE0(va);
  _Unwind_Resume(a1);
}

void sub_2991BFD2C(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 16 * a2;
    }
  }

  else
  {
    sub_2991C008C(a1, a2 - v2);
  }
}

__n128 sub_2991BFD5C(uint64_t a1, __n128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  v7 = 170 * ((v5 - v6) >> 3) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = *(a1 + 40) + *(a1 + 32);
  if (v7 == v8)
  {
    sub_2991BFE0C(a1);
    v6 = *(a1 + 8);
    v8 = *(a1 + 40) + *(a1 + 32);
  }

  v9 = (*(v6 + 8 * (v8 / 0xAA)) + 24 * (v8 % 0xAA));
  result = *a2;
  v9[1].n128_u64[0] = a2[1].n128_u64[0];
  *v9 = result;
  ++*(a1 + 40);
  return result;
}

void *sub_2991BFE0C(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0xAA;
  v3 = v1 - 170;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    sub_29920B86C(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_299195BE4(a1, &v10);
}

void sub_2991BFF94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2991BFFE0(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 85;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 170;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_299196CA4(a1);
}

void sub_2991C008C(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 16 * a2);
      v5 += 16 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      sub_299212A8C();
    }

    v8 = v4 - *a1;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_2991C01A0(a1, v9);
    }

    v10 = (16 * (v6 >> 4));
    bzero(v10, 16 * a2);
    v11 = &v10[16 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void sub_2991C01A0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_29919600C();
}

uint64_t sub_2991C01E8(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    sub_2991EF744(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1705);
    v4 = sub_2991EF75C(v8, "CHECK failed: (index) >= (0): ");
    sub_2991EF898(&v7, &v4->__r_.__value_.__l.__data_);
    sub_2991EF8A0(v8);
  }

  if (*(a1 + 8) <= a2)
  {
    sub_2991EF744(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1706);
    v5 = sub_2991EF75C(v8, "CHECK failed: (index) < (current_size_): ");
    sub_2991EF898(&v7, &v5->__r_.__value_.__l.__data_);
    sub_2991EF8A0(v8);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_2991C02A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

const void **sub_2991C02C8(void *a1, const void **a2)
{
  v4 = sub_2991C0548(a1, a2);
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

  if (!sub_2991C09F4(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

unint64_t sub_2991C0548(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return sub_2991C0588(&v5, a2, v3);
}

unint64_t sub_2991C0588(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v13 + v7 + v4;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v5 + v13 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v19 + v6 + v8;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v40 + v31 + v29 + v30;
        v22 = __ROR8__(v40 + v31 + v29, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return sub_2991C0934(a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return sub_2991C0888(a2, a3);
  }

  else
  {
    return sub_2991C0790(a2, a3);
  }
}

unint64_t sub_2991C0790(_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

unint64_t sub_2991C0888(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t sub_2991C0934(void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

BOOL sub_2991C09F4(uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

uint64_t sub_2991C0A6C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_2991C0AF4(result, a4);
  }

  return result;
}

void sub_2991C0AD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_2992B6C08(&a9);
  _Unwind_Resume(a1);
}

void sub_2991C0AF4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    sub_2991C0B30(a1, a2);
  }

  sub_299212A8C();
}

void sub_2991C0B30(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_29919600C();
}

uint64_t sub_2991C0B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      *(v4 + 8) = 0;
      *(v4 + 16) = 0;
      sub_2991C0C40(v4, *v6, *(v6 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(v6 + 8) - *v6) >> 3));
      *(v4 + 24) = *(v6 + 24);
      v6 += 32;
      v4 = v11 + 32;
      v11 += 32;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_2991C0D64(v8);
  return v4;
}

uint64_t sub_2991C0C40(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_2991C0CC0(result, a4);
  }

  return result;
}

void sub_2991C0CA4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2991C0CC0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_2991C0D0C(a1, a2);
  }

  sub_299212A8C();
}

void sub_2991C0D0C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_29919600C();
}

uint64_t sub_2991C0D64(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_299221FF0(a1);
  }

  return a1;
}

void sub_2991C0D9C(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A1F628D8;
  v2 = a1[3];
  if (v2)
  {
    MEMORY[0x29C29BF70](v2, 0x1000C8052888210);
    a1[3] = 0;
  }

  JUMPOUT(0x29C29BFB0);
}

void sub_2991C0E20(uint64_t a1, uint64_t *a2)
{
  if (a2)
  {
    v2 = *a2;
    *a2 = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    JUMPOUT(0x29C29BFB0);
  }
}

void *sub_2991C0E9C(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x29C29BCD0](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x29EDC93D0]);
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

    if (!sub_2991C1044(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x29C29BCE0](v13);
  return a1;
}

void sub_2991C0FDC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x29C29BCE0](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x2991C0FBCLL);
}

uint64_t sub_2991C1044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
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
        sub_2991A11B0();
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

void sub_2991C1210(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2991C122C(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_2991C12A4(result, a2);
  }

  return result;
}

void sub_2991C1288(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2991C12A4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_2991C01A0(a1, a2);
  }

  sub_299212A8C();
}

void *sub_2991C12E0(void *result, uint64_t a2)
{
  v2 = result;
  v3 = result[1];
  v4 = *(a2 + 8);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2991A11B0();
  }

  v5 = *a2;
  if (v4 >= 0x17)
  {
    operator new();
  }

  v3[23] = v4;
  if (v4)
  {
    result = memmove(v3, v5, v4);
  }

  v3[v4] = 0;
  v2[1] = v3 + 24;
  return result;
}

char *sub_2991C13A4(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_299212A8C();
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

  v20 = a1;
  if (v6)
  {
    sub_299212AA4(a1, v6);
  }

  v7 = 24 * v2;
  v16 = 0;
  v17 = v7;
  v18 = v7;
  v19 = 0;
  v8 = *(a2 + 8);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2991A11B0();
  }

  v9 = *a2;
  if (v8 >= 0x17)
  {
    operator new();
  }

  *(v7 + 23) = v8;
  if (v8)
  {
    memmove(v7, v9, v8);
  }

  *(v7 + v8) = 0;
  v10 = v18 + 24;
  v11 = *(a1 + 8) - *a1;
  v12 = &v17[-v11];
  memcpy(&v17[-v11], *a1, v11);
  v13 = *a1;
  *a1 = v12;
  *(a1 + 8) = v10;
  v14 = *(a1 + 16);
  *(a1 + 16) = v19;
  v18 = v13;
  v19 = v14;
  v16 = v13;
  v17 = v13;
  sub_299212AFC(&v16);
  return v10;
}

void sub_2991C1528(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_299212AFC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2991C153C(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_299212A8C();
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

  v21 = a1;
  if (v6)
  {
    sub_299212AA4(a1, v6);
  }

  v7 = 24 * v2;
  v17 = 0;
  v18 = 24 * v2;
  v8 = 0;
  v19 = 24 * v2;
  v20 = 0;
  if (*(a2 + 23) < 0)
  {
    sub_2991A110C(v7, *a2, *(a2 + 1));
    v7 = v18;
    v10 = v19;
    v8 = v20;
  }

  else
  {
    v9 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *v7 = v9;
    v10 = 24 * v2;
  }

  v11 = v10 + 24;
  v12 = *(a1 + 8) - *a1;
  v13 = v7 - v12;
  memcpy((v7 - v12), *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = v8;
  v19 = v14;
  v20 = v15;
  v17 = v14;
  v18 = v14;
  sub_299212AFC(&v17);
  return v11;
}

void sub_2991C1668(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_299212AFC(va);
  _Unwind_Resume(a1);
}

void *sub_2991C167C(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_2991C1750(result, a2);
  }

  return result;
}

void sub_2991C1750(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v2 = ((a2 - 1) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    sub_299236FB8(a1, v2);
  }

  sub_299212A8C();
}

void *sub_2991C1794(void *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = *(result + 2);
  v5 = *result;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ |= (0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4);
    v2 = a2 - v6;
    *result = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    result = memset(v5, 255, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *v3 = v8;
    *v8 |= 0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F);
  }

  return result;
}

void sub_2991C1848(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4));
    v2 = a2 - v6;
    *a1 = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    bzero(v5, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *a1 = v8;
    *v8 &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F));
  }
}

uint64_t sub_2991C18F8(uint64_t a1, uint64_t a2)
{
  v2 = *sub_2991C1994(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *sub_2991C1994(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!sub_2991C1A30(a1, a3, (v4 + 4)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!sub_2991C1A30(a1, (v8 + 4), a3))
      {
        break;
      }

      v5 = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = (a1 + 8);
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

uint64_t sub_2991C1A30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *a3;
  v6 = *(a3 + 8);
  if (v6 >= v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = *(a3 + 8);
  }

  v8 = memcmp(v3, v5, v7);
  if (v4 < v6)
  {
    v9 = -1;
  }

  else
  {
    v9 = 1;
  }

  if (v4 == v6)
  {
    v9 = 0;
  }

  if (v8)
  {
    v9 = v8;
  }

  return v9 >> 31;
}

uint64_t *sub_2991C1A7C(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

uint64_t sub_2991C1C18(uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2991A11B0();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

uint64_t sub_2991C1CA4(uint64_t a1, uint64_t a2)
{
  v2 = *sub_2991C1994(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_2991C1D38@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 8);
  v4 = *result;
  if (!v3)
  {
    goto LABEL_9;
  }

  v5 = (64 - v3);
  if (v5 >= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = (64 - v3);
  }

  if (((0xFFFFFFFFFFFFFFFFLL >> (64 - v3 - v6)) & (-1 << v3) & ~*v4) != 0)
  {
    v7 = __rbit64((0xFFFFFFFFFFFFFFFFLL >> (64 - v3 - v6)) & (-1 << v3) & ~*v4);
LABEL_17:
    *a3 = v4;
    *(a3 + 8) = __clz(v7);
    return result;
  }

  if (v5 < a2)
  {
    a2 -= v6;
    *result = ++v4;
LABEL_9:
    if (a2 < 0x40)
    {
LABEL_12:
      if (!a2 || (v8 = (0xFFFFFFFFFFFFFFFFLL >> -a2) & ~*v4) == 0)
      {
        *a3 = v4;
        *(a3 + 8) = a2;
        return result;
      }
    }

    else
    {
      while (*v4 == -1)
      {
        *result = ++v4;
        a2 -= 64;
        if (a2 <= 0x3F)
        {
          goto LABEL_12;
        }
      }

      v8 = ~*v4;
    }

    v7 = __rbit64(v8);
    goto LABEL_17;
  }

  *a3 = &v4[(v3 + a2) >> 6];
  *(a3 + 8) = (v3 + a2) & 0x3F;
  return result;
}

void sub_2991C1E18(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_29919600C();
}

void sub_2991C1E60(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_29919600C();
}

void sub_2991C1EA8(void (**a1)(unint64_t, uint64_t), unint64_t *a2)
{
  if (a2[3])
  {
    v3 = 0;
    memset(v2, 0, sizeof(v2));
    sub_2991C2468(a1, a2, v2);
  }

  sub_2991C2894(a1, a2);
}

uint64_t *sub_2991C1F9C(uint64_t *a1)
{
  sub_2991C1FE8(a1);
  if (*a1)
  {
    MEMORY[0x29C29BF70](*a1, 0x1000C8077774924);
    *a1 = 0;
  }

  return a1;
}

uint64_t sub_2991C1FE8(uint64_t *a1)
{
  sub_2991C2034(a1, 0);
  result = *a1;
  if (*a1)
  {
    result = MEMORY[0x29C29BF70](result, 0x1000C8077774924);
    *a1 = 0;
  }

  a1[1] = 0;
  a1[2] = 0;
  return result;
}

uint64_t sub_2991C2034(uint64_t result, unint64_t a2)
{
  v2 = *(result + 8);
  if (v2 > a2)
  {
    *(result + 8) = a2;
    v2 = a2;
  }

  if (*(result + 16) < a2)
  {
    sub_2991C2094(result, a2);
  }

  if (v2 < a2)
  {
    *(result + 8) = a2;
  }

  return result;
}

void sub_2991C2094(uint64_t a1, unint64_t a2)
{
  if (a2 < 2 * *(a1 + 16))
  {
    v2 = 1;
    do
    {
      v3 = v2;
      v2 *= 2;
    }

    while (v3 < a2);
  }

  operator new[]();
}

void sub_2991C21D4(std::exception *a1)
{
  std::exception::~exception(a1);

  JUMPOUT(0x29C29BFB0);
}

const char *sub_2991C220C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return *(a1 + 8);
  }

  else
  {
    return "";
  }
}

uint64_t *sub_2991C2224(uint64_t *a1)
{
  sub_2991C2270(a1);
  if (*a1)
  {
    MEMORY[0x29C29BF70](*a1, 0x1000C8077774924);
    *a1 = 0;
  }

  return a1;
}

uint64_t sub_2991C2270(uint64_t *a1)
{
  sub_2991C22BC(a1, 0);
  result = *a1;
  if (*a1)
  {
    result = MEMORY[0x29C29BF70](result, 0x1000C8077774924);
    *a1 = 0;
  }

  a1[1] = 0;
  a1[2] = 0;
  return result;
}

void sub_2991C22BC(void *a1, unint64_t a2)
{
  v4 = a1[1];
  if (v4 > a2)
  {
    a1[1] = a2;
    v4 = a2;
  }

  if (a1[2] < a2)
  {
    sub_2991C232C(a1, a2);
  }

  if (a2 > v4)
  {
    bzero((*a1 + 4 * v4), 4 * (a2 - v4));
    a1[1] = a2;
  }
}

void sub_2991C232C(uint64_t a1, unint64_t a2)
{
  if (a2 < 2 * *(a1 + 16))
  {
    v2 = 1;
    do
    {
      v3 = v2;
      v2 *= 2;
    }

    while (v3 < a2);
  }

  operator new[]();
}

void sub_2991C2468(void (**a1)(unint64_t, uint64_t), unint64_t *a2, uint64_t *a3)
{
  sub_2991C32E0(a3);
  if (*a2)
  {
    v6 = 0;
    do
    {
      v7 = a2[2];
      v8 = *(a2[1] + 8 * v6);
      if (v7)
      {
        v9 = *(v7 + 8 * v6);
      }

      else
      {
          ;
        }

        v9 = v7 - 1;
      }

      v11 = a2[3];
      if (v11)
      {
        v12 = *(v11 + 4 * v6);
      }

      else
      {
        v12 = v6;
      }

      sub_2991C33B4(a3, v8, v9, v12);
      ++v6;
      if (*a1)
      {
        (*a1)(v6, *a2 + 1);
      }
    }

    while (v6 < *a2);
  }

  sub_2991C3860(a3, 0);
  v13 = *a3;
  v14 = *(*a3 + 8);
  v15 = **a3;
  if (v14)
  {
    if (*(v13 + 9))
    {
      v16 = 2;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16 | (4 * v15);
  }

  else
  {
    v17 = 2 * v15;
  }

  *a3[3] = v17 | *(v13 + 10);
  *a3[6] = v14;
  sub_2991C30C0(a3);
  sub_2991C2B5C(a3 + 15);
  sub_2991C2B5C(a3 + 18);
  sub_2991C2B5C(a3 + 21);

  sub_2991C3C90((a3 + 9));
}

void sub_2991C2598(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = 1;
  do
  {
    v5 = v4;
    v4 *= 2;
  }

  while (v5 < v3);
  if (*(a1 + 24) < v5)
  {
    sub_2991C232C(a1 + 8, v5);
  }

  v6 = 4 * *(a2 + 104);
  operator new[]();
}

void sub_2991C2894(uint64_t a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = 1;
  do
  {
    v4 = v3;
    v3 *= 2;
  }

  while (v4 < v2);
  if (*(a1 + 24) < v4)
  {
    sub_2991C232C(a1 + 8, v4);
  }

  operator new[]();
}

uint64_t *sub_2991C2B20(uint64_t *a1)
{
  sub_2991C2B5C(a1);

  return sub_2991C2D44(a1);
}

uint64_t sub_2991C2B5C(uint64_t *a1)
{
  sub_2991C2BA8(a1, 0);
  result = *a1;
  if (*a1)
  {
    result = MEMORY[0x29C29BF70](result, 0x1000C8077774924);
    *a1 = 0;
  }

  a1[1] = 0;
  a1[2] = 0;
  return result;
}

uint64_t sub_2991C2BA8(uint64_t result, unint64_t a2)
{
  v2 = *(result + 8);
  if (v2 > a2)
  {
    *(result + 8) = a2;
    v2 = a2;
  }

  if (*(result + 16) < a2)
  {
    sub_2991C2C08(result, a2);
  }

  if (v2 < a2)
  {
    *(result + 8) = a2;
  }

  return result;
}

void sub_2991C2C08(uint64_t a1, unint64_t a2)
{
  if (a2 < 2 * *(a1 + 16))
  {
    v2 = 1;
    do
    {
      v3 = v2;
      v2 *= 2;
    }

    while (v3 < a2);
  }

  operator new[]();
}

uint64_t *sub_2991C2D44(uint64_t *a1)
{
  sub_2991C2B5C(a1);
  if (*a1)
  {
    MEMORY[0x29C29BF70](*a1, 0x1000C8077774924);
    *a1 = 0;
  }

  return a1;
}

uint64_t *sub_2991C2D90(uint64_t *a1)
{
  sub_2991C2DEC(a1);
  v2 = a1[3];
  if (v2)
  {
    MEMORY[0x29C29BF70](v2, 0x1000C8052888210);
    a1[3] = 0;
  }

  return sub_2991C2D44(a1);
}

uint64_t sub_2991C2DEC(uint64_t *a1)
{
  sub_2991C2B5C(a1);
  result = a1[3];
  if (result)
  {
    result = MEMORY[0x29C29BF70](result, 0x1000C8052888210);
    a1[3] = 0;
  }

  return result;
}

uint64_t *sub_2991C2E30(uint64_t *a1)
{
  sub_2991C2E7C(a1);
  if (*a1)
  {
    MEMORY[0x29C29BF70](*a1, 0x1000C8077774924);
    *a1 = 0;
  }

  return a1;
}

uint64_t sub_2991C2E7C(uint64_t *a1)
{
  sub_2991C2EC8(a1, 0);
  result = *a1;
  if (*a1)
  {
    result = MEMORY[0x29C29BF70](result, 0x1000C8077774924);
    *a1 = 0;
  }

  a1[1] = 0;
  a1[2] = 0;
  return result;
}

void sub_2991C2EC8(void *a1, unint64_t a2)
{
  v4 = a1[1];
  if (v4 > a2)
  {
    a1[1] = a2;
    v4 = a2;
  }

  if (a1[2] < a2)
  {
    sub_2991C2F38(a1, a2);
  }

  if (a2 > v4)
  {
    bzero((*a1 + 4 * v4), 4 * (a2 - v4));
    a1[1] = a2;
  }
}

void sub_2991C2F38(uint64_t a1, unint64_t a2)
{
  if (a2 < 2 * *(a1 + 16))
  {
    v2 = 1;
    do
    {
      v3 = v2;
      v2 *= 2;
    }

    while (v3 < a2);
  }

  operator new[]();
}

uint64_t *sub_2991C3074(uint64_t *a1)
{
  sub_2991C30C0(a1);
  if (*a1)
  {
    MEMORY[0x29C29BF70](*a1, 0x1000C8077774924);
    *a1 = 0;
  }

  return a1;
}

uint64_t sub_2991C30C0(uint64_t *a1)
{
  sub_2991C310C(a1, 0);
  result = *a1;
  if (*a1)
  {
    result = MEMORY[0x29C29BF70](result, 0x1000C8077774924);
    *a1 = 0;
  }

  a1[1] = 0;
  a1[2] = 0;
  return result;
}

void *sub_2991C310C(void *result, unint64_t a2)
{
  v2 = result[1];
  if (v2 > a2)
  {
    result[1] = a2;
    v2 = a2;
  }

  if (result[2] < a2)
  {
    sub_2991C3190(result, a2);
  }

  for (; v2 < a2; v2 = result[1])
  {
    result[1] = v2 + 1;
    v3 = *result + 12 * v2;
    *(v3 + 7) = 0;
    *v3 = 0;
  }

  return result;
}

void sub_2991C3190(uint64_t a1, unint64_t a2)
{
  if (a2 < 2 * *(a1 + 16))
  {
    v2 = 1;
    do
    {
      v3 = v2;
      v2 *= 2;
    }

    while (v3 < a2);
  }

  operator new[]();
}

void *sub_2991C32E0(void *a1)
{
  v7 = 0;
  sub_2991C360C(a1 + 15, 0x400uLL, &v7);
  v2 = a1[22];
  if (v2)
  {
    v3 = *a1 + 12 * *(a1[21] + 4 * v2 - 4);
    *(v3 + 7) = 0;
    *v3 = 0;
    --a1[22];
  }

  else
  {
    sub_2991C3718(a1);
  }

  sub_2991C3770(a1 + 9);
  sub_2991C37C0(a1 + 3);
  v4 = a1[7];
  if (v4 == a1[8])
  {
    sub_2991C2094((a1 + 6), v4 + 1);
  }

  a1[7] = v4 + 1;
  a1[24] = 1;
  *(*a1 + 8) = -1;
  v6 = 0;
  return sub_2991C380C(a1 + 18, &v6);
}

void *sub_2991C33B4(void *result, uint64_t a2, unint64_t a3, int a4)
{
  if (a4 < 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v24 = "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/darts_clone/darts.h:1106: exception: failed to insert key: negative value";
    goto LABEL_25;
  }

  if (!a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v24 = "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/darts_clone/darts.h:1108: exception: failed to insert key: zero-length key";
LABEL_25:
    *exception = &unk_2A1F62920;
    exception[1] = v24;
    __cxa_throw(exception, &unk_2A1F628F8, std::exception::~exception);
  }

  v7 = result;
  v8 = 0;
  v9 = 0;
  v10 = *result;
  while (1)
  {
    v11 = *(v10 + 12 * v8);
    if (!v11)
    {
      goto LABEL_12;
    }

    v12 = *(a2 + v9);
    if (v9 < a3 && !*(a2 + v9))
    {
      exception = __cxa_allocate_exception(0x10uLL);
      v24 = "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/darts_clone/darts.h:1122: exception: failed to insert key: invalid null character";
      goto LABEL_25;
    }

    v13 = v10 + 12 * v11;
    v14 = *(v13 + 8);
    if (v12 < v14)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      v24 = "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/darts_clone/darts.h:1127: exception: failed to insert key: wrong key order";
      goto LABEL_25;
    }

    if (v12 > v14)
    {
      break;
    }

    ++v9;
    v8 = *(v10 + 12 * v8);
    if (v9 > a3)
    {
      return result;
    }
  }

  *(v13 + 10) = 1;
  result = sub_2991C3860(result, v11);
LABEL_12:
  while (v9 <= a3)
  {
    if (v9 >= a3)
    {
      v15 = 0;
    }

    else
    {
      v15 = *(a2 + v9);
    }

    v16 = v7[22];
    if (v16)
    {
      v17 = *(v7[21] + 4 * v16 - 4);
      v18 = *v7 + 12 * v17;
      *(v18 + 7) = 0;
      *v18 = 0;
      --v7[22];
    }

    else
    {
      v17 = *(v7 + 2);
      sub_2991C3718(v7);
    }

    v25 = v17;
    v19 = *v7;
    v20 = (*v7 + 12 * v8);
    v21 = *v20;
    if (!*v20)
    {
      *(v19 + 12 * v17 + 9) = 1;
    }

    *(v19 + 12 * v17 + 4) = v21;
    v22 = v25;
    *(v19 + 12 * v25 + 8) = v15;
    *v20 = v22;
    result = sub_2991C380C(v7 + 18, &v25);
    v8 = v25;
    ++v9;
  }

  *(*v7 + 12 * v8) = a4;
  return result;
}

void *sub_2991C360C(void *result, unint64_t a2, int *a3)
{
  v3 = result[1];
  if (v3 > a2)
  {
    result[1] = a2;
    v3 = a2;
  }

  if (result[2] < a2)
  {
    sub_2991C2C08(result, a2);
  }

  v4 = a2 - v3;
  if (a2 > v3)
  {
    v5 = 0;
    v6 = *a3;
    v7 = vdupq_n_s64(v4 - 1);
    v8 = (*result + 4 * v3 + 8);
    do
    {
      v9 = vdupq_n_s64(v5);
      v10 = vmovn_s64(vcgeq_u64(v7, vorrq_s8(v9, xmmword_2993FCC00)));
      if (vuzp1_s16(v10, *v7.i8).u8[0])
      {
        *(v8 - 2) = v6;
      }

      if (vuzp1_s16(v10, *&v7).i8[2])
      {
        *(v8 - 1) = v6;
      }

      if (vuzp1_s16(*&v7, vmovn_s64(vcgeq_u64(v7, vorrq_s8(v9, xmmword_2993FCC10)))).i32[1])
      {
        *v8 = v6;
        v8[1] = v6;
      }

      v5 += 4;
      v8 += 4;
    }

    while (((v4 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v5);
    result[1] = a2;
  }

  return result;
}

void *sub_2991C3718(void *result)
{
  v1 = result[1];
  if (v1 == result[2])
  {
    sub_2991C3190(result, v1 + 1);
  }

  result[1] = v1 + 1;
  v2 = *result + 12 * v1;
  *(v2 + 7) = 0;
  *v2 = 0;
  return result;
}

void *sub_2991C3770(void *result)
{
  v1 = result;
  v2 = result[5];
  if ((v2 & 0x1F) == 0)
  {
    v3 = 0;
    result = sub_2991C380C(result, &v3);
    v2 = v1[5];
  }

  v1[5] = v2 + 1;
  return result;
}

void *sub_2991C37C0(void *result)
{
  v1 = result[1];
  if (v1 == result[2])
  {
    sub_2991C2F38(result, v1 + 1);
  }

  result[1] = v1 + 1;
  *(*result + 4 * v1) = 0;
  return result;
}

void *sub_2991C380C(void *result, _DWORD *a2)
{
  v2 = result[1];
  if (v2 == result[2])
  {
    sub_2991C2C08(result, v2 + 1);
  }

  result[1] = v2 + 1;
  *(*result + 4 * v2) = *a2;
  return result;
}

uint64_t sub_2991C3860(uint64_t result, int a2)
{
  v2 = result;
  v3 = *(result + 152);
  v4 = *(*(result + 144) + 4 * v3 - 4);
  if (v4 != a2)
  {
    while (1)
    {
      *(v2 + 152) = v3 - 1;
      v6 = *(v2 + 128);
      if (*(v2 + 192) >= v6 - (v6 >> 2))
      {
        v7 = 2 * v6;
        sub_2991C2B5C((v2 + 120));
        v34 = 0;
        sub_2991C360C((v2 + 120), v7, &v34);
        v8 = *(v2 + 32);
        if (v8 >= 2)
        {
          v9 = *(v2 + 48);
          for (i = 1; i != v8; ++i)
          {
            if (!*(v9 + i) || (*(*(v2 + 24) + 4 * i) & 2) != 0)
            {
              v11 = 0;
              if (i)
              {
                v12 = i;
                do
                {
                  v13 = *(*(v2 + 24) + 4 * v12);
                  v14 = (v13 ^ ~(*(v9 + v12) << 24)) + (v13 << 15);
                  v15 = 2057 * ((5 * (v14 ^ (v14 >> 12))) ^ ((5 * (v14 ^ (v14 >> 12))) >> 4));
                  v11 ^= HIWORD(v15) ^ v15;
                  v16 = __CFADD__(v12++, 1);
                }

                while (!v16 && (v13 & 1) != 0);
              }

              v17 = *(v2 + 120);
              do
              {
                v18 = v11 % *(v2 + 128);
                v11 = v18 + 1;
              }

              while (*(v17 + 4 * v18));
              *(v17 + 4 * v18) = i;
            }
          }
        }
      }

      v19 = 0;
      if (v4)
      {
        v20 = v4;
        do
        {
          ++v19;
          v20 = *(*v2 + 12 * v20 + 4);
        }

        while (v20);
      }

      v33 = 0;
      result = sub_2991C3B30(v2, v4, &v33);
      if (result)
      {
        v21 = result;
        *(*(v2 + 72) + 4 * (result >> 5)) |= 1 << result;
        if (v4)
        {
          goto LABEL_21;
        }

        goto LABEL_22;
      }

      if (!v19)
      {
        break;
      }

      do
      {
        sub_2991C3770((v2 + 72));
        result = sub_2991C37C0((v2 + 24));
        v24 = *(v2 + 56);
        if (v24 == *(v2 + 64))
        {
          sub_2991C2094(v2 + 48, v24 + 1);
        }

        *(v2 + 56) = v24 + 1;
        --v19;
      }

      while (v19);
      v25 = *(v2 + 112) - 1;
      if (v4)
      {
        goto LABEL_31;
      }

LABEL_39:
      v21 = v25 + 1;
      *(*(v2 + 120) + 4 * v33) = v25 + 1;
      ++*(v2 + 192);
      if (v4)
      {
        do
        {
LABEL_21:
          v22 = *(*v2 + 12 * v4 + 4);
          v35 = v4;
          result = sub_2991C380C((v2 + 168), &v35);
          v4 = v22;
        }

        while (v22);
      }

LABEL_22:
      v3 = *(v2 + 152);
      v23 = *(v2 + 144) + 4 * v3;
      *(*v2 + 12 * *(v23 - 4)) = v21;
      v4 = *(v23 - 4);
      if (v4 == a2)
      {
        goto LABEL_2;
      }
    }

    v25 = 0;
    if (!v4)
    {
      goto LABEL_39;
    }

LABEL_31:
    v26 = *v2;
    v27 = v4;
    do
    {
      v28 = v26 + 12 * v27;
      v29 = *(v28 + 8);
      v30 = *v28;
      if (v29)
      {
        if (*(v28 + 9))
        {
          v31 = 2;
        }

        else
        {
          v31 = 0;
        }

        v32 = v31 | (4 * v30);
      }

      else
      {
        v32 = 2 * v30;
      }

      *(*(v2 + 24) + 4 * v25) = v32 | *(v28 + 10);
      *(*(v2 + 48) + v25--) = v29;
      v26 = *v2;
      v27 = *(*v2 + 12 * v27 + 4);
    }

    while (v27);
    goto LABEL_39;
  }

LABEL_2:
  *(v2 + 152) = v3 - 1;
  return result;
}

uint64_t sub_2991C3B30(uint64_t *a1, unsigned int a2, _DWORD *a3)
{
  v3 = a2;
  if (a2)
  {
    LODWORD(v4) = 0;
    v5 = a2;
    do
    {
      v6 = *a1 + 12 * v5;
      v7 = *v6;
      if (*(v6 + 8))
      {
        if (*(v6 + 9))
        {
          v8 = 2;
        }

        else
        {
          v8 = 0;
        }

        v9 = v8 | (4 * v7);
      }

      else
      {
        v9 = 2 * v7;
      }

      v10 = ((v9 | *(v6 + 10)) ^ ~(*(v6 + 8) << 24)) + ((v9 | *(v6 + 10)) << 15);
      v11 = 2057 * ((5 * (v10 ^ (v10 >> 12))) ^ ((5 * (v10 ^ (v10 >> 12))) >> 4));
      v4 = v4 ^ HIWORD(v11) ^ v11;
      v5 = *(v6 + 4);
    }

    while (v5);
  }

  else
  {
    v4 = 0;
  }

  v13 = a1[15];
  v12 = a1[16];
  v14 = v4 % v12;
  *a3 = v4 % v12;
  v15 = *(v13 + 4 * (v4 % v12));
  if (v15)
  {
    v16 = *a1;
    v17 = *a1 + 12 * a2;
    v18 = a1[3];
    do
    {
      v19 = *(v17 + 4);
      v20 = v15;
      if (v19)
      {
        v20 = v15;
        while ((*(v18 + 4 * v20) & 1) != 0)
        {
          ++v20;
          LODWORD(v19) = *(v16 + 12 * v19 + 4);
          if (!v19)
          {
            goto LABEL_18;
          }
        }
      }

      else
      {
LABEL_18:
        if ((*(v18 + 4 * v20) & 1) == 0)
        {
          if (!v3)
          {
            return v15;
          }

          v21 = v3;
          while (1)
          {
            v22 = (v16 + 12 * v21);
            v23 = *v22;
            if (*(v22 + 8))
            {
              v24 = *(v22 + 9) ? 2 : 0;
              v25 = v24 | (4 * v23);
            }

            else
            {
              v25 = 2 * v23;
            }

            if ((v25 | *(v22 + 10)) != *(v18 + 4 * v20) || *(v22 + 8) != *(a1[6] + v20))
            {
              break;
            }

            v21 = v22[1];
            --v20;
            if (!v21)
            {
              return v15;
            }
          }
        }
      }

      v14 = (v14 + 1) % v12;
      *a3 = v14;
      v15 = *(v13 + 4 * v14);
    }

    while (v15);
  }

  return v15;
}

unsigned int *sub_2991C3DD4(unsigned int *result, unsigned int a2)
{
  if (a2 >> 29)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &unk_2A1F62920;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/darts_clone/darts.h:1339: exception: failed to modify unit: too large offset";
    __cxa_throw(exception, &unk_2A1F628F8, std::exception::~exception);
  }

  v2 = (4 * a2) | 0x200;
  if (a2 < 0x200000)
  {
    v2 = a2 << 10;
  }

  *result = *result & 0x800001FF | v2;
  return result;
}

unsigned int *sub_2991C3E58(uint64_t a1, void *a2, unsigned int a3, unsigned int a4)
{
  v8 = a2 + 9;
  v9 = *(a2[3] + 4 * a3);
  v10 = v9 >> 2;
  v11 = v9 >> 7;
  v12 = 1 << (v9 >> 2);
  if ((v12 & *(a2[9] + 4 * (v9 >> 7))) != 0 && (v13 = *(*(a1 + 64) + 4 * (sub_2991C4458(a2 + 9, v10) - 1))) != 0 && ((v14 = v13 ^ a4, ((v13 ^ a4) & 0x1FE00000) != 0) ? (v15 = (v13 ^ a4) == 0) : (v15 = 1), v15))
  {
    if (*(a2[6] + v10))
    {
      v16 = *(a1 + 8);
      v17 = a4;
    }

    else
    {
      v17 = a4;
      v16 = *(a1 + 8);
      *(v16 + 4 * a4) |= 0x100u;
    }

    return sub_2991C3DD4((v16 + 4 * v17), v14);
  }

  else
  {
    result = sub_2991C41DC(a1, a2, a3, a4);
    v19 = result;
    if ((*(a2[9] + 4 * v11) & v12) != 0)
    {
      result = sub_2991C4458(v8, v10);
      *(*(a1 + 64) + 4 * (result - 1)) = v19;
    }

    do
    {
      if (*(a2[6] + v10))
      {
        result = sub_2991C3E58(a1, a2, v10, v19 ^ *(a2[6] + v10));
      }

      if (v10 == -1)
      {
        break;
      }

      v20 = *(a2[3] + 4 * v10);
      LODWORD(v10) = v10 + 1;
    }

    while ((v20 & 1) != 0);
  }

  return result;
}

void sub_2991C3FD0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = (v2 + 256);
  v4 = (v2 >> 8) - 16;
  if (v4 >= 0xFFFFFFEF)
  {
    sub_2991C22BC((a1 + 8), (v2 + 256));
  }

  else
  {
    v5 = 0;
    v6 = v4 << 8;
    v7 = *(a1 + 32);
    v8 = (3072 * ((v2 >> 8) & 0xF)) | 9;
    while (*(v7 + v8) == 1)
    {
      --v5;
      v8 += 12;
      if (v5 == -256)
      {
        v9 = 0;
        goto LABEL_8;
      }
    }

    v9 = v6 - v5;
LABEL_8:
    v10 = 3072 * ((v2 >> 8) & 0xF);
    v11 = 256;
    do
    {
      if ((*(v7 + v10 + 8) & 1) == 0)
      {
        if (*(a1 + 16) <= v6)
        {
          sub_2991C3FD0(a1);
          v7 = *(a1 + 32);
        }

        v12 = (v7 + v10);
        v13 = *(v7 + v10 + 4);
        if (v6 == *(a1 + 72))
        {
          *(a1 + 72) = v13;
          if (v6 == v13)
          {
            *(a1 + 72) = *(a1 + 16);
          }
        }

        v14 = *v12;
        *(v7 + 12 * (*v12 & 0xFFF) + 4) = v13;
        *(v7 + 12 * (v12[1] & 0xFFF)) = v14;
        *(v12 + 8) = 1;
        *(*(a1 + 8) + 4 * v6) = v9 ^ v6;
      }

      ++v6;
      v10 += 12;
      --v11;
    }

    while (v11);
    sub_2991C22BC((a1 + 8), (v2 + 256));
    v15 = v2;
    if (v2 < v3)
    {
      v16 = *(a1 + 32);
      do
      {
        *(v16 + 12 * (v15++ & 0xFFF) + 8) = 0;
      }

      while (v3 != v15);
    }
  }

  v17 = *(a1 + 32);
  if (v2 + 1 < v3)
  {
    v18 = 255;
    v19 = v2;
    do
    {
      *(v17 + 12 * (v19 & 0xFFF) + 4) = v19 + 1;
      *(v17 + 12 * ((v19 + 1) & 0xFFF)) = v19;
      ++v19;
      --v18;
    }

    while (v18);
  }

  v20 = 12 * (v2 & 0xFFF);
  *(v17 + v20) = v2 + 255;
  v21 = *(a1 + 72);
  v22 = 12 * (v21 & 0xFFF);
  v23 = *(v17 + v22);
  *(v17 + v20) = v23;
  *(v17 + 12 * ((v2 + 255) & 0xFFF) + 4) = v21;
  *(v17 + 12 * (v23 & 0xFFF) + 4) = v2;
  *(v17 + v22) = v2 + 255;
}

uint64_t sub_2991C41DC(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  sub_2991C2034(a1 + 40, 0);
  v8 = *(*(a2 + 24) + 4 * a3);
  if (v8 >= 4)
  {
    v9 = v8 >> 2;
    do
    {
      v38 = *(*(a2 + 48) + v9);
      sub_2991C44BC((a1 + 40), &v38);
      v10 = *(*(a2 + 24) + 4 * v9);
      v12 = __CFADD__(v9++, 1);
    }

    while ((v10 & 1) != 0 && !v12);
  }

  v13 = *(a1 + 72);
  v14 = *(a1 + 16);
  if (v14 > v13)
  {
    v16 = *(a1 + 32);
    v15 = *(a1 + 40);
    v19 = *v15;
    v17 = v15 + 1;
    v18 = v19;
    v20 = *(a1 + 72);
    do
    {
      v21 = v20 ^ v18;
      if ((*(v16 + 12 * ((v20 ^ v18) & 0xFFF) + 9) & 1) == 0 && (!((v20 ^ v18) ^ a4) || ((v21 ^ a4) & 0x1FE00000) == 0))
      {
        v22 = *(a1 + 48);
        if (v22 < 2)
        {
          goto LABEL_21;
        }

        v23 = v22 - 1;
        v24 = v17;
        while (1)
        {
          v25 = *v24++;
          if (*(v16 + 12 * ((v20 ^ v18) & 0xFFF ^ v25) + 8) == 1)
          {
            break;
          }

          if (!--v23)
          {
            goto LABEL_21;
          }
        }
      }

      v20 = *(v16 + 12 * (v20 & 0xFFF) + 4);
    }

    while (v20 != v13);
  }

  v21 = a4 | v14;
LABEL_21:
  sub_2991C3DD4((*(a1 + 8) + 4 * a4), v21 ^ a4);
  if (*(a1 + 48))
  {
    v26 = 0;
    v27 = *(*(a2 + 24) + 4 * a3) >> 2;
    do
    {
      v28 = v21 ^ *(*(a1 + 40) + v26);
      if (*(a1 + 16) <= v28)
      {
        sub_2991C3FD0(a1);
      }

      if (*(a1 + 72) == v28)
      {
        v29 = v28 & 0xFFF;
        v30 = *(a1 + 32);
        v31 = *(v30 + 12 * (v28 & 0xFFF) + 4);
        *(a1 + 72) = v31;
        if (v31 == v28)
        {
          *(a1 + 72) = *(a1 + 16);
        }
      }

      else
      {
        v30 = *(a1 + 32);
        v29 = v28 & 0xFFF;
      }

      v32 = v30 + 12 * v29;
      v33 = *(v32 + 4);
      v34 = v30 + 12 * (*v32 & 0xFFF);
      *(v30 + 12 * (v33 & 0xFFF)) = *v32;
      *(v34 + 4) = v33;
      *(v32 + 8) = 1;
      v35 = *(a1 + 8);
      if (*(*(a2 + 48) + v27))
      {
        *(v35 + 4 * v28) = *(*(a1 + 40) + v26);
        v36 = *(*(a2 + 24) + 4 * v27);
      }

      else
      {
        *(v35 + 4 * a4) |= 0x100u;
        v36 = *(*(a2 + 24) + 4 * v27);
        *(v35 + 4 * v28) = (v36 >> 1) | 0x80000000;
      }

      v27 = ((v36 << 31) >> 31) & (v27 + 1);
      ++v26;
    }

    while (v26 < *(a1 + 48));
  }

  else
  {
    v30 = *(a1 + 32);
  }

  *(v30 + 12 * (v21 & 0xFFF) + 9) = 1;
  return v21;
}

uint64_t sub_2991C4458(void *a1, unint64_t a2)
{
  v2 = (a2 >> 3) & 0x1FFFFFFFFFFFFFFCLL;
  v3 = *(a1[3] + v2);
  LODWORD(v2) = *(*a1 + v2) & (0xFFFFFFFF >> ~a2);
  LODWORD(v2) = ((((((v2 >> 1) & 0x55555555) + (v2 & 0x55555555)) >> 2) & 0x33333333) + ((((v2 >> 1) & 0x55555555) + (v2 & 0x55555555)) & 0x33333333) + (((((((v2 >> 1) & 0x55555555) + (v2 & 0x55555555)) >> 2) & 0x33333333) + ((((v2 >> 1) & 0x55555555) + (v2 & 0x55555555)) & 0x33333333)) >> 4)) & 0xF0F0F0F;
  return ((v2 + BYTE1(v2) + ((v2 + (v2 >> 8)) >> 16)) & 0x3Fu) + v3;
}

void *sub_2991C44BC(void *result, _BYTE *a2)
{
  v2 = result[1];
  if (v2 == result[2])
  {
    sub_2991C2094(result, v2 + 1);
  }

  result[1] = v2 + 1;
  *(*result + v2) = *a2;
  return result;
}

uint64_t *sub_2991C4510(uint64_t *a1)
{
  sub_2991C30C0(a1);
  sub_2991C2E7C(a1 + 3);
  sub_2991C1FE8(a1 + 6);
  sub_2991C2DEC(a1 + 9);
  sub_2991C2B5C(a1 + 15);
  sub_2991C2B5C(a1 + 18);
  sub_2991C2B5C(a1 + 21);
  a1[24] = 0;
  sub_2991C2B20(a1 + 21);
  sub_2991C2B20(a1 + 18);
  sub_2991C2D44(a1 + 15);
  sub_2991C2D90(a1 + 9);
  sub_2991C1F9C(a1 + 6);
  sub_2991C2E30(a1 + 3);

  return sub_2991C3074(a1);
}

uint64_t sub_2991C45B0(uint64_t a1, void *a2, unint64_t a3, unint64_t a4, unint64_t a5, unsigned int a6)
{
  while (1)
  {
    result = sub_2991C4718(a1, a2, a3, a4, a5, a6);
    v12 = result;
    if (a3 < a4)
    {
      v13 = a2[2];
      while (v13 && *(v13 + 8 * a3) <= a5 || !*(*(a2[1] + 8 * a3) + a5))
      {
        if (a4 == ++a3)
        {
          return result;
        }
      }
    }

    if (a3 == a4)
    {
      break;
    }

    v14 = a2[2];
    if (v14 && *(v14 + 8 * a3) <= a5)
    {
      v15 = 0;
    }

    else
    {
      v15 = *(*(a2[1] + 8 * a3) + a5);
    }

    v16 = a3 + 1;
    if (a3 + 1 < a4)
    {
      do
      {
        if (v14 && *(v14 + 8 * v16) <= a5)
        {
          v17 = 0;
        }

        else
        {
          v17 = *(*(a2[1] + 8 * v16) + a5);
        }

        if (v17 != v15)
        {
          sub_2991C45B0(a1, a2, a3, v16, a5 + 1, v12 ^ v15);
          v14 = a2[2];
          if (v14 && *(v14 + 8 * v16) <= a5)
          {
            v15 = 0;
          }

          else
          {
            v15 = *(*(a2[1] + 8 * v16) + a5);
          }

          a3 = v16;
        }

        ++v16;
      }

      while (a4 != v16);
    }

    a6 = v12 ^ v15;
    ++a5;
  }

  return result;
}

uint64_t sub_2991C4718(uint64_t a1, void *a2, unint64_t a3, unint64_t a4, unint64_t a5, unsigned int a6)
{
  sub_2991C2034(a1 + 40, 0);
  if (a3 < a4)
  {
    v12 = -1;
    while (1)
    {
      v13 = a2[2];
      if (v13)
      {
        if (*(v13 + 8 * a3) > a5)
        {
          v44 = *(*(a2[1] + 8 * a3) + a5);
          if (!v44)
          {
            exception = __cxa_allocate_exception(0x10uLL);
            v43 = "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/darts_clone/darts.h:1675: exception: failed to build double-array: invalid null character";
            goto LABEL_57;
          }

          goto LABEL_20;
        }

        v44 = 0;
      }

      else
      {
        v44 = *(*(a2[1] + 8 * a3) + a5);
        if (v44)
        {
          goto LABEL_20;
        }
      }

      v14 = a2[3];
      if (v14)
      {
        if ((*(v14 + 4 * a3) & 0x80000000) != 0)
        {
          goto LABEL_56;
        }
      }

      else if ((a3 & 0x80000000) != 0)
      {
LABEL_56:
        exception = __cxa_allocate_exception(0x10uLL);
        v43 = "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/darts_clone/darts.h:1677: exception: failed to build double-array: negative value";
LABEL_57:
        *exception = &unk_2A1F62920;
        exception[1] = v43;
        __cxa_throw(exception, &unk_2A1F628F8, std::exception::~exception);
      }

      if (v12 == -1)
      {
        if (v14)
        {
          v12 = *(v14 + 4 * a3);
        }

        else
        {
          v12 = a3;
        }
      }

      if (*a1)
      {
        (*a1)(a3 + 1, *a2 + 1);
      }

LABEL_20:
      v15 = *(a1 + 48);
      if (!v15)
      {
        goto LABEL_24;
      }

      v16 = *(*(a1 + 40) + v15 - 1);
      if (v44 != v16)
      {
        if (v44 < v16)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          v43 = "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/darts_clone/darts.h:1692: exception: failed to build double-array: wrong key order";
          goto LABEL_57;
        }

LABEL_24:
        sub_2991C44BC((a1 + 40), &v44);
      }

      if (a4 == ++a3)
      {
        v17 = v12 | 0x80000000;
        goto LABEL_28;
      }
    }
  }

  v17 = -1;
LABEL_28:
  v18 = *(a1 + 72);
  v19 = *(a1 + 16);
  if (v19 > v18)
  {
    v21 = *(a1 + 32);
    v20 = *(a1 + 40);
    v24 = *v20;
    v22 = v20 + 1;
    v23 = v24;
    v25 = *(a1 + 72);
    do
    {
      v26 = v25 ^ v23;
      if ((*(v21 + 12 * ((v25 ^ v23) & 0xFFF) + 9) & 1) == 0 && (!((v25 ^ v23) ^ a6) || ((v26 ^ a6) & 0x1FE00000) == 0))
      {
        v27 = *(a1 + 48);
        if (v27 < 2)
        {
          goto LABEL_41;
        }

        v28 = v27 - 1;
        v29 = v22;
        while (1)
        {
          v30 = *v29++;
          if (*(v21 + 12 * ((v25 ^ v23) & 0xFFF ^ v30) + 8) == 1)
          {
            break;
          }

          if (!--v28)
          {
            goto LABEL_41;
          }
        }
      }

      v25 = *(v21 + 12 * (v25 & 0xFFF) + 4);
    }

    while (v25 != v18);
  }

  v26 = a6 | v19;
LABEL_41:
  sub_2991C3DD4((*(a1 + 8) + 4 * a6), v26 ^ a6);
  if (*(a1 + 48))
  {
    v31 = 0;
    v32 = *(a1 + 40);
    do
    {
      v33 = v26 ^ *(v32 + v31);
      if (*(a1 + 16) <= v33)
      {
        sub_2991C3FD0(a1);
      }

      if (*(a1 + 72) == v33)
      {
        v34 = v33 & 0xFFF;
        v35 = *(a1 + 32);
        v36 = *(v35 + 12 * (v33 & 0xFFF) + 4);
        *(a1 + 72) = v36;
        if (v36 == v33)
        {
          *(a1 + 72) = *(a1 + 16);
        }
      }

      else
      {
        v35 = *(a1 + 32);
        v34 = v33 & 0xFFF;
      }

      v37 = v35 + 12 * v34;
      v38 = *(v37 + 4);
      v39 = v35 + 12 * (*v37 & 0xFFF);
      *(v35 + 12 * (v38 & 0xFFF)) = *v37;
      *(v39 + 4) = v38;
      *(v37 + 8) = 1;
      v32 = *(a1 + 40);
      v40 = *(a1 + 8);
      if (*(v32 + v31))
      {
        *(v40 + 4 * v33) = *(v32 + v31);
      }

      else
      {
        *(v40 + 4 * a6) |= 0x100u;
        *(v40 + 4 * v33) = v17;
      }

      ++v31;
    }

    while (v31 < *(a1 + 48));
  }

  else
  {
    v35 = *(a1 + 32);
  }

  *(v35 + 12 * (v26 & 0xFFF) + 9) = 1;
  return v26;
}

uint64_t sub_2991C4AA0(uint64_t a1)
{
  sub_2991C2270((a1 + 8));
  v2 = *(a1 + 32);
  if (v2)
  {
    MEMORY[0x29C29BF70](v2, 0x1000C80CBA68D63);
    *(a1 + 32) = 0;
  }

  sub_2991C1FE8((a1 + 40));
  v3 = *(a1 + 64);
  if (v3)
  {
    MEMORY[0x29C29BF70](v3, 0x1000C8052888210);
    *(a1 + 64) = 0;
  }

  *(a1 + 72) = 0;
  sub_2991C1F9C((a1 + 40));
  v4 = *(a1 + 32);
  if (v4)
  {
    MEMORY[0x29C29BF70](v4, 0x1000C80CBA68D63);
    *(a1 + 32) = 0;
  }

  sub_2991C2224((a1 + 8));
  return a1;
}

uint64_t sub_2991C4B44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_2A1F62948;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = a2 + 16;
  *(a1 + 40) = 0;
  *(a1 + 48) = *(a3 + 245);
  sub_29919C3A8((a1 + 56));
  v5 = *(a2 + 64);
  v6 = (v5 & 0xFFFFFFFFFFFFFFFELL);
  v7 = *((v5 & 0xFFFFFFFFFFFFFFFELL) + 23);
  if ((v7 & 0x8000000000000000) != 0)
  {
    v6 = *v6;
    v7 = *((v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  sub_2991C4C1C(a1, v6, v7);
  return a1;
}

void sub_2991C4BD0(_Unwind_Exception *a1)
{
  sub_2991ED2F4((v1 + 56));
  v4 = *v2;
  *v2 = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_2991C4C1C(uint64_t *result, unsigned int *a2, unint64_t a3)
{
  if (a3)
  {
    v3 = result;
    v6[0] = 0;
    v6[1] = 0;
    v5 = 0uLL;
    sub_2991C5088(a2, a3, v6, &v5, &v4);
    sub_2991ED50C(v3 + 7, &v4);
    result = sub_2991ED2F4(&v4);
    if (!v3[7])
    {
      operator new();
    }
  }

  return result;
}

void sub_2991C4D78(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2991ED2F4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2991C4D94(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2A1F62948;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = a2 + 16;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  sub_29919C3A8((a1 + 56));
  v4 = *(a2 + 64);
  v5 = (v4 & 0xFFFFFFFFFFFFFFFELL);
  v6 = *((v4 & 0xFFFFFFFFFFFFFFFELL) + 23);
  if ((v6 & 0x8000000000000000) != 0)
  {
    v5 = *v5;
    v6 = *((v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  sub_2991C4C1C(a1, v5, v6);
  return a1;
}

void sub_2991C4E1C(_Unwind_Exception *a1)
{
  sub_2991ED2F4((v1 + 56));
  v4 = *v2;
  *v2 = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_2991C4E6C(uint64_t *a1, uint64_t a2, _DWORD *a3, unint64_t a4)
{
  a1[1] = 0;
  *a1 = &unk_2A1F62948;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = a2;
  a1[5] = 0;
  *(a1 + 48) = 0;
  sub_29919C3A8(a1 + 7);
  v10 = 0;
  sub_2991BC180(a3, a4, &v10, &v9);
  sub_2991ED50C(a1 + 7, &v9);
  sub_2991ED2F4(&v9);
  (*(*a1 + 24))(&v9, a1);
  v7 = v9;
  sub_2991ED2F4(&v9);
  if (!v7)
  {
    *(a1 + 48) = v10 != 0;
    sub_2991C4C1C(a1, a3 + 1, a4 - 4);
  }

  return a1;
}

void sub_2991C4F70(_Unwind_Exception *a1)
{
  sub_2991ED2F4((v1 + 56));
  v4 = *v2;
  *v2 = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  _Unwind_Resume(a1);
}

void *sub_2991C4FD8(void *a1)
{
  *a1 = &unk_2A1F62948;
  sub_2991ED2F4(a1 + 7);
  v2 = a1[1];
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_2991C5050(void *a1)
{
  sub_2991C4FD8(a1);

  JUMPOUT(0x29C29BFB0);
}

void *sub_2991C5088@<X0>(unsigned int *a1@<X0>, unint64_t a2@<X1>, unsigned int **a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  if (a2 < 5 || (v7 = *a1, a2 <= v7))
  {
    v10 = "Blob for normalization rule is broken.";
    v11 = 38;
  }

  else
  {
    if ((v7 + 1) < a2)
    {
      v8 = a1 + 1;
      *a3 = v8;
      a3[1] = v7;
      *a4 = v7 + v8;
      a4[1] = a2 - v7 - 4;
      return sub_29919C3A8(a5);
    }

    v10 = "Trie data size exceeds the input blob size.";
    v11 = 43;
  }

  return sub_2991ED458(a5, 13, v10, v11);
}

void *sub_2991C50F0@<X0>(size_t a1@<X0>, char *a2@<X1>, unint64_t a3@<X2>, std::string *a4@<X3>, const void **a5@<X4>, uint64_t *a6@<X8>)
{
  v8 = a3;
  a5[1] = *a5;
  if (SHIBYTE(a4->__r_.__value_.__r.__words[2]) < 0)
  {
    *a4->__r_.__value_.__l.__data_ = 0;
    a4->__r_.__value_.__l.__size_ = 0;
    if (!a3)
    {
LABEL_11:

      return sub_29919C3A8(a6);
    }
  }

  else
  {
    a4->__r_.__value_.__s.__data_[0] = 0;
    *(&a4->__r_.__value_.__s + 23) = 0;
    if (!a3)
    {
      goto LABEL_11;
    }
  }

  result = (*(*a1 + 24))(a1);
  if (*a6)
  {
    return result;
  }

  sub_2991ED2F4(a6);
  if ((*(**(a1 + 32) + 24))(*(a1 + 32)))
  {
    v13 = 0;
    while (1)
    {
      sub_2991C58F8(a1, a2, v8, &v39);
      if (v40 != 1 || *v39 != 32)
      {
        break;
      }

      a2 += v41;
      v13 += v41;
      v8 -= v41;
      if (!v8)
      {
        goto LABEL_11;
      }
    }

    v37 = a6;
  }

  else
  {
    v37 = a6;
    v13 = 0;
  }

  std::string::reserve(a4, 3 * v8);
  sub_2991C5AEC(a5, 3 * v8);
  if ((*(a1 + 48) & 1) == 0 && (*(**(a1 + 32) + 16))(*(a1 + 32)))
  {
    if ((*(**(a1 + 32) + 32))(*(a1 + 32)))
    {
      v14 = 3;
      std::string::append(a4, "▁", 3uLL);
      do
      {
        v39 = v13;
        sub_299266D00(a5, &v39);
        --v14;
      }

      while (v14);
    }

    else
    {
      std::string::append(a4, " ");
      v39 = v13;
      sub_299266D00(a5, &v39);
    }
  }

  v15 = (*(**(a1 + 32) + 24))(*(a1 + 32));
  do
  {
    sub_2991C58F8(a1, a2, v8, &v39);
    v17 = v39;
    v16 = v40;
    if (v15)
    {
      if (!v40)
      {
        goto LABEL_40;
      }

      while (*v17 == 32)
      {
        ++v17;
        if (!--v16)
        {
          goto LABEL_40;
        }
      }
    }

    else if (!v40)
    {
      v15 = 0;
      goto LABEL_40;
    }

    v18 = 0;
    v38 = v13;
    v19 = v13;
    do
    {
      v20 = (*(**(a1 + 32) + 32))(*(a1 + 32));
      v21 = v17[v18];
      if (v20 && v21 == 32)
      {
        std::string::append(a4, "▁", 3uLL);
        v22 = 3;
        do
        {
          v45[0] = v19;
          sub_299266D00(a5, v45);
          --v22;
        }

        while (v22);
      }

      else
      {
        std::string::push_back(a4, v21);
        v45[0] = v19;
        sub_299266D00(a5, v45);
      }

      ++v18;
    }

    while (v18 != v16);
    v15 = v17[v16 - 1] == 32;
    v13 = v38;
LABEL_40:
    v13 += v41;
    a2 += v41;
    v8 -= v41;
    v15 &= (*(**(a1 + 32) + 24))(*(a1 + 32));
  }

  while (v8);
  if ((*(**(a1 + 32) + 24))(*(a1 + 32)))
  {
    v23 = (*(**(a1 + 32) + 32))(*(a1 + 32));
    if (v23)
    {
      v24 = 3;
    }

    else
    {
      v24 = 1;
    }

    LODWORD(v25) = v13;
    if (v23)
    {
      v26 = "▁";
    }

    else
    {
      v26 = " ";
    }

    while (1)
    {
      v27 = SHIBYTE(a4->__r_.__value_.__r.__words[2]);
      if ((v27 & 0x8000000000000000) != 0)
      {
        v28 = a4->__r_.__value_.__r.__words[0];
        size = a4->__r_.__value_.__l.__size_;
      }

      else
      {
        v28 = a4;
        size = SHIBYTE(a4->__r_.__value_.__r.__words[2]);
      }

      v30 = size >= v24;
      v31 = size - v24;
      if (!v30 || memcmp(v28 + v31, v26, v24))
      {
        break;
      }

      if ((v27 & 0x80000000) != 0)
      {
        v27 = a4->__r_.__value_.__l.__size_;
      }

      if (v27 - v24 < 0)
      {
        LODWORD(v39) = 13;
        v34 = sub_2991BF614(&v40);
        sub_2991C0E9C(v34, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/normalizer.cc", 69);
        sub_2991C0E9C(&v40, "(", 1);
        MEMORY[0x29C29BD30](&v40, 186);
        sub_2991C0E9C(&v40, ") [", 3);
        sub_2991C0E9C(&v40, "(length) >= (0)", 15);
        sub_2991C0E9C(&v40, "] ", 2);
        sub_2991BC3FC(&v39, v37);
        goto LABEL_72;
      }

      v32 = (v27 - v24) & 0x7FFFFFFF;
      v25 = *(*a5 + v32);
      std::string::resize(a4, v32, 0);
      sub_29919FBDC(a5, v32);
    }
  }

  else
  {
    LODWORD(v25) = v13;
  }

  if (*(a1 + 48) == 1 && (*(**(a1 + 32) + 16))(*(a1 + 32)))
  {
    if ((*(**(a1 + 32) + 32))(*(a1 + 32)))
    {
      v33 = 3;
      std::string::append(a4, "▁", 3uLL);
      do
      {
        v39 = v25;
        sub_299266D00(a5, &v39);
        --v33;
      }

      while (v33);
    }

    else
    {
      std::string::append(a4, " ");
      v39 = v25;
      sub_299266D00(a5, &v39);
    }
  }

  v39 = v25;
  sub_299266D00(a5, &v39);
  v35 = SHIBYTE(a4->__r_.__value_.__r.__words[2]);
  if ((v35 & 0x8000000000000000) != 0)
  {
    v35 = a4->__r_.__value_.__l.__size_;
  }

  if ((a5[1] - *a5) >> 3 == v35 + 1)
  {
    return sub_29919C3A8(v37);
  }

  LODWORD(v39) = 13;
  v36 = sub_2991BF614(&v40);
  sub_2991C0E9C(v36, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/normalizer.cc", 69);
  sub_2991C0E9C(&v40, "(", 1);
  MEMORY[0x29C29BD30](&v40, 198);
  sub_2991C0E9C(&v40, ") [", 3);
  sub_2991C0E9C(&v40, "(norm_to_orig->size()) == (normalized->size() + 1)", 50);
  sub_2991C0E9C(&v40, "] ", 2);
  sub_2991BC3FC(&v39, v37);
LABEL_72:
  v40 = *MEMORY[0x29EDC9538];
  *(&v40 + *(v40 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  v41 = MEMORY[0x29EDC9570] + 16;
  if (v43 < 0)
  {
    operator delete(v42[7].__locale_);
  }

  v41 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v42);
  std::ostream::~ostream();
  return MEMORY[0x29C29BF00](&v44);
}

void sub_2991C58D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991BC48C(va);
  _Unwind_Resume(a1);
}

size_t sub_2991C58F8@<X0>(size_t result@<X0>, char *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29[63] = *MEMORY[0x29EDCA608];
  if (a3)
  {
    v6 = a2;
    v7 = result;
    v8 = *(result + 40);
    if (v8 && (LOBYTE(v28) = 0, result = sub_2991C5C50(v8, a2, a3, &v28), v28 == 1))
    {
      v9 = result;
      if (a3 < result)
      {
        v9 = a3;
      }

      *a4 = v6;
      *(a4 + 8) = v9;
      *(a4 + 16) = result;
    }

    else
    {
      v10 = *(v7 + 8);
      if (!v10)
      {
        goto LABEL_24;
      }

      v11 = 0;
      v12 = 0;
      v13 = *(v10 + 16);
      v14 = (*v13 >> 10 << ((*v13 >> 6) & 8));
      do
      {
        v15 = v6[v11];
        v16 = v14 ^ v15;
        v17 = v13[v16];
        if ((v17 & 0x800000FF) != v15)
        {
          break;
        }

        v14 = v16 ^ (v17 >> 10 << ((v17 >> 6) & 8));
        if ((v17 & 0x100) != 0)
        {
          if (v12 <= 0x1F)
          {
            v18 = &v29[2 * v12 - 1];
            *v18 = v13[v14] & 0x7FFFFFFF;
            v18[1] = v11 + 1;
          }

          ++v12;
        }

        ++v11;
      }

      while (a3 != v11);
      if (!v12)
      {
        goto LABEL_24;
      }

      v19 = 0;
      v20 = 0;
      v21 = v29;
      v22 = v29;
      do
      {
        v24 = *v22;
        v22 += 2;
        v23 = v24;
        if (!v19 || v23 > v19)
        {
          v20 = *(v21 - 2);
          v19 = v23;
        }

        v21 = v22;
        --v12;
      }

      while (v12);
      if (v19)
      {
        v6 = (*(v7 + 16) + v20);
        result = strlen(v6);
      }

      else
      {
LABEL_24:
        v28 = 0;
        v25 = sub_2991EB3AC(v6, &v6[a3], &v28);
        v26 = v25 != 65533;
        if (v25 == 65533)
        {
          result = 3;
        }

        else
        {
          result = v28;
        }

        if (v28 == 3)
        {
          v26 = 1;
        }

        if (v26)
        {
          LODWORD(v19) = v28;
        }

        else
        {
          LODWORD(v19) = 1;
        }

        if (!v26)
        {
          v6 = &unk_2993FE92C;
        }
      }

      *a4 = v6;
      *(a4 + 8) = result;
      *(a4 + 16) = v19;
    }
  }

  else
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
  }

  v27 = *MEMORY[0x29EDCA608];
  return result;
}

void *sub_2991C5AEC(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      sub_299236FB8(result, a2);
    }

    sub_299212A8C();
  }

  return result;
}

void sub_2991C5B8C(uint64_t a1@<X0>, void *a2@<X8>)
{
  __p = 0;
  v4 = 0;
  v5 = 0;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  (*(*a1 + 32))(&v2);
  nullsub_1(&v2);
  sub_2991ED2F4(&v2);
  if (__p)
  {
    v4 = __p;
    operator delete(__p);
  }
}

void sub_2991C5C14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  sub_2991ED2F4(&a9);
  if (*(v11 + 23) < 0)
  {
    operator delete(*v11);
  }

  if (__p)
  {
    a11 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2991C5C50(uint64_t a1, _BYTE *a2, uint64_t a3, BOOL *a4)
{
  v25[127] = *MEMORY[0x29EDCA608];
  if (!*a1)
  {
    if (a4)
    {
      *a4 = 0;
    }

    goto LABEL_33;
  }

  v4 = *(*a1 + 16);
  v5 = (*v4 >> 10 << ((*v4 >> 6) & 8));
  if (a3)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = a2[v6];
      v9 = v5 ^ v8;
      v10 = v4[v9];
      if ((v10 & 0x800000FF) != v8)
      {
        break;
      }

      v5 = v9 ^ (v10 >> 10 << ((v10 >> 6) & 8));
      if ((v10 & 0x100) != 0)
      {
        if (v7 <= 0x3F)
        {
          v11 = &v24[16 * v7];
          *v11 = v4[v5] & 0x7FFFFFFF;
          *(v11 + 1) = v6 + 1;
        }

        ++v7;
      }

      ++v6;
    }

    while (a3 != v6);
  }

  else
  {
    v12 = *a2;
    if (*a2)
    {
      v7 = 0;
      v13 = 1;
      do
      {
        v14 = v5 ^ v12;
        v15 = v4[v14];
        if ((v15 & 0x800000FF) != v12)
        {
          break;
        }

        v5 = v14 ^ (v15 >> 10 << ((v15 >> 6) & 8));
        if ((v15 & 0x100) != 0)
        {
          if (v7 <= 0x3F)
          {
            v16 = &v24[16 * v7];
            *v16 = v4[v5] & 0x7FFFFFFF;
            *(v16 + 1) = v13;
          }

          ++v7;
        }

        v12 = a2[v13++];
      }

      while (v12);
    }

    else
    {
      LODWORD(v7) = 0;
    }
  }

  if (a4)
  {
    *a4 = v7 > 0;
  }

  if (!v7)
  {
LABEL_33:
    v22 = asc_299431C8E[*a2 >> 4];
    if (v22 >= a3)
    {
      result = a3;
    }

    else
    {
      result = v22;
    }

    goto LABEL_36;
  }

  if (v7 < 1)
  {
    result = 0;
  }

  else
  {
    LODWORD(result) = 0;
    v18 = v7 & 0x7FFFFFFF;
    v19 = v25;
    do
    {
      v21 = *v19;
      v19 += 4;
      v20 = v21;
      if (result <= v21)
      {
        result = v20;
      }

      else
      {
        result = result;
      }

      --v18;
    }

    while (v18);
  }

LABEL_36:
  v23 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2991C5E20(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  std::string::resize(a2, 4uLL, 0);
  if (*(a2 + 23) >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  *v5 = v4;
  v6 = *(a1 + 8);
  if (v6)
  {
    v8 = *(v6 + 8);
    v7 = *(v6 + 16);
    memset(&v13, 0, sizeof(v13));
    std::string::resize(&v13, 4uLL, 0);
    v9 = 4 * v8;
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = &v13;
    }

    else
    {
      v10 = v13.__r_.__value_.__r.__words[0];
    }

    LODWORD(v10->__r_.__value_.__l.__data_) = v9;
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &v13;
    }

    else
    {
      v11 = v13.__r_.__value_.__r.__words[0];
    }

    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v13.__r_.__value_.__l.__size_;
    }

    std::string::append(a2, v11, size);
    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
    }

    std::string::append(a2, v7, v9);
    std::string::append(a2, *(a1 + 16), *(a1 + 24));
  }
}

void sub_2991C5F18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2991C5F54(void *result, void *a2)
{
  *result = 0;
  v3 = a2[2];
  if (v3)
  {
    __p = 0;
    v19 = 0;
    v20 = 0;
    sub_2991C6220(&__p, v3);
    v6 = *a2;
    v4 = a2 + 1;
    v5 = v6;
    if (v6 != v4)
    {
      v7 = v19;
      do
      {
        v8 = v5[4];
        if (v7 >= v20)
        {
          v9 = (v7 - __p) >> 3;
          if ((v9 + 1) >> 61)
          {
            sub_299212A8C();
          }

          v10 = (v20 - __p) >> 2;
          if (v10 <= v9 + 1)
          {
            v10 = v9 + 1;
          }

          if (v20 - __p >= 0x7FFFFFFFFFFFFFF8)
          {
            v11 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v11 = v10;
          }

          if (v11)
          {
            sub_2991C1E60(&__p, v11);
          }

          v12 = (8 * v9);
          *v12 = v8;
          v7 = (8 * v9 + 8);
          v13 = v12 - (v19 - __p);
          memcpy(v13, __p, v19 - __p);
          v14 = __p;
          __p = v13;
          v19 = v7;
          v20 = 0;
          if (v14)
          {
            operator delete(v14);
          }
        }

        else
        {
          *v7 = v8;
          v7 += 8;
        }

        v19 = v7;
        v15 = v5[1];
        if (v15)
        {
          do
          {
            v16 = v15;
            v15 = *v15;
          }

          while (v15);
        }

        else
        {
          do
          {
            v16 = v5[2];
            v17 = *v16 == v5;
            v5 = v16;
          }

          while (!v17);
        }

        v5 = v16;
      }

      while (v16 != v4);
    }

    operator new();
  }

  return result;
}