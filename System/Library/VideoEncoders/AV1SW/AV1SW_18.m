unint64_t sub_277A31A30(unint64_t result, uint64_t a2, double a3, double a4, __n128 a5)
{
  v5 = result + 643800;
  v6 = *(result + 643800);
  if (v6 < 1)
  {
    return result;
  }

  v7 = 0;
  v8 = result + 395192;
  v24 = (result + 245664);
  v9 = *result;
  v10 = *result + 40960;
  v11 = a2;
  v25 = *(result + 246152) * *(result + 246148);
  v26 = a2;
  v12 = *(result + 643804);
  a5.n128_u32[0] = 1.0;
  do
  {
    if (v12 < 1)
    {
      goto LABEL_25;
    }

    v13 = *(v5 + 336);
    v14 = v12;
    v15 = (v13 + 13176 * (v12 * v7) + 13096);
    do
    {
      *v15 = *(v15 - 2);
      v15 += 1647;
      --v14;
    }

    while (v14);
    v16 = 0;
    v17 = *(v13 + 13176 * (v12 * v7 + v12 - 1) + 13096);
    do
    {
      v18 = *(v5 + 336) + 13176 * (v16 + v7 * v12);
      *(v18 + 13104) = v17;
      v19 = *(v18 + 13096);
      if (a2)
      {
        a5.n128_f32[0] = v19 / v11;
      }

      *(v18 + 8824) = vcvtq_s64_f64(vcvtq_f64_f32(vmul_n_f32(vcvt_f32_f64(vcvtq_f64_s64(*(v9 + 44136))), a5.n128_f32[0])));
      v20 = (a5.n128_f32[0] * *(v10 + 3192));
      *(v18 + 8840) = v20;
      v21 = *(v18 + 9056);
      if (v21 >= v20)
      {
        v21 = v20;
      }

      *(v18 + 9056) = v21;
      if (*(v18 + 9024) < v20)
      {
        v20 = *(v18 + 9024);
      }

      *(v18 + 9024) = v20;
      v22 = *(v8 + 184) / *(v18 + 13072);
      *(v18 + 13112) = v22;
      *(v18 + 120) = llround(v19 / v22);
      *(v18 + 128) = *v8;
      *(v18 + 248) = *(v8 + 120);
      *(v18 + 176) = dword_277BFB060[*(v18 + 13124)];
      *(v18 + 180) = dword_277BFB060[*(v18 + 13128)];
      if (*(v8 + 176))
      {
        *(v18 + 176) = *(v8 + 48);
      }

      if (!v16 && *v5 >= 2)
      {
        v23 = *(v18 + 13144);
        v27 = a5;
        if (v23)
        {
          if (*(v5 + 8) == *v5)
          {
            goto LABEL_23;
          }

          *(v18 + 13136) = 0;
          *(v18 + 13152) = 0;
          *(v18 + 13160) = 0;
          free(*(v23 - 8));
        }

        else
        {
          *(v18 + 13136) = 0;
          *(v18 + 13152) = 0;
          *(v18 + 13160) = 0;
        }

        result = sub_2779724A8(v25, 1uLL);
        *(v18 + 13144) = result;
        a2 = v26;
        a5 = v27;
        if (!result)
        {
          result = sub_2779F5C10(*v24, 2, "Failed to allocate lc->map");
          a5 = v27;
          a2 = v26;
        }
      }

LABEL_23:
      v12 = *(v5 + 4);
      ++v16;
    }

    while (v16 < v12);
    v6 = *v5;
LABEL_25:
    ++v7;
  }

  while (v7 < v6);
  return result;
}

uint64_t sub_277A31CBC(uint64_t result)
{
  v1 = *(result + 643796);
  v2 = *(result + 644136) + 13176 * (v1 + *(result + 643804) * *(result + 643792));
  v3 = *(result + 395376);
  v4 = v3 / *(v2 + 13072);
  *(v2 + 13112) = v4;
  v5 = *(v2 + 13096);
  v6 = llround(v5 / v4);
  *(v2 + 120) = v6;
  *(v2 + 128) = *(result + 395192);
  if (v1)
  {
    v7 = v3 / *(v2 - 104);
    if (v4 > v7)
    {
      v6 = llround((v5 - *(v2 - 96)) / (v4 - v7));
    }
  }

  *(v2 + 13120) = v6;
  return result;
}

void *sub_277A31D4C(uint64_t *a1)
{
  v2 = a1 + 80474;
  v3 = a1 + 57929;
  v4 = a1 + 395108;
  v5 = a1 + 33905;
  v6 = *a1;
  v7 = a1[80517] + 13176 * (*(a1 + 160949) + *(a1 + 160951) * *(a1 + 160948));
  v8 = *(a1 + 395108);
  v9 = *(a1 + 98794);
  v10 = a1[49396];
  v11 = *(a1 + 98806);
  v12 = *(a1 + 98808);
  memcpy(a1 + 49383, v7, 0x138uLL);
  result = memcpy((v6 + 35624), (v7 + 312), 0x31D8uLL);
  *v5 = *(v7 + 13096);
  v3[24] = 0;
  v14 = *(v7 + 13172);
  *(v4 + 1588) = v14;
  if (!v14)
  {
    v15 = *(a1 + 61419);
    if (*(a1 + 61418) > v15)
    {
      v15 = *(a1 + 61418);
    }

    *(v4 + 1588) = v15;
  }

  *v4 = v8;
  *(v4 + 68) = v9;
  *(v4 + 60) = v10;
  *(v4 + 116) = v11;
  *(v4 + 124) = v12;
  if (*(v5 + 88) == 3 && *(v2 + 2) >= 2 && !*(v2 + 1))
  {
    v16 = *v3;
    v17 = *(*v3 + 40);
    *(v16 + 40) = *(v7 + 13144);
    *(v7 + 13144) = v17;
    *(v16 + 12) = *(v7 + 13136);
    *(v16 + 28) = *(v7 + 13152);
    *(v16 + 112) = *(v7 + 13160);
  }

  v2[6] = 0;
  *(v2 + 11) = 0;
  if (*(v6 + 85776) && *(v2 + 94) && *(v4 + 1276))
  {
    v18 = *a1;
    v19 = *a1 + 81920;
    v20 = *(*a1 + 85716);
    v21 = *a1 + 85800;
    v22 = *(v2 + 10);
    if (*(v21 + 4 * v20) == v22 && *v2 > *(v18 + v20 + 85832))
    {
      *(v2 + 11) = 1;
    }

    v23 = *(v19 + 3808);
    if (*(v21 + 4 * v23) == v22 && *v2 > *(v18 + v23 + 85832))
    {
      *(v2 + 12) = 1;
    }

    v24 = *(v19 + 3820);
    if (*(v21 + 4 * v24) == v22 && *v2 > *(v18 + v24 + 85832))
    {
      *(v2 + 13) = 1;
    }
  }

  return result;
}

uint64_t *sub_277A31F74(uint64_t *result)
{
  v1 = *result;
  v2 = 80479;
  if (!*(*result + 51016))
  {
    v2 = 30704;
  }

  v3 = result[v2];
  if (*(result + 245616))
  {
    if (*(v1 + 85776))
    {
      v4 = 0;
      v5 = v1 + 85716;
      v6 = v1 + 85800;
      v7 = v1 + 85832;
      do
      {
        v8 = *(v5 + v4);
        if (*(v1 + 4 * v8 + 85744))
        {
          *(v6 + 4 * v8) = v3;
          *(v7 + v8) = *(result + 160948);
          v1 = *result;
        }

        v4 += 4;
      }

      while (v4 != 28);
    }
  }

  else
  {
    v9 = 0;
    v10 = v1 + 85800;
    v11 = v1 + 85832;
    do
    {
      *(v10 + 4 * v9) = v3;
      *(v11 + v9++) = *(result + 160948);
    }

    while (v9 != 8);
  }

  return result;
}

uint64_t sub_277A32048(int *a1)
{
  v1 = a1 + 160948;
  if (a1[160950] <= 1 && a1[160951] < 2)
  {
    if (*(*a1 + 85776))
    {
      v6 = a1[68440];
      if (v6)
      {
        return 0;
      }

      else
      {
        if ((v6 & 0x40) != 0)
        {
          v7 = 6;
        }

        else
        {
          v7 = 7;
        }

        if ((v6 & 8) != 0)
        {
          return 3;
        }

        else
        {
          return v7;
        }
      }
    }

    else
    {
      return 7;
    }
  }

  else
  {
    v2 = &a1[a1[61464]];
    result = 7;
    if (v2[160962] == *v1)
    {
      v4 = v2[160970];
      if (v4 < v1[1] || v4 == 0)
      {
        return 0;
      }

      else
      {
        return 7;
      }
    }
  }

  return result;
}

void sub_277A32104(uint64_t *a1)
{
  v1 = 0;
  v2 = a1 + 80384;
  v3 = *a1;
  v4 = *a1 + 81920;
  *(v3 + 85776) = 1;
  v5 = *(a1 + 160958);
  v6 = (v3 + 85716);
  v7 = (v3 + 85728);
  v8 = xmmword_277BB7090;
  v9 = xmmword_277BB70A0;
  v10 = vdupq_n_s64(4uLL);
  v11 = vdupq_n_s64(7uLL);
  do
  {
    if (vuzp1_s16(vmovn_s64(vcgtq_u64(v11, v9)), *v8.i8).u8[0])
    {
      *(v7 - 3) = v1;
    }

    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(7uLL), *&v9)), *&v8).i8[2])
    {
      *(v7 - 2) = v1 + 1;
    }

    if (vuzp1_s16(*&v8, vmovn_s64(vcgtq_u64(vdupq_n_s64(7uLL), *&v8))).i32[1])
    {
      *(v7 - 1) = v1 + 2;
      *v7 = v1 + 3;
    }

    v1 += 4;
    v8 = vaddq_s64(v8, v10);
    v9 = vaddq_s64(v9, v10);
    v7 += 4;
  }

  while (v1 != 8);
  *(v3 + 85708) = 0;
  *(v3 + 85692) = 0u;
  *(v4 + 3824) = 0u;
  *(v4 + 3840) = 0u;
  *(v4 + 3768) = 1;
  if (*(a1 + 160948) >= 1)
  {
    *(v4 + 3780) = 1;
  }

  v12 = *(a1 + 160949);
  if (v12 != 2)
  {
    if (v12 == 1)
    {
      v14 = *(a1 + 160948);
      if (v14)
      {
        if (v14 == 1)
        {
          memset_pattern16(v6, &unk_277BB7C80, 0x1CuLL);
          *v6 = 1;
          if (v2[181] < v2[183] - 1 || v2[180] < v2[182] - 1)
          {
            *(v4 + 3804) = 6;
            *(v4 + 3848) = 1;
          }
        }

        else if (v14 == 2)
        {
          memset_pattern16(v6, &unk_277BB7C70, 0x1CuLL);
          *v6 = 2;
          if (v2[181] < v2[183] - 1)
          {
            *(v4 + 3804) = 7;
            *(v4 + 3852) = 1;
          }
        }
      }

      else
      {
        *v6 = 0;
        *(v6 + 1) = 0;
        v6[6] = 0;
        *(v6 + 2) = 0;
        if (*(a1 + 160949) < *(a1 + 160951) - 1 || *(a1 + 160948) < *(a1 + 160950) - 1)
        {
          *(v4 + 3808) = 5;
          *(v4 + 3844) = 1;
        }
      }
    }

    else if (!v12)
    {
      v13 = *(a1 + 160948);
      if (v13)
      {
        if (v13 == 1)
        {
          v18 = v3 + 85720;
          *(v18 + 16) = 0;
          *v18 = 0uLL;
          *(v4 + 3796) = 1;
          *(v4 + 3828) = 1;
        }

        else if (v13 == 2)
        {
          memset_pattern16((v3 + 85716), &unk_277BB7CB0, 0x1CuLL);
          *(v4 + 3796) = 2;
          *(v4 + 3832) = 1;
        }
      }

      else
      {
        *v6 = 0;
        *(v3 + 85724) = 0;
        *(v3 + 85740) = 0;
        *(v3 + 85732) = 0;
        *(v4 + 3824) = 1;
      }
    }

    return;
  }

  if (((v5 - 1) & 3) != 0)
  {
    if (((v5 + 1) & 3) != 0)
    {
      return;
    }

    v15 = *(a1 + 160948);
    if (v15)
    {
      if (v15 != 1)
      {
        if (v15 == 2)
        {
          v16 = v3 + 85720;
          *(v16 + 16) = 0;
          *v16 = 0uLL;
          *(v4 + 3796) = 7;
          *(v4 + 3808) = 4;
        }

        return;
      }

      *(v4 + 3800) = 0uLL;
      *(v4 + 3816) = 0;
      *(v4 + 3796) = 6;
      *(v4 + 3808) = 3;
      if (*(a1 + 160948) >= *(a1 + 160950) - 1)
      {
        return;
      }

      *(v4 + 3800) = 4;
LABEL_46:
      *(v4 + 3840) = 1;
      return;
    }

    v19 = v3 + 85720;
    *(v19 + 16) = 0;
    *v19 = 0uLL;
    *v6 = 5;
    goto LABEL_48;
  }

  v17 = *(a1 + 160948);
  switch(v17)
  {
    case 0:
      *v6 = 0;
      *(v6 + 1) = 0;
      v6[6] = 0;
      *(v6 + 2) = 0;
LABEL_48:
      if (*(a1 + 160948) < *(a1 + 160950) - 1)
      {
        *(v4 + 3808) = 3;
        *(v4 + 3836) = 1;
      }

      return;
    case 1:
      memset_pattern16(v6, &unk_277BB7CA0, 0x1CuLL);
      *v6 = 1;
      if (v2[180] >= v2[182] - 1)
      {
        return;
      }

      *(v4 + 3800) = 4;
      goto LABEL_46;
    case 2:
      memset_pattern16(v6, &unk_277BB7C90, 0x1CuLL);
      *v6 = 2;
      break;
  }
}

uint64_t sub_277A3251C(uint64_t result)
{
  v1 = *(result + 643800);
  if (v1 >= 1)
  {
    v2 = 0;
    v3 = 0;
    v4 = *(result + 643804);
    v5 = *(result + 644136);
    v6 = *(result + 643804);
    do
    {
      v7 = v5 + 13176 * v4 + 13176 * v3 * v4;
      result = *(v7 - 13056);
      v8 = *(v7 - 13044);
      if (result)
      {
        v9 = v8 == 0;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        v10 = v5 + 13176 * v3 * v4;
        result = *(v10 + 120);
        v8 = *(v10 + 132);
      }

      if ((result > v8 + (v8 >> 1) || result < v8 >> 1) && v6 >= 1)
      {
        result = v5 + 13176 * v2;
        v13 = v4;
        do
        {
          *(result + 184) = 0;
          v14 = *(result + 8832);
          *(result + 9056) = v14;
          *(result + 9024) = v14;
          result += 13176;
          --v13;
        }

        while (v13);
      }

      ++v3;
      v2 += v6;
    }

    while (v3 != v1);
  }

  return result;
}

void sub_277A325C8()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = v0;
  v40 = *MEMORY[0x277D85DE8];
  v35[0] = v8;
  v35[1] = __src;
  v34[0] = v5;
  v34[1] = v36;
  v33 = 0;
  __dst = v8;
  sub_277A076C4(v0, v8, v5, &v33, v3, v1);
  v9 = 0;
  v10 = 0;
  __n = 2 * v2;
  v11 = v33;
  v32 = v2;
  v28 = v6;
  v29 = v2;
  while (1)
  {
    v31 = v11;
    v12 = v10 ^ 1;
    v13 = v35[v10 ^ 1];
    memset(v39, 0, 32);
    v14 = v7->i16[0];
    __memset_chk();
    v15 = v7;
    v16 = v4;
    if (v4 >= 1)
    {
      do
      {
        v18 = *v6;
        v6 = (v6 + 1);
        v17 = v18;
        ++v39[v18];
        v19 = v15->i16[0];
        v15 = (v15 + 2);
        v38[v17] += v19;
        --v16;
      }

      while (v16);
    }

    if (v32 >= 1)
    {
      v20 = v38;
      v21 = v39;
      v22 = v13;
      v23 = v29;
      do
      {
        v25 = *v21++;
        v24 = v25;
        if (v25)
        {
          v26 = (*v20 + (v24 >> 1)) / v24;
        }

        else
        {
          v14 = 1103515245 * v14 + 12345;
          LOWORD(v26) = v7->i16[(HIWORD(v14) & 0x7FFF) % v4];
        }

        *v22++ = v26;
        ++v20;
        --v23;
      }

      while (v23);
    }

    if (!memcmp(v13, v35[v10], __n))
    {
      break;
    }

    v6 = v34[v12];
    sub_277A076C4(v7, v13, v6, &v33, v4, v32);
    if (v33 > v31)
    {
      goto LABEL_15;
    }

    ++v9;
    v11 = v33;
    v10 ^= 1uLL;
    if (v9 == 50)
    {
      v10 = v12;
      goto LABEL_15;
    }
  }

  v10 = 0;
LABEL_15:
  if (v10)
  {
    memcpy(__dst, __src, __n);
    memcpy(v28, v36, v4);
  }
}

uint64_t sub_277A32834(uint64_t a1, int a2, unsigned __int16 *a3, uint64_t a4, void *a5, _DWORD *a6)
{
  v7 = a4;
  v22 = *MEMORY[0x277D85DE8];
  if (a2 <= 0)
  {
    if (a4 >= 1)
    {
      v18 = a4;
      do
      {
        v19 = *a3++;
        *a6++ = v19;
        --v18;
      }

      while (v18);
      return v7;
    }

    return 0;
  }

  v11 = a2;
  bzero(a5, a2);
  memset(v21, 0, sizeof(v21));
  if (v7 < 1)
  {
    return 0;
  }

  v12 = 0;
  v13 = 0;
  v14 = v7;
  do
  {
    v15 = 0;
    while (a3[v15] != *(a1 + 2 * v12))
    {
      if (v7 == ++v15)
      {
        goto LABEL_9;
      }
    }

    *(v21 + v15) = 1;
    *(a5 + v12) = 1;
    ++v13;
LABEL_9:
    ++v12;
  }

  while (v12 < v11 && v13 < v7);
  v7 = 0;
  v16 = v21;
  do
  {
    if (!*v16++)
    {
      a6[v7] = *a3;
      v7 = (v7 + 1);
    }

    ++a3;
    --v14;
  }

  while (v14);
  return v7;
}

uint64_t sub_277A3297C(uint64_t a1, int a2, _DWORD *a3, unsigned int *a4)
{
  v4 = 0;
  v5 = *(a1 + 49);
  *a4 = a2 - 4;
  *a3 = 0;
  if (v5 >= 2)
  {
    v6 = 0;
    v7 = 0;
    v8 = 1 << a2;
    v9 = *(a1 + 32);
    v10 = v5 - 1;
    v11 = (a1 + 34);
    do
    {
      v13 = *v11++;
      v12 = v13;
      v14 = v13 - v9;
      if (v14 < 0)
      {
        v14 = -v14;
      }

      if (v14 >= v8 - v14)
      {
        v14 = v8 - v14;
      }

      if (v14 > v7)
      {
        v7 = v14;
      }

      if (!v14)
      {
        *a3 = ++v6;
      }

      v9 = v12;
      --v10;
    }

    while (v10);
    v15 = __clz(v7) ^ 0x1F;
    if (v7 > 0)
    {
      v4 = v15 + 1;
    }

    else
    {
      v4 = 0;
    }
  }

  if (v4 <= *a4)
  {
    return *a4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_277A32A0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = sub_277A32834(a2, a3, a1, *(a1 + 48), v8, v9);
  return (sub_277A32A9C(v9, v6, a4, 1) + a3) << 9;
}

uint64_t sub_277A32A9C(int *a1, int a2, uint64_t a3, int a4)
{
  v26 = *MEMORY[0x277D85DE8];
  if (a2 < 1)
  {
    return 0;
  }

  if (a2 != 1)
  {
    v4 = 0;
    v5 = 0;
    v8 = *a1;
    v6 = a1 + 1;
    v7 = v8;
    v9 = v8;
    do
    {
      v10 = v6[v4];
      v11 = v10 - v9;
      v25[v4] = v11;
      if (v11 > v5)
      {
        v5 = v11;
      }

      ++v4;
      v9 = v10;
    }

    while (a2 - 1 != v4);
    v12 = 0;
    v13 = a3 - 3;
    v14 = 1 << a3;
    LODWORD(a3) = a3 + 2;
    v15 = v14 - (v7 + a4);
    v16 = v5 - a4;
    v17 = v16 + 1;
    v18 = __clz(v16) ^ 0x1F;
    if (v17 >= 2)
    {
      v19 = v18 + 1;
    }

    else
    {
      v19 = 0;
    }

    if (v19 <= v13)
    {
      v19 = v13;
    }

    if (a2 <= 2)
    {
      v20 = 2;
    }

    else
    {
      v20 = a2;
    }

    v21 = 4 * (v20 - 1);
    do
    {
      a3 = (v19 + a3);
      v15 -= v25[v12 / 4];
      v22 = __clz(v15 - 1) ^ 0x1F;
      if (v15 >= 2)
      {
        v23 = v22 + 1;
      }

      else
      {
        v23 = 0;
      }

      if (v19 >= v23)
      {
        v19 = v23;
      }

      v12 += 4;
    }

    while (v21 != v12);
  }

  return a3;
}

uint64_t sub_277A32BC4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 49);
  v8 = sub_277A32834(a2, a3, (a1 + 16), v7, v14, v15);
  v9 = sub_277A32A9C(v15, v8, a4, 0);
  v13 = 0;
  v10 = sub_277A3297C(a1, a4, &v13 + 1, &v13);
  v11 = a4 - HIDWORD(v13) + v7 - 1 + (v7 - 1) * v10 + 2;
  if (v11 >= v7 * a4)
  {
    v11 = v7 * a4;
  }

  return (((a3 + v9 + v11) << 9) + 512);
}

__n128 sub_277A32CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _DWORD *a9, void *a10, _BYTE *a11, _DWORD *a12, uint64_t a13, void *a14, void *a15)
{
  v15 = MEMORY[0x28223BE20]();
  v208 = v17;
  v209 = v16;
  __src = v18;
  v20 = v19;
  v211 = v21;
  v224 = *MEMORY[0x277D85DE8];
  v23 = v22 + 151552;
  v24 = v15 + 395128;
  v215 = **(v22 + 8280);
  v25 = *(v22 + 72);
  v26 = *(v22 + 48);
  v28 = byte_277C3CAE8[v27];
  v212 = v27;
  v29 = byte_277C3CAFE[v27];
  v30 = ((*(v22 + 8344) >> 31) & (*(v22 + 8344) >> 3)) + v29;
  v31 = *(v22 + 436);
  v216 = v22;
  v189 = *(v22 + 440);
  v190 = v31;
  v201 = ((((*(v22 + 8352) >> 31) & (*(v22 + 8352) >> 3)) + v28) >> v189);
  v210 = v15;
  v32 = *(v15 + 270312);
  v33 = (v30 >> v31);
  v34 = *(v32 + 76);
  v35 = *(v32 + 72);
  v213 = *(v15 + 396384);
  v217 = 0;
  v198 = v15 + 395128;
  if (v34)
  {
    sub_277A9FD00(v26, v25, v201, v30 >> v31, v35, v223, __base, &v217, &v217 + 1);
    v36 = v201;
    v37 = *(v24 + 1256);
  }

  else
  {
    bzero(v223, 0x400uLL);
    v36 = v201;
    if (v201 > 0)
    {
      v38 = 0;
      v39 = v26;
      do
      {
        v40 = v39;
        v41 = v33;
        if (v33 >= 1)
        {
          do
          {
            v42 = *v40++;
            ++v223[v42];
            --v41;
          }

          while (v41);
        }

        ++v38;
        v39 += v25;
      }

      while (v38 != v201);
    }

    v43 = 0;
    v44 = 0uLL;
    do
    {
      v44 = vsubq_s32(v44, vtstq_s32(*&v223[v43], *&v223[v43]));
      v43 += 4;
    }

    while (v43 != 256);
    HIDWORD(v217) = vaddvq_s32(v44);
    LODWORD(v217) = HIDWORD(v217);
    v37 = v213;
  }

  __dst = *(v216 + 592);
  v45 = *(v23 + 1584);
  if (v37 && *(v198 + 1555) == 1 && *v198 && *(v23 + 1600) >= 0x33u)
  {
    if (!*(v23 + 1574) && !*(v23 + 1575))
    {
      goto LABEL_20;
    }

    v46 = *(v23 + 1576) >> (byte_277C3CFCC[v212] + byte_277C42228[v212]);
    if (*(v23 + 1574))
    {
      v46 >>= *(v23 + 1575) != 0;
    }

    if (v46 <= 7999)
    {
LABEL_20:
      v45 += 20;
    }
  }

  if (v217 < 2 || v217 > v45)
  {
    goto LABEL_232;
  }

  v207 = (*(v216 + 16832) + 4096);
  v177 = v23;
  v175 = v29;
  v176 = v28;
  if (v34)
  {
    v48 = 2 * v26;
    v49 = *(2 * v26);
    if (v36 >= 1)
    {
      v50 = 0;
      v51 = *(v216 + 16832) + 4096;
      v52 = *(2 * v26);
      do
      {
        if (v33 >= 1)
        {
          v53 = 0;
          do
          {
            v54 = *(v48 + v53);
            *(v51 + v53) = v54;
            if (v52 >= v54)
            {
              v52 = v54;
            }

            if (v49 <= v54)
            {
              v49 = v54;
            }

            v53 += 2;
          }

          while (2 * v33 != v53);
        }

        ++v50;
        v51 += 2 * v33;
        v48 += 2 * v25;
      }

      while (v50 != v36);
      goto LABEL_50;
    }
  }

  else
  {
    v49 = *v26;
    if (v36 >= 1)
    {
      v55 = 0;
      v56 = *(v216 + 16832) + 4096;
      v52 = *v26;
      do
      {
        if (v33 >= 1)
        {
          for (i = 0; i != v33; ++i)
          {
            v58 = *(v26 + i);
            *(v56 + 2 * i) = v58;
            if (v52 >= v58)
            {
              v52 = v58;
            }

            if (v49 <= v58)
            {
              v49 = v58;
            }
          }
        }

        v26 += v25;
        ++v55;
        v56 += 2 * v33;
      }

      while (v55 != v36);
      goto LABEL_50;
    }
  }

  v52 = v49;
LABEL_50:
  v199 = v20;
  *(v215 + 2) = 0;
  *(v215 + 91) = 0;
  v206 = sub_277B1FBC4(v216 + 416, 0, v221);
  v220[1] = 0;
  v220[0] = 0;
  v193 = HIDWORD(v217);
  if (SHIDWORD(v217) >= 8)
  {
    v59 = 8;
  }

  else
  {
    v59 = HIDWORD(v217);
  }

  memset(__base, 0, 64);
  v195 = v59;
  if (v35 != 31)
  {
    v60 = 0;
    v61 = 0;
    v62 = 1 << v35;
    v63 = ((__base + 8 * v59 - 8) | 4);
    v203 = (v59 - 1) & ((v59 - 1) >> 31);
    v204 = __base + 2 * (v59 - 1) - 1;
    __nel = v59;
    do
    {
      v64 = v223[v60];
      if (v64 >= 1)
      {
        if (v61 >= v59)
        {
          if (v64 > *v63)
          {
            v66 = v59;
            v67 = v204;
            while (--v66 >= 1)
            {
              v68 = *v67;
              v67 -= 2;
              if (v64 <= v68)
              {
                goto LABEL_65;
              }
            }

            v66 = v203;
LABEL_65:
            v69 = __base + 2 * v66;
            memmove(v69 + 2, v69, 8 * (v59 + ~v66));
            v59 = v195;
            *v69 = v60;
            v69[1] = v64;
          }
        }

        else
        {
          v65 = __base + 2 * v61;
          *v65 = v60;
          v65[1] = v64;
          if (++v61 == v59)
          {
            qsort(__base, __nel, 8uLL, sub_277A34F00);
            v59 = v195;
            v61 = v195;
          }
        }
      }

      ++v60;
    }

    while (v60 != v62);
  }

  if (v193 >= 1)
  {
    v70 = v220;
    v71 = __base;
    v72 = v59;
    do
    {
      v73 = *v71;
      v71 += 2;
      *v70++ = v73;
      --v72;
    }

    while (v72);
  }

  v200 = *(v198 + 992);
  if (*(v198 + 988) != 1 || v193 <= 2)
  {
    if (v193 < 2)
    {
      v76 = 2;
    }

    else
    {
      v75 = 2 * (v59 + 1);
      v76 = 1;
      v77 = 4;
      while (1)
      {
        v219 = 0;
        v218 = 0;
        __memcpy_chk();
        sub_277A343F4(v210, v216, v215, v212, v211, v207, __base, v76 + 1, v221, v206, v200 != 0, v199, __src, v209, v208, a9, a10, a11, a12, a13, a14, a15, &v219, &v218, v213);
        if (v218 == 1)
        {
          goto LABEL_94;
        }

        if (!v219 && *(v198 + 988) == 2)
        {
          break;
        }

        v77 += 2;
        ++v76;
        if (v75 == v77)
        {
          goto LABEL_88;
        }
      }

      ++v76;
    }

LABEL_88:
    v80 = v195;
    if (v76 < v195)
    {
      v81 = v195;
      v82 = 2 * v195;
      do
      {
        v219 = 0;
        v218 = 0;
        __memcpy_chk();
        sub_277A343F4(v210, v216, v215, v212, v211, v207, __base, v81, v221, v206, 0, v199, __src, v209, v208, a9, a10, a11, a12, a13, a14, a15, &v219, &v218, v213);
        if (v218 == 1 || !v219 && *(v198 + 988) == 2)
        {
          break;
        }

        --v81;
        v82 -= 2;
      }

      while (v81 > v76);
LABEL_94:
      v80 = v195;
    }

    if (v193 == 2)
    {
      LOWORD(__base[0]) = v52;
      WORD1(__base[0]) = v49;
      v20 = v199;
      sub_277A343F4(v210, v216, v215, v212, v211, v207, __base, 2, v221, v206, 0, v199, __src, v209, v208, a9, a10, a11, a12, a13, a14, a15, 0, 0, v213);
      goto LABEL_231;
    }

    v20 = v199;
    if (v193 < 2)
    {
      v93 = 2;
    }

    else
    {
      v88 = vdupq_n_s32(v49 - v52);
      v89 = vmulq_s32(v88, xmmword_277BB74C0);
      v187 = v89.i32[1];
      v184 = v89.i32[2];
      v90 = vmulq_s32(v88, xmmword_277BB74B0);
      v182 = v89.i32[3];
      v180 = v89.i32[0];
      v178 = v90.i32[1];
      v173 = v90.i32[3];
      v174 = v90.i32[2];
      v172 = v90.i32[0];
      v91 = (v80 + 1) - 2;
      v92 = 1;
      while (1)
      {
        v219 = 0;
        v218 = 0;
        v93 = v92 + 1;
        v94 = vdupq_n_s64(v92);
        v95 = vmovn_s64(vcgeq_u64(v94, xmmword_277BB70A0));
        if (vuzp1_s8(vuzp1_s16(v95, *v94.i8), *v94.i8).u8[0])
        {
          LOWORD(__base[0]) = v52 + v180 / v93 / 2;
        }

        if (vuzp1_s8(vuzp1_s16(v95, *&v94), *&v94).i8[1])
        {
          WORD1(__base[0]) = v52 + v187 / v93 / 2;
        }

        if (vuzp1_s8(vuzp1_s16(*&v94, vmovn_s64(vcgeq_u64(v94, xmmword_277BB7090))), *&v94).i8[2])
        {
          WORD2(__base[0]) = v52 + v184 / v93 / 2;
          WORD3(__base[0]) = v52 + v182 / v93 / 2;
        }

        v96 = vmovn_s64(vcgeq_u64(v94, xmmword_277BB7080));
        if (vuzp1_s8(*&v94, vuzp1_s16(v96, *&v94)).i32[1])
        {
          WORD4(__base[0]) = v52 + v172 / v93 / 2;
        }

        if (vuzp1_s8(*&v94, vuzp1_s16(v96, *&v94)).i8[5])
        {
          WORD5(__base[0]) = v52 + v178 / v93 / 2;
        }

        v97 = vmovn_s64(vcgeq_u64(v94, xmmword_277BB7070));
        if (vuzp1_s8(*&v97, vuzp1_s16(v97, v97)).i8[6])
        {
          WORD6(__base[0]) = v52 + v174 / v93 / 2;
        }

        v98 = vuzp1_s16(v97, v97);
        if (vuzp1_s8(v98, v98).i8[7])
        {
          HIWORD(__base[0]) = v52 + v173 / v93 / 2;
        }

        sub_277A325C8();
        sub_277A343F4(v210, v216, v215, v212, v211, v207, __base, v92 + 1, v221, v206, v200 != 0, v199, __src, v209, v208, a9, a10, a11, a12, a13, a14, a15, &v219, &v218, v213);
        if (v218 == 1)
        {
          goto LABEL_231;
        }

        if (!v219 && *(v198 + 988) == 2)
        {
          break;
        }

        ++v92;
        --v91;
        v80 = v195;
        if (!v91)
        {
          v93 = v92;
          goto LABEL_126;
        }
      }

      v80 = v195;
    }

LABEL_126:
    if (v93 < v80)
    {
      v99 = vdupq_n_s32(v49 - v52);
      v100 = v80 + 7;
      v188 = v99;
      v101 = vdupq_n_s64(8uLL);
      v102.i64[0] = 0x800000008;
      v102.i64[1] = 0x800000008;
      v185 = v101;
      do
      {
        v103 = v100 & 0xFFFFFFFFFFFFFFF8;
        v219 = 0;
        v218 = 0;
        v104 = v80;
        v105 = v80 - 1;
        v106 = __base + 4;
        v107 = xmmword_277BB70A0;
        v108 = xmmword_277BB7090;
        v109 = xmmword_277BB7080;
        v110 = vdupq_n_s64(v105);
        v111 = xmmword_277BB7070;
        v112 = xmmword_277BB7060;
        v113 = xmmword_277BB74D0;
        do
        {
          v114 = vmovn_s64(vcgeq_u64(v110, v107));
          v115 = vmulq_s32((*&vaddq_s32(v112, v112) | __PAIR128__(0x100000001, 0x100000001)), v99);
          if (vuzp1_s8(vuzp1_s16(v114, *v107.i8), *v107.i8).u8[0])
          {
            *(v106 - 4) = v52 + v115.i32[0] / v104 / 2;
          }

          if (vuzp1_s8(vuzp1_s16(v114, *&v107), *&v107).i8[1])
          {
            *(v106 - 3) = v52 + v115.i32[1] / v104 / 2;
          }

          if (vuzp1_s8(vuzp1_s16(*&v107, vmovn_s64(vcgeq_u64(v110, *&v108))), *&v107).i8[2])
          {
            *(v106 - 2) = v52 + v115.i32[2] / v104 / 2;
            *(v106 - 1) = v52 + v115.i32[3] / v104 / 2;
          }

          v116 = vmulq_s32((*&vaddq_s32(v113, v113) | __PAIR128__(0x100000001, 0x100000001)), v99);
          v117 = vmovn_s64(vcgeq_u64(v110, v109));
          if (vuzp1_s8(*&v107, vuzp1_s16(v117, *&v107)).i32[1])
          {
            *v106 = v52 + v116.i32[0] / v104 / 2;
          }

          if (vuzp1_s8(*&v107, vuzp1_s16(v117, *&v107)).i8[5])
          {
            v106[1] = v52 + v116.i32[1] / v104 / 2;
          }

          if (vuzp1_s8(*&v107, vuzp1_s16(*&v107, vmovn_s64(vcgeq_u64(v110, *&v111)))).i8[6])
          {
            v106[2] = v52 + v116.i32[2] / v104 / 2;
            v106[3] = v52 + v116.i32[3] / v104 / 2;
          }

          v109 = vaddq_s64(v109, v101);
          v108 = vaddq_s64(v108, v101);
          v107 = vaddq_s64(v107, v101);
          v111 = vaddq_s64(v111, v101);
          v112 = vaddq_s32(v112, v102);
          v106 += 8;
          v113 = vaddq_s32(v113, v102);
          v103 -= 8;
        }

        while (v103);
        v118 = v105;
        sub_277A325C8();
        sub_277A343F4(v210, v216, v215, v212, v211, v207, __base, v104, v221, v206, 0, v199, __src, v209, v208, a9, a10, a11, a12, a13, a14, a15, &v219, &v218, v213);
        if (v218 == 1 || !v219 && *(v198 + 988) == 2)
        {
          break;
        }

        --v100;
        v80 = v118;
        v101 = v185;
        v99 = v188;
        v102.i64[0] = 0x800000008;
        v102.i64[1] = 0x800000008;
      }

      while (v118 > v93);
    }

    goto LABEL_231;
  }

  if (v193 >= 8)
  {
    v78 = 8;
  }

  else
  {
    v78 = v193;
  }

  v79 = byte_277BEE0B3[v78];
  if (v78 < v79)
  {
    v20 = v199;
    goto LABEL_231;
  }

  v194 = v78;
  v83 = (v78 + 1);
  v84 = 2 * v79;
  v196 = byte_277BEE0BC[v78];
  v85 = byte_277BEE0B3[v78];
  v86 = v83;
  while (1)
  {
    v219 = 0;
    v218 = 0;
    __memcpy_chk();
    sub_277A343F4(v210, v216, v215, v212, v211, v207, __base, v85, v221, v206, v200 != 0, v199, __src, v209, v208, a9, a10, a11, a12, a13, a14, a15, &v219, &v218, v213);
    if (v218 == 1)
    {
      LODWORD(v87) = v86;
      goto LABEL_150;
    }

    v87 = v85;
    if (!v219)
    {
      break;
    }

LABEL_102:
    v85 += v196;
    v84 += 2 * v196;
    v86 = v87;
    if (v85 >= v83)
    {
      goto LABEL_150;
    }
  }

  if (*(v198 + 988) != 2)
  {
    v87 = v86;
    goto LABEL_102;
  }

  LODWORD(v87) = v86;
LABEL_150:
  if (v87 <= v194)
  {
    if (v87 <= 3)
    {
      v119 = 3;
    }

    else
    {
      v119 = v87;
    }

    v120 = v119 - 1;
    if (v87 == 2)
    {
      v121 = 3;
    }

    else
    {
      v121 = v120;
    }

    v122 = v87 - 1;
    if (v87 >= 7)
    {
      v123 = 7;
    }

    else
    {
      v123 = v87;
    }

    if (v87 != v194)
    {
      v122 = v123 + 1;
    }

    v124 = v122 - v121;
    if (v122 >= v121)
    {
      v125 = (v122 + 1);
      if (v124 <= 1)
      {
        v126 = 1;
      }

      else
      {
        v126 = v124;
      }

      v127 = 2 * v121;
      do
      {
        v219 = 0;
        v218 = 0;
        __memcpy_chk();
        sub_277A343F4(v210, v216, v215, v212, v211, v207, __base, v121, v221, v206, 0, v199, __src, v209, v208, a9, a10, a11, a12, a13, a14, a15, &v219, &v218, v213);
        if (v218 == 1 || !v219 && *(v198 + 988) == 2)
        {
          break;
        }

        v121 += v126;
        v127 += 2 * v126;
      }

      while (v121 < v125);
    }
  }

  v128 = vdupq_n_s32(v49 - v52);
  v129 = v79 + 7;
  v130 = vdupq_n_s64(8uLL);
  v131.i64[0] = 0x800000008;
  v131.i64[1] = 0x800000008;
  v20 = v199;
  *v202 = v128;
  v191 = v130;
  while (1)
  {
    v219 = 0;
    v218 = 0;
    if (v79)
    {
      v132 = v129 & 0x7FFFFFFFFFFFFFF8;
      v133 = vdupq_n_s64(v79 - 1);
      v134 = __base + 4;
      v135 = xmmword_277BB70A0;
      v136 = xmmword_277BB7090;
      v137 = xmmword_277BB7080;
      v138 = xmmword_277BB7070;
      v139 = xmmword_277BB7060;
      v140 = xmmword_277BB74D0;
      do
      {
        v141 = vmovn_s64(vcgeq_u64(v133, v135));
        v142 = vmulq_s32((*&vaddq_s32(v139, v139) | __PAIR128__(0x100000001, 0x100000001)), v128);
        if (vuzp1_s8(vuzp1_s16(v141, *v133.i8), *v133.i8).u8[0])
        {
          *(v134 - 4) = v52 + v142.i32[0] / v79 / 2;
        }

        if (vuzp1_s8(vuzp1_s16(v141, *&v133), *&v133).i8[1])
        {
          *(v134 - 3) = v52 + v142.i32[1] / v79 / 2;
        }

        if (vuzp1_s8(vuzp1_s16(*&v133, vmovn_s64(vcgeq_u64(v133, *&v136))), *&v133).i8[2])
        {
          *(v134 - 2) = v52 + v142.i32[2] / v79 / 2;
          *(v134 - 1) = v52 + v142.i32[3] / v79 / 2;
        }

        v143 = vmulq_s32((*&vaddq_s32(v140, v140) | __PAIR128__(0x100000001, 0x100000001)), v128);
        v144 = vmovn_s64(vcgeq_u64(v133, v137));
        if (vuzp1_s8(*&v133, vuzp1_s16(v144, *&v133)).i32[1])
        {
          *v134 = v52 + v143.i32[0] / v79 / 2;
        }

        if (vuzp1_s8(*&v133, vuzp1_s16(v144, *&v133)).i8[5])
        {
          v134[1] = v52 + v143.i32[1] / v79 / 2;
        }

        if (vuzp1_s8(*&v133, vuzp1_s16(*&v133, vmovn_s64(vcgeq_u64(v133, *&v138)))).i8[6])
        {
          v134[2] = v52 + v143.i32[2] / v79 / 2;
          v134[3] = v52 + v143.i32[3] / v79 / 2;
        }

        v137 = vaddq_s64(v137, v130);
        v136 = vaddq_s64(v136, v130);
        v135 = vaddq_s64(v135, v130);
        v138 = vaddq_s64(v138, v130);
        v139 = vaddq_s32(v139, v131);
        v134 += 8;
        v140 = vaddq_s32(v140, v131);
        v132 -= 8;
      }

      while (v132);
      v145 = v79;
    }

    else
    {
      v145 = 0;
    }

    sub_277A325C8();
    sub_277A343F4(v210, v216, v215, v212, v211, v207, __base, v145, v221, v206, v200 != 0, v199, __src, v209, v208, a9, a10, a11, a12, a13, a14, a15, &v219, &v218, v213);
    if (v218 == 1)
    {
      break;
    }

    v146 = v194;
    v128 = *v202;
    v130 = v191;
    v131.i64[0] = 0x800000008;
    v131.i64[1] = 0x800000008;
    if (v219 || (v145 = v83, *(v198 + 988) != 2))
    {
      v79 += v196;
      v129 += v196;
      v83 = v145;
      if (v79 <= v194)
      {
        continue;
      }
    }

    goto LABEL_195;
  }

  LODWORD(v145) = v83;
  v146 = v194;
  v128 = *v202;
LABEL_195:
  if (v145 <= v146)
  {
    v147 = v145 <= 3 ? 3 : v145;
    v148 = v147 - 1;
    v149 = v145 == 2 ? 3 : v148;
    v150 = v145 >= 7 ? 7 : v145;
    v151 = v145 == v146 ? v145 - 1 : v150 + 1;
    v152 = v151 - v149;
    if (v151 >= v149)
    {
      if (v152 <= 1)
      {
        v153 = 1;
      }

      else
      {
        v153 = v152;
      }

      v154 = vmulq_s32(v128, xmmword_277BB74B0);
      v155 = vmulq_s32(v128, xmmword_277BB74C0);
      v192 = v155.i32[1];
      v156 = v155.i64[1];
      v186 = v154.i32[1];
      v183 = v154.i32[2];
      v181 = v155.i32[0];
      v179 = v154.i32[3];
      v157 = v154.i32[0];
      v158 = -1;
      do
      {
        v219 = 0;
        v218 = 0;
        v159 = vdupq_n_s64(v149 + v158);
        v160 = vmovn_s64(vcgeq_u64(v159, xmmword_277BB70A0));
        if (vuzp1_s8(vuzp1_s16(v160, *v159.i8), *v159.i8).u8[0])
        {
          LOWORD(__base[0]) = v52 + v181 / (v149 + v158 + 1) / 2;
        }

        if (vuzp1_s8(vuzp1_s16(v160, *&v159), *&v159).i8[1])
        {
          WORD1(__base[0]) = v52 + v192 / (v149 + v158 + 1) / 2;
        }

        if (vuzp1_s8(vuzp1_s16(*&v159, vmovn_s64(vcgeq_u64(v159, xmmword_277BB7090))), *&v159).i8[2])
        {
          WORD2(__base[0]) = v52 + v156 / (v149 + v158 + 1) / 2;
          WORD3(__base[0]) = v52 + SHIDWORD(v156) / (v149 + v158 + 1) / 2;
        }

        v161 = vmovn_s64(vcgeq_u64(v159, xmmword_277BB7080));
        if (vuzp1_s8(*&v159, vuzp1_s16(v161, *&v159)).i32[1])
        {
          WORD4(__base[0]) = v52 + v157 / (v149 + v158 + 1) / 2;
        }

        if (vuzp1_s8(*&v159, vuzp1_s16(v161, *&v159)).i8[5])
        {
          WORD5(__base[0]) = v52 + v186 / (v149 + v158 + 1) / 2;
        }

        v162 = vmovn_s64(vcgeq_u64(v159, xmmword_277BB7070));
        if (vuzp1_s8(*&v162, vuzp1_s16(v162, v162)).i8[6])
        {
          WORD6(__base[0]) = v52 + v183 / (v149 + v158 + 1) / 2;
        }

        v163 = vuzp1_s16(v162, v162);
        if (vuzp1_s8(v163, v163).i8[7])
        {
          HIWORD(__base[0]) = v52 + v179 / (v149 + v158 + 1) / 2;
        }

        sub_277A325C8();
        sub_277A343F4(v210, v216, v215, v212, v211, v207, __base, v149 + v158 + 1, v221, v206, 0, v199, __src, v209, v208, a9, a10, a11, a12, a13, a14, a15, &v219, &v218, v213);
        if (v218 == 1 || !v219 && *(v198 + 988) == 2)
        {
          break;
        }

        v158 += v153;
      }

      while (v151 >= v149 + v158 + 1);
    }
  }

LABEL_231:
  v23 = v177;
  v29 = v175;
  v28 = v176;
LABEL_232:
  if (*(v20 + 142))
  {
    memcpy(__dst, __src, (v28 >> v189) * (v29 >> v190));
    *(v23 + 1672) += (v28 >> v189) * (v29 >> v190);
  }

  v164 = *v20;
  v165 = v20[2];
  *(v215 + 16) = v20[1];
  *(v215 + 32) = v165;
  *v215 = v164;
  v166 = v20[3];
  v167 = v20[4];
  v168 = v20[6];
  *(v215 + 80) = v20[5];
  *(v215 + 96) = v168;
  *(v215 + 48) = v166;
  *(v215 + 64) = v167;
  result = *(v20 + 7);
  v170 = v20[8];
  v171 = v20[10];
  *(v215 + 144) = v20[9];
  *(v215 + 160) = v171;
  *(v215 + 112) = result;
  *(v215 + 128) = v170;
  return result;
}

void sub_277A343F4(uint64_t a1, uint64_t a2, __int128 *a3, unsigned int a4, unsigned int a5, int16x8_t *a6, unsigned __int16 *__base, int a8, unsigned __int16 *a9, int a10, unsigned __int8 a11, _OWORD *a12, void *a13, int64_t *a14, _DWORD *a15, _DWORD *a16, void *a17, _BYTE *a18, _DWORD *a19, uint64_t a20, void *a21, void *a22, _DWORD *a23, _BYTE *a24, int a25)
{
  if (a24)
  {
    *a24 = 0;
  }

  if (a8 >= 1 && a10 >= 1)
  {
    v32 = 0;
    v33 = 4 << (*(*(a1 + 270312) + 72) - 8);
    do
    {
      v34 = __base[v32];
      v35 = v34 - *a9;
      if (v35 < 0)
      {
        v35 = *a9 - v34;
      }

      if (a10 == 1)
      {
        v36 = 0;
      }

      else
      {
        v37 = 0;
        for (i = 1; i != a10; ++i)
        {
          v39 = v34 - a9[i];
          if (v39 < 0)
          {
            v39 = a9[i] - v34;
          }

          if (v39 < v35)
          {
            v35 = v39;
            v37 = i;
          }
        }

        v36 = v37;
      }

      if (v35 <= v33)
      {
        __base[v32] = a9[v36];
      }

      ++v32;
    }

    while (v32 != a8);
  }

  qsort(__base, a8, 2uLL, sub_277A32824);
  if (a8 <= 1)
  {
    return;
  }

  v40 = a8 - 1;
  v41 = __base + 1;
  v42 = 1;
  v43 = a11;
  do
  {
    v44 = *v41;
    if (v44 != *(v41 - 1))
    {
      __base[v42++] = v44;
    }

    ++v41;
    --v40;
  }

  while (v40);
  if (v42 < 2)
  {
    return;
  }

  v45 = a3 + 47;
  v46 = *(a1 + 270312);
  v47 = v42;
  v129 = (a2 + 8288);
  v130 = a2 + 116272;
  v133 = a1 + 396120;
  v135 = a1;
  if (*(v46 + 76))
  {
    v48 = *(v46 + 72);
    v49 = __base;
    do
    {
      v51 = *v49++;
      v50 = v51;
      if (v51 >= 0x3FF)
      {
        v52 = 1023;
      }

      else
      {
        v52 = v50;
      }

      if (v50 >= 0xFFF)
      {
        v53 = 4095;
      }

      else
      {
        v53 = v50;
      }

      if (v50 >= 0xFF)
      {
        v54 = 255;
      }

      else
      {
        v54 = v50;
      }

      if (v48 != 12)
      {
        v53 = v54;
      }

      if (v48 != 10)
      {
        v52 = v53;
      }

      if (v50 >= 0)
      {
        v55 = v52;
      }

      else
      {
        v55 = 0;
      }

      *v45++ = v55;
      --v47;
    }

    while (v47);
  }

  else
  {
    v56 = __base;
    do
    {
      v57 = *v56++;
      v58 = v57 & ~(v57 >> 31);
      if (v58 >= 255)
      {
        LOWORD(v58) = 255;
      }

      *v45++ = v58;
      --v47;
    }

    while (v47);
  }

  v136 = a3;
  *(a3 + 142) = v42;
  v59 = byte_277C3CAE8[a4];
  v134 = a4;
  v60 = byte_277C3CAFE[a4];
  v61 = ((*(a2 + 8344) >> 31) & (*(a2 + 8344) >> 3)) + v60;
  v62 = *(a2 + 436);
  v127 = v60;
  v128 = v59;
  v63 = v60 >> v62;
  v64 = *(a2 + 440);
  v65 = v59 >> v64;
  v66 = ((((*(a2 + 8352) >> 31) & (*(a2 + 8352) >> 3)) + v59) >> v64);
  v67 = v61 >> v62;
  __src = *(a2 + 592);
  sub_277A076C4(a6, __base, __src, 0, (v61 >> v62) * v66, v42);
  v131 = v65;
  if (v65 != v66 || v63 != v67)
  {
    v126 = a2;
    if (v66 >= 1)
    {
      v69 = v67;
      v70 = v63 - v67;
      v71 = v66 + 1;
      v72 = __src + (v66 - 1) * v67;
      v73 = __src + (v66 - 1) * v63;
      v74 = -v67;
      do
      {
        memmove(v73, v72, v69);
        memset(&v73[v69], v73[v69 - 1], v70);
        --v71;
        v72 += v74;
        v73 -= v63;
      }

      while (v71 > 1);
    }

    v75 = v65 - v66;
    a2 = v126;
    v43 = a11;
    if (v131 > v66)
    {
      v76 = __src + v63 * v66;
      do
      {
        memcpy(v76, __src + (v66 - 1) * v63, v63);
        v76 += v63;
        --v75;
      }

      while (v75);
    }
  }

  v139 = 0;
  memset(v138, 0, sizeof(v138));
  if (!v43)
  {
    v77 = v135;
    v78 = v134;
    sub_277A45044(v135, a2, v138, v134, *a14);
    v80 = v138[0];
    if (LODWORD(v138[0]) == 0x7FFFFFFF)
    {
      return;
    }

    v81 = v136;
    v82 = sub_277A34C50(v135, a2, v136, v134, a5, a25) + v80;
LABEL_68:
    v84 = v130;
    v85 = *(&v138[0] + 1);
    v86 = ((*(a2 + 16920) * v82 + 256) >> 9) + (*(&v138[0] + 1) << 7);
    if (*(a2 + 4 * (*(v81 + 167) & 7) + 11108) || !*v81)
    {
      v87 = a2;
    }

    else
    {
      v88 = 0;
      if (v78 && *(a2 + 151024) == 2)
      {
        v89 = *(v81 + 145);
        v90 = byte_277C3BD80[v78];
        if (v90 == v89)
        {
          v91 = 0;
        }

        else
        {
          LODWORD(v91) = 0;
          do
          {
            v91 = (v91 + 1);
            v90 = byte_277C3295E[v90];
          }

          while (v90 != v89);
        }

        v92 = byte_277C3BD80[***(a2 + 8280)];
        v93 = *v129;
        v94 = v129[1];
        v95 = **(a2 + 8544);
        v96 = **(a2 + 8552);
        if (v93 == 1)
        {
          v97 = *(a2 + 8304);
          if ((*(v97 + 167) & 0x80) != 0 || v97[16] >= 1)
          {
            v95 = byte_277C3CAFE[*v97];
          }
        }

        v98 = dword_277C3BEE4[v92];
        v99 = dword_277C3BF30[v92];
        if (v129[1])
        {
          v100 = *(a2 + 8296);
          if ((*(v100 + 167) & 0x80) != 0 || v100[16] >= 1)
          {
            v96 = byte_277C3CAE8[*v100];
          }
        }

        if (v99 > v96)
        {
          v94 = 0;
        }

        if (v98 > v95)
        {
          v93 = 0;
        }

        v88 = *(a2 + 60 * (byte_277C32948[v78] - 1) + 20 * (v94 + v93) + 4 * v91 + 35992);
      }

      v87 = a2;
      v80 -= v88;
    }

    if (v86 != 0x7FFFFFFFFFFFFFFFLL && *(v133 + 160) != 0)
    {
      v102 = *v130;
      if ((*(v77 + 245616) & 0xFD) == 0 || !v136[142])
      {
        v103 = dword_277C31748[*(v133 + 160)];
        v104 = *(v130 + 8);
        if (v104)
        {
          if (v104 < 1)
          {
            LODWORD(v104) = 0;
          }

          else
          {
            v105 = 0;
            v106 = (v102 + 216);
            while (*v106 <= v86)
            {
              v106 += 2078;
              if (v104 == ++v105)
              {
                goto LABEL_105;
              }
            }

            LODWORD(v104) = v105;
          }

LABEL_105:
          if (v104 == v103)
          {
            goto LABEL_114;
          }

          if (v104 < v103 - 1)
          {
            memmove((v102 + 16624 * v104 + 16624), (v102 + 16624 * v104), 16624 * (v103 + ~v104));
            v84 = v130;
          }
        }

        v107 = v102 + 16624 * v104;
        v108 = *v136;
        v109 = *(v136 + 2);
        *(v107 + 16) = *(v136 + 1);
        *(v107 + 32) = v109;
        *v107 = v108;
        v110 = *(v136 + 3);
        v111 = *(v136 + 4);
        v112 = *(v136 + 6);
        *(v107 + 80) = *(v136 + 5);
        *(v107 + 96) = v112;
        *(v107 + 48) = v110;
        *(v107 + 64) = v111;
        v113 = *(v136 + 7);
        v114 = *(v136 + 8);
        v115 = *(v136 + 10);
        *(v107 + 144) = *(v136 + 9);
        *(v107 + 160) = v115;
        *(v107 + 112) = v113;
        *(v107 + 128) = v114;
        *(v107 + 216) = v86;
        *(v107 + 16616) = -100;
        if (__src)
        {
          memcpy((v107 + 232), __src, (v128 >> *(v87 + 440)) * (v127 >> *(v87 + 436)));
          v84 = v130;
        }

        v116 = *(v84 + 8);
        if (v116 + 1 < v103)
        {
          v117 = v116 + 1;
        }

        else
        {
          v117 = v103;
        }

        *(v84 + 8) = v117;
      }
    }

LABEL_114:
    if (v86 < *a14)
    {
      *a14 = v86;
      if (a19)
      {
        *a19 = 1;
      }

      memcpy(a13, __src, (v131 * v63));
      v119 = *(v136 + 1);
      v118 = *(v136 + 2);
      *a12 = *v136;
      a12[1] = v119;
      a12[2] = v118;
      v120 = *(v136 + 6);
      v122 = *(v136 + 3);
      v121 = *(v136 + 4);
      a12[5] = *(v136 + 5);
      a12[6] = v120;
      a12[3] = v122;
      a12[4] = v121;
      v123 = *(v136 + 10);
      v125 = *(v136 + 7);
      v124 = *(v136 + 8);
      a12[9] = *(v136 + 9);
      a12[10] = v123;
      a12[7] = v125;
      a12[8] = v124;
      memcpy(a21, (v87 + 151049), *(a20 + 416));
      memcpy(a22, *(v87 + 8328), *(a20 + 416));
      if (a15)
      {
        *a15 = v82;
      }

      if (a16)
      {
        *a16 = v80;
      }

      if (a17)
      {
        *a17 = v85;
      }

      if (a18)
      {
        *a18 = v139;
      }

      if (a23)
      {
        *a23 = 1;
      }
    }

    return;
  }

  v77 = v135;
  v78 = v134;
  v79 = sub_277A34C50(v135, a2, v136, v134, a5, a25);
  if ((*(a2 + 16920) * v79 + 256) >> 9 >> (*v133 == 1) > *a14)
  {
    *a24 = 1;
    return;
  }

  v83 = v79;
  sub_277A45044(v135, a2, v138, v134, *a14);
  v80 = v138[0];
  if (LODWORD(v138[0]) != 0x7FFFFFFF)
  {
    v82 = LODWORD(v138[0]) + v83;
    v81 = v136;
    goto LABEL_68;
  }
}

uint64_t sub_277A34C50(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unsigned int a4, uint64_t a5, int a6)
{
  v6 = a5;
  v36 = *MEMORY[0x277D85DE8];
  v11 = (a1 + 245616);
  v12 = a3[91];
  v13 = *(a3 + 167);
  if (*(a1 + 246111))
  {
    v14 = *a3;
    v15 = v14 > 0xF;
    v16 = (1 << v14) & 0xE007;
    v17 = v15 || v16 == 0;
    if (v17 && !a3[2])
    {
      v23 = a3[142];
      v24 = byte_277C3BCB6[a4] - 6;
      v25 = *(a2 + 8304);
      v26 = *(a2 + 8296);
      if (v25)
      {
        LODWORD(v25) = *(v25 + 142) != 0;
      }

      if (v26 && *(v26 + 142))
      {
        LODWORD(v25) = v25 + 1;
      }

      v6 = (*(a2 + 24 * v24 + 8 * v25 + 4 * (v23 != 0) + 32280) + a5);
      if (a3[142])
      {
        v34 = *(a2 + 28 * v24 + 4 * v23 + 29640);
        v27 = __clz(v23) ^ 0x1F;
        v28 = (2 << v27) - v23;
        v29 = v27 << 9;
        if (v28 <= **(a2 + 592))
        {
          v30 = v29 + 512;
        }

        else
        {
          v30 = v29;
        }

        v33 = v30;
        v31 = sub_277B1FBC4(a2 + 416, 0, v35);
        v32 = v33 + sub_277A32A0C((a3 + 94), v35, v31, *(*(a1 + 270312) + 72)) + v34;
        if (!a6)
        {
          v32 += sub_2779D9ED4(a2, 0, a4);
        }

        v6 = (v32 + v6);
      }
    }
  }

  if (a3[2])
  {
    if (a4 >= 3 && a3[2] <= 8u)
    {
      v18 = a2 + 28 * a3[2] + 4 * a3[88];
      v19 = 28376;
LABEL_10:
      v6 = (*(v18 + v19) + v6);
    }
  }

  else if (!a3[142])
  {
    v21 = *a3;
    if (v21 != 255)
    {
      if (*(*(a1 + 270312) + 60))
      {
        if ((0x1F07FFuLL >> v21) & 1) != 0 && ((0x2F0BFFuLL >> v21))
        {
          v6 = (*(a2 + 8 * v21 + 4 * v12 + 28196) + v6);
          if (v12)
          {
            v18 = a2 + 4 * a3[90];
            v19 = 28372;
            goto LABEL_10;
          }
        }
      }
    }
  }

  if ((*v11 & 0xFD) == 0 && v11[495] == 1 && v11[496])
  {
    return (*(a2 + 4 * ((v13 >> 7) & 1) + 29640) + v6);
  }

  return v6;
}

uint64_t sub_277A34F00(_DWORD *a1, _DWORD *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v2 > v3)
  {
    return 0xFFFFFFFFLL;
  }

  if (v2 < v3)
  {
    return 1;
  }

  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  return 1;
}

uint64_t sub_277A34F3C(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unsigned int a4, uint64_t a5)
{
  v5 = a5;
  v27 = *MEMORY[0x277D85DE8];
  v9 = a3[3];
  v10 = *a3;
  if (v10 >= 3 && (v10 & 0xFFFFFFFD) != 13 && *(a1 + 246111) != 0 && (v10 & 0xFE) != 14 && v9 == 0)
  {
    v15 = a3[143];
    v5 = (*(a2 + 8 * (a3[142] != 0) + 4 * (a3[143] != 0) + 32448) + a5);
    if (a3[143])
    {
      v17 = *(a2 + 28 * byte_277C3BCB6[a4] + 4 * v15 + 29668);
      v18 = __clz(v15) ^ 0x1F;
      v19 = (2 << v18) - v15;
      v20 = v18 << 9;
      if (v19 <= **(a2 + 3200))
      {
        v21 = v20 + 512;
      }

      else
      {
        v21 = v20;
      }

      v22 = sub_277B1FBC4(a2 + 416, 1, v26);
      v23 = sub_277A32BC4((a3 + 94), v26, v22, *(*(a1 + 270312) + 72));
      memset(v25, 0, sizeof(v25));
      sub_2779D9F18(a2, 1u, a4, v25);
      v5 = v17 + v5 + v21 + v23 + sub_2779DA010(v25, 0, 1, 0);
    }
  }

  if (a4 >= 3 && byte_277C32971[v9] - 9 >= 0xFFFFFFF8)
  {
    return (*(a2 + 28 * byte_277C32971[v9] + 4 * a3[89] + 28376) + v5);
  }

  return v5;
}

char *sub_277A35128(char *result, uint64_t a2, uint8x8_t *a3, uint64_t a4, unsigned __int16 *a5, int16x8_t a6, int8x8_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12)
{
  v12 = a12;
  if (a5[7] | *a5 || a5[6] | a5[1])
  {
    v13 = (result - 3);
    v14 = vmovn_s16(*a5);
    if (a11 == 4)
    {
      _Q2 = vdupq_lane_s32(v14, 0);
      _Q3 = vdupq_lane_s32(v14, 1);
      v17 = a12 + 4;
      v18.i64[0] = 0x8080808080808080;
      v18.i64[1] = 0x8080808080808080;
      do
      {
        v19 = (v13 + a2 + a2);
        v20 = *v19;
        v21 = (v19 + a2);
        v22 = veorq_s8(*v13, v18);
        _Q17 = vqtbl1q_s8(v22, unk_277BEE0D0);
        _Q5 = vqtbl1q_s8(v22, unk_277BEE0E0);
        __asm
        {
          SDOT            V18.4S, V17.16B, V2.16B
          SDOT            V18.4S, V5.16B, V3.16B
        }

        *_Q5.i8 = vqmovn_s32(_Q18);
        v31 = veorq_s8(*(v13 + a2), v18);
        _Q17 = vqtbl1q_s8(v31, unk_277BEE0D0);
        _Q6 = vqtbl1q_s8(v31, unk_277BEE0E0);
        __asm
        {
          SDOT            V18.4S, V17.16B, V2.16B
          SDOT            V18.4S, V6.16B, V3.16B
        }

        v36 = veorq_s8(v20, v18);
        _Q7 = vqtbl1q_s8(v36, unk_277BEE0D0);
        _Q6 = vqtbl1q_s8(v36, unk_277BEE0E0);
        __asm
        {
          SDOT            V17.4S, V7.16B, V2.16B
          SDOT            V17.4S, V6.16B, V3.16B
        }

        *_Q6.i8 = vqmovn_s32(_Q17);
        v41 = veorq_s8(*v21, v18);
        _Q16 = vqtbl1q_s8(v41, unk_277BEE0D0);
        _Q7 = vqtbl1q_s8(v41, unk_277BEE0E0);
        __asm
        {
          SDOT            V17.4S, V16.16B, V2.16B
          SDOT            V17.4S, V7.16B, V3.16B
        }

        *_Q5.i8 = vqrshrun_n_s16(vqmovn_high_s32(*_Q5.i8, _Q18), 7uLL);
        *_Q6.i8 = vqrshrun_n_s16(vqmovn_high_s32(*_Q6.i8, _Q17), 7uLL);
        a3->i32[0] = _Q5.i32[0];
        *(a3->i32 + a4) = _Q5.i32[1];
        v46 = (a3 + a4 + a4);
        v46->i32[0] = _Q6.i32[0];
        v47 = (v46 + a4);
        v47->i32[0] = _Q6.i32[1];
        v17 -= 4;
        v13 = (v21 + a2);
        a3 = (v47 + a4);
      }

      while (v17 > 4);
    }

    else
    {
      v48 = 4 * a4;
      v49 = 4 * a2;
      _Q3 = vdupq_lane_s32(v14, 0);
      _Q4 = vdupq_lane_s32(v14, 1);
      v52 = &result[2 * a2 - 3];
      v53 = v52 + a2;
      v54 = &result[a2 - 3];
      v55 = a3 + 3 * a4;
      v56 = a3 + 2 * a4;
      result = a3 + a4;
      v57.i64[0] = 0x8080808080808080;
      v57.i64[1] = 0x8080808080808080;
      do
      {
        v58 = 0;
        do
        {
          v59 = veorq_s8(*(v13 + v58), v57);
          _Q18 = vqtbl1q_s8(v59, unk_277BEE0D0);
          _Q19 = vqtbl1q_s8(v59, unk_277BEE0E0);
          _Q6 = vqtbl1q_s8(v59, unk_277BEE0F0);
          __asm
          {
            SDOT            V20.4S, V18.16B, V3.16B
            SDOT            V20.4S, V19.16B, V4.16B
            SDOT            V18.4S, V19.16B, V3.16B
            SDOT            V18.4S, V6.16B, V4.16B
          }

          *_Q6.i8 = vqrshrun_n_s16(vqmovn_high_s32(vqmovn_s32(_Q20), _Q18), 7uLL);
          v67 = veorq_s8(*(v54 + v58), v57);
          _Q18 = vqtbl1q_s8(v67, unk_277BEE0D0);
          _Q19 = vqtbl1q_s8(v67, unk_277BEE0E0);
          _Q7 = vqtbl1q_s8(v67, unk_277BEE0F0);
          __asm
          {
            SDOT            V20.4S, V18.16B, V3.16B
            SDOT            V20.4S, V19.16B, V4.16B
            SDOT            V18.4S, V19.16B, V3.16B
            SDOT            V18.4S, V7.16B, V4.16B
          }

          *_Q7.i8 = vqrshrun_n_s16(vqmovn_high_s32(vqmovn_s32(_Q20), _Q18), 7uLL);
          v75 = veorq_s8(*(v52 + v58), v57);
          _Q18 = vqtbl1q_s8(v75, unk_277BEE0D0);
          _Q19 = vqtbl1q_s8(v75, unk_277BEE0E0);
          _Q16 = vqtbl1q_s8(v75, unk_277BEE0F0);
          __asm
          {
            SDOT            V20.4S, V18.16B, V3.16B
            SDOT            V20.4S, V19.16B, V4.16B
            SDOT            V18.4S, V19.16B, V3.16B
            SDOT            V18.4S, V16.16B, V4.16B
          }

          *_Q16.i8 = vqrshrun_n_s16(vqmovn_high_s32(vqmovn_s32(_Q20), _Q18), 7uLL);
          v83 = veorq_s8(*(v53 + v58), v57);
          _Q18 = vqtbl1q_s8(v83, unk_277BEE0D0);
          _Q19 = vqtbl1q_s8(v83, unk_277BEE0E0);
          _Q17 = vqtbl1q_s8(v83, unk_277BEE0F0);
          __asm
          {
            SDOT            V20.4S, V18.16B, V3.16B
            SDOT            V20.4S, V19.16B, V4.16B
            SDOT            V18.4S, V19.16B, V3.16B
            SDOT            V18.4S, V17.16B, V4.16B
          }

          a3[v58 / 8] = *_Q6.i8;
          *&result[v58] = _Q7.i64[0];
          *&v56[v58] = _Q16.i64[0];
          *&v55[v58] = vqrshrun_n_s16(vqmovn_high_s32(vqmovn_s32(_Q20), _Q18), 7uLL);
          v58 += 8;
        }

        while (a11 != v58);
        v13 = (v13 + v49);
        a3 = (a3 + v48);
        v53 += v49;
        v52 += v49;
        v54 += v49;
        v55 += v48;
        v56 += v48;
        result += v48;
        _VF = __OFSUB__(v12, 4);
        v12 -= 4;
      }

      while (!((v12 < 0) ^ _VF | (v12 == 0)));
    }
  }

  else if (a5[5] | a5[2])
  {
    v91 = (result - 1);
    a6.i64[0] = *(a5 + 2);
    v92 = vshrn_n_s16(a6, 1uLL);
    if (a11 == 4)
    {
      _Q0 = vdupq_lane_s32(v92, 0);
      v94 = a12 + 4;
      v95.i64[0] = 0x8080808080808080;
      v95.i64[1] = 0x8080808080808080;
      do
      {
        v96 = (v91 + a2 + a2);
        v97 = *v96;
        v98 = (v96 + a2);
        _Q3 = vqtbl1q_s8(veorq_s8(*v91, v95), xmmword_277BB74E0);
        __asm { SDOT            V7.4S, V3.16B, V0.16B }

        _Q3 = vqtbl1q_s8(veorq_s8(*(v91 + a2), v95), xmmword_277BB74E0);
        __asm { SDOT            V4.4S, V3.16B, V0.16B }

        _Q3 = vqtbl1q_s8(veorq_s8(v97, v95), xmmword_277BB74E0);
        __asm { SDOT            V5.4S, V3.16B, V0.16B }

        _Q3 = vqtbl1q_s8(veorq_s8(*v98, v95), xmmword_277BB74E0);
        __asm { SDOT            V6.4S, V3.16B, V0.16B }

        *_Q3.i8 = vqrshrun_n_s16(vuzp1q_s16(_Q7, _Q4), 6uLL);
        *_Q4.i8 = vqrshrun_n_s16(vuzp1q_s16(_Q5, _Q6), 6uLL);
        a3->i32[0] = _Q3.i32[0];
        *(a3->i32 + a4) = _Q3.i32[1];
        v107 = (a3 + a4 + a4);
        v107->i32[0] = _Q4.i32[0];
        v108 = (v107 + a4);
        v108->i32[0] = _Q4.i32[1];
        v94 -= 4;
        v91 = (v98 + a2);
        a3 = (v108 + a4);
      }

      while (v94 > 4);
    }

    else
    {
      _Q2 = vdupq_lane_s32(v92, 0);
      v114 = 4 * a2;
      v115 = 4 * a4;
      v116 = &result[2 * a2 - 1];
      v117 = v116 + a2;
      v118 = &result[a2 - 1];
      v119 = a3 + 3 * a4;
      v120 = a3 + 2 * a4;
      result = a3 + a4;
      v121.i64[0] = 0x8080808080808080;
      v121.i64[1] = 0x8080808080808080;
      do
      {
        v122 = 0;
        do
        {
          v123 = veorq_s8(*(v91 + v122), v121);
          _Q16 = vqtbl1q_s8(v123, unk_277BEE0D0);
          _Q4 = vqtbl1q_s8(v123, unk_277BEE0E0);
          __asm
          {
            SDOT            V17.4S, V16.16B, V2.16B
            SDOT            V16.4S, V4.16B, V2.16B
          }

          *_Q4.i8 = vqrshrun_n_s16(vuzp1q_s16(_Q17, _Q16), 6uLL);
          v128 = veorq_s8(*(v118 + v122), v121);
          _Q16 = vqtbl1q_s8(v128, unk_277BEE0D0);
          _Q5 = vqtbl1q_s8(v128, unk_277BEE0E0);
          __asm
          {
            SDOT            V17.4S, V16.16B, V2.16B
            SDOT            V16.4S, V5.16B, V2.16B
          }

          *_Q5.i8 = vqrshrun_n_s16(vuzp1q_s16(_Q17, _Q16), 6uLL);
          v133 = veorq_s8(*(v116 + v122), v121);
          _Q16 = vqtbl1q_s8(v133, unk_277BEE0D0);
          _Q6 = vqtbl1q_s8(v133, unk_277BEE0E0);
          __asm
          {
            SDOT            V17.4S, V16.16B, V2.16B
            SDOT            V16.4S, V6.16B, V2.16B
          }

          *_Q6.i8 = vqrshrun_n_s16(vuzp1q_s16(_Q17, _Q16), 6uLL);
          v138 = veorq_s8(*(v117 + v122), v121);
          _Q16 = vqtbl1q_s8(v138, unk_277BEE0D0);
          _Q7 = vqtbl1q_s8(v138, unk_277BEE0E0);
          __asm
          {
            SDOT            V17.4S, V16.16B, V2.16B
            SDOT            V16.4S, V7.16B, V2.16B
          }

          a3[v122 / 8] = *_Q4.i8;
          *&result[v122] = _Q5.i64[0];
          *&v120[v122] = _Q6.i64[0];
          *&v119[v122] = vqrshrun_n_s16(vuzp1q_s16(_Q17, _Q16), 6uLL);
          v122 += 8;
        }

        while (a11 != v122);
        v91 = (v91 + v114);
        a3 = (a3 + v115);
        v117 += v114;
        v116 += v114;
        v118 += v114;
        v119 += v115;
        v120 += v115;
        result += v115;
        _VF = __OFSUB__(v12, 4);
        v12 -= 4;
      }

      while (!((v12 < 0) ^ _VF | (v12 == 0)));
    }
  }

  else
  {
    a6.i8[0] = *(a5 + 6);
    a7.i8[0] = *(a5 + 8);
    if (a11 == 4)
    {
      v143 = a12 + 4;
      v144 = vdup_lane_s8(*a6.i8, 0);
      v145 = vdup_lane_s8(a7, 0);
      v146 = 2 * a2 + a2;
      do
      {
        v147.i32[0] = *result;
        v147.i32[1] = *&result[a2];
        v148.i32[0] = *(result + 1);
        v148.i32[1] = *&result[a2 + 1];
        v149.i32[0] = *&result[2 * a2];
        v149.i32[1] = *&result[v146];
        v150.i32[0] = *&result[2 * a2 + 1];
        v150.i32[1] = *&result[v146 + 1];
        v151 = vqrshrn_n_u16(vmlal_u8(vmull_u8(v148, v145), v147, v144), 7uLL);
        v152 = vqrshrn_n_u16(vmlal_u8(vmull_u8(v150, v145), v149, v144), 7uLL);
        a3->i32[0] = v151.i32[0];
        *(a3->i32 + a4) = v151.i32[1];
        v153 = (a3 + a4 + a4);
        v153->i32[0] = v152.i32[0];
        v154 = (v153 + a4);
        v154->i32[0] = v152.i32[1];
        result += 4 * a2;
        v143 -= 4;
        a3 = (v154 + a4);
      }

      while (v143 > 4);
    }

    else if (a11 == 8)
    {
      v109 = a12 + 2;
      v110 = vdup_lane_s8(*a6.i8, 0);
      v111 = vdup_lane_s8(a7, 0);
      do
      {
        v112 = vqrshrn_n_u16(vmlal_u8(vmull_u8(*&result[a2 + 1], v111), *&result[a2], v110), 7uLL);
        *a3 = vqrshrn_n_u16(vmlal_u8(vmull_u8(*(result + 1), v111), *result, v110), 7uLL);
        *(a3 + a4) = v112;
        a3 = (a3 + 2 * a4);
        v109 -= 2;
        result += a2 + a2;
      }

      while (v109 > 2);
    }

    else
    {
      v155 = vdupq_lane_s8(*a6.i8, 0);
      v156 = vdupq_lane_s8(a7, 0);
      do
      {
        v157 = 0;
        do
        {
          *a3[v157 / 8].i8 = vqrshrn_high_n_u16(vqrshrn_n_u16(vmlal_u8(vmull_u8(*&result[v157 + 1], *v156.i8), *&result[v157], *v155.i8), 7uLL), vmlal_high_u8(vmull_high_u8(*&result[v157 + 1], v156), *&result[v157], v155), 7uLL);
          v157 += 16;
        }

        while (a11 != v157);
        result += a2;
        a3 = (a3 + a4);
        _VF = __OFSUB__(v12--, 1);
      }

      while (!((v12 < 0) ^ _VF | (v12 == 0)));
    }
  }

  return result;
}

uint8x8_t *sub_277A35724(uint8x8_t *result, uint64_t a2, int8x8_t *a3, uint64_t a4, int8x8_t a5, int8x8_t a6, double a7, double a8, int16x8_t a9, int16x8_t a10, int8x16_t _Q6, int8x16_t _Q7, uint64_t a13, uint64_t a14, unsigned __int16 *a15, uint64_t a16, int a17, int a18)
{
  v29 = a17;
  v28 = a18;
  v30 = (result - 3 * a2);
  if (a15[7] | *a15 || a15[6] | a15[1])
  {
    v31 = vmovn_s16(*a15);
    if (a17 == 4)
    {
      v32 = (v30 + a2 + a2);
      v33 = *v32;
      v34 = (v32 + a2);
      v35 = *v34;
      v36 = (v34 + a2);
      v37 = *v36;
      v38 = (v36 + a2);
      v39 = *v38;
      v40 = *(v38 + a2);
      v41 = (&v30[a2] - a2);
      *a10.i8 = veor_s8(*(v30 + a2), 0x8080808080808080);
      v42 = veor_s8(v33, 0x8080808080808080);
      v43 = veor_s8(v35, 0x8080808080808080);
      v44 = veor_s8(v37, 0x8080808080808080);
      v45 = veor_s8(v39, 0x8080808080808080);
      *a9.i8 = vzip1_s8(veor_s8(*v30, 0x8080808080808080), *a10.i8);
      *v23.i8 = vzip1_s8(v42, v43);
      _Q18 = vzip1q_s16(a9, v23);
      *a9.i8 = vzip1_s8(*a10.i8, v42);
      *a10.i8 = vzip1_s8(v43, v44);
      _Q17 = vzip1q_s16(a9, a10);
      *a9.i8 = vzip1_s8(v44, v45);
      _Q16 = vzip1q_s16(v23, a9);
      *a9.i8 = vzip1_s8(v45, veor_s8(v40, 0x8080808080808080));
      _Q4 = vzip1q_s16(a10, a9);
      _Q6 = vdupq_lane_s32(v31, 0);
      _Q7 = vdupq_lane_s32(v31, 1);
      do
      {
        v20.i64[0] = *v41;
        v52 = (v41 + a2);
        _Q20.i64[0] = *v52;
        v53 = (v52 + a2);
        v54 = *v53;
        v55 = (v53 + a2);
        *v20.i8 = vzip1_s8(veor_s8(*v20.i8, 0x8080808080808080), veor_s8(*_Q20.i8, 0x8080808080808080));
        *_Q20.i8 = vzip1_s8(veor_s8(v54, 0x8080808080808080), veor_s8(*v55, 0x8080808080808080));
        _Q5 = vzip1q_s16(v20, _Q20);
        __asm { SDOT            V19.4S, V18.16B, V6.16B }

        _Q18 = vqtbl2q_s8(*_Q4.i8, unk_277BEE100);
        __asm { SDOT            V20.4S, V17.16B, V6.16B }

        _Q17 = vqtbl2q_s8(*_Q4.i8, unk_277BEE110);
        __asm { SDOT            V21.4S, V16.16B, V6.16B }

        _Q16 = vqtbl2q_s8(*_Q4.i8, unk_277BEE120);
        __asm
        {
          SDOT            V19.4S, V18.16B, V7.16B
          SDOT            V20.4S, V17.16B, V7.16B
          SDOT            V21.4S, V16.16B, V7.16B
          SDOT            V22.4S, V4.16B, V6.16B
          SDOT            V22.4S, V5.16B, V7.16B
        }

        v20 = vqmovn_high_s32(vqmovn_s32(_Q19), _Q20);
        *v20.i8 = vqrshrun_n_s16(v20, 7uLL);
        a3->i32[0] = v20.i32[0];
        *(a3->i32 + a4) = v20.i32[1];
        v68 = (a3 + a4 + a4);
        *v20.i8 = vqrshrun_n_s16(vqmovn_high_s32(vqmovn_s32(_Q21), _Q22), 7uLL);
        v68->i32[0] = v20.i32[0];
        v69 = (v68 + a4);
        v69->i32[0] = v20.i32[1];
        v41 = (v55 + a2);
        a3 = (v69 + a4);
        _Q4 = _Q5;
        v28 -= 4;
      }

      while (v28);
    }

    else
    {
      _Q3 = vdupq_lane_s32(v31, 0);
      _Q4 = vdupq_lane_s32(v31, 1);
      do
      {
        v72 = (v30 + a2 + a2);
        _Q16.i64[0] = *v72;
        v73 = (v72 + a2);
        _Q17.i64[0] = *v73;
        v74 = (v73 + a2);
        v75 = *v74;
        v76 = (v74 + a2);
        *_Q6.i8 = veor_s8(*v30, 0x8080808080808080);
        *_Q7.i8 = veor_s8(*(v30 + a2), 0x8080808080808080);
        *_Q16.i8 = veor_s8(*_Q16.i8, 0x8080808080808080);
        *_Q17.i8 = veor_s8(*_Q17.i8, 0x8080808080808080);
        *_Q21.i8 = veor_s8(v75, 0x8080808080808080);
        *v24.i8 = veor_s8(*v76, 0x8080808080808080);
        *v25.i8 = veor_s8(*(v76 + a2), 0x8080808080808080);
        v77 = vzip1q_s8(_Q6, _Q7);
        v78 = vzip1q_s8(_Q16, _Q17);
        v79 = (v30 + 7 * a2);
        _Q23 = vzip1q_s16(v77, v78);
        _Q18 = vzip2q_s16(v77, v78);
        v82 = vzip1q_s8(_Q7, _Q16);
        v83 = vzip1q_s8(_Q17, _Q21);
        _Q22 = vzip1q_s16(v82, v83);
        _Q19 = vzip2q_s16(v82, v83);
        v86 = vzip1q_s8(_Q21, v24);
        _Q21 = vzip1q_s16(v78, v86);
        _Q20 = vzip2q_s16(v78, v86);
        v88 = vzip1q_s8(v24, v25);
        _Q6 = vzip1q_s16(v83, v88);
        _Q16 = vzip2q_s16(v83, v88);
        v89 = a3;
        v90 = a18;
        do
        {
          v24.i64[0] = *v79;
          v91 = (v79 + a2);
          v25.i64[0] = *v91;
          v92 = (v91 + a2);
          v26.i64[0] = *v92;
          v93 = (v92 + a2);
          *v24.i8 = veor_s8(*v24.i8, 0x8080808080808080);
          *v25.i8 = veor_s8(*v25.i8, 0x8080808080808080);
          *v26.i8 = veor_s8(*v26.i8, 0x8080808080808080);
          *v27.i8 = veor_s8(*v93, 0x8080808080808080);
          v94 = vzip1q_s8(v24, v25);
          v95 = vzip1q_s8(v26, v27);
          _Q7 = vzip1q_s16(v94, v95);
          _Q17 = vzip2q_s16(v94, v95);
          __asm { SDOT            V24.4S, V23.16B, V3.16B }

          _Q23 = vqtbl2q_s8(*_Q6.i8, unk_277BEE100);
          __asm { SDOT            V25.4S, V22.16B, V3.16B }

          _Q22 = vqtbl2q_s8(*_Q6.i8, unk_277BEE110);
          __asm { SDOT            V26.4S, V21.16B, V3.16B }

          _Q21 = vqtbl2q_s8(*_Q6.i8, unk_277BEE120);
          __asm { SDOT            V27.4S, V18.16B, V3.16B }

          _Q18 = vqtbl2q_s8(*_Q16.i8, unk_277BEE100);
          __asm { SDOT            V28.4S, V19.16B, V3.16B }

          _Q19 = vqtbl2q_s8(*_Q16.i8, unk_277BEE110);
          __asm { SDOT            V29.4S, V20.16B, V3.16B }

          _Q20 = vqtbl2q_s8(*_Q16.i8, unk_277BEE120);
          __asm
          {
            SDOT            V24.4S, V23.16B, V4.16B
            SDOT            V27.4S, V18.16B, V4.16B
          }

          v24 = vqmovn_high_s32(vqmovn_s32(_Q24), _Q27);
          __asm
          {
            SDOT            V25.4S, V22.16B, V4.16B
            SDOT            V28.4S, V19.16B, V4.16B
          }

          v25 = vqmovn_high_s32(vqmovn_s32(_Q25), _Q28);
          __asm
          {
            SDOT            V26.4S, V21.16B, V4.16B
            SDOT            V29.4S, V20.16B, V4.16B
          }

          v26 = vqmovn_high_s32(vqmovn_s32(_Q26), _Q29);
          __asm
          {
            SDOT            V27.4S, V6.16B, V3.16B
            SDOT            V27.4S, V7.16B, V4.16B
            SDOT            V28.4S, V16.16B, V3.16B
            SDOT            V28.4S, V17.16B, V4.16B
          }

          v27 = vqmovn_high_s32(vqmovn_s32(_Q27), _Q28);
          *v89 = vqrshrun_n_s16(v24, 7uLL);
          v112 = (v89 + a4);
          *v112 = vqrshrun_n_s16(v25, 7uLL);
          v113 = (v112 + a4);
          *v113 = vqrshrun_n_s16(v26, 7uLL);
          v114 = (v113 + a4);
          v79 = (v93 + a2);
          *v114 = vqrshrun_n_s16(v27, 7uLL);
          v89 = (v114 + a4);
          _Q6 = _Q7;
          _Q16 = _Q17;
          v90 -= 4;
        }

        while (v90);
        ++v30;
        ++a3;
        v29 -= 8;
      }

      while (v29);
    }
  }

  else if (a15[5] | a15[2])
  {
    v115 = (v30 + 2 * a2);
    v116 = vshr_n_s16(*(a15 + 2), 1uLL);
    if (a17 == 4)
    {
      v117.i32[0] = v115->i32[0];
      v117.i32[1] = *(v115->i32 + a2);
      v118 = (v115 + a2);
      v119.i32[0] = *v118;
      v119.i32[1] = *(v118 + a2);
      v120 = vmovl_u8(v117);
      v121 = vdupq_lane_s16(v116, 0);
      v122 = vdupq_lane_s16(v116, 1);
      v123 = vdupq_lane_s16(v116, 2);
      v124 = vdupq_lane_s16(v116, 3);
      v125 = vmovl_u8(v119);
      do
      {
        v126.i32[0] = *(result->i32 + a2);
        v126.i32[1] = *(result->i32 + a2 + a2);
        v127.i32[0] = *(result->i32 + 2 * a2);
        v127.i32[1] = *(result->i32 + 2 * a2 + a2);
        v128.i32[0] = *(result->i32 + 3 * a2);
        v128.i32[1] = *(result->i32 + 3 * a2 + a2);
        v129.i32[0] = result->i32[a2];
        v129.i32[1] = *(&result->i32[a2] + a2);
        v130 = vmovl_u8(v126);
        v131 = vmovl_u8(v127);
        v132 = vmlaq_s16(vmulq_s16(v125, v122), v120, v121);
        v120 = vmovl_u8(v128);
        v133 = vmovl_u8(v129);
        *v132.i8 = vqrshrun_n_s16(vmlaq_s16(vmlaq_s16(v132, v123, v130), v124, v131), 6uLL);
        *v130.i8 = vqrshrun_n_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v121, v130), v122, v131), v123, v120), v124, v133), 6uLL);
        a3->i32[0] = v132.i32[0];
        *(a3->i32 + a4) = v132.i32[1];
        v134 = (a3 + a4 + a4);
        v134->i32[0] = v130.i32[0];
        v135 = (v134 + a4);
        result = (result + 4 * a2);
        v135->i32[0] = v130.i32[1];
        a3 = (v135 + a4);
        v125 = v133;
        v28 -= 4;
      }

      while (v28);
    }

    else
    {
      v143 = vdupq_lane_s16(v116, 0);
      v144 = vdupq_lane_s16(v116, 1);
      v145 = vdupq_lane_s16(v116, 2);
      v146 = vdupq_lane_s16(v116, 3);
      do
      {
        v147 = vmovl_u8(*v115);
        v148 = vmovl_u8(*(v115 + a2));
        v149 = vmovl_u8(*(v115 + a2 + a2));
        v150 = (v115 + 3 * a2);
        v151 = a18;
        v152 = a3;
        do
        {
          v153 = *v150;
          v154 = (v150 + a2);
          v155 = *v154;
          v156 = (v154 + a2);
          v157 = *v156;
          v158 = (v156 + a2);
          v159 = vmovl_u8(v153);
          v160 = vmlaq_s16(vmlaq_s16(vmulq_s16(v148, v144), v149, v145), v147, v143);
          v147 = vmovl_u8(v155);
          v161 = vmovl_u8(v157);
          v162 = vmovl_u8(*v158);
          *v152 = vqrshrun_n_s16(vmlaq_s16(v160, v146, v159), 6uLL);
          v163 = (v152 + a4);
          *v163 = vqrshrun_n_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v148, v143), v149, v144), v145, v159), v146, v147), 6uLL);
          v164 = (v163 + a4);
          *v164 = vqrshrun_n_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v149, v143), v144, v159), v145, v147), v146, v161), 6uLL);
          v165 = (v164 + a4);
          v150 = (v158 + a2);
          *v165 = vqrshrun_n_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v143, v159), v144, v147), v145, v161), v146, v162), 6uLL);
          v152 = (v165 + a4);
          v148 = v161;
          v149 = v162;
          v151 -= 4;
        }

        while (v151);
        ++v115;
        ++a3;
        v29 -= 8;
      }

      while (v29);
    }
  }

  else
  {
    a5.i8[0] = *(a15 + 6);
    a6.i8[0] = *(a15 + 8);
    if (a17 == 4)
    {
      v166 = a18 + 4;
      v167 = vdup_lane_s8(a5, 0);
      v168 = vdup_lane_s8(a6, 0);
      do
      {
        v169.i32[0] = result->i32[0];
        v169.i32[1] = *(result->i32 + a2);
        v170.i32[0] = *(result->i32 + a2);
        v170.i32[1] = *(result->i32 + a2 + a2);
        v171.i32[0] = *(result->i32 + 2 * a2);
        v171.i32[1] = *(result->i32 + 2 * a2 + a2);
        v172.i32[0] = *(result->i32 + 3 * a2);
        v172.i32[1] = *(result->i32 + 3 * a2 + a2);
        v173 = vqrshrn_n_u16(vmlal_u8(vmull_u8(v170, v168), v169, v167), 7uLL);
        v174 = vqrshrn_n_u16(vmlal_u8(vmull_u8(v172, v168), v171, v167), 7uLL);
        a3->i32[0] = v173.i32[0];
        *(a3->i32 + a4) = v173.i32[1];
        v175 = (a3 + a4 + a4);
        v175->i32[0] = v174.i32[0];
        v176 = (v175 + a4);
        v176->i32[0] = v174.i32[1];
        result = (result + 4 * a2);
        v166 -= 4;
        a3 = (v176 + a4);
      }

      while (v166 > 4);
    }

    else if (a17 == 8)
    {
      v136 = a18 + 2;
      v137 = vdup_lane_s8(a5, 0);
      v138 = vdup_lane_s8(a6, 0);
      do
      {
        v139 = *result;
        v140 = *(result + a2);
        result = (result + 2 * a2);
        v141 = vmlal_u8(vmull_u8(v140, v138), v139, v137);
        v142 = vmlal_u8(vmull_u8(*result, v138), v140, v137);
        *a3 = vqrshrn_n_u16(v141, 7uLL);
        *(a3 + a4) = vqrshrn_n_u16(v142, 7uLL);
        a3 = (a3 + 2 * a4);
        v136 -= 2;
      }

      while (v136 > 2);
    }

    else
    {
      v177 = result + a2;
      v178 = vdupq_lane_s8(a5, 0);
      v179 = vdupq_lane_s8(a6, 0);
      do
      {
        v180 = 0;
        do
        {
          *a3[v180].i8 = vqrshrn_high_n_u16(vqrshrn_n_u16(vmlal_u8(vmull_u8(*&v177[v180 * 8], *v179.i8), result[v180], *v178.i8), 7uLL), vmlal_high_u8(vmull_high_u8(*&v177[v180 * 8], v179), *result[v180].i8, v178), 7uLL);
          v180 += 2;
        }

        while (a17 != (v180 * 8));
        result = (result + a2);
        a3 = (a3 + a4);
        v177 += a2;
        _VF = __OFSUB__(v28--, 1);
      }

      while (!((v28 < 0) ^ _VF | (v28 == 0)));
    }
  }

  return result;
}

char *sub_277A35E00(char *result, uint64_t a2, int8x8_t *a3, uint64_t a4, unsigned __int16 *a5, int8x8_t a6, int8x8_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12)
{
  v12 = a12;
  if (a5[7] | *a5 || a5[6] | a5[1])
  {
    v13 = (result - 3);
    v14 = vshrq_n_s16(*a5, 1uLL);
    if (a12 == 4)
    {
      v15 = 0;
      v16 = *(result - 3);
      v17 = (v13 + a2);
      v18 = *v17;
      v19 = (v17 + a2);
      v20 = *(v19 + a2);
      v21 = vtrn1_s8(v16, v18);
      v22 = vtrn2_s8(v16, v18);
      v23 = vtrn1_s8(*v19, v20);
      v24 = vtrn2_s8(*v19, v20);
      v25 = vtrn1_s16(v21, v23);
      v26 = vtrn2_s16(v21, v23);
      v27 = vtrn1_s16(v22, v24);
      v28 = vtrn2_s16(v22, v24);
      v29 = vmovl_u8(v25);
      v30 = vmovl_u8(v27);
      v31 = vmovl_u8(v26);
      v32.i64[0] = vmovl_u8(v28).u64[0];
      v33 = vextq_s8(v29, v29, 8uLL).u64[0];
      v34 = vextq_s8(v30, v30, 8uLL).u64[0];
      *v46.i8 = vdup_lane_s16(*v14.i8, 0);
      *v43.i8 = vdup_lane_s16(*v14.i8, 1);
      *v42.i8 = vdup_lane_s16(*v14.i8, 2);
      *v41.i8 = vdup_lane_s16(*v14.i8, 3);
      v35 = vextq_s8(v31, v31, 8uLL).u64[0];
      v36 = vdupq_laneq_s16(v14, 5);
      v37 = vdupq_laneq_s16(v14, 6);
      v38.i64[0] = v37.i64[0];
      v38.i64[1] = v36.i64[0];
      v39.i64[0] = v36.i64[0];
      v39.u64[1] = vdup_laneq_s16(v14, 4);
      v40.i64[0] = v39.i64[1];
      v40.i64[1] = v41.i64[0];
      v41.i64[1] = v42.i64[0];
      v42.i64[1] = v43.i64[0];
      v43.i64[1] = v46.i64[0];
      v44 = vdupq_laneq_s16(v14, 7);
      v45.i64[0] = v46.i64[0];
      v45.i64[1] = v37.i64[0];
      v46.i64[1] = v39.i64[1];
      do
      {
        v47 = *&result[v15 + 4];
        v48 = *&result[a2 + 4 + v15];
        v49 = *&result[2 * a2 + 4 + v15];
        v50 = *&result[3 * a2 + 4 + v15];
        v51 = vtrn1_s8(v47, v48);
        v52 = vtrn2_s8(v47, v48);
        v53 = vtrn1_s8(v49, v50);
        v54 = vtrn2_s8(v49, v50);
        v55 = vzip1_s16(v51, v53);
        v56 = vtrn2_s16(v51, v53);
        v57 = vzip1_s16(v52, v54);
        v58 = vtrn2_s16(v52, v54);
        v59.i64[0] = v34;
        v59.i64[1] = v34;
        v60.i64[0] = v35;
        v60.i64[1] = v35;
        v61.i64[0] = v33;
        v61.i64[1] = v33;
        v32.i64[1] = v32.i64[0];
        v62.i64[0] = v31.i64[0];
        v62.i64[1] = v31.i64[0];
        v30.i64[1] = v30.i64[0];
        v29.i64[1] = vmovl_u8(v55).u64[0];
        v63 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v60, v38), v59, v39), v61, v40), v32, v41), v62, v42), v30, v43), v29, v45);
        v29.i64[0] = v33;
        v33 = vmovl_u8(v57).u64[0];
        v30.i64[0] = v34;
        v34 = vmovl_u8(v56).u64[0];
        v31.i64[1] = v29.i64[1];
        v64 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v60, v40), v59, v41), v61, v42), v32, v43), v31, v46);
        v31.i64[0] = v35;
        v35 = vmovl_u8(v58).u64[0];
        v32 = vmovl_u8(vzip1_s32(v55, v57));
        v65 = vqrshrun_n_s16(vmlaq_s16(v63, v32, v44), 6uLL);
        *v32.i8 = vqrshrun_n_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v64, v32, v36), vmovl_u8(vzip1_s32(v57, v56)), v37), vmovl_u8(vzip1_s32(v56, v58)), v44), 6uLL);
        v66 = vtrn1_s16(v65, *v32.i8);
        *v32.i8 = vtrn2_s16(v65, *v32.i8);
        v67 = vzip1_s32(v66, *v32.i8);
        *v32.i8 = vzip2_s32(v66, *v32.i8);
        v68 = vtrn1_s8(v67, *v32.i8);
        a3->i32[v15 / 4] = v68.i32[0];
        *v32.i8 = vtrn2_s8(v67, *v32.i8);
        *(a3->i32 + 2 * a4 + v15) = v68.i32[1];
        *(a3->i32 + a4 + v15) = v32.i32[0];
        *(a3->i32 + 3 * a4 + v15) = v32.i32[1];
        v15 += 4;
        v32.i64[0] = v29.i64[1];
      }

      while (a11 != v15);
    }

    else if (a11 == 4)
    {
      v69 = vdupq_lane_s16(*v14.i8, 0);
      v70 = vdupq_lane_s16(*v14.i8, 1);
      v71 = vdupq_lane_s16(*v14.i8, 2);
      v72 = vdupq_lane_s16(*v14.i8, 3);
      v73 = vdupq_laneq_s16(v14, 4);
      v74 = a12 + 8;
      v75 = vdupq_laneq_s16(v14, 5);
      v76 = vdupq_laneq_s16(v14, 6);
      v77 = vdupq_laneq_s16(v14, 7);
      v78 = (result + 4);
      do
      {
        *v79.i8 = *(v78 - 7);
        v80 = (&v78[-1] + a2 + 1);
        v81.i64[0] = *v80;
        result = v80 + a2;
        v82.i64[0] = *(v80 + a2);
        v83 = v80 + a2 + a2;
        v84.i64[0] = *v83;
        v85 = &v83[a2 + a2];
        v86 = &v85[a2 + a2];
        v79.i64[1] = *&v83[a2];
        v81.i64[1] = *v85;
        v87 = vtrn1q_s8(v79, v81);
        v82.i64[1] = *&v85[a2];
        v84.i64[1] = *v86;
        v88 = vtrn1q_s8(v82, v84);
        v89 = vtrn2q_s8(v79, v81);
        v90 = vtrn2q_s8(v82, v84);
        v91 = vtrn1q_s16(v87, v88);
        v92 = vtrn2q_s16(v87, v88);
        v93 = vtrn1q_s16(v89, v90);
        v94 = vtrn2q_s16(v89, v90);
        v95 = vuzp1q_s32(v91, v93);
        v96 = vuzp2q_s32(v91, v93);
        v97 = vuzp1q_s32(v92, v94);
        v98 = vmovl_u8(*v95.i8);
        v99 = vmovl_high_u8(v95);
        v100 = vmovl_u8(vzip2_s32(*v92.i8, *&vextq_s8(v92, v92, 8uLL)));
        v101 = vmovl_u8(*v97.i8);
        v102 = vzip1_s32(*v78, *&v83[a2 + 7]);
        v103 = vmovl_high_u8(v97);
        *v92.i8 = vzip1_s32(*(v78 + a2), *(v85 + 7));
        *v97.i8 = vzip1_s32(*(v78 + a2 + a2), *&v85[a2 + 7]);
        *v88.i8 = vzip1_s32(*(v83 + 7), *(v86 + 7));
        v104 = vtrn1_s16(v102, *v97.i8);
        v105 = vtrn2_s16(v102, *v97.i8);
        v106 = vmovl_u8(*v96.i8);
        v107 = vtrn1_s16(*v92.i8, *v88.i8);
        *v92.i8 = vtrn2_s16(*v92.i8, *v88.i8);
        *v88.i8 = vtrn1_s8(v104, v107);
        v108 = vtrn2_s8(v104, v107);
        v109 = vtrn1_s8(v105, *v92.i8);
        v110 = vmovl_high_u8(v96);
        *v96.i8 = vtrn2_s8(v105, *v92.i8);
        v111 = vmovl_u8(*v88.i8);
        v112 = vmovl_u8(v108);
        v113 = vmovl_u8(v109);
        v114 = vqrshrun_n_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v76, v100), v70, v99), v69, v98), v71, v101), v72, v103), v73, v106), v75, v110), v77, v111), 6uLL);
        *v98.i8 = vqrshrun_n_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v75, v100), v70, v101), v69, v99), v71, v103), v72, v106), v73, v110), v76, v111), v77, v112), 6uLL);
        v115 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v73, v100), v70, v103), v69, v101), v71, v106), v72, v110), v75, v111), v76, v112), v77, v113);
        v116 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v72, v100), v70, v106), v69, v103), v71, v110);
        *v103.i8 = vqrshrun_n_s16(v115, 6uLL);
        *v116.i8 = vqrshrun_n_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v116, v73, v111), v75, v112), v76, v113), v77, vmovl_u8(*v96.i8)), 6uLL);
        *v96.i8 = vtrn1_s8(v114, *v98.i8);
        *v113.i8 = vtrn2_s8(v114, *v98.i8);
        *v106.i8 = vtrn1_s8(*v103.i8, *v116.i8);
        *v116.i8 = vtrn2_s8(*v103.i8, *v116.i8);
        *v103.i8 = vtrn1_s16(*v96.i8, *v106.i8);
        *v96.i8 = vtrn2_s16(*v96.i8, *v106.i8);
        *v106.i8 = vtrn1_s16(*v113.i8, *v116.i8);
        a3->i32[0] = v103.i32[0];
        a3->i32[a4] = v103.i32[1];
        *(a3->i32 + a4) = v106.i32[0];
        *v116.i8 = vtrn2_s16(*v113.i8, *v116.i8);
        *(a3->i32 + 5 * a4) = v106.i32[1];
        *(a3->i32 + 2 * a4) = v96.i32[0];
        *(a3->i32 + 6 * a4) = v96.i32[1];
        *(a3->i32 + 3 * a4) = v116.i32[0];
        *(a3->i32 + 7 * a4) = v116.i32[1];
        a3 += a4;
        v74 -= 8;
        v78 += a2;
      }

      while (v74 > 8);
    }

    else
    {
      v117 = 8 * a2;
      v118 = vdupq_lane_s16(*v14.i8, 0);
      v119 = vdupq_lane_s16(*v14.i8, 1);
      v120 = vdupq_lane_s16(*v14.i8, 2);
      v121 = vdupq_lane_s16(*v14.i8, 3);
      v122 = vdupq_laneq_s16(v14, 4);
      v123 = vdupq_laneq_s16(v14, 5);
      v124 = vdupq_laneq_s16(v14, 6);
      v125 = result + 4;
      v126 = vdupq_laneq_s16(v14, 7);
      do
      {
        v127 = 0;
        v128.i64[0] = *(v13 + a2);
        v129 = (v13 + a2 + a2);
        v130.i64[0] = *v129;
        v131 = (v129 + a2);
        v132.i64[0] = *v131;
        v133 = (v131 + a2);
        v134 = *v133;
        v135 = (v133 + a2);
        v136 = *v135;
        v137 = (v135 + a2);
        v138.i64[0] = *v13;
        v138.i64[1] = v134;
        v128.i64[1] = v136;
        v139 = vtrn1q_s8(v138, v128);
        v140 = vtrn2q_s8(v138, v128);
        v130.i64[1] = *v137;
        v132.i64[1] = *(v137 + a2);
        v141 = vtrn1q_s8(v130, v132);
        v142 = vtrn2q_s8(v130, v132);
        v143 = vtrn1q_s16(v139, v141);
        v144 = vtrn2q_s16(v139, v141);
        v145 = vtrn1q_s16(v140, v142);
        v146 = vtrn2q_s16(v140, v142);
        v147 = vuzp1q_s32(v143, v145);
        v148 = vuzp2q_s32(v143, v145);
        v149 = vuzp1q_s32(v144, v146);
        v150 = vzip2_s32(*v144.i8, *&vextq_s8(v144, v144, 8uLL));
        v151 = vmovl_u8(*v147.i8);
        v152 = vmovl_high_u8(v147);
        v153 = vmovl_u8(*v149.i8);
        v154 = vmovl_high_u8(v149);
        v155 = vmovl_u8(*v148.i8);
        v156 = vmovl_high_u8(v148);
        v157 = vmovl_u8(v150);
        do
        {
          v158.i64[0] = *&v125[v127 * 8];
          v159 = &v125[v127 * 8 + a2];
          v160.i64[0] = *v159;
          v161 = (v159 + a2);
          v162.i64[0] = *v161;
          v163.i64[0] = *(v161 + a2);
          v164 = (v161 + a2 + a2);
          v165 = *v164;
          v166 = (v164 + a2);
          v167 = *v166;
          v168 = (v166 + a2);
          v158.i64[1] = v165;
          v160.i64[1] = v167;
          v162.i64[1] = *v168;
          v163.i64[1] = *(v168 + a2);
          v169 = vtrn1q_s8(v158, v160);
          v170 = vtrn2q_s8(v158, v160);
          v171 = vtrn1q_s8(v162, v163);
          v172 = vtrn2q_s8(v162, v163);
          v173 = vtrn1q_s16(v169, v171);
          v174 = vtrn1q_s16(v170, v172);
          v175 = vtrn2q_s16(v169, v171);
          v176 = vtrn2q_s16(v170, v172);
          v177 = vuzp1q_s32(v173, v174);
          v178 = vuzp2q_s32(v173, v174);
          v179 = vuzp1q_s32(v175, v176);
          v180 = vuzp2q_s32(v175, v176);
          v181 = vmovl_u8(*v177.i8);
          v182 = vmulq_s16(v151, v118);
          v151 = vmovl_high_u8(v177);
          v183 = vmlaq_s16(vmlaq_s16(v182, v152, v119), v153, v120);
          v184 = vmulq_s16(v152, v118);
          v152 = vmovl_u8(*v179.i8);
          v185 = vmlaq_s16(v184, v153, v119);
          v186 = vmulq_s16(v153, v118);
          v153 = vmovl_high_u8(v179);
          v187 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v183, v154, v121), v155, v122), v156, v123), v157, v124);
          v188 = vmlaq_s16(vmlaq_s16(v185, v154, v120), v155, v121);
          v189 = vmlaq_s16(v186, v154, v119);
          v190 = vmulq_s16(v154, v118);
          v154 = vmovl_u8(*v178.i8);
          v191 = vmlaq_s16(vmlaq_s16(v188, v156, v122), v157, v123);
          v192 = vmlaq_s16(v189, v155, v120);
          v193 = vmlaq_s16(v190, v155, v119);
          v194 = vmulq_s16(v155, v118);
          v155 = vmovl_high_u8(v178);
          v195 = vmlaq_s16(vmlaq_s16(v192, v156, v121), v157, v122);
          v196 = vmlaq_s16(v193, v156, v120);
          v197 = vmlaq_s16(v194, v156, v119);
          v198 = vmulq_s16(v156, v118);
          v156 = vmovl_u8(*v180.i8);
          v199 = vmlaq_s16(v196, v157, v121);
          v200 = vmlaq_s16(v197, v157, v120);
          v201 = vmlaq_s16(v198, v157, v119);
          v202 = vmulq_s16(v157, v118);
          v157 = vmovl_high_u8(v180);
          *v180.i8 = vqrshrun_n_s16(vmlaq_s16(v187, v126, v181), 6uLL);
          *v187.i8 = vqrshrun_n_s16(vmlaq_s16(vmlaq_s16(v191, v124, v181), v126, v151), 6uLL);
          *v191.i8 = vqrshrun_n_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v195, v123, v181), v124, v151), v126, v152), 6uLL);
          *v195.i8 = vqrshrun_n_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v199, v122, v181), v123, v151), v124, v152), v126, v153), 6uLL);
          v203 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v202, v119, v181), v120, v151), v121, v152), v122, v153), v123, v154), v124, v155), v126, v156);
          v204 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v119, v151), v118, v181), v120, v152), v121, v153), v122, v154), v123, v155), v124, v156), v126, v157);
          v205 = vqrshrun_high_n_s16(*v180.i8, vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v200, v121, v181), v122, v151), v123, v152), v124, v153), v126, v154), 6uLL);
          v206 = vqrshrun_high_n_s16(*v187.i8, vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v201, v120, v181), v121, v151), v122, v152), v123, v153), v124, v154), v126, v155), 6uLL);
          v207 = vtrn1q_s8(v205, v206);
          v208 = vtrn2q_s8(v205, v206);
          v209 = vqrshrun_high_n_s16(*v191.i8, v203, 6uLL);
          v210 = vqrshrun_high_n_s16(*v195.i8, v204, 6uLL);
          v211 = vtrn1q_s8(v209, v210);
          v212 = vtrn2q_s8(v209, v210);
          v213 = vtrn1q_s16(v207, v211);
          v214 = vtrn2q_s16(v207, v211);
          v215 = vtrn1q_s16(v208, v212);
          v216 = vtrn2q_s16(v208, v212);
          v217 = vuzp1q_s32(v213, v215);
          v218 = vuzp2q_s32(v213, v215);
          v219 = vuzp1q_s32(v214, v216);
          v220 = vuzp2q_s32(v214, v216);
          a3[v127] = *v217.i8;
          v221 = (&a3[v127] + a4);
          *v221 = vextq_s8(v217, v217, 8uLL).u64[0];
          v222 = (v221 + a4);
          v223 = (v222 + a4 + a4);
          *v222 = *v219.i8;
          *(v222 + a4) = vextq_s8(v219, v219, 8uLL).u64[0];
          v224 = (v223 + a4 + a4);
          ++v127;
          *v223 = *v218.i8;
          *(v223 + a4) = vextq_s8(v218, v218, 8uLL).u64[0];
          *v224 = *v220.i8;
          *(v224 + a4) = vextq_s8(v220, v220, 8uLL).u64[0];
        }

        while (a11 != (v127 * 8));
        v13 = (v13 + v117);
        a3 += a4;
        v125 += v117;
        v225 = __OFSUB__(v12, 8);
        v12 -= 8;
      }

      while (!((v12 < 0) ^ v225 | (v12 == 0)));
    }
  }

  else if (a5[5] | a5[2])
  {
    v226 = vshr_n_s16(*(a5 + 2), 1uLL);
    v227 = vdupq_lane_s16(v226, 0);
    v228 = vdupq_lane_s16(v226, 1);
    v229 = vdupq_lane_s16(v226, 2);
    if (a11 == 4)
    {
      v230 = vdupq_lane_s16(v226, 3);
      v231 = a12 + 2;
      do
      {
        v232.i32[0] = *(result - 1);
        v232.i32[1] = *&result[a2 - 1];
        v233.i32[0] = *result;
        v233.i32[1] = *&result[a2];
        v234.i32[0] = *(result + 1);
        v234.i32[1] = *&result[a2 + 1];
        v235.i32[0] = *(result + 2);
        v235.i32[1] = *&result[a2 + 2];
        v236 = vqrshrun_n_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v227, vmovl_u8(v232)), v228, vmovl_u8(v233)), v229, vmovl_u8(v234)), v230, vmovl_u8(v235)), 6uLL);
        a3->i32[0] = v236.i32[0];
        *(a3->i32 + a4) = v236.i32[1];
        a3 = (a3 + 2 * a4);
        v231 -= 2;
        result += 2 * a2;
      }

      while (v231 > 2);
    }

    else
    {
      v241 = 2 * a2;
      v242 = (result + 2);
      v243 = vdupq_lane_s16(v226, 3);
      v244 = &result[a2];
      do
      {
        v245 = v244;
        v246 = v242;
        v247 = a3;
        v248 = a11;
        do
        {
          v249 = *(v246 - 3);
          v250 = *(v246 - 2);
          v251 = *(v246 - 1);
          v252 = *v246++;
          v253 = vqrshrun_n_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v227, vmovl_u8(v249)), v228, vmovl_u8(v250)), v229, vmovl_u8(v251)), v243, vmovl_u8(v252)), 6uLL);
          v254 = vqrshrun_n_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v227, vmovl_u8(*(v245 - 1))), v228, vmovl_u8(*v245)), v229, vmovl_u8(*(v245 + 1))), v243, vmovl_u8(*(v245 + 2))), 6uLL);
          *v247 = v253;
          *(v247++ + a4) = v254;
          v245 += 8;
          v248 -= 8;
        }

        while (v248);
        a3 = (a3 + 2 * a4);
        v242 = (v242 + v241);
        v244 += v241;
        v225 = __OFSUB__(v12, 2);
        v12 -= 2;
      }

      while (!((v12 < 0) ^ v225 | (v12 == 0)));
    }
  }

  else
  {
    a6.i8[0] = *(a5 + 6);
    a7.i8[0] = *(a5 + 8);
    if (a11 == 4)
    {
      v255 = a12 + 4;
      v256 = vdup_lane_s8(a6, 0);
      v257 = vdup_lane_s8(a7, 0);
      v258 = 2 * a2 + a2;
      do
      {
        v259.i32[0] = *result;
        v259.i32[1] = *&result[a2];
        v260.i32[0] = *(result + 1);
        v260.i32[1] = *&result[a2 + 1];
        v261.i32[0] = *&result[2 * a2];
        v261.i32[1] = *&result[v258];
        v262.i32[0] = *&result[2 * a2 + 1];
        v262.i32[1] = *&result[v258 + 1];
        v263 = vqrshrn_n_u16(vmlal_u8(vmull_u8(v260, v257), v259, v256), 7uLL);
        v264 = vqrshrn_n_u16(vmlal_u8(vmull_u8(v262, v257), v261, v256), 7uLL);
        a3->i32[0] = v263.i32[0];
        *(a3->i32 + a4) = v263.i32[1];
        v265 = (a3 + a4 + a4);
        v265->i32[0] = v264.i32[0];
        v266 = (v265 + a4);
        v266->i32[0] = v264.i32[1];
        result += 4 * a2;
        v255 -= 4;
        a3 = (v266 + a4);
      }

      while (v255 > 4);
    }

    else if (a11 == 8)
    {
      v237 = a12 + 2;
      v238 = vdup_lane_s8(a6, 0);
      v239 = vdup_lane_s8(a7, 0);
      do
      {
        v240 = vqrshrn_n_u16(vmlal_u8(vmull_u8(*&result[a2 + 1], v239), *&result[a2], v238), 7uLL);
        *a3 = vqrshrn_n_u16(vmlal_u8(vmull_u8(*(result + 1), v239), *result, v238), 7uLL);
        *(a3 + a4) = v240;
        a3 = (a3 + 2 * a4);
        v237 -= 2;
        result += a2 + a2;
      }

      while (v237 > 2);
    }

    else
    {
      v267 = vdupq_lane_s8(a6, 0);
      v268 = vdupq_lane_s8(a7, 0);
      do
      {
        v269 = 0;
        do
        {
          *a3[v269 / 8].i8 = vqrshrn_high_n_u16(vqrshrn_n_u16(vmlal_u8(vmull_u8(*&result[v269 + 1], *v268.i8), *&result[v269], *v267.i8), 7uLL), vmlal_high_u8(vmull_high_u8(*&result[v269 + 1], v268), *&result[v269], v267), 7uLL);
          v269 += 16;
        }

        while (a11 != v269);
        result += a2;
        a3 = (a3 + a4);
        v225 = __OFSUB__(v12--, 1);
      }

      while (!((v12 < 0) ^ v225 | (v12 == 0)));
    }
  }

  return result;
}

uint8x8_t *sub_277A36890(uint8x8_t *result, uint64_t a2, int8x8_t *a3, uint64_t a4, int8x8_t a5, int8x8_t a6, uint64_t a7, uint64_t a8, unsigned __int16 *a9, uint64_t a10, int a11, int a12)
{
  v13 = a11;
  v12 = a12;
  v14 = (result - 3 * a2);
  if (a9[7] | *a9 || a9[6] | a9[1])
  {
    v15 = vshrq_n_s16(*a9, 1uLL);
    if (a11 == 4)
    {
      v16 = (v14 + a2 + a2);
      v17 = *v16;
      v18 = (v16 + a2);
      v19 = *v18;
      v20 = (v18 + a2);
      v21 = *v20;
      v22 = (v20 + a2);
      v23.i64[0] = vmovl_u8(*v14).u64[0];
      v24.i64[0] = vmovl_u8(*(v14 + a2)).u64[0];
      v25.i64[0] = vmovl_u8(v17).u64[0];
      v26.i64[0] = vmovl_u8(v19).u64[0];
      v27 = vmovl_u8(v21).u64[0];
      v28 = vmovl_u8(*v22).u64[0];
      v29 = vmovl_u8(*(v22 + a2)).u64[0];
      *v41.i8 = vdup_lane_s16(*v15.i8, 0);
      *v37.i8 = vdup_lane_s16(*v15.i8, 1);
      *v36.i8 = vdup_lane_s16(*v15.i8, 2);
      *v35.i8 = vdup_lane_s16(*v15.i8, 3);
      v30 = vdupq_laneq_s16(v15, 5);
      v31 = vdupq_laneq_s16(v15, 6);
      v32.i64[0] = v31.i64[0];
      v32.i64[1] = v30.i64[0];
      v33.i64[0] = v30.i64[0];
      v33.u64[1] = vdup_laneq_s16(v15, 4);
      v34.i64[0] = v33.i64[1];
      v34.i64[1] = v35.i64[0];
      v35.i64[1] = v36.i64[0];
      v36.i64[1] = v37.i64[0];
      v37.i64[1] = v41.i64[0];
      v38 = vdupq_laneq_s16(v15, 7);
      v39 = (&v14[a2] - a2);
      v40.i64[0] = v41.i64[0];
      v40.i64[1] = v31.i64[0];
      v41.i64[1] = v33.i64[1];
      do
      {
        v42 = *v39;
        v43 = (v39 + a2);
        v44 = *v43;
        v45 = (v43 + a2);
        v46 = *v45;
        v47 = (v45 + a2);
        v48.i64[0] = v28;
        v48.i64[1] = v28;
        v49.i64[0] = v29;
        v49.i64[1] = v29;
        v50.i64[0] = v27;
        v50.i64[1] = v27;
        v26.i64[1] = v26.i64[0];
        v51.i64[0] = v25.i64[0];
        v51.i64[1] = v25.i64[0];
        v24.i64[1] = v24.i64[0];
        v23.i64[1] = vmovl_u8(v42).u64[0];
        v52 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v49, v32), v48, v33), v50, v34), v26, v35), v51, v36), v24, v37), v23, v40);
        v23.i64[0] = v27;
        v27 = vmovl_u8(v44).u64[0];
        v24.i64[0] = v28;
        v28 = vmovl_u8(v46).u64[0];
        v25.i64[1] = v23.i64[1];
        v53 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v49, v34), v48, v35), v50, v36), v26, v37), v25, v41);
        v25.i64[0] = v29;
        v29 = vmovl_u8(*v47).u64[0];
        v26 = vmovl_u8(vzip1_s32(v42, v44));
        v54 = vqrshrun_n_s16(vmlaq_s16(v52, v26, v38), 6uLL);
        *v26.i8 = vqrshrun_n_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v53, v26, v30), vmovl_u8(vzip1_s32(v44, v46)), v31), vmovl_u8(vzip1_s32(v46, *v47)), v38), 6uLL);
        a3->i32[0] = v54.i32[0];
        *(a3->i32 + a4) = v54.i32[1];
        v55 = (a3 + a4 + a4);
        v55->i32[0] = v26.i32[0];
        v56 = (v55 + a4);
        v56->i32[0] = v26.i32[1];
        v39 = (v47 + a2);
        a3 = (v56 + a4);
        v26.i64[0] = v23.i64[1];
        v12 -= 4;
      }

      while (v12);
    }

    else
    {
      v57 = vdupq_lane_s16(*v15.i8, 0);
      v58 = vdupq_lane_s16(*v15.i8, 1);
      v59 = vdupq_lane_s16(*v15.i8, 2);
      v60 = vdupq_lane_s16(*v15.i8, 3);
      v61 = vdupq_laneq_s16(v15, 4);
      v62 = vdupq_laneq_s16(v15, 5);
      v63 = vdupq_laneq_s16(v15, 6);
      v64 = vdupq_laneq_s16(v15, 7);
      do
      {
        v65 = (v14 + a2 + a2);
        v66 = *v65;
        v67 = (v65 + a2);
        v68 = *v67;
        v69 = (v67 + a2);
        v70 = *v69;
        v71 = (v69 + a2);
        v72 = vmovl_u8(*v14);
        v73 = vmovl_u8(*(v14 + a2));
        v74 = vmovl_u8(v66);
        v75 = vmovl_u8(v68);
        v76 = vmovl_u8(v70);
        v77 = vmovl_u8(*v71);
        v78 = vmovl_u8(*(v71 + a2));
        v79 = (v14 + 7 * a2);
        v80 = a12;
        v81 = a3;
        do
        {
          v82 = *v79;
          v83 = (v79 + a2);
          v84 = *v83;
          v85 = (v83 + a2);
          v86 = *v85;
          v87 = (v85 + a2);
          v88 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v72, v57), v73, v58), v74, v59), v75, v60);
          v89 = vmlaq_s16(vmlaq_s16(vmulq_s16(v73, v57), v74, v58), v75, v59);
          v90 = vmlaq_s16(vmulq_s16(v74, v57), v75, v58);
          v91 = vmulq_s16(v75, v57);
          v75 = vmovl_u8(v82);
          v92 = vmlaq_s16(v88, v76, v61);
          v93 = vmlaq_s16(v89, v76, v60);
          v94 = vmlaq_s16(v90, v76, v59);
          v95 = vmlaq_s16(v91, v76, v58);
          v72 = v76;
          v76 = vmovl_u8(v84);
          v96 = vmlaq_s16(v92, v77, v62);
          v97 = vmlaq_s16(v93, v77, v61);
          v98 = vmlaq_s16(v94, v77, v60);
          v99 = vmlaq_s16(v95, v77, v59);
          v73 = v77;
          v77 = vmovl_u8(v86);
          v100 = vmlaq_s16(v96, v78, v63);
          v101 = vmlaq_s16(v97, v78, v62);
          v102 = vmlaq_s16(v98, v78, v61);
          v103 = vmlaq_s16(v99, v78, v60);
          v74 = v78;
          v78 = vmovl_u8(*v87);
          *v81 = vqrshrun_n_s16(vmlaq_s16(v100, v64, v75), 6uLL);
          v104 = (v81 + a4);
          *v104 = vqrshrun_n_s16(vmlaq_s16(vmlaq_s16(v101, v63, v75), v64, v76), 6uLL);
          v105 = (v104 + a4);
          *v105 = vqrshrun_n_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v102, v62, v75), v63, v76), v64, v77), 6uLL);
          v106 = (v105 + a4);
          *v106 = vqrshrun_n_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v103, v61, v75), v62, v76), v63, v77), v64, v78), 6uLL);
          v79 = (v87 + a2);
          v81 = (v106 + a4);
          v80 -= 4;
        }

        while (v80);
        ++v14;
        ++a3;
        v13 -= 8;
      }

      while (v13);
    }
  }

  else if (a9[5] | a9[2])
  {
    v107 = (v14 + 2 * a2);
    v108 = vshr_n_s16(*(a9 + 2), 1uLL);
    if (a11 == 4)
    {
      v109.i32[0] = v107->i32[0];
      v109.i32[1] = *(v107->i32 + a2);
      v110 = (v107 + a2);
      v111.i32[0] = *v110;
      v111.i32[1] = *(v110 + a2);
      v112 = vmovl_u8(v109);
      v113 = vdupq_lane_s16(v108, 0);
      v114 = vdupq_lane_s16(v108, 1);
      v115 = vdupq_lane_s16(v108, 2);
      v116 = vdupq_lane_s16(v108, 3);
      v117 = vmovl_u8(v111);
      do
      {
        v118.i32[0] = *(result->i32 + a2);
        v118.i32[1] = *(result->i32 + a2 + a2);
        v119.i32[0] = *(result->i32 + 2 * a2);
        v119.i32[1] = *(result->i32 + 2 * a2 + a2);
        v120.i32[0] = *(result->i32 + 3 * a2);
        v120.i32[1] = *(result->i32 + 3 * a2 + a2);
        v121.i32[0] = result->i32[a2];
        v121.i32[1] = *(&result->i32[a2] + a2);
        v122 = vmovl_u8(v118);
        v123 = vmovl_u8(v119);
        v124 = vmlaq_s16(vmulq_s16(v117, v114), v112, v113);
        v112 = vmovl_u8(v120);
        v125 = vmovl_u8(v121);
        *v124.i8 = vqrshrun_n_s16(vmlaq_s16(vmlaq_s16(v124, v115, v122), v116, v123), 6uLL);
        *v122.i8 = vqrshrun_n_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v113, v122), v114, v123), v115, v112), v116, v125), 6uLL);
        a3->i32[0] = v124.i32[0];
        *(a3->i32 + a4) = v124.i32[1];
        v126 = (a3 + a4 + a4);
        v126->i32[0] = v122.i32[0];
        v127 = (v126 + a4);
        result = (result + 4 * a2);
        v127->i32[0] = v122.i32[1];
        a3 = (v127 + a4);
        v117 = v125;
        v12 -= 4;
      }

      while (v12);
    }

    else
    {
      v135 = vdupq_lane_s16(v108, 0);
      v136 = vdupq_lane_s16(v108, 1);
      v137 = vdupq_lane_s16(v108, 2);
      v138 = vdupq_lane_s16(v108, 3);
      do
      {
        v139 = vmovl_u8(*v107);
        v140 = vmovl_u8(*(v107 + a2));
        v141 = vmovl_u8(*(v107 + a2 + a2));
        v142 = (v107 + 3 * a2);
        v143 = a12;
        v144 = a3;
        do
        {
          v145 = *v142;
          v146 = (v142 + a2);
          v147 = *v146;
          v148 = (v146 + a2);
          v149 = *v148;
          v150 = (v148 + a2);
          v151 = vmovl_u8(v145);
          v152 = vmlaq_s16(vmlaq_s16(vmulq_s16(v140, v136), v141, v137), v139, v135);
          v139 = vmovl_u8(v147);
          v153 = vmovl_u8(v149);
          v154 = vmovl_u8(*v150);
          *v144 = vqrshrun_n_s16(vmlaq_s16(v152, v138, v151), 6uLL);
          v155 = (v144 + a4);
          *v155 = vqrshrun_n_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v140, v135), v141, v136), v137, v151), v138, v139), 6uLL);
          v156 = (v155 + a4);
          *v156 = vqrshrun_n_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v141, v135), v136, v151), v137, v139), v138, v153), 6uLL);
          v157 = (v156 + a4);
          v142 = (v150 + a2);
          *v157 = vqrshrun_n_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v135, v151), v136, v139), v137, v153), v138, v154), 6uLL);
          v144 = (v157 + a4);
          v140 = v153;
          v141 = v154;
          v143 -= 4;
        }

        while (v143);
        ++v107;
        ++a3;
        v13 -= 8;
      }

      while (v13);
    }
  }

  else
  {
    a5.i8[0] = *(a9 + 6);
    a6.i8[0] = *(a9 + 8);
    if (a11 == 4)
    {
      v158 = a12 + 4;
      v159 = vdup_lane_s8(a5, 0);
      v160 = vdup_lane_s8(a6, 0);
      do
      {
        v161.i32[0] = result->i32[0];
        v161.i32[1] = *(result->i32 + a2);
        v162.i32[0] = *(result->i32 + a2);
        v162.i32[1] = *(result->i32 + a2 + a2);
        v163.i32[0] = *(result->i32 + 2 * a2);
        v163.i32[1] = *(result->i32 + 2 * a2 + a2);
        v164.i32[0] = *(result->i32 + 3 * a2);
        v164.i32[1] = *(result->i32 + 3 * a2 + a2);
        v165 = vqrshrn_n_u16(vmlal_u8(vmull_u8(v162, v160), v161, v159), 7uLL);
        v166 = vqrshrn_n_u16(vmlal_u8(vmull_u8(v164, v160), v163, v159), 7uLL);
        a3->i32[0] = v165.i32[0];
        *(a3->i32 + a4) = v165.i32[1];
        v167 = (a3 + a4 + a4);
        v167->i32[0] = v166.i32[0];
        v168 = (v167 + a4);
        v168->i32[0] = v166.i32[1];
        result = (result + 4 * a2);
        v158 -= 4;
        a3 = (v168 + a4);
      }

      while (v158 > 4);
    }

    else if (a11 == 8)
    {
      v128 = a12 + 2;
      v129 = vdup_lane_s8(a5, 0);
      v130 = vdup_lane_s8(a6, 0);
      do
      {
        v131 = *result;
        v132 = *(result + a2);
        result = (result + 2 * a2);
        v133 = vmlal_u8(vmull_u8(v132, v130), v131, v129);
        v134 = vmlal_u8(vmull_u8(*result, v130), v132, v129);
        *a3 = vqrshrn_n_u16(v133, 7uLL);
        *(a3 + a4) = vqrshrn_n_u16(v134, 7uLL);
        a3 = (a3 + 2 * a4);
        v128 -= 2;
      }

      while (v128 > 2);
    }

    else
    {
      v169 = result + a2;
      v170 = vdupq_lane_s8(a5, 0);
      v171 = vdupq_lane_s8(a6, 0);
      do
      {
        v172 = 0;
        do
        {
          *a3[v172].i8 = vqrshrn_high_n_u16(vqrshrn_n_u16(vmlal_u8(vmull_u8(*&v169[v172 * 8], *v171.i8), result[v172], *v170.i8), 7uLL), vmlal_high_u8(vmull_high_u8(*&v169[v172 * 8], v171), *result[v172].i8, v170), 7uLL);
          v172 += 2;
        }

        while (a11 != (v172 * 8));
        result = (result + a2);
        a3 = (a3 + a4);
        v169 += a2;
        v173 = __OFSUB__(v12--, 1);
      }

      while (!((v12 < 0) ^ v173 | (v12 == 0)));
    }
  }

  return result;
}

void sub_277A36F80(uint64_t a1)
{
  v1 = (a1 + 241664);
  v2 = *(a1 + 245584);
  if (v2)
  {
    free(*(v2 - 8));
  }

  v1[490] = 0;
  v3 = v1[491];
  if (v3)
  {
    free(*(v3 - 8));
  }

  v1[491] = 0;
  v4 = v1[492];
  if (v4)
  {
    free(*(v4 - 8));
  }

  v1[492] = 0;
  v5 = v1[493];
  if (v5)
  {
    free(*(v5 - 8));
  }

  v1[493] = 0;
}

_DWORD *sub_277A36FF0()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = v0;
  v240 = *MEMORY[0x277D85DE8];
  v234 = v3 != 0;
  v14 = *(v11[2095] + 2 * v234 + 78);
  v226 = v11[2098];
  v15 = v226 + 8 * v3;
  v17 = *(*(v15 + 24) + 2 * (v14 >> 4) + 2 * v16);
  v219 = *(v15 + 48) + (v14 >> 4);
  v220 = v16;
  v235 = byte_277C3BE70[v1];
  v232 = byte_277C3BE83[v1];
  v18 = v11[1383];
  v229 = (v235 + v232 + 1) >> 1;
  v19 = (v18 + 78 * v229 + 6 * (*(v219 + v16) & 0xF));
  result = sub_277A650D4(v9 + 16, v17 == 0, v19, 2);
  if (*(v10 + 48))
  {
    v21 = v19[2];
    v22 = (v21 >> 4) + 4;
    v23 = *v19;
    v24 = v23 - (v23 >> v22);
    v25 = v23 + ((0x8000 - v23) >> v22);
    if (v17)
    {
      LOWORD(v25) = v24;
    }

    *v19 = v25;
    if (v21 < 0x20)
    {
      LOWORD(v21) = v21 + 1;
    }

    v19[2] = v21;
  }

  if (v17)
  {
    v26 = v2;
    v27 = *v12[1035];
    v28 = *(v27 + 167);
    v29 = v12 + (v28 & 7);
    v218 = v18;
    if (v29[2777] || ((0x61810uLL >> v2) & 1) != 0)
    {
      v32 = 0;
      if (v4)
      {
        goto LABEL_49;
      }

      if ((v28 & 0x80) != 0)
      {
LABEL_19:
        v33 = 1;
LABEL_20:
        if ((0x61810uLL >> v2))
        {
          goto LABEL_49;
        }

        if ((0x18608uLL >> v2))
        {
          v34 = v33;
        }

        else
        {
          if (*(v13 + 501))
          {
            goto LABEL_26;
          }

          v34 = byte_277C3C219[2 * v33 + ((0x60604uLL >> v2) & 1)];
        }

        if (!v34)
        {
          goto LABEL_49;
        }

LABEL_26:
        if (*(v13 + 18992))
        {
          if (v29[2769] <= 0 || *(v27 + 144) || (*(v13 + 4 * (v28 & 7) + 19124) & 0x40) != 0)
          {
            goto LABEL_49;
          }
        }

        else if (*(v13 + 616) <= 0 || *(v27 + 144))
        {
          goto LABEL_49;
        }

        if ((0x18608uLL >> v2))
        {
          v35 = v33;
        }

        else if (*(v13 + 501))
        {
          if (v33)
          {
            v35 = 1;
          }

          else
          {
            v35 = 2;
          }
        }

        else
        {
          v35 = byte_277C3C219[2 * v33 + ((0x60604uLL >> v2) & 1)];
        }

        v192 = v12[1383];
        v193 = v35;
        v194 = dword_277C3C220[6 * v33 + v35];
        v231 = v32;
        if (v33)
        {
          v195 = dword_277BEE17C[16 * v35 + v32];
          v196 = v192 + 136 * v194 + 34 * v235 + 20474;
          v197 = dword_277BEE164[v35];
          sub_277A650D4(v10 + 16, v195, v196, v197);
          if (*(v10 + 48))
          {
            v198 = 0;
            v199 = v197;
            v200 = *(v196 + 2 * v197);
            v201 = v200 >> 4;
            if (v193 > 1)
            {
              LOBYTE(v201) = v201 + 1;
            }

            v202 = v201 + 4;
            LODWORD(v203) = v197 - 1;
            if (v197 - 1 <= 1)
            {
              v203 = 1;
            }

            else
            {
              v203 = v203;
            }

            do
            {
              v204 = *(v196 + 2 * v198);
              v205 = v204 - (v204 >> v202);
              v206 = v204 + ((0x8000 - v204) >> v202);
              if (v198 >= v195)
              {
                LOWORD(v206) = v205;
              }

              *(v196 + 2 * v198++) = v206;
            }

            while (v203 != v198);
LABEL_261:
            v217 = *(v196 + 2 * v199);
            if (v200 < 0x20)
            {
              ++v217;
            }

            *(v196 + 2 * v199) = v217;
          }
        }

        else
        {
          if (*(v27 + 91))
          {
            v207 = &unk_277C3C214 + *(v27 + 90);
          }

          else
          {
            v207 = (v27 + 2);
          }

          v208 = dword_277BEE17C[16 * v35 + v32];
          v196 = v192 + 1768 * v194 + 442 * v235 + 34 * *v207 + 15170;
          v209 = dword_277BEE164[v35];
          sub_277A650D4(v10 + 16, v208, v196, v209);
          if (*(v10 + 48))
          {
            v210 = 0;
            v199 = v209;
            v200 = *(v196 + 2 * v209);
            v211 = v200 >> 4;
            if (v193 > 1)
            {
              LOBYTE(v211) = v211 + 1;
            }

            v212 = v211 + 4;
            LODWORD(v213) = v209 - 1;
            if (v209 - 1 <= 1)
            {
              v213 = 1;
            }

            else
            {
              v213 = v213;
            }

            do
            {
              v214 = *(v196 + 2 * v210);
              v215 = v214 - (v214 >> v212);
              v216 = v214 + ((0x8000 - v214) >> v212);
              if (v210 >= v208)
              {
                LOWORD(v216) = v215;
              }

              *(v196 + 2 * v210++) = v216;
            }

            while (v213 != v210);
            goto LABEL_261;
          }
        }

        v18 = v218;
        v32 = v231;
        goto LABEL_49;
      }
    }

    else
    {
      if (v4)
      {
        if ((v28 & 0x80) != 0 || *(v27 + 16) > 0)
        {
          v30 = *(v12[1041] + (v6 << HIDWORD(v12[326 * v234 + 54])) + *(v12 + 2084) * (v8 << LODWORD(v12[326 * v234 + 55])));
          v31 = (v28 & 0x80) != 0 || *(v27 + 16) > 0;
        }

        else
        {
          v31 = 0;
          v30 = byte_277BFC848[byte_277C32971[*(v27 + 3)]];
        }

        if (((0x18608uLL >> v2) & 1) == 0)
        {
          if (*(v13 + 501))
          {
            if (v31)
            {
              LOBYTE(v31) = 1;
            }

            else
            {
              LOBYTE(v31) = 2;
            }
          }

          else
          {
            LOBYTE(v31) = byte_277C3C219[2 * v31 + ((0x60604uLL >> v2) & 1)];
          }
        }

        if (dword_277BFC858[16 * v31 + v30])
        {
          v32 = v30;
        }

        else
        {
          v32 = 0;
        }

LABEL_49:
        v224 = v4;
        v230 = (v17 - 1);
        LODWORD(v36) = v230 >> 5;
        if (v230 >> 5 >= 0x10)
        {
          v36 = 16;
        }

        else
        {
          v36 = v36;
        }

        v37 = &unk_277BEE151 + v36;
        if (v17 <= 0x20)
        {
          v37 = &unk_277BEE130 + v17;
        }

        v38 = *v37;
        v39 = word_277C3BC4C[v38];
        v40 = byte_277C3BE10[v2];
        v228 = byte_277C3BE00[v32];
        if (v40 > 2)
        {
          if (v40 == 3)
          {
            v66 = v18 + 36 * v234 + 18 * (v32 > 9) + 1134;
            v67 = v32;
            sub_277A650D4(v10 + 16, v38 - 1, v66, 8);
            v45 = v67;
            v44 = v232;
            if (!*(v10 + 48))
            {
              goto LABEL_97;
            }

            v68 = 0;
            v47 = (v66 + 16);
            v48 = *(v66 + 16);
            v69 = (v48 >> 4) + 5;
            do
            {
              v70 = *(v66 + 2 * v68);
              v71 = v70 - (v70 >> v69);
              v72 = v70 + ((0x8000 - v70) >> v69);
              if (v68 >= (v38 - 1))
              {
                LOWORD(v72) = v71;
              }

              *(v66 + 2 * v68++) = v72;
            }

            while (v68 != 7);
          }

          else
          {
            v53 = word_277C3BC4C[v38];
            v54 = v32;
            if (v40 == 4)
            {
              v85 = (v18 + 40 * v234 + 20 * (v32 > 9) + 1206);
              sub_277A650D4(v10 + 16, v38 - 1, v85, 9);
              v44 = v232;
              v45 = v54;
              v39 = v53;
              v26 = v2;
              if (!*(v10 + 48))
              {
                goto LABEL_97;
              }

              v47 = &v85[1].i16[1];
              v48 = v85[1].u16[1];
              v86 = vdupq_n_s64((v38 - 1));
              v87 = vnegq_s32(vdupq_n_s32((v48 >> 4) + 5));
              v88.i64[0] = 0x800000008000;
              v88.i64[1] = 0x800000008000;
              *v85 = vaddq_s16(*v85, vbslq_s8(vuzp1q_s16(vuzp1q_s32(vcgtq_s64(xmmword_277BB7290, v86), vcgtq_s64(xmmword_277BB7280, v86)), vuzp1q_s32(vcgtq_s64(xmmword_277BB7500, v86), vcgtq_s64(xmmword_277BB74F0, v86))), vnegq_s16(vuzp1q_s16(vshlq_u32(vmovl_u16(*v85->i8), v87), vshlq_u32(vmovl_high_u16(*v85), v87))), vuzp1q_s16(vshlq_s32(vsubw_u16(v88, *v85->i8), v87), vshlq_s32(vsubw_high_u16(v88, *v85), v87))));
            }

            else if (v40 == 5)
            {
              v55 = v18 + 44 * v234 + 22 * (v32 > 9) + 1286;
              sub_277A650D4(v10 + 16, v38 - 1, v55, 10);
              v44 = v232;
              v45 = v54;
              v39 = v53;
              v26 = v2;
              if (!*(v10 + 48))
              {
                goto LABEL_97;
              }

              v56 = 0;
              v47 = (v55 + 20);
              v48 = *(v55 + 20);
              v57 = (v48 >> 4) + 5;
              do
              {
                v58 = *(v55 + 2 * v56);
                v59 = v58 - (v58 >> v57);
                v60 = v58 + ((0x8000 - v58) >> v57);
                if (v56 >= (v38 - 1))
                {
                  LOWORD(v60) = v59;
                }

                *(v55 + 2 * v56++) = v60;
              }

              while (v56 != 9);
            }

            else
            {
              v73 = v18 + 48 * v234 + 24 * (v32 > 9) + 1374;
              sub_277A650D4(v10 + 16, v38 - 1, v73, 11);
              v44 = v232;
              v45 = v54;
              v39 = v53;
              v26 = v2;
              if (!*(v10 + 48))
              {
                goto LABEL_97;
              }

              v74 = 0;
              v47 = (v73 + 22);
              v48 = *(v73 + 22);
              v75 = (v48 >> 4) + 5;
              do
              {
                v76 = *(v73 + 2 * v74);
                v77 = v76 - (v76 >> v75);
                v78 = v76 + ((0x8000 - v76) >> v75);
                if (v74 >= (v38 - 1))
                {
                  LOWORD(v78) = v77;
                }

                *(v73 + 2 * v74++) = v78;
              }

              while (v74 != 10);
            }
          }
        }

        else if (byte_277C3BE10[v2])
        {
          v41 = word_277C3BC4C[v38];
          v42 = v32;
          if (v40 == 1)
          {
            v79 = v18 + 28 * v234 + 14 * (v32 > 9) + 1014;
            sub_277A650D4(v10 + 16, v38 - 1, v79, 6);
            v44 = v232;
            v45 = v42;
            v39 = v41;
            v26 = v2;
            if (!*(v10 + 48))
            {
              goto LABEL_97;
            }

            v80 = 0;
            v47 = (v79 + 12);
            v48 = *(v79 + 12);
            v81 = (v48 >> 4) + 5;
            do
            {
              v82 = *(v79 + 2 * v80);
              v83 = v82 - (v82 >> v81);
              v84 = v82 + ((0x8000 - v82) >> v81);
              if (v80 >= (v38 - 1))
              {
                LOWORD(v84) = v83;
              }

              *(v79 + 2 * v80++) = v84;
            }

            while (v80 != 5);
          }

          else
          {
            v43 = v18 + 32 * v234 + 16 * (v32 > 9) + 1070;
            sub_277A650D4(v10 + 16, v38 - 1, v43, 7);
            v44 = v232;
            v45 = v42;
            v39 = v41;
            v26 = v2;
            if (!*(v10 + 48))
            {
              goto LABEL_97;
            }

            v46 = 0;
            v47 = (v43 + 14);
            v48 = *(v43 + 14);
            v49 = (v48 >> 4) + 5;
            do
            {
              v50 = *(v43 + 2 * v46);
              v51 = v50 - (v50 >> v49);
              v52 = v50 + ((0x8000 - v50) >> v49);
              if (v46 >= (v38 - 1))
              {
                LOWORD(v52) = v51;
              }

              *(v43 + 2 * v46++) = v52;
            }

            while (v46 != 6);
          }
        }

        else
        {
          v61 = (v18 + 24 * v234 + 12 * (v32 > 9) + 966);
          v62 = v32;
          sub_277A650D4(v10 + 16, v38 - 1, v61, 5);
          v45 = v62;
          v44 = v232;
          if (!*(v10 + 48))
          {
            goto LABEL_97;
          }

          v47 = &v61[1] + 1;
          v48 = v61[1].u16[1];
          v63 = vdupq_n_s64((v38 - 1));
          v64 = vnegq_s32(vdupq_n_s32((v48 >> 4) + 5));
          v65.i64[0] = 0x800000008000;
          v65.i64[1] = 0x800000008000;
          *v61 = vadd_s16(*v61, vbsl_s8(vmovn_s32(vuzp1q_s32(vcgtq_s64(xmmword_277BB7290, v63), vcgtq_s64(xmmword_277BB7280, v63))), vneg_s16(vmovn_s32(vshlq_u32(vmovl_u16(*v61), v64))), vmovn_s32(vshlq_s32(vsubw_u16(v65, *v61), v64))));
        }

        v89 = v48 >= 0x20;
        v90 = *v47;
        if (!v89)
        {
          ++v90;
        }

        *v47 = v90;
LABEL_97:
        v233 = v17;
        v91 = v235 + v44;
        v92 = v45;
        if ((v38 - 3) <= 8)
        {
          v236 = v2;
          v93 = v38;
          v94 = v45;
          v95 = v12;
          v96 = v26;
          v97 = v233 - v39;
          v98 = word_277C3BF7C[v93];
          v99 = v93;
          v100 = (v97 >> (word_277C3BF7C[v93] - 1)) & 1;
          v101 = v218 + 108 * v229 + 54 * v234 + 6 * (v93 - 3);
          sub_277A650D4(v10 + 16, v100, v101 + 390, 2);
          if (*(v10 + 48))
          {
            v102 = *(v101 + 394);
            v103 = (v102 >> 4) + 4;
            v104 = *(v101 + 390);
            v105 = v104 - (v104 >> v103);
            v106 = v104 + ((0x8000 - v104) >> v103);
            if (!v100)
            {
              LOWORD(v106) = v105;
            }

            *(v101 + 390) = v106;
            if (v102 < 0x20)
            {
              LOWORD(v102) = v102 + 1;
            }

            *(v101 + 394) = v102;
          }

          v107 = v99 == 3;
          v26 = v96;
          v12 = v95;
          v92 = v94;
          v2 = v236;
          if (!v107)
          {
            v108 = v98 - 2;
            if (v98 <= 2)
            {
              v109 = 2;
            }

            else
            {
              v109 = v98;
            }

            v110 = v109 - 1;
            do
            {
              v111 = *(v10 + 40);
              v112 = (v111 >> 1) & 0x7F80 | 4;
              v113 = v111 - v112;
              if ((v97 & (1 << v108)) != 0)
              {
                v114 = v113;
              }

              else
              {
                v114 = 0;
              }

              if ((v97 & (1 << v108)) != 0)
              {
                v115 = v112;
              }

              else
              {
                v115 = v113;
              }

              sub_277A64F90((v10 + 16), *(v10 + 32) + v114, v115);
              --v108;
              --v110;
            }

            while (v110);
          }
        }

        v116 = v91 + 1;
        if (v2 > 16)
        {
          v118 = v224;
          if (v2 == 17)
          {
            v119 = 16;
            v120 = 9;
            goto LABEL_129;
          }

          if (v2 == 18)
          {
            v119 = 32;
            v120 = 10;
            goto LABEL_129;
          }
        }

        else
        {
          v117 = 3;
          v118 = v224;
          if ((v2 - 11) < 2 || v2 == 4)
          {
LABEL_125:
            v119 = dword_277C3BEE4[v117];
            if (v2 > 16 || (v120 = 3, (v2 - 11) >= 2) && v2 != 4)
            {
              v120 = v26;
            }

LABEL_129:
            v237 = (*(v226 + 8 * v118) + 4 * *(v12[2095] + 2 * v234 + 78) + 64 * v220);
            sub_2779A3284(v237, v119, dword_277C3BF30[v120], v239);
            v121 = *(&off_27A722620 + 32 * v26 + 2 * v92);
            sub_2779A33AC(v239, v121, v233, v2, v228, &v238, v122, v123);
            if (v2 <= 16)
            {
              v124 = 3;
              v125 = v218;
              if ((v2 - 11) < 2 || v2 == 4)
              {
                goto LABEL_138;
              }

              goto LABEL_137;
            }

            v125 = v218;
            if (v2 == 17)
            {
              v124 = 9;
            }

            else
            {
              if (v2 != 18)
              {
LABEL_137:
                v124 = v26;
                goto LABEL_138;
              }

              v124 = 10;
            }

LABEL_138:
            v126 = (v116 >> 1);
            v225 = v125 + 1790;
            v227 = dword_277C3BE98[v124];
            v223 = (1 << v227) + 4;
            if (v126 >= 3)
            {
              v126 = 3;
            }

            v127 = v230;
            v222 = v125 + 1470 + (v229 << 6) + 32 * v234;
            v221 = v125 + 5990 + 420 * v126;
            while (1)
            {
              v128 = *(v121 + 2 * v127);
              v129 = v237->i32[v128];
              if (v129 >= 0)
              {
                v130 = v237->u32[v128];
              }

              else
              {
                v130 = -v129;
              }

              if (v130 >= 3)
              {
                v131 = 3;
              }

              else
              {
                v131 = v130;
              }

              if (v127 == v230)
              {
                v132 = v131 - 1;
                v133 = v222 + 8 * v238.i8[v128];
                result = sub_277A650D4(v10 + 16, v132, v133, 3);
                if (!*(v10 + 48))
                {
                  goto LABEL_163;
                }

                v134 = 0;
                v135 = 0;
                v136 = (v133 + 6);
                v137 = *(v133 + 6);
                v138 = (v137 >> 4) + 4;
                do
                {
                  v139 = *(v133 + 2 * v135);
                  v140 = v134;
                  v141 = v139 - (v139 >> v138);
                  v142 = v139 + ((0x8000 - v139) >> v138);
                  if (v135 < v132)
                  {
                    LOWORD(v141) = v142;
                  }

                  *(v133 + 2 * v135) = v141;
                  v134 = 1;
                  v135 = 1;
                }

                while ((v140 & 1) == 0);
                v143 = v137;
              }

              else
              {
                v144 = v225 + 840 * v229 + 420 * v234 + 10 * v238.i8[v128];
                result = sub_277A650D4(v10 + 16, v131, v144, 4);
                if (!*(v10 + 48))
                {
                  goto LABEL_163;
                }

                v145 = 0;
                v136 = (v144 + 8);
                v143 = *(v144 + 8);
                v146 = (v143 >> 4) + 5;
                do
                {
                  v147 = *(v144 + 2 * v145);
                  v148 = v147 - (v147 >> v146);
                  v149 = v147 + ((0x8000 - v147) >> v146);
                  if (v145 >= v131)
                  {
                    LOWORD(v149) = v148;
                  }

                  *(v144 + 2 * v145++) = v149;
                }

                while (v145 != 3);
                LOWORD(v137) = *v136;
              }

              if (v143 < 0x20)
              {
                LOWORD(v137) = v137 + 1;
              }

              *v136 = v137;
LABEL_163:
              v89 = v130 >= 3;
              v150 = v130 - 3;
              if (v89)
              {
                v151 = v128 >> v227;
                v152 = v128 >> v227 << v227;
                v153 = v128 - v152 + (v128 >> v227) * v223;
                v154 = v239 + v153;
                v155 = v239 + v223 + v153;
                v156 = *v155 + v154[1];
                if (v228 == 2)
                {
                  v156 = (v156 + v154[2] + 1) >> 1;
                  if (v156 >= 6)
                  {
                    v156 = 6;
                  }

                  if (!v128)
                  {
                    goto LABEL_184;
                  }

                  if (v128 != v152)
                  {
                    goto LABEL_178;
                  }

                  goto LABEL_183;
                }

                if (v228 != 1)
                {
                  if (v228)
                  {
                    goto LABEL_178;
                  }

                  v156 = (v156 + v155[1] + 1) >> 1;
                  if (v156 >= 6)
                  {
                    v156 = 6;
                  }

                  if (v128)
                  {
                    if (v151 > 1 || v128 - v152 > 1)
                    {
LABEL_178:
                      v156 += 14;
                      goto LABEL_184;
                    }

LABEL_183:
                    v156 += 7;
                  }

LABEL_184:
                  v157 = 0;
                  v158 = v221 + 210 * v234 + 10 * v156;
                  do
                  {
                    v159 = v150 - v157;
                    if ((v150 - v157) >= 3)
                    {
                      v160 = 3;
                    }

                    else
                    {
                      v160 = v159;
                    }

                    result = sub_277A650D4(v10 + 16, v160, v158, 4);
                    if (*(v10 + 48))
                    {
                      v161 = 0;
                      v162 = *(v158 + 8);
                      v163 = (v162 >> 4) + 5;
                      do
                      {
                        v164 = *(v158 + 2 * v161);
                        v165 = v164 - (v164 >> v163);
                        v166 = v164 + ((0x8000 - v164) >> v163);
                        if (v161 >= v160)
                        {
                          LOWORD(v166) = v165;
                        }

                        *(v158 + 2 * v161++) = v166;
                      }

                      while (v161 != 3);
                      v167 = *(v158 + 8);
                      if (v162 < 0x20)
                      {
                        ++v167;
                      }

                      *(v158 + 8) = v167;
                    }

                    if (v159 < 3)
                    {
                      break;
                    }

                    v89 = v157 >= 9;
                    v157 += 3;
                  }

                  while (!v89);
                  goto LABEL_199;
                }

                v156 = (v156 + *(v239 + v153 + (2 * v223)) + 1) >> 1;
                if (v156 >= 6)
                {
                  v156 = 6;
                }

                if (!v128)
                {
                  goto LABEL_184;
                }

                if (v151)
                {
                  goto LABEL_178;
                }

                goto LABEL_183;
              }

LABEL_199:
              v168 = v127-- <= 0;
              if (v168)
              {
                for (i = 0; i != v233; ++i)
                {
                  v170 = v237->i32[*(v121 + 2 * i)];
                  if (v170 >= 0)
                  {
                    v171 = v237->u32[*(v121 + 2 * i)];
                  }

                  else
                  {
                    v171 = -v170;
                  }

                  if (v170)
                  {
                    if (i)
                    {
                      v172 = *(v10 + 40);
                      v173 = (v172 >> 1) & 0x7F80 | 4;
                      v174 = v172 - v173;
                      if (v170 < 0)
                      {
                        v175 = v174;
                      }

                      else
                      {
                        v175 = 0;
                      }

                      if (v170 < 0)
                      {
                        v176 = v173;
                      }

                      else
                      {
                        v176 = v174;
                      }

                      result = sub_277A64F90((v10 + 16), *(v10 + 32) + v175, v176);
                    }

                    else
                    {
                      v177 = (v218 + 930 + 18 * v234 + 6 * ((*(v219 + v220) >> 4) & 3));
                      result = sub_277A650D4(v10 + 16, v170 >> 31, v177, 2);
                      if (*(v10 + 48))
                      {
                        v178 = v177[2];
                        v179 = (v178 >> 4) + 4;
                        v180 = *v177;
                        v181 = v180 - (v180 >> v179);
                        v182 = v180 + ((0x8000 - v180) >> v179);
                        if (v170 >= 0)
                        {
                          LOWORD(v182) = v181;
                        }

                        *v177 = v182;
                        if (v178 < 0x20)
                        {
                          LOWORD(v178) = v178 + 1;
                        }

                        v177[2] = v178;
                      }
                    }

                    if (v171 >= 0xF)
                    {
                      v183 = v171 - 14;
                      v184 = __clz((v171 - 14) >> 1);
                      if (v171 != 15)
                      {
                        v185 = v184 - 32;
                        do
                        {
                          sub_277A64F90((v10 + 16), *(v10 + 32), *(v10 + 40) - ((*(v10 + 40) >> 1) & 0x7F80 | 4));
                          v89 = __CFADD__(v185++, 1);
                        }

                        while (!v89);
                      }

                      v186 = 32 - v184;
                      do
                      {
                        v187 = *(v10 + 40);
                        v188 = (v187 >> 1) & 0x7F80 | 4;
                        v189 = v187 - v188;
                        if ((v183 & (1 << v186)) != 0)
                        {
                          v190 = v189;
                        }

                        else
                        {
                          v190 = 0;
                        }

                        if ((v183 & (1 << v186)) != 0)
                        {
                          v191 = v188;
                        }

                        else
                        {
                          v191 = v189;
                        }

                        result = sub_277A64F90((v10 + 16), *(v10 + 32) + v190, v191);
                        v168 = v186-- <= 0;
                      }

                      while (!v168);
                    }
                  }
                }

                return result;
              }
            }
          }
        }

        v117 = v26;
        goto LABEL_125;
      }

      v32 = *(v12[1041] + v6 + *(v12 + 2084) * v8);
      if ((v28 & 0x80) != 0)
      {
        goto LABEL_19;
      }
    }

    v33 = *(v27 + 16) > 0;
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_277A3829C(int *a1, __int16 *a2, int a3)
{
  if (a3)
  {
    if (a3 < 1)
    {
      v3 = 0;
    }

    else
    {
      v3 = 0;
      v4 = a3 - 1;
      do
      {
        v5 = *a2++;
        v6 = a1[v5];
        if (v6 < 0)
        {
          v6 = -v6;
        }

        v3 += v6;
      }

      while (v3 <= 7 && v4-- != 0);
    }

    if (v3 >= 7)
    {
      LOBYTE(v3) = 7;
    }

    v8 = v3 | 8;
    if (*a1)
    {
      LOBYTE(v3) = v3 | 0x10;
    }

    if (*a1 < 0)
    {
      LOBYTE(v3) = v8;
    }
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

void sub_277A38314()
{
  v0 = MEMORY[0x28223BE20]();
  v6 = v5;
  v7 = v4;
  v8 = v3;
  v9 = v2;
  v11 = v10;
  v227 = *MEMORY[0x277D85DE8];
  v12 = v5[1];
  v13 = v12 + 136 * v0;
  v220 = v0;
  v14 = (v12 + 432 + 2608 * v0);
  v15 = *(*(v13 + 32) + 2 * v1);
  v16 = 16 * v1;
  v17 = *(v13 + 16);
  v223 = *v14;
  v18 = **(v12 + 8280);
  v19 = *(v18 + 167);
  v20 = v4;
  if (*(v12 + 11108 + 4 * (v19 & 7)) || ((0x61810uLL >> v4) & 1) != 0)
  {
    v23 = 0;
  }

  else if (*v14)
  {
    if ((v19 & 0x80) != 0 || *(v18 + 16) > 0)
    {
      v21 = *(*(v12 + 8328) + (v2 << *(v12 + 432 + 2608 * *v14 + 4)) + *(v12 + 8336) * (v11 << *(v12 + 432 + 2608 * *v14 + 8)));
      v22 = (v19 & 0x80) != 0 || *(v18 + 16) > 0;
    }

    else
    {
      v22 = 0;
      v21 = byte_277BFC848[byte_277C32971[*(v18 + 3)]];
    }

    if (((0x18608uLL >> v4) & 1) == 0)
    {
      if (*(*v5 + 246117))
      {
        if (v22)
        {
          LOBYTE(v22) = 1;
        }

        else
        {
          LOBYTE(v22) = 2;
        }
      }

      else
      {
        LOBYTE(v22) = byte_277C3C219[2 * v22 + ((0x60604uLL >> v4) & 1)];
      }
    }

    if (dword_277BFC858[16 * v22 + v21])
    {
      v23 = v21;
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v23 = *(*(v12 + 8328) + v2 + *(v12 + 8336) * v11);
  }

  v214 = v12 + 432 + 2608 * v0;
  if (*(v5 + 21))
  {
    v24 = *(&off_27A722620 + 32 * v4 + 2 * v23);
    v25 = (v17 + 4 * v16);
    goto LABEL_192;
  }

  v213 = v15;
  v215 = (*v5 + 246117);
  v217 = (&off_27A722620 + 32 * v4 + 2 * v23);
  v218 = *v5;
  __src = (v17 + 4 * v16);
  v210 = v1;
  v224 = 0;
  sub_277A393E0(v3, v4, v0, (*(v14 + 14) + v2), (*(v14 + 15) + v11), &v224);
  v212 = v7;
  v211 = v9;
  v207 = v8;
  v208 = v11;
  if (v7 > 16)
  {
    if (v7 == 17)
    {
      LOBYTE(v221) = 5;
      v31 = 16;
      v27 = v213;
      v28 = v210;
      v29 = v218;
      v32 = 9;
      goto LABEL_33;
    }

    v27 = v213;
    v28 = v210;
    v29 = v218;
    if (v7 == 18)
    {
      LOBYTE(v221) = 4;
      v31 = 32;
      v32 = 10;
      goto LABEL_33;
    }

LABEL_18:
    v26 = v20;
    goto LABEL_19;
  }

  v26 = 3;
  if ((v7 - 11) < 2)
  {
    v27 = v213;
    v28 = v210;
    v29 = v218;
    goto LABEL_19;
  }

  v27 = v213;
  v28 = v210;
  v29 = v218;
  if (v7 != 4)
  {
    goto LABEL_18;
  }

LABEL_19:
  v221 = dword_277C3BE98[v26];
  if (v7 > 16 || (v30 = 3, (v7 - 11) >= 2) && v7 != 4)
  {
    v30 = v20;
  }

  v31 = dword_277C3BEE4[v30];
  if (v7 > 16 || (v32 = 3, (v7 - 11) >= 2) && v7 != 4)
  {
    v32 = v20;
  }

LABEL_33:
  v33 = dword_277C3BF30[v32];
  v34 = *(v6 + 20);
  v35 = byte_277C3BE83[v20];
  v205 = byte_277C3BE70[v20];
  v36 = v205 + v35 + 1;
  v37 = *(v12 + 11064);
  v38 = v224;
  if (*(v6 + 20))
  {
    v39 = (v37 + 78 * (v36 >> 1) + 6 * v224);
    v40 = v39[2];
    v41 = (v40 >> 4) + 4;
    v42 = *v39;
    v43 = v42 - (v42 >> v41);
    v44 = v42 + ((0x8000 - v42) >> v41);
    if (v27)
    {
      LOWORD(v44) = v43;
    }

    *v39 = v44;
    if (v40 < 0x20)
    {
      LOWORD(v40) = v40 + 1;
    }

    v39[2] = v40;
  }

  v45 = *(v12 + 16784);
  v46 = *(*(v12 + 16760) + 2 * v223 + 78);
  v47 = v45 + 8 * v220;
  v48 = *(v47 + 24) + 2 * (v46 >> 4);
  v49 = *(v47 + 48) + (v46 >> 4);
  *(v49 + v28) = v38;
  *(v48 + 2 * v28) = v27;
  if (!v27)
  {
    v62 = *(v214 + 120);
    v63 = *&byte_277BFDB54[4 * v20];
    bzero((*(v214 + 112) + v211), *&byte_277BFDBA0[4 * v20]);
    bzero((v62 + v208), v63);
    return;
  }

  v203 = v35;
  v204 = v49;
  if (v7 <= 0xC && ((1 << v7) & 0x1810) != 0)
  {
    v50 = v31;
    v51 = 4096;
    v52 = __src;
  }

  else
  {
    v50 = v31;
    v52 = __src;
    if ((v212 - 17) >= 2u)
    {
      v51 = 4 * dword_277BFE7FC[v20];
    }

    else
    {
      v51 = 2048;
    }
  }

  v53 = v16;
  v209 = v37;
  if (*(v29 + 264608) && (*(v29 + 4 * (*(v18 + 167) & 7) + 264740) & 0x40) != 0)
  {
    v51 = 0;
  }

  v54 = v23;
  v55 = *(v45 + 8 * v220) + 4 * *(*(v12 + 16760) + 2 * v223 + 78);
  v56 = (v55 + 4 * v16);
  memcpy((v55 + 4 * v53), v52, v51);
  v206 = v56;
  sub_2779A3284(v56, v50, v33, v226);
  v59 = **(v12 + 8280);
  v60 = *(v59 + 167);
  v61 = (v60 & 0x80) != 0 || *(v59 + 16) > 0;
  v64 = v213;
  if (v220 > 0)
  {
    goto LABEL_51;
  }

  v88 = *v215;
  v89 = *(v12 + 11064);
  v90 = v60 & 7;
  v91 = 0x61810uLL >> v20;
  if (*(v12 + 11108 + 4 * v90))
  {
    if (v91)
    {
      goto LABEL_51;
    }

    v92 = 0;
  }

  else
  {
    if (v91)
    {
      goto LABEL_51;
    }

    v92 = *(*(v12 + 8328) + v211 + *(v12 + 8336) * v208);
  }

  if ((0x18608uLL >> v20))
  {
    v197 = v61;
LABEL_207:
    if (!v197)
    {
      goto LABEL_51;
    }

    goto LABEL_208;
  }

  if ((v88 & 1) == 0)
  {
    v197 = byte_277C3C219[2 * v61 + ((0x60604uLL >> v20) & 1)];
    goto LABEL_207;
  }

LABEL_208:
  if (*(v215 + 115) < 1 || *(v59 + 144) || *(v218 + 264608) && (*(v218 + 4 * v90 + 264740) & 0x40) != 0)
  {
    goto LABEL_51;
  }

  v198 = sub_277A39994(v212, v61, v88);
  v64 = v213;
  v199 = dword_277C3C220[6 * v61 + v198];
  if (v199 < 1)
  {
    goto LABEL_51;
  }

  if (v61)
  {
    if (!v34)
    {
      goto LABEL_51;
    }

    v200 = v89 + 136 * v199 + 34 * v205;
    v201 = 20474;
  }

  else
  {
    if (*(v59 + 91))
    {
      v202 = &unk_277C3C214 + *(v59 + 90);
    }

    else
    {
      v202 = (v59 + 2);
    }

    if (!v34)
    {
      goto LABEL_51;
    }

    v200 = v89 + 1768 * v199 + 442 * v205 + 34 * *v202;
    v201 = 15170;
  }

  sub_277A39A08(v200 + v201, SLOBYTE(dword_277BEE17C[16 * v198 + v92]), dword_277BEE164[v198]);
  v64 = v213;
LABEL_51:
  v65 = byte_277C3BE00[v54];
  v24 = *v217;
  ++*(v12 + (v20 << 6) + 4 * v54 + 153272);
  if (v64 > 0x20)
  {
    LODWORD(v67) = (v64 - 1) >> 5;
    if (v67 >= 0x10)
    {
      v67 = 16;
    }

    else
    {
      v67 = v67;
    }

    v66 = &unk_277BEE151 + v67;
  }

  else
  {
    v66 = &unk_277BEE130 + v64;
  }

  v68 = *v66;
  v69 = word_277C3BC4C[v68];
  v70 = byte_277C3BE10[v20];
  v71 = v54 - 10;
  if (v70 > 2)
  {
    if (v70 == 3)
    {
      if (v34)
      {
        v99 = 0;
        v100 = v209 + 36 * v223 + 18 * (v71 < 6);
        v101 = v100 + 1134;
        v75 = (v100 + 1150);
        v76 = *(v100 + 1150);
        v102 = (v76 >> 4) + 5;
        do
        {
          v103 = *(v101 + 2 * v99);
          v104 = v103 - (v103 >> v102);
          v105 = v103 + ((0x8000 - v103) >> v102);
          if (v99 >= (v68 - 1))
          {
            LOWORD(v105) = v104;
          }

          *(v101 + 2 * v99++) = v105;
        }

        while (v99 != 7);
        goto LABEL_103;
      }

      goto LABEL_113;
    }

    if (v70 != 4)
    {
      if (v70 == 5)
      {
        if (v34)
        {
          v81 = 0;
          v82 = v209 + 44 * v223 + 22 * (v71 < 6);
          v83 = v82 + 1286;
          v75 = (v82 + 1306);
          v76 = *(v82 + 1306);
          v84 = (v76 >> 4) + 5;
          do
          {
            v85 = *(v83 + 2 * v81);
            v86 = v85 - (v85 >> v84);
            v87 = v85 + ((0x8000 - v85) >> v84);
            if (v81 >= (v68 - 1))
            {
              LOWORD(v87) = v86;
            }

            *(v83 + 2 * v81++) = v87;
          }

          while (v81 != 9);
          goto LABEL_103;
        }

        goto LABEL_113;
      }

LABEL_89:
      if (v34)
      {
        v106 = 0;
        v107 = v209 + 48 * v223 + 24 * (v71 < 6);
        v108 = v107 + 1374;
        v75 = (v107 + 1396);
        v76 = *(v107 + 1396);
        v109 = (v76 >> 4) + 5;
        do
        {
          v110 = *(v108 + 2 * v106);
          v111 = v110 - (v110 >> v109);
          v112 = v110 + ((0x8000 - v110) >> v109);
          if (v106 >= (v68 - 1))
          {
            LOWORD(v112) = v111;
          }

          *(v108 + 2 * v106++) = v112;
        }

        while (v106 != 10);
        goto LABEL_103;
      }

      goto LABEL_113;
    }

    if (!v34)
    {
      goto LABEL_113;
    }

    v120 = v209 + 40 * v223 + 20 * (v71 < 6);
    v121 = (v120 + 1206);
    v75 = (v120 + 1224);
    v76 = *(v120 + 1224);
    v122 = vdupq_n_s64((v68 - 1));
    v123 = vnegq_s32(vdupq_n_s32((v76 >> 4) + 5));
    v124 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v121), v123), vshlq_u32(vmovl_high_u16(*v121->i8), v123));
    v125.i64[0] = 0x800000008000;
    v125.i64[1] = 0x800000008000;
    v58 = vuzp1q_s16(vshlq_s32(vsubw_u16(v125, *v121), v123), vshlq_s32(vsubw_high_u16(v125, *v121->i8), v123));
    v57 = vaddq_s16(*v121->i8, vbslq_s8(vuzp1q_s16(vuzp1q_s32(vcgtq_s64(xmmword_277BB7290, v122), vcgtq_s64(xmmword_277BB7280, v122)), vuzp1q_s32(vcgtq_s64(xmmword_277BB7500, v122), vcgtq_s64(xmmword_277BB74F0, v122))), vnegq_s16(v124), v58));
    *v121->i8 = v57;
LABEL_103:
    v126 = v76 >= 0x20;
    v127 = *v75;
    if (!v126)
    {
      ++v127;
    }

    *v75 = v127;
    if (v68 >= 3)
    {
      v128 = word_277C3BF7C[v68] - 1;
      v129 = v209 + 108 * ((v205 + v203 + 1) >> 1) + 54 * v223 + 6 * v68;
      v130 = *(v129 + 376);
      v131 = (v130 >> 4) + 4;
      v132 = *(v129 + 372);
      v133 = (v64 - v69) >> v128;
      v134 = v132 - (v132 >> v131);
      v135 = v132 + ((0x8000 - v132) >> v131);
      if (v133)
      {
        v136 = v135;
      }

      else
      {
        v136 = v134;
      }

      *(v129 + 372) = v136;
      if (v130 >= 0x20)
      {
        v137 = v130;
      }

      else
      {
        v137 = v130 + 1;
      }

      *(v129 + 376) = v137;
    }

    goto LABEL_113;
  }

  if (!byte_277C3BE10[v20])
  {
    if (!v34)
    {
      goto LABEL_113;
    }

    v93 = v209 + 24 * v223 + 12 * (v71 < 6);
    v94 = (v93 + 966);
    v75 = (v93 + 976);
    v76 = *(v93 + 976);
    v95 = vdupq_n_s64((v68 - 1));
    v57 = vuzp1q_s32(vcgtq_s64(xmmword_277BB7290, v95), vcgtq_s64(xmmword_277BB7280, v95));
    v96 = vnegq_s32(vdupq_n_s32((v76 >> 4) + 5));
    v97 = vmovn_s32(vshlq_u32(vmovl_u16(*v94), v96));
    v98.i64[0] = 0x800000008000;
    v98.i64[1] = 0x800000008000;
    v58 = vshlq_s32(vsubw_u16(v98, *v94), v96);
    *v58.i8 = vmovn_s32(v58);
    *v57.i8 = vadd_s16(*v94, vbsl_s8(vmovn_s32(v57), vneg_s16(v97), *v58.i8));
    *v94 = *v57.i8;
    goto LABEL_103;
  }

  if (v70 == 1)
  {
    if (v34)
    {
      v113 = 0;
      v114 = v209 + 28 * v223 + 14 * (v71 < 6);
      v115 = v114 + 1014;
      v75 = (v114 + 1026);
      v76 = *(v114 + 1026);
      v116 = (v76 >> 4) + 5;
      do
      {
        v117 = *(v115 + 2 * v113);
        v118 = v117 - (v117 >> v116);
        v119 = v117 + ((0x8000 - v117) >> v116);
        if (v113 >= (v68 - 1))
        {
          LOWORD(v119) = v118;
        }

        *(v115 + 2 * v113++) = v119;
      }

      while (v113 != 5);
      goto LABEL_103;
    }

    goto LABEL_113;
  }

  if (v70 != 2)
  {
    goto LABEL_89;
  }

  if (v34)
  {
    v72 = 0;
    v73 = v209 + 32 * v223 + 16 * (v71 < 6);
    v74 = v73 + 1070;
    v75 = (v73 + 1084);
    v76 = *(v73 + 1084);
    v77 = (v76 >> 4) + 5;
    do
    {
      v78 = *(v74 + 2 * v72);
      v79 = v78 - (v78 >> v77);
      v80 = v78 + ((0x8000 - v78) >> v77);
      if (v72 >= (v68 - 1))
      {
        LOWORD(v80) = v79;
      }

      *(v74 + 2 * v72++) = v80;
    }

    while (v72 != 6);
    goto LABEL_103;
  }

LABEL_113:
  v138 = (v36 >> 1);
  v139 = v64;
  sub_2779A33AC(v226, v24, v64, v212, v65, &v225, v57, v58);
  v140 = *(v218 + 634417);
  v141 = (1 << v221) + 4;
  v142 = v209 + 5990;
  if (v138 >= 3)
  {
    v143 = 3;
  }

  else
  {
    v143 = (v36 >> 1);
  }

  v219 = (v36 >> 1);
  v216 = v209 + 1470 + (v138 << 6) + 32 * v223;
  v144 = (v139 - 1);
  do
  {
    v145 = v24[v144];
    v146 = *(__src + v145);
    if ((v146 & 0x80000000) != 0)
    {
      v146 = -v146;
    }

    if (v140)
    {
      *(v12 + 154912) += v146;
    }

    if (v34)
    {
      if (v146 >= 3)
      {
        v147 = 3;
      }

      else
      {
        v147 = v146;
      }

      if (v144 == v139 - 1)
      {
        v148 = 0;
        v149 = 0;
        v150 = v216 + 8 * v225.i8[v145];
        v151 = v147 - 1;
        v153 = (v150 + 6);
        v152 = *(v150 + 6);
        v154 = (v152 >> 4) + 4;
        do
        {
          v155 = *(v150 + 2 * v149);
          v156 = v148;
          v157 = v155 - (v155 >> v154);
          v158 = v155 + ((0x8000 - v155) >> v154);
          if (v149 >= v151)
          {
            LOWORD(v158) = v157;
          }

          *(v150 + 2 * v149) = v158;
          v148 = 1;
          v149 = 1;
        }

        while ((v156 & 1) == 0);
        v159 = v152;
      }

      else
      {
        v160 = 0;
        v161 = v209 + 1790 + 840 * v219 + 420 * v223 + 10 * v225.i8[v145];
        v153 = (v161 + 8);
        v159 = *(v161 + 8);
        v162 = (v159 >> 4) + 5;
        do
        {
          v163 = *(v161 + 2 * v160);
          v164 = v163 - (v163 >> v162);
          v165 = v163 + ((0x8000 - v163) >> v162);
          if (v160 >= v147)
          {
            LOWORD(v165) = v164;
          }

          *(v161 + 2 * v160++) = v165;
        }

        while (v160 != 3);
        LOWORD(v152) = *v153;
      }

      if (v159 >= 0x20)
      {
        v166 = v152;
      }

      else
      {
        v166 = v152 + 1;
      }

      *v153 = v166;
    }

    v126 = v146 >= 3;
    v167 = v146 - 3;
    if (v126)
    {
      v168 = v145 >> v221;
      v169 = v145 >> v221 << v221;
      v170 = v145 - v169 + (v145 >> v221) * v141;
      v171 = v226 + v170;
      v172 = v226 + v141 + v170;
      v173 = *v172 + v171[1];
      switch(v65)
      {
        case 2:
          if ((v173 + v171[2] + 1) >> 1 >= 6)
          {
            v173 = 6;
          }

          else
          {
            v173 = (v173 + v171[2] + 1) >> 1;
          }

          if (!v145)
          {
            goto LABEL_164;
          }

          if (v145 != v169)
          {
LABEL_157:
            v173 += 14;
            goto LABEL_164;
          }

          break;
        case 1:
          if ((v173 + *(v226 + v170 + (2 * v141)) + 1) >> 1 >= 6)
          {
            v173 = 6;
          }

          else
          {
            v173 = (v173 + *(v226 + v170 + (2 * v141)) + 1) >> 1;
          }

          if (!v145)
          {
            goto LABEL_164;
          }

          if (v168)
          {
            goto LABEL_157;
          }

          break;
        case 0:
          if ((v173 + v172[1] + 1) >> 1 >= 6)
          {
            v173 = 6;
          }

          else
          {
            v173 = (v173 + v172[1] + 1) >> 1;
          }

          if (v145)
          {
            if (v168 > 1 || v145 - v169 > 1)
            {
              goto LABEL_157;
            }

            break;
          }

LABEL_164:
          v174 = 0;
          v175 = v142 + 420 * v143 + 210 * v223 + 10 * v173;
          v176 = v142 + 210 * v223 + 420 * v143 + 10 * v173;
          do
          {
            v177 = v167 - v174;
            if (v34)
            {
              v178 = 0;
              if (v177 >= 3)
              {
                v179 = 3;
              }

              else
              {
                v179 = v177;
              }

              v180 = *(v175 + 8);
              v181 = (v180 >> 4) + 5;
              do
              {
                v182 = *(v176 + 2 * v178);
                v183 = v182 - (v182 >> v181);
                v184 = v182 + ((0x8000 - v182) >> v181);
                if (v178 >= v179)
                {
                  LOWORD(v184) = v183;
                }

                *(v176 + 2 * v178++) = v184;
              }

              while (v178 != 3);
              v185 = *(v175 + 8);
              if (v180 < 0x20)
              {
                ++v185;
              }

              *(v175 + 8) = v185;
            }

            if (v177 < 3)
            {
              break;
            }

            v126 = v174 >= 9;
            v174 += 3;
          }

          while (!v126);
          continue;
        default:
          goto LABEL_157;
      }

      v173 += 7;
      goto LABEL_164;
    }
  }

  while (v144-- > 0);
  v25 = v206;
  LODWORD(v15) = v213;
  if (*v206)
  {
    v187 = BYTE4(v224);
    if (v34)
    {
      v188 = v209 + 18 * v223 + 6 * SHIDWORD(v224);
      v189 = *(v188 + 934);
      v190 = (v189 >> 4) + 4;
      v191 = *(v188 + 930);
      v192 = v191 - (v191 >> v190);
      v193 = v191 + ((0x8000 - v191) >> v190);
      if (*v206 < 0)
      {
        v194 = v193;
      }

      else
      {
        v194 = v192;
      }

      *(v188 + 930) = v194;
      if (v189 >= 0x20)
      {
        v195 = v189;
      }

      else
      {
        v195 = v189 + 1;
      }

      *(v188 + 934) = v195;
    }

    *(v204 + v210) |= 16 * v187;
  }

  v7 = v212;
  v9 = v211;
  v8 = v207;
  v11 = v208;
LABEL_192:
  v196 = sub_277A3829C(v25, v24, v15);
  sub_277A56AD8(v12 + 416, *(v214 + 112), *(v214 + 120), v220, v8, v7, v196, v9, v11);
}

uint64_t sub_277A393E0(uint64_t result, int a2, int a3, char *a4, char *a5, int *a6)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v6 = 0;
        LODWORD(v7) = 0;
        v8 = 1;
        do
        {
          v9 = v8;
          LODWORD(v7) = v7 + byte_277BFC9D8[a4[v6] >> 3];
          v6 = 1;
          v8 = 0;
        }

        while ((v9 & 1) != 0);
        v10 = 0;
        v11 = 1;
        do
        {
          v12 = v11;
          v7 = byte_277BFC9D8[a5[v10] >> 3] + v7;
          v10 = 1;
          v11 = 0;
        }

        while ((v12 & 1) != 0);
        a6[1] = byte_277BFC9DB[v7 + 32];
        if (a3)
        {
          if ((0x3CFFF0uLL >> result))
          {
            v13 = 10;
          }

          else
          {
            v13 = 7;
          }

          v14 = *a4 == 0;
          v15 = *a5;
          goto LABEL_51;
        }

        if (result != 3)
        {
          v34 = a4[1] | *a4;
          LODWORD(v35) = v34 & 7;
          v36 = a5[1] | *a5;
          goto LABEL_84;
        }

        goto LABEL_82;
      }

      goto LABEL_26;
    }

    a6[1] = byte_277BFC9DB[byte_277BFC9D8[*a4 >> 3] + 32 + byte_277BFC9D8[*a5 >> 3]];
    if (!a3)
    {
      if (result)
      {
        if ((*a4 & 4) != 0)
        {
          v35 = 4;
        }

        else
        {
          v35 = *a4 & 7;
        }

        v36 = *a5;
        goto LABEL_87;
      }

      goto LABEL_82;
    }

    if (result)
    {
      v13 = 10;
    }

    else
    {
      v13 = 7;
    }

    v14 = *a4 == 0;
    v15 = *a5;
LABEL_51:
    if (!v14)
    {
      ++v13;
    }

    v19 = v15 == 0;
LABEL_54:
    if (v19)
    {
      v30 = v13;
    }

    else
    {
      v30 = v13 + 1;
    }

    goto LABEL_142;
  }

  if (a2 == 2)
  {
    v27 = 0;
    LODWORD(v28) = 0;
    do
    {
      LODWORD(v28) = v28 + byte_277BFC9D8[a4[v27++] >> 3];
    }

    while (v27 != 4);
    for (i = 0; i != 4; ++i)
    {
      v28 = byte_277BFC9D8[a5[i] >> 3] + v28;
    }

    a6[1] = byte_277BFC9DB[v28 + 32];
    if (!a3)
    {
      if (result != 6)
      {
        v34 = a4[1] | *a4 | a4[2] | a4[3];
        LODWORD(v35) = v34 & 7;
        v36 = a5[1] | *a5 | a5[2] | a5[3];
LABEL_84:
        if ((v34 & 4) != 0)
        {
          v35 = 4;
        }

        else
        {
          v35 = v35;
        }

LABEL_87:
        if ((v36 & 4) != 0)
        {
          v40 = 4;
        }

        else
        {
          v40 = v36 & 7;
        }

        v41 = v35 + 4 * v35;
LABEL_91:
        v30 = byte_277BFCA1C[v41 + v40];
        goto LABEL_142;
      }

LABEL_82:
      v30 = 0;
      goto LABEL_142;
    }

    if ((0x30FF80uLL >> result))
    {
      v13 = 10;
    }

    else
    {
      v13 = 7;
    }

    v14 = *a4 == 0;
    v15 = *a5;
    goto LABEL_51;
  }

  if (a2 == 3)
  {
    v16 = 0;
    LODWORD(v17) = 0;
    do
    {
      LODWORD(v17) = v17 + byte_277BFC9D8[a4[v16++] >> 3];
    }

    while (v16 != 8);
    for (j = 0; j != 8; ++j)
    {
      v17 = byte_277BFC9D8[a5[j] >> 3] + v17;
    }

    a6[1] = byte_277BFC9DB[v17 + 32];
    if (a3)
    {
      if (result - 10 >= 6)
      {
        v13 = 7;
      }

      else
      {
        v13 = 10;
      }

      if (*a4)
      {
        ++v13;
      }

      v19 = *a5 == 0;
      goto LABEL_54;
    }

    if (result == 9)
    {
      goto LABEL_82;
    }

    v37 = 0;
    v31 = 0;
    do
    {
      v31 |= a4[v37++];
    }

    while (v37 != 8);
    v38 = 0;
    LOBYTE(v22) = 0;
    do
    {
      LOBYTE(v22) = v22 | a5[v38++];
    }

    while (v38 != 8);
LABEL_69:
    if ((v31 & 4) != 0)
    {
      v39 = 4;
    }

    else
    {
      v39 = v31 & 7;
    }

    if ((v22 & 4) != 0)
    {
      v40 = 4;
    }

    else
    {
      v40 = v22 & 7;
    }

    v41 = v39 + 4 * v39;
    goto LABEL_91;
  }

LABEL_26:
  v20 = 0;
  LODWORD(v21) = 0;
  LODWORD(v22) = *&byte_277BFDBA0[4 * a2];
  v23 = *&byte_277BFDB54[4 * a2];
  if (v22 <= 1)
  {
    v22 = 1;
  }

  else
  {
    v22 = v22;
  }

  do
  {
    LODWORD(v21) = v21 + byte_277BFC9D8[a4[v20++] >> 3];
  }

  while (v22 != v20);
  v24 = 0;
  if (v23 <= 1)
  {
    v25 = 1;
  }

  else
  {
    v25 = v23;
  }

  do
  {
    v21 = byte_277BFC9D8[a5[v24++] >> 3] + v21;
  }

  while (v25 != v24);
  a6[1] = byte_277BFC9DB[v21 + 32];
  if (!a3)
  {
    if (byte_277C393B1[a2] == result)
    {
      goto LABEL_82;
    }

    v31 = 0;
    do
    {
      v32 = *a4++;
      v31 |= v32;
      --v22;
    }

    while (v22);
    do
    {
      v33 = *a5++;
      LOBYTE(v22) = v22 | v33;
      --v25;
    }

    while (v25);
    goto LABEL_69;
  }

  switch(a2)
  {
    case 0:
      v26 = *a4;
      goto LABEL_120;
    case 1:
      v51 = *a4;
      goto LABEL_129;
    case 2:
      v47 = *a4;
      goto LABEL_118;
    case 3:
      v45 = *a4;
      goto LABEL_103;
    case 4:
      v43 = *(a4 + 1) | *a4;
      goto LABEL_96;
    case 5:
      v51 = *a4;
      goto LABEL_129;
    case 6:
      v26 = *a4;
      goto LABEL_120;
    case 7:
      v47 = *a4;
      goto LABEL_118;
    case 8:
      v51 = *a4;
LABEL_129:
      v42 = v51 == 0;
      goto LABEL_130;
    case 9:
      v46 = *a4;
      goto LABEL_101;
    case 10:
      v55 = *a4;
      goto LABEL_123;
    case 11:
      v43 = *a4;
LABEL_96:
      v44 = v43 == 0;
      goto LABEL_111;
    case 12:
      v45 = *(a4 + 1) | *a4;
LABEL_103:
      v48 = v45 == 0;
      goto LABEL_104;
    case 13:
      v47 = *a4;
LABEL_118:
      v53 = v47 == 0;
      goto LABEL_124;
    case 14:
      v26 = *a4;
LABEL_120:
      v49 = v26 != 0;
      v54 = *a5;
      goto LABEL_134;
    case 15:
      v46 = *a4;
LABEL_101:
      v48 = v46 == 0;
LABEL_104:
      v49 = !v48;
      v50 = *a5;
      goto LABEL_115;
    case 16:
      v42 = *a4 == 0;
LABEL_130:
      v49 = !v42;
      v54 = *a5;
      goto LABEL_134;
    case 17:
      v44 = *a4 == 0;
LABEL_111:
      v49 = !v44;
      v50 = *(a5 + 1) | *a5;
LABEL_115:
      v52 = v50 == 0;
      goto LABEL_135;
    case 18:
      v55 = *(a4 + 1) | *a4;
LABEL_123:
      v53 = v55 == 0;
LABEL_124:
      v49 = !v53;
      v54 = *a5;
LABEL_134:
      v52 = v54 == 0;
LABEL_135:
      v56 = !v52;
      break;
    default:
      v49 = 0;
      v56 = 0;
      break;
  }

  v57 = v56 + v49;
  if (byte_277C3BCB6[result] <= byte_277C3BCB6[byte_277C393B1[a2]])
  {
    v58 = 7;
  }

  else
  {
    v58 = 10;
  }

  v30 = v57 + v58;
LABEL_142:
  *a6 = v30;
  return result;
}

uint64_t sub_277A39994(char a1, unsigned int a2, int a3)
{
  if ((0x61810uLL >> a1))
  {
    return 0;
  }

  else if ((0x18608uLL >> a1))
  {
    return a2 != 0;
  }

  else if (a3)
  {
    if (a2)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    return byte_277C3C219[2 * a2 + ((0x60604uLL >> a1) & 1)];
  }
}

uint64_t sub_277A39A08(uint64_t result, int a2, int a3)
{
  v3 = 0;
  v4 = *(result + 2 * a3);
  v5 = v4 >> 4;
  if (a3 > 3)
  {
    LOBYTE(v5) = v5 + 1;
  }

  v6 = v5 + 4;
  LODWORD(v7) = a3 - 1;
  if (a3 - 1 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v7;
  }

  do
  {
    v8 = *(result + 2 * v3);
    v9 = v8 - (v8 >> v6);
    v10 = v8 + ((0x8000 - v8) >> v6);
    if (v3 >= a2)
    {
      LOWORD(v10) = v9;
    }

    *(result + 2 * v3++) = v10;
  }

  while (v7 != v3);
  v11 = *(result + 2 * a3);
  if (v4 < 0x20)
  {
    ++v11;
  }

  *(result + 2 * a3) = v11;
  return result;
}

void sub_277A39A78(int a1, int a2, int a3, int a4, uint64_t a5, unsigned int a6, uint64_t *a7)
{
  v10 = a1;
  v11 = a7[1];
  v12 = v11 + 136 * a1;
  v13 = (v11 + 432 + 2608 * a1);
  v14 = *(*(v12 + 32) + 2 * a2);
  v15 = 16 * a2;
  v16 = *(v12 + 16);
  v17 = *v13;
  v18 = **(v11 + 8280);
  v19 = *(v18 + 167);
  if (*(v11 + 4 * (v19 & 7) + 11108) || ((0x61810uLL >> a6) & 1) != 0)
  {
    v22 = 0;
  }

  else if (*v13)
  {
    if ((v19 & 0x80) != 0 || *(v18 + 16) > 0)
    {
      v20 = *(*(v11 + 8328) + (a4 << *(v11 + 432 + 2608 * *v13 + 4)) + *(v11 + 8336) * (a3 << *(v11 + 432 + 2608 * *v13 + 8)));
      v21 = (v19 & 0x80) != 0 || *(v18 + 16) > 0;
    }

    else
    {
      v21 = 0;
      v20 = byte_277BFC848[byte_277C32971[*(v18 + 3)]];
    }

    if (((0x18608uLL >> a6) & 1) == 0)
    {
      if (*(*a7 + 246117))
      {
        if (v21)
        {
          LOBYTE(v21) = 1;
        }

        else
        {
          LOBYTE(v21) = 2;
        }
      }

      else
      {
        LOBYTE(v21) = byte_277C3C219[2 * v21 + ((0x60604uLL >> a6) & 1)];
      }
    }

    if (dword_277BFC858[16 * v21 + v20])
    {
      v22 = v20;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = *(*(v11 + 8328) + a4 + *(v11 + 8336) * a3);
  }

  v23 = (v16 + 4 * v15);
  v61 = a5;
  if (*(a7 + 21))
  {
    v24 = a6;
    v60 = a4;
    v25 = *(&off_27A722620 + 32 * a6 + 2 * v22);
    v26 = (v16 + 4 * v15);
LABEL_11:
    v27 = sub_277A3829C(v26, v25, v14);
    sub_277A56AD8(v11 + 416, *(v13 + 14), *(v13 + 15), v10, v61, v24, v27, v60, a3);
    return;
  }

  v54 = (&off_27A722620 + 32 * a6 + 2 * v22);
  v55 = 16 * a2;
  v53 = **(v11 + 8280);
  v57 = *a7;
  v58 = a6;
  v28 = a1;
  v62 = 0;
  v31 = a6;
  v59 = v14;
  sub_277A393E0(a5, a6, a1, (*(v13 + 14) + a4), (*(v13 + 15) + a3), &v62);
  v32 = v17;
  v33 = a2;
  v34 = *(v11 + 16784);
  v35 = *(*(v11 + 16760) + 2 * v32 + 78);
  v36 = v34 + 8 * v28;
  v37 = *(v36 + 24) + 2 * (v35 >> 4);
  v38 = *(v36 + 48) + (v35 >> 4);
  *(v38 + v33) = v62;
  *(v37 + 2 * v33) = v59;
  if (v59)
  {
    v60 = a4;
    v52 = v22;
    v24 = v31;
    if (v31 <= 0xC && ((1 << v31) & 0x1810) != 0)
    {
      v39 = 4096;
      v40 = v57;
      v41 = v55;
    }

    else
    {
      v51 = (v31 - 17);
      v40 = v57;
      v41 = v55;
      if (v51 >= 2)
      {
        v39 = 4 * dword_277BFE7FC[v58];
      }

      else
      {
        v39 = 2048;
      }
    }

    if (*(v40 + 264608) && (*(v40 + 4 * (*(v53 + 167) & 7) + 264740) & 0x40) != 0)
    {
      v39 = 0;
    }

    v26 = (*(v34 + 8 * v28) + 4 * *(*(v11 + 16760) + 2 * v32 + 78) + 4 * v41);
    memcpy(v26, v23, v39);
    v42 = *(v40 + 634417);
    v25 = *v54;
    LODWORD(v14) = v59;
    ++*(v11 + (v58 << 6) + 4 * v52 + 153272);
    v10 = a1;
    if (v42 == 1)
    {
      v43 = *(v11 + 154912);
      v44 = v59 + 1;
      v45 = &v25[v59 - 1];
      do
      {
        v46 = *v45--;
        LODWORD(v47) = *(v23 + v46);
        if (v47 >= 0)
        {
          v47 = v47;
        }

        else
        {
          v47 = -v47;
        }

        v43 += v47;
        --v44;
      }

      while (v44 > 1);
      *(v11 + 154912) = v43;
    }

    if (*v26)
    {
      *(v38 + v33) |= 16 * BYTE4(v62);
    }

    goto LABEL_11;
  }

  v48 = *(v13 + 14);
  v49 = *(v13 + 15);
  v50 = *&byte_277BFDB54[4 * v58];
  bzero((v48 + a4), *&byte_277BFDBA0[4 * v58]);

  bzero((v49 + a3), v50);
}

uint64_t sub_277A39EEC(uint64_t result, int a2, _DWORD *a3, int a4, int a5, int a6, uint64_t a7, char a8, int16x8_t a9, int8x16_t a10, uint64_t a11)
{
  if (a5 == 2 || a6 == 2)
  {
    return sub_27797D3A0(result, a2, a3, a4, a5, a6, a7, a8, a11);
  }

  v11 = *(a7 + 8);
  v12 = ((v11 >> 1) - 1);
  v13 = (result - v12);
  v14 = (*a7 + 2 * (a8 & 0xF) * v11);
  if (v11 == 12)
  {
    a10.i64[0] = *(v14 + 2);
    v15 = vuzp1q_s8(*v14, a10);
    v16 = 4 * a4;
    if (a5 >= 5)
    {
      v98 = 4 * a2;
      _Q3 = vdupq_lane_s32(*v15.i8, 0);
      _Q4 = vdupq_lane_s32(*v15.i8, 1);
      _Q5 = vdupq_laneq_s32(v15, 2);
      v103 = a3 + a4;
      v104 = result + 3 * a2 - v12;
      v105 = a3 + 2 * a4;
      v106 = result - v12;
      v107 = result + a2 - v12;
      v108 = a3 + 3 * a4;
      v109.i64[0] = 0x8080808080808080;
      v109.i64[1] = 0x8080808080808080;
      v110 = v106 + 2 * a2;
      do
      {
        result = 0;
        do
        {
          v111 = veorq_s8(*(v13 + result), v109);
          _Q24 = vqtbl1q_s8(v111, unk_277BEE300);
          _Q25 = vqtbl1q_s8(v111, unk_277BEE310);
          _Q18 = vqtbl1q_s8(v111, unk_277BEE320);
          _Q21 = vqtbl1q_s8(veorq_s8(*(v13 + result + 4), v109), unk_277BEE320);
          __asm
          {
            SDOT            V26.4S, V24.16B, V3.16B
            SDOT            V26.4S, V25.16B, V4.16B
            SDOT            V26.4S, V18.16B, V5.16B
            SDOT            V24.4S, V25.16B, V3.16B
            SDOT            V24.4S, V18.16B, V4.16B
            SDOT            V24.4S, V21.16B, V5.16B
          }

          *_Q18.i8 = vqmovun_s16(vqrshrn_high_n_s32(vqrshrn_n_s32(_Q26, 7uLL), _Q24, 7uLL));
          v122 = veorq_s8(*(v107 + result), v109);
          _Q22 = vqtbl1q_s8(v122, unk_277BEE300);
          _Q24 = vqtbl1q_s8(v122, unk_277BEE310);
          _Q19 = vqtbl1q_s8(v122, unk_277BEE320);
          _Q21 = vqtbl1q_s8(veorq_s8(*(v107 + result + 4), v109), unk_277BEE320);
          __asm
          {
            SDOT            V25.4S, V22.16B, V3.16B
            SDOT            V25.4S, V24.16B, V4.16B
            SDOT            V25.4S, V19.16B, V5.16B
            SDOT            V22.4S, V24.16B, V3.16B
            SDOT            V22.4S, V19.16B, V4.16B
            SDOT            V22.4S, V21.16B, V5.16B
          }

          *_Q19.i8 = vqmovun_s16(vqrshrn_high_n_s32(vqrshrn_n_s32(_Q25, 7uLL), _Q22, 7uLL));
          v133 = veorq_s8(*(v110 + result), v109);
          _Q22 = vqtbl1q_s8(v133, unk_277BEE300);
          _Q23 = vqtbl1q_s8(v133, unk_277BEE310);
          _Q20 = vqtbl1q_s8(v133, unk_277BEE320);
          _Q21 = vqtbl1q_s8(veorq_s8(*(v110 + result + 4), v109), unk_277BEE320);
          __asm
          {
            SDOT            V24.4S, V22.16B, V3.16B
            SDOT            V24.4S, V23.16B, V4.16B
            SDOT            V24.4S, V20.16B, V5.16B
            SDOT            V22.4S, V23.16B, V3.16B
            SDOT            V22.4S, V20.16B, V4.16B
            SDOT            V22.4S, V21.16B, V5.16B
          }

          *_Q20.i8 = vqmovun_s16(vqrshrn_high_n_s32(vqrshrn_n_s32(_Q24, 7uLL), _Q22, 7uLL));
          v144 = veorq_s8(*(v104 + result), v109);
          _Q21 = vqtbl1q_s8(v144, unk_277BEE300);
          _Q22 = vqtbl1q_s8(v144, unk_277BEE310);
          _Q16 = vqtbl1q_s8(v144, unk_277BEE320);
          _Q17 = vqtbl1q_s8(veorq_s8(*(v104 + result + 4), v109), unk_277BEE320);
          __asm
          {
            SDOT            V23.4S, V21.16B, V3.16B
            SDOT            V23.4S, V22.16B, V4.16B
            SDOT            V23.4S, V16.16B, V5.16B
            SDOT            V21.4S, V22.16B, V3.16B
            SDOT            V21.4S, V16.16B, V4.16B
            SDOT            V21.4S, V17.16B, V5.16B
          }

          *&a3[result / 4] = _Q18.i64[0];
          *&v103[result] = _Q19.i64[0];
          *&v105[result] = _Q20.i64[0];
          *&v108[result] = vqmovun_s16(vqrshrn_high_n_s32(vqrshrn_n_s32(_Q23, 7uLL), _Q21, 7uLL));
          result += 8;
        }

        while (a5 != result);
        v13 = (v13 + v98);
        a3 = (a3 + v16);
        v103 += v16;
        v105 += v16;
        v104 += v98;
        v110 += v98;
        v107 += v98;
        v108 += v16;
        a6 -= 4;
      }

      while (a6);
    }

    else
    {
      _Q3 = vdupq_lane_s32(*v15.i8, 0);
      _Q4 = vdupq_lane_s32(*v15.i8, 1);
      _Q5 = vdupq_laneq_s32(v15, 2);
      v20.i64[0] = 0x8080808080808080;
      v20.i64[1] = 0x8080808080808080;
      do
      {
        v21 = veorq_s8(*v13, v20);
        _Q20 = vqtbl1q_s8(v21, unk_277BEE300);
        _Q21 = vqtbl1q_s8(v21, unk_277BEE310);
        _Q16 = vqtbl1q_s8(v21, unk_277BEE320);
        __asm
        {
          SDOT            V22.4S, V20.16B, V3.16B
          SDOT            V22.4S, V21.16B, V4.16B
          SDOT            V22.4S, V16.16B, V5.16B
        }

        *_Q16.i8 = vqrshrn_n_s32(_Q22, 7uLL);
        v32 = veorq_s8(*(v13 + a2), v20);
        _Q20 = vqtbl1q_s8(v32, unk_277BEE300);
        _Q21 = vqtbl1q_s8(v32, unk_277BEE310);
        _Q17 = vqtbl1q_s8(v32, unk_277BEE320);
        __asm
        {
          SDOT            V22.4S, V20.16B, V3.16B
          SDOT            V22.4S, V21.16B, V4.16B
          SDOT            V22.4S, V17.16B, V5.16B
        }

        v39 = veorq_s8(*(v13 + 2 * a2), v20);
        _Q18 = vqtbl1q_s8(v39, unk_277BEE300);
        _Q20 = vqtbl1q_s8(v39, unk_277BEE310);
        _Q17 = vqtbl1q_s8(v39, unk_277BEE320);
        __asm
        {
          SDOT            V21.4S, V18.16B, V3.16B
          SDOT            V21.4S, V20.16B, V4.16B
          SDOT            V21.4S, V17.16B, V5.16B
        }

        *_Q17.i8 = vqrshrn_n_s32(_Q21, 7uLL);
        v46 = veorq_s8(*(v13 + 3 * a2), v20);
        _Q19 = vqtbl1q_s8(v46, unk_277BEE300);
        _Q20 = vqtbl1q_s8(v46, unk_277BEE310);
        _Q18 = vqtbl1q_s8(v46, unk_277BEE320);
        __asm
        {
          SDOT            V21.4S, V19.16B, V3.16B
          SDOT            V21.4S, V20.16B, V4.16B
          SDOT            V21.4S, V18.16B, V5.16B
        }

        *_Q16.i8 = vqmovun_s16(vqrshrn_high_n_s32(*_Q16.i8, _Q22, 7uLL));
        *_Q17.i8 = vqmovun_s16(vqrshrn_high_n_s32(*_Q17.i8, _Q21, 7uLL));
        *a3 = _Q16.i32[0];
        *(a3 + a4) = _Q16.i32[1];
        *(a3 + 2 * a4) = _Q17.i32[0];
        *(a3 + a4 + (2 * a4)) = _Q17.i32[1];
        a3 = (a3 + v16);
        v13 = (v13 + 4 * a2);
        a6 -= 4;
      }

      while (a6);
    }
  }

  else if (v14[7] | *v14 || v14[6] | v14[1])
  {
    v53 = *v14;
    v54 = 4 * a2;
    v55 = vshrn_n_s16(v53, 1uLL);
    _Q3 = vdupq_lane_s32(v55, 0);
    _Q4 = vdupq_lane_s32(v55, 1);
    v58 = 4 * a4;
    v59 = result + 3 * a2 - v12;
    v60 = result - v12 + 2 * a2;
    v61 = result + a2 - v12;
    v62 = a3 + 3 * a4;
    v63 = a3 + 2 * a4;
    v64.i64[0] = 0x8080808080808080;
    v64.i64[1] = 0x8080808080808080;
    v65 = a3 + a4;
    do
    {
      result = 0;
      do
      {
        v66 = veorq_s8(*(v13 + result), v64);
        _Q19 = vqtbl1q_s8(v66, unk_277BEE300);
        _Q20 = vqtbl1q_s8(v66, unk_277BEE310);
        _Q7 = vqtbl1q_s8(v66, unk_277BEE320);
        __asm
        {
          SDOT            V21.4S, V19.16B, V3.16B
          SDOT            V21.4S, V20.16B, V4.16B
          SDOT            V19.4S, V20.16B, V3.16B
          SDOT            V19.4S, V7.16B, V4.16B
        }

        *_Q7.i8 = vqrshrun_n_s16(vuzp1q_s16(_Q21, _Q19), 6uLL);
        v74 = veorq_s8(*(v61 + result), v64);
        _Q19 = vqtbl1q_s8(v74, unk_277BEE300);
        _Q20 = vqtbl1q_s8(v74, unk_277BEE310);
        _Q16 = vqtbl1q_s8(v74, unk_277BEE320);
        __asm
        {
          SDOT            V21.4S, V19.16B, V3.16B
          SDOT            V21.4S, V20.16B, V4.16B
          SDOT            V19.4S, V20.16B, V3.16B
          SDOT            V19.4S, V16.16B, V4.16B
        }

        *_Q16.i8 = vqrshrun_n_s16(vuzp1q_s16(_Q21, _Q19), 6uLL);
        v82 = veorq_s8(*(v60 + result), v64);
        _Q19 = vqtbl1q_s8(v82, unk_277BEE300);
        _Q20 = vqtbl1q_s8(v82, unk_277BEE310);
        _Q17 = vqtbl1q_s8(v82, unk_277BEE320);
        __asm
        {
          SDOT            V21.4S, V19.16B, V3.16B
          SDOT            V21.4S, V20.16B, V4.16B
          SDOT            V19.4S, V20.16B, V3.16B
          SDOT            V19.4S, V17.16B, V4.16B
        }

        *_Q17.i8 = vqrshrun_n_s16(vuzp1q_s16(_Q21, _Q19), 6uLL);
        v90 = veorq_s8(*(v59 + result), v64);
        _Q19 = vqtbl1q_s8(v90, unk_277BEE300);
        _Q20 = vqtbl1q_s8(v90, unk_277BEE310);
        _Q18 = vqtbl1q_s8(v90, unk_277BEE320);
        __asm
        {
          SDOT            V21.4S, V19.16B, V3.16B
          SDOT            V21.4S, V20.16B, V4.16B
          SDOT            V19.4S, V20.16B, V3.16B
          SDOT            V19.4S, V18.16B, V4.16B
        }

        *&a3[result / 4] = _Q7.i64[0];
        *&v65[result] = _Q16.i64[0];
        *&v63[result] = _Q17.i64[0];
        *&v62[result] = vqrshrun_n_s16(vuzp1q_s16(_Q21, _Q19), 6uLL);
        result += 8;
      }

      while (a5 != result);
      v13 = (v13 + v54);
      a3 = (a3 + v58);
      v59 += v54;
      v60 += v54;
      v61 += v54;
      v62 += v58;
      v63 += v58;
      v65 += v58;
      a6 -= 4;
    }

    while (a6);
  }

  else
  {
    a9.i64[0] = *(v14 + 2);
    v155 = vshrn_n_s16(a9, 1uLL);
    if (a5 == 4)
    {
      v156 = &v13->i16[1];
      _Q0 = vdupq_lane_s32(v155, 0);
      v158.i64[0] = 0x8080808080808080;
      v158.i64[1] = 0x8080808080808080;
      do
      {
        v159 = *v156;
        v160 = (v156 + a2);
        v161 = *v160;
        v162 = (v160 + a2);
        v163 = *v162;
        v164 = (v162 + a2);
        _Q4 = vqtbl1q_s8(veorq_s8(v159, v158), xmmword_277BB74E0);
        __asm { SDOT            V16.4S, V4.16B, V0.16B }

        _Q4 = vqtbl1q_s8(veorq_s8(v161, v158), xmmword_277BB74E0);
        __asm { SDOT            V5.4S, V4.16B, V0.16B }

        _Q4 = vqtbl1q_s8(veorq_s8(v163, v158), xmmword_277BB74E0);
        __asm { SDOT            V6.4S, V4.16B, V0.16B }

        _Q4 = vqtbl1q_s8(veorq_s8(*v164, v158), xmmword_277BB74E0);
        __asm { SDOT            V7.4S, V4.16B, V0.16B }

        *_Q4.i8 = vqrshrun_n_s16(vuzp1q_s16(_Q16, _Q5), 6uLL);
        *_Q5.i8 = vqrshrun_n_s16(vuzp1q_s16(_Q6, _Q7), 6uLL);
        *a3 = _Q4.i32[0];
        *(a3 + a4) = _Q4.i32[1];
        v173 = (a3 + a4 + a4);
        *v173 = _Q5.i32[0];
        v174 = (v173 + a4);
        *v174 = _Q5.i32[1];
        v156 = (v164 + a2);
        a3 = (v174 + a4);
        a6 -= 4;
      }

      while (a6);
    }

    else
    {
      v175 = 4 * a2;
      _Q2 = vdupq_lane_s32(v155, 0);
      v177 = 4 * a4;
      v178 = 3 * a2 - v12 + result + 2;
      v179 = result - v12 + 2 * a2 + 2;
      v180 = a2 - v12 + result + 2;
      v181 = a3 + 3 * a4;
      v182.i64[0] = 0x8080808080808080;
      v182.i64[1] = 0x8080808080808080;
      v183 = a3 + a4;
      v184 = a3 + 2 * a4;
      do
      {
        result = 0;
        do
        {
          v185 = veorq_s8(*(v13 + result + 2), v182);
          _Q17 = vqtbl1q_s8(v185, unk_277BEE300);
          _Q5 = vqtbl1q_s8(v185, unk_277BEE310);
          __asm
          {
            SDOT            V18.4S, V17.16B, V2.16B
            SDOT            V17.4S, V5.16B, V2.16B
          }

          *_Q5.i8 = vqrshrun_n_s16(vuzp1q_s16(_Q18, _Q17), 6uLL);
          v190 = veorq_s8(*(v180 + result), v182);
          _Q17 = vqtbl1q_s8(v190, unk_277BEE300);
          _Q6 = vqtbl1q_s8(v190, unk_277BEE310);
          __asm
          {
            SDOT            V18.4S, V17.16B, V2.16B
            SDOT            V17.4S, V6.16B, V2.16B
          }

          *_Q6.i8 = vqrshrun_n_s16(vuzp1q_s16(_Q18, _Q17), 6uLL);
          v195 = veorq_s8(*(v179 + result), v182);
          _Q17 = vqtbl1q_s8(v195, unk_277BEE300);
          _Q7 = vqtbl1q_s8(v195, unk_277BEE310);
          __asm
          {
            SDOT            V18.4S, V17.16B, V2.16B
            SDOT            V17.4S, V7.16B, V2.16B
          }

          *_Q7.i8 = vqrshrun_n_s16(vuzp1q_s16(_Q18, _Q17), 6uLL);
          v200 = veorq_s8(*(v178 + result), v182);
          _Q17 = vqtbl1q_s8(v200, unk_277BEE300);
          _Q16 = vqtbl1q_s8(v200, unk_277BEE310);
          __asm
          {
            SDOT            V18.4S, V17.16B, V2.16B
            SDOT            V17.4S, V16.16B, V2.16B
          }

          *&a3[result / 4] = _Q5.i64[0];
          *&v183[result] = _Q6.i64[0];
          *&v184[result] = _Q7.i64[0];
          *&v181[result] = vqrshrun_n_s16(vuzp1q_s16(_Q18, _Q17), 6uLL);
          result += 8;
        }

        while (a5 != result);
        a3 = (a3 + v177);
        v178 += v175;
        v179 += v175;
        v180 += v175;
        v13 = (v13 + v175);
        v181 += v177;
        v184 += v177;
        v183 += v177;
        a6 -= 4;
      }

      while (a6);
    }
  }

  return result;
}

unsigned __int8 *sub_277A3A630(unsigned __int8 *result, int a2, _DWORD *a3, int a4, int a5, int a6, uint64_t a7, char a8, double a9, uint8x8_t a10, uint8x8_t a11, uint8x8_t a12, int16x8_t a13, int16x8_t a14, int16x8_t _Q6, int8x16_t _Q7)
{
  if (a5 == 2 || a6 == 2)
  {

    return sub_27797D2DC(result, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    v33 = *(a7 + 8);
    v34 = (*a7 + 2 * (a8 & 0xFu) * v33);
    if (v33 == 12)
    {
      v35 = &result[-5 * a2];
      v36 = vmovn_s16(*v34);
      v37 = vmovn_s16(*(v34 + 4));
      v38 = a2;
      if (a5 == 4)
      {
        v39 = (v35 + a2 + a2);
        _Q16.i64[0] = *v39;
        v40 = (v39 + a2);
        _Q17.i64[0] = *v40;
        v41 = (v40 + a2);
        v42 = *v41;
        v43 = (v41 + a2);
        v44 = *v43;
        v45 = (v43 + a2);
        v46 = *v45;
        v47 = (v45 + a2);
        v48 = *v47;
        v49 = (v47 + a2);
        v27.i64[0] = *v49;
        v50 = (v49 + a2);
        *a13.i8 = veor_s8(*v35, 0x8080808080808080);
        *_Q6.i8 = veor_s8(*(v35 + a2), 0x8080808080808080);
        *_Q16.i8 = veor_s8(*_Q16.i8, 0x8080808080808080);
        *_Q17.i8 = veor_s8(*_Q17.i8, 0x8080808080808080);
        v51 = veor_s8(v42, 0x8080808080808080);
        *_Q24.i8 = veor_s8(v44, 0x8080808080808080);
        v52 = veor_s8(v46, 0x8080808080808080);
        v53 = veor_s8(v48, 0x8080808080808080);
        v54 = veor_s8(*v27.i8, 0x8080808080808080);
        v55 = veor_s8(*v50, 0x8080808080808080);
        v56 = (v35 + 11 * a2);
        *a13.i8 = vzip1_s8(*a13.i8, *_Q6.i8);
        *v27.i8 = vzip1_s8(*_Q16.i8, *_Q17.i8);
        _Q20 = vzip1q_s16(a13, v27);
        *a13.i8 = vzip1_s8(*_Q6.i8, *_Q16.i8);
        *_Q6.i8 = vzip1_s8(*_Q17.i8, v51);
        _Q19 = vzip1q_s16(a13, _Q6);
        *a13.i8 = vzip1_s8(v51, *_Q24.i8);
        _Q18 = vzip1q_s16(v27, a13);
        *_Q16.i8 = vzip1_s8(*_Q24.i8, v52);
        _Q6 = vzip1q_s16(_Q6, _Q16);
        *_Q17.i8 = vzip1_s8(v52, v53);
        _Q23 = vzip1q_s16(a13, _Q17);
        *_Q24.i8 = vzip1_s8(v53, v54);
        _Q22 = vzip1q_s16(_Q16, _Q24);
        *a13.i8 = vzip1_s8(v54, v55);
        _Q21 = vzip1q_s16(_Q17, a13);
        *_Q16.i8 = vzip1_s8(v55, veor_s8(*(v50 + a2), 0x8080808080808080));
        _Q4 = vdupq_lane_s32(v36, 0);
        _Q5 = vdupq_lane_s32(v36, 1);
        _Q17 = vzip1q_s16(_Q24, _Q16);
        _Q7 = vdupq_lane_s32(v37, 1);
        do
        {
          __asm
          {
            SDOT            V24.4S, V20.16B, V4.16B
            SDOT            V25.4S, V19.16B, V4.16B
            SDOT            V26.4S, V18.16B, V4.16B
          }

          _Q16 = _Q17;
          *_Q18.i8 = vzip1_s8(veor_s8(*v56, 0x8080808080808080), veor_s8(*(v56 + a2), 0x8080808080808080));
          *_Q19.i8 = vzip1_s8(veor_s8(*(v56 + 2 * a2), 0x8080808080808080), veor_s8(*(v56 + 3 * a2), 0x8080808080808080));
          _Q17 = vzip1q_s16(_Q18, _Q19);
          __asm { SDOT            V24.4S, V23.16B, V5.16B }

          _Q20 = _Q23;
          _Q23 = vqtbl2q_s8(*(&_Q17 - 1), unk_277BEE330);
          __asm { SDOT            V25.4S, V22.16B, V5.16B }

          _Q19 = _Q22;
          _Q22 = vqtbl2q_s8(*(&_Q17 - 1), unk_277BEE340);
          __asm { SDOT            V26.4S, V21.16B, V5.16B }

          _Q18 = _Q21;
          _Q21 = vqtbl2q_s8(*(&_Q17 - 1), unk_277BEE350);
          __asm
          {
            SDOT            V24.4S, V23.16B, V7.16B
            SDOT            V25.4S, V22.16B, V7.16B
            SDOT            V26.4S, V21.16B, V7.16B
            SDOT            V27.4S, V6.16B, V4.16B
            SDOT            V27.4S, V16.16B, V5.16B
            SDOT            V27.4S, V17.16B, V7.16B
          }

          v85 = vqrshrun_n_s16(vqmovn_high_s32(vqmovn_s32(_Q24), _Q25), 7uLL);
          *_Q24.i8 = vqrshrun_n_s16(vqmovn_high_s32(vqmovn_s32(_Q26), _Q27), 7uLL);
          *a3 = v85.i32[0];
          *(a3 + a4) = v85.i32[1];
          *(a3 + 2 * a4) = _Q24.i32[0];
          *(a3 + a4 + (2 * a4)) = _Q24.i32[1];
          v56 = (v56 + 4 * a2);
          a3 += a4;
          _Q6 = _Q16;
          a6 -= 4;
        }

        while (a6);
      }

      else
      {
        v114 = 0;
        v115 = 5 * a2;
        v116 = 11 * a2;
        _Q3 = vdupq_lane_s32(v36, 0);
        _Q4 = vdupq_lane_s32(v36, 1);
        v119 = 4 * a2;
        v120 = 4 * a4;
        v121 = a3 + 3 * a4;
        v122 = 2 * a2 + v116;
        v123 = v122 + a2 - v115;
        v124 = v122 - v115;
        v125 = v38 + v116 - v115;
        v126 = v116 - v115;
        _Q5 = vdupq_lane_s32(v37, 1);
        v128 = a3 + 2 * a4;
        v129 = a3 + a4;
        v130 = &result[v123];
        v131 = &result[v124];
        v132 = &result[v125];
        result += v126;
        do
        {
          v133 = (v35 + v38 + v38);
          _Q17.i64[0] = *v133;
          v134 = (v133 + v38);
          _Q18.i64[0] = *v134;
          v135 = (v134 + v38);
          _Q19.i64[0] = *v135;
          v136 = (v135 + v38);
          _Q20.i64[0] = *v136;
          v137 = (v136 + v38);
          _Q21.i64[0] = *v137;
          *_Q7.i8 = veor_s8(*v35, 0x8080808080808080);
          v138 = (v137 + v38);
          v139 = *v138;
          *_Q16.i8 = veor_s8(*(v35 + v38), 0x8080808080808080);
          *_Q17.i8 = veor_s8(*_Q17.i8, 0x8080808080808080);
          *_Q18.i8 = veor_s8(*_Q18.i8, 0x8080808080808080);
          v140 = (v138 + v38);
          v141 = *v140;
          v142 = (v140 + v38);
          *_Q19.i8 = veor_s8(*_Q19.i8, 0x8080808080808080);
          *_Q20.i8 = veor_s8(*_Q20.i8, 0x8080808080808080);
          *_Q21.i8 = veor_s8(*_Q21.i8, 0x8080808080808080);
          *_Q25.i8 = veor_s8(v139, 0x8080808080808080);
          *_Q28.i8 = veor_s8(v141, 0x8080808080808080);
          *_Q24.i8 = veor_s8(*v142, 0x8080808080808080);
          *v17.i8 = veor_s8(*(v142 + v38), 0x8080808080808080);
          v143 = vzip1q_s8(_Q7, _Q16);
          v144 = vzip1q_s8(_Q17, _Q18);
          _Q8 = vzip1q_s16(v143, v144);
          _Q7 = vzip2q_s16(v143, v144);
          v146 = vzip1q_s8(_Q16, _Q17);
          v147 = vzip1q_s8(_Q18, _Q19);
          _Q16 = vzip1q_s16(v146, v147);
          _Q17 = vzip2q_s16(v146, v147);
          v148 = vzip1q_s8(_Q19, _Q20);
          _Q18 = vzip1q_s16(v144, v148);
          _Q19 = vzip2q_s16(v144, v148);
          v149 = vzip1q_s8(_Q20, _Q21);
          _Q23 = vzip1q_s16(v147, v149);
          _Q22 = vzip2q_s16(v147, v149);
          v152 = vzip1q_s8(_Q21, _Q25);
          _Q29 = vzip1q_s16(v148, v152);
          _Q26 = vzip2q_s16(v148, v152);
          v155 = vzip1q_s8(_Q25, _Q28);
          _Q30 = vzip1q_s16(v149, v155);
          _Q27 = vzip2q_s16(v149, v155);
          v158 = vzip1q_s8(_Q28, _Q24);
          _Q31 = vzip1q_s16(v152, v158);
          _Q28 = vzip2q_s16(v152, v158);
          v160 = result;
          v161 = vzip1q_s8(_Q24, v17);
          _Q20 = vzip1q_s16(v155, v161);
          v162 = v132;
          v163 = v131;
          v164 = v130;
          v165 = a3;
          _Q24 = vzip2q_s16(v155, v161);
          v166 = v129;
          v167 = v128;
          v168 = v121;
          v169 = a6;
          do
          {
            *v17.i8 = veor_s8(*&v160[v114], 0x8080808080808080);
            *v18.i8 = veor_s8(*&v162[v114], 0x8080808080808080);
            *v19.i8 = veor_s8(*&v163[v114], 0x8080808080808080);
            *_Q12.i8 = veor_s8(*&v164[v114], 0x8080808080808080);
            v170 = vzip1q_s8(v17, v18);
            v171 = vzip1q_s8(v19, _Q12);
            _Q21 = vzip1q_s16(v170, v171);
            _Q25 = vzip2q_s16(v170, v171);
            __asm
            {
              SDOT            V9.4S, V8.16B, V3.16B
              SDOT            V9.4S, V29.16B, V4.16B
            }

            _Q8 = _Q29;
            _Q29 = vqtbl2q_s8(*_Q20.i8, unk_277BEE330);
            __asm
            {
              SDOT            V10.4S, V16.16B, V3.16B
              SDOT            V10.4S, V30.16B, V4.16B
            }

            _Q16 = _Q30;
            _Q30 = vqtbl2q_s8(*_Q20.i8, unk_277BEE340);
            __asm
            {
              SDOT            V11.4S, V18.16B, V3.16B
              SDOT            V11.4S, V31.16B, V4.16B
            }

            _Q18 = _Q31;
            _Q31 = vqtbl2q_s8(*_Q20.i8, unk_277BEE350);
            __asm
            {
              SDOT            V12.4S, V7.16B, V3.16B
              SDOT            V12.4S, V26.16B, V4.16B
            }

            _Q7 = _Q26;
            _Q26 = vqtbl2q_s8(*_Q24.i8, unk_277BEE330);
            __asm
            {
              SDOT            V13.4S, V17.16B, V3.16B
              SDOT            V13.4S, V27.16B, V4.16B
            }

            _Q17 = _Q27;
            _Q27 = vqtbl2q_s8(*_Q24.i8, unk_277BEE340);
            __asm
            {
              SDOT            V14.4S, V19.16B, V3.16B
              SDOT            V14.4S, V28.16B, V4.16B
            }

            _Q19 = _Q28;
            _Q28 = vqtbl2q_s8(*_Q24.i8, unk_277BEE350);
            __asm
            {
              SDOT            V9.4S, V29.16B, V5.16B
              SDOT            V12.4S, V26.16B, V5.16B
            }

            v17 = vqmovn_high_s32(vqmovn_s32(_Q9), _Q12);
            __asm
            {
              SDOT            V10.4S, V30.16B, V5.16B
              SDOT            V13.4S, V27.16B, V5.16B
            }

            v18 = vqmovn_high_s32(vqmovn_s32(_Q10), _Q13);
            __asm
            {
              SDOT            V11.4S, V31.16B, V5.16B
              SDOT            V14.4S, V28.16B, V5.16B
            }

            v19 = vqmovn_high_s32(vqmovn_s32(_Q11), _Q14);
            __asm
            {
              SDOT            V12.4S, V23.16B, V3.16B
              SDOT            V12.4S, V20.16B, V4.16B
              SDOT            V12.4S, V21.16B, V5.16B
              SDOT            V23.4S, V22.16B, V3.16B
              SDOT            V23.4S, V24.16B, V4.16B
              SDOT            V23.4S, V25.16B, V5.16B
            }

            *&v165[v114 / 4] = vqrshrun_n_s16(v17, 7uLL);
            *&v166[v114] = vqrshrun_n_s16(v18, 7uLL);
            *&v167[v114] = vqrshrun_n_s16(v19, 7uLL);
            *&v168[v114] = vqrshrun_n_s16(vqmovn_high_s32(vqmovn_s32(_Q12), _Q23), 7uLL);
            v168 += v120;
            v167 += v120;
            v166 += v120;
            v165 = (v165 + v120);
            v164 += v119;
            v163 += v119;
            v162 += v119;
            v160 += v119;
            _Q23 = _Q20;
            _Q22 = _Q24;
            _Q20 = _Q21;
            _Q24 = _Q25;
            v169 -= 4;
          }

          while (v169);
          ++v35;
          v114 += 8;
          a5 -= 8;
        }

        while (a5);
      }
    }

    else if (v34[7] | *v34)
    {
      v86 = &result[-3 * a2];
      v87 = vmovn_s16(*v34);
      v88 = a2;
      if (a5 == 4)
      {
        *a13.i8 = *v86;
        *a14.i8 = *(v86 + a2);
        v89 = (v86 + a2 + a2);
        _Q6.i64[0] = *v89;
        v90 = (v89 + a2);
        v91 = *v90;
        v92 = (v90 + a2);
        v93 = *v92;
        v94 = (v92 + a2);
        v95 = (&v86[a2] - a2);
        *a14.i8 = veor_s8(*a14.i8, 0x8080808080808080);
        *_Q6.i8 = veor_s8(*_Q6.i8, 0x8080808080808080);
        v96 = veor_s8(v91, 0x8080808080808080);
        v97 = veor_s8(v93, 0x8080808080808080);
        v98 = veor_s8(*v94, 0x8080808080808080);
        *a13.i8 = vzip1_s8(veor_s8(*a13.i8, 0x8080808080808080), *a14.i8);
        *v27.i8 = vzip1_s8(*_Q6.i8, v96);
        _Q18 = vzip1q_s16(a13, v27);
        *a13.i8 = vzip1_s8(*a14.i8, *_Q6.i8);
        *a14.i8 = vzip1_s8(v96, v97);
        _Q17 = vzip1q_s16(a13, a14);
        *a13.i8 = vzip1_s8(v97, v98);
        _Q16 = vzip1q_s16(v27, a13);
        *_Q6.i8 = vzip1_s8(v98, veor_s8(*(v94 + a2), 0x8080808080808080));
        _Q4 = vdupq_lane_s32(v87, 0);
        _Q5 = vzip1q_s16(a14, _Q6);
        _Q7 = vdupq_lane_s32(v87, 1);
        do
        {
          *_Q19.i8 = vzip1_s8(veor_s8(*v95, 0x8080808080808080), veor_s8(*(v95 + a2), 0x8080808080808080));
          *_Q20.i8 = vzip1_s8(veor_s8(*(v95 + 2 * a2), 0x8080808080808080), veor_s8(*(v95 + 3 * a2), 0x8080808080808080));
          _Q6 = vzip1q_s16(_Q19, _Q20);
          __asm { SDOT            V19.4S, V18.16B, V4.16B }

          _Q18 = vqtbl2q_s8(*_Q5.i8, unk_277BEE330);
          __asm { SDOT            V20.4S, V17.16B, V4.16B }

          _Q17 = vqtbl2q_s8(*_Q5.i8, unk_277BEE340);
          __asm { SDOT            V21.4S, V16.16B, V4.16B }

          _Q16 = vqtbl2q_s8(*_Q5.i8, unk_277BEE350);
          __asm
          {
            SDOT            V19.4S, V18.16B, V7.16B
            SDOT            V20.4S, V17.16B, V7.16B
            SDOT            V21.4S, V16.16B, V7.16B
            SDOT            V22.4S, V5.16B, V4.16B
            SDOT            V22.4S, V6.16B, V7.16B
          }

          _Q19 = vqmovn_high_s32(vqmovn_s32(_Q19), _Q20);
          *_Q19.i8 = vqrshrun_n_s16(_Q19, 7uLL);
          *_Q20.i8 = vqrshrun_n_s16(vqmovn_high_s32(vqmovn_s32(_Q21), _Q22), 7uLL);
          *a3 = _Q19.i32[0];
          *(a3 + a4) = _Q19.i32[1];
          *(a3 + 2 * a4) = _Q20.i32[0];
          v113 = (a3 + a4 + (2 * a4));
          v95 = (v95 + 4 * a2);
          a3 += a4;
          _Q5 = _Q6;
          *v113 = _Q20.i32[1];
          a6 -= 4;
        }

        while (a6);
      }

      else
      {
        v195 = 0;
        v196 = 3 * a2;
        v197 = 7 * a2;
        _Q3 = vdupq_lane_s32(v87, 0);
        v199 = 4 * a2;
        v200 = 4 * a4;
        v201 = a3 + 3 * a4;
        v202 = 2 * a2 + v197;
        v203 = &result[v202 + v88 - v196];
        v204 = v202 - v196;
        _Q4 = vdupq_lane_s32(v87, 1);
        v206 = v88 + v197 - v196;
        v207 = v197 - v196;
        v208 = a3 + 2 * a4;
        v209 = &result[v204];
        v210 = &result[v206];
        result += v207;
        v211 = a3 + a4;
        do
        {
          v212 = (v86 + v88 + v88);
          _Q16.i64[0] = *v212;
          v213 = (v212 + v88);
          _Q17.i64[0] = *v213;
          v214 = (v213 + v88);
          v215 = *v214;
          v216 = (v214 + v88);
          *_Q6.i8 = veor_s8(*v86, 0x8080808080808080);
          *_Q7.i8 = veor_s8(*(v86 + v88), 0x8080808080808080);
          *_Q16.i8 = veor_s8(*_Q16.i8, 0x8080808080808080);
          *_Q17.i8 = veor_s8(*_Q17.i8, 0x8080808080808080);
          *_Q21.i8 = veor_s8(v215, 0x8080808080808080);
          *_Q24.i8 = veor_s8(*v216, 0x8080808080808080);
          *_Q25.i8 = veor_s8(*(v216 + v88), 0x8080808080808080);
          v217 = vzip1q_s8(_Q6, _Q7);
          v218 = vzip1q_s8(_Q16, _Q17);
          _Q22 = vzip1q_s16(v217, v218);
          _Q18 = vzip2q_s16(v217, v218);
          v221 = vzip1q_s8(_Q7, _Q16);
          v222 = vzip1q_s8(_Q17, _Q21);
          _Q23 = vzip1q_s16(v221, v222);
          _Q19 = vzip2q_s16(v221, v222);
          v225 = vzip1q_s8(_Q21, _Q24);
          _Q21 = vzip1q_s16(v218, v225);
          _Q20 = vzip2q_s16(v218, v225);
          v227 = result;
          v228 = vzip1q_s8(_Q24, _Q25);
          _Q6 = vzip1q_s16(v222, v228);
          v229 = v210;
          v230 = v209;
          v231 = v203;
          v232 = a3;
          _Q16 = vzip2q_s16(v222, v228);
          v233 = v211;
          v234 = v208;
          v235 = v201;
          v236 = a6;
          do
          {
            *_Q24.i8 = veor_s8(*&v227[v195], 0x8080808080808080);
            *_Q25.i8 = veor_s8(*&v229[v195], 0x8080808080808080);
            *v30.i8 = veor_s8(*&v230[v195], 0x8080808080808080);
            *v31.i8 = veor_s8(*&v231[v195], 0x8080808080808080);
            v237 = vzip1q_s8(_Q24, _Q25);
            v238 = vzip1q_s8(v30, v31);
            _Q7 = vzip1q_s16(v237, v238);
            _Q17 = vzip2q_s16(v237, v238);
            __asm { SDOT            V24.4S, V22.16B, V3.16B }

            _Q22 = vqtbl2q_s8(*_Q6.i8, unk_277BEE330);
            __asm { SDOT            V25.4S, V23.16B, V3.16B }

            _Q23 = vqtbl2q_s8(*_Q6.i8, unk_277BEE340);
            __asm { SDOT            V26.4S, V21.16B, V3.16B }

            _Q21 = vqtbl2q_s8(*_Q6.i8, unk_277BEE350);
            __asm { SDOT            V27.4S, V18.16B, V3.16B }

            _Q18 = vqtbl2q_s8(*_Q16.i8, unk_277BEE330);
            __asm { SDOT            V28.4S, V19.16B, V3.16B }

            _Q19 = vqtbl2q_s8(*_Q16.i8, unk_277BEE340);
            __asm { SDOT            V29.4S, V20.16B, V3.16B }

            _Q20 = vqtbl2q_s8(*_Q16.i8, unk_277BEE350);
            __asm
            {
              SDOT            V24.4S, V22.16B, V4.16B
              SDOT            V27.4S, V18.16B, V4.16B
            }

            _Q24 = vqmovn_high_s32(vqmovn_s32(_Q24), _Q27);
            __asm
            {
              SDOT            V25.4S, V23.16B, V4.16B
              SDOT            V28.4S, V19.16B, V4.16B
            }

            _Q25 = vqmovn_high_s32(vqmovn_s32(_Q25), _Q28);
            __asm
            {
              SDOT            V26.4S, V21.16B, V4.16B
              SDOT            V29.4S, V20.16B, V4.16B
            }

            v30 = vqmovn_high_s32(vqmovn_s32(_Q26), _Q29);
            __asm
            {
              SDOT            V27.4S, V6.16B, V3.16B
              SDOT            V27.4S, V7.16B, V4.16B
              SDOT            V28.4S, V16.16B, V3.16B
              SDOT            V28.4S, V17.16B, V4.16B
            }

            *&v232[v195 / 4] = vqrshrun_n_s16(_Q24, 7uLL);
            *&v233[v195] = vqrshrun_n_s16(_Q25, 7uLL);
            v31 = vqmovn_high_s32(vqmovn_s32(_Q27), _Q28);
            *&v234[v195] = vqrshrun_n_s16(v30, 7uLL);
            *&v235[v195] = vqrshrun_n_s16(v31, 7uLL);
            v235 += v200;
            v234 += v200;
            v233 += v200;
            v232 = (v232 + v200);
            v231 += v199;
            v230 += v199;
            v229 += v199;
            v227 += v199;
            _Q6 = _Q7;
            _Q16 = _Q17;
            v236 -= 4;
          }

          while (v236);
          ++v86;
          v195 += 8;
          a5 -= 8;
        }

        while (a5);
      }
    }

    else
    {

      return sub_2779C6BFC(result, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, *a13.i8, *a14.i8, *_Q6.i8);
    }
  }

  return result;
}

uint64_t sub_277A3AFBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, __int16 a10, char a11, uint64_t a12)
{
  result = MEMORY[0x28223BE20]();
  v654[4097] = *MEMORY[0x277D85DE8];
  if (v16 == 2 || v17 == 2)
  {

    return sub_27797D04C(result, v13, v14, v15, v16, v17, v18, v19, a9, a10, a11, a12);
  }

  else
  {
    v23 = *(v19 + 8);
    v24 = (*v19 + 2 * (a11 & 0xFu) * v23);
    if (v23 == 12)
    {
      v25 = 12;
    }

    else if (v24[7] | *v24)
    {
      v25 = 8;
    }

    else if (v24[6] | v24[1])
    {
      v25 = 6;
    }

    else if (v24[5] | v24[2])
    {
      v25 = 4;
    }

    else
    {
      v25 = 2;
    }

    v26 = *(v18 + 8);
    v27 = (*v18 + 2 * (a9 & 0xF) * v26);
    if (v26 == 12)
    {
      v28 = 12;
    }

    else if (v27->u16[7] | v27->u16[0])
    {
      v28 = 8;
    }

    else if (v27->u16[6] | v27->u16[1])
    {
      v28 = 6;
    }

    else if (v27->u16[5] | v27->u16[2])
    {
      v28 = 4;
    }

    else
    {
      v28 = 2;
    }

    if (v25 <= 4)
    {
      v29 = 4;
    }

    else
    {
      v29 = v25;
    }

    v30 = v17 + v29 - 1;
    v31 = v26 >> 1;
    v32 = (((v29 >> 1) - 1) * v13);
    v33 = (result - v32 - (v26 >> 1) + 1);
    if (v26 < 9)
    {
      if (v28 >= 6 && v25 == 6)
      {
        v91 = 0;
        v92 = *v24;
        v93 = v13;
        v94 = 5 * v13;
        v95 = 4 * v13;
        v96 = 2 * v13 + v94;
        v97 = vshrn_n_s16(*v27, 1uLL);
        _Q4 = vdupq_lane_s32(v97, 0);
        _Q5 = vdupq_lane_s32(v97, 1);
        v100 = v96 + v13 - v31;
        v101 = v96 - v31;
        v102 = v93 + v94 - v31;
        v103 = v94 - v31;
        v104 = 4 * v15;
        v105 = v100 - v32 + result + 1;
        v106 = v101 - v32 + result + 1;
        v107 = v102 - v32 + result + 1;
        v108 = v103 - v32 + result + 1;
        v109.i64[0] = 0x8080808080808080;
        v109.i64[1] = 0x8080808080808080;
        v110.i64[0] = 0x7F007F007F007FLL;
        v110.i64[1] = 0x7F007F007F007FLL;
        v111 = v14 + 3 * v15;
        result = v14 + 2 * v15;
        v112 = v14 + v15;
        do
        {
          v113 = (v33 + v93 + v93);
          v114 = *v113;
          v115 = (v113 + v93);
          v116 = veorq_s8(*v33, v109);
          _Q21 = vqtbl1q_s8(v116, unk_277BEE300);
          _Q22 = vqtbl1q_s8(v116, unk_277BEE310);
          _Q17 = vqtbl1q_s8(v116, unk_277BEE320);
          __asm
          {
            SDOT            V24.4S, V21.16B, V4.16B
            SDOT            V24.4S, V22.16B, V5.16B
            SDOT            V21.4S, V22.16B, V4.16B
            SDOT            V21.4S, V17.16B, V5.16B
          }

          v124 = vshrn_high_n_s32(vshrn_n_s32(_Q24, 2uLL), _Q21, 2uLL);
          v125 = veorq_s8(*(v33 + v93), v109);
          _Q21 = vqtbl1q_s8(v125, unk_277BEE300);
          _Q22 = vqtbl1q_s8(v125, unk_277BEE310);
          _Q18 = vqtbl1q_s8(v125, unk_277BEE320);
          __asm
          {
            SDOT            V24.4S, V21.16B, V4.16B
            SDOT            V24.4S, V22.16B, V5.16B
            SDOT            V21.4S, V22.16B, V4.16B
            SDOT            V21.4S, V18.16B, V5.16B
          }

          v133 = vshrn_high_n_s32(vshrn_n_s32(_Q24, 2uLL), _Q21, 2uLL);
          v134 = veorq_s8(v114, v109);
          _Q19 = vqtbl1q_s8(v134, unk_277BEE300);
          _Q21 = vqtbl1q_s8(v134, unk_277BEE310);
          _Q18 = vqtbl1q_s8(v134, unk_277BEE320);
          __asm
          {
            SDOT            V24.4S, V19.16B, V4.16B
            SDOT            V24.4S, V21.16B, V5.16B
            SDOT            V25.4S, V21.16B, V4.16B
            SDOT            V25.4S, V18.16B, V5.16B
          }

          v142 = vshrn_high_n_s32(vshrn_n_s32(_Q24, 2uLL), _Q25, 2uLL);
          v143 = veorq_s8(*v115, v109);
          _Q20 = vqtbl1q_s8(v143, unk_277BEE300);
          _Q21 = vqtbl1q_s8(v143, unk_277BEE310);
          _Q18 = vqtbl1q_s8(v143, unk_277BEE320);
          __asm
          {
            SDOT            V24.4S, V20.16B, V4.16B
            SDOT            V24.4S, V21.16B, V5.16B
            SDOT            V25.4S, V21.16B, V4.16B
            SDOT            V25.4S, V18.16B, V5.16B
          }

          v151 = vshrn_high_n_s32(vshrn_n_s32(_Q24, 2uLL), _Q25, 2uLL);
          v152 = veorq_s8(*(v115 + v93), v109);
          _Q21 = vqtbl1q_s8(v152, unk_277BEE300);
          _Q23 = vqtbl1q_s8(v152, unk_277BEE310);
          _Q18 = vqtbl1q_s8(v152, unk_277BEE320);
          __asm
          {
            SDOT            V24.4S, V21.16B, V4.16B
            SDOT            V24.4S, V23.16B, V5.16B
            SDOT            V21.4S, V23.16B, V4.16B
            SDOT            V21.4S, V18.16B, V5.16B
          }

          v160 = v14;
          v161 = v112;
          v162 = result;
          v163 = v111;
          v164 = v108;
          v165 = vshrn_high_n_s32(vshrn_n_s32(_Q24, 2uLL), _Q21, 2uLL);
          v166 = v107;
          v167 = v106;
          v168 = v105;
          v169 = v17;
          do
          {
            v170 = veorq_s8(*(v164 + v91), v109);
            _Q26 = vqtbl1q_s8(v170, unk_277BEE300);
            _Q27 = vqtbl1q_s8(v170, unk_277BEE310);
            _Q21 = vqtbl1q_s8(v170, unk_277BEE320);
            __asm
            {
              SDOT            V29.4S, V26.16B, V4.16B
              SDOT            V26.4S, V27.16B, V4.16B
            }

            v176 = veorq_s8(*(v166 + v91), v109);
            __asm { SDOT            V29.4S, V27.16B, V5.16B }

            _Q27 = vqtbl1q_s8(v176, unk_277BEE300);
            _Q28 = vqtbl1q_s8(v176, unk_277BEE310);
            _Q23 = vqtbl1q_s8(v176, unk_277BEE320);
            __asm
            {
              SDOT            V30.4S, V27.16B, V4.16B
              SDOT            V26.4S, V21.16B, V5.16B
              SDOT            V30.4S, V28.16B, V5.16B
              SDOT            V27.4S, V28.16B, V4.16B
            }

            v185 = veorq_s8(*(v167 + v91), v109);
            _Q24 = vqtbl1q_s8(v185, unk_277BEE300);
            __asm { SDOT            V27.4S, V23.16B, V5.16B }

            _Q23 = vqtbl1q_s8(v185, unk_277BEE310);
            _Q21 = vqtbl1q_s8(v185, unk_277BEE320);
            __asm
            {
              SDOT            V9.4S, V24.16B, V4.16B
              SDOT            V9.4S, V23.16B, V5.16B
              SDOT            V28.4S, V23.16B, V4.16B
              SDOT            V28.4S, V21.16B, V5.16B
            }

            v194 = veorq_s8(*(v168 + v91), v109);
            _Q21 = vqtbl1q_s8(v194, unk_277BEE300);
            _Q23 = vqtbl1q_s8(v194, unk_277BEE310);
            v197 = vshrn_n_s32(_Q29, 2uLL);
            __asm
            {
              SDOT            V10.4S, V21.16B, V4.16B
              SDOT            V10.4S, V23.16B, V5.16B
              SDOT            V21.4S, V23.16B, V4.16B
            }

            *_Q23.i8 = vshrn_n_s32(_Q26, 2uLL);
            v201 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v133.i8, *v92.i8, 2), *v124.i8, *v92.i8, 1), *v142.i8, *v92.i8, 3), *v151.i8, v92, 4), *v165.i8, v92, 5), v197, v92, 6);
            v202 = vmull_high_lane_s16(v133, *v92.i8, 2);
            v203 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v142.i8, *v92.i8, 2), *v133.i8, *v92.i8, 1), *v151.i8, *v92.i8, 3), *v165.i8, v92, 4), v197, v92, 5);
            v204 = vmlal_high_lane_s16(vmull_high_lane_s16(v142, *v92.i8, 2), v133, *v92.i8, 1);
            v205 = vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v151.i8, *v92.i8, 2), *v142.i8, *v92.i8, 1), *v165.i8, *v92.i8, 3), v197, v92, 4);
            v206 = vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v165.i8, *v92.i8, 2), *v151.i8, *v92.i8, 1), v197, *v92.i8, 3);
            v207 = vshrn_n_s32(_Q30, 2uLL);
            v208 = vshrn_high_n_s32(v197, _Q26, 2uLL);
            v209 = vmlal_high_lane_s16(vmlal_high_lane_s16(v202, v124, *v92.i8, 1), v142, *v92.i8, 3);
            v210 = vmlal_high_lane_s16(vmull_high_lane_s16(v151, *v92.i8, 2), v142, *v92.i8, 1);
            *_Q26.i8 = vshrn_n_s32(_Q27, 2uLL);
            v211 = vshrn_n_s32(_Q9, 2uLL);
            v212 = vmlal_high_laneq_s16(v209, v151, v92, 4);
            v142 = vshrn_high_n_s32(v207, _Q27, 2uLL);
            v213 = vmlal_high_lane_s16(v204, v151, *v92.i8, 3);
            v214 = vmlal_high_lane_s16(vmull_high_lane_s16(v165, *v92.i8, 2), v151, *v92.i8, 1);
            *_Q9.i8 = vshrn_n_s32(_Q28, 2uLL);
            v215 = vmlal_laneq_s16(vmlal_laneq_s16(v205, v207, v92, 5), v211, v92, 6);
            v216 = vmlal_laneq_s16(vmlal_laneq_s16(v206, v207, v92, 4), v211, v92, 5);
            v217 = v211;
            _Q17 = vqtbl1q_s8(v194, unk_277BEE320);
            __asm { SDOT            V21.4S, V17.16B, V5.16B }

            *_Q10.i8 = vshrn_n_s32(_Q10, 2uLL);
            v151 = vshrn_high_n_s32(v217, _Q28, 2uLL);
            v124 = v165;
            *&v160[v91 / 4] = vqmovun_s16(vaddq_s16(vqrshrn_high_n_s32(vqrshrn_n_s32(v201, 0xBuLL), vmlal_laneq_s16(vmlal_high_laneq_s16(v212, v165, v92, 5), *_Q23.i8, v92, 6), 0xBuLL), v110));
            *&v161[v91] = vqmovun_s16(vaddq_s16(vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_laneq_s16(v203, v207, v92, 6), 0xBuLL), vmlal_laneq_s16(vmlal_laneq_s16(vmlal_high_laneq_s16(v213, v165, v92, 4), *_Q23.i8, v92, 5), *_Q26.i8, v92, 6), 0xBuLL), v110));
            *(v162 + v91) = vqmovun_s16(vaddq_s16(vqrshrn_high_n_s32(vqrshrn_n_s32(v215, 0xBuLL), vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_high_lane_s16(v210, v165, *v92.i8, 3), *_Q23.i8, v92, 4), *_Q26.i8, v92, 5), *_Q9.i8, v92, 6), 0xBuLL), v110));
            v168 += v95;
            v167 += v95;
            *&v163[v91] = vqmovun_s16(vaddq_s16(vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_laneq_s16(v216, *_Q10.i8, v92, 6), 0xBuLL), vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(v214, *_Q23.i8, *v92.i8, 3), *_Q26.i8, v92, 4), *_Q9.i8, v92, 5), vshrn_n_s32(_Q21, 2uLL), v92, 6), 0xBuLL), v110));
            v166 += v95;
            v164 += v95;
            v162 += v104;
            v161 += v104;
            v160 = (v160 + v104);
            v163 += v104;
            v133 = v208;
            v165 = vshrn_high_n_s32(*_Q10.i8, _Q21, 2uLL);
            v169 -= 4;
          }

          while (v169);
          v33 = (v33 + 8);
          v91 += 8;
          LODWORD(v16) = v16 - 8;
        }

        while (v16);
      }

      else if (v28 > 4 || v25 > 4)
      {
        if (v28 > 4)
        {
          v438 = vshrn_n_s16(*v27, 1uLL);
          v439 = 4 * v13;
          v440 = v13;
          _Q3 = vdupq_lane_s32(v438, 0);
          _Q4 = vdupq_lane_s32(v438, 1);
          v443 = 3 * v13 - v31 - v32 + result + 1;
          v444 = 2 * v13 - v31 - v32 + result + 1;
          v445 = v13 - v31 - v32 + result + 1;
          result = v16;
          v446 = v650;
          v447.i64[0] = 0x8080808080808080;
          v447.i64[1] = 0x8080808080808080;
          do
          {
            v448 = 0;
            v449 = v446;
            do
            {
              v450 = veorq_s8(*(v33 + v448), v447);
              _Q19 = vqtbl1q_s8(v450, unk_277BEE300);
              _Q20 = vqtbl1q_s8(v450, unk_277BEE310);
              _Q7 = vqtbl1q_s8(v450, unk_277BEE320);
              __asm
              {
                SDOT            V21.4S, V19.16B, V3.16B
                SDOT            V21.4S, V20.16B, V4.16B
                SDOT            V19.4S, V20.16B, V3.16B
                SDOT            V19.4S, V7.16B, V4.16B
              }

              v458 = vshrn_high_n_s32(vshrn_n_s32(_Q21, 2uLL), _Q19, 2uLL);
              v459 = veorq_s8(*(v445 + v448), v447);
              _Q19 = vqtbl1q_s8(v459, unk_277BEE300);
              _Q20 = vqtbl1q_s8(v459, unk_277BEE310);
              _Q16 = vqtbl1q_s8(v459, unk_277BEE320);
              __asm
              {
                SDOT            V21.4S, V19.16B, V3.16B
                SDOT            V21.4S, V20.16B, V4.16B
                SDOT            V19.4S, V20.16B, V3.16B
                SDOT            V19.4S, V16.16B, V4.16B
              }

              v467 = vshrn_high_n_s32(vshrn_n_s32(_Q21, 2uLL), _Q19, 2uLL);
              v468 = veorq_s8(*(v444 + v448), v447);
              _Q19 = vqtbl1q_s8(v468, unk_277BEE300);
              _Q20 = vqtbl1q_s8(v468, unk_277BEE310);
              _Q17 = vqtbl1q_s8(v468, unk_277BEE320);
              __asm
              {
                SDOT            V21.4S, V19.16B, V3.16B
                SDOT            V21.4S, V20.16B, V4.16B
                SDOT            V19.4S, V20.16B, V3.16B
                SDOT            V19.4S, V17.16B, V4.16B
              }

              v476 = vshrn_high_n_s32(vshrn_n_s32(_Q21, 2uLL), _Q19, 2uLL);
              v477 = veorq_s8(*(v443 + v448), v447);
              _Q19 = vqtbl1q_s8(v477, unk_277BEE300);
              _Q20 = vqtbl1q_s8(v477, unk_277BEE310);
              _Q18 = vqtbl1q_s8(v477, unk_277BEE320);
              __asm
              {
                SDOT            V21.4S, V19.16B, V3.16B
                SDOT            V21.4S, V20.16B, V4.16B
                SDOT            V19.4S, V20.16B, V3.16B
                SDOT            V19.4S, V18.16B, V4.16B
              }

              *v449 = v458;
              v449[16] = v467;
              v449[32] = v476;
              v449[48] = vshrn_high_n_s32(vshrn_n_s32(_Q21, 2uLL), _Q19, 2uLL);
              ++v449;
              v448 += 8;
            }

            while (v16 != v448);
            v33 = (v33 + v439);
            v446 += 64;
            v485 = v30 - 4;
            v443 += v439;
            v444 += v439;
            v445 += v439;
            v322 = v30 <= 8;
            v30 -= 4;
          }

          while (!v322);
          v486.i64[0] = 0x8080808080808080;
          v486.i64[1] = 0x8080808080808080;
          do
          {
            v487 = v33;
            v488 = v446;
            v489 = v16;
            do
            {
              v490 = *v487;
              v487 = (v487 + 8);
              v491 = veorq_s8(v490, v486);
              _Q16 = vqtbl1q_s8(v491, unk_277BEE300);
              _Q17 = vqtbl1q_s8(v491, unk_277BEE310);
              _Q7 = vqtbl1q_s8(v491, unk_277BEE320);
              __asm
              {
                SDOT            V18.4S, V16.16B, V3.16B
                SDOT            V18.4S, V17.16B, V4.16B
                SDOT            V16.4S, V17.16B, V3.16B
                SDOT            V16.4S, V7.16B, V4.16B
              }

              *v488++ = vshrn_high_n_s32(vshrn_n_s32(_Q18, 2uLL), _Q16, 2uLL);
              v489 -= 8;
            }

            while (v489);
            v33 = (v33 + v440);
            v446 += 16;
            --v485;
          }

          while (v485);
        }

        else
        {
          v410 = (result - (((v29 >> 1) - 1) * v13) - (v26 >> 1) + 3);
          v411 = v13;
          v20.i64[0] = *(v27->i64 + 4);
          v412 = vshrn_n_s16(v20, 1uLL);
          v413 = 4 * v13;
          if (v16 == 4)
          {
            _Q0 = vdupq_lane_s32(v412, 0);
            v415 = v17 + v29 + 3;
            v416 = v650;
            v417.i64[0] = 0x8080808080808080;
            v417.i64[1] = 0x8080808080808080;
            do
            {
              v418 = v410;
              v419 = *v410;
              v420 = (v410 + v13);
              v421 = *v420;
              v422 = (v420 + v13);
              v423 = *v422;
              v424 = (v422 + v13);
              _Q4 = vqtbl1q_s8(veorq_s8(v419, v417), xmmword_277BB74E0);
              __asm { SDOT            V16.4S, V4.16B, V0.16B }

              *_Q4.i8 = vshrn_n_s32(_Q16, 2uLL);
              _Q5 = vqtbl1q_s8(veorq_s8(v421, v417), xmmword_277BB74E0);
              __asm { SDOT            V16.4S, V5.16B, V0.16B }

              *_Q5.i8 = vshrn_n_s32(_Q16, 2uLL);
              _Q6 = vqtbl1q_s8(veorq_s8(v423, v417), xmmword_277BB74E0);
              __asm { SDOT            V16.4S, V6.16B, V0.16B }

              *_Q6.i8 = vshrn_n_s32(_Q16, 2uLL);
              _Q7 = vqtbl1q_s8(veorq_s8(*v424, v417), xmmword_277BB74E0);
              __asm { SDOT            V16.4S, V7.16B, V0.16B }

              *v416 = *_Q4.i8;
              v416[32] = *_Q5.i8;
              v416[64] = *_Q6.i8;
              v416[96] = vshrn_n_s32(_Q16, 2uLL);
              v416 += 128;
              v415 -= 4;
              v410 = (v424 + v13);
            }

            while (v415 > 8);
            v433 = (v418 + v413);
            v434 = v415 - 4;
            v435.i64[0] = 0x8080808080808080;
            v435.i64[1] = 0x8080808080808080;
            do
            {
              _Q4 = vqtbl1q_s8(veorq_s8(*v433, v435), xmmword_277BB74E0);
              __asm { SDOT            V5.4S, V4.16B, V0.16B }

              *v416 = vshrn_n_s32(_Q5, 2uLL);
              v433 = (v433 + v13);
              v416 += 32;
              --v434;
            }

            while (v434);
          }

          else
          {
            _Q2 = vdupq_lane_s32(v412, 0);
            v574 = 3 * v13 - v31 - v32 + result + 3;
            v575 = 2 * v13 - v31 - v32 + result + 3;
            v576 = v13 - v31 - v32 + result + 3;
            result = v16;
            v577 = v650;
            v578.i64[0] = 0x8080808080808080;
            v578.i64[1] = 0x8080808080808080;
            do
            {
              v579 = 0;
              v580 = v577;
              do
              {
                v581 = veorq_s8(*(v410 + v579), v578);
                _Q17 = vqtbl1q_s8(v581, unk_277BEE300);
                _Q5 = vqtbl1q_s8(v581, unk_277BEE310);
                __asm
                {
                  SDOT            V18.4S, V17.16B, V2.16B
                  SDOT            V17.4S, V5.16B, V2.16B
                }

                v586 = vshrn_high_n_s32(vshrn_n_s32(_Q18, 2uLL), _Q17, 2uLL);
                v587 = veorq_s8(*(v576 + v579), v578);
                _Q17 = vqtbl1q_s8(v587, unk_277BEE300);
                _Q6 = vqtbl1q_s8(v587, unk_277BEE310);
                __asm
                {
                  SDOT            V18.4S, V17.16B, V2.16B
                  SDOT            V17.4S, V6.16B, V2.16B
                }

                v592 = vshrn_high_n_s32(vshrn_n_s32(_Q18, 2uLL), _Q17, 2uLL);
                v593 = veorq_s8(*(v575 + v579), v578);
                _Q17 = vqtbl1q_s8(v593, unk_277BEE300);
                _Q7 = vqtbl1q_s8(v593, unk_277BEE310);
                __asm
                {
                  SDOT            V18.4S, V17.16B, V2.16B
                  SDOT            V17.4S, V7.16B, V2.16B
                }

                v598 = vshrn_high_n_s32(vshrn_n_s32(_Q18, 2uLL), _Q17, 2uLL);
                v599 = veorq_s8(*(v574 + v579), v578);
                _Q17 = vqtbl1q_s8(v599, unk_277BEE300);
                _Q16 = vqtbl1q_s8(v599, unk_277BEE310);
                __asm
                {
                  SDOT            V18.4S, V17.16B, V2.16B
                  SDOT            V17.4S, V16.16B, V2.16B
                }

                *v580 = v586;
                v580[16] = v592;
                v580[32] = v598;
                v580[48] = vshrn_high_n_s32(vshrn_n_s32(_Q18, 2uLL), _Q17, 2uLL);
                ++v580;
                v579 += 8;
              }

              while (v16 != v579);
              v410 = (v410 + v413);
              v577 += 64;
              v604 = v30 - 4;
              v574 += v413;
              v575 += v413;
              v576 += v413;
              v322 = v30 <= 8;
              v30 -= 4;
            }

            while (!v322);
            v605.i64[0] = 0x8080808080808080;
            v605.i64[1] = 0x8080808080808080;
            do
            {
              v606 = v410;
              v607 = v577;
              v608 = v16;
              do
              {
                v609 = *v606;
                v606 = (v606 + 8);
                v610 = veorq_s8(v609, v605);
                _Q6 = vqtbl1q_s8(v610, unk_277BEE300);
                _Q5 = vqtbl1q_s8(v610, unk_277BEE310);
                __asm
                {
                  SDOT            V7.4S, V6.16B, V2.16B
                  SDOT            V6.4S, V5.16B, V2.16B
                }

                *v607++ = vshrn_high_n_s32(vshrn_n_s32(_Q7, 2uLL), _Q6, 2uLL);
                v608 -= 8;
              }

              while (v608);
              v410 = (v410 + v411);
              v577 += 16;
              --v604;
            }

            while (v604);
          }
        }

        v615 = *v24;
        if (v25 > 4)
        {
          if (v25 == 6)
          {
            return sub_277A3CA94(v650, v14, v15, v16, v17, v615);
          }

          else
          {
            return sub_277A3CD28(v650, v14, v15, v16, v17, v615);
          }
        }

        else
        {
          v616 = (v615 >> 32);
          if (v16 == 4)
          {
            v617 = *&v650[0];
            v618 = v651;
            v619 = v652;
            v620 = v653;
            v621 = 2 * v15;
            v622.i64[0] = 0x7F007F007F007FLL;
            v622.i64[1] = 0x7F007F007F007FLL;
            do
            {
              v623 = vmlal_lane_s16(vmull_lane_s16(v618, v616, 1), v617, v616, 0);
              v617 = v620[32];
              v624 = vmlal_lane_s16(vmull_lane_s16(v619, v616, 1), v618, v616, 0);
              v618 = v620[64];
              v625 = vmlal_lane_s16(v623, v619, v616, 2);
              v626 = vmlal_lane_s16(vmull_lane_s16(*v620, v616, 1), v619, v616, 0);
              v619 = v620[96];
              v627 = vqmovun_s16(vaddq_s16(vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_lane_s16(v625, *v620, v616, 3), 0xBuLL), vmlal_lane_s16(vmlal_lane_s16(v624, *v620, v616, 2), v617, v616, 3), 0xBuLL), v622));
              v628 = vaddq_s16(vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_lane_s16(vmlal_lane_s16(v626, v617, v616, 2), v618, v616, 3), 0xBuLL), vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(v617, v616, 1), *v620, v616, 0), v618, v616, 2), v619, v616, 3), 0xBuLL), v622);
              *v14 = v627.i32[0];
              *(v14 + v15) = v627.i32[1];
              v629 = vqmovun_s16(v628);
              *(v14 + v621) = v629.i32[0];
              v630 = (v14 + v621 + v15);
              v620 += 128;
              v14 += v15;
              *v630 = v629.i32[1];
              LODWORD(v17) = v17 - 4;
            }

            while (v17);
          }

          else
          {
            v631 = v14 + 3 * v15;
            v632 = v14 + 2 * v15;
            v633 = v14 + v15;
            v634 = v650;
            v635.i64[0] = 0x7F007F007F007FLL;
            v635.i64[1] = 0x7F007F007F007FLL;
            do
            {
              v636 = 0;
              v637 = *v634;
              v638 = v634[16];
              v639 = 48;
              v640 = v17;
              v641 = v634[32];
              do
              {
                v642 = v634[v639];
                v643 = vmlal_lane_s16(vmull_lane_s16(*v638.i8, v616, 1), *v637.i8, v616, 0);
                v644 = vmlal_high_lane_s16(vmull_high_lane_s16(v638, v616, 1), v637, v616, 0);
                v637 = v634[v639 + 16];
                v645 = vmlal_lane_s16(vmull_lane_s16(*v641.i8, v616, 1), *v638.i8, v616, 0);
                v646 = vmlal_high_lane_s16(vmull_high_lane_s16(v641, v616, 1), v638, v616, 0);
                v638 = v634[v639 + 32];
                v647 = vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_lane_s16(vmlal_lane_s16(v643, *v641.i8, v616, 2), *v642.i8, v616, 3), 0xBuLL), vmlal_high_lane_s16(vmlal_high_lane_s16(v644, v641, v616, 2), v642, v616, 3), 0xBuLL);
                v648 = vmlal_lane_s16(vmull_lane_s16(*v642.i8, v616, 1), *v641.i8, v616, 0);
                v649 = vmlal_high_lane_s16(vmull_high_lane_s16(v642, v616, 1), v641, v616, 0);
                v641 = v634[v639 + 48];
                *&v14[v636 / 4] = vqmovun_s16(vaddq_s16(v647, v635));
                *&v633[v636] = vqmovun_s16(vaddq_s16(vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_lane_s16(vmlal_lane_s16(v645, *v642.i8, v616, 2), *v637.i8, v616, 3), 0xBuLL), vmlal_high_lane_s16(vmlal_high_lane_s16(v646, v642, v616, 2), v637, v616, 3), 0xBuLL), v635));
                *&v632[v636] = vqmovun_s16(vaddq_s16(vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_lane_s16(vmlal_lane_s16(v648, *v637.i8, v616, 2), *v638.i8, v616, 3), 0xBuLL), vmlal_high_lane_s16(vmlal_high_lane_s16(v649, v637, v616, 2), v638, v616, 3), 0xBuLL), v635));
                *&v631[v636] = vqmovun_s16(vaddq_s16(vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v637.i8, v616, 1), *v642.i8, v616, 0), *v638.i8, v616, 2), *v641.i8, v616, 3), 0xBuLL), vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v637, v616, 1), v642, v616, 0), v638, v616, 2), v641, v616, 3), 0xBuLL), v635));
                v639 += 64;
                v636 += 4 * v15;
                v640 -= 4;
              }

              while (v640);
              ++v634;
              v14 += 2;
              v631 += 8;
              v632 += 8;
              v633 += 8;
              LODWORD(v16) = v16 - 8;
            }

            while (v16);
          }
        }
      }

      else
      {
        v220 = (result - (((v29 >> 1) - 1) * v13) - (v26 >> 1) + 3);
        v221 = *(v24 + 2);
        v21.i64[0] = *(v27->i64 + 4);
        _D5 = vshrn_n_s16(v21, 1uLL);
        if (v16 == 4)
        {
          v223 = v13;
          v224 = *v220;
          v225 = (v220 + v13);
          v226.i64[0] = 0x8080808080808080;
          v226.i64[1] = 0x8080808080808080;
          _Q7 = vqtbl1q_s8(veorq_s8(v224, v226), xmmword_277BB74E0);
          _Q3 = vdupq_lane_s32(_D5, 0);
          __asm { SDOT            V16.4S, V7.16B, V5.4B[0] }

          v230 = vshrn_n_s32(_Q16, 2uLL);
          _Q6 = vqtbl1q_s8(veorq_s8(*v225, v226), xmmword_277BB74E0);
          __asm { SDOT            V7.4S, V6.16B, V5.4B[0] }

          v233 = vshrn_n_s32(_Q7, 2uLL);
          v234 = veorq_s8(*(v225 + v13), v226);
          v235 = 3 * v13;
          _Q6 = vqtbl1q_s8(v234, xmmword_277BB74E0);
          __asm { SDOT            V17.4S, V6.16B, V5.4B[0] }

          v238 = vshrn_n_s32(_Q17, 2uLL);
          v239 = 4 * v13;
          v240 = 2 * v13;
          v241 = 3 * v13;
          v242 = v31 + v32;
          v243 = v241 - (v31 + v32) + result + 3;
          v244 = v240 - v31 - v32 + result + 3;
          v245 = v223 - v31 - v32 + result + 3;
          v246 = result - v242 + 3;
          v247.i64[0] = 0x7F007F007F007FLL;
          v247.i64[1] = 0x7F007F007F007FLL;
          do
          {
            _Q17 = vqtbl1q_s8(veorq_s8(*(v246 + v235), v226), xmmword_277BB74E0);
            __asm { SDOT            V21.4S, V17.16B, V3.16B }

            *_Q17.i8 = vshrn_n_s32(_Q21, 2uLL);
            _Q18 = vqtbl1q_s8(veorq_s8(*(v245 + v235), v226), xmmword_277BB74E0);
            __asm { SDOT            V21.4S, V18.16B, V3.16B }

            v252 = vmlal_lane_s16(vmull_lane_s16(v233, v221, 1), v230, v221, 0);
            v230 = vshrn_n_s32(_Q21, 2uLL);
            _Q19 = vqtbl1q_s8(veorq_s8(*(v244 + v235), v226), xmmword_277BB74E0);
            __asm { SDOT            V21.4S, V19.16B, V3.16B }

            v255 = vmlal_lane_s16(vmull_lane_s16(v238, v221, 1), v233, v221, 0);
            v233 = vshrn_n_s32(_Q21, 2uLL);
            _Q20 = vqtbl1q_s8(veorq_s8(*(v243 + v235), v226), xmmword_277BB74E0);
            __asm { SDOT            V21.4S, V20.16B, V3.16B }

            v258 = vmlal_lane_s16(v252, v238, v221, 2);
            v259 = vmlal_lane_s16(vmull_lane_s16(*_Q17.i8, v221, 1), v238, v221, 0);
            v238 = vshrn_n_s32(_Q21, 2uLL);
            v260 = vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(v230, v221, 1), *_Q17.i8, v221, 0), v233, v221, 2), v238, v221, 3);
            *_Q17.i8 = vqmovun_s16(vaddq_s16(vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_lane_s16(v258, *_Q17.i8, v221, 3), 0xBuLL), vmlal_lane_s16(vmlal_lane_s16(v255, *_Q17.i8, v221, 2), v230, v221, 3), 0xBuLL), v247));
            *v258.i8 = vqmovun_s16(vaddq_s16(vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_lane_s16(vmlal_lane_s16(v259, v230, v221, 2), v233, v221, 3), 0xBuLL), v260, 0xBuLL), v247));
            *v14 = _Q17.i32[0];
            *(v14 + v15) = _Q17.i32[1];
            *(v14 + 2 * v15) = v258.i32[0];
            result = v14 + v15 + (2 * v15);
            v14 += v15;
            v243 += v239;
            v244 += v239;
            v245 += v239;
            v246 += v239;
            *result = v258.i32[1];
            LODWORD(v17) = v17 - 4;
          }

          while (v17);
        }

        else
        {
          v499 = 0;
          v500 = 2 * v13 + 3 * v13;
          v501 = v13;
          v502 = 4 * v13;
          _Q3 = vdupq_lane_s32(_D5, 0);
          v504 = v500 + v13 - v31;
          v505 = v500 - v31;
          v506 = 3 * v13;
          v507 = v13 + v506 - v31;
          v508 = v506 - v31;
          v509 = 4 * v15;
          v510 = v504 - v32 + result + 3;
          v511 = v505 - v32 + result + 3;
          v512 = v507 - v32 + result + 3;
          v513 = v508 - v32 + result + 3;
          v514.i64[0] = 0x8080808080808080;
          v514.i64[1] = 0x8080808080808080;
          v515.i64[0] = 0x7F007F007F007FLL;
          v515.i64[1] = 0x7F007F007F007FLL;
          v516 = v14 + 3 * v15;
          result = v14 + 2 * v15;
          v517 = v14 + v15;
          do
          {
            v518 = veorq_s8(*v220, v514);
            _Q18 = vqtbl1q_s8(v518, unk_277BEE300);
            _Q7 = vqtbl1q_s8(v518, unk_277BEE310);
            __asm
            {
              SDOT            V19.4S, V18.16B, V3.16B
              SDOT            V18.4S, V7.16B, V3.16B
            }

            v523 = vshrn_high_n_s32(vshrn_n_s32(_Q19, 2uLL), _Q18, 2uLL);
            v524 = veorq_s8(*(v220 + v501), v514);
            _Q16 = vqtbl1q_s8(v524, unk_277BEE300);
            _Q7 = vqtbl1q_s8(v524, unk_277BEE310);
            __asm
            {
              SDOT            V18.4S, V16.16B, V3.16B
              SDOT            V19.4S, V7.16B, V3.16B
            }

            v529 = vshrn_high_n_s32(vshrn_n_s32(_Q18, 2uLL), _Q19, 2uLL);
            v530 = veorq_s8(*(v220 + v501 + v501), v514);
            _Q17 = vqtbl1q_s8(v530, unk_277BEE300);
            _Q7 = vqtbl1q_s8(v530, unk_277BEE310);
            __asm
            {
              SDOT            V18.4S, V17.16B, V3.16B
              SDOT            V17.4S, V7.16B, V3.16B
            }

            v535 = v14;
            v536 = v517;
            v537 = result;
            v538 = v516;
            v539 = v513;
            v540 = vshrn_high_n_s32(vshrn_n_s32(_Q18, 2uLL), _Q17, 2uLL);
            v541 = v512;
            v542 = v511;
            v543 = v510;
            v544 = v17;
            do
            {
              v545 = veorq_s8(*(v539 + v499), v514);
              _Q19 = vqtbl1q_s8(v545, unk_277BEE300);
              _Q17 = vqtbl1q_s8(v545, unk_277BEE310);
              __asm
              {
                SDOT            V23.4S, V19.16B, V3.16B
                SDOT            V24.4S, V17.16B, V3.16B
              }

              *_Q19.i8 = vshrn_n_s32(_Q23, 2uLL);
              *_Q17.i8 = vshrn_n_s32(_Q24, 2uLL);
              v550 = veorq_s8(*(v541 + v499), v514);
              _Q23 = vqtbl1q_s8(v550, unk_277BEE300);
              _Q18 = vqtbl1q_s8(v550, unk_277BEE310);
              __asm
              {
                SDOT            V25.4S, V23.16B, V3.16B
                SDOT            V24.4S, V18.16B, V3.16B
              }

              *_Q25.i8 = vshrn_n_s32(_Q25, 2uLL);
              *_Q18.i8 = vshrn_n_s32(_Q24, 2uLL);
              v555 = vmlal_lane_s16(vmull_lane_s16(*v529.i8, v221, 1), *v523.i8, v221, 0);
              v556 = vmlal_high_lane_s16(vmull_high_lane_s16(v529, v221, 1), v523, v221, 0);
              v557 = vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v540.i8, v221, 1), *v529.i8, v221, 0), *_Q19.i8, v221, 2), *_Q25.i8, v221, 3);
              v558 = vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*_Q19.i8, v221, 1), *v540.i8, v221, 0), *_Q25.i8, v221, 2);
              v559 = vmull_lane_s16(*_Q25.i8, v221, 1);
              v523 = vshrn_high_n_s32(*_Q25.i8, _Q24, 2uLL);
              v560 = veorq_s8(*(v542 + v499), v514);
              _Q24 = vqtbl1q_s8(v560, unk_277BEE300);
              _Q22 = vqtbl1q_s8(v560, unk_277BEE310);
              __asm
              {
                SDOT            V25.4S, V24.16B, V3.16B
                SDOT            V24.4S, V22.16B, V3.16B
              }

              *_Q22.i8 = vshrn_n_s32(_Q25, 2uLL);
              *_Q25.i8 = vshrn_n_s32(_Q24, 2uLL);
              v565 = vmlal_high_lane_s16(vmull_high_lane_s16(v540, v221, 1), v529, v221, 0);
              v566 = vmlal_lane_s16(v558, *_Q22.i8, v221, 3);
              v567 = vmlal_lane_s16(vmlal_lane_s16(v559, *_Q19.i8, v221, 0), *_Q22.i8, v221, 2);
              v529 = vshrn_high_n_s32(*_Q22.i8, _Q24, 2uLL);
              v568 = veorq_s8(*(v543 + v499), v514);
              _Q22 = vqtbl1q_s8(v568, unk_277BEE300);
              _Q20 = vqtbl1q_s8(v568, unk_277BEE310);
              __asm
              {
                SDOT            V24.4S, V22.16B, V3.16B
                SDOT            V22.4S, V20.16B, V3.16B
              }

              *_Q20.i8 = vshrn_n_s32(_Q24, 2uLL);
              *&v535[v499 / 4] = vqmovun_s16(vaddq_s16(vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_lane_s16(vmlal_lane_s16(v555, *v540.i8, v221, 2), *_Q19.i8, v221, 3), 0xBuLL), vmlal_lane_s16(vmlal_high_lane_s16(v556, v540, v221, 2), *_Q17.i8, v221, 3), 0xBuLL), v515));
              *&v536[v499] = vqmovun_s16(vaddq_s16(vqrshrn_high_n_s32(vqrshrn_n_s32(v557, 0xBuLL), vmlal_lane_s16(vmlal_lane_s16(v565, *_Q17.i8, v221, 2), *_Q18.i8, v221, 3), 0xBuLL), v515));
              *(v537 + v499) = vqmovun_s16(vaddq_s16(vqrshrn_high_n_s32(vqrshrn_n_s32(v566, 0xBuLL), vmlal_lane_s16(vmlal_lane_s16(vmlal_high_lane_s16(vmull_lane_s16(*_Q17.i8, v221, 1), v540, v221, 0), *_Q18.i8, v221, 2), *_Q25.i8, v221, 3), 0xBuLL), v515));
              *&v538[v499] = vqmovun_s16(vaddq_s16(vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_lane_s16(v567, *_Q20.i8, v221, 3), 0xBuLL), vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*_Q18.i8, v221, 1), *_Q17.i8, v221, 0), *_Q25.i8, v221, 2), vshrn_n_s32(_Q22, 2uLL), v221, 3), 0xBuLL), v515));
              v543 += v502;
              v542 += v502;
              v541 += v502;
              v539 += v502;
              v538 += v509;
              v537 += v509;
              v536 += v509;
              v535 = (v535 + v509);
              v540 = vshrn_high_n_s32(*_Q20.i8, _Q22, 2uLL);
              v544 -= 4;
            }

            while (v544);
            v220 = (v220 + 8);
            v499 += 8;
            LODWORD(v16) = v16 - 8;
          }

          while (v16);
        }
      }
    }

    else
    {
      v22.i64[0] = v27[1].i64[0];
      v34 = *v24;
      v35 = *(v24 + 8);
      v36 = vuzp1q_s8(*v27, v22);
      if (v16 >= 5)
      {
        v261 = 4 * v13;
        v262 = v13;
        _Q5 = vdupq_lane_s32(*v36.i8, 0);
        _Q6 = vdupq_lane_s32(*v36.i8, 1);
        _Q7 = vdupq_laneq_s32(v36, 2);
        v266 = v31 + v32;
        v267 = 3 * v13 - (v31 + v32) + result + 5;
        v268 = 2 * v13 - v31 - v32 + result + 5;
        v269 = v13 - v31 - v32 + result + 5;
        v270 = result - v266 + 5;
        v271 = v650;
        v272.i64[0] = 0x8080808080808080;
        v272.i64[1] = 0x8080808080808080;
        do
        {
          v273 = 0;
          v274 = v271;
          do
          {
            v275 = veorq_s8(*(v270 + v273 - 4), v272);
            _Q26 = vqtbl1q_s8(v275, unk_277BEE300);
            _Q27 = vqtbl1q_s8(v275, unk_277BEE310);
            _Q19 = vqtbl1q_s8(v275, unk_277BEE320);
            _Q23 = vqtbl1q_s8(veorq_s8(*(v270 + v273), v272), unk_277BEE320);
            __asm
            {
              SDOT            V28.4S, V26.16B, V5.16B
              SDOT            V28.4S, V27.16B, V6.16B
              SDOT            V28.4S, V19.16B, V7.16B
              SDOT            V26.4S, V27.16B, V5.16B
              SDOT            V26.4S, V19.16B, V6.16B
              SDOT            V26.4S, V23.16B, V7.16B
            }

            v286 = vshrn_high_n_s32(vshrn_n_s32(_Q28, 3uLL), _Q26, 3uLL);
            v287 = veorq_s8(*(v269 + v273 - 4), v272);
            _Q24 = vqtbl1q_s8(v287, unk_277BEE300);
            _Q26 = vqtbl1q_s8(v287, unk_277BEE310);
            _Q21 = vqtbl1q_s8(v287, unk_277BEE320);
            _Q23 = vqtbl1q_s8(veorq_s8(*(v269 + v273), v272), unk_277BEE320);
            __asm
            {
              SDOT            V27.4S, V24.16B, V5.16B
              SDOT            V27.4S, V26.16B, V6.16B
              SDOT            V27.4S, V21.16B, V7.16B
              SDOT            V24.4S, V26.16B, V5.16B
              SDOT            V24.4S, V21.16B, V6.16B
              SDOT            V24.4S, V23.16B, V7.16B
            }

            v298 = vshrn_high_n_s32(vshrn_n_s32(_Q27, 3uLL), _Q24, 3uLL);
            v299 = veorq_s8(*(v268 + v273 - 4), v272);
            _Q24 = vqtbl1q_s8(v299, unk_277BEE300);
            _Q25 = vqtbl1q_s8(v299, unk_277BEE310);
            _Q22 = vqtbl1q_s8(v299, unk_277BEE320);
            _Q23 = vqtbl1q_s8(veorq_s8(*(v268 + v273), v272), unk_277BEE320);
            __asm
            {
              SDOT            V26.4S, V24.16B, V5.16B
              SDOT            V26.4S, V25.16B, V6.16B
              SDOT            V26.4S, V22.16B, V7.16B
              SDOT            V24.4S, V25.16B, V5.16B
              SDOT            V24.4S, V22.16B, V6.16B
              SDOT            V24.4S, V23.16B, V7.16B
            }

            v310 = vshrn_high_n_s32(vshrn_n_s32(_Q26, 3uLL), _Q24, 3uLL);
            v311 = veorq_s8(*(v267 + v273 - 4), v272);
            _Q23 = vqtbl1q_s8(v311, unk_277BEE300);
            _Q24 = vqtbl1q_s8(v311, unk_277BEE310);
            _Q18 = vqtbl1q_s8(v311, unk_277BEE320);
            _Q20 = vqtbl1q_s8(veorq_s8(*(v267 + v273), v272), unk_277BEE320);
            __asm
            {
              SDOT            V25.4S, V23.16B, V5.16B
              SDOT            V25.4S, V24.16B, V6.16B
              SDOT            V25.4S, V18.16B, V7.16B
              SDOT            V23.4S, V24.16B, V5.16B
              SDOT            V23.4S, V18.16B, V6.16B
              SDOT            V23.4S, V20.16B, V7.16B
            }

            *v274 = v286;
            v274[16] = v298;
            v274[32] = v310;
            v274[48] = vshrn_high_n_s32(vshrn_n_s32(_Q25, 3uLL), _Q23, 3uLL);
            ++v274;
            v273 += 8;
          }

          while (v16 != v273);
          v33 = (v33 + v261);
          v271 += 64;
          LODWORD(result) = v30 - 4;
          v267 += v261;
          v268 += v261;
          v269 += v261;
          v270 += v261;
          v322 = v30 <= 8;
          v30 -= 4;
        }

        while (!v322);
        v323.i64[0] = 0x8080808080808080;
        v323.i64[1] = 0x8080808080808080;
        do
        {
          v324 = v33;
          v325 = v271;
          v326 = v16;
          do
          {
            v327 = veorq_s8(*v324, v323);
            _Q20 = vqtbl1q_s8(v327, unk_277BEE300);
            _Q21 = vqtbl1q_s8(v327, unk_277BEE310);
            _Q18 = vqtbl1q_s8(v327, unk_277BEE320);
            _Q19 = vqtbl1q_s8(veorq_s8(*(v324 + 4), v323), unk_277BEE320);
            __asm
            {
              SDOT            V22.4S, V20.16B, V5.16B
              SDOT            V22.4S, V21.16B, V6.16B
              SDOT            V22.4S, V18.16B, V7.16B
              SDOT            V20.4S, V21.16B, V5.16B
              SDOT            V20.4S, V18.16B, V6.16B
              SDOT            V20.4S, V19.16B, V7.16B
            }

            *v325++ = vshrn_high_n_s32(vshrn_n_s32(_Q22, 3uLL), _Q20, 3uLL);
            v324 = (v324 + 8);
            v326 -= 8;
          }

          while (v326);
          v33 = (v33 + v262);
          v271 += 16;
          result = (result - 1);
        }

        while (result);
      }

      else
      {
        _Q5 = vdupq_lane_s32(*v36.i8, 0);
        _Q6 = vdupq_lane_s32(*v36.i8, 1);
        _Q7 = vdupq_laneq_s32(v36, 2);
        v40 = 4 * v13;
        v41 = v17 + v29 + 3;
        v42 = 1 - (v31 + v32);
        v43 = 3 * v13 - (v31 + v32) + 1;
        v44 = 2 * v13 - v31 - v32;
        v45 = v13 - v31 - v32;
        v46 = v650;
        v47.i64[0] = 0x8080808080808080;
        v47.i64[1] = 0x8080808080808080;
        do
        {
          v48 = result + v42;
          v49 = veorq_s8(*(result + v42), v47);
          _Q22 = vqtbl1q_s8(v49, unk_277BEE300);
          _Q23 = vqtbl1q_s8(v49, unk_277BEE310);
          _Q18 = vqtbl1q_s8(v49, unk_277BEE320);
          __asm
          {
            SDOT            V24.4S, V22.16B, V5.16B
            SDOT            V24.4S, V23.16B, V6.16B
            SDOT            V24.4S, V18.16B, V7.16B
          }

          *_Q18.i8 = vshrn_n_s32(_Q24, 3uLL);
          v60 = veorq_s8(*(result + v45 + 1), v47);
          _Q22 = vqtbl1q_s8(v60, unk_277BEE300);
          _Q23 = vqtbl1q_s8(v60, unk_277BEE310);
          _Q19 = vqtbl1q_s8(v60, unk_277BEE320);
          __asm
          {
            SDOT            V24.4S, V22.16B, V5.16B
            SDOT            V24.4S, V23.16B, V6.16B
            SDOT            V24.4S, V19.16B, V7.16B
          }

          *_Q19.i8 = vshrn_n_s32(_Q24, 3uLL);
          v67 = veorq_s8(*(result + v44 + 1), v47);
          _Q22 = vqtbl1q_s8(v67, unk_277BEE300);
          _Q23 = vqtbl1q_s8(v67, unk_277BEE310);
          _Q20 = vqtbl1q_s8(v67, unk_277BEE320);
          __asm
          {
            SDOT            V24.4S, V22.16B, V5.16B
            SDOT            V24.4S, V23.16B, V6.16B
            SDOT            V24.4S, V20.16B, V7.16B
          }

          *_Q20.i8 = vshrn_n_s32(_Q24, 3uLL);
          v74 = veorq_s8(*(result + v43), v47);
          _Q22 = vqtbl1q_s8(v74, unk_277BEE300);
          _Q23 = vqtbl1q_s8(v74, unk_277BEE310);
          _Q21 = vqtbl1q_s8(v74, unk_277BEE320);
          __asm
          {
            SDOT            V24.4S, V22.16B, V5.16B
            SDOT            V24.4S, V23.16B, V6.16B
            SDOT            V24.4S, V21.16B, V7.16B
          }

          *v46 = *_Q18.i8;
          v46[32] = *_Q19.i8;
          v46[64] = *_Q20.i8;
          v46[96] = vshrn_n_s32(_Q24, 3uLL);
          v46 += 128;
          v41 -= 4;
          result += v40;
        }

        while (v41 > 8);
        v81 = (v48 + v40);
        v82 = v41 - 4;
        v83.i64[0] = 0x8080808080808080;
        v83.i64[1] = 0x8080808080808080;
        do
        {
          v84 = veorq_s8(*v81, v83);
          _Q19 = vqtbl1q_s8(v84, unk_277BEE300);
          _Q20 = vqtbl1q_s8(v84, unk_277BEE310);
          _Q18 = vqtbl1q_s8(v84, unk_277BEE320);
          __asm
          {
            SDOT            V21.4S, V19.16B, V5.16B
            SDOT            V21.4S, V20.16B, V6.16B
            SDOT            V21.4S, V18.16B, V7.16B
          }

          *v46 = vshrn_n_s32(_Q21, 3uLL);
          v81 = (v81 + v13);
          v46 += 32;
          --v82;
        }

        while (v82);
      }

      if (v16 >= 5)
      {
        v361 = v14 + 3 * v15;
        v362 = v14 + 2 * v15;
        v363 = v650;
        v364.i64[0] = 0x7F007F007F007FLL;
        v364.i64[1] = 0x7F007F007F007FLL;
        v365 = v14 + v15;
        do
        {
          v366 = 0;
          v367 = *v363;
          v368 = v363[16];
          v369 = v363[32];
          v370 = v363[48];
          v371 = v363[64];
          v372 = v363[80];
          v373 = v363[96];
          v374 = v363[112];
          v375 = v363[128];
          v376 = v363[144];
          v377 = 176;
          v378 = v17;
          v379 = v363[160];
          do
          {
            v380 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v369.i8, *v34.i8, 1), *v368.i8, *v34.i8, 0), *v370.i8, *v34.i8, 2), *v371.i8, *v34.i8, 3), *v372.i8, v34, 4), *v373.i8, v34, 5), *v374.i8, v34, 6);
            v381 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v370.i8, *v34.i8, 1), *v369.i8, *v34.i8, 0), *v371.i8, *v34.i8, 2), *v372.i8, *v34.i8, 3), *v373.i8, v34, 4), *v374.i8, v34, 5);
            v382 = vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v369, *v34.i8, 1), v368, *v34.i8, 0), v370, *v34.i8, 2), v371, *v34.i8, 3), v372, v34, 4), v373, v34, 5), v374, v34, 6);
            v383 = vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v370, *v34.i8, 1), v369, *v34.i8, 0), v371, *v34.i8, 2), v372, *v34.i8, 3), v373, v34, 4), v374, v34, 5);
            v384 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v368.i8, *v34.i8, 1), *v367.i8, *v34.i8, 0), *v369.i8, *v34.i8, 2), *v370.i8, *v34.i8, 3), *v371.i8, v34, 4), *v372.i8, v34, 5), *v373.i8, v34, 6), *v374.i8, v34, 7);
            v385 = vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v371.i8, *v34.i8, 1), *v370.i8, *v34.i8, 0), *v372.i8, *v34.i8, 2), *v373.i8, *v34.i8, 3), *v374.i8, v34, 4);
            v386 = vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v368, *v34.i8, 1), v367, *v34.i8, 0), v369, *v34.i8, 2), v370, *v34.i8, 3), v371, v34, 4), v372, v34, 5), v373, v34, 6), v374, v34, 7);
            v387 = vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v371, *v34.i8, 1), v370, *v34.i8, 0), v372, *v34.i8, 2), v373, *v34.i8, 3), v374, v34, 4);
            v370 = v374;
            v374 = v363[v377];
            v388 = vmlal_lane_s16(v384, *v375.i8, v35, 0);
            v389 = vmlal_laneq_s16(v380, *v375.i8, v34, 7);
            v390 = vmlal_high_laneq_s16(v382, v375, v34, 7);
            v391 = vmlal_laneq_s16(v381, *v375.i8, v34, 6);
            v392 = vmlal_high_laneq_s16(v383, v375, v34, 6);
            v393 = vmlal_high_lane_s16(v386, v375, v35, 0);
            v394 = vmlal_laneq_s16(v385, *v375.i8, v34, 5);
            v395 = vmlal_high_laneq_s16(v387, v375, v34, 5);
            v367 = v371;
            v371 = v375;
            v375 = v363[v377 + 16];
            v396 = vmlal_lane_s16(v388, *v376.i8, v35, 1);
            v397 = vmlal_lane_s16(v389, *v376.i8, v35, 0);
            v398 = vmlal_high_lane_s16(v390, v376, v35, 0);
            v399 = vmlal_laneq_s16(v391, *v376.i8, v34, 7);
            v400 = vmlal_high_laneq_s16(v392, v376, v34, 7);
            v401 = vmlal_laneq_s16(v394, *v376.i8, v34, 6);
            v402 = vmlal_high_lane_s16(v393, v376, v35, 1);
            v403 = vmlal_high_laneq_s16(v395, v376, v34, 6);
            v368 = v372;
            v372 = v376;
            v376 = v363[v377 + 32];
            v404 = vmlal_lane_s16(v399, *v379.i8, v35, 0);
            v405 = vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_lane_s16(vmlal_lane_s16(v396, *v379.i8, v35, 2), *v374.i8, v35, 3), 0xBuLL), vmlal_high_lane_s16(vmlal_high_lane_s16(v402, v379, v35, 2), v374, v35, 3), 0xBuLL);
            v406 = vmlal_high_lane_s16(v400, v379, v35, 0);
            v407 = vmlal_laneq_s16(v401, *v379.i8, v34, 7);
            v408 = vmlal_high_laneq_s16(v403, v379, v34, 7);
            v369 = v373;
            v373 = v379;
            v409 = vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(v397, *v379.i8, v35, 1), *v374.i8, v35, 2), *v375.i8, v35, 3), 0xBuLL), vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(v398, v379, v35, 1), v374, v35, 2), v375, v35, 3), 0xBuLL);
            v379 = v363[v377 + 48];
            *&v14[v366 / 4] = vqmovun_s16(vaddq_s16(v405, v364));
            *&v365[v366] = vqmovun_s16(vaddq_s16(v409, v364));
            *&v362[v366] = vqmovun_s16(vaddq_s16(vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(v404, *v374.i8, v35, 1), *v375.i8, v35, 2), *v376.i8, v35, 3), 0xBuLL), vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(v406, v374, v35, 1), v375, v35, 2), v376, v35, 3), 0xBuLL), v364));
            v377 += 64;
            *&v361[v366] = vqmovun_s16(vaddq_s16(vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(v407, *v374.i8, v35, 0), *v375.i8, v35, 1), *v376.i8, v35, 2), *v379.i8, v35, 3), 0xBuLL), vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(v408, v374, v35, 0), v375, v35, 1), v376, v35, 2), v379, v35, 3), 0xBuLL), v364));
            v366 += 4 * v15;
            v378 -= 4;
          }

          while (v378);
          ++v363;
          v14 += 2;
          v361 += 8;
          v362 += 8;
          v365 += 8;
          LODWORD(v16) = v16 - 8;
        }

        while (v16);
      }

      else
      {
        v338 = *&v650[0];
        v339 = v651;
        v340 = v652;
        v341 = v653[0];
        v342 = v654;
        v343 = v653[32];
        v344 = v653[64];
        v345 = v653[96];
        v346 = v653[128];
        v347 = 2 * v15;
        v348 = v653[160];
        v349 = v653[192];
        v350.i64[0] = 0x7F007F007F007FLL;
        v350.i64[1] = 0x7F007F007F007FLL;
        v351 = v653[224];
        do
        {
          v352 = vmlal_lane_s16(vmull_lane_s16(v339, *v34.i8, 1), v338, *v34.i8, 0);
          v338 = v343;
          v353 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(v340, *v34.i8, 1), v339, *v34.i8, 0), v341, *v34.i8, 2), v343, *v34.i8, 3), v344, v34, 4), v345, v34, 5);
          v354 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(v352, v340, *v34.i8, 2), v341, *v34.i8, 3), v343, v34, 4), v344, v34, 5), v345, v34, 6);
          v355 = vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(v341, *v34.i8, 1), v340, *v34.i8, 0), v343, *v34.i8, 2), v344, *v34.i8, 3), v345, v34, 4);
          v356 = vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(v343, *v34.i8, 1), v341, *v34.i8, 0), v344, *v34.i8, 2), v345, *v34.i8, 3);
          v340 = v345;
          v339 = v344;
          v345 = v351;
          v344 = v349;
          v343 = v348;
          v348 = v342[32];
          v349 = v342[64];
          v351 = v342[96];
          v357 = vmlal_laneq_s16(v354, v346, v34, 7);
          v358 = vmlal_laneq_s16(v353, v346, v34, 6);
          v359 = vmlal_laneq_s16(v355, v346, v34, 5);
          v360 = vmlal_laneq_s16(v356, v346, v34, 4);
          v341 = v346;
          v346 = *v342;
          *v357.i8 = vqmovun_s16(vaddq_s16(vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(v357, v343, v35, 0), v344, v35, 1), v345, v35, 2), *v342, v35, 3), 0xBuLL), vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_laneq_s16(v358, v343, v34, 7), v344, v35, 0), v345, v35, 1), *v342, v35, 2), v348, v35, 3), 0xBuLL), v350));
          *v358.i8 = vqmovun_s16(vaddq_s16(vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_laneq_s16(vmlal_laneq_s16(v359, v343, v34, 6), v344, v34, 7), v345, v35, 0), *v342, v35, 1), v348, v35, 2), v349, v35, 3), 0xBuLL), vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v360, v343, v34, 5), v344, v34, 6), v345, v34, 7), *v342, v35, 0), v348, v35, 1), v349, v35, 2), v351, v35, 3), 0xBuLL), v350));
          *v14 = v357.i32[0];
          *(v14 + v15) = v357.i32[1];
          *(v14 + v347) = v358.i32[0];
          *(v14 + v347 + v15) = v358.i32[1];
          v342 += 128;
          v14 += v15;
          LODWORD(v17) = v17 - 4;
        }

        while (v17);
      }
    }
  }

  return result;
}

_OWORD *sub_277A3CA94(_OWORD *result, _DWORD *a2, int a3, int a4, int a5, int16x8_t a6)
{
  if (a4 >= 5)
  {
    v26 = a2 + 3 * a3;
    v27 = a2 + 2 * a3;
    v28.i64[0] = 0x7F007F007F007FLL;
    v28.i64[1] = 0x7F007F007F007FLL;
    v29 = a2 + a3;
    do
    {
      v30 = 0;
      v31 = *result;
      v32 = *(result + 16);
      v33 = *(result + 32);
      v34 = *(result + 48);
      v35 = 80;
      v36 = a5;
      v37 = *(result + 64);
      do
      {
        v38 = vmull_lane_s16(*v32.i8, *a6.i8, 2);
        v39 = vmull_high_lane_s16(v32, *a6.i8, 2);
        v40 = vmlal_lane_s16(vmull_lane_s16(*v33.i8, *a6.i8, 2), *v32.i8, *a6.i8, 1);
        v41 = vmlal_high_lane_s16(vmull_high_lane_s16(v33, *a6.i8, 2), v32, *a6.i8, 1);
        v32 = result[v35];
        v42 = vmlal_lane_s16(vmlal_lane_s16(v38, *v31.i8, *a6.i8, 1), *v33.i8, *a6.i8, 3);
        v43 = vmlal_high_lane_s16(vmlal_high_lane_s16(v39, v31, *a6.i8, 1), v33, *a6.i8, 3);
        v44 = vmlal_lane_s16(vmull_lane_s16(*v34.i8, *a6.i8, 2), *v33.i8, *a6.i8, 1);
        v45 = vmlal_high_lane_s16(vmull_high_lane_s16(v34, *a6.i8, 2), v33, *a6.i8, 1);
        v33 = result[v35 + 16];
        v46 = vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v42, *v34.i8, a6, 4), *v37.i8, a6, 5), *v32.i8, a6, 6), 0xBuLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(v43, v34, a6, 4), v37, a6, 5), v32, a6, 6), 0xBuLL);
        v47 = vmlal_lane_s16(v40, *v34.i8, *a6.i8, 3);
        v48 = vmlal_high_lane_s16(v41, v34, *a6.i8, 3);
        v49 = vmlal_lane_s16(vmull_lane_s16(*v37.i8, *a6.i8, 2), *v34.i8, *a6.i8, 1);
        v50 = vmlal_high_lane_s16(vmull_high_lane_s16(v37, *a6.i8, 2), v34, *a6.i8, 1);
        v34 = result[v35 + 32];
        v51 = vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v47, *v37.i8, a6, 4), *v32.i8, a6, 5), *v33.i8, a6, 6), 0xBuLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(v48, v37, a6, 4), v32, a6, 5), v33, a6, 6), 0xBuLL);
        v52 = vmlal_lane_s16(v44, *v37.i8, *a6.i8, 3);
        v53 = vmlal_high_lane_s16(v45, v37, *a6.i8, 3);
        v31 = v37;
        v37 = result[v35 + 48];
        *&a2[v30 / 4] = vqmovun_s16(vaddq_s16(v46, v28));
        *&v29[v30] = vqmovun_s16(vaddq_s16(v51, v28));
        *&v27[v30] = vqmovun_s16(vaddq_s16(vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v52, *v32.i8, a6, 4), *v33.i8, a6, 5), *v34.i8, a6, 6), 0xBuLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(v53, v32, a6, 4), v33, a6, 5), v34, a6, 6), 0xBuLL), v28));
        *&v26[v30] = vqmovun_s16(vaddq_s16(vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(v49, *v32.i8, *a6.i8, 3), *v33.i8, a6, 4), *v34.i8, a6, 5), *v37.i8, a6, 6), 0xBuLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(v50, v32, *a6.i8, 3), v33, a6, 4), v34, a6, 5), v37, a6, 6), 0xBuLL), v28));
        v35 += 64;
        v30 += 4 * a3;
        v36 -= 4;
      }

      while (v36);
      ++result;
      a2 += 2;
      v26 += 8;
      v27 += 8;
      v29 += 8;
      a4 -= 8;
    }

    while (a4);
  }

  else
  {
    v6 = *result;
    v7 = result[16];
    v8 = result[32];
    v9 = result[48];
    v10 = (result + 80);
    v11 = result[64];
    v12 = 2 * a3;
    v13.i64[0] = 0x7F007F007F007FLL;
    v13.i64[1] = 0x7F007F007F007FLL;
    do
    {
      v14 = vmlal_lane_s16(vmull_lane_s16(v7, *a6.i8, 2), v6, *a6.i8, 1);
      v6 = v11;
      v15 = vmlal_lane_s16(vmull_lane_s16(v8, *a6.i8, 2), v7, *a6.i8, 1);
      v7 = *v10;
      v16 = vmlal_lane_s16(v14, v8, *a6.i8, 3);
      v17 = vmlal_lane_s16(vmull_lane_s16(v9, *a6.i8, 2), v8, *a6.i8, 1);
      v8 = v10[32];
      v18 = vmlal_laneq_s16(v16, v9, a6, 4);
      v19 = vmlal_lane_s16(v15, v9, *a6.i8, 3);
      v20 = vmlal_lane_s16(vmull_lane_s16(v11, *a6.i8, 2), v9, *a6.i8, 1);
      v9 = v10[64];
      v21 = vmlal_laneq_s16(v18, v11, a6, 5);
      v22 = vmlal_laneq_s16(v19, v11, a6, 4);
      v23 = vmlal_lane_s16(v17, v11, *a6.i8, 3);
      v11 = v10[96];
      *v21.i8 = vqmovun_s16(vaddq_s16(vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_laneq_s16(v21, *v10, a6, 6), 0xBuLL), vmlal_laneq_s16(vmlal_laneq_s16(v22, *v10, a6, 5), v8, a6, 6), 0xBuLL), v13));
      v24 = vaddq_s16(vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v23, *v10, a6, 4), v8, a6, 5), v9, a6, 6), 0xBuLL), vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(v20, *v10, *a6.i8, 3), v8, a6, 4), v9, a6, 5), v11, a6, 6), 0xBuLL), v13);
      *a2 = v21.i32[0];
      *(a2 + a3) = v21.i32[1];
      *v21.i8 = vqmovun_s16(v24);
      *(a2 + v12) = v21.i32[0];
      v25 = (a2 + v12 + a3);
      v10 += 128;
      a2 += a3;
      *v25 = v21.i32[1];
      a5 -= 4;
    }

    while (a5);
  }

  return result;
}

_OWORD *sub_277A3CD28(_OWORD *result, _DWORD *a2, int a3, int a4, int a5, int16x8_t a6)
{
  if (a4 >= 5)
  {
    v32 = a2 + 3 * a3;
    v33 = a2 + 2 * a3;
    v34.i64[0] = 0x7F007F007F007FLL;
    v34.i64[1] = 0x7F007F007F007FLL;
    v35 = a2 + a3;
    do
    {
      v36 = 0;
      v37 = *result;
      v38 = *(result + 16);
      v39 = *(result + 32);
      v40 = *(result + 48);
      v41 = *(result + 64);
      v42 = *(result + 80);
      v43 = 112;
      v44 = a5;
      v45 = *(result + 96);
      do
      {
        v46 = vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v38.i8, *a6.i8, 1), *v37.i8, *a6.i8, 0), *v39.i8, *a6.i8, 2), *v40.i8, *a6.i8, 3);
        v47 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v38, *a6.i8, 1), v37, *a6.i8, 0), v39, *a6.i8, 2), v40, *a6.i8, 3);
        v48 = vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v39.i8, *a6.i8, 1), *v38.i8, *a6.i8, 0), *v40.i8, *a6.i8, 2);
        v49 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v39, *a6.i8, 1), v38, *a6.i8, 0), v40, *a6.i8, 2);
        v50 = vmull_lane_s16(*v40.i8, *a6.i8, 1);
        v51 = vmull_high_lane_s16(v40, *a6.i8, 1);
        v52 = vmlal_lane_s16(vmull_lane_s16(*v41.i8, *a6.i8, 1), *v40.i8, *a6.i8, 0);
        v53 = vmlal_high_lane_s16(vmull_high_lane_s16(v41, *a6.i8, 1), v40, *a6.i8, 0);
        v40 = result[v43];
        v54 = vmlal_laneq_s16(v46, *v41.i8, a6, 4);
        v55 = vmlal_high_laneq_s16(v47, v41, a6, 4);
        v56 = vmlal_lane_s16(v48, *v41.i8, *a6.i8, 3);
        v57 = vmlal_high_lane_s16(v49, v41, *a6.i8, 3);
        v58 = vmlal_lane_s16(vmlal_lane_s16(v50, *v39.i8, *a6.i8, 0), *v41.i8, *a6.i8, 2);
        v59 = vmlal_high_lane_s16(vmlal_high_lane_s16(v51, v39, *a6.i8, 0), v41, *a6.i8, 2);
        v37 = v41;
        v41 = result[v43 + 16];
        v60 = vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v54, *v42.i8, a6, 5), *v45.i8, a6, 6), *v40.i8, a6, 7), 0xBuLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(v55, v42, a6, 5), v45, a6, 6), v40, a6, 7), 0xBuLL);
        v61 = vmlal_laneq_s16(v56, *v42.i8, a6, 4);
        v62 = vmlal_high_laneq_s16(v57, v42, a6, 4);
        v63 = vmlal_lane_s16(v58, *v42.i8, *a6.i8, 3);
        v64 = vmlal_high_lane_s16(v59, v42, *a6.i8, 3);
        v65 = vmlal_lane_s16(v52, *v42.i8, *a6.i8, 2);
        v66 = vmlal_high_lane_s16(v53, v42, *a6.i8, 2);
        v38 = v42;
        v42 = result[v43 + 32];
        v67 = vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v61, *v45.i8, a6, 5), *v40.i8, a6, 6), *v41.i8, a6, 7), 0xBuLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(v62, v45, a6, 5), v40, a6, 6), v41, a6, 7), 0xBuLL);
        v68 = vmlal_laneq_s16(v63, *v45.i8, a6, 4);
        v69 = vmlal_high_laneq_s16(v64, v45, a6, 4);
        v70 = vmlal_lane_s16(v65, *v45.i8, *a6.i8, 3);
        v71 = vmlal_high_lane_s16(v66, v45, *a6.i8, 3);
        v39 = v45;
        v45 = result[v43 + 48];
        *&a2[v36 / 4] = vqmovun_s16(vaddq_s16(v60, v34));
        *&v35[v36] = vqmovun_s16(vaddq_s16(v67, v34));
        *&v33[v36] = vqmovun_s16(vaddq_s16(vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v68, *v40.i8, a6, 5), *v41.i8, a6, 6), *v42.i8, a6, 7), 0xBuLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(v69, v40, a6, 5), v41, a6, 6), v42, a6, 7), 0xBuLL), v34));
        *&v32[v36] = vqmovun_s16(vaddq_s16(vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v70, *v40.i8, a6, 4), *v41.i8, a6, 5), *v42.i8, a6, 6), *v45.i8, a6, 7), 0xBuLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(v71, v40, a6, 4), v41, a6, 5), v42, a6, 6), v45, a6, 7), 0xBuLL), v34));
        v43 += 64;
        v36 += 4 * a3;
        v44 -= 4;
      }

      while (v44);
      ++result;
      a2 += 2;
      v32 += 8;
      v33 += 8;
      v35 += 8;
      a4 -= 8;
    }

    while (a4);
  }

  else
  {
    v6 = *result;
    v7 = result[16];
    v8 = result[32];
    v9 = result[48];
    v10 = (result + 112);
    v11 = result[64];
    v12 = result[80];
    v13 = result[96];
    v14 = 2 * a3;
    v15.i64[0] = 0x7F007F007F007FLL;
    v15.i64[1] = 0x7F007F007F007FLL;
    do
    {
      v16 = vmlal_lane_s16(vmull_lane_s16(v7, *a6.i8, 1), v6, *a6.i8, 0);
      v6 = v11;
      v17 = vmlal_lane_s16(vmull_lane_s16(v9, *a6.i8, 1), v8, *a6.i8, 0);
      v18 = vmlal_lane_s16(vmlal_lane_s16(v16, v8, *a6.i8, 2), v9, *a6.i8, 3);
      v19 = vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(v8, *a6.i8, 1), v7, *a6.i8, 0), v9, *a6.i8, 2);
      v20 = vmlal_lane_s16(vmull_lane_s16(v11, *a6.i8, 1), v9, *a6.i8, 0);
      v9 = *v10;
      v21 = vmlal_laneq_s16(v18, v11, a6, 4);
      v22 = vmlal_lane_s16(v19, v11, *a6.i8, 3);
      v23 = vmlal_lane_s16(v17, v11, *a6.i8, 2);
      v11 = v10[32];
      v24 = vmlal_laneq_s16(v21, v12, a6, 5);
      v25 = vmlal_laneq_s16(v22, v12, a6, 4);
      v26 = vmlal_lane_s16(v23, v12, *a6.i8, 3);
      v27 = vmlal_lane_s16(v20, v12, *a6.i8, 2);
      v7 = v12;
      v12 = v10[64];
      v28 = vmlal_laneq_s16(v24, v13, a6, 6);
      v29 = vmlal_laneq_s16(v25, v13, a6, 5);
      v30 = vmlal_laneq_s16(v26, v13, a6, 4);
      v31 = vmlal_lane_s16(v27, v13, *a6.i8, 3);
      v8 = v13;
      v13 = v10[96];
      *v28.i8 = vqmovun_s16(vaddq_s16(vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_laneq_s16(v28, *v10, a6, 7), 0xBuLL), vmlal_laneq_s16(vmlal_laneq_s16(v29, *v10, a6, 6), v11, a6, 7), 0xBuLL), v15));
      *v29.i8 = vqmovun_s16(vaddq_s16(vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v30, *v10, a6, 5), v11, a6, 6), v12, a6, 7), 0xBuLL), vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v31, *v10, a6, 4), v11, a6, 5), v12, a6, 6), v13, a6, 7), 0xBuLL), v15));
      *a2 = v28.i32[0];
      *(a2 + a3) = v28.i32[1];
      *(a2 + v14) = v29.i32[0];
      *(a2 + v14 + a3) = v29.i32[1];
      v10 += 128;
      a2 += a3;
      a5 -= 4;
    }

    while (a5);
  }

  return result;
}

unint64_t sub_277A3D03C(uint64_t a1, int a2, int a3, int a4, int a5, int a6, _DWORD *a7)
{
  v9 = byte_277C3CAE8[a6];
  v10 = byte_277C3CAFE[a6];
  v11 = a1 + 2608 * a2 + 432;
  v12 = *(a1 + 8352);
  if (v12 < 0)
  {
    v13 = (v12 >> (*(a1 + 2608 * a2 + 440) + 3)) - 4 * a3 + byte_277C3CAE8[a5];
    if (v13 >= v9)
    {
      v14 = byte_277C3CAE8[a6];
    }

    else
    {
      v14 = (v12 >> (*(a1 + 2608 * a2 + 440) + 3)) - 4 * a3 + byte_277C3CAE8[a5];
    }

    if (v13 >= 0)
    {
      v9 = v14;
    }

    else
    {
      v9 = 0;
    }
  }

  v15 = *(a1 + 8344);
  v16 = byte_277C3CAFE[a5];
  if (v15 < 0)
  {
    v17 = (v15 >> (*(v11 + 4) + 3)) + v16 - 4 * a4;
    if (v17 >= v10)
    {
      v18 = byte_277C3CAFE[a6];
    }

    else
    {
      v18 = (v15 >> (*(v11 + 4) + 3)) + v16 - 4 * a4;
    }

    if (v17 >= 0)
    {
      v10 = v18;
    }

    else
    {
      v10 = 0;
    }
  }

  v19 = (*(a1 + 136 * a2) + 8 * (a4 + v16 * a3));
  if (v10 == 4 && v9 == 4)
  {
    v20 = vaddlvq_u32(vmlal_s16(vmlal_s16(vmlal_s16(vmull_s16(*(v19 + 2 * v16), *(v19 + 2 * v16)), *v19, *v19), *(v19 + 4 * v16), *(v19 + 4 * v16)), *(v19 + 6 * v16), *(v19 + 6 * v16)));
    goto LABEL_18;
  }

  if (v10 == 4 && (v9 & 3) == 0)
  {
    v23 = sub_277A0791C(v19, v16, v9);
LABEL_27:
    v20 = v23;
    goto LABEL_18;
  }

  if (!(v9 & 3 | v10 & 7))
  {
    v23 = sub_277A0797C(v19, v16, v10, v9);
    goto LABEL_27;
  }

  if (v9 < 1)
  {
    v20 = 0;
  }

  else
  {
    v20 = 0;
    for (i = 0; i != v9; ++i)
    {
      if (v10 >= 1)
      {
        for (j = 0; j != v10; ++j)
        {
          v20 += (v19->i16[j] * v19->i16[j]);
        }
      }

      v19 = (v19 + 2 * v16);
    }
  }

LABEL_18:
  if (a7)
  {
    LODWORD(v21) = -1;
    if (v10 >= 1 && v9 >= 1)
    {
      v21 = (v20 << 8) / (v10 * v9);
    }

    *a7 = v21;
  }

  return v20;
}

uint64_t sub_277A3D20C(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, unsigned int a5, unsigned int a6)
{
  v98 = *MEMORY[0x277D85DE8];
  v9 = **(a2 + 8280);
  v10 = (*(v9 + 167) & 0x80) != 0 || v9[16] > 0;
  v67 = v10;
  if (*(a2 + 151024) != 2 || (v11 = *v9) == 0)
  {
    v21 = 0;
    goto LABEL_27;
  }

  v12 = a6;
  v13 = LOBYTE(dword_277C3BEE4[v12]) > **(a2 + 8544);
  v14 = LOBYTE(dword_277C3BF30[v12]) > **(a2 + 8552);
  if (a6)
  {
    v15 = byte_277C3CAFE[v11];
    v16 = byte_277C3CAE8[v11];
    if (v15 <= v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = v15;
    }

    v18 = 63;
    if (v17 <= 31)
    {
      if (v17 == 8)
      {
        v20 = 0;
        v19 = 1;
        goto LABEL_21;
      }

      if (v17 == 16)
      {
        v19 = 2;
        v20 = 1;
        goto LABEL_21;
      }
    }

    else
    {
      v19 = 4;
      v20 = 1;
      if (v17 == 128 || v17 == 64)
      {
LABEL_21:
        if (byte_277C3BE83[a6] == v19)
        {
          v23 = 0;
        }

        else
        {
          v23 = v20;
        }

        v18 = (3 * (v23 - 2 * v19) + 24);
        goto LABEL_25;
      }

      if (v17 == 32)
      {
        v19 = 3;
        goto LABEL_21;
      }
    }

LABEL_25:
    v22 = v14 + v13 + v18;
    goto LABEL_26;
  }

  v22 = 0;
LABEL_26:
  v21 = *(a2 + 8 * v22 + 36232);
LABEL_27:
  v24 = *(a2 + 8304);
  v25 = *(a2 + 8296);
  if (v24)
  {
    v24 = *(v24 + 144);
  }

  if (v25)
  {
    v25 = *(v25 + 144);
  }

  v26 = (a2 + 8 * (v25 + v24) + 35968);
  v27 = *v26;
  v28 = *(a2 + 16920);
  v66 = v26[1];
  v29 = v28 * v66 + 256;
  v64 = v27 + v21;
  v65 = v21;
  v30 = v28 * (v27 + v21) + 256;
  v9[145] = a6;
  v31 = byte_277C3CAFE[a5];
  v32 = *(a2 + 8344);
  v80 = v31;
  if (v32 < 0)
  {
    v31 += v32 >> (*(a2 + 436) + 3);
  }

  v63 = v9;
  v33 = *(a2 + 8352);
  v34 = byte_277C3CAE8[a5];
  if (v33 < 0)
  {
    v34 += v33 >> (*(a2 + 440) + 3);
  }

  v35 = *&byte_277BFDBA0[4 * a6];
  v36 = *&byte_277BFDB54[4 * a6];
  v37 = v34 >> 2;
  v95 = 0u;
  v96 = 0u;
  v97 = 0;
  memset(v94, 0, sizeof(v94));
  memset(v93, 0, sizeof(v93));
  v91 = a1;
  v92 = a2;
  if (v30 >> 9 >= v29 >> 9)
  {
    v38 = v29 >> 9;
  }

  else
  {
    v38 = v30 >> 9;
  }

  *(&v95 + 1) = v38;
  *&v96 = a4;
  memset(&v94[2] + 8, 0, 24);
  LOBYTE(v95) = 1;
  v39 = byte_277C36D60[a5];
  v40 = *(a2 + 552);
  memcpy(v93, *(a2 + 544), byte_277C3F990[a5]);
  memcpy(v94, v40, v39);
  v41 = HIDWORD(v96) == 0;
  v71 = v37;
  if (v37 >= 1)
  {
    v79 = a5;
    if (!HIDWORD(v96))
    {
      v42 = 0;
      v43 = 0;
      LODWORD(v44) = 0;
      v76 = v36;
      __len = v35;
      v83 = v31 >> 2;
      v70 = v36;
      v69 = 4 * v80 * v36;
      v78 = v35;
      v75 = v36 * v35;
      v74 = 4 * v35;
      v45 = 0uLL;
      v46.f64[0] = NAN;
      v46.f64[1] = NAN;
      v73 = vnegq_f64(v46);
      do
      {
        if (v83 >= 1)
        {
          v47 = 0;
          v48 = 16 * v44;
          v44 = v44;
          v72 = v42;
          while (1)
          {
            v90 = v45;
            v89 = v45;
            BYTE8(v90) = 1;
            v88 = 0;
            if (DWORD2(v96))
            {
              HIDWORD(v96) = 1;
LABEL_61:
              v42 = v72;
              goto LABEL_63;
            }

            v86 = 0;
            sub_277A3D9E4(v79, a6, 0, v93 + v47, v94 + v43, &v86);
            memset(v85, 0, sizeof(v85));
            memset(v84, 0, sizeof(v84));
            sub_277A91270(a1 + 245616, a2, a6, 0, v85);
            *v84 = ((0x61E18uLL >> a6) & 1) + ((0x1810uLL >> a6) & 1);
            v84[4] = a6;
            *&v84[28] = 0x100000000;
            *&v84[8] = 0;
            *&v84[16] = 0;
            sub_277ADCA70(*a2 + 2 * v42, *(a2 + 24) + 4 * v48, v80, v85);
            sub_277A91114(a2, 0, v44, v85, v84);
            v49 = LOBYTE(v85[0]);
            v87 = sub_277B316E4();
            sub_277A3DF98(a2, 0, v44, a6, *&v84[8], *(&off_27A722620 + 32 * BYTE1(v85[0]) + 2 * v49), &v89, &v90);
            v50 = *(*(a2 + 32) + 2 * v44) == 0;
            if (LODWORD(v94[2]) == 0x7FFFFFFF || v87 == 0x7FFFFFFF)
            {
              *(&v94[2] + 8) = v73;
              *&v94[2] = 0x7FFFFFFFLL;
              *(&v94[3] + 1) = 0x7FFFFFFFFFFFFFFFLL;
              LOBYTE(v95) = 0;
            }

            else
            {
              v51 = SLODWORD(v94[2]) + v87;
              if (v51 >= 0x7FFFFFFF)
              {
                LODWORD(v51) = 0x7FFFFFFF;
              }

              LODWORD(v94[2]) = v51;
              if (!DWORD1(v94[2]))
              {
                DWORD1(v94[2]) = v88;
              }

              *(&v94[2] + 1) += v89;
              if (*(&v94[3] + 1) != 0x7FFFFFFFFFFFFFFFLL && v90 != 0x7FFFFFFFFFFFFFFFLL)
              {
                *(&v94[3] + 1) += v90;
              }

              LOBYTE(v95) = v95 & v50 & BYTE8(v90);
            }

            v52 = ((*(a2 + 16920) * v87 + 256) >> 9) + (v89 << 7);
            if (v52 >= v90 << 7)
            {
              v52 = v90 << 7;
            }

            *(&v95 + 1) += v52;
            if (*(&v95 + 1) > a4)
            {
              break;
            }

            v53 = *(*(a2 + 40) + v44);
            memset(v93 + v47, v53, __len);
            memset(v94 + v43, v53, v76);
            v44 += v75;
            v47 += v78;
            v42 += v74;
            v48 += 16 * v75;
            v45 = 0uLL;
            if (v83 <= v47)
            {
              goto LABEL_61;
            }
          }

          DWORD2(v96) = 1;
          v42 = v72;
          v45 = 0uLL;
        }

LABEL_63:
        v43 += v70;
        v41 = HIDWORD(v96) == 0;
        if (v71 <= v43)
        {
          break;
        }

        v42 += v69;
      }

      while (!HIDWORD(v96));
    }
  }

  if (!v41)
  {
    v54.f64[0] = NAN;
    v54.f64[1] = NAN;
    *(&v94[2] + 8) = vnegq_f64(v54);
    *&v94[2] = 0x7FFFFFFFLL;
    *(&v94[3] + 1) = 0x7FFFFFFFFFFFFFFFLL;
    LOBYTE(v95) = 0;
  }

  v55 = v94[3];
  *a3 = v94[2];
  *(a3 + 1) = v55;
  *(a3 + 4) = v95;
  v56 = *a3;
  if (*a3 == 0x7FFFFFFF)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v58 = *(a3 + 32);
  if (*(a3 + 32) != 0 && v67)
  {
    return ((*(a2 + 16920) * v66 + 256) >> 9) + (*(a3 + 3) << 7);
  }

  v59 = *(a2 + 16920);
  result = ((v59 * (v64 + v56) + 256) >> 9) + (*(a3 + 1) << 7);
  *a3 = v56 + v65;
  v60 = !v67;
  if (v58)
  {
    v60 = 1;
  }

  if ((v60 & 1) == 0 && !*(a2 + 4 * (*(v63 + 167) & 7) + 11108))
  {
    v61 = *(a3 + 3);
    v62 = ((v59 * v66 + 256) >> 9) + (v61 << 7);
    if (v62 <= result)
    {
      *a3 = 0;
      *(a3 + 1) = v61;
      *(a3 + 32) = 1;
      return v62;
    }
  }

  return result;
}