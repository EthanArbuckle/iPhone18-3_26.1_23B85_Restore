uint64_t sub_29AB3F268(uint64_t a1, int a2, int *a3, int a4, int a5, double a6, double a7)
{
  v7 = 0;
  if (a4)
  {
    if (a2)
    {
      if (a5)
      {
        v8 = a7 - a6;
        if (a7 - a6 > 7.52316385e-37)
        {
          v9 = *a3;
          if (*a3 >= a2)
          {
            return 0;
          }

          v7 = 0;
          if (a7 <= 7.52316385e-37 || a6 >= 1.0 || v9 + a4 < 1)
          {
            return v7;
          }

          v10 = a4;
          v11 = a4 / a2 / v8;
          v12 = a2 / a5 * v11;
          v13 = v12;
          v14 = 1.0 / v12;
          *(a1 + 8) = v13;
          *(a1 + 12) = v14;
          if (v9 < 0)
          {
            a6 = a6 - v8 * (v9 / v10);
            *a3 = 0;
            v9 = 0;
          }

          if (a2 - a4 - v9 < 0)
          {
            a7 = (a7 - a6) * ((a2 - a4 - v9) / v10) + a7;
            a4 = a2 - v9;
          }

          if (a7 - a6 <= 7.52316385e-37)
          {
            return 0;
          }

          v15 = v11 * a6 * a2;
          *(a1 + 16) = v15;
          if (v12 > 1.0)
          {
            v16 = a5;
          }

          else
          {
            v16 = a2;
          }

          if (v16 <= (v12 < 1.0))
          {
LABEL_28:
            v28 = v16;
            if (v12 >= 1.0)
            {
              v29 = (v12 * v28 + 0.5);
            }

            else
            {
              LODWORD(v29) = v16;
              v16 = (v28 / v12 + 0.5);
            }

            *(a1 + 24) = v29;
            *(a1 + 28) = v16;
            if (v16)
            {
              v31 = v29 / v16 - v12;
            }

            else
            {
              v31 = 1.0;
            }

            if (v31 < 0.0)
            {
              v31 = -v31;
            }

            v32 = v31 < 0.0000000596046448;
          }

          else
          {
            v17 = 0;
            v18 = 0;
            v19 = vcvtd_n_u64_f64(v12, 0x19uLL);
            v20 = 0x2000000;
            v21 = 1;
            v22 = 1;
            while (1)
            {
              v23 = v20;
              v24 = v21;
              v25 = v17;
              if (v17)
              {
                v26 = v21 / v17 - v12;
                if (v26 < 0.0)
                {
                  v26 = -v26;
                }

                if (v26 < 0.0000000596046448)
                {
                  break;
                }
              }

              if (v20)
              {
                v20 = v19 % v20;
                v17 = v22 + v19 / v23 * v17;
                v21 = v18 + v19 / v23 * v21;
                v27 = v12 >= 1.0 ? v22 + v19 / v23 * v25 : v18 + v19 / v23 * v24;
                v22 = v25;
                v18 = v24;
                v19 = v23;
                if (v27 < v16)
                {
                  continue;
                }
              }

              goto LABEL_28;
            }

            *(a1 + 24) = v21;
            *(a1 + 28) = v17;
            v32 = 1;
          }

          *(a1 + 20) = v32;
          v7 = 1;
          *a1 = a5;
          *(a1 + 4) = a4;
        }
      }
    }
  }

  return v7;
}

void sub_29AB3F48C(uint64_t a1, unsigned int a2, uint64_t a3, float (*a4)(uint64_t, float), int a5, uint64_t a6, int a7, uint64_t a8, double a9)
{
  if (!a2)
  {
    v14 = *(a6 + 8);
    if (v14 >= 1.0)
    {
      if (v14 <= 1.0 && (LODWORD(a9) = *(a6 + 16), vrndp_f32(vdup_lane_s32(*&a9, 0)).f32[0] == *&a9))
      {
        a2 = 6;
      }

      else
      {
        a2 = 4;
      }
    }

    else
    {
      a2 = 5;
    }
  }

  *(a1 + 68) = a2;
  *(a1 + 72) = qword_2A2071D80[a2];
  v15 = qword_2A2071DB8[a2];
  *(a1 + 80) = v15;
  if (a3 && a4)
  {
    *(a1 + 72) = a3;
    *(a1 + 80) = a4;
    *(a1 + 68) = 7;
    v15 = a4;
  }

  *(a1 + 88) = a5;
  v16 = *(a6 + 8);
  if (v16 >= 1.0)
  {
    v17.n128_f32[0] = v15(a8, 1.0 / v16);
    v17.n128_f32[0] = v17.n128_f32[0] + v17.n128_f32[0];
  }

  else
  {
    v17.n128_f32[0] = v15(a8, *(a6 + 8));
    v17.n128_f32[0] = (v17.n128_f32[0] + v17.n128_f32[0]) / v16;
  }

  v17.n128_u64[0] = vrndp_f32(vdup_lane_s32(v17.n128_u64[0], 0));
  *(a1 + 96) = v17.n128_f32[0];
  *(a1 + 128) = 0;
  if (*(a6 + 8) >= 1.0)
  {
    *(a1 + 128) = 1;
    v17.n128_f32[0] = 1.0 / *(a1 + 40);
    *v18.i32 = (*(a1 + 80))(a8, v17);
    goto LABEL_19;
  }

  if (!a7 && v17.n128_f32[0] >= 33)
  {
    v17.n128_u32[0] = *(a1 + 40);
    *v18.i32 = (*(a1 + 80))(a8, v17);
LABEL_19:
    *v18.i32 = *v18.i32 + *v18.i32;
    goto LABEL_21;
  }

  *(a1 + 128) = 2;
  v19 = *(a1 + 40);
  *v18.i32 = (*(a1 + 80))(a8, v19);
  *v18.i32 = (*v18.i32 + *v18.i32) / v19;
LABEL_21:
  v20 = vrndp_f32(vdup_lane_s32(v18, 0)).f32[0];
  *(a1 + 92) = v20;
  v21 = *(a1 + 96);
  if (a5 == 2)
  {
    v22 = *a6;
    v23 = 3 * *a6;
    if (v21 > v23)
    {
      *(a1 + 96) = v23;
      v21 = 3 * v22;
    }

    v24 = v21 / 2;
    if (v21 / 2 >= v22)
    {
      v24 = v22;
    }
  }

  else
  {
    v24 = v21 / 2;
  }

  *(a1 + 100) = v24;
  v25 = *(a1 + 128);
  if (v25)
  {
    v26 = *(a1 + 36);
  }

  else
  {
    v26 = *(a1 + 32) + 2 * v24;
  }

  *(a1 + 104) = v26;
  *(a1 + 108) = 8 * v26;
  *(a1 + 112) = 4 * v20 * v26 + 4;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  if (!v25)
  {
    v27 = *(a1 + 36);
    *(a1 + 132) = v27;
    *(a1 + 136) = v21;
    *(a1 + 140) = 8 * v27;
    *(a1 + 144) = 4 * v21 * v27;
  }
}

float sub_29AB3F6B4(float a1, float a2)
{
  v2 = (a2 * 0.5) + 0.5;
  v3 = -a1;
  if (a1 >= 0.0)
  {
    v3 = a1;
  }

  result = 0.0;
  if (v3 < v2)
  {
    result = 1.0;
    if (v3 > (0.5 - (a2 * 0.5)))
    {
      return (v2 - v3) / a2;
    }
  }

  return result;
}

float sub_29AB3F6F4(float a1)
{
  if (a1 < 0.0)
  {
    a1 = -a1;
  }

  v1 = 1.0 - a1;
  v2 = a1 > 1.0;
  result = 0.0;
  if (!v2)
  {
    return v1;
  }

  return result;
}

float sub_29AB3F718(float a1)
{
  v1 = -a1;
  if (a1 >= 0.0)
  {
    v1 = a1;
  }

  if (v1 < 1.0)
  {
    return (((v1 * v1) * ((v1 * 3.0) + -6.0)) + 4.0) / 6.0;
  }

  result = 0.0;
  if (v1 < 2.0)
  {
    return ((v1 * ((v1 * (6.0 - v1)) + -12.0)) + 8.0) / 6.0;
  }

  return result;
}

float sub_29AB3F794(float a1)
{
  v1 = -a1;
  if (a1 >= 0.0)
  {
    v1 = a1;
  }

  if (v1 < 1.0)
  {
    return 1.0 - ((v1 * v1) * ((v1 * -1.5) + 2.5));
  }

  result = 0.0;
  if (v1 < 2.0)
  {
    return 2.0 - (v1 * ((v1 * ((v1 * 0.5) + -2.5)) + 4.0));
  }

  return result;
}

float sub_29AB3F804(float a1)
{
  v1 = -a1;
  if (a1 >= 0.0)
  {
    v1 = a1;
  }

  if (v1 >= 1.0)
  {
    result = 0.0;
    if (v1 >= 2.0)
    {
      return result;
    }

    v2 = (v1 * ((v1 * ((v1 * -7.0) + 36.0)) + -60.0)) + 32.0;
  }

  else
  {
    v2 = ((v1 * v1) * ((v1 * 21.0) + -36.0)) + 16.0;
  }

  return v2 / 18.0;
}

__n128 sub_29AB3F8C0(uint64_t a1, int a2)
{
  v2 = a1 + 28 * (a2 / 4);
  v3 = (v2 - 4 * a2);
  if (&v3[2] <= v2)
  {
    result = xmmword_29B6C2BC0;
    do
    {
      v4 = v3 + 2;
      v6 = v3[1];
      v7 = vmulq_f32(*v3, vqtbl1q_s8(*v3, xmmword_29B6C2BC0));
      *a1 = *v3;
      *(a1 + 16) = v7;
      *(a1 + 28) = v6;
      *(a1 + 44) = vmulq_f32(v6, vqtbl1q_s8(v6, xmmword_29B6C2BC0));
      a1 += 56;
      v8 = &v3[4];
      v3 += 2;
    }

    while (v8 <= v2);
  }

  else
  {
    v4 = (v2 - 4 * a2);
  }

  if (v4 < v2)
  {
    result = *v4;
    v9 = vmulq_f32(*v4, vqtbl1q_s8(*v4, xmmword_29B6C2BC0));
    *a1 = *v4;
    *(a1 + 16) = v9;
  }

  return result;
}

uint64_t sub_29AB3F954(uint64_t result, unsigned int a2)
{
  v2 = result + 4 * (((a2 + (a2 >> 31)) & 0xFFFFFFFE) + a2 / 2);
  v3 = v2 - 4 * a2;
  if (v3 + 32 <= v2)
  {
    do
    {
      v4 = (v3 + 32);
      v5 = *v3;
      v6 = *(v3 + 16);
      v7 = vmulq_f32(vqtbl1q_s8(*v3, xmmword_29B6C2BD0), vqtbl1q_s8(*v3, xmmword_29B6C2BE0));
      *result = *v3;
      *(result + 8) = v7;
      *(result + 12) = vextq_s8(v5, v5, 8uLL).u64[0];
      *(result + 24) = v6.i64[0];
      *(result + 32) = vmulq_f32(vqtbl1q_s8(v6, xmmword_29B6C2BD0), vqtbl1q_s8(v6, xmmword_29B6C2BE0));
      *(result + 36) = vextq_s8(v6, v6, 8uLL).u64[0];
      result += 48;
      v8 = v3 + 64;
      v3 += 32;
    }

    while (v8 <= v2);
  }

  else
  {
    v4 = (v2 - 4 * a2);
  }

  while (v4 < v2)
  {
    v9 = *v4;
    v10 = v4[1];
    *result = *v4;
    *(result + 4) = v10;
    *(result + 8) = v9 * v10;
    result += 12;
    v4 += 2;
  }

  return result;
}

float32x4_t *sub_29AB3FA08(float32x4_t *result, int a2)
{
  v2 = (result + 4 * a2);
  v3 = result + 1;
  do
  {
    v4 = v3[-1].f32[3];
    if (v4 >= 7.5232e-37)
    {
      *result = vmulq_n_f32(*v3, 1.0 / v4);
      result->f32[3] = v4;
    }

    else
    {
      *result = v3[-1];
    }

    ++result;
    v3 = (v3 + 28);
  }

  while (result < v2);
  return result;
}

float *sub_29AB3FA5C(float *result, int a2)
{
  v2 = &result[a2];
  v3 = result + 2;
  do
  {
    v4 = *(v3 - 1);
    *result = *(v3 - 2);
    if (v4 >= 7.5232e-37)
    {
      *result = *v3 / v4;
    }

    result[1] = v4;
    result += 2;
    v3 += 3;
  }

  while (result < v2);
  return result;
}

int32x4_t sub_29AB3FAA0(uint64_t a1, int a2)
{
  v2 = a1 + 4 * a2;
  if (a2 >= 8)
  {
    result.i32[0] = 1.0;
    do
    {
      v3 = (a1 + 32);
      v5 = *(a1 + 16);
      v6 = vdupq_laneq_s32(*a1, 3);
      v6.i32[3] = 1.0;
      v7 = vdupq_laneq_s32(v5, 3);
      v7.i32[3] = 1.0;
      *a1 = vmulq_f32(*a1, v6);
      *(a1 + 16) = vmulq_f32(v5, v7);
      v8 = a1 + 64;
      a1 += 32;
    }

    while (v8 <= v2);
  }

  else
  {
    v3 = a1;
  }

  if (v3 < v2)
  {
    v9 = vdupq_laneq_s32(*v3, 3);
    v9.i32[3] = 1.0;
    result = vmulq_f32(*v3, v9);
    *v3 = result;
  }

  return result;
}

float sub_29AB3FB10(float32x4_t *a1, int a2, int32x4_t _Q0)
{
  v3 = (a1 + 4 * a2);
  if (a2 >= 8)
  {
    __asm { FMOV            V0.4S, #1.0 }

    do
    {
      f32 = a1[2].f32;
      v9 = vmulq_f32(a1[1], vzip1q_s32(vuzp2q_s32(a1[1], _Q0), _Q0));
      *a1 = vmulq_f32(*a1, vzip1q_s32(vuzp2q_s32(*a1, _Q0), _Q0));
      a1[1] = v9;
      v10 = a1 + 4;
      a1 += 2;
    }

    while (v10 <= v3);
  }

  else
  {
    f32 = a1;
  }

  while (f32 < v3)
  {
    *_Q0.i32 = f32[1] * *f32;
    *f32 = *_Q0.i32;
    f32 += 2;
  }

  return *_Q0.i32;
}

float32x4_t *sub_29AB3FB78(float32x4_t *result, int a2)
{
  v2 = (result + 4 * a2);
  do
  {
    v3 = result->f32[3];
    if (v3 >= 7.5232e-37)
    {
      *result = vmulq_n_f32(*result, 1.0 / v3);
      result->f32[3] = v3;
    }

    ++result;
  }

  while (result < v2);
  return result;
}

float *sub_29AB3FBB8(float *result, int a2)
{
  v2 = &result[a2];
  do
  {
    v3 = result[1];
    if (v3 >= 7.5232e-37)
    {
      *result = *result / v3;
    }

    result += 2;
  }

  while (result < v2);
  return result;
}

int *sub_29AB3FBEC(int *result, int a2)
{
  v2 = &result[a2];
  if (a2 >= 12)
  {
    v3 = result + 12;
    do
    {
      v4 = *v3;
      v5 = v3[3];
      *v3 = v3[2];
      v7 = v3[5];
      v6 = v3[6];
      v9 = v3[8];
      v8 = v3[9];
      v3[2] = v4;
      v3[3] = v7;
      v10 = v3[11];
      v3[5] = v5;
      v3[6] = v9;
      v3[8] = v6;
      v3[9] = v10;
      v3[11] = v8;
      v3 += 12;
    }

    while (v3 <= v2);
    result = v3 - 12;
  }

  while (result < v2)
  {
    v11 = *result;
    *result = result[2];
    result[2] = v11;
    result += 3;
  }

  return result;
}

void sub_29AB3FC58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v7 = *(a1 + 72);
  v6 = *(a1 + 80);
  v9 = *(a1 + 40);
  v8 = *(a1 + 44);
  v10 = *(a1 + 104);
  v91 = *a1;
  v96 = *(a1 + 8);
  v11 = *(a1 + 92);
  v12 = *(a1 + 128);
  if (!v12 || v12 == 2)
  {
    v34 = *(a1 + 32);
    v6(a3, v9);
    v38 = *(v5 + 100);
    v94 = v38;
    if (!*(v5 + 128))
    {
      if (a2)
      {
        v91 = *a2;
        v96 = *(a2 + 8);
        v61 = *(a2 + 92);
        v60 = *(a2 + 104);
        *(v5 + 116) = *(a2 + 116);
        *(v5 + 124) = *(a2 + 124);
        goto LABEL_64;
      }

      v91 = *(v5 + 16);
      v96 = *(v5 + 24);
      v10 = *(v5 + 132);
      v11 = *(v5 + 136);
    }

    v79 = v11;
    v39 = -v38;
    v40 = *(v5 + 56);
    v87 = *(v5 + 36);
    v89 = v10;
    if (*(v5 + 52))
    {
      v41 = v40 < *(v5 + 36);
    }

    else
    {
      v41 = 0;
    }

    v42 = v41;
    v81 = v42;
    v82 = *(v5 + 56);
    v85 = v38 + v34;
    if (v38 + v34 > v39)
    {
      v43 = v8 * v35.n128_f32[0];
      v44 = *(a1 + 40);
      v45 = *(a1 + 48);
      v80 = v40 - 1;
      v99 = 4 * v11;
      v46 = -1;
      do
      {
        v35.n128_f32[0] = v39 + 0.5;
        *v36.i32 = ((v44 * (v35.n128_f32[0] - v43)) - v45) + 0.5;
        v36 = vrndm_f32(vdup_lane_s32(v36, 0));
        *v37.i32 = ((v44 * (v43 + v35.n128_f32[0])) - v45) + -0.5;
        v37 = vrndm_f32(vdup_lane_s32(v37, 0));
        v47 = *v37.i32;
        if (v87 <= *v37.i32)
        {
          v47 = v87 - 1;
        }

        v48 = *v36.i32 & ~(*v36.i32 >> 31);
        if (v48 <= v47)
        {
          if (v81)
          {
            if (v48 == v82)
            {
              break;
            }

            if (v47 >= v82)
            {
              v47 = v80;
            }
          }

          v49 = __OFSUB__(v47, v48);
          v50 = v47 - v48;
          if (v50 < 0 == v49)
          {
            v51 = 0;
            v52 = v45 - (v44 * v35.n128_f32[0]);
            v53 = (v50 + 1);
            v54 = vdup_n_s32(v39);
            v55 = &v91[v48];
            v56 = (v96 + v99 * v48);
            v57 = *v36.i32 & ~(*v36.i32 >> 31);
            do
            {
              v35.n128_f32[0] = v44 * v7(a3, v52 + (v57 + 0.5), v44);
              if (fabsf(v35.n128_f32[0]) < 7.5232e-37)
              {
                v35.n128_f32[0] = 0.0;
              }

              if (v57 <= v46)
              {
                if (*v56 == 0.0)
                {
                  v55->i32[0] = v39;
                  v59 = v39;
                }

                else
                {
                  v59 = v55->i32[0];
                }

                v55->i32[1] = v39;
                v58 = v96 + (v51 + v48) * v79 + v39 - v59;
              }

              else
              {
                *v55 = v54;
                v58 = v56;
                v46 = v57;
              }

              ++v51;
              *v58 = v35.n128_f32[0];
              ++v57;
              ++v55;
              v56 = (v56 + v99);
              --v53;
            }

            while (v53);
          }
        }

        ++v39;
      }

      while (v39 != v85);
    }

    v60 = v89;
    v61 = v79;
    sub_29AB40358(*(a1 + 88), (a1 + 116), (a1 + 32), v89, v91, v96, v79, v35);
    if (*(a1 + 128))
    {
      return;
    }

LABEL_64:
    v62 = v94;
    v63 = ~v94;
    v90 = v60;
    if (v60 >= 1)
    {
      v64 = 0;
      v65 = v91;
      do
      {
        v66 = v65->i32[0];
        v67 = v65->i32[1];
        v92 = v65;
        if (v65->i32[0] <= v67)
        {
          v68 = v96;
          v69 = (*a1 + 8 * (v66 + v62));
          v70 = *(a1 + 92);
          v71 = (*(a1 + 8) + 4 * v70 * (v66 + v62));
          v62 = v94;
          do
          {
            v72 = v68->n128_f32[0];
            v68 = (v68 + 4);
            v73 = v72;
            if (fabsf(v72) >= 7.5232e-37)
            {
              if (v66 <= v63 && *v69 <= v69[1])
              {
                sub_29AB407E8(v69, v71, v64, v73);
                v62 = v94;
              }

              else
              {
                for (i = (*a1 + 8 * (v63 + v62) + 8); i < v69; i += 2)
                {
                  *i = 0xFFFFFFFF00000000;
                }

                *v69 = v64;
                v69[1] = v64;
                v63 = v66;
                *v71 = v73;
              }
            }

            v69 += 2;
            v71 += v70;
          }

          while (v66++ != v67);
        }

        v65 = v92 + 1;
        v96 = (v96 + 4 * v61);
        ++v64;
      }

      while (v64 != v90);
    }

    v76 = *a1 + 8 * *(a1 + 104);
    for (j = (*a1 + 8 * (v63 + v62) + 8); j < v76; ++j)
    {
      *j = 0xFFFFFFFF00000000;
    }

    return;
  }

  if (v12 == 1)
  {
    v6(a3, v8);
    v15 = *(v5 + 56);
    if (v15 >= v10)
    {
      v15 = v10;
    }

    if (!*(v5 + 52))
    {
      v15 = v10;
    }

    v16 = *(v5 + 88);
    v98 = v15;
    if (v15 >= 1)
    {
      v17 = 0;
      v78 = v11;
      v93 = v11;
      v18 = v9 * v13.n128_f32[0];
      v19 = *(v5 + 44);
      v20 = *(v5 + 48);
      v21 = *(v5 + 32);
      v86 = -v21;
      v88 = v10;
      v84 = 2 * v21;
      v83 = 2 * v21 - 1;
      v22 = v91;
      v23 = v96;
      v95 = v16;
      while (1)
      {
        v13.n128_f32[0] = v17 + 0.5;
        *v14.i32 = (v19 * (v20 + (v13.n128_f32[0] - v18))) + 0.5;
        v24 = vrndm_f32(vdup_lane_s32(v14, 0));
        v25 = *v24.i32;
        *v24.i32 = (v19 * (v20 + (v18 + v13.n128_f32[0]))) + -0.5;
        v14 = vrndm_f32(vdup_lane_s32(v24, 0));
        v26 = v86;
        if (v25 > v86)
        {
          v26 = v25;
        }

        v27 = v83;
        if (v84 > *v14.i32)
        {
          v27 = *v14.i32;
        }

        v28 = v16 == 2 ? v27 : *v14.i32;
        v29 = v16 == 2 ? v26 : v25;
        if (v28 >= v29)
        {
          break;
        }

        LODWORD(v30) = -1;
LABEL_22:
        v22->i32[0] = v29;
        v22->i32[1] = v30 + v29;
        ++v22;
        v23 = (v23 + 4 * v93);
        ++v17;
        v16 = v95;
        if (v17 == v98)
        {
          v5 = a1;
          v16 = *(a1 + 88);
          v10 = v88;
          v11 = v78;
          goto LABEL_82;
        }
      }

      v31 = 0;
      v32 = v19 * (v20 + v13.n128_f32[0]);
      v30 = 0xFFFFFFFFLL;
      while (1)
      {
        v13.n128_f32[0] = v7(a3, v32 - ((v29 + v31) + 0.5), v19);
        v33 = v31;
        if (fabsf(v13.n128_f32[0]) < 7.5232e-37)
        {
          v13.n128_u64[0] = 0;
          if (!v31)
          {
            ++v29;
            goto LABEL_29;
          }

          v33 = v30;
        }

        v23->n128_u32[v31] = v13.n128_u32[0];
        v31 = (v31 + 1);
        v30 = v33;
LABEL_29:
        if (v31 > v28 - v29)
        {
          goto LABEL_22;
        }
      }
    }

LABEL_82:

    sub_29AB40358(v16, (v5 + 116), (v5 + 32), v10, v91, v96, v11, v13);
  }
}

unint64_t sub_29AB402A4(unint64_t result, char *a2, unint64_t a3)
{
  v3 = (result + a3);
  v4 = &a2[-result];
  if (a3 > 0x3F)
  {
    v5 = *(a2 + 1);
    v6 = *(a2 + 2);
    v7 = *(a2 + 3);
    *result = *a2;
    *(result + 16) = v5;
    *(result + 32) = v6;
    *(result + 48) = v7;
    for (i = ((result & 0xFFFFFFFFFFFFFFC0) + 64); ; i += 4)
    {
      if (i > v3 - 4)
      {
        v9 = i == v3;
        i = v3 - 4;
        if (v9)
        {
          break;
        }
      }

      v10 = *(i + v4 + 16);
      v11 = *(i + v4 + 32);
      v12 = *(i + v4 + 48);
      *i = *(i + v4);
      i[1] = v10;
      i[2] = v11;
      i[3] = v12;
    }
  }

  else if (a3 > 0xF)
  {
    *result = *a2;
    for (j = ((result & 0xFFFFFFFFFFFFFFF0) + 16); ; ++j)
    {
      if (j > v3 - 1)
      {
        v9 = j == v3;
        j = v3 - 1;
        if (v9)
        {
          break;
        }
      }

      *j = *(j + v4);
    }
  }

  else if (a3)
  {
    do
    {
      *result = *(result + v4);
      ++result;
    }

    while (result < v3);
  }

  return result;
}

void sub_29AB40358(unsigned int a1, int *a2, unsigned int *a3, int a4, int32x2_t *a5, __n128 *a6, uint64_t a7, __n128 a8)
{
  v8 = a7;
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v13 = *a3;
  v15 = a3[6];
  v14 = a3[7];
  v16 = a3[5] != 0 && a4 > v15;
  if (v16)
  {
    v17 = a3[6];
  }

  else
  {
    v17 = a4;
  }

  if (v17 >= 1)
  {
    v18 = 0;
    a8.n128_u64[0] = 1.0;
    v19 = a6;
    v20 = a5;
    do
    {
      v21 = v20->i32[1];
      v22 = __OFSUB__(v21, v20->i32[0]);
      v23 = v21 - v20->i32[0];
      if (v23 < 0 != v22)
      {
        goto LABEL_10;
      }

      v24 = 0;
      v25 = (v23 + 1);
      v26 = 0.0;
      do
      {
        v26 = v26 + v19->n128_f32[v24++];
      }

      while (v25 != v24);
      if (fabs(v26) < 7.52316385e-37)
      {
LABEL_10:
        v20->i32[1] = v20->i32[0];
        v19->n128_u32[0] = 0;
      }

      else if (v26 != 1.0)
      {
        v27 = 0;
        v28 = 1.0 / v26;
        do
        {
          v29 = v28 * v19->n128_f32[v27];
          v19->n128_f32[v27++] = v29;
        }

        while (v25 != v27);
      }

      ++v20;
      v19 = (v19 + 4 * a7);
      ++v18;
    }

    while (v18 != v17);
  }

  if (v16)
  {
    a8.n128_u64[0] = vdup_n_s32(v14);
    v30 = a4 - v15;
    v31 = a5;
    do
    {
      v31[v15] = vadd_s32(*v31, a8.n128_u64[0]);
      ++v31;
      --v30;
    }

    while (v30);
    v32 = v15 * a7;
    v33 = (a4 - v15) * a7;
    v34 = v15 * a7;
    v35 = a6;
    if (v32 < 4)
    {
      goto LABEL_24;
    }

    v36 = 4 * v33;
    v37 = a6->n128_u64 + (v36 & 0xFFFFFFFFFFFFFFF0);
    v35 = a6;
    do
    {
      a8 = *v35;
      *(v35 + v34 * 4) = *v35;
      ++v35;
      v36 -= 16;
    }

    while (v35 < v37);
    if (v36)
    {
LABEL_24:
      v38 = a6->n128_u64 + 4 * v33;
      do
      {
        v35->n128_u32[v34] = v35->n128_u32[0];
        v35 = (v35 + 4);
      }

      while (v35 < v38);
    }
  }

  if (a4 < 1)
  {
    v80 = 0x7FFFFFFF;
    v81 = -2147483647;
    v82 = -1;
  }

  else
  {
    v39 = 0;
    v40 = 4 * a7;
    v81 = -2147483647;
    v82 = -1;
    v79 = v13 - 1;
    v80 = 0x7FFFFFFF;
    v78 = v40;
    do
    {
      if (a1 == 3)
      {
        v41 = v10[1];
        if (v41 >= v13)
        {
          v41 = v13 - 1;
          v10[1] = v79;
        }

        v42 = *v10;
        if (*v10 < 0)
        {
          *v10 = 0;
          if ((v41 & 0x80000000) == 0)
          {
            v43 = 0;
            v44 = v41 + 1;
            v45 = -v42;
            do
            {
              a8.n128_f32[0] = v9[v45];
              v9[v43] = a8.n128_f32[0];
              ++v45;
              ++v43;
            }

            while (v44 != v43);
          }
        }
      }

      else if (a1 <= 1)
      {
        v46 = v8;
        v47 = v10[1];
        if (v47 >= v13)
        {
          v48 = *v10;
          v10[1] = v79;
          v49 = off_2A2071EB0[a1];
          v50 = v47 + 1;
          v51 = 4 * v13 - 4 * v48;
          v52 = v13;
          do
          {
            v53 = (v49)(v52, v13, a8);
            sub_29AB407E8(v10, v9, v53, *(v9 + v51));
            v51 += 4;
            v52 = (v52 + 1);
          }

          while (v50 != v52);
        }

        v54 = *v10;
        v8 = v46;
        v11 = a4;
        v40 = v78;
        if (*v10 < 0)
        {
          v55 = &v9[~v54];
          if (v54 == -1)
          {
            v60 = 0xFFFFFFFFLL;
          }

          else
          {
            v56 = off_2A2071EB0[a1];
            v57 = 0xFFFFFFFFLL;
            do
            {
              v58 = (v56)(v57, v13, a8);
              v59 = *v55--;
              sub_29AB407E8(v10, v9, v58, v59);
              v57 = (v57 - 1);
              v60 = *v10;
            }

            while (v57 > v60);
            v40 = v78;
          }

          v61 = *v55;
          *v10 = 0;
          v62 = v10[1];
          if ((v62 & 0x80000000) == 0)
          {
            v63 = 0;
            do
            {
              v9[v63 / 4] = v9[v63 / 4 - v60];
              v63 += 4;
            }

            while (4 * v62 + 4 != v63);
          }

          v64 = (off_2A2071EB0[a1])(v60, v13);
          sub_29AB407E8(v10, v9, v64, v61);
        }
      }

      v65 = *v10;
      v66 = v10[1];
      v67 = v66 - *v10;
      if (v66 >= *v10)
      {
        v68 = v67 + 1 - 1;
        v69 = v67 + 2;
        v70 = v66 + 1;
        do
        {
          if (v68 == -1)
          {
            v69 = 0;
            v10[1] = v65 - 1;
            goto LABEL_67;
          }

          a8.n128_f32[0] = v9[v68--];
          --v69;
          --v70;
        }

        while (a8.n128_f32[0] == 0.0);
        v10[1] = v70;
        v71 = v68 + 2;
        v73 = v80;
        v72 = v81;
        if (v65 >= v80)
        {
          v65 = v80;
        }

        if (v70 <= v81)
        {
          v70 = v81;
        }

        v74 = v82;
        if (v69 <= v82)
        {
          v75 = v82;
        }

        else
        {
          v75 = v69;
        }

        if (v71 >= 1)
        {
          v74 = v75;
          v72 = v70;
        }

        v81 = v72;
        v82 = v74;
        if (v71 >= 1)
        {
          v73 = v65;
        }

        v80 = v73;
LABEL_67:
        if (v69 < v8)
        {
          bzero(&v9[v69], 4 * (~v69 + v8) + 4);
        }
      }

      v10 += 2;
      v9 = (v9 + v40);
      ++v39;
    }

    while (v39 != v11);
  }

  *a2 = v80;
  a2[1] = v81;
  a2[2] = v82;
}

void sub_29AB407E8(int *a1, float *a2, int a3, float a4)
{
  v9 = *a1;
  v8 = a1[1];
  if (v8 >= a3)
  {
    if (a3 >= v9)
    {
      a2[a3 - v9] = a2[a3 - v9] + a4;
    }

    else
    {
      if (v8 - v9 < 1)
      {
        v14 = 4 * v8;
        v15 = (a2 + 4 * v8 - 4 * a3);
        for (i = (a2 + v14 - 4 * v9); ; --i)
        {
          v17 = *i;
          *v15-- = v17;
        }
      }

      if (v9 - a3 > 1)
      {
        v12 = a2 + 1;
          ;
        }
      }

      *a2 = a4;
      *a1 = a3;
    }
  }

  else
  {
    v10 = a3 - v9;
    v11 = v8 - v9 + 1;
    if (v11 < v10)
    {
      bzero(&a2[v11], 4 * (a3 - v8 - 2) + 4);
    }

    a2[v10] = a4;
    a1[1] = a3;
  }
}

uint64_t sub_29AB408D0(int a1, int a2)
{
  v2 = a2 - 1;
  if (a1 < a2)
  {
    v2 = a1;
  }

  if (a1 >= 0)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29AB408E8(int a1, int a2)
{
  if (2 * a2 <= a1)
  {
    v2 = 0;
  }

  else
  {
    v2 = ~a1 + 2 * a2;
  }

  if (a1 < a2)
  {
    v2 = a1;
  }

  if (-a2 < a1)
  {
    v3 = -a1;
  }

  else
  {
    v3 = a2 - 1;
  }

  if (a1 < 0)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_29AB40920(int a1, int a2)
{
  v2 = a1 % a2 + a2;
  if (!(a1 % a2))
  {
    v2 = 0;
  }

  if (a1 >= 0)
  {
    return (a1 % a2);
  }

  else
  {
    return v2;
  }
}

_DWORD *sub_29AB40948(_DWORD *result, int a2, uint64_t a3, int *a4, float32x4_t *a5, int a6)
{
  v6 = a5 + 1;
  v7 = &result[a2];
  do
  {
    v8 = *a4;
    v9 = vmulq_f32(*a5, *(a3 + 4 * v8));
    v10 = ((a4[1] - v8) >> 2) + 1;
    v11 = (a3 + 16 + 4 * v8);
    v12 = v6;
    do
    {
      v13 = *v12++;
      v14 = v13;
      v15 = *v11++;
      v9 = vaddq_f32(v9, vmulq_f32(v14, v15));
      --v10;
    }

    while (v10 > 1);
    v16 = vaddq_f32(v9, vqtbl1q_s8(v9, xmmword_29B6C2BF0));
    *result++ = vaddq_f32(v16, vqtbl1q_s8(v16, xmmword_29B6C2C00)).u32[0];
    a5 = (a5 + 4 * a6);
    a4 += 2;
    v6 = (v6 + 4 * a6);
  }

  while (result < v7);
  return result;
}

_DWORD *sub_29AB409E0(_DWORD *result, int a2, uint64_t a3, int *a4, float32x4_t *a5, int a6)
{
  v6 = a5 + 1;
  v7 = &result[a2];
  do
  {
    v8 = *a4;
    v9 = vmulq_f32(*a5, *(a3 + 4 * v8));
    v10 = ((a4[1] + ~v8) >> 2) + 1;
    v11 = (a3 + 16 + 4 * v8);
    v12 = v6;
    do
    {
      v13 = *v12++;
      v14 = v13;
      v15 = *v11;
      v11 += 4;
      v16 = vmulq_f32(v14, v15);
      v9 = vaddq_f32(v9, v16);
      --v10;
    }

    while (v10 > 1);
    v16.i32[0] = v12->i32[0];
    v17 = vaddq_f32(v9, vmulq_n_f32(v16, *v11));
    v18 = vaddq_f32(v17, vqtbl1q_s8(v17, xmmword_29B6C2BF0));
    *result++ = vaddq_f32(v18, vqtbl1q_s8(v18, xmmword_29B6C2C00)).u32[0];
    a5 = (a5 + 4 * a6);
    a4 += 2;
    v6 = (v6 + 4 * a6);
  }

  while (result < v7);
  return result;
}

_DWORD *sub_29AB40A8C(_DWORD *result, int a2, uint64_t a3, int *a4, float32x4_t *a5, int a6)
{
  v6 = &a5[1];
  v7 = &result[a2];
  do
  {
    v8 = *a4;
    v9 = vmulq_f32(*a5, *(a3 + 4 * v8));
    v10 = ((a4[1] - v8 - 2) >> 2) + 1;
    v11 = (a3 + 16 + 4 * v8);
    v12 = v6;
    do
    {
      v13 = *v12->f32;
      v12 += 2;
      v14 = v13;
      v15 = *v11->f32;
      v11 += 2;
      v16 = vmulq_f32(v14, v15);
      v9 = vaddq_f32(v9, v16);
      --v10;
    }

    while (v10 > 1);
    *v16.f32 = vmul_f32(*v12, *v11);
    v17 = vaddq_f32(v9, v16);
    v18 = vaddq_f32(v17, vqtbl1q_s8(v17, xmmword_29B6C2BF0));
    *result++ = vaddq_f32(v18, vqtbl1q_s8(v18, xmmword_29B6C2C00)).u32[0];
    a5 = (a5 + 4 * a6);
    a4 += 2;
    v6 = (v6 + 4 * a6);
  }

  while (result < v7);
  return result;
}

_DWORD *sub_29AB40B38(_DWORD *result, int a2, uint64_t a3, int *a4, float32x4_t *a5, int a6)
{
  v6 = a5 + 1;
  v7 = &result[a2];
  do
  {
    v8 = *a4;
    v9 = vmulq_f32(*a5, *(a3 + 4 * v8));
    v10 = ((a4[1] - v8 - 3) >> 2) + 1;
    v11 = (a3 + 16 + 4 * v8);
    v12 = v6;
    do
    {
      v13 = *v12++;
      v14 = v13;
      v15 = *v11++;
      v9 = vaddq_f32(v9, vmulq_f32(v14, v15));
      --v10;
    }

    while (v10 > 1);
    v16 = *v12;
    v16.i32[3] = 0;
    v17 = vaddq_f32(v9, vmulq_f32(*v11, v16));
    v18 = vaddq_f32(v17, vqtbl1q_s8(v17, xmmword_29B6C2BF0));
    *result++ = vaddq_f32(v18, vqtbl1q_s8(v18, xmmword_29B6C2C00)).u32[0];
    a5 = (a5 + 4 * a6);
    a4 += 2;
    v6 = (v6 + 4 * a6);
  }

  while (result < v7);
  return result;
}

float32x2_t *sub_29AB40BE8(float32x2_t *result, int a2, uint64_t a3, _DWORD *a4, int8x16_t *a5, int a6)
{
  v6 = (result + 4 * (2 * a2));
  do
  {
    v7 = 2 * *a4;
    v8 = (a3 + 4 * v7);
    v9 = vmulq_f32(*v8, vqtbl1q_s8(*a5, xmmword_29B6C2C10));
    v10 = vmulq_f32(v8[1], vqtbl1q_s8(*a5, xmmword_29B6C2C20));
    v11 = ((a4[1] - *a4) >> 2) + 1;
    v12 = (a3 + 32 + 4 * v7);
    v13 = 1;
    do
    {
      v14 = a5[v13];
      v15 = *v12;
      v16 = v12[1];
      v12 += 2;
      v9 = vaddq_f32(v9, vmulq_f32(v15, vqtbl1q_s8(v14, xmmword_29B6C2C10)));
      v10 = vaddq_f32(v10, vmulq_f32(v16, vqtbl1q_s8(v14, xmmword_29B6C2C20)));
      ++v13;
      --v11;
    }

    while (v11 > 1);
    v17 = vaddq_f32(v9, v10);
    *result++ = vadd_f32(*v17.i8, *&vqtbl1q_s8(v17, xmmword_29B6C2BF0));
    a5 = (a5 + 4 * a6);
    a4 += 2;
  }

  while (result < v6);
  return result;
}

float32x2_t *sub_29AB40C9C(float32x2_t *result, int a2, uint64_t a3, _DWORD *a4, int8x16_t *a5, int a6)
{
  v6 = (result + 4 * (2 * a2));
  do
  {
    v7 = 2 * *a4;
    v8 = (a3 + 4 * v7);
    v9 = vmulq_f32(*v8, vqtbl1q_s8(*a5, xmmword_29B6C2C10));
    v10 = vmulq_f32(v8[1], vqtbl1q_s8(*a5, xmmword_29B6C2C20));
    v11 = ((a4[1] + ~*a4) >> 2) + 1;
    v12 = (a3 + 32 + 4 * v7);
    v13 = 1;
    do
    {
      v14 = a5[v13];
      v15 = *v12;
      v16 = v12[1];
      v12 += 2;
      v17 = vmulq_f32(v15, vqtbl1q_s8(v14, xmmword_29B6C2C10));
      v9 = vaddq_f32(v9, v17);
      v18 = vmulq_f32(v16, vqtbl1q_s8(v14, xmmword_29B6C2C20));
      v10 = vaddq_f32(v10, v18);
      ++v13;
      --v11;
    }

    while (v11 > 1);
    v18.i32[0] = a5[v13].i32[0];
    v17.i64[0] = v12->i64[0];
    v19 = vaddq_f32(v10, vaddq_f32(v9, vmulq_f32(v17, vqtbl1q_s8(v18, xmmword_29B6C2C10))));
    *result++ = vadd_f32(*v19.i8, *&vqtbl1q_s8(v19, xmmword_29B6C2BF0));
    a5 = (a5 + 4 * a6);
    a4 += 2;
  }

  while (result < v6);
  return result;
}

float32x2_t *sub_29AB40D6C(float32x2_t *result, int a2, uint64_t a3, _DWORD *a4, int8x16_t *a5, int a6)
{
  v6 = (result + 4 * (2 * a2));
  do
  {
    v7 = 2 * *a4;
    v8 = (a3 + 4 * v7);
    v9 = vmulq_f32(*v8, vqtbl1q_s8(*a5, xmmword_29B6C2C10));
    v10 = vmulq_f32(v8[1], vqtbl1q_s8(*a5, xmmword_29B6C2C20));
    v11 = ((a4[1] - *a4 - 2) >> 2) + 1;
    v12 = a3 + 32 + 4 * v7;
    v13 = 1;
    do
    {
      v14 = a5[v13];
      v15 = *v12;
      v16 = *(v12 + 16);
      v12 += 32;
      v9 = vaddq_f32(v9, vmulq_f32(v15, vqtbl1q_s8(v14, xmmword_29B6C2C10)));
      v17 = vmulq_f32(v16, vqtbl1q_s8(v14, xmmword_29B6C2C20));
      v10 = vaddq_f32(v10, v17);
      ++v13;
      --v11;
    }

    while (v11 > 1);
    v17.i64[0] = a5[v13].i64[0];
    v18 = vaddq_f32(v10, vaddq_f32(v9, vmulq_f32(*v12, vqtbl1q_s8(v17, xmmword_29B6C2C10))));
    *result++ = vadd_f32(*v18.i8, *&vqtbl1q_s8(v18, xmmword_29B6C2BF0));
    a5 = (a5 + 4 * a6);
    a4 += 2;
  }

  while (result < v6);
  return result;
}

float32x2_t *sub_29AB40E38(float32x2_t *result, int a2, uint64_t a3, _DWORD *a4, int8x16_t *a5, int a6)
{
  v6 = (result + 4 * (2 * a2));
  do
  {
    v7 = 2 * *a4;
    v8 = (a3 + 4 * v7);
    v9 = vmulq_f32(*v8, vqtbl1q_s8(*a5, xmmword_29B6C2C10));
    v10 = vmulq_f32(v8[1], vqtbl1q_s8(*a5, xmmword_29B6C2C20));
    v11 = ((a4[1] - *a4 - 3) >> 2) + 1;
    v12 = a3 + 32 + 4 * v7;
    v13 = 1;
    do
    {
      v14 = a5[v13];
      v15 = *v12;
      v16 = *(v12 + 16);
      v12 += 32;
      v9 = vaddq_f32(v9, vmulq_f32(v15, vqtbl1q_s8(v14, xmmword_29B6C2C10)));
      v10 = vaddq_f32(v10, vmulq_f32(v16, vqtbl1q_s8(v14, xmmword_29B6C2C20)));
      ++v13;
      --v11;
    }

    while (v11 > 1);
    v17 = a5[v13];
    v18 = vmulq_f32(*v12, vqtbl1q_s8(v17, xmmword_29B6C2C10));
    v19 = vaddq_f32(v9, v18);
    v18.i64[0] = *(v12 + 16);
    v20 = vaddq_f32(v19, vaddq_f32(v10, vmulq_f32(v18, vqtbl1q_s8(v17, xmmword_29B6C2C30))));
    *result++ = vadd_f32(*v20.i8, *&vqtbl1q_s8(v20, xmmword_29B6C2BF0));
    a5 = (a5 + 4 * a6);
    a4 += 2;
  }

  while (result < v6);
  return result;
}

double sub_29AB40F1C(int8x16_t *a1, int a2, uint64_t a3, _DWORD *a4, int8x16_t *a5, int a6)
{
  v6 = a1 + 4 * (3 * a2);
  while (1)
  {
    v7 = 3 * *a4;
    v8 = (a3 + 4 * v7);
    v9 = vmulq_f32(*v8, vqtbl1q_s8(*a5, xmmword_29B6C2C40));
    v10 = vmulq_f32(v8[1], vqtbl1q_s8(*a5, xmmword_29B6C2C50));
    v11 = vmulq_f32(v8[2], vqtbl1q_s8(*a5, xmmword_29B6C2C60));
    v12 = ((a4[1] - *a4) >> 2) + 1;
    v13 = (a3 + 48 + 4 * v7);
    v14 = 1;
    do
    {
      v15 = a5[v14];
      v9 = vaddq_f32(v9, vmulq_f32(*v13, vqtbl1q_s8(v15, xmmword_29B6C2C40)));
      v10 = vaddq_f32(v10, vmulq_f32(v13[1], vqtbl1q_s8(v15, xmmword_29B6C2C50)));
      v11 = vaddq_f32(v11, vmulq_f32(v13[2], vqtbl1q_s8(v15, xmmword_29B6C2C60)));
      ++v14;
      --v12;
      v13 += 3;
    }

    while (v12 > 1);
    v16 = vaddq_f32(vaddq_f32(v9, vextq_s8(v10, v11, 8uLL)), vaddq_f32(vextq_s8(v9, v10, 0xCuLL), vqtbl1q_s8(v11, xmmword_29B6C2C00)));
    if (&a1->u64[1] + 4 >= v6)
    {
      break;
    }

    a4 += 2;
    a5 = (a5 + 4 * a6);
    *a1 = v16;
    a1 = (a1 + 12);
  }

  *&result = vqtbl1q_s8(v16, xmmword_29B6C2BF0).u64[0];
  a1->i64[0] = v16.i64[0];
  a1->i32[2] = LODWORD(result);
  return result;
}

double sub_29AB41024(int8x16_t *a1, int a2, uint64_t a3, _DWORD *a4, int8x16_t *a5, int a6)
{
  v6 = a1 + 4 * (3 * a2);
  while (1)
  {
    v7 = 3 * *a4;
    v8 = (a3 + 4 * v7);
    v9 = vmulq_f32(*v8, vqtbl1q_s8(*a5, xmmword_29B6C2C40));
    v10 = vmulq_f32(v8[1], vqtbl1q_s8(*a5, xmmword_29B6C2C50));
    v11 = vmulq_f32(v8[2], vqtbl1q_s8(*a5, xmmword_29B6C2C60));
    v12 = ((a4[1] + ~*a4) >> 2) + 1;
    v13 = (a3 + 48 + 4 * v7);
    v14 = 1;
    do
    {
      v15 = a5[v14];
      v9 = vaddq_f32(v9, vmulq_f32(*v13, vqtbl1q_s8(v15, xmmword_29B6C2C40)));
      v10 = vaddq_f32(v10, vmulq_f32(v13[1], vqtbl1q_s8(v15, xmmword_29B6C2C50)));
      v16 = vmulq_f32(v13[2], vqtbl1q_s8(v15, xmmword_29B6C2C60));
      v11 = vaddq_f32(v11, v16);
      ++v14;
      --v12;
      v13 += 3;
    }

    while (v12 > 1);
    v16.i32[0] = a5[v14].i32[0];
    v17 = vaddq_f32(v9, vmulq_f32(*v13, vqtbl1q_s8(v16, xmmword_29B6C2C40)));
    v18 = vaddq_f32(vaddq_f32(vextq_s8(v10, v11, 8uLL), v17), vaddq_f32(vextq_s8(v17, v10, 0xCuLL), vqtbl1q_s8(v11, xmmword_29B6C2C00)));
    if (&a1->u64[1] + 4 >= v6)
    {
      break;
    }

    a4 += 2;
    a5 = (a5 + 4 * a6);
    *a1 = v18;
    a1 = (a1 + 12);
  }

  *&result = vqtbl1q_s8(v18, xmmword_29B6C2BF0).u64[0];
  a1->i64[0] = v18.i64[0];
  a1->i32[2] = LODWORD(result);
  return result;
}

double sub_29AB4114C(int8x16_t *a1, int a2, uint64_t a3, _DWORD *a4, int8x16_t *a5, int a6)
{
  v6 = a1 + 4 * (3 * a2);
  while (1)
  {
    v7 = 3 * *a4;
    v8 = (a3 + 4 * v7);
    v9 = vmulq_f32(*v8, vqtbl1q_s8(*a5, xmmword_29B6C2C40));
    v10 = vmulq_f32(v8[1], vqtbl1q_s8(*a5, xmmword_29B6C2C50));
    v11 = vmulq_f32(v8[2], vqtbl1q_s8(*a5, xmmword_29B6C2C60));
    v12 = ((a4[1] - *a4 - 2) >> 2) + 1;
    v13 = (a3 + 48 + 4 * v7);
    v14 = 1;
    do
    {
      v15 = a5[v14];
      v9 = vaddq_f32(v9, vmulq_f32(*v13, vqtbl1q_s8(v15, xmmword_29B6C2C40)));
      v10 = vaddq_f32(v10, vmulq_f32(v13[1], vqtbl1q_s8(v15, xmmword_29B6C2C50)));
      v16 = vmulq_f32(v13[2], vqtbl1q_s8(v15, xmmword_29B6C2C60));
      v11 = vaddq_f32(v11, v16);
      ++v14;
      --v12;
      v13 += 3;
    }

    while (v12 > 1);
    v16.i64[0] = a5[v14].i64[0];
    v17 = vmulq_f32(*v13, vqtbl1q_s8(v16, xmmword_29B6C2C40));
    v18 = vaddq_f32(v9, v17);
    v17.i64[0] = v13[1].i64[0];
    v19 = vaddq_f32(v10, vmulq_f32(v17, vqtbl1q_s8(v16, xmmword_29B6C2C50)));
    v20 = vaddq_f32(vaddq_f32(v18, vextq_s8(v19, v11, 8uLL)), vaddq_f32(vextq_s8(v18, v19, 0xCuLL), vqtbl1q_s8(v11, xmmword_29B6C2C00)));
    if (&a1->u64[1] + 4 >= v6)
    {
      break;
    }

    a4 += 2;
    a5 = (a5 + 4 * a6);
    *a1 = v20;
    a1 = (a1 + 12);
  }

  *&result = vqtbl1q_s8(v20, xmmword_29B6C2BF0).u64[0];
  a1->i64[0] = v20.i64[0];
  a1->i32[2] = LODWORD(result);
  return result;
}

double sub_29AB41280(int8x16_t *a1, int a2, uint64_t a3, _DWORD *a4, int8x16_t *a5, int a6)
{
  v6 = a1 + 4 * (3 * a2);
  while (1)
  {
    v7 = 3 * *a4;
    v8 = (a3 + 4 * v7);
    v9 = vmulq_f32(*v8, vqtbl1q_s8(*a5, xmmword_29B6C2C40));
    v10 = vmulq_f32(v8[1], vqtbl1q_s8(*a5, xmmword_29B6C2C50));
    v11 = vmulq_f32(v8[2], vqtbl1q_s8(*a5, xmmword_29B6C2C60));
    v12 = ((a4[1] - *a4 - 3) >> 2) + 1;
    v13 = (a3 + 48 + 4 * v7);
    v14 = 1;
    do
    {
      v15 = a5[v14];
      v9 = vaddq_f32(v9, vmulq_f32(*v13, vqtbl1q_s8(v15, xmmword_29B6C2C40)));
      v10 = vaddq_f32(v10, vmulq_f32(v13[1], vqtbl1q_s8(v15, xmmword_29B6C2C50)));
      v11 = vaddq_f32(v11, vmulq_f32(v13[2], vqtbl1q_s8(v15, xmmword_29B6C2C60)));
      ++v14;
      --v12;
      v13 += 3;
    }

    while (v12 > 1);
    v16 = a5[v14];
    v17 = vaddq_f32(v9, vmulq_f32(*v13, vqtbl1q_s8(v16, xmmword_29B6C2C40)));
    v18 = vmulq_f32(v13[1], vqtbl1q_s8(v16, xmmword_29B6C2C50));
    v19 = vaddq_f32(v10, v18);
    v18.i32[0] = v13[2].i32[0];
    v20 = vaddq_f32(v11, vmulq_f32(v18, vqtbl1q_s8(v16, xmmword_29B6C2C30)));
    v21 = vaddq_f32(vaddq_f32(vextq_s8(v17, v19, 0xCuLL), vqtbl1q_s8(v20, xmmword_29B6C2C00)), vaddq_f32(v17, vextq_s8(v19, v20, 8uLL)));
    if (&a1->u64[1] + 4 >= v6)
    {
      break;
    }

    a4 += 2;
    a5 = (a5 + 4 * a6);
    *a1 = v21;
    a1 = (a1 + 12);
  }

  *&result = vqtbl1q_s8(v21, xmmword_29B6C2BF0).u64[0];
  a1->i64[0] = v21.i64[0];
  a1->i32[2] = LODWORD(result);
  return result;
}

float32x4_t *sub_29AB413C8(float32x4_t *result, int a2, uint64_t a3, _DWORD *a4, int8x16_t *a5, int a6)
{
  v6 = (result + 4 * (4 * a2));
  do
  {
    v7 = 4 * *a4;
    v8 = (a3 + 4 * v7);
    v9 = vaddq_f32(vmulq_f32(*v8, vqtbl1q_s8(*a5, xmmword_29B6C2C70)), vmulq_f32(v8[2], vqtbl1q_s8(*a5, xmmword_29B6C2C30)));
    v10 = vaddq_f32(vmulq_f32(v8[1], vqtbl1q_s8(*a5, xmmword_29B6C2C80)), vmulq_f32(v8[3], vqtbl1q_s8(*a5, xmmword_29B6C2BC0)));
    v11 = ((a4[1] - *a4) >> 2) + 1;
    v12 = (a3 + 64 + 4 * v7);
    v13 = 1;
    do
    {
      v14 = a5[v13];
      v9 = vaddq_f32(vaddq_f32(v9, vmulq_f32(*v12, vqtbl1q_s8(v14, xmmword_29B6C2C70))), vmulq_f32(v12[2], vqtbl1q_s8(v14, xmmword_29B6C2C30)));
      v10 = vaddq_f32(vaddq_f32(v10, vmulq_f32(v12[1], vqtbl1q_s8(v14, xmmword_29B6C2C80))), vmulq_f32(v12[3], vqtbl1q_s8(v14, xmmword_29B6C2BC0)));
      ++v13;
      --v11;
      v12 += 4;
    }

    while (v11 > 1);
    *result++ = vaddq_f32(v9, v10);
    a5 = (a5 + 4 * a6);
    a4 += 2;
  }

  while (result < v6);
  return result;
}

float32x4_t *sub_29AB414B8(float32x4_t *result, int a2, uint64_t a3, _DWORD *a4, int8x16_t *a5, int a6)
{
  v6 = (result + 4 * (4 * a2));
  do
  {
    v7 = 4 * *a4;
    v8 = (a3 + 4 * v7);
    v9 = vaddq_f32(vmulq_f32(*v8, vqtbl1q_s8(*a5, xmmword_29B6C2C70)), vmulq_f32(v8[2], vqtbl1q_s8(*a5, xmmword_29B6C2C30)));
    v10 = vaddq_f32(vmulq_f32(v8[1], vqtbl1q_s8(*a5, xmmword_29B6C2C80)), vmulq_f32(v8[3], vqtbl1q_s8(*a5, xmmword_29B6C2BC0)));
    v11 = ((a4[1] + ~*a4) >> 2) + 1;
    v12 = (a3 + 64 + 4 * v7);
    v13 = 1;
    do
    {
      v14 = a5[v13];
      v9 = vaddq_f32(vaddq_f32(v9, vmulq_f32(*v12, vqtbl1q_s8(v14, xmmword_29B6C2C70))), vmulq_f32(v12[2], vqtbl1q_s8(v14, xmmword_29B6C2C30)));
      v10 = vaddq_f32(vaddq_f32(v10, vmulq_f32(v12[1], vqtbl1q_s8(v14, xmmword_29B6C2C80))), vmulq_f32(v12[3], vqtbl1q_s8(v14, xmmword_29B6C2BC0)));
      ++v13;
      --v11;
      v12 += 4;
    }

    while (v11 > 1);
    i32 = a5[v13].i32;
    v16 = vld1q_dup_f32(i32);
    *result++ = vaddq_f32(v10, vaddq_f32(v9, vmulq_f32(*v12, vqtbl1q_s8(v16, xmmword_29B6C2C70))));
    a5 = (a5 + 4 * a6);
    a4 += 2;
  }

  while (result < v6);
  return result;
}

float32x4_t *sub_29AB415C8(float32x4_t *result, int a2, uint64_t a3, _DWORD *a4, int8x16_t *a5, int a6)
{
  v6 = (result + 4 * (4 * a2));
  do
  {
    v7 = 4 * *a4;
    v8 = (a3 + 4 * v7);
    v9 = vaddq_f32(vmulq_f32(*v8, vqtbl1q_s8(*a5, xmmword_29B6C2C70)), vmulq_f32(v8[2], vqtbl1q_s8(*a5, xmmword_29B6C2C30)));
    v10 = vaddq_f32(vmulq_f32(v8[1], vqtbl1q_s8(*a5, xmmword_29B6C2C80)), vmulq_f32(v8[3], vqtbl1q_s8(*a5, xmmword_29B6C2BC0)));
    v11 = ((a4[1] - *a4 - 2) >> 2) + 1;
    v12 = (a3 + 64 + 4 * v7);
    v13 = 1;
    do
    {
      v14 = a5[v13];
      v15 = vaddq_f32(v10, vmulq_f32(v12[1], vqtbl1q_s8(v14, xmmword_29B6C2C80)));
      v9 = vaddq_f32(vaddq_f32(v9, vmulq_f32(*v12, vqtbl1q_s8(v14, xmmword_29B6C2C70))), vmulq_f32(v12[2], vqtbl1q_s8(v14, xmmword_29B6C2C30)));
      v16 = vmulq_f32(v12[3], vqtbl1q_s8(v14, xmmword_29B6C2BC0));
      v10 = vaddq_f32(v15, v16);
      ++v13;
      --v11;
      v12 += 4;
    }

    while (v11 > 1);
    v16.i64[0] = a5[v13].i64[0];
    *result++ = vaddq_f32(vaddq_f32(v9, vmulq_f32(*v12, vqtbl1q_s8(v16, xmmword_29B6C2C70))), vaddq_f32(v10, vmulq_f32(v12[1], vqtbl1q_s8(v16, xmmword_29B6C2C80))));
    a5 = (a5 + 4 * a6);
    a4 += 2;
  }

  while (result < v6);
  return result;
}

float32x4_t *sub_29AB416E0(float32x4_t *result, int a2, uint64_t a3, _DWORD *a4, int8x16_t *a5, int a6)
{
  v6 = (result + 4 * (4 * a2));
  do
  {
    v7 = 4 * *a4;
    v8 = (a3 + 4 * v7);
    v9 = vaddq_f32(vmulq_f32(*v8, vqtbl1q_s8(*a5, xmmword_29B6C2C70)), vmulq_f32(v8[2], vqtbl1q_s8(*a5, xmmword_29B6C2C30)));
    v10 = vaddq_f32(vmulq_f32(v8[1], vqtbl1q_s8(*a5, xmmword_29B6C2C80)), vmulq_f32(v8[3], vqtbl1q_s8(*a5, xmmword_29B6C2BC0)));
    v11 = ((a4[1] - *a4 - 3) >> 2) + 1;
    v12 = (a3 + 64 + 4 * v7);
    v13 = 1;
    do
    {
      v14 = a5[v13];
      v9 = vaddq_f32(vaddq_f32(v9, vmulq_f32(*v12, vqtbl1q_s8(v14, xmmword_29B6C2C70))), vmulq_f32(v12[2], vqtbl1q_s8(v14, xmmword_29B6C2C30)));
      v10 = vaddq_f32(vaddq_f32(v10, vmulq_f32(v12[1], vqtbl1q_s8(v14, xmmword_29B6C2C80))), vmulq_f32(v12[3], vqtbl1q_s8(v14, xmmword_29B6C2BC0)));
      ++v13;
      --v11;
      v12 += 4;
    }

    while (v11 > 1);
    *result++ = vaddq_f32(vaddq_f32(v10, vmulq_f32(v12[1], vqtbl1q_s8(a5[v13], xmmword_29B6C2C80))), vaddq_f32(vaddq_f32(v9, vmulq_f32(*v12, vqtbl1q_s8(a5[v13], xmmword_29B6C2C70))), vmulq_f32(v12[2], vqtbl1q_s8(a5[v13], xmmword_29B6C2C30))));
    a5 = (a5 + 4 * a6);
    a4 += 2;
  }

  while (result < v6);
  return result;
}

unint64_t sub_29AB41808(unint64_t result, int a2, uint64_t a3, _DWORD *a4, int8x16_t *a5, int a6)
{
  v6 = result + 4 * (7 * a2);
  do
  {
    v7 = 7 * *a4;
    v8 = a3 + 4 * v7;
    v9 = vqtbl1q_s8(*a5, xmmword_29B6C2C70);
    v10 = vmulq_f32(*v8, v9);
    v11 = vmulq_f32(*(v8 + 12), v9);
    v12 = vqtbl1q_s8(*a5, xmmword_29B6C2C80);
    v13 = vmulq_f32(*(v8 + 28), v12);
    v14 = vmulq_f32(*(v8 + 40), v12);
    v15 = vqtbl1q_s8(*a5, xmmword_29B6C2C30);
    v16 = vaddq_f32(v10, vmulq_f32(*(v8 + 56), v15));
    v17 = vaddq_f32(v11, vmulq_f32(*(v8 + 68), v15));
    v18 = vqtbl1q_s8(*a5, xmmword_29B6C2BC0);
    v19 = vaddq_f32(v13, vmulq_f32(*(v8 + 84), v18));
    v20 = vaddq_f32(v14, vmulq_f32(*(v8 + 96), v18));
    v21 = ((a4[1] - *a4) >> 2) + 1;
    v22 = a3 + 112 + 4 * v7;
    v23 = 1;
    do
    {
      v24 = a5[v23];
      v25 = vqtbl1q_s8(v24, xmmword_29B6C2C70);
      v26 = vaddq_f32(v16, vmulq_f32(*v22, v25));
      v27 = vaddq_f32(v17, vmulq_f32(*(v22 + 12), v25));
      v28 = vqtbl1q_s8(v24, xmmword_29B6C2C80);
      v29 = vaddq_f32(v19, vmulq_f32(*(v22 + 28), v28));
      v30 = vaddq_f32(v20, vmulq_f32(*(v22 + 40), v28));
      v31 = vqtbl1q_s8(v24, xmmword_29B6C2C30);
      v16 = vaddq_f32(v26, vmulq_f32(*(v22 + 56), v31));
      v17 = vaddq_f32(v27, vmulq_f32(*(v22 + 68), v31));
      v32 = vqtbl1q_s8(v24, xmmword_29B6C2BC0);
      v19 = vaddq_f32(v29, vmulq_f32(*(v22 + 84), v32));
      v20 = vaddq_f32(v30, vmulq_f32(*(v22 + 96), v32));
      ++v23;
      --v21;
      v22 += 112;
    }

    while (v21 > 1);
    *(result + 12) = vaddq_f32(v17, v20);
    *result = vaddq_f32(v16, v19);
    result += 28;
    a5 = (a5 + 4 * a6);
    a4 += 2;
  }

  while (result < v6);
  return result;
}

unint64_t sub_29AB41970(unint64_t result, int a2, uint64_t a3, _DWORD *a4, int8x16_t *a5, int a6)
{
  v6 = result + 4 * (7 * a2);
  do
  {
    v7 = 7 * *a4;
    v8 = a3 + 4 * v7;
    v9 = vqtbl1q_s8(*a5, xmmword_29B6C2C70);
    v10 = vqtbl1q_s8(*a5, xmmword_29B6C2C80);
    v11 = vqtbl1q_s8(*a5, xmmword_29B6C2C30);
    v12 = vaddq_f32(vmulq_f32(*v8, v9), vmulq_f32(*(v8 + 56), v11));
    v13 = vaddq_f32(vmulq_f32(*(v8 + 12), v9), vmulq_f32(*(v8 + 68), v11));
    v14 = vqtbl1q_s8(*a5, xmmword_29B6C2BC0);
    v15 = vaddq_f32(vmulq_f32(*(v8 + 28), v10), vmulq_f32(*(v8 + 84), v14));
    v16 = vaddq_f32(vmulq_f32(*(v8 + 40), v10), vmulq_f32(*(v8 + 96), v14));
    v17 = ((a4[1] + ~*a4) >> 2) + 1;
    v18 = a3 + 112 + 4 * v7;
    v19 = 1;
    do
    {
      v20 = a5[v19];
      v21 = vqtbl1q_s8(v20, xmmword_29B6C2C70);
      v22 = vaddq_f32(v12, vmulq_f32(*v18, v21));
      v23 = vaddq_f32(v13, vmulq_f32(*(v18 + 12), v21));
      v24 = vqtbl1q_s8(v20, xmmword_29B6C2C80);
      v25 = vaddq_f32(v15, vmulq_f32(*(v18 + 28), v24));
      v26 = vaddq_f32(v16, vmulq_f32(*(v18 + 40), v24));
      v27 = vqtbl1q_s8(v20, xmmword_29B6C2C30);
      v12 = vaddq_f32(v22, vmulq_f32(*(v18 + 56), v27));
      v13 = vaddq_f32(v23, vmulq_f32(*(v18 + 68), v27));
      v28 = vqtbl1q_s8(v20, xmmword_29B6C2BC0);
      v15 = vaddq_f32(v25, vmulq_f32(*(v18 + 84), v28));
      v16 = vaddq_f32(v26, vmulq_f32(*(v18 + 96), v28));
      ++v19;
      --v17;
      v18 += 112;
    }

    while (v17 > 1);
    i32 = a5[v19].i32;
    v30 = vld1q_dup_f32(i32);
    v31 = vqtbl1q_s8(v30, xmmword_29B6C2C70);
    v32 = vaddq_f32(v15, vaddq_f32(v12, vmulq_f32(*v18, v31)));
    *(result + 12) = vaddq_f32(v16, vaddq_f32(v13, vmulq_f32(*(v18 + 12), v31)));
    *result = v32;
    result += 28;
    a5 = (a5 + 4 * a6);
    a4 += 2;
  }

  while (result < v6);
  return result;
}

unint64_t sub_29AB41B04(unint64_t result, int a2, uint64_t a3, _DWORD *a4, int8x16_t *a5, int a6)
{
  v6 = result + 4 * (7 * a2);
  do
  {
    v7 = 7 * *a4;
    v8 = a3 + 4 * v7;
    v9 = vqtbl1q_s8(*a5, xmmword_29B6C2C70);
    v10 = vqtbl1q_s8(*a5, xmmword_29B6C2C80);
    v11 = vmulq_f32(*(v8 + 28), v10);
    v12 = vmulq_f32(*(v8 + 40), v10);
    v13 = vqtbl1q_s8(*a5, xmmword_29B6C2C30);
    v14 = vaddq_f32(vmulq_f32(*v8, v9), vmulq_f32(*(v8 + 56), v13));
    v15 = vaddq_f32(vmulq_f32(*(v8 + 12), v9), vmulq_f32(*(v8 + 68), v13));
    v16 = vqtbl1q_s8(*a5, xmmword_29B6C2BC0);
    v17 = vaddq_f32(v11, vmulq_f32(*(v8 + 84), v16));
    v18 = vaddq_f32(v12, vmulq_f32(*(v8 + 96), v16));
    v19 = ((a4[1] - *a4 - 2) >> 2) + 1;
    v20 = a3 + 112 + 4 * v7;
    v21 = 1;
    do
    {
      v22 = a5[v21];
      v23 = vqtbl1q_s8(v22, xmmword_29B6C2C70);
      v24 = vaddq_f32(v14, vmulq_f32(*v20, v23));
      v25 = vaddq_f32(v15, vmulq_f32(*(v20 + 12), v23));
      v26 = vqtbl1q_s8(v22, xmmword_29B6C2C80);
      v27 = vaddq_f32(v17, vmulq_f32(*(v20 + 28), v26));
      v28 = vaddq_f32(v18, vmulq_f32(*(v20 + 40), v26));
      v29 = vqtbl1q_s8(v22, xmmword_29B6C2C30);
      v14 = vaddq_f32(v24, vmulq_f32(*(v20 + 56), v29));
      v15 = vaddq_f32(v25, vmulq_f32(*(v20 + 68), v29));
      v30 = vqtbl1q_s8(v22, xmmword_29B6C2BC0);
      v17 = vaddq_f32(v27, vmulq_f32(*(v20 + 84), v30));
      v31 = vmulq_f32(*(v20 + 96), v30);
      v18 = vaddq_f32(v28, v31);
      ++v21;
      --v19;
      v20 += 112;
    }

    while (v19 > 1);
    v31.i64[0] = a5[v21].i64[0];
    v32 = vqtbl1q_s8(v31, xmmword_29B6C2C70);
    v33 = vqtbl1q_s8(v31, xmmword_29B6C2C80);
    v34 = vaddq_f32(vaddq_f32(v14, vmulq_f32(*v20, v32)), vaddq_f32(v17, vmulq_f32(*(v20 + 28), v33)));
    *(result + 12) = vaddq_f32(vaddq_f32(v15, vmulq_f32(*(v20 + 12), v32)), vaddq_f32(v18, vmulq_f32(*(v20 + 40), v33)));
    *result = v34;
    result += 28;
    a5 = (a5 + 4 * a6);
    a4 += 2;
  }

  while (result < v6);
  return result;
}

unint64_t sub_29AB41CB0(unint64_t result, int a2, uint64_t a3, _DWORD *a4, int8x16_t *a5, int a6)
{
  v6 = result + 4 * (7 * a2);
  do
  {
    v7 = 7 * *a4;
    v8 = a3 + 4 * v7;
    v9 = vqtbl1q_s8(*a5, xmmword_29B6C2C70);
    v10 = vqtbl1q_s8(*a5, xmmword_29B6C2C80);
    v11 = vmulq_f32(*(v8 + 28), v10);
    v12 = vmulq_f32(*(v8 + 40), v10);
    v13 = vqtbl1q_s8(*a5, xmmword_29B6C2C30);
    v14 = vaddq_f32(vmulq_f32(*v8, v9), vmulq_f32(*(v8 + 56), v13));
    v15 = vaddq_f32(vmulq_f32(*(v8 + 12), v9), vmulq_f32(*(v8 + 68), v13));
    v16 = vqtbl1q_s8(*a5, xmmword_29B6C2BC0);
    v17 = vaddq_f32(v11, vmulq_f32(*(v8 + 84), v16));
    v18 = vaddq_f32(v12, vmulq_f32(*(v8 + 96), v16));
    v19 = ((a4[1] - *a4 - 3) >> 2) + 1;
    v20 = a3 + 112 + 4 * v7;
    v21 = 1;
    do
    {
      v22 = a5[v21];
      v23 = vqtbl1q_s8(v22, xmmword_29B6C2C70);
      v24 = vaddq_f32(v14, vmulq_f32(*v20, v23));
      v25 = vaddq_f32(v15, vmulq_f32(*(v20 + 12), v23));
      v26 = vqtbl1q_s8(v22, xmmword_29B6C2C80);
      v27 = vaddq_f32(v17, vmulq_f32(*(v20 + 28), v26));
      v28 = vaddq_f32(v18, vmulq_f32(*(v20 + 40), v26));
      v29 = vqtbl1q_s8(v22, xmmword_29B6C2C30);
      v14 = vaddq_f32(v24, vmulq_f32(*(v20 + 56), v29));
      v15 = vaddq_f32(v25, vmulq_f32(*(v20 + 68), v29));
      v30 = vqtbl1q_s8(v22, xmmword_29B6C2BC0);
      v17 = vaddq_f32(v27, vmulq_f32(*(v20 + 84), v30));
      v18 = vaddq_f32(v28, vmulq_f32(*(v20 + 96), v30));
      ++v21;
      --v19;
      v20 += 112;
    }

    while (v19 > 1);
    v31 = a5[v21];
    v32 = vqtbl1q_s8(v31, xmmword_29B6C2C70);
    v33 = vaddq_f32(v14, vmulq_f32(*v20, v32));
    v34 = vaddq_f32(v15, vmulq_f32(*(v20 + 12), v32));
    v35 = vqtbl1q_s8(v31, xmmword_29B6C2C80);
    v36 = vqtbl1q_s8(v31, xmmword_29B6C2C30);
    v37 = vaddq_f32(vaddq_f32(v17, vmulq_f32(*(v20 + 28), v35)), vaddq_f32(v33, vmulq_f32(*(v20 + 56), v36)));
    *(result + 12) = vaddq_f32(vaddq_f32(v18, vmulq_f32(*(v20 + 40), v35)), vaddq_f32(v34, vmulq_f32(*(v20 + 68), v36)));
    *result = v37;
    result += 28;
    a5 = (a5 + 4 * a6);
    a4 += 2;
  }

  while (result < v6);
  return result;
}

float *sub_29AB41E78(float *result, int a2, uint64_t a3, int *a4, float *a5, int a6)
{
  v6 = &result[a2];
  do
  {
    v7 = *a4;
    a4 += 2;
    *result++ = *a5 * *(a3 + 4 * v7);
    a5 += a6;
  }

  while (result < v6);
  return result;
}

_DWORD *sub_29AB41EA8(_DWORD *result, int a2, uint64_t a3, int *a4, float32x2_t *a5, int a6, double a7, float32x4_t a8)
{
  v8 = &result[a2];
  do
  {
    v9 = *a4;
    a4 += 2;
    *a8.f32 = vmul_f32(*a5, *(a3 + 4 * v9));
    a8 = vaddq_f32(a8, vqtbl1q_s8(a8, xmmword_29B6C2C00));
    *result++ = a8.i32[0];
    a5 = (a5 + 4 * a6);
  }

  while (result < v8);
  return result;
}

_DWORD *sub_29AB41EE8(_DWORD *result, int a2, uint64_t a3, int *a4, float32x4_t *a5, int a6)
{
  v6 = &result[a2];
  do
  {
    v7 = *a4;
    a4 += 2;
    v8 = vmulq_f32(*a5, *(a3 + 4 * v7));
    *result++ = vaddq_f32(vaddq_f32(v8, vqtbl1q_s8(v8, xmmword_29B6C2C00)), vqtbl1q_s8(v8, xmmword_29B6C2BF0)).u32[0];
    a5 = (a5 + 4 * a6);
  }

  while (result < v6);
  return result;
}

_DWORD *sub_29AB41F38(_DWORD *result, int a2, uint64_t a3, int *a4, float32x4_t *a5, int a6)
{
  v6 = &result[a2];
  do
  {
    v7 = *a4;
    a4 += 2;
    v8 = vmulq_f32(*a5, *(a3 + 4 * v7));
    v9 = vaddq_f32(v8, vqtbl1q_s8(v8, xmmword_29B6C2BF0));
    *result++ = vaddq_f32(v9, vqtbl1q_s8(v9, xmmword_29B6C2C00)).u32[0];
    a5 = (a5 + 4 * a6);
  }

  while (result < v6);
  return result;
}

_DWORD *sub_29AB41F88(_DWORD *result, int a2, uint64_t a3, int *a4, float32x4_t *a5, int a6)
{
  v6 = a5 + 1;
  v7 = &result[a2];
  do
  {
    v8 = *a4;
    a4 += 2;
    v9 = (a3 + 4 * v8);
    v10 = *v9;
    v10.i32[0] = v6->i32[0];
    v11 = vaddq_f32(vmulq_f32(v6[-1], *v9), vmulq_n_f32(v10, v9[1].f32[0]));
    v12 = vaddq_f32(v11, vqtbl1q_s8(v11, xmmword_29B6C2BF0));
    *result++ = vaddq_f32(v12, vqtbl1q_s8(v12, xmmword_29B6C2C00)).u32[0];
    v6 = (v6 + 4 * a6);
  }

  while (result < v7);
  return result;
}

_DWORD *sub_29AB41FEC(_DWORD *result, int a2, uint64_t a3, int *a4, float32x2_t *a5, int a6)
{
  v6 = a5 + 2;
  v7 = &result[a2];
  do
  {
    v8 = *a4;
    a4 += 2;
    v9 = a3 + 4 * v8;
    v10 = *v9;
    *v10.f32 = vmul_f32(*v6, *(v9 + 16));
    v11 = vaddq_f32(vmulq_f32(*v6[-2].f32, *v9), v10);
    v12 = vaddq_f32(v11, vqtbl1q_s8(v11, xmmword_29B6C2BF0));
    *result++ = vaddq_f32(v12, vqtbl1q_s8(v12, xmmword_29B6C2C00)).u32[0];
    v6 = (v6 + 4 * a6);
  }

  while (result < v7);
  return result;
}

_DWORD *sub_29AB42050(_DWORD *result, int a2, uint64_t a3, int *a4, float32x4_t *a5, int a6)
{
  v6 = a5 + 1;
  v7 = &result[a2];
  do
  {
    v8 = *a4;
    a4 += 2;
    v9 = *v6;
    v9.i32[3] = 0;
    v10 = vaddq_f32(vmulq_f32(v6[-1], *(a3 + 4 * v8)), vmulq_f32(*(a3 + 4 * v8 + 16), v9));
    v11 = vaddq_f32(v10, vqtbl1q_s8(v10, xmmword_29B6C2BF0));
    *result++ = vaddq_f32(v11, vqtbl1q_s8(v11, xmmword_29B6C2C00)).u32[0];
    v6 = (v6 + 4 * a6);
  }

  while (result < v7);
  return result;
}

_DWORD *sub_29AB420B0(_DWORD *result, int a2, uint64_t a3, int *a4, float32x4_t *a5, int a6)
{
  v6 = a5 + 1;
  v7 = &result[a2];
  do
  {
    v8 = *a4;
    a4 += 2;
    v9 = vaddq_f32(vmulq_f32(v6[-1], *(a3 + 4 * v8)), vmulq_f32(*v6, *(a3 + 4 * v8 + 16)));
    v10 = vaddq_f32(v9, vqtbl1q_s8(v9, xmmword_29B6C2BF0));
    *result++ = vaddq_f32(v10, vqtbl1q_s8(v10, xmmword_29B6C2C00)).u32[0];
    v6 = (v6 + 4 * a6);
  }

  while (result < v7);
  return result;
}

_DWORD *sub_29AB42110(_DWORD *result, int a2, uint64_t a3, int *a4, float32x4_t *a5, int a6)
{
  v6 = a5 + 2;
  v7 = &result[a2];
  do
  {
    v8 = *a4;
    a4 += 2;
    v9 = (a3 + 4 * v8);
    v10 = vmulq_f32(v6[-1], v9[1]);
    v11 = vaddq_f32(vmulq_f32(v6[-2], *v9), v10);
    v10.i32[0] = v6->i32[0];
    v12 = vaddq_f32(v11, vmulq_n_f32(v10, v9[2].f32[0]));
    v13 = vaddq_f32(v12, vqtbl1q_s8(v12, xmmword_29B6C2BF0));
    *result++ = vaddq_f32(v13, vqtbl1q_s8(v13, xmmword_29B6C2C00)).u32[0];
    v6 = (v6 + 4 * a6);
  }

  while (result < v7);
  return result;
}

_DWORD *sub_29AB42180(_DWORD *result, int a2, uint64_t a3, int *a4, float32x2_t *a5, int a6)
{
  v6 = a5 + 4;
  v7 = &result[a2];
  do
  {
    v8 = *a4;
    a4 += 2;
    v9 = a3 + 4 * v8;
    v10 = vmulq_f32(*v6[-2].f32, *(v9 + 16));
    v11 = vaddq_f32(vmulq_f32(*v6[-4].f32, *v9), v10);
    *v10.f32 = vmul_f32(*v6, *(v9 + 32));
    v12 = vaddq_f32(v11, v10);
    v13 = vaddq_f32(v12, vqtbl1q_s8(v12, xmmword_29B6C2BF0));
    *result++ = vaddq_f32(v13, vqtbl1q_s8(v13, xmmword_29B6C2C00)).u32[0];
    v6 = (v6 + 4 * a6);
  }

  while (result < v7);
  return result;
}

_DWORD *sub_29AB421F0(_DWORD *result, int a2, uint64_t a3, int *a4, float32x4_t *a5, int a6)
{
  v6 = a5 + 2;
  v7 = &result[a2];
  do
  {
    v8 = *a4;
    a4 += 2;
    v9 = *v6;
    v9.i32[3] = 0;
    v10 = vaddq_f32(vaddq_f32(vmulq_f32(v6[-2], *(a3 + 4 * v8)), vmulq_f32(v6[-1], *(a3 + 4 * v8 + 16))), vmulq_f32(*(a3 + 4 * v8 + 32), v9));
    v11 = vaddq_f32(v10, vqtbl1q_s8(v10, xmmword_29B6C2BF0));
    *result++ = vaddq_f32(v11, vqtbl1q_s8(v11, xmmword_29B6C2C00)).u32[0];
    v6 = (v6 + 4 * a6);
  }

  while (result < v7);
  return result;
}

_DWORD *sub_29AB42260(_DWORD *result, int a2, uint64_t a3, int *a4, float32x4_t *a5, int a6)
{
  v6 = a5 + 2;
  v7 = &result[a2];
  do
  {
    v8 = *a4;
    a4 += 2;
    v9 = vaddq_f32(vaddq_f32(vmulq_f32(v6[-2], *(a3 + 4 * v8)), vmulq_f32(v6[-1], *(a3 + 4 * v8 + 16))), vmulq_f32(*v6, *(a3 + 4 * v8 + 32)));
    v10 = vaddq_f32(v9, vqtbl1q_s8(v9, xmmword_29B6C2BF0));
    *result++ = vaddq_f32(v10, vqtbl1q_s8(v10, xmmword_29B6C2C00)).u32[0];
    v6 = (v6 + 4 * a6);
  }

  while (result < v7);
  return result;
}

float32x2_t *sub_29AB422D0(float32x2_t *result, int a2, uint64_t a3, int *a4, unsigned int *a5, int a6, double a7, double a8, double a9, float32x4_t a10)
{
  v10 = (result + 4 * (2 * a2));
  do
  {
    v11 = *a4;
    a4 += 2;
    v12 = *a5;
    a5 += a6;
    a10.i64[0] = *(a3 + 8 * v11);
    v13 = vmulq_f32(a10, vqtbl1q_s8(v12, xmmword_29B6C2C10));
    a10 = vqtbl1q_s8(v13, xmmword_29B6C2BF0);
    *result++ = vadd_f32(*v13.i8, *a10.f32);
  }

  while (result < v10);
  return result;
}

float32x2_t *sub_29AB42320(float32x2_t *result, int a2, uint64_t a3, int *a4, unint64_t *a5, int a6, double a7, double a8, int8x16_t a9)
{
  v9 = (result + 4 * (2 * a2));
  do
  {
    v10 = *a4;
    a4 += 2;
    a9.i64[0] = *a5;
    a9 = vmulq_f32(*(a3 + 8 * v10), vqtbl1q_s8(a9, xmmword_29B6C2C10));
    *result++ = vadd_f32(*a9.i8, *&vqtbl1q_s8(a9, xmmword_29B6C2BF0));
    a5 = (a5 + 4 * a6);
  }

  while (result < v9);
  return result;
}

float32x2_t *sub_29AB42370(float32x2_t *result, int a2, uint64_t a3, int *a4, int8x16_t *a5, int a6)
{
  v6 = (result + 4 * (2 * a2));
  do
  {
    v7 = *a4;
    a4 += 2;
    v8 = (a3 + 8 * v7);
    v9 = *v8;
    v9.i64[0] = v8[1].i64[0];
    v10 = vaddq_f32(vmulq_f32(*v8, vqtbl1q_s8(*a5, xmmword_29B6C2C10)), vmulq_f32(v9, vqtbl1q_s8(*a5, xmmword_29B6C2C30)));
    *result++ = vadd_f32(*v10.i8, *&vqtbl1q_s8(v10, xmmword_29B6C2BF0));
    a5 = (a5 + 4 * a6);
  }

  while (result < v6);
  return result;
}

float32x2_t *sub_29AB423D8(float32x2_t *result, int a2, uint64_t a3, int *a4, int8x16_t *a5, int a6)
{
  v6 = (result + 4 * (2 * a2));
  do
  {
    v7 = *a4;
    a4 += 2;
    v8 = vaddq_f32(vmulq_f32(*(a3 + 8 * v7), vqtbl1q_s8(*a5, xmmword_29B6C2C10)), vmulq_f32(*(a3 + 8 * v7 + 16), vqtbl1q_s8(*a5, xmmword_29B6C2C20)));
    *result++ = vadd_f32(*v8.i8, *&vqtbl1q_s8(v8, xmmword_29B6C2BF0));
    a5 = (a5 + 4 * a6);
  }

  while (result < v6);
  return result;
}

float32x2_t *sub_29AB4243C(float32x2_t *result, int a2, uint64_t a3, int *a4, int8x16_t *a5, int a6)
{
  v6 = a5 + 1;
  v7 = (result + 4 * (2 * a2));
  do
  {
    v8 = *a4;
    a4 += 2;
    v9 = (a3 + 8 * v8);
    v10 = v6[-1];
    v11 = v9[1];
    v12 = vmulq_f32(*v9, vqtbl1q_s8(v10, xmmword_29B6C2C10));
    v13 = v6->i32[0];
    v6 = (v6 + 4 * a6);
    v14 = vmulq_f32(v11, vqtbl1q_s8(v10, xmmword_29B6C2C20));
    v11.i64[0] = v9[2].i64[0];
    v15 = vaddq_f32(v14, vaddq_f32(v12, vmulq_f32(v11, vqtbl1q_s8(v13, xmmword_29B6C2C10))));
    *result++ = vadd_f32(*v15.i8, *&vqtbl1q_s8(v15, xmmword_29B6C2BF0));
  }

  while (result < v7);
  return result;
}

float32x2_t *sub_29AB424B8(float32x2_t *result, int a2, uint64_t a3, int *a4, int8x16_t *a5, int a6)
{
  v6 = a5 + 1;
  v7 = (result + 4 * (2 * a2));
  do
  {
    v8 = *a4;
    a4 += 2;
    v9 = (a3 + 8 * v8);
    v10 = *v9;
    v10.i64[0] = v6->i64[0];
    v11 = vaddq_f32(vmulq_f32(v9[1], vqtbl1q_s8(v6[-1], xmmword_29B6C2C20)), vaddq_f32(vmulq_f32(*v9, vqtbl1q_s8(v6[-1], xmmword_29B6C2C10)), vmulq_f32(v9[2], vqtbl1q_s8(v10, xmmword_29B6C2C10))));
    *result++ = vadd_f32(*v11.i8, *&vqtbl1q_s8(v11, xmmword_29B6C2BF0));
    v6 = (v6 + 4 * a6);
  }

  while (result < v7);
  return result;
}

float32x2_t *sub_29AB42534(float32x2_t *result, int a2, uint64_t a3, int *a4, int8x16_t *a5, int a6)
{
  v6 = a5 + 1;
  v7 = (result + 4 * (2 * a2));
  do
  {
    v8 = *a4;
    a4 += 2;
    v9 = (a3 + 8 * v8);
    v10 = v6[-1];
    v11 = vmulq_f32(v9[2], vqtbl1q_s8(*v6, xmmword_29B6C2C10));
    v12 = vaddq_f32(vmulq_f32(*v9, vqtbl1q_s8(v10, xmmword_29B6C2C10)), v11);
    v11.i64[0] = v9[3].i64[0];
    v13 = vaddq_f32(v12, vaddq_f32(vmulq_f32(v9[1], vqtbl1q_s8(v10, xmmword_29B6C2C20)), vmulq_f32(v11, vqtbl1q_s8(*v6, xmmword_29B6C2C30))));
    *result++ = vadd_f32(*v13.i8, *&vqtbl1q_s8(v13, xmmword_29B6C2BF0));
    v6 = (v6 + 4 * a6);
  }

  while (result < v7);
  return result;
}

float32x2_t *sub_29AB425C4(float32x2_t *result, int a2, uint64_t a3, int *a4, int8x16_t *a5, int a6)
{
  v6 = a5 + 1;
  v7 = (result + 4 * (2 * a2));
  do
  {
    v8 = *a4;
    a4 += 2;
    v9 = (a3 + 8 * v8);
    v10 = vaddq_f32(vaddq_f32(vmulq_f32(*v9, vqtbl1q_s8(v6[-1], xmmword_29B6C2C10)), vmulq_f32(v9[2], vqtbl1q_s8(*v6, xmmword_29B6C2C10))), vaddq_f32(vmulq_f32(v9[1], vqtbl1q_s8(v6[-1], xmmword_29B6C2C20)), vmulq_f32(v9[3], vqtbl1q_s8(*v6, xmmword_29B6C2C20))));
    *result++ = vadd_f32(*v10.i8, *&vqtbl1q_s8(v10, xmmword_29B6C2BF0));
    v6 = (v6 + 4 * a6);
  }

  while (result < v7);
  return result;
}

float32x2_t *sub_29AB4264C(float32x2_t *result, int a2, uint64_t a3, int *a4, int8x16_t *a5, int a6)
{
  v6 = a5 + 2;
  v7 = (result + 4 * (2 * a2));
  do
  {
    v8 = *a4;
    a4 += 2;
    v9 = (a3 + 8 * v8);
    v10 = v6[-2];
    v11 = v6[-1];
    v12 = v6->i32[0];
    v6 = (v6 + 4 * a6);
    v13 = vaddq_f32(vaddq_f32(vmulq_f32(v9[1], vqtbl1q_s8(v10, xmmword_29B6C2C20)), vmulq_f32(v9[3], vqtbl1q_s8(v11, xmmword_29B6C2C20))), vaddq_f32(vaddq_f32(vmulq_f32(*v9, vqtbl1q_s8(v10, xmmword_29B6C2C10)), vmulq_f32(v9[2], vqtbl1q_s8(v11, xmmword_29B6C2C10))), vmulq_f32(v9[4].u64[0], vqtbl1q_s8(v12, xmmword_29B6C2C10))));
    *result++ = vadd_f32(*v13.i8, *&vqtbl1q_s8(v13, xmmword_29B6C2BF0));
  }

  while (result < v7);
  return result;
}

float32x2_t *sub_29AB426E8(float32x2_t *result, int a2, uint64_t a3, int *a4, int8x16_t *a5, int a6)
{
  v6 = a5 + 2;
  v7 = (result + 4 * (2 * a2));
  do
  {
    v8 = *a4;
    a4 += 2;
    v9 = (a3 + 8 * v8);
    v10 = v6[-2];
    v11 = v6[-1];
    v12 = vaddq_f32(vmulq_f32(*v9, vqtbl1q_s8(v10, xmmword_29B6C2C10)), vmulq_f32(v9[2], vqtbl1q_s8(v11, xmmword_29B6C2C10)));
    v13 = vmulq_f32(v9[3], vqtbl1q_s8(v11, xmmword_29B6C2C20));
    v14 = vaddq_f32(vmulq_f32(v9[1], vqtbl1q_s8(v10, xmmword_29B6C2C20)), v13);
    v13.i64[0] = v6->i64[0];
    v15 = vaddq_f32(v14, vaddq_f32(v12, vmulq_f32(v9[4], vqtbl1q_s8(v13, xmmword_29B6C2C10))));
    *result++ = vadd_f32(*v15.i8, *&vqtbl1q_s8(v15, xmmword_29B6C2BF0));
    v6 = (v6 + 4 * a6);
  }

  while (result < v7);
  return result;
}

float32x2_t *sub_29AB42784(float32x2_t *result, int a2, uint64_t a3, int *a4, int8x16_t *a5, int a6)
{
  v6 = a5 + 2;
  v7 = (result + 4 * (2 * a2));
  do
  {
    v8 = *a4;
    a4 += 2;
    v9 = (a3 + 8 * v8);
    v10 = *v6;
    v10.i64[0] = v9[5].i64[0];
    v11 = vaddq_f32(vaddq_f32(vaddq_f32(vmulq_f32(*v9, vqtbl1q_s8(v6[-2], xmmword_29B6C2C10)), vmulq_f32(v9[2], vqtbl1q_s8(v6[-1], xmmword_29B6C2C10))), vmulq_f32(v9[4], vqtbl1q_s8(*v6, xmmword_29B6C2C10))), vaddq_f32(vaddq_f32(vmulq_f32(v9[1], vqtbl1q_s8(v6[-2], xmmword_29B6C2C20)), vmulq_f32(v9[3], vqtbl1q_s8(v6[-1], xmmword_29B6C2C20))), vmulq_f32(v10, vqtbl1q_s8(*v6, xmmword_29B6C2C30))));
    *result++ = vadd_f32(*v11.i8, *&vqtbl1q_s8(v11, xmmword_29B6C2BF0));
    v6 = (v6 + 4 * a6);
  }

  while (result < v7);
  return result;
}

float32x2_t *sub_29AB42834(float32x2_t *result, int a2, uint64_t a3, int *a4, int8x16_t *a5, int a6)
{
  v6 = a5 + 2;
  v7 = (result + 4 * (2 * a2));
  do
  {
    v8 = *a4;
    a4 += 2;
    v9 = (a3 + 8 * v8);
    v10 = vaddq_f32(vaddq_f32(vaddq_f32(vmulq_f32(*v9, vqtbl1q_s8(v6[-2], xmmword_29B6C2C10)), vmulq_f32(v9[2], vqtbl1q_s8(v6[-1], xmmword_29B6C2C10))), vmulq_f32(v9[4], vqtbl1q_s8(*v6, xmmword_29B6C2C10))), vaddq_f32(vaddq_f32(vmulq_f32(v9[1], vqtbl1q_s8(v6[-2], xmmword_29B6C2C20)), vmulq_f32(v9[3], vqtbl1q_s8(v6[-1], xmmword_29B6C2C20))), vmulq_f32(v9[5], vqtbl1q_s8(*v6, xmmword_29B6C2C20))));
    *result++ = vadd_f32(*v10.i8, *&vqtbl1q_s8(v10, xmmword_29B6C2BF0));
    v6 = (v6 + 4 * a6);
  }

  while (result < v7);
  return result;
}

unint64_t sub_29AB428DC(unint64_t result, int a2, uint64_t a3, int *a4, unsigned int *a5, int a6)
{
  v6 = result + 4 * (3 * a2);
  do
  {
    v7 = *a4;
    a4 += 2;
    v8 = *a5;
    a5 += a6;
    v9 = vmulq_f32(*(a3 + 12 * v7), vqtbl1q_s8(v8, xmmword_29B6C2C40));
    *result = v9.i64[0];
    *(result + 8) = vqtbl1q_s8(v9, xmmword_29B6C2BF0).u32[0];
    result += 12;
  }

  while (result < v6);
  return result;
}

unint64_t sub_29AB42934(unint64_t result, int a2, uint64_t a3, int *a4, unint64_t *a5, int a6, double a7, double a8, double a9, int8x16_t a10)
{
  v10 = result + 4 * (3 * a2);
  do
  {
    v11 = *a4;
    a4 += 2;
    a10.i64[0] = *a5;
    v12 = vaddq_f32(vmulq_f32(*(a3 + 12 * v11), vqtbl1q_s8(a10, xmmword_29B6C2C70)), vmulq_f32(*(a3 + 12 * v11 + 12), vqtbl1q_s8(a10, xmmword_29B6C2C80)));
    *result = v12.i64[0];
    a10 = vqtbl1q_s8(v12, xmmword_29B6C2BF0);
    *(result + 8) = a10.i32[0];
    result += 12;
    a5 = (a5 + 4 * a6);
  }

  while (result < v10);
  return result;
}

unint64_t sub_29AB429A4(unint64_t result, int a2, uint64_t a3, int *a4, int8x16_t *a5, int a6)
{
  v6 = result + 4 * (3 * a2);
  do
  {
    v7 = *a4;
    a4 += 2;
    v8 = vaddq_f32(vaddq_f32(vmulq_f32(*(a3 + 12 * v7), vqtbl1q_s8(*a5, xmmword_29B6C2C70)), vmulq_f32(*(a3 + 12 * v7 + 12), vqtbl1q_s8(*a5, xmmword_29B6C2C80))), vmulq_f32(*(a3 + 12 * v7 + 24), vqtbl1q_s8(*a5, xmmword_29B6C2C30)));
    *result = v8.i64[0];
    *(result + 8) = vqtbl1q_s8(v8, xmmword_29B6C2BF0).u32[0];
    result += 12;
    a5 = (a5 + 4 * a6);
  }

  while (result < v6);
  return result;
}

double sub_29AB42A2C(uint64_t a1, int a2, uint64_t a3, int *a4, int8x16_t *a5, int a6)
{
  for (i = a1 + 12; ; i += 12)
  {
    v7 = (a3 + 12 * *a4);
    v8 = vmulq_f32(*v7, vqtbl1q_s8(*a5, xmmword_29B6C2C40));
    v9 = vmulq_f32(v7[1], vqtbl1q_s8(*a5, xmmword_29B6C2C50));
    v10 = vmulq_f32(v7[2], vqtbl1q_s8(*a5, xmmword_29B6C2C60));
    v11 = vaddq_f32(vaddq_f32(v8, vextq_s8(v9, v10, 8uLL)), vaddq_f32(vextq_s8(v8, v9, 0xCuLL), vqtbl1q_s8(v10, xmmword_29B6C2C00)));
    if (i >= a1 + 4 * (3 * a2))
    {
      break;
    }

    a4 += 2;
    *(i - 12) = v11;
    a5 = (a5 + 4 * a6);
  }

  *&result = vqtbl1q_s8(v11, xmmword_29B6C2BF0).u64[0];
  *(i - 12) = v11.i64[0];
  *(i - 4) = LODWORD(result);
  return result;
}

double sub_29AB42AD8(uint64_t a1, int a2, uint64_t a3, int *a4, int8x16_t *a5, int a6)
{
  v6 = a1 + 12;
  for (i = a5 + 1; ; i = (i + 4 * a6))
  {
    v8 = (a3 + 12 * *a4);
    v9 = i[-1];
    v10 = vmulq_f32(*v8, vqtbl1q_s8(v9, xmmword_29B6C2C40));
    v11 = vmulq_f32(v8[1], vqtbl1q_s8(v9, xmmword_29B6C2C50));
    v12 = v8[2];
    v13 = vmulq_f32(v12, vqtbl1q_s8(v9, xmmword_29B6C2C60));
    v12.i32[0] = i->i32[0];
    v14 = vaddq_f32(v10, vmulq_f32(v8[3], vqtbl1q_s8(v12, xmmword_29B6C2C40)));
    v15 = vaddq_f32(vaddq_f32(vextq_s8(v11, v13, 8uLL), v14), vaddq_f32(vextq_s8(v14, v11, 0xCuLL), vqtbl1q_s8(v13, xmmword_29B6C2C00)));
    if (v6 >= a1 + 4 * (3 * a2))
    {
      break;
    }

    a4 += 2;
    *(v6 - 12) = v15;
    v6 += 12;
  }

  *&result = vqtbl1q_s8(v15, xmmword_29B6C2BF0).u64[0];
  *(v6 - 12) = v15.i64[0];
  *(v6 - 4) = LODWORD(result);
  return result;
}

double sub_29AB42B98(uint64_t a1, int a2, uint64_t a3, int *a4, int8x16_t *a5, int a6)
{
  v6 = a1 + 12;
  for (i = a5 + 1; ; i = (i + 4 * a6))
  {
    v8 = (a3 + 12 * *a4);
    v9 = i[-1];
    v10 = vmulq_f32(*v8, vqtbl1q_s8(v9, xmmword_29B6C2C40));
    v11 = vmulq_f32(v8[1], vqtbl1q_s8(v9, xmmword_29B6C2C50));
    v12 = v8[2];
    v13 = vmulq_f32(v12, vqtbl1q_s8(v9, xmmword_29B6C2C60));
    v12.i64[0] = i->i64[0];
    v14 = vmulq_f32(v8[3], vqtbl1q_s8(v12, xmmword_29B6C2C40));
    v15 = vaddq_f32(v10, v14);
    v14.i64[0] = v8[4].i64[0];
    v16 = vaddq_f32(v11, vmulq_f32(v14, vqtbl1q_s8(v12, xmmword_29B6C2C50)));
    v17 = vaddq_f32(vaddq_f32(v15, vextq_s8(v16, v13, 8uLL)), vaddq_f32(vextq_s8(v15, v16, 0xCuLL), vqtbl1q_s8(v13, xmmword_29B6C2C00)));
    if (v6 >= a1 + 4 * (3 * a2))
    {
      break;
    }

    a4 += 2;
    *(v6 - 12) = v17;
    v6 += 12;
  }

  *&result = vqtbl1q_s8(v17, xmmword_29B6C2BF0).u64[0];
  *(v6 - 12) = v17.i64[0];
  *(v6 - 4) = LODWORD(result);
  return result;
}

double sub_29AB42C68(uint64_t a1, int a2, uint64_t a3, int *a4, int8x16_t *a5, int a6)
{
  v6 = a1 + 12;
  for (i = a5 + 1; ; i = (i + 4 * a6))
  {
    v8 = (a3 + 12 * *a4);
    v9 = i[-1];
    v10 = vaddq_f32(vmulq_f32(*v8, vqtbl1q_s8(v9, xmmword_29B6C2C40)), vmulq_f32(v8[3], vqtbl1q_s8(*i, xmmword_29B6C2C40)));
    v11 = vmulq_f32(v8[4], vqtbl1q_s8(*i, xmmword_29B6C2C50));
    v12 = vaddq_f32(vmulq_f32(v8[1], vqtbl1q_s8(v9, xmmword_29B6C2C50)), v11);
    v11.i32[0] = v8[5].i32[0];
    v13 = vaddq_f32(vmulq_f32(v8[2], vqtbl1q_s8(v9, xmmword_29B6C2C60)), vmulq_f32(v11, vqtbl1q_s8(*i, xmmword_29B6C2C30)));
    v14 = vaddq_f32(vaddq_f32(vextq_s8(v10, v12, 0xCuLL), vqtbl1q_s8(v13, xmmword_29B6C2C00)), vaddq_f32(v10, vextq_s8(v12, v13, 8uLL)));
    if (v6 >= a1 + 4 * (3 * a2))
    {
      break;
    }

    a4 += 2;
    *(v6 - 12) = v14;
    v6 += 12;
  }

  *&result = vqtbl1q_s8(v14, xmmword_29B6C2BF0).u64[0];
  *(v6 - 12) = v14.i64[0];
  *(v6 - 4) = LODWORD(result);
  return result;
}

double sub_29AB42D50(uint64_t a1, int a2, uint64_t a3, int *a4, int8x16_t *a5, int a6)
{
  v6 = a1 + 12;
  for (i = a5 + 1; ; i = (i + 4 * a6))
  {
    v8 = (a3 + 12 * *a4);
    v9 = i[-1];
    v10 = vaddq_f32(vmulq_f32(*v8, vqtbl1q_s8(v9, xmmword_29B6C2C40)), vmulq_f32(v8[3], vqtbl1q_s8(*i, xmmword_29B6C2C40)));
    v11 = vaddq_f32(vmulq_f32(v8[1], vqtbl1q_s8(v9, xmmword_29B6C2C50)), vmulq_f32(v8[4], vqtbl1q_s8(*i, xmmword_29B6C2C50)));
    v12 = vaddq_f32(vmulq_f32(v8[2], vqtbl1q_s8(v9, xmmword_29B6C2C60)), vmulq_f32(v8[5], vqtbl1q_s8(*i, xmmword_29B6C2C60)));
    v13 = vaddq_f32(vaddq_f32(vextq_s8(v10, v11, 0xCuLL), vqtbl1q_s8(v12, xmmword_29B6C2C00)), vaddq_f32(v10, vextq_s8(v11, v12, 8uLL)));
    if (v6 >= a1 + 4 * (3 * a2))
    {
      break;
    }

    a4 += 2;
    *(v6 - 12) = v13;
    v6 += 12;
  }

  *&result = vqtbl1q_s8(v13, xmmword_29B6C2BF0).u64[0];
  *(v6 - 12) = v13.i64[0];
  *(v6 - 4) = LODWORD(result);
  return result;
}

double sub_29AB42E30(uint64_t a1, int a2, uint64_t a3, int *a4, int8x16_t *a5, int a6)
{
  v6 = a1 + 12;
  for (i = a5 + 2; ; i = (i + 4 * a6))
  {
    v8 = (a3 + 12 * *a4);
    v9 = i[-2];
    v10 = i[-1];
    v11 = vaddq_f32(vmulq_f32(*v8, vqtbl1q_s8(v9, xmmword_29B6C2C40)), vmulq_f32(v8[3], vqtbl1q_s8(v10, xmmword_29B6C2C40)));
    v12 = vaddq_f32(vmulq_f32(v8[1], vqtbl1q_s8(v9, xmmword_29B6C2C50)), vmulq_f32(v8[4], vqtbl1q_s8(v10, xmmword_29B6C2C50)));
    v13 = vmulq_f32(v8[5], vqtbl1q_s8(v10, xmmword_29B6C2C60));
    v14 = vaddq_f32(vmulq_f32(v8[2], vqtbl1q_s8(v9, xmmword_29B6C2C60)), v13);
    v13.i32[0] = i->i32[0];
    v15 = vaddq_f32(v11, vmulq_f32(v8[6], vqtbl1q_s8(v13, xmmword_29B6C2C40)));
    v16 = vaddq_f32(vaddq_f32(vextq_s8(v12, v14, 8uLL), v15), vaddq_f32(vextq_s8(v15, v12, 0xCuLL), vqtbl1q_s8(v14, xmmword_29B6C2C00)));
    if (v6 >= a1 + 4 * (3 * a2))
    {
      break;
    }

    a4 += 2;
    *(v6 - 12) = v16;
    v6 += 12;
  }

  *&result = vqtbl1q_s8(v16, xmmword_29B6C2BF0).u64[0];
  *(v6 - 12) = v16.i64[0];
  *(v6 - 4) = LODWORD(result);
  return result;
}

double sub_29AB42F20(uint64_t a1, int a2, uint64_t a3, int *a4, int8x16_t *a5, int a6)
{
  v6 = a1 + 12;
  for (i = a5 + 2; ; i = (i + 4 * a6))
  {
    v8 = (a3 + 12 * *a4);
    v9 = i[-2];
    v10 = i[-1];
    v11 = vaddq_f32(vmulq_f32(*v8, vqtbl1q_s8(v9, xmmword_29B6C2C40)), vmulq_f32(v8[3], vqtbl1q_s8(v10, xmmword_29B6C2C40)));
    v12 = vaddq_f32(vmulq_f32(v8[1], vqtbl1q_s8(v9, xmmword_29B6C2C50)), vmulq_f32(v8[4], vqtbl1q_s8(v10, xmmword_29B6C2C50)));
    v13 = vmulq_f32(v8[5], vqtbl1q_s8(v10, xmmword_29B6C2C60));
    v14 = vaddq_f32(vmulq_f32(v8[2], vqtbl1q_s8(v9, xmmword_29B6C2C60)), v13);
    v13.i64[0] = i->i64[0];
    v15 = vmulq_f32(v8[6], vqtbl1q_s8(v13, xmmword_29B6C2C40));
    v16 = vaddq_f32(v11, v15);
    v15.i64[0] = v8[7].i64[0];
    v17 = vaddq_f32(v12, vmulq_f32(v15, vqtbl1q_s8(v13, xmmword_29B6C2C50)));
    v18 = vaddq_f32(vaddq_f32(v16, vextq_s8(v17, v14, 8uLL)), vaddq_f32(vextq_s8(v16, v17, 0xCuLL), vqtbl1q_s8(v14, xmmword_29B6C2C00)));
    if (v6 >= a1 + 4 * (3 * a2))
    {
      break;
    }

    a4 += 2;
    *(v6 - 12) = v18;
    v6 += 12;
  }

  *&result = vqtbl1q_s8(v18, xmmword_29B6C2BF0).u64[0];
  *(v6 - 12) = v18.i64[0];
  *(v6 - 4) = LODWORD(result);
  return result;
}

double sub_29AB43020(uint64_t a1, int a2, uint64_t a3, int *a4, int8x16_t *a5, int a6)
{
  v6 = a1 + 12;
  for (i = a5 + 2; ; i = (i + 4 * a6))
  {
    v8 = (a3 + 12 * *a4);
    v9 = i[-2];
    v10 = i[-1];
    v11 = vaddq_f32(vaddq_f32(vmulq_f32(*v8, vqtbl1q_s8(v9, xmmword_29B6C2C40)), vmulq_f32(v8[3], vqtbl1q_s8(v10, xmmword_29B6C2C40))), vmulq_f32(v8[6], vqtbl1q_s8(*i, xmmword_29B6C2C40)));
    v12 = vmulq_f32(v8[7], vqtbl1q_s8(*i, xmmword_29B6C2C50));
    v13 = vaddq_f32(vaddq_f32(vmulq_f32(v8[1], vqtbl1q_s8(v9, xmmword_29B6C2C50)), vmulq_f32(v8[4], vqtbl1q_s8(v10, xmmword_29B6C2C50))), v12);
    v12.i32[0] = v8[8].i32[0];
    v14 = vaddq_f32(vaddq_f32(vmulq_f32(v8[2], vqtbl1q_s8(v9, xmmword_29B6C2C60)), vmulq_f32(v8[5], vqtbl1q_s8(v10, xmmword_29B6C2C60))), vmulq_f32(v12, vqtbl1q_s8(*i, xmmword_29B6C2C30)));
    v15 = vaddq_f32(vaddq_f32(vextq_s8(v11, v13, 0xCuLL), vqtbl1q_s8(v14, xmmword_29B6C2C00)), vaddq_f32(v11, vextq_s8(v13, v14, 8uLL)));
    if (v6 >= a1 + 4 * (3 * a2))
    {
      break;
    }

    a4 += 2;
    *(v6 - 12) = v15;
    v6 += 12;
  }

  *&result = vqtbl1q_s8(v15, xmmword_29B6C2BF0).u64[0];
  *(v6 - 12) = v15.i64[0];
  *(v6 - 4) = LODWORD(result);
  return result;
}

double sub_29AB43138(uint64_t a1, int a2, uint64_t a3, int *a4, int8x16_t *a5, int a6)
{
  v6 = a1 + 12;
  for (i = a5 + 2; ; i = (i + 4 * a6))
  {
    v8 = (a3 + 12 * *a4);
    v9 = i[-2];
    v10 = i[-1];
    v11 = vaddq_f32(vaddq_f32(vmulq_f32(*v8, vqtbl1q_s8(v9, xmmword_29B6C2C40)), vmulq_f32(v8[3], vqtbl1q_s8(v10, xmmword_29B6C2C40))), vmulq_f32(v8[6], vqtbl1q_s8(*i, xmmword_29B6C2C40)));
    v12 = vaddq_f32(vaddq_f32(vmulq_f32(v8[1], vqtbl1q_s8(v9, xmmword_29B6C2C50)), vmulq_f32(v8[4], vqtbl1q_s8(v10, xmmword_29B6C2C50))), vmulq_f32(v8[7], vqtbl1q_s8(*i, xmmword_29B6C2C50)));
    v13 = vaddq_f32(vaddq_f32(vmulq_f32(v8[2], vqtbl1q_s8(v9, xmmword_29B6C2C60)), vmulq_f32(v8[5], vqtbl1q_s8(v10, xmmword_29B6C2C60))), vmulq_f32(v8[8], vqtbl1q_s8(*i, xmmword_29B6C2C60)));
    v14 = vaddq_f32(vaddq_f32(vextq_s8(v11, v12, 0xCuLL), vqtbl1q_s8(v13, xmmword_29B6C2C00)), vaddq_f32(v11, vextq_s8(v12, v13, 8uLL)));
    if (v6 >= a1 + 4 * (3 * a2))
    {
      break;
    }

    a4 += 2;
    *(v6 - 12) = v14;
    v6 += 12;
  }

  *&result = vqtbl1q_s8(v14, xmmword_29B6C2BF0).u64[0];
  *(v6 - 12) = v14.i64[0];
  *(v6 - 4) = LODWORD(result);
  return result;
}

float32x4_t *sub_29AB43248(float32x4_t *result, int a2, uint64_t a3, int *a4, const float *a5, int a6)
{
  v6 = (result + 4 * (4 * a2));
  do
  {
    v8 = *a4;
    a4 += 2;
    v9 = vld1q_dup_f32(a5);
    v7 = 4 * a6;
    a5 = (a5 + v7);
    *result++ = vmulq_f32(*(a3 + 16 * v8), vqtbl1q_s8(v9, xmmword_29B6C2C70));
  }

  while (result < v6);
  return result;
}

__n128 *sub_29AB43284(__n128 *result, int a2, uint64_t a3, int *a4, unint64_t *a5, int a6, double a7, double a8, int8x16_t a9)
{
  v9 = (result + 4 * (4 * a2));
  do
  {
    v10 = *a4;
    a4 += 2;
    a9.i64[0] = *a5;
    a9 = vaddq_f32(vmulq_f32(*(a3 + 16 * v10), vqtbl1q_s8(a9, xmmword_29B6C2C70)), vmulq_f32(*(a3 + 16 * v10 + 16), vqtbl1q_s8(a9, xmmword_29B6C2C80)));
    *result++ = a9;
    a5 = (a5 + 4 * a6);
  }

  while (result < v9);
  return result;
}

float32x4_t *sub_29AB432D8(float32x4_t *result, int a2, uint64_t a3, int *a4, int8x16_t *a5, int a6)
{
  v6 = (result + 4 * (4 * a2));
  do
  {
    v7 = *a4;
    a4 += 2;
    *result++ = vaddq_f32(vaddq_f32(vmulq_f32(*(a3 + 16 * v7), vqtbl1q_s8(*a5, xmmword_29B6C2C70)), vmulq_f32(*(a3 + 16 * v7 + 16), vqtbl1q_s8(*a5, xmmword_29B6C2C80))), vmulq_f32(*(a3 + 16 * v7 + 32), vqtbl1q_s8(*a5, xmmword_29B6C2C30)));
    a5 = (a5 + 4 * a6);
  }

  while (result < v6);
  return result;
}

float32x4_t *sub_29AB43344(float32x4_t *result, int a2, uint64_t a3, int *a4, int8x16_t *a5, int a6)
{
  v6 = (result + 4 * (4 * a2));
  do
  {
    v7 = *a4;
    a4 += 2;
    *result++ = vaddq_f32(vaddq_f32(vmulq_f32(*(a3 + 16 * v7), vqtbl1q_s8(*a5, xmmword_29B6C2C70)), vmulq_f32(*(a3 + 16 * v7 + 32), vqtbl1q_s8(*a5, xmmword_29B6C2C30))), vaddq_f32(vmulq_f32(*(a3 + 16 * v7 + 16), vqtbl1q_s8(*a5, xmmword_29B6C2C80)), vmulq_f32(*(a3 + 16 * v7 + 48), vqtbl1q_s8(*a5, xmmword_29B6C2BC0))));
    a5 = (a5 + 4 * a6);
  }

  while (result < v6);
  return result;
}

float32x4_t *sub_29AB433C4(float32x4_t *result, int a2, uint64_t a3, int *a4, uint64_t a5, int a6)
{
  v6 = (a5 + 16);
  v8 = (result + 4 * (4 * a2));
  do
  {
    v9 = *a4;
    a4 += 2;
    v10 = (a3 + 16 * v9);
    v11 = *(v6 - 4);
    v12 = vld1q_dup_f32(v6);
    v7 = 4 * a6;
    v6 = (v6 + v7);
    *result++ = vaddq_f32(vaddq_f32(vmulq_f32(v10[1], vqtbl1q_s8(v11, xmmword_29B6C2C80)), vmulq_f32(v10[3], vqtbl1q_s8(v11, xmmword_29B6C2BC0))), vaddq_f32(vaddq_f32(vmulq_f32(*v10, vqtbl1q_s8(v11, xmmword_29B6C2C70)), vmulq_f32(v10[2], vqtbl1q_s8(v11, xmmword_29B6C2C30))), vmulq_f32(v10[4], vqtbl1q_s8(v12, xmmword_29B6C2C70))));
  }

  while (result < v8);
  return result;
}

float32x4_t *sub_29AB43458(float32x4_t *result, int a2, uint64_t a3, int *a4, int8x16_t *a5, int a6)
{
  v6 = a5 + 1;
  v7 = (result + 4 * (4 * a2));
  do
  {
    v8 = *a4;
    a4 += 2;
    v9 = (a3 + 16 * v8);
    v10 = v6[-1];
    v11 = vmulq_f32(v9[1], vqtbl1q_s8(v10, xmmword_29B6C2C80));
    v12 = vaddq_f32(vmulq_f32(*v9, vqtbl1q_s8(v10, xmmword_29B6C2C70)), vmulq_f32(v9[2], vqtbl1q_s8(v10, xmmword_29B6C2C30)));
    v13 = vaddq_f32(v11, vmulq_f32(v9[3], vqtbl1q_s8(v10, xmmword_29B6C2BC0)));
    v11.i64[0] = v6->i64[0];
    *result++ = vaddq_f32(vaddq_f32(v12, vmulq_f32(v9[4], vqtbl1q_s8(v11, xmmword_29B6C2C70))), vaddq_f32(v13, vmulq_f32(v9[5], vqtbl1q_s8(v11, xmmword_29B6C2C80))));
    v6 = (v6 + 4 * a6);
  }

  while (result < v7);
  return result;
}

float32x4_t *sub_29AB434FC(float32x4_t *result, int a2, uint64_t a3, int *a4, int8x16_t *a5, int a6)
{
  v6 = a5 + 1;
  v7 = (result + 4 * (4 * a2));
  do
  {
    v8 = *a4;
    a4 += 2;
    v9 = (a3 + 16 * v8);
    v10 = v6[-1];
    *result++ = vaddq_f32(vaddq_f32(vaddq_f32(vmulq_f32(v9[1], vqtbl1q_s8(v10, xmmword_29B6C2C80)), vmulq_f32(v9[3], vqtbl1q_s8(v10, xmmword_29B6C2BC0))), vmulq_f32(v9[5], vqtbl1q_s8(*v6, xmmword_29B6C2C80))), vaddq_f32(vaddq_f32(vaddq_f32(vmulq_f32(*v9, vqtbl1q_s8(v10, xmmword_29B6C2C70)), vmulq_f32(v9[2], vqtbl1q_s8(v10, xmmword_29B6C2C30))), vmulq_f32(v9[4], vqtbl1q_s8(*v6, xmmword_29B6C2C70))), vmulq_f32(v9[6], vqtbl1q_s8(*v6, xmmword_29B6C2C30))));
    v6 = (v6 + 4 * a6);
  }

  while (result < v7);
  return result;
}

float32x4_t *sub_29AB435B0(float32x4_t *result, int a2, uint64_t a3, int *a4, int8x16_t *a5, int a6)
{
  v6 = a5 + 1;
  v7 = (result + 4 * (4 * a2));
  do
  {
    v8 = *a4;
    a4 += 2;
    v9 = (a3 + 16 * v8);
    v10 = v6[-1];
    *result++ = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vmulq_f32(*v9, vqtbl1q_s8(v10, xmmword_29B6C2C70)), vmulq_f32(v9[2], vqtbl1q_s8(v10, xmmword_29B6C2C30))), vmulq_f32(v9[4], vqtbl1q_s8(*v6, xmmword_29B6C2C70))), vmulq_f32(v9[6], vqtbl1q_s8(*v6, xmmword_29B6C2C30))), vaddq_f32(vaddq_f32(vaddq_f32(vmulq_f32(v9[1], vqtbl1q_s8(v10, xmmword_29B6C2C80)), vmulq_f32(v9[3], vqtbl1q_s8(v10, xmmword_29B6C2BC0))), vmulq_f32(v9[5], vqtbl1q_s8(*v6, xmmword_29B6C2C80))), vmulq_f32(v9[7], vqtbl1q_s8(*v6, xmmword_29B6C2BC0))));
    v6 = (v6 + 4 * a6);
  }

  while (result < v7);
  return result;
}

float32x4_t *sub_29AB43670(float32x4_t *result, int a2, uint64_t a3, int *a4, uint64_t a5, int a6)
{
  v6 = (a5 + 32);
  v8 = (result + 4 * (4 * a2));
  do
  {
    v9 = *a4;
    a4 += 2;
    v10 = (a3 + 16 * v9);
    v11 = *(v6 - 8);
    v12 = vmulq_f32(*v10, vqtbl1q_s8(v11, xmmword_29B6C2C70));
    v13 = vmulq_f32(v10[2], vqtbl1q_s8(v11, xmmword_29B6C2C30));
    v14 = *(v6 - 4);
    v15 = vaddq_f32(vaddq_f32(vmulq_f32(v10[1], vqtbl1q_s8(v11, xmmword_29B6C2C80)), vmulq_f32(v10[3], vqtbl1q_s8(v11, xmmword_29B6C2BC0))), vmulq_f32(v10[5], vqtbl1q_s8(v14, xmmword_29B6C2C80)));
    v16 = vmulq_f32(v10[7], vqtbl1q_s8(v14, xmmword_29B6C2BC0));
    v17 = vaddq_f32(vaddq_f32(vaddq_f32(v12, v13), vmulq_f32(v10[4], vqtbl1q_s8(v14, xmmword_29B6C2C70))), vmulq_f32(v10[6], vqtbl1q_s8(v14, xmmword_29B6C2C30)));
    v18 = vld1q_dup_f32(v6);
    v7 = 4 * a6;
    v6 = (v6 + v7);
    *result++ = vaddq_f32(vaddq_f32(v15, v16), vaddq_f32(v17, vmulq_f32(v10[8], vqtbl1q_s8(v18, xmmword_29B6C2C70))));
  }

  while (result < v8);
  return result;
}

float32x4_t *sub_29AB43740(float32x4_t *result, int a2, uint64_t a3, int *a4, int8x16_t *a5, int a6)
{
  v6 = a5 + 2;
  v7 = (result + 4 * (4 * a2));
  do
  {
    v8 = *a4;
    a4 += 2;
    v9 = (a3 + 16 * v8);
    v10 = v6[-2];
    v11 = vaddq_f32(vmulq_f32(*v9, vqtbl1q_s8(v10, xmmword_29B6C2C70)), vmulq_f32(v9[2], vqtbl1q_s8(v10, xmmword_29B6C2C30)));
    v12 = v6[-1];
    v13 = vaddq_f32(vaddq_f32(vmulq_f32(v9[1], vqtbl1q_s8(v10, xmmword_29B6C2C80)), vmulq_f32(v9[3], vqtbl1q_s8(v10, xmmword_29B6C2BC0))), vmulq_f32(v9[5], vqtbl1q_s8(v12, xmmword_29B6C2C80)));
    v14 = vaddq_f32(vaddq_f32(v11, vmulq_f32(v9[4], vqtbl1q_s8(v12, xmmword_29B6C2C70))), vmulq_f32(v9[6], vqtbl1q_s8(v12, xmmword_29B6C2C30)));
    v15 = vmulq_f32(v9[7], vqtbl1q_s8(v12, xmmword_29B6C2BC0));
    v12.i64[0] = v6->i64[0];
    *result++ = vaddq_f32(vaddq_f32(v14, vmulq_f32(v9[8], vqtbl1q_s8(v12, xmmword_29B6C2C70))), vaddq_f32(vaddq_f32(v13, v15), vmulq_f32(v9[9], vqtbl1q_s8(v12, xmmword_29B6C2C80))));
    v6 = (v6 + 4 * a6);
  }

  while (result < v7);
  return result;
}

float32x4_t *sub_29AB43820(float32x4_t *result, int a2, uint64_t a3, int *a4, int8x16_t *a5, int a6)
{
  v6 = a5 + 2;
  v7 = (result + 4 * (4 * a2));
  do
  {
    v8 = *a4;
    a4 += 2;
    v9 = (a3 + 16 * v8);
    v10 = v6[-2];
    v11 = v6[-1];
    *result++ = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vmulq_f32(v9[1], vqtbl1q_s8(v10, xmmword_29B6C2C80)), vmulq_f32(v9[3], vqtbl1q_s8(v10, xmmword_29B6C2BC0))), vmulq_f32(v9[5], vqtbl1q_s8(v11, xmmword_29B6C2C80))), vmulq_f32(v9[7], vqtbl1q_s8(v11, xmmword_29B6C2BC0))), vmulq_f32(v9[9], vqtbl1q_s8(*v6, xmmword_29B6C2C80))), vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vmulq_f32(*v9, vqtbl1q_s8(v10, xmmword_29B6C2C70)), vmulq_f32(v9[2], vqtbl1q_s8(v10, xmmword_29B6C2C30))), vmulq_f32(v9[4], vqtbl1q_s8(v11, xmmword_29B6C2C70))), vmulq_f32(v9[6], vqtbl1q_s8(v11, xmmword_29B6C2C30))), vmulq_f32(v9[8], vqtbl1q_s8(*v6, xmmword_29B6C2C70))), vmulq_f32(v9[10], vqtbl1q_s8(*v6, xmmword_29B6C2C30))));
    v6 = (v6 + 4 * a6);
  }

  while (result < v7);
  return result;
}

float32x4_t *sub_29AB43910(float32x4_t *result, int a2, uint64_t a3, int *a4, int8x16_t *a5, int a6)
{
  v6 = a5 + 2;
  v7 = (result + 4 * (4 * a2));
  do
  {
    v8 = *a4;
    a4 += 2;
    v9 = (a3 + 16 * v8);
    v10 = v6[-2];
    v11 = v6[-1];
    *result++ = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vmulq_f32(*v9, vqtbl1q_s8(v10, xmmword_29B6C2C70)), vmulq_f32(v9[2], vqtbl1q_s8(v10, xmmword_29B6C2C30))), vmulq_f32(v9[4], vqtbl1q_s8(v11, xmmword_29B6C2C70))), vmulq_f32(v9[6], vqtbl1q_s8(v11, xmmword_29B6C2C30))), vmulq_f32(v9[8], vqtbl1q_s8(*v6, xmmword_29B6C2C70))), vmulq_f32(v9[10], vqtbl1q_s8(*v6, xmmword_29B6C2C30))), vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vmulq_f32(v9[1], vqtbl1q_s8(v10, xmmword_29B6C2C80)), vmulq_f32(v9[3], vqtbl1q_s8(v10, xmmword_29B6C2BC0))), vmulq_f32(v9[5], vqtbl1q_s8(v11, xmmword_29B6C2C80))), vmulq_f32(v9[7], vqtbl1q_s8(v11, xmmword_29B6C2BC0))), vmulq_f32(v9[9], vqtbl1q_s8(*v6, xmmword_29B6C2C80))), vmulq_f32(v9[11], vqtbl1q_s8(*v6, xmmword_29B6C2BC0))));
    v6 = (v6 + 4 * a6);
  }

  while (result < v7);
  return result;
}

unint64_t sub_29AB43A0C(unint64_t result, int a2, uint64_t a3, int *a4, const float *a5, int a6)
{
  v6 = result + 4 * (7 * a2);
  do
  {
    v8 = *a4;
    a4 += 2;
    v9 = a3 + 28 * v8;
    v10 = vld1q_dup_f32(a5);
    v7 = 4 * a6;
    a5 = (a5 + v7);
    v11 = vqtbl1q_s8(v10, xmmword_29B6C2C70);
    v12 = vmulq_f32(*v9, v11);
    *(result + 12) = vmulq_f32(*(v9 + 12), v11);
    *result = v12;
    result += 28;
  }

  while (result < v6);
  return result;
}

unint64_t sub_29AB43A5C(unint64_t result, int a2, uint64_t a3, int *a4, unint64_t *a5, int a6, double a7, double a8, int8x16_t a9)
{
  v9 = result + 4 * (7 * a2);
  do
  {
    v10 = *a4;
    a4 += 2;
    v11 = a3 + 28 * v10;
    a9.i64[0] = *a5;
    v12 = vqtbl1q_s8(a9, xmmword_29B6C2C70);
    v13 = vqtbl1q_s8(a9, xmmword_29B6C2C80);
    v14 = vaddq_f32(vmulq_f32(*v11, v12), vmulq_f32(*(v11 + 28), v13));
    a9 = vaddq_f32(vmulq_f32(*(v11 + 12), v12), vmulq_f32(*(v11 + 40), v13));
    *(result + 12) = a9;
    *result = v14;
    result += 28;
    a5 = (a5 + 4 * a6);
  }

  while (result < v9);
  return result;
}

unint64_t sub_29AB43AD4(unint64_t result, int a2, uint64_t a3, int *a4, int8x16_t *a5, int a6)
{
  v6 = result + 4 * (7 * a2);
  do
  {
    v7 = *a4;
    a4 += 2;
    v8 = a3 + 28 * v7;
    v9 = vqtbl1q_s8(*a5, xmmword_29B6C2C70);
    v10 = vqtbl1q_s8(*a5, xmmword_29B6C2C80);
    v11 = vqtbl1q_s8(*a5, xmmword_29B6C2C30);
    v12 = vaddq_f32(vaddq_f32(vmulq_f32(*v8, v9), vmulq_f32(*(v8 + 28), v10)), vmulq_f32(*(v8 + 56), v11));
    *(result + 12) = vaddq_f32(vaddq_f32(vmulq_f32(*(v8 + 12), v9), vmulq_f32(*(v8 + 40), v10)), vmulq_f32(*(v8 + 68), v11));
    *result = v12;
    result += 28;
    a5 = (a5 + 4 * a6);
  }

  while (result < v6);
  return result;
}

unint64_t sub_29AB43B70(unint64_t result, int a2, uint64_t a3, int *a4, int8x16_t *a5, int a6)
{
  v6 = result + 4 * (7 * a2);
  do
  {
    v7 = *a4;
    a4 += 2;
    v8 = a3 + 28 * v7;
    v9 = vqtbl1q_s8(*a5, xmmword_29B6C2C70);
    v10 = vqtbl1q_s8(*a5, xmmword_29B6C2C80);
    v11 = vqtbl1q_s8(*a5, xmmword_29B6C2C30);
    v12 = vqtbl1q_s8(*a5, xmmword_29B6C2BC0);
    v13 = vaddq_f32(vaddq_f32(vmulq_f32(*v8, v9), vmulq_f32(*(v8 + 56), v11)), vaddq_f32(vmulq_f32(*(v8 + 28), v10), vmulq_f32(*(v8 + 84), v12)));
    *(result + 12) = vaddq_f32(vaddq_f32(vmulq_f32(*(v8 + 12), v9), vmulq_f32(*(v8 + 68), v11)), vaddq_f32(vmulq_f32(*(v8 + 40), v10), vmulq_f32(*(v8 + 96), v12)));
    *result = v13;
    result += 28;
    a5 = (a5 + 4 * a6);
  }

  while (result < v6);
  return result;
}

unint64_t sub_29AB43C30(unint64_t result, int a2, uint64_t a3, int *a4, uint64_t a5, int a6)
{
  v6 = (a5 + 16);
  v8 = result + 4 * (7 * a2);
  do
  {
    v9 = *a4;
    a4 += 2;
    v10 = a3 + 28 * v9;
    v11 = *(v6 - 4);
    v12 = vqtbl1q_s8(v11, xmmword_29B6C2C70);
    v13 = vqtbl1q_s8(v11, xmmword_29B6C2C80);
    v14 = vqtbl1q_s8(v11, xmmword_29B6C2C30);
    v15 = vqtbl1q_s8(v11, xmmword_29B6C2BC0);
    v16 = vaddq_f32(vmulq_f32(*(v10 + 28), v13), vmulq_f32(*(v10 + 84), v15));
    v17 = vaddq_f32(vmulq_f32(*(v10 + 40), v13), vmulq_f32(*(v10 + 96), v15));
    v18 = vld1q_dup_f32(v6);
    v7 = 4 * a6;
    v6 = (v6 + v7);
    v19 = vqtbl1q_s8(v18, xmmword_29B6C2C70);
    v20 = vaddq_f32(v16, vaddq_f32(vaddq_f32(vmulq_f32(*v10, v12), vmulq_f32(*(v10 + 56), v14)), vmulq_f32(*(v10 + 112), v19)));
    *(result + 12) = vaddq_f32(v17, vaddq_f32(vaddq_f32(vmulq_f32(*(v10 + 12), v12), vmulq_f32(*(v10 + 68), v14)), vmulq_f32(*(v10 + 124), v19)));
    *result = v20;
    result += 28;
  }

  while (result < v8);
  return result;
}

unint64_t sub_29AB43D0C(unint64_t result, int a2, uint64_t a3, int *a4, int8x16_t *a5, int a6)
{
  v6 = a5 + 1;
  v7 = result + 4 * (7 * a2);
  do
  {
    v8 = *a4;
    a4 += 2;
    v9 = a3 + 28 * v8;
    v10 = v6[-1];
    v11 = vqtbl1q_s8(v10, xmmword_29B6C2C70);
    v12 = vqtbl1q_s8(v10, xmmword_29B6C2C80);
    v13 = vmulq_f32(*(v9 + 28), v12);
    v14 = vmulq_f32(*(v9 + 40), v12);
    v15 = vqtbl1q_s8(v10, xmmword_29B6C2C30);
    v16 = vaddq_f32(vmulq_f32(*v9, v11), vmulq_f32(*(v9 + 56), v15));
    v17 = vaddq_f32(vmulq_f32(*(v9 + 12), v11), vmulq_f32(*(v9 + 68), v15));
    v18 = vqtbl1q_s8(v10, xmmword_29B6C2BC0);
    v19 = vaddq_f32(v13, vmulq_f32(*(v9 + 84), v18));
    v20 = vaddq_f32(v14, vmulq_f32(*(v9 + 96), v18));
    v14.i64[0] = v6->i64[0];
    v21 = vqtbl1q_s8(v14, xmmword_29B6C2C70);
    v22 = vqtbl1q_s8(v14, xmmword_29B6C2C80);
    v23 = vaddq_f32(vaddq_f32(v16, vmulq_f32(*(v9 + 112), v21)), vaddq_f32(v19, vmulq_f32(*(v9 + 140), v22)));
    *(result + 12) = vaddq_f32(vaddq_f32(v17, vmulq_f32(*(v9 + 124), v21)), vaddq_f32(v20, vmulq_f32(*(v9 + 152), v22)));
    *result = v23;
    result += 28;
    v6 = (v6 + 4 * a6);
  }

  while (result < v7);
  return result;
}

unint64_t sub_29AB43E08(unint64_t result, int a2, uint64_t a3, int *a4, int8x16_t *a5, int a6)
{
  v6 = a5 + 1;
  v7 = result + 4 * (7 * a2);
  do
  {
    v8 = *a4;
    a4 += 2;
    v9 = a3 + 28 * v8;
    v10 = v6[-1];
    v11 = vqtbl1q_s8(v10, xmmword_29B6C2C70);
    v12 = vmulq_f32(*v9, v11);
    v13 = vqtbl1q_s8(v10, xmmword_29B6C2C80);
    v14 = vqtbl1q_s8(v10, xmmword_29B6C2C30);
    v15 = vqtbl1q_s8(v10, xmmword_29B6C2BC0);
    v16 = vaddq_f32(vmulq_f32(*(v9 + 12), v11), vmulq_f32(*(v9 + 68), v14));
    v17 = vaddq_f32(vmulq_f32(*(v9 + 28), v13), vmulq_f32(*(v9 + 84), v15));
    v18 = vaddq_f32(vmulq_f32(*(v9 + 40), v13), vmulq_f32(*(v9 + 96), v15));
    v19 = vqtbl1q_s8(*v6, xmmword_29B6C2C70);
    v20 = vaddq_f32(vaddq_f32(v12, vmulq_f32(*(v9 + 56), v14)), vmulq_f32(*(v9 + 112), v19));
    v21 = vqtbl1q_s8(*v6, xmmword_29B6C2C80);
    v22 = vqtbl1q_s8(*v6, xmmword_29B6C2C30);
    v23 = vaddq_f32(vaddq_f32(v17, vmulq_f32(*(v9 + 140), v21)), vaddq_f32(v20, vmulq_f32(*(v9 + 168), v22)));
    *(result + 12) = vaddq_f32(vaddq_f32(v18, vmulq_f32(*(v9 + 152), v21)), vaddq_f32(vaddq_f32(v16, vmulq_f32(*(v9 + 124), v19)), vmulq_f32(*(v9 + 180), v22)));
    *result = v23;
    result += 28;
    v6 = (v6 + 4 * a6);
  }

  while (result < v7);
  return result;
}

unint64_t sub_29AB43F20(unint64_t result, int a2, uint64_t a3, int *a4, int8x16_t *a5, int a6)
{
  v6 = a5 + 1;
  v7 = result + 4 * (7 * a2);
  do
  {
    v8 = *a4;
    a4 += 2;
    v9 = a3 + 28 * v8;
    v10 = v6[-1];
    v11 = vqtbl1q_s8(v10, xmmword_29B6C2C70);
    v12 = vqtbl1q_s8(v10, xmmword_29B6C2C80);
    v13 = vqtbl1q_s8(v10, xmmword_29B6C2C30);
    v14 = vaddq_f32(vmulq_f32(*v9, v11), vmulq_f32(*(v9 + 56), v13));
    v15 = vqtbl1q_s8(v10, xmmword_29B6C2BC0);
    v16 = vaddq_f32(vmulq_f32(*(v9 + 12), v11), vmulq_f32(*(v9 + 68), v13));
    v17 = vaddq_f32(vmulq_f32(*(v9 + 28), v12), vmulq_f32(*(v9 + 84), v15));
    v18 = vqtbl1q_s8(*v6, xmmword_29B6C2C70);
    v19 = vaddq_f32(v14, vmulq_f32(*(v9 + 112), v18));
    v20 = vaddq_f32(v16, vmulq_f32(*(v9 + 124), v18));
    v21 = vqtbl1q_s8(*v6, xmmword_29B6C2C80);
    v22 = vqtbl1q_s8(*v6, xmmword_29B6C2C30);
    v23 = vaddq_f32(vaddq_f32(vmulq_f32(*(v9 + 40), v12), vmulq_f32(*(v9 + 96), v15)), vmulq_f32(*(v9 + 152), v21));
    v24 = vqtbl1q_s8(*v6, xmmword_29B6C2BC0);
    v25 = vaddq_f32(vaddq_f32(v19, vmulq_f32(*(v9 + 168), v22)), vaddq_f32(vaddq_f32(v17, vmulq_f32(*(v9 + 140), v21)), vmulq_f32(*(v9 + 196), v24)));
    *(result + 12) = vaddq_f32(vaddq_f32(v20, vmulq_f32(*(v9 + 180), v22)), vaddq_f32(v23, vmulq_f32(*(v9 + 208), v24)));
    *result = v25;
    result += 28;
    v6 = (v6 + 4 * a6);
  }

  while (result < v7);
  return result;
}

unint64_t sub_29AB44054(unint64_t result, int a2, uint64_t a3, int *a4, uint64_t a5, int a6)
{
  v6 = (a5 + 32);
  v8 = result + 4 * (7 * a2);
  do
  {
    v9 = *a4;
    a4 += 2;
    v10 = a3 + 28 * v9;
    v11 = *(v6 - 8);
    v12 = vqtbl1q_s8(v11, xmmword_29B6C2C70);
    v13 = vqtbl1q_s8(v11, xmmword_29B6C2C80);
    v14 = vqtbl1q_s8(v11, xmmword_29B6C2C30);
    v15 = vaddq_f32(vmulq_f32(*v10, v12), vmulq_f32(*(v10 + 56), v14));
    v16 = vaddq_f32(vmulq_f32(*(v10 + 12), v12), vmulq_f32(*(v10 + 68), v14));
    v17 = vqtbl1q_s8(v11, xmmword_29B6C2BC0);
    v18 = vaddq_f32(vmulq_f32(*(v10 + 28), v13), vmulq_f32(*(v10 + 84), v17));
    v19 = *(v6 - 4);
    v20 = vqtbl1q_s8(v19, xmmword_29B6C2C70);
    v21 = vaddq_f32(vmulq_f32(*(v10 + 40), v13), vmulq_f32(*(v10 + 96), v17));
    v22 = vaddq_f32(v15, vmulq_f32(*(v10 + 112), v20));
    v23 = vmulq_f32(*(v10 + 124), v20);
    v24 = vqtbl1q_s8(v19, xmmword_29B6C2C80);
    v25 = vaddq_f32(v16, v23);
    v26 = vaddq_f32(v18, vmulq_f32(*(v10 + 140), v24));
    v27 = vmulq_f32(*(v10 + 152), v24);
    v28 = vqtbl1q_s8(v19, xmmword_29B6C2C30);
    v29 = vaddq_f32(v21, v27);
    v30 = vqtbl1q_s8(v19, xmmword_29B6C2BC0);
    v31 = vld1q_dup_f32(v6);
    v7 = 4 * a6;
    v6 = (v6 + v7);
    v32 = vqtbl1q_s8(v31, xmmword_29B6C2C70);
    v33 = vaddq_f32(vaddq_f32(v26, vmulq_f32(*(v10 + 196), v30)), vaddq_f32(vaddq_f32(v22, vmulq_f32(*(v10 + 168), v28)), vmulq_f32(*(v10 + 224), v32)));
    *(result + 12) = vaddq_f32(vaddq_f32(v29, vmulq_f32(*(v10 + 208), v30)), vaddq_f32(vaddq_f32(v25, vmulq_f32(*(v10 + 180), v28)), vmulq_f32(*(v10 + 236), v32)));
    *result = v33;
    result += 28;
  }

  while (result < v8);
  return result;
}

unint64_t sub_29AB441A4(unint64_t result, int a2, uint64_t a3, int *a4, int8x16_t *a5, int a6)
{
  v6 = a5 + 2;
  v7 = result + 4 * (7 * a2);
  do
  {
    v8 = *a4;
    a4 += 2;
    v9 = a3 + 28 * v8;
    v10 = v6[-2];
    v11 = vqtbl1q_s8(v10, xmmword_29B6C2C70);
    v12 = vmulq_f32(*v9, v11);
    v13 = vqtbl1q_s8(v10, xmmword_29B6C2C80);
    v14 = vqtbl1q_s8(v10, xmmword_29B6C2C30);
    v15 = vqtbl1q_s8(v10, xmmword_29B6C2BC0);
    v16 = vaddq_f32(vmulq_f32(*(v9 + 12), v11), vmulq_f32(*(v9 + 68), v14));
    v17 = vaddq_f32(vmulq_f32(*(v9 + 28), v13), vmulq_f32(*(v9 + 84), v15));
    v18 = vaddq_f32(vmulq_f32(*(v9 + 40), v13), vmulq_f32(*(v9 + 96), v15));
    v19 = v6[-1];
    v20 = vqtbl1q_s8(v19, xmmword_29B6C2C70);
    v21 = vaddq_f32(vaddq_f32(v12, vmulq_f32(*(v9 + 56), v14)), vmulq_f32(*(v9 + 112), v20));
    v22 = vqtbl1q_s8(v19, xmmword_29B6C2C80);
    v23 = vaddq_f32(v16, vmulq_f32(*(v9 + 124), v20));
    v24 = vaddq_f32(v17, vmulq_f32(*(v9 + 140), v22));
    v25 = vmulq_f32(*(v9 + 152), v22);
    v26 = vqtbl1q_s8(v19, xmmword_29B6C2C30);
    v27 = vqtbl1q_s8(v19, xmmword_29B6C2BC0);
    v28 = vaddq_f32(v24, vmulq_f32(*(v9 + 196), v27));
    v29 = vmulq_f32(*(v9 + 208), v27);
    v30 = vaddq_f32(vaddq_f32(v18, v25), v29);
    v29.i64[0] = v6->i64[0];
    v31 = vqtbl1q_s8(v29, xmmword_29B6C2C70);
    v32 = vqtbl1q_s8(v29, xmmword_29B6C2C80);
    v33 = vaddq_f32(vaddq_f32(vaddq_f32(v21, vmulq_f32(*(v9 + 168), v26)), vmulq_f32(*(v9 + 224), v31)), vaddq_f32(v28, vmulq_f32(*(v9 + 252), v32)));
    *(result + 12) = vaddq_f32(vaddq_f32(vaddq_f32(v23, vmulq_f32(*(v9 + 180), v26)), vmulq_f32(*(v9 + 236), v31)), vaddq_f32(v30, vmulq_f32(*(v9 + 264), v32)));
    *result = v33;
    result += 28;
    v6 = (v6 + 4 * a6);
  }

  while (result < v7);
  return result;
}

unint64_t sub_29AB44314(unint64_t result, int a2, uint64_t a3, int *a4, int8x16_t *a5, int a6)
{
  v6 = a5 + 2;
  v7 = result + 4 * (7 * a2);
  do
  {
    v8 = *a4;
    a4 += 2;
    v9 = a3 + 28 * v8;
    v10 = v6[-2];
    v11 = vqtbl1q_s8(v10, xmmword_29B6C2C70);
    v12 = vqtbl1q_s8(v10, xmmword_29B6C2C80);
    v13 = vqtbl1q_s8(v10, xmmword_29B6C2C30);
    v14 = vaddq_f32(vmulq_f32(*v9, v11), vmulq_f32(*(v9 + 56), v13));
    v15 = vaddq_f32(vmulq_f32(*(v9 + 12), v11), vmulq_f32(*(v9 + 68), v13));
    v16 = vqtbl1q_s8(v10, xmmword_29B6C2BC0);
    v17 = vaddq_f32(vmulq_f32(*(v9 + 28), v12), vmulq_f32(*(v9 + 84), v16));
    v18 = v6[-1];
    v19 = vqtbl1q_s8(v18, xmmword_29B6C2C70);
    v20 = vaddq_f32(vmulq_f32(*(v9 + 40), v12), vmulq_f32(*(v9 + 96), v16));
    v21 = vaddq_f32(v14, vmulq_f32(*(v9 + 112), v19));
    v22 = vaddq_f32(v15, vmulq_f32(*(v9 + 124), v19));
    v23 = vqtbl1q_s8(v18, xmmword_29B6C2C80);
    v24 = vmulq_f32(*(v9 + 140), v23);
    v25 = vaddq_f32(v20, vmulq_f32(*(v9 + 152), v23));
    v26 = vqtbl1q_s8(v18, xmmword_29B6C2C30);
    v27 = vaddq_f32(v21, vmulq_f32(*(v9 + 168), v26));
    v28 = vaddq_f32(v22, vmulq_f32(*(v9 + 180), v26));
    v29 = vqtbl1q_s8(v18, xmmword_29B6C2BC0);
    v30 = vaddq_f32(vaddq_f32(v17, v24), vmulq_f32(*(v9 + 196), v29));
    v31 = vqtbl1q_s8(*v6, xmmword_29B6C2C70);
    v32 = vaddq_f32(v25, vmulq_f32(*(v9 + 208), v29));
    v33 = vqtbl1q_s8(*v6, xmmword_29B6C2C80);
    v34 = vqtbl1q_s8(*v6, xmmword_29B6C2C30);
    v35 = vaddq_f32(vaddq_f32(v30, vmulq_f32(*(v9 + 252), v33)), vaddq_f32(vaddq_f32(v27, vmulq_f32(*(v9 + 224), v31)), vmulq_f32(*(v9 + 280), v34)));
    *(result + 12) = vaddq_f32(vaddq_f32(v32, vmulq_f32(*(v9 + 264), v33)), vaddq_f32(vaddq_f32(v28, vmulq_f32(*(v9 + 236), v31)), vmulq_f32(*(v9 + 292), v34)));
    *result = v35;
    result += 28;
    v6 = (v6 + 4 * a6);
  }

  while (result < v7);
  return result;
}

unint64_t sub_29AB444B0(unint64_t result, int a2, uint64_t a3, int *a4, int8x16_t *a5, int a6)
{
  v6 = a5 + 2;
  v7 = result + 4 * (7 * a2);
  do
  {
    v8 = *a4;
    a4 += 2;
    v9 = a3 + 28 * v8;
    v10 = v6[-2];
    v11 = vqtbl1q_s8(v10, xmmword_29B6C2C70);
    v12 = vqtbl1q_s8(v10, xmmword_29B6C2C80);
    v13 = vqtbl1q_s8(v10, xmmword_29B6C2C30);
    v14 = vaddq_f32(vmulq_f32(*v9, v11), vmulq_f32(*(v9 + 56), v13));
    v15 = vaddq_f32(vmulq_f32(*(v9 + 12), v11), vmulq_f32(*(v9 + 68), v13));
    v16 = vqtbl1q_s8(v10, xmmword_29B6C2BC0);
    v17 = vaddq_f32(vmulq_f32(*(v9 + 28), v12), vmulq_f32(*(v9 + 84), v16));
    v18 = v6[-1];
    v19 = vqtbl1q_s8(v18, xmmword_29B6C2C70);
    v20 = vaddq_f32(vmulq_f32(*(v9 + 40), v12), vmulq_f32(*(v9 + 96), v16));
    v21 = vaddq_f32(v14, vmulq_f32(*(v9 + 112), v19));
    v22 = vmulq_f32(*(v9 + 124), v19);
    v23 = vqtbl1q_s8(v18, xmmword_29B6C2C80);
    v24 = vaddq_f32(v15, v22);
    v25 = vaddq_f32(v17, vmulq_f32(*(v9 + 140), v23));
    v26 = vmulq_f32(*(v9 + 152), v23);
    v27 = vqtbl1q_s8(v18, xmmword_29B6C2C30);
    v28 = vaddq_f32(v20, v26);
    v29 = vaddq_f32(v21, vmulq_f32(*(v9 + 168), v27));
    v30 = vaddq_f32(v24, vmulq_f32(*(v9 + 180), v27));
    v31 = vqtbl1q_s8(v18, xmmword_29B6C2BC0);
    v32 = vmulq_f32(*(v9 + 196), v31);
    v33 = vqtbl1q_s8(*v6, xmmword_29B6C2C70);
    v34 = vaddq_f32(v28, vmulq_f32(*(v9 + 208), v31));
    v35 = vaddq_f32(v29, vmulq_f32(*(v9 + 224), v33));
    v36 = vmulq_f32(*(v9 + 236), v33);
    v37 = vqtbl1q_s8(*v6, xmmword_29B6C2C80);
    v38 = vaddq_f32(v30, v36);
    v39 = vaddq_f32(vaddq_f32(v25, v32), vmulq_f32(*(v9 + 252), v37));
    v40 = vqtbl1q_s8(*v6, xmmword_29B6C2C30);
    v41 = vqtbl1q_s8(*v6, xmmword_29B6C2BC0);
    v42 = vaddq_f32(vaddq_f32(v35, vmulq_f32(*(v9 + 280), v40)), vaddq_f32(v39, vmulq_f32(*(v9 + 308), v41)));
    *(result + 12) = vaddq_f32(vaddq_f32(v38, vmulq_f32(*(v9 + 292), v40)), vaddq_f32(vaddq_f32(v34, vmulq_f32(*(v9 + 264), v37)), vmulq_f32(*(v9 + 320), v41)));
    *result = v42;
    result += 28;
    v6 = (v6 + 4 * a6);
  }

  while (result < v7);
  return result;
}

float sub_29AB44664(float *a1, int a2, unsigned __int8 *a3)
{
  v3 = &a1[a2];
  if (a2 >= 4)
  {
    do
    {
      *a1 = flt_29B6C31E4[*a3];
      a1[1] = flt_29B6C31E4[a3[1]];
      a1[2] = flt_29B6C31E4[a3[2]];
      result = flt_29B6C31E4[a3[3]];
      a1[3] = result;
      a3 += 4;
      v4 = a1 + 4;
      v6 = (a1 + 8);
      a1 += 4;
    }

    while (v6 <= v3);
  }

  else
  {
    v4 = a1;
  }

  for (; v4 < v3; ++v4)
  {
    v7 = *a3++;
    result = flt_29B6C31E4[v7];
    *v4 = result;
  }

  return result;
}

unint64_t sub_29AB446F0(unint64_t result, int a2, char *a3)
{
  if (result != a3)
  {
    return sub_29AB402A4(result, a3, 4 * a2);
  }

  return result;
}

double sub_29AB4470C(__n128 *a1, int a2, unsigned __int16 *a3, float32x4_t a4, int16x4_t a5)
{
  v5 = (a1 + 4 * a2);
  if (a2 <= 7)
  {
    if (a2 >= 4)
    {
      do
      {
        v9 = a1 + 1;
        a4.i16[0] = *a3;
        a5.i16[0] = a3[1];
        v10 = vcvtq_f32_f16(vdup_lane_s16(a5, 0)).u64[0];
        v11 = vzip1_s32(*&vcvtq_f32_f16(vdup_lane_s16(*a4.f32, 0)), v10);
        a1->n128_u64[0] = v11;
        v11.i16[0] = a3[2];
        v10.i16[0] = a3[3];
        a5 = vcvtq_f32_f16(vdup_lane_s16(v10, 0)).u64[0];
        *a4.f32 = vzip1_s32(*&vcvtq_f32_f16(vdup_lane_s16(v11, 0)), a5);
        a1->n128_u64[1] = a4.i64[0];
        a3 += 4;
        v12 = a1 + 2;
        ++a1;
      }

      while (v12 <= v5);
    }

    else
    {
      v9 = a1;
    }

    while (v9 < v5)
    {
      v13 = *a3++;
      a4.i16[0] = v13;
      a4.i64[0] = vcvtq_f32_f16(vdup_lane_s16(*a4.f32, 0)).u64[0];
      v9->n128_u32[0] = a4.i32[0];
      v9 = (v9 + 4);
    }
  }

  else
  {
    v6 = &a3[a2 - 8];
    do
    {
      do
      {
        v7 = *a3;
        a3 += 8;
        a4 = vcvt_hight_f32_f16(v7);
        *a1 = vcvtq_f32_f16(*v7.i8);
        a1[1] = a4;
        a1 += 2;
      }

      while (a1 <= &v5[-2]);
      a3 = v6;
      v8 = a1 == v5;
      a1 = v5 - 2;
    }

    while (!v8);
  }

  return *a4.i64;
}

unint64_t sub_29AB447DC(unint64_t result, int a2, unsigned __int8 *a3)
{
  v3 = result + 4 * a2;
  do
  {
    *result = flt_29B6C31E4[*a3];
    *(result + 4) = flt_29B6C31E4[a3[1]];
    v4 = LODWORD(flt_29B6C31E4[a3[2]]);
    *(result + 8) = v4;
    LOBYTE(v4) = a3[3];
    *(result + 12) = v4 * 0.0039216;
    a3 += 4;
    result += 16;
  }

  while (result < v3);
  return result;
}

unint64_t sub_29AB44838(unint64_t result, int a2, uint64_t a3)
{
  v3 = result + 4 * a2;
  v4 = (a3 + 3);
  do
  {
    *result = flt_29B6C31E4[*(v4 - 1)];
    *(result + 4) = flt_29B6C31E4[*(v4 - 2)];
    v5 = LODWORD(flt_29B6C31E4[*(v4 - 3)]);
    *(result + 8) = v5;
    LOBYTE(v5) = *v4;
    *(result + 12) = v5 * 0.0039216;
    result += 16;
    v4 += 4;
  }

  while (result < v3);
  return result;
}

float sub_29AB44898(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 >= 4)
  {
    v3 = a1 + 16;
    v4 = (a3 + 1);
    do
    {
      *(v3 - 16) = flt_29B6C31E4[v4[1]];
      *(v3 - 12) = flt_29B6C31E4[*v4];
      *(v3 - 8) = flt_29B6C31E4[*(v4 - 1)];
      result = flt_29B6C31E4[v4[2]];
      *(v3 - 4) = result;
      v3 += 16;
      v4 += 4;
    }

    while (v3 <= a1 + 4 * a2);
  }

  return result;
}

float sub_29AB448F8(unint64_t a1, int a2, int8x16_t *a3)
{
  v3 = a1 + 4 * a2;
  if (a2 <= 15)
  {
    if (a2 >= 4)
    {
      v10 = a1 + 16;
      v11 = &a3->i64[1];
      do
      {
        *(v10 - 16) = *v11;
        *(v10 - 12) = *(v11 - 1);
        *(v10 - 8) = *(v11 - 2);
        result = *(v11 + 1);
        *(v10 - 4) = result;
        v10 += 16;
        v11 += 2;
      }

      while (v10 <= v3);
    }
  }

  else
  {
    v4 = a3[-4].i64 + 4 * a2;
    result = 2.6585e-32;
    do
    {
      do
      {
        v6 = vqtbl1q_s8(a3[1], xmmword_29B6C2C90);
        v7 = vqtbl1q_s8(a3[2], xmmword_29B6C2C90);
        v8 = vqtbl1q_s8(a3[3], xmmword_29B6C2C90);
        *a1 = vqtbl1q_s8(*a3, xmmword_29B6C2C90);
        *(a1 + 16) = v6;
        *(a1 + 32) = v7;
        *(a1 + 48) = v8;
        a1 += 64;
        a3 += 4;
      }

      while (a1 <= v3 - 64);
      a3 = v4;
      v9 = a1 == v3;
      a1 = v3 - 64;
    }

    while (!v9);
  }

  return result;
}

int16x4_t sub_29AB449A4(int8x16_t *a1, int a2, float16x8_t *a3, int16x4_t result, int16x4_t a5)
{
  v5 = (a1 + 4 * a2);
  if (a2 <= 7)
  {
    if (a2 >= 4)
    {
      v9 = a1 + 1;
      v10 = &a3->i16[2];
      do
      {
        result.i16[0] = *v10;
        a5.i16[0] = *(v10 - 1);
        v11 = vcvtq_f32_f16(vdup_lane_s16(a5, 0)).u64[0];
        v12 = vzip1_s32(*&vcvtq_f32_f16(vdup_lane_s16(result, 0)), v11);
        *v9[-1].i8 = v12;
        v12.i16[0] = *(v10 - 2);
        v11.i16[0] = v10[1];
        a5 = vcvtq_f32_f16(vdup_lane_s16(v11, 0)).u64[0];
        result = vzip1_s32(*&vcvtq_f32_f16(vdup_lane_s16(v12, 0)), a5);
        v9[-1].u64[1] = result;
        ++v9;
        v10 += 4;
      }

      while (v9 <= v5);
    }
  }

  else
  {
    v6 = a3[-1].i64 + 2 * a2;
    result = 0x70605040B0A0908;
    do
    {
      do
      {
        v7 = *a3++;
        *a1 = vqtbl1q_s8(vcvtq_f32_f16(*v7.i8), xmmword_29B6C2C90);
        a1[1] = vqtbl1q_s8(vcvt_hight_f32_f16(v7), xmmword_29B6C2C90);
        a1 += 2;
      }

      while (a1 <= &v5[-2]);
      a3 = v6;
      v8 = a1 == v5;
      a1 = v5 - 2;
    }

    while (!v8);
  }

  return result;
}

unint64_t sub_29AB44A60(unint64_t result, int a2, uint64_t a3)
{
  v3 = result + 4 * a2;
  v4 = (a3 + 3);
  do
  {
    *result = flt_29B6C31E4[*(v4 - 2)];
    *(result + 4) = flt_29B6C31E4[*(v4 - 1)];
    v5 = LODWORD(flt_29B6C31E4[*v4]);
    *(result + 8) = v5;
    LOBYTE(v5) = *(v4 - 3);
    *(result + 12) = v5 * 0.0039216;
    result += 16;
    v4 += 4;
  }

  while (result < v3);
  return result;
}

float sub_29AB44AC0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 >= 4)
  {
    v3 = a1 + 16;
    v4 = (a3 + 1);
    do
    {
      *(v3 - 16) = flt_29B6C31E4[*v4];
      *(v3 - 12) = flt_29B6C31E4[v4[1]];
      *(v3 - 8) = flt_29B6C31E4[v4[2]];
      result = flt_29B6C31E4[*(v4 - 1)];
      *(v3 - 4) = result;
      v3 += 16;
      v4 += 4;
    }

    while (v3 <= a1 + 4 * a2);
  }

  return result;
}

float sub_29AB44B20(unint64_t a1, int a2, int8x16_t *a3)
{
  v3 = a1 + 4 * a2;
  if (a2 <= 15)
  {
    if (a2 >= 4)
    {
      v10 = a1 + 16;
      v11 = &a3->i32[2];
      do
      {
        *(v10 - 16) = *(v11 - 1);
        *(v10 - 12) = *v11;
        *(v10 - 8) = v11[1];
        result = *(v11 - 2);
        *(v10 - 4) = result;
        v10 += 16;
        v11 += 4;
      }

      while (v10 <= v3);
    }
  }

  else
  {
    v4 = a3[-4].i64 + 4 * a2;
    result = 1.0083e-34;
    do
    {
      do
      {
        v6 = vqtbl1q_s8(a3[1], xmmword_29B6C2C00);
        v7 = vqtbl1q_s8(a3[2], xmmword_29B6C2C00);
        v8 = vqtbl1q_s8(a3[3], xmmword_29B6C2C00);
        *a1 = vqtbl1q_s8(*a3, xmmword_29B6C2C00);
        *(a1 + 16) = v6;
        *(a1 + 32) = v7;
        *(a1 + 48) = v8;
        a1 += 64;
        a3 += 4;
      }

      while (a1 <= v3 - 64);
      a3 = v4;
      v9 = a1 == v3;
      a1 = v3 - 64;
    }

    while (!v9);
  }

  return result;
}

int16x4_t sub_29AB44BCC(int8x16_t *a1, int a2, float16x8_t *a3, int16x4_t result, int16x4_t a5)
{
  v5 = (a1 + 4 * a2);
  if (a2 <= 7)
  {
    if (a2 >= 4)
    {
      v9 = a1 + 1;
      v10 = &a3->i16[2];
      do
      {
        result.i16[0] = *(v10 - 1);
        a5.i16[0] = *v10;
        v11 = vcvtq_f32_f16(vdup_lane_s16(a5, 0)).u64[0];
        v12 = vzip1_s32(*&vcvtq_f32_f16(vdup_lane_s16(result, 0)), v11);
        *v9[-1].i8 = v12;
        v12.i16[0] = v10[1];
        v11.i16[0] = *(v10 - 2);
        a5 = vcvtq_f32_f16(vdup_lane_s16(v11, 0)).u64[0];
        result = vzip1_s32(*&vcvtq_f32_f16(vdup_lane_s16(v12, 0)), a5);
        v9[-1].u64[1] = result;
        ++v9;
        v10 += 4;
      }

      while (v9 <= v5);
    }
  }

  else
  {
    v6 = a3[-1].i64 + 2 * a2;
    result = 0xB0A090807060504;
    do
    {
      do
      {
        v7 = *a3++;
        *a1 = vqtbl1q_s8(vcvtq_f32_f16(*v7.i8), xmmword_29B6C2C00);
        a1[1] = vqtbl1q_s8(vcvt_hight_f32_f16(v7), xmmword_29B6C2C00);
        a1 += 2;
      }

      while (a1 <= &v5[-2]);
      a3 = v6;
      v8 = a1 == v5;
      a1 = v5 - 2;
    }

    while (!v8);
  }

  return result;
}

unint64_t sub_29AB44C88(unint64_t result, int a2, uint64_t a3)
{
  v3 = result + 4 * a2;
  v4 = (a3 + 3);
  do
  {
    *result = flt_29B6C31E4[*v4];
    *(result + 4) = flt_29B6C31E4[*(v4 - 1)];
    v5 = LODWORD(flt_29B6C31E4[*(v4 - 2)]);
    *(result + 8) = v5;
    LOBYTE(v5) = *(v4 - 3);
    *(result + 12) = v5 * 0.0039216;
    result += 16;
    v4 += 4;
  }

  while (result < v3);
  return result;
}

float sub_29AB44CE8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 >= 4)
  {
    v3 = a1 + 16;
    v4 = (a3 + 3);
    do
    {
      *(v3 - 16) = flt_29B6C31E4[*v4];
      *(v3 - 12) = flt_29B6C31E4[*(v4 - 1)];
      *(v3 - 8) = flt_29B6C31E4[*(v4 - 2)];
      result = flt_29B6C31E4[*(v4 - 3)];
      *(v3 - 4) = result;
      v3 += 16;
      v4 += 4;
    }

    while (v3 <= a1 + 4 * a2);
  }

  return result;
}

float sub_29AB44D48(unint64_t a1, int a2, int8x16_t *a3)
{
  v3 = a1 + 4 * a2;
  if (a2 <= 15)
  {
    if (a2 >= 4)
    {
      v10 = a1 + 16;
      v11 = &a3->i32[2];
      do
      {
        *(v10 - 16) = v11[1];
        *(v10 - 12) = *v11;
        *(v10 - 8) = *(v11 - 1);
        result = *(v11 - 2);
        *(v10 - 4) = result;
        v10 += 16;
        v11 += 4;
      }

      while (v10 <= v3);
    }
  }

  else
  {
    v4 = a3[-4].i64 + 4 * a2;
    result = 7.0037e-30;
    do
    {
      do
      {
        v6 = vqtbl1q_s8(a3[1], xmmword_29B6C2CA0);
        v7 = vqtbl1q_s8(a3[2], xmmword_29B6C2CA0);
        v8 = vqtbl1q_s8(a3[3], xmmword_29B6C2CA0);
        *a1 = vqtbl1q_s8(*a3, xmmword_29B6C2CA0);
        *(a1 + 16) = v6;
        *(a1 + 32) = v7;
        *(a1 + 48) = v8;
        a1 += 64;
        a3 += 4;
      }

      while (a1 <= v3 - 64);
      a3 = v4;
      v9 = a1 == v3;
      a1 = v3 - 64;
    }

    while (!v9);
  }

  return result;
}

int16x4_t sub_29AB44DF4(int8x16_t *a1, int a2, float16x8_t *a3, int16x4_t result, int16x4_t a5)
{
  v5 = (a1 + 4 * a2);
  if (a2 <= 7)
  {
    if (a2 >= 4)
    {
      v9 = a1 + 1;
      v10 = &a3->i16[2];
      do
      {
        result.i16[0] = v10[1];
        a5.i16[0] = *v10;
        v11 = vcvtq_f32_f16(vdup_lane_s16(a5, 0)).u64[0];
        v12 = vzip1_s32(*&vcvtq_f32_f16(vdup_lane_s16(result, 0)), v11);
        *v9[-1].i8 = v12;
        v12.i16[0] = *(v10 - 1);
        v11.i16[0] = *(v10 - 2);
        a5 = vcvtq_f32_f16(vdup_lane_s16(v11, 0)).u64[0];
        result = vzip1_s32(*&vcvtq_f32_f16(vdup_lane_s16(v12, 0)), a5);
        v9[-1].u64[1] = result;
        ++v9;
        v10 += 4;
      }

      while (v9 <= v5);
    }
  }

  else
  {
    v6 = a3[-1].i64 + 2 * a2;
    result = 0xB0A09080F0E0D0CLL;
    do
    {
      do
      {
        v7 = *a3++;
        *a1 = vqtbl1q_s8(vcvtq_f32_f16(*v7.i8), xmmword_29B6C2CA0);
        a1[1] = vqtbl1q_s8(vcvt_hight_f32_f16(v7), xmmword_29B6C2CA0);
        a1 += 2;
      }

      while (a1 <= &v5[-2]);
      a3 = v6;
      v8 = a1 == v5;
      a1 = v5 - 2;
    }

    while (!v8);
  }

  return result;
}

__n128 sub_29AB44EB0(uint64_t a1, int a2, unsigned __int8 *a3, __n128 result)
{
  v4 = a1 + 4 * a2;
  if (a2 >= 4)
  {
    result.n128_u32[0] = 998277249;
    do
    {
      v6 = LODWORD(flt_29B6C31E4[*a3]);
      *a1 = v6;
      LOBYTE(v6) = a3[1];
      *(a1 + 4) = v6 * 0.0039216;
      v7 = LODWORD(flt_29B6C31E4[a3[2]]);
      *(a1 + 8) = v7;
      LOBYTE(v7) = a3[3];
      *(a1 + 12) = v7 * 0.0039216;
      a3 += 4;
      v5 = (a1 + 16);
      v8 = a1 + 32;
      a1 += 16;
    }

    while (v8 <= v4);
  }

  else
  {
    v5 = a1;
  }

  if (v5 < v4)
  {
    *v5 = 0;
    result.n128_u8[0] = a3[1];
    result.n128_f32[0] = result.n128_u32[0] * 0.0039216;
    v5[1] = result.n128_u32[0];
  }

  return result;
}

__n128 sub_29AB44F48(uint64_t a1, int a2, _BYTE *a3, __n128 result)
{
  v4 = a1 + 4 * a2;
  if (a2 >= 4)
  {
    result.n128_u32[0] = 998277249;
    do
    {
      v6 = LODWORD(flt_29B6C31E4[a3[1]]);
      *a1 = v6;
      LOBYTE(v6) = *a3;
      *(a1 + 4) = v6 * 0.0039216;
      v7 = LODWORD(flt_29B6C31E4[a3[3]]);
      *(a1 + 8) = v7;
      LOBYTE(v7) = a3[2];
      *(a1 + 12) = v7 * 0.0039216;
      a3 += 4;
      v5 = (a1 + 16);
      v8 = a1 + 32;
      a1 += 16;
    }

    while (v8 <= v4);
  }

  else
  {
    v5 = a1;
  }

  if (v5 < v4)
  {
    *v5 = 966746672;
    result.n128_u8[0] = *a3;
    result.n128_f32[0] = result.n128_u32[0] * 0.0039216;
    v5[1] = result.n128_u32[0];
  }

  return result;
}

float sub_29AB44FE8(float *a1, int a2, unsigned __int8 *a3)
{
  v3 = &a1[a2];
  if (a2 >= 4)
  {
    do
    {
      *a1 = flt_29B6C31E4[a3[1]];
      a1[1] = flt_29B6C31E4[*a3];
      a1[2] = flt_29B6C31E4[a3[3]];
      result = flt_29B6C31E4[a3[2]];
      a1[3] = result;
      a3 += 4;
      v4 = a1 + 4;
      v6 = a1 + 8;
      a1 += 4;
    }

    while (v6 <= v3);
  }

  else
  {
    v4 = a1;
  }

  if (v4 < v3)
  {
    v7 = a3 + 1;
    do
    {
      *v4 = flt_29B6C31E4[*v7];
      result = flt_29B6C31E4[*(v7 - 1)];
      v4[1] = result;
      v4 += 2;
      v7 += 2;
    }

    while (v4 < v3);
  }

  return result;
}

float sub_29AB4508C(unint64_t a1, int a2, uint64_t a3)
{
  v3 = a1 + 4 * a2;
  if (a2 <= 15)
  {
    if (a2 >= 4)
    {
      do
      {
        v10 = a1 + 16;
        *a1 = *(a3 + 4);
        *(a1 + 4) = *a3;
        *(a1 + 8) = *(a3 + 12);
        result = *(a3 + 8);
        *(a1 + 12) = result;
        a3 += 16;
        v11 = a1 + 32;
        a1 += 16;
      }

      while (v11 <= v3);
    }

    else
    {
      v10 = a1;
    }

    if (v10 < v3)
    {
      v12 = (a3 + 4);
      do
      {
        *v10 = *v12;
        result = *(v12 - 1);
        *(v10 + 4) = result;
        v10 += 8;
        v12 += 2;
      }

      while (v10 < v3);
    }
  }

  else
  {
    v4 = a3 + 4 * a2 - 64;
    result = 1.0083e-34;
    do
    {
      do
      {
        v6 = vqtbl1q_s8(*(a3 + 16), xmmword_29B6C2CB0);
        v7 = vqtbl1q_s8(*(a3 + 32), xmmword_29B6C2CB0);
        v8 = vqtbl1q_s8(*(a3 + 48), xmmword_29B6C2CB0);
        *a1 = vqtbl1q_s8(*a3, xmmword_29B6C2CB0);
        *(a1 + 16) = v6;
        *(a1 + 32) = v7;
        *(a1 + 48) = v8;
        a1 += 64;
        a3 += 64;
      }

      while (a1 <= v3 - 64);
      a3 = v4;
      v9 = a1 == v3;
      a1 = v3 - 64;
    }

    while (!v9);
  }

  return result;
}

int16x4_t sub_29AB4516C(unint64_t a1, int a2, __int16 *a3, int16x4_t result, int16x4_t a5)
{
  v5 = a1 + 4 * a2;
  if (a2 <= 7)
  {
    if (a2 >= 4)
    {
      do
      {
        v9 = (a1 + 16);
        result.i16[0] = a3[1];
        a5.i16[0] = *a3;
        v10 = vcvtq_f32_f16(vdup_lane_s16(a5, 0)).u64[0];
        v11 = vzip1_s32(*&vcvtq_f32_f16(vdup_lane_s16(result, 0)), v10);
        *a1 = v11;
        v11.i16[0] = a3[3];
        v10.i16[0] = a3[2];
        a5 = vcvtq_f32_f16(vdup_lane_s16(v10, 0)).u64[0];
        result = vzip1_s32(*&vcvtq_f32_f16(vdup_lane_s16(v11, 0)), a5);
        *(a1 + 8) = result;
        a3 += 4;
        v12 = a1 + 32;
        a1 += 16;
      }

      while (v12 <= v5);
    }

    else
    {
      v9 = a1;
    }

    if (v9 < v5)
    {
      v13 = a3 + 1;
      do
      {
        result.i16[0] = *v13;
        a5.i16[0] = *(v13 - 1);
        a5 = vcvtq_f32_f16(vdup_lane_s16(a5, 0)).u64[0];
        result = vzip1_s32(*&vcvtq_f32_f16(vdup_lane_s16(result, 0)), a5);
        *v9++ = result;
        v13 += 2;
      }

      while (v9 < v5);
    }
  }

  else
  {
    v6 = &a3[a2 - 8];
    result = 0x302010007060504;
    do
    {
      do
      {
        v7 = *a3;
        a3 += 8;
        *a1 = vqtbl1q_s8(vcvtq_f32_f16(*v7.i8), xmmword_29B6C2CB0);
        *(a1 + 16) = vqtbl1q_s8(vcvt_hight_f32_f16(v7), xmmword_29B6C2CB0);
        a1 += 32;
      }

      while (a1 <= v5 - 32);
      a3 = v6;
      v8 = a1 == v5;
      a1 = v5 - 32;
    }

    while (!v8);
  }

  return result;
}

float32x4_t *sub_29AB45268(float32x4_t *result, int a2, unsigned __int8 *a3, double a4, float32_t a5)
{
  v5 = (result + 4 * a2);
  if (a2 <= 15)
  {
    if (a2 >= 4)
    {
      do
      {
        f32 = result[1].f32;
        LOBYTE(a5) = *a3;
        *&v17 = LODWORD(a5) * 0.0039216;
        result->f32[0] = *&v17;
        LOBYTE(v17) = a3[1];
        *&v18 = v17 * 0.0039216;
        result->f32[1] = *&v18;
        LOBYTE(v18) = a3[2];
        *&v19 = v18 * 0.0039216;
        result->f32[2] = *&v19;
        LOBYTE(v19) = a3[3];
        a5 = v19 * 0.0039216;
        result->f32[3] = a5;
        a3 += 4;
        v20 = result + 2;
        ++result;
      }

      while (v20 <= v5);
    }

    else
    {
      f32 = result;
    }

    for (; f32 < v5; ++f32)
    {
      v21 = *a3++;
      *f32 = v21 * 0.0039216;
    }
  }

  else
  {
    v6 = &a3[a2 - 16];
    v7 = v5 - 4;
    v8 = vdupq_n_s32(0x3B808081u);
    do
    {
      v9 = *a3;
      a3 += 16;
      v10 = v9;
      v11 = result + 4;
      if (&result[4] == v5)
      {
        v12 = a3;
      }

      else
      {
        v12 = v6;
      }

      if (&result[4] == v5)
      {
        v13 = result + 4;
      }

      else
      {
        v13 = v5 - 4;
      }

      if (v11 > v7)
      {
        a3 = v12;
      }

      v14 = vmovl_u8(*v10.i8);
      v15 = vmovl_high_u8(v10);
      *result = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v14.i8)), v8);
      result[1] = vmulq_f32(vcvtq_f32_u32(vmovl_high_u16(v14)), v8);
      result[2] = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v15.i8)), v8);
      result[3] = vmulq_f32(vcvtq_f32_u32(vmovl_high_u16(v15)), v8);
      if (v11 <= v7)
      {
        result += 4;
      }

      else
      {
        result = v13;
      }
    }

    while (v11 != v5);
  }

  return result;
}

float sub_29AB45394(unint64_t a1, int a2, unsigned __int8 *a3, __n128 a4)
{
  v4 = a1 + 4 * a2;
  if (a2 <= 15)
  {
    if (a2 >= 4)
    {
      do
      {
        v15 = (a1 + 16);
        a4.n128_u8[0] = *a3;
        v16 = a4.n128_u32[0];
        *a1 = v16;
        LOBYTE(v16) = a3[1];
        v17 = LODWORD(v16);
        *(a1 + 4) = v17;
        LOBYTE(v17) = a3[2];
        v18 = LODWORD(v17);
        *(a1 + 8) = v18;
        LOBYTE(v18) = a3[3];
        a4.n128_f32[0] = LODWORD(v18);
        *(a1 + 12) = a4.n128_u32[0];
        a3 += 4;
        v19 = a1 + 32;
        a1 += 16;
      }

      while (v19 <= v4);
    }

    else
    {
      v15 = a1;
    }

    while (v15 < v4)
    {
      v20 = *a3++;
      a4.n128_f32[0] = v20;
      *v15++ = v20;
    }
  }

  else
  {
    v5 = &a3[a2 - 16];
    v6 = v4 - 64;
    do
    {
      v7 = *a3;
      a3 += 16;
      v8 = v7;
      v9 = a1 + 64;
      if (a1 + 64 == v4)
      {
        v10 = a3;
      }

      else
      {
        v10 = v5;
      }

      if (a1 + 64 == v4)
      {
        v11 = a1 + 64;
      }

      else
      {
        v11 = v4 - 64;
      }

      if (v9 > v6)
      {
        a3 = v10;
      }

      v12 = vmovl_u8(*v8.i8);
      v13 = vmovl_high_u8(v8);
      v14 = vcvtq_f32_u32(vmovl_u16(*v13.i8));
      a4 = vcvtq_f32_u32(vmovl_high_u16(v13));
      *a1 = vcvtq_f32_u32(vmovl_u16(*v12.i8));
      *(a1 + 16) = vcvtq_f32_u32(vmovl_high_u16(v12));
      *(a1 + 32) = v14;
      *(a1 + 48) = a4;
      if (v9 <= v6)
      {
        a1 += 64;
      }

      else
      {
        a1 = v11;
      }
    }

    while (v9 != v4);
  }

  return a4.n128_f32[0];
}

float32x4_t *sub_29AB4547C(float32x4_t *result, int a2, uint16x4_t *a3)
{
  v3 = result->u64 + 4 * a2;
  if (a2 <= 7)
  {
    if (a2 >= 4)
    {
      v13 = vdupq_n_s32(0x37800080u);
      do
      {
        f32 = result[1].f32;
        v14 = *a3++;
        *result = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v14)), v13);
        v15 = &result[2] > v3;
        ++result;
      }

      while (!v15);
    }

    else
    {
      f32 = result;
    }

    for (; f32 < v3; ++f32)
    {
      v16 = a3->u16[0];
      a3 = (a3 + 2);
      *f32 = v16 * 0.000015259;
    }
  }

  else
  {
    v4 = &a3[-2] + 2 * a2;
    v5 = v3 - 32;
    v6 = vdupq_n_s32(0x37800080u);
    do
    {
      v7 = *a3->i8;
      a3 += 2;
      v8 = v7;
      v9 = result + 2;
      if (&result[2] == v3)
      {
        v10 = a3;
      }

      else
      {
        v10 = v4;
      }

      if (&result[2] == v3)
      {
        v11 = result + 2;
      }

      else
      {
        v11 = (v3 - 32);
      }

      if (v9 > v5)
      {
        a3 = v10;
      }

      *result = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v8.i8)), v6);
      result[1] = vmulq_f32(vcvtq_f32_u32(vmovl_high_u16(v8)), v6);
      if (v9 <= v5)
      {
        result += 2;
      }

      else
      {
        result = v11;
      }
    }

    while (v9 != v3);
  }

  return result;
}

float sub_29AB45554(__n128 *a1, int a2, uint16x4_t *a3, __n128 a4)
{
  v4 = a1->n128_u64 + 4 * a2;
  if (a2 <= 7)
  {
    if (a2 >= 4)
    {
      do
      {
        v13 = &a1[1];
        v14 = *a3++;
        a4 = vcvtq_f32_u32(vmovl_u16(v14));
        *a1 = a4;
        v15 = a1[2].n128_u64 > v4;
        ++a1;
      }

      while (!v15);
    }

    else
    {
      v13 = a1;
    }

    while (v13 < v4)
    {
      v16 = a3->u16[0];
      a3 = (a3 + 2);
      a4.n128_f32[0] = v16;
      *v13++ = v16;
    }
  }

  else
  {
    v5 = &a3[-2] + 2 * a2;
    v6 = v4 - 32;
    do
    {
      v7 = *a3->i8;
      a3 += 2;
      v8 = v7;
      v9 = a1 + 2;
      if (&a1[2] == v4)
      {
        v10 = a3;
      }

      else
      {
        v10 = v5;
      }

      if (&a1[2] == v4)
      {
        v11 = a1 + 2;
      }

      else
      {
        v11 = (v4 - 32);
      }

      if (v9 > v6)
      {
        a3 = v10;
      }

      v12 = vcvtq_f32_u32(vmovl_u16(*v8.i8));
      a4 = vcvtq_f32_u32(vmovl_high_u16(v8));
      *a1 = v12;
      a1[1] = a4;
      if (v9 <= v6)
      {
        a1 += 2;
      }

      else
      {
        a1 = v11;
      }
    }

    while (v9 != v4);
  }

  return a4.n128_f32[0];
}

int8x16_t *sub_29AB455F8(int8x16_t *result, int a2, uint8x16_t *a3, double a4, float a5)
{
  v5 = (result + 4 * a2);
  if (a2 <= 15)
  {
    if (a2 >= 4)
    {
      v16 = result + 1;
      v17 = &a3->i8[3];
      do
      {
        LOBYTE(a5) = *(v17 - 1);
        *&v18 = LODWORD(a5) * 0.0039216;
        v16[-1].i32[0] = v18;
        LOBYTE(v18) = *(v17 - 2);
        *&v19 = v18 * 0.0039216;
        v16[-1].i32[1] = v19;
        LOBYTE(v19) = *(v17 - 3);
        *&v20 = v19 * 0.0039216;
        v16[-1].i32[2] = v20;
        LOBYTE(v20) = *v17;
        a5 = v20 * 0.0039216;
        *&v16[-1].i32[3] = a5;
        ++v16;
        v17 += 4;
      }

      while (v16 <= v5);
    }
  }

  else
  {
    v6 = a3[-1].i64 + a2;
    v7 = v5 - 4;
    v8 = vdupq_n_s32(0x3B808081u);
    do
    {
      v9 = *a3++;
      v10 = v9;
      v11 = result + 4;
      if (&result[4] == v5)
      {
        v12 = a3;
      }

      else
      {
        v12 = v6;
      }

      if (&result[4] == v5)
      {
        v13 = result + 4;
      }

      else
      {
        v13 = v5 - 4;
      }

      if (v11 > v7)
      {
        a3 = v12;
      }

      v14 = vmovl_u8(*v10.i8);
      v15 = vmovl_high_u8(v10);
      *result = vqtbl1q_s8(vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v14.i8)), v8), xmmword_29B6C2C90);
      result[1] = vqtbl1q_s8(vmulq_f32(vcvtq_f32_u32(vmovl_high_u16(v14)), v8), xmmword_29B6C2C90);
      result[2] = vqtbl1q_s8(vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v15.i8)), v8), xmmword_29B6C2C90);
      result[3] = vqtbl1q_s8(vmulq_f32(vcvtq_f32_u32(vmovl_high_u16(v15)), v8), xmmword_29B6C2C90);
      if (v11 <= v7)
      {
        result += 4;
      }

      else
      {
        result = v13;
      }
    }

    while (v11 != v5);
  }

  return result;
}

__n128 sub_29AB4570C(int8x16_t *a1, int a2, uint8x16_t *a3, __n128 result)
{
  v4 = (a1 + 4 * a2);
  if (a2 <= 15)
  {
    if (a2 >= 4)
    {
      v14 = a1 + 1;
      v15 = &a3->i8[3];
      do
      {
        result.n128_u8[0] = *(v15 - 1);
        v16 = result.n128_u32[0];
        *v14[-1].i32 = v16;
        LOBYTE(v16) = *(v15 - 2);
        *&v17 = LODWORD(v16);
        v14[-1].i32[1] = v17;
        LOBYTE(v17) = *(v15 - 3);
        *&v18 = v17;
        v14[-1].i32[2] = v18;
        LOBYTE(v18) = *v15;
        result.n128_f32[0] = v18;
        v14[-1].i32[3] = result.n128_u32[0];
        ++v14;
        v15 += 4;
      }

      while (v14 <= v4);
    }
  }

  else
  {
    v5 = a3[-1].i64 + a2;
    v6 = v4 - 4;
    result.n128_u32[0] = 185207048;
    do
    {
      v7 = *a3++;
      v8 = v7;
      v9 = a1 + 4;
      if (&a1[4] == v4)
      {
        v10 = a3;
      }

      else
      {
        v10 = v5;
      }

      if (&a1[4] == v4)
      {
        v11 = a1 + 4;
      }

      else
      {
        v11 = v4 - 4;
      }

      if (v9 > v6)
      {
        a3 = v10;
      }

      v12 = vmovl_u8(*v8.i8);
      v13 = vmovl_high_u8(v8);
      *a1 = vqtbl1q_s8(vcvtq_f32_u32(vmovl_u16(*v12.i8)), xmmword_29B6C2C90);
      a1[1] = vqtbl1q_s8(vcvtq_f32_u32(vmovl_high_u16(v12)), xmmword_29B6C2C90);
      a1[2] = vqtbl1q_s8(vcvtq_f32_u32(vmovl_u16(*v13.i8)), xmmword_29B6C2C90);
      a1[3] = vqtbl1q_s8(vcvtq_f32_u32(vmovl_high_u16(v13)), xmmword_29B6C2C90);
      if (v9 <= v6)
      {
        a1 += 4;
      }

      else
      {
        a1 = v11;
      }
    }

    while (v9 != v4);
  }

  return result;
}

int8x16_t *sub_29AB457EC(int8x16_t *result, int a2, uint16x4_t *a3)
{
  v3 = (result + 4 * a2);
  if (a2 <= 7)
  {
    if (a2 >= 4)
    {
      v12 = result + 1;
      v13 = vdupq_n_s32(0x37800080u);
      do
      {
        v14 = *a3++;
        v15 = vrev64q_s32(vmulq_f32(vcvtq_f32_u32(vmovl_u16(v14)), v13));
        v12[-1] = vextq_s8(v15, v15, 0xCuLL);
        ++v12;
      }

      while (v12 <= v3);
    }
  }

  else
  {
    v4 = &a3[-2] + 2 * a2;
    v5 = v3 - 2;
    v6 = vdupq_n_s32(0x37800080u);
    do
    {
      v7 = *a3->i8;
      a3 += 2;
      v8 = v7;
      v9 = result + 2;
      if (&result[2] == v3)
      {
        v10 = a3;
      }

      else
      {
        v10 = v4;
      }

      if (&result[2] == v3)
      {
        v11 = result + 2;
      }

      else
      {
        v11 = v3 - 2;
      }

      if (v9 > v5)
      {
        a3 = v10;
      }

      *result = vqtbl1q_s8(vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v8.i8)), v6), xmmword_29B6C2C90);
      result[1] = vqtbl1q_s8(vmulq_f32(vcvtq_f32_u32(vmovl_high_u16(v8)), v6), xmmword_29B6C2C90);
      if (v9 <= v5)
      {
        result += 2;
      }

      else
      {
        result = v11;
      }
    }

    while (v9 != v3);
  }

  return result;
}

int8x16_t sub_29AB458AC(int8x16_t *a1, int a2, uint16x4_t *a3)
{
  v3 = (a1 + 4 * a2);
  if (a2 <= 7)
  {
    if (a2 >= 4)
    {
      v12 = a1 + 1;
      do
      {
        v13 = *a3++;
        v14 = vrev64q_s32(vcvtq_f32_u32(vmovl_u16(v13)));
        result = vextq_s8(v14, v14, 0xCuLL);
        v12[-1] = result;
        ++v12;
      }

      while (v12 <= v3);
    }
  }

  else
  {
    v4 = &a3[-2] + 2 * a2;
    v5 = v3 - 2;
    result.i64[0] = 0x70605040B0A0908;
    do
    {
      v7 = *a3->i8;
      a3 += 2;
      v8 = v7;
      v9 = a1 + 2;
      if (&a1[2] == v3)
      {
        v10 = a3;
      }

      else
      {
        v10 = v4;
      }

      if (&a1[2] == v3)
      {
        v11 = a1 + 2;
      }

      else
      {
        v11 = v3 - 2;
      }

      if (v9 > v5)
      {
        a3 = v10;
      }

      *a1 = vqtbl1q_s8(vcvtq_f32_u32(vmovl_u16(*v8.i8)), xmmword_29B6C2C90);
      a1[1] = vqtbl1q_s8(vcvtq_f32_u32(vmovl_high_u16(v8)), xmmword_29B6C2C90);
      if (v9 <= v5)
      {
        a1 += 2;
      }

      else
      {
        a1 = v11;
      }
    }

    while (v9 != v3);
  }

  return result;
}

int8x16_t *sub_29AB45948(int8x16_t *result, int a2, uint8x16_t *a3, double a4, float a5)
{
  v5 = (result + 4 * a2);
  if (a2 <= 15)
  {
    if (a2 >= 4)
    {
      v16 = result + 1;
      v17 = &a3->i8[1];
      do
      {
        LOBYTE(a5) = *v17;
        *&v18 = LODWORD(a5) * 0.0039216;
        v16[-1].i32[0] = v18;
        LOBYTE(v18) = v17[1];
        *&v19 = v18 * 0.0039216;
        v16[-1].i32[1] = v19;
        LOBYTE(v19) = v17[2];
        *&v20 = v19 * 0.0039216;
        v16[-1].i32[2] = v20;
        LOBYTE(v20) = *(v17 - 1);
        a5 = v20 * 0.0039216;
        *&v16[-1].i32[3] = a5;
        ++v16;
        v17 += 4;
      }

      while (v16 <= v5);
    }
  }

  else
  {
    v6 = a3[-1].i64 + a2;
    v7 = v5 - 4;
    v8 = vdupq_n_s32(0x3B808081u);
    do
    {
      v9 = *a3++;
      v10 = v9;
      v11 = result + 4;
      if (&result[4] == v5)
      {
        v12 = a3;
      }

      else
      {
        v12 = v6;
      }

      if (&result[4] == v5)
      {
        v13 = result + 4;
      }

      else
      {
        v13 = v5 - 4;
      }

      if (v11 > v7)
      {
        a3 = v12;
      }

      v14 = vmovl_u8(*v10.i8);
      v15 = vmovl_high_u8(v10);
      *result = vqtbl1q_s8(vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v14.i8)), v8), xmmword_29B6C2C00);
      result[1] = vqtbl1q_s8(vmulq_f32(vcvtq_f32_u32(vmovl_high_u16(v14)), v8), xmmword_29B6C2C00);
      result[2] = vqtbl1q_s8(vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v15.i8)), v8), xmmword_29B6C2C00);
      result[3] = vqtbl1q_s8(vmulq_f32(vcvtq_f32_u32(vmovl_high_u16(v15)), v8), xmmword_29B6C2C00);
      if (v11 <= v7)
      {
        result += 4;
      }

      else
      {
        result = v13;
      }
    }

    while (v11 != v5);
  }

  return result;
}

__n128 sub_29AB45A5C(int8x16_t *a1, int a2, uint8x16_t *a3, __n128 result)
{
  v4 = (a1 + 4 * a2);
  if (a2 <= 15)
  {
    if (a2 >= 4)
    {
      v14 = a1 + 1;
      v15 = &a3->u8[1];
      do
      {
        result.n128_u8[0] = *v15;
        v16 = result.n128_u32[0];
        *v14[-1].i32 = v16;
        LOBYTE(v16) = v15[1];
        *&v17 = LODWORD(v16);
        v14[-1].i32[1] = v17;
        LOBYTE(v17) = v15[2];
        *&v18 = v17;
        v14[-1].i32[2] = v18;
        LOBYTE(v18) = *(v15 - 1);
        result.n128_f32[0] = v18;
        v14[-1].i32[3] = result.n128_u32[0];
        ++v14;
        v15 += 4;
      }

      while (v14 <= v4);
    }
  }

  else
  {
    v5 = a3[-1].i64 + a2;
    v6 = v4 - 4;
    result.n128_u32[0] = 117835012;
    do
    {
      v7 = *a3++;
      v8 = v7;
      v9 = a1 + 4;
      if (&a1[4] == v4)
      {
        v10 = a3;
      }

      else
      {
        v10 = v5;
      }

      if (&a1[4] == v4)
      {
        v11 = a1 + 4;
      }

      else
      {
        v11 = v4 - 4;
      }

      if (v9 > v6)
      {
        a3 = v10;
      }

      v12 = vmovl_u8(*v8.i8);
      v13 = vmovl_high_u8(v8);
      *a1 = vqtbl1q_s8(vcvtq_f32_u32(vmovl_u16(*v12.i8)), xmmword_29B6C2C00);
      a1[1] = vqtbl1q_s8(vcvtq_f32_u32(vmovl_high_u16(v12)), xmmword_29B6C2C00);
      a1[2] = vqtbl1q_s8(vcvtq_f32_u32(vmovl_u16(*v13.i8)), xmmword_29B6C2C00);
      a1[3] = vqtbl1q_s8(vcvtq_f32_u32(vmovl_high_u16(v13)), xmmword_29B6C2C00);
      if (v9 <= v6)
      {
        a1 += 4;
      }

      else
      {
        a1 = v11;
      }
    }

    while (v9 != v4);
  }

  return result;
}

int8x16_t *sub_29AB45B3C(int8x16_t *result, int a2, uint16x4_t *a3)
{
  v3 = (result + 4 * a2);
  if (a2 <= 7)
  {
    if (a2 >= 4)
    {
      v12 = result + 1;
      v13 = vdupq_n_s32(0x37800080u);
      do
      {
        v14 = *a3++;
        v15 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v14)), v13);
        v12[-1] = vextq_s8(v15, v15, 4uLL);
        ++v12;
      }

      while (v12 <= v3);
    }
  }

  else
  {
    v4 = &a3[-2] + 2 * a2;
    v5 = v3 - 2;
    v6 = vdupq_n_s32(0x37800080u);
    do
    {
      v7 = *a3->i8;
      a3 += 2;
      v8 = v7;
      v9 = result + 2;
      if (&result[2] == v3)
      {
        v10 = a3;
      }

      else
      {
        v10 = v4;
      }

      if (&result[2] == v3)
      {
        v11 = result + 2;
      }

      else
      {
        v11 = v3 - 2;
      }

      if (v9 > v5)
      {
        a3 = v10;
      }

      *result = vqtbl1q_s8(vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v8.i8)), v6), xmmword_29B6C2C00);
      result[1] = vqtbl1q_s8(vmulq_f32(vcvtq_f32_u32(vmovl_high_u16(v8)), v6), xmmword_29B6C2C00);
      if (v9 <= v5)
      {
        result += 2;
      }

      else
      {
        result = v11;
      }
    }

    while (v9 != v3);
  }

  return result;
}

int8x16_t sub_29AB45BF8(int8x16_t *a1, int a2, uint16x4_t *a3)
{
  v3 = (a1 + 4 * a2);
  if (a2 <= 7)
  {
    if (a2 >= 4)
    {
      v12 = a1 + 1;
      do
      {
        v13 = *a3++;
        v14 = vcvtq_f32_u32(vmovl_u16(v13));
        result = vextq_s8(v14, v14, 4uLL);
        v12[-1] = result;
        ++v12;
      }

      while (v12 <= v3);
    }
  }

  else
  {
    v4 = &a3[-2] + 2 * a2;
    v5 = v3 - 2;
    result.i64[0] = 0xB0A090807060504;
    do
    {
      v7 = *a3->i8;
      a3 += 2;
      v8 = v7;
      v9 = a1 + 2;
      if (&a1[2] == v3)
      {
        v10 = a3;
      }

      else
      {
        v10 = v4;
      }

      if (&a1[2] == v3)
      {
        v11 = a1 + 2;
      }

      else
      {
        v11 = v3 - 2;
      }

      if (v9 > v5)
      {
        a3 = v10;
      }

      *a1 = vqtbl1q_s8(vcvtq_f32_u32(vmovl_u16(*v8.i8)), xmmword_29B6C2C00);
      a1[1] = vqtbl1q_s8(vcvtq_f32_u32(vmovl_high_u16(v8)), xmmword_29B6C2C00);
      if (v9 <= v5)
      {
        a1 += 2;
      }

      else
      {
        a1 = v11;
      }
    }

    while (v9 != v3);
  }

  return result;
}

int8x16_t *sub_29AB45C90(int8x16_t *result, int a2, uint8x16_t *a3, double a4, float a5)
{
  v5 = (result + 4 * a2);
  if (a2 <= 15)
  {
    if (a2 >= 4)
    {
      v16 = result + 1;
      v17 = &a3->i8[3];
      do
      {
        LOBYTE(a5) = *v17;
        *&v18 = LODWORD(a5) * 0.0039216;
        v16[-1].i32[0] = v18;
        LOBYTE(v18) = *(v17 - 1);
        *&v19 = v18 * 0.0039216;
        v16[-1].i32[1] = v19;
        LOBYTE(v19) = *(v17 - 2);
        *&v20 = v19 * 0.0039216;
        v16[-1].i32[2] = v20;
        LOBYTE(v20) = *(v17 - 3);
        a5 = v20 * 0.0039216;
        *&v16[-1].i32[3] = a5;
        ++v16;
        v17 += 4;
      }

      while (v16 <= v5);
    }
  }

  else
  {
    v6 = a3[-1].i64 + a2;
    v7 = v5 - 4;
    v8 = vdupq_n_s32(0x3B808081u);
    do
    {
      v9 = *a3++;
      v10 = v9;
      v11 = result + 4;
      if (&result[4] == v5)
      {
        v12 = a3;
      }

      else
      {
        v12 = v6;
      }

      if (&result[4] == v5)
      {
        v13 = result + 4;
      }

      else
      {
        v13 = v5 - 4;
      }

      if (v11 > v7)
      {
        a3 = v12;
      }

      v14 = vmovl_u8(*v10.i8);
      v15 = vmovl_high_u8(v10);
      *result = vqtbl1q_s8(vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v14.i8)), v8), xmmword_29B6C2CA0);
      result[1] = vqtbl1q_s8(vmulq_f32(vcvtq_f32_u32(vmovl_high_u16(v14)), v8), xmmword_29B6C2CA0);
      result[2] = vqtbl1q_s8(vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v15.i8)), v8), xmmword_29B6C2CA0);
      result[3] = vqtbl1q_s8(vmulq_f32(vcvtq_f32_u32(vmovl_high_u16(v15)), v8), xmmword_29B6C2CA0);
      if (v11 <= v7)
      {
        result += 4;
      }

      else
      {
        result = v13;
      }
    }

    while (v11 != v5);
  }

  return result;
}

__n128 sub_29AB45DA4(int8x16_t *a1, int a2, uint8x16_t *a3, __n128 result)
{
  v4 = (a1 + 4 * a2);
  if (a2 <= 15)
  {
    if (a2 >= 4)
    {
      v14 = a1 + 1;
      v15 = &a3->u8[3];
      do
      {
        result.n128_u8[0] = *v15;
        v16 = result.n128_u32[0];
        *v14[-1].i32 = v16;
        LOBYTE(v16) = *(v15 - 1);
        *&v17 = LODWORD(v16);
        v14[-1].i32[1] = v17;
        LOBYTE(v17) = *(v15 - 2);
        *&v18 = v17;
        v14[-1].i32[2] = v18;
        LOBYTE(v18) = *(v15 - 3);
        result.n128_f32[0] = v18;
        v14[-1].i32[3] = result.n128_u32[0];
        ++v14;
        v15 += 4;
      }

      while (v14 <= v4);
    }
  }

  else
  {
    v5 = a3[-1].i64 + a2;
    v6 = v4 - 4;
    result.n128_u32[0] = 252579084;
    do
    {
      v7 = *a3++;
      v8 = v7;
      v9 = a1 + 4;
      if (&a1[4] == v4)
      {
        v10 = a3;
      }

      else
      {
        v10 = v5;
      }

      if (&a1[4] == v4)
      {
        v11 = a1 + 4;
      }

      else
      {
        v11 = v4 - 4;
      }

      if (v9 > v6)
      {
        a3 = v10;
      }

      v12 = vmovl_u8(*v8.i8);
      v13 = vmovl_high_u8(v8);
      *a1 = vqtbl1q_s8(vcvtq_f32_u32(vmovl_u16(*v12.i8)), xmmword_29B6C2CA0);
      a1[1] = vqtbl1q_s8(vcvtq_f32_u32(vmovl_high_u16(v12)), xmmword_29B6C2CA0);
      a1[2] = vqtbl1q_s8(vcvtq_f32_u32(vmovl_u16(*v13.i8)), xmmword_29B6C2CA0);
      a1[3] = vqtbl1q_s8(vcvtq_f32_u32(vmovl_high_u16(v13)), xmmword_29B6C2CA0);
      if (v9 <= v6)
      {
        a1 += 4;
      }

      else
      {
        a1 = v11;
      }
    }

    while (v9 != v4);
  }

  return result;
}

int8x16_t *sub_29AB45E84(int8x16_t *result, int a2, uint16x4_t *a3)
{
  v3 = (result + 4 * a2);
  if (a2 <= 7)
  {
    if (a2 >= 4)
    {
      v12 = result + 1;
      v13 = vdupq_n_s32(0x37800080u);
      do
      {
        v14 = *a3++;
        v15 = vrev64q_s32(vmulq_f32(vcvtq_f32_u32(vmovl_u16(v14)), v13));
        v12[-1] = vextq_s8(v15, v15, 8uLL);
        ++v12;
      }

      while (v12 <= v3);
    }
  }

  else
  {
    v4 = &a3[-2] + 2 * a2;
    v5 = v3 - 2;
    v6 = vdupq_n_s32(0x37800080u);
    do
    {
      v7 = *a3->i8;
      a3 += 2;
      v8 = v7;
      v9 = result + 2;
      if (&result[2] == v3)
      {
        v10 = a3;
      }

      else
      {
        v10 = v4;
      }

      if (&result[2] == v3)
      {
        v11 = result + 2;
      }

      else
      {
        v11 = v3 - 2;
      }

      if (v9 > v5)
      {
        a3 = v10;
      }

      *result = vqtbl1q_s8(vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v8.i8)), v6), xmmword_29B6C2CA0);
      result[1] = vqtbl1q_s8(vmulq_f32(vcvtq_f32_u32(vmovl_high_u16(v8)), v6), xmmword_29B6C2CA0);
      if (v9 <= v5)
      {
        result += 2;
      }

      else
      {
        result = v11;
      }
    }

    while (v9 != v3);
  }

  return result;
}

int8x16_t sub_29AB45F44(int8x16_t *a1, int a2, uint16x4_t *a3)
{
  v3 = (a1 + 4 * a2);
  if (a2 <= 7)
  {
    if (a2 >= 4)
    {
      v12 = a1 + 1;
      do
      {
        v13 = *a3++;
        v14 = vrev64q_s32(vcvtq_f32_u32(vmovl_u16(v13)));
        result = vextq_s8(v14, v14, 8uLL);
        v12[-1] = result;
        ++v12;
      }

      while (v12 <= v3);
    }
  }

  else
  {
    v4 = &a3[-2] + 2 * a2;
    v5 = v3 - 2;
    result.i64[0] = 0xB0A09080F0E0D0CLL;
    do
    {
      v7 = *a3->i8;
      a3 += 2;
      v8 = v7;
      v9 = a1 + 2;
      if (&a1[2] == v3)
      {
        v10 = a3;
      }

      else
      {
        v10 = v4;
      }

      if (&a1[2] == v3)
      {
        v11 = a1 + 2;
      }

      else
      {
        v11 = v3 - 2;
      }

      if (v9 > v5)
      {
        a3 = v10;
      }

      *a1 = vqtbl1q_s8(vcvtq_f32_u32(vmovl_u16(*v8.i8)), xmmword_29B6C2CA0);
      a1[1] = vqtbl1q_s8(vcvtq_f32_u32(vmovl_high_u16(v8)), xmmword_29B6C2CA0);
      if (v9 <= v5)
      {
        a1 += 2;
      }

      else
      {
        a1 = v11;
      }
    }

    while (v9 != v3);
  }

  return result;
}

unint64_t sub_29AB45FE0(unint64_t result, int a2, _BYTE *a3, double a4, float a5)
{
  v5 = result + 4 * a2;
  if (a2 <= 15)
  {
    if (a2 >= 4)
    {
      do
      {
        v16 = (result + 16);
        LOBYTE(a5) = a3[1];
        *&v17 = LODWORD(a5) * 0.0039216;
        *result = *&v17;
        LOBYTE(v17) = *a3;
        *&v18 = v17 * 0.0039216;
        *(result + 4) = *&v18;
        LOBYTE(v18) = a3[3];
        *&v19 = v18 * 0.0039216;
        *(result + 8) = *&v19;
        LOBYTE(v19) = a3[2];
        a5 = v19 * 0.0039216;
        *(result + 12) = a5;
        a3 += 4;
        v20 = result + 32;
        result += 16;
      }

      while (v20 <= v5);
    }

    else
    {
      v16 = result;
    }

    if (v16 < v5)
    {
      v21 = a3 + 1;
      do
      {
        LOBYTE(a5) = *v21;
        *&v22 = LODWORD(a5) * 0.0039216;
        *v16 = *&v22;
        LOBYTE(v22) = *(v21 - 1);
        a5 = v22 * 0.0039216;
        v16[1] = a5;
        v16 += 2;
        v21 += 2;
      }

      while (v16 < v5);
    }
  }

  else
  {
    v6 = &a3[a2 - 16];
    v7 = v5 - 64;
    v8 = vdupq_n_s32(0x3B808081u);
    do
    {
      v9 = *a3;
      a3 += 16;
      v10 = v9;
      v11 = result + 64;
      if (result + 64 == v5)
      {
        v12 = a3;
      }

      else
      {
        v12 = v6;
      }

      if (result + 64 == v5)
      {
        v13 = result + 64;
      }

      else
      {
        v13 = v5 - 64;
      }

      if (v11 > v7)
      {
        a3 = v12;
      }

      v14 = vmovl_u8(*v10.i8);
      v15 = vmovl_high_u8(v10);
      *result = vqtbl1q_s8(vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v14.i8)), v8), xmmword_29B6C2CB0);
      *(result + 16) = vqtbl1q_s8(vmulq_f32(vcvtq_f32_u32(vmovl_high_u16(v14)), v8), xmmword_29B6C2CB0);
      *(result + 32) = vqtbl1q_s8(vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v15.i8)), v8), xmmword_29B6C2CB0);
      *(result + 48) = vqtbl1q_s8(vmulq_f32(vcvtq_f32_u32(vmovl_high_u16(v15)), v8), xmmword_29B6C2CB0);
      if (v11 <= v7)
      {
        result += 64;
      }

      else
      {
        result = v13;
      }
    }

    while (v11 != v5);
  }

  return result;
}

__n128 sub_29AB46140(unint64_t a1, int a2, _BYTE *a3, __n128 result)
{
  v4 = a1 + 4 * a2;
  if (a2 <= 15)
  {
    if (a2 >= 4)
    {
      do
      {
        v14 = a1 + 16;
        result.n128_u8[0] = a3[1];
        v15 = result.n128_u32[0];
        *a1 = v15;
        LOBYTE(v15) = *a3;
        v16 = LODWORD(v15);
        *(a1 + 4) = v16;
        LOBYTE(v16) = a3[3];
        v17 = LODWORD(v16);
        *(a1 + 8) = v17;
        LOBYTE(v17) = a3[2];
        result.n128_f32[0] = LODWORD(v17);
        *(a1 + 12) = result.n128_u32[0];
        a3 += 4;
        v18 = a1 + 32;
        a1 += 16;
      }

      while (v18 <= v4);
    }

    else
    {
      v14 = a1;
    }

    if (v14 < v4)
    {
      v19 = a3 + 1;
      do
      {
        result.n128_u8[0] = *v19;
        v20 = result.n128_u32[0];
        *v14 = v20;
        LOBYTE(v20) = *(v19 - 1);
        result.n128_f32[0] = LODWORD(v20);
        *(v14 + 4) = result.n128_u32[0];
        v14 += 8;
        v19 += 2;
      }

      while (v14 < v4);
    }
  }

  else
  {
    v5 = &a3[a2 - 16];
    v6 = v4 - 64;
    result.n128_u32[0] = 117835012;
    do
    {
      v7 = *a3;
      a3 += 16;
      v8 = v7;
      v9 = a1 + 64;
      if (a1 + 64 == v4)
      {
        v10 = a3;
      }

      else
      {
        v10 = v5;
      }

      if (a1 + 64 == v4)
      {
        v11 = a1 + 64;
      }

      else
      {
        v11 = v4 - 64;
      }

      if (v9 > v6)
      {
        a3 = v10;
      }

      v12 = vmovl_u8(*v8.i8);
      v13 = vmovl_high_u8(v8);
      *a1 = vqtbl1q_s8(vcvtq_f32_u32(vmovl_u16(*v12.i8)), xmmword_29B6C2CB0);
      *(a1 + 16) = vqtbl1q_s8(vcvtq_f32_u32(vmovl_high_u16(v12)), xmmword_29B6C2CB0);
      *(a1 + 32) = vqtbl1q_s8(vcvtq_f32_u32(vmovl_u16(*v13.i8)), xmmword_29B6C2CB0);
      *(a1 + 48) = vqtbl1q_s8(vcvtq_f32_u32(vmovl_high_u16(v13)), xmmword_29B6C2CB0);
      if (v9 <= v6)
      {
        a1 += 64;
      }

      else
      {
        a1 = v11;
      }
    }

    while (v9 != v4);
  }

  return result;
}

unint64_t sub_29AB4625C(unint64_t result, int a2, uint16x4_t *a3, double a4, __n128 a5, float a6)
{
  v6 = result + 4 * a2;
  if (a2 <= 7)
  {
    if (a2 >= 4)
    {
      v16 = vdupq_n_s32(0x37800080u);
      do
      {
        v15 = result + 16;
        v17 = *a3++;
        a5 = vrev64q_s32(vmulq_f32(vcvtq_f32_u32(vmovl_u16(v17)), v16));
        *result = a5;
        v18 = result + 32 > v6;
        result += 16;
      }

      while (!v18);
    }

    else
    {
      v15 = result;
    }

    if (v15 < v6)
    {
      v19 = a3 + 1;
      do
      {
        a5.n128_u16[0] = *v19;
        a5.n128_f32[0] = a5.n128_u32[0] * 0.000015259;
        LOWORD(a6) = *(v19 - 1);
        a6 = LODWORD(a6) * 0.000015259;
        *v15 = a5.n128_u32[0];
        *(v15 + 4) = a6;
        v15 += 8;
        v19 += 2;
      }

      while (v15 < v6);
    }
  }

  else
  {
    v7 = &a3[-2] + 2 * a2;
    v8 = v6 - 32;
    v9 = vdupq_n_s32(0x37800080u);
    do
    {
      v10 = *a3->i8;
      a3 += 2;
      v11 = v10;
      v12 = result + 32;
      if (result + 32 == v6)
      {
        v13 = a3;
      }

      else
      {
        v13 = v7;
      }

      if (result + 32 == v6)
      {
        v14 = result + 32;
      }

      else
      {
        v14 = v6 - 32;
      }

      if (v12 > v8)
      {
        a3 = v13;
      }

      *result = vqtbl1q_s8(vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v11.i8)), v9), xmmword_29B6C2CB0);
      *(result + 16) = vqtbl1q_s8(vmulq_f32(vcvtq_f32_u32(vmovl_high_u16(v11)), v9), xmmword_29B6C2CB0);
      if (v12 <= v8)
      {
        result += 32;
      }

      else
      {
        result = v14;
      }
    }

    while (v12 != v6);
  }

  return result;
}

float sub_29AB4635C(unint64_t a1, int a2, uint16x4_t *a3, __n128 a4, float a5)
{
  v5 = a1 + 4 * a2;
  if (a2 <= 7)
  {
    if (a2 >= 4)
    {
      do
      {
        v13 = a1 + 16;
        v14 = *a3++;
        a4 = vrev64q_s32(vcvtq_f32_u32(vmovl_u16(v14)));
        *a1 = a4;
        v15 = a1 + 32 > v5;
        a1 += 16;
      }

      while (!v15);
    }

    else
    {
      v13 = a1;
    }

    if (v13 < v5)
    {
      v16 = a3 + 1;
      do
      {
        a4.n128_u16[0] = *v16;
        a4.n128_f32[0] = a4.n128_u32[0];
        LOWORD(a5) = *(v16 - 1);
        a5 = LODWORD(a5);
        *v13 = a4.n128_u32[0];
        *(v13 + 4) = a5;
        v13 += 8;
        v16 += 2;
      }

      while (v13 < v5);
    }
  }

  else
  {
    v6 = &a3[-2] + 2 * a2;
    v7 = v5 - 32;
    a4.n128_u32[0] = 117835012;
    do
    {
      v8 = *a3->i8;
      a3 += 2;
      v9 = v8;
      v10 = a1 + 32;
      if (a1 + 32 == v5)
      {
        v11 = a3;
      }

      else
      {
        v11 = v6;
      }

      if (a1 + 32 == v5)
      {
        v12 = a1 + 32;
      }

      else
      {
        v12 = v5 - 32;
      }

      if (v10 > v7)
      {
        a3 = v11;
      }

      *a1 = vqtbl1q_s8(vcvtq_f32_u32(vmovl_u16(*v9.i8)), xmmword_29B6C2CB0);
      *(a1 + 16) = vqtbl1q_s8(vcvtq_f32_u32(vmovl_high_u16(v9)), xmmword_29B6C2CB0);
      if (v10 <= v7)
      {
        a1 += 32;
      }

      else
      {
        a1 = v12;
      }
    }

    while (v10 != v5);
  }

  return a4.n128_f32[0];
}

char *sub_29AB46428(char *result, int a2, float *a3)
{
  v3 = &result[a2];
  if (a2 <= 15)
  {
    if (a2 >= 4)
    {
      v29 = result;
      v31 = result;
      do
      {
        v32 = *a3;
        if (*a3 <= 0.00012207)
        {
          LOBYTE(v33) = 0;
        }

        else if (v32 <= 1.0)
        {
          v33 = (((*&aSZ[4 * ((LODWORD(v32) - 956301312) >> 20)] >> 7) & 0xFFFE00) + *&aSZ[4 * ((LODWORD(v32) - 956301312) >> 20)] * (LODWORD(v32) >> 12)) >> 16;
        }

        else
        {
          LOBYTE(v33) = -1;
        }

        *v31 = v33;
        v34 = a3[1];
        if (v34 <= 0.00012207)
        {
          LOBYTE(v35) = 0;
        }

        else if (v34 <= 1.0)
        {
          v35 = (((*&aSZ[4 * ((LODWORD(v34) - 956301312) >> 20)] >> 7) & 0xFFFE00) + *&aSZ[4 * ((LODWORD(v34) - 956301312) >> 20)] * (LODWORD(v34) >> 12)) >> 16;
        }

        else
        {
          LOBYTE(v35) = -1;
        }

        v31[1] = v35;
        v36 = a3[2];
        if (v36 <= 0.00012207)
        {
          LOBYTE(v37) = 0;
        }

        else if (v36 <= 1.0)
        {
          v37 = (((*&aSZ[4 * ((LODWORD(v36) - 956301312) >> 20)] >> 7) & 0xFFFE00) + *&aSZ[4 * ((LODWORD(v36) - 956301312) >> 20)] * (LODWORD(v36) >> 12)) >> 16;
        }

        else
        {
          LOBYTE(v37) = -1;
        }

        v31[2] = v37;
        v38 = a3[3];
        if (v38 <= 0.00012207)
        {
          LOBYTE(v39) = 0;
        }

        else if (v38 <= 1.0)
        {
          v39 = (((*&aSZ[4 * ((LODWORD(v38) - 956301312) >> 20)] >> 7) & 0xFFFE00) + *&aSZ[4 * ((LODWORD(v38) - 956301312) >> 20)] * (LODWORD(v38) >> 12)) >> 16;
        }

        else
        {
          LOBYTE(v39) = -1;
        }

        v31[3] = v39;
        a3 += 4;
        v30 = v31 + 4;
        v29 += 4;
        v40 = v31 + 8;
        v31 += 4;
      }

      while (v40 <= v3);
    }

    else
    {
      v29 = result;
      v30 = result;
    }

    if (v30 < v3)
    {
      v41 = (&result[a2] - v29);
      do
      {
        v42 = *a3;
        if (*a3 <= 0.00012207)
        {
          LOBYTE(v43) = 0;
        }

        else if (v42 <= 1.0)
        {
          v43 = (((*&aSZ[4 * ((LODWORD(v42) - 956301312) >> 20)] >> 7) & 0xFFFE00) + *&aSZ[4 * ((LODWORD(v42) - 956301312) >> 20)] * (LODWORD(v42) >> 12)) >> 16;
        }

        else
        {
          LOBYTE(v43) = -1;
        }

        *v30++ = v43;
        ++a3;
        --v41;
      }

      while (v41);
    }
  }

  else
  {
    v4 = &a3[a2 - 16];
    v5.i64[0] = 0x3900000039000000;
    v5.i64[1] = 0x3900000039000000;
    v6 = vdupq_n_s32(0x3F7FFFFFu);
    v7.i64[0] = 0xFF000000FFLL;
    v7.i64[1] = 0xFF000000FFLL;
    do
    {
      v44 = vld4q_f32(a3);
      a3 += 16;
      v8 = vminq_f32(vmaxq_f32(v44.val[0], v5), v6);
      v9 = vshrq_n_u32(v8, 0x14uLL);
      v10 = vminq_f32(vmaxq_f32(v44.val[1], v5), v6);
      v11 = vshrq_n_u32(v10, 0x14uLL);
      v12 = vminq_f32(vmaxq_f32(v44.val[2], v5), v6);
      v13 = vshrq_n_u32(v12, 0x14uLL);
      v14 = vminq_f32(vmaxq_f32(v44.val[3], v5), v6);
      v44.val[0] = vshrq_n_u32(v14, 0x14uLL);
      v15 = v44.val[0].i32[0];
      v16 = &dword_29B6C27A4[v44.val[0].u32[1]];
      v17 = *&vandq_s8(vshrq_n_u32(v8, 0xCuLL), v7) | __PAIR128__(0x200000002000000, 0x200000002000000);
      v9.i32[0] = dword_29B6C27A4[v9.u32[0]];
      v9.i32[1] = dword_29B6C27A4[v9.u32[1]];
      v44.val[0].i32[0] = dword_29B6C27A4[v9.u32[2]];
      v44.val[0].i32[1] = dword_29B6C27A4[v9.u32[3]];
      v18 = vshrq_n_u32(vpaddq_s32(vmull_s16(*v9.i8, *&v17), vmull_s16(*v44.val[0].f32, *&vextq_s8(v17, v17, 8uLL))), 0x10uLL);
      v19 = *&vandq_s8(vshrq_n_u32(v10, 0xCuLL), v7) | __PAIR128__(0x200000002000000, 0x200000002000000);
      v9.i32[0] = dword_29B6C27A4[v11.u32[0]];
      v9.i32[1] = dword_29B6C27A4[v11.u32[1]];
      v44.val[0].i32[0] = dword_29B6C27A4[v11.u32[2]];
      v44.val[0].i32[1] = dword_29B6C27A4[v11.u32[3]];
      v20 = vshrq_n_u32(vpaddq_s32(vmull_s16(*v9.i8, *&v19), vmull_s16(*v44.val[0].f32, *&vextq_s8(v19, v19, 8uLL))), 0x10uLL);
      v21 = *&vandq_s8(vshrq_n_u32(v12, 0xCuLL), v7) | __PAIR128__(0x200000002000000, 0x200000002000000);
      v9.i32[0] = dword_29B6C27A4[v13.u32[0]];
      v9.i32[1] = dword_29B6C27A4[v13.u32[1]];
      v44.val[0].i32[0] = dword_29B6C27A4[v13.u32[2]];
      v44.val[0].i32[1] = dword_29B6C27A4[v13.u32[3]];
      v22 = vshrq_n_u32(vpaddq_s32(vmull_s16(*v9.i8, *&v21), vmull_s16(*v44.val[0].f32, *&vextq_s8(v21, v21, 8uLL))), 0x10uLL);
      v23 = *&vandq_s8(vshrq_n_u32(v14, 0xCuLL), v7) | __PAIR128__(0x200000002000000, 0x200000002000000);
      v9.i32[0] = dword_29B6C27A4[v15];
      v9.i32[1] = *v16;
      v44.val[0].i32[0] = dword_29B6C27A4[v44.val[0].u32[2]];
      v44.val[0].i32[1] = dword_29B6C27A4[v44.val[0].u32[3]];
      v24 = vshrq_n_u32(vpaddq_s32(vmull_s16(*v9.i8, *&v23), vmull_s16(*v44.val[0].f32, *&vextq_s8(v23, v23, 8uLL))), 0x10uLL);
      *v18.i8 = vqmovn_s32(v18);
      *v22.i8 = vqmovn_s32(v22);
      *v20.i8 = vqmovn_s32(v20);
      *v24.i8 = vqmovn_s32(v24);
      *v22.i8 = vqmovun_s16(vzip1q_s16(v18, v22));
      *v18.i8 = vqmovun_s16(vzip1q_s16(v20, v24));
      vst2_s8(result, *(&v18 - 8));
      v25 = (result + 16);
      if (v25 == v3)
      {
        v26 = v25;
      }

      else
      {
        v26 = v3 - 16;
      }

      if (v25 == v3)
      {
        v27 = a3;
      }

      else
      {
        v27 = v4;
      }

      if (v25 > (v3 - 16))
      {
        a3 = v27;
      }

      else
      {
        v26 = v25;
      }

      v28 = v25 == v3;
      result = v26;
    }

    while (!v28);
  }

  return result;
}

unint64_t sub_29AB46830(unint64_t result, int a2, char *a3)
{
  if (result != a3)
  {
    return sub_29AB402A4(result, a3, 4 * a2);
  }

  return result;
}

double sub_29AB4684C(void *a1, int a2, float32x4_t *a3)
{
  v3 = a1 + 2 * a2;
  if (a2 <= 7)
  {
    if (a2 >= 4)
    {
      do
      {
        v9 = a1 + 1;
        v10 = a3;
        v7 = vld1q_dup_f32(v10++);
        v11 = &a3->f32[2];
        v12 = vld1q_dup_f32(v11);
        *v12.f32 = vcvt_f16_f32(v12);
        v13 = &a3->f32[3];
        v14 = vld1q_dup_f32(v13);
        *v12.f32 = vext_s8(*v12.f32, vzip1_s16(*v12.f32, vcvt_f16_f32(v14)), 4uLL);
        v15 = vld1q_dup_f32(v10);
        v7.i32[0] = vzip1_s16(vcvt_f16_f32(v7), vcvt_f16_f32(v15)).u32[0];
        v7.i32[1] = v12.i32[1];
        *a1 = v7.i64[0];
        ++a3;
        v16 = (a1 + 2) > v3;
        ++a1;
      }

      while (!v16);
    }

    else
    {
      v9 = a1;
    }

    while (v9 < v3)
    {
      v7 = vld1q_dup_f32(a3->f32);
      a3 = (a3 + 4);
      *v7.f32 = vcvt_f16_f32(v7);
      *v9++ = v7.i16[0];
    }
  }

  else
  {
    v4 = a3[-2].i64 + 4 * a2;
    do
    {
      do
      {
        v5 = *a3;
        v6 = a3[1];
        a3 += 2;
        v7 = vcvt_hight_f16_f32(vcvt_f16_f32(v5), v6);
        *a1 = v7;
        a1 += 2;
      }

      while (a1 <= v3 - 16);
      a3 = v4;
      v8 = a1 == v3;
      a1 = (v3 - 16);
    }

    while (!v8);
  }

  return *v7.i64;
}

char *sub_29AB46914(char *result, int a2, float *a3)
{
  v3 = &result[a2];
  if (a2 <= 15)
  {
    do
    {
      v23 = *a3;
      if (*a3 <= 0.00012207)
      {
        LOBYTE(v24) = 0;
      }

      else if (v23 <= 1.0)
      {
        v24 = (((*&aSZ[4 * ((LODWORD(v23) - 956301312) >> 20)] >> 7) & 0xFFFE00) + *&aSZ[4 * ((LODWORD(v23) - 956301312) >> 20)] * (LODWORD(v23) >> 12)) >> 16;
      }

      else
      {
        LOBYTE(v24) = -1;
      }

      *result = v24;
      v25 = a3[1];
      if (v25 <= 0.00012207)
      {
        LOBYTE(v26) = 0;
      }

      else if (v25 <= 1.0)
      {
        v26 = (((*&aSZ[4 * ((LODWORD(v25) - 956301312) >> 20)] >> 7) & 0xFFFE00) + *&aSZ[4 * ((LODWORD(v25) - 956301312) >> 20)] * (LODWORD(v25) >> 12)) >> 16;
      }

      else
      {
        LOBYTE(v26) = -1;
      }

      result[1] = v26;
      v27 = a3[2];
      if (v27 <= 0.00012207)
      {
        LOBYTE(v28) = 0;
      }

      else if (v27 <= 1.0)
      {
        v28 = (((*&aSZ[4 * ((LODWORD(v27) - 956301312) >> 20)] >> 7) & 0xFFFE00) + *&aSZ[4 * ((LODWORD(v27) - 956301312) >> 20)] * (LODWORD(v27) >> 12)) >> 16;
      }

      else
      {
        LOBYTE(v28) = -1;
      }

      result[2] = v28;
      v29 = (a3[3] * 255.0) + 0.5;
      if (v29 < 0.0)
      {
        v29 = 0.0;
      }

      if (v29 > 255.0)
      {
        v29 = 255.0;
      }

      result[3] = v29;
      result += 4;
      a3 += 4;
    }

    while (result < v3);
  }

  else
  {
    v4 = &a3[a2 - 16];
    v5.i64[0] = 0x3900000039000000;
    v5.i64[1] = 0x3900000039000000;
    v6 = vdupq_n_s32(0x3F7FFFFFu);
    v7 = vdupq_n_s32(0x437F0000u);
    v8.i64[0] = 0x3F0000003F000000;
    v8.i64[1] = 0x3F0000003F000000;
    v9.i64[0] = 0xFF000000FFLL;
    v9.i64[1] = 0xFF000000FFLL;
    do
    {
      v30 = vld4q_f32(a3);
      a3 += 16;
      v10 = vminq_f32(vmaxq_f32(v30.val[0], v5), v6);
      v11 = vshrq_n_u32(v10, 0x14uLL);
      v12 = vminq_f32(vmaxq_f32(v30.val[1], v5), v6);
      v13 = vshrq_n_u32(v12, 0x14uLL);
      v14 = vminq_f32(vmaxq_f32(v30.val[2], v5), v6);
      v15 = vshrq_n_u32(v14, 0x14uLL);
      v16 = vcvtq_s32_f32(vminq_f32(vmaxq_f32(vaddq_f32(vmulq_f32(v30.val[3], v7), v8), 0), v7));
      v30.val[0] = (*&vandq_s8(vshrq_n_u32(v10, 0xCuLL), v9) | __PAIR128__(0x200000002000000, 0x200000002000000));
      v30.val[1].i32[0] = dword_29B6C27A4[v11.u32[0]];
      v30.val[1].i32[1] = dword_29B6C27A4[v11.u32[1]];
      v30.val[2].i32[0] = dword_29B6C27A4[v11.u32[2]];
      v30.val[2].i32[1] = dword_29B6C27A4[v11.u32[3]];
      v30.val[0] = vshrq_n_u32(vpaddq_s32(vmull_s16(*v30.val[1].f32, *v30.val[0].f32), vmull_s16(*v30.val[2].f32, *&vextq_s8(v30.val[0], v30.val[0], 8uLL))), 0x10uLL);
      v30.val[1] = (*&vandq_s8(vshrq_n_u32(v12, 0xCuLL), v9) | __PAIR128__(0x200000002000000, 0x200000002000000));
      v30.val[2].i32[0] = dword_29B6C27A4[v13.u32[0]];
      v30.val[2].i32[1] = dword_29B6C27A4[v13.u32[1]];
      v30.val[3].i32[0] = dword_29B6C27A4[v13.u32[2]];
      v30.val[3].i32[1] = dword_29B6C27A4[v13.u32[3]];
      v30.val[1] = vshrq_n_u32(vpaddq_s32(vmull_s16(*v30.val[2].f32, *v30.val[1].f32), vmull_s16(*v30.val[3].f32, *&vextq_s8(v30.val[1], v30.val[1], 8uLL))), 0x10uLL);
      v17 = *&vandq_s8(vshrq_n_u32(v14, 0xCuLL), v9) | __PAIR128__(0x200000002000000, 0x200000002000000);
      v30.val[2].i32[0] = dword_29B6C27A4[v15.u32[0]];
      v30.val[2].i32[1] = dword_29B6C27A4[v15.u32[1]];
      v30.val[3].i32[0] = dword_29B6C27A4[v15.u32[2]];
      v30.val[3].i32[1] = dword_29B6C27A4[v15.u32[3]];
      v18 = vshrq_n_u32(vpaddq_s32(vmull_s16(*v30.val[2].f32, *&v17), vmull_s16(*v30.val[3].f32, *&vextq_s8(v17, v17, 8uLL))), 0x10uLL);
      *v30.val[0].f32 = vqmovn_s32(v30.val[0]);
      *v18.i8 = vqmovn_s32(v18);
      *v30.val[1].f32 = vqmovn_s32(v30.val[1]);
      *v16.i8 = vqmovn_s32(v16);
      *v30.val[2].f32 = vqmovun_s16(vzip1q_s16(v30.val[0], v18));
      *v30.val[3].f32 = vqmovun_s16(vzip1q_s16(v30.val[1], v16));
      vst2_s8(result, v30.val[2]);
      v19 = (result + 16);
      if (v19 == v3)
      {
        v20 = v19;
      }

      else
      {
        v20 = v3 - 16;
      }

      if (v19 == v3)
      {
        v21 = a3;
      }

      else
      {
        v21 = v4;
      }

      if (v19 > (v3 - 16))
      {
        a3 = v21;
      }

      else
      {
        v20 = v19;
      }

      v22 = v19 == v3;
      result = v20;
    }

    while (!v22);
  }

  return result;
}

char *sub_29AB46C1C(char *result, int a2, float *a3)
{
  v3 = &result[a2];
  if (a2 <= 15)
  {
    do
    {
      v23 = *a3;
      if (*a3 <= 0.00012207)
      {
        LOBYTE(v24) = 0;
      }

      else if (v23 <= 1.0)
      {
        v24 = (((*&aSZ[4 * ((LODWORD(v23) - 956301312) >> 20)] >> 7) & 0xFFFE00) + *&aSZ[4 * ((LODWORD(v23) - 956301312) >> 20)] * (LODWORD(v23) >> 12)) >> 16;
      }

      else
      {
        LOBYTE(v24) = -1;
      }

      result[2] = v24;
      v25 = a3[1];
      if (v25 <= 0.00012207)
      {
        LOBYTE(v26) = 0;
      }

      else if (v25 <= 1.0)
      {
        v26 = (((*&aSZ[4 * ((LODWORD(v25) - 956301312) >> 20)] >> 7) & 0xFFFE00) + *&aSZ[4 * ((LODWORD(v25) - 956301312) >> 20)] * (LODWORD(v25) >> 12)) >> 16;
      }

      else
      {
        LOBYTE(v26) = -1;
      }

      result[1] = v26;
      v27 = a3[2];
      if (v27 <= 0.00012207)
      {
        LOBYTE(v28) = 0;
      }

      else if (v27 <= 1.0)
      {
        v28 = (((*&aSZ[4 * ((LODWORD(v27) - 956301312) >> 20)] >> 7) & 0xFFFE00) + *&aSZ[4 * ((LODWORD(v27) - 956301312) >> 20)] * (LODWORD(v27) >> 12)) >> 16;
      }

      else
      {
        LOBYTE(v28) = -1;
      }

      *result = v28;
      v29 = (a3[3] * 255.0) + 0.5;
      if (v29 < 0.0)
      {
        v29 = 0.0;
      }

      if (v29 > 255.0)
      {
        v29 = 255.0;
      }

      result[3] = v29;
      result += 4;
      a3 += 4;
    }

    while (result < v3);
  }

  else
  {
    v4 = &a3[a2 - 16];
    v5.i64[0] = 0x3900000039000000;
    v5.i64[1] = 0x3900000039000000;
    v6 = vdupq_n_s32(0x3F7FFFFFu);
    v7 = vdupq_n_s32(0x437F0000u);
    v8.i64[0] = 0x3F0000003F000000;
    v8.i64[1] = 0x3F0000003F000000;
    v9.i64[0] = 0xFF000000FFLL;
    v9.i64[1] = 0xFF000000FFLL;
    do
    {
      v30 = vld4q_f32(a3);
      a3 += 16;
      v10 = vminq_f32(vmaxq_f32(v30.val[0], v5), v6);
      v11 = vshrq_n_u32(v10, 0x14uLL);
      v12 = vminq_f32(vmaxq_f32(v30.val[1], v5), v6);
      v13 = vshrq_n_u32(v12, 0x14uLL);
      v14 = vminq_f32(vmaxq_f32(v30.val[2], v5), v6);
      v15 = vshrq_n_u32(v14, 0x14uLL);
      v16 = vcvtq_s32_f32(vminq_f32(vmaxq_f32(vaddq_f32(vmulq_f32(v30.val[3], v7), v8), 0), v7));
      v30.val[0] = (*&vandq_s8(vshrq_n_u32(v10, 0xCuLL), v9) | __PAIR128__(0x200000002000000, 0x200000002000000));
      v30.val[1].i32[0] = dword_29B6C27A4[v11.u32[0]];
      v30.val[1].i32[1] = dword_29B6C27A4[v11.u32[1]];
      v30.val[2].i32[0] = dword_29B6C27A4[v11.u32[2]];
      v30.val[2].i32[1] = dword_29B6C27A4[v11.u32[3]];
      v30.val[0] = vshrq_n_u32(vpaddq_s32(vmull_s16(*v30.val[1].f32, *v30.val[0].f32), vmull_s16(*v30.val[2].f32, *&vextq_s8(v30.val[0], v30.val[0], 8uLL))), 0x10uLL);
      v30.val[1] = (*&vandq_s8(vshrq_n_u32(v12, 0xCuLL), v9) | __PAIR128__(0x200000002000000, 0x200000002000000));
      v30.val[2].i32[0] = dword_29B6C27A4[v13.u32[0]];
      v30.val[2].i32[1] = dword_29B6C27A4[v13.u32[1]];
      v30.val[3].i32[0] = dword_29B6C27A4[v13.u32[2]];
      v30.val[3].i32[1] = dword_29B6C27A4[v13.u32[3]];
      v30.val[1] = vshrq_n_u32(vpaddq_s32(vmull_s16(*v30.val[2].f32, *v30.val[1].f32), vmull_s16(*v30.val[3].f32, *&vextq_s8(v30.val[1], v30.val[1], 8uLL))), 0x10uLL);
      v17 = *&vandq_s8(vshrq_n_u32(v14, 0xCuLL), v9) | __PAIR128__(0x200000002000000, 0x200000002000000);
      v30.val[2].i32[0] = dword_29B6C27A4[v15.u32[0]];
      v30.val[2].i32[1] = dword_29B6C27A4[v15.u32[1]];
      v30.val[3].i32[0] = dword_29B6C27A4[v15.u32[2]];
      v30.val[3].i32[1] = dword_29B6C27A4[v15.u32[3]];
      v18 = vshrq_n_u32(vpaddq_s32(vmull_s16(*v30.val[2].f32, *&v17), vmull_s16(*v30.val[3].f32, *&vextq_s8(v17, v17, 8uLL))), 0x10uLL);
      *v18.i8 = vqmovn_s32(v18);
      *v30.val[0].f32 = vqmovn_s32(v30.val[0]);
      *v30.val[1].f32 = vqmovn_s32(v30.val[1]);
      *v16.i8 = vqmovn_s32(v16);
      *v30.val[2].f32 = vqmovun_s16(vzip1q_s16(v18, v30.val[0]));
      *v30.val[3].f32 = vqmovun_s16(vzip1q_s16(v30.val[1], v16));
      vst2_s8(result, v30.val[2]);
      v19 = (result + 16);
      if (v19 == v3)
      {
        v20 = v19;
      }

      else
      {
        v20 = v3 - 16;
      }

      if (v19 == v3)
      {
        v21 = a3;
      }

      else
      {
        v21 = v4;
      }

      if (v19 > (v3 - 16))
      {
        a3 = v21;
      }

      else
      {
        v20 = v19;
      }

      v22 = v19 == v3;
      result = v20;
    }

    while (!v22);
  }

  return result;
}

char *sub_29AB46F24(char *result, int a2, float *a3)
{
  v3 = &result[a2];
  if (a2 <= 15)
  {
    if (a2 >= 4)
    {
      v29 = result + 4;
      do
      {
        v30 = a3[2];
        if (v30 <= 0.00012207)
        {
          LOBYTE(v31) = 0;
        }

        else if (v30 <= 1.0)
        {
          v31 = (((*&aSZ[4 * ((LODWORD(v30) - 956301312) >> 20)] >> 7) & 0xFFFE00) + *&aSZ[4 * ((LODWORD(v30) - 956301312) >> 20)] * (LODWORD(v30) >> 12)) >> 16;
        }

        else
        {
          LOBYTE(v31) = -1;
        }

        *(v29 - 4) = v31;
        v32 = a3[1];
        if (v32 <= 0.00012207)
        {
          LOBYTE(v33) = 0;
        }

        else if (v32 <= 1.0)
        {
          v33 = (((*&aSZ[4 * ((LODWORD(v32) - 956301312) >> 20)] >> 7) & 0xFFFE00) + *&aSZ[4 * ((LODWORD(v32) - 956301312) >> 20)] * (LODWORD(v32) >> 12)) >> 16;
        }

        else
        {
          LOBYTE(v33) = -1;
        }

        *(v29 - 3) = v33;
        v34 = *a3;
        if (*a3 <= 0.00012207)
        {
          LOBYTE(v35) = 0;
        }

        else if (v34 <= 1.0)
        {
          v35 = (((*&aSZ[4 * ((LODWORD(v34) - 956301312) >> 20)] >> 7) & 0xFFFE00) + *&aSZ[4 * ((LODWORD(v34) - 956301312) >> 20)] * (LODWORD(v34) >> 12)) >> 16;
        }

        else
        {
          LOBYTE(v35) = -1;
        }

        *(v29 - 2) = v35;
        v36 = a3[3];
        if (v36 <= 0.00012207)
        {
          LOBYTE(v37) = 0;
        }

        else if (v36 <= 1.0)
        {
          v37 = (((*&aSZ[4 * ((LODWORD(v36) - 956301312) >> 20)] >> 7) & 0xFFFE00) + *&aSZ[4 * ((LODWORD(v36) - 956301312) >> 20)] * (LODWORD(v36) >> 12)) >> 16;
        }

        else
        {
          LOBYTE(v37) = -1;
        }

        *(v29 - 1) = v37;
        a3 += 4;
        v29 += 4;
      }

      while (v29 <= v3);
    }
  }

  else
  {
    v4 = &a3[a2 - 16];
    v5.i64[0] = 0x3900000039000000;
    v5.i64[1] = 0x3900000039000000;
    v6 = vdupq_n_s32(0x3F7FFFFFu);
    v7.i64[0] = 0xFF000000FFLL;
    v7.i64[1] = 0xFF000000FFLL;
    do
    {
      v38 = vld4q_f32(a3);
      a3 += 16;
      v8 = vminq_f32(vmaxq_f32(v38.val[0], v5), v6);
      v9 = vshrq_n_u32(v8, 0x14uLL);
      v10 = vminq_f32(vmaxq_f32(v38.val[1], v5), v6);
      v11 = vshrq_n_u32(v10, 0x14uLL);
      v12 = vminq_f32(vmaxq_f32(v38.val[2], v5), v6);
      v13 = vshrq_n_u32(v12, 0x14uLL);
      v14 = vminq_f32(vmaxq_f32(v38.val[3], v5), v6);
      v38.val[0] = vshrq_n_u32(v14, 0x14uLL);
      v15 = v38.val[0].i32[0];
      v16 = &dword_29B6C27A4[v38.val[0].u32[1]];
      v17 = *&vandq_s8(vshrq_n_u32(v8, 0xCuLL), v7) | __PAIR128__(0x200000002000000, 0x200000002000000);
      v9.i32[0] = dword_29B6C27A4[v9.u32[0]];
      v9.i32[1] = dword_29B6C27A4[v9.u32[1]];
      v38.val[0].i32[0] = dword_29B6C27A4[v9.u32[2]];
      v38.val[0].i32[1] = dword_29B6C27A4[v9.u32[3]];
      v18 = vshrq_n_u32(vpaddq_s32(vmull_s16(*v9.i8, *&v17), vmull_s16(*v38.val[0].f32, *&vextq_s8(v17, v17, 8uLL))), 0x10uLL);
      v19 = *&vandq_s8(vshrq_n_u32(v10, 0xCuLL), v7) | __PAIR128__(0x200000002000000, 0x200000002000000);
      v9.i32[0] = dword_29B6C27A4[v11.u32[0]];
      v9.i32[1] = dword_29B6C27A4[v11.u32[1]];
      v38.val[0].i32[0] = dword_29B6C27A4[v11.u32[2]];
      v38.val[0].i32[1] = dword_29B6C27A4[v11.u32[3]];
      v20 = vshrq_n_u32(vpaddq_s32(vmull_s16(*v9.i8, *&v19), vmull_s16(*v38.val[0].f32, *&vextq_s8(v19, v19, 8uLL))), 0x10uLL);
      v21 = *&vandq_s8(vshrq_n_u32(v12, 0xCuLL), v7) | __PAIR128__(0x200000002000000, 0x200000002000000);
      v9.i32[0] = dword_29B6C27A4[v13.u32[0]];
      v9.i32[1] = dword_29B6C27A4[v13.u32[1]];
      v38.val[0].i32[0] = dword_29B6C27A4[v13.u32[2]];
      v38.val[0].i32[1] = dword_29B6C27A4[v13.u32[3]];
      v22 = vshrq_n_u32(vpaddq_s32(vmull_s16(*v9.i8, *&v21), vmull_s16(*v38.val[0].f32, *&vextq_s8(v21, v21, 8uLL))), 0x10uLL);
      v23 = *&vandq_s8(vshrq_n_u32(v14, 0xCuLL), v7) | __PAIR128__(0x200000002000000, 0x200000002000000);
      v9.i32[0] = dword_29B6C27A4[v15];
      v9.i32[1] = *v16;
      v38.val[0].i32[0] = dword_29B6C27A4[v38.val[0].u32[2]];
      v38.val[0].i32[1] = dword_29B6C27A4[v38.val[0].u32[3]];
      v24 = vshrq_n_u32(vpaddq_s32(vmull_s16(*v9.i8, *&v23), vmull_s16(*v38.val[0].f32, *&vextq_s8(v23, v23, 8uLL))), 0x10uLL);
      *v22.i8 = vqmovn_s32(v22);
      *v18.i8 = vqmovn_s32(v18);
      *v20.i8 = vqmovn_s32(v20);
      *v24.i8 = vqmovn_s32(v24);
      *v22.i8 = vqmovun_s16(vzip1q_s16(v22, v18));
      *v18.i8 = vqmovun_s16(vzip1q_s16(v20, v24));
      vst2_s8(result, *(&v18 - 8));
      v25 = (result + 16);
      if (v25 == v3)
      {
        v26 = v25;
      }

      else
      {
        v26 = v3 - 16;
      }

      if (v25 == v3)
      {
        v27 = a3;
      }

      else
      {
        v27 = v4;
      }

      if (v25 > (v3 - 16))
      {
        a3 = v27;
      }

      else
      {
        v26 = v25;
      }

      v28 = v25 == v3;
      result = v26;
    }

    while (!v28);
  }

  return result;
}

int8x16_t *sub_29AB47298(int8x16_t *result, int a2, int8x16_t *a3)
{
  v3 = (result + 4 * a2);
  if (a2 <= 7)
  {
    if (a2 >= 4)
    {
      v9 = result + 1;
      do
      {
        v10 = *a3++;
        v9[-1] = vqtbl1q_s8(v10, xmmword_29B6C2C90);
        ++v9;
      }

      while (v9 <= v3);
    }
  }

  else
  {
    v4 = a3[-2].i64 + 4 * a2;
    v5 = &v3[-2];
    do
    {
      v6 = &result[2];
      v7 = &result[2] < v5;
      if (&result[2] == v3)
      {
        v7 = 1;
      }

      v8 = vqtbl1q_s8(a3[1], xmmword_29B6C2C90);
      *result = vqtbl1q_s8(*a3, xmmword_29B6C2C90);
      result[1] = v8;
      if (v7)
      {
        result += 2;
      }

      else
      {
        result = v3 - 2;
      }

      if (v7)
      {
        a3 += 2;
      }

      else
      {
        a3 = v4;
      }
    }

    while (v6 < v5 || v6 != v3);
  }

  return result;
}

__n64 sub_29AB47334(float16x8_t *a1, int a2, int8x16_t *a3)
{
  v3 = (a1 + 2 * a2);
  if (a2 <= 7)
  {
    if (a2 >= 4)
    {
      v9 = &a1->i64[1];
      v10 = &a3->i32[2];
      do
      {
        v11 = v10 - 2;
        v12 = v10;
        v13 = vld1q_dup_f32(v12++);
        v14 = vld1q_dup_f32(v11);
        *v14.f32 = vcvt_f16_f32(v14);
        v15 = vld1q_dup_f32(v12);
        *v14.f32 = vext_s8(*v14.f32, vzip1_s16(*v14.f32, vcvt_f16_f32(v15)), 4uLL);
        v16 = v10 - 1;
        v17 = vld1q_dup_f32(v16);
        result.n64_u32[0] = vzip1_s16(vcvt_f16_f32(v13), vcvt_f16_f32(v17)).u32[0];
        result.n64_u32[1] = v14.u32[1];
        *(v9++ - 1) = result.n64_u64[0];
        v10 += 4;
      }

      while (v9 <= v3);
    }
  }

  else
  {
    v4 = a3[-2].i64 + 4 * a2;
    result.n64_u64[0] = 0x70605040B0A0908;
    do
    {
      do
      {
        v6 = *a3;
        v7 = a3[1];
        a3 += 2;
        *a1++ = vcvt_hight_f16_f32(vcvt_f16_f32(vqtbl1q_s8(v6, xmmword_29B6C2C90)), vqtbl1q_s8(v7, xmmword_29B6C2C90));
      }

      while (a1 <= &v3[-1]);
      a3 = v4;
      v8 = a1 == v3;
      a1 = v3 - 1;
    }

    while (!v8);
  }

  return result;
}

char *sub_29AB473F0(char *result, int a2, float *a3)
{
  v3 = &result[a2];
  if (a2 <= 15)
  {
    do
    {
      v23 = *a3;
      if (*a3 <= 0.00012207)
      {
        LOBYTE(v24) = 0;
      }

      else if (v23 <= 1.0)
      {
        v24 = (((*&aSZ[4 * ((LODWORD(v23) - 956301312) >> 20)] >> 7) & 0xFFFE00) + *&aSZ[4 * ((LODWORD(v23) - 956301312) >> 20)] * (LODWORD(v23) >> 12)) >> 16;
      }

      else
      {
        LOBYTE(v24) = -1;
      }

      result[1] = v24;
      v25 = a3[1];
      if (v25 <= 0.00012207)
      {
        LOBYTE(v26) = 0;
      }

      else if (v25 <= 1.0)
      {
        v26 = (((*&aSZ[4 * ((LODWORD(v25) - 956301312) >> 20)] >> 7) & 0xFFFE00) + *&aSZ[4 * ((LODWORD(v25) - 956301312) >> 20)] * (LODWORD(v25) >> 12)) >> 16;
      }

      else
      {
        LOBYTE(v26) = -1;
      }

      result[2] = v26;
      v27 = a3[2];
      if (v27 <= 0.00012207)
      {
        LOBYTE(v28) = 0;
      }

      else if (v27 <= 1.0)
      {
        v28 = (((*&aSZ[4 * ((LODWORD(v27) - 956301312) >> 20)] >> 7) & 0xFFFE00) + *&aSZ[4 * ((LODWORD(v27) - 956301312) >> 20)] * (LODWORD(v27) >> 12)) >> 16;
      }

      else
      {
        LOBYTE(v28) = -1;
      }

      result[3] = v28;
      v29 = (a3[3] * 255.0) + 0.5;
      if (v29 < 0.0)
      {
        v29 = 0.0;
      }

      if (v29 > 255.0)
      {
        v29 = 255.0;
      }

      *result = v29;
      result += 4;
      a3 += 4;
    }

    while (result < v3);
  }

  else
  {
    v4 = &a3[a2 - 16];
    v5.i64[0] = 0x3900000039000000;
    v5.i64[1] = 0x3900000039000000;
    v6 = vdupq_n_s32(0x3F7FFFFFu);
    v7 = vdupq_n_s32(0x437F0000u);
    v8.i64[0] = 0x3F0000003F000000;
    v8.i64[1] = 0x3F0000003F000000;
    v9.i64[0] = 0xFF000000FFLL;
    v9.i64[1] = 0xFF000000FFLL;
    do
    {
      v30 = vld4q_f32(a3);
      a3 += 16;
      v10 = vminq_f32(vmaxq_f32(v30.val[0], v5), v6);
      v11 = vshrq_n_u32(v10, 0x14uLL);
      v12 = vminq_f32(vmaxq_f32(v30.val[1], v5), v6);
      v13 = vshrq_n_u32(v12, 0x14uLL);
      v14 = vminq_f32(vmaxq_f32(v30.val[2], v5), v6);
      v15 = vshrq_n_u32(v14, 0x14uLL);
      v16 = vcvtq_s32_f32(vminq_f32(vmaxq_f32(vaddq_f32(vmulq_f32(v30.val[3], v7), v8), 0), v7));
      v30.val[0] = (*&vandq_s8(vshrq_n_u32(v10, 0xCuLL), v9) | __PAIR128__(0x200000002000000, 0x200000002000000));
      v30.val[1].i32[0] = dword_29B6C27A4[v11.u32[0]];
      v30.val[1].i32[1] = dword_29B6C27A4[v11.u32[1]];
      v30.val[2].i32[0] = dword_29B6C27A4[v11.u32[2]];
      v30.val[2].i32[1] = dword_29B6C27A4[v11.u32[3]];
      v30.val[0] = vshrq_n_u32(vpaddq_s32(vmull_s16(*v30.val[1].f32, *v30.val[0].f32), vmull_s16(*v30.val[2].f32, *&vextq_s8(v30.val[0], v30.val[0], 8uLL))), 0x10uLL);
      v30.val[1] = (*&vandq_s8(vshrq_n_u32(v12, 0xCuLL), v9) | __PAIR128__(0x200000002000000, 0x200000002000000));
      v30.val[2].i32[0] = dword_29B6C27A4[v13.u32[0]];
      v30.val[2].i32[1] = dword_29B6C27A4[v13.u32[1]];
      v30.val[3].i32[0] = dword_29B6C27A4[v13.u32[2]];
      v30.val[3].i32[1] = dword_29B6C27A4[v13.u32[3]];
      v30.val[1] = vshrq_n_u32(vpaddq_s32(vmull_s16(*v30.val[2].f32, *v30.val[1].f32), vmull_s16(*v30.val[3].f32, *&vextq_s8(v30.val[1], v30.val[1], 8uLL))), 0x10uLL);
      v17 = *&vandq_s8(vshrq_n_u32(v14, 0xCuLL), v9) | __PAIR128__(0x200000002000000, 0x200000002000000);
      v30.val[2].i32[0] = dword_29B6C27A4[v15.u32[0]];
      v30.val[2].i32[1] = dword_29B6C27A4[v15.u32[1]];
      v30.val[3].i32[0] = dword_29B6C27A4[v15.u32[2]];
      v30.val[3].i32[1] = dword_29B6C27A4[v15.u32[3]];
      v18 = vshrq_n_u32(vpaddq_s32(vmull_s16(*v30.val[2].f32, *&v17), vmull_s16(*v30.val[3].f32, *&vextq_s8(v17, v17, 8uLL))), 0x10uLL);
      *v16.i8 = vqmovn_s32(v16);
      *v30.val[1].f32 = vqmovn_s32(v30.val[1]);
      *v30.val[0].f32 = vqmovn_s32(v30.val[0]);
      *v18.i8 = vqmovn_s32(v18);
      *v30.val[1].f32 = vqmovun_s16(vzip1q_s16(v16, v30.val[1]));
      *v30.val[2].f32 = vqmovun_s16(vzip1q_s16(v30.val[0], v18));
      vst2_s8(result, v30.val[1]);
      v19 = (result + 16);
      if (v19 == v3)
      {
        v20 = v19;
      }

      else
      {
        v20 = v3 - 16;
      }

      if (v19 == v3)
      {
        v21 = a3;
      }

      else
      {
        v21 = v4;
      }

      if (v19 > (v3 - 16))
      {
        a3 = v21;
      }

      else
      {
        v20 = v19;
      }

      v22 = v19 == v3;
      result = v20;
    }

    while (!v22);
  }

  return result;
}

char *sub_29AB476F4(char *result, int a2, float *a3)
{
  v3 = &result[a2];
  if (a2 <= 15)
  {
    if (a2 >= 4)
    {
      v29 = result + 4;
      do
      {
        v30 = a3[3];
        if (v30 <= 0.00012207)
        {
          LOBYTE(v31) = 0;
        }

        else if (v30 <= 1.0)
        {
          v31 = (((*&aSZ[4 * ((LODWORD(v30) - 956301312) >> 20)] >> 7) & 0xFFFE00) + *&aSZ[4 * ((LODWORD(v30) - 956301312) >> 20)] * (LODWORD(v30) >> 12)) >> 16;
        }

        else
        {
          LOBYTE(v31) = -1;
        }

        *(v29 - 4) = v31;
        v32 = *a3;
        if (*a3 <= 0.00012207)
        {
          LOBYTE(v33) = 0;
        }

        else if (v32 <= 1.0)
        {
          v33 = (((*&aSZ[4 * ((LODWORD(v32) - 956301312) >> 20)] >> 7) & 0xFFFE00) + *&aSZ[4 * ((LODWORD(v32) - 956301312) >> 20)] * (LODWORD(v32) >> 12)) >> 16;
        }

        else
        {
          LOBYTE(v33) = -1;
        }

        *(v29 - 3) = v33;
        v34 = a3[1];
        if (v34 <= 0.00012207)
        {
          LOBYTE(v35) = 0;
        }

        else if (v34 <= 1.0)
        {
          v35 = (((*&aSZ[4 * ((LODWORD(v34) - 956301312) >> 20)] >> 7) & 0xFFFE00) + *&aSZ[4 * ((LODWORD(v34) - 956301312) >> 20)] * (LODWORD(v34) >> 12)) >> 16;
        }

        else
        {
          LOBYTE(v35) = -1;
        }

        *(v29 - 2) = v35;
        v36 = a3[2];
        if (v36 <= 0.00012207)
        {
          LOBYTE(v37) = 0;
        }

        else if (v36 <= 1.0)
        {
          v37 = (((*&aSZ[4 * ((LODWORD(v36) - 956301312) >> 20)] >> 7) & 0xFFFE00) + *&aSZ[4 * ((LODWORD(v36) - 956301312) >> 20)] * (LODWORD(v36) >> 12)) >> 16;
        }

        else
        {
          LOBYTE(v37) = -1;
        }

        *(v29 - 1) = v37;
        a3 += 4;
        v29 += 4;
      }

      while (v29 <= v3);
    }
  }

  else
  {
    v4 = &a3[a2 - 16];
    v5.i64[0] = 0x3900000039000000;
    v5.i64[1] = 0x3900000039000000;
    v6 = vdupq_n_s32(0x3F7FFFFFu);
    v7.i64[0] = 0xFF000000FFLL;
    v7.i64[1] = 0xFF000000FFLL;
    do
    {
      v38 = vld4q_f32(a3);
      a3 += 16;
      v8 = vminq_f32(vmaxq_f32(v38.val[0], v5), v6);
      v9 = vshrq_n_u32(v8, 0x14uLL);
      v10 = vminq_f32(vmaxq_f32(v38.val[1], v5), v6);
      v11 = vshrq_n_u32(v10, 0x14uLL);
      v12 = vminq_f32(vmaxq_f32(v38.val[2], v5), v6);
      v13 = vshrq_n_u32(v12, 0x14uLL);
      v14 = vminq_f32(vmaxq_f32(v38.val[3], v5), v6);
      v38.val[0] = vshrq_n_u32(v14, 0x14uLL);
      v15 = v38.val[0].i32[0];
      v16 = &dword_29B6C27A4[v38.val[0].u32[1]];
      v17 = *&vandq_s8(vshrq_n_u32(v8, 0xCuLL), v7) | __PAIR128__(0x200000002000000, 0x200000002000000);
      v9.i32[0] = dword_29B6C27A4[v9.u32[0]];
      v9.i32[1] = dword_29B6C27A4[v9.u32[1]];
      v38.val[0].i32[0] = dword_29B6C27A4[v9.u32[2]];
      v38.val[0].i32[1] = dword_29B6C27A4[v9.u32[3]];
      v18 = vshrq_n_u32(vpaddq_s32(vmull_s16(*v9.i8, *&v17), vmull_s16(*v38.val[0].f32, *&vextq_s8(v17, v17, 8uLL))), 0x10uLL);
      v19 = *&vandq_s8(vshrq_n_u32(v10, 0xCuLL), v7) | __PAIR128__(0x200000002000000, 0x200000002000000);
      v9.i32[0] = dword_29B6C27A4[v11.u32[0]];
      v9.i32[1] = dword_29B6C27A4[v11.u32[1]];
      v38.val[0].i32[0] = dword_29B6C27A4[v11.u32[2]];
      v38.val[0].i32[1] = dword_29B6C27A4[v11.u32[3]];
      v20 = vshrq_n_u32(vpaddq_s32(vmull_s16(*v9.i8, *&v19), vmull_s16(*v38.val[0].f32, *&vextq_s8(v19, v19, 8uLL))), 0x10uLL);
      v21 = *&vandq_s8(vshrq_n_u32(v12, 0xCuLL), v7) | __PAIR128__(0x200000002000000, 0x200000002000000);
      v9.i32[0] = dword_29B6C27A4[v13.u32[0]];
      v9.i32[1] = dword_29B6C27A4[v13.u32[1]];
      v38.val[0].i32[0] = dword_29B6C27A4[v13.u32[2]];
      v38.val[0].i32[1] = dword_29B6C27A4[v13.u32[3]];
      v22 = vshrq_n_u32(vpaddq_s32(vmull_s16(*v9.i8, *&v21), vmull_s16(*v38.val[0].f32, *&vextq_s8(v21, v21, 8uLL))), 0x10uLL);
      v23 = *&vandq_s8(vshrq_n_u32(v14, 0xCuLL), v7) | __PAIR128__(0x200000002000000, 0x200000002000000);
      v9.i32[0] = dword_29B6C27A4[v15];
      v9.i32[1] = *v16;
      v38.val[0].i32[0] = dword_29B6C27A4[v38.val[0].u32[2]];
      v38.val[0].i32[1] = dword_29B6C27A4[v38.val[0].u32[3]];
      v24 = vshrq_n_u32(vpaddq_s32(vmull_s16(*v9.i8, *&v23), vmull_s16(*v38.val[0].f32, *&vextq_s8(v23, v23, 8uLL))), 0x10uLL);
      *v24.i8 = vqmovn_s32(v24);
      *v20.i8 = vqmovn_s32(v20);
      *v18.i8 = vqmovn_s32(v18);
      *v22.i8 = vqmovn_s32(v22);
      *v20.i8 = vqmovun_s16(vzip1q_s16(v24, v20));
      *v9.i8 = vqmovun_s16(vzip1q_s16(v18, v22));
      vst2_s8(result, *(&v9 - 8));
      v25 = (result + 16);
      if (v25 == v3)
      {
        v26 = v25;
      }

      else
      {
        v26 = v3 - 16;
      }

      if (v25 == v3)
      {
        v27 = a3;
      }

      else
      {
        v27 = v4;
      }

      if (v25 > (v3 - 16))
      {
        a3 = v27;
      }

      else
      {
        v26 = v25;
      }

      v28 = v25 == v3;
      result = v26;
    }

    while (!v28);
  }

  return result;
}

int8x16_t *sub_29AB47A68(int8x16_t *result, int a2, int8x16_t *a3)
{
  v3 = (result + 4 * a2);
  if (a2 <= 7)
  {
    if (a2 >= 4)
    {
      v9 = result + 1;
      do
      {
        v10 = *a3++;
        v9[-1] = vqtbl1q_s8(v10, xmmword_29B6C2CC0);
        ++v9;
      }

      while (v9 <= v3);
    }
  }

  else
  {
    v4 = a3[-2].i64 + 4 * a2;
    v5 = &v3[-2];
    do
    {
      v6 = &result[2];
      v7 = &result[2] < v5;
      if (&result[2] == v3)
      {
        v7 = 1;
      }

      v8 = vqtbl1q_s8(a3[1], xmmword_29B6C2CC0);
      *result = vqtbl1q_s8(*a3, xmmword_29B6C2CC0);
      result[1] = v8;
      if (v7)
      {
        result += 2;
      }

      else
      {
        result = v3 - 2;
      }

      if (v7)
      {
        a3 += 2;
      }

      else
      {
        a3 = v4;
      }
    }

    while (v6 < v5 || v6 != v3);
  }

  return result;
}

int8x8_t sub_29AB47B04(float16x8_t *a1, int a2, int8x16_t *a3)
{
  v3 = (a1 + 2 * a2);
  if (a2 <= 7)
  {
    if (a2 >= 4)
    {
      v9 = &a1->i64[1];
      v10 = &a3->i32[2];
      do
      {
        v11 = v10 - 2;
        v12 = v10;
        v13 = vld1q_dup_f32(v12++);
        v14 = vld1q_dup_f32(v12);
        v15 = v10 - 1;
        v16 = vld1q_dup_f32(v15);
        *v16.f32 = vcvt_f16_f32(v16);
        result = vext_s8(*v16.f32, vzip1_s16(*v16.f32, vcvt_f16_f32(v13)), 4uLL);
        v17 = vld1q_dup_f32(v11);
        v14.i32[0] = vzip1_s16(vcvt_f16_f32(v14), vcvt_f16_f32(v17)).u32[0];
        v14.i32[1] = result.i32[1];
        *(v9++ - 1) = v14.i64[0];
        v10 += 4;
      }

      while (v9 <= v3);
    }
  }

  else
  {
    v4 = a3[-2].i64 + 4 * a2;
    result = 0x30201000F0E0D0CLL;
    do
    {
      do
      {
        v6 = *a3;
        v7 = a3[1];
        a3 += 2;
        *a1++ = vcvt_hight_f16_f32(vcvt_f16_f32(vqtbl1q_s8(v6, xmmword_29B6C2CC0)), vqtbl1q_s8(v7, xmmword_29B6C2CC0));
      }

      while (a1 <= &v3[-1]);
      a3 = v4;
      v8 = a1 == v3;
      a1 = v3 - 1;
    }

    while (!v8);
  }

  return result;
}

char *sub_29AB47BC0(char *result, int a2, float *a3)
{
  v3 = &result[a2];
  if (a2 <= 15)
  {
    do
    {
      v23 = *a3;
      if (*a3 <= 0.00012207)
      {
        LOBYTE(v24) = 0;
      }

      else if (v23 <= 1.0)
      {
        v24 = (((*&aSZ[4 * ((LODWORD(v23) - 956301312) >> 20)] >> 7) & 0xFFFE00) + *&aSZ[4 * ((LODWORD(v23) - 956301312) >> 20)] * (LODWORD(v23) >> 12)) >> 16;
      }

      else
      {
        LOBYTE(v24) = -1;
      }

      result[3] = v24;
      v25 = a3[1];
      if (v25 <= 0.00012207)
      {
        LOBYTE(v26) = 0;
      }

      else if (v25 <= 1.0)
      {
        v26 = (((*&aSZ[4 * ((LODWORD(v25) - 956301312) >> 20)] >> 7) & 0xFFFE00) + *&aSZ[4 * ((LODWORD(v25) - 956301312) >> 20)] * (LODWORD(v25) >> 12)) >> 16;
      }

      else
      {
        LOBYTE(v26) = -1;
      }

      result[2] = v26;
      v27 = a3[2];
      if (v27 <= 0.00012207)
      {
        LOBYTE(v28) = 0;
      }

      else if (v27 <= 1.0)
      {
        v28 = (((*&aSZ[4 * ((LODWORD(v27) - 956301312) >> 20)] >> 7) & 0xFFFE00) + *&aSZ[4 * ((LODWORD(v27) - 956301312) >> 20)] * (LODWORD(v27) >> 12)) >> 16;
      }

      else
      {
        LOBYTE(v28) = -1;
      }

      result[1] = v28;
      v29 = (a3[3] * 255.0) + 0.5;
      if (v29 < 0.0)
      {
        v29 = 0.0;
      }

      if (v29 > 255.0)
      {
        v29 = 255.0;
      }

      *result = v29;
      result += 4;
      a3 += 4;
    }

    while (result < v3);
  }

  else
  {
    v4 = &a3[a2 - 16];
    v5.i64[0] = 0x3900000039000000;
    v5.i64[1] = 0x3900000039000000;
    v6 = vdupq_n_s32(0x3F7FFFFFu);
    v7 = vdupq_n_s32(0x437F0000u);
    v8.i64[0] = 0x3F0000003F000000;
    v8.i64[1] = 0x3F0000003F000000;
    v9.i64[0] = 0xFF000000FFLL;
    v9.i64[1] = 0xFF000000FFLL;
    do
    {
      v30 = vld4q_f32(a3);
      a3 += 16;
      v10 = vminq_f32(vmaxq_f32(v30.val[0], v5), v6);
      v11 = vshrq_n_u32(v10, 0x14uLL);
      v12 = vminq_f32(vmaxq_f32(v30.val[1], v5), v6);
      v13 = vshrq_n_u32(v12, 0x14uLL);
      v14 = vminq_f32(vmaxq_f32(v30.val[2], v5), v6);
      v15 = vshrq_n_u32(v14, 0x14uLL);
      v16 = vcvtq_s32_f32(vminq_f32(vmaxq_f32(vaddq_f32(vmulq_f32(v30.val[3], v7), v8), 0), v7));
      v30.val[0] = (*&vandq_s8(vshrq_n_u32(v10, 0xCuLL), v9) | __PAIR128__(0x200000002000000, 0x200000002000000));
      v30.val[1].i32[0] = dword_29B6C27A4[v11.u32[0]];
      v30.val[1].i32[1] = dword_29B6C27A4[v11.u32[1]];
      v30.val[2].i32[0] = dword_29B6C27A4[v11.u32[2]];
      v30.val[2].i32[1] = dword_29B6C27A4[v11.u32[3]];
      v30.val[0] = vshrq_n_u32(vpaddq_s32(vmull_s16(*v30.val[1].f32, *v30.val[0].f32), vmull_s16(*v30.val[2].f32, *&vextq_s8(v30.val[0], v30.val[0], 8uLL))), 0x10uLL);
      v30.val[1] = (*&vandq_s8(vshrq_n_u32(v12, 0xCuLL), v9) | __PAIR128__(0x200000002000000, 0x200000002000000));
      v30.val[2].i32[0] = dword_29B6C27A4[v13.u32[0]];
      v30.val[2].i32[1] = dword_29B6C27A4[v13.u32[1]];
      v30.val[3].i32[0] = dword_29B6C27A4[v13.u32[2]];
      v30.val[3].i32[1] = dword_29B6C27A4[v13.u32[3]];
      v30.val[1] = vshrq_n_u32(vpaddq_s32(vmull_s16(*v30.val[2].f32, *v30.val[1].f32), vmull_s16(*v30.val[3].f32, *&vextq_s8(v30.val[1], v30.val[1], 8uLL))), 0x10uLL);
      v17 = *&vandq_s8(vshrq_n_u32(v14, 0xCuLL), v9) | __PAIR128__(0x200000002000000, 0x200000002000000);
      v30.val[2].i32[0] = dword_29B6C27A4[v15.u32[0]];
      v30.val[2].i32[1] = dword_29B6C27A4[v15.u32[1]];
      v30.val[3].i32[0] = dword_29B6C27A4[v15.u32[2]];
      v30.val[3].i32[1] = dword_29B6C27A4[v15.u32[3]];
      v18 = vshrq_n_u32(vpaddq_s32(vmull_s16(*v30.val[2].f32, *&v17), vmull_s16(*v30.val[3].f32, *&vextq_s8(v17, v17, 8uLL))), 0x10uLL);
      *v16.i8 = vqmovn_s32(v16);
      *v30.val[1].f32 = vqmovn_s32(v30.val[1]);
      *v18.i8 = vqmovn_s32(v18);
      *v30.val[0].f32 = vqmovn_s32(v30.val[0]);
      *v30.val[1].f32 = vqmovun_s16(vzip1q_s16(v16, v30.val[1]));
      *v30.val[2].f32 = vqmovun_s16(vzip1q_s16(v18, v30.val[0]));
      vst2_s8(result, v30.val[1]);
      v19 = (result + 16);
      if (v19 == v3)
      {
        v20 = v19;
      }

      else
      {
        v20 = v3 - 16;
      }

      if (v19 == v3)
      {
        v21 = a3;
      }

      else
      {
        v21 = v4;
      }

      if (v19 > (v3 - 16))
      {
        a3 = v21;
      }

      else
      {
        v20 = v19;
      }

      v22 = v19 == v3;
      result = v20;
    }

    while (!v22);
  }

  return result;
}

char *sub_29AB47EC4(char *result, int a2, float *a3)
{
  v3 = &result[a2];
  if (a2 <= 15)
  {
    if (a2 >= 4)
    {
      v29 = result + 4;
      do
      {
        v30 = a3[3];
        if (v30 <= 0.00012207)
        {
          LOBYTE(v31) = 0;
        }

        else if (v30 <= 1.0)
        {
          v31 = (((*&aSZ[4 * ((LODWORD(v30) - 956301312) >> 20)] >> 7) & 0xFFFE00) + *&aSZ[4 * ((LODWORD(v30) - 956301312) >> 20)] * (LODWORD(v30) >> 12)) >> 16;
        }

        else
        {
          LOBYTE(v31) = -1;
        }

        *(v29 - 4) = v31;
        v32 = a3[2];
        if (v32 <= 0.00012207)
        {
          LOBYTE(v33) = 0;
        }

        else if (v32 <= 1.0)
        {
          v33 = (((*&aSZ[4 * ((LODWORD(v32) - 956301312) >> 20)] >> 7) & 0xFFFE00) + *&aSZ[4 * ((LODWORD(v32) - 956301312) >> 20)] * (LODWORD(v32) >> 12)) >> 16;
        }

        else
        {
          LOBYTE(v33) = -1;
        }

        *(v29 - 3) = v33;
        v34 = a3[1];
        if (v34 <= 0.00012207)
        {
          LOBYTE(v35) = 0;
        }

        else if (v34 <= 1.0)
        {
          v35 = (((*&aSZ[4 * ((LODWORD(v34) - 956301312) >> 20)] >> 7) & 0xFFFE00) + *&aSZ[4 * ((LODWORD(v34) - 956301312) >> 20)] * (LODWORD(v34) >> 12)) >> 16;
        }

        else
        {
          LOBYTE(v35) = -1;
        }

        *(v29 - 2) = v35;
        v36 = *a3;
        if (*a3 <= 0.00012207)
        {
          LOBYTE(v37) = 0;
        }

        else if (v36 <= 1.0)
        {
          v37 = (((*&aSZ[4 * ((LODWORD(v36) - 956301312) >> 20)] >> 7) & 0xFFFE00) + *&aSZ[4 * ((LODWORD(v36) - 956301312) >> 20)] * (LODWORD(v36) >> 12)) >> 16;
        }

        else
        {
          LOBYTE(v37) = -1;
        }

        *(v29 - 1) = v37;
        a3 += 4;
        v29 += 4;
      }

      while (v29 <= v3);
    }
  }

  else
  {
    v4 = &a3[a2 - 16];
    v5.i64[0] = 0x3900000039000000;
    v5.i64[1] = 0x3900000039000000;
    v6 = vdupq_n_s32(0x3F7FFFFFu);
    v7.i64[0] = 0xFF000000FFLL;
    v7.i64[1] = 0xFF000000FFLL;
    do
    {
      v38 = vld4q_f32(a3);
      a3 += 16;
      v8 = vminq_f32(vmaxq_f32(v38.val[0], v5), v6);
      v9 = vshrq_n_u32(v8, 0x14uLL);
      v10 = vminq_f32(vmaxq_f32(v38.val[1], v5), v6);
      v11 = vshrq_n_u32(v10, 0x14uLL);
      v12 = vminq_f32(vmaxq_f32(v38.val[2], v5), v6);
      v13 = vshrq_n_u32(v12, 0x14uLL);
      v14 = vminq_f32(vmaxq_f32(v38.val[3], v5), v6);
      v38.val[0] = vshrq_n_u32(v14, 0x14uLL);
      v15 = v38.val[0].i32[0];
      v16 = &dword_29B6C27A4[v38.val[0].u32[1]];
      v17 = *&vandq_s8(vshrq_n_u32(v8, 0xCuLL), v7) | __PAIR128__(0x200000002000000, 0x200000002000000);
      v9.i32[0] = dword_29B6C27A4[v9.u32[0]];
      v9.i32[1] = dword_29B6C27A4[v9.u32[1]];
      v38.val[0].i32[0] = dword_29B6C27A4[v9.u32[2]];
      v38.val[0].i32[1] = dword_29B6C27A4[v9.u32[3]];
      v18 = vshrq_n_u32(vpaddq_s32(vmull_s16(*v9.i8, *&v17), vmull_s16(*v38.val[0].f32, *&vextq_s8(v17, v17, 8uLL))), 0x10uLL);
      v19 = *&vandq_s8(vshrq_n_u32(v10, 0xCuLL), v7) | __PAIR128__(0x200000002000000, 0x200000002000000);
      v9.i32[0] = dword_29B6C27A4[v11.u32[0]];
      v9.i32[1] = dword_29B6C27A4[v11.u32[1]];
      v38.val[0].i32[0] = dword_29B6C27A4[v11.u32[2]];
      v38.val[0].i32[1] = dword_29B6C27A4[v11.u32[3]];
      v20 = vshrq_n_u32(vpaddq_s32(vmull_s16(*v9.i8, *&v19), vmull_s16(*v38.val[0].f32, *&vextq_s8(v19, v19, 8uLL))), 0x10uLL);
      v21 = *&vandq_s8(vshrq_n_u32(v12, 0xCuLL), v7) | __PAIR128__(0x200000002000000, 0x200000002000000);
      v9.i32[0] = dword_29B6C27A4[v13.u32[0]];
      v9.i32[1] = dword_29B6C27A4[v13.u32[1]];
      v38.val[0].i32[0] = dword_29B6C27A4[v13.u32[2]];
      v38.val[0].i32[1] = dword_29B6C27A4[v13.u32[3]];
      v22 = vshrq_n_u32(vpaddq_s32(vmull_s16(*v9.i8, *&v21), vmull_s16(*v38.val[0].f32, *&vextq_s8(v21, v21, 8uLL))), 0x10uLL);
      v23 = *&vandq_s8(vshrq_n_u32(v14, 0xCuLL), v7) | __PAIR128__(0x200000002000000, 0x200000002000000);
      v9.i32[0] = dword_29B6C27A4[v15];
      v9.i32[1] = *v16;
      v38.val[0].i32[0] = dword_29B6C27A4[v38.val[0].u32[2]];
      v38.val[0].i32[1] = dword_29B6C27A4[v38.val[0].u32[3]];
      v24 = vshrq_n_u32(vpaddq_s32(vmull_s16(*v9.i8, *&v23), vmull_s16(*v38.val[0].f32, *&vextq_s8(v23, v23, 8uLL))), 0x10uLL);
      *v24.i8 = vqmovn_s32(v24);
      *v20.i8 = vqmovn_s32(v20);
      *v22.i8 = vqmovn_s32(v22);
      *v18.i8 = vqmovn_s32(v18);
      *v20.i8 = vqmovun_s16(vzip1q_s16(v24, v20));
      *v9.i8 = vqmovun_s16(vzip1q_s16(v22, v18));
      vst2_s8(result, *(&v9 - 8));
      v25 = (result + 16);
      if (v25 == v3)
      {
        v26 = v25;
      }

      else
      {
        v26 = v3 - 16;
      }

      if (v25 == v3)
      {
        v27 = a3;
      }

      else
      {
        v27 = v4;
      }

      if (v25 > (v3 - 16))
      {
        a3 = v27;
      }

      else
      {
        v26 = v25;
      }

      v28 = v25 == v3;
      result = v26;
    }

    while (!v28);
  }

  return result;
}

int8x16_t *sub_29AB48238(int8x16_t *result, int a2, int8x16_t *a3)
{
  v3 = (result + 4 * a2);
  if (a2 <= 7)
  {
    if (a2 >= 4)
    {
      v9 = result + 1;
      do
      {
        v10 = *a3++;
        v9[-1] = vqtbl1q_s8(v10, xmmword_29B6C2CA0);
        ++v9;
      }

      while (v9 <= v3);
    }
  }

  else
  {
    v4 = a3[-2].i64 + 4 * a2;
    v5 = &v3[-2];
    do
    {
      v6 = &result[2];
      v7 = &result[2] < v5;
      if (&result[2] == v3)
      {
        v7 = 1;
      }

      v8 = vqtbl1q_s8(a3[1], xmmword_29B6C2CA0);
      *result = vqtbl1q_s8(*a3, xmmword_29B6C2CA0);
      result[1] = v8;
      if (v7)
      {
        result += 2;
      }

      else
      {
        result = v3 - 2;
      }

      if (v7)
      {
        a3 += 2;
      }

      else
      {
        a3 = v4;
      }
    }

    while (v6 < v5 || v6 != v3);
  }

  return result;
}

__n64 sub_29AB482D4(float16x8_t *a1, int a2, int8x16_t *a3)
{
  v3 = (a1 + 2 * a2);
  if (a2 <= 7)
  {
    if (a2 >= 4)
    {
      v9 = &a1->i64[1];
      v10 = &a3->i32[2];
      do
      {
        v11 = v10 - 2;
        v12 = v10;
        v13 = vld1q_dup_f32(v12++);
        v14 = vld1q_dup_f32(v12);
        v15 = v10 - 1;
        v16 = vld1q_dup_f32(v15);
        v17 = vld1q_dup_f32(v11);
        *v16.f32 = vcvt_f16_f32(v16);
        result.n64_u32[0] = vzip1_s16(vcvt_f16_f32(v14), vcvt_f16_f32(v13)).u32[0];
        result.n64_u32[1] = vext_s8(*&v16, vzip1_s16(*&v16, vcvt_f16_f32(v17)), 4uLL).u32[1];
        *(v9++ - 1) = result.n64_u64[0];
        v10 += 4;
      }

      while (v9 <= v3);
    }
  }

  else
  {
    v4 = a3[-2].i64 + 4 * a2;
    result.n64_u64[0] = 0xB0A09080F0E0D0CLL;
    do
    {
      do
      {
        v6 = *a3;
        v7 = a3[1];
        a3 += 2;
        *a1++ = vcvt_hight_f16_f32(vcvt_f16_f32(vqtbl1q_s8(v6, xmmword_29B6C2CA0)), vqtbl1q_s8(v7, xmmword_29B6C2CA0));
      }

      while (a1 <= &v3[-1]);
      a3 = v4;
      v8 = a1 == v3;
      a1 = v3 - 1;
    }

    while (!v8);
  }

  return result;
}

char *sub_29AB48390(char *result, int a2, float *a3)
{
  v3 = &result[a2];
  if (a2 <= 15)
  {
    do
    {
      v20 = *a3;
      if (*a3 <= 0.00012207)
      {
        LOBYTE(v21) = 0;
      }

      else if (v20 <= 1.0)
      {
        v21 = (((*&aSZ[4 * ((LODWORD(v20) - 956301312) >> 20)] >> 7) & 0xFFFE00) + *&aSZ[4 * ((LODWORD(v20) - 956301312) >> 20)] * (LODWORD(v20) >> 12)) >> 16;
      }

      else
      {
        LOBYTE(v21) = -1;
      }

      *result = v21;
      v22 = (a3[1] * 255.0) + 0.5;
      if (v22 < 0.0)
      {
        v22 = 0.0;
      }

      if (v22 > 255.0)
      {
        v22 = 255.0;
      }

      result[1] = v22;
      result += 2;
      a3 += 2;
    }

    while (result < v3);
  }

  else
  {
    v4 = &a3[a2 - 16];
    v5.i64[0] = 0x3900000039000000;
    v5.i64[1] = 0x3900000039000000;
    v6 = vdupq_n_s32(0x3F7FFFFFu);
    v7 = vdupq_n_s32(0x437F0000u);
    v8.i64[0] = 0x3F0000003F000000;
    v8.i64[1] = 0x3F0000003F000000;
    v9.i64[0] = 0xFF000000FFLL;
    v9.i64[1] = 0xFF000000FFLL;
    do
    {
      v23 = vld4q_f32(a3);
      a3 += 16;
      v10 = vminq_f32(vmaxq_f32(v23.val[0], v5), v6);
      v11 = vshrq_n_u32(v10, 0x14uLL);
      v12 = vcvtq_s32_f32(vminq_f32(vmaxq_f32(vaddq_f32(vmulq_f32(v23.val[1], v7), v8), 0), v7));
      v13 = vminq_f32(vmaxq_f32(v23.val[2], v5), v6);
      v14 = vshrq_n_u32(v13, 0x14uLL);
      v15 = vcvtq_s32_f32(vminq_f32(vmaxq_f32(vaddq_f32(vmulq_f32(v23.val[3], v7), v8), 0), v7));
      v23.val[0] = (*&vandq_s8(vshrq_n_u32(v10, 0xCuLL), v9) | __PAIR128__(0x200000002000000, 0x200000002000000));
      v23.val[1].i32[0] = dword_29B6C27A4[v11.u32[0]];
      v23.val[1].i32[1] = dword_29B6C27A4[v11.u32[1]];
      v23.val[2].i32[0] = dword_29B6C27A4[v11.u32[2]];
      v23.val[2].i32[1] = dword_29B6C27A4[v11.u32[3]];
      v23.val[0] = vshrq_n_u32(vpaddq_s32(vmull_s16(*v23.val[1].f32, *v23.val[0].f32), vmull_s16(*v23.val[2].f32, *&vextq_s8(v23.val[0], v23.val[0], 8uLL))), 0x10uLL);
      v23.val[1] = (*&vandq_s8(vshrq_n_u32(v13, 0xCuLL), v9) | __PAIR128__(0x200000002000000, 0x200000002000000));
      v23.val[2].i32[0] = dword_29B6C27A4[v14.u32[0]];
      v23.val[2].i32[1] = dword_29B6C27A4[v14.u32[1]];
      v23.val[3].i32[0] = dword_29B6C27A4[v14.u32[2]];
      v23.val[3].i32[1] = dword_29B6C27A4[v14.u32[3]];
      v23.val[1] = vshrq_n_u32(vpaddq_s32(vmull_s16(*v23.val[2].f32, *v23.val[1].f32), vmull_s16(*v23.val[3].f32, *&vextq_s8(v23.val[1], v23.val[1], 8uLL))), 0x10uLL);
      *v23.val[0].f32 = vqmovn_s32(v23.val[0]);
      *v23.val[1].f32 = vqmovn_s32(v23.val[1]);
      *v12.i8 = vqmovn_s32(v12);
      *v15.i8 = vqmovn_s32(v15);
      *v23.val[0].f32 = vqmovun_s16(vzip1q_s16(v23.val[0], v23.val[1]));
      *v23.val[1].f32 = vqmovun_s16(vzip1q_s16(v12, v15));
      vst2_s8(result, v23.val[0]);
      v16 = (result + 16);
      if (v16 == v3)
      {
        v17 = v16;
      }

      else
      {
        v17 = v3 - 16;
      }

      if (v16 == v3)
      {
        v18 = a3;
      }

      else
      {
        v18 = v4;
      }

      if (v16 > (v3 - 16))
      {
        a3 = v18;
      }

      else
      {
        v17 = v16;
      }

      v19 = v16 == v3;
      result = v17;
    }

    while (!v19);
  }

  return result;
}

char *sub_29AB485A8(char *result, int a2, float *a3)
{
  v3 = &result[a2];
  if (a2 <= 15)
  {
    do
    {
      v21 = *a3;
      if (*a3 <= 0.00012207)
      {
        LOBYTE(v22) = 0;
      }

      else if (v21 <= 1.0)
      {
        v22 = (((*&aSZ[4 * ((LODWORD(v21) - 956301312) >> 20)] >> 7) & 0xFFFE00) + *&aSZ[4 * ((LODWORD(v21) - 956301312) >> 20)] * (LODWORD(v21) >> 12)) >> 16;
      }

      else
      {
        LOBYTE(v22) = -1;
      }

      result[1] = v22;
      v23 = (a3[1] * 255.0) + 0.5;
      if (v23 < 0.0)
      {
        v23 = 0.0;
      }

      if (v23 > 255.0)
      {
        v23 = 255.0;
      }

      *result = v23;
      result += 2;
      a3 += 2;
    }

    while (result < v3);
  }

  else
  {
    v4 = &a3[a2 - 16];
    v5.i64[0] = 0x3900000039000000;
    v5.i64[1] = 0x3900000039000000;
    v6 = vdupq_n_s32(0x3F7FFFFFu);
    v7 = vdupq_n_s32(0x437F0000u);
    v8.i64[0] = 0x3F0000003F000000;
    v8.i64[1] = 0x3F0000003F000000;
    v9.i64[0] = 0xFF000000FFLL;
    v9.i64[1] = 0xFF000000FFLL;
    do
    {
      v24 = vld4q_f32(a3);
      a3 += 16;
      v10 = vminq_f32(vmaxq_f32(v24.val[0], v5), v6);
      v11 = vshrq_n_u32(v10, 0x14uLL);
      v12 = vcvtq_s32_f32(vminq_f32(vmaxq_f32(vaddq_f32(vmulq_f32(v24.val[1], v7), v8), 0), v7));
      v13 = vminq_f32(vmaxq_f32(v24.val[2], v5), v6);
      v14 = vshrq_n_u32(v13, 0x14uLL);
      v24.val[0] = vcvtq_s32_f32(vminq_f32(vmaxq_f32(vaddq_f32(vmulq_f32(v24.val[3], v7), v8), 0), v7));
      v15 = *&vandq_s8(vshrq_n_u32(v10, 0xCuLL), v9) | __PAIR128__(0x200000002000000, 0x200000002000000);
      v24.val[1].i32[0] = dword_29B6C27A4[v11.u32[0]];
      v24.val[1].i32[1] = dword_29B6C27A4[v11.u32[1]];
      v24.val[2].i32[0] = dword_29B6C27A4[v11.u32[2]];
      v24.val[2].i32[1] = dword_29B6C27A4[v11.u32[3]];
      v16 = vshrq_n_u32(vpaddq_s32(vmull_s16(*v24.val[1].f32, *&v15), vmull_s16(*v24.val[2].f32, *&vextq_s8(v15, v15, 8uLL))), 0x10uLL);
      v24.val[1] = (*&vandq_s8(vshrq_n_u32(v13, 0xCuLL), v9) | __PAIR128__(0x200000002000000, 0x200000002000000));
      v24.val[2].i32[0] = dword_29B6C27A4[v14.u32[0]];
      v24.val[2].i32[1] = dword_29B6C27A4[v14.u32[1]];
      v24.val[3].i32[0] = dword_29B6C27A4[v14.u32[2]];
      v24.val[3].i32[1] = dword_29B6C27A4[v14.u32[3]];
      v24.val[1] = vshrq_n_u32(vpaddq_s32(vmull_s16(*v24.val[2].f32, *v24.val[1].f32), vmull_s16(*v24.val[3].f32, *&vextq_s8(v24.val[1], v24.val[1], 8uLL))), 0x10uLL);
      *v12.i8 = vqmovn_s32(v12);
      *v24.val[0].f32 = vqmovn_s32(v24.val[0]);
      *v16.i8 = vqmovn_s32(v16);
      *v24.val[1].f32 = vqmovn_s32(v24.val[1]);
      *v24.val[2].f32 = vqmovun_s16(vzip1q_s16(v12, v24.val[0]));
      *v24.val[3].f32 = vqmovun_s16(vzip1q_s16(v16, v24.val[1]));
      vst2_s8(result, v24.val[2]);
      v17 = (result + 16);
      if (v17 == v3)
      {
        v18 = v17;
      }

      else
      {
        v18 = v3 - 16;
      }

      if (v17 == v3)
      {
        v19 = a3;
      }

      else
      {
        v19 = v4;
      }

      if (v17 > (v3 - 16))
      {
        a3 = v19;
      }

      else
      {
        v18 = v17;
      }

      v20 = v17 == v3;
      result = v18;
    }

    while (!v20);
  }

  return result;
}

char *sub_29AB487BC(char *result, int a2, float *a3)
{
  v3 = &result[a2];
  if (a2 <= 15)
  {
    if (a2 >= 4)
    {
      do
      {
        v30 = a3[1];
        if (v30 <= 0.00012207)
        {
          LOBYTE(v31) = 0;
        }

        else if (v30 <= 1.0)
        {
          v31 = (((*&aSZ[4 * ((LODWORD(v30) - 956301312) >> 20)] >> 7) & 0xFFFE00) + *&aSZ[4 * ((LODWORD(v30) - 956301312) >> 20)] * (LODWORD(v30) >> 12)) >> 16;
        }

        else
        {
          LOBYTE(v31) = -1;
        }

        *result = v31;
        v32 = *a3;
        if (*a3 <= 0.00012207)
        {
          LOBYTE(v33) = 0;
        }

        else if (v32 <= 1.0)
        {
          v33 = (((*&aSZ[4 * ((LODWORD(v32) - 956301312) >> 20)] >> 7) & 0xFFFE00) + *&aSZ[4 * ((LODWORD(v32) - 956301312) >> 20)] * (LODWORD(v32) >> 12)) >> 16;
        }

        else
        {
          LOBYTE(v33) = -1;
        }

        result[1] = v33;
        v34 = a3[3];
        if (v34 <= 0.00012207)
        {
          LOBYTE(v35) = 0;
        }

        else if (v34 <= 1.0)
        {
          v35 = (((*&aSZ[4 * ((LODWORD(v34) - 956301312) >> 20)] >> 7) & 0xFFFE00) + *&aSZ[4 * ((LODWORD(v34) - 956301312) >> 20)] * (LODWORD(v34) >> 12)) >> 16;
        }

        else
        {
          LOBYTE(v35) = -1;
        }

        result[2] = v35;
        v36 = a3[2];
        if (v36 <= 0.00012207)
        {
          LOBYTE(v37) = 0;
        }

        else if (v36 <= 1.0)
        {
          v37 = (((*&aSZ[4 * ((LODWORD(v36) - 956301312) >> 20)] >> 7) & 0xFFFE00) + *&aSZ[4 * ((LODWORD(v36) - 956301312) >> 20)] * (LODWORD(v36) >> 12)) >> 16;
        }

        else
        {
          LOBYTE(v37) = -1;
        }

        result[3] = v37;
        a3 += 4;
        v29 = result + 4;
        v38 = result + 8;
        result += 4;
      }

      while (v38 <= v3);
    }

    else
    {
      v29 = result;
    }

    for (; v29 < v3; a3 += 2)
    {
      v39 = a3[1];
      if (v39 <= 0.00012207)
      {
        LOBYTE(v40) = 0;
      }

      else if (v39 <= 1.0)
      {
        v40 = (((*&aSZ[4 * ((LODWORD(v39) - 956301312) >> 20)] >> 7) & 0xFFFE00) + *&aSZ[4 * ((LODWORD(v39) - 956301312) >> 20)] * (LODWORD(v39) >> 12)) >> 16;
      }

      else
      {
        LOBYTE(v40) = -1;
      }

      *v29 = v40;
      v41 = *a3;
      if (*a3 <= 0.00012207)
      {
        LOBYTE(v42) = 0;
      }

      else if (v41 <= 1.0)
      {
        v42 = (((*&aSZ[4 * ((LODWORD(v41) - 956301312) >> 20)] >> 7) & 0xFFFE00) + *&aSZ[4 * ((LODWORD(v41) - 956301312) >> 20)] * (LODWORD(v41) >> 12)) >> 16;
      }

      else
      {
        LOBYTE(v42) = -1;
      }

      v29[1] = v42;
      v29 += 2;
    }
  }

  else
  {
    v4 = &a3[a2 - 16];
    v5.i64[0] = 0x3900000039000000;
    v5.i64[1] = 0x3900000039000000;
    v6 = vdupq_n_s32(0x3F7FFFFFu);
    v7.i64[0] = 0xFF000000FFLL;
    v7.i64[1] = 0xFF000000FFLL;
    do
    {
      v43 = vld4q_f32(a3);
      a3 += 16;
      v8 = vminq_f32(vmaxq_f32(v43.val[0], v5), v6);
      v9 = vshrq_n_u32(v8, 0x14uLL);
      v10 = vminq_f32(vmaxq_f32(v43.val[1], v5), v6);
      v11 = vshrq_n_u32(v10, 0x14uLL);
      v12 = vminq_f32(vmaxq_f32(v43.val[2], v5), v6);
      v13 = vshrq_n_u32(v12, 0x14uLL);
      v14 = vminq_f32(vmaxq_f32(v43.val[3], v5), v6);
      v43.val[0] = vshrq_n_u32(v14, 0x14uLL);
      v15 = v43.val[0].i32[0];
      v16 = &dword_29B6C27A4[v43.val[0].u32[1]];
      v17 = *&vandq_s8(vshrq_n_u32(v8, 0xCuLL), v7) | __PAIR128__(0x200000002000000, 0x200000002000000);
      v9.i32[0] = dword_29B6C27A4[v9.u32[0]];
      v9.i32[1] = dword_29B6C27A4[v9.u32[1]];
      v43.val[0].i32[0] = dword_29B6C27A4[v9.u32[2]];
      v43.val[0].i32[1] = dword_29B6C27A4[v9.u32[3]];
      v18 = vshrq_n_u32(vpaddq_s32(vmull_s16(*v9.i8, *&v17), vmull_s16(*v43.val[0].f32, *&vextq_s8(v17, v17, 8uLL))), 0x10uLL);
      v19 = *&vandq_s8(vshrq_n_u32(v10, 0xCuLL), v7) | __PAIR128__(0x200000002000000, 0x200000002000000);
      v9.i32[0] = dword_29B6C27A4[v11.u32[0]];
      v9.i32[1] = dword_29B6C27A4[v11.u32[1]];
      v43.val[0].i32[0] = dword_29B6C27A4[v11.u32[2]];
      v43.val[0].i32[1] = dword_29B6C27A4[v11.u32[3]];
      v20 = vshrq_n_u32(vpaddq_s32(vmull_s16(*v9.i8, *&v19), vmull_s16(*v43.val[0].f32, *&vextq_s8(v19, v19, 8uLL))), 0x10uLL);
      v21 = *&vandq_s8(vshrq_n_u32(v12, 0xCuLL), v7) | __PAIR128__(0x200000002000000, 0x200000002000000);
      v9.i32[0] = dword_29B6C27A4[v13.u32[0]];
      v9.i32[1] = dword_29B6C27A4[v13.u32[1]];
      v43.val[0].i32[0] = dword_29B6C27A4[v13.u32[2]];
      v43.val[0].i32[1] = dword_29B6C27A4[v13.u32[3]];
      v22 = vshrq_n_u32(vpaddq_s32(vmull_s16(*v9.i8, *&v21), vmull_s16(*v43.val[0].f32, *&vextq_s8(v21, v21, 8uLL))), 0x10uLL);
      v23 = *&vandq_s8(vshrq_n_u32(v14, 0xCuLL), v7) | __PAIR128__(0x200000002000000, 0x200000002000000);
      v9.i32[0] = dword_29B6C27A4[v15];
      v9.i32[1] = *v16;
      v43.val[0].i32[0] = dword_29B6C27A4[v43.val[0].u32[2]];
      v43.val[0].i32[1] = dword_29B6C27A4[v43.val[0].u32[3]];
      v24 = vshrq_n_u32(vpaddq_s32(vmull_s16(*v9.i8, *&v23), vmull_s16(*v43.val[0].f32, *&vextq_s8(v23, v23, 8uLL))), 0x10uLL);
      *v20.i8 = vqmovn_s32(v20);
      *v24.i8 = vqmovn_s32(v24);
      *v18.i8 = vqmovn_s32(v18);
      *v22.i8 = vqmovn_s32(v22);
      *v20.i8 = vqmovun_s16(vzip1q_s16(v20, v24));
      *v9.i8 = vqmovun_s16(vzip1q_s16(v18, v22));
      vst2_s8(result, *(&v9 - 8));
      v25 = (result + 16);
      if (v25 == v3)
      {
        v26 = v25;
      }

      else
      {
        v26 = v3 - 16;
      }

      if (v25 == v3)
      {
        v27 = a3;
      }

      else
      {
        v27 = v4;
      }

      if (v25 > (v3 - 16))
      {
        a3 = v27;
      }

      else
      {
        v26 = v25;
      }

      v28 = v25 == v3;
      result = v26;
    }

    while (!v28);
  }

  return result;
}

float sub_29AB48C0C(float *a1, int a2, int8x16_t *a3)
{
  v3 = &a1[a2];
  if (a2 <= 7)
  {
    if (a2 >= 4)
    {
      result = 1.0083e-34;
      do
      {
        v11 = *a3++;
        v10 = a1 + 4;
        *a1 = vqtbl1q_s8(v11, xmmword_29B6C2CB0);
        v12 = (a1 + 8) > v3;
        a1 += 4;
      }

      while (!v12);
    }

    else
    {
      v10 = a1;
    }

    while (v10 < v3)
    {
      *v10 = *&a3->i32[1];
      v13 = *a3->i32;
      a3 = (a3 + 8);
      result = v13;
      v10[1] = v13;
      v10 += 2;
    }
  }

  else
  {
    v4 = a3[-2].i64 + 4 * a2;
    v5 = v3 - 32;
    result = 1.0083e-34;
    do
    {
      v7 = (a1 + 8);
      v8 = (a1 + 8) < v5;
      if (a1 + 8 == v3)
      {
        v8 = 1;
      }

      v9 = vqtbl1q_s8(a3[1], xmmword_29B6C2CB0);
      *a1 = vqtbl1q_s8(*a3, xmmword_29B6C2CB0);
      *(a1 + 1) = v9;
      if (v8)
      {
        a1 += 8;
      }

      else
      {
        a1 = (v3 - 32);
      }

      if (v8)
      {
        a3 += 2;
      }

      else
      {
        a3 = v4;
      }
    }

    while (v7 < v5 || v7 != v3);
  }

  return result;
}

float16x4_t sub_29AB48CD0(float16x4_t *a1, int a2, _OWORD *a3)
{
  v3 = a1 + 2 * a2;
  if (a2 <= 7)
  {
    if (a2 >= 4)
    {
      do
      {
        v9 = a1 + 1;
        v10 = a3;
        v11 = vld1q_dup_f32(v10++);
        v12 = vld1q_dup_f32(v10);
        v13 = a3 + 3;
        v14 = vld1q_dup_f32(v13);
        *v14.f32 = vcvt_f16_f32(v14);
        v15 = a3 + 2;
        v16 = vld1q_dup_f32(v15);
        result.i32[0] = vzip1_s16(vcvt_f16_f32(v12), vcvt_f16_f32(v11)).u32[0];
        result.i32[1] = vext_s8(*&v14, vzip1_s16(*&v14, vcvt_f16_f32(v16)), 4uLL).i32[1];
        *a1 = result;
        ++a3;
        v17 = &a1[2] > v3;
        ++a1;
      }

      while (!v17);
    }

    else
    {
      v9 = a1;
    }

    if (v9 < v3)
    {
      v18 = a3 + 1;
      do
      {
        v19 = v18 - 1;
        v20 = vld1q_dup_f32(v18);
        v21 = vld1q_dup_f32(v19);
        v9->i16[0] = vcvt_f16_f32(v20).u16[0];
        result = vcvt_f16_f32(v21);
        v9->i16[1] = result.i16[0];
        v9 = (v9 + 4);
        v18 += 2;
      }

      while (v9 < v3);
    }
  }

  else
  {
    v4 = a3 + 4 * a2 - 32;
    result = 0x302010007060504;
    do
    {
      do
      {
        v6 = *a3;
        v7 = *(a3 + 1);
        a3 += 2;
        *a1->i8 = vcvt_hight_f16_f32(vcvt_f16_f32(vqtbl1q_s8(v6, xmmword_29B6C2CB0)), vqtbl1q_s8(v7, xmmword_29B6C2CB0));
        a1 += 2;
      }

      while (a1 <= v3 - 16);
      a3 = v4;
      v8 = a1 == v3;
      a1 = (v3 - 16);
    }

    while (!v8);
  }

  return result;
}

int8x8_t *sub_29AB48DC8(int8x8_t *result, int a2, float32x4_t *a3, double a4, float32x4_t a5, double a6, double a7, float32x4_t a8)
{
  v8 = result + a2;
  if (a2 <= 7)
  {
    if (a2 >= 4)
    {
      v18 = vdupq_n_s32(0x437F0000u);
      a5.i64[0] = 0x3F0000003F000000;
      a5.i64[1] = 0x3F0000003F000000;
      v16 = result;
      v19 = result;
      do
      {
        v20 = *a3++;
        v21 = vcvtq_s32_f32(vmaxq_f32(vminq_f32(vaddq_f32(vmulq_f32(v20, v18), a5), v18), 0));
        *v21.i8 = vqmovn_s32(v21);
        v17 = (v19 + 4);
        v19->i32[0] = vqmovun_s16(v21).u32[0];
        v16 = (v16 + 4);
        v22 = &v19[1] > v8;
        v19 = (v19 + 4);
      }

      while (!v22);
    }

    else
    {
      v16 = result;
      v17 = result;
    }

    if (v17 < v8)
    {
      v23 = (&result->i8[a2] - v16);
      v24 = vdupq_n_s32(0x437F0000u);
      a5.i32[0] = 1132396544;
      v25.i64[0] = 0x3F0000003F000000;
      v25.i64[1] = 0x3F0000003F000000;
      do
      {
        v26 = a3->i32[0];
        a3 = (a3 + 4);
        a8.i32[0] = v26;
        a8 = vcvtq_s32_f32(vmaxq_f32(vminq_f32(vdupq_lane_s32(*&vaddq_f32(vmulq_f32(a8, a5), v25), 0), v24), 0));
        v17->i8[0] = a8.i8[0];
        v17 = (v17 + 1);
        --v23;
      }

      while (v23);
    }
  }

  else
  {
    v9 = a3[-2].i64 + 4 * a2;
    v10 = vdupq_n_s32(0x437F0000u);
    v11.i64[0] = 0x3F0000003F000000;
    v11.i64[1] = 0x3F0000003F000000;
    do
    {
      *result = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(vmaxq_f32(vminq_f32(vaddq_f32(vmulq_f32(*a3, v10), v11), v10), 0))), vcvtq_s32_f32(vmaxq_f32(vminq_f32(vaddq_f32(vmulq_f32(a3[1], v10), v11), v10), 0))));
      v12 = &result[1];
      if (v12 == v8)
      {
        v13 = v12;
      }

      else
      {
        v13 = (v8 - 8);
      }

      if (v12 == v8)
      {
        v14 = a3 + 2;
      }

      else
      {
        v14 = v9;
      }

      if (v12 > v8 - 8)
      {
        a3 = v14;
      }

      else
      {
        v13 = v12;
        a3 += 2;
      }

      v15 = v12 == v8;
      result = v13;
    }

    while (!v15);
  }

  return result;
}

int8x8_t *sub_29AB48F14(int8x8_t *result, int a2, float32x4_t *a3)
{
  v3 = result + a2;
  if (a2 <= 7)
  {
    if (a2 >= 4)
    {
      v13.i64[0] = 0x3F0000003F000000;
      v13.i64[1] = 0x3F0000003F000000;
      v14 = vdupq_n_s32(0x437F0000u);
      v11 = result;
      v15 = result;
      do
      {
        v16 = *a3++;
        v17 = vcvtq_s32_f32(vmaxq_f32(vminq_f32(vaddq_f32(v16, v13), v14), 0));
        *v17.i8 = vqmovn_s32(v17);
        v12 = (v15 + 4);
        v15->i32[0] = vqmovun_s16(v17).u32[0];
        v11 = (v11 + 4);
        v18 = &v15[1] > v3;
        v15 = (v15 + 4);
      }

      while (!v18);
    }

    else
    {
      v11 = result;
      v12 = result;
    }

    if (v12 < v3)
    {
      v19 = (&result->i8[a2] - v11);
      do
      {
        v20 = a3->f32[0];
        a3 = (a3 + 4);
        v21 = v20 + 0.5;
        if ((v20 + 0.5) < 0.0)
        {
          v21 = 0.0;
        }

        if (v21 > 255.0)
        {
          v21 = 255.0;
        }

        v12->i8[0] = v21;
        v12 = (v12 + 1);
        --v19;
      }

      while (v19);
    }
  }

  else
  {
    v4 = a3[-2].i64 + 4 * a2;
    v5.i64[0] = 0x3F0000003F000000;
    v5.i64[1] = 0x3F0000003F000000;
    v6 = vdupq_n_s32(0x437F0000u);
    do
    {
      *result = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(vmaxq_f32(vminq_f32(vaddq_f32(*a3, v5), v6), 0))), vcvtq_s32_f32(vmaxq_f32(vminq_f32(vaddq_f32(a3[1], v5), v6), 0))));
      v7 = &result[1];
      if (v7 == v3)
      {
        v8 = v7;
      }

      else
      {
        v8 = (v3 - 8);
      }

      if (v7 == v3)
      {
        v9 = a3 + 2;
      }

      else
      {
        v9 = v4;
      }

      if (v7 > v3 - 8)
      {
        a3 = v9;
      }

      else
      {
        v8 = v7;
        a3 += 2;
      }

      v10 = v7 == v3;
      result = v8;
    }

    while (!v10);
  }

  return result;
}

int16x4_t *sub_29AB49050(int16x4_t *result, int a2, float32x4_t *a3, float32x4_t a4, double a5, double a6, double a7, float32x4_t a8)
{
  v8 = result + 2 * a2;
  if (a2 <= 7)
  {
    if (a2 >= 4)
    {
      a4 = vdupq_n_s32(0x477FFF00u);
      v17.i64[0] = 0x3F0000003F000000;
      v17.i64[1] = 0x3F0000003F000000;
      do
      {
        v18 = *a3++;
        v16 = result + 1;
        *result = vqmovun_s32(vcvtq_s32_f32(vmaxq_f32(vminq_f32(vaddq_f32(vmulq_f32(v18, a4), v17), a4), 0)));
        v19 = &result[2] > v8;
        ++result;
      }

      while (!v19);
    }

    else
    {
      v16 = result;
    }

    if (v16 < v8)
    {
      a4.i32[0] = 1199570688;
      v20.i64[0] = 0x3F0000003F000000;
      v20.i64[1] = 0x3F0000003F000000;
      v21 = vdupq_n_s32(0x477FFF00u);
      do
      {
        v22 = a3->i32[0];
        a3 = (a3 + 4);
        a8.i32[0] = v22;
        a8 = vcvtq_s32_f32(vmaxq_f32(vminq_f32(vdupq_lane_s32(*&vaddq_f32(vmulq_f32(a8, a4), v20), 0), v21), 0));
        v16->i16[0] = a8.i16[0];
        v16 = (v16 + 2);
      }

      while (v16 < v8);
    }
  }

  else
  {
    v9 = a3[-2].i64 + 4 * a2;
    v10 = vdupq_n_s32(0x477FFF00u);
    v11.i64[0] = 0x3F0000003F000000;
    v11.i64[1] = 0x3F0000003F000000;
    do
    {
      *result->i8 = vqmovun_high_s32(vqmovun_s32(vcvtq_s32_f32(vmaxq_f32(vminq_f32(vaddq_f32(vmulq_f32(*a3, v10), v11), v10), 0))), vcvtq_s32_f32(vmaxq_f32(vminq_f32(vaddq_f32(vmulq_f32(a3[1], v10), v11), v10), 0)));
      v12 = &result[2];
      if (v12 == v8)
      {
        v13 = v12;
      }

      else
      {
        v13 = (v8 - 16);
      }

      if (v12 == v8)
      {
        v14 = a3 + 2;
      }

      else
      {
        v14 = v9;
      }

      if (v12 > v8 - 16)
      {
        a3 = v14;
      }

      else
      {
        v13 = v12;
        a3 += 2;
      }

      v15 = v12 == v8;
      result = v13;
    }

    while (!v15);
  }

  return result;
}

int16x4_t *sub_29AB49188(int16x4_t *result, int a2, float32x4_t *a3)
{
  v3 = result + 2 * a2;
  if (a2 <= 7)
  {
    if (a2 >= 4)
    {
      v12.i64[0] = 0x3F0000003F000000;
      v12.i64[1] = 0x3F0000003F000000;
      v13 = vdupq_n_s32(0x477FFF00u);
      do
      {
        v14 = *a3++;
        v11 = result + 1;
        *result = vqmovun_s32(vcvtq_s32_f32(vmaxq_f32(vminq_f32(vaddq_f32(v14, v12), v13), 0)));
        v15 = &result[2] > v3;
        ++result;
      }

      while (!v15);
    }

    else
    {
      v11 = result;
    }

    for (; v11 < v3; v11 = (v11 + 2))
    {
      v16 = a3->f32[0];
      a3 = (a3 + 4);
      v17 = v16 + 0.5;
      if ((v16 + 0.5) < 0.0)
      {
        v17 = 0.0;
      }

      if (v17 > 65535.0)
      {
        v17 = 65535.0;
      }

      v11->i16[0] = v17;
    }
  }

  else
  {
    v4 = a3[-2].i64 + 4 * a2;
    v5.i64[0] = 0x3F0000003F000000;
    v5.i64[1] = 0x3F0000003F000000;
    v6 = vdupq_n_s32(0x477FFF00u);
    do
    {
      *result->i8 = vqmovun_high_s32(vqmovun_s32(vcvtq_s32_f32(vmaxq_f32(vminq_f32(vaddq_f32(*a3, v5), v6), 0))), vcvtq_s32_f32(vmaxq_f32(vminq_f32(vaddq_f32(a3[1], v5), v6), 0)));
      v7 = &result[2];
      if (v7 == v3)
      {
        v8 = v7;
      }

      else
      {
        v8 = (v3 - 16);
      }

      if (v7 == v3)
      {
        v9 = a3 + 2;
      }

      else
      {
        v9 = v4;
      }

      if (v7 > v3 - 16)
      {
        a3 = v9;
      }

      else
      {
        v8 = v7;
        a3 += 2;
      }

      v10 = v7 == v3;
      result = v8;
    }

    while (!v10);
  }

  return result;
}

int8x8_t *sub_29AB492A8(int8x8_t *result, int a2, float32x4_t *a3)
{
  v3 = result + a2;
  if (a2 <= 7)
  {
    if (a2 >= 4)
    {
      v11 = result + 4;
      v12 = vdupq_n_s32(0x437F0000u);
      v13.i64[0] = 0x3F0000003F000000;
      v13.i64[1] = 0x3F0000003F000000;
      do
      {
        v14 = *a3++;
        v15 = vcvtq_s32_f32(vmaxq_f32(vminq_f32(vqtbl1q_s8(vaddq_f32(vmulq_f32(v14, v12), v13), xmmword_29B6C2C90), v12), 0));
        *v15.i8 = vqmovn_s32(v15);
        *(v11 - 1) = vqmovun_s16(v15).u32[0];
        v11 += 4;
      }

      while (v11 <= v3);
    }
  }

  else
  {
    v4 = a3[-2].i64 + 4 * a2;
    v5 = vdupq_n_s32(0x437F0000u);
    v6.i64[0] = 0x3F0000003F000000;
    v6.i64[1] = 0x3F0000003F000000;
    do
    {
      *result = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(vmaxq_f32(vminq_f32(vqtbl1q_s8(vaddq_f32(vmulq_f32(*a3, v5), v6), xmmword_29B6C2C90), v5), 0))), vcvtq_s32_f32(vmaxq_f32(vminq_f32(vqtbl1q_s8(vaddq_f32(vmulq_f32(a3[1], v5), v6), xmmword_29B6C2C90), v5), 0))));
      v7 = &result[1];
      if (v7 == v3)
      {
        v8 = v7;
      }

      else
      {
        v8 = (v3 - 8);
      }

      if (v7 == v3)
      {
        v9 = a3 + 2;
      }

      else
      {
        v9 = v4;
      }

      if (v7 > (v3 - 8))
      {
        a3 = v9;
      }

      else
      {
        v8 = v7;
        a3 += 2;
      }

      v10 = v7 == v3;
      result = v8;
    }

    while (!v10);
  }

  return result;
}

int8x8_t *sub_29AB493A8(int8x8_t *result, int a2, float32x4_t *a3)
{
  v3 = result + a2;
  if (a2 <= 7)
  {
    if (a2 >= 4)
    {
      v11 = result + 4;
      v12.i64[0] = 0x3F0000003F000000;
      v12.i64[1] = 0x3F0000003F000000;
      v13 = vdupq_n_s32(0x437F0000u);
      do
      {
        v14 = *a3++;
        v15 = vcvtq_s32_f32(vmaxq_f32(vminq_f32(vqtbl1q_s8(vaddq_f32(v14, v12), xmmword_29B6C2C90), v13), 0));
        *v15.i8 = vqmovn_s32(v15);
        *(v11 - 1) = vqmovun_s16(v15).u32[0];
        v11 += 4;
      }

      while (v11 <= v3);
    }
  }

  else
  {
    v4 = a3[-2].i64 + 4 * a2;
    v5.i64[0] = 0x3F0000003F000000;
    v5.i64[1] = 0x3F0000003F000000;
    v6 = vdupq_n_s32(0x437F0000u);
    do
    {
      *result = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(vmaxq_f32(vminq_f32(vqtbl1q_s8(vaddq_f32(*a3, v5), xmmword_29B6C2C90), v6), 0))), vcvtq_s32_f32(vmaxq_f32(vminq_f32(vqtbl1q_s8(vaddq_f32(a3[1], v5), xmmword_29B6C2C90), v6), 0))));
      v7 = &result[1];
      if (v7 == v3)
      {
        v8 = v7;
      }

      else
      {
        v8 = (v3 - 8);
      }

      if (v7 == v3)
      {
        v9 = a3 + 2;
      }

      else
      {
        v9 = v4;
      }

      if (v7 > (v3 - 8))
      {
        a3 = v9;
      }

      else
      {
        v8 = v7;
        a3 += 2;
      }

      v10 = v7 == v3;
      result = v8;
    }

    while (!v10);
  }

  return result;
}

int16x8_t *sub_29AB4949C(int16x8_t *result, int a2, float32x4_t *a3)
{
  v3 = &result->i8[2 * a2];
  if (a2 <= 7)
  {
    if (a2 >= 4)
    {
      v11 = &result->i64[1];
      v12 = vdupq_n_s32(0x477FFF00u);
      v13.i64[0] = 0x3F0000003F000000;
      v13.i64[1] = 0x3F0000003F000000;
      do
      {
        v14 = *a3++;
        *(v11++ - 1) = vqmovun_s32(vcvtq_s32_f32(vmaxq_f32(vminq_f32(vqtbl1q_s8(vaddq_f32(vmulq_f32(v14, v12), v13), xmmword_29B6C2C90), v12), 0)));
      }

      while (v11 <= v3);
    }
  }

  else
  {
    v4 = a3[-2].i64 + 4 * a2;
    v5 = vdupq_n_s32(0x477FFF00u);
    v6.i64[0] = 0x3F0000003F000000;
    v6.i64[1] = 0x3F0000003F000000;
    do
    {
      *result = vqmovun_high_s32(vqmovun_s32(vcvtq_s32_f32(vmaxq_f32(vminq_f32(vqtbl1q_s8(vaddq_f32(vmulq_f32(*a3, v5), v6), xmmword_29B6C2C90), v5), 0))), vcvtq_s32_f32(vmaxq_f32(vminq_f32(vqtbl1q_s8(vaddq_f32(vmulq_f32(a3[1], v5), v6), xmmword_29B6C2C90), v5), 0)));
      v7 = &result[1];
      if (v7 == v3)
      {
        v8 = v7;
      }

      else
      {
        v8 = (v3 - 16);
      }

      if (v7 == v3)
      {
        v9 = a3 + 2;
      }

      else
      {
        v9 = v4;
      }

      if (v7 > (v3 - 16))
      {
        a3 = v9;
      }

      else
      {
        v8 = v7;
        a3 += 2;
      }

      v10 = v7 == v3;
      result = v8;
    }

    while (!v10);
  }

  return result;
}

int16x8_t *sub_29AB4959C(int16x8_t *result, int a2, float32x4_t *a3)
{
  v3 = &result->i8[2 * a2];
  if (a2 <= 7)
  {
    if (a2 >= 4)
    {
      v11 = &result->i64[1];
      v12.i64[0] = 0x3F0000003F000000;
      v12.i64[1] = 0x3F0000003F000000;
      v13 = vdupq_n_s32(0x477FFF00u);
      do
      {
        v14 = *a3++;
        *(v11++ - 1) = vqmovun_s32(vcvtq_s32_f32(vmaxq_f32(vminq_f32(vqtbl1q_s8(vaddq_f32(v14, v12), xmmword_29B6C2C90), v13), 0)));
      }

      while (v11 <= v3);
    }
  }

  else
  {
    v4 = a3[-2].i64 + 4 * a2;
    v5.i64[0] = 0x3F0000003F000000;
    v5.i64[1] = 0x3F0000003F000000;
    v6 = vdupq_n_s32(0x477FFF00u);
    do
    {
      *result = vqmovun_high_s32(vqmovun_s32(vcvtq_s32_f32(vmaxq_f32(vminq_f32(vqtbl1q_s8(vaddq_f32(*a3, v5), xmmword_29B6C2C90), v6), 0))), vcvtq_s32_f32(vmaxq_f32(vminq_f32(vqtbl1q_s8(vaddq_f32(a3[1], v5), xmmword_29B6C2C90), v6), 0)));
      v7 = &result[1];
      if (v7 == v3)
      {
        v8 = v7;
      }

      else
      {
        v8 = (v3 - 16);
      }

      if (v7 == v3)
      {
        v9 = a3 + 2;
      }

      else
      {
        v9 = v4;
      }

      if (v7 > (v3 - 16))
      {
        a3 = v9;
      }

      else
      {
        v8 = v7;
        a3 += 2;
      }

      v10 = v7 == v3;
      result = v8;
    }

    while (!v10);
  }

  return result;
}

int8x8_t *sub_29AB49690(int8x8_t *result, int a2, float32x4_t *a3)
{
  v3 = result + a2;
  if (a2 <= 7)
  {
    if (a2 >= 4)
    {
      v11 = result + 4;
      v12 = vdupq_n_s32(0x437F0000u);
      v13.i64[0] = 0x3F0000003F000000;
      v13.i64[1] = 0x3F0000003F000000;
      do
      {
        v14 = *a3++;
        v15 = vcvtq_s32_f32(vmaxq_f32(vminq_f32(vqtbl1q_s8(vaddq_f32(vmulq_f32(v14, v12), v13), xmmword_29B6C2CC0), v12), 0));
        *v15.i8 = vqmovn_s32(v15);
        *(v11 - 1) = vqmovun_s16(v15).u32[0];
        v11 += 4;
      }

      while (v11 <= v3);
    }
  }

  else
  {
    v4 = a3[-2].i64 + 4 * a2;
    v5 = vdupq_n_s32(0x437F0000u);
    v6.i64[0] = 0x3F0000003F000000;
    v6.i64[1] = 0x3F0000003F000000;
    do
    {
      *result = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(vmaxq_f32(vminq_f32(vqtbl1q_s8(vaddq_f32(vmulq_f32(*a3, v5), v6), xmmword_29B6C2CC0), v5), 0))), vcvtq_s32_f32(vmaxq_f32(vminq_f32(vqtbl1q_s8(vaddq_f32(vmulq_f32(a3[1], v5), v6), xmmword_29B6C2CC0), v5), 0))));
      v7 = &result[1];
      if (v7 == v3)
      {
        v8 = v7;
      }

      else
      {
        v8 = (v3 - 8);
      }

      if (v7 == v3)
      {
        v9 = a3 + 2;
      }

      else
      {
        v9 = v4;
      }

      if (v7 > (v3 - 8))
      {
        a3 = v9;
      }

      else
      {
        v8 = v7;
        a3 += 2;
      }

      v10 = v7 == v3;
      result = v8;
    }

    while (!v10);
  }

  return result;
}

int8x8_t *sub_29AB49790(int8x8_t *result, int a2, float32x4_t *a3)
{
  v3 = result + a2;
  if (a2 <= 7)
  {
    if (a2 >= 4)
    {
      v11 = result + 4;
      v12.i64[0] = 0x3F0000003F000000;
      v12.i64[1] = 0x3F0000003F000000;
      v13 = vdupq_n_s32(0x437F0000u);
      do
      {
        v14 = *a3++;
        v15 = vcvtq_s32_f32(vmaxq_f32(vminq_f32(vqtbl1q_s8(vaddq_f32(v14, v12), xmmword_29B6C2CC0), v13), 0));
        *v15.i8 = vqmovn_s32(v15);
        *(v11 - 1) = vqmovun_s16(v15).u32[0];
        v11 += 4;
      }

      while (v11 <= v3);
    }
  }

  else
  {
    v4 = a3[-2].i64 + 4 * a2;
    v5.i64[0] = 0x3F0000003F000000;
    v5.i64[1] = 0x3F0000003F000000;
    v6 = vdupq_n_s32(0x437F0000u);
    do
    {
      *result = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(vmaxq_f32(vminq_f32(vqtbl1q_s8(vaddq_f32(*a3, v5), xmmword_29B6C2CC0), v6), 0))), vcvtq_s32_f32(vmaxq_f32(vminq_f32(vqtbl1q_s8(vaddq_f32(a3[1], v5), xmmword_29B6C2CC0), v6), 0))));
      v7 = &result[1];
      if (v7 == v3)
      {
        v8 = v7;
      }

      else
      {
        v8 = (v3 - 8);
      }

      if (v7 == v3)
      {
        v9 = a3 + 2;
      }

      else
      {
        v9 = v4;
      }

      if (v7 > (v3 - 8))
      {
        a3 = v9;
      }

      else
      {
        v8 = v7;
        a3 += 2;
      }

      v10 = v7 == v3;
      result = v8;
    }

    while (!v10);
  }

  return result;
}

int16x8_t *sub_29AB49884(int16x8_t *result, int a2, float32x4_t *a3)
{
  v3 = &result->i8[2 * a2];
  if (a2 <= 7)
  {
    if (a2 >= 4)
    {
      v11 = &result->i64[1];
      v12 = vdupq_n_s32(0x477FFF00u);
      v13.i64[0] = 0x3F0000003F000000;
      v13.i64[1] = 0x3F0000003F000000;
      do
      {
        v14 = *a3++;
        *(v11++ - 1) = vqmovun_s32(vcvtq_s32_f32(vmaxq_f32(vminq_f32(vqtbl1q_s8(vaddq_f32(vmulq_f32(v14, v12), v13), xmmword_29B6C2CC0), v12), 0)));
      }

      while (v11 <= v3);
    }
  }

  else
  {
    v4 = a3[-2].i64 + 4 * a2;
    v5 = vdupq_n_s32(0x477FFF00u);
    v6.i64[0] = 0x3F0000003F000000;
    v6.i64[1] = 0x3F0000003F000000;
    do
    {
      *result = vqmovun_high_s32(vqmovun_s32(vcvtq_s32_f32(vmaxq_f32(vminq_f32(vqtbl1q_s8(vaddq_f32(vmulq_f32(*a3, v5), v6), xmmword_29B6C2CC0), v5), 0))), vcvtq_s32_f32(vmaxq_f32(vminq_f32(vqtbl1q_s8(vaddq_f32(vmulq_f32(a3[1], v5), v6), xmmword_29B6C2CC0), v5), 0)));
      v7 = &result[1];
      if (v7 == v3)
      {
        v8 = v7;
      }

      else
      {
        v8 = (v3 - 16);
      }

      if (v7 == v3)
      {
        v9 = a3 + 2;
      }

      else
      {
        v9 = v4;
      }

      if (v7 > (v3 - 16))
      {
        a3 = v9;
      }

      else
      {
        v8 = v7;
        a3 += 2;
      }

      v10 = v7 == v3;
      result = v8;
    }

    while (!v10);
  }

  return result;
}

int16x8_t *sub_29AB49984(int16x8_t *result, int a2, float32x4_t *a3)
{
  v3 = &result->i8[2 * a2];
  if (a2 <= 7)
  {
    if (a2 >= 4)
    {
      v11 = &result->i64[1];
      v12.i64[0] = 0x3F0000003F000000;
      v12.i64[1] = 0x3F0000003F000000;
      v13 = vdupq_n_s32(0x477FFF00u);
      do
      {
        v14 = *a3++;
        *(v11++ - 1) = vqmovun_s32(vcvtq_s32_f32(vmaxq_f32(vminq_f32(vqtbl1q_s8(vaddq_f32(v14, v12), xmmword_29B6C2CC0), v13), 0)));
      }

      while (v11 <= v3);
    }
  }

  else
  {
    v4 = a3[-2].i64 + 4 * a2;
    v5.i64[0] = 0x3F0000003F000000;
    v5.i64[1] = 0x3F0000003F000000;
    v6 = vdupq_n_s32(0x477FFF00u);
    do
    {
      *result = vqmovun_high_s32(vqmovun_s32(vcvtq_s32_f32(vmaxq_f32(vminq_f32(vqtbl1q_s8(vaddq_f32(*a3, v5), xmmword_29B6C2CC0), v6), 0))), vcvtq_s32_f32(vmaxq_f32(vminq_f32(vqtbl1q_s8(vaddq_f32(a3[1], v5), xmmword_29B6C2CC0), v6), 0)));
      v7 = &result[1];
      if (v7 == v3)
      {
        v8 = v7;
      }

      else
      {
        v8 = (v3 - 16);
      }

      if (v7 == v3)
      {
        v9 = a3 + 2;
      }

      else
      {
        v9 = v4;
      }

      if (v7 > (v3 - 16))
      {
        a3 = v9;
      }

      else
      {
        v8 = v7;
        a3 += 2;
      }

      v10 = v7 == v3;
      result = v8;
    }

    while (!v10);
  }

  return result;
}