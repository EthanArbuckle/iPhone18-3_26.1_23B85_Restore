uint64_t hlp_Align(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6)
{
  StringList_GetCountStrings(a2);
  StringList_GetCountStrings(a3);
  v24 = a6;
  if (a6)
  {
    v25 = *(a6 + 4);
  }

  else
  {
    v25 = 0;
  }

  v10 = 0;
  result = 0;
  v12 = 0;
  v13 = 0;
  v26 = 0;
  v14 = 0;
  v15 = 0;
  while (1)
  {
    if (v24 && v25 > v10)
    {
      v16 = (*(v24 + 8) + 4 * v12);
      v17 = *v16 + v26;
      v18 = v16[1] + v13;
    }

    else
    {
      v17 = v26 + a4;
      v18 = v13 + a5;
    }

    if (v15 < v17)
    {
      v19 = (v18 + ~v14);
      if (v19 >= (v17 + ~v15))
      {
        v19 = (v17 + ~v15);
      }

      v20 = v14 + v19;
      v21 = v15 + v19;
      if (v14 < v18)
      {
        v15 = v21 + 1;
        v14 = v20 + 1;
      }
    }

    if (v15 < v17)
    {
      break;
    }

LABEL_20:
    if (v14 < v18)
    {
      v26 = v18 + v26 - v14;
      while (1)
      {
        result = StringList_InsertAt(a2, v15, "*");
        if (result)
        {
          result = LH_ERROR_to_VERROR(result);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }
        }

        if (a1)
        {
          result = StringList_InsertAt(a1, v15, "*");
          if (result)
          {
            result = LH_ERROR_to_VERROR(result);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }
          }
        }

        ++v15;
        if (++v14 >= v18)
        {
          v14 = v18;
          break;
        }
      }
    }

    ++v15;
    ++v14;
    v10 = ++v12;
    if (v12 > v25)
    {
      return result;
    }
  }

  v13 = v17 + v13 - v15;
  while (1)
  {
    result = StringList_InsertAt(a3, v14, "*");
    if (result)
    {
      result = LH_ERROR_to_VERROR(result);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }
    }

    ++v14;
    if (++v15 >= v17)
    {
      v15 = v17;
      goto LABEL_20;
    }
  }
}

uint64_t CLM_MergeSubsequentInsertionAndDeletions(uint64_t a1, uint64_t a2)
{
  v4 = 2347769856;
  CountStrings = StringList_GetCountStrings(a1);
  if (CountStrings == StringList_GetCountStrings(a2))
  {
    if (StringList_GetCountStrings(a1))
    {
      v6 = 0;
      v7 = 0;
      do
      {
        v8 = StringList_GetAt(a1, v7);
        if (!cstdlib_strcmp(v8, "*"))
        {
          v9 = StringList_GetAt(a2, v7);
          v10 = cstdlib_strcmp(v9, "*");
          if (v10 && v7)
          {
            v11 = v7 - 1;
            v12 = StringList_GetAt(a2, (v7 - 1));
            if (!cstdlib_strcmp(v12, "*"))
            {
              goto LABEL_15;
            }
          }

          else
          {
            v11 = v7;
            if (!v10)
            {
              goto LABEL_15;
            }
          }

          v11 = v6 + 1;
          if (v6 + 1 < StringList_GetCountStrings(a2))
          {
            v13 = StringList_GetAt(a2, (v6 + 1));
            if (!cstdlib_strcmp(v13, "*"))
            {
LABEL_15:
              StringList_RemoveAt(a1, v7);
              StringList_RemoveAt(a2, v11);
              goto LABEL_6;
            }
          }
        }

        ++v7;
LABEL_6:
        v6 = v7;
      }

      while (v7 < StringList_GetCountStrings(a1));
    }

    v14 = StringList_GetCountStrings(a1);
    if (v14 == StringList_GetCountStrings(a2))
    {
      return 0;
    }

    else
    {
      return 2347769856;
    }
  }

  return v4;
}

uint64_t CLM_PhonList_InsertAt(uint64_t a1, unsigned int a2, char *a3)
{
  result = StringList_InsertAt(a1, a2, a3);
  if (result)
  {

    return LH_ERROR_to_VERROR(result);
  }

  return result;
}

uint64_t CLM_PhonList_Append(uint64_t a1, char *a2)
{
  result = StringList_Append(a1, a2);
  if (result)
  {

    return LH_ERROR_to_VERROR(result);
  }

  return result;
}

uint64_t hlp_CalcDistOfAnchorsInResult(unsigned __int16 *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = *a1;
  if (v1 == 0xFFFF)
  {
    return 0;
  }

  else
  {
    v2 = 0;
    v3 = 0;
    v4 = a1;
    do
    {
      v3 += (v1 - v4[1]) * (v1 - v4[1]);
      v4 = &a1[2 * ++v2];
      v1 = *v4;
    }

    while (v1 != 0xFFFF);
  }

  return v3;
}

uint64_t hlp_AppendCombinedResult(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t *a5, unsigned __int16 *a6)
{
  v12 = *a5;
  if (*a6)
  {
    v13 = 0;
    do
    {
      v14 = v13;
    }

    while (*(v12 + 8 * v13++));
    if (*a6 - 1 != v14)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v14 = 0;
  }

  v16 = heap_Realloc(*(a1 + 8), v12, 8 * *a6 + 16);
  *a5 = v16;
  if (v16)
  {
    v21 = *a6 + 2;
    *a6 = v21;
    if (v14 < v21)
    {
      v22 = v14;
      do
      {
        *(*a5 + 8 * v22++) = 0;
      }

      while (v21 != v22);
    }

LABEL_11:
    v24 = a2 != 65534 && a3 != 65534;
    v25 = v24;
    if (a4)
    {
      v25 = *(a4 + 4) + v24;
    }

    *(*a5 + 8 * v14) = heap_Calloc(*(a1 + 8), 1, 4 * v25 + 4);
    if (v24)
    {
      v26 = *(*a5 + 8 * v14);
      *v26 = a2;
      v26[1] = a3;
      v27 = 1;
      if (!a4)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v27 = 0;
      if (!a4)
      {
LABEL_27:
        result = 0;
        *(*(*a5 + 8 * v14) + 4 * v27) = -1;
        return result;
      }
    }

    if (*(a4 + 4))
    {
      v28 = 0;
      v29 = v27;
      v30 = 4 * v27;
      do
      {
        *(*(*a5 + 8 * v14) + v30 + 4 * v28) = *(*(a4 + 8) + 4 * v28);
        ++v28;
      }

      while (v28 < *(a4 + 4));
      LOWORD(v27) = v29 + v28;
    }

    goto LABEL_27;
  }

  log_OutPublic(*(a1 + 32), "CLM", 50000, 0, v17, v18, v19, v20, v32);
  return 2347769866;
}

uint64_t CLM_EnumerateLanguages(uint64_t a1, uint64_t *a2, unsigned int *a3, int a4, uint64_t a5, unsigned int a6, unsigned int a7)
{
  v7 = a7;
  v55 = *MEMORY[0x277D85DE8];
  v51 = 0;
  v50 = 0;
  v14 = 2347769856;
  v49 = 0;
  *a3 = 0;
  if (!CLM_FindNrOfLanguages(a1, a5, a6, a7, v54, 0x64u, v53, a3))
  {
    v15 = *a3;
    if (v15)
    {
      v16 = heap_Calloc(*(*(a1 + 24) + 8), v15, 24);
      *a2 = v16;
      if (!v16)
      {
        log_OutPublic(*(*(a1 + 24) + 32), "CLM", 50000, 0, v17, v18, v19, v20, v43);
        return 2347769866;
      }

      if (*a3)
      {
        v21 = 0;
        v45 = 0;
        v44 = v7;
        while (1)
        {
          cstdlib_strcpy((v16 + 24 * v21), &v54[4 * v21]);
          if (a4)
          {
            if (a4 != 1)
            {
              v29 = v53[v21];
              goto LABEL_13;
            }

            v22 = *(*(a1 + 24) + 8);
            v23 = v53[v21];
          }

          else
          {
            v22 = *(*(a1 + 24) + 8);
            v23 = v53[v21];
          }

          *(*a2 + 24 * v21 + 16) = heap_Calloc(v22, v23, 24);
          v28 = *a2 + 24 * v21;
          if (!*(v28 + 16))
          {
            v40 = 2347769866;
            v39 = 50000;
LABEL_34:
            log_OutPublic(*(*(a1 + 24) + 32), "CLM", v39, 0, v24, v25, v26, v27, v43);
            v41 = v40;
            goto LABEL_35;
          }

          v29 = v53[v21];
          *(v28 + 8) = v29;
LABEL_13:
          v51 = v7;
          if (v29)
          {
            v30 = 0;
            for (i = 0; i < v53[v21]; ++i)
            {
              LangRecord = CLM_FindLangRecord(a5, a6, &v51, (*a2 + 24 * v21));
              if (!LangRecord)
              {
                v39 = 50003;
                v40 = 2347769856;
                goto LABEL_34;
              }

              v33 = LangRecord;
              if (a4)
              {
                if (a4 == 1)
                {
                  v48 = 0;
                  *(*(*a2 + 24 * v21 + 16) + v30) = LangRecord;
                  *(*(*a2 + 24 * v21 + 16) + v30 + 8) = &LangRecord[cstdlib_strlen(LangRecord) + 1];
                  if (cstdlib_strlen(*(*(*a2 + 24 * v21 + 16) + v30 + 8)))
                  {
                    v34 = CLM_SplitWordInPhonemes(*(a1 + 24), *(*(*a2 + 24 * v21 + 16) + v30 + 8), v52, 0xC8u, 0, &v48);
                    if ((v34 & 0x80000000) != 0 || v48)
                    {
                      log_OutText(*(*(a1 + 24) + 32), "CLM", 1, 0, "WARNING CLM %s to %s : invalid mapping %s %s", v35, v36, v37, *a2 + 24 * v21);
                      v34 = 0;
                      v52[0] = 0;
                    }

                    v45 = v34;
                    v47 = 0;
                    memset(v46, 0, sizeof(v46));
                    Allocator = ooc_utils_createAllocator(v46, *(a1 + 32), *(a1 + 40));
                    if (Allocator || (Allocator = PNEW_StringList_Con(v46, *(a1 + 32), *(a1 + 40), (*(*a2 + 24 * v21 + 16) + v30 + 16))) != 0 || (Allocator = StringList_FromSplitString(*(*(*a2 + 24 * v21 + 16) + v30 + 16), v52, 0x20u)) != 0)
                    {
                      v45 = LH_ERROR_to_VERROR(Allocator);
                      goto LABEL_37;
                    }
                  }
                }

                else
                {
                  *(*a2 + 24 * v21 + 8) = LangRecord;
                }
              }

              else
              {
                *(*(*a2 + 24 * v21 + 16) + v30) = LangRecord;
                *(*(*a2 + 24 * v21 + 16) + v30 + 16) = &LangRecord[cstdlib_strlen(LangRecord) + 1];
                *(*(*a2 + 24 * v21 + 16) + v30 + 8) = nuance_pcre_compile(*(a1 + 168), *(a1 + 176), v33, 0, &v50, &v49, 0);
              }

              ++v51;
              v30 += 24;
            }
          }

          v16 = *a2;
          *(*a2 + 24 * v21++ + 4) = a4;
          v7 = v44;
          if (v21 >= *a3)
          {
LABEL_37:
            v41 = v45;
            v14 = v45;
            if ((v45 & 0x80000000) == 0)
            {
              return v14;
            }

LABEL_35:
            v14 = v41;
            CLM_EmptyLanguageStruct(a1, a2, v21);
            return v14;
          }
        }
      }
    }

    return 0;
  }

  return v14;
}

BOOL CLM_FindNrOfLanguages(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, void *a5, unsigned int a6, void *a7, _DWORD *a8)
{
  v27 = 0;
  *a8 = 0;
  cstdlib_memset(__b, 0, 4uLL);
  cstdlib_memset(a5, 0, 4 * a6);
  cstdlib_memset(a7, 0, 4 * a6);
  if (a4 <= a3)
  {
    do
    {
      if (a4 >= a3)
      {
        break;
      }

      cstdlib_strncpy(__b, (a2 + a4), 3uLL);
      result = CLM_IsSeperationRecord(a2, a4);
      if (!result)
      {
        return result;
      }

      if (CLM_FindLanguageInArray(a5, a6, a7, __b, &v27))
      {
        if (v27 >= a6)
        {
          goto LABEL_2;
        }

        cstdlib_strcpy(a5 + 4 * v27, __b);
        ++*a8;
      }

      v21 = 0;
      v22 = (a2 + a4);
      v23 = a3 - 1 - a4;
      do
      {
        if (!*v22++)
        {
          ++v21;
        }

        ++a4;
      }

      while (v21 <= 1 && v23-- != 0);
    }

    while (a3 != a4);
    return 0;
  }

  else
  {
LABEL_2:
    log_OutPublic(*(*(a1 + 24) + 32), "CLM", 50003, 0, v16, v17, v18, v19, v26);
    return 1;
  }
}

uint64_t CLM_FindLangRecord(uint64_t a1, unsigned int a2, unsigned int *a3, const char *a4)
{
  cstdlib_memset(__b, 0, 4uLL);
  cstdlib_strncpy(__b, (a1 + *a3), 3uLL);
  if (cstdlib_strcmp(a4, __b))
  {
    v8 = 0;
    do
    {
      v9 = *a3;
      if (a2 <= v9 || v8)
      {
        break;
      }

      v11 = 0;
      v12 = a2 - v9;
      do
      {
        if (!*(a1 + v9))
        {
          ++v11;
        }

        v13 = v11 > 1 || a2 - 1 == v9;
        *a3 = ++v9;
        --v12;
      }

      while (!v13);
      v8 = v12 == 0;
      cstdlib_strncpy(__b, (a1 + v9), 3uLL);
    }

    while (cstdlib_strcmp(a4, __b));
  }

  if (*a3 >= a2)
  {
    return 0;
  }

  else
  {
    return a1 + *a3 + 3;
  }
}

void *CLM_EmptyLanguageStruct(void *result, uint64_t *a2, unsigned int a3)
{
  if (a2)
  {
    v4 = *a2;
    if (*a2)
    {
      v5 = result;
      if (a3)
      {
        v6 = 0;
        v7 = a3;
        while (1)
        {
          v8 = v4 + 24 * v6;
          v9 = *(v8 + 4);
          if (v9 == 1)
          {
            break;
          }

          if (!v9)
          {
            v12 = *(v8 + 8);
            v11 = (v8 + 8);
            v10 = v12;
            v14 = (v11 + 2);
            v13 = *(v11 + 1);
            if (v12)
            {
              v15 = 0;
              v16 = 8;
              do
              {
                if (*(v13 + v16))
                {
                  heap_Free(*(v5[3] + 8), *(v13 + v16));
                  v13 = *v14;
                  *(*v14 + v16) = 0;
                  v10 = *v11;
                }

                ++v15;
                v16 += 24;
              }

              while (v15 < v10);
            }

LABEL_20:
            heap_Free(*(v5[3] + 8), v13);
            *v14 = 0;
            *v11 = 0;
          }

          if (++v6 == v7)
          {
            goto LABEL_22;
          }
        }

        v18 = *(v8 + 8);
        v11 = (v8 + 8);
        v17 = v18;
        v14 = (v11 + 2);
        v13 = *(v11 + 1);
        if (v18)
        {
          v19 = 0;
          v20 = 16;
          do
          {
            if (*(v13 + v20))
            {
              v22 = 0;
              memset(v21, 0, sizeof(v21));
              if (!ooc_utils_createAllocator(v21, v5[4], v5[5]))
              {
                OOC_PlacementDeleteObject(v21, *(*v14 + v20));
              }

              v13 = *v14;
              *(*v14 + v20) = 0;
              v17 = *v11;
            }

            ++v19;
            v20 += 24;
          }

          while (v19 < v17);
        }

        goto LABEL_20;
      }

LABEL_22:
      result = heap_Free(*(v5[3] + 8), v4);
      *a2 = 0;
    }
  }

  return result;
}

BOOL CLM_IsSeperationRecord(uint64_t a1, unsigned int a2)
{
  cstdlib_memset(__b, 0, 4uLL);
  cstdlib_strncpy(__b, (a1 + a2), 3uLL);
  return cstdlib_strcmp("dum", __b) || *(a1 + a2 + 3) || *(a1 + a2 + 4);
}

BOOL CLM_FindLanguageInArray(char *__s2, unsigned int a2, uint64_t a3, char *__s1, _DWORD *a5)
{
  v9 = 0;
  if (a2 <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = a2;
  }

  while (cstdlib_strcmp(__s1, __s2) && *__s2)
  {
    ++v9;
    __s2 += 4;
    if (v10 == v9)
    {
      return 1;
    }
  }

  *a5 = v9;
  ++*(a3 + 4 * v9);
  return *__s2 == 0;
}

BOOL CLM_FindNextRecordInBuffer(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  v3 = *a3;
  if (v3 <= a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = v3;
  }

  if (v3 < a2)
  {
    v5 = 0;
    v6 = ~v3 + v4;
    v7 = (a1 + v3);
    do
    {
      v8 = *v7++;
      LODWORD(v3) = v3 + 1;
      *a3 = v3;
      if (!v8)
      {
        ++v5;
      }
    }

    while (v5 <= 1 && v6-- != 0);
  }

  return v3 == a2;
}

uint64_t CLM_FindSeperationRecord(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  LODWORD(v6) = *a3;
  while (1)
  {
    result = CLM_IsSeperationRecord(a1, v6);
    v6 = *a3;
    if (!result)
    {
      break;
    }

    if (v6 <= a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = v6;
    }

    if (v6 < a2)
    {
      v9 = 0;
      v10 = (a1 + v6);
      v11 = ~v6 + v8;
      do
      {
        v12 = *v10++;
        LODWORD(v6) = v6 + 1;
        *a3 = v6;
        if (!v12)
        {
          ++v9;
        }
      }

      while (v9 <= 1 && v11-- != 0);
    }

    if (v6 == a2)
    {
      return 2347769856;
    }
  }

  *a3 = v6 + 5;
  return result;
}

uint64_t CLM_PreCompileSplitWordRegEx(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20 = *MEMORY[0x277D85DE8];
  v13[1] = 0;
  strcpy(v16, "[#\\$&'\\.789=\\?@A-Z^_a-z]");
  strcpy(v13, "\\*");
  strcpy(v15, "(\\\\)?[!\\?,\\.;:]");
  if (a1[23] || (v14 = 0, __sprintf_chk(v19, 0, 0x1F4uLL, "(%s%s*(%%%s|%%%s+){0,}(&%s%s*(%%%s|%%%s+){0,}){0,})|(%s%s)", v16, v17, v18, v18, v16, v17, v18, v18, v13, v15), v10 = nuance_pcre_compile(a1[21], a1[22], v19, 0, &v14, &v13[1], 0), v9 = 0, (a1[23] = v10) == 0))
  {
    v9 = 2347769856;
    log_OutPublic(*(a1[3] + 32), "CLM", 50003, 0, a5, a6, a7, a8, v12);
  }

  return v9;
}

void *CLM_FreePreCompiledSplitWordRegEx(void *result)
{
  v1 = result[23];
  if (v1)
  {
    v2 = result;
    result = heap_Free(*(result[3] + 8), v1);
    v2[23] = 0;
  }

  return result;
}

uint64_t CLM_PreCompileReplacementRegEx(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *MEMORY[0x277D85DE8];
  v13 = 0;
  strcpy(v15, "(^|[^\\\\])([\\$][0-9]+)");
  if (a1[24] || (v14 = 0, v10 = nuance_pcre_compile(a1[21], a1[22], v15, 0, &v14, &v13, 0), v9 = 0, (a1[24] = v10) == 0))
  {
    v9 = 2347769856;
    log_OutPublic(*(a1[3] + 32), "CLM", 50003, 0, a5, a6, a7, a8, v12);
  }

  return v9;
}

void *CLM_FreePreCompiledReplacementRegEx(void *result)
{
  v1 = result[24];
  if (v1)
  {
    v2 = result;
    result = heap_Free(*(result[3] + 8), v1);
    v2[24] = 0;
  }

  return result;
}

uint64_t CLM_DeleteNonPhoneChars(uint64_t a1, char *__s)
{
  strcpy(__charset, "\t ");
  v4 = *(*(a1 + 24) + 8);
  v5 = cstdlib_strlen(__s);
  v6 = heap_Calloc(v4, 1, v5 + 1);
  if (v6)
  {
    v11 = v6;
    v15 = 0;
    cstdlib_strcpy(v6, __s);
    *__s = 0;
    v12 = extstdlib_strtok_r(v11, __charset, &v15);
    if (v12)
    {
      v13 = v12;
      do
      {
        cstdlib_strcat(__s, v13);
        v13 = extstdlib_strtok_r(0, __charset, &v15);
      }

      while (v13);
    }

    heap_Free(*(*(a1 + 24) + 8), v11);
    return 0;
  }

  else
  {
    log_OutPublic(*(*(a1 + 24) + 32), "CLM", 50000, 0, v7, v8, v9, v10, v15);
    return 2347769866;
  }
}

uint64_t CLM_SplitWordInPhonemes(uint64_t a1, char *__s, char *a3, unsigned int a4, void *a5, _DWORD *a6)
{
  v9 = __s;
  if (a6)
  {
    *a6 = 0;
  }

  if (a3)
  {
    if (a4 <= 2 * cstdlib_strlen(__s))
    {
      return 2347769865;
    }

    *a3 = 0;
  }

  if (a5)
  {
    StringList_Reset(a5);
  }

  v11 = cstdlib_strlen(v9);
  v27 = LhpuCreate(*(a1 + 8));
  if (!v27)
  {
    log_OutPublic(*(a1 + 32), "CLM", 50000, 0, v12, v13, v14, v15, v25);
    return 2347769866;
  }

  v16 = 0;
  v26 = 0;
  v17 = &v9[v11 + 1];
  if (v17 <= v9)
  {
    goto LABEL_31;
  }

  v16 = 0;
  v18 = 1;
  do
  {
    if (*v9 == 18)
    {
      if (a3)
      {
        cstdlib_strcat(a3, " ");
        cstdlib_strcat(a3, "\x12");
      }

LABEL_18:
      v20 = 1;
      goto LABEL_28;
    }

    Symbol = LhplGetSymbol(v9, v27, &v26 + 1, &v26);
    if (Symbol)
    {
      if (Symbol == 1)
      {
        break;
      }

      if (a6)
      {
        *a6 = 1;
      }

      goto LABEL_18;
    }

    if (!v18)
    {
      if (!a3)
      {
        goto LABEL_25;
      }

      cstdlib_strcat(a3, " ");
LABEL_24:
      v21 = LhpuGetSymbol(v27);
      cstdlib_strcat(a3, v21);
      goto LABEL_25;
    }

    if (a3)
    {
      goto LABEL_24;
    }

LABEL_25:
    if (a5)
    {
      v22 = v27;
      v23 = LhpuGetSymbol(v27);
      v16 = CLM_PhonList_Append(a5, v23);
      if ((v16 & 0x80000000) != 0)
      {
        goto LABEL_30;
      }
    }

    v18 = 0;
    v20 = v26 + 1;
LABEL_28:
    v9 += v20;
  }

  while (v9 < v17);
  v22 = v27;
LABEL_30:
  if (v22)
  {
LABEL_31:
    LhpuRemove(*(a1 + 8), &v27);
  }

  return v16;
}

uint64_t CLM_EscapeMetaChars(uint64_t a1, char *__s, char *a3, unsigned int a4, int a5)
{
  v25 = *MEMORY[0x277D85DE8];
  strcpy(__sa, "^$.[{()|+?*\\/");
  if (a5)
  {
    a3[1] = 115;
    v10 = 2;
    v11 = 92;
  }

  else
  {
    v10 = 1;
    v11 = 94;
  }

  *a3 = v11;
  if (cstdlib_strlen(__s))
  {
    v23 = a1;
    v12 = 0;
    while (1)
    {
      if (cstdlib_strlen(__sa))
      {
        v17 = 0;
        v18 = &__s[v12];
        while (*v18 != __sa[v17])
        {
          if (++v17 >= cstdlib_strlen(__sa))
          {
            goto LABEL_10;
          }
        }

        a3[v10] = 92;
        v20 = v10 + 1;
        v19 = 2;
      }

      else
      {
LABEL_10:
        v18 = &__s[v12];
        v19 = 1;
        v20 = v10;
      }

      a3[v20] = *v18;
      v10 += v19;
      if (v10 + 2 >= a4)
      {
        break;
      }

      if (++v12 >= cstdlib_strlen(__s))
      {
        goto LABEL_14;
      }
    }

    log_OutPublic(*(*(v23 + 24) + 32), "CLM", 50003, 0, v13, v14, v15, v16, v23);
    return 2347769856;
  }

  else
  {
LABEL_14:
    v21 = v10 + 1;
    result = 0;
    if (a5)
    {
      a3[v10] = 92;
      a3[v21] = 115;
      a3[v10 + 2] = 0;
    }

    else
    {
      a3[v10] = 36;
      a3[v21] = 0;
    }
  }

  return result;
}

BOOL CLM_SearchAndReplace(uint64_t a1, _BYTE *a2, char *a3, uint64_t a4, char *__s, uint64_t a6, unsigned int a7)
{
  v51 = *MEMORY[0x277D85DE8];
  v10 = cstdlib_strlen(__s);
  v49 = 0;
  v48 = 0;
  cstdlib_memset(__b, 0, 0x168uLL);
  v44 = v10;
  if (v10)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v42 = a1;
    do
    {
      if (v17 && *a2 == 94)
      {
        break;
      }

      v18 = cstdlib_strlen(__s);
      if (nuance_pcre_exec(*(a1 + 168), *(a1 + 176), a4, 0, &__s[v17], v18 - v17, 0, 0, __b, 90) < 1)
      {
        break;
      }

      v19 = CLM_InterpretReplacementString(a1, a3, &v48, &v49);
      if ((v19 & 0x80000000) != 0)
      {
        return v19;
      }

      v20 = v49;
      if (!v49)
      {
        v17 = __b[v15 + 1] + v17 - __b[v15];
      }

      v21 = __b[0];
      v22 = v17;
      if (__b[0])
      {
        do
        {
          *(a6 + v16++) = __s[v22++];
          --v21;
        }

        while (v21);
      }

      v46 = v48;
      if (v20)
      {
        v23 = (v48 + 8);
        for (i = v20; i; --i)
        {
          v25 = *(v23 - 2);
          if (v25 == 1)
          {
            v26 = *(v23 - 1);
            v27 = (2 * v26) | 1;
            v15 = 2 * v26;
            v28 = __b[2 * v26];
            v29 = (__b[v27] - v28);
            if (v29 + v16 >= a7)
            {
LABEL_23:
              v30 = 2347769865;
              v31 = v42[3];
              goto LABEL_37;
            }

            cstdlib_strncpy((a6 + v16), &__s[v28 + v17], v29);
            v16 = __b[v27] + v16 - __b[v15];
          }

          else if (!v25 && *v23)
          {
            if (v16 + cstdlib_strlen(*v23) >= a7)
            {
              goto LABEL_23;
            }

            cstdlib_strcpy((a6 + v16), *v23);
            v16 += cstdlib_strlen(*v23);
          }

          v23 += 2;
        }
      }

      v17 += __b[1];
      a1 = v42;
      CLM_FreeListOfTypes(v42, v46, v20);
      v48 = 0;
    }

    while (v17 < v44);
  }

  else
  {
    v17 = 0;
    v16 = 0;
  }

  v32 = v44 - v17;
  if (v44 <= v17)
  {
    v32 = 0;
LABEL_34:
    v38 = v32 + v16;
    if (v38 < a7)
    {
      *(a6 + v38) = 0;
      return v17 == 0;
    }
  }

  else
  {
    LODWORD(v33) = a7 - v16;
    if (a7 >= v16)
    {
      v33 = v33;
    }

    else
    {
      v33 = 0;
    }

    v34 = &__s[v17];
    v35 = (a6 + v16);
    v36 = v44 - v17;
    while (v33)
    {
      v37 = *v34++;
      *v35++ = v37;
      --v33;
      if (!--v36)
      {
        goto LABEL_34;
      }
    }
  }

  v30 = 2347769865;
  v31 = *(a1 + 24);
LABEL_37:
  log_OutPublic(*(v31 + 32), "CLM", 50002, 0, v11, v12, v13, v14, v40);
  return v30;
}

uint64_t CLM_InterpretReplacementString(uint64_t a1, char *__s, uint64_t *a3, unsigned int *a4)
{
  v49 = *MEMORY[0x277D85DE8];
  __n = 0;
  v15 = cstdlib_strlen(__s);
  if (v15)
  {
    v16 = *(a1 + 192);
    if (!v16)
    {
      v17 = CLM_PreCompileReplacementRegEx(a1, v8, v9, v10, v11, v12, v13, v14);
      if ((v17 & 0x80000000) != 0)
      {
        return v17;
      }

      v16 = *(a1 + 192);
    }

    nuance_pcre_fullinfo(v16, 0, 1, &__n);
    v22 = *(a1 + 24);
    if (__n)
    {
      v23 = heap_Alloc(*(v22 + 8), __n);
      if (v23)
      {
        v28 = v23;
        *a3 = 0;
        v29 = heap_Alloc(*(*(a1 + 24) + 8), (32 * v15) & 0xFFFFFFFE0);
        *a3 = v29;
        if (v29)
        {
          v42 = a4;
          cstdlib_memset(v29, 0, (32 * v15) & 0xFFFFFFFE0);
          cstdlib_memset(__b, 0, 0x168uLL);
          v30 = 0;
          v31 = 0;
          v32 = v15;
          while (1)
          {
            cstdlib_memcpy(v28, *(a1 + 192), __n);
            if (nuance_pcre_exec(*(a1 + 168), *(a1 + 176), v28, 0, &__s[v31], v32, 0, 0, __b, 90) != 3)
            {
              break;
            }

            if (v47)
            {
              *(*a3 + 16 * v30) = 0;
              *(*a3 + 16 * v30 + 8) = heap_Alloc(*(*(a1 + 24) + 8), v47 + 1);
              v33 = *(*a3 + 16 * v30 + 8);
              if (!v33)
              {
                goto LABEL_26;
              }

              cstdlib_strncpy(v33, &__s[v31], v47);
              *(*(*a3 + 16 * v30++ + 8) + v47) = 0;
            }

            *(*a3 + 16 * v30) = 1;
            cstdlib_strncpy(__dst, &__s[v31 + 1 + v47], v48 + ~v47);
            v34 = 0;
            __dst[v48 + ~v47] = 0;
            v35 = __dst[0];
            if ((__dst[0] - 58) >= 0xF6u)
            {
              v34 = 0;
              v36 = v44;
              do
              {
                v34 = 10 * v34 + (v35 - 48);
                v37 = *v36++;
                v35 = v37;
              }

              while ((v37 - 58) >= 0xF6u);
            }

            *(*a3 + 16 * v30 + 4) = v34;
            v31 += __b[1];
            ++v30;
            v32 = v15 - v31;
            if (v15 == v31)
            {
              goto LABEL_25;
            }
          }

          *(*a3 + 16 * v30) = 0;
          *(*a3 + 16 * v30 + 8) = heap_Alloc(*(*(a1 + 24) + 8), v32 + 1);
          v39 = *(*a3 + 16 * v30 + 8);
          if (v39)
          {
            cstdlib_strncpy(v39, &__s[v31], v32);
            *(*(*a3 + 16 * v30++ + 8) + v32) = 0;
LABEL_25:
            *v42 = v30;
            heap_Free(*(*(a1 + 24) + 8), v28);
            return 0;
          }

LABEL_26:
          v38 = 2347769866;
          heap_Free(*(*(a1 + 24) + 8), v28);
          heap_Free(*(*(a1 + 24) + 8), *a3);
          *a3 = 0;
        }

        else
        {
          v38 = 2347769866;
          heap_Free(*(*(a1 + 24) + 8), v28);
        }
      }

      else
      {
        v38 = 2347769866;
      }

      log_OutPublic(*(*(a1 + 24) + 32), "CLM", 50000, 0, v24, v25, v26, v27, v41);
    }

    else
    {
      log_OutPublic(*(v22 + 32), "CLM", 50003, 0, v18, v19, v20, v21, v41);
      return 2347769856;
    }
  }

  else
  {
    v38 = 0;
    *a4 = 0;
  }

  return v38;
}

void *CLM_FreeListOfTypes(void *result, uint64_t a2, unsigned int a3)
{
  if (a2)
  {
    v4 = result;
    if (a3)
    {
      v5 = a3;
      v6 = (a2 + 8);
      do
      {
        if (*v6)
        {
          heap_Free(*(v4[3] + 8), *v6);
        }

        v6 += 2;
        --v5;
      }

      while (v5);
    }

    v7 = *(v4[3] + 8);

    return heap_Free(v7, a2);
  }

  return result;
}

_BYTE *CLM_cstdlib_atoi(_BYTE *result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    if ((*result - 58) >= 0xF6u)
    {
      LODWORD(result) = 0;
      v3 = v1 + 1;
      do
      {
        result = (10 * result + (v2 - 48));
        v4 = *v3++;
        v2 = v4;
      }

      while ((v4 - 58) > 0xF5u);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const char *CLM_RemoveBackSlash(const char *result)
{
  if (result)
  {
    v1 = result;
    result = cstdlib_strlen(result);
    if (result >= 1)
    {
      v2 = result;
      LODWORD(v3) = 0;
      do
      {
        v4 = v3;
        v5 = v3 - 1;
        do
        {
          v6 = v4++;
          ++v5;
        }

        while (v6 < v2 && v1[v6] != 92);
        v3 = v4 - 1;
        if (v6 < v2)
        {
          result = cstdlib_strcpy(&v1[v3], &v1[v4]);
          --v2;
        }
      }

      while (v2 > v5);
    }
  }

  return result;
}

uint64_t CLM_RemoveInvalidPhonemes(uint64_t a1, int a2, char *a3, char *a4, _DWORD *a5)
{
  if (a5)
  {
    *a5 = 0;
  }

  v8 = 2347769864;
  if ((safeh_HandleCheck(a1, a2, 63000, 216) & 0x80000000) == 0 && a1)
  {
    log_OutText(*(*(a1 + 24) + 32), "CLM", 4, 0, "CLM RemoveInvalidPhonemes : Begin (%s)", v9, v10, v11, a4);
    if (CLM_GiveLanguageBuffer(a3, *(a1 + 152), *(a1 + 160), 2))
    {
      v12 = CLM_DeleteNonPhoneChars(a1, a4);
      if ((v12 & 0x80000000) != 0)
      {
        return v12;
      }

      else
      {
        v13 = (2 * cstdlib_strlen(a4)) | 1;
        v14 = heap_Alloc(*(*(a1 + 24) + 8), v13);
        if (v14)
        {
          v19 = v14;
          cstdlib_memset(v14, 0, v13);
          v8 = CLM_SplitWordInPhonemes(*(a1 + 24), a4, v19, v13, 0, 0);
          heap_Free(*(*(a1 + 24) + 8), v19);
          if ((v8 & 0x80000000) == 0)
          {
            log_OutText(*(*(a1 + 24) + 32), "CLM", 4, 0, "CLM RemoveInvalidPhonemes : End (%s)", v20, v21, v22, a4);
          }
        }

        else
        {
          log_OutPublic(*(*(a1 + 24) + 32), "CLM", 50000, 0, v15, v16, v17, v18, v24);
          return 2347769866;
        }
      }
    }

    else
    {
      return 2347777677;
    }
  }

  return v8;
}

uint64_t CLM_GiveLanguageBuffer(char *a1, uint64_t a2, unsigned int a3, int a4)
{
  v4 = a2;
  if (a2)
  {
    if (!a3)
    {
      return 0;
    }

    v7 = a3;
    while (LH_stricmp(v4, a1))
    {
      v4 += 24;
      if (!--v7)
      {
        return 0;
      }
    }

    if (*(v4 + 4) != a4)
    {
      return 0;
    }
  }

  return v4;
}

uint64_t CLM_ObjOpen(_WORD *a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v22 = 0;
  v23 = 0;
  v5 = 2347769863;
  if (a5)
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    inited = InitRsrcFunction(a3, a4, &v23);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    NullHandle = safeh_GetNullHandle();
    if (!safeh_HandlesEqual(a1, a2, NullHandle, v13))
    {
      inited = InitRsrcFunction(a1, a2, &v22);
      if ((inited & 0x80000000) == 0)
      {
        v14 = heap_Calloc(*(v23 + 8), 1, 216);
        v19 = v23;
        if (!v14)
        {
          log_OutPublic(*(v23 + 32), "CLM", 50000, 0, v15, v16, v17, v18, v22);
          return 2347769866;
        }

        v20 = v14;
        v14[4] = a3;
        v14[5] = a4;
        v14[2] = a2;
        v14[3] = v19;
        *v14 = v22;
        v14[1] = a1;
        inited = nuance_pcre_ObjOpen(a3, a4, (v14 + 21));
        if ((inited & 0x80000000) == 0)
        {
          inited = nuance_pcre_Init(*(v20 + 168), *(v20 + 176), 0xAu, 10);
          if ((inited & 0x80000000) == 0)
          {
            *a5 = v20;
            *(a5 + 8) = 63000;
            return CLM_ObjReopen(v20, *(a5 + 8));
          }
        }
      }

      return inited;
    }
  }

  return v5;
}

uint64_t CLM_ObjReopen(uint64_t a1, int a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = safeh_HandleCheck(a1, a2, 63000, 216);
  v4 = 2347769864;
  if ((v3 & 0x80000000) != 0 || !a1)
  {
    return v4;
  }

  v5 = v3;
  if ((hlp_GetLanguage(*(*(a1 + 24) + 40), v36) & 0x80000000) == 0 && !LH_stricmp((a1 + 56), v36))
  {
    return v5;
  }

  CLM_DeInitFromCLMv2Lua(a1);
  Language = CLM_DeInit(a1);
  if ((Language & 0x80000000) != 0)
  {
    return Language;
  }

  memset(__s1, 0, sizeof(__s1));
  v37 = 0;
  Language = hlp_GetLanguage(*(*(a1 + 24) + 40), __s2);
  if ((Language & 0x80000000) != 0)
  {
    return Language;
  }

  cstdlib_strcat(__s1, "clm/");
  cstdlib_strcat(__s1, __s2);
  v7 = brokeraux_ComposeBrokerString(*(a1 + 24), __s1, 0, 1, __s2, 0, 0, v40, 0x100uLL);
  if (v7 < 0)
  {
    return v7 | 0x8BF02000;
  }

  ObjcForThisApi_0 = getObjcForThisApi_0(*(a1 + 24), *a1);
  if (!ObjcForThisApi_0)
  {
    return 2347769856;
  }

  if ((objc_GetAddRefCountedObject(ObjcForThisApi_0, v40, IRefCnt_ObjcLoadCLMData, IRefCnt_ObjcUnloadCLMData, a1, &v37) & 0x80000000) != 0)
  {
    v4 = 0;
    *(a1 + 48) = 0;
    *(a1 + 200) = 0;
    return v4;
  }

  v4 = 2347777666;
  v9 = *(v37 + 32);
  *(a1 + 48) = v9;
  CLM_UnloadSettings(a1);
  v14 = *(v9 + 40);
  if (!v14)
  {
    return 2347777673;
  }

  v15 = *(v9 + 32);
  if (!v15)
  {
    return 2347777665;
  }

  if (v14 <= 0x12)
  {
    log_OutPublic(*(*(a1 + 24) + 32), "CLM", 50003, 0, v10, v11, v12, v13, v35);
    return CLM_InitFromCLMv2Lua(a1, __s2);
  }

  cstdlib_strncpy((a1 + 56), (v15 + 14), 3uLL);
  *(a1 + 59) = 0;
  *(a1 + 60) = *(v15 + 17);
  *(a1 + 61) = *(v15 + 18);
  v39 = 19;
  if ((CLM_EnumerateLanguages(a1, (a1 + 72), (a1 + 80), 1, *(v9 + 32), *(v9 + 40), 0x13u) & 0x80000000) != 0)
  {
    return 2347777667;
  }

  if (!*(a1 + 80))
  {
    log_OutPublic(*(*(a1 + 24) + 32), "CLM", 50003, 0, v16, v17, v18, v19, v35);
    return 2347777667;
  }

  if ((CLM_FindSeperationRecord(*(v9 + 32), *(v9 + 40), &v39) & 0x80000000) != 0)
  {
    return 2347777667;
  }

  if ((CLM_LoadRules(a1, *(v9 + 32), *(v9 + 40), 0, &v39) & 0x80000000) == 0 && (CLM_FindSeperationRecord(*(v9 + 32), *(v9 + 40), &v39) & 0x80000000) == 0 && (CLM_LoadRules(a1, *(v9 + 32), *(v9 + 40), 1, &v39) & 0x80000000) == 0)
  {
    if ((CLM_FindSeperationRecord(*(v9 + 32), *(v9 + 40), &v39) & 0x80000000) != 0 || (CLM_EnumerateLanguages(a1, (a1 + 152), (a1 + 160), 2, *(v9 + 32), *(v9 + 40), v39) & 0x80000000) != 0)
    {
      return 2347777668;
    }

    v4 = 2347777671;
    if ((CLM_PreCompileSplitWordRegEx(a1, v20, v21, v22, v23, v24, v25, v26) & 0x80000000) == 0 && (CLM_PreCompileReplacementRegEx(a1, v27, v28, v29, v30, v31, v32, v33) & 0x80000000) == 0)
    {
      *(a1 + 64) = 1;
      return CLM_InitFromCLMv2Lua(a1, __s2);
    }
  }

  return v4;
}

uint64_t CLM_ObjClose(uint64_t *a1, int a2)
{
  v3 = 2347769864;
  if ((safeh_HandleCheck(a1, a2, 63000, 216) & 0x80000000) == 0 && a1)
  {
    CLM_DeInitFromCLMv2Lua(a1);
    v4 = CLM_DeInit(a1);
    if ((v4 & 0x80000000) == 0)
    {
      v4 = nuance_pcre_DeInit(a1[21], a1[22]);
      if ((v4 & 0x80000000) == 0)
      {
        v4 = nuance_pcre_ObjClose(a1[21], a1[22]);
      }
    }

    v3 = v4;
    heap_Free(*(a1[3] + 8), a1);
  }

  return v3;
}

uint64_t CLM_DeInit(uint64_t *a1)
{
  CLM_UnloadSettings(a1);
  if (!a1[6])
  {
    return 0;
  }

  ObjcForThisApi_0 = getObjcForThisApi_0(a1[3], *a1);
  if (!ObjcForThisApi_0)
  {
    return 2347769856;
  }

  v3 = a1[6] + 48;

  return objc_ReleaseObject(ObjcForThisApi_0, v3);
}

uint64_t CLM_ConvertTranscription(uint64_t a1, int a2, char *a3, const char *a4, char *a5, char *a6, char *a7, unsigned int a8)
{
  strcpy(__s2, "ANY");
  v63 = 0;
  v61 = 0;
  v62 = 0;
  v16 = -1947197430;
  v60 = 0;
  v17 = 2347769864;
  if ((safeh_HandleCheck(a1, a2, 63000, 216) & 0x80000000) == 0 && a1)
  {
    if (!*(a1 + 64))
    {
      return 2347777672;
    }

    v17 = 2347777674;
    if (a4)
    {
      if (cstdlib_strlen(a4))
      {
        if (a8 && cstdlib_strlen(a4) + 1 > a8)
        {
          return 2347777673;
        }

        v18 = *(*(a1 + 24) + 8);
        v19 = cstdlib_strlen(a4);
        v20 = heap_Alloc(v18, (v19 + 1));
        v25 = v20;
        if (!v20)
        {
          log_OutPublic(*(*(a1 + 24) + 32), "CLM", 50000, 0, v21, v22, v23, v24, v55);
          v29 = 0;
          v30 = 0;
LABEL_26:
          hlp_FreePhonlist(a1, &v62);
          hlp_FreePhonlist(a1, &v61);
          hlp_FreePhonlist(a1, &v60);
          if (v25)
          {
            heap_Free(*(*(a1 + 24) + 8), v25);
          }

          if (v29)
          {
            heap_Free(*(*(a1 + 24) + 8), v29);
          }

          if (v16 >= 0)
          {
            return v30;
          }

          else
          {
            return v16;
          }
        }

        cstdlib_strcpy(v20, a4);
        __src = v25;
        v26 = CLM_RemoveInvalidPhonemes(a1, a2, a3, v25, &v63);
        v27 = v26;
        if (v26 < 0)
        {
          v28 = v26;
          if ((v26 & 0x1FFF) != 0x1E8D)
          {
            v29 = 0;
            v30 = 0;
            v16 = v26;
            goto LABEL_25;
          }
        }

        else if (v63)
        {
          v28 = -1947189627;
        }

        else
        {
          v28 = 0;
        }

        if (!a8)
        {
          v29 = 0;
          v16 = v26;
          v30 = v28;
          goto LABEL_25;
        }

        v58 = v28;
        if (cstdlib_strcmp(a3, __s2))
        {
          if ((~v58 & 0x1E8D) == 0)
          {
            v30 = v58;
            cstdlib_strcpy(a5, __src);
            v29 = 0;
            v16 = v27;
            v25 = __src;
            goto LABEL_26;
          }

          if (!cstdlib_strcmp((a1 + 56), a3))
          {
            cstdlib_strcpy(a5, __src);
            v29 = 0;
            v16 = v27;
            v25 = __src;
            goto LABEL_41;
          }

          __b = heap_Alloc(*(*(a1 + 24) + 8), a8 + 1);
          if (__b)
          {
            v36 = 0;
            if (a6 && a7)
            {
              *a6 = 0;
              *a7 = 0;
              if (cstdlib_strlen(a4) <= 0x95)
              {
                v36 = &v61;
                if (hlp_AllocateAndInitializePhonlists(a1, __src, &v62, &v61, &v60) >= 0)
                {
                  v37 = &v60;
                }

                else
                {
                  v36 = 0;
                  v37 = 0;
                }

                v56 = v37;
              }

              else
              {
                a6 = 0;
                a7 = 0;
                v36 = 0;
                v56 = 0;
              }
            }

            else
            {
              v56 = 0;
            }

            cstdlib_memset(__b, 0, a8 + 1);
            cstdlib_strcpy(__b, __src);
            cstdlib_strcpy(a5, __src);
            v38 = CLM_ApplyRules(a1, *(a1 + 88), *(a1 + 96), a3, __b, a5, a8, v62, v36, v56);
            if (v38)
            {
              if (v38 < 0)
              {
                goto LABEL_71;
              }
            }

            else
            {
              cstdlib_strcpy(__b, a5);
            }

            v38 = CLM_ApplyRules(a1, *(a1 + 120), *(a1 + 128), a3, __b, a5, a8, v62, v56, v36);
            if (v38)
            {
              if (v38 < 0)
              {
                goto LABEL_71;
              }
            }

            else
            {
              cstdlib_strcpy(__b, a5);
            }

            v38 = CLM_ApplyRules(a1, *(a1 + 88), *(a1 + 96), __s2, __b, a5, a8, v62, v36, v56);
            if (v38)
            {
              if (v38 < 0)
              {
                goto LABEL_71;
              }
            }

            else
            {
              cstdlib_strcpy(__b, a5);
            }

            v39 = CLM_ApplyPhonemeMapping(a1, *(a1 + 72), *(a1 + 80), a3, __b, a5, a8, v62, v56, v36);
            if (v39 < 0)
            {
              if ((v39 & 0x1FFF) != 0)
              {
                v16 = v39;
              }

              else
              {
                v16 = -1947189621;
              }

              v30 = v58;
              v25 = __src;
              v29 = __b;
              goto LABEL_26;
            }

            cstdlib_strcpy(__b, a5);
            v38 = CLM_ApplyRules(a1, *(a1 + 104), *(a1 + 112), a3, __b, a5, a8, v62, v36, v56);
            if (v38)
            {
              if (v38 < 0)
              {
                v40 = (v38 & 0x1FFF) == 0;
                v41 = 7819;
LABEL_72:
                if (v40)
                {
                  v16 = v41;
                }

                else
                {
                  v16 = v38;
                }

                v30 = v58;
LABEL_76:
                v25 = __src;
                v29 = __b;
                goto LABEL_26;
              }
            }

            else
            {
              cstdlib_strcpy(__b, a5);
            }

            v38 = CLM_ApplyRules(a1, *(a1 + 104), *(a1 + 112), __s2, __b, a5, a8, v62, v56, v36);
            if (v38)
            {
              if (v38 < 0)
              {
LABEL_71:
                v40 = (v38 & 0x1FFF) == 0;
                v41 = -1947189621;
                goto LABEL_72;
              }
            }

            else
            {
              cstdlib_strcpy(__b, a5);
            }

            v42 = a3;
            v29 = __b;
            v43 = CLM_ApplyRules(a1, *(a1 + 136), *(a1 + 144), v42, __b, a5, a8, v62, v36, v56);
            if (v43)
            {
              v25 = __src;
              if (v43 < 0)
              {
                if ((v43 & 0x1FFF) != 0)
                {
                  v16 = v43;
                }

                else
                {
                  v16 = -1947189621;
                }

                goto LABEL_41;
              }
            }

            else
            {
              cstdlib_strcpy(__b, a5);
              v25 = __src;
            }

            v44 = CLM_RemoveInvalidPhonemes(a1, a2, (a1 + 56), a5, &v63);
            v16 = v44;
            if ((v44 & 0x80000000) == 0)
            {
              v30 = v58;
              if (v63)
              {
                v30 = -1947189626;
                goto LABEL_26;
              }

LABEL_88:
              if (!a6)
              {
                goto LABEL_26;
              }

              if (a7)
              {
                *a6 = 0;
                *a7 = 0;
                CountStrings = StringList_GetCountStrings(v62);
                if (v56)
                {
                  v46 = StringList_GetCountStrings(*v56);
                }

                else
                {
                  v46 = 0;
                }

                if (CountStrings)
                {
                  if (v46 == CountStrings && (CLM_MergeSubsequentInsertionAndDeletions(v62, *v56) & 0x80000000) == 0)
                  {
                    v47 = StringList_GetCountStrings(v62);
                    if (v47 == StringList_GetCountStrings(*v56))
                    {
                      if (v47)
                      {
                        v48 = 0;
                        while (1)
                        {
                          v49 = cstdlib_strlen(a6);
                          v50 = StringList_GetAt(v62, v48);
                          if (v49 + cstdlib_strlen(v50) + 1 >= a8)
                          {
                            break;
                          }

                          v51 = cstdlib_strlen(a7);
                          v52 = StringList_GetAt(*v56, v48);
                          if (v51 + cstdlib_strlen(v52) + 1 >= a8)
                          {
                            break;
                          }

                          v53 = StringList_GetAt(v62, v48);
                          cstdlib_strcat(a6, v53);
                          cstdlib_strcat(a6, " ");
                          v54 = StringList_GetAt(*v56, v48);
                          cstdlib_strcat(a7, v54);
                          cstdlib_strcat(a7, " ");
                          if (v47 <= ++v48)
                          {
                            goto LABEL_76;
                          }
                        }

                        *a6 = 0;
                        *a7 = 0;
                      }
                    }
                  }
                }

                goto LABEL_76;
              }

LABEL_25:
              v25 = __src;
              goto LABEL_26;
            }

            v30 = 7821;
            if ((v44 & 0x1FFF) == 0x1E8D)
            {
              goto LABEL_88;
            }

LABEL_41:
            v30 = v58;
            goto LABEL_26;
          }

          log_OutPublic(*(*(a1 + 24) + 32), "CLM", 50000, 0, v32, v33, v34, v35, v55);
          v29 = 0;
        }

        else
        {
          v29 = 0;
          v16 = -1947189621;
        }

        v30 = v58;
        goto LABEL_25;
      }
    }
  }

  return v17;
}

uint64_t hlp_AllocateAndInitializePhonlists(uint64_t a1, char *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  v13 = 0;
  *a3 = 0;
  *a4 = 0;
  *a5 = 0;
  Allocator = ooc_utils_createAllocator(v14, *(a1 + 32), *(a1 + 40));
  if (Allocator)
  {
    return LH_ERROR_to_VERROR(Allocator);
  }

  Allocator = PNEW_StringList_Con(v14, *(a1 + 32), *(a1 + 40), a3);
  if (Allocator)
  {
    return LH_ERROR_to_VERROR(Allocator);
  }

  Allocator = PNEW_StringList_Con(v14, *(a1 + 32), *(a1 + 40), a4);
  if (Allocator)
  {
    return LH_ERROR_to_VERROR(Allocator);
  }

  Allocator = PNEW_StringList_Con(v14, *(a1 + 32), *(a1 + 40), a5);
  if (Allocator)
  {
    return LH_ERROR_to_VERROR(Allocator);
  }

  LODWORD(result) = CLM_SplitWordInPhonemes(*(a1 + 24), a2, 0, 0, *a3, &v13);
  if ((result & 0x80000000) != 0 || v13)
  {
    if (result < 0)
    {
      return result;
    }

    else
    {
      return 2347769856;
    }
  }

  else
  {
    LODWORD(result) = CLM_SplitWordInPhonemes(*(a1 + 24), a2, 0, 0, *a4, &v13);
    if (v13)
    {
      v12 = result <= -1;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      return result;
    }

    else
    {
      return 2347769856;
    }
  }
}

uint64_t CLM_ApplyRules(uint64_t a1, uint64_t a2, unsigned int a3, char *a4, char *a5, char *a6, unsigned int a7, void *a8, void **a9, void **a10)
{
  v32 = 0;
  v17 = hlp_CheckDoAlignment(a8, a9, a10);
  v18 = CLM_GiveLanguageBuffer(a4, a2, a3, 0);
  if (v18)
  {
    v19 = v18;
    if (*(v18 + 8))
    {
      v31 = v17;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      do
      {
        v23 = CLM_SearchAndReplace(a1, *(*(v19 + 16) + v20), *(*(v19 + 16) + v20 + 16), *(*(v19 + 16) + v20 + 8), a5, a6, a7);
        v24 = v23;
        if (v23)
        {
          if (v23 & 0x80000000)
          {
            break;
          }
        }

        else
        {
          cstdlib_strcpy(a5, a6);
          if (v31)
          {
            if (!v22)
            {
              v22 = 1;
              if ((CLM_SplitWordInPhonemes(*(a1 + 24), a6, 0, 0, *a10, &v32) & 0x80000000) == 0 && !v32)
              {
                if ((CLM_AlignPhonlists(*(a1 + 24), a8, *a9, *a10) & 0x80000000) != 0)
                {
                  v22 = 1;
                }

                else
                {
                  v25 = *a9;
                  *a9 = *a10;
                  *a10 = v25;
                  StringList_Reset(v25);
                  v22 = 0;
                }
              }
            }
          }
        }

        ++v21;
        v20 += 24;
      }

      while (v21 < *(v19 + 8));
      if (v31)
      {
        v26 = *a10;
        *a10 = *a9;
        *a9 = v26;
        if (v22)
        {
          StringList_Reset(a8);
          StringList_Reset(*a9);
          StringList_Reset(*a10);
        }
      }
    }

    else
    {
      v24 = 0;
      if (v17)
      {
        v28 = *a10;
        *a10 = *a9;
        *a9 = v28;
      }
    }
  }

  else
  {
    if (v17)
    {
      v27 = *a10;
      *a10 = *a9;
      *a9 = v27;
    }

    return 1;
  }

  return v24;
}

uint64_t CLM_ApplyPhonemeMapping(uint64_t a1, uint64_t a2, unsigned int a3, char *a4, char *a5, char *a6, unsigned int a7, void *a8, void **a9, void **a10)
{
  v68 = 0;
  v69 = 0;
  v16 = CLM_GiveLanguageBuffer(a4, a2, a3, 1);
  v20 = 2347769856;
  if (!v16)
  {
    log_OutText(*(*(a1 + 24) + 32), "CLM", 4, 0, "Invalid Language : %s", v17, v18, v19, a4);
    return v20;
  }

  if (a6)
  {
    v21 = v16;
    v71 = 0;
    memset(v70, 0, sizeof(v70));
    Allocator = ooc_utils_createAllocator(v70, *(a1 + 32), *(a1 + 40));
    if (Allocator || (Allocator = PNEW_StringList_Con(v70, *(a1 + 32), *(a1 + 40), &v69)) != 0)
    {
      v23 = LH_ERROR_to_VERROR(Allocator);
    }

    else
    {
      v23 = CLM_SplitWordInPhonemes(*(a1 + 24), a5, 0, 0, v69, 0);
    }

    v24 = v23;
    if ((v23 & 0x80000000) != 0)
    {
      goto LABEL_69;
    }

    v67 = v23;
    *&v70[0] = 0;
    v66 = a8;
    v25 = hlp_CheckDoAlignment(a8, a9, a10);
    *a6 = 0;
    if (StringList_GetCountStrings(v69))
    {
      v26 = 0;
      v27 = a7;
      while (1)
      {
        v28 = StringList_GetAt(v69, v26);
        hlp_FindPhonemeMapping((v21 + 8), v28, v70, &v68);
        if (*&v70[0])
        {
          v28 = *&v70[0];
        }

        v29 = cstdlib_strlen(a6);
        if (v29 + cstdlib_strlen(v28) + 1 > v27)
        {
          break;
        }

        cstdlib_strcat(a6, v28);
        if (StringList_GetCountStrings(v69) <= ++v26)
        {
          goto LABEL_13;
        }
      }

      log_OutPublic(*(*(a1 + 24) + 32), "CLM", 50003, 0, v30, v31, v32, v33, v63);
      return v20;
    }

LABEL_13:
    if (!v25)
    {
      v24 = v67;
      goto LABEL_69;
    }

    v34 = v69;
    v24 = v67;
    if (!v69 || (v35 = *a9) == 0)
    {
LABEL_69:
      hlp_FreePhonlist(a1, &v69);
      return v24;
    }

    CountStrings = StringList_GetCountStrings(v69);
    v37 = StringList_GetCountStrings(v35);
    v38 = v37;
    v39 = CountStrings != 0;
    if (!v37 || !CountStrings)
    {
      if (!v37)
      {
        goto LABEL_43;
      }

      LOWORD(v40) = 0;
      goto LABEL_38;
    }

    v64 = v34;
    v40 = 0;
    v41 = 0;
    do
    {
      while (1)
      {
        v42 = StringList_GetAt(v35, v40);
        if (cstdlib_strcmp(v42, "*"))
        {
          break;
        }

        if (v38 <= ++v40 || CountStrings <= v41)
        {
          v39 = CountStrings > v41;
          if (v38 <= v40)
          {
            goto LABEL_43;
          }

          goto LABEL_38;
        }
      }

      __s1 = StringList_GetAt(v35, v40);
      v43 = StringList_GetAt(v64, v41);
      v44 = cstdlib_strcmp(__s1, v43);
      if (!v44)
      {
        ++v41;
      }

      ++v40;
      v39 = CountStrings > v41;
    }

    while (!v44 && v38 > v40 && CountStrings > v41);
    if (v44)
    {
      goto LABEL_69;
    }

    if (v38 <= v40)
    {
LABEL_43:
      if (!v39)
      {
        goto LABEL_44;
      }

      goto LABEL_69;
    }

LABEL_38:
    if (v38 > v40)
    {
      do
      {
        v45 = StringList_GetAt(v35, v40);
        v46 = cstdlib_strcmp(v45, "*");
        if (v46)
        {
          break;
        }

        LOWORD(v40) = v40 + 1;
      }

      while (v38 > v40);
      if (v46)
      {
        goto LABEL_69;
      }
    }

LABEL_44:
    if (!StringList_GetCountStrings(*a9))
    {
      goto LABEL_69;
    }

    v47 = 0;
    v48 = 0;
    v49 = "*";
    while (1)
    {
      v50 = StringList_GetAt(*a9, v48);
      hlp_FindPhonemeMapping((v21 + 8), v50, v70, &v68);
      if (!v47)
      {
        break;
      }

      v47 = 1;
LABEL_68:
      if (StringList_GetCountStrings(*a9) <= ++v48)
      {
        goto LABEL_69;
      }
    }

    v51 = v49;
    v52 = *&v70[0];
    v53 = v68;
    v54 = *a9;
    v55 = *a10;
    if (cstdlib_strcmp(v50, v51))
    {
      if (v52)
      {
        if (cstdlib_strlen(v52))
        {
          v49 = v51;
          if (v53)
          {
            if (StringList_GetCountStrings(v53))
            {
              v56 = 0;
              do
              {
                v57 = StringList_GetAt(v53, v56);
                v58 = CLM_PhonList_Append(v55, v57);
                if (v58 < 0)
                {
                  break;
                }

                if (v56)
                {
                  v59 = CLM_PhonList_InsertAt(v54, ++v48, v49);
                  if (v59 < 0)
                  {
                    goto LABEL_64;
                  }

                  v58 = CLM_PhonList_InsertAt(v66, v48, v49);
                  if (v58 < 0)
                  {
                    break;
                  }
                }

                ++v56;
              }

              while (StringList_GetCountStrings(v53) > v56);
            }

            else
            {
              v58 = 0;
            }
          }

          else
          {
            v58 = -1947197440;
          }
        }

        else
        {
          v49 = v51;
          v59 = CLM_PhonList_Append(v55, v51);
LABEL_64:
          v58 = v59;
        }

        goto LABEL_67;
      }

      v60 = v55;
      v61 = v50;
    }

    else
    {
      v60 = v55;
      v61 = v51;
    }

    v58 = CLM_PhonList_Append(v60, v61);
    v49 = v51;
LABEL_67:
    v47 = v58 >> 31;
    v24 = v58 & ~(v58 >> 31);
    goto LABEL_68;
  }

  return v20;
}

uint64_t hlp_FreePhonlist(uint64_t a1, uint64_t *a2)
{
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  result = ooc_utils_createAllocator(v4, *(a1 + 32), *(a1 + 40));
  if (result)
  {
    return LH_ERROR_to_VERROR(result);
  }

  if (a2)
  {
    if (*a2)
    {
      result = OOC_PlacementDeleteObject(v4, *a2);
      *a2 = 0;
    }
  }

  return result;
}

uint64_t CLM_TokenizeTranscription(uint64_t a1, int a2, char *a3, char *a4, unsigned int a5, _DWORD *a6)
{
  if ((safeh_HandleCheck(a1, a2, 63000, 216) & 0x80000000) != 0 || !a1)
  {
    return 2347769864;
  }

  v11 = *(a1 + 24);

  return CLM_SplitWordInPhonemes(v11, a3, a4, a5, 0, a6);
}

uint64_t CLM_GetFeClmCompInfo(uint64_t a1, int a2, _DWORD *a3)
{
  *a3 = 0;
  v5 = safeh_HandleCheck(a1, a2, 63000, 216);
  result = 2347769864;
  if ((v5 & 0x80000000) == 0 && a1)
  {
    if (*(a1 + 200))
    {
      v7 = 0;
      result = paramc_ParamGetUInt(*(*(a1 + 24) + 40), "fe_clm_component", &v7);
      if ((result & 0x80000000) == 0)
      {
        *a3 = v7;
      }
    }

    else
    {
      return v5;
    }
  }

  return result;
}

BOOL CLM_HasData(uint64_t a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 63000, 216);
  result = 0;
  if ((v3 & 0x80000000) == 0)
  {
    if (a1)
    {
      return *(a1 + 48) != 0;
    }
  }

  return result;
}

uint64_t CLM_ClassOpen(_WORD *a1, uint64_t a2, void *a3)
{
  v7 = 0;
  if (!a3)
  {
    return 2347769863;
  }

  result = InitRsrcFunction(a1, a2, &v7);
  if ((result & 0x80000000) == 0)
  {
    *a3 = a1;
    a3[1] = a2;
  }

  return result;
}

uint64_t hlp_GetLanguage(uint64_t a1, char *a2)
{
  __s = 0;
  *a2 = 0;
  Str = paramc_ParamGetStr(a1, "langcode", &__s);
  if ((Str & 0x80000000) == 0)
  {
    v5 = 0;
    if (cstdlib_strlen(__s))
    {
      do
      {
        v6 = v5;
        a2[v5] = cstdlib_tolower(__s[v5]);
        ++v5;
        v7 = cstdlib_strlen(__s);
      }

      while (v6 <= 1 && v5 < v7);
    }

    a2[v5] = 0;
    if (cstdlib_strcmp(__s, a2))
    {
      return paramc_ParamSetStr(a1, "langcode", a2);
    }
  }

  return Str;
}

uint64_t CLM_GetSuitableLocationOfFeCLMComponent(uint64_t a1, int a2, _DWORD *a3)
{
  result = safeh_HandleCheck(a1, a2, 63000, 216);
  if ((result & 0x80000000) != 0)
  {
    return 2347769864;
  }

  *a3 = *(a1 + 200) != 0;
  return result;
}

uint64_t CLM_ValidateTranscriptionEx(uint64_t a1, int a2, char *a3, char *a4, char *a5, _DWORD *a6, int a7)
{
  v14 = 2347769864;
  v15 = safeh_HandleCheck(a1, a2, 63000, 216);
  if ((v15 & 0x80000000) != 0 || !a1)
  {
    return v14;
  }

  v16 = v15;
  if ((safeh_HandleCheck(a1, a2, 63000, 216) & 0x80000000) != 0 || !*(a1 + 48))
  {
    log_OutText(*(*(a1 + 24) + 32), "CLM", 4, 0, "CLM_ValidateTranscriptionEx : CLM data not available, assume valid transcription", v17, v18, v19, v45);
    *a6 = 1;
    return v16;
  }

  if (!CLM_GiveLanguageBuffer(a3, *(a1 + 152), *(a1 + 160), 2))
  {
    log_OutText(*(*(a1 + 24) + 32), "CLM", 4, 0, "CLM_ValidateTranscriptionEx : CLM data not available for %s", v20, v21, v22, a3);
    *a6 = 0;
    return v16;
  }

  v47 = 0;
  log_OutText(*(*(a1 + 24) + 32), "CLM", 4, 0, "CLM_ValidateTranscriptionEx : Begin (%s)", v20, v21, v22, a5);
  CLM_GetFeClmCompInfo(a1, a2, &v47);
  v23 = v47;
  if (v47)
  {
    v24 = LH_stricmp((a1 + 56), a3);
    if (a4)
    {
      if (!v24 && cstdlib_strlen(a4) && *(a1 + 204))
      {
        v25 = 0;
        v26 = 0;
        do
        {
          if (!LH_stricmp((*(a1 + 208) + v25), a4))
          {
            break;
          }

          ++v26;
          v25 += 16;
        }

        while (v26 < *(a1 + 204));
      }
    }
  }

  *a6 = 1;
  v27 = CLM_DeleteNonPhoneChars(a1, a5);
  if ((v27 & 0x80000000) != 0)
  {
    v36 = 0;
    v14 = v27;
  }

  else
  {
    v31 = (2 * cstdlib_strlen(a5)) | 1;
    v36 = heap_Calloc(*(*(a1 + 24) + 8), v31, 1);
    if (v36)
    {
      v14 = CLM_ValidateInForeignLooLoanSet(a1, a5, v36, v31);
      if ((v14 & 0x80000000) == 0 && a7 == 1)
      {
        if (v23)
        {
          if (!*a6)
          {
            v37 = LH_stricmp((a1 + 56), a3);
            if (a4)
            {
              if (!v37 && !cstdlib_strlen(a4) && *(a1 + 204))
              {
                v38 = 0;
                for (i = 0; i < *(a1 + 204); ++i)
                {
                  v40 = *(a1 + 208);
                  *a6 = 1;
                  v14 = CLM_ValidateInForeignLooLoanSet(a1, a5, v36, v31);
                  if ((v14 & 0x80000000) != 0)
                  {
                    break;
                  }

                  if (*a6 == 1)
                  {
                    cstdlib_strcpy(a4, (v40 + v38));
                    log_OutText(*(*(a1 + 24) + 32), "CLM", 4, 0, "Extended phoneme set %s valid, so returned as foreign loan phoneme set", v42, v43, v44, a4);
                    break;
                  }

                  v38 += 16;
                }
              }
            }
          }
        }
      }
    }

    else
    {
      log_OutPublic(*(*(a1 + 24) + 32), "CLM", 50000, 0, v32, v33, v34, v35, v46);
      v14 = 2347769866;
    }
  }

  log_OutText(*(*(a1 + 24) + 32), "CLM", 4, 0, "CLM_ValidateTranscriptionEx : End (%s)", v28, v29, v30, a5);
  if (v36)
  {
    heap_Free(*(*(a1 + 24) + 8), v36);
  }

  return v14;
}

uint64_t CLM_ValidateInForeignLooLoanSet(uint64_t a1, char *a2, char *a3, unsigned int a4)
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = CLM_SplitWordInPhonemes(*(a1 + 24), a2, a3, a4, 0, 0);
  if ((v6 & 0x80000000) == 0)
  {
    v10 = 0;
    v7 = extstdlib_strtok_r(a3, " ", &v10);
    *a2 = 0;
    if (v7)
    {
      v8 = v7;
      do
      {
        cstdlib_strcat(a2, v8);
        cstdlib_strcpy(__dst, " ");
        cstdlib_strcat(__dst, v8);
        cstdlib_strcat(__dst, " ");
        v8 = extstdlib_strtok_r(0, " ", &v10);
      }

      while (v8);
    }
  }

  return v6;
}

uint64_t CLM_ValidateTranscription(uint64_t a1, int a2, char *a3, char *__src, char *a5, _DWORD *a6)
{
  if (__src)
  {
    v11 = __dst;
    cstdlib_strcpy(__dst, __src);
  }

  else
  {
    v11 = 0;
  }

  return CLM_ValidateTranscriptionEx(a1, a2, a3, v11, a5, a6, 0);
}

uint64_t CLM_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2347769857;
  }

  result = 0;
  *a2 = &ICLM;
  return result;
}

void *hlp_CheckDoAlignment(void *result, void **a2, void **a3)
{
  if (result)
  {
    CountStrings = StringList_GetCountStrings(result);
    result = 0;
    if (a2)
    {
      if (CountStrings)
      {
        result = *a2;
        if (*a2)
        {
          v6 = StringList_GetCountStrings(result);
          result = 0;
          if (a3)
          {
            if (v6)
            {
              result = *a3;
              if (*a3)
              {
                StringList_Reset(result);
                return (CountStrings == v6);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

const char *hlp_FindPhonemeMapping(const char *result, char *__s2, void *a3, void *a4)
{
  *a3 = 0;
  *a4 = 0;
  v4 = *result;
  if (v4)
  {
    v8 = result;
    v9 = 0;
    for (i = 0; i < v4; ++i)
    {
      v11 = *(v8 + 1);
      result = *(v11 + v9);
      if (result && *(v11 + v9 + 8))
      {
        result = cstdlib_strcmp(result, __s2);
        if (!result)
        {
          *a3 = *(*(v8 + 1) + v9 + 8);
          *a4 = *(*(v8 + 1) + v9 + 16);
          return result;
        }

        v4 = *v8;
      }

      v9 += 24;
    }
  }

  return result;
}

void *CLM_UnloadSettings(uint64_t a1)
{
  CLM_EmptyLanguageStruct(a1, (a1 + 88), *(a1 + 96));
  *(a1 + 96) = 0;
  CLM_EmptyLanguageStruct(a1, (a1 + 104), *(a1 + 112));
  *(a1 + 112) = 0;
  CLM_EmptyLanguageStruct(a1, (a1 + 120), *(a1 + 128));
  *(a1 + 128) = 0;
  CLM_EmptyLanguageStruct(a1, (a1 + 136), *(a1 + 144));
  *(a1 + 144) = 0;
  CLM_EmptyLanguageStruct(a1, (a1 + 72), *(a1 + 80));
  *(a1 + 80) = 0;
  CLM_EmptyLanguageStruct(a1, (a1 + 152), *(a1 + 160));
  *(a1 + 160) = 0;
  *(a1 + 64) = 0;
  CLM_FreePreCompiledSplitWordRegEx(a1);

  return CLM_FreePreCompiledReplacementRegEx(a1);
}

uint64_t getObjcForThisApi_0(uint64_t a1, uint64_t a2)
{
  result = 0;
  __s1 = 0;
  if (a1 && a2)
  {
    if ((paramc_ParamGetStr(*(a1 + 40), "clcpppipelinemode", &__s1) & 0x80000000) != 0 || !__s1 || !*__s1 || !cstdlib_strcmp(__s1, "internal"))
    {
      a1 = a2;
    }

    return *(a1 + 48);
  }

  return result;
}

uint64_t IRefCnt_ObjcLoadCLMData(_WORD *a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5)
{
  v73 = *MEMORY[0x277D85DE8];
  v45 = 0;
  inited = InitRsrcFunction(a1, a2, &v45);
  if ((inited & 0x80000000) != 0)
  {
    goto LABEL_38;
  }

  v11 = 2347769856;
  v12 = heap_Calloc(*(v45 + 8), 1, 304);
  *(a5 + 48) = v12;
  if (!v12)
  {
    log_OutPublic(*(*(a5 + 24) + 32), "CLM", 50000, 0, v13, v14, v15, v16, v44);
    v11 = 2347769866;
    goto LABEL_39;
  }

  *v12 = v45;
  v12[1] = a1;
  v12[2] = a2;
  if (cstdlib_strlen(a3) - 256 < 0xFFFFFFFFFFFFFEFFLL)
  {
    goto LABEL_39;
  }

  cstdlib_strcpy((*(a5 + 48) + 48), a3);
  v54 = 0;
  *__s1 = 0;
  v51 = 0;
  v52 = 0;
  v50 = 0;
  strcpy(v49, "CLMP");
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  *__dst = 0u;
  v58 = 0u;
  v47 = 0;
  v17 = *(a5 + 48);
  inited = hlp_GetLanguage(*(*(a5 + 24) + 40), __s2);
  if ((inited & 0x80000000) != 0)
  {
    goto LABEL_38;
  }

  if ((paramc_ParamGetStr(*(*(a5 + 24) + 40), "clcpppipelinemode", &v47) & 0x80000000) != 0)
  {
    v18 = 1;
  }

  else
  {
    v18 = 1;
    if (v47)
    {
      v18 = *v47 == 0;
    }
  }

  v19 = *(*v17 + 24);
  if (v19)
  {
    v20 = "clm";
  }

  else
  {
    v20 = "clm.dat";
  }

  if (v19)
  {
    v21 = 2;
  }

  else
  {
    v21 = 1;
  }

  v22 = ssftriff_reader_ObjOpen(v17[1], v17[2], v21, v20, v49, 1031, &v52);
  if ((v22 & 0x80000000) == 0)
  {
    v30 = 0;
    while (!v30 && (ssftriff_reader_OpenChunk(v52, __s1, &v50, &v51) & 0x80000000) == 0)
    {
      if (cstdlib_strcmp(__s1, "CLMP"))
      {
        goto LABEL_21;
      }

      v46 = 256;
      v31 = ssftriff_reader_ReadStringZ(v52, v51, v50, 0, v55, &v46);
      if ((v31 & 0x80000000) != 0)
      {
        goto LABEL_42;
      }

      if (!cstdlib_strstr(v55, __s2))
      {
LABEL_21:
        v30 = 0;
      }

      else
      {
        v31 = ssftriff_reader_DetachChunkData(v52, v17 + 3, v17 + 4);
        if ((v31 & 0x80000000) != 0)
        {
LABEL_42:
          v11 = v31;
          ssftriff_reader_CloseChunk(v52);
          ssftriff_reader_ObjClose(v52, v37, v38, v39, v40, v41, v42, v43);
          goto LABEL_39;
        }

        v32 = v46 | 0xFFFFFFFC;
        if ((v46 & 3) == 0)
        {
          v32 = 0;
        }

        v33 = v46 - v32;
        v17[4] += v33;
        v30 = 1;
        *(v17 + 10) = v50 - v33;
        *(v17 + 11) = 1;
      }

      v34 = ssftriff_reader_CloseChunk(v52);
      if ((v34 & 0x80000000) != 0)
      {
        v11 = v34;
        ssftriff_reader_ObjClose(v52, v23, v24, v25, v26, v27, v28, v29);
        v17[3] = 0;
        goto LABEL_39;
      }
    }

    v11 = ssftriff_reader_ObjClose(v52, v23, v24, v25, v26, v27, v28, v29);
    if ((v11 & 0x80000000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_33;
  }

  if (v18)
  {
    v11 = v22;
    log_OutPublic(*(*(a5 + 24) + 32), "CLM", 30006, "%s", v26, v27, v28, v29, "clm.dat not found");
    goto LABEL_39;
  }

  cstdlib_strcpy(__dst, "clm/");
  cstdlib_strcat(__dst, __s2);
  inited = brokeraux_ComposeBrokerString(*(a5 + 24), __dst, 0, 1, __s2, 0, 0, v56, 0x100uLL);
  if ((inited & 0x80000000) != 0 || (inited = brk_DataOpenEx(*(*v17 + 24), v56, 1, (v17 + 3)), (inited & 0x80000000) != 0))
  {
LABEL_38:
    v11 = inited;
  }

  else
  {
    *(v17 + 10) = 0;
    v11 = brk_DataMapEx(*(*v17 + 24), v17[3], 0, (v17 + 5), (v17 + 4));
    if ((v11 & 0x80000000) == 0)
    {
LABEL_33:
      *(a4 + 32) = *(a5 + 48);
      return v11;
    }

    brk_DataClose(*(*v17 + 24), v17[3]);
  }

LABEL_39:
  v35 = *(a5 + 48);
  if (v35)
  {
    heap_Free(*(v45 + 8), v35);
    *(a5 + 48) = 0;
  }

  return v11;
}

uint64_t IRefCnt_ObjcUnloadCLMData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 32);
  if (v3)
  {
    if (*(v3 + 44))
    {
      ssftriff_reader_ReleaseChunkData(*(v3 + 24));
    }

    else
    {
      brk_DataUnmap(*(*v3 + 24), *(v3 + 24), *(v3 + 32));
      brk_DataClose(*(*v3 + 24), *(v3 + 24));
    }

    *(v3 + 24) = 0;
    *(v3 + 32) = 0;
    *(v3 + 40) = 0;
    heap_Free(*(*v3 + 8), v3);
  }

  return 0;
}

uint64_t CLM_LoadRules(uint64_t a1, uint64_t a2, unsigned int a3, int a4, unsigned int *a5)
{
  v9 = 120;
  if (!a4)
  {
    v9 = 88;
  }

  v10 = 128;
  if (a4)
  {
    v11 = 136;
  }

  else
  {
    v10 = 96;
    v11 = 104;
  }

  if (a4)
  {
    v12 = 144;
  }

  else
  {
    v12 = 112;
  }

  result = CLM_EnumerateLanguages(a1, (a1 + v9), (a1 + v10), 0, a2, a3, *a5);
  if ((result & 0x80000000) == 0)
  {
    if ((CLM_FindSeperationRecord(a2, a3, a5) & 0x80000000) != 0)
    {
      return 2347777666;
    }

    else
    {
      v14 = CLM_EnumerateLanguages(a1, (a1 + v11), (a1 + v12), 0, a2, a3, *a5);
      return v14 & (v14 >> 31);
    }
  }

  return result;
}

uint64_t CLM_GetForeignLoanPhonemeSets(uint64_t a1, int a2, _WORD *a3, void *a4)
{
  v7 = safeh_HandleCheck(a1, a2, 63000, 216);
  result = 2347769864;
  if ((v7 & 0x80000000) == 0)
  {
    if (a1)
    {
      result = 0;
      *a3 = *(a1 + 204);
      *a4 = *(a1 + 208);
    }
  }

  return result;
}

uint64_t fe_normout_ObjClose(void *a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 62387, 120);
  if ((result & 0x80000000) != 0)
  {
    return 2340429832;
  }

  if (a1)
  {
    v4 = a1[14];
    if (v4)
    {
      heap_Free(*(*a1 + 8), v4);
    }

    a1[14] = 0;
    objc_ReleaseObject(*(*a1 + 48), "LINGDB");
    objc_ReleaseObject(*(*a1 + 48), "FE_DEPES");
    objc_ReleaseObject(*(*a1 + 48), "FE_DCTLKP");
    heap_Free(*(*a1 + 8), a1);
    return 0;
  }

  return result;
}

uint64_t fe_normout_ObjReopen(uint64_t a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 62387, 120);
  if ((result & 0x80000000) != 0)
  {
    return 2340429832;
  }

  if (a1)
  {

    return fe_normout_get_fecfg(a1);
  }

  return result;
}

uint64_t fe_normout_get_fecfg(uint64_t a1)
{
  v5 = 0;
  v4 = 0;
  v3 = 0;
  *(a1 + 104) = 0;
  result = (*(*(a1 + 56) + 96))(*(a1 + 40), *(a1 + 48), "fecfg", "usetntag", &v5, &v4, &v3);
  if ((result & 0x80000000) == 0)
  {
    if (v4 == 1 && v5 && **v5 == 49)
    {
      *(a1 + 104) = 1;
    }

    v4 = 0;
    result = (*(*(a1 + 56) + 96))(*(a1 + 40), *(a1 + 48), "fecfg", "mdesegpos_morpheme_processing", &v5, &v4, &v3);
    if ((result & 0x80000000) == 0 && v4 == 1 && v5 && **v5 == 49)
    {
      *(a1 + 108) = 1;
    }
  }

  return result;
}

uint64_t fe_normout_ProcessStart(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 62387, 120);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2340429832;
  }
}

uint64_t fe_normout_Process(void *a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v235 = *MEMORY[0x277D85DE8];
  v229 = 0;
  v227 = 0;
  v228 = 0;
  v226 = 0;
  v225 = 0;
  v224 = 0;
  v223 = 0;
  v222 = 0;
  v220 = 0;
  v221 = 0;
  v219 = 0;
  v218 = 0;
  v217 = 0;
  v216 = 0;
  v215 = 0;
  v214 = 0;
  v213 = 0;
  v212 = 1;
  v211 = 1;
  v210 = 1;
  v209 = 0;
  v207 = 0u;
  v208 = 0u;
  v205 = 0u;
  v206 = 0u;
  v203 = 0u;
  v204 = 0u;
  v201 = 0u;
  v202 = 0u;
  v199 = 0u;
  v200 = 0u;
  v197 = 0u;
  v198 = 0u;
  cstdlib_strcpy(__dst, "normout");
  if ((safeh_HandleCheck(a1, a2, 62387, 120) & 0x80000000) != 0)
  {
    return 2340429832;
  }

  *a5 = 1;
  v10 = (*(a1[4] + 112))(a1[2], a1[3], &v214, 0);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  v11 = (*(a1[1] + 104))(a3, a4, 1, 0, &v228 + 2);
  if ((v11 & 0x80000000) == 0 && ((*(a1[1] + 184))(a3, a4, HIWORD(v228), 0, &v218 + 2) & 0x80000000) == 0 && HIWORD(v218) == 1)
  {
    v11 = (*(a1[1] + 176))(a3, a4, HIWORD(v228), 0, &v229, &v226);
    if ((v11 & 0x80000000) == 0 && v226 >= 2u)
    {
      v12 = *(*a1 + 8);
      v13 = cstdlib_strlen(v229);
      v14 = heap_Calloc(v12, 1, v13 + 1);
      if (!v14)
      {
        log_OutPublic(*(*a1 + 32), "FE_NORMOUT", 43000, 0, v15, v16, v17, v18, v181);
        return 2340429834;
      }

      v19 = v14;
      cstdlib_strcpy(v14, v229);
      v20 = (*(a1[1] + 176))(a3, a4, HIWORD(v228), 1, &v215, &v227 + 2);
      if ((v20 & 0x80000000) == 0)
      {
        v25 = HIWORD(v227);
        v26 = *(v215 + 12);
        log_Markers(a1, "Markers IN", v215, HIWORD(v227), v21, v22, v23, v24);
        v233 = 0;
        v231 = 0;
        v232 = 0;
        v230 = 0;
        v27 = (*(a1[1] + 104))(a3, a4, 2, HIWORD(v228), &v233);
        v11 = v27;
        if ((v27 & 0x80000000) == 0)
        {
          v31 = v233;
          if (v233)
          {
            __src = v19;
            v32 = 0;
            while (1)
            {
              v33 = (*(a1[1] + 168))(a3, a4, v31, 0, 1, &v232, &v231 + 2);
              if ((v33 & 0x80000000) != 0)
              {
                break;
              }

              if (v232 > 0xA || ((1 << v232) & 0x610) == 0)
              {
                v38 = 0;
                v37 = v233;
              }

              else
              {
                v33 = (*(a1[1] + 168))(a3, a4, v233, 1, 1, &v231, &v231 + 2);
                if ((v33 & 0x80000000) != 0)
                {
                  break;
                }

                v33 = (*(a1[1] + 168))(a3, a4, v233, 2, 1, &v230, &v231 + 2);
                if ((v33 & 0x80000000) != 0)
                {
                  break;
                }

                v36 = v231 > v32 || v32 < v230;
                v37 = v233;
                if (v36)
                {
                  v32 = v230;
                  v38 = 0;
                }

                else
                {
                  v38 = v233;
                }
              }

              v33 = (*(a1[1] + 120))(a3, a4, v37, &v233);
              if ((v33 & 0x80000000) != 0)
              {
                break;
              }

              if (v38)
              {
                log_OutText(*(*a1 + 32), "FE_NORMOUT", 1, 0, "%s", v28, v29, v30, "Dropping nested word record");
                v33 = (*(a1[1] + 192))(a3, a4, v38);
                if ((v33 & 0x80000000) != 0)
                {
                  break;
                }
              }

              v31 = v233;
              if (!v233)
              {
                v19 = __src;
                goto LABEL_40;
              }
            }

            v11 = v33;
            v105 = 0;
            v45 = 0;
            goto LABEL_77;
          }
        }

        if ((v27 & 0x80000000) != 0)
        {
          goto LABEL_74;
        }

LABEL_40:
        log_OutText(*(*a1 + 32), "FE_NORMOUT", 5, 0, " ", v28, v29, v30, v181);
        *(&v198 + 1) = &v211;
        *&v199 = &v210;
        *&v198 = &v218;
        *&v197 = a1;
        *(&v200 + 1) = v19;
        *&v201 = 0;
        *(&v201 + 1) = &v213;
        *&v202 = &v226 + 2;
        *(&v199 + 1) = &v217 + 2;
        *&v200 = &v212;
        *(&v202 + 1) = &v216;
        *&v203 = &v217;
        *(&v203 + 1) = &v216 + 2;
        v20 = (*(a1[1] + 288))(a3, a4, HIWORD(v228), getSentenceAndInsertedCGNLengthPre, getSentenceAndInsertedCGNLength, 0, getSentenceAndInsertedCGNLengthPost, &v197);
        if ((v20 & 0x80000000) == 0)
        {
          LOWORD(v228) = WORD4(v197);
          v40 = heap_Calloc(*(*a1 + 8), 1, (16 * v218) | 1);
          v45 = v40;
          if (v40)
          {
            cstdlib_memset(v40, 0, 0x10uLL);
            v46 = heap_Alloc(*(*a1 + 8), v210 + 128);
            a1[8] = v46;
            if (v46)
            {
              cstdlib_strcpy(v46, "");
              v47 = heap_Alloc(*(*a1 + 8), v211);
              a1[9] = v47;
              if (v47)
              {
                cstdlib_strcpy(v47, "");
                v48 = heap_Alloc(*(*a1 + 8), v211);
                a1[10] = v48;
                if (v48)
                {
                  cstdlib_strcpy(v48, "");
                  v49 = heap_Alloc(*(*a1 + 8), v210 + 128);
                  a1[11] = v49;
                  if (v49)
                  {
                    cstdlib_strcpy(v49, "");
                    if (!*(a1 + 26))
                    {
                      goto LABEL_49;
                    }

                    v50 = heap_Alloc(*(*a1 + 8), v211);
                    a1[12] = v50;
                    if (v50)
                    {
                      cstdlib_strcpy(v50, "");
LABEL_49:
                      v212 = 1;
                      *(&v205 + 1) = v45;
                      v51 = (*(a1[1] + 288))(a3, a4, HIWORD(v228), 0, normOutFnc, 0, normOutFncPost, &v197);
                      if ((v51 & 0x80000000) == 0)
                      {
                        v194 = v26;
                        v195 = v25;
                        log_OutText(*(*a1 + 32), "FE_NORMOUT", 5, 0, "ORIG   : %s", v52, v53, v54, v19);
                        log_OutText(*(*a1 + 32), "FE_NORMOUT", 5, 0, " ", v55, v56, v57, v183);
                        log_OutText(*(*a1 + 32), "FE_NORMOUT", 5, 0, "L1: %s", v58, v59, v60, a1[8]);
                        v61 = *(a1[4] + 120);
                        v62 = a1[8];
                        v63 = cstdlib_strlen(v62);
                        v51 = v61(a1[2], a1[3], 0, v62, v63);
                        if ((v51 & 0x80000000) == 0)
                        {
                          log_OutText(*(*a1 + 32), "FE_NORMOUT", 5, 0, "L2: %s", v64, v65, v66, a1[9]);
                          v67 = *(a1[4] + 120);
                          v68 = a1[9];
                          v69 = cstdlib_strlen(v68);
                          v51 = v67(a1[2], a1[3], 1, v68, v69);
                          if ((v51 & 0x80000000) == 0)
                          {
                            log_OutText(*(*a1 + 32), "FE_NORMOUT", 5, 0, "L3: %s", v70, v71, v72, a1[10]);
                            v73 = *(a1[4] + 120);
                            v74 = a1[10];
                            v75 = cstdlib_strlen(v74);
                            v51 = v73(a1[2], a1[3], 2, v74, v75);
                            if ((v51 & 0x80000000) == 0)
                            {
                              __src = v19;
                              log_OutText(*(*a1 + 32), "FE_NORMOUT", 5, 0, "L4: %s", v76, v77, v78, a1[11]);
                              v79 = *(a1[4] + 120);
                              v80 = a1[11];
                              v81 = cstdlib_strlen(v80);
                              v82 = v79(a1[2], a1[3], 3, v80, v81);
                              if ((v82 & 0x80000000) != 0)
                              {
                                goto LABEL_97;
                              }

                              if (*(a1 + 26))
                              {
                                log_OutText(*(*a1 + 32), "FE_NORMOUT", 5, 0, "L5: %s", v83, v84, v85, a1[12]);
                                v86 = *(a1[4] + 136);
                                v87 = a1[12];
                                v88 = cstdlib_strlen(v87);
                                v82 = v86(a1[2], a1[3], 4, v87, v88);
                                if ((v82 & 0x80000000) != 0)
                                {
                                  goto LABEL_97;
                                }
                              }

                              log_OutText(*(*a1 + 32), "FE_NORMOUT", 5, 0, " ", v83, v84, v85, v184);
                              if (((*(a1[4] + 80))(a1[2], a1[3], __dst) & 0x80000000) != 0)
                              {
                                v105 = 0;
                                v106 = 0;
                                v11 = 0;
                                goto LABEL_78;
                              }

                              v82 = (*(a1[4] + 128))(a1[2], a1[3], 0, &v221, &v219);
                              if ((v82 & 0x80000000) != 0 || (v221[v219] = 0, log_OutText(*(*a1 + 32), "FE_NORMOUT", 5, 0, "O1     : %s", v89, v90, v91, v221), v82 = (*(a1[4] + 128))(a1[2], a1[3], 3, &v220, &v219 + 2), (v82 & 0x80000000) != 0))
                              {
LABEL_97:
                                v11 = v82;
                                v105 = 0;
LABEL_77:
                                v106 = 0;
LABEL_78:
                                v19 = __src;
                                goto LABEL_80;
                              }

                              v220[HIWORD(v219)] = 0;
                              log_OutText(*(*a1 + 32), "FE_NORMOUT", 5, 0, "O4     : %s", v92, v93, v94, v220);
                              log_OutText(*(*a1 + 32), "FE_NORMOUT", 5, 0, "ORIGL1 : %s", v95, v96, v97, v19);
                              if (HIWORD(v219))
                              {
                                v98 = 0;
                                v99 = 0;
                                do
                                {
                                  if (!cstdlib_strncmp(&v220[v98], "▬", 3uLL) && cstdlib_strncmp(&v221[v99], "▬", 3uLL))
                                  {
                                    v100 = Utf8_LengthInUtf8chars(v220, v98);
                                    v99 = Utf8_LengthInBytes(v221, v100);
                                    cstdlib_memmove(&v221[v99 + 3], &v221[v99 + 1], v219 - v99);
                                    cstdlib_strncpy(&v221[v99], "▬", 3uLL);
                                    LOWORD(v219) = v219 + 2;
                                  }

                                  ++v98;
                                  ++v99;
                                }

                                while (v98 < HIWORD(v219));
                              }

                              v101 = v219;
                              if (v219)
                              {
                                v102 = 0;
                                do
                                {
                                  v103 = v102;
                                  if (v221[v102] == 126)
                                  {
                                    if (v102 < v101)
                                    {
                                      do
                                      {
                                        v221[v103] = v221[v103 + 1];
                                        ++v103;
                                        v101 = v219;
                                      }

                                      while (v103 < v219);
                                    }

                                    LOWORD(v219) = --v101;
                                    --v102;
                                  }

                                  ++v102;
                                }

                                while (v102 < v101);
                                v104 = v101;
                              }

                              else
                              {
                                v104 = 0;
                              }

                              v221[v104] = 0;
                              __s = heap_Calloc(*(*a1 + 8), 1, v226 + 1);
                              if (!__s)
                              {
                                log_OutPublic(*(*a1 + 32), "FE_NORMOUT", 43000, 0, v112, v113, v114, v115, v185);
                                v105 = 0;
                                v106 = 0;
                                v11 = 2340429834;
                                goto LABEL_78;
                              }

                              cstdlib_strcpy(__s, v19);
                              v116 = cstdlib_strlen(__s);
                              cstdlib_memset(a1[14], 0, 0x80uLL);
                              v117 = fe_normout_split_words(a1, a3, a4, v221, a1[14], &v223);
                              if ((v117 & 0x80000000) != 0)
                              {
                                goto LABEL_151;
                              }

                              v117 = fe_normout_split_words(a1, a3, a4, v19, 0, &v223 + 1);
                              if ((v117 & 0x80000000) != 0)
                              {
                                goto LABEL_151;
                              }

                              log_OutText(*(*a1 + 32), "FE_NORMOUT", 5, 0, " ", v118, v119, v120, v185);
                              v121 = v223;
                              v122 = HIWORD(v223);
                              log_OutText(*(*a1 + 32), "FE_NORMOUT", 5, 0, "comparing O1 (%d words) and ORIGL1 (%d words) ", v123, v124, v125, v223);
                              if (v122 != v121)
                              {
                                log_OutText(*(*a1 + 32), "FE_NORMOUT", 5, 0, "Mismatch number of orthographic words and number of phonetic words : abandon processing", v126, v127, v128, v186);
                                v106 = 0;
                                v11 = 0;
LABEL_152:
                                v105 = __s;
                                goto LABEL_78;
                              }

                              v224 = 0;
                              v129 = v226;
                              if (!v226)
                              {
                                v157 = 0;
LABEL_144:
                                log_OutText(*(*a1 + 32), "FE_NORMOUT", 5, 0, " ", v126, v127, v128, v186);
                                v209 = 0;
                                LOWORD(v223) = 0;
                                v208 = __s;
                                *&v204 = &v223;
                                *(&v204 + 1) = &v222;
                                *&v206 = 0;
                                *&v205 = &v209;
                                v117 = (*(a1[1] + 288))(a3, a4, HIWORD(v228), 0, MvToEqWordRecUpdFieldsFnc, 0, 0, &v197);
                                if ((v117 & 0x80000000) == 0)
                                {
                                  v106 = *(&v208 + 1);
                                  v158 = v208;
                                  v159 = *(a1[1] + 160);
                                  v160 = HIWORD(v228);
                                  v161 = cstdlib_strlen(v208);
                                  v162 = a4;
                                  v105 = v158;
                                  v163 = v159(a3, v162, v160, 0, (v161 + 1), v158, &v227);
                                  if ((v163 & 0x80000000) != 0)
                                  {
                                    v11 = v163;
                                  }

                                  else
                                  {
                                    log_OutText(*(*a1 + 32), "FE_NORMOUT", 5, 0, "new SE_TEXT : %s", v164, v165, v166, v158);
                                    log_OutText(*(*a1 + 32), "FE_NORMOUT", 5, 0, " ", v167, v168, v169, v187);
                                    if (v218)
                                    {
                                      v173 = 0;
                                      v174 = v45 + 14;
                                      do
                                      {
                                        v175 = *(v174 - 14);
                                        v174 += 16;
                                        log_OutText(*(*a1 + 32), "FE_NORMOUT", 5, 0, "WORDREC[%d] %d,%d --> %d,%d", v170, v171, v172, v175);
                                        ++v173;
                                      }

                                      while (v173 < v218);
                                    }

                                    v176 = cstdlib_strlen(v158);
                                    *(v215 + 16) = v176;
                                    v214 += v157;
                                    v11 = (*(a1[4] + 104))(a1[2], a1[3]);
                                    if ((v11 & 0x80000000) == 0)
                                    {
                                      log_Markers(a1, "Markers OUT", v215, v195, v177, v178, v179, v180);
                                    }
                                  }

                                  goto LABEL_78;
                                }

                                goto LABEL_151;
                              }

                              v191 = 0;
                              v192 = 0;
                              v188 = v116;
                              while (1)
                              {
                                if (getNextWord(&v224 + 1, &v225 + 1, __src, v129))
                                {
                                  NextWord = getNextWord(&v224, &v225, v221, v219);
                                  v131 = HIWORD(v224);
                                  if (NextWord)
                                  {
                                    v132 = v224;
                                    log_OutText(*(*a1 + 32), "FE_NORMOUT", 5, 0, "COMPARE WORD[%d] %s and %s", v126, v127, v128, v192);
                                    if (cstdlib_strcmp(&__src[HIWORD(v224)], &v221[v132]))
                                    {
                                      log_OutText(*(*a1 + 32), "FE_NORMOUT", 5, 0, "   UPDATE WORD[%d] %s and %s", v126, v127, v128, v192);
                                      v133 = cstdlib_strstr(&v221[v132], "▲");
                                      if (v133)
                                      {
                                        v134 = 0;
                                        while (1)
                                        {
                                          *(&v206 + 1) = v133;
                                          *&v207 = v134;
                                          *(&v207 + 1) = &v224 + 2;
                                          v117 = (*(a1[1] + 280))(a3, a4, &v228, updateWordRecFnc, &v197);
                                          if ((v117 & 0x80000000) != 0)
                                          {
                                            break;
                                          }

                                          v139 = *(&v206 + 1);
                                          v134 = v207;
                                          HIWORD(v224) = **(&v207 + 1);
                                          **(&v206 + 1) = 0;
                                          if (!v134)
                                          {
                                            log_OutPublic(*(*a1 + 32), "FE_NORMOUT", 43001, "%s%s", v135, v136, v137, v138, "message");
                                            v106 = 0;
                                            v11 = 2340429831;
                                            goto LABEL_152;
                                          }

                                          v140 = cstdlib_strlen((v134 + 3));
                                          cstdlib_memmove(v139, (v134 + 3), v140 + 1);
                                          v133 = cstdlib_strstr(&v221[v132], "▲");
                                          if (!v133)
                                          {
                                            goto LABEL_114;
                                          }
                                        }

LABEL_151:
                                        v11 = v117;
                                        v106 = 0;
                                        goto LABEL_152;
                                      }

LABEL_114:
                                      v141 = cstdlib_strlen(&v221[v132]);
                                      v142 = cstdlib_strlen(&__src[HIWORD(v224)]);
                                      v189 = cstdlib_strlen(__s);
                                      v190 = v141;
                                      v143 = v141;
                                      if (v141 > v142)
                                      {
                                        v144 = (v141 - v142 + v189);
                                        v145 = heap_Realloc(*(*a1 + 8), __s, (v144 + 1));
                                        if (!v145)
                                        {
                                          v106 = 0;
                                          v11 = 2340429834;
                                          goto LABEL_152;
                                        }

                                        *(v145 + v144) = 0;
                                        __s = v145;
                                      }

                                      v146 = v143 - v142;
                                      if (v143 == v142)
                                      {
                                        cstdlib_memcpy(&__s[HIWORD(v224) + v191], &v221[v224], v190);
                                        goto LABEL_134;
                                      }

                                      cstdlib_memmove(&__s[v143 + v191 + HIWORD(v224)], &__s[v142 + HIWORD(v224) + v191], v188 - (v142 + HIWORD(v224)));
                                      cstdlib_memcpy(&__s[HIWORD(v224) + v191], &v221[v224], v190);
                                      updateWordRecs(a1, a3, a4, v45, v218, HIWORD(v224), v142, v190);
                                      if (v195)
                                      {
                                        v147 = 0;
                                        v148 = (v215 + 12);
                                        while (1)
                                        {
                                          v149 = *v148;
                                          v148 += 8;
                                          if (v149 - v194 > (HIWORD(v224) + v191))
                                          {
                                            break;
                                          }

                                          if (v195 == ++v147)
                                          {
                                            goto LABEL_134;
                                          }
                                        }
                                      }

                                      else
                                      {
                                        LOWORD(v147) = 0;
                                      }

                                      if (v195 > v147)
                                      {
                                        v150 = v215;
                                        v147 = v147;
                                        v151 = (v215 + 12);
                                        v152 = v147 - 1;
                                        v153 = (v215 + 12 + 32 * v147);
                                        do
                                        {
                                          if (v147)
                                          {
                                            v154 = v146 + *v153;
                                            if (*(v150 + 32 * v152 + 12) > v154)
                                            {
                                              goto LABEL_133;
                                            }
                                          }

                                          else
                                          {
                                            v154 = v146 + *v151;
                                          }

                                          *v153 = v154;
LABEL_133:
                                          ++v147;
                                          ++v152;
                                          v153 += 8;
                                        }

                                        while (v195 != v147);
                                      }

LABEL_134:
                                      v191 += v190 - v142;
                                      if (v143 < v142 && (v142 - v143) >= 1)
                                      {
                                        v155 = 0;
                                        v156 = v189 - 1;
                                        do
                                        {
                                          __s[v156] = 0;
                                          ++v155;
                                          --v156;
                                        }

                                        while (v142 - v143 > v155);
                                      }
                                    }

                                    v131 = HIWORD(v225);
                                    LOWORD(v224) = v225;
                                    ++v192;
                                    v129 = v226;
                                  }
                                }

                                else
                                {
                                  v131 = HIWORD(v224);
                                }

                                HIWORD(v224) = v131 + 1;
                                if ((v131 + 1) >= v129)
                                {
                                  v157 = v191;
                                  goto LABEL_144;
                                }
                              }
                            }
                          }
                        }
                      }

                      v11 = v51;
                      v105 = 0;
LABEL_75:
                      v106 = 0;
LABEL_80:
                      heap_Free(*(*a1 + 8), v19);
                      if (v106)
                      {
                        heap_Free(*(*a1 + 8), v106);
                      }

                      if (v45)
                      {
                        heap_Free(*(*a1 + 8), v45);
                      }

                      if (v105)
                      {
                        heap_Free(*(*a1 + 8), v105);
                      }

                      v107 = a1[8];
                      if (v107)
                      {
                        heap_Free(*(*a1 + 8), v107);
                        a1[8] = 0;
                      }

                      v108 = a1[9];
                      if (v108)
                      {
                        heap_Free(*(*a1 + 8), v108);
                        a1[9] = 0;
                      }

                      v109 = a1[10];
                      if (v109)
                      {
                        heap_Free(*(*a1 + 8), v109);
                        a1[10] = 0;
                      }

                      v110 = a1[11];
                      if (v110)
                      {
                        heap_Free(*(*a1 + 8), v110);
                        a1[11] = 0;
                      }

                      v111 = a1[12];
                      if (v111)
                      {
                        heap_Free(*(*a1 + 8), v111);
                        a1[12] = 0;
                      }

                      return v11;
                    }
                  }
                }
              }
            }
          }

          log_OutPublic(*(*a1 + 32), "FE_NORMOUT", 43000, 0, v41, v42, v43, v44, v182);
          v105 = 0;
          v106 = 0;
          v11 = 2340429834;
          goto LABEL_80;
        }
      }

      v11 = v20;
LABEL_74:
      v105 = 0;
      v45 = 0;
      goto LABEL_75;
    }
  }

  return v11;
}

uint64_t log_Markers(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = log_OutText(*(*a1 + 32), "FE_NORMOUT", 5, 0, a2, a6, a7, a8, v19);
  if (a4)
  {
    v15 = a4;
    v16 = a3 + 8;
    do
    {
      v17 = *(*a1 + 32);
      v18 = *(v16 - 8);
      if (v18 == 0x4000)
      {
        result = log_OutText(v17, "FE_NORMOUT", 5, 0, "Marker [type=SYNC] Ref (%d,%d) Cur(%d,%d)", v12, v13, v14, *(v16 - 4));
      }

      else
      {
        result = log_OutText(v17, "FE_NORMOUT", 5, 0, "Marker [type=%5u] Ref (%d,%d) Cur(%d,%d)", v12, v13, v14, v18);
      }

      v16 += 32;
      --v15;
    }

    while (v15);
  }

  return result;
}

uint64_t getSentenceAndInsertedCGNLength(uint64_t a1, uint64_t a2, unsigned __int16 *a3, uint64_t *a4)
{
  v24 = 0;
  v25 = 0;
  v23 = 0;
  __s = 0;
  v8 = *a4;
  v9 = (*(*(*a4 + 8) + 168))(a1, a2, *a3, 0, 1, &v25, &v24 + 2);
  if ((v9 & 0x80000000) != 0)
  {
    return v9;
  }

  ++*a4[2];
  v10 = v25;
  if (v25 <= 0xA && ((1 << v25) & 0x610) != 0)
  {
    v11 = a4[6];
    if (!*v11)
    {
      v12 = a4[4];
      ++*a4[3];
      ++*v12;
    }

    *v11 = 0;
    v13 = (*(*(v8 + 8) + 168))(a1, a2, *a3, 1, 1, &v24, &v24 + 2);
    if ((v13 & 0x80000000) != 0)
    {
      return v13;
    }

    v9 = (*(*(v8 + 8) + 168))(a1, a2, *a3, 2, 1, &v23, &v24 + 2);
    if ((v9 & 0x80000000) != 0)
    {
      return v9;
    }

    v14 = Utf8_LengthInUtf8chars((a4[7] + v24), v23 - v24);
    v15 = a4[4];
    *a4[3] += v14;
    *v15 = v23 + *v15 - v24;
    v10 = v25;
  }

  if (v10 == 7)
  {
    v9 = (*(*(v8 + 8) + 176))(a1, a2, *a3, 4, &__s, &v24 + 2);
    if ((v9 & 0x80000000) != 0)
    {
      return v9;
    }

    *a4[4] += cstdlib_strlen(__s) + 6;
    *a4[3] += cstdlib_strlen(__s) + 2;
    v10 = v25;
  }

  if (*(*a4 + 104))
  {
    v16 = v10 == 6;
  }

  else
  {
    v16 = 0;
  }

  if (v16)
  {
    v9 = (*(*(v8 + 8) + 176))(a1, a2, *a3, 4, &__s, &v24 + 2);
    if ((v9 & 0x80000000) == 0)
    {
      v17 = *a4[3];
      v18 = cstdlib_strlen(__s);
      v19 = a4[4];
      *a4[3] = v17 + 2 * v18 - 2;
      v20 = *v19;
      *a4[4] = v20 + 2 * cstdlib_strlen(__s) - 2;
    }
  }

  return v9;
}

uint64_t normOutFnc(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t *a4)
{
  v84 = 0;
  v85 = 0;
  v83 = 0;
  v82 = 0;
  v79 = 0;
  __s2 = 0;
  __s = 0;
  v8 = *a4;
  *(a4[17] + 16 * *a4[10]) = *a3;
  BacktransPOS = (*(*(v8 + 8) + 168))();
  if ((BacktransPOS & 0x80000000) != 0)
  {
    return BacktransPOS;
  }

  *(a4[17] + 16 * *a4[10] + 4) = v85;
  BacktransPOS = (*(*(v8 + 8) + 168))(a1, a2, *a3, 1, 1, &v84, &v84 + 2);
  if ((BacktransPOS & 0x80000000) != 0)
  {
    return BacktransPOS;
  }

  v10 = (*(*(v8 + 8) + 168))(a1, a2, *a3, 2, 1, &v83, &v84 + 2);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  v11 = v84;
  v12 = a4[17];
  v13 = a4[10];
  *(v12 + 16 * *v13 + 12) = v84;
  *(v12 + 16 * *v13 + 8) = v11;
  v14 = v83;
  *(v12 + 16 * *v13 + 14) = v83;
  *(v12 + 16 * *v13 + 10) = v14;
  v15 = v83 - v84;
  v16 = cstdlib_strlen((a4[7] + v84));
  v17 = a4[7];
  v18 = v84;
  if (v15 <= v16)
  {
    v21 = v83 - v84;
    v20 = (v17 + v84);
  }

  else
  {
    v19 = cstdlib_strlen((v17 + v84));
    v20 = (v17 + v18);
    v21 = v19 + 1;
  }

  v22 = Utf8_LengthInUtf8chars(v20, v21);
  v23 = v85;
  if (v85 <= 0xA && ((1 << v85) & 0x610) != 0)
  {
    *a4[5] = v83;
    BacktransPOS = (*(*(v8 + 8) + 176))(a1, a2, *a3, 5, &__s2, &v84 + 2);
    if ((BacktransPOS & 0x80000000) != 0)
    {
      return BacktransPOS;
    }

    BacktransPOS = com_mosynt_UseMosynt(*(v8 + 40), *(v8 + 48), *(v8 + 56), &v82);
    if ((BacktransPOS & 0x80000000) != 0)
    {
      return BacktransPOS;
    }

    if (v82)
    {
      BacktransPOS = com_mosynt_GetBacktransPOS(*(v8 + 40), *(v8 + 48), *(v8 + 56), __s2, v81);
      if ((BacktransPOS & 0x80000000) != 0)
      {
        return BacktransPOS;
      }

      __s2 = v81;
    }

    v10 = (*(*(v8 + 8) + 176))(a1, a2, *a3, 6, &v79, &v84 + 2);
    if ((v10 & 0x80000000) != 0)
    {
      return v10;
    }

    if (*(v8 + 104) && !*a4[6])
    {
      v24 = a4[8];
      if (v24 && v84 != *a4[13])
      {
        if (v84 > *a4[12])
        {
          v26 = *a4[11];
          v27 = 2 * cstdlib_strlen(v24) - 2;
          cstdlib_strcat(*(v8 + 96), "X");
          v28 = *(v8 + 96);
          v29 = a4[8];
          v30 = cstdlib_strlen(v29);
          cstdlib_strncat(v28, v29 + 1, v30 - 2);
          if (v27 >= v26)
          {
            cstdlib_strcat(*(v8 + 96), "Y");
            v35 = *(v8 + 96);
            v36 = a4[8];
            v37 = cstdlib_strlen(v36);
            cstdlib_strncat(v35, v36 + 1, v37 - 2);
            v38 = *a4[11];
            if (2 * cstdlib_strlen(a4[8]) - 2 > v38)
            {
              do
              {
                cstdlib_strcat(*(v8 + 64), "~");
                cstdlib_strcat(*(v8 + 72), "~");
                cstdlib_strcat(*(v8 + 80), "~");
                cstdlib_strcat(*(v8 + 88), "~");
                LODWORD(v38) = v38 + 1;
              }

              while (2 * cstdlib_strlen(a4[8]) - 2 > v38);
            }
          }

          else
          {
            v31 = 2 * cstdlib_strlen(a4[8]) - 2;
            if ((v31 & 0xFFFEu) < *a4[11])
            {
              do
              {
                cstdlib_strcat(*(v8 + 96), "~");
                ++v31;
              }

              while (*a4[11] > v31);
            }

            cstdlib_strcat(*(v8 + 96), "Y");
            v32 = *(v8 + 96);
            v33 = a4[8];
            v34 = cstdlib_strlen(v33);
            cstdlib_strncat(v32, v33 + 1, v34 - 2);
          }

          a4[8] = 0;
        }
      }

      else if (*a4[9])
      {
        v25 = 0;
        do
        {
          cstdlib_strcat(*(v8 + 96), " ");
          ++v25;
        }

        while (v25 < *a4[9]);
      }
    }

    v39 = *a4[6];
    v40 = v84;
    if (v39)
    {
      v41 = 0;
    }

    else
    {
      v42 = v40 - utf8_GetPreviousUtf8Offset(a4[7], v84);
      cstdlib_strncat(*(v8 + 64), (a4[7] + v84 - v42), v42);
      cstdlib_strcat(*(v8 + 72), " ");
      cstdlib_strcat(*(v8 + 80), " ");
      cstdlib_strncat(*(v8 + 88), (a4[7] + v84 - v42), v42);
      v41 = 1;
      v40 = v84;
    }

    cstdlib_strncat(*(v8 + 64), (a4[7] + v40), v83 - v40);
    cstdlib_strncat(*(v8 + 88), (a4[7] + v84), v83 - v84);
    v22 = Utf8_LengthInUtf8chars((a4[7] + v84), v83 - v84);
    v43 = v22;
    if (v22)
    {
      do
      {
        cstdlib_strncat(*(v8 + 72), __s2, 1uLL);
        cstdlib_strncat(*(v8 + 80), v79, 1uLL);
        --v43;
      }

      while (v43);
    }

    *a4[9] = v22;
    if (*(v8 + 104))
    {
      v44 = a4[8];
      if (v44 && v84 != *a4[13])
      {
        *a4[11] += v41 + v22;
      }

      else
      {
        if (!v39)
        {
          cstdlib_strcat(*(v8 + 96), " ");
          v44 = a4[8];
        }

        if (v44)
        {
          *a4[11] = *a4[9];
        }
      }
    }

    *a4[6] = 0;
    v23 = v85;
  }

  if (v23 == 7)
  {
    v45 = cstdlib_strlen(*(v8 + 64));
    v10 = (*(*(v8 + 8) + 176))(a1, a2, *a3, 4, &__s, &v84 + 2);
    if ((v10 & 0x80000000) != 0)
    {
      return v10;
    }

    v46 = cstdlib_strlen(__s);
    v47 = Utf8_LengthInUtf8chars(*(v8 + 64), v45);
    v48 = Utf8_LengthInBytes(*(v8 + 88), v47);
    if (v84 >= *a4[5])
    {
      cstdlib_strcat(*(v8 + 64), "▲");
      cstdlib_strcat(*(v8 + 64), __s);
      cstdlib_strcat(*(v8 + 64), "▼");
      v58 = 0;
      v59 = v46 + 2;
      do
      {
        cstdlib_strcat(*(v8 + 72), " ");
        cstdlib_strcat(*(v8 + 80), " ");
        cstdlib_strcat(*(v8 + 88), "~");
        ++v58;
      }

      while (v59 > v58);
    }

    else
    {
      v76 = v46;
      v75 = v48;
      cstdlib_memmove((*(v8 + 64) + v45 + v84 - *a4[5] + v46 + 6), (*(v8 + 64) + v45 - *a4[5] + v84), *a4[5] - v84 + 1);
      v49 = (*(v8 + 72) + v47 - v22);
      v77 = v45;
      cstdlib_memmove(&v49[v46 + 2], v49, v22 + 1);
      v50 = (*(v8 + 80) + v47 - v22);
      cstdlib_memmove(&v50[v46 + 2], v50, v22 + 1);
      v51 = *a4[5];
      v52 = (*(v8 + 88) + v75 - v51 + v84);
      v53 = v46;
      cstdlib_memmove(&v52[v46 + 2], v52, v51 - v84 + 1);
      cstdlib_strncpy((*(v8 + 64) + (v77 - *a4[5] + v84)), "▲", 3uLL);
      v54 = v47 - v22;
      *(*(v8 + 72) + v54) = 32;
      *(*(v8 + 80) + v54) = 32;
      *(*(v8 + 88) + v75 - *a4[5] + v84) = 126;
      v55 = v54 + 1;
      if (v76)
      {
        v56 = 0;
        v57 = v75;
        do
        {
          if (__s[v56])
          {
            *(*(v8 + 64) + v77 + v56 + v84 - *a4[5] + 3) = __s[v56];
          }

          *(*(v8 + 72) + v55 + v56) = 32;
          *(*(v8 + 80) + v55 + v56) = 32;
          *(*(v8 + 88) + v57 - *a4[5] + v84 + 1) = 126;
          ++v56;
          ++v57;
        }

        while (v53 != v56);
      }

      cstdlib_strncpy((*(v8 + 64) + (v77 + v53 - *a4[5] + v84 + 3)), "▼", 3uLL);
      *(*(v8 + 72) + v55 + v76) = 32;
      *(*(v8 + 80) + v55 + v76) = 32;
      *(*(v8 + 88) + v75 + v76 + v84 - *a4[5] + 1) = 126;
    }

    if (a4[8])
    {
      *a4[11] += cstdlib_strlen(__s) + 2;
    }

    *a4[9] += cstdlib_strlen(__s) + 2;
    v23 = v85;
  }

  if (v23 != 6)
  {
LABEL_74:
    ++*a4[10];
    return v10;
  }

  BacktransPOS = (*(*(v8 + 8) + 168))(a1, a2, *a3, 1, 1, a4[13], &v84 + 2);
  if ((BacktransPOS & 0x80000000) != 0)
  {
    return BacktransPOS;
  }

  if (*(v8 + 104))
  {
    v60 = a4[8];
    if (v60)
    {
      if (*a4[13] > *a4[12])
      {
        v61 = *a4[11];
        v62 = 2 * cstdlib_strlen(v60) - 2;
        cstdlib_strcat(*(v8 + 96), "X");
        v63 = *(v8 + 96);
        v64 = a4[8];
        v65 = cstdlib_strlen(v64);
        cstdlib_strncat(v63, v64 + 1, v65 - 2);
        if (v62 >= v61)
        {
          cstdlib_strcat(*(v8 + 96), "Y");
          v70 = *(v8 + 96);
          v71 = a4[8];
          v72 = cstdlib_strlen(v71);
          cstdlib_strncat(v70, v71 + 1, v72 - 2);
          v73 = *a4[11];
          if (2 * cstdlib_strlen(a4[8]) - 2 > v73)
          {
            do
            {
              cstdlib_strcat(*(v8 + 64), "~");
              cstdlib_strcat(*(v8 + 72), "~");
              cstdlib_strcat(*(v8 + 80), "~");
              cstdlib_strcat(*(v8 + 88), "~");
              LODWORD(v73) = v73 + 1;
            }

            while (2 * cstdlib_strlen(a4[8]) - 2 > v73);
          }
        }

        else
        {
          v66 = 2 * cstdlib_strlen(a4[8]) - 2;
          if ((v66 & 0xFFFEu) < *a4[11])
          {
            do
            {
              cstdlib_strcat(*(v8 + 96), "~");
              ++v66;
            }

            while (*a4[11] > v66);
          }

          cstdlib_strcat(*(v8 + 96), "Y");
          v67 = *(v8 + 96);
          v68 = a4[8];
          v69 = cstdlib_strlen(v68);
          cstdlib_strncat(v67, v68 + 1, v69 - 2);
        }

        a4[8] = 0;
        *a4[9] = 0;
      }
    }
  }

  BacktransPOS = (*(*(v8 + 8) + 176))(a1, a2, *a3, 4, a4 + 8, &v84 + 2);
  if ((BacktransPOS & 0x80000000) != 0)
  {
    return BacktransPOS;
  }

  v10 = (*(*(v8 + 8) + 168))(a1, a2, *a3, 2, 1, a4[12], &v84 + 2);
  if ((v10 & 0x80000000) == 0)
  {
    *a4[11] = *a4[9];
    goto LABEL_74;
  }

  return v10;
}

uint64_t normOutFncPost(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a4;
  if (*(*a4 + 104) && !**(a4 + 48))
  {
    v7 = *(a4 + 64);
    if (v7)
    {
      v8 = **(a4 + 88);
      v9 = 2 * cstdlib_strlen(v7) - 2;
      cstdlib_strcat(v4[12], "X");
      v10 = v4[12];
      v11 = *(a4 + 64);
      v12 = cstdlib_strlen(v11);
      cstdlib_strncat(v10, v11 + 1, v12 - 2);
      if (v9 >= v8)
      {
        cstdlib_strcat(v4[12], "Y");
        v18 = v4[12];
        v19 = *(a4 + 64);
        v20 = cstdlib_strlen(v19);
        cstdlib_strncat(v18, v19 + 1, v20 - 2);
        v21 = **(a4 + 88);
        if (2 * cstdlib_strlen(*(a4 + 64)) - 2 > v21)
        {
          do
          {
            cstdlib_strcat(v4[8], "~");
            cstdlib_strcat(v4[9], "~");
            cstdlib_strcat(v4[10], "~");
            cstdlib_strcat(v4[11], "~");
            LODWORD(v21) = v21 + 1;
          }

          while (2 * cstdlib_strlen(*(a4 + 64)) - 2 > v21);
        }
      }

      else
      {
        v13 = 2 * cstdlib_strlen(*(a4 + 64)) - 2;
        if ((v13 & 0xFFFEu) < **(a4 + 88))
        {
          do
          {
            cstdlib_strcat(v4[12], "~");
            ++v13;
          }

          while (**(a4 + 88) > v13);
        }

        cstdlib_strcat(v4[12], "Y");
        v14 = v4[12];
        v15 = *(a4 + 64);
        v16 = cstdlib_strlen(v15);
        cstdlib_strncat(v14, v15 + 1, v16 - 2);
      }
    }

    else if (**(a4 + 72))
    {
      v17 = 0;
      do
      {
        cstdlib_strcat(v4[12], " ");
        ++v17;
      }

      while (v17 < **(a4 + 72));
    }
  }

  return 0;
}

uint64_t fe_normout_split_words(void *a1, uint64_t a2, uint64_t a3, char *__s, uint64_t a5, unsigned __int16 *a6)
{
  v11 = cstdlib_strlen(__s);
  *a6 = 0;
  v48 = v11;
  v12 = v11;
  if (!v11)
  {
    v44 = 0;
    goto LABEL_87;
  }

  v49 = 0;
  v46 = a6;
  v51 = 0;
  v13 = 0;
  v14 = v11;
  do
  {
    v15 = &__s[v13];
    v16 = *v15;
    if (v16 != 32 && v16 != 95 && cstdlib_strncmp(&__s[v13], "▬", 3uLL))
    {
      goto LABEL_82;
    }

    if (a5 && v49 >= 0x80u)
    {
      v17 = heap_Realloc(*(*a1 + 8), a1[14], (v49 & 0xFF80u) + 128);
      if (!v17)
      {
        log_OutPublic(*(*a1 + 32), "FE_NORMOUT", 43000, 0, v18, v19, v20, v21, v46);
        return 2340429834;
      }

      a1[14] = v17;
      cstdlib_memset((v17 + v49), 0, (v49 & 0xFF80) + 128 - v49);
    }

    else if (!a5)
    {
      goto LABEL_70;
    }

    if (cstdlib_strncmp(&__s[v13], "▬", 3uLL))
    {
      goto LABEL_70;
    }

    v60 = 0;
    v59 = 0;
    v58 = 0;
    v57 = -1;
    v56 = -1;
    v55 = 0;
    v54 = 11;
    v53 = 0;
    v52 = 0;
    if (((*(a1[1] + 104))(a2, a3, 1, 0, &v60) & 0x80000000) != 0)
    {
      goto LABEL_65;
    }

    if (((*(a1[1] + 152))(a2, a3, 2, v60, &v55) & 0x80000000) != 0)
    {
      goto LABEL_65;
    }

    if (!v55)
    {
      goto LABEL_65;
    }

    if (((*(a1[1] + 104))(a2, a3, 2, v60, &v59 + 2) & 0x80000000) != 0)
    {
      goto LABEL_65;
    }

    v22 = HIWORD(v59);
    if (!HIWORD(v59))
    {
      goto LABEL_65;
    }

    v23 = 0;
    do
    {
      if (v57 != -1 && v56 != 0xFFFF)
      {
        goto LABEL_38;
      }

      if (((*(a1[1] + 168))(a2, a3, v22, 0, 1, &v54, &v59) & 0x80000000) != 0)
      {
        goto LABEL_65;
      }

      if (v54 <= 0xA && ((1 << v54) & 0x610) != 0)
      {
        if (v23 == v51)
        {
          v26 = (*(a1[1] + 168))(a2, a3, HIWORD(v59), 1, 1, &v57, &v59);
        }

        else
        {
          if (v51 + 1 != v23)
          {
LABEL_33:
            ++v23;
            goto LABEL_34;
          }

          v26 = (*(a1[1] + 168))(a2, a3, HIWORD(v59), 2, 1, &v56, &v59);
        }

        if (v26 < 0)
        {
          goto LABEL_65;
        }

        goto LABEL_33;
      }

LABEL_34:
      if (((*(a1[1] + 120))(a2, a3, HIWORD(v59), &v59 + 2) & 0x80000000) != 0)
      {
        goto LABEL_65;
      }

      v22 = HIWORD(v59);
    }

    while (HIWORD(v59));
    if (v57 != -1 && v56 != 0xFFFF)
    {
LABEL_38:
      if (((*(a1[1] + 176))(a2, a3, v60, 1, &v53, &v58) & 0x80000000) == 0)
      {
        v27 = v58;
        if (v58 < 2u)
        {
          v31 = 1;
        }

        else
        {
          v28 = (v53 + 44);
          v29 = 1;
          while (1)
          {
            v30 = *v28;
            v28 += 8;
            if (v30 - *(v53 + 12) > v57)
            {
              break;
            }

            if (v58 == ++v29)
            {
              goto LABEL_65;
            }
          }

          v31 = v29;
        }

        v32 = v52 || v31 >= v58;
        if (!v32)
        {
          v33 = v31 + 1;
          v34 = 32 * v31;
          while (1)
          {
            v35 = (v53 + v34);
            if (*(v53 + v34 + 12) - *(v53 + 12) >= v56)
            {
              break;
            }

            v36 = *v35;
            v37 = *(v35 + 3);
            v62 = 0;
            v61 = 0;
            if (v36 <= 0x39)
            {
              if (v36 == 51)
              {
                v47 = v33;
                v38 = hlp_NLUStrFind(v37, "PUNC", &v62, &v61);
                v33 = v47;
                if (!v38)
                {
                  goto LABEL_64;
                }

                v39 = v52 == 0;
                v27 = v58;
                goto LABEL_60;
              }

              if (((1 << v36) & 0x3C0010124001140) != 0)
              {
                goto LABEL_64;
              }
            }

            if (v36 == 17)
            {
LABEL_64:
              v52 = 1;
              break;
            }

            v39 = 1;
LABEL_60:
            if (v39)
            {
              v34 += 32;
              v32 = v33++ >= v27;
              if (!v32)
              {
                continue;
              }
            }

            break;
          }
        }
      }
    }

LABEL_65:
    if (!v52)
    {
      fe_normout_check_if_word_in_prompt(a1, a2, a3, v51, &v52);
      if (!v52)
      {
        fe_normout_check_if_word_in_prompt(a1, a2, a3, (v51 + 1), &v52);
        if (!v52)
        {
          *(a1[14] + v49++) = v51 + 1;
        }
      }

      v14 = v48;
    }

LABEL_70:
    if (!cstdlib_strncmp(&__s[v13], "▬", 3uLL))
    {
      *v15 = 0;
      v13 += 2;
    }

    __s[v13] = 0;
    for (i = v13 + 1; v12 > i; ++i)
    {
      v41 = &__s[i];
      v42 = *v41;
      if (v42 != 32 && v42 != 95 && cstdlib_strncmp(&__s[i], "▬", 3uLL))
      {
        break;
      }

      if (cstdlib_strncmp(&__s[i], "▬", 3uLL))
      {
        v43 = i;
      }

      else
      {
        *v41 = 0;
        i = v13 + 3;
        v43 = (v13 + 3);
      }

      v13 = i;
      __s[v43] = 0;
    }

    ++v51;
LABEL_82:
    ++v13;
  }

  while (v13 < v14);
  v44 = v51;
  if (__s[v13 - 1])
  {
    v44 = v51 + 1;
  }

  a6 = v46;
LABEL_87:
  result = 0;
  *a6 = v44;
  return result;
}

uint64_t getNextWord(_WORD *a1, _WORD *a2, uint64_t a3, unsigned int a4)
{
  v4 = *a1;
  *a2 = v4;
  if (v4 >= a4)
  {
    return 0;
  }

  v5 = (a3 + v4);
  for (i = v4 + 1; !*v5++; ++i)
  {
    *a1 = i;
    if (a4 == i)
    {
      return 0;
    }
  }

  v10 = *a2;
  v11 = a3 + (v10 + 1) + 1;
  do
  {
    v12 = v11;
    *a2 = ++v10;
    if (a4 <= v10)
    {
      break;
    }

    ++v11;
  }

  while (*(a3 + v10));
  for (j = v10 + 1; j < a4; j = v15 + 2)
  {
    if (*v12++)
    {
      break;
    }

    v15 = v10++;
    *a2 = v10;
  }

  return 1;
}

uint64_t updateWordRecFnc(uint64_t a1, uint64_t a2, unsigned __int16 *a3, uint64_t a4)
{
  v20 = 0;
  v21 = 0;
  v19 = 0;
  v8 = *a4;
  result = (*(*(*a4 + 8) + 168))(a1, a2, *a3, 0, 1, &v21, &v20 + 2);
  if ((result & 0x80000000) == 0)
  {
    result = (*(v8[1] + 168))(a1, a2, *a3, 1, 1, &v19, &v20 + 2);
    if ((result & 0x80000000) == 0 && v19 > **(a4 + 168) && v21 == 7)
    {
      v11 = cstdlib_strstr((*(a4 + 152) + 3), "▼");
      *(a4 + 160) = v11;
      if (v11)
      {
        *v11 = 0;
        v16 = *(v8[1] + 160);
        v17 = *a3;
        v18 = cstdlib_strlen(*(a4 + 152));
        LODWORD(result) = v16(a1, a2, v17, 4, v18, *(a4 + 152) + 3, &v20);
        if (result >= 0)
        {
          return 2340437532;
        }

        else
        {
          return result;
        }
      }

      else
      {
        log_OutPublic(*(*v8 + 32), "FE_NORMOUT", 43001, "%s%s", v12, v13, v14, v15, "message");
        return 2340429831;
      }
    }
  }

  return result;
}

uint64_t updateWordRecs(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6, int a7, __int16 a8)
{
  v30 = result;
  if (a5)
  {
    v9 = 0;
    v10 = (a8 - a7);
    v11 = a7 + a6;
    v12 = a5;
    v27 = (a4 + 14);
    v28 = a7 + a6;
    v29 = a6;
    do
    {
      v13 = a4 + 16 * v9;
      v14 = *(v13 + 4);
      v15 = v14 > 0xA;
      v16 = (1 << v14) & 0x610;
      v17 = v15 || v16 == 0;
      if (!v17 && *(v13 + 8) == a6 && v11 == *(v13 + 10))
      {
        *(v13 + 14) += v10;
        v18 = v27;
        v19 = v9;
        v20 = v12;
        do
        {
          if (v19)
          {
            v21 = *(v18 - 1);
            if (v21 > *(v13 + 12))
            {
              *(v18 - 1) = (v21 + v10) & ~((v21 + v10) >> 15);
              *v18 += v10;
            }

            v22 = *(v18 - 5);
            if (v22 <= 0xF && ((1 << v22) & 0x8060) != 0)
            {
              v24 = *(v13 + 8);
              if (v24 >= *(v18 - 3))
              {
                v25 = *(v18 - 2);
                if (v24 < v25 && v25 + 1 >= *(v13 + 10))
                {
                  if (v22 != 6 || (memset(__n, 0, sizeof(__n)), result = (*(*(v30 + 8) + 176))(a2, a3, *(v18 - 7), 4, &__n[1], __n), !__n[0]) || (result = cstdlib_strncmp(*&__n[1], "_PR_", __n[0]), (v10 & 0x80000000) == 0) || result)
                  {
                    *v18 += v10;
                  }
                }
              }
            }
          }

          --v19;
          v18 += 8;
          --v20;
        }

        while (v20);
        if (v9 + 1 < v12 && *(v13 + 4) == 4)
        {
          v26 = a4 + 16 * (v9 + 1);
          if (*(v26 + 4) == 16 && *(v26 + 12) == *(v13 + 12))
          {
            *(v26 + 14) = *(v13 + 14);
          }
        }

        v11 = v28;
        a6 = v29;
        if (v9 && *(v13 + 4) == 4 && *(v13 - 12) == 16 && *(v13 - 4) == *(v13 + 12))
        {
          *(v13 - 2) = *(v13 + 14);
        }
      }

      ++v9;
    }

    while (v9 != v12);
  }

  return result;
}

uint64_t MvToEqWordRecUpdFieldsFnc(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4)
{
  v40 = 0;
  v41 = 0;
  v38 = 0;
  v39 = 0;
  v8 = *a4;
  v9 = (*(*(*a4 + 8) + 168))(a1, a2, *a3, 0, 1, &v41, &v40 + 2);
  if ((v9 & 0x80000000) == 0)
  {
    v10 = **(a4 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = "";
      do
      {
        v13 = (*(a4 + 136) + 16 * v11);
        *(a4 + 144) = v13;
        if (*v13 == *a3)
        {
          v14 = (*(v8[1] + 160))(a1, a2);
          if ((v14 & 0x80000000) != 0)
          {
            return v14;
          }

          v9 = (*(v8[1] + 160))(a1, a2, *a3, 2, 1, *(a4 + 144) + 14, &v40);
          if ((v9 & 0x80000000) != 0)
          {
            return v9;
          }

          if (v41 <= 0xA && ((1 << v41) & 0x610) != 0)
          {
            __s = 0;
            v15 = *(a4 + 112);
            v16 = *v15;
            if (*v15)
            {
              v17 = *(a4 + 128);
              if (v16 == *(v8[14] + *v17))
              {
                if (**(a4 + 120))
                {
                  __src = 0;
                  ++*v17;
                  *(*(a4 + 176) + *(*(a4 + 144) + 12) - 1) = 45;
                  v14 = (*(v8[1] + 176))(a1, a2, *a3, 3, &__s, &v40 + 2);
                  if ((v14 & 0x80000000) != 0)
                  {
                    return v14;
                  }

                  v14 = (*(v8[1] + 176))(a1, a2, **(a4 + 120), 3, &__src, &v40 + 2);
                  if ((v14 & 0x80000000) != 0)
                  {
                    return v14;
                  }

                  v18 = v12;
                  v19 = *(*v8 + 8);
                  v20 = *(a4 + 184);
                  v21 = cstdlib_strlen(__s);
                  v22 = cstdlib_strlen(__src);
                  v23 = heap_Realloc(v19, v20, (v21 + v22 + 2));
                  if (!v23)
                  {
                    log_OutPublic(*(*v8 + 32), "FE_NORMOUT", 43000, 0, v24, v25, v26, v27, __src);
                    return 2340429834;
                  }

                  *(a4 + 184) = v23;
                  cstdlib_strcpy(v23, __src);
                  if (*(v8 + 27))
                  {
                    v28 = "=";
                  }

                  else
                  {
                    v28 = "-";
                  }

                  cstdlib_strcat(*(a4 + 184), v28);
                  cstdlib_strcat(*(a4 + 184), __s);
                  v29 = *(v8[1] + 160);
                  v30 = **(a4 + 120);
                  v31 = cstdlib_strlen(*(a4 + 184));
                  v14 = v29(a1, a2, v30, 3, (v31 + 1), *(a4 + 184), &v40);
                  if ((v14 & 0x80000000) != 0)
                  {
                    return v14;
                  }

                  v14 = (*(v8[1] + 160))(a1, a2, **(a4 + 120), 2, 1, *(a4 + 144) + 14, &v40);
                  if ((v14 & 0x80000000) != 0)
                  {
                    return v14;
                  }

                  v12 = v18;
                  if (((*(v8[1] + 184))(a1, a2, **(a4 + 144), 8, &v38) & 0x80000000) == 0 && v38 == 1)
                  {
                    v14 = (*(v8[1] + 168))(a1, a2, **(a4 + 144), 8, 1, &v38 + 2, &v40 + 2);
                    if ((v14 & 0x80000000) != 0)
                    {
                      return v14;
                    }

                    v14 = (*(v8[1] + 160))(a1, a2, **(a4 + 120), 8, 1, &v38 + 2, &v40);
                    if ((v14 & 0x80000000) != 0)
                    {
                      return v14;
                    }
                  }

                  if (((*(v8[1] + 184))(a1, a2, **(a4 + 144), 14, &v38) & 0x80000000) == 0 && v38 == 1)
                  {
                    v14 = MvToEqWordRecUpdNLU(a1, a2, v8, a4);
                    if ((v14 & 0x80000000) != 0)
                    {
                      return v14;
                    }
                  }

                  v14 = (*(v8[1] + 192))(a1, a2, *a3);
                  if ((v14 & 0x80000000) != 0)
                  {
                    return v14;
                  }

                  *a3 = **(a4 + 120);
                }
              }
            }

            v9 = (*(v8[1] + 176))(a1, a2, *a3, 3, &__s, &v40 + 2);
            if ((v9 & 0x80000000) != 0)
            {
              return v9;
            }

            if (cstdlib_strcmp(__s, v12) && cstdlib_strstr(__s, "-*"))
            {
              v14 = (*(v8[1] + 168))(a1, a2, *a3, 1, 1, &v39 + 2, &v40 + 2);
              if ((v14 & 0x80000000) != 0)
              {
                return v14;
              }

              v9 = (*(v8[1] + 168))(a1, a2, *a3, 2, 1, &v39, &v40 + 2);
              if ((v9 & 0x80000000) != 0)
              {
                return v9;
              }

              for (i = (*(a4 + 176) + HIWORD(v39)); ; i = v33 + 1)
              {
                v33 = cstdlib_strchr(i, 45);
                if (!v33 || v33 >= *(a4 + 176) + v39)
                {
                  break;
                }

                *v33 = 95;
              }
            }

            v34 = *(a4 + 120);
            ++**(a4 + 112);
            *v34 = *a3;
          }

          v10 = **(a4 + 16);
          v11 = v10;
        }

        ++v11;
      }

      while (v11 < v10);
    }
  }

  return v9;
}

uint64_t fe_normout_ProcessEnd(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 62387, 120);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2340429832;
  }
}

uint64_t fe_normout_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2340429825;
  }

  result = 0;
  *a2 = &IFeNormout;
  return result;
}

uint64_t fe_normout_check_if_word_in_prompt(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, _DWORD *a5)
{
  v15 = 0;
  v16 = 0;
  v14 = 11;
  v13 = -1;
  *a5 = 0;
  result = (*(*(a1 + 8) + 104))(a2, a3, 1, 0, &v16 + 2);
  if ((result & 0x80000000) == 0)
  {
    result = (*(*(a1 + 8) + 152))(a2, a3, 2, HIWORD(v16), &v15);
    if ((result & 0x80000000) == 0)
    {
      if (v15)
      {
        result = (*(*(a1 + 8) + 104))(a2, a3, 2, HIWORD(v16), &v16);
        if ((result & 0x80000000) == 0)
        {
          v10 = v16;
          if (v16)
          {
            v11 = 0;
            while (1)
            {
              result = (*(*(a1 + 8) + 168))(a2, a3, v10, 0, 1, &v14, &v15 + 2);
              if ((result & 0x80000000) != 0)
              {
                break;
              }

              if (v14 <= 0xA && ((1 << v14) & 0x610) != 0)
              {
                if (a4 == v11)
                {
                  result = (*(*(a1 + 8) + 168))(a2, a3, v16, 1, 1, &v13, &v15 + 2);
                  if ((result & 0x80000000) != 0)
                  {
                    return result;
                  }
                }

                ++v11;
              }

              result = (*(*(a1 + 8) + 120))(a2, a3, v16, &v16);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              v10 = v16;
              if (!v16 || a4 < v11)
              {
                if (v13 != 0xFFFF)
                {
                  return (*(*(a1 + 8) + 312))(a2, a3);
                }

                return result;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t MvToEqWordRecUpdNLU(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  __s = 0;
  v59 = 0;
  memset(v57, 0, sizeof(v57));
  *&__n[1] = 0;
  __n[0] = 0;
  v55 = 0;
  v54 = 0;
  v53 = 0;
  v52 = 0;
  v51 = 0;
  v49 = 0;
  v50 = 0;
  v8 = (*(a3[1] + 176))(a1, a2, **(a4 + 144), 14, &v59, &v50);
  if ((v8 & 0x80000000) != 0)
  {
    return v8;
  }

  if (!hlp_NLUStrFind(v59, "POS", &v57[1], v57))
  {
    if (!hlp_NLUStrFind(v59, "PUNC", &v51, &v50 + 1))
    {
      return v8;
    }

    v28 = (*(a3[1] + 184))(a1, a2, **(a4 + 120), 14, &v49);
    v29 = a3[1];
    v30 = **(a4 + 120);
    if (v28 < 0 || v49 != 1)
    {
      v37 = *(v29 + 160);
      v38 = cstdlib_strlen(v59);
      return v37(a1, a2, v30, 14, (v38 + 1), v59, &v49 + 2);
    }

    (*(v29 + 176))(a1, a2, v30, 14, &__s, &v50);
    v31 = cstdlib_strlen(__s);
    v32 = cstdlib_strlen(v59);
    v33 = heap_Calloc(*(*a3 + 8), 1, (v31 + v32 + 2));
    if (v33)
    {
      v26 = v33;
      cstdlib_strcpy(v33, __s);
      hlp_NLUStrRemoveKeyVal(__s, "BND");
      hlp_NLUStrJoin(v26, v59);
      v34 = *(a3[1] + 160);
      v35 = **(a4 + 120);
      v36 = cstdlib_strlen(v26);
      v8 = v34(a1, a2, v35, 14, (v36 + 1), v26, &v49 + 2);
LABEL_32:
      heap_Free(*(*a3 + 8), v26);
      return v8;
    }

    goto LABEL_18;
  }

  hlp_NLUStrFind(v59, "BNDSHAPE", &v55, &v54);
  hlp_NLUStrFind(v59, "BND", &v53, &v52);
  hlp_NLUStrFind(v59, "PUNC", &v51, &v50 + 1);
  if (((*(a3[1] + 184))(a1, a2, **(a4 + 120), 14, &v49) & 0x80000000) != 0)
  {
    return v8;
  }

  if (v49 != 1)
  {
    return v8;
  }

  v8 = (*(a3[1] + 176))(a1, a2, **(a4 + 120), 14, &__s, &v50);
  if (!hlp_NLUStrFind(__s, "POS", &__n[1], __n))
  {
    return v8;
  }

  v9 = heap_Calloc(*(*a3 + 8), 1, __n[0] + v57[0] + 2);
  if (!v9)
  {
LABEL_18:
    v8 = 2340429834;
    log_OutPublic(*(*a3 + 32), "FE_NORMOUT", 43000, 0, v10, v11, v12, v13, v49);
    return v8;
  }

  v14 = v9;
  v15 = cstdlib_strlen(__s);
  v16 = v57[0];
  v17 = v54;
  v18 = v52;
  v19 = HIWORD(v50);
  v20 = (v15 + v16 + v17 + v18 + v19 + cstdlib_strlen("POS:BNDSHAPE:BND:PUNC:") + 2);
  v21 = heap_Calloc(*(*a3 + 8), 1, v20);
  v26 = v21;
  if (v21)
  {
    cstdlib_strcpy(v21, __s);
    cstdlib_strncpy(v14, *&__n[1], __n[0]);
    if (!*(a3 + 27))
    {
      cstdlib_strcat(v14, "-");
    }

    cstdlib_strncat(v14, *&v57[1], v57[0]);
    hlp_NLUStrSet(v26, "POS", v14);
    if (v55)
    {
      v27 = v55[v54];
      v55[v54] = 0;
      hlp_NLUStrSet(v26, "BNDSHAPE", v55);
      v55[v54] = v27;
    }

    else
    {
      hlp_NLUStrRemoveKeyVal(v26, "BNDSHAPE");
    }

    if (v53)
    {
      v39 = v53[v54];
      v53[v54] = 0;
      hlp_NLUStrSet(v26, "BND", v53);
      v53[v54] = v39;
    }

    else
    {
      hlp_NLUStrRemoveKeyVal(v26, "BND");
    }

    if (v51)
    {
      v40 = v51[HIWORD(v50)];
      v51[HIWORD(v50)] = 0;
      hlp_NLUStrSet(v26, "PUNC", v51);
      v51[HIWORD(v50)] = v40;
    }

    else
    {
      hlp_NLUStrRemoveKeyVal(v26, "PUNC");
    }

    hlp_NLUStrRemoveKeyVal(v59, "POS");
    hlp_NLUStrRemoveKeyVal(v59, "PHR");
    hlp_NLUStrRemoveKeyVal(v59, "PUNC");
    hlp_NLUStrRemoveKeyVal(v59, "BNDSHAPE");
    hlp_NLUStrRemoveKeyVal(v59, "BND");
    if (!*v59)
    {
      goto LABEL_29;
    }

    v41 = *(*a3 + 8);
    v42 = cstdlib_strlen(v59);
    v43 = heap_Realloc(v41, v26, v42 + v20);
    if (v43)
    {
      v44 = v43;
      hlp_NLUStrJoin(v43, v59);
      v26 = v44;
LABEL_29:
      v45 = *(a3[1] + 160);
      v46 = **(a4 + 120);
      v47 = cstdlib_strlen(v26);
      v8 = v45(a1, a2, v46, 14, (v47 + 1), v26, &v49 + 2);
      goto LABEL_31;
    }
  }

  v8 = 2340429834;
  log_OutPublic(*(*a3 + 32), "FE_NORMOUT", 43000, 0, v22, v23, v24, v25, v49);
LABEL_31:
  heap_Free(*(*a3 + 8), v14);
  if (v26)
  {
    goto LABEL_32;
  }

  return v8;
}

uint64_t fe_normout_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, int a4, uint64_t a5)
{
  v29 = 0;
  v30 = 0;
  fecfg = 2340429834;
  v27 = 0;
  v28 = 0;
  if (!a5)
  {
    return 2340429831;
  }

  *a5 = 0;
  *(a5 + 8) = 0;
  inited = InitRsrcFunction(a3, a4, &v30);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = objc_GetObject(v30[6], "LINGDB", &v29);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  Object = objc_GetObject(v30[6], "FE_DEPES", &v28);
  v9 = v30[6];
  if ((Object & 0x80000000) != 0)
  {
    v25 = "LINGDB";
LABEL_15:
    objc_ReleaseObject(v9, v25);
    return Object;
  }

  v10 = objc_GetObject(v9, "FE_DCTLKP", &v27);
  if ((v10 & 0x80000000) != 0)
  {
    Object = v10;
    objc_ReleaseObject(v30[6], "LINGDB");
    v9 = v30[6];
    v25 = "FE_DEPES";
    goto LABEL_15;
  }

  v11 = heap_Alloc(v30[1], 120);
  v16 = v30;
  if (v11)
  {
    v17 = v11;
    *v11 = v30;
    *(v11 + 8) = *(v29 + 8);
    v18 = v27;
    v19 = v28;
    *(v11 + 32) = *(v28 + 8);
    *(v11 + 16) = *(v19 + 16);
    *(v11 + 56) = *(v18 + 8);
    *(v11 + 40) = *(v18 + 16);
    *(v11 + 112) = 0;
    *(v11 + 96) = 0;
    *(v11 + 64) = 0u;
    *(v11 + 80) = 0u;
    v20 = heap_Alloc(v16[1], 128);
    v17[14] = v20;
    if (v20)
    {
      fecfg = fe_normout_get_fecfg(v17);
      if ((fecfg & 0x80000000) != 0)
      {
        fe_normout_ObjClose(*a5, *(a5 + 8));
      }

      *a5 = v17;
      *(a5 + 8) = 62387;
    }

    else
    {
      log_OutPublic(*(*v17 + 32), "FE_NORMOUT", 43000, 0, v21, v22, v23, v24, v27);
      objc_ReleaseObject(v30[6], "LINGDB");
      objc_ReleaseObject(v30[6], "FE_DEPES");
      objc_ReleaseObject(v30[6], "FE_DCTLKP");
      heap_Free(*(*v17 + 8), v17);
    }
  }

  else
  {
    log_OutPublic(v30[4], "FE_NORMOUT", 43000, 0, v12, v13, v14, v15, v27);
    objc_ReleaseObject(v30[6], "LINGDB");
    objc_ReleaseObject(v30[6], "FE_DEPES");
    objc_ReleaseObject(v30[6], "FE_DCTLKP");
  }

  return fecfg;
}

uint64_t oneword_crosstoken(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, char *a6, int a7, int a8, const char *a9, char *a10, const char *a11, uint64_t *a12, uint64_t *a13, uint64_t *a14, char **a15, uint64_t *a16, uint64_t *a17, uint64_t *a18, uint64_t *a19, const char **a20, const char **a21, const char **a22, const char **a23)
{
  v29 = a12;
  v140 = *MEMORY[0x277D85DE8];
  v138 = 0;
  v136 = 0;
  __s = 0;
  v135 = 0;
  cstdlib_strcpy(__dst, "cross_token");
  cstdlib_strlen(__dst);
  v30 = cstdlib_strlen("¡");
  v31 = (cstdlib_strlen(*a20) * v30 + 1);
  if (*a16 < v31)
  {
    v32 = heap_Realloc(*(a1 + 8), *a12, v31);
    if (!v32)
    {
      goto LABEL_99;
    }

    *a12 = v32;
    *a16 = v31;
  }

  if (*a17 < v31)
  {
    v37 = heap_Realloc(*(a1 + 8), *a13, v31);
    if (!v37)
    {
      goto LABEL_99;
    }

    *a13 = v37;
    *a17 = v31;
  }

  v128 = a2;
  v38 = a3;
  v39 = a4;
  if (*a18 < v31)
  {
    v40 = heap_Realloc(*(a1 + 8), *a14, v31);
    if (!v40)
    {
      goto LABEL_99;
    }

    *a14 = v40;
    *a18 = v31;
  }

  v41 = a15;
  if (*a19 >= v31)
  {
LABEL_13:
    v126 = a1;
    __s1 = a6;
    v124 = a8;
    cstdlib_strcpy(*a12, *a20);
    cstdlib_strcpy(*a13, *a21);
    cstdlib_strcpy(*a14, *a22);
    cstdlib_strcpy(*a15, *a23);
    if (cstdlib_strlen(*a12))
    {
      v43 = 0;
      v44 = 0;
      v45 = 0;
      do
      {
        v46 = *a12;
        v47 = cstdlib_strlen("◄");
        if (cstdlib_strncmp((v46 + v43), "◄", v47))
        {
          v48 = (*a12 + v43);
          if (*v48 == 126 && v45)
          {
            v50 = cstdlib_strlen((*a12 + v43));
            cstdlib_memmove(v48 + 1, v48, v50 + 1);
            v51 = *a12;
            v52 = cstdlib_strlen("¡");
            cstdlib_memcpy((v51 + v43), "¡", v52);
            v45 = 1;
          }
        }

        else
        {
          v45 = !v45;
        }

        v43 = ++v44;
      }

      while (cstdlib_strlen(*a12) > v44);
    }

    v53 = a20;
    cstdlib_strcpy(*a20, "");
    cstdlib_strcpy(*a21, "");
    cstdlib_strcpy(*a22, "");
    v54 = 0;
    v133 = (v126 + 32);
    while (1)
    {
      cstdlib_strcpy(__dst, "cross_token");
      v132 = cstdlib_strlen(__dst);
      v55 = v54;
      if (v54)
      {
        cstdlib_strcat(*v53, " ");
        cstdlib_strcat(*a21, " ");
        cstdlib_strcat(*a22, " ");
      }

      v56 = *v29;
      v57 = v54;
      v58 = (*v29)[v54];
      if ((*v29)[v54])
      {
        v59 = v54;
        while ((v58 > 0x20 || ((1 << v58) & 0x100002600) == 0) && v58 != 95)
        {
          v59 = ++v54;
          v58 = v56[v54];
          if (!v56[v54])
          {
            v130 = 1;
            goto LABEL_34;
          }
        }

        v130 = 0;
LABEL_34:
        v131 = v54;
        v60 = v54;
      }

      else
      {
        v131 = v54;
        v130 = 1;
        v60 = v54;
        v59 = v54;
      }

      v56[v59] = 0;
      v61 = Utf8_LengthInUtf8chars(*v29, v60);
      v62 = Utf8_LengthInUtf8chars(*v29, v55);
      *(*a13 + v61) = 0;
      *(*a14 + v61) = 0;
      (*v41)[v61] = 0;
      log_OutText(*v133, "FE_ONEWORD", 5, 0, "%s L1: %s", v63, v64, v65, __dst);
      v66 = *(v39 + 120);
      v67 = *v29;
      v68 = cstdlib_strlen(&(*v29)[v57]);
      v69 = v66(v128, v38, 0, &v67[v57], v68);
      if ((v69 & 0x80000000) != 0)
      {
        return v69;
      }

      log_OutText(*v133, "FE_ONEWORD", 5, 0, "%s L2: %s", v70, v71, v72, __dst);
      v73 = *(v39 + 120);
      v74 = *a13;
      v75 = cstdlib_strlen((*a13 + v62));
      v69 = v73(v128, v38, 1, v74 + v62, v75);
      if ((v69 & 0x80000000) != 0)
      {
        return v69;
      }

      log_OutText(*v133, "FE_ONEWORD", 5, 0, "%s L3: %s", v76, v77, v78, __dst);
      v79 = *(v39 + 120);
      v80 = *a14;
      v81 = cstdlib_strlen((*a14 + v62));
      v69 = v79(v128, v38, 2, v80 + v62, v81);
      if ((v69 & 0x80000000) != 0)
      {
        return v69;
      }

      log_OutText(*v133, "FE_ONEWORD", 5, 0, "%s L4: %s", v82, v83, v84, __dst);
      v85 = *(v39 + 136);
      v86 = *a15;
      v87 = cstdlib_strlen(&(*a15)[v62]);
      v69 = v85(v128, v38, 3, &v86[v62], v87);
      if ((v69 & 0x80000000) != 0)
      {
        return v69;
      }

      if (cstdlib_strcmp(__s1, "normal") && cstdlib_strlen(__s1) + v132 + 2 <= 0x7F)
      {
        cstdlib_strcat(__dst, "_");
        cstdlib_strcat(__dst, __s1);
      }

      v53 = a20;
      v88 = (v126 + 32);
      v29 = a12;
      if (((*(v39 + 80))(v128, v38, __dst) & 0x80000000) != 0)
      {
        __dst[v132] = 0;
        v69 = (*(v39 + 80))(v128, v38, __dst);
        if ((v69 & 0x80000000) != 0)
        {
          return v69;
        }
      }

      else if (!a7)
      {
        if (!a5)
        {
          v89 = __s1;
          a7 = *__s1;
LABEL_51:
          cstdlib_strncpy(a10, v89, 0x14uLL);
          goto LABEL_52;
        }

        v89 = a9;
        a7 = v124;
        if (a9)
        {
          goto LABEL_51;
        }

        a7 = 0;
      }

LABEL_52:
      v69 = (*(v39 + 128))(v128, v38, 0, &__s, &v138);
      if ((v69 & 0x80000000) != 0)
      {
        return v69;
      }

      __s[v138] = 0;
      log_OutText(*v133, "FE_ONEWORD", 5, 0, "%s O1: %s", v90, v91, v92, __dst);
      v69 = (*(v39 + 128))(v128, v38, 1, &v136, &v138);
      if ((v69 & 0x80000000) != 0)
      {
        return v69;
      }

      *(v136 + v138) = 0;
      log_OutText(*v133, "FE_ONEWORD", 5, 0, "%s O2: %s", v93, v94, v95, __dst);
      v99 = (*(v39 + 128))(v128, v38, 2, &v135, &v138);
      if ((v99 & 0x80000000) != 0)
      {
        return v99;
      }

      *(v135 + v138) = 0;
      log_OutText(*v133, "FE_ONEWORD", 5, 0, "%s O3: %s", v96, v97, v98, __dst);
      if (cstdlib_strlen(__s))
      {
        v100 = 0;
        v101 = 0;
        do
        {
          v102 = &__s[v100];
          if (__s[v100] == 126)
          {
            v103 = cstdlib_strlen(v102 + 1);
            cstdlib_memmove(v102, v102 + 1, v103 + 1);
            --v101;
          }

          else
          {
            v104 = cstdlib_strlen("¡");
            if (!cstdlib_strncmp(v102, "¡", v104))
            {
              v105 = &__s[v100];
              v106 = cstdlib_strlen(&__s[v100 + 2]);
              cstdlib_memmove(v105 + 1, v105 + 2, v106 + 1);
              __s[v100] = 126;
            }
          }

          v100 = ++v101;
        }

        while (cstdlib_strlen(__s) > v101);
      }

      v107 = cstdlib_strlen(*a20);
      v108 = v107 + cstdlib_strlen(__s) + 2;
      v41 = a15;
      if (v108 >= 0x81u)
      {
        v109 = heap_Realloc(*(v126 + 8), *a20, v108);
        if (!v109)
        {
          goto LABEL_100;
        }

        *a20 = v109;
      }

      if (cstdlib_strlen(__s) == 3)
      {
        v134 = 0;
        utf8_Utf8ToUtf32_Tolerant(__s, 3u, &v134 + 4, 1u, &v134);
        v110 = *a20;
        if (HIDWORD(v134) == 8230)
        {
          v111 = ".";
          goto LABEL_70;
        }
      }

      else
      {
        v110 = *a20;
      }

      v111 = __s;
LABEL_70:
      cstdlib_strcat(v110, v111);
      v112 = 0;
      v113 = v136;
      while (1)
      {
        v114 = v112;
        v115 = *(v136 + v112);
        if (v115 != 32 && v115 != 126)
        {
          break;
        }

        ++v112;
      }

      if (*(v136 + v112))
      {
        while (v115 != 32 && v115 != 126)
        {
          LOBYTE(v115) = *(v136 + ++v112);
        }

        *(v136 + v112) = 0;
        v113 = v136;
      }

      if (cstdlib_strcmp((v113 + v114), ""))
      {
        v116 = (v136 + v114);
      }

      else
      {
        v116 = "*";
      }

      cstdlib_strcat(*a21, v116);
      if (a11 && cstdlib_strstr(__s1, "latin"))
      {
        cstdlib_strcpy(*a21, a11);
      }

      v117 = 0;
      v118 = v135;
      while (1)
      {
        v119 = v117;
        v120 = *(v135 + v117);
        if (v120 != 32 && v120 != 126)
        {
          break;
        }

        ++v117;
      }

      if (*(v135 + v117))
      {
        while (v120 != 32 && v120 != 126)
        {
          LOBYTE(v120) = *(v135 + ++v117);
        }

        *(v135 + v117) = 0;
        v118 = v135;
      }

      if (cstdlib_strcmp((v118 + v119), ""))
      {
        v121 = (v135 + v119);
      }

      else
      {
        v121 = "*";
      }

      cstdlib_strcat(*a22, v121);
      v54 = v131 + 1;
      if (v130)
      {
        return v99;
      }
    }
  }

  v42 = heap_Realloc(*(a1 + 8), *a15, v31);
  if (v42)
  {
    *a15 = v42;
    *a19 = v31;
    goto LABEL_13;
  }

LABEL_99:
  v88 = (a1 + 32);
LABEL_100:
  log_OutPublic(*v88, "FE_ONEWORD", 34000, 0, v33, v34, v35, v36, v123);
  return 2310021130;
}

uint64_t crf_mde_seg_fv_new(uint64_t a1, unsigned int a2, uint64_t *a3)
{
  v6 = heap_Calloc(*(a1 + 8), 1, 16 * a2);
  *a3 = v6;
  if (!v6)
  {
LABEL_7:
    v14 = 2310021130;
    log_OutPublic(*(a1 + 32), "FE_ONEWORD", 35000, 0, v7, v8, v9, v10, v16);
    return v14;
  }

  *(a3 + 3) = a2;
  if (a2)
  {
    v11 = 0;
    do
    {
      v12 = heap_Calloc(*(a1 + 8), 1, 65);
      v13 = *a3;
      *(*a3 + v11) = v12;
      if (!v12)
      {
        goto LABEL_7;
      }

      *(v13 + v11 + 8) = 65;
      cstdlib_strcpy(v12, "-");
      v11 += 16;
    }

    while (16 * a2 != v11);
  }

  v14 = 0;
  *(a3 + 2) = a2;
  return v14;
}

void *crf_mde_seg_fv_dealloc(void *result, uint64_t a2)
{
  if (a2)
  {
    v3 = *a2;
    if (v3)
    {
      v4 = result;
      v5 = *(a2 + 8);
      if (v5)
      {
        v6 = 0;
        for (i = 0; i < v5; ++i)
        {
          if (*(v3 + v6))
          {
            heap_Free(v4[1], *(v3 + v6));
            v3 = *a2;
            *(*a2 + v6) = 0;
            v5 = *(a2 + 8);
          }

          v6 += 16;
        }
      }

      result = heap_Free(v4[1], v3);
      *a2 = 0;
    }
  }

  return result;
}

uint64_t crf_mde_seg_fv_clear(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v2 = 0;
    v3 = 0;
    do
    {
      cstdlib_strcpy(*(*a1 + v2), "-");
      ++v3;
      v2 += 16;
    }

    while (v3 < *(a1 + 8));
  }

  return 0;
}

uint64_t crf_mde_seg_fv_add(uint64_t a1, void *a2, unsigned int a3, char *__s)
{
  v8 = cstdlib_strlen(__s);
  v9 = *a2 + 16 * a3;
  if (*(v9 + 8) >= v8)
  {
    v11 = *v9;
    goto LABEL_5;
  }

  v10 = v8 + 1;
  v11 = heap_Realloc(*(a1 + 8), *v9, v10);
  if (v11)
  {
    v16 = *a2 + 16 * a3;
    *v16 = v11;
    *(v16 + 8) = v10;
LABEL_5:
    cstdlib_strcpy(v11, __s);
    return 0;
  }

  log_OutPublic(*(a1 + 32), "FE_ONEWORD", 35000, 0, v12, v13, v14, v15, v18);
  return 2310021130;
}

uint64_t crf_mde_seg_get_features(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, unsigned int a5, __int16 a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, void *a10, unsigned int a11, unsigned int a12)
{
  v26 = *MEMORY[0x277D85DE8];
  if (a9)
  {
    v14 = 0;
    while (2)
    {
      v15 = &byte_287EEBFB8;
      v16 = "char";
      while (cstdlib_strcmp(*(a8 + 8 * v14), v16))
      {
        v16 = *(v15 + 1);
        v15 += 24;
        if (!v16)
        {
          goto LABEL_9;
        }
      }

      BYTE2(v18) = *v15;
      LOWORD(v18) = a6;
      result = (*(v15 - 1))(a1, a2, a3, a4, a5, a11, a12, a7, v18, __s);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = crf_mde_seg_fv_add(a1, a10, v14, __s);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

LABEL_9:
      if (++v14 != a9)
      {
        continue;
      }

      break;
    }
  }

  return 0;
}

uint64_t crf_mde_seg_set_padding_features(uint64_t a1, unsigned int a2, int a3, void *a4, int a5)
{
  v16 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    return 0;
  }

  v9 = 0;
  if (a5 == 1)
  {
    v10 = ">";
  }

  else
  {
    v10 = "<";
  }

  while (1)
  {
    v11 = "-";
    if (!v9)
    {
      v11 = __dst;
      cstdlib_strcpy(__dst, v10);
      LH_itoa(a2, __s2, 0xAu);
      cstdlib_strcat(__dst, __s2);
    }

    cstdlib_strcpy(__s, v11);
    result = crf_mde_seg_fv_add(a1, a4, v9, __s);
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    if (a3 == ++v9)
    {
      return 0;
    }
  }

  return result;
}

uint64_t crf_mde_seg_fe_char(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int16 a9, char a10, char *a11)
{
  v11 = a10 + a9;
  if (v11 >= a3)
  {
    v12 = "-";
  }

  else
  {
    v12 = *(a2 + 8 * v11);
  }

  v13 = cstdlib_strlen(v12);
  if ((v13 & 0xFE00) != 0)
  {
    v14 = 512;
  }

  else
  {
    v14 = v13;
  }

  cstdlib_strncpy(a11, v12, v14);
  a11[v14] = 0;
  return 0;
}

uint64_t crf_mde_seg_fe_isvowel(int a1, uint64_t a2, unsigned int a3, int a4, int a5, int a6, int a7, char *__s, unsigned __int16 a9, char a10, char *a11)
{
  v11 = a10 + a9;
  if (v11 >= a3)
  {
    v17 = "-";
  }

  else if (__s && (v14 = cstdlib_strlen(__s)) != 0)
  {
    v15 = v14;
    v16 = 0;
    v17 = "0";
    while (1)
    {
      v18 = Utf8_LengthInBytes(&__s[v16], 1);
      if (!cstdlib_strncmp(*(a2 + 8 * v11), &__s[v16], v18))
      {
        break;
      }

      v16 += v18;
      if (v16 >= v15)
      {
        goto LABEL_11;
      }
    }

    v17 = "1";
  }

  else
  {
    v17 = "0";
  }

LABEL_11:
  v19 = cstdlib_strlen(v17);
  if ((v19 & 0xFE00) != 0)
  {
    v20 = 512;
  }

  else
  {
    v20 = v19;
  }

  cstdlib_strncpy(a11, v17, v20);
  a11[v20] = 0;
  return 0;
}

uint64_t crf_mde_seg_fe_char_count(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int16 a9, char a10, char *a11)
{
  if (a10 + a9 >= a3)
  {
    v13 = cstdlib_strlen("-");
    if ((v13 & 0xFE00) != 0)
    {
      v14 = 512;
    }

    else
    {
      v14 = v13;
    }

    cstdlib_strncpy(a11, "-", v14);
    a11[v14] = 0;
  }

  else
  {
    LH_itoa(a9, __s, 0xAu);
    v11 = cstdlib_strlen(__s);
    if ((v11 & 0xFE00) != 0)
    {
      v12 = 512;
    }

    else
    {
      v12 = v11;
    }

    cstdlib_strncpy(a11, __s, v12);
    a11[v12] = 0;
  }

  return 0;
}

uint64_t crf_mde_seg_fe_char_revcount(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int16 a9, char a10, char *a11)
{
  v11 = a10 + a9;
  if (v11 < 0 || v11 >= a3)
  {
    v14 = cstdlib_strlen("-");
    if ((v14 & 0xFE00) != 0)
    {
      v15 = 512;
    }

    else
    {
      v15 = v14;
    }

    cstdlib_strncpy(a11, "-", v15);
    a11[v15] = 0;
  }

  else
  {
    LH_itoa(~a9 + a3, __s, 0xAu);
    v12 = cstdlib_strlen(__s);
    if ((v12 & 0xFE00) != 0)
    {
      v13 = 512;
    }

    else
    {
      v13 = v12;
    }

    cstdlib_strncpy(a11, __s, v13);
    a11[v13] = 0;
  }

  return 0;
}

uint64_t crf_mde_seg_fe_morpheme(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, int a6, int a7, uint64_t a8, unsigned __int16 a9, char a10, char *a11)
{
  v11 = a10 + a9;
  if (v11 >= a3)
  {
    if (a6 == 1 && (v11 & 0x80000000) != 0)
    {
      v12 = "SOS";
    }

    else if (a7 == 1 && v11 >= a3)
    {
      v12 = "EOS";
    }

    else
    {
      v12 = "-";
    }
  }

  else
  {
    v12 = *(a2 + 8 * v11);
  }

  v13 = cstdlib_strlen(v12);
  if ((v13 & 0xFE00) != 0)
  {
    v14 = 512;
  }

  else
  {
    v14 = v13;
  }

  cstdlib_strncpy(a11, v12, v14);
  a11[v14] = 0;
  return 0;
}

uint64_t crf_mde_seg_fe_punc(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int16 a9, char a10, char *a11)
{
  v11 = a10 + a9;
  if (v11 >= a3)
  {
    v12 = "-";
  }

  else if (*(a4 + 4 * v11) == 1)
  {
    v12 = "YES";
  }

  else
  {
    v12 = "NO";
  }

  v13 = cstdlib_strlen(v12);
  if ((v13 & 0xFE00) != 0)
  {
    v14 = 512;
  }

  else
  {
    v14 = v13;
  }

  cstdlib_strncpy(a11, v12, v14);
  a11[v14] = 0;
  return 0;
}

uint64_t crf_mde_utils_add2Str(uint64_t a1, const char **a2, unsigned __int16 *a3, char *__s)
{
  v8 = cstdlib_strlen(__s);
  v9 = *a3;
  if (v8 >= v9 - cstdlib_strlen(*a2))
  {
    v11 = cstdlib_strlen(__s);
    v12 = *a3;
    v13 = (v11 - v12 + cstdlib_strlen(*a2));
    if (v13 <= 0x80)
    {
      v14 = 128;
    }

    else
    {
      v14 = v13;
    }

    v10 = heap_Realloc(*(a1 + 8), *a2, *a3 + v14 + 1);
    if (!v10)
    {
      log_OutPublic(*(a1 + 32), "FE_ONEWORD", 34000, 0, v15, v16, v17, v18, v22);
      return 2310021130;
    }

    *a2 = v10;
    *a3 += v14;
  }

  else
  {
    v10 = *a2;
  }

  v19 = cstdlib_strlen(v10);
  v20 = *a2;
  if (v19)
  {
    cstdlib_strcat(v20, __s);
  }

  else
  {
    cstdlib_strcpy(v20, __s);
  }

  return 0;
}

uint64_t hlp_Write2WordRec(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4, __int16 a5, __int16 a6, int a7, const char *a8, char *__s, char *a10, char *a11, int a12, int a13)
{
  v35 = a5;
  v34 = a6;
  v33 = 0;
  v32 = 8;
  v31 = 0;
  if (a7)
  {
    result = (*(a1 + 80))(a2, a3, *a4, &v31);
    goto LABEL_3;
  }

  if (!a13)
  {
    result = (*(a1 + 88))(a2, a3, *a4, &v31);
LABEL_3:
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  v31 = *a4;
LABEL_7:
  result = (*(a1 + 160))(a2, a3, v31, 0, 1, &v32, &v33);
  if ((result & 0x80000000) == 0)
  {
    result = (*(a1 + 160))(a2, a3, v31, 1, 1, &v35, &v33);
    if ((result & 0x80000000) == 0)
    {
      result = (*(a1 + 160))(a2, a3, v31, 2, 1, &v34, &v33);
      if ((result & 0x80000000) == 0)
      {
        v19 = *(a1 + 160);
        v20 = v31;
        v21 = cstdlib_strlen(__s);
        result = v19(a2, a3, v20, 3, (v21 + 1), __s, &v33);
        if ((result & 0x80000000) == 0)
        {
          v22 = *(a1 + 160);
          v23 = v31;
          v24 = cstdlib_strlen(a8);
          result = v22(a2, a3, v23, 5, (v24 + 1), a8, &v33);
          if ((result & 0x80000000) == 0)
          {
            v25 = *(a1 + 160);
            v26 = v31;
            v27 = cstdlib_strlen(a10);
            result = v25(a2, a3, v26, 6, (v27 + 1), a10, &v33);
            if ((result & 0x80000000) == 0)
            {
              v28 = *(a1 + 160);
              v29 = v31;
              v30 = cstdlib_strlen(a11);
              result = v28(a2, a3, v29, 9, (v30 + 1), a11, &v33);
              if ((result & 0x80000000) == 0)
              {
                result = (*(a1 + 160))(a2, a3, v31, 7, 1, &a12, &v33);
                if ((result & 0x80000000) == 0)
                {
                  *a4 = v31;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t crf_mde_utils_POS_dctlkp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char **a7)
{
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  v13 = (*(a2 + 96))(a3, a4, a5, a6, &__c[3], &__c[1], __c);
  if ((v13 & 0x80000000) == 0)
  {
    if (*&__c[1] || (log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "%s dct look up %s : no result", v10, v11, v12, a5), *&__c[1]))
    {
      v14 = cstdlib_strchr(**&__c[3], __c[0]);
      if (v14)
      {
        *v14 = 0;
      }

      v15 = *(a1 + 8);
      v16 = cstdlib_strlen(**&__c[3]);
      v17 = heap_Calloc(v15, 1, v16 + 1);
      *a7 = v17;
      if (v17)
      {
        cstdlib_strcpy(v17, **&__c[3]);
        log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "%s POS dct look up %s : adding %s %s %s", v22, v23, v24, a5);
      }

      else
      {
        log_OutPublic(*(a1 + 32), "FE_ONEWORD", 34000, 0, v18, v19, v20, v21, v26);
        return 2310021130;
      }
    }
  }

  return v13;
}

uint64_t crf_mde_utils_write_morphemes(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int16 *a11, unsigned __int16 a12, __int16 a13, unsigned __int16 *a14, const char *a15, unsigned __int16 *a16)
{
  v85 = *MEMORY[0x277D85DE8];
  v83 = 0;
  v82 = *a11;
  v19 = cstdlib_strlen(a15);
  cstdlib_strcpy(__dst, "normal");
  if (*a14)
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    do
    {
      v22 += cstdlib_strlen(*(*(a14 + 1) + v20)) + 1;
      ++v21;
      v20 += 48;
    }

    while (v21 < *a14);
    v23 = v22 + 1;
  }

  else
  {
    v23 = 1;
  }

  v24 = heap_Calloc(*(a1 + 8), 1, v23);
  if (!v24)
  {
    log_OutPublic(*(a1 + 32), "FE_ONEWORD", 34000, 0, v25, v26, v27, v28, __s);
    return 2310021130;
  }

  v29 = v24;
  v77 = a1;
  cstdlib_strcpy(v24, **(a14 + 1));
  if (*a14 >= 2u)
  {
    cstdlib_strcat(v29, "_");
    if (*a14 >= 2u)
    {
      v30 = 1;
      v31 = 48;
      do
      {
        cstdlib_strcat(v29, *(*(a14 + 1) + v31));
        v32 = *a14;
        if (v30 + 1 < v32)
        {
          cstdlib_strcat(v29, "_");
          v32 = *a14;
        }

        ++v30;
        v31 += 48;
      }

      while (v30 < v32);
    }
  }

  if (cstdlib_strlen(v29) == 128)
  {
    cstdlib_strcat(v29, "_");
  }

  v81 = cstdlib_strlen(v29);
  v33 = a13 + a12 + v81;
  *a16 = v33;
  v34 = Utf8_LengthInBytes(&a15[v33], 1);
  v35 = *a16;
  if (v19 > v35)
  {
    v36 = v34;
    do
    {
      if (!(*(a4 + 128))(a5, a6, &a15[v35]))
      {
        break;
      }

      if (!cstdlib_strncmp(&a15[*a16], "_", v36))
      {
        break;
      }

      v37 = *a16 + v36;
      *a16 = v37;
      v36 = Utf8_LengthInBytes(&a15[v37], 1);
      v35 = *a16;
    }

    while (v19 > v35);
  }

  v75 = a13 + a12;
  v38 = Utf8_LengthInBytes(&a15[v75], 1);
  v39 = a12 - v38 + a13;
  v79 = a5;
  if (v39 >= 0 && (v40 = v38, v41 = &a15[v39], (*(a4 + 128))(a5, a6, v41)))
  {
    v76 = 0;
    v42 = 0;
    v43 = v40;
    LOWORD(v44) = v40;
    do
    {
      v45 = v44;
      if (!cstdlib_strncmp(v41, "_", v43))
      {
        break;
      }

      v42 = v44;
      v46 = Utf8_LengthInBytes(&a15[v75 - v44], 1);
      v44 = v44 + v46;
      v47 = a12 - v44 + a13;
      if (v47 < 0)
      {
        v76 = v45;
        break;
      }

      v43 = v46;
      v41 = &a15[v47];
      v76 = v45;
    }

    while ((*(a4 + 128))(v79, a6, v41));
  }

  else
  {
    v76 = 0;
    v42 = 0;
  }

  v71 = a6;
  if (!v81)
  {
    v51 = 0;
    v49 = 0;
    v48 = 0;
LABEL_50:
    if (a2 == 1 && a3)
    {
      v60 = v77;
      v61 = crf_mde_utils_POS_dctlkp(v77, a4, v79, v71, a3, *(*(a14 + 1) + 48 * v48), &v83);
      v56 = v83;
      if ((v61 & 0x80000000) != 0)
      {
        v51 = v61;
LABEL_72:
        *a11 = v82;
        if (v56)
        {
          goto LABEL_76;
        }

        goto LABEL_77;
      }

      v62 = *a16 - a13;
      if (v83)
      {
        LOWORD(v69) = 0;
        v51 = hlp_Write2WordRec(a7, a9, a10, &v82, a12 - v76 + v49, v62, v48, v83, "", "", __dst, v69, 1);
        if ((v51 & 0x80000000) != 0)
        {
          goto LABEL_75;
        }

        heap_Free(*(v77 + 8), v56);
      }

      else
      {
        LOWORD(v69) = 0;
        v51 = hlp_Write2WordRec(a7, a9, a10, &v82, a12 - v76 + v49, v62, v48, "*", "", "", __dst, v69, 1);
        if ((v51 & 0x80000000) != 0)
        {
LABEL_70:
          *a11 = v82;
          v60 = v77;
          goto LABEL_77;
        }
      }
    }

    else
    {
      if (a12 - v42 + v49 != (*a16 - a13))
      {
        LOWORD(v69) = 0;
        v51 = hlp_Write2WordRec(a7, a9, a10, &v82, a12 - v42 + v49, *a16 - a13, v48, "", "", "", __dst, v69, 1);
      }

      if ((v51 & 0x80000000) != 0)
      {
        goto LABEL_70;
      }
    }

    v63 = (v75 + v81);
    if (v63 > v75 && v81)
    {
      v64 = 0;
      v65 = v75;
      do
      {
        v66 = v29[v64];
        if (a15[v65] != v66)
        {
          a15[v65] = v66;
        }

        if (v63 <= ++v65)
        {
          break;
        }

        ++v64;
      }

      while (v81 > v64);
    }

    goto LABEL_70;
  }

  v48 = 0;
  v49 = 0;
  v50 = 0;
  v51 = 0;
  v53 = a2 == 1 && a3 != 0;
  v73 = v53;
  v72 = a12 - v76;
  while (1)
  {
    v54 = Utf8_LengthInBytes(&v29[v50], 1);
    if (!cstdlib_strncmp(&v29[v50], "_", v54))
    {
      break;
    }

LABEL_46:
    v50 += v54;
    if (v50 >= v81)
    {
      goto LABEL_50;
    }
  }

  if (!v73)
  {
    LOWORD(v69) = 0;
    v59 = hlp_Write2WordRec(a7, a9, a10, &v82, v72 + v49, v50 + a12, v48, "", "", "", __dst, v69, 1);
    goto LABEL_44;
  }

  v55 = crf_mde_utils_POS_dctlkp(v77, a4, v79, v71, a3, *(*(a14 + 1) + 48 * v48), &v83);
  v56 = v83;
  if ((v55 & 0x80000000) != 0)
  {
    v51 = v55;
    v60 = v77;
    goto LABEL_72;
  }

  v57 = v72 + v49;
  v58 = v50 + a12;
  if (!v83)
  {
    LOWORD(v69) = 0;
    v59 = hlp_Write2WordRec(a7, a9, a10, &v82, v57, v58, v48, "*", "", "", __dst, v69, 1);
LABEL_44:
    v51 = v59;
    if ((v59 & 0x80000000) != 0)
    {
      goto LABEL_70;
    }

    goto LABEL_45;
  }

  LOWORD(v69) = 0;
  v51 = hlp_Write2WordRec(a7, a9, a10, &v82, v57, v58, v48, v83, "", "", __dst, v69, 1);
  if ((v51 & 0x80000000) == 0)
  {
    heap_Free(*(v77 + 8), v56);
    v83 = 0;
LABEL_45:
    ++v48;
    v49 = v50 + 1;
    goto LABEL_46;
  }

  v60 = v77;
LABEL_75:
  *a11 = v82;
LABEL_76:
  heap_Free(*(v60 + 8), v56);
LABEL_77:
  heap_Free(*(v60 + 8), v29);
  return v51;
}

uint64_t crf_mde_utils_adddctres(uint64_t a1, uint64_t a2, const char *a3, char *__s, const char *a5, int a6)
{
  v12 = *(a1 + 8);
  v13 = cstdlib_strlen(__s);
  v14 = heap_Calloc(v12, 1, v13 + 1);
  if (v14)
  {
    v19 = v14;
    cstdlib_strcpy(v14, __s);
    v20 = cstdlib_strchr(__s, 92);
    for (i = 1; v20; ++i)
    {
      *v20 = 0;
      v20 = cstdlib_strchr(v20 + 1, 92);
    }

    v22 = *(a2 + 24);
    if (*(a2 + 24))
    {
      if (*(a2 + 8) + i >= v22)
      {
        v23 = heap_Realloc(*(a1 + 8), *(a2 + 16), 32 * (v22 + i) + 160);
        if (!v23)
        {
          goto LABEL_33;
        }

        *(a2 + 16) = v23;
        v28 = i + *(a2 + 24) + 5;
        *(a2 + 24) = v28;
        v29 = *(a2 + 8);
        if (v29 < v28)
        {
          v30 = v28;
          v31 = (v23 + 32 * v29 + 8);
          v32 = v30 - v29;
          do
          {
            *(v31 - 2) = 0;
            v31[1] = 0;
            v31[2] = 0;
            *v31 = 0;
            v31 += 4;
            --v32;
          }

          while (v32);
        }
      }
    }

    else
    {
      if (i >= 5u)
      {
        v34 = i + 1;
      }

      else
      {
        v34 = 5;
      }

      v35 = heap_Calloc(*(a1 + 8), 1, 32 * v34);
      *(a2 + 16) = v35;
      if (!v35)
      {
        goto LABEL_33;
      }

      *(a2 + 24) = v34;
    }

    v36 = cstdlib_strchr(v19, 92);
    v37 = v19;
    if (v36)
    {
      v38 = v36;
      v37 = v19;
      do
      {
        *v38 = 0;
        v39 = *(a1 + 8);
        v40 = cstdlib_strlen(v37);
        v41 = heap_Calloc(v39, 1, v40 + 1);
        *(*(a2 + 16) + 32 * *(a2 + 8) + 8) = v41;
        if (!v41)
        {
          goto LABEL_33;
        }

        cstdlib_strcpy(v41, v37);
        v42 = *(a1 + 8);
        v43 = cstdlib_strlen(a3);
        v44 = heap_Calloc(v42, 1, v43 + 1);
        *(*(a2 + 16) + 32 * *(a2 + 8) + 16) = v44;
        if (!v44)
        {
          goto LABEL_33;
        }

        cstdlib_strcpy(v44, a3);
        if (a5 && cstdlib_strlen(a5))
        {
          v45 = *(a1 + 8);
          v46 = cstdlib_strlen(a5);
          v47 = heap_Calloc(v45, 1, v46 + 1);
          *(*(a2 + 16) + 32 * *(a2 + 8) + 24) = v47;
          if (!v47)
          {
            goto LABEL_33;
          }

          cstdlib_strcpy(v47, a5);
        }

        v48 = *(a2 + 8);
        *(*(a2 + 16) + 32 * v48) = a6;
        *(a2 + 8) = v48 + 1;
        v37 = v38 + 1;
        v38 = cstdlib_strchr(v38 + 1, 92);
      }

      while (v38);
    }

    v49 = *(a1 + 8);
    v50 = cstdlib_strlen(v37);
    v51 = heap_Calloc(v49, 1, v50 + 1);
    *(*(a2 + 16) + 32 * *(a2 + 8) + 8) = v51;
    if (v51)
    {
      cstdlib_strcpy(v51, v37);
      v52 = *(a1 + 8);
      v53 = cstdlib_strlen(a3);
      v54 = heap_Calloc(v52, 1, v53 + 1);
      *(*(a2 + 16) + 32 * *(a2 + 8) + 16) = v54;
      if (v54)
      {
        cstdlib_strcpy(v54, a3);
        if (!a5 || !cstdlib_strlen(a5))
        {
          goto LABEL_32;
        }

        v55 = *(a1 + 8);
        v56 = cstdlib_strlen(a5);
        v57 = heap_Calloc(v55, 1, v56 + 1);
        *(*(a2 + 16) + 32 * *(a2 + 8) + 24) = v57;
        if (v57)
        {
          cstdlib_strcpy(v57, a5);
LABEL_32:
          v33 = 0;
          v58 = *(a2 + 8);
          *(*(a2 + 16) + 32 * v58) = a6;
          *(a2 + 8) = v58 + 1;
          *(a2 + 28) = 1;
          *(a2 + 40) = 1;
LABEL_34:
          heap_Free(*(a1 + 8), v19);
          return v33;
        }
      }
    }

LABEL_33:
    v33 = 2310021130;
    log_OutPublic(*(a1 + 32), "FE_ONEWORD", 34000, 0, v24, v25, v26, v27, v60);
    goto LABEL_34;
  }

  v33 = 2310021130;
  log_OutPublic(*(a1 + 32), "FE_ONEWORD", 34000, 0, v15, v16, v17, v18, v60);
  return v33;
}

uint64_t crf_mde_utils_sysdctlkp(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 *a9, uint64_t a10)
{
  v76 = 0;
  v74 = 0;
  __s1 = 0;
  v75 = -1;
  v14 = "xps";
  if (((*(a2 + 96))(a3, a4, "fecfg", "mde_affixtags", &v76, &v75, &v74) & 0x80000000) == 0 && v75)
  {
    v15 = cstdlib_strchr(*v76, v74);
    if (v15)
    {
      *v15 = 0;
    }

    v14 = *v76;
  }

  if ((paramc_ParamGetStr(a1[5], "sysdctlookup", &__s1) & 0x80000000) == 0 && !cstdlib_strcmp(__s1, "no"))
  {
    return 0;
  }

  v16 = a9;
  v75 = 0;
  cstdlib_strcpy(__dst, "g2p");
  if (a5)
  {
    cstdlib_strcat(__dst, (a6 + 3 * *a9));
    v17 = (*(a2 + 232))(a3, a4, __dst, a9, &v76, &v75, &v74, 0);
  }

  else
  {
    v66 = 0;
    v17 = (*(a2 + 240))(a3, a4, __dst, a9, &v76, &v75, &v74, a7);
  }

  v21 = v17;
  if ((v17 & 0x80000000) == 0)
  {
    if (v75 || (log_OutText(a1[4], "FE_ONEWORD", 5, 0, "G2P look up %s : no result", v18, v19, v20, a9), v75))
    {
      v67 = v14;
      v22 = 0;
      v23 = 0;
      do
      {
        v24 = v76[v22];
        v25 = cstdlib_strchr(v24, v74);
        if (!v25)
        {
          goto LABEL_34;
        }

        *v25 = 0;
        v29 = cstdlib_strchr(v25 + 1, v74);
        if (!v29)
        {
          goto LABEL_34;
        }

        *v29 = 0;
        v30 = cstdlib_strchr(v29 + 1, v74);
        if (!v30)
        {
          goto LABEL_34;
        }

        *v30 = 0;
        v31 = v30 + 1;
        v32 = cstdlib_strchr(v30 + 1, v74);
        v33 = v32;
        if (v32)
        {
          *v32 = 0;
          v33 = v32 + 1;
          v34 = cstdlib_strchr(v32 + 1, v74);
          if (v34)
          {
            *v34 = 0;
            v35 = cstdlib_strchr(v34 + 1, v74);
            if (v35)
            {
              *v35 = 0;
              v36 = v35 + 1;
              v37 = cstdlib_strchr(v35 + 1, v74);
              if (v37)
              {
                *v37 = 0;
                v38 = cstdlib_strchr(v37 + 1, v74);
                if (v38)
                {
                  *v38 = 0;
                }
              }

              if (!cstdlib_strcmp(v36, "0") || !cstdlib_strcmp(v36, "2"))
              {
                goto LABEL_34;
              }
            }
          }
        }

        v39 = cstdlib_strlen(v31);
        if (v24 && v39 && cstdlib_strlen(v24))
        {
          v40 = a1[1];
          v41 = cstdlib_strlen(v24);
          v42 = heap_Calloc(v40, 1, v41 + 1);
          if (!v42)
          {
            v21 = 2310021130;
            log_OutPublic(a1[4], "FE_ONEWORD", 34000, 0, v43, v44, v45, v46, v66);
            return v21;
          }

          v47 = v42;
          cstdlib_strcpy(v42, v24);
          v48 = heap_Calloc(a1[1], 1, 256);
          if (!v48)
          {
            v21 = 2310021130;
            log_OutPublic(a1[4], "FE_ONEWORD", 34000, 0, v49, v50, v51, v52, v66);
            v63 = a1[1];
            v64 = v47;
            goto LABEL_56;
          }

          v53 = v48;
          if (cstdlib_strlen(v31) == 1 && cstdlib_strstr(v67, v31))
          {
            cstdlib_strcpy(v53, v31);
            v57 = 2;
          }

          else
          {
            cstdlib_strcpy(v53, v31);
            if (a8)
            {
              v58 = v53;
              while (1)
              {
                v59 = cstdlib_strstr(v31, "\");
                if (v59)
                {
                  cstdlib_strncpy(v58, v31, (v59 - v31));
                  v58[(v59 - v31)] = 0;
                }

                else
                {
                  cstdlib_strcpy(v58, v31);
                }

                v75 = -1;
                v60 = (*(a2 + 96))(a3, a4, a8, v58, &v76, &v75, &v74);
                if ((v60 & 0x80000000) != 0)
                {
                  break;
                }

                if (v75 == 1)
                {
                  v61 = cstdlib_strchr(*v76, v74);
                  if (v61)
                  {
                    *v61 = 0;
                  }

                  cstdlib_strcpy(v58, *v76);
                }

                if (!v59)
                {
                  goto LABEL_51;
                }

                v62 = &v58[cstdlib_strlen(v58)];
                cstdlib_strcpy(v62, "\");
                v58 = v62 + 1;
                v31 = v59 + 1;
              }

LABEL_55:
              v21 = v60;
              heap_Free(a1[1], v47);
              v63 = a1[1];
              v64 = v53;
LABEL_56:
              heap_Free(v63, v64);
              return v21;
            }

LABEL_51:
            v57 = 1;
          }

          log_OutText(a1[4], "FE_ONEWORD", 5, 0, "G2P look up %s : adding %s %s %s", v54, v55, v56, a9);
          v60 = crf_mde_utils_adddctres(a1, a10, v47, v53, v33, v57);
          if ((v60 & 0x80000000) != 0)
          {
            goto LABEL_55;
          }

          heap_Free(a1[1], v47);
          heap_Free(a1[1], v53);
          v21 = 0;
          v16 = a9;
        }

        else
        {
LABEL_34:
          if (!v23)
          {
            log_OutText(a1[4], "FE_ONEWORD", 5, 0, "G2P look up %s : found entry, but discarded (mde field))", v26, v27, v28, v16);
          }

          v23 = 1;
        }

        ++v22;
      }

      while (v22 < v75);
    }
  }

  return v21;
}

uint64_t crf_mde_utils_dctlkp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  memset(__c, 0, sizeof(__c));
  v13 = (*(a2 + 96))(a3, a4, a5, a6, &__c[3], &__c[1], __c);
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

  if (!*&__c[1])
  {
    log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "%s dct look up %s : no result", v10, v11, v12, a5);
    if (!*&__c[1])
    {
      return v13;
    }
  }

  v14 = 0;
  v15 = 0;
  v16 = 0;
  while (1)
  {
    v17 = cstdlib_strchr(*(*&__c[3] + 8 * v14), __c[0]);
    v18 = v16;
    if (v17)
    {
      *v17 = 0;
      v18 = v17 + 1;
    }

    v19 = *(a1 + 8);
    v20 = cstdlib_strlen(*(*&__c[3] + 8 * v14));
    v21 = heap_Calloc(v19, 1, v20 + 1);
    if (!v21)
    {
      v13 = 2310021130;
      log_OutPublic(*(a1 + 32), "FE_ONEWORD", 34000, 0, v22, v23, v24, v25, v53);
      return v13;
    }

    v26 = v21;
    cstdlib_strcpy(v21, *(*&__c[3] + 8 * v14));
    v27 = cstdlib_strchr(v18, __c[0]);
    if (v27)
    {
      *v27 = 0;
      v16 = v27 + 1;
      v15 = v18;
      if (!v18)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v16 = v18;
      if (!v15)
      {
LABEL_27:
        v49 = 34008;
LABEL_29:
        v13 = 2310021130;
        log_OutPublic(*(a1 + 32), "FE_ONEWORD", v49, 0, v28, v29, v30, v31, v53);
        v50 = *(a1 + 8);
        v51 = v26;
        goto LABEL_33;
      }
    }

    v32 = *(a1 + 8);
    v33 = cstdlib_strlen(v15);
    v34 = heap_Calloc(v32, 1, v33 + 1);
    if (!v34)
    {
      v49 = 34000;
      goto LABEL_29;
    }

    v35 = v34;
    cstdlib_strcpy(v34, v15);
    v36 = cstdlib_strchr(v16, __c[0]);
    if (v36)
    {
      *v36 = 0;
    }

    if (v16 && *v16 != __c[0] && cstdlib_strlen(v16))
    {
      v40 = *(a1 + 8);
      v41 = cstdlib_strlen(v16);
      v42 = heap_Calloc(v40, 1, v41 + 1);
      v47 = v42;
      if (!v42)
      {
        v13 = 2310021130;
        log_OutPublic(*(a1 + 32), "FE_ONEWORD", 34000, 0, v43, v44, v45, v46, v53);
        goto LABEL_31;
      }

      cstdlib_strcpy(v42, v16);
    }

    else
    {
      v47 = 0;
    }

    log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "%s dct look up %s : adding %s %s %s", v37, v38, v39, a5);
    v48 = crf_mde_utils_adddctres(a1, a7, v35, v26, v47, a8);
    if ((v48 & 0x80000000) != 0)
    {
      break;
    }

    heap_Free(*(a1 + 8), v35);
    heap_Free(*(a1 + 8), v26);
    if (v47)
    {
      heap_Free(*(a1 + 8), v47);
    }

    if (++v14 >= *&__c[1])
    {
      return 0;
    }
  }

  v13 = v48;
LABEL_31:
  heap_Free(*(a1 + 8), v35);
  heap_Free(*(a1 + 8), v26);
  if (!v47)
  {
    return v13;
  }

  v50 = *(a1 + 8);
  v51 = v47;
LABEL_33:
  heap_Free(v50, v51);
  return v13;
}

uint64_t crf_mde_utils_dynstr_add(uint64_t a1, uint64_t a2, const char *a3, int a4)
{
  v8 = 2310021120;
  v9 = cstdlib_strlen(*a2);
  v10 = cstdlib_strlen(a3);
  v11 = *(a2 + 8);
  if (v9 + v10 + 2 >= v11)
  {
    v12 = heap_Realloc(*(a1 + 8), *a2, v10 + v11 + *(a2 + 10));
    if (!v12)
    {
      log_OutPublic(*(a1 + 32), "FE_ONEWORD", 34000, 0, v13, v14, v15, v16, v18);
      return 2310021130;
    }

    *a2 = v12;
    *(a2 + 8) += v10 + *(a2 + 10);
  }

  if (a4 == 1)
  {
    cstdlib_strcat(*a2, a3);
    return 0;
  }

  if (a4 == 2)
  {
    cstdlib_strcpy(*a2, a3);
    return 0;
  }

  return v8;
}

void *crf_mde_utils_dynstr_free(void *result, uint64_t a2)
{
  v3 = *a2;
  if (v3)
  {
    result = heap_Free(result[1], v3);
    *a2 = 0;
  }

  *(a2 + 8) = 0;
  return result;
}

uint64_t crf_mde_utils_dynstr_init(uint64_t a1, uint64_t a2, unsigned int a3, __int16 a4)
{
  v5 = a3;
  v8 = heap_Calloc(*(a1 + 8), 1, a3);
  *a2 = v8;
  if (v8)
  {
    *(a2 + 8) = v5;
    *(a2 + 10) = a4;
    cstdlib_strcpy(v8, "");
    return 0;
  }

  else
  {
    log_OutPublic(*(a1 + 32), "FE_ONEWORD", 34000, 0, v9, v10, v11, v12, v14);
    return 2310021130;
  }
}

uint64_t crf_mde_utils_CRF_MDE_SEGPAT_T_init(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  v6 = heap_Calloc(*(a1 + 8), 1, 80 * a3);
  *a2 = v6;
  if (v6)
  {
    if (a3)
    {
      v11 = 0;
      v12 = 80 * a3;
      while (1)
      {
        result = crf_mde_utils_dynstr_init(a1, *a2 + v11, 0x20u, 16);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        result = crf_mde_utils_dynstr_init(a1, *a2 + v11 + 32, 0x20u, 16);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        result = crf_mde_utils_dynstr_init(a1, *a2 + v11 + 48, 0x20u, 16);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        result = crf_mde_utils_dynstr_init(a1, *a2 + v11 + 16, 0x20u, 16);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        result = crf_mde_utils_dynstr_init(a1, *a2 + v11 + 64, 0x20u, 16);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        v11 += 80;
        if (v12 == v11)
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
    log_OutPublic(*(a1 + 32), "FE_ONEWORD", 34000, 0, v7, v8, v9, v10, v14);
    return 2310021130;
  }

  return result;
}

void *crf_mde_utils_CRF_MDE_SEGPAT_T_free(void *result, uint64_t *a2, unsigned int a3)
{
  v4 = *a2;
  if (v4)
  {
    v5 = result;
    if (a3)
    {
      v6 = 0;
      v7 = 80 * a3;
      do
      {
        v8 = *a2;
        v9 = *(*a2 + v6);
        if (v9)
        {
          heap_Free(v5[1], v9);
          *(v8 + v6) = 0;
        }

        v10 = *a2;
        *(v8 + v6 + 8) = 0;
        v11 = v10 + v6;
        v12 = *(v10 + v6 + 32);
        if (v12)
        {
          heap_Free(v5[1], v12);
          *(v11 + 32) = 0;
          v10 = *a2;
        }

        *(v11 + 40) = 0;
        v13 = v10 + v6;
        v14 = *(v10 + v6 + 48);
        if (v14)
        {
          heap_Free(v5[1], v14);
          *(v13 + 48) = 0;
          v10 = *a2;
        }

        *(v13 + 56) = 0;
        v15 = v10 + v6;
        v16 = *(v10 + v6 + 16);
        if (v16)
        {
          heap_Free(v5[1], v16);
          *(v15 + 16) = 0;
          v10 = *a2;
        }

        *(v15 + 24) = 0;
        v17 = v10 + v6;
        v18 = *(v10 + v6 + 64);
        if (v18)
        {
          heap_Free(v5[1], v18);
          *(v17 + 64) = 0;
        }

        *(v17 + 72) = 0;
        v6 += 80;
      }

      while (v7 != v6);
      v4 = *a2;
    }

    result = heap_Free(v5[1], v4);
    *a2 = 0;
  }

  return result;
}

uint64_t crf_mde_utils_do_validation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned __int16 a13, int a14, const char *a15, uint64_t a16, uint64_t a17)
{
  v178 = a7;
  v17 = a1;
  if (a13)
  {
    v18 = 0;
    v19 = a13;
    do
    {
      v20 = *(a12 + 8 * v18);
      if (*(v20 + 8) == 5)
      {
        log_OutText(*(v17 + 32), "FE_ONEWORD", 5, 0, "skip nbest[%d] as contains split umlaut", a6, a7, a8, v18);
      }

      else if (*v20)
      {
        v21 = 0;
        v22 = 0;
        do
        {
          v23 = *(v20 + 1) + 48 * v22;
          if (!*(v23 + 8) && !*(v23 + 40))
          {
            *(v23 + 40) = 1;
            v24 = crf_mde_utils_sysdctlkp(v17, a2, a3, a4, a5, a6, v178, a8, *v23, v23);
            if ((v24 & 0x80000000) != 0)
            {
              return v24;
            }

            v25 = (*(*(a12 + 8 * v18) + 8) + 48 * v22);
            v24 = crf_mde_utils_dctlkp(v17, a2, a3, a4, a9, *v25, v25, 1);
            if ((v24 & 0x80000000) != 0)
            {
              return v24;
            }

            if (a10)
            {
              v26 = (*(*(a12 + 8 * v18) + 8) + 48 * v22);
              v24 = crf_mde_utils_dctlkp(v17, a2, a3, a4, a10, *v26, v26, 2);
              if ((v24 & 0x80000000) != 0)
              {
                return v24;
              }
            }

            v27 = *(*(a12 + 8 * v18) + 8);
            v28 = v27 + 48 * v22;
            if (*(v28 + 8))
            {
              v29 = 0;
              *(v28 + 32) = 0;
              v30 = 24;
              do
              {
                v31 = *(*(v27 + 48 * v22 + 16) + v30 - 8);
                if (v31)
                {
                  v32 = cstdlib_strstr(v31, "◈");
                  if (v32)
                  {
                    v33 = v32;
                    log_OutText(*(v17 + 32), "FE_ONEWORD", 5, 0, "segment %s has phon with special umlaut character=%s", a6, a7, a8, *(*(*(a12 + 8 * v18) + 8) + 48 * v22));
                    v37 = *(*(a12 + 8 * v18) + 8) + 48 * v22;
                    if (*(v37 + 36) == 1)
                    {
                      v38 = "umlauted segment; modified to=%s";
                    }

                    else
                    {
                      v39 = *(*(v37 + 16) + v30 - 8);
                      v40 = cstdlib_strlen("◈");
                      v41 = cstdlib_strlen("◈");
                      v42 = cstdlib_strlen(&v33[v41]);
                      v43 = v39;
                      v17 = a1;
                      cstdlib_memcpy(v43, &v33[v40], v42);
                      v44 = *(*(*(*(a12 + 8 * v18) + 8) + 48 * v22 + 16) + v30 - 8);
                      v45 = cstdlib_strlen("◈");
                      v33 = (v44 + cstdlib_strlen(&v33[v45]));
                      v38 = "non-umlauted segment; modified to=%s";
                    }

                    *v33 = 0;
                    log_OutText(*(v17 + 32), "FE_ONEWORD", 5, 0, v38, v34, v35, v36, *(*(*(*(a12 + 8 * v18) + 8) + 48 * v22 + 16) + v30 - 8));
                  }
                }

                v27 = *(*(a12 + 8 * v18) + 8);
                v46 = *(*(v27 + 48 * v22 + 16) + v30);
                if (v46)
                {
                  v47 = cstdlib_strstr(v46, "force");
                  v27 = *(*(a12 + 8 * v18) + 8);
                  if (v47)
                  {
                    v48 = v47;
                    v49 = cstdlib_strlen(*(*(v27 + 48 * v22 + 16) + v30));
                    v50 = cstdlib_strlen("force");
                    v51 = v50;
                    if (v50 + 1 < v49)
                    {
                      if (v48[v50] == 44)
                      {
                        v51 = v50 + 1;
                      }

                      else
                      {
                        v51 = v50;
                      }
                    }

                    if (!cstdlib_strcmp(*(*(*(*(a12 + 8 * v18) + 8) + 48 * v22 + 16) + v30), "force") || (cstdlib_memmove(v48, &v48[v51], v49 - v51 + 1), !cstdlib_strlen(*(*(*(*(a12 + 8 * v18) + 8) + 48 * v22 + 16) + v30))))
                    {
                      heap_Free(*(a1 + 8), *(*(*(*(a12 + 8 * v18) + 8) + 48 * v22 + 16) + v30));
                      *(*(*(*(a12 + 8 * v18) + 8) + 48 * v22 + 16) + v30) = 0;
                    }

                    v27 = *(*(a12 + 8 * v18) + 8);
                    *(v27 + 48 * v22 + 32) = 1;
                    v17 = a1;
                  }
                }

                ++v29;
                v30 += 32;
              }

              while (v29 < *(v27 + 48 * v22 + 8));
              for (i = 0; i != a13; ++i)
              {
                v53 = *(a12 + 8 * i);
                if (*v53)
                {
                  for (j = 0; j < *v53; ++j)
                  {
                    if ((v18 != i || v22 != j) && *(v53 + 8) != 5)
                    {
                      v55 = *(v53 + 1) + 48 * j;
                      if (!*(v55 + 8))
                      {
                        if (cstdlib_strcmp(*(*(*(a12 + 8 * v18) + 8) + 48 * v22), *v55))
                        {
                          v53 = *(a12 + 8 * i);
                        }

                        else
                        {
                          *(*(*(a12 + 8 * i) + 8) + 48 * j + 16) = heap_Calloc(*(v17 + 8), 1, 32 * *(*(*(a12 + 8 * v18) + 8) + 48 * v22 + 8));
                          v53 = *(a12 + 8 * i);
                          v57 = *(v53 + 1);
                          v58 = v57 + 48 * j;
                          if (!*(v58 + 16))
                          {
                            goto LABEL_213;
                          }

                          v59 = *(a12 + 8 * v18);
                          v60 = *(v59 + 8);
                          v61 = *(v60 + 48 * v22 + 8);
                          *(v58 + 24) = v61;
                          v62 = v57 + 48 * j;
                          *(v62 + 8) = v61;
                          *(v62 + 28) = 1;
                          *(v62 + 40) = 1;
                          if (v61)
                          {
                            v63 = 0;
                            v64 = 0;
                            while (1)
                            {
                              v65 = *(v60 + 48 * v22 + 16) + v63;
                              *(*(v57 + 48 * j + 16) + v63) = *v65;
                              v66 = *(v65 + 8);
                              if (v66)
                              {
                                v67 = *(v17 + 8);
                                v68 = cstdlib_strlen(v66);
                                *(*(*(*(a12 + 8 * i) + 8) + 48 * j + 16) + v63 + 8) = heap_Calloc(v67, 1, v68 + 1);
                                v69 = *(*(*(*(a12 + 8 * i) + 8) + 48 * j + 16) + v63 + 8);
                                if (!v69)
                                {
                                  break;
                                }

                                cstdlib_strcpy(v69, *(*(*(*(a12 + 8 * v18) + 8) + 48 * v22 + 16) + v63 + 8));
                                v59 = *(a12 + 8 * v18);
                                v17 = a1;
                              }

                              v70 = *(v17 + 8);
                              v71 = cstdlib_strlen(*(*(*(v59 + 8) + 48 * v22 + 16) + v63 + 16));
                              *(*(*(*(a12 + 8 * i) + 8) + 48 * j + 16) + v63 + 16) = heap_Calloc(v70, 1, v71 + 1);
                              v72 = *(*(*(*(a12 + 8 * i) + 8) + 48 * j + 16) + v63 + 16);
                              if (!v72)
                              {
                                break;
                              }

                              cstdlib_strcpy(v72, *(*(*(*(a12 + 8 * v18) + 8) + 48 * v22 + 16) + v63 + 16));
                              v59 = *(a12 + 8 * v18);
                              v60 = *(v59 + 8);
                              v73 = v60 + 48 * v22;
                              v53 = *(a12 + 8 * i);
                              v57 = *(v53 + 1);
                              *(v57 + 48 * j + 32) = *(v73 + 32);
                              ++v64;
                              v63 += 32;
                              v17 = a1;
                              if (v64 >= *(v73 + 8))
                              {
                                goto LABEL_43;
                              }
                            }

LABEL_208:
                            v119 = 2310021130;
                            v164 = *(a1 + 32);
LABEL_209:
                            log_OutPublic(v164, "FE_ONEWORD", 34000, 0, v56, a6, a7, a8, v166);
                            return v119;
                          }
                        }
                      }
                    }

LABEL_43:
                    ;
                  }
                }

                v19 = a13;
              }
            }

            else
            {
              for (k = 0; k != a13; ++k)
              {
                v75 = *(a12 + 8 * k);
                if (*v75)
                {
                  v76 = 0;
                  v77 = 0;
                  do
                  {
                    if (v18 != k || v21 != v76)
                    {
                      v78 = cstdlib_strcmp(*(*(*(a12 + 8 * v18) + 8) + 48 * v22), *(*(v75 + 1) + v76));
                      v75 = *(a12 + 8 * k);
                      if (!v78)
                      {
                        *(*(v75 + 1) + v76 + 40) = 1;
                      }
                    }

                    ++v77;
                    v76 += 48;
                  }

                  while (v77 < *v75);
                }

                v19 = a13;
              }
            }
          }

          ++v22;
          v20 = *(a12 + 8 * v18);
          v21 += 48;
        }

        while (v22 < *v20);
      }

      ++v18;
    }

    while (v18 != v19);
    for (m = 0; m != a13; ++m)
    {
      v80 = *(a12 + 8 * m);
      v81 = *v80;
      if (*v80)
      {
        v82 = 0;
        v83 = 0;
        v84 = (*(v80 + 1) + 32);
        do
        {
          if (!*(v84 - 12))
          {
            *(v84 - 1) = 0;
            v83 = 1;
          }

          v85 = *v84;
          v84 += 12;
          if (v85 == 1)
          {
            v82 = 1;
          }

          --v81;
        }

        while (v81);
        if (v83 == 1)
        {
          *(v80 + 8) = 2;
          if (v82 == 1)
          {
            v86 = 0;
            *(v80 + 8) = 1;
            do
            {
              v87 = *(v80 + 1);
              if (*(v87 + 48 * v86 + 8))
              {
                v88 = 0;
                v89 = 8;
                do
                {
                  if (**(v87 + 48 * v86 + 16) == 2)
                  {
                    v90 = *(v17 + 8);
                    v91 = cstdlib_strlen("*");
                    *(*(*(*(a12 + 8 * m) + 8) + 48 * v86 + 16) + v89) = heap_Calloc(v90, 1, v91 + 1);
                    v92 = *(*(*(*(a12 + 8 * m) + 8) + 48 * v86 + 16) + v89);
                    if (!v92)
                    {
                      goto LABEL_208;
                    }

                    cstdlib_strcpy(v92, "*");
                    v80 = *(a12 + 8 * m);
                    v17 = a1;
                  }

                  ++v88;
                  v87 = *(v80 + 1);
                  v89 += 32;
                }

                while (v88 < *(v87 + 48 * v86 + 8));
              }

              else
              {
                *(*(*(a12 + 8 * m) + 8) + 48 * v86 + 16) = heap_Calloc(*(v17 + 8), 1, 32);
                if (!*(*(*(a12 + 8 * m) + 8) + 48 * v86 + 16))
                {
                  goto LABEL_213;
                }

                v93 = v17;
                v94 = *(v17 + 8);
                v95 = cstdlib_strlen("*");
                *(*(*(*(a12 + 8 * m) + 8) + 48 * v86 + 16) + 8) = heap_Calloc(v94, 1, v95 + 1);
                v96 = *(*(*(*(a12 + 8 * m) + 8) + 48 * v86 + 16) + 8);
                if (!v96)
                {
                  v119 = 2310021130;
                  v164 = *(v93 + 32);
                  goto LABEL_209;
                }

                cstdlib_strcpy(v96, "*");
                v97 = *(v93 + 8);
                v98 = cstdlib_strlen(*(*(*(a12 + 8 * m) + 8) + 48 * v86));
                *(*(*(*(a12 + 8 * m) + 8) + 48 * v86 + 16) + 16) = heap_Calloc(v97, 1, v98 + 1);
                v99 = *(*(a12 + 8 * m) + 8) + 48 * v86;
                v100 = *(*(v99 + 16) + 16);
                if (!v100)
                {
                  goto LABEL_208;
                }

                cstdlib_strcpy(v100, *v99);
                v80 = *(a12 + 8 * m);
                v101 = *(v80 + 1) + 48 * v86;
                **(v101 + 16) = 0;
                *(v101 + 8) = 1;
                v17 = a1;
              }

              ++v86;
            }

            while (v86 < *v80);
          }
        }
      }
    }
  }

  v102 = a13;
  v24 = crf_mde_dump(v17, "After mlex lookup", a12, a13, a14, a16, a17, a8);
  if ((v24 & 0x80000000) != 0)
  {
    return v24;
  }

  log_OutText(*(v17 + 32), "FE_ONEWORD", 5, 0, "get pattern combinations for valid/partial segmentations:", v103, v104, v105, 0);
  if (!a13)
  {
    return crf_mde_dump(v17, "results after mlex/pattern validation", a12, v102, a14, a16, a17, v108);
  }

  v109 = 0;
  while (1)
  {
    v110 = *(v17 + 32);
    if (*(*(a12 + 8 * v109) + 32) <= 1u)
    {
      break;
    }

    log_OutText(v110, "FE_ONEWORD", 5, 0, "skip invalid nbest[%d]", v106, v107, v108, v109);
LABEL_180:
    if (++v109 == v102)
    {
      return crf_mde_dump(v17, "results after mlex/pattern validation", a12, v102, a14, a16, a17, v108);
    }
  }

  log_OutText(v110, "FE_ONEWORD", 5, 0, "doing valid nbest[%d]", v106, v107, v108, v109);
  v111 = *(a12 + 8 * v109);
  v190 = 0;
  v191[0] = 0;
  v189 = 0;
  v188 = -1;
  v112 = *v111;
  if (*v111)
  {
    v113 = v111;
    v114 = (*(v111 + 1) + 8);
    v115 = 1;
    do
    {
      v116 = *v114;
      v114 += 24;
      v115 *= v116;
      --v112;
    }

    while (v112);
  }

  else
  {
    v113 = v111;
    v115 = 1;
  }

  v187 = 0;
  v117 = v115;
  v118 = crf_mde_utils_CRF_MDE_SEGPAT_T_init(v17, v191, v115);
  if ((v118 & 0x80000000) != 0 || (v118 = crf_mde_utils_CRF_MDE_SEGPAT_T_init(v17, &v190, v117), (v118 & 0x80000000) != 0))
  {
    v119 = v118;
    goto LABEL_177;
  }

  v188 = -1;
  v119 = (*(a2 + 96))(a3, a4, "fecfg", "mde_addpos", &v189, &v188, &v187);
  v179 = 1;
  if ((v119 & 0x80000000) == 0 && v188)
  {
    v120 = cstdlib_strchr(*v189, v187);
    if (v120)
    {
      *v120 = 0;
    }

    v179 = cstdlib_strcmp(*v189, "YES") && cstdlib_strcmp(*v189, "yes");
  }

  if (!*v113)
  {
LABEL_177:
    v17 = a1;
    crf_mde_utils_CRF_MDE_SEGPAT_T_free(a1, v191, v117);
    crf_mde_utils_CRF_MDE_SEGPAT_T_free(a1, &v190, v117);
    if ((v119 & 0x80000000) != 0)
    {
      return v119;
    }

    v156 = *(a12 + 8 * v109);
    if (!*(v156 + 16))
    {
      *(v156 + 32) = 3;
    }

    goto LABEL_180;
  }

  v121 = v113;
  v122 = 0;
  LOWORD(v123) = 0;
  v181 = v190;
  v175 = v191[0] + 64;
  v167 = v191[0];
  v124 = (v191[0] + 32);
  v177 = v117;
  v170 = v121;
  do
  {
    v125 = *(v121 + 1) + 48 * v122;
    if (!*(v125 + 8))
    {
      LOWORD(v123) = 0;
      v117 = v177;
      goto LABEL_172;
    }

    v168 = v124;
    v126 = 0;
    v127 = 0;
    v171 = v123;
    v173 = v123;
    v169 = v122;
    do
    {
      if (v123)
      {
        v129 = v173;
        v128 = v175;
        while (1)
        {
          v130 = v181 + 80 * v127;
          v131 = crf_mde_utils_dynstr_add(a1, v130 + 32, *(v128 - 4), 2);
          if ((v131 & 0x80000000) != 0)
          {
            goto LABEL_175;
          }

          v131 = crf_mde_utils_dynstr_add(a1, v130 + 32, a15, 1);
          if ((v131 & 0x80000000) != 0)
          {
            goto LABEL_175;
          }

          v132 = *(v125 + 16) + 32 * v126;
          if (*v132 == 2)
          {
            v131 = crf_mde_utils_dynstr_add(a1, v130 + 32, *v125, 1);
            if ((v131 & 0x80000000) != 0)
            {
              goto LABEL_175;
            }

            v133 = a1;
            if (v179)
            {
              goto LABEL_127;
            }

            v131 = crf_mde_utils_dynstr_add(a1, v130 + 32, "_", 1);
            if ((v131 & 0x80000000) != 0)
            {
              goto LABEL_175;
            }

            v134 = *(*(v125 + 16) + 32 * v126 + 8);
            v135 = v130 + 32;
          }

          else
          {
            v134 = *(v132 + 8);
            v135 = v130 + 32;
            v133 = a1;
          }

          v131 = crf_mde_utils_dynstr_add(v133, v135, v134, 1);
          if ((v131 & 0x80000000) != 0)
          {
            goto LABEL_175;
          }

LABEL_127:
          v131 = crf_mde_utils_dynstr_add(v133, v130 + 48, *(v128 - 2), 2);
          if ((v131 & 0x80000000) != 0)
          {
            goto LABEL_175;
          }

          v131 = crf_mde_utils_dynstr_add(v133, v130 + 48, a15, 1);
          if ((v131 & 0x80000000) != 0)
          {
            goto LABEL_175;
          }

          v131 = crf_mde_utils_dynstr_add(v133, v130 + 48, *(*(v125 + 16) + 32 * v126 + 8), 1);
          if ((v131 & 0x80000000) != 0)
          {
            goto LABEL_175;
          }

          v131 = crf_mde_utils_dynstr_add(v133, v130, *(v128 - 8), 2);
          if ((v131 & 0x80000000) != 0)
          {
            goto LABEL_175;
          }

          v131 = crf_mde_utils_dynstr_add(v133, v130, a15, 1);
          if ((v131 & 0x80000000) != 0)
          {
            goto LABEL_175;
          }

          v131 = crf_mde_utils_dynstr_add(v133, v130, *(*(v125 + 16) + 32 * v126 + 16), 1);
          if ((v131 & 0x80000000) != 0)
          {
            goto LABEL_175;
          }

          v131 = crf_mde_utils_dynstr_add(v133, v130 + 64, *v128, 2);
          if ((v131 & 0x80000000) != 0)
          {
            goto LABEL_175;
          }

          v131 = crf_mde_utils_dynstr_add(v133, v130 + 64, a15, 1);
          if ((v131 & 0x80000000) != 0)
          {
            goto LABEL_175;
          }

          v136 = *(*(v125 + 16) + 32 * v126 + 24);
          if (!v136)
          {
            v136 = "*";
          }

          v131 = crf_mde_utils_dynstr_add(a1, v130 + 64, v136, 1);
          if ((v131 & 0x80000000) != 0)
          {
            goto LABEL_175;
          }

          ++v127;
          v128 += 10;
          if (!--v129)
          {
            goto LABEL_153;
          }
        }
      }

      v137 = *(v125 + 16) + 32 * v126;
      v138 = v181 + 80 * v127;
      if (*v137 == 2)
      {
        v139 = a1;
        v131 = crf_mde_utils_dynstr_add(a1, v138 + 32, *v125, 2);
        if ((v131 & 0x80000000) != 0)
        {
          goto LABEL_175;
        }

        if (v179)
        {
          goto LABEL_147;
        }

        v131 = crf_mde_utils_dynstr_add(a1, v138 + 32, "_", 1);
        if ((v131 & 0x80000000) != 0)
        {
          goto LABEL_175;
        }

        v140 = *(*(v125 + 16) + 32 * v126 + 8);
        v141 = v138 + 32;
        v142 = a1;
        v143 = 1;
      }

      else
      {
        v140 = *(v137 + 8);
        v141 = v138 + 32;
        v139 = a1;
        v142 = a1;
        v143 = 2;
      }

      v131 = crf_mde_utils_dynstr_add(v142, v141, v140, v143);
      if ((v131 & 0x80000000) != 0)
      {
        goto LABEL_175;
      }

LABEL_147:
      v144 = v139;
      v145 = v181 + 80 * v127;
      v131 = crf_mde_utils_dynstr_add(v144, v145 + 48, *(*(v125 + 16) + 32 * v126 + 8), 2);
      if ((v131 & 0x80000000) != 0 || (v131 = crf_mde_utils_dynstr_add(v144, v145, *(*(v125 + 16) + 32 * v126 + 16), 2), (v131 & 0x80000000) != 0))
      {
LABEL_175:
        v119 = v131;
        v102 = a13;
        goto LABEL_176;
      }

      v146 = *(*(v125 + 16) + 32 * v126 + 24);
      if (!v146)
      {
        v146 = "*";
      }

      v147 = crf_mde_utils_dynstr_add(a1, v145 + 64, v146, 2);
      v102 = a13;
      if ((v147 & 0x80000000) != 0)
      {
        v119 = v147;
        goto LABEL_176;
      }

      ++v127;
LABEL_153:
      ++v126;
      v102 = a13;
      v122 = v169;
      v121 = v170;
      LOWORD(v123) = v171;
    }

    while (v126 < *(v125 + 8));
    if (v127)
    {
      v123 = 0;
      v148 = 0;
      v117 = v177;
      v124 = v168;
      while (1)
      {
        v172 = v123;
        if (v123)
        {
          v149 = 0;
          v150 = v123;
          v151 = v124;
          v152 = v123;
          do
          {
            v153 = *v151;
            v151 += 10;
            if (!cstdlib_strcmp(v153, *(v181 + 80 * v148 + 32)))
            {
              v149 = 1;
            }

            --v152;
          }

          while (v152);
          v124 = v168;
          if (v149)
          {
            v102 = a13;
            v17 = a1;
            v123 = v172;
            goto LABEL_169;
          }
        }

        else
        {
          v150 = 0;
        }

        v154 = (v181 + 80 * v148);
        v155 = crf_mde_utils_dynstr_add(a1, v167 + 80 * v150 + 32, v154[4], 2);
        if ((v155 & 0x80000000) != 0 || (v155 = crf_mde_utils_dynstr_add(a1, v167 + 80 * v150 + 48, v154[6], 2), (v155 & 0x80000000) != 0) || (v155 = crf_mde_utils_dynstr_add(a1, v167 + 80 * v150, *v154, 2), (v155 & 0x80000000) != 0) || (v155 = crf_mde_utils_dynstr_add(a1, v167 + 80 * v150 + 64, v154[8], 2), (v155 & 0x80000000) != 0))
        {
          v119 = v155;
          v102 = a13;
LABEL_176:
          v117 = v177;
          goto LABEL_177;
        }

        v17 = a1;
        v123 = (v172 + 1);
        v102 = a13;
        v117 = v177;
LABEL_169:
        ++v148;
        v122 = v169;
        v121 = v170;
        if (v148 == v127)
        {
          goto LABEL_172;
        }
      }
    }

    LOWORD(v123) = 0;
    v17 = a1;
    v117 = v177;
    v124 = v168;
LABEL_172:
    ++v122;
  }

  while (v122 < *v121);
  if (!v123)
  {
    v119 = 0;
    goto LABEL_177;
  }

  v182 = v123;
  v157 = heap_Calloc(*(v17 + 8), 1, 80 * v123);
  *(v170 + 3) = v157;
  if (!v157)
  {
LABEL_213:
    v119 = 2310021130;
    v164 = *(v17 + 32);
    goto LABEL_209;
  }

  v158 = 0;
  v119 = 0;
  v170[8] = 0;
  while (1)
  {
    if (a11)
    {
      log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "   check pattern %s", a6, a7, a8, *v124);
      v188 = -1;
      v119 = (*(a2 + 96))(a3, a4, "mde_segpatterns", *v124, &v189, &v188, &v187);
      if ((v119 & 0x80000000) != 0)
      {
        return v119;
      }
    }

    if (v188)
    {
      v159 = cstdlib_strchr(*v189, v187);
      if (v159)
      {
        *v159 = 0;
      }

      log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "     Found Solution %d %s : Valid, PRON=%s POS=%s", v160, v161, v162, v158);
      v163 = crf_mde_utils_dynstr_init(a1, *(v170 + 3) + 80 * v170[8] + 16, 0x20u, 16);
      if ((v163 & 0x80000000) != 0 || (v163 = crf_mde_utils_dynstr_add(a1, *(v170 + 3) + 80 * v170[8] + 16, *v189, 2), (v163 & 0x80000000) != 0) || (v163 = crf_mde_utils_dynstr_init(a1, *(v170 + 3) + 80 * v170[8] + 32, 0x20u, 16), (v163 & 0x80000000) != 0) || (v163 = crf_mde_utils_dynstr_add(a1, *(v170 + 3) + 80 * v170[8] + 32, *v124, 2), (v163 & 0x80000000) != 0) || (v163 = crf_mde_utils_dynstr_init(a1, *(v170 + 3) + 80 * v170[8] + 48, 0x20u, 16), (v163 & 0x80000000) != 0) || (v163 = crf_mde_utils_dynstr_add(a1, *(v170 + 3) + 80 * v170[8] + 48, v124[2], 2), (v163 & 0x80000000) != 0) || (v163 = crf_mde_utils_dynstr_init(a1, *(v170 + 3) + 80 * v170[8], 0x20u, 16), (v163 & 0x80000000) != 0) || (v163 = crf_mde_utils_dynstr_add(a1, *(v170 + 3) + 80 * v170[8], *(v124 - 4), 2), (v163 & 0x80000000) != 0) || (v163 = crf_mde_utils_dynstr_init(a1, *(v170 + 3) + 80 * v170[8] + 64, 0x20u, 16), (v163 & 0x80000000) != 0) || (v163 = crf_mde_utils_dynstr_add(a1, *(v170 + 3) + 80 * v170[8] + 64, v124[4], 2), (v163 & 0x80000000) != 0))
      {
        v119 = v163;
        goto LABEL_176;
      }

      v119 = 0;
      ++v170[8];
      v117 = v177;
    }

    else
    {
      log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "     pattern [%d] %s : Invalid", a6, a7, a8, v158);
    }

    ++v158;
    v124 += 10;
    if (v182 == v158)
    {
      goto LABEL_177;
    }
  }
}

uint64_t crf_mde_dump(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a5)
  {
    return 0;
  }

  v8 = a7;
  v9 = a6;
  log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "%s:", a6, a7, a8, a2);
  if (!a4)
  {
    return 0;
  }

  v16 = 0;
  v55 = a4;
  v56 = v9;
  v57 = v8;
  while (1)
  {
    log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "nbest[%d]", v13, v14, v15, v16);
    cstdlib_strcpy(*v9, "MSD: ");
    v20 = *(a3 + 8 * v16);
    v21 = *v20;
    if (*v20)
    {
      v22 = 0;
      v23 = (*(v20 + 1) + 28);
      do
      {
        v24 = *v23;
        v23 += 12;
        if (!v24)
        {
          v22 = 1;
        }

        --v21;
      }

      while (v21);
      if (v22 != 1)
      {
        break;
      }

      result = crf_mde_utils_add2Str(a1, v9, v8, " !! ");
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v20 = *(a3 + 8 * v16);
      if (*v20)
      {
        break;
      }
    }

LABEL_18:
    log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "%s", v17, v18, v19, *v9);
    v29 = *(*(a3 + 8 * v16) + 32) - 1;
    if (v29 <= 4)
    {
      log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, off_279DAC9D8[v29], v13, v14, v15, 0);
    }

    v30 = *(a3 + 8 * v16);
    if (*v30)
    {
      v31 = 0;
      do
      {
        v32 = "   ";
        if (!*(*(v30 + 1) + 48 * v31 + 28))
        {
          v32 = "!! ";
        }

        log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "%s %s", v13, v14, v15, v32);
        v30 = *(a3 + 8 * v16);
        v33 = *(v30 + 1);
        if (*(v33 + 48 * v31 + 8))
        {
          v34 = 0;
          v35 = 0;
          do
          {
            v36 = (*(v33 + 48 * v31 + 16) + v34);
            v37 = " ISAffix";
            if (*v36 != 2)
            {
              v37 = "";
            }

            log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "     %s%s%s%s%s%s%s", v13, v14, v15, v37);
            v30 = *(a3 + 8 * v16);
            ++v35;
            v33 = *(v30 + 1);
            v34 += 32;
          }

          while (v35 < *(v33 + 48 * v31 + 8));
        }

        ++v31;
      }

      while (v31 < *v30);
    }

    if (v30[8])
    {
      v38 = 0;
      v39 = 0;
      do
      {
        log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "    solution[%d]", v13, v14, v15, v39);
        log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "      segpat:%s", v40, v41, v42, *(*(*(a3 + 8 * v16) + 24) + v38 + 32));
        log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "      segpatPOS:%s", v43, v44, v45, *(*(*(a3 + 8 * v16) + 24) + v38 + 48));
        log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "      wordPOS:%s", v46, v47, v48, *(*(*(a3 + 8 * v16) + 24) + v38 + 16));
        log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "      pron:%s", v49, v50, v51, *(*(*(a3 + 8 * v16) + 24) + v38));
        log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "      feat:%s", v52, v53, v54, *(*(*(a3 + 8 * v16) + 24) + v38 + 64));
        ++v39;
        v38 += 80;
      }

      while (v39 < *(*(a3 + 8 * v16) + 16));
    }

    ++v16;
    v9 = v56;
    v8 = v57;
    if (v16 == v55)
    {
      return 0;
    }
  }

  v26 = 0;
  v27 = 0;
  while (1)
  {
    result = crf_mde_utils_add2Str(a1, v9, v8, *(*(v20 + 1) + v26));
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    v20 = *(a3 + 8 * v16);
    v28 = *v20;
    if (v27 + 1 < v28)
    {
      result = crf_mde_utils_add2Str(a1, v9, v8, " | ");
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v20 = *(a3 + 8 * v16);
      v28 = *v20;
    }

    ++v27;
    v26 += 48;
    if (v27 >= v28)
    {
      goto LABEL_18;
    }
  }
}

char *dynamic_strcat(const char **a1, const char *a2, size_t *a3, uint64_t *a4)
{
  v8 = cstdlib_strlen(*a1);
  v9 = cstdlib_strlen(a2) + v8;
  v10 = *a1;
  if (v9 >= *a3)
  {
    v11 = v9 + 128;
    result = heap_Realloc(a4, v10, (v9 + 128));
    if (!result)
    {
      return result;
    }

    v10 = result;
    *a1 = result;
    *a3 = v11;
  }

  return cstdlib_strcat(v10, a2);
}

char *dynamic_strncat(const char **a1, const char *a2, uint64_t a3, void *a4, uint64_t *a5)
{
  v10 = cstdlib_strlen(*a1) + a3;
  v11 = *a1;
  if (v10 >= *a4)
  {
    v12 = v10 + 128;
    result = heap_Realloc(a5, v11, (v10 + 128));
    if (!result)
    {
      return result;
    }

    v11 = result;
    *a1 = result;
    *a4 = v12;
  }

  return cstdlib_strncat(v11, a2, a3);
}

uint64_t fe_oneword_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v67 = 0;
  v68 = 0;
  v65 = 0;
  v66 = 0;
  v5 = 2310021130;
  v63 = 0;
  v64 = 0;
  v59 = 0;
  if (!a5)
  {
    return 2310021127;
  }

  v62 = 0;
  __b = 0u;
  v61 = 0u;
  *a5 = 0;
  *(a5 + 8) = 0;
  inited = InitRsrcFunction(a3, a4, &v68);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v12 = heap_Calloc(*(v68 + 8), 1, 2288);
  v17 = v68;
  if (!v12)
  {
    log_OutPublic(*(v68 + 32), "FE_ONEWORD", 34000, 0, v13, v14, v15, v16, v56);
    return v5;
  }

  v18 = v12;
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a1;
  v12[5] = a2;
  *v12 = v17;
  v12[1] = a1;
  v19 = heap_Calloc(*(v17 + 8), 1, 1040);
  *(v18 + 48) = v19;
  if (!v19)
  {
LABEL_52:
    v38 = v68;
LABEL_53:
    log_OutPublic(*(v38 + 32), "FE_ONEWORD", 34000, 0, v20, v21, v22, v23, v56);
LABEL_64:
    fe_oneword_ObjClose(*a5, *(a5 + 8));
    *a5 = 0;
    *(a5 + 8) = 0;
    return v5;
  }

  *v19 = a3;
  v19[1] = a4;
  Object = objc_GetObject(*(v68 + 48), "LINGDB", &v67);
  if ((Object & 0x80000000) != 0 || (*(v18 + 56) = *(v67 + 8), Object = objc_GetObject(*(v68 + 48), "FE_DCTLKP", &v66), (Object & 0x80000000) != 0) || (v25 = v66, *(v18 + 80) = *(v66 + 8), *(v18 + 64) = *(v25 + 16), Object = objc_GetObject(*(v68 + 48), "FE_DEPES", &v65), (Object & 0x80000000) != 0) || (v26 = v65, *(v18 + 104) = *(v65 + 8), *(v18 + 88) = *(v26 + 16), Object = objc_GetObject(*(v68 + 48), "CLMOBJECT", &v64), (Object & 0x80000000) != 0) || (v27 = v64, *(v18 + 128) = *(v64 + 8), *(v18 + 112) = *(v27 + 16), Object = objc_GetObject(*(v68 + 48), "PHONMAP", &v63), (Object & 0x80000000) != 0))
  {
LABEL_63:
    v5 = Object;
    goto LABEL_64;
  }

  v28 = v63;
  *(v18 + 152) = *(v63 + 8);
  *(v18 + 136) = *(v28 + 16);
  inited = checkStatCOMP(*(v18 + 64), *(v18 + 72), *(v18 + 80), (v18 + 2000));
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = checkSkipCrosstoken(*(v18 + 64), *(v18 + 72), *(v18 + 80), (v18 + 936));
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = checkFeOneWordCLM(*(v18 + 64), *(v18 + 72), *(v18 + 80), (v18 + 940));
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = checkParaDCT(*(v18 + 64), *(v18 + 72), *(v18 + 80), (v18 + 1996));
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = oneword_posparser_Open(v18);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v29 = *(v18 + 2176);
  if (v29)
  {
    heap_Free(*(*v18 + 8), v29);
  }

  *(v18 + 2176) = 0;
  inited = hlp_setKeyword(*v18, *(v18 + 64), *(v18 + 72), *(v18 + 80), "feoneword_latinPOStag", (v18 + 2176));
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v30 = *(v18 + 2184);
  if (v30)
  {
    heap_Free(*(*v18 + 8), v30);
  }

  *(v18 + 2184) = 0;
  inited = hlp_setKeyword(*v18, *(v18 + 64), *(v18 + 72), *(v18 + 80), "feoneword_latin2enx", (v18 + 2184));
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  *(v18 + 2168) = 0;
  inited = crf_mde_seg_load(*(v18 + 16), *(v18 + 24), *(v18 + 32), *(v18 + 40), *v18, *(v18 + 8), *(v18 + 64), *(v18 + 72), *(v18 + 80), v18 + 2016, (v18 + 2168));
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  *(v18 + 2192) = 0;
  if (!*(v18 + 2168))
  {
    Object = com_mosynt_UseMosynt(*(v18 + 64), *(v18 + 72), *(v18 + 80), (v18 + 2192));
    if ((Object & 0x80000000) != 0)
    {
      goto LABEL_63;
    }

    if (*(v18 + 2192))
    {
      LODWORD(v57[0]) = 1;
      Object = hlp_GetParams(v18, (v18 + 2248), v57);
      if ((Object & 0x80000000) != 0)
      {
        goto LABEL_63;
      }

      Object = wgram_LoadData(a3, a4, *(v18 + 32), *(v18 + 40), (v18 + 2232));
      if ((Object & 0x80000000) != 0)
      {
        goto LABEL_63;
      }

      Object = kbsymtab_LoadData(a3, a4, *(v18 + 32), *(v18 + 40), (v18 + 2200), v57[0]);
      if ((Object & 0x80000000) != 0)
      {
        goto LABEL_63;
      }

      Object = fst_LoadData(a3, a4, (v18 + 2240));
      if ((Object & 0x80000000) != 0)
      {
        goto LABEL_63;
      }

      Object = kblex_InitLex(*(v18 + 16), *(v18 + 24), *(v18 + 32), *(v18 + 40), v18 + 1228, *(v18 + 64), *(v18 + 72), *(v18 + 80), 0, (v18 + 2208));
      if ((Object & 0x80000000) != 0)
      {
        goto LABEL_63;
      }

      Object = kblex_InitLex(*(v18 + 16), *(v18 + 24), *(v18 + 32), *(v18 + 40), v18 + 1228, *(v18 + 64), *(v18 + 72), *(v18 + 80), 1u, (v18 + 2216));
      if ((Object & 0x80000000) != 0)
      {
        goto LABEL_63;
      }

      Object = kblex_InitLex(*(v18 + 16), *(v18 + 24), *(v18 + 32), *(v18 + 40), v18 + 1228, *(v18 + 64), *(v18 + 72), *(v18 + 80), 2u, (v18 + 2224));
      if ((Object & 0x80000000) != 0)
      {
        goto LABEL_63;
      }
    }
  }

  *a5 = v18;
  *(a5 + 8) = 62340;
  Object = (*(*(v18 + 80) + 88))(*(v18 + 64), *(v18 + 72), &v59 + 4, &v59);
  if ((Object & 0x80000000) != 0)
  {
    goto LABEL_63;
  }

  v31 = v59 == 1 && HIDWORD(v59) == 1;
  v32 = v31;
  *(v18 + 560) = v32;
  *(v18 + 160) = 0u;
  *(v18 + 176) = 0u;
  *(v18 + 192) = 0u;
  *(v18 + 208) = 0u;
  *(v18 + 224) = 0;
  *(v18 + 232) = 0u;
  *(v18 + 248) = 0u;
  *(v18 + 264) = 0;
  *(v18 + 556) = 1;
  *(v18 + 568) = 0;
  Object = paramc_ParamGet(*(*v18 + 40), "langcode", (v18 + 1208), 0);
  if ((Object & 0x80000000) != 0)
  {
    goto LABEL_63;
  }

  v33 = heap_Alloc(*(*v18 + 8), 128);
  *(v18 + 160) = v33;
  if (!v33)
  {
    goto LABEL_66;
  }

  *(v18 + 192) = 128;
  v34 = heap_Alloc(*(*v18 + 8), 128);
  *(v18 + 168) = v34;
  if (!v34)
  {
    goto LABEL_66;
  }

  *(v18 + 200) = 128;
  v35 = heap_Alloc(*(*v18 + 8), 128);
  *(v18 + 176) = v35;
  if (!v35)
  {
    goto LABEL_66;
  }

  *(v18 + 208) = 128;
  v36 = heap_Alloc(*(*v18 + 8), 128);
  *(v18 + 184) = v36;
  if (!v36)
  {
    goto LABEL_66;
  }

  *(v18 + 216) = 128;
  v37 = heap_Alloc(*(*v18 + 8), 128);
  *(v18 + 232) = v37;
  v38 = *v18;
  if (!v37)
  {
    goto LABEL_53;
  }

  v39 = heap_Alloc(*(v38 + 8), 128);
  *(v18 + 240) = v39;
  v38 = *v18;
  if (!v39)
  {
    goto LABEL_53;
  }

  v40 = heap_Alloc(*(v38 + 8), 128);
  *(v18 + 248) = v40;
  v38 = *v18;
  if (!v40)
  {
    goto LABEL_53;
  }

  v41 = heap_Alloc(*(v38 + 8), 128);
  *(v18 + 256) = v41;
  v38 = *v18;
  if (!v41)
  {
    goto LABEL_53;
  }

  v42 = heap_Alloc(*(v38 + 8), 128);
  *(v18 + 264) = v42;
  if (!v42)
  {
LABEL_66:
    v38 = *v18;
    goto LABEL_53;
  }

  cstdlib_strcpy((v18 + 300), "normal");
  Object = oneword_GetMdeSettings(v18, "normal");
  if ((Object & 0x80000000) != 0)
  {
    goto LABEL_63;
  }

  Object = hlp_GetPart(v18);
  if ((Object & 0x80000000) != 0)
  {
    goto LABEL_63;
  }

  cstdlib_memset(&__b, 0, 0x28uLL);
  *&__b = ssftmap_ElemCopyString;
  *(&v61 + 1) = stringmap_loc_ElemCopyPtr;
  *(&__b + 1) = ssftmap_ElemFreeString;
  v62 = stringmap_loc_ElemFreeNoOp;
  *&v61 = ssftmap_ElemCompareKeysString;
  v43 = *(*v18 + 8);
  v57[0] = __b;
  v57[1] = v61;
  v58 = stringmap_loc_ElemFreeNoOp;
  Object = ssftmap_ObjOpen(v43, 0, v57, (v18 + 568));
  if ((Object & 0x80000000) != 0)
  {
    goto LABEL_63;
  }

  *(v18 + 856) = heap_Alloc;
  *(v18 + 864) = heap_Calloc;
  *(v18 + 872) = heap_Realloc;
  *(v18 + 880) = heap_Free;
  v44 = OOCAllocator_Con(v18 + 888, (v18 + 856), *(*v18 + 8));
  v45 = LH_ERROR_to_VERROR(v44);
  v50 = *v18;
  if ((v45 & 0x80000000) != 0)
  {
    v55 = v45;
    log_OutPublic(*(v50 + 32), "FE_ONEWORD", 34004, 0, v46, v47, v48, v49, v56);
    v5 = v55;
    goto LABEL_64;
  }

  v51 = heap_Alloc(*(v50 + 8), 64);
  *(v18 + 2256) = v51;
  if (!v51)
  {
    goto LABEL_52;
  }

  cstdlib_strcpy(v51, "");
  v52 = heap_Alloc(*(*v18 + 8), 64);
  *(v18 + 2264) = v52;
  if (!v52)
  {
    goto LABEL_52;
  }

  cstdlib_strcpy(v52, "");
  v53 = heap_Alloc(*(*v18 + 8), 16);
  *(v18 + 2280) = v53;
  if (!v53)
  {
    goto LABEL_52;
  }

  cstdlib_strcpy(v53, "");
  v5 = hlp_common_ObjOpenReopen(v18);
  if ((v5 & 0x80000000) != 0)
  {
    goto LABEL_64;
  }

  return v5;
}

uint64_t checkStatCOMP(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  *a4 = 0;
  v5 = (*(a3 + 96))(a1, a2, "fecfg", "usecompound", &__c[3], &__c[1], __c);
  if ((v5 & 0x80000000) == 0 && *&__c[1] == 1 && *&__c[3] != 0)
  {
    v7 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v7)
    {
      *v7 = 0;
    }

    if (!cstdlib_strcmp("yes", **&__c[3]) || !cstdlib_strcmp("YES", **&__c[3]))
    {
      *a4 = 1;
    }
  }

  return v5;
}

uint64_t checkFeOneWordCLM(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  *a4 = 0;
  v5 = (*(a3 + 96))(a1, a2, "fecfg", "feoneword_clm", &__c[3], &__c[1], __c);
  if ((v5 & 0x80000000) == 0 && *&__c[1] == 1 && *&__c[3] != 0)
  {
    v7 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v7)
    {
      *v7 = 0;
    }

    if (!cstdlib_strcmp("yes", **&__c[3]) || !cstdlib_strcmp("YES", **&__c[3]))
    {
      *a4 = 1;
    }
  }

  return v5;
}

uint64_t checkParaDCT(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  *a4 = 0;
  v5 = (*(a3 + 96))(a1, a2, "fecfg", "feoneword_parallel", &__c[3], &__c[1], __c);
  if ((v5 & 0x80000000) == 0 && *&__c[1] == 1 && *&__c[3] != 0)
  {
    v7 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v7)
    {
      *v7 = 0;
    }

    if (!cstdlib_strcmp("yes", **&__c[3]) || !cstdlib_strcmp("YES", **&__c[3]))
    {
      *a4 = 1;
    }
  }

  return v5;
}

uint64_t hlp_setKeyword(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char **a6)
{
  memset(__c, 0, sizeof(__c));
  *a6 = 0;
  v8 = (*(a4 + 96))(a2, a3, "fecfg", a5, &__c[3], &__c[1], __c);
  result = 0;
  if ((v8 & 0x80000000) == 0 && *&__c[1] == 1 && *&__c[3] != 0)
  {
    v11 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v11)
    {
      *v11 = 0;
    }

    v12 = *(a1 + 8);
    v13 = cstdlib_strlen(**&__c[3]);
    v14 = heap_Calloc(v12, 1, v13 + 1);
    *a6 = v14;
    if (v14)
    {
      cstdlib_strcpy(v14, **&__c[3]);
      return 0;
    }

    else
    {
      log_OutPublic(*(a1 + 32), "FE_ONEWORD", 34000, 0, v15, v16, v17, v18, v19);
      return 2310021130;
    }
  }

  return result;
}

uint64_t hlp_GetParams(uint64_t *a1, _DWORD *a2, _DWORD *a3)
{
  __s1 = 0;
  CfgParamVal = com_mosynt_GetCfgParamVal(a1[8], a1[9], a1[10], "mosynt_usesubmorphana", "yes", &__s1);
  if ((CfgParamVal & 0x80000000) != 0)
  {
    return CfgParamVal;
  }

  *a2 = cstdlib_strcmp(__s1, "yes") == 0;
  v7 = com_mosynt_GetCfgParamVal(a1[8], a1[9], a1[10], "mosynt_enablegraphsymcache", "yes", &__s1);
  if ((v7 & 0x80000000) == 0)
  {
    *a3 = cstdlib_strcmp(__s1, "yes") == 0;
  }

  return v7;
}

uint64_t hlp_GetPart(uint64_t a1)
{
  *&__c[3] = 0;
  __c[0] = 0;
  *&__c[1] = -1;
  v2 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", "nrpart_g2p", &__c[3], &__c[1], __c);
  if ((v2 & 0x80000000) == 0 && *&__c[1])
  {
    v3 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v3)
    {
      *v3 = 0;
    }

    *(a1 + 556) = cstdlib_atoi(**&__c[3]);
  }

  return v2;
}

uint64_t hlp_common_ObjOpenReopen(uint64_t a1)
{
  *&v27[5] = -1;
  __s1 = 0;
  v22 = 0;
  *(a1 + 272) = 0;
  *(a1 + 276) = 0;
  DTData = hlp_LoadDTData(a1);
  if ((DTData & 0x80000000) != 0)
  {
    return DTData;
  }

  v27[4] = 0;
  v23 = 0;
  v3 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", "esctn", &v23, &v27[5], &v27[4]);
  if ((v3 & 0x80000000) == 0)
  {
    if (!*&v27[5])
    {
      goto LABEL_7;
    }

    v4 = *(a1 + 1216);
    v5 = *(*a1 + 8);
    v6 = cstdlib_strlen(*v23) + 1;
    if (v4)
    {
      v7 = heap_Realloc(v5, v4, v6);
      if (v7)
      {
LABEL_6:
        *(a1 + 1216) = v7;
        cstdlib_strcpy(v7, *v23);
        v12 = *(a1 + 1216);
        *(v12 + cstdlib_strlen(*v23) - 1) = 124;
LABEL_7:
        *(a1 + 1224) = 1;
        cstdlib_memset(__b, 0, 7uLL);
        cstdlib_strcpy(__b, "g2p");
        if (*(a1 + 1224))
        {
          v13 = (a1 + 1327);
          v14 = -223;
          while (1)
          {
            LH_itoa(v14 + 256, __s, 0xAu);
            v15 = cstdlib_strlen(__s);
            cstdlib_memcpy(v27, __s, v15);
            *&v27[5] = -1;
            v3 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", __b, &v23, &v27[5], &v27[4]);
            if ((v3 & 0x80000000) != 0)
            {
              break;
            }

            if (*&v27[5])
            {
              cstdlib_strcpy(v13, "");
              v16 = *v23;
              v17 = cstdlib_strlen(*v23);
              cstdlib_strncat(v13, v16, v17 - 1);
            }

            else
            {
              *(a1 + 1224) = 0;
            }

            if (!__CFADD__(v14++, 1))
            {
              v13 += 3;
              if (*(a1 + 1224))
              {
                continue;
              }
            }

            goto LABEL_15;
          }
        }

        else
        {
LABEL_15:
          *(a1 + 2272) = 0;
          if ((hlp_GetCfgParamVal(*(a1 + 64), *(a1 + 72), *(a1 + 80), "feoneword_enable_POIenhancement", "no", &__s1) & 0x80000000) == 0)
          {
            *(a1 + 2272) = cstdlib_strcmp(__s1, "yes") == 0;
          }

          if ((paramc_ParamGetStr(*(*a1 + 40), "enablePOIenhancement", &v22) & 0x80000000) == 0)
          {
            if (cstdlib_strcmp(v22, "yes"))
            {
              v19 = cstdlib_strcmp(v22, "YES") == 0;
            }

            else
            {
              v19 = 1;
            }

            *(a1 + 2272) = v19;
          }

          *(a1 + 2276) = 1;
          if ((hlp_GetCfgParamVal(*(a1 + 64), *(a1 + 72), *(a1 + 80), "feoneword_MW_replace_spaces_with_underscores", "yes", &__s1) & 0x80000000) == 0)
          {
            *(a1 + 2276) = cstdlib_strcmp(__s1, "yes") == 0;
          }
        }

        return v3;
      }
    }

    else
    {
      v7 = heap_Alloc(v5, v6);
      if (v7)
      {
        goto LABEL_6;
      }
    }

    log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0, v8, v9, v10, v11, v21);
    return 2310021130;
  }

  return v3;
}

uint64_t fe_oneword_ObjClose(uint64_t *a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 62340, 2288);
  if ((result & 0x80000000) != 0)
  {
    return 2310021128;
  }

  if (a1)
  {
    if (a1[7])
    {
      objc_ReleaseObject(*(*a1 + 48), "LINGDB");
    }

    if (a1[10])
    {
      objc_ReleaseObject(*(*a1 + 48), "FE_DCTLKP");
    }

    if (a1[13])
    {
      objc_ReleaseObject(*(*a1 + 48), "FE_DEPES");
    }

    if (a1[19])
    {
      objc_ReleaseObject(*(*a1 + 48), "PHONMAP");
    }

    if (a1[16])
    {
      objc_ReleaseObject(*(*a1 + 48), "CLMOBJECT");
    }

    oneword_posparser_Close(a1);
    v4 = a1[272];
    if (v4)
    {
      heap_Free(*(*a1 + 8), v4);
    }

    a1[272] = 0;
    v5 = a1[273];
    if (v5)
    {
      heap_Free(*(*a1 + 8), v5);
    }

    a1[273] = 0;
    if (*(a1 + 542) == 1)
    {
      crf_mde_seg_unload(*a1, a1[1], (a1 + 252));
      *(a1 + 542) = 0;
    }

    v6 = a1[20];
    if (v6)
    {
      heap_Free(*(*a1 + 8), v6);
    }

    a1[20] = 0;
    a1[24] = 0;
    v7 = a1[21];
    if (v7)
    {
      heap_Free(*(*a1 + 8), v7);
    }

    a1[21] = 0;
    a1[25] = 0;
    v8 = a1[22];
    if (v8)
    {
      heap_Free(*(*a1 + 8), v8);
    }

    a1[22] = 0;
    a1[26] = 0;
    v9 = a1[23];
    if (v9)
    {
      heap_Free(*(*a1 + 8), v9);
    }

    a1[23] = 0;
    a1[27] = 0;
    v10 = a1[29];
    if (v10)
    {
      heap_Free(*(*a1 + 8), v10);
    }

    a1[29] = 0;
    v11 = a1[30];
    if (v11)
    {
      heap_Free(*(*a1 + 8), v11);
    }

    a1[30] = 0;
    v12 = a1[31];
    if (v12)
    {
      heap_Free(*(*a1 + 8), v12);
    }

    a1[31] = 0;
    v13 = a1[32];
    if (v13)
    {
      heap_Free(*(*a1 + 8), v13);
    }

    a1[32] = 0;
    v14 = a1[33];
    if (v14)
    {
      heap_Free(*(*a1 + 8), v14);
    }

    a1[33] = 0;
    v15 = a1[152];
    if (v15)
    {
      heap_Free(*(*a1 + 8), v15);
    }

    a1[152] = 0;
    if (a1[71])
    {
      hlp_UnLoadDTData(a1);
      ssftmap_ObjClose(a1[71]);
    }

    if (a1[275])
    {
      kbsymtab_UnloadData(a1[2], a1[3], a1[4], a1[5], a1 + 275);
    }

    if (a1[279])
    {
      wgram_UnloadData(a1[2], a1[3], a1[4], a1[5], a1 + 279);
    }

    if (a1[280])
    {
      fst_UnloadData(a1[2], a1[3], a1 + 280);
    }

    v16 = a1[276];
    if (v16)
    {
      kblex_FinishLex(a1[2], a1[3], a1[4], a1[5], v16);
    }

    v17 = a1[277];
    if (v17)
    {
      kblex_FinishLex(a1[2], a1[3], a1[4], a1[5], v17);
    }

    v18 = a1[278];
    if (v18)
    {
      kblex_FinishLex(a1[2], a1[3], a1[4], a1[5], v18);
    }

    v19 = a1[6];
    if (v19)
    {
      heap_Free(*(*a1 + 8), v19);
    }

    v20 = a1[282];
    if (v20)
    {
      heap_Free(*(*a1 + 8), v20);
    }

    v21 = a1[283];
    if (v21)
    {
      heap_Free(*(*a1 + 8), v21);
    }

    v22 = a1[285];
    if (v22)
    {
      heap_Free(*(*a1 + 8), v22);
      a1[285] = 0;
    }

    heap_Free(*(*a1 + 8), a1);
    return 0;
  }

  return result;
}