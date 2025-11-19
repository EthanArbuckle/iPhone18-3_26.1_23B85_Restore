uint64_t get_ner_brokerstring(uint64_t a1, char *a2, unint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v8 = 0;
  *v9 = 0;
  memset(v10, 0, sizeof(v10));
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", v9);
  if ((result & 0x80000000) == 0)
  {
    result = paramc_ParamGetStr(*(a1 + 40), "fecfg", &v8);
    if ((result & 0x80000000) == 0)
    {
      __strcat_chk();
      __strcat_chk();
      __strcat_chk();
      __strcat_chk();
      result = brokeraux_ComposeBrokerString(a1, v10, 1, 1, *v9, 0, 0, a2, a3);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t updateNLUNE(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v28 = 0;
  v27 = 0;
  __s = 0;
  v14 = (*(a4 + 184))(a2, a3, a5, 14, &v28 + 2);
  if ((v14 & 0x80000000) != 0)
  {
    return v14;
  }

  if (!HIWORD(v28))
  {
LABEL_5:
    v15 = "";
    __s = "";
    goto LABEL_8;
  }

  v14 = (*(a4 + 176))(a2, a3, a5, 14, &__s, &v28);
  if ((v14 & 0x80000000) != 0)
  {
    return v14;
  }

  if (v28 < 2u)
  {
    goto LABEL_5;
  }

  v15 = __s;
LABEL_8:
  v17 = strlen(v15);
  v18 = heap_Calloc(*(a1 + 8), v17 + 7, 1);
  if (!v18)
  {
    return 2314215434;
  }

  v19 = v18;
  v20 = strcpy(v18, __s);
  hlp_NLUStrSet(v20, "NE", (*(a7 + 8) + 40 * a6 + 30));
  log_OutText(*(a1 + 32), "FE_HMOGRPH", 5, 0, "updating WordRecord[%d] word[%d] LD_W_NLU %s -> %s", v21, v22, v23, a5);
  v24 = strlen(v19);
  v16 = (*(a4 + 160))(a2, a3, a5, 14, (v24 + 1), v19, &v27);
  heap_Free(*(a1 + 8), v19);
  return v16;
}

uint64_t ner_process(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v41 = 0;
  v40 = 0;
  v38 = 0;
  v39 = 0;
  v37 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v17 = (*(a5 + 104))(a3, a4, 1, 0, &v41 + 2);
  if ((v17 & 0x80000000) != 0)
  {
    return v17;
  }

  v18 = (*(a5 + 184))(a3, a4, HIWORD(v41), 0, &v41);
  if ((v18 & 0x80000000) == 0 && v41 == 1)
  {
    v18 = (*(a5 + 176))(a3, a4, HIWORD(v41), 0, &v37, &v40);
    if ((v18 & 0x80000000) == 0 && v40 >= 2u)
    {
      v19 = a9 || *(a2 + 36) != 1 ? ner_getSentenceData(a1, a3, a4, a5, HIWORD(v41), v37, a2, a6, a7, a8, &v39) : ner_getSentenceData(a1, a3, a4, a5, HIWORD(v41), v37, a2, *(a2 + 48), *(a2 + 72), *(a2 + 80), &v39);
      v18 = v19;
      if ((v19 & 0x80000000) == 0)
      {
        if (*(a2 + 16))
        {
          v18 = fi_predict(*a2, &v39, *(a2 + 18), &v38, v20, v21, v22, v23);
          if ((v18 & 0x80000000) != 0)
          {
            log_OutText(*(a1 + 32), "FE_HMOGRPH", 5, 0, "FI NER Prediction Failed", v25, v26, v27, 0);
            return v18;
          }

          if (*(a2 + 16))
          {
            v28 = 0;
            v29 = 0;
            v30 = v38;
            v31 = *(a2 + 8);
            v32 = 78;
            do
            {
              v33 = v31 + 40 * v28;
              if (!*(v33 + 24))
              {
                goto LABEL_26;
              }

              v34 = 0;
              v35 = (v30 + 8 * v29);
              while (!v34)
              {
                v32 = **v35;
                *(v33 + 30) = v32;
                *(*(a2 + 8) + 40 * v28 + 31) = 0;
                v31 = *(a2 + 8);
LABEL_25:
                ++v34;
                v33 = v31 + 40 * v28;
                if (v34 >= *(v33 + 24))
                {
                  goto LABEL_26;
                }
              }

              v36 = *v35[v34];
              if (v32 == v36 || v36 == 78 || v32 == 78)
              {
                goto LABEL_25;
              }

              v32 = 78;
              *(v33 + 30) = 78;
              *(*(a2 + 8) + 40 * v28 + 31) = 0;
              v31 = *(a2 + 8);
LABEL_26:
              v29 += *(v31 + 40 * v28++ + 24);
            }

            while (v28 < *(a2 + 16));
          }
        }
      }
    }
  }

  return v18;
}

uint64_t ner_getSentenceData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11)
{
  v18 = a1;
  v83 = 0;
  log_OutText(*(a1 + 32), "FE_HMOGRPH", 5, 0, "ner: processing=%s", a6, a7, a8, a6);
  *(a7 + 18) = 0;
  *(a7 + 8) = 0;
  if (!a6)
  {
    *(a7 + 16) = 0;
LABEL_11:
    *(a7 + 8) = 0;
    log_OutText(*(v18 + 32), "FE_HMOGRPH", 5, 0, "ner: no words found", v19, v20, v21, v76);
    return 0;
  }

  v22 = strlen(a6);
  v23 = 1;
  v24 = v22;
  if (v22)
  {
    v25 = a6;
    do
    {
      v27 = *v25++;
      v26 = v27;
      if (v27 == 95 || v26 == 32)
      {
        ++v23;
      }

      --v24;
    }

    while (v24);
    *(a7 + 16) = v23;
    if (!v23)
    {
      goto LABEL_11;
    }
  }

  else
  {
    *(a7 + 16) = 1;
  }

  v28 = 2314215434;
  v87 = 0;
  v85 = 0;
  v86 = 0;
  v84 = 0;
  v82 = 0;
  v29 = heap_Calloc(*(v18 + 8), v23, 40);
  *(a7 + 8) = v29;
  if (!v29)
  {
    goto LABEL_87;
  }

  v30 = (*(a4 + 104))(a2, a3, 2, a5, &v87);
  if ((v30 & 0x80000000) != 0)
  {
LABEL_67:
    v28 = v30;
    goto LABEL_87;
  }

  v31 = v87;
  if (!v87)
  {
LABEL_76:
    *(a7 + 16) = 0;
    heap_Free(*(v18 + 8), *(a7 + 8));
    *(a7 + 8) = 0;
    return v30;
  }

  v79 = a8;
  v32 = 0;
  v81 = 0;
  do
  {
    while (1)
    {
      v33 = (*(a4 + 168))(a2, a3, v31, 0, 1, &v86, &v85 + 2);
      if ((v33 & 0x80000000) != 0)
      {
        goto LABEL_77;
      }

      if (v86 > 0xA || ((1 << v86) & 0x610) == 0)
      {
        break;
      }

      v33 = (*(a4 + 168))(a2, a3, v87, 1, 1, &v85, &v85 + 2);
      if ((v33 & 0x80000000) != 0)
      {
        goto LABEL_77;
      }

      v33 = (*(a4 + 168))(a2, a3, v87, 2, 1, &v84, &v85 + 2);
      if ((v33 & 0x80000000) != 0)
      {
        goto LABEL_77;
      }

      v38 = v85;
      if (v85 >= v84)
      {
        log_OutText(*(v18 + 32), "FE_HMOGRPH", 5, 0, "ner: out of memory", v35, v36, v37, v76);
        v65 = 16049;
LABEL_86:
        v28 = v65 | 0x89F00000;
        goto LABEL_87;
      }

      ++v32;
      v39 = *(a7 + 8);
      v40 = v81;
      if (!v81 || (v41 = v39 + 40 * v81, v85 != *(v41 - 14)) || v84 != *(v41 - 12))
      {
        if (*(a7 + 16) <= v81)
        {
          *(a7 + 16) = v81 + 1;
          v42 = heap_Realloc(*(v18 + 8), v39, 40 * (v81 + 1));
          *(a7 + 8) = v42;
          if (!v42)
          {
            goto LABEL_87;
          }

          v39 = v42;
          v38 = v85;
          v40 = v81;
        }

        v43 = 5 * v40;
        v44 = v39 + 40 * v40;
        *(v44 + 26) = v38;
        v45 = v84;
        *(v44 + 28) = v84;
        v46 = v45 - v85;
        *v44 = 0;
        v47 = v46;
        v48 = heap_Alloc(*(v18 + 8), v46 + 1);
        *(*(a7 + 8) + 8 * v43) = v48;
        if (!v48)
        {
          goto LABEL_87;
        }

        strncpy(v48, &a6[v85], v47);
        *(*(*(a7 + 8) + 8 * v43) + v47) = 0;
        v49 = *(a7 + 8) + 8 * v43;
        v89 = 0;
        *__s = 0;
        *(v49 + 16) = 0;
        v50 = Utf8_Utf8NbrOfSymbols(*v49);
        if (v50 == 1)
        {
          v62 = 0;
        }

        else
        {
          v51 = 0;
          v52 = 0;
          v77 = v50 - 1;
          v78 = (v50 - 1);
          v80 = v18;
          while (1)
          {
            v53 = v52;
            UTF8Char = utf8_getUTF8Char(*v49, v52, __s);
            if ((UTF8Char & 0x80000000) != 0)
            {
              v28 = UTF8Char;
              v18 = v80;
              goto LABEL_87;
            }

            IsChineseLetter = utf8_IsChineseLetter(__s);
            if (strlen(__s) > 1 || (__s[0] - 33 <= 0x3E ? (v56 = ((1 << (__s[0] - 33)) & 0x7400000056003D8DLL) == 0) : (v56 = 1), v56 && __s[0] != 124))
            {
              if (!v51 && !IsChineseLetter)
              {
                break;
              }
            }

            if (!v51)
            {
              *(v49 + 32) = 0;
              v57 = heap_Calloc(*(v80 + 8), v78, 8);
              *(v49 + 16) = v57;
              if (!v57)
              {
                v18 = v80;
LABEL_85:
                v65 = 8202;
                goto LABEL_86;
              }
            }

            v58 = strlen(__s);
            *(*(v49 + 16) + v51) = heap_Calloc(*(v80 + 8), v58 + 1, 1);
            v59 = *(*(v49 + 16) + v51);
            if (!v59)
            {
              v72 = 0;
              v18 = v80;
              do
              {
                v73 = *(v49 + 16);
                v74 = *(v73 + v72);
                if (v74)
                {
                  heap_Free(*(v80 + 8), v74);
                  v73 = *(v49 + 16);
                }

                *(v73 + v72) = 0;
                v72 += 8;
              }

              while (8 * v77 != v72);
              heap_Free(*(v80 + 8), *(v49 + 16));
              *(v49 + 16) = 0;
              goto LABEL_85;
            }

            strcpy(v59, __s);
            v52 = v53 + strlen(__s);
            v51 += 8;
            if (8 * v78 == v51)
            {
              v18 = v80;
              v60 = v81;
              v61 = v81;
              v62 = v77;
              goto LABEL_55;
            }
          }

          if ((__s[0] & 0xDFu) - 65 < 0x1A)
          {
            v64 = 1;
          }

          else
          {
            v64 = 3;
          }

          if (__s[0] - 48 < 0xA)
          {
            v64 = 2;
          }

          *(v49 + 32) = v64;
          v62 = 1;
          v18 = v80;
        }

        v60 = v81;
        v61 = v81;
LABEL_55:
        *(v49 + 24) = v62;
        v63 = *(a7 + 8);
        *(a7 + 18) += *(v63 + 40 * v60 + 24);
        if (*(a7 + 32))
        {
          (*(a4 + 176))(a2, a3, v87, 5, v63 + 40 * v60 + 8, &v85 + 2);
          v61 = v81;
        }

        v81 = v61 + 1;
        v28 = 2314215434;
        break;
      }

      v30 = (*(a4 + 120))(a2, a3, v87, &v87);
      if ((v30 & 0x80000000) != 0)
      {
        goto LABEL_67;
      }

      v31 = v87;
      if (!v87)
      {
        goto LABEL_69;
      }
    }

    v30 = (*(a4 + 120))(a2, a3, v87, &v87);
    if ((v30 & 0x80000000) != 0)
    {
      goto LABEL_67;
    }

    v31 = v87;
  }

  while (v87);
LABEL_69:
  if (!v32)
  {
    goto LABEL_76;
  }

  v33 = (*(v79 + 40))(a9, a10, &v82);
  if ((v33 & 0x80000000) != 0)
  {
LABEL_77:
    v28 = v33;
    goto LABEL_87;
  }

  v66 = v82;
  if (*(a7 + 32))
  {
    v66 = v82 + *(a7 + 40);
  }

  v67 = heap_Calloc(*(v18 + 8), v66 * *(a7 + 18), 4);
  v83 = v67;
  if (v67)
  {
    v68 = v67;
    v69 = *(a7 + 8);
    v70 = *(a7 + 16);
    if (*(a7 + 32))
    {
      CharEmbeddingWithPOS = getCharEmbeddingWithPOS(v18, v79, a9, a10, &v83, v82, v69, v70, *(a7 + 40));
    }

    else
    {
      CharEmbeddingWithPOS = getCharEmbedding(v18, v79, a9, a10, &v83, v82, v69, v70);
    }

    v28 = CharEmbeddingWithPOS;
    if ((CharEmbeddingWithPOS & 0x80000000) != 0)
    {
      ner_freeNEData(v18, a7);
      heap_Free(*(v18 + 8), v68);
    }

    else
    {
      *a11 = v68;
    }

    return v28;
  }

LABEL_87:
  ner_freeNEData(v18, a7);
  return v28;
}

uint64_t ner_freeNEData(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 8);
    if (v3)
    {
      if (*(a2 + 16))
      {
        v5 = 0;
        do
        {
          if (*(v3 + 40 * v5))
          {
            heap_Free(*(a1 + 8), *(v3 + 40 * v5));
            v3 = *(a2 + 8);
            *(v3 + 40 * v5) = 0;
          }

          v6 = *(v3 + 40 * v5 + 16);
          if (v6)
          {
            if (*(v3 + 40 * v5 + 24))
            {
              v7 = 0;
              do
              {
                if (*(*(v3 + 40 * v5 + 16) + 8 * v7))
                {
                  heap_Free(*(a1 + 8), *(*(v3 + 40 * v5 + 16) + 8 * v7));
                  *(*(*(a2 + 8) + 40 * v5 + 16) + 8 * v7) = 0;
                  v3 = *(a2 + 8);
                }

                ++v7;
              }

              while (v7 < *(v3 + 40 * v5 + 24));
              v6 = *(v3 + 40 * v5 + 16);
            }

            *(v3 + 40 * v5 + 24) = 0;
            heap_Free(*(a1 + 8), v6);
            v3 = *(a2 + 8);
            *(v3 + 40 * v5 + 16) = 0;
          }

          ++v5;
        }

        while (v5 < *(a2 + 16));
      }

      heap_Free(*(a1 + 8), v3);
      *(a2 + 16) = 0;
      *(a2 + 8) = 0;
    }
  }

  return 0;
}

uint64_t getCharEmbeddingWithPOS(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, unsigned int a6, uint64_t a7, unsigned int a8, unsigned int a9)
{
  if (a8)
  {
    v12 = 0;
    v13 = 0;
    v14 = *a5;
    v26 = a6;
    v27 = a8;
    v15 = 4 * a6;
    v16 = v15 + 4 * a9;
    while (1)
    {
      v17 = a7 + 40 * v12;
      if (*(v17 + 24))
      {
        if (*(v17 + 24) != 1)
        {
          v20 = 0;
          do
          {
            v13 = (*(a2 + 56))(a3, a4, *(*(v17 + 16) + 8 * v20), v14);
            if ((v13 & 0x1FFF) == 0x14)
            {
              log_OutText(*(a1 + 32), "FE_HMOGRPH", 5, 0, "No embedding vector for character %s . Fall back!", v21, v22, v23, *(*(v17 + 16) + 8 * v20));
              v13 = (*(a2 + 56))(a3, a4, "</s>", v14);
            }

            v30 = v14 + v15;
            getPOSFeature(*(v17 + 8), &v30);
            v14 += v16;
            v30 = v14;
            ++v20;
          }

          while (v20 < *(v17 + 24));
          goto LABEL_21;
        }

        v18 = *(v17 + 32);
        switch(v18)
        {
          case 1:
            v19 = (*(a2 + 56))(a3, a4, "ENG", v14);
            break;
          case 2:
            v19 = (*(a2 + 56))(a3, a4, "NUM", v14);
            break;
          case 3:
            v19 = (*(a2 + 56))(a3, a4, "</s>", v14);
            break;
          default:
            v24 = 0;
            do
            {
              v13 = (*(a2 + 56))(a3, a4, *(*(v17 + 16) + 8 * v24), v14);
              if ((v13 & 0x1FFF) == 0x14)
              {
                v13 = (*(a2 + 56))(a3, a4, "</s>", v14);
              }

              v30 = v14 + v15;
              getPOSFeature(*(v17 + 8), &v30);
              v14 += v16;
              v30 = v14;
              ++v24;
            }

            while (v24 < *(v17 + 24));
            goto LABEL_21;
        }

        v13 = v19;
        v14 += 4 * v26;
        v30 = v14;
      }

LABEL_21:
      if (++v12 == v27)
      {
        return v13;
      }
    }
  }

  return 0;
}

uint64_t getCharEmbedding(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, unsigned int a6, uint64_t a7, unsigned int a8)
{
  if (!a8)
  {
    return 0;
  }

  v12 = 0;
  result = 0;
  v14 = *a5;
  v15 = 4 * a6;
  v23 = a6;
  v24 = a8;
  do
  {
    v16 = a7 + 40 * v12;
    if (*(v16 + 24))
    {
      if (*(v16 + 24) == 1)
      {
        v17 = *(v16 + 32) - 1;
        if (v17 >= 3)
        {
          v22 = 0;
          do
          {
            result = (*(a2 + 56))(a3, a4, *(*(v16 + 16) + 8 * v22), v14);
            if ((result & 0x1FFF) == 0x14)
            {
              result = (*(a2 + 56))(a3, a4, "</s>", v14);
            }

            ++v22;
            v14 += v15;
          }

          while (v22 < *(v16 + 24));
        }

        else
        {
          result = (*(a2 + 56))(a3, a4, off_1E81A3E60[v17], v14);
          v14 += 4 * v23;
        }
      }

      else
      {
        v18 = 0;
        do
        {
          result = (*(a2 + 56))(a3, a4, *(*(v16 + 16) + 8 * v18), v14);
          if ((result & 0x1FFF) == 0x14)
          {
            log_OutText(*(a1 + 32), "FE_HMOGRPH", 5, 0, "No embedding vector for character %s . Fall back!", v19, v20, v21, *(*(v16 + 16) + 8 * v18));
            result = (*(a2 + 56))(a3, a4, "</s>", v14);
          }

          ++v18;
          v14 += v15;
        }

        while (v18 < *(v16 + 24));
      }
    }

    ++v12;
  }

  while (v12 != v24);
  return result;
}

BOOL getPOSFeature(const char *a1, uint64_t *a2)
{
  v2 = *a2;
  result = utf8_ToLower(a1, 0, v5);
  if (v5[0] - 99 > 0x16)
  {
    v4 = 0;
  }

  else
  {
    v4 = qword_1C37BD608[(v5[0] - 99)];
  }

  *(v2 + 4 * v4) = 1065353216;
  return result;
}

uint64_t hlp_loadOptions(void *a1)
{
  v2 = a1[13];
  if (v2)
  {
    heap_Free(*(*a1 + 8), v2);
    a1[15] = 0;
  }

  v3 = heap_Alloc(*(*a1 + 8), 128);
  a1[13] = v3;
  if (v3)
  {
    a1[15] = 128;
    v8 = a1[14];
    if (v8)
    {
      heap_Free(*(*a1 + 8), v8);
      a1[16] = 0;
    }

    v9 = heap_Alloc(*(*a1 + 8), 128);
    a1[14] = v9;
    if (v9)
    {
      a1[16] = 128;
      v10 = a1[19];
      if (v10)
      {
        heap_Free(*(*a1 + 8), v10);
      }

      v11 = heap_Alloc(*(*a1 + 8), 128);
      a1[19] = v11;
      if (v11)
      {
        v12 = a1[20];
        if (v12)
        {
          heap_Free(*(*a1 + 8), v12);
        }

        v13 = heap_Alloc(*(*a1 + 8), 128);
        a1[20] = v13;
        if (v13)
        {
          v14 = a1[21];
          if (v14)
          {
            heap_Free(*(*a1 + 8), v14);
          }

          v15 = heap_Alloc(*(*a1 + 8), 128);
          a1[21] = v15;
          if (v15)
          {
            v16 = a1[22];
            if (v16)
            {
              heap_Free(*(*a1 + 8), v16);
            }

            v17 = heap_Alloc(*(*a1 + 8), 128);
            a1[22] = v17;
            if (v17)
            {
              return 0;
            }
          }
        }
      }
    }
  }

  log_OutPublic(*(*a1 + 32), "FE_HMOGRPH", 37000, 0, v4, v5, v6, v7, v19);
  return 2314215434;
}

uint64_t hlp_loadNNOptions(uint64_t a1)
{
  v2 = 2314216452;
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  v50 = 0;
  __lasts = 0;
  if (((*(*(a1 + 96) + 96))(*(a1 + 80), *(a1 + 88), "fecfg", "stathmogrph_nn_chars", &__c[3], &__c[1], __c) & 0x80000000) != 0 || !*&__c[1])
  {
    return v2;
  }

  v3 = **&__c[3];
  v4 = strchr(**&__c[3], __c[0]);
  if (v4)
  {
    *v4 = 0;
    v3 = **&__c[3];
  }

  v5 = strlen(v3);
  v6 = heap_Alloc(*(*a1 + 8), v5 + 1);
  if (!v6)
  {
    log_OutPublic(*(*a1 + 32), "FE_HMOGRPH", 37000, 0, v7, v8, v9, v10, v45);
    return 2314215434;
  }

  v11 = v6;
  v12 = strlen(**&__c[3]);
  strncpy(v11, **&__c[3], v12);
  v11[strlen(**&__c[3])] = 0;
  *&__c[1] = -1;
  v13 = 0;
  if (((*(*(a1 + 96) + 96))(*(a1 + 80), *(a1 + 88), "fecfg", "stathmogrph_nn_default_phones", &__c[3], &__c[1], __c) & 0x80000000) != 0 || !*&__c[1])
  {
    goto LABEL_38;
  }

  v14 = **&__c[3];
  v15 = strchr(**&__c[3], __c[0]);
  if (v15)
  {
    *v15 = 0;
    v14 = **&__c[3];
  }

  v16 = strlen(v14);
  v13 = heap_Alloc(*(*a1 + 8), v16 + 1);
  if (!v13)
  {
    goto LABEL_36;
  }

  v21 = strlen(**&__c[3]);
  strncpy(v13, **&__c[3], v21);
  v13[strlen(**&__c[3])] = 0;
  v22 = *(*a1 + 8);
  *&v46 = ssftmap_ElemCopyString;
  *(&v46 + 1) = ssftmap_ElemFreeString;
  v47 = ssftmap_ElemCompareKeysString;
  v48 = ssftmap_ElemCopyString;
  v49 = ssftmap_ElemFreeString;
  v23 = ssftmap_ObjOpen(v22, 0, &v46, (a1 + 248));
  if ((v23 & 0x80000000) != 0)
  {
LABEL_18:
    v2 = v23;
    goto LABEL_38;
  }

  v24 = strtok_r(v11, "|", &__lasts);
  for (i = v13; ; i = 0)
  {
    v26 = strtok_r(i, "|", &v50);
    if (!v24 || !v26)
    {
      break;
    }

    v23 = ssftmap_Insert(*(a1 + 248), v24, v26);
    if ((v23 & 0x80000000) != 0)
    {
      goto LABEL_18;
    }

    v24 = strtok_r(0, "|", &__lasts);
  }

  if (v24 || v26)
  {
    log_OutText(*(*a1 + 32), "FE_HMOGRPH", 5, 0, "NN chars amount and default phones amount do not match!", v27, v28, v29, 0);
    v2 = 2314215439;
    goto LABEL_38;
  }

  *&__c[1] = -1;
  if (((*(*(a1 + 96) + 96))(*(a1 + 80), *(a1 + 88), "fecfg", "stathmogrph_nn_step", &__c[3], &__c[1], __c) & 0x80000000) == 0)
  {
    if (*&__c[1])
    {
      *(a1 + 256) = 0;
      *(a1 + 256) = LH_atou(**&__c[3]);
      *&__c[1] = -1;
      if (((*(*(a1 + 96) + 96))(*(a1 + 80), *(a1 + 88), "fecfg", "stathmogrph_nn_vect", &__c[3], &__c[1], __c) & 0x80000000) == 0)
      {
        if (*&__c[1])
        {
          *(a1 + 260) = 0;
          *(a1 + 260) = LH_atou(**&__c[3]);
          *&__c[1] = -1;
          if (((*(*(a1 + 96) + 96))(*(a1 + 80), *(a1 + 88), "fecfg", "stathmogrph_nn_null_fea", &__c[3], &__c[1], __c) & 0x80000000) == 0)
          {
            if (*&__c[1])
            {
              *(a1 + 272) = 0;
              v30 = **&__c[3];
              v31 = strchr(**&__c[3], __c[0]);
              if (v31)
              {
                *v31 = 0;
                v30 = **&__c[3];
              }

              v32 = strlen(v30);
              v33 = heap_Alloc(*(*a1 + 8), v32 + 1);
              *(a1 + 272) = v33;
              if (v33)
              {
                v34 = v33;
                v35 = strlen(**&__c[3]);
                strncpy(v34, **&__c[3], v35);
                *(*(a1 + 272) + strlen(**&__c[3])) = 0;
                *&__c[1] = -1;
                v36 = (*(*(a1 + 96) + 96))(*(a1 + 80), *(a1 + 88), "fecfg", "stathmogrph_embed_type", &__c[3], &__c[1], __c);
                if ((v36 & 0x80000000) == 0 && *&__c[1])
                {
                  v37 = v36;
                  *(a1 + 264) = 0;
                  v38 = **&__c[3];
                  v39 = strchr(**&__c[3], __c[0]);
                  if (v39)
                  {
                    *v39 = 0;
                    v38 = **&__c[3];
                  }

                  v40 = strlen(v38);
                  v41 = heap_Alloc(*(*a1 + 8), v40 + 1);
                  *(a1 + 264) = v41;
                  if (v41)
                  {
                    v42 = v41;
                    v43 = strlen(**&__c[3]);
                    strncpy(v42, **&__c[3], v43);
                    *(*(a1 + 264) + strlen(**&__c[3])) = 0;
                    v2 = v37;
                    goto LABEL_38;
                  }

                  goto LABEL_36;
                }

                goto LABEL_38;
              }

LABEL_36:
              log_OutPublic(*(*a1 + 32), "FE_HMOGRPH", 37000, 0, v17, v18, v19, v20, v45);
              v2 = 2314215434;
            }
          }
        }
      }
    }
  }

LABEL_38:
  heap_Free(*(*a1 + 8), v11);
  if (v13)
  {
    heap_Free(*(*a1 + 8), v13);
  }

  return v2;
}

uint64_t hlp_loadStatWordOptions(uint64_t a1)
{
  *&__c[3] = 0;
  __c[0] = 0;
  *&__c[1] = -1;
  v2 = (*(*(a1 + 96) + 96))(*(a1 + 80), *(a1 + 88), "fecfg", "statwordhmogrph_step", &__c[3], &__c[1], __c);
  if ((v2 & 0x80000000) != 0)
  {
    return v2;
  }

  *(a1 + 320) = 0;
  if (*&__c[1])
  {
    *(a1 + 320) = LH_atou(**&__c[3]);
  }

  *&__c[1] = -1;
  v2 = (*(*(a1 + 96) + 96))(*(a1 + 80), *(a1 + 88), "fecfg", "statwordhmogrph_vect", &__c[3], &__c[1], __c);
  if ((v2 & 0x80000000) != 0)
  {
    return v2;
  }

  *(a1 + 324) = 0;
  if (*&__c[1])
  {
    *(a1 + 324) = LH_atou(**&__c[3]);
  }

  *&__c[1] = -1;
  v2 = (*(*(a1 + 96) + 96))(*(a1 + 80), *(a1 + 88), "fecfg", "statwordhmogrph_thresholdpercent", &__c[3], &__c[1], __c);
  if ((v2 & 0x80000000) != 0)
  {
    return v2;
  }

  *(a1 + 328) = 0;
  if (*&__c[1])
  {
    *(a1 + 328) = LH_atou(**&__c[3]);
  }

  *&__c[1] = -1;
  v2 = (*(*(a1 + 96) + 96))(*(a1 + 80), *(a1 + 88), "fecfg", "statwordhmogrph_list", &__c[3], &__c[1], __c);
  if ((v2 & 0x80000000) != 0)
  {
    return v2;
  }

  if (*&__c[1])
  {
    v7 = **&__c[3];
    v8 = strchr(**&__c[3], __c[0]);
    if (v8)
    {
      *v8 = 0;
      v7 = **&__c[3];
    }

    v9 = strlen(v7);
    v10 = heap_Alloc(*(*a1 + 8), v9 + 1);
    *(a1 + 336) = v10;
    if (v10)
    {
      strcpy(v10, **&__c[3]);
      strcpy((a1 + 364), "$MEANW2V$");
      *&__c[1] = -1;
      if (((*(*(a1 + 96) + 96))(*(a1 + 80), *(a1 + 88), "fecfg", "statwordhmogrph_fbck", &__c[3], &__c[1], __c) & 0x80000000) == 0 && *&__c[1])
      {
        v15 = strchr(**&__c[3], __c[0]);
        if (v15)
        {
          *v15 = 0;
          v16 = **&__c[3];
        }

        __strcpy_chk();
      }

      *(a1 + 344) = 0x2D3A3F2E213B2CLL;
      *&__c[1] = -1;
      if (((*(*(a1 + 96) + 96))(*(a1 + 80), *(a1 + 88), "fecfg", "statwordhmogrph_punc", &__c[3], &__c[1], __c) & 0x80000000) == 0 && *&__c[1])
      {
        v17 = strchr(**&__c[3], __c[0]);
        if (v17)
        {
          *v17 = 0;
          v18 = **&__c[3];
        }

        __strcpy_chk();
      }

      *(a1 + 354) = 0x30303433333030;
      *&__c[1] = -1;
      if (((*(*(a1 + 96) + 96))(*(a1 + 80), *(a1 + 88), "fecfg", "statwordhmogrph_mappunc", &__c[3], &__c[1], __c) & 0x80000000) == 0 && *&__c[1])
      {
        v19 = strchr(**&__c[3], __c[0]);
        if (v19)
        {
          *v19 = 0;
          v20 = **&__c[3];
        }

        __strcpy_chk();
      }

      *(a1 + 376) = 0;
      *&__c[1] = -1;
      v21 = (*(*(a1 + 96) + 96))(*(a1 + 80), *(a1 + 88), "fecfg", "statwordhmogrph_nnlkpcaseconv", &__c[3], &__c[1], __c);
      if ((v21 & 0x80000000) == 0 && *&__c[1])
      {
        v22 = **&__c[3];
        v23 = strchr(**&__c[3], __c[0]);
        if (v23)
        {
          *v23 = 0;
          v22 = **&__c[3];
        }

        if (!strcmp("yes", v22) || !strcmp("YES", v22))
        {
          *(a1 + 376) = 1;
        }
      }

      *(a1 + 264) = 0;
    }

    else
    {
      v21 = 2314215434;
      log_OutPublic(*(*a1 + 32), "FE_HMOGRPH", 37000, 0, v11, v12, v13, v14, v25);
    }
  }

  else
  {
    log_OutPublic(*(*a1 + 32), "FE_HMOGRPH", 37000, 0, v3, v4, v5, v6, v25);
    return 2314215444;
  }

  return v21;
}

uint64_t fe_hmogrph_ObjOpen(_WORD *a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v64 = *MEMORY[0x1E69E9840];
  v61 = 0;
  v62 = 0;
  v5 = 2314215431;
  v59 = 0;
  v60 = 0;
  v57 = 0;
  v58 = 0;
  v54 = 0;
  v55 = 0;
  memset(v63, 0, sizeof(v63));
  if (!a5)
  {
    goto LABEL_52;
  }

  __s = 0;
  v53 = 0;
  *a5 = 0;
  *(a5 + 8) = 0;
  inited = InitRsrcFunction(a1, a2, &v61);
  if ((inited & 0x80000000) != 0)
  {
    goto LABEL_51;
  }

  inited = InitRsrcFunction(a3, a4, &v62);
  if ((inited & 0x80000000) != 0)
  {
    goto LABEL_51;
  }

  inited = objc_GetObject(v62[6], "LINGDB", &v60);
  if ((inited & 0x80000000) != 0)
  {
    goto LABEL_51;
  }

  Object = objc_GetObject(v62[6], "FE_DCTLKP", &v58);
  v13 = v62[6];
  if ((Object & 0x80000000) != 0)
  {
    v35 = "LINGDB";
LABEL_25:
    objc_ReleaseObject(v13, v35);
    v5 = Object;
    goto LABEL_52;
  }

  v14 = objc_GetObject(v13, "FE_DEPES", &v59);
  if ((v14 & 0x80000000) != 0)
  {
    Object = v14;
    objc_ReleaseObject(v62[6], "LINGDB");
    v13 = v62[6];
    v35 = "FE_DCTLKP";
    goto LABEL_25;
  }

  v15 = heap_Alloc(v62[1], 488);
  if (!v15)
  {
    log_OutPublic(v62[4], "FE_HMOGRPH", 37000, 0, v16, v17, v18, v19, v48);
    objc_ReleaseObject(v62[6], "LINGDB");
    objc_ReleaseObject(v62[6], "FE_DEPES");
    objc_ReleaseObject(v62[6], "FE_DCTLKP");
    v5 = 2314215434;
    goto LABEL_52;
  }

  v20 = v15;
  *v15 = v62;
  *(v15 + 8) = a3;
  v21 = v60;
  v22 = v61;
  *(v15 + 16) = a4;
  *(v15 + 24) = v22;
  *(v15 + 32) = a1;
  *(v15 + 40) = a2;
  *(v15 + 48) = *(v21 + 8);
  v23 = v58;
  v24 = v59;
  *(v15 + 72) = *(v59 + 8);
  *(v15 + 56) = *(v24 + 16);
  v25 = *(v23 + 8);
  *(v15 + 96) = v25;
  v26 = *(v23 + 16);
  *(v15 + 200) = 0u;
  v27 = v15 + 200;
  *(v15 + 80) = v26;
  *(v15 + 104) = 0u;
  *(v15 + 120) = 0u;
  *(v15 + 136) = 0;
  *(v15 + 152) = 0u;
  *(v15 + 168) = 0u;
  *(v15 + 216) = 0u;
  *(v15 + 232) = 0u;
  *(v15 + 248) = 0u;
  *(v15 + 264) = 0u;
  *(v15 + 280) = 0u;
  *(v15 + 296) = 0u;
  *(v15 + 312) = 0u;
  *(v15 + 328) = 0u;
  *(v15 + 344) = 0u;
  *(v15 + 360) = 0u;
  *(v15 + 376) = 0;
  *(v15 + 472) = 0;
  *(v15 + 440) = 0u;
  *(v15 + 456) = 0u;
  *(v15 + 408) = 0u;
  *(v15 + 424) = 0u;
  *(v15 + 392) = 0u;
  *(v15 + 188) = 0;
  *(v15 + 384) = 0;
  *(v15 + 480) = 0;
  *(v15 + 280) = 0;
  OptionalHmogrphModels = (*(v25 + 88))(*(v15 + 80), *(v15 + 88), &v55 + 4, &v55);
  if ((OptionalHmogrphModels & 0x80000000) != 0)
  {
    goto LABEL_53;
  }

  v29 = v55 == 1 && HIDWORD(v55) == 1;
  v30 = v29;
  *(v20 + 184) = v30;
  OptionalHmogrphModels = hlp_loadOptionalHmogrphModels(v20);
  if ((OptionalHmogrphModels & 0x80000000) != 0)
  {
    goto LABEL_53;
  }

  OptionalHmogrphModels = hlp_loadNerOptions(v20);
  if ((OptionalHmogrphModels & 0x80000000) != 0)
  {
    goto LABEL_53;
  }

  v31 = *v20;
  *(v20 + 200) = *v20;
  v32 = paramc_ParamGet(*(v31 + 40), "numberoutputtranscriptions", &__s, 0);
  v33 = 0;
  if ((v32 & 0x80000000) == 0 && __s)
  {
    v33 = atoi(__s);
  }

  *(v20 + 138) = v33;
  v34 = (paramc_ParamGet(*(*v20 + 40), "mlset", &__s, 0) & 0x80000000) == 0 && strlen(__s) > 3;
  *(v20 + 140) = v34;
  OptionalHmogrphModels = checkSkipCrosstoken(*(v20 + 80), *(v20 + 88), *(v20 + 96), (v20 + 144));
  if ((OptionalHmogrphModels & 0x80000000) != 0)
  {
    goto LABEL_53;
  }

  if (*(v20 + 144))
  {
    OptionalHmogrphModels = hlp_loadOptions(v20);
    if ((OptionalHmogrphModels & 0x80000000) != 0)
    {
      goto LABEL_53;
    }
  }

  if (!*(v20 + 188))
  {
    goto LABEL_49;
  }

  if (*(v20 + 480))
  {
    v52 = 0;
    v50 = 0u;
    v51 = 0u;
    OptionalHmogrphModels = hlp_loadStatWordOptions(v20);
    if ((OptionalHmogrphModels & 0x80000000) != 0)
    {
      goto LABEL_53;
    }

    OptionalHmogrphModels = nn_word_lkp_GetInterface(1u, &v53);
    if ((OptionalHmogrphModels & 0x80000000) != 0)
    {
      goto LABEL_53;
    }

    *(v20 + 280) = v53;
    *(v20 + 288) = safeh_GetNullHandle();
    *(v20 + 296) = v36;
    *(v20 + 304) = safeh_GetNullHandle();
    *(v20 + 312) = v37;
    OptionalHmogrphModels = (*(v53 + 16))(*(v20 + 288), *(v20 + 296), "word", a3, a4, v20 + 304);
    if ((OptionalHmogrphModels & 0x80000000) != 0)
    {
      goto LABEL_53;
    }

    v51 = *(v20 + 304);
    *(&v50 + 1) = v53;
    OptionalHmogrphModels = objc_RegisterObject(v62[6], "NNWRDLKP", &v50);
    if ((OptionalHmogrphModels & 0x80000000) != 0)
    {
      goto LABEL_53;
    }

    goto LABEL_46;
  }

  if (*(v20 + 192))
  {
    OptionalHmogrphModels = hlp_loadNNOptions(v20);
    if ((OptionalHmogrphModels & 0x80000000) != 0)
    {
LABEL_53:
      v5 = OptionalHmogrphModels;
      fe_hmogrph_ObjClose(*a5, *(a5 + 8));
      goto LABEL_52;
    }

    v38 = strcmp(*(v20 + 264), "albert");
    if ((objc_GetObject(v62[6], "NNCHRLKP", &v57) & 0x80000000) != 0 || !v38)
    {
      OptionalHmogrphModels = nn_word_lkp_GetInterface(1u, &v53);
      if ((OptionalHmogrphModels & 0x80000000) != 0)
      {
        goto LABEL_53;
      }

      *(v20 + 280) = v53;
      *(v20 + 288) = safeh_GetNullHandle();
      *(v20 + 296) = v40;
      *(v20 + 304) = safeh_GetNullHandle();
      *(v20 + 312) = v41;
      OptionalHmogrphModels = (*(v53 + 16))(*(v20 + 288), *(v20 + 296), *(v20 + 264), a3, a4, v20 + 304);
      if ((OptionalHmogrphModels & 0x80000000) != 0)
      {
        goto LABEL_53;
      }
    }

    else
    {
      *(v20 + 280) = *(v57 + 8);
      *(v20 + 288) = safeh_GetNullHandle();
      *(v20 + 296) = v39;
      *(v20 + 304) = *(v57 + 16);
    }

LABEL_46:
    inited = fi_model_getBrokerString(*v20, v63);
    if ((inited & 0x80000000) == 0)
    {
      v42 = fi_init(a3, a4, a1, a2, &v54, 0, v63, "FINN", 1, 0);
      if ((v42 & 0x80000000) != 0)
      {
        v5 = v42;
        log_OutText(*(*v20 + 32), "FE_HMOGRPH", 5, 0, "create FI model failed", v43, v44, v45, v49);
        goto LABEL_52;
      }

      *(v20 + 240) = v54;
      goto LABEL_49;
    }

LABEL_51:
    v5 = inited;
    goto LABEL_52;
  }

  *(v20 + 240) = 0;
LABEL_49:
  v5 = init_ner_struct(v20, (v27 + 192));
  if ((v5 & 0x80000000) == 0)
  {
    *a5 = v20;
    *(a5 + 8) = 62342;
  }

LABEL_52:
  v46 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t hlp_loadOptionalHmogrphModels(uint64_t a1)
{
  if ((com_useStatHmogrph(*a1, (a1 + 188)) & 0x80000000) == 0)
  {
    *(a1 + 232) = 0;
    *(a1 + 200) = 0;
    if (*(a1 + 188))
    {
      if ((stat_hmogrph_ModelInit(*(a1 + 8), *(a1 + 16), *a1, *(a1 + 96), *(a1 + 80), *(a1 + 88), (a1 + 224), (a1 + 232), (a1 + 234)) & 0x80000000) == 0)
      {
        *(a1 + 200) = *a1;
      }
    }
  }

  *&__c[3] = 0;
  __c[0] = 0;
  *(a1 + 480) = 0;
  *&__c[1] = -1;
  if (((*(*(a1 + 96) + 96))(*(a1 + 80), *(a1 + 88), "fecfg", "statwordhmogrph_step", &__c[3], &__c[1], __c) & 0x80000000) == 0 && *&__c[1] == 1)
  {
    *(a1 + 188) = 1;
    *(a1 + 480) = 1;
  }

  *(a1 + 192) = 0;
  *&__c[1] = -1;
  v2 = (*(*(a1 + 96) + 96))(*(a1 + 80), *(a1 + 88), "fecfg", "stathmogrph_enable_nnets", &__c[3], &__c[1], __c);
  if ((v2 & 0x80000000) == 0 && *&__c[1] == 1 && *&__c[3])
  {
    v3 = **&__c[3];
    v4 = strchr(**&__c[3], __c[0]);
    if (v4)
    {
      *v4 = 0;
      v3 = **&__c[3];
    }

    if (!strcmp("yes", v3) || !strcmp("YES", v3))
    {
      *(a1 + 192) = 1;
    }
  }

  return v2;
}

uint64_t hlp_loadNerOptions(uint64_t a1)
{
  v9 = 0;
  v10 = 0;
  v8 = 0;
  v7 = -1;
  v6 = 0;
  v2 = (*(*(a1 + 96) + 96))(*(a1 + 80), *(a1 + 88), "fecfg", "ner_enable_ner", &v10, &v7, &v6);
  if ((v2 & 0x80000000) == 0)
  {
    if (v7 && v10)
    {
      (*v10)[strlen(*v10) - 1] = 0;
      v3 = strcmp(*v10, "yes");
      *(a1 + 384) = v3 == 0;
      if (!v3)
      {
        v7 = -1;
        v6 = 0;
        *(a1 + 428) = 0;
        if (((*(*(a1 + 96) + 96))(*(a1 + 80), *(a1 + 88), "fecfg", "ner_embed_type", &v9, &v7, &v6) & 0x80000000) == 0 && v7 && v9)
        {
          (*v9)[strlen(*v9) - 1] = 0;
          *(a1 + 428) = strcmp(*v9, "char") == 0;
        }

        v7 = -1;
        v6 = 0;
        v2 = (*(*(a1 + 96) + 96))(*(a1 + 80), *(a1 + 88), "fecfg", "ner_enable_pos", &v9, &v7, &v6);
        if ((v2 & 0x80000000) == 0)
        {
          if (v7 && v9)
          {
            (*v9)[strlen(*v9) - 1] = 0;
            v4 = strcmp(*v9, "yes");
            *(a1 + 424) = v4 == 0;
            if (!v4)
            {
              v7 = -1;
              v6 = 0;
              v2 = (*(*(a1 + 96) + 96))(*(a1 + 80), *(a1 + 88), "fecfg", "ner_pos_dimension", &v8, &v7, &v6);
              if ((v2 & 0x80000000) == 0)
              {
                *(a1 + 432) = LH_atou(*v8);
              }
            }
          }

          else
          {
            *(a1 + 424) = 0;
          }
        }
      }
    }

    else
    {
      *(a1 + 384) = 0;
    }
  }

  return v2;
}

uint64_t checkSkipCrosstoken(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  *a4 = 0;
  v5 = (*(a3 + 96))(a1, a2, "fecfg", "feoneword_skipcrosstoken", &__c[3], &__c[1], __c);
  if ((v5 & 0x80000000) == 0 && *&__c[1] == 1 && *&__c[3] != 0)
  {
    v7 = **&__c[3];
    v8 = strchr(**&__c[3], __c[0]);
    if (v8)
    {
      *v8 = 0;
      v7 = **&__c[3];
    }

    if (!strcmp("yes", v7) || !strcmp("YES", v7))
    {
      *a4 = 1;
    }
  }

  return v5;
}

uint64_t fi_model_getBrokerString(uint64_t a1, char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v6 = 0;
  *v7 = 0;
  memset(v8, 0, sizeof(v8));
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", v7);
  if ((result & 0x80000000) == 0)
  {
    result = paramc_ParamGetStr(*(a1 + 40), "fecfg", &v6);
    if ((result & 0x80000000) == 0)
    {
      __strcat_chk();
      __strcat_chk();
      __strcat_chk();
      __strcat_chk();
      result = brokeraux_ComposeBrokerString(a1, v8, 1, 1, *v7, 0, 0, a2, 0x100uLL);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t init_ner_struct(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  memset(v16, 0, sizeof(v16));
  v15 = 0;
  *a2 = 0;
  if (*(a1 + 384))
  {
    *(a1 + 440) = 0;
    *(a1 + 448) = safeh_GetNullHandle();
    *(a1 + 456) = v4;
    *(a1 + 464) = safeh_GetNullHandle();
    *(a1 + 472) = v5;
    v6 = *(a1 + 264);
    if (v6 && strcmp(v6, "char") && *(a1 + 428) == 1 && ((Interface = nn_word_lkp_GetInterface(1u, (a1 + 440)), (Interface & 0x80000000) != 0) || (Interface = (*(*(a1 + 440) + 16))(*(a1 + 448), *(a1 + 456), "char", *(a1 + 8), *(a1 + 16), a1 + 464), (Interface & 0x80000000) != 0)))
    {
      v11 = Interface;
    }

    else
    {
      get_ner_brokerstring(*a1, v16, 0x100uLL);
      v11 = fi_init(*(a1 + 8), *(a1 + 16), *(a1 + 32), *(a1 + 40), &v15, 0, v16, "FINN", 1, 0);
      if ((v11 & 0x80000000) != 0)
      {
        log_OutText(*(*a1 + 32), "FE_HMOGRPH", 5, 0, "Init NER FI model failed", v8, v9, v10, v14);
      }

      else
      {
        *a2 = v15;
      }
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t fe_hmogrph_ObjClose(uint64_t a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 62342, 488);
  if ((result & 0x80000000) != 0)
  {
    return 2314215432;
  }

  if (!a1)
  {
    return result;
  }

  v9 = *(a1 + 104);
  if (v9)
  {
    heap_Free(*(*a1 + 8), v9);
  }

  *(a1 + 104) = 0;
  *(a1 + 120) = 0;
  v10 = *(a1 + 112);
  if (v10)
  {
    heap_Free(*(*a1 + 8), v10);
  }

  *(a1 + 112) = 0;
  *(a1 + 128) = 0;
  v11 = *(a1 + 152);
  if (v11)
  {
    heap_Free(*(*a1 + 8), v11);
  }

  *(a1 + 152) = 0;
  v12 = *(a1 + 160);
  if (v12)
  {
    heap_Free(*(*a1 + 8), v12);
  }

  *(a1 + 160) = 0;
  v13 = *(a1 + 168);
  if (v13)
  {
    heap_Free(*(*a1 + 8), v13);
  }

  *(a1 + 168) = 0;
  v14 = *(a1 + 176);
  if (v14)
  {
    heap_Free(*(*a1 + 8), v14);
  }

  *(a1 + 176) = 0;
  v15 = *(a1 + 280);
  if (v15)
  {
    if (*(a1 + 480))
    {
      if (((*(v15 + 24))(*(a1 + 304), *(a1 + 312)) & 0x80000000) == 0)
      {
        objc_UnregisterObject(*(*a1 + 48), "NNWRDLKP");
      }
    }

    else if (*(a1 + 192) && (objc_ReleaseObject(*(*a1 + 48), "NNCHRLKP") & 0x80000000) != 0)
    {
      (*(*(a1 + 280) + 24))(*(a1 + 304), *(a1 + 312));
    }

    *(a1 + 280) = 0;
  }

  if (*(a1 + 188))
  {
    if (*(a1 + 480))
    {
      v16 = *(a1 + 336);
      if (v16)
      {
        heap_Free(*(*a1 + 8), v16);
        *(a1 + 336) = 0;
      }
    }

    else
    {
      if (!*(a1 + 192))
      {
LABEL_37:
        if (*(a1 + 232))
        {
          stat_hmogrph_ModelDeinit(*a1, (a1 + 224), *(a1 + 232), v4, v5, v6, v7, v8);
        }

        goto LABEL_39;
      }

      v17 = *(a1 + 272);
      if (v17)
      {
        heap_Free(*(*a1 + 8), v17);
        *(a1 + 272) = 0;
      }

      v18 = *(a1 + 248);
      if (v18)
      {
        ssftmap_ObjClose(v18);
        *(a1 + 248) = 0;
      }

      v19 = *(a1 + 264);
      if (v19)
      {
        heap_Free(*(*a1 + 8), v19);
        *(a1 + 264) = 0;
      }
    }

    v20 = *(a1 + 240);
    if (v20)
    {
      fi_deinit(*a1, *(a1 + 24), v20);
      *(a1 + 240) = 0;
    }

    goto LABEL_37;
  }

LABEL_39:
  if (*(a1 + 384))
  {
    v21 = *(a1 + 392);
    if (v21)
    {
      fi_deinit(*a1, *(a1 + 24), v21);
      *(a1 + 392) = 0;
    }

    v22 = *(a1 + 440);
    if (v22)
    {
      (*(v22 + 24))(*(a1 + 464), *(a1 + 472));
      *(a1 + 440) = 0;
    }
  }

  objc_ReleaseObject(*(*a1 + 48), "LINGDB");
  objc_ReleaseObject(*(*a1 + 48), "FE_DEPES");
  objc_ReleaseObject(*(*a1 + 48), "FE_DCTLKP");
  heap_Free(*(*a1 + 8), a1);
  return 0;
}

uint64_t fe_hmogrph_ObjReopen(uint64_t a1, int a2)
{
  v50 = *MEMORY[0x1E69E9840];
  v47 = 0;
  v44 = 0;
  v45 = 0;
  memset(v49, 0, sizeof(v49));
  Options = safeh_HandleCheck(a1, a2, 62342, 488);
  if ((Options & 0x80000000) == 0)
  {
    if (!a1)
    {
      goto LABEL_79;
    }

    __s = 0;
    v46 = 0;
    Options = (*(*(a1 + 96) + 88))(*(a1 + 80), *(a1 + 88), &v47 + 4, &v47);
    if ((Options & 0x80000000) != 0)
    {
      goto LABEL_79;
    }

    v10 = v47 == 1 && HIDWORD(v47) == 1;
    *(a1 + 184) = v10;
    v11 = *(a1 + 104);
    if (v11)
    {
      heap_Free(*(*a1 + 8), v11);
    }

    *(a1 + 104) = 0;
    *(a1 + 120) = 0;
    v12 = *(a1 + 112);
    if (v12)
    {
      heap_Free(*(*a1 + 8), v12);
    }

    *(a1 + 112) = 0;
    *(a1 + 128) = 0;
    v13 = *(a1 + 152);
    if (v13)
    {
      heap_Free(*(*a1 + 8), v13);
    }

    *(a1 + 152) = 0;
    v14 = *(a1 + 160);
    if (v14)
    {
      heap_Free(*(*a1 + 8), v14);
    }

    *(a1 + 160) = 0;
    v15 = *(a1 + 168);
    if (v15)
    {
      heap_Free(*(*a1 + 8), v15);
    }

    *(a1 + 168) = 0;
    v16 = *(a1 + 176);
    if (v16)
    {
      heap_Free(*(*a1 + 8), v16);
    }

    *(a1 + 176) = 0;
    v17 = *(a1 + 280);
    if (v17)
    {
      if (*(a1 + 480))
      {
        v46 = *(a1 + 280);
        if (((*(v17 + 24))(*(a1 + 304), *(a1 + 312)) & 0x80000000) == 0)
        {
          objc_UnregisterObject(*(*a1 + 48), "NNWRDLKP");
        }
      }

      else if (*(a1 + 192) && (objc_ReleaseObject(*(*a1 + 48), "NNCHRLKP") & 0x80000000) != 0)
      {
        v46 = *(a1 + 280);
        (*(v46 + 24))(*(a1 + 304), *(a1 + 312));
      }

      *(a1 + 280) = 0;
    }

    if (!*(a1 + 188))
    {
LABEL_51:
      Options = checkSkipCrosstoken(*(a1 + 80), *(a1 + 88), *(a1 + 96), (a1 + 144));
      if ((Options & 0x80000000) != 0)
      {
        goto LABEL_79;
      }

      if (*(a1 + 144))
      {
        Options = hlp_loadOptions(a1);
        if ((Options & 0x80000000) != 0)
        {
          goto LABEL_79;
        }
      }

      Options = hlp_loadOptionalHmogrphModels(a1);
      if ((Options & 0x80000000) != 0)
      {
        goto LABEL_79;
      }

      Options = hlp_loadNerOptions(a1);
      if ((Options & 0x80000000) != 0)
      {
        goto LABEL_79;
      }

      *(a1 + 200) = *a1;
      if (*(a1 + 188))
      {
        if (*(a1 + 480))
        {
          v43 = 0;
          v41 = 0u;
          v42 = 0u;
          Options = hlp_loadStatWordOptions(a1);
          if ((Options & 0x80000000) != 0)
          {
            goto LABEL_79;
          }

          Options = nn_word_lkp_GetInterface(1u, &v46);
          if ((Options & 0x80000000) != 0)
          {
            goto LABEL_79;
          }

          *(a1 + 280) = v46;
          *(a1 + 288) = safeh_GetNullHandle();
          *(a1 + 296) = v26;
          *(a1 + 304) = safeh_GetNullHandle();
          *(a1 + 312) = v27;
          Options = (*(v46 + 16))(*(a1 + 288), *(a1 + 296), "word", *(a1 + 8), *(a1 + 16), a1 + 304);
          if ((Options & 0x80000000) != 0)
          {
            goto LABEL_79;
          }

          v42 = *(a1 + 304);
          *(&v41 + 1) = v46;
          Options = objc_RegisterObject(*(*a1 + 48), "NNWRDLKP", &v41);
          if ((Options & 0x80000000) != 0)
          {
            goto LABEL_79;
          }

          goto LABEL_67;
        }

        if (*(a1 + 192))
        {
          Options = hlp_loadNNOptions(a1);
          if ((Options & 0x80000000) != 0)
          {
            goto LABEL_79;
          }

          if ((objc_GetObject(*(*a1 + 48), "NNCHRLKP", &v45) & 0x80000000) != 0)
          {
            Options = nn_word_lkp_GetInterface(1u, &v46);
            if ((Options & 0x80000000) != 0)
            {
              goto LABEL_79;
            }

            *(a1 + 280) = v46;
            *(a1 + 288) = safeh_GetNullHandle();
            *(a1 + 296) = v38;
            *(a1 + 304) = safeh_GetNullHandle();
            *(a1 + 312) = v39;
            Options = (*(v46 + 16))(*(a1 + 288), *(a1 + 296), *(a1 + 264), *(a1 + 8), *(a1 + 16), a1 + 304);
            if ((Options & 0x80000000) != 0)
            {
              goto LABEL_79;
            }
          }

          else
          {
            *(a1 + 280) = *(v45 + 8);
            *(a1 + 288) = safeh_GetNullHandle();
            *(a1 + 296) = v28;
            *(a1 + 304) = *(v45 + 16);
          }

LABEL_67:
          Options = fi_model_getBrokerString(*a1, v49);
          if ((Options & 0x80000000) == 0)
          {
            v29 = fi_init(*(a1 + 8), *(a1 + 16), *(a1 + 32), *(a1 + 40), &v44, 0, v49, "FINN", 1, 0);
            if ((v29 & 0x80000000) != 0)
            {
              v18 = v29;
              log_OutText(*(*a1 + 32), "FE_HMOGRPH", 5, 0, "create FI model failed", v30, v31, v32, v40);
              goto LABEL_80;
            }

            *(a1 + 240) = v44;
            goto LABEL_71;
          }

LABEL_79:
          v18 = Options;
          goto LABEL_80;
        }

        *(a1 + 240) = 0;
      }

LABEL_71:
      v33 = paramc_ParamGet(*(*a1 + 40), "numberoutputtranscriptions", &__s, 0);
      v34 = 0;
      if ((v33 & 0x80000000) == 0 && __s)
      {
        v34 = atoi(__s);
      }

      *(a1 + 138) = v34;
      v35 = (paramc_ParamGet(*(*a1 + 40), "mlset", &__s, 0) & 0x80000000) == 0 && strlen(__s) > 3;
      *(a1 + 140) = v35;
      Options = init_ner_struct(a1, (a1 + 392));
      goto LABEL_79;
    }

    if (*(a1 + 480))
    {
      v19 = *(a1 + 336);
      if (v19)
      {
        heap_Free(*(*a1 + 8), v19);
        *(a1 + 336) = 0;
      }
    }

    else
    {
      if (!*(a1 + 192))
      {
LABEL_44:
        if (*(a1 + 384))
        {
          v24 = *(a1 + 392);
          if (v24)
          {
            fi_deinit(*a1, *(a1 + 24), v24);
            *(a1 + 392) = 0;
          }

          v25 = *(a1 + 440);
          if (v25)
          {
            v46 = *(a1 + 440);
            (*(v25 + 24))(*(a1 + 464), *(a1 + 472));
            *(a1 + 440) = 0;
          }
        }

        if (*(a1 + 232))
        {
          stat_hmogrph_ModelDeinit(*a1, (a1 + 224), *(a1 + 232), v4, v5, v6, v7, v8);
        }

        goto LABEL_51;
      }

      v20 = *(a1 + 272);
      if (v20)
      {
        heap_Free(*(*a1 + 8), v20);
        *(a1 + 272) = 0;
      }

      v21 = *(a1 + 248);
      if (v21)
      {
        ssftmap_ObjClose(v21);
        *(a1 + 248) = 0;
      }

      v22 = *(a1 + 264);
      if (v22)
      {
        heap_Free(*(*a1 + 8), v22);
        *(a1 + 264) = 0;
      }
    }

    v23 = *(a1 + 240);
    if (v23)
    {
      fi_deinit(*a1, *(a1 + 24), v23);
      *(a1 + 240) = 0;
    }

    goto LABEL_44;
  }

  v18 = 2314215432;
LABEL_80:
  v36 = *MEMORY[0x1E69E9840];
  return v18;
}

uint64_t fe_hmogrph_ProcessStart(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 62342, 488);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2314215432;
  }
}

uint64_t fe_hmogrph_Process_StatHmogrph(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a4 = 1;
  log_OutText(*(*a1 + 32), "FE_HMOGRPH", 5, 0, "BEGIN fe_hmogrph_Process_StatHmogrph()", a6, a7, a8, 0);
  if (*(a1 + 480) == 1)
  {
    SentenceData = stat_hmogrph_disambiguateWords(a1, *(a1 + 48), a2, a3, a1 + 200);
LABEL_13:
    v18 = SentenceData;
    v19 = 0;
    goto LABEL_14;
  }

  if (!*(a1 + 384))
  {
    *(a1 + 400) = 0;
    goto LABEL_10;
  }

  v15 = *(a1 + 264);
  v16 = v15 && !strcmp(v15, "char");
  v17 = ner_process(*a1, a1 + 392, a2, a3, *(a1 + 48), *(a1 + 280), *(a1 + 304), *(a1 + 312), v16);
  if ((v17 & 0x80000000) == 0)
  {
LABEL_10:
    SentenceData = stat_hmogrph_getSentenceData(a1, *(a1 + 48), a2, a3, (a1 + 200));
    if ((SentenceData & 0x80000000) == 0)
    {
      SentenceData = stat_hmogrph_disambiguatePhons(a1, a1 + 200);
      if ((SentenceData & 0x80000000) == 0)
      {
        SentenceData = stat_hmogrph_updateLingdb(a1, *(a1 + 48), a2, a3, a1 + 200, a1 + 392);
      }
    }

    goto LABEL_13;
  }

  v18 = v17;
  v19 = 1;
LABEL_14:
  if (!(*(a1 + 480) | v19))
  {
    v20 = stat_hmogrph_freeSentenceData(a1 + 200);
    if (v18 > -1 && v20 < 0)
    {
      v18 = v20;
    }

    else
    {
      v18 = v18;
    }
  }

  if (*(a1 + 384))
  {
    v22 = ner_freeNEData(*a1, a1 + 392);
    if (v18 > -1 && v22 < 0)
    {
      v18 = v22;
    }

    else
    {
      v18 = v18;
    }
  }

  log_OutText(*(*a1 + 32), "FE_HMOGRPH", 5, 0, "END fe_hmogrph_Process_StatHmogrph()", v12, v13, v14, 0);
  return v18;
}

uint64_t checkCRFMDE(_WORD *a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v39 = *MEMORY[0x1E69E9840];
  *a4 = 0;
  __s = 0;
  v35 = 0;
  v36 = "";
  memset(v38, 0, sizeof(v38));
  if ((paramc_ParamGetStr(*(a3 + 40), "langcode", &__s) & 0x80000000) == 0 && (paramc_ParamGetStr(*(a3 + 40), "fecfg", &v36) & 0x80000000) == 0)
  {
    __strcat_chk();
    __strcat_chk();
    __strcat_chk();
    __strcat_chk();
    v8 = heap_Calloc(*(a3 + 8), 1, 1024);
    if (v8)
    {
      v13 = v8;
      v14 = brokeraux_ComposeBrokerString(a3, v38, 1, 1, __s, 0, 0, v8, 0x400uLL);
      v15 = strlen(__s);
      v16 = heap_Calloc(*(a3 + 8), 1, v15 + 1);
      if (v16)
      {
        v21 = v16;
        strcpy(v16, __s);
        if ((v14 & 0x80000000) == 0 && (ssftriff_reader_ObjOpen(a1, a2, 2, v13, "CRPH", 1031, &v35) & 0x80000000) == 0)
        {
          ssftriff_reader_ObjClose(v35, v22, v23, v24, v25, v26, v27, v28);
          *a4 = 1;
        }

        heap_Free(*(a3 + 8), v13);
        v29 = *(a3 + 8);
        v30 = v21;
      }

      else
      {
        log_OutPublic(*(a3 + 32), "FE_HMOGRPH", 37000, 0, v17, v18, v19, v20, v34);
        v29 = *(a3 + 8);
        v30 = v13;
      }

      heap_Free(v29, v30);
    }

    else
    {
      log_OutPublic(*(a3 + 32), "FE_HMOGRPH", 37000, 0, v9, v10, v11, v12, v33);
    }
  }

  v31 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t fe_hmogrph_Process(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v100 = *MEMORY[0x1E69E9840];
  v92 = 0;
  v90 = 0;
  v88 = 0;
  v89 = 0;
  if ((safeh_HandleCheck(a1, a2, 62342, 488) & 0x80000000) != 0)
  {
    v17 = 2314215432;
    goto LABEL_162;
  }

  __s = 0;
  v96 = 0;
  v97 = 0;
  v95 = 0;
  v94 = 0;
  v93 = 0;
  v91 = 0;
  *a5 = 1;
  checkCRFMDE(*(a1 + 8), *(a1 + 16), *a1, &v88);
  v9 = *(a1 + 88);
  v10 = *(a1 + 96);
  v11 = *(a1 + 80);
  *__s2 = 0;
  LOWORD(v87) = -1;
  LOBYTE(__c[0]) = 0;
  v12 = (*(v10 + 96))(v11, v9, "fecfg", "usecompound", __s2, &v87, __c);
  if ((v12 & 0x80000000) != 0)
  {
    goto LABEL_161;
  }

  v13 = 0;
  v14 = 1;
  if (v87 == 1 && *__s2)
  {
    v15 = **__s2;
    v16 = strchr(**__s2, LOBYTE(__c[0]));
    if (v16)
    {
      *v16 = 0;
      v15 = **__s2;
    }

    if (!strcmp("yes", v15) || !strcmp("YES", v15))
    {
      v14 = 0;
      v13 = 1;
    }

    else
    {
      v13 = 0;
    }
  }

  v17 = com_mosynt_UseMosynt(*(a1 + 80), *(a1 + 88), *(a1 + 96), &v89);
  if ((v17 & 0x80000000) != 0)
  {
    goto LABEL_162;
  }

  v21 = v89 ? v14 : 0;
  if (v21 == 1 && !*(a1 + 188))
  {
    goto LABEL_162;
  }

  v22 = *(a1 + 188);
  if ((v89 & ~v13) != 0)
  {
    if (!v22)
    {
      goto LABEL_23;
    }
  }

  else if (!v22)
  {
    goto LABEL_24;
  }

  log_OutText(*(*a1 + 32), "FE_HMOGRPH", 5, 0, "Stathmogrph Enabled", v18, v19, v20, 0);
  v17 = fe_hmogrph_Process_StatHmogrph(a1, a3, a4, a5, v23, v24, v25, v26);
  if ((v17 & 0x80000000) != 0)
  {
    log_OutText(*(*a1 + 32), "FE_HMOGRPH", 5, 0, "Stathmogrph Processing Failed", v27, v28, v29, 0);
    goto LABEL_162;
  }

LABEL_23:
  if (!*(a1 + 480))
  {
    goto LABEL_162;
  }

LABEL_24:
  v17 = (*(*(a1 + 48) + 104))(a3, a4, 1, 0, &v97 + 2);
  if ((v17 & 0x80000000) != 0)
  {
    goto LABEL_162;
  }

  if (((*(*(a1 + 48) + 184))(a3, a4, HIWORD(v97), 0, &v92) & 0x80000000) != 0)
  {
    goto LABEL_162;
  }

  if (v92 != 1)
  {
    goto LABEL_162;
  }

  v17 = (*(*(a1 + 48) + 176))(a3, a4, HIWORD(v97), 0, &__s, &v96 + 2);
  if ((v17 & 0x80000000) != 0)
  {
    goto LABEL_162;
  }

  v30 = HIWORD(v96);
  if (HIWORD(v96) < 2u)
  {
    goto LABEL_162;
  }

  *(a1 + 136) = 0;
  v12 = (*(*(a1 + 48) + 176))(a3, a4, HIWORD(v97), 1, &v91, &v90);
  if ((v12 & 0x80000000) != 0 || (v31 = *(v91 + 12), v12 = (*(*(a1 + 48) + 104))(a3, a4, 2, HIWORD(v97), &v97), (v12 & 0x80000000) != 0))
  {
LABEL_161:
    v17 = v12;
    goto LABEL_162;
  }

  v83 = v31;
  v84 = 0;
  v32 = 0;
  v33 = v30 - 1;
  v34 = 1;
  while (1)
  {
    v35 = *(a1 + 48);
    if (!v97)
    {
      break;
    }

    v12 = (*(v35 + 168))(a3, a4);
    if ((v12 & 0x80000000) != 0)
    {
      goto LABEL_161;
    }

    if (v94 == 4)
    {
      v12 = (*(*(a1 + 48) + 168))(a3, a4, v97, 1, 1, &v96, &v96 + 2);
      if ((v12 & 0x80000000) != 0)
      {
        goto LABEL_161;
      }

      v36 = v96;
      if (!v34 && v96 == v84)
      {
        v12 = (*(*(a1 + 48) + 168))(a3, a4, v97, 2, 1, &v95, &v96 + 2);
        if ((v12 & 0x80000000) != 0)
        {
          goto LABEL_161;
        }

        v37 = v96;
        v38 = __s;
        if (!v96)
        {
          goto LABEL_52;
        }

        v39 = 0;
        do
        {
          PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(v38, v37);
          v38 = __s;
          v41 = &__s[PreviousUtf8Offset];
          v42 = *v41;
          if (v42 == 95 || v42 == 32)
          {
            v43 = v41[1];
            if (v43 != 32 && v43 != 95)
            {
              ++v39;
            }
          }

          v37 = PreviousUtf8Offset;
        }

        while (v39 <= 3u && PreviousUtf8Offset);
        if (PreviousUtf8Offset)
        {
          NextUtf8Offset = utf8_GetNextUtf8Offset(__s, PreviousUtf8Offset);
          v38 = __s;
        }

        else
        {
LABEL_52:
          NextUtf8Offset = 0;
        }

        v46 = v95;
        if (v95 >= v33)
        {
          v52 = v95;
        }

        else
        {
          v47 = 0;
          do
          {
            v46 = utf8_GetNextUtf8Offset(v38, v46);
            v38 = __s;
            v48 = &__s[v46];
            v49 = *v48;
            if (v49 == 95 || v49 == 32)
            {
              v50 = *(v48 - 1);
              if (v50 != 32 && v50 != 95)
              {
                ++v47;
              }
            }
          }

          while (v47 <= 2u && v33 > v46);
          v52 = v46;
          v46 = v95;
        }

        v53 = v96;
        if (v32)
        {
          v12 = hlp_Disambiguate(a1, a3, a4, v38, v32, NextUtf8Offset, v52, v96, v46);
          if ((v12 & 0x80000000) != 0)
          {
            goto LABEL_161;
          }

          v38 = __s;
          v53 = v96;
          v46 = v95;
        }

        v12 = hlp_Disambiguate(a1, a3, a4, v38, v97, NextUtf8Offset, v52, v53, v46);
        if ((v12 & 0x80000000) != 0)
        {
          goto LABEL_161;
        }

        v32 = 0;
        v36 = v96;
      }

      if (v36 != v84 || v34 == 1)
      {
        v32 = v97;
      }

      v84 = v36;
      v34 = 0;
    }

    v17 = (*(*(a1 + 48) + 120))(a3, a4);
    if ((v17 & 0x80000000) != 0)
    {
      goto LABEL_162;
    }
  }

  v17 = (*(v35 + 104))(a3, a4, 2, HIWORD(v97), &v97);
  if ((v17 & 0x80000000) == 0)
  {
    v55 = v97;
    if (v97)
    {
      v56 = 0;
      v57 = 0;
      v80 = 0;
      v58 = 0;
      v81 = 1;
      v82 = 0;
      v85 = v88;
      v78 = 1;
      v79 = 0;
      v59 = 1;
      while (1)
      {
        v12 = (*(*(a1 + 48) + 168))(a3, a4, v55, 0, 1, &v94, &v96 + 2);
        if ((v12 & 0x80000000) != 0)
        {
          goto LABEL_161;
        }

        v12 = (*(*(a1 + 48) + 168))(a3, a4, v97, 1, 1, &v96, &v96 + 2);
        if ((v12 & 0x80000000) != 0)
        {
          goto LABEL_161;
        }

        if (v96 != v58 || v59 == 1)
        {
          v56 = 0;
        }

        if (v57 < v90)
        {
          v61 = v57;
          v62 = (v91 + 32 * v57 + 12);
          while (1)
          {
            v63 = (*v62 - v83);
            if ((v96 + 1) <= (*v62 - v83))
            {
              break;
            }

            if (*(v62 - 3) == 14 && v62[3] == 64)
            {
              v56 = 1;
            }

            ++v61;
            v62 += 8;
            if (v90 == v61)
            {
              v57 = v90;
              goto LABEL_101;
            }
          }

          v57 = v61;
        }

LABEL_101:
        if (v94 == 4)
        {
          goto LABEL_102;
        }

        v70 = v94 == 9;
        if (v94 == 9)
        {
          v71 = v13;
        }

        else
        {
          v71 = 0;
        }

        if (!v89)
        {
          v71 = 0;
        }

        if (v85 != 1)
        {
          v70 = 0;
        }

        if ((v71 & 1) != 0 || v70)
        {
LABEL_102:
          v12 = (*(*(a1 + 48) + 168))(a3, a4, v97, 7, 1, &v93, &v96 + 2);
          if ((v12 & 0x80000000) != 0)
          {
            goto LABEL_161;
          }

          if (v89)
          {
            v64 = v13;
          }

          else
          {
            v64 = 0;
          }

          if ((v64 & 1) != 0 || v85 == 1)
          {
            *__s2 = 0;
            v92 = 0;
            if (((*(*(a1 + 48) + 184))(a3, a4, v97, 17, &v92) & 0x80000000) == 0 && v92 == 1)
            {
              v12 = (*(*(a1 + 48) + 168))(a3, a4, v97, 17, 1, __s2, &v96 + 2);
              if ((v12 & 0x80000000) != 0)
              {
                goto LABEL_161;
              }
            }

            if (*__s2)
            {
              v65 = 0;
            }

            else
            {
              v65 = ~v93;
            }

            v93 = v65;
          }

          if (*(a1 + 480))
          {
            *__c = 0;
            v87 = 0;
            v12 = (*(*(a1 + 48) + 176))(a3, a4, v97, 5, &v87, &v96 + 2);
            if ((v12 & 0x80000000) != 0)
            {
              goto LABEL_161;
            }

            v12 = (*(*(a1 + 48) + 176))(a3, a4, v97, 14, __c, &v96 + 2);
            if ((v12 & 0x80000000) != 0)
            {
              goto LABEL_161;
            }

            strcpy(__s2, "POS:");
            __strcat_chk();
            __strcat_chk();
            v66 = *__c;
            v67 = strstr(*__c, __s2);
            if (v67 && (v67 == v66 || *(v67 - 1) == 59))
            {
              v93 += 100;
            }
          }

          v92 = 0;
          if (((*(*(a1 + 48) + 184))(a3, a4, v97, 9, &v92) & 0x80000000) == 0 && v92 == 1)
          {
            *__s2 = 0;
            v12 = (*(*(a1 + 48) + 176))(a3, a4, v97, 9, __s2, &v96 + 2);
            if ((v12 & 0x80000000) != 0)
            {
              goto LABEL_161;
            }

            v82 = **__s2;
          }

          if (v59 || v96 != v58)
          {
            v69 = 0;
            v59 = 0;
            v73 = v81;
            v72 = v82;
            if (!v82)
            {
              v72 = v81;
            }

            v79 = v82 == v81;
            LOWORD(v80) = v97;
            v58 = v96;
            HIDWORD(v80) = v93;
            v81 = v72;
            v78 = v73;
            goto LABEL_152;
          }

          if (v93 > HIDWORD(v80) || v93 == HIDWORD(v80) && !v79 && (v78 == 101 || v82 != 101))
          {
            v68 = v97;
            if (!v56)
            {
              goto LABEL_149;
            }
          }

          else
          {
            v68 = v97;
            if (v56)
            {
LABEL_149:
              v59 = 0;
              v74 = v82;
              if ((v82 & 0xFE) == 0)
              {
                v74 = 1;
              }

              HIDWORD(v80) = v93;
              v81 = v74;
              v69 = v80;
              v79 = v82 == v78;
              LOWORD(v80) = v68;
              goto LABEL_152;
            }
          }

          v59 = 0;
          v69 = v68;
        }

        else
        {
          v69 = 0;
        }

LABEL_152:
        v17 = (*(*(a1 + 48) + 120))(a3, a4);
        if ((v17 & 0x80000000) == 0)
        {
          if (!v69 || (*(a1 + 138) < 2u || !*(a1 + 140) ? (v75 = (*(*(a1 + 48) + 192))(a3, a4, v69)) : (*__s2 = 0, v94 = 16, v75 = (*(*(a1 + 48) + 160))(a3, a4, v69, 0, 1, &v94, __s2)), v17 = v75, (v75 & 0x80000000) == 0))
          {
            v55 = v97;
            if (v97)
            {
              continue;
            }
          }
        }

        break;
      }
    }
  }

LABEL_162:
  v76 = *MEMORY[0x1E69E9840];
  return v17;
}

uint64_t hlp_Disambiguate(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, unsigned int a6, unsigned int a7, int a8, unsigned __int16 a9)
{
  LODWORD(NextUtf8Offset) = a8;
  v14 = a3;
  v85 = *MEMORY[0x1E69E9840];
  v81 = xmmword_1C37BD742;
  v82 = unk_1C37BD752;
  v83 = xmmword_1C37BD762;
  v84 = unk_1C37BD772;
  strcpy(v77, "disambiguate_homographs");
  v78 = unk_1C37BD71A;
  v79 = xmmword_1C37BD722;
  v80 = unk_1C37BD732;
  v76 = 0;
  __s = 0;
  v74 = 0;
  __s1 = 0;
  v71 = 0;
  v72 = 0;
  v17 = (*(*(a1 + 48) + 104))(a2, a3, 1, 0, &v71);
  if ((v17 & 0x80000000) == 0 && ((*(*(a1 + 48) + 184))(a2, v14, a5, 4, &v76) & 0x80000000) == 0)
  {
    v69 = a7;
    v70 = a2;
    if (v76 == 1)
    {
      v17 = (*(*(a1 + 48) + 176))(a2, v14, a5, 4, &__s, &v72);
      if ((v17 & 0x80000000) == 0)
      {
        if (*__s)
        {
          v18 = (a7 - a6 + 14);
          if (v18 > *(a1 + 136))
          {
            v19 = heap_Realloc(*(*a1 + 8), *(a1 + 104), (a7 - a6 + 14));
            if (!v19 || (*(a1 + 104) = v19, (v24 = heap_Realloc(*(*a1 + 8), *(a1 + 112), v18)) == 0))
            {
              v17 = 2314215434;
              log_OutPublic(*(*a1 + 32), "FE_HMOGRPH", 37000, 0, v20, v21, v22, v23, v63);
              goto LABEL_50;
            }

            *(a1 + 112) = v24;
            *(a1 + 136) = a7 - a6 + 14;
          }

          **(a1 + 104) = 0;
          **(a1 + 112) = 0;
          v25 = (*(*(a1 + 48) + 104))(a2, v14, 2, v71, &v74 + 2);
          if ((v25 & 0x80000000) != 0)
          {
LABEL_49:
            v17 = v25;
            goto LABEL_50;
          }

          v29 = 0;
          LODWORD(PreviousUtf8Offset) = a9;
          v68 = a5;
          v67 = v14;
          while (1)
          {
            v31 = HIWORD(v74);
            if (!HIWORD(v74))
            {
              break;
            }

            if (HIWORD(v74) == a5)
            {
              v32 = &a4[NextUtf8Offset];
              for (i = (*(*(a1 + 96) + 128))(*(a1 + 80), *(a1 + 88), v32); i == 1; i = (*(*(a1 + 96) + 128))(*(a1 + 80), *(a1 + 88), &a4[NextUtf8Offset]))
              {
                NextUtf8Offset = utf8_GetNextUtf8Offset(a4, NextUtf8Offset);
                v32 = &a4[NextUtf8Offset];
              }

              do
              {
                PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(a4, PreviousUtf8Offset);
              }

              while ((*(*(a1 + 96) + 128))(*(a1 + 80), *(a1 + 88), &a4[PreviousUtf8Offset]) == 1);
              v34 = utf8_GetNextUtf8Offset(a4, PreviousUtf8Offset);
              v35 = &a4[a6];
              v36 = NextUtf8Offset - a6;
              strncat(*(a1 + 104), v35, v36);
              for (j = Utf8_LengthInUtf8chars(v35, v36); j; --j)
              {
                *(*(a1 + 112) + strlen(*(a1 + 112))) = 32;
              }

              a6 = v34;
              v38 = *(a1 + 104) + strlen(*(a1 + 104));
              *v38 = -22590;
              *(v38 + 2) = 0;
              strncat(*(a1 + 104), v32, v34 - NextUtf8Offset);
              v39 = Utf8_LengthInUtf8chars(v32, v34 - NextUtf8Offset);
              v40 = strlen(__s) <= v39 || v29 > 9;
              if (v40)
              {
                a5 = v29;
              }

              else
              {
                v41 = 1;
                do
                {
                  *(*(a1 + 104) + strlen(*(a1 + 104))) = 126;
                  a5 = (v29 + 1);
                  v40 = strlen(__s) - v39 > v41++;
                  v42 = !v40 || v29 >= 9;
                  LODWORD(v29) = v29 + 1;
                }

                while (!v42);
              }

              v43 = *(a1 + 104) + strlen(*(a1 + 104));
              *v43 = -22590;
              *(v43 + 2) = 0;
              v44 = *(a1 + 112) + strlen(*(a1 + 112));
              *v44 = -22590;
              *(v44 + 2) = 0;
              strcat(*(a1 + 112), __s);
              if (strlen(__s) < v39)
              {
                v45 = 0;
                do
                {
                  *(*(a1 + 112) + strlen(*(a1 + 112))) = 126;
                  ++v45;
                }

                while (v39 - strlen(__s) > v45);
              }

              v46 = *(a1 + 112) + strlen(*(a1 + 112));
              *v46 = -22590;
              *(v46 + 2) = 0;
              v31 = HIWORD(v74);
              LODWORD(PreviousUtf8Offset) = a6;
              v29 = a5;
              LODWORD(a5) = v68;
              v14 = v67;
            }

            v17 = (*(*(a1 + 48) + 120))(a2, v14, v31, &v74 + 2);
            if ((v17 & 0x80000000) != 0)
            {
              goto LABEL_50;
            }
          }

          if (a6 < v69)
          {
            v47 = &a4[a6];
            strncat(*(a1 + 104), v47, (v69 - a6));
            for (k = Utf8_LengthInUtf8chars(v47, v69 - a6); k; --k)
            {
              *(*(a1 + 112) + strlen(*(a1 + 112))) = 32;
            }
          }

          v49 = *(*a1 + 32);
          if (v29 > 9)
          {
            log_OutText(v49, "FE_HMOGRPH", 5, 0, "Homograph validation not OK", v26, v27, v28, v63);
            LOWORD(v74) = 0;
            v25 = (*(*(a1 + 48) + 160))(v70, v67, v68, 7, 1, &v74, &v71 + 2);
            goto LABEL_49;
          }

          v65 = *(a1 + 104);
          log_OutText(v49, "FE_HMOGRPH", 5, 0, "%s L1: %s", v26, v27, v28, v77);
          v50 = strlen(*(a1 + 104));
          v25 = (*(*(a1 + 72) + 120))(*(a1 + 56), *(a1 + 64), 0, *(a1 + 104), v50);
          if ((v25 & 0x80000000) != 0)
          {
            goto LABEL_49;
          }

          v66 = *(a1 + 112);
          log_OutText(*(*a1 + 32), "FE_HMOGRPH", 5, 0, "%s L2: %s", v51, v52, v53, v77);
          v54 = strlen(*(a1 + 112));
          v25 = (*(*(a1 + 72) + 120))(*(a1 + 56), *(a1 + 64), 1, *(a1 + 112), v54);
          if ((v25 & 0x80000000) != 0)
          {
            goto LABEL_49;
          }

          v25 = (*(*(a1 + 72) + 80))(*(a1 + 56), *(a1 + 64), v77);
          if ((v25 & 0x80000000) != 0)
          {
            goto LABEL_49;
          }

          v17 = (*(*(a1 + 72) + 128))(*(a1 + 56), *(a1 + 64), 0, &__s1, &v72 + 2);
          if ((v17 & 0x80000000) == 0)
          {
            __s1[HIWORD(v72)] = 0;
            log_OutText(*(*a1 + 32), "FE_HMOGRPH", 5, 0, "%s O1: %s", v55, v56, v57, v77);
            if (strstr(__s1, "§"))
            {
              log_OutText(*(*a1 + 32), "FE_HMOGRPH", 5, 0, "Homograph validation not OK", v58, v59, v60, v64);
              LOWORD(v74) = 0;
              v25 = (*(*(a1 + 48) + 160))(v70, v67, v68, 7, 1, &v74, &v71 + 2);
              goto LABEL_49;
            }
          }
        }
      }
    }
  }

LABEL_50:
  v61 = *MEMORY[0x1E69E9840];
  return v17;
}

uint64_t fe_hmogrph_ProcessEnd(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 62342, 488);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2314215432;
  }
}

uint64_t fe_hmogrph_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2314215425;
  }

  result = 0;
  *a2 = &IFeHmogrph;
  return result;
}

uint64_t fe_hmogrph_ClassOpen(_WORD *a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  if (!a3)
  {
    return 2314215431;
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  result = InitRsrcFunction(a1, a2, &v7);
  if ((result & 0x80000000) == 0)
  {
    *a3 = a1;
    *(a3 + 8) = a2;
  }

  return result;
}

uint64_t com_useStatHmogrph(uint64_t a1, _DWORD *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v9 = 0;
  memset(v10, 0, sizeof(v10));
  *a2 = 0;
  result = stat_hmogrph_getBrokerString(a1, v10, 0x100uLL);
  if ((result & 0x80000000) == 0)
  {
    if ((brk_DataOpenEx(*(a1 + 24), v10, 1, &v9) & 0x80000000) != 0)
    {
      log_OutText(*(a1 + 32), "FE_HMOGRPH", 5, 0, "Stathmogrph data not found", v5, v6, v7, 0);
    }

    else
    {
      *a2 = 1;
      result = brk_DataClose(*(a1 + 24), v9);
      if ((result & 0x80000000) != 0)
      {
        goto LABEL_7;
      }
    }

    result = 0;
  }

LABEL_7:
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t stat_hmogrph_getBrokerString(uint64_t a1, char *a2, unint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v9 = 0;
  *v10 = 0;
  memset(v11, 0, sizeof(v11));
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", v10);
  if ((result & 0x80000000) == 0)
  {
    result = paramc_ParamGetStr(*(a1 + 40), "fecfg", &v9);
    if ((result & 0x80000000) == 0)
    {
      __strcat_chk();
      __strcat_chk();
      __strcat_chk();
      __strcat_chk();
      v7 = brokeraux_ComposeBrokerString(a1, v11, 1, 1, *v10, 0, 0, a2, a3);
      result = v7 & (v7 >> 31);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t com_getUnicodeOrth(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v16 = *MEMORY[0x1E69E9840];
  *&__c[1] = -1;
  __c[0] = 0;
  *&__c[3] = 0;
  strcpy(v15, "stathmogrph_");
  __strcat_chk();
  v9 = (*(a1 + 96))(a2, a3, "fecfg", v15, &__c[3], &__c[1], __c);
  result = 0;
  if ((v9 & 0x80000000) == 0 && *&__c[1])
  {
    v11 = **&__c[3];
    v12 = strchr(**&__c[3], __c[0]);
    if (v12)
    {
      *v12 = 0;
      v11 = **&__c[3];
    }

    *a5 = v11;
    result = 1;
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t hlp_addWord(uint64_t a1, const char *a2, int a3, int a4, const char *a5, const char *a6, const char *a7, unsigned int a8, const char *a9, uint64_t *a10, const char *a11, const char *a12, uint64_t a13)
{
  v13 = a6;
  v15 = a4;
  v16 = a3;
  v18 = a1;
  if (*(a13 + 8))
  {
    v19 = *a13 + 48;
    v20 = *(a13 + 8);
    while (*(v19 - 40) != a3 || *(v19 - 38) != a4)
    {
      v19 += 64;
      if (!--v20)
      {
        goto LABEL_6;
      }
    }

    if (*(v19 + 8))
    {
      v36 = 0;
      v37 = *v19;
      while (1)
      {
        v38 = v37 + 16 * v36;
        v39 = a10;
        v40 = *a10 + 32 * v36;
        v41 = *(v40 + 8);
        v42 = *(v40 + 24);
        if (*(v38 + 10) > v42)
        {
          *(v38 + 10) = v42;
        }

        v43 = *(v38 + 8);
        v44 = v41 + v43;
        __srca = (v41 + v43);
        v45 = heap_Realloc(*(v18 + 8), *v38, 56 * __srca);
        if (!v45)
        {
          goto LABEL_61;
        }

        v37 = *v19;
        *(*v19 + 16 * v36) = v45;
        if (v43 < v44)
        {
          v46 = v43;
          v47 = v43;
          v98 = v43;
          do
          {
            v48 = *v39;
            if (v46)
            {
              v49 = v18;
              v50 = (v47 - v46);
              v51 = *(*(v48 + 32 * v36) + 8 * (v47 - v46));
              v52 = (*(v37 + 16 * v36) + 8);
              v53 = v46;
              while (strcmp(*(v52 - 1), v51))
              {
                v52 += 28;
                if (!--v53)
                {
                  v18 = v49;
                  v13 = a6;
                  v39 = a10;
                  goto LABEL_30;
                }
              }

              v64 = *(*(v48 + 32 * v36 + 16) + 2 * v50);
              if (*v52 > v64)
              {
                *v52 = v64;
              }

              v18 = v49;
              v13 = a6;
              v39 = a10;
            }

            else
            {
              v50 = (v47 - v46);
              v51 = *(*(v48 + 32 * v36) + 8 * (v47 - v46));
LABEL_30:
              v54 = strlen(v51);
              v55 = heap_Calloc(*(v18 + 8), 1, (v54 + 1));
              *(*(*v19 + 16 * v36) + 56 * *(*v19 + 16 * v36 + 8)) = v55;
              if (!v55)
              {
                goto LABEL_61;
              }

              strcpy(v55, *(*(*v39 + 32 * v36) + 8 * v50));
              *(*(*v19 + 16 * v36) + 56 * *(*v19 + 16 * v36 + 8) + 8) = *(*(*v39 + 32 * v36 + 16) + 2 * v50);
              v56 = strlen(a9);
              v57 = heap_Calloc(*(v18 + 8), 1, (v56 + 1));
              *(*(*v19 + 16 * v36) + 56 * *(*v19 + 16 * v36 + 8) + 16) = v57;
              if (!v57)
              {
                goto LABEL_61;
              }

              strcpy(v57, a9);
              v58 = strlen(a11);
              v59 = heap_Calloc(*(v18 + 8), 1, (v58 + 1));
              *(*(*v19 + 16 * v36) + 56 * *(*v19 + 16 * v36 + 8) + 24) = v59;
              if (!v59)
              {
                goto LABEL_61;
              }

              strcpy(v59, a11);
              v60 = strlen(a12);
              v61 = heap_Calloc(*(v18 + 8), 1, (v60 + 1));
              *(*(*v19 + 16 * v36) + 56 * *(*v19 + 16 * v36 + 8) + 32) = v61;
              if (!v61)
              {
                goto LABEL_61;
              }

              strcpy(v61, a12);
              v62 = strlen(v13);
              v63 = heap_Calloc(*(v18 + 8), 1, (v62 + 1));
              *(*(*v19 + 16 * v36) + 56 * *(*v19 + 16 * v36 + 8) + 40) = v63;
              if (!v63)
              {
                goto LABEL_61;
              }

              strcpy(v63, v13);
              v37 = *v19;
              ++*(*v19 + 16 * v36 + 8);
            }

            v46 = v98;
            ++v47;
          }

          while (v47 != __srca);
        }

        v65 = 0;
        if (++v36 >= *(v19 + 8))
        {
          return v65;
        }
      }
    }

    return 0;
  }

LABEL_6:
  v21 = *(a13 + 10);
  if (*(a13 + 10))
  {
    v22 = *a13;
    if (*(a13 + 8) + 2 <= v21)
    {
      __s = a9;
    }

    else
    {
      v23 = heap_Realloc(*(a1 + 8), v22, (v21 << 6) + 1280);
      if (!v23)
      {
        goto LABEL_61;
      }

      __s = a9;
      *a13 = v23;
      bzero((v23 + (*(a13 + 8) << 6)), 0x540uLL);
      *(a13 + 10) += 20;
      v22 = *a13;
    }
  }

  else
  {
    v28 = heap_Calloc(*(a1 + 8), 1, 3201);
    *a13 = v28;
    if (!v28)
    {
      goto LABEL_61;
    }

    v22 = v28;
    __s = a9;
    *(a13 + 10) = 50;
  }

  v29 = v22 + (*(a13 + 8) << 6);
  v30 = strlen(a2);
  v31 = heap_Calloc(*(v18 + 8), 1, (v30 + 4));
  *v29 = v31;
  if (v31)
  {
    strcpy(v31, a2);
    *(v29 + 32) = 0;
    *(v29 + 36) = hlp_doesWordEndInComma(a2);
    v32 = strlen(a2);
    v33 = heap_Calloc(*(v18 + 8), 1, (v32 + 4));
    *(v29 + 40) = v33;
    if (v33)
    {
      v34 = v33;
      if (*(v29 + 36) == 1)
      {
        v35 = strlen(*v29);
        strncpy(v34, *v29, (v35 - 1));
      }

      else
      {
        strcpy(v33, *v29);
      }

      v66 = strlen(a5);
      v67 = heap_Calloc(*(v18 + 8), 1, (v66 + 1));
      *(v29 + 16) = v67;
      if (v67)
      {
        v68 = a11;
        strcpy(v67, a5);
        v69 = heap_Calloc(*(v18 + 8), 1, a8 + 1);
        *(v29 + 24) = v69;
        if (v69)
        {
          strncpy(v69, a7, a8);
          v70 = a10;
          v71 = *(a10 + 4);
          *(v29 + 56) = v71;
          v72 = heap_Calloc(*(v18 + 8), v71, 16);
          *(v29 + 48) = v72;
          if (v72)
          {
            if (!*(a10 + 4))
            {
LABEL_60:
              v65 = 0;
              *(v29 + 8) = v16;
              *(v29 + 10) = v15;
              ++*(a13 + 8);
              return v65;
            }

            v73 = 0;
            v74 = *a10;
            v96 = v18;
            while (1)
            {
              v75 = v74 + 32 * v73;
              v76 = *(v75 + 8);
              v77 = *(v29 + 48) + 16 * v73;
              *(v77 + 8) = v76;
              *(v77 + 10) = *(v75 + 24);
              if (!v76)
              {
                return 0;
              }

              v78 = heap_Calloc(*(v18 + 8), v76, 56);
              v79 = 16 * v73;
              *(*(v29 + 48) + 16 * v73) = v78;
              if (!v78)
              {
                goto LABEL_65;
              }

              v74 = *v70;
              v80 = *v70 + 32 * v73;
              if (*(v80 + 8))
              {
                v81 = v73;
                v82 = 0;
                v83 = 0;
                v105 = v81;
                v99 = 32 * v81;
                while (1)
                {
                  v84 = strlen(*(*v80 + 8 * v83));
                  v85 = heap_Calloc(*(v96 + 8), 1, (v84 + 1));
                  *(*(*(v29 + 48) + v79) + v82) = v85;
                  if (!v85)
                  {
                    break;
                  }

                  strcpy(v85, *(*(*a10 + v99) + 8 * v83));
                  __srcb = v83;
                  *(*(*(v29 + 48) + v79) + v82 + 8) = *(*(*a10 + 32 * v105 + 16) + 2 * v83);
                  v86 = strlen(__s);
                  v87 = heap_Calloc(*(v96 + 8), 1, (v86 + 1));
                  *(*(*(v29 + 48) + v79) + v82 + 16) = v87;
                  if (!v87)
                  {
                    v65 = 2314215434;
                    v94 = *(v96 + 32);
                    goto LABEL_62;
                  }

                  strcpy(v87, __s);
                  v88 = strlen(v68);
                  v89 = heap_Calloc(*(v96 + 8), 1, (v88 + 1));
                  *(*(*(v29 + 48) + v79) + v82 + 24) = v89;
                  if (!v89)
                  {
                    break;
                  }

                  strcpy(v89, v68);
                  v90 = strlen(a12);
                  v91 = heap_Calloc(*(v96 + 8), 1, (v90 + 1));
                  *(*(*(v29 + 48) + v79) + v82 + 32) = v91;
                  if (!v91)
                  {
                    v65 = 2314215434;
                    v94 = *(v96 + 32);
                    goto LABEL_62;
                  }

                  strcpy(v91, a12);
                  v92 = strlen(v13);
                  v93 = heap_Calloc(*(v96 + 8), 1, (v92 + 1));
                  *(*(*(v29 + 48) + v79) + v82 + 40) = v93;
                  if (!v93)
                  {
                    break;
                  }

                  strcpy(v93, v13);
                  ++v83;
                  v74 = *a10;
                  v80 = *a10 + 32 * v105;
                  v82 += 56;
                  v68 = a11;
                  if ((__srcb + 1) >= *(v80 + 8))
                  {
                    v73 = v105;
                    v70 = a10;
                    goto LABEL_59;
                  }
                }

LABEL_65:
                v65 = 2314215434;
                v94 = *(v96 + 32);
                goto LABEL_62;
              }

LABEL_59:
              ++v73;
              v18 = v96;
              if (v73 >= *(v70 + 4))
              {
                goto LABEL_60;
              }
            }
          }
        }
      }
    }
  }

LABEL_61:
  v65 = 2314215434;
  v94 = *(v18 + 32);
LABEL_62:
  log_OutPublic(v94, "FE_HMOGRPH", 37000, 0, v24, v25, v26, v27, v96);
  return v65;
}

BOOL hlp_doesWordEndInComma(const char *a1)
{
  result = 0;
  if (a1)
  {
    v2 = strlen(a1);
    if (v2)
    {
      if (strstr(",.:?!;()", &a1[v2 - 1]))
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t hlp_do_add(uint64_t *a1, uint64_t a2, const char *a3, int a4, int a5, const char *a6, const char *a7, const char *a8, const char *a9, const char *a10, unsigned __int16 a11)
{
  if (!*(a2 + 8))
  {
    return 166731781;
  }

  v15 = heap_Calloc(*(*a1 + 8), 1, 16);
  if (v15)
  {
    v20 = v15;
    v21 = *(a2 + 8);
    *(v15 + 10) = v21;
    *(v15 + 8) = v21;
    v22 = heap_Calloc(*(*a1 + 8), v21, 32);
    *v20 = v22;
    if (v22)
    {
      v52 = a5;
      v53 = a6;
      if (!*(a2 + 8))
      {
LABEL_22:
        hlp_addWord(*a1, a3, a4, v52, a9, v53, a10, a11, a9, v20, a7, a8, (a1 + 1));
LABEL_26:
        stat_hmogrph_freeCandidatePhons(*a1, v20);
        heap_Free(*(*a1 + 8), v20);
        return 0;
      }

      v27 = 0;
      while (1)
      {
        v28 = *a2 + (v27 << 6);
        v31 = *(v28 + 48);
        v30 = (v28 + 48);
        v29 = v31;
        v32 = *(v31 + 10);
        v33 = (v22 + 32 * v27);
        v33[12] = v32;
        v34 = *(v31 + 8);
        if (*(v31 + 8))
        {
          v35 = 0;
          v36 = (*v29 + 8);
          do
          {
            v37 = *v36;
            v36 += 28;
            if (v37 == v32)
            {
              ++v35;
            }

            --v34;
          }

          while (v34);
        }

        else
        {
          v35 = 0;
        }

        v33[4] = v35;
        v33[5] = v35;
        v38 = heap_Calloc(*(*a1 + 8), v35, 8);
        v39 = *v20;
        *(*v20 + 32 * v27) = v38;
        v40 = *a1;
        if (!v38)
        {
          break;
        }

        v41 = heap_Calloc(*(v40 + 8), *(v39 + 32 * v27 + 10), 2);
        v22 = *v20;
        *(*v20 + 32 * v27 + 16) = v41;
        if (!v41)
        {
          goto LABEL_24;
        }

        v42 = *v30;
        if (*(*v30 + 4))
        {
          v43 = 0;
          v44 = 0;
          v45 = 0;
          v46 = *v42;
          do
          {
            if (*(v46 + v43 + 8) == *(v22 + 32 * v27 + 24))
            {
              v47 = strlen(*(v46 + v43));
              *(*(*v20 + 32 * v27) + 8 * v45) = heap_Alloc(*(*a1 + 8), (v47 + 1));
              v48 = *(*(*v20 + 32 * v27) + 8 * v45);
              if (!v48)
              {
                goto LABEL_24;
              }

              strcpy(v48, *(**v30 + v43));
              v42 = *v30;
              v46 = **v30;
              v22 = *v20;
              *(*(*v20 + 32 * v27 + 16) + 2 * v45++) = *(v46 + v43 + 8);
            }

            ++v44;
            v43 += 56;
          }

          while (v44 < *(v42 + 4));
        }

        if (++v27 >= *(a2 + 8))
        {
          goto LABEL_22;
        }
      }

      v50 = *(v40 + 32);
    }

    else
    {
LABEL_24:
      v50 = *(*a1 + 32);
    }

    log_OutPublic(v50, "FE_HMOGRPH", 37000, 0, v23, v24, v25, v26, v51);
    goto LABEL_26;
  }

  log_OutPublic(*(*a1 + 32), "FE_HMOGRPH", 37000, 0, v16, v17, v18, v19, v51);
  return 2314215434;
}

void *stat_hmogrph_freeCandidatePhons(void *result, uint64_t a2)
{
  v3 = *a2;
  if (v3)
  {
    v4 = result;
    if (*(a2 + 8))
    {
      v5 = 0;
      do
      {
        v6 = v3 + 32 * v5;
        v7 = *v6;
        if (*v6)
        {
          if (*(v6 + 8))
          {
            v8 = 0;
            do
            {
              if (*(*v6 + 8 * v8))
              {
                heap_Free(v4[1], *(*v6 + 8 * v8));
                *(*(*a2 + 32 * v5) + 8 * v8) = 0;
                v3 = *a2;
              }

              ++v8;
              v6 = v3 + 32 * v5;
            }

            while (v8 < *(v6 + 8));
            v7 = *v6;
          }

          heap_Free(v4[1], v7);
          v3 = *a2;
          *(*a2 + 32 * v5) = 0;
        }

        if (*(v3 + 32 * v5 + 16))
        {
          heap_Free(v4[1], *(v3 + 32 * v5 + 16));
          v3 = *a2;
          *(*a2 + 32 * v5 + 16) = 0;
        }

        ++v5;
      }

      while (v5 < *(a2 + 8));
    }

    result = heap_Free(v4[1], v3);
    *a2 = 0;
  }

  return result;
}

uint64_t hlp_prepare_phons(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, const char *a6, uint64_t a7, const char *a8, const char *a9, const char *a10, unsigned __int16 a11, unsigned __int16 a12, unsigned __int16 a13, const char *a14, const char *a15, unsigned __int16 a16)
{
  v97 = 0;
  v98 = 0;
  v94 = 0;
  v100[0] = 0;
  v24 = heap_Calloc(*(*a4 + 8), 1, 16);
  if (!v24)
  {
    v73 = 2314215434;
    log_OutPublic(*(*a4 + 32), "FE_HMOGRPH", 37000, 0, v25, v26, v27, v28, v82);
    return v73;
  }

  v29 = v24;
  v99 = 0;
  v96 = 0;
  v95 = 0;
  *(v24 + 8) = 65537;
  v30 = heap_Calloc(*(*a4 + 8), 1, 32);
  *v29 = v30;
  if (!v30 || (*(v30 + 8) = 0, v35 = strlen(a6), (v36 = heap_Calloc(*(*a4 + 8), 1, v35 + 1)) == 0))
  {
    v73 = 2314215434;
    log_OutPublic(*(*a4 + 32), "FE_HMOGRPH", 37000, 0, v31, v32, v33, v34, v82);
    v37 = 0;
    goto LABEL_60;
  }

  v37 = v36;
  v89 = a6;
  v38 = (*(*(a1 + 48) + 136))(a2, a3, a13, v100);
  if ((v38 & 0x80000000) != 0)
  {
    v73 = v38;
LABEL_60:
    if (*v29)
    {
      heap_Free(*(*a4 + 8), *v29);
    }

    heap_Free(*(*a4 + 8), v29);
    if (v37)
    {
      goto LABEL_85;
    }

    return v73;
  }

  v39 = v100[0];
  HIWORD(v96) = v100[0];
  v88 = v37;
  if (!v100[0])
  {
    v73 = 0;
    v74 = 0;
    goto LABEL_69;
  }

  v92 = 0;
  v90 = 0;
  v91 = 0;
  v93 = 0;
  v86 = a7 - 8;
  v85 = 1;
  v87 = 1;
  v83 = a5;
  v84 = a8;
  do
  {
    v40 = (*(*(a1 + 48) + 168))(a2, a3, v39, 0, 1, &v99, &v95);
    if ((v40 & 0x80000000) != 0)
    {
LABEL_66:
      v73 = v40;
      goto LABEL_67;
    }

    if (v99 != 17)
    {
      if (v97)
      {
        v43 = v93 == 1;
      }

      else
      {
        v43 = 0;
      }

      if (v43)
      {
        v40 = hlp_addWord(*a4, v37, HIWORD(v94), v94, v97, a8, a15, a16, a14, v29, a9, a10, a5);
        if ((v40 & 0x80000000) != 0)
        {
          goto LABEL_66;
        }

        v93 = 0;
      }

      goto LABEL_54;
    }

    v40 = (*(*(a1 + 48) + 168))(a2, a3, HIWORD(v96), 1, 1, &v94 + 2, &v95);
    if ((v40 & 0x80000000) != 0)
    {
      goto LABEL_66;
    }

    v40 = (*(*(a1 + 48) + 168))(a2, a3, HIWORD(v96), 2, 1, &v94, &v95);
    if ((v40 & 0x80000000) != 0)
    {
      goto LABEL_66;
    }

    v42 = v90;
    v41 = v91;
    if (HIWORD(v94) != v90 || v94 != v91)
    {
      if (v85)
      {
        v41 = v94;
        v42 = HIWORD(v94);
      }

      else
      {
        v40 = hlp_addWord(*a4, v37, v90, v91, v97, a8, a15, a16, a14, v29, a9, a10, a5);
        if ((v40 & 0x80000000) != 0)
        {
          goto LABEL_66;
        }

        ++v87;
        v42 = HIWORD(v94);
        v41 = v94;
      }

      v85 = 0;
      v44 = *v29;
      *(v44 + 8) = 0;
      *(v44 + 24) = -1;
      v93 = 1;
    }

    strncpy(v37, &v89[v42], v41 - v42);
    v37[v94 - HIWORD(v94)] = 0;
    if (HIWORD(v94) < a11 || v94 > a12)
    {
      break;
    }

    v90 = v42;
    v91 = v41;
    v45 = *(*v29 + 8);
    *(*v29 + 8) = v45 + 1;
    v40 = (*(*(a1 + 48) + 176))(a2, a3, HIWORD(v96), 3, &v98, &v95);
    if ((v40 & 0x80000000) != 0)
    {
      goto LABEL_66;
    }

    v40 = (*(*(a1 + 48) + 176))(a2, a3, HIWORD(v96), 5, &v97, &v95);
    if ((v40 & 0x80000000) != 0)
    {
      goto LABEL_66;
    }

    v40 = (*(*(a1 + 48) + 168))(a2, a3, HIWORD(v96), 7, 1, &v96, &v95);
    if ((v40 & 0x80000000) != 0)
    {
      goto LABEL_66;
    }

    v46 = *v29;
    v47 = *(*v29 + 10);
    if (*(*v29 + 10))
    {
      if (v45 + 1 >= v47)
      {
        v56 = heap_Realloc(*(*a4 + 8), *v46, 8 * v47 + 80);
        if (!v56 || (v57 = *v29, *v57 = v56, (v48 = heap_Realloc(*(*a4 + 8), *(v57 + 16), 2 * *(v57 + 10) + 20)) == 0))
        {
LABEL_87:
          v73 = 2314215434;
          v55 = *a4;
LABEL_90:
          log_OutPublic(*(v55 + 32), "FE_HMOGRPH", 37000, 0, v50, v51, v52, v53, v82);
          goto LABEL_67;
        }

        v46 = *v29;
        *(v46 + 16) = v48;
        *(v46 + 10) += 10;
      }

      else
      {
        v48 = *(v46 + 16);
      }
    }

    else
    {
      *(v46 + 10) = 10;
      v49 = heap_Calloc(*(*a4 + 8), 10, 8);
      v54 = *v29;
      **v29 = v49;
      v55 = *a4;
      if (!v49)
      {
        v73 = 2314215434;
        goto LABEL_90;
      }

      v48 = heap_Calloc(*(v55 + 8), *(v54 + 10), 2);
      v46 = *v29;
      *(*v29 + 16) = v48;
      if (!v48)
      {
        goto LABEL_87;
      }
    }

    if (v92 <= *(v46 + 8))
    {
      v58 = *(v46 + 8);
    }

    else
    {
      v58 = v92;
    }

    v92 = v58;
    v59 = v96;
    *(v48 + 2 * v45) = v96;
    if (*(v46 + 24) > v59)
    {
      *(v46 + 24) = v59;
    }

    v60 = *(v86 + 8 * v87);
    v61 = *v46;
    v62 = *(v61 + 8 * v45);
    if (v60)
    {
      if (!v62 || (v63 = strlen(*(v61 + 8 * v45)), v63 < strlen(v60)))
      {
        v64 = strlen(v60);
        v65 = heap_Realloc(*(*a4 + 8), v62, (v64 + 1));
        if (!v65)
        {
          goto LABEL_88;
        }

        *(**v29 + 8 * v45) = v65;
        v62 = *(**v29 + 8 * v45);
        v60 = *(v86 + 8 * v87);
      }

      goto LABEL_53;
    }

    v60 = v98;
    if (!v62 || (v70 = strlen(*(v61 + 8 * v45)), v70 < strlen(v98)))
    {
      v71 = strlen(v98);
      v72 = heap_Realloc(*(*a4 + 8), v62, (v71 + 1));
      if (v72)
      {
        *(**v29 + 8 * v45) = v72;
        v62 = *(**v29 + 8 * v45);
        v60 = v98;
        goto LABEL_53;
      }

LABEL_88:
      v73 = 2314215434;
      log_OutPublic(*(*a4 + 32), "FE_HMOGRPH", 37000, 0, v66, v67, v68, v69, v82);
      v37 = v88;
LABEL_67:
      v74 = v92;
      goto LABEL_69;
    }

LABEL_53:
    v37 = v88;
    strcpy(v62, v60);
    a5 = v83;
    a8 = v84;
LABEL_54:
    v40 = (*(*(a1 + 48) + 136))(a2, a3, HIWORD(v96), &v96 + 2);
    if ((v40 & 0x80000000) != 0)
    {
      goto LABEL_66;
    }

    v39 = HIWORD(v96);
  }

  while (HIWORD(v96));
  v73 = 0;
  if (!v97)
  {
    goto LABEL_67;
  }

  v74 = v92;
  if (v93 == 1)
  {
    v73 = hlp_addWord(*a4, v37, HIWORD(v94), v94, v97, a8, a15, a16, a14, v29, a9, a10, a5);
  }

LABEL_69:
  v75 = *a4;
  v76 = *v29;
  if (*v29)
  {
    if (*(v29 + 8))
    {
      v77 = 0;
      do
      {
        v78 = *(v76 + 32 * v77);
        if (v78)
        {
          if (v74)
          {
            v79 = 0;
            do
            {
              v80 = *(*(*v29 + 32 * v77) + v79);
              if (v80)
              {
                heap_Free(*(v75 + 8), v80);
                *(*(*v29 + 32 * v77) + v79) = 0;
              }

              v79 += 8;
            }

            while (8 * v74 != v79);
            v78 = *(*v29 + 32 * v77);
          }

          heap_Free(*(v75 + 8), v78);
          v76 = *v29;
          *(*v29 + 32 * v77) = 0;
        }

        if (*(v76 + 32 * v77 + 16))
        {
          heap_Free(*(v75 + 8), *(v76 + 32 * v77 + 16));
          v76 = *v29;
          *(*v29 + 32 * v77 + 16) = 0;
        }

        ++v77;
      }

      while (v77 < *(v29 + 8));
    }

    heap_Free(*(v75 + 8), v76);
    *v29 = 0;
    v75 = *a4;
    v37 = v88;
  }

  heap_Free(*(v75 + 8), v29);
LABEL_85:
  heap_Free(*(*a4 + 8), v37);
  return v73;
}

uint64_t hlp_merge_add(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, char *a6, const char *a7, const char *a8, const char *a9, unsigned __int16 a10, const char *a11, const char *a12, unsigned __int16 a13)
{
  __lasts = 0;
  v70 = 0;
  v68 = 0;
  v67 = 0;
  v21 = (*(*(a1 + 48) + 168))(a2, a3, a10, 1, 1, &v68, &v68 + 2);
  if ((v21 & 0x80000000) != 0)
  {
    return v21;
  }

  v21 = (*(*(a1 + 48) + 168))(a2, a3, a10, 2, 1, &v67, &v68 + 2);
  if ((v21 & 0x80000000) != 0)
  {
    return v21;
  }

  v21 = (*(*(a1 + 48) + 176))(a2, a3, a10, 3, &v70, &v68 + 2);
  if ((v21 & 0x80000000) != 0)
  {
    return v21;
  }

  __s = a6;
  ChineseUTFCharNum = utf8_GetChineseUTFCharNum(a5, v67);
  v64 = utf8_GetChineseUTFCharNum(a5, v68);
  v22 = heap_Calloc(*(*a4 + 8), 1, 16);
  v27 = *a4;
  if (v22)
  {
    v28 = v22;
    v62 = a5;
    v29 = *(v27 + 8);
    v30 = strlen(__s);
    v31 = heap_Calloc(v29, 1, (v30 + 4));
    v36 = *a4;
    if (v31)
    {
      __dst = v31;
      v61 = a7;
      v37 = (ChineseUTFCharNum - v64);
      v42 = heap_Calloc(*(v36 + 8), 1, 8 * v37);
      if (v42)
      {
        v59 = a8;
        v60 = v28;
        v43 = strtok_r(v70, ".", &__lasts);
        if (v43)
        {
          v44 = v43;
          v45 = 0;
          do
          {
            if (*v44 != 42 || v44[1])
            {
              v46 = strlen(v44);
              v47 = heap_Calloc(*(*a4 + 8), 1, (v46 + 1));
              *(v42 + 8 * v45) = v47;
              if (!v47)
              {
                v53 = 2314215434;
                log_OutPublic(*(*a4 + 32), "FE_HMOGRPH", 37000, 0, v48, v49, v50, v51, v56);
                v28 = v60;
                goto LABEL_23;
              }

              strcpy(v47, v44);
              *(*(v42 + 8 * v45) + strlen(v44)) = 0;
            }

            v44 = strtok_r(0, ".", &__lasts);
            ++v45;
          }

          while (v44);
        }

        strcpy(__dst, __s);
        v58 = v68;
        v57 = v67;
        v52 = hlp_prepare_phons(a1, a2, a3, a4, v60, v62, v42, v61, v59, a9, v68, v67, a10, a11, a12, a13);
        if ((v52 & 0x80000000) == 0)
        {
          v52 = hlp_do_add(a4, v60, __dst, v58, v57, v61, v59, a9, a11, a12, a13);
        }

        v53 = v52;
        v28 = v60;
      }

      else
      {
        v53 = 2314215434;
        log_OutPublic(*(*a4 + 32), "FE_HMOGRPH", 37000, 0, v38, v39, v40, v41, v56);
      }

LABEL_23:
      heap_Free(*(*a4 + 8), __dst);
      if (v42)
      {
        if (ChineseUTFCharNum != v64)
        {
          v55 = v42;
          do
          {
            if (*v55)
            {
              heap_Free(*(*a4 + 8), *v55);
              *v55 = 0;
            }

            ++v55;
            --v37;
          }

          while (v37);
        }

        heap_Free(*(*a4 + 8), v42);
      }
    }

    else
    {
      v53 = 2314215434;
      log_OutPublic(*(v36 + 32), "FE_HMOGRPH", 37000, 0, v32, v33, v34, v35, v56);
    }

    stat_hmogrph_freeNewSentData(a4, v28);
    heap_Free(*(*a4 + 8), v28);
  }

  else
  {
    v53 = 2314215434;
    log_OutPublic(*(v27 + 32), "FE_HMOGRPH", 37000, 0, v23, v24, v25, v26, v56);
  }

  return v53;
}

uint64_t stat_hmogrph_freeNewSentData(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 10))
  {
    v4 = 0;
    do
    {
      v5 = *a2 + (v4 << 6);
      if (*v5)
      {
        heap_Free(*(*a1 + 8), *v5);
        *v5 = 0;
      }

      v6 = *(v5 + 16);
      if (v6)
      {
        heap_Free(*(*a1 + 8), v6);
        *(v5 + 16) = 0;
      }

      v7 = *(v5 + 24);
      if (v7)
      {
        heap_Free(*(*a1 + 8), v7);
        *(v5 + 24) = 0;
      }

      v8 = *(v5 + 40);
      if (v8)
      {
        heap_Free(*(*a1 + 8), v8);
        *(v5 + 40) = 0;
      }

      v9 = *(v5 + 48);
      if (v9)
      {
        v10 = *(v5 + 56);
        if (v10)
        {
          for (i = 0; i < v10; ++i)
          {
            v12 = v9 + 16 * i;
            v13 = *v12;
            if (*v12)
            {
              if (*(v12 + 8))
              {
                v14 = 0;
                v15 = 0;
                do
                {
                  v16 = *(v13 + v14);
                  if (v16)
                  {
                    heap_Free(*(*a1 + 8), v16);
                    v9 = *(v5 + 48);
                    v13 = *(v9 + 16 * i);
                    *(v13 + v14) = 0;
                  }

                  v17 = *(v13 + v14 + 16);
                  if (v17)
                  {
                    heap_Free(*(*a1 + 8), v17);
                    v9 = *(v5 + 48);
                    v13 = *(v9 + 16 * i);
                    *(v13 + v14 + 16) = 0;
                  }

                  v18 = *(v13 + v14 + 24);
                  if (v18)
                  {
                    heap_Free(*(*a1 + 8), v18);
                    v9 = *(v5 + 48);
                    v13 = *(v9 + 16 * i);
                    *(v13 + v14 + 24) = 0;
                  }

                  v19 = *(v13 + v14 + 32);
                  if (v19)
                  {
                    heap_Free(*(*a1 + 8), v19);
                    v9 = *(v5 + 48);
                    v13 = *(v9 + 16 * i);
                    *(v13 + v14 + 32) = 0;
                  }

                  v20 = *(v13 + v14 + 40);
                  if (v20)
                  {
                    heap_Free(*(*a1 + 8), v20);
                    v9 = *(v5 + 48);
                    v13 = *(v9 + 16 * i);
                    *(v13 + v14 + 40) = 0;
                  }

                  ++v15;
                  v14 += 56;
                }

                while (v15 < *(v9 + 16 * i + 8));
              }

              heap_Free(*(*a1 + 8), v13);
              v9 = *(v5 + 48);
              *(v9 + 16 * i) = 0;
              v10 = *(v5 + 56);
            }
          }
        }

        heap_Free(*(*a1 + 8), v9);
        *(v5 + 48) = 0;
      }

      ++v4;
    }

    while (v4 < *(a2 + 10));
  }

  if (*a2)
  {
    heap_Free(*(*a1 + 8), *a2);
    *a2 = 0;
  }

  return 0;
}

uint64_t stat_hmogrph_getSentenceData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v116 = 0;
  *v117 = 0;
  v115 = 0;
  v113 = 0;
  v114 = 0;
  v112 = 0;
  v111 = 0;
  v109 = 0;
  v110 = 0;
  v107 = 0;
  v108 = 0;
  v105 = 0;
  v106 = 0;
  __s1 = 0;
  v102 = 0;
  a5[1] = 0;
  v10 = (a5 + 1);
  *(a5 + 4) = 0;
  v11 = (*(a2 + 104))(a3, a4, 1, 0, &v117[1]);
  if ((v11 & 0x80000000) != 0)
  {
    v12 = v11;
    goto LABEL_112;
  }

  v12 = (*(a2 + 184))(a3, a4, v117[1], 0, &v116);
  if ((v12 & 0x80000000) != 0 || v116 != 1 || (v12 = (*(a2 + 176))(a3, a4, v117[1], 0, &v115, &v116 + 2), (v12 & 0x80000000) != 0) || HIWORD(v116) < 2u)
  {
    if ((v12 & 0x80000000) != 0)
    {
      goto LABEL_112;
    }

    return v12;
  }

  log_OutText(*(*a5 + 32), "FE_HMOGRPH", 5, 0, "Stathmogrph: processing=%s", v13, v14, v15, v115);
  v16 = heap_Calloc(*(*a5 + 8), 1, 1024);
  if (!v16)
  {
    v12 = 2314215434;
    log_OutPublic(*(*a5 + 32), "FE_HMOGRPH", 37000, 0, v17, v18, v19, v20, v86);
    goto LABEL_112;
  }

  v21 = v16;
  v22 = strlen(v115);
  v27 = heap_Calloc(*(*a5 + 8), 1, (v22 + 1));
  if (!v27)
  {
    v12 = 2314215434;
    log_OutPublic(*(*a5 + 32), "FE_HMOGRPH", 37000, 0, v23, v24, v25, v26, v86);
    v97 = 0;
    LODWORD(v28) = 0;
    v99 = 0;
    v100 = 0;
    goto LABEL_147;
  }

  v12 = (*(a2 + 104))(a3, a4, 2, v117[1], v117);
  LODWORD(v28) = 0;
  v97 = 0;
  if ((v12 & 0x80000000) != 0)
  {
    v99 = 0;
    v100 = 0;
    goto LABEL_147;
  }

  v29 = v117[0];
  v99 = 0;
  v100 = 0;
  if (!v117[0])
  {
    goto LABEL_147;
  }

  v96 = 0;
  v90 = 0;
  v91 = a1;
  LODWORD(v28) = 0;
  v99 = 0;
  v100 = 0;
  while (1)
  {
    v101 = 0;
    v30 = (*(a2 + 168))(a3, a4, v29, 0, 1, &v113, &v116 + 2);
    if ((v30 & 0x80000000) != 0)
    {
      v97 = 0;
      goto LABEL_121;
    }

    if (v113 > 0xA || ((1 << v113) & 0x610) == 0)
    {
      goto LABEL_105;
    }

    v30 = (*(a2 + 168))(a3, a4, v117[0], 1, 1, &v112 + 2, &v116 + 2);
    if ((v30 & 0x80000000) != 0 || (v30 = (*(a2 + 168))(a3, a4, v117[0], 2, 1, &v112, &v116 + 2), (v30 & 0x80000000) != 0))
    {
LABEL_117:
      v97 = 0;
      LODWORD(v28) = 0;
      goto LABEL_119;
    }

    if (HIWORD(v112) > v112)
    {
      v97 = 0;
      LODWORD(v28) = 0;
      v99 = 0;
      v100 = 0;
      v85 = 16049;
      goto LABEL_137;
    }

    strncpy(v27, &v115[HIWORD(v112)], v112 - HIWORD(v112));
    v27[v112 - HIWORD(v112)] = 0;
    v30 = (*(a2 + 184))(a3, a4, v117[0], 14, &v116);
    if ((v30 & 0x80000000) != 0)
    {
      goto LABEL_117;
    }

    if (v116 == 1)
    {
      v30 = (*(a2 + 176))(a3, a4, v117[0], 14, &v110, &v116 + 2);
      if ((v30 & 0x80000000) != 0)
      {
        goto LABEL_117;
      }

      hlp_NLUStrFind(v110, "POS", &v106, &v114 + 1);
      v32 = v110;
      if (strstr(v110, "POI"))
      {
        LOWORD(v114) = 0;
        hlp_NLUStrFind(v32, "S_POI", &v105, &v114);
        v33 = v114;
        if (!v114)
        {
          hlp_NLUStrFind(v110, "I_POI", &v105, &v114);
          v33 = v114;
          if (!v114)
          {
            hlp_NLUStrFind(v110, "E_POI", &v105, &v114);
            v33 = v114;
          }
        }

        v34 = v105;
        if (!v33)
        {
          v34 = "";
        }

        v105 = v34;
        if (v33)
        {
          v35 = 4;
        }

        else
        {
          v35 = 3;
        }

        v93 = v33 + v35 + 1;
        v36 = heap_Calloc(*(*a5 + 8), 1, v93);
        v28 = v36;
        if (!v36)
        {
LABEL_126:
          v97 = 0;
          goto LABEL_132;
        }

        if (v33)
        {
          v37 = "_";
        }

        else
        {
          v37 = "";
        }

        *v36 = 0;
        *&v36[strlen(v36)] = 6909808;
        v38 = strcat(v28, v37);
        strncat(v38, v105, v114);
        a1 = v91;
        v39 = v28;
      }

      else
      {
        v93 = 0;
        v39 = 0;
        a1 = v91;
      }
    }

    else
    {
      v93 = 0;
      v39 = 0;
    }

    v92 = v106;
    if (v106)
    {
      LODWORD(v28) = 0;
      if (v39)
      {
        goto LABEL_45;
      }

LABEL_43:
      v41 = heap_Calloc(*(*a5 + 8), 1, 2);
      if (!v41)
      {
        goto LABEL_126;
      }

      v39 = v41;
      LOWORD(v114) = 1;
      *v41 = 61;
      goto LABEL_45;
    }

    LODWORD(v28) = 1;
    v40 = heap_Calloc(*(*a5 + 8), 1, 2);
    v106 = v40;
    if (!v40)
    {
      v97 = v39;
LABEL_132:
      v99 = 0;
      goto LABEL_135;
    }

    *v40 = 61;
    v106[1] = 0;
    LODWORD(v28) = 1;
    if (!v39)
    {
      goto LABEL_43;
    }

LABEL_45:
    v30 = (*(*(a1 + 48) + 176))(a3, a4, v117[0], 6, &v108, &v116 + 2);
    if ((v30 & 0x80000000) != 0 || (v30 = (*(*(a1 + 48) + 176))(a3, a4, v117[0], 9, &v107, &v116 + 2), (v30 & 0x80000000) != 0) || (v30 = (*(a2 + 184))(a3, a4, v117[0], 4, &v116), (v30 & 0x80000000) != 0) || v116 == 1 && (v30 = (*(a2 + 176))(a3, a4, v117[0], 4, &v109, &v116 + 2), (v30 & 0x80000000) != 0))
    {
      v97 = v39;
LABEL_119:
      v99 = 0;
LABEL_120:
      v100 = 0;
LABEL_121:
      v12 = v30;
      goto LABEL_145;
    }

    v89 = v109;
    if (v109)
    {
      v99 = 0;
      goto LABEL_54;
    }

    v42 = heap_Calloc(*(*a5 + 8), 1, 2);
    v109 = v42;
    if (!v42)
    {
      v99 = 1;
      v97 = v39;
LABEL_135:
      v100 = 0;
      goto LABEL_136;
    }

    *v42 = 61;
    v109[1] = 0;
    v99 = 1;
LABEL_54:
    v30 = (*(a2 + 176))(a3, a4, v117[0], 5, &v102, &v116 + 2);
    if ((v30 & 0x80000000) != 0)
    {
      v97 = v39;
      goto LABEL_120;
    }

    v88 = v102;
    if (v102)
    {
      v100 = 0;
      goto LABEL_59;
    }

    v43 = heap_Calloc(*(*a5 + 8), 1, 2);
    v102 = v43;
    if (!v43)
    {
      break;
    }

    *v43 = 61;
    v102[1] = 0;
    v100 = 1;
LABEL_59:
    if (*(a1 + 144) && v113 == 9 && utf8_IsChineseLetter(v27))
    {
      v30 = hlp_merge_add(a1, a3, a4, a5, v115, v27, v109, v108, v107, v117[0], v102, v39, v93);
      if ((v30 & 0x80000000) != 0)
      {
        v97 = v39;
        goto LABEL_121;
      }
    }

    else
    {
      __s = v27;
      v87 = v21;
      v44 = heap_Calloc(*(*a5 + 8), 1, 16);
      v97 = v39;
      if (!v44)
      {
        log_OutPublic(*(*a5 + 32), "FE_HMOGRPH", 37000, 0, v45, v46, v47, v48, v86);
        goto LABEL_136;
      }

      v49 = v44;
      v95 = v28;
      *(v44 + 8) = 655360;
      v50 = heap_Calloc(*(*a5 + 8), 10, 32);
      *v49 = v50;
      if (!v50)
      {
        v60 = 0;
        v56 = v96;
        goto LABEL_141;
      }

      v55 = (*(a2 + 176))(a3, a4, v117[0], 3, &__s1, &v116 + 2);
      v56 = v96;
      if ((v55 & 0x80000000) != 0)
      {
        v60 = 0;
LABEL_130:
        v12 = v55;
        goto LABEL_142;
      }

      v57 = __s1;
      if (strstr(__s1, "[SVOX]"))
      {
        v57 += 6;
        __s1 = v57;
      }

      v58 = strlen(v57);
      v59 = heap_Alloc(*(*a5 + 8), v58 + 1);
      v60 = v59;
      if (!v59)
      {
        goto LABEL_141;
      }

      strcpy(v59, __s1);
      v61 = strlen(__s1);
      if (v61 >= v90)
      {
        if ((v61 + 1) <= 4u)
        {
          v62 = 4;
        }

        else
        {
          v62 = (v61 + 1);
        }

        v90 = v62;
        v63 = heap_Realloc(*(*a5 + 8), v96, v62);
        if (!v63)
        {
          goto LABEL_141;
        }

        v56 = v63;
      }

      v55 = (*(a2 + 168))(a3, a4, v117[0], 7, 1, &v111, &v116 + 2);
      if ((v55 & 0x80000000) != 0)
      {
        goto LABEL_130;
      }

      v94 = v60;
      v96 = v56;
      v64 = 0;
      if (strlen(__s))
      {
        NextUtf8Offset = 0;
        v66 = __s;
        LODWORD(v28) = v95;
        while ((utf8_getUTF8Char(v66, NextUtf8Offset, v103) & 0x80000000) == 0)
        {
          v67 = *(v49 + 10);
          v56 = v96;
          v60 = v94;
          if (*(v49 + 8) >= v67)
          {
            v68 = heap_Realloc(*(*a5 + 8), *v49, 32 * v67 + 320);
            if (!v68)
            {
              goto LABEL_141;
            }

            *v49 = v68;
            *(v49 + 10) += 10;
          }

          if (!hlp_getPhonFromPhonStr(__s, NextUtf8Offset, v94, v96, &v101))
          {
            goto LABEL_90;
          }

          *(*v49 + 32 * *(v49 + 8) + 8) = 65537;
          v69 = heap_Calloc(*(*a5 + 8), 1, 2);
          v70 = *v49;
          *(*v49 + 32 * *(v49 + 8) + 16) = v69;
          if (!v69)
          {
            goto LABEL_141;
          }

          v71 = v111;
          *v69 = v111;
          *(v70 + 32 * *(v49 + 8) + 24) = v71;
          v72 = heap_Alloc(*(*a5 + 8), 8);
          *(*v49 + 32 * *(v49 + 8)) = v72;
          if (!v72)
          {
            goto LABEL_141;
          }

          v73 = strlen(v96) + 1;
          v74 = heap_Alloc(*(*a5 + 8), v73);
          v75 = 32 * *(v49 + 8);
          **(*v49 + v75) = v74;
          v76 = **(*v49 + v75);
          if (!v76)
          {
            goto LABEL_140;
          }

          v64 += v73;
          strcpy(v76, v96);
          v77 = *(v49 + 8) + 1;
          *(v49 + 8) = v77;
          if (v101 == 1)
          {
            LODWORD(v28) = v95;
            goto LABEL_92;
          }

          v66 = __s;
          NextUtf8Offset = utf8_GetNextUtf8Offset(__s, NextUtf8Offset);
          LODWORD(v28) = v95;
          if (NextUtf8Offset >= strlen(__s))
          {
            break;
          }
        }
      }

      else
      {
LABEL_90:
        LODWORD(v28) = v95;
      }

      v77 = *(v49 + 8);
LABEL_92:
      if (v77)
      {
        v78 = strlen(__s1);
        if (v64 < v78 + 1)
        {
          v79 = **(*v49 + 32 * (v77 - 1));
          v80 = strlen(v79);
          v81 = heap_Realloc(*(*a5 + 8), v79, v78 - v64 + v80 + 2);
          if (!v81)
          {
            v56 = v96;
LABEL_140:
            v60 = v94;
LABEL_141:
            log_OutPublic(*(*a5 + 32), "FE_HMOGRPH", 37000, 0, v51, v52, v53, v54, v86);
            v12 = 2314215434;
LABEL_142:
            v96 = v56;
            stat_hmogrph_freeCandidatePhons(*a5, v49);
            heap_Free(*(*a5 + 8), v49);
            if (v60)
            {
              heap_Free(*(*a5 + 8), v60);
            }

            v21 = v87;
            v27 = __s;
            LODWORD(v28) = v95;
            goto LABEL_145;
          }

          v82 = *(v49 + 8);
          **(*v49 + 32 * v82 - 32) = v81;
          strcat(**(*v49 + 32 * v82 - 32), &__s1[v64 - 1]);
        }
      }

      v39 = v97;
      v83 = hlp_addWord(*a5, __s, HIWORD(v112), v112, v106, v109, v97, v93, v102, v49, v108, v107, v10);
      stat_hmogrph_freeCandidatePhons(*a5, v49);
      heap_Free(*(*a5 + 8), v49);
      heap_Free(*(*a5 + 8), v94);
      if ((v83 & 0x80000000) != 0)
      {
        v12 = v83;
        v21 = v87;
        v27 = __s;
        goto LABEL_145;
      }

      v21 = v87;
      v27 = __s;
      a1 = v91;
    }

    if (!v92)
    {
      heap_Free(*(*a5 + 8), v106);
      v106 = 0;
    }

    heap_Free(*(*a5 + 8), v39);
    if (!v89)
    {
      heap_Free(*(*a5 + 8), v109);
      v109 = 0;
    }

    if (v88)
    {
      v100 = 0;
    }

    else
    {
      heap_Free(*(*a5 + 8), v102);
      v102 = 0;
      v100 = 1;
    }

LABEL_105:
    v12 = (*(a2 + 120))(a3, a4, v117[0], v117);
    if ((v12 & 0x80000000) == 0)
    {
      v29 = v117[0];
      if (v117[0])
      {
        continue;
      }
    }

    v97 = 0;
    goto LABEL_145;
  }

  v100 = 1;
  v97 = v39;
LABEL_136:
  v85 = 8202;
LABEL_137:
  v12 = v85 | 0x89F00000;
LABEL_145:
  if (v96)
  {
    heap_Free(*(*a5 + 8), v96);
  }

LABEL_147:
  heap_Free(*(*a5 + 8), v21);
  if (v27)
  {
    heap_Free(*(*a5 + 8), v27);
  }

  if ((v12 & 0x80000000) != 0)
  {
    if (v28 == 1)
    {
      heap_Free(*(*a5 + 8), v106);
      v106 = 0;
    }

    if (v97)
    {
      heap_Free(*(*a5 + 8), v97);
    }

    if (v99 == 1)
    {
      heap_Free(*(*a5 + 8), v109);
      v109 = 0;
    }

    if (v100 == 1)
    {
      heap_Free(*(*a5 + 8), v102);
      v102 = 0;
    }

LABEL_112:
    stat_hmogrph_freeSentenceData(a5);
  }

  return v12;
}

uint64_t hlp_getPhonFromPhonStr(char *a1, unsigned int a2, char *a3, char *a4, _DWORD *a5)
{
  result = 0;
  v13 = a2;
  if (a4 && a5)
  {
    v12 = 0;
    *a5 = 0;
    if (utf8_Utf8CharTo16bit(a1, &v12) && v12 - 40960 <= 0xFFFFADFF)
    {
      strcpy(a4, a3);
      result = 1;
      *a5 = 1;
    }

    else
    {
      utf8_GetPreviousValidUtf8Offset(a1, &v13);
      if (v13)
      {
        NextUtf8Offset = 0;
        while (1)
        {
          NextUtf8Offset = utf8_GetNextUtf8Offset(a1, NextUtf8Offset);
          result = strchr(a3, 46);
          if (!result)
          {
            break;
          }

          if (*result == 46)
          {
            a3 = (result + 1);
          }

          else
          {
            a3 = result;
          }

          if (NextUtf8Offset == v13)
          {
            goto LABEL_13;
          }
        }
      }

      else
      {
LABEL_13:
        for (NextUtf8Offset = 0; ; ++NextUtf8Offset)
        {
          v11 = a3[NextUtf8Offset];
          if (!a3[NextUtf8Offset] || v11 == 46)
          {
            break;
          }

          a4[NextUtf8Offset] = v11;
          if (NextUtf8Offset && v11 == 125 && a4[NextUtf8Offset - 1] - 48 <= 9)
          {
            a3[NextUtf8Offset++] = 46;
            break;
          }
        }

        result = 1;
      }

      a4[NextUtf8Offset] = 0;
    }
  }

  return result;
}

uint64_t stat_hmogrph_freeSentenceData(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 16))
    {
      v2 = 0;
      do
      {
        v3 = *(a1 + 8) + (v2 << 6);
        if (*v3)
        {
          heap_Free(*(*a1 + 8), *v3);
          *v3 = 0;
        }

        v4 = *(v3 + 16);
        if (v4)
        {
          heap_Free(*(*a1 + 8), v4);
          *(v3 + 16) = 0;
        }

        v5 = *(v3 + 24);
        if (v5)
        {
          heap_Free(*(*a1 + 8), v5);
          *(v3 + 24) = 0;
        }

        v6 = *(v3 + 40);
        if (v6)
        {
          heap_Free(*(*a1 + 8), v6);
          *(v3 + 40) = 0;
        }

        v7 = *(v3 + 48);
        if (v7)
        {
          v8 = *(v3 + 56);
          if (v8)
          {
            for (i = 0; i < v8; ++i)
            {
              v10 = v7 + 16 * i;
              v11 = *v10;
              if (*v10)
              {
                if (*(v10 + 8))
                {
                  v12 = 0;
                  v13 = 0;
                  do
                  {
                    v14 = *(v11 + v12);
                    if (v14)
                    {
                      heap_Free(*(*a1 + 8), v14);
                      v7 = *(v3 + 48);
                      v11 = *(v7 + 16 * i);
                      *(v11 + v12) = 0;
                    }

                    v15 = *(v11 + v12 + 16);
                    if (v15)
                    {
                      heap_Free(*(*a1 + 8), v15);
                      v7 = *(v3 + 48);
                      v11 = *(v7 + 16 * i);
                      *(v11 + v12 + 16) = 0;
                    }

                    v16 = *(v11 + v12 + 24);
                    if (v16)
                    {
                      heap_Free(*(*a1 + 8), v16);
                      v7 = *(v3 + 48);
                      v11 = *(v7 + 16 * i);
                      *(v11 + v12 + 24) = 0;
                    }

                    v17 = *(v11 + v12 + 32);
                    if (v17)
                    {
                      heap_Free(*(*a1 + 8), v17);
                      v7 = *(v3 + 48);
                      v11 = *(v7 + 16 * i);
                      *(v11 + v12 + 32) = 0;
                    }

                    v18 = *(v11 + v12 + 40);
                    if (v18)
                    {
                      heap_Free(*(*a1 + 8), v18);
                      v7 = *(v3 + 48);
                      v11 = *(v7 + 16 * i);
                      *(v11 + v12 + 40) = 0;
                    }

                    ++v13;
                    v12 += 56;
                  }

                  while (v13 < *(v7 + 16 * i + 8));
                }

                heap_Free(*(*a1 + 8), v11);
                v7 = *(v3 + 48);
                *(v7 + 16 * i) = 0;
                v8 = *(v3 + 56);
              }
            }
          }

          heap_Free(*(*a1 + 8), v7);
          *(v3 + 48) = 0;
        }

        ++v2;
      }

      while (v2 < *(a1 + 16));
    }

    v19 = *(a1 + 8);
    if (v19)
    {
      heap_Free(*(*a1 + 8), v19);
    }

    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  return 0;
}

uint64_t hlp_initFeatureVector(uint64_t a1, void *a2, unsigned int a3)
{
  if (!a3)
  {
    return 0;
  }

  v5 = a3;
  while (1)
  {
    v6 = heap_Calloc(*(a1 + 8), 1, 65);
    *a2 = v6;
    if (!v6)
    {
      break;
    }

    *v6 = 61;
    ++a2;
    if (!--v5)
    {
      return 0;
    }
  }

  log_OutPublic(*(a1 + 32), "FE_HMOGRPH", 37000, 0, v7, v8, v9, v10, v12);
  return 2314215434;
}

uint64_t hlp_isFeatureRequired(uint64_t a1, unsigned int a2, int a3, unsigned __int16 *a4)
{
  if (a2 < 2)
  {
    return 0;
  }

  v6 = 0;
  v7 = g_featureNames[a3];
  v8 = (a2 - 1);
  while (strcmp(*(a1 + 8 * v6), v7))
  {
    if (v8 <= ++v6)
    {
      return 0;
    }
  }

  *a4 = v6;
  return 1;
}

uint64_t hlp_setFeature(uint64_t a1, uint64_t a2, unsigned int a3, int a4, uint64_t a5, const char *a6)
{
  v18 = -1;
  result = hlp_isFeatureRequired(a2, a3, a4, &v18);
  if (result)
  {
    if (!*a6)
    {
      result = 0;
      **(a5 + 8 * v18) = 61;
      return result;
    }

    v10 = v18;
    if (strlen(a6) <= 0x40)
    {
      v12 = *(a5 + 8 * v18);
    }

    else
    {
      v11 = strlen(a6);
      v12 = heap_Realloc(*(a1 + 8), *(a5 + 8 * v18), (v11 + 1));
      if (!v12)
      {
        log_OutPublic(*(a1 + 32), "FE_HMOGRPH", 37000, 0, v13, v14, v15, v16, v17);
        return 2314215434;
      }

      *(a5 + 8 * v10) = v12;
    }

    strcpy(v12, a6);
    return 0;
  }

  return result;
}

uint64_t hlp_wordStrLowerCase(char *a1, char *a2)
{
  *&__s[3] = 0;
  *__s = 0;
  *a2 = 0;
  if ((utf8_getUTF8Char(a1, 0, __s) & 0x80000000) == 0)
  {
    NextUtf8Offset = 0;
    do
    {
      if (strlen(a1) <= NextUtf8Offset)
      {
        break;
      }

      if (strlen(__s) == 1 && __s[0] - 65 <= 0x19)
      {
        a2[NextUtf8Offset] = __s[0] | 0x20;
      }

      else
      {
        strcat(a2, __s);
      }

      NextUtf8Offset = utf8_GetNextUtf8Offset(a1, NextUtf8Offset);
    }

    while ((utf8_getUTF8Char(a1, NextUtf8Offset, __s) & 0x80000000) == 0);
  }

  return 0;
}

uint64_t feat_character(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, int a5, const char *a6, char *a7)
{
  v11 = *a2;
  v12 = a3;
  v13 = strlen(*(*a2 + (a3 << 6)));
  v37 = v12;
  v14 = 0;
  if (a3)
  {
    v15 = v11;
    do
    {
      v16 = *v15;
      v15 += 8;
      v14 += strlen(v16);
      --v12;
    }

    while (v12);
  }

  v17 = *(a2 + 8);
  if (v17 <= (a3 + 1))
  {
    v18 = 0;
  }

  else
  {
    v18 = 0;
    v19 = (a3 + 1);
    v20 = &v11[8 * v19];
    v21 = v19 + 1;
    do
    {
      v22 = *v20;
      v20 += 8;
      v18 += strlen(v22);
      v23 = v17 == v21++;
    }

    while (!v23);
  }

  v24 = heap_Calloc(*(a1 + 8), 1, (v13 + v14 + v18 + 1));
  if (!v24)
  {
    log_OutPublic(*(a1 + 32), "FE_HMOGRPH", 37000, 0, v25, v26, v27, v28, v37);
    return 2314215434;
  }

  v29 = v24;
  if (!*(a2 + 8))
  {
    goto LABEL_27;
  }

  v30 = 0;
  v31 = 0;
  NextUtf8Offset = v14 + a4;
  do
  {
    strcat(v29, *(*a2 + v30));
    ++v31;
    v33 = *(a2 + 8);
    v30 += 64;
  }

  while (v31 < v33);
  if (v33 <= a3 || strlen(*(*a2 + (v37 << 6))) <= a4)
  {
    goto LABEL_27;
  }

  if (a5 < 0)
  {
    if (!NextUtf8Offset)
    {
      goto LABEL_27;
    }

    do
    {
      PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(v29, NextUtf8Offset);
      NextUtf8Offset = PreviousUtf8Offset;
      v23 = ~a5 == 0;
      LOWORD(a5) = a5 + 1;
    }

    while (!v23 && PreviousUtf8Offset);
    if (a5)
    {
      goto LABEL_27;
    }
  }

  else if (a5)
  {
    while (NextUtf8Offset != strlen(v29))
    {
      NextUtf8Offset = utf8_GetNextUtf8Offset(v29, NextUtf8Offset);
      v34 = a5--;
      if (v34 <= 1)
      {
        goto LABEL_26;
      }
    }

    goto LABEL_27;
  }

LABEL_26:
  if ((utf8_getUTF8Char(v29, NextUtf8Offset, a7) & 0x80000000) != 0)
  {
LABEL_27:
    strcpy(a7, a6);
  }

  heap_Free(*(a1 + 8), v29);
  return 0;
}

uint64_t feat_colloc(unsigned __int16 *a1, unsigned int a2, char *__s1)
{
  v4 = a2;
  if (a2)
  {
    v6 = *a1;
    if (!strcmp(__s1, *(*a1 + 40)))
    {
      v11 = 76;
      v10 = 66;
      goto LABEL_12;
    }

    v7 = 0;
    v8 = (v6 + 104);
    while (v4 - 1 != v7)
    {
      v9 = *v8;
      v8 += 8;
      ++v7;
      if (!strcmp(__s1, v9))
      {
        if (v7 >= v4)
        {
          v10 = 82;
        }

        else
        {
          v10 = 66;
        }

        v11 = 76;
        goto LABEL_12;
      }
    }
  }

  v11 = 78;
  v10 = 82;
LABEL_12:
  v12 = a1[4];
  while (1)
  {
    LOWORD(v4) = v4 + 1;
    if (v12 <= v4)
    {
      break;
    }

    if (!strcmp(__s1, *(*a1 + (v4 << 6) + 40)))
    {
      return v10;
    }
  }

  return v11;
}

char *feat_wordbeg(uint64_t a1, int a2, int a3, char *__src, char *__dst)
{
  v5 = (a3 + a2);
  if (a3 + a2 < 0 || v5 >= *(a1 + 8))
  {
    return strcpy(__dst, __src);
  }

  else
  {
    return utf8_getUTF8Char(*(*a1 + (v5 << 6) + 40), 0, __dst);
  }
}

char *feat_wordend(uint64_t a1, int a2, int a3, char *__src, char *__dst)
{
  v6 = (a3 + a2);
  if (a3 + a2 < 0 || v6 >= *(a1 + 8))
  {

    return strcpy(__dst, __src);
  }

  else
  {
    v7 = *(*a1 + (v6 << 6) + 40);
    v8 = strlen(v7);

    return utf8_GetUtf8Symbol(v7, v8 - 1, v8, __dst);
  }
}

char *feat_wordlc(uint64_t a1, int a2, int a3, char *__src, char *__dst)
{
  *__dst = 0;
  v5 = (a3 + a2);
  if (a3 + a2 < 0 || v5 >= *(a1 + 8))
  {
    return strcpy(__dst, __src);
  }

  else
  {
    return hlp_wordStrLowerCase(*(*a1 + (v5 << 6) + 40), __dst);
  }
}

char *feat_wordlen(uint64_t a1, int a2, int a3, char *__src, char *__dst)
{
  *__dst = 0;
  v6 = (a3 + a2);
  if (a3 + a2 < 0 || v6 >= *(a1 + 8))
  {

    return strcpy(__dst, __src);
  }

  else
  {
    v7 = Utf8_Utf8NbrOfSymbols(*(*a1 + (v6 << 6) + 40));
    return sprintf(__dst, "%d", v7 - 1);
  }
}

uint64_t feat_pos(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v8 = a3 + a2;
  if (a3 <= 0)
  {
    v9 = a3 + a2;
  }

  else
  {
    v9 = a2;
  }

  LOWORD(v10) = v9;
  if (a3 <= 0)
  {
    v8 = a2;
  }

  v11 = v8 - 1;
  if (v9 > v11)
  {
LABEL_12:
    v13 = (a3 + a2);
    if (a3 + a2 >= 0 && v13 < *(a1 + 8))
    {
      return *(*a1 + (v13 << 6) + 16);
    }
  }

  else
  {
    v12 = v11;
    while ((v10 & 0x8000) != 0 || *(a1 + 8) <= v10 || !hlp_doesWordEndInComma(*(*a1 + (v10 << 6))))
    {
      v10 = (v10 + 1);
      if (v10 > v12)
      {
        goto LABEL_12;
      }
    }
  }

  return a4;
}

uint64_t feat_matchprevpos(uint64_t *a1, unsigned int a2, char *__s2, uint64_t a4)
{
  if (a2)
  {
    v6 = *a1;
    v7 = a2 - 1;
    v8 = a2 - 1;
    while (1)
    {
      v9 = v6 + (v7 << 6);
      if (!strcmp(*(v9 + 16), __s2))
      {
        break;
      }

      --v7;
      if (!v8--)
      {
        return a4;
      }
    }

    return *(v9 + 40);
  }

  return a4;
}

uint64_t feat_mosyntpos(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v4 = (a3 + a2);
  if (a3 + a2 >= 0 && v4 < *(a1 + 8))
  {
    v5 = *a1 + (v4 << 6);
    v6 = *(v5 + 56);
    if (*(v5 + 56))
    {
      for (i = (*(v5 + 48) + 8); *i != 1; i += 8)
      {
        if (!--v6)
        {
          return a4;
        }
      }

      return *(*(i - 1) + 16);
    }
  }

  return a4;
}

uint64_t hlp_setFeatureVector(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned __int16 *a5, unsigned int a6, unsigned int a7, char **a8, unsigned __int16 a9, uint64_t a10)
{
  v144 = 0;
  v18 = heap_Calloc(*(a1 + 8), 1, 2048);
  if (v18)
  {
    v23 = v18;
    v142 = a6;
    v143 = a7;
    v141 = a8;
    if (a4 < 2)
    {
      v26 = 0;
LABEL_9:
      if (!hlp_isFeatureRequired(a3, a4, 11, &v144) || (!a6 || (v27 = a6 - 1, v27 >= a5[4]) ? (v28 = "=") : (v28 = *(*a5 + (v27 << 6) + 40)), v26 = hlp_setFeature(a1, a3, a4, 11, a2, v28), (v26 & 0x80000000) == 0))
      {
        if (!hlp_isFeatureRequired(a3, a4, 10, &v144) || ((v35 = a6 - 2, a6 < 2) || v35 >= a5[4] ? (v36 = "=") : (v36 = *(*a5 + (v35 << 6) + 40)), v26 = hlp_setFeature(a1, a3, a4, 10, a2, v36), (v26 & 0x80000000) == 0))
        {
          if (!hlp_isFeatureRequired(a3, a4, 9, &v144) || ((v37 = a6 - 3, a6 < 3) || v37 >= a5[4] ? (v38 = "=") : (v38 = *(*a5 + (v37 << 6) + 40)), v26 = hlp_setFeature(a1, a3, a4, 9, a2, v38), (v26 & 0x80000000) == 0))
          {
            if (!hlp_isFeatureRequired(a3, a4, 8, &v144) || ((v39 = a6 - 4, a6 < 4) || v39 >= a5[4] ? (v40 = "=") : (v40 = *(*a5 + (v39 << 6) + 40)), v26 = hlp_setFeature(a1, a3, a4, 8, a2, v40), (v26 & 0x80000000) == 0))
            {
              if (!hlp_isFeatureRequired(a3, a4, 7, &v144) || ((v41 = a6 - 5, a6 < 5) || v41 >= a5[4] ? (v42 = "=") : (v42 = *(*a5 + (v41 << 6) + 40)), v26 = hlp_setFeature(a1, a3, a4, 7, a2, v42), (v26 & 0x80000000) == 0))
              {
                if (!hlp_isFeatureRequired(a3, a4, 15, &v144) || ((v50 = a6 + 1, v50 >= a5[4]) ? (v51 = "=") : (v51 = *(*a5 + (v50 << 6) + 40)), v26 = hlp_setFeature(a1, a3, a4, 15, a2, v51), (v26 & 0x80000000) == 0))
                {
                  if (!hlp_isFeatureRequired(a3, a4, 16, &v144) || ((v64 = a6 + 2, v64 >= a5[4]) ? (v65 = "=") : (v65 = *(*a5 + (v64 << 6) + 40)), v26 = hlp_setFeature(a1, a3, a4, 16, a2, v65), (v26 & 0x80000000) == 0))
                  {
                    if (!hlp_isFeatureRequired(a3, a4, 17, &v144) || ((v72 = a6 + 3, v72 >= a5[4]) ? (v73 = "=") : (v73 = *(*a5 + (v72 << 6) + 40)), v26 = hlp_setFeature(a1, a3, a4, 17, a2, v73), (v26 & 0x80000000) == 0))
                    {
                      if (!hlp_isFeatureRequired(a3, a4, 18, &v144) || ((v80 = a6 + 4, v80 >= a5[4]) ? (v81 = "=") : (v81 = *(*a5 + (v80 << 6) + 40)), v26 = hlp_setFeature(a1, a3, a4, 18, a2, v81), (v26 & 0x80000000) == 0))
                      {
                        if (!hlp_isFeatureRequired(a3, a4, 19, &v144) || ((v88 = a6 + 5, v88 >= a5[4]) ? (v89 = "=") : (v89 = *(*a5 + (v88 << 6) + 40)), v26 = hlp_setFeature(a1, a3, a4, 19, a2, v89), (v26 & 0x80000000) == 0))
                        {
                          if (!hlp_isFeatureRequired(a3, a4, 23, &v144) || (v92 = feat_pos(a5, a6, 0, "="), v26 = hlp_setFeature(a1, a3, a4, 23, a2, v92), (v26 & 0x80000000) == 0))
                          {
                            if (!hlp_isFeatureRequired(a3, a4, 22, &v144) || (v93 = feat_pos(a5, a6, -1, "="), v26 = hlp_setFeature(a1, a3, a4, 22, a2, v93), (v26 & 0x80000000) == 0))
                            {
                              if (!hlp_isFeatureRequired(a3, a4, 21, &v144) || (v94 = feat_pos(a5, a6, -2, "="), v26 = hlp_setFeature(a1, a3, a4, 21, a2, v94), (v26 & 0x80000000) == 0))
                              {
                                if (!hlp_isFeatureRequired(a3, a4, 20, &v144) || (v95 = feat_pos(a5, a6, -3, "="), v26 = hlp_setFeature(a1, a3, a4, 20, a2, v95), (v26 & 0x80000000) == 0))
                                {
                                  if (!hlp_isFeatureRequired(a3, a4, 24, &v144) || (v96 = feat_pos(a5, a6, 1, "="), v26 = hlp_setFeature(a1, a3, a4, 24, a2, v96), (v26 & 0x80000000) == 0))
                                  {
                                    if (!hlp_isFeatureRequired(a3, a4, 25, &v144) || (v97 = feat_pos(a5, a6, 2, "="), v26 = hlp_setFeature(a1, a3, a4, 25, a2, v97), (v26 & 0x80000000) == 0))
                                    {
                                      if (!hlp_isFeatureRequired(a3, a4, 26, &v144) || (v98 = feat_pos(a5, a6, 3, "="), v26 = hlp_setFeature(a1, a3, a4, 26, a2, v98), (v26 & 0x80000000) == 0))
                                      {
                                        if (!hlp_isFeatureRequired(a3, a4, 27, &v144) || (v99 = feat_mosyntpos(a5, a6, -1, "="), v26 = hlp_setFeature(a1, a3, a4, 27, a2, v99), (v26 & 0x80000000) == 0))
                                        {
                                          if (!hlp_isFeatureRequired(a3, a4, 28, &v144) || (v100 = feat_mosyntpos(a5, a6, 1, "="), v26 = hlp_setFeature(a1, a3, a4, 28, a2, v100), (v26 & 0x80000000) == 0))
                                          {
                                            if (!hlp_isFeatureRequired(a3, a4, 29, &v144) || (v101 = feat_matchprevpos(a5, a6, "n", "="), v26 = hlp_setFeature(a1, a3, a4, 29, a2, v101), (v26 & 0x80000000) == 0))
                                            {
                                              if (!hlp_isFeatureRequired(a3, a4, 30, &v144))
                                              {
                                                goto LABEL_267;
                                              }

                                              v102 = a5[4];
                                              v103 = a6 + 1;
                                              if (v102 <= (a6 + 1))
                                              {
                                                v104 = "=";
                                              }

                                              else
                                              {
                                                v104 = "=";
                                                while (1)
                                                {
                                                  v105 = *a5 + (v103 << 6);
                                                  v106 = *(v105 + 16);
                                                  if (*v106 == 110 && !v106[1])
                                                  {
                                                    break;
                                                  }

                                                  if (v102 <= ++v103)
                                                  {
                                                    goto LABEL_173;
                                                  }
                                                }

                                                v104 = *(v105 + 40);
                                              }

LABEL_173:
                                              v26 = hlp_setFeature(a1, a3, a4, 30, a2, v104);
                                              if ((v26 & 0x80000000) == 0)
                                              {
LABEL_267:
                                                if (!hlp_isFeatureRequired(a3, a4, 31, &v144) || (v109 = feat_matchprevpos(a5, a6, "v", "="), v26 = hlp_setFeature(a1, a3, a4, 31, a2, v109), (v26 & 0x80000000) == 0))
                                                {
                                                  if (!hlp_isFeatureRequired(a3, a4, 32, &v144))
                                                  {
                                                    goto LABEL_268;
                                                  }

                                                  v110 = a5[4];
                                                  v111 = a6 + 1;
                                                  if (v110 <= (a6 + 1))
                                                  {
                                                    v112 = "=";
                                                  }

                                                  else
                                                  {
                                                    v112 = "=";
                                                    while (1)
                                                    {
                                                      v113 = *a5 + (v111 << 6);
                                                      v114 = *(v113 + 16);
                                                      if (*v114 == 118 && !v114[1])
                                                      {
                                                        break;
                                                      }

                                                      if (v110 <= ++v111)
                                                      {
                                                        goto LABEL_185;
                                                      }
                                                    }

                                                    v112 = *(v113 + 40);
                                                  }

LABEL_185:
                                                  v26 = hlp_setFeature(a1, a3, a4, 32, a2, v112);
                                                  if ((v26 & 0x80000000) == 0)
                                                  {
LABEL_268:
                                                    if (!hlp_isFeatureRequired(a3, a4, 33, &v144))
                                                    {
                                                      goto LABEL_269;
                                                    }

                                                    v115 = a6;
                                                    v116 = a2;
                                                    *v23 = 0;
                                                    v117 = 0xFFFF;
                                                    do
                                                    {
                                                      v118 = strlen(v23);
                                                      v119 = v117;
                                                      feat_wordlen(a5, v115, v117++, "=", &v23[v118]);
                                                    }

                                                    while (v119 < 1);
                                                    a2 = v116;
                                                    v26 = hlp_setFeature(a1, a3, a4, 33, v116, v23);
                                                    a6 = v115;
                                                    if ((v26 & 0x80000000) == 0)
                                                    {
LABEL_269:
                                                      if (!hlp_isFeatureRequired(a3, a4, 34, &v144))
                                                      {
                                                        goto LABEL_270;
                                                      }

                                                      *v23 = 0;
                                                      v120 = v141;
                                                      if (a9)
                                                      {
                                                        v121 = 0;
                                                        for (i = a9 - 1; ; --i)
                                                        {
                                                          v123 = a2;
                                                          if (v121)
                                                          {
                                                            *&v23[strlen(v23)] = 32;
                                                          }

                                                          v124 = strlen(v23);
                                                          v125 = feat_colloc(a5, v142, *v120);
                                                          v126 = &v23[v124];
                                                          *v126 = v125;
                                                          v126[1] = 0;
                                                          a2 = v123;
                                                          if (!i)
                                                          {
                                                            break;
                                                          }

                                                          v121 = *v23;
                                                          ++v120;
                                                        }
                                                      }

                                                      v26 = hlp_setFeature(a1, a3, a4, 34, a2, v23);
                                                      a6 = v142;
                                                      if ((v26 & 0x80000000) == 0)
                                                      {
LABEL_270:
                                                        if (!hlp_isFeatureRequired(a3, a4, 35, &v144) || (v143 + 1 < 2 ? (v127 = a6 == 0) : (v127 = 0), !v127 ? (v128 = "SI") : (v128 = "SB"), v26 = hlp_setFeature(a1, a3, a4, 35, a2, v128), (v26 & 0x80000000) == 0))
                                                        {
                                                          if (!hlp_isFeatureRequired(a3, a4, 38, &v144) || (feat_wordbeg(a5, a6, 0, "=", v23), v26 = hlp_setFeature(a1, a3, a4, 38, a2, v23), (v26 & 0x80000000) == 0))
                                                          {
                                                            if (!hlp_isFeatureRequired(a3, a4, 43, &v144) || (feat_wordend(a5, a6, 0, "=", v23), v26 = hlp_setFeature(a1, a3, a4, 43, a2, v23), (v26 & 0x80000000) == 0))
                                                            {
                                                              if (!hlp_isFeatureRequired(a3, a4, 37, &v144) || (feat_wordbeg(a5, a6, -1, "=", v23), v26 = hlp_setFeature(a1, a3, a4, 37, a2, v23), (v26 & 0x80000000) == 0))
                                                              {
                                                                if (!hlp_isFeatureRequired(a3, a4, 42, &v144) || (feat_wordend(a5, a6, -1, "=", v23), v26 = hlp_setFeature(a1, a3, a4, 42, a2, v23), (v26 & 0x80000000) == 0))
                                                                {
                                                                  if (!hlp_isFeatureRequired(a3, a4, 39, &v144) || (feat_wordbeg(a5, a6, 1, "=", v23), v26 = hlp_setFeature(a1, a3, a4, 39, a2, v23), (v26 & 0x80000000) == 0))
                                                                  {
                                                                    if (!hlp_isFeatureRequired(a3, a4, 44, &v144) || (feat_wordend(a5, a6, 1, "=", v23), v26 = hlp_setFeature(a1, a3, a4, 44, a2, v23), (v26 & 0x80000000) == 0))
                                                                    {
                                                                      if (!hlp_isFeatureRequired(a3, a4, 36, &v144) || (feat_wordbeg(a5, a6, -2, "=", v23), v26 = hlp_setFeature(a1, a3, a4, 36, a2, v23), (v26 & 0x80000000) == 0))
                                                                      {
                                                                        if (!hlp_isFeatureRequired(a3, a4, 41, &v144) || (feat_wordend(a5, a6, -2, "=", v23), v26 = hlp_setFeature(a1, a3, a4, 41, a2, v23), (v26 & 0x80000000) == 0))
                                                                        {
                                                                          if (!hlp_isFeatureRequired(a3, a4, 40, &v144) || (feat_wordbeg(a5, a6, 2, "=", v23), v26 = hlp_setFeature(a1, a3, a4, 40, a2, v23), (v26 & 0x80000000) == 0))
                                                                          {
                                                                            if (!hlp_isFeatureRequired(a3, a4, 45, &v144) || (feat_wordend(a5, a6, 2, "=", v23), v26 = hlp_setFeature(a1, a3, a4, 45, a2, v23), (v26 & 0x80000000) == 0))
                                                                            {
                                                                              if (!hlp_isFeatureRequired(a3, a4, 46, &v144) || (v26 = hlp_setFeature(a1, a3, a4, 46, a2, "="), (v26 & 0x80000000) == 0))
                                                                              {
                                                                                if (!hlp_isFeatureRequired(a3, a4, 47, &v144) || (v26 = hlp_setFeature(a1, a3, a4, 47, a2, "="), (v26 & 0x80000000) == 0))
                                                                                {
                                                                                  if (!hlp_isFeatureRequired(a3, a4, 48, &v144) || (v26 = hlp_setFeature(a1, a3, a4, 48, a2, "="), (v26 & 0x80000000) == 0))
                                                                                  {
                                                                                    if (!hlp_isFeatureRequired(a3, a4, 49, &v144) || ((v129 = *(a10 + 8)) == 0 || v142 - 2 >= *(a10 + 16) ? (v130 = "=") : (v130 = (v129 + 40 * (v142 - 2) + 30)), v26 = hlp_setFeature(a1, a3, a4, 49, a2, v130), (v26 & 0x80000000) == 0))
                                                                                    {
                                                                                      if (!hlp_isFeatureRequired(a3, a4, 50, &v144) || ((v131 = *(a10 + 8)) == 0 || v142 - 1 >= *(a10 + 16) ? (v132 = "=") : (v132 = (v131 + 40 * (v142 - 1) + 30)), v26 = hlp_setFeature(a1, a3, a4, 50, a2, v132), (v26 & 0x80000000) == 0))
                                                                                      {
                                                                                        if (!hlp_isFeatureRequired(a3, a4, 51, &v144) || ((v133 = *(a10 + 8)) == 0 || *(a10 + 16) <= v142 ? (v134 = "=") : (v134 = (v133 + 40 * v142 + 30)), v26 = hlp_setFeature(a1, a3, a4, 51, a2, v134), (v26 & 0x80000000) == 0))
                                                                                        {
                                                                                          if (!hlp_isFeatureRequired(a3, a4, 52, &v144) || ((v135 = *(a10 + 8)) == 0 || v142 + 1 >= *(a10 + 16) ? (v136 = "=") : (v136 = (v135 + 40 * (v142 + 1) + 30)), v26 = hlp_setFeature(a1, a3, a4, 52, a2, v136), (v26 & 0x80000000) == 0))
                                                                                          {
                                                                                            if (hlp_isFeatureRequired(a3, a4, 53, &v144))
                                                                                            {
                                                                                              v137 = *(a10 + 8);
                                                                                              if (v137 && v142 + 2 < *(a10 + 16))
                                                                                              {
                                                                                                v138 = (v137 + 40 * (v142 + 2) + 30);
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                v138 = "=";
                                                                                              }

                                                                                              v31 = hlp_setFeature(a1, a3, a4, 53, a2, v138);
LABEL_262:
                                                                                              v26 = v31;
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
              }
            }
          }
        }
      }
    }

    else
    {
      v24 = 0;
      v25 = (a4 - 1);
      while (strcmp(*(a3 + 8 * v24), "char0"))
      {
        if (v25 == ++v24)
        {
          v26 = 0;
LABEL_42:
          v43 = 0;
          if (v25 <= 1)
          {
            v44 = 1;
          }

          else
          {
            v44 = (a4 - 1);
          }

          while (strcmp(*(a3 + 8 * v43), "lchar"))
          {
            if (v44 == ++v43)
            {
              goto LABEL_58;
            }
          }

          v144 = v43;
          v45 = "=";
          v46 = a1;
          if (v143 == -1)
          {
            v48 = a3;
            v49 = a4;
            v47 = a2;
          }

          else
          {
            v31 = feat_character(a1, a5, v142, v143, -1, "=", v23);
            if ((v31 & 0x80000000) != 0)
            {
              goto LABEL_262;
            }

            v47 = a2;
            v46 = a1;
            v48 = a3;
            v49 = a4;
            v45 = v23;
          }

          v26 = hlp_setFeature(v46, v48, v49, 3, v47, v45);
          if ((v26 & 0x80000000) == 0)
          {
LABEL_58:
            v52 = 0;
            while (strcmp(*(a3 + 8 * v52), "llchar"))
            {
              if (v44 == ++v52)
              {
                goto LABEL_67;
              }
            }

            v144 = v52;
            v53 = "=";
            v54 = a1;
            if (v143 == -1)
            {
              v56 = a3;
              v57 = a4;
              v55 = a2;
            }

            else
            {
              v31 = feat_character(a1, a5, v142, v143, -2, "=", v23);
              if ((v31 & 0x80000000) != 0)
              {
                goto LABEL_262;
              }

              v55 = a2;
              v54 = a1;
              v56 = a3;
              v57 = a4;
              v53 = v23;
            }

            v26 = hlp_setFeature(v54, v56, v57, 2, v55, v53);
            if ((v26 & 0x80000000) == 0)
            {
LABEL_67:
              v58 = 0;
              while (strcmp(*(a3 + 8 * v58), "l3char"))
              {
                if (v44 == ++v58)
                {
                  goto LABEL_81;
                }
              }

              v144 = v58;
              v59 = "=";
              v60 = a1;
              if (v143 == -1)
              {
                v62 = a3;
                v63 = a4;
                v61 = a2;
              }

              else
              {
                v31 = feat_character(a1, a5, v142, v143, -3, "=", v23);
                if ((v31 & 0x80000000) != 0)
                {
                  goto LABEL_262;
                }

                v61 = a2;
                v60 = a1;
                v62 = a3;
                v63 = a4;
                v59 = v23;
              }

              v26 = hlp_setFeature(v60, v62, v63, 1, v61, v59);
              if ((v26 & 0x80000000) == 0)
              {
LABEL_81:
                v66 = 0;
                while (strcmp(*(a3 + 8 * v66), "rchar"))
                {
                  if (v44 == ++v66)
                  {
                    goto LABEL_95;
                  }
                }

                v144 = v66;
                v67 = "=";
                v68 = a1;
                if (v143 == -1)
                {
                  v70 = a3;
                  v71 = a4;
                  v69 = a2;
                }

                else
                {
                  v31 = feat_character(a1, a5, v142, v143, 1, "=", v23);
                  if ((v31 & 0x80000000) != 0)
                  {
                    goto LABEL_262;
                  }

                  v69 = a2;
                  v68 = a1;
                  v70 = a3;
                  v71 = a4;
                  v67 = v23;
                }

                v26 = hlp_setFeature(v68, v70, v71, 4, v69, v67);
                if ((v26 & 0x80000000) == 0)
                {
LABEL_95:
                  v74 = 0;
                  while (strcmp(*(a3 + 8 * v74), "rrchar"))
                  {
                    if (v44 == ++v74)
                    {
                      goto LABEL_109;
                    }
                  }

                  v144 = v74;
                  v75 = "=";
                  v76 = a1;
                  if (v143 == -1)
                  {
                    v78 = a3;
                    v79 = a4;
                    v77 = a2;
                  }

                  else
                  {
                    v31 = feat_character(a1, a5, v142, v143, 2, "=", v23);
                    if ((v31 & 0x80000000) != 0)
                    {
                      goto LABEL_262;
                    }

                    v77 = a2;
                    v76 = a1;
                    v78 = a3;
                    v79 = a4;
                    v75 = v23;
                  }

                  v26 = hlp_setFeature(v76, v78, v79, 5, v77, v75);
                  if ((v26 & 0x80000000) == 0)
                  {
LABEL_109:
                    v82 = 0;
                    while (strcmp(*(a3 + 8 * v82), "r3char"))
                    {
                      if (v44 == ++v82)
                      {
                        goto LABEL_123;
                      }
                    }

                    v144 = v82;
                    v83 = "=";
                    v84 = a1;
                    if (v143 == -1)
                    {
                      v86 = a3;
                      v87 = a4;
                      v85 = a2;
                    }

                    else
                    {
                      v31 = feat_character(a1, a5, v142, v143, 3, "=", v23);
                      if ((v31 & 0x80000000) != 0)
                      {
                        goto LABEL_262;
                      }

                      v85 = a2;
                      v84 = a1;
                      v86 = a3;
                      v87 = a4;
                      v83 = v23;
                    }

                    v26 = hlp_setFeature(v84, v86, v87, 6, v85, v83);
                    if ((v26 & 0x80000000) != 0)
                    {
                      goto LABEL_263;
                    }

LABEL_123:
                    v90 = 0;
                    while (strcmp(*(a3 + 8 * v90), "word"))
                    {
                      if (v44 == ++v90)
                      {
                        goto LABEL_160;
                      }
                    }

                    v144 = v90;
                    if (a5[4] <= v142)
                    {
                      v91 = "=";
                    }

                    else
                    {
                      v91 = *(*a5 + (v142 << 6) + 40);
                    }

                    v26 = hlp_setFeature(a1, a3, a4, 12, a2, v91);
                    if ((v26 & 0x80000000) != 0)
                    {
                      goto LABEL_263;
                    }

LABEL_160:
                    v107 = 0;
                    while (strcmp(*(a3 + 8 * v107), "wordnocase"))
                    {
                      if (v44 == ++v107)
                      {
                        goto LABEL_165;
                      }
                    }

                    v144 = v107;
                    feat_wordlc(a5, v142, 0, "=", v23);
                    v26 = hlp_setFeature(a1, a3, a4, 13, a2, v23);
                    if ((v26 & 0x80000000) != 0)
                    {
                      goto LABEL_263;
                    }

LABEL_165:
                    v108 = 0;
                    while (strcmp(*(a3 + 8 * v108), "wordlen"))
                    {
                      if (v44 == ++v108)
                      {
                        a6 = v142;
                        goto LABEL_9;
                      }
                    }

                    v144 = v108;
                    a6 = v142;
                    feat_wordlen(a5, v142, 0, "=", v23);
                    v26 = hlp_setFeature(a1, a3, a4, 14, a2, v23);
                    if ((v26 & 0x80000000) == 0)
                    {
                      goto LABEL_9;
                    }

                    goto LABEL_263;
                  }

                  goto LABEL_263;
                }

                goto LABEL_263;
              }

              goto LABEL_263;
            }

            goto LABEL_263;
          }

          goto LABEL_263;
        }
      }

      v144 = v24;
      v29 = "=";
      v30 = a1;
      if (v143 == -1)
      {
        v32 = a3;
        v33 = a4;
        v34 = a2;
      }

      else
      {
        v31 = feat_character(a1, a5, v142, v143, 0, "=", v23);
        if ((v31 & 0x80000000) != 0)
        {
          goto LABEL_262;
        }

        v30 = a1;
        v32 = a3;
        v33 = a4;
        v34 = a2;
        v29 = v23;
      }

      v26 = hlp_setFeature(v30, v32, v33, 0, v34, v29);
      if ((v26 & 0x80000000) == 0)
      {
        goto LABEL_42;
      }
    }

LABEL_263:
    heap_Free(*(a1 + 8), v23);
  }

  else
  {
    log_OutPublic(*(a1 + 32), "FE_HMOGRPH", 37000, 0, v19, v20, v21, v22, v140);
    return 2314215434;
  }

  return v26;
}

uint64_t _hmgrph_param_split(uint64_t a1, uint64_t a2, uint64_t *a3, _DWORD *a4)
{
  v7 = (a2 - 1);
  do
  {
    v8 = *++v7;
  }

  while (v8 == 32);
  while (1)
  {
    v9 = strlen(v7);
    if (v7[v9 - 1] != 32)
    {
      break;
    }

    v7[v9 - 1] = 0;
  }

  v10 = v9;
  v11 = 0;
  *a4 = 0;
  if ((v9 + 1) > 1)
  {
    v12 = (v9 + 1);
  }

  else
  {
    v12 = 1;
  }

  v13 = v7;
  do
  {
    v14 = *v13++;
    if ((v14 | 0x20) == 0x20)
    {
      *a4 = ++v11;
    }

    --v12;
  }

  while (v12);
  v15 = heap_Calloc(*(a1 + 8), 1, 8 * v11);
  *a3 = v15;
  if (v15)
  {
    *v15 = v7;
    if (v10)
    {
      v20 = 0;
      v21 = 0;
      do
      {
        if (v7[v20] == 32)
        {
          v7[v20] = 0;
          v22 = &v7[++v20];
          *(*a3 + 8 * ++v21) = v22;
        }

        else
        {
          ++v20;
        }
      }

      while (v20 != v10);
    }

    return 0;
  }

  else
  {
    v23 = 2314215434;
    log_OutPublic(*(a1 + 32), "FE_HMOGRPH", 37000, 0, v16, v17, v18, v19, v25);
    if (*a3)
    {
      heap_Free(*(a1 + 8), *a3);
    }
  }

  return v23;
}

uint64_t _hmgrph_parse_params(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  *(a4 + 32) = 0;
  v6 = (a4 + 32);
  v7 = *(a4 + 16);
  *(v7 + 56) = 0;
  *(v7 + 64) = 0;
  *(a4 + 40) = 0;
  if (a3)
  {
    v8 = 2314215424;
    v9 = a3;
    v10 = (a2 + 8);
    do
    {
      v11 = *(a4 + 16);
      v12 = *(v11 + 64);
      v23 = *(a4 + 40);
      v24 = v12;
      v13 = *(v10 - 1);
      if (!strcmp(v13, "features"))
      {
        _hmgrph_param_split(a1, *v10, (v11 + 56), &v24);
        if (v24 > 0xFF)
        {
          return v8;
        }

        *(*(a4 + 16) + 64) = v24;
      }

      else if (!strcmp(v13, "collocations"))
      {
        _hmgrph_param_split(a1, *v10, v6, &v23);
        if (HIWORD(v23))
        {
          return v8;
        }

        *(a4 + 40) = v23;
      }

      v10 += 2;
      --v9;
    }

    while (v9);
  }

  else
  {
    *(v7 + 64) = 29;
    v14 = heap_Calloc(*(a1 + 8), 1, 232);
    v19 = *(a4 + 16);
    *(v19 + 56) = v14;
    if (!v14)
    {
      log_OutPublic(*(a1 + 32), "FE_HMOGRPH", 37000, 0, v15, v16, v17, v18, v22);
      return 2314215434;
    }

    if (*(v19 + 64))
    {
      v20 = 0;
      do
      {
        *(*(v19 + 56) + 8 * v20) = off_1E81A4028[v20];
        ++v20;
        v19 = *(a4 + 16);
      }

      while (v20 < *(v19 + 64));
    }
  }

  return 0;
}

uint64_t stat_hmogrph_ModelInit(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, _WORD *a8, unsigned __int16 *a9)
{
  v91 = *MEMORY[0x1E69E9840];
  v89 = 0;
  v87 = 0;
  *__s2 = 0;
  *v85 = 0;
  v86 = 0;
  memset(v90, 0, sizeof(v90));
  v84 = 0;
  *a7 = 0;
  *a8 = 0;
  *a9 = 0;
  BrokerString = stat_hmogrph_getBrokerString(a3, v90, 0x100uLL);
  if ((BrokerString & 0x80000000) != 0)
  {
    goto LABEL_41;
  }

  BrokerString = ssftriff_reader_ObjOpen(a1, a2, 2, v90, "HMGR", 1031, v85);
  if ((BrokerString & 0x80000000) != 0)
  {
    goto LABEL_41;
  }

  v83 = a5;
  v25 = ssftriff_reader_OpenChunk(*v85, __s2, &v87, &v86, v21, v22, v23, v24);
  if ((v25 & 0x80000000) != 0)
  {
    v39 = v25;
    v33 = 0;
  }

  else
  {
    v33 = 0;
    do
    {
      ++v33;
      ssftriff_reader_CloseChunk(*v85);
      v38 = ssftriff_reader_OpenChunk(*v85, __s2, &v87, &v86, v34, v35, v36, v37);
    }

    while ((v38 & 0x80000000) == 0);
    v39 = v38;
  }

  ssftriff_reader_ObjClose(*v85, v26, v27, v28, v29, v30, v31, v32);
  *v85 = 0;
  if ((v39 & 0x1FFF) != 0x14)
  {
    goto LABEL_50;
  }

  v40 = heap_Calloc(*(a3 + 8), 1, 48 * v33);
  *a7 = v40;
  if (!v40)
  {
    v39 = 2314215434;
    v80 = *(a3 + 32);
    v66 = 0;
    goto LABEL_53;
  }

  *a9 = v33;
  BrokerString = ssftriff_reader_ObjOpen(a1, a2, 2, v90, "HMGR", 1031, v85);
  if ((BrokerString & 0x80000000) != 0)
  {
LABEL_41:
    v39 = BrokerString;
    goto LABEL_42;
  }

  v45 = ssftriff_reader_OpenChunk(*v85, __s2, &v87, &v86, v21, v22, v23, v24);
  if ((v45 & 0x80000000) != 0)
  {
LABEL_38:
    if ((v45 & 0x1FFF) == 0x14)
    {
      v39 = 0;
    }

    else
    {
      v39 = v45;
    }

    goto LABEL_42;
  }

  v82 = a6;
  while (1)
  {
    v46 = *a8;
    v47 = *a7;
    v48 = *a7;
    v49 = *a8;
    if (!*a8)
    {
      v53 = 0;
LABEL_18:
      v54 = v83;
LABEL_19:
      v48 = v47 + 48 * v53;
      *a8 = v46 + 1;
      __strcpy_chk();
      if (com_getUnicodeOrth(a4, v54, v82, __s2, &v84))
      {
        __strcpy_chk();
      }

      else
      {
        log_OutText(*(a3 + 32), "FE_HMOGRPH", 5, 0, "Orth for unicode %s does not exist in dic_cfg4.cfg", v55, v56, v57, __s2);
      }

      goto LABEL_24;
    }

    while (strcmp((v48 + 7), __s2))
    {
      v48 += 48;
      if (!--v49)
      {
        v53 = v46;
        goto LABEL_18;
      }
    }

    v53 = v46;
    v54 = v83;
    if (!v47)
    {
      goto LABEL_19;
    }

LABEL_24:
    log_OutText(*(a3 + 32), "FE_HMOGRPH", 5, 0, "model #%d, homograph %s", v50, v51, v52, *a8);
    v62 = ssftriff_reader_OpenChunk(*v85, __s2, &v87, &v86, v58, v59, v60, v61);
    if ((v62 & 0x80000000) == 0)
    {
      break;
    }

LABEL_36:
    v39 = v62;
    if ((v62 & 0x1FFF) != 0x14)
    {
      goto LABEL_42;
    }

    ssftriff_reader_CloseChunk(*v85);
    v45 = ssftriff_reader_OpenChunk(*v85, __s2, &v87, &v86, v72, v73, v74, v75);
    if ((v45 & 0x80000000) != 0)
    {
      goto LABEL_38;
    }
  }

  while (1)
  {
    log_OutText(*(a3 + 32), "FE_HMOGRPH", 5, 0, "model chunk %s for homograph %s, size %d", v22, v23, v24, __s2);
    if (*__s2 ^ 0x48505243 | v89)
    {
      break;
    }

    v66 = *(v48 + 16);
    if (!v66)
    {
      v66 = heap_Calloc(*(a3 + 8), 1, 344);
      *(v48 + 16) = v66;
      if (!v66)
      {
        goto LABEL_56;
      }
    }

    *(v66 + 72) = 1;
    v67 = crf_Init(a1, a2, *v85, v66);
    if ((v67 & 0x80000000) != 0)
    {
LABEL_54:
      v39 = v67;
      ssftriff_reader_CloseChunk(*v85);
      goto LABEL_42;
    }

    _hmgrph_parse_params(a3, *(*(v48 + 16) + 32), *(*(v48 + 16) + 40), v48);
LABEL_35:
    ssftriff_reader_CloseChunk(*v85);
    v62 = ssftriff_reader_OpenChunk(*v85, __s2, &v87, &v86, v68, v69, v70, v71);
    if ((v62 & 0x80000000) != 0)
    {
      goto LABEL_36;
    }
  }

  if (*__s2 ^ 0x52544749 | v89)
  {
    log_OutText(*(a3 + 32), "FE_HMOGRPH", 0, 0, "unknown model type %s", v63, v64, v65, __s2);
    v39 = 2314215428;
    goto LABEL_42;
  }

  v66 = *(v48 + 24);
  if (v66 || (v66 = heap_Calloc(*(a3 + 8), 1, 1600), (*(v48 + 24) = v66) != 0))
  {
    v67 = igtree_Init(a1, a2, *v85, v66);
    if ((v67 & 0x80000000) != 0)
    {
      goto LABEL_54;
    }

    goto LABEL_35;
  }

LABEL_56:
  v39 = 2314215434;
  v80 = *(a3 + 32);
LABEL_53:
  log_OutPublic(v80, "FE_HMOGRPH", 37000, v66, v41, v42, v43, v44, v81);
LABEL_42:
  if (*v85)
  {
    v76 = ssftriff_reader_ObjClose(*v85, v18, v19, v20, v21, v22, v23, v24);
    if (v76 >= 0 || v39 <= -1)
    {
      v39 = v39;
    }

    else
    {
      v39 = v76;
    }
  }

  if ((v39 & 0x80000000) != 0)
  {
LABEL_50:
    stat_hmogrph_ModelDeinit(a3, a7, *a8, v20, v21, v22, v23, v24);
    *a8 = 0;
  }

  v78 = *MEMORY[0x1E69E9840];
  return v39;
}

uint64_t stat_hmogrph_ModelDeinit(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3)
  {
    v10 = 0;
    v11 = 0;
    v12 = 48 * a3;
    do
    {
      v13 = *a2;
      v14 = *(*a2 + v10 + 24);
      if (v14)
      {
        v11 = igtree_Deinit(a1, v14, a3, a4, a5, a6, a7, a8);
        if ((v11 & 0x80000000) != 0)
        {
          return v11;
        }

        heap_Free(*(a1 + 8), *(*a2 + v10 + 24));
        *(*a2 + v10 + 24) = 0;
        v13 = *a2;
      }

      v15 = *(v13 + v10 + 16);
      if (v15)
      {
        v11 = crf_Deinit(v15, v14, a3, a4, a5, a6, a7, a8);
        if ((v11 & 0x80000000) != 0)
        {
          return v11;
        }

        heap_Free(*(a1 + 8), *(*a2 + v10 + 16));
        *(*a2 + v10 + 16) = 0;
        v13 = *a2;
      }

      v16 = *(v13 + v10 + 32);
      if (v16)
      {
        heap_Free(*(a1 + 8), v16);
        *(*a2 + v10 + 32) = 0;
      }

      v10 += 48;
    }

    while (v12 != v10);
  }

  else
  {
    v11 = 0;
  }

  heap_Free(*(a1 + 8), *a2);
  *a2 = 0;
  return v11;
}

uint64_t hlp_getcharPhons(uint64_t a1, const char **a2, unsigned int a3, uint64_t *a4, _WORD *a5)
{
  if (a3)
  {
    v6 = a4;
    v10 = a3;
    v11 = a3;
    v12 = a4;
    do
    {
      v13 = strlen(*a2);
      v14 = heap_Calloc(*(a1 + 8), 1, v13 + 1);
      *v12 = v14;
      if (!v14)
      {
        log_OutPublic(*(a1 + 32), "FE_HMOGRPH", 37000, 0, v15, v16, v17, v18, v26);
        do
        {
          if (*v6)
          {
            heap_Free(*(a1 + 8), *v6);
            *v6 = 0;
          }

          ++v6;
          --v10;
        }

        while (v10);
        return 2314215434;
      }

      v19 = *a2;
      a2 += 7;
      memcpy(v14, v19, v13);
      v20 = *v12++;
      *(v20 + v13) = 0;
      --v11;
    }

    while (v11);
    *a5 = 1;
    if (a3 != 1)
    {
      v21 = 1;
      v22 = 1;
      do
      {
        v23 = 0;
        v24 = v6[v22];
        while (strcmp(v6[v23], v24))
        {
          if (v22 == ++v23)
          {
            *a5 = ++v21;
            break;
          }
        }

        ++v22;
      }

      while (v22 != v10);
    }

    return 0;
  }

  else
  {
    result = 0;
    *a5 = 0;
  }

  return result;
}

uint64_t hlp_concatFeatureVector(uint64_t a1, const char **a2, unsigned int a3, char **a4)
{
  if (a3)
  {
    LODWORD(v8) = 0;
    v9 = a3;
    v10 = a2;
    do
    {
      v11 = *v10++;
      v8 = v8 + strlen(v11) + 2;
      --v9;
    }

    while (v9);
  }

  else
  {
    v8 = 0;
  }

  v12 = heap_Calloc(*(a1 + 8), 1, v8);
  *a4 = v12;
  if (v12)
  {
    if (a3)
    {
      v17 = 0;
      do
      {
        strcat(*a4, a2[v17]);
        if (v17 < a3 - 1)
        {
          *&(*a4)[strlen(*a4)] = 32;
        }

        ++v17;
      }

      while (a3 != v17);
    }

    return 0;
  }

  else
  {
    log_OutPublic(*(a1 + 32), "FE_HMOGRPH", 37000, 0, v13, v14, v15, v16, v19);
    return 2314215434;
  }
}

uint64_t hlp_disamWithModels(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, unsigned int a5, const char *a6, uint64_t a7, uint64_t a8, char *a9, __int128 *a10)
{
  v177 = 0;
  v178[0] = 0;
  v176 = 0;
  v174 = 0;
  v175 = 0;
  v173 = 0;
  v172 = 0;
  v170 = 0;
  v171 = 0;
  v169 = 0;
  if (!*(a2 + 40))
  {
    ReadOnly = 0;
LABEL_6:
    v15 = 1;
    goto LABEL_9;
  }

  v13 = *(a2 + 48);
  if (v13)
  {
    ReadOnly = ssftmap_FindReadOnly(v13, a6, &v171);
    if (!*(a2 + 40))
    {
      goto LABEL_6;
    }
  }

  else
  {
    ReadOnly = 0;
  }

  v15 = strcmp(*(a2 + 64), "albert") != 0;
LABEL_9:
  __s2 = v15;
  v16 = *(a2 + 24);
  v17 = *(a2 + 32);
  if (*(a2 + 32))
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = *(a2 + 24);
    do
    {
      if (!strcmp(v21, a6))
      {
        v18 = v19;
        v20 = 1;
      }

      ++v19;
      v21 += 48;
    }

    while (v17 != v19);
    v22 = v18;
    if (v20)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v22 = 0;
  }

  if (ReadOnly < 0)
  {
    log_OutText(*(a1 + 32), "FE_HMOGRPH", 0, 0, "No model for homograph %s exist", a6, a7, a8, a6);
    v23 = 0;
    v24 = 0;
    goto LABEL_79;
  }

LABEL_19:
  v25 = a9;
  v26 = v16 + 48 * v22;
  v27 = *(a1 + 32);
  if (!*(v26 + 16))
  {
    log_OutText(v27, "FE_HMOGRPH", 5, 0, "MaxEnt model for homograph %s does not exist", a6, a7, a8, a6);
    v23 = 0;
    v29 = 0;
    goto LABEL_35;
  }

  log_OutText(v27, "FE_HMOGRPH", 5, 0, "Disambiguate homograph %s with MaxEnt model", a6, a7, a8, a6);
  v28 = heap_Calloc(*(a1 + 8), 1, 8 * *(*(v26 + 16) + 64) - 8);
  if (!v28)
  {
    v24 = 0;
    v23 = 2314215434;
    goto LABEL_79;
  }

  v29 = v28;
  inited = hlp_initFeatureVector(a1, v28, (*(*(v26 + 16) + 64) - 1));
  if ((inited & 0x80000000) != 0)
  {
    goto LABEL_30;
  }

  v31 = *(v26 + 16);
  v32 = *(v31 + 56);
  v33 = *(v31 + 64);
  v34 = *(v26 + 32);
  LOWORD(v31) = *(v26 + 40);
  v35 = a10[3];
  v165 = a10[2];
  v166 = v35;
  v167 = a10[4];
  v168 = *(a10 + 10);
  v36 = a10[1];
  v163 = *a10;
  v164 = v36;
  hlp_setFeatureVector(a1, v29, v32, v33, (a2 + 8), a3, a5, v34, v31, &v163);
  inited = hlp_concatFeatureVector(a1, v29, (*(*(v26 + 16) + 64) - 1), v178);
  if ((inited & 0x80000000) != 0)
  {
LABEL_30:
    v23 = inited;
    goto LABEL_31;
  }

  log_OutText(*(a1 + 32), "FE_HMOGRPH", 5, 0, "STATHMOGRPH_FEATURE: homograph %s at word %d, char %d", v37, v38, v39, a6);
  log_OutText(*(a1 + 32), "FE_HMOGRPH", 5, 0, "STATHMOGRPH_FEATURE: %s", v40, v41, v42, v178[0]);
  v23 = crf_Process(*(v26 + 16), v178, 1u, &v177, &v176);
  if ((v23 & 0x80000000) != 0)
  {
LABEL_31:
    v24 = 0;
    v54 = 0;
    goto LABEL_76;
  }

  v46 = ReadOnly;
  if (*(*(v26 + 16) + 64) != 1)
  {
    v47 = (*(*(v26 + 16) + 64) - 1);
    v48 = v29;
    do
    {
      v49 = *v48++;
      heap_Free(*(a1 + 8), v49);
      --v47;
    }

    while (v47);
  }

  v25 = a9;
  if (v176 == 1)
  {
    v50 = strcpy(a9, *v177);
    a9[strlen(v50) - 1] = 0;
  }

  else
  {
    log_OutText(*(a1 + 32), "FE_HMOGRPH", 5, 0, "%d predictions for homograph %s with maxent model (discarded)", v43, v44, v45, v176);
  }

  ReadOnly = v46;
LABEL_35:
  v55 = *(a1 + 32);
  if (!*(a2 + 40) || ReadOnly < 0)
  {
    __dst = v25;
    log_OutText(v55, "FE_HMOGRPH", 5, 0, "No NN model for homograph %s !", v51, v52, v53, a6);
    v24 = 0;
    v72 = 1;
LABEL_43:
    v73 = *(a1 + 32);
    if (*(v26 + 24))
    {
      log_OutText(v73, "FE_HMOGRPH", 5, 0, "Disambiguate homograph %s with igtree model", v69, v70, v71, a6);
      v54 = heap_Calloc(*(a1 + 8), 1, 8 * *(*(v26 + 24) + 1296) - 8);
      if (!v54)
      {
        v23 = 2314215434;
        goto LABEL_75;
      }

      v74 = hlp_initFeatureVector(a1, v54, (*(*(v26 + 24) + 1296) - 1));
      if ((v74 & 0x80000000) != 0)
      {
        v23 = v74;
        goto LABEL_75;
      }

      v75 = ReadOnly;
      v148 = v29;
      v76 = *(v26 + 24);
      v77 = *(v76 + 1312);
      v78 = *(v76 + 1296);
      v79 = a10[3];
      v165 = a10[2];
      v166 = v79;
      v167 = a10[4];
      v168 = *(a10 + 10);
      v80 = a10[1];
      v163 = *a10;
      v164 = v80;
      hlp_setFeatureVector(a1, v54, v77, v78, (a2 + 8), a3, a5, 0, 0, &v163);
      igtree_Process(*(v26 + 24), v54, &v175);
      if (*(*(v26 + 24) + 1296) != 1)
      {
        v81 = (*(*(v26 + 24) + 1296) - 1);
        v82 = v54;
        do
        {
          v83 = *v82++;
          heap_Free(*(a1 + 8), v83);
          --v81;
        }

        while (v81);
      }

      v84 = v175;
      v85 = strcmp(v175, "NOMATCH");
      if (v72)
      {
        if (!v85)
        {
          v89 = v171;
          if (!v171 || v75 < 0)
          {
            log_OutText(*(a1 + 32), "FE_HMOGRPH", 5, 0, "No igtree rule matched for homograph %s", v86, v87, v88, a6);
            v29 = v148;
            v23 = 0;
            if (!*__dst)
            {
              *__dst = 0x484354414D4F4ELL;
            }

            goto LABEL_75;
          }

          v90 = __dst;
          goto LABEL_70;
        }
      }

      else if (!v85 || !strcmp(v84, *v173))
      {
        goto LABEL_71;
      }

      v90 = __dst;
      v89 = v84;
LABEL_70:
      strcpy(v90, v89);
LABEL_71:
      v23 = 0;
      goto LABEL_72;
    }

    log_OutText(v73, "FE_HMOGRPH", 5, 0, "IGTree model for homograph %s does not exist", v69, v70, v71, a6);
LABEL_55:
    v54 = 0;
    goto LABEL_75;
  }

  log_OutText(v55, "FE_HMOGRPH", 5, 0, "Disambiguate homograph %s with NN model", v51, v52, v53, a6);
  v56 = *(a2 + 80);
  v57 = (*(v56 + 40))(*(a2 + 104), *(a2 + 112), &v172);
  if ((v57 & 0x80000000) != 0)
  {
    v23 = v57;
LABEL_74:
    v54 = 0;
    v24 = 0;
    goto LABEL_75;
  }

  v62 = *(a2 + 60);
  if (__s2)
  {
    if (v62 == v172 + 1)
    {
      v154 = (a1 + 8);
      __dst = v25;
      v63 = heap_Calloc(*(a1 + 8), 1, 8);
      if (v63)
      {
        v24 = v63;
        v68 = *(a2 + 60) * *(a2 + 56);
        goto LABEL_60;
      }

      goto LABEL_73;
    }

LABEL_64:
    log_OutPublic(*(a1 + 32), "FE_HMOGRPH", 37000, 0, v58, v59, v60, v61, v142);
    v54 = 0;
    v24 = 0;
    v23 = 2314215449;
    goto LABEL_75;
  }

  if (v62 != v172)
  {
    goto LABEL_64;
  }

  v154 = (a1 + 8);
  __dst = v25;
  v91 = heap_Calloc(*(a1 + 8), 1, 8);
  if (!v91)
  {
LABEL_73:
    v23 = 2314215434;
    log_OutPublic(*(a1 + 32), "FE_HMOGRPH", 37000, 0, v64, v65, v66, v67, v142);
    goto LABEL_74;
  }

  v24 = v91;
  v68 = (*(a2 + 56) + 2) * *(a2 + 60);
LABEL_60:
  v54 = heap_Alloc(*v154, 4 * v68);
  v174 = v54;
  if (!v54)
  {
    v23 = 2314215434;
    log_OutPublic(*(a1 + 32), "FE_HMOGRPH", 37000, 0, v92, v93, v94, v95, v142);
    goto LABEL_75;
  }

  nnSent = make_nnSent(a1, a2 + 8, &v169);
  if ((nnSent & 0x80000000) != 0)
  {
    v23 = nnSent;
    v105 = *(a1 + 32);
    v106 = "Make NN Sent Failed";
    goto LABEL_163;
  }

  if (__s2)
  {
    v98 = *(a2 + 56);
  }

  else
  {
    *v54 = 1120534528;
    v54 = (v54 + 4);
    v98 = *(a2 + 56);
    *(v174 + v98 + 1) = 1120665600;
  }

  v143 = ReadOnly;
  if ((v98 + 1) / 2 <= (1 - v98) / 2)
  {
LABEL_151:
    if (__s2)
    {
      v138 = v98;
    }

    else
    {
      v138 = v98 + 2;
    }

    v23 = fi_predict(*(a2 + 40), &v174, v138, &v173, v97, v69, v70, v71);
    if ((v23 & 0x80000000) == 0)
    {
      v139 = *(a7 + 48) + 16 * a4;
      v140 = *(v139 + 8);
      if (*(v139 + 8))
      {
        __s2a = *v173;
        v141 = a8;
        while (strcmp(*v141, __s2a))
        {
          ++v141;
          v72 = 1;
          if (!--v140)
          {
            goto LABEL_167;
          }
        }

        strcpy(__dst, __s2a);
        v72 = 0;
      }

      else
      {
        v72 = 1;
      }

LABEL_167:
      ReadOnly = v143;
      goto LABEL_43;
    }

    v105 = *(a1 + 32);
    v106 = "FIhmogrph Prediction Failed";
LABEL_163:
    log_OutText(v105, "FE_HMOGRPH", 5, 0, v106, v69, v70, v71, 0);
    goto LABEL_55;
  }

  v107 = (1 - v98) / 2;
  v108 = a3;
  v109 = (a3 + 1);
  if (__s2)
  {
    v110 = (v56 + 56);
  }

  else
  {
    v110 = (v56 + 72);
  }

  v146 = v109 + 1;
  v147 = v110;
  v144 = (v56 + 56);
  v145 = v109;
  v148 = v29;
  while (1)
  {
    v152 = v107;
    if (__s2)
    {
      if (v107)
      {
        v111 = 0.0;
      }

      else
      {
        v111 = 1.0;
      }

      *v54 = v111;
      v54 = (v54 + 4);
    }

    __src = *(a2 + 72);
    v112 = v169;
    v150 = v54;
    v151 = strlen(v169[v108]);
    v153 = v169;
    v113 = 0;
    if (a3)
    {
      v114 = v108;
      do
      {
        v115 = *v112++;
        v113 += strlen(v115);
        --v114;
      }

      while (v114);
    }

    v116 = v170;
    if (v170 <= (a3 + 1))
    {
      v117 = 0;
    }

    else
    {
      v117 = 0;
      v118 = v146;
      v119 = &v169[v145];
      do
      {
        v120 = *v119++;
        v117 += strlen(v120);
        v121 = v170 == v118++;
      }

      while (!v121);
    }

    v122 = heap_Calloc(*v154, 1, (v151 + v113 + v117 + 1));
    if (!v122)
    {
      break;
    }

    v127 = v122;
    if (v116)
    {
      NextUtf8Offset = v113 + a5;
      v129 = v153;
      v130 = v116;
      do
      {
        v131 = *v129++;
        strcat(v127, v131);
        --v130;
      }

      while (v130);
      if (v116 > a3 && strlen(v153[a3]) > a5)
      {
        v132 = v152;
        if ((v152 & 0x8000) != 0)
        {
          if (NextUtf8Offset)
          {
            v134 = v152;
            do
            {
              PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(v127, NextUtf8Offset);
              NextUtf8Offset = PreviousUtf8Offset;
              v121 = ~v134++ == 0;
            }

            while (!v121 && PreviousUtf8Offset);
            if (!v134)
            {
LABEL_136:
              if ((utf8_getUTF8Char(v127, NextUtf8Offset, v24) & 0x80000000) == 0)
              {
                goto LABEL_138;
              }
            }
          }
        }

        else
        {
          if (!v152)
          {
            goto LABEL_136;
          }

          while (NextUtf8Offset != strlen(v127))
          {
            NextUtf8Offset = utf8_GetNextUtf8Offset(v127, NextUtf8Offset);
            v133 = v132--;
            if (v133 <= 1)
            {
              goto LABEL_136;
            }
          }
        }
      }
    }

    strcpy(v24, __src);
LABEL_138:
    heap_Free(*v154, v127);
    if (!*v24)
    {
      strcpy(v24, *(a2 + 72));
    }

    v108 = a3;
    v29 = v148;
    if (utf8_IsChineseLetter(v24))
    {
      goto LABEL_148;
    }

    v136 = *v24;
    switch(v136)
    {
      case 's':
        strcpy(v24, *(a2 + 72));
        break;
      case 'e':
        v137 = 4673093;
        goto LABEL_146;
      case '0':
        v137 = 5068110;
LABEL_146:
        *v24 = v137;
        break;
    }

LABEL_148:
    if (((*v147)(*(a2 + 104), *(a2 + 112), v24, v150) & 0x1FFF) == 0x14)
    {
      log_OutText(*(a1 + 32), "FE_HMOGRPH", 5, 0, "No embedding vector for character %s . Fall back!", v69, v70, v71, v24);
      strcpy(v24, *(a2 + 72));
      (*v144)(*(a2 + 104), *(a2 + 112), v24, v150);
    }

    v54 = (v150 + 4 * v172);
    v107 = v152 + 1;
    v98 = *(a2 + 56);
    if ((v98 + 1) / 2 <= (v152 + 1))
    {
      goto LABEL_151;
    }
  }

  v23 = 2314215434;
  log_OutPublic(*(a1 + 32), "FE_HMOGRPH", 37000, 0, v123, v124, v125, v126, v142);
  v54 = 0;
LABEL_72:
  v29 = v148;
LABEL_75:
  if (v29)
  {
LABEL_76:
    heap_Free(*(a1 + 8), v29);
  }

  if (v54)
  {
    heap_Free(*(a1 + 8), v54);
  }

LABEL_79:
  if (v178[0])
  {
    heap_Free(*(a1 + 8), v178[0]);
    v178[0] = 0;
  }

  v99 = v177;
  if (v177)
  {
    if (v176)
    {
        ;
      }

      v99 = v177;
    }

    heap_Free(*(a1 + 8), v99);
    v177 = 0;
  }

  if (v24)
  {
    heap_Free(*(a1 + 8), v24);
  }

  v101 = v170;
  v102 = v169;
  if (v170)
  {
    v103 = v169;
    do
    {
      if (*v103)
      {
        heap_Free(*(a1 + 8), *v103);
        *v103 = 0;
      }

      ++v103;
      --v101;
    }

    while (v101);
LABEL_96:
    heap_Free(*(a1 + 8), v102);
  }

  else if (v169)
  {
    goto LABEL_96;
  }

  return v23;
}

uint64_t make_nnSent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  *(a3 + 8) = v6;
  v7 = heap_Alloc(*(a1 + 8), 8 * v6);
  *a3 = v7;
  if (!v7)
  {
LABEL_39:
    v36 = 2314215434;
    log_OutPublic(*(a1 + 32), "FE_HMOGRPH", 37000, 0, v8, v9, v10, v11, v43);
    return v36;
  }

  if (!*(a3 + 8))
  {
    return 0;
  }

  v12 = 0;
  v13 = 0;
  while (1)
  {
    IsChineseLetter = utf8_IsChineseLetter(*(*a2 + 8 * v12));
    v15 = *(*a2 + 8 * v12);
    if (IsChineseLetter || strlen(*(*a2 + 8 * v12)) != 1)
    {
      break;
    }

    v16 = *v15;
    if ((v16 - 48) <= 9)
    {
      v17 = heap_Alloc(*(a1 + 8), 2);
      *(*a3 + v12) = v17;
      if (!v17)
      {
        goto LABEL_42;
      }

LABEL_19:
      *v17 = 48;
      goto LABEL_20;
    }

    v33 = (v16 & 0xFFFFFFDF) - 65;
    v26 = heap_Alloc(*(a1 + 8), 2);
    *(*a3 + v12) = v26;
    if (v33 <= 0x19)
    {
      if (!v26)
      {
        goto LABEL_42;
      }

LABEL_24:
      v34 = 101;
LABEL_25:
      *v26 = v34;
      goto LABEL_20;
    }

    if (!v26)
    {
LABEL_42:
      v36 = 2314215434;
      log_OutPublic(*(a1 + 32), "FE_HMOGRPH", 37000, 0, v18, v19, v20, v21, v43);
      v41 = *(a1 + 32);
      v42 = "Tag 1-char orth word for NN Failed";
      goto LABEL_44;
    }

LABEL_12:
    strcpy(v26, *(*a2 + 8 * v12));
LABEL_20:
    ++v13;
    v12 += 8;
    if (v13 >= *(a3 + 8))
    {
      return 0;
    }
  }

  v22 = utf8_IsChineseLetter(v15);
  v23 = *(*a2 + 8 * v12);
  if (v22 || (v24 = strlen(*(*a2 + 8 * v12)), v24 == 1))
  {
    v25 = strlen(v23);
    v26 = heap_Alloc(*(a1 + 8), v25 + 1);
    *(*a3 + v12) = v26;
    if (!v26)
    {
      goto LABEL_39;
    }

    goto LABEL_12;
  }

  v27 = *v23;
  if ((v27 - 48) < 0xA || ((v27 - 35) <= 0x3C ? (v28 = ((1 << (v27 - 35)) & 0x1800000004000503) == 0) : (v28 = 1), !v28 || v27 == 124))
  {
    v17 = heap_Alloc(*(a1 + 8), 2);
    *(*a3 + v12) = v17;
    if (!v17)
    {
      goto LABEL_43;
    }

    goto LABEL_19;
  }

  if ((v27 & 0xFFFFFFDF) - 65 < 0x1A)
  {
    goto LABEL_30;
  }

  v35 = v27 - 34;
  if (v35 > 0x39)
  {
    goto LABEL_37;
  }

  if (((1 << v35) & 0x200000006000061) != 0)
  {
    v26 = heap_Alloc(*(a1 + 8), (v24 + 1));
    *(*a3 + v12) = v26;
    if (!v26)
    {
      goto LABEL_43;
    }

    goto LABEL_12;
  }

  if (((1 << v35) & 0x40000010) != 0)
  {
LABEL_30:
    v26 = heap_Alloc(*(a1 + 8), 2);
    *(*a3 + v12) = v26;
    if (!v26)
    {
      goto LABEL_43;
    }

    goto LABEL_24;
  }

LABEL_37:
  v26 = heap_Alloc(*(a1 + 8), 2);
  *(*a3 + v12) = v26;
  if (v26)
  {
    v34 = 115;
    goto LABEL_25;
  }

LABEL_43:
  v36 = 2314215434;
  log_OutPublic(*(a1 + 32), "FE_HMOGRPH", 37000, 0, v29, v30, v31, v32, v43);
  v41 = *(a1 + 32);
  v42 = "Tag orth word for NN Failed";
LABEL_44:
  log_OutText(v41, "FE_HMOGRPH", 5, 0, v42, v38, v39, v40, 0);
  return v36;
}

uint64_t hlp_disamCharByChar(uint64_t a1, unsigned int a2, unsigned int a3, _WORD *a4, int *a5, uint64_t a6)
{
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = heap_Alloc(*(*a1 + 8), 1024);
  if (v14)
  {
    v19 = v14;
    v69 = a6;
    v20 = v13 + (a2 << 6);
    *v14 = 0;
    v21 = *(v20 + 48);
    v22 = *(v21 + 16 * a3 + 8);
    v70 = a2;
    if (*(v21 + 16 * a3 + 8))
    {
      v23 = *(v21 + 16 * a3);
      v24 = (v22 + 3) & 0x1FFFC;
      v25 = vdupq_n_s64(v22 - 1);
      v26 = (v23 + 160);
      v27 = xmmword_1C378AEF0;
      v28 = xmmword_1C378AF00;
      v29 = vdupq_n_s64(4uLL);
      do
      {
        v30 = vmovn_s64(vcgeq_u64(v25, v28));
        if (vuzp1_s16(v30, *v25.i8).u8[0])
        {
          *(v26 - 28) = 0;
        }

        if (vuzp1_s16(v30, *&v25).i8[2])
        {
          *(v26 - 14) = 0;
        }

        if (vuzp1_s16(*&v25, vmovn_s64(vcgeq_u64(v25, *&v27))).i32[1])
        {
          *v26 = 0;
          v26[14] = 0;
        }

        v27 = vaddq_s64(v27, v29);
        v28 = vaddq_s64(v28, v29);
        v26 += 56;
        v24 -= 4;
      }

      while (v24);
      v31 = v22;
    }

    else
    {
      v31 = 0;
    }

    v73 = heap_Calloc(*(v12 + 8), v31, 8);
    if (!v73)
    {
      v32 = 2314215434;
      log_OutPublic(*(v12 + 32), "FE_HMOGRPH", 37000, 0, v33, v34, v35, v36, v65);
LABEL_62:
      heap_Free(*(v12 + 8), v19);
      return v32;
    }

    v71 = v22;
    v72 = a3;
    v68 = a4;
    if (a3)
    {
      v37 = 0;
      NextUtf8Offset = 0;
      do
      {
        NextUtf8Offset = utf8_GetNextUtf8Offset(*v20, NextUtf8Offset);
        ++v37;
      }

      while (a3 > v37);
    }

    else
    {
      NextUtf8Offset = 0;
    }

    UTF8Char = utf8_getUTF8Char(*v20, NextUtf8Offset, __s2);
    if ((UTF8Char & 0x80000000) != 0)
    {
      v32 = UTF8Char;
    }

    else
    {
      v76 = 0;
      v32 = hlp_getcharPhons(v12, *(*(v20 + 48) + 16 * a3), *(*(v20 + 48) + 16 * a3 + 8), v73, &v76);
      if ((v32 & 0x80000000) == 0)
      {
        v67 = a5;
        if (v76 >= 2u)
        {
          v66 = v19;
          v40 = *(a1 + 32);
          if (!*(a1 + 32))
          {
            goto LABEL_38;
          }

          v41 = 0;
          v42 = *(a1 + 24);
          do
          {
            if (!strcmp(v42, __s2))
            {
              v41 = 1;
            }

            v42 += 48;
            --v40;
          }

          while (v40);
          if (v41)
          {
            v43 = *(v69 + 48);
            v74[2] = *(v69 + 32);
            v74[3] = v43;
            v74[4] = *(v69 + 64);
            v75 = *(v69 + 80);
            v44 = *(v69 + 16);
            v74[0] = *v69;
            v74[1] = v44;
            v19 = v66;
            hlp_disamWithModels(v12, a1, v70, a3, NextUtf8Offset, __s2, v20, v73, v66, v74);
            if (strcmp(v66, "NOMATCH"))
            {
              v45 = *(v20 + 48) + 16 * a3;
              v46 = *(v45 + 8);
              if (*(v45 + 8))
              {
                v47 = 48;
                v48 = v73;
                do
                {
                  if (strcmp(*v48, v66))
                  {
                    *(*v45 + v47) = 1;
                  }

                  ++v48;
                  v47 += 56;
                  --v46;
                }

                while (v46);
              }
            }
          }

          else
          {
LABEL_38:
            v19 = v66;
            *v67 = 0;
          }
        }

        v49 = *(v20 + 24);
        if (!*v49)
        {
          hlp_filterWordCandIfTnHas(v20);
          v55 = v67;
          v52 = v68;
          goto LABEL_48;
        }

        v50 = strcmp(*(v20 + 24), "poi");
        hasRcdWithGivenPOIClass = hlp_hasRcdWithGivenPOIClass(v20, v49);
        if (v50)
        {
          v52 = v68;
          if (!hasRcdWithGivenPOIClass)
          {
            v55 = v67;
            if (hlp_hasRcdWithGivenPOIClass(v20, "poi"))
            {
              hlp_filterWordCandIfTnIsNot(v20, "poi");
            }

            else
            {
              hlp_filterWordCandIfTnHas(v20);
            }

LABEL_48:
            *v52 = -1;
            v56 = *(v20 + 48) + 16 * v72;
            v57 = *(v56 + 8);
            if (!*(v56 + 8))
            {
              goto LABEL_55;
            }

            v58 = 0;
            v59 = (*v56 + 48);
            v60 = 0xFFFF;
            v61 = -1;
            do
            {
              if (!*v59 && *(v59 - 20) < v61)
              {
                v60 = v58;
                *v52 = v58;
                v61 = *(v59 - 20);
                v57 = *(v56 + 8);
              }

              ++v58;
              v59 += 14;
            }

            while (v58 < v57);
            if (v60 != 0xFFFF)
            {
              v62 = 1;
            }

            else
            {
LABEL_55:
              v62 = 0;
            }

            *v55 = v62;
            goto LABEL_58;
          }

          v53 = v20;
          v54 = v49;
        }

        else
        {
          v52 = v68;
          if (!hasRcdWithGivenPOIClass)
          {
            hlp_filterWordCandIfTnHas(v20);
            goto LABEL_47;
          }

          v54 = "poi";
          v53 = v20;
        }

        hlp_filterWordCandIfTnIsNot(v53, v54);
LABEL_47:
        v55 = v67;
        goto LABEL_48;
      }
    }

LABEL_58:
    if (v71)
    {
      v63 = v73;
      do
      {
        heap_Free(*(v12 + 8), *v63);
        *v63++ = 0;
        --v31;
      }

      while (v31);
    }

    heap_Free(*(v12 + 8), v73);
    goto LABEL_62;
  }

  v32 = 2314215434;
  log_OutPublic(*(v12 + 32), "FE_HMOGRPH", 37000, 0, v15, v16, v17, v18, v65);
  return v32;
}

uint64_t hlp_disamSpecialWords(uint64_t a1, uint64_t *a2, unsigned int a3, unsigned int a4, _DWORD *a5, uint64_t a6)
{
  *&v51[3] = 0;
  *v51 = 0;
  v50 = 0;
  v11 = (a2 + 1);
  v12 = a2[1] + (a3 << 6);
  v49 = 0;
  *a5 = 0;
  v46 = a4;
  v13 = *(v12 + 48) + 16 * a4;
  v14 = *(v13 + 8);
  if (*(v13 + 8))
  {
    v15 = *v13;
    while (!strstr(*v15, "{SEP"))
    {
      v15 += 7;
      if (!--v14)
      {
        goto LABEL_5;
      }
    }

LABEL_31:
    v17 = 0;
LABEL_32:
    v20 = 0;
LABEL_33:
    if (!*(a1 + 144))
    {
      v36 = *(v12 + 48) + 16 * v46;
      v37 = *(v36 + 8);
      if (*(v36 + 8))
      {
        v38 = *v36;
        *(v36 + 12) = 0;
        if (v37 != 1)
        {
          v39 = 0;
          v40 = (v38 + 64);
          for (i = 1; i != v37; ++i)
          {
            v42 = *v40;
            v40 += 28;
            if (v42 < *(v38 + 56 * v39 + 8))
            {
              v39 = i;
              *(v36 + 12) = i;
            }
          }
        }
      }

LABEL_40:
      *a5 = 1;
    }

    if (v20)
    {
LABEL_42:
      heap_Free(*(*a2 + 8), v20);
    }
  }

  else
  {
LABEL_5:
    if ((utf8_getUTF8Char(*(v12 + 40), 0, v51) & 0x80000000) == 0)
    {
      NextUtf8Offset = 0;
      while (strlen(*(v12 + 40)) > NextUtf8Offset)
      {
        if (utf8_Utf8CharTo16bit(v51, &v50) && v50 - 40960 <= 0xFFFFADFF)
        {
          v17 = *(a2 + 16);
          if (!*(a2 + 16))
          {
            goto LABEL_32;
          }

          v44 = a2[3];
          v18 = (v44 + 24);
          while (strcmp(v18 - 17, "0000"))
          {
            v18 += 6;
            if (!--v17)
            {
              goto LABEL_32;
            }
          }

          if (!v44 || !*v18)
          {
            goto LABEL_31;
          }

          v19 = heap_Calloc(*(*a2 + 8), 1, 8 * *(*v18 + 1296) - 8);
          if (!v19)
          {
            return 2314215434;
          }

          v20 = v19;
          inited = hlp_initFeatureVector(*a2, v19, (*(*v18 + 1296) - 1));
          if ((inited & 0x80000000) != 0)
          {
            v17 = inited;
            goto LABEL_42;
          }

          v22 = *a2;
          v23 = *(*v18 + 1312);
          v24 = *(*v18 + 1296);
          v25 = *(a6 + 48);
          v47[2] = *(a6 + 32);
          v47[3] = v25;
          v47[4] = *(a6 + 64);
          v48 = *(a6 + 80);
          v26 = *(a6 + 16);
          v47[0] = *a6;
          v47[1] = v26;
          hlp_setFeatureVector(v22, v20, v23, v24, v11, a3, 0xFFFFFFFF, 0, 0, v47);
          v17 = igtree_Process(*v18, v20, &v49);
          if ((v17 & 0x80000000) != 0)
          {
            goto LABEL_42;
          }

          if (*(*v18 + 1296) != 1)
          {
            v27 = *a2;
            v28 = (*(*v18 + 1296) - 1);
            v29 = v20;
            do
            {
              v30 = *v29++;
              heap_Free(*(v27 + 8), v30);
              --v28;
            }

            while (v28);
          }

          v31 = v49;
          if (strcmp(v49, "NOMATCH"))
          {
            v32 = *(v12 + 48) + 16 * v46;
            v33 = *(v32 + 8);
            if (*(v32 + 8))
            {
              v34 = 0;
              v45 = *(v12 + 48) + 16 * v46;
              v35 = *v32;
              while (strcmp(v31, *v35))
              {
                ++v34;
                v35 += 7;
                if (v33 == v34)
                {
                  goto LABEL_33;
                }
              }

              *(v45 + 12) = v34;
              goto LABEL_40;
            }
          }

          goto LABEL_33;
        }

        NextUtf8Offset = utf8_GetNextUtf8Offset(*(v12 + 40), NextUtf8Offset);
        if ((utf8_getUTF8Char(*(v12 + 40), NextUtf8Offset, v51) & 0x80000000) != 0)
        {
          return 0;
        }
      }
    }

    return 0;
  }

  return v17;
}

uint64_t stat_hmogrph_disambiguatePhons(uint64_t a1, uint64_t a2)
{
  v23 = 0;
  v22 = 0;
  v2 = *(a2 + 16);
  if (!*(a2 + 16))
  {
    return 0;
  }

  v5 = 0;
  result = 0;
  v7 = (a1 + 392);
  do
  {
    v8 = *(a2 + 8) + (v5 << 6);
    if (!*(v8 + 56))
    {
      goto LABEL_16;
    }

    v9 = 0;
    v10 = 12;
    do
    {
      v11 = *(v8 + 48);
      if (*(v11 + v10 - 4) == 1)
      {
        goto LABEL_13;
      }

      if (!*(v11 + v10 - 4))
      {
        return result;
      }

      v12 = *(a1 + 440);
      v18 = *(a1 + 424);
      v19 = v12;
      v20 = *(a1 + 456);
      v21 = *(a1 + 472);
      v13 = *(a1 + 408);
      v16 = *v7;
      v17 = v13;
      result = hlp_disamSpecialWords(a1, a2, v5, v9, &v22, &v16);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      if (v22 != 1)
      {
        v14 = *(a1 + 440);
        v18 = *(a1 + 424);
        v19 = v14;
        v20 = *(a1 + 456);
        v21 = *(a1 + 472);
        v15 = *(a1 + 408);
        v16 = *v7;
        v17 = v15;
        result = hlp_disamCharByChar(a2, v5, v9, &v23, &v22, &v16);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        if (v22 == 1)
        {
          *(*(v8 + 48) + v10) = v23;
          goto LABEL_14;
        }

        v11 = *(v8 + 48);
LABEL_13:
        *(v11 + v10) = 0;
      }

LABEL_14:
      ++v9;
      v10 += 16;
    }

    while (v9 < *(v8 + 56));
    v2 = *(a2 + 16);
LABEL_16:
    ++v5;
  }

  while (v5 < v2);
  return result;
}

uint64_t hlp_CallDepesFunc(void *a1)
{
  v2 = 0;
  v61 = *MEMORY[0x1E69E9840];
  v58 = 0;
  v59 = 0;
  v57 = 0;
  *a1[19] = 0;
  *a1[21] = 0;
  while (1)
  {
    strcpy(__s, "cross_token");
    v3 = strlen(__s);
    v4 = v2;
    if (v2)
    {
      *(a1[19] + strlen(a1[19])) = 32;
      *(a1[21] + strlen(a1[21])) = 32;
    }

    v5 = a1[13];
    v6 = v2;
    v7 = *(v5 + v2);
    if (*(v5 + v2))
    {
      v8 = v2;
      while ((v7 > 0x20 || ((1 << v7) & 0x100002600) == 0) && v7 != 95)
      {
        v8 = ++v2;
        v7 = *(v5 + v2);
        if (!*(v5 + v2))
        {
          v9 = 1;
          goto LABEL_12;
        }
      }

      v9 = 0;
LABEL_12:
      v10 = v2;
    }

    else
    {
      v9 = 1;
      v10 = v2;
      v8 = v2;
    }

    *(v5 + v8) = 0;
    v11 = Utf8_LengthInUtf8chars(a1[13], v10);
    v12 = Utf8_LengthInUtf8chars(a1[13], v4);
    *(a1[14] + v11) = 0;
    v55 = a1[13] + v6;
    log_OutText(*(*a1 + 32), "FE_HMOGRPH", 5, 0, "%s L1: %s", v13, v14, v15, __s);
    v16 = a1[13];
    v17 = strlen((v16 + v6));
    v18 = (*(a1[9] + 120))(a1[7], a1[8], 0, v16 + v6, v17);
    if ((v18 & 0x80000000) != 0)
    {
      goto LABEL_47;
    }

    v22 = v12;
    v56 = a1[14] + v12;
    log_OutText(*(*a1 + 32), "FE_HMOGRPH", 5, 0, "%s L2: %s", v19, v20, v21, __s);
    v23 = a1[14];
    v24 = strlen((v23 + v22));
    v18 = (*(a1[9] + 120))(a1[7], a1[8], 1, v23 + v22, v24);
    if ((v18 & 0x80000000) != 0)
    {
      goto LABEL_47;
    }

    if (((*(a1[9] + 80))(a1[7], a1[8], __s) & 0x80000000) != 0)
    {
      __s[v3] = 0;
      v18 = (*(a1[9] + 80))(a1[7], a1[8], __s);
      if ((v18 & 0x80000000) != 0)
      {
        goto LABEL_47;
      }
    }

    v18 = (*(a1[9] + 128))(a1[7], a1[8], 0, &v59, &v57);
    if ((v18 & 0x80000000) != 0)
    {
LABEL_47:
      v31 = v18;
      goto LABEL_48;
    }

    v59[v57] = 0;
    log_OutText(*(*a1 + 32), "FE_HMOGRPH", 5, 0, "%s O1: %s", v25, v26, v27, __s);
    v31 = (*(a1[9] + 128))(a1[7], a1[8], 1, &v58, &v57);
    if ((v31 & 0x80000000) != 0)
    {
      goto LABEL_48;
    }

    *(v58 + v57) = 0;
    log_OutText(*(*a1 + 32), "FE_HMOGRPH", 5, 0, "%s O2: %s", v28, v29, v30, __s);
    v32 = v59;
    if (*v59)
    {
      v33 = 0;
      v34 = 0;
      do
      {
        v35 = &v32[v33];
        v36 = *v35;
        if (v36 == 194)
        {
          if (v35[1] == 161)
          {
            v38 = strlen(v35 + 2);
            memmove(v35 + 1, v35 + 2, v38 + 1);
            v59[v33] = 126;
          }
        }

        else if (v36 == 126)
        {
          v37 = strlen(v35 + 1);
          memmove(v35, v35 + 1, v37 + 1);
          --v34;
        }

        v33 = ++v34;
        v32 = v59;
        v39 = strlen(v59);
      }

      while (v39 > v34);
      v40 = v39 + 2;
    }

    else
    {
      v40 = 2;
    }

    v41 = a1[19];
    v42 = v40 + strlen(v41);
    if (v42 >= 0x81u)
    {
      break;
    }

LABEL_33:
    strcat(v41, v32);
    for (i = 0; ; ++i)
    {
      v49 = i;
      v50 = *(v58 + i);
      if (v50 != 32 && v50 != 126)
      {
        break;
      }
    }

    if (*(v58 + i))
    {
      while (v50 != 32 && v50 != 126)
      {
        LOBYTE(v50) = *(v58 + ++i);
      }

      *(v58 + i) = 0;
      if (*(v58 + v49))
      {
        v51 = (v58 + v49);
      }

      else
      {
        v51 = "*";
      }
    }

    else
    {
      v51 = "*";
    }

    strcat(a1[21], v51);
    ++v2;
    if (v9)
    {
      goto LABEL_48;
    }
  }

  v43 = heap_Realloc(*(*a1 + 8), v41, v42);
  if (v43)
  {
    v41 = v43;
    a1[19] = v43;
    v32 = v59;
    goto LABEL_33;
  }

  log_OutPublic(*(*a1 + 32), "FE_HMOGRPH", 37000, 0, v44, v45, v46, v47, v54);
  v31 = 2314215434;
LABEL_48:
  v52 = *MEMORY[0x1E69E9840];
  return v31;
}

uint64_t hlp_AppendPhon(uint64_t a1, char *a2, char *__s, uint64_t a4)
{
  if (strlen(__s) >= 2 && !strchr(__s, 32))
  {
    __s[1] = 0;
  }

  if (strlen(a4) >= 2 && !strchr(a4, 32))
  {
    *(a4 + 1) = 0;
  }

  if (!*a2)
  {
    return 0;
  }

  v8 = *(a1 + 152);
  v9 = strlen(v8);
  v10 = v9 + strlen(a2) + 7;
  if (v10 >= 0x81u)
  {
    v11 = heap_Realloc(*(*a1 + 8), v8, v10);
    if (!v11 || (*(a1 + 152) = v11, (v16 = heap_Realloc(*(*a1 + 8), *(a1 + 168), v10)) == 0))
    {
      v33 = 2314215434;
      log_OutPublic(*(*a1 + 32), "FE_HMOGRPH", 37000, 0, v12, v13, v14, v15, v38);
      return v33;
    }

    *(a1 + 168) = v16;
    v8 = *(a1 + 152);
  }

  *&v8[strlen(v8)] = 8689634;
  *(*(a1 + 168) + strlen(*(a1 + 168))) = 32;
  v17 = strstr(a2, "◄");
  if (strchr(__s, 32) || !v17)
  {
    strcat(*(a1 + 152), a2);
    strcat(*(a1 + 168), a4);
    v34 = strlen(a2);
    v35 = Utf8_LengthInUtf8chars(a2, v34);
    if (v35 > strlen(a4))
    {
      v36 = 0;
      do
      {
        *(*(a1 + 168) + strlen(*(a1 + 168))) = 126;
        ++v36;
      }

      while ((v35 - strlen(a4)) > v36);
    }
  }

  else
  {
    v18 = strstr(v17 + 3, "◄");
    if (!v18)
    {
      log_OutPublic(*(*a1 + 32), "FE_HMOGRPH", 37000, 0, v19, v20, v21, v22, v38);
      return 2314215431;
    }

    v23 = v18;
    strncat(*(a1 + 152), a2, (v17 - a2 + 3));
    if (Utf8_LengthInUtf8chars(a2, v17 - a2 + 3))
    {
      v24 = 0;
      do
      {
        *(*(a1 + 168) + strlen(*(a1 + 168))) = 32;
        ++v24;
      }

      while (Utf8_LengthInUtf8chars(a2, v17 - a2 + 3) > v24);
    }

    strncat(*(a1 + 152), v17 + 3, (v23 - v17 - 3));
    strcat(*(a1 + 168), a4);
    v25 = Utf8_LengthInUtf8chars(v17, v23 - v17);
    if (strlen(a4) - v25 <= -2)
    {
      v26 = 0;
      do
      {
        *(*(a1 + 168) + strlen(*(a1 + 168))) = 126;
        ++v26;
      }

      while (v25 + ~strlen(a4) > v26);
    }

    strcat(*(a1 + 152), v23);
    v27 = v23 - a2;
    v28 = strlen(a2);
    v29 = Utf8_LengthInUtf8chars(a2, v28) << 16;
    if (v29 > (Utf8_LengthInUtf8chars(a2, v27) << 16))
    {
      v30 = 0;
      do
      {
        *(*(a1 + 168) + strlen(*(a1 + 168))) = 32;
        ++v30;
        v31 = strlen(a2);
        v32 = Utf8_LengthInUtf8chars(a2, v31);
      }

      while (v32 - Utf8_LengthInUtf8chars(a2, v27) > v30);
    }
  }

  *(*(a1 + 152) + strlen(*(a1 + 152))) = 8689634;
  v33 = 0;
  *(*(a1 + 168) + strlen(*(a1 + 168))) = 32;
  return v33;
}

uint64_t hlp_ProcessNTokens(void *a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  *a1[19] = 0;
  *a1[21] = 0;
  v5 = *(a2 + 16);
  if (*(a2 + 16))
  {
    v9 = 0;
    while (1)
    {
      v10 = *(a2 + 8) + (v9 << 6);
      if (*(v10 + 8) >= a3 && *(v10 + 10) <= a4 && *(v10 + 56))
      {
        break;
      }

LABEL_10:
      if (++v9 >= v5)
      {
        goto LABEL_11;
      }
    }

    v11 = 0;
    v12 = 0;
    while (1)
    {
      v13 = *(*(v10 + 48) + v11) + 56 * *(*(v10 + 48) + v11 + 12);
      strcpy(a1[22], *(v13 + 32));
      appended = hlp_AppendPhon(a1, *v13, *(v13 + 16), *(v13 + 24));
      if ((appended & 0x80000000) != 0)
      {
        return appended;
      }

      ++v12;
      v11 += 16;
      if (v12 >= *(v10 + 56))
      {
        v5 = *(a2 + 16);
        goto LABEL_10;
      }
    }
  }

LABEL_11:
  v15 = (2 * strlen(a1[19])) | 1;
  v16 = a1[13];
  if (!v16 || *(a1 + 60) < v15)
  {
    v17 = heap_Realloc(*(*a1 + 8), a1[13], v15);
    if (!v17)
    {
      goto LABEL_35;
    }

    v16 = v17;
    a1[13] = v17;
    a1[15] = v15;
  }

  v22 = a1[14];
  if (v22 && *(a1 + 64) >= v15)
  {
    goto LABEL_19;
  }

  v23 = heap_Realloc(*(*a1 + 8), v22, v15);
  if (!v23)
  {
LABEL_35:
    v33 = 2314215434;
    log_OutPublic(*(*a1 + 32), "FE_HMOGRPH", 37000, 0, v18, v19, v20, v21, v34);
    return v33;
  }

  a1[14] = v23;
  a1[16] = v15;
  v16 = a1[13];
LABEL_19:
  strcpy(v16, a1[19]);
  strcpy(a1[14], a1[21]);
  v24 = a1[13];
  if (*v24)
  {
    v25 = 0;
    v26 = 0;
    v27 = 0;
    do
    {
      v28 = &v24[v25];
      v29 = v24[v25];
      if (v29 == 226)
      {
        if (*(v28 + 1) == 151 && *(v28 + 2) == 132)
        {
          v26 = !v26;
        }
      }

      else if (v29 == 126 && v26)
      {
        v31 = strlen(&v24[v25]);
        memmove((v28 + 1), &v24[v25], v31 + 1);
        *(a1[13] + v25) = -24126;
        v24 = a1[13];
        v26 = 1;
      }

      v25 = ++v27;
    }

    while (strlen(v24) > v27);
  }

  return hlp_CallDepesFunc(a1);
}

uint64_t stat_hmogrph_updateLingdb(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v120 = *MEMORY[0x1E69E9840];
  v98 = 0;
  v96 = 0;
  v97 = 0;
  v94 = 0;
  v95 = 0;
  v92 = 0;
  v93 = 0;
  v91 = 0;
  memset(v119, 0, 64);
  v90 = 0;
  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  v108 = 0u;
  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  *__s = 0u;
  v12 = (*(a2 + 104))(a3, a4, 1, 0, &v98);
  if ((v12 & 0x80000000) != 0)
  {
    v13 = v12;
  }

  else
  {
    v13 = (*(a2 + 184))(a3, a4, v98, 0, &v94);
    if ((v13 & 0x80000000) == 0 && v94 == 1)
    {
      v13 = (*(a2 + 176))(a3, a4, v98, 0, &v91, &v95);
      if ((v13 & 0x80000000) == 0 && v95 >= 2u)
      {
        updated = (*(a2 + 104))(a3, a4, 2, v98, &v97 + 2);
        if ((updated & 0x80000000) != 0)
        {
          goto LABEL_123;
        }

        v89 = a1;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v81 = a6;
LABEL_8:
        if (HIWORD(v97))
        {
          updated = (*(a2 + 168))(a3, a4);
          if ((updated & 0x80000000) != 0)
          {
            goto LABEL_123;
          }

          updated = (*(a2 + 168))(a3, a4, HIWORD(v97), 1, 1, &v96 + 2, &v95);
          if ((updated & 0x80000000) != 0)
          {
            goto LABEL_123;
          }

          updated = (*(a2 + 168))(a3, a4, HIWORD(v97), 2, 1, &v96, &v95);
          if ((updated & 0x80000000) != 0)
          {
            goto LABEL_123;
          }

          if (HIWORD(v96) > v96)
          {
            v13 = 2314223281;
            goto LABEL_124;
          }

          if (HIWORD(v96) != v16 || v96 != v17 || (v18 = v93, v93 != 4))
          {
            updated = (*(*(v89 + 48) + 136))(a3, a4, HIWORD(v97), &v97);
            if ((updated & 0x80000000) != 0)
            {
              goto LABEL_123;
            }

            if (v97)
            {
              updated = (*(*(v89 + 48) + 168))(a3, a4);
              if ((updated & 0x80000000) != 0)
              {
                goto LABEL_123;
              }
            }

            if (v92 == 4 && !v15)
            {
              v19 = v90;
              if (v90)
              {
                v84 = v16;
                if (v90 == 1)
                {
                  v20 = strlen(__s[0]);
                  updated = (*(a2 + 160))(a3, a4, v119[0], 3, (v20 + 1), __s[0], &v94 + 2);
                  if ((updated & 0x80000000) != 0)
                  {
                    goto LABEL_123;
                  }
                }

                else
                {
                  v21 = 0;
                  v22 = 0;
                  v23 = 10000;
                  do
                  {
                    updated = (*(a2 + 168))(a3, a4, v119[v21], 7, 1, &v95 + 2, &v95);
                    if ((updated & 0x80000000) != 0)
                    {
                      goto LABEL_123;
                    }

                    if (HIWORD(v95) < v23)
                    {
                      v23 = HIWORD(v95);
                      v22 = v21;
                    }

                    ++v21;
                  }

                  while (v19 != v21);
                  v24 = strlen(__s[v22]);
                  updated = (*(a2 + 160))(a3, a4, v119[v22], 3, (v24 + 1), __s[v22], &v94 + 2);
                  v16 = v84;
                  v15 = 0;
                  if ((updated & 0x80000000) != 0)
                  {
                    goto LABEL_123;
                  }
                }
              }
            }

            hlp_freeWordPhoneList(a5, &v90, v119, __s);
            v18 = v93;
            if (v93 > 0xA || ((1 << v93) & 0x610) == 0)
            {
              goto LABEL_64;
            }
          }

          v88 = v96;
          if (HIWORD(v96) != v16 || v96 != v17)
          {
            v15 = 0;
            v16 = HIWORD(v96);
          }

          if (v18 == 9)
          {
            updated = (*(*(v89 + 48) + 136))(a3, a4, HIWORD(v97), &v97);
            if ((updated & 0x80000000) != 0)
            {
              goto LABEL_123;
            }

            if (v97)
            {
              updated = (*(*(v89 + 48) + 168))(a3, a4);
              if ((updated & 0x80000000) != 0)
              {
                goto LABEL_123;
              }
            }
          }

          if (*(v89 + 144) && v93 == 9 && v92 == 17)
          {
            updated = hlp_ProcessNTokens(v89, a5, HIWORD(v96), v96);
            if ((updated & 0x80000000) == 0)
            {
              v25 = strlen(*(v89 + 152));
              v26 = (*(*(v89 + 48) + 160))(a3, a4, HIWORD(v97), 3, (v25 + 1), *(v89 + 152), &v94 + 2);
              if ((v26 & 0x80000000) != 0 || (v27 = strlen(*(v89 + 168)), v26 = (*(*(v89 + 48) + 160))(a3, a4, HIWORD(v97), 6, (v27 + 1), *(v89 + 168), &v94 + 2), (v26 & 0x80000000) != 0) || (HIWORD(v95) = 4, v26 = (*(*(v89 + 48) + 160))(a3, a4, HIWORD(v97), 7, 1, &v95 + 2, &v94 + 2), (v26 & 0x80000000) != 0))
              {
                v13 = v26;
                goto LABEL_124;
              }

              v28 = strlen(*(v89 + 176));
              updated = (*(*(v89 + 48) + 160))(a3, a4, HIWORD(v97), 9, (v28 + 1), *(v89 + 176), &v94 + 2);
              v17 = v88;
              if ((updated & 0x80000000) == 0)
              {
                goto LABEL_64;
              }
            }

            goto LABEL_123;
          }

          v82 = v96;
          v83 = HIWORD(v96);
          v29 = v90;
          v102 = 0;
          v101 = 0;
          __src = 0;
          v99 = 0;
          v87 = HIWORD(v97);
          v13 = (*(a2 + 184))(a3, a4);
          if ((v13 & 0x80000000) != 0 || !v99)
          {
            goto LABEL_62;
          }

          updated = (*(a2 + 176))(a3, a4, v87, 3, &__src, &v102);
          if ((updated & 0x80000000) != 0)
          {
            goto LABEL_123;
          }

          v99 = 0;
          v13 = (*(a2 + 184))(a3, a4, v87, 7, &v99);
          if ((v13 & 0x80000000) != 0 || !v99)
          {
LABEL_62:
            if ((v13 & 0x80000000) != 0)
            {
              goto LABEL_124;
            }

            goto LABEL_63;
          }

          v13 = (*(a2 + 168))(a3, a4, v87, 7, 1, &v102 + 2, &v102);
          if ((v13 & 0x80000000) != 0)
          {
            goto LABEL_124;
          }

          v30 = strlen(__src);
          v31 = heap_Calloc(*(*a5 + 8), 1, v30 + 1);
          __s[v29] = v31;
          if (!v31)
          {
            v13 = 2314215434;
LABEL_127:
            log_OutPublic(*(*a5 + 32), "FE_HMOGRPH", 37000, 0, v32, v33, v34, v35, v74);
            goto LABEL_124;
          }

          strcpy(v31, __src);
          v36 = *(a5 + 16);
          if (!*(a5 + 16))
          {
            goto LABEL_63;
          }

          v86 = v15;
          v37 = (*(a5 + 8) + 56);
          while (*(v37 - 24) != v83 || *(v37 - 23) != v82)
          {
            v37 += 32;
            if (!--v36)
            {
              v15 = v86;
              if ((v13 & 0x80000000) != 0)
              {
                goto LABEL_124;
              }

LABEL_63:
              v119[v29] = HIWORD(v97);
              v90 = v29 + 1;
              v17 = v88;
LABEL_64:
              updated = (*(a2 + 120))(a3, a4, HIWORD(v97), &v97 + 2);
              if ((updated & 0x80000000) != 0)
              {
LABEL_123:
                v13 = updated;
                goto LABEL_124;
              }

              goto LABEL_8;
            }
          }

          v85 = v16;
          v78 = a5;
          v38 = *v37;
          if (*v37)
          {
            v39 = 0;
            v40 = (*(v37 - 1) + 12);
            do
            {
              v41 = *v40;
              v42 = *(v40 - 2);
              if (v42 <= v41)
              {
                LOWORD(v41) = v42 - 1;
              }

              v43 = strlen(*(*(v40 - 6) + 56 * v41));
              if (v43)
              {
                v39 += v43 + 1;
              }

              v40 += 8;
              --v38;
            }

            while (v38);
          }

          else
          {
            v39 = 0;
          }

          v44 = heap_Calloc(*(*a5 + 8), 1, v39 + 1);
          if (!v44)
          {
            v13 = 2314215434;
            goto LABEL_127;
          }

          v79 = v39;
          v77 = v29;
          *v44 = 0;
          if (*v37)
          {
            v45 = 0;
            for (i = 0; i < v54; ++i)
            {
              v47 = (*(v37 - 1) + v45);
              v48 = *(v47 + 6);
              v49 = *(v47 + 4);
              if (v49 <= v48)
              {
                LOWORD(v48) = v49 - 1;
              }

              v50 = *v47;
              v51 = 56 * v48;
              v52 = v44;
              strcat(v44, *(*v47 + v51));
              v53 = *(v50 + v51);
              v54 = *v37;
              if (*v53)
              {
                v55 = i == v54 - 1;
              }

              else
              {
                v55 = 1;
              }

              if (!v55)
              {
                if (!strstr(v53, "{SEP"))
                {
                  *&v52[strlen(v52)] = 46;
                  v44 = v52;
                  v54 = *v37;
                  goto LABEL_87;
                }

                --v79;
              }

              v44 = v52;
LABEL_87:
              v45 += 16;
            }
          }

          if (v79 >= 2u)
          {
            v44[v79 - 1] = 0;
          }

          v80 = v44;
          v16 = v85;
          v29 = v77;
          a5 = v78;
          if (strcmp(v44, __src) | v86)
          {
            v13 = (*(a2 + 160))(a3, a4, v87, 3, 8, "DELETED", &v101);
            v63 = *v78;
            if ((v13 & 0x80000000) != 0)
            {
              heap_Free(*(v63 + 8), v80);
              goto LABEL_124;
            }

            v76 = *(v37 - 7);
            log_OutText(*(v63 + 32), "FE_HMOGRPH", 5, 0, "DELETED: from %d to %d, orth %s with phon %s and priority %d", v60, v61, v62, v83);
            v15 = v86;
            v59 = v80;
          }

          else
          {
            v75 = *(v37 - 7);
            log_OutText(*(*v78 + 32), "FE_HMOGRPH", 5, 0, "from %d to %d, orth %s, disambiguated phon %s, priority %d", v56, v57, v58, v83);
            v59 = v80;
            v15 = 1;
          }

          heap_Free(*(*v78 + 8), v59);
          if ((v13 & 0x80000000) == 0)
          {
            goto LABEL_63;
          }

LABEL_124:
          hlp_freeWordPhoneList(a5, &v90, v119, __s);
        }

        else
        {
          v64 = v89;
          if (v119[0])
          {
            if (v93 == 4 && v15 == 0)
            {
              v66 = v90;
              if (v90)
              {
                if (v90 == 1)
                {
                  v67 = strlen(__s[0]);
                  updated = (*(a2 + 160))(a3, a4, v119[0], 3, (v67 + 1), __s[0], &v94 + 2);
                  if ((updated & 0x80000000) != 0)
                  {
                    goto LABEL_123;
                  }
                }

                else
                {
                  v68 = 0;
                  v69 = 0;
                  v70 = 10000;
                  do
                  {
                    updated = (*(a2 + 168))(a3, a4, v119[v68], 7, 1, &v95 + 2, &v95);
                    if ((updated & 0x80000000) != 0)
                    {
                      goto LABEL_123;
                    }

                    if (HIWORD(v95) < v70)
                    {
                      v70 = HIWORD(v95);
                      v69 = v68;
                    }

                    ++v68;
                  }

                  while (v66 != v68);
                  v71 = strlen(__s[v69]);
                  updated = (*(a2 + 160))(a3, a4, v119[v69], 3, (v71 + 1), __s[v69], &v94 + 2);
                  v64 = v89;
                  if ((updated & 0x80000000) != 0)
                  {
                    goto LABEL_123;
                  }
                }
              }
            }

            hlp_freeWordPhoneList(a5, &v90, v119, __s);
          }

          if (*(v64 + 144))
          {
            updated = hlp_updateLingdb_process_skipcrosstoekn_cleanup(v64, a2, a3, a4, v98);
            if ((updated & 0x80000000) != 0)
            {
              goto LABEL_123;
            }
          }

          updated = hlp_updateLingdb_delete_duplicated_words(*v64, a2, a3, a4, a5, v98, *(v64 + 384), v81);
          if ((updated & 0x80000000) != 0)
          {
            goto LABEL_123;
          }

          v13 = stat_hmogrph_selectSubOrWholeRcd(v64, a2, a3, a4, a5);
          if ((v13 & 0x80000000) == 0)
          {
            goto LABEL_124;
          }
        }
      }
    }
  }

  v72 = *MEMORY[0x1E69E9840];
  return v13;
}

void *hlp_freeWordPhoneList(void *result, _WORD *a2, uint64_t a3, uint64_t a4)
{
  v7 = result;
  for (i = 0; i != 32; ++i)
  {
    if (*(a3 + 2 * i))
    {
      *(a3 + 2 * i) = 0;
    }

    v9 = *(a4 + 8 * i);
    if (v9)
    {
      result = heap_Free(*(*v7 + 8), v9);
      *(a4 + 8 * i) = 0;
    }
  }

  *a2 = 0;
  return result;
}

uint64_t hlp_updateLingdb_process_skipcrosstoekn_cleanup(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = 0;
  v16 = 0;
  result = (*(a2 + 104))(a3, a4, 2, a5, &v16 + 2);
  if ((result & 0x80000000) == 0)
  {
    v11 = HIWORD(v16);
    if (HIWORD(v16))
    {
      v12 = 0;
      do
      {
        result = (*(a2 + 168))(a3, a4, v11, 0, 1, &v15, &v16);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        if (v15 == 17)
        {
          result = (*(*(a1 + 48) + 192))(a3, a4, HIWORD(v16));
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          HIWORD(v16) = v12;
          v13 = v12;
        }

        else
        {
          v13 = HIWORD(v16);
        }

        v14 = *(a1 + 48);
        if (v13)
        {
          result = (*(v14 + 120))(a3, a4, v13, &v16 + 2);
          v12 = v13;
          if ((result & 0x80000000) != 0)
          {
            return result;
          }
        }

        else
        {
          result = (*(v14 + 104))(a3, a4, 2, a5, &v16 + 2);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }
        }

        v11 = HIWORD(v16);
      }

      while (HIWORD(v16));
    }
  }

  return result;
}

uint64_t hlp_updateLingdb_delete_duplicated_words(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  __s1 = 0;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  v24 = 0;
  updated = (*(a2 + 104))(a3, a4, 2, a6, &v26 + 2);
  if ((updated & 0x80000000) == 0)
  {
    v15 = HIWORD(v26);
    if (HIWORD(v26))
    {
      v16 = 0;
      do
      {
        updated = (*(a2 + 120))(a3, a4, v15, &v26);
        if ((updated & 0x80000000) != 0)
        {
          break;
        }

        (*(a2 + 168))(a3, a4, HIWORD(v26), 0, 1, &v24, &v25);
        if (v24 <= 0xA && ((1 << v24) & 0x610) != 0)
        {
          v18 = (*(a2 + 168))(a3, a4, HIWORD(v26), 1, 1, &v27 + 2, &v25);
          if ((v18 & 0x80000000) != 0)
          {
            return v18;
          }

          v18 = (*(a2 + 168))(a3, a4, HIWORD(v26), 2, 1, &v27, &v25);
          if ((v18 & 0x80000000) != 0)
          {
            return v18;
          }

          updated = (*(a2 + 176))(a3, a4, HIWORD(v26), 3, &__s1, &v25);
          if ((updated & 0x80000000) != 0)
          {
            return updated;
          }

          if (!strcmp(__s1, "DELETED"))
          {
            updated = (*(a2 + 192))(a3, a4, HIWORD(v26));
            if ((updated & 0x80000000) != 0)
            {
              return updated;
            }

            log_OutText(*(*a5 + 32), "FE_HMOGRPH", 5, 0, "delete a word record from pos %d to pos %d", v19, v20, v21, HIWORD(v27));
          }

          else if (a7)
          {
            updated = updateNLUNE(a1, a3, a4, a2, HIWORD(v26), v16, a8);
            if ((updated & 0x80000000) != 0)
            {
              return updated;
            }

            ++v16;
          }
        }

        v15 = v26;
        HIWORD(v26) = v26;
      }

      while (v26);
    }
  }

  return updated;
}

uint64_t stat_hmogrph_selectSubOrWholeRcd(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = 0;
  v101 = 0;
  if (a2 && a5)
  {
    v102 = 0;
    v99 = 0;
    v100 = 0;
    v6 = *(a5 + 8);
    if (*(a5 + 8))
    {
      v7 = 0;
      v8 = a5[1];
      v9 = *(a5 + 8);
      v10 = v9;
      do
      {
        v11 = v8 + (v7 << 6);
        v12 = *(v11 + 24);
        if (!*v12)
        {
          v19 = v7;
          v20 = (v8 + 10);
          v21 = v6;
          while (!v19 || *(v11 + 8) < *(v20 - 1) || *(v11 + 10) > *v20)
          {
            v20 += 32;
            --v19;
            if (!--v21)
            {
              *(v11 + 32) = 0;
              goto LABEL_47;
            }
          }

          *(v11 + 32) = 1;
LABEL_47:
          v9 = v6;
          v10 = v6;
          goto LABEL_85;
        }

        if (!strcmp(*(v11 + 24), "poi"))
        {
          if (v9)
          {
            v22 = v9;
            v23 = v7;
            v24 = (v8 + 10);
            v25 = v9;
            while (!v23 || *(v11 + 8) < *(v24 - 1) || *(v11 + 10) > *v24)
            {
              v24 += 32;
              --v23;
              if (!--v25)
              {
                if (hlp_hasRcdWithGivenPOIClass(v8 + (v7 << 6), "poi"))
                {
                  *(v11 + 32) = 0;
                  v26 = (v8 + 32);
                  v27 = v7;
                  do
                  {
                    if (v27 && *(v11 + 8) <= *(v26 - 12) && *(v11 + 10) >= *(v26 - 11))
                    {
                      *v26 = 1;
                    }

                    --v27;
                    v26 += 16;
                    --v22;
                  }

                  while (v22);
                }

                else if (stat_hmogrph_hasSubWordWithGivenTn((a5 + 1), v7, "poi"))
                {
                  *(v11 + 32) = 1;
                  v30 = (v8 + 32);
                  v31 = v7;
                  do
                  {
                    if (v31 && *(v11 + 8) <= *(v30 - 12) && *(v11 + 10) >= *(v30 - 11))
                    {
                      *v30 = 0;
                    }

                    --v31;
                    v30 += 16;
                    --v22;
                  }

                  while (v22);
                }

                else
                {
                  *(v11 + 32) = 0;
                  v34 = (v8 + 32);
                  v35 = v7;
                  do
                  {
                    if (v35 && *(v11 + 8) <= *(v34 - 12) && *(v11 + 10) >= *(v34 - 11))
                    {
                      *v34 = 1;
                    }

                    --v35;
                    v34 += 16;
                    --v22;
                  }

                  while (v22);
                }

                break;
              }
            }

            v10 = v9;
            goto LABEL_85;
          }

          if (!hlp_hasRcdWithGivenPOIClass(v8 + (v7 << 6), "poi") && stat_hmogrph_hasSubWordWithGivenTn((a5 + 1), v7, "poi"))
          {
            v9 = 0;
LABEL_69:
            v10 = 0;
            *(v11 + 32) = 1;
            goto LABEL_85;
          }

          v9 = 0;
        }

        else
        {
          if (v10)
          {
            v13 = v10;
            v14 = v7;
            v15 = (v8 + 10);
            v16 = v10;
            while (!v14 || *(v11 + 8) < *(v15 - 1) || *(v11 + 10) > *v15)
            {
              v15 += 32;
              --v14;
              if (!--v16)
              {
                if (hlp_hasRcdWithGivenPOIClass(v8 + (v7 << 6), v12))
                {
                  *(v11 + 32) = 0;
                  v17 = (v8 + 32);
                  v18 = v7;
                  do
                  {
                    if (v18 && *(v11 + 8) <= *(v17 - 12) && *(v11 + 10) >= *(v17 - 11))
                    {
                      *v17 = 1;
                    }

                    --v18;
                    v17 += 16;
                    --v13;
                  }

                  while (v13);
                }

                else if (stat_hmogrph_hasSubWordWithGivenTn((a5 + 1), v7, v12))
                {
                  *(v11 + 32) = 1;
                  v28 = (v8 + 32);
                  v29 = v7;
                  do
                  {
                    if (v29 && *(v11 + 8) <= *(v28 - 12) && *(v11 + 10) >= *(v28 - 11))
                    {
                      *v28 = 0;
                    }

                    --v29;
                    v28 += 16;
                    --v13;
                  }

                  while (v13);
                }

                else if (hlp_hasRcdWithGivenPOIClass(v8 + (v7 << 6), "poi"))
                {
                  *(v11 + 32) = 0;
                  v32 = (v8 + 32);
                  v33 = v7;
                  do
                  {
                    if (v33 && *(v11 + 8) <= *(v32 - 12) && *(v11 + 10) >= *(v32 - 11))
                    {
                      *v32 = 1;
                    }

                    --v33;
                    v32 += 16;
                    --v13;
                  }

                  while (v13);
                }

                else if (stat_hmogrph_hasSubWordWithGivenTn((a5 + 1), v7, "poi"))
                {
                  *(v11 + 32) = 1;
                  v36 = (v8 + 32);
                  v37 = v7;
                  do
                  {
                    if (v37 && *(v11 + 8) <= *(v36 - 12) && *(v11 + 10) >= *(v36 - 11))
                    {
                      *v36 = 0;
                    }

                    --v37;
                    v36 += 16;
                    --v13;
                  }

                  while (v13);
                }

                else
                {
                  *(v11 + 32) = 0;
                  v38 = (v8 + 32);
                  v39 = v7;
                  do
                  {
                    if (v39 && *(v11 + 8) <= *(v38 - 12) && *(v11 + 10) >= *(v38 - 11))
                    {
                      *v38 = 1;
                    }

                    --v39;
                    v38 += 16;
                    --v13;
                  }

                  while (v13);
                }

                goto LABEL_85;
              }
            }

            goto LABEL_85;
          }

          if (!hlp_hasRcdWithGivenPOIClass(v8 + (v7 << 6), v12) && (stat_hmogrph_hasSubWordWithGivenTn((a5 + 1), v7, v12) || !hlp_hasRcdWithGivenPOIClass(v8 + (v7 << 6), "poi") && stat_hmogrph_hasSubWordWithGivenTn((a5 + 1), v7, "poi")))
          {
            goto LABEL_69;
          }
        }

        v10 = 0;
        *(v11 + 32) = 0;
LABEL_85:
        ++v7;
      }

      while (v7 != v6);
    }

    v40 = a4;
    v41 = a3;
    v42 = (*(a2 + 104))(a3, a4, 1, 0, &v100 + 2);
    if ((v42 & 0x80000000) != 0)
    {
      return v42;
    }

    else
    {
      v5 = (*(a2 + 104))(a3, a4, 2, HIWORD(v100), &v100);
      if ((v5 & 0x80000000) == 0)
      {
        v43 = v100;
        v44 = a5;
        v45 = a1;
        if (v100)
        {
          do
          {
            v42 = (*(a2 + 120))(v41, v40, v43, &v99 + 2);
            if ((v42 & 0x80000000) != 0)
            {
              return v42;
            }

            v5 = (*(a2 + 168))(v41, v40, v100, 0, 1, &v102, &v99);
            if ((v5 & 0x80000000) != 0)
            {
              return v5;
            }

            if (v102 == 4 || (v102 == 9 ? (v46 = *(v45 + 144) == 0) : (v46 = 0), !v46 ? (v47 = 0) : (v47 = 1), v102 != 10 ? (v48 = v47 == 0) : (v48 = 0), !v48))
            {
              v42 = (*(a2 + 168))(v41, v40, v100, 1, 1, &v101 + 2, &v99);
              if ((v42 & 0x80000000) != 0)
              {
                return v42;
              }

              v42 = (*(a2 + 168))(v41, v40, v100, 2, 1, &v101, &v99);
              if ((v42 & 0x80000000) != 0)
              {
                return v42;
              }

              if (!*(v44 + 8))
              {
LABEL_189:
                v5 = 2314215424;
                log_OutText(*(*v44 + 32), "FE_HMOGRPH", 5, 0, "cant find lingdb word : no word found with pos=%d,%d", v49, v50, v51, HIWORD(v101));
                return v5;
              }

              v52 = 0;
              v53 = v44[1];
              v54 = 32;
              while (__PAIR64__(*(v53 + v54 - 22), *(v53 + v54 - 24)) != __PAIR64__(v101, HIWORD(v101)))
              {
                ++v52;
                v54 += 64;
                if (*(v44 + 8) == v52)
                {
                  goto LABEL_189;
                }
              }

              if (*(v53 + v54) == 1)
              {
                v5 = (*(a2 + 192))(v41, v40, v100);
                if ((v5 & 0x80000000) != 0)
                {
                  return v5;
                }

                log_OutText(*(*v44 + 32), "FE_HMOGRPH", 5, 0, "Due to POI priority, delete a word record from pos %d to pos %d", v55, v56, v57, HIWORD(v101));
                v58 = v44[1];
                if (*(v58 + v54) != 1)
                {
                  goto LABEL_186;
                }

                v59 = *(v44 + 8);
                if (*(v44 + 8))
                {
                  v60 = v58 + v54;
                  v61 = (v58 + 10);
                  v62 = v52;
                  do
                  {
                    if (v62 && *(v60 - 24) >= *(v61 - 1) && *(v60 - 22) <= *v61)
                    {
                      goto LABEL_186;
                    }

                    --v62;
                    v61 += 32;
                    --v59;
                  }

                  while (v59);
                  v63 = 0;
                  v5 = 0;
                  while (1)
                  {
                    if (v52 != v63)
                    {
                      v64 = v44[1] + (v63 << 6);
                      if (*(v60 - 24) <= *(v64 + 8))
                      {
                        v65 = *(v64 + 10);
                        if (*(v60 - 22) > v65)
                        {
                          break;
                        }
                      }
                    }

LABEL_182:
                    if (++v63 >= *(v44 + 8))
                    {
                      if ((v5 & 0x80000000) != 0)
                      {
                        return v5;
                      }

                      goto LABEL_186;
                    }
                  }

                  v66 = *v44;
                  v107 = 0;
                  v105 = 0;
                  __s = 0;
                  HIWORD(v104) = 0;
                  v42 = (*(a2 + 104))(v41, v40, 1, 0, &v107);
                  if ((v42 & 0x80000000) != 0)
                  {
                    return v42;
                  }

                  v5 = (*(a2 + 184))(v41, v40, v107, 0, &v105 + 2);
                  if ((v5 & 0x80000000) != 0)
                  {
                    v45 = a1;
                  }

                  else
                  {
                    v45 = a1;
                    if (HIWORD(v105) == 1)
                    {
                      v5 = (*(a2 + 176))(a3, a4, v107, 0, &__s, &v105);
                      if ((v5 & 0x80000000) == 0 && v105 >= 2u)
                      {
                        v67 = strlen(__s);
                        v68 = heap_Calloc(*(v66 + 8), 1, v67 + 2);
                        if (!v68)
                        {
                          log_OutPublic(*(v66 + 32), "FE_HMOGRPH", 37000, 0, v69, v70, v71, v72, v93);
                          return 2314215434;
                        }

                        v73 = v68;
                        v74 = &strcpy(v68, __s)[v65];
                        v75 = strlen(v74);
                        memmove(v74 + 1, v74, v75 + 1);
                        *v74 = 32;
                        v76 = strlen(v73);
                        v42 = (*(a2 + 160))(a3, a4, v107, 0, (v76 + 1), v73, &v104 + 2);
                        if ((v42 & 0x80000000) != 0)
                        {
                          return v42;
                        }

                        heap_Free(*(v66 + 8), v73);
                        v44 = a5;
                        v41 = a3;
                        v40 = a4;
                        goto LABEL_148;
                      }
                    }
                  }

                  v41 = a3;
                  v40 = a4;
                  if ((v5 & 0x80000000) != 0)
                  {
                    return v5;
                  }

LABEL_148:
                  v105 = 0;
                  LODWORD(__s) = 0;
                  v107 = 0;
                  v103 = 0;
                  v104 = 0;
                  v42 = (*(a2 + 104))(v41, v40, 1, 0, &v105);
                  if ((v42 & 0x80000000) != 0)
                  {
                    return v42;
                  }

                  v77 = (*(a2 + 104))(v41, v40, 2, v105, &v104 + 2);
                  v5 = v77;
                  if ((v77 & 0x80000000) == 0)
                  {
                    v78 = HIWORD(v104);
                    if (HIWORD(v104))
                    {
                      while (1)
                      {
                        v42 = (*(a2 + 120))(v41, v40, v78, &v104);
                        if ((v42 & 0x80000000) != 0)
                        {
                          return v42;
                        }

                        (*(a2 + 168))(v41, v40, HIWORD(v104), 0, 1, &__s, &v103 + 2);
                        v42 = (*(a2 + 168))(v41, v40, HIWORD(v104), 1, 1, &v107, &v103 + 2);
                        if ((v42 & 0x80000000) != 0)
                        {
                          return v42;
                        }

                        v42 = (*(a2 + 168))(v41, v40, HIWORD(v104), 2, 1, &v105 + 2, &v103 + 2);
                        if ((v42 & 0x80000000) != 0)
                        {
                          return v42;
                        }

                        if (v107 >= v65)
                        {
                          ++v107;
                          v79 = HIWORD(v105);
                        }

                        else
                        {
                          v79 = HIWORD(v105);
                          if (HIWORD(v105) <= v65)
                          {
                            goto LABEL_159;
                          }
                        }

                        HIWORD(v105) = v79 + 1;
LABEL_159:
                        v42 = (*(a2 + 160))(v41, v40, HIWORD(v104), 1, 1, &v107, &v103);
                        if ((v42 & 0x80000000) != 0)
                        {
                          return v42;
                        }

                        v42 = (*(a2 + 160))(v41, v40, HIWORD(v104), 2, 1, &v105 + 2, &v103);
                        if ((v42 & 0x80000000) != 0)
                        {
                          return v42;
                        }

                        v78 = v104;
                        HIWORD(v104) = v104;
                        if (!v104)
                        {
                          goto LABEL_164;
                        }
                      }
                    }
                  }

                  if ((v77 & 0x80000000) != 0)
                  {
                    return v5;
                  }

LABEL_164:
                  if (*(v44 + 8))
                  {
                    v80 = 0;
                    v81 = 0;
                    v82 = *(v44 + 8) << 6;
                    v83 = v52;
                    do
                    {
                      if (v83)
                      {
                        v84 = v44[1];
                        v85 = v84 + v80;
                        v86 = *(v84 + v80 + 8);
                        if (v86 >= v65)
                        {
                          *(v85 + 8) = v86 + 1;
                          v88 = *(v85 + 10);
                          v87 = (v85 + 10);
                          LOWORD(v86) = v88;
                          goto LABEL_171;
                        }

                        v86 = *(v85 + 10);
                        if (v86 > v65)
                        {
                          v87 = (v84 + (v81 << 6) + 10);
LABEL_171:
                          *v87 = v86 + 1;
                        }
                      }

                      ++v81;
                      --v83;
                      v80 += 64;
                    }

                    while (v82 != v80);
                  }

                  v107 = 0;
                  __s = 0;
                  HIWORD(v105) = 0;
                  v42 = (*(a2 + 104))(v41, v40, 1, 0, &v105 + 2);
                  if ((v42 & 0x80000000) != 0)
                  {
                    return v42;
                  }

                  v5 = (*(a2 + 176))(v41, v40, HIWORD(v105), 1, &__s, &v107);
                  if ((v5 & 0x80000000) != 0)
                  {
                    return v5;
                  }

                  v89 = v107;
                  if (v107)
                  {
                    v90 = __s + 16;
                    do
                    {
                      v91 = *(v90 - 1);
                      if (v91 >= v65)
                      {
                        *(v90 - 1) = v91 + 1;
                      }

                      else if (*v90 + v91 > v65)
                      {
                        ++*v90;
                      }

                      v90 += 32;
                      --v89;
                    }

                    while (v89);
                  }

                  goto LABEL_182;
                }
              }

              v5 = 0;
            }

LABEL_186:
            v43 = HIWORD(v99);
            LOWORD(v100) = HIWORD(v99);
          }

          while (HIWORD(v99));
        }
      }
    }
  }

  return v5;
}