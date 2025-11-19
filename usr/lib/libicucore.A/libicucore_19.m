uint64_t sub_1952A7DF0(uint64_t a1, int a2, int a3)
{
  v3 = a2 & 0xFFFFFC00;
  if (*(a1 + 144168) <= a2)
  {
    if (v3 != 55296 || a3)
    {
      v5 = (*(a1 + 144128) + 4 * *(a1 + 144152) - 16);
      return *v5;
    }

    goto LABEL_7;
  }

  if (v3 != 55296 || !a3)
  {
LABEL_7:
    v4 = *(a1 + 4 * (a2 >> 11)) + ((a2 >> 5) & 0x3F);
    goto LABEL_8;
  }

  v4 = (a2 >> 5) + 320;
LABEL_8:
  v5 = (*(a1 + 144128) + 4 * (*(a1 + 4 * v4 + 2176) + (a2 & 0x1F)));
  return *v5;
}

uint64_t utrie2_get32FromLeadSurrogateCodeUnit(uint64_t a1, unsigned int a2)
{
  if (a2 >> 10 != 54)
  {
    return *(a1 + 40);
  }

  if (*(a1 + 8))
  {
    return *(*a1 + 2 * ((a2 & 0x1F) + 4 * *(*a1 + 2 * (a2 >> 5))));
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    return *(v3 + 4 * ((a2 & 0x1F) + 4 * *(*a1 + 2 * (a2 >> 5))));
  }

  else
  {
    return sub_1952A7DF0(*(a1 + 72), a2, 0);
  }
}

uint64_t utrie2_internalU8NextIndex(uint64_t *a1, UChar32 c, uint8_t *s, uint64_t a4)
{
  pi = 0;
  if (a4 - s >= 8)
  {
    v6 = 7;
  }

  else
  {
    v6 = a4 - s;
  }

  v7 = utf8_nextCharSafeBody(s, &pi, v6, c, -1);
  if (v7 >> 11 <= 0x1A)
  {
    v8 = *a1;
    v9 = v7 >> 5;
LABEL_11:
    v11 = *(v8 + 2 * v9);
LABEL_12:
    v12 = (v7 & 0x1F) + 4 * v11;
    return pi | (8 * v12);
  }

  if (!HIWORD(v7))
  {
    v8 = *a1;
    if (v7 >> 10 >= 0x37)
    {
      v10 = 0;
    }

    else
    {
      v10 = 320;
    }

    v9 = v10 + (v7 >> 5);
    goto LABEL_11;
  }

  if (v7 < 0x110000)
  {
    if (*(a1 + 11) <= v7)
    {
      v12 = *(a1 + 12);
      return pi | (8 * v12);
    }

    v11 = *(*a1 + 2 * (((v7 >> 5) & 0x3F) + *(*a1 + 2 * (v7 >> 11) + 4160)));
    goto LABEL_12;
  }

  if (a1[2])
  {
    v12 = 128;
  }

  else
  {
    v12 = *(a1 + 6) + 128;
  }

  return pi | (8 * v12);
}

uint64_t utrie2_internalU8PrevIndex(uint64_t *a1, UChar32 c, const uint8_t *a3, uint64_t a4)
{
  if (a4 - a3 >= 8)
  {
    v5 = 7;
  }

  else
  {
    v5 = a4 - a3;
  }

  if (a4 - a3 >= 8)
  {
    v6 = (a4 - 7);
  }

  else
  {
    v6 = a3;
  }

  pi = v5;
  v7 = utf8_prevCharSafeBody(v6, 0, &pi, c, -1);
  if (v7 >> 11 <= 0x1A)
  {
    v8 = *a1;
    v9 = v7 >> 5;
LABEL_14:
    v11 = *(v8 + 2 * v9);
LABEL_15:
    v12 = (v7 & 0x1F) + 4 * v11;
    return (v5 - pi) | (8 * v12);
  }

  if (!HIWORD(v7))
  {
    v8 = *a1;
    if (v7 >> 10 >= 0x37)
    {
      v10 = 0;
    }

    else
    {
      v10 = 320;
    }

    v9 = v10 + (v7 >> 5);
    goto LABEL_14;
  }

  if (v7 < 0x110000)
  {
    if (*(a1 + 11) <= v7)
    {
      v12 = *(a1 + 12);
      return (v5 - pi) | (8 * v12);
    }

    v11 = *(*a1 + 2 * (((v7 >> 5) & 0x3F) + *(*a1 + 2 * (v7 >> 11) + 4160)));
    goto LABEL_15;
  }

  if (a1[2])
  {
    v12 = 128;
  }

  else
  {
    v12 = *(a1 + 6) + 128;
  }

  return (v5 - pi) | (8 * v12);
}

void *utrie2_openFromSerialized(unsigned int a1, uint64_t a2, int a3, unsigned int *a4, int *a5)
{
  if (*a5 > 0)
  {
    return 0;
  }

  if (a3 < 1 || (v7 = a1, a1 > 1) || (a2 & 3) != 0)
  {
    result = 0;
    v12 = 1;
    goto LABEL_19;
  }

  if (a3 <= 0xF || *a2 != 1416784178 || (*(a2 + 4) & 0xF) != a1)
  {
    result = 0;
    v12 = 3;
    goto LABEL_19;
  }

  v9 = *(a2 + 6);
  v10 = *(a2 + 8);
  if (a1)
  {
    v11 = -4;
  }

  else
  {
    v11 = v9 - 4;
  }

  v12 = 3;
  if (a1)
  {
    v13 = 4;
  }

  else
  {
    v13 = 3;
  }

  v14 = (v10 << v13) + 2 * v9 + 16;
  if (v14 > a3)
  {
    result = 0;
LABEL_19:
    *a5 = v12;
    return result;
  }

  v21 = *(a2 + 10);
  v16 = *(a2 + 12);
  v17 = *(a2 + 14);
  result = malloc_type_malloc(0x50uLL, 0x10F0040C13F8FF7uLL);
  if (!result)
  {
    v12 = 7;
    goto LABEL_19;
  }

  result[1] = 0;
  result[2] = 0;
  *(result + 6) = v9;
  *(result + 7) = 4 * v10;
  *(result + 16) = v21;
  *(result + 17) = v16;
  *(result + 36) = 0;
  *(result + 11) = v17 << 11;
  *(result + 12) = v11 + 4 * v10;
  *(result + 52) = 0;
  *(result + 60) = 0;
  *(result + 68) = 0;
  *(result + 19) = 0;
  result[7] = a2;
  *(result + 16) = v14;
  v18 = a2 + 16 + 2 * v9;
  *result = a2 + 16;
  if (v7)
  {
    v19 = 0;
    *(result + 9) = *(v18 + 4 * v16);
    v20 = *(v18 + 512);
  }

  else
  {
    *(result + 9) = *(a2 + 16 + 2 * v16);
    v20 = *(v18 + 256);
    v19 = a2 + 16 + 2 * v9;
    v18 = 0;
  }

  result[1] = v19;
  result[2] = v18;
  *(result + 10) = v20;
  if (a4)
  {
    *a4 = v14;
  }

  return result;
}

void *utrie2_openDummy(unsigned int a1, unsigned int a2, unsigned int a3, int *a4)
{
  if (*a4 > 0)
  {
    return 0;
  }

  if (a1 >= 2)
  {
    v4 = 0;
    v7 = 1;
LABEL_25:
    *a4 = v7;
    return v4;
  }

  if (a1)
  {
    v10 = 5024;
  }

  else
  {
    v10 = 4632;
  }

  v11 = malloc_type_malloc(0x50uLL, 0x10F0040C13F8FF7uLL);
  v4 = v11;
  if (!v11)
  {
LABEL_24:
    v7 = 7;
    goto LABEL_25;
  }

  v11[3] = 0u;
  v11[4] = 0u;
  v11[1] = 0u;
  v11[2] = 0u;
  *v11 = 0u;
  v12 = malloc_type_malloc(v10, 0x4F2FFAFDuLL);
  v4[7] = v12;
  if (!v12)
  {
    free(v4);
    v4 = 0;
    goto LABEL_24;
  }

  *(v4 + 16) = v10;
  *(v4 + 68) = 1;
  if (a1)
  {
    v13 = 0;
  }

  else
  {
    v13 = 2112;
  }

  v4[3] = 0xC400000840;
  *(v4 + 16) = 0;
  *(v4 + 17) = v13;
  *(v4 + 9) = a2;
  *(v4 + 10) = a3;
  *(v4 + 11) = 0;
  *(v4 + 12) = v13 + 192;
  *v12 = 1416784178;
  *(v12 + 2) = a1;
  *(v12 + 6) = 3213376;
  *(v12 + 5) = 0;
  *(v12 + 6) = v13;
  *(v12 + 7) = 0;
  v14 = (v12 + 16);
  v15 = vdupq_n_s16(v13 >> 2);
  v16 = 2080;
  *v4 = v12 + 16;
  do
  {
    *v14++ = v15;
    v16 -= 8;
  }

  while (v16);
  v17 = 0;
  *(v12 + 2088) = v13 | 0x80;
  *(v12 + 2089) = v13 | 0x80;
  do
  {
    *&v12[v17 + 4180] = v13;
    v17 += 2;
  }

  while (v17 != 60);
  v18 = &v12[v17];
  v19 = &v12[v17 + 4180];
  v20 = 0;
  if (a1)
  {
    v21 = (v18 + 4692);
    v4[1] = 0;
    v4[2] = v19;
    v22 = vdupq_n_s32(a2);
    do
    {
      *&v12[v20 + 4180 + v17] = v22;
      v20 += 16;
    }

    while (v20 != 512);
    v23 = &v12[v17 + 4564];
    v24 = vdupq_n_s32(a3);
    v25 = 64;
    do
    {
      *v21++ = v24;
      v25 -= 4;
    }

    while (v25);
    *(v23 + 384) = v22;
  }

  else
  {
    v27 = (v18 + 4436);
    v4[1] = v19;
    v4[2] = 0;
    v28 = vdupq_n_s16(a2);
    do
    {
      *&v12[v20 + 4180 + v17] = v28;
      v20 += 16;
    }

    while (v20 != 256);
    v29 = vdupq_n_s16(a3);
    v30 = 64;
    do
    {
      *v27++ = v29;
      v30 -= 8;
    }

    while (v30);
    *&v12[v17 + 4564] = vdup_n_s16(a2);
  }

  return v4;
}

void utrie2_close(void **a1)
{
  if (a1)
  {
    if (*(a1 + 68))
    {
      free(a1[7]);
    }

    v2 = a1[9];
    if (v2)
    {
      free(v2[18016]);
      free(a1[9]);
    }

    free(a1);
  }
}

uint64_t utrie2_serialize(uint64_t a1, void *__dst, int a3, int *a4)
{
  if (*a4 > 0)
  {
    return 0;
  }

  if (!a1 || !*(a1 + 56) || a3 < 0 || *(a1 + 72) || a3 && (!__dst || (__dst & 3) != 0))
  {
    result = 0;
    v6 = 1;
  }

  else
  {
    result = *(a1 + 64);
    if (result <= a3)
    {
      memcpy(__dst, *(a1 + 56), result);
      return *(a1 + 64);
    }

    v6 = 15;
  }

  *a4 = v6;
  return result;
}

uint64_t sub_1952A8608(uint64_t result, uint64_t a2, int a3, uint64_t (*a4)(uint64_t a1, uint64_t a2), uint64_t (*a5)(uint64_t, uint64_t, void, uint64_t), uint64_t a6)
{
  v51 = a3;
  v50 = result;
  if (!a5)
  {
    return result;
  }

  if (a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = sub_1952A8AB4;
  }

  v55 = v7;
  v8 = *(result + 72);
  if (v8)
  {
    v52 = 0;
    v9 = v8 + 143360;
    v10 = (v8 + 144128);
    v48 = *(v9 + 800);
    v11 = *(v9 + 804);
  }

  else
  {
    v52 = *result;
    v10 = (result + 16);
    v48 = *(result + 32);
    v11 = *(result + 34);
  }

  v53 = v11;
  v12 = a3;
  v13 = *v10;
  v14 = *(result + 44);
  v15 = v55(a6, *(result + 36));
  v16 = 0;
  v17 = a2 < v51;
  if (a2 < v51 && v14 > a2)
  {
    v49 = v15;
    v16 = 0;
    v18 = -1;
    v19 = -1;
    v20 = a2;
    v45 = v14;
    while (1)
    {
      v21 = (v20 + 2048);
      v22 = v21 >= v12 ? v12 : v20 + 2048;
      if (v20 < 0x10000)
      {
        break;
      }

      if (v52)
      {
        v23 = *(v52 + 2 * ((v20 >> 11) + 2080));
      }

      else
      {
        v23 = *(*(v50 + 72) + 4 * (v20 >> 11));
      }

      if (v23 != v19 || v20 - a2 <= 2047)
      {
        goto LABEL_26;
      }

LABEL_71:
      v12 = v51;
      v17 = v21 < v51;
      if (v21 < v51)
      {
        v20 = v21;
        if (v21 < v45)
        {
          continue;
        }
      }

      goto LABEL_75;
    }

    if ((v20 & 0x400) != 0)
    {
      v23 = 1728;
    }

    else
    {
      v23 = 2048;
    }

    if ((v20 & 0x400) != 0)
    {
      v24 = 57344;
    }

    else
    {
      v24 = 56320;
    }

    if (v24 >= v12)
    {
      v24 = v12;
    }

    if (v20 >> 11 == 27)
    {
      v22 = v24;
    }

    else
    {
      v23 = v20 >> 5;
    }

LABEL_26:
    if (v23 == v48)
    {
      if (v16 == v49)
      {
        v16 = v49;
        v19 = v48;
      }

      else if (v20 <= a2)
      {
        v19 = v48;
        v16 = v49;
        a2 = v20;
        v18 = v53;
      }

      else
      {
        result = a5(a6, a2, (v20 - 1), v16);
        v19 = v48;
        v16 = v49;
        a2 = v20;
        v18 = v53;
        if (!result)
        {
          return result;
        }
      }
    }

    else
    {
      v25 = (v20 >> 5) & 0x3F;
      v26 = v22 ^ v20;
      v27 = (v22 >> 5) & 0x3F;
      if (v26 >= 0x800)
      {
        v28 = 64;
      }

      else
      {
        v28 = v27;
      }

      if (v25 >= v28)
      {
        v21 = v20;
        v19 = v23;
      }

      else
      {
        v44 = v23;
        v29 = v23;
        v30 = v52;
        v46 = v29;
        v47 = v28;
        do
        {
          if (v30)
          {
            v31 = 4 * *(v30 + 2 * (v25 + v29));
          }

          else
          {
            v31 = *(*(v50 + 72) + 4 * (v25 + v29) + 2176);
          }

          if (v31 == v18 && v20 - a2 >= 32)
          {
            v20 = (v20 + 32);
          }

          else
          {
            if (v31 == v53)
            {
              if (v16 == v49)
              {
                v32 = a2;
              }

              else
              {
                v32 = v20;
                if (v20 > a2)
                {
                  result = a5(a6, a2, (v20 - 1), v16);
                  v32 = v20;
                  if (!result)
                  {
                    return result;
                  }
                }
              }

              v20 = (v20 + 32);
              v16 = v49;
              a2 = v32;
              v18 = v53;
            }

            else
            {
              v33 = 0;
              v34 = (v13 + 4 * v31);
              v35 = v30 + 2 * v31;
              do
              {
                if (v13)
                {
                  v36 = *v34;
                }

                else
                {
                  v36 = *(v35 + v33);
                }

                v37 = v55(a6, v36);
                if (v37 != v16)
                {
                  v38 = v37;
                  if (a2 >= v20)
                  {
                    v16 = v37;
                    a2 = v20;
                  }

                  else
                  {
                    result = a5(a6, a2, (v20 - 1), v16);
                    v16 = v38;
                    a2 = v20;
                    if (!result)
                    {
                      return result;
                    }
                  }
                }

                v20 = (v20 + 1);
                ++v34;
                v33 += 2;
              }

              while (v33 != 64);
              v18 = v31;
            }

            v30 = v52;
            v29 = v46;
            v28 = v47;
          }

          ++v25;
        }

        while (v25 != v28);
        v21 = v20;
        v19 = v44;
      }
    }

    goto LABEL_71;
  }

  v21 = a2;
LABEL_75:
  if (v21 >= v12)
  {
    v39 = v12;
  }

  else
  {
    v39 = v21;
  }

  if (v17)
  {
    if (v52)
    {
      v40 = *(v50 + 48);
      if (v13)
      {
        v41 = *(v13 + 4 * v40);
      }

      else
      {
        v41 = *(v52 + 2 * v40);
      }
    }

    else
    {
      v41 = *(*(*(v50 + 72) + 144128) + 4 * *(*(v50 + 72) + 144152) - 16);
    }

    v43 = v55(a6, v41);
    if (v43 != v16)
    {
      v42 = v43;
      if (a2 < v21)
      {
        result = a5(a6, a2, (v21 - 1), v16);
        if (!result)
        {
          return result;
        }
      }

      goto LABEL_88;
    }

    v42 = v16;
  }

  else
  {
    v42 = v16;
    v51 = v39;
  }

  v21 = a2;
LABEL_88:

  return a5(a6, v21, (v51 - 1), v42);
}

uint64_t utrie2_enumForLeadSurrogate(uint64_t result, unsigned int a2, uint64_t (*a3)(uint64_t a1, uint64_t a2), uint64_t (*a4)(uint64_t, uint64_t, void, uint64_t), uint64_t a5)
{
  if (a2 >> 10 == 54)
  {
    return sub_1952A8608(result, (a2 << 10) - 56557568, (a2 << 10) - 56556544, a3, a4, a5);
  }

  return result;
}

void *utrie2_open(unsigned int a1, unsigned int a2, int *a3)
{
  if (*a3 > 0)
  {
    return 0;
  }

  v3 = malloc_type_malloc(0x50uLL, 0x10F0040C13F8FF7uLL);
  v7 = malloc_type_malloc(0x453C0uLL, 0x10100402B1F848FuLL);
  v8 = malloc_type_malloc(0x10000uLL, 0x100004052888210uLL);
  v9 = v8;
  if (v3 && v7 && v8)
  {
    v10 = 0;
    *(v3 + 2) = 0u;
    *(v3 + 3) = 0u;
    *v3 = 0u;
    *(v3 + 1) = 0u;
    *(v3 + 9) = a1;
    *(v3 + 10) = a2;
    *(v3 + 8) = 0;
    v7[36037] = 0x4000;
    *(v3 + 11) = 1114112;
    *(v3 + 9) = v7;
    *(v7 + 18016) = v8;
    v7[36034] = a1;
    v7[36035] = a2;
    v7[36042] = 1114112;
    v7[36039] = 0;
    *(v7 + 144172) = 0;
    v11 = vdupq_n_s32(a1);
    do
    {
      *&v8[v10] = v11;
      v10 += 16;
    }

    while (v10 != 512);
    v12 = 0;
    v13 = vdupq_n_s32(a2);
    do
    {
      *&v8[v12 + 512] = v13;
      v12 += 16;
    }

    while (v12 != 256);
    for (i = 0; i != 256; i += 16)
    {
      *&v8[i + 768] = v11;
    }

    v7[36041] = 192;
    v7[36038] = 256;
    *(v7 + 136) = xmmword_195481A90;
    *&v15 = 0x100000001;
    *(&v15 + 1) = 0x100000001;
    *(v7 + 9011) = v15;
    *(v7 + 18024) = 0;
    *(v7 + 18025) = 34845;
    memset_pattern16(v7 + 548, &unk_195481AB0, 0x2070uLL);
    memset(v7 + 2624, 255, 0x900uLL);
    memset_pattern16(v7 + 3200, &unk_195481AB0, 0x100uLL);
    v16 = 0;
    v7[36040] = 2656;
    v7[36036] = 2720;
    v17 = xmmword_195481AA0;
    v18.i64[0] = 0x10000000100;
    v18.i64[1] = 0x10000000100;
    do
    {
      *&v7[v16] = v17;
      v17 = vaddq_s32(v17, v18);
      v16 += 4;
    }

    while (v16 != 32);
    memset_pattern16(v7 + 32, &unk_195481AC0, 0x800uLL);
    v19 = 96;
    do
    {
      v19 += 32;
      if (*a3 <= 0)
      {
        sub_1952A9F34(*(v3 + 9), v19, 1, a1, a3);
      }
    }

    while (v19 < 0x7E0);
  }

  else
  {
    free(v3);
    free(v7);
    free(v9);
    v3 = 0;
    *a3 = 7;
  }

  return v3;
}

uint64_t utrie2_set32(uint64_t result, unsigned int a2, int a3, int *a4)
{
  if (*a4 <= 0)
  {
    if (a2 < 0x110000)
    {
      return sub_1952A9F34(*(result + 72), a2, 1, a3, a4);
    }

    else
    {
      *a4 = 1;
    }
  }

  return result;
}

void *utrie2_clone(uint64_t a1, int *a2)
{
  if (*a2 <= 0)
  {
    if (a1 && (*(a1 + 56) || *(a1 + 72)))
    {
      v5 = malloc_type_malloc(0x50uLL, 0x10F0040C13F8FF7uLL);
      v2 = v5;
      if (v5)
      {
        *v5 = *a1;
        v6 = *(a1 + 16);
        v7 = *(a1 + 32);
        v8 = *(a1 + 64);
        v5[3] = *(a1 + 48);
        v5[4] = v8;
        v5[1] = v6;
        v5[2] = v7;
        if (*(a1 + 56))
        {
          v9 = malloc_type_malloc(*(a1 + 64), 0xD4E7F50EuLL);
          v2[7] = v9;
          if (!v9)
          {
LABEL_26:
            if (v2[9])
            {
              return v2;
            }

            *a2 = 7;
            free(v2);
            return 0;
          }

          *(v2 + 68) = 1;
          memcpy(v9, *(a1 + 56), *(a1 + 64));
          v10 = v2[7];
          v11 = *(a1 + 56);
          v12 = *(a1 + 8);
          *v2 = v10 + *a1 - v11;
          if (v12)
          {
            v2[1] = v10 + v12 - v11;
          }

          v13 = *(a1 + 16);
          if (v13)
          {
            v2[2] = v10 + v13 - v11;
          }
        }

        else
        {
          v16 = *(a1 + 72);
          v17 = malloc_type_malloc(0x453C0uLL, 0x10100402B1F848FuLL);
          if (v17)
          {
            v18 = malloc_type_malloc(4 * *(v16 + 144148), 0x100004052888210uLL);
            *(v17 + 18016) = v18;
            if (v18)
            {
              *(v17 + 36037) = *(v16 + 144148);
              memcpy(v17, v16, 0x880uLL);
              memcpy(v17 + 2176, (v16 + 2176), 4 * *(v16 + 144144));
              *(v17 + 36040) = *(v16 + 144160);
              *(v17 + 36036) = *(v16 + 144144);
              memcpy(*(v17 + 18016), *(v16 + 144128), 4 * *(v16 + 144152));
              *(v17 + 36041) = *(v16 + 144164);
              v19 = *(v16 + 144152);
              *(v17 + 36038) = v19;
              v20 = *(v16 + 144172);
              if (v20)
              {
                v21 = 0;
              }

              else
              {
                memcpy(v17 + 144176, (v16 + 144176), (v19 >> 3) & 0x1FFFFFFFFFFFFFFCLL);
                v21 = *(v16 + 144156);
                v20 = *(v16 + 144172);
              }

              *(v17 + 36039) = v21;
              *(v17 + 18017) = *(v16 + 144136);
              *(v17 + 36042) = *(v16 + 144168);
              v17[144172] = v20;
            }

            else
            {
              free(v17);
              v17 = 0;
            }
          }

          v2[9] = v17;
          v10 = v2[7];
        }

        if (v10)
        {
          return v2;
        }

        goto LABEL_26;
      }

      v14 = 7;
    }

    else
    {
      v2 = 0;
      v14 = 1;
    }

    *a2 = v14;
    return v2;
  }

  return 0;
}

void *utrie2_cloneAsThawed(uint64_t a1, int *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  if (!a1)
  {
    goto LABEL_23;
  }

  v5 = *(a1 + 72);
  if (*(a1 + 56))
  {
    if (!v5)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (!v5)
  {
LABEL_23:
    result = 0;
    *a2 = 1;
    return result;
  }

LABEL_9:
  if (!*(v5 + 144172))
  {

    return utrie2_clone(a1, a2);
  }

LABEL_10:
  v11 = utrie2_open(*(a1 + 36), *(a1 + 40), a2);
  if (*a2 > 0)
  {
    return 0;
  }

  v12 = *a2;
  utrie2_enum(a1, 0, sub_1952A9158, &v11);
  *a2 = v12;
  v6 = 1024;
  v7 = 55296;
  do
  {
    v8 = *(a1 + 16);
    v9 = (v7 & 0x1F) + 4 * *(*a1 + 2 * (v7 >> 5));
    if (v8)
    {
      v10 = *(v8 + 4 * v9);
    }

    else
    {
      v10 = *(*a1 + 2 * v9);
    }

    if (v10 != *(a1 + 36) && *a2 <= 0)
    {
      if ((v7 & 0xFC00) == 0xD800)
      {
        sub_1952A9F34(*(v11 + 9), v7, 0, v10, a2);
      }

      else
      {
        *a2 = 1;
      }
    }

    ++v7;
    --v6;
  }

  while (v6);
  result = v11;
  if (*a2 >= 1)
  {
    utrie2_close(v11);
    return 0;
  }

  return result;
}

BOOL sub_1952A9158(uint64_t a1, unsigned int a2, int a3, unsigned int a4)
{
  v5 = *a1;
  if (*(v5 + 36) == a4)
  {
    return 1;
  }

  v7 = a3 - (*(a1 + 12) != 0);
  if (v7 == a2)
  {
    if (*(a1 + 8) <= 0)
    {
      if (a2 < 0x110000)
      {
        sub_1952A9F34(*(v5 + 72), a2, 1, a4, (a1 + 8));
      }

      else
      {
        *(a1 + 8) = 1;
      }
    }
  }

  else
  {
    utrie2_setRange32(v5, a2, v7, a4, 1, (a1 + 8));
  }

  return *(a1 + 8) < 1;
}

uint64_t utrie2_set32ForLeadSurrogateCodeUnit(uint64_t result, unsigned int a2, int a3, int *a4)
{
  if (*a4 <= 0)
  {
    if (a2 >> 10 == 54)
    {
      return sub_1952A9F34(*(result + 72), a2, 0, a3, a4);
    }

    else
    {
      *a4 = 1;
    }
  }

  return result;
}

void **utrie2_fromUTrie(uint64_t a1, unsigned int a2, int *a3)
{
  if (*a3 > 0)
  {
    return 0;
  }

  v17 = v3;
  v18 = v4;
  if (a1)
  {
    v14 = utrie2_open(*(a1 + 32), a2, a3);
    v8 = *a3;
    if (*a3 > 0)
    {
      return 0;
    }

    v16 = 1;
    v15 = v8;
    utrie_enum(a1, 0, sub_1952A9158, &v14);
    *a3 = v15;
    v9 = 1024;
    v10 = 55296;
    do
    {
      v11 = *(a1 + 8);
      v12 = (v10 & 0x1F) + 4 * *(*a1 + 2 * (v10 >> 5));
      if (v11)
      {
        v13 = *(v11 + 4 * v12);
      }

      else
      {
        v13 = *(*a1 + 2 * v12);
      }

      if (v13 != *(a1 + 32) && *a3 <= 0)
      {
        if ((v10 & 0xFC00) == 0xD800)
        {
          sub_1952A9F34(*(v14 + 9), v10, 0, v13, a3);
        }

        else
        {
          *a3 = 1;
        }
      }

      ++v10;
      --v9;
    }

    while (v9);
    result = v14;
    if (*a3 > 0 || (utrie2_freeze(v14, *(a1 + 8) != 0, a3), result = v14, *a3 >= 1))
    {
      utrie2_close(result);
      return 0;
    }
  }

  else
  {
    result = 0;
    *a3 = 1;
  }

  return result;
}

void utrie2_freeze(uint64_t a1, unsigned int a2, int *a3)
{
  if (*a3 > 0)
  {
    return;
  }

  if (!a1 || a2 >= 2)
  {
LABEL_11:
    v11 = 1;
LABEL_107:
    *a3 = v11;
    return;
  }

  v6 = *(a1 + 72);
  if (!v6)
  {
    if ((*(a1 + 8) == 0) == a2)
    {
      return;
    }

    goto LABEL_11;
  }

  if (!*(v6 + 144172))
  {
    v12 = utrie2_get32(a1, 0x10FFFFu);
    v13 = v12;
    v14 = *(v6 + 144136);
    v15 = *(v6 + 144164);
    if (v14 == v12)
    {
      v16 = *(v6 + 144160);
    }

    else
    {
      v16 = -1;
    }

    if (v14 == v12)
    {
      v17 = v15;
    }

    else
    {
      v17 = 0xFFFFFFFFLL;
    }

    v18 = v6 + 2176;
    v19 = 1114112;
    LODWORD(v20) = 544;
    while (2)
    {
      v20 = v20 - 1;
      while (1)
      {
        v21 = *(v6 + 4 * v20);
        if (v21 != v16)
        {
          break;
        }

        --v20;
        v22 = __OFSUB__(v19, 2048);
        v19 -= 2048;
        if ((v19 < 0) ^ v22 | (v19 == 0))
        {
          goto LABEL_40;
        }
      }

      if (v21 == *(v6 + 144160))
      {
        if (v14 == v13)
        {
          v19 -= 2048;
LABEL_39:
          v16 = *(v6 + 4 * v20);
          if (v19 > 0)
          {
            continue;
          }

LABEL_40:
          v30 = 0;
          *(v6 + 144168) = 0;
          *(a1 + 44) = 0;
          goto LABEL_41;
        }

LABEL_193:
        v28 = v19;
      }

      else
      {
        LODWORD(v23) = 64;
        while (1)
        {
          v24 = v17;
          v25 = v23;
          while (1)
          {
            v23 = v25 - 1;
            v17 = *(v6 + 2172 + 4 * v21 + 4 * v25);
            if (v17 != v24)
            {
              break;
            }

            v19 -= 32;
            --v25;
            if (v23 + 1 <= 1)
            {
              v17 = v24;
              goto LABEL_39;
            }
          }

          if (v17 != v15)
          {
            break;
          }

          if (v14 != v13)
          {
            goto LABEL_193;
          }

LABEL_38:
          v19 -= 32;
          if (v25 < 2)
          {
            goto LABEL_39;
          }
        }

        v26 = (*(v6 + 144128) + 124 + 4 * v17);
        v27 = 33;
        v28 = v19;
        while (1)
        {
          v29 = *v26--;
          if (v29 != v13)
          {
            break;
          }

          --v28;
          if (--v27 <= 1)
          {
            goto LABEL_38;
          }
        }
      }

      break;
    }

    v30 = (v28 + 2047) & 0xFFFFF800;
    if (v30 == 1114112)
    {
      v13 = *(a1 + 40);
      *(v6 + 144168) = 1114112;
      *(a1 + 44) = 1114112;
      goto LABEL_45;
    }

    *(v6 + 144168) = v30;
    *(a1 + 44) = v30;
    if (v30 >= 1114112)
    {
LABEL_45:
      v32 = 0;
      v33 = v6 + 144176;
      v34 = xmmword_19544D5F0;
      v35 = (v6 + 144180);
      v36 = vdupq_n_s64(6uLL);
      v37 = vdupq_n_s64(2uLL);
      do
      {
        if (vmovn_s64(vcgtq_u64(v36, v34)).u8[0])
        {
          *(v35 - 1) = v32;
        }

        if (vmovn_s64(vcgtq_u64(vdupq_n_s64(6uLL), *&v34)).i32[1])
        {
          *v35 = v32 + 32;
        }

        v34 = vaddq_s64(v34, v37);
        v35 += 2;
        v32 += 64;
      }

      while (v32 != 192);
      v38 = *(v6 + 144152);
      if (v38 < 193)
      {
        v39 = 192;
      }

      else
      {
        v39 = 192;
        LODWORD(v40) = 64;
        v41 = 2;
        v42 = 192;
        do
        {
          if (v42 == 2176)
          {
            v40 = 32;
          }

          else
          {
            v40 = v40;
          }

          if (v42 == 2176)
          {
            v41 = 1;
          }

          if (*(v33 + 4 * (v42 >> 5)) <= 0)
          {
LABEL_93:
            v42 += v40;
          }

          else
          {
            v43 = v42 >> 5;
            v44 = *(v6 + 144128);
            if (v39 - v40 >= 0)
            {
              v45 = 0;
              v46 = 0;
              while (2)
              {
                v47 = (v44 + 4 * v46);
                v48 = v40 + 1;
                v49 = (v44 + 4 * v42);
                while (*v47 == *v49)
                {
                  ++v47;
                  ++v49;
                  if (--v48 <= 1)
                  {
                    v68 = 0;
                    v69 = (v41 - 1);
                    v70 = vdupq_n_s64(v69);
                    v71 = (v6 + 144188 + 4 * v43);
                    do
                    {
                      v72 = vdupq_n_s64(v68);
                      v73 = vmovn_s64(vcgeq_u64(v70, vorrq_s8(v72, xmmword_19544D5F0)));
                      if (vuzp1_s16(v73, 2).u8[0])
                      {
                        *(v71 - 3) = v45;
                      }

                      if (vuzp1_s16(v73, 2).i8[2])
                      {
                        *(v71 - 2) = v45 + 32;
                      }

                      if (vuzp1_s16(2, vmovn_s64(vcgeq_u64(v70, vorrq_s8(v72, xmmword_19544D5E0)))).i32[1])
                      {
                        *(v71 - 1) = v45 + 64;
                        *v71 = v45 + 96;
                      }

                      v68 += 4;
                      v45 += 128;
                      v71 += 4;
                    }

                    while (((v69 + 4) & 0x1FFFFFFFCLL) != v68);
                    v38 = *(v6 + 144152);
                    goto LABEL_93;
                  }
                }

                v46 += 4;
                v45 += 4;
                if (v39 - v40 >= v46)
                {
                  continue;
                }

                break;
              }
            }

            v50 = v40 - 4;
            v51 = v40 - 3;
            while (2)
            {
              v52 = v50;
              v53 = (v44 + 4 * (v39 - v50));
              v54 = v51;
              v55 = (v44 + 4 * v42);
              while (*v53 == *v55)
              {
                ++v53;
                ++v55;
                if (--v54 <= 1)
                {
                  goto LABEL_73;
                }
              }

              v50 = v52 - 4;
              v51 -= 4;
              if (v52 >= 5)
              {
                continue;
              }

              break;
            }

            LODWORD(v52) = v52 - 4;
            if (v39 >= v42)
            {
              v74 = (v6 + 144176 + 4 * v43);
              v75 = v41 + 1;
              do
              {
                *v74++ = v42;
                v42 += 32;
                --v75;
                v39 = v42;
              }

              while (v75 > 1);
              goto LABEL_84;
            }

LABEL_73:
            v56 = 0;
            v57 = (v41 - 1);
            v58 = vdupq_n_s64(v57);
            v59 = -v52;
            v60 = (v6 + 144184 + 4 * v43);
            do
            {
              v61 = vdupq_n_s64(v56);
              v62 = vmovn_s64(vcgeq_u64(v58, vorrq_s8(v61, xmmword_19544D5F0)));
              if (vuzp1_s16(v62, 2).u8[0])
              {
                *(v60 - 2) = v39 + v59;
              }

              if (vuzp1_s16(v62, 2).i8[2])
              {
                *(v60 - 1) = v39 + v59 + 32;
              }

              if (vuzp1_s16(2, vmovn_s64(vcgeq_u64(v58, vorrq_s8(v61, xmmword_19544D5E0)))).i32[1])
              {
                *v60 = v39 + v59 + 64;
                v60[1] = v39 + v59 + 96;
              }

              v56 += 4;
              v59 += 128;
              v60 += 4;
            }

            while (((v57 + 4) & 0x1FFFFFFFCLL) != v56);
            v42 += v52;
            v63 = v40 - v52;
            if (v63 >= 1)
            {
              v64 = (v44 + 4 * v42);
              v65 = v63 + 1;
              v66 = (v44 + 4 * v39);
              do
              {
                v67 = *v64++;
                *v66++ = v67;
                ++v42;
                ++v39;
                --v65;
              }

              while (v65 > 1);
            }

LABEL_84:
            v38 = *(v6 + 144152);
          }
        }

        while (v42 < v38);
      }

      if (*(v6 + 144144) >= 1)
      {
        v84 = 0;
        do
        {
          if (v84 == 2080)
          {
            v85 = 2656;
          }

          else
          {
            v85 = v84;
          }

          *(v18 + 4 * v85) = *(v33 + 4 * (*(v18 + 4 * v85) >> 5));
          v84 = v85 + 1;
        }

        while (v85 + 1 < *(v6 + 144144));
      }

      *(v6 + 144164) = *(v33 + 4 * (*(v6 + 144164) >> 5));
      if ((v39 & 3) != 0)
      {
        v86 = *(v6 + 144136);
        v87 = (*(v6 + 144128) + 4 * v39);
        do
        {
          *v87++ = v86;
          ++v39;
        }

        while ((v39 & 3) != 0);
      }

      *(v6 + 144152) = v39;
      if (v30 > 0x10000)
      {
        v88 = 0;
        v89 = xmmword_19544D5E0;
        v90 = xmmword_19544D5F0;
        v91 = (v6 + 144188);
        v92 = vdupq_n_s64(0x21uLL);
        v93 = vdupq_n_s64(4uLL);
        do
        {
          if (vuzp1_s16(vmovn_s64(vcgtq_u64(v92, v90)), *v89.i8).u8[0])
          {
            *(v91 - 3) = v88;
          }

          if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x21uLL), *&v90)), *&v89).i8[2])
          {
            *(v91 - 2) = v88 + 64;
          }

          if (vuzp1_s16(*&v89, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x21uLL), *&v89))).i32[1])
          {
            *(v91 - 1) = v88 + 128;
            *v91 = v88 + 192;
          }

          v89 = vaddq_s64(v89, v93);
          v90 = vaddq_s64(v90, v93);
          v88 += 256;
          v91 += 4;
        }

        while (v88 != 2304);
        v94 = ((*(v6 + 144168) - 0x10000) >> 11) + 2112;
        if (*(v6 + 144144) >= 2657)
        {
          v95 = v6 + 2176;
          v96 = 2656;
          while (1)
          {
            v97 = 0;
            v98 = v96;
            v99 = v96;
            v100 = v96;
LABEL_137:
            if (v94 >= 64)
            {
              break;
            }

            LODWORD(v100) = v96;
LABEL_148:
            v105 = 64;
            v106 = 63;
            while (2)
            {
              v107 = (v18 + 4 * (v94 - v106));
              v108 = v105;
              v109 = (v18 + 4 * v98);
              while (*v107 == *v109)
              {
                ++v107;
                ++v109;
                if (--v108 <= 1)
                {
                  *(v33 + 4 * (v100 >> 6)) = v94 - v106;
                  if (v106 > 63)
                  {
                    v96 = v100 + v106;
                    goto LABEL_161;
                  }

                  goto LABEL_157;
                }
              }

              --v105;
              if (v106-- > 1)
              {
                continue;
              }

              break;
            }

            v111 = v100 >> 6;
            if (v94 >= v100)
            {
              *(v33 + 4 * v111) = v100;
              v96 = v100 + 64;
              v94 = v100 + 64;
              goto LABEL_161;
            }

            LODWORD(v106) = 0;
            *(v33 + 4 * v111) = v94;
LABEL_157:
            v112 = (v95 + 4 * (v106 + v99));
            v113 = (v95 + 4 * v94);
            v114 = 65 - v106;
            v94 = v94 - v106 + 64;
            v96 += (v97 << 6) + 64;
            do
            {
              v115 = *v112++;
              *v113++ = v115;
              --v114;
            }

            while (v114 > 1);
LABEL_161:
            if (v96 >= *(v6 + 144144))
            {
              goto LABEL_164;
            }
          }

          v101 = 0;
LABEL_139:
          v102 = (v18 + 4 * v101);
          v103 = 65;
          v104 = (v18 + 4 * v100);
          do
          {
            if (*v102 != *v104)
            {
              if (++v101 != v94 - 63)
              {
                goto LABEL_139;
              }

              v98 = v100;
              goto LABEL_148;
            }

            ++v102;
            ++v104;
            --v103;
          }

          while (v103 > 1);
          *(v33 + 4 * (v100 >> 6)) = v101;
          v100 += 64;
          v99 += 64;
          ++v97;
          if (v100 < *(v6 + 144144))
          {
            goto LABEL_137;
          }
        }

LABEL_164:
        for (i = 0; i != 2176; i += 4)
        {
          *(v6 + i) = *(v33 + 4 * (*(v6 + i) >> 6));
        }

        *(v6 + 144160) = *(v33 + 4 * (*(v6 + 144160) >> 6));
        if ((v94 & 3) != 0)
        {
          memset_pattern16((v6 + 4 * v94 + 2176), &unk_195481AD0, ((4 * (v94 & 3)) ^ 0xCu) + 4);
          v94 -= v94 | 0xFFFFFFFC;
        }

        *(v6 + 144144) = v94;
        v39 = *(v6 + 144152);
      }

      v117 = *(v6 + 144128);
      *(v6 + 144152) = v39 + 1;
      *(v117 + 4 * v39) = v13;
      v118 = *(v6 + 144152);
      if ((v118 & 3) != 0)
      {
        v119 = *(a1 + 36);
        do
        {
          *(v6 + 144152) = v118 + 1;
          *(v117 + 4 * v118) = v119;
          v118 = *(v6 + 144152);
        }

        while ((v118 & 3) != 0);
      }

      *(v6 + 144172) = 1;
      if (*a3 > 0)
      {
        return;
      }

      goto LABEL_6;
    }

LABEL_41:
    if (v30 <= 0x10000)
    {
      v31 = 0x10000;
    }

    else
    {
      v31 = v30;
    }

    utrie2_setRange32(a1, v31, 0x10FFFFu, *(a1 + 36), 1, a3);
    if (*a3 > 0)
    {
      return;
    }

    goto LABEL_45;
  }

LABEL_6:
  v7 = *(a1 + 44);
  if (v7 > 0x10000)
  {
    v9 = *(v6 + 144144);
    v8 = a2 == 0;
    if (a2)
    {
      v10 = 0;
    }

    else
    {
      v10 = *(v6 + 144144);
    }

    if (v9 >= 0x10000)
    {
      goto LABEL_106;
    }
  }

  else
  {
    v8 = a2 == 0;
    v9 = 2112;
    if (a2)
    {
      v10 = 0;
    }

    else
    {
      v10 = 2112;
    }
  }

  if (v10 > 63359 || *(v6 + 144164) + v10 >= 0x10000 || (v76 = *(v6 + 144152), v76 + v10 >= 262141))
  {
LABEL_106:
    v11 = 8;
    goto LABEL_107;
  }

  v77 = 2 * v9 + 4 * v76 + 16;
  v78 = 2 * (v76 + v9) + 16;
  if (v8)
  {
    v79 = v78;
  }

  else
  {
    v79 = v77;
  }

  v80 = malloc_type_malloc(v79, 0xB71D428CuLL);
  *(a1 + 56) = v80;
  if (!v80)
  {
    v11 = 7;
    goto LABEL_107;
  }

  v81 = v80;
  *(a1 + 64) = v79;
  *(a1 + 68) = 1;
  v82 = *(v6 + 144152);
  *(a1 + 24) = v9;
  *(a1 + 28) = v82;
  if (v7 > 0x10000)
  {
    v83 = *(v6 + 144160);
  }

  else
  {
    LOWORD(v83) = -1;
  }

  *(a1 + 32) = v83;
  v120 = *(v6 + 144164) + v10;
  *(a1 + 34) = v120;
  *(a1 + 48) = v10 + v82 - 4;
  v80->i32[0] = 1416784178;
  v80->i16[2] = a2;
  v80->i16[3] = v9;
  v80->i16[4] = v82 >> 2;
  v80->i16[5] = v83;
  v80->i16[6] = v120;
  v80->i16[7] = v7 >> 11;
  v121 = v80 + 1;
  *a1 = v80 + 1;
  v122 = -8320;
  v123 = vdupq_n_s32(v10);
  do
  {
    *v121++ = vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(*(v6 + v122 + 10496), v123), 2uLL), vaddq_s32(*(v6 + v122 + 10512), v123), 2uLL);
    v122 += 32;
  }

  while (v122);
  v80[261].i16[0] = v10 + 128;
  v124 = &v80[261].i16[2];
  v81[261].i16[1] = v10 + 128;
  for (j = 2192; j != 2432; j += 8)
  {
    v126 = (*(v6 + j) + v10);
    *v124++ = *(v6 + j) + v10;
  }

  v127 = v7 - 0x10000;
  if (v7 > 0x10000)
  {
    v128 = v127 >> 11;
    v129 = (v127 >> 11) + 2112;
    if (v127 >= 0x800)
    {
      v130 = (v6 + 128);
      v131 = v128 + 1;
      do
      {
        v132 = *v130++;
        *v124++ = v132;
        --v131;
      }

      while (v131 > 1);
    }

    v133 = *(v6 + 144144);
    if ((v133 - v129) >= 1)
    {
      v134 = (v6 + 2176 + 4 * v129);
      v135 = v133 - v128 - 2111;
      do
      {
        v136 = *v134++;
        *v124++ = (v136 + v10) >> 2;
        --v135;
      }

      while (v135 > 1);
    }
  }

  if (a2)
  {
    *(a1 + 8) = 0;
    *(a1 + 16) = v124;
    memcpy(v124, *(v6 + 144128), 4 * v82);
    v137 = *(v6 + 144128);
  }

  else
  {
    *(a1 + 8) = v124;
    *(a1 + 16) = 0;
    v137 = *(v6 + 144128);
    if (v82 >= 1)
    {
      v138 = v82 + 1;
      v139 = *(v6 + 144128);
      do
      {
        v140 = *v139++;
        *v124++ = v140;
        --v138;
      }

      while (v138 > 1);
    }
  }

  free(v137);
  free(v6);
  *(a1 + 72) = 0;
}

uint64_t sub_1952A9F34(uint64_t result, unsigned int a2, int a3, int a4, int *a5)
{
  if (!result || (v6 = result + 143360, *(result + 144172)))
  {
    v7 = 30;
LABEL_4:
    *a5 = v7;
    return result;
  }

  v9 = a2;
  result = sub_1952AA610(result, a2, a3);
  if ((result & 0x80000000) != 0)
  {
    v7 = 7;
    goto LABEL_4;
  }

  *(*(v6 + 768) + 4 * (result + (v9 & 0x1F))) = a4;
  return result;
}

uint64_t utrie2_setRange32(uint64_t result, unsigned int a2, unsigned int a3, unsigned int a4, int a5, int *a6)
{
  if (*a6 <= 0)
  {
    v7 = a2;
    v8 = 1;
    if (a2 > a3 || a2 > 0x10FFFF || a3 > 0x10FFFF)
    {
LABEL_8:
      *a6 = v8;
      return result;
    }

    v9 = *(result + 72);
    if (!v9 || *(v9 + 144172))
    {
      v8 = 30;
      goto LABEL_8;
    }

    if (a5 || *(v9 + 144136) != a4)
    {
      v12 = a3 + 1;
      v13 = a2 & 0x1F;
      if ((a2 & 0x1F) != 0)
      {
        result = sub_1952AA610(*(result + 72), a2, 1);
        if ((result & 0x80000000) != 0)
        {
          goto LABEL_114;
        }

        v7 = (v7 + 31) & 0x3FFFE0;
        v14 = *(v9 + 144128);
        v15 = v14 + 4 * result;
        if (v7 > v12)
        {
          v16 = v12 & 0x1F;
          if (a5)
          {
            if (v13 < v16)
            {
              v17 = 0;
              v18 = v14 + 4 * result;
              v19 = v18 + 4 * v16;
              v20 = v18 + 4 * v13 + 4;
              if (v20 > v19)
              {
                v19 = v20;
              }

              v21 = v19 + ~v14;
              v22 = 4 * result + 4 * v13;
              v23 = vdupq_n_s64((v21 - v22) >> 2);
              v24 = (((v21 - 4 * result - 4 * v13) >> 2) + 4) & 0x7FFFFFFFFFFFFFFCLL;
              v25 = (v22 + v14 + 8);
              do
              {
                v26 = vdupq_n_s64(v17);
                v27 = vmovn_s64(vcgeq_u64(v23, vorrq_s8(v26, xmmword_19544D5F0)));
                if (vuzp1_s16(v27, *v23.i8).u8[0])
                {
                  *(v25 - 2) = a4;
                }

                if (vuzp1_s16(v27, *&v23).i8[2])
                {
                  *(v25 - 1) = a4;
                }

                if (vuzp1_s16(*&v23, vmovn_s64(vcgeq_u64(v23, vorrq_s8(v26, xmmword_19544D5E0)))).i32[1])
                {
                  *v25 = a4;
                  v25[1] = a4;
                }

                v17 += 4;
                v25 += 4;
              }

              while (v24 != v17);
            }
          }

          else if (v13 < v16)
          {
            v34 = *(v9 + 144136);
            v35 = v15 + 4 * (v12 & 0x1F);
            v36 = (v15 + 4 * v13);
            do
            {
              if (*v36 == v34)
              {
                *v36 = a4;
              }

              ++v36;
            }

            while (v36 < v35);
          }

          return result;
        }

        v28 = (4 * v13);
        if (a5)
        {
          v29 = 0;
          v30 = vdupq_n_s64((v28 >> 2) ^ 0x1F);
          v31 = (v28 + 4 * result + v14 + 8);
          do
          {
            v32 = vdupq_n_s64(v29);
            v33 = vmovn_s64(vcgeq_u64(v30, vorrq_s8(v32, xmmword_19544D5F0)));
            if (vuzp1_s16(v33, *v30.i8).u8[0])
            {
              *(v31 - 2) = a4;
            }

            if (vuzp1_s16(v33, *&v30).i8[2])
            {
              *(v31 - 1) = a4;
            }

            if (vuzp1_s16(*&v30, vmovn_s64(vcgeq_u64(v30, vorrq_s8(v32, xmmword_19544D5E0)))).i32[1])
            {
              *v31 = a4;
              v31[1] = a4;
            }

            v29 += 4;
            v31 += 4;
          }

          while (((35 - (v28 >> 2)) & 0x3C) != v29);
        }

        else
        {
          v37 = *(v9 + 144136);
          do
          {
            if (*(v15 + v28) == v37)
            {
              *(v15 + v28) = a4;
            }

            v38 = v28 >= 0x7C;
            v28 += 4;
          }

          while (!v38);
        }
      }

      v91 = v12;
      v39 = v12 & 0x3FFFE0;
      if (*(v9 + 144136) == a4)
      {
        result = *(v9 + 144164);
      }

      else
      {
        result = 0xFFFFFFFFLL;
      }

      if (v7 < v39)
      {
        v40 = v9 + 2176;
        v41 = v9 + 144176;
        v42 = vdupq_n_s32(a4);
        v90 = v42;
        do
        {
          v43 = v7 & 0xFFFFFC00;
          if (*(v9 + 144136) != a4 || (v43 != 55296 ? (v44 = *(v9 + 4 * (v7 >> 11)) + ((v7 >> 5) & 0x3F)) : (v44 = (v7 >> 5) + 320), *(v40 + 4 * v44) != *(v9 + 144164)))
          {
            if (v43 == 55296)
            {
              v45 = 2048;
            }

            else
            {
              v46 = *(v9 + 4 * (v7 >> 11));
              if (v46 == *(v9 + 144160))
              {
                v45 = *(v9 + 144144);
                if (v45 > 35424)
                {
                  goto LABEL_115;
                }

                *(v9 + 144144) = v45 + 64;
                v47 = (v40 + 4 * v45);
                v48 = (v40 + 4 * v46);
                v49 = *v48;
                v50 = v48[1];
                v51 = v48[3];
                v47[2] = v48[2];
                v47[3] = v51;
                *v47 = v49;
                v47[1] = v50;
                v52 = v48[4];
                v53 = v48[5];
                v54 = v48[7];
                v47[6] = v48[6];
                v47[7] = v54;
                v47[4] = v52;
                v47[5] = v53;
                v55 = v48[8];
                v56 = v48[9];
                v57 = v48[11];
                v47[10] = v48[10];
                v47[11] = v57;
                v47[8] = v55;
                v47[9] = v56;
                v58 = v48[12];
                v59 = v48[13];
                v60 = v48[15];
                v47[14] = v48[14];
                v47[15] = v60;
                v47[12] = v58;
                v47[13] = v59;
                if (v45 < 0)
                {
LABEL_115:
                  v8 = 5;
                  goto LABEL_8;
                }

                *(v9 + 4 * (v7 >> 11)) = v45;
              }

              else
              {
                v45 = *(v9 + 4 * (v7 >> 11));
                if (v46 < 0)
                {
                  goto LABEL_115;
                }
              }
            }

            v61 = v45 + ((v7 >> 5) & 0x3F);
            v62 = *(v40 + 4 * v61);
            v63 = *(v9 + 144164);
            if (v63 == v62 || *(v41 + 4 * (v62 >> 5)) != 1)
            {
              v66 = v63 != v62 && a5 == 0;
              v67 = *(*(v9 + 144128) + 4 * v62);
              if (!v66 && v67 != a4)
              {
LABEL_81:
                if ((result & 0x80000000) != 0)
                {
                  result = sub_1952AA610(v9, v7, 1);
                  if ((result & 0x80000000) != 0)
                  {
                    goto LABEL_114;
                  }

                  v71 = 0;
                  v72 = *(v9 + 144128) + 4 * result;
                  v42 = v90;
                  do
                  {
                    *(v72 + v71) = v90;
                    v71 += 16;
                  }

                  while (v71 != 128);
                }

                else
                {
                  ++*(v41 + 4 * (result >> 5));
                  v69 = *(v40 + 4 * v61);
                  v70 = *(v41 + 4 * (v69 >> 5)) - 1;
                  *(v41 + 4 * (v69 >> 5)) = v70;
                  if (!v70)
                  {
                    *(v41 + 4 * (v69 >> 5)) = -*(v9 + 144156);
                    *(v9 + 144156) = v69;
                  }

                  *(v40 + 4 * v61) = result;
                }
              }
            }

            else
            {
              if (a5 && v62 > 2175)
              {
                goto LABEL_81;
              }

              v64 = (*(v9 + 144128) + 4 * v62);
              if (a5)
              {
                for (i = 0; i != 8; ++i)
                {
                  v64[i] = v42;
                }
              }

              else
              {
                v73 = (v9 + 144136);
                v74 = vld1q_dup_f32(v73);
                v75 = 32;
                do
                {
                  v76 = vmovn_s32(vceqq_s32(*v64, v74));
                  if (v76.i8[0])
                  {
                    v64->i32[0] = a4;
                  }

                  if (v76.i8[2])
                  {
                    v64->i32[1] = a4;
                  }

                  if (v76.i8[4])
                  {
                    v64->i32[2] = a4;
                  }

                  if (v76.i8[6])
                  {
                    v64->i32[3] = a4;
                  }

                  ++v64;
                  v75 -= 4;
                }

                while (v75);
              }
            }
          }

          v7 += 32;
        }

        while (v7 < v39);
      }

      if ((v91 & 0x1F) == 0)
      {
        return result;
      }

      result = sub_1952AA610(v9, v7, 1);
      if ((result & 0x80000000) == 0)
      {
        v77 = *(v9 + 144128);
        if (a5)
        {
          v78 = 0;
          v79 = v77 + 4 * result;
          v80 = v79 + 4 * (v91 & 0x1F);
          if (v80 <= v79 + 4)
          {
            v80 = v79 + 4;
          }

          v81 = (v80 + ~v77 - 4 * result) >> 2;
          v82 = vdupq_n_s64(v81);
          v83 = (v81 + 4) & 0x7FFFFFFFFFFFFFFCLL;
          v84 = (v79 + 8);
          do
          {
            v85 = vdupq_n_s64(v78);
            v86 = vmovn_s64(vcgeq_u64(v82, vorrq_s8(v85, xmmword_19544D5F0)));
            if (vuzp1_s16(v86, *v82.i8).u8[0])
            {
              *(v84 - 2) = a4;
            }

            if (vuzp1_s16(v86, *&v82).i8[2])
            {
              *(v84 - 1) = a4;
            }

            if (vuzp1_s16(*&v82, vmovn_s64(vcgeq_u64(v82, vorrq_s8(v85, xmmword_19544D5E0)))).i32[1])
            {
              *v84 = a4;
              v84[1] = a4;
            }

            v78 += 4;
            v84 += 4;
          }

          while (v83 != v78);
        }

        else
        {
          v87 = (v77 + 4 * result);
          v88 = *(v9 + 144136);
          v89 = &v87[v91 & 0x1F];
          do
          {
            if (*v87 == v88)
            {
              *v87 = a4;
            }

            ++v87;
          }

          while (v87 < v89);
        }

        return result;
      }

LABEL_114:
      v8 = 7;
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1952AA610(uint64_t a1, unsigned int a2, int a3)
{
  v5 = sub_1952AA7D0(a1, a2, a3);
  if (v5 < 0)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = v5 + ((a2 >> 5) & 0x3F);
  v7 = a1 + 2176;
  v8 = *(a1 + 2176 + 4 * v6);
  if (*(a1 + 144164) != v8)
  {
    v9 = *(a1 + 2176 + 4 * v6);
    if (*(a1 + 4 * (v8 >> 5) + 144176) == 1)
    {
      return v9;
    }
  }

  v9 = *(a1 + 144156);
  if (v9)
  {
    v10 = v9 >> 5;
    *(a1 + 144156) = -*(a1 + 4 * (v9 >> 5) + 144176);
    goto LABEL_13;
  }

  v9 = *(a1 + 144152);
  v11 = *(a1 + 144148);
  if (v9 + 32 > v11)
  {
    if (v11 >= 0x20000)
    {
      v12 = 1115264;
      if (v11 >= 0x110480)
      {
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      v12 = 0x20000;
    }

    v13 = malloc_type_malloc((4 * v12), 0x100004052888210uLL);
    if (v13)
    {
      v14 = v13;
      memcpy(v13, *(a1 + 144128), 4 * *(a1 + 144152));
      free(*(a1 + 144128));
      *(a1 + 144128) = v14;
      *(a1 + 144148) = v12;
      goto LABEL_12;
    }

    return 0xFFFFFFFFLL;
  }

LABEL_12:
  *(a1 + 144152) = v9 + 32;
  v10 = v9 >> 5;
LABEL_13:
  v15 = *(a1 + 144128);
  v16 = (v15 + 4 * v8);
  v17 = *v16;
  v18 = v16[1];
  v19 = v16[3];
  v20 = (v15 + 4 * v9);
  v20[2] = v16[2];
  v20[3] = v19;
  *v20 = v17;
  v20[1] = v18;
  v21 = v16[4];
  v22 = v16[5];
  v23 = v16[7];
  v20[6] = v16[6];
  v20[7] = v23;
  v20[4] = v21;
  v20[5] = v22;
  v24 = a1 + 144176;
  *(a1 + 144176 + 4 * v10) = 0;
  if ((v9 & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  ++*(v24 + 4 * (v9 >> 5));
  v25 = *(v7 + 4 * v6);
  v26 = *(v24 + 4 * (v25 >> 5)) - 1;
  *(v24 + 4 * (v25 >> 5)) = v26;
  if (!v26)
  {
    *(v24 + 4 * (v25 >> 5)) = -*(a1 + 144156);
    *(a1 + 144156) = v25;
  }

  *(v7 + 4 * v6) = v9;
  return v9;
}

uint64_t sub_1952AA7D0(uint64_t a1, int a2, int a3)
{
  if (a2 >> 10 == 54 && a3 != 0)
  {
    return 2048;
  }

  v5 = a1 + 143360;
  v6 = *(a1 + 4 * (a2 >> 11));
  v7 = *(a1 + 144160);
  result = v6;
  if (v6 == v7)
  {
    result = *(v5 + 784);
    if (result > 35424)
    {
      return 0xFFFFFFFFLL;
    }

    *(v5 + 784) = result + 64;
    v8 = (a1 + 2176 + 4 * result);
    v9 = (a1 + 2176 + 4 * v6);
    v10 = *v9;
    v11 = v9[1];
    v12 = v9[3];
    v8[2] = v9[2];
    v8[3] = v12;
    *v8 = v10;
    v8[1] = v11;
    v13 = v9[4];
    v14 = v9[5];
    v15 = v9[7];
    v8[6] = v9[6];
    v8[7] = v15;
    v8[4] = v13;
    v8[5] = v14;
    v16 = v9[8];
    v17 = v9[9];
    v18 = v9[11];
    v8[10] = v9[10];
    v8[11] = v18;
    v8[8] = v16;
    v8[9] = v17;
    v19 = v9[12];
    v20 = v9[13];
    v21 = v9[15];
    v8[14] = v9[14];
    v8[15] = v21;
    v8[12] = v19;
    v8[13] = v20;
    if ((result & 0x80000000) != 0)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      *(a1 + 4 * (a2 >> 11)) = result;
    }
  }

  return result;
}

uint64_t utrie_swap(uint64_t a1, unsigned int *a2, int a3, uint64_t a4, int *a5)
{
  if (!a5 || *a5 > 0)
  {
    return 0;
  }

  if (!a1 || !a2 || (a3 & 0x80000000) == 0 && !a4)
  {
    v6 = 0;
    v11 = 1;
LABEL_9:
    *a5 = v11;
    return v6;
  }

  if (a3 <= 0xF)
  {
LABEL_12:
    v6 = 0;
    v11 = 8;
    goto LABEL_9;
  }

  v13 = (*(a1 + 16))(*a2);
  v14 = (*(a1 + 16))(a2[1]);
  Int32 = udata_readInt32(a1, a2[2]);
  v16 = udata_readInt32(a1, a2[3]);
  if (v13 != 1416784229 || (v14 & 0xF) != 5 || (v14 & 0xF0) != 0x20 || Int32 < 2048 || (Int32 & 0x1F) != 0 || (v17 = v16, v16 < 32) || (v16 & 3) != 0 || (v14 & 0x200) != 0 && v16 <= 0x11F)
  {
    v6 = 0;
    v11 = 3;
    goto LABEL_9;
  }

  if ((v14 & 0x100) != 0)
  {
    v18 = 2;
  }

  else
  {
    v18 = 1;
  }

  v6 = ((v16 << v18) + 2 * Int32 + 16);
  if ((a3 & 0x80000000) == 0)
  {
    if (v6 > a3)
    {
      goto LABEL_12;
    }

    (*(a1 + 56))(a1, a2, 16, a4, a5);
    v19 = *(a1 + 48);
    v20 = a2 + 4;
    if ((v14 & 0x100) != 0)
    {
      v25 = a4 + 16;
      v19(a1, v20, (2 * Int32), v25, a5);
      v19 = *(a1 + 56);
      v24 = (v20 + 2 * Int32);
      v21 = (4 * v17);
      v22 = v25 + 2 * Int32;
      v23 = a1;
    }

    else
    {
      v21 = (2 * (v17 + Int32));
      v22 = a4 + 16;
      v23 = a1;
      v24 = v20;
    }

    v19(v23, v24, v21, v22, a5);
  }

  return v6;
}

uint64_t utrie2_swap(uint64_t a1, unsigned __int16 *a2, unsigned int a3, uint64_t a4, int *a5)
{
  if (*a5 > 0)
  {
    return 0;
  }

  if (!a1 || !a2 || (a3 & 0x80000000) == 0 && !a4)
  {
    v5 = 0;
    v11 = 1;
LABEL_8:
    *a5 = v11;
    return v5;
  }

  if (a3 <= 0xF)
  {
LABEL_11:
    v5 = 0;
    v11 = 8;
    goto LABEL_8;
  }

  v13 = (*(a1 + 16))(*a2);
  v14 = (*(a1 + 8))(a2[2]);
  v15 = (*(a1 + 8))(a2[3]);
  v16 = (*(a1 + 8))(a2[4]);
  if (v13 != 1416784178 || (v14 & 0xE) != 0 || v15 < 0x840 || v16 <= 0x2F)
  {
    v5 = 0;
    v11 = 3;
    goto LABEL_8;
  }

  v17 = 8 * v16;
  if (v14)
  {
    v18 = 16 * v16;
  }

  else
  {
    v18 = 8 * v16;
  }

  v5 = v18 + 2 * v15 + 16;
  if ((a3 & 0x80000000) == 0)
  {
    if (v5 > a3)
    {
      goto LABEL_11;
    }

    v22 = 16 * v16;
    (*(a1 + 56))(a1, a2, 4, a4, a5);
    (*(a1 + 48))(a1, a2 + 2, 12, a4 + 4, a5);
    v19 = *(a1 + 48);
    v20 = a2 + 8;
    if (v14)
    {
      v21 = a4 + 16;
      v19(a1, v20, 2 * v15, v21, a5);
      (*(a1 + 56))(a1, &v20[v15], v22, v21 + 2 * v15, a5);
    }

    else
    {
      v19(a1, v20, v17 + 2 * v15, a4 + 16, a5);
    }
  }

  return v5;
}

uint64_t ucptrie_swap(uint64_t a1, unsigned __int16 *a2, unsigned int a3, unsigned __int16 *a4, int *a5)
{
  if (*a5 > 0)
  {
    return 0;
  }

  if (!a1 || !a2 || (a3 & 0x80000000) == 0 && !a4)
  {
    v5 = 0;
    v11 = 1;
LABEL_8:
    *a5 = v11;
    return v5;
  }

  if (a3 <= 0xF)
  {
LABEL_11:
    v5 = 0;
    v11 = 8;
    goto LABEL_8;
  }

  v13 = (*(a1 + 16))(*a2);
  v14 = (*(a1 + 8))(a2[2]);
  v15 = (*(a1 + 8))(a2[3]);
  v16 = (*(a1 + 8))(a2[4]);
  v11 = 3;
  if (v14 >> 6)
  {
    v17 = 64;
  }

  else
  {
    v17 = 1024;
  }

  if (v13 != 1416784179 || ((v18 = v14 & 7, (v14 >> 6) <= 1u) ? (v19 = (v14 & 0x38) == 0) : (v19 = 0), v19 ? (v20 = v18 > 2) : (v20 = 1), !v20 ? (v21 = v17 > v15) : (v21 = 1), v21 || (v22 = v16 & 0xFFF0FFFF | (v14 >> 12 << 16), v22 <= 0x7F)))
  {
    v5 = 0;
    goto LABEL_8;
  }

  if (v18 == 2)
  {
    v23 = v16 & 0xFFF0FFFF | (v14 >> 12 << 16);
  }

  else if (v18 == 1)
  {
    v23 = 4 * v22;
  }

  else
  {
    v23 = 2 * v22;
  }

  v5 = 2 * v15 + 16 + v23;
  if ((a3 & 0x80000000) == 0)
  {
    if (v5 > a3)
    {
      goto LABEL_11;
    }

    (*(a1 + 56))(a1, a2, 4, a4, a5);
    (*(a1 + 48))(a1, a2 + 2, 12, a4 + 2, a5);
    (*(a1 + 48))(a1, a2 + 8, 2 * v15, a4 + 8, a5);
    v24 = &a2[v15 + 8];
    v25 = &a4[v15 + 8];
    if (v18 == 2)
    {
      if (a2 != a4)
      {
        memmove(&a4[v15 + 8], v24, v22);
      }
    }

    else if (v18 == 1)
    {
      (*(a1 + 56))(a1, v24, (4 * v22), v25, a5);
    }

    else
    {
      (*(a1 + 48))(a1, v24, (2 * v22), v25, a5);
    }
  }

  return v5;
}

uint64_t utrie_swapAnyVersion(uint64_t a1, unsigned int *a2, int a3, unsigned __int16 *a4, int *a5)
{
  if (*a5 > 0)
  {
    return 0;
  }

  if (!a2 || a3 < 16 || (a2 & 3) != 0)
  {
LABEL_14:
    *a5 = 3;
    return 0;
  }

  v5 = *a2;
  if (*a2 > 1416784178)
  {
    if (v5 != 1416784179)
    {
      if (v5 == 1701409364 || v5 == 1416784229)
      {
        return utrie_swap(a1, a2, a3, a4, a5);
      }

      goto LABEL_14;
    }
  }

  else
  {
    if (v5 == 845771348)
    {
      return utrie2_swap(a1, a2, a3, a4, a5);
    }

    if (v5 != 862548564)
    {
      if (v5 == 1416784178)
      {
        return utrie2_swap(a1, a2, a3, a4, a5);
      }

      goto LABEL_14;
    }
  }

  return ucptrie_swap(a1, a2, a3, a4, a5);
}

void *icu::IDNA::labelToASCII_UTF8(void *result, const char *a2, int32_t a3, icu::ByteSink *a4, uint64_t a5, int *a6)
{
  v20 = *MEMORY[0x1E69E9840];
  if (*a6 <= 0)
  {
    v9 = result;
    v16 = 0u;
    v17 = 0u;
    v19 = 0;
    v18 = 0u;
    v15 = &unk_1F0935D00;
    LOWORD(v16) = 2;
    icu::UnicodeString::fromUTF8(a2, a3, v14);
    v10 = (*(*v9 + 24))(v9, v14, &v15, a5, a6);
    icu::UnicodeString::toUTF8(v10, a4);
    icu::UnicodeString::~UnicodeString(v11, v14);
    result = icu::UnicodeString::~UnicodeString(v12, &v15);
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

void *icu::IDNA::labelToUnicodeUTF8(void *result, const char *a2, int32_t a3, icu::ByteSink *a4, uint64_t a5, int *a6)
{
  v20 = *MEMORY[0x1E69E9840];
  if (*a6 <= 0)
  {
    v9 = result;
    v16 = 0u;
    v17 = 0u;
    v19 = 0;
    v18 = 0u;
    v15 = &unk_1F0935D00;
    LOWORD(v16) = 2;
    icu::UnicodeString::fromUTF8(a2, a3, v14);
    v10 = (*(*v9 + 32))(v9, v14, &v15, a5, a6);
    icu::UnicodeString::toUTF8(v10, a4);
    icu::UnicodeString::~UnicodeString(v11, v14);
    result = icu::UnicodeString::~UnicodeString(v12, &v15);
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

void *icu::IDNA::nameToASCII_UTF8(void *result, const char *a2, int32_t a3, icu::ByteSink *a4, uint64_t a5, int *a6)
{
  v20 = *MEMORY[0x1E69E9840];
  if (*a6 <= 0)
  {
    v9 = result;
    v16 = 0u;
    v17 = 0u;
    v19 = 0;
    v18 = 0u;
    v15 = &unk_1F0935D00;
    LOWORD(v16) = 2;
    icu::UnicodeString::fromUTF8(a2, a3, v14);
    v10 = (*(*v9 + 40))(v9, v14, &v15, a5, a6);
    icu::UnicodeString::toUTF8(v10, a4);
    icu::UnicodeString::~UnicodeString(v11, v14);
    result = icu::UnicodeString::~UnicodeString(v12, &v15);
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

void *icu::IDNA::nameToUnicodeUTF8(void *result, const char *a2, int32_t a3, icu::ByteSink *a4, uint64_t a5, int *a6)
{
  v20 = *MEMORY[0x1E69E9840];
  if (*a6 <= 0)
  {
    v9 = result;
    v16 = 0u;
    v17 = 0u;
    v19 = 0;
    v18 = 0u;
    v15 = &unk_1F0935D00;
    LOWORD(v16) = 2;
    icu::UnicodeString::fromUTF8(a2, a3, v14);
    v10 = (*(*v9 + 48))(v9, v14, &v15, a5, a6);
    icu::UnicodeString::toUTF8(v10, a4);
    icu::UnicodeString::~UnicodeString(v11, v14);
    result = icu::UnicodeString::~UnicodeString(v12, &v15);
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t icu::IDNA::createUTS46Instance(icu::IDNA *this, int *a2, UErrorCode *a3)
{
  if (*a2 <= 0)
  {
    operator new();
  }

  return 0;
}

void sub_1952AB424(icu::UObject *a1)
{
  icu::UObject::~UObject(a1);

  JUMPOUT(0x19A8B2600);
}

icu::UnicodeString *sub_1952AB474(uint64_t a1, uint64_t a2, int a3, int a4, unsigned __int16 **this, uint64_t a6, int *a7)
{
  if (*a7 >= 1)
  {
    goto LABEL_4;
  }

  v10 = *(a2 + 8);
  if ((v10 & 0x11) != 0 || ((v10 & 2) != 0 ? (v12 = (a2 + 10)) : (v12 = *(a2 + 24)), this == a2 || !v12))
  {
    *a7 = 1;
LABEL_4:
    icu::UnicodeString::setToBogus(this);
    return this;
  }

  if (this[1])
  {
    v14 = 2;
  }

  else
  {
    v14 = this[1] & 0x1E;
  }

  *(this + 4) = v14;
  *(a6 + 8) = 0;
  *a6 = 0;
  v15 = 1;
  *(a6 + 10) = 1;
  v16 = *(a2 + 8);
  v17 = v16;
  v18 = v16 >> 5;
  if (v17 >= 0)
  {
    v19 = v18;
  }

  else
  {
    v19 = *(a2 + 12);
  }

  if (!v19)
  {
LABEL_72:
    *a6 = v15;
    return this;
  }

  Buffer = icu::UnicodeString::getBuffer(this, v19);
  if (!Buffer)
  {
    *a7 = 7;
    return this;
  }

  v24 = 0;
  v25 = 0;
  v26 = *a6;
  v27 = *(a6 + 4);
  v28 = *(a1 + 16) & 2;
  while (1)
  {
    v29 = *v12;
    if (v29 > 0x7F)
    {
LABEL_55:
      v35 = v25;
      goto LABEL_56;
    }

    if ((v29 - 65) <= 0x19)
    {
      *(Buffer + 2 * v24) = v29 + 32;
      goto LABEL_41;
    }

    if (byte_195481AF0[v29] < 0 && v28)
    {
      goto LABEL_55;
    }

    *(Buffer + 2 * v24) = v29;
    if (v29 != 46)
    {
      break;
    }

    if (a3)
    {
      goto LABEL_66;
    }

    v30 = v24 - v25 <= 63 || a4 == 0;
    v31 = v27 | (v24 == v25);
    if (!v30)
    {
      v31 |= 2u;
    }

    v26 |= v31;
    *(a6 + 4) = 0;
    v25 = (v24 + 1);
    v27 = 0;
LABEL_41:
    ++v24;
    ++v12;
    if (v19 == v24)
    {
      if (a4)
      {
        if (v19 - v25 >= 64)
        {
          v27 |= 2u;
          *(a6 + 4) = v27;
        }

        if (!a3)
        {
          v32 = v24 - 1;
          v33 = v25 < 254 || v32 > 0xFD;
          v34 = v26 | 4;
          if (!v33)
          {
            v34 = v26;
          }

          if (v32 >= 0xFD)
          {
            v26 = v34;
          }
        }
      }

      *a6 = v26 | v27;
      icu::UnicodeString::releaseBuffer(this, v19);
      return this;
    }
  }

  if (v29 != 45)
  {
    goto LABEL_41;
  }

  if (v24 != v25 + 3 || *(v12 - 1) != 45)
  {
    if (v24 == v25)
    {
      v27 |= 8u;
      *(a6 + 4) = v27;
    }

    if (v19 - 1 == v24 || v12[1] == 46)
    {
      v27 |= 0x10u;
      *(a6 + 4) = v27;
    }

    goto LABEL_41;
  }

LABEL_66:
  v35 = v25;
  LODWORD(v24) = v24 + 1;
LABEL_56:
  *a6 = v26 | v27;
  icu::UnicodeString::releaseBuffer(this, v24);
  sub_1952ABEB4(a1, a2, v35, v24, a3, a4, this, a6, a7);
  if (*(a6 + 9))
  {
    v36 = *a7 <= 0;
  }

  else
  {
    v36 = 0;
  }

  if (v36)
  {
    v37 = *a6;
    if ((*a6 & 0x7C0) == 0)
    {
      if (!*(a6 + 10) || v35 >= 1 && ((v38 = *(this + 4), (v38 & 0x11) == 0) ? ((v38 & 2) != 0 ? (v39 = this + 5) : (v39 = this[3])) : (v39 = 0), !sub_1952AC250(v39, v35)))
      {
        v15 = v37 | 0x800;
        goto LABEL_72;
      }
    }
  }

  return this;
}

unsigned __int16 **sub_1952AB798(uint64_t a1, uint64_t a2, unsigned __int16 **this, _DWORD *a4, int *a5)
{
  sub_1952AB474(a1, a2, 0, 1, this, a4, a5);
  v7 = *(this + 4);
  v8 = *(this + 3);
  if ((v7 & 0x8000u) == 0)
  {
    v9 = v7 >> 5;
  }

  else
  {
    v9 = *(this + 3);
  }

  if (v9 >= 254 && (*a4 & 4) == 0)
  {
    if ((v7 & 0x11) != 0)
    {
      v10 = 0;
    }

    else if ((v7 & 2) != 0)
    {
      v10 = this + 5;
    }

    else
    {
      v10 = this[3];
    }

    v11 = &v10[v9];
    while (v10 < v11)
    {
      v12 = *v10++;
      if (v12 > 0x7F)
      {
        return this;
      }
    }

    if ((v7 & 0x8000) != 0)
    {
      if (v8 > 254)
      {
LABEL_24:
        *a4 |= 4u;
        return this;
      }
    }

    else
    {
      v8 = v7 >> 5;
      if (v7 >> 5 > 0xFE)
      {
        goto LABEL_24;
      }
    }

    if (v8 < 0xFE)
    {
      goto LABEL_24;
    }

    v13 = (v7 & 2) != 0 ? (this + 10) : this[3];
    if (*(v13 + 253) != 46)
    {
      goto LABEL_24;
    }
  }

  return this;
}

void *sub_1952AB8B8(void *result, const char *a2, uint64_t a3, int a4, int a5, icu::ByteSink *a6, uint64_t a7, int *a8)
{
  v52 = *MEMORY[0x1E69E9840];
  v44[0] = a2;
  v44[1] = a3;
  if (*a8 > 0)
  {
    goto LABEL_78;
  }

  v15 = result;
  if (!a2 && a3)
  {
    *a8 = 1;
LABEL_78:
    v40 = *MEMORY[0x1E69E9840];
    return result;
  }

  *(a7 + 8) = 0;
  *a7 = 0;
  *(a7 + 10) = 1;
  if (a3)
  {
    v48 = 0u;
    v51 = 0;
    v50 = 0u;
    v49 = 0u;
    v47 = &unk_1F0935D00;
    LOWORD(v48) = 2;
    if (a3 > 256)
    {
      icu::UnicodeString::fromUTF8(a2, a3, v46);
      sub_1952ABEB4(v15, v46, 0, 0, a4, a5, &v47, a7, a8);
      icu::UnicodeString::~UnicodeString(v29, v46);
      LODWORD(v18) = 0;
LABEL_44:
      icu::UnicodeString::toUTF8(&v47, a6);
      if (!a4 && a5)
      {
        v33 = (v48 & 0x8000u) == 0 ? v48 >> 5 : DWORD1(v48);
        if (v33 + v18 >= 254)
        {
          if ((v48 & 0x11) != 0)
          {
            v34 = 0;
          }

          else if ((v48 & 2) != 0)
          {
            v34 = &v48 + 1;
          }

          else
          {
            v34 = v49;
          }

          v35 = &v34[v33];
          while (v34 < v35)
          {
            v36 = *v34++;
            if (v36 > 0x7F)
            {
              goto LABEL_67;
            }
          }

          if (v33 + v18 != 254 || v18 <= 253 && (v33 <= (253 - v18) || ((v48 & 2) != 0 ? (v37 = &v48 + 2) : (v37 = v49), *&v37[2 * (253 - v18)] != 46)))
          {
            *a7 |= 4u;
          }
        }
      }

LABEL_67:
      v26 = *(a7 + 9);
      if (*(a7 + 9))
      {
        v38 = *a8 <= 0;
      }

      else
      {
        v38 = 0;
      }

      if (v38)
      {
        v39 = *a7;
        if ((*a7 & 0x7C0) == 0)
        {
          v26 = *(a7 + 10);
          if (!*(a7 + 10) || v18 >= 1 && !sub_1952AC304(a2, v18))
          {
            v26 = (v39 | 0x800u);
            *a7 = v26;
          }
        }
      }
    }

    else
    {
      memset(v46, 0, sizeof(v46));
      v43 = 0;
      v16 = (*(*a6 + 24))(a6, a3, (a3 + 20), v46, 256, &v43);
      v17 = v16;
      v18 = 0;
      v19 = -1;
      v20 = *(v15 + 16) & 2;
      do
      {
        v21 = a2[v19 + 1];
        if (v21 < 0)
        {
LABEL_43:
          *a7 |= *(a7 + 4);
          v30 = v19 - v18 + 1;
          icu::UnicodeString::fromUTF8((v16 + v18), v30, v45);
          icu::UnicodeString::operator=(&v47, v45);
          icu::UnicodeString::~UnicodeString(v31, v45);
          (*(*a6 + 16))(a6, v17, v18);
          icu::StringPiece::StringPiece(&v41, v44, v18);
          icu::UnicodeString::fromUTF8(v41, v42, v45);
          sub_1952ABEB4(v15, v45, 0, v30, a4, a5, &v47, a7, a8);
          icu::UnicodeString::~UnicodeString(v32, v45);
          goto LABEL_44;
        }

        if ((v21 - 65) > 0x19)
        {
          if (byte_195481AF0[v21] < 0 && v20)
          {
            goto LABEL_43;
          }

          v22 = v19 + 1;
          *(v16 + v19 + 1) = v21;
          if (v21 == 46)
          {
            if (a4)
            {
              goto LABEL_43;
            }

            v23 = v22 == v18;
            v24 = v19 - v18 + 1 <= 63 || a5 == 0;
            v25 = *(a7 + 4) | v23;
            if (!v24)
            {
              v25 |= 2u;
            }

            *a7 = *a7 | v25;
            v18 = (v19 + 2);
          }

          else if (v21 == 45)
          {
            if (v22 == v18 + 3 && a2[v19] == 45)
            {
              goto LABEL_43;
            }

            if (v22 == v18)
            {
              *(a7 + 4) |= 8u;
            }

            if (v19 - a3 == -2 || a2[v19 + 2] == 46)
            {
              *(a7 + 4) |= 0x10u;
            }
          }
        }

        else
        {
          *(v16 + v19 + 1) = v21 + 32;
        }

        ++v19;
      }

      while (v19 - a3 != -1);
      if (a5)
      {
        if (a3 - v18 >= 64)
        {
          *(a7 + 4) |= 2u;
        }

        if (!a4 && v19 >= 0xFD && (v19 > 0xFD || v18 <= 253))
        {
          *a7 |= 4u;
        }
      }

      *a7 |= *(a7 + 4);
      (*(*a6 + 16))(a6, v16, a3);
      (*(*a6 + 32))(a6);
    }

    result = icu::UnicodeString::~UnicodeString(v26, &v47);
    goto LABEL_78;
  }

  *a7 = 1;
  v27 = *(*a6 + 32);
  v28 = *MEMORY[0x1E69E9840];

  return v27(a6);
}

uint64_t sub_1952ABEB4(uint64_t a1, icu::UnicodeString *this, uint64_t a3, int a4, int a5, int a6, uint64_t a7, uint64_t a8, int *a9)
{
  v38 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 8);
  if (a4)
  {
    icu::UnicodeString::tempSubString(this, a4, 0x7FFFFFFF, v37);
    (*(*v15 + 40))(v15, a7, v37, a9);
    icu::UnicodeString::~UnicodeString(v16, v37);
  }

  else
  {
    (*(*v15 + 24))(*(a1 + 8), this, a7, a9);
  }

  if (*a9 > 0)
  {
    goto LABEL_5;
  }

  if (a6)
  {
    v19 = 16;
  }

  else
  {
    v19 = 32;
  }

  v36 = (*(a1 + 16) & v19) == 0;
  v20 = *(a7 + 8);
  if ((v20 & 0x11) != 0)
  {
    v21 = 0;
  }

  else if ((v20 & 2) != 0)
  {
    v21 = a7 + 10;
  }

  else
  {
    v21 = *(a7 + 24);
  }

  v22 = v20;
  v23 = v20 >> 5;
  if (v22 >= 0)
  {
    v24 = v23;
  }

  else
  {
    v24 = *(a7 + 12);
  }

  if (v24 <= a3)
  {
    v25 = a3;
    if (!a3)
    {
      goto LABEL_58;
    }

    goto LABEL_57;
  }

  v25 = a3;
  do
  {
    v26 = *(v21 + 2 * v25);
    if (a5 || v26 != 46)
    {
      if (v26 < 0xDF)
      {
        goto LABEL_52;
      }

      if (v26 > 0x200D || v26 >> 2 <= 0x802 && v26 != 962 && v26 != 223)
      {
        if ((v26 & 0xF800) == 0xD800)
        {
          if ((v26 & 0x400) == 0)
          {
            if (v25 + 1 != v24)
            {
              v33 = *(v21 + 2 * (v25 + 1)) & 0xFC00;
              v34 = 56320;
              goto LABEL_43;
            }

            goto LABEL_44;
          }

          if (v25 == a3)
          {
            goto LABEL_44;
          }

          v33 = *(v21 + 2 * v25 - 2) & 0xFC00;
          v34 = 55296;
LABEL_43:
          if (v33 != v34)
          {
LABEL_44:
            *(a8 + 4) |= 0x80u;
            icu::UnicodeString::setCharAt(a7, v25, 65533);
            v35 = *(a7 + 8);
            if ((v35 & 0x11) != 0)
            {
              v21 = 0;
            }

            else if ((v35 & 2) != 0)
            {
              v21 = a7 + 10;
            }

            else
            {
              v21 = *(a7 + 24);
            }
          }
        }

LABEL_52:
        ++v25;
        continue;
      }

      *(a8 + 8) = 1;
      if (!v36)
      {
        goto LABEL_52;
      }

      v31 = sub_1952ACB84(a1, a7, a3, v25, a9);
      if (*a9 > 0)
      {
        goto LABEL_5;
      }

      v24 = v31;
      v32 = *(a7 + 8);
      if ((v32 & 0x11) != 0)
      {
        v21 = 0;
        v36 = 0;
      }

      else
      {
        v36 = 0;
        if ((v32 & 2) != 0)
        {
          v21 = a7 + 10;
        }

        else
        {
          v21 = *(a7 + 24);
        }
      }
    }

    else
    {
      v27 = (v25 - a3);
      v28 = sub_1952AC3B4(a1, a7, a3, v27, a6, a8, a9);
      *a8 |= *(a8 + 4);
      *(a8 + 4) = 0;
      if (*a9 > 0)
      {
        goto LABEL_5;
      }

      v29 = *(a7 + 8);
      v30 = *(a7 + 24);
      if ((v29 & 2) != 0)
      {
        v30 = a7 + 10;
      }

      if ((v29 & 0x11) != 0)
      {
        v21 = 0;
      }

      else
      {
        v21 = v30;
      }

      v24 = v24 - v27 + v28;
      v25 = a3 + v28 + 1;
      a3 = v25;
    }
  }

  while (v25 < v24);
  if (!a3)
  {
LABEL_58:
    sub_1952AC3B4(a1, a7, a3, (v25 - a3), a6, a8, a9);
    *a8 |= *(a8 + 4);
    goto LABEL_5;
  }

LABEL_57:
  if (v25 > a3)
  {
    goto LABEL_58;
  }

LABEL_5:
  v17 = *MEMORY[0x1E69E9840];
  return a7;
}

BOOL sub_1952AC250(unsigned __int16 *a1, int a2)
{
  if (a2 >= 1)
  {
    v2 = 0;
    v3 = 0;
    v4 = 1;
    while (1)
    {
      v5 = v4 - 1;
      v6 = *a1;
      if (v6 == 46)
      {
        if (v5 > v3)
        {
          v7 = *(a1 - 1);
          v8 = v7 - 97;
          v9 = v7 - 48;
          if (v8 >= 0x1A && v9 > 9)
          {
            return v2;
          }
        }

        v3 = v4;
      }

      else if (v5 == v3)
      {
        if (v6 - 97 >= 0x1A)
        {
          return v2;
        }
      }

      else if (v6 <= 0x20 && (v6 > 0x1B || v6 - 9 < 5))
      {
        return v2;
      }

      v2 = v4++ >= a2;
      ++a1;
      if (v4 - a2 == 1)
      {
        return v2;
      }
    }
  }

  return 1;
}

BOOL sub_1952AC304(uint64_t a1, int a2)
{
  if (a2 >= 1)
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    while (1)
    {
      v5 = *(a1 + v2);
      if (v5 == 46)
      {
        if (v2 > v4)
        {
          v6 = *(a1 + v2 - 1);
          if ((v6 - 48) >= 0xA && (v6 & 0xFFFFFFDF) - 65 > 0x19)
          {
            return v3;
          }
        }

        v4 = v2 + 1;
      }

      else if (v2 == v4)
      {
        if ((v5 & 0xFFFFFFDF) - 65 >= 0x1A)
        {
          return v3;
        }
      }

      else
      {
        v8 = v5;
        if (v5 <= 32)
        {
          v9 = v5 - 9;
          if (v8 > 27 || v9 < 5)
          {
            return v3;
          }
        }
      }

      v3 = ++v2 >= a2;
      if (a2 == v2)
      {
        return v3;
      }
    }
  }

  return 1;
}

uint64_t sub_1952AC3B4(uint64_t a1, icu::UnicodeString *this, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int *a7)
{
  v84 = *MEMORY[0x1E69E9840];
  if (*a7 > 0)
  {
    v7 = 0;
    goto LABEL_121;
  }

  v7 = a4;
  v11 = 0;
  v80 = 0u;
  v83 = 0;
  v82 = 0u;
  v81 = 0u;
  v79 = &unk_1F0935D00;
  LOWORD(v80) = 2;
  v12 = *(this + 4);
  if ((v12 & 0x11) == 0)
  {
    if ((v12 & 2) != 0)
    {
      v11 = this + 10;
    }

    else
    {
      v11 = *(this + 3);
    }
  }

  v13 = &v11[2 * a3];
  v14 = a4 < 4;
  if (a4 < 4)
  {
    v72 = this;
    v15 = a4;
    v71 = a3;
    if (a4)
    {
      goto LABEL_9;
    }

LABEL_117:
    *(a6 + 4) |= 1u;
    v50 = this;
    v51 = a3;
    v52 = v7;
    v53 = v72;
    v54 = 0;
    v55 = a7;
    goto LABEL_118;
  }

  if (*v13 != 120 || v13[1] != 110 || v13[2] != 45 || v13[3] != 45)
  {
    v14 = 1;
    v72 = this;
    v15 = a4;
    v71 = a3;
    goto LABEL_19;
  }

  v16 = this;
  v66 = a5;
  v17 = a3;
  if (a4 == 4 || a4 >= 6 && v13[a4 - 1] == 45)
  {
    goto LABEL_16;
  }

  Buffer = icu::UnicodeString::getBuffer(&v79, -1);
  if (!Buffer)
  {
    goto LABEL_104;
  }

  v70 = a1;
  v73 = 0;
  if ((v80 & 2) != 0)
  {
    v57 = 27;
  }

  else
  {
    v57 = DWORD2(v80);
  }

  v58 = u_strFromPunycode(v13 + 4, (v7 - 4), Buffer, v57, 0, &v73);
  if (v73 == 15)
  {
    icu::UnicodeString::releaseBuffer(&v79, 0);
    v59 = icu::UnicodeString::getBuffer(&v79, v58);
    if (v59)
    {
      v73 = 0;
      if ((v80 & 2) != 0)
      {
        v60 = 27;
      }

      else
      {
        v60 = DWORD2(v80);
      }

      v58 = u_strFromPunycode(v13 + 4, (v7 - 4), v59, v60, 0, &v73);
      goto LABEL_102;
    }

LABEL_104:
    v42 = 7;
    *a7 = 7;
    goto LABEL_120;
  }

LABEL_102:
  icu::UnicodeString::releaseBuffer(&v79, v58);
  v22 = v66;
  if (v73 >= 1)
  {
    v20 = v17;
    *(a6 + 4) |= 0x100u;
    v18 = v70;
    v19 = v16;
    v21 = v7;
    goto LABEL_17;
  }

  a1 = v70;
  v61 = (*(**(v70 + 8) + 88))(*(v70 + 8), &v79, a7);
  v42 = *a7;
  if (v42 > 0)
  {
    goto LABEL_120;
  }

  if (!v61 || (icu::UnicodeString::readOnlyAliasFromU16StringView(L"xn--", 4uLL, &v74), v62 = sub_1952AD004(&v79, &v74), icu::UnicodeString::~UnicodeString(v63, &v74), v62))
  {
LABEL_16:
    *(a6 + 4) |= 0x400u;
    v18 = a1;
    v19 = v16;
    v20 = v17;
    v21 = v7;
    v22 = v66;
LABEL_17:
    v23 = a6;
    v24 = a7;
    goto LABEL_54;
  }

  if ((v80 & 0x11) != 0)
  {
    v13 = 0;
  }

  else if ((v80 & 2) != 0)
  {
    v13 = &v80 + 1;
  }

  else
  {
    v13 = v81;
  }

  v71 = 0;
  if ((v80 & 0x8000u) == 0)
  {
    v15 = v80 >> 5;
  }

  else
  {
    v15 = DWORD1(v80);
  }

  v72 = &v79;
  a3 = v17;
  a5 = v66;
  a1 = v70;
  this = v16;
  if (!v15)
  {
    goto LABEL_117;
  }

LABEL_9:
  if (v15 >= 4)
  {
LABEL_19:
    if (v13[2] == 45 && v13[3] == 45)
    {
      *(a6 + 4) |= 0x20u;
    }
  }

  if (*v13 == 45)
  {
    *(a6 + 4) |= 8u;
  }

  v68 = a3;
  v69 = v14;
  v67 = a5;
  v25 = *(a6 + 4);
  if (v13[v15 - 1] == 45)
  {
    v25 |= 0x10u;
    *(a6 + 4) = v25;
  }

  v26 = 0;
  v27 = *(a1 + 16);
  v28 = v13;
  do
  {
    v29 = *v28;
    if (v29 > 0x7F)
    {
      v26 |= v29;
      if (v29 == 65533)
      {
        v25 |= 0x80u;
        *(a6 + 4) = v25;
      }
    }

    else
    {
      if (v29 == 46)
      {
        v25 |= 0x200u;
LABEL_30:
        *(a6 + 4) = v25;
        *v28 = -3;
        goto LABEL_35;
      }

      if ((v27 & 2) != 0 && byte_195481AF0[*v28] < 0)
      {
        v25 |= 0x80u;
        goto LABEL_30;
      }
    }

LABEL_35:
    ++v28;
  }

  while (v28 < &v13[v15]);
  v30 = this;
  v31 = a7;
  v32 = a1;
  v33 = *v13;
  if ((v33 & 0xFC00) == 0xD800)
  {
    v33 = v13[1] + (v33 << 10) - 56613888;
    v34 = 2;
  }

  else
  {
    v34 = 1;
  }

  v35 = u_charType(v33);
  if (((1 << v35) & 0x1C0) != 0)
  {
    *(a6 + 4) |= 0x40u;
    LOWORD(v74) = -3;
    v36 = v72;
    v35 = icu::UnicodeString::doReplace(v72, v71, v34, &v74, 0, 1);
    v37 = *(v72 + 4);
    if ((v37 & 0x11) != 0)
    {
      v38 = 0;
    }

    else if ((v37 & 2) != 0)
    {
      v38 = v72 + 10;
    }

    else
    {
      v38 = v72[3];
    }

    v13 = &v38[2 * v71];
    v39 = v15 - v34;
    v15 = (v15 - v34 + 1);
    if (v72 == v30)
    {
      v7 = (v39 + 1);
    }

    else
    {
      v7 = v7;
    }
  }

  else
  {
    v36 = v72;
  }

  v40 = *(a6 + 4);
  if ((v40 & 0x7C0) == 0)
  {
    v43 = *(v32 + 16);
    if ((v43 & 4) != 0 && (!*(a6 + 9) || *(a6 + 10)))
    {
      v35 = sub_1952AD100(v35, v13, v15, a6);
      v43 = *(v32 + 16);
    }

    if ((v43 & 8) != 0 && (v26 & 0x200C) == 0x200C)
    {
      v35 = sub_1952AD2B4(v32, v13, v15);
      if (!v35)
      {
        *(a6 + 4) |= 0x1000u;
      }
    }

    if ((*(v32 + 16) & 0x40) != 0 && v26 >= 0xB7)
    {
      sub_1952AD4EC(v35, v13, v15, a6);
    }

    if (!v67)
    {
      goto LABEL_87;
    }

    v42 = v69;
    if (!v69)
    {
      if (v7 >= 64)
      {
        v42 = *(a6 + 4) | 2u;
        *(a6 + 4) = v42;
      }

      goto LABEL_120;
    }

    if (v26 < 0x80)
    {
      if (v15 >= 64)
      {
        *(a6 + 4) |= 2u;
      }

      goto LABEL_87;
    }

    v75 = 0u;
    v78 = 0;
    v77 = 0u;
    v76 = 0u;
    v74 = &unk_1F0935D00;
    LOWORD(v75) = 2;
    v44 = icu::UnicodeString::getBuffer(&v74, 63);
    if (v44)
    {
      *v44 = 0x2D002D006E0078;
      if ((v75 & 2) != 0)
      {
        v45 = 23;
      }

      else
      {
        v45 = DWORD2(v75) - 4;
      }

      v46 = u_strToPunycode(v13, v15, (v44 + 1), v45, 0, v31);
      if (*v31 != 15)
      {
LABEL_79:
        icu::UnicodeString::releaseBuffer(&v74, v46 + 4);
        v49 = *v31;
        if (v49 <= 0)
        {
          if (v46 >= 60)
          {
            *(a6 + 4) |= 2u;
          }

          v7 = sub_1952AD078(v30, v68, v7, &v74, (v46 + 4), v31);
        }

        goto LABEL_89;
      }

      *v31 = 0;
      icu::UnicodeString::releaseBuffer(&v74, 4);
      v47 = icu::UnicodeString::getBuffer(&v74, v46 + 4);
      if (v47)
      {
        if ((v75 & 2) != 0)
        {
          v48 = 23;
        }

        else
        {
          v48 = DWORD2(v75) - 4;
        }

        v46 = u_strToPunycode(v13, v15, v47 + 8, v48, 0, v31);
        goto LABEL_79;
      }
    }

    v49 = 7;
    *v31 = 7;
LABEL_89:
    icu::UnicodeString::~UnicodeString(v49, &v74);
    goto LABEL_120;
  }

  if (v69)
  {
LABEL_87:
    v50 = v30;
    v51 = v68;
    v52 = v7;
    v53 = v36;
    v54 = v15;
    v55 = v31;
LABEL_118:
    v41 = sub_1952AD078(v50, v51, v52, v53, v54, v55);
    goto LABEL_119;
  }

  *(a6 + 4) = v40 | 0x400;
  v18 = v32;
  v19 = v30;
  v22 = v67;
  v20 = v68;
  v21 = v7;
  v23 = a6;
  v24 = v31;
LABEL_54:
  v41 = sub_1952ACEA0(v18, v19, v20, v21, v22, v23, v24);
LABEL_119:
  v7 = v41;
LABEL_120:
  icu::UnicodeString::~UnicodeString(v42, &v79);
LABEL_121:
  v64 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t sub_1952ACB84(uint64_t a1, icu::UnicodeString *this, unsigned int a3, unsigned int a4, int *a5)
{
  v40 = *MEMORY[0x1E69E9840];
  if (*a5 > 0)
  {
    v5 = 0;
    goto LABEL_3;
  }

  v9 = a4;
  v13 = *(this + 4);
  if ((v13 & 0x8000u) == 0)
  {
    v5 = v13 >> 5;
  }

  else
  {
    v5 = *(this + 3);
  }

  if (v5 <= a4)
  {
    v15 = 0;
  }

  else
  {
    if ((v13 & 2) != 0)
    {
      v14 = this + 10;
    }

    else
    {
      v14 = *(this + 3);
    }

    v15 = *&v14[2 * a4] == 223;
  }

  Buffer = icu::UnicodeString::getBuffer(this, v15 + v5);
  if (!Buffer)
  {
LABEL_47:
    *a5 = 7;
    goto LABEL_3;
  }

  v17 = Buffer;
  v32 = a1;
  v33 = a3;
  v18 = 0;
  if ((*(this + 4) & 2) != 0)
  {
    v19 = 27;
  }

  else
  {
    v19 = *(this + 4);
  }

  v20 = v9;
  do
  {
    v21 = v9 + 1;
    v22 = *(v17 + 2 * v9);
    if ((v22 - 8204) >= 2)
    {
      if (v22 == 962)
      {
        *(v17 + 2 * v20) = 963;
        v25 = v20 + 1;
        v18 = 1;
      }

      else
      {
        if (v22 == 223)
        {
          v23 = v20 + 1;
          *(v17 + 2 * v20) = 115;
          if (v20 == v9)
          {
            if (v5 == v19)
            {
              icu::UnicodeString::releaseBuffer(this, v5);
              v24 = icu::UnicodeString::getBuffer(this, v5 + 1);
              if (!v24)
              {
                goto LABEL_47;
              }

              v17 = v24;
              if ((*(this + 4) & 2) != 0)
              {
                v19 = 27;
              }

              else
              {
                v19 = *(this + 4);
              }
            }

            u_memmove((v17 + 2 * v23 + 2), (v17 + 2 * v23), v5 - v23);
            v21 = v9 + 2;
          }

          else
          {
            v23 = v23;
          }

          v20 += 2;
          *(v17 + 2 * v23) = 115;
          v5 = (v5 + 1);
          goto LABEL_34;
        }

        *(v17 + 2 * v20) = v22;
        v25 = v20 + 1;
      }

      v20 = v25;
      goto LABEL_35;
    }

    v5 = (v5 - 1);
LABEL_34:
    v18 = 1;
LABEL_35:
    v9 = v21;
  }

  while (v20 < v5);
  icu::UnicodeString::releaseBuffer(this, v5);
  if (v18)
  {
    v36 = 0u;
    v39 = 0;
    v38 = 0u;
    v37 = 0u;
    v35 = &unk_1F0935D00;
    LOWORD(v36) = 2;
    v26 = *(v32 + 8);
    icu::UnicodeString::tempSubString(this, v33, 0x7FFFFFFF, v34);
    (*(*v26 + 24))(v26, v34, &v35, a5);
    icu::UnicodeString::~UnicodeString(v27, v34);
    v28 = *a5;
    if (v28 <= 0)
    {
      if ((v36 & 0x8000u) == 0)
      {
        v29 = v36 >> 5;
      }

      else
      {
        v29 = DWORD1(v36);
      }

      icu::UnicodeString::doReplace(this, v33, 0x7FFFFFFFLL, &v35, 0, v29);
      v30 = *(this + 4);
      if (v30)
      {
        *a5 = 7;
        v30 = *(this + 4);
      }

      v31 = v30;
      v28 = v30 >> 5;
      if (v31 >= 0)
      {
        v5 = v28;
      }

      else
      {
        v5 = *(this + 3);
      }
    }

    icu::UnicodeString::~UnicodeString(v28, &v35);
  }

LABEL_3:
  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t sub_1952ACEA0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, int *a7)
{
  if (*a7 > 0)
  {
    return 0;
  }

  v7 = a4;
  v11 = *(a2 + 8);
  if ((v11 & 0x11) != 0)
  {
    v12 = 0;
  }

  else if ((v11 & 2) != 0)
  {
    v12 = a2 + 10;
  }

  else
  {
    v12 = *(a2 + 24);
  }

  if (a4 < 5)
  {
LABEL_20:
    v22 = -3;
    icu::UnicodeString::doReplace(a2, (a4 + a3), 0, &v22, 0, 1);
    if ((*(a2 + 8) & 1) == 0)
    {
      return (v7 + 1);
    }

    v7 = 0;
    *a7 = 7;
    return v7;
  }

  v13 = v12 + 2 * a3;
  v14 = v13 + 2 * a4;
  v15 = (v13 + 8);
  v16 = *(a6 + 4);
  v17 = 1;
  v18 = *(a1 + 16) & 2;
  v19 = 1;
  do
  {
    v20 = *v15;
    if (v20 > 0x7F)
    {
      v19 = 0;
      v17 = 0;
      goto LABEL_18;
    }

    if (v20 == 46)
    {
      v16 |= 0x200u;
      *(a6 + 4) = v16;
LABEL_17:
      v19 = 0;
      v17 = 0;
      *v15 = -3;
      goto LABEL_18;
    }

    v21 = byte_195481AF0[*v15];
    v19 &= ~(v21 >> 31);
    if (v21 < 0 && v18)
    {
      goto LABEL_17;
    }

LABEL_18:
    ++v15;
  }

  while (v15 < v14);
  if (v19)
  {
    goto LABEL_20;
  }

  if (a4 >= 64 && a5 && v17)
  {
    *(a6 + 4) |= 2u;
  }

  return v7;
}

BOOL sub_1952AD004(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if ((v2 & 0x8000u) == 0)
  {
    v3 = v2 >> 5;
  }

  else
  {
    v3 = *(a2 + 12);
  }

  v4 = *(a1 + 8);
  if (v2)
  {
    return v4 & 1;
  }

  if (v4)
  {
    return 0;
  }

  if ((v2 & 2) != 0)
  {
    v5 = a2 + 10;
  }

  else
  {
    v5 = *(a2 + 24);
  }

  return icu::UnicodeString::doEqualsSubstring(a1, 0, v3, v5, v3 & (v3 >> 31), v3 & ~(v3 >> 31));
}

uint64_t sub_1952AD078(icu::UnicodeString *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6)
{
  if (*a6 > 0)
  {
    return 0;
  }

  v6 = a5;
  if (a4 != this)
  {
    v10 = *(a4 + 8);
    v11 = v10;
    v12 = v10 >> 5;
    if (v11 >= 0)
    {
      v13 = v12;
    }

    else
    {
      v13 = *(a4 + 12);
    }

    icu::UnicodeString::doReplace(this, a2, a3, a4, 0, v13);
    if (*(this + 4))
    {
      v6 = 0;
      *a6 = 7;
    }
  }

  return v6;
}

uint64_t sub_1952AD100(uint64_t a1, unsigned __int16 *a2, int a3, uint64_t a4)
{
  v7 = *a2;
  if ((v7 & 0xFC00) == 0xD800)
  {
    v7 = (v7 << 10) - 56613888 + a2[1];
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  result = u_charDirection(v7);
  v10 = result;
  v11 = 1 << result;
  if (((1 << result) & 0xFFFFDFFC) != 0)
  {
    *(a4 + 10) = 0;
  }

  do
  {
    if (v8 >= a3)
    {
      v13 = v11;
      if (!v10)
      {
        goto LABEL_12;
      }

      goto LABEL_14;
    }

    v12 = a2[a3 - 1];
    if ((v12 & 0xFC00) == 0xDC00)
    {
      a3 -= 2;
      v12 = v12 - 56613888 + (a2[a3] << 10);
    }

    else
    {
      --a3;
    }

    result = u_charDirection(v12);
  }

  while (result == 17);
  v13 = 1 << result;
  if (!v10)
  {
LABEL_12:
    v14 = -6;
    goto LABEL_15;
  }

LABEL_14:
  v14 = -8231;
LABEL_15:
  if ((v13 & v14) != 0)
  {
    *(a4 + 10) = 0;
  }

  for (i = v13 | v11; v8 < a3; i |= 1 << result)
  {
    v16 = v8 + 1;
    v17 = a2[v8];
    if ((v17 & 0xFC00) == 0xD800)
    {
      v8 += 2;
      v17 = (v17 << 10) - 56613888 + a2[v16];
    }

    else
    {
      ++v8;
    }

    result = u_charDirection(v17);
  }

  if (v10)
  {
    if ((i & 0xFFF9DB81) != 0)
    {
      *(a4 + 10) = 0;
    }

    if ((~i & 0x24) == 0)
    {
      goto LABEL_26;
    }
  }

  else if ((i & 0xFFF9FBA2) != 0)
  {
LABEL_26:
    *(a4 + 10) = 0;
  }

  if ((i & 0x2022) != 0)
  {
    *(a4 + 9) = 1;
  }

  return result;
}

BOOL sub_1952AD2B4(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 < 1)
  {
    return 1;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  v24 = a2 - 2;
  v9 = a3;
  while (1)
  {
    v10 = (a2 + 2 * v6);
    v11 = *v10;
    if (v11 != 8205)
    {
      break;
    }

    if (!v6)
    {
      return v7;
    }

    v14 = *(v24 + 2 * v6);
    if ((v14 & 0xFC00) == 0xDC00)
    {
      v14 = v14 - 56613888 + (*(v10 - 2) << 10);
    }

    if ((*(**(a1 + 8) + 80))(*(a1 + 8), v14) != 9)
    {
      return v7;
    }

LABEL_33:
    ++v6;
    ++v8;
    v7 = v6 >= v9;
    if (v6 == v9)
    {
      return v7;
    }
  }

  if (v11 != 8204)
  {
    goto LABEL_33;
  }

  if (!v6)
  {
    return v7;
  }

  v12 = *(v24 + 2 * v6);
  if ((v12 & 0xFC00) == 0xDC00)
  {
    LODWORD(v13) = v6 - 2;
    v12 = v12 - 56613888 + (*(a2 + 2 * (v6 - 2)) << 10);
  }

  else
  {
    LODWORD(v13) = v8 - 1;
  }

  if ((*(**(a1 + 8) + 80))(*(a1 + 8), v12) == 9)
  {
    goto LABEL_33;
  }

  v15 = v12;
  while (1)
  {
    v16 = sub_195229FE0(v15);
    if (v16 != 5)
    {
      break;
    }

    if (!v13)
    {
      return v7;
    }

    v17 = v13;
    v13 = v13 - 1;
    v15 = *(a2 + 2 * v13);
    if ((v15 & 0xFC00) == 0xDC00)
    {
      LODWORD(v13) = v17 - 2;
      v15 = v15 - 56613888 + (*(a2 + 2 * (v17 - 2)) << 10);
    }
  }

  if ((v16 & 0xFFFFFFFE) == 2)
  {
    v18 = v6 + 1;
    while (v18 != a3)
    {
      v19 = v18 + 1;
      v20 = *(a2 + 2 * v18);
      if ((v20 & 0xFC00) == 0xD800)
      {
        v18 += 2;
        v20 = (v20 << 10) - 56613888 + *(a2 + 2 * v19);
      }

      else
      {
        ++v18;
      }

      v21 = sub_195229FE0(v20);
      if (v21 != 5)
      {
        if (v21 == 2 || v21 == 4)
        {
          goto LABEL_33;
        }

        return v7;
      }
    }
  }

  return v7;
}

void sub_1952AD4EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v33 = (a3 - 1);
  if (a3 >= 1)
  {
    v7 = 0;
    v32 = 0;
    v31 = a2 - 2;
    v8 = a3;
    do
    {
      v9 = (a2 + 2 * v7);
      v10 = *v9;
      if (v10 >= 0xB7)
      {
        if (v10 > 0x6F9)
        {
          if (v10 == 12539)
          {
            v12 = 0;
            v34 = 0;
            while (v12 < a3)
            {
              v13 = v12 + 1;
              v14 = *(a2 + 2 * v12);
              v15 = (v14 & 0xFC00) != 0xD800 || v13 == a3;
              if (!v15)
              {
                v16 = *(a2 + 2 * v13);
                v17 = (v16 & 0xFC00) == 56320;
                v18 = v12 + 2;
                v19 = (v14 << 10) - 56613888 + v16;
                if (v17)
                {
                  v14 = v19;
                }

                if (v17)
                {
                  LODWORD(v13) = v18;
                }
              }

              Script = uscript_getScript(v14, &v34);
              v21 = Script > 0x16 || ((1 << Script) & 0x520000) == 0;
              v12 = v13;
              if (!v21)
              {
                goto LABEL_51;
              }
            }

LABEL_50:
            *(a4 + 4) |= 0x2000u;
          }
        }

        else
        {
          if (v10 == 885)
          {
            if (v7 < v33)
            {
              v36 = 0;
              v22 = v7 + 2;
              v23 = v9[1];
              if ((v23 & 0xFC00) == 0xD800 && v22 != v8)
              {
                v25 = *(a2 + 2 * v22);
                v15 = (v25 & 0xFC00) == 56320;
                v26 = (v23 << 10) - 56613888 + v25;
                if (v15)
                {
                  v23 = v26;
                }
              }

              if (uscript_getScript(v23, &v36) == 14)
              {
                goto LABEL_51;
              }
            }

            goto LABEL_50;
          }

          if (v10 == 183)
          {
            if (v7)
            {
              v11 = *(v9 - 1) != 108 || v7 >= v33;
              if (!v11 && v9[1] == 108)
              {
                goto LABEL_51;
              }
            }

            goto LABEL_50;
          }

          if (v10 - 1523 <= 1)
          {
            if (v7)
            {
              v35 = 0;
              v27 = *(v31 + 2 * v7);
              if (v7 != 1 && (v27 & 0xFC00) == 0xDC00)
              {
                v28 = *(v9 - 2);
                v15 = (v28 & 0xFC00) == 55296;
                v29 = v27 - 56613888 + (v28 << 10);
                if (v15)
                {
                  v27 = v29;
                }
              }

              if (uscript_getScript(v27, &v35) == 19)
              {
                goto LABEL_51;
              }
            }

            goto LABEL_50;
          }

          if (v10 >= 0x660)
          {
            if (v10 <= 0x669)
            {
              if (v32 >= 1)
              {
                *(a4 + 4) |= 0x4000u;
              }

              v30 = -1;
LABEL_62:
              v32 = v30;
              goto LABEL_51;
            }

            if (v10 >= 0x6F0)
            {
              if (v32 < 0)
              {
                *(a4 + 4) |= 0x4000u;
              }

              v30 = 1;
              goto LABEL_62;
            }
          }
        }
      }

LABEL_51:
      ++v7;
    }

    while (v7 != v8);
  }
}

void uidna_close(UIDNA *idna)
{
  if (idna)
  {
    (*(*idna + 8))();
  }
}

uint64_t sub_1952AD930(uint64_t a1, int a2, uint64_t a3, int a4, __int16 *a5, int *a6)
{
  if (*a6 > 0)
  {
    return 0;
  }

  if (!a5)
  {
    goto LABEL_15;
  }

  v7 = *a5;
  if (v7 <= 15)
  {
    goto LABEL_15;
  }

  if (a1)
  {
    if (a2 < -1)
    {
      goto LABEL_15;
    }
  }

  else if (a2)
  {
    goto LABEL_15;
  }

  if (!a3)
  {
    if (!a4)
    {
      goto LABEL_13;
    }

LABEL_15:
    result = 0;
    *a6 = 1;
    return result;
  }

  if (a4 < 0)
  {
    goto LABEL_15;
  }

LABEL_13:
  if (a1 && a3 == a1)
  {
    goto LABEL_15;
  }

  bzero(a5 + 1, v7 - 2);
  return 1;
}

int32_t uidna_labelToASCII_UTF8(const UIDNA *idna, const char *label, int32_t length, char *dest, int32_t capacity, UIDNAInfo *pInfo, UErrorCode *pErrorCode)
{
  v11 = length;
  if (!sub_1952AD930(label, length, dest, capacity, &pInfo->size, pErrorCode))
  {
    return 0;
  }

  if ((v11 & 0x80000000) != 0)
  {
    v11 = strlen(label);
  }

  if (*pErrorCode > 0)
  {
    return 0;
  }

  v16 = 0u;
  v17 = 0u;
  icu::CheckedArrayByteSink::CheckedArrayByteSink(&v16, dest, capacity);
  v19 = 0x10000;
  v18 = 0;
  (*(*idna + 56))(idna, label, v11, &v16, &v18, pErrorCode);
  v14 = 0;
  pInfo->isTransitionalDifferent = v19;
  pInfo->errors = v18;
  if (*pErrorCode <= 0)
  {
    v14 = DWORD2(v17);
    if (BYTE12(v17))
    {
      *pErrorCode = U_BUFFER_OVERFLOW_ERROR;
    }

    else
    {
      v14 = u_terminateChars(dest, capacity, DWORD2(v17), pErrorCode);
    }
  }

  icu::CheckedArrayByteSink::~CheckedArrayByteSink(&v16);
  return v14;
}

int32_t uidna_labelToUnicodeUTF8(const UIDNA *idna, const char *label, int32_t length, char *dest, int32_t capacity, UIDNAInfo *pInfo, UErrorCode *pErrorCode)
{
  v11 = length;
  if (!sub_1952AD930(label, length, dest, capacity, &pInfo->size, pErrorCode))
  {
    return 0;
  }

  if ((v11 & 0x80000000) != 0)
  {
    v11 = strlen(label);
  }

  if (*pErrorCode > 0)
  {
    return 0;
  }

  v16 = 0u;
  v17 = 0u;
  icu::CheckedArrayByteSink::CheckedArrayByteSink(&v16, dest, capacity);
  v19 = 0x10000;
  v18 = 0;
  (*(*idna + 64))(idna, label, v11, &v16, &v18, pErrorCode);
  v14 = 0;
  pInfo->isTransitionalDifferent = v19;
  pInfo->errors = v18;
  if (*pErrorCode <= 0)
  {
    v14 = DWORD2(v17);
    if (BYTE12(v17))
    {
      *pErrorCode = U_BUFFER_OVERFLOW_ERROR;
    }

    else
    {
      v14 = u_terminateChars(dest, capacity, DWORD2(v17), pErrorCode);
    }
  }

  icu::CheckedArrayByteSink::~CheckedArrayByteSink(&v16);
  return v14;
}

int32_t uidna_nameToASCII_UTF8(const UIDNA *idna, const char *name, int32_t length, char *dest, int32_t capacity, UIDNAInfo *pInfo, UErrorCode *pErrorCode)
{
  v11 = length;
  if (!sub_1952AD930(name, length, dest, capacity, &pInfo->size, pErrorCode))
  {
    return 0;
  }

  if ((v11 & 0x80000000) != 0)
  {
    v11 = strlen(name);
  }

  if (*pErrorCode > 0)
  {
    return 0;
  }

  v16 = 0u;
  v17 = 0u;
  icu::CheckedArrayByteSink::CheckedArrayByteSink(&v16, dest, capacity);
  v19 = 0x10000;
  v18 = 0;
  (*(*idna + 72))(idna, name, v11, &v16, &v18, pErrorCode);
  v14 = 0;
  pInfo->isTransitionalDifferent = v19;
  pInfo->errors = v18;
  if (*pErrorCode <= 0)
  {
    v14 = DWORD2(v17);
    if (BYTE12(v17))
    {
      *pErrorCode = U_BUFFER_OVERFLOW_ERROR;
    }

    else
    {
      v14 = u_terminateChars(dest, capacity, DWORD2(v17), pErrorCode);
    }
  }

  icu::CheckedArrayByteSink::~CheckedArrayByteSink(&v16);
  return v14;
}

int32_t uidna_nameToUnicodeUTF8(const UIDNA *idna, const char *name, int32_t length, char *dest, int32_t capacity, UIDNAInfo *pInfo, UErrorCode *pErrorCode)
{
  v11 = length;
  if (!sub_1952AD930(name, length, dest, capacity, &pInfo->size, pErrorCode))
  {
    return 0;
  }

  if ((v11 & 0x80000000) != 0)
  {
    v11 = strlen(name);
  }

  if (*pErrorCode > 0)
  {
    return 0;
  }

  v16 = 0u;
  v17 = 0u;
  icu::CheckedArrayByteSink::CheckedArrayByteSink(&v16, dest, capacity);
  v19 = 0x10000;
  v18 = 0;
  (*(*idna + 80))(idna, name, v11, &v16, &v18, pErrorCode);
  v14 = 0;
  pInfo->isTransitionalDifferent = v19;
  pInfo->errors = v18;
  if (*pErrorCode <= 0)
  {
    v14 = DWORD2(v17);
    if (BYTE12(v17))
    {
      *pErrorCode = U_BUFFER_OVERFLOW_ERROR;
    }

    else
    {
      v14 = u_terminateChars(dest, capacity, DWORD2(v17), pErrorCode);
    }
  }

  icu::CheckedArrayByteSink::~CheckedArrayByteSink(&v16);
  return v14;
}

const char *__cdecl u_errorName(UErrorCode code)
{
  if (code <= U_INPUT_TOO_LONG_ERROR)
  {
    v1 = &off_1E740B9C0[code];
    return *v1;
  }

  v2 = code + 128;
  if ((code + 128) <= 8)
  {
    v3 = off_1E740BAC0;
LABEL_9:
    v1 = &v3[v2];
    return *v1;
  }

  v2 = code - 0x10000;
  if ((code - 0x10000) <= 0x22)
  {
    v3 = off_1E740BB08;
    goto LABEL_9;
  }

  if (code >> 5 == 2056)
  {
    v2 = code - 65792;
    v3 = off_1E740BC20;
    goto LABEL_9;
  }

  if ((code - 66048) <= 0xD)
  {
    v1 = &off_1E740BD20[code - 66048];
    return *v1;
  }

  v5 = code - 66304;
  if ((code - 66304) <= 0x15)
  {
    v6 = off_1E740BD90;
LABEL_17:
    v1 = &v6[v5];
    return *v1;
  }

  v5 = code - 66560;
  if ((code - 66560) <= 8)
  {
    v6 = off_1E740BE40;
    goto LABEL_17;
  }

  if ((code & 0xFFFFFFFE) == 0x10500)
  {
    v2 = code - 66816;
    v3 = off_1E740BE88;
    goto LABEL_9;
  }

  return "[BOGUS UErrorCode]";
}

uint64_t icu::UVector::UVector(icu::UVector *this, UErrorCode *a2)
{
  return icu::UVector::UVector(this, 0, 0, 8, a2);
}

{
  return icu::UVector::UVector(this, 0, 0, 8, a2);
}

uint64_t icu::UVector::UVector(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int *a5)
{
  *a1 = &unk_1F0936E28;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
  if (*a5 <= 0)
  {
    if ((a4 - 0x10000000) >= 0xF0000001)
    {
      v7 = a4;
    }

    else
    {
      v7 = 8;
    }

    v8 = malloc_type_malloc((8 * v7), 0x108204023715A0EuLL);
    *(a1 + 16) = v8;
    if (v8)
    {
      *(a1 + 12) = v7;
    }

    else
    {
      *a5 = 7;
    }
  }

  return a1;
}

uint64_t icu::UVector::UVector(icu::UVector *this, int a2, UErrorCode *a3)
{
  return icu::UVector::UVector(this, 0, 0, a2, a3);
}

{
  return icu::UVector::UVector(this, 0, 0, a2, a3);
}

uint64_t icu::UVector::UVector(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  return icu::UVector::UVector(a1, a2, a3, 8, a4);
}

{
  return icu::UVector::UVector(a1, a2, a3, 8, a4);
}

void icu::UVector::~UVector(void **this)
{
  *this = &unk_1F0936E28;
  icu::UVector::removeAllElements(this);
  free(this[2]);
  this[2] = 0;

  icu::UObject::~UObject(this);
}

{
  icu::UVector::~UVector(this);

  JUMPOUT(0x19A8B2600);
}

uint64_t icu::UVector::removeAllElements(uint64_t this)
{
  v1 = this;
  if (*(this + 24))
  {
    v2 = *(this + 8);
    if (v2 >= 1)
    {
      for (i = 0; i < v2; ++i)
      {
        this = *(*(v1 + 16) + 8 * i);
        if (this)
        {
          this = (*(v1 + 24))();
          v2 = *(v1 + 8);
        }
      }
    }
  }

  *(v1 + 8) = 0;
  return this;
}

uint64_t icu::UVector::assign(icu::UVector *a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), UErrorCode *a4)
{
  result = icu::UVector::ensureCapacity(a1, *(a2 + 8), a4);
  if (result)
  {
    result = icu::UVector::setSize(a1, *(a2 + 8), a4);
    if (*a4 <= 0 && *(a2 + 8) >= 1)
    {
      v10 = 0;
      v11 = 0;
      do
      {
        v12 = *(a1 + 2);
        if (*(v12 + v10))
        {
          v13 = *(a1 + 3);
          if (v13)
          {
            v13();
            v12 = *(a1 + 2);
          }
        }

        result = a3(v12 + v10, *(a2 + 16) + v10);
        ++v11;
        v10 += 8;
      }

      while (v11 < *(a2 + 8));
    }
  }

  return result;
}

uint64_t icu::UVector::ensureCapacity(icu::UVector *this, int a2, UErrorCode *a3)
{
  if (*a3 > 0)
  {
    return 0;
  }

  if (a2 < 0)
  {
    goto LABEL_10;
  }

  v6 = *(this + 3);
  if (v6 < a2)
  {
    if (v6 >= 0x40000000 || ((v7 = 2 * v6, v7 <= a2) ? (v8 = a2) : (v8 = v7), v8 >> 28))
    {
LABEL_10:
      result = 0;
      v9 = U_ILLEGAL_ARGUMENT_ERROR;
LABEL_11:
      *a3 = v9;
      return result;
    }

    result = malloc_type_realloc(*(this + 2), 8 * v8, 0x108204023715A0EuLL);
    if (!result)
    {
      v9 = U_MEMORY_ALLOCATION_ERROR;
      goto LABEL_11;
    }

    *(this + 2) = result;
    *(this + 3) = v8;
  }

  return 1;
}

uint64_t icu::UVector::setSize(uint64_t (**this)(void), int a2, UErrorCode *a3)
{
  result = icu::UVector::ensureCapacity(this, a2, a3);
  if (result)
  {
    v6 = *(this + 2);
    v7 = v6 <= a2;
    if (v6 >= a2)
    {
      while (!v7)
      {
        result = icu::UVector::orphanElementAt(this, --v6);
        if (result)
        {
          v9 = this[3];
          if (v9)
          {
            result = v9();
          }
        }

        v7 = v6 <= a2;
      }
    }

    else
    {
      v8 = v6;
      do
      {
        *(this[2] + v8++) = 0;
      }

      while (a2 != v8);
    }

    *(this + 2) = a2;
  }

  return result;
}

BOOL icu::UVector::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 != *(a2 + 8))
  {
    return 0;
  }

  if (*(a1 + 32))
  {
    v4 = v2 < 1;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return 1;
  }

  v7 = 0;
  do
  {
    v8 = (*(a1 + 32))(*(*(a1 + 16) + 8 * v7), *(*(a2 + 16) + 8 * v7));
    result = v8 != 0;
    if (!v8)
    {
      break;
    }

    ++v7;
  }

  while (v7 < *(a1 + 8));
  return result;
}

uint64_t icu::UVector::addElement(icu::UVector *this, void *a2, UErrorCode *a3)
{
  result = icu::UVector::ensureCapacity(this, *(this + 2) + 1, a3);
  if (result)
  {
    v6 = *(this + 2);
    v7 = *(this + 2);
    *(this + 2) = v7 + 1;
    *(v6 + 8 * v7) = a2;
  }

  return result;
}

uint64_t icu::UVector::adoptElement(uint64_t (**this)(void *), void *a2, UErrorCode *a3)
{
  result = icu::UVector::ensureCapacity(this, *(this + 2) + 1, a3);
  if (result)
  {
    v6 = this[2];
    v7 = *(this + 2);
    *(this + 2) = v7 + 1;
    *(v6 + v7) = a2;
  }

  else
  {
    v8 = this[3];

    return v8(a2);
  }

  return result;
}

uint64_t icu::UVector::addElement(icu::UVector *this, int a2, UErrorCode *a3)
{
  result = icu::UVector::ensureCapacity(this, *(this + 2) + 1, a3);
  if (result)
  {
    *(*(this + 2) + 8 * *(this + 2)) = 0;
    *(*(this + 2) + 8 * (*(this + 2))++) = a2;
  }

  return result;
}

uint64_t icu::UVector::setElementAt(uint64_t this, void *a2, unsigned int a3)
{
  v4 = this;
  if ((a3 & 0x80000000) != 0 || *(this + 8) <= a3)
  {
    v8 = *(this + 24);
    if (v8)
    {

      return v8(a2);
    }
  }

  else
  {
    v6 = *(this + 16);
    this = *(v6 + 8 * a3);
    if (this)
    {
      v7 = *(v4 + 24);
      if (v7)
      {
        this = v7();
        v6 = *(v4 + 16);
      }
    }

    *(v6 + 8 * a3) = a2;
  }

  return this;
}

uint64_t icu::UVector::setElementAt(uint64_t this, int a2, unsigned int a3)
{
  if ((a3 & 0x80000000) == 0 && *(this + 8) > a3)
  {
    *(*(this + 16) + 8 * a3) = 0;
    *(*(this + 16) + 8 * a3) = a2;
  }

  return this;
}

uint64_t icu::UVector::insertElementAt(uint64_t (**this)(void *), void *a2, unsigned int a3, UErrorCode *a4)
{
  result = icu::UVector::ensureCapacity(this, *(this + 2) + 1, a4);
  if (!result)
  {
    goto LABEL_8;
  }

  if ((a3 & 0x80000000) == 0)
  {
    v9 = *(this + 2);
    if (v9 >= a3)
    {
      if (v9 > a3)
      {
        do
        {
          *(this[2] + v9) = *(this[2] + v9 - 1);
          --v9;
        }

        while (v9 > a3);
      }

      *(this[2] + a3) = a2;
      ++*(this + 2);
LABEL_8:
      if (*a4 < 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  *a4 = U_ILLEGAL_ARGUMENT_ERROR;
LABEL_9:
  v10 = this[3];
  if (v10)
  {

    return v10(a2);
  }

  return result;
}

uint64_t icu::UVector::insertElementAt(icu::UVector *this, int a2, unsigned int a3, UErrorCode *a4)
{
  result = icu::UVector::ensureCapacity(this, *(this + 2) + 1, a4);
  if (result)
  {
    if ((a3 & 0x80000000) != 0 || (v9 = *(this + 2), v9 < a3))
    {
      *a4 = U_ILLEGAL_ARGUMENT_ERROR;
    }

    else
    {
      if (v9 > a3)
      {
        do
        {
          *(*(this + 2) + 8 * v9) = *(*(this + 2) + 8 * v9 - 8);
          --v9;
        }

        while (v9 > a3);
      }

      *(*(this + 2) + 8 * a3) = 0;
      *(*(this + 2) + 8 * a3) = a2;
      ++*(this + 2);
    }
  }

  return result;
}

uint64_t icu::UVector::elementAt(icu::UVector *this, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0 || *(this + 2) <= a2)
  {
    return 0;
  }

  else
  {
    return *(*(this + 2) + 8 * a2);
  }
}

uint64_t icu::UVector::elementAti(icu::UVector *this, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0 || *(this + 2) <= a2)
  {
    return 0;
  }

  else
  {
    return *(*(this + 2) + 8 * a2);
  }
}

BOOL icu::UVector::containsAll(icu::UVector *this, const icu::UVector *a2)
{
  if (*(a2 + 2) < 1)
  {
    return 1;
  }

  v4 = 0;
  do
  {
    v5 = icu::UVector::indexOf(this, *(*(a2 + 2) + 8 * v4), 0, 0);
    result = v5 >= 0;
    if (v5 < 0)
    {
      break;
    }

    ++v4;
  }

  while (v4 < *(a2 + 2));
  return result;
}

uint64_t icu::UVector::indexOf(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (!*(a1 + 32))
  {
    v7 = *(a1 + 8);
    if (v7 > a3)
    {
      v8 = (*(a1 + 16) + 8 * a3);
      do
      {
        if (a4)
        {
          if (*v8 == a2)
          {
            return a3;
          }
        }

        else if (*v8 == a2)
        {
          return a3;
        }

        a3 = (a3 + 1);
        ++v8;
      }

      while (v7 != a3);
    }

    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 8) <= a3)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = a3;
  while (!(*(a1 + 32))(a2, *(*(a1 + 16) + 8 * v6)))
  {
    if (++v6 >= *(a1 + 8))
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v6;
}

uint64_t icu::UVector::containsNone(icu::UVector *this, const icu::UVector *a2)
{
  if (*(a2 + 2) < 1)
  {
    return 1;
  }

  v4 = 0;
  do
  {
    v5 = icu::UVector::indexOf(this, *(*(a2 + 2) + 8 * v4), 0, 0);
    result = v5 >> 31;
    if ((v5 & 0x80000000) == 0)
    {
      break;
    }

    ++v4;
  }

  while (v4 < *(a2 + 2));
  return result;
}

uint64_t icu::UVector::removeAll(icu::UVector *this, const icu::UVector *a2)
{
  if (*(a2 + 2) < 1)
  {
    return 0;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = icu::UVector::indexOf(this, *(*(a2 + 2) + 8 * v4), 0, 0);
      if ((v6 & 0x80000000) == 0)
      {
        if (icu::UVector::orphanElementAt(this, v6))
        {
          v7 = *(this + 3);
          if (v7)
          {
            v7();
          }
        }

        v5 = 1;
      }

      ++v4;
    }

    while (v4 < *(a2 + 2));
  }

  return v5;
}

uint64_t icu::UVector::removeElementAt(uint64_t (**this)(void), unsigned int a2)
{
  result = icu::UVector::orphanElementAt(this, a2);
  if (result)
  {
    v4 = this[3];
    if (v4)
    {

      return v4();
    }
  }

  return result;
}

uint64_t icu::UVector::retainAll(icu::UVector *this, const icu::UVector *a2)
{
  v2 = *(this + 2);
  if (v2 < 1)
  {
    return 0;
  }

  else
  {
    v5 = 0;
    do
    {
      if ((icu::UVector::indexOf(a2, *(*(this + 2) + 8 * v2 - 8), 0, 0) & 0x80000000) != 0)
      {
        if (icu::UVector::orphanElementAt(this, v2 - 1))
        {
          v6 = *(this + 3);
          if (v6)
          {
            v6();
          }
        }

        v5 = 1;
      }

      --v2;
    }

    while ((v2 + 1) > 1);
  }

  return v5;
}

uint64_t icu::UVector::orphanElementAt(icu::UVector *this, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    return 0;
  }

  v3 = *(this + 2);
  if (v3 <= a2)
  {
    return 0;
  }

  result = *(*(this + 2) + 8 * a2);
  v5 = v3 - 1;
  if (v5 > a2)
  {
    v6 = 8 * a2;
    do
    {
      *(*(this + 2) + v6) = *(*(this + 2) + v6 + 8);
      v5 = *(this + 2) - 1;
      v6 += 8;
      ++a2;
    }

    while (v5 > a2);
  }

  *(this + 2) = v5;
  return result;
}

uint64_t icu::UVector::removeElement(icu::UVector *this, uint64_t a2)
{
  v3 = icu::UVector::indexOf(this, a2, 0, 1);
  if ((v3 & 0x80000000) != 0)
  {
    return 0;
  }

  if (icu::UVector::orphanElementAt(this, v3))
  {
    v4 = *(this + 3);
    if (v4)
    {
      v4();
    }
  }

  return 1;
}

uint64_t icu::UVector::equals(icu::UVector *this, const icu::UVector *a2)
{
  v2 = *(this + 2);
  if (v2 != *(a2 + 2))
  {
    return 0;
  }

  if (*(this + 4))
  {
    if (v2 >= 1)
    {
      v5 = 0;
      v6 = 0;
      while (1)
      {
        result = (*(this + 4))(v5 + *(a2 + 2), *(*(this + 2) + v5));
        if (!result)
        {
          break;
        }

        ++v6;
        v5 += 8;
        if (v6 >= *(this + 2))
        {
          return 1;
        }
      }

      return result;
    }

    return 1;
  }

  if (v2 < 1)
  {
    return 1;
  }

  v8 = *(this + 2);
  for (i = *(a2 + 2); *v8 == *i; ++i)
  {
    ++v8;
    if (!--v2)
    {
      return 1;
    }
  }

  return 0;
}

void **icu::UVector::toArray(icu::UVector *this, void **a2)
{
  v2 = *(this + 2);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = 8 * v2;
    do
    {
      a2[v3 / 8] = *(*(this + 2) + v3);
      v3 += 8;
    }

    while (v4 != v3);
  }

  return a2;
}

uint64_t icu::UVector::setDeleter(icu::UVector *this, void (*a2)(void *))
{
  v2 = *(this + 3);
  *(this + 3) = a2;
  return v2;
}

uint64_t icu::UVector::setComparer(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  *(a1 + 32) = a2;
  return v2;
}

uint64_t icu::UVector::sortedInsert(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, uint64_t), UErrorCode *a4)
{
  result = icu::UVector::ensureCapacity(a1, *(a1 + 8) + 1, a4);
  if (result)
  {
    v8 = *(a1 + 8);
    if (!v8)
    {
      goto LABEL_12;
    }

    v9 = 0;
    do
    {
      v10 = (v9 + v8) / 2;
      result = a3(*(*(a1 + 16) + 8 * v10), a2);
      if (result <= 0)
      {
        v9 = v10 + 1;
      }

      else
      {
        v8 = (v9 + v8) / 2;
      }
    }

    while (v9 != v8);
    v11 = *(a1 + 8);
    if (v11 > v8)
    {
      v12 = v8;
      do
      {
        *(*(a1 + 16) + 8 * v11) = *(*(a1 + 16) + 8 * v11 - 8);
        --v11;
      }

      while (v11 > v8);
    }

    else
    {
LABEL_12:
      v12 = v8;
    }

    *(*(a1 + 16) + 8 * v12) = a2;
    ++*(a1 + 8);
  }

  else
  {
    v13 = *(a1 + 24);
    if (v13)
    {

      return v13(a2);
    }
  }

  return result;
}

void icu::UVector::sorti(icu::UVector *this, UErrorCode *a2)
{
  if (*a2 <= 0)
  {
    uprv_sortArray(*(this + 2), *(this + 2), 8, sub_1952AF3CC, 0, 0, a2);
  }
}

uint64_t sub_1952AF3CC(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  if (*a2 < *a3)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a2 != *a3;
  }
}

void icu::UVector::sort(uint64_t a1, uint64_t a2, int *a3)
{
  v3 = a2;
  if (*a3 <= 0)
  {
    uprv_sortArray(*(a1 + 16), *(a1 + 8), 8, sub_1952AF440, &v3, 0, a3);
  }
}

void icu::UVector::sortWithUComparator(icu::UVector *this, uint64_t (*a2)(uint64_t, uint64_t, uint64_t), uint64_t a3, UErrorCode *a4)
{
  if (*a4 <= 0)
  {
    uprv_sortArray(*(this + 2), *(this + 2), 8, a2, a3, 1, a4);
  }
}

icu::UVector32 *icu::UVector32::UVector32(icu::UVector32 *this, UErrorCode *a2)
{
  *this = &unk_1F0936E68;
  *(this + 1) = 0;
  *(this + 4) = 0;
  *(this + 3) = 0;
  icu::UVector32::_init(this, 8, a2);
  return this;
}

{
  *this = &unk_1F0936E68;
  *(this + 1) = 0;
  *(this + 4) = 0;
  *(this + 3) = 0;
  icu::UVector32::_init(this, 8, a2);
  return this;
}

void *icu::UVector32::_init(icu::UVector32 *this, int a2, UErrorCode *a3)
{
  if (a2 >= 1)
  {
    v5 = a2;
  }

  else
  {
    v5 = 8;
  }

  v6 = *(this + 4);
  if (v6 >= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = *(this + 4);
  }

  if (v6 <= 0)
  {
    v8 = v5;
  }

  else
  {
    v8 = v7;
  }

  if (v8 >= 0x20000000)
  {
    v8 = uprv_min(8, v6);
  }

  result = malloc_type_malloc(4 * v8, 0x100004052888210uLL);
  *(this + 3) = result;
  if (result)
  {
    *(this + 3) = v8;
  }

  else
  {
    *a3 = U_MEMORY_ALLOCATION_ERROR;
  }

  return result;
}

icu::UVector32 *icu::UVector32::UVector32(icu::UVector32 *this, int a2, UErrorCode *a3)
{
  *this = &unk_1F0936E68;
  *(this + 1) = 0;
  *(this + 4) = 0;
  *(this + 3) = 0;
  icu::UVector32::_init(this, a2, a3);
  return this;
}

{
  *this = &unk_1F0936E68;
  *(this + 1) = 0;
  *(this + 4) = 0;
  *(this + 3) = 0;
  icu::UVector32::_init(this, a2, a3);
  return this;
}

void icu::UVector32::~UVector32(void **this)
{
  *this = &unk_1F0936E68;
  free(this[3]);
  this[3] = 0;

  icu::UObject::~UObject(this);
}

{
  *this = &unk_1F0936E68;
  free(this[3]);
  this[3] = 0;

  icu::UObject::~UObject(this);
}

{
  *this = &unk_1F0936E68;
  free(this[3]);
  this[3] = 0;
  icu::UObject::~UObject(this);

  JUMPOUT(0x19A8B2600);
}

void icu::UVector32::assign(icu::UVector32 *this, const icu::UVector32 *a2, UErrorCode *a3)
{
  v5 = *(a2 + 2);
  if (v5 < 0 || *(this + 3) < v5)
  {
    if (!icu::UVector32::expandCapacity(this, v5, a3))
    {
      return;
    }

    v5 = *(a2 + 2);
  }

  icu::UVector32::setSize(this, v5);
  if (*(a2 + 2) >= 1)
  {
    v6 = 0;
    v7 = *(a2 + 3);
    v8 = *(this + 3);
    do
    {
      *(v8 + 4 * v6) = *(v7 + 4 * v6);
      ++v6;
    }

    while (v6 < *(a2 + 2));
  }
}

void icu::UVector32::setSize(icu::UVector32 *this, int a2)
{
  if ((a2 & 0x80000000) == 0)
  {
    v4 = *(this + 2);
    if (v4 < a2)
    {
      v5 = U_ZERO_ERROR;
      if (*(this + 3) < a2)
      {
        if (!icu::UVector32::expandCapacity(this, a2, &v5))
        {
          return;
        }

        v4 = *(this + 2);
      }

      if (v4 < a2)
      {
        bzero((*(this + 3) + 4 * v4), 4 * (~v4 + a2) + 4);
      }
    }

    *(this + 2) = a2;
  }
}

BOOL icu::UVector32::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 != *(a2 + 8))
  {
    return 0;
  }

  if (v2 < 1)
  {
    return 1;
  }

  v3 = *(a1 + 24);
  v4 = *(a2 + 24);
  v5 = v2 - 1;
  do
  {
    v7 = *v3++;
    v6 = v7;
    v9 = *v4++;
    v8 = v9;
    v11 = v5-- != 0;
    result = v6 == v8;
  }

  while (v6 == v8 && v11);
  return result;
}

uint64_t icu::UVector32::setElementAt(uint64_t this, int a2, unsigned int a3)
{
  if ((a3 & 0x80000000) == 0 && *(this + 8) > a3)
  {
    *(*(this + 24) + 4 * a3) = a2;
  }

  return this;
}

_DWORD *icu::UVector32::insertElementAt(_DWORD *this, int a2, unsigned int a3, UErrorCode *a4)
{
  if ((a3 & 0x80000000) == 0)
  {
    v5 = this;
    v6 = this[2];
    if (v6 >= a3)
    {
      if (this[3] <= v6)
      {
        this = icu::UVector32::expandCapacity(this, v6 + 1, a4);
        if (!this)
        {
          return this;
        }

        v6 = v5[2];
      }

      v8 = *(v5 + 3);
      if (v6 > a3)
      {
        v9 = v6;
        v10 = (v8 + 4 * v6);
        v11 = v10;
        do
        {
          v12 = *--v11;
          *v10 = v12;
          --v9;
          v10 = v11;
        }

        while (v9 > a3);
      }

      *(v8 + 4 * a3) = a2;
      ++v5[2];
    }
  }

  return this;
}

uint64_t icu::UVector32::containsAll(icu::UVector32 *this, const icu::UVector32 *a2)
{
  v2 = *(a2 + 2);
  if (v2 < 1)
  {
    return 1;
  }

  v3 = *(this + 2);
  if (v3 < 1)
  {
    return 0;
  }

  v4 = 0;
  v5 = *(this + 3);
  result = 1;
  do
  {
    v7 = v5;
    v8 = v3;
    while (1)
    {
      v9 = *v7++;
      if (v9 == *(*(a2 + 3) + 4 * v4))
      {
        break;
      }

      if (!--v8)
      {
        return 0;
      }
    }

    ++v4;
  }

  while (v4 != v2);
  return result;
}

uint64_t icu::UVector32::indexOf(icu::UVector32 *this, int a2, uint64_t a3)
{
  v3 = *(this + 2);
  if (v3 <= a3)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = (*(this + 3) + 4 * a3);
  while (1)
  {
    v5 = *v4++;
    if (v5 == a2)
    {
      break;
    }

    a3 = (a3 + 1);
    if (v3 == a3)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return a3;
}

BOOL icu::UVector32::containsNone(icu::UVector32 *this, const icu::UVector32 *a2)
{
  v2 = *(a2 + 2);
  if (v2 < 1)
  {
    return 1;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    while (*(this + 2) < 1)
    {
LABEL_7:
      v4 = ++v3 >= v2;
      if (v3 == v2)
      {
        return 1;
      }
    }

    v5 = *(this + 3);
    v6 = *(this + 2);
    while (1)
    {
      v7 = *v5++;
      if (v7 == *(*(a2 + 3) + 4 * v3))
      {
        break;
      }

      if (!--v6)
      {
        goto LABEL_7;
      }
    }
  }

  return v4;
}

uint64_t icu::UVector32::removeAll(icu::UVector32 *this, const icu::UVector32 *a2)
{
  v2 = *(a2 + 2);
  if (v2 < 1)
  {
    return 0;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v5 = *(a2 + 3);
    v6 = *(this + 2);
    do
    {
      v7 = v6;
      if (v6 > 0)
      {
        v8 = 0;
        v9 = 0;
        v10 = *(this + 3);
        v11 = (v10 + 4);
        while (*(v10 + 4 * v9) != *(v5 + 4 * v3))
        {
          ++v9;
          ++v11;
          ++v8;
          if (v6 == v9)
          {
            goto LABEL_11;
          }
        }

        --v6;
        if (v7 - 1 > v9)
        {
          do
          {
            *(v11 - 1) = *v11;
            v6 = *(this + 2) - 1;
            ++v11;
            ++v8;
          }

          while (v6 > v8);
        }

        *(this + 2) = v6;
        v2 = *(a2 + 2);
        v4 = 1;
      }

LABEL_11:
      ++v3;
    }

    while (v3 < v2);
  }

  return v4;
}

uint64_t icu::UVector32::removeElementAt(uint64_t this, int a2)
{
  if ((a2 & 0x80000000) == 0)
  {
    v2 = *(this + 8) - 1;
    if (v2 > a2)
    {
      v3 = (*(this + 24) + 4 * a2 + 4);
      do
      {
        *(v3 - 1) = *v3;
        v2 = *(this + 8) - 1;
        ++v3;
        ++a2;
      }

      while (v2 > a2);
    }

    *(this + 8) = v2;
  }

  return this;
}

uint64_t icu::UVector32::retainAll(icu::UVector32 *this, const icu::UVector32 *a2)
{
  v2 = *(this + 2);
  v3 = 0;
  v4 = v2 - 1;
  if (v2 >= 1)
  {
    v5 = *(this + 3);
    v6 = *(a2 + 3);
    v7 = (v5 + 4 * v2);
    v8 = *(this + 2);
    do
    {
      v9 = *(a2 + 2);
      if (v9 < 1)
      {
LABEL_7:
        v12 = v4;
        v13 = v7;
        if (v8 >= v2)
        {
          LODWORD(v2) = v2 - 1;
        }

        else
        {
          do
          {
            *(v13 - 1) = *v13;
            LODWORD(v2) = *(this + 2) - 1;
            ++v13;
            ++v12;
          }

          while (v2 > v12);
        }

        *(this + 2) = v2;
        v3 = 1;
      }

      else
      {
        v10 = v6;
        while (1)
        {
          v11 = *v10++;
          if (v11 == *(v5 + 4 * (v8 - 1)))
          {
            break;
          }

          if (!--v9)
          {
            goto LABEL_7;
          }
        }
      }

      --v7;
      --v4;
    }

    while (v8-- > 1);
  }

  return v3;
}

uint64_t icu::UVector32::equals(icu::UVector32 *this, const icu::UVector32 *a2)
{
  v2 = *(this + 2);
  if (v2 == *(a2 + 2))
  {
    if (v2 < 1)
    {
      return 1;
    }

    v3 = *(this + 3);
    v4 = *(a2 + 3);
    while (1)
    {
      v6 = *v3++;
      v5 = v6;
      v7 = *v4++;
      if (v5 != v7)
      {
        break;
      }

      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t icu::UVector32::expandCapacity(icu::UVector32 *this, int a2, UErrorCode *a3)
{
  if (*a3 > 0)
  {
    return 0;
  }

  if (a2 < 0)
  {
    goto LABEL_19;
  }

  v6 = *(this + 3);
  if (v6 < a2)
  {
    v7 = *(this + 4);
    if (v7 >= 1 && v7 < a2)
    {
      result = 0;
      v12 = U_BUFFER_OVERFLOW_ERROR;
      goto LABEL_21;
    }

    if (v6 >= 0x40000000)
    {
      goto LABEL_19;
    }

    v9 = 2 * v6;
    if (v9 <= a2)
    {
      v9 = a2;
    }

    v10 = v9 >= v7 ? *(this + 4) : v9;
    v11 = v7 <= 0 ? v9 : v10;
    if (v11 >= 0x20000000)
    {
LABEL_19:
      result = 0;
      v12 = U_ILLEGAL_ARGUMENT_ERROR;
LABEL_21:
      *a3 = v12;
      return result;
    }

    result = malloc_type_realloc(*(this + 3), 4 * v11, 0x100004052888210uLL);
    if (!result)
    {
      v12 = U_MEMORY_ALLOCATION_ERROR;
      goto LABEL_21;
    }

    *(this + 3) = result;
    *(this + 3) = v11;
  }

  return 1;
}

void *icu::UVector32::setMaxCapacity(void *this, int a2)
{
  if (a2 <= 0x1FFFFFFF)
  {
    v2 = this;
    v3 = a2 & ~(a2 >> 31);
    *(this + 4) = v3;
    if (a2 >= 1 && *(this + 3) > v3)
    {
      this = malloc_type_realloc(*(this + 3), 4 * (a2 & ~(a2 >> 31)), 0x100004052888210uLL);
      if (this)
      {
        *(v2 + 24) = this;
        v4 = *(v2 + 16);
        *(v2 + 12) = v4;
        if (*(v2 + 8) > v4)
        {
          *(v2 + 8) = v4;
        }
      }
    }
  }

  return this;
}

uint64_t icu::UVector32::sortedInsert(uint64_t this, int a2, UErrorCode *a3)
{
  v4 = this;
  v5 = *(this + 8);
  if (!v5)
  {
    v7 = 0;
    v9 = 1;
    goto LABEL_10;
  }

  v6 = 0;
  v7 = *(this + 8);
  do
  {
    v8 = (v6 + v7) / 2;
    if (*(*(this + 24) + 4 * v8) <= a2)
    {
      v6 = v8 + 1;
    }

    else
    {
      v7 = (v6 + v7) / 2;
    }
  }

  while (v6 != v7);
  v9 = v5 + 1;
  if (v5 >= -1)
  {
LABEL_10:
    if (*(this + 12) > v5)
    {
      goto LABEL_13;
    }
  }

  this = icu::UVector32::expandCapacity(this, v9, a3);
  if (!this)
  {
    return this;
  }

  v5 = *(v4 + 8);
LABEL_13:
  v10 = *(v4 + 24);
  if (v5 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v11 = v5;
    v12 = v7;
    v13 = (v10 + 4 * v5);
    v14 = v13;
    do
    {
      v15 = *--v14;
      *v13 = v15;
      --v11;
      v13 = v14;
    }

    while (v11 > v7);
  }

  *(v10 + 4 * v12) = a2;
  ++*(v4 + 8);
  return this;
}

icu::UVector64 *icu::UVector64::UVector64(icu::UVector64 *this, UErrorCode *a2)
{
  *this = &unk_1F0936EA8;
  *(this + 1) = 0;
  *(this + 4) = 0;
  *(this + 3) = 0;
  icu::UVector64::_init(this, 8, a2);
  return this;
}

{
  *this = &unk_1F0936EA8;
  *(this + 1) = 0;
  *(this + 4) = 0;
  *(this + 3) = 0;
  icu::UVector64::_init(this, 8, a2);
  return this;
}

void *icu::UVector64::_init(icu::UVector64 *this, int a2, UErrorCode *a3)
{
  if (a2 >= 1)
  {
    v5 = a2;
  }

  else
  {
    v5 = 8;
  }

  v6 = *(this + 4);
  if (v6 >= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = *(this + 4);
  }

  if (v6 <= 0)
  {
    v8 = v5;
  }

  else
  {
    v8 = v7;
  }

  if (v8 >= 0x10000000)
  {
    v8 = uprv_min(8, v6);
  }

  result = malloc_type_malloc(8 * v8, 0x100004000313F17uLL);
  *(this + 3) = result;
  if (result)
  {
    *(this + 3) = v8;
  }

  else
  {
    *a3 = U_MEMORY_ALLOCATION_ERROR;
  }

  return result;
}

icu::UVector64 *icu::UVector64::UVector64(icu::UVector64 *this, int a2, UErrorCode *a3)
{
  *this = &unk_1F0936EA8;
  *(this + 1) = 0;
  *(this + 4) = 0;
  *(this + 3) = 0;
  icu::UVector64::_init(this, a2, a3);
  return this;
}

{
  *this = &unk_1F0936EA8;
  *(this + 1) = 0;
  *(this + 4) = 0;
  *(this + 3) = 0;
  icu::UVector64::_init(this, a2, a3);
  return this;
}

void icu::UVector64::~UVector64(void **this)
{
  *this = &unk_1F0936EA8;
  free(this[3]);
  this[3] = 0;

  icu::UObject::~UObject(this);
}

{
  *this = &unk_1F0936EA8;
  free(this[3]);
  this[3] = 0;

  icu::UObject::~UObject(this);
}

{
  *this = &unk_1F0936EA8;
  free(this[3]);
  this[3] = 0;
  icu::UObject::~UObject(this);

  JUMPOUT(0x19A8B2600);
}

void icu::UVector64::assign(icu::UVector64 *this, const icu::UVector64 *a2, UErrorCode *a3)
{
  v5 = *(a2 + 2);
  if (v5 < 0 || *(this + 3) < v5)
  {
    if (!icu::UVector64::expandCapacity(this, v5, a3))
    {
      return;
    }

    v5 = *(a2 + 2);
  }

  icu::UVector64::setSize(this, v5);
  v6 = *(a2 + 2);
  if (v6 >= 1)
  {
    v7 = *(a2 + 3);
    v8 = *(this + 3);
    do
    {
      v9 = *v7++;
      *v8++ = v9;
      --v6;
    }

    while (v6);
  }
}

void icu::UVector64::setSize(icu::UVector64 *this, int a2)
{
  if ((a2 & 0x80000000) == 0)
  {
    v4 = *(this + 2);
    if (v4 < a2)
    {
      v5 = U_ZERO_ERROR;
      if (*(this + 3) < a2)
      {
        if (!icu::UVector64::expandCapacity(this, a2, &v5))
        {
          return;
        }

        v4 = *(this + 2);
      }

      if (v4 < a2)
      {
        bzero((*(this + 3) + 8 * v4), 8 * (~v4 + a2) + 8);
      }
    }

    *(this + 2) = a2;
  }
}

BOOL icu::UVector64::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 != *(a2 + 8))
  {
    return 0;
  }

  if (v2 < 1)
  {
    return 1;
  }

  v3 = *(a1 + 24);
  v4 = *(a2 + 24);
  v5 = v2 - 1;
  do
  {
    v7 = *v3++;
    v6 = v7;
    v9 = *v4++;
    v8 = v9;
    v11 = v5-- != 0;
    result = v6 == v8;
  }

  while (v6 == v8 && v11);
  return result;
}

uint64_t icu::UVector64::setElementAt(uint64_t this, uint64_t a2, unsigned int a3)
{
  if ((a3 & 0x80000000) == 0 && *(this + 8) > a3)
  {
    *(*(this + 24) + 8 * a3) = a2;
  }

  return this;
}

_DWORD *icu::UVector64::insertElementAt(_DWORD *this, uint64_t a2, unsigned int a3, UErrorCode *a4)
{
  if ((a3 & 0x80000000) == 0)
  {
    v5 = this;
    v6 = this[2];
    if (v6 >= a3)
    {
      if (this[3] <= v6)
      {
        this = icu::UVector64::expandCapacity(this, v6 + 1, a4);
        if (!this)
        {
          return this;
        }

        v6 = v5[2];
      }

      v8 = *(v5 + 3);
      if (v6 > a3)
      {
        v9 = v6;
        v10 = (v8 + 8 * v6);
        v11 = v10;
        do
        {
          v12 = *--v11;
          *v10 = v12;
          --v9;
          v10 = v11;
        }

        while (v9 > a3);
      }

      *(v8 + 8 * a3) = a2;
      v5[2] = v6 + 1;
    }
  }

  return this;
}

uint64_t icu::UVector64::expandCapacity(icu::UVector64 *this, int a2, UErrorCode *a3)
{
  if (*a3 > 0)
  {
    return 0;
  }

  if (a2 < 0)
  {
    goto LABEL_19;
  }

  v6 = *(this + 3);
  if (v6 < a2)
  {
    v7 = *(this + 4);
    if (v7 >= 1 && v7 < a2)
    {
      result = 0;
      v12 = U_BUFFER_OVERFLOW_ERROR;
      goto LABEL_21;
    }

    if (v6 >= 0x40000000)
    {
      goto LABEL_19;
    }

    v9 = 2 * v6;
    if (v9 <= a2)
    {
      v9 = a2;
    }

    v10 = v9 >= v7 ? *(this + 4) : v9;
    v11 = v7 <= 0 ? v9 : v10;
    if (v11 >= 0x10000000)
    {
LABEL_19:
      result = 0;
      v12 = U_ILLEGAL_ARGUMENT_ERROR;
LABEL_21:
      *a3 = v12;
      return result;
    }

    result = malloc_type_realloc(*(this + 3), 8 * v11, 0x100004000313F17uLL);
    if (!result)
    {
      v12 = U_MEMORY_ALLOCATION_ERROR;
      goto LABEL_21;
    }

    *(this + 3) = result;
    *(this + 3) = v11;
  }

  return 1;
}

void *icu::UVector64::setMaxCapacity(void *this, int a2)
{
  if (a2 <= 0xFFFFFFF)
  {
    v2 = this;
    v3 = a2 & ~(a2 >> 31);
    *(this + 4) = v3;
    if (a2 >= 1 && *(this + 3) > v3)
    {
      this = malloc_type_realloc(*(this + 3), 8 * (a2 & ~(a2 >> 31)), 0x100004000313F17uLL);
      if (this)
      {
        *(v2 + 24) = this;
        v4 = *(v2 + 16);
        *(v2 + 12) = v4;
        if (*(v2 + 8) > v4)
        {
          *(v2 + 8) = v4;
        }
      }
    }
  }

  return this;
}

void sub_1952B05C4(icu::UObject *a1)
{
  *a1 = &unk_1F0936EE8;
  v2 = *(a1 + 1);
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v3 = *(a1 + 1);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 2);
  if (v4)
  {
    v5 = v4 == v3;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    (*(*v4 + 8))(v4);
  }

  icu::UObject::~UObject(a1);
}

void sub_1952B0684(icu::UObject *a1)
{
  sub_1952B05C4(a1);

  JUMPOUT(0x19A8B2600);
}

void icu::AlphabeticIndex::ImmutableIndex::~ImmutableIndex(icu::AlphabeticIndex::ImmutableIndex *this)
{
  *this = &unk_1F0936F10;
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  icu::UObject::~UObject(this);
}

{
  icu::AlphabeticIndex::ImmutableIndex::~ImmutableIndex(this);

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_1952B07C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 8);
  v6 = *(v5 + 2);
  if (v6 < 2)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0;
    do
    {
      v11 = icu::UVector::elementAt(*(a1 + 8), (v10 + v6) >> 1);
      if ((*(*a3 + 56))(a3, a2, v11 + 72, a4) >= 0)
      {
        v10 = (v10 + v6) >> 1;
      }

      else
      {
        v6 = (v10 + v6) >> 1;
      }
    }

    while ((v10 + 1) < v6);
    v5 = *(a1 + 8);
  }

  v12 = icu::UVector::elementAt(v5, v10);
  v13 = *(v12 + 144);
  if (!v13)
  {
    v13 = v12;
  }

  return *(v13 + 152);
}

uint64_t icu::AlphabeticIndex::ImmutableIndex::getBucket(icu::AlphabeticIndex::ImmutableIndex *this, signed int a2)
{
  if (a2 < 0)
  {
    return 0;
  }

  v2 = *(*(this + 1) + 16);
  if (*(v2 + 2) <= a2)
  {
    return 0;
  }

  else
  {
    return icu::UVector::elementAt(v2, a2);
  }
}

icu::AlphabeticIndex *icu::AlphabeticIndex::AlphabeticIndex(icu::AlphabeticIndex *this, const icu::Locale *a2, UErrorCode *a3)
{
  *this = &unk_1F0936F38;
  *(this + 1) = 0;
  *(this + 2) = 0xFFFFFFFFLL;
  *(this + 3) = 0;
  *(this + 8) = 99;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
  *(this + 10) = &unk_1F0935D00;
  *(this + 44) = 2;
  *(this + 18) = &unk_1F0935D00;
  *(this + 76) = 2;
  *(this + 26) = &unk_1F0935D00;
  *(this + 108) = 2;
  *(this + 34) = &unk_1F0935D00;
  *(this + 140) = 2;
  *(this + 42) = &unk_1F0935D00;
  *(this + 172) = 2;
  icu::AlphabeticIndex::init(this, a2, a3);
  return this;
}

uint64_t icu::AlphabeticIndex::init(uint64_t this, const icu::Locale *a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    if (a2 || *(this + 56))
    {
      operator new();
    }

    *a3 = U_ILLEGAL_ARGUMENT_ERROR;
  }

  return this;
}

icu::AlphabeticIndex *icu::AlphabeticIndex::AlphabeticIndex(icu::AlphabeticIndex *this, icu::RuleBasedCollator *a2, UErrorCode *a3)
{
  *this = &unk_1F0936F38;
  *(this + 1) = 0;
  *(this + 2) = 0xFFFFFFFFLL;
  *(this + 3) = 0;
  *(this + 8) = 99;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 7) = a2;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 10) = &unk_1F0935D00;
  *(this + 44) = 2;
  *(this + 18) = &unk_1F0935D00;
  *(this + 76) = 2;
  *(this + 26) = &unk_1F0935D00;
  *(this + 108) = 2;
  *(this + 34) = &unk_1F0935D00;
  *(this + 140) = 2;
  *(this + 42) = &unk_1F0935D00;
  *(this + 172) = 2;
  icu::AlphabeticIndex::init(this, 0, a3);
  return this;
}

void icu::AlphabeticIndex::~AlphabeticIndex(icu::AlphabeticIndex *this)
{
  *this = &unk_1F0936F38;
  v2 = *(this + 7);
  if (v2)
  {
    icu::RuleBasedCollator::~RuleBasedCollator(v2);
    MEMORY[0x19A8B2600]();
  }

  v3 = *(this + 8);
  if (v3)
  {
    icu::RuleBasedCollator::~RuleBasedCollator(v3);
    MEMORY[0x19A8B2600]();
  }

  v4 = *(this + 6);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 9);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 1);
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 5);
  if (v7)
  {
    icu::UnicodeSet::~UnicodeSet(v7);
    MEMORY[0x19A8B2600]();
  }

  icu::UnicodeString::~UnicodeString((this + 336));
  icu::UnicodeString::~UnicodeString((this + 272));
  icu::UnicodeString::~UnicodeString((this + 208));
  icu::UnicodeString::~UnicodeString((this + 144));
  icu::UnicodeString::~UnicodeString((this + 80));

  icu::UObject::~UObject(this);
}

{
  icu::AlphabeticIndex::~AlphabeticIndex(this);

  JUMPOUT(0x19A8B2600);
}

icu::UVector ***icu::AlphabeticIndex::addLabels(icu::UVector ***this, const icu::UnicodeSet *a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    icu::UnicodeSet::addAll(this[5], a2);
    v4 = this[9];
    if (v4)
    {
      (*(*v4 + 1))(v4);
      this[9] = 0;
      *(this + 4) = -1;
      this[3] = 0;
    }
  }

  return this;
}

uint64_t icu::AlphabeticIndex::clearBuckets(icu::AlphabeticIndex *this)
{
  result = *(this + 9);
  if (result)
  {
    result = (*(*result + 8))(result);
    *(this + 9) = 0;
    *(this + 4) = -1;
    *(this + 3) = 0;
  }

  return result;
}

icu::UVector ***icu::AlphabeticIndex::addLabels(icu::UVector ***this, char **a2, UErrorCode *a3)
{
  icu::AlphabeticIndex::addIndexExemplars(this, a2, a3);
  v4 = this[9];
  if (v4)
  {
    (*(*v4 + 1))(v4);
    this[9] = 0;
    *(this + 4) = -1;
    this[3] = 0;
  }

  return this;
}

void icu::AlphabeticIndex::addIndexExemplars(icu::UVector ***this, char **a2, UErrorCode *a3)
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = ulocdata_open(a2[5], a3);
  if (*a3 <= 0)
  {
    v40 = 0;
    memset(v39, 0, sizeof(v39));
    icu::UnicodeSet::UnicodeSet(v39);
    ulocdata_getExemplarSet(v6, v39, 0, 2, a3);
    if (*a3 <= 0)
    {
      icu::UnicodeSet::addAll(this[5], v39);
    }

    else
    {
      *a3 = U_ZERO_ERROR;
      ulocdata_getExemplarSet(v6, v39, 0, 0, a3);
      if (*a3 <= 0)
      {
        if (!icu::UnicodeSet::containsNone(v39, 97, 122) || icu::UnicodeSet::isEmpty(v39))
        {
          icu::UnicodeSet::add(v39, 0x61u, 0x7Au);
        }

        if (!icu::UnicodeSet::containsNone(v39, 44032, 55203))
        {
          v7 = icu::UnicodeSet::remove(v39, 0xAC00u, 0xD7A3u);
          v8 = icu::UnicodeSet::add(v7, 0xAC00u);
          v9 = icu::UnicodeSet::add(v8, 0xB098u);
          v10 = icu::UnicodeSet::add(v9, 0xB2E4u);
          v11 = icu::UnicodeSet::add(v10, 0xB77Cu);
          v12 = icu::UnicodeSet::add(v11, 0xB9C8u);
          v13 = icu::UnicodeSet::add(v12, 0xBC14u);
          v14 = icu::UnicodeSet::add(v13, 0xC0ACu);
          v15 = icu::UnicodeSet::add(v14, 0xC544u);
          v16 = icu::UnicodeSet::add(v15, 0xC790u);
          v17 = icu::UnicodeSet::add(v16, 0xCC28u);
          v18 = icu::UnicodeSet::add(v17, 0xCE74u);
          v19 = icu::UnicodeSet::add(v18, 0xD0C0u);
          v20 = icu::UnicodeSet::add(v19, 0xD30Cu);
          icu::UnicodeSet::add(v20, 0xD558u);
        }

        if (!icu::UnicodeSet::containsNone(v39, 4608, 4991))
        {
          v38 = 0;
          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          v30 = 0u;
          v31 = 0u;
          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          sub_1951D6EE0(&v41, "[");
          icu::UnicodeSet::UnicodeSet(&v26, &v41, a3);
          icu::UnicodeString::~UnicodeString(v21, &v41);
          icu::UnicodeSet::retainAll(&v26, v39);
          v22 = icu::UnicodeSet::remove(v39, 0x1200u, 0x137Fu);
          icu::UnicodeSet::addAll(v22, &v26);
          icu::UnicodeSet::~UnicodeSet(&v26);
        }

        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        icu::UnicodeSetIterator::UnicodeSetIterator(&v26, v39);
        v42 = 0u;
        v45 = 0;
        v44 = 0u;
        v43 = 0u;
        v41 = &unk_1F0935D00;
        LOWORD(v42) = 2;
        while (icu::UnicodeSetIterator::next(&v26))
        {
          String = icu::UnicodeSetIterator::getString(&v26);
          icu::UnicodeString::operator=(&v41, String);
          icu::UnicodeString::toUpper(&v41, a2);
          icu::UnicodeSet::add(this[5], &v41);
        }

        icu::UnicodeString::~UnicodeString(v23, &v41);
        icu::UnicodeSetIterator::~UnicodeSetIterator(&v26);
      }
    }

    icu::UnicodeSet::~UnicodeSet(v39);
  }

  if (v6)
  {
    ulocdata_close(v6);
  }

  v25 = *MEMORY[0x1E69E9840];
}

uint64_t icu::AlphabeticIndex::buildImmutableIndex(icu::UVector **this, UErrorCode *a2)
{
  if (*a2 <= 0)
  {
    icu::AlphabeticIndex::createBucketList(this, a2);
    icu::RuleBasedCollator::clone(this[8]);
  }

  return 0;
}

uint64_t icu::AlphabeticIndex::createBucketList(icu::UVector **this, UErrorCode *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  icu::UVector::UVector(v7, a2);
  icu::UVector::setDeleter(v7, uprv_deleteUObject);
  icu::AlphabeticIndex::initLabels(this, v7, a2);
  if (*a2 <= 0)
  {
    memset(v6, 0, sizeof(v6));
    icu::UVector64::UVector64(v6, a2);
    if (icu::RuleBasedCollator::getAttribute(this[8], 1, a2) == 20)
    {
      icu::RuleBasedCollator::getVariableTop(this[8], a2);
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    operator new();
  }

  icu::UVector::~UVector(v7);
  v4 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t icu::AlphabeticIndex::getBucketCount(icu::AlphabeticIndex *this, UErrorCode *a2)
{
  icu::AlphabeticIndex::initBuckets(this, a2);
  if (*a2 <= 0)
  {
    return *(*(*(this + 9) + 16) + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t icu::AlphabeticIndex::initBuckets(uint64_t this, UErrorCode *a2)
{
  if (*a2 <= 0)
  {
    v2 = this;
    if (!*(this + 72))
    {
      this = icu::AlphabeticIndex::createBucketList(this, a2);
      *(v2 + 72) = this;
      if (*a2 <= 0)
      {
        this = *(v2 + 8);
        if (this)
        {
          if (*(this + 8))
          {
            icu::UVector::sortWithUComparator(this, sub_1952B2BF8, *(v2 + 56), a2);
            v4 = icu::UVector::elementAt(*(*(v2 + 72) + 8), 0);
            v5 = *(*(v2 + 72) + 8);
            if (v5[2] <= 1)
            {
              v6 = 0;
              v7 = 0;
              v8 = 1;
            }

            else
            {
              v6 = icu::UVector::elementAt(v5, 1u);
              v7 = (v6 + 72);
              v8 = 2;
            }

            this = *(v2 + 8);
            if (*(this + 8) >= 1)
            {
              v9 = 0;
              do
              {
                v10 = icu::UVector::elementAt(this, v9);
                if (v7 && (icu::RuleBasedCollator::compare(*(v2 + 64), (v10 + 8), v7, a2) & 0x80000000) == 0)
                {
                  while (1)
                  {
                    v4 = v6;
                    v11 = *(*(v2 + 72) + 8);
                    if (v8 >= *(v11 + 2))
                    {
                      break;
                    }

                    v12 = v8 + 1;
                    v6 = icu::UVector::elementAt(v11, v8);
                    v7 = (v6 + 72);
                    ++v8;
                    if ((icu::RuleBasedCollator::compare(*(v2 + 64), (v10 + 8), (v6 + 72), a2) & 0x80000000) != 0)
                    {
                      v8 = v12;
                      goto LABEL_18;
                    }
                  }

                  v7 = 0;
                }

LABEL_18:
                if (*(v4 + 144))
                {
                  v13 = *(v4 + 144);
                }

                else
                {
                  v13 = v4;
                }

                v14 = *(v13 + 160);
                if (!v14)
                {
                  operator new();
                }

                icu::UVector::addElement(v14, v10, a2);
                ++v9;
                this = *(v2 + 8);
              }

              while (v9 < *(this + 8));
            }
          }
        }
      }
    }
  }

  return this;
}

uint64_t icu::AlphabeticIndex::getRecordCount(icu::AlphabeticIndex *this, UErrorCode *a2)
{
  if (*a2 <= 0 && (v3 = *(this + 1)) != 0)
  {
    return *(v3 + 8);
  }

  else
  {
    return 0;
  }
}

void icu::AlphabeticIndex::initLabels(icu::UVector **this, UErrorCode *a2, UErrorCode *a3)
{
  v70 = *MEMORY[0x1E69E9840];
  NFKDInstance = icu::Normalizer2::getNFKDInstance(a3, a2);
  if (*a3 <= 0)
  {
    v7 = NFKDInstance;
    v8 = icu::UVector::elementAt(this[6], 0);
    v9 = icu::UVector::elementAt(this[6], *(this[6] + 2) - 1);
    memset(v58, 0, sizeof(v58));
    icu::UnicodeSetIterator::UnicodeSetIterator(v58, this[5]);
    if (*a3 > 0)
    {
      goto LABEL_84;
    }

    v56 = v9;
    while (1)
    {
      if (!icu::UnicodeSetIterator::next(v58))
      {
        if (*a3 <= 0)
        {
          v49 = *(a2 + 2);
          v50 = v49 - 1;
          if (v49 - 1 > *(this + 8) && v49 >= 1)
          {
            v52 = 0;
            v53 = -1;
            v54 = 1;
            do
            {
              if (*(this + 8) * v54 / v50 == v53)
              {
                icu::UVector::removeElementAt(a2, v52);
                v49 = *(a2 + 2);
              }

              else
              {
                ++v52;
                v53 = *(this + 8) * v54 / v50;
              }

              ++v54;
            }

            while (v52 < v49);
          }
        }

        goto LABEL_84;
      }

      String = icu::UnicodeSetIterator::getString(v58);
      v11 = String;
      v57 = 0;
      v12 = *(String + 8);
      v13 = v12;
      v14 = v12 >> 5;
      if (v13 >= 0)
      {
        v15 = v14;
      }

      else
      {
        v15 = *(String + 12);
      }

      v16 = 1;
      if (icu::UnicodeString::hasMoreChar32Than(String, 0, v15, 1))
      {
        v17 = v15;
        v18 = v15 - 1;
        v19 = *(v11 + 8);
        if ((v19 & 0x8000u) == 0)
        {
          v20 = v19 >> 5;
        }

        else
        {
          v20 = *(v11 + 12);
        }

        if (v20 > v18)
        {
          v21 = (v19 & 2) != 0 ? v11 + 10 : *(v11 + 24);
          if (*(v21 + 2 * v18) == 42)
          {
            v22 = v17 - 2;
            if (v20 <= v22 || *(v21 + 2 * v22) != 42)
            {
              operator new();
            }
          }
        }

        v16 = 0;
      }

      if ((icu::RuleBasedCollator::compare(this[8], v11, v8, a3) & 0x80000000) != 0)
      {
        goto LABEL_70;
      }

      if ((icu::RuleBasedCollator::compare(this[8], v11, v9, a3) & 0x80000000) == 0)
      {
        goto LABEL_70;
      }

      if ((v16 & 1) == 0)
      {
        v23 = this[8];
        icu::AlphabeticIndex::separated(v11, &v65);
        LODWORD(v23) = icu::RuleBasedCollator::compare(v23, v11, &v65, a3);
        icu::UnicodeString::~UnicodeString(v24, &v65);
        if (!v23)
        {
          goto LABEL_70;
        }
      }

      v25 = *(a2 + 2);
      if (!v25)
      {
        LODWORD(v28) = -1;
LABEL_52:
        v40 = sub_1952B2A58(v11, &v57, a3);
        icu::UVector::insertElementAt(a2, v40, ~v28, a3);
        goto LABEL_70;
      }

      v26 = 0;
      v27 = this[8];
      while (1)
      {
        v28 = ((v26 + v25) / 2);
        v29 = icu::UVector::elementAt(a2, (v26 + v25) / 2);
        LODWORD(v65) = 0;
        v30 = (*(*v27 + 56))(v27, v11, v29, &v65);
        if (!v30)
        {
          goto LABEL_35;
        }

        if ((v30 & 0x80000000) == 0)
        {
          break;
        }

        if (v28 == v26)
        {
          LODWORD(v28) = ~v26;
          if (~v26 < 0)
          {
            goto LABEL_51;
          }

          goto LABEL_36;
        }

        v25 = (v26 + v25) / 2;
        v28 = v26;
LABEL_32:
        v26 = v28;
      }

      if (v28 != v26)
      {
        goto LABEL_32;
      }

      LODWORD(v28) = -2 - v26;
LABEL_35:
      if ((v28 & 0x80000000) != 0)
      {
LABEL_51:
        v9 = v56;
        goto LABEL_52;
      }

LABEL_36:
      v31 = icu::UVector::elementAt(a2, v28);
      v59 = 0;
      v69 = 0;
      v68 = 0u;
      v67 = 0u;
      v66 = 0u;
      v65 = &unk_1F0935D00;
      LOWORD(v66) = 2;
      (*(*v7 + 24))(v7, v11, &v65, &v59);
      v64 = 0;
      v63 = 0u;
      v62 = 0u;
      v61 = 0u;
      v60 = &unk_1F0935D00;
      LOWORD(v61) = 2;
      (*(*v7 + 24))(v7, v31, &v60, &v59);
      v32 = v59;
      if (v59 <= 0)
      {
        v34 = icu::UnicodeString::countChar32(&v65, 0, 0x7FFFFFFF);
        v35 = icu::UnicodeString::countChar32(&v60, 0, 0x7FFFFFFF);
        if (v34 == v35)
        {
          if (v61)
          {
            v32 = 1;
            v39 = (v66 & 1) == 0;
          }

          else
          {
            if ((v66 & 0x8000u) == 0)
            {
              v36 = v66 >> 5;
            }

            else
            {
              v36 = DWORD1(v66);
            }

            if ((v61 & 0x8000u) == 0)
            {
              v37 = v61 >> 5;
            }

            else
            {
              v37 = DWORD1(v61);
            }

            if ((v61 & 2) != 0)
            {
              v38 = &v61 + 2;
            }

            else
            {
              v38 = v62;
            }

            v39 = icu::UnicodeString::doCompareCodePointOrder(&v65, 0, v36, v38, v37 & (v37 >> 31), v37 & ~(v37 >> 31));
          }

          if (!v39)
          {
            v32 = *(v31 + 8);
            if (v32)
            {
              goto LABEL_37;
            }

            v41 = *(v11 + 8);
            v42 = v41;
            v43 = v41 >> 5;
            if (v42 >= 0)
            {
              v44 = v43;
            }

            else
            {
              v44 = *(v11 + 12);
            }

            if ((v32 & 0x8000u) == 0)
            {
              v45 = v32 >> 5;
            }

            else
            {
              v45 = *(v31 + 12);
            }

            if ((v32 & 2) != 0)
            {
              v46 = v31 + 10;
            }

            else
            {
              v46 = *(v31 + 24);
            }

            v39 = icu::UnicodeString::doCompareCodePointOrder(v11, 0, v44, v46, v45 & (v45 >> 31), v45 & ~(v45 >> 31));
          }

          v33 = (v39 >> 7) & 1;
        }

        else
        {
          v33 = v34 < v35;
        }
      }

      else
      {
LABEL_37:
        v33 = 0;
      }

      icu::UnicodeString::~UnicodeString(v32, &v60);
      icu::UnicodeString::~UnicodeString(v47, &v65);
      v9 = v56;
      if (v33)
      {
        v48 = sub_1952B2A58(v11, &v57, a3);
        icu::UVector::setElementAt(a2, v48, v28);
      }

LABEL_70:
      if (v57)
      {
        (*(*v57 + 8))(v57);
      }

      if (*a3 > 0)
      {
LABEL_84:
        icu::UnicodeSetIterator::~UnicodeSetIterator(v58);
        break;
      }
    }
  }

  v55 = *MEMORY[0x1E69E9840];
}

uint64_t icu::AlphabeticIndex::separated@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v3 = a2;
  *(a2 + 8) = 0u;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0u;
  *(a2 + 24) = 0u;
  *a2 = &unk_1F0935D00;
  *(a2 + 8) = 2;
  v4 = *(this + 8);
  v5 = v4;
  LODWORD(a2) = v4 >> 5;
  if (v5 >= 0)
  {
    a2 = a2;
  }

  else
  {
    a2 = *(this + 12);
  }

  if (a2)
  {
    v6 = this;
    v7 = 0;
    while (1)
    {
      v8 = icu::UnicodeString::char32At(a2, v6, v7);
      icu::UnicodeString::append(v3, v8);
      this = icu::UnicodeString::moveIndex32(v6, v7, 1);
      v9 = *(v6 + 8);
      v10 = v9;
      v11 = v9 >> 5;
      if (v10 < 0)
      {
        v11 = *(v6 + 12);
      }

      if (this >= v11)
      {
        break;
      }

      v7 = this;
      v12 = 847;
      icu::UnicodeString::doAppend(v3, &v12, 0, 1);
    }
  }

  return this;
}

uint64_t sub_1952B2A58(uint64_t a1, uint64_t *a2, int *a3)
{
  if (*a3 > 0)
  {
    return 0;
  }

  result = *a2;
  if (!*a2)
  {
    operator new();
  }

  *a2 = 0;
  return result;
}

uint64_t icu::AlphabeticIndex::Bucket::Bucket(uint64_t a1, UChar **a2, UChar **a3, int a4)
{
  *a1 = &unk_1F0937040;
  icu::UnicodeString::UnicodeString((a1 + 8), a2);
  icu::UnicodeString::UnicodeString((a1 + 72), a3);
  *(a1 + 136) = a4;
  *(a1 + 144) = 0;
  *(a1 + 152) = -1;
  *(a1 + 160) = 0;
  return a1;
}

{
  *a1 = &unk_1F0937040;
  icu::UnicodeString::UnicodeString((a1 + 8), a2);
  icu::UnicodeString::UnicodeString((a1 + 72), a3);
  *(a1 + 136) = a4;
  *(a1 + 144) = 0;
  *(a1 + 152) = -1;
  *(a1 + 160) = 0;
  return a1;
}

BOOL sub_1952B2B34(icu::RuleBasedCollator *a1, unsigned int a2, const icu::UnicodeString *a3, icu::UVector64 *this, UErrorCode *a5)
{
  icu::UVector64::removeAllElements(this);
  icu::RuleBasedCollator::internalGetCEs(a1, a3, this, a5);
  if (*a5 > 0)
  {
    return 0;
  }

  v11 = *(this + 2);
  if (v11 < 1)
  {
    return 0;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v14 = 1;
    do
    {
      if (*(*(this + 3) + 8 * v12 + 4) > a2)
      {
        if (v13)
        {
          return v14;
        }

        v13 = 1;
      }

      v14 = ++v12 < v11;
    }

    while (v11 != v12);
  }

  return v14;
}

uint64_t sub_1952B2BF8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *a3;
  v6 = 0;
  return (*(*a1 + 56))(a1, v3 + 8, v4 + 8, &v6);
}

uint64_t icu::AlphabeticIndex::internalResetBucketIterator(uint64_t this)
{
  *(this + 16) = -1;
  *(this + 24) = 0;
  return this;
}

uint64_t icu::AlphabeticIndex::addChineseIndexCharacters(icu::AlphabeticIndex *this, UErrorCode *a2)
{
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  icu::UnicodeSet::UnicodeSet(v11);
  icu::RuleBasedCollator::internalAddContractions(*(this + 8), 64976, v11, a2);
  if (*a2 > 0 || icu::UnicodeSet::isEmpty(v11))
  {
    v4 = 0;
  }

  else
  {
    icu::UnicodeSet::addAll(*(this + 5), v11);
    memset(v10, 0, sizeof(v10));
    icu::UnicodeSetIterator::UnicodeSetIterator(v10, v11);
    while (icu::UnicodeSetIterator::next(v10))
    {
      String = icu::UnicodeSetIterator::getString(v10);
      v7 = *(String + 8);
      if ((v7 & 0x8000u) == 0)
      {
        v8 = v7 >> 5;
      }

      else
      {
        v8 = *(String + 12);
      }

      if (v8)
      {
        v9 = (v7 & 2) != 0 ? String + 10 : *(String + 24);
        if (*(v9 + 2 * v8 - 2) - 65 <= 0x19)
        {
          icu::UnicodeSet::add(*(this + 5), 0x41u, 0x5Au);
          break;
        }
      }
    }

    icu::UnicodeSetIterator::~UnicodeSetIterator(v10);
    v4 = 1;
  }

  icu::UnicodeSet::~UnicodeSet(v11);
  return v4;
}

UChar **icu::AlphabeticIndex::setInflowLabel(UChar **this, UChar **a2, UErrorCode *a3)
{
  icu::UnicodeString::operator=(this + 10, a2);
  v4 = this[9];
  if (v4)
  {
    (*(*v4 + 8))(v4);
    this[9] = 0;
    *(this + 4) = -1;
    this[3] = 0;
  }

  return this;
}

UChar **icu::AlphabeticIndex::setOverflowLabel(UChar **this, UChar **a2, UErrorCode *a3)
{
  icu::UnicodeString::operator=(this + 18, a2);
  v4 = this[9];
  if (v4)
  {
    (*(*v4 + 8))(v4);
    this[9] = 0;
    *(this + 4) = -1;
    this[3] = 0;
  }

  return this;
}

UChar **icu::AlphabeticIndex::setUnderflowLabel(UChar **this, UChar **a2, UErrorCode *a3)
{
  icu::UnicodeString::operator=(this + 26, a2);
  v4 = this[9];
  if (v4)
  {
    (*(*v4 + 8))(v4);
    this[9] = 0;
    *(this + 4) = -1;
    this[3] = 0;
  }

  return this;
}

icu::AlphabeticIndex *icu::AlphabeticIndex::setMaxLabelCount(icu::AlphabeticIndex *this, int a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    if (a2 <= 0)
    {
      *a3 = U_ILLEGAL_ARGUMENT_ERROR;
    }

    else
    {
      *(this + 8) = a2;
      v5 = *(this + 9);
      if (v5)
      {
        (*(*v5 + 8))(v5);
        *(this + 9) = 0;
        *(this + 4) = -1;
        *(this + 3) = 0;
      }
    }
  }

  return this;
}

uint64_t icu::AlphabeticIndex::firstStringsInScript(icu::AlphabeticIndex *this, UErrorCode *a2)
{
  if (*a2 <= 0)
  {
    operator new();
  }

  return 0;
}

uint64_t sub_1952B3178(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a2;
  v6 = *a3;
  if (v5 == v6)
  {
    return 0;
  }

  if (!v5)
  {
    return 1;
  }

  if (!v6)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = v3;
  v10 = v4;
  v8 = 0;
  return (*(*a1 + 56))(a1);
}

icu::AlphabeticIndex::Record *icu::AlphabeticIndex::Record::Record(icu::AlphabeticIndex::Record *this, UChar **a2, const void *a3)
{
  icu::UnicodeString::UnicodeString((this + 8), a2);
  *(this + 9) = a3;
  return this;
}

{
  icu::UnicodeString::UnicodeString((this + 8), a2);
  *(this + 9) = a3;
  return this;
}

void icu::AlphabeticIndex::Record::~Record(icu::AlphabeticIndex::Record *this)
{
  icu::UnicodeString::~UnicodeString((this + 8));
}

{
  icu::UnicodeString::~UnicodeString((this + 8));
}

uint64_t icu::AlphabeticIndex::addRecord(uint64_t this, const icu::UnicodeString *a2, const void *a3, UErrorCode *a4)
{
  if (*a4 <= 0)
  {
    if (*(this + 8))
    {
      operator new();
    }

    operator new();
  }

  return this;
}

uint64_t sub_1952B3410(uint64_t result)
{
  if (result)
  {
    icu::UnicodeString::~UnicodeString((result + 8));

    JUMPOUT(0x19A8B2600);
  }

  return result;
}

icu::AlphabeticIndex *icu::AlphabeticIndex::clearRecords(icu::AlphabeticIndex *this, UErrorCode *a2)
{
  if (*a2 <= 0)
  {
    v4 = *(this + 1);
    if (v4)
    {
      if (*(v4 + 8))
      {
        icu::UVector::removeAllElements(v4);
        v5 = *(this + 9);
        if (v5)
        {
          (*(*v5 + 8))(v5);
          *(this + 9) = 0;
          *(this + 4) = -1;
          *(this + 3) = 0;
        }
      }
    }
  }

  return this;
}

uint64_t icu::AlphabeticIndex::getBucketIndex(icu::AlphabeticIndex *this, const icu::UnicodeString *a2, UErrorCode *a3)
{
  icu::AlphabeticIndex::initBuckets(this, a3);
  if (*a3 > 0)
  {
    return 0;
  }

  v8 = *(this + 8);
  v7 = *(this + 9);

  return sub_1952B07C0(v7, a2, v8, a3);
}

uint64_t icu::AlphabeticIndex::nextBucket(icu::AlphabeticIndex *this, UErrorCode *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  if (*(this + 9) || !*(this + 3))
  {
    icu::AlphabeticIndex::initBuckets(this, a2);
    if (*a2 <= 0)
    {
      v5 = *(this + 4) + 1;
      *(this + 4) = v5;
      v6 = *(*(this + 9) + 16);
      v7 = *(v6 + 2);
      if (v5 >= v7)
      {
        result = 0;
        *(this + 4) = v7;
      }

      else
      {
        *(this + 3) = icu::UVector::elementAt(v6, v5);
        (*(*this + 224))(this);
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    *a2 = U_ENUM_OUT_OF_SYNC_ERROR;
  }

  return result;
}

uint64_t icu::AlphabeticIndex::getBucketLabel(icu::AlphabeticIndex *this)
{
  v1 = *(this + 3);
  if (v1)
  {
    return v1 + 8;
  }

  else
  {
    return this + 336;
  }
}

uint64_t icu::AlphabeticIndex::getBucketLabelType(icu::AlphabeticIndex *this)
{
  v1 = *(this + 3);
  if (v1)
  {
    return *(v1 + 136);
  }

  else
  {
    return 0;
  }
}

uint64_t icu::AlphabeticIndex::getBucketRecordCount(icu::AlphabeticIndex *this)
{
  v1 = *(this + 3);
  if (v1 && (v2 = *(v1 + 160)) != 0)
  {
    return *(v2 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t icu::AlphabeticIndex::resetBucketIterator(uint64_t this, UErrorCode *a2)
{
  if (*a2 <= 0)
  {
    *(this + 16) = -1;
    *(this + 24) = 0;
  }

  return this;
}

BOOL icu::AlphabeticIndex::nextRecord(icu::AlphabeticIndex *this, UErrorCode *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  v4 = *(this + 3);
  if (!v4)
  {
    result = 0;
    v8 = U_INVALID_STATE_ERROR;
LABEL_11:
    *a2 = v8;
    return result;
  }

  if (!*(this + 9))
  {
    result = 0;
    v8 = U_ENUM_OUT_OF_SYNC_ERROR;
    goto LABEL_11;
  }

  v5 = *(v4 + 160);
  if (!v5)
  {
    return 0;
  }

  v6 = *(this + 5);
  v7 = *(v5 + 8);
  result = v6 + 1 < v7;
  if (v6 + 1 < v7)
  {
    v7 = v6 + 1;
  }

  *(this + 5) = v7;
  return result;
}

uint64_t icu::AlphabeticIndex::getRecordName(icu::AlphabeticIndex *this)
{
  result = this + 336;
  v3 = *(this + 3);
  if (v3)
  {
    v4 = *(v3 + 160);
    if (v4)
    {
      v5 = *(this + 5);
      if ((v5 & 0x80000000) == 0 && v5 < *(v4 + 2))
      {
        return icu::UVector::elementAt(v4, v5) + 8;
      }
    }
  }

  return result;
}

icu::UVector *icu::AlphabeticIndex::getRecordData(icu::AlphabeticIndex *this)
{
  v1 = *(this + 3);
  if (!v1)
  {
    return 0;
  }

  result = *(v1 + 160);
  if (!result)
  {
    return result;
  }

  v4 = *(this + 5);
  if (v4 < 0 || v4 >= *(result + 2))
  {
    return 0;
  }

  return *(icu::UVector::elementAt(result, v4) + 72);
}

void icu::AlphabeticIndex::Bucket::~Bucket(icu::AlphabeticIndex::Bucket *this)
{
  *this = &unk_1F0937040;
  v2 = *(this + 20);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  icu::UnicodeString::~UnicodeString((this + 72));
  icu::UnicodeString::~UnicodeString((this + 8));

  icu::UObject::~UObject(this);
}

{
  icu::AlphabeticIndex::Bucket::~Bucket(this);

  JUMPOUT(0x19A8B2600);
}

void *sub_1952B3904(void *a1, uint64_t a2, icu::UVector *this)
{
  *a1 = &unk_1F0936EE8;
  a1[1] = a2;
  a1[2] = this;
  if (*(this + 2) >= 1)
  {
    v5 = 0;
    do
    {
      *(icu::UVector::elementAt(this, v5) + 152) = v5;
      ++v5;
    }

    while (v5 < *(this + 2));
  }

  return a1;
}

icu::RuleBasedCollator **sub_1952B3988(icu::RuleBasedCollator **a1)
{
  v2 = *a1;
  if (v2)
  {
    icu::RuleBasedCollator::~RuleBasedCollator(v2);
    MEMORY[0x19A8B2600]();
  }

  return a1;
}

uint64_t *sub_1952B39CC(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    icu::UnicodeString::~UnicodeString((v2 + 8));
    MEMORY[0x19A8B2600](v2, 0x10D2C40F27BDE56);
  }

  return a1;
}

uint64_t sub_1952B3A18(_DWORD *a1)
{
  result = 0;
  v9 = 0;
  i = a1[6];
  a1[4] = -1;
  a1[5] = i;
  v4 = a1[3];
  if (i != v4)
  {
    if (i <= a1[2])
    {
      goto LABEL_7;
    }

    do
    {
      v5 = (*(**a1 + 80))(*a1, (i - 1));
      if (uscript_getScript(v5, &v9) > 1)
      {
        break;
      }

      i = a1[5] - 1;
      a1[5] = i;
    }

    while (i > a1[2]);
    for (i = a1[6]; ; a1[6] = i)
    {
      v4 = a1[3];
LABEL_7:
      if (i >= v4)
      {
        break;
      }

      v6 = (*(**a1 + 80))();
      Script = uscript_getScript(v6, &v9);
      if (Script >= 2)
      {
        v8 = a1[4];
        if (v8 == -1)
        {
          a1[4] = Script;
        }

        else if (Script != v8)
        {
          return 1;
        }
      }

      i = a1[6] + 1;
    }

    return 1;
  }

  return result;
}

icu::Transliterator *sub_1952B3B4C(icu::Transliterator *a1, UChar **a2, UChar **a3, uint64_t a4, int a5, int *a6)
{
  v11 = icu::Transliterator::Transliterator(a1, a2, 0);
  *v11 = &unk_1F09370C8;
  v12 = (v11 + 96);
  *(v11 + 12) = &unk_1F0935D00;
  *(v11 + 52) = 2;
  *(v11 + 40) = a5;
  v13 = uhash_openSize(uhash_hashLong, uhash_compareLong, 0, 7, a6);
  *(a1 + 11) = v13;
  if (*a6 <= 0)
  {
    uhash_setValueDeleter(v13, sub_1952B3CA8);
    icu::UnicodeString::operator=(v12, a3);
    v14 = *(a4 + 8);
    v15 = v14;
    v16 = v14 >> 5;
    if (v15 < 0)
    {
      v16 = *(a4 + 12);
    }

    if (v16 >= 1)
    {
      v23 = 47;
      v17 = icu::UnicodeString::doAppend(v12, &v23, 0, 1);
      v18 = *(a4 + 8);
      v19 = v18;
      v20 = v18 >> 5;
      if (v19 >= 0)
      {
        v21 = v20;
      }

      else
      {
        v21 = *(a4 + 12);
      }

      icu::UnicodeString::doAppend(v17, a4, 0, v21);
    }
  }

  return a1;
}

uint64_t sub_1952B3CA8(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1952B3CD4(void ***a1)
{
  *a1 = &unk_1F09370C8;
  uhash_close(a1[11]);
  icu::UnicodeString::~UnicodeString(v2, (a1 + 12));

  icu::Transliterator::~Transliterator(a1);
}

void sub_1952B3D38(void ***a1)
{
  sub_1952B3CD4(a1);

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_1952B3D70(uint64_t a1, uint64_t a2)
{
  v4 = icu::Transliterator::Transliterator(a1, a2);
  *v4 = &unk_1F09370C8;
  icu::UnicodeString::UnicodeString((v4 + 96), (a2 + 96));
  *(a1 + 160) = *(a2 + 160);
  v7 = 0;
  v5 = uhash_openSize(uhash_hashLong, uhash_compareLong, 0, 7, &v7);
  *(a1 + 88) = v5;
  if (v7 <= 0)
  {
    uhash_setValueDeleter(v5, sub_1952B3CA8);
  }

  return a1;
}

uint64_t sub_1952B3E74(uint64_t a1, uint64_t a2, uint64_t *a3, int a4)
{
  v9 = *(a3 + 2);
  v8 = *(a3 + 3);
  v20 = 0;
  v21 = 0;
  v18 = a2;
  v19 = *a3;
  LODWORD(v21) = v19;
  while (1)
  {
    result = sub_1952B3A18(&v18);
    if (!result)
    {
      break;
    }

    v11 = v21;
    if (v21 > v9)
    {
      v12 = sub_1952B3FA8(a1, v20);
      if (v12)
      {
        v13 = v12;
        v14 = v11 >= v8 && a4 != 0;
        *(a3 + 2) = uprv_max(v9, SHIDWORD(v20));
        v15 = uprv_min(v8, v11);
        *(a3 + 3) = v15;
        result = (*(*v13 + 88))(v13, a2, a3, v14);
        v16 = *(a3 + 3) - v15;
        LODWORD(v21) = v16 + v11;
        HIDWORD(v19) += v16;
        v17 = v11 < v8;
        v8 = (v16 + v8);
        if (!v17)
        {
          break;
        }
      }

      else
      {
        *(a3 + 2) = v11;
      }
    }
  }

  *(a3 + 3) = v8;
  return result;
}

uint64_t sub_1952B3FA8(uint64_t a1, unsigned int a2)
{
  v2 = 0;
  v29 = *MEMORY[0x1E69E9840];
  if (a2 != -1 && *(a1 + 160) != a2)
  {
    umtx_lock(0);
    v2 = uhash_iget(*(a1 + 88), a2);
    umtx_unlock(0);
    if (!v2)
    {
      v25 = U_ZERO_ERROR;
      memset(v28, 0, sizeof(v28));
      ShortName = uscript_getShortName(a2);
      icu::UnicodeString::UnicodeString(v28, ShortName, 0xFFFFFFFFLL, 0);
      memset(v27, 0, sizeof(v27));
      icu::UnicodeString::UnicodeString(v27, v28);
      v26 = 45;
      v6 = icu::UnicodeString::doAppend(v27, &v26, 0, 1);
      v7 = *(a1 + 104);
      v8 = v7;
      v9 = v7 >> 5;
      if (v8 >= 0)
      {
        v10 = v9;
      }

      else
      {
        v10 = *(a1 + 108);
      }

      icu::UnicodeString::doAppend(v6, (a1 + 96), 0, v10);
      v11 = icu::Transliterator::createInstance(v27, 0, &v25);
      v2 = v11;
      if (v25 <= U_ZERO_ERROR && v11)
      {
        goto LABEL_9;
      }

      if (v11)
      {
        (*(*v11 + 8))(v11);
      }

      icu::UnicodeString::operator=(v27, v28);
      v15 = icu::UnicodeString::doAppend(v27, "-", 0, 0xFFFFFFFFLL);
      v16 = *(a1 + 104);
      v17 = v16;
      v18 = v16 >> 5;
      if (v17 >= 0)
      {
        v19 = v18;
      }

      else
      {
        v19 = *(a1 + 108);
      }

      icu::UnicodeString::doAppend(v15, (a1 + 96), 0, v19);
      v20 = icu::Transliterator::createInstance(v27, 0, &v25);
      v2 = v20;
      v21 = v25 > U_ZERO_ERROR || v20 == 0;
      v14 = v21;
      if (v21 && v20)
      {
        (*(*v20 + 8))(v20);
      }

      else if ((v14 & 1) == 0)
      {
LABEL_9:
        umtx_lock(0);
        v12 = uhash_iget(*(a1 + 88), a2);
        if (v12)
        {
          v13 = v12;
          umtx_unlock(0);
          (*(*v2 + 8))(v2);
          v2 = v13;
        }

        else
        {
          uhash_iput(*(a1 + 88), a2, v2, &v25);
          umtx_unlock(0);
        }

        goto LABEL_29;
      }

      v2 = 0;
LABEL_29:
      icu::UnicodeString::~UnicodeString(v14, v27);
      icu::UnicodeString::~UnicodeString(v22, v28);
    }
  }

  v23 = *MEMORY[0x1E69E9840];
  return v2;
}

void sub_1952B4254()
{
  v33 = *MEMORY[0x1E69E9840];
  v22 = 0;
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  *v16 = 0u;
  v0 = uhash_init(&v16[1], uhash_hashCaselessUnicodeString, uhash_compareCaselessUnicodeString, 0, &v22);
  if (v22 <= 0)
  {
    v16[0] = &v16[1];
    v0 = uhash_setKeyDeleter(&v16[1], uprv_deleteUObject);
  }

  v13 = icu::Transliterator::_countAvailableSources(v0);
  if (v13 >= 1)
  {
    v2 = 0;
    do
    {
      v32 = 0;
      v31 = 0u;
      v30 = 0u;
      v29 = 0u;
      v28 = &unk_1F0935D00;
      LOWORD(v29) = 2;
      v14 = v2;
      icu::Transliterator::_getAvailableSource(v2, &v28, v1);
      if ((v29 & 0x8000u) == 0)
      {
        v3 = v29 >> 5;
      }

      else
      {
        v3 = DWORD1(v29);
      }

      v4 = icu::UnicodeString::doCaseCompare(&v28, 0, v3, "A", 0, 3, 0);
      v15 = "A";
      v6 = &v15;
      if (v4)
      {
        v7 = icu::Transliterator::_countAvailableTargets(&v28, v5);
        if (v7 >= 1)
        {
          v9 = v7;
          v10 = 0;
          do
          {
            v27 = 0;
            v26 = 0u;
            v25 = 0u;
            v24 = 0u;
            v23 = &unk_1F0935D00;
            LOWORD(v24) = 2;
            icu::Transliterator::_getAvailableTarget(v10, &v28, &v23, v8);
            if (!uhash_geti(v16[0], &v23))
            {
              v22 = 0;
              operator new();
            }

            icu::UnicodeString::~UnicodeString(v11, &v23);
            v10 = (v10 + 1);
          }

          while (v10 != v9);
        }
      }

      icu::UnicodeString::~UnicodeString(v6, &v28);
      v2 = (v14 + 1);
    }

    while (v2 != v13);
  }

  if (v16[0])
  {
    uhash_close(v16[0]);
  }

  v12 = *MEMORY[0x1E69E9840];
}

icu::CalendarAstronomer *icu::CalendarAstronomer::CalendarAstronomer(icu::CalendarAstronomer *this)
{
  icu::Calendar::getNow(this);
  *this = v2;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 72) = 0;
  NaN = uprv_getNaN();
  *(this + 3) = NaN;
  *(this + 4) = NaN;
  *(this + 5) = NaN;
  *(this + 6) = NaN;
  *(this + 72) = 0;
  return this;
}

{
  icu::Calendar::getNow(this);
  *this = v2;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 72) = 0;
  NaN = uprv_getNaN();
  *(this + 3) = NaN;
  *(this + 4) = NaN;
  *(this + 5) = NaN;
  *(this + 6) = NaN;
  *(this + 72) = 0;
  return this;
}

void icu::CalendarAstronomer::clearCache(icu::CalendarAstronomer *this)
{
  NaN = uprv_getNaN();
  *(this + 3) = NaN;
  *(this + 4) = NaN;
  *(this + 5) = NaN;
  *(this + 6) = NaN;
  *(this + 72) = 0;
}

icu::CalendarAstronomer *icu::CalendarAstronomer::CalendarAstronomer(icu::CalendarAstronomer *this, double a2)
{
  *this = a2;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 72) = 0;
  NaN = uprv_getNaN();
  *(this + 3) = NaN;
  *(this + 4) = NaN;
  *(this + 5) = NaN;
  *(this + 6) = NaN;
  *(this + 72) = 0;
  return this;
}

{
  *this = a2;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 72) = 0;
  NaN = uprv_getNaN();
  *(this + 3) = NaN;
  *(this + 4) = NaN;
  *(this + 5) = NaN;
  *(this + 6) = NaN;
  *(this + 72) = 0;
  return this;
}

icu::CalendarAstronomer *icu::CalendarAstronomer::CalendarAstronomer(icu::CalendarAstronomer *this, double a2, double a3, double a4)
{
  *this = a2;
  *(this + 1) = a3;
  *(this + 2) = a4;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 72) = 0;
  *(this + 1) = a3 * 0.0174532925 + 3.14159265 + uprv_floor((a3 * 0.0174532925 + 3.14159265) / 6.28318531) * -6.28318531 + -3.14159265;
  *(this + 2) = a4 * 0.0174532925 + 3.14159265 + uprv_floor((a4 * 0.0174532925 + 3.14159265) / 6.28318531) * -6.28318531 + -3.14159265;
  NaN = uprv_getNaN();
  *(this + 3) = NaN;
  *(this + 4) = NaN;
  *(this + 5) = NaN;
  *(this + 6) = NaN;
  *(this + 72) = 0;
  return this;
}

void icu::CalendarAstronomer::setTime(icu::CalendarAstronomer *this, double a2)
{
  *this = a2;
  NaN = uprv_getNaN();
  *(this + 3) = NaN;
  *(this + 4) = NaN;
  *(this + 5) = NaN;
  *(this + 6) = NaN;
  *(this + 72) = 0;
}

double icu::CalendarAstronomer::getJulianDay(icu::CalendarAstronomer *this)
{
  if (!uprv_isNaN(*(this + 3)))
  {
    return *(this + 3);
  }

  result = (*this + 2.1086676e14) / 86400000.0;
  *(this + 3) = result;
  return result;
}

icu::CalendarAstronomer::Equatorial *icu::CalendarAstronomer::eclipticToEquatorial(icu::CalendarAstronomer *this, icu::CalendarAstronomer::Equatorial *a2, double a3, long double a4)
{
  v7 = icu::CalendarAstronomer::eclipticObliquity(this);
  v8 = __sincos_stret(v7);
  v9 = __sincos_stret(a3);
  v10 = __sincos_stret(a4);
  v11 = tan(a4);
  v12 = atan2(v9.__sinval * v8.__cosval - v11 * v8.__sinval, v9.__cosval);
  v13 = asin(v9.__sinval * (v10.__cosval * v8.__sinval) + v10.__sinval * v8.__cosval);
  *a2 = v12;
  *(a2 + 1) = v13;
  return a2;
}

double icu::CalendarAstronomer::eclipticObliquity(icu::CalendarAstronomer *this)
{
  if (uprv_isNaN(*(this + 3)))
  {
    v2 = (*this + 2.1086676e14) / 86400000.0;
    *(this + 3) = v2;
  }

  else
  {
    v2 = *(this + 3);
  }

  v3 = (v2 + -2451545.0) / 36525.0;
  return (v3 * -0.0130041667 + 23.439292 + v3 * -0.000000166666667 * v3 + v3 * (v3 * 0.000000502777778) * v3) * 0.0174532925;
}

double icu::CalendarAstronomer::adjustSunLongitude(icu::CalendarAstronomer *this, double *a2, double a3)
{
  if (a3 < -2.20984944e12 || a3 >= 4.13310186e12)
  {
    return *this;
  }

  v3 = ((a3 + 2.20984944e12) * 202.0 / 6.3429513e12);
  v4 = (a3 / 10000.0);
  v5 = v3 << 32;
  v6 = (&unk_195482040 + 4 * v3 + 8);
  do
  {
    v7 = *(v6 - 2);
    v5 -= 0x100000000;
    --v6;
  }

  while (v7 > v4);
  do
  {
    v9 = *v6++;
    v8 = v9;
    v5 += 0x100000000;
  }

  while (v9 <= v4);
  v10 = *(v6 - 2);
  v11 = v4 - v10;
  if (v11 > 1570331)
  {
    if (v11 > 0x244EC2)
    {
      v12 = (v11 - 2379459) / (v8 - 2379459 - v10);
      v13 = &unk_195482368 + 4 * (v5 >> 32) + 3;
      v14 = &unk_195482368 + 4 * ((v5 + 0x100000000) >> 32);
    }

    else
    {
      v12 = (v11 - 1570332) / 809127.0;
      v16 = &unk_195482368 + 4 * (v5 >> 32);
      v13 = v16 + 2;
      v14 = v16 + 3;
    }
  }

  else if (v11 > 768902)
  {
    v12 = (v11 - 768903) / 801429.0;
    v17 = &unk_195482368 + 4 * (v5 >> 32);
    v13 = v17 + 1;
    v14 = v17 + 2;
  }

  else
  {
    v12 = v11 / 768903.0;
    v13 = &unk_195482368 + 4 * (v5 >> 32);
    v14 = v13 + 1;
  }

  result = *this + (*v13 + v12 * (*v14 - *v13)) / 100000.0;
  *this = result;
  v18 = 6.28318531;
  if (result >= 6.28318531)
  {
    v18 = -6.28318531;
    goto LABEL_18;
  }

  if (result < 0.0)
  {
LABEL_18:
    result = result + v18;
    *this = result;
  }

  return result;
}

double icu::CalendarAstronomer::getSunLongitude(icu::CalendarAstronomer *this)
{
  v2 = (this + 32);
  if (uprv_isNaN(*(this + 4)))
  {
    isNaN = uprv_isNaN(*(this + 3));
    if (isNaN)
    {
      v5 = (*this + 2.1086676e14) / 86400000.0;
      *(this + 3) = v5;
    }

    else
    {
      v5 = *(this + 3);
    }

    icu::CalendarAstronomer::getSunLongitude(isNaN, v5, v2, this + 5);
  }

  v6 = *this;

  return icu::CalendarAstronomer::adjustSunLongitude(v2, v3, v6);
}

long double icu::CalendarAstronomer::getSunLongitude(icu::CalendarAstronomer *this, double a2, long double *a3, double *a4)
{
  v6 = (a2 + -2447891.5) * 0.0172027916 + uprv_floor((a2 + -2447891.5) * 0.0172027916 / 6.28318531) * -6.28318531 + 4.87650758 + -4.93523998;
  v7 = v6 + uprv_floor(v6 / 6.28318531) * -6.28318531;
  *a4 = v7;
  v8 = v7;
  do
  {
    v9 = __sincos_stret(v8);
    v10 = v8 + v9.__sinval * -0.016713 - v7;
    v8 = v8 - v10 / (v9.__cosval * -0.016713 + 1.0);
  }

  while (uprv_fabs(v10) > 0.00001);
  v11 = tan(v8 * 0.5);
  v12 = atan(v11 * 1.01685503);
  result = v12 + v12 + 4.93523998 + uprv_floor((v12 + v12 + 4.93523998) / 6.28318531) * -6.28318531;
  *a3 = result;
  return result;
}

double icu::CalendarAstronomer::getSunTime(icu::CalendarAstronomer *this, double a2, int a3)
{
  if (a2 == 4.71238898 && (v3 = *this, *this >= -2.20984944e12) && v3 < 4.13310186e12)
  {
    v4 = (v3 / 10000.0);
    v5 = (&unk_195482040 + 4 * ((v3 + 2.20984944e12) * 202.0 / 6.3429513e12) + 4);
    do
    {
      v6 = *--v5;
    }

    while (v6 > v4);
    do
    {
      v7 = v5[1];
      ++v5;
    }

    while (v7 <= v4);
    if (!a3)
    {
      --v5;
    }

    return *v5 * 10000.0;
  }

  else
  {
    v9 = &unk_1F09371D8;
    return icu::CalendarAstronomer::timeOfAngle(this, &v9, a2, 365.242191, 60000.0, a3);
  }
}

double icu::CalendarAstronomer::timeOfAngle(icu::CalendarAstronomer *this, icu::CalendarAstronomer::AngleFunc *a2, double a3, double a4, double a5, int a6)
{
  v7 = a3;
  if (a6)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = -6.28318531;
  }

  v11 = a4 * 86400000.0;
  v26 = a4 * 86400000.0 * 0.125;
  v27 = a4 * 86400000.0;
  v28 = v10;
LABEL_5:
  v12 = (**a2)(a2, this);
  v13 = v11 * (v10 + v7 - v12 + uprv_floor((v7 - v12) / 6.28318531) * -6.28318531) / 6.28318531;
  v29 = *this;
  *this = v29 + uprv_ceil(v13);
  NaN = uprv_getNaN();
  *(this + 3) = NaN;
  *(this + 4) = NaN;
  *(this + 5) = NaN;
  *(this + 6) = NaN;
  *(this + 72) = 0;
  do
  {
    v15 = v13;
    v16 = (**a2)(a2, this);
    v17 = v16 - v12 + 3.14159265;
    v18 = uprv_floor(v17 / 6.28318531);
    v19 = uprv_fabs(v15 / (v17 + v18 * -6.28318531 + -3.14159265));
    v13 = v19 * (a3 - v16 + 3.14159265 + uprv_floor((a3 - v16 + 3.14159265) / 6.28318531) * -6.28318531 + -3.14159265);
    v20 = uprv_fabs(v13);
    if (v20 > uprv_fabs(v15))
    {
      v23 = uprv_ceil(v26);
      if (!a6)
      {
        v23 = -v23;
      }

      *this = v29 + v23;
      v24 = uprv_getNaN();
      *(this + 3) = v24;
      *(this + 4) = v24;
      *(this + 5) = v24;
      *(this + 6) = v24;
      *(this + 72) = 0;
      v7 = a3;
      v11 = v27;
      v10 = v28;
      goto LABEL_5;
    }

    v21 = *this;
    *this = v21 + uprv_ceil(v13);
    v22 = uprv_getNaN();
    *(this + 3) = v22;
    *(this + 4) = v22;
    *(this + 5) = v22;
    *(this + 6) = v22;
    *(this + 72) = 0;
    v12 = v16;
  }

  while (uprv_fabs(v13) > a5);
  return *this;
}