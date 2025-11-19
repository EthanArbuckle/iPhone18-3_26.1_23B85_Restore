uint64_t FERuntimeData_ObjClose(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1[22];
  if (v8)
  {
    log_OutText(*(*a1 + 32), a1[23], 4, 0, "fe_runtimedata : ObjClose Begin", a6, a7, a8, v16);
    v10 = a1[22];
    if (*v10)
    {
      vector_ObjClose(*v10);
      *v10 = 0;
    }

    node_clearMem(a1);
    v11 = *(v8 + 24);
    if (v11)
    {
      if (*v11)
      {
        heap_Free(*(*a1 + 8), *v11);
        v11 = *(v8 + 24);
        *v11 = 0;
      }

      heap_Free(*(*a1 + 8), v11);
      *(v8 + 24) = 0;
    }

    *(v8 + 16) = 0;
    heap_Free(*(*a1 + 8), v8);
    a1[22] = 0;
    log_OutText(*(*a1 + 32), a1[23], 4, 0, "fe_runtimedata : ObjClose End (%x)", v12, v13, v14, 0);
    return 0;
  }

  else
  {

    return TOKENTNERROR(8);
  }
}

void node_clearMem(void *a1)
{
  v1 = a1[22];
  v2 = *(v1 + 24);
  if (v2)
  {
    v3 = *(v1 + 32);
    if (v3 >= 2)
    {
      v5 = 1;
      v6 = 16;
      do
      {
        v7 = *(v2 + v6);
        if (v7)
        {
          heap_Free(*(*a1 + 8), v7);
          v2 = *(v1 + 24);
          *(v2 + v6) = 0;
          v3 = *(v1 + 32);
        }

        ++v5;
        v6 += 16;
      }

      while (v5 < v3);
      if (v3 >= 2)
      {
        bzero((v2 + 16), (16 * v3 + 0xFFFFFFFF0) & 0xFFFFFFFF0);
        *(v1 + 32) = 1;
      }
    }

    *(v1 + 38) = 0;
  }
}

uint64_t FERuntimeData_DumpMatch(uint64_t a1, uint64_t a2, __int16 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v43 = *MEMORY[0x1E69E9840];
  v41 = 0;
  if (*(a1 + 176))
  {
    if (a4 == 1)
    {
      strcpy(v42, "<LOGFE> ");
    }

    else
    {
      v42[0] = 0;
    }

    FEData_blockData_getTokenData(a1, *(a2 + 88), &v41, a4, a5, a6, a7, a8);
    strncpy(*(a1 + 552), (*(a1 + 304) + *a3), (a3[1] - *a3));
    *(*(a1 + 552) - *a3 + a3[1]) = 0;
    v39 = *(a2 + 104);
    v40 = *(a2 + 106);
    v35 = a3[1];
    v37 = *(a1 + 552);
    v32 = *a3;
    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "%s%20s [%d,%d] _%s_ (domainBlockID=%d, domainNum=%d)", v13, v14, v15, v42);
    if (*(a2 + 82))
    {
      v19 = 0;
      v20 = (a2 + 44);
      do
      {
        v21 = *(v20 - 1);
        v22 = *v20;
        if (v21 == -1 && v22 == 0xFFFF)
        {
          log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "%30s[%d] [%d,%d] _NULL_", v16, v17, v18, "MATCH");
        }

        else
        {
          strncpy(*(a1 + 552), (*(a1 + 304) + v21), (v22 - v21));
          *(*(a1 + 552) - *(v20 - 1) + *v20) = 0;
          v36 = *v20;
          v38 = *(a1 + 552);
          v33 = *(v20 - 1);
          log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "%30s[%d] [%d,%d] _%s_", v24, v25, v26, "MATCH");
        }

        ++v19;
        v20 += 2;
      }

      while (v19 < *(a2 + 82));
    }

    if (*(a2 + 40))
    {
      v27 = 0;
      v28 = (a2 + 2);
      do
      {
        v29 = *v28;
        v28 += 2;
        v34 = *(a1 + 504) + v29;
        log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "%30s[%d] %s", v16, v17, v18, "EXPANDEDORTH");
        ++v27;
      }

      while (v27 < *(a2 + 40));
    }

    v30 = *MEMORY[0x1E69E9840];
    return 0;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), *(a1 + 184), 24049, 0, a5, a6, a7, a8, v31);
    v11 = *MEMORY[0x1E69E9840];

    return TOKENTNERROR(7);
  }
}

uint64_t FERuntimeData_DumpMatches(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 548))
  {
LABEL_13:
    v18 = *MEMORY[0x1E69E9840];
    return 0;
  }

  v9 = *(a1 + 176);
  if (v9)
  {
    if (a3 == 1)
    {
      strcpy(v20, "<LOGFE> ");
    }

    else
    {
      v20[0] = 0;
    }

    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "%sfe_runtimedata : DumpMatches Begin %s", a6, a7, a8, v20);
    if (*(v9 + 16))
    {
      for (i = *(v9 + 8); i; i = *i)
      {
        FERuntimeData_DumpMatch(a1, (i + 12), i + 8, a3, v13, v14, v15, v16);
      }
    }

    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "%sfe_runtimedata : DumpMatches End (%x)", v14, v15, v16, v20);
    goto LABEL_13;
  }

  log_OutPublic(*(*a1 + 32), *(a1 + 184), 24049, 0, a5, a6, a7, a8, v19);
  v11 = *MEMORY[0x1E69E9840];

  return TOKENTNERROR(7);
}

uint64_t FERuntimeData_GetNumMatches(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1[22];
  if (v9)
  {
    return *(v9 + 16);
  }

  log_OutPublic(*(*a1 + 32), a1[23], 24049, 0, a5, a6, a7, a8, v8);
  return 0;
}

uint64_t FERuntimeData_FreeMatches(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a1[22];
  log_OutText(*(*a1 + 32), a1[23], 4, 0, "fe_runtimedata : FreeMatches Begin", a6, a7, a8, v15);
  node_clearMem(a1);
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  if (a2 == 1)
  {
    vector_Clear(*v10);
  }

  log_OutText(*(*a1 + 32), a1[23], 4, 0, "fe_runtimedata : FreeMatches End (%x)", v11, v12, v13, 0);
  return 0;
}

uint64_t FERuntimeData_AddDomainRange(uint64_t a1, uint64_t *a2)
{
  if (vector_AddGet(**(a1 + 176), a2))
  {
    v8 = *a2;
    *(v8 + 8) = 0;
    *v8 = 0;
    return 0;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), *(a1 + 184), 24048, 0, v4, v5, v6, v7, v10);

    return TOKENTNERROR(10);
  }
}

uint64_t FERuntimeData_AddMatch(uint64_t *a1, _DWORD *a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a2 || !a3)
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24049, 0, a5, a6, a7, a8, v47);

    return TOKENTNERROR(7);
  }

  v10 = a1[22];
  v11 = *(v10 + 32);
  if (!*(v10 + 32))
  {
    v38 = *(*a1 + 32);
    v39 = a1[23];
    v40 = 24035;
    v41 = 0;
LABEL_23:
    log_OutPublic(v38, v39, v40, v41, a5, a6, a7, a8, v47);
    v42 = 0;
    goto LABEL_24;
  }

  v13 = *(v10 + 24);
  v14 = *(v10 + 38);
  v15 = v13 + 16 * v14;
  v16 = *(v10 + 36);
  v17 = *(v15 + 12);
  v18 = v17 + v16;
  if (v17 + v16 < *(v15 + 8))
  {
    goto LABEL_10;
  }

  if (v11 + 1 >= *(v10 + 40))
  {
    v38 = *(*a1 + 32);
    v39 = a1[23];
    v47 = "maxBlocks";
    v41 = "%s%d";
    v40 = 24036;
    goto LABEL_23;
  }

  if (v14 + 1 >= v11)
  {
    v19 = (v13 + 16 * *(v10 + 32));
    v20 = *(v10 + 34) * v16 + 1;
    v19[1] = v20;
    *v19 = 0;
    v21 = heap_Calloc(*(*a1 + 8), 1, v20);
    *v19 = v21;
    if (v21)
    {
      ++*(v10 + 32);
      LOWORD(v14) = *(v10 + 38);
      v13 = *(v10 + 24);
      v16 = *(v10 + 36);
      goto LABEL_9;
    }

    log_OutPublic(*(*a1 + 32), a1[23], 24048, 0, v22, v23, v24, v25, v47);
    v42 = 10;
LABEL_24:
    LODWORD(result) = TOKENTNERROR(v42);
    if (result >= 0)
    {
      return 6;
    }

    else
    {
      return result;
    }
  }

LABEL_9:
  v26 = v14 + 1;
  *(v10 + 38) = v26;
  v15 = v13 + 16 * v26;
  v17 = *(v15 + 12);
  v18 = v17 + v16;
LABEL_10:
  *(v15 + 12) = v18;
  if (!*v15)
  {
    return 6;
  }

  v27 = *v15 + v17;
  *v27 = 0;
  *(v27 + 8) = 0;
  *(v27 + 16) = *a2;
  v28 = *a3;
  v29 = a3[1];
  *(v27 + 56) = a3[2];
  *(v27 + 40) = v29;
  *(v27 + 24) = v28;
  v30 = a3[3];
  v31 = a3[4];
  v32 = a3[5];
  *(v27 + 120) = a3[6];
  *(v27 + 104) = v32;
  *(v27 + 88) = v31;
  *(v27 + 72) = v30;
  v33 = *(v10 + 8);
  if (v33)
  {
    v34 = *(v27 + 16);
    while (1)
    {
      v35 = v33;
      v36 = *(v33 + 8);
      if (v36 == v34)
      {
        break;
      }

      if (v36 >= v34)
      {
        v46 = v35[1];
        v35[1] = v27;
        *v27 = v35;
        if (!v46)
        {
          goto LABEL_40;
        }

        *(v27 + 8) = v46;
        *v46 = v27;
        goto LABEL_41;
      }

      v33 = *v35;
      if (!*v35)
      {
        *v35 = v27;
        *(v27 + 8) = v35;
        goto LABEL_41;
      }
    }

    v43 = *(v27 + 18);
    if (*(v35 + 9) > v43)
    {
      while (1)
      {
        v44 = v35;
        v35 = v35[1];
        if (!v35)
        {
          break;
        }

        if (*(v35 + 8) != v34 || *(v35 + 9) <= v43)
        {
          v44[1] = v27;
          *v27 = v44;
          *(v27 + 8) = v35;
          *v35 = v27;
          goto LABEL_41;
        }
      }

      v44[1] = v27;
      *v27 = v44;
      goto LABEL_40;
    }

    while (1)
    {
      v45 = v35;
      v35 = *v35;
      if (!v35)
      {
        break;
      }

      if (*(v35 + 8) != v34 || *(v35 + 9) >= v43)
      {
        *v45 = v27;
        *v27 = v35;
        *(v27 + 8) = v45;
        v35[1] = v27;
        goto LABEL_41;
      }
    }

    *v45 = v27;
    *(v27 + 8) = v45;
  }

  else
  {
LABEL_40:
    *(v10 + 8) = v27;
  }

LABEL_41:
  result = 0;
  ++*(v10 + 16);
  return result;
}

uint64_t FERuntimeData_FindLongestMatch(uint64_t a1, unsigned __int16 *a2, _WORD *a3)
{
  v3 = *(a1 + 176);
  if (*(v3 + 16))
  {
    v4 = *(v3 + 8);
    for (*a3 = a2[1]; v4; v4 = *v4)
    {
      v5 = *(v4 + 8);
      v6 = *a2;
      if (v5 == v6)
      {
        *a3 = *(v4 + 9);
      }

      else if (v5 > v6)
      {
        return 0;
      }
    }
  }

  return 0;
}

uint64_t FERuntimeData_GetAllMatchesAtKey(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *(a1 + 176);
  if (!*(v2 + 16))
  {
    return 0;
  }

  v5 = *(v2 + 8);
  if (v5)
  {
    v6 = 0;
    do
    {
      if (*(v5 + 8) != *a2)
      {
        break;
      }

      if (*(v5 + 9) != a2[1])
      {
        break;
      }

      ++v6;
      v5 = *v5;
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  result = resetMatchList(a1, v6);
  if ((result & 0x80000000) == 0)
  {
    v8 = *(v2 + 8);
    if (v8)
    {
      v9 = *a2;
      do
      {
        if (*(v8 + 8) != v9)
        {
          break;
        }

        if (*(v8 + 9) != a2[1])
        {
          break;
        }

        v10 = *(a1 + 386);
        *(*(a1 + 376) + 8 * v10) = v8 + 3;
        *(a1 + 386) = v10 + 1;
        v8 = *v8;
      }

      while (v8);
    }
  }

  return result;
}

uint64_t FERuntimeData_DeleteSubsumedkeys(uint64_t a1, unsigned __int16 *a2, unsigned int a3)
{
  v3 = *(a1 + 176);
  if (*(v3 + 16))
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      v5 = *a2;
      while (1)
      {
        v6 = *(v4 + 8);
        if (v6 == v5 && *(v4 + 9) == a3)
        {
          goto LABEL_8;
        }

        if (v6 < v5)
        {
          break;
        }

        if (*(v4 + 9) <= a3)
        {
          v7 = *v4;
        }

        else
        {
          v7 = *v4;
          if (v6 >= a3)
          {
            goto LABEL_16;
          }
        }

        v8 = v4[1];
        if (!v8)
        {
          if (v7)
          {
            v7[1] = 0;
          }

          *(v3 + 8) = v7;
          v9 = *v4;
          if (!*v4)
          {
            goto LABEL_16;
          }

LABEL_15:
          v9[1] = v4[1];
          goto LABEL_16;
        }

        *v8 = v7;
        v9 = v7;
        if (v7)
        {
          goto LABEL_15;
        }

LABEL_16:
        v4 = v7;
        if (!v7)
        {
          return 0;
        }
      }

      if (v6 > a3)
      {
        return 0;
      }

LABEL_8:
      v7 = *v4;
      goto LABEL_16;
    }
  }

  return 0;
}

uint64_t FERuntimeData_DeleteMatch(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  v3 = *(a1 + 176);
  if (*(v3 + 16))
  {
    v4 = (v3 + 8);
    v5 = (v3 + 8);
    while (1)
    {
      v5 = *v5;
      if (!v5)
      {
        return 0;
      }

      v6 = *(v5 + 8);
      v7 = *a2;
      if (v6 == v7 && *(v5 + 9) == a2[1] && v5[14] == *(a3 + 88))
      {
        break;
      }

      if (v6 > v7)
      {
        return 0;
      }
    }

    v9 = *v5;
    v10 = v5[1];
    if (v10)
    {
      *v10 = v9;
      if (!v9)
      {
        return 0;
      }

      goto LABEL_15;
    }

    if (v9)
    {
      v9[1] = 0;
    }

    *v4 = v9;
    v9 = *v5;
    if (*v5)
    {
LABEL_15:
      v9[1] = v5[1];
    }
  }

  return 0;
}

uint64_t FERuntimeData_GetKeyAtPos(uint64_t a1, int a2, void *a3, void *a4)
{
  v4 = *(a1 + 176);
  if (*(v4 + 16))
  {
    v5 = (v4 + 8);
    do
    {
      v5 = *v5;
      if (!v5)
      {
        break;
      }

      v6 = *(v5 + 8);
      if (v6 == a2)
      {
        *a3 = v5 + 2;
        *a4 = v5 + 3;
        return 0;
      }
    }

    while (v6 <= a2);
  }

  return 0;
}

uint64_t FERuntimeData_UpdateDomainRange(void *a1, unsigned int a2, __int16 a3)
{
  v5 = a1[22];
  v11 = 0;
  if (vector_GetElemAt(*v5, a2, &v11))
  {
    result = 0;
    *(v11 + 2) = a3;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24037, "%s%d", v6, v7, v8, v9, "domainIndex");
    return TOKENTNERROR(0);
  }

  return result;
}

uint64_t FERuntimeData_GetDomainRange(uint64_t a1, unsigned int a2, void *a3)
{
  if (vector_GetElemAt(**(a1 + 176), a2, a3))
  {
    return 0;
  }

  log_OutPublic(*(*a1 + 32), *(a1 + 184), 24037, "%s%d", v4, v5, v6, v7, "domainIndex");

  return TOKENTNERROR(0);
}

uint64_t FERuntimeData_GetActiveDomains(uint64_t a1, uint64_t a2, _WORD *a3, int a4, int a5, int a6)
{
  v15 = 0;
  v11 = *(a1 + 176);
  if (vector_GetElemAt(*v11, 0, &v15))
  {
    v12 = 0;
    while (a6)
    {
      v13 = *a3;
      if (v13 <= 0x1F3)
      {
        goto LABEL_5;
      }

LABEL_9:
      if (!vector_GetElemAt(*v11, ++v12, &v15))
      {
        return 0;
      }
    }

    if (a4 < *v15)
    {
      goto LABEL_9;
    }

    if (a5 > v15[1])
    {
      goto LABEL_9;
    }

    v13 = *a3;
    if (v13 >= 0x1F4)
    {
      goto LABEL_9;
    }

LABEL_5:
    *(a2 + 2 * v13) = v12;
    ++*a3;
    goto LABEL_9;
  }

  return 0;
}

uint64_t FERuntimeData_PruneAndDumpActiveDomains(void *a1)
{
  v28 = 0;
  v2 = a1[22];
  if (vector_GetElemAt(*v2, 0, &v28))
  {
    v6 = 0;
    v7 = 0;
    do
    {
      *(v28 + 2);
      v24 = v28[1];
      log_OutText(*(*a1 + 32), a1[23], 4, 0, "DomainRange [%d,%d] %s", v3, v4, v5, *v28);
      if (*(v28 + 2))
      {
        ++v7;
      }

      else if (!vector_Remove(*v2, v6))
      {
        log_OutPublic(*(*a1 + 32), a1[23], 24038, "%s%d", v8, v9, v10, v11, "domain range index");
        return 0;
      }

      v6 = v7;
    }

    while (vector_GetElemAt(*v2, v7, &v28));
  }

  Size = vector_GetSize(*v2);
  v16 = *(*a1 + 32);
  v17 = a1[23];
  if (Size)
  {
    log_OutText(v16, v17, 4, 0, "%d Final Active Domains", v12, v13, v14, Size);
    if (vector_GetElemAt(*v2, 0, &v28))
    {
      v21 = 0;
      do
      {
        v26 = *v28;
        v27 = v28[1];
        v25 = v28[2];
        log_OutText(*(*a1 + 32), a1[23], 4, 0, "Domain[block=%d,num=%d] Range [%d,%d]", v18, v19, v20, v28[3]);
        ++v21;
      }

      while (vector_GetElemAt(*v2, v21, &v28));
    }
  }

  else
  {
    log_OutText(v16, v17, 4, 0, "No Final Active Domains", v12, v13, v14, v23);
  }

  return 0;
}

uint64_t FERuntimeData_GetDomainBlockIndex(void *a1, unsigned int a2, _WORD *a3, _WORD *a4)
{
  v7 = a1[22];
  v14 = 0;
  if (vector_GetElemAt(*v7, a2, &v14))
  {
    result = 0;
    v13 = v14;
    *a3 = *(v14 + 6);
    *a4 = *(v13 + 4);
  }

  else
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24038, "%s%d", v8, v9, v10, v11, "iDomainIndexID");
    return TOKENTNERROR(0);
  }

  return result;
}

uint64_t applyChecks(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v57 = 0;
  v58 = 0;
  v55 = 0;
  v56 = 0;
  v53[1] = 0;
  v54 = 0;
  v53[0] = 0;
  log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokenizer : applyChecks Begin (recursionlevel=%d)", a6, a7, a8, a5);
  inited = initStrRes(a1, &v56);
  if ((inited & 0x80000000) == 0)
  {
    DomainDefBlockInfo = initStrRes(a1, &v54);
    if ((DomainDefBlockInfo & 0x80000000) != 0)
    {
LABEL_29:
      clearStrRes(*a1, &v54);
      clearStrRes(*a1, &v56);
      log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokenizer : applyChecks End", v44, v45, v46, v50);
      return DomainDefBlockInfo;
    }

    if (*(a3 + 24))
    {
      v18 = 0;
      while (1)
      {
        log_OutText(*(*a1 + 32), a1[23], 5, 0, "level %d Apply Check %d ...", v14, v15, v16, a5);
        v19 = applyChecks(a1, a2, *(*(a3 + 16) + 8 * v18), &v56, (a5 + 1));
        if ((v19 & 0x80000000) != 0)
        {
          break;
        }

        if (WORD1(v57))
        {
          log_OutText(*(*a1 + 32), a1[23], 5, 0, "After check %d, result = %s", v20, v21, v22, v18);
        }

        DomainDefBlockInfo = add2StringV3(a1, &v54, &v56);
        if ((DomainDefBlockInfo & 0x80000000) != 0)
        {
          goto LABEL_29;
        }

        if (v18 + 1 != *(a3 + 24))
        {
          DomainDefBlockInfo = add2StringV2(a1, &v54, " ");
          if ((DomainDefBlockInfo & 0x80000000) != 0)
          {
            goto LABEL_29;
          }
        }

        WORD1(v57) = 0;
        *v56 = 0;
        if (++v18 >= *(a3 + 24))
        {
          goto LABEL_12;
        }
      }

LABEL_21:
      DomainDefBlockInfo = v19;
      goto LABEL_29;
    }

LABEL_12:
    clearStrRes(*a1, &v56);
    if (WORD1(v55))
    {
      log_OutText(*(*a1 + 32), a1[23], 5, 0, "doing function calls on expanded string %s", v23, v24, v25, v54);
    }

    FEFunctionMap_GetFunction(a1, 0, *a3, &v58);
    if (!v58)
    {
      v37 = *(*a1 + 32);
      v38 = a1[23];
      if (WORD1(v55))
      {
        log_OutPublic(v37, v38, 24001, "%s%s", v26, v27, v28, v29, "argstr");
      }

      else
      {
        log_OutPublic(v37, v38, 24001, 0, v26, v27, v28, v29, v50);
      }

      goto LABEL_29;
    }

    v19 = initStrRes(a1, v53);
    if ((v19 & 0x80000000) != 0)
    {
      goto LABEL_21;
    }

    if ((**a3 & 0xFFFFFFFE) == 8)
    {
      LODWORD(v52) = 0;
      v35 = a1[41];
      *v35 = v54;
      *(v35 + 8) = v53;
      *(v35 + 32) = 0;
      *(v35 + 40) = *(a3 + 8);
      v36 = v58(a1, &v52);
      if ((v36 & 0x80000000) == 0)
      {
LABEL_18:
        v36 = add2StringV3(a1, a4, v53);
      }
    }

    else
    {
      v52 = 0;
      v51 = 0;
      DomainDefBlockInfo = FEData_blockData_newGetDomainDefBlockInfo(a1, *(*(a1[41] + 24) + 104), &v52, v30, v31, v32, v33, v34);
      if ((DomainDefBlockInfo & 0x80000000) != 0)
      {
        goto LABEL_27;
      }

      v43 = a1[41];
      if (*(*(v43 + 24) + 106) > *(v52 + 24))
      {
        log_OutPublic(*(*a1 + 32), a1[23], 24002, 0, v39, v40, v41, v42, v50);
        goto LABEL_27;
      }

      v48 = *(v52 + 16) + 72 * *(*(v43 + 24) + 106);
      *v43 = *(a3 + 40);
      *(v43 + 8) = v53;
      if (*(v48 + 60))
      {
        v49 = a1[36];
      }

      else
      {
        v49 = *(v48 + 48) + *(v48 + 2);
      }

      *(v43 + 32) = v49;
      *(v43 + 40) = *(a3 + 8);
      v36 = v58(a1, &v51);
      if ((v36 & 0x80000000) == 0)
      {
        goto LABEL_18;
      }
    }

    DomainDefBlockInfo = v36;
LABEL_27:
    clearStrRes(*a1, v53);
    goto LABEL_29;
  }

  return inited;
}

uint64_t validateCurrentMatch(uint64_t a1, uint64_t a2, __int16 *a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7, uint64_t a8)
{
  v32 = 0;
  v30 = 0;
  v31 = 0;
  log_OutText(*(*a1 + 32), *(a1 + 184), 4, 0, "tokenizer : validateCurrentMatch Begin", a6, a7, a8, v29);
  *a7 = 1;
  if (partialMatchFoundInBasicToken_NNTN(a1, a3) != 1)
  {
    if (*(a1 + 548) == 1)
    {
      FERuntimeData_DumpMatch(a1, a2, a3, 0, v15, v16, v17, v18);
    }

    FEData_blockData_getTokenAndCheckData(a1, a6, &v31, &v32, &v30, v16, v17, v18);
    if (v32)
    {
      log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "Applying check rule for token %s", v20, v21, v22, a5);
      *(a1 + 402) = 0;
      **(a1 + 392) = 0;
      v23 = *(a1 + 328);
      *(v23 + 16) = a3;
      *(v23 + 24) = a2;
      v19 = applyChecks(a1, a4, v30, a1 + 392, 0, v24, v25, v26);
      if ((v19 & 0x80000000) != 0)
      {
        return v19;
      }

      v27 = *(a1 + 402);
      if (*(a1 + 402))
      {
        v27 = strcmp(*(a1 + 392), "TRUE") == 0;
        *a7 = v27;
      }

      else
      {
        *a7 = 0;
      }
    }

    else
    {
      v19 = 0;
      v27 = *a7;
    }

    log_OutText(*(*a1 + 32), *(a1 + 184), 4, 0, "tokenizer : validateCurrentMatch End result=%d", v20, v21, v22, v27);
    return v19;
  }

  log_OutText(*(*a1 + 32), *(a1 + 184), 4, 0, "tokenizer : validateCurrentMatch End result=%d (partial match in basic token found)", v16, v17, v18, *a7);
  v19 = 0;
  *a7 = 0;
  return v19;
}

uint64_t tokenizer_CheckNOTNULL(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a2 = 0;
  if (*(a1 + 548) == 1)
  {
    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "_NOTNULL( %d) = ", a6, a7, a8, *(*(a1 + 328) + 40));
  }

  v17 = 0;
  if (!validateMatchAndGetKey(a1, &v17, a3, a4, a5, a6, a7, a8))
  {
    v9 = *(*(a1 + 328) + 8);
LABEL_10:
    v11 = "FALSE";
    goto LABEL_11;
  }

  v9 = *(*(a1 + 328) + 8);
  if (v17 == -1 && HIWORD(v17) == 0xFFFF)
  {
    goto LABEL_10;
  }

  v11 = "TRUE";
LABEL_11:
  v15 = add2StringV2(a1, v9, v11);
  if ((v15 & 0x80000000) == 0 && *(a1 + 548) == 1)
  {
    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "%s", v12, v13, v14, **(*(a1 + 328) + 8));
  }

  return v15;
}

uint64_t tokenizer_CheckLessThan(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28 = 0;
  if (*(a1 + 548) == 1)
  {
    v10 = *(a1 + 328);
    v26 = *v10;
    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "_LESSTHAN( %d, %s) = ", a6, a7, a8, *(v10 + 20));
  }

  v27 = 0;
  *a2 = 0;
  if (validateMatchAndGetKey(a1, &v27, a3, a4, a5, a6, a7, a8))
  {
    if (v27 == -1 && HIWORD(v27) == 0xFFFF)
    {
      if (*(a1 + 548) == 1)
      {
        log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "NULL SUBMATCH", v13, v14, v15, v25);
      }

      v19 = *(*(a1 + 328) + 8);
      v18 = "TRUE";
    }

    else
    {
      if (!getValFromSentence(a1, &v27, &v28, v11, v12, v13, v14, v15))
      {
        *a2 = 0;
      }

      getValFromArgString(a1, &v28 + 1);
      v17 = v28 >= HIWORD(v28);
      *a2 = v28 < HIWORD(v28);
      if (v17)
      {
        v18 = "FALSE";
      }

      else
      {
        v18 = "TRUE";
      }

      v19 = *(*(a1 + 328) + 8);
    }
  }

  else
  {
    v19 = *(*(a1 + 328) + 8);
    v18 = "FALSE";
  }

  v23 = add2StringV2(a1, v19, v18);
  if ((v23 & 0x80000000) == 0 && *(a1 + 548) == 1)
  {
    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "%s", v20, v21, v22, **(*(a1 + 328) + 8));
  }

  return v23;
}

uint64_t addExpandedOrthography2Match(uint64_t a1, _DWORD *a2)
{
  *a2 = 0;
  v4 = *(a1 + 328);
  v5 = *(v4 + 40);
  v6 = (*(v4 + 24) + 4 * *(*(v4 + 24) + 40));
  *v6 = v5;
  v6[1] = *(a1 + 514);
  result = add2StringV5(a1, a1 + 504, *(a1 + 560));
  if ((result & 0x80000000) == 0)
  {
    ++*(*(*(a1 + 328) + 24) + 40);
    *a2 = 1;
  }

  return result;
}

uint64_t compareToken(uint64_t *a1, char *__s, int a3, unsigned int a4, int a5, unsigned int a6, unsigned int a7, int *a8)
{
  v16 = strlen(__s);
  v21 = a4;
  *a8 = 0;
  if (a6 <= a4)
  {
    v22 = a4;
  }

  else
  {
    v22 = a6;
  }

  if (v22 <= a7)
  {
    v22 = a7;
  }

  v23 = 0;
  if (v16)
  {
    do
    {
      if (__s[v23] == a3)
      {
        break;
      }

      ++v23;
    }

    while (v23 < v16);
  }

  if (a3 == __s[v23])
  {
    v43 = a5;
    v44 = a8;
    v45 = a1;
    if (a6 == 1)
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    if (a7 == 1)
    {
      v25 = v23;
    }

    else
    {
      v25 = 0;
    }

    if (a4 == 1)
    {
      v26 = v23;
    }

    else
    {
      v26 = 0;
    }

    if (v22 != 1)
    {
      v29 = 0;
      v28 = 0;
      v27 = 0;
      v32 = 1;
      while (1)
      {
        v33 = v23 + 1;
        v23 = v33;
        if (v16 > v33)
        {
          do
          {
            if (a3 == __s[v23])
            {
              break;
            }

            ++v23;
          }

          while (v16 > v23);
          if (v33 == v16 && v33 != v23)
          {
            break;
          }
        }

        if (++v32 == a6)
        {
          v28 = v33;
          v24 = v23;
        }

        if (v32 == a7)
        {
          v29 = v33;
          v25 = v23;
        }

        if (v32 == v21)
        {
          v27 = v33;
          v26 = v23;
        }

        if (v32 == v22)
        {
          goto LABEL_36;
        }
      }

      log_OutPublic(*(*v45 + 32), v45[23], 24003, "%s%s%s%d%s%c", v17, v18, v19, v20, "dictionaryStr");
      goto LABEL_44;
    }

    v27 = 0;
    v28 = 0;
    v29 = 0;
LABEL_36:
    v34 = v45[41];
    v35 = *v34;
    v36 = strlen(*v34);
    v37 = v26 - v27;
    v38 = v37 >= 1 && v36 == v37;
    if (!v38 || strncmp(&__s[v27], v35, v36))
    {
      return 0;
    }

    if (v29 == v25 || strstr(&__s[v29], v34[4]))
    {
      if (v43 == 1)
      {
        if (v28 == v24)
        {
          log_OutPublic(*(*v45 + 32), v45[23], 24004, "%s%s%s%s", v39, v40, v41, v42, "argStr");
LABEL_44:
          v30 = 0;
          result = 0;
LABEL_53:
          a8 = v44;
          goto LABEL_54;
        }

        __s[v24 - v28] = 0;
        result = add2StringV2(v45, (v45 + 70), __s);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }
      }

      else
      {
        result = 0;
      }

      v30 = 1;
      goto LABEL_53;
    }

    a8 = v44;
    if (*(v45 + 137) == 1)
    {
      log_OutText(*(*v45 + 32), v45[23], 5, 0, "search word %s, domain=%s - blocked on domain", v40, v41, v42, v35);
    }
  }

  else
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24003, "%s%s%s%c", v17, v18, v19, v20, "dictionaryStr");
  }

  v30 = 0;
  result = 0;
LABEL_54:
  *a8 = v30;
  return result;
}

uint64_t doDictionaryLookup(uint64_t a1, uint64_t a2, unsigned int a3, int a4, unsigned int a5, unsigned int a6, int *a7, uint64_t a8, int a9)
{
  v24 = 0;
  v23 = 0;
  v22 = 0;
  *a7 = 0;
  result = (*(*(a1 + 88) + 152))(*(a1 + 96), *(a1 + 104), a2, *(a1 + 592), &v24, &v23, &v22);
  if ((result & 0x80000000) == 0)
  {
    if (v23)
    {
      goto LABEL_21;
    }

    if (a9 == 1)
    {
      return result;
    }

    v19 = *(a1 + 592);
    v20 = strlen(v19);
    v21 = *(a1 + 600);
    if (4 * v20 >= v21)
    {
      result = growStrRes(a1, a1 + 592, (4 * v20) | 1u);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v19 = *(a1 + 592);
      LOWORD(v21) = *(a1 + 600);
    }

    result = (*(*(a1 + 88) + 112))(*(a1 + 96), *(a1 + 104), *(*(a1 + 328) + 32), v19, (v21 - 1));
    if (**(a1 + 592))
    {
      result = (*(*(a1 + 88) + 152))(*(a1 + 96), *(a1 + 104), a2);
      if ((result & 0x80000000) == 0)
      {
        if (v23)
        {
LABEL_21:
          if (!*a7)
          {
            v17 = 0;
            do
            {
              result = compareToken(a1, *(v24 + 8 * v17), v22, a3, a4, a5, a6, a7);
              if ((result & 0x80000000) != 0)
              {
                break;
              }

              ++v17;
            }

            while (!*a7 && v17 < v23);
          }
        }
      }
    }
  }

  return result;
}

uint64_t doDictionaryLookupLoop(uint64_t a1, int *a2, _DWORD *a3, int a4)
{
  *a2 = 0;
  result = doDictionaryLookup(a1, "tnlab", 1u, 0, 0, 2u, a2, 1, a4);
  if ((result & 0x80000000) == 0 && *a2 != 1)
  {
    strcpy(*(a1 + 592), *(a1 + 576));
    result = doDictionaryLookup(a1, "tn", 2u, 1, 1u, 3u, a2, *(a1 + 609), a4);
    if ((result & 0x80000000) == 0)
    {
      if (*a2 == 1)
      {
        *a3 = 1;
      }

      else
      {
        strcpy(*(a1 + 592), *(a1 + 576));
        return doDictionaryLookup(a1, "g2p", 2u, 0, 0, 3u, a2, *(a1 + 608), a4);
      }
    }
  }

  return result;
}

uint64_t tokenizer_CheckToken(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  v35 = 0;
  v33 = 0;
  if (*(a1 + 548) == 1)
  {
    v11 = *(a1 + 328);
    v31 = *v11;
    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "_ISTOKEN( %d, %s) = ", a6, a7, a8, *(v11 + 20));
  }

  v34 = 0;
  *a2 = 0;
  if (!validateMatchAndGetKey(a1, &v34, a3, a4, a5, a6, a7, a8))
  {
    goto LABEL_16;
  }

  if (v34 == -1 && HIWORD(v34) == 0xFFFF)
  {
    if (*(a1 + 548) == 1)
    {
      log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "NULL SUBMATCH", v12, v13, v14, v30);
    }

    goto LABEL_19;
  }

  if ((resetStrRes(a1, a1 + 576) & 0x80000000) != 0 || (resetStrRes(a1, a1 + 592) & 0x80000000) != 0)
  {
    return TOKENTNERROR(8);
  }

  v16 = add2StringV4(a1, a1 + 592, v34, SHIWORD(v34));
  if ((v16 & 0x80000000) != 0)
  {
    return v16;
  }

  v16 = add2StringV4(a1, a1 + 576, v34, SHIWORD(v34));
  if ((v16 & 0x80000000) != 0)
  {
    return v16;
  }

  if (*(a1 + 548) == 1)
  {
    *(*(a1 + 328) + 32);
    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "search word %s, domain=%s", v17, v18, v19, *(a1 + 592));
  }

  *(a1 + 570) = 0;
  **(a1 + 560) = 0;
  v16 = doDictionaryLookupLoop(a1, &v35, &v33, v8);
  if ((v16 & 0x80000000) != 0)
  {
    return v16;
  }

  if (v35 == 1)
  {
    if (v33 != 1)
    {
      goto LABEL_19;
    }

    v32 = 0;
    v16 = addExpandedOrthography2Match(a1, &v32);
    if ((v16 & 0x80000000) == 0)
    {
      if (v32 != 1)
      {
        if (*(a1 + 548) == 1)
        {
          log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "ERROR : problem adding expanded orthography for word %s", v27, v28, v29, *(a1 + 592));
        }

        goto LABEL_16;
      }

LABEL_19:
      v20 = *(*(a1 + 328) + 8);
      v21 = "TRUE";
      goto LABEL_20;
    }

    return v16;
  }

LABEL_16:
  v20 = *(*(a1 + 328) + 8);
  v21 = "FALSE";
LABEL_20:
  v25 = add2StringV2(a1, v20, v21);
  if ((v25 & 0x80000000) == 0 && *(a1 + 548) == 1)
  {
    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "%s", v22, v23, v24, **(*(a1 + 328) + 8));
  }

  return v25;
}

uint64_t tokenizer_CheckEqualTo(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v27 = 0;
  if (*(a1 + 548) == 1)
  {
    v10 = *(a1 + 328);
    v25 = *v10;
    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "_EQUALTO( %d, %s) = ", a6, a7, a8, *(v10 + 20));
  }

  v26 = 0;
  *a2 = 0;
  if (validateMatchAndGetKey(a1, &v26, a3, a4, a5, a6, a7, a8))
  {
    v16 = v26 == -1 && HIWORD(v26) == 0xFFFF;
    if (v16)
    {
      if (*(a1 + 548) == 1)
      {
        log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "NULL SUBMATCH", v13, v14, v15, v24);
      }

      v18 = *(*(a1 + 328) + 8);
      v17 = "TRUE";
    }

    else
    {
      if (!getValFromSentence(a1, &v26, &v27, v11, v12, v13, v14, v15))
      {
        *a2 = 0;
      }

      getValFromArgString(a1, &v27 + 1);
      v16 = v27 == HIWORD(v27);
      *a2 = v16;
      if (v16)
      {
        v17 = "TRUE";
      }

      else
      {
        v17 = "FALSE";
      }

      v18 = *(*(a1 + 328) + 8);
    }
  }

  else
  {
    v18 = *(*(a1 + 328) + 8);
    v17 = "FALSE";
  }

  v22 = add2StringV2(a1, v18, v17);
  if ((v22 & 0x80000000) == 0 && *(a1 + 548) == 1)
  {
    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "%s", v19, v20, v21, **(*(a1 + 328) + 8));
  }

  return v22;
}

uint64_t tokenizer_CheckAND(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = *MEMORY[0x1E69E9840];
  if (*(a1 + 548) == 1)
  {
    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "_AND( %s) = ", a6, a7, a8, **(a1 + 328));
  }

  *a2 = 0;
  if (parseIntoBinaryArgs(a1, &v20, &v18) && !(v20 ^ 0x45555254 | v21))
  {
    v17 = v18 ^ 0x45555254 | v19;
    *a2 = v17 == 0;
    if (!v17)
    {
      v10 = "TRUE";
      goto LABEL_7;
    }
  }

  else
  {
    *a2 = 0;
  }

  v10 = "FALSE";
LABEL_7:
  v14 = add2StringV2(a1, *(*(a1 + 328) + 8), v10);
  if ((v14 & 0x80000000) == 0 && *(a1 + 548) == 1)
  {
    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "%s", v11, v12, v13, **(*(a1 + 328) + 8));
  }

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

uint64_t getValFromSentence(uint64_t a1, __int16 *a2, _WORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a2;
  v10 = a2[1];
  if (v9 == -1 && v10 == 0xFFFF)
  {
    v19 = *(*a1 + 32);
    v20 = *(a1 + 184);
    v21 = 24005;
    v22 = 0;
  }

  else
  {
    v13 = (v10 - v9);
    strncpy(*(a1 + 552), (*(a1 + 304) + v9), v13);
    *(*(a1 + 552) + v13) = 0;
    v14 = *(a1 + 552);
    if (v10 == v9)
    {
LABEL_12:
      *a3 = atoi(v14);
      return 1;
    }

    v15 = 0;
    while (1)
    {
      v16 = v14[v15];
      if (v16 != 32 && (v16 - 48) >= 0xA)
      {
        break;
      }

      if (v13 == ++v15)
      {
        goto LABEL_12;
      }
    }

    v20 = *(a1 + 184);
    v23 = "string";
    v22 = "%s%s";
    v19 = *(*a1 + 32);
    v21 = 24006;
  }

  log_OutPublic(v19, v20, v21, v22, a5, a6, a7, a8, v23);
  return 0;
}

uint64_t getValFromArgString(uint64_t a1, _WORD *a2)
{
  v4 = **(a1 + 328);
  v5 = strlen(v4);
  if (v5)
  {
    v10 = 0;
    while (1)
    {
      v11 = v4[v10];
      if (v11 != 32 && (v11 - 48) >= 0xA)
      {
        break;
      }

      if (++v10 >= v5)
      {
        goto LABEL_8;
      }
    }

    log_OutPublic(*(*a1 + 32), *(a1 + 184), 24006, "%s%s", v6, v7, v8, v9, "string");
    return 0;
  }

  else
  {
LABEL_8:
    *a2 = atoi(v4);
    return 1;
  }
}

uint64_t parseIntoBinaryArgs(uint64_t a1, char *a2, char *a3)
{
  v6 = **(a1 + 328);
  v7 = strlen(v6);
  v12 = v7;
  v13 = v7;
  if (!v7)
  {
    goto LABEL_8;
  }

  if (*v6 == 32)
  {
    LOWORD(v14) = 0;
  }

  else
  {
    LOWORD(v14) = 0;
    do
    {
      v14 = v14 + 1;
    }

    while (v14 < v7 && v6[v14] != 32);
  }

  if (v14 != v7)
  {
    strncpy(a2, v6, v14);
    a2[v14] = 0;
    v19 = v14;
    do
    {
      v20 = ++v19;
    }

    while (v19 < v12 && *(**(a1 + 328) + v19) == 32);
    if (v13 != v19)
    {
      v21 = v13 - v19;
      if (v13 > v19)
      {
        v22 = **(a1 + 328);
        if (*(v22 + v19) != 32)
        {
          LOWORD(v23) = v19;
          do
          {
            v23 = v23 + 1;
            v20 = v23;
          }

          while (v23 < v12 && *(v22 + v23) != 32);
        }
      }

      if (v13 == v20)
      {
        strncpy(a3, (**(a1 + 328) + v19), v21);
        a3[v21] = 0;
        return 1;
      }
    }

    v25 = **(a1 + 328);
    log_OutPublic(*(*a1 + 32), *(a1 + 184), 24008, "%s%s", v15, v16, v17, v18, "string");
  }

  else
  {
LABEL_8:
    log_OutPublic(*(*a1 + 32), *(a1 + 184), 24007, "%s%s", v8, v9, v10, v11, "string");
  }

  return 0;
}

uint64_t validateMatchAndGetKey(uint64_t *a1, _WORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1[41];
  v9 = *(v8 + 40);
  if (*(v8 + 40))
  {
    v10 = *(v8 + 24);
    if (v9 > *(v10 + 82))
    {
      log_OutPublic(*(*a1 + 32), a1[23], 24008, "%s%d", a5, a6, a7, a8, "index");
      return 0;
    }

    v12 = v10 + 42;
    *a2 = *(v12 + 4 * (v9 - 1));
    a2[1] = *(v12 + 4 * v9 - 2);
  }

  else
  {
    *a2 = **(v8 + 16);
  }

  return 1;
}

uint64_t tokenizer_CheckOR(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = *MEMORY[0x1E69E9840];
  if (*(a1 + 548) == 1)
  {
    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "_OR( %s) = ", a6, a7, a8, **(a1 + 328));
  }

  *a2 = 0;
  if (parseIntoBinaryArgs(a1, &v20, &v18))
  {
    if (!(v20 ^ 0x45555254 | v21))
    {
      *a2 = 1;
LABEL_10:
      v11 = "TRUE";
      goto LABEL_11;
    }

    v10 = v18 ^ 0x45555254 | v19;
    *a2 = v10 == 0;
    if (!v10)
    {
      goto LABEL_10;
    }
  }

  else
  {
    *a2 = 0;
  }

  v11 = "FALSE";
LABEL_11:
  v15 = add2StringV2(a1, *(*(a1 + 328) + 8), v11);
  if ((v15 & 0x80000000) == 0 && *(a1 + 548) == 1)
  {
    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "%s", v12, v13, v14, **(*(a1 + 328) + 8));
  }

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

uint64_t resolveTokensUsingPriorityList(unsigned __int16 *a1, uint64_t a2)
{
  v44 = 0;
  v45 = 0;
  v43 = 0;
  DomainDefBlockInfo = resetSolutionList(a2, *(a2 + 386));
  if ((DomainDefBlockInfo & 0x80000000) == 0)
  {
    if (*(a2 + 386))
    {
      v10 = 0;
      v11 = 0;
      v12 = 4;
      while (1)
      {
        DomainDefBlockInfo = FEData_blockData_newGetDomainDefBlockInfo(a2, *(*(*(a2 + 376) + 8 * v10) + 104), &v43, v4, v5, v6, v7, v8);
        if ((DomainDefBlockInfo & 0x80000000) != 0)
        {
          break;
        }

        v13 = *(v43 + 8);
        *(*(a2 + 360) + v12) = v13;
        if (v13 > v11)
        {
          v11 = v13;
        }

        ++v10;
        v14 = *(a2 + 386);
        v12 += 12;
        if (v10 >= v14)
        {
          if (!*(a2 + 386))
          {
            goto LABEL_35;
          }

          v15 = 0;
          v16 = 0;
          v17 = (*(a2 + 360) + 4);
          v18 = 999;
          do
          {
            v19 = *v17;
            v17 += 3;
            if (v19 == v11)
            {
              ++v16;
              v18 = v15;
            }

            ++v15;
          }

          while (v14 != v15);
          if (v16 == 1)
          {
            *a1 = v18;
            log_OutText(*(*a2 + 32), *(a2 + 184), 5, 0, "priority list resolution by domain type : match %d", v6, v7, v8, v18);
            return 0;
          }

          v42 = a1;
          v20 = 0;
          v21 = 0;
          v22 = 0;
          v23 = 999;
          do
          {
            *(*(a2 + 360) + 12 * v20) = 999;
            v24 = *(*(a2 + 376) + 8 * v20);
            FEData_blockData_newGetDomainEntry(a2, *(v24 + 104), *(v24 + 106), &v45, v5, v6, v7, v8);
            if (*(v45 + 8) == 1)
            {
              FEData_blockData_newGetPriorityList(a2, *(*(*(a2 + 376) + 8 * v20) + 104), *(v45 + 12), &v44, v5, v6, v7, v8);
              if (!v44 || v44 == v22)
              {
                v22 = v44;
              }

              else
              {
                log_OutText(*(*a2 + 32), *(a2 + 184), 5, 0, "using priority list from match %d, to resolve", v6, v7, v8, v21);
                v22 = v44;
                if (*(a2 + 386))
                {
                  v25 = 0;
                  v26 = 0;
                  v27 = v44[4];
                  do
                  {
                    if (v44[4])
                    {
                      v28 = 0;
                      v29 = *(*(*(a2 + 376) + 8 * v25) + 88);
                      v30 = (*v44 + 4);
                      while (*(v29 + 2) != *(v30 - 1) || *(v29 + 4) != *v30)
                      {
                        ++v28;
                        v30 += 6;
                        if (v44[4] == v28)
                        {
                          goto LABEL_29;
                        }
                      }

                      log_OutText(*(*a2 + 32), *(a2 + 184), 5, 0, "token [%d] priority = %d", v6, v7, v8, v26);
                      if (v27 > v28)
                      {
                        v27 = v28;
                        v23 = v25;
                        *(*(a2 + 360) + 12 * v20) = v25;
                      }
                    }

LABEL_29:
                    v26 = ++v25;
                  }

                  while (v25 < *(a2 + 386));
                  v22 = v44;
                }
              }
            }

            ++v20;
            v31 = *(a2 + 386);
            v21 = v20;
          }

          while (v20 < v31);
          if (v23 == 999)
          {
            a1 = v42;
            goto LABEL_35;
          }

          if (*(a2 + 386))
          {
            v33 = 0;
            v34 = 0;
LABEL_39:
            v35 = (*(a2 + 360) + 12 * v33);
            do
            {
              v37 = *v35;
              v35 += 6;
              v36 = v37;
              if (v37 != 999 && v36 != v23)
              {
                log_OutText(*(*a2 + 32), *(a2 + 184), 5, 0, "priority lists conflict in resolution : solution %d and %d", v6, v7, v8, v36);
                ++v33;
                v34 = 1;
                v31 = *(a2 + 386);
                if (v33 >= v31)
                {
                  *v42 = v23;
                  goto LABEL_50;
                }

                goto LABEL_39;
              }

              ++v33;
            }

            while (v33 < v31);
            *v42 = v23;
            if ((v34 & 1) == 0)
            {
              goto LABEL_52;
            }

LABEL_50:
            v39 = *(*a2 + 32);
            v40 = *(a2 + 184);
            v41 = "priority list resolution : conflict found, so choosing match %d";
          }

          else
          {
            *v42 = v23;
LABEL_52:
            v39 = *(*a2 + 32);
            v40 = *(a2 + 184);
            v41 = "priority list resolution : match %d";
          }

          log_OutText(v39, v40, 5, 0, v41, v6, v7, v8, v23);
          return DomainDefBlockInfo;
        }
      }
    }

    else
    {
LABEL_35:
      *a1 = 0;
      log_OutText(*(*a2 + 32), *(a2 + 184), 5, 0, "no priority list resolution : return default match %d", v6, v7, v8, 0);
    }
  }

  return DomainDefBlockInfo;
}

uint64_t tokenizer_ResolveMatches(uint64_t a1, unsigned __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v44 = 0;
  v43 = 0;
  v40 = 0;
  v41 = 0;
  v39 = 0;
  if (!a1)
  {
    goto LABEL_28;
  }

  if (!*(a1 + 304))
  {
    log_OutPublic(*(*a1 + 32), *(a1 + 184), 24049, 0, a5, a6, a7, a8, v38);
LABEL_28:

    return TOKENTNERROR(7);
  }

  if (*(a1 + 548) == 1 && FERuntimeData_GetNumMatches(a1, a2, a3, a4, a5, a6, a7, a8))
  {
    FERuntimeData_DumpMatches(a1, "Dump at start of ResolveMatches", 0, a4, a5, a6, a7, a8);
  }

  v42 = 0;
  if (*(a1 + 312))
  {
    v9 = 0;
    v10 = 0;
    matched = 0;
    while (1)
    {
      FERuntimeData_GetKeyAtPos(a1, v10, &v43, &v41);
      a2 = v43;
      if (v43 && v9 == *v43)
      {
        FERuntimeData_FindLongestMatch(a1, v43, &v44);
        LOWORD(v42) = *v43;
        HIWORD(v42) = v44;
        FERuntimeData_DeleteSubsumedkeys(a1, v43, v44);
        AllMatchesAtKey = FERuntimeData_GetAllMatchesAtKey(a1, &v42);
        if ((AllMatchesAtKey & 0x80000000) != 0)
        {
          return AllMatchesAtKey;
        }

        v16 = *(a1 + 386);
        if (v16 >= 2)
        {
          log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "applying token priority lists to resolve %d token clashes at position %d,%d", v13, v14, v15, v16);
          if (*(a1 + 548) == 1 && *(a1 + 386))
          {
            v22 = 0;
            do
            {
              FEData_blockData_getTokenData(a1, *(*(*(a1 + 376) + 8 * v22) + 88), &v40, v17, v18, v19, v20, v21);
              log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "[%d] = token %s", v23, v24, v25, v22++);
            }

            while (v22 < *(a1 + 386));
          }

          AllMatchesAtKey = resolveTokensUsingPriorityList(&v39, a1);
          if ((AllMatchesAtKey & 0x80000000) != 0)
          {
            return AllMatchesAtKey;
          }

          v29 = *(a1 + 386);
          if (v29)
          {
            v30 = 0;
            v31 = v39;
            do
            {
              if (v31 != v30)
              {
                log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "deleting match %d", v26, v27, v28, v30);
                FERuntimeData_DeleteMatch(a1, &v42, *(*(a1 + 376) + 8 * v30));
                v29 = *(a1 + 386);
              }

              ++v30;
            }

            while (v30 < v29);
          }
        }

        matched = resetMatchList(a1, 0);
        if ((matched & 0x80000000) != 0)
        {
          return matched;
        }

        v10 = v44;
      }

      else
      {
        ++v10;
      }

      v43 = 0;
      v9 = v10;
      if (v10 >= *(a1 + 312))
      {
        goto LABEL_32;
      }
    }
  }

  matched = 0;
LABEL_32:
  if (*(a1 + 548) == 1)
  {
    if (FERuntimeData_GetNumMatches(a1, a2, a3, a4, a5, a6, a7, a8))
    {
      FERuntimeData_DumpMatches(a1, "Dump at end of ResolveMatches", 0, v33, v34, v35, v36, v37);
    }
  }

  return matched;
}

uint64_t addBTokMatchToList(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 634);
  if (*(a1 + 634))
  {
    v5 = *(a1 + 624);
    if (v4 != *(a1 + 632))
    {
LABEL_8:
      v13 = *(a1 + 634);
      *(v5 + 4 * v13) = *a2;
      *(a1 + 634) = v13 + 1;
      return 0;
    }

    v6 = heap_Realloc(*(*a1 + 8), v5, 4 * v4 + 128);
    if (*(a1 + 624))
    {
      v5 = v6;
      *(a1 + 624) = v6;
      v11 = *(a1 + 632) + 32;
LABEL_7:
      *(a1 + 632) = v11;
      goto LABEL_8;
    }
  }

  else
  {
    v12 = heap_Calloc(*(*a1 + 8), 1, 128);
    *(a1 + 624) = v12;
    if (v12)
    {
      v5 = v12;
      v11 = 32;
      goto LABEL_7;
    }
  }

  log_OutPublic(*(*a1 + 32), *(a1 + 184), 24048, 0, v7, v8, v9, v10, v15);

  return TOKENTNERROR(10);
}

uint64_t tokenizer_apply_regex_LongestMatch(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v31 = *MEMORY[0x1E69E9840];
  v10 = *(a2 + 44);
  while (!*(*(a2 + 8) + 48))
  {
    v11 = nuance_pcre_exec2(a1[17], a1[18], *(a2 + 32), *a2, a1[38], *(a2 + 42), v10, *(a2 + 64), v30, 100, CALLOUTCHECK);
    if ((v11 & 0x80000000) != 0)
    {
      v12 = nuance_pcre_ErrorToLhError(v11);
      v14 = v12;
      if (v12 >> 20 != 2213)
      {
        goto LABEL_9;
      }

      if ((v12 & 0x1FFF) != 0x14)
      {
        v28 = *(a2 + 24);
        if ((v12 & 0x1FFF) == 0xA)
        {
          log_OutPublic(*(*a1 + 32), a1[23], 11002, "%s%x%s%s", v13, a6, a7, a8, "lhError");
        }

        else
        {
          log_OutPublic(*(*a1 + 32), a1[23], 11027, "%s%x%s%s", v13, a6, a7, a8, "lhError");
        }

        goto LABEL_22;
      }

      break;
    }
  }

  v14 = 0;
LABEL_9:
  v15 = *(a2 + 8);
  if ((*(v15 + 48) & 0x80000000) != 0)
  {
    v14 = *(v15 + 48);
    goto LABEL_22;
  }

  v16 = *(v15 + 8);
  if (*v16 || v16[1])
  {
    v29 = 1;
    if (*(v15 + 44) == 1)
    {
      log_OutText(*(*a1 + 32), a1[23], 5, 0, "token %s already validated", a6, a7, a8, *(a2 + 24));
      v29 = 1;
    }

    else
    {
      v14 = validateCurrentMatch(a1, *v15, v16, a1[38], *(v15 + 24), *(a2 + 48), &v29, a8);
      if ((v14 & 0x80000000) != 0)
      {
        goto LABEL_22;
      }

      if (v29 != 1)
      {
        *(**(a2 + 8) + 40) = 0;
        log_OutText(*(*a1 + 32), a1[23], 5, 0, "token %s invalidated.", v19, v20, v21, *(a2 + 24));
        goto LABEL_22;
      }
    }

    v22 = *(a2 + 8);
    v24 = *v22;
    v23 = v22[1];
    *(v24 + 88) = *(a2 + 48);
    v14 = FERuntimeData_AddMatch(a1, v23, v24, v17, v18, v19, v20, v21);
    if ((v14 & 0x80000000) == 0)
    {
      v25 = *(a2 + 8);
      if (*(*(*v25 + 11) + 8) == 1)
      {
        v14 = addBTokMatchToList(a1, v25[1]);
      }
    }
  }

LABEL_22:
  v26 = *MEMORY[0x1E69E9840];
  return v14;
}

uint64_t CALLOUTCHECK(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 48);
  if ((v8[6] & 0x80000000) == 0)
  {
    v10 = *v8;
    v11 = v8[1];
    if (*(v8 + 20))
    {
      v12 = *(v8 + 20) + 1;
      *(a1 + 36) = v12;
    }

    else
    {
      v12 = *(a1 + 36);
    }

    v68 = *(a1 + 32);
    v69 = v8[3];
    v66 = *(a1 + 28);
    log_OutText(*(*v8[4] + 32), *(v8[4] + 184), 6, 0, "CALLOUT top=%d: (numsubmatches=%d) (match=%d,%d) token=%s", a6, a7, a8, v12);
    if (!v11[1] && !*v11)
    {
      goto LABEL_16;
    }

    if (*(a1 + 28) < v11[1])
    {
      log_OutText(*(*v8[4] + 32), *(v8[4] + 184), 6, 0, "CALLOUT Match invalidated as start position %d is <= key to position %d", v13, v14, v15, *(a1 + 28));
      return 1;
    }

    v16 = *(*v8 + 88);
    LODWORD(v72) = 0;
    log_OutText(*(*v8[4] + 32), *(v8[4] + 184), 6, 0, "CALLOUT non-overlapping longestMatch found...validating...", v13, v14, v15, v62);
    v18 = validateCurrentMatch(v8[4], *v8, v8[1], v8[2], v8[3], v16, &v72, v17);
    if (v18 < 0)
    {
LABEL_31:
      *(v8 + 12) = v18;
      return 1;
    }

    v24 = v8[4];
    if (v72 == 1)
    {
      v18 = FERuntimeData_AddMatch(v24, v8[1], *v8, v19, v20, v21, v22, v23);
      if (v18 < 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      log_OutText(*(*v24 + 32), v24[23], 6, 0, "CALLOUT token invalidated", v21, v22, v23, v63);
    }

    *v8[1] = 0;
    *(v8 + 11) = 0;
    *(*v8 + 40) = 0;
    if (!*v11 || v11[1] - *v11 < *(a1 + 32) - *(a1 + 28))
    {
LABEL_16:
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      memset(v74, 0, sizeof(v74));
      v72 = 0u;
      v70 = 1;
      v65 = *(a1 + 32);
      v67 = (*(a1 + 36) - 1);
      log_OutText(*(*v8[4] + 32), *(v8[4] + 184), 6, 0, "CALLOUT - Longest Match Found %d,%d (num submatches=%d)...validating...", v13, v14, v15, *(a1 + 28));
      v30 = *(a1 + 28);
      v31 = *(a1 + 32);
      v71[0] = v30;
      v71[1] = v31;
      if (*(v8 + 26) > v30 || *(v8 + 27) < v31)
      {
        v32 = v8[4];
        v33 = *(*v32 + 32);
        v34 = v32[23];
        v35 = "CALLOUT - this match is out of domain...";
LABEL_19:
        log_OutText(v33, v34, 6, 0, v35, v27, v28, v29, v64);
        return 1;
      }

      v36 = v8[4];
      if (*(v36 + 960) == 1 && blockedByBtok(v36, v30, v31, v25, v26, v27, v28, v29) == 1)
      {
        v37 = v8[4];
        v33 = *(*v37 + 32);
        v34 = v37[23];
        v35 = "CALLOUT - blocked by prior btok...";
        goto LABEL_19;
      }

      v38 = *(a1 + 36);
      v39 = v38 - 1;
      v40 = *v8;
      v41 = *(*v8 + 88);
      *(&v75 + 1) = v41;
      DWORD2(v76) = *(v40 + 104);
      BYTE2(v75) = v38 - 1;
      WORD4(v74[0]) = 0;
      if (v38 != 1 && v38 >= 2)
      {
        v42 = 0;
        v43 = 2 * v38;
        v44 = *(a1 + 8);
        v45 = 2;
        do
        {
          v46 = (v44 + 4 * v45);
          v47 = v74 + 2 * v42 + 5;
          *v47 = *v46;
          v47[1] = v46[1];
          ++v42;
          v45 += 2;
        }

        while (v43 > v45);
      }

      v18 = validateCurrentMatch(v8[4], &v72, v71, v8[2], v8[3], v41, &v70, v29);
      if (v18 < 0)
      {
        goto LABEL_31;
      }

      if (v70 == 1)
      {
        *(v10 + 40) = WORD4(v74[0]);
        v51 = *&v74[0];
        v52 = v73;
        *v10 = v72;
        *(v10 + 16) = v52;
        *(v10 + 32) = v51;
LABEL_37:
        log_OutText(*(*v8[4] + 32), *(v8[4] + 184), 6, 0, "CALLOUT - VALIDATING longest match. saving...", v48, v49, v50, v64);
        *v11 = *(a1 + 28);
        v11[1] = *(a1 + 32);
        *(v8 + 11) = 1;
        if (v39)
        {
          *(v10 + 82) = v39;
          if (*(a1 + 36) >= 2)
          {
            v57 = 0;
            v58 = v10 + 42;
            v59 = 2;
            do
            {
              v60 = (*(a1 + 8) + 4 * v59);
              v61 = (v58 + 4 * v57);
              *v61 = *v60;
              v61[1] = v60[1];
              log_OutText(*(*v8[4] + 32), *(v8[4] + 184), 6, 0, "CALLOUT - setting longest match submatch[%d] = %d,%d", v54, v55, v56, v57++);
              v59 += 2;
            }

            while (2 * *(a1 + 36) > v59);
          }
        }

        return 1;
      }

      if (v70 || !WORD4(v74[0]))
      {
        if (v70)
        {
          goto LABEL_37;
        }
      }

      else
      {
        WORD4(v74[0]) = 0;
      }

      log_OutText(*(*v8[4] + 32), *(v8[4] + 184), 6, 0, "CALLOUT - INVALIDATING this longest match...", v48, v49, v50, v64);
      *v8[1] = 0;
      *(v8 + 11) = 0;
      *(*v8 + 40) = 0;
    }
  }

  return 1;
}

uint64_t tokenizer_CheckGreaterThan(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28 = 0;
  if (*(a1 + 548) == 1)
  {
    v10 = *(a1 + 328);
    v26 = *v10;
    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "_GREATERTHAN( %d, %s) = ", a6, a7, a8, *(v10 + 20));
  }

  v27 = 0;
  *a2 = 0;
  if (validateMatchAndGetKey(a1, &v27, a3, a4, a5, a6, a7, a8))
  {
    if (v27 == -1 && HIWORD(v27) == 0xFFFF)
    {
      if (*(a1 + 548) == 1)
      {
        log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "NULL SUBMATCH", v13, v14, v15, v25);
      }

      v19 = *(*(a1 + 328) + 8);
      v18 = "TRUE";
    }

    else
    {
      if (!getValFromSentence(a1, &v27, &v28, v11, v12, v13, v14, v15))
      {
        *a2 = 0;
      }

      getValFromArgString(a1, &v28 + 1);
      v17 = v28 > HIWORD(v28);
      *a2 = v17;
      if (v17)
      {
        v18 = "TRUE";
      }

      else
      {
        v18 = "FALSE";
      }

      v19 = *(*(a1 + 328) + 8);
    }
  }

  else
  {
    v19 = *(*(a1 + 328) + 8);
    v18 = "FALSE";
  }

  v23 = add2StringV2(a1, v19, v18);
  if ((v23 & 0x80000000) == 0 && *(a1 + 548) == 1)
  {
    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "%s", v20, v21, v22, **(*(a1 + 328) + 8));
  }

  return v23;
}

uint64_t tokenizer_ObjOpen(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokenizer : ObjOpen Begin", a6, a7, a8, v48);
  v9 = heap_Calloc(*(*a1 + 8), 1, 8);
  if (v9)
  {
    v14 = v9;
    a1[21] = v9;
    v15 = heap_Calloc(*(*a1 + 8), 1, 80);
    *v14 = v15;
    v20 = *a1;
    if (v15)
    {
      v21 = heap_Calloc(*(v20 + 8), 1, 40);
      **v14 = v21;
      v20 = *a1;
      if (v21)
      {
        v22 = heap_Calloc(*(v20 + 8), 1, 56);
        *(*v14 + 8) = v22;
        v20 = *a1;
        if (v22)
        {
          v23 = heap_Calloc(*(v20 + 8), 1, 4);
          *(*(*v14 + 8) + 8) = v23;
          if (v23)
          {
            *v23 = 0;
            v24 = heap_Calloc(*(*a1 + 8), 1, 112);
            v25 = *v14;
            v26 = *(*v14 + 8);
            *v26 = v24;
            if (v24)
            {
              *(v24 + 88) = 0;
              *(v26 + 40) = 0;
              *(v26 + 48) = 0;
              *(v26 + 16) = 0;
              *(v26 + 24) = 0;
              v27 = *v25;
              *v27 |= 4uLL;
              v27[3] = v26;
              v51 = 0;
              log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokenizer : InitCheckFunctions Begin", v17, v18, v19, v49);
              Map = FEFunctionMap_GetMap(a1, &v51);
              if ((Map & 0x80000000) != 0)
              {
                v39 = Map;
              }

              else
              {
                v29 = &off_1F42D38A0;
                v30 = 8;
                do
                {
                  v31 = ssftmap_Insert(v51, *(v29 - 1), *v29);
                  if ((v31 & 0x80000000) != 0)
                  {
                    v39 = v31;
                    log_OutPublic(*(*a1 + 32), a1[23], 21011, 0, v32, v33, v34, v35, v50);
                    goto LABEL_22;
                  }

                  v29 += 2;
                  --v30;
                }

                while (v30);
                v39 = FEFunctionMap_AddFunctionMap(a1, 0, v51);
                if ((v39 & 0x80000000) == 0)
                {
                  goto LABEL_23;
                }
              }

LABEL_22:
              ssftmap_ObjClose(v51);
LABEL_23:
              log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokenizer : InitCheckFunctions End (%x)", v36, v37, v38, v39);
              if ((v39 & 0x80000000) == 0)
              {
                goto LABEL_19;
              }

              goto LABEL_18;
            }
          }

          v20 = *a1;
        }
      }
    }

    log_OutPublic(*(v20 + 32), a1[23], 24048, 0, v16, v17, v18, v19, v49);
    v39 = TOKENTNERROR(10);
    if ((v39 & 0x80000000) == 0)
    {
LABEL_19:
      log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokenizer : ObjOpen End (%x)", v45, v46, v47, v39);
      return v39;
    }

LABEL_18:
    tokenizer_loc_ObjClose_0(a1, v41, v42, v43, v44, v45, v46, v47);
    goto LABEL_19;
  }

  log_OutPublic(*(*a1 + 32), a1[23], 24048, 0, v10, v11, v12, v13, v49);

  return TOKENTNERROR(10);
}

uint64_t tokenizer_loc_ObjClose_0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1[21];
  log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokenizer : loc ObjClose Begin", a6, a7, a8, v16);
  v10 = *v9;
  if (*v9)
  {
    v11 = v10[1];
    if (v11)
    {
      if (v11[1])
      {
        heap_Free(*(*a1 + 8), v11[1]);
        v11 = *(*v9 + 8);
        v11[1] = 0;
      }

      if (*v11)
      {
        heap_Free(*(*a1 + 8), *v11);
        v11 = *(*v9 + 8);
        *v11 = 0;
      }

      heap_Free(*(*a1 + 8), v11);
      v10 = *v9;
      *(*v9 + 8) = 0;
    }

    if (*v10)
    {
      heap_Free(*(*a1 + 8), *v10);
      v10 = *v9;
      **v9 = 0;
    }

    heap_Free(*(*a1 + 8), v10);
    *v9 = 0;
  }

  heap_Free(*(*a1 + 8), v9);
  a1[21] = 0;
  return log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokenizer : loc ObjClose End (%x)", v12, v13, v14, 0);
}

uint64_t tokenizer_ObjClose(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1[21])
  {
    log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokenizer : ObjClose Begin", a6, a7, a8, v21);
    tokenizer_loc_ObjClose_0(a1, v10, v11, v12, v13, v14, v15, v16);
    log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokenizer : ObjOpen End (%x)", v17, v18, v19, 0);
    return 0;
  }

  else
  {

    return TOKENTNERROR(8);
  }
}

uint64_t textnormalizer_DoDepes(uint64_t a1, uint64_t a2, unsigned int a3, int a4, _DWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a6;
  v9 = a5;
  v116 = 0;
  v115 = 0;
  v114 = 0;
  *&__n[1] = 0;
  __n[0] = 0;
  v112 = 0;
  *a5 = 0;
  if (*(a1 + 548) == 1)
  {
    v97 = **(a1 + 320);
    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "_%s(%s)", a6, a7, a8, a2);
  }

  v14 = *(a1 + 320);
  v15 = *v14;
  if (!*v14 || !strcmp(*v14, "NULL") || !*v15)
  {
    v34 = add2StringV2(a1, *(v14 + 8), "");
    if ((v34 & 0x80000000) != 0)
    {
      return v34;
    }

    goto LABEL_94;
  }

  v110 = a4;
  if (*(a1 + 548) == 1)
  {
    v98 = *(v14 + 32);
    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "DEPES IN (%s)(running len=%d)", v16, v17, v18, v15);
    v15 = **(a1 + 320);
  }

  v19 = strlen(v15);
  v20 = Utf8_LengthInUtf8chars(v15, v19);
  v21 = (*(*(a1 + 112) + 120))(*(a1 + 120), *(a1 + 128), 0, **(a1 + 320), v19);
  if ((v21 & 0x80000000) != 0)
  {
    v34 = v21;
    v35 = *(*a1 + 32);
    v36 = *(a1 + 184);
    v37 = 24010;
  }

  else
  {
    v26 = growStrRes(a1, a1 + 488, v19);
    if ((v26 & 0x80000000) != 0)
    {
      v34 = v26;
      goto LABEL_94;
    }

    v109 = v8;
    v30 = **(a1 + 320);
    v31 = *(a1 + 488);
    if (v19)
    {
      bzero(*(a1 + 488), v19);
    }

    v106 = v20;
    v108 = v9;
    v105 = a3;
    if (utf8_strchr(g_szSpace_2, v30))
    {
      v32 = 0;
      i = 0;
    }

    else
    {
      i = 1;
      *v31 = 1;
      v32 = utf8_determineUTF8CharLength(*v30);
      v38 = v32;
      if (v32 < v19)
      {
        v39 = &v30[v32];
        for (i = 1; !utf8_strchr(g_szSpace_2, v39); v39 = &v30[v38])
        {
          v40 = utf8_determineUTF8CharLength(*v39);
          v32 = v40 + v38;
          ++i;
          v38 = (v40 + v38);
          if (v38 >= v19)
          {
            break;
          }
        }
      }
    }

    if (v32 < v19)
    {
      while (1)
      {
        v41 = &v30[v32];
        if (!utf8_strchr(g_szSpace_2, v41))
        {
          break;
        }

        v32 += utf8_determineUTF8CharLength(*v41);
        ++i;
        v42 = v32;
        if (v32 >= v19)
        {
LABEL_29:
          v43 = v42;
          while (v43 < v19 && !utf8_strchr(g_szSpace_2, &v30[v42]))
          {
            v42 += utf8_determineUTF8CharLength(v30[v42]);
            v43 = v42;
            ++i;
          }

          v32 = v42;
          if (v42 >= v19)
          {
            goto LABEL_34;
          }
        }
      }

      v31[i] = 1;
      v42 = v32 + utf8_determineUTF8CharLength(*v41);
      ++i;
      goto LABEL_29;
    }

LABEL_34:
    v44 = (*(*(a1 + 112) + 88))(*(a1 + 120), *(a1 + 128), *(a1 + 488), v106);
    if ((v44 & 0x80000000) != 0)
    {
      v34 = v44;
      log_OutPublic(*(*a1 + 32), *(a1 + 184), 24011, 0, v45, v46, v47, v48, v96);
      v9 = v108;
      v8 = v109;
      goto LABEL_94;
    }

    v49 = (*(*(a1 + 112) + 80))(*(a1 + 120), *(a1 + 128), a2 + 1);
    v9 = v108;
    v8 = v109;
    if ((v49 & 0x80000000) != 0)
    {
      v34 = v49;
      log_OutPublic(*(*a1 + 32), *(a1 + 184), 24012, "%s%s", v50, v51, v52, v53, "functionName");
      goto LABEL_94;
    }

    v54 = (*(*(a1 + 112) + 96))(*(a1 + 120), *(a1 + 128), &v112, &v116);
    if ((v54 & 0x80000000) != 0)
    {
      v34 = v54;
      v35 = *(*a1 + 32);
      v36 = *(a1 + 184);
      v37 = 24013;
    }

    else
    {
      v55 = (*(*(a1 + 112) + 128))(*(a1 + 120), *(a1 + 128), 0, &v115, &v114);
      if ((v55 & 0x80000000) != 0)
      {
        v34 = v55;
        v35 = *(*a1 + 32);
        v36 = *(a1 + 184);
        v37 = 24014;
      }

      else
      {
        v115[v114] = 0;
        v59 = Utf8_LengthInUtf8chars(v115, v114);
        if (*(a1 + 548) == 1)
        {
          log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "DEPES Layer 0 OUT strsize(%d bytes, %d chars) -> (%s)", v56, v57, v58, v114);
        }

        v60 = (*(*(a1 + 112) + 128))(*(a1 + 120), *(a1 + 128), 1, &__n[1], __n);
        if ((v60 & 0x80000000) == 0)
        {
          *(*&__n[1] + __n[0]) = 0;
          if (*(a1 + 548) == 1)
          {
            log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "DEPES layer 1 OUT strsize(%d bytes) -> (%s)", v23, v24, v25, __n[0]);
          }

          v61 = __n[0];
          v62 = (__n[0] - v59);
          if (__n[0] < v59)
          {
            v62 = 0;
          }

          v63 = v114;
          if (__n[0] <= v114)
          {
            v61 = v62;
          }

          else
          {
            v63 = v62;
          }

          v64 = heap_Alloc(*(*a1 + 8), (v63 + v61 + 1));
          if (!v64)
          {
            return 2383421450;
          }

          v65 = v64;
          v66 = strncpy(v64, *&__n[1], __n[0]);
          v66[__n[0]] = 0;
          v67 = v114;
          if (v114 != __n[0])
          {
            if (v114)
            {
              v68 = 0;
              v69 = 0;
              v70 = v65 + 1;
              do
              {
                v71 = utf8_determineUTF8CharLength(v115[v69]);
                if (v71 >= 2u)
                {
                  __n[0] = strlen(v65);
                  memmove(&v65[v71 + v68], &v70[v68], __n[0] - v68);
                  memset(&v70[v68], 126, v71 - 1);
                }

                v69 += v71;
                v68 = v69;
              }

              while (v69 < v114);
            }

            __n[0] = strlen(v65);
            log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "(adjusted) DEPES layer 1 OUT strsize(%d bytes) -> (%s)", v72, v73, v74, __n[0]);
            v67 = __n[0];
          }

          v75 = v105;
          if (v67)
          {
            v76 = 0;
            v77 = 0;
            while (1)
            {
              v78 = &v65[v77];
              if (*v78 == 126)
              {
                *v78 = 32;
              }

              if (utf8_strchr(g_szSpace_2, &v65[v77]))
              {
                goto LABEL_61;
              }

              v79 = *v78;
              if ((v79 | 2) != 0x4E)
              {
                break;
              }

LABEL_63:
              if ((v79 | 2) == 0x4E)
              {
                if (v77)
                {
                  v80 = 0;
                  do
                  {
                    v81 = v80;
                    v80 += utf8_determineUTF8CharLength(v115[v80]);
                  }

                  while (v80 < v77);
                  if (utf8_strchr(g_szSpace_2, &v115[v81]))
                  {
                    v75 = v105;
                  }

                  else
                  {
                    while (1)
                    {
                      v82 = utf8_strchr(g_szSpace_2, &v115[v80]);
                      if (v82)
                      {
                        break;
                      }

                      if (v80 != 1)
                      {
                        v111 = (v80 - 1);
                        utf8_GetPreviousValidUtf8Offset(v115, &v111);
                        v80 = v111;
                        if (v111)
                        {
                          continue;
                        }
                      }

                      v80 = 0;
                      break;
                    }

                    v107 = v80;
                    v83 = utf8_determineUTF8CharLength(v115[v80]);
                    if (utf8_strchr(g_szSpace_2, &v115[v80]))
                    {
                      v104 = v83 + v80;
                      if (v104 < v114 && !utf8_strchr(g_szSpace_2, &v115[v80 + v83]))
                      {
                        if (utf8_strchr(g_szSpace_2, &v65[v80 + v83]))
                        {
                          v65[v104] = *v78;
                          v77 = v80;
                        }

                        else
                        {
                          v102 = *v78;
                          v99 = v65[v104];
                          log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "DEPES language layer problem, trying to overwrite [%d] %c when aligning with [%d] %c; ignore", v88, v89, v90, v104);
                        }

                        v75 = v105;
LABEL_91:
                        *v78 = 32;
                        goto LABEL_85;
                      }
                    }

                    if (!v82)
                    {
                      v75 = v105;
                      if (v83 >= v114 || utf8_strchr(g_szSpace_2, &v115[v107 + v83]))
                      {
                        goto LABEL_85;
                      }

                      if (utf8_strchr(g_szSpace_2, &v65[v107]))
                      {
                        v65[v107] = *v78;
                      }

                      else
                      {
                        v103 = *v78;
                        v100 = v65[v107];
                        log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "DEPES language layer problem, trying to overwrite [%d] %c when aligning with [%d] %c; ignore", v85, v86, v87, 0);
                      }

                      goto LABEL_91;
                    }

                    v75 = v105;
                  }
                }

                else
                {
                  v77 = 0;
                }
              }

LABEL_85:
              v77 += utf8_determineUTF8CharLength(v65[v77]);
              v76 = v77;
              if (v77 >= __n[0])
              {
                goto LABEL_101;
              }
            }

            v84 = utf8_determineUTF8CharLength(v79);
            if (v84)
            {
              memset(&v65[v76], 32, v84);
            }

LABEL_61:
            v79 = *v78;
            goto LABEL_63;
          }

LABEL_101:
          v92 = add2StringV2(a1, *(*(a1 + 320) + 8), v115);
          if ((v92 & 0x80000000) != 0)
          {
            v34 = v92;
          }

          else
          {
            v8 = v109;
            v34 = add2StringV2(a1, v109, v65);
            if ((v34 & 0x80000000) == 0)
            {
              v9 = v108;
              if (v110 == 1)
              {
                LOWORD(v111) = v75;
                textnormalizer_markercountlayer_GetWordBegPos(v112, v116, v115, *(a1 + 520), &v111, *(a1 + 544));
                if (v111 > v75)
                {
                  v93 = *(a1 + 320);
                  v94 = (*(a1 + 520) + 2 * v75);
                  v95 = v111 - v75;
                  do
                  {
                    *v94++ += *(v93 + 32);
                    --v95;
                  }

                  while (v95);
                }
              }

              heap_Free(*(*a1 + 8), v65);
              goto LABEL_94;
            }
          }

          heap_Free(*(*a1 + 8), v65);
          return v34;
        }

        v34 = v60;
        v35 = *(*a1 + 32);
        v36 = *(a1 + 184);
        v37 = 24058;
      }
    }
  }

  log_OutPublic(v35, v36, v37, 0, v22, v23, v24, v25, v96);
LABEL_94:
  if (*(a1 + 548) == 1)
  {
    v101 = *v8;
    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "TOKEN _%s_, MAP _%s_", v27, v28, v29, **(*(a1 + 320) + 8));
  }

  *v9 = 1;
  return v34;
}

uint64_t textnormalizer_markercountlayer_GetWordBegPos(_BYTE *a1, int a2, const char *a3, uint64_t a4, _WORD *a5, unsigned int a6)
{
  LODWORD(v10) = a2;
  result = TOK_COUNT_SP_WORDS(a3);
  if (v10)
  {
    v13 = result;
    v14 = 0;
    v15 = 0;
    v10 = v10;
    do
    {
      if (*a5 >= a6 || v14 >= v13)
      {
        break;
      }

      if (*a1)
      {
        *(a4 + 2 * (*a5)++) = v15;
        ++v14;
      }

      result = utf8_determineUTF8CharLength(a3[v15]);
      v15 += result;
      ++a1;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t blockedByBtok(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 634);
  if (!*(a1 + 634))
  {
    return 0;
  }

  for (i = (*(a1 + 624) + 2); ; i += 2)
  {
    v10 = *(i - 1);
    if (v10 <= a2 && *i >= a3)
    {
      break;
    }

    if (v10 <= a3 && *i >= a3 || v10 <= a2 && *i >= a2)
    {
      break;
    }

    if (!--v8)
    {
      return 0;
    }
  }

  v12 = *(i - 1);
  log_OutText(*(*a1 + 32), *(a1 + 184), 4, 0, "match %d,%d blocked by btok %d,%d", a6, a7, a8, a2);
  return 1;
}

uint64_t clearBTokMatchList(uint64_t a1)
{
  if (*(a1 + 634))
  {
    heap_Free(*(*a1 + 8), *(a1 + 624));
    *(a1 + 632) = 0;
  }

  return 0;
}

uint64_t textnormalizer_DoExpansionActions(uint64_t *a1, unsigned __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v153 = 0;
  v151 = 0;
  v152 = 0;
  v150 = 0;
  v149 = 0;
  log_OutText(*(*a1 + 32), a1[23], 4, 0, "textnormalizer : DoExpansions Begin", a6, a7, a8, v135);
  if (!a1[38])
  {

    return TOKENTNERROR(7);
  }

  if (*(a1 + 137) == 1)
  {
    dumpTokenRecordsInLingDB(a1, "At Start of DoExpansions", 0, v9, v10, v11, v12, v13);
  }

  if (!*(a1 + 156))
  {
    v15 = 0;
    goto LABEL_198;
  }

  v14 = 0;
  v15 = 0;
  LOWORD(v16) = 0;
  v17 = 0;
  while (1)
  {
    FERuntimeData_GetKeyAtPos(a1, v17, &v152, &v151);
    if (!v152 || v14 != *v152)
    {
      ++v17;
      goto LABEL_183;
    }

    FEData_blockData_getTokenAndExpansionData(a1, *(v151 + 88), &v153, &v149, &v150, v11, v12, v13);
    v18 = *v152;
    v19 = v152[1];
    if (v18 >= v19)
    {
      v20 = *v152;
    }

    else
    {
      while (*(a1[38] + v18) == 32)
      {
        v20 = ++v18;
        if (v18 >= v19)
        {
          goto LABEL_15;
        }
      }

      v20 = v18;
    }

LABEL_15:
    if (v20 >= v19)
    {
      v22 = 1;
    }

    else
    {
      v21 = a1[38];
      v22 = 1;
      do
      {
        if (*(v21 + v18) == 32)
        {
          ++v22;
          do
          {
            v23 = ++v18;
          }

          while (v18 < v19 && *(v21 + v18) == 32);
        }

        else
        {
          v23 = ++v18;
        }
      }

      while (v23 < v19);
    }

    resetAlignmentData(a1);
    v25 = v152;
    v26 = *v152;
    v27 = v152[1];
    if (v26 >= v27)
    {
      v28 = *v152;
    }

    else
    {
      while (*(a1[38] + v26) == 32)
      {
        v28 = ++v26;
        if (v26 >= v27)
        {
          goto LABEL_32;
        }
      }

      v28 = v26;
    }

LABEL_32:
    v29 = a1[67];
    *(v29 + 2 * *(a1 + 272)) = v26;
    v30 = *(a1 + 272) + 1;
    *(a1 + 272) = v30;
    v31 = v25[1];
    if (v28 < v31)
    {
      v32 = v25[1];
      v33 = a1[38];
      do
      {
        if (*(v33 + v26) == 32)
        {
          while (v31 > v26 && *(v33 + v26) == 32)
          {
            ++v26;
          }

          *(v29 + 2 * v30) = v26;
          v30 = *(a1 + 272) + 1;
          *(a1 + 272) = v30;
          v32 = v25[1];
        }

        ++v26;
        v31 = v32;
      }

      while (v32 > v26);
    }

    if (!v150)
    {
      v45 = *(*a1 + 32);
      v46 = a1[23];
      v134 = 24015;
      goto LABEL_196;
    }

    if (*(*(v151 + 88) + 8) == 1)
    {
      v34 = addBTokMatchToList(a1, v25);
      if ((v34 & 0x80000000) != 0)
      {
        goto LABEL_197;
      }
    }

    if (*(a1 + 137) == 1)
    {
      strncpy(a1[69], (a1[38] + *v152), (v152[1] - *v152));
      *(a1[69] - *v152 + v152[1]) = 0;
      v38 = *(*a1 + 32);
      v39 = a1[23];
      if (*(*(v151 + 88) + 8) == 1)
      {
        v145 = a1[69];
        v143 = v152[1];
        v138 = v150[5];
        v142 = *v152;
        log_OutText(v38, v39, 5, 0, "DoExpansions : applying method %s with arg %s for btok %3d,%3d %-15s %s (%d input words)", v35, v36, v37, v150[6]);
      }

      else
      {
        v144 = a1[69];
        v139 = v152[1];
        log_OutText(v38, v39, 5, 0, "DoExpansions : applying expansion for token %3d,%3d %-15s %s (%d input words)", v35, v36, v37, *v152);
      }
    }

    if (*(a1 + 272))
    {
      v40 = 0;
      v41 = a1[65];
      do
      {
        *(v41 + 2 * v40++) = 9999;
      }

      while (v40 < *(a1 + 272));
    }

    *(a1 + 201) = 0;
    *a1[49] = 0;
    *(a1 + 209) = 0;
    *a1[51] = 0;
    *(a1 + 217) = 0;
    *a1[53] = 0;
    *(a1 + 225) = 0;
    *a1[55] = 0;
    *(a1 + 233) = 0;
    *a1[57] = 0;
    *(a1 + 241) = 0;
    *a1[59] = 0;
    v43 = v151;
    v42 = v152;
    v44 = a1[40];
    *(v44 + 16) = v152;
    *(v44 + 24) = v43;
    *(v44 + 32) = 0;
    if (*(*(v43 + 88) + 8) == 1)
    {
      v34 = tn_nn_predictBTok(a1, v150, (a1 + 49), (a1 + 51), a1 + 53, a1 + 55, (a1 + 57), a1 + 59, *v42, HIWORD(*v42), a1[38]);
      if ((v34 & 0x80000000) != 0)
      {
        goto LABEL_197;
      }

      goto LABEL_164;
    }

    v34 = applyExpansion(a1, v150, (a1 + 49), (a1 + 51), (a1 + 55), a1[38], v12, v13);
    if ((v34 & 0x80000000) != 0)
    {
      goto LABEL_197;
    }

    v45 = *(*a1 + 32);
    v46 = a1[23];
    if (!*(a1 + 201))
    {
      break;
    }

    log_OutText(v45, v46, 5, 0, "DoExpansions : expansion -> %s", v11, v12, v13, a1[49]);
    log_OutText(*(*a1 + 32), a1[23], 5, 0, "               langmap   -> %s", v47, v48, v49, a1[51]);
    v50 = strlen(a1[49]);
    v51 = TOK_COUNT_SP_WORDS(a1[49]);
    v56 = v51;
    if (v51 == v22)
    {
      v57 = v22;
      v58 = v22 > 1u;
      if (v57 >= 2)
      {
        if (*(a1 + 272))
        {
          v146 = v51;
          v59 = 0;
          do
          {
            if (*(a1[65] + 2 * v59) == 9999)
            {
              v60 = 0;
              if (v50)
              {
                do
                {
                  if (!utf8_strchr(g_szSpace_3, (a1[49] + v60)))
                  {
                    break;
                  }

                  v60 += utf8_determineUTF8CharLength(*(a1[49] + v60));
                }

                while (v60 < v50);
              }

              v61 = 0;
              if (v59 && v50 > v60)
              {
                v62 = 0;
                do
                {
                  if (utf8_strchr(g_szSpace_3, (a1[49] + v60)))
                  {
                    if (v59 == ++v62)
                    {
                      break;
                    }

                    for (i = *(a1[49] + v60); ; i = *(a1[49] + v60))
                    {
                      v60 += utf8_determineUTF8CharLength(i);
                      if (v152[1] <= v60 || !utf8_strchr(g_szSpace_3, (a1[49] + v60)))
                      {
                        break;
                      }
                    }
                  }

                  else
                  {
                    v60 += utf8_determineUTF8CharLength(*(a1[49] + v60));
                  }
                }

                while (v50 > v60);
                v61 = v62;
              }

              v64 = a1[65];
              if (v61 != v59)
              {
                *(v64 + 2 * v59) = 9999;
                log_OutPublic(*(*a1 + 32), a1[23], 24017, "%s%d", v52, v53, v54, v55, "position");
                v58 = 1;
                v65 = 1;
                v56 = v146;
                goto LABEL_82;
              }

              *(v64 + 2 * v59) = v60;
              log_OutText(*(*a1 + 32), a1[23], 5, 0, "guessing alignment position for word %d to be %d", v53, v54, v55, v59);
            }

            ++v59;
          }

          while (v59 < *(a1 + 272));
          v65 = 0;
          v58 = 1;
          v56 = v146;
          if (*(a1 + 272))
          {
            goto LABEL_83;
          }
        }

        else
        {
          v65 = 0;
          v58 = 1;
        }

        goto LABEL_98;
      }

      v65 = 0;
    }

    else
    {
      log_OutText(*(*a1 + 32), a1[23], 5, 0, "mismatch in number of words; in:%d out: %d", v53, v54, v55, v22);
      v58 = v22 > 1u;
      v65 = 1;
    }

LABEL_82:
    if (*(a1 + 272))
    {
LABEL_83:
      v66 = 0;
      v67 = a1[65];
      do
      {
        v68 = *(v67 + 2 * v66);
        v69 = v68 != 9999 && v50 >= v68;
        if (!v69 || v66 && ((v70 = *(v67 + 2 * (v66 - 1)), v70 != 9999) ? (v71 = v68 >= v70) : (v71 = 1), !v71))
        {
          *(v67 + 2 * v66) = 9999;
          v65 = 1;
        }

        ++v66;
        v72 = *(a1 + 272);
      }

      while (v66 < v72);
      v73 = v72 == 0;
      goto LABEL_99;
    }

LABEL_98:
    v73 = 1;
LABEL_99:
    if (v65 == 1)
    {
      if (v56 < 2)
      {
        if (!v73)
        {
          v81 = 0;
          v82 = a1[65];
          do
          {
            *(v82 + 2 * v81++) = 0;
          }

          while (v81 < *(a1 + 272));
        }
      }

      else if (!v73)
      {
        v74 = a1[65];
        *v74 = 0;
        v75 = *(a1 + 272);
        if (v75 >= 2)
        {
          v76 = v74 + 1;
          for (j = 1; j < v75; ++j)
          {
            if (*v76 == 9999)
            {
              *v76 = *(v76 - 1);
              v75 = *(a1 + 272);
            }

            ++v76;
          }

          if (v75 >= 2)
          {
            v78 = a1[65];
            v79 = (v78 + 2);
            v80 = v75 - 1;
            while (*(v79 - 1) <= *v79)
            {
              ++v79;
              if (!--v80)
              {
                goto LABEL_115;
              }
            }

            v132 = 0;
            do
            {
              *(v78 + 2 * v132++) = 0;
            }

            while (v132 < *(a1 + 272));
          }
        }
      }
    }

LABEL_115:
    v83 = a1[49];
    v84 = strlen(v83);
    if (v84)
    {
      CurrentUtf8Offset = utf8_GetCurrentUtf8Offset(v83, v84 - 1);
      v83 = a1[49];
    }

    else
    {
      CurrentUtf8Offset = v84;
    }

    if (utf8_strchr(g_szSpace_3, v83))
    {
      v89 = 0;
      v16 = 0;
      do
      {
        v16 += utf8_determineUTF8CharLength(*(a1[49] + v89));
        v89 = v16;
      }

      while (utf8_strchr(g_szSpace_3, (a1[49] + v16)));
    }

    else
    {
      LOWORD(v16) = 0;
    }

    for (; v16 < CurrentUtf8Offset; CurrentUtf8Offset = utf8_GetCurrentUtf8Offset(a1[49], CurrentUtf8Offset - 1))
    {
      if (!utf8_strchr(g_szSpace_3, (a1[49] + CurrentUtf8Offset)))
      {
        break;
      }

      *(a1[49] + CurrentUtf8Offset) = 0;
      if (*(a1 + 209) > CurrentUtf8Offset)
      {
        *(a1[51] + CurrentUtf8Offset) = 0;
      }
    }

    v147 = v58;
    if (v58 && *(a1 + 272))
    {
      v90 = 0;
      do
      {
        v91 = a1[65];
        for (k = *(v91 + 2 * v90); k < CurrentUtf8Offset; k = *(v91 + 2 * v90))
        {
          if (!utf8_strchr(g_szSpace_3, (a1[49] + k)))
          {
            break;
          }

          *(v91 + 2 * v90) += utf8_determineUTF8CharLength(*(a1[49] + *(v91 + 2 * v90)));
          v140 = *(a1[65] + 2 * v90);
          log_OutText(*(*a1 + 32), a1[23], 5, 0, "alignment position for word %d adjusted to %d", v93, v94, v95, v90);
        }

        ++v90;
      }

      while (v90 < *(a1 + 272));
    }

    if (v16)
    {
      log_OutText(*(*a1 + 32), a1[23], 5, 0, "DoExpansions : adjusted expansion -> %s", v86, v87, v88, a1[49]);
      if (v147)
      {
        if (*(a1 + 272))
        {
          v96 = 0;
          do
          {
            v97 = a1[65];
            if (*(v97 + 2 * v96))
            {
              *(v97 + 2 * v96) -= v16;
              log_OutText(*(*a1 + 32), a1[23], 5, 0, "alignment position for word %d adjusted (by +%d) to %d", v86, v87, v88, v96);
            }

            ++v96;
          }

          while (v96 < *(a1 + 272));
        }
      }
    }

    if (*(a1 + 201) != *(a1 + 209))
    {
      log_OutText(*(*a1 + 32), a1[23], 5, 0, "mismatch in langmap and expansion string (length is different: %d vs %d)", v86, v87, v88, *(a1 + 209));
      *(a1 + 209) = 0;
      *a1[51] = 0;
    }

    v101 = strlen(a1[51]);
    if (!v101)
    {
      goto LABEL_157;
    }

    v102 = 0;
    v103 = 0;
    v104 = 32;
    do
    {
      v105 = v103;
      v106 = (a1[51] + v103);
      v107 = *v106;
      if (v107 == v104 && (v108 = utf8_strchr(g_szSpace_3, v106), v107 = *(a1[51] + v105), !v108))
      {
        v109 = utf8_determineUTF8CharLength(v107);
        v110 = v109;
        if (v109)
        {
          v111 = v102;
          do
          {
            *(a1[51] + v111++) = 32;
            --v110;
          }

          while (v110);
        }
      }

      else if ((v107 | 2) == 0x4E)
      {
        v104 = v107;
      }

      v103 = v105 + utf8_determineUTF8CharLength(*(a1[51] + v105));
      v102 = v103;
    }

    while (v101 > v103);
    if (v104 == 32)
    {
LABEL_157:
      *(a1 + 209) = 0;
      *a1[51] = 0;
    }

    if (*(a1 + 209))
    {
      v112 = a1[51];
    }

    else
    {
      v112 = "(empty)";
    }

    log_OutText(*(*a1 + 32), a1[23], 4, 0, "sanitized langMap=%s", v98, v99, v100, v112);
    if (*(a1 + 209))
    {
      v113 = strlen(a1[51]);
      if (v113 != strlen(a1[49]))
      {
        log_OutPublic(*(*a1 + 32), a1[23], 24061, "%s%s%s%s", v114, v115, v116, v117, "langmap:");
        *(a1 + 209) = 0;
        *a1[51] = 0;
      }
    }

LABEL_164:
    v118 = a1[49];
    v119 = *(a1 + 225);
    if (*(*(v151 + 88) + 8) == 1)
    {
      if (*(a1 + 225))
      {
        v120 = a1[55];
      }

      else
      {
        v120 = 0;
      }

      if (*(a1 + 233))
      {
        v122 = a1[57];
      }

      else
      {
        v122 = 0;
      }

      v15 = saveExpansionInLDO(a1, a1[53], v118, v120, v122, a1[59], v16, v152);
      *(a1 + 217) = 0;
      *a1[53] = 0;
      *(a1 + 225) = 0;
      *a1[55] = 0;
      *(a1 + 233) = 0;
      *a1[57] = 0;
      *(a1 + 241) = 0;
      *a1[59] = 0;
    }

    else
    {
      if (*(a1 + 225))
      {
        v121 = a1[55];
      }

      else
      {
        v121 = 0;
      }

      if (*(a1 + 233))
      {
        v123 = a1[57];
      }

      else
      {
        v123 = 0;
      }

      v15 = saveExpansionInLDO(a1, v153, v118, v121, v123, 0, v16, v152);
    }

    v128 = *(*a1 + 32);
    v129 = a1[23];
    if ((v15 & 0x80000000) != 0)
    {
      log_OutPublic(v128, v129, 24019, 0, v124, v125, v126, v127, v137);
      goto LABEL_198;
    }

    v141 = v152[1];
    log_OutText(v128, v129, 5, 0, "DoExpansions : created new LDO Label from %d to %d", v125, v126, v127, *v152);
    if (*(a1 + 137) == 1)
    {
      dumpTokenRecordsInLingDB(a1, "After saving expanded token as Label in LDO", 0, v130, v131, v11, v12, v13);
    }

    v17 = v152[1];
    *a2 = v17;
LABEL_183:
    v152 = 0;
    v14 = v17;
    if (v17 >= *(a1 + 156))
    {
      goto LABEL_198;
    }
  }

  v134 = 24016;
LABEL_196:
  log_OutPublic(v45, v46, v134, 0, v24, v11, v12, v13, v136);
  v34 = TOKENTNERROR(266);
LABEL_197:
  v15 = v34;
LABEL_198:
  log_OutText(*(*a1 + 32), a1[23], 4, 0, "textnormalizer : DoExpansions End (%x)", v11, v12, v13, v15);
  return v15;
}

uint64_t applyExpansion(uint64_t *a1, int **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v80 = 0;
  v81 = 0;
  v79 = 0;
  v77 = 0;
  v78 = 0;
  v75 = 0;
  v76 = 0;
  v73 = 0;
  v74 = 0;
  __b = 0;
  __len = 0;
  v69 = 0;
  v70 = 0;
  log_OutText(*(*a1 + 32), a1[23], 4, 0, "textnormalizer : applyExpansion Begin", a6, a7, a8, v65);
  if (*(a1 + 153) == 1)
  {
    v14 = a2[5];
    if (v14)
    {
      v15 = a1[88];
      v16 = strstr(v14, v15);
      if (a6)
      {
        if (v16)
        {
          if ((v16[strlen(v15)] | 0x20) == 0x20)
          {
            v17 = a1[22];
            if (*(v17 + 8))
            {
              v18 = v17[1];
              if (v18)
              {
                v67 = a3;
                do
                {
                  v19 = a4;
                  v20 = *(v18 + 106);
                  if (v20)
                  {
                    v21 = 0;
                    do
                    {
                      v22 = v18 + 2 * v21 + 33;
                      v23 = *v22;
                      v24 = v22[1];
                      if (v23 == -1 && v24 == 0xFFFF)
                      {
                        ++v21;
                      }

                      else
                      {
                        strncpy(a1[69], (a6 + v23), (v24 - v23));
                        *(a1[69] - *v22 + v22[1]) = 0;
                        v26 = add2StringV2(a1, a5, a1[69]);
                        if ((v26 & 0x80000000) != 0)
                        {
                          goto LABEL_92;
                        }

                        if (++v21 == *(v18 + 106))
                        {
                          v20 = *(v18 + 106);
                        }

                        else
                        {
                          v26 = add2StringV2(a1, a5, a1[87]);
                          if ((v26 & 0x80000000) != 0)
                          {
                            goto LABEL_92;
                          }

                          v20 = *(v18 + 106);
                        }
                      }
                    }

                    while (v21 < v20);
                  }

                  v18 = *v18;
                  a4 = v19;
                  a3 = v67;
                }

                while (v18);
              }
            }
          }
        }
      }
    }
  }

  v77 = 0;
  v78 = 0;
  v75 = 0;
  v76 = 0;
  v73 = 0;
  v74 = 0;
  __b = 0;
  __len = 0;
  v69 = 0;
  v70 = 0;
  inited = initStrRes(a1, &v79);
  if ((inited & 0x80000000) == 0)
  {
    v26 = initStrRes(a1, &v77);
    if ((v26 & 0x80000000) != 0)
    {
      goto LABEL_92;
    }

    v26 = initStrRes(a1, &v69);
    if ((v26 & 0x80000000) != 0)
    {
      goto LABEL_92;
    }

    v26 = initStrRes(a1, &v73);
    if ((v26 & 0x80000000) != 0)
    {
      goto LABEL_92;
    }

    v26 = initStrRes(a1, &v75);
    if ((v26 & 0x80000000) != 0)
    {
      goto LABEL_92;
    }

    if (*(a2 + 24))
    {
      v31 = 0;
      do
      {
        log_OutText(*(*a1 + 32), a1[23], 5, 0, "doing subexpansion %d ...", v28, v29, v30, v31);
        v26 = applyExpansion(a1, *&a2[2][2 * v31], &v79, &v77, 0, 0);
        if ((v26 & 0x80000000) != 0)
        {
          goto LABEL_92;
        }

        if (WORD1(v80))
        {
          log_OutText(*(*a1 + 32), a1[23], 5, 0, "after subexpansion %d str=%s, langmap=%s", v28, v29, v30, v31);
          if (WORD1(v80))
          {
            if (!**a2)
            {
              *(a1[40] + 32) += strlen(v79);
            }

            v26 = add2StringV3(a1, &v73, &v79);
            if ((v26 & 0x80000000) != 0)
            {
              goto LABEL_92;
            }

            v26 = add2StringV3(a1, &v75, &v77);
            if ((v26 & 0x80000000) != 0)
            {
              goto LABEL_92;
            }

            WORD1(v80) = 0;
            *v79 = 0;
            WORD1(v78) = 0;
            *v77 = 0;
          }
        }
      }

      while (++v31 < *(a2 + 24));
    }

    clearStrRes(*a1, &v79);
    clearStrRes(*a1, &v77);
    clearStrRes(*a1, &v69);
    if (WORD1(v74) && (**a2 - 1) <= 2)
    {
      log_OutText(*(*a1 + 32), a1[23], 5, 0, "CALL function on expanded string (%s)", v32, v33, v34, v73);
    }

    v39 = initStrRes(a1, &__b);
    if ((v39 & 0x80000000) != 0)
    {
      goto LABEL_93;
    }

    v40 = *a2;
    v41 = **a2;
    if ((v41 - 1) < 2)
    {
      v68 = 0;
      FEFunctionMap_GetFunction(a1, 1u, v40, &v81);
      v42 = a1[40];
      *v42 = a2[5];
      v42[1] = &__b;
      *(v42 + 17) = *(a2 + 4);
      v39 = v81(a1, &v68);
      if ((v39 & 0x80000000) != 0)
      {
        goto LABEL_93;
      }

      if (!v68)
      {
        goto LABEL_90;
      }

      v26 = add2StringV3(a1, a3, &__b);
      if ((v26 & 0x80000000) == 0)
      {
        memset(__b, 32, WORD1(__len));
        p_b = &__b;
        goto LABEL_89;
      }

      goto LABEL_92;
    }

    if (v41 != 3)
    {
      goto LABEL_90;
    }

    v44 = *(a2 + 24);
    if (*(a2 + 24))
    {
      v45 = 0;
      v46 = 9999;
      while (1)
      {
        v47 = *&a2[2][2 * v45];
        if (**v47 == 2)
        {
          v48 = *(v47 + 8);
          v49 = a1[40];
          v50 = v49[3];
          if (v48 > *(v50 + 82))
          {
            log_OutPublic(*(*a1 + 32), a1[23], 24008, "%s%d", v35, v36, v37, v38, "intVal");
            TOKENTNERROR(0);
            v50 = *(a1[40] + 24);
            v44 = *(a2 + 24);
LABEL_56:
            v51 = *(v50 + 4 * (v48 - 1) + 42);
            if (v51 < v46 && ~v51 != 0)
            {
              v46 = v51;
            }

            goto LABEL_61;
          }

          if (v48)
          {
            goto LABEL_56;
          }

          v46 = *v49[2];
        }

LABEL_61:
        if (++v45 >= v44)
        {
          goto LABEL_65;
        }
      }
    }

    v46 = 9999;
LABEL_65:
    v53 = *(a1 + 272);
    if (*(a1 + 272))
    {
      v54 = 0;
      v55 = a1[67];
      do
      {
        v56 = *v55++;
        if (v56 == v46)
        {
          v54 = 1;
        }

        --v53;
      }

      while (v53);
      if (v54 == 1)
      {
        v57 = **(a1[40] + 16);
        if (v57 < v46)
        {
          do
          {
            if (!utf8_strchr(g_szSpace_3, (a1[38] + v57)))
            {
              break;
            }

            v57 += utf8_determineUTF8CharLength(*(a1[38] + v57));
          }

          while (v57 < v46);
        }

        if (v57 < v46)
        {
          v58 = 0;
          do
          {
            v59 = v57;
            if (utf8_strchr(g_szSpace_3, (a1[38] + v57)))
            {
              ++v58;
              if (v57 < v46)
              {
                while (1)
                {
                  v59 = v57;
                  if (!utf8_strchr(g_szSpace_3, (a1[38] + v57)))
                  {
                    break;
                  }

                  v57 += utf8_determineUTF8CharLength(*(a1[38] + v57));
                  if (v57 >= v46)
                  {
                    v59 = v57;
                    break;
                  }
                }
              }
            }

            v57 += utf8_determineUTF8CharLength(*(a1[38] + v59));
          }

          while (v57 < v46);
LABEL_85:
          v60 = a1[40];
          *v60 = v73;
          v60[1] = &__b;
          v68 = 0;
          v39 = textnormalizer_DoDepes(a1, a2[6], v58, v54, &v68, &v69, v37, v38);
          if ((v39 & 0x80000000) != 0)
          {
            goto LABEL_93;
          }

          if (!v68)
          {
            goto LABEL_90;
          }

          v26 = add2StringV3(a1, a3, &__b);
          if ((v26 & 0x80000000) == 0)
          {
            p_b = &v69;
LABEL_89:
            v39 = add2StringV3(a1, a4, p_b);
            if ((v39 & 0x80000000) == 0)
            {
LABEL_90:
              clearStrRes(*a1, &__b);
              if (!**a2)
              {
                add2StringV3(a1, a3, &v73);
                add2StringV3(a1, a4, &v75);
              }
            }

LABEL_93:
            clearStrRes(*a1, &v69);
            clearStrRes(*a1, &__b);
            clearStrRes(*a1, &v73);
            clearStrRes(*a1, &v75);
            clearStrRes(*a1, &v79);
            clearStrRes(*a1, &v77);
            log_OutText(*(*a1 + 32), a1[23], 4, 0, "textnormalizer : applyExpansion End", v61, v62, v63, v66);
            return v39;
          }

LABEL_92:
          v39 = v26;
          goto LABEL_93;
        }
      }
    }

    else
    {
      v54 = 0;
    }

    v58 = 0;
    goto LABEL_85;
  }

  return inited;
}

uint64_t textnormalizer_ObjOpen(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25 = 0;
  log_OutText(*(*a1 + 32), a1[23], 4, 0, "textnormalizer : ObjOpen Begin", a6, a7, a8, v23);
  Map = FEFunctionMap_GetMap(a1, &v25);
  if ((Map & 0x80000000) != 0)
  {
LABEL_6:
    v21 = Map;
  }

  else
  {
    v13 = 0;
    v14 = 1;
    while (1)
    {
      v15 = v14;
      v16 = ssftmap_Insert(v25, *(&off_1F42D3918 + 2 * v13), *(&off_1F42D3918 + 2 * v13 + 1));
      if ((v16 & 0x80000000) != 0)
      {
        break;
      }

      v14 = 0;
      v13 = 1;
      if ((v15 & 1) == 0)
      {
        Map = FEFunctionMap_AddFunctionMap(a1, 1u, v25);
        goto LABEL_6;
      }
    }

    v21 = v16;
    log_OutPublic(*(*a1 + 32), a1[23], 24010, 0, v17, v18, v19, v20, v24);
    ssftmap_ObjClose(v25);
  }

  log_OutText(*(*a1 + 32), a1[23], 4, 0, "textnormalizer : ObjOpen End (%x)", v10, v11, v12, v21);
  return v21;
}

uint64_t textnormalizer_ObjClose(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  log_OutText(*(*a1 + 32), a1[23], 4, 0, "textnormalizer : ObjClose Begin", a6, a7, a8, v13);
  log_OutText(*(*a1 + 32), a1[23], 4, 0, "textnormalizer : ObjClose End (%x)", v9, v10, v11, 0);
  return 0;
}

uint64_t textnormalizer_DoMatch(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  *a2 = 0;
  if (*(a1 + 548) == 1)
  {
    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "_MATCH( %d) = ", a6, a7, a8, *(*(a1 + 320) + 34));
  }

  v10 = *(a1 + 320);
  v11 = *(v10 + 34);
  if (!*(v10 + 34))
  {
    v15 = *(v10 + 24);
    if (v15[20])
    {
      if (!*v15)
      {
        v17 = 0;
LABEL_19:
        v26 = *(v10 + 8);
        v27 = (*(a1 + 504) + v15[2 * v17 + 1]);
        goto LABEL_68;
      }

      v16 = 0;
      while (v15[20] > ++v16)
      {
        v17 = v16;
        if (!v15[2 * v16])
        {
          goto LABEL_19;
        }
      }
    }

    v22 = add2StringV4(a1, *(v10 + 8), **(v10 + 16), *(*(v10 + 16) + 2));
    goto LABEL_69;
  }

  v12 = *(v10 + 24);
  if (*(v12 + 82) < (v11 - 1))
  {
    log_OutPublic(*(*a1 + 32), *(a1 + 184), 24008, "%s%d", a5, a6, a7, a8, "intVal");
    v13 = 0;
    v14 = 0;
LABEL_73:
    *v8 = v13;
    return v14;
  }

  v18 = &v12[2 * (v11 - 1)];
  v20 = v18[21];
  v19 = v18 + 21;
  if (v20 == -1 && v19[1] == -1)
  {
    v26 = *(v10 + 8);
    v27 = "";
LABEL_68:
    v22 = add2StringV2(a1, v26, v27);
LABEL_69:
    v14 = v22;
    if ((v22 & 0x80000000) == 0)
    {
      goto LABEL_70;
    }

    return v14;
  }

  if (v12[20])
  {
    if (*v12 == v11)
    {
      v21 = 0;
LABEL_23:
      v14 = add2StringV2(a1, *(v10 + 8), (*(a1 + 504) + v12[2 * v21 + 1]));
      if ((v14 & 0x80000000) == 0)
      {
        v41 = v8;
        v29 = (*(a1 + 504) + *(*(*(a1 + 320) + 24) + 4 * v21 + 2));
LABEL_27:
        v30 = strlen(v29);
        if (v30)
        {
          v31 = 0;
          while (v31)
          {
            if (utf8_strchr(g_szSpace_4, &v29[v31]))
            {
              if (v30 > v31)
              {
                v32 = v31;
                do
                {
                  v33 = &v29[v31];
                  if (utf8_strchr(g_szSpace_4, v33))
                  {
                    v34 = v32 + 1 >= v30;
                  }

                  else
                  {
                    v34 = 1;
                  }

                  if (v34)
                  {
                    break;
                  }

                  if (!utf8_strchr(g_szSpace_4, v33 + 1))
                  {
                    break;
                  }

                  v31 += utf8_determineUTF8CharLength(*v33);
                  v32 = v31;
                }

                while (v30 > v31);
              }

              goto LABEL_41;
            }

LABEL_65:
            v31 += utf8_determineUTF8CharLength(v29[v31]);
            if (v31 >= v30)
            {
              goto LABEL_66;
            }
          }

          v31 = 0;
LABEL_41:
          v35 = *v19 + v31;
          if (*(a1 + 544))
          {
            v36 = 0;
            while (*(*(a1 + 536) + v36) != v35)
            {
              v36 += 2;
              if (2 * *(a1 + 544) == v36)
              {
                goto LABEL_47;
              }
            }

            *(*(a1 + 520) + v36) = *(*(a1 + 320) + 32) + v31;
          }

LABEL_47:
          if (v35 && *(a1 + 312) > v35 && TOK_IS_ALPHANUM((*(a1 + 304) + v35)) && TOK_IS_PUNCT((*(a1 + 304) + v35 - 1)))
          {
            PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(*(a1 + 304), v35);
            v38 = PreviousUtf8Offset;
            if (PreviousUtf8Offset)
            {
              do
              {
                if (!TOK_IS_PUNCT((*(a1 + 304) + v38)))
                {
                  break;
                }

                if (!TOK_IS_PUNCT((*(a1 + 304) + v38 - 1)))
                {
                  break;
                }

                PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(*(a1 + 304), v38);
                v38 = PreviousUtf8Offset;
              }

              while (PreviousUtf8Offset);
              v38 = v38;
            }

            else
            {
              v38 = 0;
            }

            if (utf8_strchr(g_szSpace_4, (*(a1 + 304) + v38)))
            {
              PreviousUtf8Offset += utf8_determineUTF8CharLength(*(*(a1 + 304) + v38));
            }

            if (*(a1 + 544))
            {
              v39 = 0;
              while (*(*(a1 + 536) + v39) != PreviousUtf8Offset)
              {
                v39 += 2;
                if (2 * *(a1 + 544) == v39)
                {
                  goto LABEL_65;
                }
              }

              *(*(a1 + 520) + v39) = *(*(a1 + 320) + 32) + v31;
            }
          }

          goto LABEL_65;
        }

LABEL_66:
        v8 = v41;
LABEL_70:
        if (*(a1 + 548) == 1)
        {
          log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "%s", v23, v24, v25, **(*(a1 + 320) + 8));
        }

        v13 = 1;
        goto LABEL_73;
      }

      return v14;
    }

    v28 = 0;
    while (v12[20] > ++v28)
    {
      v21 = v28;
      if (v12[2 * v28] == v11)
      {
        goto LABEL_23;
      }
    }
  }

  strncpy(*(a1 + 552), (*(a1 + 304) + **(v10 + 16)), (*(*(v10 + 16) + 2) - **(v10 + 16)));
  *(*(a1 + 552) - **(*(a1 + 320) + 16) + *(*(*(a1 + 320) + 16) + 2)) = 0;
  v29 = *(a1 + 552);
  v14 = add2StringV4(a1, *(*(a1 + 320) + 8), *v19, v19[1]);
  if ((v14 & 0x80000000) == 0)
  {
    v41 = v8;
    goto LABEL_27;
  }

  return v14;
}

uint64_t textnormalizer_DoString(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a2 = 0;
  if (*(a1 + 548) == 1)
  {
    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "_STRING_TTS( %s) = ", a6, a7, a8, **(a1 + 320));
  }

  v13 = add2StringV2(a1, *(*(a1 + 320) + 8), **(a1 + 320));
  if ((v13 & 0x80000000) == 0)
  {
    if (*(a1 + 548) == 1)
    {
      log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "%s", v10, v11, v12, **(*(a1 + 320) + 8));
    }

    *a2 = 1;
  }

  return v13;
}

uint64_t getDctStr(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 82);
  if (*(a2 + 82))
  {
    v7 = 0;
    v8 = 0;
    result = 0;
    v10 = a2 + 42;
    v11 = (a2 + 2);
    while (1)
    {
      v12 = (v10 + 4 * v7);
      if (*v12 != -1 || v12[1] != -1)
      {
        v13 = *(a2 + 40);
        if (v13)
        {
          v14 = 0;
          v15 = v11;
          do
          {
            if (*(v15 - 1) - 1 == v8)
            {
              result = add2StringV2(a1, a3, (a1[63] + *v15));
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              v13 = *(a2 + 40);
            }

            ++v14;
            v15 += 2;
          }

          while (v14 < v13);
          v3 = *(a2 + 82);
        }
      }

      if (v8 + 1 != v3)
      {
        if (a1[87])
        {
          v16 = a1[87];
        }

        else
        {
          v16 = "|";
        }

        result = add2StringV2(a1, a3, v16);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v3 = *(a2 + 82);
      }

      v8 = ++v7;
      if (v7 >= v3)
      {
        return result;
      }
    }
  }

  return 0;
}

uint64_t getRegexStr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 82);
  if (*(a2 + 82))
  {
    v9 = 0;
    result = 0;
    for (i = (a2 + 44); ; i += 2)
    {
      v12 = *(i - 1);
      v13 = *i;
      if (v12 == -1 && v13 == 0xFFFF)
      {
        goto LABEL_15;
      }

      strncpy(*(a1 + 552), (a4 + v12), (v13 - v12));
      *(*(a1 + 552) - *(i - 1) + *i) = 0;
      result = add2StringV2(a1, a3, *(a1 + 552));
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v15 = *(a1 + 960);
      v4 = *(a2 + 82);
      if (v15 == 1)
      {
        break;
      }

LABEL_16:
      if (v15)
      {
        v17 = 1;
      }

      else
      {
        v17 = v9 + 1 == v4;
      }

      if (!v17)
      {
        if (*(a1 + 696))
        {
          v18 = *(a1 + 696);
        }

        else
        {
          v18 = "|";
        }

        result = add2StringV2(a1, a3, v18);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v4 = *(a2 + 82);
      }

      if (++v9 >= v4)
      {
        return result;
      }
    }

    if (v9 + 1 != v4)
    {
      if (*(a1 + 696))
      {
        v16 = *(a1 + 696);
      }

      else
      {
        v16 = "|";
      }

      result = add2StringV2(a1, a3, v16);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v4 = *(a2 + 82);
    }

LABEL_15:
    v15 = *(a1 + 960);
    goto LABEL_16;
  }

  return 0;
}

uint64_t tn_nn_predictBTok(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, char **a8, unsigned __int16 a9, unsigned __int16 a10, char *a11)
{
  *v47 = 0;
  v48 = 0;
  v18 = a1[22];
  log_OutText(*(*a1 + 32), a1[23], 4, 0, "textnormalizer : predictBTokAndApplyExpansion Begin", a6, a7, a8, v42);
  v19 = *(a2 + 48);
  if (!strcmp(v19, "_NN"))
  {
    v21 = *(a2 + 40);
    v22 = strlen(v21);
    v23 = 0;
    if (v22)
    {
      while (v21[v23] == 32)
      {
        if (v22 == ++v23)
        {
          v23 = v22;
          break;
        }
      }
    }

    v24 = add2StringV2(a1, a8, &v21[v23]);
    if ((v24 & 0x80000000) != 0)
    {
      return v24;
    }

    v25 = *a8;
    v26 = strchr(*a8, 32);
    if (v26)
    {
      *v26 = 0;
      v25 = *a8;
    }

    Only = ssftmap_FindReadOnly(a1[85], v25, v47);
    if ((Only & 0x80000000) != 0)
    {
      RegexStr = Only;
      v43 = *a8;
      log_OutPublic(*(*a1 + 32), a1[23], 24069, "%s%s", v28, v29, v30, v31, "pattern");
      return RegexStr;
    }

    if (*(a1 + 365) >= *(a1 + 364))
    {
      v44 = *(*v47 + 16);
      log_OutText(*(*a1 + 32), a1[23], 4, 0, "exceeded max NN calls per sentence %d, fallback to default prediction %s", v29, v30, v31, *(a1 + 364));
      v32 = *(*v47 + 16);
    }

    else
    {
      v24 = nn_tn_process(*a1, a1[23], (a1 + 80), *a8, *v47, a9, a10, a11, &v48);
      ++*(a1 + 365);
      if ((v24 & 0x80000000) != 0)
      {
        return v24;
      }

      v32 = v48;
    }
  }

  else
  {
    if (strcmp(v19, "_UNAMBIG"))
    {
      return 2304778240;
    }

    v32 = *(a2 + 40);
  }

  v24 = add2StringV2(a1, a5, v32);
  if ((v24 & 0x80000000) != 0)
  {
    return v24;
  }

  if (a1[88])
  {
    v33 = a1[88];
  }

  else
  {
    v33 = "LUA";
  }

  if ((add2StringV2(a1, a3, v33) & 0x80000000) != 0)
  {
    return 2304778240;
  }

  RegexStr = add2StringV2(a1, a4, "");
  if ((RegexStr & 0x80000000) != 0)
  {
    return RegexStr;
  }

  memset(*a4, 32, *(a4 + 10));
  if (!*(v18 + 16))
  {
    v38 = a7;
    goto LABEL_34;
  }

  v37 = *(v18 + 8);
  v38 = a7;
  if (!v37)
  {
LABEL_34:
    v40 = *a6;
    if (*(a1 + 240) == 1)
    {
      v41 = "textnormalizer : predictBTokAndApplyExpansion End expansionFunction=%s regexStr=%s";
    }

    else
    {
      v45 = *v38;
      v41 = "textnormalizer : predictBTokAndApplyExpansion End expansionFunction=%s regexStr=%s dctmatchStr=%s";
    }

    log_OutText(*(*a1 + 32), a1[23], 4, 0, v41, v34, v35, v36, *a5);
    return RegexStr;
  }

  while (1)
  {
    RegexStr = getRegexStr(a1, (v37 + 3), a6, a11);
    if ((RegexStr & 0x80000000) != 0)
    {
      return RegexStr;
    }

    if (!*(a1 + 240))
    {
      RegexStr = getDctStr(a1, (v37 + 3), a7);
      if ((RegexStr & 0x80000000) != 0)
      {
        return RegexStr;
      }
    }

    v37 = *v37;
    if (!v37)
    {
      goto LABEL_34;
    }
  }
}

uint64_t nn_tn_checkIfActive(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v20 = 0;
  v21 = 0;
  *a5 = 0;
  BrokerString = nn_tn_getBrokerString(a3, a4, &v21);
  if ((BrokerString & 0x80000000) != 0)
  {
    return BrokerString;
  }

  v10 = v21;
  if ((ssftriff_reader_ObjOpen(a1, a2, 2, v21, "FINN", 1, &v20) & 0x80000000) != 0)
  {
    v18 = 0;
    if (!v10)
    {
      return v18;
    }

LABEL_9:
    heap_Free(*(a3 + 8), v10);
    return v18;
  }

  v18 = ssftriff_reader_ObjClose(v20, v11, v12, v13, v14, v15, v16, v17);
  if ((v18 & 0x80000000) == 0)
  {
    *a5 = 1;
  }

  if (v10)
  {
    goto LABEL_9;
  }

  return v18;
}

uint64_t nn_tn_getBrokerString(uint64_t a1, uint64_t a2, char **a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v14 = "";
  *v15 = 0;
  memset(v16, 0, sizeof(v16));
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", v15);
  if ((result & 0x80000000) == 0)
  {
    result = paramc_ParamGetStr(*(a1 + 40), "fecfg", &v14);
    if ((result & 0x80000000) == 0)
    {
      __strcat_chk();
      __strcat_chk();
      __strcat_chk();
      __strcat_chk();
      v7 = heap_Calloc(*(a1 + 8), 1, 1024);
      *a3 = v7;
      if (v7)
      {
        result = brokeraux_ComposeBrokerString(a1, v16, 1, 1, *v15, 0, 0, v7, 0x400uLL);
      }

      else
      {
        log_OutPublic(*(a1 + 32), a2, 24048, 0, v8, v9, v10, v11, v13);
        result = 2304778250;
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t nn_tn_Load(_WORD *a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int *a11)
{
  v89 = 0;
  v90 = 0;
  v91 = 0;
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  *a11 = 0;
  NumericFeatureValue = (*(a7 + 96))(a9, a10, "fecfg", "nn_tn_modelType", &__c[3], &__c[1], __c);
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  if (*&__c[1] == 1 && *&__c[3])
  {
    v18 = **&__c[3];
    v19 = strchr(**&__c[3], __c[0]);
    if (v19)
    {
      *v19 = 0;
      v18 = **&__c[3];
    }

    if (!strcmp(v18, "char"))
    {
      v20 = 0;
    }

    else
    {
      if (strcmp(v18, "word_and_char"))
      {
        goto LABEL_11;
      }

      v20 = 2;
    }

    *a11 = v20;
  }

LABEL_11:
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  a11[3] = 0;
  a11[6] = 0;
  if (*a11 == 1)
  {
    NumericFeatureValue = (*(a7 + 96))(a9, a10, "fecfg", "nn_tn_wordFocusPatternProcessing", &__c[3], &__c[1], __c);
  }

  else
  {
    if (*a11)
    {
      goto LABEL_22;
    }

    NumericFeatureValue = (*(a7 + 96))(a9, a10, "fecfg", "nn_tn_charFocusPatternProcessing", &__c[3], &__c[1], __c);
  }

  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  if (*&__c[1] == 1 && *&__c[3])
  {
    v21 = **&__c[3];
    v22 = strchr(**&__c[3], __c[0]);
    if (v22)
    {
      *v22 = 0;
      v21 = **&__c[3];
    }

    if (!strcmp(v21, "Markup"))
    {
      if (*a11 == 1)
      {
        a11[6] = 1;
      }

      else if (!*a11)
      {
        a11[3] = 1;
      }
    }

    if (!strcmp(v21, "Embedded"))
    {
      if (*a11 == 1)
      {
        a11[6] = 2;
      }

      else if (!*a11)
      {
        a11[3] = 2;
      }
    }
  }

LABEL_22:
  NumericFeatureValue = getNumericFeatureValue(a7, a9, a10, "nn_tn_maxNNCallsPerSent", a11 + 44);
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  NumericFeatureValue = getNumericFeatureValue(a7, a9, a10, "nn_tn_charContextWindow", a11 + 2);
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  NumericFeatureValue = getNumericFeatureValue(a7, a9, a10, "nn_tn_wordContextWindow", a11 + 3);
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  NumericFeatureValue = getNumericFeatureValue(a7, a9, a10, "nn_tn_charEmbeddingDimension", a11 + 4);
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  NumericFeatureValue = getNumericFeatureValue(a7, a9, a10, "nn_tn_wordEmbeddingDimension", a11 + 5);
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  NumericFeatureValue = getNumericFeatureValue(a7, a9, a10, "nn_tn_max_x_len", a11 + 14);
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  NumericFeatureValue = getNumericFeatureValue(a7, a9, a10, "nn_tn_Y_dict_size", a11 + 15);
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  NumericFeatureValue = getNumericFeatureValue(a7, a9, a10, "nn_tn_addPatternAsFeature", &v91);
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  NumericFeatureValue = getStringFeatureValue(a5, a6, a7, a9, a10, "nn_tn_contextPaddingChar", a11 + 2);
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  if (v91 == 1)
  {
    a11[8] = 1;
  }

  NumericFeatureValue = getStringFeatureValue(a5, a6, a7, a9, a10, "nn_tn_regexSubmatchSeparator", a11 + 7);
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  NumericFeatureValue = getStringFeatureValue(a5, a6, a7, a9, a10, "nn_tn_expansionProxyString", a11 + 8);
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  NumericFeatureValue = setModelPredictions(a5, a6, a7, a9, a10, a11);
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  v26 = a5;
  log_OutText(*(a5 + 32), a6, 5, 0, "modelType %d", v23, v24, v25, *a11);
  log_OutText(*(a5 + 32), a6, 5, 0, "charContextWindow %d", v27, v28, v29, *(a11 + 2));
  log_OutText(*(a5 + 32), a6, 5, 0, "wordContextWindow %d", v30, v31, v32, *(a11 + 3));
  log_OutText(*(a5 + 32), a6, 5, 0, "charEmbeddingDimension %d", v33, v34, v35, *(a11 + 4));
  log_OutText(*(a5 + 32), a6, 5, 0, "wordEmbeddingDimension %d", v36, v37, v38, *(a11 + 5));
  log_OutText(*(a5 + 32), a6, 5, 0, "charFocusType %d", v39, v40, v41, a11[3]);
  log_OutText(*(a5 + 32), a6, 5, 0, "wordFocusType %d", v42, v43, v44, a11[6]);
  log_OutText(*(a5 + 32), a6, 5, 0, "addPatternAsFeature %d", v45, v46, v47, a11[8]);
  log_OutText(*(a5 + 32), a6, 5, 0, "max_x_len %d", v48, v49, v50, *(a11 + 14));
  log_OutText(*(a5 + 32), a6, 5, 0, "expansionProxyString %s", v51, v52, v53, *(a11 + 8));
  log_OutText(*(a5 + 32), a6, 5, 0, "regexSubmatchSeparator %s", v54, v55, v56, *(a11 + 7));
  v57 = a11[8];
  *(a11 + 18) = v57 == 1;
  if (*a11 == 1)
  {
    v58 = a11[6];
  }

  else
  {
    if (*a11)
    {
      goto LABEL_53;
    }

    v58 = a11[3];
  }

  if (v58 == 2)
  {
    if (v57 == 1)
    {
      v59 = 2;
    }

    else
    {
      v59 = 1;
    }

    *(a11 + 18) = v59;
  }

LABEL_53:
  NumericFeatureValue = nn_word_lkp_GetInterface(1u, a11 + 16);
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  *(a11 + 17) = safeh_GetNullHandle();
  *(a11 + 18) = v60;
  *(a11 + 19) = safeh_GetNullHandle();
  *(a11 + 20) = v61;
  NumericFeatureValue = (*(*(a11 + 16) + 16))(*(a11 + 17), *(a11 + 18), "char", a1, a2);
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  NumericFeatureValue = (*(*(a11 + 16) + 40))(*(a11 + 19), *(a11 + 20), a11 + 42);
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  log_OutText(*(a5 + 32), a6, 5, 0, "word2vec length %d", v62, v63, v64, a11[42]);
  v65 = heap_Alloc(*(a5 + 8), 4 * a11[42]);
  *(a11 + 22) = v65;
  if (!v65)
  {
    log_OutPublic(*(a5 + 32), a6, 24048, 0, v66, v67, v68, v69, v84);
    return 2304778250;
  }

  BrokerString = nn_tn_getBrokerString(a5, a6, &v90);
  v71 = v90;
  if ((BrokerString & 0x80000000) != 0)
  {
    v80 = BrokerString;
  }

  else
  {
    v72 = fi_init(a1, a2, a3, a4, &v89, 0, v90, "FINN", 1, 0);
    if ((v72 & 0x80000000) != 0)
    {
      v80 = 2304778240;
      log_OutPublic(*(a5 + 32), a6, 24063, 0, v73, v74, v75, v76, v85);
    }

    else
    {
      v77 = *v89;
      v78 = *(*v89 + 56);
      if (*(*v89 + 52) == 2)
      {
        if (v78 == *(a11 + 14))
        {
          v79 = *(v77 + 60);
          if (v79 == a11[42] + *(a11 + 18))
          {
            v80 = v72;
            *(a11 + 13) = v89;
            a11[28] = v79 * v78;
            *(a11 + 23) = 0;
            *(a11 + 96) = 0;
            v26 = a5;
            goto LABEL_70;
          }
        }
      }

      else
      {
        v82 = a11[42];
        v83 = *(a11 + 18);
      }

      v26 = a5;
      v87 = *(a11 + 14);
      v86 = *(v77 + 60);
      log_OutPublic(*(a5 + 32), a6, 24067, "%s%d%d%s%d%d", v73, v74, v75, v76, "expected");
      v80 = 2304778265;
    }
  }

LABEL_70:
  if (v71)
  {
    heap_Free(*(v26 + 8), v71);
  }

  return v80;
}

uint64_t nn_tn_UnLoad(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 176);
  if (v6)
  {
    heap_Free(*(a1 + 8), v6);
    *(a3 + 176) = 0;
  }

  v7 = *(a3 + 128);
  if (v7)
  {
    (*(v7 + 24))(*(a3 + 152), *(a3 + 160));
    *(a3 + 128) = 0;
  }

  v8 = *(a3 + 48);
  if (v8)
  {
    ssftmap_ObjClose(v8);
  }

  v9 = *(a3 + 40);
  if (v9)
  {
    ssftmap_ObjClose(v9);
  }

  v10 = *(a3 + 56);
  if (v10)
  {
    heap_Free(*(a1 + 8), v10);
    *(a3 + 56) = 0;
  }

  v11 = *(a3 + 64);
  if (v11)
  {
    heap_Free(*(a1 + 8), v11);
    *(a3 + 64) = 0;
  }

  v12 = *(a3 + 16);
  if (v12)
  {
    heap_Free(*(a1 + 8), v12);
    *(a3 + 16) = 0;
  }

  v13 = *(a3 + 80);
  if (v13)
  {
    if (*(a3 + 72))
    {
      v14 = 0;
      do
      {
        heap_Free(*(a1 + 8), *(*(a3 + 80) + 8 * v14));
        *(*(a3 + 80) + 8 * v14++) = 0;
      }

      while (v14 < *(a3 + 72));
      v13 = *(a3 + 80);
    }

    *(a3 + 72) = 0;
    heap_Free(*(a1 + 8), v13);
    *(a3 + 80) = 0;
  }

  v15 = *(a3 + 104);
  if (!v15)
  {
    return 0;
  }

  return fi_deinit(a1, a2, v15);
}

uint64_t nn_tn_freeSentData(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 184);
  if (v3)
  {
    if (*(a2 + 192))
    {
      v5 = 0;
      do
      {
        heap_Free(*(a1 + 8), *(*(a2 + 184) + 8 * v5));
        *(*(a2 + 184) + 8 * v5++) = 0;
      }

      while (v5 < *(a2 + 192));
      v3 = *(a2 + 184);
    }

    heap_Free(*(a1 + 8), v3);
    *(a2 + 184) = 0;
  }

  return 0;
}

uint64_t nn_tn_getCharContextString(uint64_t a1, uint64_t a2, char *__s, unsigned int a4, int a5, uint64_t *a6, unsigned __int16 *a7, unsigned int a8, int a9, const char *a10, unsigned __int16 a11, unsigned __int16 *a12, _WORD *a13, _WORD *a14)
{
  v78 = strlen(__s);
  *a12 = 0;
  v20 = heap_Calloc(*(a1 + 8), 1, (8 * a11) | 1);
  if (!v20)
  {
    v40 = 2304778250;
    log_OutPublic(*(a1 + 32), a2, 24048, 0, v21, v22, v23, v24, v74);
    return v40;
  }

  v25 = v20;
  v76 = a6;
  *a7 = a11;
  if (!a11)
  {
LABEL_6:
    v33 = a13;
    if ((a5 - a4) >= (a11 - 2 * a8 - 2))
    {
      v34 = a11 - 2 * a8 - 2;
    }

    else
    {
      v34 = a5 - a4;
    }

    PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(__s, a4);
    v36 = 0;
    if (a8)
    {
      v37 = a10;
      if ((PreviousUtf8Offset & 0x80000000) == 0)
      {
        v36 = 0;
        v38 = PreviousUtf8Offset;
        do
        {
          Utf8_LengthInBytes(&__s[v38], 1);
          ++v36;
          if (!v38)
          {
            break;
          }

          v39 = utf8_GetPreviousUtf8Offset(__s, v38);
          if ((v39 & 0x8000) != 0)
          {
            break;
          }

          v38 = v39;
        }

        while (a8 > v36);
      }
    }

    else
    {
      v37 = a10;
    }

    v43 = a9;
    LOWORD(v44) = v36;
    if (v37)
    {
      v45 = a8 >= a11 ? a11 : a8;
      LOWORD(v44) = a8;
      if (v45)
      {
        v46 = v25;
        do
        {
          v47 = *v46++;
          strcpy(v47, v37);
          --v45;
        }

        while (v45);
        LOWORD(v44) = a8;
        v43 = a9;
        v33 = a13;
      }
    }

    v48 = a14;
    v49 = v34 + a4;
    *v33 = v44;
    if (v43 == 1)
    {
      **(v25 + 8 * v44) = -61;
      LOWORD(v44) = v44 + 1;
    }

    v50 = (v34 + a4);
    if (v49 <= a4 || a11 <= v44)
    {
      v51 = a4;
    }

    else
    {
      v75 = v43;
      v44 = v44;
      v51 = a4;
      do
      {
        v52 = Utf8_LengthInBytes(&__s[v51], 1);
        v53 = strncmp(&__s[v51], " ", v52);
        v54 = *(v25 + 8 * v44);
        if (v53)
        {
          strncpy(v54, &__s[v51], v52);
        }

        else
        {
          strcpy(v54, "<sp>");
        }

        ++v44;
        v51 += v52;
      }

      while (v50 > v51 && v44 < a11);
      v37 = a10;
      v43 = v75;
      v48 = a14;
    }

    *v48 = v44;
    if (v43 == 1)
    {
      **(v25 + 8 * v44) = -60;
      LOWORD(v44) = v44 + 1;
    }

    if (a11 <= v44)
    {
      v55 = 0;
    }

    else
    {
      v55 = 0;
      v44 = v44;
      while (v78 > v51 && a8 > v55)
      {
        v56 = Utf8_LengthInBytes(&__s[v51], 1);
        v57 = strncmp(&__s[v51], " ", v56);
        v58 = *(v25 + 8 * v44);
        if (v57)
        {
          strncpy(v58, &__s[v51], v56);
        }

        else
        {
          strcpy(v58, "<sp>");
        }

        ++v44;
        v51 += v56;
        ++v55;
        v37 = a10;
        if (a11 == v44)
        {
          v59 = v76;
          *a12 = a11;
          v60 = a8;
          goto LABEL_64;
        }
      }
    }

    v59 = v76;
    if (v37 && a8 > v55 && a11 > v44)
    {
      v44 = v44;
      do
      {
        v61 = *(v25 + 8 * v44++);
        strcpy(v61, v37);
        if (v44 >= a11)
        {
          break;
        }

        ++v55;
      }

      while (a8 > v55);
    }

    *a12 = v44;
    v60 = a8;
    if (a11 > v44)
    {
      v62 = (v25 + 8 * v44);
      v63 = a11 - v44;
      do
      {
        v64 = *v62++;
        *v64 = 11;
        --v63;
      }

      while (v63);
    }

LABEL_64:
    *v59 = v25;
    v65 = utf8_GetPreviousUtf8Offset(__s, a4);
    v40 = 0;
    if (v37)
    {
      v66 = v60;
    }

    else
    {
      v66 = v36;
    }

    if ((v65 & 0x8000) != 0)
    {
      return v40;
    }

    if (!v60)
    {
      return v40;
    }

    v67 = v66 - 1;
    if (a11 <= (v66 - 1))
    {
      return v40;
    }

    v68 = 0;
    v69 = v65;
    while (1)
    {
      v70 = Utf8_LengthInBytes(&__s[v69], 1);
      v71 = strncmp(&__s[v69], " ", v70);
      v72 = *(v25 + 8 * v67);
      if (v71)
      {
        strncpy(v72, &__s[v69], v70);
        if (v69)
        {
          goto LABEL_73;
        }
      }

      else
      {
        strcpy(v72, "<sp>");
        if (v69)
        {
LABEL_73:
          v69 = utf8_GetPreviousUtf8Offset(__s, v69);
          goto LABEL_76;
        }
      }

      v69 = 0xFFFFLL;
LABEL_76:
      v40 = 0;
      if ((v69 & 0x8000) == 0 && v60 > ++v68 && a11 > --v67)
      {
        continue;
      }

      return v40;
    }
  }

  v26 = 0;
  v27 = 8 * a11;
  while (1)
  {
    v28 = heap_Calloc(*(a1 + 8), 1, 5);
    *(v25 + v26) = v28;
    if (!v28)
    {
      break;
    }

    v26 += 8;
    if (v27 == v26)
    {
      goto LABEL_6;
    }
  }

  log_OutPublic(*(a1 + 32), a2, 24048, 0, v29, v30, v31, v32, v74);
  v41 = 0;
  do
  {
    v42 = *(v25 + v41);
    if (v42)
    {
      heap_Free(*(a1 + 8), v42);
    }

    v41 += 8;
  }

  while (v27 != v41);
  v40 = 2304778250;
  heap_Free(*(a1 + 8), v25);
  *v76 = 0;
  return v40;
}

uint64_t nn_tn_process(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, int a7, char *__s, void *a9)
{
  v11 = 0;
  v92 = 0;
  v91 = 0;
  v90 = 0;
  v89 = 0;
  v88 = 0;
  if (*a3)
  {
    goto LABEL_2;
  }

  CharContextString = nn_tn_getCharContextString(a1, a2, __s, a6, a7, (a3 + 184), (a3 + 192), *(a3 + 4), *(a3 + 12), *(a3 + 16), *(a3 + 28), &v91, &v89 + 1, &v89);
  if ((CharContextString & 0x80000000) != 0)
  {
    v11 = CharContextString;
    goto LABEL_2;
  }

  v87 = a5;
  log_OutText(*(a1 + 32), a2, 5, 0, "char context:", v17, v18, v19, 0);
  if (*(a3 + 28))
  {
    v23 = 0;
    do
    {
      v79 = *(*(a3 + 184) + 8 * v23);
      log_OutText(*(a1 + 32), a2, 5, 0, "[%d] %s%s", v20, v21, v22, v23++);
    }

    while (v23 < *(a3 + 28));
  }

  v24 = heap_Alloc(*(a1 + 8), 4 * *(a3 + 112));
  v92 = v24;
  if (v24)
  {
    v29 = v24;
    v86 = a4;
    v30 = *(a3 + 112);
    if (v30)
    {
      v31 = 0;
      do
      {
        v24[v31++] = 0;
      }

      while (v30 > v31);
    }

    v32 = v91;
    if (v91)
    {
      v33 = 0;
      v85 = HIWORD(v89);
      v84 = v89;
      do
      {
        v34 = *(a3 + 168) + *(a3 + 36);
        v35 = *(*(a3 + 184) + 8 * v33);
        v36 = *v35;
        if (v36 == 195)
        {
          if (v34)
          {
            v39 = 0;
            v40 = v33 * v34;
            do
            {
              v29[v40] = -1082130432;
              ++v39;
              ++v40;
            }

            while (v34 > v39);
          }
        }

        else if (v36 == 196)
        {
          if (v34)
          {
            v37 = 0;
            v38 = v33 * v34;
            do
            {
              v29[v38] = -1073741824;
              ++v37;
              ++v38;
            }

            while (v34 > v37);
          }
        }

        else
        {
          v41 = *(a3 + 16);
          if (v41 && !strcmp(*(*(a3 + 184) + 8 * v33), v41))
          {
            if (v34)
            {
              v55 = 0;
              v56 = v33 * v34;
              do
              {
                v29[v56] = -1082130432;
                ++v55;
                ++v56;
              }

              while (v34 > v55);
            }
          }

          else
          {
            if (v34)
            {
              v42 = 0;
              v43 = v33 * v34;
              do
              {
                v29[v43] = 0;
                ++v42;
                ++v43;
              }

              while (v34 > v42);
            }

            v44 = (*(*(a3 + 128) + 56))(*(a3 + 152), *(a3 + 160), v35, *(a3 + 176));
            if ((v44 & 0x1FFF) == 0x14)
            {
              if (((*(*(a3 + 128) + 56))(*(a3 + 152), *(a3 + 160), "$MEANW2V$", *(a3 + 176)) & 0x1FFF) == 0x14)
              {
                v11 = 2304778240;
                log_OutPublic(*(a1 + 32), a2, 24066, "%s%s", v49, v50, v51, v52, "expected");
                goto LABEL_2;
              }
            }

            else
            {
              v11 = v44;
              if ((v44 & 0x80000000) != 0)
              {
                v62 = *(a1 + 32);
                v63 = a2;
                v64 = 24068;
LABEL_54:
                log_OutPublic(v62, v63, v64, 0, v45, v46, v47, v48, v78);
                goto LABEL_2;
              }
            }

            v53 = v34 * v33;
            memcpy(&v29[v53], *(a3 + 176), 4 * *(a3 + 168));
            if (*(a3 + 32) == 1)
            {
              LOWORD(v54) = *(v87 + 24);
              *&v29[*(a3 + 168) + v53] = v54;
            }

            if (*(a3 + 12) == 2 && v33 >= v85 && v33 < v84)
            {
              v29[v53 + *(a3 + 168) + 1] = 1065353216;
            }
          }
        }

        ++v33;
      }

      while (v33 != v32);
    }

    v11 = fi_predict(*(a3 + 104), &v92, *(a3 + 28), &v90, v25, v26, v27, v28);
    if ((v11 & 0x80000000) != 0)
    {
      v62 = *(a1 + 32);
      v63 = a2;
      v64 = 24065;
      goto LABEL_54;
    }

    if (*(a3 + 30))
    {
      v57 = 0;
      v58 = 0;
      v59 = 0.0;
      v60 = v87;
      do
      {
        if (v59 < *(v90 + 4 * v57))
        {
          v59 = *(v90 + 4 * v57);
          v58 = v57;
        }

        ++v57;
      }

      while (*(a3 + 30) != v57);
      v61 = v58;
    }

    else
    {
      v61 = 0;
      v59 = 0.0;
      v60 = v87;
    }

    log_OutText(*(a1 + 32), a2, 5, 0, "results (threshold=%1.5lf)", v46, v47, v48, COERCE__INT64(*v60));
    if (*(a3 + 30))
    {
      v68 = 0;
      do
      {
        v69 = *(v90 + 4 * v68);
        *v81 = *(*(a3 + 80) + 8 * v68);
        log_OutText(*(a1 + 32), a2, 5, 0, "[%3d] %1.5lf : %s %s", v65, v66, v67, v68++);
      }

      while (v68 < *(a3 + 30));
    }

    v70 = v87;
    if (*(v87 + 4) >= 2u)
    {
      v71 = 0;
      do
      {
        v72 = v71;
        v73 = *(*(v70 + 8) + 8 * v71);
        if (!strcmp(*(*(a3 + 80) + 8 * v61), v73))
        {
          ReadOnly = ssftmap_FindReadOnly(*(a3 + 48), v73, &v88);
          if ((ReadOnly & 0x80000000) != 0 || v59 >= *v88)
          {
            v70 = v87;
            if (v59 >= *v87)
            {
              *a9 = *(*(v87 + 8) + 8 * v72);
              log_OutText(*(a1 + 32), a2, 5, 0, "validated prediction for pattern %s", v75, v76, v77, v86);
              v11 = 0;
              goto LABEL_2;
            }

            log_OutText(*(a1 + 32), a2, 5, 0, "blocked selected prediction %s; value %1.5lf below pattern threshold %1.5lf", v75, v76, v77, v86);
            v11 = 0;
          }

          else
          {
            v11 = ReadOnly;
            v70 = v87;
            v83 = *v88;
            *v82 = *(*(v87 + 8) + 8 * v72);
            log_OutText(*(a1 + 32), a2, 5, 0, "blocked selected prediction %s; value %1.5lf below individual threshold for %s (%1.5f)", v75, v76, v77, v86);
          }
        }

        v71 = v72 + 1;
      }

      while (*(v70 + 4) - 1 > (v72 + 1));
    }

    v80 = *(v70 + 16);
    log_OutText(*(a1 + 32), a2, 5, 0, "invalid or blocked prediction for pattern %s, set to default %s", v65, v66, v67, v86);
    *a9 = *(v70 + 16);
LABEL_2:
    nn_tn_freeSentData(a1, a3);
    if (v92)
    {
      heap_Free(*(a1 + 8), v92);
    }
  }

  else
  {
    log_OutPublic(*(a1 + 32), a2, 24048, 0, v25, v26, v27, v28, v78);
    return 2304778250;
  }

  return v11;
}

uint64_t getStringFeatureValue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char **a7)
{
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  *a7 = 0;
  v10 = (*(a3 + 96))(a4, a5, "fecfg", a6, &__c[3], &__c[1], __c);
  if ((v10 & 0x80000000) == 0 && *&__c[1] == 1 && *&__c[3] != 0)
  {
    v12 = **&__c[3];
    v13 = strchr(**&__c[3], __c[0]);
    if (v13)
    {
      *v13 = 0;
      v12 = **&__c[3];
    }

    v14 = strlen(v12);
    v15 = heap_Calloc(*(a1 + 8), 1, (v14 + 1));
    *a7 = v15;
    if (v15)
    {
      strcpy(v15, **&__c[3]);
    }

    else
    {
      log_OutPublic(*(a1 + 32), a2, 37000, 0, v16, v17, v18, v19, v21);
      return 2304778250;
    }
  }

  return v10;
}

uint64_t setModelPredictions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v130 = *MEMORY[0x1E69E9840];
  __c_3 = 0;
  __c_1 = -1;
  __c = 0;
  v119 = 0;
  NumericFeatureValue = getNumericFeatureValue(a3, a4, a5, "nn_tn_numPatterns", &v119);
  if ((NumericFeatureValue & 0x80000000) == 0 && v119)
  {
    v120 = 0u;
    v121 = 0u;
    v13 = getNumericFeatureValue(a3, a4, a5, "nn_tn_numAllPredictions", (a6 + 72));
    if ((v13 & 0x80000000) == 0)
    {
      v14 = heap_Calloc(*(a1 + 8), 1, 8 * *(a6 + 72));
      *(a6 + 80) = v14;
      if (!v14 || (**(a6 + 80) = heap_Calloc(*(a1 + 8), 1, 8), (v19 = **(a6 + 80)) == 0))
      {
LABEL_76:
        NumericFeatureValue = 2304778250;
        log_OutPublic(*(a1 + 32), a2, 24048, 0, v15, v16, v17, v18, v111);
        goto LABEL_77;
      }

      v118 = 1;
      *v19 = 0x544C5541464544;
      v20 = *(a1 + 8);
      *&v126 = ssftmap_ElemCopyString;
      *(&v126 + 1) = ssftmap_ElemFreeString;
      v127 = ssftmap_ElemCompareKeysString;
      v128 = patternMap_CopyData;
      v129 = patternMap_FreeData;
      v13 = ssftmap_ObjOpen(v20, 0, &v126, (a6 + 40));
      if ((v13 & 0x80000000) == 0)
      {
        v21 = *(a1 + 8);
        *&v126 = ssftmap_ElemCopyString;
        *(&v126 + 1) = ssftmap_ElemFreeString;
        v127 = ssftmap_ElemCompareKeysString;
        v128 = floatThreshold_CopyData;
        v129 = floatThreshold_FreeData;
        v13 = ssftmap_ObjOpen(v21, 0, &v126, (a6 + 48));
        if ((v13 & 0x80000000) == 0)
        {
          v22 = 0;
          v117 = a2;
          while (1)
          {
            setDictKeyString(&v126, "nn_tn_patternName", ++v22);
            __c_1 = -1;
            v13 = (*(a3 + 96))(a4, a5, "fecfg", &v126, &__c_3, &__c_1, &__c);
            if ((v13 & 0x80000000) != 0)
            {
              goto LABEL_75;
            }

            if (__c_1)
            {
              v23 = *__c_3;
              v24 = strchr(*__c_3, __c);
              if (v24)
              {
                *v24 = 0;
              }

              v25 = strlen(v23);
              v26 = heap_Calloc(*(a1 + 8), 1, v25 + 1);
              if (!v26)
              {
                goto LABEL_76;
              }

              v27 = v26;
              strcpy(v26, v23);
            }

            else
            {
              v27 = 0;
            }

            setDictKeyString(&v126, "nn_tn_patternThreshold", v22);
            *&v125[3] = 0;
            *&v125[1] = -1;
            v125[0] = 0;
            LODWORD(v120) = 0;
            v28 = (*(a3 + 96))(a4, a5, "fecfg", &v126, &v125[3], &v125[1], v125);
            if ((v28 & 0x80000000) != 0)
            {
              goto LABEL_80;
            }

            if (*&v125[1] == 1 && *&v125[3])
            {
              v29 = **&v125[3];
              v30 = strchr(**&v125[3], v125[0]);
              if (v30)
              {
                *v30 = 0;
                v29 = **&v125[3];
              }

              v31 = atof(v29);
              *&v120 = v31;
            }

            setDictKeyString(&v126, "nn_tn_numPredictions", v22);
            v28 = getNumericFeatureValue(a3, a4, a5, &v126, &v120 + 2);
            if ((v28 & 0x80000000) != 0)
            {
LABEL_80:
              NumericFeatureValue = v28;
              goto LABEL_95;
            }

            *(&v120 + 1) = heap_Calloc(*(a1 + 8), 1, 8 * WORD2(v120));
            if (!*(&v120 + 1))
            {
              goto LABEL_94;
            }

            setDictKeyString(&v126, "nn_tn_predictions", v22);
            v114 = *(a6 + 80);
            v115 = *(&v120 + 1);
            *&v125[3] = 0;
            *&v125[1] = -1;
            v125[0] = 0;
            NumericFeatureValue = (*(a3 + 96))(a4, a5, "fecfg", &v126, &v125[3], &v125[1], v125);
            v112 = v22;
            if ((NumericFeatureValue & 0x80000000) != 0 || !*&v125[1])
            {
              goto LABEL_38;
            }

            v113 = v27;
            v36 = **&v125[3];
            v37 = strchr(**&v125[3], v125[0]);
            if (v37)
            {
              *v37 = 0;
            }

            v38 = strchr(v36, 59);
            if (v38)
            {
              v39 = v38;
              LOWORD(v40) = 0;
              while (1)
              {
                *v39 = 0;
                v41 = strlen(v36) + 1;
                a2 = v117;
                v42 = heap_Calloc(*(a1 + 8), 1, v41);
                *(v115 + 8 * v40) = v42;
                if (!v42)
                {
                  break;
                }

                strcpy(v42, v36);
                v47 = addToAllPredictions(a1, v117, v36, v114, &v118);
                if ((v47 & 0x80000000) != 0)
                {
                  NumericFeatureValue = v47;
                  goto LABEL_84;
                }

                LOWORD(v40) = v40 + 1;
                v36 = v39 + 1;
                v39 = strchr(v39 + 1, 59);
                if (!v39)
                {
                  v40 = v40;
                  goto LABEL_36;
                }
              }

LABEL_78:
              NumericFeatureValue = 2304778250;
              v107 = *(a1 + 32);
              v108 = a2;
LABEL_83:
              log_OutPublic(v107, v108, 24048, 0, v43, v44, v45, v46, v111);
              goto LABEL_84;
            }

            if (v36)
            {
              break;
            }

LABEL_39:
            setDictKeyString(&v126, "nn_tn_predictionsThresholds", v22);
            v116 = *(a6 + 48);
            *&v125[3] = 0;
            *&v125[1] = -1;
            v125[0] = 0;
            v50 = (*(a3 + 96))(a4, a5, "fecfg", &v126, &v125[3], &v125[1], v125);
            NumericFeatureValue = v50;
            if ((v50 & 0x80000000) != 0 || !*&v125[1])
            {
              if ((v50 & 0x80000000) != 0)
              {
                goto LABEL_95;
              }
            }

            else
            {
              v113 = v27;
              v51 = **&v125[3];
              v52 = strchr(**&v125[3], v125[0]);
              if (v52)
              {
                *v52 = 0;
              }

              v53 = strchr(v51, 59);
              if (v53)
              {
                v54 = v53;
                while (1)
                {
                  *v54 = 0;
                  v55 = strchr(v51, 44);
                  if (!v55)
                  {
                    break;
                  }

                  v60 = v55;
                  v61 = strlen(v51);
                  v62 = heap_Calloc(*(a1 + 8), 1, v61 + 1);
                  if (!v62)
                  {
                    goto LABEL_82;
                  }

                  v63 = v62;
                  v64 = strlen(v62);
                  bzero(v63, v64);
                  strncpy(v63, v51, (v60 - v51));
                  v65 = strlen(v51);
                  v66 = heap_Calloc(*(a1 + 8), 1, v65 + 1);
                  if (!v66)
                  {
                    goto LABEL_85;
                  }

                  v71 = v66;
                  v72 = strlen(v51);
                  bzero(v71, v72 + 1);
                  strcpy(v71, v60 + 1);
                  v73 = heap_Calloc(*(a1 + 8), 1, 4);
                  if (!v73)
                  {
                    goto LABEL_86;
                  }

                  v78 = v73;
                  *v73 = 0.0;
                  v79 = atof(v71);
                  *v78 = v79;
                  log_OutText(*(a1 + 32), v117, 5, 0, "Adding individual threshold %s : %1.5lf", v80, v81, v82, v63);
                  v83 = ssftmap_Insert(v116, v63, v78);
                  if ((v83 & 0x80000000) != 0)
                  {
                    goto LABEL_87;
                  }

                  v51 = v54 + 1;
                  v54 = strchr(v54 + 1, 59);
                  heap_Free(*(a1 + 8), v63);
                  heap_Free(*(a1 + 8), v71);
                  heap_Free(*(a1 + 8), v78);
                  a2 = v117;
                  if (!v54)
                  {
                    goto LABEL_55;
                  }
                }

LABEL_81:
                log_OutPublic(*(a1 + 32), a2, 24048, 0, v56, v57, v58, v59, v111);
                NumericFeatureValue = 2304778246;
LABEL_84:
                v27 = v113;
                goto LABEL_95;
              }

              if (v51)
              {
LABEL_55:
                v84 = strchr(v51, 44);
                if (!v84)
                {
                  goto LABEL_81;
                }

                v85 = v84;
                v86 = strlen(v51);
                v87 = heap_Calloc(*(a1 + 8), 1, v86 + 1);
                if (!v87)
                {
LABEL_82:
                  NumericFeatureValue = 2304778250;
                  v107 = *(a1 + 32);
                  v108 = v117;
                  goto LABEL_83;
                }

                v63 = v87;
                v88 = strlen(v51);
                bzero(v63, v88);
                strncpy(v63, v51, (v85 - v51));
                v89 = strlen(v51);
                v90 = heap_Calloc(*(a1 + 8), 1, v89 + 1);
                if (!v90)
                {
LABEL_85:
                  v27 = v113;
                  NumericFeatureValue = 2304778250;
                  log_OutPublic(*(a1 + 32), v117, 24048, 0, v67, v68, v69, v70, v111);
                  v109 = *(a1 + 8);
                  v110 = v63;
                  goto LABEL_90;
                }

                v71 = v90;
                v91 = strlen(v51);
                bzero(v71, v91 + 1);
                strcpy(v71, v85 + 1);
                v92 = heap_Calloc(*(a1 + 8), 1, 4);
                if (!v92)
                {
LABEL_86:
                  NumericFeatureValue = 2304778250;
                  log_OutPublic(*(a1 + 32), v117, 24048, 0, v74, v75, v76, v77, v111);
                  v78 = 0;
LABEL_88:
                  v27 = v113;
                  heap_Free(*(a1 + 8), v63);
                  heap_Free(*(a1 + 8), v71);
                  if (v78)
                  {
                    v109 = *(a1 + 8);
                    v110 = v78;
LABEL_90:
                    heap_Free(v109, v110);
                  }

LABEL_95:
                  if (v27)
                  {
                    heap_Free(*(a1 + 8), v27);
                  }

                  goto LABEL_77;
                }

                v78 = v92;
                *v92 = 0.0;
                v93 = atof(v71);
                *v78 = v93;
                log_OutText(*(a1 + 32), v117, 5, 0, "Adding individual threshold %s : %1.5lf", v94, v95, v96, v63);
                v83 = ssftmap_Insert(v116, v63, v78);
                if ((v83 & 0x80000000) != 0)
                {
LABEL_87:
                  NumericFeatureValue = v83;
                  goto LABEL_88;
                }

                heap_Free(*(a1 + 8), v63);
                heap_Free(*(a1 + 8), v71);
                heap_Free(*(a1 + 8), v78);
                a2 = v117;
                v22 = v112;
              }

              v27 = v113;
            }

            setDictKeyString(&v126, "nn_tn_defaultPrediction", v22);
            __c_1 = -1;
            v28 = (*(a3 + 96))(a4, a5, "fecfg", &v126, &__c_3, &__c_1, &__c);
            if ((v28 & 0x80000000) != 0)
            {
              goto LABEL_80;
            }

            if (__c_1)
            {
              v97 = *__c_3;
              v98 = strchr(*__c_3, __c);
              if (v98)
              {
                *v98 = 0;
              }

              v99 = strlen(v97);
              v100 = heap_Calloc(*(a1 + 8), 1, v99 + 1);
              *&v121 = v100;
              if (!v100)
              {
LABEL_94:
                NumericFeatureValue = 2304778250;
                log_OutPublic(*(a1 + 32), a2, 24048, 0, v32, v33, v34, v35, v111);
                goto LABEL_95;
              }

              strcpy(v100, v97);
              v22 = v112;
            }

            setDictKeyString(&v126, "nn_tn_patternIndex", v22);
            v28 = getNumericFeatureValue(a3, a4, a5, &v126, &v121 + 4);
            if ((v28 & 0x80000000) != 0)
            {
              goto LABEL_80;
            }

            NumericFeatureValue = ssftmap_Insert(*(a6 + 40), v27, &v120);
            if ((NumericFeatureValue & 0x80000000) != 0)
            {
              goto LABEL_95;
            }

            v120 = 0u;
            v121 = 0u;
            if (v27)
            {
              heap_Free(*(a1 + 8), v27);
            }

            if (v119 <= v22)
            {
              if (v118 != *(a6 + 72))
              {
                log_OutPublic(*(a1 + 32), a2, 24071, 0, v101, v102, v103, v104, v111);
                NumericFeatureValue = 2304778240;
              }

              goto LABEL_77;
            }
          }

          v40 = 0;
LABEL_36:
          v48 = strlen(v36);
          v49 = heap_Calloc(*(a1 + 8), 1, v48 + 1);
          *(v115 + 8 * v40) = v49;
          if (!v49)
          {
            goto LABEL_78;
          }

          strcpy(v49, v36);
          NumericFeatureValue = addToAllPredictions(a1, a2, v36, v114, &v118);
          v27 = v113;
          v22 = v112;
LABEL_38:
          if ((NumericFeatureValue & 0x80000000) != 0)
          {
            goto LABEL_95;
          }

          goto LABEL_39;
        }
      }
    }

LABEL_75:
    NumericFeatureValue = v13;
  }

LABEL_77:
  v105 = *MEMORY[0x1E69E9840];
  return NumericFeatureValue;
}

uint64_t patternMap_CopyData(_OWORD *a1, void *a2, void *a3)
{
  v3 = 2304778247;
  if (a1 && a2 && a3)
  {
    v6 = heap_Calloc(a2, 1, 32);
    if (v6)
    {
      v3 = 0;
      v7 = a1[1];
      *v6 = *a1;
      v6[1] = v7;
      *a3 = v6;
    }

    else
    {
      return 2304778250;
    }
  }

  return v3;
}

void *patternMap_FreeData(void *result, void *a2)
{
  if (result)
  {
    v3 = result;
    v4 = result[1];
    if (v4)
    {
      if (*(result + 2))
      {
        v5 = 0;
        do
        {
          heap_Free(a2, *(*(v3 + 8) + 8 * v5));
          *(*(v3 + 8) + 8 * v5++) = 0;
        }

        while (v5 < *(v3 + 4));
        v4 = *(v3 + 8);
      }

      *(v3 + 4) = 0;
      heap_Free(a2, v4);
      *(v3 + 8) = 0;
    }

    v6 = *(v3 + 16);
    if (v6)
    {
      heap_Free(a2, v6);
      *(v3 + 16) = 0;
    }

    return heap_Free(a2, v3);
  }

  return result;
}

uint64_t floatThreshold_CopyData(_DWORD *a1, uint64_t a2, void *a3)
{
  v3 = 2304778247;
  if (a1 && a2 && a3)
  {
    v6 = heap_Alloc(a2, 4);
    if (v6)
    {
      v3 = 0;
      *v6 = *a1;
      *a3 = v6;
    }

    else
    {
      return 2304778250;
    }
  }

  return v3;
}

void *floatThreshold_FreeData(void *result, void *a2)
{
  if (result)
  {
    return heap_Free(a2, result);
  }

  return result;
}

char *setDictKeyString(uint64_t a1, const char *a2, unsigned int a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  strcpy(a1, a2);
  v5 = LH_itoa(a3, v7, 0xAu);
  return strcat(a1, v5);
}

uint64_t addToAllPredictions(uint64_t a1, uint64_t a2, char *__s, const char **a4, _WORD *a5)
{
  v10 = *a5;
  if (*a5)
  {
    v11 = a4;
    while (1)
    {
      result = strcmp(__s, *v11);
      if (!result)
      {
        break;
      }

      ++v11;
      if (!--v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v13 = strlen(__s);
    v14 = heap_Calloc(*(a1 + 8), 1, v13 + 1);
    v19 = *a5;
    a4[v19] = v14;
    if (v14)
    {
      *a5 = v19 + 1;
      strcpy(v14, __s);
      return 0;
    }

    else
    {
      log_OutPublic(*(a1 + 32), a2, 24048, 0, v15, v16, v17, v18, v20);
      return 2304778250;
    }
  }

  return result;
}

uint64_t fe_udwl_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v28 = 0;
  v29 = 0;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  if (!a5)
  {
    return 2323652615;
  }

  *a5 = 0;
  *(a5 + 8) = 0;
  inited = InitRsrcFunction(a3, a4, &v29);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = objc_GetObject(*(v29 + 48), "SYNTHSTREAM", &v28);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  Object = objc_GetObject(*(v29 + 48), "FE_DEPES", &v27);
  v10 = *(v29 + 48);
  if ((Object & 0x80000000) != 0)
  {
    objc_ReleaseObject(v10, "SYNTHSTREAM");
  }

  else
  {
    objc_GetObject(v10, "DCTEG", &v26);
    v11 = heap_Calloc(*(v29 + 8), 1, 976);
    if (v11)
    {
      v16 = v11;
      *v11 = a3;
      *(v11 + 8) = a4;
      v18 = v28;
      v17 = v29;
      *(v11 + 16) = v29;
      v19 = *(v18 + 8);
      v20 = v27;
      *(v11 + 40) = *(v27 + 8);
      *(v11 + 48) = v19;
      *(v11 + 24) = *(v20 + 16);
      v21 = v26;
      if (v26)
      {
        v22 = *(v26 + 8);
        if (v22)
        {
          *(v11 + 944) = v22;
          *(v11 + 952) = *(v21 + 16);
        }
      }

      *(v11 + 968) = 512;
      if ((paramc_ParamGetUInt(*(v17 + 40), "udctmaxlookuplen", &v25) & 0x80000000) == 0)
      {
        *(v16 + 968) = v25;
      }

      *a5 = v16;
      *(a5 + 8) = 62346;
    }

    else
    {
      log_OutPublic(*(v29 + 32), "FE_UDWL", 40000, 0, v12, v13, v14, v15, v24);
      objc_ReleaseObject(*(v29 + 48), "SYNTHSTREAM");
      objc_ReleaseObject(*(v29 + 48), "FE_DEPES");
      if (v26)
      {
        objc_ReleaseObject(*(v29 + 48), "DCTEG");
      }

      return 2323652618;
    }
  }

  return Object;
}

uint64_t fe_udwl_ObjClose(uint64_t a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 62346, 976);
  if ((result & 0x80000000) != 0)
  {
    return 2323652616;
  }

  if (a1)
  {
    objc_ReleaseObject(*(*(a1 + 16) + 48), "SYNTHSTREAM");
    objc_ReleaseObject(*(*(a1 + 16) + 48), "FE_DEPES");
    if (*(a1 + 944))
    {
      objc_ReleaseObject(*(*(a1 + 16) + 48), "DCTEG");
    }

    heap_Free(*(*(a1 + 16) + 8), a1);
    return 0;
  }

  return result;
}

uint64_t fe_udwl_ObjReopen(uint64_t a1, int a2)
{
  v6 = 0;
  v3 = safeh_HandleCheck(a1, a2, 62346, 976);
  if ((v3 & 0x80000000) != 0)
  {
    return 2323652616;
  }

  v4 = v3;
  if (a1)
  {
    *(a1 + 968) = 512;
    if ((paramc_ParamGetUInt(*(*(a1 + 16) + 40), "udctmaxlookuplen", &v6) & 0x80000000) == 0)
    {
      *(a1 + 968) = v6;
    }
  }

  return v4;
}

uint64_t fe_udwl_ProcessStart(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if ((safeh_HandleCheck(a1, a2, 62346, 976) & 0x80000000) != 0)
  {
    return 2323652616;
  }

  synstrmaux_InitStreamOpener(a1 + 56, *(*(a1 + 16) + 32), "FE_UDWL");
  synstrmaux_RegisterInStream((a1 + 56), "text/plain;charset=utf-8", 0, a1 + 880);
  synstrmaux_RegisterInStream((a1 + 56), "application/x-realspeak-markers-pp;version=4.0", 0, a1 + 896);
  synstrmaux_RegisterOutStream((a1 + 56), "text/plain;charset=utf-8", a1 + 912);
  synstrmaux_RegisterOutStream((a1 + 56), "application/x-realspeak-markers-pp;version=4.0", a1 + 928);
  v7 = synstrmaux_OpenStreams((a1 + 56), *(a1 + 48), a3, a4);
  if ((v7 & 0x80000000) != 0)
  {
    synstrmaux_CloseStreams((a1 + 56), *(a1 + 48));
  }

  return v7;
}

BOOL sameLanguage(const char *a1, char *__s1, const char *a3)
{
  if (!strcmp(__s1, "normal"))
  {
    return strcmp(a3, a1) == 0;
  }

  else
  {
    return strstr(__s1, a3) != 0;
  }
}

uint64_t fe_udwl_Process(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  __src[1] = *MEMORY[0x1E69E9840];
  v414 = 0uLL;
  v8 = 2323652618;
  v410 = 0;
  v411 = 0;
  v409 = 0;
  v407 = 0;
  v406 = 0;
  v404 = 0;
  v403 = 0;
  v402 = 15;
  v401 = 0;
  v400 = 0;
  *__s = 0;
  v399 = 0;
  v396 = 0;
  if ((safeh_HandleCheck(a1, a2, 62346, 976) & 0x80000000) != 0)
  {
    v8 = 2323652616;
    goto LABEL_43;
  }

  v413 = 0;
  v412 = 0;
  v408 = 0;
  *a5 = 1;
  if (paramc_ParamGetUInt(*(*(a1 + 16) + 40), "numberoutputtranscriptions", &v396) < 0)
  {
    v9 = 1;
  }

  else
  {
    v9 = v396;
  }

  if (paramc_ParamGetUInt(*(*(a1 + 16) + 40), "udctmaxdictretlen", &v396) < 0)
  {
    v10 = 512;
  }

  else
  {
    v10 = v396;
  }

  v11 = (*(*(a1 + 48) + 144))(*(a1 + 880), *(a1 + 888), &v414 + 12, &v414 + 4);
  if ((v11 & 0x80000000) != 0)
  {
    goto LABEL_36;
  }

  v17 = (*(*(a1 + 48) + 144))(*(a1 + 896), *(a1 + 904), &v414 + 8, &v414 + 4);
  if ((v17 & 0x80000000) != 0)
  {
LABEL_42:
    v8 = v17;
    goto LABEL_43;
  }

  log_OutTraceTuningData(*(*(a1 + 16) + 32), 104, "%s%s", v12, v13, v14, v15, v16, "BEG");
  if (HIDWORD(v414))
  {
    v11 = (*(*(a1 + 48) + 144))(*(a1 + 880), *(a1 + 888), &v414 + 12, &v414 + 4);
    if ((v11 & 0x80000000) == 0)
    {
      v22 = heap_Calloc(*(*(a1 + 16) + 8), 1, (HIDWORD(v414) + 1));
      if (!v22)
      {
        log_OutPublic(*(*(a1 + 16) + 32), "FE_UDWL", 40000, 0, v18, v19, v20, v21, v325);
        v48 = 0;
        v34 = 0;
        v31 = 0;
        v393 = 0;
        v35 = 0;
        v49 = 0;
        v50 = 0;
        v394 = 0;
LABEL_55:
        log_OutTraceTuningData(*(*(a1 + 16) + 32), 104, "%s%s %s%u", v43, v44, v45, v46, v47, "END");
        if (v48 && v22)
        {
          v52 = v50 + v403;
          if (v52 < 2)
          {
            goto LABEL_65;
          }

          v53 = 1;
          do
          {
            v54 = v53;
            if (*&v22[4 * v53])
            {
              v55 = *(v48 + 8 * v53);
              if (*v55 != 7)
              {
                heap_Free(*(*(a1 + 16) + 8), *(v55 + 24));
                v55 = *(v48 + 8 * v54);
              }

              heap_Free(*(*(a1 + 16) + 8), v55);
            }

            v53 = v54 + 1;
          }

          while (v52 > (v54 + 1));
        }

        if (!v48)
        {
LABEL_66:
          if (v22)
          {
            heap_Free(*(*(a1 + 16) + 8), v22);
            v401 = 0;
          }

          if (v35)
          {
            heap_Free(*(*(a1 + 16) + 8), v35);
          }

          if (v393)
          {
            heap_Free(*(*(a1 + 16) + 8), v393);
          }

          if (v31)
          {
            heap_Free(*(*(a1 + 16) + 8), v31);
          }

          if (v34)
          {
            heap_Free(*(*(a1 + 16) + 8), v34);
          }

          if (v49)
          {
            heap_Free(*(*(a1 + 16) + 8), v49);
          }

          if (v394)
          {
            heap_Free(*(*(a1 + 16) + 8), v394);
          }

          goto LABEL_43;
        }

LABEL_65:
        heap_Free(*(*(a1 + 16) + 8), v48);
        v404 = 0;
        goto LABEL_66;
      }

      v11 = (*(*(a1 + 48) + 80))(*(a1 + 880), *(a1 + 888), v22, HIDWORD(v414), &v414);
      if ((v11 & 0x80000000) == 0)
      {
        v22[HIDWORD(v414)] = 0;
        log_OutTraceTuningDataBinary(*(*(a1 + 16) + 32), 105, "", "text/plain;charset=utf-8", v22, v414);
        MainLangLC = (*(*(a1 + 48) + 88))(*(a1 + 896), *(a1 + 904), &v413, &v412);
        if ((MainLangLC & 0x80000000) != 0)
        {
          v34 = 0;
          v31 = 0;
          v393 = 0;
          v35 = 0;
          v49 = 0;
          LOWORD(v25) = 0;
        }

        else
        {
          v24 = v412;
          v25 = v412 >> 5;
          if (log_HasTraceTuningDataSubscriber(*(*(a1 + 16) + 32)))
          {
            log_OutTraceTuningDataBinary(*(*(a1 + 16) + 32), 105, "", "application/x-realspeak-markers-pp;version=4.0", v413, v24 & 0x1FFFE0);
          }

          v26 = *(a1 + 944);
          if (!v26 || !(*(v26 + 80))(*(a1 + 952), *(a1 + 960)))
          {
            v51 = (*(*(a1 + 48) + 104))(*(a1 + 912), *(a1 + 920), v22, v414);
            if ((v51 & 0x80000000) == 0)
            {
              log_OutTraceTuningDataBinary(*(*(a1 + 16) + 32), 106, "", "text/plain;charset=utf-8", v22, v414);
              v51 = (*(*(a1 + 48) + 104))(*(a1 + 928), *(a1 + 936), v413, v412);
              if ((v51 & 0x80000000) == 0)
              {
                if (log_HasTraceTuningDataSubscriber(*(*(a1 + 16) + 32)))
                {
                  log_OutTraceTuningDataBinary(*(*(a1 + 16) + 32), 106, "", "application/x-realspeak-markers-pp;version=4.0", v413, v24 & 0x1FFFE0);
                }

                v51 = (*(*(a1 + 48) + 96))(*(a1 + 896), *(a1 + 904), v412);
              }
            }

            v8 = v51;
            v34 = 0;
            v31 = 0;
LABEL_51:
            v393 = 0;
            v35 = 0;
            v49 = 0;
            v394 = 0;
LABEL_54:
            heap_Free(*(*(a1 + 16) + 8), v22);
            v50 = v25;
            v48 = v404;
            v22 = v401;
            goto LABEL_55;
          }

          *v405 = 10994208;
          v399 = "normal";
          v406 = "normal";
          MainLangLC = hlp_GetMainLangLC(*(*(a1 + 16) + 40), v397);
          if ((MainLangLC & 0x80000000) == 0)
          {
            v31 = heap_Calloc(*(*(a1 + 16) + 8), *(a1 + 968) + 1, 1);
            if (v31)
            {
              v32 = v414;
              if (v414 < v10)
              {
                v32 = v10;
              }

              __dst = heap_Calloc(*(*(a1 + 16) + 8), v9 + v9 * v32 + 1, 1);
              if (__dst)
              {
                v33 = v9 + v9 * v10;
                if (v33 > 0xFFFE)
                {
                  v34 = 0;
                  v393 = 0;
                  v35 = 0;
                  v394 = 0;
                  v8 = 2323652623;
LABEL_148:
                  v49 = __dst;
                  goto LABEL_54;
                }

                v360 = v33 + 1;
                v34 = heap_Calloc(*(*(a1 + 16) + 8), v360, 1);
                v60 = *(a1 + 16);
                if (v34)
                {
                  v61 = heap_Alloc(*(v60 + 8), v412);
                  if (v61)
                  {
                    v394 = v61;
                    memcpy(v61, v413, v412);
                    log_OutText(*(*(a1 + 16) + 32), "FE_UDWL", 5, 0, "Markers IN", v62, v63, v64, v325);
                    v356 = v33;
                    v391 = (v24 >> 5);
                    v351 = v24;
                    if ((v24 >> 5))
                    {
                      v357 = v24 >> 5;
                      v68 = v394 + 2;
                      v69 = (v24 >> 5);
                      do
                      {
                        v70 = *(*(a1 + 16) + 32);
                        v71 = *(v68 - 2);
                        v72 = *v68;
                        v73 = v68[1];
                        v74 = v68[2];
                        if (v71 == 0x4000)
                        {
                          v332 = v68[1];
                          log_OutText(v70, "FE_UDWL", 5, 0, "Marker [type=SYNC] Ref (%u,%u) Cur(%u,%u)", v65, v66, v67, *(v68 - 1));
                        }

                        else
                        {
                          v333 = v68[1];
                          log_OutText(v70, "FE_UDWL", 5, 0, "Marker [type=%5u] Ref (%u,%u) Cur(%u,%u)", v65, v66, v67, v71);
                        }

                        v68 += 8;
                        --v69;
                      }

                      while (v69);
                      v75 = v394 + 4;
                      v76 = v391;
                      LOWORD(v25) = v357;
                      do
                      {
                        if (*(v75 - 4) == 1)
                        {
                          *v75 = 0;
                        }

                        v75 += 8;
                        --v76;
                      }

                      while (v76);
                    }

                    v77 = (*(*(a1 + 40) + 112))(*(a1 + 24), *(a1 + 32), &v407, 0);
                    if ((v77 & 0x80000000) != 0)
                    {
                      v393 = 0;
                      v35 = 0;
                      v8 = v77;
                      goto LABEL_148;
                    }

                    MultiWordEntry = v77;
                    v404 = heap_Calloc(*(*(a1 + 16) + 8), v391, 8);
                    v82 = *(a1 + 16);
                    v381 = v404;
                    if (!v404 || (v401 = heap_Calloc(*(v82 + 8), v391, 4), v82 = *(a1 + 16), (v377 = v401) == 0) || (v83 = heap_Calloc(*(v82 + 8), (v414 + 1), 2), v82 = *(a1 + 16), (v343 = v83) == 0))
                    {
                      log_OutPublic(*(v82 + 32), "FE_UDWL", 40000, 0, v78, v79, v80, v81, v326);
                      v393 = 0;
                      v35 = 0;
                      goto LABEL_148;
                    }

                    v358 = v25;
                    v393 = heap_Calloc(*(v82 + 8), (v414 + 1), 2);
                    if (!v393)
                    {
                      log_OutPublic(*(*(a1 + 16) + 32), "FE_UDWL", 40000, 0, v84, v85, v86, v87, v326);
                      v393 = 0;
                      goto LABEL_458;
                    }

                    v359 = v394 + 3;
                    v390 = v394[3];
                    if (!v391)
                    {
                      v372 = 0;
                      goto LABEL_151;
                    }

                    v88 = 0;
                    do
                    {
                      v89 = &v394[8 * v88];
                      if (v89[3] != v390)
                      {
                        break;
                      }

                      hlp_KeepTrackBeforeMovingOn(&v394[8 * v88], &v402 + 1, &v406, &v399, &v402);
                      *(v381 + 8 * v88) = v89;
                      *(v377 + 4 * v88) = 0;
                      v88 = (v88 + 1);
                    }

                    while (v88 < v25);
                    v372 = v88;
                    v90 = 0;
                    v354 = v399;
                    v362 = v406;
                    v91 = 0xFFFFLL;
                    v92 = v394;
                    v93 = v391;
                    while (1)
                    {
                      v94 = v91;
                      v95 = &v92[8 * v90];
                      v96 = *v95;
                      if (*v95 == 7 || v96 == 21)
                      {
                        v91 = 0xFFFFLL;
                        if (v94 != 0xFFFF)
                        {
                          goto LABEL_123;
                        }
                      }

                      else
                      {
                        if (v96 == 32)
                        {
                          v98 = v95[6];
                          if (!v98)
                          {
                            v365 = v94;
                            v378 = v94;
                            if (v94 == 0xFFFF)
                            {
                              log_OutText(*(*(a1 + 16) + 32), "FE_UDWL", 5, 0, "Warning : Ignoring multiword end tag at position %u - start position missing (or ignored)", v85, v86, v87, (v95[3] - v390));
                            }

                            else
                            {
                              v382 = v95[3] - v390;
                              v100 = (*(v95 + 6) - v390);
                              if (v100 == v414 && utf8_BelongsToSet(3u, v22, v100 - 1, v100))
                              {
                                if (v382 == 1)
                                {
                                  LOWORD(v382) = 1;
                                }

                                else
                                {
                                  v101 = (v382 - 1);
                                  if (utf8_BelongsToSet(3u, v22, v101, v414))
                                  {
                                    v102 = v382 - 1;
                                    do
                                    {
                                      LOWORD(v382) = v102;
                                      PreviousUtf8OffsetLimit = utf8_GetPreviousUtf8OffsetLimit(v22, v101, v414);
                                      if (!PreviousUtf8OffsetLimit)
                                      {
                                        break;
                                      }

                                      v101 = PreviousUtf8OffsetLimit;
                                      v102 = PreviousUtf8OffsetLimit;
                                    }

                                    while (utf8_BelongsToSet(3u, v22, PreviousUtf8OffsetLimit, v414));
                                  }
                                }
                              }

                              LOWORD(v411) = v356;
                              if (v382 - v378 >= *(a1 + 968))
                              {
                                log_OutText(*(*(a1 + 16) + 32), "FE_UDWL", 5, 0, "MW lookup len %u  exceeds maxLookupLen %u - skipping", v85, v86, v87, v382 - v378);
                              }

                              else
                              {
                                *(v343 + 2 * v365) = v382;
                                *(&v329 + 1) = &__s[4];
                                *&v329 = &v411;
                                if (hlp_ValidateMultiWordMarker(a1, a2, v22, v365, v382, v31, v354, v362, v34, v329, __s, v409))
                                {
                                  *(v393 + 2 * v365) = v382;
                                }
                              }
                            }

                            v91 = 0xFFFFLL;
                            goto LABEL_140;
                          }

                          if (v98 == 1)
                          {
                            if (v94 != 0xFFFF)
                            {
                              v328 = (v95[3] - v390);
                              log_OutText(*(*(a1 + 16) + 32), "FE_UDWL", 5, 0, "Warning : Ignoring multiword start tag at position %u - nested tag found at position %u, using this as start position", v85, v86, v87, v94);
                            }

                            v91 = v95[3] - v390;
LABEL_140:
                            v92 = v394;
                            v93 = v391;
                            goto LABEL_141;
                          }
                        }

                        else if (v96 == 34 && ~v94 != 0)
                        {
LABEL_123:
                          log_OutText(*(*(a1 + 16) + 32), "FE_UDWL", 5, 0, "Warning : Ignoring multiword tag at position %u - contains internal tags (tn, phon)", v85, v86, v87, v94);
                          v93 = v391;
                          v92 = v394;
                          v91 = 0xFFFFLL;
                          goto LABEL_141;
                        }

                        v91 = v94;
                      }

LABEL_141:
                      if (++v90 == v93)
                      {
                        if (v91 != 0xFFFF)
                        {
                          log_OutText(*(*(a1 + 16) + 32), "FE_UDWL", 5, 0, "Warning : Ignoring multiword tag at position %u - no closing tag", v85, v86, v87, v91);
                        }

LABEL_151:
                        v352 = strlen(v22);
                        if (v352)
                        {
                          v107 = 0;
                          v348 = 0;
                          v350 = 0;
                          v108 = 0;
                          v363 = v372;
                          v109 = v352;
                          while (1)
                          {
                            v410 = 0;
                            v110 = v108;
                            v379 = v108;
                            NextUtf8OffsetLimit = v108;
                            if (v108 < v109)
                            {
                              NextUtf8OffsetLimit = v108;
                              if (utf8_BelongsToSet(3u, v22, v108, v109))
                              {
                                do
                                {
                                  NextUtf8OffsetLimit = utf8_GetNextUtf8OffsetLimit(v22, v110, v109);
                                  v110 = NextUtf8OffsetLimit;
                                }

                                while (NextUtf8OffsetLimit < v109 && utf8_BelongsToSet(3u, v22, NextUtf8OffsetLimit, v109));
                              }
                            }

                            if (v348)
                            {
                              v353 = 0;
                              v111 = v379;
                              v112 = NextUtf8OffsetLimit;
                            }

                            else
                            {
                              v113 = HIWORD(v400);
                              v114 = v400;
                              if (v379 <= NextUtf8OffsetLimit)
                              {
                                v115 = v379;
                                do
                                {
                                  v116 = *(v343 + 2 * v115);
                                  if (*(v343 + 2 * v115))
                                  {
                                    v114 = *(v343 + 2 * v115);
                                    v113 = v115;
                                  }

                                  ++v115;
                                }

                                while (v115 <= NextUtf8OffsetLimit && !v116);
                                v353 = v116 != 0;
                              }

                              else
                              {
                                v353 = 0;
                              }

                              HIWORD(v400) = v113;
                              LOWORD(v400) = v114;
                              v112 = NextUtf8OffsetLimit;
                              if (v379 == NextUtf8OffsetLimit)
                              {
                                v111 = v379;
                                v117 = *(v343 + 2 * v379);
                                if (v117)
                                {
                                  HIWORD(v400) = v379;
                                  LOWORD(v400) = v117;
                                  v353 = 1;
                                }
                              }

                              else
                              {
                                v111 = v379;
                              }
                            }

                            v118 = v112;
                            if (v112 > v111)
                            {
                              if (v112 >= HIWORD(v400))
                              {
                                v118 = HIWORD(v400);
                              }

                              if (v353 && v112 < v400)
                              {
                                v112 = v118;
                              }

                              else
                              {
                                v112 = v112;
                              }

                              v384 = v112;
                              v119 = v112 - v107;
                              if (v119 >= 1)
                              {
                                v120 = &v22[v111];
                                MultiWordEntry = (*(*(a1 + 48) + 104))(*(a1 + 912), *(a1 + 920), v120, v119);
                                if ((MultiWordEntry & 0x80000000) != 0)
                                {
                                  goto LABEL_420;
                                }

                                log_OutTraceTuningDataBinary(*(*(a1 + 16) + 32), 106, "", "text/plain;charset=utf-8", v120, v119);
                              }

                              v112 = v384;
                              v111 = v384;
                            }

                            v385 = v112;
                            v121 = v363;
                            if (v391 > v363)
                            {
                              v122 = v111;
                              v366 = v401;
                              v373 = v404;
                              v123 = v363 + v403;
                              do
                              {
                                v124 = &v394[8 * v121];
                                v125 = v124[3];
                                if (v122 < (v125 - v390))
                                {
                                  break;
                                }

                                v124[3] = v125 + v350;
                                *(v373 + 8 * v123) = v124;
                                *(v366 + 4 * v123) = 0;
                                hlp_KeepTrackBeforeMovingOn(v124, &v402 + 1, &v406, &v399, &v402);
                                v121 = (v121 + 1);
                                ++v123;
                              }

                              while (v391 > v121);
                            }

                            v363 = v121;
                            LOWORD(v411) = v356;
                            if (v353)
                            {
                              v386 = v400;
                              v126 = HIWORD(v400);
                              v127 = v400 - HIWORD(v400);
                              HIWORD(v411) = v400 - HIWORD(v400);
                              log_OutText(*(*(a1 + 16) + 32), "FE_UDWL", 5, 0, "SET MW %u %u", v104, v105, v106, HIWORD(v400));
                              strncpy(v31, &v22[v126], v127);
                              v345 = 0;
                              v31[v127] = 0;
                              v355 = v127;
                              v128 = v386;
                              goto LABEL_190;
                            }

                            v395 = 0;
                            MultiWordEntry = hlp_FindMultiWordEntry(a1, a2, v22, v352, v394, (v351 >> 5), v393, v385, v399, v406, &v400 + 1, &v400, v31, &v411 + 1, v356, &__s[4], __s, &v395);
                            if ((MultiWordEntry & 0x80000000) != 0)
                            {
                              goto LABEL_420;
                            }

                            if (v395)
                            {
                              break;
                            }

                            bzero(v31, *(a1 + 968) + 1);
                            if (v385 >= v352)
                            {
                              v355 = 0;
                              v380 = v385;
                              LODWORD(v179) = v385;
LABEL_265:
                              v180 = v352;
                            }

                            else
                            {
                              v355 = 0;
                              v179 = v385;
                              v380 = v385;
                              v180 = v352;
                              while (!utf8_BelongsToSet(3u, v22, v179, v180))
                              {
                                Utf8Symbol = utf8_GetUtf8Symbol(v22, v179, v180, __src);
                                if (Utf8Symbol + v355 >= *(a1 + 968))
                                {
                                  LODWORD(v179) = v380;
                                  goto LABEL_265;
                                }

                                v182 = Utf8Symbol;
                                strcpy(&v31[v355], __src);
                                v355 += v182;
                                v180 = v352;
                                v380 = utf8_GetNextUtf8OffsetLimit(v22, v179, v352);
                                v179 = v380;
                                if (v380 >= v352)
                                {
                                  break;
                                }
                              }
                            }

                            HIWORD(v411) = v355;
                            if (v179 >= v180 || utf8_BelongsToSet(3u, v22, v179, v352))
                            {
                              if (v355)
                              {
                                v347 = 0;
                                v345 = 0;
                                v134 = v391;
                                v135 = v363;
                                v128 = v380;
                                LOWORD(v126) = v385;
                                goto LABEL_191;
                              }
                            }

                            else
                            {
                              for (i = v380; v380 < v352; i = v380)
                              {
                                if (utf8_BelongsToSet(3u, v22, i, v352))
                                {
                                  break;
                                }

                                v380 = utf8_GetNextUtf8OffsetLimit(v22, i, v352);
                              }

                              v193 = i - v385;
                              if (v193 >= 1)
                              {
                                MultiWordEntry = (*(*(a1 + 48) + 104))(*(a1 + 912), *(a1 + 920), &v22[v385], v193);
                                if ((MultiWordEntry & 0x80000000) != 0)
                                {
                                  goto LABEL_420;
                                }

                                log_OutTraceTuningDataBinary(*(*(a1 + 16) + 32), 106, "", "text/plain;charset=utf-8", &v22[v385], v193);
                              }
                            }

LABEL_405:
                            v108 = v380;
LABEL_406:
                            v107 = v108;
                            v109 = v352;
                            if (v108 >= v352)
                            {
                              v291 = v403;
                              v292 = v350;
                              LODWORD(v372) = v363;
                              goto LABEL_422;
                            }
                          }

                          v126 = HIWORD(v400);
                          v132 = v400;
                          log_OutText(*(*(a1 + 16) + 32), "FE_UDWL", 5, 0, "SET UMW %u %u", v129, v130, v131, HIWORD(v400));
                          v133 = HIWORD(v411);
                          strncpy(v31, &v22[v126], HIWORD(v411));
                          v31[v133] = 0;
                          v345 = 1;
                          v355 = v133;
                          v128 = v132;
LABEL_190:
                          v347 = !v353;
                          v134 = v391;
                          v135 = v363;
LABEL_191:
                          v408 = 1;
                          v136 = v135;
                          v380 = v128;
                          v387 = v126;
                          if (v134 <= v135)
                          {
                            v340 = v135;
                          }

                          else
                          {
                            v137 = v126;
                            v367 = v404;
                            v364 = v403;
                            v138 = v401;
                            while (1)
                            {
                              v139 = &v394[8 * v136];
                              v140 = v139[3];
                              if (v137 < (v140 - v390))
                              {
                                break;
                              }

                              v139[3] = v140 + v350;
                              v141 = v364 + v136;
                              *(v367 + 8 * v141) = v139;
                              *(v138 + 4 * v141) = 0;
                              hlp_KeepTrackBeforeMovingOn(v139, &v402 + 1, &v406, &v399, &v402);
                              v136 = (v136 + 1);
                              if (v391 <= v136)
                              {
                                v363 = v136;
                                v340 = v136;
                                goto LABEL_198;
                              }
                            }

                            v340 = v136;
                            v363 = v136;
                          }

LABEL_198:
                          LOWORD(v411) = v356;
                          __s[4] = 0;
                          v142 = v406;
                          v148 = strcmp(v406, "spell") && HIDWORD(v402) == 0;
                          v149 = v356;
                          LODWORD(v349) = v356;
                          if (v148)
                          {
                            strncpy(__dst, &v22[v387], v355);
                            __dst[v355] = 0;
                            log_OutText(*(*(a1 + 16) + 32), "FE_UDWL", 5, 0, "lookup = %s", v150, v151, v152, __dst);
                            bzero(v34, v360);
                            *(&v327 + 1) = &__s[4];
                            *&v327 = &v411;
                            MultiWordEntry = fe_udwl_MatchUDctWord(a1, a2, 1, v31, v399, v142, &v408, v34, v327, __s, &v409, &v410 + 1, &v410);
                            if ((MultiWordEntry & 0x80000000) == 0)
                            {
                              v153 = strlen(v34);
                              log_OutEvent(*(*(a1 + 16) + 32), 32, "%s%s%s", v154, v155, v156, v157, v158, "TEXT");
                              v149 = v411;
                              LODWORD(v349) = v153;
                              goto LABEL_205;
                            }

                            LODWORD(v349) = v356;
                          }

                          else
                          {
LABEL_205:
                            if ((MultiWordEntry & 0x80000000) == 0 && v149 && v356 > v149)
                            {
                              log_OutEvent(*(*(a1 + 16) + 32), 19, "%s%s", v143, v144, v145, v146, v147, "URI");
                              log_OutText(*(*(a1 + 16) + 32), "FE_UDWL", 5, 0, "return string = %s", v159, v160, v161, v34);
                              v344 = v390 + v387 + v350;
                              v339 = sameLanguage(v397, v399, &__s[4]);
                              if (!v339)
                              {
                                inserted = hlp_InsertLangMarker(a1, &__s[4], v344, v344, &v404, &v401, (v351 >> 5), v363, &v403);
                                if ((inserted & 0x80000000) != 0)
                                {
                                  goto LABEL_449;
                                }

                                MultiWordEntry = 0;
                              }

                              if (v408 == 4)
                              {
                                if (v411 >= 4u && *v34 == 12049 && v34[2] == 60)
                                {
                                  v184 = &v34[v349 - 3];
                                  v185 = *v184;
                                  v186 = *(v184 + 2);
                                  if (v185 == 12049 && v186 == 60)
                                  {
                                    memmove(v34, v34 + 3, v349 - 6);
                                    v349 = v349 - 6;
                                    v34[v349] = 0;
                                    LOWORD(v411) = v411 - 6;
                                    log_OutText(*(*(a1 + 16) + 32), "FE_UDWL", 5, 0, "transformed lookup = %s", v212, v213, v214, v34);
                                    v370 = v403;
                                    v215 = v391 + v403;
                                    v216 = heap_Realloc(*(*(a1 + 16) + 8), v404, 8 * v215 + 16);
                                    if (!v216)
                                    {
                                      goto LABEL_457;
                                    }

                                    v217 = v216;
                                    v404 = v216;
                                    v218 = heap_Realloc(*(*(a1 + 16) + 8), v401, 4 * v215 + 8);
                                    if (!v218)
                                    {
                                      goto LABEL_457;
                                    }

                                    v219 = v218;
                                    v401 = v218;
                                    *(v218 + 4 * v215) = 0;
                                    v220 = heap_Calloc(*(*(a1 + 16) + 8), 1, 32);
                                    if (!v220)
                                    {
                                      goto LABEL_457;
                                    }

                                    v220[6] = 60;
                                    *v220 = 7;
                                    v220[1] = v344;
                                    v220[2] = 0;
                                    v220[3] = v344;
                                    v220[4] = 0;
                                    v221 = (v217 + 8 * (v340 + v370));
                                    *v221 = v220;
                                    v222 = (v219 + 4 * (v340 + v370));
                                    *v222 = 1;
                                    v223 = heap_Calloc(*(*(a1 + 16) + 8), 1, 32);
                                    if (!v223)
                                    {
                                      v403 = v370 + 1;
                                      goto LABEL_457;
                                    }

                                    LOWORD(v374) = 0;
                                    v223[6] = v402;
                                    v224 = v344 + v349;
                                    *v223 = 7;
                                    v223[1] = v224;
                                    v223[2] = 0;
                                    v223[3] = v224;
                                    v223[4] = 0;
                                    v221[1] = v223;
                                    v222[1] = 1;
                                    v403 = v370 + 2;
                                    goto LABEL_351;
                                  }
                                }
                              }

                              else if (v408 == 1)
                              {
                                v368 = v403;
                                v163 = v391 + v403;
                                v338 = heap_Realloc(*(*(a1 + 16) + 8), v404, 8 * v163 + 16);
                                if (!v338)
                                {
                                  goto LABEL_457;
                                }

                                v404 = v338;
                                v337 = heap_Realloc(*(*(a1 + 16) + 8), v401, 4 * v163 + 8);
                                if (!v337)
                                {
                                  goto LABEL_457;
                                }

                                v401 = v337;
                                *(v337 + 4 * v163) = 0;
                                v335 = heap_Calloc(*(*(a1 + 16) + 8), 1, 32);
                                if (!v335)
                                {
                                  goto LABEL_457;
                                }

                                v168 = strlen(v34);
                                if (strlen(__s) == 3)
                                {
                                  v169 = 14;
                                }

                                else
                                {
                                  v169 = 10;
                                }

                                v342 = heap_Calloc(*(*(a1 + 16) + 8), (v169 + v168), 1);
                                if (!v342)
                                {
                                  log_OutPublic(*(*(a1 + 16) + 32), "FE_UDWL", 40000, 0, v170, v171, v172, v173, v326);
                                  v323 = *(*(a1 + 16) + 8);
                                  v324 = v335;
                                  goto LABEL_451;
                                }

                                strcpy(v342, v34);
                                if (v353 || v347)
                                {
                                  v174 = strlen(v31);
                                  if (v355)
                                  {
                                    v175 = v174;
                                    if (!utf8_BelongsToSet(3u, v31, 0, v174))
                                    {
                                      v178 = 0;
                                      goto LABEL_278;
                                    }

                                    v176 = 0;
                                    while (1)
                                    {
                                      NextUtf8Offset = utf8_GetNextUtf8Offset(v31, v176);
                                      v178 = NextUtf8Offset;
                                      if (v355 <= NextUtf8Offset)
                                      {
                                        break;
                                      }

                                      v176 = NextUtf8Offset;
                                      if (!utf8_BelongsToSet(3u, v31, NextUtf8Offset, v175))
                                      {
                                        goto LABEL_278;
                                      }
                                    }

                                    if (v355)
                                    {
LABEL_278:
                                      PreviousUtf8Offset = v355;
                                      while (1)
                                      {
                                        v195 = PreviousUtf8Offset;
                                        if (!utf8_BelongsToSet(3u, v31, PreviousUtf8Offset, v175))
                                        {
                                          break;
                                        }

                                        PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(v31, v195);
                                        if (!PreviousUtf8Offset)
                                        {
                                          goto LABEL_292;
                                        }
                                      }

                                      v334 = v195;
                                      if (v195 > v178)
                                      {
                                        v375 = 1;
                                        do
                                        {
                                          if (!v31[v178])
                                          {
                                            break;
                                          }

                                          v196 = v178;
                                          if (utf8_BelongsToSet(3u, v31, v178, v175))
                                          {
                                            ++v375;
                                            if (v178 < v355)
                                            {
                                              while (1)
                                              {
                                                v196 = v178;
                                                if (!utf8_BelongsToSet(3u, v31, v178, v175))
                                                {
                                                  break;
                                                }

                                                v197 = utf8_GetNextUtf8Offset(v31, v178);
                                                v178 = v197;
                                                if (v355 <= v197)
                                                {
                                                  v196 = v197;
                                                  break;
                                                }
                                              }
                                            }
                                          }

                                          v178 = utf8_GetNextUtf8Offset(v31, v196);
                                        }

                                        while (v334 >= v178);
LABEL_293:
                                        LOWORD(__src[0]) = 0;
                                        LOWORD(v395) = 0;
                                        v198 = v411;
                                        v199 = strchr(v342, 18);
                                        v200 = v199 - v342;
                                        if (!v199)
                                        {
                                          v200 = v198;
                                        }

                                        v201 = utf8_countNbrOfPhonWords(v342, v200, __src, &v395);
                                        v205 = v375;
                                        v206 = v375 - v201;
                                        if (v375 < v201)
                                        {
                                          v374 = v201 - v375;
                                          log_OutText(*(*(a1 + 16) + 32), "FE_UDWL", 5, 0, "TYPE1 modification : insert %u dummy words (%u orthographic words, %u phonetic words)", v202, v203, v204, (v201 - v205));
                                          goto LABEL_330;
                                        }

                                        if (v375 > v201)
                                        {
                                          log_OutText(*(*(a1 + 16) + 32), "FE_UDWL", 5, 0, "TYPE2 modification : hyphenate words (%u orthographic words, %u phonetic words)", v202, v203, v204, v375);
                                          v207 = v355;
                                          strncpy(__dst, &v22[v387], v355)[v355] = 0;
                                          v211 = v355;
                                          while (--v211)
                                          {
                                            if (__dst[v211] != 32)
                                            {
                                              while (__dst[v211] != 32)
                                              {
                                                if (!--v211)
                                                {
                                                  goto LABEL_318;
                                                }
                                              }

                                              while (v206)
                                              {
                                                while (__dst[v211] == 32)
                                                {
                                                  __dst[v211--] = 45;
                                                  if (!v211)
                                                  {
                                                    goto LABEL_318;
                                                  }
                                                }

                                                --v206;
                                                while (__dst[v211] != 32)
                                                {
                                                  if (!--v211)
                                                  {
                                                    goto LABEL_318;
                                                  }
                                                }
                                              }

                                              break;
                                            }
                                          }

LABEL_318:
                                          log_OutText(*(*(a1 + 16) + 32), "FE_UDWL", 5, 0, "TYPE2 modification : now %s", v208, v209, v210, __dst);
                                          if (v355)
                                          {
                                            v228 = &v22[v387];
                                            v229 = __dst;
                                            do
                                            {
                                              v230 = *v229++;
                                              *v228++ = v230;
                                              --v207;
                                            }

                                            while (v207);
                                          }

                                          if (v391)
                                          {
                                            v231 = 0;
                                            v232 = v394 + 3;
                                            do
                                            {
                                              v233 = *v232 - *v359;
                                              if (v233 > v387 && v233 < v387 + v355)
                                              {
                                                v330 = *v232;
                                                log_OutText(*(*(a1 + 16) + 32), "FE_UDWL", 5, 0, "realign Markers in midword postions to start of word Mrk[%u].posCur from %u to %u", v225, v226, v227, v231);
                                                *v232 = v390 + (v387 + v350);
                                              }

                                              ++v231;
                                              v232 += 8;
                                            }

                                            while (v391 != v231);
                                          }
                                        }

LABEL_329:
                                        v374 = 0;
                                        goto LABEL_330;
                                      }
                                    }
                                  }

LABEL_292:
                                  v375 = 0;
                                  goto LABEL_293;
                                }

                                if (v411 < 3u)
                                {
                                  goto LABEL_329;
                                }

                                v374 = 0;
                                v188 = 1;
                                do
                                {
                                  v189 = &v342[v188];
                                  v190 = *v189;
                                  if (v190 == 35 || v190 == 95)
                                  {
                                    if (v189[1] == 18)
                                    {
                                      v191 = v374;
                                    }

                                    else
                                    {
                                      v191 = v374 + 1;
                                    }

                                    v374 = v191;
                                  }

                                  else if (v190 == 18)
                                  {
                                    break;
                                  }

                                  ++v188;
                                }

                                while ((v411 - 1) > v188);
LABEL_330:
                                if (v355)
                                {
                                  v235 = v355;
                                  v236 = &v22[v387];
                                  do
                                  {
                                    if (*v236 == 95)
                                    {
                                      *v236 = 45;
                                    }

                                    ++v236;
                                    --v235;
                                  }

                                  while (v235);
                                }

                                *&v342[strlen(v342)] = 20;
                                strcat(v342, "EXTDCT");
                                if (strlen(__s) == 3)
                                {
                                  *&v342[strlen(v342)] = 20;
                                  strcat(v342, __s);
                                }

                                *(v335 + 3) = v342;
                                *v335 = 34;
                                *(v335 + 1) = v344;
                                v237 = v340 + v368;
                                v238 = v363;
                                *(v335 + 2) = 0;
                                *(v335 + 3) = v344;
                                *(v335 + 4) = 0;
                                *(v338 + 8 * v237) = v335;
                                *(v337 + 4 * v237) = 1;
                                if (v391 > v363)
                                {
                                  while (1)
                                  {
                                    v239 = &v394[8 * v238];
                                    v240 = v239[3];
                                    if (v380 < (v240 - v390))
                                    {
                                      break;
                                    }

                                    v241 = v240 + v350;
                                    if (*v239 == 36)
                                    {
                                      v241 = v390 + v350 + v380 + 3 * v374;
                                    }

                                    if (*v239 == 21)
                                    {
                                      v241 = v390 + v350 + v380 + 3 * v374;
                                    }

                                    v239[3] = v241;
                                    v242 = v368 + v238;
                                    *(v338 + 8 + 8 * v242) = v239;
                                    *(v337 + 4 + 4 * v242) = 0;
                                    hlp_KeepTrackBeforeMovingOn(v239, &v402 + 1, &v406, &v399, &v402);
                                    v238 = (v238 + 1);
                                    if (v391 <= v238)
                                    {
                                      v363 = v238;
                                      LODWORD(v238) = v238;
                                      goto LABEL_346;
                                    }
                                  }

                                  v363 = v238;
                                }

LABEL_346:
                                if (v380 < v352)
                                {
                                  v243 = heap_Calloc(*(*(a1 + 16) + 8), 1, 32);
                                  v248 = *(a1 + 16);
                                  if (!v243)
                                  {
                                    log_OutPublic(*(v248 + 32), "FE_UDWL", 40000, 0, v244, v245, v246, v247, v326);
LABEL_455:
                                    v403 = v368 + 1;
                                    goto LABEL_458;
                                  }

                                  v249 = v243;
                                  v341 = *(v248 + 8);
                                  v336 = v406;
                                  v250 = strlen(v406);
                                  v251 = heap_Alloc(v341, (v250 + 1));
                                  if (!v251)
                                  {
                                    log_OutPublic(*(*(a1 + 16) + 32), "FE_UDWL", 40000, 0, v252, v253, v254, v255, v326);
                                    heap_Free(*(*(a1 + 16) + 8), v249);
                                    goto LABEL_455;
                                  }

                                  *(v249 + 24) = strcpy(v251, v336);
                                  v256 = v390 + v350 + v380 + 3 * v374;
                                  *v249 = 21;
                                  *(v249 + 4) = v256;
                                  *(v249 + 8) = 0;
                                  *(v249 + 12) = v256;
                                  *(v249 + 16) = 0;
                                  *(v338 + 8 * (v238 + v368) + 8) = v249;
                                  *(v337 + 4 * (v238 + v368) + 4) = 1;
                                  LOWORD(v368) = v368 + 1;
                                }

                                v350 += 3 * v374;
                                v403 = v368 + 1;
LABEL_351:
                                if (v339)
                                {
                                  v369 = (v345 | v353) == 0;
                                  goto LABEL_353;
                                }

                                if (v408 == 1)
                                {
                                  v259 = v380;
                                }

                                else
                                {
                                  v259 = v349;
                                }

                                v260 = v390;
                                if (v408 != 1)
                                {
                                  v260 = v390 + v387;
                                }

                                inserted = hlp_InsertLangMarker(a1, v399, v260 + v259 + v350, v260 + v259 + v350, &v404, &v401, (v351 >> 5), v363, &v403);
                                if ((inserted & 0x80000000) != 0)
                                {
                                  goto LABEL_449;
                                }

                                v258 = 0;
                                v369 = (v345 | v353) == 0;
                                v257 = v387;
LABEL_361:
                                v261 = v380 - v257;
                                if (v261 < 1)
                                {
                                  goto LABEL_367;
                                }

                                if (v411 >= v10)
                                {
                                  v258 = 1;
                                }

                                if (v408 == 1 || !v411 || v258)
                                {
                                  v285 = v410;
                                  if (v261 <= v410)
                                  {
                                    v285 = 0;
                                    LOWORD(v410) = 0;
                                  }

                                  MultiWordEntry = (*(*(a1 + 48) + 104))(*(a1 + 912), *(a1 + 920), &v22[v387], (v261 - v285));
                                  if ((MultiWordEntry & 0x80000000) != 0)
                                  {
                                    goto LABEL_420;
                                  }

                                  log_OutTraceTuningDataBinary(*(*(a1 + 16) + 32), 106, "", "text/plain;charset=utf-8", &v22[v387], v261 - v410);
                                  v264 = v410;
                                  v346 = v261 - v410;
                                  if (v374)
                                  {
                                    v286 = 0;
                                    v287 = v346;
                                    while (1)
                                    {
                                      v288 = strlen(v405);
                                      MultiWordEntry = (*(*(a1 + 48) + 104))(*(a1 + 912), *(a1 + 920), v405, v288);
                                      if ((MultiWordEntry & 0x80000000) != 0)
                                      {
                                        break;
                                      }

                                      v289 = strlen(v405);
                                      log_OutTraceTuningDataBinary(*(*(a1 + 16) + 32), 106, "", "text/plain;charset=utf-8", v405, v289);
                                      v287 += strlen(v405);
                                      if (++v286 >= v374)
                                      {
                                        v264 = v410;
                                        goto LABEL_416;
                                      }
                                    }

LABEL_420:
                                    v8 = MultiWordEntry;
                                    goto LABEL_458;
                                  }

LABEL_416:
                                  if (v264)
                                  {
                                    v290 = &v22[v380];
                                    MultiWordEntry = (*(*(a1 + 48) + 104))(*(a1 + 912), *(a1 + 920), &v290[-v264]);
                                    if ((MultiWordEntry & 0x80000000) != 0)
                                    {
                                      goto LABEL_420;
                                    }

                                    log_OutTraceTuningDataBinary(*(*(a1 + 16) + 32), 106, "", "text/plain;charset=utf-8", &v290[-v410], v410);
                                  }
                                }

                                else
                                {
LABEL_367:
                                  MultiWordEntry = (*(*(a1 + 48) + 104))(*(a1 + 912), *(a1 + 920), v34, v349);
                                  if ((MultiWordEntry & 0x80000000) != 0)
                                  {
                                    goto LABEL_420;
                                  }

                                  log_OutTraceTuningDataBinary(*(*(a1 + 16) + 32), 106, "", "text/plain;charset=utf-8", v34, v349);
                                  v262 = strlen(v31);
                                  if (v262)
                                  {
                                    for (j = 0; j < v262; j = utf8_GetNextUtf8Offset(v31, j))
                                    {
                                      if (utf8_BelongsToSet(3u, v31, j, v262))
                                      {
                                        while (j < v262 && utf8_BelongsToSet(3u, v31, j, v262))
                                        {
                                          j = utf8_GetNextUtf8Offset(v31, j);
                                        }
                                      }
                                    }
                                  }

                                  v266 = strlen(v34);
                                  if (v266)
                                  {
                                    for (k = 0; k < v266; k = utf8_GetNextUtf8Offset(v34, k))
                                    {
                                      if (utf8_BelongsToSet(3u, v34, k, v266))
                                      {
                                        while (k < v266 && utf8_BelongsToSet(3u, v34, k, v266))
                                        {
                                          k = utf8_GetNextUtf8Offset(v34, k);
                                        }
                                      }
                                    }
                                  }

                                  v268 = v369;
                                  if (!v391)
                                  {
                                    v268 = 1;
                                  }

                                  v269 = v391;
                                  if ((v268 & 1) == 0)
                                  {
                                    v270 = 0;
                                    v271 = HIWORD(v400);
                                    v272 = v400;
                                    v376 = v390 + HIWORD(v400);
                                    v273 = v394 + 3;
                                    v388 = v400;
                                    v371 = HIWORD(v400);
                                    do
                                    {
                                      v274 = *v273 - *v359;
                                      if (v274 > v271 && v274 < v272)
                                      {
                                        v331 = *v273;
                                        log_OutText(*(*(a1 + 16) + 32), "FE_UDWL", 5, 0, "realign Markers in midword postions to start of word Mrk[%u].posCur from %u to %u", v104, v105, v106, v270);
                                        v272 = v388;
                                        v271 = v371;
                                        v269 = v391;
                                        *v273 = v376;
                                      }

                                      ++v270;
                                      v273 += 8;
                                    }

                                    while (v269 != v270);
                                  }

                                  v350 += v349 - v355;
                                }

                                if (v344 != -1)
                                {
                                  log_OutTraceTuningData(*(*(a1 + 16) + 32), 109, "%s%d %s%d %s%s", v264, v265, v104, v105, v106, "POSREF");
                                }

                                if (v353 || v347)
                                {
                                  v380 = v400;
                                  if (v391 > v363)
                                  {
                                    v276 = v363;
                                    v389 = v404;
                                    v277 = v401;
                                    v278 = v363 + v403;
                                    while (1)
                                    {
                                      v279 = &v394[8 * v276];
                                      v280 = v279[3];
                                      v108 = v380;
                                      if (v380 <= (v280 - v390))
                                      {
                                        break;
                                      }

                                      v281 = (v389 + 8 * v278);
                                      v282 = *(v281 - 1);
                                      v283 = (v277 + 4 * v278);
                                      if (v280 >= v282[3])
                                      {
                                        *v281 = v279;
                                      }

                                      else
                                      {
                                        *v281 = v282;
                                        v284 = *--v283;
                                        *(v277 + 4 * v278) = v284;
                                        *(v281 - 1) = v279;
                                      }

                                      *v283 = 0;
                                      hlp_KeepTrackBeforeMovingOn(v279, &v402 + 1, &v406, &v399, &v402);
                                      v276 = (v276 + 1);
                                      ++v278;
                                      if (v391 <= v276)
                                      {
                                        v348 = 0;
                                        v363 = v276;
                                        goto LABEL_405;
                                      }
                                    }

                                    v348 = 0;
                                    v363 = v276;
                                    goto LABEL_406;
                                  }
                                }

                                v348 = 0;
                                goto LABEL_405;
                              }

                              LOWORD(v374) = 0;
                              goto LABEL_351;
                            }
                          }

                          log_OutText(*(*(a1 + 16) + 32), "FE_UDWL", 5, 0, "Warning : Found user dictionary entries are ignored as return buffer too small; consider increasing value with parameter SSFT_PARAMC_UDCTMAXDICTRETLEN", v145, v146, v147, v326);
                          LOWORD(v374) = 0;
                          v344 = -1;
                          v369 = (v345 | v353) == 0;
                          if (v345 | v353 && (MultiWordEntry & 0x80000000) != 0)
                          {
                            if (v353 || v347)
                            {
                              v108 = HIWORD(v400);
                            }

                            else
                            {
                              v108 = v380;
                            }

                            v348 = 1;
                            goto LABEL_406;
                          }

LABEL_353:
                          v257 = v387;
                          v258 = MultiWordEntry >> 31;
                          goto LABEL_361;
                        }

                        v291 = 0;
                        v292 = 0;
LABEL_422:
                        if (v391 > v372)
                        {
                          v293 = (v404 + 8 * (v291 + v372));
                          v294 = v372;
                          do
                          {
                            v295 = &v394[8 * v294];
                            v295[3] += v292;
                            *v293++ = v295;
                            ++v294;
                          }

                          while (v391 > v294);
                        }

                        v394[4] += v292;
                        v296 = v391 + v291;
                        v297 = heap_Calloc(*(*(a1 + 16) + 8), (v391 + v291), 32);
                        if (v297)
                        {
                          v298 = v297;
                          if (!v296)
                          {
                            goto LABEL_434;
                          }

                          v299 = 0;
                          v300 = v404;
                          do
                          {
                            v301 = (v297 + 32 * v299);
                            v302 = *(v300 + 8 * v299);
                            v303 = v302[1];
                            *v301 = *v302;
                            v301[1] = v303;
                            ++v299;
                          }

                          while (v296 > v299);
                          if (*(v297 + 12) == v390)
                          {
                            v304 = 0;
                            do
                            {
                              v305 = ++v304;
                            }

                            while (v296 > v304 && *(v297 + 32 * v304 + 12) == v390);
                          }

                          else
                          {
LABEL_434:
                            v305 = 0;
                          }

                          stableArraySort(v297, v305, v296 - v305);
                          log_OutText(*(*(a1 + 16) + 32), "FE_UDWL", 5, 0, "New Markers OUT", v306, v307, v308, v326);
                          v309 = (*(*(a1 + 48) + 104))(*(a1 + 928), *(a1 + 936), v298, 32 * v296);
                          v310 = *(a1 + 16);
                          if ((v309 & 0x80000000) != 0)
                          {
                            v8 = v309;
                            v323 = *(v310 + 8);
                            v324 = v298;
LABEL_451:
                            heap_Free(v323, v324);
                          }

                          else
                          {
                            if (log_GetLogLevel(*(v310 + 32)) >= 5 && v296 != 0)
                            {
                              v315 = 0;
                              do
                              {
                                v316 = (v298 + 32 * v315);
                                v317 = *(*(a1 + 16) + 32);
                                v319 = *v316;
                                v318 = v316[1];
                                v320 = v316[2];
                                v321 = v316[3];
                                v322 = v316[4];
                                if (v319 == 0x4000)
                                {
                                  log_OutText(v317, "FE_UDWL", 5, 0, "Marker [type=SYNC] Ref (%u,%u) Cur(%u,%u)", v311, v312, v313, v318);
                                }

                                else
                                {
                                  log_OutText(v317, "FE_UDWL", 5, 0, "Marker [type=%5u] Ref (%u,%u) Cur(%u,%u)", v311, v312, v313, v319);
                                }

                                ++v315;
                              }

                              while (v296 > v315);
                            }

                            heap_Free(*(*(a1 + 16) + 8), v298);
                            if (log_HasTraceTuningDataSubscriber(*(*(a1 + 16) + 32)))
                            {
                              log_OutTraceTuningDataBinary(*(*(a1 + 16) + 32), 106, "PTRARRAY", "application/x-realspeak-markers-pp;version=4.0", v404, 8 * v296);
                            }

                            inserted = (*(*(a1 + 48) + 96))(*(a1 + 896), *(a1 + 904), v412);
                            if ((inserted & 0x80000000) == 0)
                            {
                              v407 += v292;
                              inserted = (*(*(a1 + 40) + 104))(*(a1 + 24), *(a1 + 32));
                            }

LABEL_449:
                            v8 = inserted;
                          }
                        }

                        else
                        {
LABEL_457:
                          log_OutPublic(*(*(a1 + 16) + 32), "FE_UDWL", 40000, 0, v164, v165, v166, v167, v326);
                        }

LABEL_458:
                        LOWORD(v25) = v358;
                        v49 = __dst;
                        v35 = v343;
                        goto LABEL_54;
                      }
                    }
                  }

                  v60 = *(a1 + 16);
                }

                log_OutPublic(*(v60 + 32), "FE_UDWL", 40000, 0, v56, v57, v58, v59, v325);
                v393 = 0;
                v35 = 0;
                v394 = 0;
                goto LABEL_148;
              }
            }

            log_OutPublic(*(*(a1 + 16) + 32), "FE_UDWL", 40000, 0, v27, v28, v29, v30, v325);
            v34 = 0;
            goto LABEL_51;
          }

          v34 = 0;
          v31 = 0;
          v393 = 0;
          v35 = 0;
          v49 = 0;
        }

        v394 = 0;
        v8 = MainLangLC;
        goto LABEL_54;
      }
    }

LABEL_36:
    v8 = v11;
    goto LABEL_43;
  }

  if (!*(&v414 + 4))
  {
    __src[0] = 0;
    if ((paramc_ParamGetStr(*(*(a1 + 16) + 40), "clcpppipelinemode", __src) & 0x80000000) != 0 || !__src[0] || !*__src[0])
    {
      *a5 = 0;
    }

    goto LABEL_41;
  }

  if (!DWORD2(v414))
  {
    goto LABEL_34;
  }

  v11 = (*(*(a1 + 48) + 88))(*(a1 + 896), *(a1 + 904), &v413, &v412);
  if ((v11 & 0x80000000) != 0)
  {
    goto LABEL_36;
  }

  v11 = (*(*(a1 + 48) + 104))(*(a1 + 928), *(a1 + 936), v413, v412);
  if ((v11 & 0x80000000) != 0)
  {
    goto LABEL_36;
  }

  if (log_HasTraceTuningDataSubscriber(*(*(a1 + 16) + 32)))
  {
    log_OutTraceTuningDataBinary(*(*(a1 + 16) + 32), 105, "", "application/x-realspeak-markers-pp;version=4.0", v413, v412);
  }

  v17 = (*(*(a1 + 48) + 96))(*(a1 + 896), *(a1 + 904), v412);
  v8 = v17;
  if ((v17 & 0x80000000) == 0)
  {
LABEL_34:
    log_OutTraceTuningDataBinary(*(*(a1 + 16) + 32), 105, "", "text/plain;charset=utf-8", "", 0);
    if (DWORD1(v414))
    {
      v17 = synstrmaux_CloseOutStreamsOnly((a1 + 56), *(a1 + 48));
    }

LABEL_41:
    log_OutTraceTuningData(*(*(a1 + 16) + 32), 104, "%s%s", v36, v37, v38, v39, v40, "END");
    goto LABEL_42;
  }

LABEL_43:
  v41 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t hlp_GetMainLangLC(uint64_t a1, char *a2)
{
  __s = 0;
  *a2 = 0;
  Str = paramc_ParamGetStr(a1, "langcode", &__s);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  v4 = 2323652608;
  if (__s && strlen(__s) == 3)
  {
    strcpy(a2, __s);
    if (*a2)
    {
      v5 = 0;
      do
      {
        a2[v5] = __tolower(a2[v5]);
        ++v5;
      }

      while (v5 < strlen(a2));
    }

    return Str;
  }

  return v4;
}

int *hlp_KeepTrackBeforeMovingOn(int *result, int *a2, void *a3, void *a4, _DWORD *a5)
{
  v5 = *a2;
  v6 = *result;
  if (*a2)
  {
    if (v6 == 34)
    {
      goto LABEL_15;
    }

    if (v6 == 21)
    {
      goto LABEL_17;
    }

    if (v6 != 7)
    {
      goto LABEL_20;
    }

LABEL_10:
    if (result[6] != 43)
    {
LABEL_17:
      if (v5 == 1)
      {
        *a2 = 0;
      }

      goto LABEL_20;
    }

LABEL_15:
    if (!v5)
    {
      *a2 = 1;
      goto LABEL_20;
    }

    if (v6 != 7)
    {
      goto LABEL_20;
    }

    goto LABEL_17;
  }

  if (v6 > 33)
  {
    if (v6 == 34)
    {
      goto LABEL_15;
    }

    if (v6 == 36)
    {
      *a4 = *(result + 3);
    }
  }

  else
  {
    if (v6 == 7)
    {
      goto LABEL_10;
    }

    if (v6 == 21)
    {
      *a3 = *(result + 3);
    }
  }

LABEL_20:
  if (*result == 7)
  {
    *a5 = result[6];
  }

  return result;
}

BOOL hlp_ValidateMultiWordMarker(uint64_t *a1, int a2, uint64_t a3, unsigned int a4, unsigned int a5, char *__dst, uint64_t a7, uint64_t a8, _BYTE *a9, __int128 a10, uint64_t a11, uint64_t a12)
{
  v16 = a5 - a4;
  strncpy(__dst, (a3 + a4), v16);
  __dst[v16] = 0;
  v19 = 1;
  *&v18 = &v19;
  *(&v18 + 1) = a9;
  return (udwl_MatchUdctWord(a1[2], a1[118], a1[119], a1[120], 1, __dst, a7, a8, v18, a10, a11, &a12, 0, 0, 0) & 0x80000000) == 0 && *a9 != 0;
}

uint64_t hlp_FindMultiWordEntry(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, _DWORD *a5, unsigned int a6, uint64_t a7, unsigned int a8, uint64_t a9, uint64_t a10, _WORD *a11, _WORD *a12, char *a13, _WORD *a14, unsigned __int16 a15, uint64_t a16, uint64_t a17, _DWORD *a18)
{
  v23 = a1;
  v104 = *MEMORY[0x1E69E9840];
  v99 = 1;
  v98 = 1;
  v97 = 0;
  v96 = a15;
  *a18 = 0;
  v24 = heap_Calloc(*(*(a1 + 16) + 8), a15 + 1, 1);
  v29 = *(v23 + 16);
  if (v24)
  {
    v30 = v24;
    v94 = heap_Calloc(*(v29 + 8), a15 + 1, 1);
    if (!v94)
    {
      v55 = 2323652618;
      log_OutPublic(*(*(v23 + 16) + 32), "FE_UDWL", 40000, 0, v31, v32, v33, v34, v87);
LABEL_76:
      heap_Free(*(*(v23 + 16) + 8), v30);
      goto LABEL_77;
    }

    v91 = a5;
    v102 = a15;
    *__s2 = 1;
    v35 = heap_Calloc(*(*(v23 + 16) + 8), *(v23 + 968) + 1, 1);
    if (v35)
    {
      v40 = v35;
      v95 = v23;
      v41 = a4;
      v101 = a8;
      do
      {
        PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(a3, v41);
        v41 = PreviousUtf8Offset;
      }

      while (PreviousUtf8Offset > a8 && utf8_BelongsToSet(0, a3, PreviousUtf8Offset, a4));
      v43 = a7;
      hlp_Skip(1, 1, a3, &v101, a8, a4);
      v44 = v101;
      v100 = v101;
      if (v99)
      {
        v45 = 0;
        v92 = 0;
        v46 = v41;
        v47 = v95;
        while (v100 <= v46)
        {
          hlp_Skip(1, 1, a3, &v100, v44, a4);
          if (hlp_Skip(2, 1, a3, &v100, v44, a4))
          {
            if (v45)
            {
              ++v45;
            }

            else
            {
              if (*(v47 + 968) <= (v100 - v44))
              {
                *v40 = 0;
              }

              else
              {
                v48 = (v100 - v44);
                strncpy(v40, &a3[v44], v48);
                v40[v48] = 0;
                v47 = v95;
                *__s2 = 1;
                v49 = udwl_LookupMultiWordLengths(*(v95 + 16), *(v95 + 944), *(v95 + 952), *(v95 + 960), v40, __s2, v94, &v102, &v99);
                v53 = 0;
                if ((v49 & 0x1FFF) != 0x14)
                {
                  if ((v49 & 0x80000000) != 0)
                  {
                    v45 = 1;
                    v92 = v49;
                    break;
                  }

                  v53 = v49;
                }

                v92 = v53;
                v54 = *(*(v95 + 16) + 32);
                if (v99 < 2u)
                {
                  log_OutText(v54, "FE_UDWL", 5, 0, "lookup UMW: start word '%s': not found", v50, v51, v52, v40);
                }

                else
                {
                  log_OutText(v54, "FE_UDWL", 5, 0, "lookup UMW: start word '%s': found", v50, v51, v52, v40);
                }
              }

              v45 = 1;
            }
          }

          if (v45 >= v99)
          {
            break;
          }
        }
      }

      else
      {
        v45 = 0;
        v92 = 0;
        v47 = v23;
      }

      heap_Free(*(*(v47 + 16) + 8), v40);
      v59 = *a18 == 0;
      if (*a18)
      {
        v60 = 0;
      }

      else
      {
        v60 = v45 >= 2;
      }

      if (v60)
      {
        v90 = (v43 + 2 * v44);
        while (1)
        {
          v61 = v100;
          v62 = v100 - v44;
          if (v62 >= 1 && v62 <= *(v95 + 968))
          {
            strcpy(__s2, " ");
            LH_itoa(v45, &__s2[1], 0xAu);
            __strcat_chk();
            if (strstr(v94, __s2))
            {
              if (a6)
              {
                v63 = v91;
                v64 = 1;
                while (1)
                {
                  if (*v63 > 0x22u || ((1 << *v63) & 0x400200080) == 0)
                  {
                    v68 = 1;
                  }

                  else
                  {
                    v66 = v63[3] - v91[3];
                    v68 = v66 <= v44 || v66 >= v61;
                    if (!v68)
                    {
                      goto LABEL_57;
                    }
                  }

                  v63 += 8;
                  v60 = v64++ >= a6;
                  if (v60)
                  {
                    goto LABEL_57;
                  }
                }
              }

              v68 = 1;
LABEL_57:
              if (v61 > v44)
              {
                v70 = v44 + 1;
                v69 = v90;
                if (v68)
                {
                  do
                  {
                    v72 = *v69++;
                    v71 = v72;
                    if (v72)
                    {
                      v73 = 1;
                    }

                    else
                    {
                      v73 = v70 >= v61;
                    }

                    ++v70;
                  }

                  while (!v73);
                  v68 = v71 == 0;
                }
              }

              if (v68)
              {
                strncpy(a13, &a3[v44], (v61 - v44));
                a13[(v61 - v44)] = 0;
                v96 = a15;
                v98 = 1;
                log_OutTraceTuningData(*(*(v95 + 16) + 32), 110, "%s%s %s%s %s%s", v74, v75, v76, v77, v78, "BEG");
                *(&v89 + 1) = a16;
                *&v89 = &v96;
                *&v88 = &v98;
                *(&v88 + 1) = v30;
                matched = udwl_MatchUdctWord(*(v95 + 16), *(v95 + 944), *(v95 + 952), *(v95 + 960), 1, a13, a9, a10, v88, v89, a17, &v97, 2, 0, 0);
                v92 = 0;
                if ((matched & 0x1FFF) != 0x14)
                {
                  v55 = matched;
                  if ((matched & 0x80000000) != 0)
                  {
                    v23 = v95;
                    goto LABEL_75;
                  }

                  log_OutTraceTuningData(*(*(v95 + 16) + 32), 110, "%s%s %s%u %s%d %s%s %s%s", v80, v81, v82, v83, v84, "END");
                  *a18 = 1;
                  *a11 = v44;
                  *a12 = v61;
                  v92 = v55;
                  *a14 = v61 - v44;
                }
              }
            }
          }

          hlp_Skip(2, -1, a3, &v100, v44, a4);
          hlp_Skip(1, -1, a3, &v100, v44, a4);
          v59 = *a18 == 0;
          if (!*a18 && (--v45 & 0xFFFE) != 0)
          {
            continue;
          }

          break;
        }
      }

      v55 = v92;
      v23 = v95;
      if (v59)
      {
        goto LABEL_72;
      }
    }

    else
    {
      v55 = 2323652618;
      log_OutPublic(*(*(v23 + 16) + 32), "FE_UDWL", 40000, 0, v36, v37, v38, v39, v87);
      if (!*a18)
      {
LABEL_72:
        if (v99 >= 2u)
        {
          log_OutText(*(*(v23 + 16) + 32), "FE_UDWL", 5, 0, "lookup UMW: no UMW found", v56, v57, v58, a13);
        }

        *a13 = 0;
LABEL_75:
        heap_Free(*(*(v23 + 16) + 8), v94);
        goto LABEL_76;
      }
    }

    log_OutText(*(*(v23 + 16) + 32), "FE_UDWL", 5, 0, "lookup UMW: '%s': found", v56, v57, v58, a13);
    goto LABEL_75;
  }

  v55 = 2323652618;
  log_OutPublic(*(v29 + 32), "FE_UDWL", 40000, 0, v25, v26, v27, v28, v87);
LABEL_77:
  v85 = *MEMORY[0x1E69E9840];
  return v55;
}

uint64_t fe_udwl_MatchUDctWord(uint64_t *a1, int a2, int a3, char *a4, uint64_t a5, uint64_t a6, unsigned int *a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, _WORD *a12, _WORD *a13)
{
  if ((safeh_HandleCheck(a1, a2, 62346, 976) & 0x80000000) != 0)
  {
    return 2323652616;
  }

  log_OutTraceTuningData(*(a1[2] + 32), 107, "%s%s %s%s %s%s", v20, v21, v22, v23, v24, "BEG");
  *&v33 = a7;
  *(&v33 + 1) = a8;
  matched = udwl_MatchUdctWord(a1[2], a1[118], a1[119], a1[120], a3, a4, a5, a6, v33, a9, a10, a11, 1, a12, a13);
  v31 = *(a1[2] + 32);
  if ((matched & 0x80000000) != 0)
  {
    log_OutTraceTuningData(v31, 107, "%s%s %s%u", v25, v26, v27, v28, v29, "END");
  }

  else
  {
    v34 = *a7;
    log_OutTraceTuningData(v31, 107, "%s%s %s%u %s%d %s%s %s%s", v25, v26, v27, v28, v29, "END");
  }

  return matched;
}

uint64_t hlp_InsertLangMarker(uint64_t a1, const char *a2, int a3, int a4, uint64_t *a5, uint64_t *a6, int a7, unsigned int a8, _WORD *a9)
{
  v17 = heap_Realloc(*(*(a1 + 16) + 8), *a5, 8 * (*a9 + a7) + 8);
  if (!v17 || (*a5 = v17, (v22 = heap_Realloc(*(*(a1 + 16) + 8), *a6, 4 * (*a9 + a7) + 4)) == 0))
  {
    v34 = 2323652618;
    v24 = *(a1 + 16);
LABEL_7:
    log_OutPublic(*(v24 + 32), "FE_UDWL", 40000, 0, v18, v19, v20, v21, v38);
    return v34;
  }

  *a6 = v22;
  *(v22 + 4 * (*a9 + a7)) = 0;
  v23 = heap_Calloc(*(*(a1 + 16) + 8), 1, 32);
  v24 = *(a1 + 16);
  if (!v23)
  {
    v34 = 2323652618;
    goto LABEL_7;
  }

  v25 = v23;
  v26 = *(v24 + 8);
  v27 = strlen(a2);
  v28 = heap_Calloc(v26, (v27 + 1), 1);
  if (v28)
  {
    v33 = strcpy(v28, a2);
    v34 = 0;
    *(v25 + 24) = v33;
    *v25 = 36;
    *(v25 + 4) = a3;
    *(v25 + 8) = 0;
    *(v25 + 12) = a4;
    v35 = *a9;
    v36 = v35 + a8;
    *(*a5 + 8 * v36) = v25;
    *(v25 + 16) = 0;
    *(*a6 + 4 * v36) = 1;
    *a9 = v35 + 1;
  }

  else
  {
    v34 = 2323652618;
    log_OutPublic(*(*(a1 + 16) + 32), "FE_UDWL", 40000, 0, v29, v30, v31, v32, v38);
    heap_Free(*(*(a1 + 16) + 8), v25);
  }

  return v34;
}

uint64_t stableArraySort(uint64_t result, int a2, int a3)
{
  if (a2 < a3)
  {
    v3 = result + 32 * a2 + 32;
    v4 = a2;
    do
    {
      v5 = v4++;
      if (v5 >= a2)
      {
        v6 = v3;
        v7 = v4;
        do
        {
          if (*(v6 + 12) >= *(v6 - 20))
          {
            break;
          }

          v9 = *v6;
          v8 = *(v6 + 16);
          v10 = *(v6 - 16);
          *v6 = *(v6 - 32);
          *(v6 + 16) = v10;
          *(v6 - 32) = v9;
          *(v6 - 16) = v8;
          v6 -= 32;
          --v7;
        }

        while (v7 > a2);
      }

      v3 += 32;
    }

    while (v4 != a3);
  }

  return result;
}

uint64_t fe_udwl_ProcessEnd(uint64_t a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 62346, 976) & 0x80000000) != 0)
  {
    return 2323652616;
  }

  v3 = *(a1 + 48);

  return synstrmaux_CloseStreams((a1 + 56), v3);
}

uint64_t fe_udwl_ResourceTypes(uint64_t a1, int a2, void *a3)
{
  if ((safeh_HandleCheck(a1, a2, 62346, 976) & 0x80000000) != 0)
  {
    return 2323652616;
  }

  result = 0;
  *a3 = fe_udwl_ResourceTypes_SZ_FE_UDWL_CONTENT_TYPES_DCTEG;
  return result;
}

uint64_t fe_udwl_ResourceUnload(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  if ((safeh_HandleCheck(a1, a2, 62346, 976) & 0x80000000) != 0)
  {
    return 2323652616;
  }

  v7 = a1[118];
  if (!v7)
  {
    return 2323652616;
  }

  v8 = *(v7 + 64);
  v9 = a1[119];
  v10 = a1[120];

  return v8(v9, v10, a3, a4);
}

uint64_t fe_udwl_IsUDictAvailable(void *a1, int a2, _DWORD *a3)
{
  v5 = safeh_HandleCheck(a1, a2, 62346, 976);
  if ((v5 & 0x80000000) != 0)
  {
    return 2323652616;
  }

  v6 = v5;
  *a3 = 1;
  v7 = a1[118];
  if (!v7 || !(*(v7 + 80))(a1[119], a1[120]))
  {
    *a3 = 0;
  }

  return v6;
}

uint64_t fe_udwl_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2323652609;
  }

  result = 0;
  *a2 = &IFeUdwl;
  return result;
}

BOOL hlp_Skip(int a1, int a2, _BYTE *a3, unsigned __int16 *a4, unsigned int a5, uint64_t a6)
{
  v10 = *a4;
  if (a1 == 1)
  {
    if (a2 == 1)
    {
      if (v10 < a6)
      {
        v15 = *a4;
        do
        {
          if (!utf8_BelongsToSet(0, a3, v15, a6))
          {
            break;
          }

          NextUtf8OffsetLimit = utf8_GetNextUtf8OffsetLimit(a3, *a4, a6);
          v15 = NextUtf8OffsetLimit;
          *a4 = NextUtf8OffsetLimit;
        }

        while (NextUtf8OffsetLimit < a6);
      }
    }

    else if (a2 == -1)
    {
      do
      {
        v11 = *a4;
        PreviousUtf8OffsetLimit = utf8_GetPreviousUtf8OffsetLimit(a3, *a4, a6);
        *a4 = PreviousUtf8OffsetLimit;
      }

      while (PreviousUtf8OffsetLimit > a5 && utf8_BelongsToSet(0, a3, PreviousUtf8OffsetLimit, a6));
LABEL_22:
      *a4 = v11;
    }
  }

  else if (a2 == -1)
  {
    if (v10 > a5)
    {
      do
      {
        v11 = *a4;
        v17 = utf8_GetPreviousUtf8OffsetLimit(a3, *a4, a6);
        *a4 = v17;
      }

      while (v17 > a5 && !utf8_BelongsToSet(0, a3, v17, a6));
      goto LABEL_22;
    }
  }

  else if (a2 == 1 && v10 < a6)
  {
    v13 = *a4;
    do
    {
      if (utf8_BelongsToSet(0, a3, v13, a6))
      {
        break;
      }

      v14 = utf8_GetNextUtf8OffsetLimit(a3, *a4, a6);
      v13 = v14;
      *a4 = v14;
    }

    while (v14 < a6);
  }

  return v10 != *a4;
}

uint64_t fe_udwl_ResourceLoad(uint64_t *a1, int a2, char *a3, const char *a4, uint64_t a5, int a6, uint64_t a7)
{
  v47 = *MEMORY[0x1E69E9840];
  bzero(__s, 0x400uLL);
  v39 = 0;
  v40 = 0;
  v14 = safeh_HandleCheck(a1, a2, 62346, 976);
  if ((v14 & 0x80000000) != 0)
  {
    v20 = 2323652616;
    goto LABEL_39;
  }

  *a7 = 0;
  *(a7 + 8) = 0;
  if (!a3)
  {
    goto LABEL_38;
  }

  v20 = v14;
  if (a4)
  {
    v21 = a6 != 0;
    if (a5 || !a6)
    {
      goto LABEL_11;
    }

LABEL_38:
    log_OutPublic(*(a1[2] + 32), "FE_UDWL", 40001, 0, v16, v17, v18, v19, v38);
    v20 = 2323652615;
    goto LABEL_39;
  }

  if (!a5 || !a6)
  {
    goto LABEL_38;
  }

  v21 = 1;
LABEL_11:
  v44 = 0;
  v45 = a3;
  if (a5 != 0 && v21)
  {
    v22 = 0;
  }

  else
  {
    v22 = a4;
  }

  *v41 = 0;
  v42[0] = v22;
  v42[1] = a4;
  v43 = a5;
  LODWORD(v44) = a6;
  log_OutTraceTuningData(*(a1[2] + 32), 101, "%s%s %s%s %s%s", v15, v16, v17, v18, v19, "BEG");
  if (v21 || !strstr(a3, ";loader=broker"))
  {
    goto LABEL_30;
  }

  v28 = brk_DataOpenEx(*(a1[2] + 24), a4, 1, &v40);
  v29 = v28;
  if (a4 && v28 < 0)
  {
    Str = paramc_ParamGetStr(*(a1[2] + 40), "langcode", v41);
    if ((Str & 0x80000000) != 0)
    {
LABEL_32:
      v20 = Str;
      goto LABEL_33;
    }

    if ((brokeraux_ComposeBrokerString(a1[2], a4, 0, 1, *v41, 0, 0, __s, 0x400uLL) & 0x80000000) != 0)
    {
LABEL_40:
      v20 = 0;
      goto LABEL_33;
    }

    v29 = brk_DataOpenEx(*(a1[2] + 24), __s, 1, &v40);
  }

  if (v29 < 0)
  {
    goto LABEL_40;
  }

  v20 = brk_DataMapEx(*(a1[2] + 24), v40, 0, &v44, &v39);
  if ((v20 & 0x80000000) != 0)
  {
    goto LABEL_33;
  }

  v42[0] = 0;
  __s[0] = 0;
  __strcat_chk();
  v31 = strchr(__s, 59);
  if (v31)
  {
    *v31 = 0;
  }

  v32 = strstr(a3, "mode=");
  if (v32)
  {
    v33 = v32;
    if (!strchr(v32, 59))
    {
      strlen(v33);
    }

    __strcat_chk();
    __strncat_chk();
  }

  v45 = __s;
  v43 = v39;
LABEL_30:
  v34 = a1[118];
  if (v34)
  {
    Str = (*(v34 + 56))(a1[119], a1[120], v42, a7);
    goto LABEL_32;
  }

LABEL_33:
  v35 = v40;
  if (v39)
  {
    brk_DataUnmap(*(a1[2] + 24), v40, v39);
    v39 = 0;
    v35 = v40;
  }

  if (v35)
  {
    brk_DataClose(*(a1[2] + 24), v35);
    v40 = 0;
  }

  log_OutTraceTuningData(*(a1[2] + 32), 101, "%s%s %s%u", v23, v24, v25, v26, v27, "END");
LABEL_39:
  v36 = *MEMORY[0x1E69E9840];
  return v20;
}