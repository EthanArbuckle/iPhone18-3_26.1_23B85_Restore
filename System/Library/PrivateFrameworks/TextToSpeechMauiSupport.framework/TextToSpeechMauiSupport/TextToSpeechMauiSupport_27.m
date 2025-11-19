void *freeRules(void *result, void *a2)
{
  v3 = result;
  v4 = a2[80];
  if (v4)
  {
    result = heap_Free(result[1], v4);
  }

  v5 = a2[56];
  if (v5)
  {
    result = heap_Free(v3[1], v5);
  }

  v6 = a2[57];
  if (v6)
  {
    result = heap_Free(v3[1], v6);
  }

  v7 = a2[61];
  if (v7)
  {
    result = heap_Free(v3[1], v7);
  }

  v8 = a2[62];
  if (v8)
  {
    result = heap_Free(v3[1], v8);
  }

  v9 = a2[66];
  if (v9)
  {
    result = heap_Free(v3[1], v9);
  }

  v10 = a2[67];
  if (v10)
  {
    v11 = v3[1];

    return heap_Free(v11, v10);
  }

  return result;
}

void *freePwInObjClose(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *(a2 + 1);
  if (v4)
  {
    v5 = *a2;
    if (*a2)
    {
      v6 = 0;
      do
      {
        v7 = *(*(a2 + 1) + 8 * v6);
        if (v7)
        {
          heap_Free(*(a1 + 8), v7);
          *(*(a2 + 1) + 8 * v6) = 0;
          v5 = *a2;
        }

        ++v6;
      }

      while (v6 < v5);
      v4 = *(a2 + 1);
    }

    heap_Free(*(a1 + 8), v4);
    *(a2 + 1) = 0;
    *a2 = 0;
  }

  v8 = *(a2 + 3);
  if (v8)
  {
    v9 = a2[16];
    if (a2[16])
    {
      v10 = 0;
      do
      {
        v11 = *(*(a2 + 3) + 8 * v10);
        if (v11)
        {
          heap_Free(*(a1 + 8), v11);
          *(*(a2 + 3) + 8 * v10) = 0;
          v9 = a2[16];
        }

        ++v10;
      }

      while (v10 < v9);
      v8 = *(a2 + 3);
    }

    heap_Free(*(a1 + 8), v8);
    *(a2 + 3) = 0;
    a2[16] = 0;
  }

  freePandPRules(a2 + 138);
  v12 = *(a1 + 8);

  return heap_Free(v12, a2);
}

void *freeSPPunc(void *result, uint64_t a2)
{
  if (a2)
  {
    return heap_Free(result[1], a2);
  }

  return result;
}

void *freeSentenceDataNN(void *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 1768);
  if (v4)
  {
    result = heap_Free(result[1], v4);
    *(a2 + 1768) = 0;
  }

  v5 = *(a2 + 1080);
  if (v5)
  {
    result = heap_Free(v3[1], v5);
    *(a2 + 1080) = 0;
  }

  v6 = *(a2 + 1064);
  if (v6)
  {
    if (*(a2 + 1072))
    {
      v7 = 0;
      v8 = 0;
      do
      {
        if (*(v6 + v7 + 40))
        {
          heap_Free(v3[1], *(v6 + v7 + 40));
          v6 = *(a2 + 1064);
          *(v6 + v7 + 40) = 0;
        }

        if (*(v6 + v7 + 24))
        {
          heap_Free(v3[1], *(v6 + v7 + 24));
          v6 = *(a2 + 1064);
          *(v6 + v7 + 24) = 0;
        }

        if (*(v6 + v7 + 128))
        {
          heap_Free(v3[1], *(v6 + v7 + 128));
          v6 = *(a2 + 1064);
          *(v6 + v7 + 128) = 0;
        }

        if (*(v6 + v7 + 144))
        {
          heap_Free(v3[1], *(v6 + v7 + 144));
          v6 = *(a2 + 1064);
          *(v6 + v7 + 144) = 0;
        }

        if (*(v6 + v7 + 160))
        {
          heap_Free(v3[1], *(v6 + v7 + 160));
          v6 = *(a2 + 1064);
          *(v6 + v7 + 160) = 0;
        }

        if (*(v6 + v7 + 168))
        {
          heap_Free(v3[1], *(v6 + v7 + 168));
          v6 = *(a2 + 1064);
          *(v6 + v7 + 168) = 0;
        }

        if (*(v6 + v7))
        {
          heap_Free(v3[1], *(v6 + v7));
          v6 = *(a2 + 1064);
          *(v6 + v7) = 0;
        }

        ++v8;
        v7 += 184;
      }

      while (v8 < *(a2 + 1072));
    }

    result = heap_Free(v3[1], v6);
    *(a2 + 1064) = 0;
  }

  *(a2 + 1072) = 0;
  *(a2 + 1096) = 0;
  return result;
}

uint64_t nn_model_getBrokerString(uint64_t a1, _BYTE *a2, const char *a3, size_t a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v10 = 0;
  __s2 = 0;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  *__s1 = 0u;
  v13 = 0u;
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", &__s2);
  if ((result & 0x80000000) == 0)
  {
    result = paramc_ParamGetStr(*(a1 + 40), "fecfg", &v10);
    if ((result & 0x80000000) == 0)
    {
      cstdlib_strcat(__s1, a3);
      cstdlib_strcat(__s1, __s2);
      cstdlib_strcat(__s1, "_");
      cstdlib_strcat(__s1, v10);
      v9 = brokeraux_ComposeBrokerString(a1, __s1, 1, 1, __s2, 0, 0, a2, a4);
      return v9 & (v9 >> 31);
    }
  }

  return result;
}

uint64_t initFiModel(uint64_t a1, _WORD *a2, uint64_t a3, _WORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _DWORD *a9, void *a10)
{
  v40 = *MEMORY[0x277D85DE8];
  v38 = 0;
  v36 = 0;
  v34 = 0;
  v35 = 0;
  memset(v39, 0, sizeof(v39));
  v37 = -1;
  BrokerString = (*(a8 + 96))(a6, a7, "fecfg", "statbnd_phrase_nn_type_joint", &v38, &v37, &v36);
  if ((BrokerString & 0x80000000) != 0)
  {
    return BrokerString;
  }

  v16 = 2315264010;
  if (v37)
  {
    v17 = *v38;
    v17[cstdlib_strlen(*v38) - 1] = 0;
    if (cstdlib_strcmp(*v38, "yes"))
    {
      *a9 = 0;
      v18 = *(a1 + 8);
      v19 = 16;
    }

    else
    {
      *a9 = 1;
      v18 = *(a1 + 8);
      v19 = 8;
    }

    v20 = heap_Alloc(v18, v19);
    if (!v20)
    {
      log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v21, v22, v23, v24, v32);
      return v16;
    }

    v25 = v20;
    BrokerString = nn_model_getBrokerString(a1, v39, "nnphrase_", 0x100uLL);
    if ((BrokerString & 0x80000000) == 0)
    {
      v16 = fi_init(a2, a3, a4, a5, &v35, 0, v39, "FINN", 1031, 0);
      if ((v16 & 0x80000000) != 0)
      {
        v29 = *(a1 + 32);
        v30 = "load FI model failed";
        goto LABEL_14;
      }

      *v25 = v35;
      if (*a9)
      {
LABEL_11:
        *a10 = v25;
        return v16;
      }

      BrokerString = nn_model_getBrokerString(a1, v39, "nnword_", 0x100uLL);
      if ((BrokerString & 0x80000000) == 0)
      {
        v16 = fi_init(a2, a3, a4, a5, &v34, 0, v39, "FINN", 1031, 0);
        if ((v16 & 0x80000000) == 0)
        {
          v25[1] = v34;
          goto LABEL_11;
        }

        v29 = *(a1 + 32);
        v30 = "load FI pw model failed";
LABEL_14:
        log_OutText(v29, "FE_PHRASING", 5, 0, v30, v26, v27, v28, v33);
        return v16;
      }
    }

    return BrokerString;
  }

  return 2315264020;
}

uint64_t loadEmbedding(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, _BOOL4 *a9)
{
  v26 = 0;
  v27 = 0;
  __s1 = 0;
  v24 = -1;
  v23 = 0;
  result = (*(a8 + 96))(a6, a7, "fecfg", "statbnd_embed_type", &v26, &v24, &v23);
  if ((result & 0x80000000) == 0)
  {
    result = 2315264020;
    if (v24)
    {
      if (v26)
      {
        v15 = *v26;
        v15[cstdlib_strlen(*v26) - 1] = 0;
        v16 = extstdlib_strtok_r(*v26, "|", &__s1);
        v17 = !cstdlib_strcmp(v16, "joint_char") && !cstdlib_strcmp(__s1, "joint_word");
        *a9 = v17;
        result = nn_word_lkp_GetInterface(1u, &v27);
        if ((result & 0x80000000) == 0)
        {
          *a5 = safeh_GetNullHandle();
          a5[1] = v18;
          a5[2] = safeh_GetNullHandle();
          a5[3] = v19;
          v20 = *(v27 + 16);
          v21 = *a4;
          v22 = a4[1];
          if (*a9)
          {
            result = v20(v21, v22, "joint_char", a1, a2, a5);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            result = (*(v27 + 16))(*a4, a4[1], "joint_word", a1, a2, a5 + 2);
          }

          else
          {
            result = v20(v21, v22, "albert", a1, a2, a5);
          }

          if ((result & 0x80000000) == 0)
          {
            *a3 = v27;
          }
        }
      }
    }
  }

  return result;
}

void *freeSpRules(void *result, uint64_t a2)
{
  if (a2)
  {
    v3 = *a2;
    if (v3)
    {
      v4 = result;
      v5 = *(a2 + 10);
      if (*(a2 + 10))
      {
        v6 = 0;
        do
        {
          v7 = v3 + 16 * v6;
          v8 = *v7;
          if (*v7)
          {
            if (*(v7 + 8))
            {
              v9 = 0;
              v10 = 0;
              do
              {
                if (*(v8 + v9 + 24))
                {
                  heap_Free(v4[1], *(v8 + v9 + 24));
                  v3 = *a2;
                  v8 = *(*a2 + 16 * v6);
                  *(v8 + v9 + 24) = 0;
                }

                if (*(v8 + v9 + 16))
                {
                  heap_Free(v4[1], *(v8 + v9 + 16));
                  v3 = *a2;
                  v8 = *(*a2 + 16 * v6);
                  *(v8 + v9 + 16) = 0;
                }

                ++v10;
                v9 += 40;
              }

              while (v10 < *(v3 + 16 * v6 + 8));
            }

            heap_Free(v4[1], v8);
            v3 = *a2;
            v11 = *a2 + 16 * v6;
            *v11 = 0;
            *(v11 + 8) = 0;
            v5 = *(a2 + 10);
          }

          ++v6;
        }

        while (v6 < v5);
      }

      result = heap_Free(v4[1], v3);
      *a2 = 0;
      *(a2 + 10) = 0;
    }
  }

  return result;
}

uint64_t nnEmbeddingReLoad(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, _BOOL4 *a9)
{
  if (*a3)
  {
    result = (*(*a3 + 24))(*a5, a5[1]);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    if (*a9)
    {
      result = (*(*a3 + 24))(a5[2], a5[3]);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }
    }

    *a3 = 0;
  }

  *a4 = safeh_GetNullHandle();
  a4[1] = v18;
  *a9 = 1;

  return loadEmbedding(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t nnModelReload(uint64_t a1, _WORD *a2, uint64_t a3, uint64_t a4, _WORD *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _DWORD *a10, uint64_t ***a11)
{
  v43 = *MEMORY[0x277D85DE8];
  v41 = 0;
  v39 = 0;
  v37 = 0;
  v38 = 0;
  memset(v42, 0, sizeof(v42));
  v17 = *a11;
  v40 = -1;
  (*(a9 + 96))(a7, a8, "fecfg", "statbnd_phrase_nn_type_joint", &v41, &v40, &v39);
  v18 = *v41;
  v18[cstdlib_strlen(*v41) - 1] = 0;
  v19 = cstdlib_strcmp(*v41, "yes");
  BrokerString = nn_model_getBrokerString(a1, v42, "nnphrase_", 0x100uLL);
  if ((BrokerString & 0x80000000) != 0)
  {
    return BrokerString;
  }

  v24 = fi_init(a2, a3, a5, a6, &v38, 0, v42, "FINN", 1031, 0);
  if ((v24 & 0x80000000) != 0)
  {
    v25 = *(a1 + 32);
    v26 = "load FI model failed";
    goto LABEL_10;
  }

  if (!v17)
  {
    v27 = *(a1 + 8);
    if (v19)
    {
      v28 = heap_Alloc(v27, 16);
      if (v28)
      {
        v17 = v28;
        *v28 = v38;
        goto LABEL_14;
      }
    }

    else
    {
      v34 = heap_Alloc(v27, 8);
      if (v34)
      {
        v17 = v34;
        *v34 = v38;
        goto LABEL_23;
      }
    }

    v24 = 2315264010;
    log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v29, v30, v31, v32, v36);
    return v24;
  }

  if (!*v17 || (v24 = fi_deinit(a1, a4, *v17), (v24 & 0x80000000) == 0))
  {
    if (*a10 || (v33 = v17[1]) == 0 || (v24 = fi_deinit(a1, a4, v33), (v24 & 0x80000000) == 0))
    {
      *v17 = v38;
      if (!v19)
      {
        goto LABEL_23;
      }

LABEL_14:
      BrokerString = nn_model_getBrokerString(a1, v42, "nnword_", 0x100uLL);
      if ((BrokerString & 0x80000000) == 0)
      {
        v24 = fi_init(a2, a3, a5, a6, &v37, 0, v42, "FINN", 1031, 0);
        if ((v24 & 0x80000000) == 0)
        {
          v17[1] = v37;
LABEL_23:
          *a10 = v19 == 0;
          *a11 = v17;
          return v24;
        }

        v25 = *(a1 + 32);
        v26 = "load FI pw model failed";
LABEL_10:
        log_OutText(v25, "FE_PHRASING", 5, 0, v26, v21, v22, v23, v36);
        return v24;
      }

      return BrokerString;
    }
  }

  return v24;
}

uint64_t releaseEmbedding(uint64_t a1, uint64_t *a2, void *a3, _DWORD *a4)
{
  if (!*a1)
  {
    v8 = 0;
    goto LABEL_7;
  }

  v8 = (*(*a1 + 24))(*a3, a3[1]);
  if ((v8 & 0x80000000) == 0)
  {
    if (!*a4 || (v8 = (*(*a1 + 24))(a3[2], a3[3]), (v8 & 0x80000000) == 0))
    {
      *a1 = 0;
LABEL_7:
      *a2 = safeh_GetNullHandle();
      a2[1] = v9;
      *a4 = 1;
    }
  }

  return v8;
}

uint64_t releaseFIModel(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
{
  v5 = *a4;
  if (!*a4)
  {
    v8 = 0;
    goto LABEL_10;
  }

  if (!*v5)
  {
    v8 = 0;
    if (!a3)
    {
      goto LABEL_8;
    }

LABEL_10:
    heap_Free(*(a1 + 8), v5);
    return v8;
  }

  v8 = fi_deinit(a1, a2, *v5);
  if ((v8 & 0x80000000) != 0)
  {
    return v8;
  }

  if (a3)
  {
    goto LABEL_10;
  }

LABEL_8:
  v9 = *(v5 + 8);
  if (!v9)
  {
    goto LABEL_10;
  }

  v8 = fi_deinit(a1, a2, v9);
  if ((v8 & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  return v8;
}

void *setbndfromTN(void *result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = result;
    if (*a2)
    {
      v5 = *(a3 + 1072);
      if (*(a3 + 1072))
      {
        v6 = 0;
        v7 = 0;
        v8 = *(a2 + 4);
        v9 = *(a3 + 1064);
        v10 = (v9 + 112);
        v11 = -1;
        do
        {
          if (v7 < v8 && *(*(a2 + 8) + 4 * v7) == *(v10 - 48))
          {
            if (v6)
            {
              v12 = *(*(a2 + 16) + 2 * v7);
              *(v9 + 184 * v11 + 112) = v12 > 2;
              if (v12 == 4)
              {
                *(v9 + 184 * v11 + 100) = 1;
              }
            }

            ++v7;
          }

          else
          {
            *v10 = 0;
          }

          ++v6;
          v10 += 46;
          ++v11;
        }

        while (v5 != v6);
      }

      v13 = *(a2 + 8);
      if (v13)
      {
        heap_Free(v4[1], v13);
      }

      v14 = *(a2 + 16);
      if (v14)
      {
        heap_Free(v4[1], v14);
      }
    }

    v15 = v4[1];

    return heap_Free(v15, a2);
  }

  return result;
}

uint64_t last_POS(uint64_t result, void *a2, unsigned int a3, const char **a4, unsigned int a5)
{
  if (!result)
  {
    return result;
  }

  v6 = 0;
  for (i = *(*(*a2 + 224 * a3 + 16) + 8) + 1; *(i - 1) == 45; ++i)
  {
    v6 = i;
LABEL_7:
    ;
  }

  if (*(i - 1))
  {
    goto LABEL_7;
  }

  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = *(*(*a2 + 224 * a3 + 16) + 8);
  }

  if (!a5)
  {
    return 0;
  }

  v9 = a5;
  while (cstdlib_strcmp(*a4, v8))
  {
    ++a4;
    if (!--v9)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t first_POS(uint64_t a1, void *a2, unsigned int a3, const char **a4, int a5)
{
  LODWORD(v5) = a5;
  v10 = *(a1 + 8);
  v11 = cstdlib_strlen(*(*(*a2 + 224 * a3 + 16) + 8));
  v12 = heap_Alloc(v10, (v11 + 1));
  if (!v12)
  {
    return 0;
  }

  v13 = v12;
  v14 = 0;
  for (i = *(*(*a2 + 224 * a3 + 16) + 8); ; ++i)
  {
    v16 = *i;
    if (!*i || v16 == 45)
    {
      break;
    }

    v17 = v14++;
    *(v12 + v17) = v16;
  }

  *(v12 + v14) = 0;
  if (v5)
  {
    v5 = v5;
    while (cstdlib_strcmp(v13, *a4))
    {
      ++a4;
      if (!--v5)
      {
        goto LABEL_10;
      }
    }

    v18 = 1;
  }

  else
  {
LABEL_10:
    v18 = 0;
  }

  heap_Free(*(a1 + 8), v13);
  return v18;
}

uint64_t has_POS(uint64_t a1, void *a2, unsigned int a3, const char **a4, unsigned int a5)
{
  result = 0;
  if (a1 && a5)
  {
    v10 = a5;
    while (!cstdlib_strstr(*(*(*a2 + 224 * a3 + 16) + 8), *a4))
    {
      ++a4;
      if (!--v10)
      {
        return 0;
      }
    }

    return 1;
  }

  return result;
}

uint64_t first_character(uint64_t result, void *a2, unsigned int a3, const char **a4, int a5)
{
  if (result)
  {
    LODWORD(v5) = a5;
    utf8_getUTF8Char(**(*a2 + 224 * a3 + 16), 0, __s2);
    if (v5)
    {
      v5 = v5;
      while (cstdlib_strcmp(*a4, __s2))
      {
        ++a4;
        if (!--v5)
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

  return result;
}

uint64_t last_character(uint64_t result, void *a2, unsigned int a3, const char **a4, int a5)
{
  v16 = 0;
  *__s2 = 0;
  if (result)
  {
    LODWORD(v5) = a5;
    v7 = **(*a2 + 224 * a3 + 16);
    v8 = cstdlib_strlen(v7);
    v9 = cstdlib_strlen(v7);
    v10 = v8 - utf8_GetCurrentUtf8Offset(v7, v9 - 1);
    v11 = cstdlib_strlen(v7);
    CurrentUtf8Offset = utf8_GetCurrentUtf8Offset(v7, v11 - 1);
    if (v10 >= Utf8_LengthInBytes(&v7[CurrentUtf8Offset], 1))
    {
      v13 = cstdlib_strlen(v7);
      v14 = utf8_GetCurrentUtf8Offset(v7, v13 - 1);
      utf8_getUTF8Char(v7, v14, __s2);
    }

    if (v5)
    {
      v5 = v5;
      while (cstdlib_strcmp(*a4, __s2))
      {
        ++a4;
        if (!--v5)
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

  return result;
}

uint64_t initPhrasingRuleStruct(uint64_t a1, uint64_t a2, unsigned int a3)
{
  *(a2 + 8) = 0;
  *(a2 + 10) = a3;
  v4 = heap_Calloc(*(a1 + 8), a3, 16);
  *a2 = v4;
  if (v4)
  {
    return 0;
  }

  else
  {
    return 2315264010;
  }
}

uint64_t addPhrasingRule(uint64_t a1, uint64_t a2, const char *a3)
{
  v6 = 1;
  for (i = a3; *i == 94; ++i)
  {
    ++v6;
LABEL_6:
    ;
  }

  if (*i)
  {
    goto LABEL_6;
  }

  v8 = heap_Calloc(*(a1 + 8), v6, 40);
  v9 = *a2 + 16 * *(a2 + 8);
  *v9 = v8;
  if (!v8)
  {
    return 2315264010;
  }

  *(v9 + 8) = v6;
  result = parseOneRule(a1, v8, v6, a3);
  if ((result & 0x80000000) == 0)
  {
    result = 0;
    ++*(a2 + 8);
  }

  return result;
}

uint64_t parseOneRule(uint64_t a1, uint64_t a2, unsigned int a3, const char *a4)
{
  for (i = 0; ; ++i)
  {
    v7 = &a4[i];
    if (*v7 == 45 && v7[1] == 45 && v7[2] == 62)
    {
      break;
    }
  }

  *v7 = 0;
  if (!a3)
  {
    return 0;
  }

  v8 = 0;
  v9 = a3;
  while (2)
  {
    v10 = (a4 - 1);
    do
    {
      v12 = *++v10;
      v11 = v12;
    }

    while (v12 == 32);
    v13 = v10;
    while (v11 != 95)
    {
      v14 = *++v13;
      v11 = v14;
    }

    *v13 = 0;
    v15 = a2 + 40 * v8;
    *(v15 + 8) = cstdlib_atoi(v10);
    do
    {
      v17 = *++v13;
      v16 = v17;
    }

    while (v17 == 32);
    v18 = v13;
    while (v16 != 40)
    {
      v19 = *++v18;
      v16 = v19;
    }

    *v18 = 0;
    if (!cstdlib_strcmp(v13, "last-pos"))
    {
      *v15 = last_POS;
    }

    if (!cstdlib_strcmp(v13, "first-pos"))
    {
      *v15 = first_POS;
    }

    if (!cstdlib_strcmp(v13, "has-pos"))
    {
      *v15 = has_POS;
    }

    if (!cstdlib_strcmp(v13, "first-character"))
    {
      *v15 = first_character;
    }

    if (!cstdlib_strcmp(v13, "last-character"))
    {
      *v15 = last_character;
    }

    *(v15 + 32) = 1;
    do
    {
      v21 = *++v18;
      v20 = v21;
    }

    while (v21 == 32);
    v22 = 0;
    v23 = 1;
    while (v20 == 124)
    {
      *(v15 + 32) = ++v23;
LABEL_35:
      v20 = v18[++v22];
    }

    if (v20 != 41)
    {
      goto LABEL_35;
    }

    v18[v22] = 0;
    v24 = &v18[v22 + 1];
    v25 = heap_Alloc(*(a1 + 8), (v22 + 2));
    *(v15 + 16) = v25;
    if (v25)
    {
      cstdlib_strcpy(v25, v18);
      v26 = heap_Alloc(*(a1 + 8), 8 * *(v15 + 32));
      *(v15 + 24) = v26;
      if (v26)
      {
        *v26 = *(v15 + 16);
        if (*(v15 + 32) >= 2u)
        {
          v27 = 1;
          do
          {
            v28 = (*(v15 + 24) + 8 * v27);
            for (j = *(v28 - 1); ; j = v30 + 1)
            {
              *v28 = j;
              v28 = (*(v15 + 24) + 8 * v27);
              v30 = *v28;
              if (**v28 == 124)
              {
                break;
              }
            }

            *v28 = v30 + 1;
            *v30 = 0;
            ++v27;
          }

          while (v27 < *(v15 + 32));
        }

        while (1)
        {
          v31 = *v24;
          if (!*v24 || v31 == 94)
          {
            break;
          }

          ++v24;
        }

        if (v31 == 94)
        {
          a4 = v24 + 1;
        }

        else
        {
          a4 = v24;
        }

        if (++v8 == v9)
        {
          return 0;
        }

        continue;
      }
    }

    return 2315264010;
  }
}

uint64_t releasePhrasingRuleStruct(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  if (v3)
  {
    v5 = *(a2 + 10);
    if (*(a2 + 10))
    {
      v6 = 0;
      do
      {
        v7 = *a2;
        v8 = *a2 + 16 * v6;
        v9 = *v8;
        if (*v8)
        {
          if (*(v8 + 8))
          {
            v10 = 0;
            v11 = 0;
            do
            {
              v12 = *(*v8 + v10 + 16);
              if (v12)
              {
                heap_Free(*(a1 + 8), v12);
                v7 = *a2;
              }

              v13 = *(*(v7 + 16 * v6) + v10 + 24);
              if (v13)
              {
                heap_Free(*(a1 + 8), v13);
                v7 = *a2;
              }

              ++v11;
              v8 = v7 + 16 * v6;
              v10 += 40;
            }

            while (v11 < *(v8 + 8));
            v9 = *v8;
          }

          heap_Free(*(a1 + 8), v9);
          v5 = *(a2 + 10);
        }

        ++v6;
      }

      while (v6 < v5);
      v3 = *a2;
    }

    heap_Free(*(a1 + 8), v3);
  }

  *(a2 + 10) = 0;
  *a2 = 0;
  return 0;
}

uint64_t applyRules(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
{
  if (!*(a4 + 5))
  {
    return 0;
  }

  v8 = 0;
  v9 = *a4;
  while (1)
  {
    v10 = v9 + 16 * v8;
    if (!*(v10 + 8))
    {
      return 1;
    }

    v11 = 0;
    v12 = 1;
    do
    {
      v13 = *(a2 + 8);
      v14 = *v10 + 40 * v11;
      v15 = *(v14 + 8) + a3;
      if (v15 >= v13)
      {
        v16 = v9 + 16 * v8;
        v17 = 40 * v11;
        while (++v11 < *(v16 + 8))
        {
          v15 = *(*v16 + v17 + 48) + a3;
          v17 += 40;
          if (v15 < v13)
          {
            v12 = 0;
            v14 = *v16 + v17;
            goto LABEL_10;
          }
        }

        goto LABEL_14;
      }

LABEL_10:
      if ((*v14)(a1, a2, v15, *(v14 + 24), *(v14 + 32)) != 1)
      {
        v12 = 0;
      }

      v9 = *a4;
      ++v11;
      v10 = *a4 + 16 * v8;
    }

    while (v11 < *(v10 + 8));
    if (v12 == 1)
    {
      return 1;
    }

LABEL_14:
    if (++v8 >= *(a4 + 5))
    {
      return 0;
    }
  }
}

uint64_t setPhraseProminences(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "DO setPhraseProminences()", a6, a7, a8, 0);
  v27 = (a1 + 736);
  if (((*(a1 + 744) - 1) & 0x8000) != 0)
  {
LABEL_21:
    v25 = *(a1 + 1108);
    v26 = *(a1 + 1096);

    return printLevel(v25, (a1 + 1088), v26, (a1 + 1104), (a1 + 672), a1 + 8, v27, "AFTER SET PHRASE PROMINENCE");
  }

  else
  {
    v12 = (*(a1 + 744) - 1);
    while (1)
    {
      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "processing (phrase) node %d", v9, v10, v11, v12);
      result = printNode(*(a1 + 1108), (a1 + 1088), *(a1 + 1096), (a1 + 1104), (a1 + 672), a1 + 8, (*(a1 + 736) + 32 * v12), v12);
      if ((result & 0x80000000) != 0)
      {
        break;
      }

      v14 = *v27;
      v15 = (*v27 + 32 * v12);
      v16 = (v15[1] - 1);
      if (v16 >= *v15)
      {
        v17 = 0;
        v18 = *(a1 + 304);
        do
        {
          v19 = v16;
          if (v18)
          {
            for (i = 0; i < v18; ++i)
            {
              if (!cstdlib_strcmp((*(a1 + 536) + *(*(a1 + 544) + 4 * *(*(a1 + 296) + 4 * i))), *(*(*(a1 + 672) + 224 * v19 + 16) + 8 * *(a1 + 26))))
              {
                v21 = v17 == 0;
                v17 = 1;
                if (v21)
                {
                  v22 = 2;
                }

                else
                {
                  v22 = 1;
                }

                if (v21)
                {
                  v23 = "set word[%d] %s to _MAINACCENT";
                }

                else
                {
                  v23 = "set word[%d] %s to _ACCENTED";
                }

                *(*(a1 + 672) + 224 * v19 + 72) = v22;
                log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, v23, v9, v10, v11, v19);
              }

              v18 = *(a1 + 304);
            }

            v14 = *v27;
          }

          v16 = (v19 - 1);
        }

        while (v16 >= *(v14 + 32 * v12));
      }

      if (v12-- < 1)
      {
        goto LABEL_21;
      }
    }
  }

  return result;
}

uint64_t setCompoundProminences(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v46 = 0;
  v44 = 0;
  v45 = 0;
  log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "DO setCompoundProminences()", a6, a7, a8, 0);
  v12 = *(a1 + 744) - 1;
  if ((v12 & 0x8000) == 0)
  {
    v13 = (a1 + 672);
    memset(v43, 0, sizeof(v43));
    v41 = v12;
    v42 = 0;
    while (1)
    {
      v14 = v41;
      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "processing (phrase) node %d", v9, v10, v11, v41);
      matched = printNode(*(a1 + 1108), (a1 + 1088), *(a1 + 1096), (a1 + 1104), (a1 + 672), a1 + 8, (*(a1 + 736) + 32 * v14), v14);
      if ((matched & 0x80000000) != 0)
      {
        return matched;
      }

      v16 = (*(a1 + 736) + 32 * v41);
      v17 = (v16[1] - 1);
      v18 = *v16;
      if (v17 >= v18)
      {
        break;
      }

LABEL_5:
      v41 = v14 - 1;
      if (v14 < 1)
      {
        return matched;
      }
    }

    while (1)
    {
      v19 = *(*v13 + 224 * v17 + 56);
      if (v19)
      {
        v20 = *(a1 + 32);
        v21 = v19 + 32 * v20;
        if (*(v21 + 4) == 1)
        {
          v22 = *(v21 + 8);
          if (v22 >= v18 && !cstdlib_strcmp(*(*(*v13 + 224 * *(v21 + 8) + 56) + 32 * v20 + 16), "NP"))
          {
            break;
          }
        }
      }

LABEL_13:
      v17 = (v17 - 1);
      v18 = *(*(a1 + 736) + 32 * v41);
      if (v17 < v18)
      {
        goto LABEL_5;
      }
    }

    v23 = v17;
    log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  processing (NP phrase) node %d,%d", v9, v10, v11, v22);
    v46 = 0;
    v44 = 0;
    v45 = 0;
    if (v17 < v22)
    {
LABEL_12:
      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "    no rules fire", v24, v25, v26, 0);
      v14 = v41;
      goto LABEL_13;
    }

    v27 = v17;
    while (1)
    {
      v28 = v27;
      v29 = v27 - 1;
      v30 = *(*v13 + 224 * v27 + 72) != 2 || v27 < 1;
      if (!v30 && v23 > v22 && *(*v13 + 224 * (v27 - 1) + 72) == 1)
      {
        v40 = (v27 - 1);
        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "    found PRM pattern word[%d]=%s PRM=%d word[%d]=%s PRM=%d : apply rules", v24, v25, v26, (v27 - 1));
        *&v43[4] = v27;
        *v43 = 1;
        *&v43[6] = 0;
        if (*(a1 + 320))
        {
          break;
        }
      }

LABEL_24:
      v23 = v29;
      v27 = v29;
      if (v29 < v22)
      {
        goto LABEL_12;
      }
    }

    v32 = 0;
    v33 = 0;
    while (1)
    {
      v34 = *(a1 + 312);
      v35 = v33;
      v36 = *(v34 + 24 * v33);
      if (v36)
      {
        matched = matchPANDPCONTEXT_TRule("LEFT", (a1 + 1088), (a1 + 1104), *(a1 + 1096), a1 + 8, a1 + 672, v36, v43, &v46, &v42, 1u);
        if ((matched & 0x80000000) != 0)
        {
          return matched;
        }

        if (v46 != 1)
        {
          goto LABEL_43;
        }

        v34 = *(a1 + 312);
      }

      else
      {
        v46 = 1;
      }

      v37 = *(v34 + 24 * v35 + 8);
      if (v37)
      {
        matched = matchPANDPCONTEXT_TRule("CUR", (a1 + 1088), (a1 + 1104), *(a1 + 1096), a1 + 8, a1 + 672, v37, v43, &v45, &v42, 0);
        if ((matched & 0x80000000) != 0)
        {
          return matched;
        }

        if (v45 != 1)
        {
          goto LABEL_43;
        }

        v34 = *(a1 + 312);
      }

      else
      {
        v45 = 1;
      }

      v25 = *(v34 + 24 * v35 + 16);
      if (v25)
      {
        matched = matchPANDPCONTEXT_TRule("RIGHT", (a1 + 1088), (a1 + 1104), *(a1 + 1096), a1 + 8, a1 + 672, v25, v43, &v44, &v42, 2u);
        if ((matched & 0x80000000) != 0)
        {
          return matched;
        }
      }

      else
      {
        v44 = 1;
      }

LABEL_43:
      if (v46 == 1 && v45 == 1 && v44 == 1)
      {
        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  stress shift rule %d FIRED", v24, v25, v26, v32);
        v38 = *(a1 + 672);
        *(v38 + 224 * v28 + 72) = 1;
        v14 = v41;
        *(v38 + 224 * v40 + 72) = 2;
        goto LABEL_13;
      }

      v33 = v35 + 1;
      v32 = (v35 + 1);
      if (v32 >= *(a1 + 320))
      {
        goto LABEL_24;
      }
    }
  }

  return 0;
}

uint64_t getProminence(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = setPhraseProminences(a1, a2, a3, a4, a5, a6, a7, a8);
  if ((result & 0x80000000) == 0)
  {
    result = setCompoundProminences(a1, v10, v11, v12, v13, v14, v15, v16);
    if ((result & 0x80000000) == 0)
    {
      v17 = *(a1 + 1108);
      v18 = *(a1 + 1096);

      return printAsString(v17, (a1 + 1088), v18, (a1 + 1104), (a1 + 672), a1 + 8, (a1 + 736), "FEPHRRES: ");
    }
  }

  return result;
}

uint64_t logPANDPRULE_TRule(uint64_t result, const char **a2, unsigned __int16 *a3, char *__s, uint64_t *a5, uint64_t **a6)
{
  if (result)
  {
    if (!*a6 || (result = logPANDPCONTEXT_TRule(a2, a3, __s, a5, *a6), (result & 0x80000000) == 0))
    {
      *__s = 2121504;
      result = add2Str(*a5, a2, a3, __s);
      if ((result & 0x80000000) == 0)
      {
        v11 = a6[1];
        if (!v11 || (result = logPANDPCONTEXT_TRule(a2, a3, __s, a5, v11), (result & 0x80000000) == 0))
        {
          *__s = 2121504;
          result = add2Str(*a5, a2, a3, __s);
          if ((result & 0x80000000) == 0)
          {
            v12 = a6[2];
            if (v12)
            {

              return logPANDPCONTEXT_TRule(a2, a3, __s, a5, v12);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t logPANDPCONTEXT_TRule(const char **a1, unsigned __int16 *a2, char *__s, uint64_t *a4, uint64_t *a5)
{
  if (*(a5 + 4))
  {
    v10 = 0;
    v11 = 0;
    while (1)
    {
      v12 = *a5;
      v13 = (*a5 + v10);
      if (!*(v13 + 4))
      {
        goto LABEL_13;
      }

      v14 = "!";
      if ((v13[2] & 1) != 0 || (v14 = "HASCOMMA ", (v13[2] & 2) != 0) || (v14 = "DIRECTIVE_MOVE2NEXT ", (v13[2] & 4) != 0) || (v14 = "ISLASTINPHR ", (v13[2] & 8) != 0) || (v14 = "ISFIRSTINPHR ", (v13[2] & 0x10) != 0))
      {
        v15 = v13[2] & 1;
        cstdlib_strcpy(__s, v14);
      }

      else
      {
        v15 = 1;
      }

      result = add2Str(*a4, a1, a2, __s);
      if (v15)
      {
        if ((result & 0x80000000) == 0)
        {
LABEL_13:
          result = add2Str(*a4, a1, a2, "[");
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = add2Str(*a4, a1, a2, (a4[66] + *(a4[67] + 4 * *(a4[8] + 8 * *v13 + 4))));
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          sprintf(__s, " %d(", *(v12 + v10 + 2));
          result = add2Str(*a4, a1, a2, __s);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = add2Str(*a4, a1, a2, (a4[61] + *(a4[62] + 4 * *(v12 + v10 + 2))));
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = add2Str(*a4, a1, a2, ")] ");
        }
      }

      if ((result & 0x80000000) == 0)
      {
        ++v11;
        v10 += 6;
        if (v11 < *(a5 + 4))
        {
          continue;
        }
      }

      return result;
    }
  }

  return 0;
}

void *freePANDPRULE_TRule(void *result, uint64_t *a2)
{
  v3 = result;
  v4 = *a2;
  if (*a2)
  {
    if (*(v4 + 8))
    {
      heap_Free(result[1], *v4);
      *v4 = 0;
      v4 = *a2;
    }

    result = heap_Free(v3[1], v4);
    *a2 = 0;
  }

  v5 = a2[1];
  if (v5)
  {
    if (*(v5 + 8))
    {
      heap_Free(v3[1], *v5);
      *v5 = 0;
      v5 = a2[1];
    }

    result = heap_Free(v3[1], v5);
    a2[1] = 0;
  }

  v6 = a2[2];
  if (v6)
  {
    if (*(v6 + 8))
    {
      heap_Free(v3[1], *v6);
      *v6 = 0;
      v6 = a2[2];
    }

    result = heap_Free(v3[1], v6);
    a2[2] = 0;
  }

  return result;
}

uint64_t freePandPRules(void *a1)
{
  v2 = *a1;
  v3 = a1[62];
  if (v3)
  {
    heap_Free(*(v2 + 8), v3);
    a1[62] = 0;
  }

  v4 = a1[64];
  if (v4)
  {
    v5 = ssftriff_reader_ReleaseChunkData(v4);
    if ((v5 & 0x80000000) != 0)
    {
      return v5;
    }

    a1[64] = 0;
  }

  else
  {
    v5 = 0;
  }

  v6 = a1[67];
  if (v6)
  {
    heap_Free(*(v2 + 8), v6);
    a1[67] = 0;
  }

  v7 = a1[69];
  if (v7)
  {
    v5 = ssftriff_reader_ReleaseChunkData(v7);
    if ((v5 & 0x80000000) != 0)
    {
      return v5;
    }

    a1[69] = 0;
  }

  v8 = a1[57];
  if (v8)
  {
    heap_Free(*(v2 + 8), v8);
    a1[57] = 0;
  }

  v9 = a1[59];
  if (v9)
  {
    v5 = ssftriff_reader_ReleaseChunkData(v9);
    if ((v5 & 0x80000000) != 0)
    {
      return v5;
    }

    a1[59] = 0;
  }

  v10 = a1[8];
  if (v10)
  {
    heap_Free(*(v2 + 8), v10);
    a1[8] = 0;
    *(a1 + 36) = 0;
  }

  if (*(a1 + 44))
  {
    v11 = 0;
    v12 = 8;
    do
    {
      freePANDPRULE_TRule(v2, (a1[10] + v12));
      ++v11;
      v12 += 32;
    }

    while (v11 < *(a1 + 44));
  }

  v13 = a1[10];
  if (v13)
  {
    heap_Free(*(v2 + 8), v13);
    a1[10] = 0;
  }

  *(a1 + 44) = 0;
  if (*(a1 + 52))
  {
    v14 = 0;
    v15 = 8;
    do
    {
      freePANDPRULE_TRule(v2, (a1[12] + v15));
      ++v14;
      v15 += 32;
    }

    while (v14 < *(a1 + 52));
  }

  v16 = a1[12];
  if (v16)
  {
    heap_Free(*(v2 + 8), v16);
    a1[12] = 0;
  }

  *(a1 + 52) = 0;
  if (*(a1 + 60))
  {
    v17 = 0;
    v18 = 8;
    do
    {
      freePANDPRULE_TRule(v2, (a1[14] + v18));
      ++v17;
      v18 += 32;
    }

    while (v17 < *(a1 + 60));
  }

  v19 = a1[14];
  if (v19)
  {
    heap_Free(*(v2 + 8), v19);
    a1[14] = 0;
  }

  *(a1 + 60) = 0;
  if (*(a1 + 72))
  {
    v20 = 0;
    do
    {
      heap_Free(*(v2 + 8), *(a1[16] + 8 * v20));
      *(a1[16] + 8 * v20++) = 0;
    }

    while (v20 < *(a1 + 72));
  }

  *(a1 + 72) = 0;
  v21 = a1[17];
  if (v21)
  {
    heap_Free(*(v2 + 8), v21);
    a1[17] = 0;
  }

  v22 = a1[16];
  if (v22)
  {
    heap_Free(*(v2 + 8), v22);
    a1[16] = 0;
  }

  if (*(a1 + 80))
  {
    v23 = 0;
    v24 = 8;
    do
    {
      freePANDPRULE_TRule(v2, (a1[19] + v24));
      ++v23;
      v24 += 32;
    }

    while (v23 < *(a1 + 80));
  }

  v25 = a1[19];
  if (v25)
  {
    heap_Free(*(v2 + 8), v25);
    a1[19] = 0;
  }

  *(a1 + 80) = 0;
  if (*(a1 + 92))
  {
    v26 = 0;
    v27 = a1[22];
    do
    {
      freePANDPRULE_TRule(v2, *(v27 + 40 * v26));
      v28 = a1[22];
      v29 = *(v28 + 40 * v26);
      if (v29)
      {
        heap_Free(*(v2 + 8), v29);
        v28 = a1[22];
        *(v28 + 40 * v26) = 0;
      }

      if (*(v28 + 40 * v26 + 16))
      {
        v30 = 0;
        v31 = 8;
        do
        {
          freePANDPRULE_TRule(v2, (*(v28 + 40 * v26 + 8) + v31));
          ++v30;
          v28 = a1[22];
          v31 += 32;
        }

        while (v30 < *(v28 + 40 * v26 + 16));
      }

      freePANDPRULE_TRule(v2, (*(v28 + 40 * v26 + 8) + 8));
      v27 = a1[22];
      if (*(v27 + 40 * v26 + 8))
      {
        heap_Free(*(v2 + 8), *(v27 + 40 * v26 + 8));
        v27 = a1[22];
        *(v27 + 40 * v26 + 8) = 0;
      }

      v32 = v27 + 40 * v26;
      *(v32 + 16) = 0;
      if (*(v32 + 32))
      {
        v33 = 0;
        v34 = 0;
        do
        {
          freePANDPRULE_TRule(v2, (*(v27 + 40 * v26 + 24) + v33));
          ++v34;
          v27 = a1[22];
          v33 += 32;
        }

        while (v34 < *(v27 + 40 * v26 + 32));
      }

      if (*(v27 + 40 * v26 + 24))
      {
        heap_Free(*(v2 + 8), *(v27 + 40 * v26 + 24));
        v27 = a1[22];
        *(v27 + 40 * v26 + 24) = 0;
      }

      *(v27 + 40 * v26++ + 32) = 0;
    }

    while (v26 < *(a1 + 92));
  }

  else
  {
    v27 = a1[22];
    if (!v27)
    {
      goto LABEL_64;
    }
  }

  heap_Free(*(v2 + 8), v27);
  a1[22] = 0;
LABEL_64:
  *(a1 + 92) = 0;
  v35 = a1[25];
  if (v35)
  {
    heap_Free(*(v2 + 8), v35);
    a1[25] = 0;
  }

  *(a1 + 104) = 0;
  v36 = a1[28];
  if (v36)
  {
    heap_Free(*(v2 + 8), v36);
    a1[28] = 0;
  }

  *(a1 + 116) = 0;
  v37 = a1[30];
  if (v37)
  {
    heap_Free(*(v2 + 8), v37);
    a1[30] = 0;
  }

  *(a1 + 124) = 0;
  if (*(a1 + 132))
  {
    v38 = 0;
    v39 = 8;
    do
    {
      freePANDPRULE_TRule(v2, (a1[32] + v39));
      ++v38;
      v39 += 32;
    }

    while (v38 < *(a1 + 132));
  }

  *(a1 + 132) = 0;
  v40 = a1[32];
  if (v40)
  {
    heap_Free(*(v2 + 8), v40);
    a1[32] = 0;
  }

  v41 = a1[34];
  if (v41)
  {
    heap_Free(*(v2 + 8), v41);
    a1[34] = 0;
  }

  *(a1 + 140) = 0;
  v42 = a1[4];
  if (v42)
  {
    heap_Free(*(v2 + 8), v42);
    a1[4] = 0;
  }

  *(a1 + 20) = 0;
  v43 = a1[6];
  if (v43)
  {
    heap_Free(*(v2 + 8), v43);
    a1[6] = 0;
  }

  *(a1 + 28) = 0;
  v44 = a1[36];
  if (v44)
  {
    heap_Free(*(v2 + 8), v44);
    a1[36] = 0;
  }

  v45 = a1[38];
  if (v45)
  {
    if (*(a1 + 156))
    {
      v46 = 0;
      v47 = 0;
      do
      {
        freePANDPRULE_TRule(v2, (a1[38] + v46));
        ++v47;
        v46 += 24;
      }

      while (v47 < *(a1 + 156));
      v45 = a1[38];
    }

    *(a1 + 156) = 0;
    heap_Free(*(v2 + 8), v45);
    a1[38] = 0;
  }

  if (*(a1 + 160))
  {
    v48 = 0;
    v49 = a1[42];
    do
    {
      v50 = (v49 + 16 * v48);
      if (*v50)
      {
        v51 = 0;
        v52 = 0;
        do
        {
          freePANDPRULE_TRule(v2, (*(v49 + 16 * v48 + 8) + v51));
          ++v52;
          v49 = a1[42];
          v51 += 24;
        }

        while (v52 < *(v49 + 16 * v48));
        v50 = (v49 + 16 * v48);
      }

      *v50 = 0;
      heap_Free(*(v2 + 8), *(v49 + 16 * v48 + 8));
      v49 = a1[42];
      *(v49 + 16 * v48++ + 8) = 0;
    }

    while (v48 < *(a1 + 160));
    goto LABEL_98;
  }

  v49 = a1[42];
  if (v49)
  {
LABEL_98:
    heap_Free(*(v2 + 8), v49);
    a1[42] = 0;
  }

  v53 = a1[41];
  if (v53)
  {
    heap_Free(*(v2 + 8), v53);
    a1[41] = 0;
  }

  *(a1 + 160) = 0;
  if (*(a1 + 292))
  {
    v54 = 0;
    do
    {
      heap_Free(*(v2 + 8), *(a1[71] + 8 * v54));
      *(a1[71] + 8 * v54++) = 0;
    }

    while (v54 < *(a1 + 292));
  }

  v55 = a1[72];
  if (v55)
  {
    heap_Free(*(v2 + 8), v55);
    a1[72] = 0;
  }

  v56 = a1[71];
  if (v56)
  {
    heap_Free(*(v2 + 8), v56);
    a1[71] = 0;
  }

  *(a1 + 292) = 0;
  if (*(a1 + 304))
  {
    v57 = 0;
    do
    {
      heap_Free(*(v2 + 8), *(a1[74] + 8 * v57));
      *(a1[74] + 8 * v57++) = 0;
    }

    while (v57 < *(a1 + 304));
  }

  v58 = a1[75];
  if (v58)
  {
    heap_Free(*(v2 + 8), v58);
    a1[75] = 0;
  }

  v59 = a1[74];
  if (v59)
  {
    heap_Free(*(v2 + 8), v59);
    a1[74] = 0;
  }

  *(a1 + 304) = 0;
  if (*(a1 + 316))
  {
    v60 = 0;
    do
    {
      heap_Free(*(v2 + 8), *(a1[77] + 8 * v60));
      *(a1[77] + 8 * v60++) = 0;
    }

    while (v60 < *(a1 + 316));
  }

  v61 = a1[78];
  if (v61)
  {
    heap_Free(*(v2 + 8), v61);
    a1[78] = 0;
  }

  v62 = a1[77];
  if (v62)
  {
    heap_Free(*(v2 + 8), v62);
    a1[77] = 0;
  }

  *(a1 + 316) = 0;
  if (*(a1 + 180))
  {
    v63 = 0;
    do
    {
      heap_Free(*(v2 + 8), *(a1[43] + 8 * v63));
      *(a1[43] + 8 * v63++) = 0;
    }

    while (v63 < *(a1 + 180));
  }

  v64 = a1[44];
  if (v64)
  {
    heap_Free(*(v2 + 8), v64);
    a1[44] = 0;
  }

  v65 = a1[43];
  if (v65)
  {
    heap_Free(*(v2 + 8), v65);
    a1[43] = 0;
  }

  *(a1 + 180) = 0;
  v66 = a1[81];
  if (v66)
  {
    heap_Free(*(v2 + 8), v66);
    a1[81] = 0;
  }

  NullHandle = safeh_GetNullHandle();
  if (!safeh_HandlesEqual(a1[53], a1[54], NullHandle, v68))
  {
    nuance_pcre_DeInit(a1[53], a1[54]);
    nuance_pcre_ObjClose(a1[53], a1[54]);
  }

  cstdlib_memset(a1, 0, 0x298uLL);
  return v5;
}

uint64_t do_pcre_exec(uint64_t a1, unsigned int a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = *MEMORY[0x277D85DE8];
  if (!a3 || (v9 = a6, a7 = a5, a6 = a4, a5 >= a4))
  {
    log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "invalid arg for regex", a6, a7, a8, 0);
    return 2315264007;
  }

  *v9 = 0;
  v10 = nuance_pcre_exec(*(a1 + 424), *(a1 + 432), *(a1 + 448) + *(*(a1 + 456) + 4 * a2), 0, a3, a4, a5, 0, v22, 30);
  if ((v10 & 0x80000000) == 0)
  {
    if (v10)
    {
      v11 = 0;
      *v9 = 1;
      return v11;
    }

    return 0;
  }

  v12 = nuance_pcre_ErrorToLhError(v10);
  v11 = v12;
  if (v12 >> 20 != 2213)
  {
    return v11;
  }

  if ((v12 & 0x1FFF) == 0x14)
  {
    return 0;
  }

  if ((v12 & 0x1FFF) == 0xA)
  {
    v17 = *(*a1 + 32);
    v18 = 11002;
    v19 = 0;
  }

  else
  {
    v17 = *(*a1 + 32);
    v21 = "lhError";
    v19 = "%s%x";
    v18 = 11027;
  }

  log_OutPublic(v17, "FE_PHRASING", v18, v19, v13, v14, v15, v16, v21);
  return v11;
}

uint64_t getCompoundAccent(uint64_t a1, char *__s, _DWORD *a3, _WORD *a4, _WORD *a5)
{
  v26 = *MEMORY[0x277D85DE8];
  if (!__s)
  {
    return 2315264007;
  }

  *a3 = 0;
  v10 = *(a1 + 648);
  v11 = cstdlib_strlen(__s);
  v12 = nuance_pcre_exec(*(a1 + 424), *(a1 + 432), v10, 0, __s, v11, 0, 0, &v24, 30);
  if ((v12 & 0x80000000) == 0)
  {
    if (v12)
    {
      v13 = 0;
      *a3 = 1;
      *a4 = v24 + 1;
      *a5 = v25 - 1;
      return v13;
    }

    return 0;
  }

  v14 = nuance_pcre_ErrorToLhError(v12);
  v13 = v14;
  if (v14 >> 20 != 2213)
  {
    return v13;
  }

  if ((v14 & 0x1FFF) == 0x14)
  {
    return 0;
  }

  if ((v14 & 0x1FFF) == 0xA)
  {
    v19 = *(*a1 + 32);
    v20 = 11002;
    v21 = 0;
  }

  else
  {
    v19 = *(*a1 + 32);
    v23 = "lhError";
    v21 = "%s%x";
    v20 = 11027;
  }

  log_OutPublic(v19, "FE_PHRASING", v20, v21, v15, v16, v17, v18, v23);
  return v13;
}

uint64_t matchPANDPCONTEXT_TRule(uint64_t a1, const char **a2, unsigned __int16 *a3, char *__s, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int *a9, uint64_t a10, unsigned int a11)
{
  v25 = 1;
  *a9 = 0;
  *(a8 + 6) = 0;
  if (*(a5 + 8))
  {
    matched = logPANDPCONTEXT_TRule(a2, a3, __s, a5, a7);
    if ((matched & 0x80000000) != 0)
    {
      return matched;
    }

    log_OutText(*(*a5 + 32), "FE_PHRASING", 5, 0, "         %s %s", v17, v18, v19, a1);
    cstdlib_strcpy(*a2, "");
  }

  else
  {
    matched = 0;
  }

  if (*(a7 + 8))
  {
    v21 = 0;
    v22 = 0;
    while (1)
    {
      matched = matchREGEX_TRule(a5, a6, (*a7 + v21), a8, &v25, a10, a11, a8);
      if ((matched & 0x80000000) != 0)
      {
        break;
      }

      v23 = v25;
      if (v25 != 1)
      {
        goto LABEL_11;
      }

      ++v22;
      v21 += 6;
      if (v22 >= *(a7 + 8))
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v23 = 1;
LABEL_11:
    *a9 = v23;
  }

  return matched;
}

uint64_t matchREGEX_TRule(unsigned __int16 *a1, uint64_t a2, unsigned __int16 *a3, unsigned __int16 *a4, int *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a7;
  v10 = a5;
  v44 = 0;
  v15 = a4[2];
  v43 = a4[2];
  *a5 = 0;
  if (a1[4])
  {
    log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "           regex %d", a6, a7, a8, a3[1]);
  }

  v16 = *(a3 + 4);
  if (*(a3 + 4))
  {
    if ((v16 & 4) != 0)
    {
      if (v8 == 2)
      {
        ++a4[4];
      }

      else if (v8 == 1)
      {
        ++a4[3];
      }

      if (a1[4])
      {
        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "           DIRECTIVE_MOVE2NEXT - window increased (ruleDef->left_window=%d ruleDef->right_window=%d)", a6, a7, a8, a4[3]);
      }

      v22 = 0;
      goto LABEL_29;
    }

    v42 = v10;
    v17 = a6;
    v18 = (v16 >> 1) & 1;
    v19 = (v16 >> 3) & 1;
    v20 = (v16 >> 4) & 1;
    v41 = v16 & 1;
  }

  else
  {
    v42 = v10;
    v17 = a6;
    v41 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
  }

  if (a1[4] >= 2u)
  {
    log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "           ruleDef[domain=%s(%d) wordIdx=%d left_window=%d right_window=%d] defMapIdx=%s(%d) bNegateMatch=%d bHasComma=%d", a6, a7, a8, DOMAIN2STRING[*a4]);
  }

  if (v18)
  {
    v21 = a4[2];
    if (a1[4])
    {
      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "           pSent->words[%d].bHasComma = %d", a6, a7, a8, a4[2]);
      v21 = a4[2];
    }

    v10 = v42;
    v22 = 0;
    v23 = *(*a2 + 224 * v21 + 28);
LABEL_24:
    v26 = v41 ^ (v23 == 1);
LABEL_30:
    *v10 = v26;
    return v22;
  }

  if (v19)
  {
    v24 = a4[2];
    if (a1[4])
    {
      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "           pSent->words[%d].bIsLastInPhr = %d", a6, a7, a8, a4[2]);
      v24 = a4[2];
    }

    v10 = v42;
    v22 = 0;
    v23 = *(*a2 + 224 * v24 + 40);
    goto LABEL_24;
  }

  if (v20)
  {
    v25 = a4[2];
    if (a1[4])
    {
      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "           pSent->words[%d].bIsFirstInPhr = %d", a6, a7, a8, a4[2]);
      v25 = a4[2];
    }

    v10 = v42;
    v22 = 0;
    v23 = *(*a2 + 224 * v25 + 44);
    goto LABEL_24;
  }

  v28 = *a4;
  v29 = v17;
  if ((*a4 - 1) <= 2)
  {
    v10 = v42;
    switch(v8)
    {
      case 0:
        goto LABEL_39;
      case 2:
        v15 += a4[4] + 1;
        if (v15 < *(a2 + 8))
        {
LABEL_37:
          v43 = v15;
          goto LABEL_39;
        }

        break;
      case 1:
        v15 += ~a4[3];
        if (v15 >= 0)
        {
          goto LABEL_37;
        }

        break;
    }

    v26 = a1[4];
    if (a1[4])
    {
      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "           context not found. rule not applicable. RETURN LH_FALSE", a6, a7, a8, 0);
      v26 = 0;
    }

    goto LABEL_61;
  }

  v10 = v42;
LABEL_39:
  if (v28 <= 2)
  {
    if (v28 == 1)
    {
      v30 = *(*(*a2 + 224 * v15 + 16) + 8 * *a3);
      goto LABEL_64;
    }

    if (v28 == 2)
    {
      v30 = *(*(*a2 + 224 * v15 + 56) + 32 * *a3 + 16);
      goto LABEL_64;
    }

    goto LABEL_57;
  }

  if (v28 == 3)
  {
    if (*a3 == a1[9])
    {
      v30 = (*(a2 + 16) + *(*(a2 + 24) + 2 * v15));
    }

    else
    {
      v30 = *(*(*a2 + 224 * v15 + 16) + 8 * *a3);
    }

LABEL_64:
    v32 = a1[4];
    if (v30)
    {
      goto LABEL_65;
    }

LABEL_69:
    *v10 = 0;
    if (!v32)
    {
      v22 = 0;
      goto LABEL_80;
    }

    log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "           NULL STR FOUND - no match", a6, a7, a8, 0);
    v22 = 0;
    goto LABEL_71;
  }

  if (v28 != 4)
  {
    if (v28 == 5)
    {
      if (*a3 == a1[9])
      {
        v30 = *(a2 + 16);
      }

      else
      {
        v30 = *(a2 + 32);
      }

      goto LABEL_64;
    }

LABEL_57:
    v32 = a1[4];
    goto LABEL_69;
  }

  v31 = adjustWordIdxByWindow(a1, a2, a4, v8, &v44, &v43, a7, a8);
  if ((v31 & 0x80000000) != 0)
  {
    return v31;
  }

  v26 = v44;
  if (!v44)
  {
LABEL_61:
    v22 = 0;
    goto LABEL_30;
  }

  v30 = *(*(*a2 + 224 * v43 + 64) + 8 * *a3);
  v32 = a1[4];
  if (!v30)
  {
    if (a1[4])
    {
      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "           NULL STR FOUND - no match", a6, a7, a8, 0);
      v32 = a1[4];
    }

    v22 = 0;
    *v10 = 0;
LABEL_77:
    if (v32)
    {
      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "           REGEX FAILED", a6, a7, a8, 0);
    }

LABEL_80:
    if (!v41)
    {
      v26 = a1[4];
      if (!a1[4])
      {
        goto LABEL_30;
      }

      v37 = *(*a1 + 32);
      v38 = "           return LH_FALSE";
      goto LABEL_85;
    }

    *v29 = a3[1];
    if (a1[4])
    {
      v39 = *(*a1 + 32);
      v40 = "           negate match - return LH_TRUE";
LABEL_88:
      log_OutText(v39, "FE_PHRASING", 5, 0, v40, a6, a7, a8, 0);
    }

LABEL_29:
    v26 = 1;
    goto LABEL_30;
  }

LABEL_65:
  if (v32)
  {
    log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "           STR=%s", a6, a7, a8, v30);
  }

  v33 = a3[1];
  v34 = cstdlib_strlen(v30);
  v22 = do_pcre_exec(a1, v33, v30, v34, 0, v10, v35, v36);
  if ((v22 & 0x80000000) == 0)
  {
LABEL_71:
    v32 = a1[4];
    if (*v10 == 1)
    {
      if (a1[4])
      {
        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "           REGEX FIRED", a6, a7, a8, 0);
      }

      if (v41)
      {
        v26 = a1[4];
        if (!a1[4])
        {
          goto LABEL_30;
        }

        v37 = *(*a1 + 32);
        v38 = "           negate match - return LH_FALSE";
LABEL_85:
        log_OutText(v37, "FE_PHRASING", 5, 0, v38, a6, a7, a8, 0);
        v26 = 0;
        goto LABEL_30;
      }

      *v29 = a3[1];
      if (a1[4])
      {
        v39 = *(*a1 + 32);
        v40 = "           return LH_TRUE";
        goto LABEL_88;
      }

      goto LABEL_29;
    }

    goto LABEL_77;
  }

  return v22;
}

uint64_t matchPANDPRULE_TRule(uint64_t a1, const char **a2, unsigned __int16 *a3, char *__s, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int *a9)
{
  v25 = 1;
  if (*(a5 + 8))
  {
    matched = logPANDPRULE_TRule(a1, a2, a3, __s, a5, a7);
    if ((matched & 0x80000000) != 0)
    {
      return matched;
    }

    log_OutText(*(*a5 + 32), "FE_PHRASING", 5, 0, "       <%s>", v16, v17, v18, *a2);
    cstdlib_strcpy(*a2, "");
  }

  else
  {
    matched = 0;
  }

  *a9 = 0;
  if (*a7)
  {
    matched = matchPANDPCONTEXT_TRule("LEFT", a2, a3, __s, a5, a6, *a7, a8, &v25, v24, 1u);
    if ((matched & 0x80000000) != 0)
    {
      return matched;
    }

    v20 = v25;
    if (v25 != 1)
    {
      goto LABEL_15;
    }
  }

  v21 = *(a7 + 8);
  if (v21)
  {
    v25 = 0;
    matched = matchPANDPCONTEXT_TRule("CUR", a2, a3, __s, a5, a6, v21, a8, &v25, v24, 0);
    if ((matched & 0x80000000) != 0)
    {
      return matched;
    }

    v20 = v25;
    if (v25 != 1)
    {
LABEL_15:
      *a9 = v20;
      return matched;
    }
  }

  v22 = *(a7 + 16);
  if (!v22)
  {
    v20 = 1;
    goto LABEL_15;
  }

  v25 = 0;
  matched = matchPANDPCONTEXT_TRule("RIGHT", a2, a3, __s, a5, a6, v22, a8, &v25, v24, 2u);
  if ((matched & 0x80000000) == 0)
  {
    v20 = v25;
    goto LABEL_15;
  }

  return matched;
}

uint64_t matchMAPSTRSTR_TRule(uint64_t a1, void *a2, unsigned int *a3, uint64_t a4, _DWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a5 = 0;
  if (*(a1 + 8))
  {
    log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "           compare %s %s", a6, a7, a8, *(a1 + 528) + *(*(a1 + 536) + 4 * *a3));
  }

  if (!cstdlib_strcmp((*(a1 + 528) + *(*(a1 + 536) + 4 * *a3)), *(*(*a2 + 224 * *(a4 + 4) + 16) + 8 * *(a1 + 16))))
  {
    if (*(a1 + 8))
    {
      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "           FOUND", v13, v14, v15, 0);
    }

    *a5 = 1;
  }

  return 0;
}

uint64_t matchMMAPREGEX2NUM_TRule(unsigned __int16 *a1, uint64_t a2, unsigned __int16 *a3, unsigned __int16 *a4, int *a5, unsigned __int16 *a6, uint64_t a7, uint64_t a8)
{
  *a5 = 0;
  matched = matchREGEX_TRule(a1, a2, a3, a4, a5, v13, 0, a8);
  if ((matched & 0x80000000) == 0 && *a5 == 1)
  {
    FLOATSUR_PLUS(a6, a6, a3 + 3);
  }

  return matched;
}

uint64_t matchMAPRULE2NUMANDOPERATOR_TRule(uint64_t a1, const char **a2, unsigned __int16 *a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int *a9, unsigned __int16 *a10)
{
  *a9 = 0;
  matched = matchPANDPRULE_TRule(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  if ((matched & 0x80000000) == 0 && *a9 == 1)
  {
    getVal(a10, (a7 + 24), (a7 + 28));
  }

  return matched;
}

unsigned __int16 *getVal(unsigned __int16 *result, int *a2, unsigned __int16 *a3)
{
  v3 = *a2;
  if (*a2 > 1)
  {
    if (v3 == 2)
    {
      return FLOATSUR_MINUS_INT(result, result, 1u, 0);
    }

    else if (v3 == 3)
    {
      return FLOATSUR_MINUS(result, result, a3);
    }
  }

  else if (v3)
  {
    if (v3 == 1)
    {
      return FLOATSUR_PLUS(result, result, a3);
    }
  }

  else
  {
    return FLOATSUR_PLUS_INT(result, result, 1u, 0);
  }

  return result;
}

uint64_t matchMAPRULE2NUM_TRule(uint64_t a1, const char **a2, unsigned __int16 *a3, char *a4, uint64_t a5, uint64_t a6, _DWORD *a7, uint64_t a8, int *a9, _DWORD *a10)
{
  *a9 = 0;
  result = matchPANDPRULE_TRule(a1, a2, a3, a4, a5, a6, (a7 + 2), a8, a9);
  if ((result & 0x80000000) == 0 && *a9 == 1)
  {
    *a10 = *a7;
  }

  return result;
}

unsigned __int16 *matchMAPNUMNUM_TRule(uint64_t a1, unsigned __int16 *a2, _DWORD *a3)
{
  *a3 = 0;
  result = FLOATSUR_EQUAL((a1 + 4), a2);
  if (result)
  {
    *a3 = 1;

    return getVal(a2, a1, (a1 + 8));
  }

  return result;
}

uint64_t setParams(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = 0;
  __s1 = 0;
  if ((paramc_ParamGetInt(*(a1 + 40), "pandpdetailtrace", &v16) & 0x80000000) == 0)
  {
    *(a5 + 8) = v16;
  }

  if ((paramc_ParamGetInt(*(a1 + 40), "pandpthresholdweakbnd", &v16) & 0x80000000) == 0)
  {
    FLOATSUR_SET_INT((a5 + 368), v16, 0);
  }

  if ((paramc_ParamGetInt(*(a1 + 40), "pandpthresholdbndvalweak", &v16) & 0x80000000) == 0)
  {
    FLOATSUR_SET_INT((a5 + 372), v16, 0);
  }

  if ((paramc_ParamGetInt(*(a1 + 40), "pandpthresholdbndvalstrong", &v16) & 0x80000000) == 0)
  {
    FLOATSUR_SET_INT((a5 + 376), v16, 0);
  }

  if ((paramc_ParamGetInt(*(a1 + 40), "pandpthresholdweakfrag", &v16) & 0x80000000) == 0)
  {
    FLOATSUR_SET_INT((a5 + 380), v16, 0);
  }

  if ((paramc_ParamGetInt(*(a1 + 40), "pandpprevfactor", &v16) & 0x80000000) == 0)
  {
    FLOATSUR_SET_INT((a5 + 384), v16, 0);
  }

  if ((paramc_ParamGetInt(*(a1 + 40), "pandpnextfactor", &v16) & 0x80000000) == 0)
  {
    FLOATSUR_SET_INT((a5 + 388), v16, 0);
  }

  if ((paramc_ParamGetInt(*(a1 + 40), "pandpbndfactor", &v16) & 0x80000000) == 0)
  {
    FLOATSUR_SET_INT((a5 + 392), v16, 0);
  }

  if ((paramc_ParamGetStr(*(a1 + 40), "pandpphrasesize", &__s1) & 0x80000000) == 0)
  {
    if (cstdlib_strcmp(__s1, "min"))
    {
      if (!cstdlib_strcmp(__s1, "default"))
      {
        FLOATSUR_SET((a5 + 368), (a5 + 396));
        FLOATSUR_SET((a5 + 372), (a5 + 400));
        FLOATSUR_SET((a5 + 376), (a5 + 404));
        FLOATSUR_SET((a5 + 380), (a5 + 408));
        FLOATSUR_SET((a5 + 384), (a5 + 412));
        FLOATSUR_SET((a5 + 388), (a5 + 416));
        FLOATSUR_SET((a5 + 392), (a5 + 420));
      }
    }

    else
    {
      FLOATSUR_SET_INT((a5 + 372), 0, 0);
      FLOATSUR_SET_INT((a5 + 380), 0, 0);
    }
  }

  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  v10 = (*(a4 + 96))(a2, a3, "fecfg", "usecompound", &__c[3], &__c[1], __c);
  if ((v10 & 0x80000000) == 0)
  {
    if (*&__c[1] != 1 || !*&__c[3])
    {
      goto LABEL_29;
    }

    v11 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v11)
    {
      *v11 = 0;
    }

    if (!cstdlib_strcmp("yes", **&__c[3]) || !cstdlib_strcmp("YES", **&__c[3]))
    {
      if ((paramc_ParamGetInt(*(a1 + 40), "statcompwidescope", &v16) & 0x80000000) != 0)
      {
        *(a5 + 656) = 1;
        v12 = *(a1 + 40);
        v13 = 1;
        goto LABEL_36;
      }
    }

    else
    {
LABEL_29:
      if ((paramc_ParamGetInt(*(a1 + 40), "statcompwidescope", &v16) & 0x80000000) != 0)
      {
        *(a5 + 656) = 0;
        v12 = *(a1 + 40);
        v13 = 0;
LABEL_36:
        paramc_ParamSetInt(v12, "statcompwidescope", v13);
        return v10;
      }
    }

    if (v16)
    {
      *(a5 + 656) = 1;
    }

    else
    {
      *(a5 + 656) = 0;
    }
  }

  return v10;
}

uint64_t readPandPRules(_WORD *a1, uint64_t a2, void *a3, unsigned __int16 *a4)
{
  v134 = *MEMORY[0x277D85DE8];
  v132 = 0;
  v131 = 0;
  v129 = 0;
  *__s2 = 0;
  v127 = 0;
  __src = 0;
  memset(v133, 0, sizeof(v133));
  __s1 = 0;
  *a4 = a3;
  if ((paramc_ParamGetStr(a3[5], "basicclcprosody", &__s1) & 0x80000000) == 0 && __s1 && !cstdlib_strcmp(__s1, "yes"))
  {
    goto LABEL_173;
  }

  log_OutText(a3[4], "FE_PHRASING", 5, 0, "trying to load voice-dependent PandP rules", v8, v9, v10, 0);
  BrokerString = getBrokerString(a3, 1, v133);
  if ((BrokerString & 0x80000000) != 0)
  {
    return BrokerString;
  }

  if ((brk_DataOpenEx(a3[3], v133, 1, &v127) & 0x80000000) != 0)
  {
    log_OutText(a3[4], "FE_PHRASING", 5, 0, "trying to load legacy voice-dependent PandP MS rules", v12, v13, v14, 0);
    BrokerString = getLegacyBrokerString(a3, v133);
    if ((BrokerString & 0x80000000) != 0)
    {
      return BrokerString;
    }

    if ((brk_DataOpenEx(a3[3], v133, 1, &v127) & 0x80000000) != 0)
    {
LABEL_173:
      log_OutText(a3[4], "FE_PHRASING", 5, 0, "trying to load voice-independent PandP rules", v8, v9, v10, 0);
      BrokerString = getBrokerString(a3, 0, v133);
      if ((BrokerString & 0x80000000) != 0)
      {
        return BrokerString;
      }

      BrokerString = brk_DataOpenEx(a3[3], v133, 1, &v127);
      if ((BrokerString & 0x80000000) != 0)
      {
        return BrokerString;
      }
    }
  }

  BrokerString = brk_DataClose(a3[3], v127);
  if ((BrokerString & 0x80000000) != 0)
  {
    return BrokerString;
  }

  BrokerString = ssftriff_reader_ObjOpen(a1, a2, 0, v133, "PANP", 1031, &v132);
  if ((BrokerString & 0x80000000) != 0)
  {
    return BrokerString;
  }

  v15 = "PAUD";
  do
  {
    LODWORD(v23) = ssftriff_reader_OpenChunk(v132, __s2, &v129, &__src);
    if ((v23 & 0x80000000) != 0)
    {
      break;
    }

    if (!cstdlib_strcmp("CFIG", __s2))
    {
      v25 = __src;
      cstdlib_memcpy(a4 + 5, __src, 2uLL);
      cstdlib_memcpy(a4 + 6, v25 + 2, 2uLL);
      cstdlib_memcpy(a4 + 7, v25 + 4, 2uLL);
LABEL_66:
      LODWORD(v23) = 0;
      goto LABEL_67;
    }

    if (!cstdlib_strcmp("STSE", __s2))
    {
      v26 = __src;
      cstdlib_memcpy(a4 + 20, __src, 2uLL);
      v27 = heap_Calloc(*(*a4 + 8), 1, (8 * a4[20]) | 1);
      *(a4 + 4) = v27;
      if (!v27)
      {
        goto LABEL_165;
      }

      if (a4[20])
      {
        v32 = 0;
        v33 = 4;
        v34 = 2;
        do
        {
          cstdlib_memcpy((*(a4 + 4) + v33 - 4), &v26[v34], 4uLL);
          v35 = v34 + 4;
          cstdlib_memcpy((*(a4 + 4) + v33), &v26[v35], 4uLL);
          v34 = v35 + 4;
          ++v32;
          v33 += 8;
        }

        while (v32 < a4[20]);
      }

      goto LABEL_66;
    }

    if (!cstdlib_strcmp(v15, __s2))
    {
      v36 = __src;
      cstdlib_memcpy(a4 + 28, __src, 2uLL);
      LODWORD(v125) = 2;
      v37 = heap_Calloc(*(*a4 + 8), 1, (8 * a4[28]) | 1);
      *(a4 + 6) = v37;
      if (!v37)
      {
        goto LABEL_165;
      }

      v38 = v15;
      if (a4[28])
      {
        v39 = 0;
        v40 = 4;
        do
        {
          v41 = (*(a4 + 6) + v40);
          v42 = v125;
          cstdlib_memcpy(v41 - 2, &v36[v125], 4uLL);
          LODWORD(v125) = v42 + 4;
          readTWOPARTNUM(v36, &v125, v41);
          ++v39;
          v40 += 8;
        }

        while (v39 < a4[28]);
      }

LABEL_44:
      LODWORD(v23) = 0;
      v15 = v38;
      goto LABEL_67;
    }

    if (!cstdlib_strcmp("DEFM", __s2))
    {
      v43 = __src;
      cstdlib_memcpy(a4 + 36, __src, 2uLL);
      cstdlib_memcpy(a4 + 37, v43 + 2, 2uLL);
      v44 = heap_Calloc(*(*a4 + 8), 1, (8 * a4[36]) | 1);
      *(a4 + 8) = v44;
      if (!v44)
      {
        goto LABEL_165;
      }

      LODWORD(v45) = a4[37];
      if (a4[37])
      {
        v46 = 0;
        v47 = 4;
        v48 = 4;
        do
        {
          cstdlib_memcpy((*(a4 + 8) + v47), &v43[v48], 4uLL);
          v48 += 4;
          ++v46;
          v45 = a4[37];
          v47 += 8;
        }

        while (v46 < v45);
      }

      else
      {
        v48 = 4;
      }

      if (v45 < a4[36])
      {
        v59 = &v43[v48];
        v60 = 8 * v45;
        v61 = v45;
        do
        {
          cstdlib_memcpy((*(a4 + 8) + v60), v59, 4uLL);
          cstdlib_memcpy((*(a4 + 8) + v60 + 4), v59 + 4, 4uLL);
          ++v61;
          v59 += 8;
          v60 += 8;
        }

        while (v61 < a4[36]);
      }

      goto LABEL_66;
    }

    if (!cstdlib_strcmp("RTAG", __s2))
    {
      v49 = __src;
      cstdlib_memcpy(a4 + 44, __src, 2uLL);
      LODWORD(v125) = 2;
      v50 = heap_Calloc(*(*a4 + 8), 1, (32 * a4[44]) | 1);
      *(a4 + 10) = v50;
      if (!v50)
      {
        goto LABEL_165;
      }

      v38 = v15;
      if (a4[44])
      {
        v51 = 0;
        v52 = 8;
        while (1)
        {
          v53 = v125;
          cstdlib_memcpy((*(a4 + 10) + v52 - 8), &v49[v125], 4uLL);
          LODWORD(v125) = v53 + 4;
          BrokerString = readRULE(*a4, v49, &v125, (*(a4 + 10) + v52));
          if ((BrokerString & 0x80000000) != 0)
          {
            return BrokerString;
          }

          ++v51;
          v52 += 32;
          if (v51 >= a4[44])
          {
            goto LABEL_44;
          }
        }
      }

      goto LABEL_44;
    }

    if (!cstdlib_strcmp("STAG", __s2))
    {
      v54 = __src;
      cstdlib_memcpy(a4 + 52, __src, 2uLL);
      LODWORD(v125) = 2;
      v55 = heap_Calloc(*(*a4 + 8), 1, (32 * a4[52]) | 1);
      *(a4 + 12) = v55;
      if (!v55)
      {
        goto LABEL_165;
      }

      v38 = v15;
      if (a4[52])
      {
        v56 = 0;
        v57 = 8;
        while (1)
        {
          v58 = v125;
          cstdlib_memcpy((*(a4 + 12) + v57 - 8), &v54[v125], 4uLL);
          LODWORD(v125) = v58 + 4;
          BrokerString = readRULE(*a4, v54, &v125, (*(a4 + 12) + v57));
          if ((BrokerString & 0x80000000) != 0)
          {
            return BrokerString;
          }

          ++v56;
          v57 += 32;
          if (v56 >= a4[52])
          {
            goto LABEL_44;
          }
        }
      }

      goto LABEL_44;
    }

    if (!cstdlib_strcmp("TPOS", __s2))
    {
      v63 = __src;
      cstdlib_memcpy(a4 + 60, __src, 2uLL);
      LODWORD(v125) = 2;
      v64 = heap_Calloc(*(*a4 + 8), 1, (32 * a4[60]) | 1);
      *(a4 + 14) = v64;
      if (!v64)
      {
        goto LABEL_165;
      }

      v38 = v15;
      if (a4[60])
      {
        v65 = 0;
        v66 = 8;
        while (1)
        {
          v67 = v125;
          cstdlib_memcpy((*(a4 + 14) + v66 - 8), &v63[v125], 4uLL);
          LODWORD(v125) = v67 + 4;
          BrokerString = readRULE(*a4, v63, &v125, (*(a4 + 14) + v66));
          if ((BrokerString & 0x80000000) != 0)
          {
            return BrokerString;
          }

          ++v65;
          v66 += 32;
          if (v65 >= a4[60])
          {
            goto LABEL_44;
          }
        }
      }

      goto LABEL_44;
    }

    if (!cstdlib_strcmp("TDEF", __s2))
    {
      v68 = __src;
      cstdlib_memcpy(a4 + 72, __src, 2uLL);
      v69 = heap_Calloc(*(*a4 + 8), 1, (4 * a4[72]) | 1);
      *(a4 + 17) = v69;
      if (!v69)
      {
        goto LABEL_165;
      }

      LOWORD(__dst) = 0;
      if (a4[72])
      {
        v70 = 0;
        v71 = v68 + 2;
        v72 = 2;
        do
        {
          cstdlib_memcpy(&__dst, v71, 2uLL);
          *(*(a4 + 17) + 4 * v70++) = __dst;
          v73 = a4[72];
          v71 += 2;
          v72 += 2;
        }

        while (v70 < v73);
        v74 = (8 * v73) | 1;
      }

      else
      {
        v72 = 2;
        v74 = 1;
      }

      LODWORD(v125) = v72;
      v75 = heap_Calloc(*(*a4 + 8), 1, v74);
      *(a4 + 16) = v75;
      if (!v75)
      {
LABEL_165:
        v23 = 2315264010;
        log_OutPublic(*(*a4 + 32), "FE_PHRASING", 37000, 0, v28, v29, v30, v31, v120);
        return v23;
      }

      if (a4[72])
      {
        v76 = 0;
        do
        {
          v77 = *(*a4 + 8);
          if (*(*(a4 + 17) + 4 * v76) == 1)
          {
            *(*(a4 + 16) + 8 * v76) = heap_Calloc(v77, 1, 13);
            v78 = *(*(a4 + 16) + 8 * v76);
            if (!v78)
            {
              goto LABEL_165;
            }

            readREGEX(v68, &v125, v78);
            v79 = (*(*(a4 + 16) + 8 * v76) + 8);
            v80 = v125;
          }

          else
          {
            *(*(a4 + 16) + 8 * v76) = heap_Calloc(v77, 1, 9);
            v81 = *(*(a4 + 16) + 8 * v76);
            if (!v81)
            {
              goto LABEL_165;
            }

            cstdlib_memcpy(v81, &v68[v72], 4uLL);
            v80 = v72 + 4;
            v79 = (*(*(a4 + 16) + 8 * v76) + 4);
          }

          cstdlib_memcpy(v79, &v68[v80], 4uLL);
          v72 = v80 + 4;
          LODWORD(v125) = v72;
          ++v76;
        }

        while (v76 < a4[72]);
      }

      goto LABEL_66;
    }

    if (!cstdlib_strcmp("GENR", __s2))
    {
      BrokerString = readGeneralRulesCHUNK(__src, a4);
      if ((BrokerString & 0x80000000) != 0)
      {
        return BrokerString;
      }

      goto LABEL_66;
    }

    if (!cstdlib_strcmp("TOKR", __s2))
    {
      TokenRulesCHUNK = readTokenRulesCHUNK(__src, a4);
      goto LABEL_105;
    }

    if (!cstdlib_strcmp("PWGT", __s2))
    {
      TokenRulesCHUNK = readPhraseWeightsCHUNK(__src, a4);
      goto LABEL_105;
    }

    if (!cstdlib_strcmp("NUMS", __s2))
    {
      TokenRulesCHUNK = readNumSettingsCHUNK(__src, a4);
      goto LABEL_105;
    }

    if (!cstdlib_strcmp("PROM", __s2))
    {
      TokenRulesCHUNK = readProminenceCHUNK(__src, a4);
      goto LABEL_105;
    }

    if (!cstdlib_strcmp("REGX", __s2))
    {
      TokenRulesCHUNK = readRegexCHUNK(v132, __src, a4);
      goto LABEL_105;
    }

    if (!cstdlib_strcmp("STRS", __s2))
    {
      TokenRulesCHUNK = readStringCHUNK(v132, __src, a4);
      goto LABEL_105;
    }

    if (!cstdlib_strcmp("REST", __s2))
    {
      TokenRulesCHUNK = readRegexStringCHUNK(v132, __src, a4);
      goto LABEL_105;
    }

    if (!cstdlib_strcmp("MSDF", __s2))
    {
      BrokerString = readMSCHUNK(__src, a4);
      if ((BrokerString & 0x80000000) != 0)
      {
        return BrokerString;
      }

      goto LABEL_66;
    }

    if (!cstdlib_strcmp("PHRT", __s2))
    {
      TokenRulesCHUNK = readPhraseTypeCHUNK(__src, a4);
LABEL_105:
      v23 = TokenRulesCHUNK;
      if ((TokenRulesCHUNK & 0x80000000) != 0)
      {
        return v23;
      }

      goto LABEL_67;
    }

    if (!cstdlib_strcmp("CMPD", __s2))
    {
      TokenRulesCHUNK = readMSCOMPOUNDDEFCHUNK(__src, a4);
      goto LABEL_105;
    }

LABEL_67:
    v62 = ssftriff_reader_CloseChunk(v132);
    if (v62 < 0)
    {
      LODWORD(v23) = v62;
    }
  }

  while ((v23 & 0x80000000) == 0);
  if ((v23 & 0x1FFF) == 0x14)
  {
    v83 = 0;
  }

  else
  {
    v83 = v23;
  }

  if ((v83 & 0x1FFF) == 0xA)
  {
    return 2315264010;
  }

  v84 = ssftriff_reader_ObjClose(v132, v16, v17, v18, v19, v20, v21, v22);
  v132 = 0;
  if (v84 >= 0 || v83 <= -1)
  {
    v23 = v83;
  }

  else
  {
    v23 = v84;
  }

  if (a4[37])
  {
    v86 = 0;
    v87 = 4;
    do
    {
      if (cstdlib_strcmp("ORT", (*(a4 + 66) + *(*(a4 + 67) + 4 * *(*(a4 + 8) + v87)))))
      {
        if (cstdlib_strcmp("POS", (*(a4 + 66) + *(*(a4 + 67) + 4 * *(*(a4 + 8) + v87)))))
        {
          if (cstdlib_strcmp("TOK", (*(a4 + 66) + *(*(a4 + 67) + 4 * *(*(a4 + 8) + v87)))))
          {
            if (cstdlib_strcmp("TOKT", (*(a4 + 66) + *(*(a4 + 67) + 4 * *(*(a4 + 8) + v87)))))
            {
              if (!cstdlib_strcmp("PHR", (*(a4 + 66) + *(*(a4 + 67) + 4 * *(*(a4 + 8) + v87)))))
              {
                a4[12] = v86;
              }
            }

            else
            {
              a4[11] = v86;
            }
          }

          else
          {
            a4[10] = v86;
          }
        }

        else
        {
          a4[9] = v86;
        }
      }

      else
      {
        a4[8] = v86;
      }

      ++v86;
      v87 += 8;
    }

    while (v86 < a4[37]);
  }

  FLOATSUR_SET_INT(a4 + 184, 0, 0);
  FLOATSUR_SET_INT(a4 + 186, 0, 0);
  FLOATSUR_SET_INT(a4 + 188, 0, 0);
  FLOATSUR_SET_INT(a4 + 190, 0, 0);
  FLOATSUR_SET_INT(a4 + 192, 0, 0);
  FLOATSUR_SET_INT(a4 + 194, 0, 0);
  FLOATSUR_SET_INT(a4 + 196, 0, 0);
  if (!a4[140])
  {
    goto LABEL_166;
  }

  v92 = 0;
  v93 = 0;
  v121 = 0;
  v122 = 0;
  v123 = 0;
  v94 = 0;
  v95 = 0;
  do
  {
    if (cstdlib_strcmp((*(a4 + 66) + *(*(a4 + 67) + 4 * *(*(a4 + 34) + v92))), "threshold_weak_bnd"))
    {
      if (cstdlib_strcmp((*(a4 + 66) + *(*(a4 + 67) + 4 * *(*(a4 + 34) + v92))), "threshold_bnd_val_weak"))
      {
        if (cstdlib_strcmp((*(a4 + 66) + *(*(a4 + 67) + 4 * *(*(a4 + 34) + v92))), "threshold_bnd_val_strong"))
        {
          if (cstdlib_strcmp((*(a4 + 66) + *(*(a4 + 67) + 4 * *(*(a4 + 34) + v92))), "threshold_weak_frag"))
          {
            if (cstdlib_strcmp((*(a4 + 66) + *(*(a4 + 67) + 4 * *(*(a4 + 34) + v92))), "prevFactor"))
            {
              if (cstdlib_strcmp((*(a4 + 66) + *(*(a4 + 67) + 4 * *(*(a4 + 34) + v92))), "nextFactor"))
              {
                if (cstdlib_strcmp((*(a4 + 66) + *(*(a4 + 67) + 4 * *(*(a4 + 34) + v92))), "bndFactor"))
                {
                  if (!cstdlib_strcmp((*(a4 + 66) + *(*(a4 + 67) + 4 * *(*(a4 + 34) + v92))), "mapfromBIO") && !FLOATSUR_EQUAL_INT((*(a4 + 34) + v92 + 4), 0, 0))
                  {
                    log_OutText(a3[4], "FE_PHRASING", 1, 0, "mapfromBIO PandP setting is no longer honored", v89, v90, v91, v120);
                  }
                }

                else
                {
                  v102 = *(*(a4 + 34) + v92 + 4);
                  *(a4 + 98) = v102;
                  *(a4 + 105) = v102;
                  LODWORD(v121) = 1;
                }
              }

              else
              {
                v101 = *(*(a4 + 34) + v92 + 4);
                *(a4 + 97) = v101;
                *(a4 + 104) = v101;
                HIDWORD(v121) = 1;
              }
            }

            else
            {
              v100 = *(*(a4 + 34) + v92 + 4);
              *(a4 + 96) = v100;
              *(a4 + 103) = v100;
              LODWORD(v122) = 1;
            }
          }

          else
          {
            v99 = *(*(a4 + 34) + v92 + 4);
            *(a4 + 95) = v99;
            *(a4 + 102) = v99;
            HIDWORD(v122) = 1;
          }
        }

        else
        {
          v98 = *(*(a4 + 34) + v92 + 4);
          *(a4 + 94) = v98;
          *(a4 + 101) = v98;
          v123 = 1;
        }
      }

      else
      {
        v97 = *(*(a4 + 34) + v92 + 4);
        *(a4 + 93) = v97;
        *(a4 + 100) = v97;
        v94 = 1;
      }
    }

    else
    {
      v96 = *(*(a4 + 34) + v92 + 4);
      *(a4 + 92) = v96;
      *(a4 + 99) = v96;
      v95 = 1;
    }

    ++v93;
    v92 += 8;
  }

  while (v93 < a4[140]);
  if (!v95 || !v94 || !v123 || !HIDWORD(v122) || !v122 || !HIDWORD(v121) || !v121)
  {
LABEL_166:
    v118 = a3[4];
    v119 = 62004;
LABEL_168:
    log_OutPublic(v118, "FE_PHRASING", v119, 0, v88, v89, v90, v91, v120);
    return 2315264000;
  }

  v125 = 0;
  __dst = 0;
  StrSetting = getStrSetting(a4, "COMPOUND_FEATURE_STR");
  if (!StrSetting || (v104 = StrSetting, v105 = getStrSetting(a4, "COMPOUND_START_TAG"), (*(a4 + 80) = v105) == 0))
  {
    v118 = a3[4];
    v119 = 62000;
    goto LABEL_168;
  }

  v106 = a3[1];
  v107 = cstdlib_strlen(v104);
  v108 = heap_Calloc(v106, 1, v107 + 3);
  if (!v108)
  {
    log_OutPublic(a3[4], "FE_PHRASING", 37000, 0, v109, v110, v111, v112, v120);
    return 2315264010;
  }

  v113 = v108;
  cstdlib_strcpy(v108, ",");
  cstdlib_strcat(v113, v104);
  cstdlib_strcat(v113, ",");
  *(a4 + 81) = nuance_pcre_compile(*(a4 + 53), *(a4 + 54), v113, 0, &v125, &__dst, 0);
  heap_Free(a3[1], v113);
  if (!*(a4 + 81))
  {
    log_OutPublic(a3[4], "FE_PHRASING", 11006, "%s%s%s%s%s%d", v114, v115, v116, v117, "regularExpression");
    return 2315264000;
  }

  return v23;
}

uint64_t getBrokerString(uint64_t a1, int a2, _BYTE *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v12 = 0;
  __s = 0;
  v21 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  *__s1 = 0u;
  *__s2 = 0;
  *a3 = 0;
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", &__s);
  if ((result & 0x80000000) == 0)
  {
    v7 = 0;
    if (cstdlib_strlen(__s))
    {
      do
      {
        v8 = v7;
        __s2[v7] = cstdlib_tolower(__s[v7]);
        ++v7;
        v9 = cstdlib_strlen(__s);
      }

      while (v8 <= 1 && v7 < v9);
    }

    __s2[v7] = 0;
    if (cstdlib_strcmp(__s, __s2))
    {
      result = paramc_ParamSetStr(*(a1 + 40), "langcode", __s2);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      __s = __s2;
    }

    cstdlib_strcat(__s1, "pandp");
    cstdlib_strcat(__s1, "/");
    cstdlib_strcat(__s1, __s);
    if (a2 == 1)
    {
      result = paramc_ParamGetStr(*(a1 + 40), "voice", &v12);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      cstdlib_strcat(__s1, "/");
      cstdlib_strcat(__s1, v12);
      v10 = v12;
    }

    else
    {
      v10 = 0;
    }

    return brokeraux_ComposeBrokerString(a1, __s1, 0, 1, __s, v10, 0, a3, 0x80uLL);
  }

  return result;
}

uint64_t getLegacyBrokerString(uint64_t a1, _BYTE *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v9 = 0;
  __s = 0;
  v18 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  *__s1 = 0u;
  *__s2 = 0;
  *a2 = 0;
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", &__s);
  if ((result & 0x80000000) == 0)
  {
    v5 = 0;
    if (cstdlib_strlen(__s))
    {
      do
      {
        v6 = v5;
        __s2[v5] = cstdlib_tolower(__s[v5]);
        ++v5;
        v7 = cstdlib_strlen(__s);
      }

      while (v6 <= 1 && v5 < v7);
    }

    __s2[v5] = 0;
    if (cstdlib_strcmp(__s, __s2))
    {
      result = paramc_ParamSetStr(*(a1 + 40), "langcode", __s2);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      __s = __s2;
    }

    result = paramc_ParamGetStr(*(a1 + 40), "voice", &v9);
    if ((result & 0x80000000) == 0)
    {
      cstdlib_strcat(__s1, "pandp");
      cstdlib_strcat(__s1, "/ms/");
      cstdlib_strcat(__s1, __s);
      cstdlib_strcat(__s1, "/");
      cstdlib_strcat(__s1, v9);
      return brokeraux_ComposeBrokerString(a1, __s1, 1, 1, __s, v9, 0, a2, 0x80uLL);
    }
  }

  return result;
}

uint64_t readGeneralRulesCHUNK(void *__src, uint64_t *a2)
{
  cstdlib_memcpy(a2 + 20, __src, 2uLL);
  v13 = 2;
  v4 = heap_Calloc(*(*a2 + 8), 1, (32 * *(a2 + 80)) | 1);
  a2[19] = v4;
  if (v4)
  {
    if (*(a2 + 80))
    {
      v9 = 0;
      v10 = 0;
      while (1)
      {
        result = readRULE(*a2, __src, &v13, (a2[19] + v9 + 8));
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        readTWOPARTNUM(__src, &v13, (a2[19] + v9));
        ++v10;
        v9 += 32;
        if (v10 >= *(a2 + 80))
        {
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    log_OutPublic(*(*a2 + 32), "FE_PHRASING", 37000, 0, v5, v6, v7, v8, v12);
    return 2315264010;
  }

  return result;
}

uint64_t readTokenRulesCHUNK(char *__src, void *a2)
{
  cstdlib_memcpy(a2 + 21, __src, 2uLL);
  cstdlib_memcpy(a2 + 23, __src + 2, 2uLL);
  v30 = 4;
  v4 = heap_Calloc(*(*a2 + 8), 1, (40 * *(a2 + 92)) | 1);
  a2[22] = v4;
  if (v4)
  {
    if (!*(a2 + 92))
    {
      return 0;
    }

    v9 = 0;
    __dst = 0;
    while (1)
    {
      v10 = heap_Calloc(*(*a2 + 8), 1, 25);
      *(a2[22] + 40 * v9) = v10;
      v11 = *a2;
      if (!v10)
      {
        break;
      }

      v12 = readRULE(v11, __src, &v30, v10);
      if ((v12 & 0x80000000) != 0)
      {
        return v12;
      }

      v13 = v30;
      cstdlib_memcpy((a2[22] + 40 * v9 + 16), &__src[v30], 2uLL);
      v14 = v13 + 2;
      v30 = v14;
      v15 = heap_Calloc(*(*a2 + 8), 1, (32 * *(a2[22] + 40 * v9 + 16)) | 1);
      v16 = a2[22];
      *(v16 + 40 * v9 + 8) = v15;
      if (!v15)
      {
        goto LABEL_19;
      }

      if (*(v16 + 40 * v9 + 16))
      {
        v17 = 0;
        v18 = 0;
        while (1)
        {
          v12 = readRULE(*a2, __src, &v30, (*(v16 + 40 * v9 + 8) + v17 + 8));
          if ((v12 & 0x80000000) != 0)
          {
            return v12;
          }

          readTWOPARTNUM(__src, &v30, (*(a2[22] + 40 * v9 + 8) + v17));
          ++v18;
          v16 = a2[22];
          v17 += 32;
          if (v18 >= *(v16 + 40 * v9 + 16))
          {
            v14 = v30;
            break;
          }
        }
      }

      cstdlib_memcpy((v16 + 40 * v9 + 32), &__src[v14], 2uLL);
      v30 = v14 + 2;
      v19 = heap_Calloc(*(*a2 + 8), 1, (32 * *(a2[22] + 40 * v9 + 32)) | 1);
      v20 = a2[22];
      *(v20 + 40 * v9 + 24) = v19;
      if (!v19)
      {
        goto LABEL_19;
      }

      if (*(v20 + 40 * v9 + 32))
      {
        v21 = 0;
        v22 = 0;
        do
        {
          v12 = readRULE(*a2, __src, &v30, (*(v20 + 40 * v9 + 24) + v21));
          if ((v12 & 0x80000000) != 0)
          {
            return v12;
          }

          v23 = v30;
          cstdlib_memcpy(&__dst, &__src[v30], 2uLL);
          v30 = v23 + 2;
          v24 = *(a2[22] + 40 * v9 + 24) + v21;
          *(v24 + 24) = __dst;
          readTWOPARTNUM(__src, &v30, (v24 + 28));
          ++v22;
          v20 = a2[22];
          v21 += 32;
        }

        while (v22 < *(v20 + 40 * v9 + 32));
      }

      v25 = 0;
      if (++v9 >= *(a2 + 92))
      {
        return v25;
      }
    }

    v25 = 2315264010;
    v26 = *(v11 + 32);
  }

  else
  {
LABEL_19:
    v25 = 2315264010;
    v26 = *(*a2 + 32);
  }

  log_OutPublic(v26, "FE_PHRASING", 37000, 0, v5, v6, v7, v8, v28);
  return v25;
}

uint64_t readPhraseWeightsCHUNK(char *__src, unsigned __int16 *a2)
{
  cstdlib_memcpy(a2 + 124, __src, 2uLL);
  v4 = heap_Calloc(*(*a2 + 8), 1, (12 * a2[124]) | 1);
  *(a2 + 30) = v4;
  if (!v4)
  {
    goto LABEL_21;
  }

  if (a2[124])
  {
    v9 = 0;
    v10 = 0;
    v11 = 2;
    do
    {
      cstdlib_memcpy((*(a2 + 30) + v9), &__src[v11], 4uLL);
      v28 = v11 + 4;
      readTWOPARTNUM(__src, &v28, (*(a2 + 30) + v9 + 4));
      v12 = v28;
      cstdlib_memcpy((*(a2 + 30) + v9 + 8), &__src[v28], 2uLL);
      cstdlib_memcpy((*(a2 + 30) + v9 + 10), &__src[v12 + 2], 2uLL);
      v11 = v12 + 4;
      v28 = v11;
      ++v10;
      v9 += 12;
    }

    while (v10 < a2[124]);
  }

  else
  {
    v11 = 2;
  }

  cstdlib_memcpy(a2 + 132, &__src[v11], 2uLL);
  v28 = v11 + 2;
  v13 = heap_Calloc(*(*a2 + 8), 1, (32 * a2[132]) | 1);
  *(a2 + 32) = v13;
  if (!v13)
  {
    goto LABEL_21;
  }

  if (!a2[132])
  {
LABEL_12:
    readTWOPARTNUM(__src, &v28, a2 + 96);
    v17 = v28;
    cstdlib_memcpy(a2 + 104, &__src[v28], 2uLL);
    v28 = v17 + 2;
    v18 = heap_Calloc(*(*a2 + 8), 1, (10 * a2[104]) | 1);
    *(a2 + 25) = v18;
    if (v18)
    {
      if (a2[104])
      {
        v19 = 0;
        v20 = 0;
        do
        {
          readREGEX(__src, &v28, (*(a2 + 25) + v19));
          readTWOPARTNUM(__src, &v28, (*(a2 + 25) + v19 + 6));
          ++v20;
          v19 += 10;
        }

        while (v20 < a2[104]);
      }

      readTWOPARTNUM(__src, &v28, a2 + 108);
      v21 = v28;
      cstdlib_memcpy(a2 + 116, &__src[v28], 2uLL);
      v28 = v21 + 2;
      v22 = heap_Calloc(*(*a2 + 8), 1, (12 * a2[116]) | 1);
      *(a2 + 28) = v22;
      if (v22)
      {
        if (a2[116])
        {
          v23 = 0;
          v24 = 0;
          do
          {
            v25 = *(a2 + 28) + v23;
            __dst = 0;
            readTWOPARTNUM(__src, &v28, (v25 + 4));
            readTWOPARTNUM(__src, &v28, (v25 + 8));
            v26 = v28;
            cstdlib_memcpy(&__dst, &__src[v28], 2uLL);
            v28 = v26 + 2;
            *v25 = __dst;
            ++v24;
            v23 += 12;
          }

          while (v24 < a2[116]);
        }

        return 0;
      }
    }

LABEL_21:
    log_OutPublic(*(*a2 + 32), "FE_PHRASING", 37000, 0, v5, v6, v7, v8, v27);
    return 2315264010;
  }

  v14 = 0;
  v15 = 0;
  while (1)
  {
    result = readRULE(*a2, __src, &v28, (*(a2 + 32) + v14 + 8));
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    readTWOPARTNUM(__src, &v28, (*(a2 + 32) + v14));
    ++v15;
    v14 += 32;
    if (v15 >= a2[132])
    {
      goto LABEL_12;
    }
  }
}

uint64_t readNumSettingsCHUNK(char *__src, unsigned __int16 *a2)
{
  cstdlib_memcpy(a2 + 140, __src, 2uLL);
  v15 = 2;
  v4 = heap_Calloc(*(*a2 + 8), 1, (8 * a2[140]) | 1);
  *(a2 + 34) = v4;
  if (v4)
  {
    if (a2[140])
    {
      v9 = 0;
      v10 = 4;
      do
      {
        v11 = (*(a2 + 34) + v10);
        v12 = v15;
        cstdlib_memcpy(v11 - 2, &__src[v15], 4uLL);
        v15 = v12 + 4;
        readTWOPARTNUM(__src, &v15, v11);
        ++v9;
        v10 += 8;
      }

      while (v9 < a2[140]);
    }

    return 0;
  }

  else
  {
    log_OutPublic(*(*a2 + 32), "FE_PHRASING", 37000, 0, v5, v6, v7, v8, v14);
    return 2315264010;
  }
}

uint64_t readProminenceCHUNK(char *__src, void *a2)
{
  cstdlib_memcpy(a2 + 37, __src, 2uLL);
  v4 = heap_Calloc(*(*a2 + 8), 1, (4 * *(a2 + 148)) | 1);
  a2[36] = v4;
  if (!v4)
  {
    goto LABEL_13;
  }

  if (*(a2 + 148))
  {
    v9 = 0;
    v10 = 2;
    do
    {
      cstdlib_memcpy((a2[36] + v10 - 2), &__src[v10], 4uLL);
      ++v9;
      v10 += 4;
    }

    while (v9 < *(a2 + 148));
  }

  else
  {
    LODWORD(v10) = 2;
  }

  cstdlib_memcpy(a2 + 39, &__src[v10], 2uLL);
  v16 = v10 + 2;
  v11 = heap_Calloc(*(*a2 + 8), 1, (24 * *(a2 + 156)) | 1);
  a2[38] = v11;
  if (v11)
  {
    if (*(a2 + 156))
    {
      v12 = 0;
      v13 = 0;
      while (1)
      {
        result = readRULE(*a2, __src, &v16, (a2[38] + v12));
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        ++v13;
        v12 += 24;
        if (v13 >= *(a2 + 156))
        {
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
LABEL_13:
    log_OutPublic(*(*a2 + 32), "FE_PHRASING", 37000, 0, v5, v6, v7, v8, v15);
    return 2315264010;
  }

  return result;
}

uint64_t readRegexCHUNK(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a2;
  __dst = 0;
  v6 = 4;
  cstdlib_memcpy((a3 + 440), a2, 4uLL);
  if (*(a3 + 440))
  {
    cstdlib_memcpy(&__dst, (a2 + 4), 4uLL);
    v7 = (__dst + 8);
    *(a3 + 448) = a2 + v7;
    v6 = (*(a3 + 440) + v7);
  }

  cstdlib_memcpy((a3 + 464), (a2 + v6), 2uLL);
  v8 = heap_Calloc(*(*a3 + 8), 1, (4 * *(a3 + 464)) | 1);
  *(a3 + 456) = v8;
  if (v8)
  {
    if (*(a3 + 464))
    {
      v13 = 0;
      v14 = 0;
      v15 = v6 + 2;
      do
      {
        v16 = v15;
        cstdlib_memcpy((*(a3 + 456) + v13), (a2 + v15), 4uLL);
        v15 = v16 + 4;
        ++v14;
        v13 += 4;
      }

      while (v14 < *(a3 + 464));
    }

    return ssftriff_reader_DetachChunkData(a1, (a3 + 472), &v20);
  }

  else
  {
    log_OutPublic(*(*a3 + 32), "FE_PHRASING", 37000, 0, v9, v10, v11, v12, v18);
    return 2315264010;
  }
}

uint64_t readStringCHUNK(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a2;
  __dst = 0;
  v6 = 4;
  cstdlib_memcpy((a3 + 520), a2, 4uLL);
  if (*(a3 + 520))
  {
    cstdlib_memcpy(&__dst, (a2 + 4), 4uLL);
    v7 = (__dst + 8);
    *(a3 + 528) = a2 + v7;
    v6 = (*(a3 + 520) + v7);
  }

  cstdlib_memcpy((a3 + 544), (a2 + v6), 2uLL);
  v8 = heap_Calloc(*(*a3 + 8), 1, (4 * *(a3 + 544)) | 1);
  *(a3 + 536) = v8;
  if (v8)
  {
    if (*(a3 + 544))
    {
      v13 = 0;
      v14 = 0;
      v15 = v6 + 2;
      do
      {
        v16 = v15;
        cstdlib_memcpy((*(a3 + 536) + v13), (a2 + v15), 4uLL);
        v15 = v16 + 4;
        ++v14;
        v13 += 4;
      }

      while (v14 < *(a3 + 544));
    }

    return ssftriff_reader_DetachChunkData(a1, (a3 + 552), &v20);
  }

  else
  {
    log_OutPublic(*(*a3 + 32), "FE_PHRASING", 37000, 0, v9, v10, v11, v12, v18);
    return 2315264010;
  }
}

uint64_t readRegexStringCHUNK(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a2;
  __dst = 0;
  v6 = 4;
  cstdlib_memcpy((a3 + 480), a2, 4uLL);
  if (*(a3 + 480))
  {
    cstdlib_memcpy(&__dst, (a2 + 4), 4uLL);
    v7 = (__dst + 8);
    *(a3 + 488) = a2 + v7;
    v6 = (*(a3 + 480) + v7);
  }

  cstdlib_memcpy((a3 + 504), (a2 + v6), 2uLL);
  v8 = heap_Calloc(*(*a3 + 8), 1, (4 * *(a3 + 504)) | 1);
  *(a3 + 496) = v8;
  if (v8)
  {
    if (*(a3 + 504))
    {
      v13 = 0;
      v14 = 0;
      v15 = v6 + 2;
      do
      {
        v16 = v15;
        cstdlib_memcpy((*(a3 + 496) + v13), (a2 + v15), 4uLL);
        v15 = v16 + 4;
        ++v14;
        v13 += 4;
      }

      while (v14 < *(a3 + 504));
    }

    return ssftriff_reader_DetachChunkData(a1, (a3 + 512), &v20);
  }

  else
  {
    log_OutPublic(*(*a3 + 32), "FE_PHRASING", 37000, 0, v9, v10, v11, v12, v18);
    return 2315264010;
  }
}

uint64_t readMSCHUNK(char *__src, uint64_t a2)
{
  __dst = 0;
  cstdlib_memcpy(&__dst, __src, 2uLL);
  *(a2 + 560) = __dst;
  cstdlib_memcpy((a2 + 584), __src + 2, 2uLL);
  v4 = heap_Calloc(*(*a2 + 8), 1, (4 * *(a2 + 584)) | 1);
  *(a2 + 576) = v4;
  if (!v4)
  {
    goto LABEL_47;
  }

  if (*(a2 + 584))
  {
    v9 = 0;
    v10 = __src + 4;
    v11 = 4;
    do
    {
      cstdlib_memcpy(&__dst, v10, 2uLL);
      v11 += 2;
      *(*(a2 + 576) + 4 * v9++) = __dst;
      v12 = *(a2 + 584);
      v10 += 2;
    }

    while (v9 < v12);
    v13 = (8 * v12) | 1;
  }

  else
  {
    v11 = 4;
    v13 = 1;
  }

  v48 = v11;
  v14 = heap_Calloc(*(*a2 + 8), 1, v13);
  *(a2 + 568) = v14;
  if (!v14)
  {
    goto LABEL_47;
  }

  if (*(a2 + 584))
  {
    v15 = 0;
    do
    {
      v16 = *(*a2 + 8);
      if (*(*(a2 + 576) + 4 * v15) == 1)
      {
        *(*(a2 + 568) + 8 * v15) = heap_Calloc(v16, 1, 13);
        v17 = *(*(a2 + 568) + 8 * v15);
        if (!v17)
        {
          goto LABEL_47;
        }

        readREGEX(__src, &v48, v17);
        v18 = (*(*(a2 + 568) + 8 * v15) + 8);
        v19 = v48;
      }

      else
      {
        *(*(a2 + 568) + 8 * v15) = heap_Calloc(v16, 1, 9);
        v20 = *(*(a2 + 568) + 8 * v15);
        if (!v20)
        {
          goto LABEL_47;
        }

        cstdlib_memcpy(v20, &__src[v11], 4uLL);
        v19 = v11 + 4;
        v18 = (*(*(a2 + 568) + 8 * v15) + 4);
      }

      cstdlib_memcpy(v18, &__src[v19], 4uLL);
      v11 = v19 + 4;
      v48 = v11;
      ++v15;
    }

    while (v15 < *(a2 + 584));
  }

  cstdlib_memcpy((a2 + 608), &__src[v11], 2uLL);
  v21 = heap_Calloc(*(*a2 + 8), 1, (4 * *(a2 + 608)) | 1);
  *(a2 + 600) = v21;
  if (!v21)
  {
    goto LABEL_47;
  }

  v22 = v11 + 2;
  if (*(a2 + 608))
  {
    v23 = 0;
    do
    {
      cstdlib_memcpy(&__dst, &__src[v22], 2uLL);
      v22 += 2;
      *(*(a2 + 600) + 4 * v23++) = __dst;
      v24 = *(a2 + 608);
    }

    while (v23 < v24);
    v25 = (8 * v24) | 1;
  }

  else
  {
    v25 = 1;
  }

  v48 = v22;
  v26 = heap_Calloc(*(*a2 + 8), 1, v25);
  *(a2 + 592) = v26;
  if (!v26)
  {
    goto LABEL_47;
  }

  if (*(a2 + 608))
  {
    v27 = 0;
    do
    {
      v28 = *(*a2 + 8);
      if (*(*(a2 + 600) + 4 * v27) == 1)
      {
        *(*(a2 + 592) + 8 * v27) = heap_Calloc(v28, 1, 13);
        v29 = *(*(a2 + 592) + 8 * v27);
        if (!v29)
        {
          goto LABEL_47;
        }

        readREGEX(__src, &v48, v29);
        v30 = (*(*(a2 + 592) + 8 * v27) + 8);
        v31 = v48;
      }

      else
      {
        *(*(a2 + 592) + 8 * v27) = heap_Calloc(v28, 1, 9);
        v32 = *(*(a2 + 592) + 8 * v27);
        if (!v32)
        {
          goto LABEL_47;
        }

        cstdlib_memcpy(v32, &__src[v22], 4uLL);
        v31 = v22 + 4;
        v30 = (*(*(a2 + 592) + 8 * v27) + 4);
      }

      cstdlib_memcpy(v30, &__src[v31], 4uLL);
      v22 = v31 + 4;
      v48 = v22;
      ++v27;
    }

    while (v27 < *(a2 + 608));
  }

  cstdlib_memcpy((a2 + 632), &__src[v22], 2uLL);
  v33 = heap_Calloc(*(*a2 + 8), 1, (4 * *(a2 + 632)) | 1);
  *(a2 + 624) = v33;
  if (!v33)
  {
    goto LABEL_47;
  }

  v34 = v22 + 2;
  if (*(a2 + 632))
  {
    v35 = 0;
    do
    {
      cstdlib_memcpy(&__dst, &__src[v34], 2uLL);
      v34 += 2;
      *(*(a2 + 624) + 4 * v35++) = __dst;
      v36 = *(a2 + 632);
    }

    while (v35 < v36);
    v37 = (8 * v36) | 1;
  }

  else
  {
    v37 = 1;
  }

  v48 = v34;
  v38 = heap_Calloc(*(*a2 + 8), 1, v37);
  *(a2 + 616) = v38;
  if (v38)
  {
    if (*(a2 + 632))
    {
      v39 = 0;
      do
      {
        v40 = *(*a2 + 8);
        if (*(*(a2 + 624) + 4 * v39) == 1)
        {
          *(*(a2 + 616) + 8 * v39) = heap_Calloc(v40, 1, 13);
          v41 = *(*(a2 + 616) + 8 * v39);
          if (!v41)
          {
            goto LABEL_47;
          }

          readREGEX(__src, &v48, v41);
          v42 = (*(*(a2 + 616) + 8 * v39) + 8);
          v43 = v48;
        }

        else
        {
          *(*(a2 + 616) + 8 * v39) = heap_Calloc(v40, 1, 9);
          v44 = *(*(a2 + 616) + 8 * v39);
          if (!v44)
          {
            goto LABEL_47;
          }

          cstdlib_memcpy(v44, &__src[v34], 4uLL);
          v43 = v34 + 4;
          v42 = (*(*(a2 + 616) + 8 * v39) + 4);
        }

        cstdlib_memcpy(v42, &__src[v43], 4uLL);
        result = 0;
        v34 = v43 + 4;
        v48 = v34;
        ++v39;
      }

      while (v39 < *(a2 + 632));
    }

    else
    {
      return 0;
    }
  }

  else
  {
LABEL_47:
    log_OutPublic(*(*a2 + 32), "FE_PHRASING", 37000, 0, v5, v6, v7, v8, v46);
    return 2315264010;
  }

  return result;
}

uint64_t readPhraseTypeCHUNK(char *__src, uint64_t *a2)
{
  cstdlib_memcpy(a2 + 40, __src, 2uLL);
  v4 = heap_Calloc(*(*a2 + 8), 1, (16 * *(a2 + 160)) | 1);
  a2[42] = v4;
  v9 = *a2;
  if (!v4)
  {
    goto LABEL_16;
  }

  v10 = heap_Calloc(*(v9 + 8), 1, (4 * *(a2 + 160)) | 1);
  a2[41] = v10;
  if (!v10)
  {
LABEL_15:
    v9 = *a2;
LABEL_16:
    log_OutPublic(*(v9 + 32), "FE_PHRASING", 37000, 0, v5, v6, v7, v8, v21);
    return 2315264010;
  }

  if (*(a2 + 160))
  {
    v11 = 0;
    v12 = 2;
    do
    {
      cstdlib_memcpy((a2[41] + v12 - 2), &__src[v12], 4uLL);
      ++v11;
      v13 = *(a2 + 160);
      v12 += 4;
    }

    while (v11 < v13);
    v22 = v12;
    if (v13)
    {
      v14 = 0;
      v15 = a2[42];
      while (1)
      {
        v16 = v22;
        cstdlib_memcpy((v15 + 16 * v14), &__src[v22], 2uLL);
        v22 = v16 + 2;
        v17 = heap_Calloc(*(*a2 + 8), 1, (24 * *(a2[42] + 16 * v14)) | 1);
        v15 = a2[42];
        *(v15 + 16 * v14 + 8) = v17;
        if (!v17)
        {
          goto LABEL_15;
        }

        if (*(v15 + 16 * v14))
        {
          v18 = 0;
          v19 = 0;
          do
          {
            result = readRULE(*a2, __src, &v22, (*(v15 + 16 * v14 + 8) + v18));
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            ++v19;
            v15 = a2[42];
            v18 += 24;
          }

          while (v19 < *(v15 + 16 * v14));
        }

        result = 0;
        if (++v14 >= *(a2 + 160))
        {
          return result;
        }
      }
    }
  }

  return 0;
}

uint64_t readMSCOMPOUNDDEFCHUNK(char *__src, void *a2)
{
  cstdlib_memcpy(a2 + 45, __src, 2uLL);
  v4 = heap_Calloc(*(*a2 + 8), 1, (4 * *(a2 + 180)) | 1);
  a2[44] = v4;
  if (!v4)
  {
    goto LABEL_17;
  }

  __dst = 0;
  if (*(a2 + 180))
  {
    v9 = 0;
    v10 = __src + 2;
    v11 = 2;
    do
    {
      cstdlib_memcpy(&__dst, v10, 2uLL);
      v11 += 2;
      *(a2[44] + 4 * v9++) = __dst;
      v12 = *(a2 + 180);
      v10 += 2;
    }

    while (v9 < v12);
    v13 = (8 * v12) | 1;
  }

  else
  {
    v11 = 2;
    v13 = 1;
  }

  v25 = v11;
  v14 = heap_Calloc(*(*a2 + 8), 1, v13);
  a2[43] = v14;
  if (v14)
  {
    if (*(a2 + 180))
    {
      v15 = 0;
      do
      {
        v16 = *(*a2 + 8);
        if (*(a2[44] + 4 * v15) == 1)
        {
          *(a2[43] + 8 * v15) = heap_Calloc(v16, 1, 13);
          v17 = *(a2[43] + 8 * v15);
          if (!v17)
          {
            goto LABEL_17;
          }

          readREGEX(__src, &v25, v17);
          v18 = (*(a2[43] + 8 * v15) + 8);
          v19 = v25;
        }

        else
        {
          *(a2[43] + 8 * v15) = heap_Calloc(v16, 1, 9);
          v20 = *(a2[43] + 8 * v15);
          if (!v20)
          {
            goto LABEL_17;
          }

          cstdlib_memcpy(v20, &__src[v11], 4uLL);
          v19 = v11 + 4;
          v18 = (*(a2[43] + 8 * v15) + 4);
        }

        cstdlib_memcpy(v18, &__src[v19], 4uLL);
        v11 = v19 + 4;
        v25 = v11;
        ++v15;
      }

      while (v15 < *(a2 + 180));
    }

    return 0;
  }

  else
  {
LABEL_17:
    v21 = 2315264010;
    log_OutPublic(*(*a2 + 32), "FE_PHRASING", 37000, 0, v5, v6, v7, v8, v23);
  }

  return v21;
}

uint64_t getStrSetting(uint64_t a1, char *__s1)
{
  if (!*(a1 + 40))
  {
    return 0;
  }

  v4 = 0;
  v5 = 0;
  while (cstdlib_strcmp(__s1, (*(a1 + 528) + *(*(a1 + 536) + 4 * *(*(a1 + 32) + v4)))))
  {
    ++v5;
    v4 += 8;
    if (v5 >= *(a1 + 40))
    {
      return 0;
    }
  }

  return *(a1 + 528) + *(*(a1 + 536) + 4 * *(*(a1 + 32) + v4 + 4));
}

uint64_t usePandP(uint64_t *a1, _DWORD *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  __s1 = 0;
  v25 = 0;
  memset(v26, 0, sizeof(v26));
  *a2 = 0;
  v4 = 0;
  if ((paramc_ParamGetStr(a1[5], "basicclcprosody", &__s1) & 0x80000000) == 0 && __s1)
  {
    if (cstdlib_strcmp(__s1, "yes"))
    {
      v4 = 0;
    }

    else
    {
      log_OutText(a1[4], "FE_PHRASING", 5, 0, "<%s> disables voice-dependent pandp rules", v5, v6, v7, "basicclcprosody");
      v4 = 1;
    }
  }

  result = getBrokerString(a1, 1, v26);
  if ((result & 0x80000000) == 0)
  {
    v9 = brk_DataOpenEx(a1[3], v26, 1, &v25);
    if (v9 < 0)
    {
      v13 = 1;
    }

    else
    {
      v13 = v4;
    }

    if ((v13 & 1) == 0)
    {
      goto LABEL_23;
    }

    v14 = v9;
    log_OutText(a1[4], "FE_PHRASING", 5, 0, "Voice-dependent PandP rules not found or disabled", v10, v11, v12, 0);
    if ((v14 & 0x80000000) == 0)
    {
      result = brk_DataClose(a1[3], v25);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }
    }

    result = getLegacyBrokerString(a1, v26);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    v15 = brk_DataOpenEx(a1[3], v26, 1, &v25);
    v19 = v15 < 0 ? 1 : v4;
    if ((v19 & 1) == 0)
    {
LABEL_23:
      *a2 = 1;
      goto LABEL_24;
    }

    v20 = v15;
    log_OutText(a1[4], "FE_PHRASING", 5, 0, "Voice-dependent legacy PandP MS rules not found or disabled", v16, v17, v18, 0);
    if (v20 < 0 || (result = brk_DataClose(a1[3], v25), (result & 0x80000000) == 0))
    {
      result = getBrokerString(a1, 0, v26);
      if ((result & 0x80000000) == 0)
      {
        if ((brk_DataOpenEx(a1[3], v26, 1, &v25) & 0x80000000) != 0)
        {
          log_OutText(a1[4], "FE_PHRASING", 5, 0, "Voice-independent PandP rules not found", v21, v22, v23, 0);
          return 0;
        }

        *a2 = 1;
LABEL_24:
        result = brk_DataClose(a1[3], v25);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        return 0;
      }
    }
  }

  return result;
}

uint64_t doMapStr(uint64_t a1, const char **a2, char *__s)
{
  v6 = cstdlib_strlen(__s);
  v7 = cstdlib_strlen(*a2);
  v8 = *a2;
  if (v6 <= v7)
  {
    goto LABEL_4;
  }

  v9 = *(a1 + 8);
  v10 = cstdlib_strlen(__s);
  v11 = heap_Realloc(v9, v8, (v10 + 1));
  if (v11)
  {
    v8 = v11;
    *a2 = v11;
LABEL_4:
    cstdlib_strcpy(v8, __s);
    return 0;
  }

  log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v12, v13, v14, v15, v17);
  return 2315264010;
}

uint64_t doRetagging(uint64_t a1, const char **a2, unsigned __int16 *a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *&v35[2] = 0;
  log_OutText(*(a5 + 32), "FE_PHRASING", 5, 0, "applying %d retagging rules", a6, a7, a8, *(a6 + 88));
  if (!*(a7 + 8))
  {
    return 0;
  }

  v15 = 0;
  result = 0;
  while (!*(a6 + 88))
  {
LABEL_13:
    if (++v15 >= *(a7 + 8))
    {
      return result;
    }
  }

  v17 = 0;
  v18 = 0;
  while (1)
  {
    v34 = v15;
    v33 = 3;
    *v35 = 0;
    v19 = *(a6 + 80);
    v36 = 0;
    result = matchPANDPRULE_TRule(a1, a2, a3, a4, a6, a7, v19 + v17 + 8, &v33, &v36);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    if (v36)
    {
      if (v36 != 1)
      {
        goto LABEL_13;
      }

      log_OutText(*(a5 + 32), "FE_PHRASING", 5, 0, "FIRED RETAGGING RULE %d RETAG POS %s to %s on word[%d]=%s", v20, v21, v22, v18);
      v23 = 224 * v15;
      result = doMapStr(a5, (*(*a7 + 224 * v15 + 16) + 8 * *(a6 + 18)), (*(a6 + 528) + *(*(a6 + 536) + 4 * *(*(a6 + 80) + v17))));
      if ((result & 0x80000000) == 0)
      {
        v32 = *(a5 + 8);
        v24 = cstdlib_strlen(*(*(*a7 + v23 + 16) + 8 * *(a6 + 18)));
        v25 = heap_Calloc(v32, 1, v24 + 1);
        v30 = *a7;
        *(*a7 + v23 + 88) = v25;
        if (v25)
        {
          cstdlib_strcpy(v25, *(*(v30 + 224 * v15 + 16) + 8 * *(a6 + 18)));
          result = 0;
          goto LABEL_13;
        }

        log_OutPublic(*(a5 + 32), "FE_PHRASING", 37000, 0, v26, v27, v28, v29, v31);
        return 2315264010;
      }

      return result;
    }

    ++v18;
    v17 += 32;
    if (v18 >= *(a6 + 88))
    {
      goto LABEL_13;
    }
  }
}

uint64_t doSubtagging(uint64_t a1, const char **a2, unsigned __int16 *a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *&v37[2] = 0;
  log_OutText(*(a5 + 32), "FE_PHRASING", 5, 0, "applying %d subtagging rules", a6, a7, a8, *(a6 + 104));
  if (!*(a7 + 8))
  {
    return 0;
  }

  v34 = a5;
  v15 = 0;
  result = 0;
  while (!*(a6 + 104))
  {
LABEL_15:
    if (++v15 >= *(a7 + 8))
    {
      return result;
    }
  }

  v17 = 0;
  v18 = 0;
  while (1)
  {
    v36 = v15;
    v35 = 3;
    *v37 = 0;
    v19 = *(a6 + 96);
    v38 = 0;
    result = matchPANDPRULE_TRule(a1, a2, a3, a4, a6, a7, v19 + v17 + 8, &v35, &v38);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    if (v38)
    {
      if (v38 != 1)
      {
        goto LABEL_15;
      }

      log_OutText(*(v34 + 32), "FE_PHRASING", 5, 0, "FIRED SUBTAGGING RULE %d RETAG POS %s to %s on word[%d]=%s", v20, v21, v22, v18);
      v23 = *a7;
      v24 = *a7 + 224 * v15;
      if (!*(v24 + 88))
      {
        v33 = *(v34 + 8);
        v25 = cstdlib_strlen(*(*(v24 + 16) + 8 * *(a6 + 18)));
        v26 = heap_Calloc(v33, 1, v25 + 1);
        v31 = *a7;
        *(*a7 + 224 * v15 + 88) = v26;
        if (!v26)
        {
          log_OutPublic(*(v34 + 32), "FE_PHRASING", 37000, 0, v27, v28, v29, v30, v32);
          return 2315264010;
        }

        cstdlib_strcpy(v26, *(*(v31 + 224 * v15 + 16) + 8 * *(a6 + 18)));
        v23 = *a7;
      }

      result = doMapStr(v34, (*(v23 + 224 * v15 + 16) + 8 * *(a6 + 18)), (*(a6 + 528) + *(*(a6 + 536) + 4 * *(*(a6 + 96) + v17))));
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = 0;
      goto LABEL_15;
    }

    ++v18;
    v17 += 32;
    if (v18 >= *(a6 + 104))
    {
      goto LABEL_15;
    }
  }
}

uint64_t setPhraseType(uint64_t a1, const char **a2, unsigned __int16 *a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a7 + 32) = a8;
  log_OutText(*(a5 + 32), "FE_PHRASING", 5, 0, "  Using ORT %s", a6, a7, a8, a8);
  v40 = a7;
  log_OutText(*(a5 + 32), "FE_PHRASING", 5, 0, "  Using POS %s", v15, v16, v17, *(a7 + 16));
  log_OutText(*(a5 + 32), "FE_PHRASING", 5, 0, "  applying %d phrase type rules", v18, v19, v20, *(a6 + 320));
  if (!*(a6 + 320))
  {
    return 0;
  }

  v24 = 0;
  matched = 0;
  v42 = 0;
  while (1)
  {
    v41 = 5;
    LOWORD(v42) = 0;
    v43 = 1;
    v26 = *(a6 + 336);
    v27 = *(v26 + 16 * v24);
    if (*(v26 + 16 * v24))
    {
      break;
    }

    v30 = 0;
LABEL_10:
    if (v27 == v30)
    {
      log_OutText(*(a5 + 32), "FE_PHRASING", 5, 0, "ALL %d RULES FIRE -> SET Phrase type %s", v21, v22, v23, v27);
      v32 = *(a5 + 8);
      v33 = cstdlib_strlen((*(a6 + 528) + *(*(a6 + 536) + 4 * *(*(a6 + 328) + 4 * v24))));
      v34 = heap_Calloc(v32, 1, (v33 + 1));
      *(v40 + 40) = v34;
      if (v34)
      {
        cstdlib_strcpy(v34, (*(a6 + 528) + *(*(a6 + 536) + 4 * *(*(a6 + 328) + 4 * v24))));
      }

      else
      {
        log_OutPublic(*(a5 + 32), "FE_PHRASING", 37000, 0, v35, v36, v37, v38, v39);
        return 2315264010;
      }

      return matched;
    }

LABEL_12:
    if (++v24 >= *(a6 + 320))
    {
      return matched;
    }
  }

  v28 = 0;
  v29 = 0;
  while (1)
  {
    matched = matchPANDPRULE_TRule(a1, a2, a3, a4, a6, v40, *(v26 + 16 * v24 + 8) + v28, &v41, &v43);
    if ((matched & 0x80000000) != 0)
    {
      return matched;
    }

    if (v43 != 1)
    {
      goto LABEL_12;
    }

    ++v29;
    v26 = *(a6 + 336);
    v27 = *(v26 + 16 * v24);
    v28 += 24;
    if (v29 >= v27)
    {
      v30 = v29;
      goto LABEL_10;
    }
  }
}

uint64_t getDomainFromPausingDefs(uint64_t a1, char *__s1, _WORD *a3)
{
  if (!*(a1 + 56))
  {
    return 0;
  }

  v6 = 0;
  v7 = 0;
  while (cstdlib_strcmp(__s1, (*(a1 + 528) + *(*(a1 + 536) + 4 * *(*(a1 + 48) + v6)))))
  {
    ++v7;
    v6 += 8;
    if (v7 >= *(a1 + 56))
    {
      return 0;
    }
  }

  *a3 = v7;
  return 1;
}

uint64_t createLists(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(a3 + 4);
  if (v3)
  {
    v7 = 0;
    v8 = *(a2 + 24);
    v9 = *a3;
    v10 = 32 * v8;
    while (1)
    {
      v11 = v7;
      v12 = *(v9 + 224 * v7 + 56);
      if (v12 && *(v12 + v10) == 1)
      {
        v13 = heap_Calloc(*(a1 + 8), 1, (8 * *(a2 + 72)) | 1);
        v9 = *a3;
        *(*a3 + 224 * v11 + 64) = v13;
        if (!v13)
        {
LABEL_37:
          log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v14, v15, v16, v17, v40);
          return 2315264010;
        }

        if (*(a2 + 72))
        {
          v18 = 0;
          v19 = v9;
          do
          {
            v20 = *(v19 + 224 * v11 + 56) + 32 * v8;
            v21 = *(v20 + 8);
            if (v21 <= *(v20 + 10))
            {
              v23 = 0;
              v22 = v9;
              do
              {
                v24 = v21;
                v25 = *(v19 + 224 * v21 + 16);
                if (v25)
                {
                  v26 = *(v25 + 8 * v18);
                  if (v26)
                  {
                    v23 += cstdlib_strlen(v26) + 1;
                    v22 = *a3;
                    v19 = *a3;
                  }
                }

                v27 = *(v19 + 224 * v24 + 56);
                if (v27)
                {
                  v28 = v27 + 32 * v18;
                  v29 = *(v28 + 16);
                  if (v29)
                  {
                    if (*v28 == 1)
                    {
                      v23 += cstdlib_strlen(v29) + 1;
                      v22 = *a3;
                    }
                  }
                }

                LOWORD(v21) = v24 + 1;
                v19 = v22;
              }

              while (*(*(v22 + 224 * v11 + 56) + 32 * v8 + 10) >= (v24 + 1));
              v9 = v22;
              if (v23)
              {
                v30 = heap_Calloc(*(a1 + 8), 1, v23 + 2);
                *(*(*a3 + 224 * v11 + 64) + 8 * v18) = v30;
                if (!v30)
                {
                  goto LABEL_37;
                }

                cstdlib_strcpy(v30, "");
                v9 = *a3;
                v31 = *(*a3 + 224 * v11 + 56) + 32 * v8;
                v32 = *(v31 + 8);
                if (v32 <= *(v31 + 10))
                {
                  do
                  {
                    v33 = v32;
                    v34 = *(v9 + 224 * v32 + 16);
                    if (v34)
                    {
                      v35 = *(v34 + 8 * v18);
                      if (v35)
                      {
                        cstdlib_strcat(*(*(v9 + 224 * v11 + 64) + 8 * v18), v35);
                        cstdlib_strcat(*(*(*a3 + 224 * v11 + 64) + 8 * v18), " ");
                        v9 = *a3;
                      }
                    }

                    v36 = *(v9 + 224 * v33 + 56);
                    if (v36)
                    {
                      v37 = v36 + 32 * v18;
                      v38 = *(v37 + 16);
                      if (v38)
                      {
                        if (*v37 == 1)
                        {
                          cstdlib_strcat(*(*(v9 + 224 * v11 + 64) + 8 * v18), v38);
                          cstdlib_strcat(*(*(*a3 + 224 * v11 + 64) + 8 * v18), " ");
                          v9 = *a3;
                        }
                      }
                    }

                    LOWORD(v32) = v33 + 1;
                    v19 = v9;
                  }

                  while (*(*(v9 + 224 * v11 + 56) + 32 * v8 + 10) >= (v33 + 1));
                }

                else
                {
                  v19 = *a3;
                }

                goto LABEL_33;
              }
            }

            else
            {
              v22 = v19;
            }

            *(*(v22 + 224 * v11 + 64) + 8 * v18) = 0;
            v19 = v22;
LABEL_33:
            ++v18;
          }

          while (v18 < *(a2 + 72));
        }

        v7 = *(*(v9 + 224 * v11 + 56) + 32 * v8 + 10);
        v3 = *(a3 + 4);
        v10 = 32 * v8;
      }

      if (++v7 >= v3)
      {
        return 0;
      }
    }
  }

  return 0;
}

BOOL isStrSetting(uint64_t a1, char *__s1, const char *a3)
{
  if (!*(a1 + 40))
  {
    return 0;
  }

  v6 = 0;
  v7 = 0;
  while (cstdlib_strcmp(__s1, (*(a1 + 528) + *(*(a1 + 536) + 4 * *(*(a1 + 32) + v6)))))
  {
    ++v7;
    v6 += 8;
    if (v7 >= *(a1 + 40))
    {
      return 0;
    }
  }

  return cstdlib_strcmp(a3, (*(a1 + 528) + *(*(a1 + 536) + 4 * *(*(a1 + 32) + v6 + 4)))) == 0;
}

uint64_t adjustWordIdxByWindow(unsigned __int16 *a1, uint64_t *a2, unsigned __int16 *a3, int a4, _DWORD *a5, unsigned __int16 *a6, uint64_t a7, uint64_t a8)
{
  *a5 = 1;
  v8 = *a2;
  v9 = a3[2];
  v10 = *(*a2 + 224 * a3[2] + 56);
  if (!v10 || (v11 = a1[12], !*(v10 + 32 * v11)))
  {
    result = 0;
    *a5 = 0;
    return result;
  }

  if (a4 == 2)
  {
    v20 = *(a2 + 4);
    if (v9 + 1 == v20)
    {
      *a5 = 0;
      if (a1[4] >= 2u)
      {
        v21 = *(*a1 + 32);
        v22 = "           [1] _RIGHT doesnt exist, return LH_FALSE";
LABEL_38:
        log_OutText(v21, "FE_PHRASING", 5, 0, v22, a6, a7, a8, 0);
LABEL_39:
        LOWORD(v9) = a3[2];
      }
    }

    else
    {
      v23 = a3[4] + 1;
      v24 = a3[2];
      if ((v23 & 0x10000) != 0)
      {
LABEL_21:
        if (v20 > v24)
        {
          *a6 = v24;
          if (a1[4] >= 2u)
          {
            v17 = *(*a1 + 32);
            v18 = a3[2];
            v19 = "           [3] _RIGHT wordIdx=%d";
            goto LABEL_24;
          }

          return 0;
        }
      }

      else
      {
        v24 = a3[2];
        while (v20 > v24)
        {
          v24 = *(*(v8 + 224 * v24 + 56) + 32 * v11 + 10) + 1;
          if (!--v23)
          {
            goto LABEL_21;
          }
        }
      }

      *a5 = 0;
      if (a1[4] >= 2u)
      {
        v21 = *(*a1 + 32);
        v22 = "           [2] _RIGHT doesnt exist, return LH_FALSE";
        goto LABEL_38;
      }
    }

LABEL_40:
    result = 0;
    *a6 = v9;
    return result;
  }

  if (a4 != 1)
  {
    if (a4 || a1[4] < 2u)
    {
      goto LABEL_40;
    }

    log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "           _CUR wordIdx=%d", a6, a7, a8, a3[2]);
    goto LABEL_39;
  }

  if (a3[2])
  {
    v15 = a3[3] + 1;
    if ((v15 & 0x10000) == 0)
    {
      v16 = a3[2];
      do
      {
        v25 = v16 - 1;
        v26 = *(v8 + 224 * v25 + 56) + 32 * v11;
        if (!*(v26 + 4))
        {
          log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "wordindex=%d does not end previous phrase", a6, a7, a8, v25);
          return 2315264000;
        }

        v16 = *(v26 + 8);
        --v15;
      }

      while (v15 && *(v26 + 8));
      if (!v15)
      {
        goto LABEL_12;
      }

      *a5 = 0;
      if (a1[4] >= 2u)
      {
        v21 = *(*a1 + 32);
        v22 = "           [2] _LEFT doesnt exist, return LH_FALSE";
        goto LABEL_38;
      }

      goto LABEL_40;
    }

    v16 = a3[2];
LABEL_12:
    *a6 = v16;
    if (a1[4] >= 2u)
    {
      v17 = *(*a1 + 32);
      v18 = a3[2];
      v19 = "           [3] _LEFT wordIdx=%d";
LABEL_24:
      log_OutText(v17, "FE_PHRASING", 5, 0, v19, a6, a7, a8, v18);
      return 0;
    }

    return 0;
  }

  *a5 = 0;
  if (a1[4] >= 2u)
  {
    log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "           [1] _LEFT doesnt exist, return LH_FALSE", a6, a7, a8, 0);
    LOWORD(v9) = a3[2];
  }

  result = 0;
  *a6 = v9;
  return result;
}

_WORD *readTWOPARTNUM(uint64_t a1, _DWORD *a2, _WORD *a3)
{
  __dst = 0;
  cstdlib_memcpy(&__dst + 2, (a1 + *a2), 2uLL);
  v6 = (*a2 + 2);
  *a2 = v6;
  cstdlib_memcpy(&__dst, (a1 + v6), 2uLL);
  *a2 += 2;
  return FLOATSUR_SET_INT(a3, SHIWORD(__dst), __dst);
}

uint64_t readRULE(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t *a4)
{
  result = readCONTEXT(a1, a2, a3, a4);
  if ((result & 0x80000000) == 0)
  {
    result = readCONTEXT(a1, a2, a3, a4 + 1);
    if ((result & 0x80000000) == 0)
    {

      return readCONTEXT(a1, a2, a3, a4 + 2);
    }
  }

  return result;
}

uint64_t readCONTEXT(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t *a4)
{
  __dst = 0;
  cstdlib_memcpy(&__dst, (a2 + *a3), 2uLL);
  *a3 += 2;
  if (!__dst)
  {
    return 0;
  }

  v8 = heap_Calloc(*(a1 + 8), 1, 17);
  if (v8 && (v13 = v8, v14 = __dst, *(v8 + 8) = __dst, v15 = heap_Calloc(*(a1 + 8), 1, (6 * v14) | 1), (*v13 = v15) != 0))
  {
    if (*(v13 + 8))
    {
      v16 = 0;
      v17 = 0;
      v18 = *a3;
      do
      {
        cstdlib_memcpy((v15 + v16), (a2 + v18), 2uLL);
        v19 = *a3 + 2;
        *a3 = v19;
        cstdlib_memcpy((*v13 + v16 + 2), (a2 + v19), 2uLL);
        v20 = *a3 + 2;
        *a3 = v20;
        cstdlib_memcpy(&__dst + 2, (a2 + v20), 2uLL);
        v18 = *a3 + 2;
        *a3 = v18;
        v15 = *v13;
        *(*v13 + v16 + 4) = BYTE2(__dst);
        ++v17;
        v16 += 6;
      }

      while (v17 < *(v13 + 8));
    }

    v21 = 0;
    *a4 = v13;
  }

  else
  {
    v21 = 2315264010;
    log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v9, v10, v11, v12, v23);
  }

  return v21;
}

void *readREGEX(uint64_t a1, _DWORD *a2, char *__dst)
{
  __dsta = 0;
  cstdlib_memcpy(__dst, (a1 + *a2), 2uLL);
  v6 = (*a2 + 2);
  *a2 = v6;
  cstdlib_memcpy(__dst + 2, (a1 + v6), 2uLL);
  v7 = (*a2 + 2);
  *a2 = v7;
  result = cstdlib_memcpy(&__dsta, (a1 + v7), 2uLL);
  *a2 += 2;
  __dst[4] = __dsta;
  return result;
}

uint64_t nn_phrasing_checkIfActive(_WORD *a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v19 = 0;
  v20 = 0;
  *a4 = 0;
  BrokerString = nn_phrasing_getBrokerString(a3, &v20);
  if ((BrokerString & 0x80000000) != 0)
  {
    return BrokerString;
  }

  v9 = v20;
  if ((ssftriff_reader_ObjOpen(a1, a2, 2, v20, "FINN", 1, &v19) & 0x80000000) != 0)
  {
    v17 = 0;
    if (!v9)
    {
      return v17;
    }

LABEL_9:
    heap_Free(*(a3 + 8), v9);
    return v17;
  }

  v17 = ssftriff_reader_ObjClose(v19, v10, v11, v12, v13, v14, v15, v16);
  if ((v17 & 0x80000000) == 0)
  {
    *a4 = 1;
  }

  if (v9)
  {
    goto LABEL_9;
  }

  return v17;
}

uint64_t nn_phrasing_getBrokerString(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v11 = "";
  __s2 = 0;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  *__s1 = 0u;
  v14 = 0u;
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", &__s2);
  if ((result & 0x80000000) == 0)
  {
    result = paramc_ParamGetStr(*(a1 + 40), "fecfg", &v11);
    if ((result & 0x80000000) == 0)
    {
      cstdlib_strcat(__s1, "nn_pausing_");
      cstdlib_strcat(__s1, __s2);
      cstdlib_strcat(__s1, "_");
      cstdlib_strcat(__s1, v11);
      v5 = heap_Calloc(*(a1 + 8), 1, 1024);
      *a2 = v5;
      if (v5)
      {
        return brokeraux_ComposeBrokerString(a1, __s1, 1, 1, __s2, 0, 0, v5, 0x400uLL);
      }

      else
      {
        log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v6, v7, v8, v9, v10);
        return 2315264010;
      }
    }
  }

  return result;
}

uint64_t nn_phrasing_Load(_WORD *a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *__b)
{
  v148 = *MEMORY[0x277D85DE8];
  v134 = 0;
  cstdlib_memset(__b, 0, 0x90uLL);
  v144 = 0;
  v143 = -1;
  v142 = 0;
  v137 = 0;
  NumericFeatureValue = getNumericFeatureValue(a6, a7, a8, "nnpausing_puncpause", __b);
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  NumericFeatureValue = getNumericFeatureValue(a6, a7, a8, "nnpausing_resppause", __b + 1);
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  NumericFeatureValue = getNumericFeatureValue(a6, a7, a8, "nnpausing_numadditionalfields", __b + 2);
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  NumericFeatureValue = getNumericFeatureValue(a6, a7, a8, "nnpausing_maxwordsinsent", __b + 3);
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  NumericFeatureValue = getNumericFeatureValue(a6, a7, a8, "nnpausing_thresholdpercent", __b + 4);
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  NumericFeatureValue = getNumericFeatureValue(a6, a7, a8, "nnpausing_numfeats", __b + 5);
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  NumericFeatureValue = getNumericFeatureValue(a6, a7, a8, "nnpausing_dolenverification", __b + 8);
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  NumericFeatureValue = getNumericFeatureValue(a6, a7, a8, "nnpausing_dophrverification", __b + 7);
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  NumericFeatureValue = getNumericFeatureValue(a6, a7, a8, "nnpausing_docompverification", __b + 6);
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  NumericFeatureValue = getNumericFeatureValue(a6, a7, a8, "nnpausing_usedynamicstep", __b + 9);
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  v133 = 0;
  log_OutText(*(a5 + 32), "FE_PHRASING", 5, 0, "nnpausing_puncpause %d", v18, v19, v20, *__b);
  log_OutText(*(a5 + 32), "FE_PHRASING", 5, 0, "nnpausing_resppause %d", v21, v22, v23, *(__b + 1));
  log_OutText(*(a5 + 32), "FE_PHRASING", 5, 0, "nnpausing_numadditionalfields %d", v24, v25, v26, *(__b + 2));
  log_OutText(*(a5 + 32), "FE_PHRASING", 5, 0, "nnpausing_maxwordsinsent %d", v27, v28, v29, *(__b + 3));
  log_OutText(*(a5 + 32), "FE_PHRASING", 5, 0, "nnpausing_thresholdpercent %d", v30, v31, v32, *(__b + 4));
  log_OutText(*(a5 + 32), "FE_PHRASING", 5, 0, "nnpausing_numfeats %d", v33, v34, v35, *(__b + 5));
  log_OutText(*(a5 + 32), "FE_PHRASING", 5, 0, "nnpausing_dolenverification %d", v36, v37, v38, *(__b + 8));
  log_OutText(*(a5 + 32), "FE_PHRASING", 5, 0, "nnpausing_dophrverification %d", v39, v40, v41, *(__b + 7));
  log_OutText(*(a5 + 32), "FE_PHRASING", 5, 0, "nnpausing_docompverification %d", v42, v43, v44, *(__b + 6));
  log_OutText(*(a5 + 32), "FE_PHRASING", 5, 0, "nnpausing_usedynamicstep %d", v45, v46, v47, *(__b + 9));
  if (*(__b + 5))
  {
    v48 = heap_Calloc(*(a5 + 8), 1, 32 * *(__b + 5));
    __b[4] = v48;
    if (!v48)
    {
      v87 = 2315264010;
      log_OutPublic(*(a5 + 32), "FE_PHRASING", 37000, 0, v49, v50, v51, v52, v123);
      return v87;
    }

    v140 = 0;
    v138 = 0u;
    v139 = 0u;
    if (*(__b + 5))
    {
      v53 = 0;
      v54 = 0;
      v129 = 0;
      v130 = a5;
      while (1)
      {
        v132 = v53;
        cstdlib_memset(__dst, 0, 0x20uLL);
        cstdlib_strcpy(__dst, "nnpausing_feat");
        v131 = v54;
        v55 = LH_itoa(v54, v141, 0xAu);
        cstdlib_strcat(v147, v55);
        v143 = -1;
        NumericFeatureValue = (*(a6 + 96))(a7, a8, "fecfg", __dst, &v144, &v143, &v142);
        if ((NumericFeatureValue & 0x80000000) != 0)
        {
          return NumericFeatureValue;
        }

        if (v143)
        {
          break;
        }

        v66 = v132;
LABEL_34:
        v54 = v131 + 1;
        v53 = v66 + 32;
        if (v131 + 1 >= *(__b + 5))
        {
          goto LABEL_35;
        }
      }

      v56 = *v144;
      v57 = cstdlib_strchr(*v144, 124);
      if (v57)
      {
        *v57 = 0;
        __s1 = v57 + 1;
        v63 = cstdlib_strchr(v57 + 1, 124);
        if (v63)
        {
          *v63 = 0;
          __s = v63 + 1;
          v64 = cstdlib_strchr(v63 + 1, 124);
          if (v64)
          {
            *v64 = 0;
            v126 = (v64 + 1);
            v65 = cstdlib_strchr(v64 + 1, v142);
            if (v65)
            {
              *v65 = 0;
            }

LABEL_26:
            NumericFeatureValue = setStr(a5, (__b[4] + v132), v56, v58, v59, v60, v61, v62);
            if ((NumericFeatureValue & 0x80000000) != 0)
            {
              return NumericFeatureValue;
            }

            if (__s1)
            {
              v72 = cstdlib_strcmp(__s1, "NUMERIC");
              v73 = __b[4];
              if (!v72)
              {
                v74 = v132;
                *(v73 + v132 + 8) = 1;
LABEL_32:
                NumericFeatureValue = setStr(v130, (v73 + v74 + 16), __s, v67, v68, v69, v70, v71);
                if ((NumericFeatureValue & 0x80000000) != 0)
                {
                  return NumericFeatureValue;
                }

                v75 = cstdlib_atoi(v126);
                v76 = __b[4] + v74;
                *(v76 + 26) = v75;
                *(v76 + 28) = v129;
                v129 += v75;
                v66 = v74;
                a5 = v130;
                goto LABEL_34;
              }
            }

            else
            {
              v73 = __b[4];
            }

            v74 = v132;
            goto LABEL_32;
          }

LABEL_25:
          v126 = 0;
          goto LABEL_26;
        }
      }

      else
      {
        __s1 = 0;
      }

      __s = 0;
      goto LABEL_25;
    }

LABEL_35:
    cstdlib_memset(&v138, 0, 0x28uLL);
    *&v138 = ssftmap_ElemCopyString;
    *(&v139 + 1) = ssftmap_ElemCopyString;
    *(&v138 + 1) = ssftmap_ElemFreeString;
    v140 = ssftmap_ElemFreeString;
    *&v139 = ssftmap_ElemCompareKeysString;
    v77 = *(a5 + 8);
    v135[0] = v138;
    v135[1] = v139;
    v136 = ssftmap_ElemFreeString;
    NumericFeatureValue = ssftmap_ObjOpen(v77, 0, v135, __b + 3);
    if ((NumericFeatureValue & 0x80000000) != 0)
    {
      return NumericFeatureValue;
    }

    v143 = -1;
    NumericFeatureValue = (*(a6 + 96))(a7, a8, "fecfg", "nnpausing_cols", &v144, &v143, &v142);
    if ((NumericFeatureValue & 0x80000000) != 0)
    {
      return NumericFeatureValue;
    }

    if (v143)
    {
      v78 = cstdlib_strchr(*v144, v142);
      if (v78)
      {
        *v78 = 0;
      }

      v79 = *v144;
      v80 = cstdlib_strchr(*v144, 124);
      if (v80)
      {
        v81 = v80;
        v82 = 0;
        while (1)
        {
          *v81 = 0;
          LH_itoa(v82, v145, 0xAu);
          log_OutText(*(a5 + 32), "FE_PHRASING", 5, 0, "Feature to index mappings %s -> %s", v83, v84, v85, v79);
          NumericFeatureValue = ssftmap_Insert(__b[3], v79, v145);
          if ((NumericFeatureValue & 0x80000000) != 0)
          {
            return NumericFeatureValue;
          }

          ++v82;
          v79 = v81 + 1;
          v81 = cstdlib_strchr(v81 + 1, 124);
          if (!v81)
          {
            v86 = v82;
            goto LABEL_48;
          }
        }
      }

      if (v79)
      {
        v86 = 0;
LABEL_48:
        LH_itoa(v86, v145, 0xAu);
        NumericFeatureValue = ssftmap_Insert(__b[3], v79, v145);
        if ((NumericFeatureValue & 0x80000000) != 0)
        {
          return NumericFeatureValue;
        }
      }
    }

    if (*(__b + 5))
    {
      v88 = 0;
      v89 = 0;
      v90 = __b[4];
      do
      {
        v91 = ssftmap_Find(__b[3], *(v90 + v88 + 16), &v137);
        if ((v91 & 0x1FFF) == 0x14)
        {
          log_OutPublic(*(a5 + 32), "FE_PHRASING", 37005, "%s%s", v92, v93, v94, v95, "expected default value for");
          return 2315264000;
        }

        v87 = v91;
        v96 = cstdlib_atoi(v137);
        v90 = __b[4];
        *(v90 + v88 + 24) = v96;
        ++v89;
        v88 += 32;
      }

      while (v89 < *(__b + 5));
      if ((v87 & 0x80000000) != 0)
      {
        return v87;
      }
    }
  }

  NumericFeatureValue = nn_word_lkp_GetInterface(1u, __b + 9);
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  __b[10] = safeh_GetNullHandle();
  __b[11] = v97;
  __b[12] = safeh_GetNullHandle();
  __b[13] = v98;
  NumericFeatureValue = (*(__b[9] + 16))(__b[10], __b[11], "word", a1, a2);
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  NumericFeatureValue = (*(__b[9] + 40))(__b[12], __b[13], __b + 112);
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  log_OutText(*(a5 + 32), "FE_PHRASING", 5, 0, "word2vec length %d", v99, v100, v101, *(__b + 28));
  v102 = heap_Alloc(*(a5 + 8), 4 * *(__b + 28));
  __b[15] = v102;
  if (v102)
  {
    BrokerString = nn_phrasing_getBrokerString(a5, &v134);
    v108 = v134;
    if ((BrokerString & 0x80000000) != 0)
    {
      v87 = BrokerString;
    }

    else
    {
      v109 = fi_init(a1, a2, a3, a4, &v133, 0, v134, "FINN", 1, 0);
      if ((v109 & 0x80000000) != 0)
      {
        log_OutPublic(*(a5 + 32), "FE_PHRASING", 37006, 0, v110, v111, v112, v113, v125);
        v87 = 2315264000;
      }

      else
      {
        v87 = v109;
        v114 = *v133;
        v115 = *(*v133 + 52);
        if (*(__b + 9))
        {
          if (v115 == 2 && *(v114 + 60) == *(__b + 28) + *(__b + 2))
          {
            v116 = *(__b + 3);
            goto LABEL_64;
          }

          log_OutPublic(*(a5 + 32), "FE_PHRASING", 37003, "%s%d%s%d", v110, v111, v112, v113, "expected");
        }

        else
        {
          v116 = *(__b + 3);
          if (v115 == 2 && *(v114 + 56) == v116 && *(v114 + 60) == *(__b + 28) + *(__b + 2))
          {
LABEL_64:
            __b[6] = v133;
            v117 = heap_Calloc(*(a5 + 8), 1, (12 * v116) | 1);
            __b[16] = v117;
            if (!v117)
            {
              v87 = 2315264010;
              log_OutPublic(*(a5 + 32), "FE_PHRASING", 37000, 0, v118, v119, v120, v121, v125);
            }

            goto LABEL_79;
          }

          log_OutPublic(*(a5 + 32), "FE_PHRASING", 37003, "%s%d%d%s%d%d", v110, v111, v112, v113, "expected");
        }

        v87 = 2315264025;
      }
    }
  }

  else
  {
    v87 = 2315264010;
    log_OutPublic(*(a5 + 32), "FE_PHRASING", 37000, 0, v103, v104, v105, v106, v124);
    v108 = v134;
  }

LABEL_79:
  if (v108)
  {
    heap_Free(*(a5 + 8), v108);
  }

  return v87;
}

uint64_t nn_phrasing_UnLoad(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ssftmap_ObjClose(*(a3 + 24));
  v6 = *(a3 + 32);
  if (v6)
  {
    if (*(a3 + 10))
    {
      v7 = 0;
      v8 = 0;
      do
      {
        if (*(v6 + v7))
        {
          heap_Free(*(a1 + 8), *(v6 + v7));
          v6 = *(a3 + 32);
          *(v6 + v7) = 0;
        }

        if (*(v6 + v7 + 16))
        {
          heap_Free(*(a1 + 8), *(v6 + v7 + 16));
          v6 = *(a3 + 32);
          *(v6 + v7 + 16) = 0;
        }

        ++v8;
        v7 += 32;
      }

      while (v8 < *(a3 + 10));
    }

    heap_Free(*(a1 + 8), v6);
    *(a3 + 32) = 0;
  }

  v9 = *(a3 + 120);
  if (v9)
  {
    heap_Free(*(a1 + 8), v9);
    *(a3 + 120) = 0;
  }

  v10 = *(a3 + 72);
  if (v10)
  {
    (*(v10 + 24))(*(a3 + 96), *(a3 + 104));
    *(a3 + 72) = 0;
  }

  v11 = fi_deinit(a1, a2, *(a3 + 48));
  v12 = *(a3 + 128);
  if (v12)
  {
    heap_Free(*(a1 + 8), v12);
    *(a3 + 128) = 0;
  }

  cstdlib_memset(a3, 0, 0x90uLL);
  return v11;
}

uint64_t NNPausing_cleanLingdb(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = 0;
  if (!*(a5 + 136))
  {
    return 0;
  }

  v24 = 0;
  v25 = 0;
  v23 = 0;
  v21 = 0;
  v22 = 0;
  v19 = 0;
  result = (*(a2 + 104))(a3, a4, 1, 0, &v25);
  if ((result & 0x80000000) == 0)
  {
    result = (*(a2 + 184))(a3, a4, v25, 0, &v25 + 2);
    if ((result & 0x80000000) == 0 && HIWORD(v25) == 1)
    {
      result = (*(a2 + 176))(a3, a4, v25, 0, &v19, &v24);
      if ((result & 0x80000000) == 0 && v24 >= 2u)
      {
        result = (*(a2 + 104))(a3, a4, 2, v25, &v24 + 2);
        if ((result & 0x80000000) == 0)
        {
          v11 = HIWORD(v24);
          if (HIWORD(v24))
          {
            v12 = 0;
            while (1)
            {
              result = (*(a2 + 168))(a3, a4, v11, 0, 1, &v22, &v24);
              if ((result & 0x80000000) != 0)
              {
                break;
              }

              if (v22 <= 0xA && ((1 << v22) & 0x610) != 0)
              {
                result = (*(a2 + 168))(a3, a4, HIWORD(v24), 1, 1, &v21, &v24);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                result = (*(a2 + 168))(a3, a4, HIWORD(v24), 2, 1, &v21 + 2, &v24);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                if (v21 != HIWORD(v21))
                {
                  if (v12 + 1 >= *(a5 + 6))
                  {
                    return result;
                  }

                  result = getWordIdx(a1, *(a5 + 128), *(a5 + 136), v21, HIWORD(v21), &v20, v14, v15);
                  if ((result & 0x80000000) != 0)
                  {
                    return result;
                  }

                  v12 = v20;
                  if (*(*(a5 + 128) + 12 * v20) == 1)
                  {
                    result = (*(a2 + 160))(a3, a4, HIWORD(v24), 18, 1, "", &v23);
                    if ((result & 0x80000000) != 0)
                    {
                      return result;
                    }

                    log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "NN pausing : remove temp external label from  WordRecord[%d] word[%d] by setting to ", v16, v17, v18, HIWORD(v24));
                  }
                }
              }

              result = (*(a2 + 120))(a3, a4, HIWORD(v24), &v24 + 2);
              if ((result & 0x80000000) == 0)
              {
                v11 = HIWORD(v24);
                if (HIWORD(v24))
                {
                  continue;
                }
              }

              return result;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t getWordIdx(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, _WORD *a6, uint64_t a7, uint64_t a8)
{
  if (a3)
  {
    v8 = 0;
    v9 = (a2 + 8);
    while (*(v9 - 1) != a4 || *v9 != a5)
    {
      ++v8;
      v9 += 3;
      if (a3 == v8)
      {
        goto LABEL_6;
      }
    }

    result = 0;
    *a6 = v8;
  }

  else
  {
LABEL_6:
    log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "cant align lingdb word : no word found with at %d,%d", a6, a7, a8, a4);
    return 2315264000;
  }

  return result;
}

uint64_t NNPausing_UpdateLingdb(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v33 = 0;
  v34 = 0;
  v32 = 0;
  v31 = 0;
  v30 = 0;
  v29 = 0;
  result = (*(a2 + 104))(a3, a4, 1, 0, &v37);
  if ((result & 0x80000000) == 0)
  {
    result = (*(a2 + 184))(a3, a4, v37, 0, &v37 + 2);
    if ((result & 0x80000000) == 0 && HIWORD(v37) == 1)
    {
      result = (*(a2 + 176))(a3, a4, v37, 0, &v31, &v36);
      if ((result & 0x80000000) == 0 && v36 >= 2u)
      {
        result = (*(a2 + 104))(a3, a4, 2, v37, &v36 + 2);
        if ((result & 0x80000000) == 0)
        {
          v13 = HIWORD(v36);
          if (HIWORD(v36))
          {
            v14 = 0;
            while (1)
            {
              result = (*(a2 + 168))(a3, a4, v13, 0, 1, &v34, &v36);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              if (v34 <= 0xA && ((1 << v34) & 0x610) != 0)
              {
                result = (*(a2 + 168))(a3, a4, HIWORD(v36), 1, 1, &v33, &v36);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                result = (*(a2 + 168))(a3, a4, HIWORD(v36), 2, 1, &v33 + 2, &v36);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                if (v33 != HIWORD(v33))
                {
                  if (v14 + 1 >= *(a5 + 6))
                  {
                    return result;
                  }

                  result = getWordIdx(a1, *(a5 + 128), *(a5 + 136), v33, HIWORD(v33), &v32, v16, v17);
                  if ((result & 0x80000000) != 0)
                  {
                    return result;
                  }

                  v29 = 0;
                  v14 = v32;
                  v18 = *(*a6 + 224 * v32 + 216);
                  v19 = a5;
                  if (v18 != 1)
                  {
                    if (v18 != 2)
                    {
                      goto LABEL_29;
                    }

                    v19 = (a5 + 2);
                  }

                  v29 = *v19;
                  if (v29)
                  {
                    result = checkForExternalSildur(a2, a3, a4, HIWORD(v36), &v30);
                    if ((result & 0x80000000) != 0)
                    {
                      return result;
                    }

                    if (v30)
                    {
                      log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "NN pausing : clash with WordRecord[%d] word[%d] external pause has priority", v20, v21, v22, HIWORD(v36));
                    }

                    else
                    {
                      result = (*(a2 + 160))(a3, a4, HIWORD(v36), 8, 1, &v29, &v35);
                      if ((result & 0x80000000) != 0)
                      {
                        return result;
                      }

                      v23 = *(a2 + 160);
                      v24 = HIWORD(v36);
                      v25 = cstdlib_strlen("external");
                      result = v23(a3, a4, v24, 18, (v25 + 1), "external", &v35);
                      if ((result & 0x80000000) != 0)
                      {
                        return result;
                      }

                      log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "NN pausing : updating WordRecord[%d] word[%d] set as ext pause with duration=%d", v26, v27, v28, HIWORD(v36));
                      *(*(a5 + 128) + 12 * v14) = 1;
                    }
                  }
                }
              }

LABEL_29:
              result = (*(a2 + 120))(a3, a4, HIWORD(v36), &v36 + 2);
              if ((result & 0x80000000) == 0)
              {
                v13 = HIWORD(v36);
                if (HIWORD(v36))
                {
                  continue;
                }
              }

              return result;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t nn_phrasing_ProcessSent(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _DWORD *a9)
{
  v10 = a9;
  v169 = 0;
  v11 = *(a5 + 8);
  v168 = 0;
  v165 = 0;
  __s2 = 0;
  v163 = 0;
  *(a7 + 136) = 0;
  *a9 = 1;
  if (!v11)
  {
    log_OutText(a1[4], "FE_PHRASING", 5, 0, "skip NN pausing, no words found", a6, a7, a8, 0);
    Str = 0;
    goto LABEL_34;
  }

  v12 = a8;
  v166 = 0;
  v18 = (*(a2 + 104))(a3, a4, 1, 0, &v166 + 2);
  if ((v18 & 0x80000000) != 0)
  {
    return v18;
  }

  v18 = (*(a2 + 176))(a3, a4, HIWORD(v166), 1, &v165, &v166);
  if ((v18 & 0x80000000) != 0)
  {
    return v18;
  }

  Str = paramc_ParamGetStr(a1[5], "langcode", &__s2);
  if ((Str & 0x80000000) == 0)
  {
    v161 = v12;
    v158 = a3;
    v159 = a2;
    if (v166)
    {
      v23 = 0;
      v24 = 24;
      while (1)
      {
        if (*(v165 + v24 - 24) == 36)
        {
          if (cstdlib_strcmp(*(v165 + v24), __s2))
          {
            v25 = *(v165 + v24);
            MarkerArgStr = marker_getMarkerArgStr(1u);
            if (cstdlib_strcmp(v25, MarkerArgStr))
            {
              v27 = *(v165 + v24);
              v28 = marker_getMarkerArgStr(9u);
              if (cstdlib_strcmp(v27, v28))
              {
                v29 = *(v165 + v24);
                v30 = marker_getMarkerArgStr(2u);
                if (cstdlib_strcmp(v29, v30))
                {
                  break;
                }
              }
            }
          }
        }

        ++v23;
        v24 += 32;
        if (v23 >= v166)
        {
          goto LABEL_13;
        }
      }

      v40 = a1[4];
      v31 = *(v165 + v24);
      v41 = "skip NN pausing, as language tag %s found";
      goto LABEL_31;
    }

LABEL_13:
    v31 = *(a7 + 16);
    if (v161 == -1)
    {
      v32 = *(a7 + 16);
    }

    else
    {
      v32 = v161;
    }

    v33 = v32;
    if (!v32 || (LODWORD(v34) = *(a5 + 8), !*(a5 + 8)))
    {
LABEL_30:
      v40 = a1[4];
      v41 = "skip NN pausing, no valid predictive range found (doLenVerification setting is %d, minWordSpan parameter is %d)";
LABEL_31:
      log_OutText(v40, "FE_PHRASING", 5, 0, v41, v19, v20, v21, v31);
LABEL_34:
      *v10 = 0;
      return Str;
    }

    v157 = a4;
    v35 = 0;
    v36 = -1;
    v37 = 208;
    while (1)
    {
      if (**(*a5 + v37) == 88 && v35 + 1 != v34)
      {
        goto LABEL_28;
      }

      if (!v35)
      {
        log_OutText(a1[4], "FE_PHRASING", 5, 0, "skip 1 word phrase at word %d", v19, v20, v21, 0);
        v36 = 0;
        goto LABEL_28;
      }

      v39 = a1[4];
      if (v35 - v36 >= v33)
      {
        break;
      }

      log_OutText(v39, "FE_PHRASING", 5, 0, "skip %d word phrase ending at word %d", v19, v20, v21, v35 + -v36);
      v36 = v35;
LABEL_28:
      ++v35;
      v34 = *(a5 + 8);
      v37 += 224;
      if (v35 >= v34)
      {
        v31 = *(a7 + 16);
        v10 = a9;
        goto LABEL_30;
      }
    }

    log_OutText(v39, "FE_PHRASING", 5, 0, "found valid predictive range of length %d (minimum setting is %d) ending on word %d - continue with NN pausing", v19, v20, v21, -v36 + v35);
    if (*(a5 + 8) <= *(a7 + 6))
    {
      v43 = v11;
    }

    else
    {
      v43 = *(a7 + 6);
    }

    if (*(a7 + 18))
    {
      v44 = v43;
    }

    else
    {
      v44 = *(a7 + 6);
    }

    v45 = (*(a7 + 112) + *(a7 + 4)) * v44;
    *(a7 + 56) = v45;
    v46 = heap_Alloc(a1[1], 4 * v45);
    v167 = v46;
    if (!v46)
    {
      Str = 2315264010;
      log_OutPublic(a1[4], "FE_PHRASING", 37000, 0, v47, v48, v49, v50, v150);
      return Str;
    }

    v156 = v43;
    v51 = v43;
    v52 = *(a7 + 56);
    if (v52)
    {
      v53 = 0;
      do
      {
        v46[v53++] = -1.0;
      }

      while (v52 > v53);
    }

    log_OutText(a1[4], "FE_PHRASING", 5, 0, "Dimensions:\nmaxWordsInSent=%d\nword2vecVecLength=%dnumAdditionalFields=%d", v48, v49, v50, *(a7 + 6));
    v55 = a9;
    v56 = v159;
    v57 = v161;
    v152 = v51;
    if (v51)
    {
      v154 = 0;
      v155 = 0;
      v160 = 0;
      v58 = 0;
      while (1)
      {
        v59 = *(a7 + 112) + *(a7 + 4);
        if (v59)
        {
          v60 = 0;
          v61 = v167;
          v62 = v155 * v59;
          do
          {
            v61[v62] = 0.0;
            ++v60;
            ++v62;
          }

          while (v59 > v60);
        }

        v63 = (*a5 + 224 * v160);
        v64 = *(v63[2] + 8 * *(a6 + 16));
        v65 = v63[21];
        v66 = v63[26];
        v67 = cstdlib_strlen(v64);
        v68 = (v67 & 0xFFC0) != 0 ? v67 : 64;
        if (!v58)
        {
          break;
        }

        if (v68 > v154)
        {
          v69 = heap_Realloc(a1[1], v58, v68 + 1);
          if (!v69)
          {
            goto LABEL_152;
          }

          v58 = v69;
LABEL_59:
          v154 = v68;
        }

        v74 = "POS";
        if (v65 && cstdlib_strcmp(v65, "-"))
        {
          cstdlib_strcpy(v58, v65);
        }

        else
        {
          if (cstdlib_strcmp(v66, "X"))
          {
            v170[0] = 0;
            StartOfOrthPunc = getStartOfOrthPunc(v64, v170);
            v79 = v154;
            if (StartOfOrthPunc < v154)
            {
              v79 = StartOfOrthPunc;
            }

            if (v170[0] == 1)
            {
              v80 = v79;
            }

            else
            {
              v80 = v154;
            }
          }

          else
          {
            v80 = v154;
          }

          v81 = v80;
          cstdlib_strncpy(v58, v64, v80);
          v58[v81] = 0;
        }

        log_OutText(a1[4], "FE_PHRASING", 5, 0, "word [%d] %s lookup %s", v75, v76, v77, v155);
        v82 = (*(*(a7 + 72) + 56))(*(a7 + 96), *(a7 + 104), v58, *(a7 + 120));
        if ((v82 & 0x1FFF) == 0x14)
        {
          if (((*(*(a7 + 72) + 56))(*(a7 + 96), *(a7 + 104), "$MEANW2V$", *(a7 + 120)) & 0x1FFF) == 0x14)
          {
            log_OutPublic(a1[4], "FE_PHRASING", 37004, "%s%s", v83, v84, v85, v86, "expected");
            Str = 2315264000;
            goto LABEL_148;
          }
        }

        else
        {
          Str = v82;
          if ((v82 & 0x80000000) != 0)
          {
            goto LABEL_148;
          }
        }

        v153 = v58;
        v87 = v59 * v155;
        cstdlib_memcpy(&v167[v59 * v155], *(a7 + 120), 4 * *(a7 + 112));
        if (*(a7 + 10))
        {
          v88 = 0;
          v89 = 0;
          v90 = 0;
          v91 = 0;
          while (cstdlib_strcmp(*(*(a7 + 32) + v88), "POS"))
          {
            v74 = "PHR";
            if (!cstdlib_strcmp(*(*(a7 + 32) + v88), "PHR"))
            {
              v95 = *(*a5 + 224 * v160 + 80);
              goto LABEL_93;
            }

            v74 = "TOK";
            if (!cstdlib_strcmp(*(*(a7 + 32) + v88), "TOK"))
            {
              v95 = *(*a5 + 224 * v160 + 168);
              goto LABEL_93;
            }

            v74 = "COMP";
            if (!cstdlib_strcmp(*(*(a7 + 32) + v88), "COMP"))
            {
              v95 = *(*a5 + 224 * v160 + 176);
              goto LABEL_93;
            }

            v74 = "SPUNC";
            if (!cstdlib_strcmp(*(*(a7 + 32) + v88), "SPUNC"))
            {
              v95 = *(*a5 + 224 * v160 + 184);
              goto LABEL_93;
            }

            v74 = "EPUNC";
            if (!cstdlib_strcmp(*(*(a7 + 32) + v88), "EPUNC"))
            {
              v95 = *(*a5 + 224 * v160 + 192);
              goto LABEL_93;
            }

            v74 = "PUNC";
            if (!cstdlib_strcmp(*(*(a7 + 32) + v88), "PUNC"))
            {
              v95 = *(*a5 + 224 * v160 + 200);
              goto LABEL_93;
            }

            if (cstdlib_strcmp(*(*(a7 + 32) + v88), "ORTHPUNC"))
            {
              goto LABEL_95;
            }

            v95 = *(*a5 + 224 * v160 + 208);
            v96 = v89;
            v97 = a1;
            v98 = a7;
            v99 = "ORTHPUNC";
LABEL_94:
            IndexValue = getIndexValue(v97, v98, v96, v99, v95, &v169);
            if ((IndexValue & 0x80000000) != 0)
            {
              Str = IndexValue;
              v58 = v153;
              goto LABEL_148;
            }

LABEL_95:
            v169 -= v90;
            v101 = v169;
            log_OutText(a1[4], "FE_PHRASING", 5, 0, "translated thisFeatureIdx=%d", v92, v93, v94, v169);
            if (*(*(a7 + 32) + v88 + 8))
            {
              v105 = v101 + 1.0;
              v106 = *(a7 + 112);
              v167[v87 + v91 + v106] = v105;
              log_OutText(a1[4], "FE_PHRASING", 5, 0, "NUMERIC SET [%d] (%d + %d + %d) = %3.1lf + 1.0", v102, v103, v104, v87 + v91 + v106);
              v110 = *(a7 + 32);
              v111 = 1;
            }

            else
            {
              v112 = *(a7 + 112);
              v167[v87 + v91 + v101 + v112] = 1.0;
              log_OutText(a1[4], "FE_PHRASING", 5, 0, "ONEHOT SET [%d] (%d + %d + %d + %d) = 1.0", v102, v103, v104, v87 + v91 + v101 + v112);
              v110 = *(a7 + 32);
              v111 = *(v110 + v88 + 26);
            }

            v91 += v111;
            v113 = v110 + v88;
            v90 += *(v113 + 26);
            log_OutText(a1[4], "FE_PHRASING", 5, 0, "increase featureValOffset by %s %d", v107, v108, v109, *v113);
            ++v89;
            v88 += 32;
            v74 = "POS";
            if (v89 >= *(a7 + 10))
            {
              goto LABEL_99;
            }
          }

          v95 = *(*(*a5 + 224 * v160 + 16) + 8 * *(a6 + 18));
LABEL_93:
          v96 = v89;
          v97 = a1;
          v98 = a7;
          v99 = v74;
          goto LABEL_94;
        }

LABEL_99:
        v56 = v159;
        v155 = (v155 + 1);
        ++v160;
        v55 = a9;
        v57 = v161;
        v58 = v153;
        if (v160 == v156)
        {
          goto LABEL_105;
        }
      }

      v58 = heap_Calloc(a1[1], 1, v68 + 1);
      if (!v58)
      {
LABEL_152:
        Str = 2315264010;
        v133 = a1[4];
        v134 = 37000;
LABEL_126:
        log_OutPublic(v133, "FE_PHRASING", v134, 0, v70, v71, v72, v73, v151);
        goto LABEL_148;
      }

      goto LABEL_59;
    }

    v58 = 0;
LABEL_105:
    LOWORD(v54) = *(a7 + 8);
    *(**(a7 + 48) + 196) = v54 / 100.0;
    if ((paramc_ParamGetInt(a1[5], "nnpausingthresholdpercent", &v163) & 0x80000000) == 0)
    {
      v118 = v163 / 100.0;
      *(**(a7 + 48) + 196) = v118;
      log_OutText(a1[4], "FE_PHRASING", 5, 0, "NN pausing threshold set to %f", v115, v116, v117, COERCE__INT64(v118));
    }

    v119 = v152;
    if (!*(a7 + 18))
    {
      v119 = *(a7 + 6);
    }

    Str = fi_predict(*(a7 + 48), &v167, v119, &v168, v114, v115, v116, v117);
    if ((Str & 0x80000000) != 0)
    {
      v133 = a1[4];
      v134 = 37002;
      goto LABEL_126;
    }

    v120 = *(a5 + 8);
    *(a7 + 136) = v120;
    if (*(a7 + 6))
    {
      v121 = 0;
      v122 = 0;
      v123 = 0;
      v124 = v156;
      do
      {
        v125 = *(a7 + 128);
        *(v125 + v121) = 0;
        if (v123 < v124)
        {
          v126 = (*a5 + v122);
          v127 = v125 + v121;
          v128 = v126[1];
          v129 = *(v168 + 8 * v123);
          *(v127 + 4) = *v126;
          *(v127 + 8) = v128;
          v130 = a1[4];
          if (v129)
          {
            log_OutText(v130, "FE_PHRASING", 5, 0, "Prediction [%d,%s]: %s", v71, v72, v73, v123);
          }

          else
          {
            log_OutText(v130, "FE_PHRASING", 5, 0, "Prediction via thresholding [%d,%s]: 0", v71, v72, v73, v123);
          }

          v131 = *(v168 + 8 * v123);
          if (v131 && !cstdlib_strcmp(v131, "1"))
          {
            v132 = *a5 + v122;
            if (**(v132 + 208) == 88)
            {
              *(v132 + 216) = 2;
              log_OutText(a1[4], "FE_PHRASING", 5, 0, "_RESPPAUSE", v71, v72, v73, 0);
            }

            else
            {
              *(v132 + 216) = 1;
              log_OutText(a1[4], "FE_PHRASING", 5, 0, "_PUNCPAUSE", v71, v72, v73, 0);
            }
          }

          else
          {
            *(*a5 + v122 + 216) = 0;
          }

          v124 = v156;
        }

        ++v123;
        v122 += 224;
        v121 += 12;
      }

      while (v123 < *(a7 + 6));
      v120 = *(a5 + 8);
      v55 = a9;
      v56 = v159;
      v57 = v161;
    }

    else
    {
      LODWORD(v124) = v156;
    }

    if (v124 < v120)
    {
      v135 = 0;
      v136 = v120 - v124;
      v137 = vdupq_n_s64(v136 - 1);
      v138 = (*a5 + 224 * v124);
      do
      {
        v139 = vdupq_n_s64(v135);
        v140 = vmovn_s64(vcgeq_u64(v137, vorrq_s8(v139, xmmword_26ECC7980)));
        if (vuzp1_s16(v140, *v137.i8).u8[0])
        {
          v138[54] = 0;
        }

        if (vuzp1_s16(v140, *&v137).i8[2])
        {
          v138[110] = 0;
        }

        if (vuzp1_s16(*&v137, vmovn_s64(vcgeq_u64(v137, vorrq_s8(v139, xmmword_26ECCE810)))).i32[1])
        {
          v138[166] = 0;
          v138[222] = 0;
        }

        v135 += 4;
        v138 += 224;
      }

      while (((v136 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v135);
    }

    validatePauseLocations(a1, a7, a5, a6, v57, v71, v72, v73);
    *v55 = 0;
    if (*(a5 + 8))
    {
      v144 = 0;
      v145 = 0;
      v146 = -*(a5 + 8);
      v147 = *a5 + 216;
LABEL_139:
      v148 = (v147 + 224 * v145++);
      do
      {
        v149 = *v148;
        v148 += 56;
        if (v149)
        {
          v144 = 1;
          *v55 = 1;
          if (v146 + v145)
          {
            goto LABEL_139;
          }

          goto LABEL_146;
        }

        ++v145;
      }

      while (v146 + v145 != 1);
      if ((v144 & 1) == 0)
      {
        goto LABEL_147;
      }

LABEL_146:
      log_OutText(a1[4], "FE_PHRASING", 5, 0, "NN_PAUSING has prediction(s)", v141, v142, v143, 0);
      Str = NNPausing_UpdateLingdb(a1, v56, v158, v157, a7, a5);
    }

    else
    {
LABEL_147:
      log_OutText(a1[4], "FE_PHRASING", 5, 0, "NN_PAUSING has no prediction(s)", v141, v142, v143, 0);
    }

LABEL_148:
    if (v167)
    {
      heap_Free(a1[1], v167);
      v167 = 0;
    }

    if (v58)
    {
      heap_Free(a1[1], v58);
    }
  }

  return Str;
}

uint64_t getIndexValue(uint64_t a1, uint64_t a2, unsigned int a3, char *__src, const char *a5, _WORD *a6)
{
  v25 = *MEMORY[0x277D85DE8];
  v23 = 0;
  cstdlib_strcpy(__dst, __src);
  cstdlib_strncat(__dst, a5, 0x36uLL);
  v11 = ssftmap_Find(*(a2 + 24), __dst, &v23);
  if ((v11 & 0x1FFF) == 0x14)
  {
    v15 = *(a2 + 32) + 32 * a3;
    *a6 = *(v15 + 24);
    if (*(v15 + 8))
    {
      v16 = "NUMERIC";
    }

    else
    {
      v16 = "ONEHOT";
    }

    log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "%s [%s] (default) convert %s to vector col %d", v12, v13, v14, v16);
    return 0;
  }

  else
  {
    v17 = v11;
    *a6 = cstdlib_atoi(v23);
    if (*(*(a2 + 32) + 32 * a3 + 8))
    {
      v21 = "NUMERIC";
    }

    else
    {
      v21 = "ONEHOT";
    }

    log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "%s [%s] convert %s to vector col %d", v18, v19, v20, v21);
  }

  return v17;
}

uint64_t validatePauseLocations(uint64_t a1, unsigned __int16 *a2, uint64_t *a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a5 == -1)
  {
    v12 = a2[8];
  }

  else
  {
    v12 = a5;
  }

  result = log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "validatePauseLocations doCompVerification=%d doPHRVerification=%d doLenVerification=%d minWordSpan=%d", a6, a7, a8, a2[6]);
  LODWORD(v17) = *(a3 + 4);
  if (!*(a3 + 4))
  {
    return result;
  }

  v43 = v12;
  v18 = 0;
  v19 = 0;
  v20 = 208;
  do
  {
    v21 = v18 + 1;
    v23 = 1;
    if (v18 + 1 < v17)
    {
      v22 = *(*a3 + v20 + 96);
      if (v22)
      {
        if (!cstdlib_strncmp(v22, "B-", 2uLL) || !cstdlib_strcmp(*(*a3 + v20 + 96), "O"))
        {
          v23 = 0;
        }
      }
    }

    v24 = *(*a3 + v20 - 32);
    if (v24 && !cstdlib_strcmp(v24, "[COMP"))
    {
      v19 = 1;
    }

    log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "[%d] %s bInCompoundWord=%d bPHRBnd=%d pause=%d orthPunc=%s    (%s %s)", v14, v15, v16, v18);
    v25 = *a3;
    if (!*(*a3 + v20 + 8))
    {
      goto LABEL_41;
    }

    if (v19 == 1 && a2[6] == 1 && cstdlib_strcmp(*(v25 + v20 - 32), "COMP]"))
    {
      log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "BLOCK PAUSE : word[%d] %s : block inside compound word", v14, v15, v16, v18);
LABEL_40:
      v25 = *a3;
      *(*a3 + v20 + 8) = 0;
      goto LABEL_41;
    }

    v26 = !v23;
    if (a2[7] != 1)
    {
      v26 = 1;
    }

    if ((v26 & 1) == 0)
    {
      log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "BLOCK PAUSE : word[%d] %s : block inside PHR", v14, v15, v16, v18);
      goto LABEL_40;
    }

    if (cstdlib_strcmp(*(*a3 + v20 - 40), "-"))
    {
      v27 = *a3;
      if (v21 < *(a3 + 4))
      {
        v28 = cstdlib_strcmp(*(v27 + v20 + 184), "-");
        v27 = *a3;
        if (v28)
        {
          v32 = v27 + v20;
          v33 = **(v27 + v20 - 40);
          if (v33 == 73)
          {
            goto LABEL_29;
          }

          if (v33 == 66)
          {
            v32 = v27 + v20;
LABEL_29:
            if (**(v32 + 184) == 73)
            {
              log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "BLOCK PAUSE : word[%d] %s : block inside TOK", v29, v30, v31, v18);
              goto LABEL_40;
            }
          }
        }
      }
    }

    else
    {
      v27 = *a3;
    }

    v34 = cstdlib_strcmp(*(*(v27 + v20 - 192) + 8 * *(a4 + 16)), "§");
    v35 = *(a3 + 4);
    if (!v34 && v21 < v35)
    {
      if (!cstdlib_strcmp(*(*(*a3 + v20 + 32) + 8 * *(a4 + 16)), "§"))
      {
        log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "BLOCK PAUSE : word[%d] %s : block inside DUMMYWORD sequence", v14, v15, v16, v18);
        goto LABEL_40;
      }

      v35 = *(a3 + 4);
    }

    v25 = *a3;
    if (v18 + 3 > v35)
    {
      log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "BLOCK PAUSE : word[%d] %s : block on last 2 words", v14, v15, v16, v18);
      goto LABEL_40;
    }

LABEL_41:
    result = *(v25 + v20 - 32);
    if (result)
    {
      result = cstdlib_strcmp(result, "COMP]");
      if (!result)
      {
        v19 = 0;
      }
    }

    v17 = *(a3 + 4);
    v20 += 224;
    ++v18;
  }

  while (v21 < v17);
  if (v43 && *(a3 + 4))
  {
    v36 = 0;
    v37 = 0;
    v38 = *a3;
    v39 = -1;
    do
    {
      if (**(v38 + 224 * v36 + 208) != 88 || v37 + 1 == v17)
      {
        if (v36)
        {
          if (v37 - v39 >= v43)
          {
            goto LABEL_63;
          }

          if (v39 == 0xFFFF)
          {
            v39 = 0;
          }

          if (v36 <= v39)
          {
LABEL_63:
            v39 = v36;
          }

          else
          {
            v41 = v39;
            v42 = 224 * v39;
            do
            {
              if (*(v38 + v42 + 216) == 2)
              {
                result = log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "BLOCK PAUSE : word[%d] %s : blocked via len constraints, span word %d to word %d < %d", v14, v15, v16, v41);
                v38 = *a3;
                *(*a3 + v42 + 216) = 0;
              }

              ++v41;
              v42 += 224;
            }

            while (v36 != v41);
            LODWORD(v17) = *(a3 + 4);
            v39 = v36;
          }
        }

        else
        {
          v39 = 0;
        }
      }

      v37 = ++v36;
    }

    while (v36 < v17);
  }

  return result;
}

uint64_t getNumericFeatureValue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _WORD *a5)
{
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  *a5 = 0;
  v6 = (*(a1 + 96))(a2, a3, "fecfg", a4, &__c[3], &__c[1], __c);
  if ((v6 & 0x80000000) == 0 && *&__c[1] == 1 && *&__c[3] != 0)
  {
    v8 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v8)
    {
      *v8 = 0;
    }

    *a5 = cstdlib_atoi(**&__c[3]);
  }

  return v6;
}

uint64_t setStr(uint64_t a1, char **a2, char *__s, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (__s)
  {
    v11 = *(a1 + 8);
    v12 = cstdlib_strlen(__s);
    v13 = heap_Calloc(v11, 1, (v12 + 1));
    *a2 = v13;
    if (v13)
    {
      cstdlib_strcpy(v13, __s);
      return 0;
    }

    else
    {
      log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v14, v15, v16, v17, v20);
      return 2315264010;
    }
  }

  else
  {
    v18 = 2315264007;
    log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, a5, a6, a7, a8, v20);
  }

  return v18;
}

uint64_t getNumDigits(unsigned int a1)
{
  if (a1 >= 0xA)
  {
    v2 = 0;
    do
    {
      v3 = v2++;
      v4 = a1 > 0x63;
      a1 /= 0xAu;
    }

    while (v4);
    return (v3 + 2);
  }

  else
  {
    return 1;
  }
}

uint64_t getAsFactOf10(int a1)
{
  if (!a1)
  {
    return 1;
  }

  v1 = vdupq_n_s32(a1 - 1);
  v2.i64[0] = 0x100000001;
  v2.i64[1] = 0x100000001;
  v3 = 4;
  v4.i64[0] = 0xA0000000ALL;
  v4.i64[1] = 0xA0000000ALL;
  do
  {
    v5 = v2;
    v2 = vmulq_s32(v2, v4);
    v3 -= 4;
  }

  while (((a1 + 3) & 0x1FFFC) + v3 != 4);
  v6 = vbslq_s8(vcgtq_u32(vorrq_s8(vdupq_n_s32(-v3), xmmword_26ECCEBC0), v1), v5, v2);
  *v6.i8 = vmul_s32(*v6.i8, *&vextq_s8(v6, v6, 8uLL));
  return (v6.i32[0] * v6.i32[1]);
}

uint64_t getPrecisionFactor(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 2);
  if (v2 >= 0xA)
  {
    v4 = 0;
    do
    {
      v5 = v4++;
      v6 = v2 > 0x63;
      v2 /= 0xAu;
    }

    while (v6);
    v3 = v5 + 2;
  }

  else
  {
    v3 = 1;
  }

  v7 = *(a2 + 2);
  if (v7 >= 0xA)
  {
    v9 = 0;
    do
    {
      v10 = v9++;
      v6 = v7 > 0x63;
      v7 /= 0xAu;
    }

    while (v6);
    v8 = v10 + 2;
  }

  else
  {
    v8 = 1;
  }

  if (v3 > v8)
  {
    v11 = vdupq_n_s32(v3 - 1);
    v12.i64[0] = 0x100000001;
    v12.i64[1] = 0x100000001;
    v13 = 4;
    v14.i64[0] = 0xA0000000ALL;
    v14.i64[1] = 0xA0000000ALL;
    do
    {
      v15 = v12;
      v12 = vmulq_s32(v12, v14);
      v13 -= 4;
    }

    while (((v3 + 3) & 0x1FFFC) + v13 != 4);
LABEL_22:
    v21 = vbslq_s8(vcgtq_u32(vorrq_s8(vdupq_n_s32(-v13), xmmword_26ECCEBC0), v11), v15, v12);
    *v21.i8 = vmul_s32(*v21.i8, *&vextq_s8(v21, v21, 8uLL));
    return (v21.i32[0] * v21.i32[1]);
  }

  if (v8 > v3)
  {
    v16 = (v8 + 3) & 0x1FFFC;
    v11 = vdupq_n_s32(v8 - 1);
    v12.i64[0] = 0x100000001;
    v12.i64[1] = 0x100000001;
    v13 = 4;
    v17.i64[0] = 0xA0000000ALL;
    v17.i64[1] = 0xA0000000ALL;
    do
    {
      v15 = v12;
      v12 = vmulq_s32(v12, v17);
      v13 -= 4;
    }

    while (v16 + v13 != 4);
    goto LABEL_22;
  }

  if (v3)
  {
    v18 = v3;
    v19 = (v3 + 3) & 0x1FFFC;
    v11 = vdupq_n_s32(v18 - 1);
    v12.i64[0] = 0x100000001;
    v12.i64[1] = 0x100000001;
    v13 = 4;
    v20.i64[0] = 0xA0000000ALL;
    v20.i64[1] = 0xA0000000ALL;
    do
    {
      v15 = v12;
      v12 = vmulq_s32(v12, v20);
      v13 -= 4;
    }

    while (v19 + v13 != 4);
    goto LABEL_22;
  }

  return 1;
}

BOOL FLOATSUR_GT_INT(unsigned __int16 *a1, unsigned int a2, unsigned int a3)
{
  v3 = *a1;
  if (v3 > a2)
  {
    return 1;
  }

  if (v3 >= a2)
  {
    return a1[1] > a3;
  }

  return 0;
}

BOOL FLOATSUR_GT(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *a2;
  v3 = *a1;
  if (v3 > v2)
  {
    return 1;
  }

  if (v3 >= v2)
  {
    return a1[1] > a2[1];
  }

  return 0;
}

BOOL FLOATSUR_GTOREQUAL(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *a2;
  v3 = *a1;
  v4 = a2[1];
  if (v3 == v2)
  {
    if (a1[1] == v4)
    {
      return 1;
    }
  }

  else if (v3 > v2)
  {
    return 1;
  }

  return v3 >= v2 && a1[1] > v4;
}

BOOL FLOATSUR_LT_INT(unsigned __int16 *a1, unsigned int a2, unsigned int a3)
{
  v3 = *a1;
  if (v3 < a2)
  {
    return 1;
  }

  if (v3 > a2)
  {
    return 0;
  }

  return a1[1] < a3;
}

BOOL FLOATSUR_LT(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *a2;
  v3 = *a1;
  if (v3 < v2)
  {
    return 1;
  }

  if (v3 > v2)
  {
    return 0;
  }

  return a1[1] < a2[1];
}

_WORD *FLOATSUR_SET_INT(_WORD *result, __int16 a2, __int16 a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

uint64_t FLOATSUR_PLUS(_WORD *a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  v14 = 0;
  v13 = 0;
  result = getVals(a2, a3, &v14 + 1, &v14, &v13);
  v5 = v13 + v14;
  v6 = HIDWORD(v14);
  v7 = (v13 + v14) / HIDWORD(v14);
  *a1 = v7;
  v8 = v5 - v7 * v6;
  if (v8)
  {
    v9 = v8 % 0xA == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    do
    {
      v10 = v8;
      v8 /= 0xAu;
    }

    while (v10 >= 0xA && v8 == 10 * ((429496730 * v8) >> 32));
  }

  if (v8 < 0x10000)
  {
    LOWORD(v11) = v8;
  }

  else
  {
    do
    {
      v11 = v8 / 0xA;
      v12 = v8 >> 17;
      v8 /= 0xAu;
    }

    while (v12 > 4);
  }

  a1[1] = v11;
  return result;
}

uint64_t getVals(unsigned __int16 *a1, unsigned __int16 *a2, unsigned int *a3, uint64_t a4, unsigned int *a5)
{
  roundUpAndNormalize(a1);
  roundUpAndNormalize(a2);
  result = getPrecisionFactor(a1, a2);
  *a3 = result;
  v11 = *a1;
  v12 = a1[1];
  *a4 = v12 + result * v11;
  v13 = *a2;
  v14 = a2[1];
  v15 = v14 + *a3 * v13;
  *a5 = v15;
  if (*a4 >= 0x10000u && v15 >= 0x10000)
  {
    v16 = 1;
    do
    {
      if (v15 < 0x10000)
      {
        break;
      }

      v16 *= 10;
      v17 = *a3 / 0xA;
      *a3 = v17;
      *a4 = v12 / (v16 & 0xFFFEu) + v17 * v11;
      v15 = v14 / (v16 & 0xFFFEu) + *a3 * v13;
      *a5 = v15;
    }

    while (*(a4 + 2));
  }

  return result;
}

uint64_t FLOATSUR_PLUS_INT(_DWORD *a1, unsigned __int16 *a2, unsigned __int16 a3, unsigned __int16 a4)
{
  v6 = 0;
  v7[0] = a3;
  v7[1] = a4;
  result = FLOATSUR_PLUS(&v6, a2, v7);
  *a1 = v6;
  return result;
}

uint64_t FLOATSUR_MINUS(_WORD *a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  v15 = 0;
  v14 = 0;
  result = getVals(a2, a3, &v15 + 1, &v15, &v14);
  v5 = v14;
  v6 = v15;
  if (v15 >= v14)
  {
    v7 = HIDWORD(v15);
    v8 = (v15 - v14) / HIDWORD(v15);
    *a1 = v8;
    v9 = v6 - (v5 + v8 * v7);
    if (v9)
    {
      v10 = v9 % 0xA == 0;
    }

    else
    {
      v10 = 0;
    }

    if (v10)
    {
      do
      {
        v11 = v9;
        v9 /= 0xAu;
      }

      while (v11 >= 0xA && v9 == 10 * ((429496730 * v9) >> 32));
    }

    if (v9 < 0x10000)
    {
      LOWORD(v12) = v9;
    }

    else
    {
      do
      {
        v12 = v9 / 0xA;
        v13 = v9 >> 17;
        v9 /= 0xAu;
      }

      while (v13 > 4);
    }

    a1[1] = v12;

    return roundUpAndNormalize(a1);
  }

  else
  {
    *a1 = 0;
  }

  return result;
}

uint64_t roundUpAndNormalize(uint64_t result)
{
  v1 = *(result + 2);
  if (v1 >= 0x64)
  {
    do
    {
      v2 = v1;
      v1 /= 0xAu;
    }

    while (v2 >= 0x3E8);
    *(result + 2) = v1;
    if (v2 >= 0xA && v1 == 10 * ((429496730 * v1) >> 32))
    {
      do
      {
        v3 = v1;
        v1 /= 0xAu;
      }

      while (v3 >= 0xA && v1 == 10 * ((429496730 * v1) >> 32));
      *(result + 2) = v1;
    }
  }

  if (v1 <= 9)
  {
    *(result + 2) = 10 * v1;
  }

  return result;
}

uint64_t FLOATSUR_MINUS_INT(_DWORD *a1, unsigned __int16 *a2, unsigned __int16 a3, unsigned __int16 a4)
{
  v6 = 0;
  v7[0] = a3;
  v7[1] = a4;
  result = FLOATSUR_MINUS(&v6, a2, v7);
  *a1 = v6;
  return result;
}

uint64_t FLOATSUR_TIMES(_WORD *a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  v15 = 0;
  v14 = 0;
  result = getVals(a2, a3, &v15 + 1, &v15, &v14);
  v5 = v14 * v15;
  v6 = HIDWORD(v15) * HIDWORD(v15);
  v7 = v14 * v15 / (HIDWORD(v15) * HIDWORD(v15));
  if (v7 < 0x10000)
  {
    *a1 = v7;
    v8 = v7 * v6;
    if (v6 > v5)
    {
      v8 = 0;
    }

    v9 = v5 - v8;
    if (v9)
    {
      v10 = v6 / 0xA;
      if (v9 >= v10)
      {
        HIDWORD(v11) = -858993459 * v9;
        LODWORD(v11) = -858993459 * v9;
        if ((v11 >> 1) <= 0x19999999)
        {
          do
          {
            v12 = v9;
            v9 /= 0xAu;
          }

          while (v12 >= 0xA && v9 == 10 * ((429496730 * v9) >> 32));
        }

        if (v9 < 0x10000)
        {
          LOWORD(v10) = v9;
        }

        else
        {
          do
          {
            v10 = v9 / 0xA;
            v13 = v9 >> 17;
            v9 /= 0xAu;
          }

          while (v13 > 4);
        }
      }

      else
      {
        LOWORD(v10) = 10 * v9 / v10 > 5;
      }
    }

    else
    {
      LOWORD(v10) = 0;
    }

    a1[1] = v10;

    return roundUpAndNormalize(a1);
  }

  else
  {
    *a1 = 0xFFFF;
  }

  return result;
}

uint64_t FLOATSUR_TIMES_INT(_DWORD *a1, unsigned __int16 *a2, unsigned __int16 a3, unsigned __int16 a4)
{
  v6 = 0;
  v7[0] = a3;
  v7[1] = a4;
  result = FLOATSUR_TIMES(&v6, a2, v7);
  *a1 = v6;
  return result;
}

uint64_t FLOATSUR_DIV(_WORD *a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  v15 = 0;
  v14 = 0;
  result = getVals(a2, a3, &v15 + 1, &v15, &v14);
  v5 = v14;
  if (v14)
  {
    v6 = v15;
    v7 = v15 / v14;
    *a1 = v15 / v14;
    v8 = v6 - v7 * v5;
    if (v8)
    {
      v9 = HIDWORD(v15) * v8 * HIDWORD(v15);
      v10 = v9 / v5;
      if (v5 <= v9 && !(v10 % 0xA))
      {
        do
        {
          v11 = v10;
          v10 /= 0xAu;
        }

        while (v11 >= 0xA && v10 == 10 * ((429496730 * v10) >> 32));
      }

      if (v10 < 0x10000)
      {
        LOWORD(v12) = v10;
      }

      else
      {
        do
        {
          v12 = v10 / 0xA;
          v13 = v10 >> 17;
          v10 /= 0xAu;
        }

        while (v13 > 4);
      }
    }

    else
    {
      LOWORD(v12) = 0;
    }

    a1[1] = v12;

    return roundUpAndNormalize(a1);
  }

  else
  {
    *a1 = 0;
  }

  return result;
}

uint64_t load_stress_models(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _WORD *a7, uint64_t a8, _DWORD *a9, void *a10, void *a11, uint64_t a12, void *a13, _OWORD *a14, _WORD *a15, _BOOL4 *a16)
{
  *&__c[3] = 0;
  v40 = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  v37 = 0;
  v38 = 0;
  *&v36 = safeh_GetNullHandle();
  *(&v36 + 1) = v23;
  *a10 = 0;
  *a11 = 0;
  inited = (*(a6 + 96))(a4, a5, "fecfg", "statbnd_stress", &v40, &__c[1], __c);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v34 = a8;
  v25 = 1;
  if (*&__c[1] == 1 && v40)
  {
    v26 = *v40;
    v26[cstdlib_strlen(*v40) - 1] = 0;
    v25 = cstdlib_strcmp(*v40, "yes") != 0;
  }

  *&__c[1] = 0;
  inited = (*(a6 + 96))(a4, a5, "fecfg", "statbnd_stress_albert", &v40, &__c[1], __c);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v27 = 0;
  if (*&__c[1] == 1 && v40)
  {
    v28 = *v40;
    v28[cstdlib_strlen(*v40) - 1] = 0;
    v27 = cstdlib_strcmp(*v40, "yes") == 0;
  }

  if (v25)
  {
    goto LABEL_10;
  }

  v31 = v27;
  inited = fe_stress_tryLoading_STRESS_igModel(a1, a2, a3, &v38);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  *a10 = v38;
  inited = Init_stress_nn_model(a3, a1, a2, a7, v34, &v37);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  *a11 = v37;
  v32 = v31 ? "albert" : "char";
  inited = (*(a12 + 16))(*a13, a13[1], v32, a1, a2, &v36);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  *a14 = v36;
  *a9 = 1;
  *a16 = v31;
LABEL_10:
  *a15 = 20;
  __c[0] = 0;
  *&__c[1] = -1;
  v29 = (*(a6 + 96))(a4, a5, "fecfg", "statbnd_pos_dimension", &__c[3], &__c[1], __c);
  if ((v29 & 0x80000000) == 0 && *&__c[1])
  {
    v30 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v30)
    {
      *v30 = 0;
    }

    *a15 = cstdlib_atoi(**&__c[3]);
  }

  return v29;
}

uint64_t fe_stress_tryLoading_STRESS_igModel(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v31 = *MEMORY[0x277D85DE8];
  memset(v29, 0, 240);
  *v26 = 0;
  v27 = 0;
  *a4 = 0;
  __s2 = 0;
  memset(__s1, 0, sizeof(__s1));
  v29[15] = 0u;
  Str = paramc_ParamGetStr(*(a3 + 40), "langcode", &__s2);
  if ((Str & 0x80000000) != 0 || (Str = paramc_ParamGetStr(*(a3 + 40), "fecfg", &v27), (Str & 0x80000000) != 0) || (cstdlib_strcat(__s1, "nnstressigrules_"), cstdlib_strcat(__s1, __s2), cstdlib_strcat(__s1, "_"), cstdlib_strcat(__s1, v27), Str = brokeraux_ComposeBrokerString(a3, __s1, 1, 1, __s2, 0, 0, v29, 0x100uLL), (Str & 0x80000000) != 0) || (Str = ssftriff_reader_ObjOpen(a1, a2, 2, v29, "IGTR", 1031, v26), (Str & 0x80000000) != 0))
  {
    v21 = Str;
  }

  else
  {
    v16 = heap_Calloc(*(a3 + 8), 1, 1600);
    *a4 = v16;
    if (v16)
    {
      v21 = igtree_Init(a1, a2, *v26, v16);
      ssftriff_reader_CloseChunk(*v26);
      if ((v21 & 0x80001FFF) == 0x14)
      {
        ssftriff_reader_CloseChunk(*v26);
        v21 = 0;
      }
    }

    else
    {
      log_OutPublic(*(a3 + 32), "FE_PHRASING", 37000, 0, v17, v18, v19, v20, v25);
      v21 = 2315264010;
    }
  }

  if (*v26)
  {
    v22 = ssftriff_reader_ObjClose(*v26, v9, v10, v11, v12, v13, v14, v15);
    if ((v21 & 0x80000000) == 0)
    {
      v23 = v22;
      if ((v22 & 0x80000000) != 0)
      {
        if (*a4)
        {
          heap_Free(*(a3 + 8), *a4);
          *a4 = 0;
        }

        return v23;
      }
    }
  }

  return v21;
}

uint64_t Init_stress_nn_model(uint64_t a1, _WORD *a2, uint64_t a3, _WORD *a4, uint64_t a5, void *a6)
{
  v23 = *MEMORY[0x277D85DE8];
  memset(v21, 0, 240);
  v18 = 0;
  v19 = 0;
  *a6 = 0;
  __s2 = 0;
  memset(__s1, 0, sizeof(__s1));
  v21[15] = 0u;
  if ((paramc_ParamGetStr(*(a1 + 40), "langcode", &__s2) & 0x80000000) == 0 && (paramc_ParamGetStr(*(a1 + 40), "fecfg", &v19) & 0x80000000) == 0)
  {
    cstdlib_strcat(__s1, "nnstress_");
    cstdlib_strcat(__s1, __s2);
    cstdlib_strcat(__s1, "_");
    cstdlib_strcat(__s1, v19);
    brokeraux_ComposeBrokerString(a1, __s1, 1, 1, __s2, 0, 0, v21, 0x100uLL);
  }

  v15 = fi_init(a2, a3, a4, a5, &v18, 0, v21, "FINN", 1, 0);
  if ((v15 & 0x80000000) != 0)
  {
    log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "Init Stress FI model failed", v12, v13, v14, v17);
  }

  else
  {
    *a6 = v18;
  }

  return v15;
}

uint64_t *free_stress_model(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3)
  {
    igtree_Deinit(a1, a3);
    heap_Free(*(a1 + 8), a3);
  }

  if (a4)
  {
    a4 = fi_deinit(a1, a2, a4);
  }

  if (a5)
  {
    (*(a5 + 24))(a6, a7);
  }

  return a4;
}

uint64_t fe_stress_process(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t ***a9, unsigned __int16 a10, int a11)
{
  v17 = heap_Calloc(*(a1 + 8), 1, 16);
  if (!v17)
  {
    UTF8Char = 2315264010;
    log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v18, v19, v20, v21, v267);
    return UTF8Char;
  }

  v22 = v17;
  v320 = 0;
  v321 = 0;
  v322 = 0;
  v323 = 0;
  v319 = 0;
  v317 = 0;
  v318 = 0;
  v316 = 0;
  v314 = 0;
  *__s = 0;
  v313 = 0;
  *(v17 + 12) = 0;
  v23 = (*(a4 + 104))(a2, a3, 1, 0, &v321 + 2);
  if ((v23 & 0x80000000) != 0)
  {
    goto LABEL_264;
  }

  UTF8Char = (*(a4 + 184))(a2, a3, HIWORD(v321), 0, &v320);
  v25 = 0;
  if ((UTF8Char & 0x80000000) != 0)
  {
    goto LABEL_126;
  }

  if (v320 != 1)
  {
    goto LABEL_126;
  }

  UTF8Char = (*(a4 + 176))(a2, a3, HIWORD(v321), 0, &v323, &v320 + 2);
  v25 = 0;
  if ((UTF8Char & 0x80000000) != 0 || HIWORD(v320) < 2u)
  {
    goto LABEL_126;
  }

  log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "Stress: processing=%s", v26, v27, v28, v323);
  v29 = heap_Calloc(*(a1 + 8), 1, 1024);
  if (!v29)
  {
    goto LABEL_456;
  }

  v34 = v29;
  v276 = a5;
  v35 = cstdlib_strlen(v323);
  v36 = heap_Calloc(*(a1 + 8), 1, (v35 + 1));
  if (!v36)
  {
    UTF8Char = 2315264010;
    log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v37, v38, v39, v40, v267);
    v95 = *(a1 + 8);
    v96 = v34;
LABEL_219:
    heap_Free(v95, v96);
    goto LABEL_457;
  }

  v41 = v36;
  UTF8Char = (*(a4 + 104))(a2, a3, 2, HIWORD(v321), &v321);
  if ((UTF8Char & 0x80000000) != 0 || (v42 = v321) == 0)
  {
    heap_Free(*(a1 + 8), v34);
    v25 = 0;
    v71 = v41;
    a5 = v276;
    goto LABEL_125;
  }

  v291 = v34;
  v302 = 0;
  v294 = 0;
  v25 = 0;
  v271 = a4;
  v273 = a2;
  v287 = a8;
  while (1)
  {
    v43 = (*(a4 + 168))(a2, a3, v42, 0, 1, &v318, &v320 + 2);
    if ((v43 & 0x80000000) != 0)
    {
LABEL_100:
      UTF8Char = v43;
      goto LABEL_101;
    }

    v44 = v318;
    if (v318 == 15)
    {
      v43 = (*(a4 + 168))(a2, a3, v321, 1, 1, &v317 + 2, &v320 + 2);
      if ((v43 & 0x80000000) != 0)
      {
        goto LABEL_100;
      }

      v43 = (*(a4 + 168))(a2, a3, v321, 2, 1, &v317, &v320 + 2);
      if ((v43 & 0x80000000) != 0)
      {
        goto LABEL_100;
      }

      if (HIWORD(v317) > v317)
      {
        goto LABEL_105;
      }

      v44 = v318;
    }

    v45 = v44 > 0xA;
    v46 = (1 << v44) & 0x610;
    if (!v45 && v46 != 0)
    {
      break;
    }

LABEL_92:
    UTF8Char = (*(a4 + 120))(a2, a3, v321, &v321);
    v71 = 0;
    if ((UTF8Char & 0x80000000) != 0)
    {
      v299 = 0;
      goto LABEL_120;
    }

    v42 = v321;
    v299 = 0;
    if (!v321)
    {
      goto LABEL_120;
    }
  }

  v48 = (*(a4 + 168))(a2, a3, v321, 1, 1, &v316 + 2, &v320 + 2);
  if ((v48 & 0x80000000) != 0 || (v48 = (*(a4 + 168))(a2, a3, v321, 2, 1, &v316, &v320 + 2), (v48 & 0x80000000) != 0))
  {
LABEL_99:
    UTF8Char = v48;
    v25 = 0;
LABEL_101:
    v71 = 0;
    v299 = 0;
    goto LABEL_120;
  }

  if (HIWORD(v316) > v316)
  {
    v25 = 0;
LABEL_105:
    v71 = 0;
    v299 = 0;
    v97 = 16049;
    goto LABEL_106;
  }

  cstdlib_strncpy(v41, &v323[HIWORD(v316)], v316 - HIWORD(v316));
  v41[v316 - HIWORD(v316)] = 0;
  v48 = (*(a4 + 184))(a2, a3, v321, 14, &v320);
  if ((v48 & 0x80000000) != 0)
  {
    goto LABEL_99;
  }

  if (v320 == 1)
  {
    v48 = (*(a4 + 176))(a2, a3, v321, 14, &v322, &v320 + 2);
    if ((v48 & 0x80000000) != 0)
    {
      goto LABEL_99;
    }

    hlp_NLUStrFind(v322, "POS", &v314, &v319);
  }

  v293 = v314;
  if (v314)
  {
    v25 = 0;
  }

  else
  {
    v25 = 1;
    v49 = heap_Calloc(*(a1 + 8), 1, 2);
    v314 = v49;
    if (!v49)
    {
      v71 = 0;
      v299 = 0;
      v97 = 8202;
LABEL_106:
      UTF8Char = v97 | 0x8A000000;
      goto LABEL_120;
    }

    *v49 = 61;
    v314[1] = 0;
    v25 = 1;
  }

  v50 = heap_Calloc(*(a1 + 8), 1, v319 + 1);
  v299 = v50;
  if (!v50)
  {
    goto LABEL_102;
  }

  v55 = v50;
  cstdlib_strncpy(v50, v314, v319);
  v55[v319] = 0;
  v56 = (*(a4 + 176))(a2, a3, v321, 9, __s, &v320 + 2);
  if ((v56 & 0x80000000) != 0)
  {
    UTF8Char = v56;
LABEL_108:
    v71 = 0;
    goto LABEL_119;
  }

  v57 = heap_Calloc(*(a1 + 8), 1, 16);
  if (!v57)
  {
LABEL_102:
    UTF8Char = 2315264010;
    log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v51, v52, v53, v54, v267);
    goto LABEL_108;
  }

  v58 = v57;
  *(v57 + 8) = 655360;
  v59 = heap_Calloc(*(a1 + 8), 10, 16);
  *v58 = v59;
  if (!v59)
  {
    v71 = 0;
    goto LABEL_117;
  }

  v64 = (*(a4 + 176))(a2, a3, v321, 3, &v313, &v320 + 2);
  if ((v64 & 0x80000000) != 0)
  {
    UTF8Char = v64;
    v71 = 0;
    goto LABEL_118;
  }

  v65 = cstdlib_strstr(v313, "[SVOX]");
  v66 = v313;
  v67 = a4;
  if (v65)
  {
    v66 = v313 + 6;
    v313 += 6;
  }

  v68 = *(a1 + 8);
  v69 = cstdlib_strlen(v66);
  v70 = heap_Alloc(v68, v69 + 1);
  v71 = v70;
  if (!v70)
  {
LABEL_103:
    a4 = v67;
    goto LABEL_117;
  }

  cstdlib_strcpy(v70, v313);
  if (cstdlib_strlen(v313) >= v294)
  {
    v73 = (cstdlib_strlen(v313) + 1);
    if (v73 <= 4)
    {
      v74 = 4;
    }

    else
    {
      v74 = v73;
    }

    v294 = v74;
    v72 = heap_Realloc(*(a1 + 8), v302, v74);
    if (!v72)
    {
      goto LABEL_103;
    }
  }

  else
  {
    v72 = v302;
    if (!v302)
    {
      v302 = 0;
      goto LABEL_49;
    }
  }

  v302 = v72;
  *v72 = 0;
LABEL_49:
  if (cstdlib_strlen(v41))
  {
    v296 = 0;
    v75 = 0;
    v278 = a3;
    while ((utf8_getUTF8Char(v41, v75, &v312) & 0x80000000) == 0)
    {
      v76 = *(v58 + 10);
      if (*(v58 + 8) >= v76)
      {
        v77 = heap_Realloc(*(a1 + 8), *v58, 16 * v76 + 160);
        if (!v77)
        {
          a4 = v271;
          goto LABEL_116;
        }

        *v58 = v77;
        cstdlib_memset((v77 + 16 * *(v58 + 8)), 0, 0xA0uLL);
        *(v58 + 10) += 10;
      }

      v325[0] = v75;
      if (!v302)
      {
        goto LABEL_81;
      }

      v324 = 0;
      if (utf8_Utf8CharTo16bit(v41, &v324) && ((v324 + 24576) >> 9) <= 0x56u && (v324 > 0x3Eu || ((1 << v324) & 0x5000040000000000) == 0))
      {
        v82 = v302;
        cstdlib_strcpy(v302, v71);
        v84 = 1;
      }

      else
      {
        utf8_GetPreviousValidUtf8Offset(v41, v325);
        v78 = v71;
        if (v325[0])
        {
          NextUtf8Offset = 0;
          v78 = v71;
          while (1)
          {
            NextUtf8Offset = utf8_GetNextUtf8Offset(v41, NextUtf8Offset);
            v80 = cstdlib_strstr(v78, ".");
            if (!v80)
            {
              break;
            }

            if (*v80 == 46)
            {
              v78 = v80 + 1;
            }

            else
            {
              v78 = v80;
            }

            if (NextUtf8Offset == v325[0])
            {
              goto LABEL_67;
            }
          }

          v302[NextUtf8Offset] = 0;
          a3 = v278;
          break;
        }

LABEL_67:
        LODWORD(v81) = 0;
        v82 = v302;
        while (1)
        {
          v83 = v78[v81];
          v81 = v81;
          if (!v78[v81] || v83 == 46)
          {
            break;
          }

          v302[v81] = v83;
          if (v81 && v83 == 125 && v302[(v81 - 1)] - 48 <= 9)
          {
            v78[v81] = 46;
            v81 = (v81 + 1);
            break;
          }

          LODWORD(v81) = v81 + 1;
        }

        v84 = 0;
        v302[v81] = 0;
      }

      v85 = *(a1 + 8);
      v86 = cstdlib_strlen(v82);
      v87 = heap_Alloc(v85, (v86 + 1));
      *(*v58 + 16 * *(v58 + 8)) = v87;
      if (!v87)
      {
        a4 = v271;
        a3 = v278;
        goto LABEL_116;
      }

      cstdlib_strcpy(v87, v82);
      v88 = v296 + cstdlib_strlen(v82) + 1;
      v89 = *(v58 + 8) + 1;
      *(v58 + 8) = v89;
      if (v84)
      {
        a3 = v278;
        goto LABEL_84;
      }

      v296 = v88;
      v75 = utf8_GetNextUtf8Offset(v41, v75);
      a3 = v278;
      if (v75 >= cstdlib_strlen(v41))
      {
        break;
      }
    }
  }

  else
  {
LABEL_81:
    v296 = 0;
  }

  v89 = *(v58 + 8);
  v88 = v296;
LABEL_84:
  a4 = v271;
  if (!v89 || v88 >= cstdlib_strlen(v313) + 1)
  {
LABEL_88:
    UTF8Char = stress_addWord(a1, v41, SHIWORD(v316), v316, v317, v299, v58, *__s, v22);
    stat_stress_freeCandidatePhons(a1, v58);
    heap_Free(*(a1 + 8), v58);
    heap_Free(*(a1 + 8), v71);
    heap_Free(*(a1 + 8), v299);
    a2 = v273;
    if (!v293 && v314)
    {
      heap_Free(*(a1 + 8), v314);
      v314 = 0;
    }

    a8 = v287;
    if ((UTF8Char & 0x80000000) != 0)
    {
      goto LABEL_101;
    }

    goto LABEL_92;
  }

  v90 = a3;
  v91 = cstdlib_strlen(*(*v58 + 16 * *(v58 + 8) - 16));
  v297 = *(a1 + 8);
  v92 = *(*v58 + 16 * *(v58 + 8) - 16);
  v93 = cstdlib_strlen(v313);
  v94 = heap_Realloc(v297, v92, v91 - v88 + v93 + 2);
  if (v94)
  {
    *(*v58 + 16 * *(v58 + 8) - 16) = v94;
    cstdlib_strcat(v94, &v313[v88 - 1]);
    a4 = v271;
    a3 = v90;
    goto LABEL_88;
  }

  a4 = v271;
  a3 = v90;
LABEL_116:
  a2 = v273;
LABEL_117:
  UTF8Char = 2315264010;
  log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v60, v61, v62, v63, v267);
LABEL_118:
  stat_stress_freeCandidatePhons(a1, v58);
  heap_Free(*(a1 + 8), v58);
LABEL_119:
  a8 = v287;
LABEL_120:
  if (v302)
  {
    heap_Free(*(a1 + 8), v302);
  }

  heap_Free(*(a1 + 8), v291);
  heap_Free(*(a1 + 8), v41);
  if (v299)
  {
    heap_Free(*(a1 + 8), v299);
  }

  a5 = v276;
  if (v71)
  {
LABEL_125:
    heap_Free(*(a1 + 8), v71);
  }

LABEL_126:
  if ((UTF8Char & 0x80000000) != 0)
  {
    if (v25 != 1)
    {
      goto LABEL_457;
    }

    v96 = v314;
    if (!v314)
    {
      goto LABEL_457;
    }

LABEL_218:
    v95 = *(a1 + 8);
    goto LABEL_219;
  }

  if (!*(v22 + 12))
  {
    goto LABEL_457;
  }

  v322 = 0;
  v323 = 0;
  __s[4] = 0;
  *__s = 0;
  LODWORD(v314) = 0;
  UTF8Char = (*(a6 + 40))(a7, a8, &v314);
  if ((UTF8Char & 0x80000000) != 0)
  {
    goto LABEL_457;
  }

  v272 = a4;
  if (!a11)
  {
    v98 = heap_Calloc(*(a1 + 8), *(v22 + 12) * (a10 + v314 + 14), 4);
    v99 = v98;
    if (!v98)
    {
      goto LABEL_456;
    }

LABEL_136:
    v268 = v98;
    v277 = a5;
    if (*(v22 + 8))
    {
      v100 = 0;
      v288 = a8;
      while (1)
      {
        v292 = v100;
        v101 = *v22 + (v100 << 6);
        v102 = *(v101 + 24);
        v282 = *(v101 + 40);
        v285 = *(v101 + 48);
        v103 = *(v101 + 52);
        v104 = *(v101 + 54);
        v286 = *(v101 + 56);
        if (!cstdlib_strcmp(v102, "normal") || !cstdlib_strcmp(v102, "mnx"))
        {
          v105 = v103 >= v104;
          v106 = v285;
          if (v105 && v285 != 0)
          {
            break;
          }
        }

LABEL_145:
        v100 = v292 + 1;
        if (v292 + 1 >= *(v22 + 8))
        {
          goto LABEL_220;
        }
      }

      v108 = 0;
      v290 = 0;
      v269 = v104 - 1;
      v109 = v288;
      v279 = a3;
      v274 = a2;
      while (1)
      {
        v289 = v108;
        v110 = v282 + 40 * v108;
        v111 = *(v110 + 8);
        v300 = *(v110 + 24);
        v112 = Utf8_Utf8NbrOfSymbols(v300);
        if (v112 != 1)
        {
          break;
        }

LABEL_215:
        v108 = v289 + 1;
        v106 = v285;
        a3 = v279;
        a2 = v274;
        if (v289 + 1 == v285)
        {
          goto LABEL_145;
        }
      }

      v113 = 0;
      v114 = 0;
      v115 = v106 == 1;
      v116 = (v112 - 1);
      if (v116 == 1)
      {
        v117 = 3;
      }

      else
      {
        v117 = 0;
      }

      v283 = v117;
      if (v116 != 1)
      {
        v115 = 0;
      }

      v270 = v115;
      v284 = v111;
      while (1)
      {
        v118 = v114;
        UTF8Char = utf8_getUTF8Char(v300, v114, __s);
        if ((UTF8Char & 0x80000000) != 0)
        {
          v96 = v268;
          goto LABEL_218;
        }

        v303 = cstdlib_strlen(__s);
        if (utf8_IsChineseLetter(__s))
        {
          if (!a11)
          {
            v122 = (*(a6 + 56))(a7, v109, __s, v99);
            LODWORD(UTF8Char) = v122;
            if (*v99 == 0.0 && v122 != 0)
            {
              v126.n128_u32[0] = *v99;
              LODWORD(UTF8Char) = (*(a6 + 56))(a7, v109, "</s>", v99, v126);
            }

            v128 = *(v286 + 32 * v290 + 8);
            v129 = *v128;
            if (v129 <= 0x32)
            {
              if (v129 == 49)
              {
                v130 = 4;
                goto LABEL_182;
              }

              if (v129 == 50)
              {
                v130 = 2;
                goto LABEL_182;
              }

LABEL_177:
              v130 = 0;
              goto LABEL_182;
            }

            if (v129 == 51)
            {
              if (v128[1] == 53)
              {
                v130 = 1;
              }

              else
              {
                v130 = 5;
              }
            }

            else
            {
              if (v129 != 53)
              {
                goto LABEL_177;
              }

              if (v128[1] == 53)
              {
                v130 = 0;
              }

              else
              {
                v130 = 3;
              }
            }

LABEL_182:
            v131 = &v99[v314];
            v131[v130] = 1065353216;
            log_OutText(*(a1 + 32), "FE_PHRASING", 4, 0, "NN STRESS: %s get tune %d", v123, v124, v125, __s);
            if (v111)
            {
              utf8_ToLower(v111, 0, &v313);
              if (v313 - 99 > 0x16)
              {
                v135 = 0;
              }

              else
              {
                v135 = word_26ECDAEEC[(v313 - 99)];
              }
            }

            else
            {
              v135 = 2;
            }

            v131[v135 + 6] = 1065353216;
            v136 = &v131[a10 + 6];
            log_OutText(*(a1 + 32), "FE_PHRASING", 4, 0, "NN STRESS: %s get pos %d", v132, v133, v134, __s);
            if (v116 == 1)
            {
              v140 = 2;
            }

            else
            {
              v140 = 1;
            }

            if (!v113)
            {
              v140 = v283;
            }

            *(v136 + 4 * v140) = 1065353216;
            log_OutText(*(a1 + 32), "FE_PHRASING", 4, 0, "NN STRESS: %s get word bmes tag %d", v137, v138, v139, __s);
            if (v289)
            {
              if (v289 == v285 - 1 && v116 == 1)
              {
                v145 = 2;
              }

              else
              {
                v145 = 1;
              }
            }

            else
            {
              if (v270 && v113 == 0)
              {
                v145 = 3;
              }

              else
              {
                v145 = 0;
              }

              if (v113)
              {
                if (v116 == 1 && v285 == 1)
                {
                  v145 = 2;
                }

                else
                {
                  v145 = 1;
                }
              }
            }

            UTF8Char = UTF8Char;
            v111 = v284;
            *(v136 + 16 + 4 * v145) = 1065353216;
            log_OutText(*(a1 + 32), "FE_PHRASING", 4, 0, "NN STRESS: %s get pw bmes tag %d", v141, v142, v143, __s);
            v109 = v288;
            v99 = (v136 + 32);
            log_OutText(*(a1 + 32), "FE_PHRASING", 4, 0, "NN STRESS: %s get phrase bmes tag %c", v147, v148, v149, __s);
            if (!isERphon(__s, *(v286 + 32 * v290)))
            {
              if (v269 <= v290)
              {
                v150 = v290;
              }

              else
              {
                v150 = v290 + 1;
              }

              v290 = v150;
            }

            goto LABEL_214;
          }

          v119 = (*(a6 + 72))(a7, v109, __s, v99);
          UTF8Char = v119;
          if (*v99 == 0.0 && v119 != 0)
          {
            v120.n128_u32[0] = *v99;
            UTF8Char = (*(a6 + 72))(a7, v109, "</s>", v99, v120);
          }

          v99 += v314;
        }

LABEL_214:
        v114 = v118 + v303;
        --v113;
        if (!--v116)
        {
          goto LABEL_215;
        }
      }
    }

LABEL_220:
    if (a11)
    {
      v151 = *(v22 + 12);
      v96 = v268;
      *&v268[4 * v151 + 4] = 1120665600;
      v323 = v268;
      if ((UTF8Char & 0x80000000) == 0)
      {
        v23 = fi_predict(a9, &v323, (v151 + 2), &v322, v30, v31, v32, v33);
        if ((v23 & 0x80000000) == 0)
        {
          v280 = a3;
          v309 = v322 + 8;
          v322 += 8;
          goto LABEL_227;
        }

        goto LABEL_264;
      }
    }

    else
    {
      v96 = v268;
      v323 = v268;
      if ((UTF8Char & 0x80000000) == 0)
      {
        v23 = fi_predict(a9, &v323, *(v22 + 12), &v322, v30, v31, v32, v33);
        if ((v23 & 0x80000000) == 0)
        {
          v280 = a3;
          v309 = v322;
LABEL_227:
          if (*(v22 + 8))
          {
            v155 = 0;
            v156 = 0;
            while (1)
            {
              if (!cstdlib_strcmp(*(*v22 + (v155 << 6) + 24), "normal") || !cstdlib_strcmp(*(*v22 + (v155 << 6) + 24), "mnx"))
              {
                v157 = *v22;
                if (*(*v22 + (v155 << 6) + 52) > (*(*v22 + (v155 << 6) + 54) - 1))
                {
                  break;
                }
              }

LABEL_262:
              if (++v155 >= *(v22 + 8))
              {
                goto LABEL_266;
              }
            }

            v158 = 0;
            while (1)
            {
              if (*(v22 + 12) <= v156)
              {
                v161 = a2;
                log_OutText(*(a1 + 32), "FE_PHRASING", 4, 0, "Not Severe Error: Stress label out of range. Skip some stress tag.", v152, v153, v154, v267);
                v159 = *(*v22 + (v155 << 6) + 56);
              }

              else
              {
                v159 = *(v157 + (v155 << 6) + 56);
                v160 = v159 + 32 * v158;
                v161 = a2;
                *(v160 + 24) = **&v309[8 * v156] == 49;
              }

              v162 = *(v159 + 32 * v158);
              v163 = *v162;
              v164 = cstdlib_strlen(v162);
              v165 = v164;
              if (v164 < 2)
              {
                goto LABEL_260;
              }

              v166 = (v163 > 0x3E) | (0x2FFFFBFFFFFFFFFFuLL >> v163);
              if (v164 < 5 || cstdlib_strcmp(&v162[v164 - 5], "%~r"))
              {
                if ((v166 & (cstdlib_strcmp(&v162[v165 - 2], "%r") == 0)) == 0)
                {
                  goto LABEL_260;
                }
              }

              else if ((v166 & 1) == 0)
              {
                goto LABEL_260;
              }

              v167 = *v162;
              a2 = v161;
              if (v167 == 36 || v167 == 97)
              {
                goto LABEL_261;
              }

              v168 = 0;
              v169 = 0;
              __s[4] = 0;
              *__s = 0;
              do
              {
                if ((utf8_getUTF8Char(*(*v22 + (v155 << 6)), v169, __s) & 0x80000000) != 0)
                {
                  a2 = v161;
                  goto LABEL_266;
                }

                v170 = utf8_GetNextUtf8Offset(*(*v22 + (v155 << 6)), v169);
                if (v170 == v169)
                {
                  break;
                }

                v171 = v170;
                if (utf8_IsChineseLetter(__s))
                {
                  ++v168;
                }

                v169 = v171;
              }

              while ((v158 + 1) >= v168);
              if (__s[0] == 229 && __s[1] == 132 && __s[2] == 191)
              {
                ++v156;
              }

LABEL_260:
              a2 = v161;
LABEL_261:
              ++v158;
              ++v156;
              v157 = *v22;
              if (v158 >= *(*v22 + (v155 << 6) + 54))
              {
                goto LABEL_262;
              }
            }
          }

LABEL_266:
          BYTE4(v322) = 0;
          LODWORD(v322) = 0;
          v323 = 0;
          if (v277)
          {
            v174 = heap_Calloc(*(a1 + 8), 1, 8 * *(v277 + 1296) - 8);
            v175 = v272;
            v176 = v280;
            if (!v174)
            {
              UTF8Char = 2315264010;
              goto LABEL_457;
            }

            v177 = v174;
            UTF8Char = hlp_igtree_initFeatureVector(a1, v174, (*(v277 + 1296) - 1));
            if ((UTF8Char & 0x80000000) == 0 && *(v22 + 8))
            {
              v178 = 0;
              while (1)
              {
                v179 = *v22 + (v178 << 6);
                if (!cstdlib_strcmp(*(v179 + 24), "normal") || !cstdlib_strcmp(*(v179 + 24), "mnx"))
                {
                  v180 = *(v179 + 54);
                  v181 = *(v179 + 52);
                  if (v180 == v181 || v180 + 1 == v181)
                  {
                    v183 = *(v179 + 48);
                    if (v183)
                    {
                      break;
                    }
                  }
                }

LABEL_414:
                if (++v178 >= *(v22 + 8))
                {
                  goto LABEL_421;
                }
              }

              v184 = 0;
              v304 = 0;
              v281 = v176;
              v275 = a2;
              v306 = v177;
              v295 = v179;
              while (1)
              {
                v185 = *(v179 + 40) + 40 * v184;
                if (*(v185 + 32))
                {
                  break;
                }

LABEL_413:
                if (++v184 >= v183)
                {
                  goto LABEL_414;
                }
              }

              *v301 = v184;
              v186 = 0;
              v310 = 0;
              v298 = *(v179 + 40) + 40 * v184;
              while (1)
              {
                UTF8Char = utf8_getUTF8Char(*(v185 + 24), v310, &v322);
                if ((UTF8Char & 0x80000000) != 0)
                {
                  goto LABEL_421;
                }

                if (utf8_IsChineseLetter(&v322))
                {
                  v187 = *(v277 + 1312);
                  v188 = *(v277 + 1296);
                  v189 = heap_Calloc(*(a1 + 8), 1, 2048);
                  if (!v189)
                  {
                    UTF8Char = 2315264010;
                    log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v190, v191, v192, v193, v267);
LABEL_420:
                    a2 = v275;
                    v177 = v306;
                    goto LABEL_421;
                  }

                  v194 = v189;
                  if (v188 > 1)
                  {
                    v195 = 0;
                    while (cstdlib_strcmp(*(v187 + v195), "char0"))
                    {
                      v195 += 8;
                      if (8 * (v188 - 1) == v195)
                      {
                        UTF8Char = 0;
                        goto LABEL_293;
                      }
                    }

                    v196 = fe_stress_feat_character(a1, v22, v178, LOWORD(v301[0]), v310, 0, v194);
                    if ((v196 & 0x80000000) != 0)
                    {
LABEL_418:
                      UTF8Char = v196;
                      goto LABEL_419;
                    }

                    UTF8Char = fe_stress_igtr_setFeature(a1, v187, v188, 0, v306, v194);
                    if ((UTF8Char & 0x80000000) != 0)
                    {
                      goto LABEL_419;
                    }

LABEL_293:
                    v197 = 0;
                    if (v188 - 1 <= 1)
                    {
                      v198 = 1;
                    }

                    else
                    {
                      v198 = v188 - 1;
                    }

                    v199 = 8 * v198;
                    while (cstdlib_strcmp(*(v187 + v197), "lchar"))
                    {
                      v197 += 8;
                      if (v199 == v197)
                      {
                        goto LABEL_302;
                      }
                    }

                    v196 = fe_stress_feat_character(a1, v22, v178, LOWORD(v301[0]), v310, -1, v194);
                    if ((v196 & 0x80000000) != 0)
                    {
                      goto LABEL_418;
                    }

                    UTF8Char = fe_stress_igtr_setFeature(a1, v187, v188, 1, v306, v194);
                    if ((UTF8Char & 0x80000000) == 0)
                    {
LABEL_302:
                      v200 = 0;
                      while (cstdlib_strcmp(*(v187 + v200), "llchar"))
                      {
                        v200 += 8;
                        if (v199 == v200)
                        {
                          goto LABEL_308;
                        }
                      }

                      v196 = fe_stress_feat_character(a1, v22, v178, LOWORD(v301[0]), v310, -2, v194);
                      if ((v196 & 0x80000000) != 0)
                      {
                        goto LABEL_418;
                      }

                      UTF8Char = fe_stress_igtr_setFeature(a1, v187, v188, 2, v306, v194);
                      if ((UTF8Char & 0x80000000) == 0)
                      {
LABEL_308:
                        v201 = 0;
                        while (cstdlib_strcmp(*(v187 + v201), "l3char"))
                        {
                          v201 += 8;
                          if (v199 == v201)
                          {
                            goto LABEL_314;
                          }
                        }

                        v196 = fe_stress_feat_character(a1, v22, v178, LOWORD(v301[0]), v310, -3, v194);
                        if ((v196 & 0x80000000) != 0)
                        {
                          goto LABEL_418;
                        }

                        UTF8Char = fe_stress_igtr_setFeature(a1, v187, v188, 3, v306, v194);
                        if ((UTF8Char & 0x80000000) == 0)
                        {
LABEL_314:
                          v202 = 0;
                          while (cstdlib_strcmp(*(v187 + v202), "rchar"))
                          {
                            v202 += 8;
                            if (v199 == v202)
                            {
                              goto LABEL_320;
                            }
                          }

                          v196 = fe_stress_feat_character(a1, v22, v178, LOWORD(v301[0]), v310, 1, v194);
                          if ((v196 & 0x80000000) != 0)
                          {
                            goto LABEL_418;
                          }

                          UTF8Char = fe_stress_igtr_setFeature(a1, v187, v188, 4, v306, v194);
                          if ((UTF8Char & 0x80000000) == 0)
                          {
LABEL_320:
                            v203 = 0;
                            while (cstdlib_strcmp(*(v187 + v203), "rrchar"))
                            {
                              v203 += 8;
                              if (v199 == v203)
                              {
                                goto LABEL_326;
                              }
                            }

                            v196 = fe_stress_feat_character(a1, v22, v178, LOWORD(v301[0]), v310, 2, v194);
                            if ((v196 & 0x80000000) != 0)
                            {
                              goto LABEL_418;
                            }

                            UTF8Char = fe_stress_igtr_setFeature(a1, v187, v188, 5, v306, v194);
                            if ((UTF8Char & 0x80000000) == 0)
                            {
LABEL_326:
                              v204 = 0;
                              while (cstdlib_strcmp(*(v187 + v204), "r3char"))
                              {
                                v204 += 8;
                                if (v199 == v204)
                                {
                                  goto LABEL_332;
                                }
                              }

                              v196 = fe_stress_feat_character(a1, v22, v178, LOWORD(v301[0]), v310, 3, v194);
                              if ((v196 & 0x80000000) != 0)
                              {
                                goto LABEL_418;
                              }

                              UTF8Char = fe_stress_igtr_setFeature(a1, v187, v188, 6, v306, v194);
                              if ((UTF8Char & 0x80000000) != 0)
                              {
                                goto LABEL_419;
                              }

LABEL_332:
                              v205 = 0;
                              while (cstdlib_strcmp(*(v187 + v205), "phon0"))
                              {
                                v205 += 8;
                                if (v199 == v205)
                                {
                                  goto LABEL_337;
                                }
                              }

                              v206 = fe_stress_feat_phon(v22, v178, v304, 0);
                              UTF8Char = fe_stress_igtr_setFeature(a1, v187, v188, 7, v306, v206);
                              if ((UTF8Char & 0x80000000) != 0)
                              {
                                goto LABEL_419;
                              }

LABEL_337:
                              v207 = 0;
                              while (cstdlib_strcmp(*(v187 + v207), "lphon"))
                              {
                                v207 += 8;
                                if (v199 == v207)
                                {
                                  goto LABEL_342;
                                }
                              }

                              v208 = fe_stress_feat_phon(v22, v178, v304, -1);
                              UTF8Char = fe_stress_igtr_setFeature(a1, v187, v188, 8, v306, v208);
                              if ((UTF8Char & 0x80000000) != 0)
                              {
                                goto LABEL_419;
                              }

LABEL_342:
                              v209 = 0;
                              while (cstdlib_strcmp(*(v187 + v209), "rphon"))
                              {
                                v209 += 8;
                                if (v199 == v209)
                                {
                                  goto LABEL_347;
                                }
                              }

                              v210 = fe_stress_feat_phon(v22, v178, v304, 1);
                              UTF8Char = fe_stress_igtr_setFeature(a1, v187, v188, 9, v306, v210);
                              if ((UTF8Char & 0x80000000) != 0)
                              {
                                goto LABEL_419;
                              }

LABEL_347:
                              v211 = 0;
                              while (cstdlib_strcmp(*(v187 + v211), "tone0"))
                              {
                                v211 += 8;
                                if (v199 == v211)
                                {
                                  goto LABEL_352;
                                }
                              }

                              v212 = fe_stress_feat_tone(v22, v178, v304, 0);
                              UTF8Char = fe_stress_igtr_setFeature(a1, v187, v188, 10, v306, v212);
                              if ((UTF8Char & 0x80000000) != 0)
                              {
                                goto LABEL_419;
                              }

LABEL_352:
                              v213 = 0;
                              while (cstdlib_strcmp(*(v187 + v213), "ltone"))
                              {
                                v213 += 8;
                                if (v199 == v213)
                                {
                                  goto LABEL_357;
                                }
                              }

                              v214 = fe_stress_feat_tone(v22, v178, v304, -1);
                              UTF8Char = fe_stress_igtr_setFeature(a1, v187, v188, 11, v306, v214);
                              if ((UTF8Char & 0x80000000) != 0)
                              {
                                goto LABEL_419;
                              }

LABEL_357:
                              v215 = 0;
                              while (cstdlib_strcmp(*(v187 + v215), "rtone"))
                              {
                                v215 += 8;
                                if (v199 == v215)
                                {
                                  goto LABEL_362;
                                }
                              }

                              v216 = fe_stress_feat_tone(v22, v178, v304, 1);
                              UTF8Char = fe_stress_igtr_setFeature(a1, v187, v188, 12, v306, v216);
                              if ((UTF8Char & 0x80000000) != 0)
                              {
                                goto LABEL_419;
                              }

LABEL_362:
                              v217 = 0;
                              while (cstdlib_strcmp(*(v187 + v217), "word0"))
                              {
                                v217 += 8;
                                if (v199 == v217)
                                {
                                  goto LABEL_367;
                                }
                              }

                              v218 = fe_stress_feat_word(v22, v178, LOWORD(v301[0]), 0);
                              UTF8Char = fe_stress_igtr_setFeature(a1, v187, v188, 13, v306, v218);
                              if ((UTF8Char & 0x80000000) != 0)
                              {
                                goto LABEL_419;
                              }

LABEL_367:
                              v219 = 0;
                              while (cstdlib_strcmp(*(v187 + v219), "lword"))
                              {
                                v219 += 8;
                                if (v199 == v219)
                                {
                                  goto LABEL_372;
                                }
                              }

                              v220 = fe_stress_feat_word(v22, v178, LOWORD(v301[0]), -1);
                              UTF8Char = fe_stress_igtr_setFeature(a1, v187, v188, 14, v306, v220);
                              if ((UTF8Char & 0x80000000) != 0)
                              {
                                goto LABEL_419;
                              }

LABEL_372:
                              v221 = 0;
                              while (cstdlib_strcmp(*(v187 + v221), "rword"))
                              {
                                v221 += 8;
                                if (v199 == v221)
                                {
                                  goto LABEL_377;
                                }
                              }

                              v222 = fe_stress_feat_word(v22, v178, LOWORD(v301[0]), 1);
                              UTF8Char = fe_stress_igtr_setFeature(a1, v187, v188, 15, v306, v222);
                              if ((UTF8Char & 0x80000000) != 0)
                              {
                                goto LABEL_419;
                              }

LABEL_377:
                              v223 = 0;
                              while (cstdlib_strcmp(*(v187 + v223), "wordlen"))
                              {
                                v223 += 8;
                                if (v199 == v223)
                                {
                                  goto LABEL_385;
                                }
                              }

                              *v194 = 0;
                              v224 = *v22 + (v178 << 6);
                              if (*v301 >= *(v224 + 48))
                              {
                                cstdlib_strcpy(v194, "=");
                              }

                              else
                              {
                                sprintf(v194, "%d", *(*(v224 + 40) + 40 * *v301 + 32));
                              }

                              UTF8Char = fe_stress_igtr_setFeature(a1, v187, v188, 16, v306, v194);
                              if ((UTF8Char & 0x80000000) != 0)
                              {
                                goto LABEL_419;
                              }

LABEL_385:
                              v225 = 0;
                              while (cstdlib_strcmp(*(v187 + v225), "pos0"))
                              {
                                v225 += 8;
                                if (v199 == v225)
                                {
                                  goto LABEL_390;
                                }
                              }

                              v226 = fe_stress_feat_pos(v22, v178, LOWORD(v301[0]), 0);
                              UTF8Char = fe_stress_igtr_setFeature(a1, v187, v188, 17, v306, v226);
                              if ((UTF8Char & 0x80000000) != 0)
                              {
                                goto LABEL_419;
                              }

LABEL_390:
                              v227 = 0;
                              while (cstdlib_strcmp(*(v187 + v227), "lpos"))
                              {
                                v227 += 8;
                                if (v199 == v227)
                                {
                                  goto LABEL_395;
                                }
                              }

                              v228 = fe_stress_feat_pos(v22, v178, LOWORD(v301[0]), -1);
                              UTF8Char = fe_stress_igtr_setFeature(a1, v187, v188, 18, v306, v228);
                              if ((UTF8Char & 0x80000000) != 0)
                              {
                                goto LABEL_419;
                              }

LABEL_395:
                              v229 = 0;
                              while (cstdlib_strcmp(*(v187 + v229), "rpos"))
                              {
                                v229 += 8;
                                if (v199 == v229)
                                {
                                  a2 = v275;
                                  v177 = v306;
                                  goto LABEL_400;
                                }
                              }

                              v230 = fe_stress_feat_pos(v22, v178, LOWORD(v301[0]), 1);
                              v231 = v188;
                              v177 = v306;
                              UTF8Char = fe_stress_igtr_setFeature(a1, v187, v231, 19, v306, v230);
                              a2 = v275;
LABEL_400:
                              heap_Free(*(a1 + 8), v194);
                              v175 = v272;
                              v176 = v281;
                              if ((UTF8Char & 0x80000000) != 0)
                              {
                                goto LABEL_421;
                              }

                              goto LABEL_401;
                            }
                          }
                        }
                      }
                    }

LABEL_419:
                    heap_Free(*(a1 + 8), v194);
                    v175 = v272;
                    v176 = v281;
                    goto LABEL_420;
                  }

                  heap_Free(*(a1 + 8), v189);
                  UTF8Char = 0;
                  v176 = v281;
                  a2 = v275;
                  v177 = v306;
LABEL_401:
                  igtree_Process(v277, v177, &v323);
                  v179 = v295;
                  if (cstdlib_strcmp(v323, "NOMATCH"))
                  {
                    v232 = cstdlib_atoi(v323);
                    if (v232 <= 1)
                    {
                      *(*(v295 + 56) + 32 * v304 + 24) = v232;
                    }
                  }

                  v310 = utf8_GetNextUtf8Offset(*(v298 + 24), v310);
                  v233 = *(v295 + 54);
                  if (v233 + 1 != *(v295 + 52))
                  {
                    goto LABEL_407;
                  }

                  if (!isERphon(&v322, *(*(v295 + 56) + 32 * v304)))
                  {
                    break;
                  }
                }

LABEL_411:
                ++v186;
                v185 = v298;
                if (v186 >= *(v298 + 32))
                {
                  v183 = *(v179 + 48);
                  v184 = *v301;
                  goto LABEL_413;
                }
              }

              v233 = *(v295 + 54);
LABEL_407:
              if (v233 <= (v304 + 1))
              {
                v234 = v304;
              }

              else
              {
                v234 = v304 + 1;
              }

              v304 = v234;
              goto LABEL_411;
            }

LABEL_421:
            hlp_igtree_freeFeatureVector(a1, v177, (*(v277 + 1296) - 1));
            heap_Free(*(a1 + 8), v177);
            if ((UTF8Char & 0x80000000) != 0)
            {
              goto LABEL_457;
            }
          }

          else
          {
            log_OutText(*(a1 + 32), "FE_PHRASING", 0, 0, "IGTree model for stress does not exist. Skip processing IGTree.", v152, v153, v154, v267);
            v175 = v272;
            v176 = v280;
          }

          LOWORD(v314) = 0;
          LOWORD(v313) = 0;
          v312 = 0;
          LOWORD(v325[0]) = 0;
          v322 = 0;
          v323 = 0;
          v235 = heap_Calloc(*(a1 + 8), 1, 2048);
          if (!v235)
          {
            goto LABEL_456;
          }

          v236 = v235;
          *__s = 0;
          cstdlib_strcpy(v235, "");
          v237 = (*(v175 + 104))(a2, v176, 1, 0, &v314);
          if ((v237 & 0x80000000) == 0)
          {
            UTF8Char = (*(v175 + 104))(a2, v176, 2, v314, &v313);
            if ((UTF8Char & 0x80000000) != 0)
            {
              goto LABEL_496;
            }

            v238 = v313;
            if (!v313)
            {
              goto LABEL_496;
            }

            v239 = 0;
            v307 = 2048;
            while (1)
            {
              v237 = (*(v272 + 168))(a2, v176, v238, 0, 1, __s, &v312);
              if ((v237 & 0x80000000) != 0)
              {
                break;
              }

              if (*__s <= 0xAu && ((1 << __s[0]) & 0x610) != 0)
              {
                v311 = v239;
                v237 = (*(v272 + 176))(a2, v176, v313, 9, &v323, &v312);
                if ((v237 & 0x80000000) != 0)
                {
                  break;
                }

                v237 = (*(v272 + 176))(a2, v176, v313, 3, &v322, &v312);
                if ((v237 & 0x80000000) != 0)
                {
                  break;
                }

                if ((!cstdlib_strcmp(v323, "normal") || !cstdlib_strcmp(v323, "mnx")) && *(*v22 + (v239 << 6) + 54) <= *(*v22 + (v239 << 6) + 52))
                {
                  v241 = cstdlib_strlen(v322);
                  v242 = *(*v22 + (v239 << 6) + 54);
                  if (v242 + v241 >= v307)
                  {
                    v307 = cstdlib_strlen(v322) + *(*v22 + (v239 << 6) + 54) + 1;
                    v243 = heap_Realloc(*(a1 + 8), v236, v307);
                    if (!v243)
                    {
                      UTF8Char = 2315264010;
                      log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v244, v245, v246, v247, v267);
                      goto LABEL_496;
                    }

                    v242 = *(*v22 + (v239 << 6) + 54);
                    v236 = v243;
                  }

                  if (v242)
                  {
                    v248 = 0;
                    v249 = 0;
                    do
                    {
                      if (v248)
                      {
                        cstdlib_strcat(v236, ".");
                      }

                      else if (cstdlib_strstr(v322, "[SVOX]"))
                      {
                        cstdlib_strcpy(v236, "[SVOX]");
                      }

                      v250 = *(*v22 + (v311 << 6) + 56);
                      if (*(v250 + v248 + 24) == 1)
                      {
                        cstdlib_strcat(v236, "'");
                        v250 = *(*v22 + (v311 << 6) + 56);
                      }

                      cstdlib_strcat(v236, *(v250 + v248));
                      ++v249;
                      v248 += 32;
                    }

                    while (v249 < *(*v22 + (v311 << 6) + 54));
                  }

                  v251 = *(v272 + 160);
                  v252 = v313;
                  v253 = cstdlib_strlen(v236);
                  v237 = v251(a2, v176, v252, 3, (v253 + 1), v236, v325);
                  if ((v237 & 0x80000000) != 0)
                  {
                    break;
                  }

                  *v236 = 0;
                  v239 = v311;
                }

                ++v239;
              }

              UTF8Char = (*(v272 + 120))(a2, v176, v313, &v313);
              if ((UTF8Char & 0x80000000) == 0)
              {
                v238 = v313;
                if (v313)
                {
                  continue;
                }
              }

              goto LABEL_496;
            }
          }

          UTF8Char = v237;
LABEL_496:
          v95 = *(a1 + 8);
          v96 = v236;
          goto LABEL_219;
        }

LABEL_264:
        UTF8Char = v23;
        goto LABEL_457;
      }
    }

    goto LABEL_218;
  }

  v98 = heap_Calloc(*(a1 + 8), (*(v22 + 12) + 2) * v314, 4);
  if (v98)
  {
    *v98 = 1120534528;
    v99 = &v98[v314];
    goto LABEL_136;
  }

LABEL_456:
  UTF8Char = 2315264010;
  log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v30, v31, v32, v33, v267);
LABEL_457:
  if (*(v22 + 8))
  {
    v254 = 0;
    do
    {
      if (*v22)
      {
        v255 = *v22 + (v254 << 6);
        if (*v255)
        {
          heap_Free(*(a1 + 8), *v255);
          *v255 = 0;
        }

        v256 = *(v255 + 16);
        if (v256)
        {
          heap_Free(*(a1 + 8), v256);
          *(v255 + 16) = 0;
        }

        v257 = *(v255 + 24);
        if (v257)
        {
          heap_Free(*(a1 + 8), v257);
          *(v255 + 24) = 0;
        }

        v258 = *(v255 + 56);
        if (v258)
        {
          if (*(v255 + 54))
          {
            v259 = 0;
            v260 = 0;
            v261 = *(v255 + 56);
            do
            {
              if (v261)
              {
                if (*(v261 + v259))
                {
                  heap_Free(*(a1 + 8), *(v261 + v259));
                  v258 = *(v255 + 56);
                  *(v258 + v259) = 0;
                }

                if (*(v258 + v259 + 16))
                {
                  heap_Free(*(a1 + 8), *(v258 + v259 + 16));
                  v258 = *(v255 + 56);
                  *(v258 + v259 + 16) = 0;
                }

                v261 = v258;
                if (*(v258 + v259 + 8))
                {
                  heap_Free(*(a1 + 8), *(v258 + v259 + 8));
                  v258 = *(v255 + 56);
                  *(v258 + v259 + 8) = 0;
                  v261 = v258;
                }
              }

              ++v260;
              v259 += 32;
            }

            while (v260 < *(v255 + 54));
          }

          heap_Free(*(a1 + 8), v258);
          *(v255 + 56) = 0;
        }

        v262 = *(v255 + 40);
        if (v262)
        {
          if (*(v255 + 50))
          {
            v263 = 0;
            v264 = 0;
            v265 = *(v255 + 40);
            do
            {
              if (v265)
              {
                if (*(v265 + v263))
                {
                  heap_Free(*(a1 + 8), *(v265 + v263));
                  v262 = *(v255 + 40);
                  *(v262 + v263) = 0;
                }

                if (*(v262 + v263 + 8))
                {
                  heap_Free(*(a1 + 8), *(v262 + v263 + 8));
                  v262 = *(v255 + 40);
                  *(v262 + v263 + 8) = 0;
                }

                v265 = v262;
                if (*(v262 + v263 + 24))
                {
                  heap_Free(*(a1 + 8), *(v262 + v263 + 24));
                  v262 = *(v255 + 40);
                  *(v262 + v263 + 24) = 0;
                  v265 = v262;
                }
              }

              ++v264;
              v263 += 40;
            }

            while (v264 < *(v255 + 50));
          }

          heap_Free(*(a1 + 8), v262);
          *(v255 + 40) = 0;
        }
      }

      ++v254;
    }

    while (v254 < *(v22 + 8));
  }

  if (*v22)
  {
    heap_Free(*(a1 + 8), *v22);
    *v22 = 0;
  }

  cstdlib_memset(v22, 0, 0x10uLL);
  heap_Free(*(a1 + 8), v22);
  return UTF8Char;
}