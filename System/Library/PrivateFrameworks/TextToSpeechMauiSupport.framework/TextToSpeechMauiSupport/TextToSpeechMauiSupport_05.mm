BOOL log_HasTraceTuningDataSubscriber(_BOOL8 result)
{
  if (result)
  {
    v1 = result;
    v2 = (result + 16);
    v3 = 5;
    do
    {
      if (TraceTuningDataEnabled(v2))
      {
        return 1;
      }

      v2 += 2;
      --v3;
    }

    while (v3);

    return TraceTuningDataEnabled((v1 + 104));
  }

  return result;
}

uint64_t log_OutTraceTuningDataBinary(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a1 || !log_HasTraceTuningDataSubscriber(a1))
  {
    return 0;
  }

  if (!a5)
  {
    return 2226135046;
  }

  v12 = 0;
  v13 = a1 + 24;
  v14 = 5;
  do
  {
    if (*v13)
    {
      v15 = *(*v13 + 104);
      if (v15)
      {
        v16 = v15(*(v13 - 8), a2, a3, a4, a5, a6);
        if (v16 >= 0)
        {
          v12 = v12;
        }

        else
        {
          v12 = v16;
        }
      }
    }

    v13 += 16;
    --v14;
  }

  while (v14);
  v17 = *(a1 + 112);
  if (v17)
  {
    if ((a2 - 402) <= 0xFFFFFFFD)
    {
      v18 = *(v17 + 104);
      if (v18)
      {
        v19 = v18(*(a1 + 104), a2, a3, a4, a5, a6);
        if (v19 >= 0)
        {
          return v12;
        }

        else
        {
          return v19;
        }
      }
    }
  }

  return v12;
}

BOOL TraceTuningDataEnabled(void *a1)
{
  v1 = a1[1];
  if (!v1 || !v1[13] && !v1[12])
  {
    return 0;
  }

  v3 = v1[14];
  if (v3)
  {
    if (v3(*a1, 231) != 1)
    {
      return 0;
    }

    v1 = a1[1];
  }

  v4 = v1[10];
  return !v4 || v4(*a1) > 3;
}

uint64_t log_RefreshParameters(uint64_t a1)
{
  v1 = 0;
  v2 = (a1 + 56);
  v3 = 5;
  do
  {
    v4 = *(v2 - 2);
    if (v4)
    {
      v5 = *(v4 + 120);
      if (v5)
      {
        v6 = v5(*(v2 - 1), *v2);
        if (v6 >= 0)
        {
          v1 = v1;
        }

        else
        {
          v1 = v6;
        }
      }
    }

    v2 += 5;
    --v3;
  }

  while (v3);
  return v1;
}

uint64_t log_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2226135041;
  }

  result = 0;
  *a2 = &ILog;
  return result;
}

uint64_t aux_ResizeKeyValueVect(uint64_t *a1, uint64_t a2, unsigned int a3)
{
  v6 = *a2;
  v7 = cstdlib_strlen(*a2) + a3;
  v8 = *(a2 + 8);
  if (v7 < v8)
  {
    return 0;
  }

  v9 = 0;
  v10 = a3;
  LODWORD(v11) = *(a2 + 8);
  while (1)
  {
    v12 = heap_Realloc(a1, v9, (v11 + 4096));
    if (!v12)
    {
      break;
    }

    v13 = v12;
    *(a2 + 8) += 4096;
    v14 = cstdlib_strlen(*a2);
    v11 = *(a2 + 8);
    v9 = v13;
    if (v14 + v10 < v11)
    {
      v15 = 0;
      if (v7 >= v8 && v6)
      {
        cstdlib_strcpy(v13, *a2);
        v16 = 0;
        v17 = *(a2 + 12);
        if ((v17 + 1) > 1)
        {
          v18 = v17 + 1;
        }

        else
        {
          v18 = 1;
        }

        v19 = 8 * v18;
        do
        {
          v20 = *(a2 + 16);
          v21 = *(v20 + v16);
          if (v21 >= v6)
          {
            *(v20 + v16) = &v13[(v21 - v6)];
          }

          v22 = *(a2 + 24);
          v23 = *(v22 + v16);
          if (v23 >= v6)
          {
            *(v22 + v16) = &v13[(v23 - v6)];
          }

          v16 += 8;
        }

        while (v19 != v16);
        heap_Free(a1, *a2);
        v15 = 0;
        *a2 = v13;
      }

      return v15;
    }
  }

  v15 = 2226135050;
  if (v9)
  {
    heap_Free(a1, v9);
  }

  return v15;
}

uint64_t hlp_EncodeVersionString(char *a1)
{
  v1 = 0;
  v7 = *MEMORY[0x277D85DE8];
  v6 = 0;
  v5 = 0;
  do
  {
    v2 = *a1;
    if (!*a1)
    {
      break;
    }

    ++a1;
    while (v2)
    {
      if (v2 == 46 || v2 == 95)
      {
        goto LABEL_9;
      }

      *(&v5 + v1) = 10 * *(&v5 + v1) + v2 - 48;
      v3 = *a1++;
      v2 = v3;
    }

    --a1;
LABEL_9:
    ++v1;
  }

  while (v1 != 3);
  return (HIDWORD(v5) << 8) | (v5 << 16) | v6;
}

uint64_t cuputils_getVersionString(uint64_t result, char *__str, uint64_t a3, unsigned int *a4)
{
  *a4 = BYTE3(result);
  if (__str)
  {
    return snprintf(__str, a3 - 1, "%d.%d.%d", BYTE2(result), BYTE1(result), result);
  }

  return result;
}

uint64_t cupreader_open(_WORD *a1, int a2, uint64_t *a3, uint64_t **a4)
{
  v45 = 0;
  inited = InitRsrcFunction(a1, a2, &v45);
  if ((inited & 0x80000000) != 0)
  {
    v9 = inited;
    v11 = 0;
  }

  else
  {
    v9 = 2166366218;
    if (a3)
    {
      v10 = heap_Calloc(*(v45 + 8), 1, 80);
      v11 = v10;
      if (v10)
      {
        *v10 = a3;
        v12 = *a3;
        v13 = *(a3[1] + 16);
        v14 = heap_Calloc(*(v12 + 8), (v13 + 1), 1);
        v11[5] = v14;
        if (!v14)
        {
          goto LABEL_24;
        }

        cstdlib_memcpy(v14, *(*(*v11 + 8) + 8), v13);
        v46 = 0;
        Data = clcarchive_GetData(*v11, 1u, 0, *(*(*v11 + 8) + 56), &v46);
        if ((Data & 0x80000000) != 0)
        {
          goto LABEL_23;
        }

        v16 = v46;
        *(v11 + 8) = (v46[2] << 16) | (v46[3] << 24) | (v46[1] << 8) | *v46;
        heap_Free(*(**v11 + 8), v16);
        v46 = 0;
        Data = clcarchive_GetData(*v11, 2u, 0, *(*(*v11 + 8) + 96), &v46);
        if ((Data & 0x80000000) != 0)
        {
          goto LABEL_23;
        }

        v17 = v46;
        *(v11 + 6) = *v46;
        heap_Free(*(**v11 + 8), v17);
        Data = clcarchive_GetData(*v11, 3u, 0, *(*(*v11 + 8) + 136), &v46);
        if ((Data & 0x80000000) != 0)
        {
          goto LABEL_23;
        }

        v18 = v46;
        *(v11 + 7) = *v46;
        heap_Free(*(**v11 + 8), v18);
        v19 = *(v11 + 6);
        if (v19)
        {
          v20 = heap_Calloc(*(**v11 + 8), v19, 32);
          v11[1] = v20;
          if (!v20)
          {
            goto LABEL_24;
          }

          if (*(v11 + 6))
          {
            v21 = 0;
            v22 = 0;
            v23 = 4;
            while (1)
            {
              v43 = v22;
              v24 = v23;
              v25 = v23 + 1;
              v26 = v11[1];
              v27 = (v26 + v21);
              v28 = *(*v11 + 8);
              v29 = *(v28 + 40 * v25 + 16);
              v42 = v24;
              Data = clcarchive_GetData(*v11, v24, 0, *(v28 + 40 * v24 + 16), (v26 + v21));
              if ((Data & 0x80000000) != 0)
              {
                break;
              }

              Data = clcarchive_GetData(*v11, v25, 0, v29, v27 + 1);
              if ((Data & 0x80000000) != 0)
              {
                break;
              }

              if (!*v27)
              {
                goto LABEL_24;
              }

              v30 = v27[1];
              if (!v30)
              {
                goto LABEL_24;
              }

              if (!cstdlib_strcmp(v30, "application/x-vocalizer-resources") || !cstdlib_strcmp(v30, "application/x-vocalizer-resources-package"))
              {
                v9 = 2166366226;
                goto LABEL_24;
              }

              v31 = cupreader_readData(v11, *(v26 + v21), (v26 + v21 + 16), (v26 + v21 + 24));
              v32 = v31;
              if ((v31 & 0x80000000) != 0)
              {
                v9 = v31;
                goto LABEL_24;
              }

              v22 = v43 + 1;
              v21 += 32;
              v23 = v25 + 1;
              if (v43 + 1 >= *(v11 + 6))
              {
                v33 = v42 + 2;
                goto LABEL_30;
              }
            }

LABEL_23:
            v9 = Data;
            goto LABEL_24;
          }

          v32 = 0;
          v33 = 4;
LABEL_30:
          v35 = *(v11 + 7);
          if (!v35)
          {
LABEL_37:
            *a4 = v11;
            return v32;
          }

          v36 = heap_Calloc(*(**v11 + 8), v35, 8);
          v11[2] = v36;
          if (v36)
          {
            if (*(v11 + 7))
            {
              v37 = 0;
              v44 = *(v11 + 6) + v33;
              while (1)
              {
                v38 = (*(*v11 + 8) + 40 * (v44 + v37));
                if (!*v38)
                {
                  break;
                }

                v39 = v11[2];
                v40 = cstdlib_strlen(*v38);
                v41 = heap_Calloc(*(**v11 + 8), v40 + 1, 1);
                *(v39 + 8 * v37) = v41;
                if (!v41)
                {
                  goto LABEL_24;
                }

                cstdlib_memcpy(v41, *v38, v40);
                if (++v37 >= *(v11 + 7))
                {
                  goto LABEL_37;
                }
              }

              v9 = 2166366224;
              goto LABEL_24;
            }

            goto LABEL_37;
          }
        }

        else
        {
          v9 = 2166366223;
        }

LABEL_24:
        if (*v11)
        {
          *v11 = 0;
        }
      }
    }

    else
    {
      v11 = 0;
      v9 = 2166366214;
    }
  }

  cupreader_close(a1, a2, v11);
  return v9;
}

uint64_t cupreader_close(_WORD *a1, int a2, uint64_t a3)
{
  v14 = 0;
  inited = InitRsrcFunction(a1, a2, &v14);
  v5 = inited;
  if (a3 && (inited & 0x80000000) == 0)
  {
    v6 = *(a3 + 8);
    if (v6)
    {
      if (*(a3 + 24))
      {
        v7 = 0;
        v8 = 0;
        do
        {
          if (*(v6 + v7))
          {
            heap_Free(*(v14 + 8), *(v6 + v7));
            v6 = *(a3 + 8);
            *(v6 + v7) = 0;
          }

          if (*(v6 + v7 + 8))
          {
            heap_Free(*(v14 + 8), *(v6 + v7 + 8));
            v6 = *(a3 + 8);
            *(v6 + v7 + 8) = 0;
          }

          ++v8;
          v7 += 32;
        }

        while (v8 < *(a3 + 24));
      }

      heap_Free(*(v14 + 8), v6);
      *(a3 + 8) = 0;
    }

    v9 = *(a3 + 16);
    if (v9)
    {
      v10 = *(a3 + 28);
      if (v10)
      {
        for (i = 0; i < v10; ++i)
        {
          if (*(v9 + 8 * i))
          {
            heap_Free(*(v14 + 8), *(v9 + 8 * i));
            v9 = *(a3 + 16);
            *(v9 + 8 * i) = 0;
            v10 = *(a3 + 28);
          }
        }
      }

      heap_Free(*(v14 + 8), v9);
      *(a3 + 16) = 0;
    }

    v12 = *(a3 + 40);
    if (v12)
    {
      heap_Free(*(v14 + 8), v12);
      *(a3 + 40) = 0;
    }

    heap_Free(*(v14 + 8), a3);
  }

  return v5;
}

uint64_t cupreader_readData(uint64_t *a1, char *__s1, uint64_t *a3, _DWORD *a4)
{
  result = 2166366214;
  if (!a3 || !a1 || !__s1 || !a4)
  {
    goto LABEL_17;
  }

  v9 = *a1;
  if (!*(*a1 + 16))
  {
    return 0;
  }

  v10 = 0;
  v11 = 0;
  v16 = 0;
  while (1)
  {
    v12 = *(v9 + 8);
    if (v12)
    {
      break;
    }

LABEL_10:
    ++v11;
    v10 += 40;
    if (v11 >= *(v9 + 16))
    {
      return 0;
    }
  }

  if (cstdlib_strcmp(__s1, *(v12 + v10)))
  {
    v9 = *a1;
    goto LABEL_10;
  }

  v13 = v12 + v10;
  v14 = *(v12 + v10 + 8);
  if (v14)
  {
    result = 0;
    goto LABEL_16;
  }

  result = clcarchive_GetData(*a1, v11, 0, *(v13 + 16), &v16);
  if ((result & 0x80000000) == 0)
  {
    v14 = v16;
    *(v13 + 8) = v16;
LABEL_16:
    *a3 = v14;
    v15 = *(v13 + 16);
LABEL_21:
    *a4 = v15;
    return result;
  }

LABEL_17:
  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    v15 = 0;
    goto LABEL_21;
  }

  return result;
}

uint64_t cupreader_initFromFile(_WORD *a1, int a2, uint64_t a3, uint64_t **a4)
{
  v16[0] = xmmword_287EE96D8;
  v16[1] = *&off_287EE96E8;
  v15 = 1;
  v13 = 0;
  v14 = 0;
  v8 = clcarchive_ObjOpen(a1, a2, "dontcare", &v13);
  if ((v8 & 0x80000000) != 0)
  {
    v10 = v8;
  }

  else
  {
    v9 = clcarchive_Parse(v13, v16, a3, &v15, 0);
    if ((v9 & 0x80000000) != 0)
    {
      return v9;
    }

    v10 = cupreader_open(a1, a2, v13, &v14);
    v11 = v14;
    if ((v10 & 0x80000000) == 0)
    {
      v14[7] = a3;
      *a4 = v11;
      return v10;
    }

    if (v14)
    {
      cupreader_close(a1, a2, v14);
    }
  }

  if (v13)
  {
    clcarchive_ObjClose(v13);
  }

  return v10;
}

uint64_t cupreader_initFromBuffer(_WORD *a1, int a2, uint64_t a3, int a4, uint64_t **a5)
{
  memset(v18, 0, sizeof(v18));
  clcarchive_GetMemoryStreamInterface(v18);
  v14 = 1;
  v12 = 0;
  v13 = 0;
  v15 = a3;
  v16 = a4;
  v17 = 0;
  result = clcarchive_ObjOpen(a1, a2, "dontcare", &v12);
  if ((result & 0x80000000) == 0)
  {
    result = clcarchive_Parse(v12, v18, &v15, &v14, 0);
    if ((result & 0x80000000) == 0)
    {
      result = cupreader_open(a1, a2, v12, &v13);
      if ((result & 0x80000000) == 0)
      {
        v11 = v13;
        v13[7] = a3;
        *a5 = v11;
      }
    }
  }

  return result;
}

uint64_t cupreader_deInit(_WORD *a1, int a2, uint64_t *a3)
{
  clcarchive_ObjClose(*a3);
  *a3 = 0;

  return cupreader_close(a1, a2, a3);
}

uint64_t cupreader_PrependCupName(char *a1, const char *a2, unint64_t a3)
{
  v6 = cstdlib_strlen(a1);
  v7 = cstdlib_strlen(a2);
  v8 = v7 + v6;
  v9 = v7 + v6 + 1;
  if (v9 > a3)
  {
    return 2166366226;
  }

  if (v8 >= v7 + 1)
  {
    v11 = v6 - 1;
    do
    {
      a1[v8--] = a1[v11--];
    }

    while (v8 >= v7 + 1);
  }

  a1[v7] = 58;
  cstdlib_strncpy(a1, a2, v7);
  result = 0;
  a1[v9] = 0;
  return result;
}

uint64_t cupreader_getCupJsonDescription(_WORD *a1, int a2, uint64_t a3, uint64_t a4, char **a5)
{
  v50 = *MEMORY[0x277D85DE8];
  v44 = 0;
  v45 = 0;
  v43 = 0;
  inited = InitRsrcFunction(a1, a2, &v44);
  v9 = inited;
  if ((inited & 0x80000000) != 0)
  {
    v11 = 0;
    v10 = inited;
    goto LABEL_45;
  }

  v10 = 2166366218;
  SplitpathOrUrl(a3, 0, 0, 0, v47, v46);
  snprintf(__str, 0x400uLL, "{\n\tfileName: %s%s,\n", v47, v46);
  v11 = strhelper_StringAppend(*(v44 + 8), 0, __str, 0xFFFFFFFFFFFFFFFFLL, &v45, 0x400uLL);
  if (!v11)
  {
    goto LABEL_45;
  }

  snprintf(__str, 0x400uLL, "\tname: %s,\n", *(a4 + 40));
  v12 = strhelper_StringAppend(*(v44 + 8), v11, __str, 0xFFFFFFFFFFFFFFFFLL, &v45, 0x400uLL);
  if (!v12)
  {
    goto LABEL_45;
  }

  v13 = v12;
  cuputils_getVersionString(*(a4 + 32), v48, 32, &v43);
  snprintf(__str, 0x400uLL, "\tversion: %s,\n", v48);
  v14 = strhelper_StringAppend(*(v44 + 8), v13, __str, 0xFFFFFFFFFFFFFFFFLL, &v45, 0x400uLL);
  if (!v14)
  {
    goto LABEL_44;
  }

  v11 = v14;
  snprintf(__str, 0x400uLL, "\tformat: %d,\n", v43);
  v15 = strhelper_StringAppend(*(v44 + 8), v11, __str, 0xFFFFFFFFFFFFFFFFLL, &v45, 0x400uLL);
  if (!v15)
  {
    goto LABEL_45;
  }

  v13 = v15;
  if (!*(a4 + 24))
  {
    goto LABEL_28;
  }

  v16 = strhelper_StringAppend(*(v44 + 8), v15, "\ttuning: [\n", 0xFFFFFFFFFFFFFFFFLL, &v45, 0x400uLL);
  if (!v16)
  {
LABEL_44:
    v11 = v13;
    goto LABEL_45;
  }

  v11 = v16;
  if (*(a4 + 24))
  {
    v17 = 0;
    v18 = 0;
    do
    {
      v19 = strhelper_StringAppend(*(v44 + 8), v11, "\t\t{\n", 0xFFFFFFFFFFFFFFFFLL, &v45, 0x400uLL);
      if (!v19)
      {
        goto LABEL_45;
      }

      v20 = v19;
      strcpy(__str, "\t\t\tfileName: [TBD],\n");
      v21 = strhelper_StringAppend(*(v44 + 8), v19, __str, 0xFFFFFFFFFFFFFFFFLL, &v45, 0x400uLL);
      if (!v21)
      {
        goto LABEL_24;
      }

      v11 = v21;
      snprintf(__str, 0x400uLL, "\t\t\tmimeType: %s,\n", *(*(a4 + 8) + v17 + 8));
      v22 = strhelper_StringAppend(*(v44 + 8), v11, __str, 0xFFFFFFFFFFFFFFFFLL, &v45, 0x400uLL);
      if (!v22)
      {
        goto LABEL_45;
      }

      v20 = v22;
      snprintf(__str, 0x400uLL, "\t\t\tname: %s\n", *(*(a4 + 8) + v17));
      v23 = strhelper_StringAppend(*(v44 + 8), v20, __str, 0xFFFFFFFFFFFFFFFFLL, &v45, 0x400uLL);
      if (!v23)
      {
        goto LABEL_24;
      }

      v11 = v23;
      v24 = strhelper_StringAppend(*(v44 + 8), v23, "\t\t}", 0xFFFFFFFFFFFFFFFFLL, &v45, 0x400uLL);
      if (!v24)
      {
        goto LABEL_45;
      }

      v20 = v24;
      v25 = ++v18 >= *(a4 + 24) ? "\n" : ",\n";
      v26 = strhelper_StringAppend(*(v44 + 8), v24, v25, 0xFFFFFFFFFFFFFFFFLL, &v45, 0x400uLL);
      if (!v26)
      {
LABEL_24:
        v11 = v20;
        goto LABEL_45;
      }

      v11 = v26;
      v17 += 32;
    }

    while (v18 < *(a4 + 24));
  }

  v27 = strhelper_StringAppend(*(v44 + 8), v11, "\t]", 0xFFFFFFFFFFFFFFFFLL, &v45, 0x400uLL);
  if (!v27)
  {
    goto LABEL_45;
  }

  v28 = v27;
  if (*(a4 + 28))
  {
    v29 = ",\n";
  }

  else
  {
    v29 = "\n";
  }

  v30 = strhelper_StringAppend(*(v44 + 8), v27, v29, 0xFFFFFFFFFFFFFFFFLL, &v45, 0x400uLL);
  if (!v30)
  {
    v11 = v28;
    goto LABEL_45;
  }

  v13 = v30;
LABEL_28:
  if (!*(a4 + 28))
  {
    goto LABEL_42;
  }

  v31 = strhelper_StringAppend(*(v44 + 8), v13, "\timplicit: [\n", 0xFFFFFFFFFFFFFFFFLL, &v45, 0x400uLL);
  if (!v31)
  {
    goto LABEL_44;
  }

  v11 = v31;
  if (*(a4 + 28))
  {
    v32 = 0;
    do
    {
      v33 = strhelper_StringAppend(*(v44 + 8), v11, "\t\t{\n", 0xFFFFFFFFFFFFFFFFLL, &v45, 0x400uLL);
      if (!v33)
      {
        goto LABEL_45;
      }

      v34 = v33;
      strcpy(__str, "\t\t\tfileName: [TBD],\n");
      v35 = strhelper_StringAppend(*(v44 + 8), v33, __str, 0xFFFFFFFFFFFFFFFFLL, &v45, 0x400uLL);
      if (!v35)
      {
        goto LABEL_48;
      }

      v11 = v35;
      snprintf(__str, 0x400uLL, "\t\t\tname: %s\n", *(*(a4 + 16) + 8 * v32));
      v36 = strhelper_StringAppend(*(v44 + 8), v11, __str, 0xFFFFFFFFFFFFFFFFLL, &v45, 0x400uLL);
      if (!v36)
      {
        goto LABEL_45;
      }

      v37 = v36;
      v38 = strhelper_StringAppend(*(v44 + 8), v36, "\t\t}", 0xFFFFFFFFFFFFFFFFLL, &v45, 0x400uLL);
      if (!v38)
      {
        v11 = v37;
        goto LABEL_45;
      }

      v34 = v38;
      if (++v32 >= *(a4 + 28))
      {
        v39 = "\n";
      }

      else
      {
        v39 = ",\n";
      }

      v40 = strhelper_StringAppend(*(v44 + 8), v38, v39, 0xFFFFFFFFFFFFFFFFLL, &v45, 0x400uLL);
      if (!v40)
      {
LABEL_48:
        v11 = v34;
        goto LABEL_45;
      }

      v11 = v40;
    }

    while (v32 < *(a4 + 28));
  }

  v13 = strhelper_StringAppend(*(v44 + 8), v11, "\t]\n", 0xFFFFFFFFFFFFFFFFLL, &v45, 0x400uLL);
  if (!v13)
  {
LABEL_45:
    heap_Free(*(v44 + 8), v11);
    v41 = 0;
    v9 = v10;
    goto LABEL_46;
  }

LABEL_42:
  v41 = strhelper_StringAppend(*(v44 + 8), v13, "}\n", 0xFFFFFFFFFFFFFFFFLL, &v45, 0x400uLL);
  v11 = v13;
  if (!v41)
  {
    goto LABEL_45;
  }

LABEL_46:
  *a5 = v41;
  return v9;
}

uint64_t clcarchive_ObjOpen(_WORD *a1, int a2, const char *a3, uint64_t *a4)
{
  v16 = 0;
  v4 = 2349867018;
  if (!a4)
  {
    return 2349867015;
  }

  inited = InitRsrcFunction(a1, a2, &v16);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  *a4 = 0;
  v8 = heap_Calloc(*(v16 + 8), 1, 144);
  if (v8)
  {
    v9 = v8;
    v10 = *(v16 + 8);
    v11 = cstdlib_strlen(a3);
    v12 = heap_Alloc(v10, (v11 + 1));
    *(v9 + 128) = v12;
    if (v12)
    {
      cstdlib_strcpy(v12, a3);
      *(v9 + 64) = heap_Alloc;
      *(v9 + 72) = heap_Calloc;
      *(v9 + 80) = heap_Realloc;
      *(v9 + 88) = heap_Free;
      v13 = OOCAllocator_Con(v9 + 24, (v9 + 64), *(v16 + 8));
      v14 = LH_ERROR_to_VERROR(v13);
      if ((v14 & 0x80000000) != 0)
      {
        heap_Free(*(v16 + 8), *(v9 + 128));
        heap_Free(*(v16 + 8), v9);
        return 2349867012;
      }

      else
      {
        *v9 = v16;
        *(v9 + 120) = 0;
        v4 = v14;
        *a4 = v9;
      }
    }

    else
    {
      heap_Free(*(v16 + 8), v9);
    }
  }

  return v4;
}

uint64_t clcarchive_GetData(uint64_t a1, unsigned int a2, int a3, unsigned int a4, uint64_t *a5)
{
  v10 = heap_Calloc(*(*a1 + 8), a4 + 3, 1);
  if (v10)
  {
    v11 = (***(a1 + 104))(*(a1 + 104) - *(**(a1 + 104) + 56), (*(*(a1 + 8) + 40 * a2 + 20) + a3));
    if ((LH_ERROR_to_VERROR(v11) & 0x80000000) != 0 || (v12 = (*(**(a1 + 104) + 8))(*(a1 + 104) - *(**(a1 + 104) + 56), v10, a4), result = LH_ERROR_to_VERROR(v12), (result & 0x80000000) != 0))
    {
      heap_Free(*(*a1 + 8), v10);
      v10 = 0;
      result = 2349867012;
    }
  }

  else
  {
    result = 2349867018;
  }

  *a5 = v10;
  return result;
}

uint64_t clcarchive_Parse(uint64_t a1, const void *a2, uint64_t a3, _DWORD *a4, int a5)
{
  v43[1] = *MEMORY[0x277D85DE8];
  v41 = 0;
  v40 = 0;
  v5 = 2349867012;
  __s1 = 0;
  v43[0] = 0;
  if (!a1)
  {
    return 2349867016;
  }

  v7 = 2349867015;
  if (a2 && a3)
  {
    if (a5)
    {
      v9 = 0;
    }

    else
    {
      v9 = a3;
    }

    v39 = 0;
    *(a1 + 112) = v9;
    v10 = PNEW_BinBlockStreamReader_Con(a1 + 24, a1 + 24, a2, a3, a4, (a1 + 96));
    if ((LH_ERROR_to_VERROR(v10) & 0x80000000) != 0)
    {
      goto LABEL_70;
    }

    v11 = (*(*(*(a1 + 96) + 32) + 120))(*(a1 + 96) + 32 - *(*(*(a1 + 96) + 32) + 224), 535211295, 0, a1 + 104, &v39);
    v12 = LH_ERROR_to_VERROR(v11);
    v13 = v39;
    *(a1 + 136) = v39;
    if (v12 < 0 || !BinBlockStreamReader_IsVersionAccepted(v13, 1966080) && !BinBlockStreamReader_IsVersionAccepted(v39, 1900544) && !BinBlockStreamReader_IsVersionAccepted(v39, 1835008) && !BinBlockStreamReader_IsVersionAccepted(v39, 1769472) && !BinBlockStreamReader_IsVersionAccepted(v39, 1703936) && !BinBlockStreamReader_IsVersionAccepted(v39, 1638400) && !BinBlockStreamReader_IsVersionAccepted(v39, 1572864) && !BinBlockStreamReader_IsVersionAccepted(v39, 1507328) && !BinBlockStreamReader_IsVersionAccepted(v39, 1441792) && !BinBlockStreamReader_IsVersionAccepted(v39, 1376256) && !BinBlockStreamReader_IsVersionAccepted(v39, 1310720) && !BinBlockStreamReader_IsVersionAccepted(v39, 1245184) && !BinBlockStreamReader_IsVersionAccepted(v39, 1179648) && !BinBlockStreamReader_IsVersionAccepted(v39, 1114112) && !BinBlockStreamReader_IsVersionAccepted(v39, 0x100000) && !BinBlockStreamReader_IsVersionAccepted(v39, 983040) && !BinBlockStreamReader_IsVersionAccepted(v39, 917504) && !BinBlockStreamReader_IsVersionAccepted(v39, 851968) && !BinBlockStreamReader_IsVersionAccepted(v39, 786432) && !BinBlockStreamReader_IsVersionAccepted(v39, 720896) && !BinBlockStreamReader_IsVersionAccepted(v39, 655360) && !BinBlockStreamReader_IsVersionAccepted(v39, 589824) && !BinBlockStreamReader_IsVersionAccepted(v39, 0x80000) && !BinBlockStreamReader_IsVersionAccepted(v39, 459008) && (!BinBlockStreamReader_IsVersionAccepted(v39, 393216) || cstdlib_strstr(*(a1 + 128), "/cfg4")))
    {
      goto LABEL_70;
    }

    v14 = (*(**(a1 + 104) + 8))(*(a1 + 104) - *(**(a1 + 104) + 56), &__s1, 7);
    if ((LH_ERROR_to_VERROR(v14) & 0x80000000) != 0 || cstdlib_memcmp(&__s1, "NVAR", 4uLL) || BYTE4(__s1) > 7u || BYTE4(__s1) == 7 && (BYTE5(__s1) > 4u || BYTE5(__s1) == 4 && BYTE6(__s1)))
    {
      goto LABEL_70;
    }

    v15 = (*(**(a1 + 104) + 8))(*(a1 + 104) - *(**(a1 + 104) + 56), a1 + 16, 4);
    v16 = LH_ERROR_to_VERROR(v15);
    if ((v16 & 0x80000000) != 0)
    {
      goto LABEL_70;
    }

    v7 = v16;
    v17 = *(a1 + 16);
    if (v17)
    {
      v18 = heap_Calloc(*(*a1 + 8), v17, 40);
      *(a1 + 8) = v18;
      if (!v18)
      {
        goto LABEL_69;
      }

      if (*(a1 + 16))
      {
        v19 = 0;
        v20 = 11;
LABEL_45:
        v21 = (*(**(a1 + 104) + 8))(*(a1 + 104) - *(**(a1 + 104) + 56), &v41, 2);
        if ((LH_ERROR_to_VERROR(v21) & 0x80000000) != 0)
        {
          goto LABEL_70;
        }

        v22 = heap_Calloc(*(*a1 + 8), v41 + 1, 1);
        *(*(a1 + 8) + 40 * v19) = v22;
        if (v22)
        {
          v23 = (*(**(a1 + 104) + 8))(*(a1 + 104) - *(**(a1 + 104) + 56), v22, v41);
          if ((LH_ERROR_to_VERROR(v23) & 0x80000000) != 0)
          {
            goto LABEL_70;
          }

          v24 = v41;
          v25 = (*(**(a1 + 104) + 8))(*(a1 + 104) - *(**(a1 + 104) + 56), *(a1 + 8) + 40 * v19 + 16, 4);
          if ((LH_ERROR_to_VERROR(v25) & 0x80000000) != 0)
          {
            goto LABEL_70;
          }

          v26 = v20 + v24 + 6;
          v27 = *(a1 + 8);
          if (!a5 && v19)
          {
            v28 = v27 + 40 * v19;
            *(v28 + 20) = v26;
            v29 = (***(a1 + 104))(*(a1 + 104) - *(**(a1 + 104) + 56), (*(v28 + 16) + v26));
            goto LABEL_54;
          }

          v30 = heap_Calloc(*(*a1 + 8), 1, *(v27 + 40 * v19 + 16));
          v31 = *(a1 + 8);
          *(v31 + 40 * v19 + 8) = v30;
          if (v30)
          {
            v32 = v31 + 40 * v19;
            *(v32 + 20) = v26;
            v29 = (*(**(a1 + 104) + 8))(*(a1 + 104) - *(**(a1 + 104) + 56), v30, *(v32 + 16));
LABEL_54:
            if ((LH_ERROR_to_VERROR(v29) & 0x80000000) == 0)
            {
              v20 += v24 + *(*(a1 + 8) + 40 * v19 + 16) + 15;
              while (1)
              {
                v33 = (*(**(a1 + 104) + 8))(*(a1 + 104) - *(**(a1 + 104) + 56), &v40, 1);
                if ((LH_ERROR_to_VERROR(v33) & 0x80000000) != 0)
                {
                  break;
                }

                v34 = (*(**(a1 + 104) + 8))(*(a1 + 104) - *(**(a1 + 104) + 56), v43, 8);
                v35 = LH_ERROR_to_VERROR(v34);
                if ((v35 & 0x80000000) != 0)
                {
                  break;
                }

                if (!v40 && !v43[0])
                {
                  v7 = v35;
                  if (++v19 < *(a1 + 16))
                  {
                    goto LABEL_45;
                  }

                  return v7;
                }

                v36 = *(*(a1 + 8) + 40 * v19 + 16);
                v20 += 9;
                if (LODWORD(v43[0]) > v36 || LODWORD(v43[0]) + HIDWORD(v43[0]) * v40 > v36)
                {
                  goto LABEL_70;
                }
              }
            }

            goto LABEL_70;
          }
        }

LABEL_69:
        v5 = 2349867018;
LABEL_70:
        clcarchive_ObjClose(a1);
        return v5;
      }
    }
  }

  return v7;
}

uint64_t clcarchive_ObjClose(uint64_t a1)
{
  if (!a1)
  {
    return 2349867016;
  }

  v2 = *(a1 + 104);
  if (v2)
  {
    (*(*v2 + 40))(v2 - *(*v2 + 56));
  }

  v3 = *(a1 + 96);
  if (v3)
  {
    (*(*v3 + 32))(v3);
  }

  v4 = *(a1 + 128);
  if (v4)
  {
    heap_Free(*(*a1 + 8), v4);
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    if (*(a1 + 16))
    {
      v6 = 0;
      v7 = 0;
      do
      {
        v8 = *(a1 + 8);
        v9 = *(v8 + v6);
        if (v9)
        {
          heap_Free(*(*a1 + 8), v9);
          v8 = *(a1 + 8);
        }

        v10 = *(v8 + v6 + 8);
        if (v10)
        {
          heap_Free(*(*a1 + 8), v10);
          v8 = *(a1 + 8);
        }

        v11 = *(v8 + v6 + 24);
        if (v11)
        {
          heap_Free(*(*a1 + 8), v11);
        }

        ++v7;
        v6 += 40;
      }

      while (v7 < *(a1 + 16));
      v5 = *(a1 + 8);
    }

    heap_Free(*(*a1 + 8), v5);
  }

  heap_Free(*(*a1 + 8), a1);
  return 0;
}

double clcarchive_GetMemoryStreamInterface@<D0>(_OWORD *a1@<X8>)
{
  result = *&clcMemoryStreamInterface;
  v2 = *&off_287EE9708;
  *a1 = clcMemoryStreamInterface;
  a1[1] = v2;
  return result;
}

size_t ClcDataRead(void *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 12);
  if (a3 * a2 >= (*(a4 + 8) - v6))
  {
    v7 = (*(a4 + 8) - v6);
  }

  else
  {
    v7 = a3 * a2;
  }

  cstdlib_memcpy(a1, (*a4 + v6), v7);
  *(a4 + 12) += v7;
  return v7 / a2;
}

uint64_t ClcDataSeek(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == 1)
  {
    v5 = *(a1 + 12) + a2;
    if (v5 >= 0 && v5 < *(a1 + 8))
    {
      result = 0;
      *(a1 + 12) = v5;
      return result;
    }
  }

  else if (!a3 && *(a1 + 8) > a2)
  {
    result = 0;
    *(a1 + 12) = a2;
    return result;
  }

  return 1;
}

size_t auxil_strlcat(const char *a1, const char *a2, uint64_t a3)
{
  v6 = cstdlib_strlen(a1);
  v7 = cstdlib_strlen(a2);
  v8 = v7;
  if (a3 && v6 < a3 - 1)
  {
    if (v7 >= a3 - v6)
    {
      v9 = a3 - v6 - 1;
    }

    else
    {
      v9 = v7;
    }

    v10 = &a1[v6];
    cstdlib_memcpy(v10, a2, v9);
    v10[v9] = 0;
  }

  return v8 + v6;
}

size_t auxil_strlcpy(void *a1, char *__s, size_t a3)
{
  v6 = cstdlib_strlen(__s);
  v7 = v6;
  if (a3)
  {
    if (v6 >= a3)
    {
      v8 = a3 - 1;
    }

    else
    {
      v8 = v6;
    }

    cstdlib_memcpy(a1, __s, v8);
    *(a1 + v8) = 0;
  }

  return v7;
}

uint64_t brokeraux_ComposeBrokerString(uint64_t a1, const char *a2, int a3, int a4, char *a5, const char *a6, char *a7, _BYTE *a8, size_t a9)
{
  v18 = 0;
  paramc_ParamGetStr(*(a1 + 40), "fecfg", &v18);
  return brokeraux_ComposeBrokerStringEx(a1, a2, a3, a4, a5, a6, a7, v18, a8, a9);
}

uint64_t brokeraux_ComposeBrokerStringEx(uint64_t a1, const char *a2, int a3, int a4, char *a5, const char *a6, char *a7, const char *a8, _BYTE *a9, size_t a10)
{
  v18 = a9;
  v28 = 0;
  v29 = 0;
  auxil_strlcpy(a9, "", a10);
  if ((paramc_ParamGetStr(*(a1 + 40), "datapackagename", &v28) & 0x80000000) != 0)
  {
    v28 = 0;
  }

  else if (v28 && *v28)
  {
    auxil_strlcat(a9, v28, a10);
    auxil_strlcat(a9, ":", a10);
  }

  if (!a4)
  {
    goto LABEL_22;
  }

  if ((paramc_ParamGetStr(*(a1 + 40), "fedatapackaging", &v29) & 0x80000000) != 0)
  {
    v29 = 0;
  }

  v31 = 0;
  v32 = a6;
  __s1 = 0;
  switch(a3)
  {
    case 0:
      goto LABEL_19;
    case 1:
      paramc_ParamGetStr(*(a1 + 40), "fecfg", &__s1);
      if (__s1 && !cstdlib_strcmp(__s1, "mpthreeml"))
      {
        goto LABEL_18;
      }

      v20 = a6;
      if (!a6)
      {
        paramc_ParamGetStr(*(a1 + 40), "voice", &v32);
        v20 = v32;
      }

      if (hlp_IsUniVoice(v20, a5))
      {
LABEL_18:
        v21 = "feextcfgdataprefix";
        goto LABEL_20;
      }

LABEL_19:
      v21 = "fedataprefix";
LABEL_20:
      paramc_ParamGetStr(*(a1 + 40), v21, &v31);
      v19 = v31;
      if (v31)
      {
        goto LABEL_21;
      }

      break;
    case 2:
      auxil_strlcat(a9, a6, a10);
      v19 = "/";
LABEL_21:
      auxil_strlcat(a9, v19, a10);
      break;
  }

LABEL_22:
  if (v29 && *v29)
  {
    if (cstdlib_strcmp(v29, "clc"))
    {
      v22 = v29;
    }

    else
    {
      auxil_strlcat(a9, "clc/", a10);
      auxil_strlcat(a9, a5, a10);
      if (a6)
      {
        IsUniVoice = hlp_IsUniVoice(a6, a5);
        if (a3 != 2 && !IsUniVoice)
        {
          auxil_strlcat(a9, "/", a10);
          auxil_strlcat(a9, a6, a10);
        }
      }

      auxil_strlcat(a9, "/", a10);
      auxil_strlcat(a9, a8, a10);
      if (!a7)
      {
        goto LABEL_27;
      }

      auxil_strlcat(a9, "/", a10);
      if (cstdlib_strstr(a7, "bet2"))
      {
        v22 = "bet2";
      }

      else if (cstdlib_strstr(a7, "bet3"))
      {
        v22 = "bet3";
      }

      else if (cstdlib_strstr(a7, "bet4"))
      {
        v22 = "bet4";
      }

      else
      {
        v22 = "bet1";
      }
    }

    auxil_strlcat(a9, v22, a10);
LABEL_27:
    if (v28 && *v28)
    {
      v23 = "/";
    }

    else
    {
      v23 = ":";
    }

    auxil_strlcat(a9, v23, a10);
  }

  v24 = auxil_strlcat(a9, a2, a10);
  if (v24 >= a10)
  {
    return 9;
  }

  for (i = v24; i; --i)
  {
    *v18 = ssft_tolower(*v18);
    ++v18;
  }

  return 0;
}

BOOL hlp_IsUniVoice(uint64_t a1, char *a2)
{
  result = 0;
  if (a1 && a2)
  {
    v5 = *a2;
    if (*a2)
    {
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v8 = cstdlib_tolower(v5);
        if (v8 != cstdlib_tolower(*(a1 + v6)))
        {
          break;
        }

        v6 = ++v7;
        v5 = a2[v7];
        if (!v5)
        {
          return cstdlib_strcmp((a1 + v6), "uni") == 0;
        }
      }

      if (a2[v6])
      {
        return 0;
      }
    }

    else
    {
      v6 = 0;
    }

    return cstdlib_strcmp((a1 + v6), "uni") == 0;
  }

  return result;
}

uint64_t xmlaux_calculateExtraEscapeBytes(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    v4 = 0;
    result = 0;
    do
    {
      if (!*(a1 + v4))
      {
        break;
      }

      v5 = &qword_26ECC8358;
      v6 = 7;
      v7 = 6;
      do
      {
        v8 = v7 - 1;
        if (*(a1 + v4) != *(v5 - 16))
        {
          v8 = 0;
        }

        result += v8;
        v9 = *v5;
        v5 += 3;
        v7 = v9;
        --v6;
      }

      while (v6);
      ++v4;
    }

    while (v4 != a2);
  }

  return result;
}

char *xmlaux_escape(char *result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v4 = 0;
  if (a2 && a3)
  {
    v4 = 0;
    for (i = 0; i != a3; ++i)
    {
      if (!*(a2 + i))
      {
        break;
      }

      v3[v4] = *(a2 + i);
      v8 = "&quot;";
      v9 = 7;
      v10 = 6;
      do
      {
        if (*(a2 + i) == *(v8 + 16))
        {
          result = cstdlib_strcpy(&v3[v4], v8);
          v4 = v4 + v10 - 1;
        }

        v10 = *(v8 + 4);
        v8 += 24;
        --v9;
      }

      while (v9);
      ++v4;
    }
  }

  v3[v4] = 0;
  return result;
}

uint64_t loc_unescape(_BYTE *a1, int a2)
{
  if (a1)
  {
    if (a2)
    {
      v3 = 5;
    }

    else
    {
      v3 = 0;
    }

    if (*a1)
    {
      v4 = 0;
      v5 = 0;
      do
      {
        v6 = v3;
        while (1)
        {
          v7 = &xmlESC[24 * v6];
          v8 = *(v7 + 1);
          if (!v8)
          {
            break;
          }

          if (!cstdlib_strncmp(&a1[v5], &xmlESC[24 * v6], *(v7 + 1)))
          {
            a1[v4] = v7[16];
            v5 = v5 + v8 - 1;
            goto LABEL_15;
          }

          if ((++v6 & 0x8000) != 0)
          {
            goto LABEL_15;
          }
        }

        if (v5 > v4)
        {
          a1[v4] = a1[v5];
        }

LABEL_15:
        ++v5;
        ++v4;
      }

      while (a1[v5]);
    }

    else
    {
      v4 = 0;
    }

    a1[v4] = 0;
  }

  return 0;
}

uint64_t synstrmaux_InitStreamOpener(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 0;
  *(result + 808) = a2;
  *(result + 816) = a3;
  return result;
}

_WORD *synstrmaux_RegisterStream(_WORD *result, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6)
{
  v6 = *result;
  if (v6 <= 0x13)
  {
    v7 = &result[20 * *result];
    *(v7 + 1) = a2;
    *(v7 + 4) = a3;
    *(v7 + 3) = a4;
    *(v7 + 8) = a5;
    *(v7 + 5) = a6;
    *a6 = 0;
    *(a6 + 8) = 0;
  }

  *result = v6 + 1;
  return result;
}

_WORD *synstrmaux_RegisterInStream(_WORD *result, uint64_t a2, int a3, uint64_t a4)
{
  v4 = *result;
  if (v4 <= 0x13)
  {
    v5 = &result[20 * *result];
    *(v5 + 1) = a2;
    *(v5 + 4) = 0;
    *(v5 + 3) = 0;
    *(v5 + 8) = a3;
    *(v5 + 5) = a4;
    *a4 = 0;
    *(a4 + 8) = 0;
  }

  *result = v4 + 1;
  return result;
}

_WORD *synstrmaux_RegisterOutStream(_WORD *result, uint64_t a2, uint64_t a3)
{
  v3 = *result;
  if (v3 <= 0x13)
  {
    v4 = &result[20 * *result];
    *(v4 + 1) = a2;
    *(v4 + 4) = 1;
    *(v4 + 3) = 0;
    *(v4 + 8) = 0;
    *(v4 + 5) = a3;
    *a3 = 0;
    *(a3 + 8) = 0;
  }

  *result = v3 + 1;
  return result;
}

uint64_t synstrmaux_OpenStreams(unsigned __int16 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*a1 <= 0x14u)
  {
    v4 = 0;
  }

  else
  {
    v4 = 9;
  }

  if (!*a1)
  {
    return v4;
  }

  v9 = 0;
  v10 = (a2 + 184);
  v11 = (a2 + 152);
  for (i = a1 + 12; ; i += 20)
  {
    if (*(i - 2))
    {
      v13 = cstdlib_strcmp("application/x-realspeak-markers-pp;version=4.0", *(i - 2));
      v14 = v11;
      if (!v13 || *(i - 2) && (v15 = cstdlib_strcmp("application/x-tnplus-words;version=1.0", *(i - 2)), v14 = v10, !v15))
      {
        *i = (*v14)();
      }
    }

    v4 = (*(a2 + 64))(a3, a4, *(*(a1 + 102) + 64), *(i - 2), *i, *(i - 2), *(i + 2));
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    v20 = *(a1 + 101);
    v21 = *(a1 + 102);
    if (!*(i + 2))
    {
      break;
    }

    v22 = "output";
    if (!*(i - 2))
    {
      v22 = "input";
    }

    log_OutText(v20, v21, 3, 0, "Cannot open %s stream of type %s", v17, v18, v19, v22);
    v4 = 0;
LABEL_16:
    if (++v9 >= *a1)
    {
      return v4;
    }
  }

  if (*(i - 2))
  {
    v23 = 65001;
  }

  else
  {
    v23 = 65000;
  }

  log_OutPublic(v20, v21, v23, "%s%s", v16, v17, v18, v19, "contentType");
  return v4;
}

uint64_t synstrmaux_CloseStreams(_WORD *a1, uint64_t a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  v7 = (a1 + 20);
  do
  {
    if (**v7)
    {
      v6 = CloseStream(a1, a2, (v7 - 4), v6);
      v2 = *a1;
    }

    ++v5;
    v7 += 5;
  }

  while (v5 < v2);
  return v6;
}

uint64_t CloseStream(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v10 = (*(a2 + 72))(**(a3 + 32), *(*(a3 + 32) + 8));
  v11 = *(a3 + 32);
  *v11 = 0;
  *(v11 + 8) = 0;
  if ((v10 & 0x80000000) != 0)
  {
    v12 = "output";
    if (!*(a3 + 8))
    {
      v12 = "input";
    }

    log_OutText(*(a1 + 808), *(a1 + 816), 3, 0, "Cannot close %s stream of type %s", v7, v8, v9, v12);
  }

  if (a4 >= 0)
  {
    return v10;
  }

  else
  {
    return a4;
  }
}

uint64_t synstrmaux_CloseOutStreamsOnly(_WORD *a1, uint64_t a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  v7 = (a1 + 20);
  do
  {
    if (**v7 && *(v7 - 6))
    {
      v6 = CloseStream(a1, a2, (v7 - 4), v6);
      v2 = *a1;
    }

    ++v5;
    v7 += 5;
  }

  while (v5 < v2);
  return v6;
}

size_t synstrmaux_BuildAudioContentType(const char *a1, unsigned int a2, char *a3, size_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  LH_utoa(a2, __s, 0xAu);
  v7 = cstdlib_strlen(a1);
  v8 = cstdlib_strlen(__s);
  cstdlib_strncpy(a3, a1, a4);
  if (a4 > v7)
  {
    cstdlib_strncpy(&a3[v7], __s, a4 - v7);
LABEL_4:
    a3[a4 - 1] = 0;
    return v8 + v7;
  }

  if (a4)
  {
    goto LABEL_4;
  }

  return v8 + v7;
}

uint64_t esc_seq_deinit(_WORD *a1, int a2, void *a3, int a4)
{
  esc_seq_remove_params(a1, a2);
  nuance_pcre_DeInit(a3, a4);

  return nuance_pcre_ObjClose(a3, a4);
}

uint64_t esc_seq_remove_params(_WORD *a1, int a2)
{
  v5 = 0;
  v4 = 0;
  v3 = 0;
  result = InitRsrcFunction(a1, a2, &v5);
  if ((result & 0x80000000) == 0)
  {
    if ((paramc_ParamGet(*(v5 + 40), "fullescseqdata", &v3, &v4) & 0x80000000) == 0)
    {
      if (*v3)
      {
        heap_Free(*(v5 + 8), *v3);
      }

      paramc_ParamRemove(*(v5 + 40), "fullescseqdata");
    }

    if ((paramc_ParamGet(*(v5 + 40), "fullesctnseqdata", &v3, &v4) & 0x80000000) == 0)
    {
      if (*v3)
      {
        heap_Free(*(v5 + 8), *v3);
      }

      paramc_ParamRemove(*(v5 + 40), "fullesctnseqdata");
    }

    result = paramc_ParamGet(*(v5 + 40), "fullescvoiceseqdata", &v3, &v4);
    if ((result & 0x80000000) == 0)
    {
      if (*v3)
      {
        heap_Free(*(v5 + 8), *v3);
      }

      return paramc_ParamRemove(*(v5 + 40), "fullescvoiceseqdata");
    }
  }

  return result;
}

uint64_t esc_seq_init(_WORD *a1, int a2, uint64_t *a3)
{
  v37 = 0;
  v36 = 0;
  inited = InitRsrcFunction(a1, a2, &v37);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  UInt = paramc_ParamGetUInt(*(v37 + 40), "ppmaxpcreframeblocks", &v36);
  v8 = v36;
  v9 = paramc_ParamGetUInt(*(v37 + 40), "ppnumframesinblock", &v36);
  v10 = v36;
  inited = nuance_pcre_ObjOpen(a1, a2, a3);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  if (v9 < 0)
  {
    v11 = 50;
  }

  else
  {
    v11 = v10;
  }

  if (UInt < 0)
  {
    v12 = 30;
  }

  else
  {
    v12 = v8;
  }

  v13 = nuance_pcre_Init(*a3, a3[1], v12, v11);
  if ((v13 & 0x80000000) != 0)
  {
    v18 = v13;
    nuance_pcre_ObjClose(*a3, a3[1]);
    *a3 = safeh_GetNullHandle();
    a3[1] = v20;
    return v18;
  }

  esc_seq_remove_params(a1, a2);
  v14 = *a3;
  v15 = a3[1];
  __s = 0;
  v44 = 0;
  v42 = 0;
  v41 = 0;
  inited = InitRsrcFunction(a1, a2, &v44);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  paramc_ParamGetStr(*(v44 + 40), "__NUAN_alternative_esc_seq__", &__s);
  v16 = off_279DA9C58;
  v17 = 6;
  while (cstdlib_strcmp(*(v16 - 1), "esc"))
  {
    v16 += 2;
    if (!--v17)
    {
      return 0;
    }
  }

  if (__s && *__s)
  {
    v21 = cstdlib_strlen(__s);
  }

  else
  {
    v21 = 0;
  }

  v18 = 3489669120;
  v22 = *(v44 + 8);
  v23 = *v16;
  v24 = cstdlib_strlen(*v16);
  v25 = heap_Calloc(v22, 1, v21 + v24 + 2);
  if (!v25)
  {
    return 3489669130;
  }

  v26 = v25;
  v27 = *(v44 + 8);
  v28 = cstdlib_strlen(v23);
  v29 = heap_Calloc(v27, 1, v21 + v28 + 6);
  if (v29)
  {
    v30 = v29;
    cstdlib_strcpy(v26, v23);
    if (v21)
    {
      v26[cstdlib_strlen(v23) - 1] = 0;
      cstdlib_strcat(v26, "|");
      cstdlib_strcat(v26, __s);
      cstdlib_strcat(v26, ")");
    }

    v31 = *(v44 + 8);
    v32 = cstdlib_strlen(v26);
    v33 = heap_Calloc(v31, 1, v32 + 107);
    v34 = v33;
    if (v33)
    {
      cstdlib_strcpy(v33, v26);
      cstdlib_strcat(v34, "(?:[\\t\\r\\n ])*[\\\\]([vV][oO][iI][cC][eE])(?:[\\t\\r\\n ])*[=](?:[\\t\\r\\n ])*(([\\w-():,{}])*)(?:[\\t\\r\\n ])*[\\\\]");
      cstdlib_strcpy(v30, v26);
      cstdlib_strcat(v30, "\\\\tn");
      v40 = nuance_pcre_compile(v14, v15, v26, 2048, &v42, &v41, 0);
      if (v40)
      {
        heap_Free(*(v44 + 8), v26);
        v35 = nuance_pcre_compile(v14, v15, v30, 2048, &v42, &v41, 0);
        v39 = v35;
        heap_Free(*(v44 + 8), v30);
        if (v35)
        {
          v38 = nuance_pcre_compile(v14, v15, v34, 2048, &v42, &v41, 0);
          if (v38)
          {
            heap_Free(*(v44 + 8), v34);
            paramc_ParamSetPermanent(*(v44 + 40), "fullescseqdata", &v40, 8uLL);
            paramc_ParamSetPermanent(*(v44 + 40), "fullesctnseqdata", &v39, 8uLL);
            paramc_ParamSetPermanent(*(v44 + 40), "fullescvoiceseqdata", &v38, 8uLL);
            return 0;
          }
        }

        goto LABEL_35;
      }
    }

    else
    {
      v18 = 3489669130;
    }

    heap_Free(*(v44 + 8), v26);
    heap_Free(*(v44 + 8), v30);
    if (v34)
    {
LABEL_35:
      heap_Free(*(v44 + 8), v34);
    }
  }

  else
  {
    heap_Free(*(v44 + 8), v26);
    return 3489669130;
  }

  return v18;
}

uint64_t esc_seq_exePattern(_WORD *a1, int a2, void *a3, int a4, uint64_t a5, char *a6, int a7, int a8, _WORD *a9, unsigned int a10, _DWORD *a11)
{
  v37 = *MEMORY[0x277D85DE8];
  v34 = 0;
  v33 = 0;
  v32 = 0;
  *a11 = 0;
  if ((InitRsrcFunction(a1, a2, &v34) & 0x80000000) != 0)
  {
    return 0;
  }

  v17 = paramc_ParamGet(*(v34 + 40), a5, &v32, &v33);
  if ((v17 & 0x80000000) != 0)
  {
    return 0;
  }

  v18 = v17;
  v19 = *v32;
  cstdlib_memset(&__b, -1, 0x190uLL);
  v20 = nuance_pcre_exec(a3, a4, v19, 0, a6, a7, a8, a10, &__b, 100);
  if ((v20 & 0x80000000) == 0)
  {
    if (v20)
    {
      *a11 = 1;
      v21 = v36;
      *a9 = __b;
      a9[1] = v21;
    }

    return v18;
  }

  v22 = nuance_pcre_ErrorToLhError(v20);
  v18 = v22;
  if (v22 >> 20 != 2213)
  {
    return v18;
  }

  if ((v22 & 0x1FFF) == 0x14)
  {
    return 0;
  }

  if ((v22 & 0x1FFF) == 0xA)
  {
    v27 = *(v34 + 32);
    v28 = 11002;
    v29 = 0;
  }

  else
  {
    v27 = *(v34 + 32);
    v31 = "lhError";
    v29 = "%s%x";
    v28 = 11027;
  }

  log_OutPublic(v27, &modAux, v28, v29, v23, v24, v25, v26, v31);
  return v18;
}

uint64_t esc_seq_tn_strncmp(_WORD *a1, int a2, void *a3, int a4, char *a5, int a6, _WORD *a7)
{
  __b = 0;
  cstdlib_memset(&__b, 0, 4uLL);
  if ((esc_seq_exePattern(a1, a2, a3, a4, "fullesctnseqdata", a5, a6, 0, &__b, 0x2000u, &__b + 1) & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (HIDWORD(__b) != 1 || __b != 0)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *a7 = WORD1(__b);
  return result;
}

char *esc_seq_tn_seq(_WORD *a1, int a2, void *a3, int a4, char *a5, int a6)
{
  __b = 0;
  cstdlib_memset(&__b, 0, 4uLL);
  v12 = esc_seq_exePattern(a1, a2, a3, a4, "fullesctnseqdata", a5, a6, 0, &__b, 0x2000u, &__b + 1);
  if (HIDWORD(__b) != 1 || v12 <= -1)
  {
    return 0;
  }

  else
  {
    return &a5[__b];
  }
}

char *esc_seq_strstr(_WORD *a1, int a2, void *a3, int a4, char *a5, _WORD *a6)
{
  __b = 0;
  cstdlib_memset(&__b, 0, 4uLL);
  v12 = cstdlib_strlen(a5);
  v13 = esc_seq_exePattern(a1, a2, a3, a4, "fullescseqdata", a5, v12, 0, &__b, 0x2000u, &__b + 1);
  result = 0;
  if ((v13 & 0x80000000) == 0 && HIDWORD(__b) == 1)
  {
    v15 = __b;
    *a6 = WORD1(__b) - __b;
    return &a5[v15];
  }

  return result;
}

uint64_t isEscSeq(_WORD *a1, int a2, void *a3, int a4, char *a5, int a6, int a7, _WORD *a8)
{
  __b = 0;
  cstdlib_memset(&__b, 0, 4uLL);
  v16 = esc_seq_exePattern(a1, a2, a3, a4, "fullescseqdata", a5, a6, a7, &__b, 0x2000u, &__b + 1);
  result = 0;
  if ((v16 & 0x80000000) == 0 && HIDWORD(__b) == 1)
  {
    if (__b == a7)
    {
      *a8 = WORD1(__b) - __b;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t hdrpars_ReadHeader(_WORD *a1, int a2, _BYTE *a3, const char *a4, void *a5, uint64_t *a6)
{
  v48 = 0;
  v10 = 2183159812;
  if (a3 && *a3)
  {
    v11 = 2183159815;
    if (!a5 || !a6)
    {
      return v11;
    }
  }

  else
  {
    v11 = 2183159815;
    if (!a4 || !a6 || !a5 || !*a4)
    {
      return v11;
    }
  }

  __b = 0u;
  *__s1 = 0u;
  v44 = 0;
  v45 = 0;
  v43 = 0;
  inited = InitRsrcFunction(a1, a2, &v48);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  *a5 = 0;
  *a6 = 0;
  cstdlib_memset(&__b, 0, 0x20uLL);
  if (a3 && *a3)
  {
    v13 = v48;
    *&v50 = 0;
    *&__b = *(v48 + 8);
    v14 = filespi_fopen(*(v48 + 64), __b, a3, "rb", &v50);
    if ((v14 & 0x80000000) != 0)
    {
      v10 = 2183159811;
    }

    else
    {
      v11 = v14;
      FileSize = filespi_GetFileSize(v50);
      if (FileSize)
      {
        v16 = FileSize;
        v17 = heap_Alloc(*(v13 + 8), (FileSize + 1));
        *(&__b + 1) = v17;
        if (v17)
        {
          v18 = filespi_fread(v17, 1, v16, v50);
          if (v18)
          {
            *(*(&__b + 1) + v18) = 0;
            filespi_fclose(v50);
LABEL_21:
            __s1[0] = *(&__b + 1);
            v22 = 0;
            while (1)
            {
              if (v22 && !*__s1[0])
              {
                goto LABEL_93;
              }

              cstdlib_memset(&v43, 0, 0x18uLL);
              if (cstdlib_strncmp(__s1[0], "<?xml", 5uLL))
              {
                goto LABEL_45;
              }

              v23 = *(__s1[0] + 5);
              v24 = v23 > 0x20;
              v25 = (1 << v23) & 0x100002600;
              if (v24 || v25 == 0)
              {
                goto LABEL_45;
              }

              for (i = __s1[0] + 6; ; ++i)
              {
                __s1[0] = i;
                v28 = *i;
                v24 = v28 > 0x20;
                v29 = (1 << v28) & 0x100002600;
                if (v24 || v29 == 0)
                {
                  break;
                }
              }

              if (!cstdlib_strncmp(i, "version=1.0?>", 0xFuLL) || !cstdlib_strncmp(__s1[0], "version='1.0'?>", 0xFuLL))
              {
                __s1[0] += 15;
                goto LABEL_45;
              }

              v50 = 0uLL;
              v51 = 0;
              v49 = 0;
              cstdlib_memset(&v50, 0, 0x18uLL);
              v31 = hdrpars_ParseAttributes(&__b, &v50);
              if (v31)
              {
                goto LABEL_38;
              }

              v38 = cstdlib_strncmp(__s1[0], "?>", 2uLL);
              v32 = *(&v50 + 1);
              if (!v38)
              {
                if (*(&v50 + 1))
                {
                  break;
                }
              }

              v11 = 2183159812;
LABEL_40:
              if (v32)
              {
                ssftmap_ObjClose(v32);
              }

              if ((v11 & 0x80000000) != 0)
              {
                goto LABEL_53;
              }

LABEL_45:
              LODWORD(__s1[1]) = 0;
              v11 = hdrpars_ParseElement(&__b, &v43);
              if (!v11)
              {
                v11 = 2183159812;
                if (v45)
                {
                  if (ssftmap_GetSize(v45) && !v44 && !v43)
                  {
                    for (j = __s1[0]; ; __s1[0] = j)
                    {
                      v34 = *j++;
                      v24 = v34 > 0x20;
                      v35 = (1 << v34) & 0x100002600;
                      if (v24 || v35 == 0)
                      {
                        break;
                      }
                    }

                    v11 = 0;
                  }
                }
              }

              if (v44)
              {
                ssftmap_ObjClose(v44);
                v44 = 0;
              }

              if (a3 && !v11)
              {
                if (!*a3)
                {
                  goto LABEL_57;
                }

                v50 = 0uLL;
                v51 = 0;
                cstdlib_memset(&v50, 0, 0x18uLL);
                *&v50 = a3;
                v11 = ssftmap_Insert(v45, "HDRFILE", &v50);
              }

              if (v11)
              {
LABEL_53:
                if (v45)
                {
                  ssftmap_ObjClose(v45);
                  v45 = 0;
                }

                if ((v11 & 0x80000000) != 0)
                {
                  goto LABEL_93;
                }
              }

              else
              {
LABEL_57:
                if (v22 == 1)
                {
                  v37 = *(v48 + 8);
                  v50 = *"\b";
                  v51 = 0;
                  v11 = 2183159818;
                  if (!vector_ObjOpen(v37, &v50, 8, a6) || !vector_Add(*a6, a5))
                  {
                    goto LABEL_53;
                  }

                  *a5 = 0;
                }

                else if (!v22)
                {
                  *a5 = v45;
                  goto LABEL_74;
                }

                if (!vector_Add(*a6, &v45))
                {
                  v11 = 2183159818;
                  goto LABEL_53;
                }

LABEL_74:
                v11 = 0;
                ++v22;
              }
            }

            v11 = 2183159812;
            if ((ssftmap_Find(*(&v50 + 1), "version", &v49) & 0x80000000) == 0 && !cstdlib_strcmp(v49, "1.0"))
            {
LABEL_38:
              __s1[0] += 2;
              v11 = v31;
            }

            v32 = *(&v50 + 1);
            goto LABEL_40;
          }
        }

        else
        {
          v10 = 2183159818;
        }
      }

      filespi_fclose(v50);
      if (*(&__b + 1))
      {
        heap_Free(*(v13 + 8), *(&__b + 1));
        *(&__b + 1) = 0;
        __s1[0] = 0;
      }
    }

    v11 = v10;
  }

  else
  {
    v19 = v48;
    *&__b = *(v48 + 8);
    v20 = cstdlib_strlen(a4);
    if (v20)
    {
      v21 = heap_Alloc(*(v19 + 8), (v20 + 1));
      *(&__b + 1) = v21;
      if (v21)
      {
        cstdlib_strcpy(v21, a4);
        v11 = 0;
        goto LABEL_21;
      }

      v11 = 2183159818;
    }

    else
    {
      if (*(&__b + 1))
      {
        heap_Free(*(v19 + 8), *(&__b + 1));
        *(&__b + 1) = 0;
        __s1[0] = 0;
      }

      v11 = 2183159812;
    }
  }

LABEL_93:
  if (*(&__b + 1))
  {
    heap_Free(*(v48 + 8), *(&__b + 1));
    *(&__b + 1) = 0;
    __s1[0] = 0;
  }

  if ((v11 & 0x80000000) != 0)
  {
    v39 = *a6;
    if (*a6)
    {
      *&v50 = 0;
      if (vector_GetElemAt(v39, 0, &v50))
      {
        v40 = 1;
        do
        {
          ssftmap_ObjClose(*v50);
        }

        while (vector_GetElemAt(*a6, v40++, &v50));
      }

      vector_ObjClose(*a6);
      *a6 = 0;
    }

    if (*a5)
    {
      ssftmap_ObjClose(*a5);
      *a5 = 0;
    }
  }

  return v11;
}

uint64_t hdrpars_ParseElement(uint64_t a1, uint64_t a2)
{
  __b = 0;
  v52 = 0;
  v53 = 0;
  v4 = *(a1 + 24);
  cstdlib_memset(&__b, 0, 0x18uLL);
  for (i = (*(a1 + 16) + 1); ; ++i)
  {
    v6 = *(i - 1);
    if (v6 > 0x20 || ((1 << v6) & 0x100002600) == 0)
    {
      break;
    }

    *(a1 + 16) = i;
  }

  v9 = *i;
  v8 = i - 1;
  if (v9 == 33)
  {
    hdrpars_SkipComments(a1);
    v8 = *(a1 + 16);
    v6 = *v8;
  }

  if (v6 != 60)
  {
    goto LABEL_47;
  }

  v10 = (v8 + 1);
  for (j = v8 + 1; ; ++j)
  {
    *(a1 + 16) = j;
    v12 = *j;
    if ((v12 - 48) < 0xA || (v12 & 0xFFFFFFDF) - 65 < 0x1A)
    {
      continue;
    }

    if (*j <= 0x2Cu)
    {
      v15 = (v12 - 9) < 2 || v12 == 13;
      if (!v15 && v12 != 32)
      {
        goto LABEL_47;
      }

      *j = 0;
      ++*(a1 + 16);
      v16 = hdrpars_ParseAttributes(a1, &__b);
      if (v16)
      {
        goto LABEL_48;
      }

      v17 = *(a1 + 16);
      v18 = *v17;
      if (v18 != 47)
      {
        if (v18 == 62)
        {
          v19 = 0;
          goto LABEL_32;
        }

        goto LABEL_47;
      }

      if (v17[1] != 62)
      {
        goto LABEL_47;
      }

LABEL_36:
      v20 = v17 + 2;
      v19 = 1;
      goto LABEL_37;
    }

    v14 = (v12 - 45);
    if (v14 > 0x32)
    {
      goto LABEL_47;
    }

    if (((1 << v14) & 0x4000000002003) == 0)
    {
      break;
    }
  }

  if (v14 == 2)
  {
    if (j[1] != 62)
    {
      goto LABEL_47;
    }

    *j = 0;
    v17 = *(a1 + 16);
    goto LABEL_36;
  }

  if (v14 != 17)
  {
    goto LABEL_47;
  }

  v19 = 0;
  *j = 0;
  v17 = *(a1 + 16);
LABEL_32:
  v20 = v17 + 1;
LABEL_37:
  *(a1 + 16) = v20;
  v21 = *(a1 + 24);
  switch(v21)
  {
    case 2:
      if (cstdlib_strcmp(v10, "HEADER"))
      {
        goto LABEL_47;
      }

      v16 = 0;
      v22 = 3;
LABEL_56:
      *(a1 + 24) = v22;
      break;
    case 1:
      if (cstdlib_strcmp(v10, "VERSION"))
      {
        v16 = 2183159812;
      }

      else
      {
        v16 = 0;
      }

      break;
    case 0:
      if (!cstdlib_strcmp(v10, "SCANSOFT") || !cstdlib_strcmp(v10, "NUANCE"))
      {
        v16 = 0;
        v22 = 1;
        goto LABEL_56;
      }

LABEL_47:
      v16 = 2183159812;
LABEL_48:
      *(a1 + 24) = v4;
      goto LABEL_49;
    default:
      v16 = 0;
      break;
  }

  if (v16)
  {
    v24 = 1;
  }

  else
  {
    v24 = v19;
  }

  if ((v24 & 1) == 0)
  {
    for (k = (*(a1 + 16) + 1); ; ++k)
    {
      v26 = *(k - 1);
      v27 = v26 > 0x20;
      v28 = (1 << v26) & 0x100002600;
      if (v27 || v28 == 0)
      {
        break;
      }

      *(a1 + 16) = k;
    }

    v31 = *k;
    v30 = (k - 1);
    if (v31 == 33)
    {
      hdrpars_SkipComments(a1);
      v30 = *(a1 + 16);
    }

    v16 = 0;
    v19 = 0;
    __b = v30;
  }

  if ((v19 & 1) == 0 && !v16)
  {
    v32 = 0;
    while (1)
    {
      v33 = *(a1 + 16);
      if (!*v33)
      {
        goto LABEL_80;
      }

      if (*v33 == 60)
      {
        break;
      }

      if (v53)
      {
        goto LABEL_80;
      }

      v16 = 0;
      v34 = v33 + 1;
      *(a1 + 16) = v33 + 1;
      v32 = v33;
LABEL_81:
      for (m = v34 + 1; ; ++m)
      {
        v36 = *(m - 1);
        v27 = v36 > 0x20;
        v37 = (1 << v36) & 0x100002600;
        if (v27 || v37 == 0)
        {
          break;
        }

        *(a1 + 16) = m;
      }

      if (*m == 33)
      {
        hdrpars_SkipComments(a1);
      }

      if (v16)
      {
        goto LABEL_48;
      }
    }

    if (v33[1] == 47)
    {
      if (__b)
      {
        if (v32)
        {
          v33 = v32 + 1;
        }

        *v33 = 0;
      }

      v39 = cstdlib_strlen(v10);
      v40 = (*(a1 + 16) + 2);
      *(a1 + 16) = v40;
      v41 = v39;
      if (!cstdlib_strncmp(v40, v10, v39))
      {
        for (n = (*(a1 + 16) + v41); ; ++n)
        {
          *(a1 + 16) = n;
          v43 = *n;
          if (v43 > 0x3E)
          {
            break;
          }

          if (((1 << v43) & 0x100002600) == 0)
          {
            if (v43 != 62)
            {
              break;
            }

            *(a1 + 16) = n + 1;
            if (__b)
            {
              v16 = hdrpars_Unescape(__b);
              goto LABEL_109;
            }

            goto LABEL_95;
          }
        }
      }

      *(a1 + 24) = v4;
LABEL_122:
      v16 = 2183159812;
      goto LABEL_49;
    }

    if (!__b || v33 == __b)
    {
      __b = 0;
      v16 = hdrpars_ParseElement(a1, &__b);
      v34 = *(a1 + 16);
      goto LABEL_81;
    }

LABEL_80:
    v34 = *(a1 + 16);
    v16 = 2183159812;
    goto LABEL_81;
  }

  if (v16 || !__b)
  {
LABEL_109:
    *(a1 + 24) = v4;
    if (v16)
    {
      goto LABEL_49;
    }
  }

  else
  {
    **(a1 + 16) = 0;
LABEL_95:
    *(a1 + 24) = v4;
  }

  if (v4 == 2)
  {
LABEL_113:
    if (v52)
    {
      goto LABEL_122;
    }

    v16 = 2183159812;
    if (!v53)
    {
      goto LABEL_49;
    }

    v16 = 0;
    *(a2 + 16) = v53;
    goto LABEL_126;
  }

  if (v4 != 1)
  {
    if (!v4)
    {
      goto LABEL_113;
    }

    v46 = *(a2 + 16);
    v45 = (a2 + 16);
    v44 = v46;
    if (!v46)
    {
      v47 = *a1;
      v49[0] = HDRPARS_TAG_MAP_IELEM;
      v49[1] = *&off_287EE9750;
      v50 = off_287EE9760;
      v48 = ssftmap_ObjOpen(v47, 1, v49, v45);
      if (v48)
      {
        v16 = v48;
        goto LABEL_49;
      }

      v44 = *v45;
    }

    v16 = ssftmap_Insert(v44, v10, &__b);
    if (v16)
    {
      goto LABEL_49;
    }

    __b = 0;
    v52 = 0;
LABEL_126:
    v53 = 0;
    goto LABEL_49;
  }

  if (v52 || v53 || !__b)
  {
    goto LABEL_122;
  }

  if (!cstdlib_strcmp(__b, "SSFT_1.0") || (v16 = 2183159812, !cstdlib_strcmp(__b, "NUAN_1.0")))
  {
    v16 = 0;
    *(a1 + 24) = 2;
  }

LABEL_49:
  if (v52)
  {
    ssftmap_ObjClose(v52);
    v52 = 0;
  }

  if (v53)
  {
    ssftmap_ObjClose(v53);
  }

  return v16;
}

uint64_t hdrpars_FreeHeader(uint64_t a1)
{
  if (a1)
  {
    ssftmap_ObjClose(a1);
  }

  return 0;
}

uint64_t hdrpars_CreateSurrogateTagMap(void *a1, unint64_t a2, uint64_t a3, uint64_t *a4)
{
  v11 = HDRPARS_TAG_MAP_IELEM;
  v12 = *&off_287EE9750;
  v13 = off_287EE9760;
  v7 = ssftmap_ObjOpen(a1, 1, &v11, a4);
  *&v12 = 0;
  v11 = a2;
  if ((v7 & 0x80000000) != 0)
  {
    v9 = v7;
    *&v11 = a3;
LABEL_7:
    ssftmap_ObjClose(*a4);
    return v9;
  }

  v8 = ssftmap_Insert(*a4, "BROKERSTRING", &v11);
  *&v11 = a3;
  if ((v8 & 0x80000000) != 0)
  {
    v9 = v8;
    goto LABEL_7;
  }

  v9 = ssftmap_Insert(*a4, "FULLPATHCOMPONENT", &v11);
  if ((v9 & 0x80000000) != 0)
  {
    goto LABEL_7;
  }

  return v9;
}

uint64_t hdrpars_ParseAttributes(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 16) + 1; ; ++i)
  {
    v5 = *(i - 1);
    v6 = v5 > 0x20;
    v7 = (1 << v5) & 0x100002600;
    if (v6 || v7 == 0)
    {
      break;
    }

    *(a1 + 16) = i;
  }

LABEL_7:
  v9 = *(a1 + 16);
  v10 = *v9;
  if (v10 <= 0x3F && ((1 << v10) & 0xC000800000000000) != 0)
  {
    return 0;
  }

  if ((v10 & 0xFFFFFFDF) - 65 >= 0x1A && v10 != 95 && v10 != 58)
  {
    return 2183159812;
  }

  for (j = v9 + 1; ; ++j)
  {
    *(a1 + 16) = j;
    v13 = *j;
    if (v13 - 48 < 0xA || (v13 & 0xFFFFFFDF) - 65 < 0x1A)
    {
      continue;
    }

    if (v13 <= 0x3A)
    {
      if (((1 << v13) & 0x400600000000000) != 0)
      {
        continue;
      }

      if (((1 << v13) & 0x100002600) != 0)
      {
        break;
      }
    }

    if (v13 != 95)
    {
      goto LABEL_32;
    }
  }

  *j = 0;
  j = *(a1 + 16);
  do
  {
    *(a1 + 16) = ++j;
    v13 = *j;
  }

  while (v13 <= 0x20 && ((1 << v13) & 0x100002600) != 0);
LABEL_32:
  if (v13 == 61)
  {
    *j = 0;
    for (k = (*(a1 + 16) + 1); ; ++k)
    {
      *(a1 + 16) = k;
      v17 = *k;
      if (v17 > 0x27)
      {
        break;
      }

      if (((1 << v17) & 0x100002600) == 0)
      {
        if (((1 << v17) & 0x8400000000) == 0)
        {
          return 2183159812;
        }

        v18 = (k + 1);
        v19 = k + 1;
        do
        {
          *(a1 + 16) = v19;
          v21 = *v19++;
          v20 = v21;
        }

        while (v21 != 60 && v20 != v17);
        if (v20 != v17)
        {
          return 2183159812;
        }

        *(v19 - 1) = 0;
        ++*(a1 + 16);
        result = hdrpars_Unescape(v18);
        if (a2 && !result)
        {
          v23 = *(a2 + 8);
          if (!v23)
          {
            v24 = *a1;
            v30[0] = HDRPARS_ATTR_MAP_IELEM;
            v30[1] = *&off_287EE9728;
            v31 = off_287EE9738;
            result = ssftmap_ObjOpen(v24, 0, v30, (a2 + 8));
            if (result)
            {
              return result;
            }

            v23 = *(a2 + 8);
          }

          result = ssftmap_Insert(v23, v9, v18);
        }

        if (!result)
        {
          for (m = *(a1 + 16); ; *(a1 + 16) = m)
          {
            v26 = *m++;
            v6 = v26 > 0x20;
            v27 = (1 << v26) & 0x100002600;
            if (v6 || v27 == 0)
            {
              break;
            }
          }

          goto LABEL_7;
        }

        return result;
      }
    }
  }

  return 2183159812;
}

char *hdrpars_Unescape(char *a1)
{
  result = cstdlib_strchr(a1, 38);
  if (result)
  {
    v2 = result;
    for (i = result; ; ++i)
    {
      v4 = *v2;
      if (v4 == 38)
      {
        if (!cstdlib_strncmp(v2, "&amp;", 5uLL))
        {
          LOBYTE(v4) = 38;
          v5 = 5;
          goto LABEL_18;
        }

        if (!cstdlib_strncmp(v2, "&lt;", 4uLL))
        {
          LOBYTE(v4) = 60;
LABEL_15:
          v5 = 4;
          goto LABEL_18;
        }

        if (!cstdlib_strncmp(v2, "&gt;", 4uLL))
        {
          LOBYTE(v4) = 62;
          goto LABEL_15;
        }

        if (cstdlib_strncmp(v2, "&apos;", 6uLL))
        {
          if (cstdlib_strncmp(v2, "&quot;", 6uLL))
          {
            return 2183159812;
          }

          LOBYTE(v4) = 34;
        }

        else
        {
          LOBYTE(v4) = 39;
        }

        v5 = 6;
      }

      else
      {
        if (!*v2)
        {
          result = 0;
          *i = 0;
          return result;
        }

        v5 = 1;
      }

LABEL_18:
      *i = v4;
      v2 += v5;
    }
  }

  return result;
}

char *hdrpars_SkipComments(uint64_t a1)
{
  for (i = *(a1 + 16); ; *(a1 + 16) = i)
  {
    v3 = *i;
    v4 = v3 > 0x20;
    v5 = (1 << v3) & 0x100002600;
    v6 = v4 || v5 == 0;
    if (v6)
    {
      break;
    }

    ++i;
  }

  while (1)
  {
    v7 = cstdlib_strncmp(i, "<!--", 4uLL);
    result = *(a1 + 16);
    if (!v7)
    {
      break;
    }

LABEL_8:
    v6 = result == i;
    i = result;
    if (v6)
    {
      return result;
    }
  }

  result = cstdlib_strstr(result, "-->");
  if (result && *(result - 1) != 45)
  {
    for (result += 3; ; ++result)
    {
      *(a1 + 16) = result;
      v9 = *result;
      v4 = v9 > 0x20;
      v10 = (1 << v9) & 0x100002600;
      if (v4 || v10 == 0)
      {
        break;
      }
    }

    goto LABEL_8;
  }

  return result;
}

uint64_t hdrpars_ElemCopyTag(const char **a1, uint64_t a2, void *a3)
{
  v6 = *a1;
  if (v6)
  {
    v7 = cstdlib_strlen(v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = heap_Alloc(a2, v7 + 25);
  if (!v8)
  {
    return 2183159818;
  }

  v9 = v8;
  cstdlib_memcpy(v8, a1, 0x18uLL);
  v10 = (v9 + 3);
  *v9 = v9 + 3;
  if (v7)
  {
    cstdlib_strcpy(v10, *a1);
  }

  else
  {
    *v10 = 0;
  }

  result = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a3 = v9;
  return result;
}

void *hdrpars_ElemFreeTag(void *result, void *a2)
{
  if (result)
  {
    v3 = result;
    v4 = result[1];
    if (v4)
    {
      ssftmap_ObjClose(v4);
    }

    v5 = *(v3 + 16);
    if (v5)
    {
      ssftmap_ObjClose(v5);
    }

    return heap_Free(a2, v3);
  }

  return result;
}

void *dict_free_nodes(void **a1)
{
  result = free_nodes(a1, *a1, a1);
  *(a1 + 12) = 0;
  *a1 = a1;
  a1[1] = a1;
  return result;
}

void *free_nodes(void *result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v5 = result;
    free_nodes(result, *a2);
    free_nodes(v5, a2[1]);
    v6 = a2[4];
    if (v6)
    {
      (*(v5[8] + 8))(v6, v5[7]);
    }

    v7 = a2[5];
    if (v7)
    {
      (*(v5[8] + 32))(v7, v5[7]);
    }

    v8 = v5[7];

    return heap_Free(v8, a2);
  }

  return result;
}

uint64_t dict_init(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  *(result + 56) = a4;
  *(result + 64) = a3;
  *(result + 48) = 0;
  *(result + 52) = a2;
  *result = result;
  *(result + 8) = result;
  *(result + 16) = result;
  *(result + 24) = 1;
  *(result + 72) = 0;
  return result;
}

void *dict_lookup(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1 == a1)
  {
    return 0;
  }

  while (1)
  {
    v5 = (*(*(a1 + 64) + 16))(a2, v2[4]);
    if ((v5 & 0x80000000) == 0)
    {
      break;
    }

LABEL_5:
    v2 = *v2;
    if (v2 == a1)
    {
      return 0;
    }
  }

  if (v5)
  {
    ++v2;
    goto LABEL_5;
  }

  if (*(a1 + 72))
  {
    while (*v2 != a1)
    {
      v7 = v2;
      v2 = *v2;
      while ((*(*(a1 + 64) + 16))(a2, v2[4]))
      {
        v2 = v2[1];
        if (v2 == a1)
        {
          return v7;
        }
      }
    }
  }

  return v2;
}

void *dict_lower_bound(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1 == a1)
  {
    return 0;
  }

  v5 = 0;
  do
  {
    v6 = (*(*(a1 + 64) + 16))(a2, v2[4]);
    if (v6 < 1)
    {
      if (v6 < 0)
      {
        v5 = v2;
      }

      else
      {
        v5 = v2;
        if (!*(a1 + 72))
        {
          return v5;
        }
      }
    }

    else
    {
      ++v2;
    }

    v2 = *v2;
  }

  while (v2 != a1);
  return v5;
}

uint64_t dict_insert(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a1;
  if (*a1 == a1)
  {
    v10 = 0;
    v7 = a1;
  }

  else
  {
    do
    {
      v7 = v6;
      v8 = (*(a1[8] + 16))(a3, v6[4]);
      if (*(a1 + 72))
      {
        v9 = 0;
      }

      else
      {
        v9 = v8 == 0;
      }

      if (v9)
      {
        return 2298486786;
      }

      v6 = v7[v8 >= 0];
    }

    while (v6 != a1);
    v10 = v8 >= 0;
  }

  result = (*a1[8])(a3, a1[7], a2 + 4);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v7[v10] = a2;
  a2[1] = a1;
  a2[2] = v7;
  *a2 = a1;
  ++*(a1 + 12);
  *(a2 + 6) = 0;
  v12 = v7 + 3;
  if (*(v7 + 6))
  {
    goto LABEL_26;
  }

  while (1)
  {
    v13 = v7[2];
    v14 = *v13;
    if (v7 == *v13)
    {
      break;
    }

    v16 = *(v14 + 6);
    v15 = v14 + 3;
    if (v16)
    {
      v20 = *v7;
      if (a2 == *v7)
      {
        v22 = *(v20 + 8);
        *v7 = v22;
        *(v22 + 16) = v7;
        v23 = v7[2];
        *(v20 + 16) = v23;
        *(v23 + 8 * (*(v23 + 8) == v7)) = v20;
        *(v20 + 8) = v7;
        v7[2] = v20;
      }

      else
      {
        a2 = v7;
      }

      *(a2 + 6) = 1;
      *(v13 + 6) = 0;
      v24 = v13[1];
      v25 = *v24;
      v13[1] = *v24;
      *(v25 + 16) = v13;
      v26 = v13[2];
      v24[2] = v26;
      v26[*v26 != v13] = v24;
      *v24 = v13;
      v13[2] = v24;
      goto LABEL_26;
    }

    v17 = v15;
LABEL_15:
    *v12 = 1;
    *v17 = 1;
    *(v13 + 6) = 0;
    v7 = v13[2];
    v12 = v7 + 3;
    a2 = v13;
    if (*(v7 + 6))
    {
      goto LABEL_26;
    }
  }

  v18 = v13[1];
  v19 = *(v18 + 6);
  v17 = v18 + 3;
  if (!v19)
  {
    goto LABEL_15;
  }

  v21 = v7[1];
  if (a2 == v21)
  {
    v27 = *v21;
    v7[1] = *v21;
    *(v27 + 16) = v7;
    v28 = v7[2];
    v21[2] = v28;
    v28[*v28 != v7] = v21;
    *v21 = v7;
    v7[2] = v21;
    v14 = *v13;
  }

  else
  {
    a2 = v7;
  }

  *(a2 + 6) = 1;
  *(v13 + 6) = 0;
  v29 = v14[1];
  *v13 = v29;
  v29[2] = v13;
  v30 = v13[2];
  v14[2] = v30;
  v30[v30[1] == v13] = v14;
  v14[1] = v13;
  v13[2] = v14;
LABEL_26:
  *(*a1 + 24) = 1;
  return result;
}

uint64_t dict_delete(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v2 = *(a2 + 16);
  v4 = *a2;
  if (*a2 == a1)
  {
    v8 = *(a2 + 8);
    goto LABEL_9;
  }

  if (v3 == a1)
  {
    v8 = *a2;
LABEL_9:
    v8[2] = v2;
    if (*v2 == a2)
    {
      *v2 = v8;
    }

    else
    {
      v2[1] = v8;
    }

    goto LABEL_16;
  }

  v5 = *(a2 + 8);
  do
  {
    v6 = v5;
    v5 = *v5;
  }

  while (v5 != a1);
  v7 = *(v6 + 6);
  v8 = v6[1];
  v9 = v6[2];
  v8[2] = v9;
  if (*v9 == v6)
  {
    *v9 = v8;
    v4 = *a2;
  }

  else
  {
    v9[1] = v8;
    v3 = *(a2 + 8);
  }

  v6[1] = v3;
  v6[2] = v2;
  *v6 = v4;
  v4[2] = v6;
  *(v3 + 16) = v6;
  *(v6 + 6) = *(a2 + 24);
  *(a2 + 24) = v7;
  if (*v2 == a2)
  {
    *v2 = v6;
  }

  else
  {
    v2[1] = v6;
  }

LABEL_16:
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  --*(a1 + 12);
  if (*(a2 + 24) != 1)
  {
    return a2;
  }

  *(*a1 + 24) = 0;
  if (*(v8 + 6) != 1)
  {
    v10 = v8;
LABEL_31:
    v22 = v10 + 3;
    goto LABEL_39;
  }

  while (1)
  {
    v10 = v8[2];
    v11 = *v10;
    if (v8 != *v10)
    {
      if (!*(v11 + 6))
      {
        *(v11 + 6) = 1;
        *(v10 + 6) = 0;
        v12 = v11[1];
        *v10 = v12;
        v12[2] = v10;
        v13 = v10[2];
        v11[2] = v13;
        v13[v13[1] == v10] = v11;
        v11[1] = v10;
        v10[2] = v11;
        v11 = *v10;
      }

      v15 = *v11;
      v14 = v11[1];
      v16 = *(*v11 + 24);
      if (*(v14 + 6) != 1)
      {
        if (v16 == 1)
        {
          *(v14 + 6) = 1;
          v23 = *v14;
          v11[1] = *v14;
          v23[2] = v11;
          v24 = v11[2];
          v14[2] = v24;
          v24[*v24 != v11] = v14;
          *(v11 + 6) = 0;
          *v14 = v11;
          v11[2] = v14;
          v11 = *v10;
          v15 = **v10;
          v14 = (*v10)[1];
        }

LABEL_34:
        v22 = v8 + 3;
        *(v11 + 6) = *(v10 + 6);
        *(v15 + 24) = 1;
        *(v10 + 6) = 1;
        *v10 = v14;
        v14[2] = v10;
        v25 = v10[2];
        v11[2] = v25;
        v25[v25[1] == v10] = v11;
        v11[1] = v10;
        goto LABEL_38;
      }

      if (v16 != 1)
      {
        goto LABEL_34;
      }

      goto LABEL_28;
    }

    v11 = v10[1];
    if (!*(v11 + 6))
    {
      *(v11 + 6) = 1;
      *(v10 + 6) = 0;
      v17 = *v11;
      v10[1] = *v11;
      *(v17 + 16) = v10;
      v18 = v10[2];
      v11[2] = v18;
      v18[*v18 != v10] = v11;
      *v11 = v10;
      v10[2] = v11;
      v11 = v10[1];
    }

    v19 = *v11;
    v20 = v11[1];
    v21 = *(v20 + 24);
    if (*(*v11 + 24) != 1)
    {
      break;
    }

    if (v21 != 1)
    {
      goto LABEL_37;
    }

LABEL_28:
    *(v11 + 6) = 0;
    v8 = v10;
    if (*(v10 + 6) != 1)
    {
      goto LABEL_31;
    }
  }

  if (v21 == 1)
  {
    *(v19 + 24) = 1;
    v26 = *(v19 + 8);
    *v11 = v26;
    *(v26 + 16) = v11;
    v27 = v11[2];
    *(v19 + 16) = v27;
    *(v27 + 8 * (*(v27 + 8) == v11)) = v19;
    *(v11 + 6) = 0;
    *(v19 + 8) = v11;
    v11[2] = v19;
    v11 = v10[1];
    v19 = *v11;
    v20 = v11[1];
  }

LABEL_37:
  v22 = v8 + 3;
  *(v11 + 6) = *(v10 + 6);
  *(v20 + 24) = 1;
  *(v10 + 6) = 1;
  v10[1] = v19;
  *(v19 + 16) = v10;
  v28 = v10[2];
  v11[2] = v28;
  v28[*v28 != v10] = v11;
  *v11 = v10;
LABEL_38:
  v10[2] = v11;
LABEL_39:
  *v22 = 1;
  *(*a1 + 24) = 1;
  return a2;
}

void *dict_next(void *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == a1)
  {
    while (1)
    {
      v3 = *(a2 + 16);
      if (v3 == a1)
      {
        break;
      }

      v4 = a2 == v3[1];
      a2 = *(a2 + 16);
      if (!v4)
      {
        return v3;
      }
    }

    return 0;
  }

  else
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2 != a1);
  }

  return v3;
}

uint64_t dict_alloc_insert(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = heap_Alloc(a1[7], 48);
  v13 = 0;
  if (!v6)
  {
    return 2298486794;
  }

  v7 = v6;
  if (a3)
  {
    v8 = (*(a1[8] + 24))(a3, a1[7], &v13);
    if ((v8 & 0x80000000) != 0)
    {
      v11 = v8;
      goto LABEL_13;
    }

    v9 = v13;
  }

  else
  {
    v9 = 0;
  }

  *(v7 + 32) = 0;
  *(v7 + 40) = v9;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  *v7 = 0;
  *(v7 + 24) = 0;
  v11 = dict_insert(a1, v7, a2);
  result = 0;
  if ((v11 & 0x80000000) == 0)
  {
    return result;
  }

  v12 = *(v7 + 32);
  if (v12)
  {
    (*(a1[8] + 8))(v12, a1[7]);
  }

  if (*(v7 + 40))
  {
    (*(a1[8] + 32))(v13, a1[7]);
  }

LABEL_13:
  heap_Free(a1[7], v7);
  return v11;
}

uint64_t dnode_init(uint64_t result, uint64_t a2)
{
  *(result + 32) = 0;
  *(result + 40) = a2;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 24) = 0;
  return result;
}

void *dict_delete_free(uint64_t *a1, uint64_t a2)
{
  dict_delete(a1, a2);
  v4 = *(a2 + 32);
  if (v4)
  {
    (*(a1[8] + 8))(v4, a1[7]);
  }

  v5 = *(a2 + 40);
  if (v5)
  {
    (*(a1[8] + 32))(v5, a1[7]);
  }

  v6 = a1[7];

  return heap_Free(v6, a2);
}

void **dict_first(void **a1)
{
  v1 = *a1;
  if (*a1 == a1)
  {
    v2 = *a1;
  }

  else
  {
    do
    {
      v2 = v1;
      v1 = *v1;
    }

    while (v1 != a1);
  }

  if (v2 == a1)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t ssftmap_ObjOpen(void *a1, int a2, __int128 *a3, uint64_t *a4)
{
  v4 = 2298486791;
  if (*a3 && *(a3 + 1) && *(a3 + 3) && *(a3 + 4) && a4 && *(a3 + 2))
  {
    v9 = heap_Calloc(a1, 1, 128);
    *a4 = v9;
    if (v9)
    {
      v10 = *a3;
      v11 = a3[1];
      *(v9 + 32) = *(a3 + 4);
      *v9 = v10;
      *(v9 + 16) = v11;
      *(*a4 + 40) = a1;
      dict_init(*a4 + 48, -1, *a4, a1);
      if (a2 == 1)
      {
        dict_allow_dupes(*a4 + 48);
      }

      return 0;
    }

    else
    {
      return 2298486794;
    }
  }

  return v4;
}

uint64_t ssftmap_ObjClone(__int128 *a1, uint64_t *a2)
{
  v2 = 2298486791;
  if (a1 && a2)
  {
    v5 = heap_Calloc(*(a1 + 5), 1, 128);
    *a2 = v5;
    if (v5)
    {
      v6 = *a1;
      v7 = a1[1];
      *(v5 + 32) = *(a1 + 4);
      *v5 = v6;
      *(v5 + 16) = v7;
      *(*a2 + 40) = *(a1 + 5);
      dict_init(*a2 + 48, -1, *a2, *(*a2 + 40));
      if (*(a1 + 120))
      {
        dict_allow_dupes(*a2 + 48);
      }

      v8 = dict_first(a1 + 6);
      if (v8)
      {
        v9 = v8;
        do
        {
          v2 = dict_alloc_insert((*a2 + 48), *(v9 + 32), *(v9 + 40));
          v10 = dict_next(a1 + 6, v9);
          if ((v2 & 0x80000000) != 0)
          {
            break;
          }

          v9 = v10;
        }

        while (v10);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 2298486794;
    }
  }

  return v2;
}

uint64_t ssftmap_ObjClose(uint64_t a1)
{
  if (!a1)
  {
    return 2298486791;
  }

  dict_free_nodes((a1 + 48));
  heap_Free(*(a1 + 40), a1);
  return 0;
}

uint64_t ssftmap_Insert(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && a2 && a3)
  {
    return dict_alloc_insert((a1 + 48), a2, a3);
  }

  else
  {
    return 2298486791;
  }
}

uint64_t ssftmap_FindReadOnly(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = 2298486791;
  if (a1 && a2 && a3)
  {
    v5 = dict_lookup(a1 + 48, a2);
    if (v5)
    {
      v3 = 0;
      *a3 = v5[5];
    }

    else
    {
      return 2298486804;
    }
  }

  return v3;
}

uint64_t ssftmap_Find(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = 2298486791;
  if (a1 && a2 && a3)
  {
    v5 = dict_lookup(a1 + 48, a2);
    if (v5)
    {
      v3 = 0;
      *a3 = v5[5];
    }

    else
    {
      return 2298486804;
    }
  }

  return v3;
}

uint64_t ssftmap_Remove(uint64_t a1, uint64_t a2)
{
  v2 = 2298486791;
  if (a1 && a2)
  {
    v4 = dict_lookup(a1 + 48, a2);
    if (v4)
    {
      dict_delete_free((a1 + 48), v4);
      return 0;
    }

    else
    {
      return 2298486804;
    }
  }

  return v2;
}

uint64_t ssftmap_GetSize(uint64_t result)
{
  if (result)
  {
    return *(result + 96);
  }

  return result;
}

uint64_t ssftmap_Clear(uint64_t a1)
{
  if (!a1)
  {
    return 2298486791;
  }

  dict_free_nodes((a1 + 48));
  return 0;
}

uint64_t ssftmap_IteratorOpen(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v4 = 2298486791;
  if (a1 && a4)
  {
    v7 = (a1 + 48);
    if (a2)
    {
      if (a3)
      {
        v8 = dict_lookup(v7, a2);
      }

      else
      {
        v8 = dict_lower_bound(v7, a2);
      }

      v9 = v8;
      if (!v8)
      {
        return 2298486804;
      }
    }

    else
    {
      v9 = dict_first(v7);
    }

    v10 = heap_Calloc(*(a1 + 40), 1, 24);
    *a4 = v10;
    if (v10)
    {
      v4 = 0;
      *v10 = a1;
      *(*a4 + 8) = 0;
      *(*a4 + 16) = v9;
    }

    else
    {
      return 2298486794;
    }
  }

  return v4;
}

uint64_t ssftmap_IteratorClose(uint64_t a1)
{
  if (!a1)
  {
    return 2298486791;
  }

  heap_Free(*(*a1 + 40), a1);
  return 0;
}

uint64_t ssftmap_IteratorNext(uint64_t *a1, void *a2, void *a3)
{
  result = 2298486791;
  if (a1 && a2 && a3)
  {
    v5 = a1[2];
    if (v5)
    {
      a1[1] = v5;
      *a2 = *(v5 + 32);
      *a3 = *(a1[1] + 40);
      v6 = dict_next((*a1 + 48), a1[1]);
      result = 0;
      a1[2] = v6;
    }

    else
    {
      *a2 = 0;
      *a3 = 0;
      return 2298486807;
    }
  }

  return result;
}

uint64_t ssftmap_IteratorRemove(void *a1)
{
  result = 2298486784;
  if (!a1)
  {
    return 2298486791;
  }

  v3 = a1[1];
  if (v3)
  {
    dict_delete_free((*a1 + 48), v3);
    result = 0;
    a1[1] = 0;
  }

  return result;
}

uint64_t ssftmap_ElemCopyString(const char *a1, uint64_t a2, char **a3)
{
  v3 = 2298486791;
  if (a1 && a2 && a3)
  {
    v7 = cstdlib_strlen(a1);
    v8 = heap_Alloc(a2, (v7 + 1));
    if (v8)
    {
      v9 = v8;
      cstdlib_strcpy(v8, a1);
      v3 = 0;
      *a3 = v9;
    }

    else
    {
      return 2298486794;
    }
  }

  return v3;
}

void *ssftmap_ElemFreeString(void *result, void *a2)
{
  if (result)
  {
    return heap_Free(a2, result);
  }

  return result;
}

uint64_t ssftmap_ElemCompareKeysString(const char *a1, const char *a2)
{
  if (a1 | a2)
  {
    LODWORD(v2) = -1;
  }

  else
  {
    LODWORD(v2) = 0;
  }

  if (a1)
  {
    v2 = 1;
  }

  else
  {
    v2 = v2;
  }

  if (a1 && a2)
  {
    return cstdlib_strcmp(a1, a2);
  }

  else
  {
    return v2;
  }
}

uint64_t ssftmap_ElemCopyWString(unsigned __int16 *a1, uint64_t a2, void *a3)
{
  v3 = 2298486791;
  if (a1 && a2 && a3)
  {
    v7 = LH_wcslen(a1);
    v8 = heap_Alloc(a2, (2 * v7 + 2) & 0x1FFFFFFFELL);
    if (v8)
    {
      v9 = v8;
      LH_wcscpy(v8, a1);
      v3 = 0;
      *a3 = v9;
    }

    else
    {
      return 2298486794;
    }
  }

  return v3;
}

void *ssftmap_ElemFreeWString(void *result, void *a2)
{
  if (result)
  {
    return heap_Free(a2, result);
  }

  return result;
}

uint64_t ssftmap_ElemCompareKeysWString(unint64_t a1, unsigned __int16 *a2)
{
  if (a1 | a2)
  {
    LODWORD(v2) = -1;
  }

  else
  {
    LODWORD(v2) = 0;
  }

  if (a1)
  {
    v2 = 1;
  }

  else
  {
    v2 = v2;
  }

  if (a1 && a2)
  {
    return LH_wcscmp(a1, a2);
  }

  else
  {
    return v2;
  }
}

uint64_t objc_ObjOpen(uint64_t a1, _WORD *a2, uint64_t a3, uint64_t *a4)
{
  v17 = 0;
  result = InitRsrcFunction(a2, a3, &v17);
  if ((result & 0x80000000) == 0)
  {
    v8 = 2338332682;
    if (a4)
    {
      v9 = heap_Calloc(*(v17 + 8), 1, 40);
      *a4 = v9;
      if (v9)
      {
        *v9 = a2;
        v9[1] = a3;
        v10 = v17;
        *(*a4 + 16) = v17;
        v11 = critsec_ObjOpen(*(v10 + 16), *(v10 + 8), (*a4 + 24));
        v12 = *(v17 + 8);
        v13 = *a4;
        if ((v11 & 0x80000000) != 0)
        {
          heap_Free(v12, v13);
          v8 = v11;
        }

        else
        {
          v15[0] = xmmword_287EE9768;
          v15[1] = *&off_287EE9778;
          v16 = off_287EE9788;
          v14 = ssftmap_ObjOpen(v12, 0, v15, (v13 + 32));
          result = 0;
          if ((v14 & 0x80000000) == 0)
          {
            return result;
          }

          critsec_ObjClose(*(*a4 + 24));
          heap_Free(*(v17 + 8), *a4);
        }

        *a4 = 0;
        return v8;
      }

      else
      {
        return 2338332682;
      }
    }

    else
    {
      return 2338332679;
    }
  }

  return result;
}

uint64_t objc_CopyValue(const void *a1, uint64_t a2, void *a3)
{
  v3 = 2338332679;
  if (a1 && a3)
  {
    *a3 = 0;
    v6 = heap_Alloc(a2, 64);
    if (v6)
    {
      v7 = v6;
      cstdlib_memcpy(v6, a1, 0x40uLL);
      v3 = 0;
      *a3 = v7;
    }

    else
    {
      return 2338332682;
    }
  }

  return v3;
}

void *objc_FreeValue(void *result, void *a2)
{
  if (result)
  {
    return heap_Free(a2, result);
  }

  return result;
}

uint64_t objc_ObjClose(uint64_t a1)
{
  v13 = 0;
  v14 = 0;
  v1 = 2338332679;
  v12 = 0;
  if (a1)
  {
    v3 = critsec_Enter(*(a1 + 24));
    v4 = v3;
    if ((v3 & 0x80000000) != 0)
    {
      return v3;
    }

    else
    {
      v5 = *(a1 + 32);
      if (v5)
      {
        if ((ssftmap_IteratorOpen(v5, 0, 1, &v14) & 0x80000000) == 0)
        {
          while (!ssftmap_IteratorNext(v14, &v13, &v12))
          {
            if (*(v12 + 56))
            {
              ssftmap_IteratorClose(v14);
              critsec_Leave(*(a1 + 24));
              return 2338332689;
            }
          }

          ssftmap_IteratorClose(v14);
        }

        v6 = *(a1 + 32);
        if (v6)
        {
          ssftmap_ObjClose(v6);
          *(a1 + 32) = 0;
        }
      }

      v7 = critsec_Leave(*(a1 + 24));
      if (v7 >= 0)
      {
        v1 = v4;
      }

      else
      {
        v1 = v7;
      }

      v8 = *(a1 + 24);
      if (v8)
      {
        v9 = critsec_ObjClose(v8);
        if (v9 >= 0 || v1 <= -1)
        {
          v1 = v1;
        }

        else
        {
          v1 = v9;
        }
      }

      heap_Free(*(*(a1 + 16) + 8), a1);
    }
  }

  return v1;
}

uint64_t objc_GetObject(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = 0;
  result = 2338332679;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        result = critsec_Enter(*(a1 + 24));
        if ((result & 0x80000000) == 0)
        {
          v7 = ssftmap_Find(*(a1 + 32), a2, &v11);
          v8 = v7;
          if (v7 < 0)
          {
            v8 = v7 & 0x1FFF | 0x8B602000;
          }

          else
          {
            v9 = v11;
            *a3 = v11;
            ++*(v9 + 56);
          }

          LODWORD(result) = critsec_Leave(*(a1 + 24));
          if (v8 > -1 && result < 0)
          {
            return result;
          }

          else
          {
            return v8;
          }
        }
      }
    }
  }

  return result;
}

uint64_t objc_RegisterObject(uint64_t a1, uint64_t a2, const void *a3)
{
  v12 = 0;
  result = 2338332679;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        result = critsec_Enter(*(a1 + 24));
        if ((result & 0x80000000) == 0)
        {
          v11 = 0u;
          memset(v10, 0, sizeof(v10));
          v7 = ssftmap_Find(*(a1 + 32), a2, &v12);
          if (v7 < 0)
          {
            cstdlib_memset(v10, 0, 0x40uLL);
            cstdlib_memcpy(v10, a3, 0x28uLL);
            WORD4(v11) = 0;
            v8 = ssftmap_Insert(*(a1 + 32), a2, v10);
          }

          else
          {
            v8 = v7;
            cstdlib_memcpy(v12, a3, 0x28uLL);
          }

          LODWORD(result) = critsec_Leave(*(a1 + 24));
          if (v8 > -1 && result < 0)
          {
            return result;
          }

          else
          {
            return v8;
          }
        }
      }
    }
  }

  return result;
}

uint64_t objc_ReleaseObject(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  result = 2338332679;
  if (a1)
  {
    if (a2)
    {
      result = critsec_Enter(*(a1 + 24));
      if ((result & 0x80000000) == 0)
      {
        v9 = 0u;
        memset(v8, 0, sizeof(v8));
        v5 = ssftmap_Find(*(a1 + 32), a2, &v10);
        v6 = v5;
        if (v5 < 0)
        {
          v6 = v5 & 0x1FFF | 0x8B602000;
        }

        else if (*(v10 + 28))
        {
          if (*(v10 + 28) == 1 && *(v10 + 6))
          {
            cstdlib_memcpy(v8, v10, 0x40uLL);
            v6 = ssftmap_Remove(*(a1 + 32), a2);
            (v9)(*a1, *(a1 + 8), v8);
          }

          else
          {
            --*(v10 + 28);
          }
        }

        else
        {
          v6 = -1956634607;
        }

        LODWORD(result) = critsec_Leave(*(a1 + 24));
        if (v6 > -1 && result < 0)
        {
          return result;
        }

        else
        {
          return v6;
        }
      }
    }
  }

  return result;
}

uint64_t objc_UnregisterObject(uint64_t a1, uint64_t a2)
{
  v2 = 2338332679;
  v12 = 0;
  if (!a1 || !a2)
  {
    return v2;
  }

  v5 = critsec_Enter(*(a1 + 24));
  v6 = v5;
  if ((v5 & 0x80000000) != 0)
  {
    return v5;
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = ssftmap_Find(v7, a2, &v12);
    if ((v8 & 0x80000000) == 0)
    {
      if (*(v12 + 56))
      {
        v6 = -1956634607;
        goto LABEL_11;
      }

      v8 = ssftmap_Remove(*(a1 + 32), a2);
    }

    v6 = v8;
  }

LABEL_11:
  v9 = critsec_Leave(*(a1 + 24));
  if (v6 > -1 && v9 < 0)
  {
    return v9;
  }

  else
  {
    return v6;
  }
}

uint64_t objc_UnregisterAllObjects(uint64_t a1)
{
  if (!a1)
  {
    return 2338332679;
  }

  v2 = critsec_Enter(*(a1 + 24));
  if ((v2 & 0x80000000) == 0)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      LODWORD(v2) = ssftmap_Clear(v3);
    }

    v4 = critsec_Leave(*(a1 + 24));
    if (v2 > -1 && v4 < 0)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }

  return v2;
}

uint64_t objc_GetAddRefCountedObject(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void, uint64_t, _OWORD *, uint64_t), void (*a4)(void, void, _OWORD *), uint64_t a5, void *a6)
{
  v21 = 0;
  result = 2338332679;
  if (a6)
  {
    if (a1)
    {
      if (a2)
      {
        if (a3)
        {
          if (a4)
          {
            result = critsec_Enter(*(a1 + 24));
            if ((result & 0x80000000) == 0)
            {
              v19 = 0u;
              v20 = 0u;
              memset(v18, 0, sizeof(v18));
              v13 = ssftmap_Find(*(a1 + 32), a2, &v21);
              if ((v13 & 0x80000000) == 0)
              {
LABEL_8:
                v14 = v21;
                *a6 = v21;
                ++*(v14 + 56);
                v15 = 1;
                goto LABEL_16;
              }

              cstdlib_memset(v18, 0, 0x40uLL);
              v16 = a3(*a1, *(a1 + 8), a2, v18, a5);
              if ((v16 & 0x80000000) != 0)
              {
                v13 = v16;
              }

              else
              {
                *(&v19 + 1) = a3;
                *&v20 = a4;
                v17 = ssftmap_Insert(*(a1 + 32), a2, v18);
                if ((v17 & 0x80000000) != 0)
                {
                  v13 = v17;
                  a4(*a1, *(a1 + 8), v18);
                }

                else
                {
                  v13 = ssftmap_Find(*(a1 + 32), a2, &v21);
                  if ((v13 & 0x80000000) == 0)
                  {
                    goto LABEL_8;
                  }
                }
              }

              v15 = 0;
LABEL_16:
              LODWORD(result) = critsec_Leave(*(a1 + 24));
              if ((v15 & (result < 0)) != 0)
              {
                return result;
              }

              else
              {
                return v13;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t paramc_ObjOpen(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = 2339381258;
  if (!a4)
  {
    return 2339381255;
  }

  v7 = heap_Calloc(*(a2 + 8), 1, 40);
  *a4 = v7;
  if (!v7)
  {
    return 2339381258;
  }

  v8 = *(a2 + 8);
  *v7 = v8;
  v9 = critsec_ObjOpen(*(a2 + 16), v8, (*a4 + 8));
  if ((v9 & 0x80000000) != 0)
  {
    v4 = v9;
  }

  else
  {
    v10 = *(a2 + 8);
    v11 = *a4;
    v24 = paramc_IParam;
    v25 = *&off_287EE97A0;
    v26 = off_287EE97B0;
    v12 = ssftmap_ObjOpen(v10, 0, &v24, (v11 + 16));
    v13 = v12;
    if ((v12 & 0x80000000) != 0)
    {
      v4 = v12;
    }

    else
    {
      v14 = *(a2 + 8);
      v15 = *a4;
      v24 = paramc_IListener;
      *&v25 = 0;
      if (vector_ObjOpen(v14, &v24, 1, (v15 + 24)))
      {
        v16 = *(a2 + 8);
        v17 = *a4;
        v24 = paramc_IRestorePoints;
        *&v25 = off_287EE97C8[0];
        if (vector_ObjOpen(v16, &v24, 2, (v17 + 32)))
        {
          return v13;
        }
      }
    }
  }

  v18 = *a4;
  if (*a4)
  {
    v19 = v18[4];
    if (v19)
    {
      vector_ObjClose(v19);
      v18 = *a4;
    }

    v20 = v18[3];
    if (v20)
    {
      vector_ObjClose(v20);
      v18 = *a4;
    }

    v21 = v18[2];
    if (v21)
    {
      ssftmap_ObjClose(v21);
      v18 = *a4;
    }

    v22 = v18[1];
    if (v22)
    {
      critsec_ObjClose(v22);
      v18 = *a4;
    }

    heap_Free(*(a2 + 8), v18);
    *a4 = 0;
  }

  return v4;
}

uint64_t paramc_ObjClose(uint64_t a1)
{
  if (!a1)
  {
    return 2339381255;
  }

  v2 = *(a1 + 32);
  if (v2)
  {
    vector_ObjClose(v2);
    *(a1 + 32) = 0;
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    vector_ObjClose(v3);
    *(a1 + 24) = 0;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    ssftmap_ObjClose(v4);
    *(a1 + 16) = 0;
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    critsec_ObjClose(v5);
  }

  heap_Free(*a1, a1);
  return 0;
}

uint64_t paramc_ListenerAdd(uint64_t a1, _BYTE *a2, void *a3)
{
  v3 = -1955586038;
  v16 = 0;
  v4 = 2339381255;
  if (!a1)
  {
    return v4;
  }

  if (!a3[2])
  {
    return v4;
  }

  v4 = critsec_Enter(*(a1 + 8));
  if ((v4 & 0x80000000) != 0)
  {
    return v4;
  }

  if (a2 && *a2)
  {
    v8 = ssftmap_Find(*(a1 + 16), a2, &v16);
    LODWORD(v4) = v8;
    if (v8 < 0)
    {
      v3 = (v8 & 0x1FFF) - 1955586048;
      goto LABEL_14;
    }

    v9 = *(v16 + 16);
    if (!v9)
    {
      v10 = *a1;
      v14 = paramc_IListener;
      v15 = 0;
      if (!vector_ObjOpen(v10, &v14, 1, (v16 + 16)))
      {
        goto LABEL_14;
      }

      v9 = *(v16 + 16);
    }
  }

  else
  {
    v9 = *(a1 + 24);
  }

  if (vector_Add(v9, a3))
  {
    v3 = v4;
  }

  else
  {
    v3 = -1955586038;
  }

LABEL_14:
  v11 = critsec_Leave(*(a1 + 8));
  if (v3 > -1 && v11 < 0)
  {
    return v11;
  }

  else
  {
    return v3;
  }
}

uint64_t paramc_ListenerRemove(uint64_t a1, _BYTE *a2, __int128 *a3)
{
  v13 = 0;
  if (!a1)
  {
    return 2339381255;
  }

  result = critsec_Enter(*(a1 + 8));
  if ((result & 0x80000000) == 0)
  {
    if (a2 && *a2)
    {
      v7 = ssftmap_Find(*(a1 + 16), a2, &v13);
      if (v7 < 0)
      {
        v9 = v7 & 0x1FFF | 0x8B702000;
        goto LABEL_10;
      }

      v8 = *(v13 + 16);
    }

    else
    {
      v8 = *(a1 + 24);
    }

    v11 = *a3;
    v12 = *(a3 + 2);
    v9 = param_ListenerRemove(v8, &v11);
LABEL_10:
    LODWORD(result) = critsec_Leave(*(a1 + 8));
    if (v9 > -1 && result < 0)
    {
      return result;
    }

    else
    {
      return v9;
    }
  }

  return result;
}

uint64_t param_ListenerRemove(uint64_t a1, void *a2)
{
  v2 = 2339381268;
  v7 = 0;
  if (a1 && vector_GetElemAt(a1, 0, &v7))
  {
    v5 = 0;
    while (*a2 != *v7 || a2[1] != v7[1] || a2[2] != v7[2])
    {
      if (!vector_GetElemAt(a1, ++v5, &v7))
      {
        return v2;
      }
    }

    if (vector_Remove(a1, v5))
    {
      return 0;
    }

    else
    {
      return 2339381504;
    }
  }

  return v2;
}

uint64_t paramc_ParamSetInternal(uint64_t a1, uint64_t a2, void *a3, size_t a4, int a5)
{
  *v25 = 0;
  v5 = 2339381255;
  if (!a1)
  {
    return v5;
  }

  if (!a2)
  {
    return v5;
  }

  if (!a3)
  {
    return v5;
  }

  v5 = critsec_Enter(*(a1 + 8));
  if ((v5 & 0x80000000) != 0)
  {
    return v5;
  }

  if ((ssftmap_Find(*(a1 + 16), a2, v25) & 0x80000000) != 0)
  {
    v24[2] = 0;
    v24[0] = a3;
    v24[1] = a4;
    v14 = param_ConsultListeners(a1, a2, v24, a3);
    if (v14 < 0)
    {
      goto LABEL_37;
    }

    v15 = a5 ? a3 : 0;
    v16 = a5 ? a4 : 0;
    v14 = param_TrackForRestore(a1, a2, v15, v16, a5);
    if (v14 < 0)
    {
      goto LABEL_37;
    }

    v17 = ssftmap_Insert(*(a1 + 16), a2, v24);
    if (v17 < 0)
    {
      LODWORD(v5) = v17 & 0x1FFF | 0x8B702000;
    }

    else
    {
      v18 = param_NotifyListeners(a1, a2, v24, a3);
      if (v18 < 0)
      {
        LODWORD(v5) = v18 & 0x1FFF | 0x8B702000;
      }

      else
      {
        LODWORD(v5) = 0;
      }
    }
  }

  else
  {
    v11 = *v25;
    if (*v25)
    {
      v12 = *(*v25 + 8);
      if (v12)
      {
        v13 = **v25;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
      v12 = 0;
    }

    if (v12 != a4)
    {
LABEL_26:
      v14 = param_ConsultListeners(a1, a2, v11, a3);
      if ((v14 & 0x80000000) == 0)
      {
        v19 = a5 ? a3 : v13;
        v20 = a5 ? a4 : v12;
        v14 = param_TrackForRestore(a1, a2, v19, v20, a5);
        if ((v14 & 0x80000000) == 0)
        {
          v14 = param_SetValue(*v25, a3, a4, *a1);
          if ((v14 & 0x80000000) == 0)
          {
            v14 = param_NotifyListeners(a1, a2, *v25, a3);
            if ((v14 & 0x80000000) == 0)
            {
              LODWORD(v5) = 0;
              goto LABEL_38;
            }
          }
        }
      }

LABEL_37:
      LODWORD(v5) = v14;
      goto LABEL_38;
    }

    if (cstdlib_memcmp(v13, a3, a4))
    {
      v11 = *v25;
      goto LABEL_26;
    }
  }

LABEL_38:
  v21 = critsec_Leave(*(a1 + 8));
  if (v5 > -1 && v21 < 0)
  {
    return v21;
  }

  else
  {
    return v5;
  }
}

uint64_t paramc_ParamRipple(uint64_t a1, uint64_t a2, void *a3, size_t a4)
{
  *v14 = 0;
  result = 2339381255;
  if (a1 && a2 && a3)
  {
    if ((ssftmap_Find(*(a1 + 16), a2, v14) & 0x80000000) != 0)
    {
      v13[2] = 0;
      v13[0] = a3;
      v13[1] = a4;
      result = param_TrackForRestore(a1, a2, 0, 0, 0);
      if ((result & 0x80000000) == 0)
      {
        v11 = ssftmap_Insert(*(a1 + 16), a2, v13);
        if (v11 < 0)
        {
          return v11 & 0x1FFF | 0x8B702000;
        }

        else
        {
          v12 = param_NotifyListeners(a1, a2, v13, a3);
          if (v12 < 0)
          {
            return v12 & 0x1FFF | 0x8B702000;
          }

          else
          {
            return 0;
          }
        }
      }
    }

    else
    {
      if (*v14)
      {
        v9 = *(*v14 + 8);
        if (v9)
        {
          v10 = **v14;
        }

        else
        {
          v10 = 0;
        }
      }

      else
      {
        v10 = 0;
        v9 = 0;
      }

      if (v9 == a4 && !cstdlib_memcmp(v10, a3, a4))
      {
        return 0;
      }

      result = param_TrackForRestore(a1, a2, v10, v9, 0);
      if ((result & 0x80000000) == 0)
      {
        result = param_SetValue(*v14, a3, a4, *a1);
        if ((result & 0x80000000) == 0)
        {
          result = param_NotifyListeners(a1, a2, *v14, a3);
          if ((result & 0x80000000) == 0)
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t param_TrackForRestore(uint64_t a1, uint64_t a2, void *a3, size_t a4, int a5)
{
  v18 = 0;
  v19 = 0;
  v17[2] = 0;
  v17[0] = a3;
  v17[1] = a4;
  if (vector_GetElemAt(*(a1 + 32), 0, &v19))
  {
    v10 = 1;
    while (1)
    {
      v11 = ssftmap_Insert(*(v19 + 8), a2, v17);
      if ((v11 & 0x1FFF) == 2)
      {
        v12 = 0;
      }

      else
      {
        v12 = v11;
      }

      if ((v11 & 0x1FFF) == 2 && a5 != 0)
      {
        v14 = ssftmap_Find(*(v19 + 8), a2, &v18);
        if (v14 < 0)
        {
          return v14 & 0x1FFF | 0x8B702000;
        }

        v12 = param_SetValue(v18, a3, a4, **v19);
      }

      if ((v12 & 0x80000000) == 0)
      {
        if (vector_GetElemAt(*(a1 + 32), v10++, &v19))
        {
          continue;
        }
      }

      return v12;
    }
  }

  return 0;
}

uint64_t param_SetValue(uint64_t a1, void *__src, size_t __n, uint64_t *a4)
{
  v4 = 2339381258;
  if (!a1)
  {
    return 2339381255;
  }

  v5 = __n;
  if (__n)
  {
    v8 = *(a1 + 8);
    if (v8)
    {
      v9 = *a1;
      v10 = __n;
      if (v8 >= __n)
      {
LABEL_13:
        cstdlib_memcpy(v9, __src, v10);
        v4 = 0;
        *(a1 + 8) = v5;
        return v4;
      }

      v11 = heap_Realloc(a4, v9, __n);
      if (v11)
      {
        v9 = v11;
        *a1 = v11;
        goto LABEL_13;
      }
    }

    else
    {
      v10 = __n;
      v9 = heap_Alloc(a4, __n);
      *a1 = v9;
      if (v9)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
    if (*a1 && *(a1 + 8))
    {
      heap_Free(a4, *a1);
    }

    v4 = 0;
    *(a1 + 8) = 0;
    *a1 = __src;
  }

  return v4;
}

uint64_t param_NotifyListeners(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = 0;
  if (!a3)
  {
    return 0;
  }

  v6 = a3 + 16;
  v7 = a1 + 24;
  v8 = 1;
  while (1)
  {
    v9 = (v8 == 1 ? v6 : v7);
    v10 = *v9;
    if (*v9)
    {
      Size = vector_GetSize(*v9);
      if (Size)
      {
        break;
      }
    }

LABEL_12:
    if (++v8 == 3)
    {
      return 0;
    }
  }

  v12 = Size;
  v13 = 0;
  while (vector_GetElemAt(v10, v13, &v15))
  {
    result = (*(v15 + 16))(*v15, a2, a4);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    if (v12 == ++v13)
    {
      goto LABEL_12;
    }
  }

  return 2339381504;
}

uint64_t paramc_ParamGet(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4)
{
  v13 = 0;
  result = 2339381255;
  if (a1 && a2 && a3)
  {
    *a3 = 0;
    if (a4)
    {
      *a4 = 0;
    }

    result = critsec_Enter(*(a1 + 8));
    if ((result & 0x80000000) == 0)
    {
      v9 = ssftmap_Find(*(a1 + 16), a2, &v13);
      v10 = v9;
      if (v9 < 0)
      {
        v10 = v9 & 0x1FFF | 0x8B702000;
      }

      else if (v13)
      {
        v11 = *(v13 + 8);
        if (v11)
        {
          *a3 = *v13;
          if (!a4)
          {
            goto LABEL_15;
          }

          goto LABEL_14;
        }

        *a3 = 0;
        if (a4)
        {
LABEL_14:
          *a4 = v11;
        }
      }

LABEL_15:
      LODWORD(result) = critsec_Leave(*(a1 + 8));
      if (v10 > -1 && result < 0)
      {
        return result;
      }

      else
      {
        return v10;
      }
    }
  }

  return result;
}

uint64_t paramc_ParamRelease(uint64_t a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return 2339381255;
  }
}

uint64_t paramc_ParamSetInt(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v8 = *MEMORY[0x277D85DE8];
  LH_itoa(a3, __s, 0xAu);
  v5 = cstdlib_strlen(__s);
  return paramc_ParamSetInternal(a1, a2, __s, (v5 + 1), 0);
}

uint64_t paramc_ParamSetIntPermanent(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v8 = *MEMORY[0x277D85DE8];
  LH_itoa(a3, __s, 0xAu);
  v5 = cstdlib_strlen(__s);
  return paramc_ParamSetInternal(a1, a2, __s, (v5 + 1), 1);
}

uint64_t paramc_ParamGetInt(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v8 = 0;
  v7 = 0;
  v4 = paramc_ParamGet(a1, a2, &v8, &v7);
  v5 = 0;
  if ((v4 & 0x80000000) == 0 && v7 >= 2)
  {
    v5 = cstdlib_atoi(v8);
  }

  *a3 = v5;
  return v4;
}

uint64_t paramc_ParamSetUInt(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v8 = *MEMORY[0x277D85DE8];
  LH_utoa(a3, __s, 0xAu);
  v5 = cstdlib_strlen(__s);
  return paramc_ParamSetInternal(a1, a2, __s, (v5 + 1), 0);
}

uint64_t paramc_ParamSetUIntPermanent(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v8 = *MEMORY[0x277D85DE8];
  LH_utoa(a3, __s, 0xAu);
  v5 = cstdlib_strlen(__s);
  return paramc_ParamSetInternal(a1, a2, __s, (v5 + 1), 1);
}

uint64_t paramc_ParamGetUInt(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v8 = 0;
  v7 = 0;
  v4 = paramc_ParamGet(a1, a2, &v8, &v7);
  v5 = 0;
  if ((v4 & 0x80000000) == 0 && v7 >= 2)
  {
    v5 = LH_atou(v8);
  }

  *a3 = v5;
  return v4;
}

uint64_t paramc_ParamSetStr(uint64_t a1, uint64_t a2, char *a3)
{
  if (a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = "";
  }

  v6 = cstdlib_strlen(v5) + 1;

  return paramc_ParamSetInternal(a1, a2, v5, v6, 0);
}

uint64_t paramc_ParamSetStrPermanent(uint64_t a1, uint64_t a2, char *a3)
{
  if (a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = "";
  }

  v6 = cstdlib_strlen(v5) + 1;

  return paramc_ParamSetInternal(a1, a2, v5, v6, 1);
}

uint64_t paramc_ParamRemove(uint64_t a1, uint64_t a2)
{
  v14 = 0;
  result = 2339381255;
  if (!a1)
  {
    return result;
  }

  if (!a2)
  {
    return result;
  }

  result = critsec_Enter(*(a1 + 8));
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v5 = ssftmap_Find(*(a1 + 16), a2, &v14);
  if (v5 < 0)
  {
    v8 = v5 & 0x1FFF | 0x8B702000;
    goto LABEL_19;
  }

  v6 = v14;
  v7 = *(v14 + 16);
  if (!v7)
  {
    goto LABEL_10;
  }

  if (vector_GetSize(v7))
  {
    v8 = -1955586031;
    goto LABEL_19;
  }

  v6 = v14;
  if (!v14)
  {
    v10 = 0;
    v9 = 0;
  }

  else
  {
LABEL_10:
    v9 = *(v6 + 8);
    if (v9)
    {
      v10 = *v6;
    }

    else
    {
      v10 = 0;
    }
  }

  v11 = param_TrackForRestore(a1, a2, v10, v9, 0);
  if (v11 < 0)
  {
    v8 = v11;
  }

  else
  {
    v12 = ssftmap_Remove(*(a1 + 16), a2);
    if (v12 >= 0)
    {
      v8 = v12;
    }

    else
    {
      v8 = v12 & 0x1FFF | 0x8B702000;
    }
  }

LABEL_19:
  LODWORD(result) = critsec_Leave(*(a1 + 8));
  if (v8 > -1 && result < 0)
  {
    return result;
  }

  else
  {
    return v8;
  }
}

uint64_t paramc_ParamRemoveAll(uint64_t a1)
{
  v10 = 0;
  if (!a1)
  {
    return 2339381255;
  }

  result = critsec_Enter(*(a1 + 8));
  if ((result & 0x80000000) == 0)
  {
    if (vector_GetSize(*(a1 + 32)) && (ssftmap_IteratorOpen(*(a1 + 16), 0, 1, &v10) & 0x80000000) == 0)
    {
      v8 = 0;
      v9 = 0;
      do
      {
        if (ssftmap_IteratorNext(v10, &v9, &v8))
        {
          break;
        }

        if (v8)
        {
          v3 = *(v8 + 8);
          v4 = v3 ? *v8 : 0;
        }

        else
        {
          v4 = 0;
          v3 = 0;
        }
      }

      while ((param_TrackForRestore(a1, v9, v4, v3, 0) & 0x80000000) == 0);
      ssftmap_IteratorClose(v10);
    }

    v5 = ssftmap_Clear(*(a1 + 16));
    v6 = critsec_Leave(*(a1 + 8));
    if (v6 >= 0)
    {
      v7 = v5;
    }

    else
    {
      v7 = v6;
    }

    if (v5 >= 0)
    {
      return v7;
    }

    else
    {
      return v5 & 0x1FFF | 0x8B702000;
    }
  }

  return result;
}

uint64_t paramc_ParamSetRestorePoint(uint64_t a1, void *a2)
{
  v2 = 2339381255;
  if (a1 && a2)
  {
    v5 = critsec_Enter(*(a1 + 8));
    v6 = v5;
    if ((v5 & 0x80000000) != 0)
    {
      return v5;
    }

    else
    {
      v12[0] = a1;
      v12[1] = 0;
      if (vector_Add(*(a1 + 32), v12))
      {
        v7 = *(a1 + 32);
        Size = vector_GetSize(v7);
        if (vector_GetElemAt(v7, Size - 1, a2))
        {
          LODWORD(v2) = v6;
        }

        else
        {
          LODWORD(v2) = -1955585792;
        }
      }

      else
      {
        LODWORD(v2) = -1955586038;
      }

      v9 = critsec_Leave(*(a1 + 8));
      if (v9 >= 0 || v2 <= -1)
      {
        return v2;
      }

      else
      {
        return v9;
      }
    }
  }

  return v2;
}

uint64_t paramc_ParamRestore(uint64_t a1, uint64_t *a2)
{
  v12 = 0;
  v13 = 0;
  v2 = 2339381255;
  v11 = 0;
  if (a1)
  {
    if (a2)
    {
      v2 = ssftmap_IteratorOpen(a2[1], 0, 1, &v13);
      if ((v2 & 0x80000000) == 0)
      {
        if (ssftmap_IteratorNext(v13, &v12, &v11))
        {
LABEL_5:
          ssftmap_IteratorClose(v13);
          return v2;
        }

        while (1)
        {
          v5 = v12;
          v6 = *(v11 + 8);
          v7 = *a2;
          if (v6)
          {
            v8 = *v11;
          }

          else
          {
            v9 = paramc_ParamRemove(v7, v12);
            if ((v9 & 0x1FFF) != 0x11)
            {
              if ((v9 & 0x1FFF) == 0x14)
              {
                v9 = 0;
              }

              goto LABEL_13;
            }

            v7 = *a2;
            v5 = v12;
            v8 = "";
            v6 = 1;
          }

          v9 = paramc_ParamSetInternal(v7, v5, v8, v6, 0);
LABEL_13:
          if (v2 > -1 && v9 < 0)
          {
            v2 = v9;
          }

          else
          {
            v2 = v2;
          }

          if (ssftmap_IteratorNext(v13, &v12, &v11))
          {
            goto LABEL_5;
          }
        }
      }
    }
  }

  return v2;
}

uint64_t paramc_ParamCloseRestorePoint(uint64_t a1, char *a2)
{
  v2 = 2339381255;
  if (a1 && a2)
  {
    v5 = critsec_Enter(*(a1 + 8));
    v6 = v5;
    if ((v5 & 0x80000000) != 0)
    {
      return v5;
    }

    else
    {
      if (vector_RemoveAddress(*(a1 + 32), a2))
      {
        LODWORD(v2) = v6;
      }

      else
      {
        LODWORD(v2) = -1955586041;
      }

      v7 = critsec_Leave(*(a1 + 8));
      if (v2 > -1 && v7 < 0)
      {
        return v7;
      }

      else
      {
        return v2;
      }
    }
  }

  return v2;
}

uint64_t paramc_IteratorOpen(uint64_t a1, void *a2)
{
  v8 = 0;
  result = 2339381255;
  if (a1 && a2)
  {
    result = critsec_Enter(*(a1 + 8));
    if ((result & 0x80000000) != 0)
    {
      v7 = 0;
    }

    else
    {
      v5 = ssftmap_IteratorOpen(*(a1 + 16), 0, 1, &v8);
      LODWORD(result) = critsec_Leave(*(a1 + 8));
      if (v5 > -1 && result < 0)
      {
        result = result;
      }

      else
      {
        result = v5;
      }

      v7 = v8;
    }

    *a2 = v7;
  }

  return result;
}

uint64_t paramc_IteratorClose(uint64_t a1)
{
  if (a1)
  {
    return ssftmap_IteratorClose(a1);
  }

  else
  {
    return 2339381255;
  }
}

uint64_t paramc_IteratorNext(uint64_t *a1, void *a2, void *a3, _DWORD *a4)
{
  v11 = 0;
  v12 = 0;
  if (!a1)
  {
    return 2339381255;
  }

  result = ssftmap_IteratorNext(a1, &v12, &v11);
  if ((result & 0x80000000) != 0)
  {
    v9 = 0;
    v10 = 0;
    *a2 = 0;
  }

  else
  {
    v8 = v11;
    *a2 = v12;
    v9 = *v8;
    v10 = *(v8 + 2);
  }

  *a3 = v9;
  *a4 = v10;
  return result;
}

uint64_t paramc_Iterate(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, void, uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v13 = 0;
  v14 = 0;
  v12 = 0;
  v11 = 0;
  result = paramc_IteratorOpen(a1, &v14);
  if ((result & 0x80000000) == 0)
  {
    do
    {
      v8 = paramc_IteratorNext(v14, &v13, &v12, &v11);
      if ((v8 & 0x80000000) != 0)
      {
        break;
      }

      v8 = a2(v13, v12, v11, a3, a4);
    }

    while ((v8 & 0x80000000) == 0);
    v9 = v8;
    v10 = v8 & 0x1FFF;
    if (v14)
    {
      LODWORD(result) = ssftmap_IteratorClose(v14);
    }

    else
    {
      LODWORD(result) = -1955586041;
    }

    if (v10 == 23)
    {
      return result;
    }

    else
    {
      return v9;
    }
  }

  return result;
}

uint64_t param_Copy(uint64_t a1, uint64_t *a2, void *a3)
{
  v3 = 0;
  if (a1 && a3)
  {
    *a3 = 0;
    v7 = heap_Calloc(a2, 1, 24);
    if (v7)
    {
      v8 = v7;
      v9 = param_SetValue(v7, *a1, *(a1 + 8), a2);
      if ((v9 & 0x80000000) != 0)
      {
        v3 = v9;
        param_Free(v8, a2);
      }

      else
      {
        v3 = 0;
        *a3 = v8;
      }
    }

    else
    {
      return 2339381258;
    }
  }

  return v3;
}

void *param_Free(void *result, void *a2)
{
  if (result)
  {
    v3 = result;
    v4 = result[2];
    if (v4)
    {
      vector_ObjClose(v4);
      *(v3 + 16) = 0;
    }

    if (*v3)
    {
      heap_Free(a2, *v3);
      *v3 = 0;
    }

    *(v3 + 8) = 0;

    return heap_Free(a2, v3);
  }

  return result;
}

BOOL param_RestorePointCopyParts(uint64_t *a1, void *a2, void *a3)
{
  v4 = *a1;
  v3 = a1[1];
  *a3 = v4;
  if (v3)
  {
    v5 = ssftmap_ObjClone(v3, a3 + 1);
  }

  else
  {
    v7[0] = paramc_IParam;
    v7[1] = *&off_287EE97A0;
    v8 = off_287EE97B0;
    v5 = ssftmap_ObjOpen(a2, 0, v7, a3 + 1);
  }

  return v5 >= 0;
}

uint64_t param_RestorePointFreeParts(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    result = ssftmap_ObjClose(result);
    *(a1 + 8) = 0;
  }

  return result;
}

uint64_t param_ConsultListeners(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = 1;
  v20 = 0;
  if (!a3)
  {
    return 0;
  }

  v6 = 0;
  v7 = a3 + 16;
  v8 = a1 + 24;
  v9 = 1;
  while (1)
  {
    v10 = (v9 == 1 ? v7 : v8);
    v11 = *v10;
    if (*v10)
    {
      Size = vector_GetSize(*v10);
      if (Size)
      {
        if ((v6 & 0x80000000) == 0)
        {
          break;
        }
      }
    }

LABEL_21:
    if (++v9 == 3)
    {
      return v6;
    }
  }

  v13 = Size;
  v14 = 1;
  while (vector_GetElemAt(v11, v14 - 1, &v20))
  {
    v15 = v20[1];
    if (v15)
    {
      v16 = v15(*v20, a2, a4, &v21);
      if (v21)
      {
        v17 = 1;
      }

      else
      {
        v17 = v16 < 0;
      }

      if (v17)
      {
        v6 = v16;
      }

      else
      {
        v6 = 2339381263;
      }
    }

    if ((v6 & 0x80000000) == 0 && v14++ < v13)
    {
      continue;
    }

    goto LABEL_21;
  }

  return 2339381504;
}

uint64_t ssftriff_reader_ObjOpenEx(_WORD *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, int a6, char *a7, int a8, uint64_t *a9)
{
  v17 = 0;
  v112 = *MEMORY[0x277D85DE8];
  v107 = 0;
  v106 = 0;
  *__s1 = 0;
  v104 = 0;
  v93 = -1977606137;
  v102 = 16;
  *__s2 = 0;
  v101 = 0;
  v99 = 0u;
  v100 = 0u;
  __b = 0u;
  v97 = 0uLL;
  *v96 = 0;
  cstdlib_strcpy(__dst, "");
  if (a3 <= 1)
  {
    if (!a3)
    {
      v19 = 1;
      v18 = 0;
      if (!a4)
      {
        return v93;
      }

      goto LABEL_16;
    }

    if (a3 != 1)
    {
      return v93;
    }

LABEL_13:
    v19 = 0;
    v18 = 0;
    a3 = 1;
    if (!a4)
    {
      return v93;
    }

    goto LABEL_16;
  }

  if (a3 == 4)
  {
    v17 = 0;
    v19 = 0;
    v18 = 1;
    if (!a4)
    {
      return v93;
    }

    goto LABEL_16;
  }

  if (a3 == 3)
  {
    v17 = 1;
    goto LABEL_13;
  }

  if (a3 != 2)
  {
    return v93;
  }

  v18 = 0;
  a3 = 0;
  v17 = 1;
  v19 = 1;
  if (!a4)
  {
    return v93;
  }

LABEL_16:
  if (a7 && *a4 && (!v19 || *a7) && (!v18 || a5 && a6) && a9)
  {
    *a9 = 0;
    inited = InitRsrcFunction(a1, a2, &v107);
    if ((inited & 0x80000000) == 0)
    {
      v24 = a8;
      v25 = BYTE1(a8);
      v26 = BYTE2(a8);
      v91 = v25;
      v92 = v24;
      log_OutText(*(v107 + 32), "RIFFREADER", 4, 0, "ssftriff_reader_ObjOpen : Begin (%d, %s, %s, [%u.%u.%u])", v21, v22, v23, a3);
      cstdlib_memset(&__b, 0, 0x30uLL);
      cstdlib_memset(&v97, 0, 0x10uLL);
      *&__b = v107;
      if (a3 == 4)
      {
        *&v97 = a5;
        DWORD2(v97) = a6;
        goto LABEL_32;
      }

      if (a3 == 1)
      {
        v27 = osspi_DataOpen(*(v107 + 64), *(v107 + 8), a4, &v99 + 1);
        if (v27 < 0)
        {
          LODWORD(v32) = v27;
          v33 = *(v107 + 32);
          if (v17)
          {
            log_OutText(v33, "RIFFREADER", 4, 0, "osspi_DataOpen failed for %s, %x", v29, v30, v31, a4);
          }

          else
          {
            log_OutPublic(v33, "RIFFREADER", 27002, "%s%s%s%x", v28, v29, v30, v31, "file");
          }

          return v32;
        }

LABEL_32:
        v34 = heap_Calloc(*(v107 + 8), 1, 128);
        if (!v34)
        {
          log_OutPublic(*(v107 + 32), "RIFFREADER", 27000, 0, v35, v36, v37, v38, v90);
          ssftriff_reader_loc_DataClose(&__b);
          return -1977606134;
        }

        v39 = v34;
        *v34 = a1;
        *(v34 + 8) = a2;
        v40 = v107;
        *(v34 + 16) = v107;
        *(v34 + 24) = a3;
        v41 = v99;
        *(v34 + 56) = __b;
        *(v34 + 72) = v41;
        *(v34 + 88) = v100;
        *(v34 + 104) = v97;
        v42 = *(v40 + 8);
        v43 = cstdlib_strlen(a4);
        v44 = heap_Alloc(v42, (v43 + 1));
        *(v39 + 40) = v44;
        if (v44 && (cstdlib_strcpy(v44, a4), v49 = *(v107 + 8), *v109 = SSFTRIFF_CHUNK_STACK_ELEM_IT, v110 = 0, vector_ObjOpen(v49, v109, 4, (v39 + 48))))
        {
          v50 = ssftriff_reader_OpenChunk(v39, __s1, &v101, 0);
          if ((v50 & 0x80000000) != 0)
          {
            goto LABEL_99;
          }

          ssftriff_reader_GetChunkData(v39, 4u, v96, v58);
          v32 = v59;
          if ((v59 & 0x80000000) == 0)
          {
            if (cstdlib_strcmp(__s1, "RIFF"))
            {
              if (cstdlib_strcmp(__s1, "RIF4"))
              {
                if (cstdlib_strcmp(__s1, "RIF8"))
                {
                  if (!*(v39 + 32))
                  {
                    goto LABEL_58;
                  }

LABEL_54:
                  ssftriff_reader_ReadFourCC(v39, *v96, v101, 0, __s2, v60);
                  if (v67 < 0)
                  {
LABEL_58:
                    log_OutPublic(*(v107 + 32), "RIFFREADER", 27004, "%s%s", v61, v62, v63, v64, "file");
                    goto LABEL_59;
                  }

                  if (!*a7)
                  {
                    goto LABEL_61;
                  }

                  if (cstdlib_strcmp(a7, __s2))
                  {
                    log_OutPublic(*(v107 + 32), "RIFFREADER", 27005, "%s%s", v68, v55, v56, v57, "file");
LABEL_59:
                    v32 = 2317361156;
                    goto LABEL_44;
                  }

                  if (!*a7)
                  {
LABEL_61:
                    cstdlib_strcpy(a7, __s2);
                  }

                  *(v39 + 120) += 4;
                  v69 = v19 ^ 1;
                  if (v92)
                  {
                    v69 = 0;
                  }

                  if (v69)
                  {
LABEL_98:
                    *a9 = v39;
                    goto LABEL_45;
                  }

                  v70 = ssftriff_reader_OpenChunk(v39, __s1, &v101, v96);
                  v75 = v70;
                  if ((v70 & 0x80000000) == 0 && !cstdlib_strcmp(__s1, "LIST") && v101 >= 5)
                  {
                    ssftriff_reader_ReadFourCC(v39, *v96, v101, 0, __s2, v76);
                    if ((Chunk & 0x80000000) == 0)
                    {
                      if (cstdlib_strcmp(__s2, "INFO") || (v78 = *(v39 + 120) + 4, *(v39 + 120) = v78, v78 < 0))
                      {
                        v75 = 0;
                        goto LABEL_87;
                      }

                      Chunk = ssftriff_reader_FindChunk(v39, "VERS", 3, &v101, v96);
                      if ((Chunk & 0x80000000) == 0)
                      {
                        Chunk = ssftriff_reader_ReadStringZ(v39, *v96, v101, 0, __dst, &v102);
                        if ((Chunk & 0x80000000) == 0)
                        {
                          v94 = 0;
                          v95 = __dst;
                          v83 = cstdlib_strtol(__dst, &v94, 0xAu);
                          if (v83 < 1 || !v94 || *v94 != 46 || (v84 = cstdlib_strtol(v94 + 1, &v95, 0xAu), (v84 & 0x80000000) != 0) || !v95 || *v95 != 46 || (v85 = cstdlib_strtol(v95 + 1, &v94, 0xAu), (v85 & 0x80000000) != 0) || !v94 || *v94 && *v94 != 46)
                          {
                            log_OutPublic(*(v107 + 32), "RIFFREADER", 27008, "%s%s", v79, v80, v81, v82, "version");
                            goto LABEL_59;
                          }

                          if (v92 < v83 || v92 == v83 && (v91 < v84 || v91 == v84 && v26 < v85))
                          {
                            LH_itoa(v92, __src, 0xAu);
                            cstdlib_strcpy(v109, __src);
                            cstdlib_strcat(v109, ".");
                            LH_itoa(v91, __src, 0xAu);
                            cstdlib_strcat(v109, __src);
                            cstdlib_strcat(v109, ".");
                            LH_itoa(v26, __src, 0xAu);
                            cstdlib_strcat(v109, __src);
                            log_OutPublic(*(v107 + 32), "RIFFREADER", 27009, "%s%s%s%s", v86, v87, v88, v89, "productVersion");
                            goto LABEL_59;
                          }

                          v50 = ssftriff_reader_CloseChunk(v39);
                          if ((v50 & 0x80000000) == 0)
                          {
                            v50 = ssftriff_reader_CloseChunk(v39);
                            if ((v50 & 0x80000000) == 0)
                            {
                              v32 = 0;
                              goto LABEL_98;
                            }
                          }

LABEL_99:
                          v32 = v50;
                          goto LABEL_44;
                        }
                      }
                    }

                    v75 = Chunk;
                  }

LABEL_87:
                  log_OutPublic(*(v107 + 32), "RIFFREADER", 27006, "%s%s", v71, v72, v73, v74, "file");
                  if ((v75 & 0x1FFF) == 0xA)
                  {
                    v32 = 2317361162;
                  }

                  else
                  {
                    v32 = 2317361156;
                  }

                  goto LABEL_44;
                }

                v66 = 8;
              }

              else
              {
                v66 = 4;
              }
            }

            else
            {
              v66 = 2;
            }

            *(v39 + 32) = v66;
            goto LABEL_54;
          }
        }

        else
        {
          log_OutPublic(*(v107 + 32), "RIFFREADER", 27000, 0, v45, v46, v47, v48, v90);
          v32 = 2317361162;
        }

LABEL_44:
        ssftriff_reader_ObjClose(v39, v51, v52, v53, v54, v55, v56, v57);
LABEL_45:
        log_OutText(*(v107 + 32), "RIFFREADER", 4, 0, "ssftriff_reader_ObjOpen : End (%x, %p)", v55, v56, v57, v32);
        return v32;
      }

      inited = brk_DataOpenEx(*(v107 + 24), a4, v17, &v99);
      if ((inited & 0x80000000) == 0)
      {
        goto LABEL_32;
      }
    }

    return inited;
  }

  return v93;
}

uint64_t ssftriff_reader_loc_DataClose(uint64_t a1)
{
  if (*(a1 + 8))
  {
    result = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    return result;
  }

  if (*(a1 + 32))
  {
    result = ssftriff_loc_DataUnmap(*a1, a1);
    *(a1 + 32) = 0;
    if ((result & 0x80000000) != 0)
    {
      return result;
    }
  }

  else
  {
    result = 0;
  }

  v3 = *(a1 + 16);
  if (!v3 || (result = brk_DataClose(*(*a1 + 24), v3), *(a1 + 16) = 0, (result & 0x80000000) == 0))
  {
    if (*(a1 + 24))
    {
      result = osspi_DataClose(*(a1 + 24));
      *(a1 + 24) = 0;
    }
  }

  return result;
}

uint64_t ssftriff_reader_OpenChunk(uint64_t a1, __int32 *a2, unsigned int *a3, void *a4)
{
  v4 = 2317361156;
  v41 = 0;
  v5 = 2317361159;
  if (a2 && a1 && a3)
  {
    if (vector_StackTop(*(a1 + 48), &v41))
    {
      v14 = *(a1 + 120);
      if (v14 + 8 > *(v41 + 12))
      {
        log_OutText(*(*(a1 + 16) + 32), "RIFFREADER", 3, 0, "Chunk open failed: no more chunks", v10, v11, v12, v38);
        v4 = 2317361172;
        goto LABEL_31;
      }

      v16 = *(a1 + 88);
      if (v16 && v14 >= *(a1 + 96) && v14 + 8 <= *(a1 + 100))
      {
        goto LABEL_17;
      }

      v13.n128_f64[0] = ssftriff_loc_DataMap(a1, *(a1 + 120), 8u, a1 + 56, v13);
      if ((v15 & 0x80000000) == 0)
      {
        v16 = *(a1 + 88);
        v14 = *(a1 + 120);
        goto LABEL_17;
      }
    }

    else
    {
      v13.n128_f64[0] = ssftriff_loc_DataMap(a1, 0, 8u, a1 + 56, v13);
      *(a1 + 120) = 0;
      if ((v15 & 0x80000000) == 0)
      {
        v16 = *(a1 + 88);
        v17 = *v16;
        if (v17 == 251 || v17 == 224)
        {
          v14 = 0;
          *(a1 + 28) = 1;
        }

        else
        {
          v14 = 0;
        }

LABEL_17:
        ssftriff_reader_ReadFourCC(a1, v16, *(a1 + 100), v14 - *(a1 + 96), a2, v13.n128_u64[0]);
        if ((v15 & 0x80000000) == 0)
        {
          cstdlib_memcpy(a3, (*(a1 + 88) + (*(a1 + 120) - *(a1 + 96) + 4)), 4uLL);
          v23 = 0;
          *(a1 + 120) += 8;
          do
          {
            v24 = *(a2 + v23);
            if ((v24 & 0xFFFFFFDF) - 65 >= 0x1A)
            {
              v25 = v24 != 32 && (v24 - 48) >= 0xA;
              if (v25)
              {
                v31 = *(*(a1 + 16) + 32);
                if (v41)
                {
                  log_OutPublic(v31, "RIFFREADER", 27011, "%s%s%s%s%s%u", v18, v19, v20, v21, "file");
                }

                else
                {
                  log_OutPublic(v31, "RIFFREADER", 27004, "%s%s", v18, v19, v20, v21, "file");
                }

                *a2 = 0;
                *a3 = 0;
                if (!a4)
                {
                  return 2317361156;
                }

                goto LABEL_32;
              }
            }

            v25 = v23++ >= 3;
          }

          while (!v25);
          if (v41)
          {
            v26 = *(v41 + 12);
            if (*a3 > v26 || *(a1 + 120) + *a3 > v26)
            {
              log_OutPublic(*(*(a1 + 16) + 32), "RIFFREADER", 27012, "%s%s%s%s", v18, v19, v20, v21, "file");
              goto LABEL_31;
            }
          }

          if (!a4)
          {
LABEL_40:
            v5 = 0;
            goto LABEL_48;
          }

          v29 = *(a1 + 120);
          if (*(a1 + 88))
          {
            v30 = *a3;
            if (v29 >= *(a1 + 96) && v30 + v29 <= *(a1 + 100))
            {
              goto LABEL_40;
            }
          }

          else
          {
            v30 = *a3;
          }

          ssftriff_loc_DataMap(a1, v29, v30, a1 + 56, v22);
          v5 = v32;
          if ((v32 & 0x80000000) != 0)
          {
            v27 = 0;
            *a2 = 0;
            *a3 = 0;
LABEL_54:
            v4 = v5;
            goto LABEL_33;
          }

LABEL_48:
          __b = 0;
          v40 = 0;
          cstdlib_memset(&__b, 0, 0x10uLL);
          cstdlib_strcpy(&__b, a2);
          v33 = *a3 + *(a1 + 120);
          LODWORD(v40) = *(a1 + 120);
          HIDWORD(v40) = v33;
          if (vector_Add(*(a1 + 48), &__b))
          {
            if (!a4)
            {
              return v5;
            }

            v27 = *(a1 + 88) + (*(a1 + 120) - *(a1 + 96));
            goto LABEL_54;
          }

          log_OutPublic(*(*(a1 + 16) + 32), "RIFFREADER", 27000, 0, v34, v35, v36, v37, v38);
          *a2 = 0;
          *a3 = 0;
          v4 = 2317361162;
          if (a4)
          {
            goto LABEL_32;
          }

          return v4;
        }
      }
    }

    v4 = v15;
LABEL_31:
    *a2 = 0;
    *a3 = 0;
    if (a4)
    {
LABEL_32:
      v27 = 0;
LABEL_33:
      *a4 = v27;
    }

    return v4;
  }

  return v5;
}

void ssftriff_reader_GetChunkData(uint64_t a1, unsigned int a2, void *a3, __n128 a4)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        v7 = *(a1 + 88);
        if (v7)
        {
          v8 = *(a1 + 120);
          v9 = *(a1 + 96);
          if (v8 < v9 || v8 + a2 > *(a1 + 100))
          {
            ssftriff_loc_DataMap(a1, v8, a2, a1 + 56, a4);
            if (v10 < 0)
            {
              v11 = 0;
LABEL_12:
              *a3 = v11;
              return;
            }

            v7 = *(a1 + 88);
            LODWORD(v8) = *(a1 + 120);
            v9 = *(a1 + 96);
          }

          v11 = v7 + v8 - v9;
          goto LABEL_12;
        }
      }
    }
  }
}

uint8x8_t ssftriff_reader_ReadFourCC(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, __int32 *__dst, uint8x8_t result)
{
  if (a1 && a2 && a4 + 4 <= a3 && __dst)
  {
    cstdlib_memcpy(__dst, (a2 + a4), 4uLL);
    *(__dst + 4) = 0;
    if (*(a1 + 28) == 1)
    {
      result.i32[0] = *__dst;
      v8 = veor_s8(*&vmovl_u8(result), 0xA900A900A900A9);
      result = vuzp1_s8(v8, v8);
      *__dst = result.i32[0];
    }
  }

  return result;
}

uint64_t ssftriff_reader_FindChunk(uint64_t a1, const char *a2, int a3, unsigned int *a4, void *a5)
{
  v28 = 0;
  v25 = 0;
  v5 = 2317361159;
  if (!a1)
  {
    return v5;
  }

  if (!a4)
  {
    return v5;
  }

  Size = vector_GetSize(*(a1 + 48));
  if (!Size)
  {
    return v5;
  }

  v12 = Size;
  v27 = 0;
  *__s1 = 0;
  if (!vector_ObjClone(*(a1 + 48), &v25))
  {
    log_OutPublic(*(*(a1 + 16) + 32), "RIFFREADER", 27000, 0, v13, v14, v15, v16, v24);
    return 2317361162;
  }

  v17 = *(a1 + 120);
  v18 = 27014;
  if (a3 > 1)
  {
    if (a3 != 2)
    {
      if (a3 == 3)
      {
        goto LABEL_22;
      }

      goto LABEL_30;
    }

    if (vector_StackTop(*(a1 + 48), &v28))
    {
      *(a1 + 120) = *(v28 + 8);
      goto LABEL_22;
    }

    goto LABEL_29;
  }

  if (!a3)
  {
    *(a1 + 120) = 12;
    if (v12 != 1)
    {
      do
      {
        vector_StackPop(*(a1 + 48));
        --v12;
      }

      while (v12 > 1);
    }

LABEL_22:
    while (1)
    {
      v5 = ssftriff_reader_OpenChunk(a1, __s1, a4, 0);
      if ((v5 & 0x80000000) != 0)
      {
        goto LABEL_31;
      }

      if (!cstdlib_strcmp(__s1, a2))
      {
        if (!a5 || (ssftriff_reader_GetChunkData(a1, *a4, a5, v19), v5 = v21, (v21 & 0x80000000) == 0))
        {
          vector_ObjClose(v25);
          return v5;
        }

        v22 = 1;
        goto LABEL_32;
      }

      v20 = ssftriff_reader_CloseChunk(a1);
      if (v20 < 0)
      {
        LODWORD(v5) = v20;
        goto LABEL_31;
      }
    }
  }

  if (a3 == 1)
  {
    if (v12 == 1)
    {
      goto LABEL_22;
    }

    if (vector_GetElemAt(*(a1 + 48), 1u, &v28))
    {
      *(a1 + 120) = *(v28 + 12);
      do
      {
        vector_StackPop(*(a1 + 48));
        --v12;
      }

      while (v12 > 1);
      goto LABEL_22;
    }

LABEL_29:
    LODWORD(v5) = -1977606136;
    v18 = 27013;
  }

LABEL_30:
  log_OutPublic(*(*(a1 + 16) + 32), "RIFFREADER", v18, "%s%s", v13, v14, v15, v16, "chunk");
LABEL_31:
  v22 = a5 != 0;
LABEL_32:
  if ((v5 & 0x1FFF) == 0xA)
  {
    v5 = v5;
  }

  else
  {
    v5 = 2317361172;
  }

  if (v25)
  {
    vector_ObjClose(*(a1 + 48));
    *(a1 + 48) = v25;
    *(a1 + 120) = v17;
  }

  *a4 = 0;
  if (v22)
  {
    *a5 = 0;
  }

  return v5;
}

uint64_t ssftriff_reader_ReadStringZ(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, _BYTE *__dst, unsigned int *a6)
{
  result = 2317361159;
  if (a1)
  {
    if (a2)
    {
      if (a4 <= a3)
      {
        if (a6)
        {
          v9 = __dst;
          v10 = *a6;
          if (__dst || !v10)
          {
            v11 = (a2 + a4);
            if (*(a1 + 28) == 1)
            {
              v12 = 0;
              while (v11[v12] != 169)
              {
                ++v12;
                if (a4 + v12 > a3)
                {
                  return 2317361156;
                }
              }
            }

            else
            {
              v12 = 0;
              while (v11[v12])
              {
                ++v12;
                if (a4 + v12 > a3)
                {
                  return 2317361156;
                }
              }
            }

            if (v12 + 1 <= v10)
            {
              v13 = v12;
              cstdlib_memcpy(__dst, v11, v12);
              v9[v12] = 0;
              if (*(a1 + 28) == 1 && v12 != 0)
              {
                do
                {
                  *v9++ ^= 0xA9u;
                  --v13;
                }

                while (v13);
              }

              result = 0;
            }

            else
            {
              result = 2317361161;
              if (v10)
              {
                *__dst = 0;
              }
            }

            *a6 = v12 + 1;
          }
        }
      }
    }
  }

  return result;
}

uint64_t ssftriff_reader_CloseChunk(uint64_t a1)
{
  v1 = 2317361152;
  v11 = 0;
  if (!a1)
  {
    return 2317361159;
  }

  if (!vector_StackTop(*(a1 + 48), &v11))
  {
    v9 = 27015;
LABEL_10:
    log_OutPublic(*(*(a1 + 16) + 32), "RIFFREADER", v9, "%s%s", v3, v4, v5, v6, "file");
    return v1;
  }

  v7 = *(v11 + 12);
  *(a1 + 120) = v7;
  v8 = *(a1 + 32);
  if (v7 % v8)
  {
    *(a1 + 120) = v7 - v7 % v8 + v8;
  }

  if (!vector_StackPop(*(a1 + 48)))
  {
    v1 = 2317361160;
    v9 = 27016;
    goto LABEL_10;
  }

  return 0;
}

uint64_t ssftriff_reader_ObjClose(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 2317361159;
  }

  v9 = a1[2];
  log_OutText(*(v9 + 32), "RIFFREADER", 4, 0, "ssftriff_reader_ObjClose : Begin (%p)", a6, a7, a8, a1);
  v13 = ssftriff_reader_loc_DataClose((a1 + 7));
  v14 = a1[5];
  if (v14)
  {
    heap_Free(*(a1[2] + 8), v14);
  }

  v15 = a1[6];
  if (v15)
  {
    vector_ObjClose(v15);
  }

  if ((v13 & 0x80000000) == 0)
  {
    heap_Free(*(a1[2] + 8), a1);
  }

  log_OutText(*(v9 + 32), "RIFFREADER", 4, 0, "ssftriff_reader_ObjClose : End (%x)", v10, v11, v12, v13);
  return v13;
}

double ssftriff_loc_DataMap(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, __n128 a5)
{
  if (a3 <= 0x20)
  {
    v9 = 32;
  }

  else
  {
    v9 = a3;
  }

  v16 = v9;
  if (*(a4 + 8))
  {
    v10 = 0;
    *(a4 + 8) = 0;
    a5 = 0uLL;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
  }

  else if (*(a4 + 32))
  {
    v10 = ssftriff_loc_DataUnmap(*(a1 + 16), a4);
    if (v10 < 0)
    {
      return a5.n128_f64[0];
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = *(a1 + 24);
  if (v11 != 4)
  {
    if (v11 != 1)
    {
      if (!v11)
      {
        v12 = *(a4 + 16);
        if (v12)
        {
LABEL_12:
          v10 = brk_DataMapEx(*(*(a1 + 16) + 24), v12, a2, &v16, a4 + 32);
          goto LABEL_23;
        }

        if ((brk_DataOpen(*(*(a1 + 16) + 24)) & 0x80000000) == 0)
        {
          v12 = *(a4 + 16);
          goto LABEL_12;
        }
      }

LABEL_28:
      a5.n128_u64[0] = 0;
      *(a4 + 32) = a5;
      return a5.n128_f64[0];
    }

    v13 = *(a4 + 24);
    if (!v13)
    {
      if ((osspi_DataOpen(*(*(a1 + 16) + 64), *(*(a1 + 16) + 8), *(a1 + 40), (a4 + 24)) & 0x80000000) != 0)
      {
        goto LABEL_28;
      }

      v13 = *(a4 + 24);
    }

    v10 = osspi_DataMap(v13, a2, &v16, (a4 + 32));
    goto LABEL_23;
  }

  if (a3 + a2 > *(a1 + 112))
  {
    v10 = -1977606140;
  }

  *(a4 + 32) = *(a1 + 104) + a2;
LABEL_23:
  v14 = v16;
  if ((v10 & 0x80000000) == 0 && v16 < a3)
  {
    ssftriff_loc_DataUnmap(*(a1 + 16), a4);
    goto LABEL_28;
  }

  if (v10 < 0)
  {
    goto LABEL_28;
  }

  *(a4 + 40) = a2;
  *(a4 + 44) = v14 + a2;
  return a5.n128_f64[0];
}

uint64_t ssftriff_reader_DetachChunkData(uint64_t a1, void **a2, void *a3)
{
  v21 = 0;
  v3 = 2317361159;
  if (!a1 || !a2 || !a3)
  {
    return v3;
  }

  if (!*(a1 + 88))
  {
    return 2317361169;
  }

  v7 = heap_Calloc(*(*(a1 + 16) + 8), 1, 48);
  *a2 = v7;
  if (v7)
  {
    if (vector_StackTop(*(a1 + 48), &v21))
    {
      if (!*(a1 + 64) && *(a1 + 88) && *(a1 + 96) == *(a1 + 120) && *(a1 + 100) == *(v21 + 12))
      {
        v3 = 0;
        goto LABEL_9;
      }

      ssftriff_loc_DataMap(a1, *(a1 + 120), *(v21 + 12) - *(a1 + 120), a1 + 56, v16);
      v3 = v17;
      if ((v17 & 0x80000000) == 0)
      {
LABEL_9:
        v18 = *(a1 + 24);
        if (v18 == 1)
        {
          osspi_DataFreeze(*(a1 + 80));
        }

        else if (!v18)
        {
          brk_DataFreeze(*(*(a1 + 16) + 24), *(a1 + 72));
        }

        cstdlib_memcpy(*a2, (a1 + 56), 0x30uLL);
        if (*(a1 + 24) != 4)
        {
          *(a1 + 64) = 1;
        }

        *a3 = *(*a2 + 4);
        return v3;
      }
    }

    else
    {
      log_OutPublic(*(*(a1 + 16) + 32), "RIFFREADER", 27013, "%s%s", v12, v13, v14, v15, "file");
      v3 = 2317361152;
    }
  }

  else
  {
    log_OutPublic(*(*(a1 + 16) + 32), "RIFFREADER", 27000, 0, v8, v9, v10, v11, v20);
    v3 = 2317361162;
  }

  if (*a2)
  {
    heap_Free(*(*(a1 + 16) + 8), *a2);
    *a2 = 0;
  }

  return v3;
}

uint64_t ssftriff_reader_ReleaseChunkData(void *a1)
{
  if (!a1 || !a1[4])
  {
    return 2317361159;
  }

  v2 = ssftriff_reader_loc_DataClose(a1);
  heap_Free(*(*a1 + 8), a1);
  return v2;
}

uint64_t ssftriff_reader_ReadStringW(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, _BYTE *a5, _DWORD *a6)
{
  v6 = 2317361159;
  if (a1)
  {
    if (a2)
    {
      v8 = a4 + 2;
      if (a4 + 2 <= a3)
      {
        if (a6)
        {
          v10 = a5;
          if (a5 || !*a6)
          {
            v12 = a2 + a4;
            __dst = 0;
            cstdlib_memcpy(&__dst, v12, 2uLL);
            LODWORD(v13) = __dst;
            if (v8 + __dst <= a3)
            {
              if (*a6 <= __dst)
              {
                v6 = 2317361161;
                if (*a6)
                {
                  *v10 = 0;
                }
              }

              else
              {
                cstdlib_memcpy(v10, (v12 + 2), __dst);
                v6 = 0;
                v13 = __dst;
                v10[__dst] = 0;
                if (*(a1 + 28) == 1 && v13)
                {
                  v14 = v13;
                  do
                  {
                    *v10++ ^= 0xA9u;
                    --v14;
                  }

                  while (v14);
                  v6 = 0;
                }
              }
            }

            else
            {
              v6 = 2317361156;
            }

            *a6 = v13 + 1;
          }
        }
      }
    }
  }

  return v6;
}

uint64_t ssftriff_reader_ReadWStringZ(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, _WORD *__dst, unsigned int *a6)
{
  result = 2317361159;
  if (a1)
  {
    if (a2)
    {
      if (a4 <= a3)
      {
        if (a6)
        {
          v9 = __dst;
          v10 = *a6;
          if (__dst || !v10)
          {
            v11 = (a2 + a4);
            if (*(a1 + 28) == 1)
            {
              v12 = 0;
              while (v11[v12] != 43433)
              {
                if (a4 + 2 * ++v12 > a3)
                {
                  return 2317361156;
                }
              }
            }

            else
            {
              v12 = 0;
              while (v11[v12])
              {
                if (a4 + 2 * ++v12 > a3)
                {
                  return 2317361156;
                }
              }
            }

            if (v12 + 1 <= v10)
            {
              cstdlib_memcpy(__dst, v11, 2 * v12);
              *&v9[2 * v12] = 0;
              if (*(a1 + 28) == 1 && v12 != 0)
              {
                v14 = 1;
                do
                {
                  *v9++ ^= 0xA9u;
                }

                while (2 * v12 > v14++);
              }

              result = 0;
            }

            else
            {
              result = 2317361161;
              if (v10)
              {
                *__dst = 0;
              }
            }

            *a6 = v12 + 1;
          }
        }
      }
    }
  }

  return result;
}

uint64_t ssftriff_reader_ReadWStringW(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, _WORD *a5, _DWORD *a6)
{
  v6 = 2317361159;
  if (a1)
  {
    if (a2)
    {
      v8 = a4 + 2;
      if (a4 + 2 <= a3)
      {
        if (a6)
        {
          v10 = a5;
          if (a5 || !*a6)
          {
            v12 = a2 + a4;
            __dst = 0;
            cstdlib_memcpy(&__dst, v12, 2uLL);
            LODWORD(v13) = __dst;
            v14 = 2 * __dst;
            if (v14 + v8 <= a3)
            {
              if (*a6 <= __dst)
              {
                v6 = 2317361161;
                if (*a6)
                {
                  *v10 = 0;
                }
              }

              else
              {
                cstdlib_memcpy(v10, (v12 + 2), v14);
                v13 = __dst;
                v10[__dst] = 0;
                if (*(a1 + 28) == 1 && v13)
                {
                  v15 = 0;
                  do
                  {
                    *v10 ^= 0xA9u;
                    v10 = (v10 + 1);
                    ++v15;
                  }

                  while (2 * v13 > v15);
                }

                v6 = 0;
              }
            }

            else
            {
              v6 = 2317361156;
            }

            *a6 = v13 + 1;
          }
        }
      }
    }
  }

  return v6;
}

uint64_t ssftriff_reader_Seek(uint64_t a1, unsigned int a2, int a3)
{
  v3 = 2317361159;
  v16 = 0;
  if (a1)
  {
    if (vector_StackTop(*(a1 + 48), &v16))
    {
      v10 = 0;
    }

    else
    {
      v10 = 2317361169;
    }

    log_OutText(*(*(a1 + 16) + 32), "RIFFREADER", 4, 0, "ssftriff_reader_Seek : Begin (%p, %d, %d, %s)", v7, v8, v9, a1);
    if (a3 == 1)
    {
      v14 = *(a1 + 120) + a2;
      if (v14 < *(v16 + 8) || v14 > *(v16 + 12))
      {
        goto LABEL_15;
      }

      *(a1 + 120) = v14;
    }

    else
    {
      if (a3 || (a2 & 0x80000000) != 0 || *(v16 + 8) > a2 || *(v16 + 12) < a2)
      {
        goto LABEL_15;
      }

      *(a1 + 120) = a2;
    }

    v3 = v10;
LABEL_15:
    log_OutText(*(*(a1 + 16) + 32), "RIFFREADER", 4, 0, "ssftriff_reader_Seek : End (%x)", v11, v12, v13, v3);
  }

  return v3;
}

uint64_t ssftriff_reader_GetChunkDepth(uint64_t result)
{
  if (result)
  {
    return vector_GetSize(*(result + 48));
  }

  return result;
}

uint64_t ssftriff_reader_GetPosition(uint64_t result)
{
  if (result)
  {
    return *(result + 120);
  }

  return result;
}

uint64_t ssftriff_reader_GetEncryption(uint64_t result)
{
  if (result)
  {
    return *(result + 28);
  }

  return result;
}

uint64_t ssftriff_reader_GetAlignment(uint64_t result)
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

uint64_t ssftriff_loc_DataUnmap(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    result = 0;
  }

  else
  {
    v4 = *(a2 + 16);
    if (v4)
    {
      result = brk_DataUnmap(*(a1 + 24), v4, *(a2 + 32));
    }

    else
    {
      result = *(a2 + 24);
      if (result)
      {
        result = osspi_DataUnmap(result, *(a2 + 32));
      }
    }
  }

  if (*(a2 + 16) || *(a2 + 24))
  {
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
  }

  return result;
}

uint64_t stringmap_reader_ObjOpen(_WORD *a1, uint64_t a2, const char *a3, uint64_t a4, unsigned __int16 **a5)
{
  v52 = 0;
  v6 = 2317361156;
  v49 = 0;
  __src = 0;
  result = 2317361159;
  if (a3)
  {
    if (a4)
    {
      if (a5)
      {
        v51 = 0;
        *__s1 = 0;
        *a5 = 0;
        result = InitRsrcFunction(a1, a2, &v52);
        if ((result & 0x80000000) == 0)
        {
          log_OutText(*(v52 + 32), "STRINGMAPREADER", 4, 0, "stringmap_reader_ObjOpen : Begin (%s, %p)", v12, v13, v14, a3);
          v15 = heap_Calloc(*(v52 + 8), 1, 88);
          if (!v15)
          {
            log_OutPublic(*(v52 + 32), "STRINGMAPREADER", 28000, 0, v16, v17, v18, v19, v47);
            return 2317361162;
          }

          v20 = v15;
          *v15 = a1;
          *(v15 + 1) = a2;
          v21 = v52;
          *(v15 + 2) = v52;
          v22 = *(v21 + 8);
          v23 = cstdlib_strlen(a3);
          v24 = heap_Alloc(v22, (v23 + 1));
          *(v20 + 3) = v24;
          if (v24)
          {
            cstdlib_strcpy(v24, a3);
            v29 = ssftriff_reader_OpenChunk(a4, __s1, &v49, &__src);
            if ((v29 & 0x80000000) == 0)
            {
              if (cstdlib_strcmp(__s1, "STMC"))
              {
                v41 = 28001;
LABEL_15:
                v42 = *(v52 + 32);
LABEL_16:
                log_OutPublic(v42, "STRINGMAPREADER", v41, "%s%s%s%s", v37, v38, v39, v40, "file");
                ssftriff_reader_CloseChunk(a4);
                goto LABEL_17;
              }

              if (v49 <= 9)
              {
                v41 = 28002;
                goto LABEL_15;
              }

              cstdlib_memcpy(v20 + 16, __src, 2uLL);
              __src = __src + 2;
              cstdlib_memcpy(v20 + 18, __src, 2uLL);
              __src = __src + 2;
              cstdlib_memcpy(v20 + 19, __src, 2uLL);
              __src = __src + 2;
              cstdlib_memcpy(v20 + 20, __src, 2uLL);
              __src = __src + 2;
              cstdlib_memcpy(v20 + 32, __src, 2uLL);
              ssftriff_reader_CloseChunk(a4);
              v46 = ssftriff_reader_OpenChunk(a4, __s1, &v49, &__src);
              if ((v46 & 0x80000000) == 0)
              {
                if (cstdlib_strcmp(__s1, "STMF"))
                {
LABEL_22:
                  v41 = 28001;
LABEL_25:
                  v42 = *(v52 + 32);
                  goto LABEL_16;
                }

                if (v49 < (v20[19] + v20[18]) * v20[20])
                {
LABEL_24:
                  v41 = 28002;
                  goto LABEL_25;
                }

                if ((ssftriff_reader_DetachChunkData(a4, v20 + 7, &__src) & 0x80000000) == 0)
                {
                  *(v20 + 6) = __src;
                }

                ssftriff_reader_CloseChunk(a4);
                if (!v20[32])
                {
LABEL_35:
                  *a5 = v20;
                  v6 = v46;
                  goto LABEL_18;
                }

                v46 = ssftriff_reader_OpenChunk(a4, __s1, &v49, &__src);
                if ((v46 & 0x80000000) == 0)
                {
                  if (cstdlib_strcmp(__s1, "STMR"))
                  {
                    goto LABEL_22;
                  }

                  if (v49 < (v20[19] + v20[18]) * v20[32])
                  {
                    goto LABEL_24;
                  }

                  if ((ssftriff_reader_DetachChunkData(a4, v20 + 10, &__src) & 0x80000000) == 0)
                  {
                    *(v20 + 9) = __src;
                  }

                  ssftriff_reader_CloseChunk(a4);
                  goto LABEL_35;
                }
              }

              v6 = v46;
              goto LABEL_17;
            }

            v6 = v29;
          }

          else
          {
            log_OutPublic(*(v52 + 32), "STRINGMAPREADER", 28000, 0, v25, v26, v27, v28, v47);
            v6 = 2317361162;
          }

LABEL_17:
          stringmap_reader_ObjClose(v20, v30, v31, v32, v33, v34, v35, v36);
LABEL_18:
          log_OutText(*(v52 + 32), "STRINGMAPREADER", 4, 0, "stringmap_reader_ObjOpen : End (%x, %p)", v43, v44, v45, v6);
          return v6;
        }
      }
    }
  }

  return result;
}

uint64_t stringmap_reader_ObjClose(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 2317361159;
  }

  v9 = a1[2];
  log_OutText(*(v9 + 32), "STRINGMAPREADER", 4, 0, "stringmap_reader_ObjClose : Begin (%p)", a6, a7, a8, a1);
  v13 = a1[7];
  if (v13)
  {
    v14 = ssftriff_reader_ReleaseChunkData(v13);
    v15 = v14 & (v14 >> 31);
  }

  else
  {
    v15 = 0;
  }

  v16 = a1[10];
  if (v16)
  {
    v17 = ssftriff_reader_ReleaseChunkData(v16);
    if (v17 >= 0 || v15 <= -1)
    {
      v15 = v15;
    }

    else
    {
      v15 = v17;
    }
  }

  v19 = a1[3];
  if (v19)
  {
    heap_Free(*(a1[2] + 8), v19);
  }

  if ((v15 & 0x80000000) == 0)
  {
    heap_Free(*(v9 + 8), a1);
  }

  log_OutText(*(v9 + 32), "STRINGMAPREADER", 4, 0, "stringmap_reader_ObjClose : End (%x)", v10, v11, v12, v15);
  return v15;
}

uint64_t stringmap_reader_Map(uint64_t a1, char *__s2, uint64_t *a3)
{
  v3 = 2317361159;
  if (a1 && __s2 && a3)
  {
    *a3 = 0;
    v5 = *(a1 + 48);
    if (v5)
    {
      v3 = 2317361153;
      if (!*(a1 + 32))
      {
        return stringmap_loc_Map(0, *(a1 + 40), v5, *(a1 + 36), *(a1 + 38), __s2, a3);
      }
    }

    else
    {
      return 2317361153;
    }
  }

  return v3;
}

uint64_t stringmap_loc_Map(int a1, int a2, uint64_t a3, unsigned int a4, __int16 a5, char *__s2, uint64_t *a7)
{
  if (!a2)
  {
    goto LABEL_14;
  }

  v12 = 0;
  v13 = a2 - 1;
  v14 = (a5 + a4);
  while (1)
  {
    v15 = (v13 + v12) / 2;
    v16 = v15 * v14;
    v17 = v15 * v14;
    if (a1)
    {
      v18 = LH_wcscmp((a3 + 2 * v16), __s2);
      if (v18 < 0)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v18 = cstdlib_strcmp((a3 + v16), __s2);
      if (v18 < 0)
      {
LABEL_8:
        v12 = v15 + 1;
        goto LABEL_9;
      }
    }

    if (!v18)
    {
      break;
    }

    v13 = v15 - 1;
LABEL_9:
    if (v12 > v13)
    {
      goto LABEL_14;
    }
  }

  v19 = a3 + 2 * v17 + 2 * a4;
  if (!a1)
  {
    v19 = a3 + v17 + a4;
  }

  *a7 = v19;
LABEL_14:
  if (*a7)
  {
    return 0;
  }

  else
  {
    return 2317361172;
  }
}

uint64_t stringmap_reader_ReverseMap(uint64_t a1, char *__s2, uint64_t *a3)
{
  v3 = 2317361159;
  if (a1 && __s2 && a3)
  {
    *a3 = 0;
    v5 = *(a1 + 72);
    if (v5)
    {
      v3 = 2317361153;
      if (!*(a1 + 32))
      {
        return stringmap_loc_Map(0, *(a1 + 64), v5, *(a1 + 38), *(a1 + 36), __s2, a3);
      }
    }

    else
    {
      return 2317361153;
    }
  }

  return v3;
}

uint64_t stringmap_reader_WMap(uint64_t a1, char *__s2, uint64_t *a3)
{
  v3 = 2317361159;
  if (a1 && __s2 && a3)
  {
    *a3 = 0;
    v5 = *(a1 + 48);
    if (v5)
    {
      v3 = 2317361153;
      if (*(a1 + 32) == 1)
      {
        return stringmap_loc_Map(1, *(a1 + 40), v5, *(a1 + 36), *(a1 + 38), __s2, a3);
      }
    }

    else
    {
      return 2317361153;
    }
  }

  return v3;
}

uint64_t stringmap_reader_WReverseMap(uint64_t a1, char *__s2, uint64_t *a3)
{
  v3 = 2317361159;
  if (a1 && __s2 && a3)
  {
    *a3 = 0;
    v5 = *(a1 + 72);
    if (v5)
    {
      v3 = 2317361153;
      if (*(a1 + 32) == 1)
      {
        return stringmap_loc_Map(1, *(a1 + 64), v5, *(a1 + 38), *(a1 + 36), __s2, a3);
      }
    }

    else
    {
      return 2317361153;
    }
  }

  return v3;
}

uint64_t stringmap_reader_MapToken(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3, uint64_t *a4)
{
  v4 = 2317361159;
  if (a1 && a2 && a3 && a4)
  {
    *a3 = 0;
    *a4 = 0;
    v6 = *(a1 + 48);
    if (v6)
    {
      v4 = 2317361153;
      if (!*(a1 + 32))
      {
        return stringmap_loc_MapToken(0, *(a1 + 40), v6, *(a1 + 36), *(a1 + 38), a2, a3, a4);
      }
    }

    else
    {
      return 2317361153;
    }
  }

  return v4;
}

uint64_t stringmap_loc_MapToken(int a1, int a2, uint64_t a3, unsigned int a4, __int16 a5, unsigned __int16 *a6, unsigned __int16 *a7, uint64_t *a8)
{
  v37 = 0;
  v13 = a2 - 1;
  v34 = a2 - 1;
  v14 = a5 + a4;
  if (a2)
  {
    v15 = 0;
    while (1)
    {
      v16 = (v13 + v15) / 2;
      v17 = stringmap_loc_ElemCompare(a1, a3, v14, v16, a6, &v37);
      if (v17)
      {
        break;
      }

      if (v37 < 0)
      {
        v15 = v16 + 1;
      }

      if (v37 >= 1)
      {
        v13 = v16 - 1;
      }

      if (v15 > v13)
      {
        goto LABEL_11;
      }
    }

    v23 = v17;
    v15 = (v13 + v15) / 2;
LABEL_21:
    v33 = a7;
    if (v15 < 1)
    {
      v26 = v15;
    }

    else
    {
      v25 = v15 + 1;
      v26 = v15;
      do
      {
        if (!stringmap_loc_ElemsCompare(a1, a3, v14, v26, v25 - 2, &v37))
        {
          break;
        }

        v27 = stringmap_loc_ElemCompare(a1, a3, v14, v25 - 2, a6, &v37);
        if (v27 > v23)
        {
          v26 = v25 - 2;
          v23 = v27;
        }

        --v25;
      }

      while (v25 > 1);
    }

    if (v15 < v34)
    {
      v28 = v15 + 1;
      do
      {
        if (!stringmap_loc_ElemsCompare(a1, a3, v14, v26, v28, &v37))
        {
          break;
        }

        v29 = stringmap_loc_ElemCompare(a1, a3, v14, v28, a6, &v37);
        if (v29 > v23)
        {
          v26 = v28;
          v23 = v29;
        }

        ++v28;
      }

      while (a2 != v28);
    }

    result = 0;
    v30 = v26 * v14;
    v31 = a3 + v30 + a4;
    v32 = a3 + 2 * v30 + 2 * a4;
    if (!a1)
    {
      v32 = v31;
    }

    *a8 = v32;
    *v33 = v23;
  }

  else
  {
    v15 = 0;
LABEL_11:
    v18 = (v15 - 1) * v14;
    while (1)
    {
      v19 = __OFSUB__(v15, 1);
      if (--v15 < 0 != v19)
      {
        return 2317361172;
      }

      if (a1)
      {
        v20 = *(a3 + 2 * v18);
        v21 = *a6;
      }

      else
      {
        v20 = *(a3 + v18);
        v21 = *a6;
      }

      if (v20 != v21)
      {
        return 2317361172;
      }

      v22 = stringmap_loc_ElemCompare(a1, a3, v14, v15, a6, &v37);
      v18 -= v14;
      if (v22)
      {
        v23 = v22;
        goto LABEL_21;
      }
    }
  }

  return result;
}

uint64_t stringmap_reader_WMapToken(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3, uint64_t *a4)
{
  v4 = 2317361159;
  if (a1 && a2 && a3 && a4)
  {
    *a3 = 0;
    *a4 = 0;
    v6 = *(a1 + 48);
    if (v6)
    {
      v4 = 2317361153;
      if (*(a1 + 32) == 1)
      {
        return stringmap_loc_MapToken(1, *(a1 + 40), v6, *(a1 + 36), *(a1 + 38), a2, a3, a4);
      }
    }

    else
    {
      return 2317361153;
    }
  }

  return v4;
}

uint64_t stringmap_reader_ReverseMapToken(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3, uint64_t *a4)
{
  v4 = 2317361159;
  if (a1 && a2 && a3 && a4)
  {
    *a3 = 0;
    *a4 = 0;
    if (*(a1 + 72))
    {
      v4 = 2317361153;
      if (!*(a1 + 32))
      {
        return stringmap_loc_MapToken(0, *(a1 + 40), *(a1 + 48), *(a1 + 38), *(a1 + 36), a2, a3, a4);
      }
    }

    else
    {
      return 2317361153;
    }
  }

  return v4;
}

uint64_t stringmap_reader_WReverseMapToken(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3, uint64_t *a4)
{
  v4 = 2317361159;
  if (a1 && a2 && a3 && a4)
  {
    *a3 = 0;
    *a4 = 0;
    if (*(a1 + 72))
    {
      v4 = 2317361153;
      if (*(a1 + 32) == 1)
      {
        return stringmap_loc_MapToken(1, *(a1 + 40), *(a1 + 48), *(a1 + 38), *(a1 + 36), a2, a3, a4);
      }
    }

    else
    {
      return 2317361153;
    }
  }

  return v4;
}

uint64_t stringmap_reader_MapGetRawData(uint64_t a1, _DWORD *a2, void *a3)
{
  result = 2317361159;
  if (a1 && a2 && a3)
  {
    *a2 = 0;
    *a3 = 0;
    v5 = *(a1 + 48);
    if (v5)
    {
      result = 2317361153;
      if (!*(a1 + 32))
      {
        result = 0;
        *a2 = (*(a1 + 38) + *(a1 + 36)) * *(a1 + 40);
        *a3 = v5;
      }
    }

    else
    {
      return 2317361153;
    }
  }

  return result;
}

uint64_t stringmap_loc_ElemCompare(int a1, uint64_t a2, int a3, int a4, unsigned __int16 *a5, int *a6)
{
  v6 = a3 * a4;
  if (a1)
  {
    return stringmap_loc_WCompare((a2 + 2 * v6), a5, a6);
  }

  else
  {
    return stringmap_loc_Compare((a2 + v6), a5, a6);
  }
}

uint64_t stringmap_loc_ElemsCompare(int a1, uint64_t a2, int a3, int a4, int a5, int *a6)
{
  v6 = a3 * a4;
  v7 = a3 * a5;
  if (a1)
  {
    return stringmap_loc_WCompare((a2 + 2 * v6), (a2 + 2 * v7), a6);
  }

  else
  {
    return stringmap_loc_Compare((a2 + v6), (a2 + v7), a6);
  }
}

uint64_t stringmap_loc_WCompare(_WORD *a1, unsigned __int16 *a2, _DWORD *a3)
{
  v3 = *a1;
  v4 = *a2;
  if (*a1)
  {
    v5 = v3 == v4;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v8 = a2 + 1;
    v7 = a1;
    do
    {
      v9 = v7[1];
      ++v7;
      v3 = v9;
      v11 = *v8++;
      v10 = v11;
      if (v3)
      {
        v12 = v3 == v10;
      }

      else
      {
        v12 = 0;
      }
    }

    while (v12);
    v6 = v3 - v10;
  }

  else
  {
    v6 = v3 - v4;
    LODWORD(v7) = a1;
  }

  *a3 = v6;
  v13 = (v7 - a1) >> 1;
  if (v3)
  {
    return 0;
  }

  else
  {
    return v13;
  }
}

uint64_t stringmap_loc_Compare(unsigned __int8 *a1, unsigned __int8 *a2, int *a3)
{
  v3 = a1;
  v4 = *a1 - *a2;
  *a3 = v4;
  if (!v4)
  {
    v5 = a2 + 1;
    v3 = a1;
    do
    {
      if (!*v3)
      {
        break;
      }

      v7 = *++v3;
      v6 = v7;
      v8 = *v5++;
      v9 = v6 - v8;
      *a3 = v9;
    }

    while (!v9);
  }

  v10 = *v3;
  v11 = v3 - a1;
  if (v10)
  {
    return 0;
  }

  return v11;
}

uint64_t InitRsrcFunction(_WORD *a1, int a2, void *a3)
{
  NullHandle = safeh_GetNullHandle();
  if (safeh_HandlesEqual(a1, a2, NullHandle, v7))
  {
    v8 = 0;
    goto LABEL_3;
  }

  v8 = 2170560520;
  result = safeh_HandleCheck(a1, a2, 7777, 416);
  if ((result & 0x80000000) != 0)
  {
    if ((result & 0x1FFF) == 8)
    {
      v8 = 2170560520;
    }

    else
    {
      v8 = result;
    }

    goto LABEL_3;
  }

  *a3 = a1;
  if (!a1 || *a1 != 7777)
  {
LABEL_3:
    *a3 = &g_NullResource;
    return v8;
  }

  return result;
}

uint64_t rsrc_Open(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = 2170560518;
  if (a5)
  {
    v11 = heap_Calloc(a1, 416, 1);
    if (v11)
    {
      v5 = 0;
      *a5 = v11;
      *(a5 + 8) = 7777;
      *v11 = 7777;
      *(v11 + 8) = a1;
      *(v11 + 16) = a2;
      *(v11 + 24) = a3;
      *(v11 + 32) = a4;
    }

    else
    {
      FreeRsrc(0);
      *a5 = 0;
      *(a5 + 8) = 0;
      return 2170560522;
    }
  }

  return v5;
}

void *FreeRsrc(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = result[1];
    cstdlib_memset(result, 0, 0x1A0uLL);

    return heap_Free(v2, v1);
  }

  return result;
}

uint64_t rsrc_Close(_WORD *a1, int a2)
{
  v4 = 0;
  inited = InitRsrcFunction(a1, a2, &v4);
  if ((inited & 0x80000000) == 0)
  {
    FreeRsrc(v4);
  }

  return inited;
}

uint64_t Utf8_DepesLengthInBytesUtf8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  result = 0;
  v4 = a2;
  do
  {
    v6 = *a1++;
    v5 = v6;
    if (v6 <= 0xAFuLL)
    {
      v7 = UNICODE_TO_DEPES[v5];
      if (v7 < 0x800)
      {
        v8 = 2;
      }

      else
      {
        v8 = 3;
      }

      if (v7 < 0x80)
      {
        v9 = 1;
      }

      else
      {
        v9 = v8;
      }

      result = (v9 + result);
    }

    --v4;
  }

  while (v4);
  return result;
}

uint64_t utf8_DepesToUtf8(uint64_t a1, unsigned int a2, _DWORD *a3, uint64_t a4, unsigned int a5, unsigned int *a6, _DWORD *a7)
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  LODWORD(v10) = 0;
  if (!a2 || !a5)
  {
LABEL_22:
    if (!a3)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v10 = 0;
  v7 = 0;
  while (1)
  {
    if (a7)
    {
      *a7 = v10;
      a7[1] = v7;
      a7 += 2;
    }

    v11 = *(a1 + v10);
    if (v11 > 0xAF)
    {
      goto LABEL_19;
    }

    v12 = UNICODE_TO_DEPES[v11];
    v13 = v12 < 0x800 ? 2 : 3;
    v14 = v12 < 0x80 ? 1 : v13;
    if (v14 + v7 > a5)
    {
      break;
    }

    if (v14 != 1)
    {
      if (v14 != 2)
      {
        *(a4 + v7 + 2) = v12 & 0x3F | 0x80;
        v12 >>= 6;
      }

      *(a4 + v7 + 1) = v12 & 0x3F | 0x80;
      v12 >>= 6;
    }

    *(a4 + v7) = UTF8_FIRST_BYTE_MARK[v14] | v12;
    v7 += v14;
LABEL_19:
    if (++v10 >= a2 || v7 >= a5)
    {
      v8 = 0;
      v9 = 0;
      goto LABEL_22;
    }
  }

  LODWORD(v10) = v10 + 1;
  *(a4 + v7) = 0;
  v8 = 1;
  v9 = -1950343159;
  if (a3)
  {
LABEL_23:
    *a3 = v10;
  }

LABEL_24:
  if (a6)
  {
    *a6 = v7;
  }

  if (v10 == a2)
  {
    v15 = 1;
  }

  else
  {
    v15 = v8;
  }

  if (v15)
  {
    return v9;
  }

  else
  {
    return 2344624137;
  }
}

uint64_t utf8_Utf8ToDepes(uint64_t a1, unsigned int a2, unsigned int *a3, uint64_t a4, unsigned int a5, unsigned int *a6, unsigned int *a7)
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  if (a2 && a5)
  {
    v7 = 0;
    v10 = 0;
    while (1)
    {
      v11 = *(a1 + v10);
      v12 = UTF8_TRAILING_BYTES[*(a1 + v10)];
      v8 = v10 + v12 <= a2;
      if (v10 + v12 > a2)
      {
        v9 = 197140487;
        goto LABEL_40;
      }

      if ((UTF8_BYTE_INDICATOR_TEST[v12] & v11) != UTF8_BYTE_INDICATOR[v12])
      {
        break;
      }

      if (a7)
      {
        *a7 = v10;
        a7[1] = v7;
        a7 += 2;
        v11 = *(a1 + v10);
      }

      v13 = v10 + 1;
      if (v12 > 1)
      {
        if (v12 == 2)
        {
          v16 = *(a1 + v13);
          if (v11 == 224 && v16 < 0xA0 || (v16 & 0xC0) != 0x80 || (v17 = *(a1 + v10 + 2), (v17 & 0xC0) != 0x80))
          {
LABEL_37:
            v9 = -1950342907;
            ++v10;
            goto LABEL_40;
          }

          v10 += 3;
          v11 = (v16 << 6) + (v11 << 12) + v17;
        }

        else
        {
          if (v12 != 3)
          {
            goto LABEL_37;
          }

          v15 = *(a1 + v13);
          if (v11 == 244)
          {
            if (v15 > 0x8F)
            {
              goto LABEL_37;
            }
          }

          else if (v11 == 240 && v15 < 0x90)
          {
            goto LABEL_37;
          }

          if ((v15 & 0xC0) != 0x80)
          {
            goto LABEL_37;
          }

          v18 = *(a1 + v10 + 2);
          if ((v18 & 0xC0) != 0x80)
          {
            goto LABEL_37;
          }

          v19 = *(a1 + v10 + 3);
          if ((v19 & 0xC0) != 0x80)
          {
            goto LABEL_37;
          }

          v10 += 4;
          v11 = v19 + (((v15 << 6) + (v11 << 12) + v18) << 6);
        }
      }

      else if (v12)
      {
        v14 = *(a1 + v13);
        if ((v14 & 0xC0) != 0x80)
        {
          goto LABEL_37;
        }

        v10 += 2;
        v11 = v14 + (v11 << 6);
      }

      else
      {
        ++v10;
      }

      v20 = 0;
      v21 = v11 - UTF8_OFFSETS[v12];
      while (v21 != UNICODE_TO_DEPES[v20])
      {
        if (++v20 == 176)
        {
          goto LABEL_34;
        }
      }

      *(a4 + v7++) = v20;
LABEL_34:
      v8 = 0;
      v9 = 0;
      if (v10 >= a2 || v7 >= a5)
      {
        goto LABEL_41;
      }
    }

    v9 = -1950342907;
LABEL_40:
    *(a4 + v7) = 0;
  }

LABEL_41:
  if (a3)
  {
    *a3 = v10;
  }

  if (a6)
  {
    *a6 = v7;
  }

  if (v10 == a2 || v8)
  {
    return v9;
  }

  else
  {
    return 2344624137;
  }
}

uint64_t utf8_Utf8ToUtf16(uint64_t a1, unsigned int a2, unsigned int *a3, uint64_t a4, unsigned int a5, _DWORD *a6, unsigned int *a7)
{
  v7 = 0;
  LODWORD(v8) = 0;
  if (!a2)
  {
    v9 = 0;
    v10 = 0;
    goto LABEL_44;
  }

  v9 = 0;
  v10 = 0;
  if (!a5)
  {
    goto LABEL_44;
  }

  v8 = 0;
  v10 = 0;
  while (1)
  {
    v11 = *(a1 + v10);
    v12 = UTF8_TRAILING_BYTES[*(a1 + v10)];
    v7 = v10 + v12 <= a2;
    if (v10 + v12 > a2)
    {
      v9 = 197140487;
      goto LABEL_43;
    }

    if ((UTF8_BYTE_INDICATOR_TEST[v12] & v11) != UTF8_BYTE_INDICATOR[v12])
    {
      v9 = -1950342907;
      goto LABEL_43;
    }

    if (a7)
    {
      *a7 = v10;
      a7[1] = v10;
      a7 += 2;
      v11 = *(a1 + v10);
    }

    v13 = v10 + 1;
    if (v12 > 1)
    {
      if (v12 == 2)
      {
        v16 = *(a1 + v13);
        if (v11 == 224 && v16 < 0xA0 || (v16 & 0xC0) != 0x80 || (v17 = *(a1 + v10 + 2), (v17 & 0xC0) != 0x80))
        {
LABEL_40:
          v9 = -1950342907;
          ++v10;
          goto LABEL_43;
        }

        v10 += 3;
        v11 = (v16 << 6) + (v11 << 12) + v17;
      }

      else
      {
        if (v12 != 3)
        {
          goto LABEL_40;
        }

        v15 = *(a1 + v13);
        if (v11 == 244)
        {
          if (v15 > 0x8F)
          {
            goto LABEL_40;
          }
        }

        else if (v11 == 240 && v15 < 0x90)
        {
          goto LABEL_40;
        }

        if ((v15 & 0xC0) != 0x80)
        {
          goto LABEL_40;
        }

        v18 = *(a1 + v10 + 2);
        if ((v18 & 0xC0) != 0x80)
        {
          goto LABEL_40;
        }

        v19 = *(a1 + v10 + 3);
        if ((v19 & 0xC0) != 0x80)
        {
          goto LABEL_40;
        }

        v10 += 4;
        v11 = v19 + (((v15 << 6) + (v11 << 12) + v18) << 6);
      }
    }

    else if (v12)
    {
      v14 = *(a1 + v13);
      if ((v14 & 0xC0) != 0x80)
      {
        goto LABEL_40;
      }

      v10 += 2;
      v11 = v14 + (v11 << 6);
    }

    else
    {
      ++v10;
    }

    v20 = v11 - UTF8_OFFSETS[v12];
    if (!HIWORD(v20))
    {
      if ((v20 & 0xF800) == 0xD800)
      {
        goto LABEL_36;
      }

      v21 = v8;
      v22 = 1;
      goto LABEL_35;
    }

    if (HIWORD(v20) > 0x10u)
    {
      goto LABEL_36;
    }

    v21 = v8 + 1;
    if (v8 + 1 >= a5)
    {
      break;
    }

    *(a4 + 2 * v8) = ((v20 + 67043328) >> 10) - 10240;
    LOWORD(v20) = v20 & 0x3FF | 0xDC00;
    v22 = 2;
LABEL_35:
    *(a4 + 2 * v21) = v20;
    v8 += v22;
LABEL_36:
    v7 = 0;
    v9 = 0;
    if (v10 >= a2 || v8 >= a5)
    {
      goto LABEL_44;
    }
  }

  v9 = -1950343159;
LABEL_43:
  *(a4 + 2 * v8) = 0;
LABEL_44:
  if (a3)
  {
    *a3 = v10;
  }

  if (a6)
  {
    *a6 = v8;
  }

  if (v10 == a2 || v7)
  {
    return v9;
  }

  else
  {
    return 2344624137;
  }
}

uint64_t utf8_Utf8To16bit(const char *a1, uint64_t a2)
{
  v6 = 0;
  v4 = cstdlib_strlen(a1);
  utf8_Utf8ToUtf16(a1, v4 + 1, 0, a2, 0xFFFFFFFF, &v6, 0);
  return v6;
}

uint64_t utf8_Utf16ToUtf8(uint64_t a1, unsigned int a2, _DWORD *a3, uint64_t a4, unsigned int a5, unsigned int *a6, _DWORD *a7)
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  if (!a2 || !a5)
  {
LABEL_34:
    if (!a3)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  v11 = 0;
  v10 = 0;
  while (1)
  {
    v12 = *(a1 + 2 * v10);
    v13 = v12 & 0xFC00;
    if (v13 == 55296)
    {
      v14 = *(a1 + 2 * (v10 + 1));
      if ((v14 & 0xFC00) != 0xDC00)
      {
        v9 = -1950342907;
        goto LABEL_33;
      }

      v12 = v14 + (v12 << 10) - 56613888;
      v10 += 2;
    }

    if (v12 < 0x10000)
    {
      v15 = 3;
    }

    else
    {
      v15 = 4;
    }

    if (v12 < 0x800)
    {
      v15 = 2;
    }

    if (v12 >= 0x80)
    {
      v16 = v15;
    }

    else
    {
      v16 = 1;
    }

    v7 = v16 + v11;
    if (v16 + v11 > a5)
    {
      v9 = -1950343159;
LABEL_33:
      *(a4 + v11) = 0;
      v8 = 1;
      v7 = v11;
      goto LABEL_34;
    }

    if (a7)
    {
      v17 = v16;
      do
      {
        *a7++ = 2 * v10;
        --v17;
      }

      while (v17);
    }

    if (v13 != 55296)
    {
      v12 = *(a1 + 2 * v10++);
    }

    if (v16 > 2)
    {
      if (v16 != 3)
      {
        *(a4 + v11 + 3) = v12 & 0x3F | 0x80;
        v12 >>= 6;
      }

      *(a4 + v11 + 2) = v12 & 0x3F | 0x80;
      v12 >>= 6;
LABEL_27:
      *(a4 + v11 + 1) = v12 & 0x3F | 0x80;
      v12 >>= 6;
      goto LABEL_28;
    }

    if (v16 != 1)
    {
      goto LABEL_27;
    }

LABEL_28:
    v8 = 0;
    *(a4 + v11) = UTF8_FIRST_BYTE_MARK[v16] | v12;
    if (v10 >= a2)
    {
      break;
    }

    v11 += v16;
    v9 = 0;
    if (v7 >= a5)
    {
      goto LABEL_34;
    }
  }

  v9 = 0;
  if (a3)
  {
LABEL_35:
    *a3 = 2 * v10;
  }

LABEL_36:
  if (a6)
  {
    *a6 = v7;
  }

  if (v10 == a2)
  {
    v18 = 1;
  }

  else
  {
    v18 = v8;
  }

  if (v18)
  {
    return v9;
  }

  else
  {
    return 2344624137;
  }
}

uint64_t utf8_16bitToUtf8(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v4 = LH_wcslen(a1);
  utf8_Utf16ToUtf8(a1, v4 + 1, 0, a2, 0xFFFFFFFF, &v6, 0);
  return v6;
}

uint64_t Utf8_Utf8NbrOfSymbols(const char *a1)
{
  v1 = a1;
  v2 = *a1;
  v3 = cstdlib_strlen(a1);
  if (!v2)
  {
    return 1;
  }

  v4 = &v1[v3];
  v5 = 2;
  do
  {
    result = v5;
    v1 += UTF8_TRAILING_BYTES[v2] + 1;
    if (v1 >= v4)
    {
      break;
    }

    v2 = *v1;
    v5 = (v5 + 1);
  }

  while (*v1);
  return result;
}

uint64_t Utf8_LengthInBytes(unsigned __int8 *a1, int a2)
{
  LODWORD(v2) = a1;
  if (a2 >= 1)
  {
    v2 = a1;
    do
    {
      v2 += UTF8_BYTES[*v2];
      --a2;
    }

    while (a2);
  }

  return (v2 - a1);
}

uint64_t Utf8_LengthInUtf8chars(unsigned __int8 *a1, int a2)
{
  if (a2 < 1)
  {
    return 0;
  }

  v2 = 0;
  LODWORD(v3) = 0;
  do
  {
    v4 = UTF8_BYTES[*a1];
    a1 += v4;
    v2 += v4;
    v3 = (v3 + 1);
  }

  while (v2 < a2);
  return v3;
}

uint64_t utf8_16BitNbrOfUtf8Chars(uint64_t result)
{
  v1 = *result;
  if (!*result)
  {
    return 1;
  }

  v2 = (result + 2);
  LODWORD(result) = 1;
  do
  {
    if (v1 < 0x800)
    {
      v3 = 2;
    }

    else
    {
      v3 = 3;
    }

    if (v1 < 0x80)
    {
      v4 = 1;
    }

    else
    {
      v4 = v3;
    }

    result = (v4 + result);
    v5 = *v2++;
    v1 = v5;
  }

  while (v5);
  return result;
}

uint64_t utf8_CheckValid(uint64_t result, unsigned int a2)
{
  if (result)
  {
    if (a2)
    {
      for (i = 0; i < a2; i += v6)
      {
        v3 = *result;
        if (!*result)
        {
          return 1;
        }

        if ((UTF8_BYTE_INDICATOR_TEST[UTF8_TRAILING_BYTES[*result]] & *result) != UTF8_BYTE_INDICATOR[UTF8_TRAILING_BYTES[*result]] || i + UTF8_TRAILING_BYTES[*result] >= a2)
        {
          return 0;
        }

        if (v3 > 0xC1)
        {
          if (v3 > 0xDF)
          {
            if (v3 == 224)
            {
              if ((*(result + 1) & 0xE0) != 0xA0)
              {
                return 0;
              }

              goto LABEL_24;
            }

            if ((v3 < 0xED || (v3 & 0xFE) == 0xEE) && *(result + 1) <= -65 && *(result + 2) < -64)
            {
              goto LABEL_25;
            }

            if (v3 == 240)
            {
              if (*(result + 1) - 144 > 0x2F)
              {
                return 0;
              }
            }

            else
            {
              if (v3 == 237)
              {
                if (*(result + 1) > -97)
                {
                  return 0;
                }

LABEL_24:
                if (*(result + 2) >= -64)
                {
                  return 0;
                }

LABEL_25:
                v5 = 3;
                v6 = 3;
                goto LABEL_36;
              }

              if (v3 - 241 > 2)
              {
                if (v3 != 244 || *(result + 1) > -113)
                {
                  return 0;
                }
              }

              else if (*(result + 1) > -65)
              {
                return 0;
              }
            }

            if (*(result + 2) > -65 || *(result + 3) >= -64)
            {
              return 0;
            }

            v5 = 4;
            v6 = 4;
          }

          else
          {
            if (*(result + 1) >= -64)
            {
              return 0;
            }

            v5 = 2;
            v6 = 2;
          }
        }

        else
        {
          v5 = 1;
          v6 = 1;
        }

LABEL_36:
        result += v5;
      }
    }

    return 1;
  }

  return result;
}