uint64_t fst_getTransductionMode(uint64_t a1, _DWORD *a2)
{
  if (!a1)
  {
    return 2371887111;
  }

  result = 0;
  *a2 = *(a1 + 56);
  return result;
}

uint64_t kblex_LoadOneLex(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v48 = 0;
  v5 = 2371887104;
  *__dst = 0;
  v46 = 0;
  *__s2 = 0;
  v44 = 0;
  *__s1 = 0;
  v41 = 0;
  v42 = 0;
  v40 = 0;
  *a5 = 0;
  v6 = *(a4 + 264);
  if (v6 > 7)
  {
    return v5;
  }

  v12 = off_279DAC508[*(a4 + 264)];
  cstdlib_strcpy(__dst, v12);
  cstdlib_strcpy(__s2, v12);
  v13 = ssftriff_reader_ObjOpen(a1, a2, 2, (a4 + 8), __dst, 1031, &v41);
  if (v13 < 0)
  {
    v21 = v13;
  }

  else
  {
    v21 = ssftriff_reader_OpenChunk(v41, __s1, &v40, &v42);
    if ((v21 & 0x80000000) == 0 && !cstdlib_strcmp(__s1, __s2))
    {
      v39 = 0;
      v21 = ssftriff_reader_DetachChunkData(v41, &v39, &v42);
      if ((v21 & 0x80000000) == 0)
      {
        v22 = v42;
        if (v6 == *v42)
        {
          v23 = *(v42 + 1);
          v24 = heap_Calloc(*(a3 + 8), 1, 296 * v23);
          if (v24)
          {
            v25 = v24;
            if (v23 <= 0)
            {
              cstdlib_strcpy(v24, (a4 + 8));
              goto LABEL_19;
            }

            v26 = v22 + 4;
            v27 = v24 + 260;
            do
            {
              v28 = v26[2];
              *v27 = v26[1];
              v27[4] = v28;
              v29 = v26[3];
              *(v27 + 2) = v29;
              v30 = v26 + 4;
              *(v27 + 12) = v30;
              v31 = v30 + v29;
              *(v27 + 5) = -1;
              *(v27 + 28) = v39;
              v32 = -v29 < 0;
              v33 = -v29 & 3;
              v34 = v29 & 3;
              if (!v32)
              {
                v34 = -v33;
              }

              v35 = &v31[-v34];
              v36 = *(v35 + 1);
              v26 = v35 + 4;
              if (v36 != 1234567890)
              {
                v21 = -1923080192;
              }

              v27 += 296;
              --v23;
            }

            while (v23);
            cstdlib_strcpy(v24, (a4 + 8));
            if ((v21 & 0x80000000) == 0)
            {
              goto LABEL_19;
            }

            ssftriff_reader_ReleaseChunkData(v39);
            heap_Free(*(a3 + 8), v25);
            goto LABEL_18;
          }

          LODWORD(v5) = -1923080182;
        }

        ssftriff_reader_ReleaseChunkData(v39);
        v25 = 0;
        v21 = v5;
        goto LABEL_19;
      }
    }
  }

LABEL_18:
  v25 = 0;
LABEL_19:
  v37 = ssftriff_reader_ObjClose(v41, v14, v15, v16, v17, v18, v19, v20);
  if (v21 >= 0)
  {
    v5 = v37;
  }

  else
  {
    v5 = v21;
  }

  *a5 = v25;
  return v5;
}

uint64_t kblex_loadLex(_WORD *a1, int a2, _WORD *a3, int a4, unsigned int a5, void *a6)
{
  v28 = *MEMORY[0x277D85DE8];
  v21 = 0;
  v22 = 0;
  v20 = 0;
  *__dst = 0;
  v18 = 0;
  *v17 = 0;
  v16 = 0;
  memset(__src, 0, sizeof(__src));
  if (a5 > 7)
  {
    return 2371887104;
  }

  v7 = a5;
  v12 = off_279DAC508[a5];
  v13 = off_279DAC548[a5];
  cstdlib_strcpy(__dst, v12);
  cstdlib_strcpy(v17, v12);
  cstdlib_strcpy(v27, v13);
  result = InitRsrcFunction(a1, a2, &v22);
  if ((result & 0x80000000) != 0 || (result = InitRsrcFunction(a3, a4, &v21), (result & 0x80000000) != 0) || (result = kbaux_BuildBrokerString(v22, v27, __src, 0x100uLL), (result & 0x80000000) != 0) || (v25 = 0, memset(v24, 0, sizeof(v24)), v23 = v22, cstdlib_strcpy(v24, __src), LOWORD(v25) = v7, ObjcForThisApi = getObjcForThisApi(v22, v21), result = objc_GetAddRefCountedObject(ObjcForThisApi, __src, kblex_loc_ObjcLoadLex, kblex_loc_ObjcUnloadLex, &v23, &v16), (result & 0x80000000) != 0))
  {
    *a6 = 0;
  }

  else
  {
    *a6 = *(v16 + 32);
  }

  return result;
}

uint64_t kblex_loc_ObjcLoadLex(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v9 = *a5;
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
  v12 = 0u;
  v13 = 0u;
  memset(v11, 0, sizeof(v11));
  result = InitRsrcFunction(a1, a2, &v36);
  if ((result & 0x80000000) == 0)
  {
    cstdlib_memcpy(v11, v36, 0x1A0uLL);
    v12 = *(v9 + 32);
    return kblex_LoadOneLex(a1, a2, v11, a5, (a4 + 32));
  }

  return result;
}

uint64_t kblex_loc_ObjcUnloadLex(_WORD *a1, int a2, uint64_t a3)
{
  v7 = 0;
  result = InitRsrcFunction(a1, a2, &v7);
  if ((result & 0x80000000) == 0)
  {
    v5 = *(a3 + 32);
    if (v5)
    {
      v6 = v7;
      ssftriff_reader_ReleaseChunkData(*(v5 + 288));
      heap_Free(*(v6 + 8), v5);
      return 0;
    }

    else
    {
      return 2371887111;
    }
  }

  return result;
}

uint64_t kblex_InitLex(_WORD *a1, int a2, _WORD *a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int16 a9, void *a10)
{
  LODWORD(result) = kblex_loadLex(a1, a2, a3, a4, a9, a10);
  if (a9)
  {
    return result;
  }

  else
  {
    return result & ~(result >> 31);
  }
}

uint64_t kblex_FinishLex(_WORD *a1, int a2, _WORD *a3, int a4, uint64_t a5)
{
  v10 = 0;
  v11 = 0;
  result = InitRsrcFunction(a3, a4, &v10);
  if ((result & 0x80000000) == 0)
  {
    result = InitRsrcFunction(a1, a2, &v11);
    if ((result & 0x80000000) == 0)
    {
      ObjcForThisApi = getObjcForThisApi(v11, v10);
      return objc_ReleaseObject(ObjcForThisApi, a5);
    }
  }

  return result;
}

uint64_t kblex_StartLookup(uint64_t a1, uint64_t a2)
{
  v2 = 2371887111;
  if (a1 && a2)
  {
    *a2 = *(a1 + 256);
    *(a2 + 8) = *(a1 + 272);
    v3 = *(a1 + 264);
    *(a2 + 24) = *(a1 + 288);
    *(a2 + 32) = v3;
    *(a2 + 40) = 0;
    *(a2 + 56) = 0;
    (*(*(a1 + 288) + 160))(a2 + 64);
    return 0;
  }

  return v2;
}

uint64_t kblex_LookupChar(unsigned __int8 a1, uint64_t a2, _DWORD *a3)
{
  *a3 = 0;
  if (!a2)
  {
    return 2371887111;
  }

  v10[0] = 0;
  v10[1] = 0;
  v11 = 0;
  v6 = *(a2 + 56);
  v9 = 0;
  if (v6)
  {
    result = (*(*(a2 + 24) + 216))(*(a2 + 8), *(a2 + 16), a2 + 40, &v9);
    *(a2 + 56) = result;
    if (!result)
    {
      return result;
    }

    goto LABEL_9;
  }

  cstdlib_strcpy((a2 + 40), "g2p");
  v8 = *(a2 + 32);
  if (v8)
  {
    cstdlib_strcat((a2 + 40), (v8 + 3 * a1));
  }

  *(a2 + 56) = (*(*(a2 + 24) + 216))(*(a2 + 8), *(a2 + 16), a2 + 40, &v9);
  (*(*(a2 + 24) + 160))(a2 + 64);
  result = *(a2 + 56);
  if (result)
  {
LABEL_9:
    (*(*(a2 + 24) + 176))(v10);
    v12[0] = a1;
    (*(*(a2 + 24) + 192))(*(a2 + 8), *(a2 + 16), *(a2 + 56), a2 + 64, v10, v12, 1);
    result = (*(*(a2 + 24) + 168))(a2 + 64);
    if (result)
    {
      result = 0;
      *a3 = 1;
    }
  }

  return result;
}

uint64_t kblex_GetFirstEntry(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  *a2 = 0;
  result = 2371887111;
  if (a1 && a3)
  {
    *(a3 + 48) = 0;
    (*(*(a1 + 24) + 176))(a3 + 56);
    if (*(a1 + 56))
    {
      v8 = 0uLL;
      v9 = 0;
      v10 = 0;
      v7 = (*(*(a1 + 24) + 216))(*(a1 + 8), *(a1 + 16), a1 + 40, &v10);
      *(a1 + 56) = v7;
      (*(*(a1 + 24) + 192))(*(a1 + 8), *(a1 + 16), v7, a1 + 64, &v8, "", 0);
      result = (*(*(a1 + 24) + 168))(a1 + 64);
      if (!result)
      {
        return result;
      }

      *a3 = *a1;
      *(a3 + 8) = *(a1 + 8);
      *(a3 + 24) = *(a1 + 24);
      cstdlib_strcpy((a3 + 32), (a1 + 40));
      *(a3 + 48) = *(a1 + 56);
      *(a3 + 72) = v9;
      *(a3 + 56) = v8;
      getValidEntry(a3, a2);
    }

    return 0;
  }

  return result;
}

uint64_t getValidEntry(uint64_t result, _DWORD *a2)
{
  v2 = result;
  v12 = *MEMORY[0x277D85DE8];
  *a2 = 0;
  if (!*(result + 48))
  {
    goto LABEL_19;
  }

  v4 = 1;
  v7 = 1;
  while (1)
  {
    result = (*(v2[3] + 184))(v2 + 7);
    if (!result || v4 == 0)
    {
      break;
    }

    result = getEntryContents(v2, v11, 150, v10, 500, &v8, v9, &v7);
    v4 = v7;
    if (v7)
    {
      if ((v6 = *v2, !*v2) && v9[0] == 48 || v6 == 1 && (v9[0] & 0xFD) != 0x30 || v6 == 2 && v9[0] == 50)
      {
        *a2 = 1;
        return result;
      }
    }

    if (!*a2)
    {
      result = (*(v2[3] + 208))(v2[6], v2 + 7);
      if (!*a2)
      {
        continue;
      }
    }

    return result;
  }

  if (!*a2)
  {
LABEL_19:
    v2[6] = 0;
  }

  return result;
}

uint64_t kblex_GetNextEntry(_DWORD *a1, void *a2)
{
  result = 2371887111;
  *a1 = 0;
  if (a2)
  {
    if (a2[6])
    {
      v5 = 0;
      a2[6] = (*(a2[3] + 216))(a2[1], a2[2], a2 + 4, &v5);
      (*(a2[3] + 208))();
      getValidEntry(a2, a1);
      return 0;
    }
  }

  return result;
}

uint64_t kblex_FinishEntrySearch(uint64_t a1)
{
  if (a1)
  {
    *(a1 + 48) = 0;
  }

  return 0;
}

uint64_t kblex_GetEntryGraph(int a1, char *__dst, unsigned int a3)
{
  v4 = a3 - 1;
  cstdlib_strncpy(__dst, "???", v4);
  __dst[v4] = 0;
  return 0;
}

uint64_t kblex_GetEntryPhon(void *a1, _BYTE *a2, int a3)
{
  v9 = *MEMORY[0x277D85DE8];
  *a2 = 0;
  if (a1)
  {
    if (a1[6])
    {
      v5 = 0;
      getEntryContents(a1, a2, a3, v8, 500, &v6, v7, &v5);
      if (!v5)
      {
        *a2 = 0;
      }
    }
  }

  return 0;
}

BOOL kblex_IsValidEntry(_BOOL8 result)
{
  if (result)
  {
    return *(result + 48) != 0;
  }

  return result;
}

uint64_t getEntryContents(void *a1, _BYTE *a2, int a3, _BYTE *a4, int a5, _DWORD *a6, uint64_t a7, _DWORD *a8)
{
  v47 = *MEMORY[0x277D85DE8];
  v42 = v45;
  v41 = 0;
  v40 = 0;
  v39 = 0;
  v16 = (*(a1[3] + 216))(a1[1], a1[2], a1 + 4, &v39);
  a1[6] = v16;
  result = (*(a1[3] + 200))(a1[1], a1[2], v16, a1 + 7, &v42, &v41, &v40 + 1, &v40);
  v18 = v40;
  *a8 = v40;
  if (!v18)
  {
    *a2 = 0;
    *a4 = 0;
    *a6 = 0;
    return result;
  }

  v42[v41] = 0;
  v19 = HIBYTE(v40);
  v44 = 0;
  getSubstrToSep2(v45, &v44, HIBYTE(v40), HIBYTE(v40), &v43, a2, a3);
  v20 = v44;
  if (!v45[v44] || v45[v44] == v19)
  {
    if (!v45[v44])
    {
      goto LABEL_12;
    }

LABEL_11:
    v44 = ++v20;
    goto LABEL_12;
  }

  v21 = &v45[v44 + 1];
  do
  {
    v23 = *v21++;
    v22 = v23;
    ++v20;
  }

  while (v23 && v22 != v19);
  v44 = v20;
  if (v22)
  {
    goto LABEL_11;
  }

LABEL_12:
  if (!v45[v20] || v45[v20] == v19)
  {
    if (!v45[v20])
    {
      goto LABEL_21;
    }

LABEL_20:
    v44 = ++v20;
    goto LABEL_21;
  }

  v24 = &v45[v20 + 1];
  do
  {
    v26 = *v24++;
    v25 = v26;
    ++v20;
  }

  while (v26 && v25 != v19);
  v44 = v20;
  if (v25)
  {
    goto LABEL_20;
  }

LABEL_21:
  if (!v45[v20] || v45[v20] == v19)
  {
    if (!v45[v20])
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v27 = &v45[v20 + 1];
  do
  {
    v29 = *v27++;
    v28 = v29;
    ++v20;
  }

  while (v29 && v28 != v19);
  v44 = v20;
  if (v28)
  {
LABEL_29:
    v44 = ++v20;
  }

LABEL_30:
  v30 = v45[v20];
  if (v30 == v19)
  {
    v30 = v19;
  }

  else if (v45[v20] && v45[v20] != 33)
  {
    v31 = v20 + 1;
    v32 = &v45[v20 + 1];
    while (1)
    {
      v20 = v31;
      v33 = *v32++;
      v30 = v33;
      v34 = v33;
      if (v33 == v19)
      {
        break;
      }

      ++v31;
      if (v34 == 33 || v34 == 0)
      {
        goto LABEL_43;
      }
    }

    v30 = v19;
LABEL_43:
    v44 = v20;
  }

  if (!v30 || (++v20, v44 = v20, v30 != 33))
  {
    *a4 = 0;
    if (!v45[v20] || v45[v20] == v19)
    {
      if (!v45[v20])
      {
        goto LABEL_56;
      }
    }

    else
    {
      v36 = &v45[v20 + 1];
      do
      {
        v38 = *v36++;
        v37 = v38;
        ++v20;
      }

      while (v38 && v37 != v19);
      v44 = v20;
      if (!v37)
      {
        goto LABEL_56;
      }
    }

    v44 = v20 + 1;
    goto LABEL_56;
  }

  getSubstrToSep2(v45, &v44, v19, v19, &v43, a4, a5);
LABEL_56:
  getSubstrToSep2(v45, &v44, v19, v19, &v43, v46, 10);
  *a6 = LH_atoi(v46);
  return getSubstrToSep2(v45, &v44, v19, v19, &v43, a7, 10);
}

uint64_t kblex_GetEntryCost(void *a1, _DWORD *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  *a2 = 0;
  if (a1)
  {
    if (a1[6])
    {
      v4 = 0;
      getEntryContents(a1, v7, 150, v6, 500, a2, v5, &v4);
      if (!v4)
      {
        *a2 = 0;
      }
    }
  }

  return 0;
}

uint64_t kblex_GetEntryCostAndConsList(void *a1, _DWORD *a2, _BYTE *a3, int a4)
{
  v10 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  *a2 = 0;
  if (a1)
  {
    if (a1[6])
    {
      v7 = 0;
      getEntryContents(a1, v9, 150, a3, a4, a2, v8, &v7);
      if (!v7)
      {
        *a3 = 0;
        *a2 = 0;
      }
    }
  }

  return 0;
}

uint64_t kblex_GetNilEntry(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 32) = 0;
  *(a1 + 48) = 0;
  return 0;
}

uint64_t getSubstrToSep2(uint64_t result, int *a2, unsigned __int8 a3, unsigned __int8 a4, _BYTE *a5, uint64_t a6, int a7)
{
  v7 = *a2;
  v8 = *(result + v7);
  if (*(result + v7))
  {
    v9 = v8 == a3;
  }

  else
  {
    v9 = 1;
  }

  if (v9 || v8 == a4)
  {
    v11 = 0;
  }

  else
  {
    v12 = 0;
    do
    {
      if (v12 < a7 - 1)
      {
        *(a6 + v12++) = v8;
        LODWORD(v7) = *a2;
      }

      v7 = v7 + 1;
      *a2 = v7;
      v8 = *(result + v7);
      if (*(result + v7))
      {
        v13 = v8 == a3;
      }

      else
      {
        v13 = 1;
      }
    }

    while (!v13 && v8 != a4);
    v11 = v12;
  }

  *a5 = v8;
  if (v8)
  {
    ++*a2;
  }

  *(a6 + v11) = 0;
  return result;
}

uint64_t mosyntsentana_InsertTerminalEdge(uint64_t a1, int *a2, signed int a3, signed int a4, signed int a5, uint64_t a6, uint64_t a7, int a8)
{
  v8 = a3;
  v36 = *MEMORY[0x277D85DE8];
  if (a3 < 0)
  {
    v11 = "tried to insert terminal sentence edge starting at position ";
    a4 = a3;
    goto LABEL_33;
  }

  v10 = a4;
  if (a4 >= 5001)
  {
    v11 = "impossible to insert terminal sentence edge ending at position ";
LABEL_33:

    return mosyntbase_WInt3Ln(a1, v11, 0, a4, "", 0);
  }

  v12 = a5;
  if (a5 < 0)
  {
    v11 = "tried to insert terminal sentence edge with constituent id < 0: ";
    a4 = a5;
    goto LABEL_33;
  }

  v17 = a2[10010];
  v18 = v17 < a3;
  if (v17 <= a3)
  {
    v17 = a3;
  }

  if (v18 || v17 < a4)
  {
    if (v17 <= a4)
    {
      v17 = a4;
    }

    a2[10010] = v17;
  }

  v20 = &a2[2 * a3 + 8];
  if (!*v20)
  {
    result = mosyntpal_ALLOCATE(a1, &a2[2 * a3 + 8], 0x130u);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    v22 = *v20;
    v22[17] = 0u;
    v22[18] = 0u;
    v22[15] = 0u;
    v22[16] = 0u;
    v22[13] = 0u;
    v22[14] = 0u;
    v22[11] = 0u;
    v22[12] = 0u;
    v22[9] = 0u;
    v22[10] = 0u;
    v22[7] = 0u;
    v22[8] = 0u;
    v22[5] = 0u;
    v22[6] = 0u;
    v22[3] = 0u;
    v22[4] = 0u;
    v22[1] = 0u;
    v22[2] = 0u;
    *v22 = 0u;
  }

  v23 = &a2[2 * v10 + 8];
  if (!*v23)
  {
    result = mosyntpal_ALLOCATE(a1, &a2[2 * v10 + 8], 0x130u);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    v24 = *v23;
    v24[17] = 0u;
    v24[18] = 0u;
    v24[15] = 0u;
    v24[16] = 0u;
    v24[13] = 0u;
    v24[14] = 0u;
    v24[11] = 0u;
    v24[12] = 0u;
    v24[9] = 0u;
    v24[10] = 0u;
    v24[7] = 0u;
    v24[8] = 0u;
    v24[5] = 0u;
    v24[6] = 0u;
    v24[3] = 0u;
    v24[4] = 0u;
    v24[1] = 0u;
    v24[2] = 0u;
    *v24 = 0u;
  }

  v33 = 0;
  memset(v34, 0, sizeof(v34));
  v35 = 0;
  ++a2[25026];
  result = mosyntpal_ALLOCATE(a1, &v33, 0x78u);
  if ((result & 0x80000000) == 0)
  {
    v25 = v33;
    v33[12] = v8;
    v25[13] = v10;
    v25[14] = v12;
    v26 = *(a6 + 16);
    *(v25 + 2) = *a6;
    *(v25 + 6) = v26;
    *(v25 + 58) = 1;
    *(v25 + 8) = a7;
    result = mosyntkbsgram_NilIter(v25 + 10);
    if ((result & 0x80000000) == 0)
    {
      v27 = v33;
      *(v33 + 24) = a8;
      *(v27 + 57) = 0;
      *(v27 + 13) = 0;
      *(v27 + 112) = 0;
      v28 = *v23;
      v29 = (v27[14] - 37 * ((((7085 * v27[14]) >> 16) >> 2) + (((7085 * v27[14]) >> 16) >> 15)));
      *v27 = *(*v23 + 8 * v29);
      v30 = v33;
      *(v28 + v29) = v33;
      *(v30 + 2) = 0;
      *(v30 + 56) = 0;
      v31 = *(*v20 + 296);
      if (v31)
      {
        v32 = *(*v20 + 296);
        while (*(v32 + 28) != v30[14])
        {
          v32 = *(v32 + 8);
          if (!v32)
          {
            goto LABEL_28;
          }
        }
      }

      else
      {
LABEL_28:
        *(v30 + 1) = v31;
        *(*v20 + 296) = v30;
      }

      if (*a2 >= 3)
      {
        m2__cp__str("inserted terminal edge", v34, 100);
        return WriteEdge(a1, a2, v34, 100, v33);
      }
    }
  }

  return result;
}

uint64_t WriteEdge(uint64_t a1, uint64_t a2, unsigned __int8 *a3, int a4, __int16 *a5)
{
  result = mosyntbase_WString(a1, a3, a4);
  if (a5)
  {
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    result = mosyntbase_WString(a1, " ", 0);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    result = mosyntkbsymtab_WriteConsAndFeat(a1, *(a2 + 8), a5[14], a5 + 16);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    result = mosyntbase_WString(a1, " from pos ", 0);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    result = mosyntbase_WInt(a1, a5[12], 0);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    result = mosyntbase_WString(a1, " to pos ", 0);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    result = mosyntbase_WInt(a1, a5[13], 0);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }
  }

  else
  {
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    result = mosyntbase_WString(a1, " NIL", 0);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }
  }

  return mosyntbase_WLn(a1);
}

uint64_t mosyntsentana_CreateAndInitParseDesc(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5, uint64_t *a6)
{
  v28 = *MEMORY[0x277D85DE8];
  result = mosyntpal_ALLOCATE(a1, a6, 0x18728u);
  if ((result & 0x80000000) == 0)
  {
    v13 = *a6;
    *v13 = a2;
    *(v13 + 8) = a3;
    *(*a6 + 16) = a4;
    v14 = *a6;
    *(v14 + 24) = a5;
    *(v14 + 100112) = 0;
    *(v14 + 100120) = 0;
    *(v14 + 100104) = 0;
    result = mosyntknowl_NewBindingDesc(a1, (v14 + 100128));
    if ((result & 0x80000000) == 0)
    {
      v15 = 0;
      v16 = *a6;
      v17 = 80056;
      do
      {
        *(v16 + v15 + 32) = 0;
        *(*a6 + v15 + 40048) = 0;
        v16 = *a6;
        *(*a6 + v17) = 0;
        v17 += 4;
        v15 += 8;
      }

      while (v15 != 40008);
      result = mosyntpal_ALLOCATE(a1, (v16 + 32), 0x130u);
      if ((result & 0x80000000) == 0)
      {
        v18 = *(v16 + 32);
        v18[17] = 0u;
        v18[18] = 0u;
        v18[15] = 0u;
        v18[16] = 0u;
        v18[13] = 0u;
        v18[14] = 0u;
        v18[11] = 0u;
        v18[12] = 0u;
        v18[9] = 0u;
        v18[10] = 0u;
        v18[7] = 0u;
        v18[8] = 0u;
        v18[5] = 0u;
        v18[6] = 0u;
        v18[3] = 0u;
        v18[4] = 0u;
        v18[1] = 0u;
        v18[2] = 0u;
        *v18 = 0u;
        v19 = *a6;
        v21 = 0u;
        v22 = 0u;
        v20 = 0;
        v27 = 0;
        v26 = 0u;
        v25 = 0;
        v24 = 0u;
        v23 = 0;
        *(v19 + 100064) = 0u;
        result = mosyntkbsgram_GetFirstEmptyRule(*(v19 + 16), &v21, &v20);
        if ((result & 0x80000000) == 0)
        {
          while (v20 >= 1)
          {
            result = mosyntkbsgram_GetRuleFeatLists(&v21, &v26, &v24, &v22);
            if ((result & 0x80000000) == 0)
            {
              result = InsertRuleEdge(a1, v19, v20, &v26, 0, 0, 0, 0, &v21);
              if ((result & 0x80000000) == 0)
              {
                result = mosyntkbsgram_GetNextEmptyRule(*(v19 + 16), &v21, &v20);
                if ((result & 0x80000000) == 0)
                {
                  continue;
                }
              }
            }

            return result;
          }

          result = ParseAndOptimizePosition(a1, v19, 0, 0);
          if ((result & 0x80000000) == 0)
          {
            *(*a6 + 40040) = 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t mosyntsentana_DisposeParseDesc(uint64_t a1, uint64_t *a2)
{
  if (!*a2)
  {
    return 0;
  }

  result = mosyntknowl_DisposeBindingDesc(a1, (*a2 + 100128));
  if ((result & 0x80000000) == 0)
  {
    v10 = 0;
    v5 = *a2;
    if ((*(*a2 + 40040) & 0x80000000) == 0)
    {
      v6 = 0;
      do
      {
        if (*(v5 + 8 * v6 + 32))
        {
          for (i = 0; i != 37; ++i)
          {
            v8 = *(*(*a2 + 8 * v6 + 32) + 8 * i);
            while (1)
            {
              v10 = v8;
              if (!v8)
              {
                break;
              }

              v8 = *v8;
              result = DisposeEdge(a1, &v10);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }
            }
          }

          result = mosyntpal_DEALLOCATE(a1, (*a2 + 8 * v6 + 32));
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v5 = *a2;
        }
      }

      while (v6++ < *(v5 + 40040));
    }

    return mosyntpal_DEALLOCATE(a1, a2);
  }

  return result;
}

uint64_t DisposeEdge(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  if (*(*a2 + 58) && *(v4 + 64))
  {
    result = mosyntdata_DisposeTermInfo(a1, (v4 + 64));
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    v4 = *a2;
  }

  v6 = *(v4 + 104);
  while (1)
  {
    v7 = v6;
    if (!v6)
    {
      break;
    }

    v6 = *v6;
    result = mosyntpal_DEALLOCATE(a1, &v7);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }
  }

  return mosyntpal_DEALLOCATE(a1, a2);
}

uint64_t mosyntsentana_DoParse(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40040);
  if (v2 < 1)
  {
    return 0;
  }

  v5 = 0;
  result = 0;
  v7 = a2 + 80056;
  v8 = a2 + 80060;
  do
  {
    v9 = v5 + 1;
    *(v8 + 4 * v5) = *(v7 + 4 * v5) + 1000;
    if (*(a2 + 8 * v5 + 40))
    {
      result = ParseAndOptimizePosition(a1, a2, v5 + 1, v9 == v2);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v2 = *(a2 + 40040);
    }

    v5 = v9;
  }

  while (v9 < v2);
  return result;
}

uint64_t ParseAndOptimizePosition(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v69[3] = *MEMORY[0x277D85DE8];
  v11 = a2 + 100064;
  v12 = (a2 + 32);
  *(a2 + 100096) = 0;
  *(a2 + 100064) = 0u;
  *(a2 + 100080) = 0u;
  do
  {
    v13 = *(v12[a3] + 8 * v10);
    if (v13)
    {
      do
      {
        v14 = v13;
        v13[2] = 0;
        if (v9)
        {
          v15 = v9 + 2;
        }

        else
        {
          v15 = (a2 + 100064);
        }

        *v15 = v13;
        *(a2 + 100072) = v13;
        *(v13 + 56) = 1;
        ++v8;
        v13 = *v13;
        v9 = v14;
      }

      while (*v14);
      *(a2 + 100080) = v8;
      v9 = v14;
    }

    ++v10;
  }

  while (v10 != 37);
  v62[0] = 0;
  v62[1] = 0;
  v61 = 0;
  v60 = 0;
  v59 = 0;
  if (*a2 >= 3)
  {
    FirstRuleSameLast = mosyntbase_WInt3Ln(a1, "treating agenda in position ", 0, a3, "", 0);
    if ((FirstRuleSameLast & 0x80000000) != 0)
    {
      return FirstRuleSameLast;
    }
  }

  v57 = a4;
  v17 = *v11;
  if (*v11)
  {
    v18 = 0;
    memset(v69, 0, 24);
    v67 = 0;
    v68[0] = 0;
    v66 = 0;
    *(v68 + 6) = 0;
    memset(v65, 0, sizeof(v65));
    memset(v64, 0, sizeof(v64));
    memset(v63, 0, sizeof(v63));
    do
    {
      v19 = *(v17 + 16);
      *v11 = v19;
      if (!v19)
      {
        *(v11 + 8) = 0;
      }

      *(v17 + 56) = 0;
      *(v17 + 16) = 0;
      if (*a2 >= 3)
      {
        m2__cp__str("  treating agenda edge", &v66, 30);
        FirstRuleSameLast = WriteEdge(a1, a2, &v66, 30, v17);
        if ((FirstRuleSameLast & 0x80000000) != 0)
        {
          return FirstRuleSameLast;
        }
      }

      FirstRuleSameLast = mosyntkbsgram_GetFirstRuleSameLast(*(a2 + 16), *(v17 + 28), v62, &v60, &v59 + 4, &v59);
      if ((FirstRuleSameLast & 0x80000000) != 0)
      {
        return FirstRuleSameLast;
      }

      while (v60 >= 1)
      {
        FirstRuleSameLast = mosyntkbsgram_GetRuleFeatLists(v62, v65, v64, v63);
        if ((FirstRuleSameLast & 0x80000000) != 0)
        {
          return FirstRuleSameLast;
        }

        if (v18 < 0)
        {
          FirstRuleSameLast = mosyntpal_CheckInterrupt();
          if ((FirstRuleSameLast & 0x80000000) != 0)
          {
            return FirstRuleSameLast;
          }

          v18 = 1000;
        }

        else
        {
          --v18;
        }

        v20 = *a2;
        if (v59)
        {
          if (v20 >= 3)
          {
            FirstRuleSameLast = mosyntbase_WString(a1, "    looking for left edge ", 0);
            if ((FirstRuleSameLast & 0x80000000) != 0)
            {
              return FirstRuleSameLast;
            }

            FirstRuleSameLast = mosyntkbsymtab_WriteCons(a1, *(a2 + 8), HIDWORD(v59));
            if ((FirstRuleSameLast & 0x80000000) != 0)
            {
              return FirstRuleSameLast;
            }

            FirstRuleSameLast = mosyntbase_WString(a1, " to complete ", 0);
            if ((FirstRuleSameLast & 0x80000000) != 0)
            {
              return FirstRuleSameLast;
            }

            FirstRuleSameLast = mosyntkbsymtab_WriteCons(a1, *(a2 + 8), v60);
            if ((FirstRuleSameLast & 0x80000000) != 0)
            {
              return FirstRuleSameLast;
            }

            FirstRuleSameLast = mosyntbase_WLn(a1);
            if ((FirstRuleSameLast & 0x80000000) != 0)
            {
              return FirstRuleSameLast;
            }
          }

          v21 = HIDWORD(v59);
          FirstRuleSameLast = mosyntkbsgram_GetRuleFeatLists(v62, v65, v64, v63);
          if ((FirstRuleSameLast & 0x80000000) != 0)
          {
            return FirstRuleSameLast;
          }

          v22 = v21 % 37;
          v23 = *(v17 + 24);
          if (v23 <= 0)
          {
            v24 = v22;
          }

          else
          {
            v24 = v22;
            for (i = *(v12[v23] + 8 * v22); i; i = *i)
            {
              if (HIDWORD(v59) == *(i + 28))
              {
                v26 = *a2;
                if (*a2 >= 3)
                {
                  FirstRuleSameLast = mosyntbase_WStringLn(a1, "      found left edge; trying unification", 0);
                  if ((FirstRuleSameLast & 0x80000000) != 0)
                  {
                    return FirstRuleSameLast;
                  }

                  v26 = *a2;
                }

                FirstRuleSameLast = mosyntknowl_Unif2(a1, *(a2 + 8), v26, *(v11 + 64), v64, (i + 32), v63, (v17 + 32), v65, v69, &v61);
                if ((FirstRuleSameLast & 0x80000000) != 0)
                {
                  return FirstRuleSameLast;
                }

                if (v61)
                {
                  FirstRuleSameLast = InsertRuleEdge(a1, a2, v60, v69, *(i + 24), a3, i, v17, v62);
                  if ((FirstRuleSameLast & 0x80000000) != 0)
                  {
                    return FirstRuleSameLast;
                  }
                }
              }
            }
          }

          for (j = *(*v12 + 8 * v24); j; j = *j)
          {
            if (HIDWORD(v59) == *(j + 28))
            {
              v28 = *a2;
              if (*a2 >= 3)
              {
                FirstRuleSameLast = mosyntbase_WStringLn(a1, "      found left edge; trying unification", 0);
                if ((FirstRuleSameLast & 0x80000000) != 0)
                {
                  return FirstRuleSameLast;
                }

                v28 = *a2;
              }

              FirstRuleSameLast = mosyntknowl_Unif2(a1, *(a2 + 8), v28, *(v11 + 64), v64, (j + 32), v63, (v17 + 32), v65, v69, &v61);
              if ((FirstRuleSameLast & 0x80000000) != 0)
              {
                return FirstRuleSameLast;
              }

              if (v61)
              {
                FirstRuleSameLast = InsertRuleEdge(a1, a2, v60, v69, *(v17 + 24), a3, j, v17, v62);
                if ((FirstRuleSameLast & 0x80000000) != 0)
                {
                  return FirstRuleSameLast;
                }
              }
            }
          }
        }

        else
        {
          if (v20 >= 3)
          {
            FirstRuleSameLast = mosyntbase_WString(a1, "    trying to directly complete ", 0);
            if ((FirstRuleSameLast & 0x80000000) != 0)
            {
              return FirstRuleSameLast;
            }

            FirstRuleSameLast = mosyntkbsymtab_WriteCons(a1, *(a2 + 8), v60);
            if ((FirstRuleSameLast & 0x80000000) != 0)
            {
              return FirstRuleSameLast;
            }

            FirstRuleSameLast = mosyntbase_WLn(a1);
            if ((FirstRuleSameLast & 0x80000000) != 0)
            {
              return FirstRuleSameLast;
            }

            v20 = *a2;
          }

          FirstRuleSameLast = mosyntknowl_Unif (a1, *(a2 + 8), v20, *(v11 + 64), v64, (v17 + 32), v65, v69, &v61);
          if ((FirstRuleSameLast & 0x80000000) != 0)
          {
            return FirstRuleSameLast;
          }

          if (v61)
          {
            FirstRuleSameLast = InsertRuleEdge(a1, a2, v60, v69, *(v17 + 24), a3, v17, 0, v62);
            if ((FirstRuleSameLast & 0x80000000) != 0)
            {
              return FirstRuleSameLast;
            }
          }
        }

        FirstRuleSameLast = mosyntkbsgram_GetNextRuleSameLast(*(a2 + 16), *(v17 + 28), v62, &v60, &v59 + 1, &v59);
        if ((FirstRuleSameLast & 0x80000000) != 0)
        {
          return FirstRuleSameLast;
        }
      }

      if (mosyntkbsgram_HasEmptyRules(*(a2 + 16)))
      {
        FirstRuleSameLast = mosyntkbsgram_GetFirstRuleSameFirst(*(a2 + 16), *(v17 + 28), v62, &v60, &v59 + 4, &v59);
        if ((FirstRuleSameLast & 0x80000000) != 0)
        {
          return FirstRuleSameLast;
        }

        while (v60 >= 1)
        {
          FirstRuleSameLast = mosyntkbsgram_GetRuleFeatLists(v62, v65, v64, v63);
          if ((FirstRuleSameLast & 0x80000000) != 0)
          {
            return FirstRuleSameLast;
          }

          v29 = v59;
          if (v59 >= 1)
          {
            if (*a2 >= 3)
            {
              FirstRuleSameLast = mosyntbase_WString(a1, "    looking for empty right edge ", 0);
              if ((FirstRuleSameLast & 0x80000000) != 0)
              {
                return FirstRuleSameLast;
              }

              FirstRuleSameLast = mosyntkbsymtab_WriteCons(a1, *(a2 + 8), v59);
              if ((FirstRuleSameLast & 0x80000000) != 0)
              {
                return FirstRuleSameLast;
              }

              FirstRuleSameLast = mosyntbase_WString(a1, " to complete ", 0);
              if ((FirstRuleSameLast & 0x80000000) != 0)
              {
                return FirstRuleSameLast;
              }

              FirstRuleSameLast = mosyntkbsymtab_WriteCons(a1, *(a2 + 8), v60);
              if ((FirstRuleSameLast & 0x80000000) != 0)
              {
                return FirstRuleSameLast;
              }

              FirstRuleSameLast = mosyntbase_WLn(a1);
              if ((FirstRuleSameLast & 0x80000000) != 0)
              {
                return FirstRuleSameLast;
              }

              v29 = v59;
            }

            for (k = *(*v12 + 8 * (v29 % 37)); k; k = *k)
            {
              if (v18 < 0)
              {
                FirstRuleSameLast = mosyntpal_CheckInterrupt();
                if ((FirstRuleSameLast & 0x80000000) != 0)
                {
                  return FirstRuleSameLast;
                }

                v18 = 1000;
              }

              else
              {
                --v18;
              }

              if (v59 == *(k + 28))
              {
                v31 = *a2;
                if (*a2 >= 3)
                {
                  FirstRuleSameLast = mosyntbase_WStringLn(a1, "      found empty right edge; trying unification ", 0);
                  if ((FirstRuleSameLast & 0x80000000) != 0)
                  {
                    return FirstRuleSameLast;
                  }

                  v31 = *a2;
                }

                FirstRuleSameLast = mosyntknowl_Unif2(a1, *(a2 + 8), v31, *(v11 + 64), v64, (v17 + 32), v63, (k + 32), v65, v69, &v61);
                if ((FirstRuleSameLast & 0x80000000) != 0)
                {
                  return FirstRuleSameLast;
                }

                if (v61)
                {
                  FirstRuleSameLast = InsertRuleEdge(a1, a2, v60, v69, *(v17 + 24), a3, v17, k, v62);
                  if ((FirstRuleSameLast & 0x80000000) != 0)
                  {
                    return FirstRuleSameLast;
                  }
                }
              }
            }
          }

          FirstRuleSameLast = mosyntkbsgram_GetNextRuleSameFirst(*(a2 + 16), *(v17 + 28), v62, &v60, &v59 + 1, &v59);
          if ((FirstRuleSameLast & 0x80000000) != 0)
          {
            return FirstRuleSameLast;
          }
        }
      }

      v17 = *v11;
    }

    while (*v11);
  }

  v66 = 0;
  v67 = 0;
  LOBYTE(v65[0]) = 0;
  LODWORD(v69[0]) = 0;
  RuleVisAndCost = mosyntkbsgram_NilIter(&v66);
  if ((RuleVisAndCost & 0x80000000) == 0)
  {
    if (a3)
    {
      if (a3 >= 1)
      {
        v33 = 0;
        v54 = 0;
        v34 = 0;
        v35 = 0;
        v58 = a2 + 80056;
        v55 = 0;
        v56 = a2 + 40048;
        while (1)
        {
          v36 = *(v12[a3] + 8 * v33);
          if (v36)
          {
            break;
          }

LABEL_123:
          if (++v33 == 37)
          {
            if (v34 || (v34 = v55, v35 = v54, v55))
            {
              *(v56 + 8 * a3) = v34;
              *(v58 + 4 * a3) = v35;
            }

            if (!v57 && (RuleVisAndCost & 0x80000000) == 0 && mosyntkbsgram_HasSimpleFollowRel(*(a2 + 16)))
            {
              FixEdgeAndSubEdges(*(v56 + 8 * a3));
              for (m = 0; m != 37; ++m)
              {
                for (n = *(v12[a3] + 8 * m); n; n = *n)
                {
                  if (!*(n + 57))
                  {
                    v47 = *(v12[a3] + 296);
                    if (v47)
                    {
                      while (!mosyntkbsgram_IsFollowerCons(*(a2 + 16), *(v47 + 28), *(n + 28)))
                      {
                        v47 = *(v47 + 8);
                        if (!v47)
                        {
                          goto LABEL_133;
                        }
                      }

                      FixEdgeAndSubEdges(n);
                    }
                  }

LABEL_133:
                  ;
                }
              }

              v48 = 0;
              RuleVisAndCost = 0;
              v66 = 0;
              do
              {
                v49 = v12[a3];
                v50 = *(v49 + 8 * v48);
                v66 = v50;
                v51 = 0;
                if (v50)
                {
                  do
                  {
                    v52 = *v50;
                    if (*(v50 + 57))
                    {
                      *v50 = v51;
                      v51 = v66;
                    }

                    else
                    {
                      ++*(v11 + 36);
                      ++*(v11 + 60);
                      if (*(v50 + 58))
                      {
                        --*(v11 + 40);
                      }

                      else
                      {
                        --*(v11 + 44);
                      }

                      RuleVisAndCost = DisposeEdge(a1, &v66);
                      if ((RuleVisAndCost & 0x80000000) != 0)
                      {
                        return RuleVisAndCost;
                      }
                    }

                    v66 = v52;
                    v50 = v52;
                  }

                  while (v52);
                  v49 = v12[a3];
                }

                *(v49 + 8 * v48++) = v51;
              }

              while (v48 != 37);
            }

            return RuleVisAndCost;
          }
        }

        while (1)
        {
          RuleVisAndCost = mosyntkbsgram_GetRuleVisAndCost(v36 + 20, v65, v69);
          if ((RuleVisAndCost & 0x80000000) != 0)
          {
            break;
          }

          if (mosyntkbsgram_IsNilIter(v36 + 10) || !LOBYTE(v65[0]))
          {
            v37 = *(v36 + 12);
            v38 = *(v58 + 4 * v37) + *(v36 + 24) + 1000;
            if (*(v36 + 12) && !*(v56 + 8 * v37))
            {
              v41 = v55;
              v42 = v54;
              if (v55)
              {
                v43 = v38 < v54;
              }

              else
              {
                v43 = 1;
              }

              v44 = v43;
              if (v44)
              {
                v42 = v38;
              }

              v54 = v42;
              if (v44)
              {
                v41 = v36;
              }

              v55 = v41;
            }

            else
            {
              if (v34)
              {
                v39 = v38 < v35;
              }

              else
              {
                v39 = 1;
              }

              if (v39)
              {
                v35 = v38;
                v34 = v36;
              }
            }
          }

          v36 = *v36;
          if (!v36)
          {
            goto LABEL_123;
          }
        }
      }
    }

    else
    {
      *(a2 + 40048) = 0;
      *(a2 + 80056) = 0;
    }
  }

  return RuleVisAndCost;
}

void mosyntsentana_GetOptimalTree(uint64_t a1, uint64_t a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a2 + 36864;
  v7 = *(a2 + 40040);
  v20 = 0;
  __b = 0uLL;
  v22 = 0;
  cstdlib_memset(&__b, 0, 0x18uLL);
  started = mosyntkbsgram_StartCons(*(a2 + 16));
  v9 = started;
  v10 = *(*(a2 + 8 * v7 + 32) + 8 * (started % 37));
  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = 0;
  do
  {
    if (started == *(v10 + 28) && !*(v10 + 24) && (!v11 || *(v10 + 96) < *(v11 + 96)))
    {
      v11 = v10;
    }

    v10 = *v10;
  }

  while (v10);
  if (v11)
  {
    if ((mosyntdata_StartNodeList(a1, a3, &v20) & 0x80000000) == 0)
    {
      AppendTree(a1, v11, a3, &v20);
    }
  }

  else
  {
LABEL_13:
    if (*a2 < 1 || (mosyntbase_WStringLn(a1, "no syntactic analysis found; creating artificial tree", 0) & 0x80000000) == 0)
    {
      if (v7 >= 1)
      {
        v12 = a2 + 40048;
        v13 = v7;
        v14 = v7;
        do
        {
          v15 = *(v12 + 8 * v13);
          if (v15)
          {
            v13 = *(v15 + 24);
            if (v13 + 1 < v14)
            {
              bzero((a2 + 40056 + 8 * v13), 8 * (v14 - v13 - 2) + 8);
            }
          }

          else
          {
            *(v12 + 8 * v14) = 0;
            v13 = (v14 - 1);
          }

          v14 = v13;
        }

        while (v13 > 0);
      }

      if ((mosyntdata_StartNodeList(a1, a3, &v20) & 0x80000000) == 0)
      {
        __b.n128_u16[0] = 0;
        mosyntdata_AddNode(a1, a3, &v20, 1, v9, &__b);
        if ((v16 & 0x80000000) == 0)
        {
          v17 = v20;
          v20[6] = *(a2 + 4 * v7 + 80056);
          *(v17 + 14) = v7;
          v20 = 0;
          if (v7 >= 1)
          {
            v18 = (v6 + 3192);
            do
            {
              if (*v18)
              {
                AppendTree(a1, *v18, (*a3 + 8), &v20);
                if (v19 < 0)
                {
                  break;
                }
              }

              ++v18;
              --v7;
            }

            while (v7);
          }
        }
      }
    }
  }
}

uint64_t mosyntsentana_DisplayTree(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  result = mosyntdata_WriteTree(a1, *(a2 + 8), 2, a3);
  if ((result & 0x80000000) == 0)
  {

    return mosyntbase_WLn(a1);
  }

  return result;
}

uint64_t InsertRuleEdge(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, int a6, uint64_t a7, uint64_t a8, _DWORD *a9)
{
  v46[2] = *MEMORY[0x277D85DE8];
  v9 = a2 + 98304;
  if (*(a2 + 100084) > *(a2 + 24))
  {
    return 0;
  }

  v41 = 0;
  v45[1] = 0;
  v46[0] = 0;
  v45[0] = 0;
  *(v46 + 6) = 0;
  v40 = 0;
  v39 = 0;
  memset(v43, 0, sizeof(v43));
  v44 = 0;
  RuleVisAndCost = mosyntkbsgram_GetRuleVisAndCost(a9, &v40, &v41);
  if ((RuleVisAndCost & 0x80000000) != 0)
  {
    return RuleVisAndCost;
  }

  if (a7)
  {
    v41 += *(a7 + 96);
    *(a7 + 112) = 1;
  }

  v38 = a7;
  if (a8)
  {
    v41 += *(a8 + 96);
    *(a8 + 112) = 1;
  }

  v37 = a8;
  v19 = a3 % 37;
  for (i = *(*(a2 + 32 + 8 * a6) + 8 * (a3 % 37)); ; i = *i)
  {
    v42 = i;
    if (!i)
    {
      goto LABEL_20;
    }

    if (*(i + 28) == a3 && *(i + 24) == a5)
    {
      v21 = mosyntknowl_DiffFeat(a1, (i + 32), a4);
      i = v42;
      if (!v21)
      {
        break;
      }
    }
  }

  if (v42)
  {
    v22 = v41;
    if (v41 >= *(v42 + 96))
    {
      return RuleVisAndCost;
    }

    if (*(v42 + 58) && *a2 >= 1)
    {
      v39 = 0;
      v23 = mosyntkbsymtab_AppConsFeatToString(a1, *(a2 + 8), *(v42 + 28), (v42 + 32), v43, 50, &v39);
      if ((v23 & 0x80000000) == 0)
      {
        return mosyntbase_WString3Ln(a1, "***** illegal attempt to replace terminal constituent '", 0, v43, 50, "' by rule-generated identical constituent", 0);
      }

      return v23;
    }

    ++*(v9 + 1792);
    ++*(v9 + 1816);
    *(i + 80) = *a9;
    *(i + 96) = v22;
    *(i + 64) = v38;
    *(i + 72) = v37;
    if (!*(i + 56))
    {
      *(i + 16) = 0;
      v35 = *(v9 + 1768);
      if (v35)
      {
        v36 = (v35 + 16);
      }

      else
      {
        v36 = (v9 + 1760);
      }

      *v36 = i;
      *(v9 + 1768) = i;
      *(i + 56) = 1;
    }

    if (*a2 >= 3)
    {
      m2__cp__str("noted reparsing of edge ", v45, 30);
      v32 = a1;
      v33 = a2;
      v31 = i;
      goto LABEL_31;
    }
  }

  else
  {
LABEL_20:
    ++*(v9 + 1780);
    ++*(v9 + 1804);
    if (v38)
    {
      if (v37)
      {
        v24 = v37[12];
        if (v38[12] < v24 && v24 < a6)
        {
          ++*(v9 + 1784);
          ++*(v9 + 1808);
        }
      }
    }

    RuleVisAndCost = mosyntpal_ALLOCATE(a1, &v42, 0x78u);
    if ((RuleVisAndCost & 0x80000000) == 0)
    {
      v25 = v42;
      *(v42 + 24) = a5;
      *(v25 + 26) = a6;
      *(v25 + 28) = a3;
      v26 = *(a4 + 16);
      *(v25 + 32) = *a4;
      *(v25 + 48) = v26;
      *(v25 + 58) = 0;
      *(v25 + 64) = v38;
      *(v25 + 72) = v37;
      *(v25 + 80) = *a9;
      *(v25 + 96) = v41;
      *(v25 + 104) = 0;
      *(v25 + 112) = 0;
      *(v25 + 57) = a6 == 0;
      v27 = *(a2 + 32 + 8 * a6);
      *v25 = *(v27 + 8 * v19);
      v28 = v42;
      *(v27 + 8 * v19) = v42;
      *(v28 + 16) = 0;
      v29 = *(v9 + 1768);
      v30 = (v29 ? v29 + 16 : v9 + 1760);
      *v30 = v28;
      *(v9 + 1768) = v28;
      *(v28 + 56) = 1;
      if (*a2 >= 3)
      {
        m2__cp__str("inserted edge", v45, 30);
        v31 = v42;
        v32 = a1;
        v33 = a2;
LABEL_31:
        v23 = WriteEdge(v32, v33, v45, 30, v31);
        if ((v23 & 0x80000000) == 0)
        {
          m2__cp__str("subedge1", v45, 30);
          v23 = WriteEdge(a1, a2, v45, 30, v38);
          if ((v23 & 0x80000000) == 0)
          {
            m2__cp__str("subedge2", v45, 30);
            return WriteEdge(a1, a2, v45, 30, v37);
          }
        }

        return v23;
      }
    }
  }

  return RuleVisAndCost;
}

uint64_t FixEdgeAndSubEdges(uint64_t result)
{
  if (result)
  {
    v1 = result;
    do
    {
      if (*(v1 + 57))
      {
        break;
      }

      *(v1 + 57) = 1;
      if (*(v1 + 58))
      {
        break;
      }

      result = FixEdgeAndSubEdges(*(v1 + 64));
      v1 = *(v1 + 72);
    }

    while (v1);
  }

  return result;
}

void AppendTree(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  if (a2)
  {
    if (!*(a2 + 58))
    {
      v18 = 0;
      v17 = 0;
      if ((mosyntkbsgram_GetRuleVisAndCost((a2 + 80), &v18, &v17) & 0x80000000) != 0)
      {
        return;
      }

      if (mosyntkbsgram_IsNilIter((a2 + 80)) || !v18)
      {
        AppendNode(a1, a2, a3, a4);
        if (v15 < 0)
        {
          return;
        }

        v16 = *a4;
        *(v16 + 60) = 0;
        v16[8] = 0;
        v19 = 0;
        if ((AppendTree(a1, *(a2 + 64), v16 + 1, &v19) & 0x80000000) != 0)
        {
          return;
        }

        v11 = *(a2 + 72);
        v13 = v16 + 1;
        v14 = &v19;
        v12 = a1;
      }

      else
      {
        if ((AppendTree(a1, *(a2 + 64), a3, a4) & 0x80000000) != 0)
        {
          return;
        }

        v11 = *(a2 + 72);
        v12 = a1;
        v13 = a3;
        v14 = a4;
      }

      AppendTree(v12, v11, v13, v14);
      return;
    }

    AppendNode(a1, a2, a3, a4);
    if ((v8 & 0x80000000) == 0)
    {
      v9 = *a4;
      *(v9 + 60) = 1;
      mosyntdata_CopyTermInfo(a1, *(a2 + 64), v9 + 8);
      if ((v10 & 0x80000000) == 0)
      {
        v9[1] = 0;
      }
    }
  }
}

void AppendNode(uint64_t a1, __n128 *a2, void *a3, void **a4)
{
  mosyntdata_AddNode(a1, a3, a4, 1, a2[1].n128_i16[6], a2 + 2);
  if ((v6 & 0x80000000) == 0)
  {
    v7 = *a4;
    v8 = a2[1].n128_i16[4];
    v7[12] = a2[6].n128_u32[0];
    v7[13] = v8;
    v7[14] = a2[1].n128_i16[5];
  }
}

uint64_t com_mosynt_GetCfgParamVal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, char **a6)
{
  *a6 = a5;
  __c_1 = -1;
  __c = 0;
  v10 = 0;
  v7 = (*(a3 + 96))(a1, a2, "fecfg", a4, &v10, &__c_1, &__c);
  if ((v7 & 0x80000000) == 0 && __c_1)
  {
    v8 = cstdlib_strchr(*v10, __c);
    if (v8)
    {
      *v8 = 0;
    }

    *a6 = *v10;
  }

  return v7;
}

uint64_t com_mosynt_GetBacktransPOS(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, char *a5)
{
  v15 = *MEMORY[0x277D85DE8];
  cstdlib_strcpy(__dst, "backtrans_");
  if (cstdlib_strlen(a4) < 0x81)
  {
    cstdlib_strcat(__dst, a4);
  }

  else
  {
    cstdlib_strncat(__dst, a4, 0x80uLL);
  }

  v10 = cstdlib_strchr(__dst, 40);
  if (v10)
  {
    *v10 = 0;
  }

  __src = 0;
  CfgParamVal = com_mosynt_GetCfgParamVal(a1, a2, a3, __dst, a4, &__src);
  if ((CfgParamVal & 0x80000000) == 0)
  {
    cstdlib_strncpy(a5, __src, 1uLL);
    a5[1] = 0;
  }

  return CfgParamVal;
}

uint64_t com_mosynt_GetBacktrans2POS(uint64_t a1, uint64_t a2, uint64_t a3, char *__s, unsigned int a5, char *a6)
{
  v23 = *MEMORY[0x277D85DE8];
  v10 = cstdlib_strlen(__s);
  *a6 = 0;
  if (!v10)
  {
    return 0;
  }

  v11 = 0;
  CfgParamVal = 0;
  __sa = 0;
  v13 = v10;
  do
  {
    if (__s[v11] != 92)
    {
      cstdlib_strcpy(__dst, "backtrans2_");
      v14 = cstdlib_strlen(__dst);
      __dst[v14] = __s[v11];
      __dst[(v14 + 1)] = 0;
      CfgParamVal = com_mosynt_GetCfgParamVal(a1, a2, a3, __dst, a6, &__sa);
      if ((CfgParamVal & 0x80000000) != 0)
      {
        return CfgParamVal;
      }

      v15 = cstdlib_strlen(a6);
      v16 = __sa;
      v17 = cstdlib_strlen(__sa);
      if (v17 && v16 != a6 && v17 + v15 + 1 < a5)
      {
        if (v15)
        {
          cstdlib_strcat(a6, "\");
        }

        cstdlib_strcat(a6, v16);
      }
    }

    ++v11;
  }

  while (v11 < v13);
  return CfgParamVal;
}

uint64_t com_mosynt_UseMosynt(uint64_t a1, uint64_t a2, uint64_t a3, _BOOL4 *a4)
{
  __s1 = 0;
  CfgParamVal = com_mosynt_GetCfgParamVal(a1, a2, a3, "mosynt_usemosynt", "NO", &__s1);
  if ((CfgParamVal & 0x80000000) != 0)
  {
    v7 = 0;
  }

  else
  {
    v6 = __s1;
    if (cstdlib_strcmp(__s1, "YES"))
    {
      v7 = cstdlib_strcmp(v6, "yes") == 0;
    }

    else
    {
      v7 = 1;
    }
  }

  *a4 = v7;
  return CfgParamVal;
}

uint64_t mosyntbase_ShowMemStat(uint64_t a1)
{
  v2 = mosyntpal_TotAllocSize();

  return mosyntbase_WInt3Ln(a1, "total allocated memory: ", 0, v2, "", 0);
}

uint64_t mosyntbase_WInt3Ln(uint64_t a1, unsigned __int8 *a2, int a3, unsigned int a4, unsigned __int8 *a5, int a6)
{
  v12 = a2;
  v11 = a3;
  v10 = a5;
  v9 = a6;
  m2__fix__carray__len(&v12, &v11);
  m2__fix__carray__len(&v10, &v9);
  result = mosyntpal_WriteString(a1, v12, v11);
  if ((result & 0x80000000) == 0)
  {
    result = mosyntbase_WInt(a1, a4, 0);
    if ((result & 0x80000000) == 0)
    {
      result = mosyntpal_WriteString(a1, v10, v9);
      if ((result & 0x80000000) == 0)
      {
        return mosyntpal_WriteLn(a1);
      }
    }
  }

  return result;
}

uint64_t mosyntbase_WString(uint64_t a1, unsigned __int8 *a2, int a3)
{
  v6 = a2;
  v5 = a3;
  m2__fix__carray__len(&v6, &v5);
  return mosyntpal_WriteString(a1, v6, v5);
}

uint64_t mosyntbase_WInt(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  result = mosyntpal_IntToString(a2, a3, v5, 100);
  if ((result & 0x80000000) == 0)
  {
    return mosyntpal_WriteString(a1, v5, 100);
  }

  return result;
}

uint64_t mosyntbase_WStringLn(uint64_t a1, unsigned __int8 *a2, int a3)
{
  v6 = a2;
  v5 = a3;
  m2__fix__carray__len(&v6, &v5);
  result = mosyntpal_WriteString(a1, v6, v5);
  if ((result & 0x80000000) == 0)
  {
    return mosyntpal_WriteLn(a1);
  }

  return result;
}

uint64_t mosyntbase_WString3Ln(uint64_t a1, unsigned __int8 *a2, int a3, unsigned __int8 *a4, int a5, unsigned __int8 *a6, int a7)
{
  v14 = a2;
  v13 = a3;
  v12 = a4;
  v11 = a5;
  v10 = a6;
  v9 = a7;
  m2__fix__carray__len(&v14, &v13);
  m2__fix__carray__len(&v12, &v11);
  m2__fix__carray__len(&v10, &v9);
  result = mosyntpal_WriteString(a1, v14, v13);
  if ((result & 0x80000000) == 0)
  {
    result = mosyntpal_WriteString(a1, v12, v11);
    if ((result & 0x80000000) == 0)
    {
      result = mosyntpal_WriteString(a1, v10, v9);
      if ((result & 0x80000000) == 0)
      {
        return mosyntpal_WriteLn(a1);
      }
    }
  }

  return result;
}

uint64_t mosyntbase_WriteDevelMessage(uint64_t a1, unsigned __int8 *a2, int a3, unsigned __int8 *a4, int a5, unsigned __int8 *a6, int a7, unsigned __int8 *a8, unsigned int a9, unsigned int a10, unsigned int a11, unsigned int a12)
{
  v13 = a10;
  v14 = a11;
  v15 = a12;
  v24 = a2;
  v23 = a3;
  v22 = a4;
  v21 = a5;
  v20 = a6;
  v19 = a7;
  v18 = a8;
  m2__fix__carray__len(&v24, &v23);
  m2__fix__carray__len(&v22, &v21);
  m2__fix__carray__len(&v20, &v19);
  m2__fix__carray__len(&v18, &a9);
  *(&v17 + 1) = __PAIR64__(v15, v14);
  *&v17 = __PAIR64__(v13, a9);
  result = mosyntbase_WriteMessage(a1, v24, v23, v22, v21, v20, v19, v18, v17);
  if ((result & 0x80000000) == 0)
  {
    return mosyntpal_CheckInterrupt();
  }

  return result;
}

uint64_t mosyntbase_WriteMessage(uint64_t a1, unsigned __int8 *a2, int a3, unsigned __int8 *a4, int a5, unsigned __int8 *a6, int a7, unsigned __int8 *a8, __int128 a9)
{
  v10 = *(&a9 + 4);
  v11 = HIDWORD(a9);
  v21 = *MEMORY[0x277D85DE8];
  v19 = a2;
  v18 = a3;
  v17 = a4;
  v16 = a5;
  v15 = a6;
  v14 = a7;
  v13 = a8;
  memset(v20, 0, 512);
  m2__fix__carray__len(&v19, &v18);
  m2__fix__carray__len(&v17, &v16);
  m2__fix__carray__len(&v15, &v14);
  m2__fix__carray__len(&v13, &a9);
  result = mosyntbase_ComposeMessage(v19, v18, v17, v16, v15, v14, v13, a9, v10, HIDWORD(v10), v11, v20, 1000);
  if ((result & 0x80000000) == 0)
  {
    result = mosyntpal_WriteString(a1, v20, 1000);
    if ((result & 0x80000000) == 0)
    {
      return mosyntpal_CheckInterrupt();
    }
  }

  return result;
}

uint64_t mosyntbase_ComposeMessage(unsigned __int8 *a1, int a2, unsigned __int8 *a3, int a4, unsigned __int8 *a5, int a6, unsigned __int8 *a7, int a8, unsigned int a9, unsigned int a10, unsigned int a11, _BYTE *a12, int a13)
{
  v39 = *MEMORY[0x277D85DE8];
  v34 = a1;
  v33 = a2;
  v32 = a3;
  v31 = a4;
  v30 = a5;
  v29 = a6;
  v28 = a7;
  v27 = a8;
  v37[0] = 0;
  v37[1] = 0;
  v38 = 0;
  m2__fix__carray__len(&v34, &v33);
  m2__fix__carray__len(&v32, &v31);
  m2__fix__carray__len(&v30, &v29);
  m2__fix__carray__len(&v28, &v27);
  v26 = 0;
  *a12 = 0;
  v13 = v33;
  if (v33 >= 1)
  {
    v14 = 0;
    v15 = 1;
    v16 = 1;
    do
    {
      v17 = v13 - 1;
      v18 = &v34[v14];
      result = v34[v14];
      if (result == 37)
      {
        if (v14 < v17)
        {
          v20 = v18[1];
          if (v20 == 100 || v20 == 105)
          {
            switch(v15)
            {
              case 3:
                v24 = a11;
                goto LABEL_25;
              case 2:
                v24 = a10;
                goto LABEL_25;
              case 1:
                v24 = a9;
LABEL_25:
                result = mosyntpal_IntToString(v24, 0, v37, 20);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                break;
              default:
                mosyntbase_CCopy("%d", 0, v37, 20, &v25);
                break;
            }

            mosyntbase_App(a12, a13, &v26, v37, 20, &v25);
            ++v15;
LABEL_33:
            v23 = 2;
            goto LABEL_34;
          }

          if (v20 == 115)
          {
            switch(v16)
            {
              case 3:
                v21 = v28;
                v22 = v27;
                break;
              case 2:
                v21 = v30;
                v22 = v29;
                break;
              case 1:
                v21 = v32;
                v22 = v31;
                break;
              default:
                v36 = "%s";
                v35 = 0;
                m2__fix__carray__len(&v36, &v35);
                v21 = v36;
                v22 = v35;
                break;
            }

            mosyntbase_App(a12, a13, &v26, v21, v22, &v25);
            ++v16;
            goto LABEL_33;
          }
        }
      }

      else if (result == 92)
      {
        if (v14 < v17 && v18[1] == 110)
        {
          LOWORD(v37[0]) = mosyntpal_EOL();
          mosyntbase_App(a12, a13, &v26, v37, 20, &v25);
          goto LABEL_33;
        }
      }

      else if (!v34[v14])
      {
        return result;
      }

      LOWORD(v37[0]) = result;
      mosyntbase_App(a12, a13, &v26, v37, 20, &v25);
      v23 = 1;
LABEL_34:
      v14 += v23;
      v13 = v33;
    }

    while (v14 < v33);
  }

  return 0;
}

uint64_t mosyntbase_Length(uint64_t a1, int a2)
{
  if (a2 < 1)
  {
    return 0;
  }

  result = 0;
  while (*(a1 + result))
  {
    if (a2 == ++result)
    {
      return a2;
    }
  }

  return result;
}

uint64_t mosyntbase_Copy(uint64_t a1, int a2, uint64_t a3, int a4, BOOL *a5)
{
  if (a2 < 1)
  {
    v6 = 0;
LABEL_11:
    *(a3 + v6) = 0;
    v8 = 1;
  }

  else
  {
    v5 = 0;
    v6 = a2;
    while (*(a1 + v5) && v5 < a4 - 1)
    {
      *(a3 + v5) = *(a1 + v5);
      if (a2 == ++v5)
      {
        goto LABEL_11;
      }
    }

    *(a3 + v5) = 0;
    v8 = *(a1 + v5) == 0;
  }

  *a5 = v8;
  return 0;
}

uint64_t mosyntbase_CCopy(unsigned __int8 *a1, unsigned int a2, uint64_t a3, int a4, BOOL *a5)
{
  v15 = a1;
  v14 = a2;
  m2__fix__carray__len(&v15, &v14);
  v8 = v14;
  if (v14 < 1)
  {
    v8 = 0;
LABEL_11:
    *(a3 + v8) = 0;
    v12 = 1;
  }

  else
  {
    v9 = 0;
    v10 = v15;
    while (v10[v9] && v9 < a4 - 1)
    {
      *(a3 + v9) = v10[v9];
      if (v8 == ++v9)
      {
        goto LABEL_11;
      }
    }

    *(a3 + v9) = 0;
    v12 = v10[v9] == 0;
  }

  *a5 = v12;
  return 0;
}

uint64_t mosyntbase_AppendTo(uint64_t a1, int a2, _BYTE *a3, int a4, BOOL *a5)
{
  v5 = (a2 - 1);
  if (a2 <= 1)
  {
    LODWORD(v6) = 0;
  }

  else
  {
    v6 = 0;
    while (*(a1 + v6))
    {
      if (v5 == ++v6)
      {
        LODWORD(v6) = a2 - 1;
        break;
      }
    }
  }

  if (a4 < 1)
  {
LABEL_14:
    *(a1 + v6) = 0;
    v9 = 1;
  }

  else
  {
    v6 = v6;
    v7 = a4;
    while (*a3 && v5 > v6)
    {
      *(a1 + v6++) = *a3++;
      if (!--v7)
      {
        goto LABEL_14;
      }
    }

    *(a1 + v6) = 0;
    v9 = *a3 == 0;
  }

  *a5 = v9;
  return 0;
}

uint64_t mosyntbase_App(uint64_t a1, int a2, int *a3, uint64_t a4, int a5, BOOL *a6)
{
  v6 = a2 - 1;
  v7 = *a3;
  v8 = a5 > 0;
  v9 = 0;
  if (*a3 < a2 - 1 && a5 >= 1)
  {
    while (*(a4 + v9))
    {
      *(a1 + v7) = *(a4 + v9);
      v7 = *a3 + 1;
      *a3 = v7;
      v8 = ++v9 < a5;
      if (v7 >= v6 || v9 >= a5)
      {
        goto LABEL_13;
      }
    }

    v8 = 1;
LABEL_13:
    v9 = v9;
  }

  if (v7 < a2)
  {
    v6 = v7;
  }

  *(a1 + v6) = 0;
  v12 = !v8 || *(a4 + v9) == 0;
  *a6 = v12;
  return 0;
}

uint64_t mosyntbase_CApp(uint64_t a1, int a2, int *a3, unsigned __int8 *a4, int a5, BOOL *a6)
{
  v12 = a4;
  v11 = a5;
  m2__fix__carray__len(&v12, &v11);
  mosyntbase_App(a1, a2, a3, v12, v11, a6);
  return 0;
}

uint64_t mosyntbase_GetStr(uint64_t a1, int a2, int *a3, _BYTE *a4, int a5, BOOL *a6)
{
  v6 = *a3;
  if (a2 > v6)
  {
    v7 = (a1 + v6);
    v8 = a2 - v6;
    v9 = v6 + 1;
    do
    {
      v10 = *v7++;
      if ((v10 - 33) < 0xFFFFFFE0)
      {
        break;
      }

      *a3 = v9++;
      --v8;
    }

    while (v8);
  }

  *a4 = 0;
  v11 = *a3;
  if (*a3 >= a2)
  {
    LODWORD(v12) = 0;
    v15 = 1;
  }

  else
  {
    v12 = 0;
    v13 = 1;
    do
    {
      v14 = *(a1 + v11);
      if (v14 < 0x21)
      {
        break;
      }

      if (v12 >= a5 - 1)
      {
        v13 = 0;
      }

      else
      {
        a4[v12] = v14;
        v11 = *a3;
      }

      ++v12;
      *a3 = ++v11;
    }

    while (v11 < a2);
    v15 = v13 != 0;
  }

  a4[v12] = 0;
  if (v12)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  *a6 = v16;
  return 0;
}

uint64_t mosyntbase_GetSepPartStr(uint64_t a1, int a2, int *a3, unsigned __int8 a4, _BYTE *a5, int a6, char *a7)
{
  v7 = *a3;
  if ((*a3 & 0x80000000) == 0)
  {
    if (v7 >= a2)
    {
      v8 = 0;
      v9 = 1;
    }

    else
    {
      v8 = 0;
      v9 = 1;
      do
      {
        v10 = *(a1 + v7);
        if (v10 == a4 || v10 == 0)
        {
          break;
        }

        if (v8 >= a6)
        {
          v9 = 0;
        }

        else
        {
          a5[v8++] = v10;
          v7 = *a3;
        }

        *a3 = ++v7;
      }

      while (v7 < a2);
    }

    if (v8 < a6)
    {
      a5[v8] = 0;
      v7 = *a3;
    }

    if (v7 >= a2)
    {
      goto LABEL_23;
    }

    if (*(a1 + v7) == a4)
    {
      v12 = v7 + 1;
    }

    else
    {
      if (*(a1 + v7))
      {
LABEL_23:
        *a7 = v9;
        return 0;
      }

      v12 = -1;
    }

    *a3 = v12;
    goto LABEL_23;
  }

  *a7 = 0;
  *a5 = 0;
  return 0;
}

BOOL mosyntbase_Equal(uint64_t a1, int a2, uint64_t a3, int a4)
{
  if (a2 < 1)
  {
    LODWORD(v4) = 0;
  }

  else
  {
    v4 = 0;
    while (v4 < a4 && *(a1 + v4) && *(a1 + v4) == *(a3 + v4))
    {
      if (a2 == ++v4)
      {
        LODWORD(v4) = a2;
        return v4 >= a4 || *(a3 + v4) == 0;
      }
    }

    if (*(a1 + v4))
    {
      return 0;
    }
  }

  return v4 >= a4 || *(a3 + v4) == 0;
}

BOOL mosyntbase_CEqual(unsigned __int8 *a1, int a2, unsigned __int8 *a3, int a4)
{
  v8 = a1;
  v7 = a2;
  v6 = a3;
  v5 = a4;
  m2__fix__carray__len(&v8, &v7);
  m2__fix__carray__len(&v6, &v5);
  return mosyntbase_Equal(v8, v7, v6, v5);
}

uint64_t mosyntbase_UpperCase(_BYTE *a1, int a2)
{
  if (a2 >= 1)
  {
    v2 = a2;
    do
    {
      v3 = *a1;
      if (!*a1)
      {
        break;
      }

      if ((v3 - 97) <= 0x19)
      {
        *a1 = v3 - 32;
      }

      ++a1;
      --v2;
    }

    while (v2);
  }

  return 0;
}

uint64_t mosyntbase_Compare(uint64_t a1, int a2, uint64_t a3, int a4, int *a5)
{
  if (a2 < 1)
  {
    LODWORD(v5) = 0;
    v6 = 1;
  }

  else
  {
    v5 = 0;
    while (v5 < a4 && *(a1 + v5) && *(a1 + v5) == *(a3 + v5))
    {
      if (a2 == ++v5)
      {
        v6 = 1;
        LODWORD(v5) = a2;
        goto LABEL_10;
      }
    }

    v6 = *(a1 + v5) == 0;
  }

LABEL_10:
  v7 = v5 >= a4 || *(a3 + v5) == 0;
  v8 = !v6 || !v7;
  v9 = v6 || v7;
  if (v6)
  {
    v10 = v8;
  }

  else
  {
    v10 = 2;
  }

  if (!v9)
  {
    if (*(a1 + v5) < *(a3 + v5))
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }
  }

  *a5 = v10;
  return 0;
}

uint64_t mosyntbase_FindSubstring(uint64_t a1, int a2, uint64_t a3, int a4, int a5, int *a6)
{
  v6 = a5 & ~(a5 >> 31);
  if (a5 >= 1)
  {
    if (a4 < 1)
    {
      goto LABEL_27;
    }

    v7 = 0;
    while (*(a3 + v7))
    {
      if (a4 == ++v7)
      {
        LODWORD(v7) = a4;
        break;
      }
    }

    if (v6 >= v7)
    {
      goto LABEL_27;
    }
  }

  if (v6 >= a4)
  {
    v8 = 0;
  }

  else
  {
    v8 = 0;
    do
    {
      v9 = *(a3 + v6);
      if (*(a3 + v6))
      {
        v10 = v8 < a2;
      }

      else
      {
        v10 = 0;
      }

      if (!v10)
      {
        break;
      }

      v11 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        break;
      }

      v12 = v11 == v9;
      v13 = v11 == v9 ? 0 : v8;
      if (v12)
      {
        ++v8;
      }

      else
      {
        v8 = 0;
      }

      v6 = v6 - v13 + 1;
    }

    while (v6 < a4);
  }

  if (v8 < a2 && *(a1 + v8))
  {
LABEL_27:
    v14 = -1;
  }

  else
  {
    v14 = v6 - v8;
  }

  *a6 = v14;
  return 0;
}

uint64_t mosyntbase_CFindSubstring(unsigned __int8 *a1, int a2, uint64_t a3, int a4, int a5, int *a6)
{
  v12 = a1;
  v11 = a2;
  m2__fix__carray__len(&v12, &v11);
  mosyntbase_FindSubstring(v12, v11, a3, a4, a5, a6);
  return 0;
}

uint64_t mosyntbase_RemoveSubstring(int a1, int a2, uint64_t a3, int a4, _BYTE *a5)
{
  *a5 = 1;
  if (a4 < 1)
  {
    LODWORD(v5) = 0;
  }

  else
  {
    v5 = 0;
    while (*(a3 + v5))
    {
      if (a4 == ++v5)
      {
        LODWORD(v5) = a4;
        break;
      }
    }
  }

  if (v5 > a1)
  {
    v6 = a2 + a1;
    if (v6 <= v5)
    {
      if (v6 < v5)
      {
        v7 = (a3 + a1);
        v8 = (a3 + v6);
        v9 = v5 - a2;
        do
        {
          v10 = *v8++;
          *v7++ = v10;
          ++a1;
        }

        while (v9 != a1);
      }
    }

    else
    {
      *a5 = 0;
    }

    if (a1 < a4)
    {
      a5 = (a3 + a1);
    }

    else
    {
      a5 = (a3 + a4 - 1);
    }
  }

  *a5 = 0;
  return 0;
}

BOOL mosyntbase_IsStringStart(_BYTE *a1, int a2, uint64_t a3, int a4, int a5)
{
  if (a2 < 1)
  {
    return 1;
  }

  v5 = a5;
  v6 = a2;
  while (1)
  {
    v7 = *a1 && v5 < a4;
    if (!v7 || *a1 != *(a3 + v5))
    {
      break;
    }

    ++v5;
    ++a1;
    if (!--v6)
    {
      return 1;
    }
  }

  return *a1 == 0;
}

uint64_t mosyntbase_DoSubstrSubst(_BYTE *a1, int a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  if (!*a1)
  {
    if (a6 < 1)
    {
      v25 = 0;
    }

    else
    {
      v25 = 0;
      while (*(a5 + v25) && v25 < a8 - 1)
      {
        *(a7 + v25) = *(a5 + v25);
        if (a6 == ++v25)
        {
          v25 = a6;
          goto LABEL_36;
        }
      }
    }

    goto LABEL_36;
  }

  v30 = 0;
  if (a6 < 1)
  {
    LODWORD(v25) = 0;
  }

  else
  {
    v15 = 0;
    v16 = a2;
    do
    {
      v17 = *(a5 + v15);
      if (!v17)
      {
        break;
      }

      v18 = v15;
      v19 = v16;
      v20 = a1;
      v21 = v18;
      if (a2 < 1)
      {
        mosyntbase_App(a7, a8, &v30, a3, a4, &v29);
        LODWORD(v24) = 0;
      }

      else
      {
        while (1)
        {
          v22 = *v20 && v21 < a6;
          if (!v22 || *v20 != *(a5 + v21))
          {
            break;
          }

          ++v21;
          ++v20;
          if (!--v19)
          {
            goto LABEL_17;
          }
        }

        if (*v20)
        {
          v23 = v30;
          *(a7 + v30) = v17;
          v30 = v23 + 1;
          LODWORD(v24) = 1;
          goto LABEL_21;
        }

LABEL_17:
        mosyntbase_App(a7, a8, &v30, a3, a4, &v29);
        v24 = 0;
        while (a1[v24])
        {
          if (v16 == ++v24)
          {
            LODWORD(v24) = v16;
            break;
          }
        }
      }

LABEL_21:
      v15 = v24 + v18;
    }

    while (v24 + v18 < a6);
    LODWORD(v25) = v30;
  }

  if (v25 < a8)
  {
    v25 = v25;
LABEL_36:
    *(a7 + v25) = 0;
  }

  return 0;
}

uint64_t mosyntaccphr_TreatSyntTree(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, uint64_t a8)
{
  v298 = *MEMORY[0x277D85DE8];
  v282 = 0;
  SentTermCommList = mosyntpal_ALLOCATE(a1, &v282, 0x60u);
  if ((SentTermCommList & 0x80000000) != 0)
  {
    return SentTermCommList;
  }

  v17 = v282;
  *v282 = a2;
  *(v17 + 8) = a3;
  *(v17 + 16) = a4;
  *(v17 + 24) = a5;
  *(v17 + 28) = a6;
  *(v17 + 32) = 0;
  *(v17 + 40) = a7;
  *(v282 + 48) = (mosyntkbaccphr_Nil)();
  *(v282 + 52) = (mosyntkbaccphr_Nil)();
  v18 = (mosyntkbaccphr_Nil)();
  v19 = v282;
  v20 = v282;
  *(v282 + 56) = v18;
  v21 = (v20 + 56);
  if (!a8)
  {
    goto LABEL_555;
  }

  v22 = *(v19 + 16);
  if (v22 != mosyntkbaccphr_NilAccPhr())
  {
    v24 = (v19 + 48);
    v23 = *(v19 + 48);
    if (v23 == (mosyntkbaccphr_Nil)())
    {
      DomainById = FindDomainById(v19, *(v19 + 28), (v19 + 48));
      v26 = *(v19 + 48);
      if (v26 == mosyntkbaccphr_Nil(DomainById))
      {
        v27 = mosyntkbaccphr_AccPhrDomains(*(v19 + 16));
        *(v19 + 48) = v27;
      }

      else
      {
        v27 = *v24;
      }

      *(v19 + 52) = v27;
      *(v19 + 56) = v27;
    }

    *&v291 = 0;
    SentTermCommList = mosyntdata_GetSentTermCommList(a1, *(v19 + 40), *(a8 + 52), &v291);
    if ((SentTermCommList & 0x80000000) != 0)
    {
      return SentTermCommList;
    }

    v28 = v291;
    v29 = *(v19 + 16);
    v30 = mosyntkbaccphr_NilAccPhr();
    if (v29 == v30)
    {
      v43 = mosyntkbaccphr_Nil(v30);
      *(v19 + 48) = v43;
      v44 = mosyntkbaccphr_Nil(v43);
      *(v19 + 52) = v44;
      *(v19 + 56) = mosyntkbaccphr_Nil(v44);
      goto LABEL_65;
    }

    if (!v28)
    {
      goto LABEL_65;
    }

    BestScenarioPathSuffix = 0;
    while (1)
    {
      while (*(v28 + 2) != 5)
      {
LABEL_61:
        v28 = *v28;
        if (!v28)
        {
          if ((BestScenarioPathSuffix & 0x80000000) != 0)
          {
            return BestScenarioPathSuffix;
          }

          goto LABEL_65;
        }
      }

      if (*(v28 + 3))
      {
        v32 = *v24;
      }

      else
      {
        v30 = mosyntkbaccphr_Nil(v30);
        v32 = v30;
        *v24 = v30;
      }

      v30 = mosyntkbaccphr_Nil(v30);
      if (v32 == v30)
      {
        v33 = FindDomainById(v19, *(v19 + 28), (v19 + 48));
        v34 = *(v19 + 48);
        if (v34 == mosyntkbaccphr_Nil(v33))
        {
          v30 = mosyntkbaccphr_AccPhrDomains(*(v19 + 16));
          *(v19 + 48) = v30;
        }

        else
        {
          v30 = *v24;
        }

        BestScenarioPathSuffix = 0;
        *(v19 + 52) = v30;
        *v21 = v30;
      }

      v35 = *(v28 + 3);
      if (v35 != 2)
      {
        break;
      }

      v39 = *v19;
      if (!*(v28 + 36))
      {
        if (v39 >= 1)
        {
          SentTermCommList = mosyntknowl_WriteTraceHeader(a1, 4u);
          if ((SentTermCommList & 0x80000000) != 0)
          {
            return SentTermCommList;
          }

          v30 = mosyntbase_WriteMessage(a1, "Resetting sentence domain\\n", 0, "", 0, "", 0, "", 0);
          goto LABEL_54;
        }

LABEL_55:
        v42 = *(v19 + 52);
LABEL_60:
        *v21 = v42;
        goto LABEL_61;
      }

      if (v39 >= 1)
      {
        SentTermCommList = mosyntknowl_WriteTraceHeader(a1, 4u);
        if ((SentTermCommList & 0x80000000) != 0)
        {
          return SentTermCommList;
        }

        SentTermCommList = mosyntbase_WriteMessage(a1, "Setting sentence domain to '%s'\\n", 0, v28 + 36, 100, "", 0, "", 0);
        if ((SentTermCommList & 0x80000000) != 0)
        {
          return SentTermCommList;
        }
      }

      DomainByName = FindDomainByName(v19, v28 + 36, v21);
      v41 = *(v19 + 56);
      v30 = mosyntkbaccphr_Nil(DomainByName);
      if (v41 == v30)
      {
        if (*v19 >= 1)
        {
          SentTermCommList = mosyntknowl_WriteTraceHeader(a1, 4u);
          if ((SentTermCommList & 0x80000000) != 0)
          {
            return SentTermCommList;
          }

          v30 = mosyntbase_WriteMessage(a1, "Didn't find sentence domain '%s'\\n", 0, v28 + 36, 100, "", 0, "", 0);
LABEL_54:
          BestScenarioPathSuffix = v30;
          if ((v30 & 0x80000000) != 0)
          {
            return BestScenarioPathSuffix;
          }

          goto LABEL_55;
        }

LABEL_45:
        BestScenarioPathSuffix = 0;
        goto LABEL_55;
      }

      BestScenarioPathSuffix = 0;
      v28 = *v28;
      if (!v28)
      {
        goto LABEL_65;
      }
    }

    if (v35 != 1)
    {
      if (!v35 && *v19 >= 1)
      {
        SentTermCommList = mosyntknowl_WriteTraceHeader(a1, 4u);
        if ((SentTermCommList & 0x80000000) != 0)
        {
          return SentTermCommList;
        }

        v30 = mosyntbase_WriteMessage(a1, "Resetting default domain\\n", 0, "", 0, "", 0, "", 0);
        BestScenarioPathSuffix = v30;
        if ((v30 & 0x80000000) != 0)
        {
          return BestScenarioPathSuffix;
        }
      }

      goto LABEL_61;
    }

    v36 = *v19;
    if (*(v28 + 36))
    {
      if (v36 >= 1)
      {
        SentTermCommList = mosyntknowl_WriteTraceHeader(a1, 4u);
        if ((SentTermCommList & 0x80000000) != 0)
        {
          return SentTermCommList;
        }

        SentTermCommList = mosyntbase_WriteMessage(a1, "Setting paragraph domain to '%s'\\n", 0, v28 + 36, 100, "", 0, "", 0);
        if ((SentTermCommList & 0x80000000) != 0)
        {
          return SentTermCommList;
        }
      }

      v37 = FindDomainByName(v19, v28 + 36, (v19 + 52));
      v38 = *(v19 + 52);
      v30 = mosyntkbaccphr_Nil(v37);
      if (v38 != v30)
      {
        goto LABEL_45;
      }

      if (*v19 >= 1)
      {
        SentTermCommList = mosyntknowl_WriteTraceHeader(a1, 4u);
        if ((SentTermCommList & 0x80000000) != 0)
        {
          return SentTermCommList;
        }

        v30 = mosyntbase_WriteMessage(a1, "Didn't find paragraph domain '%s'\\n", 0, v28 + 36, 100, "", 0, "", 0);
        goto LABEL_49;
      }

      BestScenarioPathSuffix = 0;
    }

    else if (v36 >= 1)
    {
      SentTermCommList = mosyntknowl_WriteTraceHeader(a1, 4u);
      if ((SentTermCommList & 0x80000000) != 0)
      {
        return SentTermCommList;
      }

      v30 = mosyntbase_WriteMessage(a1, "Resetting paragraph domain\\n", 0, "", 0, "", 0, "", 0);
LABEL_49:
      BestScenarioPathSuffix = v30;
      if ((v30 & 0x80000000) != 0)
      {
        return BestScenarioPathSuffix;
      }
    }

    v42 = *v24;
    *(v19 + 52) = *v24;
    goto LABEL_60;
  }

LABEL_65:
  v45 = v282;
  *(v282 + 60) = *(v282 + 56);
  v46 = mosyntkbaccphr_AccPhrType(*(v45 + 16));
  v47 = v282;
  if (!v46)
  {
    v286 = 0;
    v54 = mosyntkbsymtab_WildConsId(*(v282 + 8));
    SentTermCommList = GenAccTree(a1, v47, a8, &v286);
    if ((SentTermCommList & 0x80000000) != 0)
    {
      return SentTermCommList;
    }

    v55 = v286;
    LODWORD(v291) = 0;
    SentTermCommList = Accentuation1(a1, v47, v286, &v291);
    if ((SentTermCommList & 0x80000000) != 0)
    {
      return SentTermCommList;
    }

    *&v289[0] = 0;
    v285 = 0;
    *&v291 = 0;
    SentTermCommList = GetInitPhrasing1(a1, v47, v55, 3, 0, &v285, &v291);
    if ((SentTermCommList & 0x80000000) != 0)
    {
      return SentTermCommList;
    }

    v56 = v291 ? *(v291 + 24) : 0;
    SentTermCommList = mosyntdata_GetSentTermCommList(a1, *(v47 + 40), v56, v289);
    if ((SentTermCommList & 0x80000000) != 0)
    {
      return SentTermCommList;
    }

    v57 = FinalBoundaryIndex(a1, *&v289[0]);
    SentTermCommList = AppendInitBound(a1, v47, &v285, &v291, v57, 0);
    if ((SentTermCommList & 0x80000000) != 0)
    {
      return SentTermCommList;
    }

    *(v291 + 16) = v56;
    if (*v47 <= 0)
    {
      v59 = v285;
    }

    else
    {
      SentTermCommList = mosyntknowl_WriteTraceHeader(a1, 4u);
      if ((SentTermCommList & 0x80000000) != 0)
      {
        return SentTermCommList;
      }

      SentTermCommList = mosyntbase_WString(a1, "initial phrasing: ", 0);
      if ((SentTermCommList & 0x80000000) != 0)
      {
        return SentTermCommList;
      }

      v58 = v285;
      SentTermCommList = WriteBoundList(a1, v47, v285, 0);
      if ((SentTermCommList & 0x80000000) != 0)
      {
        return SentTermCommList;
      }

      SentTermCommList = mosyntbase_WLn(a1);
      v59 = v58;
      if ((SentTermCommList & 0x80000000) != 0)
      {
        return SentTermCommList;
      }
    }

    v82 = *(v47 + 24);
    v291 = 0u;
    v292 = 0u;
    v293 = 0u;
    v294 = 0u;
    v295 = 0u;
    v296 = 0u;
    v297 = 0;
    v281 = v59;
    if (v59)
    {
      v83 = 0;
      BestScenarioPathSuffix = 0;
      v84 = v59;
      do
      {
        v85 = *(v84 + 4);
        if (v85 < 100)
        {
          *(&v291 + v85) = 1;
        }

        else
        {
          SentTermCommList = mosyntbase_WString(a1, "*** maximum nr of phrase boundary index levels exceeded", 0);
          if ((SentTermCommList & 0x80000000) != 0)
          {
            return SentTermCommList;
          }

          BestScenarioPathSuffix = mosyntbase_WLn(a1);
          if ((BestScenarioPathSuffix & 0x80000000) != 0)
          {
            return BestScenarioPathSuffix;
          }

          LOWORD(v85) = *(v84 + 4);
          v59 = v281;
        }

        if (v83 <= v85)
        {
          v83 = v85;
        }

        v84 = *v84;
      }

      while (v84);
    }

    else
    {
      BestScenarioPathSuffix = 0;
      v83 = 0;
    }

    v155 = v83;
    for (i = 1; i != 3; ++i)
    {
      if (v155 >= 2)
      {
        v157 = v155;
        do
        {
          if (v157 > 0x63 || *(&v291 + v157))
          {
            if (v59)
            {
              v158 = 0;
              v159 = 0;
              v160 = 0;
              v161 = v59;
              while (1)
              {
                v162 = v161[4];
                if ((v162 & 0x80000000) == 0)
                {
                  break;
                }

LABEL_386:
                v161 = *v161;
                if (!v161)
                {
                  goto LABEL_387;
                }
              }

              if (!v159 || (v159[4] & 0x80000000) == 0)
              {
                v160 = v159;
              }

              if (v158)
              {
                v163 = v158[4];
                if (v157 == v163 && v160)
                {
                  if (i == 1)
                  {
                    v164 = v160[5];
                    if (v164 || v163 < v160[4])
                    {
                      if (v163 <= v162 || v158[5])
                      {
                        goto LABEL_384;
                      }
                    }

                    else
                    {
                      v164 = 0;
                    }

LABEL_383:
                    v158[4] = -1;
                    v160[5] = v158[5] + v164;
                    v160[6] += v158[6];
                    goto LABEL_384;
                  }

                  if (v82 > 1 || v163 >= 3)
                  {
                    v165 = v160[6];
                    if (v165 >= 5)
                    {
                      v166 = v82 - 1;
                    }

                    else
                    {
                      v166 = v82;
                    }

                    if (v165 < 3)
                    {
                      v166 = v82 + 1;
                    }

                    v167 = v158[6];
                    v168 = v167 >= 5 ? v82 - 1 : v82;
                    v169 = v167 >= 3 ? v168 : v82 + 1;
                    if (v163 >= v160[4])
                    {
                      if (v163 >= v162 && v166 >= v160[5])
                      {
                        v164 = v160[5];
                        goto LABEL_383;
                      }

                      if (v163 > v162 && v169 >= v158[5])
                      {
                        v164 = v160[5];
                        goto LABEL_383;
                      }
                    }
                  }
                }

LABEL_384:
                v159 = v158;
              }

              else
              {
                v159 = 0;
              }

              v158 = v161;
              goto LABEL_386;
            }

LABEL_387:
            if (*v47 >= 1)
            {
              SentTermCommList = mosyntknowl_WriteTraceHeader(a1, 4u);
              if ((SentTermCommList & 0x80000000) != 0)
              {
                return SentTermCommList;
              }

              v170 = (i == 1 ? "after clitic melting" : "after rhythmic melting");
              SentTermCommList = mosyntbase_WString(a1, v170, 0);
              if ((SentTermCommList & 0x80000000) != 0)
              {
                return SentTermCommList;
              }

              SentTermCommList = mosyntbase_WString(a1, ", index ", 0);
              if ((SentTermCommList & 0x80000000) != 0)
              {
                return SentTermCommList;
              }

              SentTermCommList = mosyntbase_WInt(a1, v157, 0);
              if ((SentTermCommList & 0x80000000) != 0)
              {
                return SentTermCommList;
              }

              SentTermCommList = mosyntbase_WString(a1, ": ", 0);
              if ((SentTermCommList & 0x80000000) != 0)
              {
                return SentTermCommList;
              }

              SentTermCommList = WriteBoundList(a1, v47, v281, 0);
              if ((SentTermCommList & 0x80000000) != 0)
              {
                return SentTermCommList;
              }

              BestScenarioPathSuffix = mosyntbase_WLn(a1);
              v59 = v281;
              if ((BestScenarioPathSuffix & 0x80000000) != 0)
              {
                return BestScenarioPathSuffix;
              }
            }
          }

          v204 = v157-- <= 2;
        }

        while (!v204);
      }
    }

    if ((BestScenarioPathSuffix & 0x80000000) != 0)
    {
      return BestScenarioPathSuffix;
    }

    if (mosyntkbsymtab_PropTabAvailable(*(v47 + 8)) && mosyntkbsymtab_HasIntPropValue(a1, *(v47 + 8), v54, 8u, 1))
    {
LABEL_404:
      if (*v47 >= 1)
      {
        SentTermCommList = mosyntknowl_WriteTraceHeader(a1, 4u);
        if ((SentTermCommList & 0x80000000) != 0)
        {
          return SentTermCommList;
        }

        SentTermCommList = mosyntbase_WStringLn(a1, "before setting phrase types: ", 0);
        if ((SentTermCommList & 0x80000000) != 0)
        {
          return SentTermCommList;
        }

        SentTermCommList = WriteBoundList(a1, v47, v281, 1);
        if ((SentTermCommList & 0x80000000) != 0)
        {
          return SentTermCommList;
        }

        SentTermCommList = mosyntbase_WLn(a1);
        if ((SentTermCommList & 0x80000000) != 0)
        {
          return SentTermCommList;
        }
      }

      goto LABEL_437;
    }

    if (v281)
    {
      v171 = 0;
      v172 = 0;
      v173 = 0;
      v174 = v281;
      while (1)
      {
        if (*(v174 + 4) > 1u)
        {
          v175 = v172;
          goto LABEL_422;
        }

        v171 = 0;
        v175 = 0;
        if (!v173 || !v172)
        {
          goto LABEL_420;
        }

        v173 = v174;
        if (v172 != v174)
        {
          break;
        }

LABEL_422:
        v176 = *(v174 + 15);
        if (v176 <= 0)
        {
          v174 = *v174;
        }

        else
        {
          v174 = *v174;
          if (v171 == 0 || v171 >= v176)
          {
            v175 = v174;
            v171 = v176;
          }
        }

        v172 = v175;
        if (!v174)
        {
          goto LABEL_428;
        }
      }

      do
      {
        if ((*(v172 + 8) & 0x80000000) == 0)
        {
          *(v172 + 8) = -1;
        }

        v172 = *v172;
      }

      while (v172 != v174);
      v175 = 0;
      v171 = 0;
LABEL_420:
      v173 = v174;
      goto LABEL_422;
    }

LABEL_428:
    if (*v47 >= 1)
    {
      SentTermCommList = mosyntknowl_WriteTraceHeader(a1, 4u);
      if ((SentTermCommList & 0x80000000) != 0)
      {
        return SentTermCommList;
      }

      SentTermCommList = mosyntbase_WString(a1, "after postcyclic deletion: ", 0);
      if ((SentTermCommList & 0x80000000) != 0)
      {
        return SentTermCommList;
      }

      SentTermCommList = WriteBoundList(a1, v47, v281, 0);
      if ((SentTermCommList & 0x80000000) != 0)
      {
        return SentTermCommList;
      }

      SentTermCommList = mosyntbase_WLn(a1);
      if ((SentTermCommList & 0x80000000) != 0)
      {
        return SentTermCommList;
      }

      goto LABEL_404;
    }

LABEL_437:
    if (v281)
    {
      v178 = 0;
      v179 = 0;
      v180 = 0;
      v181 = 0;
      LODWORD(v284) = 0;
      *&v291 = 0;
      *&v289[0] = 0;
      v182 = v281;
      v183 = 1;
      do
      {
        mosyntdata_GetSentTermCommList(a1, *(v47 + 40), *(v182 + 4), &v291);
        mosyntdata_GetPunctFromCommandList(a1, v291, &v284, v289);
        if (v284 == 11)
        {
          v184 = 1;
        }

        else
        {
          v184 = v178;
        }

        if (v284 == 10)
        {
          v179 = 1;
        }

        else
        {
          v178 = v184;
        }

        if (*(v182 + 14) >= 1)
        {
          if (mosyntkbsymtab_PropTabAvailable(*(v47 + 8)) && mosyntkbsymtab_HasIntPropValue(a1, *(v47 + 8), *(v182 + 14), 6u, 2))
          {
            v183 = 0;
            v181 = 1;
          }

          else if (v183 || !mosyntkbsymtab_PropTabAvailable(*(v47 + 8)))
          {
            v183 = 0;
          }

          else
          {
            v183 = 0;
            if (mosyntkbsymtab_HasIntPropValue(a1, *(v47 + 8), *(v182 + 14), 6u, 3))
            {
              v180 = 1;
            }
          }
        }

        v182 = *v182;
      }

      while (v182);
      if (v178)
      {
        v185 = 9;
      }

      else
      {
        v185 = 2;
      }

      if (v179)
      {
        if (v180)
        {
          v185 = 8;
        }

        else
        {
          v185 = 4;
        }

        if (!v181)
        {
          if (v180)
          {
            v264 = v281;
            do
            {
              if (*(v264 + 14) >= 1 && mosyntkbsymtab_PropTabAvailable(*(v47 + 8)) && mosyntkbsymtab_HasIntPropValue(a1, *(v47 + 8), *(v264 + 14), 6u, 3))
              {
                *(v264 + 4) = 2;
              }

              v264 = *v264;
            }

            while (v264);
            v209 = 1;
          }

          else
          {
            v209 = 0;
            v185 = 4;
          }

LABEL_531:
          if (v281)
          {
            v210 = 0;
            v211 = 1;
            v212 = v281;
            do
            {
              if (v212[1] < 0)
              {
                v213 = *v212;
              }

              else
              {
                v213 = *v212;
                if (v210)
                {
                  if (!v213)
                  {
                    *(v210 + 8) = v185;
                    break;
                  }

                  if (v209)
                  {
                    if (v211)
                    {
                      v211 = 0;
                      *(v210 + 8) = 6;
                    }

                    else
                    {
                      *(v210 + 8) = 7;
                    }
                  }

                  else
                  {
                    *(v210 + 8) = 1;
                  }
                }

                v210 = v212;
              }

              v212 = v213;
            }

            while (v213);
          }

          if (*v47 >= 1)
          {
            SentTermCommList = mosyntknowl_WriteTraceHeader(a1, 4u);
            if ((SentTermCommList & 0x80000000) != 0)
            {
              return SentTermCommList;
            }

            SentTermCommList = mosyntbase_WStringLn(a1, "after setting phrase types: ", 0);
            if ((SentTermCommList & 0x80000000) != 0)
            {
              return SentTermCommList;
            }

            SentTermCommList = WriteBoundList(a1, v47, v281, 1);
            if ((SentTermCommList & 0x80000000) != 0)
            {
              return SentTermCommList;
            }

            SentTermCommList = mosyntbase_WLn(a1);
            if ((SentTermCommList & 0x80000000) != 0)
            {
              return SentTermCommList;
            }
          }

          v222 = mosyntkbsymtab_WildConsId(*(v47 + 8));
          if (mosyntkbsymtab_PropTabAvailable(*(v47 + 8)) && mosyntkbsymtab_HasIntPropValue(a1, *(v47 + 8), v222, 9u, 1))
          {
            if (!v281)
            {
              goto LABEL_653;
            }

            v223 = v281;
            do
            {
              if (*(v223 + 15))
              {
                ++*(v223 + 15);
              }

              v223 = *v223;
            }

            while (v223);
          }

          if (v281)
          {
            v224 = 0;
            v225 = 0;
            v226 = 0;
            BestScenarioPathSuffix = 0;
            v227 = v281;
            do
            {
              if ((v227[1] & 0x80000000) == 0)
              {
                if (v225)
                {
                  *(v225 + 15) = 1;
                }

                *&v291 = 0;
                SentTermCommList = mosyntpal_ALLOCATE(a1, &v291, 0x12Au);
                if ((SentTermCommList & 0x80000000) != 0)
                {
                  return SentTermCommList;
                }

                if (v226)
                {
                  for (j = 0; j != 99; ++j)
                  {
                    *(v291 + j) = 0;
                  }

                  for (k = v226; k != v227; k = *k)
                  {
                    v230 = *(k + 30);
                    if (v230 <= 98)
                    {
                      *(v291 + v230) = 1;
                    }
                  }

                  v231 = 0;
                  v232 = 1;
                  v233 = v291;
                  do
                  {
                    if (*(v233 + v231))
                    {
                      *(v233 + 2 * v231 + 100) = v232++;
                    }

                    ++v231;
                  }

                  while (v231 != 99);
                  while (v226 != v227)
                  {
                    v234 = *(v226 + 30);
                    if (v234 <= 98)
                    {
                      v235 = v291;
                      if (*v47 >= 2 && *(v291 + 2 * v234 + 100) != v234)
                      {
                        SentTermCommList = mosyntknowl_WriteTraceHeader(a1, 4u);
                        if ((SentTermCommList & 0x80000000) != 0)
                        {
                          return SentTermCommList;
                        }

                        SentTermCommList = mosyntbase_WString(a1, "accent normalization: ", 0);
                        if ((SentTermCommList & 0x80000000) != 0)
                        {
                          return SentTermCommList;
                        }

                        SentTermCommList = mosyntbase_WInt(a1, *(v226 + 30), 0);
                        if ((SentTermCommList & 0x80000000) != 0)
                        {
                          return SentTermCommList;
                        }

                        SentTermCommList = mosyntbase_WString(a1, " changed to ", 0);
                        if ((SentTermCommList & 0x80000000) != 0)
                        {
                          return SentTermCommList;
                        }

                        SentTermCommList = mosyntbase_WInt(a1, *(v291 + 2 * *(v226 + 30) + 100), 0);
                        if ((SentTermCommList & 0x80000000) != 0)
                        {
                          return SentTermCommList;
                        }

                        SentTermCommList = mosyntbase_WLn(a1);
                        if ((SentTermCommList & 0x80000000) != 0)
                        {
                          return SentTermCommList;
                        }

                        v235 = v291;
                        LOWORD(v234) = *(v226 + 30);
                      }

                      *(v226 + 30) = *(v235 + 2 * v234 + 100);
                      if (mosyntkbsymtab_PropTabAvailable(*(v47 + 8)))
                      {
                        v236 = mosyntkbsymtab_IntPropValue(a1, *(v47 + 8), *(v226 + 28), 2u);
                      }

                      else
                      {
                        v236 = 1;
                      }

                      v237 = *(v226 + 30);
                      if (v237 >= 2 && v236 > v237)
                      {
                        *(v226 + 30) = v236;
                      }
                    }

                    v226 = *v226;
                  }
                }

                BestScenarioPathSuffix = mosyntpal_DEALLOCATE(a1, &v291);
                if ((BestScenarioPathSuffix & 0x80000000) != 0)
                {
                  return BestScenarioPathSuffix;
                }

                v225 = 0;
                v224 = 0;
                v226 = v227;
              }

              if (mosyntkbsymtab_PropTabAvailable(*(v47 + 8)) && mosyntkbsymtab_HasIntPropValue(a1, *(v47 + 8), v222, 7u, 1))
              {
                v238 = *(v227 + 15);
                if (v224)
                {
                  v239 = v224 <= v238;
                }

                else
                {
                  v239 = 0;
                }

                v240 = !v239;
                v241 = v240 == 0;
                if (v240)
                {
                  v242 = v227;
                }

                else
                {
                  v242 = v225;
                }

                if (v241)
                {
                  v243 = v224;
                }

                else
                {
                  v243 = *(v227 + 15);
                }
              }

              else
              {
                v238 = *(v227 + 15);
                v244 = v224 != 0;
                v245 = v224 < v238;
                v246 = !v244 || !v245;
                if (v244 && v245)
                {
                  v242 = v225;
                }

                else
                {
                  v242 = v227;
                }

                if (v246)
                {
                  v243 = *(v227 + 15);
                }

                else
                {
                  v243 = v224;
                }
              }

              if (v238 >= 1)
              {
                v225 = v242;
                v224 = v243;
              }

              v227 = *v227;
            }

            while (v227);
            goto LABEL_654;
          }

LABEL_653:
          BestScenarioPathSuffix = 0;
LABEL_654:
          if (*v47 >= 1)
          {
            SentTermCommList = mosyntknowl_WriteTraceHeader(a1, 4u);
            if ((SentTermCommList & 0x80000000) != 0)
            {
              return SentTermCommList;
            }

            SentTermCommList = mosyntbase_WString(a1, "accent normalization and accent limitation: ", 0);
            if ((SentTermCommList & 0x80000000) != 0)
            {
              return SentTermCommList;
            }

            SentTermCommList = WriteBoundList(a1, v47, v281, 0);
            if ((SentTermCommList & 0x80000000) != 0)
            {
              return SentTermCommList;
            }

            BestScenarioPathSuffix = mosyntbase_WLn(a1);
          }

          if ((BestScenarioPathSuffix & 0x80000000) != 0)
          {
            return BestScenarioPathSuffix;
          }

          if (v281)
          {
            v247 = 0;
            v248 = v281;
            do
            {
              v249 = *(v248 + 4);
              if ((v249 & 0x80000000) == 0)
              {
                if (v247)
                {
                  v250 = *(v248 + 8);
                  v204 = v250 > 8;
                  v251 = (1 << v250) & 0x1D0;
                  v252 = v204 || v251 == 0;
                  if (!v252 && v247 != v248)
                  {
                    v254 = v247;
                    do
                    {
                      if (*(v254 + 30) == 2)
                      {
                        *(v254 + 30) = 3;
                      }

                      v254 = *v254;
                    }

                    while (v254 != v248);
                  }
                }

                if (v249 < 2u)
                {
                  v247 = v248;
                }
              }

              v248 = *v248;
            }

            while (v248);
          }

          if (*v47 >= 1)
          {
            SentTermCommList = mosyntknowl_WriteTraceHeader(a1, 4u);
            if ((SentTermCommList & 0x80000000) != 0)
            {
              return SentTermCommList;
            }

            SentTermCommList = mosyntbase_WString(a1, "reduction of pitch accents: ", 0);
            if ((SentTermCommList & 0x80000000) != 0)
            {
              return SentTermCommList;
            }

            SentTermCommList = WriteBoundList(a1, v47, v281, 0);
            if ((SentTermCommList & 0x80000000) != 0)
            {
              return SentTermCommList;
            }

            SentTermCommList = mosyntbase_WLn(a1);
            if ((SentTermCommList & 0x80000000) != 0)
            {
              return SentTermCommList;
            }
          }

          if (v281)
          {
            v255 = *(v47 + 40);
            if (v255)
            {
              v256 = v281;
              while (1)
              {
                v257 = v256;
                v258 = *(v255 + 16 * *(v256 + 4) + 8);
                if (v258)
                {
                  v259 = *(v257 + 4);
                  if (v259 >= 2)
                  {
                    v259 = 2;
                  }

                  *(v258 + 8) = v259;
                  *(v258 + 12) = *(v257 + 8);
                }

                v256 = *v257;
                if (!*v257)
                {
                  break;
                }

                v260 = *(v255 + 16 * *(v257 + 5));
                if (v260)
                {
                  v261 = *(v257 + 15);
                  if (v261 >= 3)
                  {
                    v262 = 3;
                  }

                  else
                  {
                    v262 = v261;
                  }

                  if (v261 <= 98)
                  {
                    v263 = v262;
                  }

                  else
                  {
                    v263 = 0;
                  }

                  *(v260 + 16) = v263;
                }
              }
            }
          }

          if (v281)
          {
            v265 = v281;
            do
            {
              *&v291 = v265;
              v265 = *v265;
              v266 = mosyntpal_DEALLOCATE(a1, &v291);
              BestScenarioPathSuffix = v266;
            }

            while ((v266 & 0x80000000) == 0 && v265);
            if ((v266 & 0x80000000) != 0)
            {
              return BestScenarioPathSuffix;
            }
          }

          goto LABEL_555;
        }

        v185 = 5;
      }
    }

    else
    {
      v185 = 2;
    }

    v209 = 0;
    goto LABEL_531;
  }

  v285 = 0;
  *(v282 + 80) = 0;
  *(v47 + 88) = 0;
  *(v47 + 72) = 0;
  NewAPVertex(a1, v47, *(a8 + 52), &v285);
  if ((SentTermCommList & 0x80000000) != 0)
  {
    return SentTermCommList;
  }

  *&v291 = 0;
  TreeToChart(a1, v47, a8, v285, 0, &v291);
  if ((SentTermCommList & 0x80000000) != 0)
  {
    return SentTermCommList;
  }

  v48 = &v285;
  if (v291)
  {
    v48 = (v291 + 24);
  }

  v49 = *v48;
  if (v285 == *v48)
  {
LABEL_555:
    v215 = v282;
    v216 = *(v282 + 32);
    *&v291 = v216;
    if (!v216)
    {
LABEL_575:
      *(v215 + 32) = 0;
      return mosyntpal_DEALLOCATE(a1, &v282);
    }

    while (1)
    {
      v217 = *v216;
      v218 = *(v216 + 2);
      if (v218 > 4)
      {
        if (v218 <= 6)
        {
          if (v218 == 5)
          {
            v219 = v216 + 2;
            v220 = a1;
          }

          else
          {
LABEL_568:
            v219 = v216 + 2;
            v220 = a1;
          }

LABEL_572:
          SentTermCommList = mosyntpal_DEALLOCATE(v220, v219);
          if ((SentTermCommList & 0x80000000) != 0)
          {
            return SentTermCommList;
          }

          goto LABEL_573;
        }

        if (v218 == 7)
        {
          v219 = v216 + 2;
          v220 = a1;
          goto LABEL_572;
        }

        if (v218 == 8)
        {
          goto LABEL_568;
        }
      }

      else
      {
        if (v218 > 2)
        {
          if (v218 == 3)
          {
            v219 = v216 + 2;
            v220 = a1;
          }

          else
          {
LABEL_565:
            v219 = v216 + 2;
            v220 = a1;
          }

          goto LABEL_572;
        }

        if (v218 == 1)
        {
          goto LABEL_565;
        }

        if (v218 == 2)
        {
          v219 = v216 + 2;
          v220 = a1;
          goto LABEL_572;
        }
      }

LABEL_573:
      SentTermCommList = mosyntpal_DEALLOCATE(a1, &v291);
      if ((SentTermCommList & 0x80000000) != 0)
      {
        return SentTermCommList;
      }

      *&v291 = v217;
      v216 = v217;
      if (!v217)
      {
        goto LABEL_575;
      }
    }
  }

  SentTermCommList = SetFunctionWords(a1, v47, v285, *v48);
  if ((SentTermCommList & 0x80000000) != 0)
  {
    return SentTermCommList;
  }

  v283 = 0;
  v50 = v285;
  if (*v47 >= 1)
  {
    SentTermCommList = mosyntknowl_WriteTraceHeader(a1, 4u);
    if ((SentTermCommList & 0x80000000) != 0)
    {
      return SentTermCommList;
    }

    SentTermCommList = mosyntbase_WriteMessage(a1, "[AccPhr] Sentence PoS and phonetic string:\\n", 0, "", 0, "", 0, "", 0);
    if ((SentTermCommList & 0x80000000) != 0)
    {
      return SentTermCommList;
    }

    SentTermCommList = mosyntbase_WString(a1, "[AccPhr] ", 0);
    if ((SentTermCommList & 0x80000000) != 0)
    {
      return SentTermCommList;
    }

    SentTermCommList = WriteCoverage(a1, v47, v50, v49);
    if ((SentTermCommList & 0x80000000) != 0)
    {
      return SentTermCommList;
    }

    SentTermCommList = mosyntbase_WLn(a1);
    if ((SentTermCommList & 0x80000000) != 0)
    {
      return SentTermCommList;
    }
  }

  v284 = 0;
  if (v50 == v49)
  {
    v280 = (v47 + 16);
  }

  else
  {
    do
    {
      SentTermCommList = MatchEdge(a1, v47, v50[4], &v284, &v283);
      if ((SentTermCommList & 0x80000000) != 0)
      {
        return SentTermCommList;
      }

      for (m = v50[6]; m; m = *m)
      {
        SentTermCommList = MatchEdge(a1, v47, m, &v284, &v283);
        if ((SentTermCommList & 0x80000000) != 0)
        {
          return SentTermCommList;
        }
      }

      v50 = v50[2];
    }

    while (v50 != v49);
    v52 = v284;
    v53 = *(v47 + 16);
    v280 = (v47 + 16);
    if (v284)
    {
      BestScenarioPathSuffix = 0;
      do
      {
        if (IsMatchingRule(a1, v47, *(v52 + 2), v52[3], v52[2]))
        {
          BestScenarioPathSuffix = AddEdgeRule(a1, v47, *(v52 + 2), v52[3]);
          if ((BestScenarioPathSuffix & 0x80000000) != 0)
          {
            return BestScenarioPathSuffix;
          }

          if (mosyntkbaccphr_GetRule(0, v53, *(v52 + 2)) >= 1)
          {
            BestScenarioPathSuffix = AddRuleScenarios(a1, v47, *(v52 + 2), (v52[2] + 40), &v283);
            if ((BestScenarioPathSuffix & 0x80000000) != 0)
            {
              return BestScenarioPathSuffix;
            }
          }
        }

        v52 = *v52;
      }

      while (v52);
      if ((BestScenarioPathSuffix & 0x80000000) != 0)
      {
        return BestScenarioPathSuffix;
      }
    }
  }

  v60 = v283;
  v61 = v285;
  if (v283)
  {
    v62 = 0;
    v297 = 0;
    v295 = 0u;
    v296 = 0u;
    v293 = 0u;
    v294 = 0u;
    v291 = 0u;
    v292 = 0u;
    while (1)
    {
      BestScenarioPathSuffix = mosyntkbsymtab_AtomSymString(a1, *(v47 + 8), *(v60 + 8), &v291, 100);
      if ((BestScenarioPathSuffix & 0x80000000) != 0)
      {
        return BestScenarioPathSuffix;
      }

      if (v61 == v49)
      {
        goto LABEL_137;
      }

      v63 = v61;
      do
      {
        v64 = *(v60 + 8);
        v65 = 1;
        v66 = v63;
        while (1)
        {
          v67 = *(v66 + 6);
          if (!v67)
          {
            break;
          }

          while (1)
          {
            v68 = v67;
            v69 = v67[5];
            if (v69)
            {
              break;
            }

LABEL_118:
            v71 = 1;
LABEL_120:
            v67 = *v68;
            if (!*v68)
            {
              goto LABEL_121;
            }
          }

          while (1)
          {
            v70 = *(v69 + 2);
            if (v70 >= v64)
            {
              break;
            }

            v69 = *v69;
            if (!v69)
            {
              goto LABEL_118;
            }
          }

          v71 = v70 != v64;
          if (v70 != v64)
          {
            goto LABEL_120;
          }

LABEL_121:
          if (v71)
          {
            break;
          }

          v74 = v68[3];
LABEL_130:
          v65 = 0;
          v62 = v63;
          v66 = v74;
          if (v74 == v49)
          {
            v76 = AddSegment(a1, v47, v64, v63, v74);
            BestScenarioPathSuffix = v76;
            v62 = v63;
            if ((v76 & 0x80000000) != 0)
            {
              return BestScenarioPathSuffix;
            }

            goto LABEL_137;
          }
        }

        v72 = *(v66 + 4);
        v73 = *(v72 + 40);
        if (v73)
        {
          v74 = *(v72 + 24);
          while (1)
          {
            v75 = *(v73 + 2);
            if (v75 >= v64)
            {
              break;
            }

            v73 = *v73;
            if (!v73)
            {
              goto LABEL_132;
            }
          }

          if (v75 == v64)
          {
            goto LABEL_130;
          }
        }

LABEL_132:
        if ((v65 & 1) == 0)
        {
          BestScenarioPathSuffix = AddSegment(a1, v47, v64, v62, v66);
          if ((BestScenarioPathSuffix & 0x80000000) != 0)
          {
            return BestScenarioPathSuffix;
          }
        }

        v63 = *(v66 + 2);
      }

      while (v63 != v49);
LABEL_137:
      v60 = *v60;
      if (!v60)
      {
        if ((BestScenarioPathSuffix & 0x80000000) != 0)
        {
          return BestScenarioPathSuffix;
        }

        v61 = v285;
        break;
      }
    }
  }

  v286 = 0;
  v288 = 0;
  v287 = 0;
  v290 = 0;
  memset(v289, 0, sizeof(v289));
  BestScenarioPathSuffix = GetBestScenarioPathSuffix(a1, v47, 0, v61, v49, &v288 + 1, &v288, &v287, &v286);
  if ((BestScenarioPathSuffix & 0x80000000) != 0)
  {
    return BestScenarioPathSuffix;
  }

  v77 = v286;
  if (*v47 >= 1)
  {
    SentTermCommList = mosyntknowl_WriteTraceHeader(a1, 4u);
    if ((SentTermCommList & 0x80000000) != 0)
    {
      return SentTermCommList;
    }

    BestScenarioPathSuffix = mosyntbase_WriteMessage(a1, "[AccPhr] Optimal Scenario Combination:\\n", 0, "", 0, "", 0, "", 0);
    if ((BestScenarioPathSuffix & 0x80000000) != 0)
    {
      return BestScenarioPathSuffix;
    }
  }

  for (; v77; v77 = *v77)
  {
    if (*v47 >= 1 && v61 != *(v77[1] + 8))
    {
      SentTermCommList = mosyntknowl_WriteTraceHeader(a1, 4u);
      if ((SentTermCommList & 0x80000000) != 0)
      {
        return SentTermCommList;
      }

      SentTermCommList = mosyntbase_WString(a1, "[AccPhr] No scenario covering: ", 0);
      if ((SentTermCommList & 0x80000000) != 0)
      {
        return SentTermCommList;
      }

      SentTermCommList = WriteCoverage(a1, v47, v61, *(v77[1] + 8));
      if ((SentTermCommList & 0x80000000) != 0)
      {
        return SentTermCommList;
      }

      BestScenarioPathSuffix = mosyntbase_WLn(a1);
      if ((BestScenarioPathSuffix & 0x80000000) != 0)
      {
        return BestScenarioPathSuffix;
      }
    }

    v78 = v77[1];
    v79 = *(v78 + 8);
    while (v61 != v79)
    {
      *(v61 + 20) = 0;
      v61 = v61[2];
    }

    if (*v47 >= 1)
    {
      SentTermCommList = mosyntknowl_WriteTraceHeader(a1, 4u);
      if ((SentTermCommList & 0x80000000) != 0)
      {
        return SentTermCommList;
      }

      SentTermCommList = mosyntbase_WString(a1, "[AccPhr] Scenario '", 0);
      if ((SentTermCommList & 0x80000000) != 0)
      {
        return SentTermCommList;
      }

      v80 = *(v77[1] + 24);
      v297 = 0;
      v295 = 0u;
      v296 = 0u;
      v293 = 0u;
      v294 = 0u;
      v291 = 0u;
      v292 = 0u;
      SentTermCommList = mosyntkbsymtab_AtomSymString(a1, *(v47 + 8), v80, &v291, 100);
      if ((SentTermCommList & 0x80000000) != 0)
      {
        return SentTermCommList;
      }

      SentTermCommList = mosyntbase_WString(a1, &v291, 100);
      if ((SentTermCommList & 0x80000000) != 0)
      {
        return SentTermCommList;
      }

      SentTermCommList = mosyntbase_WString(a1, "' covers: ", 0);
      if ((SentTermCommList & 0x80000000) != 0)
      {
        return SentTermCommList;
      }

      SentTermCommList = WriteCoverage(a1, v47, *(v77[1] + 8), *(v77[1] + 16));
      if ((SentTermCommList & 0x80000000) != 0)
      {
        return SentTermCommList;
      }

      BestScenarioPathSuffix = mosyntbase_WLn(a1);
      if ((BestScenarioPathSuffix & 0x80000000) != 0)
      {
        return BestScenarioPathSuffix;
      }

      goto LABEL_162;
    }

    while (v61 != *(v78 + 16))
    {
      v81 = *(v78 + 24);
      *(v61 + 20) = v81;
      BestScenarioPathSuffix = mosyntkbsymtab_AtomSymString(a1, *(v47 + 8), v81, v289, 100);
      if ((BestScenarioPathSuffix & 0x80000000) != 0)
      {
        return BestScenarioPathSuffix;
      }

      v61 = v61[2];
LABEL_162:
      v78 = v77[1];
    }
  }

  v271 = v49;
  if (v61 != v49 && *v47 >= 1)
  {
    SentTermCommList = mosyntknowl_WriteTraceHeader(a1, 4u);
    if ((SentTermCommList & 0x80000000) != 0)
    {
      return SentTermCommList;
    }

    SentTermCommList = mosyntbase_WString(a1, "[AccPhr] No scenario covering: ", 0);
    if ((SentTermCommList & 0x80000000) != 0)
    {
      return SentTermCommList;
    }

    SentTermCommList = WriteCoverage(a1, v47, v61, v49);
    if ((SentTermCommList & 0x80000000) != 0)
    {
      return SentTermCommList;
    }

    BestScenarioPathSuffix = mosyntbase_WLn(a1);
    if ((BestScenarioPathSuffix & 0x80000000) != 0)
    {
      return BestScenarioPathSuffix;
    }
  }

  while (v61 != v49)
  {
    *(v61 + 20) = 0;
    v61 = v61[2];
  }

  if ((BestScenarioPathSuffix & 0x80000000) != 0)
  {
    return BestScenarioPathSuffix;
  }

  v86 = v285;
  if (v285 != v49)
  {
    BestScenarioPathSuffix = 0;
    v278 = *v280;
    v87 = v285;
    v267 = v285;
    while (1)
    {
      v88 = v87[6];
      v269 = v88 == 0;
      v276 = v87;
      if (v88)
      {
        break;
      }

      v88 = v87[4];
      if (v88)
      {
        break;
      }

      v154 = v271;
LABEL_338:
      v87 = v276[2];
      v86 = v267;
      if (v87 == v154)
      {
        goto LABEL_435;
      }
    }

    while (1)
    {
      v89 = *(v88 + 32);
      v90 = v278;
      if (v89)
      {
        break;
      }

LABEL_329:
      v88 = *v88;
      if (v88)
      {
        v153 = 0;
      }

      else
      {
        v153 = !v269;
      }

      if (v153)
      {
        v88 = v276[4];
        v269 = 1;
      }

      v154 = v271;
      if (!v88)
      {
        goto LABEL_338;
      }
    }

    while (1)
    {
      v274 = v89;
      v91 = v89[2];
      if (v91)
      {
        break;
      }

LABEL_328:
      v89 = *v274;
      if (!*v274)
      {
        goto LABEL_329;
      }
    }

    while (1)
    {
      if (mosyntkbaccphr_GetRule(0, v90, *(v91 + 2)) < 1)
      {
        goto LABEL_203;
      }

      Rule = mosyntkbaccphr_GetRule(0, v90, *(v91 + 2));
      v93 = *(v276 + 20);
      v94 = *v280;
      for (n = mosyntkbaccphr_AccPhrScenarios(*v280); ; n = mosyntkbaccphr_GetScenario(3, v94, v96))
      {
        v96 = n;
        Scenario = mosyntkbaccphr_Nil(n);
        if (v96 == Scenario)
        {
          break;
        }

        Scenario = mosyntkbaccphr_GetScenario(1, v94, v96);
        if (Scenario == v93)
        {
          break;
        }
      }

      if (v96 == mosyntkbaccphr_Nil(Scenario) || (RuleSet = mosyntkbaccphr_GetScenario(2, v94, v96), RuleSet == mosyntkbaccphr_Nil(RuleSet)))
      {
        v90 = v278;
        goto LABEL_203;
      }

      do
      {
        if (mosyntkbaccphr_GetRuleSetIsSubset(v94, RuleSet))
        {
          v99 = 0;
        }

        else
        {
          v99 = mosyntkbaccphr_GetRuleSet(1, v94, RuleSet) == Rule;
        }

        RuleSet = mosyntkbaccphr_GetRuleSet(4, v94, RuleSet);
      }

      while (RuleSet != mosyntkbaccphr_Nil(RuleSet) && !v99);
      v90 = v278;
      if (v99)
      {
        break;
      }

LABEL_203:
      v91 = *v91;
      if (!v91)
      {
        goto LABEL_328;
      }
    }

    if (*v47 >= 1)
    {
      SentTermCommList = mosyntbase_WriteMessage(a1, "[AccPhr]\\n[AccPhr] <<<< Applying rule:\\n", 0, "", 0, "", 0, "", 0);
      if ((SentTermCommList & 0x80000000) != 0)
      {
        return SentTermCommList;
      }

      SentTermCommList = mosyntbase_WString(a1, "[AccPhr] ", 0);
      if ((SentTermCommList & 0x80000000) != 0)
      {
        return SentTermCommList;
      }

      SentTermCommList = mosyntkbaccphr_WriteRuleHeadline(a1, *(v47 + 8), v278, *(v91 + 2));
      if ((SentTermCommList & 0x80000000) != 0)
      {
        return SentTermCommList;
      }

      SentTermCommList = mosyntbase_WLn(a1);
      if ((SentTermCommList & 0x80000000) != 0)
      {
        return SentTermCommList;
      }

      SentTermCommList = mosyntbase_WriteMessage(a1, "[AccPhr] Node Covers:\\n", 0, "", 0, "", 0, "", 0);
      if ((SentTermCommList & 0x80000000) != 0)
      {
        return SentTermCommList;
      }

      SentTermCommList = mosyntbase_WString(a1, "[AccPhr] ", 0);
      if ((SentTermCommList & 0x80000000) != 0)
      {
        return SentTermCommList;
      }

      SentTermCommList = WriteCoverage(a1, v47, *(v88 + 16), *(v88 + 24));
      if ((SentTermCommList & 0x80000000) != 0)
      {
        return SentTermCommList;
      }

      SentTermCommList = mosyntbase_WLn(a1);
      v90 = v278;
      if ((SentTermCommList & 0x80000000) != 0)
      {
        return SentTermCommList;
      }
    }

    v100 = mosyntkbaccphr_GetRule(12, v90, *(v91 + 2));
    *&v291 = 0;
    v287 = 0;
    LODWORD(v288) = 0;
    *&v289[0] = 0;
    v286 = 0;
    v101 = *v280;
    if (mosyntkbaccphr_Nil(v100) == v100)
    {
      goto LABEL_221;
    }

    v272 = 0;
    BestScenarioPathSuffix = 0;
    v110 = v101;
    while (1)
    {
      mosyntkbaccphr_GetInstrType(v101, v100);
      if (mosyntkbaccphr_GetInstrType(v101, v100) <= 6)
      {
        *&v291 = v88;
        Instr = mosyntkbaccphr_GetInstr(0, v101, v100);
        if (!mosyntkbaccphr_GetNode(3, v101, Instr))
        {
          goto LABEL_252;
        }

        v112 = mosyntkbaccphr_GetInstr(0, v101, v100);
        if (mosyntkbaccphr_GetNodeMatchOp(v101, v112))
        {
          v113 = mosyntkbaccphr_GetInstr(0, v101, v100);
          v114 = *v274;
          HIDWORD(v288) = v113;
          if (v114)
          {
            do
            {
              v115 = IsMatchingNode(a1, v47, &v288 + 1, v114);
              if (v115)
              {
                break;
              }

              v114 = *v114;
            }

            while (v114);
            v101 = v110;
            if (v115)
            {
LABEL_252:
              if (*v47 >= 1)
              {
                SentTermCommList = mosyntknowl_WriteTraceHeader(a1, 4u);
                if ((SentTermCommList & 0x80000000) != 0)
                {
                  return SentTermCommList;
                }

                SentTermCommList = mosyntbase_WStringLn(a1, "[AccPhr]", 0);
                if ((SentTermCommList & 0x80000000) != 0)
                {
                  return SentTermCommList;
                }

                SentTermCommList = mosyntknowl_WriteTraceHeader(a1, 4u);
                if ((SentTermCommList & 0x80000000) != 0)
                {
                  return SentTermCommList;
                }

                SentTermCommList = mosyntbase_WString(a1, "[AccPhr] --> Instruction ", 0);
                if ((SentTermCommList & 0x80000000) != 0)
                {
                  return SentTermCommList;
                }

                BestScenarioPathSuffix = mosyntkbaccphr_WriteInstruction(a1, *(v47 + 8), v110, v100);
                if ((BestScenarioPathSuffix & 0x80000000) != 0)
                {
                  return BestScenarioPathSuffix;
                }
              }

              v123 = v110;
              InstrType = mosyntkbaccphr_GetInstrType(v110, v100);
              if ((InstrType - 3) >= 3)
              {
                if (InstrType == 2)
                {
                  if (mosyntkbaccphr_GetInstrRight(v110, v100))
                  {
                    v131 = (*(v291 + 24) + 24);
                  }

                  else
                  {
                    v131 = &v291;
                  }

                  v132 = 0;
                  v133 = *(*v131 + 16);
                  v272 = *(v133 + 32);
                  *(v133 + 84) = 1;
                }

                else if (InstrType)
                {
                  v132 = 1;
                }

                else
                {
                  InstrRight = mosyntkbaccphr_GetInstrRight(v110, v100);
                  v127 = 24;
                  v128 = 16;
                  if (InstrRight)
                  {
                    v128 = 24;
                  }

                  else
                  {
                    v127 = 32;
                  }

                  v129 = *(v291 + v128);
                  v272 = *(v129 + v127);
                  if (mosyntkbaccphr_GetInstr(2, v110, v100))
                  {
                    if (mosyntkbaccphr_GetInstr(2, v110, v100) == 1)
                    {
                      v130 = 5;
                    }

                    else
                    {
                      v130 = mosyntkbaccphr_GetInstr(2, v110, v100);
                    }

                    LODWORD(v288) = v130;
                    if (*(v129 + 68) < 2u)
                    {
                      goto LABEL_303;
                    }

                    *(v129 + 68) = 1;
                    if (v130 <= *(v129 + 72))
                    {
                      goto LABEL_303;
                    }

                    v132 = 0;
                    *(v129 + 72) = v130;
                  }

                  else
                  {
                    if ((*(v129 + 68) & 0x80000000) == 0)
                    {
                      goto LABEL_303;
                    }

                    v132 = 0;
                    *(v129 + 68) = 2;
                  }
                }
              }

              else
              {
                if (mosyntkbaccphr_GetInstrTargetRange(v110, v100) && mosyntkbaccphr_GetInstrTargetRange(v110, v100) == 1)
                {
                  if (mosyntkbaccphr_GetInstrRight(v110, v100))
                  {
                    v125 = *(*(v291 + 24) + 24);
                  }

                  else
                  {
                    v125 = *(*(v291 + 16) + 32);
                  }

                  *&v291 = v125;
                  v123 = v110;
                }

                v272 = v291;
                v134 = *(v291 + 16);
                v135 = mosyntkbaccphr_GetInstrType(v123, v100);
                if (v135 == 4)
                {
                  v136 = 2;
                }

                else
                {
                  v136 = 1;
                }

                if (v135 == 5)
                {
                  v137 = 3;
                }

                else
                {
                  v137 = v136;
                }

                v138 = mosyntkbaccphr_GetInstr(2, v123, v100);
                SentTermCommList = mosyntdata_EncodeSymbolicValue(a1, v138, 0, &v288);
                if ((SentTermCommList & 0x80000000) != 0)
                {
                  return SentTermCommList;
                }

                v139 = mosyntkbaccphr_GetInstr(2, v110, v100);
                BestScenarioPathSuffix = mosyntdata_EncodeSymbolicValue(a1, v139, 1, &v287);
                if ((BestScenarioPathSuffix & 0x80000000) != 0)
                {
                  return BestScenarioPathSuffix;
                }

                do
                {
                  v140 = mosyntdata_SentTermBoundData(a1, *(v47 + 40), *(*(v134 + 32) + 84));
                  if (v140)
                  {
                    v141 = v140;
                    SentTermCommList = mosyntdata_NewCommand(a1, &v286);
                    if ((SentTermCommList & 0x80000000) != 0)
                    {
                      return SentTermCommList;
                    }

                    v142 = v286;
                    v143 = v288;
                    *(v286 + 8) = v137;
                    *(v142 + 12) = v143;
                    *&v289[0] = mosyntdata_LastCommand(a1, *v141);
                    BestScenarioPathSuffix = mosyntdata_AppendCommandList(a1, v141, v289, v286, v286);
                    if ((BestScenarioPathSuffix & 0x80000000) != 0)
                    {
                      return BestScenarioPathSuffix;
                    }
                  }

                  v134 = *(v134 + 16);
                  v144 = mosyntdata_SentTermBoundData(a1, *(v47 + 40), *(v134 + 64));
                  if (v144)
                  {
                    v145 = v144;
                    SentTermCommList = mosyntdata_NewCommand(a1, &v286);
                    if ((SentTermCommList & 0x80000000) != 0)
                    {
                      return SentTermCommList;
                    }

                    v146 = v286;
                    v147 = v287;
                    *(v286 + 8) = v137;
                    *(v146 + 12) = v147;
                    *&v289[0] = mosyntdata_LastCommand(a1, *v145);
                    v148 = v286;
                    if (v286 && (*v286 = *v145, *v145 = v148, !*&v289[0]))
                    {
                      BestScenarioPathSuffix = 0;
                      *&v289[0] = v148;
                    }

                    else
                    {
                      BestScenarioPathSuffix = 0;
                    }
                  }
                }

                while (v134 != *(v291 + 24));
LABEL_303:
                v132 = 0;
              }

              if (*v47 >= 1)
              {
                SentTermCommList = mosyntbase_WString(a1, " : ", 0);
                if ((SentTermCommList & 0x80000000) != 0)
                {
                  return SentTermCommList;
                }

                if (v132)
                {
                  v149 = mosyntbase_WStringLn(a1, " not implemented yet!", 0);
                }

                else
                {
                  SentTermCommList = WriteCoverage(a1, v47, *(v272 + 16), *(v272 + 24));
                  if ((SentTermCommList & 0x80000000) != 0)
                  {
                    return SentTermCommList;
                  }

                  v149 = mosyntbase_WLn(a1);
                }

                BestScenarioPathSuffix = v149;
                if ((v149 & 0x80000000) != 0)
                {
                  return BestScenarioPathSuffix;
                }
              }

              goto LABEL_311;
            }
          }

          else
          {
            v101 = v110;
          }
        }

        v116 = mosyntkbaccphr_GetInstr(0, v101, v100);
        if ((mosyntkbaccphr_GetNodeMatchOp(v101, v116) & 2) != 0 && *(v88 + 72))
        {
          v117 = mosyntkbaccphr_GetInstrRight(v110, v100);
          if (v117)
          {
            v118 = *(v88 + 72);
            do
            {
              v119 = v118;
              v118 = v118[7];
            }

            while (v118);
            v120 = mosyntkbaccphr_GetInstr(0, v110, v100);
            v121 = IsRightMatchingTarget(a1, v47, v120, v119, &v291);
          }

          else
          {
            v122 = mosyntkbaccphr_GetInstr(v117, v110, v100);
            v121 = IsLeftMatchingTarget(a1, v47, v122, *(v88 + 72), &v291);
          }

          if (v121)
          {
            goto LABEL_252;
          }
        }
      }

LABEL_311:
      v101 = v110;
      v100 = mosyntkbaccphr_GetInstr(6, v110, v100);
      if (v100 == mosyntkbaccphr_Nil(v100))
      {
        v90 = v278;
        if ((BestScenarioPathSuffix & 0x80000000) != 0)
        {
          return BestScenarioPathSuffix;
        }

LABEL_221:
        v102 = mosyntkbaccphr_GetRule(13, v90, *(v91 + 2));
        v103 = *v280;
        Children = mosyntkbaccphr_Nil(v102);
        LODWORD(v105) = v102;
        if (v102 != Children)
        {
          v105 = v102;
          do
          {
            v106 = *(v88 + 16);
            Children = mosyntkbaccphr_GetChildren(1, v103, v102);
            LODWORD(v291) = Children;
            if (v106 == *(v88 + 24))
            {
              break;
            }

            v107 = Children;
            do
            {
              Children = mosyntkbaccphr_Nil(Children);
              if (v107 == Children)
              {
                break;
              }

              v108 = *(*(v106 + 32) + 32);
              do
              {
                v109 = v108;
                v108 = *v108;
              }

              while (v108);
              Children = IsMatchingNode(a1, v47, &v291, v109);
              if (!Children)
              {
                break;
              }

              v106 = *(v106 + 16);
              Children = mosyntkbaccphr_GetNode(8, v103, v107);
              v107 = Children;
              LODWORD(v291) = Children;
            }

            while (v106 != *(v88 + 24));
            if (v106 == *(v88 + 24))
            {
              break;
            }

            v105 = mosyntkbaccphr_GetChildren(2, v103, v105);
            Children = mosyntkbaccphr_Nil(v105);
          }

          while (v105 != Children);
        }

        if (v105 == mosyntkbaccphr_Nil(Children))
        {
          BestScenarioPathSuffix = 0;
LABEL_325:
          v90 = v278;
          if (*v47 >= 1)
          {
            BestScenarioPathSuffix = mosyntbase_WriteMessage(a1, "[AccPhr] End rule.>>>>>\\n", 0, "", 0, "", 0, "", 0);
            if ((BestScenarioPathSuffix & 0x80000000) != 0)
            {
              return BestScenarioPathSuffix;
            }
          }

          goto LABEL_203;
        }

        if (*v47 < 1)
        {
          BestScenarioPathSuffix = 0;
LABEL_322:
          v150 = *(v88 + 16);
          v151 = mosyntkbaccphr_GetChildren(1, v103, v102);
          if (v150 != *(v88 + 24))
          {
            Node = v151;
            do
            {
              *(v150 + 84) = mosyntkbaccphr_GetNode(2, v103, Node);
              v150 = *(v150 + 16);
              Node = mosyntkbaccphr_GetNode(8, v103, Node);
            }

            while (v150 != *(v88 + 24));
          }

          goto LABEL_325;
        }

        SentTermCommList = mosyntknowl_WriteTraceHeader(a1, 4u);
        if ((SentTermCommList & 0x80000000) == 0)
        {
          SentTermCommList = mosyntbase_WStringLn(a1, "[AccPhr]", 0);
          if ((SentTermCommList & 0x80000000) == 0)
          {
            SentTermCommList = mosyntknowl_WriteTraceHeader(a1, 4u);
            if ((SentTermCommList & 0x80000000) == 0)
            {
              SentTermCommList = mosyntbase_WString(a1, "[AccPhr] --> Template ", 0);
              if ((SentTermCommList & 0x80000000) == 0)
              {
                BestScenarioPathSuffix = mosyntkbaccphr_WritePromTemplate(a1, *(v47 + 8), v103, v105);
                if ((BestScenarioPathSuffix & 0x80000000) != 0)
                {
                  return BestScenarioPathSuffix;
                }

                goto LABEL_322;
              }
            }
          }
        }

        return SentTermCommList;
      }
    }
  }

  BestScenarioPathSuffix = 0;
LABEL_435:
  *(v86 + 34) = 0;
  *&v291 = 0;
  if (v271)
  {
    mosyntdata_GetSentTermCommList(a1, *(v47 + 40), v271[16], &v291);
    v177 = v291;
  }

  else
  {
    v177 = 0;
  }

  *(v271 + 34) = FinalBoundaryIndex(a1, v177);
  if ((BestScenarioPathSuffix & 0x80000000) != 0)
  {
    return BestScenarioPathSuffix;
  }

  v268 = v285;
  if (!v285)
  {
    BestScenarioPathSuffix = 0;
    goto LABEL_546;
  }

  v186 = 0;
  v187 = 0;
  v188 = 0;
  BestScenarioPathSuffix = 0;
  LODWORD(v286) = 0;
  *&v291 = 0;
  *&v289[0] = 0;
  v189 = v285;
  do
  {
    v273 = v189;
    if (*(v189 + 34) < 0)
    {
      goto LABEL_506;
    }

    if (v187 && !v186)
    {
      if (v187 != v189)
      {
        v186 = 0;
        v190 = -1;
        v270 = v187;
        do
        {
          v277 = v190;
          v279 = v186;
          v275 = v187;
          v191 = *(v187[4] + 32);
          do
          {
            v192 = v191;
            v191 = *v191;
          }

          while (v191);
          v193 = *v280;
          v194 = mosyntkbaccphr_AccPhrHierarchy(*v280);
          BYTE4(v288) = 0;
          v195 = mosyntkbaccphr_Nil(v194);
          if (v194 == v195)
          {
            v196 = 0;
          }

          else
          {
            v196 = 0;
            do
            {
              v197 = v192[1];
              v198 = *(v197 + 16);
              ConsList = mosyntkbaccphr_GetConsList(0, v193, v194);
              v200 = mosyntkbaccphr_GetConsList(1, v193, v194);
              v201 = mosyntkbaccphr_CheckMatchingConsFeat3(a1, v193, v198, (v197 + 24), ConsList, v200, &v288 + 4);
              if (!BYTE4(v288))
              {
                ++v196;
                v201 = mosyntkbaccphr_GetConsList(2, v193, v194);
                v194 = v201;
              }

              v195 = mosyntkbaccphr_Nil(v201);
            }

            while (v194 != v195 && !BYTE4(v288));
          }

          if (v194 == mosyntkbaccphr_Nil(v195))
          {
            v202 = -1;
          }

          else
          {
            v202 = v196;
          }

          v190 = v277;
          if (v277 >= v202)
          {
            v203 = v202;
          }

          else
          {
            v203 = v277;
          }

          v204 = v277 <= v202 || v202 <= -1;
          v189 = v273;
          v186 = v279;
          if (!v204)
          {
            v186 = v273;
          }

          if (v202 >= 0)
          {
            v190 = v203;
          }

          v187 = v275[2];
        }

        while (v187 != v273);
        v187 = v270;
        if (v186)
        {
          goto LABEL_505;
        }
      }

      v186 = v187;
      if (mosyntkbaccphr_AccPhrDefaultEmph(*v280) != 1)
      {
        if (mosyntkbaccphr_AccPhrDefaultEmph(*v280) != 2)
        {
          v205 = *v187;
          v189 = v273;
          v186 = v187;
          if (v205 != (*v273 + v205) / 2)
          {
            v186 = v187;
            do
            {
              v186 = *(v186 + 16);
            }

            while (*v186 != (*v273 + v205) / 2);
          }

          goto LABEL_505;
        }

        v189 = v273;
        v186 = v273[1];
      }
    }

    if (!v186)
    {
      v188 = v187;
      v187 = v189;
      goto LABEL_506;
    }

LABEL_505:
    *(v186 + 84) = 1;
    v188 = v187;
    v187 = v189;
    v186 = 0;
LABEL_506:
    if (*(v189 + 21) == 1)
    {
      if (v186)
      {
        if (mosyntkbaccphr_AccPhrDefaultEmph(*v280) == 1)
        {
          v206 = 3;
        }

        else
        {
          *(v186 + 84) = -1;
          BestScenarioPathSuffix = SetFunctionWords(a1, v47, v186, *(v186 + 16));
          if ((BestScenarioPathSuffix & 0x80000000) != 0)
          {
            return BestScenarioPathSuffix;
          }

          if (*(v186 + 84) == -1)
          {
            *(v186 + 84) = 3;
          }

          v206 = 1;
          v189 = v273;
          v186 = v273;
        }

        *(v189 + 21) = v206;
      }

      else
      {
        v186 = v189;
      }
    }

    v189 = v189[2];
  }

  while (v189);
  if (!v187)
  {
    goto LABEL_546;
  }

  *(v187 + 19) = 0;
  if (!v188 || *(v188 + 19))
  {
    goto LABEL_546;
  }

  SentTermCommList = mosyntdata_GetSentTermCommList(a1, *(v47 + 40), *(v187 + 16), v289);
  if ((SentTermCommList & 0x80000000) != 0)
  {
    return SentTermCommList;
  }

  BestScenarioPathSuffix = mosyntdata_GetPunctFromCommandList(a1, *&v289[0], &v286, &v291);
  if ((BestScenarioPathSuffix & 0x80000000) == 0)
  {
    v207 = v286 == 11 ? 9 : 2;
    v208 = v286 == 10 ? 4 : v207;
    *(v188 + 19) = v208;
LABEL_546:
    for (ii = v268; ii != v271; ii = ii[2])
    {
      if (*(ii + 21) == -1)
      {
        *(ii + 21) = 3;
      }

      if ((*(ii + 34) & 0x80000000) == 0 && !*(ii + 19))
      {
        *(ii + 19) = 1;
      }
    }

    if ((BestScenarioPathSuffix & 0x80000000) == 0)
    {
      ChartToSentTermData(v47, v285);
      goto LABEL_555;
    }
  }

  return BestScenarioPathSuffix;
}

uint64_t FindDomainById(uint64_t a1, int a2, _DWORD *a3)
{
  v5 = *(a1 + 16);
  for (i = mosyntkbaccphr_AccPhrDomains(v5); ; i = mosyntkbaccphr_GetScenario(3, v5, *a3))
  {
    v7 = i;
    *a3 = i;
    result = mosyntkbaccphr_Nil();
    if (v7 == result)
    {
      break;
    }

    result = mosyntkbaccphr_GetScenario(1, v5, *a3);
    if (result == a2)
    {
      break;
    }
  }

  return result;
}

uint64_t FindDomainByName(uint64_t a1, unsigned __int8 *a2, int *a3)
{
  v5 = *(a1 + 16);
  for (i = mosyntkbaccphr_AccPhrDomains(v5); ; i = mosyntkbaccphr_GetScenario(3, v5, *a3))
  {
    *a3 = i;
    ScenarioNamePtr = mosyntkbaccphr_GetScenarioNamePtr(v5, i);
    v8 = *a3;
    result = mosyntkbaccphr_Nil();
    if (v8 == result)
    {
      break;
    }

    result = mosyntbase_CEqual(ScenarioNamePtr, 50, a2, 100);
    if (result)
    {
      break;
    }
  }

  return result;
}

uint64_t GenAccTree(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  *a4 = 0;
  v16 = 0;
  if (!a3)
  {
    return 0;
  }

  v5 = a3;
  while (1)
  {
    v8 = AddAccNode(a1, a2, a4, &v16);
    if ((v8 & 0x80000000) != 0)
    {
      break;
    }

    v9 = v16;
    *(v16 + 16) = *(v5 + 52);
    *(v9 + 24) = 0;
    *(v9 + 26) = *(v5 + 8);
    if (*(v5 + 60))
    {
      v14 = 0;
      v15 = 0;
      v10 = AddAccNode(a1, a2, &v15, &v14);
      if ((v10 & 0x80000000) != 0)
      {
        return v10;
      }

      *(v9 + 8) = v15;
      v11 = v14;
      *(v14 + 16) = *(v5 + 52);
      v12 = 1;
      *(v11 + 24) = 1;
      if (mosyntkbsymtab_PropTabAvailable(*(a2 + 8)))
      {
        if (mosyntkbsymtab_IntPropValue(a1, *(a2 + 8), *(v5 + 8), 2u) >= 1)
        {
          v12 = 1;
        }

        else
        {
          v12 = 99;
        }
      }

      *(v11 + 26) = v12;
    }

    else
    {
      v10 = GenAccTree(a1, a2, v5[1], v9 + 8);
      if ((v10 & 0x80000000) != 0)
      {
        return v10;
      }
    }

    v5 = *v5;
    if (!v5)
    {
      return v10;
    }
  }

  return v8;
}

uint64_t AddAccNode(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v14 = 0;
  result = mosyntpal_ALLOCATE(a1, &v14, 0x20u);
  if ((result & 0x80000000) == 0)
  {
    v9 = v14;
    v15 = 0;
    result = mosyntpal_ALLOCATE(a1, &v15, 0x18u);
    if ((result & 0x80000000) == 0)
    {
      *v15 = *(a2 + 32);
      v10 = v14;
      v11 = v15;
      *(a2 + 32) = v15;
      *(v11 + 2) = 1;
      v11[2] = v9;
      *v10 = 0;
      v12 = *a4;
      v13 = v14;
      if (!*a4)
      {
        v12 = a3;
      }

      *v12 = v14;
      *a4 = v13;
      *(v13 + 8) = 0;
    }
  }

  return result;
}

uint64_t Accentuation1(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = mosyntkbsymtab_WildConsId(*(a2 + 8));
  *a4 = 0;
  if (!a3)
  {
    return 0;
  }

  if (*(a3 + 24))
  {
    if (*(a3 + 26) == 1)
    {
      FirstAccPatVal = 0;
      *a4 = 1;
      return FirstAccPatVal;
    }

    return 0;
  }

  v10 = *(a3 + 8);
  if (!v10)
  {
    return 0;
  }

  v11 = v8;
  memset(v21, 0, sizeof(v21));
  v20 = 0;
  v19 = 0;
  do
  {
    FirstAccPatVal = Accentuation1(a1, a2, v10, &v19);
    if ((FirstAccPatVal & 0x80000000) != 0)
    {
      return FirstAccPatVal;
    }

    v12 = v19 + *a4;
    *a4 = v12;
    v10 = *v10;
  }

  while (v10);
  if (v12 < 2)
  {
    return FirstAccPatVal;
  }

  if (!mosyntkbsymtab_PropTabAvailable(*(a2 + 8)))
  {
    v20 = 0;
    goto LABEL_30;
  }

  FirstAccPatVal = mosyntkbsymtab_GetFirstAccPatVal(a1, *(a2 + 8), *(a3 + 26), 3, v21, &v20);
  if ((FirstAccPatVal & 0x80000000) != 0)
  {
    return FirstAccPatVal;
  }

  v13 = v20;
  if (!v20)
  {
LABEL_30:
    if (mosyntkbsymtab_PropTabAvailable(*(a2 + 8)))
    {
      FirstAccPatVal = mosyntkbsymtab_GetFirstAccPatVal(a1, *(a2 + 8), v11, 3, v21, &v20);
      if ((FirstAccPatVal & 0x80000000) != 0)
      {
        return FirstAccPatVal;
      }

      v17 = v20;
      if (v20)
      {
        while (1)
        {
          *(a2 + 64) = 0;
          if (*a2 >= 2)
          {
            v14 = mosyntknowl_WriteTraceHeader(a1, 4u);
            if ((v14 & 0x80000000) != 0)
            {
              return v14;
            }

            v14 = mosyntbase_WString(a1, "applying default pattern", 0);
            if ((v14 & 0x80000000) != 0)
            {
              return v14;
            }

            v14 = mosyntbase_WLn(a1);
            if ((v14 & 0x80000000) != 0)
            {
              return v14;
            }

            v17 = v20;
          }

          matched = SingleTreeMatchFound(a1, a2, a3, v17);
          v14 = mosyntkbsymtab_DisposeAccPat(*(a2 + 8), &v20);
          if ((v14 & 0x80000000) != 0)
          {
            return v14;
          }

          FirstAccPatVal = mosyntkbsymtab_GetNextAccPatVal(v21, &v20);
          if ((FirstAccPatVal & 0x80000000) != 0)
          {
            return FirstAccPatVal;
          }

          v17 = v20;
          if (!v20 || matched)
          {
            if (v20)
            {
              FirstAccPatVal = mosyntkbsymtab_DisposeAccPat(*(a2 + 8), &v20);
              if ((FirstAccPatVal & 0x80000000) != 0)
              {
                return FirstAccPatVal;
              }
            }

            if (!matched)
            {
              break;
            }

            goto LABEL_45;
          }
        }
      }
    }

    else
    {
      v20 = 0;
    }

LABEL_47:
    *a4 = 1;
    if (*a2 >= 1)
    {
      v14 = mosyntknowl_WriteTraceHeader(a1, 4u);
      if ((v14 & 0x80000000) != 0)
      {
        return v14;
      }

      v14 = mosyntbase_WString(a1, "after accentuation of ", 0);
      if ((v14 & 0x80000000) != 0)
      {
        return v14;
      }

      v14 = mosyntkbsymtab_WriteCons(a1, *(a2 + 8), *(a3 + 26));
      if ((v14 & 0x80000000) != 0)
      {
        return v14;
      }

      v14 = mosyntbase_WString(a1, ": ", 0);
      if ((v14 & 0x80000000) != 0)
      {
        return v14;
      }

      v14 = WriteAccList(a1, a2, a3);
      if ((v14 & 0x80000000) != 0)
      {
        return v14;
      }

      v14 = mosyntbase_WLn(a1);
      if ((v14 & 0x80000000) != 0)
      {
        return v14;
      }

      FirstAccPatVal = mosyntbase_WLn(a1);
      if ((FirstAccPatVal & 0x80000000) != 0)
      {
        return FirstAccPatVal;
      }
    }

    if (mosyntkbsymtab_PropTabAvailable(*(a2 + 8)) && mosyntkbsymtab_HasIntPropValue(a1, *(a2 + 8), *(a3 + 26), 4u, 1))
    {
      return FirstAccPatVal;
    }

    return RhythmicAccShift(a1, a2, a3);
  }

  while (1)
  {
    *(a2 + 64) = 0;
    if (*a2 >= 2)
    {
      v14 = mosyntknowl_WriteTraceHeader(a1, 4u);
      if ((v14 & 0x80000000) != 0)
      {
        return v14;
      }

      v14 = mosyntbase_WString(a1, "applying pattern for constituent ", 0);
      if ((v14 & 0x80000000) != 0)
      {
        return v14;
      }

      v14 = mosyntkbsymtab_WriteCons(a1, *(a2 + 8), *(a3 + 26));
      if ((v14 & 0x80000000) != 0)
      {
        return v14;
      }

      v14 = mosyntbase_WLn(a1);
      if ((v14 & 0x80000000) != 0)
      {
        return v14;
      }

      v13 = v20;
    }

    v15 = SingleTreeMatchFound(a1, a2, a3, v13);
    v14 = mosyntkbsymtab_DisposeAccPat(*(a2 + 8), &v20);
    if ((v14 & 0x80000000) != 0)
    {
      return v14;
    }

    FirstAccPatVal = mosyntkbsymtab_GetNextAccPatVal(v21, &v20);
    if ((FirstAccPatVal & 0x80000000) != 0)
    {
      return FirstAccPatVal;
    }

    v13 = v20;
    if (!v20 || v15)
    {
      if (v20)
      {
        FirstAccPatVal = mosyntkbsymtab_DisposeAccPat(*(a2 + 8), &v20);
        if ((FirstAccPatVal & 0x80000000) != 0)
        {
          return FirstAccPatVal;
        }
      }

      if (!v15)
      {
        goto LABEL_30;
      }

LABEL_45:
      ReduceAccents(a2, a3);
      FirstAccPatVal = 0;
      goto LABEL_47;
    }
  }
}

uint64_t SingleTreeMatchFound(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v8 = mosyntkbsymtab_WildConsId(*(a2 + 8));
  if (mosyntkbsymtab_PropTabAvailable(*(a2 + 8)) && mosyntkbsymtab_HasIntPropValue(a1, *(a2 + 8), v8, 9u, 1))
  {
    v9 = *a3;
    *a3 = 0;
    result = MatchFound(a1, a2, a3, a4);
    *a3 = v9;
  }

  else
  {

    return MatchFound(a1, a2, a3, a4);
  }

  return result;
}

uint64_t ReduceAccents(uint64_t result, uint64_t a2)
{
  v2 = result;
  if (*(a2 + 24))
  {
    if (*(result + 64) != a2)
    {
      ++*(a2 + 26);
    }
  }

  else
  {
    for (i = *(a2 + 8); i; i = *i)
    {
      result = ReduceAccents(v2, i);
    }
  }

  return result;
}

uint64_t WriteAccList(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 0;
  v9 = 0;
  if (*(a3 + 24))
  {
    result = mosyntdata_GetSentTermCommList(a1, *(a2 + 40), *(a3 + 16), &v8);
    if ((result & 0x80000000) == 0)
    {
      result = mosyntdata_WriteCommandList(a1, v8);
      if ((result & 0x80000000) == 0)
      {
        result = mosyntbase_WString(a1, "[", 0);
        if ((result & 0x80000000) == 0)
        {
          result = mosyntbase_WInt(a1, *(a3 + 26), 0);
          if ((result & 0x80000000) == 0)
          {
            result = mosyntbase_WString(a1, "]", 0);
            if ((result & 0x80000000) == 0)
            {
              result = mosyntdata_GetSentTermWordPhonList(a1, *(a2 + 40), *(a3 + 16), &v9);
              if ((result & 0x80000000) == 0)
              {
                return mosyntdata_WritePhonList(a1, *(a2 + 8), v9);
              }
            }
          }
        }
      }
    }
  }

  else
  {
    result = mosyntbase_WString(a1, "( ", 0);
    if ((result & 0x80000000) == 0)
    {
      v7 = (a3 + 8);
      while (1)
      {
        v7 = *v7;
        if (!v7)
        {
          break;
        }

        result = WriteAccList(a1, a2, v7);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }
      }

      return mosyntbase_WString(a1, ")", 0);
    }
  }

  return result;
}

uint64_t RhythmicAccShift(uint64_t a1, int *a2, uint64_t a3)
{
  v8[3] = *MEMORY[0x277D85DE8];
  v7 = 0;
  memset(v8, 0, 24);
  AccShift(a3, v8, &v7);
  if (!v7 || *a2 < 1)
  {
    return 0;
  }

  result = mosyntknowl_WriteTraceHeader(a1, 4u);
  if ((result & 0x80000000) == 0)
  {
    result = mosyntbase_WString(a1, "accentuation after rhythmic shift: ", 0);
    if ((result & 0x80000000) == 0)
    {
      result = WriteAccList(a1, a2, a3);
      if ((result & 0x80000000) == 0)
      {
        result = mosyntbase_WLn(a1);
        if ((result & 0x80000000) == 0)
        {

          return mosyntbase_WLn(a1);
        }
      }
    }
  }

  return result;
}

uint64_t MatchFound(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (*a2 >= 2)
  {
    mosyntknowl_WriteTraceHeader(a1, 4u);
    mosyntbase_WString(a1, "trying to match ", 0);
    if (a3)
    {
      if (*(a3 + 24))
      {
        mosyntbase_WInt(a1, *(a3 + 13), 0);
      }

      else
      {
        mosyntkbsymtab_WriteCons(a1, *(a2 + 8), *(a3 + 13));
      }
    }

    else
    {
      mosyntbase_WString(a1, "NIL", 0);
    }

    mosyntbase_WString(a1, "/", 0);
    if (a4)
    {
      v8 = *(a4 + 8);
      if (v8 < 1)
      {
        mosyntbase_WInt(a1, *(a4 + 9), 0);
      }

      else
      {
        mosyntkbsymtab_WriteCons(a1, *(a2 + 8), v8);
      }
    }

    else
    {
      mosyntbase_WString(a1, "NIL", 0);
    }

    mosyntbase_WLn(a1);
  }

  result = a3 == 0;
  if (!a4)
  {
    return result;
  }

  if (!a3)
  {
    if (!*a4)
    {
      v15 = *(a4 + 8);
      if (mosyntkbsymtab_Star2ConsId(*(a2 + 8)) != v15)
      {
        v16 = *(a4 + 8);
        return mosyntkbsymtab_StarConsId(*(a2 + 8)) == v16;
      }

      return 1;
    }

    return 0;
  }

  if (!*(a4 + 8))
  {
    if (*(a3 + 24))
    {
      v17 = *(a3 + 13);
      if (v17 == *(a4 + 9))
      {
        if (v17 == 1)
        {
          if (*a2 >= 2)
          {
            mosyntknowl_WriteTraceHeader(a1, 4u);
            mosyntbase_WString(a1, "=== node marked", 0);
            mosyntbase_WLn(a1);
          }

          *(a2 + 64) = a3;
        }

        return 1;
      }
    }

    return 0;
  }

  v10 = *(a4 + 8);
  if (mosyntkbsymtab_Star2ConsId(*(a2 + 8)) == v10)
  {
    if (!MatchFound(a1, a2, *a3, a4) && !MatchFound(a1, a2, *a3, *a4))
    {
      v11 = *a4;
      v12 = a1;
      v13 = a2;
      v14 = a3;
      return MatchFound(v12, v13, v14, v11) != 0;
    }

    return 1;
  }

  v18 = *(a4 + 8);
  if (mosyntkbsymtab_StarConsId(*(a2 + 8)) == v18)
  {
    if (!MatchFound(a1, a2, a3, *a4) && !MatchFound(a1, a2, *a3, *a4))
    {
      v14 = *a3;
      v12 = a1;
      v13 = a2;
      v11 = a4;
      return MatchFound(v12, v13, v14, v11) != 0;
    }

    return 1;
  }

  v19 = *(a4 + 8);
  if (mosyntkbsymtab_Wild2ConsId(*(a2 + 8)) == v19)
  {
    result = DownMatchFound(a1, a2, a3, a4[1]);
    if (!result)
    {
      return result;
    }

LABEL_38:
    v14 = *a3;
    v11 = *a4;
    v12 = a1;
    v13 = a2;
    return MatchFound(v12, v13, v14, v11) != 0;
  }

  v20 = *(a4 + 8);
  if (mosyntkbsymtab_WildConsId(*(a2 + 8)) != v20 && (*(a3 + 24) || *(a3 + 13) != *(a4 + 8)))
  {
    return 0;
  }

  result = MatchFound(a1, a2, a3[1], a4[1]);
  if (result)
  {
    goto LABEL_38;
  }

  return result;
}

uint64_t DownMatchFound(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v8 = *a3;
  *a3 = 0;
  if (MatchFound())
  {
    result = 1;
  }

  else
  {
    v10 = a3[1];
    if (v10)
    {
      do
      {
        result = DownMatchFound(a1, a2, v10, a4);
        v10 = *v10;
        if (v10)
        {
          v11 = result == 0;
        }

        else
        {
          v11 = 0;
        }
      }

      while (v11);
    }

    else
    {
      result = 0;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t AccShift(uint64_t result, uint64_t *a2, _BYTE *a3)
{
  for (i = *(result + 8); i; i = *i)
  {
    if (*(i + 24))
    {
      if (*(i + 13) - 1 > 0x61)
      {
        continue;
      }

      v7 = a2[1];
      v6 = a2[2];
      *a2 = v7;
      a2[1] = v6;
      a2[2] = i;
      if (!v7 || v6 == 0)
      {
        continue;
      }

      v9 = *(i + 13);
      if (v9 == 1 && *(v6 + 26) == 2 && (*(v7 + 26) & 0xFFFE) == 2)
      {
        *(v6 + 26) = 3;
        v10 = *a2;
      }

      else
      {
        if (*(v7 + 26) != 1 || (v9 & 0xFFFE) != 2 || *(v6 + 26) != 2)
        {
          continue;
        }

        *(v6 + 26) = 3;
        v10 = a2[2];
      }

      *(v10 + 26) = 2;
      *a3 = 1;
    }

    else
    {
      result = AccShift(i, a2, a3);
    }
  }

  return result;
}

uint64_t GetInitPhrasing1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t *a7)
{
  v7 = *(a3 + 8);
  if (!v7)
  {
    return 0;
  }

  if (!v7[24])
  {
    do
    {
      InitPhrasing1 = GetInitPhrasing1(a1, a2, v7, (a4 + 1), a5, a6, a7);
      if ((InitPhrasing1 & 0x80000000) != 0 || !*v7)
      {
        break;
      }

      if (!mosyntkbsymtab_PropTabAvailable(*(a2 + 8)) || !mosyntkbsymtab_HasIntPropValue(a1, *(a2 + 8), *(*v7 + 26), 5u, 0))
      {
        v16 = mosyntkbsymtab_PropTabAvailable(*(a2 + 8));
        a5 = a4;
        if (!v16)
        {
          continue;
        }

        HasIntPropValue = mosyntkbsymtab_HasIntPropValue(a1, *(a2 + 8), *(*v7 + 26), 5u, *(a3 + 26));
        a5 = a4;
        if (!HasIntPropValue)
        {
          continue;
        }
      }

      a5 = 2;
      v7 = *v7;
    }

    while (v7);
    return InitPhrasing1;
  }

  return AppendInitBound(a1, a2, a6, a7, a5, a3);
}

uint64_t AppendInitBound(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, __int16 a5, uint64_t a6)
{
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v20 = 0;
  v21 = 0;
  PunctFromCommandList = mosyntpal_ALLOCATE(a1, &v24, 0x28u);
  if ((PunctFromCommandList & 0x80000000) == 0)
  {
    *v24 = 0;
    v13 = v24;
    if (*a3)
    {
      a3 = *a4;
    }

    *a3 = v24;
    *a4 = v13;
    *(v13 + 8) = a5;
    if (a6)
    {
      v14 = *(a6 + 8);
      *(v13 + 10) = *(v14 + 26) - 1 < 0x62;
      v15 = *(v14 + 16);
      *(v13 + 16) = v15;
      SentTermWordPhonList = mosyntdata_GetSentTermWordPhonList(a1, *(a2 + 40), v15, &v23);
      if ((SentTermWordPhonList & 0x80000000) != 0)
      {
        return SentTermWordPhonList;
      }

      v19 = 0;
      CountSyllsAndAccs(a2, v23, (v24 + 12), &v19);
      v17 = v24;
      *(v24 + 20) = *(v14 + 16);
      *(v17 + 28) = *(a6 + 26);
      *(v17 + 30) = *(v14 + 26);
      *(v17 + 32) = 0;
      SentTermWordPhonList = mosyntdata_GetSentTermCommList(a1, *(a2 + 40), *(v17 + 16), &v20);
      if ((SentTermWordPhonList & 0x80000000) != 0)
      {
        return SentTermWordPhonList;
      }

      else
      {
        PunctFromCommandList = mosyntdata_GetPunctFromCommandList(a1, v20, &v22, &v21);
        if ((PunctFromCommandList & 0x80000000) == 0 && *(v24 + 8) >= 2 && mosyntknowl_IsIntraSentPunct(a1, v22))
        {
          *(v24 + 8) = 1;
        }
      }
    }

    else
    {
      *(v13 + 10) = 0;
      *(v13 + 16) = 0;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0;
    }
  }

  return PunctFromCommandList;
}

uint64_t FinalBoundaryIndex(uint64_t a1, uint64_t *a2)
{
  if (!a2)
  {
    return 2;
  }

  v2 = 0;
  v3 = 0;
  do
  {
    if (!*(a2 + 2))
    {
      v2 = a2;
      v3 = a2;
    }

    a2 = *a2;
  }

  while (a2);
  if (v3)
  {
    v4 = *(v3 + 3);
    if (v2)
    {
      return !mosyntknowl_IsSentFinalPunct(a1, v4);
    }
  }

  else
  {
    v4 = 0;
    if (v2)
    {
      return !mosyntknowl_IsSentFinalPunct(a1, v4);
    }
  }

  return 2;
}

uint64_t WriteBoundList(uint64_t a1, uint64_t a2, uint64_t *a3, int a4)
{
  v14 = *MEMORY[0x277D85DE8];
  v11 = 0;
  v12 = 0;
  v13 = 0;
  if (a3)
  {
    v6 = a3;
    do
    {
      if (v6[1] < 0)
      {
        v9 = a1;
        v10 = " $";
      }

      else
      {
        result = mosyntbase_WLn(a1);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = mosyntknowl_WriteTraceHeader(a1, 4u);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = mosyntbase_WString(a1, " #{", 0);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = mosyntbase_WInt(a1, *(v6 + 4), 0);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = mosyntbase_WString(a1, "}", 0);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        if (a4)
        {
          result = mosyntbase_WString(a1, " (", 0);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = mosyntkbaccphr_PhraseTypeToString(*(v6 + 8), &v12, 10);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = mosyntbase_WString(a1, &v12, 10);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = mosyntbase_WString(a1, ")", 0);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }
        }

        result = mosyntbase_WString(a1, " <", 0);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = mosyntbase_WInt(a1, *(v6 + 5), 0);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = mosyntbase_WString(a1, ",", 0);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = mosyntbase_WInt(a1, *(v6 + 6), 0);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v9 = a1;
        v10 = ">";
      }

      result = mosyntbase_WString(v9, v10, 0);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      if (!*v6)
      {
        break;
      }

      result = mosyntbase_WString(a1, " [", 0);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = mosyntbase_WInt(a1, *(v6 + 15), 0);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = mosyntbase_WString(a1, "]", 0);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = mosyntdata_GetSentTermWordPhonList(a1, *(a2 + 40), *(v6 + 5), &v11);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = mosyntdata_WritePhonList(a1, *(a2 + 8), v11);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v6 = *v6;
    }

    while (v6);
  }

  return mosyntbase_WLn(a1);
}

uint64_t CountSyllsAndAccs(uint64_t result, uint64_t **a2, _WORD *a3, _WORD *a4)
{
  *a3 = 1;
  *a4 = 0;
  if (a2)
  {
    v6 = a2;
    v7 = result;
    v8 = 0;
    while (1)
    {
      v9 = *(v6 + 12);
      result = mosyntkbsymtab_SyllSepId(*(v7 + 8));
      if (result != v9)
      {
        break;
      }

      ++*a3;
      if (v8 <= 0)
      {
LABEL_10:
        v6 = *v6;
        if (!v6)
        {
          if (v8 >= 1)
          {
            ++*a4;
          }

          return result;
        }
      }

      else
      {
        v8 = 0;
        ++*a4;
        v6 = *v6;
        if (!v6)
        {
          return result;
        }
      }
    }

    v10 = *(v6 + 12);
    result = mosyntkbsymtab_PrimAccId(*(v7 + 8));
    if (result == v10 || (v11 = *(v6 + 12), result = mosyntkbsymtab_SecAccId(*(v7 + 8)), result == v11))
    {
      ++v8;
    }

    goto LABEL_10;
  }

  return result;
}

uint64_t SetFunctionWords(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = 0;
  if (a3 == a4)
  {
    return 0;
  }

  v5 = a3;
  v8 = 0;
  while (1)
  {
    v9 = *(*(v5 + 32) + 32);
    do
    {
      v10 = v9;
      v9 = *v9;
    }

    while (v9);
    v11 = *(a2 + 16);
    v12 = mosyntkbaccphr_AccPhrFunctionWords(v11);
    v17 = 0;
    if (v12 != mosyntkbaccphr_Nil() && v17 == 0)
    {
      break;
    }

LABEL_9:
    if (v12 != mosyntkbaccphr_Nil())
    {
      *(v5 + 84) = 0;
    }

    v5 = *(v5 + 16);
    if (v5 == a4)
    {
      return v8;
    }
  }

  while (1)
  {
    ConsList = mosyntkbaccphr_GetConsList(0, v11, v12);
    v15 = mosyntkbaccphr_GetConsList(1, v11, v12);
    v8 = mosyntkbaccphr_CheckMatchingConsFeat2(a1, v11, ConsList, v15, *(v10[1] + 16), (v10[1] + 24), &v17);
    if ((v8 & 0x80000000) != 0)
    {
      return v8;
    }

    if (!v17)
    {
      v12 = mosyntkbaccphr_GetConsList(2, v11, v12);
    }

    if (v12 == mosyntkbaccphr_Nil() || v17)
    {
      goto LABEL_9;
    }
  }
}

uint64_t ChartToSentTermData(uint64_t result, uint64_t a2)
{
  v2 = *(result + 40);
  if (v2)
  {
    v3 = a2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    do
    {
      v4 = *(a2 + 32);
      if (v4)
      {
        v7 = (v2 + 16 * *(v4 + 84));
        v5 = *v7;
        v6 = v7[1];
        if (v6)
        {
          v8 = *(a2 + 68);
          if (v8 >= 2)
          {
            v8 = 2;
          }

          v9 = *(a2 + 76);
          *(v6 + 8) = v8;
          *(v6 + 12) = v9;
        }

        if (v5)
        {
          v10 = *(a2 + 84);
          if (v10 >= 3)
          {
            v11 = 3;
          }

          else
          {
            v11 = *(a2 + 84);
          }

          if (v10 <= 98)
          {
            v12 = v11;
          }

          else
          {
            v12 = 0;
          }

          *(v5 + 16) = v12;
        }
      }

      a2 = *(a2 + 16);
    }

    while (a2);
  }

  return result;
}

double NewAPVertex(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
{
  ++*(a2 + 72);
  if ((mosyntpal_ALLOCATE(a1, a4, 0x58u) & 0x80000000) == 0)
  {
    v9 = *a4;
    v12 = 0;
    if ((mosyntpal_ALLOCATE(a1, &v12, 0x18u) & 0x80000000) == 0)
    {
      *v12 = *(a2 + 32);
      v10 = v12;
      *(a2 + 32) = v12;
      *(v10 + 2) = 2;
      v10[2] = v9;
      v11 = *a4;
      *v11 = *(a2 + 72);
      result = 0.0;
      *(v11 + 8) = 0u;
      *(v11 + 24) = 0u;
      *(v11 + 40) = 0u;
      *(v11 + 56) = 0;
      *(v11 + 64) = a3;
      *(v11 + 68) = -1;
      *(v11 + 84) = -1;
      *(v11 + 72) = 0;
    }
  }

  return result;
}

void TreeToChart(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t *a6)
{
  v7 = a4;
  v34 = 0;
  v33 = 0;
  v31 = 0;
  v32 = 0;
  v30 = 0;
  *a6 = 0;
  v11 = *(a3 + 52);
  *(a4 + 64) = v11;
  if (*(a3 + 60))
  {
    if ((mosyntdata_GetSentTermCommList(a1, *(a2 + 40), v11, &v31) & 0x80000000) == 0 && (mosyntdata_GetPunctFromCommandList(a1, v31, &v33, &v32) & 0x80000000) == 0)
    {
      if (mosyntknowl_IsIntraSentPunct(a1, v33))
      {
        *(v7 + 68) = 1;
      }

      if ((mosyntdata_GetSentTermWordPhonList(a1, *(a2 + 40), *(a3 + 52), &v30) & 0x80000000) == 0 && (NewAPEdge(a1, a2, a3, a6) & 0x80000000) == 0)
      {
        v12 = *a6;
        *(v12 + 92) = 0;
        *(v12 + 16) = v7;
        NewAPVertex(a1, a2, *(a3 + 56), (*a6 + 24));
        if ((v13 & 0x80000000) == 0)
        {
          CountSyllsAndAccs(a2, v30, (*a6 + 82), (*a6 + 80));
          *(v7 + 16) = *(*a6 + 24);
          *(*(*a6 + 24) + 8) = v7;
          v14 = *a6;
          *(v7 + 32) = *a6;
          *(*(v14 + 24) + 24) = v14;
          **a6 = 0;
          *(*a6 + 8) = 0;
        }
      }
    }
  }

  else
  {
    v15 = *(a3 + 8);
    if (v15)
    {
      v27 = a3;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      while ((TreeToChart(a1, a2, v15, v7, (a5 + 1), &v34) & 0x80000000) == 0)
      {
        v22 = v34;
        if (v34)
        {
          *(v34 + 64) = v21;
          if (!v20)
          {
            v20 = v22;
          }

          if (v21)
          {
            *(v21 + 56) = v22;
          }

          ++v19;
          v7 = *(v22 + 24);
          v18 += *(v22 + 82);
          v17 += *(v22 + 80);
          v21 = v22;
        }

        v15 = *v15;
        if (!v15)
        {
          if (v7 == a4)
          {
            goto LABEL_27;
          }

          if (v19 < 2)
          {
            *a6 = v21;
            AddAPNode(a1, a2, v27, (v21 + 32));
          }

          else if ((NewAPEdge(a1, a2, v27, a6) & 0x80000000) == 0)
          {
            v23 = *a6;
            *(v23 + 92) = 1;
            *(v23 + 16) = a4;
            *(*a6 + 24) = v7;
            **a6 = *(a4 + 48);
            v24 = *a6;
            *(a4 + 48) = *a6;
            *(v24 + 8) = *(v7 + 40);
            v25 = *a6;
            *(v7 + 40) = *a6;
            *(v25 + 82) = v18;
            *(v25 + 80) = v17;
            *(v25 + 72) = v20;
            if (v20)
            {
              v26 = *a6;
              do
              {
                *(v20 + 48) = v26;
                v20 = *(v20 + 56);
              }

              while (v20);
            }
          }

          return;
        }
      }
    }

    else
    {
LABEL_27:
      *a6 = 0;
    }
  }
}

uint64_t NewAPEdge(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = mosyntpal_ALLOCATE(a1, a4, 0x60u);
  if ((result & 0x80000000) == 0)
  {
    v9 = *a4;
    v12 = 0;
    result = mosyntpal_ALLOCATE(a1, &v12, 0x18u);
    if ((result & 0x80000000) == 0)
    {
      *v12 = *(a2 + 32);
      v10 = v12;
      *(a2 + 32) = v12;
      *(v10 + 2) = 3;
      v10[2] = v9;
      v11 = *a4;
      *(v11 + 72) = 0;
      *v11 = 0u;
      *(v11 + 16) = 0u;
      *(v11 + 48) = 0u;
      *(v11 + 32) = 0u;
      *(v11 + 84) = *(a3 + 52);
      return AddAPNode(a1, a2, a3, (v11 + 32));
    }
  }

  return result;
}

uint64_t AddAPNode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v13 = 0;
  result = mosyntpal_ALLOCATE(a1, &v13, 0x18u);
  if ((result & 0x80000000) == 0)
  {
    v9 = v13;
    v14 = 0;
    result = mosyntpal_ALLOCATE(a1, &v14, 0x18u);
    if ((result & 0x80000000) == 0)
    {
      *v14 = *(a2 + 32);
      v10 = v13;
      v11 = v14;
      *(a2 + 32) = v14;
      *(v11 + 2) = 5;
      v11[2] = v9;
      v10[1] = a3;
      *v10 = *a4;
      v12 = v13;
      v13[2] = 0;
      *a4 = v12;
    }
  }

  return result;
}

uint64_t WriteCoverage(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned int *a4)
{
  v4 = a3;
  v13 = 0;
  if (a3 != a4)
  {
    while (2)
    {
      HIDWORD(v11) = 0;
      LODWORD(v11) = 0;
      *(&v11 + 4) = *v4;
      result = mosyntbase_WriteMessage(a1, " (%i) ", 0, "", 0, "", 0, "", v11);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v9 = (*(v4 + 4) + 32);
      do
      {
        v9 = *v9;
        if (!v9)
        {
          result = mosyntbase_WriteMessage(a1, "#### ERROR: didn't find terminal\\n", 0, "", 0, "", 0, "", 0);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          goto LABEL_13;
        }

        v10 = v9[1];
      }

      while (!*(v10 + 60));
      result = mosyntkbsymtab_WriteCons(a1, *(a2 + 8), *(v10 + 16));
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = mosyntbase_WString(a1, "[ ", 0);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = mosyntdata_GetSentTermWordPhonList(a1, *(a2 + 40), *(*(v4 + 4) + 84), &v13);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = mosyntdata_WritePhonList(a1, *(a2 + 8), v13);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = mosyntbase_WString(a1, " ] ", 0);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

LABEL_13:
      v4 = *(v4 + 2);
      if (v4 != a4)
      {
        continue;
      }

      break;
    }
  }

  HIDWORD(v12) = 0;
  LODWORD(v12) = 0;
  *(&v12 + 4) = *v4;
  return mosyntbase_WriteMessage(a1, " (%i) ", 0, "", 0, "", 0, "", v12);
}

uint64_t MatchEdge(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4, uint64_t *a5)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = *(a3 + 32);
  if (!v5)
  {
    return 0;
  }

  v10 = *(a2 + 16);
  v25 = 0u;
  memset(v24, 0, sizeof(v24));
  v22 = 0;
  do
  {
    result = mosyntkbaccphr_LookupAccPhrRule(a1, *(a2 + 16), *(v5[1] + 16), (v5[1] + 24), &v22, v24);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    while (v22)
    {
      Rule = mosyntkbaccphr_GetRule(15, v10, DWORD2(v25));
      v13 = DWORD2(v25);
      if (Rule < 1)
      {
        if (IsMatchingRule(a1, a2, DWORD2(v25), v5, a3))
        {
          result = AddEdgeRule(a1, a2, SDWORD2(v25), v5);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          if (mosyntkbaccphr_GetRule(0, v10, DWORD2(v25)) >= 1)
          {
            result = AddRuleScenarios(a1, a2, DWORD2(v25), (a3 + 40), a5);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }
          }
        }
      }

      else
      {
        v23 = 0;
        result = mosyntpal_ALLOCATE(a1, &v23, 0x20u);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = NoteAPRuleListAlloc(a1, a2, v23);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v14 = v23;
        *(v23 + 8) = v13;
        v14[2] = a3;
        v14[3] = v5;
        v15 = *a4;
        if (*a4)
        {
          v16 = mosyntkbaccphr_GetRule(15, *(a2 + 16), *(v15 + 2));
          if (v16 < mosyntkbaccphr_GetRule(15, *(a2 + 16), v13))
          {
            while (1)
            {
              v17 = v15;
              v15 = *v15;
              if (!v15)
              {
                break;
              }

              v18 = mosyntkbaccphr_GetRule(15, *(a2 + 16), *(v15 + 2));
              if (v18 >= mosyntkbaccphr_GetRule(15, *(a2 + 16), v13))
              {
                v19 = *v17;
                goto LABEL_22;
              }
            }

            v19 = 0;
LABEL_22:
            *v23 = v19;
            *v17 = v23;
            goto LABEL_23;
          }

          v20 = *a4;
          v14 = v23;
        }

        else
        {
          v20 = 0;
        }

        *v14 = v20;
        *a4 = v23;
      }

LABEL_23:
      result = mosyntkbaccphr_GetNextAccPhrEntry(a1, v10, &v22, v24);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }
    }

    v5 = *v5;
  }

  while (v5);
  return result;
}

uint64_t IsMatchingRule(uint64_t a1, uint64_t a2, uint64_t a3, void **a4, uint64_t a5)
{
  v32[2] = *MEMORY[0x277D85DE8];
  v31 = 0;
  v32[0] = 0;
  *(v32 + 5) = 0;
  v10 = *(a2 + 16);
  v11 = **(a5 + 24) - **(a5 + 16);
  if (mosyntkbaccphr_GetRule(8, v10, a3) <= v11 && v11 <= mosyntkbaccphr_GetRule(9, v10, a3) && (v12 = mosyntkbaccphr_GetRule(6, v10, a3), v13 = *(a5 + 82), v12 <= v13) && mosyntkbaccphr_GetRule(7, v10, a3) >= v13 && (v14 = mosyntkbaccphr_GetRule(10, v10, a3), v15 = *(a5 + 80), v14 <= v15) && mosyntkbaccphr_GetRule(11, v10, a3) >= v15)
  {
    if (IsMatchingNodeContext(a1, a2, a3, a4, a5, 0))
    {
      if (IsMatchingNodeContext(a1, a2, a3, a4, a5, 1))
      {
        v16 = IsMatchingNodeContext(a1, a2, a3, a4, a5, 2);
        if (v16)
        {
          Rule = mosyntkbaccphr_GetRule(5, v10, a3);
          if (Rule == mosyntkbaccphr_Nil())
          {
            v17 = 0;
          }

          else
          {
            v16 = IsMatchingNodeContext(a1, a2, a3, a4, a5, 3);
            if (v16)
            {
              v17 = 0;
            }

            else
            {
              v17 = 5;
            }
          }
        }

        else
        {
          v17 = 4;
        }
      }

      else
      {
        v16 = 0;
        v17 = 3;
      }
    }

    else
    {
      v16 = 0;
      v17 = 2;
    }
  }

  else
  {
    v16 = 0;
    v17 = 1;
  }

  if (*a2 >= 2)
  {
    mosyntknowl_WriteTraceHeader(a1, 4u);
    m2__cp__str("[AccPhr]           ", &v31, 21);
    mosyntbase_WString(a1, "[AccPhr] Node ", 0);
    v18 = *(a2 + 8);
    v19 = mosyntkbaccphr_GetRule(1, v10, a3);
    mosyntkbaccphr_WriteAccPhrNode(a1, v18, v10, v19);
    mosyntbase_WStringLn(a1, " covers:", 0);
    mosyntbase_WString(a1, "[AccPhr] ", 0);
    WriteCoverage(a1, a2, *(a5 + 16), *(a5 + 24));
    mosyntbase_WLn(a1);
    mosyntbase_WStringLn(a1, "[AccPhr] Matching rule:", 0);
    mosyntbase_WString(a1, "[AccPhr] ", 0);
    mosyntkbaccphr_WriteRuleHeadline(a1, *(a2 + 8), v10, a3);
    mosyntbase_WLn(a1);
    if (v16)
    {
      mosyntbase_WriteMessage(a1, "%s...\\n[AccPhr] Rule matched successfully.\\n", 0, &v31, 21, "", 0, "", 0);
      return v16;
    }

    if (v17 == 5)
    {
      v24 = *(a2 + 8);
      v25 = mosyntkbaccphr_GetRule(5, v10, a3);
      mosyntkbaccphr_WriteChildrenList(a1, v24, v10, &v31, 21, v25);
      mosyntbase_WriteMessage(a1, "%s...\\n[AccPhr] Rule doesn't match: ", 0, &v31, 21, "", 0, "", 0);
      v23 = "children";
    }

    else if (v17 == 1)
    {
      v20 = mosyntkbaccphr_GetRule(8, v10, a3);
      *(&v28 + 1) = mosyntkbaccphr_GetRule(9, v10, a3);
      LODWORD(v28) = 0;
      DWORD1(v28) = v20;
      mosyntbase_WriteMessage(a1, "%s<wordrange(%i,%i)>\\n", 0, &v31, 21, "", 0, "", v28);
      v21 = mosyntkbaccphr_GetRule(6, v10, a3);
      *(&v29 + 1) = mosyntkbaccphr_GetRule(7, v10, a3);
      LODWORD(v29) = 0;
      DWORD1(v29) = v21;
      mosyntbase_WriteMessage(a1, "%s<syllrange(%i,%i)>\\n", 0, &v31, 21, "", 0, "", v29);
      v22 = mosyntkbaccphr_GetRule(10, v10, a3);
      *(&v30 + 1) = mosyntkbaccphr_GetRule(11, v10, a3);
      LODWORD(v30) = 0;
      DWORD1(v30) = v22;
      mosyntbase_WriteMessage(a1, "%s<accrange(%i,%i)>\\n", 0, &v31, 21, "", 0, "", v30);
      mosyntbase_WriteMessage(a1, "%s...\\n[AccPhr] Rule doesn't match: ", 0, &v31, 21, "", 0, "", 0);
      v23 = "constraints";
    }

    else
    {
      mosyntbase_WriteMessage(a1, "%s...\\n[AccPhr] Rule doesn't match: ", 0, &v31, 21, "", 0, "", 0);
      if ((v17 - 2) > 2)
      {
LABEL_18:
        mosyntbase_WStringLn(a1, " definition.", 0);
        return v16;
      }

      v23 = off_279DAC588[v17 - 2];
    }

    mosyntbase_WString(a1, v23, 0);
    goto LABEL_18;
  }

  return v16;
}

uint64_t AddEdgeRule(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v10 = 0;
  result = mosyntpal_ALLOCATE(a1, &v10, 0x20u);
  if ((result & 0x80000000) == 0)
  {
    result = NoteAPRuleListAlloc(a1, a2, v10);
    if ((result & 0x80000000) == 0)
    {
      v9 = v10;
      *(v10 + 8) = a3;
      v9[2] = 0;
      v9[3] = a4;
      *v9 = *(a4 + 16);
      *(a4 + 16) = v10;
    }
  }

  return result;
}

uint64_t AddRuleScenarios(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v9 = *(a2 + 16);
  Scenario = mosyntkbaccphr_GetScenario(2, v9, *(a2 + 60));
  if (Scenario != mosyntkbaccphr_Nil())
  {
    v11 = 0;
    while (1)
    {
      if (mosyntkbaccphr_GetRuleSetIsSubset(v9, Scenario))
      {
        for (i = mosyntkbaccphr_AccPhrScenarios(*(a2 + 16)); ; i = mosyntkbaccphr_GetScenario(3, v9, v13))
        {
          v13 = i;
          if (i == mosyntkbaccphr_Nil())
          {
            break;
          }

          v14 = mosyntkbaccphr_GetScenario(1, v9, v13);
          if (v14 == mosyntkbaccphr_GetRuleSet(2, v9, Scenario))
          {
            break;
          }
        }

        if (v13 != mosyntkbaccphr_Nil())
        {
          v15 = mosyntkbaccphr_GetScenario(2, v9, v13);
          if (v15 != mosyntkbaccphr_Nil())
          {
            do
            {
              if (mosyntkbaccphr_GetRuleSetIsSubset(v9, v15))
              {
                v16 = 1;
              }

              else
              {
                RuleSet = mosyntkbaccphr_GetRuleSet(1, v9, v15);
                v16 = RuleSet != mosyntkbaccphr_GetRule(0, v9, a3);
              }

              v15 = mosyntkbaccphr_GetRuleSet(4, v9, v15);
            }

            while (v15 != mosyntkbaccphr_Nil() && v16);
            if (!v16)
            {
              v18 = mosyntkbaccphr_GetScenario(1, v9, v13);
              inserted = InsertScenario(a1, a2, v18, a4, &v23);
              if ((inserted & 0x80000000) != 0)
              {
                return inserted;
              }

              v20 = mosyntkbaccphr_GetScenario(1, v9, v13);
              v11 = InsertScenario(a1, a2, v20, a5, &v23);
              if ((v11 & 0x80000000) != 0)
              {
                return v11;
              }
            }
          }
        }
      }

      Scenario = mosyntkbaccphr_GetRuleSet(4, v9, Scenario);
      if (Scenario == mosyntkbaccphr_Nil())
      {
        return v11;
      }
    }
  }

  return 0;
}

uint64_t NoteAPRuleListAlloc(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  result = mosyntpal_ALLOCATE(a1, &v7, 0x18u);
  if ((result & 0x80000000) == 0)
  {
    *v7 = *(a2 + 32);
    v6 = v7;
    *(a2 + 32) = v7;
    *(v6 + 2) = 4;
    v6[2] = a3;
  }

  return result;
}

uint64_t IsMatchingNodeContext(uint64_t a1, uint64_t a2, uint64_t a3, void **a4, void *a5, int a6)
{
  v11 = *(a2 + 16);
  if (a6 <= 1)
  {
    if (a6)
    {
      v12 = 3;
    }

    else
    {
      v12 = 2;
    }

    goto LABEL_7;
  }

  if (a6 == 2)
  {
    v12 = 4;
LABEL_7:
    Rule = mosyntkbaccphr_GetRule(v12, *(a2 + 16), a3);
    v33 = Rule;
    if (mosyntkbaccphr_GetNode(3, v11, Rule))
    {
      NodeMatchOp = mosyntkbaccphr_GetNodeMatchOp(v11, Rule);
      if (a6)
      {
        goto LABEL_14;
      }

      if ((NodeMatchOp & 1) == 0)
      {
        goto LABEL_14;
      }

      v15 = a5[4];
      v34 = Rule;
      if (v15 == a4)
      {
        goto LABEL_14;
      }

      do
      {
        v16 = IsMatchingNode(a1, a2, &v34, v15);
        LODWORD(v17) = v16;
        if (v16)
        {
          break;
        }

        v15 = *v15;
      }

      while (v15 != a4);
      if (!v16)
      {
LABEL_14:
        if ((mosyntkbaccphr_GetNodeMatchOp(v11, Rule) & 2) != 0)
        {
          v31 = mosyntkbaccphr_GetNodeMatchOp(v11, Rule);
          LODWORD(v17) = IsMatchingNodeNeighbours(a1, a2, &v33, a5, a6, (v31 >> 2) & 1);
          LODWORD(Rule) = v33;
        }

        else
        {
          LODWORD(v17) = 0;
        }
      }
    }

    else
    {
      LODWORD(v17) = 1;
    }

    if (mosyntkbaccphr_GetNodeNegated(v11, Rule))
    {
      return v17 == 0;
    }

    else
    {
      return v17;
    }
  }

  v18 = mosyntkbaccphr_GetRule(5, *(a2 + 16), a3);
  while (1)
  {
    if (v18 == mosyntkbaccphr_Nil())
    {
      return 0;
    }

    Children = mosyntkbaccphr_GetChildren(1, v11, v18);
    if (!mosyntkbaccphr_GetChildrenOp(v11, v18))
    {
      break;
    }

    if ((mosyntkbaccphr_GetNodeMatchOp(v11, Children) & 1) != 0 && (Node = mosyntkbaccphr_GetNode(8, v11, Children), Node == mosyntkbaccphr_Nil()) && (v21 = *a4, v34 = Children, v21))
    {
      do
      {
        v17 = IsMatchingNode(a1, a2, &v34, v21);
        if (v17)
        {
          break;
        }

        v21 = *v21;
      }

      while (v21);
    }

    else
    {
      v17 = 0;
    }

    while (Children != mosyntkbaccphr_Nil())
    {
      v22 = mosyntkbaccphr_GetNodeMatchOp(v11, Children);
      Children = mosyntkbaccphr_GetNode(8, v11, Children);
      if ((v22 & 2) == 0)
      {
        goto LABEL_50;
      }
    }

    if (v17)
    {
      goto LABEL_58;
    }

    if (a5[9])
    {
      v27 = mosyntkbaccphr_GetChildren(1, v11, v18);
      v28 = a5[2];
      v29 = a5[9];
      v30 = mosyntkbaccphr_GetChildrenOp(v11, v18) == 2;
      v17 = IsMatchingChildren(a1, a2, v27, v28, a5, v29, v30);
    }

    else
    {
      v17 = 0;
    }

LABEL_50:
    v18 = mosyntkbaccphr_GetChildren(2, v11, v18);
    if (v17)
    {
      return v17;
    }
  }

  if (Children != mosyntkbaccphr_Nil())
  {
    while (1)
    {
      if ((mosyntkbaccphr_GetNodeMatchOp(v11, Children) & 1) == 0)
      {
        goto LABEL_62;
      }

      v23 = *a4;
      v34 = Children;
      if (!v23)
      {
        goto LABEL_62;
      }

      do
      {
        v24 = IsMatchingNode(a1, a2, &v34, v23);
        LODWORD(v17) = v24;
        if (v24)
        {
          break;
        }

        v23 = *v23;
      }

      while (v23);
      if (!v24)
      {
LABEL_62:
        LODWORD(v17) = (mosyntkbaccphr_GetNodeMatchOp(v11, Children) & 2) != 0 && (v25 = a5[9]) != 0 && IsMatchingChildFuzzy(a1, a2, Children, v25);
      }

      v17 = mosyntkbaccphr_GetNodeNegated(v11, Children) ? v17 == 0 : v17;
      v26 = mosyntkbaccphr_GetNode(8, v11, Children);
      if (!v17)
      {
        goto LABEL_50;
      }

      Children = v26;
      if (v26 == mosyntkbaccphr_Nil())
      {
        goto LABEL_58;
      }
    }
  }

  v17 = 1;
LABEL_58:
  mosyntkbaccphr_GetChildren(2, v11, v18);
  return v17;
}

BOOL IsMatchingChildFuzzy(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = *(a2 + 16);
  v9 = a4[4];
  v12 = a3;
  if (v9)
  {
    do
    {
      v10 = IsMatchingNode(a1, a2, &v12, v9);
      if (v10)
      {
        break;
      }

      v9 = *v9;
    }

    while (v9);
    if (v10)
    {
      return 1;
    }
  }

  if ((mosyntkbaccphr_GetNodeMatchOp(v8, a3) & 4) != 0 && a4[9] && IsMatchingChildFuzzy(a1, a2, a3))
  {
    return 1;
  }

  if (a4[7])
  {
    return IsMatchingChildFuzzy(a1, a2, a3) != 0;
  }

  return 0;
}

uint64_t IsMatchingChildren(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  while (2)
  {
    if (*(a6 + 16) == a4)
    {
      v14 = *(a6 + 92) == 0;
      v13 = a6;
    }

    else
    {
      v13 = *(a4 + 48);
      if (v13)
      {
        v14 = 0;
      }

      else
      {
        v13 = *(a4 + 32);
        v14 = 1;
      }
    }

    v15 = *(a2 + 16);
    do
    {
      while (1)
      {
        v16 = v13[4];
        v28 = a3;
        if (!v16)
        {
          goto LABEL_22;
        }

        do
        {
          v17 = IsMatchingNode(a1, a2, &v28, v16);
          if (v17)
          {
            break;
          }

          v16 = *v16;
        }

        while (v16);
        if (!v17)
        {
          goto LABEL_20;
        }

        Node = mosyntkbaccphr_GetNode(8, v15, a3);
        if (Node != mosyntkbaccphr_Nil())
        {
          if ((mosyntkbaccphr_GetNodeMatchOp(v15, a3) & 4) != 0 && *v13[3] < **(a6 + 24))
          {
            v19 = mosyntkbaccphr_GetNode(8, v15, a3);
            v20 = v13[3];
            v21 = a7;
            v22 = a1;
            v23 = a2;
            v24 = a5;
            v25 = a6;
LABEL_19:
            v16 = IsMatchingChildren(v22, v23, v19, v20, v24, v25, v21);
            goto LABEL_22;
          }

          if (*(a6 + 56))
          {
            v19 = mosyntkbaccphr_GetNode(8, v15, a3);
            v25 = *(a6 + 56);
            v20 = *(v25 + 16);
            v21 = a7;
            v22 = a1;
            v23 = a2;
            v24 = a5;
            goto LABEL_19;
          }

LABEL_20:
          v16 = 0;
          goto LABEL_22;
        }

        v16 = !a7 || (v13[3] == *(a5 + 24));
LABEL_22:
        if ((mosyntkbaccphr_GetNodeMatchOp(v15, a3) & 4) == 0)
        {
          goto LABEL_28;
        }

        v13 = *v13;
        if (!v13)
        {
          break;
        }

        if (v16)
        {
          goto LABEL_28;
        }
      }

      if (v14)
      {
        break;
      }

      v13 = *(a4 + 32);
      v14 = 1;
    }

    while (!v16);
LABEL_28:
    if (!(v16 | a7))
    {
      if ((mosyntkbaccphr_GetNodeMatchOp(v15, a3) & 4) != 0 && *a4 + 1 < **(a6 + 24))
      {
        a7 = 0;
        a4 = *(a4 + 16);
        continue;
      }

      a6 = *(a6 + 56);
      if (a6)
      {
        a7 = 0;
        a4 = *(a6 + 16);
        continue;
      }

      return 0;
    }

    return v16;
  }
}

uint64_t IsMatchingNodeNeighbours(uint64_t a1, uint64_t a2, unsigned int *a3, void *a4, int a5, int a6)
{
  while (1)
  {
    v6 = a6;
    v7 = a5;
    v8 = a4;
    v9 = a3;
    v10 = a2;
    v11 = a1;
    v38 = 0;
    v37 = 0;
    v12 = *(a2 + 16);
    if (mosyntkbaccphr_GetNode(3, v12, *a3) == 3)
    {
      break;
    }

    if (v7 == 2)
    {
      v19 = v8[3];
      v20 = *(v19 + 48);
      if (v20)
      {
        do
        {
          v21 = v20[4];
          LODWORD(v39) = *v9;
          if (v21)
          {
            do
            {
              result = IsMatchingNode(v11, v10, &v39, v21);
              if (result)
              {
                break;
              }

              v21 = *v21;
            }

            while (v21);
          }

          else
          {
            result = 0;
          }

          if (result)
          {
            break;
          }

          v20 = *v20;
        }

        while (v20);
        v19 = v8[3];
        if (result)
        {
          return result;
        }
      }

      else
      {
        result = 0;
      }

      v28 = *(v19 + 32);
      if (!v28)
      {
        return result;
      }

      v29 = v28[4];
      LODWORD(v39) = *v9;
      if (v29)
      {
        do
        {
          result = IsMatchingNode(v11, v10, &v39, v29);
          if (result)
          {
            break;
          }

          v29 = *v29;
        }

        while (v29);
      }

      else
      {
        result = 0;
      }

      if (!v6 || result)
      {
        return result;
      }

      a1 = v11;
      a2 = v10;
      a3 = v9;
      a4 = v28;
      a5 = 2;
    }

    else if (v7 == 1)
    {
      v15 = v8[2];
      v16 = *(v15 + 40);
      if (v16)
      {
        do
        {
          v17 = *(v16 + 32);
          LODWORD(v39) = *v9;
          if (v17)
          {
            do
            {
              result = IsMatchingNode(v11, v10, &v39, v17);
              if (result)
              {
                break;
              }

              v17 = *v17;
            }

            while (v17);
          }

          else
          {
            result = 0;
          }

          if (result)
          {
            break;
          }

          v16 = *(v16 + 8);
        }

        while (v16);
        v15 = v8[2];
        if (result)
        {
          return result;
        }
      }

      else
      {
        result = 0;
      }

      v26 = *(v15 + 24);
      if (!v26)
      {
        return result;
      }

      v27 = v26[4];
      LODWORD(v39) = *v9;
      if (v27)
      {
        do
        {
          result = IsMatchingNode(v11, v10, &v39, v27);
          if (result)
          {
            break;
          }

          v27 = *v27;
        }

        while (v27);
      }

      else
      {
        result = 0;
      }

      if (!v6 || result)
      {
        return result;
      }

      a1 = v11;
      a2 = v10;
      a3 = v9;
      a4 = v26;
      a5 = 1;
    }

    else
    {
      v22 = v8[6];
      if (!v22)
      {
        return 0;
      }

      v23 = *(v22 + 32);
      LODWORD(v39) = *v9;
      if (v23)
      {
        do
        {
          result = IsMatchingNode(v11, v10, &v39, v23);
          if (result)
          {
            break;
          }

          v23 = *v23;
        }

        while (v23);
      }

      else
      {
        result = 0;
      }

      if (!v6 || result)
      {
        return result;
      }

      a4 = v8[6];
      a1 = v11;
      a2 = v10;
      a3 = v9;
      a5 = 0;
    }

    a6 = 1;
  }

  if (v7 != 2)
  {
    if (v7 == 1)
    {
      if (mosyntkbaccphr_GetNode(7, v12, *v9) == 1)
      {
        v13 = v8[2];
        v39 = 0;
        if (v13)
        {
          mosyntdata_GetSentTermCommList(v11, *(v10 + 40), *(v13 + 64), &v39);
          result = v39 != 0;
          if (!v6)
          {
            return result;
          }
        }

        else
        {
          result = 0;
          if (!v6)
          {
            return result;
          }
        }

        if ((result & 1) == 0)
        {
          v32 = v8[2];
          do
          {
            v32 = *(v32 + 8);
            if (!v32)
            {
              break;
            }

            v39 = 0;
            mosyntdata_GetSentTermCommList(v11, *(v10 + 40), *(v32 + 64), &v39);
          }

          while (!v39);
          return v32 != 0;
        }

        return result;
      }

      if (mosyntkbaccphr_GetNode(7, v12, *v9) == 2)
      {
        v24 = *(v8[2] + 8);
        return v6 || v24 == 0;
      }
    }

    return 0;
  }

  if (mosyntkbaccphr_GetNode(7, v12, *v9) != 1)
  {
    if (mosyntkbaccphr_GetNode(7, v12, *v9) == 3)
    {
      v24 = *(v8[3] + 16);
      return v6 || v24 == 0;
    }

    if (mosyntkbaccphr_GetNode(7, v12, *v9) == 4)
    {
      v30 = v8[3];
      v39 = 0;
      if (v30)
      {
        mosyntdata_GetSentTermCommList(v11, *(v10 + 40), *(v30 + 64), &v39);
        v31 = v39;
      }

      else
      {
        v31 = 0;
      }

      mosyntdata_GetPunctFromCommandList(v11, v31, &v38, &v37);
      result = v38 == 10;
      if (!v6 || v38 == 10)
      {
        return result;
      }

      v33 = *(v8[3] + 16);
      if (v33)
      {
        do
        {
          v34 = v8[3];
          v39 = 0;
          if (v34)
          {
            mosyntdata_GetSentTermCommList(v11, *(v10 + 40), *(v34 + 64), &v39);
            v35 = v39;
          }

          else
          {
            v35 = 0;
          }

          mosyntdata_GetPunctFromCommandList(v11, v35, &v38, &v37);
          v33 = *(v33 + 16);
        }

        while (v38 != 10 && v33 != 0);
        return v38 == 10;
      }
    }

    return 0;
  }

  v18 = v8[3];
  v39 = 0;
  if (v18)
  {
    mosyntdata_GetSentTermCommList(v11, *(v10 + 40), *(v18 + 64), &v39);
    result = v39 != 0;
    if (!v6)
    {
      return result;
    }
  }

  else
  {
    result = 0;
    if (!v6)
    {
      return result;
    }
  }

  if ((result & 1) == 0)
  {
    v32 = v8[3];
    do
    {
      v32 = *(v32 + 16);
      if (!v32)
      {
        break;
      }

      v39 = 0;
      mosyntdata_GetSentTermCommList(v11, *(v10 + 40), *(v32 + 64), &v39);
    }

    while (!v39);
    return v32 != 0;
  }

  return result;
}

uint64_t IsMatchingNode(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  v7 = *(a2 + 16);
  v17 = 0;
  Node = mosyntkbaccphr_GetNode(3, v7, *a3);
  result = 0;
  if (Node <= 1)
  {
    if (!Node)
    {
      return 1;
    }

    if (Node != 1)
    {
      return result;
    }

    v10 = (a4 + 16);
    while (1)
    {
      v10 = *v10;
      if (!v10)
      {
        break;
      }

      v11 = mosyntkbaccphr_GetNode(4, v7, *a3);
      Rule = mosyntkbaccphr_GetRule(0, v7, *(v10 + 2));
      v13 = mosyntkbaccphr_GetRule(0, v7, *(v10 + 2));
      if (Rule >= 0)
      {
        v14 = v13;
      }

      else
      {
        v14 = -v13;
      }

      if (v11 == v14)
      {
        return 1;
      }
    }

    return 0;
  }

  if (Node != 2)
  {
    if (Node != 3)
    {
      return result;
    }

    mosyntbase_WriteDevelMessage(a1, "IsMatchingNode -- Property, not handeled here\\n", 0, "", 0, "", 0, "", 0, 0, 0, 0);
    return 0;
  }

  v15 = mosyntkbaccphr_GetNode(5, v7, *a3);
  v16 = mosyntkbaccphr_GetNode(6, v7, *a3);
  mosyntkbaccphr_CheckMatchingConsFeat2(a1, v7, v15, v16, *(*(a4 + 8) + 16), (*(a4 + 8) + 24), &v17);
  return v17;
}

uint64_t InsertScenario(uint64_t a1, uint64_t a2, int a3, uint64_t *a4, _DWORD *a5)
{
  v6 = 0;
  *a5 = 1;
  v7 = a4;
  while (1)
  {
    v8 = v6;
    v11 = v6;
    v6 = *v7;
    if (!*v7)
    {
      break;
    }

    v9 = *(v6 + 2);
    v7 = *v7;
    if (v9 >= a3)
    {
      if (v8)
      {
        if (v9 <= a3)
        {
          goto LABEL_13;
        }

        goto LABEL_8;
      }

      if (v9 <= a3)
      {
LABEL_13:
        result = 0;
        *a5 = 0;
        return result;
      }

      goto LABEL_11;
    }
  }

  if (v8)
  {
LABEL_8:
    result = NewScenarioList(a1, a2, a3, v8);
    if ((result & 0x80000000) == 0)
    {
      **v8 = v6;
    }

    return result;
  }

LABEL_11:
  result = NewScenarioList(a1, a2, a3, &v11);
  if ((result & 0x80000000) == 0)
  {
    *v11 = *a4;
    *a4 = v11;
  }

  return result;
}

uint64_t NewScenarioList(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
{
  v7 = *(a2 + 80);
  if (v7)
  {
    result = 0;
    *a4 = v7;
    *(a2 + 80) = **(a2 + 80);
LABEL_3:
    v9 = *a4;
    *(v9 + 8) = a3;
    *v9 = 0;
    return result;
  }

  result = mosyntpal_ALLOCATE(a1, a4, 0x10u);
  if ((result & 0x80000000) == 0)
  {
    v11 = *a4;
    v13 = 0;
    result = mosyntpal_ALLOCATE(a1, &v13, 0x18u);
    if ((result & 0x80000000) == 0)
    {
      *v13 = *(a2 + 32);
      v12 = v13;
      *(a2 + 32) = v13;
      *(v12 + 2) = 6;
      v12[2] = v11;
      goto LABEL_3;
    }
  }

  return result;
}

uint64_t AddSegment(uint64_t a1, uint64_t a2, int a3, uint64_t a4, _DWORD *a5)
{
  v22 = 0;
  v10 = mosyntpal_ALLOCATE(a1, &v22, 0x28u);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  v11 = v22;
  v23 = 0;
  v12 = mosyntpal_ALLOCATE(a1, &v23, 0x18u);
  if ((v12 & 0x80000000) == 0)
  {
    *v23 = *(a2 + 32);
    v13 = v22;
    v14 = v23;
    *(a2 + 32) = v23;
    *(v14 + 2) = 7;
    v14[2] = v11;
    *(v13 + 8) = a4;
    *(v13 + 16) = a5;
    v15 = *a5 - *a4;
    *(v13 + 24) = a3;
    *(v13 + 28) = v15;
    v16 = *(a2 + 16);
    for (i = mosyntkbaccphr_GetScenario(2, v16, *(a2 + 60)); ; i = mosyntkbaccphr_GetRuleSet(4, v16, v18))
    {
      v18 = i;
      if (i == mosyntkbaccphr_Nil() || mosyntkbaccphr_GetRuleSet(2, v16, v18) == a3)
      {
        break;
      }
    }

    if (v18 == mosyntkbaccphr_Nil())
    {
      RuleSet = 10000;
    }

    else
    {
      RuleSet = mosyntkbaccphr_GetRuleSet(3, v16, v18);
    }

    v20 = v22;
    *(v22 + 32) = RuleSet;
    *v20 = *(a4 + 56);
    *(a4 + 56) = v22;
  }

  return v12;
}

uint64_t GetBestScenarioPathSuffix(uint64_t a1, void *a2, uint64_t **a3, uint64_t a4, uint64_t a5, int *a6, _DWORD *a7, _DWORD *a8, uint64_t *a9)
{
  v9 = a8;
  v17 = *(a4 + 16);
  if (v17 == a5)
  {
    result = 0;
    *a6 = 0;
    *a7 = 0;
    *a8 = 0;
    *a9 = 0;
  }

  else
  {
    result = GetBestScenarioPathSuffix(a1, a2, a3, v17, a5, a6, a7, a8, a9);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }
  }

  v19 = *(a4 + 56);
  if (!v19)
  {
    return result;
  }

  v39 = 0;
  v40 = 0;
  v37 = 0;
  v38 = 0;
  v36 = v9;
  while (1)
  {
    if (v19[2] == a5)
    {
      v40 = 0;
      HIDWORD(v39) = 0;
      v37 = 0;
      if (!a3)
      {
        goto LABEL_30;
      }

      v22 = *(v19 + 6);
      v23 = a3;
      while (1)
      {
        v24 = *(v23 + 2);
        if (v24 >= v22)
        {
          break;
        }

        v23 = *v23;
        if (!v23)
        {
          goto LABEL_30;
        }
      }

      if (v24 == v22)
      {
        LODWORD(v39) = 0;
      }

      else
      {
LABEL_30:
        LODWORD(v39) = 1;
      }

      goto LABEL_31;
    }

    if (a3)
    {
      break;
    }

    v38 = 0;
LABEL_21:
    result = InsertScenario(a1, a2, *(v19 + 6), &v38, &v39);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    result = GetBestScenarioPathSuffix(a1, a2, v38, v19[2], a5, &v40 + 4, &v40, &v39 + 4, &v37);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    v25 = v38;
    if (v38)
    {
      v9 = v36;
      do
      {
        v26 = v25;
        v25 = *v25;
      }

      while (v25);
      result = 0;
      *v26 = a2[10];
      a2[10] = v38;
      v38 = 0;
    }

    else
    {
      result = 0;
      v9 = v36;
    }

LABEL_31:
    v27 = *(v19 + 7) + HIDWORD(v40);
    if (v27 <= *a6)
    {
      if (v27 != *a6)
      {
        goto LABEL_50;
      }

      v28 = v40;
      v32 = *(v19 + 8) + v40;
      if (v32 >= *a7 && (v32 != *a7 || v39 + HIDWORD(v39) >= *v9))
      {
        goto LABEL_50;
      }
    }

    else
    {
      v28 = v40;
    }

    *a6 = v27;
    *a7 = *(v19 + 8) + v28;
    *v9 = v39 + HIDWORD(v39);
    v29 = *a9;
    if (*a9)
    {
      v30 = *v29;
      if (*v29)
      {
        do
        {
          v31 = v30;
          v30 = *v30;
        }

        while (v30);
        *v31 = a2[11];
        a2[11] = *v29;
        *v29 = 0;
        v29 = *a9;
      }

      result = 0;
      *(v29 + 8) = v19;
    }

    else
    {
      v33 = a2[11];
      if (v33)
      {
        result = 0;
        *a9 = v33;
        a2[11] = *a2[11];
      }

      else
      {
        result = mosyntpal_ALLOCATE(a1, a9, 0x10u);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v34 = *a9;
        v41 = 0;
        result = mosyntpal_ALLOCATE(a1, &v41, 0x18u);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        *v41 = a2[4];
        v35 = v41;
        a2[4] = v41;
        *(v35 + 2) = 8;
        v35[2] = v34;
        v9 = v36;
      }

      *(*a9 + 8) = v19;
      **a9 = 0;
    }

    **a9 = v37;
LABEL_50:
    v19 = *v19;
    if (!v19)
    {
      return result;
    }
  }

  result = NewScenarioList(a1, a2, *(a3 + 2), &v38);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v20 = *a3;
  if (!*a3)
  {
    goto LABEL_21;
  }

  v21 = &v38;
  while (1)
  {
    v21 = *v21;
    result = NewScenarioList(a1, a2, *(v20 + 2), v21);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    v20 = *v20;
    if (!v20)
    {
      goto LABEL_21;
    }
  }
}

uint64_t IsRightMatchingTarget(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  while (1)
  {
    v10 = *(a2 + 16);
    *a5 = a4;
    v11 = a4[4];
    v15 = a3;
    if (v11)
    {
      do
      {
        result = IsMatchingNode(a1, a2, &v15, v11);
        if (result)
        {
          break;
        }

        v11 = *v11;
      }

      while (v11);
      if (result)
      {
        break;
      }
    }

    if ((mosyntkbaccphr_GetNodeMatchOp(v10, a3) & 4) != 0)
    {
      v13 = a4[9];
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *(v13 + 56);
        }

        while (v13);
        result = IsRightMatchingTarget(a1, a2, a3, v14, a5);
        if (result)
        {
          break;
        }
      }
    }

    a4 = a4[8];
    if (!a4)
    {
      return 0;
    }
  }

  return result;
}

BOOL IsLeftMatchingTarget(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v10 = *(a2 + 16);
  *a5 = a4;
  v11 = a4[4];
  v16 = a3;
  if (v11)
  {
    do
    {
      v12 = IsMatchingNode(a1, a2, &v16, v11);
      if (v12)
      {
        break;
      }

      v11 = *v11;
    }

    while (v11);
    if (v12)
    {
      return 1;
    }
  }

  if ((mosyntkbaccphr_GetNodeMatchOp(v10, a3) & 4) != 0)
  {
    v13 = a4[9];
    if (v13)
    {
      if (IsLeftMatchingTarget(a1, a2, a3, v13, a5))
      {
        return 1;
      }
    }
  }

  v15 = a4[7];
  return v15 && IsLeftMatchingTarget(a1, a2, a3, v15, a5) != 0;
}