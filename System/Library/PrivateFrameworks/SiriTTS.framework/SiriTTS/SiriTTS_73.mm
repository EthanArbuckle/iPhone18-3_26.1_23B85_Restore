uint64_t ruleset_ReadDataLine(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned int *a4, _DWORD *a5, char *__s, uint64_t a7, uint64_t a8)
{
  ++*a5;
  for (result = ruleset_ReadLine(a2, a3, a4, __s, a5, __s, a7, a8); (result & 0x80000000) == 0; result = ruleset_ReadLine(a2, a3, a4, __s, v16, v17, v18, v19))
  {
    v23 = 0;
    v15 = strlen(__s);
    v20 = PCRE_Exec(*(a1 + 104), *(a1 + 112), *(a1 + 120), *(a1 + 128), __s, v15, 0, 0, 0, &v23);
    result = v23;
    if ((v23 & 0x80000000) != 0)
    {
      break;
    }

    if (v20 < 0)
    {
      v21 = strlen(__s);
      v22 = PCRE_Exec(*(a1 + 104), *(a1 + 112), *(a1 + 136), *(a1 + 144), __s, v21, 0, 0, 0, &v23);
      result = v23;
      if ((v23 & 0x80000000) != 0)
      {
        return result;
      }

      if (v22 < 0)
      {
        return 0;
      }
    }

    ++*a5;
  }

  return result;
}

void *ruleset_IsSectionHeader(unsigned __int8 *a1, char *__s)
{
  v3 = *a1;
  if (v3 == 239)
  {
    if (a1[1] != 187)
    {
      v3 = 239;
      goto LABEL_9;
    }

    v4 = 3;
    if (a1[2] != 191)
    {
      v4 = 0;
    }

    a1 += v4;
    v3 = *a1;
  }

  if (!v3)
  {
    return 0;
  }

LABEL_9:
  v5 = (a1 + 1);
  while (v3 == 9 || v3 == 32)
  {
    v6 = *v5++;
    v3 = v6;
    if (!v6)
    {
      return 0;
    }
  }

  if (v3 != 91)
  {
    return 0;
  }

  while (1)
  {
    LODWORD(v7) = *v5;
    if (v7 != 9 && v7 != 32)
    {
      break;
    }

    ++v5;
  }

  if (*v5)
  {
    if (!__s)
    {
      while (1)
      {
        result = memchr("\t ]", v7, 4uLL);
        if (result)
        {
          break;
        }

        v11 = *++v5;
        LOBYTE(v7) = v11;
        if (!v11)
        {
          return result;
        }
      }

      goto LABEL_24;
    }
  }

  else if (!__s)
  {
    return 0;
  }

  v7 = strlen(__s);
  if (strncmp(__s, v5, v7))
  {
    return 0;
  }

  v5 += v7;
  LOBYTE(v7) = *v5;
LABEL_24:
  if (!v7)
  {
    return 0;
  }

  v8 = (v5 + 1);
  do
  {
    if (v7 != 9 && v7 != 32)
    {
      break;
    }

    v9 = *v8++;
    LOBYTE(v7) = v9;
  }

  while (v9);
  return (v7 == 93);
}

uint64_t ruleset_ReadRules(uint64_t a1, uint64_t *a2, unsigned int *a3, _DWORD *a4)
{
  v59 = *MEMORY[0x1E69E9840];
  v54 = 0;
  v55 = 0;
  *v51 = 0;
  v52 = 0;
  v4 = 2288001031;
  v53 = 0;
  if (!a1)
  {
    goto LABEL_33;
  }

  if (!a2)
  {
    goto LABEL_33;
  }

  if (!a3)
  {
    goto LABEL_33;
  }

  v56[0] = 0;
  v56[1] = 0;
  v57 = 0;
  if ((InitRsrcFunction(*a1, *(a1 + 8), v51) & 0x80000000) != 0)
  {
    goto LABEL_33;
  }

  if ((ruleset_ReadDataLine(a1, *v51, a2, a3, a4, __s, v9, v10) & 0x80000000) == 0)
  {
      ;
    }
  }

  DataLine = ruleset_ReadDataLine(a1, *v51, a2, a3, a4, __s, v11, v12);
  if ((DataLine & 0x80000000) != 0)
  {
    if ((DataLine & 0x1FFF) == 0x17)
    {
      v4 = 0;
    }

    else
    {
      v4 = DataLine;
    }

    goto LABEL_33;
  }

  v4 = 0;
  while (1)
  {
    while (1)
    {
      v49 = *a4;
      log_OutTraceTuningData(*(*v51 + 32), 2, "%s%s %s%s %s%d", v14, v15, v16, v17, v18, "BEG");
      v22 = ruleset_ScanRuleLine(*v51, __s, &v55, v56, &v54, v19, v20, v21);
      PCRE_Adapter2PCREOptions(*(a1 + 104), *(a1 + 112), v56);
      if ((v22 & 0x80000000) == 0)
      {
        break;
      }

      log_OutTraceTuningData(*(*v51 + 32), 2, "%s%s %s%s %s%u", v23, v24, v25, v26, v27, "END");
LABEL_19:
      if (v4)
      {
        v4 = v4;
      }

      else
      {
        v4 = v22;
      }

      if ((ruleset_ReadDataLine(a1, *v51, a2, a3, a4, __s, v43, v44) & 0x80000000) != 0)
      {
        goto LABEL_33;
      }
    }

    v28 = rule_Compile(*(a1 + 104), *(a1 + 112), *v51, v55, v56, &v52);
    if ((v28 & 0x80000000) != 0)
    {
      v22 = v28;
      _Gryphon_ReportInvalidRule(v55);
      goto LABEL_19;
    }

    v29 = vector_Add(*(a1 + 80), &v52);
    v34 = *(*v51 + 32);
    if (!v29)
    {
      break;
    }

    v50 = vector_GetSize(*(a1 + 80)) - 1;
    log_OutTraceTuningData(v34, 2, "%s%s %s%s %s%d %s%s %s%d %s%u", v35, v36, v37, v38, v39, "END");
    if (v52)
    {
      PCRE_FreePattern(v52, v53);
    }

    v42 = ruleset_ReadDataLine(a1, *v51, a2, a3, a4, __s, v40, v41);
    if ((v42 & 0x80000000) != 0)
    {
      goto LABEL_28;
    }
  }

  log_OutPublic(*(*v51 + 32), "RETTT", 11023, 0, v30, v31, v32, v33, v48);
  PCRE_FreePattern(v52, v53);
  v42 = -2006966266;
LABEL_28:
  if ((v42 & 0x1FFF) == 0x17)
  {
    v45 = 0;
  }

  else
  {
    v45 = v42;
  }

  if (!v4)
  {
    v4 = v45;
  }

LABEL_33:
  v46 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t ruleset_ObjOpen(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28 = 0;
  v27 = 0;
  v6 = 2288001031;
  if (a6 && (InitRsrcFunction(a1, a2, &v28) & 0x80000000) == 0)
  {
    *a6 = 0u;
    *(a6 + 16) = 0u;
    *(a6 + 160) = 0;
    *(a6 + 128) = 0u;
    *(a6 + 144) = 0u;
    *(a6 + 96) = 0u;
    *(a6 + 112) = 0u;
    *(a6 + 48) = 0u;
    *(a6 + 64) = 0u;
    *(a6 + 32) = 0u;
    *(a6 + 80) = 0u;
    *a6 = a1;
    *(a6 + 8) = a2;
    *(a6 + 16) = a5;
    *(a6 + 40) = 1;
    v13 = v28[1];
    v25 = xmmword_1F42D5E08;
    v26 = off_1F42D5E18;
    if (vector_ObjOpen(v13, &v25, 8, (a6 + 80)))
    {
      LODWORD(v25) = PCRE_Adapter_Create(1, a6 + 104, a1, a2);
      if ((v25 & 0x80000000) == 0)
      {
        NullHandle = safeh_GetNullHandle();
        if (safeh_HandlesEqual(a3, a4, NullHandle, v19))
        {
          *(a6 + 88) = *(a6 + 104);
        }

        else
        {
          *(a6 + 88) = a3;
          *(a6 + 96) = a4;
        }

        paramc_ParamGetUInt(v28[5], "retttmaxpcreframeblocks", &v27);
        paramc_ParamGetUInt(v28[5], "retttnumframesinblock", &v27);
        LODWORD(v25) = PCRE_ObjOpen(*(a6 + 104), *(a6 + 112), 0);
        if ((v25 & 0x80000000) == 0)
        {
          v20 = (a6 + 128);
          v21 = "^\\s*#.*$";
          v22 = 3;
          while (1)
          {
            *(v20 - 1) = PCRE_CompilePattern(*(a6 + 104), *(a6 + 112), v21, 0, 0, 0, &v25);
            *v20 = v23;
            v6 = v25;
            if ((v25 & 0x80000000) != 0)
            {
              break;
            }

            v21 += 128;
            v20 += 2;
            if (!--v22)
            {
              return v6;
            }
          }
        }
      }

      vector_ObjClose(*(a6 + 80));
      *(a6 + 80) = 0;
      PCRE_ObjClose(*(a6 + 104), *(a6 + 112));
      return v25;
    }

    else
    {
      log_OutPublic(v28[4], "RETTT", 11002, 0, v14, v15, v16, v17, v25);
      return 2288001034;
    }
  }

  return v6;
}

uint64_t *rule_CopyParts(uint64_t *result, uint64_t a2, uint64_t *a3)
{
  v9 = 0;
  if (result)
  {
    v3 = result;
    v4 = *result;
    if (!*result)
    {
      return 0;
    }

    result = 0;
    if (a3 && v3[2])
    {
      if ((PCRE_CopyPattern(v4, v3[1], a3, &v9) & 0x80000000) == 0)
      {
        v7 = strlen(v3[2]);
        v8 = heap_Alloc(a2, (v7 + 1));
        a3[2] = v8;
        if (v8)
        {
          strcpy(v8, v3[2]);
          return 1;
        }

        PCRE_FreePattern(*a3, a3[1]);
      }

      return 0;
    }
  }

  return result;
}

void *rule_FreeParts(void *result, void *a2)
{
  if (result)
  {
    v3 = result;
    result = *result;
    if (result)
    {
      result = PCRE_FreePattern(result, v3[1]);
      *v3 = 0;
    }

    v4 = v3[2];
    if (v4)
    {
      result = heap_Free(a2, v4);
      v3[2] = 0;
    }
  }

  return result;
}

uint64_t ruleset_ObjClose(uint64_t a1)
{
  v1 = 2288001031;
  v6 = 0;
  if (a1 && (InitRsrcFunction(*a1, *(a1 + 8), &v6) & 0x80000000) == 0)
  {
    if (*(a1 + 24))
    {
      ruleset_UnloadRules(a1);
    }

    v3 = *(a1 + 80);
    if (v3)
    {
      vector_ObjClose(v3);
      *(a1 + 80) = 0;
    }

    for (i = 0; i != 48; i += 16)
    {
      PCRE_FreePattern(*(a1 + i + 120), *(a1 + i + 128));
    }

    PCRE_ObjClose(*(a1 + 104), *(a1 + 112));
    v1 = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 112) = 0u;
    *(a1 + 128) = 0u;
    *(a1 + 144) = 0u;
    *(a1 + 160) = 0;
  }

  return v1;
}

uint64_t ruleset_UnloadRules(uint64_t a1)
{
  v1 = 2288001031;
  v26 = 0;
  if (a1 && (InitRsrcFunction(*a1, *(a1 + 8), &v26) & 0x80000000) == 0)
  {
    v25 = *(a1 + 24);
    log_OutTraceTuningData(*(v26 + 32), 3, "%s%s %s%s", v3, v4, v5, v6, v7, "BEG");
    v27 = 0;
    if (*(a1 + 24) && (InitRsrcFunction(*a1, *(a1 + 8), &v27) & 0x80000000) == 0)
    {
      if (vector_Clear(*(a1 + 80)))
      {
        v18 = *(a1 + 32);
        if (v18)
        {
          heap_Free(*(v26 + 8), v18);
          *(a1 + 32) = 0;
        }

        v19 = *(a1 + 56);
        if (v19)
        {
          heap_Free(*(v26 + 8), v19);
          *(a1 + 56) = 0;
        }

        v20 = *(a1 + 64);
        if (v20)
        {
          heap_Free(*(v26 + 8), v20);
          *(a1 + 64) = 0;
        }

        v21 = *(a1 + 72);
        if (v21)
        {
          heap_Free(*(v26 + 8), v21);
          *(a1 + 72) = 0;
        }

        log_OutTraceTuningData(*(v26 + 32), 3, "%s%s %s%u", v13, v14, v15, v16, v17, "END");
        v22 = *(a1 + 24);
        if (v22)
        {
          heap_Free(*(v26 + 8), v22);
          v1 = 0;
          *(a1 + 24) = 0;
          return v1;
        }

        return 0;
      }

      log_OutPublic(*(v27 + 32), "RETTT", 11024, 0, v14, v15, v16, v17, v24);
    }

    log_OutTraceTuningData(*(v26 + 32), 3, "%s%s %s%u", v8, v9, v10, v11, v12, "END");
    return 0;
  }

  return v1;
}

uint64_t ruleset_GetName(uint64_t result)
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

uint64_t ruleset_GetAbsName(uint64_t result)
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

uint64_t ruleset_GetEnabledForLng(uint64_t result, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v2 = result;
    if (!*(result + 40))
    {
      goto LABEL_18;
    }

    result = 0;
    if (a2 && *(v2 + 56))
    {
      __strcpy_chk();
      if (!LH_stricmp("*", *(v2 + 56)))
      {
        goto LABEL_14;
      }

      v3 = *(v2 + 56);
      if (*v3)
      {
        v4 = 0;
        v5 = 1;
        do
        {
          v3[v4] = __tolower(v3[v4]);
          v4 = v5;
          v3 = *(v2 + 56);
          v6 = strlen(v3) > v5++;
        }

        while (v6);
      }

      if (v10[0])
      {
        v7 = 0;
        v8 = 1;
        do
        {
          v10[v7] = __tolower(v10[v7]);
          v7 = v8;
          v6 = strlen(v10) > v8++;
        }

        while (v6);
        v3 = *(v2 + 56);
      }

      if (strstr(v3, v10))
      {
LABEL_14:
        result = 1;
        goto LABEL_19;
      }

      if (v10[0] == *v3 && v10[1] == v3[1])
      {
        result = v3[2] == 42;
        goto LABEL_19;
      }

LABEL_18:
      result = 0;
    }
  }

LABEL_19:
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ruleset_LoadRules(_WORD **a1, const char *a2, const char *a3, const char *a4, uint64_t a5, int a6)
{
  v47 = a5;
  v46 = a6;
  v6 = 2288001031;
  v45 = 0;
  v44 = 0;
  if (a1 && a5 && a6)
  {
    if (a1[3])
    {
      return 2288001041;
    }

    v13 = a2;
    a1[4] = 0;
    if (!a2 || !*a2)
    {
      v13 = "in-memory RETT";
    }

    if ((InitRsrcFunction(*a1, a1[1], &v45) & 0x80000000) == 0)
    {
      v14 = strlen(v13);
      v15 = heap_Alloc(*(v45 + 8), (v14 + 1));
      a1[3] = v15;
      if (v15)
      {
        strcpy(v15, v13);
        if ((paramc_ParamGetStr(*(v45 + 40), "__NUAN_alternative_esc_seq__", &v44) & 0x80000000) == 0 && v44 && !strcmp("__NUAN_alternative_esc_seq__", a1[3]))
        {
          *(a1 + 11) = 1;
        }

        if (!a3)
        {
          goto LABEL_19;
        }

        v25 = strlen(a3);
        v26 = heap_Alloc(*(v45 + 8), (v25 + 1));
        a1[4] = v26;
        if (v26)
        {
          strcpy(v26, a3);
LABEL_19:
          v39 = a1[3];
          log_OutTraceTuningData(*(v45 + 32), 1, "%s%s %s%s %s%s", v20, v21, v22, v23, v24, "BEG");
          if (!strcmp(a4, "application/x-vocalizer-rettt+bin") || !strcmp(a4, "application/x-vocalizer-rettt+bin;loader=broker"))
          {
            BinaryRules = ruleset_ReadBinaryRules(a1, a5, a6);
          }

          else
          {
            v43 = 0;
            BinaryRules = ruleset_ReadHeader(a1, &v47, &v46, &v43);
            if ((BinaryRules & 0x80000000) == 0)
            {
              BinaryRules = ruleset_ReadRules(a1, &v47, &v46, &v43);
            }
          }

          v6 = BinaryRules;
          v37 = *(v45 + 32);
          if ((v6 & 0x80000000) != 0)
          {
            log_OutTraceTuningData(v37, 1, "%s%s %s%u", v32, v33, v34, v35, v36, "END");
            ruleset_UnloadRules(a1);
          }

          else
          {
            v42 = a1[7];
            v41 = a1[9];
            v40 = a1[8];
            log_OutTraceTuningData(v37, 1, "%s%s %s%s %s%s %s%s %s%u", v32, v33, v34, v35, v36, "END");
          }

          return v6;
        }

        log_OutPublic(*(v45 + 32), "RETTT", 11002, 0, v27, v28, v29, v30, v38);
        ruleset_UnloadRules(a1);
      }

      else
      {
        log_OutPublic(*(v45 + 32), "RETTT", 11002, 0, v16, v17, v18, v19, v38);
      }

      return 2288001034;
    }
  }

  return v6;
}

uint64_t ruleset_Rewrite(_WORD **a1, const char *a2, uint64_t *a3)
{
  v60 = 0;
  v58 = 0;
  v3 = 2288001031;
  if (!a1)
  {
    return v3;
  }

  if (!a2)
  {
    return v3;
  }

  if (!a3)
  {
    return v3;
  }

  inited = InitRsrcFunction(*a1, a1[1], &v60);
  if ((inited & 0x80000000) != 0)
  {
    return v3;
  }

  if (!a1[3])
  {
    return 2288001041;
  }

  v8 = inited;
  v9 = strlen(a2);
  v10 = heap_Alloc(*(v60 + 8), (v9 + 1));
  __s = v10;
  if (!v10)
  {
    log_OutPublic(*(v60 + 32), "RETTT", 11002, 0, v11, v12, v13, v14, v55);
    return 2288001034;
  }

  strcpy(v10, a2);
  v15 = a1[8];
  if (!v15 || (v16 = __s, v61 = 0, v17 = strlen(__s), esc_seq_tn_strncmp(*a1, a1[1], a1[11], a1[12], __s, v17, &v61)) && !strcmp(v15, "normal"))
  {
    v19 = 0;
  }

  else
  {
    do
    {
      v18 = strlen(v16);
      v62 = esc_seq_tn_seq(*a1, a1[1], a1[11], a1[12], v16, v18);
      v19 = v62 == 0;
      if (!v62)
      {
        break;
      }

      IsMatchingEscTn = ruleset_IsMatchingEscTn(a1, v15, &v62);
      v16 = ++v62;
    }

    while (!IsMatchingEscTn);
  }

  if (log_HasTraceTuningDataSubscriber(*(v60 + 32)))
  {
    v26 = *(v60 + 32);
    v27 = a1[3];
    if (a1[8])
    {
      log_OutTraceTuningData(v26, 8, "%s%s %s%s %s%s %s%s", v21, v22, v23, v24, v25, "BEG");
    }

    else
    {
      log_OutTraceTuningData(v26, 8, "%s%s %s%s %s%s", v21, v22, v23, v24, v25, "BEG");
    }
  }

  if (v19)
  {
    goto LABEL_37;
  }

  Size = vector_GetSize(a1[10]);
  if (!a1[8])
  {
    v34 = vector_GetSize(a1[10]);
    if (v34)
    {
      v35 = v34;
      v36 = 0;
      v33 = 0;
      while (1)
      {
        v37 = v33;
        v33 = __s;
        __s = v37;
        ElemAt = vector_GetElemAt(a1[10], v36, &v58);
        v44 = *(v60 + 32);
        if (!ElemAt)
        {
          break;
        }

        log_OutTraceTuningData(v44, 9, "%s%s %s%d %s%s", v38, v39, v40, v41, v42, "BEG");
        v8 = sub_GsubCompiledRe(a1[2], *v58, *(v58 + 8), *(v58 + 16), v33, &__s);
        log_OutTraceTuningData(*(v60 + 32), 9, "%s%s %s%u %s%s", v45, v46, v47, v48, v49, "END");
        if ((v8 & 0x80000000) != 0)
        {
          goto LABEL_43;
        }

        if (v35 == ++v36)
        {
          goto LABEL_38;
        }
      }

      log_OutPublic(v44, "RETTT", 11025, 0, v39, v40, v41, v42, v55);
      v3 = 2288001030;
      if (!v33)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    }

    goto LABEL_37;
  }

  v29 = Size;
  if (Size)
  {
    v30 = 0;
    v31 = 0;
    do
    {
      v32 = __s;
      __s = v31;
      if (v31)
      {
        heap_Free(*(v60 + 8), v31);
        __s = 0;
      }

      ruleset_RewriteTnRegions(a1, v30++, 0, v32, &__s);
      v31 = v32;
    }

    while (v29 != v30);
    if (v32)
    {
      heap_Free(*(v60 + 8), v32);
    }
  }

  v33 = __s;
  __s = 0;
  ruleset_RewriteTnRegions(a1, 0, 1, v33, &__s);
  if (v33)
  {
    heap_Free(*(v60 + 8), v33);
LABEL_37:
    v33 = 0;
  }

LABEL_38:
  if (__s)
  {
    v51 = strlen(__s) + 1;
    v52 = *(v60 + 8);
    if (*a3)
    {
      v53 = heap_Realloc(v52, *a3, v51);
      if (v53)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v53 = heap_Alloc(v52, v51);
      if (v53)
      {
LABEL_41:
        *a3 = v53;
        strcpy(v53, __s);
        if (strcmp(a2, *a3))
        {
          v56 = a1[3];
          log_OutEvent(*(v60 + 32), 29, "%s%s", v50, v22, v23, v24, v25, "RULSET_NAME");
        }

LABEL_43:
        v3 = v8;
        if (!v33)
        {
          goto LABEL_48;
        }

        goto LABEL_47;
      }
    }
  }

  log_OutPublic(*(v60 + 32), "RETTT", 11002, 0, v22, v23, v24, v25, v55);
  v3 = 2288001034;
  if (v33)
  {
LABEL_47:
    heap_Free(*(v60 + 8), v33);
  }

LABEL_48:
  if (__s)
  {
    heap_Free(*(v60 + 8), __s);
  }

  v57 = *a3;
  log_OutTraceTuningData(*(v60 + 32), 8, "%s%s %s%u %s%s", v50, v22, v23, v24, v25, "END");
  return v3;
}

uint64_t ruleset_RewriteTnRegions(uint64_t result, unsigned int a2, int a3, const char *a4, const char **a5)
{
  __s2 = 0;
  v91 = 0;
  v89 = 0;
  if (a4)
  {
    if (a5)
    {
      if (!*a5)
      {
        v9 = result;
        result = InitRsrcFunction(*result, *(result + 8), &v91);
        if ((result & 0x80000000) == 0)
        {
          if (v9[3])
          {
            if (a3 || vector_GetElemAt(v9[10], a2, &v89))
            {
              if (log_HasTraceTuningDataSubscriber(*(v91 + 32)))
              {
                v19 = *(v91 + 32);
                if (a3)
                {
                  log_OutTraceTuningData(v19, 16, "%s%s %s%s", v14, v15, v16, v17, v18, "BEG");
                }

                else
                {
                  log_OutTraceTuningData(v19, 9, "%s%s %s%d %s%s", v14, v15, v16, v17, v18, "BEG");
                }
              }

              v20 = strlen(a4);
              v21 = heap_Alloc(*(v91 + 8), (v20 + 1));
              *a5 = v21;
              if (v21)
              {
                *v21 = 0;
                v22 = strlen(a4);
                if (v22 >= 1)
                {
                  v23 = 0;
                  v24 = &a4[v22];
                  if (a3)
                  {
                    v25 = 18;
                  }

                  else
                  {
                    v25 = 11;
                  }

                  v87 = v25;
                  v26 = a4;
                  v88 = &a4[v22];
                  do
                  {
                    v27 = strlen(v26 + 1);
                    v28 = esc_seq_tn_seq(*v9, v9[1], v9[11], v9[12], v26 + 1, v27);
                    if (v28)
                    {
                      v29 = v28;
                    }

                    else
                    {
                      v29 = v24;
                    }

                    v30 = v29 - v26;
                    v31 = heap_Alloc(*(v91 + 8), (v29 - v26 + 1));
                    if (!v31)
                    {
                      break;
                    }

                    v32 = v31;
                    memcpy(v31, v26, v30);
                    v32[v30] = 0;
                    v33 = v9[8];
                    v93 = v32;
                    v92 = 0;
                    v34 = strlen(v32);
                    if (esc_seq_tn_strncmp(*v9, v9[1], v9[11], v9[12], v32, v34, &v92))
                    {
                      IsMatchingEscTn = strcmp(v33, "normal") == 0;
                    }

                    else
                    {
                      IsMatchingEscTn = ruleset_IsMatchingEscTn(v9, v33, &v93);
                      if (a3 && IsMatchingEscTn)
                      {
                        v36 = v93;
                        IsMatchingEscTn = 1;
                        goto LABEL_37;
                      }
                    }

                    v36 = v32;
                    if (!a3 && IsMatchingEscTn)
                    {
                      v37 = ruleset_stristr(v32, v9[8]);
                      if (v37)
                      {
                        v38 = strchr(v37, 92);
                        if (v38)
                        {
                          v23 = (v38 + 1 - v32);
                        }

                        else
                        {
                          v23 = 0;
                        }

                        v39 = 0;
                        if (v38)
                        {
                          v36 = v38 + 1;
                        }

                        else
                        {
                          v36 = v32;
                        }
                      }

                      else
                      {
                        v39 = 0;
                        v36 = v32;
                      }

                      goto LABEL_49;
                    }

LABEL_37:
                    v39 = 1;
                    if (a3)
                    {
                      if (IsMatchingEscTn)
                      {
                        v40 = v9[9];
                        if (v40)
                        {
                          if (*v40)
                          {
                            v86 = v23;
                            LOWORD(v93) = 0;
                            v41 = strlen(v32);
                            if (esc_seq_tn_strncmp(*v9, v9[1], v9[11], v9[12], v32, v41, &v93))
                            {
                              v42 = strlen(v36);
                              v43 = heap_Realloc(*(v91 + 8), v36, (v42 + 13));
                              if (!v43)
                              {
                                goto LABEL_76;
                              }

                              v36 = v43;
                              v44 = strlen(v43);
                              memmove(v36 + 12, v36, v44 + 1);
                              *v36 = 1853119515;
                              *(v36 + 4) = 0x5C6C616D726F6E3DLL;
                            }

                            else
                            {
                              v45 = strlen(v9[9]);
                              v46 = strlen(v32);
                              v47 = heap_Realloc(*(v91 + 8), v32, (v45 + v46 + 1));
                              if (!v47)
                              {
                                goto LABEL_76;
                              }

                              v36 = v47;
                              v48 = ruleset_stristr(v47, v9[8]);
                              v49 = strchr(v48, 92);
                              if (v49)
                              {
                                v50 = v49;
                                v51 = strlen(v49);
                                memmove(&v48[v45], v50, v51 + 1);
                                memcpy(v48, v9[9], v45);
                              }
                            }

                            v39 = 1;
                            v32 = v36;
                            v23 = v86;
                          }
                        }
                      }
                    }

LABEL_49:
                    if (log_HasTraceTuningDataSubscriber(*(v91 + 32)))
                    {
                      v57 = *(v91 + 32);
                      if (a3)
                      {
                        log_OutTraceTuningData(v57, 18, "%s%s %s%d %s%d", v52, v53, v54, v55, v56, "FOCUS");
                      }

                      else
                      {
                        log_OutTraceTuningData(v57, 10, "%s%s %s%s %s%d %s%d", v52, v53, v54, v55, v56, "BEG");
                      }
                    }

                    if (v39)
                    {
                      v58 = strlen(v36);
                      v59 = heap_Alloc(*(v91 + 8), (v58 + 1));
                      __s2 = v59;
                      if (!v59)
                      {
                        goto LABEL_76;
                      }

                      v60 = v23;
                      strcpy(v59, v36);
                      v61 = 0;
                    }

                    else
                    {
                      if ((sub_GsubCompiledRe(v9[2], *v89, *(v89 + 8), *(v89 + 16), v36, &__s2) & 0x80000000) != 0 || (v62 = strlen(__s2), (v63 = heap_Alloc(*(v91 + 8), (v23 + v62 + 1))) == 0))
                      {
LABEL_76:
                        heap_Free(*(v91 + 8), v32);
                        break;
                      }

                      v61 = v63;
                      v64 = strncpy(v63, v26, v23);
                      v60 = v23;
                      v64[v23] = 0;
                      strcat(v64, __s2);
                    }

                    heap_Free(*(v91 + 8), v32);
                    v65 = *(v91 + 8);
                    v66 = *a5;
                    v67 = strlen(*a5);
                    if (v61)
                    {
                      v68 = strlen(v61);
                      v69 = heap_Realloc(v65, v66, (v67 + v68 + 1));
                      *a5 = v69;
                      if (!v69)
                      {
                        break;
                      }

                      v70 = v61;
                    }

                    else
                    {
                      v71 = strlen(__s2);
                      v69 = heap_Realloc(v65, v66, (v67 + v71 + 1));
                      *a5 = v69;
                      if (!v69)
                      {
                        break;
                      }

                      v70 = __s2;
                    }

                    strcat(v69, v70);
                    v23 = v60;
                    if (log_HasTraceTuningDataSubscriber(*(v91 + 32)))
                    {
                      log_OutTraceTuningData(*(v91 + 32), v87, "%s%s", v72, v73, v74, v75, v76, "APPEND");
                    }

                    if (__s2)
                    {
                      heap_Free(*(v91 + 8), __s2);
                      __s2 = 0;
                    }

                    if (v61)
                    {
                      heap_Free(*(v91 + 8), v61);
                    }

                    if (!a3)
                    {
                      v84 = *a5;
                      log_OutTraceTuningData(*(v91 + 32), 10, "%s%s %s%s", v72, v73, v74, v75, v76, "END");
                    }

                    v26 = v29;
                    v24 = v88;
                  }

                  while (v29 < v88);
                }
              }

              result = log_HasTraceTuningDataSubscriber(*(v91 + 32));
              if (result)
              {
                if (a3)
                {
                  v82 = 16;
                }

                else
                {
                  v82 = 9;
                }

                v85 = *a5;
                return log_OutTraceTuningData(*(v91 + 32), v82, "%s%s %s%u %s%s", v77, v78, v79, v80, v81, "END");
              }
            }

            else
            {
              return log_OutPublic(*(v91 + 32), "RETTT", 11025, 0, v10, v11, v12, v13, v83);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t ruleset_ReadLine(uint64_t a1, uint64_t *a2, unsigned int *a3, char *__s, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = 0;
  v11 = *a3;
  v12 = *a2;
  if (*a3 >= 0x3FF)
  {
    v13 = 1023;
  }

  else
  {
    v13 = v11;
  }

  v14 = v11 - v13;
  while (v13 != v10)
  {
    v15 = *(v12 + v10);
    v16 = v10 + 1;
    __s[v10++] = v15;
    if (v15 == 10)
    {
      LODWORD(v13) = v16;
      v14 = v11 - v16;
      v17 = v12 + v16;
      goto LABEL_9;
    }
  }

  LODWORD(v13) = v13;
  v17 = v12 + v10;
LABEL_9:
  __s[v13] = 0;
  *a3 = v14;
  *a2 = v17;
  if (__s && v13)
  {
    v18 = strlen(__s);
    if (!v18)
    {
      return 0;
    }

    v23 = v18 - 1;
    if (v14 && __s[v23] != 10)
    {
      v24 = 2288001024;
      log_OutPublic(*(a1 + 32), "RETTT", 11008, "%s%u%s%s", v19, v20, v21, v22, "maximumCharacters");
      return v24;
    }

    if (__s[v23] == 10)
    {
      __s[v23] = 0;
    }

    if (v18 != 1 && __s[v18 - 2] == 13)
    {
      v24 = 0;
      __s[v18 - 2] = 0;
    }

    else
    {
      return 0;
    }
  }

  else if (v14)
  {
    log_OutPublic(*(a1 + 32), "RETTT", 11010, 0, a5, a6, a7, a8, v26);
    return 2288001028;
  }

  else
  {
    return 2288001047;
  }

  return v24;
}

uint64_t ruleset_IsMatchingEscTn(uint64_t a1, const char *a2, char **a3)
{
  v6 = *a3;
  v13 = 0;
  v7 = strlen(v6);
  if (esc_seq_tn_strncmp(*a1, *(a1 + 8), *(a1 + 88), *(a1 + 96), v6, v7, &v13))
  {
    return 0;
  }

  v8 = &v6[v13];
  if (*v8 != 61)
  {
    return 0;
  }

  v9 = (v8 + 1);
  v10 = strlen(a2);
  if (LH_strnicmp(v9, a2, v10))
  {
    return 0;
  }

  v11 = strlen(a2);
  if (*(v9 + v11) != 92)
  {
    return 0;
  }

  *a3 = (v9 + v11 + 1);
  return 1;
}

char *ruleset_stristr(char *a1, char *__s)
{
  result = 0;
  if (a1 && __s)
  {
    if (*a1 && (v5 = *__s) != 0 && (v6 = strlen(__s), v7 = __tolower(v5), (v8 = *a1) != 0))
    {
      v9 = v6;
      v10 = v7;
      while (__tolower(v8) != v10 || LH_strnicmp(a1, __s, v9))
      {
        v11 = *++a1;
        v8 = v11;
        if (!v11)
        {
          return 0;
        }
      }

      return a1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_ObjOpen(_WORD *a1, uint64_t a2, uint64_t *a3)
{
  v3 = 2147491847;
  v19 = 0;
  v18 = 0;
  if (a3 && (InitRsrcFunction(a1, a2, &v19) & 0x80000000) == 0)
  {
    *a3 = 0;
    v7 = heap_Alloc(v19[1], 32);
    if (!v7)
    {
      log_OutPublic(v19[4], "RETTT", 11002, 0, v8, v9, v10, v11, v17);
      return 2147491850;
    }

    v12 = v7;
    *v7 = 0u;
    *(v7 + 16) = 0u;
    *v7 = a1;
    *(v7 + 8) = a2;
    v13 = PCRE_Adapter_Create(1, v7 + 16, a1, a2);
    v14 = v19;
    if ((v13 & 0x80000000) != 0)
    {
      v3 = v13;
    }

    else
    {
      paramc_ParamGetUInt(v19[5], "retttmaxpcreframeblocks", &v18);
      paramc_ParamGetUInt(v19[5], "retttnumframesinblock", &v18);
      v15 = PCRE_ObjOpen(*(v12 + 16), *(v12 + 24), 0);
      if ((v15 & 0x80000000) == 0)
      {
        v3 = 0;
        *a3 = v12;
        return v3;
      }

      v3 = v15;
      v14 = v19;
    }

    heap_Free(v14[1], v12);
  }

  return v3;
}

uint64_t sub_ObjClose(uint64_t a1)
{
  v1 = 2147491847;
  v5 = 0;
  if (a1 && (InitRsrcFunction(*a1, *(a1 + 8), &v5) & 0x80000000) == 0)
  {
    v3 = PCRE_ObjClose(*(a1 + 16), *(a1 + 24));
    if ((v3 & 0x80000000) != 0)
    {
      return v3;
    }

    else
    {
      heap_Free(*(v5 + 8), a1);
      return 0;
    }
  }

  return v1;
}

uint64_t sub_Substitute(uint64_t a1, uint64_t a2, int a3, char *a4, const char *a5, int a6, const char **a7)
{
  v108 = *MEMORY[0x1E69E9840];
  v7 = 2147491847;
  v104 = 0;
  if (a1)
  {
    if (a2)
    {
      if (a5)
      {
        if (a7)
        {
          v101 = 0;
          v102 = 0;
          v103 = 0;
          inited = InitRsrcFunction(*a1, *(a1 + 8), &v104);
          if ((inited & 0x80000000) == 0)
          {
            v17 = strlen(a5);
            if ((v17 & 0x80000000) != 0)
            {
              log_OutPublic(*(v104 + 4), "RETTT", 11004, "%s%u", v13, v14, v15, v16, "bufferBytes");
              v7 = 2147491849;
            }

            else
            {
              v18 = v104;
              v19 = *(v104 + 1);
              v20 = *(v104 + 4);
              v100[0] = v19;
              v100[1] = v20;
              v102 = v17;
              v96 = a1;
              v97 = v17;
              v21 = *a7;
              if (*a7)
              {
                v95 = a4;
                v94 = a6;
                LODWORD(v103) = strlen(v21);
                v101 = v21;
                v93 = a7;
                *a7 = 0;
                goto LABEL_12;
              }

              LODWORD(v103) = 128;
              v27 = heap_Alloc(v19, 128);
              v101 = v27;
              if (v27)
              {
                v95 = a4;
                v94 = a6;
                v93 = a7;
                bzero(v27, v103);
                v18 = v104;
LABEL_12:
                log_OutTraceTuningData(v18[4], 12, "%s%s", v22, v23, v24, v25, v26, "BEG");
                HasTraceTuningDataSubscriber = log_HasTraceTuningDataSubscriber(*(v104 + 4));
                v38 = v97;
                if (!v97 && HasTraceTuningDataSubscriber)
                {
                  log_OutTraceTuningData(*(v104 + 4), 13, "%s%s %s%d", v33, v34, v35, v36, v37, "BEG");
                  log_OutTraceTuningData(*(v104 + 4), 13, "%s%s %s%s", v39, v40, v41, v42, v43, "RES");
                }

                v44 = 0;
                v45 = -1;
                v46 = -1;
                while (v44 < v38)
                {
                  log_OutTraceTuningData(*(v104 + 4), 13, "%s%s %s%d", v33, v34, v35, v36, v37, "BEG");
                  v47 = PCRE_Exec(*(v96 + 16), *(v96 + 24), a2, a3, a5, v38, v44, &v106, 0x1Eu, &inited);
                  if ((inited & 0x80000000) != 0)
                  {
                    goto LABEL_58;
                  }

                  v53 = v47;
                  if ((v47 & 0x80000000) != 0)
                  {
                    inited = PCRE_ErrorToLhError(*(v96 + 16), *(v96 + 24), v47);
                    v81 = *(v104 + 4);
                    v82 = "RES";
LABEL_45:
                    log_OutTraceTuningData(v81, 13, "%s%s %s%s %s%u", v76, v77, v78, v79, v80, v82);
                    break;
                  }

                  if (v106 == v46 && v107 == v45)
                  {
                    log_OutTraceTuningData(*(v104 + 4), 13, "%s%s %s%s", v48, v49, v50, v51, v52, "RES");
                    log_OutTraceTuningData(*(v104 + 4), 13, "%s%s %s%d", v54, v55, v56, v57, v58, "BEG");
                    v59 = a5[v44];
                    if ((~v59 & 0xC0) != 0)
                    {
                      v60 = 0;
                    }

                    else
                    {
                      v60 = pcre_sub_utf8_table4[v59 & 0x3F];
                    }

                    v61 = PCRE_Exec(*(v96 + 16), *(v96 + 24), a2, a3, a5, v97, (v60 + v44 + 1), &v106, 0x1Eu, &inited);
                    if ((inited & 0x80000000) != 0)
                    {
                      goto LABEL_58;
                    }

                    v53 = v61;
                    if ((v61 & 0x80000000) != 0)
                    {
                      inited = PCRE_ErrorToLhError(*(v96 + 16), *(v96 + 24), v61);
                      v81 = *(v104 + 4);
                      v82 = "END";
                      goto LABEL_45;
                    }
                  }

                  if (log_HasTraceTuningDataSubscriber(*(v104 + 4)))
                  {
                    if (v53)
                    {
                      v67 = 0;
                      v68 = 1;
                      do
                      {
                        v92 = *(&v106 + v68);
                        v91 = *(&v106 + v67);
                        log_OutTraceTuningData(*(v104 + 4), 14, "%s%d %s%d %s%d", v62, v63, v64, v65, v66, "$");
                        v67 += 2;
                        v68 = v67 | 1;
                      }

                      while (v68 < 2 * v53);
                    }

                    else
                    {
                      log_OutTraceTuningData(*(v104 + 4), 13, "%s%d %s%s", v62, v63, v64, v65, v66, "IDXBEG");
                    }

                    log_OutTraceTuningData(*(v104 + 4), 13, "%s%s %s%s %s%d %s%d", v62, v63, v64, v65, v66, "END");
                  }

                  inited = sub_Append(v100, &a5[v44], (v106 - v44), v62, v63, v64, v65, v66);
                  if ((inited & 0x80000000) != 0)
                  {
                    goto LABEL_58;
                  }

                  v69 = log_HasTraceTuningDataSubscriber(*(v104 + 4));
                  v75 = HIDWORD(v102);
                  if (v69)
                  {
                    log_OutTraceTuningData(*(v104 + 4), 15, "%s%.*s", v70, v71, v72, v73, v74, "APPEND");
                    v75 = HIDWORD(v102);
                  }

                  inited = sub_AppendSubstitute(v100, v95, a5, &v106, v53, v72, v73, v74);
                  if ((inited & 0x80000000) != 0)
                  {
                    goto LABEL_58;
                  }

                  _Gryphon_TrackSubstitution(v104, v107 - v106, v75, HIDWORD(v102) - v75);
                  if (log_HasTraceTuningDataSubscriber(*(v104 + 4)))
                  {
                    log_OutTraceTuningData(*(v104 + 4), 15, "%s%.*s", v33, v34, v35, v36, v37, "APPEND");
                  }

                  v38 = v97;
                  v46 = v106;
                  v45 = v107;
                  v44 = v107;
                  if (!v94)
                  {
                    goto LABEL_47;
                  }
                }

                v45 = v44;
LABEL_47:
                v83 = inited;
                if (inited >> 20 == 2213)
                {
                  if ((inited & 0x1FFF) == 0xA)
                  {
                    v84 = *(v104 + 4);
                    v85 = 11002;
                    v86 = 0;
                  }

                  else
                  {
                    if ((inited & 0x1FFF) == 0x14)
                    {
                      inited = 0;
LABEL_55:
                      inited = sub_Append(v100, &a5[v45], v97 - v45 + 1, v33, v34, v35, v36, v37);
                      if ((inited & 0x80000000) != 0)
                      {
LABEL_58:
                        *v93 = v101;
                        log_OutTraceTuningData(*(v104 + 4), 12, "%s%s %s%u %s%s", v48, v49, v50, v51, v52, "END");
                        v7 = inited;
                        goto LABEL_59;
                      }

LABEL_56:
                      if (log_HasTraceTuningDataSubscriber(*(v104 + 4)))
                      {
                        log_OutTraceTuningData(*(v104 + 4), 15, "%s%.*s", v48, v49, v50, v51, v52, "APPEND");
                      }

                      goto LABEL_58;
                    }

                    v84 = *(v104 + 4);
                    v90 = "lhError";
                    v86 = "%s%x";
                    v85 = 11027;
                  }

                  log_OutPublic(v84, "RETTT", v85, v86, v34, v35, v36, v37, v90);
                  v83 = inited;
                }

                if ((v83 & 0x80000000) != 0)
                {
                  goto LABEL_56;
                }

                goto LABEL_55;
              }

              log_OutPublic(*(v104 + 4), "RETTT", 11002, 0, v28, v29, v30, v31, v89);
              v7 = 2147491850;
            }
          }
        }
      }
    }
  }

LABEL_59:
  v87 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t sub_Append(uint64_t a1, void *__src, size_t __n, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && __src)
  {
    v10 = __n;
    if (__n)
    {
      v11 = *(a1 + 28);
      v12 = v11 + __n;
      if (v11 <= (__n ^ 0x7FFFFFFF) && (v12 < 0xF4240 || v12 <= 2 * *(a1 + 24)))
      {
        if (*(a1 + 32) >= v12)
        {
          v22 = *(a1 + 16);
LABEL_21:
          memcpy((v22 + v11), __src, v10);
          v13 = 0;
          *(a1 + 28) += v10;
          return v13;
        }

        if (v12 <= 0x7FFFFF7F)
        {
          v14 = (v12 & 0x7FFFFF80) + 128;
        }

        else
        {
          v14 = 0x7FFFFFFFLL;
        }

        v15 = *(a1 + 16);
        v16 = *a1;
        if (v15)
        {
          v17 = heap_Realloc(v16, v15, v14);
          if (v17)
          {
            v22 = v17;
            bzero((v17 + *(a1 + 32) + 1), (v14 + ~*(a1 + 32)));
LABEL_20:
            *(a1 + 16) = v22;
            *(a1 + 32) = v14;
            v11 = *(a1 + 28);
            goto LABEL_21;
          }
        }

        else
        {
          v22 = heap_Calloc(v16, v14, 1);
          if (v22)
          {
            goto LABEL_20;
          }
        }

        log_OutPublic(*(a1 + 8), "RETTT", 11002, 0, v18, v19, v20, v21, v24);
        return 2147491850;
      }

      log_OutPublic(*(a1 + 8), "RETTT", 11001, "%s%u", a5, a6, a7, a8, "bufferLimitBytes");
      return 2147491849;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v13 = 2147491847;
    if (a1)
    {
      log_OutPublic(*(a1 + 8), "RETTT", 11000, 0, a5, a6, a7, a8, v24);
    }
  }

  return v13;
}

uint64_t sub_AppendSubstitute(uint64_t a1, char *a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && a2 && a4)
  {
    v11 = a5;
    _Gryphon_ReportSubstitution(a4[1] - *a4, (a3 + *a4), a2);
    v18 = strlen(a2);
    if (v18)
    {
      v19 = 0;
      while (1)
      {
        v20 = &a2[v19];
        v21 = *v20;
        if (v21 == 36)
        {
          break;
        }

        if (v21 == 92)
        {
          __src = 0;
          v22 = v20[1];
          if (v22 <= 0x61)
          {
            if (v22 - 48 < 8)
            {
              v23 = (v20 + 2);
              v24 = v20 + 4;
              v25 = 1;
              LOBYTE(v22) = v22 - 48;
              while (1)
              {
                v26 = *v23;
                if ((*v23 & 0xF8) != 0x30)
                {
                  goto LABEL_15;
                }

                ++v23;
                LOBYTE(v22) = v26 + 8 * v22 - 48;
                if (v25++ >= 2)
                {
                  goto LABEL_14;
                }
              }
            }

            if (v22 == 97)
            {
              LODWORD(v23) = v20 + 2;
              LOBYTE(v22) = 7;
              goto LABEL_15;
            }

            goto LABEL_69;
          }

          if (v20[1] > 0x71u)
          {
            if (v20[1] > 0x75u)
            {
              if (v22 == 118)
              {
                LODWORD(v23) = v20 + 2;
                LOBYTE(v22) = 11;
                goto LABEL_15;
              }

              if (v22 == 120)
              {
                v22 = 0;
                v23 = (v20 + 2);
                v24 = v20 + 4;
                v36 = 1;
                do
                {
                  v37 = v36;
                  v38 = *v23;
                  if (v38 - 48 >= 0xA)
                  {
                    if (v38 - 65 > 0x25 || ((1 << (v38 - 65)) & 0x3F0000003FLL) == 0)
                    {
                      goto LABEL_15;
                    }

                    v40 = 16 * v22 + v38;
                    v41 = v40 - 87;
                    v22 = v40 - 55;
                    if (v38 > 0x60)
                    {
                      v22 = v41;
                    }
                  }

                  else
                  {
                    v22 = (v38 - 48) | (16 * v22);
                  }

                  v36 = 0;
                  ++v23;
                }

                while ((v37 & 1) != 0);
LABEL_14:
                LODWORD(v23) = v24;
                goto LABEL_15;
              }

              goto LABEL_69;
            }

            if (v22 == 114)
            {
              LODWORD(v23) = v20 + 2;
              LOBYTE(v22) = 13;
              goto LABEL_15;
            }

            if (v22 != 116)
            {
LABEL_69:
              LODWORD(v23) = v20 + 2;
              goto LABEL_15;
            }

            LODWORD(v23) = v20 + 2;
            LOBYTE(v22) = 9;
          }

          else if (v20[1] > 0x65u)
          {
            if (v22 == 102)
            {
              LODWORD(v23) = v20 + 2;
              LOBYTE(v22) = 12;
              goto LABEL_15;
            }

            if (v22 != 110)
            {
              goto LABEL_69;
            }

            LODWORD(v23) = v20 + 2;
            LOBYTE(v22) = 10;
          }

          else
          {
            if (v22 == 98)
            {
              LODWORD(v23) = v20 + 2;
              LOBYTE(v22) = 8;
              goto LABEL_15;
            }

            if (v22 != 101)
            {
              goto LABEL_69;
            }

            LODWORD(v23) = v20 + 2;
            LOBYTE(v22) = 27;
          }

LABEL_15:
          LOBYTE(__src) = v22;
          v28 = sub_Append(a1, &__src, 1uLL, v13, v14, v15, v16, v17);
          if ((v28 & 0x80000000) != 0)
          {
            return v28;
          }

          LODWORD(v23) = v23 - a2;
          goto LABEL_41;
        }

        v28 = sub_Append(a1, v20, 1uLL, v13, v14, v15, v16, v17);
        if ((v28 & 0x80000000) != 0)
        {
          return v28;
        }

        LODWORD(v23) = v19 + 1;
LABEL_41:
        v19 = v23;
        if (v23 >= v18)
        {
          return 0;
        }
      }

      v23 = (v19 + 1);
      v29 = v23[a2];
      v30 = v29 - 58;
      if ((v29 - 58) <= 0xF5u)
      {
        if (v29 != 123)
        {
          v35 = a1;
          v34 = 1;
LABEL_40:
          v28 = sub_Append(v35, v20, v34, v13, v14, v15, v16, v17);
          if ((v28 & 0x80000000) != 0)
          {
            return v28;
          }

          goto LABEL_41;
        }

        LODWORD(v23) = v19 + 2;
        v29 = a2[v19 + 2];
      }

      if ((v29 - 48) > 9)
      {
        v31 = 0;
      }

      else
      {
        v31 = 0;
        do
        {
          v31 = 10 * v31 + (v29 - 48);
          LODWORD(v23) = v23 + 1;
          v29 = a2[v23];
        }

        while ((v29 - 48) < 0xA);
      }

      if (v30 <= 0xF5u)
      {
        if (v29 != 125)
        {
          goto LABEL_41;
        }

        LODWORD(v23) = v23 + 1;
      }

      if (v31 >= v11)
      {
        goto LABEL_41;
      }

      v32 = a4[2 * v31];
      if ((v32 & 0x80000000) != 0)
      {
        goto LABEL_41;
      }

      v33 = a4[2 * v31 + 1];
      if (v33 < 0)
      {
        goto LABEL_41;
      }

      v34 = (v33 - v32);
      v20 = (a3 + v32);
      v35 = a1;
      goto LABEL_40;
    }

    return 0;
  }

  else
  {
    v42 = 2147491847;
    if (a1)
    {
      log_OutPublic(*(a1 + 8), "RETTT", 11003, 0, a5, a6, a7, a8, v44);
    }
  }

  return v42;
}

uint64_t PCRE_V10_Adapter_Init(void *a1)
{
  a1[2] = PCRE_V10_ObjOpen;
  a1[3] = PCRE_V10_ObjClose;
  a1[4] = PCRE_V10_ErrorToLhError;
  a1[5] = PCRE_V10_CompilePattern;
  a1[11] = PCRE_V10_Exec;
  a1[8] = PCRE_V10_SerializeAndEncode;
  a1[9] = PCRE_V10_SerializeAndEncodeBatch;
  a1[6] = PCRE_V10_SerializeAndDecode;
  a1[7] = PCRE_V10_SerializeAndDecodeBatch;
  a1[10] = PCRE_V10_SerializeFree;
  a1[12] = &PCRE_V10_OPTIONS_MAP;
  a1[13] = PCRE_V10_GetVersion;
  return 0;
}

uint64_t PCRE_V10_ObjOpen(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = 2320506890;
  v6 = heap_Alloc(*(a3 + 8), 32);
  if (v6)
  {
    v7 = v6;
    v8 = pcre2_general_context_create_8(loc_PCRE_V10_private_malloc, loc_PCRE_V10_private_free, *(a3 + 8));
    if (v8)
    {
      v9 = v8;
      pcre2_compile_context_create_8(v8);
      v11 = v10;
      pcre2_match_context_create_8(v9);
      if (v11)
      {
        v13 = v12 == 0;
      }

      else
      {
        v13 = 1;
      }

      if (!v13)
      {
        v5 = 0;
        *v7 = a3;
        v7[1] = v9;
        v7[2] = v11;
        v7[3] = v12;
        *a1 = v7;
      }
    }
  }

  return v5;
}

uint64_t PCRE_V10_ObjClose(void *a1)
{
  if (!a1)
  {
    return 2320506886;
  }

  v2 = a1[3];
  if (v2)
  {
    pcre2_general_context_free_8(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    pcre2_general_context_free_8(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    pcre2_general_context_free_8(v4);
  }

  heap_Free(*(*a1 + 8), a1);
  return 0;
}

uint64_t PCRE_V10_ErrorToLhError(int a1)
{
  if ((a1 & 0x80000000) == 0)
  {
    return 0;
  }

  result = 2320506887;
  if (a1 <= -38)
  {
    if (a1 > -49)
    {
      switch(a1)
      {
        case -48:
          return 2320506890;
        case -47:
          return 2320514656;
        case -44:
          return 2320514660;
      }

      return 2320514663;
    }

    if (a1 == -55)
    {
      return 2320514663;
    }

    if (a1 == -51)
    {
      return 2320507149;
    }

    if (a1 != -49)
    {
      return 2320514663;
    }

    return 2320506900;
  }

  if (a1 > -32)
  {
    if (a1 <= -3)
    {
      if (a1 == -31)
      {
        return 2320514662;
      }

      if (a1 == -29)
      {
        return result;
      }

      return 2320514663;
    }

    if (a1 == -2)
    {
      return 2320514658;
    }

    if (a1 != -1)
    {
      return 2320514663;
    }

    return 2320506900;
  }

  if (a1 == -37)
  {
    return 2320514657;
  }

  if (a1 != -34)
  {
    return 2320514663;
  }

  return result;
}

uint64_t PCRE_V10_CompilePattern(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, _DWORD *a6)
{
  v9 = *(a1 + 16);
  v10 = pcre2_compile_8(a2);
  if (!v10)
  {
    pcre2_get_error_message_8(0, a4, a5);
  }

  if (a6)
  {
    *a6 = 0;
  }

  return v10;
}

uint64_t PCRE_V10_Exec(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int32x2_t *a7, int a8, int *a9)
{
  v13 = pcre2_match_data_create_from_pattern_8(a2, *(a1 + 8));
  if (v13)
  {
    v14 = *(a1 + 24);
    matched = pcre2_match_8(a2);
    v16 = matched;
    if ((matched & 0x80000000) == 0)
    {
      if (a8 / 3 >= matched)
      {
        v17 = matched;
      }

      else
      {
        v17 = (a8 / 3);
      }

      ovector_pointer_8 = pcre2_get_ovector_pointer_8(v13);
      if (v17 >= 1)
      {
        do
        {
          v19 = *ovector_pointer_8++;
          *a7++ = vmovn_s64(v19);
          --v17;
        }

        while (v17);
      }
    }

    v20 = 0;
  }

  else
  {
    v20 = -1974460406;
    *a9 = -1974460406;
    v16 = 0xFFFFFFFFLL;
  }

  pcre2_match_data_free_8(v13);
  *a9 = v20;
  return v16;
}

uint64_t PCRE_V10_SerializeAndEncode(uint64_t a1, size_t *a2, _DWORD *a3, uint64_t *a4)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11 = 0;
  v12[0] = a2;
  v6 = pcre2_serialize_encode_8(v12, 1, &v11, &v10, *(a1 + 8));
  if ((v6 & 0x80000000) == 0)
  {
    v7 = v11;
    *a3 = v10;
    *a4 = v7;
  }

  result = PCRE_V10_ErrorToLhError(v6);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t PCRE_V10_SerializeAndEncodeBatch(uint64_t a1, size_t **a2, uint64_t a3, _DWORD *a4, uint64_t *a5)
{
  v10 = 0;
  v11 = 0;
  v7 = pcre2_serialize_encode_8(a2, a3, &v11, &v10, *(a1 + 8));
  if ((v7 & 0x80000000) == 0)
  {
    v8 = v11;
    *a4 = v10;
    *a5 = v8;
  }

  return PCRE_V10_ErrorToLhError(v7);
}

uint64_t PCRE_V10_SerializeAndDecode(uint64_t a1, _DWORD *a2, void *a3)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  v4 = pcre2_serialize_decode_8(v7, 1, a2, *(a1 + 8));
  result = PCRE_V10_ErrorToLhError(v4);
  *a3 = v7[0];
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t PCRE_V10_SerializeAndDecodeBatch(uint64_t a1, _DWORD *a2, int a3, uint64_t a4)
{
  if (pcre2_serialize_decode_8(a4, a3, a2, *(a1 + 8)) == a3)
  {
    return 0;
  }

  else
  {
    return 2320514662;
  }
}

_WORD *PCRE_V10_GetVersion(_WORD *result, _WORD *a2)
{
  *result = 10;
  *a2 = 32;
  return result;
}

uint64_t PCRE_V10_Adapter_Pattern_Init(void *a1)
{
  a1[2] = PCRE_V10_FreePattern;
  a1[3] = PCRE_V10_GetPatternSize;
  a1[4] = PCRE_V10_CopyPattern;
  return 0;
}

uint64_t PCRE_V10_GetPatternSize(uint64_t a1, uint64_t *a2)
{
  v2 = pcre2_pattern_info_8(a1, 0x16u, a2);

  return PCRE_V10_ErrorToLhError(v2);
}

uint64_t PCRE_Adapter_Create(int a1, uint64_t a2, _WORD *a3, int a4)
{
  v11 = 0;
  inited = InitRsrcFunction(a3, a4, &v11);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v7 = 2320506890;
  v8 = heap_Alloc(*(v11 + 8), 112);
  if (v8)
  {
    v9 = v8;
    if (a1 == 1)
    {
      v7 = PCRE_V10_Adapter_Init(v8);
    }

    else
    {
      v7 = 2320506898;
    }

    *v9 = v11;
    v9[1] = 0;
    *a2 = v9;
    *(a2 + 8) = 56664;
  }

  return v7;
}

uint64_t PCRE_ObjOpen(uint64_t *a1, int a2, uint64_t a3)
{
  result = safeh_HandleCheck(a1, a2, 56664, 112);
  if ((result & 0x80000000) == 0)
  {
    v6 = a1[2];
    v7 = *a1;

    return v6(a1 + 1, a3, v7);
  }

  return result;
}

uint64_t PCRE_ObjClose(uint64_t a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 56664, 112);
  if ((result & 0x80000000) == 0)
  {
    v4 = (*(a1 + 24))(*(a1 + 8));
    heap_Free(*(*a1 + 8), a1);
    return v4;
  }

  return result;
}

uint64_t PCRE_ErrorToLhError(uint64_t a1, int a2, uint64_t a3)
{
  result = safeh_HandleCheck(a1, a2, 56664, 112);
  if ((result & 0x80000000) == 0)
  {
    v6 = *(a1 + 32);

    return v6(a3);
  }

  return result;
}

void *PCRE_CompilePattern(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v11 = *MEMORY[0x1E69E9840];
  v9[0] = 0;
  v9[1] = 0;
  v10 = 0;
  result = PCRE_CompilePatternWithOptions(a1, a2, a3, v9, a4, a5, a6, a7);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void *PCRE_CompilePatternWithOptions(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int *a8)
{
  v15 = safeh_HandleCheck(a1, a2, 56664, 112);
  if (v15 < 0)
  {
    v20 = 0;
    goto LABEL_13;
  }

  v16 = 0;
  LODWORD(v17) = 0;
  do
  {
    v18 = *(a4 + v16);
    if (v18)
    {
      v18 = *(*(a1 + 96) + v16);
    }

    v17 = v18 | v17;
    v16 += 4;
  }

  while (v16 != 20);
  v19 = heap_Alloc(*(*a1 + 8), 40);
  v20 = v19;
  if (!v19)
  {
LABEL_12:
    v15 = -1974460406;
    goto LABEL_13;
  }

  PCRE_V10_Adapter_Pattern_Init(v19);
  v21 = (*(a1 + 40))(*(a1 + 8), a3, v17, a5, a6, a7);
  if (!v21)
  {
    v20 = 0;
    goto LABEL_12;
  }

  *v20 = *a1;
  v20[1] = v21;
LABEL_13:
  *a8 = v15;
  return v20;
}

uint64_t PCRE_FreePattern(uint64_t a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 56665, 0);
  if ((v3 & 0x80000000) == 0)
  {
    (*(a1 + 16))(*(a1 + 8));
    heap_Free(*(*a1 + 8), a1);
  }

  return v3;
}

uint64_t PCRE_CopyPattern(uint64_t a1, int a2, uint64_t a3, _DWORD *a4)
{
  v7 = safeh_HandleCheck(a1, a2, 56665, 0);
  if ((v7 & 0x80000000) != 0)
  {
    goto LABEL_5;
  }

  v8 = 2320506890;
  v9 = heap_Alloc(*(*a1 + 8), 40);
  if (v9)
  {
    v10 = v9;
    PCRE_V10_Adapter_Pattern_Init(v9);
    v11 = *(a1 + 8);
    *v10 = *a1;
    v12 = (*(a1 + 32))(v11);
    v10[1] = v12;
    if (v12)
    {
      *a3 = v10;
      *(a3 + 8) = 56665;
LABEL_5:
      v8 = v7;
    }
  }

  *a4 = v8;
  return v8;
}

uint64_t PCRE_Exec(void *a1, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, _DWORD *a10)
{
  v14 = *MEMORY[0x1E69E9840];
  v12[0] = 0;
  v12[1] = 0;
  v13 = 0;
  result = PCRE_ExecWithOptions(a1, a2, a3, a4, a5, a6, a7, v12, a8, a9, a10);
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t PCRE_ExecWithOptions(void *a1, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, _DWORD *a11)
{
  v18 = safeh_HandleCheck(a1, a2, 56664, 112);
  if (v18 < 0 || (v18 = safeh_HandleCheck(a3, a4, 56665, 0), v18 < 0))
  {
    *a11 = v18;
    return 0xFFFFFFFFLL;
  }

  else
  {
    v19 = 0;
    LODWORD(v20) = 0;
    do
    {
      v21 = *(a8 + v19);
      if (v21)
      {
        v21 = *(a1[12] + v19);
      }

      v20 = v21 | v20;
      v19 += 4;
    }

    while (v19 != 20);
    v22 = a1[11];
    v23 = a1[1];
    v24 = *(a3 + 8);

    return v22(v23, v24, a5, a6, a7, v20, a9, a10, a11);
  }
}

uint64_t PCRE_Adapter2PCREOptions(uint64_t a1, int a2, uint64_t a3)
{
  if ((safeh_HandleCheck(a1, a2, 56664, 112) & 0x80000000) != 0)
  {
    return 0;
  }

  v5 = 0;
  LODWORD(result) = 0;
  do
  {
    v7 = *(a3 + v5);
    if (v7)
    {
      v7 = *(*(a1 + 96) + v5);
    }

    result = v7 | result;
    v5 += 4;
  }

  while (v5 != 20);
  return result;
}

uint64_t PCRE_Version(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v7 = safeh_HandleCheck(a1, a2, 56664, 112);
  if ((v7 & 0x80000000) == 0)
  {
    (*(a1 + 104))(a3, a4);
  }

  return v7;
}

uint64_t PCRE_AttachPattern(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v7 = safeh_HandleCheck(a1, a2, 56664, 112);
  if ((v7 & 0x80000000) != 0)
  {
    return v7;
  }

  v8 = 2320506890;
  v9 = heap_Alloc(*(*a1 + 8), 40);
  if (v9)
  {
    v10 = v9;
    PCRE_V10_Adapter_Pattern_Init(v9);
    if (a3)
    {
      *v10 = *a1;
      v10[1] = a3;
      *a4 = v10;
      a4[1] = 56665;
      return v7;
    }
  }

  return v8;
}

uint64_t PCRE_SerializeAndDecodeBatch(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = safeh_HandleCheck(a1, a2, 56664, 112);
  if ((result & 0x80000000) == 0)
  {
    v10 = *(a1 + 56);
    v11 = *(a1 + 8);

    return v10(v11, a3, a4, a5);
  }

  return result;
}

uint64_t luattt_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2711625729;
  }

  result = 0;
  *a2 = &ILuattt;
  return result;
}

uint64_t luattt_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t *a5)
{
  v5 = 2711625735;
  if (a5)
  {
    *a5 = safeh_GetNullHandle();
    a5[1] = v9;
    v20 = 0;
    v21 = 0;
    if ((InitRsrcFunction(a3, a4, &v21) & 0x80000000) == 0)
    {
      v10 = heap_Calloc(*(v21 + 8), 1, 144);
      if (v10)
      {
        v11 = v10;
        v10[2] = 0;
        v12 = v10 + 2;
        *v10 = a3;
        v10[1] = a4;
        v10[8] = 0;
        v13 = v10 + 8;
        Object = objc_GetObject(*(v21 + 48), "SYNTHSTREAM", &v20);
        if ((Object & 0x80000000) == 0)
        {
          v11[9] = *(v20 + 8);
          v15 = *(v21 + 8);
          v18 = xmmword_1C37F9E10;
          v19 = 0;
          if (!vector_ObjOpen(v15, &v18, 1, v13))
          {
            v11 = 0;
            goto LABEL_14;
          }

          Allocator = ooc_utils_createAllocator((v11 + 3), *v11, v11[1]);
          Object = LH_ERROR_to_VERROR(Allocator);
          if ((Object & 0x80000000) == 0)
          {
            v5 = 2711626240;
            if ((luavmldoutil_initialize_lua_vm_from_buffer(*v11, v11[1], (v11 + 3), "TTT_rewrite_process", luattt_log_callback, v12, "TTT_script_set = {}\n\n-- Load a resource\n-- argument: the resource name\n-- return: the identifier\nfunction TTT_resource_load(name)\n    local id = 0\n    for _, info in ipairs(TTT_script_set) do\n        if id < info.id then\n            id = info.id\n        end\n    end\n    id = id + 1\n    local info = {}\n    info.id = id\n    info.func = _G[name]\n    table.insert(TTT_script_set, 1, info)\n    return tostring(id)\nend\n\n-- Unload a resource\n-- argument: the identifier\n-- return: the identifier or an empty string if not present\nfunction TTT_resource_unload(id_str)\n    local id = tonumber(id_str)\n    for pos, info in ipairs(TTT_script_set) do\n        if info.id == id then\n            table.remove(TTT_script_set, pos)\n            return id_str\n        end\n    end\n    return \nend\n\n-- Call the rewrite process of all resources\n-- argument: input text\n-- return: output text\nfunction TTT_rewrite_process(text)\n    local buffer = text\n    for _, info in ipairs(TTT_script_set) do\n        buffer = info.func(buffer)\n    end\n    return buffer\nend\n", 0x412u) & 0x80000000) != 0 || !*v12)
            {
              goto LABEL_12;
            }

LABEL_14:
            v5 = 0;
            *a5 = v11;
            *(a5 + 2) = 1077;
            return v5;
          }
        }

        v5 = Object;
LABEL_12:
        luattt_pObjClose(v11);
        return v5;
      }

      return 2711625738;
    }
  }

  return v5;
}

uint64_t luattt_ObjClose(void *a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 1077, 144);
  if ((result & 0x80000000) == 0)
  {
    result = luattt_UnloadAllScripts(a1);
    if ((result & 0x80000000) == 0)
    {
      luattt_ProcessEnd(a1, a2);

      return luattt_pObjClose(a1);
    }
  }

  return result;
}

uint64_t luattt_ObjReopen(uint64_t a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 1077, 144);
  if ((result & 0x80000000) == 0)
  {

    return luattt_UnloadAllScripts(a1);
  }

  return result;
}

uint64_t luattt_ResourceTypes(uint64_t a1, int a2, void *a3)
{
  result = safeh_HandleCheck(a1, a2, 1077, 144);
  if ((result & 0x80000000) == 0)
  {
    result = 0;
    *a3 = &luattt_ResourceTypes_SZ_LUATTT_CONTENT_TYPES;
  }

  return result;
}

uint64_t luattt_ResourceLoad(uint64_t a1, int a2, char *a3, const char *a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v33 = 0;
  v34 = 0;
  v32 = 0;
  v7 = 2711625735;
  v31 = 0;
  if (a3 && a7)
  {
    v9 = a6;
    v10 = a5;
    if (a4)
    {
      v14 = a6 != 0;
      if (!a5 && a6)
      {
        return v7;
      }
    }

    else
    {
      if (!a5 || !a6)
      {
        return v7;
      }

      v14 = 1;
    }

    v15 = safeh_HandleCheck(a1, a2, 1077, 144);
    if ((v15 & 0x80000000) != 0)
    {
      return v15;
    }

    v29 = 0;
    v30 = 0;
    *a7 = 0;
    *(a7 + 8) = 0;
    if ((InitRsrcFunction(*a1, *(a1 + 8), &v34) & 0x80000000) == 0)
    {
      v35 = 0;
      if (a4 && *a4 && vector_GetElemAt(*(a1 + 64), 0, &v35))
      {
        v16 = 1;
        do
        {
          v17 = *(v35 + 8);
          if (v17)
          {
            if (!strcmp(v17, a4))
            {
              return 2711625752;
            }
          }
        }

        while (vector_GetElemAt(*(a1 + 64), v16++, &v35));
      }

      v19 = !v14;
      if (!v10)
      {
        v19 = 1;
      }

      if (v19)
      {
        v20 = luattt_DataOpen(v34, a4, &v33, a3, &v32, &v31);
        if ((v20 & 0x80000000) != 0)
        {
          goto LABEL_32;
        }

        v10 = v32;
        v9 = v31;
      }

      else
      {
        v32 = v10;
        v31 = v9;
      }

      ScriptFromBuffer = LuaVMLDO_LoadScriptFromBuffer(*(a1 + 16), v10, v9);
      v20 = LH_ERROR_to_VERROR(ScriptFromBuffer);
      if ((v20 & 0x80000000) == 0)
      {
        v22 = LuaVMLDO_RunFunctionReturningString(*(a1 + 16), "TTT_resource_load", "TTT_script", 4u, &v29);
        v23 = LH_ERROR_to_VERROR(v22);
        v27 = v23;
        if ((v23 & 0x80000000) != 0)
        {
          v7 = v23;
        }

        else
        {
          v30 = a4;
          log_OutText(*(v34 + 32), "LUATTT", 5, 0, "Loaded resource %s", v24, v25, v26, &v29);
          if (vector_Add(*(a1 + 64), &v29) == 1)
          {
            v7 = v27;
          }

          else
          {
            v7 = 2711625738;
          }

          *a7 = v30;
          *(a7 + 8) = 1108;
        }

        goto LABEL_34;
      }

LABEL_32:
      v7 = v20;
LABEL_34:
      if (v32)
      {
        brk_DataUnmap(*(v34 + 24), v33, v32);
        v32 = 0;
      }

      if (v33)
      {
        brk_DataClose(*(v34 + 24), v33);
      }
    }
  }

  return v7;
}

uint64_t luattt_ResourceUnload(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v15 = 0;
  v16 = 0;
  v7 = safeh_HandleCheck(a1, a2, 1077, 144);
  if ((v7 & 0x80000000) != 0)
  {
    return v7;
  }

  v8 = 2711626765;
  if ((InitRsrcFunction(*a1, *(a1 + 8), &v16) & 0x80000000) != 0)
  {
    return 2711625735;
  }

  v7 = safeh_HandleCheck(a3, a4, 1108, 16);
  if ((v7 & 0x80000000) != 0)
  {
    return v7;
  }

  if (vector_GetElemAt(*(a1 + 64), 0, &v15))
  {
    v9 = 0;
    while (*(v15 + 1) != a3)
    {
      if (!vector_GetElemAt(*(a1 + 64), ++v9, &v15))
      {
        return v8;
      }
    }

    v11 = LuaVMLDO_RunFunctionReturningString(*(a1 + 16), "TTT_resource_unload", v15, 4u, v15);
    v8 = LH_ERROR_to_VERROR(v11);
    if ((v8 & 0x80000000) == 0)
    {
      log_OutText(*(v16 + 32), "LUATTT", 5, 0, "Unloaded resource %s", v12, v13, v14, v15);
      vector_Remove(*(a1 + 64), v9);
    }
  }

  return v8;
}

uint64_t luattt_ProcessStart(_WORD **a1, int a2, _WORD *a3, _WORD *a4)
{
  v14 = 0;
  v8 = 2711625735;
  if ((safeh_HandleCheck(a1, a2, 1077, 144) & 0x80000000) != 0)
  {
    return 2711625736;
  }

  if ((InitRsrcFunction(*a1, a1[1], &v14) & 0x80000000) == 0)
  {
    v9 = 0;
    a1[14] = a3;
    a1[15] = a4;
    do
    {
      v10 = (*(a1[9] + 8))(a3, a4, 538, luattt_ProcessStart_szInput[v9], 0, 0, a1 + 16);
      if ((v10 & 0x80000000) == 0)
      {
        break;
      }
    }

    while (v9++ != 6);
    if (v10 < 0)
    {
      a1[16] = 0;
    }

    v12 = (*(a1[9] + 8))(a3, a4, 538, "text/plain;charset=utf-8", 0, 0, a1 + 10);
    if ((v12 & 0x80000000) != 0)
    {
      v8 = v12;
LABEL_14:
      luattt_ProcessEnd(a1, a2);
      return v8;
    }

    v8 = (*(a1[9] + 8))(a3, a4, 538, "text/plain;charset=utf-8", 0, 1, a1 + 12);
    if ((v8 & 0x80000000) != 0)
    {
      goto LABEL_14;
    }
  }

  return v8;
}

uint64_t luattt_Process(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int *a5)
{
  v21 = 0;
  v22 = 0;
  v18 = 0;
  v19 = 0;
  v7 = safeh_HandleCheck(a1, a2, 1077, 144);
  if ((v7 & 0x80000000) == 0)
  {
    if ((InitRsrcFunction(*a1, *(a1 + 8), &v22) & 0x80000000) != 0)
    {
      return 2711625735;
    }

    if (!*(a1 + 80) || !*(a1 + 96))
    {
      v15 = 0;
LABEL_24:
      v8 = 1;
LABEL_25:
      *a5 = v8;
      return v15;
    }

    *a5 = 0;
    v7 = (*(*(a1 + 72) + 144))(*(a1 + 80), *(a1 + 88), &v18 + 4, &v18);
    if ((v7 & 0x80000000) == 0)
    {
      v8 = v18;
      if (!v18)
      {
        v15 = 0;
        goto LABEL_25;
      }

      v7 = (*(*(a1 + 72) + 88))(*(a1 + 80), *(a1 + 88), &v21, &v18 + 4);
      if ((v7 & 0x80000000) == 0)
      {
        __s = v21;
        v9 = HIDWORD(v18);
        if (vector_GetSize(*(a1 + 64)))
        {
          v10 = LuaVMLDO_RunFunctionReturningPointerToString(*(a1 + 16), "TTT_rewrite_process", v21, &__s);
          v11 = LH_ERROR_to_VERROR(v10);
          if ((v11 & 0x80000000) != 0)
          {
            goto LABEL_17;
          }

          v9 = strlen(__s);
        }

        if (!v9 || (v11 = (*(*(a1 + 72) + 112))(*(a1 + 96), *(a1 + 104), &v19, v9), (v11 & 0x80000000) == 0) && (memcpy(v19, __s, v9), v11 = (*(*(a1 + 72) + 120))(*(a1 + 96), *(a1 + 104), v9), (v11 & 0x80000000) == 0))
        {
          v12 = (*(*(a1 + 72) + 96))(*(a1 + 80), *(a1 + 88), HIDWORD(v18));
          if ((v12 & 0x80000000) != 0 || !vector_GetSize(*(a1 + 64)))
          {
LABEL_18:
            v14 = (*(*(a1 + 72) + 72))(*(a1 + 96), *(a1 + 104));
            if (v14 >= 0)
            {
              v15 = v12;
            }

            else
            {
              v15 = v14;
            }

            *(a1 + 96) = safeh_GetNullHandle();
            *(a1 + 104) = v16;
            goto LABEL_24;
          }

          v13 = LuaVMLDO_ReleasePointerToString(*(a1 + 16));
          v11 = LH_ERROR_to_VERROR(v13);
        }

LABEL_17:
        v12 = v11;
        goto LABEL_18;
      }
    }
  }

  return v7;
}

uint64_t luattt_ProcessEnd(void *a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 1077, 144);
  if ((v3 & 0x80000000) == 0)
  {
    NullHandle = safeh_GetNullHandle();
    if (!safeh_HandlesEqual(a1[16], a1[17], NullHandle, v5))
    {
      v6 = (*(a1[9] + 72))(a1[16], a1[17]);
      if (v6 >= 0)
      {
        v3 = v3;
      }

      else
      {
        v3 = v6;
      }
    }

    a1[16] = safeh_GetNullHandle();
    a1[17] = v7;
    v8 = safeh_GetNullHandle();
    if (!safeh_HandlesEqual(a1[10], a1[11], v8, v9))
    {
      v10 = (*(a1[9] + 72))(a1[10], a1[11]);
      if (v10 >= 0)
      {
        v3 = v3;
      }

      else
      {
        v3 = v10;
      }
    }

    a1[10] = safeh_GetNullHandle();
    a1[11] = v11;
    v12 = safeh_GetNullHandle();
    if (!safeh_HandlesEqual(a1[12], a1[13], v12, v13))
    {
      v14 = (*(a1[9] + 72))(a1[12], a1[13]);
      if (v14 >= 0)
      {
        v3 = v3;
      }

      else
      {
        v3 = v14;
      }
    }

    a1[12] = safeh_GetNullHandle();
    a1[13] = v15;
  }

  return v3;
}

uint64_t luattt_pObjClose(uint64_t a1)
{
  v1 = 2711625735;
  v5 = 0;
  if (a1 && (InitRsrcFunction(*a1, *(a1 + 8), &v5) & 0x80000000) == 0)
  {
    if (*(a1 + 72))
    {
      objc_ReleaseObject(*(v5 + 48), "SYNTHSTREAM");
    }

    if (*(a1 + 16))
    {
      luavmldoutil_destroy_lua_vm(a1 + 24, (a1 + 16));
    }

    kaldi::nnet1::Component::IsUpdatable((a1 + 24));
    v3 = *(a1 + 64);
    if (v3)
    {
      vector_ObjClose(v3);
    }

    heap_Free(*(v5 + 8), a1);
    return 0;
  }

  return v1;
}

uint64_t luattt_UnloadAllScripts(uint64_t a1)
{
  i = 2711625735;
  v12 = 0;
  v13 = 0;
  if (a1)
  {
    inited = InitRsrcFunction(*a1, *(a1 + 8), &v13);
    if ((inited & 0x80000000) == 0)
    {
      v4 = inited;
      Size = vector_GetSize(*(a1 + 64));
      if (Size)
      {
        v6 = Size - 1;
        for (i = v4; vector_GetElemAt(*(a1 + 64), v6, &v12); --v6)
        {
          v7 = LuaVMLDO_RunFunctionReturningString(*(a1 + 16), "TTT_resource_unload", v12, 4u, v12);
          i = LH_ERROR_to_VERROR(v7);
          if ((i & 0x80000000) != 0)
          {
            break;
          }

          log_OutText(*(v13 + 32), "LUATTT", 5, 0, "Unloaded resource %s", v8, v9, v10, v12);
          vector_Remove(*(a1 + 64), v6);
          if (!v6)
          {
            break;
          }
        }
      }

      else
      {
        return v4;
      }
    }
  }

  return i;
}

uint64_t luattt_DataOpen(uint64_t a1, const char *a2, uint64_t *a3, char *a4, uint64_t a5, uint64_t a6)
{
  v19 = *MEMORY[0x1E69E9840];
  *v17 = 0;
  bzero(v18, 0x400uLL);
  v12 = brk_DataOpenEx(*(a1 + 24), a2, 1, a3);
  if (strstr(a4, ";loader=broker") && (v12 & 0x80000000) != 0)
  {
    Str = paramc_ParamGetStr(*(a1 + 40), "langcode", v17);
    if ((Str & 0x80000000) != 0)
    {
LABEL_8:
      v12 = Str;
      goto LABEL_9;
    }

    v14 = brokeraux_ComposeBrokerString(a1, a2, 0, 1, *v17, 0, 0, v18, 0x400uLL);
    if (v14 < 0)
    {
      v12 = v14 | 0xA1A02000;
      goto LABEL_9;
    }

    v12 = brk_DataOpenEx(*(a1 + 24), v18, 0, a3);
  }

  if ((v12 & 0x80000000) == 0)
  {
    Str = brk_DataMapEx(*(a1 + 24), *a3, 0, a6, a5);
    goto LABEL_8;
  }

LABEL_9:
  v15 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t araparser_loc_getStandardizeRule(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LOBYTE(__c) = 0;
  v21 = 0;
  v20 = -1;
  v5 = (*(*(*(a1 + 24) + 24) + 96))(*(*(a1 + 24) + 8), *(*(a1 + 24) + 16), "fecfg", a2, &v21, &v20, &__c);
  if ((v5 & 0x80000000) == 0 && v20)
  {
    v6 = *v21;
    v7 = strchr(*v21, __c);
    if (v7)
    {
      *v7 = 0;
    }

    if (v6)
    {
      for (i = 0; ; ++i)
      {
        v9 = strchr(v6, 95);
        v10 = v9;
        if (v9)
        {
          *v9 = 0;
        }

        v11 = strlen(v6);
        v12 = heap_Calloc(*(*(a1 + 16) + 8), 1, (v11 + 1));
        if (!v12)
        {
          break;
        }

        v17 = v12;
        strcpy(v12, v6);
        if (i == 1)
        {
          *(a3 + 8) = v17;
        }

        else if (i)
        {
          heap_Free(*(*(a1 + 16) + 8), v17);
        }

        else
        {
          *a3 = v17;
          *(a3 + 16) = strlen(v17);
        }

        v6 = v10 + 1;
        if (!v10)
        {
          return v5;
        }
      }

      log_OutPublic(*(*(a1 + 16) + 32), "FE_ARAPARSER", 54000, 0, v13, v14, v15, v16, v19);
      return 2356158474;
    }
  }

  return v5;
}

uint64_t fe_ara_parser_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v36 = 0;
  v37 = 0;
  PosparserIGTreesAndDict = 2356158471;
  v35 = 0;
  v33 = 0;
  v34 = 0;
  if (!a5)
  {
    return PosparserIGTreesAndDict;
  }

  *a5 = 0;
  *(a5 + 8) = 0;
  inited = InitRsrcFunction(a3, a4, &v37);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = objc_GetObject(*(v37 + 48), "SYNTHSTREAM", &v36);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  Object = objc_GetObject(*(v37 + 48), "FE_DEPES", &v34);
  v11 = *(v37 + 48);
  if ((Object & 0x80000000) != 0)
  {
    v28 = "SYNTHSTREAM";
LABEL_17:
    objc_ReleaseObject(v11, v28);
    return Object;
  }

  v12 = objc_GetObject(v11, "FE_DCTLKP", &v35);
  if ((v12 & 0x80000000) != 0)
  {
    Object = v12;
    objc_ReleaseObject(*(v37 + 48), "SYNTHSTREAM");
    v11 = *(v37 + 48);
    v28 = "FE_DEPES";
    goto LABEL_17;
  }

  v17 = heap_Calloc(*(v37 + 8), 952, 1);
  if (!v17)
  {
    log_OutPublic(*(v37 + 32), "FE_ARAPARSER", 54000, 0, v13, v14, v15, v16, v30);
    objc_ReleaseObject(*(v37 + 48), "SYNTHSTREAM");
    objc_ReleaseObject(*(v37 + 48), "FE_DCTLKP");
    objc_ReleaseObject(*(v37 + 48), "FE_DEPES");
    return 2356158474;
  }

  inited = posparser_Open(v37, (v17 + 24));
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  *(v17 + 56) = 0;
  *(v17 + 48) = 0;
  inited = paramc_ParamGetStr(*(v37 + 40), "langcode", &v33);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v18 = *(v17 + 24);
  __strcpy_chk();
  *(*(v17 + 24) + 243) = 7565168;
  v19 = v37;
  *(v17 + 8) = a4;
  *(v17 + 16) = v19;
  *v17 = a3;
  *(v17 + 32) = *(v36 + 8);
  v20 = v35;
  v21 = *(v17 + 24);
  *(v21 + 24) = *(v35 + 8);
  *(v21 + 8) = *(v20 + 16);
  v22 = v34;
  v23 = *(v17 + 24);
  *(v23 + 56) = *(v34 + 8);
  *(v23 + 40) = *(v22 + 16);
  *a5 = v17;
  *(a5 + 8) = 85954;
  v24 = *(v17 + 24);
  PosparserIGTreesAndDict = getPosparserIGTreesAndDict(*(v17 + 16), *v17, *(v17 + 8), *(v24 + 8), *(v24 + 16), *(v24 + 24), (v24 + 232), (v24 + 216), (v24 + 224), (v24 + 236), v24 + 240, (v17 + 40));
  if ((PosparserIGTreesAndDict & 0x80000000) != 0)
  {
LABEL_21:
    fe_ara_parser_ObjClose(*a5, *(a5 + 8));
    *a5 = 0;
    *(a5 + 8) = 0;
    return PosparserIGTreesAndDict;
  }

  if (!*(v17 + 40))
  {
    return PosparserIGTreesAndDict;
  }

  v25 = *(v37 + 8);
  v26 = *(v17 + 24);
  v31[0] = xmmword_1F42D5E98;
  v31[1] = *off_1F42D5EA8;
  v32 = off_1F42D5EB8;
  v27 = ssftmap_ObjOpen(v25, 0, v31, (v26 + 256));
  if ((v27 & 0x80000000) != 0)
  {
    PosparserIGTreesAndDict = v27;
    goto LABEL_21;
  }

  PosparserIGTreesAndDict = posparser_getPosMap(*(v17 + 24));
  if ((PosparserIGTreesAndDict & 0x80000000) != 0)
  {
    goto LABEL_21;
  }

  return PosparserIGTreesAndDict;
}

uint64_t fe_ara_parser_ObjClose(uint64_t a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 85954, 952);
  if ((result & 0x80000000) != 0)
  {
    return 2356158472;
  }

  if (a1)
  {
    if (*(a1 + 40) && (ssftmap_ObjClose(*(*(a1 + 24) + 256)) & 0x80000000) == 0)
    {
      v9 = *(a1 + 24);
      if (*(v9 + 232) == 1)
      {
        freePosparserIGTrees(*(a1 + 16), (v9 + 216), (v9 + 224), v4, v5, v6, v7, v8);
      }
    }

    objc_ReleaseObject(*(*(a1 + 16) + 48), "SYNTHSTREAM");
    objc_ReleaseObject(*(*(a1 + 16) + 48), "FE_DCTLKP");
    objc_ReleaseObject(*(*(a1 + 16) + 48), "FE_DEPES");
    posparser_Close(*(a1 + 24));
    heap_Free(*(*(a1 + 16) + 8), a1);
    return 0;
  }

  return result;
}

uint64_t fe_ara_parser_ObjReopen(uint64_t a1, int a2)
{
  v13 = 0;
  result = safeh_HandleCheck(a1, a2, 85954, 952);
  if ((result & 0x80000000) != 0)
  {
    return 2356158472;
  }

  if (a1)
  {
    if (*(a1 + 40) != 1 || (result = ssftmap_Clear(*(*(a1 + 24) + 256)), (result & 0x80000000) == 0) && (result = posparser_getPosMap(*(a1 + 24)), (result & 0x80000000) == 0) && ((v9 = *(a1 + 24), *(v9 + 232) != 1) || (result = freePosparserIGTrees(*(a1 + 16), (v9 + 216), (v9 + 224), v4, v5, v6, v7, v8), (result & 0x80000000) == 0)))
    {
      result = paramc_ParamGetStr(*(*(a1 + 16) + 40), "langcode", &v13);
      if ((result & 0x80000000) == 0)
      {
        v10 = *(a1 + 24);
        __strcpy_chk();
        *(*(a1 + 24) + 243) = 7565168;
        v11 = *(a1 + 16);
        v12 = *(a1 + 24);
        v12[58] = 0;
        v12 += 58;
        return getPosparserIGTreesAndDict(v11, *a1, *(a1 + 8), *(v12 - 28), *(v12 - 27), *(v12 - 26), v12, v12 - 2, v12 - 1, v12 + 1, (v12 + 2), (a1 + 40));
      }
    }
  }

  return result;
}

uint64_t fe_ara_parser_ProcessStart(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = 2356158472;
  *&__c[1] = -1;
  v8 = safeh_HandleCheck(a1, a2, 85954, 952);
  if ((v8 & 0x80000000) != 0)
  {
    goto LABEL_21;
  }

  if (!*(a1 + 40))
  {
    goto LABEL_10;
  }

  *&__c[3] = 0;
  __c[0] = 0;
  StandardizeRule = posparser_ProcessStart(*(a1 + 24));
  if ((StandardizeRule & 0x80000000) != 0)
  {
    goto LABEL_19;
  }

  *&__c[1] = -1;
  v8 = (*(*(*(a1 + 24) + 24) + 96))(*(*(a1 + 24) + 8), *(*(a1 + 24) + 16), "fecfg", "araparsernumstandardize", &__c[3], &__c[1], __c);
  if ((v8 & 0x80000000) != 0)
  {
LABEL_10:
    v7 = v8;
    goto LABEL_21;
  }

  if (!*&__c[1])
  {
    v13 = *(a1 + 56);
    if (!*(a1 + 56))
    {
      goto LABEL_17;
    }

    goto LABEL_12;
  }

  v10 = **&__c[3];
  v11 = strchr(**&__c[3], __c[0]);
  if (v11)
  {
    *v11 = 0;
    v10 = **&__c[3];
  }

  v12 = atoi(v10);
  v13 = v12;
  *(a1 + 56) = v12;
  if (v12)
  {
LABEL_12:
    v14 = heap_Calloc(*(*(a1 + 16) + 8), 1, (24 * v13) | 1);
    *(a1 + 48) = v14;
    if (!v14)
    {
      log_OutPublic(*(*(a1 + 16) + 32), "FE_ARAPARSER", 54000, 0, v15, v16, v17, v18, v23);
      v7 = 2356158474;
      goto LABEL_20;
    }

    if (!*(a1 + 56))
    {
      goto LABEL_17;
    }

    v19 = 0;
    v20 = 0;
    while (1)
    {
      v26[7] = 0;
      *(&v26[5] + 1) = 0;
      strcpy(v26, "araparserstandardize");
      LH_itoa(v20, v24, 0xAu);
      __strcat_chk();
      StandardizeRule = araparser_loc_getStandardizeRule(a1, v26, *(a1 + 48) + v19);
      if ((StandardizeRule & 0x80000000) != 0)
      {
        break;
      }

      ++v20;
      v19 += 24;
      if (v20 >= *(a1 + 56))
      {
        goto LABEL_17;
      }
    }

LABEL_19:
    v7 = StandardizeRule;
LABEL_20:
    synstrmaux_CloseStreams((a1 + 64), *(a1 + 32));
    goto LABEL_21;
  }

LABEL_17:
  synstrmaux_InitStreamOpener(a1 + 64, *(*(a1 + 16) + 32), "FE_ARAPARSER");
  synstrmaux_RegisterInStream((a1 + 64), "text/plain;charset=utf-8", 0, a1 + 888);
  synstrmaux_RegisterInStream((a1 + 64), "application/x-realspeak-markers-pp;version=4.0", 0, a1 + 904);
  synstrmaux_RegisterOutStream((a1 + 64), "text/plain;charset=utf-8", a1 + 920);
  synstrmaux_RegisterOutStream((a1 + 64), "application/x-realspeak-markers-pp;version=4.0", a1 + 936);
  v7 = synstrmaux_OpenStreams((a1 + 64), *(a1 + 32), a3, a4);
  if ((v7 & 0x80000000) != 0)
  {
    goto LABEL_20;
  }

LABEL_21:
  v21 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t fe_ara_parser_Process(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  __s = 0;
  v87 = 0;
  __n = 0;
  v85 = 0;
  v9 = 2356158474;
  v83 = 0;
  v82 = 0;
  v79 = 0;
  v78 = 0;
  v77 = 0;
  v10 = safeh_HandleCheck(a1, a2, 85954, 952);
  if ((v10 & 0x80000000) != 0)
  {
    return 2356158472;
  }

  *a5 = 1;
  if (!*(a1 + 40))
  {
    return v10;
  }

  __src = 0;
  v10 = (*(*(a1 + 32) + 88))(*(a1 + 888), *(a1 + 896), &v87, &__n + 4);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  v11 = HIDWORD(__n);
  v12 = (*(*(a1 + 32) + 144))(*(a1 + 904), *(a1 + 912), &v82 + 4, &v82);
  if ((v12 & 0x80000000) != 0)
  {
    return v12;
  }

  if (HIDWORD(__n))
  {
    v10 = (*(*(a1 + 32) + 88))(*(a1 + 904), *(a1 + 912), &__src, &__n);
    if ((v10 & 0x80000000) == 0)
    {
      v13 = __n;
      v83 = __n >> 5;
      v14 = heap_Alloc(*(*(a1 + 16) + 8), __n);
      v19 = v14;
      v80 = v14;
      if (!v14)
      {
        goto LABEL_69;
      }

      memcpy(v14, __src, __n);
      log_OutText(*(*(a1 + 16) + 32), "FE_ARAPARSER", 5, 0, "Processing Sentence %s", v20, v21, v22, v87);
      if (v83)
      {
        v23 = 0;
        v24 = (v19 + 12);
        while (1)
        {
          v25 = *v24;
          v24 += 8;
          if (v25 != *(v19 + 3))
          {
            break;
          }

          if (v83 == ++v23)
          {
            v26 = v83;
            goto LABEL_30;
          }
        }

        v26 = v23;
      }

      else
      {
        v26 = 0;
      }

LABEL_30:
      v29 = heap_Alloc(*(*(a1 + 16) + 8), 4 * v83);
      if (v29)
      {
        v34 = v29;
        v35 = &v19[32 * v26];
        v36 = v83;
        if (v83 != v26)
        {
          v37 = 0;
          v38 = (v35 + 4);
          do
          {
            *(v29 + 4 * v37) = *v38;
            *v38 = v37;
            v38 += 8;
            ++v37;
          }

          while ((v36 - v26) != v37);
        }

        marker_sort(v35, v36 - v26);
        if (v83 != v26)
        {
          v39 = (v83 - v26);
          v40 = (v35 + 4);
          do
          {
            *v40 = *(v34 + 4 * *v40);
            v40 += 8;
            --v39;
          }

          while (v39);
        }

        heap_Free(*(*(a1 + 16) + 8), v34);
        v41 = heap_Calloc(*(*(a1 + 16) + 8), 1, (HIDWORD(__n) + 1));
        __s = v41;
        if (v41)
        {
          v42 = strcpy(v41, v87);
          log_OutText(*(*(a1 + 16) + 32), "FE_ARAPARSER", 5, 0, "Processing This Sentence %s", v43, v44, v45, v42);
          araParser_SanitizeSentence(a1, &__s, &__n + 1, &v80, &v83);
          v46 = __s;
          log_OutText(*(*(a1 + 16) + 32), "FE_ARAPARSER", 5, 0, "Processing Sanitized Sentence %s", v47, v48, v49, __s);
          if (!*(a1 + 56))
          {
            v19 = 0;
LABEL_45:
            v56 = v80;
            v57 = posparser_ExtractWords(*(a1 + 24), v80, v83, v46, HIDWORD(__n), &v79, &v78);
            if ((v57 & 0x80000000) == 0)
            {
              if (*(a1 + 56))
              {
                araParser_setStandardizedWords(v79, v78, v46, v19);
                if (v19)
                {
                  heap_Free(*(*(a1 + 16) + 8), v19);
                  v19 = 0;
                  v85 = 0;
                }
              }

              v58 = *(a1 + 24);
              if (!*(v58 + 184))
              {
                goto LABEL_52;
              }

              v57 = posparser_applyEmbeddedRules(v58, v79, v78, v46, HIDWORD(__n));
              if ((v57 & 0x80000000) == 0)
              {
                v58 = *(a1 + 24);
LABEL_52:
                if (*(v58 + 192) != 1)
                {
                  goto LABEL_55;
                }

                *(v58 + 210) = 50;
                v59 = heap_Calloc(*(*(a1 + 16) + 8), 1, 306);
                v60 = *(a1 + 24);
                *(v60 + 200) = v59;
                if (v59)
                {
                  *(v60 + 208) = 0;
                  bzero(v59, 6 * *(v60 + 210));
LABEL_55:
                  v57 = araParser_NormalizeSentence(a1, &__s, &__n + 1, v56, v83, v79, v78);
                  if ((v57 & 0x80000000) == 0)
                  {
                    v64 = *(a1 + 24);
                    if (*(v64 + 192) == 1)
                    {
                      v65 = *(v64 + 208);
                      if (v65)
                      {
                        log_OutText(*(*(a1 + 16) + 32), "FE_ARAPARSER", 5, 0, "Identified %d Diacritics", v61, v62, v63, v65);
                        v66 = *(a1 + 24);
                        if (*(v66 + 208))
                        {
                          v67 = 0;
                          v68 = 0;
                          do
                          {
                            log_OutText(*(*(a1 + 16) + 32), "FE_ARAPARSER", 5, 0, "(%d,%s)", v61, v62, v63, *(*(v66 + 200) + v67));
                            ++v68;
                            v66 = *(a1 + 24);
                            v67 += 6;
                          }

                          while (v68 < *(v66 + 208));
                        }
                      }
                    }

                    v69 = __s;
                    log_OutText(*(*(a1 + 16) + 32), "FE_ARAPARSER", 5, 0, "Processing Normalized Sentence %s", v61, v62, v63, __s);
                    v70 = araParser_checkIfIsolatedWord(a1, v79, v78, v69);
                    v57 = posparser_Process(*(a1 + 24), a3, a4, v79, v78, v70, 0, &__s, &v80, &v83);
                    if ((v57 & 0x80000000) == 0)
                    {
                      log_OutText(*(*(a1 + 16) + 32), "FE_ARAPARSER", 5, 0, "Final Sentence %s", v71, v72, v73, __s);
                      v74 = strlen(__s);
                      LODWORD(__n) = 32 * v83;
                      HIDWORD(__n) = v74 + 1;
                      v57 = (*(*(a1 + 32) + 104))(*(a1 + 920), *(a1 + 928), __s);
                      if ((v57 & 0x80000000) == 0)
                      {
                        v57 = (*(*(a1 + 32) + 104))(*(a1 + 936), *(a1 + 944), v80, __n);
                        if ((v57 & 0x80000000) == 0)
                        {
                          v57 = (*(*(a1 + 32) + 96))(*(a1 + 888), *(a1 + 896), v11);
                          if ((v57 & 0x80000000) == 0)
                          {
                            v57 = (*(*(a1 + 32) + 96))(*(a1 + 904), *(a1 + 912), v13);
                            if ((v57 & 0x80000000) == 0)
                            {
                              v57 = (*(*(*(a1 + 24) + 56) + 112))(*(*(a1 + 24) + 40), *(*(a1 + 24) + 48), &v77, 0);
                              if ((v57 & 0x80000000) == 0)
                              {
                                v77 += HIDWORD(__n) - v11;
                                v57 = (*(*(*(a1 + 24) + 56) + 104))(*(*(a1 + 24) + 40), *(*(a1 + 24) + 48));
                              }
                            }
                          }
                        }
                      }
                    }
                  }

                  goto LABEL_68;
                }

LABEL_69:
                log_OutPublic(*(*(a1 + 16) + 32), "FE_ARAPARSER", 54000, 0, v15, v16, v17, v18, v76);
                goto LABEL_70;
              }
            }

LABEL_68:
            v9 = v57;
            goto LABEL_70;
          }

          v50 = heap_Calloc(*(*(a1 + 16) + 8), 1, (HIDWORD(__n) + 1));
          v85 = v50;
          if (v50)
          {
            strcpy(v50, v46);
            araParser_ApplyStandardizations(a1, &v85);
            v19 = v85;
            log_OutText(*(*(a1 + 16) + 32), "FE_ARAPARSER", 5, 0, "Got Standardized Sentence     %s", v51, v52, v53, v85);
            goto LABEL_45;
          }
        }

        v54 = *(*(a1 + 16) + 32);
        v55 = 54000;
      }

      else
      {
        v54 = *(*(a1 + 16) + 32);
        v55 = 30000;
      }

      log_OutPublic(v54, "FE_ARAPARSER", v55, 0, v30, v31, v32, v33, v76);
      v19 = 0;
LABEL_70:
      if (v80)
      {
        heap_Free(*(*(a1 + 16) + 8), v80);
        v80 = 0;
      }

      posparser_FreeWords(*(a1 + 24), v79, v78);
      v79 = 0;
      if (__s)
      {
        heap_Free(*(*(a1 + 16) + 8), __s);
        __s = 0;
      }

      if (v19)
      {
        heap_Free(*(*(a1 + 16) + 8), v19);
      }

      v75 = *(*(a1 + 24) + 200);
      if (v75)
      {
        heap_Free(*(*(a1 + 16) + 8), v75);
        *(*(a1 + 24) + 200) = 0;
      }

      return v9;
    }

    return v10;
  }

  v27 = v82;
  if (v82)
  {
    if (HIDWORD(v82))
    {
      v10 = (*(*(a1 + 32) + 88))(*(a1 + 904), *(a1 + 912), &__src, &__n);
      if ((v10 & 0x80000000) != 0)
      {
        return v10;
      }

      v10 = (*(*(a1 + 32) + 104))(*(a1 + 936), *(a1 + 944), __src, __n);
      if ((v10 & 0x80000000) != 0)
      {
        return v10;
      }

      v12 = (*(*(a1 + 32) + 96))(*(a1 + 904), *(a1 + 912), __n);
      if ((v12 & 0x80000000) != 0)
      {
        return v12;
      }

      v27 = v82;
    }

    if (!v27)
    {
      return v12;
    }

    return synstrmaux_CloseOutStreamsOnly((a1 + 64), *(a1 + 32));
  }

  v80 = 0;
  if ((paramc_ParamGetStr(*(*(a1 + 16) + 40), "clcpppipelinemode", &v80) & 0x80000000) != 0 || !v80 || !*v80)
  {
    *a5 = 0;
  }

  return v12;
}

size_t araParser_SanitizeSentence(uint64_t a1, char **a2, _DWORD *a3, uint64_t *a4, __int16 *a5)
{
  __s = *a2;
  v108 = 0;
  v107 = *a4;
  v106 = 0;
  v7 = strlen(__s);
  if (!v7)
  {
    goto LABEL_175;
  }

  v8 = 0;
  v9 = v7;
  v10 = v7;
  do
  {
    if (*a5 < 2u)
    {
      goto LABEL_24;
    }

    v11 = 1;
    v12 = v107;
    v13 = 64;
    do
    {
      v14 = v11;
      v15 = v12 + 32 * v11;
      if (*v15 == 21 && (v16 = *(v15 + 24)) != 0 && (v17 = LH_stricmp(v16, "spell"), v12 = v107, !v17) && ((v20 = v107[3], v21 = v107[8 * v14 + 3] - v20, v21 == v8) || v21 == (v8 + 1)))
      {
        v22 = v13;
        v23 = v14;
        do
        {
          if (++v23 >= *a5)
          {
            v26 = v10;
            goto LABEL_22;
          }

          v24 = *(v107 + v22);
          v22 += 32;
        }

        while (v24 != 21);
        v25 = &v107[8 * v23];
        v26 = v10;
        if (*v25 == 21)
        {
          v26 = v25[3] - v20;
        }

LABEL_22:
        v18 = v8 == v26;
        v8 = v26;
      }

      else
      {
        v18 = 1;
      }

      if (*(v12 + 32 * v14 + 12) - *(v12 + 12) > v8)
      {
        break;
      }

      v11 = v14 + 1;
      v19 = !v18;
      v13 += 32;
      if (v14 + 1 >= *a5)
      {
        v19 = 1;
      }
    }

    while ((v19 & 1) == 0);
    if (v18)
    {
LABEL_24:
      v27 = v8;
      v28 = &__s[v8];
      if (*v28 == 32)
      {
        v29 = v8;
        v30 = v8 + 1;
        if (v30 >= v9)
        {
          goto LABEL_43;
        }

        if (__s[v30] != 32)
        {
          goto LABEL_43;
        }

        v31 = *a5;
        if (v31 < 2)
        {
          goto LABEL_43;
        }

        v32 = v107[3];
        v33 = v107 + 11;
        v34 = 2;
        do
        {
          if (*(v33 - 3) == 21)
          {
            v35 = *v33 - v32;
            v37 = v35 != v8 && v35 != (v8 + 1);
          }

          else
          {
            v35 = *v33 - v32;
            v37 = 1;
          }

          if (v35 > v8)
          {
            break;
          }

          v54 = v34 >= v31;
          v38 = !v37;
          v33 += 8;
          ++v34;
          if (v54)
          {
            v38 = 1;
          }
        }

        while ((v38 & 1) == 0);
        if (v37)
        {
LABEL_43:
          v39 = v8;
          if (v8 >= v10)
          {
            goto LABEL_88;
          }

          while (__s[v27] == 32)
          {
            if (v10 == ++v27)
            {
              v39 = v10;
              goto LABEL_86;
            }
          }

          v39 = v27;
LABEL_86:
          v29 = v39;
          if (!v8 || v30 != v39)
          {
LABEL_88:
            result = posparserGrowStr(*(a1 + 24), &__s, (v10 + 1), &v108, 0);
            if ((result & 0x80000000) != 0)
            {
              goto LABEL_159;
            }

            memmove(&__s[v30], &__s[v39], (v9 - v29));
            v61 = v29 - v30;
            __s[(v9 - (v29 - v30))] = 0;
            v10 = strlen(__s);
            v62 = *a5;
            v63 = v107;
            if (v62 >= 2)
            {
              v64 = v107[3];
              v65 = v107 + 11;
              v66 = v62 - 1;
              while (1)
              {
                v67 = (*v65 - v64);
                v68 = v67 <= v30 || v67 >= v29;
                v69 = v64 + v30;
                if (!v68)
                {
                  goto LABEL_98;
                }

                if (v67 >= v29)
                {
                  break;
                }

LABEL_99:
                v65 += 8;
                if (!--v66)
                {
                  goto LABEL_100;
                }
              }

              v69 = *v65 - v61;
LABEL_98:
              *v65 = v69;
              goto LABEL_99;
            }

LABEL_100:
            *(v63 + 16) -= v61;
          }

LABEL_110:
          ++v8;
          goto LABEL_111;
        }
      }

      if (!isPunc_0(*(a1 + 24), v28))
      {
        goto LABEL_110;
      }

      v40 = *a5;
      if (v40 < 2)
      {
        v57 = inSMSMode(v8, v107, v40);
        if (!v8)
        {
          goto LABEL_103;
        }
      }

      else
      {
        v41 = v107 + 8;
        v42 = 2;
        for (i = 1; i < v40; ++i)
        {
          v44 = &v107[8 * i];
          if (*v44 == 34)
          {
            v45 = v44[3];
            v46 = v107[3];
            if (v45 - v46 <= v8)
            {
              v47 = v41;
              v48 = v42;
              v49 = v41;
              do
              {
                v51 = *v49;
                v49 += 8;
                v50 = v51;
                if (v51 == 21 || v50 == 3)
                {
                  if (v47[3] - v46 > v8 || v40 == v48)
                  {
LABEL_72:
                    v55 = 0;
                    goto LABEL_73;
                  }
                }

                else if (v40 == v48)
                {
                  goto LABEL_72;
                }

                v54 = v50 == 21 || v48++ >= v40;
                v47 = v49;
              }

              while (!v54);
            }
          }

          v55 = 1;
          ++v42;
          v41 += 8;
        }

LABEL_73:
        if (v8)
        {
          v56 = v55;
        }

        else
        {
          v56 = 0;
        }

        v57 = inSMSMode(v8, v107, v40);
        if ((v56 & 1) == 0)
        {
          if (!v55)
          {
            goto LABEL_110;
          }

          goto LABEL_103;
        }
      }

      v58 = v8 - 1;
      v59 = __s[v58];
      if (v59 != 32)
      {
        if (v57)
        {
          if (v57 != 1)
          {
            goto LABEL_103;
          }

          if (isSMSPunc(*(a1 + 24), &__s[v58]))
          {
            v57 = 1;
            goto LABEL_103;
          }

          LOBYTE(v59) = __s[v58];
        }

        if (!isDigit(v59))
        {
          v73 = v8 + 1;
          if (v73 == v9)
          {
            if (v8 < 2u)
            {
              goto LABEL_103;
            }

            v74 = __s;
          }

          else
          {
            if (v73 >= v9)
            {
              goto LABEL_103;
            }

            if (v8 < 2u)
            {
              goto LABEL_103;
            }

            v74 = __s;
            if (__s[v73] != 32)
            {
              goto LABEL_103;
            }
          }

          v83 = &v74[v8];
          if (*(v83 - 2) != 194 || *(v83 - 1) != 167)
          {
            result = posparserGrowStr(*(a1 + 24), &__s, (v9 + 1), &v108, 0);
            if ((result & 0x80000000) != 0 || (result = posparserInsertWordMarker(*(a1 + 24), &v107, a5, v8, 1, __s, &v106), (result & 0x80000000) != 0))
            {
LABEL_159:
              v91 = __s;
              goto LABEL_176;
            }

            memmove(&__s[v73], &__s[v8], (v9 - v8));
            __s[v9 + 1] = 0;
            v76 = strlen(__s);
            __s[v8] = 32;
            v84 = *a5;
            v85 = v107;
            if (v84 >= 2)
            {
              v86 = v107 + 11;
              v87 = v106 - 1;
              v88 = v84 - 1;
              do
              {
                if (v87)
                {
                  v89 = (*v86 - *(v85 + 12));
                  if (v8 <= (*v86 - *(v85 + 12)))
                  {
                    ++*v86;
                  }
                }

                v86 += 8;
                --v87;
                --v88;
              }

              while (v88);
            }

            ++*(v85 + 16);
            --v8;
LABEL_143:
            v10 = v76;
            goto LABEL_111;
          }
        }
      }

LABEL_103:
      v70 = v8 + 1;
      v71 = v9 - v70;
      if (v9 <= v70)
      {
        goto LABEL_110;
      }

      if (v57 == 1)
      {
        if (isSMSPunc(*(a1 + 24), &__s[v70]))
        {
          goto LABEL_110;
        }
      }

      else if (v57)
      {
        goto LABEL_110;
      }

      v72 = __s[v70];
      if (v72 == 32 || isDigit(v72) || v8 && __s[v8 - 1] != 32)
      {
        goto LABEL_110;
      }

      v75 = v9 + 1;
      result = posparserGrowStr(*(a1 + 24), &__s, v75, &v108, 0);
      if ((result & 0x80000000) != 0)
      {
        goto LABEL_159;
      }

      result = posparserInsertWordMarker(*(a1 + 24), &v107, a5, (v8 + 1), 1, __s, &v106);
      if ((result & 0x80000000) != 0)
      {
        goto LABEL_159;
      }

      memmove(&__s[v8 + 2], &__s[v70], v71);
      __s[v75] = 0;
      v76 = strlen(__s);
      __s[v70] = 32;
      v77 = *a5;
      v78 = v107;
      if (v77 >= 2)
      {
        v79 = v107 + 11;
        v80 = v106 - 1;
        v81 = v77 - 1;
        do
        {
          if (v80)
          {
            v82 = (*v79 - *(v78 + 12));
            if (v8 < (*v79 - *(v78 + 12)))
            {
              ++*v79;
            }
          }

          v79 += 8;
          --v80;
          --v81;
        }

        while (v81);
      }

      ++*(v78 + 16);
      if (v8)
      {
        v8 = v8 - 1;
      }

      else
      {
        v8 = 0;
      }

      goto LABEL_143;
    }

LABEL_111:
    v9 = v10;
  }

  while (v10 > v8);
  if (!v10)
  {
    goto LABEL_175;
  }

  v90 = &__s[v10];
  if (*(v90 - 1) == 32 || v10 >= 3u && *(v90 - 3) == 194 && *(v90 - 2) == 167 && isPunc_0(*(a1 + 24), v90 - 1))
  {
LABEL_152:
    v92 = v10 - 1;
    if (v10 != 1)
    {
      v93 = &__s[v92];
      if (*v93 == 32)
      {
        v94 = 0;
        while (1)
        {
          v95 = v92;
          if (*(v93 - 1) != 32)
          {
            break;
          }

          *v93 = 0;
          --v92;
          if (v95 == 1)
          {
            LOWORD(v10) = 1;
LABEL_164:
            v96 = *a5;
            if (v96 < 2)
            {
              goto LABEL_175;
            }

            v97 = v107[3];
            v98 = v107 + 11;
            v99 = v96 - 1;
            while (2)
            {
              v100 = (*v98 - v97);
              v101 = v100 <= v10 || v100 >= v8;
              v102 = v97 + v10;
              if (v101)
              {
                if (v100 >= v8)
                {
                  v102 = v10 - v8 + *v98;
                  goto LABEL_173;
                }
              }

              else
              {
LABEL_173:
                *v98 = v102;
              }

              v98 += 8;
              if (!--v99)
              {
                goto LABEL_175;
              }

              continue;
            }
          }

          ++v94;
          v93 = &__s[v92];
          LOWORD(v10) = v95;
          if (*v93 != 32)
          {
            LOWORD(v10) = v95;
            goto LABEL_164;
          }
        }

        if (v94)
        {
          goto LABEL_164;
        }
      }
    }

LABEL_175:
    v91 = __s;
    result = strlen(__s);
    *a3 = result;
    goto LABEL_176;
  }

  result = posparserGrowStr(*(a1 + 24), &__s, (v10 + 1), &v108, 0);
  v91 = __s;
  if ((result & 0x80000000) == 0)
  {
    __s[v10] = 32;
    __s[v10 + 1] = 0;
    LOWORD(v10) = strlen(__s);
    if (v10)
    {
      goto LABEL_152;
    }

    goto LABEL_175;
  }

LABEL_176:
  *a4 = v107;
  *a2 = v91;
  return result;
}

char *araParser_ApplyStandardizations(char *result, char **a2)
{
  v3 = *a2;
  v4 = *(result + 28);
  if (*(result + 28))
  {
    v5 = result;
    v6 = 0;
    v7 = *(result + 6);
    do
    {
      result = strstr(v3, *(v7 + 24 * v6));
      if (result)
      {
        v8 = result;
        do
        {
          memcpy(v8, *(v7 + 24 * v6 + 8), *(v7 + 24 * v6 + 16));
          v7 = *(v5 + 6);
          result = strstr(v8, *(v7 + 24 * v6));
          v8 = result;
        }

        while (result);
        v4 = *(v5 + 28);
      }

      ++v6;
    }

    while (v6 < v4);
  }

  *a2 = v3;
  return result;
}

void *araParser_setStandardizedWords(void *result, unsigned int a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = a2;
    v7 = result + 92;
    do
    {
      if (!*(v7 - 1) && !*v7)
      {
        v8 = *(v7 - 42);
        v9 = *(v7 - 41) - v8;
        result = strncmp((a3 + v8), (a4 + v8), v9);
        if (result)
        {
          result = memcpy((a3 + v8), (a4 + v8), v9);
        }
      }

      v7 += 26;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t araParser_NormalizeSentence(uint64_t a1, const char **a2, _DWORD *a3, _DWORD *a4, unsigned int a5, uint64_t a6, unsigned int a7)
{
  v10 = *a2;
  v41 = 0;
  v11 = strlen(v10);
  if (v11)
  {
    v12 = 0;
    v13 = 0;
    v14 = v11;
    if (a7 <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = a7;
    }

    v36 = v15;
    v16 = v11;
    while (1)
    {
      if (a7)
      {
        v17 = (a6 + 92);
        v18 = a7;
        while (*(v17 - 42) > v13 || *(v17 - 41) <= v13)
        {
          v17 += 26;
          if (!--v18)
          {
            goto LABEL_15;
          }
        }

        if (!*(v17 - 1) && !*(v17 - 20) && !*v17)
        {
          break;
        }
      }

LABEL_15:
      v13 += Utf8_LengthInBytes(&v10[v13], 1);
LABEL_16:
      v12 = v13;
      v14 = v16;
      if (v13 >= v16)
      {
        goto LABEL_42;
      }
    }

    v35 = a3;
    v19 = &v10[v13];
    v20 = isMAPPINGXBI2A(*(a1 + 24), v19);
    v21 = *(a1 + 24);
    if (v20 == 1)
    {
      if (*(v21 + 192) == 1)
      {
        result = storeDiacritic(a1, v13, &v10[v13], (v21 + 200), (v21 + 208), (v21 + 210), &v41);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }
      }

      *v19 = 65;
      ++v13;
      goto LABEL_41;
    }

    if (!isDiacritic(v21, &v10[v13]))
    {
      v13 += Utf8_LengthInBytes(&v10[v13], 1);
LABEL_41:
      a3 = v35;
      goto LABEL_16;
    }

    v23 = *(a1 + 24);
    if (*(v23 + 192) != 1 || (result = storeDiacritic(a1, v13, v19, (v23 + 200), (v23 + 208), (v23 + 210), &v41), (result & 0x80000000) == 0))
    {
      v24 = v41;
      v25 = v12 + v41;
      if (v25 < v14)
      {
        memmove(&v10[v13], &v10[v25], (v14 - v12));
      }

      v10[v14 - v24] = 0;
      v16 = strlen(v10);
      if (a5 >= 2)
      {
        v26 = a4[3];
        v27 = a5 - 1;
        v28 = a4 + 11;
        do
        {
          if (v12 < (*v28 - v26))
          {
            *v28 -= v24;
          }

          v28 += 8;
          --v27;
        }

        while (v27);
      }

      v29 = 0;
      a4[4] -= v24;
      v31 = (a6 + 10);
      v30 = v36;
      while (1)
      {
        v32 = *(v31 - 1);
        if (v32 > v13)
        {
          break;
        }

        v32 = *v31;
        if (v32 > v13)
        {
          v33 = (a6 + 104 * v29 + 10);
          goto LABEL_37;
        }

LABEL_38:
        ++v29;
        v31 += 52;
        if (!--v30)
        {
          goto LABEL_41;
        }
      }

      *(v31 - 1) = v32 - v24;
      LOWORD(v32) = *v31;
      v33 = v31;
LABEL_37:
      *v33 = v32 - v24;
      goto LABEL_38;
    }
  }

  else
  {
LABEL_42:
    v34 = strlen(v10);
    result = 0;
    *a3 = v34;
    *a2 = v10;
  }

  return result;
}

BOOL araParser_checkIfIsolatedWord(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 >= 2)
  {
    v6 = 0;
    v7 = (a2 + 10);
    v8 = 1;
    v9 = a3;
    do
    {
      v10 = *(v7 - 1);
      if (*v7 - v10 != 1 || !isPunc_0(*(a1 + 24), (a4 + v10)))
      {
        ++v6;
      }

      if (v8 >= v9)
      {
        break;
      }

      v7 += 52;
      ++v8;
    }

    while (v6 < 2);
    return v6 == 1;
  }

  return a3;
}

uint64_t fe_ara_parser_ProcessEnd(uint64_t a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 85954, 952);
  if ((result & 0x80000000) != 0)
  {
    return 2356158472;
  }

  if (!*(a1 + 40))
  {
    return result;
  }

  if (*(a1 + 56))
  {
    v4 = 0;
    v5 = 0;
    v6 = *(a1 + 48);
    do
    {
      heap_Free(*(*(a1 + 16) + 8), *(v6 + v4));
      v7 = (*(a1 + 48) + v4);
      *v7 = 0;
      heap_Free(*(*(a1 + 16) + 8), v7[1]);
      v6 = *(a1 + 48);
      *(v6 + v4 + 8) = 0;
      ++v5;
      v4 += 24;
    }

    while (v5 < *(a1 + 56));
    goto LABEL_10;
  }

  v6 = *(a1 + 48);
  if (v6)
  {
LABEL_10:
    heap_Free(*(*(a1 + 16) + 8), v6);
    *(a1 + 48) = 0;
  }

  *(a1 + 56) = 0;
  posparser_ProcessEnd(*(a1 + 24));
  v8 = *(a1 + 32);

  return synstrmaux_CloseStreams((a1 + 64), v8);
}

uint64_t fe_ara_parser_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2356158465;
  }

  result = 0;
  *a2 = &IAraParser;
  return result;
}

uint64_t storeDiacritic(uint64_t a1, __int16 a2, unsigned __int8 *a3, uint64_t *a4, _WORD *a5, _WORD *a6, unsigned __int16 *a7)
{
  v14 = *a4;
  v15 = Utf8_LengthInBytes(a3, 1);
  *a7 = v15;
  v16 = *a5;
  v17 = *a6;
  if (v16 < v17)
  {
    v18 = v15;
LABEL_5:
    strncpy((v14 + 6 * v16 + 2), a3, v18);
    result = 0;
    *(v14 + 6 * *a5 + *a7 + 2) = 0;
    *(v14 + 6 * (*a5)++) = a2;
    *a4 = v14;
    return result;
  }

  *a6 = v17 + 50;
  v19 = heap_Realloc(*(*(a1 + 16) + 8), v14, 6 * (v17 + 50) + 6);
  if (v19)
  {
    v14 = v19;
    v16 = *a5;
    v18 = *a7;
    goto LABEL_5;
  }

  log_OutPublic(*(*(a1 + 16) + 32), "FE_ARAPARSER", 54000, 0, v20, v21, v22, v23, v25);
  return 2356158474;
}

uint64_t embed_dict_getName(char *__s, char *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  memset(v5, 0, sizeof(v5));
  if (*__s == 99 && __s[1] == 108 && __s[2] == 109)
  {
    if (!strchr(__s, 95))
    {
      result = 2693799943;
      goto LABEL_7;
    }

    __strncat_chk();
  }

  __strcat_chk();
  __strcat_chk();
  strcpy(a2, v5);
  result = 0;
LABEL_7:
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t embed_vect_getBrokerString(uint64_t a1, char *a2, char *a3, char *a4, unint64_t a5)
{
  v17 = *MEMORY[0x1E69E9840];
  v14 = 0;
  *v15 = 0;
  memset(v16, 0, sizeof(v16));
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", v15);
  if ((result & 0x80000000) == 0)
  {
    result = paramc_ParamGetStr(*(a1 + 40), "fecfg", &v14);
    if ((result & 0x80000000) == 0)
    {
      if (*a2 == 99 && a2[1] == 108 && a2[2] == 109)
      {
        result = strchr(a2, 95);
        if (result)
        {
          v11 = result;
          strcpy(a3, "clmnn:");
          v12 = strncat(a3, a2, result - a2);
          strcpy(&a3[strlen(v12)], "_embed_vect");
          strcat(a3, v11);
LABEL_13:
          result = 0;
        }
      }

      else
      {
        if (!strcmp(a2, "lid"))
        {
          __strcat_chk();
          result = brokeraux_ComposeBrokerString(a1, v16, 1, 0, *v15, 0, 0, a3, a5);
          if ((result & 0x80000000) != 0)
          {
            goto LABEL_14;
          }

          strcpy(v16, "ml2emb");
          __strcat_chk();
          result = brokeraux_ComposeBrokerString(a1, v16, 1, 0, *v15, 0, 0, a4, a5);
        }

        else
        {
          __strcat_chk();
          __strcat_chk();
          __strcat_chk();
          __strcat_chk();
          __strcat_chk();
          __strcat_chk();
          result = brokeraux_ComposeBrokerString(a1, v16, 1, 1, *v15, 0, 0, a3, a5);
        }

        if ((result & 0x80000000) == 0)
        {
          goto LABEL_13;
        }
      }
    }
  }

LABEL_14:
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t nn_word_lkp_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2693799937;
  }

  result = 0;
  *a2 = &INnWordLkp;
  return result;
}

uint64_t nn_word_lkp_ObjOpen(uint64_t a1, uint64_t a2, uint64_t a3, _WORD *a4, uint64_t a5, uint64_t a6)
{
  v28 = 0;
  v6 = 2693799943;
  if (a6)
  {
    *a6 = 0;
    *(a6 + 8) = 0;
    inited = InitRsrcFunction(a4, a5, &v28);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    else
    {
      log_OutText(*(v28 + 32), "NN_WORD_LKP", 4, 0, "Entering nn_word_lkp_ObjOpen", v14, v15, v16, v26);
      v17 = heap_Calloc(*(v28 + 8), 1, 128);
      if (v17)
      {
        *a6 = v17;
        *(a6 + 8) = 62639;
        *v17 = a1;
        v17[1] = a2;
        v17[2] = a4;
        v17[3] = a5;
        v17[4] = v28;
        v17[15] = a3;
        v6 = nn_word_lkp_ObjOpenHelper(v17, a6);
        if ((v6 & 0x80000000) == 0)
        {
          log_OutText(*(v28 + 32), "NN_WORD_LKP", 4, 0, "Leaving nn_word_lkp_ObjOpen", v22, v23, v24, v27);
        }
      }

      else
      {
        log_OutPublic(*(v28 + 32), "NN_WORD_LKP", 41000, 0, v18, v19, v20, v21, v27);
        return 2693799946;
      }
    }
  }

  return v6;
}

uint64_t nn_word_lkp_ObjClose(void *a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 62639, 128);
  if ((result & 0x80000000) != 0)
  {
    return 2693799944;
  }

  if (a1)
  {
    log_OutText(*(a1[4] + 32), "NN_WORD_LKP", 4, 0, "Entering nn_word_lookup_ObjClose", v4, v5, v6, v12);
    nn_word_lkp_ObjCloseHelper(a1);
    v10 = a1[4];
    v11 = *(v10 + 48);
    if (v11)
    {
      objc_ReleaseObject(v11, "FE_DCTLKP");
      v10 = a1[4];
    }

    log_OutText(*(v10 + 32), "NN_WORD_LKP", 4, 0, "Leaving nn_word_lookup_ObjClose", v7, v8, v9, v13);
    heap_Free(*(a1[4] + 8), a1);
    return 0;
  }

  return result;
}

uint64_t nn_word_lkp_ObjReopen(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v13 = a1;
  v14 = a2;
  v7 = 2693799944;
  if ((safeh_HandleCheck(a1, a2, 62639, 128) & 0x80000000) == 0 && v3)
  {
    log_OutText(*(v3[4] + 32), "NN_WORD_LKP", 4, 0, "Entering nn_word_lkp_ObjReOpen", v4, v5, v6, v13);
    v8 = nn_word_lkp_ObjCloseHelper(v3);
    if ((v8 & 0x80000000) != 0)
    {
      v7 = v8;
    }

    else
    {
      v7 = nn_word_lkp_ObjOpenHelper(v3, &v13);
      if ((v7 & 0x80000000) == 0)
      {
        log_OutText(*(v3[4] + 32), "NN_WORD_LKP", 4, 0, "Leaving nn_word_lkp_ObjReOpen", v9, v10, v11, v13);
        return v7;
      }

      v3 = v13;
      v2 = v14;
    }

    nn_word_lkp_ObjClose(v3, v2);
  }

  return v7;
}

uint64_t nn_word_lkp_getVectorLength(uint64_t a1, int a2, _DWORD *a3)
{
  result = safeh_HandleCheck(a1, a2, 62639, 128);
  if ((result & 0x80000000) != 0)
  {
    return 2693799944;
  }

  *a3 = *(a1 + 68);
  return result;
}

uint64_t nn_word_lkp_getVectorExtLength(uint64_t a1, int a2, _DWORD *a3)
{
  result = safeh_HandleCheck(a1, a2, 62639, 128);
  if ((result & 0x80000000) != 0)
  {
    return 2693799944;
  }

  *a3 = *(a1 + 72);
  return result;
}

uint64_t nn_word_lkp_word2fvector(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v53 = *MEMORY[0x1E69E9840];
  v36 = 0;
  v35 = 0;
  v7 = 2693799944;
  v34 = 0;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  *__s = 0u;
  v38 = 0u;
  if ((safeh_HandleCheck(a1, a2, 62639, 128) & 0x80000000) == 0)
  {
    Name = embed_dict_getName(*(a1 + 120), __s);
    if (Name < 0)
    {
      log_OutText(*(*(a1 + 32) + 32), "NN_WORD_LKP", 0, 0, "Failed to generate the embedding dict name. Returns %u", v9, v10, v11, Name & 0x1FFF);
      goto LABEL_26;
    }

    if (*(a1 + 84) < 2u)
    {
      if (strstr(__s, "lid") || (*__s == 27747 ? (v24 = __s[2] == 109) : (v24 = 0), v24))
      {
        v35 = 1;
      }

      v20 = (*(*(a1 + 40) + 96))(*(a1 + 48), *(a1 + 56), __s, a3, &v36, &v35, &v34);
      if ((v20 & 0x80000000) != 0)
      {
LABEL_6:
        log_OutText(*(*(a1 + 32) + 32), "NN_WORD_LKP", 0, 0, "Failed to lookup word %s returns %u", v21, v22, v23, a3);
        v7 = v20;
        goto LABEL_26;
      }
    }

    else
    {
      v12 = strlen(__s);
      v13 = heap_Alloc(*(*(a1 + 32) + 8), v12 + 2);
      if (!v13)
      {
        log_OutPublic(*(*(a1 + 32) + 32), "NN_WORD_LKP", 41000, 0, v14, v15, v16, v17, v33);
        v7 = 2693799946;
        goto LABEL_26;
      }

      v18 = v13;
      v19 = strcpy(v13, __s);
      *(v18 + strlen(v19)) = 95;
      v20 = (*(*(a1 + 40) + 152))(*(a1 + 48), *(a1 + 56), v18, a3, &v36, &v35, &v34, *(a1 + 84));
      heap_Free(*(*(a1 + 32) + 8), v18);
      if ((v20 & 0x80000000) != 0)
      {
        goto LABEL_6;
      }
    }

    if (!v35)
    {
      log_OutText(*(*(a1 + 32) + 32), "NN_WORD_LKP", 4, 0, "No index found for word %s", v21, v22, v23, a3);
      v7 = 2693799956;
      goto LABEL_26;
    }

    v25 = atoi(*v36);
    v29 = *(a1 + 64);
    if (v29 <= 6)
    {
      if (((1 << v29) & 0x12) != 0)
      {
        vector_u16linear = nn_word_lkp_get_vector_u16linear(a1, v25, a3, 0, a4, v26, v27, v28);
        goto LABEL_25;
      }

      if (((1 << v29) & 0x24) != 0)
      {
        vector_u16linear = nn_word_lkp_get_vector_u8kmeans(a1, v25, a3, 0, a4, v26, v27, v28);
        goto LABEL_25;
      }

      if (((1 << v29) & 0x48) != 0)
      {
        vector_u16linear = nn_word_lkp_get_vector_binary(a1, v25, a3, 0, a4, v26, v27, v28);
LABEL_25:
        v7 = vector_u16linear;
        goto LABEL_26;
      }
    }

    log_OutText(*(*(a1 + 32) + 32), "NN_WORD_LKP", 0, 0, "Got invalid or unsupported vector data format %u", v26, v27, v28, *(a1 + 64));
    v7 = 2693799952;
  }

LABEL_26:
  v31 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t nn_word_lkp_word2extfvector(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v52 = *MEMORY[0x1E69E9840];
  v35 = 0;
  v34 = 0;
  v7 = 2693799944;
  v33 = 0;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  *__s = 0u;
  v37 = 0u;
  if ((safeh_HandleCheck(a1, a2, 62639, 128) & 0x80000000) == 0)
  {
    Name = embed_dict_getName(*(a1 + 120), __s);
    if (Name < 0)
    {
      log_OutText(*(*(a1 + 32) + 32), "NN_WORD_LKP", 0, 0, "Failed to generate the embedding dict name. Returns %u", v9, v10, v11, Name & 0x1FFF);
      goto LABEL_20;
    }

    if (*(a1 + 84) < 2u)
    {
      v20 = (*(*(a1 + 40) + 96))(*(a1 + 48), *(a1 + 56), __s, a3, &v35, &v34, &v33);
      if ((v20 & 0x80000000) != 0)
      {
LABEL_6:
        log_OutText(*(*(a1 + 32) + 32), "NN_WORD_LKP", 0, 0, "Failed to lookup word %s returns %u", v21, v22, v23, a3);
        v7 = v20;
        goto LABEL_20;
      }
    }

    else
    {
      v12 = strlen(__s);
      v13 = heap_Alloc(*(*(a1 + 32) + 8), v12 + 2);
      if (!v13)
      {
        log_OutPublic(*(*(a1 + 32) + 32), "NN_WORD_LKP", 41000, 0, v14, v15, v16, v17, v32);
        v7 = 2693799946;
        goto LABEL_20;
      }

      v18 = v13;
      v19 = strcpy(v13, __s);
      *(v18 + strlen(v19)) = 95;
      v20 = (*(*(a1 + 40) + 152))(*(a1 + 48), *(a1 + 56), v18, a3, &v35, &v34, &v33, *(a1 + 84));
      heap_Free(*(*(a1 + 32) + 8), v18);
      if ((v20 & 0x80000000) != 0)
      {
        goto LABEL_6;
      }
    }

    if (v34)
    {
      v24 = atoi(*v35);
      v28 = *(a1 + 64);
      switch(v28)
      {
        case 6:
          vector_binary = nn_word_lkp_get_vector_binary(a1, v24, a3, 1, a4, v25, v26, v27);
          break;
        case 5:
          vector_binary = nn_word_lkp_get_vector_u8kmeans(a1, v24, a3, 1, a4, v25, v26, v27);
          break;
        case 4:
          vector_binary = nn_word_lkp_get_vector_u16linear(a1, v24, a3, 1, a4, v25, v26, v27);
          break;
        default:
          log_OutText(*(*(a1 + 32) + 32), "NN_WORD_LKP", 0, 0, "Got invalid or unsupported vector data format %u", v25, v26, v27, *(a1 + 64));
          v7 = 2693799952;
          goto LABEL_20;
      }

      v7 = vector_binary;
    }

    else
    {
      log_OutText(*(*(a1 + 32) + 32), "NN_WORD_LKP", 4, 0, "No index found for word %s", v21, v22, v23, a3);
      v7 = 2693799956;
    }
  }

LABEL_20:
  v30 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t nn_word_lkp_word2id(uint64_t a1, int a2, uint64_t a3, float *a4)
{
  v47 = *MEMORY[0x1E69E9840];
  v30 = 0;
  v29 = 0;
  v7 = 2693799944;
  v28 = 0;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  *__s = 0u;
  v32 = 0u;
  if ((safeh_HandleCheck(a1, a2, 62639, 128) & 0x80000000) == 0)
  {
    Name = embed_dict_getName(*(a1 + 120), __s);
    if (Name < 0)
    {
      log_OutText(*(*(a1 + 32) + 32), "NN_WORD_LKP", 0, 0, "Failed to generate the embedding dict name. Returns %u", v9, v10, v11, Name & 0x1FFF);
      goto LABEL_19;
    }

    if (*(a1 + 84) < 2u)
    {
      if (strstr(__s, "lid") || (*__s == 27747 ? (v24 = __s[2] == 109) : (v24 = 0), v24))
      {
        v29 = 1;
      }

      v20 = (*(*(a1 + 40) + 96))(*(a1 + 48), *(a1 + 56), __s, a3, &v30, &v29, &v28);
      if ((v20 & 0x80000000) != 0)
      {
LABEL_6:
        log_OutText(*(*(a1 + 32) + 32), "NN_WORD_LKP", 0, 0, "Failed to lookup word %s returns %u", v21, v22, v23, a3);
        v7 = v20;
        goto LABEL_19;
      }
    }

    else
    {
      v12 = strlen(__s);
      v13 = heap_Alloc(*(*(a1 + 32) + 8), v12 + 2);
      if (!v13)
      {
        log_OutPublic(*(*(a1 + 32) + 32), "NN_WORD_LKP", 41000, 0, v14, v15, v16, v17, v27);
        v7 = 2693799946;
        goto LABEL_19;
      }

      v18 = v13;
      v19 = strcpy(v13, __s);
      *(v18 + strlen(v19)) = 95;
      v20 = (*(*(a1 + 40) + 152))(*(a1 + 48), *(a1 + 56), v18, a3, &v30, &v29, &v28, *(a1 + 84));
      heap_Free(*(*(a1 + 32) + 8), v18);
      if ((v20 & 0x80000000) != 0)
      {
        goto LABEL_6;
      }
    }

    if (v29)
    {
      v7 = 0;
      *a4 = atoi(*v30);
    }

    else
    {
      log_OutText(*(*(a1 + 32) + 32), "NN_WORD_LKP", 4, 0, "No index found for word %s", v21, v22, v23, a3);
      v7 = 2693799956;
    }
  }

LABEL_19:
  v25 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t nn_word_lkp_ObjOpenHelper(uint64_t a1, uint64_t a2)
{
  v65 = *MEMORY[0x1E69E9840];
  v58 = 0;
  memset(v64, 0, sizeof(v64));
  memset(v63, 0, sizeof(v63));
  BrokerString = embed_vect_getBrokerString(*(a1 + 32), *(a1 + 120), v64, v63, 0x100uLL);
  if ((BrokerString & 0x80000000) != 0)
  {
    v9 = BrokerString;
    v10 = *(*(a1 + 32) + 32);
    v11 = v9 & 0x1FFF;
    v12 = "Failed to generate the embedding vector brokerstring. Returns %u";
LABEL_35:
    log_OutText(v10, "NN_WORD_LKP", 0, 0, v12, v5, v6, v7, v11);
    goto LABEL_36;
  }

  if ((ssftriff_reader_ObjOpen(*(a1 + 16), *(a1 + 24), 2, v63, "CRPH", 5, &v58) & 0x80000000) != 0)
  {
    v13 = ssftriff_reader_ObjOpen(*(a1 + 16), *(a1 + 24), 0, v64, "CRPH", 5, &v58);
    v17 = *(a1 + 32);
    if ((v13 & 0x80000000) != 0)
    {
      v9 = v13;
      log_OutText(*(v17 + 32), "NN_WORD_LKP", 0, 0, "Failed to open the word vector riff file (%s). Returns %u", v14, v15, v16, v64);
      goto LABEL_36;
    }

    v8 = *(v17 + 24);
  }

  else
  {
    v8 = *(*(a1 + 32) + 24);
  }

  v18 = brk_DataOpen(v8);
  if ((v18 & 0x80000000) != 0)
  {
    v9 = v18;
    goto LABEL_36;
  }

  v23 = v58;
  v62 = 0;
  v60 = 0;
  v61 = 0;
  __src = 0;
  v24 = ssftriff_reader_OpenChunk(v58, &v61, &v60, &__src, v19, v20, v21, v22);
  if ((v24 & 0x80000000) != 0)
  {
    goto LABEL_34;
  }

  if (!(v61 ^ 0x44414548 | v62))
  {
    v11 = v60;
    if (v60 <= 0xF)
    {
      v9 = 2693799953;
      v10 = *(*(a1 + 32) + 32);
      v12 = "Found riff chunk of size %u. Expected at least %u";
      goto LABEL_35;
    }

    v26 = __src;
    v27 = *__src;
    *(a1 + 64) = v27;
    *(a1 + 68) = v26[1];
    if ((v27 - 4) > 2)
    {
      v28 = 0;
      v29 = 2;
    }

    else
    {
      v28 = v26[2];
      v29 = 3;
    }

    *(a1 + 72) = v28;
    *(a1 + 84) = v26[v29];
    if (v27 > 3)
    {
      if ((v27 - 5) < 2)
      {
        v30 = v26[4];
        goto LABEL_24;
      }

      if (v27 == 4)
      {
        v31 = *(v26 + 4);
        goto LABEL_29;
      }
    }

    else
    {
      if ((v27 - 2) < 2)
      {
        v30 = v26[3];
LABEL_24:
        *(a1 + 88) = v30;
        *(a1 + 76) = 0;
        *(a1 + 80) = 0;
LABEL_30:
        v32 = ssftriff_reader_CloseChunk(v23);
        if ((v32 & 0x80000000) != 0)
        {
LABEL_57:
          v9 = v32;
          v10 = *(*(a1 + 32) + 32);
          v11 = v9 & 0x1FFF;
          v12 = "Failed to close riff chunk. Returns %u";
          goto LABEL_35;
        }

        v34 = v58;
        v62 = 0;
        v60 = 0;
        v61 = 0;
        __src = 0;
        v24 = ssftriff_reader_OpenChunk(v58, &v61, &v60, &__src, v33, v5, v6, v7);
        if ((v24 & 0x80000000) == 0)
        {
          if (v61 ^ 0x54434556 | v62)
          {
            v9 = 2693799953;
            v25 = *(*(a1 + 32) + 32);
            goto LABEL_11;
          }

          v43 = *(a1 + 64);
          if (v43 <= 6 && ((1 << v43) & 0x6C) != 0)
          {
            v44 = (4 * *(a1 + 88));
            v45 = heap_Calloc(*(*(a1 + 32) + 8), 1, v44);
            *(a1 + 104) = v45;
            if (!v45)
            {
              log_OutPublic(*(*(a1 + 32) + 32), "NN_WORD_LKP", 41000, 0, v46, v47, v48, v49, v57);
              v9 = 2693799946;
              goto LABEL_36;
            }

            memcpy(v45, __src, v44);
            *(a1 + 112) = ssftriff_reader_GetPosition(v34) + v44;
            v50 = v60 - v44;
          }

          else
          {
            *(a1 + 112) = ssftriff_reader_GetPosition(v34);
            v50 = v60;
          }

          *(a1 + 116) = v50;
          v32 = ssftriff_reader_CloseChunk(v34);
          if ((v32 & 0x80000000) == 0)
          {
            v55 = ssftriff_reader_ObjClose(v58, v51, v52, v53, v54, v5, v6, v7);
            v58 = 0;
            if ((v55 & 0x80000000) != 0)
            {
              v9 = v55;
              v10 = *(*(a1 + 32) + 32);
              v11 = v9 & 0x1FFF;
              v12 = "Failed to close the riff file; ssftriff_reader_ObjClose returns %u";
            }

            else
            {
              Interface = fe_dctlkp_GetInterface(1u, (a1 + 40));
              if ((Interface & 0x80000000) != 0)
              {
                v9 = Interface;
                v10 = *(*(a1 + 32) + 32);
                v11 = v9 & 0x1FFF;
                v12 = "fe_dctlkp_GetInterface returns %u";
              }

              else
              {
                v9 = (*(*(a1 + 40) + 32))(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), a1 + 48);
                if ((v9 & 0x80000000) == 0)
                {
                  goto LABEL_36;
                }

                v10 = *(*(a1 + 32) + 32);
                v11 = v9 & 0x1FFF;
                v12 = "pfObjOpen returns %u";
              }
            }

            goto LABEL_35;
          }

          goto LABEL_57;
        }

LABEL_34:
        v9 = v24;
        v10 = *(*(a1 + 32) + 32);
        v11 = v9 & 0x1FFF;
        v12 = "Failed to open riff chunk. Returns %u";
        goto LABEL_35;
      }

      if (v27 == 1)
      {
        v31 = *(v26 + 3);
LABEL_29:
        *(a1 + 76) = vcvt_f32_s32(v31);
        *(a1 + 88) = 0;
        goto LABEL_30;
      }
    }

    log_OutText(*(*(a1 + 32) + 32), "NN_WORD_LKP", 0, 0, "Got invalid or unsupported vector data format %u", v5, v6, v7, v27);
    v9 = 2693799952;
    goto LABEL_36;
  }

  v9 = 2693799953;
  v25 = *(*(a1 + 32) + 32);
LABEL_11:
  log_OutText(v25, "NN_WORD_LKP", 0, 0, "Found riff chunk (%s). Expected %s", v5, v6, v7, &v61);
LABEL_36:
  if (v58)
  {
    v35 = ssftriff_reader_CloseChunk(v58);
    if ((v35 & 0x80000000) != 0)
    {
      v39 = v35;
      log_OutText(*(*(a1 + 32) + 32), "NN_WORD_LKP", 0, 0, "Failed to close the riff file; ssftriff_reader_CloseChunk returns %u", v36, v37, v38, v35 & 0x1FFF);
      if (v9 >= 0)
      {
        v9 = v39;
      }

      else
      {
        v9 = v9;
      }

      goto LABEL_43;
    }
  }

  if ((v9 & 0x80000000) != 0)
  {
LABEL_43:
    nn_word_lkp_ObjClose(*a2, *(a2 + 8));
    *a2 = 0;
    *(a2 + 8) = 0;
    *a2 = safeh_GetNullHandle();
    *(a2 + 8) = v40;
  }

  v41 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t nn_word_lkp_ObjCloseHelper(void *a1)
{
  v2 = a1[5];
  if (v2 && (v3 = (*(v2 + 40))(a1[6], a1[7]), (v3 & 0x80000000) != 0))
  {
    v7 = v3;
    log_OutText(*(a1[4] + 32), "NN_WORD_LKP", 0, 0, "Failed to close dct. pIDct->pfObjClose returns %u", v4, v5, v6, v3 & 0x1FFF);
  }

  else
  {
    v7 = 0;
  }

  v8 = a1[13];
  if (v8)
  {
    heap_Free(*(a1[4] + 8), v8);
    a1[13] = 0;
  }

  v9 = a1[12];
  if (v9)
  {
    v10 = brk_DataClose(*(a1[4] + 24), v9);
    if ((v10 & 0x80000000) != 0)
    {
      v14 = v10;
      log_OutText(*(a1[4] + 32), "NN_WORD_LKP", 0, 0, "Failed to close the riff file; brk_DataClose returns %u", v11, v12, v13, v10 & 0x1FFF);
      if (v7)
      {
        return v7;
      }

      else
      {
        return v14;
      }
    }
  }

  return v7;
}

uint64_t nn_word_lkp_get_vector_u16linear(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 68);
  v10 = *(a1 + 72) + v9;
  v11 = *(a1 + 116) - v10;
  v28 = 0;
  if (v10 * a2 <= v11)
  {
    if (a4)
    {
      v14 = v10;
    }

    else
    {
      v14 = v9;
    }

    v15 = brk_DataMap(*(*(a1 + 32) + 24), *(a1 + 96), *(a1 + 112) + v10 * a2, (2 * v14), &v28);
    if ((v15 & 0x80000000) != 0)
    {
      v12 = v15;
      v24 = *(*(a1 + 32) + 32);
      v25 = v12 & 0x1FFF;
      v26 = "Failed to map data, brk_DataMap returns %u.";
    }

    else
    {
      v20 = v28;
      if (v14)
      {
        v21 = 0;
        v22 = *(a1 + 68);
        do
        {
          LOWORD(v19) = *(v20 + 2 * v21);
          v19 = LODWORD(v19);
          if (v21 < v22)
          {
            v19 = *(a1 + 76) + (((*(a1 + 80) - *(a1 + 76)) * v19) * 0.000030518);
          }

          *(a5 + 4 * v21++) = v19;
        }

        while (v14 != v21);
      }

      v23 = brk_DataUnmap(*(*(a1 + 32) + 24), *(a1 + 96), v20);
      if ((v23 & 0x80000000) == 0)
      {
        return 0;
      }

      v12 = v23;
      v24 = *(*(a1 + 32) + 32);
      v25 = v12 & 0x1FFF;
      v26 = "Failed to unmap data, brk_DataUnMap returns %u.";
    }

    log_OutText(v24, "NN_WORD_LKP", 0, 0, v26, v16, v17, v18, v25);
    return v12;
  }

  log_OutText(*(*(a1 + 32) + 32), "NN_WORD_LKP", 0, 0, "Got invalid index for word %s, (%u > %u)", a6, a7, a8, a3);
  return 2693799952;
}

uint64_t nn_word_lkp_get_vector_binary(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 68);
  v10 = *(a1 + 72) + v9;
  v11 = (v10 + 7) >> 3;
  v12 = *(a1 + 116) - v11;
  v35 = 0;
  if (v11 * a2 <= v12)
  {
    if (a4)
    {
      v15 = v11;
    }

    else
    {
      v15 = (v9 + 7) >> 3;
    }

    if (a4)
    {
      v16 = v10;
    }

    else
    {
      v16 = v9;
    }

    v17 = brk_DataMap(*(*(a1 + 32) + 24), *(a1 + 96), *(a1 + 112) + v11 * a2, v15, &v35);
    if ((v17 & 0x80000000) != 0)
    {
      v13 = v17;
      v31 = *(*(a1 + 32) + 32);
      v32 = v13 & 0x1FFF;
      v33 = "Failed to map data, brk_DataMap returns %u.";
    }

    else
    {
      v21 = v35;
      if (v15)
      {
        v22 = 0;
        v23 = (*(a1 + 68) + 7) >> 3;
        v24 = (a5 + 16);
        while (1)
        {
          v25 = *(v21 + v22);
          if (v16 >= 8)
          {
            v26 = 8;
          }

          else
          {
            v26 = v16;
          }

          v27 = v25 >> 7;
          if (v22 >= v23)
          {
            if (v26 <= 3)
            {
              switch(v26)
              {
                case 1:
                  goto LABEL_51;
                case 2:
                  goto LABEL_50;
                case 3:
                  goto LABEL_49;
              }

LABEL_44:
              v24[3] = (v25 & 1);
LABEL_45:
              v24[2] = ((v25 >> 1) & 1);
            }

            else
            {
              if (v26 <= 5)
              {
                if (v26 != 4)
                {
LABEL_47:
                  *v24 = ((v25 >> 3) & 1);
                }

                *(v24 - 1) = ((v25 >> 4) & 1);
LABEL_49:
                *(v24 - 2) = ((v25 >> 5) & 1);
LABEL_50:
                *(v24 - 3) = ((v25 >> 6) & 1);
LABEL_51:
                v29 = v27;
                goto LABEL_52;
              }

              if (v26 != 6)
              {
                if (v26 != 7)
                {
                  goto LABEL_44;
                }

                goto LABEL_45;
              }
            }

            v24[1] = ((v25 >> 2) & 1);
            goto LABEL_47;
          }

          v28 = *(a1 + 104);
          if (v26 > 3)
          {
            break;
          }

          if (v26 != 1)
          {
            if (v26 != 2)
            {
              if (v26 != 3)
              {
LABEL_34:
                v24[3] = *(v28 + 4 * (v25 & 1));
                goto LABEL_35;
              }

LABEL_39:
              *(v24 - 2) = *(v28 + 4 * ((v25 >> 5) & 1));
            }

            *(v24 - 3) = *(v28 + 4 * ((v25 >> 6) & 1));
          }

          v29 = *(v28 + 4 * v27);
LABEL_52:
          *(v24 - 4) = v29;
          ++v22;
          v24 += 8;
          v16 -= 8;
          if (v15 == v22)
          {
            goto LABEL_53;
          }
        }

        if (v26 > 5)
        {
          if (v26 != 6)
          {
            if (v26 != 7)
            {
              goto LABEL_34;
            }

LABEL_35:
            v24[2] = *(v28 + 4 * ((v25 >> 1) & 1));
          }

          v24[1] = *(v28 + 4 * ((v25 >> 2) & 1));
        }

        else if (v26 == 4)
        {
LABEL_38:
          *(v24 - 1) = *(v28 + 4 * ((v25 >> 4) & 1));
          goto LABEL_39;
        }

        *v24 = *(v28 + 4 * ((v25 >> 3) & 1));
        goto LABEL_38;
      }

LABEL_53:
      v30 = brk_DataUnmap(*(*(a1 + 32) + 24), *(a1 + 96), v21);
      if ((v30 & 0x80000000) == 0)
      {
        return 0;
      }

      v13 = v30;
      v31 = *(*(a1 + 32) + 32);
      v32 = v13 & 0x1FFF;
      v33 = "Failed to unmap data, brk_DataUnMap returns %u.";
    }

    log_OutText(v31, "NN_WORD_LKP", 0, 0, v33, v18, v19, v20, v32);
    return v13;
  }

  log_OutText(*(*(a1 + 32) + 32), "NN_WORD_LKP", 0, 0, "Got invalid index for word %s, (%u > %u)", a6, a7, a8, a3);
  return 2693799952;
}

uint64_t nn_word_lkp_get_vector_u8kmeans(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 68);
  v10 = *(a1 + 72) + v9;
  v11 = *(a1 + 116) - v10;
  v28 = 0;
  if (v10 * a2 <= v11)
  {
    if (a4)
    {
      v14 = v10;
    }

    else
    {
      v14 = v9;
    }

    v15 = brk_DataMap(*(*(a1 + 32) + 24), *(a1 + 96), *(a1 + 112) + v10 * a2, v14, &v28);
    if ((v15 & 0x80000000) != 0)
    {
      v12 = v15;
      v24 = *(*(a1 + 32) + 32);
      v25 = v12 & 0x1FFF;
      v26 = "Failed to map data, brk_DataMap returns %u.";
    }

    else
    {
      v20 = v28;
      if (v14)
      {
        v21 = 0;
        v22 = *(a1 + 68);
        do
        {
          if (v21 >= v22)
          {
            LOBYTE(v19) = *(v20 + v21);
            v19 = LODWORD(v19);
          }

          else
          {
            v19 = *(*(a1 + 104) + 4 * *(v20 + v21));
          }

          *(a5 + 4 * v21++) = v19;
        }

        while (v14 != v21);
      }

      v23 = brk_DataUnmap(*(*(a1 + 32) + 24), *(a1 + 96), v20);
      if ((v23 & 0x80000000) == 0)
      {
        return 0;
      }

      v12 = v23;
      v24 = *(*(a1 + 32) + 32);
      v25 = v12 & 0x1FFF;
      v26 = "Failed to unmap data, brk_DataUnMap returns %u.";
    }

    log_OutText(v24, "NN_WORD_LKP", 0, 0, v26, v16, v17, v18, v25);
    return v12;
  }

  log_OutText(*(*(a1 + 32) + 32), "NN_WORD_LKP", 0, 0, "Got invalid index for word %s, (%u > %u)", a6, a7, a8, a3);
  return 2693799952;
}

uint64_t tnplus_word_copyParts(char **a1, void *a2, void *a3)
{
  if (!a1)
  {
    return 1;
  }

  if (!a3)
  {
    return 1;
  }

  result = hlp_DuplicateString(a2, *a1, a3);
  if (result)
  {
    result = hlp_DuplicateString(a2, a1[1], a3 + 1);
    if (result)
    {
      result = hlp_DuplicateString(a2, a1[2], a3 + 2);
      if (result)
      {
        result = hlp_DuplicateString(a2, a1[3], a3 + 3);
        if (result)
        {
          result = hlp_DuplicateString(a2, a1[4], a3 + 4);
          if (result)
          {
            result = hlp_DuplicateString(a2, a1[6], a3 + 6);
            if (result)
            {
              result = hlp_DuplicateString(a2, a1[7], a3 + 7);
              if (result)
              {
                result = hlp_DuplicateString(a2, a1[9], a3 + 9);
                if (result)
                {
                  result = hlp_DuplicateString(a2, a1[10], a3 + 10);
                  if (result)
                  {
                    result = hlp_DuplicateString(a2, a1[11], a3 + 11);
                    if (result)
                    {
                      result = hlp_DuplicateString(a2, a1[12], a3 + 12);
                      if (result)
                      {
                        result = hlp_DuplicateString(a2, a1[13], a3 + 13);
                        if (result)
                        {
                          result = hlp_DuplicateString(a2, a1[15], a3 + 15);
                          if (result)
                          {
                            return 1;
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

uint64_t hlp_DuplicateString(void *a1, char *__s, void *a3)
{
  if (!a3)
  {
    return 0;
  }

  if (__s)
  {
    v6 = strlen(__s);
    result = heap_Calloc(a1, v6 + 1, 1);
    *a3 = result;
    if (!result)
    {
      return result;
    }

    strcpy(result, __s);
  }

  else
  {
    *a3 = 0;
  }

  return 1;
}

uint64_t *tnplus_word_freeParts(uint64_t *result, void *a2)
{
  if (result)
  {
    v3 = result;
    if (*result)
    {
      result = heap_Free(a2, *result);
      *v3 = 0;
    }

    v4 = v3[1];
    if (v4)
    {
      result = heap_Free(a2, v4);
      v3[1] = 0;
    }

    v5 = v3[2];
    if (v5)
    {
      result = heap_Free(a2, v5);
      v3[2] = 0;
    }

    v6 = v3[3];
    if (v6)
    {
      result = heap_Free(a2, v6);
      v3[3] = 0;
    }

    v7 = v3[4];
    if (v7)
    {
      result = heap_Free(a2, v7);
      v3[4] = 0;
    }

    v8 = v3[6];
    if (v8)
    {
      result = heap_Free(a2, v8);
      v3[6] = 0;
    }

    v9 = v3[7];
    if (v9)
    {
      result = heap_Free(a2, v9);
      v3[7] = 0;
    }

    v10 = v3[9];
    if (v10)
    {
      result = heap_Free(a2, v10);
      v3[9] = 0;
    }

    v11 = v3[10];
    if (v11)
    {
      result = heap_Free(a2, v11);
      v3[10] = 0;
    }

    v12 = v3[11];
    if (v12)
    {
      result = heap_Free(a2, v12);
      v3[11] = 0;
    }

    v13 = v3[12];
    if (v13)
    {
      result = heap_Free(a2, v13);
      v3[12] = 0;
    }

    v14 = v3[13];
    if (v14)
    {
      result = heap_Free(a2, v14);
      v3[13] = 0;
    }

    v15 = v3[15];
    if (v15)
    {
      result = heap_Free(a2, v15);
      v3[15] = 0;
    }
  }

  return result;
}

uint64_t p_xcoder_ObjOpen(uint64_t a1)
{
  v10 = 0;
  inited = InitRsrcFunction(*a1, *(a1 + 8), &v10);
  if ((inited & 0x80000000) == 0)
  {
    v3 = heap_Alloc(*(v10 + 8), 4);
    *(a1 + 280) = v3;
    if (v3)
    {
      *v3 = 0;
    }

    else
    {
      log_OutPublic(*(v10 + 32), "XCODER", 15000, 0, v4, v5, v6, v7, v9);
      return 2282758154;
    }
  }

  return inited;
}

uint64_t p_xcoder_ObjClose(uint64_t a1)
{
  v4 = 0;
  inited = InitRsrcFunction(*a1, *(a1 + 8), &v4);
  if ((inited & 0x80000000) == 0)
  {
    heap_Free(*(v4 + 8), *(a1 + 280));
    *(a1 + 280) = 0;
  }

  return inited;
}

uint64_t p_xcoder_OpenXCoder(uint64_t a1)
{
  v14 = 0;
  inited = InitRsrcFunction(*a1, *(a1 + 8), &v14);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  if (*(a1 + 16) || *(a1 + 144))
  {
    **(a1 + 280) = 0;
    if (LH_stricmp((a1 + 16), "UTF-16"))
    {
      v11 = 2282758145;
      log_OutPublic(*(v14 + 32), "XCODER", 15004, "%s%s%s%s", v7, v8, v9, v10, "charsetIn");
    }

    else
    {
      v11 = 0;
      **(a1 + 280) = 2;
    }
  }

  else
  {
    log_OutPublic(*(v14 + 32), "XCODER", 15002, 0, v3, v4, v5, v6, v13);
    v11 = 2282758151;
  }

  *(a1 + 272) = v11;
  return v11;
}

uint64_t p_xcoder_Convert(uint64_t a1, uint64_t a2, unsigned int a3, _DWORD *a4, uint64_t a5, unsigned int a6, unsigned int *a7, _DWORD *a8)
{
  v28 = 0;
  *a4 = 0;
  *a7 = 0;
  inited = InitRsrcFunction(*a1, *(a1 + 8), &v28);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v21 = 2282758158;
  if (**(a1 + 280) == 2)
  {
    if (a3)
    {
      v21 = 2282758405;
      goto LABEL_10;
    }

    v21 = utf8_Utf16ToUtf8(a2, a3 >> 1, a4, a5, a6, a7, a8);
    v22 = v21 & 0x1FFF;
    if ((v21 & 0x1FFF) != 0 && v22 != 7)
    {
      if (v22 == 9)
      {
        v23 = *(v28 + 32);
        v24 = 15015;
        v25 = 0;
LABEL_11:
        log_OutPublic(v23, "XCODER", v24, v25, v17, v18, v19, v20, v27);
        return v21;
      }

LABEL_10:
      v23 = *(v28 + 32);
      v27 = "input";
      v25 = "%s%s%s%s%s%x";
      v24 = 15016;
      goto LABEL_11;
    }
  }

  return v21;
}

uint64_t xcoder_mrksync_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2282758145;
  }

  result = 0;
  *a2 = &IXCoderMrkSync;
  return result;
}

uint64_t xcoder_mrksync_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  Object = 2282758151;
  v23 = 0;
  v24 = 0;
  NullHandle = safeh_GetNullHandle();
  v11 = safeh_HandlesEqual(a3, a4, NullHandle, v10);
  if (a5)
  {
    if (!v11)
    {
      *a5 = 0;
      *(a5 + 8) = 0;
      if ((InitRsrcFunction(a3, a4, &v24) & 0x80000000) == 0)
      {
        v12 = heap_Calloc(*(v24 + 8), 1, 72);
        if (v12)
        {
          v17 = v12;
          *v12 = a3;
          v12[1] = a4;
          Object = objc_GetObject(*(v24 + 48), "SYNTHSTREAM", &v23);
          if ((Object & 0x80000000) != 0)
          {
            log_OutPublic(*(v24 + 32), "XCODER", 15024, 0, v18, v19, v20, v21, v23);
            heap_Free(*(v24 + 8), v17);
          }

          else
          {
            *(v17 + 16) = *(v23 + 8);
            *a5 = v17;
            *(a5 + 8) = 854;
          }
        }

        else
        {
          log_OutPublic(*(v24 + 32), "XCODER", 15000, 0, v13, v14, v15, v16, v23);
          return 2282758154;
        }
      }
    }
  }

  return Object;
}

uint64_t xcoder_mrksync_ObjClose(void *a1, int a2)
{
  v5 = 0;
  v6 = 0;
  v2 = p_xcoder_mrksync_BeginFunction(a1, a2, &v6, &v5);
  if ((v2 & 0x80000000) != 0)
  {
    return v2;
  }

  v3 = objc_ReleaseObject(*(v6 + 48), "SYNTHSTREAM");
  if ((v3 & 0x80000000) == 0)
  {
    heap_Free(*(v6 + 8), v5);
  }

  return v3;
}

uint64_t xcoder_mrksync_ProcessStart(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v16 = 0;
  v17 = 0;
  v6 = p_xcoder_mrksync_BeginFunction(a1, a2, &v17, &v16);
  if ((v6 & 0x80000000) != 0)
  {
    return v6;
  }

  v7 = v16;
  if (((*(*(v16 + 16) + 64))(a3, a4, 129, "application/x-realspeak-xcoder-sync;version=5.0", 0, 0, v16 + 24) & 0x80000000) != 0)
  {
    return 0;
  }

  v8 = (*(*(v7 + 16) + 64))(a3, a4, 129, "application/x-realspeak-markers-pp;version=4.0", 0, 0, v7 + 40);
  if ((v8 & 0x80000000) != 0)
  {
    v13 = v8;
    v14 = 15026;
    goto LABEL_9;
  }

  v13 = (*(*(v7 + 16) + 64))(a3, a4, 129, "application/x-realspeak-markers-pp;version=4.0", 0, 1, v7 + 56);
  if ((v13 & 0x80000000) != 0)
  {
    v14 = 15027;
LABEL_9:
    log_OutPublic(*(v17 + 32), "XCODER", v14, "%s%s", v9, v10, v11, v12, "contentType");
  }

  return v13;
}

uint64_t xcoder_mrksync_Process(void *a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v56 = 0;
  __n = 0;
  v55 = 0;
  v52 = 0;
  v53 = 0;
  v50 = 0;
  v51 = 0;
  v6 = p_xcoder_mrksync_BeginFunction(a1, a2, &v55, &v56);
  if ((v6 & 0x80000000) != 0)
  {
    return v6;
  }

  *a5 = 1;
  v7 = v56;
  if (!v56[7])
  {
    return 0;
  }

  v12 = (*(v56[2] + 144))(v56[5], v56[6], &__n, &__n + 4);
  if ((v12 & 0x80000000) != 0)
  {
    log_OutPublic(*(v55 + 32), "XCODER", 15028, "%s%s%s%x", v8, v9, v10, v11, "stream");
    return v12;
  }

  if (__n)
  {
    v13 = (*(v7[2] + 88))(v7[5], v7[6], &v53, &__n);
    if ((v13 & 0x80000000) != 0)
    {
      v12 = v13;
      v35 = *(v55 + 32);
    }

    else
    {
      v18 = (*(v7[2] + 136))(v7[3], v7[4], &v51 + 4);
      if ((v18 & 0x80000000) != 0)
      {
        v12 = v18;
        log_OutPublic(*(v55 + 32), "XCODER", 15029, "%s%s%s%x", v19, v20, v21, v22, "stream");
        return v12;
      }

      v23 = (*(v7[2] + 88))(v7[3], v7[4], &v50, &v51);
      if ((v23 & 0x80000000) == 0)
      {
        v12 = (*(v7[2] + 112))(v7[7], v7[8], &v52, __n);
        if ((v12 & 0x80000000) != 0)
        {
          log_OutPublic(*(v55 + 32), "XCODER", 15031, "%s%s%s%x", v24, v25, v26, v27, "stream");
          (*(v7[2] + 96))(v7[5], v7[6], 0);
        }

        else
        {
          memcpy(v52, v53, __n);
          v30 = v51 >> 2;
          LODWORD(v51) = v51 >> 2;
          HIDWORD(v51) >>= 2;
          v31 = __n;
          if (__n >= 0x20)
          {
            v37 = 0;
            v38 = 0;
            v32 = 0;
            v39 = v53;
            do
            {
              v40 = *&v39[v37];
              v41 = v40 > 0x1D || ((1 << v40) & 0x215F0112) == 0;
              if (!v41 || v40 == 0x4000)
              {
                p_xcoder_GetRefPosition(v55, HIDWORD(v51), v50, v51, *&v39[v37 + 4], &v52[v37 + 4], v28, v29);
                p_xcoder_GetRefPosition(v55, HIDWORD(v51), v50, v51, (*&v53[v37 + 8] + *&v53[v37 + 4]), &v52[v37 + 8], v42, v43);
                LODWORD(v12) = 0;
                *&v52[v37 + 8] -= *&v52[v37 + 4];
                v39 = v53;
                if (*&v53[v37 + 4] > v32)
                {
                  v32 = *&v53[v37 + 4];
                }

                v31 = __n;
              }

              ++v38;
              v37 += 32;
            }

            while (v38 < v31 >> 5);
            v30 = v51;
          }

          else
          {
            v32 = 0;
          }

          if (v32 >= v30)
          {
            v32 = v30 - 1;
          }

          v44 = (*(v7[2] + 120))(v7[7], v7[8]);
          if (v44 < 0)
          {
            LODWORD(v12) = v44;
          }

          v45 = (*(v7[2] + 96))(v7[5], v7[6], __n);
          if (v45 < 0 && v12 > -1)
          {
            LODWORD(v12) = v45;
          }

          if (v32 <= HIDWORD(v51))
          {
            v47 = 0;
          }

          else
          {
            v47 = 4 * (v32 - HIDWORD(v51));
          }

          v48 = (*(v7[2] + 96))(v7[3], v7[4], v47);
          if (v48 >= 0 || v12 <= -1)
          {
            return v12;
          }

          else
          {
            return v48;
          }
        }

        return v12;
      }

      v12 = v23;
      v35 = *(v55 + 32);
    }

    log_OutPublic(v35, "XCODER", 15030, "%s%s%s%x", v14, v15, v16, v17, "stream");
    return v12;
  }

  if (HIDWORD(__n))
  {
    v33 = v7[7];
    if (v33)
    {
      v12 = (*(v7[2] + 72))(v33, v7[8]);
      v7[7] = safeh_GetNullHandle();
      v7[8] = v34;
    }
  }

  else
  {
    *a5 = 1;
  }

  return v12;
}

uint64_t xcoder_mrksync_ProcessEnd(void *a1, int a2)
{
  v11 = 0;
  v12 = 0;
  v2 = p_xcoder_mrksync_BeginFunction(a1, a2, &v12, &v11);
  if ((v2 & 0x80000000) == 0)
  {
    v3 = v11;
    v4 = v11[3];
    if (v4)
    {
      (*(v11[2] + 72))(v4, v11[4]);
      v3[3] = safeh_GetNullHandle();
      v3[4] = v5;
    }

    v6 = v3[5];
    if (v6)
    {
      (*(v3[2] + 72))(v6, v3[6]);
      v3[5] = safeh_GetNullHandle();
      v3[6] = v7;
    }

    v8 = v3[7];
    if (v8)
    {
      (*(v3[2] + 72))(v8, v3[8]);
      v3[7] = safeh_GetNullHandle();
      v3[8] = v9;
    }
  }

  return v2;
}

uint64_t p_xcoder_mrksync_BeginFunction(void *a1, int a2, void *a3, void *a4)
{
  *a3 = 0;
  *a4 = 0;
  LODWORD(result) = safeh_HandleCheck(a1, a2, 854, 72);
  if ((result & 0x80000000) != 0)
  {
    if ((result & 0x1FFF) == 8)
    {
      return 2282758152;
    }

    else
    {
      return result;
    }
  }

  else
  {
    *a4 = a1;
    v8 = *a1;
    v9 = a1[1];

    return InitRsrcFunction(v8, v9, a3);
  }
}

uint64_t p_xcoder_GetRefPosition(uint64_t result, unsigned int a2, int *a3, int a4, uint64_t a5, int *a6, uint64_t a7, uint64_t a8)
{
  if (a5 >= a2)
  {
    if (a4 + a2 >= a5)
    {
      if (a4 + a2 == a5)
      {
        v8 = a3[a4 - 1] + 2;
      }

      else
      {
        v8 = a3[a5 - a2];
      }

      *a6 = v8;
    }

    else
    {
      *a6 = a3[a4 - 1] + 2;
      return log_OutText(*(result + 32), "XCODER", 3, 0, "Marker text position is beyond the end of the sync object, charPos=%u, maxSyncPos=%u, return position=%u", a6, a7, a8, a5);
    }
  }

  else
  {
    *a6 = *a3;
    return log_OutText(*(result + 32), "XCODER", 3, 0, "Marker text position is before the synch object, charPos=%u, syncPos=%u, return position=%u", a6, a7, a8, a5);
  }

  return result;
}

uint64_t xcoder_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2282758145;
  }

  result = 0;
  *a2 = &IXCoder;
  return result;
}

uint64_t xcoder_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v8 = 2282758151;
  v23 = 0;
  v24 = 0;
  NullHandle = safeh_GetNullHandle();
  v11 = safeh_HandlesEqual(a3, a4, NullHandle, v10);
  if (a5)
  {
    if (!v11)
    {
      *a5 = 0;
      *(a5 + 8) = 0;
      if ((InitRsrcFunction(a3, a4, &v24) & 0x80000000) == 0)
      {
        v12 = heap_Calloc(*(v24 + 8), 1, 344);
        if (v12)
        {
          v17 = v12;
          *v12 = a3;
          *(v12 + 8) = a4;
          *(v12 + 272) = -2012209145;
          strcpy((v12 + 144), "UTF-8");
          if ((objc_GetObject(*(v24 + 48), "SYNTHSTREAM", &v23) & 0x80000000) != 0)
          {
            log_OutPublic(*(v24 + 32), "XCODER", 15024, 0, v18, v19, v20, v21, v23);
          }

          else
          {
            *(v17 + 288) = *(v23 + 8);
          }

          v8 = p_xcoder_ObjOpen(v17);
          if ((v8 & 0x80000000) != 0)
          {
            heap_Free(*(v24 + 8), v17);
            if (v23)
            {
              objc_ReleaseObject(*(v24 + 48), "SYNTHSTREAM");
            }
          }

          else
          {
            *a5 = v17;
            *(a5 + 8) = 852;
          }
        }

        else
        {
          log_OutPublic(*(v24 + 32), "XCODER", 15000, 0, v13, v14, v15, v16, v23);
          return 2282758154;
        }
      }
    }
  }

  return v8;
}

uint64_t xcoder_ObjClose(void *a1, int a2)
{
  v6 = 0;
  v7 = 0;
  v2 = p_xcoder_BeginFunction(a1, a2, &v7, &v6);
  if ((v2 & 0x80000000) != 0)
  {
    return v2;
  }

  v3 = v6;
  v2 = p_xcoder_ObjClose(v6);
  if ((v2 & 0x80000000) != 0)
  {
    return v2;
  }

  v4 = objc_ReleaseObject(*(v7 + 48), "SYNTHSTREAM");
  if ((v4 & 0x80000000) == 0)
  {
    heap_Free(*(v7 + 8), v3);
  }

  return v4;
}

uint64_t xcoder_ProcessStart(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v29 = 0;
  v30 = 0;
  v27 = 0;
  __s1 = 0;
  v6 = p_xcoder_BeginFunction(a1, a2, &v30, &v29);
  if ((v6 & 0x80000000) == 0)
  {
    v31[0] = 0;
    if ((paramc_ParamGetStr(*(v30 + 40), "inputmimetype", &__s1) & 0x80000000) == 0 && (v7 = __s1) != 0 && *__s1)
    {
      if (!strcmp(__s1, "text/plain"))
      {
        if ((paramc_ParamGetStr(*(v30 + 40), "nativetypeofchar", &v27) & 0x80000000) != 0 || !v27 || !*v27)
        {
          v27 = "UTF-8";
        }

        __strcpy_chk();
      }

      else
      {
        if (strncmp(v7, "text/plain;", 0xBuLL))
        {
          goto LABEL_23;
        }

        v8 = strstr(v7, ";charset=");
        if (!v8)
        {
          goto LABEL_23;
        }

        v9 = v8[9];
        if (v8[9])
        {
          v10 = 0;
          while (v10 <= 0x7E && v9 != 59)
          {
            v31[v10] = v9;
            v11 = v10 + 1;
            v9 = v8[v10++ + 10];
            if (!v9)
            {
              goto LABEL_43;
            }
          }

          v11 = v10;
        }

        else
        {
          v11 = 0;
        }

LABEL_43:
        v31[v11] = 0;
      }
    }

    else
    {
      if ((paramc_ParamGetStr(*(v30 + 40), "nativetypeofchar", &v27) & 0x80000000) != 0 || !v27 || !*v27)
      {
        v27 = "UTF-8";
      }

      __strcpy_chk();
      strcpy(v32, "text/plain;charset=");
      __strcat_chk();
      __s1 = v32;
    }

    if (LH_stricmp(v31, "UTF-8"))
    {
      v12 = v29;
      if (*(v29 + 272) || LH_stricmp(v31, (v29 + 16)))
      {
        __strcpy_chk();
        v13 = p_xcoder_OpenXCoder(v12);
        if ((v13 & 0x1FFF) == 1)
        {
LABEL_23:
          v6 = 0;
          goto LABEL_39;
        }

        v6 = v13;
        if ((v13 & 0x80000000) != 0)
        {
          goto LABEL_39;
        }
      }

      else
      {
        IsUpdatable = kaldi::nnet1::Component::IsUpdatable(v12);
        if ((IsUpdatable & 0x80000000) != 0)
        {
          v6 = IsUpdatable;
          goto LABEL_39;
        }
      }

      v15 = (*(*(v12 + 36) + 64))(a3, a4, 129, __s1, 0, 0, v12 + 37);
      if ((v15 & 0x80000000) != 0)
      {
        v6 = v15;
        log_OutPublic(*(v30 + 32), "XCODER", 15026, "%s%s", v16, v17, v18, v19, "contentType");
        goto LABEL_39;
      }

      v20 = (*(*(v12 + 36) + 64))(a3, a4, 129, "text/plain;charset=utf-8", 0, 1, v12 + 39);
      if ((v20 & 0x80000000) != 0)
      {
        v6 = v20;
      }

      else
      {
        v6 = (*(*(v12 + 36) + 64))(a3, a4, 129, "application/x-realspeak-xcoder-sync;version=5.0", 0, 1, v12 + 41);
        if ((v6 & 0x80000000) == 0)
        {
          goto LABEL_39;
        }
      }

      log_OutPublic(*(v30 + 32), "XCODER", 15027, "%s%s", v21, v22, v23, v24, "contentType");
    }
  }

LABEL_39:
  v25 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t xcoder_Process(void *a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v56 = 0;
  v57 = 0;
  v55 = 0;
  v54 = 0;
  v51 = 0;
  v52 = 0;
  __b = 0;
  v6 = p_xcoder_BeginFunction(a1, a2, &v57, &v56);
  if ((v6 & 0x80000000) == 0)
  {
    *a5 = 1;
    v7 = v56;
    if (v56[39])
    {
      v6 = (*(v56[36] + 144))(v56[37], v56[38], &v54, &v55 + 4);
      if ((v6 & 0x80000000) != 0)
      {
        log_OutPublic(*(v57 + 32), "XCODER", 15028, "%s%s%s%x", v8, v9, v10, v11, "stream");
      }

      else if (v54)
      {
        v12 = (*(v7[36] + 136))(v7[37], v7[38], &v55);
        if ((v12 & 0x80000000) != 0)
        {
          v6 = v12;
          log_OutPublic(*(v57 + 32), "XCODER", 15029, "%s%s%s%x", v13, v14, v15, v16, "stream");
        }

        else
        {
          v17 = (*(v7[36] + 88))(v7[37], v7[38], &v52, &v54);
          if ((v17 & 0x80000000) != 0)
          {
            v6 = v17;
            log_OutPublic(*(v57 + 32), "XCODER", 15030, "%s%s%s%x", v18, v19, v20, v21, "stream");
          }

          else
          {
            v22 = (*(v7[36] + 112))(v7[39], v7[40], &v51, 4 * v54);
            if ((v22 & 0x80000000) != 0)
            {
              v6 = v22;
              log_OutPublic(*(v57 + 32), "XCODER", 15031, "%s%s%s%x", v23, v24, v25, v26, "stream");
            }

            else
            {
              v27 = (*(v7[36] + 112))(v7[41], v7[42], &__b, 16 * v54);
              if ((v27 & 0x80000000) != 0)
              {
                v6 = v27;
                log_OutPublic(*(v57 + 32), "XCODER", 15031, "%s%s%s%x", v28, v29, v30, v31, "stream");
                (*(v7[36] + 96))(v7[37], v7[38], 0);
              }

              else if (!v55 && p_xcoder_CheckBom(v7, v52, v54) && (v43 = p_xcoder_OpenXCoder(v7), (v43 & 0x80000000) != 0))
              {
                return v43;
              }

              else
              {
                v32 = 4 * v54;
                v53 = 4 * v54;
                memset(__b, 255, 16 * v54);
                v33 = p_xcoder_Convert(v7, v52, v54, &v54, v51, v32, &v53, __b);
                if (v33 < 0 && ((LODWORD(v6) = v33, (v33 & 0x1FFF) != 7) || HIDWORD(v55)))
                {
                  v34 = 0;
                  v53 = 0;
                  v54 = 0;
                }

                else
                {
                  LODWORD(v6) = 0;
                  v34 = v53;
                  if (v55 && v53)
                  {
                    v35 = 0;
                    v36 = __b;
                    do
                    {
                      v36[v35++] += v55;
                      v34 = v53;
                    }

                    while (v35 < v53);
                    LODWORD(v6) = 0;
                  }
                }

                v44 = (*(v7[36] + 120))(v7[41], v7[42], 4 * v34);
                if (v44 < 0 && v6 > -1)
                {
                  LODWORD(v6) = v44;
                }

                v46 = (*(v7[36] + 120))(v7[39], v7[40], v53);
                if (v46 < 0 && v6 > -1)
                {
                  LODWORD(v6) = v46;
                }

                v48 = (*(v7[36] + 96))(v7[37], v7[38], v54);
                if (v48 >= 0 || v6 <= -1)
                {
                  return v6;
                }

                else
                {
                  return v48;
                }
              }
            }
          }
        }
      }

      else if (HIDWORD(v55))
      {
        v37 = v7[39];
        if (v37)
        {
          LODWORD(v6) = (*(v7[36] + 72))(v37, v7[40]);
          v7[39] = safeh_GetNullHandle();
          v7[40] = v38;
          v39 = (*(v7[36] + 72))(v7[41], v7[42]);
          v7[41] = safeh_GetNullHandle();
          v7[42] = v40;
          if (v39 >= 0 || v6 <= -1)
          {
            return v6;
          }

          else
          {
            return v39;
          }
        }
      }

      else
      {
        *a5 = 0;
      }
    }
  }

  return v6;
}

uint64_t xcoder_ProcessEnd(void *a1, int a2)
{
  v11 = 0;
  v12 = 0;
  v2 = p_xcoder_BeginFunction(a1, a2, &v12, &v11);
  if ((v2 & 0x80000000) == 0)
  {
    v3 = v11;
    v4 = v11[37];
    if (v4)
    {
      (*(v11[36] + 72))(v4, v11[38]);
      v3[37] = safeh_GetNullHandle();
      v3[38] = v5;
    }

    v6 = v3[39];
    if (v6)
    {
      (*(v3[36] + 72))(v6, v3[40]);
      v3[39] = safeh_GetNullHandle();
      v3[40] = v7;
    }

    v8 = v3[41];
    if (v8)
    {
      (*(v3[36] + 72))(v8, v3[42]);
      v3[41] = safeh_GetNullHandle();
      v3[42] = v9;
    }
  }

  return v2;
}

uint64_t p_xcoder_BeginFunction(void *a1, int a2, void *a3, void *a4)
{
  *a3 = 0;
  *a4 = 0;
  LODWORD(result) = safeh_HandleCheck(a1, a2, 852, 344);
  if ((result & 0x80000000) != 0)
  {
    if ((result & 0x1FFF) == 8)
    {
      return 2282758152;
    }

    else
    {
      return result;
    }
  }

  else
  {
    *a4 = a1;
    v8 = *a1;
    v9 = a1[1];

    return InitRsrcFunction(v8, v9, a3);
  }
}

uint64_t p_xcoder_CheckBom(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  if (a3 < 2)
  {
    return 0;
  }

  if (LH_stricmp((a1 + 16), "UTF-16") && LH_stricmp((a1 + 16), "UCS-2"))
  {
    return 0;
  }

  if (*a2 == 254 && a2[1] == 255)
  {
    strcpy((a1 + 16), "UTF-16BE");
    return 1;
  }

  else
  {
    result = 0;
    strcpy((a1 + 16), "UTF-16");
  }

  return result;
}

uint64_t synthstream_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2297438209;
  }

  result = 0;
  *a2 = &ISynthStream;
  return result;
}

uint64_t synthstream_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v5 = 2297438214;
  v28 = 0;
  if (a5)
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    inited = InitRsrcFunction(a3, a4, &v28);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    else
    {
      log_OutText(*(v28 + 32), "SYNTHSTREAM", 4, 0, "SYNTHSTREAM ObjOpen: Begin", v10, v11, v12, v24);
      v13 = heap_Calloc(*(v28 + 8), 1, 48);
      if (v13)
      {
        v18 = v13;
        *v13 = a3;
        *(v13 + 8) = a4;
        if ((paramc_ParamGetUInt(*(v28 + 40), "synthstreamminmemalloc", (v13 + 32)) & 0x80000000) != 0 || !*(v18 + 32))
        {
          *(v18 + 32) = 1024;
        }

        if ((paramc_ParamGetUInt(*(v28 + 40), "synthstreamminmemmove", (v18 + 36)) & 0x80000000) != 0 || !*(v18 + 36))
        {
          *(v18 + 36) = 128;
        }

        if ((paramc_ParamGetUInt(*(v28 + 40), "synthstreamminmemfree", (v18 + 40)) & 0x80000000) != 0 || !*(v18 + 40))
        {
          *(v18 + 40) = 4097;
        }

        paramc_ParamGetInt(*(v28 + 40), "loginputtext", (v18 + 44));
        v19 = *(v28 + 8);
        v26[0] = xmmword_1F42D6138;
        v26[1] = *&off_1F42D6148;
        v27 = off_1F42D6158;
        v5 = ssftmap_ObjOpen(v19, 0, v26, (v18 + 24));
        if ((v5 & 0x80000000) != 0)
        {
          heap_Free(*(v28 + 8), v18);
        }

        else
        {
          *a5 = v18;
          *(a5 + 8) = 18397;
        }
      }

      else
      {
        log_OutPublic(*(v28 + 32), "SYNTHSTREAM", 22000, 0, v14, v15, v16, v17, v25);
        v5 = 2297438218;
      }

      log_OutText(*(v28 + 32), "SYNTHSTREAM", 4, 0, "SYNTHSTREAM ObjOpen: End (%x)", v20, v21, v22, v5);
    }
  }

  return v5;
}

uint64_t synthstream_ObjClose(uint64_t a1, int a2)
{
  v38 = 0;
  v39 = 0;
  v37 = 0;
  v2 = synthstream_loc_BeginFunction(a1, a2, &v38, &v39);
  if ((v2 & 0x80000000) != 0)
  {
    return v2;
  }

  log_OutText(*(v38 + 32), "SYNTHSTREAM", 4, 0, "SYNTHSTREAM ObjClose : Begin", v3, v4, v5, v24);
  v6 = v39;
  v10 = ssftmap_IteratorOpen(*(v39 + 24), 0, 1, &v37);
  if ((v10 & 0x80000000) == 0)
  {
    v35 = 0;
    v36 = 0;
    v34 = 0;
    while ((ssftmap_IteratorNext(v37, &v36, &v35) & 0x80000000) == 0)
    {
      v15 = v35;
      if (!*(v35 + 108))
      {
        v31 = *(v36 + 4);
        v28 = *v36;
        v25 = *(v35 + 44);
        log_OutPublic(*(v38 + 32), "SYNTHSTREAM", 22001, "%s%u%s%s%s%u", v11, v12, v13, v14, "writer");
        v15 = v35;
      }

      v16 = *(v15 + 16);
      if (v16)
      {
        v32 = *(v36 + 4);
        v29 = *v36;
        v26 = *(v16 + 4);
        log_OutPublic(*(v38 + 32), "SYNTHSTREAM", 22001, "%s%u%s%s%s%u", v11, v12, v13, v14, "module");
        heap_Free(*(v38 + 8), *(v35 + 16));
        v15 = v35;
        *(v35 + 16) = 0;
      }

      if (vector_GetElemAt(*(v15 + 24), 0, &v34) == 1)
      {
        v21 = 1;
        do
        {
          v33 = *(v36 + 4);
          v30 = *v36;
          v27 = *(*v34 + 4);
          log_OutPublic(*(v38 + 32), "SYNTHSTREAM", 22001, "%s%u%s%s%s%u", v17, v18, v19, v20, "module");
          heap_Free(*(v38 + 8), *v34);
          ElemAt = vector_GetElemAt(*(v35 + 24), v21++, &v34);
        }

        while (ElemAt == 1);
      }

      if (*(v35 + 42) >= 2u)
      {
        *(v35 + 42) = 1;
      }
    }

    ssftmap_IteratorClose(v37);
  }

  if ((v10 & 0x80000000) == 0 || (v10 & 0x1FFF) == 0x14)
  {
    v10 = ssftmap_ObjClose(*(v6 + 24));
    if ((v10 & 0x80000000) == 0)
    {
      heap_Free(*(v38 + 8), v6);
    }
  }

  log_OutText(*(v38 + 32), "SYNTHSTREAM", 4, 0, "SYNTHSTREAM ObjClose : End (%x)", v7, v8, v9, v10);
  return v10;
}

uint64_t synthstream_SetPipelinePos(uint64_t a1, int a2, uint64_t a3)
{
  v13 = 0;
  v14 = 0;
  v7 = synthstream_loc_BeginFunction(a1, a2, &v13, &v14);
  if ((v7 & 0x80000000) == 0)
  {
    log_OutText(*(v13 + 32), "SYNTHSTREAM", 4, 0, "SYNTHSTREAM SetPipelinePos : Begin (%u)", v4, v5, v6, a3);
    v8 = v13;
    *(v14 + 16) = a3;
    log_OutText(*(v8 + 32), "SYNTHSTREAM", 4, 0, "SYNTHSTREAM SetPipelinePos : End (%x)", v9, v10, v11, v7);
  }

  return v7;
}

uint64_t synthstream_StreamOpen(uint64_t a1, int a2, uint64_t a3, const char *a4, __int128 *a5, int a6, uint64_t a7)
{
  v88 = *MEMORY[0x1E69E9840];
  v84 = 0;
  v85 = 0;
  v83 = 0;
  v12 = synthstream_loc_BeginFunction(a1, a2, &v83, &v85);
  if ((v12 & 0x80000000) != 0)
  {
    v21 = v12;
    goto LABEL_113;
  }

  v16 = v85;
  v76 = *(v85 + 16);
  log_OutText(*(v83 + 32), "SYNTHSTREAM", 4, 0, "SYNTHSTREAM StreamOpen : Begin (%u, %s, %p, %d, %u)", v13, v14, v15, a3);
  if (!a4 || !a7 || !*a4 || strlen(a4) >= 0x80)
  {
    log_OutPublic(*(v83 + 32), "SYNTHSTREAM", 22006, "%s%s%s%u%s%s%s%p", v17, v18, v19, v20, "function");
    v21 = 2297438215;
    goto LABEL_113;
  }

  *a7 = 0;
  *(a7 + 8) = 0;
  p_s1 = 0;
  v82 = 0;
  v80 = 0;
  if (*a4)
  {
    v22 = 0;
    v23 = 1;
    do
    {
      v87[v22 - 16] = __tolower(a4[v22]);
      v22 = v23;
    }

    while (strlen(a4) > v23++);
  }

  else
  {
    v22 = 0;
  }

  v87[v22 - 16] = 0;
  p_s1 = &__s1;
  LOWORD(v82) = 0;
  v21 = ssftmap_IteratorOpen(*(v16 + 24), &p_s1, 1, &v80);
  if ((v21 & 0x80000000) != 0)
  {
    v30 = 0;
    v31 = 0;
  }

  else
  {
    *&v77 = 0;
    v79 = 0;
    if ((ssftmap_IteratorNext(v80, &v77, &v79) & 0x80000000) == 0 && (v29 = v77, !strcmp(&__s1, *v77)))
    {
      v34 = 0;
      v31 = 0;
      do
      {
        v30 = v34;
        v35 = a6 == 0;
        v36 = *(v79 + 40);
        v37 = *(v16 + 16);
        if (v36 != v37)
        {
          v35 = 0;
        }

        if (v36 >= v37 && !v35)
        {
          break;
        }

        v34 = v29;
        v31 = v79;
        if ((ssftmap_IteratorNext(v80, &v77, &v79) & 0x80000000) != 0)
        {
          v30 = v29;
          break;
        }

        v29 = v77;
        v30 = v34;
      }

      while (!strcmp(&__s1, *v77));
    }

    else
    {
      v30 = 0;
      v31 = 0;
    }

    ssftmap_IteratorClose(v80);
  }

  if ((v21 & 0x1FFF) == 0x14)
  {
    v32 = 0;
  }

  else
  {
    v32 = v21;
  }

  if ((v32 & 0x80000000) == 0)
  {
    if ((a6 - 1) < 2)
    {
      if (v31 && *(v31 + 40) == *(v16 + 16))
      {
        log_OutText(*(v83 + 32), "SYNTHSTREAM", 3, 0, "SYNTHSTREAM ObjOpen for write failed for %s %u, already present", v26, v27, v28, &__s1);
        v21 = 2297438210;
        goto LABEL_109;
      }

      if (v30)
      {
        v33 = *(v30 + 8) + 1;
      }

      else
      {
        v33 = 0;
      }

      LOWORD(v82) = v33;
      v39 = heap_Calloc(*(v83 + 8), 1, 120);
      v41 = v83;
      if (!v39)
      {
        v21 = 2297438218;
LABEL_108:
        log_OutPublic(*(v41 + 32), "SYNTHSTREAM", 22000, 0, v40, v26, v27, v28, v74);
        goto LABEL_109;
      }

      v31 = v39;
      v42 = *(v83 + 8);
      v77 = xmmword_1C37F9FC0;
      v78 = 0;
      if (vector_ObjOpen(v42, &v77, 1, (v31 + 24)) == 1)
      {
        v47 = strlen(&__s1);
        v48 = heap_Alloc(*(v83 + 8), (v47 + 1));
        *(v31 + 32) = v48;
        if (v48)
        {
          if (!a5)
          {
            if (!strcmp(&__s1, "application/x-realspeak-markers-pp;version=4.0"))
            {
              a5 = &IElemMarkerT;
            }

            else if (!strcmp(&__s1, "application/x-realspeak-int-markers-pp;version=4.0"))
            {
              a5 = &IElemIntMarkerT;
            }

            else if (!strcmp(&__s1, "application/x-tnplus-words;version=1.0"))
            {
              a5 = &IElemGeeneWordT;
            }

            else
            {
              a5 = 0;
            }
          }

          *v31 = v16;
          *(v31 + 8) = v83;
          strcpy(v48, &__s1);
          *(v31 + 40) = *(v16 + 16);
          *(v31 + 42) = 1;
          *(v31 + 44) = a3;
          if (a5 && *a5)
          {
            v53 = *a5;
            *(v31 + 64) = *(a5 + 2);
            *(v31 + 48) = v53;
          }

          *(v31 + 72) = a6 == 2;
          v54 = p_s1;
          v55 = !strncmp(p_s1, "text/", 5uLL) && strstr(v54, "charset=wchar_t") == 0;
          *(v31 + 73) = v55;
          if (*(v16 + 44))
          {
            v56 = __s1 == 0x616C702F74786574 && *(&__s1 + 1) == 0x73726168633B6E69;
            v57 = v56 && *v87 == 0x312D6674753D7465;
            v58 = v57 && *&v87[8] == 54;
            if (v58 || !(__s1 ^ 0x616C702F74786574 | *(&__s1 + 1) ^ 0x73726168633B6E69 | *v87 ^ 0x382D6674753D7465 | v87[8]) || (__s1 == 0x746163696C707061 ? (v59 = *(&__s1 + 1) == 0x746E79732F6E6F69) : (v59 = 0), v59 ? (v60 = *v87 == 0x73732B7369736568) : (v60 = 0), v60 ? (v61 = *&v87[3] == 0x6C6D73732B7369) : (v61 = 0), v61 || (__s1 == 0x6D74682F74786574 ? (v62 = WORD4(__s1) == 108) : (v62 = 0), v62 || (__s1 == 0x616D652F74786574 ? (v63 = *(&__s1 + 3) == 0x6C69616D652F74) : (v63 = 0), v63 || !(__s1 ^ 0x6C6D782F74786574 | BYTE8(__s1))))))
            {
              *(v16 + 44) = 0;
              *(v31 + 72) = 1;
              *(v31 + 74) = 1;
            }
          }

          v21 = ssftmap_Insert(*(v16 + 24), &p_s1, v31);
          if ((v21 & 0x80000000) != 0)
          {
            log_OutPublic(*(v83 + 32), "SYNTHSTREAM", 22002, "%s%u%s%s%s%u", v64, v65, v66, v67, "module");
          }

          synthstream_loc_ElemReleaseStreamImpl(v31);
          if ((v21 & 0x80000000) != 0)
          {
            goto LABEL_109;
          }

LABEL_100:
          v68 = heap_Calloc(*(v83 + 8), 1, 24);
          v84 = v68;
          if (v68)
          {
            v69 = v68;
            if (a6 || (v70 = vector_Add(*(v31 + 24), &v84), v69 = v84, v70))
            {
              *v69 = a6;
              *(v69 + 4) = a3;
              *(v69 + 8) = v31;
              *(v69 + 16) = *(v31 + 80);
              ++*(v31 + 42);
              if ((a6 - 1) <= 1)
              {
                *(v31 + 16) = v69;
              }

              *a7 = v69;
              *(a7 + 8) = 18398;
              goto LABEL_109;
            }

            v21 = 2297438218;
            heap_Free(*(v83 + 8), v84);
            v84 = 0;
          }

          else
          {
            v21 = 2297438218;
          }

          v41 = v83;
          goto LABEL_108;
        }

        v21 = 2297438218;
        log_OutPublic(*(v83 + 32), "SYNTHSTREAM", 22000, 0, v49, v50, v51, v52, v74);
        vector_ObjClose(*(v31 + 24));
      }

      else
      {
        v21 = 2297438218;
        log_OutPublic(*(v83 + 32), "SYNTHSTREAM", 22000, 0, v43, v44, v45, v46, v74);
      }

      heap_Free(*(v83 + 8), v31);
      goto LABEL_109;
    }

    if (a6)
    {
      log_OutPublic(*(v83 + 32), "SYNTHSTREAM", 22007, "%s%d%s%u%s%s", v25, v26, v27, v28, "openMode");
      v21 = 2297438215;
      goto LABEL_109;
    }

    if (!v31)
    {
      v75 = *(v16 + 16);
      log_OutText(*(v83 + 32), "SYNTHSTREAM", 3, 0, "SYNTHSTREAM ObjOpen for read failed for %s %u, not found", v26, v27, v28, &__s1);
      v21 = 2297438228;
      goto LABEL_109;
    }

    v21 = v32;
    goto LABEL_100;
  }

LABEL_109:
  if (*a7 && v84)
  {
    v71 = *(*(v84 + 8) + 44);
  }

  log_OutText(*(v83 + 32), "SYNTHSTREAM", 4, 0, "SYNTHSTREAM StreamOpen : End (%x, %p, %p, %u)", v26, v27, v28, v21);
LABEL_113:
  v72 = *MEMORY[0x1E69E9840];
  return v21;
}

uint64_t synthstream_StreamClose(unsigned int *a1, int a2)
{
  v6 = safeh_HandleCheck(a1, a2, 18398, 24);
  if ((v6 & 0x80000000) == 0)
  {
    v7 = *(*(a1 + 1) + 8);
    v19 = *a1;
    log_OutText(*(v7 + 32), "SYNTHSTREAM", 4, 0, "SYNTHSTREAM StreamClose : Begin (%u, %p, %d)", v3, v4, v5, *(a1 + 2));
    if (*a1)
    {
      v8 = *(a1 + 1);
      *(v8 + 16) = 0;
      *(v8 + 108) = 1;
      synthstream_loc_StreamImplDump(v8, 0, 0);
    }

    else
    {
      v20 = 0;
      v13 = 0;
      if (vector_GetElemAt(*(*(a1 + 1) + 24), 0, &v20) == 1)
      {
        v13 = 0;
        do
        {
          if (*v20 == a1)
          {
            break;
          }

          ++v13;
        }

        while (vector_GetElemAt(*(*(a1 + 1) + 24), v13, &v20) == 1);
      }

      if (*v20 == a1)
      {
        vector_Remove(*(*(a1 + 1) + 24), v13);
      }

      else
      {
        log_OutPublic(*(v7 + 32), "SYNTHSTREAM", 22003, 0, v9, v10, v11, v12, v18);
      }
    }

    synthstream_loc_ElemReleaseStreamImpl(*(a1 + 1));
    heap_Free(*(v7 + 8), a1);
    log_OutText(*(v7 + 32), "SYNTHSTREAM", 4, 0, "SYNTHSTREAM StreamClose : End (%x)", v14, v15, v16, v6);
  }

  return v6;
}

uint64_t synthstream_Read(uint64_t a1, int a2, void *a3, unsigned int a4, _DWORD *a5)
{
  v12 = safeh_HandleCheck(a1, a2, 18398, 24);
  if ((v12 & 0x80000000) == 0)
  {
    v13 = *(*(a1 + 8) + 8);
    log_OutText(*(v13 + 32), "SYNTHSTREAM", 4, 0, "SYNTHSTREAM Read : Begin (%u, %p, %lu bytes)", v9, v10, v11, *(a1 + 4));
    if (a3 && a4 && a5)
    {
      if (*a1)
      {
        v12 = 2297438215;
        v36 = *(*(a1 + 8) + 32);
        v32 = *(a1 + 4);
        log_OutPublic(*(v13 + 32), "SYNTHSTREAM", 22009, "%s%s%s%u%s%s", v14, v15, v16, v17, "function");
      }

      else
      {
        v18 = *(a1 + 16);
        v19 = *(a1 + 8);
        v20 = *(v19 + 88);
        v21 = v18 - v20;
        if (v18 >= v20)
        {
          v23 = *(v19 + 76);
          if (v23 - v18 >= a4)
          {
            v24 = a4;
          }

          else
          {
            v24 = v23 - v18;
          }

          *a5 = v24;
          if (v23 != v18)
          {
            memcpy(a3, (*(v19 + 96) + v21), v24);
            v29 = *(a1 + 16) + *a5;
            *(a1 + 16) = v29;
            v30 = *(a1 + 8);
            if (v29 > *(v30 + 80))
            {
              *(v30 + 80) = v29;
            }

            if (*(v30 + 56))
            {
              v39 = *(v30 + 32);
              v35 = *(a1 + 4);
              log_OutPublic(*(v13 + 32), "SYNTHSTREAM", 22014, "%s%s%s%u%s%s", v25, v26, v27, v28, "function");
            }

            else
            {
              synthstream_loc_StreamImplRecoverExcessBuffer(v30, 0);
            }
          }

          goto LABEL_12;
        }

        v41 = *(v19 + 88);
        v40 = *(a1 + 16);
        v38 = *(v19 + 32);
        v34 = *(a1 + 4);
        log_OutPublic(*(v13 + 32), "SYNTHSTREAM", 22011, "%s%s%s%u%s%s%s%u%s%u", v14, v15, v16, v17, "function");
        v12 = 2297438212;
      }
    }

    else
    {
      v12 = 2297438215;
      v37 = *(*(a1 + 8) + 32);
      v33 = *(a1 + 4);
      log_OutPublic(*(v13 + 32), "SYNTHSTREAM", 22006, "%s%s%s%u%s%s%s%p%s%d%s%p", v14, v15, v16, v17, "function");
      if (!a5)
      {
        return v12;
      }
    }

    *a5 = 0;
LABEL_12:
    v31 = *a5;
    log_OutText(*(v13 + 32), "SYNTHSTREAM", 4, 0, "SYNTHSTREAM Read : End (%x, %lu bytes)", v15, v16, v17, v12);
  }

  return v12;
}

uint64_t synthstream_ReadDirectStart(uint64_t a1, int a2, void *a3, unsigned int *a4)
{
  v10 = safeh_HandleCheck(a1, a2, 18398, 24);
  if ((v10 & 0x80000000) == 0)
  {
    v11 = 2297438215;
    v12 = *(*(a1 + 8) + 8);
    log_OutText(*(v12 + 32), "SYNTHSTREAM", 4, 0, "SYNTHSTREAM ReadDirectStart : Begin (%u, %p)", v7, v8, v9, *(a1 + 4));
    if (a3 && a4)
    {
      if (*a1)
      {
        v28 = *(*(a1 + 8) + 32);
        v25 = *(a1 + 4);
        log_OutPublic(*(v12 + 32), "SYNTHSTREAM", 22009, "%s%s%s%u%s%s", v13, v14, v15, v16, "function");
      }

      else
      {
        v17 = *(a1 + 16);
        v18 = *(a1 + 8);
        v19 = *(v18 + 88);
        v20 = v17 - v19;
        if (v17 >= v19)
        {
          v21 = *(v18 + 76) - v17;
          *a4 = v21;
          v22 = *(v18 + 96);
          *a3 = v22 + v20;
          if (v21)
          {
            v23 = v22 == 0;
          }

          else
          {
            v23 = 0;
          }

          if (!v23)
          {
            goto LABEL_9;
          }

          v11 = 2297438218;
        }

        else
        {
          v32 = *(v18 + 88);
          v31 = *(a1 + 16);
          v30 = *(v18 + 32);
          v27 = *(a1 + 4);
          log_OutPublic(*(v12 + 32), "SYNTHSTREAM", 22011, "%s%s%s%u%s%s%s%u%s%u", v13, v14, v15, v16, "function");
          v11 = 2297438212;
        }
      }
    }

    else
    {
      v29 = *(*(a1 + 8) + 32);
      v26 = *(a1 + 4);
      log_OutPublic(*(v12 + 32), "SYNTHSTREAM", 22006, "%s%s%s%u%s%s%s%p%s%p", v13, v14, v15, v16, "function");
      if (!a3)
      {
        if (!a4)
        {
          return v11;
        }

        goto LABEL_8;
      }
    }

    *a3 = 0;
    if (!a4)
    {
      return v11;
    }

LABEL_8:
    *a4 = 0;
    v10 = v11;
LABEL_9:
    log_OutText(*(v12 + 32), "SYNTHSTREAM", 4, 0, "SYNTHSTREAM ReadDirectStart : End (%x, %lu bytes)", v14, v15, v16, v10);
  }

  return v10;
}

uint64_t synthstream_ReadDirectEnd(uint64_t a1, int a2, unsigned int a3)
{
  v8 = safeh_HandleCheck(a1, a2, 18398, 24);
  if ((v8 & 0x80000000) == 0)
  {
    v9 = *(*(a1 + 8) + 8);
    log_OutText(*(v9 + 32), "SYNTHSTREAM", 4, 0, "SYNTHSTREAM ReadDirectEnd : Begin (%u, %p, %lu bytes)", v5, v6, v7, *(a1 + 4));
    if (*a1)
    {
      v8 = 2297438215;
      v25 = *(*(a1 + 8) + 32);
      v23 = *(a1 + 4);
      log_OutPublic(*(v9 + 32), "SYNTHSTREAM", 22009, "%s%s%s%u%s%s", v10, v11, v12, v13, "function");
    }

    else
    {
      v17 = *(a1 + 8);
      v18 = *(a1 + 16);
      v19 = *(v17 + 76) - v18;
      if (v19 >= a3)
      {
        v20 = v18 + a3;
      }

      else
      {
        v8 = 2297438215;
        v26 = (*(v17 + 76) - v18);
        v24 = *(v17 + 32);
        v22 = *(a1 + 4);
        log_OutPublic(*(v9 + 32), "SYNTHSTREAM", 22004, "%s%u%s%s%s%u%s%u", v10, v11, v12, v13, "module");
        v20 = *(a1 + 16) + v19;
        v17 = *(a1 + 8);
      }

      *(a1 + 16) = v20;
      if (v20 > *(v17 + 80))
      {
        *(v17 + 80) = v20;
      }

      synthstream_loc_StreamImplRecoverExcessBuffer(v17, 0);
    }

    log_OutText(*(v9 + 32), "SYNTHSTREAM", 4, 0, "SYNTHSTREAM ReadDirectEnd : End (%x)", v14, v15, v16, v8);
  }

  return v8;
}

uint64_t synthstream_Write(uint64_t a1, int a2, char *a3, unsigned int a4)
{
  v39 = 1;
  v7 = safeh_HandleCheck(a1, a2, 18398, 24);
  if ((v7 & 0x80000000) == 0)
  {
    v11 = *(*(a1 + 8) + 8);
    log_OutText(*(v11 + 32), "SYNTHSTREAM", 4, 0, "SYNTHSTREAM Write : Begin (%u, %p, %lu bytes)", v8, v9, v10, *(a1 + 4));
    if (!a3 || !a4)
    {
      v20 = 2297438215;
      v33 = *(*(a1 + 8) + 32);
      v31 = *(a1 + 4);
      log_OutText(*(v11 + 32), "SYNTHSTREAM", 4, 0, "%s%u%s%s%s%p%s%u", v13, v14, v15, "function=Write|module=");
      goto LABEL_22;
    }

    if ((*a1 - 1) >= 2)
    {
      v20 = 2297438215;
      v36 = *(*(a1 + 8) + 32);
      v34 = *(a1 + 4);
      log_OutPublic(*(v11 + 32), "SYNTHSTREAM", 22008, "%s%s%s%u%s%s", v12, v13, v14, v15, "function");
      goto LABEL_22;
    }

    v16 = *(a1 + 8);
    if (*(v16 + 76) < *(v16 + 88))
    {
      v38 = *(v16 + 88);
      v37 = *(v16 + 76);
      v35 = *(v16 + 32);
      v32 = *(a1 + 4);
      log_OutPublic(*(v11 + 32), "SYNTHSTREAM", 22012, "%s%s%s%u%s%s%s%u%s%u", v12, v13, v14, v15, "function");
      v20 = 2297438213;
LABEL_22:
      log_OutText(*(v11 + 32), "SYNTHSTREAM", 4, 0, "SYNTHSTREAM Write : End (%x)", v17, v18, v19, v20);
      return v20;
    }

    v21 = synthstream_loc_StreamImplGrowBuf(v16, a4, &v39);
    if ((v21 & 0x80000000) != 0)
    {
      v20 = v21;
      goto LABEL_22;
    }

    v22 = *(a1 + 8);
    if (v39 == 1)
    {
      v23 = *(v22 + 76);
      v24 = *(v22 + 88);
      v25 = v23 - v24;
      if (v23 >= v24)
      {
        memcpy((*(v22 + 96) + v25), a3, a4);
        v22 = *(a1 + 8);
        if (*(v22 + 56))
        {
          v26 = 0;
          while (1)
          {
            v27 = (*(v22 + 56))(&a3[v26], *(*(v22 + 8) + 8), *(v22 + 96) + v26 + v25);
            v22 = *(a1 + 8);
            if (!v27)
            {
              break;
            }

            v26 += *(v22 + 48);
            if (v26 >= a4)
            {
              goto LABEL_21;
            }
          }

          if (*(v22 + 64))
          {
            v29 = v26 == 0;
          }

          else
          {
            v29 = 1;
          }

          if (!v29)
          {
            v30 = 0;
            do
            {
              (*(v22 + 64))(*(v22 + 96) + v30 + v25, *(*(v22 + 8) + 8));
              v22 = *(a1 + 8);
              v30 += *(v22 + 48);
            }

            while (v30 < v26);
          }

          v20 = 2297438218;
          goto LABEL_22;
        }

        goto LABEL_21;
      }
    }

    else
    {
      v24 = *(v22 + 88);
    }

    *(v22 + 88) = v24 + a4;
LABEL_21:
    *(v22 + 76) += a4;
    synthstream_loc_StreamImplDump(v22, a3, a4);
    v20 = 0;
    goto LABEL_22;
  }

  return v7;
}

uint64_t synthstream_WriteDirectStart(uint64_t a1, int a2, void *a3, unsigned int a4)
{
  v7 = safeh_HandleCheck(a1, a2, 18398, 24);
  if ((v7 & 0x80000000) == 0)
  {
    v11 = *(*(a1 + 8) + 8);
    log_OutText(*(v11 + 32), "SYNTHSTREAM", 4, 0, "SYNTHSTREAM WriteDirectStart : Begin (%u, %p, %lu bytes)", v8, v9, v10, *(a1 + 4));
    if (a3 && a4)
    {
      if ((*a1 - 1) >= 2)
      {
        v20 = 2297438215;
        v29 = *(*(a1 + 8) + 32);
        v26 = *(a1 + 4);
        log_OutPublic(*(v11 + 32), "SYNTHSTREAM", 22008, "%s%s%s%u%s%s", v12, v13, v14, v15, "function");
      }

      else
      {
        v16 = *(a1 + 8);
        if (*(v16 + 76) >= *(v16 + 88))
        {
          v22 = synthstream_loc_StreamImplGrowBuf(v16, a4, 0);
          if ((v22 & 0x80000000) == 0)
          {
            v23 = (*(*(a1 + 8) + 96) + (*(*(a1 + 8) + 76) - *(*(a1 + 8) + 88)));
            *a3 = v23;
            bzero(v23, a4);
            v20 = 0;
            goto LABEL_12;
          }

          v20 = v22;
        }

        else
        {
          v31 = *(v16 + 88);
          v30 = *(v16 + 76);
          v27 = *(v16 + 32);
          v24 = *(a1 + 4);
          log_OutPublic(*(v11 + 32), "SYNTHSTREAM", 22012, "%s%s%s%u%s%s%s%u%s%u", v12, v13, v14, v15, "function");
          v20 = 2297438213;
        }
      }
    }

    else
    {
      v20 = 2297438215;
      v28 = *(*(a1 + 8) + 32);
      v25 = *(a1 + 4);
      log_OutPublic(*(v11 + 32), "SYNTHSTREAM", 22006, "%s%s%s%u%s%s%s%p%s%u", v12, v13, v14, v15, "function");
      if (!a3)
      {
        goto LABEL_12;
      }
    }

    *a3 = 0;
LABEL_12:
    log_OutText(*(v11 + 32), "SYNTHSTREAM", 4, 0, "SYNTHSTREAM WriteDirectStart : End (%x)", v17, v18, v19, v20);
    return v20;
  }

  return v7;
}

uint64_t synthstream_WriteDirectEnd(uint64_t a1, int a2, unsigned int a3)
{
  v8 = safeh_HandleCheck(a1, a2, 18398, 24);
  if ((v8 & 0x80000000) == 0)
  {
    v9 = *(*(a1 + 8) + 8);
    log_OutText(*(v9 + 32), "SYNTHSTREAM", 4, 0, "SYNTHSTREAM WriteDirectEnd : Begin (%u, %p, %lu bytes)", v5, v6, v7, *(a1 + 4));
    if ((*a1 - 1) >= 2)
    {
      v8 = 2297438215;
      v37 = *(*(a1 + 8) + 32);
      v34 = *(a1 + 4);
      log_OutPublic(*(v9 + 32), "SYNTHSTREAM", 22008, "%s%s%s%u%s%s", v10, v11, v12, v13, "function");
      goto LABEL_6;
    }

    v14 = *(a1 + 8);
    v15 = *(v14 + 76);
    v16 = *(v14 + 88);
    v17 = v15 - v16;
    if (v15 < v16)
    {
      v39 = *(v14 + 88);
      v38 = *(v14 + 76);
      v36 = *(v14 + 32);
      v33 = *(a1 + 4);
      log_OutPublic(*(v9 + 32), "SYNTHSTREAM", 22012, "%s%s%s%u%s%s%s%u%s%u", v10, v11, v12, v13, "function");
      v8 = 2297438213;
LABEL_6:
      log_OutText(*(v9 + 32), "SYNTHSTREAM", 4, 0, "SYNTHSTREAM WriteDirectEnd : End (%x)", v18, v19, v20, v8);
      return v8;
    }

    v22 = v17 + a3;
    if (v17 + a3 > *(v14 + 104))
    {
      v8 = 2297438215;
      v35 = *(v14 + 32);
      v32 = *(a1 + 4);
      log_OutPublic(*(v9 + 32), "SYNTHSTREAM", 22005, "%s%u%s%s%s%u%s%u", v10, v11, v12, v13, "module");
      goto LABEL_6;
    }

    if (*(v14 + 56))
    {
      if (a3)
      {
        v23 = 0;
        while (1)
        {
          v24 = *(v14 + 96) + v23 + v17;
          v25 = (*(v14 + 56))(v24, *(*(v14 + 8) + 8), v24);
          v14 = *(a1 + 8);
          if (!v25)
          {
            break;
          }

          v23 += *(v14 + 48);
          if (v23 >= a3)
          {
            goto LABEL_15;
          }
        }

        if (*(v14 + 64))
        {
          v30 = v23 == 0;
        }

        else
        {
          v30 = 1;
        }

        if (!v30)
        {
          v31 = 0;
          do
          {
            (*(v14 + 64))(*(v14 + 96) + v31 + v17, *(*(v14 + 8) + 8));
            v14 = *(a1 + 8);
            v31 += *(v14 + 48);
          }

          while (v31 < v23);
        }

        v8 = 2297438218;
        goto LABEL_6;
      }

LABEL_15:
      v15 = *(v14 + 76);
    }

    *(v14 + 76) = v15 + a3;
    synthstream_loc_StreamImplDump(v14, *(v14 + 96) + v17, a3);
    v26 = *(a1 + 8);
    if (*(v26 + 104) - v22 >= *(*v26 + 40))
    {
      *(v26 + 104) = v22;
      v27 = *(*(v26 + 8) + 8);
      v28 = *(v26 + 96);
      if (v22)
      {
        v29 = heap_Realloc(*(*(v26 + 8) + 8), v28, v22 + 1);
        v26 = *(a1 + 8);
        if (!v29)
        {
          goto LABEL_29;
        }
      }

      else
      {
        heap_Free(*(*(v26 + 8) + 8), v28);
        v29 = 0;
        v26 = *(a1 + 8);
      }

      *(v26 + 96) = v29;
    }

LABEL_29:
    synthstream_loc_StreamImplRecoverExcessBuffer(v26, 0);
    goto LABEL_6;
  }

  return v8;
}

uint64_t synthstream_WriteCopy(uint64_t a1, int a2, uint64_t a3, int a4, unsigned int a5, unsigned int *a6)
{
  v12 = safeh_HandleCheck(a1, a2, 18398, 24);
  if ((v12 & 0x80000000) == 0)
  {
    v16 = 2297438215;
    v17 = *(*(a1 + 8) + 8);
    log_OutText(*(v17 + 32), "SYNTHSTREAM", 4, 0, "SYNTHSTREAM WriteCopy : Begin (%u, %p, %p, %lu bytes)", v13, v14, v15, *(a1 + 4));
    if (a5 && a6)
    {
      if ((*a1 - 1) < 2)
      {
        v33 = 0;
        v32 = 0;
        *a6 = 0;
        v16 = synthstream_ReadDirectStart(a3, a4, &v33, &v32);
        if ((v16 & 0x80000000) == 0 && v32)
        {
          if (v32 < a5)
          {
            a5 = v32;
          }

          v25 = synthstream_Write(a1, a2, v33, a5);
          if ((v25 & 0x80000000) != 0)
          {
            v16 = v25;
            a5 = 0;
          }

          else
          {
            v16 = 0;
            *a6 = a5;
          }

          synthstream_ReadDirectEnd(a3, a4, a5);
        }

        v26 = *a6;
        goto LABEL_19;
      }

      v31 = *(*(a1 + 8) + 32);
      v29 = *(a1 + 4);
      log_OutPublic(*(v17 + 32), "SYNTHSTREAM", 22008, "%s%s%s%u%s%s", v18, v19, v20, v21, "function");
    }

    else
    {
      v30 = *(*(a1 + 8) + 32);
      v28 = *(a1 + 4);
      log_OutPublic(*(v17 + 32), "SYNTHSTREAM", 22006, "%s%s%s%u%s%s%s%u%s%p", v18, v19, v20, v21, "function");
      if (!a6)
      {
        return v16;
      }
    }

    *a6 = 0;
LABEL_19:
    log_OutText(*(v17 + 32), "SYNTHSTREAM", 4, 0, "SYNTHSTREAM WriteCopy : End (%x, %lu bytes)", v22, v23, v24, v16);
    return v16;
  }

  return v12;
}

uint64_t synthstream_GetPosition(uint64_t a1, int a2, _DWORD *a3)
{
  v8 = safeh_HandleCheck(a1, a2, 18398, 24);
  if ((v8 & 0x80000000) == 0)
  {
    v9 = *(*(a1 + 8) + 8);
    log_OutText(*(v9 + 32), "SYNTHSTREAM", 4, 0, "SYNTHSTREAM GetPosition : Begin (%u, %p)", v5, v6, v7, *(a1 + 4));
    if (a3)
    {
      if (*a1)
      {
        v14 = (*(a1 + 8) + 76);
      }

      else
      {
        v14 = (a1 + 16);
      }

      *a3 = *v14;
      log_OutText(*(v9 + 32), "SYNTHSTREAM", 4, 0, "SYNTHSTREAM GetPosition : End (%x, %lu)", v11, v12, v13, v8);
    }

    else
    {
      v17 = *(*(a1 + 8) + 32);
      v16 = *(a1 + 4);
      log_OutPublic(*(v9 + 32), "SYNTHSTREAM", 22006, "%s%s%s%u%s%s%s%p", v10, v11, v12, v13, "function");
      return 2297438215;
    }
  }

  return v8;
}

uint64_t synthstream_GetRemaining(uint64_t a1, int a2, _DWORD *a3, _DWORD *a4)
{
  v10 = safeh_HandleCheck(a1, a2, 18398, 24);
  if ((v10 & 0x80000000) == 0)
  {
    v11 = *(*(a1 + 8) + 8);
    log_OutText(*(v11 + 32), "SYNTHSTREAM", 4, 0, "SYNTHSTREAM GetRemaining : Begin (%u, %p)", v7, v8, v9, *(a1 + 4));
    if (a3)
    {
      if (!*a1)
      {
        v16 = *(a1 + 8);
        *a3 = *(v16 + 76) - *(a1 + 16);
        if (a4)
        {
          *a4 = *(v16 + 108);
        }

LABEL_12:
        v18 = *a3;
        log_OutText(*(v11 + 32), "SYNTHSTREAM", 4, 0, "SYNTHSTREAM GetRemaining : End (%x, %lu)", v13, v14, v15, v10);
        return v10;
      }

      v21 = *(*(a1 + 8) + 32);
      v19 = *(a1 + 4);
      log_OutPublic(*(v11 + 32), "SYNTHSTREAM", 22009, "%s%s%s%u%s%s", v12, v13, v14, v15, "function");
      *a3 = 0;
      if (a4)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v22 = *(*(a1 + 8) + 32);
      v20 = *(a1 + 4);
      log_OutPublic(*(v11 + 32), "SYNTHSTREAM", 22006, "%s%s%s%u%s%s%s%p", v12, v13, v14, v15, "function");
      if (a4)
      {
LABEL_5:
        *a4 = 1;
      }
    }

    v10 = 2297438215;
    if (!a3)
    {
      return v10;
    }

    goto LABEL_12;
  }

  return v10;
}

uint64_t synthstream_Reset(uint64_t a1, int a2, uint64_t a3)
{
  v32 = 0;
  v33 = 0;
  v30 = 0;
  v31 = 0;
  v29 = 0;
  v4 = synthstream_loc_BeginFunction(a1, a2, &v32, &v33);
  if ((v4 & 0x80000000) != 0)
  {
    return v4;
  }

  log_OutText(*(v32 + 32), "SYNTHSTREAM", 4, 0, "SYNTHSTREAM Reset : Begin (%u)", v5, v6, v7, a3);
  Str = paramc_ParamGetStr(*(v32 + 40), "clcpppipelinemode", &v30);
  v9 = ssftmap_IteratorOpen(*(v33 + 24), 0, 1, &v31);
  LODWORD(v13) = v9;
  if (Str < 0)
  {
    if ((v9 & 0x80000000) == 0)
    {
      v27 = 0;
      v28 = 0;
      while ((ssftmap_IteratorNext(v31, &v28, &v27) & 0x80000000) == 0)
      {
        if (*(v27 + 42) == 1)
        {
          v20 = *(v27 + 40);
          if (v20 >= a3)
          {
            v21 = "Clear";
          }

          else
          {
            v21 = "Keep";
          }

          v23 = *v28;
          v25 = *(v28 + 4);
          log_OutText(*(v32 + 32), "SYNTHSTREAM", 3, 0, "%s stream %s %u", v17, v18, v19, v21);
          if (v20 >= a3)
          {
            ssftmap_IteratorRemove(v31);
          }
        }

        else
        {
          v24 = *v28;
          v26 = *(v28 + 4);
          log_OutText(*(v32 + 32), "SYNTHSTREAM", 3, 0, "%s stream %s %u", v17, v18, v19, "Keep");
        }
      }

      goto LABEL_21;
    }
  }

  else if ((v9 & 0x80000000) == 0)
  {
    v27 = 0;
    v28 = 0;
    while ((ssftmap_IteratorNext(v31, &v28, &v27) & 0x80000000) == 0)
    {
      v14 = v27;
      *(v27 + 84) = 0;
      *(v14 + 76) = 0;
      if (vector_GetElemAt(*(v14 + 24), 0, &v29) == 1)
      {
        v15 = 1;
        do
        {
          *(*v29 + 16) = 0;
          ElemAt = vector_GetElemAt(*(v27 + 24), v15++, &v29);
        }

        while (ElemAt == 1);
      }
    }

LABEL_21:
    ssftmap_IteratorClose(v31);
  }

  if ((v13 & 0x1FFF) == 0x14)
  {
    v13 = 0;
  }

  else
  {
    v13 = v13;
  }

  log_OutText(*(v32 + 32), "SYNTHSTREAM", 4, 0, "SYNTHSTREAM Reset : End (%x)", v10, v11, v12, v13);
  return v13;
}

uint64_t synthstream_SetRulRes(uint64_t a1, int a2, unsigned __int8 *a3, unsigned int a4)
{
  v7 = safeh_HandleCheck(a1, a2, 18398, 24);
  if ((v7 & 0x80000000) == 0)
  {
    v8 = *(a1 + 8);
    v9 = *(v8 + 8);
    if (a4)
    {
      v10 = 0;
      v11 = a4;
      v12 = a3;
      do
      {
        v13 = *v12++;
        if ((v13 - 1) < 0x1F)
        {
          ++v10;
        }

        --v11;
      }

      while (v11);
      v14 = 4 * v10;
    }

    else
    {
      v14 = 0;
    }

    v15 = *(v8 + 112);
    if (v15)
    {
      heap_Free(*(v9 + 8), v15);
      v16 = *(a1 + 8);
      *(v16 + 112) = 0;
      v9 = *(v16 + 8);
    }

    v17 = heap_Alloc(*(v9 + 8), a4 + v14 + 1);
    *(*(a1 + 8) + 112) = v17;
    if (v17)
    {
      v18 = v7;
    }

    else
    {
      v18 = 2297438218;
    }

    if (v17)
    {
      v19 = a4 == 0;
    }

    else
    {
      v19 = 1;
    }

    if (!v19)
    {
      v20 = a4;
      while (1)
      {
        v22 = *a3++;
        v21 = v22;
        if ((v22 - 1) > 0x1E)
        {
          *v17 = v21;
          v23 = 1;
        }

        else
        {
          if (v21 > 10)
          {
            if (v21 > 12)
            {
              if (v21 != 13)
              {
                if (v21 == 27)
                {
                  strcpy(v17, "<ESC>");
                }

                else
                {
LABEL_40:
                  strcpy(v17, "<SPC>");
                }

                v23 = 5;
                goto LABEL_42;
              }

              strcpy(v17, "\\r");
            }

            else if (v21 == 11)
            {
              strcpy(v17, "\\v");
            }

            else
            {
              strcpy(v17, "\\f");
            }
          }

          else if (v21 > 8)
          {
            if (v21 == 9)
            {
              strcpy(v17, "\\t");
            }

            else
            {
              strcpy(v17, "\\n");
            }
          }

          else if (v21 == 7)
          {
            strcpy(v17, "\\a");
          }

          else
          {
            if (v21 != 8)
            {
              goto LABEL_40;
            }

            strcpy(v17, "\\b");
          }

          v23 = 2;
        }

LABEL_42:
        v17 += v23;
        if (!--v20)
        {
          return v7;
        }
      }
    }

    return v18;
  }

  return v7;
}

uint64_t synthstream_loc_ElemCopyMapKey(uint64_t a1, void *a2, uint64_t *a3)
{
  v3 = 2297438215;
  if (a1 && a2 && a3)
  {
    v7 = heap_Calloc(a2, 1, 16);
    if (v7)
    {
      v8 = v7;
      *(v7 + 8) = *(a1 + 8);
      v3 = ssftmap_ElemCopyString(*a1, a2, v7);
      if ((v3 & 0x80000000) != 0)
      {
        heap_Free(a2, v8);
      }

      else
      {
        *a3 = v8;
      }
    }

    else
    {
      return 2297438218;
    }
  }

  return v3;
}

uint64_t *synthstream_loc_ElemFreeMapKey(uint64_t *result, void *a2)
{
  if (result)
  {
    v3 = result;
    if (*result)
    {
      heap_Free(a2, *result);
    }

    return heap_Free(a2, v3);
  }

  return result;
}

uint64_t synthstream_loc_ElemCompareKeysMapKey(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = *a1;
    if (*a1)
    {
      if (!a2)
      {
        return 1;
      }

      v5 = *a2;
      if (!*a2)
      {
        return 1;
      }

LABEL_13:
      result = strcmp(v4, v5);
      if (!result)
      {
        v7 = *(a1 + 8);
        v8 = *(a2 + 8);
        v9 = v7 >= v8;
        v10 = v7 > v8;
        if (v9)
        {
          return v10;
        }

        else
        {
          return 0xFFFFFFFFLL;
        }
      }

      return result;
    }
  }

  if (!a2)
  {
    return 0;
  }

  v5 = *a2;
  if (*a2)
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = 0;
  }

  if (a1 && v5)
  {
    v4 = *a1;
    if (!*a1)
    {
      return 0xFFFFFFFFLL;
    }

    goto LABEL_13;
  }

  return result;
}

uint64_t synthstream_loc_ElemCopyStreamImpl(uint64_t a1, uint64_t a2, void *a3)
{
  result = 2297438215;
  if (a1 && a2)
  {
    if (a3)
    {
      result = 0;
      ++*(a1 + 42);
      *a3 = a1;
    }
  }

  return result;
}

void *synthstream_loc_ElemReleaseStreamImpl(void *result)
{
  v34 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v2 = *(result + 21);
    if (v2 < 2)
    {
      v3 = result[1];
      if (*(result + 74))
      {
        v29 = 0;
        v30 = 0;
        v4 = result[4];
        v31 = 0;
        __strcpy_chk();
        if (!strcmp(v4, "application/synthesis+ssml") || !strcmp(v4, "text/html") || !strcmp(v4, "text/email") || !strcmp(v4, "text/xml"))
        {
          if ((paramc_ParamGetStr(*(*(v1 + 8) + 40), "ssmldocumentencoding", &v30) & 0x80000000) == 0 && v30 && *v30)
          {
            __strcat_chk();
            __strcat_chk();
          }
        }

        else if ((paramc_ParamGetStr(*(*(v1 + 8) + 40), "inputmimetype", &v30) & 0x80000000) != 0 || !v30 || !*v30)
        {
          v30 = strstr(v4, ";charset=");
          if (v30)
          {
            __strcpy_chk();
            v32[v30 - v4] = 0;
          }
        }

        if ((ssftstring_ObjOpen(*(*(v1 + 8) + 8), &v29) & 0x80000000) == 0)
        {
          log_OutBinary(*(*(v1 + 8) + 32), "SYNTHSTREAM", 0, 0, "input text", v33, *(v1 + 96), *(v1 + 76), v29);
          v30 = ssftstring_CStr(v29);
          v10 = *(*(v1 + 8) + 32);
          v11 = *(v1 + 76);
          if (v30)
          {
            v28 = *(v1 + 76);
            log_OutEvent(v10, 17, "%s%s%s%s%s%u", v5, v6, v7, v8, v9, "MIME");
            __strcpy_chk();
          }

          else
          {
            log_OutEvent(v10, 17, "%s%s%s%u", v5, v6, v7, v8, v9, "MIME");
          }

          ssftstring_ObjClose(v29);
          if (v31)
          {
            if (*(v1 + 112))
            {
              v27 = *(v1 + 112);
              log_OutEvent(*(*(v1 + 8) + 32), 20, "%s%s%s%s", v12, v13, v14, v15, v16, "TXID");
            }
          }
        }
      }

      v17 = *(v1 + 32);
      if (v17)
      {
        heap_Free(*(v3 + 8), v17);
      }

      v18 = *(v1 + 112);
      if (v18)
      {
        heap_Free(*(v3 + 8), v18);
        *(v1 + 112) = 0;
      }

      v19 = *(v1 + 24);
      if (v19)
      {
        vector_ObjClose(v19);
      }

      v20 = *(v1 + 96);
      if (v20)
      {
        if (*(v1 + 64))
        {
          v21 = *(v1 + 88);
          v22 = *(v1 + 84) - v21;
          if (v22 < *(v1 + 76) - v21)
          {
            v23 = v20 + v22;
            do
            {
              (*(v1 + 64))(v23, *(*(v1 + 8) + 8));
              v24 = *(v1 + 48);
              v25 = *(v1 + 88);
              *(v1 + 84) += v24;
              v23 += v24;
              v20 = *(v1 + 96);
            }

            while (v23 < v20 + (*(v1 + 76) - v25));
          }
        }

        heap_Free(*(v3 + 8), v20);
      }

      result = heap_Free(*(v3 + 8), v1);
    }

    else
    {
      *(result + 21) = v2 - 1;
    }
  }

  v26 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t synthstream_loc_BeginFunction(uint64_t a1, int a2, void *a3, uint64_t *a4)
{
  *a4 = 0;
  result = safeh_HandleCheck(a1, a2, 18397, 48);
  if ((result & 0x80000000) == 0)
  {
    result = InitRsrcFunction(*a1, *(a1 + 8), a3);
    if ((result & 0x80000000) == 0)
    {
      *a4 = a1;
    }
  }

  return result;
}

uint64_t synthstream_loc_StreamImplDump(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v35 = *MEMORY[0x1E69E9840];
  result = log_GetLogLevel(*(*(a1 + 8) + 32));
  if (result >= 6)
  {
    if (a2 && a3)
    {
      v10 = *(*(a1 + 8) + 32);
      v11 = *(a1 + 44);
      v12 = *(a1 + 32);
      v13 = *(a1 + 40);
      v14 = *(a1 + 42);
      v15 = *(a1 + 76);
      v16 = *(a1 + 88);
      if (*(a1 + 73))
      {
        v31 = *(a1 + 108);
        v25 = *(a1 + 76);
        v28 = *(a1 + 88);
        v23 = *(a1 + 40);
        v24 = *(a1 + 42);
        v22 = *(a1 + 32);
        log_OutText(v10, "SYNTHSTREAM", 6, 0, "writerID=%u, szContentType=%s, pipelinePos=%u, refCount=%u, writePos=%u, bufPos=%u, eos=%d, writing %u bytes [%.*s]", v7, v8, v9, v11);
        LH_utoa(*(a1 + 44), v34, 0xAu);
        result = log_OutBinary(*(*(a1 + 8) + 32), "SYNTHSTREAM", 99, 0, v34, *(a1 + 32), a2, a3, 0);
        goto LABEL_9;
      }

      v33 = *(a1 + 108);
      v27 = *(a1 + 76);
      v30 = *(a1 + 88);
      v20 = "writerID=%u, szContentType=%s, pipelinePos=%u, refCount=%u, writePos=%u, bufPos=%u, eos=%d, writing %u bytes";
    }

    else
    {
      v10 = *(*(a1 + 8) + 32);
      v11 = *(a1 + 44);
      v17 = *(a1 + 32);
      v18 = *(a1 + 40);
      v19 = *(a1 + 42);
      v29 = *(a1 + 88);
      v32 = *(a1 + 108);
      v26 = *(a1 + 76);
      v20 = "writerID=%u, szContentType=%s, pipelinePos=%u, refCount=%u, writePos=%u, bufPos=%u, eos=%d";
    }

    result = log_OutText(v10, "SYNTHSTREAM", 6, 0, v20, v7, v8, v9, v11);
  }

LABEL_9:
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t synthstream_loc_StreamImplRecoverExcessBuffer(uint64_t result, unsigned int a2)
{
  v2 = *(result + 76);
  v17 = 0;
  if (!*(result + 96))
  {
    return result;
  }

  v3 = result;
  if (*(result + 72))
  {
    return result;
  }

  result = vector_GetElemAt(*(result + 24), 0, &v17);
  if (result == 1)
  {
    v5 = 1;
    do
    {
      if (*(*v17 + 16) < v2)
      {
        v2 = *(*v17 + 16);
      }

      result = vector_GetElemAt(*(v3 + 24), v5++, &v17);
    }

    while (result == 1);
  }

  v6 = *(v3 + 88);
  v7 = v2 - v6;
  v8 = *(v3 + 48);
  if (v8 >= 2)
  {
    v7 = v7 / v8 * v8;
  }

  if (*(v3 + 64))
  {
    if (v7)
    {
      v9 = *(v3 + 84) - v6;
      if (v9 < v7)
      {
        v10 = *(v3 + 96) + v9;
        do
        {
          result = (*(v3 + 64))(v10, *(*(v3 + 8) + 8));
          v11 = *(v3 + 48);
          *(v3 + 84) += v11;
          v10 += v11;
        }

        while (v10 < *(v3 + 96) + v7);
      }
    }
  }

  if (a2)
  {
    if (v7 >= a2)
    {
      goto LABEL_21;
    }

    v12 = *(*v3 + 36);
  }

  else
  {
    v12 = *(*v3 + 40);
  }

  if (v7 < v12)
  {
    return result;
  }

LABEL_21:
  v13 = *(v3 + 76);
  if (v13 != v2)
  {
    result = memmove(*(v3 + 96), (*(v3 + 96) + v7), v13 - v2);
  }

  *(v3 + 88) += v7;
  if (!a2)
  {
    v14 = *(v3 + 104);
    if (v14 == v7)
    {
      v15 = *(v3 + 96);
    }

    else
    {
      v15 = *(v3 + 96);
      if (v2 != *(v3 + 76))
      {
        result = heap_Realloc(*(*(v3 + 8) + 8), v15, v14 - v7);
        if (!result)
        {
          return result;
        }

        *(v3 + 96) = result;
        v16 = *(v3 + 104) - v7;
LABEL_28:
        *(v3 + 104) = v16;
        return result;
      }
    }

    result = heap_Free(*(*(v3 + 8) + 8), v15);
    v16 = 0;
    *(v3 + 96) = 0;
    goto LABEL_28;
  }

  return result;
}

uint64_t synthstream_loc_StreamImplGrowBuf(uint64_t a1, int a2, _DWORD *a3)
{
  if (!a3)
  {
    v6 = *(a1 + 76) - *(a1 + 88) + a2;
    v7 = *(a1 + 104);
    if (v6 > v7)
    {
      goto LABEL_7;
    }

    return 0;
  }

  *a3 = 1;
  v6 = *(a1 + 76) - *(a1 + 88) + a2;
  v7 = *(a1 + 104);
  if (v6 <= v7)
  {
    return 0;
  }

  if (!*(a1 + 72))
  {
    result = vector_GetSize(*(a1 + 24));
    if (!result)
    {
      *a3 = 0;
      return result;
    }

    v7 = *(a1 + 104);
  }

LABEL_7:
  synthstream_loc_StreamImplRecoverExcessBuffer(a1, v6 - v7);
  v9 = *(a1 + 76) - *(a1 + 88) + a2;
  if (v9 <= *(a1 + 104))
  {
    return 0;
  }

  if (v9 <= *(*a1 + 32))
  {
    v10 = *(*a1 + 32);
  }

  else
  {
    v10 = *(a1 + 76) - *(a1 + 88) + a2;
  }

  v11 = *(a1 + 96);
  v12 = *(*(a1 + 8) + 8);
  v13 = (v10 + 1);
  if (v11)
  {
    v14 = heap_Realloc(v12, v11, v13);
  }

  else
  {
    v14 = heap_Calloc(v12, 1, v13);
  }

  v19 = v14;
  if (v14)
  {
    result = 0;
    *(a1 + 96) = v19;
    *(a1 + 104) = v10;
  }

  else
  {
    log_OutPublic(*(*(a1 + 8) + 32), "SYNTHSTREAM", 22000, 0, v15, v16, v17, v18, v20);
    return 2297438218;
  }

  return result;
}

uint64_t DecoAddr(void *a1, int a2)
{
  v3 = a1[2];
  v4 = *v3;
  v5 = *(*v3 + 19);
  v6 = v5 * a2;
  v7 = (v5 * a2) >> 3;
  v8 = a1[6];
  if (v8)
  {
    a1[1] = v8 + v3[34] + v7;
  }

  else
  {
    v15 = *(v4 + 54);
    v16 = *(v4 + 68);
    if (v7 + v15 <= v16)
    {
      v17 = v15;
    }

    else
    {
      v17 = v16 - v7;
    }

    v18 = brk_DataMap(a1[3], a1[4], v3[34] + v7, v17, (a1 + 1));
    if ((v18 & 0x1FFF) == 0xA)
    {
      return 4294967294;
    }

    if (v18)
    {
      return 0xFFFFFFFFLL;
    }
  }

  v9 = (v6 & 7) + v5;
  v10 = a1[1];
  v11 = *v10;
  if (v9 < 9)
  {
    v19 = (v11 >> (8 - v9)) & (0xFFFFFFFF >> -v5);
  }

  else
  {
    v12 = ((0xFFu >> (v6 & 7)) & v11) << (v9 - 8);
    if (v9 < 0x11)
    {
      v14 = 16;
      v13 = 1;
    }

    else
    {
      LOBYTE(v13) = 1;
      v14 = 16;
      do
      {
        v12 += v10[v13] << (v9 - v14);
        LOBYTE(v13) = v13 + 1;
        v14 = 8 * v13 + 8;
      }

      while (v9 > (v14 & 0xF8u));
      v13 = v13;
    }

    v19 = (v10[v13] >> (v14 - v9)) + v12;
  }

  if (!a1[6])
  {
    brk_DataUnmap(a1[3], a1[4], v10);
  }

  return v19;
}

uint64_t WordToHashOpt(uint64_t a1, uint64_t a2, unsigned int a3, __int16 a4, int a5, uint64_t a6)
{
  v34 = 0;
  v12 = *a6;
  if (*a6)
  {
    v13 = 0;
    goto LABEL_3;
  }

  v23 = *(a1 + 16);
  v24 = v23[1];
  v25 = *(a2 + a3);
  if (a5)
  {
    LODWORD(v25) = depes_tolower(v25);
    v23 = *(a1 + 16);
  }

  v26 = *v23;
  v27 = *(v24 - *(*v23 + 4) + v25);
  v28 = *(*v23 + 46);
  if (*(*v23 + 46))
  {
    v29 = 0;
    v30 = 0;
    while (v27 > *(v23[3] + v29))
    {
      v30 += *(v23[5] + 4 * v29++);
      if (v28 == v29)
      {
        return 0xFFFFFFFFLL;
      }
    }

    LODWORD(v29) = v29;
  }

  else
  {
    v30 = 0;
    LODWORD(v29) = 0;
  }

  v34 = v30;
  if (v29 != v28 && v27 == *(v23[3] + v29))
  {
    *(a6 + 4) = v30;
    v12 = *(v23[4] + 4 * v29);
    if (v12 <= *(v26 + 18))
    {
      v32 = *(v26 + 56);
      *a1 = v32;
      v33 = *(v26 + 17);
      *(a1 + 4) = v33;
      v12 = v33 + 8 * v32;
    }

    *a6 = v12;
    v13 = 1;
LABEL_3:
    v14 = a4 - a3 + 1;
    v15 = a2 + a3;
    while (v13 != v14)
    {
      v16 = *(a1 + 16);
      v17 = v16[1];
      v18 = *(v15 + v13);
      if (a5)
      {
        v19 = depes_tolower(v18) - *(**(a1 + 16) + 4);
        v12 = *a6;
      }

      else
      {
        v19 = v18 - *(*v16 + 4);
      }

      v20 = *(v17 + v19);
      if ((SearchEntry(a1, v12, v20, (a6 + 8), &v34, a6) & 0x1FFF) == 0xA)
      {
        return 4294967294;
      }

      v12 = *a6;
      if (!*a6)
      {
        result = 0xFFFFFFFFLL;
        *(a6 + 4) = -1;
        return result;
      }

      v21 = *(a6 + 4) + v34;
      *(a6 + 4) = v21;
      ++v13;
      if (v20 == *(**(a1 + 16) + 16))
      {
        if (v12 == 1)
        {
          return v21;
        }

        else
        {
          return 0xFFFFFFFFLL;
        }
      }
    }

    v36 = 0;
    v31 = *(**(a1 + 16) + 16);
    v35 = *(a6 + 8);
    if ((SearchEntry(a1, v12, v31, &v35, &v34, &v36) & 0x1FFF) == 0xA)
    {
      return 4294967294;
    }

    if (v36 == 1)
    {
      return (v34 + *(a6 + 4));
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t SearchEntry(uint64_t a1, unsigned int a2, unsigned int a3, unsigned __int16 *a4, _DWORD *a5, unsigned int *a6)
{
  v6 = a6;
  SourceAddress = a2;
  v12 = a2 >> 3;
  v13 = *(a1 + 48);
  if (v13)
  {
    v45 = a6;
    v14 = *(a1 + 16);
    *(a1 + 8) = v13 + *(v14 + 128) + v12;
  }

  else
  {
    result = brk_DataMap(*(a1 + 24), *(a1 + 32), *(*(a1 + 16) + 128) + v12, *(**(a1 + 16) + 50), a1 + 8);
    if (result)
    {
      SourceAddress = 0;
      goto LABEL_73;
    }

    v45 = v6;
    v14 = *(a1 + 16);
  }

  *a1 = 0;
  *(a1 + 4) = SourceAddress & 7;
  *a5 = 0;
  v15 = *(v14 + 88);
  v16 = *(v15 + 2 * HuffDecode(a1, *(v14 + 48), *(*v14 + 26)));
  v17 = *(a1 + 16);
  v18 = *(*v17 + 24);
  v19 = v16 - v18;
  if (v16 > v18)
  {
    v20 = 0;
    do
    {
      v21 = *(a1 + 16);
      v22 = v21[12];
      v23 = HuffDecode(a1, v21[7], *(*v21 + 28));
      ++v20;
      v24 = *a4;
    }

    while (v24 >= v20);
    if (*(v22 + v23) == a3)
    {
      *a5 = 0;
      v25 = v24 + 1;
      *a4 = v25;
      v6 = v45;
      if (v25 < v19)
      {
        goto LABEL_70;
      }

      *a4 = 0;
      if (*(**(a1 + 16) + 16) == a3)
      {
        SourceAddress = 1;
        if (!*(a1 + 48))
        {
          goto LABEL_71;
        }

LABEL_72:
        result = 0;
        goto LABEL_73;
      }

      v37 = DecodeSourceLink(a1);
      if (!v37)
      {
        SourceAddress = GetSourceAddress(a1);
        goto LABEL_70;
      }

      SourceAddress = v37;
      v38 = **(a1 + 16);
      if (v37 > *(v38 + 18))
      {
        goto LABEL_70;
      }

      v39 = *(a1 + 4);
      v40 = *(v38 + 15);
      if ((v40 & v39) == 0)
      {
LABEL_67:
        v44 = *a1;
        if (v39 == 8)
        {
          LOBYTE(v39) = 0;
          *(a1 + 4) = 0;
          *a1 = ++v44;
        }

        SourceAddress = 8 * (v44 + v12) + v39;
LABEL_70:
        if (*(a1 + 48))
        {
          goto LABEL_72;
        }

LABEL_71:
        brk_DataUnmap(*(a1 + 24), *(a1 + 32), *(a1 + 8));
        goto LABEL_72;
      }

      do
      {
        ++v39;
      }

      while ((v40 & v39) != 0);
LABEL_63:
      *(a1 + 4) = v39;
      goto LABEL_67;
    }

    goto LABEL_40;
  }

  v26 = v17[12];
  v27 = *(v26 + HuffDecode(a1, v17[7], *(*v17 + 28)));
  if (v27 == *(**(a1 + 16) + 16))
  {
    SourceAddress = 0;
    if (v27 == a3)
    {
      goto LABEL_21;
    }

    v28 = 1;
    goto LABEL_20;
  }

  SourceAddress = DecodeSourceLink(a1);
  if (!SourceAddress)
  {
    SourceAddress = GetSourceAddress(a1);
  }

  if (v27 != a3)
  {
    v28 = DecodeSourceHash(a1);
LABEL_20:
    *a5 += v28;
  }

LABEL_21:
  v30 = v16 > 1;
  v31 = 1;
  if (v27 < a3 && v16 >= 2)
  {
    do
    {
      v33 = *(a1 + 16);
      v34 = v33[13];
      LOBYTE(v27) = *(v34 + HuffDecode(a1, v33[8], *(*v33 + 30))) + v27;
      if (*(**(a1 + 16) + 16) == v27)
      {
        if (a3 == v27)
        {
          goto LABEL_34;
        }

        v35 = 1;
      }

      else
      {
        SourceAddress = DecodeSourceLink(a1);
        if (!SourceAddress)
        {
          SourceAddress = GetSourceAddress(a1);
        }

        if (a3 == v27)
        {
          goto LABEL_34;
        }

        v35 = DecodeSourceHash(a1);
      }

      *a5 += v35;
LABEL_34:
      v30 = v16 > ++v31;
    }

    while (a3 > v27 && v16 > v31);
  }

  if (a3 != v27)
  {
LABEL_40:
    SourceAddress = 0;
    result = 0;
    v6 = v45;
    if (!*(a1 + 48))
    {
      goto LABEL_71;
    }

    goto LABEL_73;
  }

  v36 = **(a1 + 16);
  if (*(v36 + 16) == a3)
  {
    SourceAddress = 1;
    v6 = v45;
    if (!*(a1 + 48))
    {
      goto LABEL_71;
    }

    goto LABEL_72;
  }

  if (SourceAddress <= *(v36 + 18))
  {
    if (v30)
    {
      DecodeSourceHash(a1);
    }

    while (v16 > v31)
    {
      v41 = *(a1 + 16);
      v42 = v41[13];
      LOBYTE(a3) = *(v42 + HuffDecode(a1, v41[8], *(*v41 + 30))) + a3;
      if (*(**(a1 + 16) + 16) != a3)
      {
        if (!DecodeSourceLink(a1))
        {
          GetSourceAddress(a1);
        }

        if (v31 < (v16 - 1))
        {
          DecodeSourceHash(a1);
        }
      }

      ++v31;
    }

    v39 = *(a1 + 4);
    v43 = *(**(a1 + 16) + 15);
    if ((v43 & v39) == 0)
    {
      v6 = v45;
      goto LABEL_67;
    }

    v6 = v45;
    do
    {
      ++v39;
    }

    while ((v43 & v39) != 0);
    goto LABEL_63;
  }

  if (!*(a1 + 48))
  {
    v6 = v45;
    goto LABEL_71;
  }

  result = 0;
  v6 = v45;
LABEL_73:
  *v6 = SourceAddress;
  return result;
}