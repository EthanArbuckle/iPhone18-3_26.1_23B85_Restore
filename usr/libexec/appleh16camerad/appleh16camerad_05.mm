uint64_t sub_10004D67C(uint64_t a1, unsigned int a2, uint64_t a3, _WORD *a4, _WORD *a5)
{
  if (!a2)
  {
    sub_1000806EC();
  }

  v5 = 0;
  v6 = *(a1 + 4);
  v7 = *(a3 + 16);
  v8 = *a3;
  v9 = *(a3 + 40);
  v10 = 1 << *a3;
  do
  {
    v11 = v7;
    v12 = v6;
    v13 = a5;
    v14 = a4;
    v15 = v9;
    if (v6)
    {
      do
      {
        if (!v11)
        {
          v15 = *(a3 + 120);
          v11 = *(a3 + 96);
        }

        *v14++ += *(v15 + 6) >> 2;
        *v13++ += *(v15 + 14) >> 2;
        v15 += 16;
        --v11;
        --v12;
      }

      while (v12);
    }

    if (v8 > 8)
    {
      sub_1000802CC();
    }

    if ((v10 & 0xFA) != 0)
    {
      v16 = *(a3 + 32);
      if (v16)
      {
        *(a3 + 32) = v16 - 1;
        v9 += 2 * *(a3 + 8);
      }

      else
      {
        v9 += 4 * *(a3 + 8);
      }

      *(a3 + 40) = v9;
      v19 = *(a3 + 20) + 2;
    }

    else
    {
      if ((v10 & 0x101) != 0)
      {
        v9 += 2 * *(a3 + 8);
        *(a3 + 40) = v9;
        v17 = *(a3 + 20);
        LODWORD(v18) = vadd_s32(v17, 0x100000001).u32[0];
        HIDWORD(v18) = veor_s8(*&v17, 0x100000001).i32[1];
        *(a3 + 20) = v18;
        goto LABEL_16;
      }

      v9 += 2 * *(a3 + 8);
      *(a3 + 40) = v9;
      v19 = *(a3 + 20) + 1;
    }

    *(a3 + 20) = v19;
LABEL_16:
    v20 = *(a3 + 80);
    if (v20 > 8)
    {
      sub_1000802CC();
    }

    v21 = 1 << v20;
    if ((v21 & 0xFA) != 0)
    {
      v22 = *(a3 + 112);
      if (v22)
      {
        *(a3 + 112) = v22 - 1;
        v23 = *(a3 + 120) + 2 * *(a3 + 88);
      }

      else
      {
        v23 = *(a3 + 120) + 4 * *(a3 + 88);
      }

      *(a3 + 120) = v23;
      result = (*(a3 + 100) + 2);
    }

    else
    {
      if ((v21 & 0x101) != 0)
      {
        result = *(a3 + 120) + 2 * *(a3 + 88);
        *(a3 + 120) = result;
        v25 = *(a3 + 100);
        LODWORD(v26) = vadd_s32(v25, 0x100000001).u32[0];
        HIDWORD(v26) = veor_s8(*&v25, 0x100000001).i32[1];
        *(a3 + 100) = v26;
        goto LABEL_25;
      }

      *(a3 + 120) += 2 * *(a3 + 88);
      result = (*(a3 + 100) + 1);
    }

    *(a3 + 100) = result;
LABEL_25:
    if (v11)
    {
      sub_1000806C0();
    }

    ++v5;
  }

  while (v5 != a2);
  if (v6)
  {
    v27 = 0x80 / a2;
    do
    {
      *a4 = (v27 * *a4) >> 5;
      ++a4;
      *a5 = (v27 * *a5) >> 5;
      ++a5;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t sub_10004D898(uint64_t result, int a2, unint64_t a3, uint64_t a4, _WORD *a5, _WORD *a6)
{
  if (!a3)
  {
    sub_100080718();
  }

  v6 = *(result + 20);
  if (v6)
  {
    v7 = *a4;
    v8 = *(a4 + 8);
    v9 = *(a4 + 64);
    v10 = *(a4 + 72);
    v11 = *(a4 + 88);
    v12 = *(a4 + 128);
    result = (*(a4 + 48) - a2);
    if (result >= 1)
    {
      v13 = 0;
    }

    else
    {
      v13 = *(a4 + 128);
    }

    v14 = v13 + result;
    v16 = *(a4 + 144);
    v15 = *(a4 + 152);
    v17 = *(a4 + 80);
    v18 = a5;
    v19 = 0;
    v20 = a6;
    while (1)
    {
      v21 = v15 + -16 * result;
      if (result >= 1)
      {
        v21 = v10 + 16 * a2;
      }

      v22 = a3;
      v23 = v14;
      do
      {
        if (!v23)
        {
          v21 = v15;
          v23 = v12;
        }

        *v18 += *(v21 + 6) >> 2;
        *v20 += *(v21 + 14) >> 2;
        v21 += 16;
        --v23;
        --v22;
      }

      while (v22);
      if ((v7 - 3) >= 5)
      {
        if (v7 > 1)
        {
          if (v7 == 8 || v7 == 2)
          {
LABEL_40:
            sub_1000802F8();
          }

LABEL_35:
          sub_100080324();
        }

        if (v7 != 1)
        {
          if (!v7)
          {
            goto LABEL_40;
          }

          goto LABEL_35;
        }
      }

      if ((v17 - 3) >= 5)
      {
        if (v17 > 1)
        {
          if (v17 != 8 && v17 != 2)
          {
LABEL_41:
            sub_100080324();
          }

LABEL_38:
          sub_1000802F8();
        }

        if (v17 != 1)
        {
          if (v17)
          {
            goto LABEL_41;
          }

          goto LABEL_38;
        }
      }

      v24 = v10 + 2 * v8;
      v10 += 4 * v8;
      if (!v9)
      {
        v10 = v24;
      }

      if (v9-- == 0)
      {
        v9 = 0;
      }

      v26 = v15 + 2 * v11;
      v15 += 4 * v11;
      v27 = v16 - 1;
      if (!v16)
      {
        v27 = 0;
        v15 = v26;
      }

      ++v18;
      ++v20;
      ++v19;
      v16 = v27;
      if (v19 == v6)
      {
        v28 = 0x80 / a3;
        do
        {
          *a5 = (*a5 * v28) >> 5;
          ++a5;
          *a6 = (*a6 * v28) >> 5;
          ++a6;
          --v6;
        }

        while (v6);
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_10004DA9C(uint64_t result, uint64_t a2, float *a3, float *a4)
{
  v4 = 0;
  v5 = *(a2 + 340);
  v6 = (a2 + 8);
  do
  {
    v7 = *(v6 - 2);
    v8 = (*(v6 - 1) * v5) - (v7 * v7);
    v9 = 0.0;
    if (v8 >= 0.0)
    {
      v10 = *v6;
      v11 = (v6[2] * v5) - (v10 * v10);
      if (v11 >= 0.0)
      {
        v12 = ((v10 * -v7) + (v6[1] * v5));
        v13 = sqrt(v8) * sqrt(v11);
        if (v13 == 0.0)
        {
          v13 = 1.0;
        }

        v9 = v12 / v13;
      }
    }

    v50[v4++] = v9;
    v6 += 5;
  }

  while (v4 != 17);
  v14 = *(result + 336) - *(result + 332);
  v15 = (v14 + 1);
  v16 = v15 / 2;
  if (v14 < 0)
  {
    v19 = -1.0;
    v18 = 1.0;
    v20 = v15 / 2;
  }

  else
  {
    v17 = 0;
    v18 = 1.0;
    v19 = -1.0;
    v20 = v15 / 2;
    do
    {
      v21 = v50[v17];
      if (v19 < v21)
      {
        v20 = v17;
        v19 = v50[v17];
      }

      if (v18 > v21)
      {
        v18 = v50[v17];
      }

      ++v17;
    }

    while (v15 != v17);
  }

  v22 = *(result + 356);
  if (!v22)
  {
    goto LABEL_44;
  }

  if (v20 > 0xF || ((1 << v20) & 0x8101) == 0)
  {
    v24 = *(result + 360);
    if (v20 >= 8)
    {
      v25 = 7;
    }

    else
    {
      v25 = 14;
    }

    if (v20 >= 8)
    {
      v26 = 1;
    }

    else
    {
      v26 = 9;
    }

    v27 = v25 >= v26;
    v28 = v25 - v26;
    if (!v27)
    {
      v28 = 0;
    }

    v29 = v28 + 1;
    v30 = &v50[v26];
    v31 = -1.0;
    do
    {
      v32 = *v30;
      if (v31 < *v30 && *(v30 - 1) < (v24 + v32) && v30[1] < (v24 + v32))
      {
        v31 = *v30;
      }

      ++v30;
      --v29;
    }

    while (v29);
    v22 = (v19 - v31) < *(result + 364);
  }

  else
  {
    v22 = 0;
  }

  v33 = 0;
  if (v20 < 2 || v20 >= v14 - 1)
  {
    goto LABEL_45;
  }

  v34 = *(result + 368);
  v35 = &v50[v20];
  v36 = *v35;
  if (*v35 >= (v34 + *(v35 - 1)) || v36 >= (v34 + v35[1]))
  {
LABEL_44:
    v33 = 0;
    goto LABEL_45;
  }

  if (v36 < (v34 + *(v35 - 2)))
  {
LABEL_57:
    *a4 = 0.0;
    v39 = 0.0;
    goto LABEL_62;
  }

  v33 = v36 < (v34 + v35[2]);
LABEL_45:
  if ((v19 - v18) < *(result + 372) || (v22 & 1) != 0 || v33)
  {
    goto LABEL_57;
  }

  if (v19 < 0.0)
  {
    v19 = 0.0;
  }

  if (v19 > 1.0)
  {
    v19 = 1.0;
  }

  *a4 = v19;
  if (v20)
  {
    v37 = v20 < v14;
  }

  else
  {
    v37 = 0;
  }

  if (v37)
  {
    v40 = v20 - 1;
    v41 = v20;
    v42 = v20 + 1;
    v43 = v50[v40];
    v44 = v50[v20];
    v45 = v50[v42];
    v46 = v44 - v43;
    v47 = v43 - v45;
    v48 = v45 - v44;
    v49 = ((v47 * v20) + (v42 * v46)) + (v40 * v48);
    if (v49 != 0.0)
    {
      v41 = ((((v41 * v41) * v47) + ((v42 * v42) * v46)) + ((v40 * v40) * v48)) / (v49 + v49);
    }

    v38 = v41 - v16;
  }

  else
  {
    v38 = (v20 - v16);
  }

  v39 = v38 * -2.0;
LABEL_62:
  *a3 = v39;
  return result;
}

uint64_t sub_10004DDC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = 0;
  v5 = 0.0;
  do
  {
    v6 = *(a2 + v3 * 4);
    v7 = *&dword_10008D730[v3] * v6;
    *v4.i32 = *v4.i32 + (v6 - v7);
    v5 = v5 + v7;
    ++v3;
  }

  while (v3 != 14);
  if (v5 == 0.0)
  {
    v8 = 1.0;
  }

  else
  {
    v8 = v5;
  }

  v9 = (*v4.i32 / v8) + -1.0;
  if (*v4.i32 == 0.0)
  {
    v10 = 1.0;
  }

  else
  {
    v10 = *v4.i32;
  }

  if (v5 <= *v4.i32)
  {
    v11 = 1.0 - (v5 / v10);
  }

  else
  {
    v11 = v9;
  }

  if (v11 >= 0.0)
  {
    v12 = v11;
  }

  else
  {
    v12 = -v11;
  }

  v13 = 0.0;
  if (v12 > 0.2)
  {
    v13 = 1.0;
    if (v12 < 0.6)
    {
      v13 = (v12 + -0.2) / 0.4;
    }
  }

  if (v11 >= 0.0)
  {
    *v4.i32 = v13 * *(a1 + 36);
  }

  else
  {
    *v4.i32 = -(v13 * *(a1 + 36));
  }

  v14 = (*v4.i32 + 1.0) * 0.5;
  *v4.i32 = 1.0 - v14;
  v15 = vdupq_lane_s32(v4, 0);
  v16 = a2 + 60;
  v17 = 0uLL;
  v18 = &xmmword_10008D6FC;
  v19 = &xmmword_10008D734;
  v20 = 12;
  v21 = vdupq_n_s32(0x3A800000u);
  __asm { FMOV            V5.4S, #1.0 }

  v27 = 0uLL;
  v28 = 0uLL;
  v29 = 0uLL;
  v30 = 0uLL;
  v31 = 0uLL;
  v32 = 0uLL;
  v33 = 0uLL;
  v34 = 0uLL;
  v35 = 0uLL;
  do
  {
    v36 = *(v16 - 56);
    v37 = vsqrtq_f32(vmulq_f32(vcvtq_f32_u32(v36), v21));
    v38 = *v18++;
    v39 = vmulq_f32(vcvtq_f32_u32(*v16), vcvtq_f32_u32(v38));
    v40 = *v19++;
    v41 = vmulq_f32(v39, vbslq_s8(vcgtq_f32(v37, _Q5), _Q5, v37));
    v42 = vcvtq_u64_f64(vcvtq_f64_f32(*v41.f32));
    v43 = vcvtq_u64_f64(vcvt_hight_f64_f32(v41));
    v44 = vmulq_f32(v41, vmlaq_f32(vmulq_n_f32(vsubq_f32(_Q5, v40), v14), v15, v40));
    v45 = vcvtq_u64_f64(vcvtq_f64_f32(*v44.f32));
    v46 = vcvtq_u64_f64(vcvt_hight_f64_f32(v44));
    v35 = vaddq_s64(v35, v43);
    v34 = vaddq_s64(v34, v42);
    v33 = vaddq_s64(v33, v46);
    v47 = *(v16 + 56);
    v32 = vaddq_s64(v32, v45);
    v42.i64[0] *= v47;
    result = SDWORD2(v47);
    v43.i64[0] *= SDWORD2(v47);
    v27 = vaddw_high_u32(v27, v36);
    v17 = vaddw_u32(v17, *v36.i8);
    v42.i64[1] *= SDWORD1(v47);
    v43.i64[1] *= SHIDWORD(v47);
    v36.i64[0] = v45.i64[0] * v47;
    v36.i64[1] = v45.i64[1] * SDWORD1(v47);
    v31 = vaddq_s64(v43, v31);
    v46.i64[0] *= SDWORD2(v47);
    v30 = vaddq_s64(v42, v30);
    v46.i64[1] *= SHIDWORD(v47);
    v29 = vaddq_s64(v46, v29);
    v28 = vaddq_s64(v36, v28);
    v16 += 16;
    v20 -= 4;
  }

  while (v20);
  v49 = vaddvq_s64(vaddq_s64(v28, v29));
  v50 = vaddvq_s64(vaddq_s64(v30, v31));
  v51 = vaddvq_s64(vaddq_s64(v32, v33));
  v52 = vaddvq_s64(vaddq_s64(v34, v35));
  if (v52)
  {
    v50 = 16 * v50 / v52;
  }

  v53 = v49;
  if (v51)
  {
    v53 = 16 * v49 / v51;
  }

  *(a3 + 12) = *(a2 + 168);
  if (v52)
  {
    *a3 = (vaddvq_s64(vaddq_s64(v17, v27)) + 8) >> 4;
    *(a3 + 4) = v52;
    *(a3 + 8) = v50;
    if (v51)
    {
      if (v53 >= 0)
      {
        v54 = v53;
      }

      else
      {
        v54 = -v53;
      }

      if (v54 >= 0xA1)
      {
        if (v54 < 0x140)
        {
          *(a3 + 8) = (v53 * (((v54 << 10) - 163840) / 0xA0uLL) + (1024 - ((v54 << 10) - 163840) / 0xA0uLL) * v50) >> 10;
        }

        else
        {
          *(a3 + 8) = v53;
        }
      }
    }
  }

  else
  {
    *(a3 + 8) = 0;
    *a3 = 0;
  }

  return result;
}

float sub_10004E0DC(unsigned int a1, _DWORD *a2)
{
  if (a1 >= 9)
  {
    sub_10007FD78();
  }

  v2 = qword_10008D7A0[a1];
  if (((1 << a1) & 0x198) != 0)
  {
    goto LABEL_28;
  }

  if (a1 == 5)
  {
    v3 = 0;
    result = -1.0;
    do
    {
      if ((v3 & 0x7FFFFFFD) != 0)
      {
        v5 = &a2[v3];
        v6 = v5[4];
        if (v6)
        {
          v7 = v5[8];
          if (v7)
          {
            if (a2[v3] >= 0x41u)
            {
              v8 = (v6 / v7) + -1.0;
              if (v8 < 0.0)
              {
                v8 = -v8;
              }

              if (fmaxf(v8, 0.0) > result)
              {
                result = v8;
              }
            }
          }
        }
      }

      ++v3;
    }

    while (v2 != v3);
    return result;
  }

  if (a1 == 6)
  {
    v9 = 0;
    result = -1.0;
    do
    {
      if ((v9 & 0x7FFFFFFD) != 1)
      {
        v10 = &a2[v9];
        v11 = v10[4];
        if (v11)
        {
          v12 = v10[8];
          if (v12)
          {
            if (a2[v9] >= 0x41u)
            {
              v13 = (v11 / v12) + -1.0;
              if (v13 < 0.0)
              {
                v13 = -v13;
              }

              if (fmaxf(v13, 0.0) > result)
              {
                result = v13;
              }
            }
          }
        }
      }

      ++v9;
    }

    while (v2 != v9);
    return result;
  }

  if (a1 < 2)
  {
LABEL_28:
    v14 = a2 + 8;
    result = -1.0;
    do
    {
      v15 = *(v14 - 4);
      if (v15 && *v14 && *(v14 - 8) >= 0x41)
      {
        v16 = (v15 / *v14) + -1.0;
        if (v16 < 0.0)
        {
          v16 = -v16;
        }

        if (fmaxf(v16, 0.0) > result)
        {
          result = v16;
        }
      }

      ++v14;
      --v2;
    }

    while (v2);
  }

  else
  {
    v17 = a2[4];
    result = -1.0;
    if (v17)
    {
      v18 = a2[8];
      if (v18)
      {
        if (*a2 >= 0x41u)
        {
          result = (v17 / v18) + -1.0;
          if (result < 0.0)
          {
            return -result;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10004E2D4(float *a1, float *a2)
{
  if (*a1 >= *a2)
  {
    v2 = 0;
  }

  else
  {
    v2 = -1;
  }

  if (*a1 > *a2)
  {
    return 1;
  }

  else
  {
    return v2;
  }
}

float sub_10004E2EC(uint64_t a1, unint64_t a2, float a3)
{
  if (a2 < 2)
  {
    v4 = 1;
  }

  else
  {
    v3 = (a1 + 8);
    v4 = 1;
    while (*v3 <= a3)
    {
      ++v4;
      v3 += 2;
      if (a2 == v4)
      {
        v4 = a2;
        break;
      }
    }
  }

  if (v4 >= a2 - 1)
  {
    v4 = a2 - 1;
  }

  v5 = (a1 + 8 * v4);
  v6 = *(v5 - 2);
  if (*v5 == v6)
  {
    return *(v5 - 1);
  }

  v8 = (a3 - v6) / (*v5 - v6);
  if (v8 <= 1.0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1.0;
  }

  v10 = v8 < 0.0;
  v11 = 0.0;
  if (!v10)
  {
    v11 = v9;
  }

  return ((1.0 - v11) * *(v5 - 1)) + (v11 * v5[1]);
}

void *sub_10004E414(void *a1)
{
  *a1 = off_1000A2A88;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_10004E480(void *a1)
{
  *a1 = off_1000A2A88;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  operator delete();
}

void *sub_10004E530(void *a1, uint64_t a2)
{
  if (objc_opt_class())
  {
    if (!qword_10041DF30)
    {
      qword_10041DF30 = objc_alloc_init(STMediaStatusDomainPublisher);
    }

    *a1 = a2;
  }

  return a1;
}

CFTypeRef *sub_10004E590(CFTypeRef *a1)
{
  if (objc_opt_class())
  {
    [qword_10041DF30 invalidate];

    qword_10041DF30 = 0;
    if (*a1)
    {
      CFRelease(*a1);
      *a1 = 0;
    }
  }

  return a1;
}

void *sub_10004E5F4(void *a1, uint64_t a2)
{
  *a1 = a2;
  bzero(a1 + 1, 6uLL);
  return a1;
}

void *sub_10004E624(void *result)
{
  if (*result)
  {
    *result = 0;
  }

  return result;
}

void *sub_10004E634(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    xpc_dictionary_set_uint64(v2, "SpmiInterface0ErrCount", *(a1 + 32));
    xpc_dictionary_set_uint64(v3, "SpmiInterface1ErrCount", *(a1 + 36));
    xpc_dictionary_set_uint64(v3, "CameraPowerOnDurationInMS", *(a1 + 40));
  }

  return v3;
}

void *sub_10004E6AC(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    xpc_dictionary_set_uint64(v2, "ChannelNum", *(a1 + 40));
    xpc_dictionary_set_uint64(v3, "NTC_temperature_start", *(*(a1 + 32) + 56 * *(a1 + 40)));
    xpc_dictionary_set_uint64(v3, "NTC_temperature_stop", *(*(a1 + 32) + 56 * *(a1 + 40) + 4));
    xpc_dictionary_set_uint64(v3, "NTC_temperature_max", *(*(a1 + 32) + 56 * *(a1 + 40) + 8));
    xpc_dictionary_set_uint64(v3, "NTC_temperature_min", *(*(a1 + 32) + 56 * *(a1 + 40) + 12));
    xpc_dictionary_set_uint64(v3, "NTC_temperature_average", *(*(a1 + 32) + 56 * *(a1 + 40) + 16));
    xpc_dictionary_set_uint64(v3, "NTC_temperature_delta", *(*(a1 + 32) + 56 * *(a1 + 40) + 20));
    xpc_dictionary_set_uint64(v3, "NTC_temperature_range", *(*(a1 + 32) + 56 * *(a1 + 40) + 24));
    xpc_dictionary_set_uint64(v3, "imageSensor_temperature_start", *(*(a1 + 32) + 56 * *(a1 + 40) + 28));
    xpc_dictionary_set_uint64(v3, "imageSensor_temperature_stop", *(*(a1 + 32) + 56 * *(a1 + 40) + 32));
    xpc_dictionary_set_uint64(v3, "imageSensor_temperature_max", *(*(a1 + 32) + 56 * *(a1 + 40) + 36));
    xpc_dictionary_set_uint64(v3, "imageSensor_temperature_min", *(*(a1 + 32) + 56 * *(a1 + 40) + 40));
    xpc_dictionary_set_uint64(v3, "imageSensor_temperature_average", *(*(a1 + 32) + 56 * *(a1 + 40) + 44));
    xpc_dictionary_set_uint64(v3, "imageSensor_temperature_delta", *(*(a1 + 32) + 56 * *(a1 + 40) + 48));
    xpc_dictionary_set_uint64(v3, "imageSensor_temperature_range", *(*(a1 + 32) + 56 * *(a1 + 40) + 52));
  }

  return v3;
}

void *sub_10004E8C8(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    xpc_dictionary_set_string(v2, "Fault_Transition_Type", *(a1 + 32));
    xpc_dictionary_set_uint64(v3, "MamaBear_Capacitance_Value", *(a1 + 40));
  }

  return v3;
}

void *sub_10004E92C(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    xpc_dictionary_set_uint64(v2, "ROI_TopLeft", *(a1 + 4 * *(a1 + 3060) + 68));
    xpc_dictionary_set_uint64(v3, "ROI_BottomLeft", *(a1 + 4 * *(a1 + 3060) + 548));
    xpc_dictionary_set_uint64(v3, "ROI_TopMid", *(a1 + 4 * *(a1 + 3060) + 1028));
  }

  return v3;
}

uint64_t sub_10004E9D0(int a1, char *__s, unsigned int a3, char *a4)
{
  v7 = strlen(__s);
  if (v7 != a3)
  {
    return 0;
  }

  v8 = v7;
  if (strstr(__s, "./"))
  {
    return 0;
  }

  v10 = strstr(__s, "../");
  result = 0;
  if (a3 <= 0xC0 && !v10)
  {
    if (!a4)
    {
      operator new[]();
    }

    strcpy(a4, "/private/var/mobile/Media/DCIM");
    if (*__s != 47)
    {
      *&a4[strlen(a4)] = 47;
    }

    strncat(a4, __s, v8);
    return 1;
  }

  return result;
}

uint64_t sub_10004EABC(uint64_t a1, uint64_t a2, int a3)
{
  if (os_variant_allows_internal_security_policies() && (os_variant_has_internal_content() & 1) != 0)
  {
    if (a3 == 1)
    {
      if (*(a2 + 8) == 208)
      {
        operator new[]();
      }

      v9 = off_10041DCC8;
      if (off_10041DCC8 == &_os_log_default)
      {
        v9 = os_log_create("com.apple.isp", "general");
        off_10041DCC8 = v9;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100080DF0();
      }
    }

    else
    {
      v8 = off_10041DCC8;
      if (off_10041DCC8 == &_os_log_default)
      {
        v8 = os_log_create("com.apple.isp", "general");
        off_10041DCC8 = v8;
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100080D74();
      }
    }

    return 3;
  }

  else
  {
    v5 = off_10041DCC8;
    if (off_10041DCC8 == &_os_log_default)
    {
      v5 = os_log_create("com.apple.isp", "general");
      off_10041DCC8 = v5;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100080CF4();
    }

    return 4;
  }
}

uint64_t sub_10004ED64(uint64_t a1, uint64_t a2, int a3)
{
  if (os_variant_allows_internal_security_policies() && (os_variant_has_internal_content() & 1) != 0)
  {
    if (a3 == 2)
    {
      if (*(a2 + 8) == 208)
      {
        operator new[]();
      }

      v9 = off_10041DCC8;
      if (off_10041DCC8 == &_os_log_default)
      {
        v9 = os_log_create("com.apple.isp", "general");
        off_10041DCC8 = v9;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100081068();
      }
    }

    else
    {
      v8 = off_10041DCC8;
      if (off_10041DCC8 == &_os_log_default)
      {
        v8 = os_log_create("com.apple.isp", "general");
        off_10041DCC8 = v8;
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100080FEC();
      }
    }

    return 3;
  }

  else
  {
    v5 = off_10041DCC8;
    if (off_10041DCC8 == &_os_log_default)
    {
      v5 = os_log_create("com.apple.isp", "general");
      off_10041DCC8 = v5;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100080F6C();
    }

    return 4;
  }
}

uint64_t sub_10004F1E0(uint64_t a1, uint64_t a2, int a3)
{
  if (os_variant_allows_internal_security_policies() && (os_variant_has_internal_content() & 1) != 0)
  {
    if (a3 == 2)
    {
      if (*(a2 + 8) == 208)
      {
        operator new[]();
      }

      v9 = off_10041DCC8;
      if (off_10041DCC8 == &_os_log_default)
      {
        v9 = os_log_create("com.apple.isp", "general");
        off_10041DCC8 = v9;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100081428();
      }
    }

    else
    {
      v8 = off_10041DCC8;
      if (off_10041DCC8 == &_os_log_default)
      {
        v8 = os_log_create("com.apple.isp", "general");
        off_10041DCC8 = v8;
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1000813AC();
      }
    }

    return 3;
  }

  else
  {
    v5 = off_10041DCC8;
    if (off_10041DCC8 == &_os_log_default)
    {
      v5 = os_log_create("com.apple.isp", "general");
      off_10041DCC8 = v5;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10008132C();
    }

    return 4;
  }
}

uint64_t sub_10004F66C(uint64_t a1)
{
  if (*(a1 + 208))
  {
    goto LABEL_2;
  }

  v3 = *(a1 + 216);
  if (!v3)
  {
    goto LABEL_11;
  }

  if (!sub_10005328C(v3))
  {
    sub_100053074(*(a1 + 216));
  }

  if (sub_10005328C(*(a1 + 216)))
  {
    operator new();
  }

  if (*(a1 + 208))
  {
LABEL_2:

    return sub_1000533B4();
  }

  else
  {
LABEL_11:
    v4 = off_10041DCC8;
    if (off_10041DCC8 == &_os_log_default)
    {
      v4 = os_log_create("com.apple.isp", "general");
      off_10041DCC8 = v4;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000816DC();
    }

    return 2;
  }
}

uint64_t sub_10004F7A4(uint64_t a1, uint64_t *a2, int a3)
{
  if (a3 != 2)
  {
    v4 = off_10041DCC8;
    if (off_10041DCC8 == &_os_log_default)
    {
      v4 = os_log_create("com.apple.isp", "general");
      off_10041DCC8 = v4;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10008175C();
    }

    return 3;
  }

  if (a2[4] <= 0x7EF9F)
  {
    v3 = off_10041DCC8;
    if (off_10041DCC8 == &_os_log_default)
    {
      v3 = os_log_create("com.apple.isp", "general");
      off_10041DCC8 = v3;
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1000817D8();
    }

    return 3;
  }

  sub_10000DC48(*a2, a2[3]);
  return 0;
}

uint64_t sub_10004F8B0(uint64_t a1, uint64_t *a2, int a3)
{
  if (a3 != 3)
  {
    v4 = off_10041DCC8;
    if (off_10041DCC8 == &_os_log_default)
    {
      v4 = os_log_create("com.apple.isp", "general");
      off_10041DCC8 = v4;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100081854();
    }

    return 3;
  }

  if (a2[7] <= 0x7EF9F)
  {
    v3 = off_10041DCC8;
    if (off_10041DCC8 == &_os_log_default)
    {
      v3 = os_log_create("com.apple.isp", "general");
      off_10041DCC8 = v3;
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1000818D0();
    }

    return 3;
  }

  sub_100046928(*a2, a2[3], a2[6]);
  return 0;
}

uint64_t sub_10004F9C0(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == 4)
  {
    if (*(a2 + 80) > 0x7EF9FuLL)
    {
      sub_100046BE0(*a2, *(a2 + 24), *(a2 + 48), *(a2 + 72));
    }

    v3 = off_10041DCC8;
    if (off_10041DCC8 == &_os_log_default)
    {
      v3 = os_log_create("com.apple.isp", "general");
      off_10041DCC8 = v3;
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1000819C8();
    }
  }

  else
  {
    v4 = off_10041DCC8;
    if (off_10041DCC8 == &_os_log_default)
    {
      v4 = os_log_create("com.apple.isp", "general");
      off_10041DCC8 = v4;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10008194C();
    }
  }

  return 3;
}

uint64_t sub_10004FAD4(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == 5)
  {
    if (*(a2 + 104) > 0x7EF9FuLL)
    {
      sub_100046D70(*a2, *(a2 + 24), *(a2 + 48), *(a2 + 72), *(a2 + 96));
    }

    v3 = off_10041DCC8;
    if (off_10041DCC8 == &_os_log_default)
    {
      v3 = os_log_create("com.apple.isp", "general");
      off_10041DCC8 = v3;
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100081AC0();
    }
  }

  else
  {
    v4 = off_10041DCC8;
    if (off_10041DCC8 == &_os_log_default)
    {
      v4 = os_log_create("com.apple.isp", "general");
      off_10041DCC8 = v4;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100081A44();
    }
  }

  return 3;
}

uint64_t sub_10004FBEC(uint64_t a1, uint64_t *a2, int a3)
{
  if (a3 != 2)
  {
    v4 = off_10041DCC8;
    if (off_10041DCC8 == &_os_log_default)
    {
      v4 = os_log_create("com.apple.isp", "general");
      off_10041DCC8 = v4;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100081B3C();
    }

    return 3;
  }

  if (a2[4] <= 0x7EFAB)
  {
    v3 = off_10041DCC8;
    if (off_10041DCC8 == &_os_log_default)
    {
      v3 = os_log_create("com.apple.isp", "general");
      off_10041DCC8 = v3;
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100081BB8();
    }

    return 3;
  }

  sub_10003D464(*a2, a2[3]);
  return 0;
}

uint64_t sub_10004FCF8(uint64_t a1, uint64_t *a2, int a3)
{
  if (a3 != 3)
  {
    v4 = off_10041DCC8;
    if (off_10041DCC8 == &_os_log_default)
    {
      v4 = os_log_create("com.apple.isp", "general");
      off_10041DCC8 = v4;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100081C34();
    }

    return 3;
  }

  if (a2[7] <= 0x7EFAB)
  {
    v3 = off_10041DCC8;
    if (off_10041DCC8 == &_os_log_default)
    {
      v3 = os_log_create("com.apple.isp", "general");
      off_10041DCC8 = v3;
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100081CB0();
    }

    return 3;
  }

  sub_10003DCA4(*a2, a2[3], a2[6]);
  return 0;
}

uint64_t sub_10004FE04(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == 4)
  {
    v3 = *a2;
    v4 = *(a2 + 48);
    v8[0] = *(a2 + 24);
    v8[1] = v4;
    v8[2] = *(a2 + 72);
    if (*(a2 + 8) == 591796)
    {
      sub_10000E720(v3, v8);
      return 0;
    }

    v7 = off_10041DCC8;
    if (off_10041DCC8 == &_os_log_default)
    {
      v7 = os_log_create("com.apple.isp", "general");
      off_10041DCC8 = v7;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100081DC4();
    }
  }

  else
  {
    v6 = off_10041DCC8;
    if (off_10041DCC8 == &_os_log_default)
    {
      v6 = os_log_create("com.apple.isp", "general");
      off_10041DCC8 = v6;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100081D30();
    }
  }

  return 3;
}

uint64_t sub_10004FF50(uint64_t a1, uint64_t *a2, int a3)
{
  __dst = 0;
  if (a3 != 2)
  {
    v9 = off_10041DCC8;
    if (off_10041DCC8 == &_os_log_default)
    {
      v9 = os_log_create("com.apple.isp", "general");
      off_10041DCC8 = v9;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100081F54();
    }

    return 3;
  }

  if (a2[1] != 10408)
  {
    v10 = off_10041DCC8;
    if (off_10041DCC8 == &_os_log_default)
    {
      v10 = os_log_create("com.apple.isp", "general");
      off_10041DCC8 = v10;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100081FD0();
    }

    return 3;
  }

  v5 = *a2;
  v6 = a2[3];
  v7 = *(a1 + 224);
  if (v7 && !sub_100035944(v7, 0x18u, a2[4], &__dst) && __dst)
  {
    memcpy(__dst, v6, a2[4]);
    v6 = __dst;
  }

  sub_1000517E0(v5, v6);
  result = 0;
  if (*(a1 + 224))
  {
    if (__dst)
    {
      sub_1000359F8(*(a1 + 224), 0x18u);
      return 0;
    }
  }

  return result;
}

void sub_1000500C4(uint64_t a1, uint64_t a2, void *a3)
{
  *(a1 + 200) = 0;
  v3 = a3[1];
  *(a1 + 224) = *a3;
  *(a1 + 232) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void *sub_1000501F8(void *a1)
{
  if (byte_10041DF38 == 1)
  {
    for (i = 0; i != 25; ++i)
    {
      v3 = a1[i];
      if (v3)
      {
        sub_10003527C(v3);
        operator delete();
      }
    }
  }

  if (a1[26])
  {
    sub_1000533B0();
    operator delete();
  }

  if (a1[27])
  {
    sub_100053288();
    operator delete();
  }

  v4 = a1[29];
  if (v4)
  {
    sub_100035CE4(v4);
  }

  return a1;
}

uint64_t sub_100050328(int a1, int a2)
{
  result = 0;
  if (a1 <= 3)
  {
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        return result;
      }

      if (!a2)
      {
        return 3;
      }

      if (a2 != 1)
      {
        sub_1000820D8();
      }
    }

    else
    {
      if (!a1)
      {
        return result;
      }

      if (a1 != 1)
      {
        goto LABEL_31;
      }

      if (!a2)
      {
        return 2;
      }

      if (a2 != 1)
      {
        sub_100082104();
      }
    }

    return 1;
  }

  if (a1 <= 5)
  {
    if (a1 == 4)
    {
      goto LABEL_21;
    }

    if (a2)
    {
      if (a2 != 1)
      {
        sub_100082080();
      }

      return 0;
    }

    return 1;
  }

  if (a1 == 6)
  {
    if (!a2)
    {
      return 2;
    }

    if (a2 != 1)
    {
      sub_100082054();
    }

    return 1;
  }

  if (a1 == 7)
  {
LABEL_21:
    if (!a2)
    {
      return 4;
    }

    if (a2 != 1)
    {
      sub_1000820AC();
    }

    return 2;
  }

  if (a1 != 8)
  {
LABEL_31:
    sub_100082130();
  }

  return result;
}

unint64_t sub_10005041C(unsigned int a1, unsigned int *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void *a6)
{
  result = sub_100050328(a1, a2[8]);
  if (a1 > 8)
  {
    sub_1000821E0();
  }

  if (((1 << a1) & 0xFA) == 0)
  {
    v21 = 0;
    if (((1 << a1) & 0x101) != 0)
    {
      v22 = *a2 * a3;
      *a4 = v22;
      v23 = a2[2] * a3 + v22 * 2 * a2[3];
    }

    else
    {
      v24 = 2 * a3 * *a2;
      *a4 = v24;
      v23 = v24 * a2[3] + 2 * a2[2] * a3;
    }

    *a5 = v23;
    goto LABEL_18;
  }

  v13 = a2[1];
  if (result >= v13)
  {
    sub_10008215C();
  }

  v14 = a2[3];
  if (v14 >= v13)
  {
    sub_100082188();
  }

  if (a1 > 7)
  {
    goto LABEL_21;
  }

  if (((1 << a1) & 0x9A) == 0)
  {
    if (((1 << a1) & 0x60) != 0)
    {
      a3 *= 2;
      goto LABEL_9;
    }

LABEL_21:
    sub_1000821B4();
  }

LABEL_9:
  *a4 = a3 * *a2;
  *a5 = 0;
  v15 = 2 * v14 - result;
  if (result > v14)
  {
    v15 = v14;
  }

  *a5 = *a4 * v15;
  v16 = (v13 + ~v14);
  v17 = *a4 * (2 * v13 - 1);
  *a6 = v17;
  v18 = v17 + *a4 * (result - 2 * v16);
  v19 = v17 - *a4 * v16;
  if (result <= v16)
  {
    v19 = v18;
  }

  *a6 = v19;
  v20 = a3 * a2[2];
  *a5 += v20;
  v21 = *a6 + v20;
LABEL_18:
  *a6 = v21;
  return result;
}

uint64_t sub_1000505B4(int a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  *a4 = a1;
  *(a4 + 20) = -1;
  *(a4 + 52) = -1;
  v4 = a2[4];
  v5 = a2[5];
  v7 = a2[2];
  v6 = a2[3];
  v8 = v4 >= v7;
  v9 = v4 - v7;
  v10 = v9 != 0 && v8 && v5 > v6;
  v11 = !v10 || a3 == 0;
  v12 = !v11;
  if (v11)
  {
    return v12;
  }

  *(a4 + 4) = v5 - v6;
  if (a1 <= 2)
  {
    if (!a1)
    {
LABEL_28:
      v17 = a2[6];
      if (v17 >= 2)
      {
        sub_10008236C();
      }

      v18 = a2[7];
      if (v18 != -1)
      {
        sub_100082314();
      }

      goto LABEL_30;
    }

    if (a1 != 1)
    {
      if (a1 == 2)
      {
        if (a2[6])
        {
          sub_100082264();
        }

        if (a2[7] != -1)
        {
          sub_100082290();
        }

        v17 = 0;
        goto LABEL_32;
      }

      goto LABEL_53;
    }

LABEL_24:
    v17 = a2[6];
    if (v17 >= 2)
    {
      sub_1000822E8();
    }

    v18 = a2[7];
    if ((v18 - 4) <= 0xFFFFFFFD)
    {
      sub_1000822BC();
    }

    goto LABEL_30;
  }

  if (a1 > 8)
  {
    goto LABEL_53;
  }

  if (((1 << a1) & 0x98) != 0)
  {
    goto LABEL_24;
  }

  if (((1 << a1) & 0x60) == 0)
  {
    if (a1 == 8)
    {
      goto LABEL_28;
    }

LABEL_53:
    sub_100082398();
  }

  if (a2[6])
  {
    sub_10008220C();
  }

  if (a2[7] != 2)
  {
    sub_100082238();
  }

  v17 = 0;
  v18 = 2;
LABEL_30:
  if (((1 << a1) & 0xD2) != 0)
  {
    *(a4 + 16) = v9;
    *(a4 + 20) = 0;
    *(a4 + 24) = v17;
    *(a4 + 48) = v9;
    *(a4 + 52) = 1;
    *(a4 + 56) = v18;
    goto LABEL_35;
  }

  if (((1 << a1) & 0x105) == 0)
  {
    *(a4 + 48) = v9;
    *(a4 + 52) = 0;
    *(a4 + 56) = v18;
    *(a4 + 16) = v9;
    *(a4 + 20) = 1;
    *(a4 + 24) = v17;
    goto LABEL_35;
  }

LABEL_32:
  *(a4 + 16) = v9;
  *(a4 + 20) = 0;
  *(a4 + 24) = v17;
  *(a4 + 48) = 0xFFFFFFFF00000000;
  *(a4 + 56) = -1;
LABEL_35:
  v26 = 0;
  v27 = 0;
  v25 = 0;
  sub_10005041C(a1, a2, 8, &v27, &v26, &v25);
  *(a4 + 8) = v27 >> 1;
  *(a4 + 32) = 0;
  *(a4 + 64) = 0;
  v19 = sub_100050328(a1, a2[8]);
  if (((1 << a1) & 0xFA) != 0)
  {
    v20 = a2[3];
    if (v19 > v20)
    {
      *(a4 + 32) = v19 - v20;
    }

    v21 = a2[1] + ~v19;
    v8 = v21 >= v20;
    v22 = v21 - v20;
    if (v8)
    {
      *(a4 + 64) = v22;
    }

    *(a4 + 40) = a3 + v26;
    v23 = a3 + v25;
  }

  else
  {
    v23 = 0;
    *(a4 + 40) = a3 + v26;
  }

  *(a4 + 72) = v23;
  if (!*(a4 + 8))
  {
    sub_100082340();
  }

  return v12;
}

void sub_100050828(unsigned int *a1, uint64_t a2, int a3)
{
  v3 = a1;
  if (a3 == 1)
  {
    v9 = 0;
    v8 = 0;
    v5 = a1[6];
    v4 = a1[7];
    v10 = (v4 - 15) >> 4;
    v54 = (v5 - 23) / 0x18uLL;
    v6 = 16;
    v7 = 24;
  }

  else
  {
    if (a3)
    {
      sub_100082448();
    }

    v5 = a1[6];
    v4 = a1[7];
    v6 = v4 / 0x2CuLL;
    v7 = v5 / 0x18uLL;
    v54 = 24;
    v8 = (24 - v7) >> 1;
    v9 = (16 - v6) >> 1;
    v10 = 44;
  }

  v47 = v6;
  v49 = v10;
  v11 = *a2;
  v12 = *(a2 + 8);
  v14 = *(a2 + 32);
  v13 = *(a2 + 40);
  v53 = 4 * v12;
  v15 = (v4 - v10 * v6) & 0xFFFFFFFFFFFFFFFELL;
  if (v15)
  {
    if (v11 > 8)
    {
      sub_1000823C4();
    }

    do
    {
      if (v11 == 8 || v11 == 2 || !v11)
      {
        v13 += 2 * v12;
      }

      else
      {
        v16 = v14 - 1;
        if (v14)
        {
          v13 += 2 * v12;
        }

        else
        {
          v16 = 0;
          v13 += v53;
        }

        v14 = v16;
      }

      --v15;
    }

    while (v15);
  }

  v17 = a1 + 1834;
  bzero(a1 + 1834, 0xC00uLL);
  if (v47)
  {
    v18 = v3 + 1762;
    v45 = v8;
    v46 = v3;
    v19 = v3 + 1690;
    v20 = 0;
    v44 = v9;
    v21 = &v17[48 * v9 + 2 * v8];
    v22 = (2 * (v5 - v54 * v7)) & 0xFFFFFFFFFFFFFFFCLL;
    v51 = &v19[12 * v8];
    v23 = (v49 * v54);
    v48 = v19;
    v50 = &v18[12 * v8];
    v8 = v47;
    do
    {
      bzero(v48, 0x240uLL);
      v26 = v49;
      for (i = v20; v26; --v26)
      {
        sub_100050CB4(v13 + 2 * v22, v7, v54, v50);
        if (v11 > 8)
        {
          sub_1000823C4();
        }

        v27 = 1 << v11;
        if (((1 << v11) & 0xFA) != 0)
        {
          v28 = v14 - 1;
          if (v14)
          {
            v29 = v13 + 2 * v12;
          }

          else
          {
            v28 = 0;
            v29 = v13 + v53;
          }

          v14 = v28;
        }

        else
        {
          v29 = v13 + 2 * v12;
          if ((v27 & 0x101) == 0)
          {
            sub_100050D24(v29 + 2 * v22, v7, v54, v51);
LABEL_35:
            v20 = i;
            v13 = v29 + 2 * v12;
            continue;
          }
        }

        sub_100050D24(v29 + 2 * v22, v7, v54, v51);
        if ((v27 & 0xFA) != 0)
        {
          v30 = v14 - 1;
          if (v14)
          {
            v13 = v29 + 2 * v12;
          }

          else
          {
            v30 = 0;
            v13 = v29 + v53;
          }

          v14 = v30;
        }

        else
        {
          if ((v27 & 0x101) == 0)
          {
            goto LABEL_35;
          }

          v13 = v29 + 2 * v12;
        }

        v20 = i;
      }

      if (v7)
      {
        v31 = 0;
        v32 = v51;
        do
        {
          LOWORD(v24) = *(v32 + 4);
          v33 = (LODWORD(v24) / v23) * 100.0;
          LOWORD(v25) = *(v32 + 148);
          v34 = ((v25 / v23) * 100.0) <= 90.0 || v33 <= 90.0;
          v35 = !v34;
          *(v21 + v31 + 6) = v35 << 31 >> 31;
          v36 = *v32;
          v37 = 0.0;
          v38 = 0.0;
          if (*v32)
          {
            v38 = ((v32[1] / v36) + -1.0) * 10000.0;
          }

          v39 = v32[72];
          v40 = v39;
          if (v39)
          {
            v37 = ((v32[73] / v40) + -1.0) * 10000.0;
          }

          v41 = sqrtf((v37 * v37) + (v38 * v38));
          v42 = atan2f(v38, v37);
          v43 = (v21 + v31);
          v43[1] = v41;
          v43[2] = ((v42 * 180.0) / 3.14159265 + 0.5);
          v24 = (v40 + v36) / ((v49 + v49) * v54);
          *v43 = v24;
          v32 += 3;
          v31 += 8;
        }

        while (8 * v7 != v31);
        v21 += v31;
        v8 = v47;
        v20 = i;
      }

      v21 += 8 * (24 - v7);
      ++v20;
    }

    while (v20 != v8);
    v34 = v8 > 0x10;
    LOBYTE(v8) = v45;
    v3 = v46;
    LOBYTE(v9) = v44;
    if (v34)
    {
      sub_1000823F0();
    }
  }

  if (v7 >= 0x19)
  {
    sub_10008241C();
  }

  *(v3 + 6745) = v47;
  *(v3 + 6744) = v7;
  *(v3 + 6747) = v49;
  *(v3 + 6746) = v54;
  *(v3 + 6749) = v9;
  *(v3 + 6748) = v8;
}

uint64_t sub_100050CB4(uint64_t result, uint64_t a2, uint64_t a3, int *a4)
{
  if (a2)
  {
    for (i = 0; i != a2; ++i)
    {
      if (a3)
      {
        v6 = *a4;
        v5 = a4[1];
        v7 = a3;
        v8 = *(a4 + 4);
        do
        {
          v9 = *(result + 6);
          v10 = (v9 - 16) >= 0xDD5 || (v9 - (*result >> 3) - 16) >= 0xDD5u;
          v5 += v9;
          v6 += (v9 - (*result >> 3));
          if (!v10)
          {
            ++v8;
          }

          *(a4 + 4) = v8;
          result += 8;
          --v7;
        }

        while (v7);
        *a4 = v6;
        a4[1] = v5;
      }

      a4 += 3;
    }
  }

  return result;
}

uint64_t sub_100050D24(uint64_t result, uint64_t a2, uint64_t a3, int *a4)
{
  if (a2)
  {
    for (i = 0; i != a2; ++i)
    {
      if (a3)
      {
        v6 = *a4;
        v5 = a4[1];
        v7 = a3;
        v8 = *(a4 + 4);
        do
        {
          v9 = *(result + 6);
          v10 = (v9 - 16) >= 0xDD5 || (v9 + (*result >> 3) - 16) >= 0xDD5u;
          v5 += v9;
          v6 += (v9 + (*result >> 3));
          if (!v10)
          {
            ++v8;
          }

          *(a4 + 4) = v8;
          result += 8;
          --v7;
        }

        while (v7);
        *a4 = v6;
        a4[1] = v5;
      }

      a4 += 3;
    }
  }

  return result;
}

void sub_100050D94(unsigned int *a1, uint64_t a2, int a3)
{
  v3 = a1;
  if (a3 == 1)
  {
    v8 = 0;
    v7 = 0;
    v5 = a1[6];
    v4 = a1[7];
    v10 = (v4 - 15) >> 4;
    v65 = (v5 - 23) / 0x18uLL;
    v9 = 16;
    v6 = 24;
  }

  else
  {
    if (a3)
    {
      sub_1000824CC();
    }

    v5 = a1[6];
    v4 = a1[7];
    v6 = v5 / 0x18uLL;
    v65 = 24;
    v7 = (24 - v6) >> 1;
    v8 = (16 - v4 / 0x2CuLL) >> 1;
    v9 = v4 / 0x2CuLL;
    v10 = 44;
  }

  v72 = v10;
  v73 = v9;
  v11 = *a2;
  v12 = *(a2 + 8);
  v14 = *(a2 + 32);
  v13 = *(a2 + 40);
  v70 = 4 * v12;
  v15 = (v4 - v10 * v9) & 0xFFFFFFFFFFFFFFFELL;
  if (v15)
  {
    if (v11 > 8)
    {
      sub_1000823C4();
    }

    do
    {
      if (v11 == 8 || v11 == 2 || !v11)
      {
        v13 += 2 * v12;
      }

      else
      {
        v16 = v14 - 1;
        if (v14)
        {
          v13 += 2 * v12;
        }

        else
        {
          v16 = 0;
          v13 += v70;
        }

        v14 = v16;
      }

      --v15;
    }

    while (v15);
  }

  bzero(a1 + 1834, 0xC00uLL);
  v17 = v73;
  if (v73)
  {
    v74 = 0;
    v62 = v8;
    v63 = v7;
    v18 = &v3[48 * v8 + 1834 + 2 * v7];
    v19 = 3 * v7;
    v68 = &v3[3 * v7 + 1762];
    v69 = (2 * (v5 - v65 * v6)) & 0xFFFFFFFFFFFFFFFCLL;
    v20 = v65 & 0xFFFFFFFFFFFFFF8;
    v67 = &v3[3 * v7 + 1690];
    v21 = v72;
    v22 = (v72 * v65);
    v71 = v3 + 1690;
    v64 = v3;
    v23 = &v3[v19];
    v66 = vdupq_n_s16(0xDD5u);
    do
    {
      bzero(v71, 0x240uLL);
      if (v21)
      {
        v26 = 0;
        v27.i64[0] = 0xF000F000F000FLL;
        v27.i64[1] = 0xF000F000F000FLL;
        do
        {
          if (v6)
          {
            v28 = 0;
            v29 = (v13 + 2 * v69);
            v30 = v68;
            do
            {
              if (v20)
              {
                v31 = 0;
                v32 = 0uLL;
                v25 = 0uLL;
                v33 = 0uLL;
                do
                {
                  v75 = vld4q_s16(v29);
                  v29 += 32;
                  v34 = vsubq_s16(v75.val[3], vshrq_n_s16(v75.val[0], 3uLL));
                  v32 = vaddq_s16(v75.val[3], v32);
                  v25 = vaddq_s16(v34, v25);
                  v33 = vsubq_s16(v33, vcgtq_u16(v66, vmaxq_u16(vaddq_s16(v34, v27), vaddq_s16(v75.val[3], v27))));
                  v31 += 8;
                }

                while (v31 < v20);
              }

              else
              {
                v33 = 0uLL;
                v25 = 0uLL;
                v32 = 0uLL;
              }

              v35 = vpaddq_s16(vpaddq_s16(v32, v25), v33);
              v36 = *(v30 + 4);
              *v30 += v35.u16[3] + v35.u16[2];
              *(v30 + 4) = v35.u16[0] + v35.u16[1] + v36;
              v24 = vpaddq_s16(v35, v35).u64[0];
              *(v30 + 8) += WORD2(v24) + HIWORD(v24);
              v30 += 12;
              ++v28;
            }

            while (v28 != v6);
          }

          if (v11 > 8)
          {
            sub_1000823C4();
          }

          v37 = 1 << v11;
          v38 = v13 + v70;
          v39 = v14 - 1;
          if (v14)
          {
            v38 = v13 + 2 * v12;
          }

          else
          {
            v39 = 0;
          }

          if ((v37 & 0xFA) != 0)
          {
            v14 = v39;
          }

          else
          {
            v38 = v13 + 2 * v12;
          }

          if (v6)
          {
            v40 = 0;
            v41 = (v38 + 2 * v69);
            v42 = v67;
            do
            {
              if (v20)
              {
                v43 = 0;
                v44 = 0uLL;
                v25 = 0uLL;
                v45 = 0uLL;
                do
                {
                  v76 = vld4q_s16(v41);
                  v41 += 32;
                  v46 = vsraq_n_s16(v76.val[3], v76.val[0], 3uLL);
                  v45 = vaddq_s16(v76.val[3], v45);
                  v25 = vaddq_s16(v46, v25);
                  v44 = vsubq_s16(v44, vcgtq_u16(v66, vmaxq_u16(vaddq_s16(v46, v27), vaddq_s16(v76.val[3], v27))));
                  v43 += 8;
                }

                while (v43 < v20);
              }

              else
              {
                v45 = 0uLL;
                v25 = 0uLL;
                v44 = 0uLL;
              }

              v47 = vpaddq_s16(vpaddq_s16(v45, v25), v44);
              v48 = *(v42 + 4);
              *v42 += v47.u16[3] + v47.u16[2];
              *(v42 + 4) = v47.u16[0] + v47.u16[1] + v48;
              v24 = vpaddq_s16(v47, v47).u64[0];
              *(v42 + 8) += WORD2(v24) + HIWORD(v24);
              v42 += 12;
              ++v40;
            }

            while (v40 != v6);
          }

          if ((v37 & 0xFA) != 0)
          {
            v49 = v38 + v70;
            v50 = v38 + 2 * v12;
            v51 = v14 - 1;
            if (v14)
            {
              v13 = v50;
            }

            else
            {
              v51 = 0;
              v13 = v49;
            }

            v14 = v51;
          }

          else
          {
            v13 = v38 + 2 * v12;
          }

          ++v26;
        }

        while (v26 != v21);
      }

      if (v6)
      {
        v52 = 0;
        do
        {
          v53 = &v23[v52];
          LOWORD(v24) = v23[v52 + 1692];
          *&v24 = (v24 / v22) * 100.0;
          v25.i16[0] = v23[v52 + 1764];
          v55 = ((v25.u32[0] / v22) * 100.0) > 90.0 && *&v24 > 90.0;
          *(v18 + 6) = v55 << 31 >> 31;
          v56 = v53[1690];
          v57 = 0.0;
          v58 = 0.0;
          if (v56)
          {
            v58 = ((v53[1691] / v56) + -1.0) * 10000.0;
          }

          v59 = v53[1762];
          v60 = v59;
          if (v59)
          {
            v57 = ((v23[v52 + 1763] / v60) + -1.0) * 10000.0;
          }

          v61 = sqrtf((v57 * v57) + (v58 * v58));
          *&v24 = atan2f(v58, v57);
          *(v18 + 2) = v61;
          *(v18 + 4) = ((*&v24 * 180.0) / 3.14159265 + 0.5);
          *&v24 = (v60 + v56) / ((v72 + v72) * v65);
          *v18 = *&v24;
          v18 += 8;
          v52 += 3;
        }

        while (3 * v6 != v52);
      }

      v18 += 8 * (24 - v6);
      ++v74;
      v21 = v72;
    }

    while (v74 != v73);
    v17 = v73;
    LOBYTE(v7) = v63;
    v3 = v64;
    LOBYTE(v8) = v62;
    if (v73 > 0x10)
    {
      sub_100082474();
    }
  }

  if (v6 >= 0x19)
  {
    sub_1000824A0();
  }

  *(v3 + 6745) = v17;
  *(v3 + 6744) = v6;
  *(v3 + 6747) = v72;
  *(v3 + 6746) = v65;
  *(v3 + 6749) = v8;
  *(v3 + 6748) = v7;
}

void sub_100051374(BOOL *a1, BOOL *a2, _BYTE *a3, float a4, float a5)
{
  v9 = tanhf((a4 + -1000.0) * 0.01);
  *a3 = ((((v9 + 1.0) * 0.5) * 255.0) + 0.5);
  *a1 = v9 > 0.0;
  v10 = v9 > 0.0 && fminf(fabsf(a5 + 11.46), fabsf(a5 + -100.23)) <= 43.0;
  *a2 = v10;
}

void sub_100051440(uint64_t a1)
{
  v2 = (a1 + 4096);
  bzero((a1 + 116), 0x19A8uLL);
  v54 = 0;
  v53 = 0;
  v48 = v2[2649];
  if (v2[2649])
  {
    v4 = 0;
    v47 = v2[2648];
    v5 = v2[2652];
    v6 = (v2 + 2580);
    v7 = a1 + 2804;
    v8 = a1 + 6644;
    v9 = 8 * v5 + 192 * v2[2653];
    v10 = v9 + 7342;
    v11 = v5 + 24 * v2[2653];
    v12 = v9 + 7336;
    do
    {
      v51 = v10;
      v52 = v4;
      v49 = v12;
      v50 = v11;
      v13 = v47;
      if (v47)
      {
        do
        {
          v3.i16[0] = *(a1 + v12 + 2);
          v14 = v3.u32[0];
          v15 = *(a1 + v12 + 4);
          v16 = *(a1 + v10);
          sub_100051374(&v55, &v54, &v53, v3.u32[0], v15);
          v17 = v16 != 0;
          v18 = v54;
          v19 = v53;
          v20 = v17 & v54;
          if (!v20)
          {
            v19 = 0;
          }

          v21 = ((v14 / 250.0) + 0.5);
          v22 = (((v15 + 180.0) / 15.0) + 0.5);
          if (v21 >= 0x1F)
          {
            v21 = 31;
          }

          if (v22 >= 0x17)
          {
            v22 = 23;
          }

          if (v16)
          {
            v23 = -1;
          }

          else
          {
            v23 = 0;
          }

          v24 = (a1 + v11);
          v24[116] = v23;
          v24[1652] = v19;
          v24[500] = (fminf(v14 / 8000.0, 1.0) * 255.0);
          *(a1 + 2 * v11 + 2036) = *(a1 + v12);
          v25.i32[0] = v18;
          v25.i32[1] = v18 ^ 1;
          v26 = vand_s8(vdup_n_s32(v17), v25);
          v27.i16[0] = 1;
          v27.i16[1] = v16 == 0;
          v27.i16[2] = v26.i16[0];
          v27.i16[3] = v26.i16[2];
          v3 = vadd_s16(*v6, v27);
          *v6 = v3;
          v28 = (v22 << 6) | (2 * v21);
          v29 = *(v7 + v28);
          if (v16)
          {
            ++v29;
          }

          *(v7 + v28) = v29;
          if (v20 == 1)
          {
            v30 = v14 / 1000.0;
            v31 = vcvtms_u32_f32(v14 / 1000.0);
            v32 = vcvtps_u32_f32(v14 / 1000.0);
            v33 = 7;
            if (v31 >= 7)
            {
              v34 = 7;
            }

            else
            {
              v34 = v31;
            }

            if (v31 == v32)
            {
              *v3.i32 = *(v8 + 4 * v34) + 1.0;
            }

            else
            {
              if (v32 < 7)
              {
                v33 = v32;
              }

              *(v8 + 4 * v33) = (v30 - v31) + *(v8 + 4 * v33);
              *v3.i32 = (v32 - v30) + *(v8 + 4 * v34);
            }

            *(v8 + 4 * v34) = v3.i32[0];
          }

          ++v11;
          v12 += 8;
          v10 += 8;
          --v13;
        }

        while (v13);
      }

      v4 = v52 + 1;
      v10 = v51 + 192;
      v11 = v50 + 24;
      v12 = v49 + 192;
    }

    while (v52 + 1 != v48);
  }

  v35 = 0;
  v36 = 0;
  v37 = a1 + 2804;
  v38 = a1 + 4340;
  do
  {
    v39 = 0;
    v40 = v35;
    do
    {
      v41 = *(v37 + 2 * v39);
      sub_100051374(&v55, &v54, &v53, (v39 * 250.0) + 0.0, (v36 * 15.0) + -180.0);
      if (v41)
      {
        v42 = 3 * (v39 + 32 * v36);
        *(v38 + v40) = 0;
        v43 = 8 * v41;
        if ((8 * v41) >= 0xFF)
        {
          v43 = -1;
        }
      }

      else
      {
        v43 = 0;
        v44 = v54;
        if (((v39 * 250.0) + 0.0) > 2500.0)
        {
          v45 = -1;
        }

        else
        {
          v45 = 127;
        }

        if (!v54)
        {
          v45 = 0;
        }

        v46 = (v38 + v40);
        *v46 = v45;
        v46[1] = v44 - 1;
        v42 = v40;
      }

      *(v42 + v38 + 2) = v43;
      ++v39;
      v40 += 3;
    }

    while (v39 != 32);
    ++v36;
    v37 += 64;
    v35 += 96;
  }

  while (v36 != 24);
}

void sub_1000517E0(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    sub_100082550();
  }

  if (!a2)
  {
    sub_100082524();
  }

  v4 = *a1;
  if (*a1 == 1)
  {
    if ((*(a1 + 113) & 1) != 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 16);
      v6 = *(a1 + 84);
      v7 = *(a1 + 88);
      v8 = *(a1 + 76);
      v9 = *(a1 + 80);
      v10 = *(a1 + 108);
      v11 = *(a1 + 6752);
      v15 = 67110656;
      v16 = v5;
      v17 = 1024;
      v18 = v6;
      v19 = 1024;
      v20 = v7;
      v21 = 1024;
      v22 = v8;
      v23 = 1024;
      v24 = v9;
      v25 = 1024;
      v26 = v10;
      v27 = 1024;
      v28 = v11;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "CFLD:FLD #%07d  FLD::Process() ROI xywh:(%d %d)(%d %d) AfeDmaSize=%d tuning=%d\n", &v15, 0x2Cu);
    }

    if ((*(a1 + 6752) & 0xF0) != 0)
    {
      *(a1 + 12) = 1;
      if ((*(a1 + 113) & 1) == 0 || !os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      LOWORD(v15) = 0;
      v12 = "CFLD:FLD: Neon Mode\n";
    }

    else
    {
      *(a1 + 12) = 0;
      if ((*(a1 + 113) & 1) == 0 || !os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      LOWORD(v15) = 0;
      v12 = "CFLD:FLD: Scalar Mode\n";
    }

    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v12, &v15, 2u);
LABEL_19:
    v13 = *(a1 + 12);
    if (v13 >= 2)
    {
      sub_1000824F8();
    }

    if (sub_1000505B4(*(a1 + 72), (a1 + 24), a2, &v15))
    {
      v14 = *(a1 + 6752) & 0xF;
      if (v13)
      {
        sub_100050D94(a1, &v15, v14);
      }

      else
      {
        sub_100050828(a1, &v15, v14);
      }

      sub_100051440(a1);
    }

    return;
  }

  if ((*(a1 + 113) & 1) != 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 67109376;
    v16 = 1;
    v17 = 1024;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "CFLD:incompatible context version (expected %d, got %d)\n", &v15, 0xEu);
  }

  *(a1 + 8) = 1;
}

void sub_100051A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 20);
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0uLL;
  v11 = 0;
  sub_100016114(&v9, 3, v6);
  v9 = &off_1000A1DE0;
  sub_100016114(&v8, 3, v6);
  v8 = &off_1000A1DE0;
  sub_1000521F4(&v7, a5, 0, -1);
}

void sub_10005215C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  sub_100025998(&a41);
  sub_100016068(&a45);
  sub_100016068(&a49);
  _Unwind_Resume(a1);
}

void sub_1000521F4(uint64_t a1, uint64_t a2, int a3, int a4)
{
  *a1 = off_1000A2450;
  v4 = *(a2 + 20);
  v5 = *(a2 + 16) - a3;
  if (a4 != -1)
  {
    v5 = a4;
  }

  v6 = *(a2 + 8) + 4 * (v4 * a3);
  v7 = off_1000A2450;
  v8 = v6;
  v9 = v5;
  v10 = v4;
  v11 = 0;
  *(a1 + 16) = v5;
  *(a1 + 20) = v4;
  operator new[]();
}

char *sub_1000522E0(char *a1, uint64_t a2)
{
  *(a1 + 7) = 0;
  v3 = (a1 + 56);
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *a1 = a2;
  *(a1 + 6) = 0;
  *(a1 + 4) = 0;
  *(a1 + 5) = 0;
  a1[48] = 0;
  pthread_mutex_init(a1 + 1, 0);
  pthread_attr_init(&v5);
  pthread_attr_setdetachstate(&v5, 1);
  pthread_create(v3, &v5, sub_10005239C, a1);
  pthread_attr_destroy(&v5);
  return a1;
}

uint64_t sub_10005239C(uint64_t a1)
{
  pthread_setname_np("H16ISPMotionManagerInitializationThread");
  v2 = objc_alloc_init(CMMotionManager);
  if (v2)
  {
    v3 = v2;
    if (objc_opt_respondsToSelector())
    {
      rep = std::chrono::steady_clock::now().__d_.__rep_;
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_100052544;
      v7[3] = &unk_1000A2C30;
      v7[4] = a1;
      [v3 setSidebandTimeSyncHandler:v7];
      v5.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ - rep;
      if (v5.__d_.__rep_ >= 501000000)
      {
        printf("H16ISPMotionManager: setSidebandTimeSyncHandler delayed, execution time %llu ms\n", v5.__d_.__rep_ / 0xF4240);
      }
    }

    else
    {
      puts("H16ISPMotionManager::EnableMotionDataFeedToISPCPU - CMMotionManager doesn't support setSidebandTimeSyncHandler");
    }

    pthread_mutex_lock((a1 + 64));
    *(a1 + 8) = v3;
    pthread_mutex_unlock((a1 + 64));
  }

  return 0;
}

uint64_t sub_1000524C4(uint64_t a1)
{
  v4 = 0;
  v2 = *(a1 + 56);
  if (v2)
  {
    pthread_join(v2, &v4);
  }

  if (*(a1 + 8))
  {
    if (objc_opt_respondsToSelector())
    {
      [*(a1 + 8) setSidebandTimeSyncHandler:0];
    }

    *(a1 + 8) = 0;
  }

  pthread_mutex_destroy((a1 + 64));
  return a1;
}

uint64_t sub_100052544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  mach_timebase_info(&info);
  v6 = *(a1 + 32);
  *(v6 + 32) = a3;
  *(v6 + 40) = a2;
  *(v6 + 48) = 1;
  if (*(v6 + 24) || (result = sub_1000547B8(*v6, (v6 + 24), (v6 + 16)), v6 = *(a1 + 32), *(v6 + 24)))
  {
    result = sub_10005D0F4(*v6, outputStruct);
    if (!result)
    {
      return sub_1000556C0(**(a1 + 32), a3, (outputStruct[1] + -1.0 / *(*(a1 + 32) + 16) * (outputStruct[0] - a2)));
    }
  }

  return result;
}

void sub_100052600()
{
  v3[0] = 0;
  v3[1] = v3;
  v3[2] = 0xE6002000000;
  v3[3] = sub_1000054B0;
  v3[4] = nullsub_10;
  v0 = fopen("/var/mobile/Library/ISP/Pearl/IsfIRHistory.bin", "rb");
  if (v0)
  {
    fread(&v4, 0xE38uLL, 1uLL, v0);
    fclose(v0);
  }

  else
  {
    v4 = 1;
    v5 = 1;
  }

  v1 = off_10041DCD0;
  if (off_10041DCD0 == &_os_log_default)
  {
    v1 = os_log_create("com.apple.isp", "general");
    off_10041DCD0 = v1;
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "updatePCECalibWithISF";
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "%s - ISF\n", buf, 0xCu);
  }

  kdebug_trace();
  sub_10004E410(&v2);
}

void sub_100052A08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100052A38(uint64_t a1)
{
  v2 = off_10041DCD0;
  if (off_10041DCD0 == &_os_log_default)
  {
    v2 = os_log_create("com.apple.isp", "general");
    off_10041DCD0 = v2;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "updatePCECalibWithISF_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s - Writing GMC ISF file\n", &v8, 0xCu);
  }

  v3 = *(*(a1 + 32) + 8);
  v4 = fopen("/var/mobile/Library/ISP/Pearl/IsfIRHistory.bin.bak", "wb");
  if (v4)
  {
    v5 = v4;
    fwrite((v3 + 40), 0xE38uLL, 1uLL, v4);
    fclose(v5);
    rename("/var/mobile/Library/ISP/Pearl/IsfIRHistory.bin.bak", "/var/mobile/Library/ISP/Pearl/IsfIRHistory.bin", v6);
  }

  v7 = off_10041DCD0;
  if (off_10041DCD0 == &_os_log_default)
  {
    v7 = os_log_create("com.apple.isp", "general");
    off_10041DCD0 = v7;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "updatePCECalibWithISF_block_invoke";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s - OK\n", &v8, 0xCu);
  }
}

double sub_100052BD8(int a1, uint64_t a2, double *a3, int a4, void *__src, char *__dst, uint64_t a7, int a8)
{
  memcpy(__dst, __src, 0x3400uLL);
  v27 = 0uLL;
  v28 = 0;
  sub_10001966C(a2, &v27);
  *(a7 + 32) = v27;
  *(a7 + 48) = v28;
  *(a7 + 56) = 0;
  v14 = off_10041DCD0;
  if (off_10041DCD0 == &_os_log_default)
  {
    v14 = os_log_create("com.apple.isp", "general");
    off_10041DCD0 = v14;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *a3;
    *buf = 136316162;
    v30 = "updatePCECalibWithGMCResults";
    v31 = 2048;
    v32 = v27;
    v33 = 2048;
    v34 = *(&v27 + 1);
    v35 = 2048;
    v36 = v28;
    v37 = 2048;
    v38 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s - GMC raw rotation angles, rotX: %.5lf, rotY: %.5lf, rotZ: %.5lf, spatial_coverage: %.3lf\n", buf, 0x34u);
  }

  v16 = off_10041DCD0;
  if (a3[47] >= 0.0 && (a4 & 1) != 0)
  {
    if (off_10041DCD0 == &_os_log_default)
    {
      v16 = os_log_create("com.apple.isp", "general");
      off_10041DCD0 = v16;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v30 = "updatePCECalibWithGMCResults";
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s - GMC controller succeeded and front camera supports auto-focus, running ISF...\n", buf, 0xCu);
    }

    mach_timebase_info(&info);
    v26 = mach_absolute_time();
    sub_100052600();
  }

  if (off_10041DCD0 == &_os_log_default)
  {
    v16 = os_log_create("com.apple.isp", "general");
    off_10041DCD0 = v16;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v30 = "updatePCECalibWithGMCResults";
    v31 = 1024;
    LODWORD(v32) = a4;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s - Front camera supports auto-focus: %d\n", buf, 0x12u);
  }

  v17 = *(a2 + 16);
  v18 = *(a2 + 32);
  v19 = *(a2 + 48);
  *(__dst + 1657) = *(a2 + 64);
  v20 = *a2;
  *(__dst + 13224) = v18;
  *(__dst + 13240) = v19;
  *(__dst + 13192) = v20;
  *(__dst + 13208) = v17;
  if ((a8 & 0xFFFFFFFE) == 0xA)
  {
    *(__dst + 1658) = *(a2 + 80);
    v21 = -*(a2 + 72);
  }

  else
  {
    *(__dst + 1658) = *(a2 + 72);
    v21 = *(a2 + 80);
  }

  *(__dst + 1659) = v21;
  *(__dst + 1660) = *(a2 + 88);
  v22 = *(a2 + 96) * *(__src + 1116);
  *(__dst + 1117) = v22;
  *(__dst + 1110) = v22;
  result = *(a7 + 64);
  *(__dst + 1112) = result;
  return result;
}

void sub_100052FD8(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_100053074(a1);
  sub_1000540B8();
}

uint64_t sub_100053074(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = *(result + 8);
  v4 = (*(v3 + 4304) + 16);
  v5 = 6;
  v6 = 6;
  do
  {
    if (*(v4 - 2))
    {
      v7 = *v4;
      if (*v4 == 1718186595)
      {
        v8 = v2;
      }

      else
      {
        v8 = v5;
      }

      if (v7 == 1718776695 || v7 == 1718775412)
      {
        v6 = v2;
      }

      else
      {
        v5 = v8;
      }
    }

    ++v2;
    v4 += 26;
  }

  while (v2 != 6);
  if (v6 != 6)
  {
    bzero(v10, 0x190uLL);
    v11 = 269;
    v12 = v6;
    result = sub_10000BE84(v3, v10, 0x190u, 0, 0xFFFFFFFF);
    if (!result)
    {
      *(v1 + 4) = v13 & 1;
    }
  }

  if (v5 != 6)
  {
    bzero(v10, 0x68uLL);
    v11 = 1565;
    v12 = v5;
    result = sub_10000BE84(*(v1 + 8), v10, 0x68u, 0, 0xFFFFFFFF);
    if (!result)
    {
      *v1 = v14;
    }
  }

  return result;
}

uint64_t sub_1000531C8(uint64_t a1)
{
  result = sub_100002970(*(a1 + 8));
  if (result)
  {
LABEL_5:
    if (!*a1)
    {

      return sub_100053074(a1);
    }
  }

  else
  {
    while (!*a1 && (*(a1 + 24) & 1) == 0)
    {
      usleep(0x7A120u);
      result = sub_100002970(*(a1 + 8));
      if (result)
      {
        goto LABEL_5;
      }
    }
  }

  return result;
}

uint64_t sub_100053248(uint64_t a1)
{
  *(a1 + 24) = 1;
  std::thread::join((a1 + 16));
  std::thread::~thread((a1 + 16));
  return a1;
}

void sub_10005329C(uint64_t a1)
{
  *(a1 + 8) = 0xBFF0000000000000;
  *(a1 + 16) = -1;
  *(a1 + 24) = 0xBFF0000000000000;
  *(a1 + 32) = -1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  *(a1 + 64) = 0;
  *(a1 + 68) = 4;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 72) = _Q0;
  *(a1 + 88) = _Q0;
  *(a1 + 104) = 0xBFF0000000000000;
  *(a1 + 120) = 0;
  *(a1 + 248) = 0;
  operator new();
}

dispatch_queue_t **sub_100053350(dispatch_queue_t **result)
{
  v1 = *result;
  if (*result)
  {
    dispatch_sync(*v1, &stru_1000A2C70);
    dispatch_release(*v1);
    *v1 = 0;
    operator delete();
  }

  return result;
}

uint64_t sub_1000533B4()
{
  v0 = __chkstk_darwin();
  v3 = v2;
  v4 = v1[6];
  if (v2 < 3 || *v4 == 5)
  {
    if (*(v4 + 17))
    {
      v5 = off_10041DCD0;
      if (off_10041DCD0 == &_os_log_default)
      {
        v5 = os_log_create("com.apple.isp", "general");
        off_10041DCD0 = v5;
      }

      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(v4 + 17);
        v31 = 136315394;
        v32 = "run";
        v33 = 1024;
        v34 = v6;
        v7 = "%s - Unexpected GMC type %d\n";
LABEL_8:
        v8 = v5;
        v9 = 18;
LABEL_21:
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v7, &v31, v9);
      }
    }

    else if (*(v0 + 244))
    {
      if (v2 == 6)
      {
        operator new[]();
      }

      if (v2 == 3)
      {
        v10 = *v1;
        v11 = (*v1 + 32);
        byte_10041DC90 = 0;
        v16 = *(v4 + 26);
        v17.i64[0] = v16;
        v17.i64[1] = SHIDWORD(v16);
        v18 = vcvtq_f64_s64(v17);
        v19 = *(v4 + 30);
        v17.i64[0] = v19;
        v17.i64[1] = HIDWORD(v19);
        v29 = v18;
        v30 = vcvtq_f64_u64(v17);
        if ((v4[24] & 1) == 0)
        {
          __asm { FMOV            V0.2D, #-1.0 }

          v30 = _Q0;
          v29 = _Q0;
        }

        mach_timebase_info(&info);
        v25 = mach_absolute_time();
        *(v4 + 19) = *(v4 + 10);
        v28 = v25;
        v26 = off_10041DCD0;
        if (off_10041DCD0 == &_os_log_default)
        {
          v26 = os_log_create("com.apple.isp", "general");
          off_10041DCD0 = v26;
        }

        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v31 = 136315138;
          v32 = "run";
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%s - Running GMC\n", &v31, 0xCu);
        }

        kdebug_trace();
        sub_10006C860(v11, *v10);
      }

      v5 = off_10041DCD0;
      if (off_10041DCD0 == &_os_log_default)
      {
        v5 = os_log_create("com.apple.isp", "general");
        off_10041DCD0 = v5;
      }

      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v31 = 136315394;
        v32 = "run";
        v33 = 1024;
        v34 = v3;
        v7 = "%s - Number of buffers is not 3 or 6 (%d)\n";
        goto LABEL_8;
      }
    }

    else
    {
      v14 = off_10041DCD0;
      if (off_10041DCD0 == &_os_log_default)
      {
        v14 = os_log_create("com.apple.isp", "general");
        off_10041DCD0 = v14;
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v31 = 136315138;
        v32 = "run";
        v7 = "%s - Couldn't understand which projector is on this device.\n";
        v8 = v14;
        v9 = 12;
        goto LABEL_21;
      }
    }
  }

  else
  {
    v12 = off_10041DCD0;
    if (off_10041DCD0 == &_os_log_default)
    {
      v12 = os_log_create("com.apple.isp", "general");
      off_10041DCD0 = v12;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *v4;
      v31 = 136315650;
      v32 = "run";
      v33 = 1024;
      v34 = 5;
      v35 = 1024;
      v36 = v13;
      v7 = "%s - expected GMC parameters buffer v%d, got v%d\n";
      v8 = v12;
      v9 = 24;
      goto LABEL_21;
    }
  }

  return 3;
}

uint64_t sub_100053DB4(uint64_t a1, unint64_t *a2, int a3, int a4, int a5, uint64_t a6, int a7, uint64_t a8, int a9, uint64_t a10, int a11, int a12)
{
  result = 0;
  if (a5 >= 1 && a3 >= 1)
  {
    v13 = 0;
    result = 0;
    v15 = a5;
    do
    {
      if (a4 >= 1)
      {
        v16 = 0;
        do
        {
          if (*(a10 + v16) >= a12)
          {
            v17 = *a2 & 0xFFFFFFFFF0000000 | v16 | ((v13 & 0xFFF) << 16);
            *a2 = v17;
            v18 = v17 & 0xFFFFFC000FFFFFFFLL | ((*(a6 + 2 * v16) & 0x3FFF) << 28);
            *a2 = v18;
            v19 = v18 & 0xFF0003FFFFFFFFFFLL | ((*(a8 + 2 * v16) & 0x3FFF) << 42);
            *a2 = v19;
            *a2++ = v19 & 0xFFFFFFFFFFFFFFLL | (*(a10 + v16) << 56);
            result = (result + 1);
            if (result >= a3)
            {
              break;
            }
          }

          ++v16;
        }

        while (a4 != v16);
      }

      if (++v13 >= v15)
      {
        break;
      }

      a10 += a11;
      a8 += 2 * (a9 / 2);
      a6 += 2 * (a7 / 2);
    }

    while (result < a3);
  }

  return result;
}

void sub_100053E98(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = off_10041DCD0;
  if (off_10041DCD0 == &_os_log_default)
  {
    v3 = os_log_create("com.apple.isp", "general");
    off_10041DCD0 = v3;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "postProcessProjectorGMC_block_invoke";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s - projector GMC reporting analytics\n", &v6, 0xCu);
  }

  sub_10002635C(a1 + 40, a1 + 13352, *(a1 + 13944), a1 + 13948, (v2 + 8));
  if (*(a1 + 27260) == 1 && *(a1 + 13728) >= 0.0)
  {
    v4 = off_10041DCD0;
    if (off_10041DCD0 == &_os_log_default)
    {
      v4 = os_log_create("com.apple.isp", "general");
      off_10041DCD0 = v4;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = "postProcessProjectorGMC_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s - Updating PCECalib on disk\n", &v6, 0xCu);
    }

    kdebug_trace();
    sub_10001CE48(a1 + 40);
  }

  v5 = off_10041DCD0;
  if (off_10041DCD0 == &_os_log_default)
  {
    v5 = os_log_create("com.apple.isp", "general");
    off_10041DCD0 = v5;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "postProcessProjectorGMC_block_invoke";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s - Projector-GMC post processing done\n", &v6, 0xCu);
  }
}

void sub_100054194(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100054280(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000541CC(std::__thread_struct **a1)
{
  v5 = a1;
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  (v5[1])(v5[2]);
  sub_100054238(&v5);
  return 0;
}

void sub_100054224(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100054238(va);
  _Unwind_Resume(a1);
}

std::__thread_struct ***sub_100054238(std::__thread_struct ***a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_100054280(v2);
    operator delete();
  }

  return a1;
}

std::__thread_struct **sub_100054280(std::__thread_struct **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::__thread_struct::~__thread_struct(v2);
    operator delete();
  }

  return a1;
}

uint64_t sub_1000542D4(uint64_t a1, _DWORD *a2)
{
  v2 = *(a1 + 4344);
  if (!v2)
  {
    return 3758097084;
  }

  output = 0;
  outputCnt = 1;
  result = IOConnectCallScalarMethod(v2, 0x24u, 0, 0, &output, &outputCnt);
  if (!result)
  {
    *a2 = output;
  }

  return result;
}

uint64_t sub_100054344(uint64_t a1, void *a2)
{
  v2 = 3758097085;
  err = 0;
  if (!a2 || *a2)
  {
    return 3758097090;
  }

  if (byte_10041DF76)
  {
    return 0;
  }

  v5 = CFURLCreateWithFileSystemPath(kCFAllocatorDefault, @"/usr/local/share/firmware/isp/ISPUnitInfo.plist", kCFURLPOSIXPathStyle, 0);
  if (v5)
  {
    v6 = v5;
    format = 0;
    v7 = CFReadStreamCreateWithFile(kCFAllocatorDefault, v5);
    if (v7)
    {
      v8 = v7;
      if (CFReadStreamOpen(v7))
      {
        if (off_10041DCD8 == &_os_log_default)
        {
          off_10041DCD8 = os_log_create("com.apple.isp", "device");
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v15 = "GetUnitInfoPropertyDict";
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s - Parsing ISPUnitInfo.plist\n", buf, 0xCu);
        }

        v9 = CFPropertyListCreateWithStream(kCFAllocatorDefault, v8, 0, 0, &format, &err);
        if (err)
        {
          if (off_10041DCD8 == &_os_log_default)
          {
            off_10041DCD8 = os_log_create("com.apple.isp", "device");
          }

          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_10008257C();
          }

          v10 = CFErrorCopyDescription(err);
          if (v10)
          {
            v11 = v10;
            CFShow(v10);
            CFRelease(v11);
          }
        }

        else
        {
          v2 = 0;
          *a2 = v9;
        }
      }

      else
      {
        v2 = 3758097136;
      }

      CFReadStreamClose(v8);
      CFRelease(v8);
    }

    CFRelease(v6);
  }

  return v2;
}

uint64_t sub_10005456C(uint64_t a1, unsigned int a2, void *outputStruct)
{
  v5 = 156;
  v3 = *(a1 + 4344);
  if (!v3)
  {
    return 3758097084;
  }

  input = a2;
  return IOConnectCallMethod(v3, 0xEu, &input, 1u, 0, 0, 0, 0, outputStruct, &v5);
}

uint64_t sub_100054600(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4, unsigned int *a5)
{
  v5 = 3758097090;
  if (*(a1 + 4))
  {
    if (*(a1 + 4668) > a2)
    {
      v6 = (*(a1 + 40) + 432 * a2);
      if (*v6)
      {
        v7 = v6[18];
        if (v7 > a4)
        {
          v8 = *a5;
          if (*a5 >= v7)
          {
            v8 = v7;
          }

          if (v8 + a4 <= v7)
          {
            v9 = v8;
          }

          else
          {
            v9 = v7 - a4;
          }

          if (v9)
          {
            operator new[]();
          }
        }
      }

      else
      {
        return 3758097088;
      }
    }
  }

  else
  {
    if (off_10041DCD8 == &_os_log_default)
    {
      off_10041DCD8 = os_log_create("com.apple.isp", "device");
    }

    v5 = 3758097112;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000825C0();
    }
  }

  return v5;
}

uint64_t sub_1000547B8(uint64_t a1, unsigned int *a2, double *a3)
{
  if (*(a1 + 4))
  {
    mach_timebase_info(&info);
    v6 = 0;
    v7 = *(a1 + 16);
    *a2 = v7;
    LODWORD(v8) = info.numer;
    *a3 = 1.0 / v7 * 1000000000.0 * ((info.denom | 0x41CDCD6500000000uLL) / v8);
  }

  else
  {
    if (off_10041DCD8 == &_os_log_default)
    {
      off_10041DCD8 = os_log_create("com.apple.isp", "device");
    }

    v6 = 3758097112;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100082644();
    }
  }

  return v6;
}

NSObject *sub_100054898(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v5 = *(a1 + 4344);
  if (!v5)
  {
    return 3758097084;
  }

  v7 = a2;
  v8 = a3;
  input[0] = a2;
  input[1] = a3;
  input[2] = a4;
  result = IOConnectCallScalarMethod(v5, 0x15u, input, 3u, 0, 0);
  if (result)
  {
    return result;
  }

  if (*(a1 + 16 * v7 + 4432) == 1)
  {
    result = *(*(a1 + 72) + 72);
    if (!result)
    {
      return result;
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = sub_100059F48;
    block[3] = &unk_1000AC498;
    v11 = a2;
    block[4] = a1;
    block[5] = v8;
    dispatch_async(result, block);
  }

  return 0;
}

uint64_t sub_1000549B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6)
{
  if (*a6)
  {
    operator new[]();
  }

  return 3758097090;
}

uint64_t sub_100054AA0()
{
  v0 = __chkstk_darwin();
  if (off_10041DCD8 == &_os_log_default)
  {
    off_10041DCD8 = os_log_create("com.apple.isp", "device");
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "CacheDeviceConfigs";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s - caching device configurations\n", buf, 0xCu);
  }

  if (*(v0 + 4668))
  {
    bzero(buf, 0x1CuLL);
    *&buf[4] = 3;
    v1 = sub_10000BE84(v0, buf, 0x1Cu, 0, 0xFFFFFFFF);
    if (v1)
    {
      if (off_10041DCD8 == &_os_log_default)
      {
        off_10041DCD8 = os_log_create("com.apple.isp", "device");
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_1000826C8();
      }

LABEL_61:
      if (off_10041DCD8 == &_os_log_default)
      {
        off_10041DCD8 = os_log_create("com.apple.isp", "device");
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_1000827D8();
      }

      sub_1000558B0(v0);
      return v1;
    }

    *(v0 + 8) = *buf;
    *(v0 + 20) = *&buf[12];
    if (off_10041DCD8 == &_os_log_default)
    {
      off_10041DCD8 = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      *v13 = 136315650;
      v14 = "CacheDeviceConfigs";
      v15 = 1024;
      v16 = *&buf[12];
      v17 = 1024;
      v18 = *&buf[8];
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s - maxChannels=%d, timeStampFrequency=%d\n", v13, 0x18u);
    }

    if (!*(v0 + 48))
    {
      operator new[]();
    }

    if (!*(v0 + 40))
    {
      operator new[]();
    }

    LODWORD(v2) = *(v0 + 4668);
    if (v2)
    {
      v3 = 0;
      do
      {
        bzero(buf, 0x190uLL);
        *&buf[4] = 269;
        *&buf[8] = v3;
        v1 = sub_10000BE84(v0, buf, 0x190u, 0, 0xFFFFFFFF);
        if (v1)
        {
          if (off_10041DCD8 == &_os_log_default)
          {
            off_10041DCD8 = os_log_create("com.apple.isp", "device");
          }

          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_10008274C();
          }

          goto LABEL_61;
        }

        *(*(v0 + 40) + 432 * v3) = v21;
        if (off_10041DCD8 == &_os_log_default)
        {
          off_10041DCD8 = os_log_create("com.apple.isp", "device");
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *v13 = 136315650;
          v14 = "CacheDeviceConfigs";
          v15 = 1024;
          v16 = v21;
          v17 = 1024;
          v18 = v3;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s - %d configurations detected for channel %d\n", v13, 0x18u);
        }

        memmove((*(v0 + 40) + 432 * v3 + 32), buf, 0x190uLL);
        v4 = *(v0 + 40) + 432 * v3;
        if (!*v4)
        {
LABEL_40:
          v1 = 0;
          goto LABEL_48;
        }

        if (!*(v4 + 8) && !*(v4 + 24))
        {
          operator new[]();
        }

        v5 = 0;
        v6 = 0;
        v7 = 0;
        v8 = 0;
        while (1)
        {
          bzero(buf, 0x120uLL);
          *&buf[4] = 262;
          *&buf[8] = v3;
          *&buf[12] = v8;
          v1 = sub_10000BE84(v0, buf, 0x120u, 0, 0xFFFFFFFF);
          if (v1)
          {
            break;
          }

          if ((v20 & 0x80) != 0)
          {
            v20 = (v20 & 0xFFFFFF00) + 256;
          }

          memmove((*(*(v0 + 40) + 432 * v3 + 8) + v7), &buf[16], 0xD4uLL);
          memmove((*(*(v0 + 40) + 432 * v3 + 16) + v6), &v22, 0x3CuLL);
          v1 = sub_10005E7A0(v0, v3, v8, (*(*(v0 + 40) + 432 * v3 + 24) + v5));
          if (v1)
          {
            if (off_10041DCD8 == &_os_log_default)
            {
              off_10041DCD8 = os_log_create("com.apple.isp", "device");
            }

            if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_48;
            }

            *v13 = 136315650;
            v14 = "CacheDeviceConfigs";
            v15 = 1024;
            v16 = v3;
            v17 = 1024;
            v18 = v1;
            v9 = "%s - Error getting LSC polynomial - chan: %d, res: 0x%08X\n";
LABEL_53:
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, v9, v13, 0x18u);
            goto LABEL_48;
          }

          ++v8;
          v7 += 212;
          v6 += 60;
          v5 += 72;
          if (v8 >= *(*(v0 + 40) + 432 * v3))
          {
            goto LABEL_40;
          }
        }

        if (off_10041DCD8 == &_os_log_default)
        {
          off_10041DCD8 = os_log_create("com.apple.isp", "device");
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *v13 = 136315650;
          v14 = "CacheDeviceConfigs";
          v15 = 1024;
          v16 = v3;
          v17 = 1024;
          v18 = v1;
          v9 = "%s - Error getting camera config - chan: %d, res: 0x%08X\n";
          goto LABEL_53;
        }

LABEL_48:
        v10 = *(v0 + 48);
        if (v10)
        {
          sub_10005456C(v0, v3, (v10 + 156 * v3));
        }

        ++v3;
        v2 = *(v0 + 4668);
      }

      while (v3 < v2);
      if (!v1)
      {
        goto LABEL_67;
      }

      goto LABEL_61;
    }

LABEL_67:
    *v0 = v2;
    *(v0 + 4) = 1;
    if (off_10041DCD8 == &_os_log_default)
    {
      off_10041DCD8 = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      v12 = *(v0 + 4668);
      *v13 = 136315394;
      v14 = "CacheDeviceConfigs";
      v15 = 1024;
      v16 = v12;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s - Success: cached configs - numChannels: %d\n", v13, 0x12u);
    }

    return 0;
  }

  else
  {
    if (off_10041DCD8 == &_os_log_default)
    {
      off_10041DCD8 = os_log_create("com.apple.isp", "device");
    }

    v1 = 3758097112;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10008285C();
    }
  }

  return v1;
}

uint64_t sub_10005530C(uint64_t a1, int a2, int a3, int a4, unsigned int a5)
{
  bzero(v15, 0x14uLL);
  v16 = 290;
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v10 = sub_10000BE84(a1, v15, 0x14u, 0, a5);
  v11 = v10;
  if (a3 == 6914 && !v10)
  {
    if (*(a1 + 4668))
    {
      v12 = 0;
      while (1)
      {
        v13 = sub_10005542C(a1, v12);
        if (v13)
        {
          break;
        }

        if (++v12 >= *(a1 + 4668))
        {
          return 0;
        }
      }

      v11 = v13;
      if (off_10041DCD8 == &_os_log_default)
      {
        off_10041DCD8 = os_log_create("com.apple.isp", "device");
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_1000828E0();
      }
    }

    else
    {
      return 0;
    }
  }

  return v11;
}

uint64_t sub_10005542C(uint64_t a1, unsigned int a2)
{
  bzero(__src, 0x190uLL);
  v7 = 269;
  v8 = a2;
  v4 = sub_10000BE84(a1, __src, 0x190u, 0, 0xFFFFFFFF);
  if (!v4)
  {
    memmove((*(a1 + 40) + 432 * a2 + 32), __src, 0x190uLL);
  }

  return v4;
}

uint64_t sub_1000554E4(uint64_t a1, int a2, const char **a3)
{
  if (a2 != 6)
  {
    return 3758097090;
  }

  bzero(v13, 0x40uLL);
  v14 = 5;
  strncpy(v16, a3[1], 0x20uLL);
  v5 = sub_10000BE84(a1, v13, 0x40u, 1u, 0xFFFFFFFF);
  if (v5)
  {
    v6 = v5;
    if (off_10041DCD8 == &_os_log_default)
    {
      off_10041DCD8 = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100082968();
    }
  }

  else
  {
    v7 = v21;
    v8 = strtoul(a3[2], 0, 0);
    v9 = strtoul(a3[3], 0, 0);
    v10 = strtoul(a3[4], 0, 0);
    v11 = strtoul(a3[5], 0, 0);
    printf("Special function: name: %s, parameters %llu %llu %llu %llu\n", v16, v8, v9, v10, v11);
    bzero(v13, 0x38uLL);
    v14 = 28;
    v15 = 1;
    v17 = v7;
    v18 = v8;
    v19 = v9;
    v20 = v10;
    v21 = v11;
    return sub_10000BE84(a1, v13, 0x38u, 1u, 0xFFFFFFFF);
  }

  return v6;
}

uint64_t sub_1000556C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  bzero(v7, 0x18uLL);
  v8 = 12;
  v9 = a2;
  v10 = a3;
  return sub_10000BE84(a1, v7, 0x18u, 0, 0xFFFFFFFF);
}

uint64_t sub_100055728(uint64_t a1, const void *a2, unsigned int a3)
{
  bzero(v7, 0xE8uLL);
  v8 = 1971;
  memcpy(&v10, a2, 20 * a3);
  v9 = a3;
  return sub_10000BE84(a1, v7, 0xE8u, 0, 0xFFFFFFFF);
}

uint64_t sub_1000557B0(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 4668);
  result = 3758097090;
  if (v6 > a2 && a3 <= 0x40)
  {
    bzero(v13, 0xD0uLL);
    v14 = 1285;
    v15 = a2;
    v16 = a3;
    if (a3)
    {
      v12 = 0;
      do
      {
        v17[v12] = *(a4 + 2 * v12);
        *(&v17[64] + v12) = *(a5 + v12);
        ++v12;
      }

      while (a3 != v12);
    }

    return sub_10000BE84(a1, v13, 0xD0u, 0, 0xFFFFFFFF);
  }

  return result;
}

uint64_t sub_1000558B0(uint64_t a1)
{
  if (off_10041DCD8 == &_os_log_default)
  {
    off_10041DCD8 = os_log_create("com.apple.isp", "device");
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "InitDeviceConfigsCache";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s - Initializing device configuration cache\n", &v7, 0xCu);
  }

  if (*(a1 + 4))
  {
    *(a1 + 4) = 0;
    *a1 = 0;
    v2 = (a1 + 40);
    if (*(a1 + 40))
    {
      if (!*(a1 + 4668))
      {
        goto LABEL_17;
      }

      v3 = 0;
      v4 = 0;
      do
      {
        v5 = *v2;
        if (*(*v2 + v3 + 8))
        {
          operator delete[]();
        }

        if (*(v5 + v3 + 16))
        {
          operator delete[]();
        }

        if (*(v5 + v3 + 24))
        {
          operator delete[]();
        }

        *(v5 + v3) = 0;
        bzero((v5 + v3 + 32), 0x190uLL);
        ++v4;
        v3 += 432;
      }

      while (v4 < *(a1 + 4668));
      if (*v2)
      {
LABEL_17:
        operator delete[]();
      }

      if (*(a1 + 48))
      {
        operator delete[]();
      }

      *v2 = 0;
      *(a1 + 48) = 0;
    }
  }

  else
  {
    if (off_10041DCD8 == &_os_log_default)
    {
      off_10041DCD8 = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      v7 = 136315138;
      v8 = "InitDeviceConfigsCache";
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s - cache is already invalid - exiting\n", &v7, 0xCu);
    }
  }

  return 0;
}

uint64_t sub_100055B44(unsigned int *a1)
{
  *outputStructCnt = 24;
  v2 = a1[1086];
  if (v2)
  {
    v3 = IOConnectCallStructMethod(v2, 0xFu, 0, 0, outputStruct, outputStructCnt);
    if (!v3)
    {
      v4 = v32;
      v5 = v33;
      if (off_10041DCD8 == &_os_log_default)
      {
        off_10041DCD8 = os_log_create("com.apple.isp", "device");
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        v6 = "n't";
        if (v33)
        {
          v7 = "";
        }

        else
        {
          v7 = "n't";
        }

        if (v32)
        {
          v6 = "";
        }

        *outputStructCnt = 136315394;
        *&outputStructCnt[4] = v7;
        *&outputStructCnt[12] = 2080;
        *&outputStructCnt[14] = v6;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "This is%s an internal build, and FDR was%s validated\n", outputStructCnt, 0x16u);
      }

      v8 = 0;
      v9 = 0;
      v3 = 0;
      v27 = 0;
      v28 = v4 | v5;
      v10 = 282;
      v11 = sub_100022520();
      while (1)
      {
        v12 = *(a1 + 538) + v8;
        if (*(v12 + 8))
        {
          v13 = *(v12 + 16);
          if (v13 == 1785950322 || v13 == 1718186595)
          {
            break;
          }
        }

LABEL_45:
        ++v9;
        v8 += 104;
        v10 += 432;
        if (v9 == 6)
        {
          return v3;
        }
      }

      v15 = *(a1 + 4) == 1 && v9 < *a1 && *(*(a1 + 5) + v10) != 0;
      if (v13 == 1718186595 && v15)
      {
        v15 = v11;
      }

      if (!v15)
      {
        v17 = *(a1 + 15);
        if (!v17 || (v13 == 1718186595 ? (v18 = 5) : (v18 = 6), (*outputStructCnt = v18, sub_10002C1FC(v17, outputStructCnt)) || outputStructCnt[8] != 1 || (v19 = time(0), v20 = mach_continuous_time(), *&outputStructCnt[16] <= v19)))
        {
          v16 = 0;
          goto LABEL_36;
        }

        v21 = difftime(*&outputStructCnt[16], v19);
        mach_timebase_info(&info);
        LODWORD(v23) = info.numer;
        LODWORD(v22) = info.denom;
        v27 = v20 + (v21 * 1000000000.0 * v22 / v23);
      }

      v16 = 1;
LABEL_36:
      if (((v13 == 1718186595) & v16) != 0)
      {
        v16 = v28;
      }

      if (v16)
      {
        a1[1166] |= 1 << v9;
        bzero(&info, 0xCuLL);
        LOWORD(info.denom) = 1568;
        v30 = v9;
        v3 = sub_10000BE84(a1, &info, 0xCu, 0, 0xFFFFFFFF);
        if (v13 == 1718186595)
        {
          v24 = a1[1086];
          if (v24)
          {
            *outputStructCnt = 1;
            *&outputStructCnt[8] = v27;
            *&outputStructCnt[16] = v11;
            IOConnectCallScalarMethod(v24, 0x33u, outputStructCnt, 3u, 0, 0);
          }
        }
      }

      else if (v13 == 1718186595)
      {
        v25 = a1[1086];
        if (v25)
        {
          *outputStructCnt = 0;
          *&outputStructCnt[8] = 0;
          *&outputStructCnt[16] = v11;
          IOConnectCallScalarMethod(v25, 0x33u, outputStructCnt, 3u, 0, 0);
        }
      }

      goto LABEL_45;
    }
  }

  else
  {
    v3 = 3758097084;
  }

  if (off_10041DCD8 == &_os_log_default)
  {
    off_10041DCD8 = os_log_create("com.apple.isp", "device");
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000829F4();
  }

  return v3;
}

uint64_t sub_100055F24(uint64_t a1, void *outputStruct)
{
  outputStructCnt = 24;
  v2 = *(a1 + 4344);
  if (v2)
  {
    return IOConnectCallStructMethod(v2, 0xFu, 0, 0, outputStruct, &outputStructCnt);
  }

  else
  {
    return 3758097084;
  }
}

void sub_100055F74(uint64_t a1, uint64_t a2, int a3)
{
  *(a1 + 4) = 0;
  *a1 = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 72) = a2;
  *(a1 + 144) = 0;
  *(a1 + 4244) = 0u;
  *(a1 + 4260) = 0u;
  *(a1 + 4288) = 0;
  *(a1 + 4292) = 0;
  *(a1 + 4328) = 0;
  *(a1 + 4340) = 0;
  *(a1 + 4416) = 0;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 4716) = 0;
  *(a1 + 4668) = 0u;
  *(a1 + 4684) = 0u;
  *(a1 + 4700) = 0u;
  *(a1 + 4336) = a3;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v4 = &byte_10041DF41;
  byte_10041DF6C = sub_10002ECA4(@"LsInterpMode", @"com.apple.coremedia", 1);
  dword_10041DF70 = sub_10002ECA4(@"LsBypassVerify", @"com.apple.coremedia", 0);
  byte_10041DF74 = sub_10002ECA4(@"LsEnableGreenAvg", @"com.apple.coremedia", 0) != 0;
  byte_10041DF75 = sub_10002ECA4(@"RadialGainEnable", @"com.apple.coremedia", 1) != 0;
  byte_10041DF76 = sub_10002ECA4(@"IgnoreUnitInfoPlist", @"com.apple.coremedia", 0) != 0;
  dword_10041DF78 = sub_10002ECA4(@"UnitInfoNVMChannelMask", @"com.apple.coremedia", 0xFFFFFFFFLL);
  byte_10041DF7E = sub_10002ECA4(@"DisableDropDetection", @"com.apple.coremedia", 0) != 0;
  byte_10041DF7C = sub_10002ECA4(@"EnableExclaveDebug", @"com.apple.coremedia", 0) != 0;
  v5 = 0;
  byte_10041DF7D = sub_10002ECA4(@"RequireExclaveAD", @"com.apple.coremedia", 1) != 0;
  do
  {
    v6 = CFStringCreateWithFormat(0, 0, @"LsAdjustEnableCam%d", v5);
    *(v4 - 5) = sub_10002ECA4(v6, @"com.apple.coremedia", 0xFFFFFFFFLL);
    CFRelease(v6);
    v7 = CFStringCreateWithFormat(0, 0, @"LsAdjustInvertCam%d", v5);
    *(v4 - 1) = sub_10002ECA4(v7, @"com.apple.coremedia", 0) != 0;
    CFRelease(v7);
    v8 = CFStringCreateWithFormat(0, 0, @"LsIdealPctCam%d", v5);
    *v4 = sub_10002ECA4(v8, @"com.apple.coremedia", 0xFFFFFFFFLL);
    v4 += 8;
    CFRelease(v8);
    ++v5;
  }

  while (v5 != 6);
  *(a1 + 88) = 0;
  sub_1000651CC((a1 + 88));
}

uint64_t sub_10005641C(uint64_t refCon)
{
  if (!*(refCon + 4340))
  {
    return IOServiceAddInterestNotification(*(*(refCon + 72) + 16), *(refCon + 4336), "IOGeneralInterest", sub_10000A2E8, refCon, (refCon + 4340));
  }

  return refCon;
}

uint64_t sub_100056460(uint64_t a1)
{
  if (*(a1 + 4344))
  {
    sub_100056798(a1);
  }

  v2 = *(a1 + 4340);
  if (v2)
  {
    IOObjectRelease(v2);
    *(a1 + 4340) = 0;
  }

  v3 = *(a1 + 136);
  if (v3)
  {
    sub_10004E5F0(v3);
    operator delete();
  }

  v4 = *(a1 + 104);
  if (v4)
  {
    sub_100052540(v4);
    operator delete();
  }

  v5 = *(a1 + 112);
  if (v5)
  {
    sub_100017EFC(v5);
    operator delete();
  }

  if (*(a1 + 128))
  {
    operator delete();
  }

  sub_1000558B0(a1);
  v6 = 0;
  v7 = (a1 + 4432);
  v8 = (a1 + 4432);
  do
  {
    v9 = *v8;
    v8 += 16;
    if (v9 == 1)
    {
      v10 = *(*(a1 + 72) + 72);
      if (v10)
      {
        block[0] = _NSConcreteStackBlock;
        block[1] = 0x40000000;
        block[2] = sub_100056848;
        block[3] = &unk_1000AC358;
        block[4] = a1;
        v23 = v6;
        dispatch_sync(v10, block);
      }
    }

    if (v7[96] == 1)
    {
      v11 = *(*(a1 + 72) + 72);
      if (v11)
      {
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 0x40000000;
        v20[2] = sub_100056890;
        v20[3] = &unk_1000AC378;
        v20[4] = a1;
        v21 = v6;
        dispatch_sync(v11, v20);
      }
    }

    ++v6;
    v7 = v8;
  }

  while (v6 != 6);
  if (*(a1 + 4624))
  {
    v12 = *(*(a1 + 72) + 72);
    if (v12)
    {
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 0x40000000;
      v19[2] = sub_1000568D8;
      v19[3] = &unk_1000AC398;
      v19[4] = a1;
      dispatch_sync(v12, v19);
    }
  }

  if (*(a1 + 4640) == 1)
  {
    v13 = *(*(a1 + 72) + 72);
    if (v13)
    {
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 0x40000000;
      v18[2] = sub_100056908;
      v18[3] = &unk_1000AC3B8;
      v18[4] = a1;
      dispatch_sync(v13, v18);
    }
  }

  if (*(a1 + 4656) == 1)
  {
    v14 = *(*(a1 + 72) + 72);
    if (v14)
    {
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 0x40000000;
      v17[2] = sub_100056938;
      v17[3] = &unk_1000AC3D8;
      v17[4] = a1;
      dispatch_sync(v14, v17);
    }
  }

  v15 = *(a1 + 88);
  if (v15)
  {
    CFRelease(v15);
    *(a1 + 88) = 0;
  }

  pthread_mutex_destroy((a1 + 4352));
  return a1;
}

uint64_t sub_100056798(uint64_t a1)
{
  pthread_mutex_lock((a1 + 4352));
  v2 = IOConnectCallScalarMethod(*(a1 + 4344), 4u, 0, 0, 0, 0);
  v3 = *(a1 + 4344);
  if (v3)
  {
    IOServiceClose(v3);
    *(a1 + 4344) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
  }

  else
  {
    v2 = 3758097101;
  }

  pthread_mutex_unlock((a1 + 4352));
  return v2;
}

uint64_t sub_100056818(uint64_t a1)
{
  result = *(a1 + 4340);
  if (result)
  {
    result = IOObjectRelease(result);
    *(a1 + 4340) = 0;
  }

  return result;
}

uint64_t sub_100056848(uint64_t a1)
{
  v2 = *(a1 + 32) + 4424;
  result = notify_cancel(*(v2 + 16 * *(a1 + 40) + 12));
  *(v2 + 16 * *(a1 + 40) + 8) = 0;
  return result;
}

uint64_t sub_100056890(uint64_t a1)
{
  v2 = *(a1 + 32) + 4520;
  result = notify_cancel(*(v2 + 16 * *(a1 + 40) + 12));
  *(v2 + 16 * *(a1 + 40) + 8) = 0;
  return result;
}

uint64_t sub_1000568D8(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = notify_cancel(*(v1 + 4628));
  *(v1 + 4624) = 0;
  return result;
}

uint64_t sub_100056908(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = notify_cancel(*(v1 + 4644));
  *(v1 + 4640) = 0;
  return result;
}

uint64_t sub_100056938(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = notify_cancel(*(v1 + 4660));
  *(v1 + 4656) = 0;
  return result;
}

uint64_t sub_10005696C()
{
  v0 = __chkstk_darwin();
  if (off_10041DCD8 == &_os_log_default)
  {
    off_10041DCD8 = os_log_create("com.apple.isp", "device");
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v66 = 136315138;
    v67 = "ISP_PowerOnCamera";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s - powering on camera\n", &v66, 0xCu);
  }

  kdebug_trace();
  if (*(v0 + 4344))
  {
    if ((sub_100002970(v0) & 1) == 0 && *(v0 + 4) == 1)
    {
      sub_1000558B0(v0);
    }

    v40 = IOConnectCallScalarMethod(*(v0 + 4344), 0xBu, 0, 0, 0, 0);
    if (!v40)
    {
      if (*(v0 + 4668))
      {
        goto LABEL_17;
      }

      if (sub_1000542D4(v0, (v0 + 4668)))
      {
        if (off_10041DCD8 == &_os_log_default)
        {
          off_10041DCD8 = os_log_create("com.apple.isp", "device");
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_100082B00();
        }
      }

      if (*(v0 + 4668))
      {
LABEL_17:
        v1 = 0;
        v40 = 0;
        do
        {
          bzero(&v70, 0x9CuLL);
          sub_10005456C(v0, v1, &v70);
          bzero(&v66, 0x211CuLL);
          sub_1000592E0(v0, v1, 0, &v66);
          bzero(v65, 0x211CuLL);
          sub_1000592E0(v0, v1, 1u, v65);
          bzero(v64, 0x211CuLL);
          sub_1000592E0(v0, v1, 2u, v64);
          bzero(v63, 0x211CuLL);
          sub_1000592E0(v0, v1, 3u, v63);
          if (v71[3] == 1 && (v71[11] & 1) == 0)
          {
            operator new();
          }

          v2 = &unk_10041D000;
          ++v1;
        }

        while (v1 < *(v0 + 4668));
      }

      else
      {
        v40 = 0;
        v2 = &unk_10041D000;
      }

      if ((*(v0 + 4) & 1) == 0)
      {
        sub_100054AA0();
      }

      if (*(*(v0 + 4304) + 632) == 1 && !*(v0 + 104))
      {
        if (*(v0 + 4416) != 1)
        {
          operator new();
        }

        if (v2[411] == &_os_log_default)
        {
          v2[411] = os_log_create("com.apple.isp", "device");
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v66 = 136315138;
          v67 = "ISP_PowerOnCamera";
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s - bypassMotionManagerInitialization!\n", &v66, 0xCu);
        }
      }

      if ((byte_10041DF7E & 1) == 0 && *(*(v0 + 4304) + 632) == 1 && !*(v0 + 112))
      {
        if (*(v0 + 4416) != 1)
        {
          operator new();
        }

        if (v2[411] == &_os_log_default)
        {
          v2[411] = os_log_create("com.apple.isp", "device");
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v66 = 136315138;
          v67 = "ISP_PowerOnCamera";
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s - bypassDeviceImpactManagerInitialization!\n", &v66, 0xCu);
        }
      }

      v3 = *(v0 + 112);
      if (v3)
      {
        sub_100018198(v3);
      }
    }
  }

  else
  {
    v40 = -536870212;
  }

  if (*(v0 + 4668))
  {
    v4 = 0;
    v5 = (v0 + 4528);
    v6 = 16;
    do
    {
      v7 = *(*(v0 + 4304) + v6);
      if (v7 <= 1785950321)
      {
        if (v7 == 1718186595)
        {
          v9 = 0;
          v8 = "com.apple.isp.frontirsensorpower";
          goto LABEL_68;
        }

        if (v7 == 1718775412 || v7 == 1718776695)
        {
          v8 = "com.apple.isp.frontcamerapower";
          v9 = "com.apple.isp.frontcamerasensorconfig";
          goto LABEL_68;
        }
      }

      else if (v7 > 1919251318)
      {
        if (v7 == 1919251319)
        {
          v8 = "com.apple.isp.backsuperwidecamerapower";
          v9 = "com.apple.isp.backsuperwidesensorconfig";
LABEL_68:
          *(v5 - 13) = v8;
          *(v5 - 1) = v9;
          if ((*(v5 - 96) & 1) == 0)
          {
            v11 = *(*(v0 + 72) + 72);
            if (v11)
            {
              block[0] = _NSConcreteStackBlock;
              block[1] = 0x40000000;
              block[2] = sub_100059388;
              block[3] = &unk_1000AC3F8;
              block[4] = v0;
              v55 = v4;
              dispatch_sync(v11, block);
              v9 = *(v5 - 1);
            }
          }

          if (v9)
          {
            if ((*v5 & 1) == 0)
            {
              v12 = *(*(v0 + 72) + 72);
              if (v12)
              {
                v52[0] = _NSConcreteStackBlock;
                v52[1] = 0x40000000;
                v52[2] = sub_1000593D8;
                v52[3] = &unk_1000AC418;
                v52[4] = v0;
                v53 = v4;
                dispatch_sync(v12, v52);
              }
            }
          }

          goto LABEL_75;
        }

        if (v7 == 1919251564)
        {
          v8 = "com.apple.isp.backtelecamerapower";
          v9 = "com.apple.isp.backtelecamerasensorconfig";
          goto LABEL_68;
        }
      }

      else
      {
        if (v7 == 1785950322)
        {
          v9 = 0;
          v8 = "com.apple.isp.backtofsensorpower";
          goto LABEL_68;
        }

        if (v7 == 1919246706)
        {
          v8 = "com.apple.isp.backcamerapower";
          v9 = "com.apple.isp.backcamerasensorconfig";
          goto LABEL_68;
        }
      }

      *(v5 - 13) = 0;
      *(v5 - 1) = 0;
LABEL_75:
      ++v4;
      v5 += 16;
      v6 += 104;
    }

    while (v4 < *(v0 + 4668));
  }

  if ((*(v0 + 4624) & 1) == 0)
  {
    *(v0 + 4616) = "com.apple.isp.cameratorch";
    v13 = *(*(v0 + 72) + 72);
    if (v13)
    {
      v51[0] = _NSConcreteStackBlock;
      v51[1] = 0x40000000;
      v51[2] = sub_100059428;
      v51[3] = &unk_1000AC438;
      v51[4] = v0;
      dispatch_sync(v13, v51);
    }
  }

  if ((*(v0 + 4640) & 1) == 0)
  {
    *(v0 + 4632) = "com.apple.isp.cameratorchcoolcurrent";
    v14 = *(*(v0 + 72) + 72);
    if (v14)
    {
      v50[0] = _NSConcreteStackBlock;
      v50[1] = 0x40000000;
      v50[2] = sub_100059468;
      v50[3] = &unk_1000AC458;
      v50[4] = v0;
      dispatch_sync(v14, v50);
    }
  }

  if ((*(v0 + 4656) & 1) == 0)
  {
    *(v0 + 4648) = "com.apple.isp.cameratorchwarmcurrent";
    v15 = *(*(v0 + 72) + 72);
    if (v15)
    {
      v49[0] = _NSConcreteStackBlock;
      v49[1] = 0x40000000;
      v49[2] = sub_1000594A8;
      v49[3] = &unk_1000AC478;
      v49[4] = v0;
      dispatch_sync(v15, v49);
    }
  }

  v16 = sub_100002970(v0);
  v17 = v40;
  if (v16 && *(v0 + 4) == 1 && !v40)
  {
    if (*(v0 + 4668))
    {
      v18 = 0;
      v19 = 0;
      do
      {
        sprintf(v65, "/usr/local/share/firmware/isp/cam%dclocks.txt", v18);
        v20 = fopen(v65, "r");
        if (v20)
        {
          if (off_10041DCD8 == &_os_log_default)
          {
            off_10041DCD8 = os_log_create("com.apple.isp", "device");
          }

          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(v60[0]) = 67109120;
            DWORD1(v60[0]) = v18;
            v21 = "Found camera clock override information file for camera channel %d\n";
LABEL_95:
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v21, v60, 8u);
          }

          while (fgets(&v66, 256, v20))
          {
            v22 = strtok(&v66, "=");
            if (v22)
            {
              v23 = v22;
              if (!strncmp(v22, "clockdiv", 8uLL))
              {
                v27 = strtok(0, " \n");
                if (v27)
                {
                  v28 = strtoul(v27, 0, 0);
                  if (off_10041DCD8 == &_os_log_default)
                  {
                    off_10041DCD8 = os_log_create("com.apple.isp", "device");
                  }

                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                  {
                    LODWORD(v60[0]) = 67109120;
                    DWORD1(v60[0]) = v28;
                    v21 = "Set clock divider reg to 0x%08X\n";
                    goto LABEL_95;
                  }
                }

                else
                {
                  if (off_10041DCD8 == &_os_log_default)
                  {
                    off_10041DCD8 = os_log_create("com.apple.isp", "device");
                  }

                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                  {
                    sub_100082EA4(&v56, v57);
                  }
                }
              }

              else if (!strncmp(v23, "property", 8uLL))
              {
                v29 = strtok(0, " :");
                if (v29)
                {
                  v30 = strtoul(v29, 0, 0);
                  v31 = strtok(0, " \n");
                  if (v31)
                  {
                    v32 = strtoul(v31, 0, 0);
                    if (off_10041DCD8 == &_os_log_default)
                    {
                      off_10041DCD8 = os_log_create("com.apple.isp", "device");
                    }

                    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
                    {
                      LODWORD(v60[0]) = 67109376;
                      DWORD1(v60[0]) = v30;
                      WORD4(v60[0]) = 1024;
                      *(v60 + 10) = v32;
                      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Setting FW property 0x%08x to 0x%08X\n", v60, 0xEu);
                    }

                    v33 = sub_10005530C(v0, v18, v30, v32, 0xFFFFFFFF);
                    if (v33)
                    {
                      if (off_10041DCD8 == &_os_log_default)
                      {
                        off_10041DCD8 = os_log_create("com.apple.isp", "device");
                      }

                      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                      {
                        sub_100082ED8(&__dst, v33, &v59);
                      }
                    }
                  }

                  else
                  {
                    if (off_10041DCD8 == &_os_log_default)
                    {
                      off_10041DCD8 = os_log_create("com.apple.isp", "device");
                    }

                    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                    {
                      sub_100082EA4(&v45, v46);
                    }
                  }
                }

                else
                {
                  if (off_10041DCD8 == &_os_log_default)
                  {
                    off_10041DCD8 = os_log_create("com.apple.isp", "device");
                  }

                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                  {
                    sub_100082EA4(&v47, v48);
                  }
                }
              }

              else if (!strncmp(v23, "FWOBJECTSPECIALFUNC", 0x13uLL))
              {
                v34 = 0;
                memset(v60, 0, sizeof(v60));
                do
                {
                  v35 = v34;
                  *(v60 + v34) = v23;
                  v23 = strtok(0, ":");
                  v34 = v35 + 1;
                  if (v23)
                  {
                    v36 = v35 >= 5;
                  }

                  else
                  {
                    v36 = 1;
                  }
                }

                while (!v36);
                v37 = sub_1000554E4(v0, v34, v60);
                if (v37)
                {
                  printf("Sending special debug function to firmware object returned error : 0x%08x\n", v37);
                }
              }

              else
              {
                v24 = strtoul(v23, 0, 0);
                v25 = strtok(0, " \n");
                if (v25)
                {
                  if (v19 > 0x3F)
                  {
                    if (off_10041DCD8 == &_os_log_default)
                    {
                      off_10041DCD8 = os_log_create("com.apple.isp", "device");
                    }

                    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                    {
                      sub_100082E70(&v41, v42);
                    }
                  }

                  else
                  {
                    v26 = strtoul(v25, 0, 0);
                    if (off_10041DCD8 == &_os_log_default)
                    {
                      off_10041DCD8 = os_log_create("com.apple.isp", "device");
                    }

                    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
                    {
                      LODWORD(v60[0]) = 67109376;
                      DWORD1(v60[0]) = v24;
                      WORD4(v60[0]) = 1024;
                      *(v60 + 10) = v26;
                      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Set sensor reg 0x%08x to val 0x%08X\n", v60, 0xEu);
                    }

                    v64[v19] = v24;
                    v63[v19++] = v26;
                  }
                }

                else
                {
                  if (off_10041DCD8 == &_os_log_default)
                  {
                    off_10041DCD8 = os_log_create("com.apple.isp", "device");
                  }

                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                  {
                    sub_100082EA4(&v43, v44);
                  }
                }
              }
            }

            else
            {
              if (off_10041DCD8 == &_os_log_default)
              {
                off_10041DCD8 = os_log_create("com.apple.isp", "device");
              }

              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                sub_100082EA4(&v70, v71);
              }
            }
          }

          fclose(v20);
          if (v19)
          {
            v38 = sub_1000557B0(v0, v18, v19, v64, v63);
            if (v38)
            {
              if (off_10041DCD8 == &_os_log_default)
              {
                off_10041DCD8 = os_log_create("com.apple.isp", "device");
              }

              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                sub_100082F1C(v61, v38, v62);
              }
            }

            else
            {
              if (off_10041DCD8 == &_os_log_default)
              {
                off_10041DCD8 = os_log_create("com.apple.isp", "device");
              }

              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(v60[0]) = 67109376;
                DWORD1(v60[0]) = v18;
                WORD4(v60[0]) = 1024;
                *(v60 + 10) = v19;
                _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Successfully sent camera %d sensor register over-ride values for %d registers\n", v60, 0xEu);
              }
            }
          }
        }

        ++v18;
      }

      while (v18 < *(v0 + 4668));
    }

    v17 = v40;
  }

  if (!v17)
  {
    sub_100055B44(v0);
  }

  kdebug_trace();
  if (off_10041DCD8 == &_os_log_default)
  {
    off_10041DCD8 = os_log_create("com.apple.isp", "device");
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v66 = 136315394;
    v67 = "ISP_PowerOnCamera";
    v68 = 1024;
    v69 = v40;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s - status: 0x%08X\n", &v66, 0x12u);
  }

  return v40;
}

uint64_t sub_1000592E0(uint64_t a1, unsigned int a2, unsigned int a3, void *outputStruct)
{
  result = 3758097084;
  if (!outputStruct)
  {
    return 3758097090;
  }

  v6 = *(a1 + 4344);
  if (v6)
  {
    v7 = 8476;
    input[0] = a2;
    input[1] = a3;
    return IOConnectCallMethod(v6, 0x5Fu, input, 2u, 0, 0, 0, 0, outputStruct, &v7);
  }

  return result;
}

uint64_t sub_100059388(uint64_t a1)
{
  v2 = *(a1 + 32) + 4424;
  v3 = v2 + 16 * *(a1 + 40);
  result = notify_register_check(*v3, (v3 + 12));
  *(v2 + 16 * *(a1 + 40) + 8) = result == 0;
  return result;
}

uint64_t sub_1000593D8(uint64_t a1)
{
  v2 = *(a1 + 32) + 4520;
  v3 = v2 + 16 * *(a1 + 40);
  result = notify_register_check(*v3, (v3 + 12));
  *(v2 + 16 * *(a1 + 40) + 8) = result == 0;
  return result;
}

uint64_t sub_100059428(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = notify_register_check(*(v1 + 4616), (v1 + 4628));
  *(v1 + 4624) = result == 0;
  return result;
}

uint64_t sub_100059468(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = notify_register_check(*(v1 + 4632), (v1 + 4644));
  *(v1 + 4640) = result == 0;
  return result;
}

uint64_t sub_1000594A8(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = notify_register_check(*(v1 + 4648), (v1 + 4660));
  *(v1 + 4656) = result == 0;
  return result;
}

uint64_t sub_1000594E8(uint64_t a1)
{
  v2 = -10;
  do
  {
    if (!sub_100002970(a1))
    {
      break;
    }

    usleep(0x186A0u);
    if (off_10041DCD8 == &_os_log_default)
    {
      off_10041DCD8 = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v12 = "ISP_ColdBootPowerCycle";
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s - Camera powered on...waiting\n", buf, 0xCu);
    }

    usleep(0x493E0u);
  }

  while (!__CFADD__(v2++, 1));
  v4 = sub_1000597C0(a1);
  if (v4)
  {
    v5 = v4;
    if (off_10041DCD8 == &_os_log_default)
    {
      off_10041DCD8 = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100082F60();
    }
  }

  else
  {
    v6 = os_transaction_create();
    v5 = sub_10005981C(a1);
    os_release(v6);
    if (v5)
    {
      if (off_10041DCD8 == &_os_log_default)
      {
        off_10041DCD8 = os_log_create("com.apple.isp", "device");
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100082FE4();
      }
    }

    else
    {
      v7 = sub_10005696C();
      if (v7)
      {
        v5 = v7;
        v8 = 0;
        v9 = 0;
      }

      else if (sub_100002970(a1))
      {
        v5 = sub_100059E10(a1);
        v8 = v5 == 0;
        v9 = 1;
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v5 = 0;
      }

      if (off_10041DCD8 == &_os_log_default)
      {
        off_10041DCD8 = os_log_create("com.apple.isp", "device");
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v12 = "ISP_ColdBootPowerCycle";
        v13 = 1024;
        v14 = v9;
        v15 = 1024;
        v16 = v8;
        v17 = 1024;
        v18 = v5;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s - poweredOn=%d, poweredOff=%d, res=0x%08X\n", buf, 0x1Eu);
      }
    }
  }

  return v5;
}

uint64_t sub_1000597C0(uint64_t a1)
{
  v2 = *(a1 + 4344);
  if (!v2)
  {
    return 3758097084;
  }

  result = IOConnectCallScalarMethod(v2, 9u, 0, 0, 0, 0);
  if (!result)
  {
    sub_1000558B0(a1);
    return 0;
  }

  return result;
}

uint64_t sub_10005981C(uint64_t a1)
{
  v2 = sub_10005A2A4(a1);
  if (!v2)
  {
    theDict = 0;
    sub_100054344(v2, &theDict);
    sub_100059FA0(a1);
    sub_10003EE30(a1);
    sub_10007F3F8(a1);
    sub_10003F1C4(a1);
    sub_10005A58C(a1, "/System/Library/PrivateFrameworks/AppleCVHWA.framework/Firmware/lacc_VIO_ISP_IR.bin", 0, 0, 0, 8, 0, 0);
    strcpy(input, "/System/Library/PrivateFrameworks/AppleCVHWA.framework/Firmware/");
    *buf = 0;
    v5 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/arm-io");
    if (v5)
    {
      CFProperty = IORegistryEntryCreateCFProperty(v5, @"soc-generation", 0, 0);
      v7 = CFProperty;
      if (CFProperty)
      {
        v8 = CFGetTypeID(CFProperty);
        if (v8 == CFDataGetTypeID())
        {
          Length = CFDataGetLength(v7);
          if ((Length - 8) > 0xFFFFFFFFFFFFFFF8)
          {
            v10 = Length;
            BytePtr = CFDataGetBytePtr(v7);
            strncpy(buf, BytePtr, v10);
          }

          else
          {
            if (off_10041DCD8 == &_os_log_default)
            {
              off_10041DCD8 = os_log_create("com.apple.isp", "device");
            }

            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              sub_1000830E4();
            }
          }

          goto LABEL_22;
        }
      }
    }

    else
    {
      v7 = 0;
    }

    if (off_10041DCD8 == &_os_log_default)
    {
      off_10041DCD8 = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100083168();
    }

    if (!v7)
    {
LABEL_23:
      operator new[]();
    }

LABEL_22:
    CFRelease(v7);
    goto LABEL_23;
  }

  v3 = v2;
  if (off_10041DCD8 == &_os_log_default)
  {
    off_10041DCD8 = os_log_create("com.apple.isp", "device");
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100083068();
  }

  return v3;
}

uint64_t sub_100059E10(uint64_t a1)
{
  kdebug_trace();
  v2 = *(a1 + 4344);
  if (v2)
  {
    v3 = IOConnectCallScalarMethod(v2, 0xCu, 0, 0, 0, 0);
  }

  else
  {
    v3 = 3758097084;
  }

  kdebug_trace();
  return v3;
}

uint64_t sub_100059EA0(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 4344);
  if (!v4)
  {
    return 3758097084;
  }

  input[0] = a2;
  if (*a2)
  {
    v5 = 0;
    do
    {
      v6 = v5 + 1;
    }

    while (a2[++v5]);
  }

  else
  {
    v6 = 0;
  }

  input[1] = v6;
  input[2] = a3;
  input[3] = a4;
  return IOConnectCallScalarMethod(v4, 0x65u, input, 4u, 0, 0);
}

uint64_t sub_100059F48(uint64_t a1)
{
  v2 = *(a1 + 32) + 4424;
  notify_set_state(*(v2 + 16 * *(a1 + 48) + 12), *(a1 + 40));
  v3 = *(v2 + 16 * *(a1 + 48));

  return notify_post(v3);
}

uint64_t sub_100059FA0(uint64_t a1)
{
  v1 = 3758097136;
  v16 = 0;
  v17 = 0;
  v23 = 0;
  v22 = 0;
  if (*(a1 + 4344))
  {
    if (MGIsQuestionValid())
    {
      v3 = MGCopyAnswerWithError();
      if (v3)
      {
        v4 = v3;
        v5 = CFCopyDescription(v3);
        if (v5)
        {
          v6 = v5;
          if (off_10041DCD8 == &_os_log_default)
          {
            off_10041DCD8 = os_log_create("com.apple.isp", "device");
          }

          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v19 = "ISP_SetFrontCameraOffsetFromDisplayCenter";
            v20 = 2080;
            CStringPtr = CFStringGetCStringPtr(v6, 0x8000100u);
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s - kMGQFrontCameraOffsetFromDisplayCenter Description=%s\n", buf, 0x16u);
          }

          CFRelease(v6);
        }

        v7 = CFGetTypeID(v4);
        if (v7 == CFArrayGetTypeID() && CFArrayGetCount(v4) == 3)
        {
          v8 = 0;
          v9 = &v22;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v4, v8);
            if (!ValueAtIndex)
            {
              break;
            }

            v11 = ValueAtIndex;
            v12 = CFGetTypeID(ValueAtIndex);
            if (v12 != CFNumberGetTypeID() || !CFNumberIsFloatType(v11))
            {
              goto LABEL_26;
            }

            Value = CFNumberGetValue(v11, kCFNumberFloatType, v9);
            if (Value)
            {
              v9 = (v9 + 4);
              if (v8++ != 2)
              {
                continue;
              }
            }

            if (Value)
            {
              v1 = 0;
            }

            else
            {
              v1 = 3758097102;
            }

            if (Value)
            {
              v16 = v22;
              LODWORD(v17) = v23;
              v1 = IOConnectCallStructMethod(*(a1 + 4344), 0x56u, &v16, 0xCuLL, 0, 0);
              goto LABEL_36;
            }

            break;
          }
        }

        else
        {
LABEL_26:
          v1 = 3758096385;
        }
      }

      else
      {
        if (off_10041DCD8 == &_os_log_default)
        {
          off_10041DCD8 = os_log_create("com.apple.isp", "device");
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_1000831EC();
        }

        v4 = 0;
      }
    }

    else
    {
      v4 = 0;
      v1 = 3758097095;
    }
  }

  else
  {
    v4 = 0;
    v1 = 3758097087;
  }

  if (off_10041DCD8 == &_os_log_default)
  {
    off_10041DCD8 = os_log_create("com.apple.isp", "device");
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100083274();
    if (!v4)
    {
      return v1;
    }

    goto LABEL_36;
  }

  if (v4)
  {
LABEL_36:
    CFRelease(v4);
  }

  return v1;
}

uint64_t sub_10005A2A4(uint64_t a1)
{
  outputStructCnt = 24;
  v2 = *(a1 + 4344);
  if (v2 && (IOConnectCallStructMethod(v2, 0xFu, 0, 0, outputStruct, &outputStructCnt), (outputStruct[20] & 1) == 0))
  {
    v4 = sub_10005E740(a1, &v11);
    if (v11)
    {
      v5 = v4 == 0;
    }

    else
    {
      v5 = 0;
    }

    if (v5)
    {
      v6 = "/usr/local/share/firmware/isp/dcs_isp_fw.bin";
    }

    else
    {
      v6 = "/usr/local/share/firmware/isp/isp_fw.bin";
    }

    v7 = fopen(v6, "rb");
    v8 = fopen(0, "rb");
    if (v8)
    {
      v9 = v8;
      if (v7)
      {
        fclose(v7);
      }
    }

    else
    {
      v9 = v7;
    }

    if (off_10041DCD8 == &_os_log_default)
    {
      off_10041DCD8 = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000832F8();
    }

    if (v9)
    {
      if (off_10041DCD8 == &_os_log_default)
      {
        off_10041DCD8 = os_log_create("com.apple.isp", "device");
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100083374();
      }

      fseeko(v9, 0, 2);
      ftello(v9);
      fseeko(v9, 0, 0);
      operator new[]();
    }

    perror("error loading ISPCPU firmware ");
    outputStructCnt = 0;
    v14 = 0;
    v15 = *(a1 + 4296);
    return IOConnectCallScalarMethod(*(a1 + 4344), 7u, &outputStructCnt, 3u, 0, 0);
  }

  else
  {
    outputStructCnt = 0;
    v14 = 0;
    v15 = *(a1 + 4296);
    return IOConnectCallScalarMethod(*(a1 + 4344), 7u, &outputStructCnt, 3u, 0, 0);
  }
}

uint64_t sub_10005A58C(int a1, char *__filename, char *a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  if (a3)
  {
    v10 = fopen(a3, "rb");
    if (v10)
    {
      v11 = v10;
      goto LABEL_6;
    }
  }

  v12 = fopen(__filename, "rb");
  if (v12)
  {
    v11 = v12;
LABEL_6:
    fseeko(v11, 0, 2);
    ftello(v11);
    rewind(v11);
    operator new[]();
  }

  if (a4)
  {
    operator new[]();
  }

  if (off_10041DCD8 == &_os_log_default)
  {
    off_10041DCD8 = os_log_create("com.apple.isp", "device");
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316674;
    v17 = "SendDataFileToFirmware";
    v18 = 1024;
    v19 = a6;
    v20 = 1024;
    v21 = 0;
    v22 = 2080;
    v23 = __filename;
    v24 = 1024;
    v25 = 0;
    v26 = 1024;
    v27 = a8;
    v28 = 1024;
    v29 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s - type=0x%X, isOverride=%d, file=%s, size=%u, isEarlyBoot=%d, status=%08x\n", buf, 0x34u);
  }

  return 0;
}

void sub_10005A92C(uint64_t a1)
{
  v2 = sub_10005E408(a1, 1919246706, 1852793709);
  if (v2 == -1)
  {
    if (off_10041DCD8 == &_os_log_default)
    {
      off_10041DCD8 = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10008350C();
    }
  }

  else
  {
    v3 = v2;
    v4 = IOServiceNameMatching("AppleH16CamIn");
    MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v4);
    v6 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"BackCameraModuleSerialNumString", kCFAllocatorDefault, 3u);
    IOObjectRelease(MatchingService);
    if (v6)
    {
      if (off_10041DCD8 == &_os_log_default)
      {
        off_10041DCD8 = os_log_create("com.apple.isp", "device");
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "backCameraModuleSerialNumString exists - load FDR CmCl calibration data\n\n", buf, 2u);
      }

      v7 = -1431699456;
      CFRelease(v6);
      v8 = fopen("/usr/local/share/firmware/isp/CmCl-Override.DAT", "rb");
      if (v8)
      {
        v9 = v8;
        fseeko(v8, 0, 2);
        ftello(v9);
        fseeko(v9, 0, 0);
        operator new[]();
      }

      v10 = CFStringCreateWithCString(kCFAllocatorDefault, "CmCl", 0x8000100u);
      Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      CFDictionaryAddValue(Mutable, @"CopyAllowUnsealed", kCFBooleanTrue);
      AMFDRLogSetHandler();
      v12 = AMFDRSealingMapCopyLocalDataForClass();
      if (!v12)
      {
        v19 = *(a1 + 4304);
        if (!v19 || *(v19 + 675) != 1 || (v20 = AMFDRSealingManifestCopyLocalDataForClass()) == 0)
        {
          sub_10005D4E0(a1, v3 | 0x80000000, 0, 0, 0xCCCC0300);
LABEL_31:
          if (v10)
          {
            CFRelease(v10);
          }

          if (Mutable)
          {
            CFRelease(Mutable);
          }

          return;
        }

        v12 = v20;
        v7 = -1145372672;
      }

      BytePtr = CFDataGetBytePtr(v12);
      Length = CFDataGetLength(v12);
      v15 = sub_10005D4E0(a1, v3 | 0x80000000, BytePtr, Length, v7 | 0x300u);
      v16 = CFCopyDescription(v12);
      if (v16)
      {
        v17 = v16;
        if (off_10041DCD8 == &_os_log_default)
        {
          off_10041DCD8 = os_log_create("com.apple.isp", "device");
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          CStringPtr = CFStringGetCStringPtr(v17, 0);
          *buf = 136315650;
          v22 = "LoadFDRCalDataFile";
          v23 = 1024;
          v24 = v15;
          v25 = 2080;
          v26 = CStringPtr;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s - Status = %#08x; CmCl data - %s\n", buf, 0x1Cu);
        }

        CFRelease(v17);
      }

      CFRelease(v12);
      goto LABEL_31;
    }

    if (off_10041DCD8 == &_os_log_default)
    {
      off_10041DCD8 = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100083488();
    }

    sub_10005D4E0(a1, v3 | 0x80000000, 0, 0, 0xCCCC0300);
  }
}

void sub_10005AF1C(uint64_t a1)
{
  v2 = sub_10005E408(a1, 1718775412, 1718776695);
  if (v2 == -1)
  {
    if (off_10041DCD8 == &_os_log_default)
    {
      off_10041DCD8 = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000836A0();
    }
  }

  else
  {
    v3 = v2;
    v4 = IOServiceNameMatching("AppleH16CamIn");
    MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v4);
    v6 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"FrontCameraModuleSerialNumString", kCFAllocatorDefault, 3u);
    IOObjectRelease(MatchingService);
    if (v6)
    {
      if (off_10041DCD8 == &_os_log_default)
      {
        off_10041DCD8 = os_log_create("com.apple.isp", "device");
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "FrontCameraModuleSerialNumString exists - load FDR FCCl calibration data\n\n", buf, 2u);
      }

      v7 = -1431699456;
      CFRelease(v6);
      v8 = fopen("/usr/local/share/firmware/isp/FCCl-Override.DAT", "rb");
      if (v8)
      {
        v9 = v8;
        fseeko(v8, 0, 2);
        ftello(v9);
        fseeko(v9, 0, 0);
        operator new[]();
      }

      Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      CFDictionaryAddValue(Mutable, @"CopyAllowUnsealed", kCFBooleanTrue);
      AMFDRLogSetHandler();
      v11 = CFStringCreateWithCString(kCFAllocatorDefault, "FCCl", 0x8000100u);
      v12 = AMFDRSealingMapCopyLocalDataForClass();
      if (v12)
      {
        v13 = v12;
        v14 = 0;
        theDict = 0;
        v15 = 0;
      }

      else
      {
        v22 = *(a1 + 4304);
        if (!v22 || *(v22 + 675) != 1 || (v23 = AMFDRSealingManifestCopyLocalDataForClass()) == 0)
        {
          v14 = CFStringCreateWithCString(kCFAllocatorDefault, "iCCl", 0x8000100u);
          theDict = AMFDRSealingMapCopyLocalDictForClass();
          if (theDict && (v24 = *(a1 + 4304)) != 0 && *(v24 + 675) == 1)
          {
            v15 = CFStringCreateWithCString(kCFAllocatorDefault, "FCCl", 0x8000100u);
            Value = CFDictionaryGetValue(theDict, v15);
            if (Value)
            {
              v13 = Value;
              goto LABEL_20;
            }
          }

          else
          {
            v15 = 0;
          }

          sub_10005D4E0(a1, v3 | 0x80000000, 0, 0, 0xCCCC0300);
          v21 = 0;
          v13 = 0;
LABEL_36:
          if (v11)
          {
            CFRelease(v11);
          }

          if (Mutable)
          {
            CFRelease(Mutable);
          }

          if (v14)
          {
            CFRelease(v14);
          }

          if (v15)
          {
            CFRelease(v15);
          }

          v26 = v21 ^ 1;
          if (theDict)
          {
            v26 = 0;
          }

          if ((v26 & 1) == 0)
          {
            if (theDict)
            {
              v27 = theDict;
            }

            else
            {
              v27 = v13;
            }

            CFRelease(v27);
          }

          return;
        }

        v13 = v23;
        v14 = 0;
        theDict = 0;
        v15 = 0;
        v7 = -1145372672;
      }

LABEL_20:
      BytePtr = CFDataGetBytePtr(v13);
      Length = CFDataGetLength(v13);
      v18 = sub_10005D4E0(a1, v3 | 0x80000000, BytePtr, Length, v7 | 0x300u);
      v19 = CFCopyDescription(v13);
      if (off_10041DCD8 == &_os_log_default)
      {
        off_10041DCD8 = os_log_create("com.apple.isp", "device");
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        CStringPtr = CFStringGetCStringPtr(v19, 0);
        *buf = 136315650;
        v30 = "LoadFDRFCClDataFile";
        v31 = 1024;
        v32 = v18;
        v33 = 2080;
        v34 = CStringPtr;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s - Status = %#08x; FCCl data - %s\n", buf, 0x1Cu);
      }

      CFRelease(v19);
      v21 = 1;
      goto LABEL_36;
    }

    if (off_10041DCD8 == &_os_log_default)
    {
      off_10041DCD8 = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10008361C();
    }

    sub_10005D4E0(a1, v3 | 0x80000000, 0, 0, 0xCCCC0300);
  }
}

void sub_10005B5E0(uint64_t a1)
{
  v2 = fopen("/var/mobile/Library/ISP/CalData/DCNUMetadata_0", "rb");
  if (v2)
  {
    fclose(v2);
    remove("/var/mobile/Library/ISP/CalData/DCNUMetadata_0", v3);
  }

  v4 = fopen("/var/mobile/Library/ISP/CalData/DCNUPixbuf_0", "rb");
  if (v4)
  {
    fclose(v4);
    remove("/var/mobile/Library/ISP/CalData/DCNUPixbuf_0", v5);
  }

  v65[1] = xmmword_1000AC568;
  v65[2] = *&off_1000AC578;
  v66 = 0x7265746C00000000;
  v64 = off_1000AC548;
  v65[0] = unk_1000AC558;
  v6 = IOServiceNameMatching("AppleH16CamIn");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v6);
  v8 = 0;
  v9 = 0;
  v46 = a1;
  do
  {
    v10 = &v65[-1] + v9;
    *(v10 + 4) = sub_10005E408(a1, *(v65 + v9 + 4), 1852793709);
    v11 = *(&v65[-1] + v9);
    v12 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", v11, kCFAllocatorDefault, 3u);
    *(v10 + 1) = v12;
    if (CFStringGetCStringPtr(v12, 0x8000100u))
    {
      if (off_10041DCD8 == &_os_log_default)
      {
        off_10041DCD8 = os_log_create("com.apple.isp", "device");
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        CStringPtr = CFStringGetCStringPtr(v11, 0x8000100u);
        v14 = CFStringGetCStringPtr(v12, 0x8000100u);
        v15 = CFStringGetCStringPtr(v12, 0x8000100u);
        v16 = strlen(v15);
        *buf = 136315650;
        *v59 = CStringPtr;
        *&v59[8] = 2080;
        *&v59[10] = v14;
        v60 = 2048;
        v61 = v16;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s:%s exists, length of the string = %ld.\n\n", buf, 0x20u);
      }

      v8 = 1;
    }

    else
    {
      if (off_10041DCD8 == &_os_log_default)
      {
        off_10041DCD8 = os_log_create("com.apple.isp", "device");
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100083724(v62, v11, &v63);
      }
    }

    a1 = v46;
    v9 += 24;
  }

  while (v9 != 72);
  IOObjectRelease(MatchingService);
  v17 = AMFDRSealingMapCopyMultiInstanceForClass();
  v18 = v17;
  if ((v8 & (v17 != 0)) == 0)
  {
    sub_100083790(v46);
    goto LABEL_76;
  }

  Count = CFArrayGetCount(v17);
  if (Count >= 1)
  {
    v19 = 0;
    v20 = 0;
    v44 = v18;
LABEL_20:
    v48 = v20;
    ValueAtIndex = CFArrayGetValueAtIndex(v18, v20);
    v22 = 72;
    v23 = v65;
    while (1)
    {
      v24 = *(v23 - 1);
      if (CFStringGetCStringPtr(v24, 0x8000100u))
      {
        if (CFStringCompare(ValueAtIndex, v24, 1uLL) == kCFCompareEqualTo)
        {
          break;
        }
      }

      v23 += 6;
      v22 -= 24;
      if (!v22)
      {
        goto LABEL_29;
      }
    }

    v19 = *v23;
    if (off_10041DCD8 == &_os_log_default)
    {
      off_10041DCD8 = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v25 = CFStringGetCStringPtr(ValueAtIndex, 0x8000100u);
      *buf = 67109378;
      *v59 = v19;
      *&v59[4] = 2080;
      *&v59[6] = v25;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "camChannel: %d, cmpmInstance: %s\n", buf, 0x12u);
    }

LABEL_29:
    AMFDRLogSetHandler();
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionaryAddValue(Mutable, @"CopyAllowUnsealed", kCFBooleanTrue);
    v47 = Mutable;
    v27 = AMFDRSealingMapCopyLocalDict();
    v28 = 0;
    v49 = v19;
    while (1)
    {
      v29 = &off_1000AC590[v28];
      snprintf(buf, 0x30uLL, "%s-Ch%d.DAT", off_1000AC590[v28], v19);
      if (v27)
      {
        v30 = CFStringCreateWithCString(kCFAllocatorDefault, v29[1], 0x8000100u);
        Value = CFDictionaryGetValue(v27, v30);
        if (Value)
        {
          v32 = Value;
          BytePtr = CFDataGetBytePtr(Value);
          v34 = -1431699456;
          Length = CFDataGetLength(v32);
          goto LABEL_35;
        }
      }

      else
      {
        v30 = 0;
      }

      Length = 0;
      BytePtr = 0;
      v34 = -859045888;
LABEL_35:
      v36 = *(v29 + 4);
      if (v36 == 771)
      {
        v37 = fopen(buf, "rb");
        if (v37)
        {
          v38 = v37;
          fseeko(v37, 0, 2);
          ftello(v38);
          rewind(v38);
          operator new[]();
        }

        if (BytePtr)
        {
          correction_model_from_fdr = bfpn_create_correction_model_from_fdr();
          if (off_10041DCD8 == &_os_log_default)
          {
            off_10041DCD8 = os_log_create("com.apple.isp", "device");
          }

          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *v54 = 136315650;
            v55 = "LoadFDRDataFileCMPM";
            v56 = 1024;
            *v57 = correction_model_from_fdr;
            *&v57[4] = 2048;
            *&v57[6] = 8;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s - result = %d, outputPixelBufferRef = %lu\n", v54, 0x1Cu);
          }

          if (!correction_model_from_fdr)
          {
            if (mkdir("/var/mobile/Library/ISP/", 0x1FFu) && *__error() != 17)
            {
              if (off_10041DCD8 == &_os_log_default)
              {
                off_10041DCD8 = os_log_create("com.apple.isp", "device");
              }

              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                sub_100083844(v52, &v53);
              }
            }

            else if (mkdir("/var/mobile/Library/ISP/CalData", 0x1FFu) && *__error() != 17)
            {
              if (off_10041DCD8 == &_os_log_default)
              {
                off_10041DCD8 = os_log_create("com.apple.isp", "device");
              }

              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                sub_100083898(v50, &v51);
              }
            }

            else
            {
              v40 = fopen("/var/mobile/Library/ISP/CalData/DCNUMetadata_0", "wb");
              if (v40)
              {
                v41 = v40;
                fwrite(0, 1uLL, MEMORY[2], v40);
                fclose(v41);
                sub_10005A58C(v46, "/var/mobile/Library/ISP/CalData/DCNUMetadata_0", 0, 0, 0, v34 | 0x304, v49, 1);
                sub_10005A58C(v46, "/var/mobile/Library/ISP/CalData/DCNUPixbuf_0", 0, 0, 0, v34 | 0x303, v49, 1);
              }

              else
              {
                if (off_10041DCD8 == &_os_log_default)
                {
                  off_10041DCD8 = os_log_create("com.apple.isp", "device");
                }

                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                {
                  *v54 = 136315394;
                  v55 = "LoadFDRDataFileCMPM";
                  v56 = 2080;
                  *v57 = "/var/mobile/Library/ISP/CalData/DCNUMetadata_0";
                  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%s - Could not open %s file\n", v54, 0x16u);
                }
              }
            }

            free(0);
          }
        }

        v19 = v49;
        if (!v30)
        {
          goto LABEL_40;
        }

LABEL_39:
        CFRelease(v30);
        goto LABEL_40;
      }

      sub_10005A58C(v46, 0, buf, BytePtr, Length, v36 | v34, v19, 1);
      if (v30)
      {
        goto LABEL_39;
      }

LABEL_40:
      v28 += 3;
      if (v28 == 18)
      {
        v18 = v44;
        if (v27)
        {
          CFRelease(v27);
        }

        if (v47)
        {
          CFRelease(v47);
        }

        v20 = v48 + 1;
        if (v48 + 1 == Count)
        {
          break;
        }

        goto LABEL_20;
      }
    }
  }

LABEL_76:
  for (i = 8; i != 80; i += 24)
  {
    v43 = *(&v65[-1] + i);
    if (CFStringGetCStringPtr(v43, 0x8000100u))
    {
      CFRelease(v43);
      *(&v65[-1] + i) = 0;
    }
  }

  if (v18)
  {
    CFRelease(v18);
  }
}

void sub_10005C2A4(uint64_t a1)
{
  v2 = IOServiceNameMatching("AppleH16CamIn");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v2);
  v4 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"FrontCameraModuleSerialNumString", kCFAllocatorDefault, 3u);
  if (!v4)
  {
    if (off_10041DCD8 == &_os_log_default)
    {
      off_10041DCD8 = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000839CC();
    }

    goto LABEL_38;
  }

  v5 = v4;
  if (off_10041DCD8 == &_os_log_default)
  {
    off_10041DCD8 = os_log_create("com.apple.isp", "device");
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "FrontCameraModuleSerialNumString exists - load OCCl calibration data\n\n", buf, 2u);
  }

  CFRelease(v5);
  v6 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"BackTeleCameraModuleSerialNumString", kCFAllocatorDefault, 3u);
  if (!v6)
  {
    if (off_10041DCD8 == &_os_log_default)
    {
      off_10041DCD8 = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100083988();
    }

LABEL_38:
    IOObjectRelease(MatchingService);
    return;
  }

  v7 = v6;
  if (off_10041DCD8 == &_os_log_default)
  {
    off_10041DCD8 = os_log_create("com.apple.isp", "device");
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "backTeleCameraModuleSerialNumString exists - load OCCl calibration data\n\n", buf, 2u);
  }

  CFRelease(v7);
  IOObjectRelease(MatchingService);
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v9 = CFStringCreateWithCString(kCFAllocatorDefault, "OCCl", 0x8000100u);
  AMFDRLogSetHandler();
  CFDictionaryAddValue(Mutable, @"CopyAllowUnsealed", kCFBooleanTrue);
  v26 = Mutable;
  v10 = AMFDRSealingMapCopyLocalDictForClass();
  v27 = a1;
  v11 = 0;
  do
  {
    while (1)
    {
      v12 = v11;
      v13 = &off_1000AC518[3 * v11];
      v14 = fopen(*v13, "rb");
      if (v14)
      {
        v15 = v14;
        fseeko(v14, 0, 2);
        ftello(v15);
        fseeko(v15, 0, 0);
        operator new[]();
      }

      if (v10)
      {
        break;
      }

      v11 = 1;
      if (v12)
      {
        goto LABEL_26;
      }
    }

    v16 = v13[1];
    v17 = CFStringCreateWithCString(kCFAllocatorDefault, v16, 0x8000100u);
    Value = CFDictionaryGetValue(v10, v17);
    if (Value)
    {
      v19 = Value;
      BytePtr = CFDataGetBytePtr(Value);
      Length = CFDataGetLength(v19);
      v22 = sub_10005D4E0(v27, 0x80000000, BytePtr, Length, *(v13 + 4));
      v23 = CFCopyDescription(v19);
      if (v23)
      {
        v24 = v23;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          CStringPtr = CFStringGetCStringPtr(v24, 0);
          *buf = 136315906;
          v29 = "LoadOCClCalDataFile";
          v30 = 1024;
          v31 = v22;
          v32 = 2080;
          v33 = v16;
          v34 = 2080;
          v35 = CStringPtr;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s : Status = %08x; OCCl (%s) data - %s \n", buf, 0x26u);
        }

        CFRelease(v24);
      }
    }

    if (v17)
    {
      CFRelease(v17);
    }

    v11 = 1;
  }

  while (!v12);
  CFRelease(v10);
LABEL_26:
  if (v9)
  {
    CFRelease(v9);
  }

  if (v26)
  {
    CFRelease(v26);
  }
}

void sub_10005C8F0()
{
  v0 = MGCopyAnswer();
  if (!v0)
  {
    if (off_10041DCD8 == &_os_log_default)
    {
      off_10041DCD8 = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100083B28();
    }

    return;
  }

  v1 = v0;
  Length = CFStringGetLength(v0);
  if (CFStringHasSuffix(v1, @"AP"))
  {
    v3.length = Length - 2;
  }

  else
  {
    if (!CFStringHasSuffix(v1, @"DEV"))
    {
      v4 = kCFAllocatorDefault;
      goto LABEL_13;
    }

    v3.length = Length - 3;
  }

  v4 = kCFAllocatorDefault;
  if (v3.length >= 1)
  {
    v3.location = 0;
    v5 = CFStringCreateWithSubstring(kCFAllocatorDefault, v1, v3);
    CFRelease(v1);
    v1 = v5;
  }

LABEL_13:
  MutableCopy = CFStringCreateMutableCopy(v4, 0, v1);
  CFStringLowercase(MutableCopy, 0);
  CFShow(MutableCopy);
  CFRelease(v1);
  if (MutableCopy)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    memset(__s, 0, sizeof(__s));
    strcat(__s, "/System/Library/Isp/afpp/");
    CStringPtr = CFStringGetCStringPtr(MutableCopy, 0x8000100u);
    strcat(__s, CStringPtr);
    strcat(__s, "/ispane.afpp");
    CFRelease(MutableCopy);
    v8 = fopen(__s, "rb");
    if (off_10041DCD8 == &_os_log_default)
    {
      off_10041DCD8 = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315138;
      v12 = __s;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Loading file for ISP-ANE networks - %s\n", &v11, 0xCu);
    }

    v9 = fopen("/usr/local/share/firmware/isp/ispane.afpp", "rb");
    if (v9)
    {
      v10 = v9;
      if (off_10041DCD8 == &_os_log_default)
      {
        off_10041DCD8 = os_log_create("com.apple.isp", "device");
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v11) = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Using override ISP-ANE AFPP file\n", &v11, 2u);
      }

      if (v8)
      {
        fclose(v8);
      }

      v8 = v10;
LABEL_27:
      fseeko(v8, 0, 2);
      ftello(v8);
      fseeko(v8, 0, 0);
      operator new[]();
    }

    if (v8)
    {
      goto LABEL_27;
    }

    if (off_10041DCD8 == &_os_log_default)
    {
      off_10041DCD8 = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100083AE4();
    }
  }
}

uint64_t sub_10005CDF4(uint64_t a1, _DWORD *inputStruct)
{
  v2 = *(a1 + 4344);
  if (!v2)
  {
    return 3758097084;
  }

  v5 = 0u;
  return IOConnectCallAsyncMethod(v2, 0x28u, inputStruct[4], &reference, 8u, 0, 0, inputStruct, 0x18uLL, 0, 0, 0, 0);
}

uint64_t sub_10005CE88(uint64_t a1, mach_port_t wake_port)
{
  v2 = *(a1 + 4344);
  if (!v2)
  {
    return 3758097084;
  }

  v5 = 0u;
  return IOConnectCallAsyncMethod(v2, 0x29u, wake_port, &reference, 8u, 0, 0, 0, 0, 0, 0, 0, 0);
}

uint64_t sub_10005CF14(uint64_t a1, mach_port_t wake_port)
{
  v2 = *(a1 + 4344);
  if (!v2)
  {
    return 3758097084;
  }

  v5 = 0u;
  return IOConnectCallAsyncMethod(v2, 0x2Eu, wake_port, &reference, 8u, 0, 0, 0, 0, 0, 0, 0, 0);
}

uint64_t sub_10005CFA0(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v3 = *(a1 + 4344);
  if (!v3)
  {
    return 3758097084;
  }

  input[0] = a2;
  input[1] = a3;
  return IOConnectCallScalarMethod(v3, 0x30u, input, 2u, 0, 0);
}

uint64_t sub_10005D020(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 4344);
  if (!v2)
  {
    return 3758097084;
  }

  v4 = a2;
  return IOConnectCallScalarMethod(v2, 0x31u, &v4, 1u, 0, 0);
}

uint64_t sub_10005D09C(uint64_t a1)
{
  output = 0;
  outputCnt = 1;
  result = *(a1 + 4344);
  if (result)
  {
    return !IOConnectCallScalarMethod(result, 0x39u, 0, 0, &output, &outputCnt) && output == 1;
  }

  return result;
}

uint64_t sub_10005D0F4(uint64_t a1, void *outputStruct)
{
  outputStructCnt = 16;
  v2 = *(a1 + 4344);
  if (v2)
  {
    return IOConnectCallStructMethod(v2, 0xDu, 0, 0, outputStruct, &outputStructCnt);
  }

  else
  {
    return 3758097084;
  }
}

uint64_t sub_10005D144(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4, unsigned int a5)
{
  v5 = 3758097084;
  if (*(a1 + 4344))
  {
    v11 = fopen("/usr/local/share/firmware/isp/Yonkers/YonkersPatchOverride.DAT", "rb");
    if (v11)
    {
      v12 = v11;
      if (off_10041DCD8 == &_os_log_default)
      {
        off_10041DCD8 = os_log_create("com.apple.isp", "device");
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Trying to use override YonkersPatchOverride.DAT file\n", buf, 2u);
      }

      fseeko(v12, 0, 2);
      ftello(v12);
      fseeko(v12, 0, 0);
      operator new[]();
    }

    v16 = a2;
    if (a3 && a4)
    {
      *buf = a3;
      v15 = a4;
      if (sub_10005D4E0(a1, a2, a3, a4, a5) != -536870212)
      {
        return IOConnectCallScalarMethod(*(a1 + 4344), 0x41u, buf, 3u, 0, 0);
      }
    }

    else
    {
      if (off_10041DCD8 == &_os_log_default)
      {
        off_10041DCD8 = os_log_create("com.apple.isp", "device");
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR) && (sub_100083BB0(0) & 1) != 0)
      {
        operator delete[]();
      }
    }
  }

  return v5;
}

uint64_t sub_10005D4E0(uint64_t a1, int a2, uint64_t a3, unsigned int a4, unsigned int a5)
{
  v7 = *(a1 + 4344);
  if (v7)
  {
    v11 = a3;
    v12 = a4;
    v13 = a2;
    v14 = a5;
    v8 = IOConnectCallScalarMethod(v7, 0x25u, &v11, 4u, 0, 0);
  }

  else
  {
    v8 = 3758097084;
  }

  if (off_10041DCD8 == &_os_log_default)
  {
    off_10041DCD8 = os_log_create("com.apple.isp", "device");
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v11) = 67109890;
    HIDWORD(v11) = a2 & 0x7FFFFFFF;
    v9 = "false";
    LOWORD(v12) = 1024;
    if (a2 < 0)
    {
      v9 = "true";
    }

    *(&v12 + 2) = a5;
    HIWORD(v12) = 2080;
    v13 = v9;
    LOWORD(v14) = 1024;
    *(&v14 + 2) = v8;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Load data file: channel: %d, type: %d, isEarlyBootDataFile: %s, status: %08x\n\n", &v11, 0x1Eu);
  }

  return v8;
}

uint64_t sub_10005D640(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(a1 + 4344);
  if (v3)
  {
    *v6 = a2;
    *&v6[8] = a3;
    v4 = IOConnectCallScalarMethod(v3, 0x62u, v6, 2u, 0, 0);
  }

  else
  {
    v4 = 3758097084;
  }

  if (off_10041DCD8 == &_os_log_default)
  {
    off_10041DCD8 = os_log_create("com.apple.isp", "device");
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 136315394;
    *&v6[4] = "ISP_LoadIspAneAFPPFile";
    *&v6[12] = 1024;
    *&v6[14] = v4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s - status: %08x\n", v6, 0x12u);
  }

  return v4;
}

uint64_t sub_10005D75C(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4, unsigned int a5)
{
  v5 = 3758097084;
  if (*(a1 + 4344))
  {
    v11 = fopen("/usr/local/share/firmware/isp/Savage/SavagePatchOverride.DAT", "rb");
    if (v11)
    {
      v12 = v11;
      if (off_10041DCD8 == &_os_log_default)
      {
        off_10041DCD8 = os_log_create("com.apple.isp", "device");
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Trying to use SavagePatchOverride.DAT file\n", buf, 2u);
      }

      fseeko(v12, 0, 2);
      ftello(v12);
      fseeko(v12, 0, 0);
      operator new[]();
    }

    v16 = a2;
    if (a3 && a4)
    {
      *buf = a3;
      v15 = a4;
      if (sub_10005D4E0(a1, a2, a3, a4, a5) != -536870212)
      {
        return IOConnectCallScalarMethod(*(a1 + 4344), 2u, buf, 3u, 0, 0);
      }
    }

    else
    {
      if (off_10041DCD8 == &_os_log_default)
      {
        off_10041DCD8 = os_log_create("com.apple.isp", "device");
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR) && (sub_100083C48(0) & 1) != 0)
      {
        operator delete[]();
      }
    }
  }

  return v5;
}

uint64_t sub_10005DAF8(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v6 = *(a1 + 4344);
  if (v6)
  {
    if (a3 && a4)
    {
      *&buf = a3;
      *(&buf + 1) = a4;
      v21 = a2;
      v9 = IOConnectCallScalarMethod(v6, 0x6Du, &v21, 1u, 0, 0);
      if (v9)
      {
        v10 = v9;
        if (off_10041DCD8 == &_os_log_default)
        {
          off_10041DCD8 = os_log_create("com.apple.isp", "device");
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v16 = 136315394;
          v17 = "ISP_SavageAuth";
          v18 = 1024;
          v19 = v10;
          v11 = "%s: Savage Pre Auth failed, status = 0x%x\n";
LABEL_28:
          p_buf = &v16;
          v13 = 18;
          goto LABEL_29;
        }
      }

      else
      {
        v14 = sub_10005D4E0(a1, a2, buf, DWORD2(buf), a5);
        if (v14)
        {
          v10 = v14;
          if (off_10041DCD8 == &_os_log_default)
          {
            off_10041DCD8 = os_log_create("com.apple.isp", "device");
          }

          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            v16 = 136315394;
            v17 = "ISP_SavageAuth";
            v18 = 1024;
            v19 = v10;
            v11 = "%s: Data file load failed, status = 0x%x\n";
            goto LABEL_28;
          }
        }

        else
        {
          v10 = IOConnectCallScalarMethod(*(a1 + 4344), 0x6Eu, &v21, 1u, 0, 0);
          if (v10)
          {
            if (off_10041DCD8 == &_os_log_default)
            {
              off_10041DCD8 = os_log_create("com.apple.isp", "device");
            }

            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              v16 = 136315394;
              v17 = "ISP_SavageAuth";
              v18 = 1024;
              v19 = v10;
              v11 = "%s: Savage Auth failed, status = 0x%x\n";
              goto LABEL_28;
            }
          }
        }
      }
    }

    else
    {
      if (off_10041DCD8 == &_os_log_default)
      {
        off_10041DCD8 = os_log_create("com.apple.isp", "device");
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 136315138;
        *(&buf + 4) = "ISP_SavageAuth";
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: Invalid data file arguments\n", &buf, 0xCu);
      }

      return 3758096385;
    }
  }

  else
  {
    if (off_10041DCD8 == &_os_log_default)
    {
      off_10041DCD8 = os_log_create("com.apple.isp", "device");
    }

    v10 = 3758097084;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "ISP_SavageAuth";
      v11 = "%s: Invalid connection\n";
      p_buf = &buf;
      v13 = 12;
LABEL_29:
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v11, p_buf, v13);
    }
  }

  return v10;
}

uint64_t sub_10005DE9C(int a1, char *__filename, void *a3, off_t *a4)
{
  v4 = 3758097090;
  if (a3 && a4)
  {
    *a3 = 0;
    *a4 = 0;
    v8 = fopen(__filename, "rb");
    if (v8)
    {
      v9 = v8;
      fseeko(v8, 0, 2);
      v10 = ftello(v9);
      fseeko(v9, 0, 0);
      v11 = malloc_type_calloc(v10, 1uLL, 0x100004077774924uLL);
      if (v11)
      {
        v12 = v11;
        v13 = fread(v11, 1uLL, v10, v9);
        if (v13 == v10)
        {
          *a3 = v12;
          *a4 = v10;
          v14 = v10;
        }

        else
        {
          v14 = v13;
          free(v12);
        }
      }

      else
      {
        v14 = 0;
      }

      fclose(v9);
      if (off_10041DCD8 == &_os_log_default)
      {
        off_10041DCD8 = os_log_create("com.apple.isp", "device");
      }

      v4 = 0;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 136315906;
        v17 = "CopyFileToBuffer";
        v18 = 2080;
        v19 = __filename;
        v20 = 2048;
        v21 = v10;
        v22 = 2048;
        v23 = v14;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s - Trying to use %s: Size = %lld (== %lld ?);\n", &v16, 0x2Au);
        return 0;
      }
    }

    else
    {
      return 3758097136;
    }
  }

  return v4;
}

uint64_t sub_10005E088(uint64_t a1, uint64_t a2, const __CFDictionary *a3)
{
  v3 = 3758097090;
  BytePtr = 0;
  Length = 0;
  if (a2)
  {
    v5 = *(a2 + 8);
    if (v5)
    {
      if (*(a2 + 4) >= 1024)
      {
        v24 = 0u;
        v25 = 0u;
        memset(__str, 0, sizeof(__str));
        v8 = snprintf(__str, 0x40uLL, "%s%s.%s", "/usr/local/share/firmware/isp/", v5, "DAT");
        v9 = sub_10005DE9C(v8, __str, &BytePtr, &Length);
        if (v9)
        {
          if (!a3)
          {
            goto LABEL_34;
          }

          Value = CFDictionaryGetValue(a3, *(a2 + 16));
          if (!Value)
          {
            goto LABEL_34;
          }

          v11 = CFRetain(Value);
          if (off_10041DCD8 == &_os_log_default)
          {
            off_10041DCD8 = os_log_create("com.apple.isp", "device");
          }

          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            v12 = *(a2 + 8);
            *buf = 136315394;
            v20 = "SendSysConfigCalibrationDataByKey";
            v21 = 2080;
            v22 = v12;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s - Using %s from unit info plist\n", buf, 0x16u);
          }

          if (!v11)
          {
LABEL_34:
            v13 = IOServiceNameMatching("AppleH16CamIn");
            MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v13);
            v11 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", *(a2 + 24), kCFAllocatorDefault, 3u);
            if (!v11)
            {
              return 3758097084;
            }
          }

          Length = CFDataGetLength(v11);
          BytePtr = CFDataGetBytePtr(v11);
        }

        else
        {
          if (off_10041DCD8 == &_os_log_default)
          {
            off_10041DCD8 = os_log_create("com.apple.isp", "device");
          }

          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v20 = __str;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Loaded calibration file from override path: %s\n", buf, 0xCu);
          }

          v11 = 0;
        }

        v3 = 0;
        if (BytePtr && Length)
        {
          v3 = sub_10005D4E0(a1, *a2 | 0x80000000, BytePtr, Length, *(a2 + 4));
          if (off_10041DCD8 == &_os_log_default)
          {
            off_10041DCD8 = os_log_create("com.apple.isp", "device");
          }

          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            v15 = *(a2 + 8);
            *__str = 136315906;
            *&__str[4] = "SendSysConfigCalibrationDataByKey";
            *&__str[12] = 2080;
            *&__str[14] = v15;
            *&__str[22] = 2048;
            *&__str[24] = Length;
            LOWORD(v24) = 1024;
            *(&v24 + 2) = v3;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s - %s - length = %ld; status = %08x\n", __str, 0x26u);
          }
        }

        if (!v9 && BytePtr)
        {
          free(BytePtr);
        }

        if (v11)
        {
          CFRelease(v11);
        }
      }
    }
  }

  return v3;
}

unint64_t sub_10005E408(uint64_t a1, int a2, int a3)
{
  v4 = 0;
  result = 0;
  v6 = *(a1 + 4668);
  if (v6 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = *(a1 + 4668);
  }

  if (v6)
  {
    v8 = v7;
  }

  else
  {
    v8 = 6;
  }

  while (1)
  {
    if (result <= 5 && (v9 = *(a1 + 4304) + v4, *(v9 + 8)))
    {
      v10 = *(v9 + 16);
      if (v10 == a2)
      {
        return result;
      }
    }

    else
    {
      if (a2 == -1)
      {
        return result;
      }

      v10 = -1;
    }

    if (v10 == a3)
    {
      break;
    }

    ++result;
    v4 += 104;
    if (v8 == result)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

void sub_10005E480(uint64_t a1, uint64_t a2)
{
  if (off_10041DCD8 == &_os_log_default)
  {
    off_10041DCD8 = os_log_create("com.apple.isp", "device");
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315394;
    v4 = "fdrLogMessages";
    v5 = 2080;
    v6 = a2;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s - %s\n", &v3, 0x16u);
  }
}

uint64_t sub_10005E564(uint64_t a1, _DWORD *a2)
{
  v2 = 0;
  v3 = *(a1 + 4304);
  result = *(v3 + 648);
  for (i = (v3 + 16); ; i += 26)
  {
    if (*(i - 2))
    {
      if (*i == 1718776695 || *i == 1718775412)
      {
        break;
      }
    }

    if (++v2 == 6)
    {
      return result;
    }
  }

  *a2 = v2;
  return result;
}

BOOL sub_10005E5B8(uint64_t a1, _DWORD *a2)
{
  v2 = 0;
  v3 = *(a1 + 4304) + 16;
  v4 = 1;
  v5 = v3;
  while (1)
  {
    v6 = *v5;
    v5 += 26;
    if (v6 == 1718186595 && *(v3 - 8) == 1)
    {
      break;
    }

    v4 = v2 < 5;
    v3 = v5;
    if (++v2 == 6)
    {
      return 0;
    }
  }

  *a2 = v2;
  return v4;
}

uint64_t sub_10005E61C(uint64_t a1)
{
  output = 0;
  outputCnt = 1;
  result = *(a1 + 4344);
  if (result)
  {
    if (IOConnectCallScalarMethod(result, 0x53u, 0, 0, &output, &outputCnt))
    {
      v2 = 1;
    }

    else
    {
      v2 = output == 0;
    }

    return !v2;
  }

  return result;
}

uint64_t sub_10005E674(uint64_t a1, BOOL *a2)
{
  output = 0;
  outputCnt = 1;
  v2 = *(a1 + 4344);
  if (!v2)
  {
    return 3758097084;
  }

  v4 = IOConnectCallScalarMethod(v2, 0x5Cu, 0, 0, &output, &outputCnt);
  if (v4)
  {
    if (off_10041DCD8 == &_os_log_default)
    {
      off_10041DCD8 = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100083C9C();
    }
  }

  else
  {
    *a2 = output != 0;
  }

  return v4;
}

uint64_t sub_10005E740(uint64_t a1, void *outputStruct)
{
  v4 = 8;
  v2 = *(a1 + 4344);
  if (v2)
  {
    return IOConnectCallMethod(v2, 0x73u, 0, 0, 0, 0, 0, 0, outputStruct, &v4);
  }

  else
  {
    return 3758097084;
  }
}

uint64_t sub_10005E7A0(uint64_t a1, unsigned int a2, unsigned int a3, void *outputStruct)
{
  v4 = *(a1 + 4344);
  if (!v4)
  {
    return 3758097084;
  }

  input[0] = a2;
  input[1] = a3;
  v6 = 72;
  return IOConnectCallMethod(v4, 0x66u, input, 2u, 0, 0, 0, 0, outputStruct, &v6);
}

uint64_t sub_10005E838(uint64_t a1, _DWORD *a2)
{
  v2 = *(a1 + 4344);
  if (!v2)
  {
    return 3758097084;
  }

  output = 0;
  outputCnt = 1;
  result = IOConnectCallScalarMethod(v2, 0x22u, 0, 0, &output, &outputCnt);
  if (!result)
  {
    *a2 = output;
  }

  return result;
}

uint64_t sub_10005E8A8(uint64_t a1, _DWORD *a2)
{
  v2 = *(a1 + 4344);
  if (!v2)
  {
    return 3758097084;
  }

  output = 0;
  outputCnt = 1;
  result = IOConnectCallScalarMethod(v2, 0x23u, 0, 0, &output, &outputCnt);
  if (!result)
  {
    *a2 = output;
  }

  return result;
}

uint64_t sub_10005E918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  pthread_mutex_lock((a1 + 4352));
  if (*(a1 + 4344))
  {
    pthread_mutex_unlock((a1 + 4352));
    return 3758097093;
  }

  else
  {
    v7 = IOServiceOpen(*(a1 + 4336), mach_task_self_, 0x2Au, (a1 + 4344));
    v8 = *(a1 + 4344);
    if (v8)
    {
      v6 = v7;
    }

    else
    {
      v6 = 3758097084;
    }

    if (!v6)
    {
      v11 = 0;
      v6 = IOConnectCallScalarMethod(v8, 3u, &v11, 1u, 0, 0);
      if (!v6)
      {
        *(a1 + 56) = a2;
        *(a1 + 64) = a3;
        sub_10005E838(a1, (a1 + 4312));
        sub_10005E8A8(a1, (a1 + 80));
        v9 = sub_10005E674(a1, (a1 + 4288));
        if (v9)
        {
          v6 = v9;
          *(a1 + 4288) = 0;
        }

        else
        {
          v6 = sub_10005EA60(a1);
        }
      }
    }

    pthread_mutex_unlock((a1 + 4352));
  }

  return v6;
}

uint64_t sub_10005EA60(_DWORD *a1)
{
  task_info_outCnt = 8;
  v2 = getpid();
  if (proc_pidpath(v2, a1 + 37, 0x1000u) <= 0)
  {
    if (off_10041DCD8 == &_os_log_default)
    {
      off_10041DCD8 = os_log_create("com.apple.isp", "device");
    }

    v3 = 3758097084;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100083E9C();
    }
  }

  else if (task_info(mach_task_self_, 0xFu, a1 + 1061, &task_info_outCnt))
  {
    if (off_10041DCD8 == &_os_log_default)
    {
      off_10041DCD8 = os_log_create("com.apple.isp", "device");
    }

    v3 = 3758097084;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100083D20();
    }
  }

  else
  {
    if (off_10041DCD8 == &_os_log_default)
    {
      off_10041DCD8 = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_100083DA4((a1 + 37), a1 + 1061, a1);
    }

    return 0;
  }

  return v3;
}

uint64_t sub_10005EBC8(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 4344);
  if (!v2)
  {
    return 3758097084;
  }

  v4 = a2;
  return IOConnectCallScalarMethod(v2, 0, &v4, 1u, 0, 0);
}

uint64_t sub_10005EC44(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 4344);
  if (!v2)
  {
    return 3758097084;
  }

  v4 = a2;
  return IOConnectCallScalarMethod(v2, 1u, &v4, 1u, 0, 0);
}

uint64_t sub_10005ECC0(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 4344);
  if (!v2)
  {
    return 3758097084;
  }

  v4 = a2;
  return IOConnectCallScalarMethod(v2, 0x3Fu, &v4, 1u, 0, 0);
}

uint64_t sub_10005ED3C(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 4344);
  if (!v2)
  {
    return 3758097084;
  }

  v4 = a2;
  return IOConnectCallScalarMethod(v2, 0x40u, &v4, 1u, 0, 0);
}

uint64_t sub_10005EDB8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 4344);
  if (!v2)
  {
    return 3758097111;
  }

  v4 = a2;
  return IOConnectCallScalarMethod(v2, 0x60u, &v4, 1u, 0, 0);
}

uint64_t sub_10005EE30(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 4344);
  if (!v2)
  {
    return 3758097111;
  }

  v4 = a2;
  return IOConnectCallScalarMethod(v2, 0x61u, &v4, 1u, 0, 0);
}

uint64_t sub_10005EEA8(uint64_t a1, unsigned int a2)
{
  if (!*(a1 + 4344))
  {
    return 3758097111;
  }

  if (a2 >= 0xFFFF)
  {
    v3 = -1;
  }

  else
  {
    v3 = a2;
  }

  bzero(v6, 0x10uLL);
  v6[6] = v3;
  v6[2] = 1551;
  v4 = sub_10000BE84(a1, v6, 0x10u, 0, 0xFFFFFFFF);
  if (v4)
  {
    if (off_10041DCD8 == &_os_log_default)
    {
      off_10041DCD8 = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100083F20();
    }
  }

  return v4;
}

uint64_t sub_10005EF80(uint64_t a1, _WORD *a2, _WORD *a3)
{
  v3 = *(a1 + 4344);
  if (!v3)
  {
    return 3758097111;
  }

  output = 0;
  v10 = 0;
  outputCnt = 2;
  result = IOConnectCallScalarMethod(v3, 0x68u, 0, 0, &output, &outputCnt);
  v7 = v10;
  *a2 = output;
  *a3 = v7;
  return result;
}

void sub_10005F050(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 8u);
}

void sub_10005F070(void *a1)
{
  v2 = a1 + 1;
  v3 = a1[2];
  if (v3 != a1 + 1)
  {
    do
    {
      v4 = v3[2];
      if (*(v4 + 8) != 1 || (xpc_release(*v4), (v4 = v3[2]) != 0))
      {
        free(*(v4 + 24));
        operator delete();
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  sub_10000C948(v2);
  v5 = a1[6];
  if (v5)
  {
    os_release(v5);
    a1[6] = 0;
  }
}

void sub_10005F118(uint64_t a1, uint64_t a2, const __CFString *a3)
{
  H16ISPRgbJRunner::writeDictionary(*(a1 + 32), *(a1 + 40), a3);
  CFRelease(*(a1 + 40));
  v4 = *(a1 + 32);

  CFRelease(v4);
}

void sub_10005F160(uint64_t a1, uint64_t a2, const __CFString *a3)
{
  H16ISPRgbJRunner::writeData(*(a1 + 32), *(a1 + 40), a3);
  CFRelease(*(a1 + 40));
  v4 = *(a1 + 32);

  CFRelease(v4);
}

uint64_t sub_10005F1BC(uint64_t a1)
{
  if (os_variant_allows_internal_security_policies() && (os_variant_has_internal_content() & 1) != 0)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current - *(a1 + 1032) >= 300.0)
    {
      *(a1 + 1032) = Current;
      sub_100022468(&v21, "/private/var/mobile/Library/Logs/CrashReporter/appleh16camerad/");
      sub_100022468(v19, "FrameReceiverTimeout");
      sub_10002342C(&v21, v19, v17);
      v6 = off_10041DCE0;
      if (off_10041DCE0 == &_os_log_default)
      {
        v6 = os_log_create("com.apple.isp", "general");
        off_10041DCE0 = v6;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1000845B0();
      }

      if (v18 >= 0)
      {
        v7 = v17;
      }

      else
      {
        v7 = v17[0];
      }

      v12[0] = _NSConcreteStackBlock;
      v12[1] = 1174405120;
      v12[2] = sub_10005F640;
      v12[3] = &unk_1000AC758;
      if (SHIBYTE(v22) < 0)
      {
        sub_10002F20C(&v13, v21, *(&v21 + 1));
      }

      else
      {
        v13 = v21;
        v14 = v22;
      }

      if (SHIBYTE(v20) < 0)
      {
        sub_10002F20C(&__p, v19[0], v19[1]);
      }

      else
      {
        __p = *v19;
        v16 = v20;
      }

      v8 = sub_10006C0EC(v7, "500ms frame receiver timeout", v12);
      v9 = off_10041DCE0;
      if (off_10041DCE0 == &_os_log_default)
      {
        v9 = os_log_create("com.apple.isp", "general");
        off_10041DCE0 = v9;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = "failed";
        if (v8)
        {
          v10 = "started";
        }

        *buf = 136315138;
        v24 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "tailspin %s\n", buf, 0xCu);
      }

      if (SHIBYTE(v16) < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v14) < 0)
      {
        operator delete(v13);
      }

      if (v18 < 0)
      {
        operator delete(v17[0]);
      }

      if (SHIBYTE(v20) < 0)
      {
        operator delete(v19[0]);
      }

      if (SHIBYTE(v22) < 0)
      {
        operator delete(v21);
      }
    }

    else
    {
      v3 = off_10041DCE0;
      if (off_10041DCE0 == &_os_log_default)
      {
        v3 = os_log_create("com.apple.isp", "general");
        off_10041DCE0 = v3;
      }

      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        sub_1000845EC();
      }
    }

    return 0;
  }

  else
  {
    v4 = off_10041DCE0;
    if (off_10041DCE0 == &_os_log_default)
    {
      v4 = os_log_create("com.apple.isp", "general");
      off_10041DCE0 = v4;
    }

    v5 = 3758097095;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100084530();
    }
  }

  return v5;
}

void sub_10005F534(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (*(v37 - 81) < 0)
  {
    operator delete(*(v37 - 104));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10005F5B8(void *a1)
{
  result = sub_10003EBE8(*(a1[5] + 920), a1[6] + 8);
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

uint64_t sub_10005F604(void *a1)
{
  result = sub_10003ED4C(*(a1[5] + 920), a1[6] + 8);
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

void sub_10005F640()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v3 = v0;
  v4 = &unk_10041D000;
  v5 = off_10041DCE0;
  if (off_10041DCE0 == &_os_log_default)
  {
    v5 = os_log_create("com.apple.isp", "general");
    off_10041DCE0 = v5;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "failed";
    if (v2)
    {
      v6 = "succeeded";
    }

    *buf = 136315138;
    *&buf[4] = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "tailspin %s\n", buf, 0xCu);
  }

  if (v2)
  {
    v7 = (v3 + 32);
    if (*(v3 + 55) < 0)
    {
      v7 = *v7;
    }

    v8 = (v3 + 56);
    if (*(v3 + 79) < 0)
    {
      v8 = *v8;
    }

    __dst = 0;
    __p = 0;
    v44 = 0;
    v9 = strnlen(v8, 0x400uLL);
    v10 = opendir(v7);
    if (v10)
    {
      while (1)
      {
        v11 = readdir(v10);
        v12 = v11;
        if (!v11)
        {
          break;
        }

        snprintf(__str, 0x400uLL, "%s%s", v7, v11->d_name);
        if (v12->d_type == 8 && !strncmp(v12->d_name, v8, v9) && !lstat(__str, &v38))
        {
          bzero(&__src[1], 0x400uLL);
          __src[0] = v38.st_mtimespec.tv_sec;
          strncpy(&__src[1], v12->d_name, 0x400uLL);
          v13 = __dst;
          if (__dst >= v44)
          {
            v15 = __p;
            v16 = __dst - __p;
            v17 = 0x80FE03F80FE03F81 * ((__dst - __p) >> 3) + 1;
            if (v17 > 0x3F80FE03F80FE0)
            {
              sub_1000251B8();
            }

            if (0x1FC07F01FC07F02 * ((v44 - __p) >> 3) > v17)
            {
              v17 = 0x1FC07F01FC07F02 * ((v44 - __p) >> 3);
            }

            if (0x80FE03F80FE03F81 * ((v44 - __p) >> 3) >= 0x1FC07F01FC07F0)
            {
              v18 = 0x3F80FE03F80FE0;
            }

            else
            {
              v18 = v17;
            }

            if (v18)
            {
              sub_100060F18(&__p, v18);
            }

            v19 = (8 * ((__dst - __p) >> 3));
            memcpy(v19, __src, 0x408uLL);
            v14 = v19 + 1032;
            v20 = &v19[-v16];
            memcpy(v20, v15, v16);
            v21 = __p;
            __p = v20;
            __dst = v14;
            v44 = 0;
            if (v21)
            {
              operator delete(v21);
            }

            v4 = &unk_10041D000;
          }

          else
          {
            memcpy(__dst, __src, 0x408uLL);
            v14 = v13 + 1032;
          }

          __dst = v14;
          sub_100060F74(__p, v14, 0x80FE03F80FE03F81 * ((v14 - __p) >> 3));
          if (0x80FE03F80FE03F81 * ((__dst - __p) >> 3) >= 0xB)
          {
            memcpy(v39, __p, sizeof(v39));
            snprintf(__str, 0x400uLL, "%s%s", v7, &v39[8]);
            v23 = remove(__str, v22);
            v24 = *(v4 + 412);
            if (v23)
            {
              if (v24 == &_os_log_default)
              {
                v24 = os_log_create("com.apple.isp", "general");
                *(v4 + 412) = v24;
              }

              if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "purgeTailspins";
                *&buf[12] = 2080;
                *&buf[14] = __str;
                _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%s - Failed to purge %s\n", buf, 0x16u);
              }
            }

            else
            {
              if (v24 == &_os_log_default)
              {
                v24 = os_log_create("com.apple.isp", "general");
                *(v4 + 412) = v24;
              }

              if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
              {
                *buf = 136315394;
                *&buf[4] = "purgeTailspins";
                *&buf[12] = 2080;
                *&buf[14] = __str;
                _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%s - Successfully purged %s\n", buf, 0x16u);
              }
            }

            v25 = __dst;
            if (__dst - __p >= 1033)
            {
              v26 = 0x80FE03F80FE03F81 * ((__dst - __p) >> 3);
              memcpy(buf, __p, sizeof(buf));
              v27 = 0;
              v37 = __p;
              v28 = __p;
              do
              {
                v29 = &v28[1032 * v27 + 1032];
                v30 = (2 * v27) | 1;
                v31 = 2 * v27 + 2;
                if (v31 < v26)
                {
                  v32 = *(v29 + 129);
                  v33 = *v29 <= v32;
                  v34 = *v29 <= v32 ? 0 : 1032;
                  v29 += v34;
                  if (!v33)
                  {
                    v30 = v31;
                  }
                }

                memcpy(v28, v29, 0x408uLL);
                v28 = v29;
                v27 = v30;
              }

              while (v30 <= ((v26 - 2) >> 1));
              if (v29 == v25 - 1032)
              {
                memcpy(v29, buf, 0x408uLL);
              }

              else
              {
                memcpy(v29, v25 - 1032, 0x408uLL);
                memcpy(v25 - 1032, buf, 0x408uLL);
                sub_100060F74(v37, (v29 + 1032), 0x80FE03F80FE03F81 * ((v29 + 1032 - v37) >> 3));
                v25 = __dst;
              }

              v4 = &unk_10041D000;
            }

            __dst = v25 - 1032;
          }
        }
      }

      closedir(v10);
    }

    else
    {
      v35 = off_10041DCE0;
      if (off_10041DCE0 == &_os_log_default)
      {
        v35 = os_log_create("com.apple.isp", "general");
        off_10041DCE0 = v35;
      }

      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = __error();
        sub_1000846FC(v7, v36, buf, v35);
      }
    }

    if (__p)
    {
      __dst = __p;
      operator delete(__p);
    }
  }
}

_BYTE *sub_10005FCB8(_BYTE *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 55) < 0)
  {
    result = sub_10002F20C(result + 32, *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v4 = *(a2 + 32);
    *(result + 6) = *(a2 + 48);
    *(result + 2) = v4;
  }

  if (*(a2 + 79) < 0)
  {
    return sub_10002F20C(v3 + 56, *(a2 + 56), *(a2 + 64));
  }

  v5 = *(a2 + 56);
  *(v3 + 9) = *(a2 + 72);
  *(v3 + 56) = v5;
  return result;
}

void sub_10005FD2C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  _Unwind_Resume(exception_object);
}

void sub_10005FD48(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    v2 = *(a1 + 32);

    operator delete(v2);
  }
}

uint64_t sub_10005FDA0(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 920);
  if (v1)
  {
    v3 = 2;
  }

  else
  {
    v3 = 3;
  }

  return sub_10003E758(v2, v3);
}

uint64_t sub_10005FDBC(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 920);
  if (v1)
  {
    v3 = 4;
  }

  else
  {
    v3 = 5;
  }

  return sub_10003E758(v2, v3);
}

void sub_10005FDD8(uint64_t a1, void *a2)
{
  if (a2 == &_xpc_error_termination_imminent)
  {
    v3 = off_10041DCE8;
    if (off_10041DCE8 == &_os_log_default)
    {
      v3 = os_log_create("com.apple.isp", "daemon");
      off_10041DCE8 = v3;
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100084B90();
    }
  }

  else if (a2 == &_xpc_error_connection_invalid)
  {
    v4 = off_10041DCE8;
    if (off_10041DCE8 == &_os_log_default)
    {
      v4 = os_log_create("com.apple.isp", "daemon");
      off_10041DCE8 = v4;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100084B54();
    }
  }

  else if (a2 == &_xpc_error_connection_interrupted)
  {
    v2 = off_10041DCE8;
    if (off_10041DCE8 == &_os_log_default)
    {
      v2 = os_log_create("com.apple.isp", "daemon");
      off_10041DCE8 = v2;
    }

    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_100084B18();
    }
  }
}

uint64_t sub_10005FF14(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) == 3)
  {
    v2 = off_10041DCE8;
    if (off_10041DCE8 == &_os_log_default)
    {
      v2 = os_log_create("com.apple.isp", "daemon");
      off_10041DCE8 = v2;
    }

    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v4 = 136315138;
      v5 = "collectDiagState";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s - Collecting ISP Sysdiagnose State\n", &v4, 0xCu);
      v2 = off_10041DCE8;
    }

    if (v2 == &_os_log_default)
    {
      v2 = os_log_create("com.apple.isp", "daemon");
      off_10041DCE8 = v2;
    }

    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v4 = 136315394;
      v5 = "collectDiagState";
      v6 = 2080;
      v7 = "4.109";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s - Assistant Version %s\n", &v4, 0x16u);
    }
  }

  return 0;
}

uint64_t sub_10006007C(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (!v2)
  {
    return 3758097101;
  }

  if (sub_10005D09C(v2))
  {
    return 0;
  }

  if (sub_100002970(*(a1 + 72)))
  {
    do
    {
      usleep(0x186A0u);
      v4 = off_10041DCE8;
      if (off_10041DCE8 == &_os_log_default)
      {
        v4 = os_log_create("com.apple.isp", "daemon");
        off_10041DCE8 = v4;
      }

      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Camera powered on...waiting\n", v7, 2u);
      }
    }

    while ((sub_100002970(*(a1 + 72)) & 1) != 0);
  }

  *(a1 + 48) = os_transaction_create();
  v3 = sub_10005981C(*(a1 + 72));
  os_release(*(a1 + 48));
  if (v3)
  {
    v5 = off_10041DCE8;
    if (off_10041DCE8 == &_os_log_default)
    {
      v5 = os_log_create("com.apple.isp", "daemon");
      off_10041DCE8 = v5;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100084C40();
    }
  }

  return v3;
}

uint64_t sub_1000601F0(uint64_t a1)
{
  kdebug_trace();
  if (sub_10002EA6C((a1 + 64), sub_10005F068, 0) || (v5 = *(a1 + 64)) == 0)
  {
    v2 = off_10041DCE8;
    if (off_10041DCE8 == &_os_log_default)
    {
      v2 = os_log_create("com.apple.isp", "daemon");
      off_10041DCE8 = v2;
    }

    v3 = 3758097088;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_100084E10();
    }
  }

  else
  {
    if (CFArrayGetCount(*v5))
    {
      v6 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(**(a1 + 64), v6);
        *(a1 + 72) = ValueAtIndex;
        if (!sub_10005E918(ValueAtIndex, sub_10000A308, a1))
        {
          break;
        }

        *(a1 + 72) = 0;
        ++v6;
      }

      while (v6 < CFArrayGetCount(**(a1 + 64)));
    }

    if (*(a1 + 72))
    {
      v3 = sub_10006007C(a1);
      if (!v3)
      {
        bzero(v10, 0x18uLL);
        v8 = *(a1 + 72);
        v10[0] = a1 + 88;
        v10[1] = v8;
        v10[2] = 2;
        sub_100035A20();
      }
    }

    else
    {
      v9 = off_10041DCE8;
      if (off_10041DCE8 == &_os_log_default)
      {
        v9 = os_log_create("com.apple.isp", "daemon");
        off_10041DCE8 = v9;
      }

      v3 = 3758097088;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100084D9C();
      }
    }
  }

  (*(*a1 + 24))(a1);
  kdebug_trace();
  return v3;
}

uint64_t sub_100060628(void *a1)
{
  v2 = a1[13];
  if (v2)
  {
    sub_100034C48(v2);
    operator delete();
  }

  v3 = a1[11];
  if (v3)
  {
    sub_100035530(v3);
    sub_100035C88(a1[11]);
  }

  if (a1[115])
  {
    v4 = a1[117];
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = sub_1000607AC;
    block[3] = &unk_1000AC808;
    block[4] = a1;
    dispatch_sync(v4, block);
  }

  v5 = a1[9];
  if (v5)
  {
    sub_100056798(v5);
    a1[9] = 0;
  }

  v6 = a1[10];
  if (v6)
  {
    sub_10004E624(v6);
    operator delete();
  }

  v7 = a1[14];
  if (v7)
  {
    sub_1000198FC(v7);
    operator delete();
  }

  if (a1[15])
  {
    os_state_remove_handler();
    a1[15] = 0;
  }

  v8 = a1[8];
  if (v8)
  {
    sub_10002EC34(v8);
  }

  v9 = a1[128];
  if (v9)
  {
    sub_10002E484(v9);
    operator delete();
  }

  return 0;
}

uint64_t sub_1000607AC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 928);
  if (v2)
  {
    *(v1 + 1008) = 0;
    sub_10000CB90(v2);
    sub_10000CC18(*(v1 + 928));
  }

  result = *(v1 + 920);
  if (result)
  {
    sub_10000CCF8();
    operator delete();
  }

  *(v1 + 920) = 0;
  return result;
}

uint64_t sub_100060808(uint64_t a1)
{
  v2 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, &_dispatch_main_q);
  *(a1 + 1000) = v2;
  if (v2)
  {
    dispatch_source_set_event_handler(v2, &stru_1000AC848);
    dispatch_resume(*(a1 + 1000));
    mach_service = xpc_connection_create_mach_service(*(a1 + 944), *(a1 + 40), 1uLL);
    *(a1 + 32) = mach_service;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 0x40000000;
    handler[2] = sub_100060A14;
    handler[3] = &unk_1000AC868;
    handler[4] = a1;
    xpc_connection_set_event_handler(mach_service, handler);
    xpc_connection_activate(*(a1 + 32));
    v6 = *(a1 + 40);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 0x40000000;
    v7[2] = sub_100060AFC;
    v7[3] = &unk_1000AC888;
    v7[4] = a1;
    xpc_set_event_stream_handler("com.apple.iokit.matching", v6, v7);
    dispatch_main();
  }

  v3 = off_10041DCE8;
  if (off_10041DCE8 == &_os_log_default)
  {
    v3 = os_log_create("com.apple.isp", "daemon");
    off_10041DCE8 = v3;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_100084E84();
  }

  return 3758097086;
}

void sub_10006098C(id a1)
{
  v1 = off_10041DCE8;
  if (off_10041DCE8 == &_os_log_default)
  {
    v1 = os_log_create("com.apple.isp", "daemon");
    off_10041DCE8 = v1;
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    *v2 = 0;
    _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Received SIGTERM - exiting\n", v2, 2u);
  }

  exit(0);
}

void sub_100060A14(uint64_t a1, xpc_object_t object)
{
  v3 = *(a1 + 32);
  if (xpc_get_type(object) == &_xpc_type_connection)
  {
    v5 = *(*v3 + 32);

    v5(v3, object);
  }

  else if (xpc_get_type(object) == &_xpc_type_error)
  {
    v4 = off_10041DCE8;
    if (off_10041DCE8 == &_os_log_default)
    {
      v4 = os_log_create("com.apple.isp", "daemon");
      off_10041DCE8 = v4;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100084EC0();
    }
  }
}

void sub_100060AFC(uint64_t a1, xpc_object_t object)
{
  v3 = *(a1 + 32);
  if (xpc_get_type(object) == &_xpc_type_dictionary)
  {
    v5 = *(*v3 + 72);

    v5(v3, object);
  }

  else
  {
    type = xpc_get_type(object);
    if (type == &_xpc_type_error)
    {

      sub_10005FDD8(type, object);
    }
  }
}

uint64_t sub_100060BB4(uint64_t a1)
{
  *a1 = off_1000AC8B8;
  *(a1 + 8) = a1 + 8;
  *(a1 + 16) = a1 + 8;
  *(a1 + 24) = 0;
  *(a1 + 1008) = 0;
  *(a1 + 48) = 0;
  *(a1 + 1020) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 920) = 0u;
  *(a1 + 944) = 0u;
  *(a1 + 960) = 0u;
  *(a1 + 976) = 0u;
  *(a1 + 992) = 0;
  *(a1 + 936) = dispatch_queue_create(0, 0);
  bzero((a1 + 128), 0x318uLL);
  *(a1 + 944) = "com.apple.appleh16camerad";
  *(a1 + 952) = "com.apple.appleh16camerad.writer";
  *(a1 + 960) = "com.apple.appleh16camerad.assistant_active";
  *(a1 + 968) = "com.apple.appleh16camerad.launch";
  *(a1 + 976) = "com.apple.appleh16camerad.destroy";
  *(a1 + 984) = "com.apple.appleh16camerad.firmware_loading";
  *(a1 + 992) = "com.apple.appleh16camerad.photometerManagerSyncQueue";
  *(a1 + 1024) = 0;
  *(a1 + 1000) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = dispatch_queue_create("com.apple.appleh16camerad", 0);
  *(a1 + 56) = dispatch_queue_create(*(a1 + 952), 0);
  byte_10041DF80 = sub_10002ECA4(@"EnableHawking", @"com.apple.coremedia", 1) != 0;
  v2 = off_10041DCE8;
  if (off_10041DCE8 == &_os_log_default)
  {
    v2 = os_log_create("com.apple.isp", "daemon");
    off_10041DCE8 = v2;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Creating H16ISP services assistant\n", v4, 2u);
  }

  return a1;
}

uint64_t sub_100060D80(uint64_t a1)
{
  *a1 = off_1000AC8B8;
  v2 = off_10041DCE8;
  if (off_10041DCE8 == &_os_log_default)
  {
    v2 = os_log_create("com.apple.isp", "daemon");
    off_10041DCE8 = v2;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Destroying H16ISP services assistant\n", v7, 2u);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    xpc_connection_cancel(v3);
    xpc_release(*(a1 + 32));
  }

  v4 = *(a1 + 1000);
  if (v4)
  {
    dispatch_source_cancel(v4);
    dispatch_release(*(a1 + 1000));
  }

  (*(*a1 + 24))(a1);
  dispatch_release(*(a1 + 40));
  v5 = *(a1 + 936);
  if (v5)
  {
    dispatch_sync(v5, &stru_1000AC928);
    dispatch_release(*(a1 + 936));
  }

  dispatch_sync(*(a1 + 56), &stru_1000AC968);
  dispatch_release(*(a1 + 56));
  sub_10000C948((a1 + 8));
  return a1;
}

void sub_100060EE0(uint64_t a1)
{
  sub_100060D80(a1);

  operator delete();
}

void sub_100060F18(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x3F80FE03F80FE1)
  {
    operator new();
  }

  sub_1000196F4();
}

char *sub_100060F74(char *result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - 2;
  if (a3 >= 2)
  {
    v4 = result;
    v5 = v3 >> 1;
    v6 = &result[1032 * (v3 >> 1)];
    v7 = (a2 - 1032);
    v8 = *(a2 - 1032);
    if (*v6 > v8)
    {
      memcpy(__dst, (a2 - 1024), sizeof(__dst));
      do
      {
        v9 = v7;
        v7 = v6;
        memcpy(v9, v6, 0x408uLL);
        if (!v5)
        {
          break;
        }

        v5 = (v5 - 1) >> 1;
        v6 = &v4[1032 * v5];
      }

      while (*v6 > v8);
      *v7 = v8;
      return memcpy(v7 + 8, __dst, 0x400uLL);
    }
  }

  return result;
}

double sub_100061094(double *a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v8 = (a3 - a2) / a6 - (a4 - a2) / (a6 + a7);
  v9 = (a4 - a3) / a7;
  *&v8 = v9 + v8;
  v10 = (a5 - a4) / a8 + v9 - (a5 - a3) / (a7 + a8);
  *&v8 = *&v8 * a7;
  v11 = v10 * a7;
  v12 = *&v8;
  v13 = v11;
  *a1 = a3;
  a1[1] = v12;
  v14 = a4 * 3.0 + a3 * -3.0 + v12 * -2.0 - v13;
  result = a4 * -2.0 + a3 * 2.0 + v12 + v13;
  a1[2] = v14;
  a1[3] = result;
  return result;
}

void sub_100061198(double *a1, double *a2, double *a3, double a4, double a5)
{
  v10[0] = sub_100061138(a1, a3, a5);
  v10[1] = sub_100061138(a1 + 4, a3, a5);
  v10[2] = sub_100061138(a1 + 8, a3, a5);
  v10[3] = sub_100061138(a1 + 12, a3, a5);
  sub_100061138(v10, a2, a4);
}

void sub_100061268(unsigned __int16 *a1, long double *a2, unsigned int a3)
{
  v3 = a1[7];
  if (a1[7])
  {
    v6 = 0;
    v7 = vcvtd_n_f64_u32(*a1 + 1, 1uLL) + a1[8];
    v8 = a1[6];
    v9 = vcvtd_n_f64_u32(a1[1] + 1, 1uLL) + a1[9];
    v10 = 0.0;
    do
    {
      if (a1[6])
      {
        v11 = a1[4];
        v12 = (a1[5] + v6 * a1[3]) - v9;
        v13 = v12 * v12;
        v14 = a1[6];
        do
        {
          v15 = sqrt((v11 - v7) * (v11 - v7) + v13);
          if (v15 > v10)
          {
            v10 = v15;
          }

          v11 += a1[2];
          --v14;
        }

        while (v14);
      }

      ++v6;
    }

    while (v6 != v3);
    v16 = pow(a3 / 100.0, 0.25);
    v17 = acos(v16);
    v18 = 0;
    v19 = v10 / tan(v17);
    do
    {
      if (v8)
      {
        v20 = a1[4];
        v21 = a1[2];
        v22 = (a1[5] + v18 * a1[3]) - v9;
        v23 = v22 * v22;
        v24 = v8;
        v25 = a2;
        do
        {
          v26 = atan(sqrt((v20 - v7) * (v20 - v7) + v23) / v19);
          v27 = cos(v26);
          *v25++ = pow(v27, 4.0);
          v20 += v21;
          --v24;
        }

        while (v24);
      }

      ++v18;
      a2 += v8;
    }

    while (v18 != v3);
  }
}

uint64_t sub_1000613FC(uint64_t result, uint64_t a2, unsigned __int16 *a3, _WORD *a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, float a12)
{
  v15 = a3[7];
  if (!a3[7])
  {
    return result;
  }

  v16 = 0;
  v17 = a3[3];
  v18 = a3[2];
  v19 = a3[5];
  v20 = a4 + 28;
  v21 = a4 + 170;
  v22 = a3[4];
  v23 = a3[6];
  do
  {
    if (!v23)
    {
      goto LABEL_31;
    }

    v24 = 0;
    v25 = (v19 + v16 * v17);
    do
    {
      v26 = (v22 + v24 * v18);
      v27 = a4[20];
      if (a4[20])
      {
        v28 = 0;
        LOWORD(a12) = *a4;
        a12 = LODWORD(a12);
        while (v26 >= (*&v20[2 * v28] * a12))
        {
          if (v27 == ++v28)
          {
            v29 = a4[20];
            goto LABEL_12;
          }
        }

        v29 = v28;
      }

      else
      {
        v29 = 0;
      }

LABEL_12:
      v30 = (v29 - 1);
      v31 = a4[21];
      LOWORD(a12) = a4[1];
      v32 = LODWORD(a12);
      if (a4[21])
      {
        v33 = 0;
        while (v25 >= (*&v21[2 * v33] * v32))
        {
          if (v31 == ++v33)
          {
            LOWORD(v33) = a4[21];
            break;
          }
        }

        if (!v29)
        {
          v30 = 0.0;
        }

        if (v33)
        {
          v34 = (v33 - 1);
          goto LABEL_24;
        }
      }

      else if (!v29)
      {
        v30 = 0.0;
      }

      v34 = 0.0;
LABEL_24:
      if (v30 >= (v27 - 2))
      {
        v30 = (v27 - 2);
      }

      v35 = (v31 - 2);
      v36 = vcvtmd_u64_f64(v30);
      if (v34 >= v35)
      {
        v37 = v35;
      }

      else
      {
        v37 = v34;
      }

      v38 = vcvtmd_u64_f64(v37);
      v39 = v36 + v38 * v27;
      LOBYTE(v37) = *(a2 + v39);
      LOBYTE(v12) = *(a2 + v39 + 1);
      v12 = (*&v12 + -128.0) * 0.125 * 0.0078125 + 1.0;
      v40 = v36 + (v38 + 1) * v27;
      LOBYTE(v13) = *(a2 + v40);
      LOBYTE(v14) = *(a2 + v40 + 1);
      v41 = *&v14;
      v42 = (v41 + -128.0) * 0.125 * 0.0078125 + 1.0;
      LOWORD(v41) = *a4;
      *&v41 = LODWORD(v41);
      v43 = roundf(*&v20[2 * v36] * *&v41);
      v44 = roundf(*&v21[2 * v38] * v32);
      v14 = roundf(*&v20[2 * v36 + 2] * *&v41);
      a12 = roundf(*&v21[2 * v38 + 2] * v32);
      v45 = v26 - v43;
      v46 = v14 - v26;
      v47 = ((*&v13 + -128.0) * 0.125 * 0.0078125 + 1.0) * v46 + v45 * v42;
      v13 = v45 + v46;
      v48 = fmax(fmin(((a12 - v25) * ((((*&v37 + -128.0) * 0.125 * 0.0078125 + 1.0) * v46 + v45 * v12) / (v45 + v46)) + (v25 - v44) * (v47 / (v45 + v46))) / (v25 - v44 + a12 - v25), 2.0), 0.0);
      HIWORD(a12) = 0;
      *(result + 2 * (v24 + v23 * v16)) = llround(fmin(v48 * 4096.0, 65535.0));
      ++v24;
      v23 = a3[6];
    }

    while (v24 < v23);
    v15 = a3[7];
LABEL_31:
    ++v16;
  }

  while (v16 < v15);
  return result;
}

uint64_t sub_100061688(uint64_t result, unsigned __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, unsigned int a7, int a8)
{
  v8 = *(a5 + 14);
  if (*(a5 + 14))
  {
    v9 = 0;
    v10 = 0;
    v11 = *(a5 + 12);
    do
    {
      if (v11)
      {
        for (i = 0; i < v11; ++i)
        {
          v13 = i + v10 * v11;
          v14 = 1 << a6;
          if (a8 != 2)
          {
            LOWORD(v14) = llround(fmin(*(a3 + 8 * v13) / *(a4 + 8 * v13) * (1 << a6), a7));
          }

          *(result + 2 * v13) = v14;
          if (v14 > v9)
          {
            v9 = v14;
          }

          v11 = *(a5 + 12);
        }

        v8 = *(a5 + 14);
      }

      ++v10;
    }

    while (v10 < v8);
  }

  else
  {
    v9 = 0;
  }

  *a2 = v9;
  return result;
}

uint64_t sub_100061720(uint64_t result, unsigned __int16 *a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v6 = *(a4 + 14);
  if (*(a4 + 14))
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = *(a4 + 12);
    do
    {
      if (v10)
      {
        v11 = 0;
        do
        {
          v12 = v11 + v7 * v10;
          LOWORD(a6) = *(result + 2 * v12);
          HIWORD(v13) = 17792;
          LOWORD(v13) = *(a3 + 2 * v12);
          a6 = fmin(((LODWORD(a6) * 4096.0) / v13), 65535.0);
          v14 = llround(a6);
          *(result + 2 * v12) = v14;
          if (v9 <= v14)
          {
            v9 = v14;
          }

          v10 = *(a4 + 12);
          ++v11;
        }

        while (v11 < v10);
        v6 = *(a4 + 14);
      }

      ++v8;
      ++v7;
    }

    while (v8 < v6);
  }

  else
  {
    v9 = 0;
  }

  *a2 = v9;
  return result;
}

uint64_t sub_1000617C0(uint64_t result, unsigned __int16 *a2, uint64_t a3, uint64_t a4, char a5)
{
  v5 = *(a4 + 14);
  if (*(a4 + 14))
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = *(a4 + 12);
    do
    {
      if (v9)
      {
        v10 = 0;
        do
        {
          v11 = v10 + v6 * v9;
          v12 = llround(fmin(1.0 / *(a3 + 8 * v11) * (1 << a5), 65535.0));
          *(result + 2 * v11) = v12;
          if (v7 <= v12)
          {
            v7 = v12;
          }

          v9 = *(a4 + 12);
          ++v10;
        }

        while (v10 < v9);
        v5 = *(a4 + 14);
      }

      ++v8;
      ++v6;
    }

    while (v8 < v5);
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}