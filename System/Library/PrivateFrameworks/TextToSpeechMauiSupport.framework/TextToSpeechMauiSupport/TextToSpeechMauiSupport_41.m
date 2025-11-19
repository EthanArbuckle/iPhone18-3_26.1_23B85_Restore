uint64_t escseqm_ClassOpen(_WORD *a1, int a2, uint64_t **a3)
{
  v3 = 2147491850;
  v53 = 0;
  v52 = 0;
  if (!a3)
  {
    return 2147491847;
  }

  v50 = 0;
  v51 = 0;
  inited = InitRsrcFunction(a1, a2, &v53);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v8 = heap_Calloc(*(v53 + 8), 1, 16);
  if (v8)
  {
    v9 = v8;
    UInt = paramc_ParamGetUInt(*(v53 + 40), "ppmaxpcreframeblocks", &v52);
    v11 = v52;
    v12 = paramc_ParamGetUInt(*(v53 + 40), "ppnumframesinblock", &v52);
    v13 = v52;
    v14 = nuance_pcre_ObjOpen(a1, a2, &v50);
    if ((v14 & 0x80000000) != 0)
    {
      v3 = v14;
    }

    else
    {
      if (v12 < 0)
      {
        v15 = 50;
      }

      else
      {
        v15 = v13;
      }

      if (UInt < 0)
      {
        v16 = 30;
      }

      else
      {
        v16 = v11;
      }

      v17 = nuance_pcre_Init(v50, v51, v16, v15);
      v18 = v17;
      if ((v17 & 0x80000000) != 0)
      {
        v3 = v17;
      }

      else
      {
        v19 = v53;
        *v9 = v53;
        v20 = heap_Calloc(*(v19 + 8), 1, 96);
        v9[1] = v20;
        if (v20)
        {
          v21 = v20;
          v47 = v9;
          v22 = v53;
          v23 = v50;
          v49 = v51;
          v56 = 0;
          v55 = 0;
          __s = 0;
          paramc_ParamGetStr(*(v53 + 40), "__NUAN_alternative_esc_seq__", &__s);
          *(v21 + 4) = 35;
          v24 = heap_Calloc(*(v22 + 8), 1, 840);
          *(v21 + 8) = v24;
          if (v24)
          {
            cstdlib_memcpy(v24, &g_pEscMappings, 0x348uLL);
            *(v21 + 16) = 9;
            v25 = heap_Calloc(*(v22 + 8), 9, 12);
            *(v21 + 24) = v25;
            if (v25)
            {
              cstdlib_memcpy(v25, &g_pEscNumericArgs, 0x6CuLL);
              *(v21 + 48) = 6;
              v26 = heap_Calloc(*(v22 + 8), 6, 24);
              *(v21 + 56) = v26;
              if (v26)
              {
                v27 = 0;
                v28 = off_279DAD970;
                v29 = v49;
                do
                {
                  v30 = *(v28 - 1);
                  *(*(v21 + 56) + v27 + 16) = v30;
                  if (__s && *__s && !cstdlib_strcmp(v30, "esc"))
                  {
                    v48 = *(v22 + 8);
                    v31 = *v28;
                    v32 = v23;
                    v33 = v22;
                    v34 = cstdlib_strlen(*v28);
                    v35 = v34 + cstdlib_strlen(__s);
                    v22 = v33;
                    v23 = v32;
                    v36 = heap_Calloc(v48, 1, v35 + 2);
                    if (!v36)
                    {
                      goto LABEL_30;
                    }

                    v37 = v36;
                    cstdlib_strcpy(v36, v31);
                    v37[cstdlib_strlen(v31) - 1] = 0;
                    cstdlib_strcat(v37, "|");
                    cstdlib_strcat(v37, __s);
                    cstdlib_strcat(v37, ")");
                    v29 = v49;
                    *(*(v21 + 56) + v27) = nuance_pcre_compile(v23, v49, v37, 2048, &v56, &v55, 0);
                    heap_Free(*(v22 + 8), v37);
                  }

                  else
                  {
                    *(*(v21 + 56) + v27) = nuance_pcre_compile(v23, v29, *v28, 2048, &v56, &v55, 0);
                  }

                  v27 += 24;
                  v28 += 2;
                }

                while (v27 != 144);
                *(v21 + 32) = 3;
                v39 = heap_Calloc(*(v22 + 8), 3, 24);
                *(v21 + 40) = v39;
                if (v39)
                {
                  v40 = *(v21 + 56);
                  v41 = v39 + 8;
                  v42 = 3;
                  v43 = &byte_26ECDBE24;
                  do
                  {
                    *(v41 + 8) = 1;
                    *(v41 - 8) = *(v43 - 1);
                    v44 = *v43;
                    v43 += 12;
                    *v41 = *(v40 + 24 * v44);
                    v41 += 24;
                    --v42;
                  }

                  while (v42);
                  *(v21 + 64) = 2;
                  v45 = heap_Calloc(*(v22 + 8), 1, 32);
                  *(v21 + 72) = v45;
                  if (v45)
                  {
                    cstdlib_memcpy(v45, &g_escStr2EnumMappings, 0x20uLL);
                    *(v21 + 80) = 5;
                    v46 = heap_Calloc(*(v22 + 8), 1, 120);
                    *(v21 + 88) = v46;
                    if (v46)
                    {
                      cstdlib_memcpy(v46, &g_escStr2StrMappings, 0x78uLL);
                      *v21 = 1;
                      *a3 = v47;
                      goto LABEL_31;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_30:
    escseqm_ClassClose(*a3);
    v18 = v3;
LABEL_31:
    nuance_pcre_DeInit(v50, v51);
    nuance_pcre_ObjClose(v50, v51);
    return v18;
  }

  return 10;
}

uint64_t escseqm_ClassClose(uint64_t *a1)
{
  if (!a1)
  {
    return 7;
  }

  v3 = *a1;
  v2 = a1[1];
  if (*v2 != 1)
  {
    goto LABEL_28;
  }

  v4 = v2[1];
  if (v4)
  {
    heap_Free(*(v3 + 8), v4);
    v2[1] = 0;
    *(v2 + 2) = 0;
  }

  v5 = v2[3];
  if (v5)
  {
    heap_Free(*(v3 + 8), v5);
    v2[3] = 0;
    *(v2 + 8) = 0;
  }

  v6 = v2[7];
  if (v6)
  {
    v7 = *(v2 + 24);
    if (*(v2 + 24))
    {
      v8 = 0;
      v9 = 0;
      do
      {
        if (*(v6 + v8))
        {
          heap_Free(*(v3 + 8), *(v6 + v8));
          v6 = v2[7];
          v7 = *(v2 + 24);
        }

        v10 = (v6 + v8);
        *v10 = 0;
        v10[2] = 0;
        ++v9;
        v8 += 24;
      }

      while (v9 < v7);
    }

    heap_Free(*(v3 + 8), v6);
    v2[7] = 0;
  }

  v11 = v2[5];
  if (v11)
  {
    v12 = *(v2 + 16);
    if (*(v2 + 16))
    {
      v13 = (v12 + 1) & 0x1FFFE;
      v14 = vdupq_n_s64(v12 - 1);
      v15 = xmmword_26ECC7980;
      v16 = (v11 + 32);
      v17 = vdupq_n_s64(2uLL);
      do
      {
        v18 = vmovn_s64(vcgeq_u64(v14, v15));
        if (v18.i8[0])
        {
          *(v16 - 3) = 0;
        }

        if (v18.i8[4])
        {
          *v16 = 0;
        }

        v15 = vaddq_s64(v15, v17);
        v16 += 6;
        v13 -= 2;
      }

      while (v13);
    }

    heap_Free(*(v3 + 8), v11);
    v2[5] = 0;
  }

  v19 = v2[9];
  if (v19)
  {
    heap_Free(*(v3 + 8), v19);
    v2[9] = 0;
  }

  v20 = v2[11];
  if (v20)
  {
    heap_Free(*(v3 + 8), v20);
    v2[11] = 0;
  }

  *v2 = 0;
  cstdlib_memset(v2, 0, 0x60uLL);
  v2 = a1[1];
  if (v2)
  {
LABEL_28:
    heap_Free(*(v3 + 8), v2);
  }

  heap_Free(*(v3 + 8), a1);
  return 0;
}

uint64_t escseqm_ObjOpen(uint64_t a1, _WORD *a2, int a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v20 = 0;
  v19 = 0;
  v18 = 0;
  v6 = 2147491847;
  if (a1)
  {
    if (a6)
    {
      inited = InitRsrcFunction(a2, a3, &v20);
      if ((inited & 0x80000000) == 0)
      {
        v12 = inited;
        *a6 = 0;
        v13 = heap_Calloc(*(v20 + 8), 1, 64);
        if (v13)
        {
          v14 = v13;
          v15 = v20;
          *v13 = v20;
          *(v13 + 52) = 0;
          if (paramc_ParamGetStr(*(v15 + 40), "processingtnplus", &v18))
          {
            v16 = 1;
          }

          else
          {
            v16 = v18 == 0;
          }

          if (!v16 && !LH_stricmp(v18, "yes"))
          {
            *(v14 + 52) = 1;
          }

          *(v14 + 56) = 0;
          *(v14 + 24) = a4;
          *(v14 + 32) = a5;
          *(v14 + 8) = a1;
          *(v14 + 16) = 0;
          *(v14 + 40) = *(a1 + 8);
          *(v14 + 48) = 1024;
          if ((paramc_ParamGetUInt(*(v20 + 40), "ppescseqmaxlength", &v19) & 0x80000000) == 0)
          {
            *(v14 + 48) = v19 + 32;
          }

          *a6 = v14;
          return v12;
        }

        else
        {
          return 2147491850;
        }
      }
    }
  }

  return v6;
}

uint64_t escseqm_ObjClose(uint64_t *a1)
{
  if (!a1)
  {
    return 2147491847;
  }

  v1 = *a1;
  a1[5] = 0;
  heap_Free(*(v1 + 8), a1);
  return 0;
}

uint64_t escseqm_ProcessStart(uint64_t a1)
{
  if (!a1)
  {
    return 2147491847;
  }

  result = 0;
  *(a1 + 56) = 0;
  return result;
}

uint64_t escseqm_GetDefaults(void *a1, uint64_t *a2)
{
  v2 = 2147491847;
  v12 = 0;
  if (a1)
  {
    v5 = heap_Calloc(*(*a1 + 8), 1, 2561);
    if (!v5)
    {
      return 2147491850;
    }

    v6 = v5;
    v11[0] = 0;
    v7 = v5 + 64;
    v8 = 1;
    while (1)
    {
      *(v7 + 20) = v8;
      v11[1] = v7;
      *v7 = 1;
      *(v7 + 8) = 0;
      if (v8 <= 0xDu && ((1 << v8) & 0x2314) != 0)
      {
        goto LABEL_6;
      }

      hasNonConstCharPtrArg = marker_hasNonConstCharPtrArg(v8);
      checkForDefaultArgs(a1, v11, &v12);
      if (hasNonConstCharPtrArg)
      {
        break;
      }

      if (v12)
      {
        if (*(*(a1[1] + 8) + 64))
        {
          escseqm_str2enumMapping(a1, v11);
        }

        goto LABEL_7;
      }

      *(v7 + 20) = v8;
      if (!setDefaultArgIfAny(a1, v11))
      {
        goto LABEL_6;
      }

LABEL_7:
      ++v8;
      v7 += 64;
      if (v8 == 40)
      {
        v2 = 0;
        *a2 = v6;
        return v2;
      }
    }

    if (v12)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v7 + 20) = 0;
    goto LABEL_7;
  }

  return v2;
}

uint64_t checkForDefaultArgs(void *a1, uint64_t a2, _DWORD *a3)
{
  *a3 = 0;
  v6 = *(a1[1] + 8);
  v7 = *(v6 + 80);
  if (*(v6 + 80))
  {
    v8 = 0;
    v9 = *(v6 + 88);
    while (1)
    {
      v10 = v9 + 24 * v8;
      v11 = *(v10 + 8);
      if (*(v10 + 8))
      {
        break;
      }

LABEL_7:
      if (++v8 == v7)
      {
        v14 = *(a2 + 8);
        goto LABEL_18;
      }
    }

    v12 = *(v10 + 16);
    while (1)
    {
      v13 = *v12++;
      if (*(*(a2 + 8) + 20) == v13)
      {
        break;
      }

      if (!--v11)
      {
        goto LABEL_7;
      }
    }

    v15 = *(*a1 + 8);
    v16 = cstdlib_strlen(*v10);
    *(*(a2 + 8) + 40) = heap_Calloc(v15, 1, (v16 + 1));
    v17 = *(*(a2 + 8) + 40);
    if (v17)
    {
      cstdlib_strcpy(v17, *(*(*(a1[1] + 8) + 88) + 24 * v8));
      result = 0;
      *a3 = 1;
      return result;
    }

    return 2147491850;
  }

  v14 = *(a2 + 8);
  v19 = *(v14 + 20);
  v20 = v19 > 0x24;
  v21 = (1 << v19) & 0x1000201000;
  if (!v20 && v21 != 0)
  {
    v23 = *(*a1 + 8);
    MarkerArgStr = marker_getMarkerArgStr(1u);
    v25 = cstdlib_strlen(MarkerArgStr);
    *(*(a2 + 8) + 40) = heap_Calloc(v23, 1, (v25 + 1));
    v26 = *(*(a2 + 8) + 40);
    if (v26)
    {
      v27 = marker_getMarkerArgStr(1u);
      cstdlib_strcpy(v26, v27);
      result = 0;
      *a3 = 1;
      return result;
    }

    return 2147491850;
  }

LABEL_18:
  v28 = *(v14 + 40);
  if (v28)
  {
    heap_Free(*(*a1 + 8), v28);
    *(*(a2 + 8) + 40) = 0;
  }

  result = 0;
  *(*(a2 + 8) + 20) = 0;
  return result;
}

uint64_t setDefaultArgIfAny(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 8) + 8);
  v3 = *(v2 + 4);
  if (!*(v2 + 4))
  {
LABEL_6:
    result = 0;
LABEL_7:
    *a2 = result;
    return result;
  }

  v4 = *(a2 + 8);
  v5 = *(v4 + 20);
  v6 = (*(v2 + 8) + 16);
  while (v5 != *(v6 - 1) || *(v6 - 2) != 1)
  {
    v6 += 6;
    if (!--v3)
    {
      goto LABEL_6;
    }
  }

  if (*v6 != 9999)
  {
    if (*(a1 + 52))
    {
      v8 = v5 == 8;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      v9 = 29999;
    }

    else
    {
      v9 = *v6;
    }

    *(v4 + 40) = v9;
    result = 1;
    goto LABEL_7;
  }

  return 0;
}

uint64_t escseqm_Match(void *a1, char *a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || !a2 || !a3 || !a4)
  {
    return 2147491847;
  }

  if (!**(a1[1] + 8))
  {
    log_OutPublic(*(*a1 + 32), "PP", 1805, 0, a5, a6, a7, a8, v10);
    return 2147491847;
  }

  v12 = 0;
  v11[0] = 0;
  v11[1] = a4;
  result = escseqm_get_token(a1, a2, a3, v11, &v12);
  if ((result & 0x1FFF) != 0xA)
  {
    if (v12 == 2)
    {
      if (*(*(a1[1] + 8) + 64))
      {
        escseqm_str2enumMapping(a1, v11);
      }

      return 0;
    }

    else
    {
      return 2147491840;
    }
  }

  return result;
}

uint64_t getTrueEnd(uint64_t a1, char *a2, unsigned int a3, int a4, unsigned int *a5, int a6, _DWORD *a7)
{
  *a7 = 0;
  if (a3 <= a4)
  {
    return 0;
  }

  v35 = v7;
  v36 = v8;
  v10 = a4;
  v14 = 0;
  v15 = 0;
  v16 = a4;
  v18 = a6 != 26 && a6 != 7;
  v32 = v18;
  v33 = 0;
  v19 = a6 != 29 && v18;
  while (1)
  {
    if (!a2[v10])
    {
      return 0;
    }

    v20 = isEsc(a1, a2, (a3 - v10), v16, &v34);
    v21 = a2[v10];
    if (v20)
    {
      if (v21 != 92)
      {
        return 0;
      }
    }

    else if (v21 != 92)
    {
      LODWORD(v22) = v16 + 1;
      v27 = v21 == 34;
      goto LABEL_34;
    }

    v22 = v16 + 1;
    if (v22 >= a3 || (v23 = a2[v22], v23 != 92) && v23 != 34)
    {
      v25 = v15 != 1 || v19;
      if (v25 == 1)
      {
        break;
      }

      goto LABEL_28;
    }

    v24 = v32;
    if (v15 != 1)
    {
      v24 = 1;
    }

    if (a6 != 29 && (v24 & 1) != 0)
    {
      break;
    }

LABEL_28:
    if (v22 < a3)
    {
      v26 = a2[v22];
      if (v26 == 92 || v26 == 34)
      {
        ++v10;
        goto LABEL_53;
      }
    }

    v27 = 0;
LABEL_34:
    if (a6 != 26 && a6 != 7 || !v27)
    {
      goto LABEL_53;
    }

    if (v15 == 1)
    {
      if (v33 | v14)
      {
        v15 = 0;
        if (v14)
        {
          v28 = 0;
        }

        else
        {
          v28 = v33 == 1;
        }

        if (v28)
        {
          v14 = 1;
        }

        goto LABEL_53;
      }

      v15 = 0;
      v14 = 0;
      if (a2[v22] == 58)
      {
        *a7 = v22;
      }
    }

    else
    {
      if (v33 != 1)
      {
        v15 = 1;
        goto LABEL_53;
      }

      result = 0;
      if (a6 != 26 || v14 == 1)
      {
        return result;
      }

      v15 = 1;
    }

    v33 = 1;
LABEL_53:
    v16 = ++v10;
    if (v10 >= a3)
    {
      return 0;
    }
  }

  *a5 = v16;
  return 1;
}

uint64_t parseStringArg(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, _DWORD *a6, int a7)
{
  v13 = a5 - a4;
  v14 = heap_Calloc(*(*a1 + 8), 1, (v13 + 1));
  if (!v14)
  {
    return 2147491850;
  }

  v15 = v14;
  v31 = a7;
  v30 = a1;
  v16 = a2;
  v17 = a6;
  v18 = v13;
  cstdlib_memcpy(v14, (a3 + a4), v13);
  if (v13)
  {
    v19 = 0;
    v20 = 0;
    v21 = v15;
    v22 = v13;
    do
    {
      if (v19)
      {
        if (*(v21 - 1) == 92)
        {
          v23 = *v21;
          if (v23 == 92 || v23 == 34)
          {
            cstdlib_memmove(v21 - 1, v21, v18 + v19);
            v15[--v22] = 0;
          }
        }
      }

      ++v20;
      v18 = v22;
      --v19;
      ++v21;
    }

    while (v20 < v22);
  }

  if (v31 == 1 || (v24 = *(v16 + 8), *(v24 + 20) == 26))
  {
    if (utf8_BelongsToSet(7u, v15, 0, v13))
    {
      v25 = cstdlib_strlen(v15);
      if (utf8_BelongsToSet(7u, v15, v25 - 1, v13))
      {
        if (cstdlib_strlen(v15) != 1)
        {
          v26 = cstdlib_strlen(v15);
          cstdlib_memmove(v15, v15 + 1, v26 - 1);
          v15[v26 - 2] = 0;
        }
      }
    }

    if (v31 == 1)
    {
      v27 = cstdlib_strlen(v15);
      v28 = (*(v16 + 8) + 48);
      if (!v27)
      {
        *v28 = 0;
        *v17 = 0;
        heap_Free(*(*v30 + 8), v15);
        return 0;
      }

      goto LABEL_22;
    }

    v24 = *(v16 + 8);
  }

  v28 = (v24 + 40);
LABEL_22:
  result = 0;
  *v28 = v15;
  *v17 = 1;
  return result;
}

size_t parseNumericArg(size_t result, uint64_t a2, uint64_t a3, unsigned int a4, int a5, _DWORD *a6, _DWORD *a7)
{
  v7 = a7;
  v25 = *MEMORY[0x277D85DE8];
  *a7 = 0;
  *a6 = 0;
  v8 = a5 - a4;
  if (v8 <= 0xA && a3)
  {
    v11 = result;
    v12 = a3 + a4;
    cstdlib_memset(__b, 0, 0xBuLL);
    v13 = 0;
    do
    {
      __b[v13] = *(v12 + v13);
      result = cstdlib_strlen(__b);
      if (__b[v13])
      {
        v14 = result;
        result = utf8_BelongsToSet(6u, __b, v13, result);
        if (result)
        {
          result = utf8_BelongsToSet(0, __b, v13, v14);
          if (!result)
          {
            goto LABEL_7;
          }
        }
      }

      goto LABEL_21;
LABEL_7:
      if (v13 + 1 >= v8)
      {
        break;
      }

      if (v13 > 8)
      {
        break;
      }
    }

    while (__b[v13++]);
    v16 = *(*(a2 + 8) + 20);
    if (v16 == 2)
    {
      v17 = v12;
      v18 = v8;
      v19 = 0;
      v20 = 1;
LABEL_20:
      result = escseqm_ReadU32InRange(v17, v18, v19, v20);
      *(*(a2 + 8) + 40) = result;
      v7 = a6;
      goto LABEL_21;
    }

    v21 = *(*(v11 + 8) + 8);
    v22 = *(v21 + 16);
    if (*(v21 + 16))
    {
      v23 = (*(v21 + 24) + 8);
      while (*(v23 - 2) != v16)
      {
        v23 += 3;
        if (!--v22)
        {
          goto LABEL_16;
        }
      }

      v19 = *(v23 - 1);
      v20 = *v23;
      v17 = v12;
      v18 = v8;
      goto LABEL_20;
    }

LABEL_16:
    if (*a2 == 1)
    {
      v7 = a6;
    }
  }

LABEL_21:
  *v7 = 1;
  return result;
}

uint64_t escseqm_ReadU32InRange(uint64_t a1, int a2, unsigned int a3, unsigned int a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v15 = 0;
  cstdlib_memset(__b, 0, 0xBuLL);
  v8 = 0;
  do
  {
    v9 = v8;
    v10 = *(a1 + v8);
    __b[v8++] = v10;
    if (v9 > 8)
    {
      break;
    }
  }

  while (v10 && v8 < a2);
  __b[v8] = 0;
  v12 = cstdlib_strtoul(__b, &v15, 0xAu);
  if (v12 >= a4)
  {
    v13 = a4;
  }

  else
  {
    v13 = v12;
  }

  if (v12 >= a3)
  {
    return v13;
  }

  else
  {
    return a3;
  }
}

uint64_t escseqs_ClassOpen(_WORD *a1, uint64_t a2, uint64_t *a3)
{
  v6 = 2147491847;
  v11 = 0;
  if ((InitRsrcFunction(a1, a2, &v11) & 0x80000000) == 0)
  {
    v7 = heap_Calloc(*(v11 + 8), 1, 32);
    if (v7)
    {
      v8 = v7;
      v9 = v11;
      *(v7 + 8) = a2;
      *(v7 + 16) = v9;
      *v7 = a1;
      v6 = escseqm_ClassOpen(a1, a2, (v7 + 24));
      if ((v6 & 0x80000000) != 0)
      {
        heap_Free(*(v11 + 8), v8);
      }

      else
      {
        *a3 = v8;
      }
    }

    else
    {
      return 2147491850;
    }
  }

  return v6;
}

uint64_t escseqs_ClassClose(uint64_t a1)
{
  if (!a1)
  {
    return 2147491847;
  }

  v2 = *(a1 + 16);
  v3 = escseqm_ClassClose(*(a1 + 24));
  if ((v3 & 0x80000000) == 0)
  {
    heap_Free(*(v2 + 8), a1);
  }

  return v3;
}

uint64_t escseqs_ObjOpen(uint64_t a1, _WORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v29 = 0;
  v30 = 0;
  v6 = 2147491847;
  if (a6 && (InitRsrcFunction(a2, a3, &v30) & 0x80000000) == 0)
  {
    *a6 = 0;
    v13 = heap_Alloc(v30[1], 96);
    if (!v13)
    {
      return 2147491850;
    }

    v14 = v13;
    cstdlib_memset(v13, 0, 0x60uLL);
    *(v14 + 72) = a1;
    *v14 = a2;
    *(v14 + 8) = a3;
    v15 = escseqm_ObjOpen(*(a1 + 24), a2, a3, a4, a5, (v14 + 64));
    if ((v15 & 0x80000000) != 0)
    {
      v20 = v15;
      heap_Free(v30[1], v14);
      return v20;
    }

    if ((objc_GetObject(v30[6], "AUDIOFETCHER", &v29) & 0x80000000) == 0)
    {
      v16 = v29;
      if (*v29 != 1 || (v17 = *(v29 + 8)) == 0)
      {
        v21 = v30[6];
        v22 = "AUDIOFETCHER";
LABEL_18:
        objc_ReleaseObject(v21, v22);
        log_OutPublic(v30[4], &modESCPP, 2574, 0, v23, v24, v25, v26, v29);
        v27 = escseqs_ObjClose(v14);
        if (v27 < 0)
        {
          return v27;
        }

        else
        {
          return 2147491853;
        }
      }

      *(v14 + 32) = v17;
      *(v14 + 16) = *(v16 + 16);
    }

    if ((objc_GetObject(v30[6], "LANGCODECONVERTER", &v29) & 0x80000000) != 0)
    {
LABEL_13:
      v6 = 0;
      *a6 = v14;
      return v6;
    }

    v18 = v29;
    if (*v29 == 1)
    {
      v19 = *(v29 + 8);
      if (v19)
      {
        *(v14 + 56) = v19;
        *(v14 + 40) = *(v18 + 16);
        goto LABEL_13;
      }
    }

    v21 = v30[6];
    v22 = "LANGCODECONVERTER";
    goto LABEL_18;
  }

  return v6;
}

uint64_t escseqs_ObjClose(uint64_t a1)
{
  v1 = 2147491847;
  v5 = 0;
  if (a1 && (InitRsrcFunction(*a1, *(a1 + 8), &v5) & 0x80000000) == 0)
  {
    v3 = *(a1 + 64);
    if (v3)
    {
      escseqm_ObjClose(v3);
    }

    if (*(a1 + 56))
    {
      objc_ReleaseObject(*(v5 + 48), "LANGCODECONVERTER");
    }

    if (*(a1 + 32))
    {
      objc_ReleaseObject(*(v5 + 48), "AUDIOFETCHER");
    }

    heap_Free(*(v5 + 8), a1);
    return 0;
  }

  return v1;
}

uint64_t escseqs_SetMarkerSyncPos(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 2147491847;
  }

  *(a1 + 80) = a2;
  *(a1 + 84) = a2;
  *(a1 + 92) = 1;
  return escseqm_ProcessStart(*(a1 + 64));
}

uint64_t escseqs_SetReset(uint64_t a1)
{
  if (!a1)
  {
    return 2147491847;
  }

  result = 0;
  *(a1 + 88) = 0x100000000;
  return result;
}

uint64_t escseqs_GetPosInOut(uint64_t result, _DWORD *a2, _DWORD *a3)
{
  *a2 = *(result + 80);
  *a3 = *(result + 84);
  return result;
}

uint64_t escseqs_SetPosInOut(uint64_t result, int a2, int a3)
{
  *(result + 80) = a2;
  *(result + 84) = a3;
  return result;
}

uint64_t escseqs_ProcessStart(uint64_t a1, _DWORD *a2)
{
  v13 = 0;
  v14 = 0;
  Defaults = 2147491847;
  __s1 = 0;
  v11 = 0;
  if (a1 && (InitRsrcFunction(*a1, *(a1 + 8), &v13) & 0x80000000) == 0)
  {
    if ((paramc_ParamGetStr(*(v13 + 40), "component_stop_not_reset", &__s1) & 0x80000000) != 0 || !__s1 || cstdlib_strcmp(__s1, "yes"))
    {
      if ((paramc_ParamGetUInt(*(v13 + 40), "pipelineswitchexecuting", &v11) & 0x80000000) != 0 || !v11)
      {
        *(a1 + 80) = 0;
        *(a1 + 92) = 0;
      }
    }

    else
    {
      paramc_ParamSetStr(*(v13 + 40), "component_stop_not_reset", "");
    }

    paramc_ParamSetUInt(*(v13 + 40), "pipelineswitchexecuting", 0);
    v5 = escseqm_ProcessStart(*(a1 + 64));
    if ((v5 & 0x80000000) != 0)
    {
      Defaults = v5;
    }

    else
    {
      Defaults = escseqm_GetDefaults(*(a1 + 64), &v14);
      if ((Defaults & 0x80000000) == 0)
      {
        for (i = 0; i != 2496; i += 64)
        {
          v7 = v14 + i;
          v8 = *(v14 + i + 84);
          if (v8 == 31)
          {
            *a2 = *(v7 + 104);
            v8 = *(v7 + 84);
          }

          if (marker_hasNonConstCharPtrArg(v8))
          {
            v9 = *(v14 + i + 104);
            if (v9)
            {
              heap_Free(*(v13 + 8), v9);
              *(v14 + i + 104) = 0;
            }
          }
        }
      }
    }

    if (v14)
    {
      heap_Free(*(v13 + 8), v14);
    }
  }

  return Defaults;
}

uint64_t escseqs_Process(uint64_t a1, uint64_t a2)
{
  v170 = 0;
  v171 = 0;
  v4 = 2147491847;
  v169 = 0u;
  memset(__b, 0, sizeof(__b));
  v166 = 0u;
  v167 = 0u;
  v164 = 0u;
  v165 = 0u;
  v162 = 0u;
  v163 = 0u;
  v160 = 0u;
  v161 = 0u;
  __s = 0;
  __s1 = 0;
  v157 = 0;
  cstdlib_memset(__b, 0, 0x40uLL);
  LODWORD(__b[0]) = 0;
  *(&__b[0] + 1) = 0;
  LOWORD(__b[1]) = 0;
  *&v169 = 0;
  DWORD2(v169) = 0;
  memset(&__b[1] + 4, 0, 20);
  cstdlib_memset(&v164, 0, 0x40uLL);
  LODWORD(v164) = 1;
  *(&v164 + 1) = 0;
  LOWORD(v165) = 0;
  DWORD1(v165) = 2;
  *&v167 = 0;
  DWORD2(v167) = 0;
  *(&v165 + 1) = 0;
  *&v166 = 0;
  cstdlib_memset(&v160, 0, 0x40uLL);
  LODWORD(v160) = 0;
  *(&v160 + 1) = 0;
  LOWORD(v161) = 0;
  DWORD1(v161) = 36;
  *&v163 = 0;
  DWORD2(v163) = 0;
  *(&v161 + 1) = 0;
  *&v162 = 0;
  if (!a1 || !a2 || (InitRsrcFunction(*a1, *(a1 + 8), &v171) & 0x80000000) != 0)
  {
    return v4;
  }

  appended = datac_RequestBlock(a2, 1000, 1u, &v170);
  if ((appended & 0x80000000) != 0)
  {
    return appended;
  }

  v6 = *(v170 + 8);
  if (!v6)
  {
    return v4;
  }

  if (*(v170 + 2) != 1)
  {
    return 2147491865;
  }

  v7 = cstdlib_strlen("ins_unknown");
  v8 = *(a1 + 80);
  v9 = *(a1 + 84);
  DWORD1(__b[1]) = 0x4000;
  *(&__b[1] + 1) = v8;
  LODWORD(__b[0]) = 0;
  LOWORD(__b[1]) = 0;
  *(&__b[0] + 1) = 0;
  LODWORD(__b[2]) = v9;
  *(&__b[2] + 4) = 0;
  DWORD2(v169) = 0;
  *&v169 = 0;
  appended = escseqs_AppendOutMarker(a2, __b);
  if ((appended & 0x80000000) != 0)
  {
    return appended;
  }

  if ((paramc_ParamGetStr(*(v171 + 40), "textanalysison", &__s1) & 0x80000000) == 0)
  {
    if (__s1)
    {
      if (*__s1)
      {
        v10 = cstdlib_strcmp(__s1, "yes");
        if (!(DWORD2(__b[1]) | v10))
        {
          v36 = heap_Calloc(*(v171 + 8), 1, v7 + 1);
          if (!v36)
          {
            return 2147491850;
          }

          v37 = v36;
          cstdlib_strcpy(v36, "ins_unknown");
          *(&v161 + 1) = 0;
          *&v162 = 0;
          *(&v162 + 1) = v37;
          appended = escseqs_AppendOutMarker(a2, &v160);
          if ((appended & 0x80000000) != 0)
          {
            return appended;
          }

          heap_Free(*(v171 + 8), v37);
        }
      }
    }
  }

  *__dst = 0;
  *v172 = 0;
  appended = datac_RequestBlock(a2, 1011, 1u, __dst);
  if ((appended & 0x80000000) != 0)
  {
    return appended;
  }

  appended = datac_RequestBlock(a2, 1012, 1u, v172);
  if ((appended & 0x80000000) != 0)
  {
    return appended;
  }

  v148 = v6;
  if (*(a1 + 92) == 1)
  {
    v11 = &off_279DADB58;
    *__dst = 0;
    *(a1 + 92) = 0;
    v12 = 4;
    while (1)
    {
      v13 = *(v11 - 2);
      if (v13 > 30)
      {
        if (v13 == 36)
        {
LABEL_26:
          Str = paramc_ParamGetStr(*(v171 + 40), *v11, &__s);
          if ((Str & 0x1FFF) != 0x14)
          {
            v18 = Str;
            if ((Str & 0x80000000) != 0)
            {
              goto LABEL_279;
            }

            log_OutText(*(v171 + 32), &modESCPP, 4, 0, "[ESCSEQS] GET PARAM marker:%d param=%s val=%s", v23, v24, v25, v13);
            v26 = cstdlib_strlen(__s);
            v27 = heap_Calloc(*(v171 + 8), 1, v26 + 1);
            if (!v27)
            {
              return 2147491850;
            }

            v28 = v27;
            cstdlib_strncpy(v27, __s, v26);
            *(v28 + v26) = 0;
            LODWORD(__b[0]) = 1;
            v29 = *(a1 + 80);
            v30 = *(a1 + 84);
            DWORD1(__b[1]) = v13;
            *(&__b[1] + 1) = v29;
            *&__b[2] = v30;
            *(&__b[2] + 1) = v28;
            v31 = escseqs_AppendOutMarker(a2, __b);
            if ((v31 & 0x80000000) != 0)
            {
              v18 = v31;
              heap_Free(*(v171 + 8), v28);
              goto LABEL_279;
            }

            heap_Free(*(v171 + 8), v28);
          }

          paramc_ParamRelease(*(v171 + 40));
          __s = 0;
          goto LABEL_32;
        }

        if (v13 == 31)
        {
LABEL_22:
          UInt = paramc_ParamGetUInt(*(v171 + 40), *v11, __dst);
          if ((UInt & 0x1FFF) != 0x14)
          {
            v18 = UInt;
            if ((UInt & 0x80000000) != 0)
            {
              goto LABEL_279;
            }

            log_OutText(*(v171 + 32), &modESCPP, 4, 0, "[ESCSEQS] GET PARAM marker:%d param=%s val=%d", v15, v16, v17, v13);
            LODWORD(__b[0]) = 1;
            v19 = *(a1 + 80);
            v20 = *(a1 + 84);
            DWORD1(__b[1]) = v13;
            *(&__b[1] + 1) = v19;
            *&__b[2] = v20;
            DWORD2(__b[2]) = *__dst;
            DWORD2(v169) = 0;
            *&v169 = 0;
            v21 = escseqs_AppendOutMarker(a2, __b);
            if ((v21 & 0x80000000) != 0)
            {
              goto LABEL_278;
            }
          }
        }
      }

      else
      {
        if (v13 == 7)
        {
          goto LABEL_22;
        }

        if (v13 == 21)
        {
          goto LABEL_26;
        }
      }

LABEL_32:
      v11 += 2;
      if (!--v12)
      {
        v6 = v148;
        break;
      }
    }
  }

  v32 = &v6[*(v170 + 16)];
  v33 = v6;
  if (*(a1 + 88))
  {
    v33 = v6;
    if (*(v170 + 16))
    {
      v34 = 0;
      v33 = v6;
      while (1)
      {
        v35 = *v33;
        if (!v34 && v35 == 92)
        {
          break;
        }

        if (v35 == 34)
        {
          v34 = !v34;
        }

        v33 += utf8_determineUTF8CharLength(v35);
        if ((v33 + 1) > v32)
        {
          goto LABEL_50;
        }
      }

      v33 += utf8_determineUTF8CharLength(0x5Cu);
      *(a1 + 88) = 0;
    }
  }

LABEL_50:
  DWORD1(__b[1]) = 0;
  v39 = *(v170 + 16);
  v152 = 1;
  if ((paramc_ParamGetStr(*(v171 + 40), "clcpppipelinemode", &v157) & 0x80000000) == 0 && v157)
  {
    v152 = *v157 == 0;
  }

  v147 = v32;
  if (&v33[utf8_determineUTF8CharLength(*v33)] > v32)
  {
    LOWORD(v40) = 0;
LABEL_55:
    v41 = v33;
    goto LABEL_248;
  }

  v151 = v39;
  v141 = 0;
  v142 = 0;
  v40 = 0;
  while (1)
  {
    if (v151 != *(v170 + 16))
    {
      goto LABEL_55;
    }

    v150 = v40;
    v172[0] = 0;
    v42 = utf8_determineUTF8CharLength(*v33);
    if (v42)
    {
      v41 = v33;
      while (1)
      {
        v43 = &v41[v42];
        if (v43 > v32 || isEsc(*(a1 + 64), v41, (v32 - v41), 0, v172))
        {
          v43 = v41;
          goto LABEL_70;
        }

        *__dst = 0;
        if (v152 && isEscOrPartialEsc(*(a1 + 64), v41, (v32 - v41), 0, __dst) == 2)
        {
          goto LABEL_247;
        }

        if (v43 >= v32)
        {
          break;
        }

        v42 = utf8_determineUTF8CharLength(*v43);
        v41 = v43;
        if (!v42)
        {
          goto LABEL_70;
        }
      }

      v42 = 0;
    }

    else
    {
      v43 = v33;
    }

LABEL_70:
    v172[0] = 0;
    v149 = v32 - v43;
    v44 = isEsc(*(a1 + 64), v43, (v32 - v43), 0, v172);
    v49 = !v172[0] || v44 == 0;
    v50 = v49 ? 0 : v172[0] - 1;
    if (!v42 || &v43[v42 + v50] > v32)
    {
      break;
    }

    v51 = (v43 + 1);
    v52 = &v43[v50 + 1];
    if (v52 >= v32)
    {
      v55 = v148;
      if (*(v170 + 20))
      {
        v56 = v151;
        goto LABEL_179;
      }

LABEL_108:
      v56 = (v43 - v55);
      goto LABEL_179;
    }

    v53 = *v52;
    v54 = &v43[v50 + 2];
    if (v53 == 47)
    {
      v62 = v52[1];
      if ((v62 - 43) <= 0x3F && ((1 << (v62 - 43)) & 0xA008000000080001) != 0)
      {
        for (i = v52[1]; &v54[utf8_determineUTF8CharLength(i) + 2] <= v32; i = *v54)
        {
          v65 = *v54;
          if (v65 == 47)
          {
            v66 = v54[1] - 43;
            v67 = v66 > 0x3F;
            v68 = (1 << v66) & 0xA008000000080001;
            v69 = v67 || v68 == 0;
            if (!v69 && v43[2] == v62)
            {
              break;
            }
          }

          v54 += utf8_determineUTF8CharLength(v65);
        }

        v142 = v62 != 0;
        if ((v54 + 1) <= v32)
        {
          v55 = v148;
          v56 = v151;
          v51 = (v43 + 1);
        }

        else
        {
          v55 = v148;
          v56 = v151;
          v51 = (v43 + 1);
          if (!*(v170 + 20))
          {
            v56 = (v43 - v148);
          }
        }

LABEL_178:
        if (!v56)
        {
          return 2147491849;
        }

        goto LABEL_179;
      }
    }

    else if (v53 == 92)
    {
      while ((v54 + 1) <= v32 && utf8_BelongsToSet(0, v54, 0, *(v170 + 16)))
      {
        v54 += utf8_determineUTF8CharLength(*v54);
      }

      v57 = v54;
      if (&v54[utf8_determineUTF8CharLength(*v54) + 1] <= v32)
      {
        v57 = v54;
        do
        {
          if (utf8_BelongsToSet(0, v57, 0, *(v170 + 16)))
          {
            break;
          }

          v70 = *v57;
          if (v70 == 61)
          {
            break;
          }

          if (v70 == 92)
          {
            break;
          }

          v57 += utf8_determineUTF8CharLength(v70);
        }

        while (&v57[utf8_determineUTF8CharLength(*v57) + 1] <= v32);
      }

      cstdlib_memset(__dst, 0, 6uLL);
      v58 = v57 - v54;
      if ((v57 - v54) > 6uLL)
      {
        v58 = 6;
      }

      if (v58)
      {
        cstdlib_strncpy(__dst, v54, v58);
        if (LH_stricmp(__dst, "audio"))
        {
          if (LH_stricmp(__dst, "mrk"))
          {
            v59 = LH_stricmp(__dst, "toi");
            v60 = 0;
            v146 = 0;
            v61 = v59 == 0;
            goto LABEL_121;
          }

          v60 = 0;
          v61 = 0;
          v143 = 0;
          v144 = 1;
          v146 = 1;
LABEL_124:
          v71 = (v57 + 1);
          if ((v57 + 1) <= v32)
          {
            v72 = 0;
            v73 = 0;
            v145 = v60;
            while (1)
            {
              v74 = *v57;
              if (!v73 && v74 == 92)
              {
                v75 = v143;
                if (v61)
                {
                  v75 = 0;
                }

                if ((v144 & v75 & 1) != 0 || (v61 == 1 ? (v76 = 1) : (v76 = v60), v72 == 1 && v146 | v76 && (v71 >= v32 || (v77 = *v71, v77 != 92) && v77 != 34)))
                {
                  v55 = v148;
                  v56 = v151;
                  goto LABEL_174;
                }
              }

              v78 = *v57 == 34 ? v60 : 0;
              if (v78)
              {
                v73 = v73 != 1;
                v74 = 34;
                if (!v72)
                {
                  goto LABEL_166;
                }
              }

              else if (!v72)
              {
                if (v74 != 61)
                {
                  v83 = v73;
                  v84 = v61;
                  v72 = 0;
                  goto LABEL_169;
                }

                v139 = v73;
                v140 = v61;
                v79 = v71;
                if ((v71 + 1) <= v32)
                {
                  v79 = v71;
                  do
                  {
                    if (!utf8_BelongsToSet(0, v79, 0, *(v170 + 16)))
                    {
                      break;
                    }

                    v79 += utf8_determineUTF8CharLength(*v79);
                  }

                  while ((v79 + 1) <= v32);
                }

                v80 = cstdlib_strlen("orth");
                v81 = cstdlib_strncmp(v79, "orth", v80);
                v73 = v139;
                if (v81)
                {
                  v61 = v140;
                }

                else
                {
                  v61 = 0;
                }

                v74 = *v57;
                v60 = v145;
              }

              v82 = v73 == 1 ? v60 : 0;
              if (((v146 | v82) & 1) == 0 && v61 != 1)
              {
                break;
              }

              v72 = 1;
              if (v74 != 92 || v71 >= v32)
              {
LABEL_166:
                v83 = v73;
                v84 = v61;
                goto LABEL_169;
              }

              v85 = *v71;
              if (v85 != 34 && v85 != 92)
              {
                v83 = v73;
                v84 = v61;
                v74 = 92;
                goto LABEL_169;
              }

              v86 = 2;
LABEL_170:
              v57 += v86;
              v71 = (v57 + 1);
              if ((v57 + 1) > v32)
              {
                goto LABEL_171;
              }
            }

            v83 = v73;
            v84 = v61;
            v72 = 1;
LABEL_169:
            v86 = utf8_determineUTF8CharLength(v74);
            v60 = v145;
            v61 = v84;
            v73 = v83;
            v32 = v147;
            goto LABEL_170;
          }

LABEL_171:
          v55 = v148;
          v56 = v151;
          if (!*(v170 + 20))
          {
            v56 = (v43 - v148);
          }

LABEL_174:
          v87 = v144 ^ 1;
          if (v56)
          {
            v87 = 1;
          }

          v51 = (v43 + 1);
          if ((v87 & 1) == 0)
          {
            v56 = 0;
            *(a1 + 88) = 1;
            goto LABEL_179;
          }

          goto LABEL_178;
        }

        v144 = 0;
        v61 = 0;
        v146 = 0;
        v60 = 1;
      }

      else
      {
        v60 = 0;
        v61 = 0;
        v146 = 0;
LABEL_121:
        v144 = 1;
      }

      v143 = 1;
      goto LABEL_124;
    }

    if (v149 <= 11)
    {
      v55 = v148;
      v56 = v151;
      v51 = (v43 + 1);
      if (*(v170 + 20))
      {
        goto LABEL_179;
      }

      goto LABEL_108;
    }

    v55 = v148;
    v56 = v151;
    v51 = (v43 + 1);
LABEL_179:
    if (v56 != *(v170 + 16))
    {
      break;
    }

    v151 = v56;
    if (v43 == v33)
    {
      v40 = v150;
    }

    else
    {
      v21 = escseqs_AppendOutText(a2, v33, (v43 - v33));
      if ((v21 & 0x80000000) != 0)
      {
        goto LABEL_278;
      }

      v40 = v150 + v43 - v33;
    }

    *(&__b[2] + 1) = 0;
    v18 = escseqm_Match(*(a1 + 64), v43, v149, __b, v45, v46, v47, v48);
    if ((v18 & 0x1FFF) == 0xA)
    {
      goto LABEL_279;
    }

    v88 = DWORD1(__b[1]);
    if (DWORD1(__b[1]) == 36)
    {
      v18 = escseqs_NormalizeLanguageName(a1, __b);
      if ((v18 & 0x80000000) != 0)
      {
        goto LABEL_279;
      }

      v88 = DWORD1(__b[1]);
    }

    if (v169 && DWORD2(__b[2]) != 43 && (DWORD2(__b[2]) - 70) >= 3 && v88 != 26)
    {
      heap_Free(*(v171 + 8), v169);
      *&v169 = 0;
      DWORD2(v169) = 0;
LABEL_194:
      v21 = escseqs_AppendOutText(a2, v43, 1u);
      if ((v21 & 0x80000000) != 0)
      {
        goto LABEL_278;
      }

      ++v40;
      v33 = v51;
      goto LABEL_196;
    }

    if (v18)
    {
      goto LABEL_194;
    }

    if (marker_hasNonConstCharPtrArg(v88) && !*(&__b[2] + 1))
    {
      LOWORD(__b[1]) = 0;
      *(&__b[0] + 1) = 0;
      DWORD1(__b[1]) = 0x4000;
      DWORD2(__b[2]) = 0;
      goto LABEL_225;
    }

    v89 = DWORD1(__b[1]);
    if (!v169 || DWORD1(__b[1]) == 26)
    {
      if (v169 && DWORD1(__b[1]) == 26)
      {
        v91 = v40;
        v92 = cstdlib_strlen(v169);
        *__dst = 0;
        v93 = *(&__b[2] + 1);
        v94 = *(*(a1 + 32) + 64);
        NullHandle = safeh_GetNullHandle();
        if ((v94(*(a1 + 16), *(a1 + 24), v93, 0, NullHandle, v96, __dst) & 0x80000000) != 0)
        {
          log_OutText(*(v171 + 32), &modESCPP, 4, 0, "[ESCSEQS] Invalid audio file, file=%s, Putting alternate text in text stream: %s ", v97, v98, v99, *(&__b[2] + 1));
          v21 = escseqs_AppendOutText(a2, v169, v92);
          if ((v21 & 0x80000000) != 0)
          {
            goto LABEL_278;
          }

          DWORD1(__b[1]) = 0;
          heap_Free(*(v171 + 8), *(&__b[2] + 1));
          *(&__b[2] + 1) = 0;
        }

        heap_Free(*(v171 + 8), v169);
        *&v169 = 0;
        v89 = DWORD1(__b[1]);
        v55 = v148;
        v40 = v91;
      }

      goto LABEL_223;
    }

    if (SDWORD2(__b[2]) > 70)
    {
      if (DWORD2(__b[2]) == 71)
      {
        DWORD2(__b[2]) = 43;
LABEL_222:
        DWORD2(v169) = 0;
        goto LABEL_223;
      }

      if (DWORD2(__b[2]) != 72)
      {
LABEL_217:
        DWORD2(__b[2]) = 43;
        if (DWORD2(v169) != 3)
        {
          goto LABEL_223;
        }

        goto LABEL_222;
      }

      v90 = 4;
    }

    else if (DWORD2(__b[2]) == 43)
    {
      v90 = 1;
    }

    else
    {
      if (DWORD2(__b[2]) != 70)
      {
        goto LABEL_217;
      }

      v90 = 2;
    }

    DWORD2(v169) = v90;
    DWORD2(__b[2]) = 43;
LABEL_223:
    if (v89)
    {
      goto LABEL_226;
    }

    LOWORD(__b[1]) = 0;
    *(&__b[0] + 1) = 0;
    DWORD1(__b[1]) = 999;
LABEL_225:
    DWORD2(v169) = 0;
    *&v169 = 0;
LABEL_226:
    v100 = *(a1 + 80);
    v101 = *(a1 + 84);
    LODWORD(__b[0]) = 0;
    DWORD2(__b[1]) = v100 + v43 - v55;
    LODWORD(__b[2]) = v101 + v40;
    if (v142 || ((DWORD2(__b[2]) - 15) > 0x39 || ((1 << (BYTE8(__b[2]) - 15)) & 0x280200010000003) == 0) && (DWORD2(__b[2]) - 106) >= 3)
    {
      v18 = escseqs_AppendOutMarker(a2, __b);
    }

    else
    {
      if (v141 == DWORD2(__b[2]))
      {
        DWORD1(__b[1]) = 999;
      }

      v18 = escseqs_AppendOutMarker(a2, __b);
      v141 = DWORD2(__b[2]);
    }

    if (marker_hasNonConstCharPtrArg(SDWORD1(__b[1])) && *(&__b[2] + 1))
    {
      heap_Free(*(v171 + 8), *(&__b[2] + 1));
      *(&__b[2] + 1) = 0;
    }

    else
    {
      DWORD2(__b[2]) = 0;
    }

    if ((v18 & 0x80000000) != 0)
    {
      return v18;
    }

    if (DWORD1(__b[1]) == 13)
    {
      inserted = escseqs_InsertDefaultMarkers(a1, a2, __b);
      if ((inserted & 0x80000000) != 0)
      {
        return inserted;
      }
    }

    else if (DWORD1(__b[1]) == 4)
    {
      DWORD1(v165) = 2;
      *(&v165 + 1) = (HIDWORD(__b[1]) + DWORD2(__b[1]));
      LODWORD(v166) = __b[2];
      *(&v166 + 4) = 0x100000000;
      inserted = escseqs_AppendOutMarker(a2, &v164);
      if ((inserted & 0x80000000) != 0)
      {
        return inserted;
      }
    }

    v33 = &v43[HIDWORD(__b[1])];
    HIDWORD(__b[1]) = 0;
    DWORD1(__b[1]) = 0;
    *&v169 = 0;
    DWORD2(v169) = 0;
LABEL_196:
    v41 = v33;
    if (&v33[utf8_determineUTF8CharLength(*v33)] > v32)
    {
      goto LABEL_248;
    }
  }

  v41 = v43;
LABEL_247:
  LOWORD(v40) = v150;
LABEL_248:
  v21 = escseqs_AppendOutText(a2, v33, (v41 - v33));
  if ((v21 & 0x80000000) != 0)
  {
    goto LABEL_278;
  }

  v103 = *(v170 + 20);
  *__dst = 0;
  v21 = datac_RequestBlock(a2, 1010, 1u, __dst);
  if ((v21 & 0x80000000) != 0)
  {
    goto LABEL_278;
  }

  *(*__dst + 20) = v103;
  v21 = escseqs_PutOutMarkerEos(a2, *(v170 + 20));
  if ((v21 & 0x80000000) != 0)
  {
    goto LABEL_278;
  }

  if (*(v170 + 20))
  {
    v104 = 0;
    v105 = 0;
    *(a1 + 92) = 0;
  }

  else
  {
    v104 = *(a1 + 80) + v41 - v148;
    v105 = *(a1 + 84) + (v40 + v41 - v33);
  }

  *(a1 + 80) = v104;
  *(a1 + 84) = v105;
  *__dst = 0;
  v21 = datac_RequestBlock(a2, 1011, 1u, __dst);
  if ((v21 & 0x80000000) != 0)
  {
    goto LABEL_278;
  }

  v106 = *__dst;
  v107 = *(*__dst + 16);
  if (v107 >= 2)
  {
    v108 = *(*__dst + 8);
    v109 = 1;
    do
    {
      v110 = v108 + (v109 << 6);
      if (*(v110 + 20) == 7)
      {
        v111 = *(v110 + 40);
        if (v111 == 60 || v111 == 16)
        {
          if (v107 <= (v109 + 1))
          {
            v113 = (v109 + 1);
          }

          else
          {
            v113 = v107;
          }

          do
          {
            if (++v109 >= v107)
            {
              v109 = v113;
              goto LABEL_271;
            }

            v114 = v108 + (v109 << 6);
          }

          while (*(v114 + 20) != 7);
          v116 = *(v114 + 40);
          v115 = (v114 + 40);
          if (v111 == v116)
          {
            *v115 = 15;
            v106 = *__dst;
          }
        }
      }

LABEL_271:
      ++v109;
      v107 = *(v106 + 16);
    }

    while (v107 > v109);
  }

  *__dst = 0;
  v21 = datac_RequestBlock(a2, 1011, 1u, __dst);
  if ((v21 & 0x80000000) != 0)
  {
LABEL_278:
    v18 = v21;
  }

  else
  {
    v117 = *(*__dst + 16);
    if (v117 >= 2)
    {
      v118 = 0;
      v119 = *(*__dst + 8);
      v120 = 2;
      while (*(v119 + v118 + 84) != 0x4000)
      {
        ++v120;
        v118 += 64;
        if ((v117 << 6) - 64 == v118)
        {
          goto LABEL_295;
        }
      }

      if (v117 > v120)
      {
        v121 = (v119 + v118 + 148);
        while (1)
        {
          v122 = *v121;
          v121 += 16;
          if (v122 != 0x4000)
          {
            break;
          }

          if (v117 == ++v120)
          {
            goto LABEL_295;
          }
        }

        if (*(v119 + (v120 << 6) + 20) == 0x4000)
        {
          v123 = v120 + 1;
          if (v123 == v117)
          {
            *(*__dst + 16) = v117 - 1;
          }

          else
          {
            cstdlib_memmove((v119 + v118 + 128), (v119 + (v123 << 6)), (v117 - v120) << 6);
            *(*__dst + 16) -= v120;
          }

          LOWORD(v32) = v147;
        }
      }
    }

LABEL_295:
    *v172 = 0;
    v18 = datac_RequestBlock(a2, 1011, 1u, v172);
    if ((v18 & 0x80000000) == 0)
    {
      v124 = *v172;
      if (*(*v172 + 16))
      {
        v125 = 0;
        v126 = 0;
        v127 = 0;
        v128 = 0;
        v129 = *(*v172 + 8);
        do
        {
          v130 = (v129 + (v128 << 6));
          v131 = v130[5];
          if (v131 == 7)
          {
            if (v130[10] == 43)
            {
              v126 = !v126;
              v127 = v128;
            }

            else
            {
              v126 = 0;
            }
          }

          else if (v131 == 0x4000 && v126)
          {
            v155 = 0u;
            v156 = 0u;
            *__dst = 0u;
            v154 = 0u;
            v133 = v127;
            v134 = (v129 + (v127 << 6));
            v130[6] = v134[6];
            v130[8] = v134[8];
            cstdlib_memcpy(__dst, (v129 + (v128 << 6)), 0x40uLL);
            v135 = (v125 + 1);
            v136 = *v172;
            v137 = *(*v172 + 16);
            if (v137 > v135)
            {
              cstdlib_memmove((v129 + (v128 << 6)), (v129 + (v135 << 6)), (v137 - v135) << 6);
              v136 = *v172;
              LOWORD(v137) = *(*v172 + 16);
            }

            v138 = v137 - 1;
            *(v136 + 16) = v138;
            cstdlib_memmove(v134 + 16, v134, (v138 - v133) << 6);
            cstdlib_memcpy(v134, __dst, 0x40uLL);
            v127 = 0;
            v126 = 0;
            v124 = *v172;
            ++*(*v172 + 16);
            ++v128;
          }

          v125 = ++v128;
        }

        while (v128 < *(v124 + 16));
      }

      cstdlib_memmove(v148, v41, (v32 - v41));
      *(v170 + 16) = v32 - v41;
    }
  }

LABEL_279:
  if (__s)
  {
    paramc_ParamRelease(*(v171 + 40));
  }

  return v18;
}

uint64_t escseqs_AppendOutMarker(uint64_t a1, __int128 *a2)
{
  v22 = 0;
  v21 = 0;
  if (!a2)
  {
    return 2147491847;
  }

  result = datac_RequestBlock(a1, 1012, 1u, &v22);
  if ((result & 0x80000000) == 0)
  {
    v5 = a2[1];
    v17 = *a2;
    v18 = v5;
    v6 = a2[3];
    *__s1 = a2[2];
    v20 = v6;
    result = datac_RequestBlock(a1, 1011, 1u, &v22);
    if ((result & 0x80000000) == 0)
    {
      v7 = *(v22 + 16) + 1;
      if (*(v22 + 18) >= v7 || (result = datac_RequestBlock(a1, 1011, (*(v22 + 16) + 1), &v22), (result & 0x80000000) == 0))
      {
        result = datac_RequestBlock(a1, 1012, 1u, &v21);
        if ((result & 0x80000000) == 0)
        {
          if (marker_hasNonConstCharPtrArg(SDWORD1(v18)) && __s1[1])
          {
            v8 = *(v21 + 8);
            if (v8 && *(v21 + 16))
            {
              v9 = 0;
              while (1)
              {
                v10 = cstdlib_strlen(v8);
                if (!cstdlib_strcmp(__s1[1], v8))
                {
                  break;
                }

                v11 = (v10 + 1);
                v9 += v11;
                v8 += v11;
                if (v9 >= *(v21 + 16))
                {
                  goto LABEL_14;
                }
              }

              LODWORD(__s1[1]) = v9;
              cstdlib_memcpy((*(v22 + 8) + (*(v22 + 16) << 6)), &v17, 0x40uLL);
              v13 = &v22;
              goto LABEL_28;
            }

LABEL_14:
            if (marker_hasNonConstCharPtrArg(*(a2 + 5)))
            {
              if (*(a2 + 5))
              {
                v12 = *(v21 + 16);
              }

              else
              {
                v12 = -1;
              }

              LODWORD(__s1[1]) = v12;
            }
          }

          cstdlib_memcpy((*(v22 + 8) + (*(v22 + 16) << 6)), &v17, 0x40uLL);
          *(v22 + 16) = v7;
          result = marker_hasNonConstCharPtrArg(*(a2 + 5));
          if (result)
          {
            result = *(a2 + 5);
            if (result)
            {
              v14 = cstdlib_strlen(result) + 1;
              v15 = v21;
              v16 = *(v21 + 16);
              v7 = v16 + v14;
              if (*(v21 + 18) >= (v16 + v14))
              {
LABEL_27:
                cstdlib_memcpy((*(v15 + 8) + v16), *(a2 + 5), v14);
                v13 = &v21;
LABEL_28:
                result = 0;
                *(*v13 + 16) = v7;
                return result;
              }

              result = datac_RequestBlock(a1, 1012, (v16 + v14), &v21);
              if ((result & 0x80000000) == 0)
              {
                v15 = v21;
                v16 = *(v21 + 16);
                goto LABEL_27;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t escseqs_AppendOutText(uint64_t a1, const void *a2, unsigned int a3)
{
  v10 = 0;
  if (!a2)
  {
    return 2147491847;
  }

  result = datac_RequestBlock(a1, 1010, 1u, &v10);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v7 = v10;
  v8 = *(v10 + 16);
  v9 = v8 + a3;
  if (*(v10 + 18) < (v8 + a3))
  {
    result = datac_RequestBlock(a1, 1010, (v8 + a3), &v10);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    v7 = v10;
    v8 = *(v10 + 16);
  }

  cstdlib_memcpy((*(v7 + 8) + v8), a2, a3);
  result = 0;
  *(v10 + 16) = v9;
  return result;
}

uint64_t escseqs_NormalizeLanguageName(uint64_t a1, uint64_t a2)
{
  __s2 = 0;
  v12 = 0;
  v10 = 0;
  inited = InitRsrcFunction(*a1, *(a1 + 8), &v12);
  if ((inited & 0x80000000) != 0)
  {
    return 2147491847;
  }

  v5 = *(a1 + 56);
  if (!v5)
  {
    return inited;
  }

  v6 = (*(v5 + 24))(*(a1 + 40), *(a1 + 48), *(a2 + 40), &__s2, &v10);
  if ((v6 & 0x80000000) == 0 && v10 && __s2 && cstdlib_strcmp(*(a2 + 40), __s2) && *__s2)
  {
    v7 = strhelper_Strdup(*(v12 + 8), __s2);
    if (v7)
    {
      v8 = v7;
      heap_Free(*(v12 + 8), *(a2 + 40));
      *(a2 + 40) = v8;
    }

    else
    {
      return 2147491850;
    }
  }

  return v6;
}

uint64_t escseqs_InsertDefaultMarkers(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = 0;
  v23 = 0;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  if ((InitRsrcFunction(*a1, *(a1 + 8), &v22) & 0x80000000) != 0)
  {
    return 2147491847;
  }

  cstdlib_memset(&v18, 0, 0x40uLL);
  v6 = *(a3 + 28) + *(a3 + 24);
  *&v20 = *(a3 + 32);
  DWORD2(v19) = v6;
  LODWORD(v18) = 0;
  Defaults = escseqm_GetDefaults(*(a1 + 64), &v23);
  if ((Defaults & 0x80000000) == 0)
  {
    for (i = 0; i != 2496; i += 64)
    {
      v9 = *(v23 + i + 84);
      if (v9)
      {
        if (!marker_hasNonConstCharPtrArg(v9))
        {
          v10 = v23 + i;
          *(v10 + 88) = *(a3 + 28) + *(a3 + 24);
          *(v10 + 100) = 0;
          v11 = *(a3 + 32);
          *(v10 + 64) = 0;
          v10 += 64;
          *(v10 + 32) = v11;
          appended = escseqs_AppendOutMarker(a2, v10);
          Defaults = 0;
          if ((appended & 0x80000000) != 0)
          {
LABEL_17:
            Defaults = appended;
            goto LABEL_18;
          }
        }
      }
    }

    for (j = 104; j != 2600; j += 64)
    {
      if (marker_hasNonConstCharPtrArg(*(v23 + j - 20)))
      {
        v14 = v23 + j;
        *(v14 - 16) = *(a3 + 28) + *(a3 + 24);
        *(v14 - 4) = 0;
        v15 = *(a3 + 32);
        *(v14 - 40) = 0;
        v14 -= 40;
        *(v14 + 32) = v15;
        appended = escseqs_AppendOutMarker(a2, v14);
        if ((appended & 0x80000000) != 0)
        {
          goto LABEL_17;
        }

        v16 = *(v23 + j);
        if (v16)
        {
          heap_Free(*(v22 + 8), v16);
          Defaults = 0;
          *(v23 + j) = 0;
        }

        else
        {
          Defaults = 0;
        }
      }
    }
  }

LABEL_18:
  if (v23)
  {
    heap_Free(*(v22 + 8), v23);
  }

  return Defaults;
}

uint64_t escseqs_PutOutMarkerEos(uint64_t a1, int a2)
{
  v5 = 0;
  result = datac_RequestBlock(a1, 1011, 1u, &v5);
  if ((result & 0x80000000) == 0)
  {
    *(v5 + 20) = a2;
    result = datac_RequestBlock(a1, 1012, 1u, &v5);
    if ((result & 0x80000000) == 0)
    {
      result = 0;
      *(v5 + 20) = a2;
    }
  }

  return result;
}

uint64_t extdata_LoadSpecificData(uint64_t a1, char *a2, const char *a3, const char *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  __s = 0;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  *__s1 = 0u;
  v18 = 0u;
  memset(v16, 0, sizeof(v16));
  *__s2 = 0;
  if (!a1)
  {
    return 2368741383;
  }

  result = paramc_ParamGetStr(*(*(a1 + 16) + 40), "langcode", &__s);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v9 = 0;
  if (cstdlib_strlen(__s))
  {
    do
    {
      v10 = v9;
      __s2[v9] = cstdlib_tolower(__s[v9]);
      ++v9;
      v11 = cstdlib_strlen(__s);
    }

    while (v10 <= 1 && v9 < v11);
  }

  __s2[v9] = 0;
  if (cstdlib_strcmp(__s, __s2))
  {
    result = paramc_ParamSetStr(*(*(a1 + 16) + 40), "langcode", __s2);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    __s = __s2;
  }

  cstdlib_strcat(__s1, a4);
  cstdlib_strcat(__s1, "/");
  cstdlib_strcat(__s1, __s);
  brokeraux_ComposeBrokerString(*(a1 + 16), __s1, 1, 1, __s, 0, 0, v16, 0x80uLL);
  LODWORD(result) = readDataFile(a1, a2, v16, a3);
  v12 = result;
  v13 = result & 0x80001FFF;
  if ((result & 0x80001FFF) == 0x8000000A)
  {
    result = result;
  }

  else
  {
    result = 0;
  }

  if (v12 < 0 && v13 != -2147483638)
  {
    __s1[cstdlib_strlen(__s1) - 4] = 0;
    brokeraux_ComposeBrokerString(*(a1 + 16), __s1, 1, 1, __s, 0, 0, v16, 0x80uLL);
    return readDataFile(a1, a2, v16, a3);
  }

  return result;
}

uint64_t readDataFile(uint64_t a1, char *a2, const char *a3, const char *a4)
{
  v32 = 0;
  v31 = 0;
  v29 = 0;
  *__s2 = 0;
  v27 = 0;
  v28 = 0;
  result = brk_DataOpenEx(*(*(a1 + 16) + 24), a3, 1, &v27);
  if ((result & 0x80000000) == 0)
  {
    result = brk_DataClose(*(*(a1 + 16) + 24), v27);
    if ((result & 0x80000000) == 0)
    {
      result = ssftriff_reader_ObjOpen(*a1, *(a1 + 8), 0, a3, a2, 1031, &v32);
      if ((result & 0x80000000) == 0)
      {
        do
        {
          v16 = ssftriff_reader_OpenChunk(v32, __s2, &v29, &v28);
          if (v16 < 0)
          {
            break;
          }

          if (*(a1 + 32))
          {
            v17 = 0;
            v18 = 0;
            while (cstdlib_strcmp(*(*(a1 + 24) + v17), __s2))
            {
              ++v18;
              v17 += 32;
              if (v18 >= *(a1 + 32))
              {
                goto LABEL_14;
              }
            }

            if (!a4 || !cstdlib_strcmp(a4, __s2))
            {
              v16 = (*(*(a1 + 24) + v17 + 8))(*(*(a1 + 24) + v17 + 24), v32, v29, v28);
              if (v16 < 0)
              {
                log_OutPublic(*(*(a1 + 16) + 32), "PP_EXTDATA", 1800, "%s%s", v19, v20, v21, v22, "loading_type");
              }
            }
          }

LABEL_14:
          v23 = ssftriff_reader_CloseChunk(v32);
          if (v23 < 0 && v16 > -1)
          {
            v16 = v23;
          }
        }

        while ((v16 & 0x80000000) == 0);
        if ((v16 & 0x1FFF) == 0x14)
        {
          v25 = 0;
        }

        else
        {
          v25 = v16;
        }

        LODWORD(result) = ssftriff_reader_ObjClose(v32, v9, v10, v11, v12, v13, v14, v15);
        if (v25 > -1 && result < 0)
        {
          return result;
        }

        else
        {
          return v25;
        }
      }
    }
  }

  return result;
}

uint64_t extdata_RegisterData(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (!a1)
  {
    return 2368741383;
  }

  if (!*(a1 + 32))
  {
    v8 = heap_Calloc(*(*(a1 + 16) + 8), 1, (32 * a3) | 1);
    *(a1 + 24) = v8;
    if (v8)
    {
      goto LABEL_7;
    }

    return (*(a1 + 36) << 20) | 0x8000200A;
  }

  v6 = heap_Realloc(*(*(a1 + 16) + 8), *(a1 + 24), (32 * (*(a1 + 32) + a3)) | 1);
  if (!v6)
  {
    return (*(a1 + 36) << 20) | 0x8000200A;
  }

  *(a1 + 24) = v6;
LABEL_7:
  if (a3)
  {
    v9 = 0;
    do
    {
      cstdlib_memcpy((*(a1 + 24) + 32 * *(a1 + 32) + v9), (a2 + v9), 0x20uLL);
      v9 += 32;
    }

    while (32 * a3 != v9);
  }

  result = 0;
  *(a1 + 32) += a3;
  return result;
}

uint64_t extdata_ObjOpen(_WORD *a1, uint64_t a2, void *a3, int a4)
{
  v12 = 0;
  if (!a3 || (InitRsrcFunction(a1, a2, &v12) & 0x80000000) != 0)
  {
    v11 = -2147475449;
  }

  else
  {
    *a3 = 0;
    v8 = heap_Alloc(*(v12 + 8), 40);
    if (v8)
    {
      v9 = v8;
      cstdlib_memset(v8, 0, 0x28uLL);
      result = 0;
      *v9 = a1;
      v9[1] = a2;
      v9[2] = v12;
      *(v9 + 16) = 0;
      *(v9 + 9) = a4;
      *a3 = v9;
      return result;
    }

    v11 = -2147475446;
  }

  return v11 | (a4 << 20);
}

uint64_t extdata_UnregisterModule(uint64_t a1, unsigned int a2)
{
  result = 2368741383;
  if (a1)
  {
    if (*(a1 + 32) > a2)
    {
      result = 0;
      *(*(a1 + 24) + 32 * a2 + 24) = 0;
    }
  }

  return result;
}

uint64_t extdata_GetIndex(uint64_t a1, _WORD *a2)
{
  result = 2368741383;
  if (a1)
  {
    if (!a2)
    {
      return result;
    }

    v4 = *(a1 + 32);
    LOWORD(a1) = v4 - 1;
    if (v4)
    {
      result = 0;
    }

    else
    {
      LOWORD(a1) = 0;
      result = 2368741383;
    }
  }

  *a2 = a1;
  return result;
}

uint64_t extdata_FreeData(uint64_t a1)
{
  if (!a1)
  {
    return 2368741383;
  }

  v2 = *(a1 + 32);
  if (*(a1 + 32))
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(a1 + 24) + v3;
      if (*(v5 + 24))
      {
        result = (*(v5 + 16))();
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v2 = *(a1 + 32);
      }

      ++v4;
      v3 += 32;
    }

    while (v4 < v2);
  }

  heap_Free(*(*(a1 + 16) + 8), *(a1 + 24));
  result = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return result;
}

uint64_t extdata_ObjClose(uint64_t a1)
{
  if (!a1)
  {
    return 2368741383;
  }

  v2 = *(a1 + 16);
  result = extdata_FreeData(a1);
  if ((result & 0x80000000) == 0)
  {
    v4 = *(a1 + 24);
    if (v4)
    {
      heap_Free(*(v2 + 8), v4);
      *(a1 + 32) = 0;
    }

    heap_Free(*(v2 + 8), a1);
    return 0;
  }

  return result;
}

uint64_t freeEOSDefs(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!*(a1 + 96))
  {
    return 0;
  }

  log_OutText(*(*(a1 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] free EOS definitions", a6, a7, a8, v14);
  v9 = *(a1 + 104);
  if (v9)
  {
    heap_Free(*(*(a1 + 16) + 8), v9);
    *(a1 + 104) = 0;
  }

  *(a1 + 112) = 0;
  *(a1 + 96) = 0;
  if (*(a1 + 128))
  {
    v10 = *(a1 + 120);
    if (v10)
    {
      heap_Free(*(*(a1 + 16) + 8), v10);
      *(a1 + 120) = 0;
    }

    *(a1 + 128) = 0;
  }

  if (*(a1 + 144))
  {
    v11 = *(a1 + 136);
    if (v11)
    {
      heap_Free(*(*(a1 + 16) + 8), v11);
      *(a1 + 136) = 0;
    }

    *(a1 + 144) = 0;
  }

  v12 = *(a1 + 152);
  if (v12)
  {
    heap_Free(*(*(a1 + 16) + 8), v12);
    *(a1 + 152) = 0;
  }

  result = *(a1 + 88);
  if (result)
  {
    result = ssftriff_reader_ReleaseChunkData(result);
    if ((result & 0x80000000) == 0)
    {
      *(a1 + 88) = 0;
    }
  }

  return result;
}

uint64_t getEOSDefs(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 0;
  v44 = 0;
  v45 = a4;
  __dst = 0;
  v9 = (a1 + 96);
  if (*(a1 + 96))
  {
    return v8;
  }

  v10 = a4;
  v8 = 2369789962;
  v42 = 0;
  log_OutText(*(*(a1 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] get EOS definitions", a6, a7, a8, v41);
  cstdlib_memcpy(&__dst, v10, 4uLL);
  cstdlib_memcpy(&v44 + 4, (v10 + 4), 4uLL);
  v13 = HIDWORD(v44) + 8;
  v14 = (HIDWORD(v44) + 8 + __dst);
  cstdlib_memcpy(v9, (v10 + v14), 2uLL);
  v15 = heap_Calloc(*(*(a1 + 16) + 8), 1, (8 * *(a1 + 96)) | 1);
  *(a1 + 104) = v15;
  if (!v15)
  {
    goto LABEL_26;
  }

  v23 = v14 + 2;
  if (*v9)
  {
    v24 = 0;
    v25 = 1;
    do
    {
      cstdlib_memcpy(&v42 + 2, (v10 + v23), 2uLL);
      v10 = v45;
      cstdlib_memcpy(&v44, (v45 + v23 + 2), 4uLL);
      v23 += 6;
      v26 = *(a1 + 104) + v24;
      *(v26 + 4) = BYTE2(v42);
      *v26 = v44;
      v24 += 8;
    }

    while (*(a1 + 96) > v25++);
  }

  cstdlib_memcpy((a1 + 128), (v10 + v23), 2uLL);
  v28 = heap_Calloc(*(*(a1 + 16) + 8), 1, (2 * *(a1 + 128)) | 1);
  *(a1 + 120) = v28;
  if (!v28)
  {
    goto LABEL_26;
  }

  v29 = v45;
  if (*(a1 + 128))
  {
    v30 = 0;
    v31 = 0;
    do
    {
      cstdlib_memcpy((*(a1 + 120) + v30), (v29 + v23 + v30 + 2), 2uLL);
      ++v31;
      v30 += 2;
    }

    while (v31 < *(a1 + 128));
    v23 += v30;
  }

  *(a1 + 144) = 0;
  cstdlib_memcpy((a1 + 144), (v29 + v23 + 2), 2uLL);
  v32 = v23 + 4;
  if (*(a1 + 144))
  {
    v33 = heap_Calloc(*(*(a1 + 16) + 8), 1, (2 * *(a1 + 144)) | 1);
    *(a1 + 136) = v33;
    if (v33)
    {
      if (*(a1 + 144))
      {
        v34 = 0;
        v35 = 0;
        do
        {
          cstdlib_memcpy((*(a1 + 136) + v34), (v29 + v32 + v34), 2uLL);
          ++v35;
          v34 += 2;
        }

        while (v35 < *(a1 + 144));
        v32 += v34;
      }

      goto LABEL_17;
    }

LABEL_26:
    freeEOSDefs(a1, v16, v17, v18, v19, v20, v21, v22);
    return v8;
  }

LABEL_17:
  cstdlib_memcpy(&v42, (v29 + v32), 2uLL);
  v36 = heap_Calloc(*(*(a1 + 16) + 8), 1, v42 + 1);
  *(a1 + 152) = v36;
  if (!v36)
  {
    goto LABEL_26;
  }

  v37 = v32 + 2;
  if (v42)
  {
    v38 = 0;
    do
    {
      cstdlib_memcpy((*(a1 + 152) + v38), (v29 + v37 + v38), 1uLL);
      ++v38;
    }

    while (v38 < v42);
    v37 += v38;
  }

  cstdlib_memcpy(&v42 + 2, (v29 + v37), 2uLL);
  v39 = HIWORD(v42);
  *(a1 + 160) = HIWORD(v42);
  if (!v39)
  {
    v8 = 2369789959;
    goto LABEL_26;
  }

  v8 = ssftriff_reader_DetachChunkData(a2, (a1 + 88), &v45);
  if ((v8 & 0x80000000) == 0)
  {
    *(a1 + 112) = v45 + v13;
  }

  return v8;
}

uint64_t sparser_ObjOpen(_WORD *a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5, uint64_t a6)
{
  v35[4] = *MEMORY[0x277D85DE8];
  v33 = 0;
  v34 = 0;
  *&__c[3] = 0;
  v6 = 2369789959;
  *&__c[1] = -1;
  __c[0] = 0;
  v31 = 0;
  __s1 = 0;
  if (a5 && (InitRsrcFunction(a1, a2, &v34) & 0x80000000) == 0)
  {
    *a5 = 0;
    v13 = heap_Alloc(*(v34 + 8), 192);
    if (!v13)
    {
      return 2369789962;
    }

    v14 = v13;
    cstdlib_memset(v13, 0, 0xC0uLL);
    *v14 = a1;
    *(v14 + 8) = a2;
    v15 = v34;
    *(v14 + 16) = v34;
    *(v14 + 80) = a6;
    *(v14 + 64) = 0;
    *(v14 + 72) = 0;
    *(v14 + 184) = 0;
    *(v14 + 176) = 0;
    *(v14 + 168) = 0;
    *(v14 + 188) = 0;
    if ((paramc_ParamGetStr(*(v15 + 40), "mnceosposition", &__s1) & 0x80000000) == 0 && __s1 && !cstdlib_strcmp(__s1, "yes"))
    {
      *(v14 + 188) = 1;
    }

    cstdlib_memset((v14 + 96), 0, 0x48uLL);
    *(v14 + 24) = a3;
    *(v14 + 32) = a4;
    *(v14 + 88) = 0;
    v35[0] = "EOSD";
    v35[1] = getEOSDefs;
    v35[2] = freeEOSDefs;
    v35[3] = v14;
    v16 = extdata_RegisterData(a6, v35, 1u);
    if ((v16 & 0x80000000) == 0)
    {
      extdata_GetIndex(a6, &v31);
      if ((objc_GetObject(*(v34 + 48), "FE_DCTLKP", &v33) & 0x80000000) != 0)
      {
        v18 = *(v14 + 40);
        if (!v18)
        {
LABEL_28:
          v6 = 0;
          *a5 = v14;
          return v6;
        }
      }

      else
      {
        v17 = v33;
        v18 = *(v33 + 8);
        *(v14 + 40) = v18;
        *(v14 + 48) = *(v17 + 16);
        if (!v18)
        {
          goto LABEL_28;
        }
      }

      *&__c[1] = -1;
      v16 = (*(v18 + 96))(*(v14 + 48), *(v14 + 56), "fecfg", "ppabbrscanback", &__c[3], &__c[1], __c);
      if ((v16 & 0x80000000) == 0)
      {
        if (*&__c[1] != 1 || !*&__c[3])
        {
          goto LABEL_28;
        }

        v19 = cstdlib_strchr(**&__c[3], __c[0]);
        if (v19)
        {
          *v19 = 0;
        }

        v20 = **&__c[3];
        *(v14 + 72) = 1;
        while (1)
        {
          v21 = cstdlib_strchr(v20, 124);
          if (!v21)
          {
            break;
          }

          ++*(v14 + 72);
          v20 = v21 + 1;
        }

        v22 = heap_Calloc(*(v34 + 8), 1, *(v14 + 72) + 1);
        *(v14 + 64) = v22;
        if (v22)
        {
          v23 = **&__c[3];
          *(v14 + 72) = 0;
          if (v23)
          {
            do
            {
              if (*v23 == __c[0])
              {
                break;
              }

              v24 = cstdlib_strchr(v23, 124);
              v25 = v24;
              if (v24)
              {
                *v24 = 0;
              }

              v26 = cstdlib_atoi(v23);
              v27 = *(v14 + 64);
              v28 = *(v14 + 72);
              *(v14 + 72) = v28 + 1;
              *(v27 + v28) = v26;
              v23 = v25 + 1;
            }

            while (v25);
          }

          goto LABEL_28;
        }

        return 2369789962;
      }
    }

    v6 = v16;
    sparser_ObjClose(v14);
    extdata_UnregisterModule(a6, v31);
  }

  return v6;
}

uint64_t sparser_ObjClose(uint64_t a1)
{
  v1 = 2369789959;
  v5 = 0;
  if (a1 && (InitRsrcFunction(*a1, *(a1 + 8), &v5) & 0x80000000) == 0)
  {
    if (*(a1 + 40))
    {
      objc_ReleaseObject(*(v5 + 48), "FE_DCTLKP");
    }

    v3 = *(a1 + 64);
    if (v3)
    {
      heap_Free(*(v5 + 8), v3);
      *(a1 + 64) = 0;
      *(a1 + 72) = 0;
    }

    heap_Free(*(v5 + 8), a1);
    return 0;
  }

  return v1;
}

uint64_t sparser_HasTextElementLeft(_WORD **a1, uint64_t a2, _BOOL4 *a3, _WORD *a4)
{
  v59 = 0;
  v60 = 0;
  v8 = 2369789959;
  v57 = 0;
  v58 = 0;
  v56 = 0;
  v54 = 0;
  v55 = 0;
  v52 = 0u;
  v53 = 0u;
  __b = 0u;
  v51 = 0u;
  v49 = 0;
  cstdlib_memset(&__b, 0, 0x40uLL);
  LODWORD(__b) = 1;
  *(&__b + 1) = 0;
  LOWORD(v51) = 0;
  DWORD1(v51) = 2;
  *&v53 = 0;
  DWORD2(v53) = 0;
  *(&v51 + 1) = 0;
  *&v52 = 0;
  DWORD2(v52) = 1;
  if (!a1 || !a2 || !a3 || (InitRsrcFunction(*a1, a1[1], &v60) & 0x80000000) != 0)
  {
    return v8;
  }

  if (!*(a1 + 48))
  {
    log_OutPublic(*(v60 + 32), &modPP_1, 1808, 0, v9, v10, v11, v12, v48);
    return v8;
  }

  if ((datac_RequestBlock(a2, 1010, 1u, &v59) & 0x80000000) != 0)
  {
    v8 = 0;
    *a3 = 0;
    return v8;
  }

  v13 = datac_RequestBlock(a2, 1011, 1u, &v58);
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

  v14 = *(v58 + 8);
  v15 = *(v58 + 16);
  v13 = datac_RequestBlock(a2, 1012, 1u, &v57);
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

  v13 = bed_ObjOpen(*a1, a1[1], a2, 1011, &v55, 212);
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

  if ((chars_ScanBlankHead(v59, &v56 + 1, v58, &v56, &v49, 1u) & 0x80000000) == 0)
  {
    if (v15 < 2)
    {
      LOWORD(v16) = 0;
    }

    else
    {
      v16 = 0;
      v17 = v14 + 21;
      v18 = v15 - 1;
      do
      {
        if (v17[3] - v14[8] > v14[8] + *(v59 + 2) * HIWORD(v56))
        {
          break;
        }

        v20 = *v17;
        v17 += 16;
        v19 = v20;
        if (v20 == 0x4000)
        {
          v21 = v16;
        }

        else
        {
          v21 = v16 + 1;
        }

        if (v19 != 3)
        {
          v16 = v21;
        }

        --v18;
      }

      while (v18);
    }

    if (*(a1 + 92) <= v16)
    {
      if ((bed_GetpBlock(v55, &v58) & 0x80000000) != 0)
      {
        goto LABEL_75;
      }

      v27 = v59;
      if (v15 >= 2)
      {
        v28 = 0;
        v29 = v14 + 26;
        v30 = 1;
        while (*(v29 - 2) - v14[8] <= *(v59 + 2) * HIWORD(v56))
        {
          v31 = *(v29 - 5);
          if (v31 == 3 && *v29 == 1)
          {
            goto LABEL_73;
          }

          if (v31 != 0x4000)
          {
            ++v28;
          }

          if (*(a1 + 92) == v28)
          {
            if ((bed_Goto(v55, v30) & 0x80000000) == 0)
            {
              v43 = *(v29 - 2);
              DWORD2(v51) = *(v29 - 4);
              LODWORD(v52) = v43;
              if ((sparser_bed_InjectMarker(v55, &__b, 0, *(a1 + 47)) & 0x80000000) == 0)
              {
                log_OutText(*(a1[2] + 4), &modPP_1, 5, 0, "[SPARSER] inserting EOS as number of markers in empty text exceeded, end marker now %u", v44, v45, v46, v30);
                goto LABEL_73;
              }
            }

            goto LABEL_75;
          }

          ++v30;
          v29 += 16;
          if (v15 == v30)
          {
            break;
          }
        }
      }
    }

    else
    {
      if (!v16 && HIWORD(v56) > 0x400u)
      {
        if ((bed_GetpBlock(v55, &v58) & 0x80000000) != 0)
        {
          goto LABEL_75;
        }

        HIWORD(v56) = 1024;
        v23 = v14[8];
        v22 = v14 + 8;
        DWORD2(v51) = *(v22 - 2);
        LODWORD(v52) = v23;
        if (v15)
        {
          v24 = 0;
          v25 = v22;
          while (*(v25 - 3) == 0x4000)
          {
            v26 = *v25;
            if (*v25 - *v22 > (*(v59 + 2) << 10))
            {
              break;
            }

            DWORD2(v51) = *(v25 - 2);
            LODWORD(v52) = v26;
            ++v24;
            v25 += 16;
            if (v15 == v24)
            {
              goto LABEL_67;
            }
          }

          v15 = v24;
        }

LABEL_67:
        if ((bed_Goto(v55, v15) & 0x80000000) != 0 || (sparser_bed_InjectMarker(v55, &__b, 0, *(a1 + 47)) & 0x80000000) != 0)
        {
          goto LABEL_75;
        }

        log_OutText(*(a1[2] + 4), &modPP_1, 5, 0, "[SPARSER] inserting EOS as empty text length exceeded, end marker now %u", v40, v41, v42, v15);
LABEL_73:
        v39 = 1;
LABEL_74:
        *a3 = v39;
        goto LABEL_75;
      }

      v27 = v59;
    }

    if ((chars_ScanBlankHead(v27, &v56 + 1, v58, &v56, &v49, 2u) & 0x80000000) == 0)
    {
      v32 = *(v58 + 16);
      if (v32 >= 2)
      {
        v33 = v14[8] + HIWORD(v56);
        v34 = v32 - 1;
        v35 = v14 + 26;
        do
        {
          if (*(v35 - 2) > v33)
          {
            break;
          }

          if (*(v35 - 5) == 20)
          {
            *a4 = *v35;
          }

          v35 += 16;
          --v34;
        }

        while (v34);
      }

      v36 = *a4;
      switch(v36)
      {
        case 2:
          v38 = (sparser_FindNextCharacterBoundary)(v59);
          break;
        case 4:
          v37 = sparser_FindNextLineBoundary;
          goto LABEL_59;
        case 3:
          v37 = sparser_FindNextWordBoundary;
LABEL_59:
          v38 = (v37)(v59);
          break;
        default:
          paramc_ParamGetStr(*(v60 + 40), "extraesctn", &v54);
          v38 = (sparser_FindNextSentenceBoundary)(v59);
          break;
      }

      if (v38 < 0 || *a3 || !*(v59 + 20))
      {
        goto LABEL_75;
      }

      v39 = sparser_ScanDataMarker(v58);
      goto LABEL_74;
    }
  }

LABEL_75:
  if (v55)
  {
    bed_ObjClose(v55);
  }

  return 0;
}

uint64_t sparser_bed_InjectMarker(uint64_t a1, unsigned int *a2, int a3, int a4)
{
  result = 2369789959;
  if (a1)
  {
    if (a2)
    {
      result = sparser_bed_MapPosCur(a1, a2[8], a2 + 6);
      if ((result & 0x80000000) == 0)
      {
        result = sparser_bed_MapPosCur(a1, a2[9] + a2[8], a2 + 7);
        if ((result & 0x80000000) == 0)
        {
          v10 = a2[6];
          v9 = a2[7];
          v11 = v9 >= v10;
          v12 = v9 - v10;
          if (v11)
          {
            a2[7] = v12;
          }

          if (a3 == 1 || (a4 != 1 ? (v16 = sparser_marker_HasStrictlyGreaterPosCur) : (v16 = sparser_marker_HasGreaterEqualPosCur), (result = bed_GoForward(a1, v16, a2), (result & 0x80000000) == 0) || (result & 0x1FFF) == 0x14))
          {
            v18 = 0;
            v17 = 0;
            result = bed_GetcElem(a1, &v17);
            if ((result & 0x80000000) == 0)
            {
              result = bed_GetpElem(a1, 0, &v18);
              if ((result & 0x80000000) == 0)
              {
                if (v17)
                {
                  v13 = 0;
                  v14 = 32;
                  do
                  {
                    if (*(v18 + v14) > a2[8])
                    {
                      break;
                    }

                    result = cstdlib_memcmp((v18 + v14 - 32), a2, 0x40uLL);
                    if (!result)
                    {
                      return result;
                    }

                    ++v13;
                    v14 += 64;
                  }

                  while (v13 < v17);
                }

                v15 = bed_Insert(a1, a2, 1);
                return v15 & (v15 >> 31);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sparser_FindNextWordBoundary(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, _BOOL4 *a6)
{
  if (*(a1 + 20))
  {
    v8 = *(a1 + 16) > a4;
  }

  else
  {
    v10 = a4;
    chars_ScanNonBlanks(*(a1 + 8), &v10, *(a1 + 16));
    v8 = v10 < *(a1 + 16);
  }

  *a6 = v8;
  return 0;
}

uint64_t sparser_FindNextLineBoundary(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, _BOOL4 *a6)
{
  if (*(a1 + 20))
  {
    v8 = *(a1 + 16) > a4;
  }

  else
  {
    v10 = a4;
    chars_ScanForLineEnd(*(a1 + 8), &v10, *(a1 + 16));
    v8 = v10 < *(a1 + 16);
  }

  *a6 = v8;
  return 0;
}

uint64_t sparser_FindNextSentenceBoundary(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, char *a5, _BOOL4 *a6)
{
  v21 = *MEMORY[0x277D85DE8];
  if (*(a1 + 20))
  {
    v9 = *(a1 + 16) > a4;
    goto LABEL_29;
  }

  v13 = *(a2 + 8);
  LODWORD(v14) = *(a2 + 16);
  if (a4)
  {
    if (!*(a2 + 16))
    {
      LODWORD(v16) = 0;
      goto LABEL_28;
    }

    v15 = 0;
    LODWORD(v16) = 0;
    do
    {
      v17 = (v13 + (v16 << 6));
      if (v17[8] > *(v13 + 32) + *(a1 + 2) * a4)
      {
        break;
      }

      if (a5 && v17[5] == 21)
      {
        cstdlib_strcpy(__dst, (*(a3 + 8) + v17[10]));
        v15 = cstdlib_strstr(a5, __dst) != 0;
        LODWORD(v14) = *(a2 + 16);
      }

      LODWORD(v16) = v16 + 1;
    }

    while (v16 < v14);
  }

  else
  {
    LODWORD(v16) = 0;
    v15 = 0;
  }

  if (v16 >= v14)
  {
    goto LABEL_28;
  }

  v16 = v16;
  v18 = (v13 + (v16 << 6));
  while (1)
  {
    if (v18[8] == *(v13 + 32) || !sparser_marker_IsSentenceBoundary(v18, (*(a3 + 8) + v18[10])))
    {
      if (a5 && v18[5] == 21)
      {
        cstdlib_strcpy(__dst, (*(a3 + 8) + v18[10]));
        v15 = cstdlib_strstr(a5, __dst) != 0;
      }

      goto LABEL_25;
    }

    if (v15 && v18[5] == 2)
    {
LABEL_21:
      v18[10] = 0;
      goto LABEL_25;
    }

    if (!sparser_IsSuppressedSentenceBoundary(a2, a1, *(v18 + 16) - *(v13 + 32)))
    {
      break;
    }

    if (v18[5] == 2)
    {
      goto LABEL_21;
    }

LABEL_25:
    ++v16;
    v14 = *(a2 + 16);
    v18 += 16;
    if (v16 >= v14)
    {
      goto LABEL_26;
    }
  }

  LODWORD(v14) = *(a2 + 16);
LABEL_26:
  LODWORD(v16) = v16;
LABEL_28:
  v9 = v16 < v14;
LABEL_29:
  *a6 = v9;
  return 0;
}

BOOL sparser_ScanDataMarker(_BOOL8 result)
{
  if (result)
  {
    if (*(result + 16))
    {
      v1 = *(result + 8);
      v2 = (v1 + 20);
      v3 = 1;
      v4 = *(result + 16);
      v5 = 1;
      do
      {
        if (v1)
        {
          if (*v2 <= 0x28u && ((1 << *v2) & 0x10024000100) != 0)
          {
            break;
          }
        }

        v5 = v3 < *(result + 16);
        v2 += 16;
        ++v3;
        --v4;
      }

      while (v4);
      return v5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sparser_PreScanTextElement(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v12 = 0;
  v5 = datac_RequestBlock(a2, 1010, 1u, &v12);
  if ((v5 & 0x80000000) == 0)
  {
    v6 = *(v12 + 16);
    if (v6 >= 4)
    {
      v7 = *(v12 + 8);
      v13 = 0;
      if (utf8_Utf8CharTo16bit((v7 + (v6 - 2)), &v13))
      {
        if (v13 <= 0x3Fu && ((1 << v13) & 0x8000400200000000) != 0 || v13 == 65294)
        {
          if (utf8_BelongsToSet(2u, v7, *(v12 + 16) - 1, *(v12 + 16)))
          {
            log_OutText(*(*(a1 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] text ends in period-space; get more text", v8, v9, v10, v12);
            *a3 = 1;
          }
        }
      }
    }
  }

  return v5;
}

uint64_t sparser_ScanTextElement(uint64_t a1, uint64_t a2, int a3, unsigned __int16 a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v91 = 0;
  v92 = 0;
  v8 = 2369789959;
  v89 = 0;
  v87 = 0;
  v88 = 0;
  if (!a1 || !a2)
  {
    return v8;
  }

  if (!*(a1 + 96))
  {
    log_OutPublic(*(*(a1 + 16) + 32), &modPP_1, 1808, 0, a5, a6, a7, a8, v77);
    return v8;
  }

  datac_RequestBlock(a2, 1012, 1u, &v87);
  v13 = datac_RequestBlock(a2, 1010, 1u, &v92);
  if ((v13 & 0x80000000) != 0)
  {
    if ((v13 & 0x1FFF) == 0x14)
    {
      return 0;
    }

    else
    {
      return v13;
    }
  }

  v14 = *(v92 + 16);
  v15 = *(v92 + 2);
  v16 = bed_ObjOpen(*a1, *(a1 + 8), a2, 1011, &v91, 212);
  if ((v16 & 0x80000000) != 0)
  {
    return v16;
  }

  v16 = bed_GetpBlock(v91, &v88);
  if ((v16 & 0x80000000) != 0)
  {
    return v16;
  }

  v17 = *(*(v88 + 8) + 32);
  v18 = v91;
  v97 = 0u;
  v98 = 0u;
  __b = 0u;
  v96 = 0u;
  v93 = 0;
  cstdlib_memset(&__b, 0, 0x40uLL);
  LODWORD(__b) = 0;
  *(&__b + 1) = 0;
  LOWORD(v96) = 0;
  DWORD1(v96) = 0x4000;
  *&v98 = 0;
  DWORD2(v98) = 0;
  *(&v96 + 1) = 0;
  *&v97 = 0;
  if (!v18)
  {
    goto LABEL_126;
  }

  v19 = bed_Goto(v18, 0);
  if ((v19 & 0x80000000) != 0 || (v19 = bed_GoForward(v18, sparser_marker_IsOfSameType, &__b), (v19 & 0x80000000) != 0) || (v19 = bed_GetpElem(v18, 0xFFFFu, &v93), (v19 & 0x80000000) != 0))
  {
    v8 = v19;
LABEL_126:
    v72 = 0;
    v22 = 0;
    v73 = 0;
    HIWORD(v89) = 0;
    goto LABEL_127;
  }

  v85 = *(v93 + 32);
  v20 = *(a1 + 168);
  if (v20 < v17)
  {
    *(a1 + 168) = v17;
    v20 = v17;
  }

  *(a1 + 176) = v20;
  v90 = (v20 - v17) / *(v92 + 2);
  LODWORD(v93) = v90;
  NextOrthRegion = sparser_FindNextOrthRegion(v92, v91, &v93, &v90, &v89);
  v22 = v90;
  if ((NextOrthRegion & 0x80000000) != 0)
  {
    v8 = NextOrthRegion;
  }

  else
  {
    v23 = v93;
    if (v90)
    {
      v24 = *(v92 + 16);
      if (v90 <= v24)
      {
        HIWORD(v89) = v90 - (v24 == v90);
        chars_BackScanBlanks(*(v92 + 8), &v89 + 1);
        if (!HIWORD(v89))
        {
          v8 = 0;
          goto LABEL_134;
        }
      }
    }

    if (v23 >= v22)
    {
      v8 = 0;
    }

    else
    {
      v25 = 0;
      v81 = a4;
      v78 = v17 + (v15 * v14);
      v79 = v17;
      LOWORD(v26) = v23;
      do
      {
        v80 = v26;
        if (v26 == v22)
        {
          goto LABEL_20;
        }

        v32 = v26;
        do
        {
          if (!v88)
          {
            goto LABEL_141;
          }

          v33 = *(v88 + 16);
          if (*(v88 + 16))
          {
            v34 = 0;
            v35 = *(v88 + 8);
            v36 = *(v35 + 32);
            v37 = (v35 + 40);
            v38 = v81;
            do
            {
              v39 = *(v37 - 2) - v36;
              v40 = (*(v37 - 4) - v36);
              if (v40 > v22)
              {
                break;
              }

              if (*(v37 - 5) == 20)
              {
                v41 = *v37;
                if (v38 == 1)
                {
                  v42 = v41 == 1 || v40 >= v22;
                  if (!v42 && v40 > v32)
                  {
                    v38 = 1;
LABEL_101:
                    v65 = v39;
                    LOWORD(v39) = v32;
                    v46 = v65;
                    if (a3)
                    {
                      goto LABEL_59;
                    }

                    goto LABEL_20;
                  }
                }

                v38 = *v37;
                v44 = v41 != 1 || v40 >= v22;
                if (!v44 && v40 >= v32)
                {
                  LODWORD(v34) = v34 + 1;
                  if (v34 < v33)
                  {
                    v66 = v35 + 20;
LABEL_105:
                    v34 = v34;
                    v67 = (v66 + (v34 << 6));
                    do
                    {
                      v68 = v67[3] - v36;
                      v69 = (*(v67 + 6) - v36);
                      if (v69 > v22)
                      {
                        break;
                      }

                      if (*v67 == 20)
                      {
                        v71 = v69 >= v22 || v69 < v32;
                        LODWORD(v34) = v34 + 1;
                        if (v34 < v33 && v71)
                        {
                          goto LABEL_105;
                        }

                        if (v71)
                        {
                          break;
                        }

                        v32 = v39;
                        LOWORD(v39) = v68;
                        goto LABEL_101;
                      }

                      ++v34;
                      v67 += 16;
                    }

                    while (v34 < v33);
                  }

LABEL_56:
                  v46 = v22;
                  if (a3)
                  {
                    goto LABEL_59;
                  }

                  goto LABEL_20;
                }
              }

              ++v34;
              v37 += 32;
            }

            while (v33 != v34);
            LOWORD(v39) = v32;
            goto LABEL_56;
          }

          LOWORD(v39) = v32;
          v46 = v22;
          v38 = v81;
          if (!a3)
          {
            break;
          }

LABEL_59:
          if (v39 == v46 || v38 != 1)
          {
            break;
          }

          v86 = v92;
          if (!v92 || (v47 = v91) == 0)
          {
            matched = 2369789959;
LABEL_140:
            v8 = matched;
LABEL_141:
            v17 = v79;
            goto LABEL_142;
          }

          v48 = *(v92 + 2);
          v49 = bed_Goto(v91, 0xFFFFFFFF);
          if ((v49 & 0x80000000) != 0)
          {
            goto LABEL_138;
          }

          v83 = v46;
          v94 = 0;
          __b = 0u;
          v96 = 0u;
          v97 = 0u;
          v98 = 0u;
          LODWORD(v97) = v85 + v48 * v39;
          matched = bed_GoBackward(v47, sparser_marker_HasStrictlySmallerPosCur, &__b);
          if ((matched & 0x80001FFF) == 0x80000014)
          {
            matched = bed_Goto(v47, 0);
          }

          if ((matched & 0x80000000) != 0)
          {
            goto LABEL_140;
          }

          v49 = bed_GetiElem(v47, &v94);
          if ((v49 & 0x80000000) != 0)
          {
LABEL_138:
            matched = v49;
            goto LABEL_140;
          }

          v82 = v46;
          matched = sparser_MatchSb(a1, 0, 1, v86, v85, v39, v46, v47, v94);
          if ((matched & 0x80000000) != 0)
          {
            goto LABEL_140;
          }

          LOWORD(v84) = v39;
          while (1)
          {
            v51 = v94;
            v52 = *(v86 + 2);
            *&__b = 0;
            v99[0] = 0;
            if ((bed_GetcElem(v47, v99) & 0x80000000) != 0 || (bed_GetpElem(v47, 0, &__b) & 0x80000000) != 0)
            {
              break;
            }

            if (v99[0] > v51)
            {
              v53 = (__b + 32 + (v51 << 6));
              while (1)
              {
                v54 = *v53;
                v53 += 16;
                if (v54 > *(__b + 32) + v52 * v84)
                {
                  break;
                }

                if (v99[0] == ++v51)
                {
                  goto LABEL_97;
                }
              }

              LODWORD(v51) = v51;
            }

            if (v51 >= v99[0])
            {
              goto LABEL_97;
            }

            v55 = *(__b + 32);
            v56 = v55 + v52 * v82;
            v57 = v51;
            v58 = (__b + (v51 << 6) + 20);
            while (v58[3] <= v56)
            {
              if (*v58 <= 0x28u && ((1 << *v58) & 0x10004000080) != 0)
              {
                break;
              }

              ++v57;
              v58 += 16;
              if (v99[0] == v57)
              {
                goto LABEL_97;
              }
            }

            v60 = __b + (v57 << 6);
            v61 = *(v60 + 32);
            if (v61 > v56 || ((v62 = *(v60 + 20), v29 = v62 > 0x28, v63 = (1 << v62) & 0x10004000080, !v29) ? (v64 = v63 == 0) : (v64 = 1), v64))
            {
LABEL_97:
              if ((matched & 0x80000000) != 0)
              {
                goto LABEL_140;
              }

              break;
            }

            if (v52)
            {
              v84 = (v61 - v55) / v52;
            }

            matched = sparser_MatchSb(a1, 1, 0, v86, v85, v39, v84, v47, v94);
            if ((matched & 0x80000000) != 0)
            {
              goto LABEL_140;
            }
          }

          v32 = v83;
          v25 = 1;
        }

        while (v83 != v22);
LABEL_20:
        v27 = sparser_FindNextOrthRegion(v92, v91, &v93, &v90, &v89);
        if ((v27 & 0x80000000) != 0)
        {
          v22 = v90;
          v8 = v27;
          goto LABEL_141;
        }

        v17 = v79;
        v28 = v90;
        v29 = v90 > v22 && v93 > v80;
        if (v29)
        {
          v26 = v93;
        }

        else
        {
          v26 = v90;
        }

        LODWORD(v93) = v26;
        v30 = *(v92 + 2);
        v31 = v79 + v90 * v30 > v78 || v26 >= v90;
        v22 = v90;
      }

      while (!v31);
      if (v25 == 1)
      {
        v8 = sparser_CheckForcedSb(a1, v92, v85, (v30 * v90), v91, v89, v87);
      }

      else
      {
        v8 = 0;
      }

      v22 = v28;
    }
  }

LABEL_142:
  HIWORD(v89) = v22;
  if (v22 && (v76 = *(v92 + 16), v22 <= v76))
  {
    if (v22 == v76)
    {
      HIWORD(v89) = v22 - 1;
    }

    chars_BackScanBlanks(*(v92 + 8), &v89 + 1);
    v73 = HIWORD(v89);
    v72 = v22;
  }

  else
  {
    v72 = v22;
    v73 = v22;
  }

LABEL_127:
  if (v22 != v73)
  {
    *(a1 + 172) = v17 + *(v92 + 2) * v73;
  }

  if (v22 >= 5)
  {
    HIWORD(v89) = v72;
    chars_BackScanNChars(*(v92 + 8), &v89 + 1, 4);
    v74 = v17 + *(v92 + 2) * HIWORD(v89);
    goto LABEL_135;
  }

LABEL_134:
  v74 = v17 + v22 * *(v92 + 2);
LABEL_135:
  *(a1 + 168) = v74;
  if (v91)
  {
    bed_ObjClose(v91);
  }

  return v8;
}

uint64_t sparser_FindNextOrthRegion(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned int *a4, _WORD *a5)
{
  v53 = 0;
  result = 2369789959;
  if (!a1)
  {
    return result;
  }

  if (!a2)
  {
    return result;
  }

  v10 = *a3;
  v11 = *a4;
  v12 = *a5;
  v13 = *(a1 + 16);
  *a3 = v13;
  *a4 = v13;
  result = bed_GetpBlock(a2, &v53);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v14 = v53;
  v15 = *a5;
  LODWORD(v16) = *(v53 + 16);
  if (v15 >= v16)
  {
LABEL_43:
    if (v10 == *a3 && v11 == *a4)
    {
LABEL_45:
      result = 0;
      v52 = *(a1 + 16);
      *a3 = v52;
      *a4 = v52;
      return result;
    }

    return 0;
  }

  v17 = *(v53 + 8);
  v18 = *(v17 + 32);
  if (__CFADD__(v18, v11 * *(a1 + 2)))
  {
    v19 = 0;
  }

  else
  {
    v20 = 0;
    v21 = 0;
    v22 = (v17 + 96);
    v23 = 1;
    do
    {
      v15 = v20;
      v19 = v23;
      *a5 = v20;
      if (*(v22 - 19) == 7)
      {
        v21 = !v21;
        if (*(v22 - 14) != 43)
        {
          v21 = 0;
        }
      }

      v24 = *(v14 + 16);
      if (v23 >= v24)
      {
        break;
      }

      v25 = *v22;
      v22 += 16;
      v20 = v23++;
    }

    while (v25 <= v18 + v11 * *(a1 + 2));
    v26 = !v21;
    LODWORD(v16) = *(v14 + 16);
    if (!v26)
    {
      if (v15 < v24)
      {
        v27 = (v17 + (v15 << 6) + 84);
        v28 = v15 + 1;
        do
        {
          v15 = v28;
          *a5 = v28;
          v16 = *(v14 + 16);
          if (v28 >= v16)
          {
            break;
          }

          v29 = *v27;
          v27 += 16;
          ++v28;
        }

        while (v29 != 7);
      }

      if (v15 >= v16 || *(v17 + (v15 << 6) + 20) != 7)
      {
        return 0;
      }
    }
  }

  v30 = v17 + (v15 << 6);
  LODWORD(v31) = v16;
  if (v15 < v16)
  {
    v32 = (v30 + 84);
    v33 = v15 + 1;
    do
    {
      v15 = v33;
      *a5 = v33;
      v31 = *(v14 + 16);
      if (v33 >= v31)
      {
        break;
      }

      v34 = *v32;
      v32 += 16;
      ++v33;
    }

    while (v34 != 7);
  }

  v35 = *(v17 + 32);
  v36 = *(v30 + 32) - v35;
  v37 = *(a1 + 2);
  v38 = v36 / v37;
  if (v15 >= v31)
  {
    if (v38 == *(a1 + 16))
    {
LABEL_42:
      *a3 = v38;
      goto LABEL_43;
    }
  }

  else
  {
    v39 = (*(v17 + (v15 << 6) + 32) - v35) / v37;
    if (v38 == v39)
    {
      v40 = v17 + (v19 << 6);
      v41 = v17 + 84;
      while (1)
      {
        if (*(v17 + (v15 << 6) + 20) == 7 && *(v40 + 40) == 43)
        {
          v42 = (v41 + (v15 << 6));
          v43 = v15 + 1;
          do
          {
            v44 = v42;
            v45 = v43;
            *a5 = v43;
            v31 = *(v14 + 16);
            if (v43 >= v31)
            {
              break;
            }

            v42 += 16;
            ++v43;
          }

          while (*v44 != 7);
          if (*v44 != 7)
          {
            return 0;
          }

          v15 = v45;
        }

        v46 = v15;
        if (v15 < v31)
        {
          v47 = (v41 + (v15 << 6));
          v48 = v15 + 1;
          do
          {
            v15 = v48;
            *a5 = v48;
            v31 = *(v14 + 16);
            if (v48 >= v31)
            {
              break;
            }

            v49 = *v47;
            v47 += 16;
            ++v48;
          }

          while (v49 != 7);
        }

        v50 = *(a1 + 2);
        v38 = (*(v17 + (v46 << 6) + 32) - v35) / v50;
        if (v15 >= v31)
        {
          goto LABEL_42;
        }

        v51 = (*(v17 + (v15 << 6) + 32) - v35) / v50;
        if (v38 != v51)
        {
          *a3 = v38;
          *a4 = v51;
          goto LABEL_43;
        }
      }
    }

    *a4 = v39;
  }

  *a3 = v38;
  if (v10 != v38)
  {
    return 0;
  }

  result = 0;
  if (v11 == *a4 && v12 == v15)
  {
    goto LABEL_45;
  }

  return result;
}

uint64_t sparser_CheckForcedSb(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5, unsigned int a6, uint64_t i)
{
  v96 = 0;
  v7 = 2369789959;
  if (!a2)
  {
    return v7;
  }

  v8 = a5;
  if (!a5)
  {
    return v7;
  }

  v97 = 0;
  if ((InitRsrcFunction(*a1, *(a1 + 8), &v97) & 0x80000000) != 0)
  {
    return v7;
  }

  v94 = 0;
  sparser_getMaxCharsPerText(v97, &v94);
  v14 = *(a2 + 8);
  v7 = bed_Goto(v8, a6);
  if ((v7 & 0x80000000) != 0)
  {
    return v7;
  }

  v95 = 0;
  if (!a4)
  {
    return v7;
  }

  v15 = 0;
  v16 = 0;
  v83 = a4 + a3;
  v17 = v94;
  v85 = v8;
  v86 = i;
  v87 = a1;
  while (1)
  {
    *&__b = 0;
    v18 = bed_GetpBlock(v8, &__b);
    if ((v18 & 0x80000000) != 0)
    {
      return v18;
    }

    v19 = *(__b + 8);
    LOWORD(v93) = v16 / *(a2 + 2);
    chars_ScanBlanks(*(a2 + 8), &v93, *(a2 + 16));
    v20 = *(a2 + 2);
    v21 = v20 * v93;
    LOWORD(v93) = 0;
    v22 = __b;
    v23 = *(__b + 16);
    v24 = v21;
    if (!v21)
    {
LABEL_12:
      LOWORD(v29) = 0;
      goto LABEL_13;
    }

    if (*(__b + 16))
    {
      break;
    }

LABEL_29:
    v35 = Utf8_LengthInUtf8chars(*(a2 + 8), v20 * *(a2 + 16) - v24);
    if (v35 > v17)
    {
      goto LABEL_30;
    }

    v37 = a3;
    v36 = a3 + *(a2 + 2) * *(a2 + 16);
    v8 = v85;
LABEL_36:
    v7 = 0;
    v95 = v36;
    i = v86;
LABEL_75:
    if (v36 - v37 + v16 <= 0xFFFE)
    {
      v79 = (v36 - v37);
      if (v36 == v37)
      {
        v79 = 1;
      }

      v16 += v79;
      a3 = v36;
      if (v16 < a4)
      {
        continue;
      }
    }

    return v7;
  }

  v25 = *(v19 + 32);
  v26 = v25 + v21;
  if (__CFADD__(v25, v24))
  {
    goto LABEL_12;
  }

  v29 = 0;
  v30 = (v19 + 96);
  do
  {
    if (v23 - 1 == v29)
    {
      LOWORD(v93) = *(__b + 16);
LABEL_28:
      v20 = *(a2 + 2);
      goto LABEL_29;
    }

    ++v29;
    v31 = *v30;
    v30 += 16;
  }

  while (v31 <= v26);
  LOWORD(v93) = v29;
LABEL_13:
  while (v23 > v29)
  {
    v27 = v19 + (v29 << 6);
    if (*(v27 + 32) != *(v19 + 32))
    {
      IsSentenceBoundary = sparser_marker_IsSentenceBoundary(v27, (*(i + 8) + *(v27 + 40)));
      LOWORD(v29) = v93;
      v22 = __b;
      if (IsSentenceBoundary)
      {
        LODWORD(v23) = *(__b + 16);
        break;
      }
    }

    LOWORD(v29) = v29 + 1;
    LOWORD(v93) = v29;
    LODWORD(v23) = *(v22 + 16);
  }

  if (v23 <= v29)
  {
    goto LABEL_28;
  }

  v32 = *(v19 + 32) + v24;
  v33 = v32 > a3;
  LODWORD(v34) = (v32 - a3);
  if (v33)
  {
    v34 = v34;
  }

  else
  {
    v34 = 0;
  }

  v35 = Utf8_LengthInUtf8chars((*(a2 + 8) + v34), *(v19 + (v29 << 6) + 32) - (a3 + v34));
  if (v35 <= v17)
  {
    v36 = *(v19 + (v93 << 6) + 32);
    v8 = v85;
    v37 = a3;
    goto LABEL_36;
  }

LABEL_30:
  v93 = 0;
  v91 = 0u;
  v92 = 0u;
  __b = 0u;
  v90 = 0u;
  cstdlib_memset(&__b, 0, 0x40uLL);
  LODWORD(__b) = 1;
  *(&__b + 1) = 0;
  LOWORD(v90) = 0;
  *&v92 = 0;
  DWORD2(v92) = 0;
  *(&v90 + 1) = 0;
  *&v91 = 0;
  DWORD1(v90) = 2;
  DWORD2(v91) = 1;
  log_OutText(*(*(v87 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] sentence character count %d is greater than max %d", v38, v39, v40, v35);
  v93 = (v17 + v16);
  utf8_GetPreviousValidUtf8Offset(*(a2 + 8), &v93);
  v41 = v93;
  v42 = Utf8_LengthInUtf8chars((v14 + v16), v93 - v16);
  v8 = v85;
  if (v41 >= a4)
  {
    i = v86;
  }

  else
  {
    v46 = v42;
    for (i = v86; v17 > v46; ++v46)
    {
      v41 += utf8_determineUTF8CharLength(*(v14 + v41));
      if (a4 <= v41)
      {
        break;
      }
    }
  }

  v95 = a3 - v16 + v41;
  log_OutText(*(*(v87 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] after resetting to %d characters, position=%d", v43, v44, v45, v17);
  eos_BackScanPhraseBoundary(*(v87 + 152), v14, v16, a3, &v95);
  v50 = v95;
  if (v95 > v83)
  {
    v50 = v83;
    v95 = v83;
  }

  log_OutText(*(*(v87 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] after scanning back to phrase boundary, position=%d", v47, v48, v49, v50);
  *&v91 = v95;
  v7 = bed_GetpBlock(v85, &v96);
  if ((v7 & 0x80000000) != 0)
  {
    return v7;
  }

  v54 = *(v96 + 8);
  if (!*(v96 + 16))
  {
    v58 = v15;
LABEL_61:
    v84 = v58;
    if (v91 == *(v54 + 32))
    {
      log_OutText(*(*(v87 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] no hard reset (at start of text)", v51, v52, v53, v81);
LABEL_74:
      log_OutPublic(*(v97 + 32), &modPP_1, 1816, 0, v69, v70, v71, v72, v82);
      v36 = v95;
      v15 = v84;
      v37 = a3;
      goto LABEL_75;
    }

    v73 = *(v96 + 16);
    do
    {
      --v73;
    }

    while (v73 && v91 < *(v54 + (v73 << 6) + 36) + *(v54 + (v73 << 6) + 32));
    log_OutText(*(*(v87 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] hard reset at position=%d", v51, v52, v53, v91);
    v18 = bed_Goto(v85, v73);
    if ((v18 & 0x80000000) != 0)
    {
      return v18;
    }

    v18 = sparser_bed_InjectMarker(v85, &__b, 0, *(v87 + 188));
    if ((v18 & 0x80000000) != 0)
    {
      return v18;
    }

LABEL_68:
    v7 = 0;
LABEL_73:
    i = v86;
    goto LABEL_74;
  }

  v55 = 0;
  v56 = 0;
  v57 = (v54 + 40);
  v58 = v15;
  do
  {
    if (*(v57 - 2) > v91)
    {
      break;
    }

    if (*(v57 - 5) == 7)
    {
      v56 = !v56;
      v58 = *v57 == 43 ? v55 : v58;
      if (*v57 != 43)
      {
        v56 = 0;
      }
    }

    ++v55;
    v57 += 16;
  }

  while (*(v96 + 16) != v55);
  if (!v56)
  {
    goto LABEL_61;
  }

  v84 = v58;
  v59 = v58 + 1;
  log_OutText(*(*(v87 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] position=%d is in a phoneme region", v51, v52, v53, v95);
  v63 = *(v96 + 16);
  if (v63 <= v59)
  {
    goto LABEL_69;
  }

  v64 = v59 - 1;
  v65 = (v54 + (v59 << 6) + 20);
  do
  {
    v67 = *v65;
    v65 += 16;
    v66 = v67;
    v68 = v64 + 2;
    ++v64;
  }

  while (v68 < v63 && v66 != 7);
  if (v66 != 7)
  {
LABEL_69:
    v18 = bed_Goto(v85, v84);
    if ((v18 & 0x80000000) != 0)
    {
      return v18;
    }

    v77 = v54 + (v84 << 6);
    v78 = *(v77 + 24);
    LODWORD(v91) = *(v77 + 32);
    log_OutText(*(*(v87 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] didnt find end of phoneme region, hard reset at start of phoneme (marker %d)", v74, v75, v76, v84);
    v18 = sparser_bed_InjectMarker(v85, &__b, 1, *(v87 + 188));
    if ((v18 & 0x80000000) != 0)
    {
      return v18;
    }

    v8 = v85;
    v7 = bed_GetpBlock(v85, &v96);
    if ((v7 & 0x80000000) != 0)
    {
      return v7;
    }

    *(*(v96 + 8) + (v84 << 6) + 24) = v78;
    v95 = a4;
    goto LABEL_73;
  }

  log_OutText(*(*(v87 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] set forced EOS at end of phoneme region (marker %d)", v60, v61, v62, v64);
  v95 = *(v54 + (v64 << 6) + 32);
  LODWORD(v91) = v95;
  v18 = bed_Goto(v85, v64);
  if ((v18 & 0x80000000) == 0)
  {
    v18 = sparser_bed_InjectMarker(v85, &__b, 0, *(v87 + 188));
    if ((v18 & 0x80000000) == 0)
    {
      v8 = v85;
      goto LABEL_68;
    }
  }

  return v18;
}

uint64_t sparser_GetTextElement(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, _DWORD *a6, _WORD *a7, _DWORD *a8, _DWORD *a9, _DWORD *a10, _WORD *a11, _WORD *a12)
{
  v164 = 0;
  v165 = 0;
  v162 = 0;
  v163 = 0;
  v12 = 2369789959;
  v161 = 0;
  v160 = 0;
  v158 = 0;
  v157 = 0;
  if (!a2)
  {
    return v12;
  }

  v159 = 0;
  if ((InitRsrcFunction(*a1, *(a1 + 8), &v165) & 0x80000000) != 0)
  {
    return v12;
  }

  v25 = a12;
  *a12 = 0;
  *a11 = 0;
  *a8 = 0;
  if (!*(a1 + 96))
  {
    v27 = *(v165 + 32);
    v28 = 1805;
LABEL_8:
    log_OutPublic(v27, &modPP_1, v28, 0, v21, v22, v23, v24, v145);
    return v12;
  }

  v26 = datac_RequestBlock(a2, 1010, 1u, &v164);
  if ((v26 & 0x80000000) != 0)
  {
    return v26;
  }

  v154 = (datac_RequestBlock(a2, 1012, 1u, &v162) & 0x80000000) != 0 ? 0 : *(v162 + 8);
  v26 = datac_RequestBlock(a2, 1011, 1u, &v163);
  if ((v26 & 0x80000000) != 0)
  {
    return v26;
  }

  v153 = a4;
  v155 = *(v163 + 8);
  v29 = *(v163 + 16);
  v26 = chars_ScanBlankHead(v164, &v159, v163, &v159 + 1, &v157, 0);
  if ((v26 & 0x80000000) != 0)
  {
    return v26;
  }

  if (v157 == 1)
  {
    HIWORD(v159) = v29;
  }

  v33 = v163;
  v34 = *(v163 + 16);
  if (v34 >= 2)
  {
    v35 = *(v155 + 32) + v159;
    v36 = v34 - 1;
    v37 = (v155 + 104);
    do
    {
      if (*(v37 - 2) > v35)
      {
        break;
      }

      if (*(v37 - 5) == 20)
      {
        *a7 = *v37;
      }

      v37 += 16;
      --v36;
    }

    while (v36);
  }

  if (*a7 - 2 > 2)
  {
    v38 = sparser_GetSentenceLength;
  }

  else
  {
    v38 = off_287EEEC58[(*a7 - 2)];
  }

  v39 = v164;
  v40 = v162;
  if (v33)
  {
    if (v164)
    {
      v41 = HIWORD(v159);
      if (HIWORD(v159))
      {
        v42 = 0;
        v43 = *(v33 + 8);
        v44 = v43;
        while ((v44[5] & 0xFFFFFFFE) != 2 || v44[10] != 1)
        {
          v44 += 16;
          if (-HIWORD(v159) == --v42)
          {
            goto LABEL_30;
          }
        }

        v54 = -v42;
        v45 = -v42;
        if (v42)
        {
          v55 = v43[16 * ~v42 + 5];
          v118 = v55 > 0x28;
          v56 = (1 << v55) & 0x10024000100;
          if (!v118 && v56 != 0)
          {
            v58 = v44[8] - v43[8] / *(v164 + 2);
            v25 = a12;
LABEL_54:
            LOWORD(v159) = v58;
            HIWORD(v159) = v45;
            goto LABEL_32;
          }
        }

        if (HIWORD(v159) <= v45)
        {
LABEL_87:
          v25 = a12;
        }

        else
        {
          while (1)
          {
            v81 = v44[5];
            v118 = v81 > 0x28;
            v82 = (1 << v81) & 0x10024000100;
            if (!v118 && v82 != 0)
            {
              break;
            }

            ++v54;
            v44 += 16;
            if (HIWORD(v159) == v54)
            {
              goto LABEL_87;
            }
          }

          if (HIWORD(v159) <= v54)
          {
            v45 = v54;
          }

          else
          {
            v146 = *(v33 + 8);
            v148 = v38;
            v151 = v164;
            do
            {
              v143 = v40;
              IsSentenceBoundary = sparser_marker_IsSentenceBoundary(v44, (*(v40 + 8) + v44[10]));
              v41 = HIWORD(v159);
              if (IsSentenceBoundary)
              {
                break;
              }

              v44 += 16;
              ++v54;
              v40 = v143;
            }

            while (v54 < HIWORD(v159));
            v45 = v54;
            v38 = v148;
            v39 = v151;
            v43 = v146;
          }

          v25 = a12;
          if (v45 < v41)
          {
            LOWORD(v58) = (v43[16 * v45 + 8] - v43[8]) / *(v39 + 2);
            goto LABEL_54;
          }

          v39 = v164;
        }
      }
    }
  }

LABEL_30:
  v26 = (v38)(v165, v39);
  if ((v26 & 0x80000000) != 0)
  {
    return v26;
  }

  v45 = HIWORD(v159);
LABEL_32:
  v152 = v25;
  if (v45 < 2)
  {
    v48 = 0;
    v51 = 1;
  }

  else
  {
    v149 = a8;
    v46 = 0;
    v47 = v155 + 64;
    v48 = 1;
    v49 = v45;
    while (1)
    {
      v50 = *(v47 + 20);
      v51 = v46 + 1;
      if (v50 == 22)
      {
        break;
      }

      if (v50 == 0x4000)
      {
        v52 = v46;
      }

      else
      {
        v52 = v46 + 1;
      }

      ++v48;
      v46 = v52 + 1;
      v47 += 64;
      if (v49 == v48)
      {
        v48 = 0;
        v51 = v49;
        a8 = v149;
        goto LABEL_60;
      }
    }

    HIWORD(v159) = v48;
    *a5 = 1;
    if ((v46 + 1) == v48 && *(v47 + 32) == *(v155 + 32))
    {
      *a6 = 1;
      log_OutText(*(*(a1 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] found immediate voice switch", v30, v31, v32, v145);
      v26 = sparser_SetArgAsParamStr(a1, a2, v47, "pipelineswitchvoice");
      if ((v26 & 0x80000000) != 0)
      {
        return v26;
      }

      HIWORD(v159) = v46 + 2;
    }

    else
    {
      *a6 = 0;
      v51 = v48;
    }

    a8 = v149;
    if (*(v163 + 16) <= v51)
    {
      v53 = *(v164 + 16);
    }

    else
    {
      v53 = (*(v47 + 32) - *(v155 + 32)) / *(v164 + 2);
    }

    if (v53 >= *(v164 + 16))
    {
      v59 = *(v164 + 16);
    }

    else
    {
      v59 = v53;
    }

    LOWORD(v159) = v59;
    log_OutText(*(*(a1 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] found voice switch (marker %d); adjusted text length to %u, set iMEnd to %d, bImmediateVoiceSwitch=%d bEndOnVoiceSwitch=%d", v30, v31, v32, v48);
  }

LABEL_60:
  if (v159 <= 1u)
  {
    v60 = 1;
  }

  else
  {
    v60 = v159;
  }

  v26 = datac_RequestBlock(a2, 1020, v60, &v161);
  if ((v26 & 0x80000000) != 0)
  {
    return v26;
  }

  v26 = datac_RequestBlock(a2, 1021, (HIWORD(v159) + 1), &v160);
  if ((v26 & 0x80000000) != 0)
  {
    return v26;
  }

  cstdlib_memmove(*(v161 + 8), *(v164 + 8), *(v164 + 2) * v159);
  v61 = v159;
  *(v161 + 16) = v159;
  v62 = v164;
  v63 = *(v164 + 16) - v61;
  *(v164 + 16) = v63;
  cstdlib_memmove(*(v62 + 8), (*(v62 + 8) + v61), *(v62 + 2) * v63);
  v64 = v161;
  *a3 = *(v161 + 16);
  if (*a5 == 1 && !*a6)
  {
    v156 = 0;
    v26 = chars_ScanBlankHead(v64, &v156 + 1, v160, &v156, &v157, 0);
    if ((v26 & 0x80000000) != 0)
    {
      return v26;
    }

    if (HIWORD(v156) == *(v161 + 16))
    {
      if (HIWORD(v159) < 2uLL)
      {
LABEL_97:
        *a6 = 1;
        log_OutText(*(*(a1 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] found immediate voice switch, due to blank text", v84, v85, v86, v145);
        v26 = sparser_SetArgAsParamStr(a1, a2, v155 + (v48 << 6), "pipelineswitchvoice");
        if ((v26 & 0x80000000) != 0)
        {
          return v26;
        }

        HIWORD(v159) = v51 + 1;
      }

      else
      {
        v87 = (v155 + 84);
        v88 = 1;
        while (1)
        {
          v89 = *v87;
          v87 += 16;
          v90 = (1 << v89) & 0x1080200084;
          if (v89 > 0x24 || v90 == 0)
          {
            break;
          }

          if (++v88 >= HIWORD(v159))
          {
            goto LABEL_97;
          }
        }

        log_OutText(*(*(a1 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] blank text, but non-eos marker found - continue with sentence", v84, v85, v86, v145);
        HIWORD(v159) = v51;
        *a5 = 0;
      }
    }
  }

  cstdlib_memmove(*(v160 + 8), *(v163 + 8), HIWORD(v159) << 6);
  v68 = v160;
  v69 = HIWORD(v159);
  if (HIWORD(v159))
  {
    v70 = a8;
    v71 = 0;
    v72 = v155;
    v73 = (v155 + 48);
    v74 = (*(v160 + 8) + 48);
    while (1)
    {
      if (*v73)
      {
        v75 = cstdlib_strlen(*v73);
        if (v75)
        {
          v76 = heap_Calloc(*(*(a1 + 16) + 8), 1, (v75 + 1));
          *v74 = v76;
          if (!v76)
          {
            return 2369789962;
          }

          cstdlib_strcpy(v76, *v73);
          heap_Free(*(*(a1 + 16) + 8), *v73);
          *v73 = 0;
        }
      }

      ++v71;
      v69 = HIWORD(v159);
      v73 += 8;
      v74 += 8;
      if (v71 >= HIWORD(v159))
      {
        v68 = v160;
        a8 = v70;
        goto LABEL_76;
      }
    }
  }

  v72 = v155;
LABEL_76:
  *(v68 + 16) = v69;
  v77 = &v72[16 * v69];
  v78 = v164;
  if (*(v164 + 20))
  {
    v79 = v163;
    if (*(v164 + 16))
    {
      v80 = 0;
    }

    else
    {
      v80 = *(v163 + 20);
      if (v80)
      {
        v80 = *(v163 + 16) == v69;
      }
    }
  }

  else
  {
    v80 = 0;
    v79 = v163;
  }

  v92 = v77[6];
  *(v161 + 20) = v80;
  *(v68 + 20) = v80;
  if (v69 >= *(v79 + 16))
  {
    v93 = *(v78 + 2) * v159;
    v94 = v72[8] + v93;
  }

  else
  {
    v93 = *(v78 + 2) * v159;
    v94 = v93 + v72[8];
    v95 = v77[8];
    if (v94 >= v95)
    {
      v147 = 0;
      v72[6] = v92;
      v72[8] = v95;
      goto LABEL_106;
    }
  }

  v72[6] += v93;
  v72[8] = v94;
  v147 = 1;
LABEL_106:
  v150 = v92;
  if (v69 < 2)
  {
    v98 = 1;
  }

  else
  {
    v96 = v72 + 21;
    v97 = 1;
    v98 = 1;
    do
    {
      if (*v96 != 2)
      {
        *v153 += v96[2];
        if (*v96 <= 0x24 && ((1 << *v96) & 0x1080200080) != 0)
        {
          ArgOfLastOfType = sparser_marker_GetArgOfLastOfType(v155, v97, v69, 1);
          if (!sparser_marker_IsReadOutControlDefaultArg(*v96, ArgOfLastOfType, v154, *(a1 + 180)))
          {
            v101 = v155 + (v98 << 6);
            v102 = *(v155 + 24);
            *(v101 + 20) = *v96;
            *(v101 + 24) = v102;
            v103 = *(v155 + 32);
            *(v101 + 28) = 0;
            *(v101 + 32) = v103;
            *(v101 + 40) = ArgOfLastOfType;
            *v101 = 1;
            ++v98;
          }
        }
      }

      ++v97;
      v69 = HIWORD(v159);
      v96 += 16;
    }

    while (v97 < HIWORD(v159));
  }

  if (v69 <= v98)
  {
    v107 = v152;
    v106 = v150;
  }

  else
  {
    v104 = v163;
    v105 = *(v163 + 16) + v98 - v69;
    *(v163 + 16) = v105;
    v106 = v150;
    if (v105 >= 2u)
    {
      cstdlib_memmove((*(v104 + 8) + (v98 << 6)), (*(v104 + 8) + (v69 << 6)), (v105 - v98) << 6);
      LOWORD(v69) = HIWORD(v159);
    }

    v107 = v152;
  }

  v108 = *(v160 + 8);
  v109 = v69 - 1;
  if ((v69 - 1) >= 2u)
  {
    v109 = v69 - 1;
    v110 = &v108[16 * (v69 - 1)];
    while (*v110 == 1 || !*v110 && v110[5] == 0x4000)
    {
      --v109;
      v110 -= 16;
      if ((v109 & 0xFFFE) == 0)
      {
        v109 = 1;
        break;
      }
    }
  }

  log_OutText(*(*(a1 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] end marker is pMrk[%d] (iMEnd=%d)", v65, v66, v67, v109);
  v111 = HIWORD(v159);
  if (HIWORD(v159))
  {
    v112 = v108;
    do
    {
      v113 = *v112;
      v112 += 16;
      if (!v113)
      {
        ++*a11;
      }

      --v111;
    }

    while (v111);
  }

  v114 = v108[6];
  v115 = v106 - v114;
  v116 = *(v164 + 2) * v159;
  v117 = v108[8] - v114 + v108[16 * v109 + 6] + v108[16 * v109 + 7] + v116 - (v108[16 * v109 + 8] + v108[16 * v109 + 9]);
  if (v106 - v114 < 0 && v117 < 0)
  {
    v27 = *(v165 + 32);
    v28 = 1902;
    goto LABEL_8;
  }

  v118 = v106 != v114 && v117 < 0;
  if (!v118)
  {
    v115 = v108[8] - v114 + v108[16 * v109 + 6] + v108[16 * v109 + 7] + v116 - (v108[16 * v109 + 8] + v108[16 * v109 + 9]);
  }

  v108[7] = v115;
  v108[9] = v116;
  LOWORD(v159) = 0;
  v119 = v160;
  v120 = *(v160 + 16);
  if (v120)
  {
    v121 = 0;
    v122 = v108 + 5;
    while (1)
    {
      v123 = v122 - 5;
      if (*v122 == 3)
      {
        if (!v122[5] || v122[3] - v108[8] < v108[9])
        {
LABEL_150:
          v124 = v159;
          v125 = &v108[16 * v159];
          v126 = *(v122 + 3);
          v127 = *(v122 + 7);
          v128 = *(v122 - 1);
          *v125 = *v123;
          *(v125 + 1) = v128;
          *(v125 + 2) = v126;
          *(v125 + 3) = v127;
          v129 = v125[5];
          if (v129 == 3 && !v125[10] || *v122 == 3 && v122[3] - v108[8] < v108[9])
          {
            v125[5] = 999;
            v125[10] = 0;
          }

          else if (v129 == 3)
          {
            v125[5] = 2;
          }

          LOWORD(v159) = v124 + 1;
        }
      }

      else if ((*v122 & 0xFFFFFFFE) != 2)
      {
        goto LABEL_150;
      }

      if (v122[3] <= v108[8] && *v122 != 0x4000 && !*v123)
      {
        *a8 += v122[2];
        log_OutText(*(*(a1 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] [2] add pMrk[%d].lenRef (tag=%d) to posRefOffset(%d) %d,%d %d,%d", v22, v23, v24, v121);
      }

      ++v121;
      v119 = v160;
      v122 += 16;
      if (v121 >= *(v160 + 16))
      {
        v120 = v159;
        v107 = v152;
        break;
      }
    }
  }

  *(v119 + 16) = v120;
  v26 = sparser_TrimBlankHead(a1, a2, a8, v107, &v158, a9, a10);
  if ((v26 & 0x80000000) != 0)
  {
    return v26;
  }

  v26 = datac_RequestBlock(a2, 1021, 1u, &v160);
  if ((v26 & 0x80000000) != 0)
  {
    return v26;
  }

  v130 = *(v160 + 8);
  v131 = *(v130 + 24);
  v132 = *(v130 + 28);
  v26 = datac_RequestBlock(a2, 1011, 1u, &v163);
  if ((v26 & 0x80000000) != 0)
  {
    return v26;
  }

  if (!v147)
  {
    return 0;
  }

  v133 = v163;
  v134 = *(v163 + 8);
  v134[6] = v132 + v131;
  v135 = *(v133 + 16);
  if (v135 < 2)
  {
    return 0;
  }

  v136 = v134[8];
  v137 = v134 + 24;
  v138 = v135 - 1;
  do
  {
    if (*v137 == v136)
    {
      v139 = *(v137 - 3);
      v118 = v139 > 0x24;
      v140 = (1 << v139) & 0x1080200080;
      if (!v118 && v140 != 0)
      {
        *(v137 - 2) = v132 + v131;
      }
    }

    v12 = 0;
    v137 += 16;
    --v138;
  }

  while (v138);
  return v12;
}

uint64_t sparser_GetCharacterLength(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int16 *a5, _WORD *a6)
{
  if (*a5 >= *(a2 + 16))
  {
    LOWORD(v12) = *(a3 + 16);
  }

  else
  {
    v10 = *(a3 + 8);
    v11 = *a5 + utf8_determineUTF8CharLength(*(*(a2 + 8) + *a5));
    *a5 = v11;
    v12 = *a6;
    v13 = *(a3 + 16);
    if (v12 < v13)
    {
      v14 = *(v10 + 32) + *(a2 + 2) * v11;
      v15 = (v10 + 32 + (v12 << 6));
      while (1)
      {
        v16 = *v15;
        v15 += 16;
        if (v16 >= v14)
        {
          break;
        }

        if (v13 == ++v12)
        {
          LOWORD(v12) = *(a3 + 16);
          break;
        }
      }
    }
  }

  *a6 = v12;
  return 0;
}

uint64_t sparser_GetWordLength(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int16 *a5, unsigned __int16 *a6)
{
  v11 = *(a3 + 8);
  v39 = 0;
  v12 = *a5;
  chars_ScanNonBlanks(*(a2 + 8), a5, *(a2 + 16));
  sparser_getMaxCharsPerText(a1, &v39);
  v13 = Utf8_LengthInUtf8chars(*(a2 + 8), *a5);
  v18 = v39;
  if (v39 >= v13)
  {
    v20 = *a5;
  }

  else
  {
    log_OutPublic(*(a1 + 32), &modPP_1, 1814, 0, v14, v15, v16, v17, v37);
    *a5 = v18;
    v38 = v18;
    utf8_GetPreviousValidUtf8Offset(*(a2 + 8), &v38);
    if (v38)
    {
      --v38;
    }

    utf8_GetPreviousValidUtf8Offset(*(a2 + 8), &v38);
    v19 = v38;
    *a5 = v38;
    v20 = utf8_determineUTF8CharLength(*(*(a2 + 8) + v19));
    *a5 = v20;
    if (*(a2 + 16) > v20 && v18 >= 2)
    {
      v22 = 1;
      do
      {
        v20 = *a5 + utf8_determineUTF8CharLength(*(*(a2 + 8) + v20));
        *a5 = v20;
        ++v22;
      }

      while (*(a2 + 16) > v20 && v22 < v18);
    }
  }

  v24 = *(a3 + 16);
  if (v12 == v20)
  {
LABEL_18:
    v25 = v24;
  }

  else
  {
    if (*(a3 + 16))
    {
      v26 = 0;
      v27 = 0;
      v25 = 0;
      v28 = (v11 + 40);
      do
      {
        if (v27 || *(v28 - 2) - *(v11 + 32) >= v20)
        {
          break;
        }

        if (*(v28 - 5) == 7)
        {
          v27 = *v28 == 43;
          if (*v28 == 43)
          {
            v25 = v26;
          }
        }

        else
        {
          v27 = 0;
        }

        ++v26;
        v28 += 16;
      }

      while (v24 != v26);
      if (v27)
      {
        v29 = v11 + (v25 << 6);
        v30 = *(v11 + 32);
        if (*(v29 + 32) != v30 || *(v29 + 20) != 7)
        {
          *a5 = *(v29 + 32) - v30;
          goto LABEL_42;
        }

        while (1)
        {
          v31 = v25++;
          if (v24 <= v25)
          {
            break;
          }

          v32 = v11 + (v25 << 6);
          if (*(v32 + 20) == 7)
          {
            *a5 = *(v32 + 32) - v30;
            *a6 = v31 + 2;
            LODWORD(v24) = *(a3 + 16);
            break;
          }
        }
      }
    }

    v33 = *a6;
    v25 = *a6;
    if (v33 < v24)
    {
      v34 = (v11 + 32 + (v33 << 6));
      while (1)
      {
        v35 = *v34;
        v34 += 16;
        if (v35 >= *(v11 + 32) + *(a2 + 2) * *a5)
        {
          break;
        }

        if (v24 == ++v33)
        {
          goto LABEL_18;
        }
      }

      v25 = v33;
    }
  }

LABEL_42:
  *a6 = v25;
  return 0;
}

uint64_t sparser_GetLineLength(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int16 *a5, _WORD *a6)
{
  v12 = *(a3 + 8);
  v38 = 0;
  v13 = *a5;
  chars_ScanForLineEnd(*(a2 + 8), a5, *(a2 + 16));
  sparser_getMaxCharsPerText(a1, &v38);
  v14 = Utf8_LengthInUtf8chars(*(a2 + 8), *a5);
  v15 = v38;
  if (v38 < v14)
  {
    v36 = a6;
    *a5 = v38;
    v16 = v15;
    if (v15 == *(a2 + 16))
    {
      *a5 = v15 - 1;
      v16 = (v15 - 1);
    }

    v37 = v16;
    utf8_GetPreviousValidUtf8Offset(*(a2 + 8), &v37);
    v17 = v37;
    *a5 = v37;
    v18 = Utf8_LengthInUtf8chars(*(a2 + 8), v17);
    v19 = *a5;
    if (v19 < *(a2 + 16))
    {
      for (i = v18; v15 > i; ++i)
      {
        LOWORD(v19) = *a5 + utf8_determineUTF8CharLength(*(*(a2 + 8) + v19));
        *a5 = v19;
        if (*(a2 + 16) <= v19)
        {
          break;
        }
      }
    }

    chars_BackScanToBlank(*(a2 + 8), a5);
    v25 = *a5;
    if (!*a5)
    {
      *a5 = v19;
      v25 = v19;
    }

    a6 = v36;
    if (*(a3 + 16))
    {
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = (v12 + 40);
      do
      {
        if (*(v29 - 2) - *(v12 + 32) > v25)
        {
          break;
        }

        if (*(v29 - 5) == 7)
        {
          v27 = !v27;
          if (*v29 == 43)
          {
            v28 = v26;
          }

          else
          {
            v27 = 0;
          }
        }

        ++v26;
        v29 += 16;
      }

      while (*(a3 + 16) != v26);
      if (v27)
      {
        *a5 = *(v12 + (v28 << 6) + 32) - *(v12 + 32);
      }
    }

    log_OutPublic(*(a1 + 32), &modPP_1, 1815, 0, v21, v22, v23, v24, v36);
  }

  if (v13 == *a5)
  {
    LOWORD(v30) = *(a3 + 16);
  }

  else
  {
    v30 = *a6;
    if (v30 < *(a3 + 16))
    {
      v31 = (v12 + (v30 << 6));
      do
      {
        v32 = v31[8];
        v33 = *(v12 + 32);
        v34 = *(a2 + 2) * *a5;
        if (v32 >= v34 + v33)
        {
          break;
        }

        if (v34 >= (v32 - v33) && sparser_marker_IsSentenceBoundary(v31, (*(a4 + 8) + v31[10])) && ((v31[5] & 0xFFFFFFFE) != 2 || v31[10] != 1) && v31[8] != *(v12 + 32))
        {
          *a5 = (*(v31 + 16) - *(v12 + 32)) / *(a2 + 2);
          break;
        }

        ++v30;
        v31 += 16;
      }

      while (v30 < *(a3 + 16));
    }
  }

  *a6 = v30;
  return 0;
}

uint64_t sparser_GetSentenceLength(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _WORD *a5, _WORD *a6)
{
  v11 = *(a3 + 8);
  v12 = *a6;
  v13 = *(a3 + 16);
  if (v12 < v13)
  {
    v14 = v11 + (v12 << 6);
    do
    {
      if (*(a2 + 2) * *a5 < (*(v14 + 32) - *(v11 + 32)))
      {
        IsSentenceBoundary = sparser_marker_IsSentenceBoundary(v14, (*(a4 + 8) + *(v14 + 40)));
        v13 = *(a3 + 16);
        if (IsSentenceBoundary)
        {
          break;
        }
      }

      ++v12;
      v14 += 64;
    }

    while (v12 < v13);
    LODWORD(v12) = v12;
  }

  if (v12 < v13)
  {
    v12 = v12;
    v16 = v11 + (v12 << 6);
    do
    {
      if (*(a2 + 2) * *a5 < (*(v16 + 32) - *(v11 + 32)))
      {
        if (sparser_marker_IsSentenceBoundary(v16, (*(a4 + 8) + *(v16 + 40))))
        {
          IsSuppressedSentenceBoundary = sparser_IsSuppressedSentenceBoundary(a3, a2, *(v16 + 32) - *(v11 + 32));
          v13 = *(a3 + 16);
          if (!IsSuppressedSentenceBoundary)
          {
            break;
          }
        }

        else
        {
          v13 = *(a3 + 16);
        }
      }

      ++v12;
      v16 += 64;
    }

    while (v12 < v13);
    LODWORD(v12) = v12;
  }

  if (v12 >= v13)
  {
    v18 = *(a2 + 16);
  }

  else
  {
    v18 = (*(v11 + (v12 << 6) + 32) - *(v11 + 32)) / *(a2 + 2);
  }

  *a5 = v18;
  *a6 = v12;
  return 0;
}

uint64_t sparser_SetArgAsParamStr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = 2369789959;
  v15 = 0;
  v16 = 0;
  if ((InitRsrcFunction(*a1, *(a1 + 8), &v16) & 0x80000000) == 0 && (datac_RequestBlock(a2, 1012, 1u, &v15) & 0x80000000) == 0)
  {
    v8 = cstdlib_strlen((*(v15 + 8) + *(a3 + 40)));
    v9 = heap_Calloc(*(v16 + 8), 1, v8 + 1);
    if (v9)
    {
      v10 = v9;
      cstdlib_strncpy(v9, (*(v15 + 8) + *(a3 + 40)), v8);
      v10[v8] = 0;
      v7 = paramc_ParamSetStr(*(v16 + 40), a4, v10);
      if ((v7 & 0x80000000) == 0)
      {
        log_OutText(*(v16 + 32), &modPP_1, 4, 0, "[SPARSER] SET PARAM marker:%d param=%s val=%s", v11, v12, v13, *(a3 + 20));
      }

      heap_Free(*(v16 + 8), v10);
    }

    else
    {
      return 2369789962;
    }
  }

  return v7;
}

unint64_t sparser_marker_GetArgOfLastOfType(uint64_t a1, unsigned int a2, unsigned int a3, int a4)
{
  v5 = a1 + (a2 << 6);
  v6 = *(v5 + 20);
  result = *(v5 + 40);
  if (v6 == 7)
  {
    v8 = result == 43;
    if (a3 > (a2 + 1))
    {
      v9 = result == 43;
      v10 = (a1 + ((a2 + 1) << 6) + 20);
      v11 = (a2 + 1) + 1;
      do
      {
        if (*v10 == 7)
        {
          v12 = v10[5];
          v13 = !v9;
          if (v9)
          {
            v14 = result & 0xFFFFFFFF00000000 | 0xF;
          }

          else
          {
            v14 = result;
          }

          v15 = v13;
          if (v12 == 43)
          {
            result = v14;
          }

          else
          {
            result = result & 0xFFFFFFFF00000000 | v12;
          }

          if (v12 == 43)
          {
            v9 = v15;
          }

          else
          {
            v9 = 0;
          }

          if (a4 == 1)
          {
            *v10 = 999;
          }
        }

        v10 += 16;
        v13 = a3 == v11++;
      }

      while (!v13);
      v8 = v9;
    }

    if (v8)
    {
      return result & 0xFFFFFFFF00000000 | 0xF;
    }
  }

  else if (a3 > (a2 + 1))
  {
    v16 = (a2 + 1);
    v17 = a1 + (v16 << 6) + 20;
    v18 = v16 + 1;
    do
    {
      if (*v17 == v6)
      {
        result = *(v17 + 20);
        if (a4 == 1)
        {
          *v17 = 999;
        }
      }

      v17 += 64;
      v13 = a3 == v18++;
    }

    while (!v13);
  }

  return result;
}

BOOL sparser_marker_IsReadOutControlDefaultArg(int a1, unsigned int a2, uint64_t a3, int a4)
{
  result = 0;
  if (a1 > 30)
  {
    if (a1 != 31)
    {
      if (a1 != 36)
      {
        return result;
      }

      goto LABEL_7;
    }

    return a2 == a4;
  }

  else
  {
    if (a1 != 7)
    {
      if (a1 != 21)
      {
        return result;
      }

LABEL_7:
      v10 = v4;
      v11 = v5;
      strcpy(__s2, "normal");
      return a3 && cstdlib_strcmp((a3 + a2), __s2) == 0;
    }

    return a2 == 15;
  }
}

uint64_t sparser_TrimBlankHead(uint64_t a1, uint64_t a2, _DWORD *a3, _WORD *a4, _WORD *a5, _DWORD *a6, _DWORD *a7)
{
  v9 = a5;
  v120 = 0;
  v121 = 0;
  v118 = 0u;
  v119 = 0u;
  v116 = 0u;
  v117 = 0u;
  v114 = 0;
  v115 = 0;
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  a7[5] = 0;
  result = datac_RequestBlock(a2, 1020, 1u, &v121);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  result = datac_RequestBlock(a2, 1021, 1u, &v120);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  result = chars_ScanBlankHead(v121, &v115 + 1, v120, &v115, &v114, 0);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  result = datac_RequestBlock(a2, 1021, 1u, &v120);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v18 = *(v120 + 8);
  log_OutText(*(*(a1 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] got %d (byte) blanks, but do they bisect markers?", v15, v16, v17, *(v121 + 2) * HIWORD(v115));
  if (v114)
  {
    v19 = 1;
  }

  else
  {
    v113 = a1;
    v20 = 0;
    v21 = v18 + 24;
    v22 = v18[8];
    v23 = (v18 + 8);
    v24 = (v18 + 21);
    v25 = v120;
    LODWORD(v26) = 1;
    do
    {
      v27 = *(v25 + 16);
      if (v27 <= v20)
      {
        break;
      }

      v28 = v20 + 2;
      v29 = &v21[16 * v20];
      while (1)
      {
        v30 = v20;
        v31 = &v18[16 * v20];
        v32 = v31[5];
        v33 = v32 > 0x24 || ((1 << v32) & 0x1080300080) == 0;
        if (!v33 && !*v31)
        {
          v34 = v31[8];
          v35 = v18[8];
          v36 = *(v121 + 2);
          v37 = v36 * HIWORD(v115) + v35;
          if (v34 < v37)
          {
            break;
          }
        }

        ++v20;
        ++v28;
        v29 += 16;
        if (v27 <= v20)
        {
          goto LABEL_57;
        }
      }

      if (v27 <= (v20 + 1))
      {
        v111 = v20;
      }

      else
      {
        LOWORD(v30) = v20;
        do
        {
          v38 = *(v29 - 3);
          if (v38 <= 0x24 && ((1 << v38) & 0x1080300080) != 0)
          {
            v40 = v38 == v32 && *(v29 - 8) == 0;
            if (v40 && *v29 < v37)
            {
              LOWORD(v30) = v28 - 1;
            }
          }

          v33 = v27 == v28++;
          v29 += 16;
        }

        while (!v33);
        v111 = v30;
        v30 = v30;
        v34 = v18[16 * v30 + 8];
      }

      if (v34 < v35 || (v34 - v35) / v36 >= HIWORD(v115))
      {
        if (v31[6] - v18[6] == v36 * HIWORD(v115))
        {
          v110 = v21;
          v108 = v22;
          v104 = v24;
          v106 = v23;
          log_OutText(*(*(v113 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] reset to reference region at marker %d", v22, v23, v24, v20);
          v24 = v104;
          v23 = v106;
          v22 = v108;
          v21 = v110;
          LODWORD(v26) = 0;
          v60 = *(v121 + 2) * HIWORD(v115);
          v61 = v18[7] - v60;
          v18[6] += v60;
          v18[7] = v61;
          LOWORD(v115) = v20;
          v25 = v120;
        }
      }

      else
      {
        v103 = v24;
        v105 = v23;
        v107 = v22;
        v102 = v9;
        v112 = &v18[16 * v30];
        LOWORD(v115) = v111;
        v109 = v21;
        cstdlib_memcpy(a7, v112, 0x40uLL);
        log_OutText(*(*(v113 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] hard reference reset at marker %d", v41, v42, v43, v111);
        log_OutText(*(*(v113 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] reset to reference region at marker %d", v44, v45, v46, v111);
        v47 = (v112[6] - v18[6]);
        *a6 = v47;
        log_OutText(*(*(v113 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] set refReset(%d) due to readout control marker %d", v48, v49, v50, v47);
        v51 = v112[6];
        v52 = v18[7] - v51 + v18[6];
        v18[6] = v51;
        v18[7] = v52;
        v53 = v112[7] + (HIWORD(v115) - (v112[8] - v18[8]) / *(v121 + 2)) * *(v121 + 2);
        *a3 = v53;
        log_OutText(*(*(v113 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] set posRefOffset(%d) due to readout control marker %d", v54, v55, v56, v53);
        v25 = v120;
        if (*(v120 + 16) <= (v111 + 1))
        {
          v21 = v109;
          v22 = v107;
          v24 = v103;
          v23 = v105;
        }

        else
        {
          v57 = (v111 + 1);
          v24 = v103;
          v23 = v105;
          v58 = (v105 + (v57 << 6));
          v21 = v109;
          v22 = v107;
          do
          {
            if ((*(v58 - 3) == 999 || !*(v58 - 8)) && *v58 <= v22 + *(v121 + 2) * HIWORD(v115) && *(v58 - 2) >= v112[6])
            {
              v59 = (*a3 + *(v58 - 1));
              *a3 = v59;
              log_OutText(*(*(v113 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] set posRefOffset(%d) due to marker %d", v22, v23, v24, v59);
              v24 = v103;
              v23 = v105;
              v22 = v107;
              v21 = v109;
              v25 = v120;
            }

            ++v57;
            v58 += 16;
          }

          while (v57 < *(v25 + 16));
        }

        if (v111 < 2u)
        {
          LODWORD(v26) = 0;
          v9 = v102;
        }

        else
        {
          v26 = v30 - 1;
          v62 = v24;
          v9 = v102;
          do
          {
            if (*v62 == 999)
            {
              *v62 = 0x4000;
            }

            v62 += 16;
            --v26;
          }

          while (v26);
        }
      }

      v20 = *(v25 + 16) + 1;
    }

    while (!v114);
LABEL_57:
    v19 = v26 == 1;
    a1 = v113;
  }

  v63 = HIWORD(v115);
  if (!HIWORD(v115) && !a7[5])
  {
    return 0;
  }

  v64 = v121;
  v65 = *(v121 + 16) - HIWORD(v115);
  *(v121 + 16) = v65;
  cstdlib_memmove(*(v64 + 8), (*(v64 + 8) + v63), *(v64 + 2) * v65);
  result = datac_RequestBlock(a2, 1021, (*(v120 + 16) + 1), &v120);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v66 = a1;
  v67 = v120;
  v68 = *(v120 + 8);
  v69 = v115;
  if (v115 == 1)
  {
    v70 = v68[1];
    v116 = *v68;
    v117 = v70;
    v71 = v68[3];
    v118 = v68[2];
    v119 = v71;
    *(v68 + 7) = 0;
    *(v68 + 9) = 0;
  }

  v72 = *(v68 + 8);
  v73 = *(v68 + 6);
  v74 = v72 - v73 + *(&v68[4 * v69 - 2] - 2) + *(&v68[4 * v69 - 2] - 1) + *(v121 + 2) * HIWORD(v115) - (LODWORD(v68[4 * v69 - 2]) + *(&v68[4 * v69 - 1] - 3));
  if (v69 == 1)
  {
    v75 = v117;
    *v68 = v116;
    v68[1] = v75;
    v76 = v119;
    v68[2] = v118;
    v68[3] = v76;
  }

  v77 = *(v67 + 16);
  if (v77 < 2)
  {
    LOWORD(i) = 1;
  }

  else
  {
    v78 = v68 + 25;
    for (i = 1; i < v77; ++i)
    {
      if (v72 != *(v78 - 1))
      {
        break;
      }

      if (*v78)
      {
        break;
      }

      if (v73 != *(v78 - 3))
      {
        break;
      }

      if (v74 <= *(v78 - 2))
      {
        break;
      }

      v78 += 16;
    }
  }

  LOWORD(v115) = i;
  cstdlib_memmove(&v68[4 * i + 4], &v68[4 * i], (v77 - i) << 6);
  v83 = &v68[4 * v115];
  *(v83 + 1) = 0;
  *(v83 + 2) = 0x400000000000;
  *v83 = 0;
  *(v83 + 6) = v73;
  *(v83 + 7) = v74;
  *(v83 + 8) = v72;
  *(v83 + 36) = 0;
  *(v83 + 52) = 0;
  *(v83 + 44) = 0;
  *(v83 + 15) = 0;
  v84 = v120;
  v85 = v121;
  ++*(v120 + 16);
  v86 = HIWORD(v115);
  *a4 = *(v85 + 2) * HIWORD(v115);
  if (v19)
  {
    log_OutText(*(*(v66 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] add blanks (%d) to posRefOffset(%d)", v80, v81, v82, *(v85 + 2) * v86);
    v86 = HIWORD(v115);
    v85 = v121;
    *a3 += *(v121 + 2) * HIWORD(v115);
    v84 = v120;
  }

  if (a7[5])
  {
    v87 = *(v84 + 16);
  }

  else
  {
    LOWORD(v115) = 1;
    if (*(v84 + 16) < 2u)
    {
      goto LABEL_94;
    }

    v88 = 1;
    do
    {
      v89 = &v68[4 * v88];
      v90 = *(v89 + 8);
      v91 = *(v68 + 8);
      if (v90 > v91 && v90 <= v91 + *(v121 + 2) * HIWORD(v115) && *(v89 + 5) != 0x4000 && !*v89)
      {
        log_OutText(*(*(v66 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] adjust posRefOffset(%d) by %d for leading esc sequences (marker tag=%d %d,%d,%d,%d)", v80, v81, v82, *a3);
        v88 = v115;
        v92 = &v68[4 * v115];
        *a3 += *(v92 + 7);
        *v9 += *(v92 + 14);
        v84 = v120;
      }

      LOWORD(v115) = ++v88;
      v87 = *(v84 + 16);
    }

    while (v87 > v88);
    v86 = HIWORD(v115);
    v85 = v121;
  }

  if (v87 > 1)
  {
    v93 = *(v85 + 2) * v86;
    v94 = v87;
    v95 = *(v68 + 8);
    v96 = v68 + 6;
    v97 = v94 - 1;
    do
    {
      if (*v96 >= v93 + v95)
      {
        v98 = *v96 - v93;
      }

      else
      {
        v98 = v95;
      }

      *v96 = v98;
      v96 += 16;
      --v97;
    }

    while (v97);
    goto LABEL_95;
  }

LABEL_94:
  v93 = *(v85 + 2) * v86;
LABEL_95:
  result = 0;
  v99 = *(v68 + 9);
  v100 = v99 >= v93;
  v101 = v99 - v93;
  if (!v100)
  {
    v101 = 0;
  }

  *(v68 + 9) = v101;
  return result;
}

uint64_t sparser_SetReadoutMarkersAsParameters(uint64_t a1, uint64_t a2)
{
  v37[2] = *MEMORY[0x277D85DE8];
  v4 = 2369789959;
  v35 = 0;
  v36 = 0;
  v37[0] = 0;
  v37[1] = 0;
  if ((InitRsrcFunction(*a1, *(a1 + 8), &v36) & 0x80000000) != 0 || (datac_RequestBlock(a2, 1012, 1u, &v35) & 0x80000000) != 0)
  {
    return v4;
  }

  v34 = *(v35 + 8);
  v5 = datac_RequestBlock(a2, 1021, 1u, &v35);
  if ((v5 & 0x80000000) != 0)
  {
    return v5;
  }

  v6 = v35;
  LODWORD(v7) = *(v35 + 16);
  if (v7 < 2)
  {
LABEL_32:
    v31 = 0;
    v4 = v5;
    for (i = &off_279DADB98; ; i += 2)
    {
      if (!*(v37 + v31))
      {
        v19 = paramc_ParamRemove(*(v36 + 40), *i);
        v4 = 0;
        if ((v19 & 0x80000000) != 0 && (v19 & 0x1FFF) != 0x14)
        {
          break;
        }
      }

      v31 += 4;
      if (v31 == 16)
      {
        return v4;
      }
    }

    return v19;
  }

  v8 = *(v35 + 8);
  v9 = 1;
  while (1)
  {
    v10 = v8 + (v9 << 6);
    v13 = *(v10 + 20);
    v12 = (v10 + 20);
    v11 = v13;
    v14 = (1 << v13) & 0x1080200080;
    if (v13 > 0x24 || v14 == 0)
    {
      goto LABEL_31;
    }

    v16 = 0;
    v17 = &off_279DADB98;
    while (*(v17 - 2) != v11)
    {
      v16 += 4;
      v17 += 2;
      if (v16 == 16)
      {
        goto LABEL_31;
      }
    }

    if (*(v37 + v16))
    {
      goto LABEL_31;
    }

    ArgOfLastOfType = sparser_marker_GetArgOfLastOfType(v8, v9, v7, 0);
    if (sparser_marker_IsReadOutControlDefaultArg(*v12, ArgOfLastOfType, v34, *(a1 + 180)))
    {
      v19 = paramc_ParamRemove(*(v36 + 40), *v17);
      v5 = 0;
      if ((v19 & 0x80000000) != 0 && (v19 & 0x1FFF) != 0x14)
      {
        return v19;
      }

      goto LABEL_30;
    }

    v20 = *v12;
    if (*v12 <= 30)
    {
      break;
    }

    if (v20 == 36)
    {
      goto LABEL_27;
    }

    if (v20 == 31)
    {
LABEL_25:
      v5 = paramc_ParamSetUInt(*(v36 + 40), *v17, ArgOfLastOfType);
      if ((v5 & 0x80000000) != 0)
      {
        return v5;
      }

      log_OutText(*(v36 + 32), &modPP_1, 4, 0, "[SPARSER] SET PARAM marker:%d param=%s val=%u", v21, v22, v23, v11);
    }

LABEL_30:
    *(v37 + v16) = 1;
    v6 = v35;
LABEL_31:
    ++v9;
    v7 = *(v6 + 16);
    if (v9 >= v7)
    {
      goto LABEL_32;
    }
  }

  if (v20 == 7)
  {
    goto LABEL_25;
  }

  if (v20 != 21)
  {
    goto LABEL_30;
  }

LABEL_27:
  v24 = (v34 + ArgOfLastOfType);
  v25 = cstdlib_strlen(v24);
  v26 = heap_Calloc(*(v36 + 8), 1, v25 + 1);
  if (!v26)
  {
    return 2369789962;
  }

  v27 = v26;
  cstdlib_strncpy(v26, v24, v25);
  v27[v25] = 0;
  v5 = paramc_ParamSetStr(*(v36 + 40), *v17, v27);
  if ((v5 & 0x80000000) == 0)
  {
    log_OutText(*(v36 + 32), &modPP_1, 4, 0, "[SPARSER] SET PARAM marker:%d param=%s val=%s", v28, v29, v30, v11);
    heap_Free(*(v36 + 8), v27);
    goto LABEL_30;
  }

  heap_Free(*(v36 + 8), v27);
  return v5;
}

uint64_t sparser_ProcessStart(uint64_t a1, int a2)
{
  v12 = 0;
  v11 = 0;
  if ((InitRsrcFunction(*a1, *(a1 + 8), &v12) & 0x80000000) != 0)
  {
    return 2369789959;
  }

  *(a1 + 168) = 0;
  *(a1 + 180) = a2;
  *(a1 + 184) = 200;
  UInt = paramc_ParamGetUInt(*(v12 + 40), "ppmaxmarkersinemptytext", &v11);
  result = 0;
  if ((UInt & 0x1FFF) != 0x14)
  {
    if ((UInt & 0x80000000) == 0)
    {
      if (v11 - 1 > 0xFFFD)
      {
        log_OutPublic(*(v12 + 32), &modPP_1, 1820, 0, v4, v5, v6, v7, v10);
      }

      else
      {
        *(a1 + 184) = v11;
      }
    }

    return UInt;
  }

  return result;
}

uint64_t sparser_NoteBlockRead(_DWORD *a1)
{
  v1 = a1[43];
  if (v1 < a1[42] && v1 > a1[44])
  {
    a1[42] = v1;
    a1[44] = v1;
  }

  return 0;
}

uint64_t sparser_bed_MapPosCur(uint64_t a1, unsigned int a2, unsigned int *a3)
{
  v15 = 0;
  if (!a3)
  {
    return 2369789959;
  }

  v14 = 0;
  *a3 = a2;
  LODWORD(result) = bed_GetpElem(a1, 0, &v15);
  if ((result & 0x80000000) != 0)
  {
    if ((result & 0x1FFF) == 0xF)
    {
      return 0;
    }

    else
    {
      return result;
    }
  }

  else
  {
    result = bed_GetcElem(a1, &v14);
    if ((result & 0x80000000) == 0)
    {
      if (!v14)
      {
        return 0;
      }

      v7 = 0;
      v8 = 0;
      do
      {
        v9 = (v15 + (v7 << 6));
        v10 = v9[8];
        if (v10 > a2)
        {
          break;
        }

        v11 = *v9 == 1 && v7 == 0;
        if (v11 || *v9 == 0)
        {
          v13 = v9[9] + v10;
          if (v13 <= a2 && (!v8 || v8[9] + v8[8] <= v13))
          {
            v8 = (v15 + (v7 << 6));
          }
        }

        ++v7;
      }

      while (v7 < v14);
      if (v8)
      {
        result = 0;
        *a3 += v8[7] + v8[6] - (v8[8] + v8[9]);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL sparser_marker_HasGreaterEqualPosCur(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      return *(a1 + 32) <= *(a2 + 32);
    }
  }

  return result;
}

BOOL sparser_marker_HasStrictlyGreaterPosCur(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      return *(a1 + 32) < *(a2 + 32);
    }
  }

  return result;
}

BOOL sparser_marker_IsSentenceBoundary(_BOOL8 result, char *__s1)
{
  if (result)
  {
    v2 = result;
    v3 = *(result + 20);
    if (((v3 & 0xFFFFFFFE) != 2 || *(result + 40) != 1) && v3 != 12 && v3 != 20)
    {
      if (v3 != 36)
      {
        return v3 == 200;
      }

      if (cstdlib_strcmp(__s1, "vceunkn"))
      {
        v3 = *(v2 + 20);
        return v3 == 200;
      }
    }

    return 1;
  }

  return result;
}

uint64_t sparser_IsSuppressedSentenceBoundary(uint64_t a1, uint64_t a2, __int16 a3)
{
  result = 0;
  if (a1 && a2)
  {
    v6 = *(a1 + 8);
    v7 = *(a2 + 2);
    v13 = a3;
    chars_BackScanNChars(*(a2 + 8), &v13, 1);
    chars_BackScanBlanksX(*(a2 + 8), &v13, (*(a2 + 16) * v7));
    chars_ScanNChars(*(a2 + 8), (*(a2 + 16) * v7), &v13, 1);
    v12 = v13;
    chars_ScanBlanks(*(a2 + 8), &v12, (*(a2 + 16) * v7));
    v8 = *(a1 + 16);
    if (*(a1 + 16))
    {
      v9 = (v6 + 40);
      do
      {
        v10 = (*(v9 - 2) - *(v6 + 32));
        if (v10 > (v12 * v7))
        {
          break;
        }

        if (*(v9 - 5) == 3 && !*v9 && v10 >= (v13 * v7))
        {
          return 1;
        }

        v9 += 16;
        --v8;
      }

      while (v8);
    }

    return 0;
  }

  return result;
}

BOOL sparser_marker_IsOfSameType(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      return *(a1 + 20) == *(a2 + 20);
    }
  }

  return result;
}

uint64_t sparser_MatchSb(uint64_t a1, int a2, int a3, uint64_t a4, int a5, __int16 a6, __int16 a7, uint64_t a8, unsigned __int16 a9)
{
  v101 = *MEMORY[0x277D85DE8];
  v92 = 0;
  v90 = 0u;
  v91 = 0u;
  __b = 0u;
  v89 = 0u;
  cstdlib_memset(&__b, 0, 0x40uLL);
  LODWORD(__b) = 1;
  *(&__b + 1) = 0;
  LOWORD(v89) = 0;
  DWORD1(v89) = 2;
  *&v91 = 0;
  DWORD2(v91) = 0;
  *(&v89 + 1) = 0;
  *&v90 = 0;
  DWORD2(v90) = 1;
  v14 = 136;
  if (!a2)
  {
    v14 = 120;
  }

  v15 = 144;
  if (!a2)
  {
    v15 = 128;
  }

  v16 = *(a1 + v15);
  v84 = *(a1 + v14);
  v87 = *(a4 + 8);
  v74 = a4;
  v17 = *(a4 + 2);
  v80 = a8;
  v81 = bed_GetpBlock(a8, &v92);
  if ((v81 & 0x80000000) == 0 && v16)
  {
    v18 = 0;
    v19 = v17 * a7;
    v83 = v16;
    do
    {
      v81 = bed_Goto(v80, a9);
      if ((v81 & 0x80000000) != 0)
      {
        return v81;
      }

      v86 = *(a1 + 112);
      v85 = *(*(a1 + 104) + 8 * *(v84 + 2 * v18));
      v20 = a5;
      LOWORD(v21) = *(v74 + 2) * a6;
      v22 = a3;
      while (v21 < v19 && (nuance_pcre_exec(*(a1 + 24), *(a1 + 32), v86 + v85, 0, v87, v19, v21, 0, v97, 30) & 0x80000000) == 0)
      {
        log_OutText(*(*(a1 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] regex %d matched at pos %u (iSb=%d) %s %d : (of %d)", v23, v24, v25, *(v84 + 2 * v18));
        v29 = *(*(a1 + 104) + 8 * *(v84 + 2 * v18) + 4);
        if (v29 > 0xFD)
        {
          v33 = 0;
          if (v29 == 255)
          {
            v34 = v97[1];
          }

          else
          {
            v34 = v97[0];
          }

          v31 = v34 + v20;
          LODWORD(v90) = v31;
          v32 = 1;
        }

        else
        {
          v30 = v97[2 * v29];
          LOWORD(v31) = v30 + v20;
          LODWORD(v90) = v30 + v20;
          v32 = (2 * v29) | 1u;
          v33 = v97[v32] - v30;
        }

        DWORD1(v90) = v33;
        v21 = v97[v32];
        if (!v87)
        {
          goto LABEL_62;
        }

        v35 = v31 - v20;
        v36 = (v31 - v20);
        if (v36 >= v19)
        {
          goto LABEL_62;
        }

        v82 = v92;
        v95 = v31 - v20;
        if (*(a1 + 40))
        {
          chars_BackScanNChars(v87, &v95, 1);
          chars_BackScanBlanksX(v87, &v95, v19);
          if (v95)
          {
            v96 = 0;
            if (utf8_Utf8CharTo16bit(&v87[v95], &v96))
            {
              if (v96 == 65294 || v96 == 46)
              {
                v94 = v95;
                v37 = *(a1 + 64);
                v38 = *(a1 + 72);
                if (*(a1 + 160) == 1)
                {
                  chars_BackScanNonBlanks(v87, &v94, v37, v38);
                }

                else
                {
                  chars_BackScan2NonBlanksNonChinese(v87, &v94, v37, v38);
                }

                v39 = v95 - v94;
                if (v39 <= 0x3E)
                {
                  v57 = v39 + 1;
                  cstdlib_memcpy(__dst, &v87[v94], v57);
                  __dst[v57] = 0;
                  v78 = v94;
                  v73 = v95;
                  LogLevel = log_GetLogLevel(*(*(a1 + 16) + 32));
                  if (sparser_IsNonFinalAbbr(a1, __dst, v78, (v73 + 1), LogLevel, v59, v60, v61))
                  {
                    v22 = a3;
                    goto LABEL_62;
                  }

                  v79 = v57;
                  v93 = v95 - v94 + 1;
                  chars_BackScanNChars(__dst, &v93, 1);
                  cstdlib_strcpy(v98, "[*]");
                  v22 = a3;
                  if (v93)
                  {
                    do
                    {
                      chars_BackScanNChars(__dst, &v93, 1);
                      v62 = v79 - v93;
                      cstdlib_memcpy(v99, &__dst[v93], v62);
                      v99[v62] = 0;
                      v63 = v94;
                      v64 = v93;
                      v65 = v95;
                      v66 = log_GetLogLevel(*(*(a1 + 16) + 32));
                      IsNonFinalAbbr = sparser_IsNonFinalAbbr(a1, v98, v63 + v64, (v65 + 1), v66, v67, v68, v69);
                    }

                    while (v93 && !IsNonFinalAbbr);
                    v20 = a5;
                    v22 = a3;
                    if (IsNonFinalAbbr)
                    {
                      goto LABEL_62;
                    }
                  }
                }
              }
            }
          }
        }

        v40 = *(v82 + 8);
        v41 = *(v82 + 16);
        if (!*(v82 + 16))
        {
          LOWORD(v49) = 0;
          goto LABEL_46;
        }

        v42 = 0;
        v43 = 0;
        v44 = (v40 + 32);
        v45 = *(v40 + 32);
        v46 = (v40 + 40);
        v47 = *(v82 + 16);
        do
        {
          if (*(v46 - 2) - v45 > v36)
          {
            break;
          }

          v48 = *(v46 - 5);
          if (v48 == 32)
          {
            v42 = *v46 == 1;
          }

          else if (v48 == 7)
          {
            v43 = !v43;
            if (*v46 != 43)
            {
              v43 = 0;
            }
          }

          v46 += 16;
          --v47;
        }

        while (v47);
        if (!v43 && !v42)
        {
          v49 = 0;
          while (1)
          {
            v50 = *v44;
            v44 += 16;
            if (v50 - v45 >= v36)
            {
              break;
            }

            if (v41 == ++v49)
            {
              goto LABEL_58;
            }
          }

LABEL_46:
          if (v49 <= v41)
          {
            v51 = *(v82 + 16);
          }

          else
          {
            v51 = v49;
          }

          if (v49 < v41)
          {
            v52 = *(v40 + 32);
            v53 = (v40 + (v49 << 6) + 20);
            v54 = v51 - v49;
            while (v53[3] - v52 < (v35 + v33))
            {
              if (*v53 <= 0x28u && ((1 << *v53) & 0x10004000080) != 0)
              {
                goto LABEL_62;
              }

              v53 += 16;
              if (!--v54)
              {
                break;
              }
            }
          }

LABEL_58:
          v56 = sparser_bed_InjectMarker(v80, &__b, 0, *(a1 + 188));
          v81 = 0;
          if ((v56 & 0x80000000) != 0)
          {
            return v56;
          }

          goto LABEL_63;
        }

LABEL_62:
        log_OutText(*(*(a1 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] EOS insertion blocked (may be in Phon/Multiword, or non-final abbreviation preceeds the boundary)", v26, v27, v28, v72);
LABEL_63:
        v16 = v83;
        if (!v22)
        {
          break;
        }
      }

      ++v18;
    }

    while (v18 != v16);
  }

  return v81;
}

BOOL sparser_marker_HasStrictlySmallerPosCur(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      return *(a1 + 32) > *(a2 + 32);
    }
  }

  return result;
}

uint64_t sparser_IsNonFinalAbbr(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  strcpy(__dst, "is not");
  v18 = 0;
  if (a5 >= 5)
  {
    log_OutText(*(a1[2] + 32), &modPP_1, 5, 0, "[SPARSER] checking if %s is a Non Final Abbr at pos %lu,%lu", a6, a7, a8, a2);
  }

  v16 = 0;
  v17 = -1;
  if (((*(a1[5] + 96))(a1[6], a1[7], "neosnbs", a2, &v18, &v17, &v16) & 0x80000000) != 0)
  {
    return 0;
  }

  if (v17 == 1)
  {
    cstdlib_strcpy(__dst, "is");
    v14 = 1;
  }

  else
  {
    v14 = 0;
  }

  if (a5 >= 5)
  {
    log_OutText(*(a1[2] + 32), &modPP_1, 5, 0, "[SPARSER] %s %s a Non Final Abbr at pos %lu,%lu", v11, v12, v13, a2);
  }

  return v14;
}

uint64_t sparser_getMaxCharsPerText(uint64_t a1, __int16 *a2)
{
  result = *(a1 + 40);
  if (!result || (v6 = 0, result = paramc_ParamGetInt(result, "maxinputlength", &v6), (result & 0x80000000) != 0))
  {
    v5 = 750;
  }

  else
  {
    if (v6 >= 0x2710)
    {
      v4 = 10000;
    }

    else
    {
      v4 = v6;
    }

    if (v6 >= 1)
    {
      v5 = v4;
    }

    else
    {
      v5 = 1;
    }
  }

  *a2 = v5;
  return result;
}

uint64_t chars_ScanBlankHead(uint64_t a1, unsigned __int16 *a2, uint64_t a3, _WORD *a4, _DWORD *a5, unsigned int a6)
{
  result = 2369789959;
  if (a2 && a1 && a5 && (a3 || !a4))
  {
    *a5 = 0;
    if (a6 <= 1)
    {
      v13 = *(a1 + 8);
      LODWORD(v14) = *(a1 + 16);
      if (*(a1 + 16))
      {
        for (i = *(a1 + 8); ; i = v13)
        {
          if (!utf8_BelongsToSet(2u, i, 0, v14))
          {
            LOWORD(v16) = v13;
            v13 = *(a1 + 8);
            goto LABEL_15;
          }

          v13 += utf8_determineUTF8CharLength(*v13);
          v14 = *(a1 + 16);
          if (&v13[-*(a1 + 8)] >= v14)
          {
            break;
          }
        }

        LOWORD(v16) = v13;
        v13 = *(a1 + 8);
      }

      else
      {
        v16 = *(a1 + 8);
      }

LABEL_15:
      v17 = v16 - v13;
      *a2 = v17;
      if (*(a1 + 16) == v17)
      {
        *a5 = 1;
      }
    }

    result = 0;
    if (a4 && (a6 & 0xFFFFFFFD) == 0)
    {
      *a4 = 0;
      if (*a2 && *(a3 + 16))
      {
        v18 = 0;
        v19 = *(a3 + 8);
        v22 = *(v19 + 32);
        v20 = (v19 + 32);
        v21 = v22;
        while (1)
        {
          v23 = *v20;
          v20 += 16;
          if (v23 >= v21 + *(a1 + 2) * *a2)
          {
            break;
          }

          result = 0;
          *a4 = ++v18;
          if (v18 >= *(a3 + 16))
          {
            return result;
          }
        }
      }

      return 0;
    }
  }

  return result;
}

uint64_t chars_ScanBlanks(uint64_t result, _WORD *a2, unsigned int a3)
{
  if (result)
  {
    if (a2)
    {
      v5 = *a2;
      if (v5 < a3)
      {
        v6 = result;
        do
        {
          result = utf8_BelongsToSet(2u, v6, v5, a3);
          if (!result)
          {
            break;
          }

          result = utf8_determineUTF8CharLength(*(v6 + *a2));
          LOWORD(v5) = *a2 + result;
          *a2 = v5;
        }

        while (a3 > v5);
      }
    }
  }

  return result;
}

uint64_t chars_ScanNonBlanks(uint64_t result, _WORD *a2, unsigned int a3)
{
  if (result)
  {
    if (a2)
    {
      v5 = *a2;
      if (v5 < a3)
      {
        v6 = result;
        do
        {
          result = utf8_BelongsToSet(2u, v6, v5, a3);
          if (result)
          {
            break;
          }

          result = utf8_determineUTF8CharLength(*(v6 + *a2));
          LOWORD(v5) = *a2 + result;
          *a2 = v5;
        }

        while (a3 > v5);
      }
    }
  }

  return result;
}

uint64_t chars_ScanForLineEnd(uint64_t result, _WORD *a2, unsigned int a3)
{
  if (result)
  {
    if (a2)
    {
      v3 = *a2;
      if (v3 < a3)
      {
        v4 = (result + v3);
        v5 = a3 - v3;
        v6 = v3 + 1;
        do
        {
          v7 = *v4++;
          if (v7 == 10)
          {
            break;
          }

          *a2 = v6++;
          --v5;
        }

        while (v5);
      }
    }
  }

  return result;
}

uint64_t chars_BackScanBlanks(uint64_t result, _WORD *a2)
{
  if (result && a2)
  {
    v3 = *a2;
    v6 = v3;
    if (v3)
    {
      v4 = result;
      while (1)
      {
        result = utf8_BelongsToSet(2u, v4, v3, *a2);
        v5 = v6;
        if (!result)
        {
          break;
        }

        if (v6)
        {
          --v6;
        }

        result = utf8_GetPreviousValidUtf8Offset(v4, &v6);
        v3 = v6;
        if (!v6)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
LABEL_9:
      v5 = 0;
    }

    *a2 = v5;
  }

  return result;
}

uint64_t chars_BackScanBlanksX(uint64_t result, _WORD *a2, unsigned int a3)
{
  if (result && a2)
  {
    v5 = *a2;
    v8 = v5;
    if (v5)
    {
      v6 = result;
      while (1)
      {
        result = utf8_BelongsToSet(2u, v6, v5, a3);
        v7 = v8;
        if (!result)
        {
          break;
        }

        --v8;
        result = utf8_GetPreviousValidUtf8Offset(v6, &v8);
        v5 = v8;
        if (!v8)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      v7 = 0;
    }

    *a2 = v7;
  }

  return result;
}

uint64_t chars_BackScanToBlank(uint64_t result, _WORD *a2)
{
  if (result && a2)
  {
    v3 = *a2;
    v6 = v3;
    if (v3)
    {
      v4 = result;
      while (1)
      {
        result = utf8_BelongsToSet(2u, v4, v3, *a2);
        v5 = v6;
        if (result)
        {
          break;
        }

        if (v6)
        {
          --v6;
        }

        result = utf8_GetPreviousValidUtf8Offset(v4, &v6);
        v3 = v6;
        if (!v6)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
LABEL_9:
      v5 = 0;
    }

    *a2 = v5;
  }

  return result;
}

uint64_t chars_ScanNChars(uint64_t result, uint64_t a2, _WORD *a3, int a4)
{
  if (result && a3)
  {
    v5 = a4;
    v7 = *a3;
    if (a4)
    {
      v8 = result;
      do
      {
        result = utf8_GetNextUtf8OffsetLimit(v8, v7, a2);
        v7 = result;
        --v5;
      }

      while (v5);
    }

    *a3 = v7;
  }

  return result;
}

uint64_t chars_BackScanNChars(uint64_t result, _WORD *a2, int a3)
{
  if (result && a2)
  {
    v4 = a3;
    v5 = *a2;
    if (a3 && *a2)
    {
      v6 = result;
      do
      {
        v7 = v5 - 1;
        result = utf8_GetPreviousValidUtf8Offset(v6, &v7);
        --v4;
        v5 = v7;
      }

      while (v4 && v7);
    }

    *a2 = v5;
  }

  return result;
}

uint64_t chars_BackScanNonBlanks(uint64_t result, unsigned int *a2, unsigned __int8 *a3, unsigned int a4)
{
  if (result && a2)
  {
    v6 = *a2;
    v24 = v6;
    if (!v6)
    {
      goto LABEL_24;
    }

    v8 = result;
    v9 = a4;
    while (1)
    {
      result = utf8_BelongsToSet(2u, v8, v6, *a2);
      v6 = v24;
      if (result)
      {
LABEL_20:
        v10 = *a2;
        goto LABEL_21;
      }

      if (a4)
      {
        break;
      }

LABEL_19:
      --v24;
      result = utf8_GetPreviousValidUtf8Offset(v8, &v24);
      v6 = v24;
      if (!v24)
      {
        goto LABEL_20;
      }
    }

    v10 = *a2;
    v11 = a3;
    v12 = v9;
    while (1)
    {
      v14 = *v11++;
      v13 = v14;
      v15 = v24 == v10 && v13 == 46;
      v16 = v15;
      if (v13 == *(v8 + v24) && !v16)
      {
        break;
      }

      if (!--v12)
      {
        goto LABEL_19;
      }
    }

LABEL_21:
    if (v6 >= v10)
    {
      goto LABEL_24;
    }

    v18 = utf8_BelongsToSet(2u, v8, v6, v10);
    v6 = v24;
    result = *(v8 + v24);
    if (!v18)
    {
      if (!a4)
      {
        goto LABEL_24;
      }

      while (1)
      {
        v20 = *a3++;
        v19 = v20;
        v21 = v24 == *a2 && v19 == 46;
        v22 = v21;
        if (v19 == result && !v22)
        {
          break;
        }

        if (!--v9)
        {
          goto LABEL_24;
        }
      }
    }

    result = utf8_determineUTF8CharLength(result);
    v6 = v24 + result;
LABEL_24:
    *a2 = v6;
  }

  return result;
}

uint64_t chars_BackScan2NonBlanksNonChinese(uint64_t result, unsigned int *a2, unsigned __int8 *a3, unsigned int a4)
{
  if (result && a2)
  {
    v7 = result;
    v8 = *a2;
    v25 = v8;
    if (v8)
    {
      v9 = v8;
      while (!a4)
      {
LABEL_18:
        result = utf8_BelongsToSet(2u, v7, v9, *a2);
        v9 = v25;
        if (!result)
        {
          result = utf8_BelongsToSet(0x20u, v7, v25, *a2);
          v9 = v25;
          if (!result)
          {
            --v25;
            result = utf8_GetPreviousValidUtf8Offset(v7, &v25);
            v9 = v25;
            if (v25)
            {
              continue;
            }
          }
        }

        goto LABEL_23;
      }

      v10 = a3;
      v11 = a4;
      while (1)
      {
        v13 = *v10++;
        v12 = v13;
        v14 = v9 == v8 && v12 == 46;
        v15 = v14;
        if (v12 == *(v7 + v9) && !v15)
        {
          break;
        }

        if (!--v11)
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      v9 = 0;
    }

LABEL_23:
    if (v9 >= *a2)
    {
      goto LABEL_40;
    }

    v17 = utf8_BelongsToSet(2u, v7, v9, *a2);
    v9 = v25;
    if (!v17)
    {
      v18 = *a2;
      if (a4)
      {
        v19 = a4;
        while (1)
        {
          v21 = *a3++;
          v20 = v21;
          v22 = v25 == v18 && v20 == 46;
          v23 = v22;
          if (v20 == *(v7 + v25) && !v23)
          {
            break;
          }

          if (!--v19)
          {
            goto LABEL_38;
          }
        }
      }

      else
      {
LABEL_38:
        result = utf8_BelongsToSet(0x20u, v7, v25, v18);
        v9 = v25;
        if (!result)
        {
LABEL_40:
          *a2 = v9;
          return result;
        }
      }
    }

    result = utf8_determineUTF8CharLength(*(v7 + v9));
    v9 = v25 + result;
    goto LABEL_40;
  }

  return result;
}

char *chars_BackScanPhraseBoundary(char *result, uint64_t a2, _WORD *a3)
{
  if (a2 && a3)
  {
    v5 = result;
    v6 = *a3;
    v15 = v6;
    if (!v6)
    {
      goto LABEL_17;
    }

    while (1)
    {
      v7 = utf8_BelongsToSet(2u, a2, v6, *a3);
      v8 = v15;
      if (!v7)
      {
        break;
      }

      if (v15)
      {
        --v15;
      }

      utf8_GetPreviousValidUtf8Offset(a2, &v15);
      v6 = v15;
      if (!v15)
      {
        goto LABEL_17;
      }
    }

    if (v15)
    {
      while (1)
      {
        v9 = utf8_BelongsToSet(2u, a2, v8, *a3);
        LODWORD(v10) = v15;
        if (v9)
        {
          break;
        }

        v11 = utf8_strchr(v5, (a2 + v15));
        LODWORD(v10) = v15;
        if (v11)
        {
          break;
        }

        if (v15)
        {
          --v15;
        }

        utf8_GetPreviousValidUtf8Offset(a2, &v15);
        v8 = v15;
        if (!v15)
        {
          LODWORD(v10) = 0;
          break;
        }
      }

      v10 = v10;
    }

    else
    {
LABEL_17:
      v10 = 0;
    }

    result = utf8_strchr(v5, (a2 + v10));
    v12 = v15;
    if (!result)
    {
      if (v15)
      {
        v13 = v15;
        do
        {
          v14 = utf8_strchr(v5, (a2 + v13));
          LODWORD(v13) = v15;
          if (v14)
          {
            break;
          }

          if (v15)
          {
            --v15;
          }

          utf8_GetPreviousValidUtf8Offset(a2, &v15);
          v13 = v15;
        }

        while (v15);
        v13 = v13;
      }

      else
      {
        v13 = 0;
      }

      result = utf8_strchr(v5, (a2 + v13));
      if (result)
      {
        v12 = v15;
      }
    }

    *a3 = v12;
  }

  return result;
}

char *eos_BackScanPhraseBoundary(char *result, uint64_t a2, unsigned int a3, unsigned int a4, _WORD *a5)
{
  if (a2 && a5 && *a5 > a4)
  {
    v9 = *a5 - a4;
    v7 = a2 + a3;
    result = chars_BackScanPhraseBoundary(result, v7, &v9);
    if (v9)
    {
      v8 = v9 + a4;
      result = utf8_determineUTF8CharLength(*(v7 + v9));
      *a5 = v8 + result;
    }
  }

  return result;
}

uint64_t tolhp_ObjOpen(_WORD *a1, uint64_t a2, uint64_t **a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = 2370838535;
  __s2 = 0;
  v15 = 0;
  if (a3 && (InitRsrcFunction(a1, a2, &v15) & 0x80000000) == 0)
  {
    *a3 = 0;
    v7 = heap_Alloc(*(v15 + 8), 40);
    if (!v7)
    {
      return 2370838538;
    }

    v8 = v7;
    cstdlib_memset(v7, 0, 0x28uLL);
    *v8 = a1;
    v8[1] = a2;
    if (v15)
    {
      v9 = paramc_ParamGet(*(v15 + 40), "langcode", &__s2, 0);
      if ((v9 & 0x80000000) != 0)
      {
        v3 = v9;
      }

      else
      {
        cstdlib_strcpy(__dst, "nts_");
        cstdlib_strcat(__dst, __s2);
        v10 = dct_ObjOpen(__dst, a1, a2, v8 + 2);
        if ((v10 & 0x80000000) == 0 || (v3 = v10, (v10 & 0x1FFF) == 1))
        {
          cstdlib_strcpy(__s1, "sxm_");
          cstdlib_strcat(__s1, __s2);
          v11 = dct_ObjOpen(__s1, a1, a2, v8 + 3);
          if ((v11 & 0x80000000) == 0 || (v3 = v11, (v11 & 0x1FFF) == 1))
          {
            cstdlib_strcpy(v16, "ipa_");
            cstdlib_strcat(v16, __s2);
            v12 = dct_ObjOpen(v16, a1, a2, v8 + 4);
            v3 = v12;
            if ((v12 & 0x80000000) == 0)
            {
LABEL_13:
              *a3 = v8;
              return v3;
            }

            if ((v12 & 0x1FFF) == 1)
            {
              v3 = 0;
              goto LABEL_13;
            }
          }
        }
      }
    }

    tolhp_ObjClose(v8);
  }

  return v3;
}

uint64_t tolhp_ObjClose(uint64_t a1)
{
  v1 = 2370838535;
  v4 = 0;
  if (a1 && (InitRsrcFunction(*a1, *(a1 + 8), &v4) & 0x80000000) == 0)
  {
    dct_ObjClose(*(a1 + 32));
    dct_ObjClose(*(a1 + 24));
    dct_ObjClose(*(a1 + 16));
    heap_Free(*(v4 + 8), a1);
    return 0;
  }

  return v1;
}

uint64_t tolhp_ResetDcts(uint64_t a1)
{
  result = tolhp_ResetDct(a1, "nts_", (a1 + 16));
  if ((result & 0x80000000) == 0)
  {

    return tolhp_ResetDct(a1, "sxm_", (a1 + 24));
  }

  return result;
}

uint64_t tolhp_ResetDct(_WORD **a1, const char *a2, const char ***a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = 2370838528;
  v9 = 0;
  __s2 = 0;
  if (!a1)
  {
    return 2370838535;
  }

  if ((InitRsrcFunction(*a1, a1[1], &v9) & 0x80000000) != 0)
  {
    return 2370838535;
  }

  if (v9 && (paramc_ParamGet(*(v9 + 40), "langcode", &__s2, 0) & 0x80000000) == 0)
  {
    cstdlib_strcpy(__dst, a2);
    cstdlib_strcat(__dst, __s2);
    if (*a3)
    {
      v7 = dct_ObjReopen(*a3, __dst);
    }

    else
    {
      v7 = dct_ObjOpen(__dst, *a1, a1[1], a3);
    }

    if ((v7 & 0x80001FFF) == 0x80000001)
    {
      return 0;
    }

    else
    {
      return v7;
    }
  }

  return v3;
}

uint64_t tolhp_RewritePhonTextInLhp(uint64_t *a1, uint64_t a2)
{
  v75 = *MEMORY[0x277D85DE8];
  v57 = 0;
  v58 = 0;
  v2 = 2370838535;
  v56 = 0;
  if (a1 && a2)
  {
    v5 = bed_ObjOpen(*a1, a1[1], a2, 1020, &v58, 213);
    if ((v5 & 0x80000000) != 0 || (v5 = bed_ObjOpen(*a1, a1[1], a2, 1021, &v57, 213), (v5 & 0x80000000) != 0) || (v5 = datac_RequestBlock(a2, 1012, 1u, &v56), (v5 & 0x80000000) != 0))
    {
      v2 = v5;
    }

    else
    {
      if (v56)
      {
        v6 = *(v56 + 8);
      }

      else
      {
        v6 = 0;
      }

      v8 = v57;
      v7 = v58;
      v69 = 0;
      v68 = 0x2400000007;
      v60 = 0;
      if (!v58 || !v57)
      {
        v11 = 2370838535;
        goto LABEL_110;
      }

      v9 = bed_Goto(v57, 0);
      if ((v9 & 0x80000000) != 0)
      {
LABEL_109:
        v11 = v9;
        goto LABEL_110;
      }

      v10 = bed_GoForward(v8, bed_marker_IsOfType, &v68);
      if ((v10 & 0x1FFF) == 0x14)
      {
LABEL_14:
        v11 = 0;
        goto LABEL_110;
      }

      v11 = v10;
      if ((v10 & 0x80000000) == 0)
      {
        v11 = bed_GetpElem(v8, 0xFFFFu, &v60);
        if ((v11 & 0x80000000) == 0)
        {
          v12 = v60;
          if (v60)
          {
            while (1)
            {
              v59 = 1;
              if (*(v12 + 20) == 7)
              {
                v71 = 0;
                v70 = 0x3E700000007;
                *v73 = 0;
                *__s1 = 0;
                v65 = 0;
                v64 = 0;
                v63 = 1;
                *v72 = 0;
                *__dst = 0;
                v61 = 0;
                v9 = bed_GetpElem(v8, 0, __s1);
                if ((v9 & 0x80000000) != 0)
                {
                  goto LABEL_109;
                }

                v9 = bed_GetpElem(v8, 0xFFFFu, v73);
                if ((v9 & 0x80000000) != 0)
                {
                  goto LABEL_109;
                }

                v9 = bed_GetiElem(v8, &v65);
                if ((v9 & 0x80000000) != 0)
                {
                  goto LABEL_109;
                }

                v9 = bed_GetcElem(v8, &v64);
                if ((v9 & 0x80000000) != 0)
                {
                  goto LABEL_109;
                }

                if (*v73 && *(*v73 + 20) == 7)
                {
                  v13 = *(*v73 + 40);
                  if (v13 == 43)
                  {
                    if (*(*v73 + 48))
                    {
                      v14 = *(*v73 + 56);
                      if ((v14 - 2) < 3)
                      {
                        v13 = v14 + 68;
LABEL_44:
                        v63 = 1;
                        bed_GoForward(v8, bed_marker_IsAt, &v63);
                        v20 = bed_GoForward(v8, bed_marker_IsOfType, &v70);
                        if ((v20 & 0x1FFF) == 0x14)
                        {
                          *v72 = 0;
                        }

                        else
                        {
                          v11 = v20;
                          if ((v20 & 0x80000000) != 0)
                          {
                            break;
                          }

                          v9 = bed_GetpElem(v8, 0xFFFFu, v72);
                          if ((v9 & 0x80000000) != 0)
                          {
                            goto LABEL_109;
                          }
                        }

                        v9 = bed_GetpElem(v7, 0, __dst);
                        if ((v9 & 0x80000000) != 0)
                        {
                          goto LABEL_109;
                        }

                        v9 = bed_GetcElem(v7, &v61);
                        if ((v9 & 0x80000000) != 0)
                        {
                          goto LABEL_109;
                        }

                        v21 = *(*v73 + 32);
                        v22 = v21 - *(*__s1 + 32);
                        if (*v72)
                        {
                          v23 = *(*v72 + 32) - v21;
                        }

                        else
                        {
                          LOWORD(v23) = v61 - v22;
                        }

                        v55 = v23;
                        v28 = *__dst;
                        __src = 0;
                        v66 = 0;
                        if (!*__dst || (InitRsrcFunction(*a1, a1[1], &__src) & 0x80000000) != 0)
                        {
                          goto LABEL_117;
                        }

                        v51 = v22;
                        v52 = v22;
                        v29 = v28 + v22;
                        v53 = off_287EEEC70[v13 - 70];
                        v30 = 0;
                        if (v55)
                        {
                          while (utf8_BelongsToSet(0, v29, v30, v55))
                          {
                            if (v55 == ++v30)
                            {
                              LOWORD(v30) = v55;
                              break;
                            }
                          }
                        }

                        v31 = (v29 + v30);
                        v32 = v55 - v30;
                        v33 = (v55 - v30);
                        if (v33)
                        {
                          v50 = v32;
                          v34 = 0;
                          while (utf8_BelongsToSet(0, v31, v33 - 1 + v34, v33))
                          {
                            if (-v33 == --v34)
                            {
                              v32 = v50;
                              LOWORD(v35) = v50;
                              goto LABEL_80;
                            }
                          }

                          v35 = -v34;
                          v32 = v50;
                        }

                        else
                        {
                          LOWORD(v35) = 0;
                        }

LABEL_80:
                        v36 = (v32 - v35);
                        v37 = heap_Alloc(*(__src + 1), v36 + 1);
                        if (!v37)
                        {
                          v2 = 2370838538;
LABEL_117:
                          v11 = v2;
                          break;
                        }

                        v38 = v37;
                        cstdlib_memcpy(v37, v31, v36);
                        *(v38 + v36) = 0;
                        v11 = (v53)(a1, v38, 0, &v66);
                        if ((v11 & 0x80000000) != 0 || !v66)
                        {
                          goto LABEL_86;
                        }

                        v39 = heap_Alloc(*(__src + 1), ++v66);
                        if (!v39)
                        {
                          LOWORD(v54) = 0;
                          v11 = 2370838538;
                          goto LABEL_87;
                        }

                        v11 = (v53)(a1, v38, v39, &v66);
                        if ((v11 & 0x80000000) != 0)
                        {
LABEL_86:
                          v39 = 0;
                          LOWORD(v54) = 0;
                        }

                        else
                        {
                          v54 = Utf8_Utf8NbrOfSymbols(v39) - 1;
                        }

LABEL_87:
                        heap_Free(*(__src + 1), v38);
                        if ((v11 & 0x80000000) != 0)
                        {
                          break;
                        }

                        v9 = bed_Remove(v7, v51, v55);
                        if ((v9 & 0x80000000) != 0)
                        {
                          goto LABEL_109;
                        }

                        if (v54)
                        {
                          v9 = bed_Goto(v7, v52);
                          if ((v9 & 0x80000000) != 0)
                          {
                            goto LABEL_109;
                          }

                          v9 = bed_Insert(v7, v39, v54);
                          if ((v9 & 0x80000000) != 0)
                          {
                            goto LABEL_109;
                          }
                        }

                        if (v39)
                        {
                          v9 = tolhp_lhp_ObjClose(a1, v39);
                          if ((v9 & 0x80000000) != 0)
                          {
                            goto LABEL_109;
                          }
                        }

                        v40 = *v73;
                        v41 = v54 - v55;
                        *(*__s1 + 36) += v41;
                        *(v40 + 40) = 43;
                        v9 = bed_Goto(v8, v65);
                        if ((v9 & 0x80000000) != 0)
                        {
                          goto LABEL_109;
                        }

                        v42 = v64;
                        v43 = v65 + 1;
                        if (v64 > (v65 + 1))
                        {
                          v44 = *__s1;
                          v45 = (*v73 + 100);
                          do
                          {
                            v46 = *(v45 - 1);
                            v47 = *(v44 + 32);
                            if (v47 + v52 <= v46)
                            {
                              if (v47 + (v52 + v55) <= v46)
                              {
                                *(v45 - 1) = v46 + v41;
                              }

                              else
                              {
                                *(v45 - 1) = v47 + v52;
                                if (*(v45 - 4) == 1)
                                {
                                  *v45 = v54;
                                }
                              }
                            }

                            ++v43;
                            v45 += 16;
                          }

                          while (v42 > v43);
                        }
                      }
                    }
                  }

                  else if ((v13 - 73) >= 0xFFFFFFFD)
                  {
                    goto LABEL_44;
                  }
                }
              }

              else if (v6)
              {
                __dst[0] = 0;
                v15 = v6 + *(v12 + 40);
                MarkerArgStr = marker_getMarkerArgStr(1u);
                if (cstdlib_strcmp(v15, MarkerArgStr))
                {
                  v17 = 0;
                  while (*(v15 + v17))
                  {
                    __dst[v17] = *(v15 + v17);
                    if (++v17 == 3)
                    {
                      if (*(v15 + 3))
                      {
                        break;
                      }

                      __dst[3] = 0;
                      goto LABEL_41;
                    }
                  }
                }

                else
                {
                  v70 = 0;
                  __src = 0;
                  if ((InitRsrcFunction(*a1, a1[1], &v70) & 0x80000000) == 0 && v70 && (paramc_ParamGet(*(v70 + 40), "langcode", &__src, 0) & 0x80000000) == 0)
                  {
                    cstdlib_strncpy(__dst, __src, 4uLL);
LABEL_41:
                    cstdlib_strcpy(__s1, "nts_");
                    cstdlib_strcat(__s1, __dst);
                    v18 = a1[2];
                    v19 = v18 ? dct_ObjReopen(v18, __s1) : dct_ObjOpen(__s1, *a1, a1[1], a1 + 2);
                    v11 = v19;
                    if ((v19 & 0x80000000) != 0 && (v19 & 0x1FFF) != 1)
                    {
                      break;
                    }

                    cstdlib_strcpy(v73, "sxm_");
                    cstdlib_strcat(v73, __dst);
                    v24 = a1[3];
                    v25 = v24 ? dct_ObjReopen(v24, v73) : dct_ObjOpen(v73, *a1, a1[1], a1 + 3);
                    v11 = v25;
                    if ((v25 & 0x80000000) != 0 && (v25 & 0x1FFF) != 1)
                    {
                      break;
                    }

                    cstdlib_strcpy(v72, "ipa_");
                    cstdlib_strcat(v72, __dst);
                    v26 = a1[4];
                    v27 = v26 ? dct_ObjReopen(v26, v72) : dct_ObjOpen(v72, *a1, a1[1], a1 + 4);
                    v11 = v27;
                    if ((v27 & 0x80000000) != 0 && (v27 & 0x1FFF) != 1)
                    {
                      break;
                    }
                  }
                }
              }

              v59 = 1;
              bed_GoForward(v8, bed_marker_IsAt, &v59);
              v48 = bed_GoForward(v8, bed_marker_IsOfType, &v68);
              if ((v48 & 0x1FFF) == 0x14)
              {
                goto LABEL_14;
              }

              v11 = v48;
              if ((v48 & 0x80000000) == 0)
              {
                v11 = bed_GetpElem(v8, 0xFFFFu, &v60);
                if ((v11 & 0x80000000) == 0)
                {
                  v12 = v60;
                  if (v60)
                  {
                    continue;
                  }
                }
              }

              break;
            }
          }
        }
      }

LABEL_110:
      v2 = v11;
    }

    if (v57)
    {
      bed_ObjClose(v57);
    }

    if (v58)
    {
      bed_ObjClose(v58);
    }
  }

  return v2;
}

uint64_t tolhp_lhp_ObjClose(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  if ((InitRsrcFunction(*a1, *(a1 + 8), &v4) & 0x80000000) != 0)
  {
    return 2370838535;
  }

  heap_Free(*(v4 + 8), a2);
  return 0;
}

uint64_t tolhp_RewriteNts(uint64_t a1, char *a2, char *a3, _WORD *a4)
{
  if (a1)
  {
    return tolhp_Rewrite(*(a1 + 16), a2, a3, a4);
  }

  else
  {
    return 2370838535;
  }
}

uint64_t tolhp_RewriteSxms(uint64_t a1, char *a2, char *a3, _WORD *a4)
{
  if (a1)
  {
    return tolhp_Rewrite(*(a1 + 24), a2, a3, a4);
  }

  else
  {
    return 2370838535;
  }
}

uint64_t tolhp_RewriteIpa(uint64_t a1, char *a2, char *a3, _WORD *a4)
{
  if (a1)
  {
    return tolhp_Rewrite(*(a1 + 32), a2, a3, a4);
  }

  else
  {
    return 2370838535;
  }
}

uint64_t tolhp_Rewrite(void *a1, char *__s, char *a3, _WORD *a4)
{
  if (a3)
  {
    *a3 = 0;
  }

  else
  {
    *a4 = 0;
  }

  v8 = cstdlib_strlen(__s);
  result = 0;
  if (a1)
  {
    v10 = v8;
    if (v8)
    {
      if (__s)
      {
        for (i = __s; ; ++i)
        {
          if (*i == 32)
          {
            *i = 17;
          }

          else if (!*i)
          {
            break;
          }
        }
      }

      v12 = 0;
      while (1)
      {
        __sa = 0;
        LongestMatch = dct_FindLongestMatch(a1, &__s[v12], &__sa);
        if (LongestMatch < 1)
        {
          result = 0;
          *a4 = 0;
          return result;
        }

        v14 = LongestMatch;
        v15 = cstdlib_strlen(__sa);
        if (a3)
        {
          if (v15 + cstdlib_strlen(a3) + 1 > *a4)
          {
            return 2370838537;
          }

          cstdlib_strcat(a3, __sa);
        }

        else
        {
          *a4 += v15;
        }

        v12 += v14;
        if (v12 >= v10)
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t dct_ObjOpen(const char *a1, _WORD *a2, int a3, uint64_t *a4)
{
  v19 = 0;
  v4 = 2370838535;
  if (!a4)
  {
    return 2370838535;
  }

  v18 = 0;
  if ((InitRsrcFunction(a2, a3, &v19) & 0x80000000) != 0)
  {
    return 2370838535;
  }

  *a4 = 0;
  v7 = heap_Alloc(*(v19 + 8), 40);
  v8 = 2370838538;
  if (v7)
  {
    v9 = v7;
    cstdlib_memset(v7, 0, 0x28uLL);
    v10 = v19;
    *v9 = v19;
    v11 = *(v10 + 8);
    v12 = cstdlib_strlen(a1);
    v13 = heap_Alloc(v11, (v12 + 1));
    *(v9 + 8) = v13;
    if (!v13)
    {
      goto LABEL_13;
    }

    cstdlib_strcpy(v13, a1);
    v20 = 0;
    if (*v9)
    {
      Object = objc_GetObject(*(*v9 + 48), "FE_DCTLKP", &v20);
      if ((Object & 0x80000000) == 0)
      {
        v15 = v20;
        v16 = *(v20 + 8);
        *(v9 + 16) = v16;
        *(v9 + 24) = *(v15 + 16);
        v8 = (*(v16 + 72))(*(v9 + 24), *(v9 + 32), a1, &v18);
        if ((v8 & 0x80000000) == 0)
        {
          if (v18)
          {
            *a4 = v9;
            return v8;
          }

          v8 = 2370838529;
        }

LABEL_13:
        dct_ObjClose(v9);
        return v8;
      }

      v4 = Object;
    }

    v8 = v4;
    goto LABEL_13;
  }

  return v8;
}

uint64_t dct_ObjClose(uint64_t a1)
{
  result = 2370838535;
  if (a1)
  {
    v3 = *a1;
    if (*a1)
    {
      if (*(a1 + 16))
      {
        objc_ReleaseObject(*(v3 + 48), "FE_DCTLKP");
        *(a1 + 16) = 0;
        *(a1 + 24) = 0;
        *(a1 + 32) = 0;
        v3 = *a1;
      }

      v4 = *(a1 + 8);
      if (v4)
      {
        heap_Free(*(v3 + 8), v4);
        v3 = *a1;
      }

      heap_Free(*(v3 + 8), a1);
      return 0;
    }
  }

  return result;
}

uint64_t dct_ObjReopen(const char **a1, const char *a2)
{
  v2 = 2370838535;
  if (a1 && a2)
  {
    v5 = cstdlib_strlen(a1[1]);
    v6 = cstdlib_strlen(a2);
    v7 = a1[1];
    if (v5 < v6)
    {
      v8 = *(*a1 + 1);
      v9 = cstdlib_strlen(a2);
      v10 = heap_Realloc(v8, v7, (v9 + 1));
      if (!v10)
      {
        return 2370838538;
      }

      v7 = v10;
      a1[1] = v10;
    }

    cstdlib_strcpy(v7, a2);
    return 0;
  }

  return v2;
}

uint64_t dct_FindLongestMatch(void *a1, char *__s, void *a3)
{
  result = 0;
  v18 = *MEMORY[0x277D85DE8];
  v16 = 0;
  v15 = 0;
  v14 = 0;
  v13 = 0;
  if (a1 && __s && a3)
  {
    *a3 = 0;
    v7 = cstdlib_strlen(__s);
    if (v7)
    {
      if (v7 <= 0xAu)
      {
        v8 = v7;
      }

      else
      {
        v8 = 10;
      }

      v9 = v8;
      v10 = v8;
      cstdlib_memmove(__dst, __s, v8);
      if (v9)
      {
        v11 = v10;
        while (1)
        {
          __dst[v11] = 0;
          v14 = 1;
          if (((*(a1[2] + 96))(a1[3], a1[4], a1[1], __dst, &v15, &v14, &v16) & 0x80000000) != 0)
          {
            break;
          }

          v12 = v11 - 1;
          if (v11 != 1)
          {
            --v11;
            if (!v14)
            {
              continue;
            }
          }

          if (!v14)
          {
            break;
          }

LABEL_20:
          *a3 = *v15;
          return (v12 + 1);
        }
      }

      if ((paramc_ParamGetStr(*(*a1 + 40), "clcpppipelinemode", &v13) & 0x80000000) == 0)
      {
        cstdlib_memmove(__dst, __s, v10);
        if (v10)
        {
          while (1)
          {
            __dst[v10] = 0;
            v14 = 0;
            if (((*(a1[2] + 96))(a1[3], a1[4], a1[1], __dst, &v15, &v14, &v16) & 0x80000000) != 0)
            {
              break;
            }

            v12 = v10 - 1;
            if (v10 >= 2)
            {
              --v10;
              if (!v14)
              {
                continue;
              }
            }

            if (!v14)
            {
              return 0;
            }

            goto LABEL_20;
          }
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t textpar_AllTextProcessed(uint64_t a1)
{
  v3 = 0;
  if (!a1)
  {
    return 1;
  }

  v1 = 1;
  if ((datac_RequestBlock(*(a1 + 16), 1010, 1u, &v3) & 0x80000000) == 0)
  {
    return *(v3 + 20);
  }

  return v1;
}

uint64_t textpar_ClearOutputDataContainers(uint64_t *a1)
{
  v7 = 0;
  if (!a1)
  {
    return 2368741383;
  }

  v2 = datac_RequestBlock(a1[2], 1011, 1u, &v7);
  if ((v2 & 0x80000000) == 0)
  {
    v3 = v7;
    if (*(v7 + 16) >= 2u)
    {
      v4 = (*(v7 + 8) + 112);
      v5 = 1;
      do
      {
        if (*v4)
        {
          heap_Free(*(*a1 + 8), *v4);
          *v4 = 0;
          v3 = v7;
        }

        ++v5;
        v4 += 8;
      }

      while (v5 < *(v3 + 16));
    }

    *(v3 + 16) = 0;
  }

  return v2;
}

uint64_t textpar_WriteTextAndMarkers(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = 0;
  v31 = 0;
  v5 = 2368741376;
  if (!a1)
  {
    return 2368741383;
  }

  v32 = 0;
  v11 = (*(*(a1 + 24) + 136))(a2, a3, &v32);
  if ((v11 & 0x80000000) != 0)
  {
    return v11;
  }

  marker_TraceMrk(211, "PP_TEXT_PARSER", *(a1 + 112), *a1, *(a1 + 16), 1011, "start textpar_WriteTextAndMarkers()", 0, 0, 0);
  marker_TraceTxt(211, "PP_TEXT_PARSER", *(a1 + 112), *a1, *(a1 + 16), 1010, "start textpar_WriteTextAndMarkers()");
  v11 = datac_RequestBlock(*(a1 + 16), 1010, 1u, &v31);
  if ((v11 & 0x80000000) != 0)
  {
    return v11;
  }

  v12 = *(v31 + 16);
  if (*(v31 + 16))
  {
    v11 = (*(*(a1 + 24) + 104))(a2, a3, *(v31 + 8), *(v31 + 2) * v12);
    if ((v11 & 0x80000000) != 0)
    {
      return v11;
    }

    *(v31 + 16) = 0;
  }

  if ((datac_RequestBlock(*(a1 + 16), 1012, 1u, &v31) & 0x80000000) != 0)
  {
    v13 = 0;
  }

  else
  {
    v13 = *(v31 + 8);
  }

  v11 = datac_RequestBlock(*(a1 + 16), 1011, 1u, &v30);
  if ((v11 & 0x80000000) != 0)
  {
    return v11;
  }

  v14 = *(v30 + 16);
  if (*(v30 + 16))
  {
    v15 = *(v30 + 8);
    if (*(v15 + 20) == 0x4000)
    {
      if (v12)
      {
        v16 = 0;
        v32 = *(v15 + 32) - v32;
      }

      else
      {
        v17 = marker_CheckForEmptyMarkers(v13, *(a1 + 76), v15, v14, 0, 0, 0);
        v16 = v17 == 1;
        v14 = *(v30 + 16);
        v32 = *(v15 + 32) - v32;
        if (!v14)
        {
          if (v17 == 1)
          {
            goto LABEL_31;
          }

          LODWORD(v25) = 0;
LABEL_30:
          marker_TraceMrk(211, "PP_TEXT_PARSER", *(a1 + 112), *a1, *(a1 + 16), 1011, "at end()", 1, v15, v25);
          v11 = (*(*(a1 + 24) + 104))(a4, a5, v15, (v25 << 6));
          if ((v11 & 0x80000000) == 0)
          {
LABEL_31:
            v26 = textpar_ClearOutputDataContainers(a1);
            return v26 & (v26 >> 31);
          }

          return v11;
        }
      }

      v29 = v16;
      v18 = v14;
      v19 = (v15 + 32);
      do
      {
        *v19 -= v32;
        v19 += 16;
        --v18;
      }

      while (v18);
      v20 = 0;
      v21 = (v15 + 40);
      do
      {
        if (marker_hasNonConstCharPtrArg(*(v21 - 5)))
        {
          v22 = *v21;
          if (v13)
          {
            v23 = v22 == 0xFFFFFFFFLL;
          }

          else
          {
            v23 = 1;
          }

          v24 = v13 + v22;
          if (v23)
          {
            v24 = 0;
          }

          *v21 = v24;
        }

        ++v20;
        v25 = *(v30 + 16);
        v21 += 8;
      }

      while (v20 < v25);
      if (!v12)
      {
        if (v25 == 1)
        {
          v28 = v29;
          if (*(v15 + 20) == 0x4000)
          {
            v28 = 1;
          }

          if (v28)
          {
            goto LABEL_31;
          }

          LODWORD(v25) = 1;
        }

        else if (v29)
        {
          goto LABEL_31;
        }
      }

      goto LABEL_30;
    }
  }

  return v5;
}

uint64_t textpar_CheckForEOF(void *a1, _DWORD *a2, _DWORD *a3)
{
  v9 = 0;
  result = (*(a1[3] + 144))(a1[4], a1[5], &v9 + 4, &v9);
  if ((result & 0x80000000) == 0)
  {
    v6 = v9;
    v7 = HIDWORD(v9);
    if (a2 && a3)
    {
      *a2 = HIDWORD(v9);
      *a3 = v6;
    }

    if (v7)
    {
      v8 = 1;
    }

    else
    {
      v8 = v6 == 0;
    }

    if (v8)
    {
      return result;
    }

    else
    {
      return 2368741399;
    }
  }

  return result;
}

uint64_t textpar_ClassOpen(_WORD *a1, uint64_t a2, uint64_t **a3)
{
  v9 = 0;
  if ((InitRsrcFunction(a1, a2, &v9) & 0x80000000) != 0)
  {
    return 2368741383;
  }

  v6 = heap_Calloc(*(v9 + 8), 1, 16);
  if (!v6)
  {
    return 10;
  }

  *v6 = v9;
  *a3 = v6;
  v7 = escseqs_ClassOpen(a1, a2, v6 + 1);
  if ((v7 & 0x80000000) != 0)
  {
    textpar_ClassClose(*a3);
  }

  return v7;
}

uint64_t textpar_ClassClose(uint64_t *a1)
{
  if (!a1)
  {
    return 2368741383;
  }

  v2 = *a1;
  v3 = escseqs_ClassClose(a1[1]);
  if ((v3 & 0x80000000) == 0)
  {
    heap_Free(*(v2 + 8), a1);
  }

  return v3;
}

uint64_t textpar_ObjOpen(uint64_t a1, _WORD *a2, uint64_t a3, uint64_t a4, void *a5, int a6)
{
  v24 = 0;
  v22 = 0;
  v6 = 2368741383;
  if (a1)
  {
    if (a5)
    {
      v23 = 0uLL;
      if ((InitRsrcFunction(a2, a3, &v24) & 0x80000000) == 0)
      {
        *a5 = 0;
        v13 = heap_Alloc(*(v24 + 8), 120);
        if (v13)
        {
          v14 = v13;
          cstdlib_memset(v13, 0, 0x78uLL);
          v15 = v24;
          *v14 = v24;
          v14[1] = a1;
          v14[3] = a4;
          v14[11] = 0;
          *(v14 + 19) = 0;
          *(v14 + 29) = a6;
          if (paramc_ParamGetUInt(*(v15 + 40), "ppmaxpcreframeblocks", &v22) < 0)
          {
            v16 = 30;
          }

          else
          {
            v16 = v22;
          }

          if (paramc_ParamGetUInt(*(v24 + 40), "ppnumframesinblock", &v22) < 0)
          {
            v17 = 50;
          }

          else
          {
            v17 = v22;
          }

          v18 = extdata_ObjOpen(a2, a3, v14 + 11, 211);
          if ((v18 & 0x80000000) != 0 || (v14[12] = 0, *(v14 + 26) = 0, v18 = nuance_pcre_ObjOpen(a2, a3, &v23), (v18 & 0x80000000) != 0) || (v18 = nuance_pcre_Init(v23, SDWORD2(v23), v16, v17), (v18 & 0x80000000) != 0) || (*(v14 + 6) = v23, v18 = escseqs_ObjOpen(*(v14[1] + 8), a2, a3, v14[12], v14[13], v14 + 10), (v18 & 0x80000000) != 0) || (v18 = datac_ObjOpen(a2, a3, v14 + 2, 211), (v18 & 0x80000000) != 0))
          {
            v6 = v18;
          }

          else
          {
            v19 = &word_26ECDBFA2;
            v20 = 4;
            while (1)
            {
              v6 = datac_RegisterBlock(v14[2], *(v19 - 2), *(v19 - 1), *v19);
              if ((v6 & 0x80000000) != 0)
              {
                break;
              }

              v19 += 3;
              if (!--v20)
              {
                *a5 = v14;
                return v6;
              }
            }
          }

          textpar_ObjClose(v14);
        }

        else
        {
          return 2368741386;
        }
      }
    }
  }

  return v6;
}