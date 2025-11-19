uint64_t NewMB(void *a1)
{
  v2 = MEM_NewClear(24);
  *a1 = v2;
  if (v2)
  {
    **a1 = MEM_New(256);
    if (**a1)
    {
      return 0;
    }

    else
    {
      return -108;
    }
  }

  else
  {
    return -108;
  }
}

uint64_t DelMB(void ***a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*v2)
    {
      MEM_Dispose(*v2);
      **a1 = 0;
      v2 = *a1;
    }

    MEM_Dispose(v2);
    *a1 = 0;
  }

  return 0;
}

uint64_t FillMB(uint64_t result, unsigned __int8 *a2, unsigned int a3)
{
  for (i = 0; i != 16; ++i)
  {
    for (j = 0; j != 16; ++j)
    {
      *(result + j) = a2[j];
    }

    result += 16;
    a2 += a3;
  }

  return result;
}

unsigned __int8 *Reconstruct_8x8(unsigned __int8 *result, int a2, unsigned __int8 *a3, int a4, int16x4_t *a5, int a6, int a7, int a8, double a9, int32x4_t a10, int32x4_t a11, int a12, unsigned __int8 *a13)
{
  v15 = result;
  v22 = *MEMORY[0x277D85DE8];
  if (a8)
  {
    Get_QuarterPel_MSFT(a3, a4, a6, a7, a12, a13, 8, v21);
    result = AddResidueTo_8x8(a5, v21, v15, a2, a13);
LABEL_3:
    v16 = *MEMORY[0x277D85DE8];
    return result;
  }

  if (a7 | a6)
  {
    if (a6 != 1 || a7)
    {
      if (a6 || a7 != 1)
      {
        if (a6 != 1 || a7 != 1)
        {
          goto LABEL_3;
        }

        v20 = *MEMORY[0x277D85DE8];

        return MC_2H_2V(result, a2, a3, a4, a5, 2 - a12, a13);
      }

      else
      {
        v19 = *MEMORY[0x277D85DE8];

        return MC_1H_2V(result, a2, a3, a4, a5, 1 - a12, a13, a9, a10, a11);
      }
    }

    else
    {
      v17 = *MEMORY[0x277D85DE8];

      return MC_2H_1V(result, a2, a3, a4, a5, 1 - a12, a13);
    }
  }

  else
  {
    v18 = *MEMORY[0x277D85DE8];

    return MC_1H_1V(result, a2, a3, a4, a5, a13);
  }
}

uint64_t MC_1H_1V(unsigned __int8 *a1, int a2, const unsigned __int8 *a3, int a4, const __int16 *a5, const unsigned __int8 *a6)
{
  v6 = a3 + 3;
  v7 = a1 + 3;
  for (i = 9; i > 1; --i)
  {
    v9 = a6[*(v6 - 2) + a5[1]];
    v10 = a6[*(v6 - 1) + a5[2]];
    v11 = a6[*v6 + a5[3]];
    *(v7 - 3) = a6[*(v6 - 3) + *a5];
    *(v7 - 2) = v9;
    *(v7 - 1) = v10;
    *v7 = v11;
    result = a5[6];
    v13 = a6[v6[2] + a5[5]];
    v14 = a6[v6[3] + result];
    v15 = a6[v6[4] + a5[7]];
    v7[1] = a6[v6[1] + a5[4]];
    v7[2] = v13;
    v7[3] = v14;
    v7[4] = v15;
    a5 += 8;
    v6 += a4;
    v7 += a2;
  }

  return result;
}

uint64_t MC_2H_1V(uint64_t result, int a2, const unsigned __int8 *a3, int a4, const __int16 *a5, int a6, const unsigned __int8 *a7)
{
  v7 = a3 + 4;
  v8 = (result + 3);
  for (i = 9; i > 1; --i)
  {
    v10 = *(v7 - 3) + a6;
    v11 = *a5 + ((v10 + *(v7 - 4)) >> 1);
    v12 = *(v7 - 2);
    v13 = *(v7 - 1);
    LOBYTE(v10) = a7[a5[1] + ((v10 + v12) >> 1)];
    LOBYTE(v12) = a7[a5[2] + ((v12 + a6 + v13) >> 1)];
    LOBYTE(v13) = a7[a5[3] + ((v13 + a6 + *v7) >> 1)];
    *(v8 - 3) = a7[v11];
    *(v8 - 2) = v10;
    *(v8 - 1) = v12;
    *v8 = v13;
    v14 = v7[1] + a6;
    v15 = v7[2];
    v16 = v7[3];
    LOBYTE(v11) = a7[a5[4] + ((v14 + *v7) >> 1)];
    LOBYTE(v14) = a7[a5[5] + ((v14 + v15) >> 1)];
    LOBYTE(v15) = a7[a5[6] + ((v15 + a6 + v16) >> 1)];
    LOBYTE(v16) = a7[a5[7] + ((v16 + a6 + v7[4]) >> 1)];
    v8[1] = v11;
    v8[2] = v14;
    v8[3] = v15;
    v8[4] = v16;
    a5 += 8;
    v7 += a4;
    v8 += a2;
  }

  return result;
}

uint64_t MC_1H_2V(uint64_t result, int a2, const unsigned __int8 *a3, int a4, int16x4_t *a5, unsigned int a6, const unsigned __int8 *a7, double a8, int32x4_t a9, int32x4_t a10)
{
  v10 = vdupq_n_s32(a6);
  v11 = a3 + 4;
  v12 = (result + 3);
  for (i = 9; i > 1; --i)
  {
    v14 = &v11[a4];
    a9.i32[0] = *(v11 - 1);
    a10.i32[0] = *(v14 - 1);
    v15 = vaddw_u16(vaddw_u16(v10, *&vmovl_u8(*a9.i8)), *&vmovl_u8(*a10.i8));
    v16 = vsraq_n_s32(vmovl_s16(*a5), v15, 1uLL);
    v17 = a7[v16.i32[1]];
    v18 = a7[v16.i32[2]];
    v19 = a7[v16.i32[3]];
    *(v12 - 3) = a7[v16.i32[0]];
    *(v12 - 2) = v17;
    *(v12 - 1) = v18;
    *v12 = v19;
    v15.i32[0] = *v11;
    v16.i32[0] = *v14;
    a9 = vaddw_u16(vaddw_u16(v10, *&vmovl_u8(*v15.i8)), *&vmovl_u8(*v16.i8));
    a10 = vsraq_n_s32(vmovl_s16(a5[1]), a9, 1uLL);
    v20 = a7[a10.i32[1]];
    v21 = a7[a10.i32[2]];
    v22 = a7[a10.i32[3]];
    v12[1] = a7[a10.i32[0]];
    v12[2] = v20;
    v12[3] = v21;
    v12[4] = v22;
    a5 += 2;
    v12 += a2;
    v11 = v14;
  }

  return result;
}

uint64_t MC_2H_2V(unsigned __int8 *a1, int a2, const unsigned __int8 *a3, int a4, const __int16 *a5, int a6, const unsigned __int8 *a7)
{
  v7 = a2;
  v8 = a3 + 4;
  v9 = a1 + 3;
  for (i = 9; i > 1; --i)
  {
    v11 = &v8[a4];
    v12 = *(v11 - 3);
    v13 = *(v8 - 3) + a6;
    v14 = *a5 + ((v13 + *(v8 - 4) + *(v11 - 4) + v12) >> 2);
    v15 = *(v8 - 2);
    v16 = *(v11 - 2);
    v17 = a5[1] + ((v13 + v12 + v15 + v16) >> 2);
    v18 = *(v8 - 1);
    v19 = *(v11 - 1);
    LOBYTE(v17) = a7[v17];
    LOBYTE(v15) = a7[a5[2] + ((v15 + a6 + v16 + v18 + v19) >> 2)];
    LOBYTE(v18) = a7[a5[3] + ((v18 + a6 + v19 + *v8 + *v11) >> 2)];
    *(v9 - 3) = a7[v14];
    *(v9 - 2) = v17;
    *(v9 - 1) = v15;
    *v9 = v18;
    v20 = v11[1];
    LODWORD(v17) = v8[1] + a6;
    v21 = a5[4] + ((v17 + *v8 + *v11 + v20) >> 2);
    v22 = v8[2];
    v23 = v11[2];
    v24 = a5[5] + ((v17 + v20 + v22 + v23) >> 2);
    v25 = v8[3];
    v26 = v11[3];
    v27 = a5[6] + ((v22 + a6 + v23 + v25 + v26) >> 2);
    result = v11[4];
    LOBYTE(v24) = a7[v24];
    LOBYTE(v27) = a7[v27];
    v29 = a7[a5[7] + ((v25 + a6 + v26 + v8[4] + result) >> 2)];
    v9[1] = a7[v21];
    v9[2] = v24;
    v9[3] = v27;
    v9[4] = v29;
    a5 += 8;
    v9 += v7;
    v8 = v11;
  }

  return result;
}

uint64_t AddResidueTo_8x8(uint64_t result, unsigned __int8 *a2, unsigned __int8 *a3, int a4, const unsigned __int8 *a5)
{
  v5 = 0;
  v6 = a3 + 3;
  do
  {
    v7 = (result + 2 * v5);
    v8 = a5[a2[v5 + 1] + v7[1]];
    v9 = a5[a2[v5 + 2] + v7[2]];
    v10 = a5[a2[v5 + 3] + v7[3]];
    *(v6 - 3) = a5[a2[v5] + *v7];
    *(v6 - 2) = v8;
    *(v6 - 1) = v9;
    *v6 = v10;
    v11 = a5[a2[v5 + 4] + v7[4]];
    v12 = a5[a2[v5 + 5] + v7[5]];
    v13 = a5[a2[v5 + 6] + v7[6]];
    LOBYTE(v7) = a5[a2[v5 + 7] + v7[7]];
    v6[1] = v11;
    v6[2] = v12;
    v6[3] = v13;
    v6[4] = v7;
    v5 += 8;
    v6 += a4;
  }

  while (v5 != 64);
  return result;
}

uint64_t Reconstruct_16x16(unsigned __int8 *a1, int a2, unsigned __int8 *a3, int a4, __int16 *a5, int a6, int a7, int a8, int a9, unsigned __int8 *a10)
{
  v16 = *MEMORY[0x277D85DE8];
  if (a8)
  {
    Get_QuarterPel_MSFT(a3, a4, a6, a7, a9, a10, 16, v15);
  }

  else
  {
    Get_HalfPel(a3, a4, a6, a7, a9, 16, v15);
  }

  result = AddResidueTo_16x16(a5, v15, a1, a2, a10);
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t Get_HalfPel(uint64_t result, int a2, int a3, int a4, int a5, int a6, unsigned __int8 *a7)
{
  v7 = a2;
  v8 = a2 - a6;
  v9 = (result - v8);
  if (a4 | a3)
  {
    if (a3 != 1 || a4)
    {
      if (a3 || a4 != 1)
      {
        if (a3 == 1 && a4 == 1 && a6)
        {
          v27 = 2 - a5;
          v28 = a6;
          do
          {
            v29 = &v9[v8];
            if (a6 >= 4)
            {
              v30 = v29[v7];
              LODWORD(result) = *v29;
              v31 = &v9[2 * v7 - a6 + 2];
              v32 = a6 >> 2;
              do
              {
                v33 = v29[1];
                v34 = *(v31 - 1);
                *a7 = (result + v27 + v30 + v33 + v34) >> 2;
                v35 = v29[2];
                v36 = *v31;
                a7[1] = (v27 + v33 + v34 + v35 + v36) >> 2;
                v37 = v29[3];
                v38 = v31[1];
                a7[2] = (v27 + v35 + v36 + v37 + v38) >> 2;
                v39 = v29[4];
                v29 += 4;
                result = v39;
                v30 = v31[2];
                a7[3] = (v27 + v37 + v38 + v39 + v30) >> 2;
                a7 += 4;
                v31 += 4;
                --v32;
              }

              while (v32);
            }

            v9 = v29;
            --v28;
          }

          while (v28);
        }
      }

      else if (a6)
      {
        v20 = 1 - a5;
        v21 = a6;
        do
        {
          v22 = &v9[v8];
          if (a6 >= 4)
          {
            v23 = &v9[2 * a2 - a6 + 3];
            v24 = a6 >> 2;
            do
            {
              *a7 = (v20 + *v22 + *(v23 - 3)) >> 1;
              a7[1] = (v20 + v22[1] + *(v23 - 2)) >> 1;
              a7[2] = (v20 + v22[2] + *(v23 - 1)) >> 1;
              v25 = v22[3];
              v26 = *v23;
              v23 += 4;
              v22 += 4;
              a7[3] = (v20 + v25 + v26) >> 1;
              a7 += 4;
              --v24;
            }

            while (v24);
          }

          v9 = v22;
          --v21;
        }

        while (v21);
      }
    }

    else if (a6)
    {
      v10 = 1 - a5;
      v11 = a6;
      do
      {
        v9 += v8;
        if (a6 >= 4)
        {
          v12 = *v9;
          v13 = a6 >> 2;
          do
          {
            v14 = v10 + v9[1];
            *a7 = (v14 + v12) >> 1;
            v15 = v9[2];
            a7[1] = (v14 + v15) >> 1;
            v16 = v10 + v9[3];
            a7[2] = (v16 + v15) >> 1;
            v17 = v9[4];
            v9 += 4;
            v12 = v17;
            a7[3] = (v16 + v17) >> 1;
            a7 += 4;
            --v13;
          }

          while (v13);
        }

        --v11;
      }

      while (v11);
    }
  }

  else if (a6)
  {
    v18 = a6;
    do
    {
      v9 += v8;
      if (a6 >= 8)
      {
        v19 = a6 >> 3;
        do
        {
          *a7 = *v9;
          *(a7 + 4) = *(v9 + 4);
          a7 += 8;
          v9 += 8;
          --v19;
        }

        while (v19);
      }

      --v18;
    }

    while (v18);
  }

  return result;
}

uint64_t AddResidueTo_16x16(uint64_t result, unsigned __int8 *a2, unsigned __int8 *a3, int a4, const unsigned __int8 *a5)
{
  v5 = 0;
  v6 = a3 + 7;
  do
  {
    v7 = (result + 2 * v5);
    v8 = a5[a2[v5 + 1] + v7[1]];
    v9 = a5[a2[v5 + 2] + v7[2]];
    v10 = a5[a2[v5 + 3] + v7[3]];
    *(v6 - 7) = a5[a2[v5] + *v7];
    *(v6 - 6) = v8;
    *(v6 - 5) = v9;
    *(v6 - 4) = v10;
    v11 = a5[a2[v5 + 5] + v7[5]];
    v12 = a5[a2[v5 + 6] + v7[6]];
    v13 = a5[a2[v5 + 7] + v7[7]];
    *(v6 - 3) = a5[a2[v5 + 4] + v7[4]];
    *(v6 - 2) = v11;
    *(v6 - 1) = v12;
    *v6 = v13;
    v14 = a5[a2[v5 + 9] + v7[9]];
    v15 = a5[a2[v5 + 10] + v7[10]];
    v16 = a5[a2[v5 + 11] + v7[11]];
    v6[1] = a5[a2[v5 + 8] + v7[8]];
    v6[2] = v14;
    v6[3] = v15;
    v6[4] = v16;
    v17 = a5[a2[v5 + 12] + v7[12]];
    v18 = a5[a2[v5 + 13] + v7[13]];
    v19 = a5[a2[v5 + 14] + v7[14]];
    LOBYTE(v7) = a5[a2[v5 + 15] + v7[15]];
    v6[5] = v17;
    v6[6] = v18;
    v6[7] = v19;
    v6[8] = v7;
    v5 += 16;
    v6 += a4;
  }

  while (v5 != 256);
  return result;
}

_BYTE *SetBlockToFrame(_BYTE *result, int a2, char *a3, int a4)
{
  if (a4)
  {
    v4 = a4;
    do
    {
      --v4;
      v5 = a4;
      do
      {
        v6 = *a3++;
        *result++ = v6;
        --v5;
      }

      while (v5);
      result += a2 - a4;
    }

    while (v4);
  }

  return result;
}

unsigned __int8 *GetBlockToFrame(unsigned __int8 *result, int a2, unsigned __int8 *a3, int a4)
{
  if (a4)
  {
    v4 = a4;
    do
    {
      --v4;
      v5 = a4;
      do
      {
        v6 = *result++;
        *a3++ = v6;
        --v5;
      }

      while (v5);
      result += a2 - a4;
    }

    while (v4);
  }

  return result;
}

uint64_t GetResidue_8x8(__int16 *a1, unsigned __int8 *a2, unsigned __int8 *a3, int a4, unsigned __int8 *a5, int a6, int a7, int a8, char a9, int a10, unsigned __int8 *a11)
{
  v18 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v14 = a2;
  }

  else
  {
    v14 = &v17;
  }

  if (a9)
  {
    Get_QuarterPel_MSFT(a3, a4, a7, a8, a10, a11, 8, v14);
  }

  else
  {
    Get_HalfPel(a3, a4, a7, a8, a10, 8, v14);
  }

  result = GetResidueFrom_8x8(a1, v14, a5, a6);
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t GetResidueFrom_8x8(uint64_t result, unsigned __int8 *a2, unsigned __int8 *a3, int a4)
{
  v4 = 0;
  v5 = a3 + 3;
  do
  {
    v6 = (result + 2 * v4);
    *v6 = *(v5 - 3) - a2[v4];
    v6[1] = *(v5 - 2) - a2[v4 + 1];
    v6[2] = *(v5 - 1) - a2[v4 + 2];
    v6[3] = *v5 - a2[v4 + 3];
    v6[4] = v5[1] - a2[v4 + 4];
    v6[5] = v5[2] - a2[v4 + 5];
    v6[6] = v5[3] - a2[v4 + 6];
    v6[7] = v5[4] - a2[v4 + 7];
    v4 += 8;
    v5 += a4;
  }

  while (v4 != 64);
  return result;
}

uint64_t GetResidue_16x16(__int16 *a1, unsigned __int8 *a2, unsigned __int8 *a3, int a4, unsigned __int8 *a5, int a6, int a7, int a8, char a9, int a10, unsigned __int8 *a11)
{
  v21 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v14 = a2;
  }

  else
  {
    v14 = &v20;
  }

  if (a9)
  {
    result = Get_QuarterPel_MSFT(a3, a4, a7, a8, a10, a11, 16, v14);
  }

  else
  {
    result = Get_HalfPel(a3, a4, a7, a8, a10, 16, v14);
  }

  v16 = 0;
  v17 = a5 + 7;
  do
  {
    v18 = &a1[v16];
    *v18 = *(v17 - 7) - v14[v16];
    v18[1] = *(v17 - 6) - v14[v16 + 1];
    v18[2] = *(v17 - 5) - v14[v16 + 2];
    v18[3] = *(v17 - 4) - v14[v16 + 3];
    v18[4] = *(v17 - 3) - v14[v16 + 4];
    v18[5] = *(v17 - 2) - v14[v16 + 5];
    v18[6] = *(v17 - 1) - v14[v16 + 6];
    v18[7] = *v17 - v14[v16 + 7];
    v18[8] = v17[1] - v14[v16 + 8];
    v18[9] = v17[2] - v14[v16 + 9];
    v18[10] = v17[3] - v14[v16 + 10];
    v18[11] = v17[4] - v14[v16 + 11];
    v18[12] = v17[5] - v14[v16 + 12];
    v18[13] = v17[6] - v14[v16 + 13];
    v18[14] = v17[7] - v14[v16 + 14];
    v18[15] = v17[8] - v14[v16 + 15];
    v16 += 16;
    v17 += a6;
  }

  while (v16 != 256);
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MC_8x8(unsigned __int8 *a1, int a2, unsigned __int8 *a3, int a4, int a5, int a6, int a7, unsigned __int8 *a8, unsigned __int8 *a9)
{
  if (a3 < a8)
  {
    return 4294958327;
  }

  if (a9 && &a3[a5 + 7 + (a6 + 7) * a4] >= a9)
  {
    return 4294958327;
  }

  if (a6 | a5)
  {
    if (a5 != 1 || a6)
    {
      v20 = a2;
      if (a5 || a6 != 1)
      {
        v24 = 0;
        v25 = a3 + 1;
        v26 = &a3[a4 + 1];
        do
        {
          ++v24;
          v27 = v25;
          v28 = v26;
          v29 = 8;
          v30 = a1;
          do
          {
            v31 = *(v27 - 1);
            v33 = *v27++;
            v32 = v33;
            v34 = *(v28 - 1);
            v35 = *v28++;
            *v30++ = (v32 - a7 + v31 + v34 + v35 + 2) >> 2;
            --v29;
          }

          while (v29);
          a1 += v20;
          v26 += a4;
          v25 += a4;
        }

        while (v24 != 8);
      }

      else
      {
        v21 = 0;
        v22 = &a3[a4];
        do
        {
          v23 = 0;
          ++v21;
          do
          {
            a1[v23] = (v22[v23] - a7 + a3[v23] + 1) >> 1;
            ++v23;
          }

          while (v23 != 8);
          a1 += a2;
          v22 += a4;
          a3 += a4;
        }

        while (v21 != 8);
      }
    }

    else
    {
      v10 = 0;
      v11 = a3 + 1;
      do
      {
        v12 = 8;
        v13 = v11;
        v14 = a1;
        do
        {
          v15 = *(v13 - 1);
          v16 = *v13++;
          *v14++ = (v16 - a7 + v15 + 1) >> 1;
          --v12;
        }

        while (v12);
        ++v10;
        a1 += a2;
        v11 += a4;
      }

      while (v10 != 8);
    }
  }

  else
  {
    for (i = 0; i != 8; ++i)
    {
      for (j = 0; j != 8; ++j)
      {
        a1[j] = a3[j];
      }

      a1 += a2;
      a3 += a4;
    }
  }

  return 0;
}

uint64_t AddResidue_8x8(uint64_t result, int a2, __int16 *a3, const unsigned __int8 *a4)
{
  for (i = 0; i != 8; ++i)
  {
    for (j = 0; j != 8; ++j)
    {
      *(result + j) = a4[*(result + j) + a3[j]];
    }

    a3 += 8;
    result += a2;
  }

  return result;
}

unsigned __int8 *Get_QuarterPel_MSFT(unsigned __int8 *result, int a2, int a3, int a4, int a5, const unsigned __int8 *a6, int a7, unsigned __int8 *a8)
{
  v8 = a8;
  v86 = *MEMORY[0x277D85DE8];
  if (a4 | a3)
  {
    if (a3)
    {
      if (a7 != -1)
      {
        v14 = ~a7 + a2;
        v15 = &result[-v14];
        v16 = &v83;
        v17 = a7;
        do
        {
          v18 = v17;
          v19 = &v15[v14];
          if (a7 >= 8)
          {
            v20 = a7 >> 3;
            do
            {
              *v16 = *v19;
              *(v16 + 4) = *(v19 + 4);
              v16 += 8;
              v19 += 8;
              --v20;
            }

            while (v20);
          }

          v21 = *v19;
          v15 = (v19 + 1);
          *v16++ = v21;
          v17 = v18 - 1;
        }

        while (v18);
      }

      if (a3 == 2)
      {
        if (a4)
        {
          v22 = v85;
          v23 = a7;
          v24 = a5;
          v25 = a6;
          v26 = 1;
        }

        else
        {
          v22 = a8;
          v23 = a7;
          v24 = a5;
          v25 = a6;
          v26 = 0;
        }

        result = Get_HalfPel_Left(&v83, v22, v23, v24, v25, v26);
      }

      else
      {
        result = Get_HalfPel_Left(&v83, v82, a7, a5, a6, 1);
        if (a3 == 3)
        {
          if (a4)
          {
            if (a7 != -1)
            {
              v61 = v85;
              v62 = v82;
              v63 = &v83;
              v64 = a7;
              do
              {
                v65 = v64;
                ++v63;
                if (a7)
                {
                  v66 = a7;
                  do
                  {
                    v68 = *v63++;
                    v67 = v68;
                    v69 = *v62++;
                    *v61++ = (v69 - a5 + v67 + 1) >> 1;
                    --v66;
                  }

                  while (v66);
                }

                v64 = v65 - 1;
              }

              while (v65);
            }
          }

          else if (a7)
          {
            v76 = v84;
            v77 = v82;
            v78 = a7;
            v79 = v8;
            do
            {
              ++v76;
              v80 = a7;
              do
              {
                v81 = *v77++;
                *v79++ = (v81 - a5 + *(v76++ - 1) + 1) >> 1;
                --v80;
              }

              while (v80);
              --v78;
            }

            while (v78);
          }
        }

        else if (a3 == 1)
        {
          if (a4)
          {
            if (a7 != -1)
            {
              v37 = v85;
              v38 = v82;
              v39 = &v83;
              v40 = a7;
              do
              {
                v41 = v40;
                if (a7)
                {
                  v42 = a7;
                  do
                  {
                    v44 = *v39++;
                    v43 = v44;
                    v45 = *v38++;
                    *v37++ = (v45 - a5 + v43 + 1) >> 1;
                    --v42;
                  }

                  while (v42);
                }

                ++v39;
                v40 = v41 - 1;
              }

              while (v41);
            }
          }

          else if (a7)
          {
            v70 = v82;
            v71 = &v83;
            v72 = a7;
            v73 = v8;
            do
            {
              ++v71;
              v74 = a7;
              do
              {
                v75 = *v70++;
                *v73++ = (v75 - a5 + *(v71++ - 1) + 1) >> 1;
                --v74;
              }

              while (v74);
              --v72;
            }

            while (v72);
          }
        }
      }
    }

    else if (a7 != -1)
    {
      v31 = a2 - a7;
      v32 = &result[-v31];
      v33 = v85;
      v34 = a7;
      do
      {
        v35 = v34;
        v32 += v31;
        if (a7 >= 8)
        {
          v36 = a7 >> 3;
          do
          {
            *v33 = *v32;
            *(v33 + 4) = *(v32 + 4);
            v33 += 8;
            v32 += 8;
            --v36;
          }

          while (v36);
        }

        v34 = v35 - 1;
      }

      while (v35);
    }

    switch(a4)
    {
      case 1:
        result = Get_HalfPel_Bottom(v85, &v83, a7, a5, a6, 0);
        if (a7)
        {
          v53 = &v83;
          v54 = v85;
          v55 = a7;
          do
          {
            v56 = a7;
            do
            {
              v58 = *v54++;
              v57 = v58;
              v59 = *v53++;
              *v8++ = (v59 - a5 + v57 + 1) >> 1;
              --v56;
            }

            while (v56);
            --v55;
          }

          while (v55);
        }

        break;
      case 3:
        result = Get_HalfPel_Bottom(v85, &v83, a7, a5, a6, 0);
        if (a7)
        {
          v46 = &v85[a7];
          v47 = &v83;
          v48 = a7;
          do
          {
            v49 = a7;
            do
            {
              v51 = *v46++;
              v50 = v51;
              v52 = *v47++;
              *v8++ = (v52 - a5 + v50 + 1) >> 1;
              --v49;
            }

            while (v49);
            --v48;
          }

          while (v48);
        }

        break;
      case 2:
        result = Get_HalfPel_Bottom(v85, v8, a7, a5, a6, 0);
        break;
    }
  }

  else if (a7)
  {
    v27 = a2 - a7;
    v28 = &result[-v27];
    v29 = a7;
    do
    {
      v28 += v27;
      if (a7 >= 8)
      {
        v30 = a7 >> 3;
        do
        {
          *v8 = *v28;
          *(v8 + 4) = *(v28 + 4);
          v8 += 8;
          v28 += 8;
          --v30;
        }

        while (v30);
      }

      --v29;
    }

    while (v29);
  }

  v60 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t Blinear_8th(uint64_t result, int a2, int a3, int a4, int a5, int a6, unsigned __int8 *a7)
{
  v7 = a2;
  v8 = a2 - a6;
  v9 = (result - v8);
  v10 = 1 - a5;
  v11 = 2 - a5;
  v12 = 4 - a5;
  v13 = 8 - a5;
  if (a4 > 3)
  {
    if (a4 == 4)
    {
      if (a3 > 3)
      {
        if (a3 == 4)
        {
          if (a6)
          {
            v157 = a6;
            do
            {
              v158 = &v9[v8];
              if (a6 >= 4)
              {
                v159 = v158[v7];
                LODWORD(result) = *v158;
                v160 = &v9[2 * v7 - a6 + 4];
                v161 = a6 >> 2;
                do
                {
                  v162 = v158[1];
                  v163 = *(v160 - 3);
                  *a7 = (result + v11 + v159 + v162 + v163) >> 2;
                  v164 = v158[2];
                  v165 = *(v160 - 2);
                  a7[1] = (v11 + v162 + v163 + v164 + v165) >> 2;
                  v166 = v158[3];
                  v167 = *(v160 - 1);
                  a7[2] = (v11 + v164 + v165 + v166 + v167) >> 2;
                  v168 = v158[4];
                  v158 += 4;
                  result = v168;
                  v169 = *v160;
                  v160 += 4;
                  v159 = v169;
                  a7[3] = (v11 + v166 + v167 + result + v169) >> 2;
                  a7 += 4;
                  --v161;
                }

                while (v161);
              }

              v9 = v158;
              --v157;
            }

            while (v157);
          }
        }

        else if (a3 == 6 && a6)
        {
          v100 = a6;
          do
          {
            v101 = &v9[v8];
            if (a6 >= 4)
            {
              v102 = v101[v7];
              LODWORD(result) = *v101;
              v103 = &v9[2 * v7 - a6 + 4];
              v104 = a6 >> 2;
              do
              {
                v105 = v101[1];
                v106 = *(v103 - 3);
                *a7 = (result + v12 + v102 + 3 * (v106 + v105)) >> 3;
                v107 = v101[2];
                v108 = *(v103 - 2);
                a7[1] = (v12 + v105 + v106 + 3 * (v108 + v107)) >> 3;
                v109 = v101[3];
                v110 = *(v103 - 1);
                a7[2] = (v12 + v107 + v108 + 3 * (v110 + v109)) >> 3;
                v111 = v101[4];
                v101 += 4;
                result = v111;
                v112 = *v103;
                v103 += 4;
                v102 = v112;
                a7[3] = (v12 + v109 + v110 + 3 * (v112 + result)) >> 3;
                a7 += 4;
                --v104;
              }

              while (v104);
            }

            v9 = v101;
            --v100;
          }

          while (v100);
        }
      }

      else if (a3)
      {
        if (a3 == 2 && a6)
        {
          v63 = a6;
          do
          {
            v64 = &v9[v8];
            if (a6 >= 4)
            {
              LODWORD(result) = v64[v7];
              v65 = *v64;
              v66 = &v9[2 * v7 - a6 + 4];
              v67 = a6 >> 2;
              do
              {
                v68 = 3 * (result + v65);
                v69 = *(v66 - 3) + v64[1];
                *a7 = (v69 + v12 + v68) >> 3;
                v70 = *(v66 - 2) + v64[2];
                a7[1] = (v70 + v12 + 3 * v69) >> 3;
                v71 = *(v66 - 1) + v64[3];
                a7[2] = (v71 + v12 + 3 * v70) >> 3;
                v72 = v64[4];
                v64 += 4;
                v65 = v72;
                v73 = *v66;
                v66 += 4;
                result = v73;
                a7[3] = (v12 + v65 + v73 + 3 * v71) >> 3;
                a7 += 4;
                --v67;
              }

              while (v67);
            }

            v9 = v64;
            --v63;
          }

          while (v63);
        }
      }

      else if (a6)
      {
        v151 = a6;
        do
        {
          v152 = &v9[v8];
          if (a6 >= 4)
          {
            v153 = &v9[2 * a2 - a6 + 3];
            v154 = a6 >> 2;
            do
            {
              *a7 = (v10 + *v152 + *(v153 - 3)) >> 1;
              a7[1] = (v10 + v152[1] + *(v153 - 2)) >> 1;
              a7[2] = (v10 + v152[2] + *(v153 - 1)) >> 1;
              v155 = v152[3];
              v156 = *v153;
              v153 += 4;
              v152 += 4;
              a7[3] = (v10 + v155 + v156) >> 1;
              a7 += 4;
              --v154;
            }

            while (v154);
          }

          v9 = v152;
          --v151;
        }

        while (v151);
      }
    }

    else if (a4 == 6)
    {
      if (a3 > 3)
      {
        if (a3 == 4)
        {
          if (a6)
          {
            v138 = a6;
            do
            {
              v139 = &v9[v8];
              if (a6 >= 4)
              {
                LODWORD(result) = v139[v7];
                v140 = *v139;
                v141 = &v9[2 * v7 - a6 + 4];
                v142 = a6 >> 2;
                do
                {
                  v143 = v139[1];
                  v144 = 3 * *(v141 - 3);
                  *a7 = (v140 + v12 + 3 * result + v143 + v144) >> 3;
                  v145 = v139[2];
                  v146 = 3 * *(v141 - 2);
                  a7[1] = (v12 + v143 + v145 + v144 + v146) >> 3;
                  v147 = v139[3];
                  v148 = 3 * *(v141 - 1);
                  a7[2] = (v12 + v145 + v147 + v146 + v148) >> 3;
                  v149 = v139[4];
                  v139 += 4;
                  v140 = v149;
                  v150 = *v141;
                  v141 += 4;
                  result = v150;
                  a7[3] = (v12 + v147 + v140 + v148 + 3 * v150) >> 3;
                  a7 += 4;
                  --v142;
                }

                while (v142);
              }

              v9 = v139;
              --v138;
            }

            while (v138);
          }
        }

        else if (a3 == 6 && a6)
        {
          v87 = a6;
          do
          {
            v88 = &v9[v8];
            if (a6 >= 4)
            {
              LODWORD(result) = v88[v7];
              v89 = *v88;
              v90 = &v9[2 * v7 - a6 + 4];
              v91 = a6 >> 2;
              do
              {
                v92 = v88[1];
                v93 = *(v90 - 3);
                *a7 = (v89 + v13 + 9 * v93 + 3 * (result + v92)) >> 4;
                v94 = v88[2];
                v95 = *(v90 - 2);
                a7[1] = (v13 + v92 + 9 * v95 + 3 * (v94 + v93)) >> 4;
                v96 = v88[3];
                v97 = *(v90 - 1);
                a7[2] = (v13 + v94 + 9 * v97 + 3 * (v96 + v95)) >> 4;
                v98 = v88[4];
                v88 += 4;
                v89 = v98;
                v99 = *v90;
                v90 += 4;
                result = v99;
                a7[3] = (v13 + v96 + 9 * v99 + 3 * (v89 + v97)) >> 4;
                a7 += 4;
                --v91;
              }

              while (v91);
            }

            v9 = v88;
            --v87;
          }

          while (v87);
        }
      }

      else if (a3)
      {
        if (a3 == 2 && a6)
        {
          v27 = a6;
          do
          {
            v28 = &v9[v8];
            if (a6 >= 4)
            {
              LODWORD(result) = v28[v7];
              v29 = *v28;
              v30 = &v9[2 * v7 - a6 + 4];
              v31 = a6 >> 2;
              do
              {
                v32 = v28[1];
                v33 = *(v30 - 3);
                *a7 = (9 * result + v13 + v32 + 3 * (v29 + v33)) >> 4;
                v34 = v28[2];
                v35 = *(v30 - 2);
                a7[1] = (9 * v33 + v13 + v34 + 3 * (v35 + v32)) >> 4;
                v36 = v28[3];
                v37 = *(v30 - 1);
                a7[2] = (9 * v35 + v13 + v36 + 3 * (v37 + v34)) >> 4;
                v38 = v28[4];
                v28 += 4;
                v29 = v38;
                v39 = *v30;
                v30 += 4;
                result = v39;
                a7[3] = (9 * v37 + v13 + v29 + 3 * (v39 + v36)) >> 4;
                a7 += 4;
                --v31;
              }

              while (v31);
            }

            v9 = v28;
            --v27;
          }

          while (v27);
        }
      }

      else if (a6)
      {
        v119 = a6;
        do
        {
          v120 = &v9[v8];
          if (a6 >= 4)
          {
            v121 = &v9[2 * a2 - a6 + 3];
            v122 = a6 >> 2;
            do
            {
              *a7 = (v11 + *v120 + 3 * *(v121 - 3)) >> 2;
              a7[1] = (v11 + v120[1] + 3 * *(v121 - 2)) >> 2;
              a7[2] = (v11 + v120[2] + 3 * *(v121 - 1)) >> 2;
              v123 = v120[3];
              v124 = *v121;
              v121 += 4;
              v120 += 4;
              a7[3] = (v11 + v123 + 3 * v124) >> 2;
              a7 += 4;
              --v122;
            }

            while (v122);
          }

          v9 = v120;
          --v119;
        }

        while (v119);
      }
    }
  }

  else if (a4)
  {
    if (a4 == 2)
    {
      if (a3 > 3)
      {
        if (a3 == 4)
        {
          if (a6)
          {
            v125 = a6;
            do
            {
              v126 = &v9[v8];
              if (a6 >= 4)
              {
                v127 = v126[v7];
                LODWORD(result) = *v126;
                v128 = &v9[2 * v7 - a6 + 4];
                v129 = a6 >> 2;
                do
                {
                  v130 = v126[1];
                  v131 = v12 + *(v128 - 3);
                  *a7 = (v131 + v127 + 3 * (result + v130)) >> 3;
                  v132 = v126[2];
                  v133 = *(v128 - 2);
                  a7[1] = (v131 + v133 + 3 * (v132 + v130)) >> 3;
                  v134 = v126[3];
                  v135 = v12 + *(v128 - 1);
                  a7[2] = (v135 + v133 + 3 * (v134 + v132)) >> 3;
                  v136 = v126[4];
                  v126 += 4;
                  result = v136;
                  v137 = *v128;
                  v128 += 4;
                  v127 = v137;
                  a7[3] = (v135 + v137 + 3 * (result + v134)) >> 3;
                  a7 += 4;
                  --v129;
                }

                while (v129);
              }

              v9 = v126;
              --v125;
            }

            while (v125);
          }
        }

        else if (a3 == 6 && a6)
        {
          v74 = a6;
          do
          {
            v75 = &v9[v8];
            if (a6 >= 4)
            {
              v76 = v75[v7];
              LODWORD(result) = *v75;
              v77 = &v9[2 * v7 - a6 + 4];
              v78 = a6 >> 2;
              do
              {
                v79 = v75[1];
                v80 = *(v77 - 3);
                *a7 = (v76 + v13 + 9 * v79 + 3 * (result + v80)) >> 4;
                v81 = v75[2];
                v82 = *(v77 - 2);
                a7[1] = (v13 + v80 + 9 * v81 + 3 * (v82 + v79)) >> 4;
                v83 = v75[3];
                v84 = *(v77 - 1);
                a7[2] = (v13 + v82 + 9 * v83 + 3 * (v84 + v81)) >> 4;
                v85 = v75[4];
                v75 += 4;
                result = v85;
                v86 = *v77;
                v77 += 4;
                v76 = v86;
                a7[3] = (v13 + v84 + 9 * result + 3 * (v86 + v83)) >> 4;
                a7 += 4;
                --v78;
              }

              while (v78);
            }

            v9 = v75;
            --v74;
          }

          while (v74);
        }
      }

      else if (a3)
      {
        if (a3 == 2 && a6)
        {
          v14 = a6;
          do
          {
            v15 = &v9[v8];
            if (a6 >= 4)
            {
              v16 = v15[v7];
              LODWORD(result) = *v15;
              v17 = &v9[2 * v7 - a6 + 4];
              v18 = a6 >> 2;
              do
              {
                v19 = v15[1];
                v20 = *(v17 - 3);
                *a7 = (9 * result + v13 + v20 + 3 * (v16 + v19)) >> 4;
                v21 = v15[2];
                v22 = *(v17 - 2);
                a7[1] = (9 * v19 + v13 + v22 + 3 * (v21 + v20)) >> 4;
                v23 = v15[3];
                v24 = *(v17 - 1);
                a7[2] = (9 * v21 + v13 + v24 + 3 * (v23 + v22)) >> 4;
                v25 = v15[4];
                v15 += 4;
                result = v25;
                v26 = *v17;
                v17 += 4;
                v16 = v26;
                a7[3] = (9 * v23 + v13 + v26 + 3 * (result + v24)) >> 4;
                a7 += 4;
                --v18;
              }

              while (v18);
            }

            v9 = v15;
            --v14;
          }

          while (v14);
        }
      }

      else if (a6)
      {
        v113 = a6;
        do
        {
          v114 = &v9[v8];
          if (a6 >= 4)
          {
            v115 = &v9[2 * a2 - a6 + 3];
            v116 = a6 >> 2;
            do
            {
              *a7 = (v11 + *(v115 - 3) + 3 * *v114) >> 2;
              a7[1] = (v11 + *(v115 - 2) + 3 * v114[1]) >> 2;
              a7[2] = (v11 + *(v115 - 1) + 3 * v114[2]) >> 2;
              v117 = v114[3];
              v118 = *v115;
              v115 += 4;
              v114 += 4;
              a7[3] = (v11 + v118 + 3 * v117) >> 2;
              a7 += 4;
              --v116;
            }

            while (v116);
          }

          v9 = v114;
          --v113;
        }

        while (v113);
      }
    }
  }

  else
  {
    if (!a3)
    {
      if (!a6)
      {
        return result;
      }

      v40 = a6;
      do
      {
        v9 += v8;
        if (a6 >= 8)
        {
          v41 = a6 >> 3;
          do
          {
            *a7 = *v9;
            *(a7 + 4) = *(v9 + 4);
            a7 += 8;
            v9 += 8;
            --v41;
          }

          while (v41);
        }

        --v40;
      }

      while (v40);
    }

    if (a3 == 4)
    {
      if (!a6)
      {
        return result;
      }

      v42 = a6;
      do
      {
        v9 += v8;
        if (a6 >= 4)
        {
          v43 = *v9;
          v44 = a6 >> 2;
          do
          {
            v45 = v10 + v9[1];
            *a7 = (v45 + v43) >> 1;
            v46 = v9[2];
            a7[1] = (v45 + v46) >> 1;
            v47 = v10 + v9[3];
            a7[2] = (v47 + v46) >> 1;
            v48 = v9[4];
            v9 += 4;
            v43 = v48;
            a7[3] = (v47 + v48) >> 1;
            a7 += 4;
            --v44;
          }

          while (v44);
        }

        --v42;
      }

      while (v42);
    }

    if (a3 == 2)
    {
      if (!a6)
      {
        return result;
      }

      v49 = a6;
      do
      {
        v9 += v8;
        if (a6 >= 4)
        {
          v50 = *v9;
          v51 = a6 >> 2;
          do
          {
            v52 = v10 + v9[1];
            *a7 = (v52 + v50) >> 1;
            v53 = v9[2];
            a7[1] = (v52 + v53) >> 1;
            v54 = v10 + v9[3];
            a7[2] = (v54 + v53) >> 1;
            v55 = v9[4];
            v9 += 4;
            v50 = v55;
            a7[3] = (v54 + v55) >> 1;
            a7 += 4;
            --v51;
          }

          while (v51);
        }

        --v49;
      }

      while (v49);
    }

    if (a3 == 6 && a6)
    {
      v56 = a6;
      do
      {
        v9 += v8;
        if (a6 >= 4)
        {
          v57 = *v9;
          v58 = a6 >> 2;
          do
          {
            v59 = v9[1];
            *a7 = (3 * v57 + v11 + v59) >> 2;
            v60 = v9[2];
            a7[1] = (3 * v59 + v11 + v60) >> 2;
            v61 = v9[3];
            a7[2] = (3 * v60 + v11 + v61) >> 2;
            v62 = v9[4];
            v9 += 4;
            v57 = v62;
            a7[3] = (3 * v61 + v11 + v62) >> 2;
            a7 += 4;
            --v58;
          }

          while (v58);
        }

        --v56;
      }

      while (v56);
    }
  }

  return result;
}

uint64_t Get8x8From16x16(uint64_t result, int a2, __int16 *a3)
{
  v3 = result + 2 * dword_27791E3F0[a2];
  v4 = 7;
  do
  {
    v5 = v4;
    v3 += 16;
    v6 = -8;
    do
    {
      *a3++ = *(v3 - 16);
      v3 += 2;
    }

    while (!__CFADD__(v6++, 1));
    v4 = v5 - 1;
  }

  while (v5);
  return result;
}

__int16 *Feed8x8To16x16(__int16 *result, int a2, __int16 *a3)
{
  v3 = &a3[dword_27791E3F0[a2]];
  v4 = 7;
  do
  {
    v5 = v4;
    v3 += 8;
    v6 = -8;
    do
    {
      v7 = *result++;
      *(v3 - 8) = v7;
      ++v3;
    }

    while (!__CFADD__(v6++, 1));
    v4 = v5 - 1;
  }

  while (v5);
  return result;
}

void InterpolateFrame(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 *a3, int a4, int a5, unsigned int a6, unsigned int a7, int a8, uint64_t a9)
{
  v299 = __PAIR64__(a6, a7);
  *&v332[414] = *MEMORY[0x277D85DE8];
  if (a5 / a8 >= 1)
  {
    v9 = a8;
    v10 = a4;
    v11 = a3;
    v12 = 0;
    v13 = a8;
    v14 = ~a8 + a4;
    v278 = &v305[a8];
    v297 = a4 / a8;
    v282 = a5 / a8;
    v283 = -v14;
    v294 = a8;
    __n = (a8 + 1);
    v288 = a8 + 3;
    v15 = v14;
    v290 = a8 >> 3;
    v16 = a9;
    v277 = &v327[(a8 + 1)];
    v279 = &v326[(a8 + 1)];
    v280 = a4;
    v17 = a4 - a8;
    v281 = a8 - a4;
    v301 = (a8 - 1) + 1;
    v286 = a8 + 4;
    v302 = v17;
    v287 = v15;
    while (1)
    {
      v284 = v12;
      if (v297 >= 1)
      {
        break;
      }

LABEL_267:
      v12 = v284 + 1;
      if (v284 + 1 == v282)
      {
        goto LABEL_268;
      }
    }

    v18 = 0;
    v296 = v12 * v280;
    while (1)
    {
      v19 = (v18 + v296) * v294;
      v20 = &a1[v19];
      v300 = v18;
      if (v16 > 2)
      {
        break;
      }

      if (v16 == 1)
      {
        v62 = HIDWORD(v299);
        if (SHIDWORD(v299) >= 1)
        {
          v62 = 1;
        }

        v63 = v299;
        if (v299 >= 1)
        {
          v63 = 1;
        }

        v299 = __PAIR64__(v62, v63);
        Get_HalfPel(&a1[v19], v10, v62, v63, 0, v9, __src);
        goto LABEL_55;
      }

      if (v16 == 2)
      {
        Blinear_8th(&a1[v19], v10, 2 * HIDWORD(v299), 2 * v299, 0, v9, __src);
        goto LABEL_55;
      }

LABEL_56:
      if (v9)
      {
        v64 = &a2[v19];
        v65 = __src;
        v66 = v9;
        do
        {
          memcpy(v64, v65, v13);
          v17 = v302;
          v65 += v301;
          v64 += v301 + v302;
          --v66;
        }

        while (v66);
      }

      v18 = v300 + 1;
      v10 = a4;
      v16 = a9;
      if (v300 + 1 == v297)
      {
        goto LABEL_267;
      }
    }

    if (v16 != 3)
    {
      if (v16 == 4)
      {
        Get_QuarterPel_MSFT(&a1[v19], v10, SHIDWORD(v299), v299, 0, v11, v9, __src);
      }

      else if (v16 == 5)
      {
        bzero(v326, 0x211uLL);
        bzero(v324, 0x211uLL);
        v323 = 0;
        v22.i32[1] = 0;
        v321 = 0u;
        v322 = 0u;
        v319 = 0u;
        v320 = 0u;
        v317 = 0u;
        v318 = 0u;
        v315 = 0u;
        v316 = 0u;
        v313 = 0u;
        v314 = 0u;
        v311 = 0u;
        v312 = 0u;
        v309 = 0u;
        v310 = 0u;
        v307 = 0u;
        v308 = 0u;
        *v305 = 0u;
        v306 = 0u;
        v23 = __n;
        v24.i64[0] = 0xFF000000FFLL;
        v24.i64[1] = 0xFF000000FFLL;
        v25 = xmmword_27791E3E0;
        v291 = v19;
        if ((v9 & 0x80000000) == 0)
        {
          v26 = 0;
          v27 = &v329;
          v28 = __n;
          do
          {
            memcpy(v27, &v20[v26], __n);
            v27 += 23;
            v26 += a4;
            --v28;
          }

          while (v28);
          v29 = 0;
          v30 = v326;
          v9 = a8;
          v24.i64[0] = 0xFF000000FFLL;
          v24.i64[1] = 0xFF000000FFLL;
          v25 = xmmword_27791E3E0;
          do
          {
            v31 = 69;
            for (i = 74; i != 71; --i)
            {
              v30[v31] = v30[i];
              v326[23 * v29 + 4 + v13 + v31++] = v326[23 * v29 - 2 + v13 + i];
            }

            ++v29;
            v30 += 23;
          }

          while (v29 != __n);
        }

        if (SHIDWORD(v299) > 1)
        {
          if (HIDWORD(v299) == 2)
          {
            if (v9 < 0)
            {
              goto LABEL_114;
            }

            v99 = 0;
            v100 = v330;
            v101 = v325;
            do
            {
              if (v9)
              {
                v102 = v100;
                v103 = v101;
                v104 = v13;
                do
                {
                  v21.i32[0] = *(v102 - 1);
                  v22.i32[0] = *v102;
                  v21 = vandq_s8(vmovl_u16(vrev64_s16(*&vmovl_u8(*v21.i8))), v24);
                  v22 = vmulq_s32(vaddw_u16(v21, *&vmovl_u8(*v22.i8)), v25);
                  v105 = vaddvq_s32(v22);
                  if (v105 >= -383)
                  {
                    v107 = v105 + 128;
                    v41 = v105 < -128;
                    v108 = v105 + 383;
                    if (!v41)
                    {
                      v108 = v107;
                    }

                    v106 = v108 >> 8;
                    if (v106 >= 0xFF)
                    {
                      LOBYTE(v106) = -1;
                    }
                  }

                  else
                  {
                    LOBYTE(v106) = 0;
                  }

                  *v103++ = v106;
                  v102 = (v102 + 1);
                  --v104;
                }

                while (v104);
              }

              ++v99;
              v101 += 23;
              v100 = (v100 + 23);
            }

            while (v99 != __n);
          }

          else
          {
            if (HIDWORD(v299) != 3)
            {
              goto LABEL_109;
            }

            if (v9 < 0)
            {
              goto LABEL_114;
            }

            v67 = 0;
            v68 = v305;
            v69 = v330;
            do
            {
              if (v9)
              {
                v70 = v69;
                v71 = v68;
                v72 = v13;
                do
                {
                  v21.i32[0] = *(v70 - 1);
                  v22.i32[0] = *v70;
                  v21 = vandq_s8(vmovl_u16(vrev64_s16(*&vmovl_u8(*v21.i8))), v24);
                  v22 = vmulq_s32(vaddw_u16(v21, *&vmovl_u8(*v22.i8)), v25);
                  v73 = vaddvq_s32(v22);
                  if (v73 >= -383)
                  {
                    v75 = v73 + 128;
                    v41 = v73 < -128;
                    v76 = v73 + 383;
                    if (!v41)
                    {
                      v76 = v75;
                    }

                    v74 = v76 >> 8;
                    if (v74 >= 0xFF)
                    {
                      LOBYTE(v74) = -1;
                    }
                  }

                  else
                  {
                    LOBYTE(v74) = 0;
                  }

                  *v71++ = v74;
                  v70 = (v70 + 1);
                  --v72;
                }

                while (v72);
              }

              ++v67;
              v68 += 17;
              v69 = (v69 + 23);
            }

            while (v67 != __n);
            v77 = 0;
            v78 = v305;
            v79 = v330;
            v80 = v325;
            do
            {
              if (v9)
              {
                v81 = v79;
                v82 = v78;
                v83 = v80;
                v84 = v13;
                do
                {
                  v86 = *v81++;
                  v85 = v86;
                  v87 = *v82++;
                  *v83++ = (v85 + v87 + 1) >> 1;
                  --v84;
                }

                while (v84);
              }

              ++v77;
              v80 += 23;
              v78 += 17;
              v79 += 23;
            }

            while (v77 != __n);
          }
        }

        else
        {
          if (HIDWORD(v299))
          {
            if (HIDWORD(v299) != 1)
            {
              goto LABEL_109;
            }

            if ((v9 & 0x80000000) == 0)
            {
              v33 = 0;
              v34 = v305;
              v35 = v330;
              do
              {
                if (v9)
                {
                  v36 = v35;
                  v37 = v34;
                  v38 = v13;
                  do
                  {
                    v21.i32[0] = *(v36 - 1);
                    v22.i32[0] = *v36;
                    v21 = vandq_s8(vmovl_u16(vrev64_s16(*&vmovl_u8(*v21.i8))), v24);
                    v22 = vmulq_s32(vaddw_u16(v21, *&vmovl_u8(*v22.i8)), v25);
                    v39 = vaddvq_s32(v22);
                    if (v39 >= -383)
                    {
                      v42 = v39 + 128;
                      v41 = v39 < -128;
                      v43 = v39 + 383;
                      if (!v41)
                      {
                        v43 = v42;
                      }

                      v40 = v43 >> 8;
                      if (v40 >= 0xFF)
                      {
                        LOBYTE(v40) = -1;
                      }
                    }

                    else
                    {
                      LOBYTE(v40) = 0;
                    }

                    *v37++ = v40;
                    v36 = (v36 + 1);
                    --v38;
                  }

                  while (v38);
                }

                ++v33;
                v34 += 17;
                v35 = (v35 + 23);
              }

              while (v33 != __n);
              v44 = 0;
              v45 = v305;
              v46 = &v329;
              v47 = v325;
              do
              {
                if (v9)
                {
                  v48 = v46;
                  v49 = v45;
                  v50 = v47;
                  v51 = v13;
                  do
                  {
                    v53 = *v48++;
                    v52 = v53;
                    v54 = *v49++;
                    *v50++ = (v52 + v54 + 1) >> 1;
                    --v51;
                  }

                  while (v51);
                }

                ++v44;
                v47 += 23;
                v45 += 17;
                v46 += 23;
              }

              while (v44 != __n);
              goto LABEL_109;
            }

LABEL_114:
            v111 = 0;
            v112 = v326;
            v113 = v332;
            v114 = v288;
            v115 = v286;
            v15 = v287;
            do
            {
              if (v9 >= 1)
              {
                v116 = &v326[23 * v115];
                v117 = v113;
                v118 = v112;
                v119 = v13;
                v120 = &v326[23 * v114];
                do
                {
                  v121 = *v117++;
                  *v118++ = v121;
                  v122 = *v120++;
                  *v116++ = v122;
                  --v119;
                }

                while (v119);
              }

              ++v111;
              ++v115;
              --v114;
              v112 += 23;
              v113 -= 23;
            }

            while (v111 != 3);
            if (v299 <= 1)
            {
              if (v299)
              {
                if (v299 != 1)
                {
                  goto LABEL_177;
                }

                if (v9 >= 1)
                {
                  v123 = 0;
                  v124 = v331;
                  v125 = v328;
                  do
                  {
                    v126 = 0;
                    v127 = v124;
                    v128 = v125;
                    do
                    {
                      v129 = 0;
                      v130 = 0;
                      v131 = v127;
                      v132 = v128;
                      do
                      {
                        v134 = *v132;
                        v132 -= 23;
                        v133 = v134;
                        v135 = *v131;
                        v131 += 23;
                        v130 += (v135 + v133) * *(&xmmword_27791E3E0 + v129);
                        v129 += 4;
                      }

                      while (v129 != 16);
                      if (v130 >= -383)
                      {
                        v137 = v130 + 128;
                        v41 = v130 < -128;
                        v138 = v130 + 383;
                        if (!v41)
                        {
                          v138 = v137;
                        }

                        v136 = v138 >> 8;
                        if (v136 >= 0xFF)
                        {
                          LOBYTE(v136) = -1;
                        }
                      }

                      else
                      {
                        LOBYTE(v136) = 0;
                      }

                      v305[17 * v123 + v126++] = v136;
                      ++v128;
                      ++v127;
                    }

                    while (v126 != v13);
                    ++v123;
                    v125 += 23;
                    v124 += 23;
                  }

                  while (v123 != v13);
                  v139 = 0;
                  v140 = v324;
                  v141 = v305;
                  v142 = v328;
                  do
                  {
                    v143 = v142;
                    v144 = v141;
                    v145 = v140;
                    v146 = v13;
                    do
                    {
                      v148 = *v143++;
                      v147 = v148;
                      v149 = *v144++;
                      *v145++ = (v147 + v149 + 1) >> 1;
                      --v146;
                    }

                    while (v146);
                    ++v139;
                    v140 += 23;
                    v141 += 17;
                    v142 += 23;
                  }

                  while (v139 != v13);
                  goto LABEL_177;
                }
              }

              else if (v9 >= 1)
              {
                v177 = v324;
                v178 = v328;
                v179 = v13;
                do
                {
                  memcpy(v177, v178, v13);
                  v177 += 23;
                  v178 += 23;
                  --v179;
                }

                while (v179);
                goto LABEL_177;
              }

LABEL_180:
              v17 = v302;
              v11 = a3;
              v19 = v291;
              goto LABEL_56;
            }

            if (v299 == 2)
            {
              if (v9 < 1)
              {
                goto LABEL_180;
              }

              v180 = 0;
              v181 = v331;
              v182 = v328;
              do
              {
                v183 = 0;
                v184 = v181;
                v185 = v182;
                do
                {
                  v186 = 0;
                  v187 = 0;
                  v188 = v184;
                  v189 = v185;
                  do
                  {
                    v191 = *v189;
                    v189 -= 23;
                    v190 = v191;
                    v192 = *v188;
                    v188 += 23;
                    v187 += (v192 + v190) * *(&xmmword_27791E3E0 + v186);
                    v186 += 4;
                  }

                  while (v186 != 16);
                  if (v187 >= -383)
                  {
                    v194 = v187 + 128;
                    v41 = v187 < -128;
                    v195 = v187 + 383;
                    if (!v41)
                    {
                      v195 = v194;
                    }

                    v193 = v195 >> 8;
                    if (v193 >= 0xFF)
                    {
                      LOBYTE(v193) = -1;
                    }
                  }

                  else
                  {
                    LOBYTE(v193) = 0;
                  }

                  v324[23 * v180 + v183++] = v193;
                  ++v185;
                  ++v184;
                }

                while (v183 != v13);
                ++v180;
                v182 += 23;
                v181 += 23;
              }

              while (v180 != v13);
            }

            else
            {
              if (v299 != 3)
              {
                goto LABEL_177;
              }

              if (v9 < 1)
              {
                goto LABEL_180;
              }

              v150 = 0;
              v151 = v331;
              v152 = v328;
              do
              {
                v153 = 0;
                v154 = v151;
                v155 = v152;
                do
                {
                  v156 = 0;
                  v157 = 0;
                  v158 = v154;
                  v159 = v155;
                  do
                  {
                    v161 = *v159;
                    v159 -= 23;
                    v160 = v161;
                    v162 = *v158;
                    v158 += 23;
                    v157 += (v162 + v160) * *(&xmmword_27791E3E0 + v156);
                    v156 += 4;
                  }

                  while (v156 != 16);
                  if (v157 >= -383)
                  {
                    v164 = v157 + 128;
                    v41 = v157 < -128;
                    v165 = v157 + 383;
                    if (!v41)
                    {
                      v165 = v164;
                    }

                    v163 = v165 >> 8;
                    if (v163 >= 0xFF)
                    {
                      LOBYTE(v163) = -1;
                    }
                  }

                  else
                  {
                    LOBYTE(v163) = 0;
                  }

                  v305[17 * v150 + v153++] = v163;
                  ++v155;
                  ++v154;
                }

                while (v153 != v13);
                ++v150;
                v152 += 23;
                v151 += 23;
              }

              while (v150 != v13);
              v166 = 0;
              v167 = v324;
              v168 = v305;
              v169 = v331;
              do
              {
                v170 = v169;
                v171 = v168;
                v172 = v167;
                v173 = v13;
                do
                {
                  v175 = *v170++;
                  v174 = v175;
                  v176 = *v171++;
                  *v172++ = (v174 + v176 + 1) >> 1;
                  --v173;
                }

                while (v173);
                ++v166;
                v167 += 23;
                v168 += 17;
                v169 += 23;
              }

              while (v166 != v13);
            }

LABEL_177:
            if (v9 >= 1)
            {
              v196 = 0;
              v197 = v324;
              v198 = v13;
              do
              {
                memcpy(&__src[v196], v197, v13);
                v196 += v9;
                v197 += 23;
                --v198;
              }

              while (v198);
            }

            goto LABEL_180;
          }

          if (v9 < 0)
          {
            goto LABEL_114;
          }

          v97 = &v329;
          v96 = v325;
          v98 = __n;
          do
          {
            if (v9)
            {
              memcpy(v96, v97, v13);
              v23 = __n;
            }

            v96 += 23;
            v97 += 23;
            --v98;
          }

          while (v98);
        }

LABEL_109:
        if ((v9 & 0x80000000) == 0)
        {
          v109 = v325;
          v110 = v328;
          do
          {
            if (v9)
            {
              memcpy(v110, v109, v13);
            }

            v110 += 23;
            v109 += 23;
            --v23;
          }

          while (v23);
        }

        goto LABEL_114;
      }

      goto LABEL_55;
    }

    if (!v299)
    {
      if (v9)
      {
        v88 = &v20[v281];
        v89 = __src;
        v90 = v9;
        do
        {
          v88 += v17;
          if (v9 >= 8)
          {
            v91 = v290;
            do
            {
              *v89 = *v88;
              *(v89 + 4) = *(v88 + 4);
              v89 += 8;
              v88 += 8;
              --v91;
            }

            while (v91);
          }

          --v90;
        }

        while (v90);
      }

      goto LABEL_56;
    }

    if (v9 != -1)
    {
      v55 = &v20[v283];
      v56 = v326;
      v57 = v9;
      do
      {
        v58 = v57;
        v59 = &v55[v15];
        if (v9 >= 8)
        {
          v60 = v290;
          do
          {
            *v56 = *v59;
            *(v56 + 4) = *(v59 + 4);
            v56 += 8;
            v59 += 8;
            --v60;
          }

          while (v60);
        }

        v61 = *v59;
        v55 = v59 + 1;
        *v56++ = v61;
        v57 = v58 - 1;
      }

      while (v58);
    }

    if (v299 == 0x200000000)
    {
      Get_HalfPel_Left(v326, __src, v9, 0, v11, 0);
    }

    else
    {
      switch(v299)
      {
        case 2uLL:
          v92 = v326;
          v93 = v9;
          v94 = v11;
          v95 = 1;
          break;
        case 1uLL:
          Get_HalfPel_Bottom(v326, v324, v9, 0, v11, 1);
          if (v9)
          {
            v199 = __src;
            v200 = v324;
            v201 = v326;
            v202 = v9;
            do
            {
              ++v201;
              v203 = v9;
              do
              {
                v204 = *v200++;
                *v199++ = (*(v201++ - 1) + v204 + 1) >> 1;
                --v203;
              }

              while (v203);
              --v202;
            }

            while (v202);
          }

          goto LABEL_55;
        case 3uLL:
          Get_HalfPel_Bottom(v326, v324, v9, 0, v11, 1);
          if (v9)
          {
            v205 = __src;
            v206 = v324;
            v207 = v9;
            v208 = v279;
            do
            {
              ++v208;
              v209 = v9;
              do
              {
                v210 = *v206++;
                *v205++ = (*(v208++ - 1) + v210 + 1) >> 1;
                --v209;
              }

              while (v209);
              --v207;
            }

            while (v207);
          }

          goto LABEL_55;
        case 0x100000000uLL:
          Get_HalfPel_Left(v326, v324, v9, 0, v11, 0);
          if (v9)
          {
            v211 = __src;
            v212 = v324;
            v213 = v326;
            v214 = v9;
            do
            {
              ++v213;
              v215 = v9;
              do
              {
                v216 = *v212++;
                *v211++ = (*(v213++ - 1) + v216 + 1) >> 1;
                --v215;
              }

              while (v215);
              --v214;
            }

            while (v214);
          }

          goto LABEL_55;
        case 0x300000000uLL:
          Get_HalfPel_Left(v326, v324, v9, 0, v11, 0);
          if (v9)
          {
            v217 = __src;
            v218 = v324;
            v219 = v9;
            v220 = v327;
            do
            {
              ++v220;
              v221 = v9;
              do
              {
                v222 = *v218++;
                *v217++ = (*(v220++ - 1) + v222 + 1) >> 1;
                --v221;
              }

              while (v221);
              --v219;
            }

            while (v219);
          }

          goto LABEL_55;
        default:
          if (v299 != 2)
          {
            if (v299 == 1)
            {
              Get_HalfPel_Left(v326, v305, v9, 0, v11, 1);
              Get_HalfPel_Bottom(v305, v304, v9, 0, v11, 0);
              switch(HIDWORD(v299))
              {
                case 2:
                  if (v9)
                  {
                    v223 = __src;
                    v224 = v304;
                    v225 = v305;
                    v226 = v9;
                    do
                    {
                      v227 = v9;
                      do
                      {
                        v229 = *v225++;
                        v228 = v229;
                        v230 = *v224++;
                        *v223++ = (v228 + v230 + 1) >> 1;
                        --v227;
                      }

                      while (v227);
                      --v226;
                    }

                    while (v226);
                  }

                  break;
                case 1:
                  Get_HalfPel_Bottom(v326, v324, v9, 0, v11, 1);
                  if (v9)
                  {
                    v248 = __src;
                    v249 = v324;
                    v250 = v304;
                    v251 = v305;
                    v252 = v326;
                    v253 = v9;
                    do
                    {
                      v254 = 0;
                      do
                      {
                        v248[v254] = (v252[v254] + v251[v254] + v250[v254] + v249[v254] + 2) >> 2;
                        ++v254;
                      }

                      while (v13 != v254);
                      v252 += v254 + 1;
                      v251 += v254;
                      v250 += v254;
                      v249 += v254;
                      v248 += v254;
                      --v253;
                    }

                    while (v253);
                  }

                  break;
                case 3:
                  Get_HalfPel_Bottom(v327, v324, v9, 0, v11, 1);
                  if (v9)
                  {
                    v262 = __src;
                    v263 = v324;
                    v264 = v304;
                    v265 = v305;
                    v266 = v9;
                    v267 = v327;
                    do
                    {
                      v268 = 0;
                      do
                      {
                        v262[v268] = (v267[v268] + v265[v268] + v264[v268] + v263[v268] + 2) >> 2;
                        ++v268;
                      }

                      while (v13 != v268);
                      v267 += v268 + 1;
                      v265 += v268;
                      v264 += v268;
                      v263 += v268;
                      v262 += v268;
                      --v266;
                    }

                    while (v266);
                  }

                  break;
              }
            }

            else
            {
              if (v299 != 3)
              {
                goto LABEL_56;
              }

              Get_HalfPel_Left(v326, v305, v9, 0, v11, 1);
              Get_HalfPel_Bottom(v305, v304, v9, 0, v11, 0);
              switch(HIDWORD(v299))
              {
                case 2:
                  if (v9)
                  {
                    v240 = __src;
                    v241 = v304;
                    v242 = v9;
                    v243 = v278;
                    do
                    {
                      v244 = v9;
                      do
                      {
                        v246 = *v243++;
                        v245 = v246;
                        v247 = *v241++;
                        *v240++ = (v245 + v247 + 1) >> 1;
                        --v244;
                      }

                      while (v244);
                      --v242;
                    }

                    while (v242);
                  }

                  break;
                case 1:
                  Get_HalfPel_Bottom(v326, v324, v9, 0, v11, 1);
                  if (v9)
                  {
                    v255 = __src;
                    v256 = v304;
                    v257 = v324;
                    v258 = v9;
                    v259 = v279;
                    v260 = v278;
                    do
                    {
                      v261 = 0;
                      do
                      {
                        v255[v261] = (v259[v261] + v260[v261] + v257[v261] + v256[v261] + 2) >> 2;
                        ++v261;
                      }

                      while (v13 != v261);
                      v259 += v261 + 1;
                      v260 += v261;
                      v257 += v261;
                      v256 += v261;
                      v255 += v261;
                      --v258;
                    }

                    while (v258);
                  }

                  break;
                case 3:
                  Get_HalfPel_Bottom(v327, v324, v9, 0, v11, 1);
                  if (v9)
                  {
                    v269 = __src;
                    v270 = v324;
                    v271 = v304;
                    v272 = v9;
                    v273 = v277;
                    v274 = v278;
                    do
                    {
                      v275 = 0;
                      do
                      {
                        v269[v275] = (v273[v275] + v274[v275] + v271[v275] + v270[v275] + 2) >> 2;
                        ++v275;
                      }

                      while (v13 != v275);
                      v273 += v275 + 1;
                      v274 += v275;
                      v271 += v275;
                      v270 += v275;
                      v269 += v275;
                      --v272;
                    }

                    while (v272);
                  }

                  break;
              }
            }

            goto LABEL_55;
          }

          Get_HalfPel_Left(v326, v324, v9, 0, v11, 1);
          v92 = v324;
          if (HIDWORD(v299) != 2)
          {
            Get_HalfPel_Bottom(v324, v305, v9, 0, v11, 0);
            if ((HIDWORD(v299) | 2) == 3)
            {
              if (HIDWORD(v299) == 1)
              {
                v231 = v326;
              }

              else
              {
                v231 = v327;
              }

              Get_HalfPel_Bottom(v231, v304, v9, 0, v11, 1);
            }

            if (v9)
            {
              v232 = __src;
              v233 = v305;
              v234 = v304;
              v235 = v9;
              do
              {
                v236 = v9;
                do
                {
                  v238 = *v234++;
                  v237 = v238;
                  v239 = *v233++;
                  *v232++ = (v237 + v239 + 1) >> 1;
                  --v236;
                }

                while (v236);
                --v235;
              }

              while (v235);
            }

            goto LABEL_55;
          }

          v93 = v9;
          v94 = v11;
          v95 = 0;
          break;
      }

      Get_HalfPel_Bottom(v92, __src, v93, 0, v94, v95);
    }

LABEL_55:
    v17 = v302;
    goto LABEL_56;
  }

LABEL_268:
  v276 = *MEMORY[0x277D85DE8];
}

uint64_t InterpolateWarpedPix(uint64_t result, int a2, int a3, int a4, int a5, int a6, int a7, int *a8, int *a9, unsigned __int8 *a10)
{
  if (a4)
  {
    v12 = dword_27791E400[a7];
    v13 = a2 - 1;
    v14 = a3 - 1;
    v15 = a2;
    v16 = (1 << (2 * a7 - 1)) - a5;
    v17 = a4;
    do
    {
      --v17;
      v18 = a4;
      do
      {
        v20 = *a8++;
        v19 = v20;
        v22 = *a9++;
        v21 = v22;
        v23 = v19 >> a7;
        v24 = v22 >> a7;
        v25 = v19 & v12;
        if (v23 >= v13)
        {
          v26 = v13;
        }

        else
        {
          v26 = v23;
        }

        if (v23 >= v13)
        {
          v25 = 0;
        }

        v27 = v23 >= 0;
        if (v23 >= 0)
        {
          v28 = v26;
        }

        else
        {
          v28 = 0;
        }

        if (!v27)
        {
          v25 = 0;
        }

        v29 = v21 & v12;
        if (v24 >= v14)
        {
          v30 = v14;
        }

        else
        {
          v30 = v24;
        }

        if (v24 >= v14)
        {
          v29 = 0;
        }

        v31 = v24 >= 0;
        if (v24 >= 0)
        {
          v32 = v30;
        }

        else
        {
          v32 = 0;
        }

        v33 = result + v15 * v32;
        if (!v31)
        {
          v29 = 0;
        }

        *a10++ = (v16 + ((a6 - v25) * *(v33 + v28) + v25 * *(v33 + v28 + 1)) * (a6 - v29) + ((a6 - v25) * *(v33 + v28 + v15) + v25 * *(v33 + v28 + v15 + 1)) * v29) >> (2 * a7);
        --v18;
      }

      while (v18);
    }

    while (v17);
  }

  return result;
}

double SetGMCWarpingParams(int a1, int a2, int *a3, int *a4, int a5, int a6, double *a7)
{
  result = 0.0;
  if (a2 >= 2)
  {
    v8 = 0;
    v9 = a2;
    do
    {
      ++v8;
      v10 = v9 > 3;
      v9 >>= 1;
    }

    while (v10);
    result = v8;
  }

  a7[1] = result;
  if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        *a7 = a2;
        result = (*a3 * a2 / 2);
        v11 = (*a4 * a2 / 2);
        a7[2] = result;
        a7[3] = v11;
      }
    }

    else
    {
      result = a2;
      *a7 = a2;
    }
  }

  else if (a1 == 2 || a1 == 3)
  {
    return GetAffineWarpingParams(a1, a2, a3, a4, a5, a6, a7);
  }

  else if (a1 == 4)
  {
    return GetPerspectiveWarpingParams(a2, a3, a4, a5, a6, a7);
  }

  return result;
}

uint64_t GetPowerOf2(int a1)
{
  if (a1 < 2)
  {
    return 0;
  }

  LODWORD(v1) = 0;
  do
  {
    v1 = (v1 + 1);
    v2 = a1 > 3;
    a1 = a1 >> 1;
  }

  while (v2);
  return v1;
}

double GetTranslationWarpingParams(int a1, int *a2, int *a3, double *a4)
{
  *a4 = a1;
  result = (*a2 * a1 / 2);
  v5 = (*a3 * a1 / 2);
  a4[2] = result;
  a4[3] = v5;
  return result;
}

double GetAffineWarpingParams(int a1, int a2, int *a3, int *a4, int a5, int a6, double *a7)
{
  result = a2;
  v8 = *a3;
  *a7 = a2;
  v9 = *a4;
  v10 = a2 * v8 * 0.5;
  v11 = a2 * v9 * 0.5;
  a7[2] = v10;
  a7[3] = v11;
  if (a1 != 1)
  {
    v12 = a5;
    v13 = (v8 + a5 * 2.0 + a3[1]) * result * 0.5;
    v14 = (v9 + a4[1]) * result * 0.5;
    a7[4] = v13;
    a7[5] = v14;
    if (a5 < 2)
    {
      v15 = 0;
      i = 1;
    }

    else
    {
      v15 = 0;
      for (i = 1; i < a5; i *= 2)
      {
        ++v15;
      }
    }

    if (a6 < 2)
    {
      v17 = 0;
      j = 1;
    }

    else
    {
      v17 = 0;
      for (j = 1; j < a6; j *= 2)
      {
        ++v17;
      }
    }

    v19 = 16 / a2;
    if (16 / a2 < 2)
    {
      v20 = 0;
    }

    else
    {
      v20 = 0;
      v21 = 16 / a2;
      do
      {
        ++v20;
        v22 = v21 > 3;
        v21 >>= 1;
      }

      while (v22);
    }

    v23 = i;
    v24 = j;
    v25 = v19;
    a7[13] = (v20 + v15);
    a7[14] = (v20 + v15 + 2);
    v26 = (a5 - i);
    v27 = v10 * v19;
    v28 = ((v12 * -16.0 + v19 * v13) * i + v26 * v27) / v12;
    v29 = v28 >= 0.0 ? 0.5 : -0.5;
    a7[17] = v24;
    a7[18] = v23;
    a7[10] = v25;
    a7[11] = (2 << (v20 + v15 - 2));
    v30 = v11 * v25;
    v31 = (v14 * v25 * v23 + v26 * v30) / v12;
    v32 = v31 >= 0.0 ? 0.5 : -0.5;
    a7[6] = (v28 + v29) + v23 * 16.0;
    a7[7] = (v31 + v32);
    if (a1 != 2)
    {
      v33 = a6;
      v34 = (v8 + a3[2]) * result * 0.5;
      v35 = (v9 + a6 * 2.0 + a4[2]) * result * 0.5;
      if (v15 == v17)
      {
        v36 = 1;
      }

      else if (v15 <= v17)
      {
        v36 = 2u >> (v17 + ~v15);
      }

      else
      {
        v36 = 2 << (v15 + ~v17);
      }

      v37 = a6 - j;
      v38 = (v34 * v25 * v24 + v37 * v27) / v33;
      if (v38 >= 0.0)
      {
        v39 = 0.5;
      }

      else
      {
        v39 = -0.5;
      }

      v40 = (v38 + v39);
      a7[12] = v36;
      v41 = ((v33 * -16.0 + v25 * v35) * v24 + v37 * v30) / v33;
      if (v41 >= 0.0)
      {
        v42 = 0.5;
      }

      else
      {
        v42 = -0.5;
      }

      result = (v41 + v42) + v24 * 16.0;
      a7[8] = v40;
      a7[9] = result;
    }
  }

  return result;
}

double GetPerspectiveWarpingParams(int a1, int *a2, int *a3, int a4, int a5, double *a6)
{
  v6 = *a2;
  v7 = a1 * v6 * 0.5;
  v8 = *a3;
  v9 = a1 * v8 * 0.5;
  v10 = v6 + a4 * 2.0;
  v11 = (v10 + a2[1]) * a1 * 0.5;
  v12 = (v8 + a3[1]) * a1 * 0.5;
  v13 = a2[2];
  v14 = (v6 + v13) * a1 * 0.5;
  v15 = v8 + a5 * 2.0 + a3[2];
  v16 = v15 * a1 * 0.5;
  v17 = (v10 + v13 + a2[3]) * a1 * 0.5;
  v18 = (v15 + a3[3]) * a1 * 0.5;
  v19 = v7 - v11 - v14 + v17;
  v20 = v16 - v18;
  v21 = v14 - v17;
  v22 = v9 - v12 - v16 + v18;
  v23 = (v19 * (v16 - v18) - (v14 - v17) * v22) * a5;
  v24 = v11 - v17;
  v25 = v12 - v18;
  v26 = (v24 * v22 - v19 * v25) * a4;
  v27 = v24 * v20 - v21 * v25;
  *a6 = a1;
  a6[2] = v11 * v23 + (v11 - v7) * v27 * a5;
  a6[3] = v14 * v26 + (v14 - v7) * v27 * a4;
  a6[4] = v7 * v27 * a4 * a5;
  a6[5] = v12 * v23 + (v12 - v9) * v27 * a5;
  a6[6] = v16 * v26 + (v16 - v9) * v27 * a4;
  a6[7] = v9 * v27 * a4 * a5;
  a6[8] = v23;
  a6[9] = v26;
  result = v27 * a4 * a5;
  a6[10] = v27;
  a6[11] = result;
  return result;
}

uint64_t GetMVGMC(uint64_t result, int a2, int a3, int a4, char a5, int *a6, int *a7, int a8, int *a9, int *a10)
{
  if (a3 < 1)
  {
    v12 = 0;
    v11 = 0;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 4 * (a3 - 1) + 4;
    v14 = result;
    do
    {
      v15 = 0;
      result = ((v10 + a2) << a5);
      do
      {
        v12 = v12 - ((v14 + v15) << a5) + a6[v15];
        v11 = v11 - result + a7[v15++];
      }

      while (a3 != v15);
      a7 = (a7 + v13);
      ++v10;
      a6 = (a6 + v13);
    }

    while (v10 != a3);
  }

  if (a8)
  {
    v16 = 64;
  }

  else
  {
    v16 = 128;
  }

  v17 = v16 << (a5 - 1);
  if (a8)
  {
    v18 = 6;
  }

  else
  {
    v18 = 7;
  }

  if (v12 >= 0)
  {
    v19 = v17;
  }

  else
  {
    v19 = v17 - 1;
  }

  if (v11 < 0)
  {
    --v17;
  }

  v20 = v18 + a5;
  *a9 = (v19 + v12) >> v20;
  *a10 = (v17 + v11) >> v20;
  return result;
}

uint64_t ExtendToPowerOf2(uint64_t result, int *a2, int *a3)
{
  if (result < 2)
  {
    v3 = 0;
    v4 = 1;
  }

  else
  {
    v3 = 0;
    v4 = 1;
    do
    {
      v4 *= 2;
      ++v3;
    }

    while (v4 < result);
  }

  *a2 = v4;
  *a3 = v3;
  return result;
}

uint64_t Divid_RoundPreferAway0(double a1, double a2)
{
  v2 = a1 / a2;
  v3 = 0.5;
  if (v2 < 0.0)
  {
    v3 = -0.5;
  }

  return (v2 + v3);
}

uint64_t Warp_Y(uint64_t result, uint64_t a2, int a3, int a4, double *a5, int *a6, int *a7)
{
  if (result <= 1)
  {
    if (result)
    {
      if (result == 1)
      {
        return Warp1_Y(a2, a3, a4, a5, a6, a7);
      }
    }

    else if (a4 >= 1)
    {
      v7 = *a5;
      v8 = a4 + a3;
      do
      {
        v9 = v7 * a2;
        v10 = a2;
        do
        {
          *a6++ = v9;
          *a7++ = a3 * v7;
          ++v10;
          v9 += v7;
        }

        while (v10 < a4 + a2);
        ++a3;
      }

      while (a3 < v8);
    }
  }

  else
  {
    switch(result)
    {
      case 2:
        return Warp2_Y(a2, a3, a4, a5, a6, a7);
      case 3:
        return Warp3_Y(a2, a3, a4, a5, a6, a7);
      case 4:
        return Warp4_Y(a2, a3, a4, a5, a6, a7);
    }
  }

  return result;
}

uint64_t Warp0(uint64_t result, int a2, int a3, double *a4, int *a5, int *a6)
{
  if (a3 >= 1)
  {
    v6 = *a4;
    v7 = a3 + a2;
    do
    {
      v8 = v6 * result;
      v9 = result;
      do
      {
        *a5++ = v8;
        *a6++ = a2 * v6;
        ++v9;
        v8 += v6;
      }

      while (v9 < a3 + result);
      ++a2;
    }

    while (a2 < v7);
  }

  return result;
}

uint64_t Warp1_Y(uint64_t result, int a2, int a3, double *a4, int *a5, int *a6)
{
  if (a3 >= 1)
  {
    v6 = a4[3];
    v7 = *a4;
    v8 = a3 + a2;
    v9 = a4[2] + v7 * result;
    do
    {
      v10 = v9;
      v11 = result;
      do
      {
        *a5++ = v10;
        *a6++ = v6 + a2 * v7;
        ++v11;
        v10 += v7;
      }

      while (v11 < a3 + result);
      ++a2;
    }

    while (a2 < v8);
  }

  return result;
}

uint64_t Warp2_Y(uint64_t result, int a2, int a3, double *a4, int *a5, int *a6)
{
  if (a3 >= 1)
  {
    v6 = a4[2];
    v7 = a4[3];
    v8 = a4[13];
    v9 = a4[11];
    v10 = a4[10];
    v11 = a4[7];
    v12 = a3 + a2;
    v13 = a3 + result;
    v14 = a4[6] - v10 * v6;
    v15 = v10 * v7 - v11;
    v16 = v11 - v10 * v7;
    v17 = v9 + a2 * v14 + result * v16;
    v18 = v9 + result * v14 + a2 * v15;
    do
    {
      v19 = v18;
      v20 = v17;
      v21 = result;
      do
      {
        *a5++ = (v19 >> v8) + v6;
        *a6++ = (v20 >> v8) + v7;
        ++v21;
        v20 += v16;
        v19 += v14;
      }

      while (v21 < v13);
      ++a2;
      v17 += v14;
      v18 += v15;
    }

    while (a2 < v12);
  }

  return result;
}

uint64_t Warp3_Y(uint64_t result, int a2, int a3, double *a4, int *a5, int *a6)
{
  if (a3 >= 1)
  {
    v6 = a4[2];
    v7 = a4[3];
    v8 = a4[13];
    v9 = a4[10];
    v10 = a4[11];
    v11 = a4[12];
    v12 = a3 + a2;
    v13 = a3 + result;
    v14 = a4[6] - v9 * v6;
    v15 = a4[8] - v9 * v6;
    v16 = a4[7] - v9 * v7;
    v17 = a4[9] - v9 * v7;
    v18 = v10 + v11 * a2 * v17 + result * v16;
    v19 = v11 * v17;
    v20 = v10 + v11 * a2 * v15 + result * v14;
    v21 = v11 * v15;
    do
    {
      v22 = v20;
      v23 = v18;
      v24 = result;
      do
      {
        *a5++ = (v22 >> v8) + v6;
        *a6++ = (v23 >> v8) + v7;
        ++v24;
        v23 += v16;
        v22 += v14;
      }

      while (v24 < v13);
      ++a2;
      v18 += v19;
      v20 += v21;
    }

    while (a2 < v12);
  }

  return result;
}

uint64_t Warp4_Y(uint64_t result, int a2, int a3, double *a4, int *a5, int *a6)
{
  if (a3 >= 1)
  {
    v6 = a4[11];
    v7 = a4[2];
    v8 = a4[3];
    v9 = a4[4];
    v10 = a4[5];
    v11 = a4[6];
    v12 = a4[7];
    v13 = a3 + a2;
    v14 = a4[8];
    v15 = a4[9];
    do
    {
      v16 = result;
      do
      {
        v17 = v6 + v15 * a2 + v14 * v16;
        *a5++ = ((v9 + v8 * a2 + v7 * v16) / v17 + 0.5);
        *a6++ = ((v12 + v11 * a2 + v10 * v16++) / v17 + 0.5);
      }

      while (v16 < a3 + result);
      ++a2;
    }

    while (a2 < v13);
  }

  return result;
}

uint64_t Warp_C(uint64_t result, uint64_t a2, int a3, int a4, double *a5, int *a6, int *a7)
{
  if (result <= 1)
  {
    if (result)
    {
      if (result == 1)
      {
        return Warp1_C(a2, a3, a4, a5, a6, a7);
      }
    }

    else if (a4 >= 1)
    {
      v7 = *a5;
      v8 = a4 + a3;
      do
      {
        v9 = v7 * a2;
        v10 = a2;
        do
        {
          *a6++ = v9;
          *a7++ = a3 * v7;
          ++v10;
          v9 += v7;
        }

        while (v10 < a4 + a2);
        ++a3;
      }

      while (a3 < v8);
    }
  }

  else
  {
    switch(result)
    {
      case 2:
        return Warp2_C(a2, a3, a4, a5, a6, a7);
      case 3:
        return Warp3_C(a2, a3, a4, a5, a6, a7);
      case 4:
        return Warp4_C(a2, a3, a4, a5, a6, a7);
    }
  }

  return result;
}

uint64_t Warp1_C(uint64_t result, int a2, int a3, double *a4, int *a5, int *a6)
{
  if (a3 >= 1)
  {
    v6 = *a4;
    v7 = a3 + a2;
    v8 = a4[2];
    v9 = a4[3] & 1 | (a4[3] >> 1);
    do
    {
      v10 = (v8 & 1 | (v8 >> 1)) + v6 * result;
      v11 = result;
      do
      {
        *a5++ = v10;
        *a6++ = v9 + a2 * v6;
        ++v11;
        v10 += v6;
      }

      while (v11 < a3 + result);
      ++a2;
    }

    while (a2 < v7);
  }

  return result;
}

uint64_t Warp2_C(uint64_t result, int a2, int a3, double *a4, int *a5, int *a6)
{
  if (a3 >= 1)
  {
    v6 = a4[11];
    v7 = a4[18];
    v8 = a4[10];
    v9 = a4[7];
    v10 = a4[6];
    v11 = a4[2];
    v12 = a4[13] + 2;
    v13 = a3 + a2;
    v14 = a3 + result;
    v15 = v10 - v8 * v11;
    v16 = v8 * a4[3];
    v17 = v9 - v16;
    v18 = v8 * v11;
    v19 = (4 * result) | 1;
    v20 = (4 * a2) | 1;
    v21 = v15 * v19 + v7 * (2 * v18 - 16) + (v16 - v9) * v20 + 4 * v6;
    v22 = 4 * v9;
    v23 = 4 * v16 - 4 * v9;
    v24 = 4 * v10 - 4 * v18;
    v25 = v15 * v20 + v7 * (2 * v16 - 16) + v17 * v19 + 4 * v6;
    do
    {
      v26 = v25;
      v27 = v21;
      v28 = result;
      do
      {
        *a5++ = v27 >> v12;
        *a6++ = v26 >> v12;
        ++v28;
        v27 += v24;
        v26 += v22 - 4 * v16;
      }

      while (v28 < v14);
      ++a2;
      v21 += v23;
      v25 += v24;
    }

    while (a2 < v13);
  }

  return result;
}

uint64_t Warp3_C(uint64_t result, int a2, int a3, double *a4, int *a5, int *a6)
{
  if (a3 >= 1)
  {
    v6 = a4[10];
    v7 = a4[11];
    v8 = a4[18];
    v9 = a4[12];
    v10 = a4[7];
    v11 = a4[6];
    v13 = a4[2];
    v12 = a4[3];
    v14 = a4[13] + 2;
    v15 = a3 + a2;
    v16 = a3 + result;
    v17 = v9 * (a4[8] - v6 * v13);
    v18 = (4 * a2) | 1;
    v19 = v6 * v13;
    v20 = (4 * result) | 1;
    v21 = v8 * (2 * v19 - 16) + v17 * v18 + (v11 - v19) * v20 + 4 * v7;
    v22 = 4 * v17;
    v23 = 4 * v11 - 4 * v19;
    v24 = v9 * (a4[9] - v6 * v12);
    v25 = v6 * v12;
    v26 = v8 * (2 * v25 - 16) + v24 * v18 + (v10 - v25) * v20 + 4 * v7;
    v27 = 4 * v24;
    v28 = 4 * v10 - 4 * v25;
    do
    {
      v29 = v26;
      v30 = v21;
      v31 = result;
      do
      {
        *a5++ = v30 >> v14;
        *a6++ = v29 >> v14;
        ++v31;
        v30 += v23;
        v29 += v28;
      }

      while (v31 < v16);
      ++a2;
      v21 += v22;
      v26 += v27;
    }

    while (a2 < v15);
  }

  return result;
}

uint64_t Warp4_C(uint64_t result, int a2, int a3, double *a4, int *a5, int *a6)
{
  if (a3 >= 1)
  {
    v6 = a4[11];
    v7 = *a4;
    v8 = v6 + v6;
    v9 = v6 * 8.0;
    v10 = a4[8];
    v11 = a4[9];
    v12 = a3 + a2;
    v13 = a4[7];
    v14 = a4[4];
    v15 = a4[2] + a4[2];
    v16 = a4[3] + a4[3];
    v17 = a4[5] + a4[5];
    v18 = a4[6] + a4[6];
    do
    {
      v19 = ((4 * a2) | 1);
      v20 = v11 * v19;
      v21 = v16 * v19;
      v22 = v11 * 4.0 * v19;
      v23 = v18 * v19;
      v24 = (4 * result) | 1;
      v25 = result;
      do
      {
        v26 = v7 * (v8 + v20 + v10 * v24);
        v27 = v9 + v22 + v10 * 4.0 * v24;
        *a5++ = ((v21 + v15 * v24 + v14 * 4.0 - v26) / v27 + 0.5);
        *a6++ = ((v23 + v17 * v24 + v13 * 4.0 - v26) / v27 + 0.5);
        ++v25;
        v24 += 4;
      }

      while (v25 < a3 + result);
      ++a2;
    }

    while (a2 < v12);
  }

  return result;
}

unsigned __int8 *Get_HalfPel_Left(unsigned __int8 *result, unsigned __int8 *a2, int a3, int a4, const unsigned __int8 *a5, int a6)
{
  if (a6)
  {
    v6 = a3 + 1;
  }

  else
  {
    v6 = a3;
  }

  if (v6)
  {
    v7 = a3 - 5;
    do
    {
      v8 = result[2];
      v9 = result[1];
      v10 = *result;
      v11 = result[3];
      v12 = result + 5;
      v13 = result[4];
      if (v7)
      {
        v14 = v7;
        v15 = v10;
        v16 = v9;
        v17 = v8;
        do
        {
          v18 = v16;
          v16 = v15;
          v15 = v10;
          v10 = v9;
          v9 = v8;
          v8 = v11;
          v11 = v13;
          v19 = 160 * (v10 + v15) - a4 - 48 * (v9 + v16) + 24 * (v8 + v18) - 8 * (v13 + v17);
          v20 = v19 + 128;
          v21 = v19 + 383;
          if (v20 >= 0)
          {
            v21 = v20;
          }

          *a2++ = a5[v21 >> 8];
          v22 = *v12++;
          v13 = v22;
          v17 = v18;
          --v14;
        }

        while (v14);
      }

      else
      {
        v15 = v10;
        v16 = v9;
        v18 = v8;
      }

      v23 = 160 * (v9 + v10) - a4 - 48 * (v8 + v15) + 24 * (v11 + v16) - 8 * (v18 + v13);
      v24 = v23 + 128;
      v25 = v23 + 383;
      if (v24 >= 0)
      {
        v25 = v24;
      }

      *a2 = a5[v25 >> 8];
      v26 = *v12;
      v27 = 160 * (v8 + v9) - a4 - 48 * (v11 + v10) + 24 * (v15 + v13) - 8 * (v16 + v26);
      v28 = v27 + 128;
      v29 = v27 + 383;
      if (v28 >= 0)
      {
        v29 = v28;
      }

      a2[1] = a5[v29 >> 8];
      v30 = *v12;
      v31 = 160 * (v11 + v8) - a4 - 48 * (v9 + v13) + 24 * (v10 + v26) - 8 * (v15 + v30);
      v32 = v31 + 128;
      v33 = v31 + 383;
      if (v32 >= 0)
      {
        v33 = v32;
      }

      a2[2] = a5[v33 >> 8];
      v34 = *(v12 - 1);
      v35 = 160 * (v11 + v13) - a4 - 48 * (v8 + v26) + 24 * (v9 + v30) - 8 * (v10 + v34);
      v36 = v35 + 128;
      v37 = v35 + 383;
      if (v36 >= 0)
      {
        v37 = v36;
      }

      a2[3] = a5[v37 >> 8];
      v38 = 160 * (v26 + v13) - a4 - 48 * (v11 + v30) + 24 * (v8 + v34) - 8 * (v9 + *(v12 - 2));
      v39 = v38 + 128;
      v40 = v38 + 383;
      if (v39 >= 0)
      {
        v40 = v39;
      }

      a2[4] = a5[v40 >> 8];
      a2 += 5;
      result = v12 + 1;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t Get_HalfPel_Bottom(uint64_t result, unsigned __int8 *a2, int a3, int a4, const unsigned __int8 *a5, int a6)
{
  if (a6)
  {
    v6 = a3 + 1;
  }

  else
  {
    v6 = a3;
  }

  v7 = 2 * v6;
  v8 = (result + 2 * v6);
  v9 = (result + v6);
  v10 = &v9[v6];
  v11 = &v10[v6];
  v12 = &v11[v6];
  v13 = &v12[v6];
  if (a3 == 5)
  {
    v14 = result;
    v15 = v9;
LABEL_6:
    v114 = v7;
    v16 = a3;
    v17 = v12;
    v18 = v11;
    v19 = v10;
    v20 = v9;
    v21 = result;
    v22 = v14;
    v23 = v15;
    do
    {
      v25 = *v8++;
      v24 = v25;
      v27 = *v23++;
      v26 = v27;
      v29 = *v22++;
      v28 = v29;
      v31 = *v21++;
      v30 = v31;
      v33 = *v20++;
      v32 = v33;
      v35 = *v19++;
      v34 = v35;
      v37 = *v18++;
      v36 = v37;
      v38 = *v17++;
      v39 = 160 * (v32 + v30) - a4 - 48 * (v34 + v28) + 24 * (v36 + v26) - 8 * (v38 + v24);
      v40 = v39 + 128;
      v41 = v39 + 383;
      if (v40 >= 0)
      {
        v41 = v40;
      }

      *a2++ = a5[v41 >> 8];
      --v16;
    }

    while (v16);
    v42 = 0;
    do
    {
      v43 = 160 * (v10[v42] + v9[v42]) - a4 - 48 * (v11[v42] + *(result + v42)) + 24 * (v12[v42] + v14[v42]) - 8 * (v13[v42] + v15[v42]);
      v44 = v43 + 128;
      v45 = v43 + 383;
      if (v44 >= 0)
      {
        v45 = v44;
      }

      a2[v42++] = a5[v45 >> 8];
    }

    while (a3 != v42);
    v46 = &a2[v42];
    v47 = a3;
    v48 = v13;
    v49 = v12;
    v50 = v11;
    v51 = v10;
    v52 = v9;
    v53 = result;
    do
    {
      v55 = *v14++;
      v54 = v55;
      v57 = *v53++;
      v56 = v57;
      v59 = *v52++;
      v58 = v59;
      v61 = *v51++;
      v60 = v61;
      v63 = *v50++;
      v62 = v63;
      v65 = *v49++;
      v64 = v65;
      v66 = *v48++;
      v67 = 160 * (v62 + v60) - a4 - 48 * (v64 + v58) + 24 * (v66 + v56) - 8 * (v66 + v54);
      v68 = v67 + 128;
      v69 = v67 + 383;
      if (v68 >= 0)
      {
        v69 = v68;
      }

      *v46++ = a5[v69 >> 8];
      --v47;
    }

    while (v47);
    v70 = a3;
    v71 = v12;
    v72 = v13;
    v73 = v11;
    v74 = v10;
    v75 = v9;
    do
    {
      v77 = *result++;
      v76 = v77;
      v79 = *v75++;
      v78 = v79;
      v81 = *v74++;
      v80 = v81;
      v83 = *v73++;
      v82 = v83;
      v85 = *v71++;
      v84 = v85;
      v86 = *v72++;
      v87 = 160 * (v84 + v82) - a4 - 48 * (v86 + v80) + 24 * (v86 + v78) - 8 * (v84 + v76);
      v88 = v87 + 128;
      v89 = v87 + 383;
      if (v88 >= 0)
      {
        v89 = v88;
      }

      *v46++ = a5[v89 >> 8];
      --v70;
    }

    while (v70);
    do
    {
      v91 = *v9++;
      v90 = v91;
      v93 = *v10++;
      v92 = v93;
      v95 = *v11++;
      v94 = v95;
      v96 = *v12++;
      v97 = 160 * (*v13 + v96) - a4 - 48 * (*v13 + v94) + 24 * (v96 + v92) - 8 * (v13[-v114] + v90);
      v98 = v97 + 128;
      v99 = v97 + 383;
      if (v98 >= 0)
      {
        v99 = v98;
      }

      result = a5[v99 >> 8];
      *v46++ = result;
      ++v13;
      --a3;
    }

    while (a3);
  }

  else
  {
    v100 = v6;
    v101 = a3 - 6;
    v14 = result;
    v15 = v9;
    while (1)
    {
      v102 = v8;
      v103 = v15;
      v104 = v14;
      v105 = result;
      v106 = v9;
      v107 = v10;
      v108 = v11;
      v11 = v12;
      v109 = v101;
      v12 = v13;
      v10 = v108;
      v9 = v107;
      result = v106;
      v14 = v105;
      v15 = v104;
      v8 = v103;
      if (!a3)
      {
        break;
      }

      v110 = 0;
      do
      {
        v111 = 160 * (*(v106 + v110) + *(v105 + v110)) - a4 - 48 * (*(v107 + v110) + v104[v110]) + 24 * (v108[v110] + v8[v110]) - 8 * (v11[v110] + v102[v110]);
        v112 = v111 + 128;
        v113 = v111 + 383;
        if (v112 >= 0)
        {
          v113 = v112;
        }

        a2[v110++] = a5[v113 >> 8];
      }

      while (a3 != v110);
      v13 = &v12[v100];
      --v101;
      a2 += v110;
      if (!v109)
      {
        goto LABEL_6;
      }
    }

    while (v109)
    {
      result = v107;
      --v109;
      v107 = v108;
      v108 = v11;
      v11 = v13;
      v13 += v100;
    }
  }

  return result;
}

uint64_t InitMotionVectorArray(void **a1, int a2, int a3)
{
  v6 = *a1;
  if (v6)
  {
    result = MEM_Dispose(v6);
    if (result)
    {
      return result;
    }

    *a1 = 0;
  }

  v8 = MEM_NewClear((a2 * a3) >> 5);
  *a1 = v8;
  if (v8)
  {
    return 0;
  }

  else
  {
    return 4294967188;
  }
}

void *KillMotionVectorArray(void **a1)
{
  result = *a1;
  if (result)
  {
    result = MEM_Dispose(result);
    if (!result)
    {
      *a1 = 0;
    }
  }

  return result;
}

uint64_t GetPredictor1MV(int a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  if (a1)
  {
    v5 = a5 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  v8 = a2 - 1 != a1 && a2 - 1 <= a5;
  if (v6)
  {
    v9 = *(a3 + 4 * a1 - 2);
  }

  else
  {
    v9 = 0;
  }

  if (a5 < a2)
  {
    v10 = 0;
    v11 = v9;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v10 = *(a4 + 4 * a1);
    v11 = v10;
    if (!v8)
    {
LABEL_18:
      v12 = 0;
      goto LABEL_21;
    }
  }

  v12 = *(a4 + 4 * a1 + 4);
  v11 = v12;
LABEL_21:
  v13 = v6 + (a5 >= a2) + v8;
  v14 = v9;
  v15 = v12;
  if (v12 >= v9)
  {
    v12 = v9;
  }

  if (v15 < v10)
  {
    v12 = v10;
  }

  v16 = v10;
  if (v15 < v10)
  {
    v16 = v15;
  }

  if (v15 >= v9)
  {
    v9 = v16;
  }

  if (v14 < v10)
  {
    v17 = v9;
  }

  else
  {
    v17 = v12;
  }

  if (v13 == 1)
  {
    return v11;
  }

  else
  {
    return v17;
  }
}

uint64_t GetPredictor4MV(int a1, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10)
{
  LOWORD(v10) = 0;
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        v16 = 4 * a2;
        v17 = *(a6 + v16);
        v10 = *(a5 + v16);
        v18 = *(a5 + 2 * ((2 * a2) | 1));
        if (v17 >= v10)
        {
          v19 = v10;
        }

        else
        {
          v19 = v17;
        }

        if (v17 > v10)
        {
          v10 = v17;
        }

        if (v18 < v10)
        {
          LOWORD(v10) = *(a5 + 2 * ((2 * a2) | 1));
        }

        if (v18 < v19)
        {
          LOWORD(v10) = v19;
        }
      }

      return v10;
    }

    LOWORD(v13) = 0;
    LOWORD(v14) = *(a5 + 4 * a2);
    v21 = *(a5 + 2 * ((2 * a2) | 1));
    if (a2 && a10)
    {
      LOWORD(v13) = *(a6 + 4 * a2 - 2);
    }

    v22 = v14;
    v13 = v13;
    v23 = v13 <= v14;
    if (v13 >= v14)
    {
      v14 = v14;
    }

    else
    {
      v14 = v13;
    }

    if (v23)
    {
      v13 = v22;
    }

    if (v21 < v13)
    {
      LOWORD(v13) = *(a5 + 2 * ((2 * a2) | 1));
    }

    v24 = v21 < v14;
LABEL_38:
    if (v24)
    {
      LOWORD(v10) = v14;
    }

    else
    {
      LOWORD(v10) = v13;
    }

    return v10;
  }

  if (!a1)
  {
    return GetPredictor1MV(a2, a4, a5, a7, a10);
  }

  if (a1 == 1)
  {
    v12 = a4 - 1 != a2 && a4 - 1 <= a10;
    v13 = *(a5 + 4 * a2);
    if (a10 >= a4)
    {
      LOWORD(v14) = *(a7 + 2 * ((2 * a2) | 1));
      LOWORD(v10) = v14;
      if (!v12)
      {
        goto LABEL_12;
      }
    }

    else
    {
      LOWORD(v14) = 0;
      LOWORD(v10) = *(a5 + 4 * a2);
      if (!v12)
      {
LABEL_12:
        v15 = 0;
LABEL_43:
        if (a10 < a4)
        {
          v25 = 1;
        }

        else
        {
          v25 = 2;
        }

        if (v25 + v12 == 1)
        {
          return v10;
        }

        if (v13 < v14)
        {
          if (v15 < v14)
          {
            LOWORD(v14) = v15;
          }

          if (v15 >= v13)
          {
            LOWORD(v10) = v14;
          }

          else
          {
            LOWORD(v10) = *(a5 + 4 * a2);
          }

          return v10;
        }

        if (v15 < v13)
        {
          LOWORD(v13) = v15;
        }

        v24 = v15 < v14;
        goto LABEL_38;
      }
    }

    v15 = *(a7 + 4 * a2 + 4);
    LOWORD(v10) = v15;
    goto LABEL_43;
  }

  return v10;
}

uint64_t *SwapMVrow(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = *result;
  *result = v2;
  return result;
}

uint64_t VerifyMotionVectorRange(int a1, int a2)
{
  v2 = a2 - 2 * a1;
  if (a2 < a1)
  {
    v2 = a2;
  }

  if (a2 + a1 < 0 != __OFADD__(a2, a1))
  {
    return (a2 + 2 * a1);
  }

  return v2;
}

uint64_t VerifyMotionVectorBoarderY(int a1, int a2, int a3)
{
  if (-16 - a1 > a3)
  {
    v3 = -17 - a1;
  }

  else
  {
    v3 = a3;
  }

  if (a2 - a1 - 32 <= a3)
  {
    return (a2 - a1 - 33);
  }

  else
  {
    return v3;
  }
}

uint64_t VerifyMotionVectorBoarder16Pad(int a1, int a2, __int16 *a3, _BYTE *a4)
{
  v4 = *a3;
  v5 = a2 - a1 - 33;
  if (v5 <= v4 || (LOWORD(v5) = -15 - a1, -15 - a1 > v4))
  {
    *a3 = v5;
    *a4 = 0;
  }

  return *a3;
}

uint64_t VerifyMotionVectorBoarder8Pad(int a1, int a2, __int16 *a3, _BYTE *a4)
{
  v4 = *a3;
  v5 = a2 - a1 - 17;
  if (v5 <= v4 || (LOWORD(v5) = -7 - a1, -7 - a1 >= v4))
  {
    *a3 = v5;
    *a4 = 0;
  }

  return *a3;
}

uint64_t GetChromaVector(int16x4_t *a1)
{
  v1 = vaddv_s16(*a1);
  v2 = v1 < 0;
  if (v1 < 0)
  {
    v1 = -v1;
  }

  v3 = ((v1 >> 3) & 0x1FFE) + dword_27791E414[v1 & 0xF];
  if (v2)
  {
    v3 = -v3;
  }

  return v3;
}

uint64_t QLuma_To_HChroma(int a1)
{
  if (a1 >= 0)
  {
    v1 = a1;
  }

  else
  {
    v1 = -a1;
  }

  v2 = dword_27791E460[v1 & 3] + ((v1 >> 1) & 0x7FFE);
  if (a1 < 0)
  {
    v2 = -v2;
  }

  return v2;
}

void *CBitStreamDeco::SetUp(void *this, unsigned int a2, unsigned int *a3)
{
  v3 = this;
  if (a2)
  {
    v6 = *(this + 3) + *(this + 2);
    *this = 0;
    *(this + 2) = 0;
    *(this + 3) = v6;
    *(this + 39) = 0;
    *(this + 40) = (8 * a2 + 24) & 0xFFFFFFE0;
    this = malloc_type_malloc(a2 + 8, 0x100004052888210uLL);
    v3[2] = this;
    if (a3 && this)
    {

      return memcpy(this, a3, a2);
    }
  }

  else
  {
    *(this + 40) = 0;
    this[2] = 0;
  }

  return this;
}

uint64_t KillBitStreamDeco(CBitStreamDeco **a1)
{
  v2 = *a1;
  if (v2)
  {
    MEMORY[0x277CB0F50](v2, 0x1010C40DD62BBE2);
    *a1 = 0;
  }

  return 0;
}

void CBitStreamDeco::ReleaseBuffer(CBitStreamDeco *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    free(v1);
  }
}

uint64_t DecHeaderVOS(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 156);
  v3 = v2 + 8;
  *(a1 + 156) = v2 + 8;
  v4 = *(a1 + 4);
  if (v4 > 7)
  {
    v6 = v4 - 8;
    *(a1 + 4) = v4 - 8;
    v14 = *a1;
    v11 = *a1 >> (v4 - 8);
    v12 = v11 & *(a1 + 56);
    *(a2 + 101) = v11 & *(a1 + 56);
    v13 = v2 + 40;
    *(a1 + 156) = v13;
    if ((v4 - 8) >= 0x20)
    {
      v6 = v4 - 40;
      v15 = (v14 >> (v4 - 40)) & *(a1 + 152);
      goto LABEL_20;
    }

    if (v4 == 8)
    {
      v15 = 0;
      v4 = 32;
      goto LABEL_13;
    }

    LODWORD(v4) = 40 - v4;
  }

  else
  {
    v5 = 8 - v4;
    v6 = v4 | 0x18;
    *(a1 + 4) = v4 | 0x18;
    v7 = (*a1 << (8 - v4)) & *(a1 + 56);
    v8 = *(a1 + 160);
    v9 = *(a1 + 8);
    if (v3 > v8 || 32 * v9 > v8)
    {
      v14 = 0;
      *(a1 + 8) = v9 + 1;
      *a1 = 0;
    }

    else
    {
      v14 = bswap32(*(*(a1 + 16) + 4 * v9));
      *a1 = v14;
      *(a1 + 8) = v9 + 1;
      v7 |= *(a1 + 4 * v5 + 24) & (v14 >> v6);
    }

    *(a2 + 101) = v7;
    v13 = v2 + 40;
    *(a1 + 156) = v13;
    LODWORD(v4) = 32 - v6;
  }

  v4 = v4;
  v15 = (v14 << v4) & *(a1 + 152);
LABEL_13:
  v16 = *(a1 + 160);
  v17 = *(a1 + 8);
  if (v13 > v16 || 32 * v17 > v16)
  {
    *(a1 + 8) = v17 + 1;
    *a1 = 0;
  }

  else
  {
    v19 = bswap32(*(*(a1 + 16) + 4 * v17));
    *a1 = v19;
    *(a1 + 8) = v17 + 1;
    v15 |= *(a1 + 4 * v4 + 24) & (v19 >> v6);
  }

LABEL_20:
  *(a1 + 4) = v6 + 32;
  if (v6)
  {
    v20 = *(a1 + 8);
    *(a1 + 4) = v6;
    *(a1 + 8) = v20 - 1;
    if (*(a1 + 160) >= (32 * (v20 - 1)))
    {
      *a1 = bswap32(*(*(a1 + 16) + 4 * (v20 - 2)));
    }
  }

  *(a1 + 156) = v3;
  if (v15 == 434)
  {
    EatUserData(a1);
  }

  return 0;
}

uint64_t CBitStreamDeco::GrabBits(CBitStreamDeco *this, unsigned int a2)
{
  v2 = *(this + 39) + a2;
  *(this + 39) = v2;
  v3 = *(this + 1);
  v4 = v3 - a2;
  if (v3 >= a2)
  {
    *(this + 1) = v4;
    return ((*this >> v4) & *(this + a2 + 6));
  }

  else
  {
    v5 = a2 - v3;
    *(this + 1) = 32 - v5;
    if (v5 <= 0x1F)
    {
      v6 = ((*this << v5) & *(this + a2 + 6));
    }

    else
    {
      v6 = 0;
    }

    v7 = *(this + 40);
    v8 = *(this + 2);
    if (v2 > v7 || 32 * v8 > v7)
    {
      *(this + 2) = v8 + 1;
      *this = 0;
    }

    else
    {
      v10 = bswap32(*(*(this + 2) + 4 * v8));
      *this = v10;
      *(this + 2) = v8 + 1;
      return *(this + v5 + 6) & (v10 >> (32 - v5)) | v6;
    }
  }

  return v6;
}

uint64_t EatUserData(uint64_t result)
{
  v1 = *(result + 156);
  *(result + 156) = v1 + 24;
  v2 = *(result + 4);
  if (v2 <= 0x17)
  {
    v3 = v2 + 8;
    *(result + 4) = v2 + 8;
    v4 = *(result + 160);
    v5 = *(result + 8);
    if (v1 + 24 > v4 || 32 * v5 > v4)
    {
      *(result + 8) = v5 + 1;
      *result = 0;
    }

    else
    {
      *result = bswap32(*(*(result + 16) + 4 * v5));
      *(result + 8) = v5 + 1;
    }

    v7 = v1 + 32;
    *(result + 156) = v7;
    goto LABEL_16;
  }

  v3 = v2 - 24;
  v7 = v1 + 32;
  *(result + 156) = v7;
  if ((v2 - 24) >= 8)
  {
LABEL_16:
    v8 = v3 - 8;
    *(result + 4) = v3 - 8;
    v23 = *result;
    v9 = (*result >> v8) & *(result + 56);
    goto LABEL_17;
  }

  v8 = v3 | 0x18;
  *(result + 4) = v3 | 0x18;
  v9 = (*result << -v2) & *(result + 56);
  v10 = *(result + 160);
  v11 = *(result + 8);
  if (v7 > v10 || 32 * v11 > v10)
  {
    v23 = 0;
    *(result + 8) = v11 + 1;
    *result = 0;
  }

  else
  {
    v23 = bswap32(*(*(result + 16) + 4 * v11));
    *result = v23;
    *(result + 8) = v11 + 1;
    v9 |= *(result + 4 * (32 - v2) + 24) & (v23 >> v8);
  }

LABEL_17:
  if (v9 == 178)
  {
    while (1)
    {
      *(result + 156) = v7 + 24;
      v13 = v8 - 24;
      if (v8 >= 0x18)
      {
        v15 = (v23 >> v13) & *(result + 120);
      }

      else
      {
        v14 = 24 - v8;
        v13 = v8 + 8;
        *(result + 4) = v8 + 8;
        v15 = (v23 << (24 - v8)) & *(result + 120);
        v16 = *(result + 160);
        v17 = *(result + 8);
        if (v7 + 24 > v16 || 32 * v17 > v16)
        {
          v23 = 0;
          *(result + 8) = v17 + 1;
          *result = 0;
        }

        else
        {
          v23 = bswap32(*(*(result + 16) + 4 * v17));
          *result = v23;
          *(result + 8) = v17 + 1;
          v15 |= *(result + 24 + 4 * v14) & (v23 >> v13);
        }
      }

      v19 = v13 + 24;
      *(result + 4) = v13 + 24;
      if (v13 + 24 >= 0x21)
      {
        v19 = v13 - 8;
        v20 = *(result + 8);
        *(result + 4) = v19;
        *(result + 8) = v20 - 1;
        if (*(result + 160) >= (32 * (v20 - 1)))
        {
          v23 = bswap32(*(*(result + 16) + 4 * (v20 - 2)));
          *result = v23;
        }
      }

      *(result + 156) = v7;
      if (v15 == 1)
      {
        break;
      }

      v21 = *(result + 160);
      if (v7 >= v21)
      {
        break;
      }

      v7 += 8;
      *(result + 156) = v7;
      v8 = v19 - 8;
      if (v19 >= 8)
      {
        *(result + 4) = v8;
      }

      else
      {
        v8 = v19 | 0x18;
        *(result + 4) = v19 | 0x18;
        v22 = *(result + 8);
        if (v7 > v21 || 32 * v22 > v21)
        {
          v23 = 0;
          *(result + 8) = v22 + 1;
          *result = 0;
        }

        else
        {
          v23 = bswap32(*(*(result + 16) + 4 * v22));
          *result = v23;
          *(result + 8) = v22 + 1;
        }
      }
    }
  }

  return result;
}

uint64_t DecHeaderVO(CBitStreamDeco *a1, uint64_t a2)
{
  v4 = *(a1 + 39);
  v5 = v4 + 1;
  *(a1 + 39) = v4 + 1;
  v6 = *(a1 + 1);
  if (!v6)
  {
    *(a1 + 1) = 31;
    v16 = *(a1 + 40);
    v17 = *(a1 + 2);
    if (v5 > v16 || 32 * v17 > v16)
    {
      v7 = 0;
      *a1 = 0;
      *(a1 + 2) = v17 + 1;
      *(a2 + 8) = 0;
    }

    else
    {
      v7 = bswap32(*(*(a1 + 2) + 4 * v17));
      *a1 = v7;
      *(a1 + 2) = v17 + 1;
      *(a2 + 8) = (v7 & 0x80000000) != 0;
      if ((v7 & 0x80000000) != 0)
      {
        v8 = 31;
        goto LABEL_20;
      }
    }

    v19 = v4 + 5;
    *(a1 + 39) = v19;
    v8 = 31;
    goto LABEL_33;
  }

  v7 = *a1;
  v8 = v6 - 1;
  v9 = *a1 >> (v6 - 1);
  *(a2 + 8) = v9 & 1;
  if ((v9 & 1) == 0)
  {
    goto LABEL_26;
  }

  *(a1 + 39) = v4 + 5;
  if (v6 <= 4)
  {
    v10 = 5 - v6;
    v11 = v8 | 0x1C;
    *(a1 + 1) = v8 | 0x1C;
    v12 = (v7 << v10) & *(a1 + 10);
    v13 = *(a1 + 40);
    v14 = *(a1 + 2);
    if (v4 + 5 > v13 || 32 * v14 > v13)
    {
      v7 = 0;
      *(a1 + 2) = v14 + 1;
      *a1 = 0;
    }

    else
    {
      v7 = bswap32(*(*(a1 + 2) + 4 * v14));
      *a1 = v7;
      *(a1 + 2) = v14 + 1;
      v12 |= *(a1 + v10 + 6) & (v7 >> v11);
    }

    *(a2 + 9) = v12;
    v5 = v4 + 8;
    goto LABEL_24;
  }

LABEL_20:
  v11 = v8 - 4;
  *(a2 + 9) = (v7 >> (v8 - 4)) & *(a1 + 10);
  v5 = v4 + 8;
  *(a1 + 39) = v4 + 8;
  if (v8 - 4 < 3)
  {
    v20 = 7 - v8;
    v8 += 25;
    *(a1 + 1) = v8;
    v21 = (v7 << v20) & *(a1 + 9);
    v22 = *(a1 + 40);
    v23 = *(a1 + 2);
    if (v5 > v22 || 32 * v23 > v22)
    {
      v7 = 0;
      *(a1 + 2) = v23 + 1;
      *a1 = 0;
    }

    else
    {
      v7 = bswap32(*(*(a1 + 2) + 4 * v23));
      *a1 = v7;
      *(a1 + 2) = v23 + 1;
      v21 |= *(a1 + v20 + 6) & (v7 >> v8);
    }

    goto LABEL_25;
  }

LABEL_24:
  v8 = v11 - 3;
  v21 = (v7 >> (v11 - 3)) & *(a1 + 9);
LABEL_25:
  *(a2 + 10) = v21;
LABEL_26:
  v19 = v5 + 4;
  *(a1 + 39) = v5 + 4;
  if (v8 < 4)
  {
    v24 = 4 - v8;
    v25 = v8 | 0x1C;
    *(a1 + 1) = v8 | 0x1C;
    v26 = (v7 << (4 - v8)) & *(a1 + 10);
    v27 = *(a1 + 40);
    v28 = *(a1 + 2);
    if (v19 > v27 || 32 * v28 > v27)
    {
      v7 = 0;
      *(a1 + 2) = v28 + 1;
      *a1 = 0;
    }

    else
    {
      v7 = bswap32(*(*(a1 + 2) + 4 * v28));
      *a1 = v7;
      *(a1 + 2) = v28 + 1;
      v26 |= *(a1 + v24 + 6) & (v7 >> v25);
    }

    goto LABEL_34;
  }

LABEL_33:
  v25 = v8 - 4;
  *(a1 + 1) = v8 - 4;
  v26 = (v7 >> (v8 - 4)) & *(a1 + 10);
LABEL_34:
  v30 = v26;
  *(a2 + 11) = v26;
  if (v26 - 1 > 1)
  {
    goto LABEL_94;
  }

  v19 = v5 + 5;
  *(a1 + 39) = v5 + 5;
  if (v25)
  {
    *(a1 + 1) = --v25;
    v31 = (v7 >> v25) & 1;
  }

  else
  {
    *(a1 + 1) = 31;
    v32 = *(a1 + 40);
    v33 = *(a1 + 2);
    if (v19 > v32 || 32 * v33 > v32)
    {
      v7 = 0;
      v31 = 0;
      *a1 = 0;
      *(a1 + 2) = v33 + 1;
    }

    else
    {
      v7 = bswap32(*(*(a1 + 2) + 4 * v33));
      *a1 = v7;
      *(a1 + 2) = v33 + 1;
      v31 = v7 >> 31;
    }

    v25 = 31;
  }

  *(a2 + 12) = v31;
  *(a2 + 14) = 5;
  *(a2 + 17) = 257;
  *(a2 + 19) = 1;
  if (!v31)
  {
    goto LABEL_94;
  }

  *(a1 + 39) = v5 + 8;
  if (v25 > 2)
  {
    v39 = *(a1 + 9);
    *(a1 + 39) = v5 + 9;
    v35 = v25 - 3;
    v40 = (v7 >> v35) & v39;
    v41 = v40;
    *(a2 + 14) = v40;
    if (!v35)
    {
      *(a1 + 1) = 31;
      v42 = *(a1 + 7);
      v43 = 2 * v7;
      v44 = *(a1 + 40);
      v45 = *(a1 + 2);
      if (v5 + 9 > v44 || 32 * v45 > v44)
      {
        v7 = 0;
        LOBYTE(v43) = v43 & v42;
        *(a1 + 2) = v45 + 1;
        *a1 = 0;
      }

      else
      {
        v7 = bswap32(*(*(a1 + 2) + 4 * v45));
        *a1 = v7;
        *(a1 + 2) = v45 + 1;
        v43 = v42 & (v43 | (v7 >> 31));
      }

      *(a2 + 15) = v43;
      v19 = v5 + 10;
      *(a1 + 39) = v5 + 10;
      v46 = 31;
      goto LABEL_62;
    }
  }

  else
  {
    v34 = 3 - v25;
    v35 = v25 + 29;
    *(a1 + 1) = v35;
    v36 = (v7 << v34) & *(a1 + 9);
    v37 = *(a1 + 40);
    v38 = *(a1 + 2);
    if (v5 + 8 > v37 || 32 * v38 > v37)
    {
      v7 = 0;
      *(a1 + 2) = v38 + 1;
      *a1 = 0;
    }

    else
    {
      v7 = bswap32(*(*(a1 + 2) + 4 * v38));
      *a1 = v7;
      *(a1 + 2) = v38 + 1;
      v36 |= *(a1 + v34 + 6) & (v7 >> v35);
    }

    v41 = v36;
    *(a2 + 14) = v36;
  }

  v42 = *(a1 + 7);
  v19 = v5 + 10;
  *(a1 + 39) = v5 + 10;
  v46 = v35 - 1;
  *(a2 + 15) = (v7 >> v46) & v42;
  if (v46)
  {
LABEL_62:
    v25 = v46 - 1;
    *(a1 + 1) = v25;
    v42 &= v7 >> v25;
    goto LABEL_63;
  }

  *(a1 + 1) = 31;
  v47 = 2 * v7;
  v48 = *(a1 + 40);
  v49 = *(a1 + 2);
  if (v19 > v48 || 32 * v49 > v48)
  {
    v7 = 0;
    LOBYTE(v42) = v47 & v42;
    *(a1 + 2) = v49 + 1;
    *a1 = 0;
  }

  else
  {
    v7 = bswap32(*(*(a1 + 2) + 4 * v49));
    *a1 = v7;
    *(a1 + 2) = v49 + 1;
    v42 &= v47 | (v7 >> 31);
  }

  v25 = 31;
LABEL_63:
  *(a2 + 16) = v42;
  if (!v42)
  {
    v56 = 1;
    v57 = 1;
    v58 = 1;
    goto LABEL_84;
  }

  *(a1 + 39) = v5 + 18;
  if (v25 > 7)
  {
    v51 = v25 - 8;
    v52 = *(a1 + 14);
    v58 = (v7 >> (v25 - 8)) & v52;
    *(a2 + 17) = (v7 >> (v25 - 8)) & v52;
    *(a1 + 39) = v5 + 26;
    if (v25 - 8 <= 7)
    {
      v59 = 16 - v25;
      v60 = v51 | 0x18;
      *(a1 + 1) = v51 | 0x18;
      v61 = (v7 << v59) & v52;
      v62 = *(a1 + 40);
      v63 = *(a1 + 2);
      if (v5 + 26 > v62 || 32 * v63 > v62)
      {
        v7 = 0;
        *(a1 + 2) = v63 + 1;
        *a1 = 0;
      }

      else
      {
        v7 = bswap32(*(*(a1 + 2) + 4 * v63));
        *a1 = v7;
        *(a1 + 2) = v63 + 1;
        v61 |= *(a1 + v59 + 6) & (v7 >> v60);
      }

      v57 = v61;
      *(a2 + 18) = v61;
      v19 = v5 + 34;
      *(a1 + 39) = v5 + 34;
      goto LABEL_82;
    }
  }

  else
  {
    v50 = 8 - v25;
    v51 = v25 | 0x18;
    *(a1 + 1) = v25 | 0x18;
    v52 = *(a1 + 14);
    v53 = (v7 << (8 - v25)) & v52;
    v54 = *(a1 + 40);
    v55 = *(a1 + 2);
    if (v5 + 18 > v54 || 32 * v55 > v54)
    {
      v7 = 0;
      *(a1 + 2) = v55 + 1;
      *a1 = 0;
    }

    else
    {
      v7 = bswap32(*(*(a1 + 2) + 4 * v55));
      *a1 = v7;
      *(a1 + 2) = v55 + 1;
      v53 |= *(a1 + v50 + 6) & (v7 >> v51);
    }

    v58 = v53;
    *(a2 + 17) = v53;
  }

  v60 = v51 - 8;
  v57 = (v7 >> (v51 - 8)) & v52;
  *(a2 + 18) = (v7 >> (v51 - 8)) & v52;
  v19 = v5 + 34;
  *(a1 + 39) = v5 + 34;
  if ((v51 - 8) < 8)
  {
    v64 = 16 - v51;
    v25 = v60 | 0x18;
    *(a1 + 1) = v25;
    v65 = (v7 << v64) & v52;
    v66 = *(a1 + 40);
    v67 = *(a1 + 2);
    if (v19 > v66 || 32 * v67 > v66)
    {
      v7 = 0;
      *(a1 + 2) = v67 + 1;
      *a1 = 0;
    }

    else
    {
      v7 = bswap32(*(*(a1 + 2) + 4 * v67));
      *a1 = v7;
      *(a1 + 2) = v67 + 1;
      v65 |= *(a1 + v64 + 6) & (v7 >> v25);
    }

    goto LABEL_83;
  }

LABEL_82:
  v25 = v60 - 8;
  *(a1 + 1) = v25;
  v65 = (v7 >> v25) & v52;
LABEL_83:
  v56 = v65;
  *(a2 + 19) = v65;
LABEL_84:
  if (v41 > 5)
  {
    return 7778;
  }

  result = 7778;
  if (v58 && v58 != 3 && v58 <= 8 && v57 && v57 != 3 && v57 <= 0xA && v56 && v56 != 3 && v56 <= 7)
  {
LABEL_94:
    v69 = v19 + 1;
    *(a1 + 39) = v19 + 1;
    if (v25)
    {
      v70 = v25 - 1;
      v71 = (v25 - 1) & 7;
      if (!v71)
      {
LABEL_105:
        *(a1 + 1) = v70;
        *(a1 + 39) = v69 + 32;
        if (v70 >= 0x20)
        {
          v76 = (v7 >> v70) & *(a1 + 38);
          v70 -= 32;
        }

        else
        {
          v75 = 32 - v70;
          if (v70)
          {
            v76 = (v7 << v75) & *(a1 + 38);
          }

          else
          {
            v76 = 0;
          }

          v77 = *(a1 + 40);
          v78 = *(a1 + 2);
          if (v69 + 32 > v77 || 32 * v78 > v77)
          {
            *(a1 + 2) = v78 + 1;
            *a1 = 0;
          }

          else
          {
            v79 = bswap32(*(*(a1 + 2) + 4 * v78));
            *a1 = v79;
            *(a1 + 2) = v78 + 1;
            v76 |= *(a1 + v75 + 6) & (v79 >> v70);
          }
        }

        *(a1 + 1) = v70 + 32;
        if (v70)
        {
          v80 = *(a1 + 2);
          *(a1 + 1) = v70;
          *(a1 + 2) = v80 - 1;
          if (*(a1 + 40) >= (32 * (v80 - 1)))
          {
            *a1 = bswap32(*(*(a1 + 2) + 4 * (v80 - 2)));
          }
        }

        *(a1 + 39) = v69;
        if (v76 == 434)
        {
          EatUserData(a1);
          v30 = *(a2 + 11);
        }

        if (v30 == 1)
        {
          v81 = *(a1 + 39);
          *(a1 + 39) = v81 + 24;
          v82 = *(a1 + 1);
          if (v82 > 0x17)
          {
            v83 = v82 - 24;
            v86 = v81 + 32;
            *(a1 + 39) = v81 + 32;
            if ((v82 - 24) < 8)
            {
              v87 = v83 | 0x18;
              *(a1 + 1) = v87;
              v88 = (*a1 << -v82) & *(a1 + 14);
              v89 = *(a1 + 40);
              v90 = *(a1 + 2);
              if (v86 > v89 || 32 * v90 > v89)
              {
                *(a1 + 2) = v90 + 1;
                *a1 = 0;
              }

              else
              {
                v91 = bswap32(*(*(a1 + 2) + 4 * v90));
                *a1 = v91;
                *(a1 + 2) = v90 + 1;
                v88 |= *(a1 + 32 - v82 + 6) & (v91 >> v87);
              }

              goto LABEL_132;
            }
          }

          else
          {
            v83 = v82 + 8;
            *(a1 + 1) = v82 + 8;
            v84 = *(a1 + 40);
            v85 = *(a1 + 2);
            if (v81 + 24 > v84 || 32 * v85 > v84)
            {
              *(a1 + 2) = v85 + 1;
              *a1 = 0;
            }

            else
            {
              *a1 = bswap32(*(*(a1 + 2) + 4 * v85));
              *(a1 + 2) = v85 + 1;
            }

            *(a1 + 39) = v81 + 32;
          }

          *(a1 + 1) = v83 - 8;
          v88 = (*a1 >> (v83 - 8)) & *(a1 + 14);
LABEL_132:
          result = 0;
          *(a2 + 13) = v88;
          return result;
        }

        return 7778;
      }
    }

    else
    {
      *(a1 + 1) = 31;
      v72 = *(a1 + 40);
      v73 = *(a1 + 2);
      if (v69 > v72 || 32 * v73 > v72)
      {
        v7 = 0;
      }

      else
      {
        v7 = bswap32(*(*(a1 + 2) + 4 * v73));
      }

      *a1 = v7;
      *(a1 + 2) = v73 + 1;
      v70 = 31;
      v71 = 7;
    }

    v69 += v71;
    v70 &= 0xFFFFFFF8;
    goto LABEL_105;
  }

  return result;
}

uint64_t CBitStreamDeco::GrabBit(CBitStreamDeco *this)
{
  v1 = *(this + 39) + 1;
  *(this + 39) = v1;
  v2 = *(this + 1);
  if (v2)
  {
    v3 = *this;
    v4 = v2 - 1;
    *(this + 1) = v4;
    return (v3 >> v4) & 1;
  }

  else
  {
    *(this + 1) = 31;
    v6 = *(this + 40);
    v7 = *(this + 2);
    v8 = 32 * v7;
    if (v1 <= v6)
    {
      v9 = v8 >= v6;
      v10 = v8 == v6;
    }

    else
    {
      v9 = 1;
      v10 = 0;
    }

    if (!v10 && v9)
    {
      v5 = 0;
      *this = 0;
      *(this + 2) = v7 + 1;
    }

    else
    {
      v11 = bswap32(*(*(this + 2) + 4 * v7));
      *this = v11;
      *(this + 2) = v7 + 1;
      return v11 >> 31;
    }
  }

  return v5;
}

uint64_t CBitStreamDeco::NextStartCode(CBitStreamDeco *this)
{
  result = CBitStreamDeco::GrabBit(this);
  v3 = *(this + 1);
  if ((v3 & 7) != 0)
  {
    *(this + 39) += *(this + 1) & 7;
    *(this + 1) = v3 & 0xFFFFFFF8;
  }

  return result;
}

uint64_t DecHeaderVOL(CBitStreamDeco *this, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (*(v2 + 21))
  {
    return 0;
  }

  v6 = *(this + 39);
  *(this + 39) = v6 + 1;
  v7 = *(this + 1);
  if (!v7)
  {
    *(this + 1) = 31;
    v9 = *(this + 7);
    v17 = 2 * *this;
    v18 = *(this + 40);
    v19 = *(this + 2);
    if (v6 + 1 > v18 || 32 * v19 > v18)
    {
      v10 = 0;
      LOBYTE(v17) = v17 & v9;
      *(this + 2) = v19 + 1;
      *this = 0;
    }

    else
    {
      v10 = bswap32(*(*(this + 2) + 4 * v19));
      *this = v10;
      *(this + 2) = v19 + 1;
      v17 = v9 & (v17 | (v10 >> 31));
    }

    *(v2 + 22) = v17;
    *(this + 39) = v6 + 9;
    v8 = 31;
    goto LABEL_15;
  }

  v8 = v7 - 1;
  v9 = *(this + 7);
  v10 = *this;
  *(v2 + 22) = (*this >> (v7 - 1)) & v9;
  *(this + 39) = v6 + 9;
  if (v7 >= 9)
  {
LABEL_15:
    v12 = v8 - 8;
    *(this + 1) = v8 - 8;
    v13 = *(this + 14);
    v14 = (v10 >> (v8 - 8)) & v13;
    goto LABEL_16;
  }

  v11 = 9 - v7;
  v12 = v8 | 0x18;
  *(this + 1) = v8 | 0x18;
  v13 = *(this + 14);
  v14 = (v10 << v11) & v13;
  v15 = *(this + 40);
  v16 = *(this + 2);
  if (v6 + 9 > v15 || 32 * v16 > v15)
  {
    v10 = 0;
    *(this + 2) = v16 + 1;
    *this = 0;
  }

  else
  {
    v10 = bswap32(*(*(this + 2) + 4 * v16));
    *this = v10;
    *(this + 2) = v16 + 1;
    v14 |= *(this + v11 + 6) & (v10 >> v12);
  }

LABEL_16:
  *(v2 + 23) = v14;
  if (v14 == 18)
  {
    return 7779;
  }

  v21 = v6 + 10;
  *(this + 39) = v6 + 10;
  if (!v12)
  {
    *(this + 1) = 31;
    v29 = *(this + 40);
    v30 = *(this + 2);
    if (v21 > v29 || 32 * v30 > v29)
    {
      v10 = 0;
      *this = 0;
      *(this + 2) = v30 + 1;
      *(v2 + 24) = 0;
    }

    else
    {
      v10 = bswap32(*(*(this + 2) + 4 * v30));
      *this = v10;
      *(this + 2) = v30 + 1;
      *(v2 + 24) = (v10 & 0x80000000) != 0;
      if ((v10 & 0x80000000) != 0)
      {
        *(this + 39) = v6 + 14;
        v22 = 31;
        goto LABEL_27;
      }
    }

    v22 = 31;
LABEL_31:
    v31 = 1;
    *(v2 + 25) = 1;
    goto LABEL_41;
  }

  v22 = v12 - 1;
  *(this + 1) = v12 - 1;
  v23 = v10 >> (v12 - 1);
  *(v2 + 24) = v23 & 1;
  if ((v23 & 1) == 0)
  {
    goto LABEL_31;
  }

  *(this + 39) = v6 + 14;
  if (v12 < 5)
  {
    v24 = 5 - v12;
    v25 = v22 | 0x1C;
    *(this + 1) = v22 | 0x1C;
    v26 = (v10 << (5 - v12)) & *(this + 10);
    v27 = *(this + 40);
    v28 = *(this + 2);
    if (v6 + 14 > v27 || 32 * v28 > v27)
    {
      v10 = 0;
      *(this + 2) = v28 + 1;
      *this = 0;
    }

    else
    {
      v10 = bswap32(*(*(this + 2) + 4 * v28));
      *this = v10;
      *(this + 2) = v28 + 1;
      v26 |= *(this + v24 + 6) & (v10 >> v25);
    }

    goto LABEL_33;
  }

LABEL_27:
  v25 = v22 - 4;
  *(this + 1) = v22 - 4;
  v26 = (v10 >> (v22 - 4)) & *(this + 10);
LABEL_33:
  *(v2 + 25) = v26;
  if (v26 - 1 > 1)
  {
    return 7779;
  }

  v21 = v6 + 17;
  *(this + 39) = v6 + 17;
  v22 = v25 - 3;
  if (v25 >= 3)
  {
    *(this + 1) = v22;
    v33 = (v10 >> v22) & *(this + 9);
  }

  else
  {
    v32 = 3 - v25;
    v22 = v25 + 29;
    *(this + 1) = v25 + 29;
    v33 = (v10 << (3 - v25)) & *(this + 9);
    v34 = *(this + 40);
    v35 = *(this + 2);
    if (v21 > v34 || 32 * v35 > v34)
    {
      v10 = 0;
      *(this + 2) = v35 + 1;
      *this = 0;
    }

    else
    {
      v10 = bswap32(*(*(this + 2) + 4 * v35));
      *this = v10;
      *(this + 2) = v35 + 1;
      v33 |= *(this + v32 + 6) & (v10 >> v22);
    }
  }

  *(v2 + 26) = v33;
  v31 = v26 == 1;
LABEL_41:
  v36 = v21 + 4;
  *(this + 39) = v21 + 4;
  v37 = v22 - 4;
  if (v22 >= 4)
  {
    v39 = *(this + 10);
    v40 = (v10 >> v37) & v39;
  }

  else
  {
    v38 = 4 - v22;
    v37 = v22 | 0x1C;
    *(this + 1) = v22 | 0x1C;
    v39 = *(this + 10);
    v40 = (v10 << v38) & v39;
    v41 = *(this + 40);
    v42 = *(this + 2);
    if (v36 > v41 || 32 * v42 > v41)
    {
      v10 = 0;
      *(this + 2) = v42 + 1;
      *this = 0;
    }

    else
    {
      v10 = bswap32(*(*(this + 2) + 4 * v42));
      *this = v10;
      *(this + 2) = v42 + 1;
      v40 |= *(this + v38 + 6) & (v10 >> v37);
    }
  }

  *(v2 + 27) = v40;
  if (v40 == 15)
  {
    *(this + 39) = v21 + 12;
    if (v37 > 7)
    {
      v44 = v37 - 8;
      *(v2 + 28) = (v10 >> (v37 - 8)) & v13;
      v36 = v21 + 20;
      *(this + 39) = v21 + 20;
      if (v37 - 8 < 8)
      {
        v48 = 16 - v37;
        v37 = v44 | 0x18;
        *(this + 1) = v44 | 0x18;
        v49 = (v10 << v48) & v13;
        v50 = *(this + 40);
        v51 = *(this + 2);
        if (v36 > v50 || 32 * v51 > v50)
        {
          v10 = 0;
          *(this + 2) = v51 + 1;
          *this = 0;
        }

        else
        {
          v10 = bswap32(*(*(this + 2) + 4 * v51));
          *this = v10;
          *(this + 2) = v51 + 1;
          v49 |= *(this + v48 + 6) & (v10 >> v37);
        }

        goto LABEL_59;
      }
    }

    else
    {
      v43 = 8 - v37;
      v44 = v37 | 0x18;
      *(this + 1) = v37 | 0x18;
      v45 = (v10 << (8 - v37)) & v13;
      v46 = *(this + 40);
      v47 = *(this + 2);
      if (v21 + 12 > v46 || 32 * v47 > v46)
      {
        v10 = 0;
        *(this + 2) = v47 + 1;
        *this = 0;
      }

      else
      {
        v10 = bswap32(*(*(this + 2) + 4 * v47));
        *this = v10;
        *(this + 2) = v47 + 1;
        v45 |= *(this + v43 + 6) & (v10 >> v44);
      }

      *(v2 + 28) = v45;
      v36 = v21 + 20;
      *(this + 39) = v21 + 20;
    }

    v37 = v44 - 8;
    v49 = (v10 >> (v44 - 8)) & v13;
LABEL_59:
    *(v2 + 29) = v49;
  }

  v52 = v36 + 1;
  *(this + 39) = v36 + 1;
  if (v37)
  {
    v53 = v37 - 1;
    v54 = v10 >> (v37 - 1);
    *(v2 + 30) = v54 & 1;
    if ((v54 & 1) == 0)
    {
      goto LABEL_103;
    }

    *(this + 39) = v36 + 3;
    if (v37 <= 2)
    {
      v55 = 3 - v37;
      v56 = v53 | 0x1E;
      *(this + 1) = v56;
      v57 = (v10 << v55) & *(this + 8);
      v58 = *(this + 40);
      v59 = *(this + 2);
      if (v36 + 3 > v58 || 32 * v59 > v58)
      {
        v10 = 0;
        *(this + 2) = v59 + 1;
        *this = 0;
      }

      else
      {
        v10 = bswap32(*(*(this + 2) + 4 * v59));
        *this = v10;
        *(this + 2) = v59 + 1;
        v57 |= *(this + v55 + 6) & (v10 >> v56);
      }

      *(v2 + 31) = v57;
      goto LABEL_76;
    }
  }

  else
  {
    *(this + 1) = 31;
    v60 = *(this + 40);
    v61 = *(this + 2);
    if (v52 > v60 || 32 * v61 > v60)
    {
      v10 = 0;
      *this = 0;
      *(this + 2) = v61 + 1;
      *(v2 + 30) = 0;
      goto LABEL_83;
    }

    v10 = bswap32(*(*(this + 2) + 4 * v61));
    *this = v10;
    *(this + 2) = v61 + 1;
    *(v2 + 30) = (v10 & 0x80000000) != 0;
    v53 = 31;
    if ((v10 & 0x80000000) == 0)
    {
      goto LABEL_84;
    }
  }

  v62 = *(this + 8);
  *(this + 39) = v36 + 4;
  v56 = v53 - 2;
  *(v2 + 31) = (v10 >> v56) & v62;
  if (!v56)
  {
    *(this + 1) = 31;
    v63 = 2 * v10;
    v64 = *(this + 40);
    v65 = *(this + 2);
    if (v36 + 4 > v64 || 32 * v65 > v64)
    {
      v10 = 0;
      LOBYTE(v9) = v63 & v9;
      *(this + 2) = v65 + 1;
      *this = 0;
    }

    else
    {
      v10 = bswap32(*(*(this + 2) + 4 * v65));
      *this = v10;
      *(this + 2) = v65 + 1;
      v9 &= v63 | (v10 >> 31);
    }

    *(v2 + 32) = v9;
    v52 = v36 + 5;
    *(this + 39) = v36 + 5;
    v66 = 31;
    goto LABEL_87;
  }

LABEL_76:
  v52 = v36 + 5;
  *(this + 39) = v36 + 5;
  v66 = v56 - 1;
  *(v2 + 32) = (v10 >> (v56 - 1)) & v9;
  if (v56 == 1)
  {
    *(this + 1) = 31;
    v67 = *(this + 40);
    v68 = *(this + 2);
    if (v52 <= v67 && 32 * v68 <= v67)
    {
      v10 = bswap32(*(*(this + 2) + 4 * v68));
      *this = v10;
      *(this + 2) = v68 + 1;
      *(v2 + 33) = (v10 & 0x80000000) != 0;
      v53 = 31;
      if ((v10 & 0x80000000) != 0)
      {
LABEL_92:
        v66 = v53 - 31;
        goto LABEL_94;
      }

LABEL_84:
      *(this + 39) = v52 + 2;
LABEL_107:
      v78 = v53 - 2;
      *(this + 1) = v53 - 2;
      v79 = (v10 >> (v53 - 2)) & *(this + 8);
      goto LABEL_108;
    }

    v10 = 0;
    *this = 0;
    *(this + 2) = v68 + 1;
    *(v2 + 33) = 0;
LABEL_83:
    v53 = 31;
    goto LABEL_84;
  }

LABEL_87:
  v53 = v66 - 1;
  v69 = v10 >> (v66 - 1);
  *(v2 + 33) = v69 & 1;
  if ((v69 & 1) == 0)
  {
    goto LABEL_103;
  }

  *(this + 39) = v36 + 36;
  if (v66 >= 0x20)
  {
    goto LABEL_92;
  }

  *(this + 1) = v66;
  v70 = *(this + 40);
  v71 = *(this + 2);
  if (v36 + 36 > v70 || 32 * v71 > v70)
  {
    v10 = 0;
    *(this + 2) = v71 + 1;
    *this = 0;
  }

  else
  {
    v10 = bswap32(*(*(this + 2) + 4 * v71));
    *this = v10;
    *(this + 2) = v71 + 1;
  }

LABEL_94:
  *(this + 39) = v36 + 67;
  v72 = v66 - 31;
  if (v66 < 0x1F)
  {
    v72 = v66 + 1;
    *(this + 1) = v66 + 1;
    v73 = *(this + 40);
    v74 = *(this + 2);
    if (v36 + 67 > v73 || 32 * v74 > v73)
    {
      v10 = 0;
      *(this + 2) = v74 + 1;
      *this = 0;
    }

    else
    {
      v10 = bswap32(*(*(this + 2) + 4 * v74));
      *this = v10;
      *(this + 2) = v74 + 1;
    }
  }

  v52 = v36 + 84;
  *(this + 39) = v36 + 84;
  v53 = v72 - 17;
  if (v72 < 0x11)
  {
    v53 = v72 + 15;
    *(this + 1) = v72 + 15;
    v75 = *(this + 40);
    v76 = *(this + 2);
    if (v52 > v75 || 32 * v76 > v75)
    {
      v10 = 0;
      *(this + 2) = v76 + 1;
      *this = 0;
    }

    else
    {
      v10 = bswap32(*(*(this + 2) + 4 * v76));
      *this = v10;
      *(this + 2) = v76 + 1;
    }

    goto LABEL_84;
  }

LABEL_103:
  *(this + 39) = v52 + 2;
  if (v53 >= 2)
  {
    goto LABEL_107;
  }

  v77 = 2 - v53;
  v78 = v53 | 0x1E;
  *(this + 1) = v53 | 0x1E;
  v79 = (v10 << (2 - v53)) & *(this + 8);
  v80 = *(this + 40);
  v81 = *(this + 2);
  if (v52 + 2 > v80 || 32 * v81 > v80)
  {
    v10 = 0;
    *(this + 2) = v81 + 1;
    *this = 0;
  }

  else
  {
    v10 = bswap32(*(*(this + 2) + 4 * v81));
    *this = v10;
    *(this + 2) = v81 + 1;
    v79 |= *(this + v77 + 6) & (v10 >> v78);
  }

LABEL_108:
  *(v2 + 48) = v79;
  if (v79 != 3)
  {
    v31 = 1;
  }

  if (!v31)
  {
    v88 = v52 + 6;
    *(this + 39) = v52 + 6;
    v89 = v78 - 4;
    if (v78 >= 4)
    {
      *(this + 1) = v89;
      v92 = (v10 >> v89) & v39;
    }

    else
    {
      v90 = 4 - v78;
      v91 = v78 | 0x1C;
      *(this + 1) = v91;
      v92 = (v10 << v90) & v39;
      v93 = *(this + 40);
      v94 = *(this + 2);
      if (v88 > v93 || 32 * v94 > v93)
      {
        *(this + 2) = v94 + 1;
        *this = 0;
      }

      else
      {
        v95 = bswap32(*(*(this + 2) + 4 * v94));
        *this = v95;
        *(this + 2) = v94 + 1;
        v92 |= *(this + v90 + 6) & (v95 >> v91);
      }
    }

    *(v2 + 49) = v92;
    return 7779;
  }

  *(this + 39) = v52 + 3;
  if (!v78)
  {
    v10 = 0;
    *(this + 1) = 31;
    v96 = *(this + 40);
    v97 = *(this + 2);
    if (v52 + 3 <= v96 && 32 * v97 <= v96)
    {
      v10 = bswap32(*(*(this + 2) + 4 * v97));
    }

    *this = v10;
    *(this + 2) = v97 + 1;
    v82 = 31;
    goto LABEL_125;
  }

  v82 = v78 - 1;
  *(this + 39) = v52 + 19;
  if (v78 >= 0x11)
  {
LABEL_125:
    v84 = v82 - 16;
    v85 = (v10 >> v84) & *(this + 22);
    goto LABEL_126;
  }

  v83 = 17 - v78;
  v84 = v82 | 0x10;
  *(this + 1) = v84;
  v85 = (v10 << (17 - v78)) & *(this + 22);
  v86 = *(this + 40);
  v87 = *(this + 2);
  if (v52 + 19 > v86 || 32 * v87 > v86)
  {
    v10 = 0;
    *(this + 2) = v87 + 1;
    *this = 0;
  }

  else
  {
    v10 = bswap32(*(*(this + 2) + 4 * v87));
    *this = v10;
    *(this + 2) = v87 + 1;
    v85 |= *(this + v83 + 6) & (v10 >> v84);
  }

LABEL_126:
  v98 = 33 - __clz(v85 >> 1);
  *(v2 + 50) = v85;
  if (v85 >> 1)
  {
    v99 = v98;
  }

  else
  {
    v99 = 1;
  }

  *(v2 + 52) = v99;
  *(this + 39) = v52 + 20;
  if (!v84)
  {
    v10 = 0;
    *(this + 1) = 31;
    v106 = *(this + 40);
    v107 = *(this + 2);
    if (v52 + 20 <= v106 && 32 * v107 <= v106)
    {
      v10 = bswap32(*(*(this + 2) + 4 * v107));
    }

    *this = v10;
    *(this + 2) = v107 + 1;
    v100 = v52 + 21;
    *(this + 39) = v52 + 21;
    v101 = 31;
    goto LABEL_138;
  }

  v100 = v52 + 21;
  *(this + 39) = v52 + 21;
  v101 = v84 - 1;
  if (v101)
  {
LABEL_138:
    v105 = v101 - 1;
    *(this + 1) = v105;
    v104 = (v10 >> v105) & 1;
    goto LABEL_139;
  }

  *(this + 1) = 31;
  v102 = *(this + 40);
  v103 = *(this + 2);
  if (v100 > v102 || 32 * v103 > v102)
  {
    v10 = 0;
    *this = 0;
    *(this + 2) = v103 + 1;
    *(v2 + 53) = 0;
    v105 = 31;
    goto LABEL_154;
  }

  v10 = bswap32(*(*(this + 2) + 4 * v103));
  *this = v10;
  *(this + 2) = v103 + 1;
  v104 = v10 >> 31;
  v105 = 31;
LABEL_139:
  *(v2 + 53) = v104;
  if (v104)
  {
    v100 += v99;
    *(this + 39) = v100;
    if (v105 >= v99)
    {
      v105 -= v99;
      *(this + 1) = v105;
      v109 = (v10 >> v105) & *(this + v99 + 6);
    }

    else
    {
      v108 = v99 - v105;
      v105 = 32 - v108;
      *(this + 1) = 32 - v108;
      if (v108 <= 0x1F)
      {
        v109 = (v10 << v108) & *(this + v99 + 6);
      }

      else
      {
        v109 = 0;
      }

      v110 = *(this + 40);
      v111 = *(this + 2);
      if (v100 > v110 || 32 * v111 > v110)
      {
        v10 = 0;
        *(this + 2) = v111 + 1;
        *this = 0;
      }

      else
      {
        v10 = bswap32(*(*(this + 2) + 4 * v111));
        *this = v10;
        *(this + 2) = v111 + 1;
        v109 |= *(this + v108 + 6) & (v10 >> v105);
      }
    }

    *(v2 + 54) = v109;
  }

LABEL_154:
  if (v79 == 2)
  {
    return 7779;
  }

  if (!v79)
  {
    *(this + 39) = v100 + 1;
    if (v105)
    {
      v112 = v105 - 1;
      *(this + 1) = v105 - 1;
      *(this + 39) = v100 + 14;
      if (v105 <= 0xD)
      {
        v113 = 14 - v105;
        v114 = v105 + 18;
        *(this + 1) = v105 + 18;
        v115 = *(this + 19);
        v116 = (v10 << v113) & v115;
        v117 = *(this + 40);
        v118 = *(this + 2);
        if (v100 + 14 > v117 || 32 * v118 > v117)
        {
          v10 = 0;
          *(this + 2) = v118 + 1;
          *this = 0;
        }

        else
        {
          v10 = bswap32(*(*(this + 2) + 4 * v118));
          *this = v10;
          *(this + 2) = v118 + 1;
          v116 |= *(this + v113 + 6) & (v10 >> v114);
        }

        *(v2 + 56) = v116;
        goto LABEL_174;
      }
    }

    else
    {
      v10 = 0;
      *(this + 1) = 31;
      v119 = *(this + 40);
      v120 = *(this + 2);
      if (v100 + 1 <= v119 && 32 * v120 <= v119)
      {
        v10 = bswap32(*(*(this + 2) + 4 * v120));
      }

      *this = v10;
      *(this + 2) = v120 + 1;
      v112 = 31;
    }

    *(this + 39) = v100 + 15;
    v114 = v112 - 13;
    *(this + 1) = v114;
    v115 = *(this + 19);
    *(v2 + 56) = (v10 >> v114) & v115;
    if (!v114)
    {
      v10 = 0;
      *(this + 1) = 31;
      v121 = *(this + 40);
      v122 = *(this + 2);
      if (v100 + 15 <= v121 && 32 * v122 <= v121)
      {
        v10 = bswap32(*(*(this + 2) + 4 * v122));
      }

      *this = v10;
      *(this + 2) = v122 + 1;
      v123 = 31;
      goto LABEL_178;
    }

LABEL_174:
    v123 = v114 - 1;
    *(this + 1) = v114 - 1;
    *(this + 39) = v100 + 28;
    if (v114 <= 0xD)
    {
      v124 = 14 - v114;
      v125 = v114 + 18;
      *(this + 1) = v125;
      v126 = (v10 << v124) & v115;
      v127 = *(this + 40);
      v128 = *(this + 2);
      if (v100 + 28 > v127 || 32 * v128 > v127)
      {
        v10 = 0;
        *(this + 2) = v128 + 1;
        *this = 0;
      }

      else
      {
        v10 = bswap32(*(*(this + 2) + 4 * v128));
        *this = v10;
        *(this + 2) = v128 + 1;
        v126 |= *(this + v124 + 6) & (v10 >> v125);
      }

      *(v2 + 58) = v126;
      v129 = v100 + 29;
LABEL_185:
      v105 = v125 - 1;
      *(this + 1) = v125 - 1;
      v100 = v129;
      goto LABEL_186;
    }

LABEL_178:
    v129 = v100 + 29;
    *(this + 39) = v100 + 29;
    v125 = v123 - 13;
    *(this + 1) = v123 - 13;
    *(v2 + 58) = (v10 >> (v123 - 13)) & v115;
    if (v123 == 13)
    {
      v10 = 0;
      *(this + 1) = 31;
      v130 = *(this + 40);
      v131 = *(this + 2);
      if (v129 <= v130 && 32 * v131 <= v130)
      {
        v10 = bswap32(*(*(this + 2) + 4 * v131));
      }

      *this = v10;
      *(this + 2) = v131 + 1;
      *(this + 39) = v100 + 30;
      v105 = 31;
      v100 += 29;
      goto LABEL_187;
    }

    goto LABEL_185;
  }

LABEL_186:
  *(this + 39) = v100 + 1;
  if (v105)
  {
LABEL_187:
    v132 = v105 - 1;
    *(this + 1) = v132;
    v133 = (v10 >> v132) & 1;
    goto LABEL_188;
  }

  *(this + 1) = 31;
  v139 = *(this + 40);
  v140 = *(this + 2);
  if (v100 + 1 > v139 || 32 * v140 > v139)
  {
    v10 = 0;
    *this = 0;
    *(this + 2) = v140 + 1;
    *(v2 + 60) = 0;
    *(this + 39) = v100 + 2;
    v132 = 31;
LABEL_197:
    *(this + 1) = v132 - 1;
    v138 = (v10 >> (v132 - 1)) & 1;
    goto LABEL_198;
  }

  v10 = bswap32(*(*(this + 2) + 4 * v140));
  *this = v10;
  *(this + 2) = v140 + 1;
  v133 = v10 >> 31;
  v132 = 31;
LABEL_188:
  *(v2 + 60) = v133;
  if (v133)
  {
    return 7779;
  }

  v134 = v100 + 2;
  *(this + 39) = v134;
  if (v132)
  {
    goto LABEL_197;
  }

  *(this + 1) = 31;
  v135 = *(this + 40);
  v136 = *(this + 2);
  if (v134 > v135 || 32 * v136 > v135)
  {
    *this = 0;
    *(this + 2) = v136 + 1;
    *(v2 + 61) = 0;
    return 7779;
  }

  v137 = bswap32(*(*(this + 2) + 4 * v136));
  *this = v137;
  *(this + 2) = v136 + 1;
  v138 = v137 >> 31;
LABEL_198:
  *(v2 + 61) = v138;
  if (!v138)
  {
    return 7779;
  }

  v141 = *(v2 + 25) == 1 ? CBitStreamDeco::GrabBit(this) : CBitStreamDeco::GrabBits(this, 2u);
  *(v2 + 90) = v141;
  if (v141)
  {
    return 7779;
  }

  if (*(v2 + 25) != 1)
  {
    if (*(v2 + 48))
    {
      v142 = CBitStreamDeco::GrabBit(this);
      *(v2 + 132) = v142;
      if (!v142)
      {
        return 7779;
      }
    }
  }

  v143 = CBitStreamDeco::GrabBit(this);
  *(v2 + 134) = v143;
  if (v143 == 1)
  {
    *(v2 + 135) = CBitStreamDeco::GrabBits(this, 4u);
    *(v2 + 136) = CBitStreamDeco::GrabBits(this, 4u);
    return 7779;
  }

  *(v2 + 135) = 2053;
  SetIntraPredictorDefaultDCValue(*(a2 + 584), 8);
  if (*(v2 + 48) == 3)
  {
    return 7779;
  }

  v144 = CBitStreamDeco::GrabBit(this);
  *(v2 + 137) = v144;
  if (v144 == 1)
  {
    return 7779;
  }

  if (*(v2 + 25) != 1)
  {
    v145 = CBitStreamDeco::GrabBit(this);
    *(v2 + 140) = v145;
    if (v145)
    {
      return 7779;
    }
  }

  v146 = CBitStreamDeco::GrabBit(this);
  *(v2 + 141) = v146;
  if (!v146)
  {
    DefineVOPComplexityEstimationHeader(this, v2);
  }

  *(v2 + 142) = CBitStreamDeco::GrabBit(this);
  v147 = CBitStreamDeco::GrabBit(this);
  *(v2 + 143) = v147;
  if (v147 == 1)
  {
    *(a2 + 968) = 0;
    v148 = CBitStreamDeco::GrabBit(this);
    *(v2 + 144) = v148;
    if (v148 == 1)
    {
      *(a2 + 968) = 1;
    }
  }

  if (*(v2 + 25) == 1)
  {
    *(v2 + 145) = 0;
  }

  else
  {
    v151 = CBitStreamDeco::GrabBit(this);
    *(v2 + 145) = v151;
    if (v151)
    {
      return 7779;
    }

    v152 = CBitStreamDeco::GrabBit(this);
    *(v2 + 146) = v152;
    if (v152)
    {
      return 7779;
    }
  }

  v149 = CBitStreamDeco::GrabBit(this);
  *(v2 + 147) = v149;
  if (v149 == 1)
  {
    return 7779;
  }

  CBitStreamDeco::NextStartCode(this);
  v150 = CBitStreamDeco::GrabBits(this, 0x20u);
  CBitStreamDeco::BarfBits(this, 32);
  if (v150 == 434)
  {
    EatUserData(this);
  }

  if (*(v2 + 90) == 1)
  {
    return 7779;
  }

  else
  {
    return 0;
  }
}

uint64_t DefineVOPComplexityEstimationHeader(uint64_t result, _BYTE *a2)
{
  v2 = *(result + 156);
  *(result + 156) = v2 + 2;
  v3 = *(result + 4);
  if (v3 >= 2)
  {
    v5 = v3 - 2;
    *(result + 4) = v5;
    v10 = *result;
    v6 = (*result >> v5) & *(result + 32);
  }

  else
  {
    v4 = 2 - v3;
    v5 = v3 | 0x1E;
    *(result + 4) = v5;
    v6 = (*result << v4) & *(result + 32);
    v7 = *(result + 160);
    v8 = *(result + 8);
    if (v2 + 2 > v7 || 32 * v8 > v7)
    {
      v10 = 0;
      *(result + 8) = v8 + 1;
      *result = 0;
    }

    else
    {
      v10 = bswap32(*(*(result + 16) + 4 * v8));
      *result = v10;
      *(result + 8) = v8 + 1;
      v6 |= *(result + 4 * v4 + 24) & (v10 >> v5);
    }
  }

  a2[62] = v6;
  if ((v6 & 0xFE) != 0)
  {
    return result;
  }

  v11 = v2 + 3;
  *(result + 156) = v2 + 3;
  if (v5)
  {
    v12 = v5 - 1;
    v13 = (v10 >> (v5 - 1)) & 1;
  }

  else
  {
    *(result + 4) = 31;
    v14 = *(result + 160);
    v15 = *(result + 8);
    if (v11 > v14 || 32 * v15 > v14)
    {
      v10 = 0;
      *result = 0;
      *(result + 8) = v15 + 1;
      a2[63] = 0;
      v12 = 31;
      goto LABEL_21;
    }

    v10 = bswap32(*(*(result + 16) + 4 * v15));
    *result = v10;
    *(result + 8) = v15 + 1;
    v13 = v10 >> 31;
    v12 = 31;
  }

  a2[63] = v13;
  if (v13)
  {
    goto LABEL_58;
  }

  *(result + 156) = v2 + 4;
  if (!v12)
  {
    *(result + 4) = 31;
    v21 = *(result + 160);
    v22 = *(result + 8);
    if (v2 + 4 > v21 || 32 * v22 > v21)
    {
      v10 = 0;
      LOBYTE(v23) = 0;
      *result = 0;
      *(result + 8) = v22 + 1;
    }

    else
    {
      v10 = bswap32(*(*(result + 16) + 4 * v22));
      *result = v10;
      *(result + 8) = v22 + 1;
      v23 = v10 >> 31;
    }

    a2[64] = v23;
    v17 = 31;
    goto LABEL_32;
  }

LABEL_21:
  *(result + 156) = v2 + 5;
  v17 = v12 - 1;
  a2[64] = (v10 >> (v12 - 1)) & 1;
  if (v12 == 1)
  {
    *(result + 4) = 31;
    v18 = *(result + 160);
    v19 = *(result + 8);
    if (v2 + 5 > v18 || 32 * v19 > v18)
    {
      v10 = 0;
      LOBYTE(v20) = 0;
      *result = 0;
      *(result + 8) = v19 + 1;
    }

    else
    {
      v10 = bswap32(*(*(result + 16) + 4 * v19));
      *result = v10;
      *(result + 8) = v19 + 1;
      v20 = v10 >> 31;
    }

    a2[65] = v20;
    v24 = 31;
    goto LABEL_33;
  }

LABEL_32:
  *(result + 156) = v2 + 6;
  v24 = v17 - 1;
  a2[65] = (v10 >> v24) & 1;
  if (!v24)
  {
    *(result + 4) = 31;
    v29 = *(result + 160);
    v30 = *(result + 8);
    if (v2 + 6 > v29 || 32 * v30 > v29)
    {
      v10 = 0;
      LOBYTE(v31) = 0;
      *result = 0;
      *(result + 8) = v30 + 1;
    }

    else
    {
      v10 = bswap32(*(*(result + 16) + 4 * v30));
      *result = v10;
      *(result + 8) = v30 + 1;
      v31 = v10 >> 31;
    }

    a2[66] = v31;
    v25 = 31;
    goto LABEL_44;
  }

LABEL_33:
  *(result + 156) = v2 + 7;
  v25 = v24 - 1;
  a2[66] = (v10 >> v25) & 1;
  if (!v25)
  {
    *(result + 4) = 31;
    v26 = *(result + 160);
    v27 = *(result + 8);
    if (v2 + 7 > v26 || 32 * v27 > v26)
    {
      v10 = 0;
      LOBYTE(v28) = 0;
      *result = 0;
      *(result + 8) = v27 + 1;
    }

    else
    {
      v10 = bswap32(*(*(result + 16) + 4 * v27));
      *result = v10;
      *(result + 8) = v27 + 1;
      v28 = v10 >> 31;
    }

    a2[67] = v28;
    v32 = 31;
    goto LABEL_45;
  }

LABEL_44:
  *(result + 156) = v2 + 8;
  v32 = v25 - 1;
  a2[67] = (v10 >> v32) & 1;
  if (!v32)
  {
    *(result + 4) = 31;
    v37 = *(result + 160);
    v38 = *(result + 8);
    if (v2 + 8 > v37 || 32 * v38 > v37)
    {
      v10 = 0;
      LOBYTE(v39) = 0;
      *result = 0;
      *(result + 8) = v38 + 1;
    }

    else
    {
      v10 = bswap32(*(*(result + 16) + 4 * v38));
      *result = v10;
      *(result + 8) = v38 + 1;
      v39 = v10 >> 31;
    }

    a2[68] = v39;
    v11 = v2 + 9;
    *(result + 156) = v2 + 9;
    v33 = 31;
    goto LABEL_56;
  }

LABEL_45:
  v11 = v2 + 9;
  *(result + 156) = v2 + 9;
  v33 = v32 - 1;
  a2[68] = (v10 >> (v32 - 1)) & 1;
  if (v32 == 1)
  {
    *(result + 4) = 31;
    v34 = *(result + 160);
    v35 = *(result + 8);
    if (v11 > v34 || 32 * v35 > v34)
    {
      v10 = 0;
      LOBYTE(v36) = 0;
      *result = 0;
      *(result + 8) = v35 + 1;
    }

    else
    {
      v10 = bswap32(*(*(result + 16) + 4 * v35));
      *result = v10;
      *(result + 8) = v35 + 1;
      v36 = v10 >> 31;
    }

    v12 = 31;
    goto LABEL_57;
  }

LABEL_56:
  v12 = v33 - 1;
  v36 = (v10 >> (v33 - 1)) & 1;
LABEL_57:
  a2[69] = v36;
LABEL_58:
  v40 = v11 + 1;
  *(result + 156) = v11 + 1;
  if (v12)
  {
    v41 = v12 - 1;
    v42 = (v10 >> v41) & 1;
  }

  else
  {
    *(result + 4) = 31;
    v43 = *(result + 160);
    v44 = *(result + 8);
    if (v40 > v43 || 32 * v44 > v43)
    {
      v10 = 0;
      *result = 0;
      *(result + 8) = v44 + 1;
      a2[70] = 0;
      v41 = 31;
      goto LABEL_69;
    }

    v10 = bswap32(*(*(result + 16) + 4 * v44));
    *result = v10;
    *(result + 8) = v44 + 1;
    v42 = v10 >> 31;
    v41 = 31;
  }

  a2[70] = v42;
  if (v42)
  {
    goto LABEL_91;
  }

  *(result + 156) = v11 + 2;
  if (!v41)
  {
    *(result + 4) = 31;
    v45 = *(result + 160);
    v46 = *(result + 8);
    if (v11 + 2 > v45 || 32 * v46 > v45)
    {
      v10 = 0;
      LOBYTE(v47) = 0;
      *result = 0;
      *(result + 8) = v46 + 1;
    }

    else
    {
      v10 = bswap32(*(*(result + 16) + 4 * v46));
      *result = v10;
      *(result + 8) = v46 + 1;
      v47 = v10 >> 31;
    }

    a2[71] = v47;
    v48 = 31;
    goto LABEL_77;
  }

LABEL_69:
  *(result + 156) = v11 + 3;
  v48 = v41 - 1;
  a2[71] = (v10 >> (v41 - 1)) & 1;
  if (v41 == 1)
  {
    *(result + 4) = 31;
    v49 = *(result + 160);
    v50 = *(result + 8);
    if (v11 + 3 > v49 || 32 * v50 > v49)
    {
      v10 = 0;
      LOBYTE(v51) = 0;
      *result = 0;
      *(result + 8) = v50 + 1;
    }

    else
    {
      v10 = bswap32(*(*(result + 16) + 4 * v50));
      *result = v10;
      *(result + 8) = v50 + 1;
      v51 = v10 >> 31;
    }

    a2[72] = v51;
    v52 = 31;
    goto LABEL_78;
  }

LABEL_77:
  *(result + 156) = v11 + 4;
  v52 = v48 - 1;
  a2[72] = (v10 >> v52) & 1;
  if (!v52)
  {
    *(result + 4) = 31;
    v57 = *(result + 160);
    v58 = *(result + 8);
    if (v11 + 4 > v57 || 32 * v58 > v57)
    {
      v10 = 0;
      LOBYTE(v59) = 0;
      *result = 0;
      *(result + 8) = v58 + 1;
    }

    else
    {
      v10 = bswap32(*(*(result + 16) + 4 * v58));
      *result = v10;
      *(result + 8) = v58 + 1;
      v59 = v10 >> 31;
    }

    a2[73] = v59;
    v40 = v11 + 5;
    v53 = 31;
    goto LABEL_89;
  }

LABEL_78:
  v40 = v11 + 5;
  *(result + 156) = v11 + 5;
  v53 = v52 - 1;
  a2[73] = (v10 >> v53) & 1;
  if (!v53)
  {
    *(result + 4) = 31;
    v54 = *(result + 160);
    v55 = *(result + 8);
    if (v40 > v54 || 32 * v55 > v54)
    {
      v10 = 0;
      LOBYTE(v56) = 0;
      *result = 0;
      *(result + 8) = v55 + 1;
    }

    else
    {
      v10 = bswap32(*(*(result + 16) + 4 * v55));
      *result = v10;
      *(result + 8) = v55 + 1;
      v56 = v10 >> 31;
    }

    v41 = 31;
    goto LABEL_90;
  }

LABEL_89:
  v41 = v53 - 1;
  v56 = (v10 >> (v53 - 1)) & 1;
LABEL_90:
  a2[74] = v56;
LABEL_91:
  *(result + 156) = v40 + 1;
  if (!v41)
  {
    v10 = 0;
    *(result + 4) = 31;
    v66 = *(result + 160);
    v67 = *(result + 8);
    if (v40 + 1 <= v66 && 32 * v67 <= v66)
    {
      v10 = bswap32(*(*(result + 16) + 4 * v67));
    }

    *result = v10;
    *(result + 8) = v67 + 1;
    v60 = v40 + 2;
    v61 = 31;
    goto LABEL_100;
  }

  v60 = v40 + 2;
  *(result + 156) = v40 + 2;
  v61 = v41 - 1;
  if (v41 != 1)
  {
LABEL_100:
    v65 = v61 - 1;
    v64 = (v10 >> v65) & 1;
    goto LABEL_101;
  }

  *(result + 4) = 31;
  v62 = *(result + 160);
  v63 = *(result + 8);
  if (v60 > v62 || 32 * v63 > v62)
  {
    v10 = 0;
    *result = 0;
    *(result + 8) = v63 + 1;
    a2[75] = 0;
    v65 = 31;
    goto LABEL_107;
  }

  v10 = bswap32(*(*(result + 16) + 4 * v63));
  *result = v10;
  *(result + 8) = v63 + 1;
  v64 = v10 >> 31;
  v65 = 31;
LABEL_101:
  a2[75] = v64;
  if (v64)
  {
    goto LABEL_129;
  }

  *(result + 156) = v40 + 3;
  if (!v65)
  {
    *(result + 4) = 31;
    v68 = *(result + 160);
    v69 = *(result + 8);
    if (v40 + 3 > v68 || 32 * v69 > v68)
    {
      v10 = 0;
      LOBYTE(v70) = 0;
      *result = 0;
      *(result + 8) = v69 + 1;
    }

    else
    {
      v10 = bswap32(*(*(result + 16) + 4 * v69));
      *result = v10;
      *(result + 8) = v69 + 1;
      v70 = v10 >> 31;
    }

    a2[76] = v70;
    v71 = 31;
    goto LABEL_113;
  }

LABEL_107:
  *(result + 156) = v40 + 4;
  v71 = v65 - 1;
  a2[76] = (v10 >> (v65 - 1)) & 1;
  if (v65 == 1)
  {
    *(result + 4) = 31;
    v72 = *(result + 160);
    v73 = *(result + 8);
    if (v40 + 4 > v72 || 32 * v73 > v72)
    {
      v10 = 0;
      LOBYTE(v74) = 0;
      *result = 0;
      *(result + 8) = v73 + 1;
    }

    else
    {
      v10 = bswap32(*(*(result + 16) + 4 * v73));
      *result = v10;
      *(result + 8) = v73 + 1;
      v74 = v10 >> 31;
    }

    a2[77] = v74;
    v75 = 31;
    goto LABEL_121;
  }

LABEL_113:
  *(result + 156) = v40 + 5;
  v75 = v71 - 1;
  a2[77] = (v10 >> (v71 - 1)) & 1;
  if (v71 == 1)
  {
    *(result + 4) = 31;
    v76 = *(result + 160);
    v77 = *(result + 8);
    if (v40 + 5 > v76 || 32 * v77 > v76)
    {
      v10 = 0;
      LOBYTE(v78) = 0;
      *result = 0;
      *(result + 8) = v77 + 1;
    }

    else
    {
      v10 = bswap32(*(*(result + 16) + 4 * v77));
      *result = v10;
      *(result + 8) = v77 + 1;
      v78 = v10 >> 31;
    }

    a2[78] = v78;
    v60 = v40 + 6;
    *(result + 156) = v40 + 6;
    v79 = 31;
    goto LABEL_122;
  }

LABEL_121:
  v60 = v40 + 6;
  *(result + 156) = v40 + 6;
  v79 = v75 - 1;
  a2[78] = (v10 >> (v75 - 1)) & 1;
  if (v75 == 1)
  {
    *(result + 4) = 31;
    v81 = *(result + 160);
    v82 = *(result + 8);
    if (v60 > v81 || 32 * v82 > v81)
    {
      v10 = 0;
      LOBYTE(v80) = 0;
      *result = 0;
      *(result + 8) = v82 + 1;
    }

    else
    {
      v10 = bswap32(*(*(result + 16) + 4 * v82));
      *result = v10;
      *(result + 8) = v82 + 1;
      v80 = v10 >> 31;
    }

    v65 = 31;
    goto LABEL_128;
  }

LABEL_122:
  v65 = v79 - 1;
  v80 = (v10 >> (v79 - 1)) & 1;
LABEL_128:
  a2[79] = v80;
LABEL_129:
  v83 = v60 + 1;
  *(result + 156) = v60 + 1;
  if (v65)
  {
    v84 = v65 - 1;
    v85 = (v10 >> v84) & 1;
  }

  else
  {
    *(result + 4) = 31;
    v86 = *(result + 160);
    v87 = *(result + 8);
    if (v83 > v86 || 32 * v87 > v86)
    {
      v10 = 0;
      *result = 0;
      *(result + 8) = v87 + 1;
      a2[80] = 0;
      v84 = 31;
      goto LABEL_140;
    }

    v10 = bswap32(*(*(result + 16) + 4 * v87));
    *result = v10;
    *(result + 8) = v87 + 1;
    v85 = v10 >> 31;
    v84 = 31;
  }

  a2[80] = v85;
  if (v85)
  {
    goto LABEL_174;
  }

  *(result + 156) = v60 + 2;
  if (!v84)
  {
    *(result + 4) = 31;
    v88 = *(result + 160);
    v89 = *(result + 8);
    if (v60 + 2 > v88 || 32 * v89 > v88)
    {
      v10 = 0;
      LOBYTE(v90) = 0;
      *result = 0;
      *(result + 8) = v89 + 1;
    }

    else
    {
      v10 = bswap32(*(*(result + 16) + 4 * v89));
      *result = v10;
      *(result + 8) = v89 + 1;
      v90 = v10 >> 31;
    }

    a2[81] = v90;
    v91 = 31;
    goto LABEL_148;
  }

LABEL_140:
  *(result + 156) = v60 + 3;
  v91 = v84 - 1;
  a2[81] = (v10 >> (v84 - 1)) & 1;
  if (v84 == 1)
  {
    *(result + 4) = 31;
    v92 = *(result + 160);
    v93 = *(result + 8);
    if (v60 + 3 > v92 || 32 * v93 > v92)
    {
      v10 = 0;
      LOBYTE(v94) = 0;
      *result = 0;
      *(result + 8) = v93 + 1;
    }

    else
    {
      v10 = bswap32(*(*(result + 16) + 4 * v93));
      *result = v10;
      *(result + 8) = v93 + 1;
      v94 = v10 >> 31;
    }

    a2[82] = v94;
    v95 = 31;
    goto LABEL_149;
  }

LABEL_148:
  *(result + 156) = v60 + 4;
  v95 = v91 - 1;
  a2[82] = (v10 >> v95) & 1;
  if (!v95)
  {
    *(result + 4) = 31;
    v100 = *(result + 160);
    v101 = *(result + 8);
    if (v60 + 4 > v100 || 32 * v101 > v100)
    {
      v10 = 0;
      LOBYTE(v102) = 0;
      *result = 0;
      *(result + 8) = v101 + 1;
    }

    else
    {
      v10 = bswap32(*(*(result + 16) + 4 * v101));
      *result = v10;
      *(result + 8) = v101 + 1;
      v102 = v10 >> 31;
    }

    a2[83] = v102;
    v96 = 31;
    goto LABEL_160;
  }

LABEL_149:
  *(result + 156) = v60 + 5;
  v96 = v95 - 1;
  a2[83] = (v10 >> v96) & 1;
  if (!v96)
  {
    *(result + 4) = 31;
    v97 = *(result + 160);
    v98 = *(result + 8);
    if (v60 + 5 > v97 || 32 * v98 > v97)
    {
      v10 = 0;
      LOBYTE(v99) = 0;
      *result = 0;
      *(result + 8) = v98 + 1;
    }

    else
    {
      v10 = bswap32(*(*(result + 16) + 4 * v98));
      *result = v10;
      *(result + 8) = v98 + 1;
      v99 = v10 >> 31;
    }

    a2[84] = v99;
    v103 = 31;
    goto LABEL_161;
  }

LABEL_160:
  *(result + 156) = v60 + 6;
  v103 = v96 - 1;
  a2[84] = (v10 >> (v96 - 1)) & 1;
  if (v96 == 1)
  {
    *(result + 4) = 31;
    v108 = *(result + 160);
    v109 = *(result + 8);
    if (v60 + 6 > v108 || 32 * v109 > v108)
    {
      v10 = 0;
      LOBYTE(v110) = 0;
      *result = 0;
      *(result + 8) = v109 + 1;
    }

    else
    {
      v10 = bswap32(*(*(result + 16) + 4 * v109));
      *result = v10;
      *(result + 8) = v109 + 1;
      v110 = v10 >> 31;
    }

    a2[85] = v110;
    v83 = v60 + 7;
    v104 = 31;
    goto LABEL_172;
  }

LABEL_161:
  v83 = v60 + 7;
  *(result + 156) = v60 + 7;
  v104 = v103 - 1;
  a2[85] = (v10 >> (v103 - 1)) & 1;
  if (v103 == 1)
  {
    *(result + 4) = 31;
    v105 = *(result + 160);
    v106 = *(result + 8);
    if (v83 > v105 || 32 * v106 > v105)
    {
      v10 = 0;
      LOBYTE(v107) = 0;
      *result = 0;
      *(result + 8) = v106 + 1;
    }

    else
    {
      v10 = bswap32(*(*(result + 16) + 4 * v106));
      *result = v10;
      *(result + 8) = v106 + 1;
      v107 = v10 >> 31;
    }

    v84 = 31;
    goto LABEL_173;
  }

LABEL_172:
  v84 = v104 - 1;
  v107 = (v10 >> (v104 - 1)) & 1;
LABEL_173:
  a2[86] = v107;
LABEL_174:
  *(result + 156) = v83 + 1;
  if (v84)
  {
    v111 = v84 - 1;
    *(result + 4) = v84 - 1;
  }

  else
  {
    *(result + 4) = 31;
    v112 = *(result + 160);
    v113 = *(result + 8);
    if (v83 + 1 > v112 || 32 * v113 > v112)
    {
      v10 = 0;
      *result = 0;
    }

    else
    {
      v10 = bswap32(*(*(result + 16) + 4 * v113));
      *result = v10;
    }

    *(result + 8) = v113 + 1;
    v111 = 31;
  }

  if (a2[62] == 1)
  {
    *(result + 156) = v83 + 2;
    if (v111)
    {
      v114 = v111 - 1;
      *(result + 4) = v114;
      a2[87] = (v10 >> v114) & 1;
      if (((v10 >> v114) & 1) == 0)
      {
        return result;
      }

      *(result + 156) = v83 + 3;
      if (!v114)
      {
        *(result + 4) = 31;
        v115 = *(result + 160);
        v116 = *(result + 8);
        if (v83 + 3 > v115 || 32 * v116 > v115)
        {
          v10 = 0;
          LOBYTE(v117) = 0;
          *result = 0;
          *(result + 8) = v116 + 1;
        }

        else
        {
          v10 = bswap32(*(*(result + 16) + 4 * v116));
          *result = v10;
          *(result + 8) = v116 + 1;
          v117 = v10 >> 31;
        }

        a2[88] = v117;
        *(result + 156) = v83 + 4;
        v121 = 31;
        goto LABEL_199;
      }
    }

    else
    {
      *(result + 4) = 31;
      v118 = *(result + 160);
      v119 = *(result + 8);
      if (v83 + 2 > v118 || 32 * v119 > v118)
      {
        LOBYTE(v125) = 0;
        *result = 0;
        *(result + 8) = v119 + 1;
        v126 = 87;
LABEL_201:
        a2[v126] = v125;
        return result;
      }

      v10 = bswap32(*(*(result + 16) + 4 * v119));
      *result = v10;
      *(result + 8) = v119 + 1;
      a2[87] = (v10 & 0x80000000) != 0;
      if ((v10 & 0x80000000) == 0)
      {
        return result;
      }

      v114 = 31;
    }

    v120 = v83 + 4;
    *(result + 156) = v120;
    v121 = v114 - 1;
    a2[88] = (v10 >> v121) & 1;
    if (!v121)
    {
      *(result + 4) = 31;
      v122 = *(result + 160);
      v123 = *(result + 8);
      if (v120 > v122 || 32 * v123 > v122)
      {
        LOBYTE(v125) = 0;
        *result = 0;
        *(result + 8) = v123 + 1;
      }

      else
      {
        v124 = bswap32(*(*(result + 16) + 4 * v123));
        *result = v124;
        *(result + 8) = v123 + 1;
        v125 = v124 >> 31;
      }

      goto LABEL_200;
    }

LABEL_199:
    v127 = v121 - 1;
    *(result + 4) = v127;
    v125 = (v10 >> v127) & 1;
LABEL_200:
    v126 = 89;
    goto LABEL_201;
  }

  return result;
}

uint64_t DecHeaderGOV(uint64_t a1)
{
  v1 = *(a1 + 156);
  *(a1 + 156) = v1 + 18;
  v2 = *(a1 + 4);
  if (v2 > 0x11)
  {
    *(a1 + 156) = v1 + 19;
    v3 = v2 - 18;
    if (!v3)
    {
      *(a1 + 4) = 31;
      v7 = *(a1 + 160);
      v8 = *(a1 + 8);
      if (v1 + 19 > v7 || 32 * v8 > v7)
      {
        v20 = 0;
      }

      else
      {
        v20 = bswap32(*(*(a1 + 16) + 4 * v8));
      }

      *a1 = v20;
      *(a1 + 8) = v8 + 1;
      *(a1 + 156) = v1 + 20;
      v18 = 29;
      goto LABEL_34;
    }
  }

  else
  {
    v3 = v2 + 14;
    *(a1 + 4) = v3;
    v4 = *(a1 + 160);
    v5 = *(a1 + 8);
    if (v1 + 18 > v4 || 32 * v5 > v4)
    {
      *(a1 + 8) = v5 + 1;
      *a1 = 0;
    }

    else
    {
      *a1 = bswap32(*(*(a1 + 16) + 4 * v5));
      *(a1 + 8) = v5 + 1;
    }
  }

  *(a1 + 156) = v1 + 20;
  if (v3 == 1)
  {
    *(a1 + 4) = 31;
    v10 = *(a1 + 160);
    v11 = *(a1 + 8);
    if (v1 + 20 > v10 || 32 * v11 > v10)
    {
      v17 = 0;
    }

    else
    {
      v17 = bswap32(*(*(a1 + 16) + 4 * v11));
    }

    *a1 = v17;
    *(a1 + 8) = v11 + 1;
    v18 = 30;
LABEL_34:
    v13 = v1 + 21;
    v19 = v18 & 7;
    goto LABEL_35;
  }

  v13 = v1 + 21;
  *(a1 + 156) = v13;
  if (v3 == 2)
  {
    *(a1 + 4) = 31;
    v14 = *(a1 + 160);
    v15 = *(a1 + 8);
    if (v13 > v14 || 32 * v15 > v14)
    {
      *a1 = 0;
    }

    else
    {
      *a1 = bswap32(*(*(a1 + 16) + 4 * v15));
    }

    *(a1 + 8) = v15 + 1;
    v18 = 31;
    v19 = 7;
    goto LABEL_35;
  }

  v18 = v3 - 3;
  v19 = v18 & 7;
  if ((v18 & 7) != 0)
  {
LABEL_35:
    v13 += v19;
    v18 &= 0xFFFFFFF8;
  }

  *(a1 + 4) = v18;
  *(a1 + 156) = v13 + 32;
  if (v18 >= 0x20)
  {
    v22 = (*a1 >> v18) & *(a1 + 152);
    v18 -= 32;
  }

  else
  {
    v21 = 32 - v18;
    if (v18)
    {
      v22 = (*a1 << v21) & *(a1 + 152);
    }

    else
    {
      v22 = 0;
    }

    v23 = *(a1 + 160);
    v24 = *(a1 + 8);
    if (v13 + 32 > v23 || 32 * v24 > v23)
    {
      *(a1 + 8) = v24 + 1;
      *a1 = 0;
    }

    else
    {
      v25 = bswap32(*(*(a1 + 16) + 4 * v24));
      *a1 = v25;
      *(a1 + 8) = v24 + 1;
      v22 |= *(a1 + 4 * v21 + 24) & (v25 >> v18);
    }
  }

  *(a1 + 4) = v18 + 32;
  if (v18)
  {
    v26 = *(a1 + 8);
    *(a1 + 4) = v18;
    *(a1 + 8) = v26 - 1;
    if (*(a1 + 160) >= (32 * (v26 - 1)))
    {
      *a1 = bswap32(*(*(a1 + 16) + 4 * (v26 - 2)));
    }
  }

  *(a1 + 156) = v13;
  if (v22 == 434)
  {
    EatUserData(a1);
  }

  return 0;
}

uint64_t DecHeaderVOP(CBitStreamDeco *a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = *(a1 + 39);
  *(a1 + 39) = v5 + 2;
  v6 = *(a1 + 1);
  if (v6 >= 2)
  {
    v8 = v6 - 2;
    *(a1 + 1) = v6 - 2;
    v13 = *a1;
    v9 = (*a1 >> (v6 - 2)) & *(a1 + 8);
  }

  else
  {
    v7 = 2 - v6;
    v8 = v6 | 0x1E;
    *(a1 + 1) = v6 | 0x1E;
    v9 = (*a1 << (2 - v6)) & *(a1 + 8);
    v10 = *(a1 + 40);
    v11 = *(a1 + 2);
    if (v5 + 2 > v10 || 32 * v11 > v10)
    {
      v13 = 0;
      *(a1 + 2) = v11 + 1;
      *a1 = 0;
    }

    else
    {
      v13 = bswap32(*(*(a1 + 2) + 4 * v11));
      *a1 = v13;
      *(a1 + 2) = v11 + 1;
      v9 |= *(a1 + v7 + 6) & (v13 >> v8);
    }
  }

  v14 = v9;
  *(v4 + 148) = v9;
  if (v9 == 2)
  {
    return 2;
  }

  v16 = 0;
  for (i = v5 + 4; ; ++i)
  {
    *(a1 + 39) = i - 1;
    if (v8)
    {
      break;
    }

    *(a1 + 1) = 31;
    v18 = *(a1 + 40);
    v19 = *(a1 + 2);
    if (i - 1 > v18 || 32 * v19 > v18)
    {
      v13 = 0;
      *(v4 + 150) = v16;
      *a1 = 0;
      *(a1 + 2) = v19 + 1;
      goto LABEL_31;
    }

    v13 = bswap32(*(*(a1 + 2) + 4 * v19));
    *a1 = v13;
    *(a1 + 2) = v19 + 1;
    if ((v13 & 0x80000000) == 0)
    {
      *(v4 + 150) = v16;
LABEL_31:
      v8 = 31;
LABEL_32:
      v24 = v8 - 1;
      goto LABEL_33;
    }

    v8 = 31;
LABEL_21:
    ++v16;
  }

  if ((v13 >> --v8))
  {
    goto LABEL_21;
  }

  *(v4 + 150) = v16;
  *(a1 + 39) = i;
  if (v8)
  {
    goto LABEL_32;
  }

  *(a1 + 1) = 31;
  v21 = *(a1 + 40);
  v22 = *(a1 + 2);
  if (i > v21 || 32 * v22 > v21)
  {
    v13 = 0;
    *a1 = 0;
  }

  else
  {
    v13 = bswap32(*(*(a1 + 2) + 4 * v22));
    *a1 = v13;
  }

  *(a1 + 2) = v22 + 1;
  v24 = 31;
LABEL_33:
  v25 = *(v4 + 52);
  v26 = i + v25;
  *(a1 + 39) = v26;
  v27 = v24 - v25;
  if (v24 >= v25)
  {
    v29 = (v13 >> v27) & *(a1 + v25 + 6);
  }

  else
  {
    v28 = v25 - v24;
    v27 = 32 - (v25 - v24);
    *(a1 + 1) = v27;
    if (v25 - v24 <= 0x1F)
    {
      v29 = (v13 << v28) & *(a1 + v25 + 6);
    }

    else
    {
      v29 = 0;
    }

    v30 = *(a1 + 40);
    v31 = *(a1 + 2);
    if (v26 > v30 || 32 * v31 > v30)
    {
      v13 = 0;
      *(a1 + 2) = v31 + 1;
      *a1 = 0;
    }

    else
    {
      v13 = bswap32(*(*(a1 + 2) + 4 * v31));
      *a1 = v13;
      *(a1 + 2) = v31 + 1;
      v29 |= *(a1 + v28 + 6) & (v13 >> v27);
    }
  }

  *(v4 + 152) = v29;
  *(a1 + 39) = v26 + 1;
  if (v27)
  {
    v32 = v27 - 1;
    *(a1 + 1) = v32;
  }

  else
  {
    *(a1 + 1) = 31;
    v33 = *(a1 + 40);
    v34 = *(a1 + 2);
    if (v26 + 1 > v33 || 32 * v34 > v33)
    {
      v13 = 0;
      *a1 = 0;
    }

    else
    {
      v13 = bswap32(*(*(a1 + 2) + 4 * v34));
      *a1 = v13;
    }

    *(a1 + 2) = v34 + 1;
    v32 = 31;
  }

  if (v14 == 2)
  {
    v35 = *(a2 + 252) + v16;
  }

  else
  {
    v36 = *(a2 + 256);
    v35 = v36 + v16;
    *(a2 + 252) = v36;
    *(a2 + 256) = v35;
  }

  *(a2 + 240) = v35 * *(v4 + 50) + v29;
  *(a1 + 39) = v26 + 2;
  if (v32)
  {
    v37 = v32 - 1;
    *(a1 + 1) = v32 - 1;
    v38 = (v13 >> (v32 - 1)) & 1;
    goto LABEL_57;
  }

  *(a1 + 1) = 31;
  v39 = *(a1 + 40);
  v40 = *(a1 + 2);
  if (v26 + 2 > v39 || 32 * v40 > v39)
  {
    *a1 = 0;
    *(a1 + 2) = v40 + 1;
    *(v4 + 154) = 0;
    v44 = v26 + 3;
    v45 = 30;
    v46 = 6;
LABEL_87:
    result = 0;
    *(a1 + 39) = v46 + v44;
    *(a1 + 1) = v45 & 0xFFFFFFF8;
    return result;
  }

  v13 = bswap32(*(*(a1 + 2) + 4 * v40));
  *a1 = v13;
  *(a1 + 2) = v40 + 1;
  v38 = v13 >> 31;
  v37 = 31;
LABEL_57:
  *(v4 + 154) = v38;
  if (!v38)
  {
    v44 = v26 + 3;
    *(a1 + 39) = v26 + 3;
    if (v37)
    {
      v45 = v37 - 1;
      *(a1 + 1) = v37 - 1;
      v46 = (v37 - 1) & 7;
      if (!v46)
      {
        return 0;
      }
    }

    else
    {
      *(a1 + 1) = 31;
      v56 = *(a1 + 40);
      v57 = *(a1 + 2);
      if (v44 > v56 || 32 * v57 > v56)
      {
        *a1 = 0;
      }

      else
      {
        *a1 = bswap32(*(*(a1 + 2) + 4 * v57));
      }

      *(a1 + 2) = v57 + 1;
      v45 = 31;
      v46 = 7;
    }

    goto LABEL_87;
  }

  if (*(v4 + 145))
  {
    return 7780;
  }

  v41 = *(v4 + 48);
  if (v41 != 2 && (v14 == 1 || v14 == 3 && *(v4 + 90) == 2))
  {
    v42 = v26 + 3;
    *(a1 + 39) = v26 + 3;
    if (v37)
    {
      *(a1 + 1) = v37 - 1;
      v43 = (v13 >> (v37 - 1)) & 1;
    }

    else
    {
      *(a1 + 1) = 31;
      v59 = *(a1 + 40);
      v60 = *(a1 + 2);
      if (v42 > v59 || 32 * v60 > v59)
      {
        LOBYTE(v43) = 0;
        *a1 = 0;
        *(a1 + 2) = v60 + 1;
      }

      else
      {
        v61 = bswap32(*(*(a1 + 2) + 4 * v60));
        *a1 = v61;
        *(a1 + 2) = v60 + 1;
        v43 = v61 >> 31;
      }
    }
  }

  else
  {
    LOBYTE(v43) = 0;
  }

  v47 = 0;
  *(v4 + 155) = v43;
  if (v14 <= 1 && !v41 && *(v4 + 146))
  {
    v47 = CBitStreamDeco::GrabBit(a1);
    v41 = *(v4 + 48);
  }

  *(v4 + 157) = v47;
  if (v41)
  {
    return 7780;
  }

  if (!*(v4 + 141))
  {
    ReadVOPComplexityEstimationHeader(a1, a2);
  }

  v48 = *(a1 + 39) + 3;
  *(a1 + 39) = v48;
  v49 = *(a1 + 1);
  if (v49 >= 3)
  {
    v58 = v49 - 3;
    *(a1 + 1) = v58;
    v52 = (*a1 >> v58) & *(a1 + 9);
  }

  else
  {
    v50 = 3 - v49;
    v51 = v49 + 29;
    *(a1 + 1) = v49 + 29;
    v52 = (*a1 << (3 - v49)) & *(a1 + 9);
    v53 = *(a1 + 40);
    v54 = *(a1 + 2);
    if (v48 > v53 || 32 * v54 > v53)
    {
      *(a1 + 2) = v54 + 1;
      *a1 = 0;
    }

    else
    {
      v55 = bswap32(*(*(a1 + 2) + 4 * v54));
      *a1 = v55;
      *(a1 + 2) = v54 + 1;
      v52 |= *(a1 + v50 + 6) & (v55 >> v51);
    }
  }

  *(v4 + 158) = v52;
  if (*(v4 + 60))
  {
    return 7780;
  }

  if (*(v4 + 90) - 1 <= 1 && *(v4 + 148) == 3)
  {
    if (*(v4 + 91))
    {
      v62 = 0;
      v63 = (v4 + 116);
      do
      {
        *(v63 - 4) = DecWarpingMV(a1);
        *v63++ = DecWarpingMV(a1);
        ++v62;
      }

      while (v62 < *(v4 + 91));
    }

    if (*(v4 + 93))
    {
      *(v4 + 96) = DecBrightnessChangeFactor(a1);
    }

    if (*(v4 + 90) == 1)
    {
      return 7780;
    }
  }

  if (*(v4 + 48) == 2)
  {
    return 7780;
  }

  v64 = CBitStreamDeco::GrabBits(a1, *(v4 + 135));
  *(v4 + 160) = v64;
  *(v4 + 201) = v64;
  if (*(v4 + 48) == 3)
  {
    return 7780;
  }

  v65 = 1;
  if (*(v4 + 148))
  {
    v66 = CBitStreamDeco::GrabBits(a1, 3u);
    v67 = 1 << (v66 - 1);
    v68 = 16 << v66;
    if (*(v4 + 148) == 2)
    {
      result = 7780;
    }

    else
    {
      result = 0;
    }

    v65 = v66;
  }

  else
  {
    result = 0;
    LOWORD(v68) = 32;
    LOBYTE(v67) = 1;
  }

  *(v4 + 162) = v65;
  *(v4 + 163) = v67;
  *(v4 + 164) = v68;
  return result;
}

uint64_t ReadVOPComplexityEstimationHeader(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (v2[62])
  {
    return result;
  }

  v3 = *(a2 + 872);
  v4 = v2[148];
  if (v4 == 2)
  {
    if (v2[64])
    {
      v21 = *(result + 156) + 8;
      *(result + 156) = v21;
      v22 = *(result + 4);
      if (v22 >= 8)
      {
        v30 = v22 - 8;
        *(result + 4) = v30;
        v25 = (*result >> v30) & *(result + 56);
      }

      else
      {
        v23 = 8 - v22;
        v24 = v22 | 0x18;
        *(result + 4) = v22 | 0x18;
        v25 = (*result << (8 - v22)) & *(result + 56);
        v26 = *(result + 160);
        v27 = *(result + 8);
        if (v21 > v26 || 32 * v27 > v26)
        {
          *(result + 8) = v27 + 1;
          *result = 0;
        }

        else
        {
          v28 = bswap32(*(*(result + 16) + 4 * v27));
          *result = v28;
          *(result + 8) = v27 + 1;
          v25 |= *(result + 4 * v23 + 24) & (v28 >> v24);
        }
      }

      *v3 = v25;
    }

    if (v2[65])
    {
      v194 = *(result + 156) + 8;
      *(result + 156) = v194;
      v195 = *(result + 4);
      if (v195 >= 8)
      {
        v202 = v195 - 8;
        *(result + 4) = v202;
        v198 = (*result >> v202) & *(result + 56);
      }

      else
      {
        v196 = 8 - v195;
        v197 = v195 | 0x18;
        *(result + 4) = v195 | 0x18;
        v198 = (*result << (8 - v195)) & *(result + 56);
        v199 = *(result + 160);
        v200 = *(result + 8);
        if (v194 > v199 || 32 * v200 > v199)
        {
          *(result + 8) = v200 + 1;
          *result = 0;
        }

        else
        {
          v201 = bswap32(*(*(result + 16) + 4 * v200));
          *result = v201;
          *(result + 8) = v200 + 1;
          v198 |= *(result + 4 * v196 + 24) & (v201 >> v197);
        }
      }

      v3[1] = v198;
    }

    if (v2[66])
    {
      v203 = *(result + 156) + 8;
      *(result + 156) = v203;
      v204 = *(result + 4);
      if (v204 >= 8)
      {
        v211 = v204 - 8;
        *(result + 4) = v211;
        v207 = (*result >> v211) & *(result + 56);
      }

      else
      {
        v205 = 8 - v204;
        v206 = v204 | 0x18;
        *(result + 4) = v204 | 0x18;
        v207 = (*result << (8 - v204)) & *(result + 56);
        v208 = *(result + 160);
        v209 = *(result + 8);
        if (v203 > v208 || 32 * v209 > v208)
        {
          *(result + 8) = v209 + 1;
          *result = 0;
        }

        else
        {
          v210 = bswap32(*(*(result + 16) + 4 * v209));
          *result = v210;
          *(result + 8) = v209 + 1;
          v207 |= *(result + 4 * v205 + 24) & (v210 >> v206);
        }
      }

      v3[2] = v207;
    }

    if (v2[67])
    {
      v212 = *(result + 156) + 8;
      *(result + 156) = v212;
      v213 = *(result + 4);
      if (v213 >= 8)
      {
        v220 = v213 - 8;
        *(result + 4) = v220;
        v216 = (*result >> v220) & *(result + 56);
      }

      else
      {
        v214 = 8 - v213;
        v215 = v213 | 0x18;
        *(result + 4) = v213 | 0x18;
        v216 = (*result << (8 - v213)) & *(result + 56);
        v217 = *(result + 160);
        v218 = *(result + 8);
        if (v212 > v217 || 32 * v218 > v217)
        {
          *(result + 8) = v218 + 1;
          *result = 0;
        }

        else
        {
          v219 = bswap32(*(*(result + 16) + 4 * v218));
          *result = v219;
          *(result + 8) = v218 + 1;
          v216 |= *(result + 4 * v214 + 24) & (v219 >> v215);
        }
      }

      v3[3] = v216;
    }

    if (v2[68])
    {
      v221 = *(result + 156) + 8;
      *(result + 156) = v221;
      v222 = *(result + 4);
      if (v222 >= 8)
      {
        v229 = v222 - 8;
        *(result + 4) = v229;
        v225 = (*result >> v229) & *(result + 56);
      }

      else
      {
        v223 = 8 - v222;
        v224 = v222 | 0x18;
        *(result + 4) = v222 | 0x18;
        v225 = (*result << (8 - v222)) & *(result + 56);
        v226 = *(result + 160);
        v227 = *(result + 8);
        if (v221 > v226 || 32 * v227 > v226)
        {
          *(result + 8) = v227 + 1;
          *result = 0;
        }

        else
        {
          v228 = bswap32(*(*(result + 16) + 4 * v227));
          *result = v228;
          *(result + 8) = v227 + 1;
          v225 |= *(result + 4 * v223 + 24) & (v228 >> v224);
        }
      }

      v3[4] = v225;
    }

    if (v2[69])
    {
      v230 = *(result + 156) + 8;
      *(result + 156) = v230;
      v231 = *(result + 4);
      if (v231 >= 8)
      {
        v238 = v231 - 8;
        *(result + 4) = v238;
        v234 = (*result >> v238) & *(result + 56);
      }

      else
      {
        v232 = 8 - v231;
        v233 = v231 | 0x18;
        *(result + 4) = v231 | 0x18;
        v234 = (*result << (8 - v231)) & *(result + 56);
        v235 = *(result + 160);
        v236 = *(result + 8);
        if (v230 > v235 || 32 * v236 > v235)
        {
          *(result + 8) = v236 + 1;
          *result = 0;
        }

        else
        {
          v237 = bswap32(*(*(result + 16) + 4 * v236));
          *result = v237;
          *(result + 8) = v236 + 1;
          v234 |= *(result + 4 * v232 + 24) & (v237 >> v233);
        }
      }

      v3[5] = v234;
    }

    if (v2[71])
    {
      v239 = *(result + 156) + 8;
      *(result + 156) = v239;
      v240 = *(result + 4);
      if (v240 >= 8)
      {
        v247 = v240 - 8;
        *(result + 4) = v247;
        v243 = (*result >> v247) & *(result + 56);
      }

      else
      {
        v241 = 8 - v240;
        v242 = v240 | 0x18;
        *(result + 4) = v240 | 0x18;
        v243 = (*result << (8 - v240)) & *(result + 56);
        v244 = *(result + 160);
        v245 = *(result + 8);
        if (v239 > v244 || 32 * v245 > v244)
        {
          *(result + 8) = v245 + 1;
          *result = 0;
        }

        else
        {
          v246 = bswap32(*(*(result + 16) + 4 * v245));
          *result = v246;
          *(result + 8) = v245 + 1;
          v243 |= *(result + 4 * v241 + 24) & (v246 >> v242);
        }
      }

      v3[6] = v243;
    }

    if (v2[74])
    {
      v248 = *(result + 156) + 8;
      *(result + 156) = v248;
      v249 = *(result + 4);
      if (v249 >= 8)
      {
        v256 = v249 - 8;
        *(result + 4) = v256;
        v252 = (*result >> v256) & *(result + 56);
      }

      else
      {
        v250 = 8 - v249;
        v251 = v249 | 0x18;
        *(result + 4) = v249 | 0x18;
        v252 = (*result << (8 - v249)) & *(result + 56);
        v253 = *(result + 160);
        v254 = *(result + 8);
        if (v248 > v253 || 32 * v254 > v253)
        {
          *(result + 8) = v254 + 1;
          *result = 0;
        }

        else
        {
          v255 = bswap32(*(*(result + 16) + 4 * v254));
          *result = v255;
          *(result + 8) = v254 + 1;
          v252 |= *(result + 4 * v250 + 24) & (v255 >> v251);
        }
      }

      v3[9] = v252;
    }

    if (v2[76])
    {
      v257 = *(result + 156) + 8;
      *(result + 156) = v257;
      v258 = *(result + 4);
      if (v258 >= 8)
      {
        v265 = v258 - 8;
        *(result + 4) = v265;
        v261 = (*result >> v265) & *(result + 56);
      }

      else
      {
        v259 = 8 - v258;
        v260 = v258 | 0x18;
        *(result + 4) = v258 | 0x18;
        v261 = (*result << (8 - v258)) & *(result + 56);
        v262 = *(result + 160);
        v263 = *(result + 8);
        if (v257 > v262 || 32 * v263 > v262)
        {
          *(result + 8) = v263 + 1;
          *result = 0;
        }

        else
        {
          v264 = bswap32(*(*(result + 16) + 4 * v263));
          *result = v264;
          *(result + 8) = v263 + 1;
          v261 |= *(result + 4 * v259 + 24) & (v264 >> v260);
        }
      }

      v3[10] = v261;
    }

    if (v2[77])
    {
      v266 = *(result + 156) + 8;
      *(result + 156) = v266;
      v267 = *(result + 4);
      if (v267 >= 8)
      {
        v274 = v267 - 8;
        *(result + 4) = v274;
        v270 = (*result >> v274) & *(result + 56);
      }

      else
      {
        v268 = 8 - v267;
        v269 = v267 | 0x18;
        *(result + 4) = v267 | 0x18;
        v270 = (*result << (8 - v267)) & *(result + 56);
        v271 = *(result + 160);
        v272 = *(result + 8);
        if (v266 > v271 || 32 * v272 > v271)
        {
          *(result + 8) = v272 + 1;
          *result = 0;
        }

        else
        {
          v273 = bswap32(*(*(result + 16) + 4 * v272));
          *result = v273;
          *(result + 8) = v272 + 1;
          v270 |= *(result + 4 * v268 + 24) & (v273 >> v269);
        }
      }

      v3[11] = v270;
    }

    if (v2[78])
    {
      v275 = *(result + 156) + 8;
      *(result + 156) = v275;
      v276 = *(result + 4);
      if (v276 >= 8)
      {
        v283 = v276 - 8;
        *(result + 4) = v283;
        v279 = (*result >> v283) & *(result + 56);
      }

      else
      {
        v277 = 8 - v276;
        v278 = v276 | 0x18;
        *(result + 4) = v276 | 0x18;
        v279 = (*result << (8 - v276)) & *(result + 56);
        v280 = *(result + 160);
        v281 = *(result + 8);
        if (v275 > v280 || 32 * v281 > v280)
        {
          *(result + 8) = v281 + 1;
          *result = 0;
        }

        else
        {
          v282 = bswap32(*(*(result + 16) + 4 * v281));
          *result = v282;
          *(result + 8) = v281 + 1;
          v279 |= *(result + 4 * v277 + 24) & (v282 >> v278);
        }
      }

      v3[12] = v279;
    }

    if (v2[79])
    {
      v284 = *(result + 156) + 4;
      *(result + 156) = v284;
      v285 = *(result + 4);
      if (v285 >= 4)
      {
        v292 = v285 - 4;
        *(result + 4) = v292;
        v288 = (*result >> v292) & *(result + 40);
      }

      else
      {
        v286 = 4 - v285;
        v287 = v285 | 0x1C;
        *(result + 4) = v285 | 0x1C;
        v288 = (*result << (4 - v285)) & *(result + 40);
        v289 = *(result + 160);
        v290 = *(result + 8);
        if (v284 > v289 || 32 * v290 > v289)
        {
          *(result + 8) = v290 + 1;
          *result = 0;
        }

        else
        {
          v291 = bswap32(*(*(result + 16) + 4 * v290));
          *result = v291;
          *(result + 8) = v290 + 1;
          v288 |= *(result + 4 * v286 + 24) & (v291 >> v287);
        }
      }

      v3[13] = v288;
    }

    if (v2[72])
    {
      v293 = *(result + 156) + 8;
      *(result + 156) = v293;
      v294 = *(result + 4);
      if (v294 >= 8)
      {
        v301 = v294 - 8;
        *(result + 4) = v301;
        v297 = (*result >> v301) & *(result + 56);
      }

      else
      {
        v295 = 8 - v294;
        v296 = v294 | 0x18;
        *(result + 4) = v294 | 0x18;
        v297 = (*result << (8 - v294)) & *(result + 56);
        v298 = *(result + 160);
        v299 = *(result + 8);
        if (v293 > v298 || 32 * v299 > v298)
        {
          *(result + 8) = v299 + 1;
          *result = 0;
        }

        else
        {
          v300 = bswap32(*(*(result + 16) + 4 * v299));
          *result = v300;
          *(result + 8) = v299 + 1;
          v297 |= *(result + 4 * v295 + 24) & (v300 >> v296);
        }
      }

      v3[7] = v297;
    }

    if (v2[73])
    {
      v302 = *(result + 156) + 8;
      *(result + 156) = v302;
      v303 = *(result + 4);
      if (v303 >= 8)
      {
        v310 = v303 - 8;
        *(result + 4) = v310;
        v306 = (*result >> v310) & *(result + 56);
      }

      else
      {
        v304 = 8 - v303;
        v305 = v303 | 0x18;
        *(result + 4) = v303 | 0x18;
        v306 = (*result << (8 - v303)) & *(result + 56);
        v307 = *(result + 160);
        v308 = *(result + 8);
        if (v302 > v307 || 32 * v308 > v307)
        {
          *(result + 8) = v308 + 1;
          *result = 0;
        }

        else
        {
          v309 = bswap32(*(*(result + 16) + 4 * v308));
          *result = v309;
          *(result + 8) = v308 + 1;
          v306 |= *(result + 4 * v304 + 24) & (v309 >> v305);
        }
      }

      v3[8] = v306;
    }

    if (v2[81])
    {
      v311 = *(result + 156) + 8;
      *(result + 156) = v311;
      v312 = *(result + 4);
      if (v312 >= 8)
      {
        v319 = v312 - 8;
        *(result + 4) = v319;
        v315 = (*result >> v319) & *(result + 56);
      }

      else
      {
        v313 = 8 - v312;
        v314 = v312 | 0x18;
        *(result + 4) = v312 | 0x18;
        v315 = (*result << (8 - v312)) & *(result + 56);
        v316 = *(result + 160);
        v317 = *(result + 8);
        if (v311 > v316 || 32 * v317 > v316)
        {
          *(result + 8) = v317 + 1;
          *result = 0;
        }

        else
        {
          v318 = bswap32(*(*(result + 16) + 4 * v317));
          *result = v318;
          *(result + 8) = v317 + 1;
          v315 |= *(result + 4 * v313 + 24) & (v318 >> v314);
        }
      }

      v3[14] = v315;
    }

    if (v2[82])
    {
      v320 = *(result + 156) + 8;
      *(result + 156) = v320;
      v321 = *(result + 4);
      if (v321 >= 8)
      {
        v328 = v321 - 8;
        *(result + 4) = v328;
        v324 = (*result >> v328) & *(result + 56);
      }

      else
      {
        v322 = 8 - v321;
        v323 = v321 | 0x18;
        *(result + 4) = v321 | 0x18;
        v324 = (*result << (8 - v321)) & *(result + 56);
        v325 = *(result + 160);
        v326 = *(result + 8);
        if (v320 > v325 || 32 * v326 > v325)
        {
          *(result + 8) = v326 + 1;
          *result = 0;
        }

        else
        {
          v327 = bswap32(*(*(result + 16) + 4 * v326));
          *result = v327;
          *(result + 8) = v326 + 1;
          v324 |= *(result + 4 * v322 + 24) & (v327 >> v323);
        }
      }

      v3[15] = v324;
    }

    if (v2[84])
    {
      v329 = *(result + 156) + 8;
      *(result + 156) = v329;
      v330 = *(result + 4);
      if (v330 >= 8)
      {
        v337 = v330 - 8;
        *(result + 4) = v337;
        v333 = (*result >> v337) & *(result + 56);
      }

      else
      {
        v331 = 8 - v330;
        v332 = v330 | 0x18;
        *(result + 4) = v330 | 0x18;
        v333 = (*result << (8 - v330)) & *(result + 56);
        v334 = *(result + 160);
        v335 = *(result + 8);
        if (v329 > v334 || 32 * v335 > v334)
        {
          *(result + 8) = v335 + 1;
          *result = 0;
        }

        else
        {
          v336 = bswap32(*(*(result + 16) + 4 * v335));
          *result = v336;
          *(result + 8) = v335 + 1;
          v333 |= *(result + 4 * v331 + 24) & (v336 >> v332);
        }
      }

      v3[17] = v333;
    }

    if (v2[85])
    {
      v338 = *(result + 156) + 8;
      *(result + 156) = v338;
      v339 = *(result + 4);
      if (v339 >= 8)
      {
        v346 = v339 - 8;
        *(result + 4) = v346;
        v342 = (*result >> v346) & *(result + 56);
      }

      else
      {
        v340 = 8 - v339;
        v341 = v339 | 0x18;
        *(result + 4) = v339 | 0x18;
        v342 = (*result << (8 - v339)) & *(result + 56);
        v343 = *(result + 160);
        v344 = *(result + 8);
        if (v338 > v343 || 32 * v344 > v343)
        {
          *(result + 8) = v344 + 1;
          *result = 0;
        }

        else
        {
          v345 = bswap32(*(*(result + 16) + 4 * v344));
          *result = v345;
          *(result + 8) = v344 + 1;
          v342 |= *(result + 4 * v340 + 24) & (v345 >> v341);
        }
      }

      v3[18] = v342;
    }

    if (v2[86])
    {
      v347 = *(result + 156) + 8;
      *(result + 156) = v347;
      v348 = *(result + 4);
      if (v348 >= 8)
      {
        v355 = v348 - 8;
        *(result + 4) = v355;
        v351 = (*result >> v355) & *(result + 56);
      }

      else
      {
        v349 = 8 - v348;
        v350 = v348 | 0x18;
        *(result + 4) = v348 | 0x18;
        v351 = (*result << (8 - v348)) & *(result + 56);
        v352 = *(result + 160);
        v353 = *(result + 8);
        if (v347 > v352 || 32 * v353 > v352)
        {
          *(result + 8) = v353 + 1;
          *result = 0;
        }

        else
        {
          v354 = bswap32(*(*(result + 16) + 4 * v353));
          *result = v354;
          *(result + 8) = v353 + 1;
          v351 |= *(result + 4 * v349 + 24) & (v354 >> v350);
        }
      }

      v3[19] = v351;
    }

    if (v2[83])
    {
      v356 = *(result + 156) + 8;
      *(result + 156) = v356;
      v357 = *(result + 4);
      if (v357 >= 8)
      {
        v364 = v357 - 8;
        *(result + 4) = v364;
        v360 = (*result >> v364) & *(result + 56);
      }

      else
      {
        v358 = 8 - v357;
        v359 = v357 | 0x18;
        *(result + 4) = v357 | 0x18;
        v360 = (*result << (8 - v357)) & *(result + 56);
        v361 = *(result + 160);
        v362 = *(result + 8);
        if (v356 > v361 || 32 * v362 > v361)
        {
          *(result + 8) = v362 + 1;
          *result = 0;
        }

        else
        {
          v363 = bswap32(*(*(result + 16) + 4 * v362));
          *result = v363;
          *(result + 8) = v362 + 1;
          v360 |= *(result + 4 * v358 + 24) & (v363 >> v359);
        }
      }

      v3[16] = v360;
    }

    goto LABEL_323;
  }

  if (v4 == 1)
  {
    if (v2[64])
    {
      v13 = *(result + 156) + 8;
      *(result + 156) = v13;
      v14 = *(result + 4);
      if (v14 >= 8)
      {
        v29 = v14 - 8;
        *(result + 4) = v29;
        v17 = (*result >> v29) & *(result + 56);
      }

      else
      {
        v15 = 8 - v14;
        v16 = v14 | 0x18;
        *(result + 4) = v14 | 0x18;
        v17 = (*result << (8 - v14)) & *(result + 56);
        v18 = *(result + 160);
        v19 = *(result + 8);
        if (v13 > v18 || 32 * v19 > v18)
        {
          *(result + 8) = v19 + 1;
          *result = 0;
        }

        else
        {
          v20 = bswap32(*(*(result + 16) + 4 * v19));
          *result = v20;
          *(result + 8) = v19 + 1;
          v17 |= *(result + 4 * v15 + 24) & (v20 >> v16);
        }
      }

      *v3 = v17;
    }

    if (v2[65])
    {
      v32 = *(result + 156) + 8;
      *(result + 156) = v32;
      v33 = *(result + 4);
      if (v33 >= 8)
      {
        v40 = v33 - 8;
        *(result + 4) = v40;
        v36 = (*result >> v40) & *(result + 56);
      }

      else
      {
        v34 = 8 - v33;
        v35 = v33 | 0x18;
        *(result + 4) = v33 | 0x18;
        v36 = (*result << (8 - v33)) & *(result + 56);
        v37 = *(result + 160);
        v38 = *(result + 8);
        if (v32 > v37 || 32 * v38 > v37)
        {
          *(result + 8) = v38 + 1;
          *result = 0;
        }

        else
        {
          v39 = bswap32(*(*(result + 16) + 4 * v38));
          *result = v39;
          *(result + 8) = v38 + 1;
          v36 |= *(result + 4 * v34 + 24) & (v39 >> v35);
        }
      }

      v3[1] = v36;
    }

    if (v2[66])
    {
      v41 = *(result + 156) + 8;
      *(result + 156) = v41;
      v42 = *(result + 4);
      if (v42 >= 8)
      {
        v49 = v42 - 8;
        *(result + 4) = v49;
        v45 = (*result >> v49) & *(result + 56);
      }

      else
      {
        v43 = 8 - v42;
        v44 = v42 | 0x18;
        *(result + 4) = v42 | 0x18;
        v45 = (*result << (8 - v42)) & *(result + 56);
        v46 = *(result + 160);
        v47 = *(result + 8);
        if (v41 > v46 || 32 * v47 > v46)
        {
          *(result + 8) = v47 + 1;
          *result = 0;
        }

        else
        {
          v48 = bswap32(*(*(result + 16) + 4 * v47));
          *result = v48;
          *(result + 8) = v47 + 1;
          v45 |= *(result + 4 * v43 + 24) & (v48 >> v44);
        }
      }

      v3[2] = v45;
    }

    if (v2[67])
    {
      v50 = *(result + 156) + 8;
      *(result + 156) = v50;
      v51 = *(result + 4);
      if (v51 >= 8)
      {
        v58 = v51 - 8;
        *(result + 4) = v58;
        v54 = (*result >> v58) & *(result + 56);
      }

      else
      {
        v52 = 8 - v51;
        v53 = v51 | 0x18;
        *(result + 4) = v51 | 0x18;
        v54 = (*result << (8 - v51)) & *(result + 56);
        v55 = *(result + 160);
        v56 = *(result + 8);
        if (v50 > v55 || 32 * v56 > v55)
        {
          *(result + 8) = v56 + 1;
          *result = 0;
        }

        else
        {
          v57 = bswap32(*(*(result + 16) + 4 * v56));
          *result = v57;
          *(result + 8) = v56 + 1;
          v54 |= *(result + 4 * v52 + 24) & (v57 >> v53);
        }
      }

      v3[3] = v54;
    }

    if (v2[68])
    {
      v59 = *(result + 156) + 8;
      *(result + 156) = v59;
      v60 = *(result + 4);
      if (v60 >= 8)
      {
        v67 = v60 - 8;
        *(result + 4) = v67;
        v63 = (*result >> v67) & *(result + 56);
      }

      else
      {
        v61 = 8 - v60;
        v62 = v60 | 0x18;
        *(result + 4) = v60 | 0x18;
        v63 = (*result << (8 - v60)) & *(result + 56);
        v64 = *(result + 160);
        v65 = *(result + 8);
        if (v59 > v64 || 32 * v65 > v64)
        {
          *(result + 8) = v65 + 1;
          *result = 0;
        }

        else
        {
          v66 = bswap32(*(*(result + 16) + 4 * v65));
          *result = v66;
          *(result + 8) = v65 + 1;
          v63 |= *(result + 4 * v61 + 24) & (v66 >> v62);
        }
      }

      v3[4] = v63;
    }

    if (v2[69])
    {
      v68 = *(result + 156) + 8;
      *(result + 156) = v68;
      v69 = *(result + 4);
      if (v69 >= 8)
      {
        v76 = v69 - 8;
        *(result + 4) = v76;
        v72 = (*result >> v76) & *(result + 56);
      }

      else
      {
        v70 = 8 - v69;
        v71 = v69 | 0x18;
        *(result + 4) = v69 | 0x18;
        v72 = (*result << (8 - v69)) & *(result + 56);
        v73 = *(result + 160);
        v74 = *(result + 8);
        if (v68 > v73 || 32 * v74 > v73)
        {
          *(result + 8) = v74 + 1;
          *result = 0;
        }

        else
        {
          v75 = bswap32(*(*(result + 16) + 4 * v74));
          *result = v75;
          *(result + 8) = v74 + 1;
          v72 |= *(result + 4 * v70 + 24) & (v75 >> v71);
        }
      }

      v3[5] = v72;
    }

    if (v2[71])
    {
      v77 = *(result + 156) + 8;
      *(result + 156) = v77;
      v78 = *(result + 4);
      if (v78 >= 8)
      {
        v85 = v78 - 8;
        *(result + 4) = v85;
        v81 = (*result >> v85) & *(result + 56);
      }

      else
      {
        v79 = 8 - v78;
        v80 = v78 | 0x18;
        *(result + 4) = v78 | 0x18;
        v81 = (*result << (8 - v78)) & *(result + 56);
        v82 = *(result + 160);
        v83 = *(result + 8);
        if (v77 > v82 || 32 * v83 > v82)
        {
          *(result + 8) = v83 + 1;
          *result = 0;
        }

        else
        {
          v84 = bswap32(*(*(result + 16) + 4 * v83));
          *result = v84;
          *(result + 8) = v83 + 1;
          v81 |= *(result + 4 * v79 + 24) & (v84 >> v80);
        }
      }

      v3[6] = v81;
    }

    if (v2[74])
    {
      v86 = *(result + 156) + 8;
      *(result + 156) = v86;
      v87 = *(result + 4);
      if (v87 >= 8)
      {
        v94 = v87 - 8;
        *(result + 4) = v94;
        v90 = (*result >> v94) & *(result + 56);
      }

      else
      {
        v88 = 8 - v87;
        v89 = v87 | 0x18;
        *(result + 4) = v87 | 0x18;
        v90 = (*result << (8 - v87)) & *(result + 56);
        v91 = *(result + 160);
        v92 = *(result + 8);
        if (v86 > v91 || 32 * v92 > v91)
        {
          *(result + 8) = v92 + 1;
          *result = 0;
        }

        else
        {
          v93 = bswap32(*(*(result + 16) + 4 * v92));
          *result = v93;
          *(result + 8) = v92 + 1;
          v90 |= *(result + 4 * v88 + 24) & (v93 >> v89);
        }
      }

      v3[9] = v90;
    }

    if (v2[76])
    {
      v95 = *(result + 156) + 8;
      *(result + 156) = v95;
      v96 = *(result + 4);
      if (v96 >= 8)
      {
        v103 = v96 - 8;
        *(result + 4) = v103;
        v99 = (*result >> v103) & *(result + 56);
      }

      else
      {
        v97 = 8 - v96;
        v98 = v96 | 0x18;
        *(result + 4) = v96 | 0x18;
        v99 = (*result << (8 - v96)) & *(result + 56);
        v100 = *(result + 160);
        v101 = *(result + 8);
        if (v95 > v100 || 32 * v101 > v100)
        {
          *(result + 8) = v101 + 1;
          *result = 0;
        }

        else
        {
          v102 = bswap32(*(*(result + 16) + 4 * v101));
          *result = v102;
          *(result + 8) = v101 + 1;
          v99 |= *(result + 4 * v97 + 24) & (v102 >> v98);
        }
      }

      v3[10] = v99;
    }

    if (v2[77])
    {
      v104 = *(result + 156) + 8;
      *(result + 156) = v104;
      v105 = *(result + 4);
      if (v105 >= 8)
      {
        v112 = v105 - 8;
        *(result + 4) = v112;
        v108 = (*result >> v112) & *(result + 56);
      }

      else
      {
        v106 = 8 - v105;
        v107 = v105 | 0x18;
        *(result + 4) = v105 | 0x18;
        v108 = (*result << (8 - v105)) & *(result + 56);
        v109 = *(result + 160);
        v110 = *(result + 8);
        if (v104 > v109 || 32 * v110 > v109)
        {
          *(result + 8) = v110 + 1;
          *result = 0;
        }

        else
        {
          v111 = bswap32(*(*(result + 16) + 4 * v110));
          *result = v111;
          *(result + 8) = v110 + 1;
          v108 |= *(result + 4 * v106 + 24) & (v111 >> v107);
        }
      }

      v3[11] = v108;
    }

    if (v2[78])
    {
      v113 = *(result + 156) + 8;
      *(result + 156) = v113;
      v114 = *(result + 4);
      if (v114 >= 8)
      {
        v121 = v114 - 8;
        *(result + 4) = v121;
        v117 = (*result >> v121) & *(result + 56);
      }

      else
      {
        v115 = 8 - v114;
        v116 = v114 | 0x18;
        *(result + 4) = v114 | 0x18;
        v117 = (*result << (8 - v114)) & *(result + 56);
        v118 = *(result + 160);
        v119 = *(result + 8);
        if (v113 > v118 || 32 * v119 > v118)
        {
          *(result + 8) = v119 + 1;
          *result = 0;
        }

        else
        {
          v120 = bswap32(*(*(result + 16) + 4 * v119));
          *result = v120;
          *(result + 8) = v119 + 1;
          v117 |= *(result + 4 * v115 + 24) & (v120 >> v116);
        }
      }

      v3[12] = v117;
    }

    if (v2[79])
    {
      v122 = *(result + 156) + 4;
      *(result + 156) = v122;
      v123 = *(result + 4);
      if (v123 >= 4)
      {
        v130 = v123 - 4;
        *(result + 4) = v130;
        v126 = (*result >> v130) & *(result + 40);
      }

      else
      {
        v124 = 4 - v123;
        v125 = v123 | 0x1C;
        *(result + 4) = v123 | 0x1C;
        v126 = (*result << (4 - v123)) & *(result + 40);
        v127 = *(result + 160);
        v128 = *(result + 8);
        if (v122 > v127 || 32 * v128 > v127)
        {
          *(result + 8) = v128 + 1;
          *result = 0;
        }

        else
        {
          v129 = bswap32(*(*(result + 16) + 4 * v128));
          *result = v129;
          *(result + 8) = v128 + 1;
          v126 |= *(result + 4 * v124 + 24) & (v129 >> v125);
        }
      }

      v3[13] = v126;
    }

    if (v2[72])
    {
      v131 = *(result + 156) + 8;
      *(result + 156) = v131;
      v132 = *(result + 4);
      if (v132 >= 8)
      {
        v139 = v132 - 8;
        *(result + 4) = v139;
        v135 = (*result >> v139) & *(result + 56);
      }

      else
      {
        v133 = 8 - v132;
        v134 = v132 | 0x18;
        *(result + 4) = v132 | 0x18;
        v135 = (*result << (8 - v132)) & *(result + 56);
        v136 = *(result + 160);
        v137 = *(result + 8);
        if (v131 > v136 || 32 * v137 > v136)
        {
          *(result + 8) = v137 + 1;
          *result = 0;
        }

        else
        {
          v138 = bswap32(*(*(result + 16) + 4 * v137));
          *result = v138;
          *(result + 8) = v137 + 1;
          v135 |= *(result + 4 * v133 + 24) & (v138 >> v134);
        }
      }

      v3[7] = v135;
    }

    if (v2[73])
    {
      v140 = *(result + 156) + 8;
      *(result + 156) = v140;
      v141 = *(result + 4);
      if (v141 >= 8)
      {
        v148 = v141 - 8;
        *(result + 4) = v148;
        v144 = (*result >> v148) & *(result + 56);
      }

      else
      {
        v142 = 8 - v141;
        v143 = v141 | 0x18;
        *(result + 4) = v141 | 0x18;
        v144 = (*result << (8 - v141)) & *(result + 56);
        v145 = *(result + 160);
        v146 = *(result + 8);
        if (v140 > v145 || 32 * v146 > v145)
        {
          *(result + 8) = v146 + 1;
          *result = 0;
        }

        else
        {
          v147 = bswap32(*(*(result + 16) + 4 * v146));
          *result = v147;
          *(result + 8) = v146 + 1;
          v144 |= *(result + 4 * v142 + 24) & (v147 >> v143);
        }
      }

      v3[8] = v144;
    }

    if (v2[81])
    {
      v149 = *(result + 156) + 8;
      *(result + 156) = v149;
      v150 = *(result + 4);
      if (v150 >= 8)
      {
        v157 = v150 - 8;
        *(result + 4) = v157;
        v153 = (*result >> v157) & *(result + 56);
      }

      else
      {
        v151 = 8 - v150;
        v152 = v150 | 0x18;
        *(result + 4) = v150 | 0x18;
        v153 = (*result << (8 - v150)) & *(result + 56);
        v154 = *(result + 160);
        v155 = *(result + 8);
        if (v149 > v154 || 32 * v155 > v154)
        {
          *(result + 8) = v155 + 1;
          *result = 0;
        }

        else
        {
          v156 = bswap32(*(*(result + 16) + 4 * v155));
          *result = v156;
          *(result + 8) = v155 + 1;
          v153 |= *(result + 4 * v151 + 24) & (v156 >> v152);
        }
      }

      v3[14] = v153;
    }

    if (v2[82])
    {
      v158 = *(result + 156) + 8;
      *(result + 156) = v158;
      v159 = *(result + 4);
      if (v159 >= 8)
      {
        v166 = v159 - 8;
        *(result + 4) = v166;
        v162 = (*result >> v166) & *(result + 56);
      }

      else
      {
        v160 = 8 - v159;
        v161 = v159 | 0x18;
        *(result + 4) = v159 | 0x18;
        v162 = (*result << (8 - v159)) & *(result + 56);
        v163 = *(result + 160);
        v164 = *(result + 8);
        if (v158 > v163 || 32 * v164 > v163)
        {
          *(result + 8) = v164 + 1;
          *result = 0;
        }

        else
        {
          v165 = bswap32(*(*(result + 16) + 4 * v164));
          *result = v165;
          *(result + 8) = v164 + 1;
          v162 |= *(result + 4 * v160 + 24) & (v165 >> v161);
        }
      }

      v3[15] = v162;
    }

    if (v2[84])
    {
      v167 = *(result + 156) + 8;
      *(result + 156) = v167;
      v168 = *(result + 4);
      if (v168 >= 8)
      {
        v175 = v168 - 8;
        *(result + 4) = v175;
        v171 = (*result >> v175) & *(result + 56);
      }

      else
      {
        v169 = 8 - v168;
        v170 = v168 | 0x18;
        *(result + 4) = v168 | 0x18;
        v171 = (*result << (8 - v168)) & *(result + 56);
        v172 = *(result + 160);
        v173 = *(result + 8);
        if (v167 > v172 || 32 * v173 > v172)
        {
          *(result + 8) = v173 + 1;
          *result = 0;
        }

        else
        {
          v174 = bswap32(*(*(result + 16) + 4 * v173));
          *result = v174;
          *(result + 8) = v173 + 1;
          v171 |= *(result + 4 * v169 + 24) & (v174 >> v170);
        }
      }

      v3[17] = v171;
    }

    if (v2[85])
    {
      v176 = *(result + 156) + 8;
      *(result + 156) = v176;
      v177 = *(result + 4);
      if (v177 >= 8)
      {
        v184 = v177 - 8;
        *(result + 4) = v184;
        v180 = (*result >> v184) & *(result + 56);
      }

      else
      {
        v178 = 8 - v177;
        v179 = v177 | 0x18;
        *(result + 4) = v177 | 0x18;
        v180 = (*result << (8 - v177)) & *(result + 56);
        v181 = *(result + 160);
        v182 = *(result + 8);
        if (v176 > v181 || 32 * v182 > v181)
        {
          *(result + 8) = v182 + 1;
          *result = 0;
        }

        else
        {
          v183 = bswap32(*(*(result + 16) + 4 * v182));
          *result = v183;
          *(result + 8) = v182 + 1;
          v180 |= *(result + 4 * v178 + 24) & (v183 >> v179);
        }
      }

      v3[18] = v180;
    }

    if (v2[86])
    {
      v185 = *(result + 156) + 8;
      *(result + 156) = v185;
      v186 = *(result + 4);
      if (v186 >= 8)
      {
        v193 = v186 - 8;
        *(result + 4) = v193;
        v189 = (*result >> v193) & *(result + 56);
      }

      else
      {
        v187 = 8 - v186;
        v188 = v186 | 0x18;
        *(result + 4) = v186 | 0x18;
        v189 = (*result << (8 - v186)) & *(result + 56);
        v190 = *(result + 160);
        v191 = *(result + 8);
        if (v185 > v190 || 32 * v191 > v190)
        {
          *(result + 8) = v191 + 1;
          *result = 0;
        }

        else
        {
          v192 = bswap32(*(*(result + 16) + 4 * v191));
          *result = v192;
          *(result + 8) = v191 + 1;
          v189 |= *(result + 4 * v187 + 24) & (v192 >> v188);
        }
      }

      v3[19] = v189;
    }

LABEL_323:
    if (v2[88])
    {
      v365 = *(result + 156) + 8;
      *(result + 156) = v365;
      v366 = *(result + 4);
      if (v366 >= 8)
      {
        v373 = v366 - 8;
        *(result + 4) = v373;
        v369 = (*result >> v373) & *(result + 56);
      }

      else
      {
        v367 = 8 - v366;
        v368 = v366 | 0x18;
        *(result + 4) = v366 | 0x18;
        v369 = (*result << (8 - v366)) & *(result + 56);
        v370 = *(result + 160);
        v371 = *(result + 8);
        if (v365 > v370 || 32 * v371 > v370)
        {
          *(result + 8) = v371 + 1;
          *result = 0;
        }

        else
        {
          v372 = bswap32(*(*(result + 16) + 4 * v371));
          *result = v372;
          *(result + 8) = v371 + 1;
          v369 |= *(result + 4 * v367 + 24) & (v372 >> v368);
        }
      }

      v3[20] = v369;
    }

    if (!v2[89])
    {
      goto LABEL_438;
    }

    v374 = *(result + 156) + 8;
    *(result + 156) = v374;
    v375 = *(result + 4);
    if (v375 >= 8)
    {
      v382 = v375 - 8;
      *(result + 4) = v382;
      v378 = (*result >> v382) & *(result + 56);
    }

    else
    {
      v376 = 8 - v375;
      v377 = v375 | 0x18;
      *(result + 4) = v375 | 0x18;
      v378 = (*result << (8 - v375)) & *(result + 56);
      v379 = *(result + 160);
      v380 = *(result + 8);
      if (v374 > v379 || 32 * v380 > v379)
      {
        *(result + 8) = v380 + 1;
        *result = 0;
      }

      else
      {
        v381 = bswap32(*(*(result + 16) + 4 * v380));
        *result = v381;
        *(result + 8) = v380 + 1;
        v378 |= *(result + 4 * v376 + 24) & (v381 >> v377);
      }
    }

    v383 = 21;
    goto LABEL_437;
  }

  if (!v2[148])
  {
    if (v2[64])
    {
      v5 = *(result + 156) + 8;
      *(result + 156) = v5;
      v6 = *(result + 4);
      if (v6 >= 8)
      {
        v31 = v6 - 8;
        *(result + 4) = v31;
        v9 = (*result >> v31) & *(result + 56);
      }

      else
      {
        v7 = 8 - v6;
        v8 = v6 | 0x18;
        *(result + 4) = v6 | 0x18;
        v9 = (*result << (8 - v6)) & *(result + 56);
        v10 = *(result + 160);
        v11 = *(result + 8);
        if (v5 > v10 || 32 * v11 > v10)
        {
          *(result + 8) = v11 + 1;
          *result = 0;
        }

        else
        {
          v12 = bswap32(*(*(result + 16) + 4 * v11));
          *result = v12;
          *(result + 8) = v11 + 1;
          v9 |= *(result + 4 * v7 + 24) & (v12 >> v8);
        }
      }

      *v3 = v9;
    }

    if (v2[65])
    {
      v384 = *(result + 156) + 8;
      *(result + 156) = v384;
      v385 = *(result + 4);
      if (v385 >= 8)
      {
        v392 = v385 - 8;
        *(result + 4) = v392;
        v388 = (*result >> v392) & *(result + 56);
      }

      else
      {
        v386 = 8 - v385;
        v387 = v385 | 0x18;
        *(result + 4) = v385 | 0x18;
        v388 = (*result << (8 - v385)) & *(result + 56);
        v389 = *(result + 160);
        v390 = *(result + 8);
        if (v384 > v389 || 32 * v390 > v389)
        {
          *(result + 8) = v390 + 1;
          *result = 0;
        }

        else
        {
          v391 = bswap32(*(*(result + 16) + 4 * v390));
          *result = v391;
          *(result + 8) = v390 + 1;
          v388 |= *(result + 4 * v386 + 24) & (v391 >> v387);
        }
      }

      v3[1] = v388;
    }

    if (v2[66])
    {
      v393 = *(result + 156) + 8;
      *(result + 156) = v393;
      v394 = *(result + 4);
      if (v394 >= 8)
      {
        v401 = v394 - 8;
        *(result + 4) = v401;
        v397 = (*result >> v401) & *(result + 56);
      }

      else
      {
        v395 = 8 - v394;
        v396 = v394 | 0x18;
        *(result + 4) = v394 | 0x18;
        v397 = (*result << (8 - v394)) & *(result + 56);
        v398 = *(result + 160);
        v399 = *(result + 8);
        if (v393 > v398 || 32 * v399 > v398)
        {
          *(result + 8) = v399 + 1;
          *result = 0;
        }

        else
        {
          v400 = bswap32(*(*(result + 16) + 4 * v399));
          *result = v400;
          *(result + 8) = v399 + 1;
          v397 |= *(result + 4 * v395 + 24) & (v400 >> v396);
        }
      }

      v3[2] = v397;
    }

    if (v2[67])
    {
      v402 = *(result + 156) + 8;
      *(result + 156) = v402;
      v403 = *(result + 4);
      if (v403 >= 8)
      {
        v410 = v403 - 8;
        *(result + 4) = v410;
        v406 = (*result >> v410) & *(result + 56);
      }

      else
      {
        v404 = 8 - v403;
        v405 = v403 | 0x18;
        *(result + 4) = v403 | 0x18;
        v406 = (*result << (8 - v403)) & *(result + 56);
        v407 = *(result + 160);
        v408 = *(result + 8);
        if (v402 > v407 || 32 * v408 > v407)
        {
          *(result + 8) = v408 + 1;
          *result = 0;
        }

        else
        {
          v409 = bswap32(*(*(result + 16) + 4 * v408));
          *result = v409;
          *(result + 8) = v408 + 1;
          v406 |= *(result + 4 * v404 + 24) & (v409 >> v405);
        }
      }

      v3[3] = v406;
    }

    if (v2[68])
    {
      v411 = *(result + 156) + 8;
      *(result + 156) = v411;
      v412 = *(result + 4);
      if (v412 >= 8)
      {
        v419 = v412 - 8;
        *(result + 4) = v419;
        v415 = (*result >> v419) & *(result + 56);
      }

      else
      {
        v413 = 8 - v412;
        v414 = v412 | 0x18;
        *(result + 4) = v412 | 0x18;
        v415 = (*result << (8 - v412)) & *(result + 56);
        v416 = *(result + 160);
        v417 = *(result + 8);
        if (v411 > v416 || 32 * v417 > v416)
        {
          *(result + 8) = v417 + 1;
          *result = 0;
        }

        else
        {
          v418 = bswap32(*(*(result + 16) + 4 * v417));
          *result = v418;
          *(result + 8) = v417 + 1;
          v415 |= *(result + 4 * v413 + 24) & (v418 >> v414);
        }
      }

      v3[4] = v415;
    }

    if (v2[69])
    {
      v420 = *(result + 156) + 8;
      *(result + 156) = v420;
      v421 = *(result + 4);
      if (v421 >= 8)
      {
        v428 = v421 - 8;
        *(result + 4) = v428;
        v424 = (*result >> v428) & *(result + 56);
      }

      else
      {
        v422 = 8 - v421;
        v423 = v421 | 0x18;
        *(result + 4) = v421 | 0x18;
        v424 = (*result << (8 - v421)) & *(result + 56);
        v425 = *(result + 160);
        v426 = *(result + 8);
        if (v420 > v425 || 32 * v426 > v425)
        {
          *(result + 8) = v426 + 1;
          *result = 0;
        }

        else
        {
          v427 = bswap32(*(*(result + 16) + 4 * v426));
          *result = v427;
          *(result + 8) = v426 + 1;
          v424 |= *(result + 4 * v422 + 24) & (v427 >> v423);
        }
      }

      v3[5] = v424;
    }

    if (v2[71])
    {
      v429 = *(result + 156) + 8;
      *(result + 156) = v429;
      v430 = *(result + 4);
      if (v430 >= 8)
      {
        v437 = v430 - 8;
        *(result + 4) = v437;
        v433 = (*result >> v437) & *(result + 56);
      }

      else
      {
        v431 = 8 - v430;
        v432 = v430 | 0x18;
        *(result + 4) = v430 | 0x18;
        v433 = (*result << (8 - v430)) & *(result + 56);
        v434 = *(result + 160);
        v435 = *(result + 8);
        if (v429 > v434 || 32 * v435 > v434)
        {
          *(result + 8) = v435 + 1;
          *result = 0;
        }

        else
        {
          v436 = bswap32(*(*(result + 16) + 4 * v435));
          *result = v436;
          *(result + 8) = v435 + 1;
          v433 |= *(result + 4 * v431 + 24) & (v436 >> v432);
        }
      }

      v3[6] = v433;
    }

    if (v2[74])
    {
      v438 = *(result + 156) + 8;
      *(result + 156) = v438;
      v439 = *(result + 4);
      if (v439 >= 8)
      {
        v446 = v439 - 8;
        *(result + 4) = v446;
        v442 = (*result >> v446) & *(result + 56);
      }

      else
      {
        v440 = 8 - v439;
        v441 = v439 | 0x18;
        *(result + 4) = v439 | 0x18;
        v442 = (*result << (8 - v439)) & *(result + 56);
        v443 = *(result + 160);
        v444 = *(result + 8);
        if (v438 > v443 || 32 * v444 > v443)
        {
          *(result + 8) = v444 + 1;
          *result = 0;
        }

        else
        {
          v445 = bswap32(*(*(result + 16) + 4 * v444));
          *result = v445;
          *(result + 8) = v444 + 1;
          v442 |= *(result + 4 * v440 + 24) & (v445 >> v441);
        }
      }

      v3[9] = v442;
    }

    if (v2[76])
    {
      v447 = *(result + 156) + 8;
      *(result + 156) = v447;
      v448 = *(result + 4);
      if (v448 >= 8)
      {
        v455 = v448 - 8;
        *(result + 4) = v455;
        v451 = (*result >> v455) & *(result + 56);
      }

      else
      {
        v449 = 8 - v448;
        v450 = v448 | 0x18;
        *(result + 4) = v448 | 0x18;
        v451 = (*result << (8 - v448)) & *(result + 56);
        v452 = *(result + 160);
        v453 = *(result + 8);
        if (v447 > v452 || 32 * v453 > v452)
        {
          *(result + 8) = v453 + 1;
          *result = 0;
        }

        else
        {
          v454 = bswap32(*(*(result + 16) + 4 * v453));
          *result = v454;
          *(result + 8) = v453 + 1;
          v451 |= *(result + 4 * v449 + 24) & (v454 >> v450);
        }
      }

      v3[10] = v451;
    }

    if (v2[77])
    {
      v456 = *(result + 156) + 8;
      *(result + 156) = v456;
      v457 = *(result + 4);
      if (v457 >= 8)
      {
        v464 = v457 - 8;
        *(result + 4) = v464;
        v460 = (*result >> v464) & *(result + 56);
      }

      else
      {
        v458 = 8 - v457;
        v459 = v457 | 0x18;
        *(result + 4) = v457 | 0x18;
        v460 = (*result << (8 - v457)) & *(result + 56);
        v461 = *(result + 160);
        v462 = *(result + 8);
        if (v456 > v461 || 32 * v462 > v461)
        {
          *(result + 8) = v462 + 1;
          *result = 0;
        }

        else
        {
          v463 = bswap32(*(*(result + 16) + 4 * v462));
          *result = v463;
          *(result + 8) = v462 + 1;
          v460 |= *(result + 4 * v458 + 24) & (v463 >> v459);
        }
      }

      v3[11] = v460;
    }

    if (v2[78])
    {
      v465 = *(result + 156) + 8;
      *(result + 156) = v465;
      v466 = *(result + 4);
      if (v466 >= 8)
      {
        v473 = v466 - 8;
        *(result + 4) = v473;
        v469 = (*result >> v473) & *(result + 56);
      }

      else
      {
        v467 = 8 - v466;
        v468 = v466 | 0x18;
        *(result + 4) = v466 | 0x18;
        v469 = (*result << (8 - v466)) & *(result + 56);
        v470 = *(result + 160);
        v471 = *(result + 8);
        if (v465 > v470 || 32 * v471 > v470)
        {
          *(result + 8) = v471 + 1;
          *result = 0;
        }

        else
        {
          v472 = bswap32(*(*(result + 16) + 4 * v471));
          *result = v472;
          *(result + 8) = v471 + 1;
          v469 |= *(result + 4 * v467 + 24) & (v472 >> v468);
        }
      }

      v3[12] = v469;
    }

    if (v2[79])
    {
      v474 = *(result + 156) + 4;
      *(result + 156) = v474;
      v475 = *(result + 4);
      if (v475 >= 4)
      {
        v482 = v475 - 4;
        *(result + 4) = v482;
        v478 = (*result >> v482) & *(result + 40);
      }

      else
      {
        v476 = 4 - v475;
        v477 = v475 | 0x1C;
        *(result + 4) = v475 | 0x1C;
        v478 = (*result << (4 - v475)) & *(result + 40);
        v479 = *(result + 160);
        v480 = *(result + 8);
        if (v474 > v479 || 32 * v480 > v479)
        {
          *(result + 8) = v480 + 1;
          *result = 0;
        }

        else
        {
          v481 = bswap32(*(*(result + 16) + 4 * v480));
          *result = v481;
          *(result + 8) = v480 + 1;
          v478 |= *(result + 4 * v476 + 24) & (v481 >> v477);
        }
      }

      v3[13] = v478;
    }

    if (!v2[88])
    {
      goto LABEL_438;
    }

    v483 = *(result + 156) + 8;
    *(result + 156) = v483;
    v484 = *(result + 4);
    if (v484 >= 8)
    {
      v490 = v484 - 8;
      *(result + 4) = v490;
      v378 = (*result >> v490) & *(result + 56);
    }

    else
    {
      v485 = 8 - v484;
      v486 = v484 | 0x18;
      *(result + 4) = v484 | 0x18;
      v378 = (*result << (8 - v484)) & *(result + 56);
      v487 = *(result + 160);
      v488 = *(result + 8);
      if (v483 > v487 || 32 * v488 > v487)
      {
        *(result + 8) = v488 + 1;
        *result = 0;
      }

      else
      {
        v489 = bswap32(*(*(result + 16) + 4 * v488));
        *result = v489;
        *(result + 8) = v488 + 1;
        v378 |= *(result + 4 * v485 + 24) & (v489 >> v486);
      }
    }

    v383 = 20;
LABEL_437:
    v3[v383] = v378;
LABEL_438:
    v4 = v2[148];
  }

  if (v4 == 3 && v2[90] == 2)
  {
    if (v2[71])
    {
      v491 = *(result + 156) + 8;
      *(result + 156) = v491;
      v492 = *(result + 4);
      if (v492 >= 8)
      {
        v499 = v492 - 8;
        *(result + 4) = v499;
        v495 = (*result >> v499) & *(result + 56);
      }

      else
      {
        v493 = 8 - v492;
        v494 = v492 | 0x18;
        *(result + 4) = v492 | 0x18;
        v495 = (*result << (8 - v492)) & *(result + 56);
        v496 = *(result + 160);
        v497 = *(result + 8);
        if (v491 > v496 || 32 * v497 > v496)
        {
          *(result + 8) = v497 + 1;
          *result = 0;
        }

        else
        {
          v498 = bswap32(*(*(result + 16) + 4 * v497));
          *result = v498;
          *(result + 8) = v497 + 1;
          v495 |= *(result + 4 * v493 + 24) & (v498 >> v494);
        }
      }

      v3[6] = v495;
    }

    if (v2[74])
    {
      v500 = *(result + 156) + 8;
      *(result + 156) = v500;
      v501 = *(result + 4);
      if (v501 >= 8)
      {
        v508 = v501 - 8;
        *(result + 4) = v508;
        v504 = (*result >> v508) & *(result + 56);
      }

      else
      {
        v502 = 8 - v501;
        v503 = v501 | 0x18;
        *(result + 4) = v501 | 0x18;
        v504 = (*result << (8 - v501)) & *(result + 56);
        v505 = *(result + 160);
        v506 = *(result + 8);
        if (v500 > v505 || 32 * v506 > v505)
        {
          *(result + 8) = v506 + 1;
          *result = 0;
        }

        else
        {
          v507 = bswap32(*(*(result + 16) + 4 * v506));
          *result = v507;
          *(result + 8) = v506 + 1;
          v504 |= *(result + 4 * v502 + 24) & (v507 >> v503);
        }
      }

      v3[9] = v504;
    }

    if (v2[76])
    {
      v509 = *(result + 156) + 8;
      *(result + 156) = v509;
      v510 = *(result + 4);
      if (v510 >= 8)
      {
        v517 = v510 - 8;
        *(result + 4) = v517;
        v513 = (*result >> v517) & *(result + 56);
      }

      else
      {
        v511 = 8 - v510;
        v512 = v510 | 0x18;
        *(result + 4) = v510 | 0x18;
        v513 = (*result << (8 - v510)) & *(result + 56);
        v514 = *(result + 160);
        v515 = *(result + 8);
        if (v509 > v514 || 32 * v515 > v514)
        {
          *(result + 8) = v515 + 1;
          *result = 0;
        }

        else
        {
          v516 = bswap32(*(*(result + 16) + 4 * v515));
          *result = v516;
          *(result + 8) = v515 + 1;
          v513 |= *(result + 4 * v511 + 24) & (v516 >> v512);
        }
      }

      v3[10] = v513;
    }

    if (v2[77])
    {
      v518 = *(result + 156) + 8;
      *(result + 156) = v518;
      v519 = *(result + 4);
      if (v519 >= 8)
      {
        v526 = v519 - 8;
        *(result + 4) = v526;
        v522 = (*result >> v526) & *(result + 56);
      }

      else
      {
        v520 = 8 - v519;
        v521 = v519 | 0x18;
        *(result + 4) = v519 | 0x18;
        v522 = (*result << (8 - v519)) & *(result + 56);
        v523 = *(result + 160);
        v524 = *(result + 8);
        if (v518 > v523 || 32 * v524 > v523)
        {
          *(result + 8) = v524 + 1;
          *result = 0;
        }

        else
        {
          v525 = bswap32(*(*(result + 16) + 4 * v524));
          *result = v525;
          *(result + 8) = v524 + 1;
          v522 |= *(result + 4 * v520 + 24) & (v525 >> v521);
        }
      }

      v3[11] = v522;
    }

    if (v2[78])
    {
      v527 = *(result + 156) + 8;
      *(result + 156) = v527;
      v528 = *(result + 4);
      if (v528 >= 8)
      {
        v535 = v528 - 8;
        *(result + 4) = v535;
        v531 = (*result >> v535) & *(result + 56);
      }

      else
      {
        v529 = 8 - v528;
        v530 = v528 | 0x18;
        *(result + 4) = v528 | 0x18;
        v531 = (*result << (8 - v528)) & *(result + 56);
        v532 = *(result + 160);
        v533 = *(result + 8);
        if (v527 > v532 || 32 * v533 > v532)
        {
          *(result + 8) = v533 + 1;
          *result = 0;
        }

        else
        {
          v534 = bswap32(*(*(result + 16) + 4 * v533));
          *result = v534;
          *(result + 8) = v533 + 1;
          v531 |= *(result + 4 * v529 + 24) & (v534 >> v530);
        }
      }

      v3[12] = v531;
    }

    if (v2[79])
    {
      v536 = *(result + 156) + 8;
      *(result + 156) = v536;
      v537 = *(result + 4);
      if (v537 >= 8)
      {
        v544 = v537 - 8;
        *(result + 4) = v544;
        v540 = (*result >> v544) & *(result + 56);
      }

      else
      {
        v538 = 8 - v537;
        v539 = v537 | 0x18;
        *(result + 4) = v537 | 0x18;
        v540 = (*result << (8 - v537)) & *(result + 56);
        v541 = *(result + 160);
        v542 = *(result + 8);
        if (v536 > v541 || 32 * v542 > v541)
        {
          *(result + 8) = v542 + 1;
          *result = 0;
        }

        else
        {
          v543 = bswap32(*(*(result + 16) + 4 * v542));
          *result = v543;
          *(result + 8) = v542 + 1;
          v540 |= *(result + 4 * v538 + 24) & (v543 >> v539);
        }
      }

      v3[13] = v540;
    }

    if (v2[72])
    {
      v545 = *(result + 156) + 8;
      *(result + 156) = v545;
      v546 = *(result + 4);
      if (v546 >= 8)
      {
        v553 = v546 - 8;
        *(result + 4) = v553;
        v549 = (*result >> v553) & *(result + 56);
      }

      else
      {
        v547 = 8 - v546;
        v548 = v546 | 0x18;
        *(result + 4) = v546 | 0x18;
        v549 = (*result << (8 - v546)) & *(result + 56);
        v550 = *(result + 160);
        v551 = *(result + 8);
        if (v545 > v550 || 32 * v551 > v550)
        {
          *(result + 8) = v551 + 1;
          *result = 0;
        }

        else
        {
          v552 = bswap32(*(*(result + 16) + 4 * v551));
          *result = v552;
          *(result + 8) = v551 + 1;
          v549 |= *(result + 4 * v547 + 24) & (v552 >> v548);
        }
      }

      v3[7] = v549;
    }

    if (v2[73])
    {
      v554 = *(result + 156) + 4;
      *(result + 156) = v554;
      v555 = *(result + 4);
      if (v555 >= 4)
      {
        v562 = v555 - 4;
        *(result + 4) = v562;
        v558 = (*result >> v562) & *(result + 40);
      }

      else
      {
        v556 = 4 - v555;
        v557 = v555 | 0x1C;
        *(result + 4) = v555 | 0x1C;
        v558 = (*result << (4 - v555)) & *(result + 40);
        v559 = *(result + 160);
        v560 = *(result + 8);
        if (v554 > v559 || 32 * v560 > v559)
        {
          *(result + 8) = v560 + 1;
          *result = 0;
        }

        else
        {
          v561 = bswap32(*(*(result + 16) + 4 * v560));
          *result = v561;
          *(result + 8) = v560 + 1;
          v558 |= *(result + 4 * v556 + 24) & (v561 >> v557);
        }
      }

      v3[8] = v558;
    }

    if (v2[81])
    {
      v563 = *(result + 156) + 8;
      *(result + 156) = v563;
      v564 = *(result + 4);
      if (v564 >= 8)
      {
        v571 = v564 - 8;
        *(result + 4) = v571;
        v567 = (*result >> v571) & *(result + 56);
      }

      else
      {
        v565 = 8 - v564;
        v566 = v564 | 0x18;
        *(result + 4) = v564 | 0x18;
        v567 = (*result << (8 - v564)) & *(result + 56);
        v568 = *(result + 160);
        v569 = *(result + 8);
        if (v563 > v568 || 32 * v569 > v568)
        {
          *(result + 8) = v569 + 1;
          *result = 0;
        }

        else
        {
          v570 = bswap32(*(*(result + 16) + 4 * v569));
          *result = v570;
          *(result + 8) = v569 + 1;
          v567 |= *(result + 4 * v565 + 24) & (v570 >> v566);
        }
      }

      v3[14] = v567;
    }

    if (v2[82])
    {
      v572 = *(result + 156) + 8;
      *(result + 156) = v572;
      v573 = *(result + 4);
      if (v573 >= 8)
      {
        v580 = v573 - 8;
        *(result + 4) = v580;
        v576 = (*result >> v580) & *(result + 56);
      }

      else
      {
        v574 = 8 - v573;
        v575 = v573 | 0x18;
        *(result + 4) = v573 | 0x18;
        v576 = (*result << (8 - v573)) & *(result + 56);
        v577 = *(result + 160);
        v578 = *(result + 8);
        if (v572 > v577 || 32 * v578 > v577)
        {
          *(result + 8) = v578 + 1;
          *result = 0;
        }

        else
        {
          v579 = bswap32(*(*(result + 16) + 4 * v578));
          *result = v579;
          *(result + 8) = v578 + 1;
          v576 |= *(result + 4 * v574 + 24) & (v579 >> v575);
        }
      }

      v3[15] = v576;
    }

    if (v2[84])
    {
      v581 = *(result + 156) + 8;
      *(result + 156) = v581;
      v582 = *(result + 4);
      if (v582 >= 8)
      {
        v589 = v582 - 8;
        *(result + 4) = v589;
        v585 = (*result >> v589) & *(result + 56);
      }

      else
      {
        v583 = 8 - v582;
        v584 = v582 | 0x18;
        *(result + 4) = v582 | 0x18;
        v585 = (*result << (8 - v582)) & *(result + 56);
        v586 = *(result + 160);
        v587 = *(result + 8);
        if (v581 > v586 || 32 * v587 > v586)
        {
          *(result + 8) = v587 + 1;
          *result = 0;
        }

        else
        {
          v588 = bswap32(*(*(result + 16) + 4 * v587));
          *result = v588;
          *(result + 8) = v587 + 1;
          v585 |= *(result + 4 * v583 + 24) & (v588 >> v584);
        }
      }

      v3[17] = v585;
    }

    if (v2[85])
    {
      v590 = *(result + 156) + 8;
      *(result + 156) = v590;
      v591 = *(result + 4);
      if (v591 >= 8)
      {
        v598 = v591 - 8;
        *(result + 4) = v598;
        v594 = (*result >> v598) & *(result + 56);
      }

      else
      {
        v592 = 8 - v591;
        v593 = v591 | 0x18;
        *(result + 4) = v591 | 0x18;
        v594 = (*result << (8 - v591)) & *(result + 56);
        v595 = *(result + 160);
        v596 = *(result + 8);
        if (v590 > v595 || 32 * v596 > v595)
        {
          *(result + 8) = v596 + 1;
          *result = 0;
        }

        else
        {
          v597 = bswap32(*(*(result + 16) + 4 * v596));
          *result = v597;
          *(result + 8) = v596 + 1;
          v594 |= *(result + 4 * v592 + 24) & (v597 >> v593);
        }
      }

      v3[18] = v594;
    }

    if (v2[86])
    {
      v599 = *(result + 156) + 8;
      *(result + 156) = v599;
      v600 = *(result + 4);
      if (v600 >= 8)
      {
        v607 = v600 - 8;
        *(result + 4) = v607;
        v603 = (*result >> v607) & *(result + 56);
      }

      else
      {
        v601 = 8 - v600;
        v602 = v600 | 0x18;
        *(result + 4) = v600 | 0x18;
        v603 = (*result << (8 - v600)) & *(result + 56);
        v604 = *(result + 160);
        v605 = *(result + 8);
        if (v599 > v604 || 32 * v605 > v604)
        {
          *(result + 8) = v605 + 1;
          *result = 0;
        }

        else
        {
          v606 = bswap32(*(*(result + 16) + 4 * v605));
          *result = v606;
          *(result + 8) = v605 + 1;
          v603 |= *(result + 4 * v601 + 24) & (v606 >> v602);
        }
      }

      v3[19] = v603;
    }

    if (v2[83])
    {
      v608 = *(result + 156) + 8;
      *(result + 156) = v608;
      v609 = *(result + 4);
      if (v609 >= 8)
      {
        v616 = v609 - 8;
        *(result + 4) = v616;
        v612 = (*result >> v616) & *(result + 56);
      }

      else
      {
        v610 = 8 - v609;
        v611 = v609 | 0x18;
        *(result + 4) = v609 | 0x18;
        v612 = (*result << (8 - v609)) & *(result + 56);
        v613 = *(result + 160);
        v614 = *(result + 8);
        if (v608 > v613 || 32 * v614 > v613)
        {
          *(result + 8) = v614 + 1;
          *result = 0;
        }

        else
        {
          v615 = bswap32(*(*(result + 16) + 4 * v614));
          *result = v615;
          *(result + 8) = v614 + 1;
          v612 |= *(result + 4 * v610 + 24) & (v615 >> v611);
        }
      }

      v3[16] = v612;
    }
  }

  return result;
}