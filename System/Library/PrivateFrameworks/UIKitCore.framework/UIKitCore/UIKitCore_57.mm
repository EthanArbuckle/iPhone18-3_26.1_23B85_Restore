uint64_t sub_18908FD40(uint64_t result)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  v4 = *result;
  v15 = v4;
  v5 = *(v4 + 16);
  if (v3 == v5)
  {
    if (v3)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_189212B38(v2);
        v2 = result;
      }

      if (v3 > *(v2 + 16))
      {
        __break(1u);
      }

      else
      {
        v6 = (v4 + 48);
        v7 = (v2 + 48);
        do
        {
          v8 = vaddq_f64(*v6, *v7);
          v7[-1] = vaddq_f64(v6[-1], v7[-1]);
          *v7 = v8;
          v6 = (v6 + 40);
          v7 = (v7 + 40);
          --v3;
        }

        while (v3);
        *v1 = v2;
      }
    }
  }

  else if (v5 >= v3)
  {
    v9 = result;

    v14 = *(v9 + 8);
    v11 = *v9;
    v13 = *(v9 + 16);
    v10 = v13;
    *v1 = v11;
    *(v1 + 16) = v10;
    *(v1 + 29) = *(v9 + 29);
    sub_188A3F29C(&v15, v12, &qword_1EA936508);
    sub_188A3F29C(&v14, v12, &qword_1EA936510);
    return sub_189090BAC(&v13, v12);
  }

  return result;
}

uint64_t sub_18908FE70(uint64_t result)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  v4 = *result;
  v15 = v4;
  v5 = *(v4 + 16);
  if (v3 == v5)
  {
    if (v3)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_189212B38(v2);
        v2 = result;
      }

      if (v3 > *(v2 + 16))
      {
        __break(1u);
      }

      else
      {
        v6 = (v4 + 48);
        v7 = (v2 + 48);
        do
        {
          v8 = vsubq_f64(*v7, *v6);
          v7[-1] = vsubq_f64(v7[-1], v6[-1]);
          *v7 = v8;
          v6 = (v6 + 40);
          v7 = (v7 + 40);
          --v3;
        }

        while (v3);
        *v1 = v2;
      }
    }
  }

  else if (v5 >= v3)
  {
    v9 = result;

    v14 = *(v9 + 8);
    v11 = *v9;
    v13 = *(v9 + 16);
    v10 = v13;
    *v1 = v11;
    *(v1 + 16) = v10;
    *(v1 + 29) = *(v9 + 29);
    sub_188A3F29C(&v15, v12, &qword_1EA936508);
    sub_188A3F29C(&v14, v12, &qword_1EA936510);
    return sub_189090BAC(&v13, v12);
  }

  return result;
}

double sub_18908FFA0()
{
  v1 = *v0;
  result = 0.0;
  if (*v0)
  {
    v3 = *(v1 + 16);
    if (v3)
    {
      v4 = (v1 + 48);
      do
      {
        v5 = vmulq_f64(v4[-1], v4[-1]);
        v6 = result + v5.f64[0] + v5.f64[1];
        v7 = vmulq_f64(*v4, *v4);
        result = v6 + v7.f64[0] + v7.f64[1];
        v4 = (v4 + 40);
        --v3;
      }

      while (v3);
    }
  }

  return result;
}

uint64_t sub_18909001C(uint64_t a1)
{
  if (!*v1 || !*a1)
  {
    return 1;
  }

  if (*(*v1 + 16) != *(*a1 + 16) || *(*(v1 + 8) + 16) != *(*(a1 + 8) + 16))
  {
    return 0;
  }

  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32) | (*(a1 + 36) << 32);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 36);
  v8 = *(v1 + 32);
  if (v5 == v2 && v6 == v3)
  {
    if (v8 != v4)
    {
      return 0;
    }

    return ((v4 & 0x100000000) == 0) ^ ((v8 | (v7 << 32)) >> 32) & 1;
  }

  v10 = sub_18A4A86C8();
  result = 0;
  if ((v10 & 1) != 0 && v8 == v4)
  {
    return ((v4 & 0x100000000) == 0) ^ ((v8 | (v7 << 32)) >> 32) & 1;
  }

  return result;
}

uint64_t sub_1890900EC(uint64_t *a1, double *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (*v2)
  {
    if (v3)
    {
      return sub_189090B30(v3, *v2, v4);
    }

    v3 = *v2;
    return sub_189090ADC(v3, v4);
  }

  if (v3)
  {
    return sub_189090ADC(v3, v4);
  }

  return 1;
}

double sub_18909011C(uint64_t *a1)
{
  v2 = *a1;
  if (*v1)
  {
    if (v2)
    {
      sub_189090CE0(v2, *v1, 0.00000001);
      return result;
    }

    v2 = *v1;
    return sub_189090C68(v2, 0.00000001);
  }

  if (v2)
  {
    return sub_189090C68(v2, 0.00000001);
  }

  return 0.0;
}

uint64_t sub_189090158@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_188A55598(a1, v10);
  sub_188A34624(0, &qword_1EA92E860);
  swift_dynamicCast();
  sub_1890908B0(v9, &v11);
  v4 = v12;
  v5 = v13;
  v6 = v14;
  v7 = v15;

  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  *a2 = v11;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 36) = v7 != 0;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_189090230(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2)
  {
    if (v3 && sub_189090578(v2, v3))
    {
      return 1;
    }
  }

  else if (!v3)
  {
    return 1;
  }

  return 0;
}

double sub_189090270(__int128 *a1)
{
  v2 = *v1;
  if (*v1)
  {
    v4 = *a1;
    v5 = *(v1 + 24);
    v6 = *(v1 + 8);
    if (v4)
    {
      v7 = *(a1 + 2);
      v8 = *(a1 + 3);
      v9 = *(a1 + 8) | (*(a1 + 36) << 32);
      v10 = *(v1 + 16);
      v11 = *(v1 + 32);
      v12 = *(v1 + 36);
      v19 = v4;
      v20 = v7;
      v21 = v8;
      v22 = v9;
      v23 = BYTE4(v9) & 1;
      *&v14 = v2;
      *(&v14 + 1) = v6;
      v15 = v10;
      v16 = v5;
      v17 = v11;
      v18 = v12 & 1;
      sub_18908FC10(&v19);
      result = v2;
      *v1 = v14;
      *(v1 + 16) = v15;
      *(v1 + 24) = v16;
      *(v1 + 32) = v17;
      *(v1 + 36) = v18 != 0;
      return result;
    }
  }

  *(v1 + 29) = 0;
  result = 0.0;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  return result;
}

BOOL sub_189090368()
{
  v1 = *v0;
  if (*v0)
  {
    return !v1[1].i64[0] || !*(*(v0 + 8) + 16) || !sub_189090C08(v1);
  }

  else
  {
    return 0;
  }
}

double sub_1890903B4(double result)
{
  if (*v1)
  {
    v2[0] = *v1;
    *&v2[1] = *(v1 + 8);
    v3 = *(v1 + 24);
    v4 = *(v1 + 32);
    v5 = *(v1 + 36) & 1;
    sub_18908FB80(result);
    result = v2[0];
    *v1 = *v2;
    *(v1 + 16) = v2[2];
    *(v1 + 24) = v3;
    *(v1 + 32) = v4;
    *(v1 + 36) = v5 != 0;
  }

  return result;
}

double sub_189090454@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 29) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_18909047C(uint64_t a1, __int128 *a2)
{
  v2 = a2[1];
  v4 = *a2;
  v5[0] = v2;
  *(v5 + 13) = *(a2 + 29);
  return sub_188ECCEB0(a1, &v4);
}

double sub_1890904C8@<D0>(__int128 *a1@<X0>, __int128 *a2@<X1>, void (*a3)(__int128 *__return_ptr, __int128 *, __int128 *)@<X4>, uint64_t a4@<X8>)
{
  v5 = a1[1];
  v11 = *a1;
  v12[0] = v5;
  *(v12 + 13) = *(a1 + 29);
  v6 = a2[1];
  v13 = *a2;
  v14[0] = v6;
  *(v14 + 13) = *(a2 + 29);
  a3(&v9, &v11, &v13);
  result = *&v9;
  v8 = *v10;
  *a4 = v9;
  *(a4 + 16) = v8;
  *(a4 + 29) = *&v10[13];
  return result;
}

void sub_189090538(uint64_t a1, __int128 *a2)
{
  v2 = a2[1];
  v3 = *a2;
  v4[0] = v2;
  *(v4 + 13) = *(a2 + 29);
  sub_188ECD024(a1, &v3);
}

BOOL sub_189090578(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  v3 = (a1 + 32);
  v4 = (a2 + 32);
  v5 = v2 + 1;
  do
  {
    result = --v5 == 0;
    if (!v5)
    {
      break;
    }

    v7 = *v4;
    v8 = *(v4 + 1);
    v4 = (v4 + 40);
    v9 = *v3;
    v10 = *(v3 + 1);
    v3 = (v3 + 40);
  }

  while ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v9, v7), vceqq_f64(v10, v8)))) & 1) != 0);
  return result;
}

void sub_1890905D8(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v9 = *(a2 + 8) | (*(a2 + 36) << 32);
  v10 = *a1;
  if (*a1)
  {
    v11 = a1[1];
    v12 = a1[2];
    v13 = a1[3];
    v14 = *(a1 + 8) | (*(a1 + 36) << 32);
    if (!v5)
    {
      v9 = v14 & 0x1FFFFFFFFLL;

      v6 = v11;
      v7 = v12;
      v8 = v13;
      goto LABEL_12;
    }

    v21 = *a2;
    v22 = v6;
    v23 = v7;
    v24 = v8;
    v25 = v9;
    v26 = BYTE4(v9) & 1;
    v19 = v14;
    v20 = BYTE4(v14) & 1;

    sub_18908FE70(&v21);
    v6 = v11;
    v7 = v12;
    v8 = v13;
    v15 = v19;
    v16 = v20;
  }

  else
  {
    if (!v5)
    {
      v10 = 0;
      goto LABEL_12;
    }

    v21 = *a2;
    v22 = v6;
    v23 = v7;
    v24 = v8;

    sub_18908FB80(-1.0);
    v10 = v21;
    v7 = v23;
    v15 = v9;
    v16 = BYTE4(v9) & 1;
  }

  v17 = v16 == 0;
  v18 = 0x100000000;
  if (v17)
  {
    v18 = 0;
  }

  v9 = v18 | v15;
LABEL_12:
  *a3 = v10;
  *(a3 + 8) = v6;
  *(a3 + 16) = v7;
  *(a3 + 24) = v8;
  *(a3 + 32) = v9;
  *(a3 + 36) = BYTE4(v9);
}

uint64_t sub_189090750@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v8 = *(a2 + 32) | (*(a2 + 36) << 32);
  v9 = *result;
  if (*result)
  {
    v10 = *(result + 8);
    v11 = *(result + 16);
    v12 = *(result + 24);
    v13 = *(result + 32) | (*(result + 36) << 32);
    if (v4)
    {
      v23[0] = *a2;
      v23[1] = v5;
      v23[2] = v7;
      v23[3] = v6;
      v24 = v8;
      v25 = BYTE4(v8) & 1;
      v17 = v9;
      v18 = v10;
      v19 = v11;
      v20 = v12;
      v21 = v13;
      v22 = BYTE4(v13) & 1;
      v14 = result;
      sub_188F0D2E8(a2, v16);
      sub_188F0D2E8(v14, v16);
      sub_18908FD40(v23);

      v4 = v17;
      v5 = v18;
      v7 = v19;
      v6 = v20;
      v15 = 0x100000000;
      if (!v22)
      {
        v15 = 0;
      }

      v8 = v15 | v21;
    }

    else
    {
      v8 = v13 & 0x1FFFFFFFFLL;

      v4 = v9;
      v5 = v10;
      v7 = v11;
      v6 = v12;
    }
  }

  else if (v4)
  {
    result = sub_188F0D2E8(a2, v23);
  }

  *a3 = v4;
  *(a3 + 8) = v5;
  *(a3 + 16) = v7;
  *(a3 + 24) = v6;
  *(a3 + 32) = v8;
  *(a3 + 36) = BYTE4(v8);
  return result;
}

unint64_t sub_1890908B0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 vertexCount];
  v5 = sub_188E4B8F8(0, v4 & ~(v4 >> 63), 0, MEMORY[0x1E69E7CC0]);
  result = [a1 vertexCount];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  v7 = result;
  if (result)
  {
    v8 = 0;
    do
    {
      [a1 vertexAtIndex_];
      v9 = v28;
      v10 = v29;
      v12 = *(v5 + 2);
      v11 = *(v5 + 3);
      if (v12 >= v11 >> 1)
      {
        v26 = v29;
        v27 = v28;
        v14 = sub_188E4B8F8((v11 > 1), v12 + 1, 1, v5);
        v10 = v29;
        v9 = v28;
        v5 = v14;
      }

      ++v8;
      *(v5 + 2) = v12 + 1;
      v13 = &v5[40 * v12];
      *(v13 + 2) = v9;
      *(v13 + 3) = v10;
      *(v13 + 8) = v30;
    }

    while (v7 != v8);
  }

  v15 = [a1 faceCount];
  v16 = sub_188E4B7F4(0, v15 & ~(v15 >> 63), 0, MEMORY[0x1E69E7CC0]);
  result = [a1 faceCount];
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_15;
  }

  v17 = result;
  if (result)
  {
    v18 = 0;
    do
    {
      [a1 faceAtIndex_];
      v20 = *(v16 + 2);
      v19 = *(v16 + 3);
      if (v20 >= v19 >> 1)
      {
        v16 = sub_188E4B7F4((v19 > 1), v20 + 1, 1, v16);
      }

      ++v18;
      *(v16 + 2) = v20 + 1;
      v21 = &v16[32 * v20];
      *(v21 + 2) = v28;
      *(v21 + 3) = v29;
    }

    while (v17 != v18);
  }

  v22 = [a1 depthNormalization];
  v23 = sub_18A4A7288();
  v25 = v24;

  LODWORD(v22) = [a1 subdivisionSteps];
  result = [a1 replicatesEdges];
  *a2 = v5;
  *(a2 + 8) = v16;
  *(a2 + 16) = v23;
  *(a2 + 24) = v25;
  *(a2 + 32) = v22;
  *(a2 + 36) = result;
  return result;
}

BOOL sub_189090ADC(uint64_t a1, double a2)
{
  v2 = (a1 + 32);
  v3 = vdupq_lane_s64(*&a2, 0);
  v4 = *(a1 + 16) + 1;
  do
  {
    if (!--v4)
    {
      break;
    }

    v6 = *v2;
    v5 = *(v2 + 1);
    v2 = (v2 + 40);
  }

  while ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vcgeq_f64(v3, vabsq_f64(v6)), vcgeq_f64(v3, vabsq_f64(v5)))))) & 1) == 0);
  return v4 == 0;
}

BOOL sub_189090B30(uint64_t a1, uint64_t a2, double a3)
{
  v3 = *(a2 + 16);
  if (v3 != *(a1 + 16))
  {
    return 0;
  }

  v4 = v3 + 1;
  v5 = (a2 + 56);
  v6 = (a1 + 56);
  do
  {
    result = --v4 == 0;
    if (!v4 || vabdd_f64(*(v5 - 3), *(v6 - 3)) > a3)
    {
      break;
    }

    v9 = *(v5 - 1);
    v8 = *v5;
    v10 = *(v5 - 2);
    v5 += 5;
    v12 = *(v6 - 1);
    v11 = *v6;
    v13 = *(v6 - 2);
    v6 += 5;
    v14 = vabdd_f64(v9, v12);
    if (vabdd_f64(v10, v13) <= a3)
    {
      v16 = v14 == a3;
      v15 = v14 >= a3;
    }

    else
    {
      v15 = 1;
      v16 = 0;
    }

    v17 = vabdd_f64(v8, v11);
    if (!v16 && v15)
    {
      v18 = 1;
      v19 = 0;
    }

    else
    {
      v19 = v17 == a3;
      v18 = v17 >= a3;
    }
  }

  while (v19 || !v18);
  return result;
}

BOOL sub_189090C08(int8x16_t *a1)
{
  v1 = a1 + 4;
  v2 = a1[1].i64[0] + 1;
  v3 = vdupq_n_s64(0x7FF0000000000000uLL);
  do
  {
    if (!--v2)
    {
      break;
    }

    if (vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(vandq_s8(v1[-2], v3), v3), vceqq_s64(vandq_s8(v1[-1], v3), v3)))))
    {
      break;
    }

    v4 = v1->i64[0];
    v1 = (v1 + 40);
  }

  while ((v4 & 0x7FF0000000000000) != 0x7FF0000000000000);
  return v2 == 0;
}

double sub_189090C68(uint64_t a1, double a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0.0;
  }

  v3 = vdupq_lane_s64(*&a2, 0);
  v4 = (a1 + 56);
  v5 = 0.0;
  do
  {
    v6 = vdivq_f64(vabsq_f64(*(v4 - 3)), v3);
    v7 = fabs(*(v4 - 1));
    v8 = fabs(*v4);
    if (v6.f64[0] < v6.f64[1])
    {
      v6.f64[0] = v6.f64[1];
    }

    v9 = v7 / a2;
    if (v6.f64[0] >= v9)
    {
      v9 = v6.f64[0];
    }

    v10 = v8 / a2;
    if (v9 < v10)
    {
      v9 = v10;
    }

    if (v5 <= v9)
    {
      v5 = v9;
    }

    v4 += 5;
    --v2;
  }

  while (v2);
  return v5;
}

uint64_t sub_189090CE0(uint64_t result, uint64_t a2, double a3)
{
  v3 = *(a2 + 16);
  if (v3 == *(result + 16))
  {
    v4 = 0;
    v5 = vdupq_lane_s64(*&a3, 0);
    v6 = 0.0;
LABEL_3:
    v7 = 40 * v4;
    v8 = a2;
    v9 = result;
    while (v3 != v4)
    {
      if (v4 >= v3)
      {
        __break(1u);
LABEL_17:
        __break(1u);
        return result;
      }

      v10 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_17;
      }

      v11 = vdivq_f64(vabdq_f64(*(v8 + v7 + 32), *(v9 + v7 + 32)), v5);
      v12 = vabdd_f64(*(v8 + v7 + 48), *(v9 + v7 + 48));
      v13 = vabdd_f64(*(v8 + v7 + 56), *(v9 + v7 + 56));
      v14 = v11.f64[1];
      if (v11.f64[0] >= v11.f64[1])
      {
        v14 = v11.f64[0];
      }

      v15 = v12 / a3;
      if (v14 >= v15)
      {
        v15 = v14;
      }

      v16 = v13 / a3;
      if (v15 >= v16)
      {
        v16 = v15;
      }

      ++v4;
      v9 += 40;
      v8 += 40;
      if (v6 <= v16)
      {
        v6 = v16;
        v4 = v10;
        goto LABEL_3;
      }
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_5UIKit25UIAnimatableMeshTransformV7Storage33_2F09033D354A7388341A9D68245FE6E8LLO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy37_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 29) = *(a2 + 29);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_189090DD4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 37))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_189090E24(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 29) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 37) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 37) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_189090E80(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 36) = 0;
    *(result + 32) = 0;
    *(result + 8) = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_189090EBC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 37))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_189090F04(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 36) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 37) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 37) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_189090F5C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 37))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_189090FB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 36) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 37) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 37) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_189091028()
{
  result = qword_1EA92EBD8;
  if (!qword_1EA92EBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA92EBD8);
  }

  return result;
}

unint64_t sub_18909107C(uint64_t a1)
{
  result = sub_188F0D398();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1890910A8()
{
  result = qword_1EA92EBD0;
  if (!qword_1EA92EBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA92EBD0);
  }

  return result;
}

unint64_t sub_1890910FC(uint64_t a1)
{
  result = sub_189091124();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_189091124()
{
  result = qword_1EA92EBC0;
  if (!qword_1EA92EBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA92EBC0);
  }

  return result;
}

void sub_189091178()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [*(v0 + OBJC_IVAR____TtC5UIKit24ToolbarKeyboardAssistant_view) _isAncestorOfFirstResponder];
    if (v4 & 1) != 0 || (*(v0 + OBJC_IVAR____TtC5UIKit24ToolbarKeyboardAssistant_alwaysAvoidsKeyboard))
    {
      v5 = sub_18A4A4D08();
      v6 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_safeAreaRegions;
      swift_beginAccess();
      v7 = *&v3[v6];
      if ((v5 & ~v7) != 0)
      {
        v8 = v5;
      }

      else
      {
        v8 = 0;
      }

      *&v3[v6] = v8 | v7;
      sub_188F2461C(v7);
      v9 = (v1 + OBJC_IVAR____TtC5UIKit24ToolbarKeyboardAssistant_toolbarModel);
      v10 = *(v1 + OBJC_IVAR____TtC5UIKit24ToolbarKeyboardAssistant_toolbarModel);
      v11 = v3[OBJC_IVAR____TtC5UIKit17UIHostingViewBase_keyboardFrame + 32] ^ 1;
      if (*(v10 + 129) != (v11 & 1))
      {
LABEL_8:
        KeyPath = swift_getKeyPath();
        v19 = &v19;
        MEMORY[0x1EEE9AC00](KeyPath);
        v20 = v10;
        sub_188AF0C98();

        sub_18A4A2BF8();

        goto LABEL_13;
      }
    }

    else
    {
      v13 = sub_18A4A4D08();
      v14 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_safeAreaRegions;
      swift_beginAccess();
      v15 = *&v3[v14];
      v16 = -1;
      if ((v15 & v13) != 0)
      {
        v16 = ~v13;
      }

      *&v3[v14] = v16 & v15;
      sub_188F2461C(v15);
      v11 = 0;
      v9 = (v1 + OBJC_IVAR____TtC5UIKit24ToolbarKeyboardAssistant_toolbarModel);
      v10 = *(v1 + OBJC_IVAR____TtC5UIKit24ToolbarKeyboardAssistant_toolbarModel);
      if (*(v10 + 129))
      {
        goto LABEL_8;
      }
    }

    *(v10 + 129) = v11 & 1;
LABEL_13:
    v17 = *v9;
    if (v4 == *(*v9 + 128))
    {

      *(v17 + 128) = v4;
    }

    else
    {
      v18 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v18);
      v20 = v17;
      sub_188AF0C98();

      sub_18A4A2BF8();
    }
  }
}

uint64_t sub_1890914FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_188AF0C98();
  sub_18A4A2C08();

  *a2 = *(v3 + 128);
  return result;
}

uint64_t sub_18909159C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_188AF0C98();
  sub_18A4A2C08();

  *a2 = *(v3 + 129);
  return result;
}

void sub_18909167C(void *a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v2 = [a1 traitCollection];
    sub_1890916FC(v2, 1);
  }
}

void sub_1890916FC(void *a1, char a2)
{
  v3 = v2;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = [a1 glassUserInterfaceStyle];
    v9 = &selRef_userInterfaceStyle;
    if (v8)
    {
      v9 = &selRef_glassUserInterfaceStyle;
    }

    v10 = [a1 *v9];
    v11 = [(UIView *)v7 _traitOverrides];
    v12 = [(_UITraitOverrides *)v11 _swiftImplCopy];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210);
    inited = swift_initStackObject();
    *(inited + 16) = v12;
    aBlock[0] = inited;
    sub_188D63200(v10);
    v14 = [(UIView *)v7 _traitOverrides];
    v15 = *(aBlock[0] + 16);

    [(_UITraitOverrides *)v14 _replaceWithOverrides:v15];

    v16 = [a1 activeAppearance];
    v17 = [(UIView *)v7 _traitOverrides];
    v18 = [(_UITraitOverrides *)v17 _swiftImplCopy];

    v19 = swift_initStackObject();
    *(v19 + 16) = v18;
    aBlock[0] = v19;
    sub_18914E550(v16);
    v20 = [(UIView *)v7 _traitOverrides];
    v21 = *(aBlock[0] + 16);

    [(_UITraitOverrides *)v20 _replaceWithOverrides:v21];

    v22 = [a1 _glassElevationLevel];
    v23 = [(UIView *)v7 _traitOverrides];
    v24 = [(_UITraitOverrides *)v23 _swiftImplCopy];

    v25 = swift_initStackObject();
    *(v25 + 16) = v24;
    aBlock[0] = v25;
    sub_188D635B0(v22);
    v26 = [(UIView *)v7 _traitOverrides];
    v27 = *(aBlock[0] + 16);

    [(_UITraitOverrides *)v26 _replaceWithOverrides:v27];

    sub_188EB3AA8(&v38);
    v28 = v38;
    v29 = [(UIView *)v7 _traitOverrides];
    v30 = [(_UITraitOverrides *)v29 _swiftImplCopy];

    v31 = swift_initStackObject();
    *(v31 + 16) = v30;
    aBlock[0] = v31;
    sub_1891DBB68(v28);
    v32 = [(UIView *)v7 _traitOverrides];
    v33 = *(aBlock[0] + 16);

    [(_UITraitOverrides *)v32 _replaceWithOverrides:v33];

    if (a2)
    {
      v34 = objc_opt_self();
      if ([v34 _isInAnimationBlockWithAnimationsEnabled])
      {
        if (![v34 _isInRetargetableAnimationBlock])
        {
          aBlock[4] = sub_189091B5C;
          aBlock[5] = v3;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_188A4A8F0;
          aBlock[3] = &block_descriptor_97;
          v36 = _Block_copy(aBlock);

          [v34 _animateByRetargetingAnimations_completion_];

          _Block_release(v36);
          return;
        }

        v35 = swift_unknownObjectWeakLoadStrong();
        [v35 updateTraitsIfNeeded];
        [v35 layoutIfNeeded];
      }
    }
  }
}

void sub_189091AFC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  [Strong updateTraitsIfNeeded];
  [Strong layoutIfNeeded];
}

id static UICalendarViewDecoration.default(color:size:)(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() decorationWithColor:a1 size:a2];

  return v2;
}

id static UICalendarViewDecoration.image(_:color:size:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_allocWithZone(UICalendarViewDecoration);

  return [v6 initWithImage:a1 color:a2 size:a3];
}

uint64_t sub_189091C1C()
{
  swift_getMetatypeMetadata();
  sub_18A4A7308();
  v0 = sub_18A4A7258();

  v1 = MEMORY[0x18CFE4050](v0);

  return v1;
}

uint64_t sub_189091CA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for _BoxedNSSecureCodingValue();
  sub_189093018(a2, a3, &v6);
  return v6;
}

void sub_189091D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1;
  v7 = type metadata accessor for _BoxedNSSecureCodingValue();
  swift_getAssociatedTypeWitness();
  swift_getWitnessTable();
  sub_189093AD8(&v8, a2, v7, a3, v7, a4);
}

uint64_t sub_189091DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _BoxedNSSecureCodingValue();
  sub_1890934C4(a2, a3, a4, &v8);
  return v8;
}

void sub_189091E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a1;
  v9 = type metadata accessor for _BoxedNSSecureCodingValue();
  WitnessTable = swift_getWitnessTable();
  sub_1890940D8(&v11, a2, v9, a3, a4, v9, a5, WitnessTable);
}

id sub_189091EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1;
  swift_getAssociatedTypeWitness();
  swift_getWitnessTable();
  return sub_18909282C(&v8, a2, a3, a4);
}

void sub_189091F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a1;
  WitnessTable = swift_getWitnessTable();
  sub_1890929CC(&v10, a2, a3, a4, a5, WitnessTable);
}

void sub_189091FF0(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  type metadata accessor for _BoxedCodableValue();

  sub_189093018(a1, a2, a3);
}

void sub_18909205C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for _BoxedCodableValue();

  sub_189093AD8(a1, a2, v8, a3, v8, a4);
}

id sub_1890920F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9[0] = a1;
  v9[1] = a2;
  sub_189095C14();
  return sub_18909282C(v9, a3, a4, a5);
}

id sub_189092150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [v3 flagForSetting_];
  if (result >= 2)
  {
    (*(a3 + 16))(&v7, a2, a3);
    return v7;
  }

  return result;
}

id sub_1890921D8(char a1)
{
  v3 = sub_189091C1C();

  return [v1 setFlag:a1 & 1 forSetting:v3];
}

uint64_t sub_189092234()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935D88);
  __swift_allocate_value_buffer(v0, qword_1EA93B710);
  v1 = __swift_project_value_buffer(v0, qword_1EA93B710);
  v2 = sub_18A4A4378();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t sub_1890922D4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_18A4A7D38();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v16 - v10;
  if ([v3 objectForSetting_])
  {
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A55538(v16, v17);
  }

  else
  {
    memset(v17, 0, sizeof(v17));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050);
  v12 = swift_dynamicCast();
  v13 = *(*(AssociatedTypeWitness - 8) + 56);
  if (v12)
  {
    v14 = *(AssociatedTypeWitness - 8);
    v13(v11, 0, 1, AssociatedTypeWitness);
    return (*(v14 + 32))(a3, v11, AssociatedTypeWitness);
  }

  else
  {
    v13(v11, 1, 1, AssociatedTypeWitness);
    (*(v9 + 8))(v11, v8);
    return (*(a2 + 16))(a1, a2);
  }
}

uint64_t sub_18909250C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v18[0] = a3;
  v8 = sub_18A4A7D38();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v18 - v10;
  if ([v4 objectForSetting_])
  {
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  v21[0] = v19;
  v21[1] = v20;
  sub_188A3F29C(v21, &v19, &qword_1EA934050);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050);
  v12 = swift_dynamicCast();
  v13 = *(*(a2 - 8) + 56);
  if (v12)
  {
    v14 = *(a2 - 8);
    v13(v11, 0, 1, a2);
    sub_188A3F5FC(v21, &qword_1EA934050);
    (*(v14 + 32))(a4, v11, a2);
    v15 = a4;
    v16 = 0;
    return v13(v15, v16, 1, a2);
  }

  v13(v11, 1, 1, a2);
  (*(v9 + 8))(v11, v8);
  sub_188A3F29C(v21, &v19, &qword_1EA934050);
  if (*(&v20 + 1))
  {
    sub_188A34624(0, &qword_1EA93B790);
    if (swift_dynamicCast())
    {

      sub_188A3F5FC(v21, &qword_1EA934050);
      v15 = a4;
      v16 = 1;
      return v13(v15, v16, 1, a2);
    }
  }

  else
  {
    sub_188A3F5FC(&v19, &qword_1EA934050);
  }

  (*(v18[0] + 16))(a1);
  return sub_188A3F5FC(v21, &qword_1EA934050);
}

id sub_18909282C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v16 - v11;
  (*(a4 + 16))(a3, a4, v10);
  v13 = sub_18A4A7248();
  (*(v9 + 8))(v12, AssociatedTypeWitness);
  if (v13)
  {
    return [v5 setObject:0 forSetting:sub_189091C1C()];
  }

  v15 = sub_18A4A86A8();
  [v5 setObject:v15 forSetting:sub_189091C1C()];
  return swift_unknownObjectRelease();
}

void sub_1890929CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v50 = a6;
  v10 = *(a4 - 8);
  v64 = a1;
  v65 = v10;
  MEMORY[0x1EEE9AC00](a1);
  v56 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v49 = &v48 - v13;
  v14 = sub_18A4A7D38();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v57 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v17 = &v48 - v16;
  v18 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v54 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v59 = &v48 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v63 = &v48 - v24;
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v48 - v27;
  v29 = *(a5 + 16);
  v60 = a3;
  v61 = a2;
  v55 = a5;
  v51 = v29;
  v52 = a5 + 16;
  (v29)(a3, a5, v26);
  v58 = TupleTypeMetadata2;
  v30 = *(TupleTypeMetadata2 + 48);
  v53 = v18;
  v31 = *(v18 + 16);
  (v31)(v17, v64, v14);
  (v31)(&v17[v30], v28, v14);
  v32 = *(v65 + 48);
  if (v32(v17, 1, a4) == 1)
  {
    v63 = v31;
    v33 = *(v18 + 8);
    v33(v28, v14);
    if (v32(&v17[v30], 1, a4) == 1)
    {
      v33(v17, v14);
LABEL_13:
      [v62 setObject:0 forSetting:sub_189091C1C()];
      return;
    }

    v35 = a4;
    v34 = v33;
    v31 = v63;
    goto LABEL_7;
  }

  (v31)(v63, v17, v14);
  v48 = v32;
  if (v32(&v17[v30], 1, a4) == 1)
  {
    v34 = *(v18 + 8);
    v34(v28, v14);
    (*(v65 + 8))(v63, a4);
    v32 = v48;
    v35 = a4;
LABEL_7:
    (*(v57 + 8))(v17, v58);
    v36 = v59;
    goto LABEL_8;
  }

  v44 = v49;
  (*(v65 + 32))(v49, &v17[v30], a4);
  LODWORD(v58) = sub_18A4A7248();
  v57 = *(v65 + 8);
  (v57)(v44, a4);
  v45 = v31;
  v46 = *(v18 + 8);
  v46(v28, v14);
  (v57)(v63, a4);
  v34 = v46;
  v31 = v45;
  v34(v17, v14);
  v36 = v59;
  v32 = v48;
  v35 = a4;
  if (v58)
  {
    goto LABEL_13;
  }

LABEL_8:
  (v31)(v36, v64, v14);
  v37 = v32(v36, 1, v35);
  v38 = v60;
  if (v37 != 1)
  {
    v41 = v65;
    v42 = v56;
    (*(v65 + 32))(v56, v36, v35);
    v43 = sub_18A4A86A8();
    [v62 setObject:v43 forSetting:sub_189091C1C()];
    swift_unknownObjectRelease();
    (*(v41 + 8))(v42, v35);
    return;
  }

  v34(v36, v14);
  v39 = v54;
  v51(v38, v55);
  v40 = v32(v39, 1, v35);
  v34(v39, v14);
  if (v40 == 1)
  {
    goto LABEL_13;
  }

  v47 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  [v62 setObject:v47 forSetting:sub_189091C1C()];
}

void sub_189093018(uint64_t a1@<X2>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935D88);
  MEMORY[0x1EEE9AC00](v7);
  if ([v3 objectForSetting_])
  {
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13[0] = v11;
  v13[1] = v12;
  if (*(&v12 + 1))
  {
    if (swift_dynamicCast())
    {
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v9 = v10;
      sub_1890951D8(AssociatedTypeWitness, AssociatedTypeWitness, a3);

      return;
    }
  }

  else
  {
    sub_188A3F5FC(v13, &qword_1EA934050);
  }

  (*(a2 + 16))(a1, a2);
}

uint64_t sub_1890934C4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935D88);
  MEMORY[0x1EEE9AC00](v9);
  if ([v4 objectForSetting_])
  {
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v15[0] = v13;
  v15[1] = v14;
  sub_188A3F29C(v15, &v13, &qword_1EA934050);
  if (*(&v14 + 1))
  {
    if (swift_dynamicCast())
    {
      v10 = v12;
      sub_1890951D8(a2, a2, a4);
      sub_188A3F5FC(v15, &qword_1EA934050);

      return (*(*(a2 - 8) + 56))(a4, 0, 1, a2);
    }
  }

  else
  {
    sub_188A3F5FC(&v13, &qword_1EA934050);
  }

  sub_188A3F29C(v15, &v13, &qword_1EA934050);
  if (*(&v14 + 1))
  {
    sub_188A34624(0, &qword_1EA93B790);
    if (swift_dynamicCast())
    {
      sub_188A3F5FC(v15, &qword_1EA934050);

      return (*(*(a2 - 8) + 56))(a4, 1, 1, a2);
    }
  }

  else
  {
    sub_188A3F5FC(&v13, &qword_1EA934050);
  }

  (*(a3 + 16))(a1, a3);
  return sub_188A3F5FC(v15, &qword_1EA934050);
}

void sub_189093AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26[10] = a3;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935D88);
  MEMORY[0x1EEE9AC00](v27);
  v29 = v26 - v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v28 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = v26 - v17;
  (*(a6 + 16))(a4, a6, v16);
  v19 = sub_18A4A7248();
  v20 = *(v13 + 8);
  v20(v18, AssociatedTypeWitness);
  if (v19)
  {
    [v30 setObject:0 forSetting:sub_189091C1C()];
  }

  else
  {
    v26[8] = a2;
    v26[9] = v20;
    v21 = v30;
    v31[3] = AssociatedTypeWitness;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v31);
    v23 = *(v13 + 16);
    v26[6] = a1;
    v26[7] = v23;
    v23(boxed_opaque_existential_0, a1, AssociatedTypeWitness);
    v24 = *(a5 + 112);
    v26[5] = a5;
    v25 = v24(v31);
    [v21 setObject:v25 forSetting:sub_189091C1C()];
  }
}

void sub_1890940D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v59 = a8;
  v64 = a6;
  v76 = a4;
  v54[2] = a3;
  v75 = a1;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935D88);
  MEMORY[0x1EEE9AC00](v55);
  v57 = v54 - v11;
  v12 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v65 = v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v58 = v54 - v16;
  v17 = sub_18A4A7D38();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v67 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v20 = v54 - v19;
  v21 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v54[1] = v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v56 = v54 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v62 = v54 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v70 = v54 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v74 = v54 - v31;
  v33 = MEMORY[0x1EEE9AC00](v32);
  v35 = v54 - v34;
  v36 = *(a7 + 16);
  v73 = a2;
  v63 = a7;
  v61 = a7 + 16;
  v60 = v36;
  (v36)(v76, a7, v33);
  v68 = TupleTypeMetadata2;
  v37 = *(TupleTypeMetadata2 + 48);
  v66 = v21;
  v38 = *(v21 + 16);
  v38(v20, v75, v17);
  v38(&v20[v37], v35, v17);
  v72 = v12;
  v39 = *(v12 + 48);
  v40 = v39(v20, 1, a5);
  v69 = v38;
  if (v40 == 1)
  {
    v41 = *(v21 + 8);
    v41(v35, v17);
    if (v39(&v20[v37], 1, a5) == 1)
    {
      v41(v20, v17);
LABEL_12:
      [v71 setObject:0 forSetting:sub_189091C1C()];
      return;
    }

    goto LABEL_6;
  }

  v38(v74, v20, v17);
  if (v39(&v20[v37], 1, a5) == 1)
  {
    v41 = *(v21 + 8);
    v41(v35, v17);
    (*(v72 + 8))(v74, a5);
LABEL_6:
    (*(v67 + 8))(v20, v68);
    v42 = v70;
    goto LABEL_7;
  }

  v68 = v21 + 16;
  v49 = v72;
  v50 = v58;
  (*(v72 + 32))(v58, &v20[v37], a5);
  LODWORD(v67) = sub_18A4A7248();
  v51 = *(v49 + 8);
  v51(v50, a5);
  v41 = *(v21 + 8);
  v41(v35, v17);
  v51(v74, a5);
  v41(v20, v17);
  v42 = v70;
  if (v67)
  {
    goto LABEL_12;
  }

LABEL_7:
  v43 = v39;
  v69(v42, v75, v17);
  if (v39(v42, 1, a5) != 1)
  {
    v46 = v72;
    v47 = v65;
    (*(v72 + 32))(v65, v42, a5);
    v77[3] = a5;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v77);
    (*(v46 + 16))(boxed_opaque_existential_0, v47, a5);
    v53 = (*(v64 + 112))(v77);
    [v71 setObject:v53 forSetting:sub_189091C1C()];

    (*(v46 + 8))(v47, a5);
    return;
  }

  v41(v42, v17);
  v44 = v62;
  v60(v76, v63);
  v45 = v43(v44, 1, a5);
  v41(v44, v17);
  if (v45 == 1)
  {
    goto LABEL_12;
  }

  v52 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  [v71 setObject:v52 forSetting:sub_189091C1C()];
}

uint64_t sub_189094C08(uint64_t a1)
{
  sub_188A55598(a1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B780);
  result = swift_dynamicCast();
  if (result)
  {
    v2 = result;

    return v2;
  }

  return result;
}

id sub_189094C7C(uint64_t a1)
{
  sub_188A55598(a1, &v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B780);
  if (swift_dynamicCast())
  {
    v2 = v6;
    v1 = [v6 hash];
  }

  else
  {
    sub_189095BC0();
    swift_allocError();
    *v3 = 1;
    swift_willThrow();
  }

  return v1;
}

uint64_t sub_189094D44(uint64_t a1)
{
  sub_188A55598(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B780);
  if (swift_dynamicCast())
  {
    v2 = [objc_allocWithZone(MEMORY[0x1E696ACC8]) initRequiringSecureCoding_];
    v3 = v8;
    v4 = sub_18A4A7258();
    [v2 encodeObject:v3 forKey:v4];

    v5 = [v2 encodedData];
    v1 = sub_18A4A2928();
  }

  else
  {
    sub_189095BC0();
    swift_allocError();
    *v6 = 1;
    swift_willThrow();
  }

  return v1;
}

void sub_189094E94(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v20 = a4;
  v8 = sub_18A4A7D38();
  v19 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  v22 = &unk_1EFE50F68;
  if (!swift_dynamicCastTypeToObjCProtocolConditional())
  {
    goto LABEL_5;
  }

  sub_188A34624(0, &qword_1ED490230);
  if (!swift_dynamicCastMetatype())
  {
    goto LABEL_5;
  }

  v11 = objc_allocWithZone(MEMORY[0x1E696ACD0]);
  sub_188DBF7D8(a1, a2);
  v12 = sub_188DCC878();
  sub_188DC0F30(a1, a2);
  if (v4)
  {

LABEL_5:
    sub_189095BC0();
    swift_allocError();
    *v13 = 0;
    swift_willThrow();
    return;
  }

  if (!v12)
  {
    goto LABEL_5;
  }

  v14 = sub_18A4A7C38();

  v21 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B778);
  v15 = swift_dynamicCast();
  v16 = *(*(a3 - 8) + 56);
  if ((v15 & 1) == 0)
  {
    v16(v10, 1, 1, a3);
    (*(v19 + 8))(v10, v8);
    goto LABEL_5;
  }

  v17 = *(a3 - 8);
  v16(v10, 0, 1, a3);
  (*(v17 + 32))(v20, v10, a3);
}

uint64_t sub_189095168(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_188A55598(a1, v6);
  v4 = sub_188DBF4DC(v6);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v4;
}

uint64_t sub_1890951D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v22 = a3;
  v23 = a1;
  ObjectType = swift_getObjectType();
  v30 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](ObjectType);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_18A4A7D38();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - v12;
  v14 = OBJC_IVAR____TtC5UIKitP33_255CA08DD239FA8856FF3210D2BF9D939_ValueBox_contents;
  swift_beginAccess();
  sub_188DC7F98(v5 + v14, v28);
  if (v29 == 1)
  {
    sub_188A55538(v28, v25);
    sub_188A55598(v25, v24);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0Tm(v25);
      v15 = v30;
      (*(v30 + 56))(v13, 0, 1, a2);
      return (*(v15 + 32))(v22, v13, a2);
    }

    else
    {
      (*(v30 + 56))(v13, 1, 1, a2);
      (*(v11 + 8))(v13, v10);
      sub_189095BC0();
      swift_allocError();
      *v18 = 0;
      swift_willThrow();
      return __swift_destroy_boxed_opaque_existential_0Tm(v25);
    }
  }

  else
  {
    v17 = v28[0];
    (*(ObjectType + 160))(*&v28[0], *(&v28[0] + 1), v23, a2);
    if (v4)
    {
      return sub_188DC0F30(v17, *(&v17 + 1));
    }

    else
    {
      v26 = a2;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v25);
      v20 = v30;
      (*(v30 + 16))(boxed_opaque_existential_0, v9, a2);
      sub_188DC0F30(v17, *(&v17 + 1));
      v27 = 1;
      swift_beginAccess();
      sub_188DCCB38(v25, v5 + v14);
      swift_endAccess();
      return (*(v20 + 32))(v22, v9, a2);
    }
  }
}

uint64_t sub_1890955A0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935D88);
  MEMORY[0x1EEE9AC00](v3);
  v4 = OBJC_IVAR____TtC5UIKitP33_255CA08DD239FA8856FF3210D2BF9D939_ValueBox_contents;
  swift_beginAccess();
  sub_188DC7F98(v1 + v4, &v8);
  if (v10)
  {
    sub_188A55538(&v8, v7);
    v5 = (*(ObjectType + 144))(v7);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
  }

  else
  {
    v5 = v9;
    sub_188DC0F30(v8, *(&v8 + 1));
  }

  return v5;
}

BOOL sub_1890958EC(uint64_t a1)
{
  swift_getObjectType();
  sub_188A3F29C(a1, v7, &qword_1EA934050);
  if (v8)
  {
    if (swift_dynamicCast())
    {
      v3 = [v1 hash];
      v4 = [v6 hash];

      return v3 == v4;
    }
  }

  else
  {
    sub_188A3F5FC(v7, &qword_1EA934050);
  }

  return 0;
}

uint64_t sub_189095A4C()
{
  sub_189095BC0();
  swift_allocError();
  *v0 = 1;
  return swift_willThrow();
}

id sub_189095ACC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _ValueBox();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_189095B04(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_189095B40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_189095B8C(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 32) = a2;
  return result;
}

unint64_t sub_189095BC0()
{
  result = qword_1EA93B750;
  if (!qword_1EA93B750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93B750);
  }

  return result;
}

unint64_t sub_189095C14()
{
  result = qword_1EA93B788;
  if (!qword_1EA93B788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93B788);
  }

  return result;
}

unint64_t sub_189095C7C()
{
  result = qword_1EA93B798;
  if (!qword_1EA93B798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93B798);
  }

  return result;
}

_UIKitFeatures __swiftcall _UIKitFeatures.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for _UIKitFeatures()
{
  result = qword_1EA93B7A0;
  if (!qword_1EA93B7A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA93B7A0);
  }

  return result;
}

uint64_t sub_189095DF4()
{
  v0 = sub_18A4A6BD8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if ((v5 - 2) > 3)
  {
    v6 = MEMORY[0x1E6981CB0];
  }

  else
  {
    v6 = qword_1E70F24C0[(v5 - 2)];
  }

  (*(v1 + 104))(v3, *v6, v0);
  v7 = sub_18A4A6BE8();
  (*(v1 + 8))(v3, v0);
  return v7 & 1;
}

uint64_t sub_1890960C0()
{
  v1 = v0;
  v2 = [v0 collectorInteraction];

  v3 = sub_188E8F750(MEMORY[0x1E69E7CC0]);
  v4 = qword_1EFAB91E0;
  sub_188FAAF08(qword_1EFAB91E0, &v21);
  v5 = v21;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_188EA0E74(v5, v4, isUniquelyReferenced_nonNull_native);
  v7 = qword_1EFAB91E8;
  sub_188FAAF08(qword_1EFAB91E8, &v21);
  v8 = v21;
  v9 = swift_isUniquelyReferenced_nonNull_native();
  sub_188EA0E74(v8, v7, v9);
  v10 = qword_1EFAB91F0;
  sub_188FAAF08(qword_1EFAB91F0, &v21);
  v11 = v21;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  sub_188EA0E74(v11, v10, v12);
  v13 = qword_1EFAB91F8;
  sub_188FAAF08(qword_1EFAB91F8, &v21);
  v14 = v21;
  v15 = swift_isUniquelyReferenced_nonNull_native();
  sub_188EA0E74(v14, v13, v15);
  v16 = v3;
  v17 = OBJC_IVAR____UIScrollPocketAppearanceObserverInteraction_glassFrostValues;
  swift_beginAccess();
  v18 = *&v1[v17];
  *&v1[v17] = v16;
  LOBYTE(v16) = sub_188F8E6AC(v18, v16);

  if (v16)
  {
  }

  v19 = [v1 observer];
  if (!v19)
  {
  }

  [v19 _scrollPocketAppearanceObserverDidUpdate_];

  return swift_unknownObjectRelease();
}

uint64_t sub_1890963A8(void *a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v3 + 24) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_188F2AF98;
  *(v4 + 24) = v3;
  v22 = sub_188A4B574;
  v23 = v4;
  v18 = MEMORY[0x1E69E9820];
  v19 = 1107296256;
  v20 = sub_188A4A968;
  v21 = &block_descriptor_98;
  v5 = _Block_copy(&v18);
  v6 = a1;
  v7 = v1;

  [v6 appendProem:v7 block:v5];
  _Block_release(v5);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v10 = [v6 style];
  v11 = [v10 verbosity];

  if (v11 == 2)
  {
  }

  v12 = [objc_opt_self() succinctStyle];
  v13 = swift_allocObject();
  *(v13 + 16) = v6;
  *(v13 + 24) = v7;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_189096CA0;
  *(v14 + 24) = v13;
  v22 = sub_188E3FE50;
  v23 = v14;
  v18 = MEMORY[0x1E69E9820];
  v19 = 1107296256;
  v20 = sub_188A4A968;
  v21 = &block_descriptor_15_2;
  v15 = _Block_copy(&v18);
  v16 = v6;
  v17 = v7;

  [v16 overlayStyle:v12 block:v15];

  _Block_release(v15);
  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1890966A8(void *a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_189096CA8;
  *(v5 + 24) = v4;
  v10[4] = sub_188E3FE50;
  v10[5] = v5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_188A4A968;
  v10[3] = &block_descriptor_25_4;
  v6 = _Block_copy(v10);
  v7 = a2;
  v8 = a1;

  [v8 appendBodySectionWithName:0 block:v6];
  _Block_release(v6);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  return result;
}

void sub_18909680C(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____UIScrollPocketAppearanceObserverInteraction_glassFrostValues;
  swift_beginAccess();
  if (*(*(a1 + v4) + 16) && (sub_188C4585C(1), (v5 & 1) != 0))
  {
    swift_endAccess();
    v6 = sub_18A4A8778();
    v7 = sub_18A4A7258();

    swift_unknownObjectRelease();
  }

  else
  {
    swift_endAccess();
  }

  swift_beginAccess();
  if (*(*(a1 + v4) + 16) && (sub_188C4585C(2), (v8 & 1) != 0))
  {
    swift_endAccess();
    v9 = sub_18A4A8778();
    v10 = sub_18A4A7258();

    swift_unknownObjectRelease();
  }

  else
  {
    swift_endAccess();
  }

  swift_beginAccess();
  if (*(*(a1 + v4) + 16) && (sub_188C4585C(4), (v11 & 1) != 0))
  {
    swift_endAccess();
    v12 = sub_18A4A8778();
    v13 = sub_18A4A7258();

    swift_unknownObjectRelease();
  }

  else
  {
    swift_endAccess();
  }

  swift_beginAccess();
  if (*(*(a1 + v4) + 16) && (sub_188C4585C(8), (v14 & 1) != 0))
  {
    swift_endAccess();
    v15 = sub_18A4A8778();
    v16 = sub_18A4A7258();

    swift_unknownObjectRelease();
  }

  else
  {
    swift_endAccess();
  }
}

id _UIScrollPocketAppearanceObserverInteraction.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for _UIScrollPocketAppearanceObserverInteraction()
{
  result = qword_1EA93B7D0;
  if (!qword_1EA93B7D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA93B7D0);
  }

  return result;
}

uint64_t sub_189096CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, void *a6, uint64_t a7, uint64_t a8, float a9, float a10, float a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned __int8 a16, int a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21)
{
  v22 = v21;
  v88 = a8;
  v87 = a7;
  v81 = a6;
  LODWORD(v82) = a5;
  v90 = a4;
  v91 = a3;
  v80 = a1;
  v97 = a21;
  v83 = a20;
  v27 = *v21;
  v28 = *(v27 + 80);
  v84 = a16;
  v92 = sub_18A4A7D38();
  v86 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v85 = &v75 - v29;
  v95 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v77 = &v75 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v76 = &v75 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v79 = &v75 - v35;
  v89 = *(v27 + 88);
  v36 = type metadata accessor for RunningInProcessAnimation();
  v37 = sub_18A4A7D38();
  v78 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v75 - v38;
  v40 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v75 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v75 - v45;
  v47 = sub_188D385B0();
  v93 = v40;
  v94 = a2;
  v96 = v36;
  if (!v47)
  {
    (*(v40 + 56))(v39, 1, 1, v36);
    sub_189098FD8(v39, v81, v22, v91, v90, v82 & 1, v46);
    (*(v78 + 8))(v39, v37);
    goto LABEL_7;
  }

  v48 = v47;
  isEscapingClosureAtFileLocation = v81;
  if (qword_1ED48DC20 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v50 = v94;
    if (byte_1EA931338 == 1)
    {
      MEMORY[0x1EEE9AC00](v47);
      *(&v75 - 8) = isEscapingClosureAtFileLocation;
      *(&v75 - 7) = v22;
      v51 = v90;
      *(&v75 - 6) = v91;
      *(&v75 - 5) = v51;
      *(&v75 - 32) = v82 & 1;
      *(&v75 - 3) = v50;
      *(&v75 - 2) = v48;
      sub_1890E3CDC(sub_18909A420);
    }

    else
    {
      v52 = *(*v48 + 104);
      swift_beginAccess();
      v53 = v93;
      (*(v93 + 16))(v43, v48 + v52, v36);
      sub_189099158(v43, isEscapingClosureAtFileLocation, v22, v91, v90, v82 & 1, v50, v48, v46);

      (*(v53 + 8))(v43, v36);
    }

LABEL_7:
    _s21RunningAnimationEntryCMa();
    v54 = v97;

    v36 = sub_1890E44D0(v46, v83, v54);

    v55 = v95;
    v56 = v85;
    if (v84)
    {
      swift_unknownObjectWeakAssign();
    }

    v84 = a17;
    v97 = a15;
    v83 = a14;
    v82 = a12;
    v57 = *(*v22 + 136);
    swift_beginAccess();
    v58 = v86;
    v59 = v92;
    (*(v86 + 16))(v56, v22 + v57, v92);
    if ((v55[6].isa)(v56, 1, v28) == 1)
    {
      (*(v58 + 8))(v56, v59);
      if ((a19 & 1) == 0)
      {
        v60 = v76;
        sub_18A4A83D8();
        v61 = v77;
        (v95[2].isa)(v77, v60, v28);
        sub_18A4A4E98();
        sub_1890E4524(v61);
        isa = v95[1].isa;
        (isa)(v61, v28);
        (isa)(v60, v28);
        v55 = v95;
      }
    }

    else
    {
      v63 = v79;
      (v55[4].isa)(v79, v56, v28);
      sub_1890E4524(v63);
      (v55[1].isa)(v63, v28);
    }

    v64 = swift_allocBox();
    v92 = v64;
    (v55[7].isa)(v65, 1, 1, v28);
    v66 = *(v22 + *(*v22 + 168));
    v67 = sub_188F7EA98(v96);
    v91 = v46;
    v68 = v67;
    v69 = swift_allocObject();
    v70 = v87;
    v69[2] = v36;
    v69[3] = v70;
    v69[4] = v88;
    v69[5] = v22;
    v71 = v94;
    v69[6] = v64;
    v69[7] = v71;
    v69[8] = v82;
    v69[9] = a13;
    v72 = v97;
    v69[10] = v83;
    v69[11] = v72;
    type metadata accessor for InProcessAnimationManager.TickEntry();
    v48 = swift_allocObject();
    *(v48 + 16) = a9;
    *(v48 + 20) = a10;
    *(v48 + 24) = a11;
    *(v48 + 28) = v84;
    *(v48 + 32) = v66;
    *(v48 + 33) = v68 & 1;
    *(v48 + 40) = sub_18909A3DC;
    *(v48 + 48) = v69;
    v95 = *(v71 + 280);
    v46 = swift_allocObject();
    *(v46 + 2) = v71;
    *(v46 + 3) = v48;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_188AA7334;
    *(v28 + 24) = v46;
    aBlock[4] = sub_188E3FE50;
    v99 = v28;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_188A4A968;
    aBlock[3] = &block_descriptor_48_2;
    v73 = _Block_copy(aBlock);
    v43 = v99;
    swift_retain_n();

    dispatch_sync(v95, v73);
    _Block_release(v73);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_16:
    v47 = swift_once();
  }

  sub_18909A2F4();

  (*(v93 + 8))(v91, v96);
}

id sub_189097724()
{
  result = _UIMainBundleIdentifier();
  if (result)
  {
    v1 = result;
    v2 = sub_18A4A7288();
    v4 = v3;

    if (v2 == 0xD00000000000001FLL && 0x800000018A6A3A30 == v4)
    {
      v5 = 1;
    }

    else
    {
      v5 = sub_18A4A86C8();
    }
  }

  else
  {
    v5 = 0;
  }

  byte_1EA931338 = v5 & 1;
  return result;
}

uint64_t sub_1890977D4()
{
  v0 = sub_188A81128();
  if (!v0)
  {
    return 1;
  }

  v1 = v0[OBJC_IVAR____TtCE5UIKitCSo6UIView29AnimatablePropertyTransformer_executionMode];

  return v1;
}

uint64_t sub_189097818(uint64_t a1, char a2)
{
  v5 = *(*v2 + 80);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v13[-v7];
  sub_188AA9344(&v13[-v7]);
  v9 = v2[4];
  v13[16] = a2;
  v14 = v2;
  v15 = a1;
  v16 = v8;
  _s21RunningAnimationEntryCMa();
  sub_18A4A7D38();
  v10 = *(*v9 + *MEMORY[0x1E69E6B68] + 16);
  v11 = (*(*v9 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v9 + v11));
  sub_189098FB4((v9 + v10));
  os_unfair_lock_unlock((v9 + v11));
  return (*(v6 + 8))(v8, v5);
}

void sub_18909799C(void *a1, int a2, uint64_t *a3, void *a4, uint64_t a5)
{
  v38 = a5;
  v35 = a4;
  LODWORD(v34) = a2;
  v33 = *a3;
  v7 = *(v33 + 80);
  v37 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v36 = &v27 - v8;
  v9 = type metadata accessor for RunningInProcessAnimation();
  v10 = sub_18A4A7D38();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - v11;
  v39 = v9;
  v13 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v27 - v17;
  v19 = *a1;
  if (*a1)
  {
    v30 = v34 & 1;
    v28 = v18;
    v29 = v7;
    v31 = v16;
    v32 = a1;
    if (v34)
    {
      v20 = 1;
    }

    else
    {
      v20 = 2;
    }

    v34 = v5;
    v33 = v15;
    swift_beginAccess();
    v27 = _s8ComposerVMa();
    if (sub_1890EEB64(v27))
    {
      v21 = 1;
    }

    else
    {
      v21 = 2;
    }

    [v35 parametersForTransitionFromState:v21 toState:v20];
    v22 = *(*v19 + 104);
    swift_beginAccess();
    v23 = v39;
    (*(v13 + 16))(v12, v19 + v22, v39);
    (*(v13 + 56))(v12, 0, 1, v23);
    sub_188AA96FC(v57, &v49);
    v40 = v49;
    v41 = v50;
    v42 = v51 & 1;
    v43 = v52;
    v44 = v53 & 1 | 0x8000000000000000;
    v45 = v54;
    v46 = v55;
    v47 = v56;
    v48 = 0;
    v24 = v36;
    sub_1890E3758(v36);
    type metadata accessor for InProcessAnimationManager();
    sub_18920C05C();
    v25 = sub_188A33550();

    swift_beginAccess();
    v26 = v28;
    sub_1890EEB70(v12, &v40, v30, v38, v24, v27, v28, v25);
    swift_endAccess();
    (*(v37 + 8))(v24, v29);
    sub_188AAFF20(&v40);
    (*(v31 + 8))(v12, v33);
    swift_beginAccess();
    (*(v13 + 40))(v19 + v22, v26, v39);
    swift_endAccess();
    *v32 = v19;
  }
}

double sub_189097E00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 0.0;
  }

  v5 = Strong;
  v6 = sub_188A81128();
  if (v6)
  {
    v7 = v6;
    v8 = type metadata accessor for UIAnimatableProperty();

    WitnessTable = swift_getWitnessTable();
    sub_188E853EC(v5, a3, v7, v8, WitnessTable);
    v11 = v10;
  }

  else
  {
    v11 = 0.0;
  }

  return v11;
}

uint64_t sub_189097EF8(__int128 *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = __currentViewAnimationState;
  if (!__currentViewAnimationState)
  {
    return 0;
  }

  v16 = *v8;
  _s23InProcessAnimationStateCMa();
  v17 = swift_dynamicCastClass();
  if (!v17)
  {
    return 0;
  }

  v31 = v17;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = objc_opt_self();
  v24 = v9;
  if (([v23 areAnimationsEnabled] & 1) != 0 || *(v31 + OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_updateType) == 2)
  {
    v25 = swift_allocObject();
    *(v25 + 16) = a3;
    *(v25 + 24) = v18;
    v30 = v24;
    v26 = swift_allocObject();
    v26[2] = *(v16 + 80);
    v26[3] = *(v16 + 88);
    v26[4] = v19;
    v26[5] = v20;
    v27 = swift_allocObject();
    *(v27 + 16) = v21;
    *(v27 + 24) = v22;
    sub_188A52E38(a3);
    sub_188A52E38(v19);
    sub_188A52E38(v21);
    sub_188ECE354(a1, a2, sub_189098F10, v25, sub_189098F4C, v26, sub_189098F84, v27, v8);

    v24 = v30;

    v28 = 1;
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

double sub_189098124(char *a1, uint64_t a2)
{
  v42 = *a1;
  v4 = v42;
  v5 = *(v42 + 80);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v41 = &v40 - v7;
  v8 = sub_18A4A7D38();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v48 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v11 = &v40 - v10;
  v12 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v46 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v51 = &v40 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v40 - v18;
  v20 = *(v4 + 136);
  swift_beginAccess();
  (*(v6 + 16))(v19, a2, v5);
  v21 = v6;
  v43 = *(v6 + 56);
  v44 = v6 + 56;
  v43(v19, 0, 1, v5);
  v49 = TupleTypeMetadata2;
  v22 = *(TupleTypeMetadata2 + 48);
  v52 = v12;
  v23 = *(v12 + 16);
  v47 = a1;
  v45 = v20;
  v23(v11, &a1[v20], v8);
  v54 = v8;
  v23(&v11[v22], v19, v8);
  v50 = v21;
  v24 = *(v21 + 48);
  v53 = v5;
  if (v24(v11, 1, v5) == 1)
  {
    v25 = *(v52 + 8);
    v25(v19, v54);
    v26 = v11;
    if (v24(&v11[v22], 1, v53) == 1)
    {
      v25(v11, v54);
      v27 = v52;
LABEL_8:
      v36 = v46;
      v43(v46, 1, 1, v53);
      v37 = v47;
      v38 = v45;
      swift_beginAccess();
      (*(v27 + 40))(&v37[v38], v36, v54);
      swift_endAccess();
      return 0.0;
    }

    goto LABEL_6;
  }

  v23(v51, v11, v54);
  v26 = v11;
  if (v24(&v11[v22], 1, v53) == 1)
  {
    (*(v52 + 8))(v19, v54);
    (*(v50 + 8))(v51, v53);
LABEL_6:
    (*(v48 + 8))(v26, v49);
    return 0.0;
  }

  v28 = v50;
  v29 = &v11[v22];
  v30 = v41;
  v31 = v53;
  (*(v50 + 32))(v41, v29, v53);
  v32 = v51;
  LODWORD(v49) = sub_18A4A7248();
  v33 = *(v28 + 8);
  v33(v30, v31);
  v27 = v52;
  v34 = *(v52 + 8);
  v35 = v54;
  v34(v19, v54);
  v33(v32, v31);
  v34(v26, v35);
  if (v49)
  {
    goto LABEL_8;
  }

  return 0.0;
}

void sub_189098670()
{
  if (!*(v0 + *(*v0 + 176)))
  {
    if (sub_188D385B0())
    {
    }

    else
    {
      swift_beginAccess();
      v1 = _s8ComposerVMa();
      if ((sub_1890EEB64(v1) & 1) == 0)
      {
        v2 = *(v0 + *(*v0 + 192));

        v2(v3);
      }
    }
  }
}

uint64_t sub_18909878C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v60 = a1;
  v3 = *(*v1 + 80);
  v4 = _s8ComposerVMa();
  v58 = *(v4 - 8);
  v59 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v57 = &v45 - v5;
  v6 = _s15InstantlyStableVMa();
  v55 = *(v6 - 8);
  v56 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v54 = &v45 - v7;
  v8 = _s7SwiftUIVMa();
  v52 = *(v8 - 8);
  v53 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v51 = &v45 - v9;
  v10 = _s14FrictionBounceVMa();
  v49 = *(v10 - 8);
  v50 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v48 = &v45 - v11;
  v47 = _s6SpringVMa();
  v46 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v13 = &v45 - v12;
  v61 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v45 - v15;
  v17 = type metadata accessor for RunningInProcessAnimation();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v45 - v22;
  v24 = sub_188D385B0();
  if (v24)
  {
    v25 = v24;
    v26 = *(*v24 + 104);
    swift_beginAccess();
    (*(v18 + 16))(v23, v25 + v26, v17);
    (*(v18 + 32))(v20, v23, v17);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v33 = v51;
        v34 = v52;
        v35 = v53;
        (*(v52 + 32))(v51, v20, v53);
        sub_188FBAC20(v35, v16);
        (*(v34 + 8))(v33, v35);
        goto LABEL_13;
      }

      v38 = v54;
      v37 = v55;
      v36 = v56;
      (*(v55 + 32))(v54, v20, v56);
      (*(v61 + 16))(v16, v38, v3);
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        v28 = v46;
        v29 = v47;
        (*(v46 + 32))(v13, v20, v47);
        (*(v61 + 16))(v16, &v13[*(v29 + 44)], v3);
        (*(v28 + 8))(v13, v29);
LABEL_13:
        v39 = v60;
        (*(v61 + 32))(v60, v16, v3);
        v40 = *(*v2 + 152);
        swift_beginAccess();
        v42 = v58;
        v41 = v59;
        v43 = v2 + v40;
        v44 = v57;
        (*(v58 + 16))(v57, v43, v59);
        sub_1890F0BA0(v39, v41);

        (*(v42 + 8))(v44, v41);
        return (*(v61 + 56))(v39, 0, 1, v3);
      }

      v37 = v49;
      v36 = v50;
      v38 = v48;
      (*(v49 + 32))(v48, v20, v50);
      (*(v61 + 16))(v16, &v38[*(v36 + 52)], v3);
    }

    (*(v37 + 8))(v38, v36);
    goto LABEL_13;
  }

  v30 = v60;
  v31 = *(v61 + 56);

  return v31(v30, 1, 1, v3);
}

uint64_t sub_189098F10()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1() & 1;
  }

  else
  {
    return 0;
  }
}

double sub_189098F4C()
{
  v1 = *(v0 + 32);
  if (!v1)
  {
    return 0.0;
  }

  v1();
  return result;
}

uint64_t sub_189098F84()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_189098FD8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, char *a7@<X8>)
{
  v9 = *a3;
  v10 = a2[3];
  v11 = a2[4];
  __swift_project_boxed_opaque_existential_0(a2, v10);
  swift_beginAccess();
  v12 = *(v9 + 80);
  v13 = *(v9 + 88);
  v14 = _s8ComposerVMa();
  v15 = sub_1890EEB64(v14);
  (*(v11 + 16))(v22, v15 & 1, a1, a4, a5, v12, v13, v10, v11);
  v16 = sub_188A33550();
  swift_beginAccess();
  sub_1890EEB70(a1, v22, a6, a4, a5, v14, a7, v16);
  swift_endAccess();
  return sub_188AAFF20(v22);
}

uint64_t sub_189099158@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v24 = a6;
  v22 = a4;
  v23 = a5;
  v21 = a2;
  v14 = type metadata accessor for RunningInProcessAnimation();
  v15 = sub_18A4A7D38();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v21 - v17;
  v19 = *(v14 - 8);
  (*(v19 + 16))(&v21 - v17, a1, v14);
  (*(v19 + 56))(v18, 0, 1, v14);
  sub_189098FD8(v18, v21, a3, v22, v23, v24, a9);
  (*(v16 + 8))(v18, v15);
  result = sub_1890E3C68(a7, 0);
  *(a8 + *(*a8 + 120)) = 1;
  return result;
}

double sub_189099334()
{
  sub_18A4A7D38();
  swift_projectBox();
  UIAnimationDragCoefficient();
  sub_1890E3CDC(sub_18909A47C);
  return 0.0;
}

uint64_t sub_18909944C(double a1, uint64_t a2, void *a3, char a4, _BYTE *a5, uint64_t (*a6)(void), uint64_t a7, uint64_t a8, double *a9, uint64_t a10, uint64_t a11, char *a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v127 = a9;
  v134 = a7;
  v135 = a6;
  v19 = a3;
  v126 = *a3;
  v20 = v126;
  v21 = v126[10];
  v22 = a11;
  v23 = sub_18A4A7D38();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v124 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v128 = v114 - v24;
  v141 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v129 = v114 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v130 = v114 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v132 = v114 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v136 = v114 - v32;
  v142 = v21;
  v140 = *(v21 - 8);
  v33 = *(v140 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v125 = v114 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v131 = v114 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v123 = v114 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v41 = (v114 - v40);
  MEMORY[0x1EEE9AC00](v42);
  v139 = v114 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v137 = (v114 - v45);
  MEMORY[0x1EEE9AC00](v46);
  v138 = (v114 - v47);
  v48 = swift_allocObject();
  *(v48 + 16) = 0;
  if ((*(v19 + v20[15]) & 1) == 0 && (a4 & 1) == 0 && (v135() & 1) == 0)
  {
    v122 = a5;
    v118 = v48;
    v135 = v41;
    v121 = a10;
    signpost_c2_entryLock_start(v49, v50);
    v59 = v138;
    sub_188AA9344(v138);
    v60 = v137;
    sub_1890E3E58(v137, a1);
    v61 = v126[11];
    v62 = (*(v61 + 56))(v59, v142, v61);
    *v127 = v62;
    sub_188A83298();
    signpost_c2_entryLock_start(v63, v64);
    v65 = sub_1890E3F08();
    v134 = v23;
    v120 = a8;
    v119 = a11;
    v115 = v61;
    v116 = v19;
    v66 = v139;
    if (v65)
    {
      sub_1890E3758(v139);
      sub_18A4A8408();
      v67 = v140;
    }

    else
    {
      v67 = v140;
      (*(v140 + 16))(v139, v60, v142);
      sub_188D38BD8(v135);
    }

    *v122 = v65 & 1;
    v68 = v121;
    swift_beginAccess();
    v69 = *(v141 + 16);
    v70 = v136;
    v71 = v68;
    v72 = v134;
    v69(v136, v71, v134);
    v73 = v67[2];
    v74 = v132;
    v75 = v142;
    v114[1] = v67 + 2;
    v114[0] = v73;
    v73(v132, v66, v142);
    v76 = v67[7];
    v127 = (v67 + 7);
    v126 = v76;
    (v76)(v74, 0, 1, v75);
    v77 = *(TupleTypeMetadata2 + 48);
    v78 = v128;
    v69(v128, v70, v72);
    v117 = v77;
    v69(&v78[v77], v74, v72);
    v79 = v67[6];
    v80 = v79(v78, 1, v75);
    v48 = v118;
    if (v80 == 1)
    {
      v81 = *(v141 + 8);
      v81(v74, v72);
      v81(v136, v72);
      v82 = v79(&v78[v117], 1, v142);
      v83 = v140;
      v19 = v116;
      if (v82 == 1)
      {
        v81(v78, v134);
        v84 = *(v83 + 8);
        v22 = v119;
LABEL_26:
        v87 = v142;
        v84(v135, v142);
        v84(v137, v87);
        v84(v138, v87);
        v106 = *(v83 + 32);
        a8 = v120;
        v104 = v122;
        v105 = v141;
        goto LABEL_27;
      }
    }

    else
    {
      v69(v130, v78, v72);
      v85 = v117;
      if (v79(&v78[v117], 1, v142) != 1)
      {
        v107 = v140;
        v108 = &v78[v85];
        v109 = v123;
        v110 = v142;
        (*(v140 + 32))(v123, v108, v142);
        LODWORD(TupleTypeMetadata2) = sub_18A4A7248();
        v84 = *(v107 + 8);
        v84(v109, v110);
        v111 = *(v141 + 8);
        v111(v132, v72);
        v111(v136, v72);
        v84(v130, v110);
        v111(v78, v72);
        v83 = v107;
        v22 = v119;
        v19 = v116;
        if (TupleTypeMetadata2)
        {
          goto LABEL_26;
        }

LABEL_20:
        TupleTypeMetadata2 = a13;
        v136 = a12;
        v87 = v142;
        v88 = v114[0];
        (v114[0])(v131, v139, v142);
        v89 = v125;
        v88(v125, v135, v87);
        v90 = *(v83 + 80);
        v91 = (v90 + 48) & ~v90;
        v92 = v83;
        v93 = (v33 + v90 + v91) & ~v90;
        v94 = swift_allocObject();
        v95 = v115;
        *(v94 + 2) = v87;
        *(v94 + 3) = v95;
        *(v94 + 4) = v136;
        *(v94 + 5) = a13;
        v96 = *(v92 + 32);
        v96(&v94[v91], v131, v87);
        v136 = v96;
        v96(&v94[v93], v89, v87);
        v97 = swift_allocObject();
        *(v97 + 16) = sub_18909A4C4;
        *(v97 + 24) = v94;
        swift_beginAccess();
        v98 = *(v22 + 112);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v22 + 112) = v98;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v98 = sub_188E4B69C(0, v98[2] + 1, 1, v98);
          *(v22 + 112) = v98;
        }

        v101 = v98[2];
        v100 = v98[3];
        if (v101 >= v100 >> 1)
        {
          v98 = sub_188E4B69C((v100 > 1), v101 + 1, 1, v98);
        }

        v98[2] = v101 + 1;
        v102 = &v98[2 * v101];
        v102[4] = sub_18909A5D4;
        v102[5] = v97;
        *(v22 + 112) = v98;
        swift_endAccess();
        sub_188AA7584();

        v103 = *(v140 + 8);
        v103(v135, v87);
        v103(v137, v87);
        v103(v138, v87);
        a8 = v120;
        v104 = v122;
        v105 = v141;
        v106 = v136;
LABEL_27:
        v112 = v129;
        v106(v129, v139, v87);
        (v126)(v112, 0, 1, v87);
        v113 = v121;
        swift_beginAccess();
        (*(v105 + 40))(v113, v112, v134);
        if ((*v104 & 1) == 0)
        {
        }

        goto LABEL_5;
      }

      v86 = *(v141 + 8);
      v86(v132, v72);
      v86(v136, v72);
      v83 = v140;
      (*(v140 + 8))(v130, v142);
      v19 = v116;
    }

    (*(v124 + 8))(v78, TupleTypeMetadata2);
    v22 = v119;
    goto LABEL_20;
  }

  *a5 = 1;
  *(v48 + 16) = 1;
LABEL_5:
  v51 = swift_allocObject();
  v51[2] = v19;
  v51[3] = a14;
  v51[4] = a15;
  v51[5] = a8;
  v51[6] = v22;
  v51[7] = v48;
  v52 = swift_allocObject();
  *(v52 + 16) = sub_18909A554;
  *(v52 + 24) = v51;
  swift_beginAccess();
  v53 = *(v22 + 112);

  v54 = swift_isUniquelyReferenced_nonNull_native();
  *(v22 + 112) = v53;
  if ((v54 & 1) == 0)
  {
    v53 = sub_188E4B69C(0, v53[2] + 1, 1, v53);
    *(v22 + 112) = v53;
  }

  v56 = v53[2];
  v55 = v53[3];
  if (v56 >= v55 >> 1)
  {
    v53 = sub_188E4B69C((v55 > 1), v56 + 1, 1, v53);
  }

  v53[2] = v56 + 1;
  v57 = &v53[2 * v56];
  v57[4] = sub_18909A5D4;
  v57[5] = v52;
  *(v22 + 112) = v53;
  swift_endAccess();
  sub_188AA7584();
}

uint64_t sub_18909A138(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  if ((*(a2 + *(*a2 + 120)) & 1) == 0)
  {
    a3();
    sub_18909A2F4();
    swift_beginAccess();
    sub_1890E3C68(a6, (*a7 & 1) == 0);
  }

  sub_188A32084(sub_18909A5CC, a5);
}

void sub_18909A20C(uint64_t a1)
{
  v1 = *(*a1 + 176);
  v2 = *(a1 + v1);
  v3 = __OFSUB__(v2, 1);
  v4 = v2 - 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(a1 + v1) = v4;
    sub_189098670();
  }
}

void sub_18909A2F4()
{
  v1 = *(v0 + 32);
  _s21RunningAnimationEntryCMa();
  sub_18A4A7D38();
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_18909A434((v1 + v2));
  os_unfair_lock_unlock((v1 + v3));
}

uint64_t sub_18909A434(void *a1)
{
  v3 = *(v1 + 32);

  *a1 = v3;
}

uint64_t (*UIMutableTraits._headroomSuppressionLimit.modify(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  *(a1 + 16) = a3;
  *(a1 + 24) = v3;
  *(a1 + 8) = a2;
  *a1 = (*(a3 + 80))(&type metadata for _UITraitHDRHeadroomSuppressionLimit, &type metadata for _UITraitHDRHeadroomSuppressionLimit, &protocol witness table for _UITraitHDRHeadroomSuppressionLimit, a2, a3);
  return sub_18909A740;
}

uint64_t sub_18909A7A0(uint64_t a1)
{
  v1 = a1;
  v31 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_18A4A7F68();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v37 = MEMORY[0x1E69E7CC0];
    sub_188E6D40C(0, v2 & ~(v2 >> 63), 0);
    v32 = v37;
    if (v31)
    {
      result = sub_18A4A7F08();
    }

    else
    {
      result = sub_18A4A7EC8();
      v4 = *(v1 + 36);
    }

    v34 = result;
    v35 = v4;
    v36 = v31 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v29 = v1 + 56;
      v28 = v1 + 64;
      v30 = v2;
      while (v5 < v2)
      {
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_35;
        }

        v9 = v34;
        v8 = v35;
        v10 = v36;
        v11 = v1;
        sub_189077584(v34, v35, v36, v1);
        v13 = v12;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939090);
        result = swift_allocObject();
        v14 = result;
        *(result + 16) = v13;
        v15 = v32;
        v37 = v32;
        v17 = *(v32 + 16);
        v16 = *(v32 + 24);
        if (v17 >= v16 >> 1)
        {
          result = sub_188E6D40C((v16 > 1), v17 + 1, 1);
          v15 = v37;
        }

        *(v15 + 16) = v17 + 1;
        *(v15 + 8 * v17 + 32) = v14;
        v32 = v15;
        if (v31)
        {
          if (!v10)
          {
            goto LABEL_40;
          }

          v1 = v11;
          if (sub_18A4A7F28())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v30;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B7F8);
          v6 = sub_18A4A77C8();
          sub_18A4A7FE8();
          result = v6(v33, 0);
          if (v5 == v30)
          {
LABEL_32:
            sub_188FFD0A4(v34, v35, v36);
            return v32;
          }
        }

        else
        {
          if (v10)
          {
            goto LABEL_41;
          }

          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v11;
          v18 = 1 << *(v11 + 32);
          if (v9 >= v18)
          {
            goto LABEL_36;
          }

          v19 = v9 >> 6;
          v20 = *(v29 + 8 * (v9 >> 6));
          if (((v20 >> v9) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v11 + 36) != v8)
          {
            goto LABEL_38;
          }

          v21 = v20 & (-2 << (v9 & 0x3F));
          if (v21)
          {
            v18 = __clz(__rbit64(v21)) | v9 & 0x7FFFFFFFFFFFFFC0;
            v2 = v30;
          }

          else
          {
            v22 = v19 << 6;
            v23 = v19 + 1;
            v24 = (v28 + 8 * v19);
            v2 = v30;
            while (v23 < (v18 + 63) >> 6)
            {
              v26 = *v24++;
              v25 = v26;
              v22 += 64;
              ++v23;
              if (v26)
              {
                result = sub_188FFD0A4(v9, v8, 0);
                v18 = __clz(__rbit64(v25)) + v22;
                goto LABEL_31;
              }
            }

            result = sub_188FFD0A4(v9, v8, 0);
          }

LABEL_31:
          v27 = *(v1 + 36);
          v34 = v18;
          v35 = v27;
          v36 = 0;
          if (v5 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }

  return result;
}

uint64_t sub_18909AB08(uint64_t a1)
{
  v1 = a1;
  v31 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_18A4A7F68();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v37 = MEMORY[0x1E69E7CC0];
    sub_188E6D444(0, v2 & ~(v2 >> 63), 0);
    v32 = v37;
    if (v31)
    {
      result = sub_18A4A7F08();
    }

    else
    {
      result = sub_18A4A7EC8();
      v4 = *(v1 + 36);
    }

    v34 = result;
    v35 = v4;
    v36 = v31 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v29 = v1 + 56;
      v28 = v1 + 64;
      v30 = v2;
      while (v5 < v2)
      {
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_35;
        }

        v9 = v34;
        v8 = v35;
        v10 = v36;
        v11 = v1;
        sub_1890777B0(v34, v35, v36, v1);
        v13 = v12;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B7E8);
        result = swift_allocObject();
        v14 = result;
        *(result + 16) = v13;
        v15 = v32;
        v37 = v32;
        v17 = *(v32 + 16);
        v16 = *(v32 + 24);
        if (v17 >= v16 >> 1)
        {
          result = sub_188E6D444((v16 > 1), v17 + 1, 1);
          v15 = v37;
        }

        *(v15 + 16) = v17 + 1;
        *(v15 + 8 * v17 + 32) = v14;
        v32 = v15;
        if (v31)
        {
          if (!v10)
          {
            goto LABEL_40;
          }

          v1 = v11;
          if (sub_18A4A7F28())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v30;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B7F0);
          v6 = sub_18A4A77C8();
          sub_18A4A7FE8();
          result = v6(v33, 0);
          if (v5 == v30)
          {
LABEL_32:
            sub_188FFD0A4(v34, v35, v36);
            return v32;
          }
        }

        else
        {
          if (v10)
          {
            goto LABEL_41;
          }

          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v11;
          v18 = 1 << *(v11 + 32);
          if (v9 >= v18)
          {
            goto LABEL_36;
          }

          v19 = v9 >> 6;
          v20 = *(v29 + 8 * (v9 >> 6));
          if (((v20 >> v9) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v11 + 36) != v8)
          {
            goto LABEL_38;
          }

          v21 = v20 & (-2 << (v9 & 0x3F));
          if (v21)
          {
            v18 = __clz(__rbit64(v21)) | v9 & 0x7FFFFFFFFFFFFFC0;
            v2 = v30;
          }

          else
          {
            v22 = v19 << 6;
            v23 = v19 + 1;
            v24 = (v28 + 8 * v19);
            v2 = v30;
            while (v23 < (v18 + 63) >> 6)
            {
              v26 = *v24++;
              v25 = v26;
              v22 += 64;
              ++v23;
              if (v26)
              {
                result = sub_188FFD0A4(v9, v8, 0);
                v18 = __clz(__rbit64(v25)) + v22;
                goto LABEL_31;
              }
            }

            result = sub_188FFD0A4(v9, v8, 0);
          }

LABEL_31:
          v27 = *(v1 + 36);
          v34 = v18;
          v35 = v27;
          v36 = 0;
          if (v5 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }

  return result;
}

uint64_t sub_18909AE70(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v21 = MEMORY[0x1E69E7CC0];
    sub_18A4A8208();
    v4 = v1 + 56;
    result = sub_18A4A7EC8();
    v5 = result;
    v6 = 0;
    v7 = *(v1 + 36);
    v18 = v1 + 64;
    v19 = v1;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v1 + 32))
    {
      v9 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_21;
      }

      if (v7 != *(v1 + 36))
      {
        goto LABEL_22;
      }

      v20 = v6;
      v10 = *(*(*(v1 + 48) + 8 * v5) + 16);
      sub_18A4A81D8();
      sub_18A4A8218();
      v1 = v19;
      sub_18A4A8228();
      result = sub_18A4A81E8();
      v8 = 1 << *(v19 + 32);
      if (v5 >= v8)
      {
        goto LABEL_23;
      }

      v11 = *(v4 + 8 * v9);
      if ((v11 & (1 << v5)) == 0)
      {
        goto LABEL_24;
      }

      if (v7 != *(v19 + 36))
      {
        goto LABEL_25;
      }

      v12 = v11 & (-2 << (v5 & 0x3F));
      if (v12)
      {
        v8 = __clz(__rbit64(v12)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v13 = v9 << 6;
        v14 = v9 + 1;
        v15 = (v18 + 8 * v9);
        while (v14 < (v8 + 63) >> 6)
        {
          v17 = *v15++;
          v16 = v17;
          v13 += 64;
          ++v14;
          if (v17)
          {
            result = sub_188FFD0A4(v5, v7, 0);
            v8 = __clz(__rbit64(v16)) + v13;
            goto LABEL_4;
          }
        }

        result = sub_188FFD0A4(v5, v7, 0);
      }

LABEL_4:
      v6 = v20 + 1;
      v5 = v8;
      if (v20 + 1 == v2)
      {
        return v21;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t UIScene.destructionConditions.getter()
{
  v1 = [v0 destructionConditions];
  sub_188A34624(0, &unk_1EA934368);
  sub_188C09790(&qword_1EA938A18, &unk_1EA934368);
  v2 = sub_18A4A77A8();

  v3 = sub_18909A7A0(v2);

  v4 = sub_188F98E04(v3);

  return v4;
}

uint64_t sub_18909B150@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 destructionConditions];
  sub_188A34624(0, &unk_1EA934368);
  sub_188C09790(&qword_1EA938A18, &unk_1EA934368);
  v4 = sub_18A4A77A8();

  v5 = sub_18909A7A0(v4);

  v6 = sub_188F98E04(v5);

  *a2 = v6;
  return result;
}

void sub_18909B224(uint64_t *a1, void **a2)
{
  v2 = *a2;
  v3 = sub_18909AE70(*a1);
  sub_188F98E38(v3);

  sub_188A34624(0, &unk_1EA934368);
  sub_188C09790(&qword_1EA938A18, &unk_1EA934368);
  v4 = sub_18A4A7798();

  [v2 setDestructionConditions_];
}

void UIScene.destructionConditions.setter(uint64_t a1)
{
  v2 = sub_18909AE70(a1);

  sub_188F98E38(v2);

  sub_188A34624(0, &unk_1EA934368);
  sub_188C09790(&qword_1EA938A18, &unk_1EA934368);
  v3 = sub_18A4A7798();

  [v1 setDestructionConditions_];
}

void (*UIScene.destructionConditions.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 8) = v2;
  v6 = [v2 destructionConditions];
  v5[2] = sub_188A34624(0, &unk_1EA934368);
  v5[3] = sub_188C09790(&qword_1EA938A18, &unk_1EA934368);
  v7 = sub_18A4A77A8();

  v8 = sub_18909A7A0(v7);
  v5[4] = 0;

  v9 = sub_188F98E04(v8);

  *v5 = v9;
  return sub_18909B500;
}

uint64_t UIScene._destructionConditions.getter()
{
  v1 = [v0 _destructionConditions];
  sub_188A34624(0, &qword_1EA934360);
  sub_188C09790(&qword_1EA938A08, &qword_1EA934360);
  v2 = sub_18A4A77A8();

  v3 = sub_18909AB08(v2);

  v4 = sub_188F98F90(v3);

  return v4;
}

uint64_t sub_18909B5E8@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 _destructionConditions];
  sub_188A34624(0, &qword_1EA934360);
  sub_188C09790(&qword_1EA938A08, &qword_1EA934360);
  v4 = sub_18A4A77A8();

  v5 = sub_18909AB08(v4);

  v6 = sub_188F98F90(v5);

  *a2 = v6;
  return result;
}

void sub_18909B6BC(uint64_t *a1, void **a2)
{
  v2 = *a2;
  v3 = sub_18909AE70(*a1);
  sub_188F99060(v3);

  sub_188A34624(0, &qword_1EA934360);
  sub_188C09790(&qword_1EA938A08, &qword_1EA934360);
  v4 = sub_18A4A7798();

  [v2 _setDestructionConditions_];
}

void UIScene._destructionConditions.setter(uint64_t a1)
{
  v2 = sub_18909AE70(a1);

  sub_188F99060(v2);

  sub_188A34624(0, &qword_1EA934360);
  sub_188C09790(&qword_1EA938A08, &qword_1EA934360);
  v3 = sub_18A4A7798();

  [v1 _setDestructionConditions_];
}

void (*UIScene._destructionConditions.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 8) = v2;
  v6 = [v2 _destructionConditions];
  v5[2] = sub_188A34624(0, &qword_1EA934360);
  v5[3] = sub_188C09790(&qword_1EA938A08, &qword_1EA934360);
  v7 = sub_18A4A77A8();

  v8 = sub_18909AB08(v7);
  v5[4] = 0;

  v9 = sub_188F98F90(v8);

  *v5 = v9;
  return sub_18909B998;
}

void sub_18909B9B8(uint64_t **a1, char a2, void (*a3)(uint64_t), SEL *a4)
{
  v6 = *a1;
  v7 = (*a1)[1];
  v8 = **a1;
  if (a2)
  {

    v10 = sub_18909AE70(v9);

    a3(v10);

    v11 = sub_18A4A7798();

    [v7 *a4];
  }

  else
  {
    v12 = sub_18909AE70(v8);

    a3(v12);

    v13 = sub_18A4A7798();

    [v7 *a4];
  }

  free(v6);
}

uint64_t _sSo7UISceneC5UIKitE18DidActivateMessageV04makeE0yAESg10Foundation12NotificationVFZ_0@<X0>(void *a1@<X8>)
{
  sub_18A4A2438();
  if (!v6)
  {
    result = sub_188A553EC(v5);
    goto LABEL_5;
  }

  sub_188A34624(0, qword_1ED490250);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_5:
    v3 = 0;
    goto LABEL_6;
  }

  v3 = v4;
LABEL_6:
  *a1 = v3;
  return result;
}

uint64_t sub_18909BC0C(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_188A34624(0, qword_1ED490250);
  v4 = v2;
  v5 = v3;
  return sub_18A4A2428();
}

uint64_t sub_18909BC98(void **a1, uint64_t a2, uint64_t a3, void **a4)
{
  v4 = *a1;
  v5 = *a4;
  sub_188A34624(0, qword_1ED490250);
  v6 = v4;
  v7 = v5;
  return sub_18A4A2428();
}

uint64_t sub_18909BF5C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  v2 = sub_18909BFE4();

  return v2;
}

uint64_t sub_18909BFE4()
{
  v1 = [v0 button];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  if ([v1 isBackButton])
  {
    v3 = *&v0[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_imageButton];
    if (v3)
    {
      v4 = [v3 imageForState_];
      if (v4)
      {
        v5 = v4;
        v6 = [v4 _identityDescription];
        if (v6)
        {
          v7 = v6;
          v8 = sub_18A4A7288();
          v10 = v9;

          v20 = 0x2D6B636142;
          MEMORY[0x18CFE22D0](v8, v10);

          return v20;
        }
      }
    }

    v12 = *&v0[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleButton];
    if (!v12 || (v13 = [v12 attributedTitleForState_]) == 0)
    {

      return 0x6568432D6B636142;
    }

    v20 = 0x222D6B636142;
    v14 = v13;
    v15 = [v13 string];
    v16 = sub_18A4A7288();
    v18 = v17;

    MEMORY[0x18CFE22D0](v16, v18);

    MEMORY[0x18CFE22D0](34, 0xE100000000000000);

    return v20;
  }

  v11 = [v0 barButtonItem];
  if (v11)
  {
    v0 = sub_188C1908C(v11);
  }

  return v0;
}

id sub_18909C238()
{
  v1 = *(v0 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleButton);
  if (v1)
  {
    [v1 _setTouchHasHighlighted_];
  }

  v2 = *(v0 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_imageButton);
  if (v2)
  {
    [v2 _setTouchHasHighlighted_];
  }

  result = *(v0 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backIndicatorButton);
  if (result)
  {

    return [result _setTouchHasHighlighted_];
  }

  return result;
}

double sub_18909C398(char a1, SEL *a2)
{
  v5 = [v2 button];
  if (v5 && (v6 = v5, v7 = [v5 appearanceData], v6, v7))
  {
    [v7 backgroundImagePositionAdjustmentForState_];
    v9 = v8;
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    v9 = 0.0;
    if (Strong)
    {
      v11 = [Strong appearanceStorage];
      swift_unknownObjectRelease();
      if (v11)
      {
        [v11 *a2];
      }
    }
  }

  return v9;
}

id sub_18909C4A0(char a1, SEL *a2, SEL *a3)
{
  if (!dyld_program_sdk_at_least())
  {
    return 0;
  }

  v7 = [v3 button];
  if (!v7 || (v8 = v7, v9 = [v7 appearanceData], v8, !v9))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong && (v11 = [Strong backIndicatorImage], swift_unknownObjectRelease(), v11))
    {

      v9 = 0;
    }

    else
    {
      v9 = [objc_opt_self() standardBackButtonData];
    }
  }

  if (a1)
  {
    v13 = a2;
  }

  else
  {
    v13 = a3;
  }

  v14 = [v9 *v13];

  return v14;
}

id sub_18909C5C4()
{
  v1 = [objc_allocWithZone(UIPreviewParameters) init];
  if (v0[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_isSystemItem] == 1 && *&v0[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_systemItem] == 24)
  {
    v2 = *&v0[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backgroundView];
    if (v2)
    {
      [v2 frame];
      v4 = v3;
      v6 = v5;
      v8 = v7;
      v10 = v9;
    }

    else
    {
      v4 = 0.0;
      v6 = 0.0;
      v8 = 0.0;
      v10 = 0.0;
    }

    v16 = [objc_opt_self() bezierPathWithOvalInRect_];
    [v1 setShadowPath_];
LABEL_17:

    return v1;
  }

  v11 = [v0 button];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 isSelected];

    if (v13)
    {
      v14 = *&v0[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleButton];
      if (v14)
      {
        v15 = *&v0[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleButton];
LABEL_13:
        v19 = *&v15[OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E596Button___additionalSelectionInsets];
        v18 = *&v15[OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E596Button___additionalSelectionInsets + 8];
        v20 = *&v15[OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E596Button___additionalSelectionInsets + 16];
        v21 = *&v15[OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E596Button___additionalSelectionInsets + 24];
        v22 = v14;
        [v15 bounds];
        v23 = &v15[OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E596Button_selectionIndicatorViewFrame];
        if (CGRectEqualToRect(*&v15[OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E596Button_selectionIndicatorViewFrame], *MEMORY[0x1E695F050]))
        {
          v45.receiver = v15;
          v45.super_class = type metadata accessor for ButtonBarButtonVisualProvider.Button();
          objc_msgSendSuper2(&v45, sel__selectedIndicatorBounds);
        }

        else
        {
          v24 = *v23;
          v25 = v23[1];
          v26 = v23[2];
          v27 = v23[3];
        }

        v28 = UIRectInset(v24, v25, v26, v27, v19, v21, v20, v18);
        v30 = v29;
        v32 = v31;
        v34 = v33;
        v35 = [v0 button];
        [v15 convertRect:v35 toView:{v28, v30, v32, v34}];
        v37 = v36;
        v39 = v38;
        v41 = v40;
        v43 = v42;

        v16 = [objc_opt_self() bezierPathWithOvalInRect_];
        [v1 setShadowPath_];

        goto LABEL_17;
      }

      v17 = *&v0[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_imageButton];
      if (v17)
      {
        v15 = v17;
        v14 = 0;
        goto LABEL_13;
      }
    }
  }

  return v1;
}

void sub_18909C888()
{
  ObjectType = swift_getObjectType();
  v3 = *&v0[OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E596Button___additionalSelectionInsets];
  v2 = *&v0[OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E596Button___additionalSelectionInsets + 8];
  v4 = *&v0[OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E596Button___additionalSelectionInsets + 16];
  v5 = *&v0[OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E596Button___additionalSelectionInsets + 24];
  [v0 bounds];
  v6 = &v0[OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E596Button_selectionIndicatorViewFrame];
  if (CGRectEqualToRect(*&v0[OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E596Button_selectionIndicatorViewFrame], *MEMORY[0x1E695F050]))
  {
    v11.receiver = v0;
    v11.super_class = ObjectType;
    objc_msgSendSuper2(&v11, sel__selectedIndicatorBounds);
  }

  else
  {
    v7 = *v6;
    v8 = v6[1];
    v9 = v6[2];
    v10 = v6[3];
  }

  UIRectInset(v7, v8, v9, v10, v3, v5, v4, v2);
}

id sub_18909C998(uint64_t a1)
{
  v2 = v1;
  v4 = [objc_opt_self() rootSettings];
  v5 = [v4 navigationAndToolbarSettings];

  if (v2[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_isSystemItem] == 1 && *&v2[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_systemItem] == 24)
  {
    v6 = *&v2[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backgroundView];
    if (v6)
    {
      v7 = v6;
      [v7 bounds];
      [v7 convertRect:a1 toCoordinateSpace:?];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;
    }

    else
    {
      v9 = 0.0;
      v11 = 0.0;
      v13 = 0.0;
      v15 = 0.0;
    }

    v168.origin.x = v9;
    v168.origin.y = v11;
    v168.size.width = v13;
    v168.size.height = v15;
    v20 = CGRectGetWidth(v168) * 0.5;
    v21 = [objc_opt_self() shapeWithRoundedRect:v9 cornerRadius:{v11, v13, v15, v20}];
    goto LABEL_94;
  }

  v16 = [v2 button];
  if (!v16)
  {
    goto LABEL_19;
  }

  v17 = v16;
  if (![v16 isSelected])
  {
    v19 = v17;
LABEL_18:

LABEL_19:
    v33 = OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backIndicatorButton;
    v34 = *&v2[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backIndicatorButton];
    if (v34)
    {
      v35 = *MEMORY[0x1E695F050];
      v36 = *(MEMORY[0x1E695F050] + 8);
      v37 = *(MEMORY[0x1E695F050] + 16);
      v38 = *(MEMORY[0x1E695F050] + 24);
      v39 = v34;
      [v39 frame];
      v182.origin.x = v40;
      v182.origin.y = v41;
      v182.size.width = v42;
      v182.size.height = v43;
      v169.origin.x = v35;
      v169.origin.y = v36;
      v169.size.width = v37;
      v169.size.height = v38;
      v170 = CGRectUnion(v169, v182);
      x = v170.origin.x;
      y = v170.origin.y;
      width = v170.size.width;
      height = v170.size.height;

      v48 = *&v2[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleButton];
      if (!v48)
      {
        goto LABEL_29;
      }

LABEL_24:
      v49 = v48;
      v50 = [v49 titleLabel];
      if (!v50)
      {
LABEL_37:

        goto LABEL_38;
      }

      v51 = v50;
      if (([v50 isHidden] & 1) == 0)
      {
        v52 = v51;
        [v52 bounds];
        v54 = v53;
        v56 = v55;
        v58 = v57;
        v60 = v59;
        v61 = [v2 button];
        [v52 convertRect:v61 toView:{v54, v56, v58, v60}];
        v63 = v62;
        v65 = v64;
        v67 = v66;
        v69 = v68;

        v171.origin.x = x;
        v171.origin.y = y;
        v171.size.width = width;
        v171.size.height = height;
        v183.origin.x = v63;
        v183.origin.y = v65;
        v183.size.width = v67;
        v183.size.height = v69;
        v172 = CGRectUnion(v171, v183);
        x = v172.origin.x;
        y = v172.origin.y;
        width = v172.size.width;
        height = v172.size.height;

        v70 = 0;
        goto LABEL_39;
      }

LABEL_36:

      goto LABEL_37;
    }

    v48 = *&v2[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleButton];
    if (v48)
    {
      x = *MEMORY[0x1E695F050];
      y = *(MEMORY[0x1E695F050] + 8);
      width = *(MEMORY[0x1E695F050] + 16);
      height = *(MEMORY[0x1E695F050] + 24);
      goto LABEL_24;
    }

    if (*&v2[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_imageButton])
    {
      x = *MEMORY[0x1E695F050];
      y = *(MEMORY[0x1E695F050] + 8);
      width = *(MEMORY[0x1E695F050] + 16);
      height = *(MEMORY[0x1E695F050] + 24);
LABEL_29:
      v71 = *&v2[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_imageButton];
      if (!v71)
      {
LABEL_38:
        v70 = 1;
LABEL_39:
        v95 = [v2 button];
        if (v95)
        {
          v96 = v95;
          v97 = [v95 isSingleItemInSectionWithPlatter];

          if (v97 && *&v2[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_imageButton])
          {
            v98 = 1;
          }

          else if (*&v2[v33])
          {
            v98 = v70;
          }

          else
          {
            v98 = 0;
          }
        }

        else
        {
          v98 = 0;
        }

        v99 = [v2 button];
        Strong = swift_unknownObjectWeakLoadStrong();
        v5 = v5;
        v101 = [v2 button];
        if (v101)
        {
          v102 = v101;
          v103 = [v101 isBackButton];
        }

        else
        {
          v103 = 0;
        }

        v104 = [v2 button];
        if (v104)
        {
          v105 = v104;
          v106 = [v104 effectiveUserInterfaceLayoutDirection];

          v107 = v106 == 1;
          if (v103)
          {
            goto LABEL_52;
          }
        }

        else
        {
          v107 = 0;
          if (v103)
          {
LABEL_52:
            [v5 backButtonLeadingPadding];
            v109 = v108;
            [v5 backButtonTrailingPadding];
            v111 = v109 + v110;
            if (v107)
            {
              v109 = v110;
            }

LABEL_57:
            v114 = width + v111;
            v115 = x - v109;
            [v5 buttonMinimumHeight];
            if (height >= v116)
            {
              v117 = y;
            }

            else
            {
              v117 = y - (v116 - height) * 0.5;
            }

            if (height >= v116)
            {
              v118 = height;
            }

            else
            {
              v118 = v116;
            }

            if (v114 < v118)
            {
              v119 = 1;
            }

            else
            {
              v119 = v98;
            }

            if (v119)
            {
              v120 = v118;
            }

            else
            {
              v120 = v114;
            }

            if (v119)
            {
              v121 = v115 - (v118 - v114) * 0.5;
            }

            else
            {
              v121 = v115;
            }

            [v5 buttonHorizontalOffset];
            if (v107)
            {
              v122 = -v122;
            }

            v123 = v122 + v121;
            [v5 buttonVerticalOffset];
            v125 = v117 + v124;
            if (Strong)
            {
              swift_unknownObjectRetain();
              if (v103 || ([v5 enableClippingBehavior] & 1) != 0)
              {
                v126 = 0.0;
                v127 = 0.0;
                v128 = 0.0;
                v129 = 0.0;
                if (v99)
                {
                  [v99 convertRect:Strong toCoordinateSpace:{v123, v125, v120, v118}];
                  v126 = v130;
                  v127 = v131;
                  v128 = v132;
                  v129 = v133;
                }

                v165 = v128;
                v166 = v127;
                [v5 buttonMinimumDistanceFromEdge];
                v135 = v134;
                [Strong bounds];
                v176 = CGRectInset(v175, v135, 0.0);
                v136 = v176.origin.x;
                v137 = v176.origin.y;
                v138 = v176.size.width;
                v139 = v176.size.height;
                v176.origin.x = v126;
                v176.origin.y = v127;
                v176.size.width = v128;
                v176.size.height = v129;
                MinX = CGRectGetMinX(v176);
                v177.origin.x = v126;
                v177.origin.y = v127;
                v177.size.width = v128;
                v177.size.height = v129;
                MaxX = CGRectGetMaxX(v177);
                v178.origin.x = v136;
                v178.origin.y = v137;
                v178.size.width = v138;
                v178.size.height = v139;
                v141 = CGRectGetMinX(v178);
                v179.origin.x = v136;
                v179.origin.y = v137;
                v179.size.width = v138;
                v179.size.height = v139;
                v142 = CGRectGetMaxX(v179);
                v143 = v141 - MinX;
                if (v141 - MinX < 0.0)
                {
                  v143 = 0.0;
                }

                v144 = MaxX - v142;
                if (v144 < 0.0)
                {
                  v144 = 0.0;
                }

                if (v143 > v144)
                {
                  v145 = v143;
                }

                else
                {
                  v145 = v144;
                }

                v180.origin.x = v126;
                v180.size.width = v165;
                v180.origin.y = v166;
                v180.size.height = v129;
                v181 = CGRectInset(v180, v145, 0.0);
                if (v99)
                {
                  v146 = v181.origin.x;
                  v147 = v181.origin.y;
                  v148 = v181.size.width;
                  v149 = v181.size.height;
                  v150 = v99;
                  [Strong convertRect:v150 toCoordinateSpace:{v146, v147, v148, v149}];
                  v123 = v151;
                  v125 = v152;
                  v120 = v153;
                  v118 = v154;

                  swift_unknownObjectRelease();
LABEL_91:
                  [v99 convertRect:a1 toView:{v123, v125, v120, v118}];
                  v156 = v155;
                  v158 = v157;
                  v160 = v159;
                  v162 = v161;
LABEL_93:
                  v21 = [objc_opt_self() shapeWithRoundedRect:v156 cornerRadius:{v158, v160, v162, v162 * 0.5}];

                  swift_unknownObjectRelease();
LABEL_94:

                  return v21;
                }

                swift_unknownObjectRelease();
LABEL_92:
                v156 = 0.0;
                v158 = 0.0;
                v160 = 0.0;
                v162 = 0.0;
                goto LABEL_93;
              }

              swift_unknownObjectRelease();
            }

            if (v99)
            {
              goto LABEL_91;
            }

            goto LABEL_92;
          }
        }

        [v5 buttonHorizontalPadding];
        v109 = v112;
        [v5 buttonVerticalPadding];
        v111 = v109 + v109;
        y = y - v113;
        height = height + v113 + v113;
        goto LABEL_57;
      }

      v49 = v71;
      v72 = [v49 imageView];
      v51 = v72;
      if (v72)
      {
        v73 = v72;
        [v73 bounds];
        v75 = v74;
        v77 = v76;
        v79 = v78;
        v81 = v80;
        v82 = [v2 button];
        [v73 convertRect:v82 toView:{v75, v77, v79, v81}];
        v84 = v83;
        v86 = v85;
        v88 = v87;
        v90 = v89;
      }

      else
      {
        v84 = 0.0;
        v86 = 0.0;
        v88 = 0.0;
        v90 = 0.0;
      }

      v173.origin.x = x;
      v173.origin.y = y;
      v173.size.width = width;
      v173.size.height = height;
      v184.origin.x = v84;
      v184.origin.y = v86;
      v184.size.width = v88;
      v184.size.height = v90;
      v174 = CGRectUnion(v173, v184);
      x = v174.origin.x;
      y = v174.origin.y;
      width = v174.size.width;
      height = v174.size.height;
      goto LABEL_36;
    }

    return 0;
  }

  v18 = *&v2[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleButton];
  if (v18)
  {
    v19 = *&v2[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleButton];
  }

  else
  {
    v22 = *&v2[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_imageButton];
    if (!v22)
    {

      return 0;
    }

    v19 = v22;
    v18 = 0;
  }

  v23 = v18;
  if (![v19 _hasVisibleDefaultSelectionIndicator])
  {

    goto LABEL_18;
  }

  v25 = *&v19[OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E596Button___additionalSelectionInsets];
  v24 = *&v19[OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E596Button___additionalSelectionInsets + 8];
  v26 = *&v19[OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E596Button___additionalSelectionInsets + 16];
  v27 = *&v19[OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E596Button___additionalSelectionInsets + 24];
  [v19 bounds];
  v28 = &v19[OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E596Button_selectionIndicatorViewFrame];
  if (CGRectEqualToRect(*&v19[OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E596Button_selectionIndicatorViewFrame], *MEMORY[0x1E695F050]))
  {
    v167.receiver = v19;
    v167.super_class = type metadata accessor for ButtonBarButtonVisualProvider.Button();
    objc_msgSendSuper2(&v167, sel__selectedIndicatorBounds);
  }

  else
  {
    v29 = *v28;
    v30 = v28[1];
    v31 = v28[2];
    v32 = v28[3];
  }

  [v19 convertRect:a1 toCoordinateSpace:{UIRectInset(v29, v30, v31, v32, v25, v27, v26, v24)}];
  v21 = [objc_opt_self() shapeWithRoundedRect:v91 cornerRadius:{v92, v93, v94, 4.0}];

  return v21;
}

uint64_t sub_18909D4D8()
{
  if (v0[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_isSystemItem] == 1 && *&v0[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_systemItem] == 24)
  {
    return 1;
  }

  v2 = [v0 button];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  if ([v2 isSelected])
  {
    v4 = [objc_opt_self() rootSettings];
    v5 = [v4 navigationAndToolbarSettings];

    v1 = [v5 enableLiftOnSelected];
    v3 = v5;
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

void *sub_18909D7A4()
{
  v1 = *(v0 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_imageButton);
  v2 = v1;
  if (!v1)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleButton);
    v2 = v3;
    if (v3)
    {
LABEL_5:
      v5 = v3;
      goto LABEL_6;
    }

    v2 = *(v0 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backIndicatorButton);
    if (v2)
    {
      v4 = v2;
      goto LABEL_5;
    }
  }

LABEL_6:
  v6 = v1;
  return v2;
}

uint64_t sub_18909D810(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938AE0);
    result = sub_18A4A8488();
  }

  else
  {
    result = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = *(a1 + 64);
  v5 = -1;
  if (v3 < 64)
  {
    v5 = ~(-1 << v3);
  }

  v6 = v5 & v4;
  if ((v5 & v4) != 0)
  {

    v7 = __clz(__rbit64(v6));
LABEL_12:
    v12 = *(a1 + 56);
    v13 = (*(a1 + 48) + 16 * v7);
    v15 = *v13;
    v14 = v13[1];
    sub_188A55598(v12 + 32 * v7, &v17);
    v16[0] = v15;
    v16[1] = v14;

    sub_188A3F5FC(v16, &qword_1EA93B950);
    return 0;
  }

  else
  {
    v8 = ((v3 + 63) >> 6) - 1;
    v9 = (a1 + 72);
    while (v8)
    {
      v11 = *v9++;
      v10 = v11;
      --v8;
      v6 -= 64;
      if (v11)
      {

        v7 = __clz(__rbit64(v10)) - v6;
        goto LABEL_12;
      }
    }
  }

  return result;
}

id sub_18909D928()
{
  v1 = sub_188C5B38C();
  v2 = *(v0 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleButton);
  *(v0 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleButton) = v1;
  v3 = v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_18A64E3F0;
  *(v4 + 32) = 0x1EFE32440;
  *(v4 + 40) = 0x1EFE324A0;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932200);
  v5 = sub_18A4A7518();

  v6 = [v3 _registerForTraitTokenChanges_withTarget_action_];
  swift_unknownObjectRelease();

  return v3;
}

void sub_18909DA24()
{
  v1 = [v0 imageView];
  if (v1)
  {
    v2 = objc_opt_self();
    v3 = v1;
    v4 = [v2 unspecifiedConfiguration];
    v5 = [v0 traitCollection];
    v6 = [v4 configurationWithTraitCollection_];

    [v3 _setOverridingSymbolConfiguration_];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_18A64E3F0;
  *(v7 + 32) = 0x1EFE32440;
  *(v7 + 40) = 0x1EFE324A0;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932200);
  v8 = sub_18A4A7518();

  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  v13[4] = sub_1890A1664;
  v13[5] = v9;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_188BA9E60;
  v13[3] = &block_descriptor_29_1;
  v10 = _Block_copy(v13);
  v11 = v1;

  v12 = [v0 _registerForTraitTokenChanges_withHandler_];
  _Block_release(v10);

  swift_unknownObjectRelease();
}

void sub_18909DC5C(char a1, char a2, double a3)
{
  v6 = *(v3 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_imageButton);
  if (v6)
  {
    v7 = *(v3 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_imageButton);
  }

  else
  {
    v8 = *(v3 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleButton);
    if (!v8)
    {
      return;
    }

    v9 = a1;
    v7 = v8;
    a1 = v9;
  }

  v10 = *(v3 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backgroundView);
  if (v10)
  {
    if ((a1 & 1) != 0 && (v11 = *(v3 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backIndicatorButton)) != 0)
    {
      v12 = v6;
      v13 = v10;
      v14 = v11;
      v15 = [v13 leadingAnchor];
      v16 = [v14 leadingAnchor];
      v17 = [v15 constraintEqualToAnchor:v16 constant:-3.0];

      sub_188C5CE34(v17, 0xD000000000000017, 0x800000018A6A4410);
    }

    else
    {
      v18 = v6;
      v19 = [v10 leadingAnchor];
      v20 = [v7 leadingAnchor];
      v17 = [v19 constraintEqualToAnchor:v20 constant:-3.0];

      sub_188C5CE34(v17, 0xD000000000000016, 0x800000018A6A4390);
    }

    v36 = v10;
    v21 = [v36 trailingAnchor];
    v22 = v7;
    v23 = [v22 trailingAnchor];
    v24 = [v21 constraintEqualToAnchor:v23 constant:3.0];

    sub_188C5CE34(v24, 0xD000000000000018, 0x800000018A6A43B0);
    if (a2)
    {
      v25 = [v36 topAnchor];
      v26 = [v22 topAnchor];
      v27 = [v25 constraintEqualToAnchor:v26 constant:a3 + -3.0];

      sub_188C5CE34(v27, 0x5F706F545F494742, 0xEE00706F545F4243);
      v28 = [v36 bottomAnchor];

      v29 = [v22 bottomAnchor];
      v30 = [v28 constraintEqualToAnchor:v29 constant:a3 + 3.0];

      v31 = "BGI_Bottom_CB_Bottom";
    }

    else
    {
      v34 = [v36 centerYAnchor];

      v35 = [v22 centerYAnchor];
      v30 = [v34 constraintEqualToAnchor:v35 constant:a3];

      v31 = "BGI_Center_CB_Center";
    }

    sub_188C5CE34(v30, 0xD000000000000014, (v31 - 32) | 0x8000000000000000);

    v33 = v36;
  }

  else
  {
    v32 = v6;
    v33 = v7;
  }
}

double sub_18909E08C(double a1, double a2, double a3, double a4)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = [Strong barType];
    swift_unknownObjectRelease();
    v8 = 10.0;
    if (v7 == 1)
    {
      v8 = 22.0;
    }
  }

  else
  {
    v8 = 10.0;
  }

  return v8 - a2 - a4;
}

void *sub_18909E198(void *result, void *a2)
{
  v3 = *(v2 + *result);
  if (v3)
  {
    v4 = *(v2 + *result);
LABEL_6:
    v6 = v3;
    return v4;
  }

  v5 = *(v2 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_imageButton);
  if (v5 || (v5 = *(v2 + *a2)) != 0)
  {
    v4 = v5;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

void sub_18909E200(void *a1, char a2, char a3)
{
  v5 = *(v3 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_imageButton);
  if (v5)
  {
    v8 = [v5 currentImage];
    if (v8)
    {
      v9 = v8;
      [v8 alignmentRectInsets];
      if (a1)
      {
        v14 = &selRef_landscapeImagePhoneInsets;
        if ((a2 & 1) == 0)
        {
          v14 = &selRef_imageInsets;
        }

        v15 = v10;
        v16 = v11;
        v17 = v12;
        v18 = v13;
        [a1 *v14];
        v20 = v19;
        v10 = v15;
        v11 = v16;
        v12 = v17;
        v13 = v18;
      }

      else
      {
        v20 = 0.0;
      }

      UIEdgeInsetsAdd(15, v10, v11, v12, v13, v20);
      if ((a3 & 1) == 0)
      {
        sub_18909C398(a2 & 1, &selRef_backgroundVerticalAdjustmentForBarMetrics_);
        v22 = 0.0;
        if (v21 != 0.0)
        {
          v22 = v21;
        }

        if (a1)
        {
          if (v21 == 0.0)
          {
            [a1 backgroundVerticalPositionAdjustmentForBarMetrics_];
          }
        }
      }

      objc_opt_self();
      v23 = +[UIScreen _mainScreen];
      [v23 scale];
      v25 = v24;

      UIRoundToScale(1.0 / v25, v25);
    }
  }
}

void sub_18909E3C0(double a1, double a2, double a3, double a4, double a5)
{
  v9 = [v5 button];
  if (v9)
  {
    v10 = *&v5[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleButton];
    if (v10)
    {
      v21 = v9;
      v11 = v10;
      v12 = v21;
      v13 = [v12 effectiveUserInterfaceLayoutDirection];
      if (v13 == 1)
      {
        v14 = a3;
      }

      else
      {
        v14 = a5;
      }

      if (v13 != 1)
      {
        a5 = a3;
      }

      v15 = v11;
      v16 = [v15 leadingAnchor];
      v17 = [v12 leadingAnchor];
      v18 = [v16 constraintEqualToAnchor:v17 constant:a5 + a1];

      sub_188C5CE34(v18, 0xD000000000000012, 0x800000018A6A4350);
      v19 = [v12 trailingAnchor];

      v20 = [v15 trailingAnchor];
      v22 = [v19 constraintEqualToAnchor:v20 constant:v14 - a1];

      sub_188C5CE34(v22, 0xD000000000000014, 0x800000018A6A4370);
      v9 = v22;
    }
  }
}

void sub_18909E5C4(uint64_t a1, double a2, double a3, double a4, double a5, double a6)
{
  v13 = [v6 button];
  if (!v13)
  {
    return;
  }

  v14 = *&v6[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_imageButton];
  if (v14)
  {
    v51 = v13;
    v15 = v14;
    v16 = sub_18909E08C(a2, a3, a4, a5);
    v17 = v51;
    if ([v17 effectiveUserInterfaceLayoutDirection] == 1)
    {
      v18 = -9;
      v19 = 2;
      v20 = a3;
      v21 = a5;
    }

    else
    {
      v18 = -3;
      v19 = 8;
      v20 = a5;
      v21 = a3;
    }

    if ((v18 | a1) == 0xFFFFFFFFFFFFFFFFLL)
    {
      v27 = v16 * 0.5 + a6;
      v29 = [v15 leadingAnchor];
      v30 = [v17 leadingAnchor];
      v31 = [v29 constraintGreaterThanOrEqualToAnchor:v30 constant:v27 - v21];

      sub_188C5CE34(v31, 0xD000000000000012, 0x800000018A6A4290);
      v28 = v27 + 0.0;
      v22 = v27;
      if ((v19 & a1) != 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v22 = 0.0;
      v23 = sub_18909EB28() - v21;
      v24 = [v15 leadingAnchor];
      v25 = [v17 leadingAnchor];
      v26 = [v24 constraintEqualToAnchor:v25 constant:v23];

      sub_188C5CE34(v26, 0xD000000000000012, 0x800000018A6A4290);
      if ((v19 & a1) != 0)
      {
        v27 = v16 * 0.5 + a6;
        v28 = 0.0;
LABEL_11:
        v32 = [v17 trailingAnchor];
        v33 = [v15 trailingAnchor];
        v34 = [v32 constraintGreaterThanOrEqualToAnchor:v33 constant:v27 - v20];

        sub_188C5CE34(v34, 0xD000000000000014, 0x800000018A6A42B0);
        v28 = v27 + v28;
        v35 = &selRef_constrainToReference_;
        goto LABEL_14;
      }

      v28 = 0.0;
    }

    v27 = 0.0;
    v36 = sub_18909EB28() - v20;
    v37 = [v17 trailingAnchor];
    v38 = [v15 trailingAnchor];
    v35 = &selRef_constrainToReference_;
    v39 = [v37 constraintEqualToAnchor:v38 constant:v36];

    sub_188C5CE34(v39, 0xD000000000000014, 0x800000018A6A42B0);
LABEL_14:
    v40 = v22 + a3;
    v41 = v27 + a5;
    if (v22 + a3 != 0.0 || v41 == 0.0)
    {
      if (v40 == 0.0)
      {
        v40 = a3;
      }

      if (v41 == 0.0)
      {
        a3 = v40;
      }
    }

    else
    {
      a3 = -v41;
    }

    v42 = v15;
    v43 = [v42 centerXAnchor];
    v44 = [v17 centerXAnchor];
    v45 = [v43 v35[7]];

    LODWORD(v46) = 1148829696;
    [v45 setPriority_];
    sub_188C5CE34(v45, 0xD000000000000012, 0x800000018A6A42D0);
    sub_188C5D0B4(&selRef_widthMinimizingConstraint, 0xED00006874646957);
    v47 = [v17 widthAnchor];

    v48 = [v42 widthAnchor];
    v49 = [v47 v35[7]];

    LODWORD(v50) = 1148829696;
    [v49 setPriority_];
    sub_188C5CE34(v49, 0x68746469575F4249, 0xE800000000000000);

    v13 = v51;
  }
}

double sub_18909EB28()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0.0;
  }

  v3 = Strong;
  v4 = [v1 barButtonItem];
  [v3 defaultEdgeSpacing];
  v6 = v5;
  if (!v4)
  {
    swift_unknownObjectRelease();
    return v6;
  }

  v7 = [v1 button];
  if (!v7)
  {
    swift_unknownObjectRelease();
LABEL_10:

    return v6;
  }

  v8 = v7;
  if (([v3 respondsToSelector_] & 1) == 0)
  {
    swift_unknownObjectRelease();

    goto LABEL_10;
  }

  [swift_unknownObjectRetain() additionalEdgeSpacingForButtonBarButton:v8 representingBarButtonItem:v4];
  v10 = v9;
  swift_unknownObjectRelease_n();

  return v6 + v10;
}

void sub_18909EC4C(double a1, double a2, double a3)
{
  v4 = *&v3[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_imageButton];
  if (v4)
  {
    v44 = v4;
    v7 = [v3 button];
    if (v7)
    {
      v8 = v7;
      if ([v7 verticallyCentersContents])
      {
        v9 = [v44 imageView];
        if (v9)
        {
          v10 = v9;
          [v9 alignmentRectInsets];
          v12 = v11;
          v14 = v13;
        }

        else
        {
          v12 = 0.0;
          v14 = 0.0;
        }

        v41 = [v44 centerYAnchor];
        v42 = [v8 centerYAnchor];
        v43 = [v41 constraintEqualToAnchor:v42 constant:(v12 - v14) * -0.5];

        sub_188C5CE34(v43, 0xD000000000000012, 0x800000018A6A4230);
      }

      else if (v3[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_imageHasBaseline] == 1)
      {
        v15 = v44;
        v16 = [v15 lastBaselineAnchor];
        v17 = v8;
        v18 = [v17 layoutMarginsGuide];
        v19 = [v18 bottomAnchor];

        v20 = [v16 constraintEqualToAnchor_];
        sub_188C5CE34(v20, 0xD000000000000014, 0x800000018A6A4270);

        v21 = [v15 topAnchor];
        v22 = [v17 topAnchor];
        v23 = [v21 constraintGreaterThanOrEqualToAnchor_];

        sub_188C5CE34(v23, 0x545F706F545F4249, 0xEA0000000000706FLL);
        v24 = [v17 bottomAnchor];

        v25 = [v15 bottomAnchor];
        v26 = [v24 constraintGreaterThanOrEqualToAnchor_];

        sub_188C5CE34(v26, 0xD000000000000010, 0x800000018A6A4250);
      }

      else
      {
        v27 = a3 != 0.0 && a1 == 0.0;
        v28 = -a3;
        if (v27)
        {
          v29 = v28;
        }

        else
        {
          v29 = a1;
        }

        v30 = v44;
        v31 = [v30 centerYAnchor];
        v32 = v8;
        v33 = [v32 centerYAnchor];
        v34 = [v31 constraintEqualToAnchor:v33 constant:v29];

        sub_188C5CE34(v34, 0xD000000000000012, 0x800000018A6A4230);
        v35 = [v30 topAnchor];
        v36 = [v32 topAnchor];
        v37 = [v35 constraintGreaterThanOrEqualToAnchor:v36 constant:a1];

        sub_188C5CE34(v37, 0x545F706F545F4249, 0xEA0000000000706FLL);
        v38 = [v32 bottomAnchor];

        v39 = [v30 bottomAnchor];
        v40 = [v38 constraintGreaterThanOrEqualToAnchor:v39 constant:v28];

        sub_188C5CE34(v40, 0xD000000000000010, 0x800000018A6A4250);
        sub_188C5D0B4(&selRef_heightMinimizingConstraint, 0xEE00746867696548);
      }
    }
  }
}

double sub_18909F284()
{
  v1 = [v0 button];
  if (v1)
  {
    v2 = v1;
    [v1 bounds];
    v4 = v3;
  }

  else
  {
    v4 = 0.0;
  }

  v5 = *&v0[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_imageButton];
  if (v5)
  {
    v6 = v5;
    v7 = [v6 imageView];
    if (v7)
    {
      v8 = v7;
      v9 = [v6 imageView];
      if (v9)
      {
        v10 = v9;
        [v9 bounds];
        v12 = v11;
        v14 = v13;
        v16 = v15;
        v18 = v17;
      }

      else
      {
        v12 = 0.0;
        v14 = 0.0;
        v16 = 0.0;
        v18 = 0.0;
      }

      v36 = [v0 button];
      [v8 convertRect:v36 toView:{v12, v14, v16, v18}];
      v32 = v37;
      v33 = v38;
      v34 = v39;
      v35 = v40;
    }

    else
    {
      v32 = 0.0;
      v33 = 0.0;
      v34 = 0.0;
      v35 = 0.0;
    }

    v41 = [v6 imageView];
  }

  else
  {
    v19 = *&v0[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleButton];
    if (!v19)
    {
      return v4;
    }

    v6 = v19;
    v20 = [v6 titleLabel];
    if (v20)
    {
      v21 = v20;
      v22 = [v6 titleLabel];
      if (v22)
      {
        v23 = v22;
        [v22 bounds];
        v25 = v24;
        v27 = v26;
        v29 = v28;
        v31 = v30;
      }

      else
      {
        v25 = 0.0;
        v27 = 0.0;
        v29 = 0.0;
        v31 = 0.0;
      }

      v42 = [v0 button];
      [v21 convertRect:v42 toView:{v25, v27, v29, v31}];
      v32 = v43;
      v33 = v44;
      v34 = v45;
      v35 = v46;
    }

    else
    {
      v32 = 0.0;
      v33 = 0.0;
      v34 = 0.0;
      v35 = 0.0;
    }

    v41 = [v6 titleLabel];
  }

  v47 = v41;

  if (v47)
  {
    [v47 alignmentRectForFrame_];
    v4 = v48;
  }

  else
  {

    return 0.0;
  }

  return v4;
}

void sub_18909F588()
{
  v1 = [v0 button];
  if (!v1)
  {
    return;
  }

  v8 = v1;
  v2 = [v0 barButtonItem];
  if (!v2)
  {
    goto LABEL_10;
  }

  v3 = v2;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v5 = [Strong respondsToSelector_], swift_unknownObjectRelease(), (v5 & 1) == 0) || (v6 = swift_unknownObjectWeakLoadStrong()) == 0)
  {

    goto LABEL_10;
  }

  v7 = v6;
  if ([v6 respondsToSelector_])
  {
    [v7 configurationDependenciesChangedForButtonBarButton:v8 representingBarButtonItem:v3];

    swift_unknownObjectRelease();
LABEL_10:

    return;
  }

  swift_unknownObjectRelease();
}

void sub_18909F73C()
{
  v1 = &v0[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_finalTitleAttributes];
  v2 = *&v0[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_finalTitleAttributes];
  *(v1 + 1) = 0;
  *(v1 + 2) = 0;
  *v1 = 0;
  sub_188C58BC4(v2);
  v3 = OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleButton;
  v4 = *&v0[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleButton];
  if (v4)
  {
    v4 = [v4 attributedTitleForState_];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 string];
      v7 = sub_18A4A7288();
      v9 = v8;

      v4 = v7;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
    v5 = 0;
  }

  sub_188C69168(v4, v9);

  v10 = OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleContent;
  swift_beginAccess();
  v11 = *(*&v0[v10] + 16);
  v12 = 0.0;
  if (v11)
  {
    v40 = v5;
    v41 = v1;
    v13 = 0;
    v14 = 0;
    v46 = v11 - 1;
    v42 = v3;
    while (1)
    {
      v16 = *v1;
      if (*v1)
      {
      }

      v17 = *&v0[v3];
      swift_beginAccess();
      v18 = *&v0[v10];
      v19 = v17;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v0[v10] = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v18 = sub_189212C00(v18);
        *&v0[v10] = v18;
      }

      if (v14 >= *(v18 + 2))
      {
        __break(1u);
        return;
      }

      if (!v16 || !v17)
      {
        goto LABEL_11;
      }

      v45 = v13;
      v21 = &v18[v13];
      v22 = *&v18[v13 + 32];
      if (!v22)
      {
        break;
      }

      v44 = v19;
      v43 = v22;
      v23 = [v43 string];
      if (!v23)
      {
        sub_18A4A7288();
        v23 = sub_18A4A7258();
      }

      v24 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
      type metadata accessor for Key(0);
      sub_188C5E0DC();
      v25 = sub_18A4A7088();
      v26 = [v24 initWithString:v23 attributes:v25];

      v27 = *(v21 + 4);
      *(v21 + 4) = v26;

      v28 = *(v21 + 4);
      v1 = v41;
      v3 = v42;
      if (!v28)
      {
        goto LABEL_9;
      }

      v29 = v28;
      [v44 contentEdgeInsets];
      v31 = v30;
      v33 = v32;
      if (![v44 _visualProvider])
      {

        goto LABEL_30;
      }

      type metadata accessor for ButtonBarButtonVisualProvider.ButtonVisualProvider();
      v34 = swift_dynamicCastClass();
      if (!v34)
      {

        swift_unknownObjectRelease();
LABEL_30:
        v3 = v42;
LABEL_10:
        v13 = v45;
        *&v18[v45 + 40] = 0;
LABEL_11:
        *&v0[v10] = v18;
        swift_endAccess();

        if (v46 == v14)
        {
          goto LABEL_31;
        }

        goto LABEL_12;
      }

      [v34 _intrinsicWidthForAttributedTitle_];
      *&v18[v45 + 40] = v35 - v31 - v33;
      *&v0[v10] = v18;
      swift_endAccess();

      v13 = v45;
      swift_unknownObjectRelease();

      v3 = v42;
      if (v46 == v14)
      {
LABEL_31:
        v36 = *&v0[v10];
        v5 = v40;
        if (*(v36 + 16))
        {
          v12 = *(v36 + 40);
        }

        goto LABEL_33;
      }

LABEL_12:
      v13 += 16;
      ++v14;
    }

    v15 = v19;
LABEL_9:

    goto LABEL_10;
  }

LABEL_33:
  v37 = *&v0[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backButtonTitleMaxWidthConstraint];
  if (v37)
  {
    [v37 setConstant_];
  }

  v38 = [v0 button];
  if (v38)
  {
    v39 = v38;
    [v38 setNeedsLayout];
  }
}

id sub_18909FB9C()
{
  v1 = *(v0 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_menuProvider);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v0 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_menuProvider + 8);
  sub_188A34624(0, &qword_1ED48F7A0);

  v3 = sub_18A4A7CB8();
  v4 = objc_opt_self();
  v8[4] = v1;
  v8[5] = v2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_188EBB970;
  v8[3] = &block_descriptor_53_3;
  v5 = _Block_copy(v8);

  v6 = [v4 configurationWithIdentifier:v3 previewProvider:0 actionProvider:v5];
  sub_188A55B8C(v1);

  _Block_release(v5);
  return v6;
}

void sub_18909FD2C()
{
  v1 = *(v0 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_imageButton);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_imageButton);
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleButton);
    if (!v3)
    {
      v3 = *(v0 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backIndicatorButton);
      if (!v3)
      {
        __break(1u);
        return;
      }
    }

    v2 = v3;
  }

  v4 = v1;
  v5 = v2;
  v6 = [v5 _viewControllerForAncestor];
  v7 = [v6 view];

  if (!v7)
  {
    v7 = [v5 window];
  }

  v8 = [v5 superview];
  if (v8)
  {
    [v5 frame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    [v8 convertRect:v7 toView:{v10, v12, v14, v16}];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
  }

  else
  {

    v18 = 0.0;
    v20 = 0.0;
    v22 = 0.0;
    v24 = 0.0;
  }

  _UIControlMenuAttachmentPointForRectInContainer(v7, v18, v20, v22, v24);
}

UITargetedPreview *sub_18909FEDC()
{
  v1 = [v0 button];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = *&v0[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_imageButton];
  v4 = v3;
  if (!v3)
  {
    v4 = *&v0[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleButton];
    if (v4)
    {
      v5 = v4;
    }
  }

  v6 = *&v0[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backIndicatorButton];
  v7 = v3;
  v8 = v6;
  v9 = _UIControlMenuSupportTargetedPreviewOverViews(v2, v4, v8);

  return v9;
}

id sub_1890A00E0(uint64_t a1, void *a2, uint64_t a3)
{
  sub_188C85D28(a1, v14);
  v5 = v15;
  if (!v15)
  {
    v11 = 0;
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = __swift_project_boxed_opaque_existential_0(v14, v15);
  v7 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v8);
  v11 = sub_18A4A86A8();
  (*(v7 + 8))(v10, v5);
  __swift_destroy_boxed_opaque_existential_0Tm(v14);
  if (a2)
  {
LABEL_3:
    sub_188A34624(0, &qword_1ED48FC30);
    a2 = sub_18A4A7518();
  }

LABEL_4:
  v12 = (*(a3 + 16))(a3, v11, a2);
  swift_unknownObjectRelease();

  return v12;
}

id sub_1890A0270(uint64_t a1, uint64_t (*a2)(uint64_t *, uint64_t), uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = Strong;
  if (Strong)
  {
    Strong = sub_188A34624(0, &qword_1ED48E8C0);
  }

  else
  {
    v29 = 0;
    v30 = 0;
  }

  aBlock = v8;
  v31 = Strong;
  v9 = a2(&aBlock, a1);
  sub_188A3F5FC(&aBlock, &qword_1EA934050);
  if (!v9)
  {
    swift_beginAccess();
    v10 = swift_unknownObjectWeakLoadStrong();
    if (v10)
    {
      v11 = v10;
      v12 = [v10 title];

      if (v12)
      {
        sub_18A4A7288();
      }
    }

    swift_beginAccess();
    v13 = swift_unknownObjectWeakLoadStrong();
    if (v13)
    {
      v14 = v13;
      v15 = [v13 image];
    }

    else
    {
      v15 = 0;
    }

    v16 = objc_allocWithZone(UIAction);

    v17 = sub_18A4A7258();

    v32 = sub_1890A16EC;
    v33 = a4;
    aBlock = MEMORY[0x1E69E9820];
    v29 = 1107296256;
    v30 = sub_188BFF280;
    v31 = &block_descriptor_50_2;
    v18 = _Block_copy(&aBlock);

    v19 = [v16 initWithTitle:v17 image:v15 identifier:0 discoverabilityTitle:0 attributes:0 state:0 handler:v18];
    _Block_release(v18);

    v20 = v19;
    [v20 setSubtitle_];
    [v20 setSelectedImage_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_18A64B710;
    *(v21 + 32) = v20;
    v22 = objc_allocWithZone(UIMenu);
    v23 = v20;
    v24 = sub_18A4A7258();
    sub_188A34624(0, &qword_1ED48FC30);
    v25 = sub_18A4A7518();

    v26 = [v22 initWithTitle:v24 image:0 imageName:0 identifier:0 options:0 children:v25];

    v9 = v26;
    [v9 setSubtitle_];
    [v9 setPreferredElementSize_];
  }

  return v9;
}

void sub_1890A05F0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong _triggerActionForEvent_];
  }
}

uint64_t sub_1890A0650(uint64_t a1, uint64_t (*a2)(void *, uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = Strong;
  if (Strong)
  {
    Strong = sub_188A34624(0, &qword_1ED48E8C0);
  }

  else
  {
    v8[1] = 0;
    v8[2] = 0;
  }

  v8[0] = v5;
  v8[3] = Strong;
  v6 = a2(v8, a1);
  sub_188A3F5FC(v8, &qword_1EA934050);
  return v6;
}

void sub_1890A08A4(void *a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = v7;
    v12 = a2;
    v9 = [v8 visualProvider];
    v10 = [v9 pointerShapeInContainer_];

    if (v10)
    {
      [v10 rect];
      [a1 setFrame_];
      v11 = [v10 cornerCurve];
      [a1 setCornerCurve_];

      [v10 cornerRadius];
      [a1 setCornerRadius_];
    }
  }

  else
  {
    v13.receiver = v3;
    v13.super_class = ObjectType;
    objc_msgSendSuper2(&v13, sel__prepareLayer_forView_, a1, a2);
  }
}

void sub_1890A0B8C()
{
  v12.receiver = v0;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, sel__updateImageView);
  v1 = [v0 button];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for ButtonBarButtonVisualProvider.Button();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = v3;
      v5 = v2;
      v6 = [v4 _imageView];
      if (v6)
      {
        v2 = v6;
        v7 = [v4 traitCollection];
        v8 = [v7 _monochromaticTreatment];

        if (v8 == -1)
        {
          v9 = 0;
        }

        else
        {
          v9 = v8;
        }

        [v2 _setMonochromaticTreatment_];
        [v2 _setEnableMonochromaticTreatment_];
        if ([v4 isEnabled])
        {
          v10 = v2;
          v2 = v5;
        }

        else
        {
          v11 = [v4 tintColor];

          [v4 _setImageColor_forState_];
          v10 = v5;
          v5 = v11;
        }
      }

      else
      {
        v2 = v5;
      }
    }
  }
}

void sub_1890A0D18()
{
  v10.receiver = v0;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, sel__updateTitleView);
  v1 = [v0 button];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for ButtonBarButtonVisualProvider.Button();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = v3;
      v5 = [v3 _titleView];
      if (v5)
      {
        v6 = v5;
        v7 = [v4 traitCollection];
        v8 = [v7 _monochromaticTreatment];

        if (v8 == -1)
        {
          v9 = 0;
        }

        else
        {
          v9 = v8;
        }

        [v6 _setMonochromaticTreatment_];
        [v6 _setEnableMonochromaticTreatment_];

        v2 = v6;
      }
    }
  }
}

double sub_1890A0F38(void *a1, uint64_t a2, double (*a3)(void))
{
  v4 = a1;
  v5 = a3();

  return v5;
}

id sub_1890A1060(void *a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v5 = [objc_opt_self() unspecifiedConfiguration];
    v6 = [a1 traitCollection];
    v7 = [v5 configurationWithTraitCollection_];

    [a3 _setOverridingSymbolConfiguration_];
  }

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();

  return [v8 setNeedsLayout];
}

uint64_t sub_1890A1150(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1890A11AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1890A121C(void *a1)
{
  if (a1)
  {
    v1 = [a1 string];
    v2 = sub_18A4A7288();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0xE000000000000000;
  }

  MEMORY[0x18CFE22D0](v2, v4);

  MEMORY[0x18CFE22D0](2629671, 0xE300000000000000);
  v5 = sub_18A4A76F8();
  MEMORY[0x18CFE22D0](v5);

  return 39;
}

id sub_1890A12F0(void *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v12 = [objc_opt_self() rootSettings];
  v13 = [v12 navigationAndToolbarSettings];

  if (v13)
  {
    [v13 buttonHorizontalPadding];
    v15 = v14;
    [v13 buttonVerticalPadding];
    a3 = a3 - v15;
    v16 = v15 + v15 + a5;
    a4 = a4 - v17;
    v18 = v17 + v17 + a6;
    [v13 buttonMinimumHeight];
    v20 = v19;
  }

  else
  {
    v20 = 0.0;
    v16 = a5 + 0.0;
    v18 = a6 + 0.0;
  }

  if (v18 >= v20)
  {
    v21 = v18;
  }

  else
  {
    v21 = v20;
  }

  if (v16 < v21)
  {
    a3 = a3 + (v21 - v16) * -0.5;
  }

  if (v13)
  {
    [v13 buttonHorizontalOffset];
    a3 = a3 - v22;
    [v13 buttonVerticalOffset];
  }

  else
  {
    v23 = 0.0;
  }

  if (v16 >= v21)
  {
    v24 = v16;
  }

  else
  {
    v24 = v21;
  }

  v25 = a4 - (v20 - v18) * 0.5;
  if (v18 >= v20)
  {
    v25 = a4;
  }

  [a1 convertRect:a2 toView:{a3, v25 + v23, v24, v21}];
  v30 = [objc_opt_self() shapeWithRoundedRect:v26 cornerRadius:{v27, v28, v29, v29 * 0.5}];

  return v30;
}

id sub_1890A14CC(char a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backIndicatorButton);
  if (v4)
  {
    [v4 setHighlighted_];
  }

  v5 = *(v1 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleButton);
  if (v5)
  {
    [v5 setHighlighted_];
  }

  v6 = *(v1 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_imageButton);
  if (v6)
  {
    [v6 setHighlighted_];
  }

  v7 = OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backgroundImages;
  swift_beginAccess();
  v8 = *(v2 + v7);
  if (!*(v8 + 16))
  {
    return swift_endAccess();
  }

  v9 = sub_188C4585C(a1 & 1);
  if ((v10 & 1) == 0)
  {
    return swift_endAccess();
  }

  v11 = *(*(v8 + 56) + 8 * v9);
  swift_endAccess();
  result = *(v2 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backgroundView);
  if (result)
  {
    return [result setImage_];
  }

  return result;
}

id sub_1890A15C8(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backIndicatorButton);
  if (v3)
  {
    [v3 _setHasActiveMenuPresentation_];
  }

  v4 = *(v1 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleButton);
  if (v4)
  {
    [v4 _setHasActiveMenuPresentation_];
  }

  result = *(v1 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_imageButton);
  if (result)
  {

    return [result _setHasActiveMenuPresentation_];
  }

  return result;
}

id sub_1890A166C()
{
  v1 = [*(v0 + 16) _representativeItemMenu];

  return v1;
}

void *sub_1890A16A4()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t sub_1890A16FC@<X0>(uint64_t a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return result;
}

id static UIVisualEffect.intelligenceContentLight(source:activationDirection:deactivationDirection:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(_UIIntelligenceContentLightEffect) initWithLightSource_];
  [v5 setActivationTransitionDirection_];
  [v5 setDeactivationTransitionDirection_];
  return v5;
}

uint64_t sub_1890A17A8()
{
  v1 = *v0;
  v2 = v0[4];
  v3 = *(v0 + 40);
  sub_18A4A8888();
  if (!v3)
  {
    MEMORY[0x18CFE37E0](1);
    v5 = v1;
LABEL_7:
    MEMORY[0x18CFE37E0](v5);
    return sub_18A4A88E8();
  }

  if (v3 != 1)
  {
    v5 = 0;
    goto LABEL_7;
  }

  MEMORY[0x18CFE37E0](2);
  sub_18A4A7348();
  sub_18A4A7348();
  sub_18A4A88A8();
  if (v2)
  {
    v4 = v2;
    sub_18A4A7C98();
  }

  return sub_18A4A88E8();
}

void sub_1890A1890()
{
  v1 = *v0;
  if (!*(v0 + 40))
  {
    MEMORY[0x18CFE37E0](1);
    v3 = v1;
LABEL_9:
    MEMORY[0x18CFE37E0](v3);
    return;
  }

  if (*(v0 + 40) != 1)
  {
    v3 = 0;
    goto LABEL_9;
  }

  v2 = v0[4];
  MEMORY[0x18CFE37E0](2);
  sub_18A4A7348();
  sub_18A4A7348();
  if (v2)
  {
    sub_18A4A88A8();
    v4 = v2;
    sub_18A4A7C98();
  }

  else
  {
    sub_18A4A88A8();
  }
}

uint64_t sub_1890A19A0()
{
  v1 = *v0;
  v2 = v0[4];
  v3 = *(v0 + 40);
  sub_18A4A8888();
  if (!v3)
  {
    MEMORY[0x18CFE37E0](1);
    v5 = v1;
LABEL_7:
    MEMORY[0x18CFE37E0](v5);
    return sub_18A4A88E8();
  }

  if (v3 != 1)
  {
    v5 = 0;
    goto LABEL_7;
  }

  MEMORY[0x18CFE37E0](2);
  sub_18A4A7348();
  sub_18A4A7348();
  sub_18A4A88A8();
  if (v2)
  {
    v4 = v2;
    sub_18A4A7C98();
  }

  return sub_18A4A88E8();
}

BOOL sub_1890A1A84(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 9) = *(a1 + 25);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 9) = *(a2 + 25);
  return sub_1890A241C(&v5, &v7);
}

uint64_t _UIIntelligenceContentLightEffect.init(coder:)(void *a1)
{
  type metadata accessor for _UIIntelligenceContentLightEffect(v1);
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t _UIIntelligenceContentLightEffect._needsUpdateForTransition(from:to:usage:)(uint64_t result, void *a2, uint64_t a3)
{
  if (!result)
  {
    __break(1u);
    goto LABEL_26;
  }

  v6 = result;
  result = [result reducedMotion];
  if (!a2)
  {
LABEL_26:
    __break(1u);
    return result;
  }

  if (result != [a2 reducedMotion] && (objc_msgSend(v3, sel_activationTransitionDirection) || objc_msgSend(v3, sel_deactivationTransitionDirection)))
  {
    return 1;
  }

  v7 = &v3[OBJC_IVAR____UIIntelligenceContentLightEffect_material];
  v8 = *&v3[OBJC_IVAR____UIIntelligenceContentLightEffect_material];
  if (!v3[OBJC_IVAR____UIIntelligenceContentLightEffect_material + 40])
  {
    if ((_UICoreMaterialStyleNeedsUpdateForEnvironmentChange(v8, v6, a2) & 1) == 0)
    {
LABEL_23:
      v16.receiver = v3;
      v16.super_class = _UIIntelligenceContentLightEffect;
      return objc_msgSendSuper2(&v16, sel__needsUpdateForTransitionFromEnvironment_toEnvironment_usage_, v6, a2, a3);
    }

    return 1;
  }

  if (v3[OBJC_IVAR____UIIntelligenceContentLightEffect_material + 40] != 1)
  {
    goto LABEL_23;
  }

  v9 = v8 == *(v7 + 2) && *(v7 + 1) == *(v7 + 3);
  if (v9 || (sub_18A4A86C8() & 1) != 0)
  {
    goto LABEL_23;
  }

  v10 = [v6 traitCollection];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 userInterfaceStyle];
  }

  else
  {
    v12 = 0;
  }

  v13 = [a2 traitCollection];
  if (!v13)
  {
    if (!v11)
    {
      goto LABEL_23;
    }

    return 1;
  }

  v14 = v13;
  v15 = [v13 userInterfaceStyle];

  result = 1;
  if (v11 && v12 == v15)
  {
    goto LABEL_23;
  }

  return result;
}

BOOL _UIIntelligenceContentLightEffect.isEqual(_:)(uint64_t a1)
{
  v2 = sub_188C85D28(a1, &v18);
  if (*&v19[8])
  {
    type metadata accessor for _UIIntelligenceContentLightEffect(v2);
    if (swift_dynamicCast())
    {
      v3 = v16;
      sub_188A34624(0, &qword_1ED490230);
      v4 = v1;
      v5 = *(v16 + OBJC_IVAR____UIIntelligenceContentLightEffect_lightSource);
      v6 = sub_18A4A7C88();

      if (v6)
      {
        v7 = *&v4[OBJC_IVAR____UIIntelligenceContentLightEffect_material + 16];
        v16 = *&v4[OBJC_IVAR____UIIntelligenceContentLightEffect_material];
        v17[0] = v7;
        *(v17 + 9) = *&v4[OBJC_IVAR____UIIntelligenceContentLightEffect_material + 25];
        v8 = *&v3[OBJC_IVAR____UIIntelligenceContentLightEffect_material + 25];
        v9 = *&v3[OBJC_IVAR____UIIntelligenceContentLightEffect_material + 16];
        v18 = *&v3[OBJC_IVAR____UIIntelligenceContentLightEffect_material];
        *v19 = v9;
        *&v19[9] = v8;
        sub_1890A2634(&v18, &v15);
        v10 = sub_1890A241C(&v16, &v18);
        sub_1890A266C(&v18);
        if (v10)
        {
          v11 = [v4 activationTransitionDirection];
          if (v11 == [v3 activationTransitionDirection])
          {
            v12 = [v4 deactivationTransitionDirection];
            v13 = [v3 deactivationTransitionDirection];

            return v12 == v13;
          }
        }
      }
    }
  }

  else
  {
    sub_188A553EC(&v18);
  }

  return 0;
}

void __swiftcall _UIIntelligenceContentLightEffect.init()(_UIIntelligenceContentLightEffect *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id static UIVisualEffect.intelligenceContentLight(source:)(uint64_t a1)
{
  v2 = objc_allocWithZone(_UIIntelligenceContentLightEffect);

  return [v2 initWithLightSource_];
}

id static UIVisualEffect.intelligenceContentLight(source:blurStyle:activationDirection:deactivationDirection:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [objc_allocWithZone(_UIIntelligenceContentLightEffect) initWithLightSource:a1 blurStyle:a2];
  [v6 setActivationTransitionDirection_];
  [v6 setDeactivationTransitionDirection_];
  return v6;
}

id static UIVisualEffect.intelligenceContentLight(source:lightMaterial:darkMaterial:bundle:activationDirection:deactivationDirection:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = objc_allocWithZone(_UIIntelligenceContentLightEffect);
  v13 = sub_18A4A7258();
  v14 = sub_18A4A7258();
  v15 = [v12 initWithLightSource:a1 lightMaterial:v13 darkMaterial:v14 bundle:a6];

  [v15 setActivationTransitionDirection_];
  [v15 setDeactivationTransitionDirection_];
  return v15;
}

BOOL sub_1890A241C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (!*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      return v3 == *a2;
    }

    return 0;
  }

  if (*(a1 + 40) != 1)
  {
    if (*(a2 + 40) == 2)
    {
      v14 = vorrq_s8(*(a2 + 8), *(a2 + 24));
      if (!(*&vorr_s8(*v14.i8, *&vextq_s8(v14, v14, 8uLL)) | *a2))
      {
        return 1;
      }
    }

    return 0;
  }

  if (*(a2 + 40) != 1)
  {
    return 0;
  }

  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  if (v3 == *a2 && a1[1] == *(a2 + 8) || (sub_18A4A86C8()) && (v4 == v7 && v5 == v8 || (sub_18A4A86C8()))
  {
    if (v6)
    {
      if (v9)
      {
        sub_188A34624(0, &unk_1EA93B990);
        v10 = v9;
        v11 = v6;
        v12 = sub_18A4A7C88();

        if (v12)
        {
          return 1;
        }
      }
    }

    else if (!v9)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t get_enum_tag_for_layout_string_So33_UIIntelligenceContentLightEffectC5UIKitE8Material33_FA51475B64FD281D2276DA1E0CCE7C49LLO(uint64_t a1)
{
  if ((*(a1 + 40) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 40) & 3;
  }
}

uint64_t sub_1890A26B8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

unint64_t sub_1890A26F0()
{
  result = qword_1EA93B988;
  if (!qword_1EA93B988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93B988);
  }

  return result;
}

id sub_1890A2744()
{
  v1 = type metadata accessor for _Glass(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v12[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12[-v5];
  sub_1890A43A8(v0, &v12[-v5], type metadata accessor for _Glass);
  sub_1890A43A8(v6, v3, type metadata accessor for _Glass);
  v7 = [objc_allocWithZone(_UIViewGlass) init];
  v14 = v1;
  v15 = &protocol witness table for _Glass;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v13);
  sub_188C4CD1C(v3, boxed_opaque_existential_0);
  v9 = v7;
  sub_188B7533C(v6);
  v10 = OBJC_IVAR____UIViewGlass__underlyingMaterial;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0Tm(v9 + v10);
  sub_188A5EBAC(&v13, v9 + v10);
  swift_endAccess();

  return v9;
}

void sub_1890A28A4()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  if (v5)
  {
    v6 = v0[3];
LABEL_10:
    v10 = (v5 - 1) & v5;
    v11 = __clz(__rbit64(v5)) | (v6 << 6);
    v12 = *(*(v1 + 48) + 8 * v11);
    sub_188F8EA58(*(v1 + 56) + 16 * v11, v18);
    v15 = v12;
    sub_188E8FC60(v18, &v16);
    v14 = v16;
    v13 = v17;
    *v0 = v1;
    v0[1] = v2;
    v0[2] = v4;
    v0[3] = v6;
    v0[4] = v10;
    if (!v14 && v13 == 1)
    {
LABEL_15:
      sub_188A3F5FC(&v15, &unk_1EA93CB10);
    }

    else
    {
      sub_188A3F704(&v15, v18, &unk_1EA93A760);
      if (!swift_unknownObjectWeakLoadStrong())
      {
        sub_1890A28A4(0);
      }

      sub_188A3F5FC(v18, &unk_1EA93A760);
    }
  }

  else
  {
    v7 = (v4 + 64) >> 6;
    if (v7 <= v3 + 1)
    {
      v8 = v3 + 1;
    }

    else
    {
      v8 = (v4 + 64) >> 6;
    }

    v9 = v8 - 1;
    while (1)
    {
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if (v6 >= v7)
      {
        v15 = 0;
        v16 = 0;
        v17 = 1;
        *v0 = v1;
        v0[1] = v2;
        v0[2] = v4;
        v0[3] = v9;
        v0[4] = 0;
        goto LABEL_15;
      }

      v5 = *(v2 + 8 * v6);
      ++v3;
      if (v5)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_1890A2A38()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  if (v5)
  {
    v6 = v0[3];
LABEL_10:
    v10 = (v5 - 1) & v5;
    v11 = (v6 << 9) | (8 * __clz(__rbit64(v5)));
    v12 = *(*(v1 + 48) + v11);
    sub_188A3F29C(*(v1 + 56) + v11, v15, &unk_1EA93B9E0);
    v13 = v12;
    sub_188A3F704(v15, &v14, &unk_1EA93B9E0);
    *v0 = v1;
    v0[1] = v2;
    v0[2] = v4;
    v0[3] = v6;
    v0[4] = v10;
    if (v12)
    {
      sub_188A3F704(&v13, v15, &unk_1EA93B9F0);
      if (!swift_weakLoadStrong())
      {
        sub_1890A2A38();
      }

      sub_188A3F5FC(v15, &unk_1EA93B9F0);
    }

    else
    {
LABEL_15:
      sub_188A3F5FC(&v13, &qword_1EA938700);
    }
  }

  else
  {
    v7 = (v4 + 64) >> 6;
    if (v7 <= v3 + 1)
    {
      v8 = v3 + 1;
    }

    else
    {
      v8 = (v4 + 64) >> 6;
    }

    v9 = v8 - 1;
    while (1)
    {
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if (v6 >= v7)
      {
        v13 = 0;
        v14 = 0;
        *v0 = v1;
        v0[1] = v2;
        v0[2] = v4;
        v0[3] = v9;
        v0[4] = 0;
        goto LABEL_15;
      }

      v5 = *(v2 + 8 * v6);
      ++v3;
      if (v5)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_1890A2BD8()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  if (v5)
  {
    v6 = v0[3];
LABEL_10:
    v10 = (v5 - 1) & v5;
    v11 = (v6 << 9) | (8 * __clz(__rbit64(v5)));
    v12 = *(*(v1 + 48) + v11);
    sub_188A3F29C(*(v1 + 56) + v11, v15, &qword_1EA936E70);
    v13 = v12;
    sub_188A3F704(v15, &v14, &qword_1EA936E70);
    *v0 = v1;
    v0[1] = v2;
    v0[2] = v4;
    v0[3] = v6;
    v0[4] = v10;
    if (v12)
    {
      sub_188A3F704(&v13, v15, &qword_1EA93BA08);
      if (!swift_unknownObjectWeakLoadStrong())
      {
        sub_1890A2BD8();
      }

      sub_188A3F5FC(v15, &qword_1EA93BA08);
    }

    else
    {
LABEL_15:
      sub_188A3F5FC(&v13, &qword_1EA93BA00);
    }
  }

  else
  {
    v7 = (v4 + 64) >> 6;
    if (v7 <= v3 + 1)
    {
      v8 = v3 + 1;
    }

    else
    {
      v8 = (v4 + 64) >> 6;
    }

    v9 = v8 - 1;
    while (1)
    {
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if (v6 >= v7)
      {
        v13 = 0;
        v14 = 0;
        *v0 = v1;
        v0[1] = v2;
        v0[2] = v4;
        v0[3] = v9;
        v0[4] = 0;
        goto LABEL_15;
      }

      v5 = *(v2 + 8 * v6);
      ++v3;
      if (v5)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1890A2D7C()
{
  sub_18A4A5AB8();

  return swift_deallocClassInstance();
}

id sub_1890A2DB4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B9C8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v31 - v7;
  v9 = sub_18A4A6178();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v33 = &v31 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v34 = &v31 - v16;
  v17 = type metadata accessor for UIPlatformGlassInteractionRepresentable(0);
  v18 = v1;
  v19 = v1 + *(v17 + 24);
  v20 = v10;
  sub_188A3F29C(v19, v8, &qword_1EA93B9C8);
  v21 = *(v10 + 48);
  if (v21(v8, 1, v9) == 1)
  {
    sub_188A3F5FC(v8, &qword_1EA93B9C8);
    v22 = v20;
    goto LABEL_8;
  }

  v31 = v20;
  v32 = a1;
  v23 = *(v20 + 32);
  v23(v34, v8, v9);
  sub_188A3F29C(v18 + *(v17 + 28), v5, &qword_1EA93B9C8);
  if (v21(v5, 1, v9) == 1)
  {
    v22 = v31;
    (*(v31 + 8))(v34, v9);
    sub_188A3F5FC(v5, &qword_1EA93B9C8);
LABEL_7:
    a1 = v32;
    goto LABEL_8;
  }

  v24 = v33;
  v23(v33, v5, v9);
  sub_18A4A6118();
  sub_188C4B128(&qword_1EA93B9D0, MEMORY[0x1E69818E0]);
  v25 = sub_18A4A7248();
  v22 = v31;
  v26 = *(v31 + 8);
  v26(v12, v9);
  if (v25)
  {
    v26(v24, v9);
    v26(v34, v9);
    goto LABEL_7;
  }

  sub_18A4A6118();
  v30 = MEMORY[0x18CFE0F70](v24, v12);
  v26(v12, v9);
  v26(v24, v9);
  v26(v34, v9);
  a1 = v32;
  if (v30)
  {
    v28 = -1;
    return [a1 _setStyle_];
  }

LABEL_8:
  sub_18A4A6118();
  sub_188C4B128(&qword_1EA93B9D0, MEMORY[0x1E69818E0]);
  v27 = sub_18A4A7248();
  (*(v22 + 8))(v12, v9);
  v28 = ~v27 & 1;
  return [a1 _setStyle_];
}

char *sub_1890A3208(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B9D8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - v6;
  v8 = [objc_allocWithZone(v2) init];
  v9 = &v8[OBJC_IVAR____TtC5UIKitP33_F83AB3ECBB2C378B4FCEB681A4D7DB7430UIPlatformGlassFlexInteraction_cornerRadii];
  v10 = *(a1 + 16);
  *v9 = *a1;
  *(v9 + 1) = v10;
  v9[32] = *(a1 + 32);
  v11 = sub_18A4A5968();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v7, a2, v11);
  (*(v12 + 56))(v7, 0, 1, v11);
  v13 = OBJC_IVAR____TtC5UIKitP33_F83AB3ECBB2C378B4FCEB681A4D7DB7430UIPlatformGlassFlexInteraction_proxy;
  swift_beginAccess();
  v14 = v8;
  sub_188A4B4F4(v7, &v8[v13], &qword_1EA93B9D8);
  swift_endAccess();
  [v14 setDelegate_];

  (*(v12 + 8))(a2, v11);
  return v14;
}

uint64_t sub_1890A33CC(uint64_t result, uint64_t a2)
{
  if (a2 != 2)
  {
    if (a2)
    {
      return result;
    }

    v2 = swift_unknownObjectRetain();
    sub_1890A2DB4(v2);
LABEL_4:

    return swift_unknownObjectRelease();
  }

  v3 = (result + OBJC_IVAR____TtC5UIKitP33_F83AB3ECBB2C378B4FCEB681A4D7DB7430UIPlatformGlassFlexInteraction_cornerRadii);
  if (*(result + OBJC_IVAR____TtC5UIKitP33_F83AB3ECBB2C378B4FCEB681A4D7DB7430UIPlatformGlassFlexInteraction_cornerRadii + 32))
  {
    return result;
  }

  v4 = v3[2];
  v5 = v3[3];
  v7 = *v3;
  v6 = v3[1];
  v8 = [swift_unknownObjectRetain() view];
  if (!v8)
  {
    goto LABEL_4;
  }

  v9 = v8;
  v10 = [v8 traitCollection];
  v11 = [v10 layoutDirection];

  if (v11 == 1)
  {
    v12 = v4;
  }

  else
  {
    v12 = v5;
  }

  if (v11 == 1)
  {
    v13 = v7;
  }

  else
  {
    v13 = v6;
  }

  if (v11 == 1)
  {
    v14 = v6;
  }

  else
  {
    v14 = v7;
  }

  CACornerRadiiMake(&v20, v14, v13, v12, v4);
  v18 = v22;
  v19 = v20;
  v16 = v23;
  v17 = v21;
  v15 = [v9 layer];
  v20 = v19;
  v21 = v17;
  v22 = v18;
  v23 = v16;
  [v15 setCornerRadii_];

  return swift_unknownObjectRelease();
}

uint64_t sub_1890A37E0()
{
  v1 = OBJC_IVAR____TtC5UIKitP33_F83AB3ECBB2C378B4FCEB681A4D7DB7430UIPlatformGlassInteractionView_coreInteractions;
  v2 = sub_18A4A5B68();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t sub_1890A3930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEDE0E98](a1, ObjectType, a3);
}

id sub_1890A3994(uint64_t a1)
{
  v2 = type metadata accessor for _Glass(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = [result window];
    if (v7)
    {

      type metadata accessor for GlassMorphablePreview(0);
      sub_1890A43A8(a1 + OBJC_IVAR____TtC5UIKitP33_F83AB3ECBB2C378B4FCEB681A4D7DB7418GlassElementBridge_glass, v4, type metadata accessor for _Glass);
      return sub_1890A3B04(v6, v4);
    }

    else
    {

      return 0;
    }
  }

  return result;
}

id sub_1890A3B04(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93BA10);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v31 - v7;
  v9 = [a1 layer];
  v10 = [v9 presentationLayer];

  if (!v10)
  {
    v10 = [a1 layer];
  }

  result = [a1 superview];
  if (result)
  {
    v12 = result;
    [a1 bounds];
    [a1 convertPoint:v12 toCoordinateSpace:{UIRectGetCenter(v13, v14, v15)}];
    v17 = v16;
    v19 = v18;
    v20 = v12;
    [v10 transform];
    CATransform3DGetAffineTransform(&v33, &v34);
    tx = v33.tx;
    ty = v33.ty;
    v32 = *&v33.a;
    v31 = *&v33.c;
    v23 = objc_allocWithZone(UIPreviewTarget);
    *&v34.m11 = v32;
    *&v34.m13 = v31;
    v34.m21 = tx;
    v34.m22 = ty;
    v24 = [v23 initWithContainer:v20 center:&v34 transform:{v17, v19}];

    v25 = objc_allocWithZone(v2);
    v26 = [objc_allocWithZone(UIPreviewParameters) init];
    v27 = [v25 initWithView:a1 parameters:v26 target:v24];

    sub_188C4CD1C(a2, v8);
    v28 = type metadata accessor for _Glass(0);
    (*(*(v28 - 8) + 56))(v8, 0, 1, v28);
    v29 = OBJC_IVAR____TtC5UIKitP33_F83AB3ECBB2C378B4FCEB681A4D7DB7421GlassMorphablePreview_glass;
    swift_beginAccess();
    v30 = v27;
    sub_188A4B4F4(v8, v27 + v29, &unk_1EA93BA10);
    swift_endAccess();

    return v30;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1890A3DE0()
{
  v1 = OBJC_IVAR____TtC5UIKitP33_F83AB3ECBB2C378B4FCEB681A4D7DB7418GlassElementBridge_proxy;
  v2 = sub_18A4A5968();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_188B7533C(v0 + OBJC_IVAR____TtC5UIKitP33_F83AB3ECBB2C378B4FCEB681A4D7DB7418GlassElementBridge_glass);
  MEMORY[0x18CFEA6E0](v0 + OBJC_IVAR____TtC5UIKitP33_F83AB3ECBB2C378B4FCEB681A4D7DB7418GlassElementBridge_contentView);

  return swift_deallocClassInstance();
}

void sub_1890A427C()
{
  sub_1890A47DC(319, &qword_1EA92F090, type metadata accessor for _Glass);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1890A43A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1890A4410(uint64_t a1, uint64_t a2)
{

  sub_1890A28A4();
  if (v5)
  {
    v6 = v4;
    do
    {
      ObjectType = swift_getObjectType();
      (*(v6 + 24))(a1, a2, ObjectType, v6);
      swift_unknownObjectRelease();
      sub_1890A28A4();
      v6 = v8;
    }

    while (v9);
  }

  return sub_188E036A4();
}

uint64_t sub_1890A450C(void *a1)
{
  v2 = v1;
  v4 = sub_18A4A5968();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v20 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_18A4A5998();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v20 - v13;
  [a1 translation];
  [a1 translation];
  [a1 scale];
  sub_18A4A5978();
  [a1 isActive];
  sub_18A4A5988();
  v15 = *(v8 + 8);
  v15(v14, v7);
  (*(v8 + 32))(v14, v10, v7);
  v16 = OBJC_IVAR____TtC5UIKitP33_F83AB3ECBB2C378B4FCEB681A4D7DB7430UIPlatformGlassFlexInteraction_proxy;
  swift_beginAccess();
  if ((*(v5 + 48))(v2 + v16, 1, v4))
  {
    v15(v14, v7);
    return swift_endAccess();
  }

  else
  {
    v18 = v2 + v16;
    v19 = v20;
    (*(v5 + 16))(v20, v18, v4);
    swift_endAccess();
    sub_18A4A5958();
    (*(v5 + 8))(v19, v4);
    return (v15)(v14, v7);
  }
}

void sub_1890A47DC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_18A4A7D38();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1890A4830()
{
  if (!qword_1EA931130)
  {
    v0 = sub_18A4A7D38();
    if (!v1)
    {
      atomic_store(v0, &qword_1EA931130);
    }
  }
}

uint64_t sub_1890A4930(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____UISearchControllerTrackableState_trackableState);
  if (*(v2 + 16) == (result & 1))
  {
    *(v2 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_188CCA8E0();

    sub_18A4A2BF8();
  }

  return result;
}

id sub_1890A4A30(char a1, char a2)
{
  if (a2)
  {
    sub_1890A4F10();
    v3 = sub_18A4A44C8();
    MEMORY[0x1EEE9AC00](v3);
    sub_18A4A4D58();
  }

  else
  {

    return [v2 setIsActive_];
  }
}

uint64_t sub_1890A4B90()
{
  swift_getKeyPath();
  sub_188CCA8E0();
  sub_18A4A2C08();

  return *(v0 + 16);
}

uint64_t sub_1890A4C00@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_188CCA8E0();
  sub_18A4A2C08();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1890A4C78(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_188CCA8E0();
    sub_18A4A2BF8();
  }

  return result;
}

uint64_t sub_1890A4D58()
{
  v1 = OBJC_IVAR____TtCE5UIKitCSo33_UISearchControllerTrackableStateP33_20E6E50696D6CCA920556441D9DEB6BC5State___observationRegistrar;
  v2 = sub_18A4A2C48();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void __swiftcall _UISearchControllerTrackableState.init()(_UISearchControllerTrackableState *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id _UISearchControllerTrackableState.init()()
{
  v1 = OBJC_IVAR____UISearchControllerTrackableState_trackableState;
  _s5StateCMa_0();
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  sub_18A4A2C38();
  *&v0[v1] = v2;
  v4.receiver = v0;
  v4.super_class = _UISearchControllerTrackableState;
  return objc_msgSendSuper2(&v4, sel_init);
}

unint64_t type metadata accessor for _UISearchControllerTrackableState()
{
  result = qword_1EA93BA50;
  if (!qword_1EA93BA50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA93BA50);
  }

  return result;
}

unint64_t sub_1890A4F10()
{
  result = qword_1EA930358;
  if (!qword_1EA930358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA930358);
  }

  return result;
}

id sub_1890A5000(id *a1, void *a2)
{
  v3 = [*a1 view];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = [a2 isDescendantOfView_];

  return v5;
}

void sub_1890A50D8(void *a1, double a2, double a3)
{
  v6 = sub_1890A5210();
  if (v6)
  {
    v7 = v6;
    v8 = [v6 view];
    if (v8)
    {
      v18 = v8;
      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      if (v9)
      {
        v10 = v9;
        if ([v9 _accessibilityShouldActivateOnHUDLift])
        {
          v11 = [a1 view];
          [v10 convertPoint:v11 fromView:{a2, a3}];
          v13 = v12;
          v15 = v14;

          [v10 _activateForAccessibilityHUDLiftAtPoint_];
        }

        else
        {
          v17 = v7;
          v7 = v18;
          v18 = v17;
        }
      }

      v16 = v18;
    }

    else
    {
      v16 = v7;
    }
  }
}

uint64_t sub_1890A5210()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = *(Strong + OBJC_IVAR____UIFloatingBarContainerView_model);
  swift_getKeyPath();
  v10[0] = v1;
  sub_188AF0C98();
  sub_18A4A2C08();

  swift_beginAccess();
  v2 = *(v1 + 296);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BAE8);
  v9 = sub_1890A55E4();

  swift_unknownObjectRelease();
  *&v6 = v2;
  *(&v6 + 1) = sub_1890AD6D4;
  v7 = 0;
  sub_188A5EBAC(&v6, v10);
  v3 = __swift_project_boxed_opaque_existential_0(v10, v10[3]);
  MEMORY[0x1EEE9AC00](v3);
  sub_18A4A74A8();
  v4 = v6;
  __swift_destroy_boxed_opaque_existential_0Tm(v10);
  return v4;
}

id sub_1890A5508(id *a1, uint64_t a2, double a3, double a4)
{
  v7 = [*a1 view];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  [*(a2 + OBJC_IVAR____TtC5UIKit32ToolbarAccessibilityHUDAssistant_view) convertPoint:v7 toCoordinateSpace:{a3, a4}];
  v9 = [v8 pointInside:0 withEvent:?];

  return v9;
}

unint64_t sub_1890A55E4()
{
  result = qword_1EA93BAF0;
  if (!qword_1EA93BAF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA93BAE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93BAF0);
  }

  return result;
}

uint64_t sub_1890A566C(void *a1)
{
  v1 = [a1 view];
  if (!v1)
  {
    goto LABEL_5;
  }

  v2 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

LABEL_5:
    v7 = 0;
    return v7 & 1;
  }

  v4 = *(Strong + OBJC_IVAR____UIFloatingBarContainerView_model);
  swift_getKeyPath();
  sub_188AF0C98();
  sub_18A4A2C08();

  swift_beginAccess();
  v5 = *(v4 + 296);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BAE8);
  v12 = sub_1890A55E4();

  swift_unknownObjectRelease();
  *&v9 = v5;
  *(&v9 + 1) = sub_1890AD6D4;
  v10 = 0;
  sub_188A5EBAC(&v9, v13);
  v6 = __swift_project_boxed_opaque_existential_0(v13, v13[3]);
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_18A4A74C8();

  __swift_destroy_boxed_opaque_existential_0Tm(v13);
  return v7 & 1;
}

uint64_t sub_1890A5A78(void *a1, uint64_t a2)
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v6 = result;
    v7 = *(v2 + OBJC_IVAR____TtC5UIKit34ToolbarPointerInteractionAssistant_view);
    v8 = a1;
    [v6 request:a2 locationInView:v7];
    v9 = [v7 hitTest:0 withEvent:?];
    if (!v9)
    {
LABEL_5:

      return 0;
    }

    v10 = v9;
    sub_188A34624(0, &qword_1ED48F680);
    v11 = v7;
    v12 = v10;
    v13 = sub_18A4A7C88();

    if (v13)
    {

      goto LABEL_5;
    }

    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (!v14 || ([v14 isEnabled] & 1) != 0)
    {
      objc_opt_self();
      v15 = swift_dynamicCastObjCClass();
      if (v15)
      {
        v16 = v15;
        [v15 _buttonBarHitRect];
        v18 = v17;
        v20 = v19;
        v22 = v21;
        v24 = v23;
        sub_188A34624(0, &qword_1ED48F7A0);
        v25 = sub_18A4A7CB8();
        v26 = [v6 createRegionFromRect:v16 targetView:v25 identifier:objc_msgSend(v16 selected:{sel_isSelected), v18, v20, v22, v24}];
LABEL_14:
        v37 = v26;

        return v37;
      }

      objc_opt_self();
      v27 = swift_dynamicCastObjCClass();
      if (v27)
      {
        v28 = v27;
        [v27 bounds];
        v30 = v29;
        v32 = v31;
        v34 = v33;
        v36 = v35;
        sub_188A34624(0, &qword_1ED48F7A0);
        v25 = sub_18A4A7CB8();
        v26 = [v6 createRegionFromRect:v28 targetView:v25 identifier:objc_msgSend(v28 selected:{sel_isSelected), v30, v32, v34, v36}];
        goto LABEL_14;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1890A5D38(void *a1, uint64_t a2)
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v5 = result;
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      v6 = result;
      v7 = a1;
      v8 = [v6 targetView];
      if (v8)
      {
        v9 = v8;
        objc_opt_self();
        v10 = swift_dynamicCastObjCClass();
        if (v10)
        {
          v11 = [v10 pointerInteraction:v5 styleForRegion:a2];
LABEL_10:
          v13 = v11;

          return v13;
        }

        objc_opt_self();
        v12 = swift_dynamicCastObjCClass();
        if (v12)
        {
          v11 = [v5 createStyleForButton:v12 shapeProvider:0];
          goto LABEL_10;
        }
      }

      else
      {
      }

      return 0;
    }
  }

  return result;
}

void sub_1890A5E68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    return;
  }

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {
    return;
  }

  v5 = [v4 targetView];
  if (!v5)
  {
    return;
  }

  v11 = v5;
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v10 = [v6 visualProvider];
    [v10 pointerWillEnter_];

    v7 = v10;
LABEL_6:

    return;
  }

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (!v8)
  {
    v7 = v11;
    goto LABEL_6;
  }

  v9 = [v8 _visualProvider];
  if (v9)
  {
    [v9 pointerWillEnter_];

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void sub_1890A5FEC(uint64_t a1, uint64_t a2)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {
    return;
  }

  v4 = [v3 targetView];
  if (!v4)
  {
    return;
  }

  v10 = v4;
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v9 = [v5 visualProvider];
    [v9 pointerWillExit_];

    v6 = v9;
LABEL_5:

    return;
  }

  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (!v7)
  {
    v6 = v10;
    goto LABEL_5;
  }

  v8 = [v7 _visualProvider];
  if (v8)
  {
    [v8 pointerWillExit_];

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

id sub_1890A6140(uint64_t a1)
{
  if (qword_1ED491B40 != -1)
  {
    swift_once();
  }

  if (qword_1ED491AF0 != -1)
  {
    swift_once();
  }

  v3 = off_1ED491B48;
  os_unfair_lock_lock(*(off_1ED491B48 + 2));
  sub_188D63234(&type metadata for UITraitUserInterfaceStyle, sub_188EB2DD4);
  os_unfair_lock_unlock(v3[2]);
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA934860);
  v4 = sub_188A74A44();
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v5 = [v1 _traitCollectionByReplacingNSIntegerValue_forTraitToken_];
  swift_unknownObjectRelease();
  return v5;
}

_UIToolbarVisualProviderSwiftClassProvider __swiftcall _UIToolbarVisualProviderSwiftClassProvider.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_1890A6360(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_188AF0C98();
  sub_18A4A2C08();

  v4 = sub_188B28038(v3, a2);

  if ((v4 & 1) == 0)
  {

    sub_188C1979C(v6);
    return sub_188AEFC0C();
  }

  return result;
}

id sub_1890A6410(void *a1, id a2, void *a3)
{
  result = [a2 toolbar];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v7 = result;
  [a3 bounds];
  [v7 convertRect:a3 fromCoordinateSpace:?];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  [a1 setFrame_];
  result = [a2 toolbar];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v16 = result;
  [result addSubview_];

  return [a3 setAlpha_];
}

id sub_1890A6630(double a1)
{
  v3 = objc_opt_self();
  result = [v3 _isInAnimationBlockWithAnimationsEnabled];
  if (result)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v1;
    *(v5 + 24) = a1;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1890A780C;
    *(v6 + 24) = v5;
    aBlock[4] = sub_188A4B574;
    aBlock[5] = v6;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_188A4A968;
    aBlock[3] = &block_descriptor_101;
    v7 = _Block_copy(aBlock);
    v8 = v1;

    [v3 performWithoutAnimation_];
    _Block_release(v7);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (v1[OBJC_IVAR____TtC5UIKit21ToolbarVisualProvider_isInteractive] == 1)
  {
    v10 = MEMORY[0x18CFE1B90](0.15, 0.85, 0.25);
    MEMORY[0x1EEE9AC00](v10);
    sub_18A4A49A8();
  }

  else
  {
    v11 = *&v1[OBJC_IVAR____TtC5UIKit21ToolbarVisualProvider_model];
    if (*(v11 + 136) == a1)
    {
      *(v11 + 136) = a1;
      return result;
    }

    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    aBlock[0] = v11;
    sub_188AF0C98();
    sub_18A4A2BF8();
  }
}

uint64_t sub_1890A68F4()
{
  sub_18A4A6C78();
  sub_18A4A49A8();
}

uint64_t sub_1890A6964(uint64_t result, double a2)
{
  v2 = *(result + OBJC_IVAR____TtC5UIKit21ToolbarVisualProvider_model);
  if (*(v2 + 136) == a2)
  {
    *(v2 + 136) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_188AF0C98();
    sub_18A4A2BF8();
  }

  return result;
}

uint64_t sub_1890A6AB0()
{
  *(v0 + OBJC_IVAR____TtC5UIKit21ToolbarVisualProvider_isInteractive) = 1;
  v1 = *(v0 + OBJC_IVAR____TtC5UIKit21ToolbarVisualProvider_model);
  swift_getKeyPath();
  sub_188AF0C98();
  sub_18A4A2C08();

  v3 = *(v1 + 136);
  if (*(v1 + 144) == v3)
  {
    *(v1 + 144) = v3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_18A4A2BF8();
  }

  return result;
}

uint64_t sub_1890A6C30(uint64_t result, double a2)
{
  v2 = *(result + OBJC_IVAR____TtC5UIKit21ToolbarVisualProvider_model);
  if (*(v2 + 152) == a2)
  {
    *(v2 + 152) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_188AF0C98();
    sub_18A4A2BF8();
  }

  return result;
}

uint64_t sub_1890A6DD0(uint64_t result)
{
  v1 = *(result + OBJC_IVAR____TtC5UIKit21ToolbarVisualProvider_model);
  if (*(v1 + 152) == 1.0)
  {
    *(v1 + 152) = 0x3FF0000000000000;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_188AF0C98();
    sub_18A4A2BF8();
  }

  return result;
}

__n128 sub_1890A6F80@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_188AF0C98();

  sub_18A4A2C08();

  swift_beginAccess();
  v6 = *(v3 + 88);
  v7 = *(v3 + 72);
  v4 = sub_18A4A5BC8();
  *a1 = v3;
  *(a1 + 8) = v4;
  result = v7;
  *(a1 + 16) = v7;
  *(a1 + 32) = v6;
  *(a1 + 48) = 0;
  return result;
}

double sub_1890A7068@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_188AF0C98();
  sub_18A4A2C08();

  result = *(v3 + 112);
  *a2 = result;
  return result;
}

double sub_1890A7108@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_188AF0C98();
  sub_18A4A2C08();

  result = *(v3 + 120);
  *a2 = result;
  return result;
}

double sub_1890A71A8@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_188AF0C98();
  sub_18A4A2C08();

  result = *(v3 + 136);
  *a2 = result;
  return result;
}

double sub_1890A7248@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_188AF0C98();
  sub_18A4A2C08();

  result = *(v3 + 144);
  *a2 = result;
  return result;
}

double sub_1890A72E8@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_188AF0C98();
  sub_18A4A2C08();

  result = *(v3 + 152);
  *a2 = result;
  return result;
}

id sub_1890A7388@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_188AF0C98();
  sub_18A4A2C08();

  v7 = *(v3 + 160);
  *a2 = v7;
  v4 = *(v3 + 168);
  *(a2 + 8) = v4;
  v5 = v4;

  return v7;
}

uint64_t sub_1890A7428()
{
  swift_getKeyPath();
  sub_188AF0C98();
  sub_18A4A2BF8();
}

uint64_t sub_1890A74D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_188AF0C98();
  sub_18A4A2C08();

  v5 = *(v3 + 184);
  v4 = *(v3 + 192);
  v7 = *(v3 + 216);
  v6 = *(v3 + 224);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = *(v3 + 200);
  *(a2 + 32) = v7;
  *(a2 + 40) = v6;

  v8 = v5;
}

uint64_t sub_1890A75AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_188AF0C98();
  sub_18A4A2C08();

  v5 = *(v3 + 232);
  v4 = *(v3 + 240);
  v7 = *(v3 + 264);
  v6 = *(v3 + 272);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = *(v3 + 248);
  *(a2 + 32) = v7;
  *(a2 + 40) = v6;

  v8 = v5;
}

uint64_t sub_1890A7680()
{
  swift_getKeyPath();
  sub_188AF0C98();
  sub_18A4A2BF8();
}

double sub_1890A7818@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_188AF0C98();
  sub_18A4A2C08();

  result = *(v3 + 288);
  *a2 = result;
  return result;
}

id sub_1890A78C4()
{
  v1 = *(v0 + 24);
  [*(v0 + 16) setAlpha_];

  return [v1 setAlpha_];
}

unint64_t sub_1890A7954()
{
  result = qword_1EA93BB60;
  if (!qword_1EA93BB60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA93CF20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93BB60);
  }

  return result;
}

unint64_t sub_1890A79B8()
{
  result = qword_1EA930240;
  if (!qword_1EA930240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA93BB68);
    sub_188B30D34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA930240);
  }

  return result;
}

void sub_1890A7AF4()
{
  if (!qword_1ED48CED0)
  {
    v0 = sub_18A4A7D38();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED48CED0);
    }
  }
}

uint64_t sub_1890A7B54(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[81])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1890A7B98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1890A7BF8(_BYTE *a1, uint64_t *a2)
{
  v4 = type metadata accessor for ToolbarButtonBarElement.Item(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ToolbarButtonBarElement(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  v14 = *a1;
  if (v14 != 2)
  {
    return v14 & 1;
  }

  v15 = *a2;
  v16 = *(v15 + 16);

  if (!v16)
  {
LABEL_10:
    LOBYTE(v14) = 0;
LABEL_11:

    swift_beginAccess();
    *a1 = v14;
    return v14 & 1;
  }

  v18 = 0;
  while (v18 < *(v15 + 16))
  {
    sub_188C64928(v15 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v18, v13, type metadata accessor for ToolbarButtonBarElement);
    sub_188C64928(v13, v10, type metadata accessor for ToolbarButtonBarElement);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v20 = v10[8];
      result = sub_188C64C40(v13, type metadata accessor for ToolbarButtonBarElement);
      if (v20)
      {
LABEL_9:
        LOBYTE(v14) = 1;
        goto LABEL_11;
      }
    }

    else
    {
      sub_188C648C0(v10, v6, type metadata accessor for ToolbarButtonBarElement.Item);
      v19 = *(v6 + 4);
      sub_188C64C40(v6, type metadata accessor for ToolbarButtonBarElement.Item);
      result = sub_188C64C40(v13, type metadata accessor for ToolbarButtonBarElement);
      if ((v19 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000)
      {
        goto LABEL_9;
      }
    }

    if (v16 == ++v18)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void (*sub_1890A7E84(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_18A4A4398();
  return sub_188E263E8;
}

unint64_t sub_1890A7F10()
{
  result = qword_1EA93BB70;
  if (!qword_1EA93BB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93BB70);
  }

  return result;
}

BOOL sub_1890A7F64(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_18A4A29D8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93A828);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93A820);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - v13;
  if (*a1 != *a2)
  {
    return 0;
  }

  v17 = a1[1];
  v18 = a2[1];
  if (v17 == 2)
  {
    if (v18 != 2)
    {
      return 0;
    }

    goto LABEL_9;
  }

  v15 = 0;
  if (v18 != 2 && ((v18 ^ v17) & 1) == 0)
  {
LABEL_9:
    v19 = v12;
    v20 = *(type metadata accessor for BarLayoutElement.ItemConfig(0) + 24);
    v21 = *(v19 + 48);
    sub_188A3F29C(&a1[v20], v14, &qword_1EA93A828);
    sub_188A3F29C(&a2[v20], &v14[v21], &qword_1EA93A828);
    v22 = *(v5 + 48);
    if (v22(v14, 1, v4) == 1)
    {
      if (v22(&v14[v21], 1, v4) == 1)
      {
        sub_188A3F5FC(v14, &qword_1EA93A828);
        return 1;
      }

      goto LABEL_14;
    }

    sub_188A3F29C(v14, v10, &qword_1EA93A828);
    if (v22(&v14[v21], 1, v4) == 1)
    {
      (*(v5 + 8))(v10, v4);
LABEL_14:
      sub_188A3F5FC(v14, &qword_1EA93A820);
      return 0;
    }

    (*(v5 + 32))(v7, &v14[v21], v4);
    sub_188BB0ED8(&qword_1EA930B00, MEMORY[0x1E69695A8]);
    v23 = sub_18A4A7248();
    v24 = *(v5 + 8);
    v24(v7, v4);
    v24(v10, v4);
    sub_188A3F5FC(v14, &qword_1EA93A828);
    return (v23 & 1) != 0;
  }

  return v15;
}

uint64_t sub_1890A82E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolbarButtonBarElement(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1890A8380(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1890A83C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1890A8430(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 34))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1890A8484(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

void *sub_1890A84DC(void *result, void *(*a2)(void *__return_ptr))
{
  if (!*result)
  {
    v5[3] = v2;
    v5[4] = v3;
    v4 = result;
    result = a2(v5);
    *v4 = v5[0];
  }

  return result;
}

id sub_1890A8530()
{
  v0 = objc_allocWithZone(type metadata accessor for UISnapshotInteraction());

  return [v0 init];
}

void sub_1890A85F8(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  if (Strong)
  {
    [Strong setTag_];
  }

  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    [v2 setTag_];
  }
}

void sub_1890A869C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  if (Strong)
  {
    [Strong setTag_];
  }

  v0 = swift_unknownObjectWeakLoadStrong();
  if (v0)
  {
    v1 = v0;
    [v0 setTag_];
  }
}

uint64_t sub_1890A8834()
{
  swift_getKeyPath();
  sub_188C4AE0C();
  sub_18A4A2C08();

  return *(v0 + OBJC_IVAR____TtCC5UIKit12ToolbarModel4Item__contentSeed);
}

uint64_t sub_1890A88AC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_188C4AE0C();
  sub_18A4A2C08();

  *a2 = *(v3 + OBJC_IVAR____TtCC5UIKit12ToolbarModel4Item__contentSeed);
  return result;
}

uint64_t sub_1890A8954(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtCC5UIKit12ToolbarModel4Item__contentSeed) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_188C4AE0C();
    sub_18A4A2BF8();
  }

  return result;
}

uint64_t sub_1890A8A80(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_188C4AE0C();
  sub_18A4A2C08();

  return *(v2 + *a2);
}

uint64_t sub_1890A8AF0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_188C4AE0C();
  sub_18A4A2C08();

  *a2 = *(v3 + OBJC_IVAR____TtCC5UIKit12ToolbarModel4Item__isHidden);
  return result;
}

uint64_t sub_1890A8B70(uint64_t result, void *a2)
{
  if (*(v2 + *a2) == (result & 1))
  {
    *(v2 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_188C4AE0C();
    sub_18A4A2BF8();
  }

  return result;
}

uint64_t sub_1890A8C44()
{
  swift_getKeyPath();
  sub_188C4AE0C();
  sub_18A4A2C08();

  return swift_weakLoadStrong();
}

void sub_1890A8DA0(void *a1)
{
  swift_getKeyPath();
  sub_188C4AE0C();
  sub_18A4A2C08();

  swift_getKeyPath();
  sub_18A4A2C28();

  ++*(v1 + OBJC_IVAR____TtCC5UIKit12ToolbarModel4Item__contentSeed);
  swift_getKeyPath();
  sub_18A4A2C18();

  v3 = [a1 view];
  if (v3)
  {
    v4 = v3;
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = v5;
      v7 = v4;
      [v6 setSelected_];
    }
  }
}

uint64_t sub_1890A9288(void *a1, SEL *a2, uint64_t a3, void *a4)
{
  v6 = [a1 *a2];
  swift_getKeyPath();
  sub_188C4AE0C();
  sub_18A4A2C08();

  if (v6 != *(v4 + *a4))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_18A4A2BF8();

    swift_getKeyPath();
    sub_18A4A2C08();

    result = swift_weakLoadStrong();
    if (result)
    {
      sub_188AEFC0C();
    }
  }

  return result;
}

uint64_t sub_1890A9470()
{
  swift_getKeyPath();
  sub_188BAD1EC(&qword_1ED48E310, type metadata accessor for ToolbarModel);
  sub_18A4A2C08();

  return *(v0 + 129);
}

uint64_t sub_1890A9510(uint64_t result)
{
  if (*(v1 + 129) == (result & 1))
  {
    *(v1 + 129) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_188BAD1EC(&qword_1ED48E310, type metadata accessor for ToolbarModel);
    sub_18A4A2BF8();
  }

  return result;
}

uint64_t sub_1890A9620(uint64_t result)
{
  if (*(v1 + 128) == (result & 1))
  {
    *(v1 + 128) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_188BAD1EC(&qword_1ED48E310, type metadata accessor for ToolbarModel);
    sub_18A4A2BF8();
  }

  return result;
}

double sub_1890A9730()
{
  swift_getKeyPath();
  sub_188BAD1EC(&qword_1ED48E310, type metadata accessor for ToolbarModel);
  sub_18A4A2C08();

  return *(v0 + 112);
}

void sub_1890A97D0(double a1)
{
  if (*(v1 + 112) == a1)
  {
    *(v1 + 112) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_188BAD1EC(&qword_1ED48E310, type metadata accessor for ToolbarModel);
    sub_18A4A2BF8();
  }
}

double sub_1890A98E8()
{
  swift_getKeyPath();
  sub_188BAD1EC(&qword_1ED48E310, type metadata accessor for ToolbarModel);
  sub_18A4A2C08();

  return *(v0 + 288);
}

void sub_1890A9988(double a1)
{
  if (*(v1 + 288) == a1)
  {
    *(v1 + 288) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_188BAD1EC(&qword_1ED48E310, type metadata accessor for ToolbarModel);
    sub_18A4A2BF8();
  }
}

double sub_1890A9AA0()
{
  swift_getKeyPath();
  sub_188BAD1EC(&qword_1ED48E310, type metadata accessor for ToolbarModel);
  sub_18A4A2C08();

  return *(v0 + 120);
}

void sub_1890A9B40(double a1)
{
  if (*(v1 + 120) == a1)
  {
    *(v1 + 120) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_188BAD1EC(&qword_1ED48E310, type metadata accessor for ToolbarModel);
    sub_18A4A2BF8();
  }
}

__n128 sub_1890A9C58@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_188BAD1EC(&qword_1ED48E310, type metadata accessor for ToolbarModel);
  sub_18A4A2C08();

  swift_beginAccess();
  v3 = *(v1 + 80);
  *(a1 + 32) = *(v1 + 64);
  *(a1 + 48) = v3;
  *(a1 + 64) = *(v1 + 96);
  result = *(v1 + 48);
  *a1 = *(v1 + 32);
  *(a1 + 16) = result;
  return result;
}

double sub_1890A9D24()
{
  swift_getKeyPath();
  sub_188BAD1EC(&qword_1ED48E310, type metadata accessor for ToolbarModel);
  sub_18A4A2C08();

  return *(v0 + 136);
}

void sub_1890A9DC4(double a1)
{
  if (*(v1 + 136) == a1)
  {
    *(v1 + 136) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_188BAD1EC(&qword_1ED48E310, type metadata accessor for ToolbarModel);
    sub_18A4A2BF8();
  }
}

void sub_1890A9EDC(double a1)
{
  if (*(v1 + 144) == a1)
  {
    *(v1 + 144) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_188BAD1EC(&qword_1ED48E310, type metadata accessor for ToolbarModel);
    sub_18A4A2BF8();
  }
}