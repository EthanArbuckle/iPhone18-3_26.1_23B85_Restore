uint64_t fxd_HighPrecisionCosLspToAi__32BIT(uint64_t result, _DWORD *a2, int a3)
{
  v52 = *MEMORY[0x1E69E9840];
  v3 = &v48 + a3;
  v3[3] = 0x800000;
  v50 = 0x800000;
  v3[1] = 0x800000;
  v41 = v3 + 1;
  v4 = *(result + 4);
  v5 = -2 * *result;
  v48 = 0x800000;
  v49 = v5;
  v39 = a3;
  v3[2] = -2 * v4;
  if (a3 >= 3)
  {
    v6 = result;
    v40 = ((a3 - 3) >> 1) + 2;
    v7 = &v50;
    v47 = &v49;
    v8 = 1;
    v9 = 2;
    v10 = 16;
    v45 = 2;
    v46 = v51;
    v11 = &v51[a3];
    do
    {
      v42 = v10;
      v43 = v8;
      v12 = v45;
      v13 = *(v6 + 4 * v45);
      v44 = v7;
      v45 += 2;
      *(&v48 + v45) = 0x800000;
      v14 = v12 | 1;
      *(&v48 + (v12 | 1)) = *(&v47 + v12 + 1) - 2 * v13;
      v15 = v12 >> 1;
      v16 = v12;
      v17 = v7;
      do
      {
        v18 = *--v17;
        *v7 = (((*(v7 - 2) - 2 * fxd_S32ShMultRndS32S32(v18, *(v6 + 4 * v12), 23)) & 0xFFFFFFFE) + *v7) & 0xFFFFFFFE;
        --v16;
        v7 = v17;
      }

      while (v16 > v15);
      v19 = v46;
      v20 = v47;
      v21 = v9;
      do
      {
        v22 = *v19++;
        *v20-- = v22;
        --v21;
      }

      while (v21 > 1);
      v23 = *(v6 + 4 * v14);
      v41[v45] = 0x800000;
      v41[v14] = v3[v12] - 2 * v23;
      v24 = v11;
      v25 = v11;
      do
      {
        v26 = *--v25;
        result = fxd_S32ShMultRndS32S32(v26, *(v6 + 4 * v14), 23);
        *v24 = (((*(v24 - 2) - 2 * result) & 0xFFFFFFFE) + *v24) & 0xFFFFFFFE;
        --v12;
        v24 = v25;
      }

      while (v12 > v15);
      v27 = v42;
      v28 = v9;
      do
      {
        v3[v28--] = *(v3 + v27);
        v27 += 4;
      }

      while (v28 > 1);
      v8 = v43 + 1;
      v7 = v44 + 2;
      ++v9;
      ++v46;
      ++v47;
      v11 += 2;
      v10 = v42 + 4;
    }

    while (v43 + 1 != v40);
  }

  v29 = a2;
  if (a3 >= 1)
  {
    v30 = a3;
    v31 = *v41;
    v32 = v48;
    v33 = &v50;
    do
    {
      v34 = *(v33 - 1);
      v35 = v33[v39];
      *v29++ = 16 * (v35 + v34 - v31 + v32);
      ++v33;
      v32 = v34;
      v31 = v35;
      --v30;
    }

    while (v30);
  }

  v36 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t fxd_HighPrecisionExpandLpcBandwidth(uint64_t result, _DWORD *a2, int a3, int a4, char a5)
{
  if (a4 >= 1)
  {
    v7 = result;
    v8 = 15 - a5;
    v9 = a4;
    LOWORD(v10) = a3;
    do
    {
      v11 = *v7++;
      v12 = v10;
      result = fxd_S32ShMultRndS32S16(v11, v10, v8);
      *a2++ = result;
      v10 = (v12 * a3) >> 15;
      --v9;
    }

    while (v9);
  }

  return result;
}

void fxd_MultiStageVectorDecodeLsp(_DWORD *a1, int a2, _DWORD *a3, uint64_t a4, signed int a5, __int16 *a6)
{
  v6 = a6;
  FillZeroLH_S16(a6, a5);
  if (a2 > 1)
  {
    v12 = *a3 * a5;
    v13 = 1;
    do
    {
      if (a5 >= 1)
      {
        v14 = (a4 + 2 * v12 + 2 * a1[v13] * a5);
        v15 = a5;
        v16 = v6;
        do
        {
          v17 = *v14++;
          *v16++ += v17;
          --v15;
        }

        while (v15);
      }

      v12 += a3[v13++] * a5;
    }

    while (v13 != a2);
  }

  if (a5 >= 1)
  {
    v18 = (a4 + 2 * *a1 * a5);
    v19 = a5;
    do
    {
      v20 = *v6;
      *v6 >>= 2;
      v21 = *v18++;
      *v6++ = v21 + (v20 >> 2);
      --v19;
    }

    while (v19);
  }
}

void fxd_MultiStageVectorDecodeLsp__32BIT(_DWORD *a1, int a2, _DWORD *a3, uint64_t a4, signed int a5, uint64_t a6, int *a7)
{
  v28 = *MEMORY[0x1E69E9840];
  FillZeroLH_S32(v27, a5);
  if (a2 > 1)
  {
    v14 = *a3 * a5;
    v15 = 1;
    do
    {
      if (a5 >= 1)
      {
        v16 = (a4 + 2 * v14 + 2 * a1[v15] * a5);
        v17 = 8 - *(a6 + 4 * v15);
        v18 = v27;
        v19 = a5;
        do
        {
          v20 = *v16++;
          *v18++ += v20 << v17;
          --v19;
        }

        while (v19);
      }

      v14 += a3[v15++] * a5;
    }

    while (v15 != a2);
  }

  if (a5 >= 1)
  {
    v21 = (a4 + 2 * *a1 * a5);
    v22 = a5;
    v23 = v27;
    do
    {
      v24 = *v21++;
      v25 = *v23 + (v24 << 10);
      *v23++ = v25;
      *a7++ = v25;
      --v22;
    }

    while (v22);
  }

  v26 = *MEMORY[0x1E69E9840];
}

BOOL fxd_OrderCheckLsp(unsigned __int16 *a1, int a2, int a3)
{
  if (a3 == 3)
  {
    v3 = 5;
  }

  else
  {
    v3 = 2;
  }

  if (a2 >= 2)
  {
    v4 = 0;
    v5 = (a2 - 1);
    do
    {
      v6 = 0;
      v7 = *a1;
      v8 = 1;
      do
      {
        v9 = v6 + 1;
        v10 = a1[v6 + 1];
        if (v10 < v7)
        {
          v11 = &a1[v6 + 2];
          while (1)
          {
            *(v11 - 2) = v10;
            *(v11 - 1) = v7;
            if (v5 == v9)
            {
              goto LABEL_14;
            }

            ++v9;
            v12 = *v11++;
            LOWORD(v10) = v12;
            if (v12 >= v7)
            {
              v8 = 0;
              break;
            }
          }
        }

        v7 = v10;
        v6 = v9;
      }

      while (v9 != v5);
      if (v8 == 1)
      {
        return fxd_SmoothLsp(a1, a2, a3);
      }

LABEL_14:
      ++v4;
    }

    while (v4 != v3);
  }

  return fxd_SmoothLsp(a1, a2, a3);
}

BOOL fxd_SmoothLsp(unsigned __int16 *a1, int a2, int a3)
{
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      return 1;
    }

    else if (a3 == 3)
    {
      if ((a2 - 14) > 6)
      {
        v4 = 322;
      }

      else
      {
        v4 = dword_1C3824EC0[a2 - 14];
      }

      v5 = 0;
      v6 = 2 * v4;
      v7 = (a2 - 1);
      v8 = v7;
      v9 = v7 - 1;
      while (a2 >= 2)
      {
        v10 = 0;
        v11 = a1;
        do
        {
          v12 = v10 + 1;
          v13 = v11[1];
          v14 = *v11;
          if (v4 > (v11[1] - v14))
          {
            v15 = (v4 - (v13 - v14)) << 16 >> 17;
            if (v10)
            {
              if (v4 <= (v14 - *(v11 - 1)))
              {
                v17 = v14 - *(v11 - 1);
                if (v6 > v17)
                {
                  v16 = (v17 - v4) >> 1;
                }

                else
                {
                  v16 = (v4 - (v13 - v14)) >> 1;
                }
              }

              else
              {
                v16 = 0;
              }
            }

            else if (v4 <= *a1)
            {
              v16 = (v4 - (v13 - v14)) >> 1;
            }

            else
            {
              v16 = v14 >> 1;
            }

            if (v9 == v10 && 25736 - v4 < v13)
            {
              v15 = (25736 - v13) << 16 >> 17;
            }

            else if (v12 < v8)
            {
              v18 = (v11[2] - v13);
              if (v6 > v18)
              {
                v15 = (v18 - v4) << 16 >> 17;
              }

              if (v4 > (v11[2] - v13))
              {
                LOWORD(v15) = 0;
              }
            }

            *v11 = v14 - v16;
            v11[1] = v15 + v13;
          }

          ++v11;
          ++v10;
        }

        while (a2 - 1 != v12);
        v19 = 1;
        v20 = a2 - 1;
        v21 = a1 + 1;
        do
        {
          if (((32440 * v4) >> 15) > (*v21 - *(v21 - 1)))
          {
            v19 = 0;
          }

          ++v21;
          --v20;
        }

        while (v20);
        if (v19 == 1)
        {
          break;
        }

        if (++v5 == 10)
        {
          return 0;
        }
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return !a3 || a3 == 1;
  }
}

int *fxd_OrderCheckLsp__S32(int *result, int a2)
{
  if (a2 >= 2)
  {
    v2 = 0;
    v3 = (a2 - 1);
    do
    {
LABEL_3:
      v4 = 0;
      v5 = *result;
      v6 = 1;
      while (1)
      {
        v7 = v4 + 1;
        v8 = result[v4 + 1];
        if (v5 > v8)
        {
          break;
        }

LABEL_9:
        v5 = v8;
        v4 = v7;
        if (v7 == v3)
        {
          if ((v6 == 1) | v2 & 1)
          {
            return result;
          }

          v2 = 1;
          goto LABEL_3;
        }
      }

      v9 = &result[v4 + 2];
      while (1)
      {
        *(v9 - 2) = v8;
        *(v9 - 1) = v5;
        if (v3 == v7)
        {
          break;
        }

        ++v7;
        v10 = *v9++;
        v8 = v10;
        if (v5 <= v10)
        {
          v6 = 0;
          goto LABEL_9;
        }
      }

      v11 = v2 | (a2 < 2);
      v2 = 1;
    }

    while ((v11 & 1) == 0);
  }

  return result;
}

uint64_t fxd_S16SatAddS16S16(int a1, int a2)
{
  v2 = a1 + a2;
  if (a1 + a2 >= 0x7FFF)
  {
    v2 = 0x7FFF;
  }

  if (v2 <= -32768)
  {
    return 4294934528;
  }

  else
  {
    return v2;
  }
}

uint64_t fxd_S32SatAddS32S32(int a1, int a2)
{
  if (((a2 + a1) ^ a1) > -1 || (a2 ^ a1) < 0)
  {
    return (a2 + a1);
  }

  else
  {
    return (a1 >> 31) ^ 0x7FFFFFFFu;
  }
}

uint64_t fxd_S32ShMultRndS32S32(int a1, int a2, __int16 a3)
{
  v3 = ((a2 >> 16) * a1 + a2 * (a1 >> 16) + ((a2 * a1 + 0x8000) >> 16) + (1 << (a3 - 17))) >> (a3 - 16);
  if (a3 == 16)
  {
    v3 = (a2 >> 16) * a1 + a2 * (a1 >> 16) + ((a2 * a1 + 0x8000) >> 16);
  }

  return (v3 + (((a2 >> 16) * (a1 >> 16)) << (32 - a3)));
}

uint64_t fxd_S16Lookup10Log10S16S16(int a1, uint64_t a2)
{
  if (a1 >> 5 == 1023)
  {
    LOWORD(v2) = 0;
  }

  else
  {
    v2 = *(a2 + 2 * (a1 >> 5)) + (((2 * a1 - (a1 >> 5 << 6)) * (*(a2 + 2 * (a1 >> 5) + 2) - *(a2 + 2 * (a1 >> 5))) + 0x8000) >> 24);
  }

  return v2;
}

uint64_t fxd_U16LookupPow10U16U16(unsigned int a1, uint64_t a2)
{
  v2 = a1 >> 5;
  if (a1 >> 5 > 0x400)
  {
    v2 = 1023;
  }

  return (*(a2 + 2 * v2) + (((*(a2 + 2 * v2 + 2) - *(a2 + 2 * v2)) * (a1 - 32 * v2) + 16) >> 5));
}

uint64_t fxd_DPFExtractS32S16S16(uint64_t result, _WORD *a2, _WORD *a3)
{
  *a2 = WORD1(result);
  *a3 = result >> 1;
  return result;
}

uint64_t fxd_U16SqrtS32(int a1)
{
  if (a1 > 3519)
  {
    if (a1 <= 5119)
    {
      if (a1 == 3520)
      {
        return 59;
      }

      if (a1 == 4096)
      {
        return 64;
      }
    }

    else
    {
      switch(a1)
      {
        case 5120:
          return 72;
        case 5632:
          return 75;
        case 7040:
          return 84;
      }
    }
  }

  else if (a1 <= 2047)
  {
    if (a1 == 1024)
    {
      return 32;
    }

    if (a1 == 1408)
    {
      return 38;
    }
  }

  else
  {
    switch(a1)
    {
      case 2048:
        return 45;
      case 2560:
        return 51;
      case 2816:
        return 53;
    }
  }

  v1 = 0;
  v2 = 0;
  v3 = 0x8000;
  do
  {
    v4 = (v1 + v3) * (v1 + v3);
    if (v4 <= a1)
    {
      v1 += v3;
      if (v4 == a1)
      {
        break;
      }
    }

    v3 >>= 1;
  }

  while (v2++ < 0xF);
  return v1;
}

uint64_t uselect_CreateBrokerString(uint64_t a1, char *a2, size_t a3, char *a4, char *a5, int a6, int a7)
{
  v34 = *MEMORY[0x1E69E9840];
  v31 = 0;
  __src = 0;
  __s = 0;
  *a2 = 0;
  Str = paramc_ParamGetStr(*(a1 + 40), "voiceaddon", &__s);
  if ((Str & 0x80000000) != 0)
  {
    goto LABEL_59;
  }

  if (!__s || !*__s)
  {
    goto LABEL_12;
  }

  v15 = strlen(__s);
  v16 = heap_Calloc(*(a1 + 8), 1, v15 + 19);
  if (!v16)
  {
    v20 = 2229280778;
    goto LABEL_60;
  }

  v17 = v16;
  strcpy(v16, "voiceaddonbaseuri.");
  strcat(v16, __s);
  Str = paramc_ParamGetStr(*(a1 + 40), v17, &__src);
  if ((Str & 0x80000000) != 0)
  {
    goto LABEL_59;
  }

  heap_Free(*(a1 + 8), v17);
  if (__src && *__src)
  {
    Str = strhelper_SafeCat(a2, __src, 0xFFFFFFFFFFFFFFFFLL, a3);
    if ((Str & 0x80000000) != 0)
    {
      goto LABEL_59;
    }

    if (a2[strlen(a2) - 1] != 47)
    {
      Str = strhelper_SafeCat(a2, "/", 0xFFFFFFFFFFFFFFFFLL, a3);
      if ((Str & 0x80000000) != 0)
      {
        goto LABEL_59;
      }
    }

    v18 = 0;
    v19 = "_";
  }

  else
  {
LABEL_12:
    v18 = 1;
    v19 = "/";
  }

  Str = paramc_ParamGetStr(*(a1 + 40), "voice", &__src);
  if ((Str & 0x80000000) != 0)
  {
    goto LABEL_59;
  }

  v20 = 2229280778;
  if (!__src)
  {
    v20 = 2229282821;
    goto LABEL_60;
  }

  v29 = v18;
  v21 = strlen(__src);
  v22 = heap_Calloc(*(a1 + 8), 1, v21 + 1);
  if (v22)
  {
    v23 = v22;
    v24 = strcpy(v22, __src);
    vf_MakeLower(v24);
    if (__s && *__s)
    {
      Str = strhelper_SafeCat(a2, "uselectvao", 0xFFFFFFFFFFFFFFFFLL, a3);
      if ((Str & 0x80000000) != 0)
      {
        goto LABEL_59;
      }

      Str = strhelper_SafeCat(a2, v19, 0xFFFFFFFFFFFFFFFFLL, a3);
      if ((Str & 0x80000000) != 0)
      {
        goto LABEL_59;
      }

      Str = strhelper_SafeCat(a2, v23, 0xFFFFFFFFFFFFFFFFLL, a3);
      if ((Str & 0x80000000) != 0)
      {
        goto LABEL_59;
      }

      Str = strhelper_SafeCat(a2, v19, 0xFFFFFFFFFFFFFFFFLL, a3);
      if ((Str & 0x80000000) != 0)
      {
        goto LABEL_59;
      }

      Str = strhelper_SafeCat(a2, __s, 0xFFFFFFFFFFFFFFFFLL, a3);
      if ((Str & 0x80000000) != 0)
      {
        goto LABEL_59;
      }

      Str = strhelper_SafeCat(a2, v19, 0xFFFFFFFFFFFFFFFFLL, a3);
      if ((Str & 0x80000000) != 0)
      {
        goto LABEL_59;
      }

      Str = strhelper_SafeCat(a2, "vao", 0xFFFFFFFFFFFFFFFFLL, a3);
      if ((Str & 0x80000000) != 0)
      {
        goto LABEL_59;
      }

      heap_Free(*(a1 + 8), v23);
      v25 = 0;
    }

    else
    {
      Str = strhelper_SafeCat(a2, "uselect", 0xFFFFFFFFFFFFFFFFLL, a3);
      if ((Str & 0x80000000) != 0)
      {
        goto LABEL_59;
      }

      Str = strhelper_SafeCat(a2, v19, 0xFFFFFFFFFFFFFFFFLL, a3);
      if ((Str & 0x80000000) != 0)
      {
        goto LABEL_59;
      }

      Str = strhelper_SafeCat(a2, v23, 0xFFFFFFFFFFFFFFFFLL, a3);
      if ((Str & 0x80000000) != 0)
      {
        goto LABEL_59;
      }

      if (a4)
      {
        strcpy(a4, __src);
      }

      heap_Free(*(a1 + 8), v23);
      Str = strhelper_SafeCat(a2, v19, 0xFFFFFFFFFFFFFFFFLL, a3);
      if ((Str & 0x80000000) != 0)
      {
        goto LABEL_59;
      }

      v25 = 1;
    }

    if (a6 != 1 || (Str = paramc_ParamGetStr(*(a1 + 40), "fecfg", &__src), (Str & 0x80000000) == 0) && (Str = strhelper_SafeCat(a2, __src, 0xFFFFFFFFFFFFFFFFLL, a3), (Str & 0x80000000) == 0) && (Str = strhelper_SafeCat(a2, v19, 0xFFFFFFFFFFFFFFFFLL, a3), (Str & 0x80000000) == 0))
    {
      if (v25)
      {
        Str = paramc_ParamGetStr(*(a1 + 40), "reduction", &__src);
        if ((Str & 0x80000000) != 0)
        {
          goto LABEL_59;
        }

        Str = strhelper_SafeCat(a2, __src, 0xFFFFFFFFFFFFFFFFLL, a3);
        if ((Str & 0x80000000) != 0)
        {
          goto LABEL_59;
        }

        if (a5)
        {
          strcpy(a5, __src);
        }
      }

      else if (a5)
      {
        *a5 = 7299446;
      }

      if ((v29 & 1) != 0 || (Str = strhelper_SafeCat(a2, ".dat", 0xFFFFFFFFFFFFFFFFLL, a3), (Str & 0x80000000) == 0))
      {
        v20 = paramc_ParamGetStr(*(a1 + 40), "datapackagename", &__src);
        if ((v20 & 0x80000000) != 0)
        {
          goto LABEL_60;
        }

        v26 = v29 ^ 1;
        if (a7)
        {
          v26 = 1;
        }

        if ((v26 & 1) == 0 && __src)
        {
          if (*__src)
          {
            Str = brokeraux_ComposeBrokerString(a1, a2, 0, 0, 0, 0, 0, v33, a3);
            if ((Str & 0x80000000) == 0)
            {
              *a2 = 0;
              Str = strhelper_SafeCat(a2, v33, 0xFFFFFFFFFFFFFFFFLL, a3);
            }

            goto LABEL_59;
          }

          goto LABEL_60;
        }

        if (!a7 || !cupreader_IsCupInTheScope(a1, &v31))
        {
          goto LABEL_60;
        }

        Str = cupreader_PrependCupName(a2, v31, a3);
      }
    }

LABEL_59:
    v20 = Str;
  }

LABEL_60:
  v27 = *MEMORY[0x1E69E9840];
  return v20;
}

uint64_t uselect_ObjcVoiceOpen(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v83 = *MEMORY[0x1E69E9840];
  __src = 0;
  memset(__dst, 0, 408);
  inited = InitRsrcFunction(a1, a2, &__src);
  if ((inited & 0x80000000) != 0)
  {
    goto LABEL_111;
  }

  memcpy(__dst, __src, 0x198uLL);
  __dst[2] = *(a5 + 32);
  v73 = 0;
  v72 = 0;
  v81[0] = 0;
  v80[0] = 0;
  v79[0] = 0;
  if ((uselect_CreateBrokerString(__dst, v81, 0x100uLL, v80, v79, 1, 0) & 0x80000000) != 0)
  {
    goto LABEL_5;
  }

  inited = uselect_CheckForDataFile(a1, a2, v81, &v72);
  if ((inited & 0x80001FFF) == 0x8000000A)
  {
LABEL_111:
    v10 = inited;
    goto LABEL_112;
  }

  if (!v72)
  {
LABEL_5:
    inited = uselect_CreateBrokerString(__dst, v81, 0x100uLL, v80, v79, 0, 0);
    if ((inited & 0x80000000) != 0)
    {
      goto LABEL_111;
    }

    inited = uselect_CheckForDataFile(a1, a2, v81, &v72);
    if ((inited & 0x80001FFF) == 0x8000000A)
    {
      goto LABEL_111;
    }

    if (!v72)
    {
      if ((uselect_CreateBrokerString(__dst, v81, 0x100uLL, v80, v79, 0, 1) & 0x80000000) != 0)
      {
        goto LABEL_119;
      }

      inited = uselect_CheckForDataFile(a1, a2, v81, &v72);
      if ((inited & 0x80001FFF) == 0x8000000A)
      {
        goto LABEL_111;
      }

      if (!v72)
      {
LABEL_119:
        v18 = 0;
        v10 = 2229280788;
        goto LABEL_120;
      }
    }
  }

  inited = ssftriff_reader_ObjOpen(a1, a2, 0, v81, "USEL", 1031, &v73);
  if ((inited & 0x80000000) != 0)
  {
    goto LABEL_111;
  }

  v10 = 2229280778;
  v18 = heap_Calloc(*(&__dst[0] + 1), 1, 28400);
  if (!v18)
  {
    goto LABEL_120;
  }

  __strcpy_chk();
  __strcpy_chk();
  __strcpy_chk();
  *&v19 = -1;
  *(&v19 + 1) = -1;
  *(v18 + 2144) = v19;
  *(v18 + 2160) = v19;
  *(v18 + 2176) = v19;
  *(v18 + 2192) = v19;
  *(v18 + 2208) = v19;
  *(v18 + 2224) = v19;
  *(v18 + 2240) = v19;
  *(v18 + 2256) = v19;
  *(v18 + 2272) = v19;
  *(v18 + 2288) = v19;
  *(v18 + 2304) = v19;
  *(v18 + 2320) = v19;
  *(v18 + 2336) = v19;
  *(v18 + 2352) = v19;
  *(v18 + 2368) = v19;
  *(v18 + 2384) = v19;
  *(v18 + 3048) = v19;
  *(v18 + 3064) = v19;
  *(v18 + 3080) = v19;
  *(v18 + 3096) = v19;
  *(v18 + 3112) = v19;
  *(v18 + 3128) = v19;
  *(v18 + 3144) = v19;
  *(v18 + 3160) = v19;
  *(v18 + 3176) = v19;
  *(v18 + 3192) = v19;
  *(v18 + 3208) = v19;
  *(v18 + 3224) = v19;
  *(v18 + 3240) = v19;
  *(v18 + 3256) = v19;
  *(v18 + 3272) = v19;
  *(v18 + 3288) = v19;
  *(v18 + 3304) = v19;
  *(v18 + 3316) = v19;
  *(v18 + 3392) = v19;
  *(v18 + 3376) = v19;
  *(v18 + 2400) = 0u;
  *(v18 + 2416) = 0u;
  *(v18 + 2432) = 0u;
  *(v18 + 2448) = 0u;
  *(v18 + 2748) = 0u;
  *(v18 + 2764) = 0u;
  *(v18 + 2780) = 0u;
  *(v18 + 2796) = 0u;
  *(v18 + 2812) = 0u;
  *(v18 + 2828) = 0u;
  *(v18 + 2844) = 0u;
  *(v18 + 2860) = 0u;
  *(v18 + 2876) = 0u;
  *(v18 + 2892) = 0u;
  *(v18 + 2908) = 0u;
  *(v18 + 2924) = 0u;
  *(v18 + 2940) = 0u;
  *(v18 + 2950) = 0u;
  *(v18 + 28168) = uselect_CartLookup;
  *(v18 + 3578) = 2;
  v20 = heap_Calloc(*(&__dst[0] + 1), 1, 280);
  *(v18 + 3552) = v20;
  if (!v20)
  {
    goto LABEL_120;
  }

  *v20 = v18;
  memset(v82, 0, sizeof(v82));
  v21 = uselect_ParseRiff(__dst, v73, v18, 0, v82, 0, 0, 0);
  if ((v21 & 0x80000000) == 0)
  {
    v63 = a4;
    v22 = (v18 + 3504);
    v23 = (v18 + 3506);
    v76 = 0;
    v24 = v18 + 3512;
    v25 = v18 + 3488;
    v75 = 0;
    v26 = v18 + 3490;
    v27 = v18 + 3496;
    v74 = 0;
    v28 = v18 + 3472;
    v29 = v18 + 3474;
    v30 = v18 + 3480;
    v31 = v18 + 3440;
    v32 = v18 + 3442;
    v33 = v18 + 3448;
    v34 = 1;
    while (1)
    {
      if (v34 == 3)
      {
        v22 = v25;
        v23 = v26;
        v24 = v27;
      }

      v35 = (v34 == 1 ? v31 : v28);
      v36 = (v34 == 1 ? v32 : v29);
      v37 = v34 == 1 ? v33 : v30;
      v66 = v34;
      if (v34 <= 2)
      {
        v38 = v36;
      }

      else
      {
        v35 = v22;
        v38 = v23;
      }

      v39 = (v34 <= 2 ? v37 : v24);
      v64 = *v35;
      if (*v35)
      {
        break;
      }

LABEL_64:
      v34 = v66 + 1;
      v23 = (v18 + 3506);
      v22 = (v18 + 3504);
      v25 = v18 + 3488;
      v24 = v18 + 3512;
      v27 = v18 + 3496;
      v26 = v18 + 3490;
      if (v66 == 4)
      {
        *(v18 + 2748) = 33620225;
        *(v18 + 2752) = 513;
        *(v18 + 2777) = 1;
        *(v18 + 2755) = 0x101010101010101;
        *(v18 + 2763) = 0x101010101010101;
        if ((*(v18 + 3220) & 0x80000000) == 0)
        {
          *(v18 + 2919) = 1;
        }

        a4 = v63;
        if ((*(v18 + 3224) & 0x80000000) == 0)
        {
          *(v18 + 2920) = 1;
        }

        if ((*(v18 + 3212) & 0x80000000) == 0)
        {
          *(v18 + 2824) = 1;
        }

        if ((*(v18 + 3168) & 0x80000000) == 0)
        {
          *(v18 + 2813) = 1;
        }

        if ((*(v18 + 3172) & 0x80000000) == 0)
        {
          *(v18 + 2814) = 1;
        }

        if ((*(v18 + 3176) & 0x80000000) == 0)
        {
          *(v18 + 2815) = 1;
        }

        if ((*(v18 + 3180) & 0x80000000) == 0)
        {
          *(v18 + 2816) = 1;
        }

        if ((*(v18 + 3184) & 0x80000000) == 0)
        {
          *(v18 + 2817) = 1;
        }

        if ((*(v18 + 3188) & 0x80000000) == 0)
        {
          *(v18 + 2818) = 1;
        }

        if ((*(v18 + 3192) & 0x80000000) == 0)
        {
          *(v18 + 2819) = 1;
          *(v18 + 2825) = 1;
        }

        if ((*(v18 + 3196) & 0x80000000) == 0)
        {
          *(v18 + 2820) = 1;
        }

        if ((*(v18 + 3200) & 0x80000000) == 0)
        {
          *(v18 + 2821) = 1;
        }

        if ((*(v18 + 3204) & 0x80000000) == 0)
        {
          *(v18 + 2822) = 1;
        }

        *(v18 + 2804) = -1;
        *(v18 + 2799) = -1;
        if (*(v18 + 2684))
        {
          *(v18 + 2958) = 257;
        }

        if (*(v18 + 2516))
        {
          *(v18 + 2803) = 1;
        }

        if ((*(v18 + 3104) & 0x80000000) == 0)
        {
          *(v18 + 2779) = 257;
          if ((*(v18 + 3208) & 0x80000000) == 0)
          {
            *(v18 + 2823) = 1;
          }
        }

        if ((*(v18 + 3120) & 0x80000000) == 0)
        {
          *(v18 + 2781) = 1;
        }

        if ((*(v18 + 3068) & 0x80000000) == 0)
        {
          *(v18 + 2773) = 257;
          v57 = *(v18 + 2736) != 0;
          *(v18 + 2960) = v57;
          *(v18 + 2961) = v57;
        }

        *(v18 + 2964) = *(v18 + 3324) >= 0;
        *(v18 + 2965) = *(v18 + 3328) >= 0;
        if ((*(v18 + 3392) & 0x80000000) == 0 || (*(v18 + 3396) & 0x80000000) == 0)
        {
          *(v18 + 2772) = 8;
        }

        if ((*(v18 + 3072) & 0x80000000) == 0)
        {
          *(v18 + 2775) = 257;
          v58 = *(v18 + 2740) != 0;
          *(v18 + 2962) = v58;
          *(v18 + 2963) = v58;
        }

        v10 = 0;
        if (*(v18 + 2560))
        {
          *(v18 + 2794) = 9;
        }

        goto LABEL_120;
      }
    }

    v67 = *v39;
    v68 = 0;
    v65 = *v38;
LABEL_32:
    v40 = uselect_AddGenericContextRule(__dst, v18, &v76);
    if ((v40 & 0x80000000) != 0 || (v69 = v76, v40 = uselect_AddGCRAction(__dst, v76, &v74), (v40 & 0x80000000) != 0))
    {
LABEL_113:
      v10 = v40;
      a4 = v63;
      goto LABEL_120;
    }

    v41 = v74;
    *v74 = v66;
    v42 = v68 * v65 + v65;
    *(v41 + 4) = *(v67 + v42 - 2);
    v43 = *(v67 + v42 - 1);
    v41[2] = v43;
    if (v66 != 4)
    {
      if (v43)
      {
        if (v43 == 1)
        {
          v44 = 0;
        }

        else
        {
          v44 = 10 * v43;
        }
      }

      else
      {
        v44 = 10;
      }

      v41[2] = v44;
    }

    v45 = 0;
    if (*(v18 + 3092) < 0)
    {
      v46 = 4;
    }

    else
    {
      v46 = 6;
    }

    v47 = v67 + v68 * v65;
    while (1)
    {
      v77 = 0u;
      v78 = 0u;
      if ((v45 & 0x7FFFFFFE) == 4)
      {
        v48 = *(v18 + 2464);
        if (*v48)
        {
          v49 = 0;
          v50 = *(*(v18 + 3432) + 8 * *(v47 + v45));
          v51 = 1;
          do
          {
            if (strchr(v50, v49 + 48))
            {
              *(&v77 + (v49 >> 3)) |= 1 << (v49 & 7);
            }

            else
            {
              v51 = 0;
            }

            ++v49;
          }

          while (v48[v49]);
          goto LABEL_59;
        }
      }

      else
      {
        v52 = *(v18 + 602);
        if (v52)
        {
          v53 = *(*(v18 + 3424) + 8 * *(v47 + v45));
          v51 = 1;
          v54 = (v18 + 603);
          do
          {
            if (strchr(v53, v52))
            {
              *(&v77 + (v52 >> 3)) |= 1 << (v52 & 7);
            }

            else
            {
              v51 = 0;
            }

            v55 = *v54++;
            v52 = v55;
          }

          while (v55);
LABEL_59:
          if (!v51)
          {
            v40 = uselect_AddGCRCondition(__dst, v69, &v75);
            if ((v40 & 0x80000000) != 0)
            {
              goto LABEL_113;
            }

            v56 = v75;
            *v75 = 0;
            *(v56 + 3) = v77;
            *(v56 + 19) = v78;
            v56[1] = 0x1D1D02020202uLL >> (8 * v45);
            v56[2] = 0x10002FF0100uLL >> (8 * v45);
          }
        }
      }

      if (++v45 == v46)
      {
        v28 = v18 + 3472;
        ++v68;
        v30 = v18 + 3480;
        v29 = v18 + 3474;
        v32 = v18 + 3442;
        v31 = v18 + 3440;
        v33 = v18 + 3448;
        if (v68 == v64)
        {
          goto LABEL_64;
        }

        goto LABEL_32;
      }
    }
  }

  v10 = v21;
  LOBYTE(v77) = 0;
  if (LOBYTE(v82[0]))
  {
    v61 = 0;
    do
    {
      __strcat_chk();
      __strcat_chk();
      ++v61;
    }

    while (*(v82 + 5 * v61));
  }

  log_OutPublic(*&__dst[2], "USELECT", 19000, "%s%s%s%s%s%x", v14, v15, v16, v17, "file");
LABEL_120:
  if (v73)
  {
    ssftriff_reader_ObjClose(v73, v11, v12, v13, v14, v15, v16, v17);
    v73 = 0;
  }

  if ((v10 & 0x80000000) != 0)
  {
    if ((v10 & 0x1FFF) == 0xA)
    {
      log_OutPublic(*&__dst[2], "USELECT", 19000, 0, v14, v15, v16, v17, v62);
    }

    uselect_VoiceClose(a1, a2, v18);
    v18 = 0;
  }

  *(a4 + 32) = v18;
LABEL_112:
  v59 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t uselect_VoiceClose(_WORD *a1, int a2, uint64_t a3)
{
  v53 = 0;
  if (!a3)
  {
    return 0;
  }

  inited = InitRsrcFunction(a1, a2, &v53);
  if ((inited & 0x80000000) == 0)
  {
    v5 = *(a3 + 28232);
    if (v5)
    {
      heap_Free(v53[1], v5);
    }

    v6 = *(a3 + 28160);
    if (v6)
    {
      heap_Free(v53[1], v6);
    }

    v7 = *(a3 + 3512);
    if (v7)
    {
      heap_Free(v53[1], v7);
      *(a3 + 3512) = 0;
    }

    v8 = *(a3 + 3448);
    if (v8)
    {
      heap_Free(v53[1], v8);
      *(a3 + 3448) = 0;
    }

    v9 = *(a3 + 3480);
    if (v9)
    {
      heap_Free(v53[1], v9);
      *(a3 + 3480) = 0;
    }

    v10 = *(a3 + 3496);
    if (v10)
    {
      heap_Free(v53[1], v10);
      *(a3 + 3496) = 0;
    }

    v11 = *(a3 + 3520);
    if (v11)
    {
      v12 = v53;
      do
      {
        v13 = v11;
        v11 = v11[2];
        v14 = *v13;
        if (*v13)
        {
          do
          {
            v15 = *(v14 + 40);
            heap_Free(v12[1], v14);
            v14 = v15;
          }

          while (v15);
          v13 = *(a3 + 3520);
        }

        v16 = v13[1];
        if (v16)
        {
          do
          {
            v17 = *(v16 + 16);
            heap_Free(v12[1], v16);
            v16 = v17;
          }

          while (v17);
          v13 = *(a3 + 3520);
        }

        heap_Free(v12[1], v13);
        *(a3 + 3520) = v11;
      }

      while (v11);
    }

    v18 = *(a3 + 3416);
    if (v18)
    {
      v19 = *(a3 + 3408);
      if (v19)
      {
        do
        {
          *(a3 + 3408) = --v19;
          v20 = *(a3 + 3416);
          v21 = v20 + 24 * v19;
          v24 = *(v21 + 8);
          v23 = (v21 + 8);
          v22 = v24;
          if (v24)
          {
            heap_Free(v53[1], v22);
            *v23 = 0;
            v20 = *(a3 + 3416);
            v19 = *(a3 + 3408);
          }

          v25 = *(v20 + 24 * v19 + 16);
          if (v25)
          {
            heap_Free(v53[1], v25);
            v19 = *(a3 + 3408);
          }
        }

        while (v19);
        v18 = *(a3 + 3416);
      }

      heap_Free(v53[1], v18);
    }

    v26 = v53;
    v27 = *(a3 + 3336);
    if (v27)
    {
      v28 = *v27;
      if (*v27)
      {
        v29 = 0;
        do
        {
          heap_Free(v26[1], v28);
          ++v29;
          v27 = *(a3 + 3336);
          v28 = v27[v29];
        }

        while (v28);
      }

      heap_Free(v26[1], v27);
      *(a3 + 3336) = 0;
    }

    v30 = *(a3 + 3344);
    if (v30)
    {
      v31 = *v30;
      if (*v30)
      {
        v32 = 0;
        v33 = 0;
        do
        {
          v34 = *v31;
          if (*v31)
          {
            v35 = 0;
            do
            {
              heap_Free(v26[1], v34);
              ++v35;
              v31 = *(*(a3 + 3344) + 8 * v32);
              v34 = v31[v35];
            }

            while (v34);
          }

          heap_Free(v26[1], v31);
          ++v33;
          v30 = *(a3 + 3344);
          v32 = v33;
          v31 = v30[v33];
        }

        while (v31);
      }

      heap_Free(v26[1], v30);
      *(a3 + 3344) = 0;
    }

    v36 = *(a3 + 3352);
    if (v36)
    {
      v37 = *v36;
      if (*v36)
      {
        v38 = 0;
        do
        {
          heap_Free(v26[1], v37);
          ++v38;
          v36 = *(a3 + 3352);
          v37 = v36[v38];
        }

        while (v37);
      }

      heap_Free(v26[1], v36);
      *(a3 + 3352) = 0;
    }

    uselect_FreeRiffStringTable(v53, *(a3 + 3432));
    uselect_FreeRiffStringTable(v53, *(a3 + 3424));
    uselect_FreeRiffStringTable(v53, *(a3 + 2464));
    uselect_FreeRiffStringTable(v53, *(a3 + 28248));
    uselect_FreeRiffStringTable(v53, *(a3 + 28240));
    uselect_FreeRiffStringTable(v53, *(a3 + 28264));
    uselect_FreeRiffStringTable(v53, *(a3 + 28256));
    v45 = *(a3 + 2968);
    if (v45)
    {
      heap_Free(v53[1], v45);
    }

    v46 = *(a3 + 3368);
    if (v46)
    {
      heap_Free(v53[1], v46);
    }

    if (*(a3 + 600))
    {
      v47 = 0;
      do
      {
        ssftriff_reader_ReleaseChunkData(*(a3 + 408 + 8 * v47++), v46, v39, v40, v41, v42, v43, v44);
      }

      while (v47 < *(a3 + 600));
    }

    *(a3 + 600) = 0;
    v48 = v53;
    v49 = *(a3 + 3552);
    if (v49)
    {
      v50 = *(v49 + 152);
      if (v50)
      {
        heap_Free(v53[1], v50);
      }

      if (*(v49 + 104))
      {
        v51 = 0;
        do
        {
          ssftriff_reader_ReleaseChunkData(*(v49 + 8 + 8 * v51++), v50, v39, v40, v41, v42, v43, v44);
        }

        while (v51 < *(v49 + 104));
      }

      heap_Free(v48[1], v49);
      v48 = v53;
    }

    *(a3 + 3552) = 0;
    heap_Free(v48[1], a3);
  }

  return inited;
}

uint64_t uselect_CheckForDataFile(_WORD *a1, uint64_t a2, const char *a3, _DWORD *a4)
{
  v15 = 0;
  *a4 = 0;
  v12 = ssftriff_reader_ObjOpen(a1, a2, 2, a3, "USEL", 1031, &v15);
  v13 = v15;
  if ((v12 & 0x80000000) == 0 && v15)
  {
    *a4 = 1;
LABEL_5:
    ssftriff_reader_ObjClose(v13, v5, v6, v7, v8, v9, v10, v11);
    return v12;
  }

  if (v15)
  {
    goto LABEL_5;
  }

  return v12;
}

uint64_t uselect_ParseRiff(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned int a4, const char *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a7;
  v13 = a1;
  v181 = 0;
  v175 = 0;
  v187 = 0;
  v202 = *MEMORY[0x1E69E9840];
  __n = 0;
  v197 = 0;
  *__src = 0;
  v191 = 5 * a4;
  v182 = a3 + 3376;
  v183 = a3 + 3048;
  v178 = (a3 + 3024);
  v179 = (a3 + 3032);
  v180 = (a3 + 3016);
  v173 = (a3 + 3000);
  v174 = (a3 + 3040);
  v171 = (a3 + 2984);
  v172 = (a3 + 2992);
  v176 = (a3 + 2976);
  v177 = (a3 + 3008);
  __s = (a3 + 602);
  v186 = a3 + 3584 + 192 * a8;
  v184 = a3 + 408;
  v190 = a3 + 2144;
  v189 = a7;
  while (1)
  {
    v195 = 1;
    LODWORD(ChunkData) = ssftriff_reader_OpenChunk(a2, __src, &__n, 0, a5, a6, a7, a8);
    if ((ChunkData & 0x80000000) != 0)
    {
      goto LABEL_350;
    }

    strcpy(&a5[v191], __src);
    v20 = v13;
    if (a4 == 1)
    {
      break;
    }

    if (a4)
    {
      if (strcmp(a5 + 5, "CTXT"))
      {
        goto LABEL_40;
      }

      *&__dst = 0;
      if (*__src ^ 0x4C4C204C | v197)
      {
        if (!(*__src ^ 0x204C204C | v197))
        {
          v59 = 0;
          v70 = 0;
          goto LABEL_279;
        }

        if (!(*__src ^ 0x2052204C | v197))
        {
          v59 = 0;
          goto LABEL_155;
        }

        if (!(*__src ^ 0x5252204C | v197))
        {
          v59 = 0;
LABEL_192:
          v70 = 3;
          goto LABEL_279;
        }

        if (*__src ^ 0x4C4C2052 | v197)
        {
          if (*__src ^ 0x204C2052 | v197)
          {
            if (*__src ^ 0x20522052 | v197)
            {
              if (!(*__src ^ 0x52522052 | v197))
              {
                v59 = 1;
                goto LABEL_192;
              }

LABEL_290:
              if ((ChunkData & 0x1FFF) == 0x14)
              {
                LODWORD(ChunkData) = 0;
              }

              goto LABEL_314;
            }

            v59 = 1;
LABEL_155:
            v70 = 1;
          }

          else
          {
            v70 = 0;
            v59 = 1;
          }

LABEL_279:
          SubChunkInfo = uselect_GetSubChunkInfo(a2, a6, v8, __src, &__n, &__dst, v57, v58);
          if (SubChunkInfo < 0)
          {
            LODWORD(ChunkData) = SubChunkInfo;
            v13 = a1;
          }

          else
          {
            v135 = (v186 + 96 * v59 + 24 * v70);
            do
            {
              if (*__src ^ 0x4C424154 | v197)
              {
                v136 = a6;
                if (*__src ^ 0x20584449 | v197)
                {
                  if (!(*__src ^ 0x32584449 | v197))
                  {
                    v135[2] = __dst;
                  }
                }

                else
                {
                  v135[1] = __dst;
                }
              }

              else
              {
                *v135 = __dst;
                v136 = a6;
              }

              v137 = uselect_GetSubChunkInfo(a2, v136, v8, __src, &__n, &__dst, v133, v134);
            }

            while ((v137 & 0x80000000) == 0);
            LODWORD(ChunkData) = v137;
            v13 = a1;
          }

          goto LABEL_290;
        }

        v59 = 1;
      }

      else
      {
        v59 = 0;
      }

      v70 = 2;
      goto LABEL_279;
    }

    if (!(*__src ^ 0x464E4956 | v197))
    {
      v194 = 0;
      *v193 = 0;
      if (a6)
      {
        *v193 = a6 + ssftriff_reader_GetPosition(a2) - v8;
      }

      else
      {
        ChunkData = ssftriff_reader_GetChunkData(a2, __n, v193, v15, v16, v17, v18, v19);
        if ((ChunkData & 0x80000000) != 0)
        {
          goto LABEL_353;
        }
      }

      v64 = __n;
      if (!__n)
      {
        goto LABEL_141;
      }

      v65 = 0;
      while (1)
      {
        LOBYTE(__n_4) = 0;
        LOBYTE(__dst) = 0;
        v194 = 256;
        LODWORD(ChunkData) = ssftriff_reader_ReadStringZ(a2, *v193, v64, v65, &__dst, &v194);
        if ((ChunkData & 0x80000000) == 0 && v65 < __n)
        {
          v65 += v194;
          v194 = 256;
          LODWORD(ChunkData) = ssftriff_reader_ReadStringZ(a2, *v193, __n, v65, &__n_4, &v194);
        }

        if ((ChunkData & 0x80000000) != 0)
        {
          goto LABEL_140;
        }

        v69 = v194;
        if (__dst == 0x6E6F6973726556 || !(__dst ^ 0x6F69746375646552 | *(&__dst + 1) ^ 0x6E6F69737265566ELL | v201))
        {
          __strcpy_chk();
        }

        v65 += v69;
        v13 = v20;
        log_OutText(v20[4], "USELECT", 3, 0, "Voice attribute %s=%s", v66, v67, v68, &__dst);
        v64 = __n;
        if (v65 >= __n)
        {
          goto LABEL_141;
        }
      }
    }

    if (!(*__src ^ 0x54415453 | v197))
    {
      v194 = 0;
      *v193 = 0;
      if (a6)
      {
        *v193 = a6 + ssftriff_reader_GetPosition(a2) - v8;
      }

      else
      {
        ChunkData = ssftriff_reader_GetChunkData(a2, __n, v193, v15, v16, v17, v18, v19);
        if ((ChunkData & 0x80000000) != 0)
        {
          goto LABEL_353;
        }
      }

      v89 = __n;
      if (!__n)
      {
        goto LABEL_141;
      }

      v90 = 0;
      while (1)
      {
        LOBYTE(__n_4) = 0;
        LOBYTE(__dst) = 0;
        v194 = 64;
        LODWORD(ChunkData) = ssftriff_reader_ReadStringZ(a2, *v193, v89, v90, &__dst, &v194);
        if ((ChunkData & 0x80000000) == 0 && v90 < __n)
        {
          v90 += v194;
          v194 = 64;
          LODWORD(ChunkData) = ssftriff_reader_ReadStringZ(a2, *v193, __n, v90, &__n_4, &v194);
        }

        if ((ChunkData & 0x80000000) != 0)
        {
          break;
        }

        v94 = v194;
        if (__dst == 0x637469703A353970 && WORD4(__dst) == 104)
        {
          v99 = atoi(&__n_4);
          if (v99 >= 255)
          {
            v100 = 255;
          }

          else
          {
            v100 = v99;
          }

          *(a3 + 2499) = v100 & ~(v100 >> 31);
        }

        else if (__dst == 0x64676F6C3A353970 && *(&__dst + 3) == 0x727564676F6C3ALL)
        {
          v97 = atoi(&__n_4);
          if (v97 >= 255)
          {
            v98 = 255;
          }

          else
          {
            v98 = v97;
          }

          *(a3 + 2498) = v98 & ~(v98 >> 31);
        }

        v90 += v94;
        v13 = v20;
        log_OutText(v20[4], "USELECT", 3, 0, "Statistics %s=%s", v91, v92, v93, &__dst);
        v89 = __n;
        if (v90 >= __n)
        {
          goto LABEL_141;
        }
      }

LABEL_140:
      v13 = v20;
      goto LABEL_141;
    }

    if (!(*__src ^ 0x54414356 | v197))
    {
      if (a6)
      {
        ssftriff_reader_GetPosition(a2);
      }

      else
      {
        *&__dst = 0;
        v107 = ssftriff_reader_GetChunkData(a2, __n, &__dst, v15, v16, v17, v18, v19);
        if ((v107 & 0x80000000) != 0)
        {
          goto LABEL_355;
        }
      }

      goto LABEL_312;
    }

    if (!(*__src ^ 0x504F4256 | v197))
    {
      *&__dst = 0;
      __n_4 = 0;
      if (a6)
      {
        *&__dst = a6 + ssftriff_reader_GetPosition(a2) - v8;
      }

      else
      {
        ChunkData = ssftriff_reader_GetChunkData(a2, __n, &__dst, v15, v16, v17, v18, v19);
        if ((ChunkData & 0x80000000) != 0)
        {
          goto LABEL_353;
        }
      }

      if (__n >= 0xF9)
      {
        goto LABEL_354;
      }

      memcpy((a3 + 2500), __dst, __n);
      if ((paramc_ParamGetUInt(v13[5], "uselectmaxcandspruning", &__n_4) & 0x80000000) == 0 && __n_4)
      {
        *(a3 + 2552) = __n_4;
      }

      if (__n <= 0x8F)
      {
        *(a3 + 2640) = 400000;
        goto LABEL_172;
      }

      if (__n <= 0xC3)
      {
LABEL_172:
        *(a3 + 2692) = 0;
        goto LABEL_173;
      }

      if (__n <= 0xC7)
      {
LABEL_173:
        *(a3 + 2696) = 0;
      }

      else if (__n > 0xCB)
      {
        if (__n > 0xCF)
        {
          if (__n > 0xD3)
          {
            if (__n > 0xD7)
            {
              if (__n > 0xDB)
              {
                if (__n > 0xDF)
                {
                  if (__n > 0xE3)
                  {
                    if (__n > 0xE7)
                    {
                      if (__n > 0xEB)
                      {
                        if (__n > 0xEF)
                        {
                          if (__n > 0xF3)
                          {
                            if (__n > 0xF7)
                            {
                              goto LABEL_186;
                            }

                            goto LABEL_185;
                          }

LABEL_184:
                          *(a3 + 2740) = 0;
LABEL_185:
                          *(a3 + 2744) = 0;
LABEL_186:
                          if (!*(a3 + 2672) && !*(a3 + 2676) && !*(a3 + 2664) && !*(a3 + 2652))
                          {
                            *(a3 + 2672) = -1;
                          }

                          goto LABEL_314;
                        }

LABEL_183:
                        *(a3 + 2736) = 0;
                        goto LABEL_184;
                      }

LABEL_182:
                      *(a3 + 2732) = 0;
                      goto LABEL_183;
                    }

LABEL_181:
                    *(a3 + 2728) = 2;
                    goto LABEL_182;
                  }

LABEL_180:
                  *(a3 + 2724) = 1;
                  goto LABEL_181;
                }

LABEL_179:
                *(a3 + 2720) = 5;
                goto LABEL_180;
              }

LABEL_178:
              *(a3 + 2716) = 2;
              goto LABEL_179;
            }

LABEL_177:
            *(a3 + 2712) = 0;
            goto LABEL_178;
          }

LABEL_176:
          *(a3 + 2708) = 5;
          goto LABEL_177;
        }

LABEL_175:
        *(a3 + 2704) = 1;
        goto LABEL_176;
      }

      *(a3 + 2700) = 0;
      goto LABEL_175;
    }

    if (!(*__src ^ 0x584D5054 | v197) || !(*__src ^ 0x4E4D5054 | v197))
    {
      *&__dst = 0;
      ChunkData = ssftriff_reader_DetachChunkData(a2, (v184 + 8 * *(a3 + 600)), &__dst, v15, v16, v17, v18, v19);
      if ((ChunkData & 0x80000000) != 0)
      {
        goto LABEL_353;
      }

      ++*(a3 + 600);
      v84 = *(a3 + 2464);
      if (!v84)
      {
        goto LABEL_354;
      }

      v85 = 0;
      do
      {
        v86 = v85;
      }

      while (*(v84 + 8 * v85++));
      if (!v86 || (__n >> 2) != 2 * v86)
      {
        goto LABEL_354;
      }

      v88 = 2480;
      if (*__src ^ 0x584D5054 | v197)
      {
        v88 = 2488;
      }

      *(a3 + v88) = __dst;
      goto LABEL_314;
    }

    if (!(*__src ^ 0x46455250 | v197))
    {
      *&__dst = 0;
      if (a6)
      {
        v129 = (a6 + ssftriff_reader_GetPosition(a2) - v8);
        *&__dst = v129;
      }

      else
      {
        v107 = ssftriff_reader_GetChunkData(a2, __n, &__dst, v15, v16, v17, v18, v19);
        if ((v107 & 0x80000000) != 0)
        {
          goto LABEL_355;
        }

        v129 = __dst;
      }

      *(a3 + 2966) = *v129;
      ssftriff_reader_Seek(a2, 4u, 1);
      v139 = heap_Calloc(v13[1], 32, *(a3 + 2966) + 1);
      *(a3 + 2968) = v139;
      if (!v139)
      {
        goto LABEL_356;
      }

      *(v139 + 32 * *(a3 + 2966)) = 0;
      goto LABEL_312;
    }

    if (!(*__src ^ 0x46415254 | v197))
    {
      *&__dst = 0;
      if (a6)
      {
        v131 = (a6 + ssftriff_reader_GetPosition(a2) - v8);
        *&__dst = v131;
      }

      else
      {
        v107 = ssftriff_reader_GetChunkData(a2, __n, &__dst, v15, v16, v17, v18, v19);
        if ((v107 & 0x80000000) != 0)
        {
          goto LABEL_355;
        }

        v131 = __dst;
      }

      *(a3 + 3360) = *v131;
      ssftriff_reader_Seek(a2, 4u, 1);
      v140 = heap_Calloc(v13[1], 12, *(a3 + 3360));
      *(a3 + 3368) = v140;
      if (!v140)
      {
        goto LABEL_356;
      }

LABEL_312:
      RiffStringTable = uselect_ParseRiff(v13, a2, a3, 1, a5, 0, 0, 0);
      goto LABEL_313;
    }

    if (!(*__src ^ 0x5A5A5546 | v197))
    {
      *&__dst = 0;
      if (a6)
      {
        v138 = (a6 + ssftriff_reader_GetPosition(a2) - v8);
        *&__dst = v138;
      }

      else
      {
        v107 = ssftriff_reader_GetChunkData(a2, __n, &__dst, v15, v16, v17, v18, v19);
        if ((v107 & 0x80000000) != 0)
        {
          goto LABEL_355;
        }

        v138 = __dst;
      }

      v150 = *v138;
      ssftriff_reader_Seek(a2, 4u, 1);
      v151 = heap_Calloc(v13[1], 24, (v150 + 2));
      *(a3 + 3416) = v151;
      if (!v151)
      {
LABEL_356:
        ChunkData = 2229280778;
        goto LABEL_353;
      }

      *(a3 + 3408) = 1;
      LODWORD(ChunkData) = uselect_ParseRiff(v13, a2, a3, 1, a5, 0, 0, 0);
      goto LABEL_297;
    }

    if (!(*__src ^ 0x52585443 | v197))
    {
      RiffStringTable = uselect_ParseContextRules(v13, a2, a3, v15, v16, v17, v18, v19);
      goto LABEL_313;
    }

    if (!(*__src ^ 0x52544347 | v197))
    {
      RiffStringTable = uselect_ParseGenericContextRule(v13, a2, a3, __n, v16, v17, v18, v19);
      goto LABEL_313;
    }

    if (!(*__src ^ 0x464E4547 | v197))
    {
      RiffStringTable = uselect_ParseGenericFeatureMap(v13, a2, a3, __n, v16, v17, v18, v19);
      goto LABEL_313;
    }

    if (!(*__src ^ 0x52414350 | v197))
    {
      goto LABEL_330;
    }

    if (!(*__src ^ 0x52414344 | v197))
    {
      Position = ssftriff_reader_GetPosition(a2);
      *&__dst = 0;
      v107 = ssftriff_reader_DetachChunkData(a2, (v184 + 8 * *(a3 + 600)), &__dst, v159, v160, v161, v162, v163);
      if ((v107 & 0x80000000) != 0)
      {
LABEL_355:
        ChunkData = v107;
        goto LABEL_353;
      }

      ++*(a3 + 600);
      v164 = strlen(__s);
      v165 = heap_Calloc(v13[1], v164, 8);
      *(a3 + 28232) = v165;
      if (!v165)
      {
        goto LABEL_356;
      }

LABEL_335:
      LODWORD(ChunkData) = uselect_ParseRiff(v13, a2, a3, 1, a5, __dst, Position, 0);
LABEL_141:
      v8 = v189;
      goto LABEL_314;
    }

    if (*__src ^ 0x53494850 | v197)
    {
      if (!(*__src ^ 0x49445453 | v197) || !(*__src ^ 0x53535453 | v197))
      {
LABEL_330:
        Position = ssftriff_reader_GetPosition(a2);
        *&__dst = 0;
        v107 = ssftriff_reader_DetachChunkData(a2, (v184 + 8 * *(a3 + 600)), &__dst, v154, v155, v156, v157, v158);
        if ((v107 & 0x80000000) != 0)
        {
          goto LABEL_355;
        }

        ++*(a3 + 600);
        goto LABEL_335;
      }

      if (*__src ^ 0x4B424443 | v197)
      {
        if (!(*__src ^ 0x534F4343 | v197))
        {
          goto LABEL_330;
        }

        RiffStringTable = uselect_ParseVoicePartChunks(v13, a2, a3, __n, __src, &v195);
        goto LABEL_313;
      }

      *&__dst = 0;
      ChunkData = ssftriff_reader_DetachChunkData(a2, (v184 + 8 * *(a3 + 600)), &__dst, v15, v16, v17, v18, v19);
      if ((ChunkData & 0x80000000) != 0)
      {
        goto LABEL_353;
      }

      ++*(a3 + 600);
      v167 = *(a3 + 2608);
      if (!v167)
      {
        goto LABEL_348;
      }

      if (v167 != 256)
      {
        if (v167 != 128)
        {
          goto LABEL_358;
        }

LABEL_348:
        *(a3 + 3560) = __dst;
        goto LABEL_314;
      }

      *(a3 + 3568) = __dst;
    }

    else
    {
      *&__dst = 0;
      if (a6)
      {
        *&__dst = a6 + ssftriff_reader_GetPosition(a2) - v8;
      }

      else
      {
        ChunkData = ssftriff_reader_GetChunkData(a2, __n, &__dst, v15, v16, v17, v18, v19);
        if ((ChunkData & 0x80000000) != 0)
        {
          goto LABEL_353;
        }
      }

      v166 = heap_Alloc(v13[1], __n);
      *(a3 + 28160) = v166;
      if (!v166)
      {
        goto LABEL_356;
      }

      memcpy(v166, __dst, __n);
    }

LABEL_314:
    if (!v195)
    {
      goto LABEL_315;
    }

LABEL_318:
    if ((ChunkData & 0x80000000) != 0)
    {
      goto LABEL_350;
    }

    v146 = ssftriff_reader_CloseChunk(a2);
    if (v146 < 0)
    {
      LODWORD(ChunkData) = v146;
LABEL_350:
      if ((ChunkData & 0x1FFF) == 0x14)
      {
        ChunkData = 0;
      }

      else
      {
        ChunkData = ChunkData;
      }

      goto LABEL_353;
    }
  }

  if (!strcmp(a5, "VCAT"))
  {
    *&__dst = 0;
    if (a6)
    {
      *&__dst = a6 + ssftriff_reader_GetPosition(a2) - v8;
    }

    else
    {
      ChunkData = ssftriff_reader_GetChunkData(a2, __n, &__dst, v22, v23, v24, v25, v26);
      if ((ChunkData & 0x80000000) != 0)
      {
        goto LABEL_353;
      }
    }

    if (!(*__src ^ 0x48504C41 | v197))
    {
      __n_4 = 257;
      LODWORD(ChunkData) = ssftriff_reader_ReadStringZ(a2, __dst, __n, 0, __s, &__n_4);
      if ((ChunkData & 0x80000000) == 0)
      {
        *(a3 + 2496) = 255;
        if (*(a3 + 602))
        {
          v71 = 0;
          v72 = 0;
          v73 = 0;
          v74 = -1;
          do
          {
            v75 = __s[v72];
            if (v75 >= v74)
            {
              v76 = __s[v72];
            }

            else
            {
              *(a3 + 2496) = v75;
              v76 = __s[v72];
              v74 = v75;
            }

            if (v76 <= v71)
            {
              v77 = v76;
            }

            else
            {
              *(a3 + 2497) = v76;
              v77 = __s[v72];
              v71 = v76;
            }

            *(v190 + v77) = v73;
            v72 = (v73 + 1);
            v78 = strlen(__s);
            v73 = v72;
          }

          while (v78 > v72);
          v79 = v71 - v74 + 1;
          v13 = a1;
          v8 = v189;
        }

        else
        {
          v79 = 2;
        }

        *(a3 + 3576) = v79 + 1;
        *(a3 + 3577) = v79;
      }

      goto LABEL_314;
    }

    if (*__src ^ 0x43494F56 | v197)
    {
      if (*__src ^ 0x4F564F43 | v197)
      {
        if (*__src ^ 0x45464153 | v197)
        {
          if (*__src ^ 0x534F4C50 | v197)
          {
            if (*__src ^ 0x4F4E4F53 | v197)
            {
              if (*__src ^ 0x46464944 | v197)
              {
                if (*__src ^ 0x41474154 | v197)
                {
                  if (*__src ^ 0x4C534231 | v197)
                  {
                    if (*__src ^ 0x52534231 | v197)
                    {
                      if (*__src ^ 0x4C534232 | v197)
                      {
                        if (*__src ^ 0x52534232 | v197)
                        {
                          v195 = 0;
                          goto LABEL_314;
                        }

                        v147 = __dst;
                        v148 = __n;
                        v152 = 28264;
                      }

                      else
                      {
                        v147 = __dst;
                        v148 = __n;
                        v152 = 28256;
                      }
                    }

                    else
                    {
                      v147 = __dst;
                      v148 = __n;
                      v152 = 28248;
                    }
                  }

                  else
                  {
                    v147 = __dst;
                    v148 = __n;
                    v152 = 28240;
                  }

                  v149 = (a3 + v152);
                }

                else
                {
                  v147 = __dst;
                  v148 = __n;
                  v149 = (a3 + 2464);
                }

                RiffStringTable = uselect_LoadRiffStringTable(v13, a2, v147, v148, v149);
                goto LABEL_313;
              }

              __n_4 = 64;
              v102 = __dst;
              v103 = __n;
              v104 = (a3 + 2400);
            }

            else
            {
              __n_4 = 257;
              v102 = __dst;
              v103 = __n;
              v104 = (a3 + 1887);
            }
          }

          else
          {
            __n_4 = 257;
            v102 = __dst;
            v103 = __n;
            v104 = (a3 + 1373);
          }
        }

        else
        {
          __n_4 = 257;
          v102 = __dst;
          v103 = __n;
          v104 = (a3 + 1630);
        }
      }

      else
      {
        __n_4 = 257;
        v102 = __dst;
        v103 = __n;
        v104 = (a3 + 1116);
      }
    }

    else
    {
      __n_4 = 257;
      v102 = __dst;
      v103 = __n;
      v104 = (a3 + 859);
    }

    RiffStringTable = ssftriff_reader_ReadStringZ(a2, v102, v103, 0, v104, &__n_4);
LABEL_313:
    LODWORD(ChunkData) = RiffStringTable;
    goto LABEL_314;
  }

  if (!strcmp(a5, "PREF") && !(*__src ^ 0x54414546 | v197))
  {
    *&__dst = 0;
    if (a6)
    {
      v101 = (a6 + ssftriff_reader_GetPosition(a2) - v8);
    }

    else
    {
      v107 = ssftriff_reader_GetChunkData(a2, __n, &__dst, v27, v28, v29, v30, v31);
      if ((v107 & 0x80000000) != 0)
      {
        goto LABEL_355;
      }

      v101 = __dst;
    }

    v108 = *v101;
    *&__dst = v101 + 1;
    if (v108 >= 0x47)
    {
LABEL_354:
      ChunkData = 2229280772;
      log_OutPublic(v13[4], "USELECT", 19008, 0, v80, v81, v82, v83, v170);
      goto LABEL_353;
    }

    *(v183 + 4 * v108) = v187;
    v109 = *(a3 + 2968) + 32 * v187;
    *v109 = v108;
    *(v109 + 8) = v101[1];
    *(v109 + 4) = *(v101 + 1);
    *(v109 + 10) = *(v101 + 8) + 1;
    *(v109 + 11) = *(v101 + 9);
    *(v109 + 12) = *(v101 + 10);
    *(v109 + 13) = *(v101 + 11);
    *&__dst = v101 + 6;
    LODWORD(ChunkData) = uselect_InitForPreselDistFunc(v109);
    v110 = *(a3 + 2968) + 32 * v187;
    *(v110 + 25) = v187;
    v111 = *v110;
    if (*v110 <= 9)
    {
      if (v111 > 4)
      {
        v112 = v177;
        if (v111 == 5)
        {
          goto LABEL_267;
        }

        v112 = v172;
        if (v111 == 7)
        {
          goto LABEL_267;
        }
      }

      else
      {
        v112 = v176;
        if (v111 == 1)
        {
          goto LABEL_267;
        }

        v112 = v171;
        if (v111 == 2)
        {
          goto LABEL_267;
        }
      }
    }

    else
    {
      if (v111 > 13)
      {
        v112 = v180;
        if (v111 != 14)
        {
          v112 = v179;
          if (v111 != 26)
          {
            v112 = v174;
            if (v111 != 27)
            {
              goto LABEL_268;
            }
          }
        }

LABEL_267:
        *v112 = v110;
        goto LABEL_268;
      }

      v112 = v178;
      if (v111 == 10)
      {
        goto LABEL_267;
      }

      v112 = v173;
      if (v111 == 11)
      {
        goto LABEL_267;
      }
    }

LABEL_268:
    v124 = v187;
LABEL_269:
    ++v124;
    goto LABEL_270;
  }

  if (!strcmp(a5, "TRAF") && !(*__src ^ 0x54414546 | v197))
  {
    *&__dst = 0;
    if (a6)
    {
      v105 = (a6 + ssftriff_reader_GetPosition(a2) - v8);
    }

    else
    {
      ChunkData = ssftriff_reader_GetChunkData(a2, __n, &__dst, v32, v33, v34, v35, v36);
      if ((ChunkData & 0x80000000) != 0)
      {
        goto LABEL_353;
      }

      v105 = __dst;
    }

    v113 = *v105;
    *&__dst = v105 + 1;
    if (v113 >= 8)
    {
      goto LABEL_354;
    }

    if (v113 == 1)
    {
      v114 = 0;
    }

    else
    {
      if (v113 != 3)
      {
        if (v187 == 2)
        {
          v125 = 3;
        }

        else
        {
          v125 = v187;
        }

        *(v182 + 4 * v113) = v125;
        v126 = *(a3 + 3368) + 12 * v125;
        *v126 = v113;
        v128 = *(v105 + 1);
        v127 = v105 + 2;
        *(v126 + 8) = *(v127 - 1);
        *&__dst = v127;
        v124 = v125;
        *(v126 + 4) = v128;
        goto LABEL_269;
      }

      v114 = 2;
    }

    *(v182 + 4 * v113) = v114;
    v121 = *(a3 + 3368) + 12 * v114;
    *v121 = v113;
    v123 = *(v105 + 1);
    v122 = v105 + 2;
    *(v121 + 8) = *(v122 - 1);
    *&__dst = v122;
    *(v121 + 4) = v123;
    v124 = v187;
    if (v114 == v187)
    {
      goto LABEL_269;
    }

LABEL_270:
    v187 = v124;
    goto LABEL_314;
  }

  if (strcmp(a5, "FUZZ"))
  {
    goto LABEL_31;
  }

  if (!(*__src ^ 0x4C425446 | v197))
  {
    *&__dst = 0;
    if (a6)
    {
      v106 = (a6 + ssftriff_reader_GetPosition(a2) - v8);
      *&__dst = v106;
    }

    else
    {
      v107 = ssftriff_reader_GetChunkData(a2, __n, &__dst, v37, v38, v39, v40, v41);
      if ((v107 & 0x80000000) != 0)
      {
        goto LABEL_355;
      }

      v106 = __dst;
    }

    LODWORD(ChunkData) = -2065686524;
    v115 = __n;
    v116 = (*(a3 + 3416) + 24 * *(a3 + 3408));
    v117 = *v106;
    *v116 = v117;
    v118 = v106[1];
    v116[1] = v118;
    v119 = 2 * v117 * v118;
    if (v119 + 4 <= v115)
    {
      v120 = heap_Alloc(v20[1], v119);
      *(v116 + 1) = v120;
      if (v120)
      {
        memcpy(v120, v106 + 2, 2 * *v116 * v116[1]);
        LODWORD(ChunkData) = 0;
      }

      else
      {
        LODWORD(ChunkData) = -2065686518;
      }
    }

    ++*(a3 + 3408);
    v8 = v189;
    goto LABEL_297;
  }

  if (*__src ^ 0x41425446 | v197)
  {
LABEL_31:
    if (!strcmp(a5, "PCAR"))
    {
      *&__dst = 0;
      if (a6)
      {
        *&__dst = a6 + ssftriff_reader_GetPosition(a2) - v8;
      }

      else
      {
        ChunkData = ssftriff_reader_GetChunkData(a2, __n, &__dst, v42, v43, v44, v45, v46);
        if ((ChunkData & 0x80000000) != 0)
        {
          goto LABEL_353;
        }
      }

      if (*__src ^ 0x46514143 | v197)
      {
        if (*__src ^ 0x49514143 | v197)
        {
          if (*__src ^ 0x56514143 | v197)
          {
            if (!(*__src ^ 0x4E544143 | v197))
            {
              *(a3 + 28200) = __dst;
            }
          }

          else
          {
            *(a3 + 28192) = __dst;
          }
        }

        else
        {
          *(a3 + 28184) = __dst;
        }
      }

      else
      {
        *(a3 + 28176) = __dst;
      }
    }

    else if (!strcmp(a5, "DCAR"))
    {
      *&__dst = 0;
      if (a6)
      {
        *&__dst = a6 + ssftriff_reader_GetPosition(a2) - v8;
      }

      else
      {
        ChunkData = ssftriff_reader_GetChunkData(a2, __n, &__dst, v47, v48, v49, v50, v51);
        if ((ChunkData & 0x80000000) != 0)
        {
          goto LABEL_353;
        }
      }

      if (*__src ^ 0x46514143 | v197)
      {
        if (*__src ^ 0x49514143 | v197)
        {
          if (*__src ^ 0x56514143 | v197)
          {
            if (!(*__src ^ 0x4E544143 | v197))
            {
              *(*(a3 + 28232) + 8 * v175++) = __dst;
            }
          }

          else
          {
            *(a3 + 28224) = __dst;
          }
        }

        else
        {
          *(a3 + 28216) = __dst;
        }
      }

      else
      {
        *(a3 + 28208) = __dst;
      }
    }

    else
    {
      if (!strcmp(a5, "CCOS") && !(*__src ^ 0x54585443 | v197))
      {
        LODWORD(ChunkData) = uselect_ParseRiff(v13, a2, a3, 2, a5, a6, v8, v181++);
LABEL_297:
        v13 = v20;
        goto LABEL_314;
      }

      if (strcmp(a5, "STDI") && strcmp(a5, "STSS"))
      {
LABEL_40:
        v195 = 0;
LABEL_315:
        v141 = v13;
        v142 = 0;
        LOBYTE(__dst) = 0;
        do
        {
          __strcat_chk();
          __strcat_chk();
          ++v142;
        }

        while (a4 >= v142);
        v13 = v141;
        log_OutText(v141[4], "USELECT", 3, 0, "Unknown data: %s for %s", v143, v144, v145, &__dst);
        goto LABEL_318;
      }

      *&__dst = 0;
      if (a6)
      {
        *&__dst = a6 + ssftriff_reader_GetPosition(a2) - v8;
      }

      else
      {
        ChunkData = ssftriff_reader_GetChunkData(a2, __n, &__dst, v52, v53, v54, v55, v56);
        if ((ChunkData & 0x80000000) != 0)
        {
          goto LABEL_353;
        }
      }

      if (*__src ^ 0x49565453 | v197)
      {
        if (!(*__src ^ 0x41565453 | v197))
        {
          if (!strcmp(a5, "STDI"))
          {
            *(a3 + 3536) = __dst;
          }

          else
          {
            *(a3 + 3544) = __dst;
          }
        }
      }

      else
      {
        *(a3 + 3528) = __dst;
      }
    }

    goto LABEL_314;
  }

  *&__dst = 0;
  if (a6)
  {
    *&__dst = a6 + ssftriff_reader_GetPosition(a2) - v8;
  }

  else
  {
    ChunkData = ssftriff_reader_GetChunkData(a2, __n, &__dst, v37, v38, v39, v40, v41);
    if ((ChunkData & 0x80000000) != 0)
    {
      goto LABEL_353;
    }
  }

  if (*(a3 + 3408))
  {
    v130 = heap_Calloc(v13[1], 1, __n);
    *(*(a3 + 3416) + 24 * *(a3 + 3408) - 8) = v130;
    if (v130)
    {
      memmove(v130, __dst, __n);
    }

    else
    {
      LODWORD(ChunkData) = -2065686518;
    }

    goto LABEL_297;
  }

  log_OutPublic(v13[4], "USELECT", 19008, 0, v60, v61, v62, v63, v170);
LABEL_358:
  ChunkData = 2229280772;
LABEL_353:
  v168 = *MEMORY[0x1E69E9840];
  return ChunkData;
}

uint64_t uselect_ParseContextRules(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26 = 0;
  v25 = 0;
  v24 = 0;
  v23 = 0;
  do
  {
    LODWORD(result) = ssftriff_reader_OpenChunk(a2, &v23, &v25, &v26, a5, a6, a7, a8);
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    if (!(v23 ^ 0x464C5552 | v24))
    {
      v19 = v26;
      v20 = v25;
      v21 = (a3 + 3424);
      goto LABEL_12;
    }

    if (!(v23 ^ 0x544C5552 | v24))
    {
      v19 = v26;
      v20 = v25;
      v21 = (a3 + 3432);
LABEL_12:
      LODWORD(result) = uselect_LoadRiffStringTable(a1, a2, v19, v20, v21);
      if ((result & 0x80000000) != 0)
      {
        break;
      }

      goto LABEL_18;
    }

    if (v23 ^ 0x52575346 | v24)
    {
      if (v23 ^ 0x57455250 | v24)
      {
        if (v23 ^ 0x44575254 | v24)
        {
          if (v23 ^ 0x50575254 | v24)
          {
            log_OutPublic(*(a1 + 32), "USELECT", 19008, 0, v12, v13, v14, v15, v22);
            LODWORD(result) = -2065686524;
            break;
          }

          v16 = v26;
          v17 = v25;
          v18 = (a3 + 3488);
        }

        else
        {
          v16 = v26;
          v17 = v25;
          v18 = (a3 + 3472);
        }
      }

      else
      {
        v16 = v26;
        v17 = v25;
        v18 = (a3 + 3440);
      }
    }

    else
    {
      v16 = v26;
      v17 = v25;
      v18 = (a3 + 3504);
    }

    LODWORD(result) = uselect_LoadRiffMatrix2D_U8(a1, v16, v17, v18);
    if ((result & 0x80000000) != 0)
    {
      break;
    }

LABEL_18:
    LODWORD(result) = ssftriff_reader_CloseChunk(a2);
  }

  while ((result & 0x80000000) == 0);
  if ((result & 0x1FFF) == 0x14)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t uselect_ParseGenericContextRule(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v47 = a4;
  v46 = 0;
  v45 = 0;
  v44 = 0;
  v42 = 0;
  v43 = 0;
  v41 = 0;
  ChunkData = ssftriff_reader_GetChunkData(a2, a4, &v46, a4, a5, a6, a7, a8);
  if ((ChunkData & 0x80000000) != 0)
  {
    goto LABEL_32;
  }

  ChunkData = ssftriff_reader_Seek(a2, 4u, 1);
  if ((ChunkData & 0x80000000) != 0)
  {
    goto LABEL_32;
  }

  v16 = *v46;
  v46 += 4;
  if (!v16)
  {
    ChunkData = uselect_AddGenericContextRule(a1, a3, &v43);
    if ((ChunkData & 0x80000000) == 0)
    {
      v23 = v43;
      while (1)
      {
        ChunkData = ssftriff_reader_OpenChunk(a2, &v44, &v47, &v46, v19, v20, v21, v22);
        if ((ChunkData & 0x80000000) != 0)
        {
          goto LABEL_32;
        }

        if (!(v44 ^ 0x43524347 | v45))
        {
          ChunkData = uselect_AddGCRCondition(a1, v23, &v42);
          if ((ChunkData & 0x80000000) != 0)
          {
            goto LABEL_32;
          }

          v30 = 0;
          v31 = v46;
          v32 = *v46;
          v33 = v42;
          *v42 = v32;
          v46 = v31 + 1;
          v34 = v31[1];
          v33[1] = v34;
          v46 = v31 + 2;
          v33[2] = v31[2];
          v35 = v31 + 3;
          v46 = v31 + 3;
          do
          {
            v33[v30 + 3] = *v35;
            v35 = ++v46;
            ++v30;
          }

          while (v30 != 32);
          if (!v32)
          {
            *(a3 + 2748 + v34) = 1;
          }

          goto LABEL_30;
        }

        if (v44 ^ 0x41524347 | v45)
        {
          v17 = 19008;
          goto LABEL_5;
        }

        ChunkData = uselect_AddGCRAction(a1, v23, &v41);
        if ((ChunkData & 0x80000000) != 0)
        {
          goto LABEL_32;
        }

        v24 = v46;
        v25 = *v46;
        v26 = v41;
        *v41 = v25;
        v46 = v24 + 1;
        v27 = v24[1];
        *(v26 + 4) = v27;
        if (v25 - 7 >= 2)
        {
          v28 = *(v24 + 1);
          v29 = 4;
        }

        else
        {
          v28 = *(v24 + 1);
          v29 = 8;
        }

        v26[2] = v28;
        v46 = &v24[v29];
        v17 = 19008;
        if (v25 > 8)
        {
          goto LABEL_5;
        }

        v36 = 1 << v25;
        if ((v36 & 0x72) != 0)
        {
          break;
        }

        if ((v36 & 0xC) != 0)
        {
          v37 = *(a3 + 3376 + 4 * v27);
          if (v37 < 0)
          {
            v17 = 19025;
            goto LABEL_5;
          }

          goto LABEL_29;
        }

        if ((v36 & 0x180) == 0)
        {
          goto LABEL_5;
        }

        if (v27 != 46)
        {
          v39 = 2229280772;
          log_OutPublic(*(a1 + 32), "USELECT", 19008, 0, v12, v13, v14, v15, v40);
          return v39;
        }

LABEL_30:
        v18 = ssftriff_reader_CloseChunk(a2);
        if ((v18 & 0x80000000) != 0)
        {
          goto LABEL_33;
        }
      }

      v37 = *(a3 + 3048 + 4 * v27);
      if (v37 < 0)
      {
        v17 = 19024;
        goto LABEL_5;
      }

LABEL_29:
      *(v26 + 4) = v37;
      goto LABEL_30;
    }

LABEL_32:
    v18 = ChunkData;
    goto LABEL_33;
  }

  v17 = 19022;
LABEL_5:
  v18 = -2065686524;
  log_OutPublic(*(a1 + 32), "USELECT", v17, 0, v12, v13, v14, v15, v40);
LABEL_33:
  if ((v18 & 0x1FFF) == 0x14)
  {
    return 0;
  }

  else
  {
    return v18;
  }
}

uint64_t uselect_ParseGenericFeatureMap(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v33 = *MEMORY[0x1E69E9840];
  *v31 = 0;
  v29 = a4;
  ChunkData = ssftriff_reader_GetChunkData(a2, a4, v31, a4, a5, a6, a7, a8);
  if ((ChunkData & 0x80000000) == 0)
  {
    v12 = **v31;
    if (**v31)
    {
      v13 = heap_Calloc(*(a1 + 8), v12 + 1, 8);
      a3[417] = v13;
      if (v13)
      {
        v14 = heap_Calloc(*(a1 + 8), v12 + 1, 8);
        a3[418] = v14;
        if (v14)
        {
          v15 = heap_Calloc(*(a1 + 8), v12 + 1, 8);
          a3[419] = v15;
          if (v15)
          {
            v16 = 0;
            v17 = 2;
            v28 = v12;
            while (1)
            {
              __dst[0] = 0;
              v30 = 256;
              ChunkData = ssftriff_reader_ReadStringZ(a2, *v31, v29, v17, __dst, &v30);
              v18 = v30;
              *(a3[417] + 8 * v16) = uselect_strdup(a1, __dst);
              if (!*(a3[417] + 8 * v16))
              {
                break;
              }

              v19 = v16;
              v20 = v18 + v17;
              v21 = *(*v31 + v20);
              *(a3[418] + 8 * v16) = heap_Calloc(*(a1 + 8), (v21 + 1), 8);
              if (!*(a3[418] + 8 * v16))
              {
                break;
              }

              *(a3[419] + 8 * v16) = heap_Calloc(*(a1 + 8), (v21 + 1), 1);
              if (!*(a3[419] + 8 * v16))
              {
                break;
              }

              v17 = v20 + 2;
              if (v21)
              {
                v22 = 0;
                while (1)
                {
                  v23 = v17;
                  __dst[0] = 0;
                  v30 = 256;
                  ChunkData = ssftriff_reader_ReadStringZ(a2, *v31, v29, v17, __dst, &v30);
                  v24 = v30;
                  *(*(a3[418] + 8 * v19) + 8 * v22) = uselect_strdup(a1, __dst);
                  if (!*(*(a3[418] + 8 * v19) + 8 * v22))
                  {
                    goto LABEL_19;
                  }

                  v17 += v24;
                  if (++v22 >= v21)
                  {
                    for (i = 0; i != v21; ++i)
                    {
                      *(*(a3[419] + 8 * v19) + i) = *(*v31 + v23 + v24 + i);
                    }

                    v17 = v23 + v24 + i;
                    LODWORD(v12) = v28;
                    break;
                  }
                }
              }

              v16 = v19 + 1;
              if (v19 + 1 >= v12)
              {
                goto LABEL_20;
              }
            }
          }
        }
      }

LABEL_19:
      ChunkData = 2229280778;
    }
  }

LABEL_20:
  v26 = *MEMORY[0x1E69E9840];
  return ChunkData;
}

uint64_t uselect_ParseVoicePartChunks(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *__s1, _DWORD *a6)
{
  v94 = a4;
  v11 = *(a3 + 3552);
  if (!strcmp(__s1, "CTUN"))
  {
    v93 = 0;
    ChunkData = ssftriff_reader_GetChunkData(a2, a4, &v93, v12, v13, v14, v15, v16);
    if ((ChunkData & 0x80000000) == 0)
    {
      *(v11 + 108) = *v93;
    }
  }

  else if (!strcmp(__s1, "CNT0"))
  {
    v93 = 0;
    ChunkData = ssftriff_reader_DetachChunkData(a2, (v11 + 8 * *(v11 + 104) + 8), &v93, v17, v18, v19, v20, v21);
    if ((ChunkData & 0x80000000) == 0)
    {
      ++*(v11 + 104);
      *(v11 + 120) = v93;
      *(v11 + 112) = a4 >> 1;
    }
  }

  else if (!strcmp(__s1, "TAB0"))
  {
    v93 = 0;
    ChunkData = ssftriff_reader_DetachChunkData(a2, (v11 + 8 * *(v11 + 104) + 8), &v93, v22, v23, v24, v25, v26);
    if ((ChunkData & 0x80000000) == 0)
    {
      ++*(v11 + 104);
      *(v11 + 128) = v93;
    }
  }

  else
  {
    if (strcmp(__s1, "XTNU"))
    {
      if (!strcmp(__s1, "SYMB"))
      {
        v93 = 0;
        ChunkData = ssftriff_reader_DetachChunkData(a2, (v11 + 8 * *(v11 + 104) + 8), &v93, v32, v33, v34, v35, v36);
        if ((ChunkData & 0x80000000) != 0)
        {
          return ChunkData;
        }

        v60 = 2229280772;
        ++*(v11 + 104);
        v61 = *(v11 + 108);
        if (!v61 || a4 % v61)
        {
          return v60;
        }

        *(v11 + 168) = a4 / v61;
        *(v11 + 160) = v93;
      }

      else if (!strcmp(__s1, "SYLC"))
      {
        v93 = 0;
        ChunkData = ssftriff_reader_DetachChunkData(a2, (v11 + 8 * *(v11 + 104) + 8), &v93, v37, v38, v39, v40, v41);
        if ((ChunkData & 0x80000000) != 0)
        {
          return ChunkData;
        }

        v60 = 2229280772;
        ++*(v11 + 104);
        v62 = *(v11 + 108);
        if (!v62 || a4 % v62)
        {
          return v60;
        }

        *(v11 + 184) = a4 / v62;
        *(v11 + 176) = v93;
      }

      else
      {
        if (strcmp(__s1, "UNIT"))
        {
          if (strcmp(__s1, "PREU"))
          {
            if (strcmp(__s1, "TRI "))
            {
              ChunkData = 0;
              *a6 = 0;
              return ChunkData;
            }

            v93 = 0;
            Position = ssftriff_reader_GetPosition(a2);
            v92 = 0;
            v72 = ssftriff_reader_DetachChunkData(a2, (v11 + 8 * *(v11 + 104) + 8), &v92, v67, v68, v69, v70, v71);
            if ((v72 & 0x80000000) != 0)
            {
              return v72;
            }

            v77 = 0;
            v89 = v11 + 256;
            v90 = v11 + 248;
            ++*(v11 + 104);
            v91 = v11 + 232;
            v78 = v11 + 204;
            v79 = v11 + 216;
            while (1)
            {
              v80 = ssftriff_reader_OpenChunk(a2, __s1, &v94, 0, v73, v74, v75, v76);
              if (!strcmp(__s1, "TRIL"))
              {
                break;
              }

              v83 = strcmp(__s1, "TRIR");
              if (v83)
              {
                v84 = 4;
              }

              else
              {
                v84 = 1;
              }

              if (!v83)
              {
                goto LABEL_56;
              }

LABEL_66:
              if ((v77 & 0x1FFF) == 0x14)
              {
                v77 = 0;
              }

              if (v77 >= 0)
              {
                v88 = v80;
              }

              else
              {
                v88 = v77;
              }

              if ((v88 & 0x80000000) == 0)
              {
                v88 = ssftriff_reader_CloseChunk(a2);
                if ((v88 & 0x80000000) == 0)
                {
                  continue;
                }
              }

              if ((v88 & 0x1FFF) == 0x14)
              {
                return 0;
              }

              else
              {
                return v88;
              }
            }

            v84 = 0;
LABEL_56:
            if (v77 < 0)
            {
              goto LABEL_66;
            }

            while (1)
            {
              while (1)
              {
                while (1)
                {
                  SubChunkInfo = uselect_GetSubChunkInfo(a2, v92, Position, __s1, &v94, &v93, v81, v82);
                  if (SubChunkInfo < 0)
                  {
                    v77 = SubChunkInfo;
                    goto LABEL_66;
                  }

                  if (strcmp(__s1, "HAIN"))
                  {
                    break;
                  }

                  *(v78 + 4 * v84) = v94 >> 2;
                  *(v79 + 8 * v84) = v93;
                }

                if (strcmp(__s1, "OFCT"))
                {
                  break;
                }

                v87 = v93;
                v86 = v91;
LABEL_64:
                *(v86 + 8 * v84) = v87;
              }

              if (!strcmp(__s1, "TABL"))
              {
                v86 = v89;
                *(v90 + 4 * v84) = v94 >> 2;
                v87 = v93;
                goto LABEL_64;
              }
            }
          }

          v93 = 0;
          ChunkData = ssftriff_reader_DetachChunkData(a2, (v11 + 8 * *(v11 + 104) + 8), &v93, v47, v48, v49, v50, v51);
          if ((ChunkData & 0x80000000) != 0)
          {
            return ChunkData;
          }

          v60 = 2229280772;
          ++*(v11 + 104);
          v64 = *(v11 + 108);
          if (v64 && a4 >> 2 == v64)
          {
            *(v11 + 272) = v93;
            return ChunkData;
          }

          return v60;
        }

        v93 = 0;
        ChunkData = ssftriff_reader_DetachChunkData(a2, (v11 + 8 * *(v11 + 104) + 8), &v93, v42, v43, v44, v45, v46);
        if ((ChunkData & 0x80000000) != 0)
        {
          return ChunkData;
        }

        v60 = 2229280772;
        ++*(v11 + 104);
        v63 = *(v11 + 108);
        if (!v63 || a4 % v63)
        {
          return v60;
        }

        *(v11 + 200) = a4 / v63;
        *(v11 + 192) = v93;
      }

      return ChunkData;
    }

    v93 = 0;
    ChunkData = ssftriff_reader_DetachChunkData(a2, (v11 + 8 * *(v11 + 104) + 8), &v93, v27, v28, v29, v30, v31);
    if ((ChunkData & 0x80000000) == 0)
    {
      ++*(v11 + 104);
      *(v11 + 136) = v93;
      *(v11 + 144) = a4 >> 2;
      v53 = *(v11 + 108);
      if (v53)
      {
        v54 = heap_Calloc(*(a1 + 8), 1, (v53 >> 3) + 2);
        *(v11 + 152) = v54;
        if (v54)
        {
          if (*(v11 + 144))
          {
            v55 = 0;
            v56 = *(v11 + 136);
            do
            {
              v57 = *(v56 + 4 * v55);
              v58 = v57 >> 3;
              v59 = v57 & 7;
              if (v59)
              {
                ++v58;
              }

              *(*(v11 + 152) + v58) |= 1 << (v59 ^ 7);
              v56 = *(v11 + 136);
              v55 += *(v56 + 4 * (v55 + 1)) + 2;
            }

            while (v55 < *(v11 + 144));
          }
        }

        else
        {
          return 2229280778;
        }
      }

      else
      {
        return 2229280772;
      }
    }
  }

  return ChunkData;
}

uint64_t uselect_LoadRiffStringTable(uint64_t a1, uint64_t a2, _WORD *a3, int a4, uint64_t *a5)
{
  v6 = *a3;
  if (*a3)
  {
    v11 = heap_Calloc(*(a1 + 8), v6 + 1, 8);
    *a5 = v11;
    if (v11)
    {
      v12 = 0;
      v13 = (a3 + 1);
      v14 = a4 - 2;
      do
      {
        v17 = 0;
        result = ssftriff_reader_ReadStringW(a2, v13, v14, 0, 0, &v17);
        if ((result & 0x80000000) != 0 && (result & 0x1FFF) != 9)
        {
          break;
        }

        *(*a5 + 8 * v12) = heap_Alloc(*(a1 + 8), v17);
        v16 = *(*a5 + 8 * v12);
        if (!v16)
        {
          return 2229280778;
        }

        result = ssftriff_reader_ReadStringW(a2, v13, v14, 0, v16, &v17);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        v13 += v17 - 1 + 2;
        v14 -= v17 + 1;
        ++v12;
      }

      while (v12 < v6);
    }

    else
    {
      return 2229280778;
    }
  }

  else
  {
    result = 0;
    *a5 = 0;
  }

  return result;
}

uint64_t uselect_GetSubChunkInfo(uint64_t a1, uint64_t a2, int a3, _BYTE *a4, unsigned int *a5, void *a6, uint64_t a7, uint64_t a8)
{
  result = ssftriff_reader_OpenChunk(a1, a4, a5, 0, a5, a6, a7, a8);
  if ((result & 0x80000000) != 0)
  {
    v15 = 0;
    *a4 = 0;
  }

  else
  {
    Position = ssftriff_reader_GetPosition(a1);
    result = ssftriff_reader_CloseChunk(a1);
    v15 = a2 + (Position - a3);
  }

  *a6 = v15;
  return result;
}

uint64_t uselect_LoadRiffMatrix2D_U8(uint64_t a1, unsigned __int16 *a2, unsigned int a3, unsigned __int16 *a4)
{
  v5 = 2229280772;
  v6 = *a2;
  *a4 = v6;
  v7 = a2[1];
  a4[1] = v7;
  v8 = v7 * v6;
  if (v8 + 4 <= a3)
  {
    v10 = heap_Alloc(*(a1 + 8), v8);
    *(a4 + 1) = v10;
    if (v10)
    {
      memcpy(v10, a2 + 2, a4[1] * *a4);
      return 0;
    }

    else
    {
      return 2229280778;
    }
  }

  return v5;
}

uint64_t uselect_AddGenericContextRule(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = heap_Calloc(*(a1 + 8), 1, 24);
  *a3 = v5;
  if (!v5)
  {
    return 2229280778;
  }

  *v5 = 0;
  *(*a3 + 8) = 0;
  *(*a3 + 16) = 0;
  v6 = *(a2 + 3520);
  if (v6)
  {
    do
    {
      v7 = v6;
      v6 = *(v6 + 16);
    }

    while (v6);
    v8 = (v7 + 16);
  }

  else
  {
    v8 = (a2 + 3520);
  }

  result = 0;
  *v8 = *a3;
  return result;
}

uint64_t uselect_AddGCRCondition(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = heap_Calloc(*(a1 + 8), 1, 48);
  *a3 = v5;
  if (!v5)
  {
    return 2229280778;
  }

  *v5 = -256;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0u;
  *(v5 + 19) = 0u;
  *(*a3 + 40) = 0;
  v6 = *a2;
  if (*a2)
  {
    do
    {
      v7 = v6;
      v6 = *(v6 + 40);
    }

    while (v6);
    a2 = (v7 + 40);
  }

  result = 0;
  *a2 = *a3;
  return result;
}

uint64_t uselect_AddGCRAction(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = heap_Calloc(*(a1 + 8), 1, 24);
  *a3 = v5;
  if (!v5)
  {
    return 2229280778;
  }

  *v5 = 0;
  *(v5 + 4) = -1;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  v8 = *(a2 + 8);
  v7 = (a2 + 8);
  v6 = v8;
  if (v8)
  {
    do
    {
      v9 = v6;
      v6 = *(v6 + 16);
    }

    while (v6);
    v7 = (v9 + 16);
  }

  result = 0;
  *v7 = *a3;
  return result;
}

char *uselect_strdup(uint64_t a1, char *__s)
{
  if (!__s)
  {
    return 0;
  }

  v3 = *(a1 + 8);
  v4 = strlen(__s);
  v5 = heap_Calloc(v3, (v4 + 1), 1);
  if (!v5)
  {
    return 0;
  }

  return strcpy(v5, __s);
}

void *uselect_FreeRiffStringTable(void *result, uint64_t *a2)
{
  if (a2)
  {
    v3 = result;
    v4 = *a2;
    if (v4)
    {
      v5 = 0;
      do
      {
        heap_Free(v3[1], v4);
        v4 = a2[++v5];
      }

      while (v4);
    }

    v6 = v3[1];

    return heap_Free(v6, a2);
  }

  return result;
}

uint64_t uselect_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2229280769;
  }

  result = 0;
  *a2 = &IUselect;
  return result;
}

uint64_t get_f0(uint64_t a1, unsigned int a2, _DWORD *a3, int *a4)
{
  v15 = 0;
  v14 = 0;
  result = uselect_splitGID(a1, a2, &v14, &v15);
  v7 = *v14;
  v8 = *(*v14 + 2604);
  if (v8 == 2)
  {
    if (!*(v7 + 2656))
    {
      v11 = *(v7 + 2644);
    }
  }

  else if (v8 == 1)
  {
    v9 = v14[24] + v15 * *(v14 + 200);
    *a3 = *(v9 + 16);
    v10 = (v9 + 17);
    goto LABEL_7;
  }

  v12 = v14[24] + v15 * *(v14 + 200);
  *a3 = *(v12 + 4);
  v10 = (v12 + 5);
LABEL_7:
  v13 = *v10;
  *a4 = v13;
  if (*a3)
  {
    *a3 = ScaledLogToHz[3 * *a3 - 270];
    v13 = *a4;
  }

  if (v13)
  {
    *a4 = ScaledLogToHz[3 * v13 - 270];
  }

  return result;
}

uint64_t uselect_ClassOpen(_WORD *a1, int a2, uint64_t a3)
{
  v5 = 0;
  if (!a3)
  {
    return 2229280775;
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  result = InitRsrcFunction(a1, a2, &v5);
  if ((result & 0x80000000) == 0)
  {
    *a3 = v5;
    *(a3 + 8) = 34633;
  }

  return result;
}

uint64_t uselect_ObjOpen(uint64_t a1, int a2, _WORD *a3, uint64_t a4, uint64_t *a5)
{
  v38 = 0;
  v39 = 0;
  *a5 = 0;
  *(a5 + 2) = 0;
  inited = InitRsrcFunction(a3, a4, &v39);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v11 = 2229280778;
  if ((safeh_HandleCheck(a1, a2, 34633, 408) & 0x80000000) != 0)
  {
    return 2229280776;
  }

  v12 = heap_Calloc(*(v39 + 8), 1, 952);
  if (!v12)
  {
    log_OutPublic(*(v39 + 32), "USELECT", 19000, 0, v13, v14, v15, v16, v34);
    return v11;
  }

  v17 = v12;
  *v12 = a3;
  v12[1] = a4;
  v18 = v39;
  v12[2] = v39;
  v12[3] = a1;
  *a5 = v12;
  *(a5 + 2) = 34632;
  v19 = heap_Calloc(*(v18 + 8), 1, 3656);
  *(v17 + 776) = v19;
  if (!v19)
  {
    log_OutPublic(*(v39 + 32), "USELECT", 19000, 0, v20, v21, v22, v23, v34);
    goto LABEL_30;
  }

  Param = uselect_ObjReopen(*a5, a5[1]);
  if ((Param & 0x80000000) != 0)
  {
    goto LABEL_27;
  }

  Param = uselect_GetParam(v17, "minphrase", 1);
  if ((Param & 0x80000000) != 0)
  {
    goto LABEL_27;
  }

  Param = uselect_GetParam(v17, "uselearlyemission", 1);
  if ((Param & 0x80000000) != 0)
  {
    goto LABEL_27;
  }

  Param = uselect_GetParam(v17, "uselectusetriphonecache", 1);
  if ((Param & 0x80000000) != 0)
  {
    goto LABEL_27;
  }

  Param = uselect_GetParam(v17, "uselectweightnoreusebias", 1);
  if ((Param & 0x80000000) != 0)
  {
    goto LABEL_27;
  }

  Param = uselect_GetParam(v17, "uselectweightdurationbias", 1);
  if ((Param & 0x80000000) != 0)
  {
    goto LABEL_27;
  }

  Param = uselect_GetParam(v17, "uselectweightpitchbias", 1);
  if ((Param & 0x80000000) != 0)
  {
    goto LABEL_27;
  }

  Param = uselect_GetParam(v17, "uselectonlinereduction", 1);
  if ((Param & 0x80000000) != 0)
  {
    goto LABEL_27;
  }

  Param = uselect_GetParam(v17, "uselectmaxcandspruning", 1);
  if ((Param & 0x80000000) != 0)
  {
    goto LABEL_27;
  }

  v25 = *(v39 + 40);
  *&v35 = v17;
  *(&v35 + 1) = uselect_ParamCheckChange;
  *&v36 = uselect_ParamLearnChange;
  Param = paramc_ListenerAdd(v25, "minphrase", &v35);
  if ((Param & 0x80000000) != 0)
  {
    goto LABEL_27;
  }

  v26 = *(v39 + 40);
  *&v35 = v17;
  *(&v35 + 1) = uselect_ParamCheckChange;
  *&v36 = uselect_ParamLearnChange;
  Param = paramc_ListenerAdd(v26, "uselearlyemission", &v35);
  if ((Param & 0x80000000) != 0)
  {
    goto LABEL_27;
  }

  v27 = *(v39 + 40);
  *&v35 = v17;
  *(&v35 + 1) = uselect_ParamCheckChange;
  *&v36 = uselect_ParamLearnChange;
  Param = paramc_ListenerAdd(v27, "uselectusetriphonecache", &v35);
  if ((Param & 0x80000000) != 0)
  {
    goto LABEL_27;
  }

  v28 = *(v39 + 40);
  *&v35 = v17;
  *(&v35 + 1) = uselect_ParamCheckChange;
  *&v36 = uselect_ParamLearnChange;
  Param = paramc_ListenerAdd(v28, "uselectweightnoreusebias", &v35);
  if ((Param & 0x80000000) != 0)
  {
    goto LABEL_27;
  }

  v29 = *(v39 + 40);
  *&v35 = v17;
  *(&v35 + 1) = uselect_ParamCheckChange;
  *&v36 = uselect_ParamLearnChange;
  Param = paramc_ListenerAdd(v29, "uselectweightdurationbias", &v35);
  if ((Param & 0x80000000) != 0)
  {
    goto LABEL_27;
  }

  v30 = *(v39 + 40);
  *&v35 = v17;
  *(&v35 + 1) = uselect_ParamCheckChange;
  *&v36 = uselect_ParamLearnChange;
  Param = paramc_ListenerAdd(v30, "uselectweightpitchbias", &v35);
  if ((Param & 0x80000000) != 0)
  {
    goto LABEL_27;
  }

  v31 = *(v39 + 40);
  *&v35 = v17;
  *(&v35 + 1) = uselect_ParamCheckChange;
  *&v36 = uselect_ParamLearnChange;
  Param = paramc_ListenerAdd(v31, "uselectonlinereduction", &v35);
  if ((Param & 0x80000000) != 0 || (v32 = *(v39 + 40), *&v35 = v17, *(&v35 + 1) = uselect_ParamCheckChange, *&v36 = uselect_ParamLearnChange, Param = paramc_ListenerAdd(v32, "uselectmaxcandspruning", &v35), (Param & 0x80000000) != 0) || (Param = objc_GetObject(*(v39 + 48), "SYNTHSTREAM", &v38), (Param & 0x80000000) != 0))
  {
LABEL_27:
    v11 = Param;
    goto LABEL_30;
  }

  *(v17 + 88) = *(v38 + 8);
  *(&v35 + 1) = &IUselect;
  *&v35 = 1;
  v36 = *a5;
  v37 = 0;
  v11 = objc_RegisterObject(*(v39 + 48), "USELECT", &v35);
  if ((v11 & 0x80000000) != 0)
  {
LABEL_30:
    uselect_ObjClose(*a5, a5[1]);
    *a5 = 0;
    *(a5 + 2) = 0;
    return v11;
  }

  *(v17 + 32) = 1;
  return v11;
}

uint64_t uselect_ObjClose(uint64_t a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 34632, 952) & 0x80000000) != 0)
  {
    return 2229280776;
  }

  if (a1)
  {
    if (*(a1 + 88))
    {
      objc_ReleaseObject(*(*(a1 + 16) + 48), "SYNTHSTREAM");
    }

    v3 = *(a1 + 816);
    if (v3 && *(a1 + 40))
    {
      v4 = *(a1 + 908);
      if (*(a1 + 908))
      {
        v5 = 0;
        v6 = 24;
        do
        {
          if (*(v3 + v6))
          {
            heap_Free(*(*(a1 + 16) + 8), *(v3 + v6));
            v3 = *(a1 + 816);
            *(v3 + v6) = 0;
            v4 = *(a1 + 908);
          }

          ++v5;
          v6 += 112;
        }

        while (v5 < 3 * v4);
      }

      heap_Free(*(*(a1 + 16) + 8), v3);
      *(a1 + 816) = 0;
    }

    v7 = *(a1 + 856);
    if (v7)
    {
      heap_Free(*(*(a1 + 16) + 8), v7);
      *(a1 + 856) = 0;
    }

    v8 = *(a1 + 864);
    if (v8)
    {
      heap_Free(*(*(a1 + 16) + 8), v8);
      *(a1 + 864) = 0;
    }

    v9 = *(a1 + 888);
    if (v9)
    {
      heap_Free(*(*(a1 + 16) + 8), v9);
      *(a1 + 888) = 0;
    }

    v10 = *(a1 + 896);
    if (v10)
    {
      heap_Free(*(*(a1 + 16) + 8), v10);
      *(a1 + 896) = 0;
    }

    v11 = *(a1 + 936);
    if (v11)
    {
      heap_Free(*(*(a1 + 16) + 8), v11);
      *(a1 + 936) = 0;
    }

    v12 = *(a1 + 944);
    if (v12)
    {
      heap_Free(*(*(a1 + 16) + 8), v12);
      *(a1 + 944) = 0;
    }

    uselect_ResetUnitSelector(a1, 0);
    v13 = *(a1 + 776);
    if (v13)
    {
      DeallocBufferUnitSelector(a1, v13);
      heap_Free(*(*(a1 + 16) + 8), *(a1 + 776));
    }

    v14 = *(*(a1 + 16) + 40);
    *&v34 = a1;
    *(&v34 + 1) = uselect_ParamCheckChange;
    v35 = uselect_ParamLearnChange;
    paramc_ListenerRemove(v14, "minphrase", &v34);
    v15 = *(*(a1 + 16) + 40);
    *&v34 = a1;
    *(&v34 + 1) = uselect_ParamCheckChange;
    v35 = uselect_ParamLearnChange;
    paramc_ListenerRemove(v15, "uselearlyemission", &v34);
    v16 = *(*(a1 + 16) + 40);
    *&v34 = a1;
    *(&v34 + 1) = uselect_ParamCheckChange;
    v35 = uselect_ParamLearnChange;
    paramc_ListenerRemove(v16, "uselectusetriphonecache", &v34);
    v17 = *(*(a1 + 16) + 40);
    *&v34 = a1;
    *(&v34 + 1) = uselect_ParamCheckChange;
    v35 = uselect_ParamLearnChange;
    paramc_ListenerRemove(v17, "uselectweightnoreusebias", &v34);
    v18 = *(*(a1 + 16) + 40);
    *&v34 = a1;
    *(&v34 + 1) = uselect_ParamCheckChange;
    v35 = uselect_ParamLearnChange;
    paramc_ListenerRemove(v18, "uselectweightdurationbias", &v34);
    v19 = *(*(a1 + 16) + 40);
    *&v34 = a1;
    *(&v34 + 1) = uselect_ParamCheckChange;
    v35 = uselect_ParamLearnChange;
    paramc_ListenerRemove(v19, "uselectweightpitchbias", &v34);
    v20 = *(*(a1 + 16) + 40);
    *&v34 = a1;
    *(&v34 + 1) = uselect_ParamCheckChange;
    v35 = uselect_ParamLearnChange;
    paramc_ListenerRemove(v20, "uselectonlinereduction", &v34);
    v21 = *(*(a1 + 16) + 40);
    *&v34 = a1;
    *(&v34 + 1) = uselect_ParamCheckChange;
    v35 = uselect_ParamLearnChange;
    paramc_ListenerRemove(v21, "uselectmaxcandspruning", &v34);
    v22 = *(*(a1 + 16) + 40);
    v23 = *(a1 + 80);
    *&v34 = a1;
    *(&v34 + 1) = uselect_ParamCheckChange;
    v35 = uselect_ParamLearnChange;
    paramc_ListenerRemove(v22, v23, &v34);
    paramc_ParamSetStr(*(*(a1 + 16) + 40), "voiceaddon", "");
    v24 = *(a1 + 80);
    if (v24)
    {
      heap_Free(*(*(a1 + 16) + 8), v24);
      *(a1 + 80) = 0;
    }

    paramc_ParamSetStr(*(*(a1 + 16) + 40), "uselectrawdataversion", "");
    paramc_ParamSetStr(*(*(a1 + 16) + 40), "uselectreductionversion", "");
    v25 = *(a1 + 40);
    if (v25)
    {
      v26 = *(a1 + 24);
      if (!v26 || (v27 = *(v26 + 48)) == 0)
      {
        v27 = *(*(a1 + 16) + 48);
      }

      objc_ReleaseObject(v27, v25 + 152);
    }

    v28 = *(a1 + 48);
    if (v28 >= 2)
    {
      v29 = v28 - 1;
      do
      {
        uselect_RemoveDataPartClose(a1, v29--);
      }

      while (v29);
    }

    v30 = *(a1 + 72);
    if (v30)
    {
      if (!*v30 || (heap_Free(*(*(a1 + 16) + 8), *v30), **(a1 + 72) = 0, (v30 = *(a1 + 72)) != 0))
      {
        heap_Free(*(*(a1 + 16) + 8), v30);
        *(a1 + 72) = 0;
      }
    }

    v31 = *(a1 + 56);
    if (v31)
    {
      heap_Free(*(*(a1 + 16) + 8), v31);
      *(a1 + 56) = 0;
    }

    v32 = *(a1 + 64);
    if (v32)
    {
      heap_Free(*(*(a1 + 16) + 8), v32);
      *(a1 + 64) = 0;
    }

    if (*(a1 + 32) == 1)
    {
      objc_UnregisterObject(*(*(a1 + 16) + 48), "USELECT");
    }

    heap_Free(*(*(a1 + 16) + 8), a1);
  }

  return 0;
}

uint64_t uselect_ObjReopen(_WORD **a1, int a2)
{
  v66 = *MEMORY[0x1E69E9840];
  v64 = 0;
  __s1 = 0;
  __s = 0;
  __s2[0] = 0;
  if ((safeh_HandleCheck(a1, a2, 34632, 952) & 0x80000000) != 0)
  {
    v5 = 2229280776;
    goto LABEL_85;
  }

  paramc_ParamSetStr(*(a1[2] + 5), "voiceaddon", "");
  BrokerString = uselect_CreateBrokerString(a1[2], __s2, 0x100uLL, 0, 0, 0, 0);
  if ((BrokerString & 0x80000000) == 0)
  {
    v4 = a1[5];
    if (v4)
    {
      v5 = BrokerString;
      if (!strcmp(v4 + 152, __s2))
      {
        goto LABEL_21;
      }
    }
  }

  v6 = uselect_CreateBrokerString(a1[2], __s2, 0x100uLL, 0, 0, 1, 0);
  if ((v6 & 0x80000000) != 0)
  {
    __s2[0] = 0;
    goto LABEL_15;
  }

  v7 = v6;
  v8 = a1[5];
  if (!v8 || strcmp(v8 + 152, __s2))
  {
    v9 = uselect_CheckForDataFile(*a1, a1[1], __s2, &v64);
    v5 = v9;
    if (!v64)
    {
      __s2[0] = 0;
    }

    if ((v9 & 0x80001FFF) == 0x8000000A)
    {
      goto LABEL_85;
    }
  }

  if (!__s2[0])
  {
LABEL_15:
    v5 = uselect_CreateBrokerString(a1[2], __s2, 0x100uLL, 0, 0, 0, 0);
    if ((v5 & 0x80000000) != 0)
    {
      goto LABEL_85;
    }

    AddRefCountedObject = uselect_CheckForDataFile(*a1, a1[1], __s2, &v64);
    if (!v64)
    {
      __s2[0] = 0;
    }

    if ((AddRefCountedObject & 0x80001FFF) == 0x8000000A)
    {
      goto LABEL_84;
    }

    if (!__s2[0])
    {
      v5 = uselect_CreateBrokerString(a1[2], __s2, 0x100uLL, 0, 0, 0, 1);
      if ((v5 & 0x80000000) != 0)
      {
        goto LABEL_85;
      }
    }

    goto LABEL_21;
  }

  v5 = v7;
LABEL_21:
  v11 = a1[5];
  if (!v11)
  {
    goto LABEL_47;
  }

  if (strcmp(v11 + 152, __s2))
  {
    DeallocUnitSelectorMemory_NRowsDependency(a1);
    v12 = a1[107];
    if (v12)
    {
      heap_Free(*(a1[2] + 1), v12);
      a1[107] = 0;
    }

    v13 = a1[111];
    if (v13)
    {
      heap_Free(*(a1[2] + 1), v13);
      a1[111] = 0;
    }

    v14 = a1[112];
    if (v14)
    {
      heap_Free(*(a1[2] + 1), v14);
      a1[112] = 0;
    }

    uselect_ResetUnitSelector(a1, 0);
    v15 = a1[3];
    if (!v15 || (v16 = *(v15 + 6)) == 0)
    {
      v16 = *(a1[2] + 6);
    }

    v5 = objc_ReleaseObject(v16, (a1[5] + 76));
    a1[5] = 0;
    *a1[97] = 0;
    v17 = *(a1 + 12);
    if (v17 >= 2)
    {
      v18 = v17 - 1;
      do
      {
        uselect_RemoveDataPartClose(a1, v18--);
      }

      while (v18);
    }

    v19 = a1[9];
    if (v19)
    {
      if (!*v19 || (heap_Free(*(a1[2] + 1), *v19), *a1[9] = 0, (v19 = a1[9]) != 0))
      {
        heap_Free(*(a1[2] + 1), v19);
        a1[9] = 0;
      }
    }

    v20 = a1[7];
    if (v20)
    {
      heap_Free(*(a1[2] + 1), v20);
      a1[7] = 0;
    }

    v21 = a1[8];
    if (v21)
    {
      heap_Free(*(a1[2] + 1), v21);
      a1[8] = 0;
    }

    *(a1 + 12) = 0;
    v22 = *(a1[2] + 5);
    v23 = a1[10];
    *&v60 = a1;
    *(&v60 + 1) = uselect_ParamCheckChange;
    v61 = uselect_ParamLearnChange;
    paramc_ListenerRemove(v22, v23, &v60);
    v24 = a1[10];
    if (v24)
    {
      heap_Free(*(a1[2] + 1), v24);
      a1[10] = 0;
    }

    if ((v5 & 0x80000000) == 0 && !a1[5])
    {
LABEL_47:
      v59 = 0;
      v25 = a1[3];
      if (v25 && (v26 = *(v25 + 6)) != 0)
      {
        v27 = a1[2];
      }

      else
      {
        v27 = a1[2];
        v26 = *(v27 + 48);
      }

      AddRefCountedObject = objc_GetAddRefCountedObject(v26, __s2, uselect_ObjcVoiceOpen, uselect_ObjcVoiceClose, v27, &v59);
      if ((AddRefCountedObject & 0x80000000) != 0)
      {
        goto LABEL_84;
      }

      v5 = 2229280778;
      v28 = *(v59 + 32);
      a1[5] = v28;
      *a1[97] = v28;
      *(a1 + 12) = 1;
      v29 = heap_Calloc(*(a1[2] + 1), 1, 8);
      a1[7] = v29;
      if (v29)
      {
        *v29 = *(a1[5] + 444);
        v30 = heap_Calloc(*(a1[2] + 1), *(a1 + 12), 4);
        a1[8] = v30;
        if (v30)
        {
          *v30 = 0;
          v31 = heap_Calloc(*(a1[2] + 1), *(a1 + 12), 8);
          a1[9] = v31;
          if (v31)
          {
            *a1[9] = heap_Calloc(*(a1[2] + 1), 1, 1);
            v32 = (paramc_ParamGetStr(*(a1[2] + 5), "voiceoperatingpoint", &__s) & 0x80000000) != 0 ? 0 : strlen(__s) + 1;
            if ((paramc_ParamGetStr(*(a1[2] + 5), "vopversion", &__s1) & 0x80000000) != 0 || (v33 = __s1, !strcmp(__s1, "0.0.0")))
            {
              v34 = 0;
            }

            else
            {
              v34 = strlen(v33) + 1;
            }

            v35 = strlen(a1[5]);
            v36 = heap_Calloc(*(a1[2] + 1), 1, (v32 + v34 + v35 + 14));
            a1[10] = v36;
            if (v36)
            {
              strcpy(v36, "voiceaddons.");
              v37 = a1[10];
              v38 = strlen(v37);
              v39 = a1[5];
              if (*v39)
              {
                v40 = v38;
                v41 = 0;
                v42 = 1;
                do
                {
                  *(a1[10] + v40) = __tolower(v39[v41]);
                  v41 = v42;
                  v39 = a1[5];
                  ++v40;
                }

                while (strlen(v39) > v42++);
                v37 = a1[10];
              }

              if (v32)
              {
                *&v37[strlen(v37)] = 46;
                strcat(a1[10], __s);
                v37 = a1[10];
              }

              if (v34)
              {
                *&v37[strlen(v37)] = 46;
                strcat(a1[10], __s1);
                v37 = a1[10];
              }

              AddRefCountedObject = uselect_GetParam(a1, v37, 1);
              if ((AddRefCountedObject & 0x80000000) != 0)
              {
                goto LABEL_84;
              }

              v44 = *(a1[2] + 5);
              v45 = a1[10];
              *&v60 = a1;
              *(&v60 + 1) = uselect_ParamCheckChange;
              v61 = uselect_ParamLearnChange;
              AddRefCountedObject = paramc_ListenerAdd(v44, v45, &v60);
              if ((AddRefCountedObject & 0x80000000) != 0)
              {
                goto LABEL_84;
              }

              AddRefCountedObject = uselect_GetParam(a1, "uselectmaxcandspruning", 0);
              if ((AddRefCountedObject & 0x80000000) != 0)
              {
                goto LABEL_84;
              }

              AddRefCountedObject = uselect_ResetUnitSelector(a1, 500);
              if ((AddRefCountedObject & 0x80000000) != 0)
              {
                goto LABEL_84;
              }

              v46 = heap_Calloc(*(a1[2] + 1), 1, 74);
              a1[107] = v46;
              v51 = a1[2];
              if (v46)
              {
                v52 = heap_Calloc(*(v51 + 1), 1, 160);
                a1[111] = v52;
                v51 = a1[2];
                if (v52)
                {
                  v53 = heap_Calloc(*(v51 + 1), a1[5][1483], 24);
                  a1[112] = v53;
                  if (v53)
                  {
                    v54 = a1[5];
                    v55 = *(v54 + 770);
                    if ((v55 & 0x80000000) != 0 && (v55 = *(v54 + 769), (v55 & 0x80000000) != 0))
                    {
                      v56 = 5000;
                    }

                    else
                    {
                      v56 = 5 * *(*(v54 + 371) + 32 * v55 + 4);
                    }

                    *(a1 + 226) = v56;
                    AddRefCountedObject = paramc_ParamSetStr(*(a1[2] + 5), "uselectrawdataversion", v54 + 64);
                    if ((AddRefCountedObject & 0x80000000) == 0)
                    {
                      AddRefCountedObject = paramc_ParamSetStr(*(a1[2] + 5), "uselectreductionversion", a1[5] + 140);
                    }

LABEL_84:
                    v5 = AddRefCountedObject;
                    goto LABEL_85;
                  }

                  v51 = a1[2];
                }
              }

              log_OutPublic(*(v51 + 4), "USELECT", 19000, 0, v47, v48, v49, v50, v59);
            }
          }
        }
      }

      else
      {
        *(a1 + 12) = 0;
      }
    }
  }

LABEL_85:
  v57 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t uselect_ProcessStart(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if ((safeh_HandleCheck(a1, a2, 34632, 952) & 0x80000000) == 0)
  {
    *(a1 + 736) = 0;
    *(a1 + 744) = 1;
    v7 = *(a1 + 752);
    if (!v7 || v7 != 1 && (v7 = *(*(a1 + 40) + 2616), v7 != 1))
    {
      v7 = 0;
    }

    v8 = 0;
    *(a1 + 756) = v7;
    v9 = "application/x-realspeak-feat-vector";
    v10 = (a1 + 96);
    while (1)
    {
      if (*(a1 + 736) > 0xFuLL)
      {
        goto LABEL_22;
      }

      v11 = (*(*(a1 + 88) + 64))(a3, a4, 78, v9, 0, 0, &v10[5 * *(a1 + 736) + 1]);
      if ((v11 & 0x80000000) != 0)
      {
        v13 = v11;
        if (strncmp(v9, "application/x-realspeak-cspp-", 0x1DuLL) && strcmp(v9, "application/x-realspeak-usnoreusebias;version=4.0") && strcmp(v9, "application/x-realspeak-usprosodybias;version=4.0") && strcmp(v9, "application/x-realspeak-usfrozen;version=4.0"))
        {
          log_OutPublic(*(*(a1 + 16) + 32), "USELECT", 19001, "%s%s", v14, v15, v16, v17, "layer");
LABEL_35:
          v25 = v13;
          if (!*(a1 + 736))
          {
LABEL_32:
            *(a1 + 736) = 0;
            return v13;
          }

LABEL_23:
          v26 = 0;
          do
          {
            v27 = v10[1];
            if (v27 && ((*(*(a1 + 88) + 72))(v27, v10[2]) & 0x80000000) != 0)
            {
              v38 = *v10;
              log_OutPublic(*(*(a1 + 16) + 32), "USELECT", 19006, "%s%s", v28, v29, v30, v31, "layer");
            }

            v32 = v10[3];
            if (v32 && ((*(*(a1 + 88) + 72))(v32, v10[4]) & 0x80000000) != 0)
            {
              v39 = *v10;
              log_OutPublic(*(*(a1 + 16) + 32), "USELECT", 19006, "%s%s", v33, v34, v35, v36, "layer");
            }

            ++v26;
            v10 += 5;
          }

          while (v26 < *(a1 + 736));
          v13 = v25;
          goto LABEL_32;
        }
      }

      else
      {
        v12 = *(a1 + 736);
        v10[5 * v12] = v9;
        *(a1 + 736) = v12 + 1;
      }

      v9 = uselect_ProcessStart_szINPUT_STREAMS[++v8];
      if (v8 == 4)
      {
        v18 = "application/x-realspeak-usmarkers-u16;version=4.0";
        v19 = 1u;
        while (*(a1 + 736) <= 0xFuLL)
        {
          v13 = (*(*(a1 + 88) + 64))(a3, a4, 78, v18, 0, 1, &v10[5 * *(a1 + 736) + 3]);
          if ((v13 & 0x80000000) != 0)
          {
            log_OutPublic(*(*(a1 + 16) + 32), "USELECT", 19002, "%s%s", v20, v21, v22, v23, "layer");
            goto LABEL_35;
          }

          v24 = *(a1 + 736);
          v10[5 * v24] = v18;
          *(a1 + 736) = v24 + 1;
          v18 = uselect_ProcessStart_szOUTPUT_STREAMS[v19++];
          if (v19 == 7)
          {
            return v13;
          }
        }

LABEL_22:
        v25 = 2229280777;
        goto LABEL_23;
      }
    }
  }

  return 2229280776;
}

uint64_t uselect_Process(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int *a5)
{
  __n = 0;
  v7 = -2065686521;
  v158 = 0;
  if ((safeh_HandleCheck(a1, a2, 34632, 952) & 0x80000000) != 0)
  {
    return 2229280776;
  }

  __src = 0;
  v156 = 0;
  *a5 = 1;
  if (*(a1 + 744) != 1)
  {
    v25 = *(a1 + 748);
    *(a1 + 746) = *(a1 + 748);
    v26 = *(a1 + 768);
    v27 = 1;
    goto LABEL_16;
  }

  v11 = (*(*(a1 + 88) + 144))(*(a1 + 104), *(a1 + 112), &__n + 4, &v158);
  if ((v11 & 0x80000000) != 0)
  {
    return v11;
  }

  if (HIDWORD(__n))
  {
    v12 = uselect_ReadDirectStart(a1, "application/x-realspeak-feat-vector", &__src, &__n + 1);
    v17 = HIDWORD(__n);
    *(a1 + 768) = (159072863 * (HIDWORD(__n) >> 5)) >> 32;
    if ((v12 & 0x80000000) == 0)
    {
      v18 = heap_Alloc(*(*(a1 + 16) + 8), v17);
      *(a1 + 760) = v18;
      if (!v18)
      {
        log_OutPublic(*(*(a1 + 16) + 32), "USELECT", 19000, 0, v19, v20, v21, v22, v152);
        v7 = -2065686518;
        goto LABEL_146;
      }

      memcpy(v18, __src, HIDWORD(__n));
      v17 = HIDWORD(__n);
    }

    v23 = *(a1 + 736);
    if (*(a1 + 736))
    {
      v24 = (a1 + 112);
      while (strcmp(*(v24 - 2), "application/x-realspeak-feat-vector"))
      {
        v24 += 5;
        if (!--v23)
        {
          goto LABEL_12;
        }
      }

      v137 = (*(*(a1 + 88) + 96))(*(v24 - 1), *v24, v17);
      if ((v137 & 0x80000000) == 0)
      {
        v138 = *(a1 + 768);
        if (v138 >> 15)
        {
          goto LABEL_146;
        }

        v139 = *(a1 + 776);
        *(v139 + 3524) = *(*(a1 + 40) + 3578) * v138;
        v140 = uselect_ReadDirectStart(a1, "application/x-realspeak-usfrozen;version=4.0", (v139 + 3632), &__n);
        v141 = *(a1 + 776);
        if (v140 < 0)
        {
          *(v141 + 3632) = 0;
        }

        if ((uselect_ReadDirectStart(a1, "application/x-realspeak-usnoreusebias;version=4.0", (v141 + 3640), &__n) & 0x80000000) != 0)
        {
          v142 = *(a1 + 776);
          *(v142 + 3640) = 0;
        }

        else
        {
          v142 = *(a1 + 776);
          if (__n / 0x1F8 != *(v142 + 3524))
          {
            *(v142 + 3640) = 0;
            goto LABEL_146;
          }
        }

        if ((uselect_ReadDirectStart(a1, "application/x-realspeak-usprosodybias;version=4.0", (v142 + 3648), &__n) & 0x80000000) != 0)
        {
          v143 = *(a1 + 776);
          *(v143 + 3648) = 0;
        }

        else
        {
          v143 = *(a1 + 776);
          if (*(v143 + 3524) != __n >> 3)
          {
            *(v143 + 3648) = 0;
            goto LABEL_146;
          }
        }

        v144 = *(a1 + 768);
        *(v143 + 10) = v144;
        *(v143 + 3524) = *(*(a1 + 40) + 3578) * v144;
        v37 = AllocBufferUnitSelector(a1, v143);
        if ((v37 & 0x80000000) != 0)
        {
          goto LABEL_145;
        }

        v26 = *(a1 + 768);
        if (v26)
        {
          v146 = *(a1 + 40);
          v147 = (*(a1 + 760) + 2);
          v148 = *(a1 + 768);
          do
          {
            v149 = *v147;
            if (*(v146 + 2144 + v149) != 255 && !*(v146 + 2684) && !*(*(**(a1 + 56) + 120) + 2 * (2 * (v149 - *(v146 + 2496)))))
            {
              log_OutPublic(*(*(a1 + 16) + 32), "USELECT", 19009, "%s%d", v145, v8, v9, v10, "phoneme");
              v7 = -2065686500;
              goto LABEL_146;
            }

            v147 += 864;
            --v148;
          }

          while (v148);
          if (v26 == 2)
          {
            v150 = *(a1 + 760);
            if (*(v150 + 2) == 35)
            {
              v27 = *(v150 + 866) != 35;
              goto LABEL_151;
            }
          }
        }

        v27 = 1;
LABEL_151:
        v25 = 0;
        *(a1 + 746) = 0;
LABEL_16:
        v28 = v26 - 1;
        *(a1 + 748) = v26 - 1;
        v29 = *(a1 + 740);
        if (v29 < 1 || (v30 = v29 + v25 + 1, v30 >= v28))
        {
LABEL_23:
          LOWORD(v31) = v26 - 1;
        }

        else
        {
          v31 = v30;
          v32 = (*(a1 + 760) + 864 * v30 + 2);
          while (1)
          {
            v33 = *v32;
            if (v33 == 35)
            {
              break;
            }

            if (*(a1 + 756) == 1)
            {
              v34 = *(a1 + 40);
              if (*(v34 + *(v34 + v33 + 2144) + 1630) == 83)
              {
                goto LABEL_116;
              }
            }

            v32 += 864;
            if (++v31 >= v28)
            {
              goto LABEL_23;
            }
          }

          v34 = *(a1 + 40);
LABEL_116:
          *(a1 + 748) = v31;
          if (!*(v34 + 2616))
          {
            *(a1 + 756) = 0;
          }
        }

        if (v26 - 1 <= v31)
        {
          if (*(a1 + 744) == 1)
          {
            v36 = 5;
          }

          else
          {
            v36 = 4;
          }

          *(a1 + 744) = v36;
          v35 = 1;
        }

        else
        {
          v35 = 2;
        }

        *a5 = v35;
        log_OutText(*(*(a1 + 16) + 32), "USELECT", 3, 0, "uselect phonemes %d -> %d, state %x", v8, v9, v10, v25);
        if (!v27)
        {
          v38 = *(a1 + 40);
          if (*(v38 + 2684))
          {
            v39 = *(v38 + 2497);
            v40 = *(v38 + 2496);
            v41 = (v39 - v40 + 1);
            v42 = **(a1 + 56);
            v43 = (v39 - v40 + 2);
            v44 = v43 * (35 - v40) - v40;
            v45 = (v44 + 35);
            v46 = *(v42 + 120);
            if (*(v46 + 2 * v45))
            {
              v47 = 0;
            }

            else
            {
              v47 = v39 > v40;
            }

            if (v47)
            {
              do
              {
                v45 = v44 + v40;
                if (*(v46 + 2 * v45))
                {
                  break;
                }

                LOBYTE(v40) = v40 + 1;
              }

              while (v39 > v40);
            }

            v48 = v41 + v41 * v43;
            v49 = *(v42 + 128);
            v50 = *(v49 + 4 * v45);
            v51 = *(a1 + 776);
            v52 = *(v51 + 3528);
            v52[2] = v50;
            *v52 = v50;
            LODWORD(v49) = *(v49 + 4 * (v45 + v48));
            v52[3] = v49;
            v52[1] = v49;
          }

          else
          {
            v64 = **(a1 + 56);
            v65 = *(v38 + 2496);
            v66 = *(v64 + 128);
            v67 = *(v66 + 4 * (70 - 2 * v65));
            v51 = *(a1 + 776);
            v68 = *(v51 + 3528);
            *v68 = v67;
            v68[2] = v67;
            v69 = 71 - 2 * v65;
            LODWORD(v64) = *(*(v64 + 120) + 2 * v69) - 1;
            v68[1] = v64 + *(v66 + 4 * v69);
            v68[3] = v64 + *(v66 + 4 * v69);
          }

          v70 = *(v51 + 3536);
          *v70 = 0;
          v70[1] = 0;
LABEL_54:
          v71 = *(a1 + 748) - *(a1 + 746) + 1;
          v72 = 2 * v71;
          v73 = *(v38 + 3578);
          if (2 * v71 * v73 >= 1)
          {
            v74 = 0;
            v75 = *(*(a1 + 776) + 3536);
            do
            {
              v76 = v74 + 2 * v73 * *(a1 + 746);
              v77 = *(v75 + 2 * v76);
              if (v77 < 0x5B)
              {
                *(v75 + 2 * v76) = 0;
              }

              else
              {
                *(v75 + 2 * v76) = v77 - 90;
                v78 = v74 + 2 * *(a1 + 746) * *(v38 + 3578);
                *(v75 + 2 * v78) *= 3;
              }

              v73 = *(v38 + 3578);
              v79 = (v72 * v73);
              ++v74;
            }

            while (v74 < v79);
            if (v79 >= 1)
            {
              v80 = 0;
              v81 = 0;
              v82 = (*(*(a1 + 776) + 3536) + 4 * v73 * *(a1 + 746));
              do
              {
                v83 = *v82++;
                v81 += v83;
                if (v83)
                {
                  ++v80;
                }

                --v79;
              }

              while (v79);
              if (v81)
              {
                v84 = v80 == 0;
              }

              else
              {
                v84 = 1;
              }

              if (!v84)
              {
                v85 = 0;
                v86 = *(*(a1 + 776) + 3536);
                v87 = v81 / v80;
                do
                {
                  v88 = v85 + 2 * v73 * *(a1 + 746);
                  if (100 * *(v86 + 2 * v88) / v87 - 201 <= 0xFFFFFF68)
                  {
                    *(v86 + 2 * v88) = 0;
                    v73 = *(v38 + 3578);
                  }

                  ++v85;
                }

                while (v85 < v72 * v73);
              }
            }
          }

          smooth_f0(*(a1 + 16), (*(*(a1 + 776) + 3536) + 4 * *(a1 + 746) * v73), 2 * v71, 2u);
          v93 = *(a1 + 40);
          v94 = *(v93 + 3578);
          if (v71 * v94 >= 1)
          {
            v95 = 0;
            v96 = *(a1 + 776);
            do
            {
              v154 = 0;
              v155 = 0;
              get_f0(a1, *(v96[441] + 4 * (v95 + *(a1 + 746) * v94)), &v155, &v154);
              v96 = *(a1 + 776);
              v97 = v96[443];
              v93 = *(a1 + 40);
              *(v97 + 2 * (2 * (v95 + *(v93 + 3578) * *(a1 + 746)))) = 1000;
              v98 = *(a1 + 746);
              v99 = *(v93 + 3578);
              if (v155)
              {
                v100 = 2 * (v95 + v99 * *(a1 + 746));
                if (*(v96[442] + 2 * v100) - 256 >= 0xFFFFFF01)
                {
                  *(v97 + 2 * v100) = 1000 * ScaledLogToHz[*(v96[442] + 2 * v100)] / v155;
                  v98 = *(a1 + 746);
                  v99 = *(v93 + 3578);
                }
              }

              *(v97 + 2 * ((2 * (v95 + v99 * v98)) | 1)) = 1000;
              v94 = *(v93 + 3578);
              v101 = v71 * v94;
              if (v95 + 1 < v71 * v94 && v154 != 0)
              {
                v103 = 2 * (v95 + *(a1 + 746) * v94);
                if (*(v96[442] + 2 * (v103 + 2)) - 256 >= 0xFFFFFF01)
                {
                  *(v97 + 2 * (v103 | 1)) = 1000 * ScaledLogToHz[*(v96[442] + 2 * (v103 + 2))] / v154;
                  v94 = *(v93 + 3578);
                  v101 = v71 * v94;
                }
              }

              ++v95;
            }

            while (v95 < v101);
          }

          if (v72 * v94 >= 1)
          {
            v104 = 0;
            v105 = *(*(a1 + 776) + 3544);
            do
            {
              v106 = v104 + 2 * v94 * *(a1 + 746);
              if (*(v105 + 2 * v106) - 1301 <= 0xFFFFFDD8)
              {
                *(v105 + 2 * v106) = 1000;
                v94 = *(v93 + 3578);
              }

              ++v104;
            }

            while (v104 < v72 * v94);
          }

          LOBYTE(v155) = *(a1 + 744);
          LOBYTE(v154) = 0;
          v37 = uselect_Write(a1, "text/x-realspeak-usphonemes;charset=tts", &v155, 1, v89, v90, v91, v92);
          if ((v37 & 0x80000000) == 0)
          {
            v156 = *(*(a1 + 40) + 2497);
            if (v71 < 1)
            {
              v37 = uselect_Write(a1, "text/x-realspeak-usphonemes;charset=tts", &v154, 1, v107, v108, v109, v110);
              if ((v37 & 0x80000000) == 0)
              {
LABEL_107:
                v125 = *(*(a1 + 40) + 3578);
                v37 = uselect_Write(a1, "application/x-realspeak-usids;version=4.0", *(*(a1 + 776) + 3528) + 4 * v125 * *(a1 + 746), (4 * v71 * v125), v120, v121, v122, v123);
                if ((v37 & 0x80000000) == 0)
                {
                  v130 = *(*(a1 + 40) + 3578);
                  v7 = uselect_Write(a1, "application/x-realspeak-targf0;version=4.0", *(*(a1 + 776) + 3544) + 4 * *(a1 + 746) * v130, (4 * v71 * v130), v126, v127, v128, v129);
                  if ((v7 & 0x80000000) == 0)
                  {
                    if (v71 < 1)
                    {
LABEL_113:
                      *(*(a1 + 760) + 864 * *(a1 + 748)) = 0;
                      v136 = *(a1 + 744);
                      if (v136 == 1)
                      {
                        *(a1 + 744) = 2;
                      }

                      else if ((v136 & 4) != 0)
                      {
                        *(a1 + 744) = 1;
                        DeallocBufferUnitSelector(a1, *(a1 + 776));
                        *(a1 + 768) = 0;
                      }
                    }

                    else
                    {
                      v135 = 0;
                      while (1)
                      {
                        v7 = uselect_Write(a1, "application/x-realspeak-usplosives;version=4.0", *(a1 + 760) + 864 * (v135 + *(a1 + 746)) + 12, 1, v131, v132, v133, v134);
                        if ((v7 & 0x80000000) != 0)
                        {
                          break;
                        }

                        if (v71 == ++v135)
                        {
                          goto LABEL_113;
                        }
                      }
                    }
                  }

                  goto LABEL_146;
                }
              }
            }

            else
            {
              v111 = 0;
              while (1)
              {
                v37 = uselect_Write(a1, "application/x-realspeak-usmarkers-u16;version=4.0", *(a1 + 760) + 864 * (v111 + *(a1 + 746)), 2, v107, v108, v109, v110);
                if ((v37 & 0x80000000) != 0)
                {
                  break;
                }

                v116 = *(a1 + 760);
                v117 = v111 + *(a1 + 746);
                v118 = v116 + 864 * v117;
                if (*(v118 + 2) != 35 || (*(v118 + 4) & 0x80000000) != 0 && (*(v118 + 8) & 0x80000000) != 0)
                {
                  v119 = (v116 + 864 * v117 + 2);
                }

                else
                {
                  v119 = &v156;
                }

                v37 = uselect_Write(a1, "text/x-realspeak-usphonemes;charset=tts", v119, 1, v112, v113, v114, v115);
                if ((v37 & 0x80000000) != 0)
                {
                  break;
                }

                if (v71 == ++v111)
                {
                  v37 = uselect_Write(a1, "text/x-realspeak-usphonemes;charset=tts", &v154, 1, v107, v108, v109, v110);
                  if ((v37 & 0x80000000) == 0)
                  {
                    v124 = 0;
                    while (1)
                    {
                      v37 = uselect_Write(a1, "application/x-realspeak-usdurs;version=4.0", *(a1 + 760) + 864 * (v124 + *(a1 + 746)) + 50, 2, v120, v121, v122, v123);
                      if ((v37 & 0x80000000) != 0)
                      {
                        break;
                      }

                      if (v71 == ++v124)
                      {
                        goto LABEL_107;
                      }
                    }
                  }

                  goto LABEL_145;
                }
              }
            }
          }

          goto LABEL_145;
        }

        v37 = uselect_ResetUnitSelector(a1, *(*(a1 + 776) + 3524));
        if ((v37 & 0x80000000) == 0)
        {
          v37 = uselect_ProcessUnitSelector(a1);
          if ((v37 & 0x80000000) == 0)
          {
            v38 = *(a1 + 40);
            goto LABEL_54;
          }
        }

LABEL_145:
        v7 = v37;
LABEL_146:
        if ((v7 & 0x1FFF) == 0x80B)
        {
          return 0;
        }

        else
        {
          return v7;
        }
      }

      v7 = v137;
    }

    else
    {
LABEL_12:
      v7 = -2065686508;
    }

    log_OutPublic(*(*(a1 + 16) + 32), "USELECT", 19004, "%s%s", v13, v14, v15, v16, "layer");
    goto LABEL_146;
  }

  if (v158)
  {
    *a5 = 1;
    v53 = *(a1 + 736);
    if (*(a1 + 736))
    {
      v54 = 0;
      v55 = (a1 + 128);
      do
      {
        v56 = *(v55 - 1);
        if (v56)
        {
          v57 = (*(*(a1 + 88) + 72))(v56, *v55);
          if ((v57 & 0x80000000) != 0)
          {
            v62 = v57;
            v153 = *(v55 - 4);
            log_OutPublic(*(*(a1 + 16) + 32), "USELECT", 19006, "%s%s", v58, v59, v60, v61, "layer");
            v11 = v62;
          }

          *(v55 - 1) = safeh_GetNullHandle();
          *v55 = v63;
          v53 = *(a1 + 736);
        }

        ++v54;
        v55 += 5;
      }

      while (v54 < v53);
    }
  }

  else
  {
    *a5 = 0;
  }

  return v11;
}

uint64_t uselect_ProcessEnd(uint64_t a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 34632, 952);
  if ((v3 & 0x80000000) != 0)
  {
    return 2229280776;
  }

  v4 = v3;
  DeallocBufferUnitSelector(a1, *(a1 + 776));
  if (*(a1 + 736))
  {
    v5 = 0;
    v6 = (a1 + 128);
    do
    {
      v7 = *(v6 - 3);
      if (v7)
      {
        v8 = (*(*(a1 + 88) + 72))(v7, *(v6 - 2));
        if ((v8 & 0x80000000) != 0)
        {
          v13 = v8;
          v24 = *(v6 - 4);
          log_OutPublic(*(*(a1 + 16) + 32), "USELECT", 19006, "%s%s", v9, v10, v11, v12, "layer");
          v4 = v13;
        }

        *(v6 - 3) = safeh_GetNullHandle();
        *(v6 - 2) = v14;
      }

      v15 = *(v6 - 1);
      if (v15)
      {
        v16 = (*(*(a1 + 88) + 72))(v15, *v6);
        if ((v16 & 0x80000000) != 0)
        {
          v21 = v16;
          v25 = *(v6 - 4);
          log_OutPublic(*(*(a1 + 16) + 32), "USELECT", 19006, "%s%s", v17, v18, v19, v20, "layer");
          v4 = v21;
        }

        *(v6 - 1) = safeh_GetNullHandle();
        *v6 = v22;
      }

      ++v5;
      v6 += 5;
    }

    while (v5 < *(a1 + 736));
  }

  *(a1 + 736) = 0;
  return v4;
}

uint64_t uselect_GetAlphabetInformation(uint64_t a1, int a2, char *a3)
{
  v5 = safeh_HandleCheck(a1, a2, 34632, 952);
  if ((v5 & 0x80000000) != 0)
  {
    return 2229280776;
  }

  if (!*(a1 + 40))
  {
    return 2229280785;
  }

  v6 = v5;
  bzero(a3, 0x985uLL);
  v7 = 0;
  for (i = 2144; i != 2400; ++i)
  {
    if (*(*(a1 + 40) + i) != 255)
    {
      a3[v7] = i - 96;
      a3[v7 + 514] = *(*(a1 + 40) + *(*(a1 + 40) + i) + 1116);
      a3[v7 + 257] = *(*(a1 + 40) + *(*(a1 + 40) + i) + 859);
      a3[v7 + 771] = *(*(a1 + 40) + *(*(a1 + 40) + i) + 1373);
      a3[v7++ + 1028] = *(*(a1 + 40) + *(*(a1 + 40) + i) + 1630);
    }
  }

  v9 = *(a1 + 40);
  __strcpy_chk();
  v10 = *(a1 + 40);
  if ((*(v10 + 3120) & 0x80000000) == 0)
  {
    strcpy(a3 + 1349, "1234");
    v10 = *(a1 + 40);
  }

  v11 = *(v10 + 2464);
  if (v11)
  {
    v12 = *v11;
    if (*v11)
    {
      v13 = 0;
      v14 = a3 + 1413;
      do
      {
        v15 = strcat(v14, v12);
        *&v14[strlen(v15)] = 32;
        v12 = *(*(*(a1 + 40) + 2464) + 8 * ++v13);
      }

      while (v12);
    }
  }

  return v6;
}

uint64_t uselect_SetUserInformation(uint64_t a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 34632, 952) & 0x80000000) != 0)
  {
    return 2229280776;
  }

  if (*(a1 + 40))
  {
    return 2229280768;
  }

  return 2229280785;
}

uint64_t uselect_QueryCapability(uint64_t a1, int a2, const char *a3, _BOOL4 *a4)
{
  v7 = 2229280768;
  v8 = safeh_HandleCheck(a1, a2, 34632, 952);
  if ((v8 & 0x80000000) != 0)
  {
    return 2229280776;
  }

  v9 = *(a1 + 40);
  if (!v9)
  {
    return 2229280785;
  }

  v10 = v8;
  if (!strcmp(a3, "PRM"))
  {
    if ((*(v9 + 3168) & 0x80000000) == 0)
    {
LABEL_24:
      v15 = 1;
      goto LABEL_25;
    }

    v14 = *(v9 + 3176);
LABEL_14:
    v15 = v14 >= 0;
LABEL_25:
    *a4 = v15;
    return v10;
  }

  if (!strcmp(a3, "BND"))
  {
    if ((*(v9 + 3172) & 0x80000000) == 0 || (*(v9 + 3176) & 0x80000000) == 0 || (*(v9 + 3180) & 0x80000000) == 0 || (*(v9 + 3184) & 0x80000000) == 0 || (*(v9 + 3188) & 0x80000000) == 0 || (*(v9 + 3192) & 0x80000000) == 0 || (*(v9 + 3196) & 0x80000000) == 0 || (*(v9 + 3200) & 0x80000000) == 0 || (*(v9 + 3204) & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    v14 = *(v9 + 3212);
    goto LABEL_14;
  }

  if (!strcmp(a3, "max-PRM"))
  {
    *a4 = 0;
    v11 = *(v9 + 2968);
    for (i = (v11 + 12); ; i += 32)
    {
      v13 = *(i - 3);
      if (v13 == 30)
      {
        v19 = **(a1 + 56);
        v20 = *(v19 + 108);
        if (!v20)
        {
          return 0;
        }

        v21 = 0;
        for (j = 0; j < v20; ++j)
        {
          v23 = i[12];
          v24 = v23 & (*(*(v19 + 160) + j * *(v19 + 168) + *(i - 1)) >> *i);
          if (v24 > v21 && v24 != 4)
          {
            *a4 = v23 & (*(*(v19 + 160) + j * *(v19 + 168) + *(i - 1)) >> *i);
            v20 = *(v19 + 108);
            v21 = v24;
          }

          v7 = 0;
        }

        return v7;
      }

      if (!v13)
      {
        break;
      }
    }

    for (k = (v11 + 12); ; k += 32)
    {
      v18 = *(k - 3);
      if (!v18)
      {
        break;
      }

      if (v18 == 32)
      {
        v26 = **(a1 + 56);
        v27 = *(v26 + 108);
        if (!v27)
        {
          return 0;
        }

        v28 = 0;
        for (m = 0; m < v27; ++m)
        {
          if ((k[12] & (*(*(v26 + 160) + m * *(v26 + 168) + *(k - 1)) >> *k)) >= 6u)
          {
            v30 = 1;
          }

          else
          {
            v30 = 0x20202020203uLL >> (8 * (k[12] & (*(*(v26 + 160) + m * *(v26 + 168) + *(k - 1)) >> *k)));
          }

          if ((v30 & 3u) > v28)
          {
            *a4 = v30;
            v27 = *(v26 + 108);
            v28 = v30;
          }

          v7 = 0;
        }

        return v7;
      }
    }
  }

  return v7;
}

uint64_t uselect_GetParam(uint64_t a1, char *__s1, int a3)
{
  v73 = *MEMORY[0x1E69E9840];
  if (!strcmp(__s1, "minphrase"))
  {
    Int = paramc_ParamGetInt(*(*(a1 + 16) + 40), "minphrase", (a1 + 740));
    if ((Int & 0x80000000) == 0)
    {
      goto LABEL_122;
    }

    *(a1 + 740) = 10;
    if (!a3)
    {
LABEL_111:
      Int = 0;
      goto LABEL_122;
    }

    v38 = *(*(a1 + 16) + 40);
    v39 = *MEMORY[0x1E69E9840];

    return paramc_ParamSetInt(v38, "minphrase", 0xAu);
  }

  if (!strcmp(__s1, "uselearlyemission"))
  {
    *__s1a = 0;
    Str = paramc_ParamGetStr(*(*(a1 + 16) + 40), "uselearlyemission", __s1a);
    if ((Str & 0x80000000) != 0 || (v42 = *__s1a, v43 = **__s1a, !**__s1a))
    {
      *(a1 + 752) = -1;
      if (!a3)
      {
        goto LABEL_111;
      }

      v45 = paramc_ParamSetStr(*(*(a1 + 16) + 40), "uselearlyemission", "");
      goto LABEL_121;
    }

    Int = Str;
    if (!strcmp(*__s1a, "yes"))
    {
LABEL_65:
      *(a1 + 752) = 1;
      goto LABEL_122;
    }

    if (v43 == 48)
    {
      if (v42[1])
      {
        goto LABEL_99;
      }
    }

    else
    {
      if (v43 != 110)
      {
        if (v43 == 49 && !v42[1])
        {
          goto LABEL_65;
        }

LABEL_99:
        *(a1 + 752) = -1;
        Int = 2229280783;
        goto LABEL_122;
      }

      if (v42[1] != 111 || v42[2])
      {
        goto LABEL_99;
      }
    }

    *(a1 + 752) = 0;
    goto LABEL_122;
  }

  if (!strcmp(__s1, "uselectusetriphonecache"))
  {
    *__s1a = 0;
    v44 = paramc_ParamGetInt(*(*(a1 + 16) + 40), "uselectusetriphonecache", __s1a);
    if ((v44 & 0x80000000) == 0)
    {
      Int = v44;
      *(a1 + 912) = *__s1a != 0;
      goto LABEL_122;
    }

    *(a1 + 912) = 1;
    if (!a3)
    {
      goto LABEL_111;
    }

    v45 = paramc_ParamSetInt(*(*(a1 + 16) + 40), "uselectusetriphonecache", 1u);
    goto LABEL_121;
  }

  if (strcmp(__s1, "uselectweightnoreusebias"))
  {
    if (!strcmp(__s1, "uselectweightdurationbias"))
    {
      v48 = (a1 + 920);
      UInt = paramc_ParamGetUInt(*(*(a1 + 16) + 40), "uselectweightdurationbias", (a1 + 920));
      if ((UInt & 0x80000000) != 0)
      {
        *v48 = 0;
        if (!a3)
        {
          goto LABEL_111;
        }

        Int = paramc_ParamSetUInt(*(*(a1 + 16) + 40), "uselectweightdurationbias", 0);
        if ((Int & 0x80000000) != 0 || !*v48)
        {
          goto LABEL_122;
        }
      }

      else
      {
        Int = UInt;
        v55 = *(a1 + 904) * *(a1 + 920) / 0x64u;
        *(a1 + 920) = v55;
        if (!v55)
        {
          goto LABEL_122;
        }
      }

      if (*(a1 + 924) || !*(a1 + 40))
      {
        goto LABEL_122;
      }

      v56 = (a1 + 924);
      v57 = a1;
      v58 = 0;
    }

    else
    {
      if (strcmp(__s1, "uselectweightpitchbias"))
      {
        if (!strcmp(__s1, "uselectonlinereduction"))
        {
          *__s1a = 0;
          *__s2 = 0;
          LOBYTE(__s) = 0;
          if ((paramc_ParamGet(*(*(a1 + 16) + 40), "uselectonlinereduction", __s1a, __s2) & 0x80000000) == 0)
          {
            Int = uselect_ApplyOnlineReduction(a1, *__s1a, *__s2);
            paramc_ParamRelease(*(*(a1 + 16) + 40));
            goto LABEL_122;
          }

          if (!a3)
          {
            goto LABEL_111;
          }

          v45 = paramc_ParamSet(*(*(a1 + 16) + 40), "uselectonlinereduction", &__s, 1uLL);
        }

        else
        {
          if (strcmp(__s1, "uselectmaxcandspruning"))
          {
            v6 = *(a1 + 80);
            if (!strcmp(__s1, v6))
            {
              __s = 0;
              Int = paramc_ParamGetStr(*(*(a1 + 16) + 40), v6, &__s);
              if ((Int & 0x80000000) != 0)
              {
                if (a3)
                {
                  Int = paramc_ParamSetStr(*(*(a1 + 16) + 40), *(a1 + 80), "");
                }

                v10 = 0;
LABEL_126:
                if (v10)
                {
LABEL_127:
                  heap_Free(*(*(a1 + 16) + 8), v10);
                }

                goto LABEL_122;
              }

              v8 = strlen(__s);
              v9 = heap_Calloc(*(*(a1 + 16) + 8), 1, (v8 + 1));
              if (v9)
              {
                v10 = v9;
                strcpy(v9, __s);
                paramc_ParamRelease(*(*(a1 + 16) + 40));
                if (*(a1 + 48) >= 2u)
                {
                  v11 = 0;
                  for (i = 1; i < *(a1 + 48); ++i)
                  {
                    v13 = strchr(v10, 59);
                    if (!v13)
                    {
                      goto LABEL_22;
                    }

                    v14 = v13;
                    v15 = v10;
                    do
                    {
                      *v14 = 0;
                      v16 = strcmp(v15, *(*(a1 + 72) + 8 * i));
                      *v14 = 59;
                      v15 = v14 + 1;
                      v17 = strchr(v14 + 1, 59);
                      v14 = v17;
                      if (v16)
                      {
                        v18 = v17 == 0;
                      }

                      else
                      {
                        v18 = 1;
                      }
                    }

                    while (!v18);
                    if (v16)
                    {
LABEL_22:
                      if (i >= *(a1 + 48))
                      {
                        Int = 0;
                      }

                      else
                      {
                        paramc_ParamSetStr(*(*(a1 + 16) + 40), "voiceaddon", *(*(a1 + 72) + 8 * i));
                        BrokerString = uselect_CreateBrokerString(*(a1 + 16), __s1a, 0x100uLL, 0, 0, 0, 0);
                        if ((BrokerString & 0x80000000) != 0)
                        {
                          Int = BrokerString;
                          goto LABEL_127;
                        }

                        v20 = *(*(a1 + 72) + 8 * i);
                        if (v20)
                        {
                          heap_Free(*(*(a1 + 16) + 8), v20);
                          *(*(a1 + 72) + 8 * i) = 0;
                        }

                        v21 = *(a1 + 24);
                        if (!v21 || (v22 = *(v21 + 48)) == 0)
                        {
                          v22 = *(*(a1 + 16) + 48);
                        }

                        v23 = objc_ReleaseObject(v22, __s1a);
                        Int = uselect_CreateBrokerString(*(a1 + 16), __s2, 0x100uLL, 0, 0, 0, 1);
                        if ((Int & 0x80000000) != 0)
                        {
                          goto LABEL_126;
                        }

                        if ((v23 & 0x1FFF) == 0x14 && strcmp(__s1a, __s2))
                        {
                          v24 = *(a1 + 24);
                          if (!v24 || (v25 = *(v24 + 48)) == 0)
                          {
                            v25 = *(*(a1 + 16) + 48);
                          }

                          objc_ReleaseObject(v25, __s2);
                        }

                        v26 = *(a1 + 48);
                        v27 = v11;
                        if (i + 1 < v26)
                        {
                          do
                          {
                            *(*(a1 + 72) + 8 * v27 + 8) = *(*(a1 + 72) + 8 * v27 + 16);
                            *(*(a1 + 56) + 8 * v27 + 8) = *(*(a1 + 56) + 8 * v27 + 16);
                            v28 = *(a1 + 64);
                            v29 = *(*(*(a1 + 56) + 8 * v27) + 108) + *(v28 + 4 * v27);
                            *(v28 + 4 * v27 + 4) = v29;
                            Int = uselect_CommunicateAddonOffset(a1, *(*(a1 + 72) + 8 * v27 + 8), v29);
                            if ((Int & 0x80000000) != 0)
                            {
                              goto LABEL_126;
                            }

                            v26 = *(a1 + 48);
                            v30 = v27 + 3;
                            ++v27;
                          }

                          while (v30 < v26);
                        }

                        *(a1 + 48) = v26 - 1;
                      }
                    }

                    ++v11;
                  }
                }

                v31 = strchr(v10, 59);
                if (v31)
                {
                  v32 = v31;
                  v33 = v10;
                  do
                  {
                    *v32 = 0;
                    v34 = *(a1 + 48);
                    if (v34 <= 1)
                    {
                      v34 = 1;
                    }

                    v35 = 8 * v34;
                    v36 = 8;
                    while (v35 != v36)
                    {
                      v37 = strcmp(v33, *(*(a1 + 72) + v36));
                      v36 += 8;
                      if (!v37)
                      {
                        goto LABEL_51;
                      }
                    }

                    Int = uselect_AddDataPart(a1, v33);
                    if ((Int & 0x80000000) != 0)
                    {
                      goto LABEL_126;
                    }

LABEL_51:
                    *v32 = 59;
                    v33 = v32 + 1;
                    v32 = strchr(v32 + 1, 59);
                  }

                  while (v32);
                }

                goto LABEL_126;
              }

              Int = 2229280778;
LABEL_122:
              v68 = *MEMORY[0x1E69E9840];
              return Int;
            }

            goto LABEL_111;
          }

          *__s1a = 0;
          DeallocUnitSelectorMemory_NRowsDependency(a1);
          if ((paramc_ParamGetInt(*(*(a1 + 16) + 40), "uselectmaxcandspruning", __s1a) & 0x80000000) == 0)
          {
            goto LABEL_101;
          }

          *__s1a = 0;
          if (!a3)
          {
            goto LABEL_115;
          }

          v45 = paramc_ParamSetInt(*(*(a1 + 16) + 40), "uselectmaxcandspruning", 0);
          if ((v45 & 0x80000000) == 0)
          {
LABEL_101:
            LOBYTE(v64) = __s1a[0];
            if (*__s1a)
            {
              if (*__s1a >= 256)
              {
                LOBYTE(v64) = -1;
              }

              v65 = *(a1 + 40);
              goto LABEL_116;
            }

LABEL_115:
            v65 = *(a1 + 40);
            v64 = *(v65 + 2552);
LABEL_116:
            *(a1 + 908) = v64;
            if (*(v65 + 2560))
            {
              v66 = v64;
              v67 = v64 + 20;
              if (v66 > 0xEB)
              {
                v67 = -1;
              }

              *(a1 + 908) = v67;
            }

            v45 = AllocUnitSelectorMemory_NRowsDependency(a1);
          }
        }

LABEL_121:
        Int = v45;
        goto LABEL_122;
      }

      v59 = (a1 + 928);
      v60 = paramc_ParamGetUInt(*(*(a1 + 16) + 40), "uselectweightpitchbias", (a1 + 928));
      if ((v60 & 0x80000000) != 0)
      {
        *v59 = 0;
        if (!a3)
        {
          goto LABEL_111;
        }

        Int = paramc_ParamSetUInt(*(*(a1 + 16) + 40), "uselectweightpitchbias", 0);
        if ((Int & 0x80000000) != 0 || !*v59)
        {
          goto LABEL_122;
        }
      }

      else
      {
        Int = v60;
        v61 = *(a1 + 904) * *(a1 + 928) / 0x64u;
        *(a1 + 928) = v61;
        if (!v61)
        {
          goto LABEL_122;
        }
      }

      if (*(a1 + 932) || !*(a1 + 40))
      {
        goto LABEL_122;
      }

      v56 = (a1 + 932);
      v57 = a1;
      v58 = 1;
    }

    uselect_GetP95Value(v57, v58, v56, v50, v51, v52, v53, v54, v69);
    goto LABEL_122;
  }

  v46 = (a1 + 916);
  v47 = paramc_ParamGetUInt(*(*(a1 + 16) + 40), "uselectweightnoreusebias", (a1 + 916));
  if ((v47 & 0x80000000) == 0)
  {
    Int = v47;
    *v46 *= 100;
    goto LABEL_122;
  }

  *v46 = 0;
  if (!a3)
  {
    goto LABEL_111;
  }

  v62 = *(*(a1 + 16) + 40);
  v63 = *MEMORY[0x1E69E9840];

  return paramc_ParamSetUInt(v62, "uselectweightnoreusebias", 0);
}

uint64_t uselect_ParamCheckChange(int a1, char *__s1, const char *a3, _DWORD *a4)
{
  *a4 = 1;
  if (!strcmp(__s1, "minphrase"))
  {
    if (atoi(a3) < 0)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (strcmp(__s1, "uselearlyemission"))
  {
    return 0;
  }

  result = strcmp(a3, "yes");
  if (!result)
  {
    return result;
  }

  v8 = *a3;
  if (v8 != 48)
  {
    if (v8 == 110)
    {
      if (a3[1] == 111 && !a3[2])
      {
        return 0;
      }

      goto LABEL_13;
    }

    if (v8 != 49)
    {
      goto LABEL_13;
    }
  }

  if (!a3[1])
  {
    return 0;
  }

LABEL_13:
  *a4 = 0;
  return 2229280783;
}

void *uselect_GetP95Value(void *result, int a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  if (result)
  {
    v9 = result;
    v10 = result[5];
    if (v10)
    {
      v11 = result[7];
      if (*(*v11 + 108))
      {
        if (a2)
        {
          i = *(v10 + 3008);
          if (!i)
          {
            return result;
          }
        }

        else
        {
          v18 = *(v10 + 2966);
          if (!*(v10 + 2966))
          {
            return result;
          }

          for (i = *(v10 + 2968); *i != 6; i += 32)
          {
            if (!--v18)
            {
              return result;
            }
          }
        }

        v15 = *(result + 12);
        if (v15)
        {
          LODWORD(v16) = 0;
          do
          {
            v17 = *v11++;
            v16 = (*(v17 + 108) + v16);
            --v15;
          }

          while (v15);
        }

        else
        {
          v16 = 0;
        }

        v19 = heap_Calloc(*(result[2] + 8), v16, 1);
        v24 = v9[2];
        if (v19)
        {
          v25 = v19;
          v30 = heap_Calloc(*(v24 + 8), v16, 1);
          if (v30)
          {
            v31 = *(v9 + 12);
            if (v31)
            {
              v32 = 0;
              v33 = 0;
              do
              {
                v34 = *(v9[7] + 8 * v32);
                v35 = *(v34 + 108);
                if (v35)
                {
                  for (j = 0; j < v35; ++j)
                  {
                    if (!a2 || *(*(v34 + 160) + j * *(v34 + 168) + *(i + 11)))
                    {
                      *(v25 + v33++) = *(*(v34 + 160) + j * *(v34 + 168) + *(i + 11));
                      v35 = *(v34 + 108);
                    }
                  }

                  v31 = *(v9 + 12);
                }

                ++v32;
              }

              while (v32 < v31);
            }

            else
            {
              v33 = 0;
            }

            v39 = heap_Calloc(*(v9[2] + 8), 256, 4);
            v38 = v39;
            if (v39)
            {
              if (v33)
              {
                v44 = v33;
                v45 = v25;
                do
                {
                  v46 = *v45++;
                  ++*(v39 + 4 * v46);
                  --v44;
                }

                while (v44);
              }

              v47 = 0;
              v48 = 0;
              do
              {
                if (*(v39 + 4 * v47))
                {
                  v49 = 0;
                  do
                  {
                    *(v30 + v48 + v49++) = v47;
                  }

                  while (v49 < *(v39 + 4 * v47));
                  v48 += v49;
                }

                ++v47;
              }

              while (v47 != 256);
              *a3 = *(v30 + (95 * v48) / 0x64uLL);
            }

            else
            {
              log_OutPublic(*(v9[2] + 32), "USELECT", 19000, 0, v40, v41, v42, v43, v51);
            }
          }

          else
          {
            log_OutPublic(*(v9[2] + 32), "USELECT", 19000, 0, v26, v27, v28, v29, v51);
            v38 = 0;
          }

          result = heap_Free(*(v9[2] + 8), v25);
          if (v38)
          {
            result = heap_Free(*(v9[2] + 8), v38);
          }

          if (v30)
          {
            v50 = *(v9[2] + 8);

            return heap_Free(v50, v30);
          }
        }

        else
        {
          v37 = *(v24 + 32);

          return log_OutPublic(v37, "USELECT", 19000, 0, v20, v21, v22, v23, a9);
        }
      }
    }
  }

  return result;
}

uint64_t uselect_ApplyOnlineReduction(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 != 1)
  {
    v5 = 2229280778;
    if (*(**(a1 + 56) + 108) != a3)
    {
      return 2229280783;
    }

    if (*(a1 + 936))
    {
      if (!a3)
      {
        return 0;
      }
    }

    else
    {
      v7 = heap_Calloc(*(*(a1 + 16) + 8), a3, 1);
      *(a1 + 936) = v7;
      if (!v7)
      {
        log_OutPublic(*(*(a1 + 16) + 32), "USELECT", 19000, 0, v8, v9, v10, v11, v14);
        return v5;
      }

      if (!*(**(a1 + 56) + 108))
      {
        return 0;
      }
    }

    v12 = 0;
    do
    {
      *(*(a1 + 936) + v12) = *(a2 + v12);
      ++v12;
    }

    while (v12 < *(**(a1 + 56) + 108));
    return 0;
  }

  v4 = *(a1 + 936);
  if (!v4)
  {
    return 0;
  }

  heap_Free(*(*(a1 + 16) + 8), v4);
  v5 = 0;
  *(a1 + 936) = 0;
  return v5;
}

void *DeallocUnitSelectorMemory_NRowsDependency(void *result)
{
  v1 = result;
  v2 = result[108];
  if (v2)
  {
    result = heap_Free(*(result[2] + 8), v2);
    v1[108] = 0;
  }

  v3 = *(v1 + 908);
  if (!*(v1 + 908))
  {
    v5 = v1[102];
    if (!v5)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v4 = 0;
  v5 = v1[102];
  v6 = 24;
  v7 = v5;
  do
  {
    if (v7 && *(v7 + v6))
    {
      result = heap_Free(*(v1[2] + 8), *(v7 + v6));
      v5 = v1[102];
      *(v5 + v6) = 0;
      v3 = *(v1 + 908);
      v7 = v5;
    }

    ++v4;
    v6 += 112;
  }

  while (v4 < 3 * v3);
  if (v5)
  {
LABEL_10:
    result = heap_Free(*(v1[2] + 8), v5);
    v1[102] = 0;
  }

LABEL_11:
  *(v1 + 908) = 0;
  return result;
}

uint64_t AllocUnitSelectorMemory_NRowsDependency(uint64_t a1)
{
  v2 = heap_Calloc(*(*(a1 + 16) + 8), 3 * *(a1 + 908), 112);
  *(a1 + 816) = v2;
  if (v2)
  {
    if (*(a1 + 908))
    {
      v7 = 0;
      v8 = 24;
      while (1)
      {
        v9 = heap_Calloc(*(*(a1 + 16) + 8), *(*(a1 + 40) + 3360), 4);
        *(*(a1 + 816) + v8) = v9;
        if (!v9)
        {
          break;
        }

        ++v7;
        v10 = *(a1 + 908);
        v8 += 112;
        if (v7 >= 3 * v10)
        {
          v11 = v10 + 1;
          goto LABEL_8;
        }
      }
    }

    else
    {
      v11 = 1;
LABEL_8:
      v12 = heap_Calloc(*(*(a1 + 16) + 8), v11, 56);
      *(a1 + 864) = v12;
      if (v12)
      {
        return 0;
      }
    }
  }

  log_OutPublic(*(*(a1 + 16) + 32), "USELECT", 19000, 0, v3, v4, v5, v6, v14);
  return 2229280778;
}

uint64_t uselect_AddDataPart(uint64_t a1, char *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v39 = 0;
  v38 = 0;
  v40[0] = 0;
  if (!a2 || !*a2)
  {
    v8 = 0;
    goto LABEL_16;
  }

  paramc_ParamSetStr(*(*(a1 + 16) + 40), "voiceaddon", a2);
  BrokerString = uselect_CreateBrokerString(*(a1 + 16), v40, 0x100uLL, 0, 0, 0, 0);
  if ((BrokerString & 0x80000000) != 0 || (BrokerString = uselect_CheckForDataFile(*a1, *(a1 + 8), v40, &v38), (BrokerString & 0x80001FFF) == 0x8000000A) || !v38 && (BrokerString = uselect_CreateBrokerString(*(a1 + 16), v40, 0x100uLL, 0, 0, 0, 1), (BrokerString & 0x80000000) != 0) || ((v5 = *(a1 + 24)) == 0 || (v6 = *(v5 + 48)) == 0 ? (v7 = *(a1 + 16), v6 = *(v7 + 48)) : (v7 = *(a1 + 16)), BrokerString = objc_GetAddRefCountedObject(v6, v40, uselect_ObjcVoiceOpen, uselect_ObjcVoiceClose, v7, &v39), (BrokerString & 0x80000000) != 0))
  {
    v8 = BrokerString;
    goto LABEL_16;
  }

  v9 = *(v39 + 32);
  v10 = *(a1 + 40);
  if (!strcmp((v10 + 602), (v9 + 602)))
  {
    v8 = 0;
  }

  else
  {
    log_OutPublic(*(*(a1 + 16) + 32), "USELECT", 19026, "%s:%s", v11, v12, v13, v14, v9 + 152);
    v10 = *(a1 + 40);
    v8 = 2229280793;
  }

  if (strcmp((v10 + 2400), (v9 + 2400)))
  {
    log_OutPublic(*(*(a1 + 16) + 32), "USELECT", 19026, "%s:%s", v17, v18, v19, v20, v9 + 152);
    v10 = *(a1 + 40);
    v8 = 2229280793;
  }

  v21 = *(v10 + 2464);
  v22 = *(v9 + 2464);
  if (v21)
  {
    if (v22)
    {
      v23 = *v21;
      if (*v21)
      {
        v24 = v21 + 1;
        while (*v22)
        {
          if (strcmp(v23, *v22))
          {
            log_OutPublic(*(*(a1 + 16) + 32), "USELECT", 19026, "%s:%s", v17, v18, v19, v20, v9 + 152);
            v8 = 2229280793;
          }

          ++v22;
          v25 = *v24++;
          v23 = v25;
          if (!v25)
          {
            goto LABEL_28;
          }
        }

        goto LABEL_38;
      }

LABEL_28:
      if (!*v22)
      {
LABEL_29:
        if ((v8 & 0x80000000) == 0)
        {
          v26 = *(a1 + 48) + 1;
          *(a1 + 48) = v26;
          v27 = heap_Realloc(*(*(a1 + 16) + 8), *(a1 + 56), 8 * v26);
          if (v27 && (*(a1 + 56) = v27, v28 = *(a1 + 48), *(v27 + 8 * (v28 - 1)) = *(v9 + 3552), (v29 = heap_Realloc(*(*(a1 + 16) + 8), *(a1 + 64), 4 * v28)) != 0) && (*(a1 + 64) = v29, *(v29 + 4 * (*(a1 + 48) - 1)) = *(*(*(a1 + 56) + 8 * (*(a1 + 48) - 2)) + 108) + *(v29 + 4 * (*(a1 + 48) - 2)), (v30 = heap_Realloc(*(*(a1 + 16) + 8), *(a1 + 72), 8 * *(a1 + 48))) != 0))
          {
            *(a1 + 72) = v30;
            v31 = strlen(a2);
            v32 = heap_Calloc(*(*(a1 + 16) + 8), 1, (v31 + 1));
            v33 = *(a1 + 48) - 1;
            *(*(a1 + 72) + 8 * v33) = v32;
            v34 = *(*(a1 + 72) + 8 * v33);
            v8 = 2229280778;
            if (v34)
            {
              strcpy(v34, a2);
              v35 = uselect_CommunicateAddonOffset(a1, *(*(a1 + 72) + 8 * (*(a1 + 48) - 1)), *(*(a1 + 64) + 4 * (*(a1 + 48) - 1)));
              if ((v35 & 0x80000000) != 0)
              {
                v8 = v35;
              }

              else
              {
                v8 = uselect_CommunicateAddonReductionParameters(a1, *(*(a1 + 72) + 8 * (*(a1 + 48) - 1)), v9);
                if ((v8 & 0x80000000) == 0)
                {
                  goto LABEL_16;
                }
              }
            }
          }

          else
          {
            v8 = 2229280778;
          }
        }

        goto LABEL_39;
      }
    }
  }

  else if (!v22)
  {
    goto LABEL_29;
  }

LABEL_38:
  log_OutPublic(*(*(a1 + 16) + 32), "USELECT", 19026, "%s:%s", v17, v18, v19, v20, v9 + 152);
  v8 = 2229280793;
LABEL_39:
  if (v9 && v40[0])
  {
    v36 = *(a1 + 24);
    if (!v36 || (v37 = *(v36 + 48)) == 0)
    {
      v37 = *(*(a1 + 16) + 48);
    }

    objc_ReleaseObject(v37, v40);
    if ((v8 & 0x1FFF) == 0xA)
    {
      --*(a1 + 48);
    }
  }

LABEL_16:
  v15 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t uselect_CommunicateAddonOffset(uint64_t a1, char *__s, unsigned int a3)
{
  if (!__s || !*__s)
  {
    return 0;
  }

  v6 = *(*(a1 + 16) + 8);
  v7 = strlen(__s);
  v8 = heap_Calloc(v6, 1, (v7 + 18));
  if (v8)
  {
    v13 = v8;
    strcpy(v8, "voiceaddonoffset.");
    v14 = strlen(v8);
    v15 = v14;
    if (*__s)
    {
      v16 = 0;
      v17 = 0;
      v18 = v14;
      do
      {
        *(v13 + v18++) = __tolower(__s[v16]);
        v16 = ++v17;
      }

      while (strlen(__s) > v17);
    }

    else
    {
      LODWORD(v16) = 0;
    }

    *(v13 + v16 + v15) = 0;
    v20 = paramc_ParamSetInt(*(*(a1 + 16) + 40), v13, a3);
    heap_Free(*(*(a1 + 16) + 8), v13);
    return v20;
  }

  else
  {
    log_OutPublic(*(*(a1 + 16) + 32), "USELECT", 19000, 0, v9, v10, v11, v12, v21);
    return 2229280778;
  }
}

uint64_t uselect_CommunicateAddonReductionParameters(uint64_t a1, char *__s, char *a3)
{
  v3 = 0;
  if (!__s || !a3)
  {
    return v3;
  }

  if (!*__s)
  {
    return 0;
  }

  v7 = *(*(a1 + 16) + 8);
  v8 = strlen(__s);
  v9 = heap_Calloc(v7, 1, (v8 + 26));
  if (!v9)
  {
    v3 = 2229280778;
    log_OutPublic(*(*(a1 + 16) + 32), "USELECT", 19000, 0, v10, v11, v12, v13, v47);
    return v3;
  }

  v14 = v9;
  strcpy(v9, "voiceaddonrawdataversion.");
  v15 = strlen(v9);
  v16 = v15;
  if (*__s)
  {
    v17 = 0;
    v18 = 0;
    v19 = v15;
    do
    {
      *(v14 + v19++) = __tolower(__s[v17]);
      v17 = ++v18;
    }

    while (strlen(__s) > v18);
  }

  else
  {
    LODWORD(v17) = 0;
  }

  *(v14 + v17 + v16) = 0;
  v20 = paramc_ParamSetStr(*(*(a1 + 16) + 40), v14, a3 + 64);
  if ((v20 & 0x80000000) != 0)
  {
    v3 = v20;
    v33 = 0;
    v27 = 0;
  }

  else
  {
    v21 = strlen(__s);
    v22 = heap_Calloc(*(*(a1 + 16) + 8), 1, (v21 + 21));
    v27 = v22;
    if (v22)
    {
      strcpy(v22, "voiceaddonreduction.");
      v28 = strlen(v22);
      v29 = v28;
      if (*__s)
      {
        v30 = 0;
        v31 = 0;
        v32 = v28;
        do
        {
          *(v27 + v32++) = __tolower(__s[v30]);
          v30 = ++v31;
        }

        while (strlen(__s) > v31);
      }

      else
      {
        LODWORD(v30) = 0;
      }

      *(v27 + v30 + v29) = 0;
      v34 = paramc_ParamSetStr(*(*(a1 + 16) + 40), v27, a3 + 76);
      if ((v34 & 0x80000000) == 0)
      {
        v35 = strlen(__s);
        v36 = heap_Calloc(*(*(a1 + 16) + 8), 1, (v35 + 28));
        v33 = v36;
        if (v36)
        {
          strcpy(v36, "voiceaddonreductionversion.");
          v41 = strlen(v36);
          v42 = v41;
          if (*__s)
          {
            v43 = 0;
            v44 = 0;
            v45 = v41;
            do
            {
              *(v33 + v45++) = __tolower(__s[v43]);
              v43 = ++v44;
            }

            while (strlen(__s) > v44);
          }

          else
          {
            LODWORD(v43) = 0;
          }

          *(v33 + v43 + v42) = 0;
          v3 = paramc_ParamSetStr(*(*(a1 + 16) + 40), v33, a3 + 140);
        }

        else
        {
          v3 = 2229280778;
          log_OutPublic(*(*(a1 + 16) + 32), "USELECT", 19000, 0, v37, v38, v39, v40, v47);
        }

        goto LABEL_32;
      }

      v3 = v34;
    }

    else
    {
      v3 = 2229280778;
      log_OutPublic(*(*(a1 + 16) + 32), "USELECT", 19000, 0, v23, v24, v25, v26, v47);
    }

    v33 = 0;
  }

LABEL_32:
  heap_Free(*(*(a1 + 16) + 8), v14);
  if (v27)
  {
    heap_Free(*(*(a1 + 16) + 8), v27);
  }

  if (v33)
  {
    heap_Free(*(*(a1 + 16) + 8), v33);
  }

  return v3;
}

void *DeallocBufferUnitSelector(void *result, void *a2)
{
  if (a2)
  {
    v2 = result;
    if (result[5])
    {
      v4 = result[95];
      if (v4)
      {
        result = heap_Free(*(result[2] + 8), v4);
        v2[95] = 0;
      }

      v5 = a2[441];
      if (v5)
      {
        result = heap_Free(*(v2[2] + 8), v5);
        a2[441] = 0;
      }

      v6 = a2[442];
      if (v6)
      {
        result = heap_Free(*(v2[2] + 8), v6);
        a2[442] = 0;
      }

      v7 = a2[443];
      if (v7)
      {
        result = heap_Free(*(v2[2] + 8), v7);
        a2[443] = 0;
      }

      v8 = a2[451];
      if (v8)
      {
        result = heap_Free(*(v2[2] + 8), v8);
        a2[451] = 0;
      }
    }
  }

  return result;
}

uint64_t uselect_RemoveDataPartClose(uint64_t result, unsigned int a2)
{
  if (*(result + 48) > a2)
  {
    v4 = result;
    paramc_ParamSetStr(*(*(result + 16) + 40), "voiceaddon", "");
    v5 = *(v4[9] + 8 * a2);
    if (v5)
    {
      heap_Free(*(v4[2] + 8), v5);
      *(v4[9] + 8 * a2) = 0;
    }

    v6 = v4[3];
    if (!v6 || (v7 = *(v6 + 48)) == 0)
    {
      v7 = *(v4[2] + 48);
    }

    v8 = **(v4[7] + 8 * a2) + 152;

    return objc_ReleaseObject(v7, v8);
  }

  return result;
}

uint64_t uselect_ReadDirectStart(uint64_t a1, char *__s1, void *a3, _DWORD *a4)
{
  v6 = 2229280775;
  v7 = *(a1 + 736);
  if (!*(a1 + 736))
  {
LABEL_5:
    v6 = 2229280788;
    goto LABEL_6;
  }

  v10 = a1 + 96;
  while (strcmp(*v10, __s1))
  {
    v10 += 40;
    if (!--v7)
    {
      goto LABEL_5;
    }
  }

  v16 = (*(*(a1 + 88) + 88))(*(v10 + 8), *(v10 + 16), a3, a4);
  v17 = v16;
  if ((v16 & 0x80000000) != 0)
  {
    v6 = v16;
LABEL_6:
    if (!strncmp(__s1, "application/x-realspeak-cspp-", 0x1DuLL) || !strcmp(__s1, "application/x-realspeak-usnoreusebias;version=4.0") || !strcmp(__s1, "application/x-realspeak-usprosodybias;version=4.0") || !strcmp(__s1, "application/x-realspeak-usfrozen;version=4.0"))
    {
      return v6;
    }

    v15 = 19004;
LABEL_16:
    log_OutPublic(*(*(a1 + 16) + 32), "USELECT", v15, "%s%s", v11, v12, v13, v14, "layer");
    return v6;
  }

  if (!strncmp(*v10, "text/", 5uLL) && (!*a4 || *(*a3 + (*a4 - 1))))
  {
    v15 = 19005;
    goto LABEL_16;
  }

  return v17;
}

uint64_t AllocBufferUnitSelector(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 3524);
  v5 = heap_Calloc(*(*(a1 + 16) + 8), v4, 4);
  *(a2 + 3528) = v5;
  v10 = *(a1 + 16);
  if (!v5 || (v11 = heap_Calloc(*(v10 + 8), (2 * v4), 2), *(a2 + 3536) = v11, v10 = *(a1 + 16), !v11) || (v12 = heap_Calloc(*(v10 + 8), (2 * v4), 2), *(a2 + 3544) = v12, v10 = *(a1 + 16), !v12))
  {
    v15 = 2229280778;
LABEL_9:
    log_OutPublic(*(v10 + 32), "USELECT", 19000, 0, v6, v7, v8, v9, v17);
    return v15;
  }

  v13 = heap_Calloc(*(v10 + 8), v4, 4);
  *(a2 + 3608) = v13;
  if (!v13)
  {
    v15 = 2229280778;
    v10 = *(a1 + 16);
    goto LABEL_9;
  }

  v14 = *(a2 + 3524);
  if (v14 >= 1)
  {
    memset(v13, 255, 4 * v14);
  }

  return 0;
}

uint64_t uselect_Write(uint64_t a1, char *__s2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = 2229280788;
  v11 = *(a1 + 736);
  if (!*(a1 + 736))
  {
    goto LABEL_7;
  }

  v14 = (a1 + 128);
  while (strcmp(*(v14 - 4), __s2))
  {
    v14 += 5;
    if (!--v11)
    {
      goto LABEL_7;
    }
  }

  v10 = (*(*(a1 + 88) + 104))(*(v14 - 1), *v14, a3, a4);
  if ((v10 & 0x80000000) != 0)
  {
LABEL_7:
    log_OutPublic(*(*(a1 + 16) + 32), "USELECT", 19003, "%s%s", a5, a6, a7, a8, "layer");
  }

  return v10;
}

uint64_t uselect_GetOffsetAndCountInCache3Table(_BYTE *a1, uint64_t a2, _BYTE *a3, int a4, int a5, _DWORD *a6)
{
  v6 = a3[1];
  if (v6 == 108)
  {
    v7 = 204;
  }

  else
  {
    v7 = 208;
  }

  v8 = 216;
  if (v6 != 108)
  {
    v8 = 224;
  }

  v9 = 240;
  if (v6 == 108)
  {
    v9 = 232;
    v10 = 248;
  }

  else
  {
    v10 = 252;
  }

  v11 = 264;
  if (v6 == 108)
  {
    v11 = 256;
  }

  if (a4)
  {
    v12 = a4 - a1[2496];
  }

  else
  {
    v12 = a1[3577];
  }

  v13 = *(a2 + v9);
  v14 = *(a2 + v8);
  v15 = *(a2 + v10);
  v16 = *(a2 + v7);
  if (a5)
  {
    v17 = a1[2496];
    v18 = a5 - v17;
  }

  else
  {
    v18 = a1[3577];
    v17 = a1[2496];
  }

  v19 = 0;
  v20 = *(a2 + v11);
  v21 = *a3 - v17;
  v22 = a1[3576];
  v23 = v21;
  v24 = (v22 * v12 + v21) * v22;
  v25 = v18;
  v26 = v24 + v18;
  v27 = (v16 - 1);
  v28 = v27;
  v29 = v27;
  do
  {
    v30 = (v19 + v29) >> 1;
    v31 = *(v14 + 4 * v30);
    if (v31 <= v26)
    {
      if (v31 >= v26)
      {
LABEL_57:
        if (v30 != v27)
        {
          v15 = *(v13 + 4 * (v30 + 1));
          v27 = v30;
        }

        *a6 = v15 - *(v13 + 4 * v27);
        return v20 + 4 * *(v13 + 4 * v30);
      }

      v19 = v30 + 1;
    }

    else
    {
      if (v19 + v29 < 2)
      {
        break;
      }

      v29 = v30 - 1;
    }
  }

  while (v19 <= v29);
  v32 = a1[3577];
  if (v6 == 108)
  {
    if (v25 != v32)
    {
      v33 = 0;
      v34 = v24 + v32;
      v35 = v27;
      do
      {
        v30 = (v33 + v35) >> 1;
        v36 = *(v14 + 4 * v30);
        if (v36 <= v34)
        {
          if (v36 >= v34)
          {
            goto LABEL_57;
          }

          v33 = v30 + 1;
        }

        else
        {
          if (v33 + v35 < 2)
          {
            break;
          }

          v35 = v30 - 1;
        }
      }

      while (v33 <= v35);
    }

    v37 = 0;
    v38 = v32 + (v23 + v32 * v22) * v22;
    do
    {
      v30 = (v37 + v28) >> 1;
      v39 = *(v14 + 4 * v30);
      if (v39 <= v38)
      {
        if (v39 >= v38)
        {
          goto LABEL_57;
        }

        v37 = v30 + 1;
      }

      else
      {
        if (v37 + v28 < 2)
        {
          return 0;
        }

        v28 = v30 - 1;
      }
    }

    while (v37 <= v28);
  }

  else
  {
    v40 = (v23 + v32 * v22) * v22;
    if (v32 != v12)
    {
      v41 = 0;
      v42 = v40 + v25;
      v43 = v27;
      do
      {
        v30 = (v41 + v43) >> 1;
        v44 = *(v14 + 4 * v30);
        if (v44 <= v42)
        {
          if (v44 >= v42)
          {
            goto LABEL_57;
          }

          v41 = v30 + 1;
        }

        else
        {
          if (v41 + v43 < 2)
          {
            break;
          }

          v43 = v30 - 1;
        }
      }

      while (v41 <= v43);
    }

    v45 = 0;
    v46 = v40 + v32;
    do
    {
      v30 = (v45 + v28) >> 1;
      v47 = *(v14 + 4 * v30);
      if (v47 <= v46)
      {
        if (v47 >= v46)
        {
          goto LABEL_57;
        }

        v45 = v30 + 1;
      }

      else
      {
        if (v45 + v28 < 2)
        {
          return 0;
        }

        v28 = v30 - 1;
      }
    }

    while (v45 <= v28);
  }

  return 0;
}

uint64_t uselect_InitForPreselDistFunc(uint64_t a1)
{
  v1 = 2229280769;
  v2 = dist_LPHONEME_DATACOST;
  switch(*a1)
  {
    case 1:
      goto LABEL_7;
    case 2:
      v4 = dist_RPHONEME_DATACOST;
      goto LABEL_6;
    case 3:
      v4 = dist_LLPHONEME_DATACOST;
      goto LABEL_6;
    case 4:
      v4 = dist_RRPHONEME_DATACOST;
      goto LABEL_6;
    case 5:
      v4 = dist_PITCH_CART;
      goto LABEL_6;
    case 6:
      v4 = dist_DUR_CART;
      goto LABEL_6;
    case 7:
    case 8:
    case 9:
    case 0xA:
    case 0xB:
    case 0xC:
    case 0xD:
    case 0xE:
    case 0xF:
    case 0x10:
    case 0x12:
    case 0x1E:
    case 0x1F:
    case 0x20:
    case 0x21:
    case 0x22:
    case 0x23:
    case 0x24:
    case 0x25:
    case 0x26:
    case 0x27:
    case 0x28:
    case 0x29:
    case 0x2B:
    case 0x2C:
    case 0x45:
    case 0x46:
      v3 = *(a1 + 13) - 2;
      if (v3 >= 7 || ((0x47u >> v3) & 1) == 0)
      {
        return v1;
      }

      v2 = off_1F42D6CD0[(*(a1 + 13) - 2)];
      goto LABEL_7;
    case 0x11:
      v4 = dist_UNITBIAS;
      goto LABEL_6;
    case 0x13:
    case 0x14:
    case 0x15:
      v6 = *(a1 + 13);
      v4 = dist_COMMON_EMULATEBUG203_2;
      if (v6 == 2)
      {
        goto LABEL_6;
      }

      if (v6 != 3)
      {
        return v1;
      }

      v4 = dist_COMMON_EMULATEBUG203_3;
LABEL_6:
      v2 = v4;
LABEL_7:
      v1 = 0;
      *(a1 + 16) = v2;
      *(a1 + 24) = ~(-1 << *(a1 + 13));
      return v1;
    case 0x1A:
    case 0x1B:
    case 0x1C:
    case 0x1D:
      v4 = dist_COMMON_8;
      goto LABEL_6;
    default:
      return v1;
  }
}

uint64_t dist_LPHONEME_DATACOST(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, _DWORD *a5)
{
  if (a2 == a3)
  {
    return 0;
  }

  v6 = *(a1 + 888);
  v8 = v6[6];
  v7 = v6[7];
  v9 = *(v7 + a2);
  v10 = *(v7 + a3);
  v11 = v6[8];
  if (v9 <= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v9;
  }

  if (v9 < v10)
  {
    v10 = v9;
  }

  return *a5 * *(v8 + 2 * *(v11 + 2 * v10) + 2 * v12);
}

uint64_t dist_RPHONEME_DATACOST(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, _DWORD *a5)
{
  if (a2 == a3)
  {
    return 0;
  }

  v6 = *(a1 + 888);
  v8 = v6[9];
  v7 = v6[10];
  v9 = *(v7 + a2);
  v10 = *(v7 + a3);
  v11 = v6[11];
  if (v9 <= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v9;
  }

  if (v9 < v10)
  {
    v10 = v9;
  }

  return *a5 * *(v8 + 2 * *(v11 + 2 * v10) + 2 * v12);
}

uint64_t dist_LLPHONEME_DATACOST(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, _DWORD *a5)
{
  if (a2 == a3)
  {
    return 0;
  }

  v6 = *(a1 + 888);
  v8 = v6[12];
  v7 = v6[13];
  v9 = *(v7 + a2);
  v10 = *(v7 + a3);
  v11 = v6[14];
  if (v9 <= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v9;
  }

  if (v9 < v10)
  {
    v10 = v9;
  }

  return *a5 * *(v8 + 2 * *(v11 + 2 * v10) + 2 * v12);
}

uint64_t dist_RRPHONEME_DATACOST(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, _DWORD *a5)
{
  if (a2 == a3)
  {
    return 0;
  }

  v6 = *(a1 + 888);
  v8 = v6[15];
  v7 = v6[16];
  v9 = *(v7 + a2);
  v10 = *(v7 + a3);
  v11 = v6[17];
  if (v9 <= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v9;
  }

  if (v9 < v10)
  {
    v10 = v9;
  }

  return *a5 * *(v8 + 2 * *(v11 + 2 * v10) + 2 * v12);
}

uint64_t dist_PITCH_CART(void *a1, unsigned int a2, unsigned int a3, uint64_t a4, _DWORD *a5)
{
  v5 = a1[111];
  if (!*v5)
  {
    return 0;
  }

  if (!a3 && *a5)
  {
    return 500000;
  }

  v6 = a1[5];
  LODWORD(v7) = *(v6 + 2680);
  if (v7)
  {
    LODWORD(v7) = v5[1];
    if (v7)
    {
      v7 = *(v6 + 3000);
      if (v7)
      {
        v8 = *(a1[107] + *(v7 + 25) + 3);
        v7 = *(v6 + 2480);
        if (!v7 || (v9 = (v7 + 8 * v8), (LODWORD(v7) = *v9) == 0) || v9[1] >= a3)
        {
          v7 = *(v6 + 2488);
          if (v7)
          {
            v10 = (v7 + 8 * v8);
            LODWORD(v7) = *v10;
            if (*v10)
            {
              if (v10[1] <= a3)
              {
                LODWORD(v7) = 0;
              }
            }
          }
        }
      }
    }
  }

  v11 = a3 - a2;
  if (a2 >= a3)
  {
    v11 = a2 - a3;
  }

  if (*(v6 + 2700))
  {
    if (v11 <= v5[36] * *(v6 + 2704))
    {
      v12 = v11 * v11 * *a5 / v5[37];
    }

    else
    {
      v12 = v11 * v11 * *a5 / v5[37] * *(v6 + 2708);
    }
  }

  else
  {
    v12 = (a2 - a3) * (a2 - a3) * *a5 / v5[37];
    if (v11 > *(v6 + 2576))
    {
      v12 *= 10;
    }
  }

  return v12 + v7;
}

uint64_t dist_DUR_CART(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, _DWORD *a5)
{
  v5 = *(a1 + 40);
  if (!v5[678])
  {
    if (a2)
    {
      v10 = a3 - a2;
      if (a2 >= a3)
      {
        v10 = a2 - a3;
      }

      v11 = (a2 - a3) * (a2 - a3) * *a5 / *(*(a1 + 888) + 156);
      if (v10 <= v5[645])
      {
        return v11;
      }

      else
      {
        return 10 * v11;
      }
    }

    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  v6 = a2 - a3;
  if (a2 < a3)
  {
    v6 = a3 - a2;
  }

  v7 = *(a1 + 888);
  v8 = *(v7 + 152);
  if (v6 > v8 * v5[679])
  {
    v9 = v5[680];
    return v6 * v6 * *a5 / *(v7 + 156) * v9;
  }

  if (a2 > a3 && v6 > v5[681] * v8)
  {
    v9 = v5[682];
    return v6 * v6 * *a5 / *(v7 + 156) * v9;
  }

  return v6 * v6 * *a5 / *(v7 + 156);
}

uint64_t dist_UNITBIAS(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, unsigned int *a5)
{
  if ((a3 >> *(a4 + 12)))
  {
    return *a5;
  }

  else
  {
    return 0;
  }
}

uint64_t dist_COMMON_EMULATEBUG203_2(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, int *a5)
{
  v5 = *a5;
  if (!*a5)
  {
    return 0;
  }

  v6 = (a3 >> *(a4 + 12)) & 3;
  v7 = *(a5 + 1);
  if (*v7)
  {
    v8 = *(v7 + 8);
    v9 = *(v7 + 16);
    if (v9)
    {
      v10 = (v8 + 2 * *(v7 + 2) * *(v9 + a2) + 2 * *(v9 + v6));
    }

    else
    {
      v10 = (v8 + 2 * (v6 + *(v7 + 2) * a2));
    }

    v13 = *v10;
    if (v13 == 150)
    {
      return 5000000;
    }

    else if (v13 == 200)
    {
      return 15000000;
    }

    else
    {
      return (v5 * v13);
    }
  }

  else
  {
    v12 = 100 * v5;
    if (v6 == a2)
    {
      return 0;
    }

    else
    {
      return v12;
    }
  }
}

uint64_t dist_COMMON_EMULATEBUG203_3(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v5 = (a3 >> *(a4 + 12)) & 7;
  v6 = *(a5 + 8);
  if (*v6)
  {
    v7 = *(v6 + 8);
    v8 = *(v6 + 16);
    if (v8)
    {
      v9 = (v7 + 2 * *(v6 + 2) * *(v8 + a2) + 2 * *(v8 + v5));
    }

    else
    {
      v9 = (v7 + 2 * (v5 + *(v6 + 2) * a2));
    }

    v11 = *v9;
    if (v11 == 150)
    {
      return 5000000;
    }

    else if (v11 == 200)
    {
      return 15000000;
    }

    else
    {
      return (*a5 * v11);
    }
  }

  else if (v5 == a2)
  {
    return 0;
  }

  else
  {
    return (100 * *a5);
  }
}

uint64_t dist_COMMON_2(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v5 = (a3 >> *(a4 + 12)) & 3;
  v6 = *(a5 + 8);
  if (*v6)
  {
    v7 = *(v6 + 8);
    v8 = *(v6 + 16);
    if (v8)
    {
      v9 = *(v7 + 2 * *(v6 + 2) * *(v8 + a2) + 2 * *(v8 + v5));
    }

    else
    {
      v9 = *(v7 + 2 * (v5 + *(v6 + 2) * a2));
    }

    return (*a5 * v9);
  }

  else if (v5 == a2)
  {
    return 0;
  }

  else
  {
    return (100 * *a5);
  }
}

uint64_t dist_COMMON_3(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v5 = (a3 >> *(a4 + 12)) & 7;
  v6 = *(a5 + 8);
  if (*v6)
  {
    v7 = *(v6 + 8);
    v8 = *(v6 + 16);
    if (v8)
    {
      v9 = *(v7 + 2 * *(v6 + 2) * *(v8 + a2) + 2 * *(v8 + v5));
    }

    else
    {
      v9 = *(v7 + 2 * (v5 + *(v6 + 2) * a2));
    }

    return (*a5 * v9);
  }

  else if (v5 == a2)
  {
    return 0;
  }

  else
  {
    return (100 * *a5);
  }
}

uint64_t dist_COMMON_4(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v5 = (a3 >> *(a4 + 12)) & 0xFLL;
  v6 = *(a5 + 8);
  if (*v6)
  {
    v7 = *(v6 + 8);
    v8 = *(v6 + 16);
    if (v8)
    {
      v9 = *(v7 + 2 * *(v6 + 2) * *(v8 + a2) + 2 * *(v8 + v5));
    }

    else
    {
      v9 = *(v7 + 2 * (v5 + *(v6 + 2) * a2));
    }

    return (*a5 * v9);
  }

  else if (v5 == a2)
  {
    return 0;
  }

  else
  {
    return (100 * *a5);
  }
}

uint64_t dist_COMMON_8(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, int *a5)
{
  v5 = *(a5 + 1);
  if (*v5)
  {
    v6 = *a5;
    v7 = *(v5 + 8);
    v8 = *(v5 + 16);
    if (v8)
    {
      v9 = *(v7 + 2 * *(v5 + 2) * *(v8 + a2) + 2 * *(v8 + a3));
    }

    else
    {
      v9 = *(v7 + 2 * *(v5 + 2) * a2 + 2 * a3);
    }
  }

  else
  {
    if (a2 == a3)
    {
      return 0;
    }

    v6 = *a5;
    v9 = 100;
  }

  return (v6 * v9);
}

uint64_t uselect_IsNextUnit(uint64_t result, unsigned int a2)
{
  if (result)
  {
    v4 = *result;
    v2 = (result + 4);
    for (i = v4; ; --i)
    {
      if (!i)
      {
        return 0;
      }

      v5 = *v2;
      if (*v2 == a2)
      {
        break;
      }

      ++v2;
      if (v5 > a2)
      {
        return 0;
      }
    }

    return 1;
  }

  return result;
}

uint64_t uselect_CalculateCost(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  result = 4000000000;
  v7 = *(a1 + 40);
  v8 = **(a2 + 40);
  *(a2 + 108) = 0;
  v9 = *(a1 + 848);
  if (*(a1 + 848))
  {
    v10 = 0;
    v11 = *(a1 + 824);
    v12 = a2 + 62;
    while (1)
    {
      v13 = *v11;
      v14 = **(v11 + 5);
      if (v10)
      {
        v15 = v7[667] == 1 && v13 >= result;
        if (v15)
        {
          return result;
        }
      }

      if (!(a4 | a3))
      {
        break;
      }

LABEL_9:
      if (v13 < result)
      {
        goto LABEL_10;
      }

LABEL_188:
      v11 += 28;
      if (++v10 >= v9)
      {
        return result;
      }
    }

    v16 = v7[640];
    if (v16 && (*(v11 + 61) != 1 || *(v11 + 77) != 114))
    {
      v17 = *(a2 + 96);
      if (v11[24])
      {
        if (!v17)
        {
          goto LABEL_188;
        }
      }

      else if (v17)
      {
        goto LABEL_188;
      }
    }

    if (v13 >= result)
    {
      goto LABEL_188;
    }

    if (v14 == v8 && v11[2] == *(a2 + 32))
    {
      v18 = 0;
LABEL_22:
      v19 = 1;
      if (!v16)
      {
        goto LABEL_57;
      }
    }

    else
    {
      if (a5 && (*(v11 + 86) || *(a2 + 87)))
      {
        goto LABEL_188;
      }

      if (v14 == v8)
      {
        v20 = *(v14 + 2632);
        if (v20 <= 0x63)
        {
          v21 = *(v11 + 2);
          if (v21)
          {
            v22 = *(a2 + 32);
            v25 = *v21;
            v23 = v21 + 1;
            v24 = v25;
            while (v24)
            {
              v26 = *v23;
              if (*v23 == v22)
              {
                v43 = **(v11 + 3);
                v18 = 0;
                if (*(v14 + 2588) == 1)
                {
                  v44 = (v43 << *(v11 + 86) << *(a2 + 87)) * v20;
                }

                else
                {
                  v44 = v43 * v20;
                }

                v13 = v44 / 0x64 + v13;
                goto LABEL_22;
              }

              ++v23;
              --v24;
              if (v26 > v22)
              {
                break;
              }
            }
          }
        }
      }

      if (*(v14 + 2588) == 1 && *(v8 + 2588) == 1)
      {
        v19 = 0;
        v27 = **(v11 + 3) << *(v11 + 86) << *(a2 + 87);
      }

      else
      {
        v19 = 0;
        v27 = **(v11 + 3);
      }

      v13 = (v27 + v13);
      v18 = 1;
      if (!v16)
      {
LABEL_57:
        if (v13 >= result)
        {
          goto LABEL_188;
        }

        v30 = *(v14 + 3384);
        if ((v30 & 0x80000000) != 0 || (*(v8 + 3384) & 0x80000000) != 0)
        {
LABEL_87:
          if (v14 != v8)
          {
            goto LABEL_114;
          }

          if (v18)
          {
            if (*(v14 + 2604) == 2)
            {
              if (*(v14 + 2624))
              {
                if (*(v11 + 77) != 114)
                {
                  if (*(v14 + *(v11 + 76) + 1630) == 83)
                  {
                    v46 = 0;
                    goto LABEL_104;
                  }

                  v45 = (*(v14 + 3568) + (*(v11 + 75) << 8) + *(a2 + 74) + 0x10000);
LABEL_103:
                  v46 = *v45;
LABEL_104:
                  if (v7[669] < v46)
                  {
                    goto LABEL_188;
                  }

                  v47 = *(*(v11 + 3) + 8);
                  v48 = v13 + v47 * v46;
                  LODWORD(v13) = v13 + 10 * v46 * v47;
                  if (v7[650] < v46)
                  {
                    v13 = v13;
                  }

                  else
                  {
                    v13 = v48;
                  }

                  goto LABEL_113;
                }

                v38 = *(a2 + 74);
                v39 = *(v14 + 3568) + (*(v11 + 75) << 8);
              }

              else
              {
                v38 = *(a2 + 74);
                v39 = *(v14 + 3560) + (*(v11 + 75) << 7);
              }

              v45 = (v39 + v38);
              goto LABEL_103;
            }

            v40 = *(v14 + 3560);
            if (v40)
            {
              v41 = 0;
              v42 = 0;
              do
              {
                v42 += 2 * *(v40 + *(v12 + v41 + 3) + (*(v11 + v41 + 68) << 7)) + *(v40 + *(v12 + v41) + (*(v11 + v41 + 68) << 7)) + *(v40 + *(v12 + v41 + 3) + (*(v11 + v41 + 71) << 7));
                ++v41;
                v40 += 0x4000;
              }

              while (v41 != 3);
            }

            else
            {
              v42 = 0;
              v49 = *(v14 + 3568);
              do
              {
                v42 += 2 * *(v49 + (*(v12 + v40 + 3) | (*(v11 + v40 + 68) << 8))) + *(v49 + (*(v12 + v40) | (*(v11 + v40 + 68) << 8))) + *(v49 + (*(v12 + v40 + 3) | (*(v11 + v40 + 71) << 8)));
                ++v40;
                v49 += 0x10000;
              }

              while (v40 != 3);
            }

            v50 = *(*(v11 + 3) + 8);
            if (v42 / 0xA <= v7[650])
            {
              v13 = v13 + 2 * v42 * v50;
            }

            else
            {
              v13 = v13 + 20 * v42 * v50;
            }
          }

LABEL_113:
          if (v13 >= result)
          {
            goto LABEL_188;
          }

LABEL_114:
          v51 = *(v14 + 3404);
          if ((v51 & 0x80000000) != 0 || (*(v8 + 3404) & 0x80000000) != 0)
          {
            goto LABEL_158;
          }

          if (v18 && *(v8 + 859 + *(a2 + 76)) == 118 && *(v14 + *(v11 + 76) + 859) == 118)
          {
            v52 = *(v11 + 92);
            v54 = (v52 >> 4) + ((v52 >> 4) + 1) * ((v52 >> 4) + 1);
            if ((v52 & 0x80) != 0)
            {
              v53 = ((*(v11 + 92) >> 4) - 8);
              v54 = ~v53 + ~v53 * v53 - v53;
            }

            v55 = v52 & 0xF;
            if (v55 <= 7)
            {
              v56 = v55 + (v55 + 1) * (v55 + 1);
            }

            else
            {
              v56 = ~(v55 - 8) + ~(v55 - 8) * (v55 - 8) - (v55 - 8);
            }

            if (*(v11 + 77) == 114)
            {
              v57 = v56;
            }

            else
            {
              v57 = v54;
            }

            v58 = *(a2 + 92);
            v60 = (v58 >> 4) + ((v58 >> 4) + 1) * ((v58 >> 4) + 1);
            if ((v58 & 0x80) != 0)
            {
              v59 = ((*(a2 + 92) >> 4) - 8);
              v60 = ~v59 + ~v59 * v59 - v59;
            }

            v61 = v58 & 0xF;
            if (v61 <= 7)
            {
              v62 = v61 + (v61 + 1) * (v61 + 1);
            }

            else
            {
              v62 = ~(v61 - 8) + ~(v61 - 8) * (v61 - 8) - (v61 - 8);
            }

            if (*(a2 + 77) == 114)
            {
              v63 = v62;
            }

            else
            {
              v63 = v60;
            }

            if (v63 - v57 >= 0)
            {
              v64 = v63 - v57;
            }

            else
            {
              v64 = v57 - v63;
            }

            if (v64 > v7[663])
            {
              goto LABEL_188;
            }

            v66 = v63 > 0 && v57 < 0;
            if (v64 > v7[662])
            {
              if (v66 || v63 < 0 && v57 >= 1)
              {
                v13 = v13 + 100 * v64 * *(*(v11 + 3) + 4 * v51);
                goto LABEL_157;
              }

              goto LABEL_156;
            }

            if (v66 || v63 < 0 && v57 >= 1)
            {
LABEL_156:
              v13 = v13 + 10 * v64 * *(*(v11 + 3) + 4 * v51);
              goto LABEL_157;
            }

            v13 = v13 + *(*(v11 + 3) + 4 * v51) * v64;
          }

LABEL_157:
          if (v13 >= result)
          {
            goto LABEL_188;
          }

LABEL_158:
          v67 = *(v14 + 3400);
          if ((v67 & 0x80000000) == 0 && (*(v8 + 3400) & 0x80000000) == 0)
          {
            if (v18)
            {
              v68 = *(v11 + 91);
              v69 = v68 & 0xF;
              v70 = v68 >> 4;
              if (*(v11 + 77) == 114)
              {
                v71 = v69;
              }

              else
              {
                v71 = v70;
              }

              v72 = 6554 * (66 * v71 + 38);
              v73 = HIWORD(v72);
              v74 = *(a2 + 91);
              v75 = v74 & 0xF;
              v76 = v74 >> 4;
              if (*(a2 + 77) == 114)
              {
                v77 = v75;
              }

              else
              {
                v77 = v76;
              }

              v78 = 6554 * (66 * v77 + 38);
              v79 = HIWORD(v78) - HIWORD(v72);
              v15 = v73 >= HIWORD(v78);
              v80 = v73 - HIWORD(v78);
              if (v15)
              {
                v81 = v80;
              }

              else
              {
                v81 = v79;
              }

              if (v81 > v7[666])
              {
                goto LABEL_188;
              }

              v82 = v81 * *(*(v11 + 3) + 4 * v67);
              if (v81 <= v7[665])
              {
                v13 = (v13 + 10 * v82);
              }

              else
              {
                v13 = (v13 + 100 * v82);
              }
            }

            if (v13 >= result)
            {
              goto LABEL_188;
            }
          }

          if (v14 != v8 || (v83 = *(v14 + 3392), (v83 & 0x80000000) != 0) && (v83 = *(v14 + 3396), (v83 & 0x80000000) != 0))
          {
LABEL_10:
            *(a2 + 108) = v10;
            result = v13;
            goto LABEL_188;
          }

          if (*(v8 + 1116 + *(a2 + 76)) == 86 && *(a2 + 77) == 108)
          {
            v84 = *(v11 + 85);
            if (v84 != 255)
            {
              v85 = *(a2 + 84);
              if (v85 != 255)
              {
                v86 = v85 - v84;
                v87 = *(*(v14 + 3368) + 12 * v83 + 8);
                v88 = *(a2 + 56);
                if (v86 >= v88)
                {
LABEL_187:
                  v92 = 10 * v87;
LABEL_191:
                  v13 = (v13 + *(*(v11 + 3) + 4 * v83) * v92);
                  goto LABEL_9;
                }

                v89 = *(a2 + 54);
                if (v86 >= v89)
                {
                  v93 = (v86 - v89) * v87;
                  v94 = v88 - v89;
                  goto LABEL_193;
                }

                v90 = *(a2 + 52);
                if (v90 > v86)
                {
                  v91 = *(a2 + 50);
                  if (v86 < v91)
                  {
                    goto LABEL_187;
                  }

                  v93 = (v90 - v86) * v87;
                  v94 = v90 - v91;
LABEL_193:
                  v92 = v93 / v94;
                  goto LABEL_191;
                }
              }
            }
          }

          v92 = 0;
          goto LABEL_191;
        }

        if (v18)
        {
          if (*(a2 + 80) == 1 && v11[20] == 1 && (*(a2 + 90) < 0x15u || *(v11 + 88) <= 0x14u))
          {
            v31 = 10 * *(*(v11 + 3) + 4 * v30);
            v32 = 99;
LABEL_85:
            v13 = v13 + v31 * *(*(v14 + 28160) + v32);
            goto LABEL_86;
          }

          if (*(v14 + 2612) == 1)
          {
            v33 = *(a2 + 90);
            if (*(v8 + 2612) == 1)
            {
              v34 = *(v11 + 88);
              goto LABEL_73;
            }
          }

          else
          {
            v33 = *(a2 + 90);
          }

          if (v33 >= 0x15)
          {
            v34 = *(v11 + 88);
            if (v34 >= 0x15 && *(v11 + 89) <= 0xEu)
            {
LABEL_73:
              v35 = v33 - v34;
              if (v33 >= v34)
              {
                v36 = v33 - v34;
              }

              else
              {
                v36 = v34 - v33;
              }

              if (v36 > v7[668])
              {
                goto LABEL_188;
              }

              if (v35 >= 49)
              {
                v37 = 49;
              }

              else
              {
                v37 = v35;
              }

              LODWORD(v32) = v37 + 50;
              if (v35 >= -50)
              {
                v32 = v32;
              }

              else
              {
                v32 = 0;
              }

              v31 = *(*(v11 + 3) + 4 * v30);
              if (v36 > v7[649])
              {
                v31 *= 10;
              }

              goto LABEL_85;
            }
          }
        }

LABEL_86:
        if (v13 >= result)
        {
          goto LABEL_188;
        }

        goto LABEL_87;
      }
    }

    v28 = *(v11 + 61);
    if (v28 == 1 && *(v11 + 77) == 114)
    {
      if (!*(a2 + 100))
      {
        if (*(a2 + 76) == *(v8 + 2179))
        {
          v13 = v13;
        }

        else
        {
          v13 = (v13 + 50000);
        }
      }
    }

    else
    {
      if (v11[26])
      {
        if (v11[25])
        {
          v29 = v19;
        }

        else
        {
          v29 = 1;
        }

        if (v29)
        {
          v13 = v13;
        }

        else
        {
          v13 = (v13 + 50000);
        }
      }

      if (v18 && (v28 != 1 || *(v11 + 77) != 114) && (v11[24] || *(a2 + 96)))
      {
        goto LABEL_188;
      }
    }

    goto LABEL_57;
  }

  return result;
}

void *uselect_ExtractFeatFromMsg(void *result, int a2)
{
  v2 = result;
  v3 = 0;
  v4 = result[111];
  v5 = result[107];
  v6 = result[112];
  v7 = result[5];
  v8 = ((a2 + ((a2 & 0x8000) >> 15)) >> 1);
  if (a2)
  {
    v9 = 114;
  }

  else
  {
    v9 = 108;
  }

  v114[0] = 0;
  v113 = 0;
  v5[1] = v9;
  v10 = (a2 + ((a2 & 0x8000) >> 15)) >> 1;
  *v5 = *(result[95] + 864 * v8 + 2);
  v5[2] = 0;
  if (*(v7 + 2564) != 1)
  {
    v3 = *(v7 + *(result[95] + 864 * v10 + 2) + 2144);
  }

  if (*(v7 + 2966))
  {
    v11 = 0;
    v12 = 0;
    v13 = v8 + 1;
    v14 = v5 + 3;
    v15 = v10 + 2;
    result = (v7 + 2144);
    v16 = v7 + 859;
    v17 = v7 + 1116;
    v18 = (v7 + 2179);
    v19 = (v7 + 192 * v3);
    v20 = (v19 + 3752);
    v21 = v19 + 230;
    v22 = v19 + 224;
    v23 = (v19 + 3656);
    v111 = v19 + 233;
    v109 = (v19 + 3704);
    v110 = v19 + 227;
    v108 = (v19 + 3608);
    v112 = a2 + 1;
    v24 = 864 * v10;
    v25 = v24 + 356;
    while (2)
    {
      v26 = *(v2 + 760);
      if (v5[1] == 108)
      {
        v27 = (v26 + v25 - 284);
      }

      else
      {
        v27 = (v26 + v25);
      }

      *v6 = *v27;
      *(v6 + 8) = *(*(v2 + 40) + 3416) + 24 * *(v26 + v24 + v12 + 640);
      switch(*(*(v7 + 2968) + v11))
      {
        case 1:
          v36 = v5[1];
          v37 = v18;
          if (v112 >= 3)
          {
            if (v36 != 114 || (v37 = v18, *(v26 + 864 * v10 + 2) != 35))
            {
              v37 = result + *(v26 + 864 * v10 - 862);
            }
          }

          v14[v12] = *v37;
          if (v36 == 108)
          {
            v38 = *v22;
            v39 = *(v22 + 2);
          }

          else
          {
            v38 = *v21;
            v39 = *(v21 + 2);
          }

          *(v4 + 64) = v39;
          *(v4 + 48) = v38;
          goto LABEL_82;
        case 2:
          v40 = v5[1];
          v41 = v18;
          if (*(v2 + 768) - 1 != v8)
          {
            if (v40 != 108 || (v41 = v18, *(v26 + 864 * v10 + 2) != 35))
            {
              v41 = result + *(v26 + 864 * v10 + 866);
            }
          }

          v14[v12] = *v41;
          if (v40 == 108)
          {
            v42 = v108;
          }

          else
          {
            v42 = v109;
          }

          v54 = *v42;
          *(v4 + 88) = *(v42 + 2);
          *(v4 + 72) = v54;
          goto LABEL_82;
        case 3:
          v30 = v5[1];
          v31 = v18;
          if (a2 >= 4)
          {
            if (v30 != 114 || (v31 = v18, *(v26 + 864 * v10 + 2) != 35))
            {
              v32 = v26 + 864 * v8;
              v31 = v18;
              if (*(v32 - 862) != 35)
              {
                v31 = result + *(v32 - 1726);
              }
            }
          }

          v14[v12] = *v31;
          if (v30 == 108)
          {
            v33 = v110;
          }

          else
          {
            v33 = v111;
          }

          v53 = *v33;
          *(v4 + 112) = *(v33 + 2);
          *(v4 + 96) = v53;
          goto LABEL_82;
        case 4:
          v43 = v5[1];
          v44 = v18;
          if (v15 < *(v2 + 768))
          {
            if (v43 != 108 || (v44 = v18, *(v26 + 864 * v10 + 2) != 35))
            {
              v44 = v18;
              if (*(v26 + 864 * v10 + 866) != 35)
              {
                v44 = result + *(v26 + 864 * v15 + 2);
              }
            }
          }

          v14[v12] = *v44;
          if (v43 == 108)
          {
            v45 = *v23;
            v46 = *(v23 + 2);
          }

          else
          {
            v45 = *v20;
            v46 = *(v20 + 2);
          }

          *(v4 + 136) = v46;
          *(v4 + 120) = v45;
          goto LABEL_82;
        case 5:
          if (*(v7 + 2736) == 1 && v5[1] == 114)
          {
            v47 = (v26 + 864 * v10 + 44);
          }

          else
          {
            v47 = (v26 + 864 * v10 + 22);
          }

          v14[v12] = *v47;
          v49 = *(v4 + 16);
          if (v49 && *(v49 + 4) && *(v49 + 5))
          {
            v84 = v22;
            v86 = v21;
            v88 = v20;
            v90 = v18;
            v92 = v17;
            v94 = v16;
            v96 = result;
            v98 = v15;
            v100 = v13;
            v102 = v8;
            v104 = a2;
            v106 = v4;
            uselect_splitGID(v2, *v49, v114, &v113);
            v4 = v106;
            v50 = *(v106 + 16);
            v51 = *(v50 + 4);
            if (v51 == 3)
            {
              v52 = 0;
            }

            else if (v51 == 1)
            {
              v52 = *(v50 + 5);
            }

            else
            {
              v52 = -*(v50 + 5);
            }

            a2 = v104;
            v8 = v102;
            v13 = v100;
            result = v96;
            v15 = v98;
            v17 = v92;
            v16 = v94;
            v20 = v88;
            v18 = v90;
            v22 = v84;
            v21 = v86;
            v59 = *(*(v7 + 2968) + v11 + 24) & (*(*(v114[0] + 160) + v113 * *(v114[0] + 168) + *(*(v7 + 2968) + v11 + 11)) >> *(*(v7 + 2968) + v11 + 12));
            v60 = *(v2 + 932);
            v61 = v60 - v59;
            v62 = v59 >= v60;
            v63 = v59 - v60;
            if (v63 == 0 || !v62)
            {
              LOBYTE(v63) = v61;
            }

            v64 = v52 * v63 / 100 + v59;
            if (v64 >= 255)
            {
              v64 = 255;
            }

            v14[v12] = v64 & ~(v64 >> 31);
            *v6 = *(v2 + 928);
          }

          *v6 *= 1000;
          if (*(v7 + 2736) == 1 && v5[1] == 114)
          {
            v65 = *(v2 + 760);
            v66 = (v65 + 864 * v10 + 45);
          }

          else
          {
            v65 = *(v2 + 760);
            v66 = (v65 + 864 * v10 + 23);
          }

          *(v4 + 148) = *v66 * *v66;
          *(v4 + 144) = (6554 * *v66 + 32770) >> 16;
          v67 = *(result + *(v65 + 864 * v10 + 2));
          *v4 = *(v16 + v67) == 118;
          *(v4 + 4) = *(v17 + v67) == 86 && (v68 = *(v7 + 2992)) != 0 && v14[*(v68 + 25)] == 3;
          goto LABEL_82;
        case 6:
          v34 = v26 + 864 * v10;
          if (*(v34 + 2) == 35)
          {
            v35 = 0;
          }

          else if (*(v7 + 2740) == 1 && v5[1] == 114)
          {
            v35 = *(v34 + 46);
          }

          else
          {
            v35 = *(v26 + 864 * v10 + 24);
          }

          v14[v12] = v35;
          if (*(*(v2 + 760) + 864 * v10 + 2) != 35)
          {
            v55 = *(v4 + 16);
            if (v55)
            {
              if (*(v55 + 6) && *(v55 + 7))
              {
                v85 = v22;
                v87 = v21;
                v89 = v20;
                v91 = v18;
                v93 = v17;
                v95 = v16;
                v97 = result;
                v99 = v15;
                v101 = v13;
                v103 = v8;
                v105 = a2;
                v107 = v4;
                uselect_splitGID(v2, *v55, v114, &v113);
                v4 = v107;
                v56 = *(v107 + 16);
                v57 = *(v56 + 6);
                if (v57 == 3)
                {
                  v58 = 0;
                }

                else if (v57 == 1)
                {
                  v58 = *(v56 + 7);
                }

                else
                {
                  v58 = -*(v56 + 7);
                }

                a2 = v105;
                v8 = v103;
                v13 = v101;
                result = v97;
                v15 = v99;
                v17 = v93;
                v16 = v95;
                v20 = v89;
                v18 = v91;
                v22 = v85;
                v21 = v87;
                v69 = *(*(v7 + 2968) + v11 + 24) & (*(*(v114[0] + 160) + v113 * *(v114[0] + 168) + *(*(v7 + 2968) + v11 + 11)) >> *(*(v7 + 2968) + v11 + 12));
                v70 = *(v2 + 924);
                v71 = v70 - v69;
                v62 = v69 >= v70;
                v72 = v69 - v70;
                if (v72 == 0 || !v62)
                {
                  LOBYTE(v72) = v71;
                }

                v73 = v58 * v72 / 100 + v69;
                if (v73 >= 255)
                {
                  v73 = 255;
                }

                v14[v12] = v73 & ~(v73 >> 31);
                *v6 = *(v2 + 920);
              }
            }
          }

          *v6 *= 10;
          if (*(v7 + 2740) == 1)
          {
            v74 = *(v2 + 760);
            if (v5[1] == 114)
            {
              v75 = v74 + 864 * v10;
              *(v4 + 156) = *(v75 + 47) * *(v75 + 47);
              v76 = *(v75 + 47);
              goto LABEL_144;
            }
          }

          else
          {
            v74 = *(v2 + 760);
          }

          v77 = v74 + 864 * v10;
          *(v4 + 156) = *(v77 + 25) * *(v77 + 25);
          v76 = *(v77 + 25);
LABEL_144:
          *(v4 + 152) = v76;
LABEL_82:
          v48 = !*v6 && (*(*(v7 + 2968) + v11) != 5 || !*(*(v2 + 40) + 2680) || !*(*(v2 + 888) + 4));
          *(v6 + 16) = v48;
          ++v12;
          v6 += 24;
          v25 += 4;
          v11 += 32;
          if (v12 >= *(v7 + 2966))
          {
            break;
          }

          continue;
        case 7:
          v28 = *(v26 + 864 * v10 + 13);
          goto LABEL_81;
        case 8:
          v28 = *(v26 + 864 * v10 + 14);
          goto LABEL_81;
        case 9:
          v28 = *(v26 + 864 * v10 + 15);
          goto LABEL_81;
        case 0xA:
          v28 = *(v26 + 864 * v10 + 16);
          goto LABEL_81;
        case 0xB:
          v28 = *(v26 + 864 * v10 + 17);
          goto LABEL_81;
        case 0xC:
        case 0x13:
          v28 = *(v26 + 864 * v10 + 18);
          goto LABEL_81;
        case 0xD:
        case 0x14:
          v28 = *(v26 + 864 * v10 + 21);
          goto LABEL_81;
        case 0xE:
          v28 = *(v26 + 864 * v10 + 26);
          goto LABEL_81;
        case 0xF:
          v28 = *(v26 + 864 * v10 + 27);
          goto LABEL_81;
        case 0x10:
          v28 = *(v26 + 864 * v10 + 28);
          goto LABEL_81;
        case 0x11:
          v14[v12] = 0;
          goto LABEL_82;
        case 0x12:
          v28 = *(v26 + 864 * v10 + 29);
          goto LABEL_81;
        case 0x1A:
          if (a2 < 2)
          {
            goto LABEL_60;
          }

          v29 = (v26 + 864 * v8 - 862);
          goto LABEL_59;
        case 0x1B:
          if (*(v2 + 768) <= v13)
          {
            goto LABEL_60;
          }

          v28 = *(v26 + 864 * v10 + 866);
          goto LABEL_81;
        case 0x1C:
          if (a2 < 4)
          {
            goto LABEL_60;
          }

          v29 = (v26 + 864 * v8 - 1726);
LABEL_59:
          v28 = *v29;
          goto LABEL_81;
        case 0x1D:
          if (*(v2 + 768) <= v15)
          {
LABEL_60:
            v28 = 35;
          }

          else
          {
            v28 = *(v26 + 864 * v10 + 1730);
          }

          goto LABEL_81;
        case 0x1E:
          v28 = *(v26 + 864 * v10 + 30);
          goto LABEL_81;
        case 0x1F:
          v28 = *(v26 + 864 * v10 + 31);
          goto LABEL_81;
        case 0x20:
          v28 = *(v26 + 864 * v10 + 32);
          goto LABEL_81;
        case 0x21:
          v28 = *(v26 + 864 * v10 + 33);
          goto LABEL_81;
        case 0x22:
          v28 = *(v26 + 864 * v10 + 34);
          goto LABEL_81;
        case 0x23:
          v28 = *(v26 + 864 * v10 + 35);
          goto LABEL_81;
        case 0x24:
          v28 = *(v26 + 864 * v10 + 36);
          goto LABEL_81;
        case 0x25:
          v28 = *(v26 + 864 * v10 + 37);
          goto LABEL_81;
        case 0x26:
          v28 = *(v26 + 864 * v10 + 38);
          goto LABEL_81;
        case 0x27:
          v28 = *(v26 + 864 * v10 + 39);
          goto LABEL_81;
        case 0x28:
          v28 = *(v26 + 864 * v10 + 40);
          goto LABEL_81;
        case 0x29:
          v28 = *(v26 + 864 * v10 + 41);
          goto LABEL_81;
        case 0x2B:
          v28 = *(v26 + 864 * v10 + 42);
          goto LABEL_81;
        case 0x2C:
          v28 = *(v26 + 864 * v10 + 43);
          goto LABEL_81;
        case 0x45:
          v28 = *(v26 + 864 * v10 + 48);
          goto LABEL_81;
        case 0x46:
          v28 = *(v26 + 864 * v10 + 49);
LABEL_81:
          v14[v12] = v28;
          goto LABEL_82;
        default:
          goto LABEL_82;
      }

      break;
    }
  }

  if (*(v7 + 2560))
  {
    v78 = *(v2 + 760) + 864 * v10;
    v79 = *(v78 + 68);
    *(v4 + 29) = *(v78 + 60);
    *(v4 + 37) = v79;
    v80 = *(v7 + 2144 + *(v4 + 36));
    *(v4 + 36) = v80;
    v81 = *(v7 + 2144 + *(v4 + 37));
    *(v4 + 37) = v81;
    v82 = *(v7 + 2144 + *(v4 + 34));
    *(v4 + 34) = v82;
    v83 = *(v7 + 2144 + *(v4 + 35));
    *(v4 + 35) = v83;
    if (v80 == 255 || v81 == 255 || v82 == 255 || v83 == 255)
    {
      *(v4 + 37) = 0;
      *(v4 + 29) = 0;
    }

    if (*(*(v2 + 760) + 864 * v10 + 20))
    {
      if (v5[1] == 108)
      {
        *(v4 + 40) = 100000;
      }
    }
  }

  return result;
}

uint64_t smooth_f0(uint64_t a1, _WORD *a2, int a3, unsigned int a4)
{
  v4 = a4;
  v8 = (a3 + 1);
  v9 = 0x200000 / a4;
  v10 = 2229280778;
  v11 = heap_Calloc(*(a1 + 8), (3 * v8), 4);
  if (v11)
  {
    v12 = v11;
    v13 = heap_Calloc(*(a1 + 8), v8, 4);
    v14 = *(a1 + 8);
    if (!v13)
    {
      v65 = v12;
LABEL_71:
      heap_Free(v14, v65);
      return v10;
    }

    v15 = heap_Calloc(v14, v8, 2);
    if (!v15)
    {
LABEL_70:
      heap_Free(*(a1 + 8), v12);
      v14 = *(a1 + 8);
      v65 = v13;
      goto LABEL_71;
    }

    v68 = a2;
    v16 = v15;
    v17 = heap_Calloc(*(a1 + 8), v8, 4);
    v18 = *(a1 + 8);
    v70 = v17;
    if (!v17)
    {
      v66 = v16;
LABEL_69:
      heap_Free(v18, v66);
      goto LABEL_70;
    }

    v69 = heap_Calloc(v18, v8, 1);
    if (v69)
    {
      v19 = heap_Calloc(*(a1 + 8), v8, 1);
      v20 = v19;
      if (v19)
      {
        v21 = v16;
        *v16 = *v68;
        if (a3 >= 2)
        {
          v22 = v16 + 1;
          v23 = v68 + 2;
          v24 = a3 - 1;
          do
          {
            v25 = *v23;
            v26 = *(v23 - 1);
            v23 += 2;
            v27 = (v26 + v25) >> 1;
            if (!v26)
            {
              LOWORD(v27) = v25;
            }

            if (v25)
            {
              v28 = v27;
            }

            else
            {
              v28 = v26;
            }

            *v22++ = v28;
            --v24;
          }

          while (v24);
        }

        v16[a3] = v68[2 * a3 - 1];
        v29 = v70;
        if (a3 <= 0x7FFFFFFE)
        {
          v30 = v8;
          v31 = v21;
          v32 = v69;
          do
          {
            v33 = *v31++;
            *v32++ = v33 != 0;
            --v30;
          }

          while (v30);
        }

        if (a3 >= 1)
        {
          v34 = v68 + 1;
          v35 = a3;
          v36 = v19;
          v37 = v70;
          do
          {
            v38 = *(v34 - 1);
            if (*(v34 - 1))
            {
              v38 = *v34 - v38;
              if (*v34)
              {
                v39 = v4;
              }

              else
              {
                v38 = 0;
                v39 = 0;
              }
            }

            else
            {
              v39 = 0;
            }

            *v37++ = v38;
            *v36++ = v39;
            v34 += 2;
            --v35;
          }

          while (v35);
        }

        v40 = v69;
        if (a3 <= 0x7FFFFFFE)
        {
          v41 = 0;
          v42 = (v12 + 8);
          v43 = v70;
          do
          {
            v42[-1].i32[0] = 0;
            v42[-1].i32[1] = *(v69 + v41);
            v42->i32[0] = 0;
            *(v13 + 4 * v41) = *(v21 + 2 * v41) * *(v69 + v41);
            if (v41)
            {
              v44 = v42[-1].i32[1];
              v42[-1].i32[0] -= *(v19 + v41 - 1);
              v42[-1].i32[1] = v44 + *(v19 + v41 - 1);
              *(v13 + 4 * v41) += *(v43 - 1) * *(v19 + v41 - 1);
            }

            if (v41 < a3)
            {
              v45 = v42->i32[0];
              v42[-1].i32[1] += *(v19 + v41);
              v42->i32[0] = v45 - *(v19 + v41);
              *(v13 + 4 * v41) -= *v43 * *(v19 + v41);
            }

            v42[-1] = vshl_n_s32(v42[-1], 9uLL);
            v42->i32[0] <<= 9;
            v42 = (v42 + 12);
            *(v13 + 4 * v41++) <<= 9;
            ++v43;
          }

          while (v8 != v41);
        }

        if (a3 >= 1)
        {
          v46 = 0;
          do
          {
            v47 = v12 + 12 * v46;
            v48 = *(v47 + 4);
            if (v48)
            {
              v49 = *(v13 + 4 * v46);
              if (v49 <= v9)
              {
                v50 = *(v47 + 8);
              }

              else
              {
                do
                {
                  *(v13 + 4 * v46) = v49 >> 1;
                  v48 = *(v47 + 4) / 2;
                  v50 = *(v47 + 8) / 2;
                  *(v47 + 4) = v48;
                  *(v47 + 8) = v50;
                  v49 = *(v13 + 4 * v46);
                }

                while (v49 > v9);
              }

              v51 = (v12 + 12 * (v46 + 1));
              v52 = *v51;
              v51[1] -= (*v51 * v50 + v48 / 2) / v48;
              *(v13 + 4 * (v46 + 1)) -= (*(v13 + 4 * v46) * v52 + v48 / 2) / v48;
              ++v46;
            }

            else
            {
              ++v46;
            }
          }

          while (v46 != a3);
        }

        v53 = *(v12 + 12 * a3 + 4);
        if (v53)
        {
          v53 = (*(v13 + 4 * a3) + v53 / 2) / v53;
        }

        v68[2 * v8 - 3] = v53;
        v54 = (a3 - 1);
        if (a3 - 1 >= 0)
        {
          v55 = &v68[2 * a3];
          v56 = &v68[2 * v54];
          v57 = (v12 + 12 * v54 + 8);
          v58 = a3;
          v59 = (a3 - 1);
          do
          {
            v60 = *(v57 - 1);
            if (v60)
            {
              if (v58 >= a3)
              {
                v61 = &v68[2 * v8 - 3];
              }

              else
              {
                v61 = v55;
              }

              v60 = (*(v13 + 4 * v59) + v60 / 2 - *v57 * *v61) / v60;
            }

            if (v59 >= a3)
            {
              v62 = &v68[2 * v8 - 3];
            }

            else
            {
              v62 = v56;
            }

            *v62 = v60;
            v55 -= 2;
            --v58;
            v56 -= 2;
            v57 -= 3;
          }

          while (v59-- > 0);
          if (a3 >= 2)
          {
            v64 = v68 + 2;
            do
            {
              *(v64 - 1) = *v64;
              v64 += 2;
              --v54;
            }

            while (v54);
          }
        }

        v10 = 0;
        goto LABEL_65;
      }
    }

    else
    {
      v20 = 0;
    }

    v21 = v16;
    v40 = v69;
    v29 = v70;
LABEL_65:
    heap_Free(*(a1 + 8), v21);
    heap_Free(*(a1 + 8), v29);
    if (v40)
    {
      heap_Free(*(a1 + 8), v40);
    }

    if (!v20)
    {
      goto LABEL_70;
    }

    v18 = *(a1 + 8);
    v66 = v20;
    goto LABEL_69;
  }

  return v10;
}