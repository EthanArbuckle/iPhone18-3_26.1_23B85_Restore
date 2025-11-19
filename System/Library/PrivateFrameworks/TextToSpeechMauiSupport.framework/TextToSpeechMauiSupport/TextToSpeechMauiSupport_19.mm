uint64_t mosyntsentpho_TreatSentPho(uint64_t a1, int a2, uint64_t a3, int *a4, int *a5, int *a6, uint64_t *a7, uint64_t **a8)
{
  v19 = 0;
  v20 = 0;
  v18 = 0;
  result = mosyntpal_ALLOCATE(a1, &v18, 0x10u);
  if ((result & 0x80000000) == 0)
  {
    v17 = v18;
    *v18 = a2;
    *(v17 + 1) = a3;
    result = ApplyFSTSeq(a1, v17, 5, a4, a7, &v20);
    if ((result & 0x80000000) == 0)
    {
      result = ApplyFSTSeq(a1, v18, 6, a5, v20, &v19);
      if ((result & 0x80000000) == 0)
      {
        result = mosyntdata_DisposePhonEleList(a1, &v20);
        if ((result & 0x80000000) == 0)
        {
          result = ApplyFSTSeq(a1, v18, 7, a6, v19, a8);
          if ((result & 0x80000000) == 0)
          {
            result = mosyntdata_DisposePhonEleList(a1, &v19);
            if ((result & 0x80000000) == 0)
            {
              if (v18)
              {
                return mosyntpal_DEALLOCATE(a1, &v18);
              }

              else
              {
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t ApplyFSTSeq(uint64_t a1, uint64_t a2, int a3, int *a4, uint64_t *a5, uint64_t **a6)
{
  v15 = a5;
  *a6 = a5;
  result = mosyntdata_CopyPhonList(a1, a6);
  if ((result & 0x80000000) == 0)
  {
    v13 = 0;
    v14 = 0;
    result = mosynttrans_InitTransDesc(a1, *a2, *(a2 + 8), &v13);
    if ((result & 0x80000000) == 0)
    {
      if (*a4 < 1)
      {
        return mosynttrans_FinishTransDesc(a1, &v13);
      }

      else
      {
        v12 = 0;
        while (1)
        {
          v15 = *a6;
          result = mosynttrans_TransducePhonList(a1, v13, a3, *&a4[2 * v12 + 2], v12, v15, 0, 0, a6, &v14);
          if ((result & 0x80000000) != 0)
          {
            break;
          }

          result = mosyntdata_DisposePhonEleList(a1, &v15);
          if ((result & 0x80000000) != 0)
          {
            break;
          }

          if (++v12 >= *a4)
          {
            return mosynttrans_FinishTransDesc(a1, &v13);
          }
        }
      }
    }
  }

  return result;
}

uint64_t mosyntkbwgram_GetFirstEpsTrans(uint64_t a1, int a2, _DWORD *a3, _DWORD *a4, _BYTE *a5, int *a6)
{
  v8 = 0;
  result = wgram_GetFirstEpsTrans(a1, a2, a3, a4, &v8, a6);
  *a5 = v8;
  return result;
}

uint64_t mosyntkbwgram_GetNextEpsTrans(uint64_t a1, int a2, unsigned int *a3, _DWORD *a4, _BYTE *a5, int *a6)
{
  v8 = 0;
  result = wgram_GetNextEpsTrans(a1, a2, a3, a4, &v8, a6);
  *a5 = v8;
  return result;
}

uint64_t kbsymtab_LoadData(_WORD *a1, int a2, _WORD *a3, int a4, uint64_t *a5, int a6)
{
  v66 = *MEMORY[0x277D85DE8];
  v61 = 0;
  inited = InitRsrcFunction(a1, a2, &v61);
  v13 = inited;
  if (!a5)
  {
    return v13;
  }

  if ((inited & 0x80000000) != 0)
  {
    return v13;
  }

  v13 = 2371887114;
  v14 = heap_Calloc(*(v61 + 8), 1, 16624);
  *a5 = v14;
  if (!v14)
  {
    return v13;
  }

  Lex = kblex_loadLex(a1, a2, a3, a4, 3u, (v14 + 8584));
  if ((Lex & 0x80000000) != 0)
  {
    goto LABEL_31;
  }

  Lex = kblex_loadLex(a1, a2, a3, a4, 4u, (*a5 + 8592));
  if ((Lex & 0x80000000) != 0)
  {
    goto LABEL_31;
  }

  Lex = kblex_loadLex(a1, a2, a3, a4, 5u, (*a5 + 8600));
  if ((Lex & 0x80000000) != 0)
  {
    goto LABEL_31;
  }

  Lex = kblex_loadLex(a1, a2, a3, a4, 6u, (*a5 + 8608));
  if ((Lex & 0x80000000) != 0)
  {
    goto LABEL_31;
  }

  v13 = kblex_loadLex(a1, a2, a3, a4, 7u, (*a5 + 8616));
  if ((v13 & 0x80000000) != 0)
  {
LABEL_32:
    freeTabsAsLex(*a5, a1, a2, a3, a4);
    heap_Free(*(v61 + 8), *a5);
    *a5 = 0;
    return v13;
  }

  if (!*a5)
  {
    return v13;
  }

  *(*a5 + 120) = heap_Calloc(*(v61 + 8), 1, 1000);
  *(*a5 + 128) = LhpuCreate(*(v61 + 8));
  v16 = *a5;
  if (!*(*a5 + 120) || !v16[16])
  {
    v13 = 2371887114;
  }

  *v16 = v61;
  *(*a5 + 8) = 1;
  for (i = 1078; i != 2078; ++i)
  {
    *(*a5 + 8 * i) = 0;
  }

  v18 = *a5;
  *(*a5 + 8536) = 0;
  if (a6)
  {
    v60 = a4;
    for (j = 0; j != 100; ++j)
    {
      LOWORD(__s) = j;
      *(v18 + 4 * j + 136) = kbsymtab_KnownGraphId(v18, &__s);
    }

    v20 = 0;
    v21 = (v18 + 536);
    do
    {
      kbsymtab_GraphSymString(v18, v20, &__s, 0x64uLL);
      if (cstdlib_strlen(&__s) >= 8)
      {
        p_s = "";
      }

      else
      {
        p_s = &__s;
      }

      cstdlib_strcpy(v21, p_s);
      ++v20;
      v21 += 8;
    }

    while (v20 != 1000);
    *(v18 + 8536) = 1;
    v18 = *a5;
    a4 = v60;
  }

  *(v18 + 12) = kbsymtab_KnownGraphId(v18, "#");
  v23 = dictSingleLookupInt(v18, 0, "{*}");
  *(v18 + 16) = v23 & ~(v23 >> 31);
  v24 = dictSingleLookupInt(v18, 0, "&");
  *(v18 + 20) = v24 & ~(v24 >> 31);
  v25 = dictSingleLookupInt(v18, 0, "#");
  *(v18 + 24) = v25 & ~(v25 >> 31);
  v26 = dictSingleLookupInt(v18, 0, "{#ACC0}");
  *(v18 + 28) = v26 & ~(v26 >> 31);
  v27 = dictSingleLookupInt(v18, 0, "{#ACC1}");
  *(v18 + 32) = v27 & ~(v27 >> 31);
  v28 = dictSingleLookupInt(v18, 0, "{#ACC2}");
  *(v18 + 36) = v28 & ~(v28 >> 31);
  v29 = dictSingleLookupInt(v18, 0, "{#ACC3}");
  *(v18 + 40) = v29 & ~(v29 >> 31);
  v30 = dictSingleLookupInt(v18, 0, "{#ACC4}");
  *(v18 + 44) = v30 & ~(v30 >> 31);
  v31 = dictSingleLookupInt(v18, 0, ".");
  *(v18 + 48) = v31 & ~(v31 >> 31);
  v32 = dictSingleLookupInt(v18, 0, "'");
  *(v18 + 52) = v32 & ~(v32 >> 31);
  v33 = dictSingleLookupInt(v18, 0, "'2");
  *(v18 + 56) = v33 & ~(v33 >> 31);
  v34 = dictSingleLookupInt(v18, 0, "_");
  *(v18 + 60) = v34 & ~(v34 >> 31);
  v35 = dictSingleLookupInt(v18, 0, "_");
  *(v18 + 64) = v35 & ~(v35 >> 31);
  v36 = dictSingleLookupInt(v18, 0, "*");
  *(v18 + 68) = v36 & ~(v36 >> 31);
  v37 = dictSingleLookupInt(v18, 0, "{#PB-S}");
  *(v18 + 72) = v37 & ~(v37 >> 31);
  v38 = dictSingleLookupInt(v18, 0, "+");
  *(v18 + 76) = v38 & ~(v38 >> 31);
  v39 = dictSingleLookupInt(v18, 0, "{#PB-W}");
  *(v18 + 80) = v39 & ~(v39 >> 31);
  v40 = dictSingleLookupInt(v18, 0, "{#BEG}");
  *(v18 + 84) = v40 & ~(v40 >> 31);
  v41 = dictSingleLookupInt(v18, 0, "{#END}");
  *(v18 + 88) = v41 & ~(v41 >> 31);
  v42 = dictSingleLookupInt(v18, 0, ".");
  *(v18 + 92) = v42 & ~(v42 >> 31);
  v43 = dictSingleLookupInt(v18, 0, "{#WB}");
  *(v18 + 96) = v43 & ~(v43 >> 31);
  v44 = dictSingleLookupInt(v18, 0, "");
  *(v18 + 100) = v44 & ~(v44 >> 31);
  v45 = dictSingleLookupInt(v18, 1, "*");
  *(v18 + 104) = v45 & ~(v45 >> 31);
  v46 = dictSingleLookupInt(v18, 1, "**");
  *(v18 + 108) = v46 & ~(v46 >> 31);
  v47 = dictSingleLookupInt(v18, 1, "%");
  *(v18 + 112) = v47 & ~(v47 >> 31);
  v48 = dictSingleLookupInt(v18, 1, "%%");
  *(v18 + 116) = v48 & ~(v48 >> 31);
  if ((v13 & 0x80000000) != 0)
  {
    goto LABEL_32;
  }

  v49 = *(v61 + 8);
  v50 = *a5;
  *&__s = ssftmap_ElemCopyString;
  *(&__s + 1) = ssftmap_ElemFreeString;
  v63 = ssftmap_ElemCompareKeysString;
  v64 = ssftmap_ElemCopyString;
  v65 = ssftmap_ElemFreeString;
  Lex = ssftmap_ObjOpen(v49, 0, &__s, (v50 + 8544));
  if ((Lex & 0x80000000) != 0 || (v51 = *(v61 + 8), v52 = *a5, *&__s = ssftmap_ElemCopyString, *(&__s + 1) = ssftmap_ElemFreeString, v63 = ssftmap_ElemCompareKeysString, v64 = ssftmap_ElemCopyString, v65 = ssftmap_ElemFreeString, Lex = ssftmap_ObjOpen(v51, 0, &__s, (v52 + 8552)), (Lex & 0x80000000) != 0) || (v53 = *(v61 + 8), v54 = *a5, *&__s = ssftmap_ElemCopyString, *(&__s + 1) = ssftmap_ElemFreeString, v63 = ssftmap_ElemCompareKeysString, v64 = ssftmap_ElemCopyString, v65 = ssftmap_ElemFreeString, Lex = ssftmap_ObjOpen(v53, 0, &__s, (v54 + 8560)), (Lex & 0x80000000) != 0) || (v55 = *(v61 + 8), v56 = *a5, *&__s = ssftmap_ElemCopyString, *(&__s + 1) = ssftmap_ElemFreeString, v63 = ssftmap_ElemCompareKeysString, v64 = ssftmap_ElemCopyString, v65 = ssftmap_ElemFreeString, Lex = ssftmap_ObjOpen(v55, 0, &__s, (v56 + 8568)), (Lex & 0x80000000) != 0))
  {
LABEL_31:
    v13 = Lex;
    goto LABEL_32;
  }

  v57 = *(v61 + 8);
  v58 = *a5;
  *&__s = ssftmap_ElemCopyString;
  *(&__s + 1) = ssftmap_ElemFreeString;
  v63 = ssftmap_ElemCompareKeysString;
  v64 = ssftmap_ElemCopyString;
  v65 = ssftmap_ElemFreeString;
  v13 = ssftmap_ObjOpen(v57, 0, &__s, (v58 + 8576));
  if ((v13 & 0x80000000) != 0)
  {
    goto LABEL_32;
  }

  return v13;
}

uint64_t freeTabsAsLex(uint64_t result, _WORD *a2, int a3, _WORD *a4, int a5)
{
  v9 = result;
  v10 = *(result + 8584);
  if (v10)
  {
    result = kblex_FinishLex(a2, a3, a4, a5, v10);
  }

  v11 = v9[1074];
  if (v11)
  {
    result = kblex_FinishLex(a2, a3, a4, a5, v11);
  }

  v12 = v9[1075];
  if (v12)
  {
    result = kblex_FinishLex(a2, a3, a4, a5, v12);
  }

  v13 = v9[1076];
  if (v13)
  {
    result = kblex_FinishLex(a2, a3, a4, a5, v13);
  }

  v14 = v9[1077];
  if (v14)
  {

    return kblex_FinishLex(a2, a3, a4, a5, v14);
  }

  return result;
}

uint64_t kbsymtab_UnloadData(_WORD *a1, int a2, _WORD *a3, int a4, uint64_t *a5)
{
  v6 = 2371887111;
  if (a5)
  {
    v11 = *a5;
    if (*a5)
    {
      v12 = *(*v11 + 8);
      freeTabsAsLex(v11, a1, a2, a3, a4);
      v13 = *a5;
      if (*(*a5 + 128))
      {
        LhpuRemove(v12, (*a5 + 128));
        v13 = *a5;
      }

      v14 = *(v13 + 120);
      if (v14)
      {
        heap_Free(v12, v14);
        v13 = *a5;
      }

      ssftmap_ObjClose(*(v13 + 8544));
      ssftmap_ObjClose(*(*a5 + 8552));
      ssftmap_ObjClose(*(*a5 + 8560));
      ssftmap_ObjClose(*(*a5 + 8568));
      ssftmap_ObjClose(*(*a5 + 8576));
      for (i = 1078; i != 2078; ++i)
      {
        v16 = *(*a5 + 8 * i);
        if (v16)
        {
          heap_Free(v12, v16);
        }
      }

      heap_Free(v12, *a5);
      return 0;
    }
  }

  return v6;
}

uint64_t kbsymtab_KnownGraphId(uint64_t a1, unsigned __int8 *a2)
{
  if (a1)
  {
    if (*(a1 + 8536))
    {
      v2 = *a2;
      if (v2 <= 0x63 && !a2[1])
      {
        return *(a1 + 4 * v2 + 136);
      }
    }
  }

  v3 = dictSingleLookupInt(a1, 3, a2);
  return v3 & ~(v3 >> 31);
}

char *kbsymtab_GraphSymString(uint64_t a1, signed int a2, char *__dst, unint64_t a4)
{
  *__dst = 0;
  if (!a1 || a4 < 8 || a2 > 999 || !*(a1 + 8536) || (result = cstdlib_strcpy(__dst, (a1 + 8 * a2 + 536)), !*__dst))
  {

    return dictLookupSymStr(a1, 3, a2, __dst, a4);
  }

  return result;
}

uint64_t dictLookupSymStr(void *a1, int a2, unsigned int a3, char *a4, uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v13 = 58;
  result = LH_itoa(a3, v14, 0xAu);
  if (a4 && a5)
  {
    v12 = 0;
    *a4 = 0;
    v11 = -1;
    result = dictLookup(a1, a2, &v13, &v12, &v11);
    if (v11)
    {
      v10 = a5 - 1;
      result = cstdlib_strncpy(a4, *v12, v10);
      a4[v10] = 0;
    }
  }

  return result;
}

uint64_t kbsymtab_AccId(uint64_t a1, int a2)
{
  v2 = a2 & ~(a2 >> 31);
  if (v2 >= 4)
  {
    v2 = 4;
  }

  return *(a1 + 4 * v2 + 28);
}

uint64_t kbsymtab_IntPropValue(void *a1, unsigned int a2, unsigned int a3)
{
  v6 = *MEMORY[0x277D85DE8];
  buildSymFeatPropKey(a1, a2, 0, a3, v5);
  return dictSingleLookupInt(a1, 4, v5);
}

char *buildSymFeatPropKey(void *a1, unsigned int a2, __int16 *a3, unsigned int a4, _BYTE *a5)
{
  *a5 = 58;
  v8 = a5 + 1;
  LH_itoa(a2, a5 + 1, 0xAu);
  v9 = cstdlib_strlen(v8);
  v10 = &v8[v9];
  v11 = 100 - v9;
  if (a3)
  {
    *v10 = 40;
    v12 = v10 + 1;
    if (*a3 >= 1)
    {
      v13 = 0;
      v14 = 99 - v9;
      do
      {
        if (v13 && v14 >= 3)
        {
          *v12++ = 44;
          --v14;
        }

        v15 = a3[v13 + 1];
        if (v15 < 0)
        {
          dictLookupSymStr(a1, 2, -v15, v12, v14 - 2);
          v16 = cstdlib_strlen(v12);
          v12 += v16;
          v14 -= v16;
        }

        ++v13;
      }

      while (v13 < *a3);
    }

    *v12 = 41;
    v17 = cstdlib_strlen(v10);
    v10 += v17;
    v11 -= v17;
  }

  *v10 = 58;
  if (a4 > 9)
  {
    v18 = "";
  }

  else
  {
    v18 = off_279DAC5A0[a4];
  }

  return cstdlib_strncpy(v10 + 1, v18, v11 - 1);
}

uint64_t dictSingleLookupInt(void *a1, int a2, uint64_t a3)
{
  v6 = 0;
  v5 = -1;
  dictLookup(a1, a2, a3, &v6, &v5);
  if (!v5)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *v6;

  return cstdlib_atoi(v3);
}

BOOL kbsymtab_HasIntPropValue(void *a1, unsigned int a2, unsigned int a3, int a4)
{
  v16 = *MEMORY[0x277D85DE8];
  buildSymFeatPropKey(a1, a2, 0, a3, v15);
  v14 = 0;
  v13 = 0;
  dictLookup(a1, 4, v15, &v14, &v13);
  v6 = v13;
  if (!v13)
  {
    return 0;
  }

  v7 = v14;
  v8 = 1;
  do
  {
    v9 = *v7++;
    v10 = cstdlib_atoi(v9);
  }

  while (v10 != a4 && v8++ < v6);
  return v10 == a4;
}

void **kbsymtab_GetFirstAccPatVal(void **result, int a2, int a3, uint64_t a4, void *a5)
{
  if (result)
  {
    if (a4)
    {
      *a4 = result;
      *(a4 + 8) = a2;
      *(a4 + 24) = a3;
      *(a4 + 28) = -1;
      return kbsymtab_GetNextAccPatVal(a4, a5);
    }
  }

  return result;
}

void **kbsymtab_GetNextAccPatVal(void **result, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (result && a2)
  {
    v3 = result;
    v9 = 0;
    *a2 = 0;
    buildSymFeatPropKey(*result, *(v3 + 2), 0, *(v3 + 6), v10);
    v4 = *v3;
    v7 = 0;
    result = dictLookup(v4, 4, v10, &v9, &v7);
    v5 = *(v3 + 7) + 1;
    if (v5 < v7)
    {
      v8 = (*v3)[15];
      v6 = v8;
      *(v3 + 7) = v5;
      cstdlib_strncpy(v6, *(v9 + 8 * v5), 0x3E8uLL);
      return stringToPatternTree(*v3, &v8, a2);
    }
  }

  return result;
}

uint64_t stringToPatternTree(void *a1, unsigned __int8 **a2, uint64_t a3)
{
  *&v26[99] = *MEMORY[0x277D85DE8];
  result = heap_Calloc(*(*a1 + 8), 1, 24);
  *a3 = result;
  if (!result)
  {
    return result;
  }

  *result = 0;
  *(*a3 + 8) = 0;
  *(*a3 + 16) = 0;
  v7 = *a2;
  v8 = **a2;
  if (v8 == 37)
  {
    *a2 = v7 + 1;
    if (v7[1] == 37)
    {
      *a2 = v7 + 2;
      v9 = "%%";
    }

    else
    {
      v9 = "%";
    }

    goto LABEL_14;
  }

  if (v8 == 42)
  {
    *a2 = v7 + 1;
    if (v7[1] == 42)
    {
      *a2 = v7 + 2;
      v9 = "**";
    }

    else
    {
      v9 = "*";
    }

LABEL_14:
    cstdlib_strcpy(&__dst, v9);
    goto LABEL_15;
  }

  v10 = cstdlib_isdigit(v8);
  v11 = **a2;
  if (v10)
  {
    result = cstdlib_isdigit(v11);
    for (i = 0; result; result = cstdlib_isdigit(v13[1]))
    {
      v13 = *a2;
      i = *(*a2)++ + 10 * i - 48;
    }

    *(*a3 + 18) = i;
    goto LABEL_16;
  }

  p_dst = &__dst;
  if (cstdlib_isalpha(v11))
  {
    v20 = *a2 + 1;
    __dst = **a2;
    *a2 = v20;
    p_dst = v26;
    for (j = 1; ; ++j)
    {
      if (cstdlib_isalnum(*v20))
      {
        if (j > 0x62)
        {
          break;
        }

        v22 = *a2;
        v23 = **a2;
      }

      else
      {
        v22 = *a2;
        if (**a2 != 95 || j >= 0x63)
        {
          break;
        }

        v23 = 95;
      }

      *p_dst++ = v23;
      v20 = (v22 + 1);
      *a2 = v20;
    }
  }

  *p_dst = 0;
LABEL_15:
  result = dictSingleLookupInt(a1, 1, &__dst);
  *(*a3 + 16) = result & ~(result >> 31);
LABEL_16:
  v14 = *a2;
  if (**a2 == 40)
  {
    v24 = 0;
    *a2 = (v14 + 1);
    result = stringToPatternTree(a1, a2, &v24);
    v15 = v24;
    *(*a3 + 8) = v24;
    while (1)
    {
      v16 = *a2;
      v17 = **a2;
      if (v17 != 44)
      {
        break;
      }

      *a2 = (v16 + 1);
      result = stringToPatternTree(a1, a2, &v24);
      v18 = v24;
      *v15 = v24;
      v15 = v18;
    }

    if (v17 == 41)
    {
      *a2 = (v16 + 1);
    }
  }

  return result;
}

void *kbsymtab_DisposeAccPat(void *result, void **a2)
{
  if (result)
  {
    if (a2)
    {
      v3 = *a2;
      if (*a2)
      {
        v4 = result;
        do
        {
          v5 = *v3;
          kbsymtab_DisposeAccPat(v4, v3 + 1);
          result = heap_Free(*(*v4 + 8), v3);
          v3 = v5;
        }

        while (v5);
        *a2 = 0;
      }
    }
  }

  return result;
}

void kbsymtab_GetFeatMatchedFirstIntPropVal(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, _DWORD *a6)
{
  if (a6)
  {
    *a6 = -1;
  }

  if (a5)
  {
    *a5 = a1;
    *(a5 + 8) = a2;
    *(a5 + 16) = a3;
    *(a5 + 24) = a4;
    *(a5 + 28) = -1;
    kbsymtab_GetFeatMatchedNextIntPropVal(a1, a5, a6);
  }
}

void kbsymtab_GetFeatMatchedNextIntPropVal(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    *a3 = -1;
  }

  if (a2)
  {
    v11 = 0;
    buildSymFeatPropKey(*a2, *(a2 + 8), *(a2 + 16), *(a2 + 24), v12);
    v5 = *a2;
    v10 = 0;
    v6 = dictLookup(v5, 4, v12, &v11, &v10);
    v7 = *(a2 + 28) + 1;
    if (v7 >= v10)
    {
      if (*(a2 + 16))
      {
        v8 = *(a2 + 8);
        v9 = *(a2 + 24);
        if (a3)
        {
          *a3 = -1;
        }

        *(a2 + 8) = v8;
        *(a2 + 16) = 0;
        *(a2 + 24) = v9;
        *(a2 + 28) = -1;
        kbsymtab_GetFeatMatchedNextIntPropVal(v6, a2, a3);
      }
    }

    else
    {
      *(a2 + 28) = v7;
      if (a3)
      {
        *a3 = cstdlib_atoi(*(v11 + 8 * v7));
      }
    }
  }
}

void *kbsymtab_GetLhPlusPhone(void *result, uint64_t a2, int a3, int *a4, char *a5, int a6, _BYTE *a7)
{
  if (a7)
  {
    *a7 = 0;
    if (a5)
    {
      v9 = result;
      if (!result)
      {
        goto LABEL_20;
      }

      if (!a2)
      {
        goto LABEL_20;
      }

      if (!a4)
      {
        goto LABEL_20;
      }

      v11 = *a4;
      if (v11 >= a3)
      {
        goto LABEL_20;
      }

      v17 = 0;
      v13 = (a2 + v11);
      result = getComplexPhoneLen(result, (a2 + v11));
      v14 = result;
      if (!result)
      {
        result = LhplGetSymbol(v13, v9[16], &v17 + 1, &v17);
        if (result)
        {
          v14 = a6;
        }

        else
        {
          v15 = v17;
          v14 = v17 - HIBYTE(v17) + 1;
          if (v17 > HIBYTE(v17))
          {
            while (v13[v15] != 123)
            {
              LOBYTE(v17) = --v15;
              if (HIBYTE(v17) >= v15)
              {
                v15 = HIBYTE(v17);
                break;
              }
            }
          }

          v16 = &v13[v15];
          if (*v16 == 123)
          {
            result = getComplexPhoneLen(v9, v16);
            if (result)
            {
              v14 = v17 - HIBYTE(v17);
            }
          }
        }
      }

      if (v14 < a6)
      {
        result = cstdlib_strncpy(a5, v13, v14);
        a5[v14] = 0;
        *a4 += v14;
        *a7 = 1;
        return result;
      }

      if (!*a7)
      {
LABEL_20:
        *a5 = 0;
      }
    }
  }

  return result;
}

uint64_t getComplexPhoneLen(void *a1, _BYTE *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*a2 != 123)
  {
    return 0;
  }

  v7[0] = 123;
  for (i = 1; i != 13; ++i)
  {
    v3 = a2[i];
    if (!a2[i])
    {
      break;
    }

    if (v3 == 123)
    {
      break;
    }

    if (v3 == 125)
    {
      break;
    }

    v7[i] = v3;
  }

  v4 = i;
  if (a2[i] == 125)
  {
    *&v7[i] = 125;
    if (dictSingleLookupInt(a1, 0, v7) >= 1)
    {
      return (v4 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t dictLookup(void *a1, int a2, uint64_t a3, void *a4, __int16 *a5)
{
  v30 = *MEMORY[0x277D85DE8];
  v9 = &a1[a2];
  memset(v28, 0, sizeof(v28));
  memset(v27, 0, sizeof(v27));
  v25 = 0;
  v10 = v9[1068];
  v11 = v9[1073];
  *__src = 0;
  v12 = ssftmap_Find(v10, a3, __src) & 0x1FFF;
  if (v12 != 7 && v12 != 20)
  {
    result = cstdlib_strcmp(*__src, "~");
    if (!result)
    {
      v24 = 0;
      goto LABEL_33;
    }

    v23 = a1[1078];
    if (v23 || (v23 = heap_Alloc(*(*a1 + 8), 101)) != 0)
    {
      result = cstdlib_strncpy(v23, *__src, 0x64uLL);
      v23[100] = 0;
      a1[1078] = v23;
      v24 = 1;
      *a4 = a1 + 1078;
LABEL_33:
      *a5 = v24;
      return result;
    }
  }

  v14 = *a5;
  *a5 = 0;
  kblexXX_StartLookup(v11, v28);
  v15 = 0;
  v26 = 1;
  while (*(a3 + v15))
  {
    result = kblexXX_LookupChar(*(a3 + v15++), v28, &v26);
    if (!v26)
    {
      goto LABEL_23;
    }
  }

  kblexXX_GetFirstEntry(v28, &v25, v27);
  if (v25)
  {
    v16 = a1 + 1078;
    do
    {
      if (*a5)
      {
        v17 = v14 == 0;
      }

      else
      {
        v17 = 1;
      }

      if (!v17)
      {
        break;
      }

      kblexXX_GetEntryPhon(0, v27, __src, 100);
      v18 = *a5;
      if (v18 <= 0x3E7)
      {
        v19 = v16[v18];
        if (v19 || (v19 = heap_Alloc(*(*a1 + 8), 101)) != 0)
        {
          cstdlib_strncpy(v19, __src, 0x64uLL);
          v19[100] = 0;
          v20 = *a5;
          v16[v20] = v19;
          *a5 = v20 + 1;
        }
      }

      kblexXX_GetNextEntry(&v25, v27);
    }

    while (v25);
  }

  result = kblexXX_FinishEntrySearch();
LABEL_23:
  *a4 = a1 + 1078;
  if (*a5)
  {
    if (*a5 != 1)
    {
      return result;
    }

    v21 = a1[1078];
  }

  else
  {
    v21 = "~";
  }

  return ssftmap_Insert(v10, a3, v21);
}

uint64_t mosynt_PadWithChar(uint64_t a1, int a2, int __c, unsigned int a4)
{
  v5 = 0;
  do
  {
    LODWORD(v6) = v5;
  }

  while (*(a1 + v5++));
  v6 = v6;
  if (a4 >= a2 - 1)
  {
    v8 = (a2 - 1);
  }

  else
  {
    v8 = a4;
  }

  if (v5 - 1 < v8)
  {
    memset((a1 + v6), __c, v8 - v5 + 1);
    v6 = v8;
  }

  *(a1 + v6) = 0;
  return 0;
}

uint64_t mosynt_RemoveAllSubstrOcc(char *a1, _BYTE *a2)
{
  v2 = *a1;
  if (*a1)
  {
    LODWORD(v3) = 0;
    v4 = 0;
    do
    {
      v5 = *a2;
      if (*a2)
      {
        v6 = 0;
        v7 = v4;
        while (a1[v7] == v5)
        {
          v5 = a2[++v6];
          ++v7;
          if (!a2[v6])
          {
            goto LABEL_10;
          }
        }

        a1[v3] = v2;
        LODWORD(v3) = v3 + 1;
        v6 = 1;
      }

      else
      {
        v6 = 0;
      }

LABEL_10:
      v4 += v6;
      v2 = a1[v4];
    }

    while (v2);
    v3 = v3;
  }

  else
  {
    v3 = 0;
  }

  a1[v3] = 0;
  return 0;
}

uint64_t mosynt_SubstAllSubstrOcc(char *a1, _BYTE *a2, _BYTE *a3, _BYTE *a4, int a5)
{
  if (*a2)
  {
    v5 = *a1;
    if (*a1)
    {
      LODWORD(v6) = 0;
      v7 = 0;
      v8 = a5 - 1;
      do
      {
        v9 = *a2;
        if (*a2)
        {
          v10 = 0;
          v11 = v7;
          while (a1[v11] == v9)
          {
            v9 = a2[++v10];
            ++v11;
            if (!a2[v10])
            {
              goto LABEL_10;
            }
          }

          if (v6 < v8)
          {
            a4[v6] = v5;
            LODWORD(v6) = v6 + 1;
          }

          v10 = 1;
        }

        else
        {
          v10 = 0;
LABEL_10:
          LOBYTE(v12) = *a3;
          if (*a3)
          {
            v13 = 1;
            do
            {
              if (v6 < v8)
              {
                a4[v6] = v12;
                LODWORD(v6) = v6 + 1;
              }

              v12 = a3[v13++];
            }

            while (v12);
          }
        }

        v7 += v10;
        v5 = a1[v7];
      }

      while (v5);
      v6 = v6;
    }

    else
    {
      v6 = 0;
    }

    a4 += v6;
  }

  *a4 = 0;
  return 0;
}

uint64_t mosynt_GetTermSubstr(uint64_t a1, _DWORD *a2, unsigned __int8 a3, _DWORD *a4, char *__dst, int a6)
{
  if (*(a1 + *a2))
  {
    *a4 = 1;
    v6 = *a2;
    v7 = *(a1 + v6);
    if (v7 == a3 || v7 == 0)
    {
      v9 = 0;
    }

    else
    {
      v10 = 0;
      do
      {
        if (v10 < a6 - 1)
        {
          __dst[v10++] = v7;
          LODWORD(v6) = *a2;
        }

        LODWORD(v6) = v6 + 1;
        *a2 = v6;
        v7 = *(a1 + v6);
      }

      while (v7 != a3 && v7 != 0);
      v9 = v10;
    }

    __dst[v9] = 0;
    v12 = *a2;
    if (*(a1 + v12))
    {
      *a2 = v12 + 1;
    }
  }

  else
  {
    *a4 = 0;
    cstdlib_strcpy(__dst, "");
  }

  return 0;
}

uint64_t mosynt_RemoveInitSubstr(char *a1, const char *a2)
{
  if (cstdlib_strstr(a1, a2) == a1)
  {
    v4 = cstdlib_strlen(a2);
    v5 = a1[v4];
    if (v5)
    {
      LOWORD(v6) = 0;
      do
      {
        a1[v6] = v5;
        ++v4;
        LOWORD(v6) = v6 + 1;
        v5 = a1[v4];
      }

      while (v5);
      v6 = v6;
    }

    else
    {
      v6 = 0;
    }

    a1[v6] = 0;
  }

  return 0;
}

uint64_t mosynt_App(uint64_t a1, int a2, unsigned int *a3, _BYTE *a4, _DWORD *a5)
{
  *a5 = 1;
  LOBYTE(v5) = *a4;
  v6 = *a3;
  if (*a4)
  {
    v7 = 1;
    while (v6 < a2 - 1)
    {
      *(a1 + v6) = v5;
      v6 = *a3 + 1;
      *a3 = v6;
      v5 = a4[v7++];
      if (!v5)
      {
        goto LABEL_7;
      }
    }

    *a5 = 0;
    v6 = *a3;
  }

LABEL_7:
  *(a1 + v6) = 0;
  return 0;
}

uint64_t mosynt_NormalizeSpaceFields(_BYTE *a1, uint64_t a2, unsigned int a3)
{
  v14 = 0;
  v5 = *a1;
  if (*a1)
  {
    v13 = 0;
    v7 = a3 - 1;
    while (1)
    {
      result = mosynt_GetSpace(0, a1, &v14 + 1, &v13);
      if ((result & 0x80000000) != 0)
      {
        break;
      }

      v9 = v13;
      LODWORD(v10) = v14;
      if (v13)
      {
        do
        {
          v11 = v10;
          if (v10 < v7)
          {
            v10 = (v10 + 1);
            *(a2 + v11) = 32;
            v11 = v10;
          }

          *(a2 + v11) = 0;
          --v9;
        }

        while (v9);
      }

      LODWORD(v14) = v10;
      v12 = HIDWORD(v14);
      result = mosynt_GetField(a1, &v14 + 1, &v13);
      if ((result & 0x80000000) != 0)
      {
        break;
      }

      result = mosynt_TransferStretchedStringSection(a1, &v12, v13, a2, a3, &v14, v13, 32);
      if ((result & 0x80000000) != 0)
      {
        break;
      }

      if (!a1[HIDWORD(v14)])
      {
        v5 = v14;
        goto LABEL_13;
      }
    }
  }

  else
  {
    result = 0;
LABEL_13:
    if (v5 >= a3)
    {
      v5 = a3 - 1;
    }

    *(a2 + v5) = 0;
  }

  return result;
}

uint64_t mosynt_GetSpace(int a1, uint64_t a2, unsigned int *a3, _DWORD *a4)
{
  *a4 = 0;
  UTF8Char = utf8_getUTF8Char(a2, *a3, __s);
  if ((UTF8Char & 0x80000000) != 0)
  {
    return UTF8Char;
  }

  while (1)
  {
    while (1)
    {
LABEL_2:
      v9 = __s[0] - 32;
      v10 = v9 > 0x3F;
      v11 = (1 << v9) & 0x8000000000002001;
      if (!v10 && v11 != 0)
      {
        goto LABEL_6;
      }

      if (!a1 || __s[0] != 47 && __s[0] != 35)
      {
        break;
      }

      if (*a3 != 1 && *(a2 + *a3 - 1) != 32 || (*(a2 + *a3 + 1) | 0x20) != 0x20)
      {
        return UTF8Char;
      }

LABEL_6:
      ++*a4;
      v13 = *a3 + cstdlib_strlen(__s);
      *a3 = v13;
      UTF8Char = utf8_getUTF8Char(a2, v13, __s);
      if ((UTF8Char & 0x80000000) != 0)
      {
        return UTF8Char;
      }
    }

    if (!cstdlib_strcmp(__s, "◄"))
    {
      break;
    }

    if (!cstdlib_strcmp(__s, "►") || !cstdlib_strcmp(__s, "↕"))
    {
      goto LABEL_6;
    }

    if (cstdlib_strcmp(__s, "▲"))
    {
      return UTF8Char;
    }

    while (__s[0])
    {
      if (!cstdlib_strcmp(__s, "▼"))
      {
        if (__s[0])
        {
          goto LABEL_6;
        }

        goto LABEL_2;
      }

      ++*a4;
      v14 = *a3 + cstdlib_strlen(__s);
      *a3 = v14;
      UTF8Char = utf8_getUTF8Char(a2, v14, __s);
      if ((UTF8Char & 0x80000000) != 0)
      {
        return UTF8Char;
      }
    }
  }

  v15 = 0;
  while (1)
  {
    ++*a4;
    v16 = *a3 + cstdlib_strlen(__s);
    *a3 = v16;
    UTF8Char = utf8_getUTF8Char(a2, v16, __s);
    if ((UTF8Char & 0x80000000) != 0)
    {
      return UTF8Char;
    }

    v10 = v15++ > 1;
    if (v10)
    {
      goto LABEL_2;
    }
  }
}

uint64_t mosynt_GetField(uint64_t a1, unsigned int *a2, _DWORD *a3)
{
  *a3 = 0;
  for (i = utf8_getUTF8Char(a1, *a2, __s1); (i & 0x80000000) == 0; i = utf8_getUTF8Char(a1, v7, __s1))
  {
    if (!__s1[0])
    {
      break;
    }

    if (__s1[0] == 32)
    {
      break;
    }

    if (__s1[0] == 95)
    {
      break;
    }

    if (!cstdlib_strcmp(__s1, "◄"))
    {
      break;
    }

    if (!cstdlib_strcmp(__s1, "►"))
    {
      break;
    }

    if (!cstdlib_strcmp(__s1, "↕"))
    {
      break;
    }

    if (!cstdlib_strcmp(__s1, "▲"))
    {
      break;
    }

    ++*a3;
    v7 = *a2 + cstdlib_strlen(__s1);
    *a2 = v7;
  }

  return i;
}

uint64_t mosynt_TransferStretchedStringSection(uint64_t a1, unsigned int *a2, unsigned int a3, uint64_t a4, int a5, unsigned int *a6, unsigned int a7, int a8)
{
  v10 = a5;
  __s[0] = 0;
  if (a3)
  {
    v26 = a8;
    v14 = 0;
    v15 = 0;
    v16 = a5 - 1;
    while (1)
    {
      UTF8Char = utf8_getUTF8Char(a1, *a2, __s);
      if ((UTF8Char & 0x80000000) != 0)
      {
        break;
      }

      *a2 += cstdlib_strlen(__s);
      if (v14 < a7)
      {
        LOBYTE(v18) = __s[0];
        v19 = *a6;
        if (__s[0])
        {
          v20 = 1;
          do
          {
            if (v19 >= v16)
            {
              break;
            }

            *(a4 + v19) = v18;
            v19 = *a6 + 1;
            *a6 = v19;
            v18 = __s[v20++];
          }

          while (v18);
        }

        UTF8Char = 0;
        *(a4 + v19) = 0;
      }

      v14 = ++v15;
      if (v15 >= a3)
      {
        LOBYTE(a8) = v26;
        v10 = a5;
        if (v26)
        {
          goto LABEL_15;
        }

        goto LABEL_17;
      }
    }
  }

  else
  {
    if (a8)
    {
      v15 = 0;
      UTF8Char = 0;
LABEL_15:
      __s[0] = a8;
      __s[1] = 0;
    }

    else
    {
      cstdlib_strcpy(__s, " ");
      v15 = 0;
      UTF8Char = 0;
    }

LABEL_17:
    if (a7 > v15)
    {
      v21 = __s[0];
      do
      {
        v22 = *a6;
        if (v21)
        {
          v23 = 1;
          LOBYTE(v24) = v21;
          do
          {
            if (v22 >= v10 - 1)
            {
              break;
            }

            *(a4 + v22) = v24;
            v22 = *a6 + 1;
            *a6 = v22;
            v24 = __s[v23++];
          }

          while (v24);
        }

        *(a4 + v22) = 0;
        ++v15;
      }

      while (a7 > v15);
      UTF8Char = 0;
    }

    *(a4 + *a6) = 0;
  }

  return UTF8Char;
}

uint64_t mosynt_ReplaceNonSpaceFields(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, int a6)
{
  result = 0;
  v24 = 0;
  v25 = 0;
  v23 = 0;
  while (*(a1 + HIDWORD(v25)) || *(a2 + v25))
  {
    v22 = HIDWORD(v25);
    result = mosynt_GetSpace(1, a1, &v25 + 1, &v24);
    if ((result & 0x80000000) == 0)
    {
      result = mosynt_GetSpace(1, a2, &v25, &v23);
      if ((result & 0x80000000) == 0)
      {
        result = mosynt_TransferStretchedStringSection(a1, &v22, v24, a3, a4, &v24 + 1, v24, 32);
        if ((result & 0x80000000) == 0)
        {
          v22 = HIDWORD(v25);
          result = mosynt_GetField(a1, &v25 + 1, &v24);
          if ((result & 0x80000000) == 0)
          {
            v13 = v25;
            v21 = v25;
            result = mosynt_GetField(a2, &v25, &v23);
            if ((result & 0x80000000) == 0)
            {
              if (a6 && *(a2 + v13) == 123)
              {
                v14 = v24;
                v15 = &v22;
                v16 = a1;
                v17 = a3;
                v18 = a4;
                v19 = v24;
              }

              else
              {
                v14 = v23;
                v19 = v23 <= v24 ? v24 : v23;
                v15 = &v21;
                v16 = a2;
                v17 = a3;
                v18 = a4;
              }

              result = mosynt_TransferStretchedStringSection(v16, v15, v14, v17, v18, &v24 + 1, v19, a5);
              if ((result & 0x80000000) == 0)
              {
                continue;
              }
            }
          }
        }
      }
    }

    return result;
  }

  v20 = HIDWORD(v24);
  if (HIDWORD(v24) >= a4)
  {
    v20 = a4 - 1;
  }

  *(a3 + v20) = 0;
  return result;
}

uint64_t mosynt_AlignFieldsWithRef(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5)
{
  result = 0;
  v14 = 0;
  v15 = 0;
  v13 = 0;
  while (*(a1 + HIDWORD(v15)) || *(a2 + v14))
  {
    result = mosynt_GetSpace(1, a1, &v15 + 1, &v15);
    if ((result & 0x80000000) == 0)
    {
      v12 = v14;
      result = mosynt_GetSpace(1, a2, &v14, &v14 + 1);
      if ((result & 0x80000000) == 0)
      {
        result = mosynt_TransferStretchedStringSection(a2, &v12, HIDWORD(v14), a3, a4, &v13, v15, 32);
        if ((result & 0x80000000) == 0)
        {
          result = mosynt_GetField(a1, &v15 + 1, &v15);
          if ((result & 0x80000000) == 0)
          {
            v12 = v14;
            result = mosynt_GetField(a2, &v14, &v14 + 1);
            if ((result & 0x80000000) == 0)
            {
              result = mosynt_TransferStretchedStringSection(a2, &v12, HIDWORD(v14), a3, a4, &v13, v15, a5);
              if ((result & 0x80000000) == 0)
              {
                continue;
              }
            }
          }
        }
      }
    }

    return result;
  }

  v11 = v13;
  if (v13 >= a4)
  {
    v11 = a4 - 1;
  }

  *(a3 + v11) = 0;
  return result;
}

uint64_t mosynt_TraceString(uint64_t a1, char *__s, unsigned int a3)
{
  if (a1)
  {
    v5 = *(a1 + 1024);
    if (v5)
    {
      v5 = *(a1 + 1028);
    }

    else
    {
      *(a1 + 1028) = 0;
      *(a1 + 1024) = 1;
      *(a1 + 1032) = 20;
    }
  }

  else
  {
    v5 = 0;
  }

  if (v5 < a3)
  {
    return 0;
  }

  v7 = cstdlib_strlen(__s);

  return mosyntbase_WString(a1, __s, v7);
}

uint64_t mosynt_TraceInt(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a1)
  {
    v3 = *(a1 + 1024);
    if (v3)
    {
      v3 = *(a1 + 1028);
    }

    else
    {
      *(a1 + 1028) = 0;
      *(a1 + 1024) = 1;
      *(a1 + 1032) = 20;
    }
  }

  else
  {
    v3 = 0;
  }

  if (v3 >= a3)
  {
    return mosyntbase_WInt(a1, a2, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t mosynt_NumPOSListToPOSList(uint64_t a1, void *a2, _BYTE *a3, uint64_t a4, int a5)
{
  v17 = 0;
  if (*a3)
  {
    v10 = 0;
    v11 = 0;
    while (1)
    {
      while (1)
      {
        v12 = a3[v10];
        if (!a3[v10] || v12 == 92)
        {
          break;
        }

        v11 = v12 + 10 * v11 - 48;
        ++v10;
      }

      result = mosyntkbsymtab_AppDecomprConsToString(a1, a2, v11, a4, a5, &v17);
      if ((result & 0x80000000) != 0)
      {
        break;
      }

      v14 = v10;
      v15 = v17;
      if (v17 < a5)
      {
        v16 = a3[v10];
        *(a4 + v17) = v16;
        v17 = v15 + 1;
        if (v16)
        {
          v14 = v10 + 1;
        }

        else
        {
          v14 = v10;
        }

        v10 = v14;
      }

      v11 = 0;
      if (!a3[v14])
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
    result = 0;
LABEL_15:
    *(a4 + (a5 - 1)) = 0;
  }

  return result;
}

uint64_t mosynt_ResetMosyntWS(int a1, char *__dst)
{
  if (__dst)
  {
    cstdlib_strcpy(__dst, "");
    cstdlib_strcpy(__dst + 5000, "");
    cstdlib_strcpy(__dst + 15000, "");
    cstdlib_strcpy(__dst + 20000, "");
    *(__dst + 25000) = 0u;
  }

  return 0;
}

uint64_t mosynt_StartWordAnalysis(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a8)
  {
    return 0;
  }

  *a8 = a2;
  *(a8 + 8) = 1;
  *(a8 + 16) = a3;
  *(a8 + 96) = 1;
  *(a8 + 104) = a4;
  *(a8 + 184) = a5;
  *(a8 + 192) = a6;
  result = fst_getFSTSeq(a7, 0, (a8 + 200), (a8 + 208));
  if ((result & 0x80000000) == 0)
  {
    result = fst_getFSTSeq(a7, 1, (a8 + 216), (a8 + 224));
    if ((result & 0x80000000) == 0)
    {
      *(a8 + 1248) = 0;
      *(a8 + 232) = 0;
      *(a8 + 240) = 0;
      *(a8 + 248) = 0;
    }
  }

  return result;
}

uint64_t mosynt_WordAnalysis(uint64_t a1, uint64_t a2, unsigned __int8 *a3, char a4, char a5, char a6, _DWORD *a7, int *a8)
{
  v56 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_7;
  }

  if (!*(a1 + 1024))
  {
    *(a1 + 1028) = 0;
    *(a1 + 1024) = 1;
    *(a1 + 1032) = 20;
LABEL_7:
    v16 = 0;
    *a7 = 0;
    goto LABEL_8;
  }

  v16 = *(a1 + 1028);
  *a7 = 0;
  if (!v16)
  {
LABEL_8:
    v18 = 1;
    goto LABEL_9;
  }

  result = mosyntbase_WriteMessage(a1, "\n\n[WANA] analyzing word '%s'\n", 0, a3, 0, "", 0, "", 0);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v18 = 0;
LABEL_9:
  v48 = 0;
  result = utf8_getUTF8Char(a3, 0, __s);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  if (__s[0])
  {
    v36 = v16;
    v38 = a5;
    v40 = a4;
    v19 = 0;
    v20 = 0;
    while (1)
    {
      v21 = cstdlib_strlen(__s);
      result = utf8_ToLower(__s, 0, v42);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v22 = cstdlib_strlen(v42);
      if (v22 && v19 + v22 + 1 <= 0x1388)
      {
        v23 = v22;
        v24 = v42;
        v25 = v19;
        do
        {
          v26 = *v24++;
          v19 = v25 + 1;
          v55[v25++] = v26;
          --v23;
        }

        while (v23);
      }

      v20 += v21;
      utf8_getUTF8Char(a3, v20, __s);
      if (!__s[0])
      {
        v55[v19] = 0;
        a4 = v40;
        a5 = v38;
        v16 = v36;
        if ((v18 & 1) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_22;
      }
    }
  }

  v55[0] = 0;
  if ((v18 & 1) == 0)
  {
LABEL_21:
    result = mosyntbase_WriteMessage(a1, "[WANA] after lowercase conversion '%s'\n", 0, v55, 0, "", 0, "", 0);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }
  }

LABEL_22:
  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  *__s = 0u;
  result = hlp_CastFSTSeq(*(a2 + 200), *(a2 + 208), __s);
  if ((result & 0x80000000) == 0)
  {
    v41 = *(a2 + 8);
    v27 = v16;
    v28 = *(a2 + 96);
    v29 = *(a2 + 192);
    v37 = *a2;
    v39 = *(a2 + 184);
    v30 = cstdlib_strlen(v55);
    v44 = v51;
    v45 = v52;
    v46 = v53;
    v47 = v54;
    *v42 = *__s;
    v43 = v50;
    result = mosyntwordana_ParseWord(a1, v27, v37, v41, (a2 + 16), v28, (a2 + 104), v39, v42, v29, 0, v55, v30, a4, a5, a6, &v48, (a2 + 232));
    v31 = v48;
    *a7 = v48;
    if ((result & 0x80000000) == 0)
    {
      *a8 = 0;
      v32 = *(a2 + 232);
      if (v31)
      {
        *a8 = -1;
        v33 = *(v32 + 32);
        if (!v33)
        {
          goto LABEL_32;
        }

        v34 = -1;
        do
        {
          v35 = *(v33 + 3);
          if (v34 < 0 || v35 < v34)
          {
            *a8 = v35;
            v34 = v35;
          }

          v33 = *v33;
        }

        while (v33);
      }

      if (!v32)
      {
        *(a2 + 240) = 0;
        return result;
      }

LABEL_32:
      *(a2 + 240) = *(v32 + 32);
    }
  }

  return result;
}

uint64_t hlp_CastFSTSeq(uint64_t a1, int a2, int *a3)
{
  if (a2 < 1)
  {
    result = 0;
LABEL_7:
    *a3 = a2;
  }

  else
  {
    v6 = 0;
    v8 = 0;
    while (1)
    {
      result = fst_getFST(a1, v6, &v8);
      if ((result & 0x80000000) != 0)
      {
        break;
      }

      *&a3[2 * v6++ + 2] = v8;
      if (a2 == v6)
      {
        goto LABEL_7;
      }
    }
  }

  return result;
}

uint64_t mosynt_GetReading(uint64_t a1, void **a2, int a3, _DWORD *a4, char *a5, int a6, char *a7, int a8, _DWORD *a9)
{
  v39 = *MEMORY[0x277D85DE8];
  v36 = 0;
  memset(__b, 0, sizeof(__b));
  cstdlib_memset(__b, 0, 0x58uLL);
  if (a1)
  {
    if (*(a1 + 1024))
    {
      v16 = *(a1 + 1028);
    }

    else
    {
      v16 = 0;
      *(a1 + 1028) = 0;
      *(a1 + 1024) = 1;
      *(a1 + 1032) = 20;
    }
  }

  else
  {
    v16 = 0;
  }

  *a4 = 0;
  cstdlib_strcpy(a5, "");
  cstdlib_strcpy(a7, "");
  *a9 = 0;
  v17 = a2[30];
  if (!v17)
  {
    return 0;
  }

  *a4 = 1;
  v37 = 0;
  v18 = a6 - 1;
  result = mosyntkbsymtab_AppDecomprConsToString(a1, *a2, *(v17 + 8), a5, v18, &v37);
  if ((result & 0x80000000) == 0)
  {
    a5[v18] = 0;
    result = hlp_CastFSTSeq(a2[27], *(a2 + 56), __b);
    if ((result & 0x80000000) == 0)
    {
      result = mosyntwordpho_ReadingToPhonString(a1, v16, *a2, v17, a7, a8);
      if ((result & 0x80000000) == 0)
      {
        if (cstdlib_strcmp(a2 + 248, a7))
        {
          cstdlib_strcpy(a2 + 248, a7);
          result = mosyntwordpho_TreatSingleReadingString(a1, v16, *a2, __b, v17, a7, a8);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          a7[a8 - 1] = 0;
          v20 = (a2 + 156);
          v21 = a7;
        }

        else
        {
          v21 = (a2 + 156);
          v20 = a7;
        }

        cstdlib_strcpy(v20, v21);
        result = mosyntwordpho_TraceReading(a1, v16, *a2, v17, a7, a8);
        if ((result & 0x80000000) == 0)
        {
          *a9 = *(v17 + 12);
          if (a3)
          {
            cstdlib_strcpy(__dst, "◄");
            v22 = cstdlib_strlen(__dst);
            v23 = cstdlib_strlen(a7);
            v24 = v23 + 2 * v22;
            LODWORD(v25) = ~(2 * v22) + a8;
            if (v24 <= a8 - 1)
            {
              v25 = v23;
            }

            else
            {
              v25 = v25;
            }

            if (v25)
            {
              v26 = v22 + v25 + 0xFFFFFFFF;
              v27 = v25;
              do
              {
                a7[v26--] = a7[--v27];
              }

              while (v27);
            }

            if (v22)
            {
              v28 = v22;
              if (v24 >= a8 - 1)
              {
                v24 = a8 - 1;
              }

              v29 = v24 - v22;
              v30 = __dst;
              v31 = a7;
              do
              {
                v32 = *v30++;
                *v31++ = v32;
                a7[v29++] = v32;
                --v28;
              }

              while (v28);
            }

            result = 0;
            a7[(v25 + 2 * v22)] = 0;
          }

          if (!v16 || (HIDWORD(v33) = 0, LODWORD(v33) = 0, *(&v33 + 4) = *(v17 + 12), result = mosyntbase_WriteMessage(a1, "\n[WANA] reading: %s cost %d  %s\n\n", 0, a5, 0, a7, 0, "", v33), (result & 0x80000000) == 0) && (result = mosyntdata_WriteReadingStruct(a1, *a2, 1, v17, 4), (result & 0x80000000) == 0))
          {
            a2[30] = *a2[30];
          }
        }
      }
    }
  }

  return result;
}

uint64_t mosynt_SkipToFirstOptimalReading(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 240);
  if (v2)
  {
    v3 = *(v2 + 3);
    v4 = *(a2 + 240);
    do
    {
      if (*(v4 + 3) < v3)
      {
        v2 = v4;
        v3 = *(v4 + 3);
      }

      v4 = *v4;
    }

    while (v4);
    *(a2 + 240) = v2;
  }

  return 0;
}

uint64_t mosynt_FinishWordAnalysis(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (*(a1 + 1024))
    {
      if (*(a1 + 1028))
      {
        result = mosyntbase_WriteMessage(a1, "\n\n", 0, "", 0, "", 0, "", 0);
        if (!a2 || (result & 0x80000000) != 0)
        {
          return result;
        }

        goto LABEL_9;
      }
    }

    else
    {
      *(a1 + 1028) = 0;
      *(a1 + 1024) = 1;
      *(a1 + 1032) = 20;
    }
  }

  result = 0;
  if (!a2)
  {
    return result;
  }

LABEL_9:
  v5 = *(a2 + 232);
  if (v5)
  {
    while (1)
    {
      v6 = v5;
      v5 = *v5;
      result = mosyntdata_DisposeItem(a1, &v6);
      if ((result & 0x80000000) != 0)
      {
        break;
      }

      if (!v5)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:
    *(a2 + 1248) = 0;
    *(a2 + 232) = 0;
    *(a2 + 240) = 0;
    *(a2 + 248) = 0;
  }

  return result;
}

uint64_t mosynt_LHPlusMapping(uint64_t a1, void *a2, uint64_t a3, char *a4, char *__dst, unsigned int a6)
{
  if (a1)
  {
    if (*(a1 + 1024))
    {
      v12 = *(a1 + 1028);
    }

    else
    {
      v12 = 0;
      *(a1 + 1028) = 0;
      *(a1 + 1024) = 1;
      *(a1 + 1032) = 20;
    }
  }

  else
  {
    v12 = 0;
  }

  v19 = 0;
  v18 = 0;
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  cstdlib_strcpy(__dst, "");
  if (cstdlib_strstr(a4, "[SVOX]") == a4)
  {
    cstdlib_strncpy(__dst, a4, a6 - 1);
    v15 = "[SVOX]";
LABEL_14:
    mosynt_RemoveInitSubstr(__dst, v15);
    if (!v12)
    {
      return 0;
    }

    result = mosyntbase_WriteMessage(a1, "[WANA] before LHPlus mapping: %s\n", 0, a4, 0, "", 0, "", 0);
    if ((result & 0x80000000) == 0)
    {
      return mosyntbase_WriteMessage(a1, "[WANA] after LHPlus mapping: %s\n\n", 0, __dst, 0, "", 0, "", 0);
    }

    return result;
  }

  v13 = cstdlib_strlen("{VOC}");
  if (v13 < a6)
  {
    cstdlib_strcpy(__dst, "{VOC}");
    cstdlib_strncat(__dst, a4, ~v13 + a6);
  }

  result = fst_getFSTSeq(a3, 1, &v19, &v18);
  if ((result & 0x80000000) == 0)
  {
    result = hlp_CastFSTSeq(v19, v18, v16);
    if ((result & 0x80000000) == 0)
    {
      result = mosyntwordpho_LHPlusMapping(a1, v12, a2, v16, __dst, a6);
      if ((result & 0x80000000) == 0)
      {
        __dst[a6 - 1] = 0;
        v15 = "{VOC}";
        goto LABEL_14;
      }
    }
  }

  return result;
}

uint64_t mosynt_StartSentenceAnalysis(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  if (!a1)
  {
    v9 = 0;
    if (a7)
    {
      goto LABEL_6;
    }

    return 0;
  }

  if (!*(a1 + 1024))
  {
    v9 = 0;
    *(a1 + 1028) = 0;
    *(a1 + 1024) = 1;
    *(a1 + 1032) = 20;
    if (a7)
    {
      goto LABEL_6;
    }

    return 0;
  }

  v9 = *(a1 + 1028);
  if (!a7)
  {
    return 0;
  }

LABEL_6:
  v13 = 0;
  *a7 = a5;
  a7[1] = a6;
  result = com_mosynt_GetCfgParamVal(a2, a3, a4, "mosynt_maxvertexedges", "-1", &v13);
  if ((result & 0x80000000) == 0)
  {
    v11 = cstdlib_atoi(v13);
    if (v11 >= 0)
    {
      v12 = v11;
    }

    else
    {
      v12 = 200;
    }

    result = mosyntsentana_CreateAndInitParseDesc(a1, v9, *a7, a7[1], v12, a7 + 2);
    if ((result & 0x80000000) == 0)
    {
      a7[3] = 0;
    }
  }

  return result;
}

void mosynt_InsertTerminals(uint64_t a1, void **a2, signed int a3, unsigned int a4, char *a5, unsigned int a6, int a7, uint64_t a8, unsigned __int8 *a9)
{
  v33 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if (*(a1 + 1024))
    {
      v14 = *(a1 + 1028);
    }

    else
    {
      v14 = 0;
      *(a1 + 1028) = 0;
      *(a1 + 1024) = 1;
      *(a1 + 1032) = 20;
    }
  }

  else
  {
    v14 = 0;
  }

  memset(v32, 0, sizeof(v32));
  v27 = 0;
  v28 = 0;
  v26 = 0;
  if (*a5)
  {
    v15 = a5;
  }

  else
  {
    v15 = "MosyntDummyConsFeat";
  }

  v16 = cstdlib_strlen(v15);
  while ((mosyntkbsymtab_GetConsFeatFromString(a1, *a2, 1, v15, v16, &v27, &v27 + 1, v32) & 0x80000000) == 0)
  {
    if (SHIDWORD(v27) < 1)
    {
      if ((mosyntbase_WriteMessage(a1, "[SANA] error converting cons/feat %s\n", 0, v15, 0, a9, 0, "", 0) & 0x80000000) != 0)
      {
        return;
      }

      goto LABEL_26;
    }

    mosyntdata_NewTermInfo(a1, 0, &v28);
    if (v17 < 0)
    {
      return;
    }

    v18 = v28;
    if (v28)
    {
      *(v28 + 8) = a7;
      *(v18 + 16) = a8;
      *(v18 + 24) = a3;
      *(v18 + 28) = a4 - 2;
      *(v18 + 32) = a9;
      *(v18 + 40) = 0;
      v19 = cstdlib_strlen(a9);
      v20 = v19 - 1;
      if (v19 > 4999)
      {
        v20 = 4998;
      }

      *(v28 + 44) = v20;
      v21 = v20 + 1;
      if (v14)
      {
LABEL_20:
        cstdlib_strncpy(__dst, a9, v21);
        __dst[v21] = 0;
        v26 = 0;
        if ((mosyntkbsymtab_AppConsFeatToString(a1, *a2, HIDWORD(v27), v32, v31, 4999, &v26) & 0x80000000) != 0)
        {
          return;
        }

        cstdlib_strcpy(v30, v31);
        if ((mosyntkbsymtab_ConsFeatToComprConsFeatStr(v30, 5000) & 0x80000000) != 0)
        {
          return;
        }

        *(&v22 + 1) = a6;
        LODWORD(v22) = 0;
        DWORD1(v22) = ~a3 + a4;
        if ((mosyntbase_WriteMessage(a1, "[SANA] reading from pos 0 to pos %d: %s cost %d  %s\n", 0, v30, 0, __dst, 0, "", v22) & 0x80000000) != 0)
        {
          return;
        }

        if (v14 != 1)
        {
          *(&v23 + 1) = a4;
          LODWORD(v23) = 0;
          DWORD1(v23) = a3;
          if ((mosyntbase_WriteMessage(a1, "[SANA] terminal edge from %d to %d for %s %s\n", 0, v31, 0, __dst, 0, "", v23) & 0x80000000) != 0)
          {
            return;
          }
        }
      }
    }

    else
    {
      v21 = 1;
      if (v14)
      {
        goto LABEL_20;
      }
    }

    if ((mosyntsentana_InsertTerminalEdge(a1, a2[2], a3, a4, SHIDWORD(v27), v32, v28, a6) & 0x80000000) != 0)
    {
      return;
    }

LABEL_26:
    if (v15[v27] != 92)
    {
      if (v14)
      {
        mosyntbase_WLn(a1);
      }

      return;
    }

    LODWORD(v27) = v27 + 1;
  }
}

void mosynt_ParseSentence(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (*(a1 + 1024))
    {
      v4 = *(a1 + 1028) != 0;
    }

    else
    {
      v4 = 0;
      *(a1 + 1028) = 0;
      *(a1 + 1024) = 1;
      *(a1 + 1032) = 20;
    }
  }

  else
  {
    v4 = 0;
  }

  if ((mosyntsentana_DoParse(a1, *(a2 + 16)) & 0x80000000) == 0)
  {
    mosyntsentana_GetOptimalTree(a1, *(a2 + 16), (a2 + 24));
    if (v5 >= 0 && v4 && (mosyntbase_WLn(a1) & 0x80000000) == 0 && (mosyntbase_WLn(a1) & 0x80000000) == 0)
    {
      v6 = *(a2 + 16);
      v7 = *(a2 + 24);

      mosyntsentana_DisplayTree(a1, v6, v7);
    }
  }
}

uint64_t mosynt_GetTerminalInfoById(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, char *__dst, int a6)
{
  *a4 = 0;
  cstdlib_strcpy(__dst, "");
  if (!a2)
  {
    return 0;
  }

  result = *(a2 + 24);
  if (!result)
  {
    return result;
  }

  v16 = 0;
  mosynt_GetTerminalNode(result, a3, &v16);
  v13 = v16;
  if (!v16)
  {
    return 0;
  }

  *a4 = 1;
  v15 = 0;
  v14 = a6 - 1;
  result = mosyntkbsymtab_AppConsFeatToString(a1, *a2, *(v13 + 16), (v13 + 24), __dst, v14, &v15);
  if ((result & 0x80000000) == 0)
  {
    result = 0;
    __dst[v14] = 0;
  }

  return result;
}

uint64_t mosynt_GetTerminalNode(uint64_t result, uint64_t a2, uint64_t *a3)
{
  *a3 = 0;
  if (*(result + 60))
  {
    v5 = *(result + 64);
    if (v5)
    {
      if (*(v5 + 8) == a2)
      {
        *a3 = result;
      }
    }
  }

  else
  {
    v6 = *(result + 8);
    if (v6)
    {
      do
      {
        result = mosynt_GetTerminalNode(v6, a2, a3);
        v6 = *v6;
        if (*a3)
        {
          v7 = 1;
        }

        else
        {
          v7 = v6 == 0;
        }
      }

      while (!v7);
    }
  }

  return result;
}

uint64_t mosynt_SyntTreeToString(uint64_t a1, uint64_t a2, char *__dst, uint64_t a4)
{
  cstdlib_strcpy(__dst, "");
  if (!a2)
  {
    return 0;
  }

  v9 = 0;
  return mosynt_SyntTreeToString1(a1, *a2, *(a2 + 24), __dst, a4, &v9);
}

uint64_t mosynt_SyntTreeToString1(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6)
{
  v29 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    return 0;
  }

  v27 = *a6;
  v12 = a5 - 1;
  result = mosyntkbsymtab_AppConsFeatToString(a1, a2, *(a3 + 16), (a3 + 24), a4, a5 - 1, &v27);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  *(a4 + v12) = 0;
  v14 = v27;
  *a6 = v27;
  v15 = (a3 + 8);
  if (*(a3 + 8))
  {
    if (v14 < v12)
    {
      *(a4 + v14) = 91;
      LODWORD(v14) = *a6 + 1;
      *a6 = v14;
    }

    *(a4 + v14) = 0;
    v16 = (a3 + 8);
    while (1)
    {
      v16 = *v16;
      if (!v16)
      {
        break;
      }

      if (v16 != *v15)
      {
        v17 = *a6;
        if (*a6 < v12)
        {
          *(a4 + v17) = 44;
          v17 = *a6 + 1;
          *a6 = v17;
        }

        *(a4 + v17) = 0;
      }

      result = mosynt_SyntTreeToString1(a1, a2, v16, a4, a5, a6);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }
    }

    v25 = *a6;
    if (*a6 >= v12)
    {
      goto LABEL_32;
    }

    v26 = 93;
  }

  else
  {
    if (v14 < v12)
    {
      *(a4 + v14) = 60;
      LODWORD(v14) = *a6 + 1;
      *a6 = v14;
    }

    *(a4 + v14) = 0;
    LH_itoa(*(a3 + 52), v28, 0xAu);
    LOBYTE(v18) = v28[0];
    v19 = *a6;
    if (v28[0])
    {
      v20 = 1;
      do
      {
        if (v19 >= v12)
        {
          break;
        }

        *(a4 + v19) = v18;
        v19 = *a6 + 1;
        *a6 = v19;
        v18 = v28[v20++];
      }

      while (v18);
    }

    *(a4 + v19) = 0;
    v21 = *a6;
    if (*a6 < v12)
    {
      *(a4 + v21) = 44;
      v21 = *a6 + 1;
      *a6 = v21;
    }

    *(a4 + v21) = 0;
    LH_itoa(*(a3 + 56), v28, 0xAu);
    LOBYTE(v22) = v28[0];
    v23 = *a6;
    if (v28[0])
    {
      v24 = 1;
      do
      {
        if (v23 >= v12)
        {
          break;
        }

        *(a4 + v23) = v22;
        v23 = *a6 + 1;
        *a6 = v23;
        v22 = v28[v24++];
      }

      while (v22);
    }

    *(a4 + v23) = 0;
    v25 = *a6;
    if (*a6 >= v12)
    {
      goto LABEL_32;
    }

    v26 = 62;
  }

  *(a4 + v25) = v26;
  v25 = *a6 + 1;
  *a6 = v25;
LABEL_32:
  result = 0;
  *(a4 + v25) = 0;
  return result;
}

uint64_t mosynt_FinishSentenceAnalysis(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (!*(a2 + 24) || (result = mosyntsentana_DisposeTree(a1, *(a2 + 16), a2 + 24), (result & 0x80000000) == 0))
  {

    return mosyntsentana_DisposeParseDesc(a1, (a2 + 16));
  }

  return result;
}

void mosynt_StringToSyntTree(uint64_t a1, void *a2, char *__s, uint64_t *a4)
{
  v12 = 0;
  v11 = 0;
  v8 = cstdlib_strlen(__s);
  mosynt_StringToSyntTree1(a1, a2, __s, (v8 + 1), &v12 + 1, a4, &v12, &v11);
  if ((v9 & 0x80000000) == 0)
  {
    if (__s[SHIDWORD(v12)])
    {
      LODWORD(v10) = 0;
      HIDWORD(v10) = HIDWORD(v12);
      mosyntbase_WriteMessage(a1, "### syntax tree not fully parsed; last position is %d: %s\n", 0, __s, 0, "", 0, "", v10);
    }
  }
}

void mosynt_StringToSyntTree1(uint64_t a1, void *a2, unsigned __int8 *a3, uint64_t a4, signed int *a5, uint64_t *a6, int *a7, _DWORD *a8)
{
  v32 = *MEMORY[0x277D85DE8];
  *a6 = 0;
  if ((mosyntutils_SkipBlanksInString(a3, a4, a5) & 0x80000000) == 0)
  {
    if (a3[*a5])
    {
      v29 = 0;
      v31 = 0;
      v30 = 0uLL;
      v27 = 0;
      v28 = 0;
      v26 = 0;
      v25 = 0;
      if ((mosyntkbsymtab_GetConsFeatFromString(a1, a2, 1, a3, a4, a5, &v29, &v30) & 0x80000000) == 0)
      {
        mosyntdata_NewSyntNode(a1, v29, &v30, a6);
        if ((v16 & 0x80000000) == 0)
        {
          v17 = *a6;
          *(v17 + 60) = 0;
          *v17 = 0;
          *(*a6 + 8) = 0;
          if (a3[*a5] == 91)
          {
            if ((mosyntutils_CheckSkipCharInString(a1, a3, a4, a5, 0x5Bu) & 0x80000000) == 0 && (mosyntdata_StartNodeList(a1, &v28, &v27) & 0x80000000) == 0)
            {
              v18 = a1;
              v19 = a2;
              v20 = a3;
              v21 = a4;
              v22 = a5;
              v23 = a7;
              while ((mosynt_StringToSyntTree1(v18, v19, v20, v21, v22, &v26, v23, a8) & 0x80000000) == 0 && (mosyntdata_AppendNode(a1, &v28, &v27, 1, v26) & 0x80000000) == 0)
              {
                if (a3[*a5] != 44)
                {
                  if ((mosyntutils_CheckSkipCharInString(a1, a3, a4, a5, 0x5Du) & 0x80000000) == 0)
                  {
                    *(*a6 + 8) = v28;
                    v24 = *a6;
                    *(v24 + 52) = *a7;
                    *(v24 + 56) = *a8;
                  }

                  return;
                }

                if ((mosyntutils_CheckSkipCharInString(a1, a3, a4, a5, 0x2Cu) & 0x80000000) != 0)
                {
                  return;
                }

                v23 = &v25;
                v18 = a1;
                v19 = a2;
                v20 = a3;
                v21 = a4;
                v22 = a5;
              }
            }
          }

          else
          {
            *(*a6 + 60) = 1;
            if ((mosyntutils_CheckSkipCharInString(a1, a3, a4, a5, 0x3Cu) & 0x80000000) == 0 && (mosyntutils_GetCardFromString(a1, a3, a4, a5, a7) & 0x80000000) == 0)
            {
              *(*a6 + 52) = *a7;
              if ((mosyntutils_CheckSkipCharInString(a1, a3, a4, a5, 0x2Cu) & 0x80000000) == 0 && (mosyntutils_GetCardFromString(a1, a3, a4, a5, a8) & 0x80000000) == 0)
              {
                *(*a6 + 56) = *a8;
                mosyntutils_CheckSkipCharInString(a1, a3, a4, a5, 0x3Eu);
              }
            }
          }
        }
      }
    }
  }
}

uint64_t mosynt_StartAccentPhrasing(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  if (!a7)
  {
    return 0;
  }

  *a7 = a5;
  if (mosyntkbaccphr_AccPhrType(a6))
  {
    v14 = a6;
  }

  else
  {
    v14 = 0;
  }

  __s = 0;
  *(a7 + 8) = v14;
  result = com_mosynt_GetCfgParamVal(a2, a3, a4, "mosynt_phrpar", "1", &__s);
  if ((result & 0x80000000) == 0)
  {
    *(a7 + 16) = cstdlib_atoi(__s);
    result = com_mosynt_GetCfgParamVal(a2, a3, a4, "mosynt_accphrdefdomain", "DEFAULT", &__s);
    if ((result & 0x80000000) == 0)
    {
      v16 = __s;
      cstdlib_strlen(__s);
      *(a7 + 20) = mosyntkbsymtab_KnownAtomId(a1, a5, v16);
      return mosyntdata_CreateAndInitSentTermData(a1, (a7 + 24));
    }
  }

  return result;
}

double mosynt_InsertAccPhrTermWord(uint64_t a1, uint64_t a2, unsigned int a3, signed int a4, int a5, char *__s)
{
  v15 = 0;
  v16 = 0;
  v12 = *a2;
  v13 = cstdlib_strlen(__s);
  if ((mosyntdata_StringToLexPhonList(a1, v12, __s, v13, &v16, &v15) & 0x80000000) == 0)
  {
    return mosyntdata_InsertSentTermWord(a1, *(a2 + 24), a3, a4, a5, v16);
  }

  return result;
}

void mosynt_InsertAccPhrPunct(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  v7 = mosyntknowl_OrthPunctType(a1, a4);
  if (v7)
  {
    v8 = *(a2 + 24);

    mosyntdata_InsertSentTermPunct(a1, v8, a3, v7);
  }
}

void mosynt_DoAccentPhrasing(uint64_t a1, void **a2, char *a3)
{
  v7 = 0;
  v8 = 0;
  if (a1)
  {
    if (*(a1 + 1024))
    {
      v5 = *(a1 + 1028);
    }

    else
    {
      v5 = 0;
      *(a1 + 1028) = 0;
      *(a1 + 1024) = 1;
      *(a1 + 1032) = 20;
    }
  }

  else
  {
    v5 = 0;
  }

  mosynt_StringToSyntTree(a1, *a2, a3, &v8);
  if ((v6 & 0x80000000) == 0 && (mosyntaccphr_TreatSyntTree(a1, v5, *a2, a2[1], *(a2 + 8), *(a2 + 5), a2[3], v8) & 0x80000000) == 0 && (!v5 || (mosyntdata_GenPhonoRepr(a1, *a2, a2[3], &v7) & 0x80000000) == 0 && (mosyntbase_WLn(a1) & 0x80000000) == 0 && (mosyntbase_WString(a1, "after acc/phr: ", 0) & 0x80000000) == 0 && (mosyntdata_WritePhonList(a1, *a2, v7) & 0x80000000) == 0 && (mosyntbase_WLn(a1) & 0x80000000) == 0 && (mosyntbase_WLn(a1) & 0x80000000) == 0 && (mosyntdata_DisposePhonEleList(a1, &v7) & 0x80000000) == 0))
  {
    if (v8)
    {
      mosyntdata_DisposeSyntTree(a1, &v8);
    }
  }
}

uint64_t mosynt_GetWordProminence(uint64_t a1, uint64_t a2, unsigned int a3, _WORD *a4)
{
  *a4 = 0;
  if (a2 && (v5 = *(a2 + 24)) != 0 && (v6 = mosyntdata_SentTermWordData(a1, v5, a3)) != 0 && (v7 = *(v6 + 16), (v7 & 0xFFFC) == 0))
  {
    v8 = 0x1000200020000uLL >> (16 * (v7 & 3u));
  }

  else
  {
    LOWORD(v8) = 0;
  }

  *a4 = v8;
  return 0;
}

uint64_t mosynt_GetPhraseInfo(uint64_t a1, uint64_t a2, unsigned int a3, _WORD *a4, char *__dst, int a6)
{
  *a4 = 0;
  cstdlib_strcpy(__dst, "");
  if (!a2)
  {
    return 0;
  }

  v12 = *(a2 + 24);
  if (!v12)
  {
    return 0;
  }

  result = mosyntdata_SentTermBoundData(a1, v12, a3);
  if (!result)
  {
    return result;
  }

  v14 = *(result + 8);
  if (v14 < 0)
  {
    return 0;
  }

  *a4 = v14;
  v15 = mosyntkbaccphr_SimplifiedPhraseType(*(result + 12));
  result = mosyntkbaccphr_PhraseTypeToString(v15, __dst, a6);
  if ((result & 0x80000000) == 0)
  {
    result = 0;
    __dst[a6 - 1] = 0;
  }

  return result;
}

uint64_t mosynt_FinishAccentPhrasing(uint64_t a1, uint64_t a2)
{
  if (a2 && (v3 = *(a2 + 24), v2 = (a2 + 24), v3))
  {
    return mosyntdata_DisposeSentTermData(a1, v2);
  }

  else
  {
    return 0;
  }
}

uint64_t mosynt_SentPhono(uint64_t a1, void *a2, uint64_t a3, unsigned __int8 *a4, char *a5, char *a6, int a7)
{
  v47 = 0;
  v48[0] = 0;
  if (!a1)
  {
    v14 = 0;
    goto LABEL_7;
  }

  if (!*(a1 + 1024))
  {
    v14 = 0;
    *(a1 + 1028) = 0;
    v16 = 1;
    *(a1 + 1024) = 1;
    *(a1 + 1032) = 20;
    goto LABEL_9;
  }

  v14 = *(a1 + 1028);
  if (!*(a1 + 1028))
  {
LABEL_7:
    v16 = 1;
    goto LABEL_9;
  }

  result = mosyntbase_WriteMessage(a1, "[SLPH] input string: %s\n", 0, a4, 0, "", 0, "", 0);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v16 = 0;
LABEL_9:
  v45 = 0;
  v46 = 0;
  v43 = 0;
  v44 = 0;
  v42 = 0;
  v41 = 0;
  memset(v39, 0, sizeof(v39));
  v40 = 0;
  memset(v37, 0, sizeof(v37));
  v38 = 0;
  v36 = 0;
  memset(v35, 0, sizeof(v35));
  v17 = cstdlib_strlen(a4);
  v18 = cstdlib_strlen(a5);
  result = mosyntdata_StringToPhonoPhonList(a1, a2, 1, a4, v17, a5, v18, v48);
  if ((result & 0x80000000) == 0)
  {
    if ((v16 & 1) != 0 || (result = mosyntbase_WString(a1, "[SLPH] input phono list: ", 0), (result & 0x80000000) == 0) && (result = mosyntdata_WritePhonList(a1, a2, v48[0]), (result & 0x80000000) == 0) && (result = mosyntbase_WLn(a1), (result & 0x80000000) == 0))
    {
      result = fst_getFSTSeq(a3, 2, &v46, &v43 + 1);
      if ((result & 0x80000000) == 0)
      {
        result = hlp_CastFSTSeq(v46, SHIDWORD(v43), v39);
        if ((result & 0x80000000) == 0)
        {
          result = fst_getFSTSeq(a3, 3, &v45, &v43);
          if ((result & 0x80000000) == 0)
          {
            result = hlp_CastFSTSeq(v45, v43, v37);
            if ((result & 0x80000000) == 0)
            {
              result = fst_getFSTSeq(a3, 4, &v44, &v42);
              if ((result & 0x80000000) == 0)
              {
                result = hlp_CastFSTSeq(v44, v42, v35);
                if ((result & 0x80000000) == 0)
                {
                  v19 = v48[0];
                  if (v48[0])
                  {
                    v20 = 0;
                    v21 = v48[0];
                    do
                    {
                      *(v21 + 4) = v20++;
                      v21 = *v21;
                    }

                    while (v21);
                  }

                  result = mosyntsentpho_TreatSentPho(a1, v14, a2, v39, v37, v35, v19, &v47);
                  if ((result & 0x80000000) == 0)
                  {
                    v22 = v47;
                    v23 = v48[0];
                    v41 = v47;
                    if (v48[0])
                    {
                      while (1)
                      {
                        if (!v22)
                        {
                          goto LABEL_36;
                        }

                        v24 = *(v22 + 4);
                        if (v24 == 0xFFFF || *(v23 + 4) > v24)
                        {
                          v22 = *v22;
                          v41 = v22;
                        }

                        else
                        {
                          if (*(v23 + 20))
                          {
                            v25 = v24 == *(v23 + 4);
                          }

                          else
                          {
                            v25 = 0;
                          }

                          if (v25 && *(v22 + 20) && *(v23 + 6) >= 2u && *(v22 + 6) <= 1u)
                          {
                            v26 = mosyntkbsymtab_KnownPhonId(a1, a2, "*");
                            v27 = v41;
                            *(v41 + 6) = 2;
                            v28 = *v27;
                            *v27 = 0;
                            result = mosyntdata_AddPhonEle(a1, &v47, &v41, 1, v26);
                            if ((result & 0x80000000) != 0)
                            {
                              return result;
                            }

                            *v41 = v28;
                          }

LABEL_36:
                          v23 = *v23;
                          if (!v23)
                          {
                            break;
                          }

                          v22 = v41;
                        }
                      }
                    }

                    if ((v16 & 1) != 0 || (result = mosyntbase_WString(a1, "[SLPH] output phono list: ", 0), (result & 0x80000000) == 0) && (result = mosyntdata_WritePhonList(a1, a2, v47), (result & 0x80000000) == 0) && (result = mosyntbase_WLn(a1), (result & 0x80000000) == 0))
                    {
                      result = mosyntdata_PhonListToString(a1, a2, 1, v47, a6, a7);
                      if ((result & 0x80000000) == 0)
                      {
                        a6[a7 - 1] = 0;
                        v29 = *a6;
                        if (*a6)
                        {
                          v30 = 0;
                          v31 = 0;
                          v32 = a6;
                          do
                          {
                            if (v31 && v29 == 42 && *(v32 - 1) == 39)
                            {
                              *(v32 - 1) = 42;
                              v33 = 39;
                            }

                            else
                            {
                              if (v31 < 2u)
                              {
                                goto LABEL_56;
                              }

                              if (v29 != 42)
                              {
                                goto LABEL_56;
                              }

                              if (*(v32 - 1) != 50)
                              {
                                goto LABEL_56;
                              }

                              v34 = v30 - 2;
                              if (a6[v34] != 39)
                              {
                                goto LABEL_56;
                              }

                              a6[v34] = 42;
                              *(v32 - 1) = 39;
                              v33 = 50;
                            }

                            *v32 = v33;
LABEL_56:
                            v30 = ++v31;
                            v32 = &a6[v31];
                            v29 = *v32;
                          }

                          while (*v32);
                        }

                        if ((v16 & 1) != 0 || (result = mosyntbase_WriteMessage(a1, "[SLPH] output string: %s\n", 0, a6, 0, "", 0, "", 0), (result & 0x80000000) == 0))
                        {
                          result = mosyntdata_DisposePhonEleList(a1, v48);
                          if ((result & 0x80000000) == 0)
                          {
                            return mosyntdata_DisposePhonEleList(a1, &v47);
                          }
                        }
                      }
                    }
                  }
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

uint64_t sgram_CheckIfExists(_WORD *a1, uint64_t a2, _DWORD *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v16 = 0;
  v17 = 0;
  memset(v18, 0, sizeof(v18));
  *a3 = 0;
  inited = InitRsrcFunction(a1, a2, &v17);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = kbaux_BuildBrokerString(v17, "sgram", v18, 0x100uLL);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v7 = sgram_OpenRiffForReading(a1, a2, v18, &v16);
  v14 = v7;
  if ((v7 & 0x80000000) == 0)
  {
    *a3 = 1;
    return sgram_CloseRiff(&v16, v7, v8, v9, v10, v11, v12, v13);
  }

  if ((v7 & 0x1FFF) == 0xD || (v7 & 0x1FFF) == 3)
  {
    return 0;
  }

  return v14;
}

uint64_t sgram_LoadData(_WORD *a1, uint64_t a2, uint64_t *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v17 = 0;
  v18 = 0;
  memset(v19, 0, sizeof(v19));
  inited = InitRsrcFunction(a1, a2, &v18);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v7 = 2371887111;
  if (a3)
  {
    v8 = heap_Calloc(*(v18 + 8), 1, 232);
    *a3 = v8;
    if (!v8)
    {
      return 2371887114;
    }

    inited = kbaux_BuildBrokerString(v18, "sgram", v19, 0x100uLL);
    if ((inited & 0x80000000) == 0)
    {
      inited = sgram_OpenRiffForReading(a1, a2, v19, &v17);
      if ((inited & 0x80000000) == 0)
      {
        v9 = sgram_ReadFromRiff(v17, *a3);
        return sgram_CloseRiff(&v17, v9, v10, v11, v12, v13, v14, v15);
      }
    }

    return inited;
  }

  return v7;
}

uint64_t sgram_UnloadData(_WORD *a1, int a2, uint64_t *a3)
{
  v3 = 2371887111;
  if (a3)
  {
    v8 = 0;
    inited = InitRsrcFunction(a1, a2, &v8);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    else if (*a3)
    {
      v6 = v8;
      v3 = sgram_ReleaseData(*a3);
      heap_Free(*(v6 + 8), *a3);
      *a3 = 0;
    }
  }

  return v3;
}

uint64_t sgram_GetStartCons(_DWORD *a1, _DWORD *a2)
{
  result = 2371887111;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *a2 = *a1;
    }
  }

  return result;
}

BOOL sgram_HasEmptyRules(_BOOL8 result)
{
  if (result)
  {
    return *(result + 40) != 0;
  }

  return result;
}

BOOL sgram_HasSimpleFollowRel(_BOOL8 result)
{
  if (result)
  {
    return *(result + 192) != 0;
  }

  return result;
}

uint64_t sgram_GetFirstRuleSameLast(uint64_t a1, int a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, _DWORD *a6)
{
  result = 2371887111;
  if (a1 && a3 && a4 && a5 && a6)
  {
    v13 = *(a1 + 80);
    *a3 = a1;
    a3[2] = 0;
    for (i = *(*(a1 + 96) + 4 * (a2 % v13)); ; i = *(*(*a3 + 72) + 4 * a3[3] + 32))
    {
      a3[3] = 10 * i;
      getRuleHeadSubCons(a3, a4, a5, a6);
      if (!*a4)
      {
        break;
      }

      if (*a6)
      {
        if (*a6 == a2)
        {
          return 0;
        }
      }

      else
      {
        result = 0;
        if (!a2 || *a5 == a2)
        {
          return result;
        }
      }
    }

    return 0;
  }

  return result;
}

_DWORD *getRuleHeadSubCons(_DWORD *result, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  v4 = result[3];
  if (result[2] == 1)
  {
    if (v4 < *(*result + 32))
    {
      v5 = (*result + 48);
      goto LABEL_6;
    }

LABEL_8:
    v7 = 0;
    *a2 = 0;
    *a3 = 0;
    goto LABEL_9;
  }

  if ((v4 & 0x80000000) != 0)
  {
    goto LABEL_8;
  }

  v5 = (*result + 72);
LABEL_6:
  v6 = *v5;
  if (!v6)
  {
    goto LABEL_8;
  }

  *a2 = *(v6 + 4 * v4 + 4);
  *a3 = *(v6 + 4 * result[3] + 8);
  v7 = *(v6 + 4 * result[3] + 12);
LABEL_9:
  *a4 = v7;
  return result;
}

uint64_t sgram_GetNextRuleSameLast(int a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  result = 2371887111;
  if (a2 && a3 && a4 && a5)
  {
    while (1)
    {
      a2[3] = 10 * *(*(*a2 + 72) + 4 * a2[3] + 32);
      getRuleHeadSubCons(a2, a3, a4, a5);
      if (!*a3)
      {
        break;
      }

      if (*a5)
      {
        if (*a5 == a1)
        {
          return 0;
        }
      }

      else
      {
        result = 0;
        if (!a1 || *a4 == a1)
        {
          return result;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sgram_GetFirstRuleSameFirst(uint64_t a1, int a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, _DWORD *a6)
{
  result = 2371887111;
  if (a1 && a3 && a4 && a5 && a6)
  {
    v13 = *(a1 + 104);
    *a3 = a1;
    a3[2] = 0;
    for (i = *(*(a1 + 120) + 4 * (a2 % v13)); ; i = *(*(*a3 + 72) + 4 * a3[3] + 36))
    {
      a3[3] = 10 * i;
      getRuleHeadSubCons(a3, a4, a5, a6);
      if (!*a4 || *a5 != a2)
      {
        break;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sgram_GetNextRuleSameFirst(int a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  result = 2371887111;
  if (a2 && a3 && a4 && a5)
  {
    do
    {
      a2[3] = 10 * *(*(*a2 + 72) + 4 * a2[3] + 36);
      getRuleHeadSubCons(a2, a3, a4, a5);
    }

    while (*a3 && *a5 != a1);
    return 0;
  }

  return result;
}

uint64_t sgram_GetFirstEmptyRule(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  result = 2371887111;
  if (a1 && a2 && a3 && a4)
  {
    if (a5)
    {
      *a2 = a1;
      *(a2 + 8) = 1;
      getRuleHeadSubCons(a2, a3, a4, a5);
      return 0;
    }
  }

  return result;
}

uint64_t sgram_GetNextEmptyRule(_DWORD *a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  result = 2371887111;
  if (a1 && a2 && a3)
  {
    if (a4)
    {
      a1[3] += 8;
      getRuleHeadSubCons(a1, a2, a3, a4);
      return 0;
    }
  }

  return result;
}

uint64_t sgram_GetRuleFeatLists(uint64_t *a1, _WORD *a2, _WORD *a3, _WORD *a4)
{
  result = 2371887111;
  if (a1 && a2 && a3 && a4)
  {
    v6 = *(a1 + 3);
    if (*(a1 + 2) == 1)
    {
      v7 = *a1;
      if (v6 >= *(v7 + 32))
      {
        goto LABEL_16;
      }

      v8 = (v7 + 48);
    }

    else
    {
      if ((v6 & 0x80000000) != 0)
      {
        goto LABEL_16;
      }

      v7 = *a1;
      v8 = (v7 + 72);
    }

    v9 = *v8;
    if (v9)
    {
      v10 = (v9 + 4 * v6);
      v11 = v10[4];
      if ((v11 & 0x80000000) != 0)
      {
        LOWORD(v13) = 0;
      }

      else
      {
        v12 = *(v7 + 24);
        v13 = *(v12 + 2 * v11);
        if (v13 >= 1)
        {
          v14 = a2 + 1;
          v15 = (v12 + 2 * v11 + 2);
          v16 = v13;
          do
          {
            v17 = *v15++;
            *v14++ = v17;
            --v16;
          }

          while (v16);
        }
      }

      *a2 = v13;
      v19 = v10[5];
      if ((v19 & 0x80000000) != 0)
      {
        LOWORD(v21) = 0;
      }

      else
      {
        v20 = *(v7 + 24);
        v21 = *(v20 + 2 * v19);
        if (v21 >= 1)
        {
          v22 = a3 + 1;
          v23 = (v20 + 2 * v19 + 2);
          v24 = v21;
          do
          {
            v25 = *v23++;
            *v22++ = v25;
            --v24;
          }

          while (v24);
        }
      }

      *a3 = v21;
      v26 = v10[6];
      if ((v26 & 0x80000000) != 0)
      {
        LOWORD(v18) = 0;
      }

      else
      {
        v27 = *(v7 + 24);
        v18 = *(v27 + 2 * v26);
        if (v18 >= 1)
        {
          v28 = a4 + 1;
          v29 = (v27 + 2 * v26 + 2);
          v30 = v18;
          do
          {
            v31 = *v29++;
            *v28++ = v31;
            --v30;
          }

          while (v30);
        }
      }

      goto LABEL_17;
    }

LABEL_16:
    LOWORD(v18) = 0;
    *a2 = 0;
    *a3 = 0;
LABEL_17:
    result = 0;
    *a4 = v18;
  }

  return result;
}

uint64_t sgram_GetRuleVisAndCost(_DWORD *a1, _DWORD *a2, _DWORD *a3)
{
  v3 = 2371887111;
  if (a1 && a2 && a3)
  {
    v4 = a1[3];
    if (a1[2] == 1)
    {
      if (v4 >= *(*a1 + 32))
      {
        goto LABEL_11;
      }

      v5 = (*a1 + 48);
    }

    else
    {
      if ((v4 & 0x80000000) != 0)
      {
        goto LABEL_11;
      }

      v5 = (*a1 + 72);
    }

    v6 = *v5;
    if (v6)
    {
      *a2 = *(v6 + 4 * v4) != 0;
      v7 = *(v6 + 4 * a1[3] + 28);
LABEL_12:
      v3 = 0;
      *a3 = v7;
      return v3;
    }

LABEL_11:
    v7 = 0;
    *a2 = 0;
    goto LABEL_12;
  }

  return v3;
}

BOOL sgram_IsFollowerCons(_BOOL8 result, int a2, int a3)
{
  if (result)
  {
    v3 = (*(result + 224) + 4 * (a3 % *(result + 208)));
    v4 = *v3;
    LODWORD(v3) = v3[1];
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if ((v6 < 0) ^ v5 | (v6 == 0))
    {
      return 0;
    }

    v7 = 2 * v4;
    v8 = *(result + 200);
    v9 = v4 << 33;
    v10 = (v8 + 4 * v7);
    while (1)
    {
      v11 = *v10;
      v10 += 2;
      v12 = v11 == a3;
      if (v11 >= a3)
      {
        break;
      }

      v9 += 0x200000000;
      if (!--v6)
      {
        return 0;
      }
    }

    if (!v12)
    {
      return 0;
    }

    v13 = (*(result + 176) + 4 * (*(v8 + (v9 >> 30) + 4) + *(v8 + (v9 >> 30) + 4) * *(result + 160) + a2 % *(result + 160)));
    LODWORD(v15) = *v13;
    v14 = v13[1];
    v15 = v15;
    if (v15 >= v14)
    {
      return 0;
    }

    else
    {
      v16 = *(result + 152);
      while (1)
      {
        v17 = *(v16 + 4 * v15);
        if (v17 >= a2)
        {
          break;
        }

        result = 0;
        if (v14 <= ++v15)
        {
          return result;
        }
      }

      return v17 == a2;
    }
  }

  return result;
}

uint64_t mosyntdata_StartPhonList(uint64_t a1, void *a2, void *a3)
{
  *a2 = 0;
  *a3 = 0;
  return 0;
}

uint64_t mosyntdata_AddPhonEle(uint64_t a1, void *a2, uint64_t *a3, int a4, __int16 a5)
{
  v13 = 0;
  result = mosyntpal_ALLOCATE(a1, &v13, 0x28u);
  if ((result & 0x80000000) == 0)
  {
    v10 = v13;
    *(v13 + 20) = 0;
    *(v10 + 24) = a5;
    *(v10 + 26) = -1;
    *(v10 + 8) = -1;
    *(v10 + 16) = 0xFFFF;
    if (a4)
    {
      *v10 = 0;
      v11 = *a3;
      v12 = v13;
      if (!*a3)
      {
        v11 = a2;
      }

      *v11 = v13;
      goto LABEL_6;
    }

    *v10 = *a2;
    v12 = v13;
    *a2 = v13;
    if (!*a3)
    {
LABEL_6:
      *a3 = v12;
    }
  }

  return result;
}

uint64_t mosyntdata_AddBound(uint64_t a1, uint64_t *a2, uint64_t *a3, int a4, int a5, __int16 a6, int a7, __int16 a8)
{
  result = mosyntdata_AddPhonEle(a1, a2, a3, a4, 0);
  if ((result & 0x80000000) == 0)
  {
    if (a4)
    {
      v16 = a3;
    }

    else
    {
      v16 = a2;
    }

    v17 = *v16;
    *(v17 + 20) = 1;
    *(v17 + 24) = a5;
    *(v17 + 28) = a6;
    *(v17 + 32) = a7;
    *(v17 + 36) = a8;
  }

  return result;
}

uint64_t mosyntdata_AppendPhonList(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (!*a3 || (a2 = *a3, a5))
  {
    *a2 = a4;
    *a3 = a5;
  }

  return 0;
}

uint64_t mosyntdata_PrependPhonList(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (*a3)
  {
    if (a5)
    {
      *a5 = *a2;
      *a2 = a4;
    }
  }

  else
  {
    *a2 = a4;
    *a3 = a5;
  }

  return 0;
}

void *mosyntdata_LastPhonEle(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  do
  {
    result = a2;
    a2 = *a2;
  }

  while (a2);
  return result;
}

uint64_t mosyntdata_PopPhonEle(uint64_t a1, void **a2, void *a3, void *a4)
{
  if (*a2)
  {
    *a4 = *a2;
    *a2 = **a2;
    a4 = *a4;
  }

  *a4 = 0;
  if (!*a2)
  {
    *a3 = 0;
  }

  return 0;
}

uint64_t mosyntdata_CopyPhonList(uint64_t a1, uint64_t **a2)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = 0;
    v6 = 0;
    v13 = 0;
    while (1)
    {
      result = mosyntpal_ALLOCATE(a1, &v13, 0x28u);
      if ((result & 0x80000000) != 0)
      {
        break;
      }

      v8 = v13;
      v9 = v3[4];
      v10 = *(v3 + 1);
      *v13 = *v3;
      *(v8 + 16) = v10;
      *(v8 + 32) = v9;
      *v8 = 0;
      v11 = v13;
      v12 = v13;
      if (v5)
      {
        *v5 = v13;
        v12 = v6;
      }

      v3 = *v3;
      v5 = v11;
      v6 = v12;
      if (!v3)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
    result = 0;
    v12 = 0;
LABEL_9:
    *a2 = v12;
  }

  return result;
}

uint64_t mosyntdata_DisposePhonEleList(uint64_t a1, void **a2)
{
  v3 = *a2;
  if (*a2)
  {
    while (1)
    {
      v6 = v3;
      v3 = *v3;
      result = mosyntpal_DEALLOCATE(a1, &v6);
      if ((result & 0x80000000) != 0)
      {
        break;
      }

      if (!v3)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
    result = 0;
LABEL_6:
    *a2 = 0;
  }

  return result;
}

uint64_t mosyntdata_WritePhonEle(uint64_t a1, void *a2, uint64_t a3, unsigned int a4, int a5, unsigned __int8 a6, unsigned __int8 a7)
{
  v15 = 0;
  result = mosyntpal_ALLOCATE(a1, &v15, 0x3E8u);
  if ((result & 0x80000000) == 0)
  {
    v16 = 0;
    *v15 = 0;
    result = AppPhonEleString(a1, a2, v15, 1000, &v16, a3, a4, a5, a6, a7);
    if ((result & 0x80000000) == 0)
    {
      result = mosyntbase_WString(a1, v15, 1000);
      if ((result & 0x80000000) == 0)
      {
        return mosyntpal_DEALLOCATE(a1, &v15);
      }
    }
  }

  return result;
}

uint64_t AppPhonEleString(uint64_t a1, void *a2, uint64_t a3, int a4, int *a5, uint64_t a6, unsigned int a7, int a8, unsigned __int8 a9, unsigned __int8 a10)
{
  v36 = *MEMORY[0x277D85DE8];
  v31 = 0;
  v35 = 0;
  memset(v34, 0, sizeof(v34));
  v33 = 0;
  v32 = 0;
  cstdlib_strlen("{VOC}");
  v18 = mosyntkbsymtab_KnownPhonId(a1, a2, "{VOC}");
  if (!*(a6 + 20))
  {
    v22 = *(a6 + 24);
    if (v18 == v22 && (v23 = *(a6 + 26), v23 >= 1))
    {
      LOWORD(v34[0]) = v23;
    }

    else
    {
      if (a8 && *(a6 + 26) >= 1)
      {
        v24 = a1;
        v25 = a2;
        v22 = *(a6 + 26);
      }

      else
      {
        v24 = a1;
        v25 = a2;
      }

      result = mosyntkbsymtab_PhonSymString(v24, v25, v22, v34, 100);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }
    }

    if (a7 == 10 && LOBYTE(v34[0]) == 123 && BYTE1(v34[0]) == 99)
    {
      v26 = BYTE2(v34[0]) - 48;
      if ((BYTE2(v34[0]) - 48) <= 9u)
      {
        if (BYTE3(v34[0]) != 125 || BYTE4(v34[0]))
        {
          if (BYTE3(v34[0]) - 48 > 9 || BYTE4(v34[0]) != 125 || BYTE5(v34[0]))
          {
            return mosyntbase_App(a3, a4, a5, v34, 100, &v31);
          }

          v26 = BYTE3(v34[0]) + 10 * BYTE2(v34[0]) - 16;
        }

        LOWORD(v34[0]) = v26;
      }
    }

    return mosyntbase_App(a3, a4, a5, v34, 100, &v31);
  }

  v19 = *(a6 + 24);
  if (v19 != 3)
  {
    if (v19 != 2)
    {
      if (v19 == 1)
      {
        v20 = mosyntkbsymtab_SyllSepId(a2);
        result = mosyntkbsymtab_PhonSymString(a1, a2, v20, v34, 100);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = mosyntbase_App(a3, a4, a5, v34, 100, &v31);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

LABEL_52:
        if (a7 && a7 != 4)
        {
          goto LABEL_54;
        }

LABEL_59:
        if (*(a6 + 36) <= 0)
        {
          return result;
        }

        goto LABEL_60;
      }

LABEL_51:
      result = 0;
      goto LABEL_52;
    }

    if (!a7)
    {
      v27 = " ";
LABEL_58:
      result = mosyntbase_CApp(a3, a4, a5, v27, 0, &v31);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      goto LABEL_59;
    }

    if (a7 != 1)
    {
      if (a7 == 4)
      {
        v27 = " | ";
        goto LABEL_58;
      }

      if (a7 != 10)
      {
        if (a7 == 5)
        {
          result = mosyntbase_CApp(a3, a4, a5, " {#WB} ", 0, &v31);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }
        }

        else
        {
          result = 0;
        }

LABEL_54:
        v29 = a10 != 0;
        if (a7 != 5 || a10)
        {
          goto LABEL_67;
        }

LABEL_60:
        result = mosyntbase_CApp(a3, a4, a5, "[", 0, &v31);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = mosyntpal_IntToString(*(a6 + 36), 0, v34, 100);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = mosyntbase_App(a3, a4, a5, v34, 100, &v31);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v30 = "]";
        return mosyntbase_CApp(a3, a4, a5, v30, 0, &v31);
      }

      v28 = " ";
      goto LABEL_49;
    }

    goto LABEL_47;
  }

  if (a7 > 5 || ((0x31u >> a7) & 1) == 0)
  {
    if (a7 == 10)
    {
      if (!(a10 | a9))
      {
        if (*(a6 + 28) > 1)
        {
          v28 = " / ";
        }

        else
        {
          v28 = " # ";
        }

LABEL_49:
        result = mosyntbase_CApp(a3, a4, a5, v28, 0, &v31);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        goto LABEL_66;
      }

LABEL_65:
      result = 0;
LABEL_66:
      v29 = a10 != 0;
LABEL_67:
      if (a7 != 10 || v29)
      {
        return result;
      }

      if (*(a6 + 36) && *(a6 + 36) <= 3)
      {
        v30 = "'";
      }

      else
      {
        if (*(a6 + 36) < 4u)
        {
          return result;
        }

        v30 = "'2";
      }

      return mosyntbase_CApp(a3, a4, a5, v30, 0, &v31);
    }

    if (a7 != 1)
    {
      goto LABEL_51;
    }

    if (!*(a6 + 32))
    {
      goto LABEL_65;
    }

LABEL_47:
    if (*a5 >= 1)
    {
      v28 = "|";
      goto LABEL_49;
    }

    goto LABEL_65;
  }

  result = mosyntbase_CApp(a3, a4, a5, " #{", 0, &v31);
  if ((result & 0x80000000) == 0)
  {
    result = mosyntpal_IntToString(*(a6 + 28), 0, v34, 100);
    if ((result & 0x80000000) == 0)
    {
      result = mosyntbase_CApp(a3, a4, a5, v34, 100, &v31);
      if ((result & 0x80000000) == 0)
      {
        result = mosyntbase_CApp(a3, a4, a5, "} ", 0, &v31);
        if ((result & 0x80000000) == 0)
        {
          if (!*(a6 + 32))
          {
            goto LABEL_52;
          }

          result = mosyntkbaccphr_PhraseTypeToString(*(a6 + 32), &v32, 10);
          if ((result & 0x80000000) == 0)
          {
            result = mosyntbase_CApp(a3, a4, a5, "(", 0, &v31);
            if ((result & 0x80000000) == 0)
            {
              result = mosyntbase_App(a3, a4, a5, &v32, 10, &v31);
              if ((result & 0x80000000) == 0)
              {
                result = mosyntbase_CApp(a3, a4, a5, ") ", 0, &v31);
                if ((result & 0x80000000) == 0)
                {
                  goto LABEL_52;
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

uint64_t mosyntdata_WriteFormattedPhonList(uint64_t a1, void *a2, void *a3, unsigned int a4, int a5)
{
  if (!a3)
  {
    return 0;
  }

  v10 = a3;
  do
  {
    result = mosyntdata_WritePhonEle(a1, a2, v10, a4, a5, v10 == a3, *v10 == 0);
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    v10 = *v10;
  }

  while (v10);
  return result;
}

uint64_t mosyntdata_PhonListToString(uint64_t a1, void *a2, int a3, void *a4, _BYTE *a5, int a6)
{
  v14 = 0;
  *a5 = 0;
  if (!a4)
  {
    return 0;
  }

  if (a3)
  {
    v11 = 10;
  }

  else
  {
    v11 = 0;
  }

  v12 = a4;
  do
  {
    result = AppPhonEleString(a1, a2, a5, a6, &v14, v12, v11, 0, v12 == a4, *v12 == 0);
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    v12 = *v12;
  }

  while (v12);
  return result;
}

uint64_t mosyntdata_StringToLexPhonList(uint64_t a1, void *a2, unsigned __int8 *a3, int a4, void *a5, uint64_t *a6)
{
  v14 = 0;
  *a5 = 0;
  *a6 = 0;
  result = mosyntknowl_GetPhoneFromString(a1, a2, a3, a4, &v14, &v14 + 1);
  if ((result & 0x80000000) == 0)
  {
    v13 = WORD2(v14);
    if (SHIDWORD(v14) >= 1)
    {
      do
      {
        result = mosyntdata_AddPhonEle(a1, a5, a6, 1, v13);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        result = mosyntknowl_GetPhoneFromString(a1, a2, a3, a4, &v14, &v14 + 1);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        v13 = WORD2(v14);
      }

      while (SHIDWORD(v14) > 0);
    }
  }

  return result;
}

uint64_t mosyntdata_StringToPhonoPhonList(uint64_t a1, void *a2, int a3, unsigned __int8 *a4, int a5, _BYTE *a6, uint64_t a7, void *a8)
{
  v33 = 0;
  v32 = 0;
  v31 = 0;
  *a8 = 0;
  v35 = 0;
  if (a3)
  {
    PhraseTypeFromString = mosyntdata_AddPhonEle(a1, a8, &v35, 1, 0);
    if ((PhraseTypeFromString & 0x80000000) != 0)
    {
      return PhraseTypeFromString;
    }

    v13 = v35;
    *(v35 + 20) = 1;
    *(v13 + 24) = 3;
    *(v13 + 28) = 0;
    *(v13 + 32) = 0;
    *(v13 + 36) = 0;
  }

  else
  {
    PhraseTypeFromString = 0;
    v13 = 0;
  }

  v14 = 0;
  v15 = 0;
  v34 = 0;
  v16 = *a4;
  v17 = v13;
  while (1)
  {
    if (v16 == 32)
    {
      PhraseTypeFromString = mosyntutils_SkipBlanksInString(a4, a5, &v34);
      if ((PhraseTypeFromString & 0x80000000) != 0)
      {
        return PhraseTypeFromString;
      }

      if (*a8 && v13 != v35)
      {
        PhraseTypeFromString = mosyntdata_AddPhonEle(a1, a8, &v35, 1, 0);
        if ((PhraseTypeFromString & 0x80000000) != 0)
        {
          return PhraseTypeFromString;
        }

        v13 = v35;
        *(v35 + 20) = 1;
        v20 = 2;
LABEL_28:
        *(v13 + 24) = v20;
        *(v13 + 28) = -1;
        *(v13 + 32) = 0;
        *(v13 + 36) = 0;
        goto LABEL_49;
      }

      goto LABEL_49;
    }

    if (v16 == 35)
    {
      if (a3)
      {
        PhraseBoundFromString = mosyntutils_CheckSkipCharInString(a1, a4, a5, &v34, 0x23u);
        if ((PhraseBoundFromString & 0x80000000) != 0)
        {
          return PhraseBoundFromString;
        }

        v19 = 1;
LABEL_16:
        HIDWORD(v32) = v19;
      }

      else
      {
        PhraseBoundFromString = mosyntknowl_GetPhraseBoundFromString(a1, a4, a5, &v34, &v32 + 1);
        if ((PhraseBoundFromString & 0x80000000) != 0)
        {
          return PhraseBoundFromString;
        }

        LOWORD(v19) = WORD2(v32);
        if (!HIDWORD(v32))
        {
          if (v17 && *(v17 + 20) && *(v17 + 24) == 3 && !*(v17 + 32))
          {
            LOWORD(v19) = 0;
            *(v17 + 32) = 2;
            if (!v15)
            {
              goto LABEL_43;
            }

            goto LABEL_42;
          }

          LOWORD(v19) = 0;
LABEL_41:
          if (!v15)
          {
LABEL_43:
            v13 = v35;
            if (v35 && *(v35 + 20) && *(v35 + 24) == 2)
            {
              PhraseTypeFromString = 0;
              v15 = 0;
              *(v35 + 24) = 3;
              *(v13 + 28) = v19;
              v17 = v13;
              *(v13 + 32) = 0;
            }

            else
            {
              PhraseTypeFromString = mosyntdata_AddPhonEle(a1, a8, &v35, 1, 0);
              if ((PhraseTypeFromString & 0x80000000) != 0)
              {
                return PhraseTypeFromString;
              }

              v15 = 0;
              v13 = v35;
              *(v35 + 20) = 1;
              *(v13 + 24) = 3;
              *(v13 + 28) = v19;
              *(v13 + 32) = 0;
              *(v13 + 36) = 0;
              v17 = v13;
            }

            goto LABEL_49;
          }

LABEL_42:
          *(v15 + 36) = 1;
          goto LABEL_43;
        }
      }

      if (v17 && *(v17 + 20) && *(v17 + 24) == 3 && !*(v17 + 32))
      {
        *(v17 + 32) = 1;
        if (!v15)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      }

      goto LABEL_41;
    }

    if (!v16)
    {
      break;
    }

    if (a3 && v16 == 47)
    {
      PhraseBoundFromString = mosyntutils_CheckSkipCharInString(a1, a4, a5, &v34, 0x2Fu);
      if ((PhraseBoundFromString & 0x80000000) != 0)
      {
        return PhraseBoundFromString;
      }

      v19 = 2;
      goto LABEL_16;
    }

    if (v16 == 91)
    {
      if (a3)
      {
LABEL_56:
        PhraseBoundFromString = mosyntutils_CheckSkipCharInString(a1, a4, a5, &v34, 0x27u);
        if ((PhraseBoundFromString & 0x80000000) != 0)
        {
          return PhraseBoundFromString;
        }

        if (*a6 && a6[v14] == 49)
        {
          v21 = 3;
        }

        else
        {
          v21 = 2;
        }

        LODWORD(v32) = v21;
        if (v34 < a5 && a4[v34] == 50)
        {
          PhraseBoundFromString = mosyntutils_CheckSkipCharInString(a1, a4, a5, &v34, 0x32u);
          if ((PhraseBoundFromString & 0x80000000) != 0)
          {
            return PhraseBoundFromString;
          }

          v21 = 4;
          LODWORD(v32) = 4;
        }
      }

      else
      {
        PhraseBoundFromString = mosyntknowl_GetAccentFromString(a1, a4, a5, &v34, &v32);
        if ((PhraseBoundFromString & 0x80000000) != 0)
        {
          return PhraseBoundFromString;
        }

        v21 = v32;
      }

      if (v13 && *(v13 + 20))
      {
        *(v13 + 36) = v21;
      }

      PhraseTypeFromString = 0;
      if (v21 == 2)
      {
        v15 = v13;
      }

      goto LABEL_49;
    }

    if (v16 == 40)
    {
      PhraseTypeFromString = mosyntknowl_GetPhraseTypeFromString(a1, a4, a5, &v34, &v31);
      if ((PhraseTypeFromString & 0x80000000) != 0)
      {
        return PhraseTypeFromString;
      }

      if (v17)
      {
        *(v17 + 32) = v31;
      }
    }

    else
    {
      if (a3 && v16 == 39)
      {
        goto LABEL_56;
      }

      if (a3)
      {
        v22 = v16 == 46;
      }

      else
      {
        v22 = 0;
      }

      v23 = v22;
      if (v16 == 45 || v23)
      {
        if (a3)
        {
          v24 = 46;
        }

        else
        {
          v24 = 45;
        }

        PhraseBoundFromString = mosyntutils_CheckSkipCharInString(a1, a4, a5, &v34, v24);
        if ((PhraseBoundFromString & 0x80000000) != 0)
        {
          return PhraseBoundFromString;
        }

        PhraseTypeFromString = mosyntdata_AddPhonEle(a1, a8, &v35, 1, 0);
        if ((PhraseTypeFromString & 0x80000000) != 0)
        {
          return PhraseTypeFromString;
        }

        v13 = v35;
        v20 = 1;
        *(v35 + 20) = 1;
        goto LABEL_28;
      }

      PhraseTypeFromString = mosyntknowl_GetPhoneFromString(a1, a2, a4, a5, &v34, &v33);
      if ((PhraseTypeFromString & 0x80000000) != 0)
      {
        return PhraseTypeFromString;
      }

      if (v33 <= 0)
      {
        cstdlib_strlen("{VOC}");
        v25 = mosyntkbsymtab_KnownPhonId(a1, a2, "{VOC}");
        v33 = v25;
        if (v25 >= 1)
        {
          PhraseTypeFromString = mosyntdata_AddPhonEle(a1, a8, &v35, 1, v25);
          if ((PhraseTypeFromString & 0x80000000) != 0)
          {
            return PhraseTypeFromString;
          }

          *(v35 + 26) = a4[v14];
        }

        v34 = v14 + 1;
      }

      else
      {
        PhraseTypeFromString = mosyntdata_AddPhonEle(a1, a8, &v35, 1, v33);
        if ((PhraseTypeFromString & 0x80000000) != 0)
        {
          return PhraseTypeFromString;
        }
      }
    }

LABEL_49:
    v16 = 0;
    v14 = v34;
    if (v34 < a5)
    {
      v16 = a4[v34];
    }
  }

  if (a3)
  {
    if (v17 && *(v17 + 20) && *(v17 + 24) == 3 && !*(v17 + 32))
    {
      *(v17 + 32) = 2;
    }

    if (v15)
    {
      *(v15 + 36) = 1;
    }

    PhraseTypeFromString = mosyntdata_AddPhonEle(a1, a8, &v35, 1, 0);
    if ((PhraseTypeFromString & 0x80000000) == 0)
    {
      v27 = v35;
      *(v35 + 20) = 1;
      *(v27 + 24) = 3;
      *(v27 + 28) = 0;
      *(v27 + 32) = 0;
      *(v27 + 36) = 0;
    }
  }

  return PhraseTypeFromString;
}

uint64_t mosyntdata_NewCommand(uint64_t a1, uint64_t *a2)
{
  result = mosyntpal_ALLOCATE(a1, a2, 0x88u);
  if ((result & 0x80000000) == 0)
  {
    **a2 = 0;
    v4 = *a2;
    *(v4 + 20) = 0;
    *(v4 + 12) = 0;
    *(v4 + 36) = 0;
    *(v4 + 28) = 0;
  }

  return result;
}

uint64_t mosyntdata_StartCommandList(uint64_t a1, void *a2, void *a3)
{
  *a2 = 0;
  *a3 = 0;
  return 0;
}

uint64_t mosyntdata_AppendCommandList(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (!*a3 || (a2 = *a3, a5))
  {
    *a2 = a4;
    *a3 = a5;
  }

  return 0;
}

uint64_t mosyntdata_CopyCommandList(uint64_t a1, uint64_t *a2, void *a3, void *a4)
{
  *a3 = 0;
  *a4 = 0;
  if (!a2)
  {
    return 0;
  }

  v6 = a2;
  v18 = 0;
  do
  {
    result = mosyntpal_ALLOCATE(a1, &v18, 0x88u);
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    *v18 = 0;
    v9 = v18;
    *(v18 + 12) = 0;
    *(v9 + 28) = 0;
    *(v9 + 20) = 0;
    *(v9 + 36) = 0;
    *v9 = *v6;
    v10 = v6[16];
    v12 = *(v6 + 6);
    v11 = *(v6 + 7);
    *(v9 + 5) = *(v6 + 5);
    *(v9 + 6) = v12;
    *(v9 + 7) = v11;
    v9[16] = v10;
    v14 = *(v6 + 3);
    v13 = *(v6 + 4);
    v15 = *(v6 + 2);
    *(v9 + 1) = *(v6 + 1);
    *(v9 + 2) = v15;
    *(v9 + 3) = v14;
    *(v9 + 4) = v13;
    *v9 = 0;
    v16 = *a4;
    v17 = v18;
    if (!*a4)
    {
      v16 = a3;
    }

    *v16 = v18;
    *a4 = v17;
    v6 = *v6;
  }

  while (v6);
  return result;
}

void *mosyntdata_LastCommand(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  do
  {
    result = a2;
    a2 = *a2;
  }

  while (a2);
  return result;
}

uint64_t mosyntdata_GetPunctFromCommandList(uint64_t a1, uint64_t *a2, _DWORD *a3, void *a4)
{
  if (a2)
  {
    while (*(a2 + 2))
    {
      a2 = *a2;
      if (!a2)
      {
        goto LABEL_4;
      }
    }

    v4 = *(a2 + 3);
  }

  else
  {
LABEL_4:
    v4 = 0;
  }

  *a3 = v4;
  *a4 = a2;
  return 0;
}

uint64_t mosyntdata_SplitCommandList(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v7 = 0;
  v8 = a2 != 0;
  v9 = a2;
  if (a2 && a2 != a3)
  {
    v9 = a2;
    do
    {
      v7 = v9;
      v9 = *v9;
      v8 = v9 != 0;
      if (v9)
      {
        v10 = v9 == a3;
      }

      else
      {
        v10 = 1;
      }
    }

    while (!v10);
  }

  if (v9)
  {
    v11 = v9;
    do
    {
      v7 = v11;
      v11 = *v11;
    }

    while (v11);
  }

  v12 = !v8;
  *a4 = a2;
  if (v9 != a3)
  {
    v12 = 1;
  }

  if (v12)
  {
    *a5 = v7;
    *a6 = 0;
    v9 = a7;
  }

  else
  {
    *a5 = v9;
    *a6 = *v9;
    *a7 = v7;
  }

  *v9 = 0;
  return 0;
}

uint64_t mosyntdata_DisposeCommandList(uint64_t a1, void **a2)
{
  v3 = *a2;
  if (*a2)
  {
    while (1)
    {
      v6 = v3;
      v3 = *v3;
      result = mosyntpal_DEALLOCATE(a1, &v6);
      if ((result & 0x80000000) != 0)
      {
        break;
      }

      if (!v3)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
    result = 0;
LABEL_6:
    *a2 = 0;
  }

  return result;
}

uint64_t mosyntdata_WriteCommandList(uint64_t a1, uint64_t *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0;
  result = mosyntpal_ALLOCATE(a1, &v9, 0x3E8u);
  if ((result & 0x80000000) == 0)
  {
    v10 = 0;
    *v9 = 0;
    v5 = v9;
    if (a2)
    {
      v11 = 0;
      memset(v12, 0, sizeof(v12));
      v13 = 0;
      while (1)
      {
        result = mosyntbase_CApp(v5, 1000, &v10, "<", 0, &v11);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v6 = *(a2 + 2);
        if (v6 > 2)
        {
          if (v6 == 3)
          {
            v7 = v5;
            v8 = "VOLUME";
            goto LABEL_19;
          }

          if (v6 != 4)
          {
            if (v6 == 5)
            {
              v7 = v5;
              v8 = "PROSDOMAIN";
              goto LABEL_19;
            }

            goto LABEL_16;
          }

          v7 = v5;
          v8 = "SYMBOLICSIL";
        }

        else
        {
          if (!v6)
          {
            v7 = v5;
            v8 = "PUNCT";
            goto LABEL_19;
          }

          if (v6 != 1)
          {
            if (v6 == 2)
            {
              v7 = v5;
              v8 = "PITCH";
              goto LABEL_19;
            }

LABEL_16:
            v7 = v5;
            v8 = "?XXX;";
            goto LABEL_19;
          }

          v7 = v5;
          v8 = "SPEED";
        }

LABEL_19:
        result = mosyntbase_CApp(v7, 1000, &v10, v8, 0, &v11);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = mosyntbase_CApp(v5, 1000, &v10, ";", 0, &v11);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = mosyntpal_IntToString(*(a2 + 3), 0, v12, 100);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = mosyntbase_CApp(v5, 1000, &v10, v12, 100, &v11);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = mosyntbase_CApp(v5, 1000, &v10, ";", 0, &v11);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = mosyntbase_CApp(v5, 1000, &v10, a2 + 36, 100, &v11);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = mosyntbase_CApp(v5, 1000, &v10, ">", 0, &v11);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        a2 = *a2;
        if (!a2)
        {
          v5 = v9;
          break;
        }
      }
    }

    result = mosyntbase_WString(a1, v5, 1000);
    if ((result & 0x80000000) == 0)
    {
      return mosyntpal_DEALLOCATE(a1, &v9);
    }
  }

  return result;
}

uint64_t mosyntdata_GetNilLexItem(uint64_t a1)
{
  result = mosyntkblex_GetNilEntry();
  if ((result & 0x80000000) == 0)
  {
    *(a1 + 24) = 0;
  }

  return result;
}

uint64_t mosyntdata_GetNextLexItem(uint64_t a1, void *a2, __int128 *a3, uint64_t a4, int a5, int *a6, _BYTE *a7, uint64_t a8)
{
  v25 = *MEMORY[0x277D85DE8];
  *a7 = 0;
  NilEntry = mosyntkblex_GetNilEntry(a8);
  if ((NilEntry & 0x80000000) != 0)
  {
    return NilEntry;
  }

  v22 = 0;
  memset(v23, 0, sizeof(v23));
  v24 = 0;
  *(a8 + 24) = 0;
  v17 = (a8 + 24);
  SepPartStr = mosyntbase_GetSepPartStr(a4, a5, a6, 0x5Cu, v23, 200, &v22);
  if ((SepPartStr & 0x80000000) == 0)
  {
    if (!v22)
    {
      *v17 = 0;
      return SepPartStr;
    }

    if (LOBYTE(v23[0]) - 48 > 9)
    {
      SepPartStr = mosyntkbsymtab_ConsFeatToComprConsFeatStr(v23, 200);
      if ((SepPartStr & 0x80000000) != 0)
      {
        return SepPartStr;
      }

      v19 = mosyntkbsymtab_KnownConsId(a1, a2, v23);
      *v17 = v19;
    }

    else
    {
      SepPartStr = mosyntpal_StringToInt(v23, 200, (a8 + 24), &v22);
      if ((SepPartStr & 0x80000000) != 0)
      {
        return SepPartStr;
      }

      v19 = *v17;
    }

    if (v19 >= 1)
    {
      v20 = *a3;
      *(a8 + 16) = *(a3 + 2);
      *a8 = v20;
      *a7 = 1;
    }
  }

  return SepPartStr;
}

uint64_t mosyntdata_SetLexEleRefCounts(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      for (i = v2[2]; i; i = *i)
      {
        *(i + 12) = 0;
      }

      v2 = *v2;
    }

    while (v2);
    do
    {
      v4 = a2[2];
      if (v4)
      {
        while (1)
        {
          v5 = *(v4 + 12);
          if (v5)
          {
            break;
          }

          *(v4 + 12) = 1;
          v4 = *v4;
          if (!v4)
          {
            goto LABEL_11;
          }
        }

        *(v4 + 12) = v5 + 1;
      }

LABEL_11:
      a2 = *a2;
    }

    while (a2);
  }

  return 0;
}

uint64_t mosyntdata_PruneLexEleBranch(uint64_t a1, uint64_t *a2)
{
  result = 0;
  v4 = *a2;
  do
  {
    v5 = v4;
    if (!v4)
    {
      break;
    }

    if (*(v4 + 48) != 1)
    {
      --*(v4 + 48);
      return result;
    }

    v4 = *v4;
    result = mosyntpal_DEALLOCATE(a1, &v5);
  }

  while ((result & 0x80000000) == 0);
  return result;
}

uint64_t mosyntdata_LexEleListToPhonList(uint64_t a1, void *a2, unsigned int a3, uint64_t *a4, uint64_t *a5)
{
  v5 = a5;
  v27 = *MEMORY[0x277D85DE8];
  v21 = 0;
  v22 = 0;
  memset(v26, 0, 512);
  memset(v25, 0, sizeof(v25));
  v20 = 0;
  v18 = 0;
  v19 = 0;
  v24 = 0;
  v23 = 0;
  *a5 = 0;
  if (a4)
  {
    v9 = a4;
    v10 = 0;
    while (1)
    {
      result = mosyntkblex_GetEntryPhon(a1, v9 + 1, v26, 5000);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      m2__cp__str("[SVOX]", &v23, 10);
      result = RemoveInitSubstr(&v23, v26, 5000);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = mosyntdata_StringToLexPhonList(a1, a2, v26, 5000, &v22, &v21);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = mosyntkbsymtab_DecompressCons(a1, a2, *(v9 + 8), &v20, v25);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = mosyntdata_GetAddPhon(a1, a2, v20, v25, 1, &v19, &v18);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v13 = v18;
      v12 = v19;
      v14 = v21;
      if (v21)
      {
        if (v18)
        {
          *v18 = v22;
          v22 = v12;
        }

        v13 = v14;
      }

      else
      {
        v21 = v18;
        v22 = v19;
      }

      result = mosyntdata_GetAddPhon(a1, a2, v20, v25, 0, &v19, &v18);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v15 = v18;
      if (!v13)
      {
        break;
      }

      if (v18)
      {
        goto LABEL_18;
      }

LABEL_19:
      v16 = v22;
      if (!v10)
      {
        v10 = v13;
        goto LABEL_23;
      }

      if (v13)
      {
        *v13 = *v5;
LABEL_23:
        *v5 = v16;
      }

      v9 = *v9;
      if (!v9)
      {
        goto LABEL_27;
      }
    }

    v13 = &v22;
LABEL_18:
    *v13 = v19;
    v21 = v15;
    v13 = v15;
    goto LABEL_19;
  }

  v10 = 0;
LABEL_27:
  result = mosyntkbsymtab_DecompressCons(a1, a2, a3, &v20, v25);
  if ((result & 0x80000000) == 0)
  {
    result = mosyntdata_GetAddPhon(a1, a2, v20, v25, 1, &v19, &v18);
    if ((result & 0x80000000) == 0)
    {
      v17 = v19;
      if (v10)
      {
        if (!v18)
        {
          goto LABEL_34;
        }

        *v18 = *v5;
      }

      else
      {
        v10 = v18;
      }

      *v5 = v17;
LABEL_34:
      result = mosyntdata_GetAddPhon(a1, a2, v20, v25, 0, &v19, &v18);
      if ((result & 0x80000000) == 0)
      {
        if (v10 && (v5 = v10, !v18))
        {
          return 0;
        }

        else
        {
          result = 0;
          *v5 = v19;
        }
      }
    }
  }

  return result;
}

uint64_t RemoveInitSubstr(uint64_t a1, uint64_t a2, int a3)
{
  v9 = 0;
  v8 = 0;
  result = mosyntbase_FindSubstring(a1, 10, a2, a3, 0, &v9);
  if ((result & 0x80000000) == 0 && !v9)
  {
    v7 = mosyntbase_Length(a1, 10);
    return mosyntbase_RemoveSubstring(0, v7, a2, a3, &v8);
  }

  return result;
}

uint64_t mosyntdata_GetAddPhon(uint64_t a1, uint64_t a2, int a3, __int16 *a4, int a5, void *a6, uint64_t *a7)
{
  v14 = 0;
  v12[0] = 0;
  v12[1] = 0;
  v13 = 0;
  memset(v11, 0, sizeof(v11));
  *a6 = 0;
  *a7 = 0;
  for (result = GetFirstAddPhon(a1, a2, a5, a3, a4, v12, v11, &v14); (result & 0x80000000) == 0; result = mosyntkbsymtab_GetFeatMatchedNextIntPropVal(v12, v11, &v14))
  {
    if (v14 < 0)
    {
      break;
    }

    result = mosyntdata_AddPhonEle(a1, a6, a7, 1, v14);
    if ((result & 0x80000000) != 0)
    {
      break;
    }
  }

  return result;
}

uint64_t mosyntdata_LexEleListToPhonString(uint64_t a1, void *a2, unsigned int a3, void *a4, uint64_t a5, int a6)
{
  v25 = *MEMORY[0x277D85DE8];
  memset(v24, 0, 512);
  memset(v23, 0, sizeof(v23));
  memset(v22, 0, sizeof(v22));
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v17 = 0;
  v18 = 0;
  result = mosyntkbsymtab_DecompressCons(a1, a2, a3, &v19, v22);
  if ((result & 0x80000000) == 0)
  {
    result = AppAddPhonString(a1, a2, v19, v22, 1, a5, a6, &v18);
    if ((result & 0x80000000) == 0)
    {
      if (a4)
      {
        v12 = 0;
        do
        {
          v13 = v12;
          v12 = a4;
          a4 = *a4;
          *v12 = v13;
        }

        while (a4);
        v14 = v12;
        while (1)
        {
          result = mosyntkbsymtab_DecompressCons(a1, a2, *(v14 + 8), &v19 + 1, v23);
          if ((result & 0x80000000) != 0)
          {
            break;
          }

          result = AppAddPhonString(a1, a2, SHIDWORD(v19), v23, 1, a5, a6, &v18);
          if ((result & 0x80000000) != 0)
          {
            break;
          }

          result = mosyntkblex_GetEntryPhon(a1, v14 + 1, v24, 1000);
          if ((result & 0x80000000) != 0)
          {
            break;
          }

          m2__cp__str("[SVOX]", &v20, 10);
          result = RemoveInitSubstr(&v20, v24, 1000);
          if ((result & 0x80000000) != 0)
          {
            break;
          }

          result = mosyntbase_App(a5, a6, &v18, v24, 1000, &v17);
          if ((result & 0x80000000) != 0)
          {
            break;
          }

          result = AppAddPhonString(a1, a2, SHIDWORD(v19), v23, 0, a5, a6, &v18);
          if ((result & 0x80000000) != 0)
          {
            break;
          }

          v14 = *v14;
          if (!v14)
          {
            v15 = 0;
            do
            {
              v16 = v12;
              v12 = *v12;
              *v16 = v15;
              v15 = v16;
            }

            while (v12);
            return AppAddPhonString(a1, a2, v19, v22, 0, a5, a6, &v18);
          }
        }
      }

      else
      {
        return AppAddPhonString(a1, a2, v19, v22, 0, a5, a6, &v18);
      }
    }
  }

  return result;
}

uint64_t AppAddPhonString(uint64_t a1, void *a2, int a3, __int16 *a4, int a5, uint64_t a6, int a7, int *a8)
{
  v20 = *MEMORY[0x277D85DE8];
  v16[1] = 0;
  v17 = 0;
  v16[0] = 0;
  memset(v15, 0, sizeof(v15));
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  v14 = 0;
  for (result = GetFirstAddPhon(a1, a2, a5, a3, a4, v16, v15, &v17 + 1); (result & 0x80000000) == 0; result = mosyntkbsymtab_GetFeatMatchedNextIntPropVal(v16, v15, &v17 + 1))
  {
    if (v17 < 0)
    {
      break;
    }

    result = mosyntkbsymtab_PhonSymString(a1, a2, HIDWORD(v17), v18, 100);
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    result = mosyntbase_App(a6, a7, a8, v18, 100, &v14);
    if ((result & 0x80000000) != 0)
    {
      break;
    }
  }

  return result;
}

uint64_t mosyntdata_WriteReadingList(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    return 0;
  }

  do
  {
    v8 = *(a3 + 4);
    v7 = *(a3 + 8);
    v9 = *(a3 + 16);
    result = mosyntknowl_WriteTraceHeader(a1, 1u);
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    result = mosyntbase_WString(a1, "reading from pos ", 0);
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    result = mosyntbase_WInt(a1, v8, 0);
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    result = mosyntbase_WString(a1, " to pos ", 0);
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    result = mosyntbase_WInt(a1, v7, 0);
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    result = mosyntbase_WString(a1, ": ", 0);
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    result = mosyntkbsymtab_WriteCons(a1, a2, *(v9 + 8));
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    result = mosyntbase_WString(a1, " cost ", 0);
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    result = mosyntbase_WInt(a1, *(v9 + 12), 0);
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    result = mosyntbase_WString(a1, "  ", 0);
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    result = WriteLexEleList(a1, *(v9 + 16));
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    result = mosyntbase_WLn(a1);
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    v3 = *v3;
  }

  while (v3);
  return result;
}

double mosyntdata_NewTermInfo(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if ((mosyntpal_ALLOCATE(a1, a3, 0x30u) & 0x80000000) == 0)
  {
    **a3 = a2;
    v6 = *a3;
    *(v6 + 2) = -1;
    v6[2] = 0;
    v7 = *a3;
    result = NAN;
    v7[3] = 0xFFFFFFFF00000000;
    v7[4] = 0;
    *(*a3 + 40) = 0xFFFFFFFF00000000;
  }

  return result;
}

uint64_t mosyntdata_DisposeTermInfo(uint64_t a1, uint64_t *a2)
{
  if (!*a2)
  {
    return 0;
  }

  v4 = **a2;
  if (!v4 || (result = mosyntdata_PruneLexEleBranch(a1, (v4 + 16)), (result & 0x80000000) == 0) && (result = mosyntpal_DEALLOCATE(a1, *a2), (result & 0x80000000) == 0))
  {

    return mosyntpal_DEALLOCATE(a1, a2);
  }

  return result;
}

double mosyntdata_CopyTermInfo(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (!a2)
  {
    *a3 = 0;
    return result;
  }

  if ((mosyntpal_ALLOCATE(a1, a3, 0x30u) & 0x80000000) != 0)
  {
    return result;
  }

  v7 = *a2;
  v8 = *a3;
  **a3 = 0;
  if (!v7)
  {
    goto LABEL_16;
  }

  v18 = 0;
  v9 = *(v7 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = 0;
    while ((mosyntpal_ALLOCATE(a1, &v18, 0x38u) & 0x80000000) == 0)
    {
      *v18 = 0;
      v12 = v18;
      v13 = v18;
      if (v10)
      {
        *v10 = v18;
        v13 = v11;
      }

      v14 = *(v9 + 1);
      *(v12 + 3) = *(v9 + 3);
      *(v12 + 1) = v14;
      *(v12 + 20) = *(v9 + 20);
      *(v12 + 12) = 1;
      v9 = *v9;
      v10 = v12;
      v11 = v13;
      if (!v9)
      {
        goto LABEL_14;
      }
    }

    return result;
  }

  v13 = 0;
LABEL_14:
  if ((mosyntpal_ALLOCATE(a1, v8, 0x18u) & 0x80000000) == 0)
  {
    **v8 = 0;
    v15 = *v8;
    v15[1] = *(v7 + 8);
    v15[2] = v13;
LABEL_16:
    v16 = *a3;
    *(v16 + 8) = *(a2 + 2);
    *(v16 + 16) = a2[2];
    v17 = *a3;
    *(v17 + 24) = a2[3];
    *(v17 + 32) = a2[4];
    result = *(a2 + 5);
    *(*a3 + 40) = result;
  }

  return result;
}

uint64_t mosyntdata_StartNodeList(uint64_t a1, void *a2, void *a3)
{
  *a2 = 0;
  *a3 = 0;
  return 0;
}

__n128 mosyntdata_NewSyntNode(uint64_t a1, __int16 a2, __n128 *a3, uint64_t *a4)
{
  if ((mosyntpal_ALLOCATE(a1, a4, 0x48u) & 0x80000000) == 0)
  {
    **a4 = 0;
    *(*a4 + 8) = 0;
    v8 = *a4;
    *(v8 + 16) = a2;
    result = *a3;
    *(v8 + 40) = a3[1].n128_u64[0];
    *(v8 + 24) = result;
    v9 = *a4;
    v9[8] = 0;
    *(v9 + 53) = 0;
    v9[6] = 0;
  }

  return result;
}

uint64_t mosyntdata_AppendNode(uint64_t a1, void *a2, void **a3, int a4, void *a5)
{
  if (a5)
  {
    if (a4)
    {
      v5 = *a3;
      if (!*a3)
      {
        v5 = a2;
      }

      *v5 = a5;
    }

    else
    {
      *a5 = *a2;
      *a2 = a5;
      if (*a3)
      {
        return 0;
      }
    }

    *a3 = a5;
  }

  return 0;
}

void mosyntdata_AddNode(uint64_t a1, void *a2, void **a3, int a4, __int16 a5, __n128 *a6)
{
  v12 = 0;
  mosyntdata_NewSyntNode(a1, a5, a6, &v12);
  if ((v9 & 0x80000000) == 0)
  {
    v10 = v12;
    if (v12)
    {
      if (a4)
      {
        v11 = *a3;
        if (!*a3)
        {
          v11 = a2;
        }

        *v11 = v12;
        goto LABEL_7;
      }

      *v12 = *a2;
      *a2 = v10;
      if (!*a3)
      {
LABEL_7:
        *a3 = v10;
      }
    }
  }
}

uint64_t DisposeSyntTreeList(uint64_t a1, void **a2)
{
  v3 = *a2;
  if (*a2)
  {
    v9 = 0;
    while (1)
    {
      result = DisposeSyntTreeList(a1, v3 + 1);
      if ((result & 0x80000000) != 0)
      {
        break;
      }

      v9 = v3;
      v6 = *v3;
      v8 = v3[8];
      v7 = v3 + 8;
      if (v8)
      {
        result = mosyntdata_DisposeTermInfo(a1, v7);
        if ((result & 0x80000000) != 0)
        {
          break;
        }
      }

      result = mosyntpal_DEALLOCATE(a1, &v9);
      if ((result & 0x80000000) != 0)
      {
        break;
      }

      v3 = v6;
      if (!v6)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    result = 0;
LABEL_10:
    *a2 = 0;
  }

  return result;
}

void mosyntdata_CopySyntTree(uint64_t a1, _OWORD **a2)
{
  if (*a2)
  {
    v12 = 0;
    if ((mosyntpal_ALLOCATE(a1, &v12, 0x48u) & 0x80000000) == 0)
    {
      v4 = v12;
      v5 = *a2;
      *v12 = **a2;
      v6 = *(v5 + 8);
      v7 = v5[3];
      v8 = v5[1];
      v4[2] = v5[2];
      v4[3] = v7;
      v4[1] = v8;
      *(v4 + 8) = v6;
      v9 = mosyntdata_CopyTermInfo(a1, *(*a2 + 8), v4 + 8);
      if ((v10 & 0x80000000) == 0 && (mosyntdata_CopySyntTree(a1, v12, v9) & 0x80000000) == 0 && (mosyntdata_CopySyntTree(a1, v12 + 8, v11) & 0x80000000) == 0)
      {
        *a2 = v12;
      }
    }
  }
}

uint64_t mosyntdata_WriteReadingStruct(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5)
{
  v15 = *MEMORY[0x277D85DE8];
  if (!a4)
  {
    return 0;
  }

  result = mosyntknowl_WriteTraceHeader(a1, a3);
  if ((result & 0x80000000) == 0)
  {
    if (a5 < 1)
    {
LABEL_7:
      v14 = 0;
      memset(v13, 0, sizeof(v13));
      v12 = 0;
      result = mosyntkbsymtab_AppDecomprConsToString(a1, a2, *(a4 + 8), v13, 100, &v12);
      if ((result & 0x80000000) == 0)
      {
        result = mosyntbase_WString(a1, v13, 100);
        if ((result & 0x80000000) == 0)
        {
          result = mosyntbase_WString(a1, "  ", 0);
          if ((result & 0x80000000) == 0)
          {
            result = mosyntbase_WInt(a1, *(a4 + 12), 0);
            if ((result & 0x80000000) == 0)
            {
              result = mosyntbase_WLn(a1);
              if ((result & 0x80000000) == 0)
              {
                result = mosyntbase_WLn(a1);
                if ((result & 0x80000000) == 0)
                {
                  return WriteLexConsList(a1, a2, a3, *(a4 + 16), a5 + 2);
                }
              }
            }
          }
        }
      }
    }

    else
    {
      v11 = a5;
      while (1)
      {
        result = mosyntbase_WString(a1, " ", 0);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        if (!--v11)
        {
          goto LABEL_7;
        }
      }
    }
  }

  return result;
}

uint64_t WriteLexConsList(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5)
{
  v15 = *MEMORY[0x277D85DE8];
  if (!a4)
  {
    return 0;
  }

  v7 = a3;
  result = WriteLexConsList(a1, a2, a3, *a4);
  if ((result & 0x80000000) == 0)
  {
    result = mosyntknowl_WriteTraceHeader(a1, v7);
    if ((result & 0x80000000) == 0)
    {
      if (a5 < 1)
      {
LABEL_7:
        v11 = 0;
        memset(v12, 0, sizeof(v12));
        memset(v13, 0, sizeof(v13));
        v14 = 0;
        if (*(a4 + 32) && mosyntkblex_IsValidEntry(a4 + 8))
        {
          result = mosyntkbsymtab_DecompressCons(a1, a2, *(a4 + 32), &v11, v12);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = mosyntkbsymtab_WriteConsAndFeat(a1, a2, v11, v12);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = mosyntbase_WString(a1, " ", 0);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = mosyntkblex_GetEntryGraph(a1, a4 + 8, v13, 200);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = mosyntbase_WString(a1, v13, 200);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = mosyntbase_WString(a1, "  [", 0);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = mosyntkblex_GetEntryPhon(a1, a4 + 8, v13, 200);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = mosyntbase_WString(a1, v13, 200);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = mosyntbase_WString(a1, "]  ", 0);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = mosyntkblex_GetEntryCost(a1, a4 + 8, &v11 + 4);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = mosyntbase_WInt(a1, HIDWORD(v11), 0);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }
        }

        else
        {
          result = mosyntbase_WString(a1, "NIL", 0);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }
        }

        result = mosyntbase_WLn(a1);
        if ((result & 0x80000000) == 0)
        {
          return mosyntbase_WLn(a1);
        }

        return result;
      }

      while (1)
      {
        result = mosyntbase_WString(a1, " ", 0);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        if (!--a5)
        {
          goto LABEL_7;
        }
      }
    }
  }

  return result;
}

uint64_t WriteTree1(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, int a5)
{
  if (!a4)
  {
    return 0;
  }

  v6 = a4;
  while (1)
  {
    result = mosyntknowl_WriteTraceHeader(a1, a3);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    v11 = a5;
    if (a5 >= 1)
    {
      do
      {
        result = mosyntbase_WString(a1, " ", 0);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }
      }

      while (--v11);
    }

    result = mosyntkbsymtab_WriteConsAndFeat(a1, a2, *(v6 + 8), v6 + 12);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    result = mosyntbase_WString(a1, "  ", 0);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    result = mosyntbase_WInt(a1, *(v6 + 12), 0);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    if (*(v6 + 60))
    {
      result = mosyntbase_WString(a1, "  @@", 0);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = mosyntbase_WLn(a1);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = mosyntbase_WLn(a1);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v12 = v6[8];
      if (v12)
      {
        result = WriteTermInfo(a1, a2, a3, v12, a5 + 2);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }
      }
    }

    else
    {
      result = mosyntbase_WLn(a1);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = mosyntbase_WLn(a1);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }
    }

    result = WriteTree1(a1, a2, a3, v6[1], (a5 + 2));
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    v6 = *v6;
    if (!v6)
    {
      return 0;
    }
  }
}

uint64_t mosyntdata_EncodeSymbolicValue(uint64_t a1, int a2, int a3, _DWORD *a4)
{
  if (a3)
  {
    v4 = -2147482647;
  }

  else
  {
    v4 = -2147481647;
  }

  *a4 = v4 - a2;
  return 0;
}

uint64_t mosyntdata_DecodeSymbolicValue(uint64_t a1, int a2, _DWORD *a3, BOOL *a4, BOOL *a5)
{
  *a5 = a2 < -2147481646;
  if (a2 < -2147481646)
  {
    *a3 = (2001 - a2 - 1000 * (((1049 * (2001 - a2)) >> 16) >> 4));
    *a4 = a2 < 0x800003EA;
  }

  return 0;
}

uint64_t mosyntdata_StartItemList(uint64_t a1, void *a2, void *a3)
{
  *a2 = 0;
  *a3 = 0;
  return 0;
}

uint64_t mosyntdata_AppendItem(uint64_t a1, void *a2, void **a3, void *a4)
{
  if (a4)
  {
    *a4 = 0;
    v4 = *a3;
    if (!*a3)
    {
      v4 = a2;
    }

    *v4 = a4;
    *a3 = a4;
  }

  return 0;
}

uint64_t mosyntdata_DisposeItem(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 0;
  }

  if (*(v2 + 8))
  {
    return mosyntpal_DEALLOCATE(a1, a2);
  }

  mosyntdata_SetLexEleRefCounts(a1, *(v2 + 32));
  v5 = *(v2 + 32);
  if (!v5)
  {
LABEL_8:
    *(v2 + 32) = 0;
    return mosyntpal_DEALLOCATE(a1, a2);
  }

  v7 = 0;
  while (1)
  {
    result = mosyntdata_PruneLexEleBranch(a1, v5 + 2);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    v7 = v5;
    v5 = *v5;
    result = mosyntpal_DEALLOCATE(a1, &v7);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    if (!v5)
    {
      goto LABEL_8;
    }
  }
}

uint64_t mosyntdata_AddOutItem(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4)
{
  v32 = 0;
  result = mosyntpal_ALLOCATE(a1, &v32, 0x28u);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  *v32 = 0;
  v9 = *(a4 + 8);
  v10 = v32;
  *(v32 + 8) = v9;
  if (v9)
  {
    goto LABEL_29;
  }

  v11 = *(a4 + 16);
  *(v10 + 32) = *(a4 + 32);
  *(v10 + 16) = v11;
  v12 = *(a4 + 32);
  if (!v12)
  {
    goto LABEL_27;
  }

  v33 = 0;
  v34 = 0;
  do
  {
    for (i = v12[2]; i; i = *i)
    {
      i[6] = 0;
    }

    v12 = *v12;
  }

  while (v12);
  v14 = *(a4 + 32);
  if (!v14)
  {
LABEL_27:
    result = 0;
    v16 = 0;
    v30 = v10;
LABEL_28:
    *(v10 + 32) = v16;
    v10 = v30;
LABEL_29:
    *v10 = 0;
    v28 = *a3;
    v29 = v32;
    if (!*a3)
    {
      v28 = a2;
    }

    *v28 = v32;
    *a3 = v29;
    return result;
  }

  v31 = a2;
  v15 = 0;
  v16 = 0;
  while (1)
  {
    v17 = v15;
    result = mosyntpal_ALLOCATE(a1, &v34, 0x18u);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    *v34 = 0;
    v15 = v34;
    v18 = v34;
    if (v17)
    {
      *v17 = v34;
      v18 = v16;
    }

    v16 = v18;
    v15[1] = v14[1];
    v19 = v14[2];
    if (v19)
    {
      v21 = v19 + 6;
      v20 = v19[6];
      if (!v20)
      {
        v22 = 0;
        v23 = 0;
        while (1)
        {
          result = mosyntpal_ALLOCATE(a1, &v33, 0x38u);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v24 = v33;
          v25 = *(v19 + 3);
          *(v33 + 8) = *(v19 + 1);
          *(v24 + 24) = v25;
          *(v24 + 40) = *(v19 + 20);
          *v24 = 0;
          v26 = v33;
          v20 = v33;
          if (v23)
          {
            *v23 = v33;
            v20 = v22;
          }

          *v21 = v26;
          v19 = *v19;
          if (!v19)
          {
            break;
          }

          v21 = v19 + 6;
          v27 = v19[6];
          v22 = v20;
          v23 = v26;
          if (v27)
          {
            if (v26)
            {
              *v26 = v27;
            }

            else
            {
              v20 = v19[6];
            }

            break;
          }
        }
      }
    }

    else
    {
      v20 = 0;
    }

    v34[2] = v20;
    v14 = *v14;
    if (!v14)
    {
      a2 = v31;
      v30 = v32;
      goto LABEL_28;
    }
  }
}

uint64_t GetFirstAddPhon(uint64_t a1, uint64_t a2, int a3, int a4, __int16 *a5, _WORD *a6, uint64_t a7, _DWORD *a8)
{
  v8 = *a5;
  *a6 = *a5;
  if (v8 >= 1)
  {
    v9 = 1;
    do
    {
      a6[v9] = a5[v9];
    }

    while (v9++ < *a5);
  }

  return mosyntkbsymtab_GetFeatMatchedFirstIntPropVal(a1, a2, a4, a6, a3 == 0, a7, a8);
}

uint64_t mosyntdata_GenWordPhono(uint64_t a1, uint64_t a2, uint64_t *a3, int a4, uint64_t a5, __int16 a6, void *a7, uint64_t *a8)
{
  *a7 = 0;
  *a8 = 0;
  if (a3)
  {
    v11 = a3;
    v14 = 0;
    while (1)
    {
      if (*(v11 + 20))
      {
        v15 = mosyntbase_WriteDevelMessage(a1, "*** boundary detected in word phoneme list\\n", 0, "", 0, "", 0, "", 0, 0, 0, 0);
        goto LABEL_5;
      }

      v16 = *(v11 + 12);
      if (mosyntkbsymtab_SyllSepId(a2) == v16)
      {
        v14 = mosyntdata_AddPhonEle(a1, a7, a8, 1, 0);
        if ((v14 & 0x80000000) != 0)
        {
          return v14;
        }

        v17 = *a8;
        *(v17 + 20) = 1;
        *(v17 + 24) = 1;
        *(v17 + 28) = -1;
        *(v17 + 32) = 0;
        *(v17 + 36) = 0;
        a5 = *a8;
        goto LABEL_18;
      }

      v18 = *(v11 + 12);
      if (mosyntkbsymtab_PrimAccId(a2) == v18)
      {
        if (a5)
        {
          v19 = a4;
LABEL_17:
          *(a5 + 36) = v19;
        }
      }

      else
      {
        v20 = *(v11 + 12);
        if (mosyntkbsymtab_SecAccId(a2) != v20)
        {
          v15 = mosyntdata_AddPhonEle(a1, a7, a8, 1, *(v11 + 12));
LABEL_5:
          v14 = v15;
          if ((v15 & 0x80000000) != 0)
          {
            return v14;
          }

          goto LABEL_18;
        }

        if (a4 >= 1 && a5)
        {
          v19 = a6;
          goto LABEL_17;
        }
      }

LABEL_18:
      v11 = *v11;
      if (!v11)
      {
        return v14;
      }
    }
  }

  return 0;
}

uint64_t mosyntdata_CreateAndInitSentTermData(uint64_t a1, uint64_t *a2)
{
  result = mosyntpal_ALLOCATE(a1, a2, 0x13890u);
  if ((result & 0x80000000) == 0)
  {
    for (i = 0; i != 80016; i += 16)
    {
      *(*a2 + i) = 0;
      *(*a2 + i + 8) = 0;
    }
  }

  return result;
}

uint64_t mosyntdata_DisposeSentTermData(uint64_t a1, uint64_t *a2)
{
  if (!*a2)
  {
    return 0;
  }

  v4 = 0;
  v11 = 0;
  v12 = 0;
  do
  {
    v5 = *a2;
    v6 = *(*a2 + v4);
    v12 = v6;
    if (v6)
    {
      v8 = *(v6 + 8);
      v7 = (v6 + 8);
      if (v8)
      {
        result = mosyntdata_DisposePhonEleList(a1, v7);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }
      }

      result = mosyntpal_DEALLOCATE(a1, &v12);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v5 = *a2;
    }

    v10 = *(v5 + v4 + 8);
    v11 = v10;
    if (v10)
    {
      if (*v10)
      {
        result = mosyntdata_DisposeCommandList(a1, v10);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }
      }

      result = mosyntpal_DEALLOCATE(a1, &v11);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }
    }

    v4 += 16;
  }

  while (v4 != 80016);
  return mosyntpal_DEALLOCATE(a1, a2);
}

double mosyntdata_AssertBoundPosData(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a2)
  {
    if (a3 < 0x1389)
    {
      v4 = a2 + 16 * a3;
      v6 = *(v4 + 8);
      v5 = (v4 + 8);
      if (!v6)
      {
        v9 = 0;
        if ((mosyntpal_ALLOCATE(a1, &v9, 0x10u) & 0x80000000) == 0)
        {
          v7 = v9;
          *v5 = v9;
          *v7 = 0;
          *&result = 0xFFFFFFFFLL;
          v9[1] = 0xFFFFFFFFLL;
        }
      }
    }

    else
    {
      LODWORD(v8) = 0;
      HIDWORD(v8) = a3;
      mosyntbase_WriteMessage(a1, "***** error in asserting word boundary pos; wrong pos: %d\\n", 0, "", 0, "", 0, "", v8);
    }
  }

  return result;
}

double mosyntdata_InsertSentTermWord(uint64_t a1, uint64_t a2, unsigned int a3, signed int a4, int a5, uint64_t a6)
{
  if (a2)
  {
    if (a3 > 0x1388 || a4 < a3 || a4 >= 5001)
    {
      *(&v16 + 1) = a4;
      LODWORD(v16) = 0;
      DWORD1(v16) = a3;
      mosyntbase_WriteMessage(a1, "***** error in word term insertion; wrong start/end pos: %d/%d\\n", 0, "", 0, "", 0, "", v16);
    }

    else
    {
      v11 = (a2 + 16 * a3);
      if (*v11)
      {
        *(&v17 + 1) = a4;
        LODWORD(v17) = 0;
        DWORD1(v17) = a3;
        mosyntbase_WriteMessage(a1, "***** error in word term insertion; position %d already occupied\\n", 0, "", 0, "", 0, "", v17);
      }

      else
      {
        v18 = 0;
        if ((mosyntpal_ALLOCATE(a1, &v18, 0x18u) & 0x80000000) == 0)
        {
          v14 = v18;
          *v11 = v18;
          *v14 = a5;
          *(v14 + 4) = a4;
          *(v14 + 8) = a6;
          *(v14 + 16) = 0;
          result = mosyntdata_AssertBoundPosData(a1, a2, a3);
          if ((v15 & 0x80000000) == 0)
          {
            return mosyntdata_AssertBoundPosData(a1, a2, a4);
          }
        }
      }
    }
  }

  return result;
}

void mosyntdata_InsertSentTermPunct(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  if (a2)
  {
    mosyntdata_AssertBoundPosData(a1, a2, a3);
    if (a3 <= 0x1388 && (v8 & 0x80000000) == 0)
    {
      v9 = *(a2 + 16 * a3 + 8);
      if (v9)
      {
        v12 = 0;
        if ((mosyntpal_ALLOCATE(a1, &v12, 0x88u) & 0x80000000) == 0)
        {
          *v12 = 0;
          v10 = v12;
          v12[2] = 0;
          v10[3] = 0;
          v10[1] = 0;
          *(v10 + 29) = 0;
          *(v10 + 3) = a4;
          v11 = *v9;
          if (!*v9)
          {
            goto LABEL_9;
          }

          do
          {
            v9 = v11;
            v11 = *v11;
          }

          while (v11);
          if (v10)
          {
LABEL_9:
            *v9 = v10;
          }
        }
      }
    }
  }
}

uint64_t mosyntdata_SentTermBoundData(uint64_t a1, uint64_t a2, unsigned int a3)
{
  result = 0;
  if (a2)
  {
    if (a3 <= 0x1388)
    {
      return *(a2 + 16 * a3 + 8);
    }
  }

  return result;
}

uint64_t mosyntdata_SentTermWordData(uint64_t a1, uint64_t a2, unsigned int a3)
{
  result = 0;
  if (a2)
  {
    if (a3 <= 0x1388)
    {
      return *(a2 + 16 * a3);
    }
  }

  return result;
}

uint64_t mosyntdata_GetSentTermWordPhonList(uint64_t a1, uint64_t a2, unsigned int a3, void *a4)
{
  *a4 = 0;
  if (a2)
  {
    if (a3 <= 0x1388)
    {
      v4 = *(a2 + 16 * a3);
      if (v4)
      {
        *a4 = *(v4 + 8);
      }
    }
  }

  return 0;
}

uint64_t mosyntdata_GetSentTermCommList(uint64_t a1, uint64_t a2, unsigned int a3, void *a4)
{
  *a4 = 0;
  if (a2)
  {
    if (a3 <= 0x1388)
    {
      v4 = *(a2 + 16 * a3 + 8);
      if (v4)
      {
        *a4 = *v4;
      }
    }
  }

  return 0;
}

uint64_t mosyntdata_WriteSentTermData(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v5 = 0;
    v6 = (a3 + 8);
    while (1)
    {
      v8 = *(v6 - 1);
      v7 = *v6;
      if (*v6)
      {
        result = mosyntbase_WString(a1, "- bound pos ", 0);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        result = mosyntbase_WInt(a1, v5, 0);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        result = mosyntbase_WString(a1, " ind ", 0);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        result = mosyntbase_WInt(a1, *(v7 + 8), 0);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        result = mosyntbase_WString(a1, " ", 0);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        result = mosyntdata_WriteCommandList(a1, *v7);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        result = mosyntbase_WLn(a1);
        if ((result & 0x80000000) != 0)
        {
          break;
        }
      }

      if (v8)
      {
        result = mosyntbase_WString(a1, "   - word from ", 0);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        result = mosyntbase_WInt(a1, v5, 0);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        result = mosyntbase_WString(a1, " to ", 0);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        result = mosyntbase_WInt(a1, *(v8 + 4), 0);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        result = mosyntbase_WString(a1, " acc ", 0);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        result = mosyntbase_WInt(a1, *(v8 + 16), 0);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        result = mosyntbase_WString(a1, ": ", 0);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        result = mosyntdata_WriteFormattedPhonList(a1, a2, *(v8 + 8), 0, 0);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        result = mosyntbase_WLn(a1);
        if ((result & 0x80000000) != 0)
        {
          break;
        }
      }

      ++v5;
      v6 += 2;
      if (v5 == 5001)
      {
        goto LABEL_22;
      }
    }
  }

  else
  {
LABEL_22:

    return mosyntbase_WLn(a1);
  }

  return result;
}

uint64_t mosyntdata_GenPhonoRepr(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = 0;
  result = 0;
  v17 = 0;
  v18 = 0;
  *a4 = 0;
  v9 = (a3 + 8);
  v19 = 0;
  v10 = 5001;
  do
  {
    v12 = *(v9 - 1);
    v11 = *v9;
    if (*v9)
    {
      v13 = *(v11 + 8);
      if (v13 < 0)
      {
        result = mosyntdata_AddPhonEle(a1, a4, &v19, 1, 0);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v14 = 0;
        v7 = v19;
        *(v19 + 20) = 1;
        *(v7 + 24) = 2;
        LOWORD(v13) = -1;
      }

      else
      {
        v14 = *(v11 + 12);
        result = mosyntdata_AddPhonEle(a1, a4, &v19, 1, 0);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v7 = v19;
        *(v19 + 20) = 1;
        *(v7 + 24) = 3;
      }

      *(v7 + 28) = v13;
      *(v7 + 32) = v14;
      *(v7 + 36) = 0;
    }

    if (v12)
    {
      result = mosyntdata_GenWordPhono(a1, a2, *(v12 + 8), *(v12 + 16), v7, 4, &v18, &v17);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      if (v18)
      {
        v15 = v17;
        v16 = a4;
        if (v19 && (v16 = v19, !v17))
        {
          result = 0;
        }

        else
        {
          result = 0;
          *v16 = v18;
          v19 = v15;
        }
      }
    }

    else
    {
      v17 = 0;
      v18 = 0;
    }

    v9 += 2;
    --v10;
  }

  while (v10);
  return result;
}

void mosyntdata_SyntTreeToSentTermData(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v7 = a1;
    if (!*(a3 + 60))
    {
      goto LABEL_13;
    }

    v8 = *(a3 + 64);
    if (v8)
    {
      v9 = *(v8 + 32);
      if (v9)
      {
        v17 = 0;
        v18 = 0;
        if ((mosyntdata_StringToLexPhonList(a1, a2, v9, 100000000, &v18, &v17) & 0x80000000) != 0)
        {
          return;
        }

        v8 = *(a3 + 64);
        v10 = v18;
      }

      else
      {
        v10 = 0;
      }

      v11 = *(a3 + 52);
      v12 = *(a3 + 56);
      v14 = *(v8 + 8);
      a1 = v7;
      v13 = a4;
    }

    else
    {
      v11 = *(a3 + 52);
      v12 = *(a3 + 56);
      v13 = a4;
      v14 = 0;
      v10 = 0;
    }

    mosyntdata_InsertSentTermWord(a1, v13, v11, v12, v14, v10);
    if ((v15 & 0x80000000) == 0)
    {
LABEL_13:
      for (i = *(a3 + 8); i; i = *i)
      {
        if ((mosyntdata_SyntTreeToSentTermData(v7, a2, i, a4) & 0x80000000) != 0)
        {
          break;
        }
      }
    }
  }
}

uint64_t WriteLexEleList(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return 0;
  }

  result = WriteLexEleList(a1, *a2);
  if ((result & 0x80000000) == 0)
  {
    v6 = 0;
    memset(v5, 0, sizeof(v5));
    result = mosyntkblex_GetEntryPhon(a1, a2 + 1, v5, 200);
    if ((result & 0x80000000) == 0)
    {
      return mosyntbase_WString(a1, v5, 200);
    }
  }

  return result;
}

uint64_t WriteTermInfo(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = a5;
  if (*a4)
  {
    v7 = *(*a4 + 16);

    return WriteLexConsList(a1, a2, a3, v7, a5);
  }

  result = mosyntknowl_WriteTraceHeader(a1, a3);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  if (v5 < 1)
  {
LABEL_9:
    if (*(a4 + 16))
    {
      result = mosyntbase_WString(a1, "", 0);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v10 = *(a4 + 24);
      if (v10 <= *(a4 + 28))
      {
        do
        {
          result = mosyntbase_Wr(a1, *(*(a4 + 16) + v10));
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v11 = v10++ < *(a4 + 28);
        }

        while (v11);
      }

      result = mosyntbase_WString(a1, " ", 0);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }
    }

    if (*(a4 + 32))
    {
      result = mosyntbase_WString(a1, " [", 0);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v12 = *(a4 + 40);
      if (v12 <= *(a4 + 44))
      {
        do
        {
          result = mosyntbase_Wr(a1, *(*(a4 + 32) + v12));
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v11 = v12++ < *(a4 + 44);
        }

        while (v11);
      }

      result = mosyntbase_WString(a1, "] ", 0);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }
    }

    result = mosyntbase_WLn(a1);
    if ((result & 0x80000000) == 0)
    {

      return mosyntbase_WLn(a1);
    }

    return result;
  }

  while (1)
  {
    result = mosyntbase_WString(a1, " ", 0);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    if (!--v5)
    {
      goto LABEL_9;
    }
  }
}

uint64_t kblexXX_StartLookup(uint64_t a1, uint64_t a2)
{
  *a2 = a1;
  if (*(a1 + 260))
  {
    *(a2 + 8) = 1;
  }

  else
  {
    *(a2 + 8) = *(a1 + 264);
  }

  *(a2 + 16) = 0;
  return 0;
}

uint64_t kblexXX_LookupChar(unsigned __int8 a1, int *a2, _BYTE *a3)
{
  v5 = a1;
  v6 = *a2;
  if (!*(*a2 + 260))
  {
    v10 = *(a2 + 1);
    v11 = a2[4];
    *a3 = 0;
    if (*(v10 + v11))
    {
      if (*(v10 + v11) == v5)
      {
        *a3 = 1;
        v12 = v11 + 1;
LABEL_8:
        result = 0;
        a2[4] = v12;
        return result;
      }
    }

    else
    {
      v19 = *(v10 + 16);
      if (v19)
      {
        while (1)
        {
          v20 = *v19;
          if (v20 >= v5)
          {
            break;
          }

          v19 = *(v19 + 3);
          if (!v19)
          {
            return 0;
          }
        }

        if (v20 == v5)
        {
          v12 = 1;
          *a3 = 1;
          *(a2 + 1) = v19;
          goto LABEL_8;
        }
      }
    }

    return 0;
  }

  v27 = 0;
  v22 = 0;
  v7 = a2[4];
  result = DecomprNode(v6, a2[2], &v28, &v27, &v22, &v26);
  *a3 = 0;
  if (*(&v22 + v7))
  {
    if (*(&v22 + v7) != v5)
    {
      return result;
    }

    *a3 = 1;
    v9 = v7 + 1;
    goto LABEL_24;
  }

  v25 = 0;
  v21 = 0;
  v13 = v27;
  v14 = *a2;
  result = DecomprNodeStart(*a2, v27, &v25, &v21);
  v15 = v13 != 0;
  v16 = v21;
  if (v13 && v21 < v5)
  {
    do
    {
      v13 = v25;
      result = DecomprNodeStart(v14, v25, &v25, &v21);
      v15 = v13 != 0;
      v16 = v21;
      if (v13)
      {
        v17 = v21 >= v5;
      }

      else
      {
        v17 = 1;
      }
    }

    while (!v17);
  }

  if (v15 && v16 == v5)
  {
    *a3 = 1;
    if (!BYTE1(v21))
    {
      result = DecomprNode(*a2, v13, &v25, &v24, &v21, &v23);
    }

    a2[2] = v13;
    v9 = 1;
LABEL_24:
    a2[4] = v9;
  }

  return result;
}

uint64_t kblexXX_GetFirstEntry(_DWORD *a1, _BYTE *a2, uint64_t a3)
{
  v5 = *a1;
  if (*(*a1 + 260))
  {
    v12 = 0;
    v6 = a1[2];
    v7 = a1[4];
    DecomprNode(v5, v6, &v14, &v13, &v12, &v12 + 1);
    if (v6 && !*(&v12 + v7) && (v10 = HIDWORD(v12)) != 0 && *(*(v5 + 272) + SHIDWORD(v12)))
    {
      *a2 = 1;
      *a3 = v5;
      *(a3 + 8) = v10;
      *(a3 + 12) = v6;
    }

    else
    {
      *a2 = 0;
      *a3 = 0;
      *(a3 + 8) = 0;
    }
  }

  else
  {
    v8 = *(a1 + 1);
    if (v8 && !*(v8 + a1[4]) && *(v8 + 32))
    {
      *a2 = 1;
      *(a3 + 16) = v8;
      v11 = *(v8 + 32);
      *a3 = v5;
      *(a3 + 8) = v11;
    }

    else
    {
      *a2 = 0;
      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
    }
  }

  return 0;
}

uint64_t kblexXX_GetNextEntry(BOOL *a1, int *a2)
{
  v3 = *a2;
  if (!*a2)
  {
    goto LABEL_11;
  }

  if (*(v3 + 260))
  {
    v5 = a2[2];
    if (!v5)
    {
      goto LABEL_12;
    }

    v6 = *(v3 + 272);
    if (*(v6 + v5))
    {
      v12 = 0;
      v11 = 0;
      v5 = DecomprEntry1(v3, v5, (*(v6 + a2[3]) >> 5) & 1, &v12 + 1, &v12, &v11);
      v7 = v11;
      a2[2] = v11;
      if (!v7)
      {
        goto LABEL_10;
      }

      v3 = *a2;
      if (!*(*(*a2 + 272) + v7))
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }

LABEL_11:
    v5 = 0;
    goto LABEL_12;
  }

  v8 = *(a2 + 1);
  if (!v8)
  {
    goto LABEL_11;
  }

  v5 = 0;
  v9 = *v8;
  *(a2 + 1) = v9;
  if (!v9)
  {
LABEL_10:
    v3 = 0;
    *a2 = 0;
  }

LABEL_12:
  *a1 = v3 != 0;
  return v5;
}

uint64_t DecomprEntry1(uint64_t a1, int a2, int a3, int *a4, int *a5, int *a6)
{
  if (a2)
  {
    v16 = a2;
    DecomprNum(*(a1 + 272), &v16, a4);
    if (*a4 < 1)
    {
      v11 = 0;
    }

    else
    {
      if (!a3 || (DecomprNum(*(a1 + 272), &v16, a5), *a5 <= 0))
      {
        *a5 = 1;
      }

      v11 = v16;
      if ((*(a1 + 280) & 0x80000000) != 0)
      {
        v12 = *(a1 + 272);
        if (*(v12 + v16))
        {
          v13 = (v16 + v12 + 1);
          do
          {
            v14 = *v13++;
            ++v11;
          }

          while (v14);
        }

        ++v11;
      }
    }
  }

  else
  {
    v11 = 0;
    *a4 = 0;
  }

  *a6 = v11;
  return 0;
}

uint64_t kblexXX_GetEntryGraph(uint64_t a1, uint64_t *a2, _BYTE *a3, int a4)
{
  *a3 = 0;
  v4 = *a2;
  if (!*a2)
  {
    return 0;
  }

  v40 = 0;
  if (!*(v4 + 260))
  {
    if (a2[1])
    {
      v21 = a2[2];
      for (i = a4 - 1; v21; v21 = *(v21 + 1))
      {
        if (v21 == *(v4 + 264))
        {
          break;
        }

        v23 = 0;
        v24 = 1;
        v25 = v21;
        v26 = 1;
        do
        {
          v27 = v24;
          v28 = v23;
          v29 = *v25++;
          --v26;
          ++v24;
          ++v23;
        }

        while (v29);
        if (v26)
        {
          v30 = &a3[i];
          i -= v28;
          do
          {
            *v30-- = v21[(v27-- - 2)];
          }

          while (v27 > 1);
        }
      }

      v31 = a4 - 1 - i;
      if (v31 >= 1)
      {
        v32 = i;
        v33 = v31;
        v34 = v32 + 1;
        v35 = a3;
        do
        {
          *v35 = v35[v34];
          ++v35;
          --v33;
        }

        while (v33);
      }

      result = 0;
      a3[v31] = 0;
      return result;
    }

    return 0;
  }

  if (!*(v4 + 264))
  {
    return mosyntbase_CCopy("???", 0, a3, a4, &v40);
  }

  v6 = *(a2 + 3);
  v7 = a4 - 1;
  if (v6)
  {
    __dst = 0;
    v8 = a4 - 1;
    while (1)
    {
      v9 = *(v4 + 272);
      v10 = *(v9 + v6);
      v11 = v6 + 1;
      v12 = v10 & 3;
      if ((v10 & 3) != 0)
      {
        memcpy(&__dst, (v9 + v11), v10 & 3);
        v11 += v12;
        v13 = v10 & 3;
      }

      else
      {
        v13 = 0;
      }

      *(&__dst | v13) = 0;
      if ((v10 & 4) != 0)
      {
        if (*(v9 + v11) < 0)
        {
          v14 = (v9 + v11 + 1);
          do
          {
            v15 = *v14++;
            ++v11;
          }

          while (v15 < 0);
        }

        ++v11;
      }

      v16 = *(v9 + v11);
      if (*(v9 + v11) < 0)
      {
        break;
      }

      v17 = 0;
      if (v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v6 = v17 + v6 - v16;
      if (!v6)
      {
        goto LABEL_39;
      }
    }

    v18 = 0;
    v19 = (v9 + v11 + 1);
    do
    {
      v18 = v16 + (v18 << 7) - 128;
      v20 = *v19++;
      v16 = v20;
    }

    while (v20 < 0);
    v17 = -128 * v18;
    if (!v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    memcpy(&a3[v8 + 1 - v12], &__dst, v12);
    v8 -= v12;
    goto LABEL_17;
  }

  v8 = a4 - 1;
LABEL_39:
  v37 = v7 - v8;
  if (v37 >= 1)
  {
    v38 = v37;
    v39 = a3;
    do
    {
      *v39 = v39[v8 + 1];
      ++v39;
      --v38;
    }

    while (v38);
  }

  result = 0;
  a3[v37] = 0;
  return result;
}

uint64_t kblexXX_GetEntryPhon(uint64_t a1, uint64_t *a2, _BYTE *a3, int a4)
{
  *a3 = 0;
  v4 = *a2;
  if (!*a2)
  {
    return 0;
  }

  if (*(v4 + 260))
  {
    v7 = *(a2 + 2);
    if (v7)
    {
      v8 = *(v4 + 272);
      v9 = *(v8 + v7);
      if (*(v8 + v7) < 0)
      {
        v15 = 0;
        v16 = (v7 + v8 + 1);
        do
        {
          v15 = v9 + (v15 << 7) - 128;
          v17 = *v16++;
          v9 = v17;
          ++v7;
        }

        while (v17 < 0);
        v10 = v15 << 7;
      }

      else
      {
        v10 = 0;
      }

      if ((v9 | v10) >= 1)
      {
        v18 = v7 + 1;
        if ((*(v8 + *(a2 + 3)) & 0x20) != 0)
        {
          if (*(v8 + v18) < 0)
          {
            v19 = (v18 + v8 + 1);
            do
            {
              v20 = *v19++;
              ++v18;
            }

            while (v20 < 0);
          }

          ++v18;
        }

        if ((*(v4 + 280) & 0x80000000) == 0)
        {
          return mosyntbase_WriteDevelMessage(a1, "***** extern phon string lexica not supported", 0, "", 0, "", 0, "", 0, 0, 0, 0);
        }

        v21 = 0;
        v22 = v8 + v18;
        do
        {
          v23 = *(v22 + v21);
          if (v21 < a4)
          {
            a3[v21] = v23;
          }

          ++v21;
        }

        while (v23);
      }
    }

    return 0;
  }

  v11 = a2[1];
  if (!v11)
  {
    return 0;
  }

  v12 = *(v4 + 280);
  v13 = *(v11 + 12);

  return auxkbcommondef_RecallString(a1, v12, v13, a3, a4);
}

uint64_t kblexXX_GetEntryCost(uint64_t a1, uint64_t a2, int *a3)
{
  *a3 = 0;
  result = *a2;
  if (*a2)
  {
    if (*(result + 260))
    {
      v6 = 0;
      return DecomprEntry1(result, *(a2 + 8), (*(*(result + 272) + *(a2 + 12)) >> 5) & 1, &v6, a3, &v5);
    }

    else
    {
      v4 = *(a2 + 8);
      if (v4)
      {
        result = 0;
        *a3 = *(v4 + 16);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t kblexXX_GetEntryCostAndConsList(uint64_t a1, uint64_t a2, int *a3, _BYTE *a4, int a5)
{
  v10 = 0;
  v7 = *a2;
  if (*a2)
  {
    if (*(v7 + 260))
    {
      DecomprEntry1(v7, *(a2 + 8), (*(*(v7 + 272) + *(a2 + 12)) >> 5) & 1, &v10, a3, &v11);
      LODWORD(v7) = v10;
    }

    else
    {
      v8 = *(a2 + 8);
      if (v8)
      {
        LODWORD(v7) = *(v8 + 8);
        *a3 = *(v8 + 16);
      }

      else
      {
        LODWORD(v7) = 0;
      }
    }
  }

  return mosyntpal_IntToString(v7, 0, a4, a5);
}

BOOL kblexXX_IdenticalEntries(_DWORD *a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(*a1 + 260))
  {
    return a1[2] == *(a2 + 8);
  }

  else
  {
    return *(a1 + 1) == *(a2 + 8);
  }
}

uint64_t DecomprNode(uint64_t a1, int a2, _DWORD *a3, _DWORD *a4, _BYTE *a5, int *a6)
{
  if (a2)
  {
    v6 = *(a1 + 272);
    v7 = *(v6 + a2);
    v8 = a2 + 1;
    v9 = v7 & 3;
    if ((v7 & 3) != 0)
    {
      v10 = (v6 + v8);
      v8 = a2 + (v7 & 3) + 1;
      v11 = a5;
      v12 = v7 & 3;
      do
      {
        v13 = *v10++;
        *v11++ = v13;
        --v12;
      }

      while (v12);
    }

    else
    {
      v9 = 0;
    }

    a5[v9] = 0;
    if ((v7 & 4) != 0)
    {
      v16 = *(a1 + 272);
      v17 = *(v16 + v8);
      if (*(v16 + v8) < 0)
      {
        v19 = 0;
        v20 = (v8 + v16 + 1);
        do
        {
          v19 = v17 + (v19 << 7) - 128;
          v21 = *v20++;
          v17 = v21;
          ++v8;
        }

        while (v21 < 0);
        v18 = v19 << 7;
      }

      else
      {
        v18 = 0;
      }

      v15 = ++v8 + v18 + v17;
    }

    else
    {
      v15 = 0;
    }

    *a3 = v15;
    if (*(a1 + 264))
    {
      v22 = *(a1 + 272);
      if (*(v22 + v8) < 0)
      {
        v23 = (v8 + v22 + 1);
        do
        {
          v24 = *v23++;
          ++v8;
        }

        while (v24 < 0);
      }

      ++v8;
    }

    if ((v7 & 8) != 0)
    {
      v26 = *(a1 + 272);
      v27 = *(v26 + v8);
      if (*(v26 + v8) < 0)
      {
        v29 = 0;
        v30 = (v8 + v26 + 1);
        do
        {
          v29 = v27 + (v29 << 7) - 128;
          v31 = *v30++;
          v27 = v31;
          ++v8;
        }

        while (v31 < 0);
        v28 = v29 << 7;
      }

      else
      {
        v28 = 0;
      }

      v25 = ++v8 + v28 + v27;
    }

    else
    {
      v25 = 0;
    }

    *a4 = v25;
    v14 = v8 & (v7 << 27 >> 31);
  }

  else
  {
    v14 = 0;
    *a3 = 0;
    *a4 = 0;
    *a5 = 0;
  }

  *a6 = v14;
  return 0;
}

uint64_t DecomprNodeStart(uint64_t a1, int a2, _DWORD *a3, _BYTE *a4)
{
  if (a2)
  {
    v4 = *(a1 + 272);
    v5 = *(v4 + a2);
    v6 = a2 + 1;
    v7 = v5 & 3;
    if ((v5 & 3) != 0)
    {
      v8 = (v4 + v6);
      v6 = a2 + (v5 & 3) + 1;
      v9 = a4;
      v10 = v5 & 3;
      do
      {
        v11 = *v8++;
        *v9++ = v11;
        --v10;
      }

      while (v10);
    }

    else
    {
      v7 = 0;
    }

    a4[v7] = 0;
    if ((v5 & 4) != 0)
    {
      v12 = *(a1 + 272);
      v13 = *(v12 + v6);
      if (*(v12 + v6) < 0)
      {
        v15 = 0;
        v16 = (v6 + v12 + 1);
        do
        {
          v15 = v13 + (v15 << 7) - 128;
          v17 = *v16++;
          v13 = v17;
          ++v6;
        }

        while (v17 < 0);
        v14 = v15 << 7;
      }

      else
      {
        v14 = 0;
      }

      *a3 = v6 + v14 + v13 + 1;
    }

    else
    {
      *a3 = 0;
    }
  }

  else
  {
    *a3 = 0;
    *a4 = 0;
  }

  return 0;
}

uint64_t DecomprNum(uint64_t result, int *a2, int *a3)
{
  *a3 = 0;
  v3 = *(result + *a2);
  if (*(result + *a2) < 0)
  {
    do
    {
      *a3 = v3 + (*a3 << 7) - 128;
      v5 = *a2 + 1;
      *a2 = v5;
      v6 = *(result + v5);
      v3 = *(result + v5);
    }

    while (v6 < 0);
    v4 = *a3 << 7;
  }

  else
  {
    v4 = 0;
  }

  *a3 = v4 | v3;
  ++*a2;
  return result;
}

uint64_t mosyntwordpho_LHPlusMapping(uint64_t a1, int a2, void *a3, int *a4, unsigned __int8 *a5, int a6)
{
  v25 = *MEMORY[0x277D85DE8];
  if (*a4 < 2)
  {
    return 0;
  }

  v11 = *&a4[2 * (*a4 - 1) + 2];
  if (a2 < 1 || (result = mosyntknowl_WriteTraceHeader(a1, 3u), (result & 0x80000000) == 0) && (result = mosyntbase_WriteMessage(a1, "lhplus mapping input: %s\\n", 0, a5, a6, "", 0, "", 0), (result & 0x80000000) == 0))
  {
    v21 = 0;
    v22 = 0;
    memset(v23, 0, sizeof(v23));
    v24 = 0;
    v19 = 0;
    v20 = 0;
    result = mosyntdata_StringToLexPhonList(a1, a3, a5, a6, &v21, &v19);
    if ((result & 0x80000000) == 0)
    {
      result = mosynttrans_InitTransDesc(a1, a2, a3, &v22);
      if ((result & 0x80000000) == 0)
      {
        m2__cp__str("lhplus mapping", v23, 100);
        v13[0] = 1;
        v13[1] = v11;
        v14 = 0u;
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v18 = 0;
        result = mosynttrans_SeqTransducePhonList(a1, v22, 3u, v21, &v20, v13, 0, -1, 0xFFFFFFFF, v23, 100);
        if ((result & 0x80000000) == 0)
        {
          result = mosynttrans_FinishTransDesc(a1, &v22);
          if ((result & 0x80000000) == 0)
          {
            result = mosyntdata_PhonListToString(a1, a3, 1, v20, a5, a6);
            if ((result & 0x80000000) == 0)
            {
              result = mosyntdata_DisposePhonEleList(a1, &v21);
              if ((result & 0x80000000) == 0)
              {
                result = mosyntdata_DisposePhonEleList(a1, &v20);
                if (a2 >= 1 && (result & 0x80000000) == 0)
                {
                  result = mosyntknowl_WriteTraceHeader(a1, 3u);
                  if ((result & 0x80000000) == 0)
                  {
                    return mosyntbase_WriteMessage(a1, "lhplus mapping output: %s\\n", 0, a5, a6, "", 0, "", 0);
                  }
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

uint64_t mosyntwordpho_ReadingToPhonString(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, _BYTE *a5, int a6)
{
  if (a4)
  {
    return mosyntdata_LexEleListToPhonString(a1, a3, *(a4 + 8), *(a4 + 16), a5, a6);
  }

  *a5 = 0;
  return 0;
}

uint64_t mosyntwordpho_TreatSingleReadingString(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6, int a7)
{
  v31[2] = *MEMORY[0x277D85DE8];
  v23 = 0;
  result = mosyntpal_ALLOCATE(a1, &v23, 0x68u);
  if ((result & 0x80000000) == 0)
  {
    v15 = v23;
    *v23 = a2;
    *(v15 + 8) = a3;
    v16 = *(a4 + 16);
    *(v15 + 16) = *a4;
    *(v15 + 32) = v16;
    v18 = *(a4 + 48);
    v17 = *(a4 + 64);
    v19 = *(a4 + 32);
    *(v15 + 96) = *(a4 + 80);
    *(v15 + 64) = v18;
    *(v15 + 80) = v17;
    *(v15 + 48) = v19;
    if (!a5)
    {
      return mosyntpal_DEALLOCATE(a1, &v23);
    }

    v29 = 0;
    v30[0] = 0;
    v30[1] = 0;
    v31[0] = 0;
    *(v31 + 6) = 0;
    v27 = 0;
    v28 = 0;
    result = mosyntdata_StartPhonList(a1, &v28, &v27);
    if ((result & 0x80000000) == 0)
    {
      v26 = 0;
      result = mosyntdata_StringToLexPhonList(a1, *(v15 + 8), a6, a7, &v28, &v27);
      if ((result & 0x80000000) == 0)
      {
        result = mosynttrans_InitTransDesc(a1, *v15, *(v15 + 8), &v29);
        if ((result & 0x80000000) == 0)
        {
          m2__cp__str("morphophonemic rules", v30, 30);
          v20 = *(v15 + 16) - 1;
          v21 = *(v15 + 64);
          v24[2] = *(v15 + 48);
          v24[3] = v21;
          v24[4] = *(v15 + 80);
          v25 = *(v15 + 96);
          v22 = *(v15 + 32);
          v24[0] = *(v15 + 16);
          v24[1] = v22;
          result = mosynttrans_SeqTransducePhonList(a1, v29, 3u, v28, &v26, v24, 0, v20, 0xFFFFFFFF, v30, 30);
          if ((result & 0x80000000) == 0)
          {
            result = mosynttrans_FinishTransDesc(a1, &v29);
            if ((result & 0x80000000) == 0)
            {
              result = mosyntdata_DisposePhonEleList(a1, &v28);
              if ((result & 0x80000000) == 0)
              {
                result = mosyntdata_PhonListToString(a1, *(v15 + 8), 1, v26, a6, a7);
                if ((result & 0x80000000) == 0)
                {
                  result = mosyntdata_DisposePhonEleList(a1, &v26);
                  if ((result & 0x80000000) == 0)
                  {
                    return mosyntpal_DEALLOCATE(a1, &v23);
                  }
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

uint64_t mosyntwordpho_TraceReading(uint64_t a1, int a2, void *a3, uint64_t a4, unsigned __int8 *a5, int a6)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 < 2)
  {
    return 0;
  }

  result = mosyntknowl_WriteTraceHeader(a1, 3u);
  if ((result & 0x80000000) == 0)
  {
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    result = mosyntkbsymtab_ConsToString(a1, a3, *(a4 + 8), v12, 200);
    if ((result & 0x80000000) == 0)
    {
      return mosyntbase_WriteMessage(a1, "getting internal phon list for word cons %s: %s\\n", 0, v12, 200, a5, a6, "", 0);
    }
  }

  return result;
}

uint64_t mosyntwordpho_TreatSingleReading(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t **a6, void *a7)
{
  v20 = 0;
  result = mosyntpal_ALLOCATE(a1, &v20, 0x68u);
  if ((result & 0x80000000) == 0)
  {
    v15 = v20;
    *v20 = a2;
    *(v15 + 8) = a3;
    v16 = *(a4 + 16);
    *(v15 + 16) = *a4;
    *(v15 + 32) = v16;
    v18 = *(a4 + 48);
    v17 = *(a4 + 64);
    v19 = *(a4 + 32);
    *(v15 + 96) = *(a4 + 80);
    *(v15 + 64) = v18;
    *(v15 + 80) = v17;
    *(v15 + 48) = v19;
    result = TreatReading(a1, v15, a5, a6, a7);
    if ((result & 0x80000000) == 0)
    {
      return mosyntpal_DEALLOCATE(a1, &v20);
    }
  }

  return result;
}

uint64_t TreatReading(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4, void *a5)
{
  v37 = *MEMORY[0x277D85DE8];
  *a4 = 0;
  *a5 = 0;
  if (!a3)
  {
    return 0;
  }

  v18 = 0;
  v19 = 0;
  v22[1] = 0;
  v23[0] = 0;
  v22[0] = 0;
  *(v23 + 6) = 0;
  v20[1] = 0;
  v21[0] = 0;
  v20[0] = 0;
  *(v21 + 6) = 0;
  inited = mosyntdata_LexEleListToPhonList(a1, *(a2 + 8), *(a3 + 8), *(a3 + 16), &v19);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = mosynttrans_InitTransDesc(a1, *a2, *(a2 + 8), &v18);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  m2__cp__str("morphophonemic rules", v22, 30);
  v11 = *(a2 + 16) - 1;
  v12 = *(a2 + 64);
  v26 = *(a2 + 48);
  v27 = v12;
  v28 = *(a2 + 80);
  *&v29 = *(a2 + 96);
  v13 = *(a2 + 32);
  v24 = *(a2 + 16);
  v25 = v13;
  inited = mosynttrans_SeqTransducePhonList(a1, v18, 3u, v19, a4, &v24, 0, v11, 0xFFFFFFFF, v22, 30);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = mosynttrans_FinishTransDesc(a1, &v18);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  if (*a2 >= 2)
  {
    inited = mosyntknowl_WriteTraceHeader(a1, 3u);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    m2__cp__str("internal", v20, 30);
    v14 = *(a3 + 8);
    v15 = *a4;
    v36 = 0;
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
    v24 = 0u;
    v25 = 0u;
    inited = mosyntkbsymtab_ConsToString(a1, *(a2 + 8), v14, &v24, 200);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    inited = mosyntbase_WriteMessage(a1, "getting %s phon list for word cons %s: ", 0, v20, 30, &v24, 200, "", 0);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    inited = mosyntdata_WritePhonList(a1, *(a2 + 8), v15);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    inited = mosyntbase_WLn(a1);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }
  }

  v16 = mosyntdata_DisposePhonEleList(a1, &v19);
  if ((v16 & 0x80000000) == 0)
  {
    *a5 = mosyntdata_LastPhonEle(a1, *a4);
  }

  return v16;
}

void mosyntwordpho_TreatTree(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t **a7)
{
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v20 = 0;
  if ((mosyntpal_ALLOCATE(a1, &v20, 0x68u) & 0x80000000) == 0)
  {
    v14 = v20;
    *v20 = a2;
    *(v14 + 8) = a3;
    v15 = *(a4 + 16);
    *(v14 + 16) = *a4;
    *(v14 + 32) = v15;
    v17 = *(a4 + 48);
    v16 = *(a4 + 64);
    v18 = *(a4 + 32);
    *(v14 + 96) = *(a4 + 80);
    *(v14 + 64) = v17;
    *(v14 + 80) = v16;
    *(v14 + 48) = v18;
    if ((mosyntdata_StartPhonList(a1, &v24, &v23) & 0x80000000) == 0)
    {
      v21 = 0;
      if ((mosyntdata_StartNodeList(a1, a7, &v22) & 0x80000000) == 0)
      {
        TreatTreeAppend(a1, v20, a5, a6, a7, &v22, &v24, &v23, &v21);
        if ((v19 & 0x80000000) == 0)
        {
          if (*v20 < 1)
          {
            goto LABEL_13;
          }

          if (*a7)
          {
            if ((mosyntdata_WriteTree(a1, *(v20 + 8), 1, *a7) & 0x80000000) != 0 || (mosyntbase_WLn(a1) & 0x80000000) != 0 || (mosyntbase_WLn(a1) & 0x80000000) != 0)
            {
              return;
            }

LABEL_13:
            mosyntpal_DEALLOCATE(a1, &v20);
            return;
          }

          if ((mosyntknowl_WriteTraceHeader(a1, 3u) & 0x80000000) == 0 && (mosyntbase_WStringLn(a1, "*** empty tree after morphophonetic transductions", 0) & 0x80000000) == 0)
          {
            goto LABEL_13;
          }
        }
      }
    }
  }
}

void TreatTreeAppend(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void **a6, uint64_t *a7, uint64_t *a8, uint64_t a9)
{
  v42 = *MEMORY[0x277D85DE8];
  v37 = 0;
  if (a4)
  {
    PhonEle = 0;
    v35 = 0;
    v36 = 0;
    v33 = 0;
    v34 = 0;
    v40[0] = 0;
    v40[1] = 0;
    v41 = 0;
    if (*a2 < 2 || (mosyntknowl_WriteTraceHeader(a1, 3u) & 0x80000000) == 0 && (m2__cp__str("treating tree", v40, 20), (TraceConsProcessing(a1, a2, *(a4 + 16), v40) & 0x80000000) == 0))
    {
      if (*(a4 + 60))
      {
        PhonEle = 0;
        v39 = 0;
        v17 = *(a4 + 64);
        if (!v17 || !*v17)
        {
          goto LABEL_20;
        }

        if ((TreatReading(a1, a2, *v17, &v39, &PhonEle) & 0x80000000) != 0)
        {
          return;
        }

        if (v39)
        {
          mosyntdata_NewSyntNode(a1, *(a4 + 16), (a4 + 24), &v37);
          if ((v18 & 0x80000000) == 0)
          {
            v20 = v37;
            v19 = PhonEle;
            *(v37 + 52) = *(a4 + 52);
            *(v20 + 60) = 1;
            *a9 = v20;
            v21 = *a7;
            v33 = *a8;
            v34 = v21;
            if ((mosyntdata_AppendPhonList(a1, &v34, &v33, v39, v19) & 0x80000000) == 0)
            {
              v22 = mosyntdata_SentTermWordData(a1, a3, *(a4 + 52));
              if (v22)
              {
                *(v22 + 8) = v34;
              }

              if ((mosyntdata_StartPhonList(a1, a7, a8) & 0x80000000) == 0)
              {
                v23 = *a6;
                if (!*a6)
                {
                  v23 = a5;
                }

                *v23 = v37;
                *a6 = *a9;
              }
            }
          }
        }

        else
        {
LABEL_20:
          if (*a2 >= 2 && (mosyntknowl_WriteTraceHeader(a1, 3u) & 0x80000000) == 0)
          {
            m2__cp__str("ignoring word", v40, 20);
            TraceConsProcessing(a1, a2, *(a4 + 16), v40);
          }
        }
      }

      else if ((mosyntdata_GetAddPhon(a1, *(a2 + 8), *(a4 + 16), (a4 + 24), 1, &v34, &v33) & 0x80000000) == 0 && (mosyntdata_AppendPhonList(a1, a7, a8, v34, v33) & 0x80000000) == 0)
      {
        v37 = 0;
        v24 = (a4 + 8);
        if (*(a4 + 8))
        {
          if ((mosyntdata_StartNodeList(a1, &v36, &v35) & 0x80000000) != 0)
          {
            return;
          }

          while (1)
          {
            v24 = *v24;
            if (!v24)
            {
              break;
            }

            if ((TreatTreeAppend(a1, a2, a3, v24, &v36, &v35, a7, a8, a9) & 0x80000000) != 0)
            {
              return;
            }
          }

          v27 = *a6;
          if (*a6)
          {
            while (1)
            {
              v27 = *v27;
              if (!v27)
              {
                break;
              }

              *a6 = v27;
            }
          }

          if (v36)
          {
            mosyntdata_NewSyntNode(a1, *(a4 + 16), (a4 + 24), &v37);
            if (v28 < 0)
            {
              return;
            }

            v30 = v36;
            v29 = v37;
            *(v37 + 52) = *(a4 + 52);
            v29[1] = v30;
          }
        }

        else if (*a9)
        {
          v25 = mosyntdata_SentTermWordData(a1, a3, *(*a9 + 52));
          if (v25)
          {
            v26 = (v25 + 8);
            PhonEle = mosyntdata_LastPhonEle(a1, *(v25 + 8));
            if ((mosyntdata_AppendPhonList(a1, v26, &PhonEle, *a7, *a8) & 0x80000000) != 0 || (mosyntdata_StartPhonList(a1, a7, a8) & 0x80000000) != 0)
            {
              return;
            }
          }
        }

        if ((mosyntdata_GetAddPhon(a1, *(a2 + 8), *(a4 + 16), (a4 + 24), 0, &v34, &v33) & 0x80000000) == 0 && (mosyntdata_AppendPhonList(a1, a7, a8, v34, v33) & 0x80000000) == 0)
        {
          if (!*a9 || (v31 = mosyntdata_SentTermWordData(a1, a3, *(*a9 + 52))) == 0 || (v32 = (v31 + 8), PhonEle = mosyntdata_LastPhonEle(a1, *(v31 + 8)), (mosyntdata_AppendPhonList(a1, v32, &PhonEle, v34, v33) & 0x80000000) == 0) && (mosyntdata_StartPhonList(a1, a7, a8) & 0x80000000) == 0)
          {
            mosyntdata_AppendNode(a1, a5, a6, 1, v37);
          }
        }
      }
    }
  }
}

uint64_t TraceConsProcessing(uint64_t a1, uint64_t a2, unsigned int a3, unsigned __int8 *a4)
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  result = mosyntkbsymtab_ConsToString(a1, *(a2 + 8), a3, v7, 200);
  if ((result & 0x80000000) == 0)
  {
    return mosyntbase_WriteMessage(a1, "%s cons %s\\n", 0, a4, 20, v7, 200, "", 0);
  }

  return result;
}

uint64_t mosyntpal_ALLOCATE(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  v8 = 0;
  inited = InitRsrcFunction(*a1, *(a1 + 8), &v8);
  if ((inited & 0x80000000) == 0)
  {
    v6 = heap_Calloc(*(v8 + 8), 1, a3);
    *a2 = v6;
    if (v6)
    {
      return inited;
    }

    else
    {
      return 2371887114;
    }
  }

  return inited;
}

uint64_t mosyntpal_DEALLOCATE(uint64_t a1, uint64_t *a2)
{
  v5 = 0;
  inited = InitRsrcFunction(*a1, *(a1 + 8), &v5);
  heap_Free(*(v5 + 8), *a2);
  *a2 = 0;
  return inited;
}

_BYTE *mosynt_strncpy_nopadding(_BYTE *result, unsigned __int8 *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3 - 1;
    v4 = result;
    do
    {
      v5 = *a2++;
      *v4++ = v5;
      if (v5)
      {
        v6 = v3 == 0;
      }

      else
      {
        v6 = 1;
      }

      --v3;
    }

    while (!v6);
  }

  return result;
}

uint64_t mosyntpal_IntToString(unsigned int a1, uint64_t a2, _BYTE *a3, int a4)
{
  v14 = *MEMORY[0x277D85DE8];
  LH_itoa(a1, v13, 0xAu);
  v6 = (a4 - 1);
  if (a4 >= 1)
  {
    if (a4 != 1)
    {
      v7 = v6 - 1;
      v8 = v13;
      v9 = a3;
      do
      {
        v10 = *v8++;
        *v9++ = v10;
        if (v10)
        {
          v11 = v7 == 0;
        }

        else
        {
          v11 = 1;
        }

        --v7;
      }

      while (!v11);
    }

    a3[v6] = 0;
  }

  return 0;
}

uint64_t mosyntpal_CardToString(unsigned int a1, uint64_t a2, _BYTE *a3, int a4)
{
  v14 = *MEMORY[0x277D85DE8];
  LH_utoa(a1, v13, 0xAu);
  v6 = (a4 - 1);
  if (a4 >= 1)
  {
    if (a4 != 1)
    {
      v7 = v6 - 1;
      v8 = v13;
      v9 = a3;
      do
      {
        v10 = *v8++;
        *v9++ = v10;
        if (v10)
        {
          v11 = v7 == 0;
        }

        else
        {
          v11 = 1;
        }

        --v7;
      }

      while (!v11);
    }

    a3[v6] = 0;
  }

  return 0;
}

uint64_t mosyntpal_StringToInt(uint64_t a1, uint64_t a2, int *a3, BOOL *a4)
{
  v4 = 0;
  do
  {
    v5 = *(a1 + v4);
    v6 = *(a1 + v4++);
  }

  while (v5 <= 32 && v6 != 0);
  v8 = v6 == 45 || v6 == 43;
  v9 = v8;
  if (v8)
  {
    v10 = v4 + 1;
  }

  else
  {
    v10 = v4;
  }

  v11 = (v10 - 1);
  v12 = *(a1 + v11);
  v13 = (v12 - 58) < 0xF6u;
  if ((v12 - 48) > 9)
  {
    v14 = 0;
  }

  else
  {
    v14 = 0;
    v15 = v9 + v4;
    do
    {
      v16 = 10 * v14 + (v12 - 48);
      v17 = v16 < v14;
      if (v16 > v14)
      {
        v14 = v16;
      }

      if (v17)
      {
        v13 = 1;
      }

      v12 = *(a1 + v15++);
    }

    while ((v12 - 48) < 0xA);
    v11 = (v15 - 1);
  }

  v18 = (a1 + v11);
  do
  {
    v20 = *v18++;
    v19 = v20;
  }

  while (v20 <= 32 && v19 != 0);
  if (v6 == 45)
  {
    v22 = -v14;
  }

  else
  {
    v22 = v14;
  }

  v23 = (v13 | v19) == 0;
  if (!v23)
  {
    v22 = 0;
  }

  *a4 = v23;
  *a3 = v22;
  return 0;
}

uint64_t mosyntpal_StringToCard(uint64_t a1, uint64_t a2, unsigned int *a3, BOOL *a4)
{
  v4 = 0;
  do
  {
    v5 = *(a1 + v4);
    v6 = *(a1 + v4++);
  }

  while (v5 <= 32 && v6 != 0);
  v8 = (v6 - 58) < 0xFFFFFFF6;
  v9 = (v4 - 1);
  v10 = *(a1 + v9);
  if ((v10 - 48) > 9)
  {
    v11 = 0;
  }

  else
  {
    v11 = 0;
    do
    {
      v12 = v10 + 10 * v11 - 48;
      v13 = v12 >= v11;
      if (v12 > v11)
      {
        v11 = v12;
      }

      if (!v13)
      {
        v8 = 1;
      }

      v10 = *(a1 + v4++);
    }

    while ((v10 - 48) < 0xA);
    v9 = (v4 - 1);
  }

  v14 = (a1 + v9);
  do
  {
    v16 = *v14++;
    v15 = v16;
  }

  while (v16 <= 32 && v15 != 0);
  v18 = (v8 | v15) == 0;
  if (!v18)
  {
    v11 = 0;
  }

  *a4 = v18;
  *a3 = v11;
  return 0;
}

uint64_t mosyntpal_WriteChar(uint64_t a1, int a2)
{
  v10 = 0;
  if (!a1)
  {
    return 0;
  }

  inited = InitRsrcFunction(*a1, *(a1 + 8), &v10);
  if ((inited & 0x80000000) == 0)
  {
    if (a2 == 10)
    {
      *(a1 + 16 + *(a1 + 1020)) = 0;
      log_OutText(*(v10 + 32), "FE_MOSYNT", 0, 0, "%s", v4, v5, v6, a1 + 16);
      *(a1 + 1020) = 0;
    }

    else
    {
      v8 = *(a1 + 1020);
      if (v8 == 1000)
      {
        *(a1 + 1016) = 0;
        log_OutText(*(v10 + 32), "FE_MOSYNT", 0, 0, "%s", v4, v5, v6, a1 + 16);
        v8 = 0;
        *(a1 + 1020) = 0;
      }

      *(a1 + v8 + 16) = a2;
      ++*(a1 + 1020);
    }
  }

  return inited;
}

uint64_t mosyntpal_WriteString(uint64_t a1, char *a2, int a3)
{
  if (a3 >= 1)
  {
    v5 = a3;
    do
    {
      v7 = *a2++;
      v6 = v7;
      if (!v7)
      {
        break;
      }

      mosyntpal_WriteChar(a1, v6);
      --v5;
    }

    while (v5);
  }

  return 0;
}

uint64_t mosyntpal_WriteCard(uint64_t a1, unsigned int a2)
{
  v9 = *MEMORY[0x277D85DE8];
  LH_utoa(a2, v8, 0xAu);
  v3 = 0;
  do
  {
    v4 = v8[v3];
    v7[v3] = v4;
    if (!v4)
    {
      break;
    }
  }

  while (v3++ != 498);
  mosyntpal_WriteChar(a1, 10);
  return 0;
}

uint64_t wgram_CheckIfExists(_WORD *a1, uint64_t a2, _WORD *a3, int a4, _DWORD *a5)
{
  v26 = *MEMORY[0x277D85DE8];
  v23 = 0;
  v24 = 0;
  memset(v25, 0, sizeof(v25));
  v22 = 0;
  *a5 = 0;
  inited = InitRsrcFunction(a1, a2, &v24);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = InitRsrcFunction(a3, a4, &v23);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = kbaux_BuildBrokerString(v24, "wgram", v25, 0x100uLL);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  RsrcHandleForThisApi = getRsrcHandleForThisApi(v24, a1, a2, a3);
  v13 = wgram_OpenRiffForReading(RsrcHandleForThisApi, v12, v25, &v22);
  v20 = v13;
  if ((v13 & 0x80000000) == 0)
  {
    *a5 = 1;
    return wgram_CloseRiff(&v22, v13, v14, v15, v16, v17, v18, v19);
  }

  if ((v13 & 0x1FFF) == 0xD || (v13 & 0x1FFF) == 3)
  {
    return 0;
  }

  return v20;
}

uint64_t getRsrcHandleForThisApi(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __s1 = 0;
  if ((paramc_ParamGetStr(*(a1 + 40), "clcpppipelinemode", &__s1) & 0x80000000) == 0 && __s1 && *__s1 && cstdlib_strcmp(__s1, "internal"))
  {
    return a2;
  }

  return a4;
}

uint64_t wgram_LoadData(_WORD *a1, uint64_t a2, _WORD *a3, int a4, void *a5)
{
  v27 = *MEMORY[0x277D85DE8];
  v24 = 0;
  v25 = 0;
  memset(v26, 0, sizeof(v26));
  v22 = 0;
  v23 = 0;
  inited = InitRsrcFunction(a1, a2, &v25);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = InitRsrcFunction(a3, a4, &v24);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  if (!a5)
  {
    return 2371887111;
  }

  inited = kbaux_BuildBrokerString(v25, "wgram", v26, 0x100uLL);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  RsrcHandleForThisApi = getRsrcHandleForThisApi(v25, a1, a2, a3);
  inited = wgram_OpenRiffForReading(RsrcHandleForThisApi, v12, v26, &v23);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  ObjcForThisApi = getObjcForThisApi(v25, v24);
  AddRefCountedObject = objc_GetAddRefCountedObject(ObjcForThisApi, v26, wgram_loc_ObjcLoadData, wgram_loc_ObjcUnloadData, v23, &v22);
  if ((AddRefCountedObject & 0x80000000) == 0)
  {
    *a5 = *(v22 + 32);
    return wgram_CloseRiff(&v23, AddRefCountedObject, v15, v16, v17, v18, v19, v20);
  }

  return AddRefCountedObject;
}

uint64_t wgram_loc_ObjcLoadData(_WORD *a1, int a2, const char *a3, uint64_t a4, uint64_t a5)
{
  v7 = wgram_ReadFromRiff(a1, a2, a5, (a4 + 32));
  if ((v7 & 0x80000000) == 0)
  {
    cstdlib_strcpy(*(a4 + 32), a3);
  }

  return v7;
}

uint64_t wgram_loc_ObjcUnloadData(_WORD *a1, int a2, uint64_t a3)
{
  v9 = 0;
  inited = InitRsrcFunction(a1, a2, &v9);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v5 = *(a3 + 32);
  if (!v5)
  {
    return 2371887111;
  }

  v6 = v9;
  v7 = wgram_ReleaseData(v5);
  heap_Free(*(v6 + 8), v5);
  return v7;
}

uint64_t wgram_UnloadData(_WORD *a1, int a2, _WORD *a3, int a4, uint64_t *a5)
{
  if (!a5)
  {
    return 2371887111;
  }

  v10 = 0;
  v11 = 0;
  result = InitRsrcFunction(a1, a2, &v11);
  if ((result & 0x80000000) == 0)
  {
    result = InitRsrcFunction(a3, a4, &v10);
    if ((result & 0x80000000) == 0)
    {
      ObjcForThisApi = getObjcForThisApi(v11, v10);
      return objc_ReleaseObject(ObjcForThisApi, *a5);
    }
  }

  return result;
}

uint64_t wgram_GetStartState(uint64_t a1, _DWORD *a2)
{
  result = 2371887111;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *a2 = *(a1 + 256);
    }
  }

  return result;
}

uint64_t wgram_GetFirstTrans(uint64_t a1, int a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, _DWORD *a6)
{
  result = 2371887111;
  if (a1 && a3 && a4 && a5 && a6)
  {
    *a4 = -1;
    *a5 = -1;
    *a6 = -1;
    if (a2 < 0)
    {
      return 0;
    }

    else
    {
      v8 = (*(a1 + 272) + 4 * (a2 % *(a1 + 264)));
      v10 = *v8;
      v9 = v8[1];
      if (v10 >= v9)
      {
LABEL_12:
        result = 0;
        *a3 = v10 + 1;
        a3[1] = v9;
      }

      else
      {
        v11 = *(a1 + 280);
        v12 = (v10 << 34) | 0x200000000;
        v13 = (v11 + 16 * v10 + 8);
        while (1)
        {
          LODWORD(v10) = v10 + 1;
          if (*v13 == a2)
          {
            break;
          }

          v12 += 0x400000000;
          v13 += 4;
          if (v9 == v10)
          {
            LODWORD(v10) = v9;
            goto LABEL_12;
          }
        }

        result = 0;
        *a3 = v10;
        a3[1] = v9;
        *a4 = *(v11 + (v12 >> 30) - 8);
        *a5 = *(v13 - 1);
        *a6 = *(v11 + ((v12 >> 30) | 4));
      }
    }
  }

  return result;
}