uint64_t hlp_freeFeatureVector(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  if (a3)
  {
    v5 = a3;
    do
    {
      v6 = *a2++;
      heap_Free(*(a1 + 8), v6);
      --v5;
    }

    while (v5);
  }

  return 0;
}

uint64_t _hmgrph_param_split(uint64_t a1, const char *a2, uint64_t *a3, _DWORD *a4)
{
  do
  {
    v8 = *a2++;
  }

  while (v8 == 32);
  while (1)
  {
    v9 = a2[cstdlib_strlen(a2 - 1) - 2];
    v10 = a2 - 1;
    if (v9 != 32)
    {
      break;
    }

    a2[cstdlib_strlen(v10) - 2] = 0;
  }

  v11 = cstdlib_strlen(v10);
  v12 = v11;
  v13 = 0;
  *a4 = 0;
  if ((v11 + 1) > 1)
  {
    v14 = (v11 + 1);
  }

  else
  {
    v14 = 1;
  }

  v15 = (a2 - 1);
  do
  {
    v16 = *v15++;
    if ((v16 | 0x20) == 0x20)
    {
      *a4 = ++v13;
    }

    --v14;
  }

  while (v14);
  v17 = heap_Calloc(*(a1 + 8), 1, 8 * v13);
  *a3 = v17;
  if (v17)
  {
    *v17 = a2 - 1;
    if (v12)
    {
      v22 = 0;
      v23 = 0;
      do
      {
        v24 = &a2[v22];
        if (a2[v22 - 1] == 32)
        {
          *(v24 - 1) = 0;
          ++v22;
          *(*a3 + 8 * ++v23) = v24;
        }

        else
        {
          ++v22;
        }
      }

      while (v22 != v12);
    }

    return 0;
  }

  else
  {
    v25 = 2314215434;
    log_OutPublic(*(a1 + 32), "FE_HMOGRPH", 37000, 0, v18, v19, v20, v21, v27);
    if (*a3)
    {
      heap_Free(*(a1 + 8), *a3);
    }
  }

  return v25;
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
      v11 = *(*(a4 + 16) + 64);
      v21 = *(a4 + 40);
      v22 = v11;
      if (cstdlib_strcmp(*(v10 - 1), "features"))
      {
        if (!cstdlib_strcmp(*(v10 - 1), "collocations"))
        {
          _hmgrph_param_split(a1, *v10, v6, &v21);
          if (HIWORD(v21))
          {
            return v8;
          }

          *(a4 + 40) = v21;
        }
      }

      else
      {
        _hmgrph_param_split(a1, *v10, (*(a4 + 16) + 56), &v22);
        if (v22 > 0xFF)
        {
          return v8;
        }

        *(*(a4 + 16) + 64) = v22;
      }

      v10 += 2;
      --v9;
    }

    while (v9);
  }

  else
  {
    *(v7 + 64) = 29;
    v12 = heap_Calloc(*(a1 + 8), 1, 232);
    v17 = *(a4 + 16);
    *(v17 + 56) = v12;
    if (!v12)
    {
      log_OutPublic(*(a1 + 32), "FE_HMOGRPH", 37000, 0, v13, v14, v15, v16, v20);
      return 2314215434;
    }

    if (*(v17 + 64))
    {
      v18 = 0;
      do
      {
        *(*(v17 + 56) + 8 * v18) = off_279DAC800[v18];
        ++v18;
        v17 = *(a4 + 16);
      }

      while (v18 < *(v17 + 64));
    }
  }

  return 0;
}

uint64_t stat_hmogrph_ModelInit(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, _WORD *a8, unsigned __int16 *a9)
{
  v72 = *MEMORY[0x277D85DE8];
  v70 = 0;
  v68 = 0;
  *__s2 = 0;
  *v66 = 0;
  v67 = 0;
  memset(v71, 0, sizeof(v71));
  __src = 0;
  *a7 = 0;
  *a8 = 0;
  *a9 = 0;
  BrokerString = stat_hmogrph_getBrokerString(a3, v71, 0x100uLL);
  if ((BrokerString & 0x80000000) != 0)
  {
    goto LABEL_43;
  }

  BrokerString = ssftriff_reader_ObjOpen(a1, a2, 2, v71, "HMGR", 1031, v66);
  if ((BrokerString & 0x80000000) != 0)
  {
    goto LABEL_43;
  }

  v64 = a6;
  v25 = ssftriff_reader_OpenChunk(*v66, __s2, &v68, &v67);
  if ((v25 & 0x80000000) != 0)
  {
    v35 = v25;
    v33 = 0;
  }

  else
  {
    v33 = 0;
    do
    {
      ++v33;
      ssftriff_reader_CloseChunk(*v66);
      v34 = ssftriff_reader_OpenChunk(*v66, __s2, &v68, &v67);
    }

    while ((v34 & 0x80000000) == 0);
    v35 = v34;
  }

  ssftriff_reader_ObjClose(*v66, v26, v27, v28, v29, v30, v31, v32);
  *v66 = 0;
  if ((v35 & 0x1FFF) != 0x14)
  {
LABEL_52:
    stat_hmogrph_ModelDeinit(a3, a7, *a8);
    *a8 = 0;
    return v35;
  }

  v36 = heap_Calloc(*(a3 + 8), 1, 48 * v33);
  *a7 = v36;
  if (!v36)
  {
    v35 = 2314215434;
    v62 = *(a3 + 32);
    v57 = 0;
LABEL_55:
    log_OutPublic(v62, "FE_HMOGRPH", 37000, v57, v37, v38, v39, v40, v63);
    goto LABEL_44;
  }

  *a9 = v33;
  BrokerString = ssftriff_reader_ObjOpen(a1, a2, 2, v71, "HMGR", 1031, v66);
  if ((BrokerString & 0x80000000) != 0)
  {
LABEL_43:
    v35 = BrokerString;
    goto LABEL_44;
  }

  v41 = ssftriff_reader_OpenChunk(*v66, __s2, &v68, &v67);
  if ((v41 & 0x80000000) == 0)
  {
    v42 = v64;
    do
    {
      LODWORD(v43) = *a8;
      if (*a8)
      {
        v44 = 0;
        v45 = 0;
        while (cstdlib_strcmp((*a7 + v44 + 7), __s2))
        {
          ++v45;
          v43 = *a8;
          v44 += 48;
          if (v45 >= v43)
          {
            goto LABEL_21;
          }
        }

        if (*a7)
        {
          v49 = *a7 + v44;
          v42 = v64;
          goto LABEL_25;
        }

        LODWORD(v43) = *a8;
LABEL_21:
        v42 = v64;
      }

      v49 = *a7 + 48 * v43;
      *a8 = v43 + 1;
      cstdlib_strcpy((v49 + 7), __s2);
      if (com_getUnicodeOrth(a4, a5, v42, __s2, &__src))
      {
        cstdlib_strcpy(v49, __src);
      }

      else
      {
        log_OutText(*(a3 + 32), "FE_HMOGRPH", 5, 0, "Orth for unicode %s does not exist in dic_cfg4.cfg", v50, v51, v52, __s2);
      }

LABEL_25:
      log_OutText(*(a3 + 32), "FE_HMOGRPH", 5, 0, "model #%d, homograph %s", v46, v47, v48, *a8);
      while (1)
      {
        v53 = ssftriff_reader_OpenChunk(*v66, __s2, &v68, &v67);
        if ((v53 & 0x80000000) != 0)
        {
          break;
        }

        log_OutText(*(a3 + 32), "FE_HMOGRPH", 5, 0, "model chunk %s for homograph %s, size %d", v22, v23, v24, __s2);
        if (cstdlib_strcmp(__s2, "CRPH"))
        {
          if (cstdlib_strcmp(__s2, "IGTR"))
          {
            log_OutText(*(a3 + 32), "FE_HMOGRPH", 0, 0, "unknown model type %s", v54, v55, v56, __s2);
            v35 = 2314215428;
            goto LABEL_44;
          }

          v57 = *(v49 + 24);
          if (!v57)
          {
            v57 = heap_Calloc(*(a3 + 8), 1, 1600);
            *(v49 + 24) = v57;
            if (!v57)
            {
LABEL_58:
              v35 = 2314215434;
              v62 = *(a3 + 32);
              goto LABEL_55;
            }
          }

          v58 = igtree_Init(a1, a2, *v66, v57);
          if ((v58 & 0x80000000) != 0)
          {
            goto LABEL_56;
          }
        }

        else
        {
          v57 = *(v49 + 16);
          if (!v57)
          {
            v57 = heap_Calloc(*(a3 + 8), 1, 344);
            *(v49 + 16) = v57;
            if (!v57)
            {
              goto LABEL_58;
            }
          }

          *(v57 + 72) = 1;
          v58 = crf_Init(a1, a2, *v66, v57);
          if ((v58 & 0x80000000) != 0)
          {
LABEL_56:
            v35 = v58;
            ssftriff_reader_CloseChunk(*v66);
            goto LABEL_44;
          }

          _hmgrph_parse_params(a3, *(*(v49 + 16) + 32), *(*(v49 + 16) + 40), v49);
        }

        ssftriff_reader_CloseChunk(*v66);
      }

      v35 = v53;
      if ((v53 & 0x1FFF) != 0x14)
      {
        goto LABEL_44;
      }

      ssftriff_reader_CloseChunk(*v66);
      v41 = ssftriff_reader_OpenChunk(*v66, __s2, &v68, &v67);
    }

    while ((v41 & 0x80000000) == 0);
  }

  if ((v41 & 0x1FFF) == 0x14)
  {
    v35 = 0;
  }

  else
  {
    v35 = v41;
  }

LABEL_44:
  if (*v66)
  {
    v59 = ssftriff_reader_ObjClose(*v66, v18, v19, v20, v21, v22, v23, v24);
    if (v59 >= 0 || v35 <= -1)
    {
      v35 = v35;
    }

    else
    {
      v35 = v59;
    }
  }

  if ((v35 & 0x80000000) != 0)
  {
    goto LABEL_52;
  }

  return v35;
}

uint64_t stat_hmogrph_ModelDeinit(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  if (a3)
  {
    v5 = 0;
    v6 = 0;
    v7 = 48 * a3;
    do
    {
      v8 = *a2;
      v9 = *(*a2 + v5 + 24);
      if (v9)
      {
        v6 = igtree_Deinit(a1, v9);
        if ((v6 & 0x80000000) != 0)
        {
          return v6;
        }

        heap_Free(*(a1 + 8), *(*a2 + v5 + 24));
        *(*a2 + v5 + 24) = 0;
        v8 = *a2;
      }

      v10 = *(v8 + v5 + 16);
      if (v10)
      {
        v6 = crf_Deinit(v10);
        if ((v6 & 0x80000000) != 0)
        {
          return v6;
        }

        heap_Free(*(a1 + 8), *(*a2 + v5 + 16));
        *(*a2 + v5 + 16) = 0;
        v8 = *a2;
      }

      v11 = *(v8 + v5 + 32);
      if (v11)
      {
        heap_Free(*(a1 + 8), v11);
        *(*a2 + v5 + 32) = 0;
      }

      v5 += 48;
    }

    while (v7 != v5);
  }

  else
  {
    v6 = 0;
  }

  heap_Free(*(a1 + 8), *a2);
  *a2 = 0;
  return v6;
}

uint64_t hlp_getCharModel(char *__s1, unsigned int a2, char *__s2, _WORD *a4)
{
  if (!a2)
  {
    return 0;
  }

  v7 = 0;
  v8 = 0;
  v9 = a2;
  do
  {
    if (!cstdlib_strcmp(__s1, __s2))
    {
      *a4 = v7;
      v8 = 1;
    }

    ++v7;
    __s1 += 48;
  }

  while (v9 != v7);
  return v8;
}

uint64_t hlp_maxLenPhons(const char **a1, unsigned int a2)
{
  if (a2)
  {
    v4 = cstdlib_strlen(*a1);
    if (a2 != 1)
    {
      v5 = a1 + 7;
      v6 = a2 - 1;
      do
      {
        v7 = *v5;
        v5 += 7;
        v8 = cstdlib_strlen(v7);
        if (v4 <= v8)
        {
          v4 = v8;
        }

        --v6;
      }

      while (v6);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 + 1;
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
      v13 = cstdlib_strlen(*a2);
      v14 = heap_Calloc(*(a1 + 8), 1, v13 + 1);
      *v12 = v14;
      if (!v14)
      {
        log_OutPublic(*(a1 + 32), "FE_HMOGRPH", 37000, 0, v15, v16, v17, v18, v24);
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
      cstdlib_memcpy(v14, v19, v13);
      v20 = *v12++;
      *(v20 + v13) = 0;
      --v11;
    }

    while (v11);
    *a5 = 1;
    if (a3 != 1)
    {
      v21 = 1;
      do
      {
        v22 = 0;
        while (cstdlib_strcmp(v6[v22], v6[v21]))
        {
          if (v21 == ++v22)
          {
            ++*a5;
            break;
          }
        }

        ++v21;
      }

      while (v21 != v10);
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

uint64_t hlp_highPriorityPhon(uint64_t a1, int a2, _WORD *a3)
{
  if (!a2)
  {
    return 0;
  }

  *a3 = 0;
  if (a2 != 1)
  {
    v3 = 0;
    v4 = (a1 + 64);
    for (i = 1; i != a2; ++i)
    {
      v6 = *v4;
      v4 += 28;
      if (v6 < *(a1 + 56 * v3 + 8))
      {
        v3 = i;
        *a3 = i;
      }
    }
  }

  return 1;
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
      v8 = v8 + cstdlib_strlen(v11) + 2;
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
        cstdlib_strcat(*a4, a2[v17]);
        if (v17 < a3 - 1)
        {
          cstdlib_strcat(*a4, " ");
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
  v179 = 0;
  v180[0] = 0;
  v178 = 0;
  v176 = 0;
  v177 = 0;
  v175 = 0;
  v174 = 0;
  v172 = 0;
  v173 = 0;
  v171 = 0;
  if (!*(a2 + 40))
  {
    ReadOnly = 0;
LABEL_6:
    v16 = 1;
    goto LABEL_9;
  }

  v14 = *(a2 + 48);
  if (v14)
  {
    ReadOnly = ssftmap_FindReadOnly(v14, a6, &v173);
    if (!*(a2 + 40))
    {
      goto LABEL_6;
    }
  }

  else
  {
    ReadOnly = 0;
  }

  v16 = cstdlib_strcmp(*(a2 + 64), "albert") != 0;
LABEL_9:
  v162 = v16;
  v17 = *(a2 + 32);
  if (*(a2 + 32))
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = *(a2 + 24);
    do
    {
      if (!cstdlib_strcmp(v21, a6))
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
    goto LABEL_85;
  }

LABEL_19:
  v25 = a10;
  v26 = *(a2 + 24) + 48 * v22;
  v27 = *(a1 + 32);
  if (!*(v26 + 16))
  {
    v158 = a5;
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
    goto LABEL_85;
  }

  v29 = v28;
  v158 = a5;
  inited = hlp_initFeatureVector(a1, v28, (*(*(v26 + 16) + 64) - 1));
  if ((inited & 0x80000000) != 0 || (v31 = *(v26 + 16), v32 = *(v31 + 56), v33 = *(v31 + 64), v34 = *(v26 + 32), LOWORD(v31) = *(v26 + 40), v35 = a10[3], v167 = a10[2], v168 = v35, v169 = a10[4], v170 = *(a10 + 10), v36 = a10[1], v165 = *a10, v166 = v36, hlp_setFeatureVector(a1, v29, v32, v33, (a2 + 8), a3, a5, v34, v31, &v165), inited = hlp_concatFeatureVector(a1, v29, (*(*(v26 + 16) + 64) - 1), v180), (inited & 0x80000000) != 0))
  {
    v23 = inited;
    goto LABEL_31;
  }

  log_OutText(*(a1 + 32), "FE_HMOGRPH", 5, 0, "STATHMOGRPH_FEATURE: homograph %s at word %d, char %d", v37, v38, v39, a6);
  log_OutText(*(a1 + 32), "FE_HMOGRPH", 5, 0, "STATHMOGRPH_FEATURE: %s", v40, v41, v42, v180[0]);
  v23 = crf_Process(*(v26 + 16), v180, 1u, &v179, &v178);
  if ((v23 & 0x80000000) != 0)
  {
LABEL_31:
    v24 = 0;
    v54 = 0;
    goto LABEL_82;
  }

  v46 = ReadOnly;
  v47 = v29;
  if (*(*(v26 + 16) + 64) != 1)
  {
    v48 = (*(*(v26 + 16) + 64) - 1);
    v49 = v47;
    do
    {
      v50 = *v49++;
      heap_Free(*(a1 + 8), v50);
      --v48;
    }

    while (v48);
  }

  if (v178 == 1)
  {
    cstdlib_strcpy(a9, *v179);
    a9[cstdlib_strlen(a9) - 1] = 0;
  }

  else
  {
    log_OutText(*(a1 + 32), "FE_HMOGRPH", 5, 0, "%d predictions for homograph %s with maxent model (discarded)", v43, v44, v45, v178);
  }

  v29 = v47;
  ReadOnly = v46;
  v25 = a10;
LABEL_35:
  v55 = *(a1 + 32);
  if (!*(a2 + 40) || ReadOnly < 0)
  {
    __dst = a9;
    log_OutText(v55, "FE_HMOGRPH", 5, 0, "No NN model for homograph %s !", v51, v52, v53, a6);
    v24 = 0;
    goto LABEL_43;
  }

  log_OutText(v55, "FE_HMOGRPH", 5, 0, "Disambiguate homograph %s with NN model", v51, v52, v53, a6);
  v56 = *(a2 + 80);
  v57 = (*(v56 + 40))(*(a2 + 104), *(a2 + 112), &v174);
  if ((v57 & 0x80000000) != 0)
  {
    v23 = v57;
    goto LABEL_81;
  }

  v62 = *(a2 + 60);
  if (v162)
  {
    if (v62 == v174 + 1)
    {
      __dst = a9;
      v155 = (a1 + 8);
      v63 = heap_Calloc(*(a1 + 8), 1, 8);
      if (v63)
      {
        v24 = v63;
        v68 = *(a2 + 60) * *(a2 + 56);
        goto LABEL_63;
      }

      goto LABEL_80;
    }

LABEL_67:
    log_OutPublic(*(a1 + 32), "FE_HMOGRPH", 37000, 0, v58, v59, v60, v61, v142);
    v54 = 0;
    v24 = 0;
    v23 = 2314215449;
    if (v29)
    {
      goto LABEL_82;
    }

    goto LABEL_83;
  }

  if (v62 != v174)
  {
    goto LABEL_67;
  }

  __dst = a9;
  v155 = (a1 + 8);
  v91 = heap_Calloc(*(a1 + 8), 1, 8);
  if (!v91)
  {
LABEL_80:
    v23 = 2314215434;
    log_OutPublic(*(a1 + 32), "FE_HMOGRPH", 37000, 0, v64, v65, v66, v67, v142);
LABEL_81:
    v54 = 0;
    v24 = 0;
    if (v29)
    {
      goto LABEL_82;
    }

    goto LABEL_83;
  }

  v24 = v91;
  v68 = (*(a2 + 56) + 2) * *(a2 + 60);
LABEL_63:
  v92 = heap_Alloc(*v155, 4 * v68);
  v176 = v92;
  if (!v92)
  {
    v23 = 2314215434;
    log_OutPublic(*(a1 + 32), "FE_HMOGRPH", 37000, 0, v93, v94, v95, v96, v142);
    goto LABEL_57;
  }

  v151 = v92;
  nnSent = make_nnSent(a1, a2 + 8, &v171);
  if ((nnSent & 0x80000000) != 0)
  {
    v23 = nnSent;
    v107 = *(a1 + 32);
    v108 = "Make NN Sent Failed";
    goto LABEL_164;
  }

  if (v162)
  {
    v99 = *(a2 + 56);
    v100 = v151;
  }

  else
  {
    *v151 = 101.0;
    v100 = v151 + 1;
    v99 = *(a2 + 56);
    v176[v99 + 1] = 1120665600;
  }

  if ((v99 + 1) / 2 <= (1 - v99) / 2)
  {
LABEL_154:
    if (v162)
    {
      v139 = v99;
    }

    else
    {
      v139 = v99 + 2;
    }

    v23 = fi_predict(*(a2 + 40), &v176, v139, &v175, v98, v69, v70, v71);
    if ((v23 & 0x80000000) == 0)
    {
      if (*(*(a7 + 48) + 16 * a4 + 8))
      {
        v157 = v25;
        v140 = v29;
        v141 = 0;
        while (cstdlib_strcmp(*(a8 + 8 * v141), *v175))
        {
          ++v141;
          v72 = 1;
          if (v141 >= *(*(a7 + 48) + 16 * a4 + 8))
          {
            goto LABEL_168;
          }
        }

        cstdlib_strcpy(__dst, *v175);
        v72 = 0;
LABEL_168:
        v29 = v140;
        v25 = v157;
        goto LABEL_44;
      }

LABEL_43:
      v72 = 1;
LABEL_44:
      v73 = *(a1 + 32);
      if (*(v26 + 24))
      {
        v163 = v72;
        v74 = v25;
        log_OutText(v73, "FE_HMOGRPH", 5, 0, "Disambiguate homograph %s with igtree model", v69, v70, v71, a6);
        v54 = heap_Calloc(*(a1 + 8), 1, 8 * *(*(v26 + 24) + 1296) - 8);
        if (!v54)
        {
          v23 = 2314215434;
          if (v29)
          {
            goto LABEL_82;
          }

          goto LABEL_83;
        }

        v75 = hlp_initFeatureVector(a1, v54, (*(*(v26 + 24) + 1296) - 1));
        if ((v75 & 0x80000000) != 0)
        {
          v23 = v75;
          if (v29)
          {
            goto LABEL_82;
          }

          goto LABEL_83;
        }

        v146 = ReadOnly;
        v76 = v29;
        v77 = *(v26 + 24);
        v78 = *(v77 + 1312);
        v79 = *(v77 + 1296);
        v80 = v74[3];
        v167 = v74[2];
        v168 = v80;
        v169 = v74[4];
        v170 = *(v74 + 10);
        v81 = v74[1];
        v165 = *v74;
        v166 = v81;
        hlp_setFeatureVector(a1, v54, v78, v79, (a2 + 8), a3, v158, 0, 0, &v165);
        igtree_Process(*(v26 + 24), v54, &v177);
        if (*(*(v26 + 24) + 1296) != 1)
        {
          v82 = (*(*(v26 + 24) + 1296) - 1);
          v83 = v54;
          do
          {
            v84 = *v83++;
            heap_Free(*(a1 + 8), v84);
            --v82;
          }

          while (v82);
        }

        v85 = cstdlib_strcmp(v177, "NOMATCH");
        if (v163)
        {
          v29 = v76;
          if (!v85)
          {
            v89 = v173;
            if (!v173 || v146 < 0)
            {
              log_OutText(*(a1 + 32), "FE_HMOGRPH", 5, 0, "No igtree rule matched for homograph %s", v86, v87, v88, a6);
              v90 = __dst;
              if (*__dst)
              {
                goto LABEL_78;
              }

              v89 = "NOMATCH";
              goto LABEL_77;
            }

LABEL_76:
            v90 = __dst;
LABEL_77:
            cstdlib_strcpy(v90, v89);
            goto LABEL_78;
          }
        }

        else
        {
          v29 = v76;
          if (!v85 || !cstdlib_strcmp(v177, *v175))
          {
LABEL_78:
            v23 = 0;
            if (v29)
            {
              goto LABEL_82;
            }

            goto LABEL_83;
          }
        }

        v89 = v177;
        goto LABEL_76;
      }

      log_OutText(v73, "FE_HMOGRPH", 5, 0, "IGTree model for homograph %s does not exist", v69, v70, v71, a6);
LABEL_57:
      v54 = 0;
      if (v29)
      {
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    v107 = *(a1 + 32);
    v108 = "FIhmogrph Prediction Failed";
LABEL_164:
    log_OutText(v107, "FE_HMOGRPH", 5, 0, v108, v69, v70, v71, 0);
    goto LABEL_57;
  }

  v109 = (1 - v99) / 2;
  v145 = v29;
  v110 = (v56 + 72);
  if (v162)
  {
    v110 = (v56 + 56);
  }

  v144 = v110;
  v143 = (v56 + 56);
  v147 = ReadOnly;
  v156 = v25;
  while (1)
  {
    v150 = v109;
    if (v162)
    {
      if (v109)
      {
        v111 = 0.0;
      }

      else
      {
        v111 = 1.0;
      }

      *v100++ = v111;
    }

    __src = *(a2 + 72);
    v112 = v171;
    v113 = a3;
    v149 = cstdlib_strlen(v171[a3]);
    v153 = v112;
    v114 = 0;
    if (a3)
    {
      do
      {
        v115 = *v112++;
        v114 += cstdlib_strlen(v115);
        --v113;
      }

      while (v113);
    }

    v152 = v100;
    v116 = v172;
    if (v172 <= (a3 + 1))
    {
      v117 = 0;
    }

    else
    {
      v117 = 0;
      v118 = v172 - (a3 + 1);
      v119 = &v153[(a3 + 1)];
      do
      {
        v120 = *v119++;
        v117 += cstdlib_strlen(v120);
        --v118;
      }

      while (v118);
    }

    v121 = heap_Calloc(*v155, 1, (v149 + v114 + v117 + 1));
    if (!v121)
    {
      break;
    }

    v126 = v121;
    if (v116)
    {
      NextUtf8Offset = v114 + v158;
      v128 = v153;
      v129 = v116;
      do
      {
        v130 = *v128++;
        cstdlib_strcat(v126, v130);
        --v129;
      }

      while (v129);
      if (v116 > a3 && cstdlib_strlen(v153[a3]) > v158)
      {
        v131 = v150;
        if ((v150 & 0x8000) != 0)
        {
          if (NextUtf8Offset)
          {
            v133 = v150;
            do
            {
              PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(v126, NextUtf8Offset);
              NextUtf8Offset = PreviousUtf8Offset;
              v135 = ~v133++ == 0;
            }

            while (!v135 && PreviousUtf8Offset);
            if (!v133)
            {
LABEL_139:
              if ((utf8_getUTF8Char(v126, NextUtf8Offset, v24) & 0x80000000) == 0)
              {
                goto LABEL_141;
              }
            }
          }
        }

        else
        {
          if (!v150)
          {
            goto LABEL_139;
          }

          while (NextUtf8Offset != cstdlib_strlen(v126))
          {
            NextUtf8Offset = utf8_GetNextUtf8Offset(v126, NextUtf8Offset);
            v132 = v131--;
            if (v132 <= 1)
            {
              goto LABEL_139;
            }
          }
        }
      }
    }

    cstdlib_strcpy(v24, __src);
LABEL_141:
    heap_Free(*v155, v126);
    if (!cstdlib_strcmp(v24, ""))
    {
      cstdlib_strcpy(v24, *(a2 + 72));
    }

    ReadOnly = v147;
    v25 = v156;
    if (utf8_IsChineseLetter(v24))
    {
      goto LABEL_151;
    }

    v136 = *v24;
    switch(v136)
    {
      case 's':
        v138 = *(a2 + 72);
        v137 = v24;
        goto LABEL_150;
      case 'e':
        v137 = v24;
        v138 = "ENG";
        goto LABEL_150;
      case '0':
        v137 = v24;
        v138 = "NUM";
LABEL_150:
        cstdlib_strcpy(v137, v138);
        break;
    }

LABEL_151:
    if (((*v144)(*(a2 + 104), *(a2 + 112), v24, v152) & 0x1FFF) == 0x14)
    {
      log_OutText(*(a1 + 32), "FE_HMOGRPH", 5, 0, "No embedding vector for character %s . Fall back!", v69, v70, v71, v24);
      cstdlib_strcpy(v24, *(a2 + 72));
      (*v143)(*(a2 + 104), *(a2 + 112), v24, v152);
    }

    v100 = &v152[v174];
    v109 = v150 + 1;
    v99 = *(a2 + 56);
    v29 = v145;
    if ((v99 + 1) / 2 <= (v150 + 1))
    {
      goto LABEL_154;
    }
  }

  v23 = 2314215434;
  log_OutPublic(*(a1 + 32), "FE_HMOGRPH", 37000, 0, v122, v123, v124, v125, v142);
  v54 = 0;
  v29 = v145;
  if (!v145)
  {
    goto LABEL_83;
  }

LABEL_82:
  heap_Free(*(a1 + 8), v29);
LABEL_83:
  if (v54)
  {
    heap_Free(*(a1 + 8), v54);
  }

LABEL_85:
  if (v180[0])
  {
    heap_Free(*(a1 + 8), v180[0]);
    v180[0] = 0;
  }

  v101 = v179;
  if (v179)
  {
    if (v178)
    {
        ;
      }

      v101 = v179;
    }

    heap_Free(*(a1 + 8), v101);
    v179 = 0;
  }

  if (v24)
  {
    heap_Free(*(a1 + 8), v24);
  }

  v103 = v172;
  v104 = v171;
  if (v172)
  {
    v105 = v171;
    do
    {
      if (*v105)
      {
        heap_Free(*(a1 + 8), *v105);
        *v105 = 0;
      }

      ++v105;
      --v103;
    }

    while (v103);
LABEL_102:
    heap_Free(*(a1 + 8), v104);
  }

  else if (v171)
  {
    goto LABEL_102;
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
LABEL_38:
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
  while (!utf8_IsChineseLetter(*(*a2 + 8 * v12)) && cstdlib_strlen(*(*a2 + 8 * v12)) == 1)
  {
    v14 = *(*a2 + 8 * v12);
    v15 = *v14;
    if ((v15 - 48) <= 9)
    {
      v16 = heap_Alloc(*(a1 + 8), 2);
      *(*a3 + v12) = v16;
      if (!v16)
      {
        goto LABEL_41;
      }

LABEL_19:
      v23 = "0";
      goto LABEL_20;
    }

    v31 = *(a1 + 8);
    if ((v15 & 0xFFFFFFDF) - 65 <= 0x19)
    {
      v16 = heap_Alloc(*(a1 + 8), 2);
      *(*a3 + v12) = v16;
      if (!v16)
      {
        goto LABEL_41;
      }

LABEL_24:
      v23 = "e";
      goto LABEL_20;
    }

    v32 = cstdlib_strlen(v14);
    v16 = heap_Alloc(v31, (v32 + 1));
    *(*a3 + v12) = v16;
    if (!v16)
    {
LABEL_41:
      v36 = 2314215434;
      log_OutPublic(*(a1 + 32), "FE_HMOGRPH", 37000, 0, v17, v18, v19, v20, v43);
      v41 = *(a1 + 32);
      v42 = "Tag 1-char orth word for NN Failed";
      goto LABEL_43;
    }

LABEL_12:
    v23 = *(*a2 + 8 * v12);
LABEL_20:
    cstdlib_strcpy(v16, v23);
    ++v13;
    v12 += 8;
    if (v13 >= *(a3 + 8))
    {
      return 0;
    }
  }

  if (utf8_IsChineseLetter(*(*a2 + 8 * v12)) || cstdlib_strlen(*(*a2 + 8 * v12)) == 1)
  {
    v21 = *(a1 + 8);
    v22 = cstdlib_strlen(*(*a2 + 8 * v12));
    v16 = heap_Alloc(v21, v22 + 1);
    *(*a3 + v12) = v16;
    if (!v16)
    {
      goto LABEL_38;
    }

    goto LABEL_12;
  }

  v24 = *(*a2 + 8 * v12);
  v25 = *v24;
  if ((v25 - 48) < 0xA || ((v25 - 35) <= 0x3C ? (v26 = ((1 << (v25 - 35)) & 0x1800000004000503) == 0) : (v26 = 1), !v26 || v25 == 124))
  {
    v16 = heap_Alloc(*(a1 + 8), 2);
    *(*a3 + v12) = v16;
    if (!v16)
    {
      goto LABEL_42;
    }

    goto LABEL_19;
  }

  if ((v25 & 0xFFFFFFDF) - 65 < 0x1A)
  {
    goto LABEL_29;
  }

  v33 = v25 - 34;
  if (v33 > 0x39)
  {
    goto LABEL_36;
  }

  if (((1 << v33) & 0x200000006000061) != 0)
  {
    v34 = *(a1 + 8);
    v35 = cstdlib_strlen(v24);
    v16 = heap_Alloc(v34, (v35 + 1));
    *(*a3 + v12) = v16;
    if (!v16)
    {
      goto LABEL_42;
    }

    goto LABEL_12;
  }

  if (((1 << v33) & 0x40000010) != 0)
  {
LABEL_29:
    v16 = heap_Alloc(*(a1 + 8), 2);
    *(*a3 + v12) = v16;
    if (!v16)
    {
      goto LABEL_42;
    }

    goto LABEL_24;
  }

LABEL_36:
  v16 = heap_Alloc(*(a1 + 8), 2);
  *(*a3 + v12) = v16;
  if (v16)
  {
    v23 = "s";
    goto LABEL_20;
  }

LABEL_42:
  v36 = 2314215434;
  log_OutPublic(*(a1 + 32), "FE_HMOGRPH", 37000, 0, v27, v28, v29, v30, v43);
  v41 = *(a1 + 32);
  v42 = "Tag orth word for NN Failed";
LABEL_43:
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
    cstdlib_strcpy(v14, "");
    v21 = *(v20 + 48);
    v22 = *(v21 + 16 * a3 + 8);
    v70 = a2;
    if (*(v21 + 16 * a3 + 8))
    {
      v23 = *(v21 + 16 * a3);
      v24 = (v22 + 3) & 0x1FFFC;
      v25 = vdupq_n_s64(v22 - 1);
      v26 = (v23 + 160);
      v27 = xmmword_26ECCE810;
      v28 = xmmword_26ECC7980;
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

    v72 = heap_Calloc(*(v12 + 8), v31, 8);
    if (!v72)
    {
      v32 = 2314215434;
      log_OutPublic(*(v12 + 32), "FE_HMOGRPH", 37000, 0, v33, v34, v35, v36, v65);
LABEL_62:
      heap_Free(*(v12 + 8), v19);
      return v32;
    }

    v71 = v22;
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
      v75 = 0;
      v32 = hlp_getcharPhons(v12, *(*(v20 + 48) + 16 * a3), *(*(v20 + 48) + 16 * a3 + 8), v72, &v75);
      if ((v32 & 0x80000000) == 0)
      {
        v67 = a5;
        if (v75 >= 2u)
        {
          v40 = *(a1 + 32);
          if (!*(a1 + 32))
          {
            goto LABEL_38;
          }

          v66 = v19;
          v41 = 0;
          v42 = *(a1 + 24);
          do
          {
            if (!cstdlib_strcmp(v42, __s2))
            {
              v41 = 1;
            }

            v42 += 48;
            --v40;
          }

          while (v40);
          v19 = v66;
          if (v41)
          {
            v43 = *(v69 + 48);
            v73[2] = *(v69 + 32);
            v73[3] = v43;
            v73[4] = *(v69 + 64);
            v74 = *(v69 + 80);
            v44 = *(v69 + 16);
            v73[0] = *v69;
            v73[1] = v44;
            hlp_disamWithModels(v12, a1, v70, a3, NextUtf8Offset, __s2, v20, v72, v66, v73);
            if (cstdlib_strcmp(v66, "NOMATCH") && *(*(v20 + 48) + 16 * a3 + 8))
            {
              v45 = 0;
              v46 = 48;
              do
              {
                v47 = cstdlib_strcmp(v72[v45], v66);
                v48 = *(v20 + 48);
                if (v47)
                {
                  *(*(v48 + 16 * a3) + v46) = 1;
                }

                ++v45;
                v46 += 56;
              }

              while (v45 < *(v48 + 16 * a3 + 8));
            }
          }

          else
          {
LABEL_38:
            *v67 = 0;
          }
        }

        v49 = *(v20 + 24);
        if (!cstdlib_strcmp(v49, ""))
        {
          hlp_filterWordCandIfTnHas(v20);
          v55 = v67;
          v52 = v68;
          goto LABEL_48;
        }

        v50 = cstdlib_strcmp(v49, "poi");
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
            v56 = *(v20 + 48) + 16 * a3;
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
      v63 = v72;
      do
      {
        heap_Free(*(v12 + 8), *v63);
        *v63++ = 0;
        --v31;
      }

      while (v31);
    }

    heap_Free(*(v12 + 8), v72);
    goto LABEL_62;
  }

  v32 = 2314215434;
  log_OutPublic(*(v12 + 32), "FE_HMOGRPH", 37000, 0, v15, v16, v17, v18, v65);
  return v32;
}

uint64_t hlp_disamSpecialWords(uint64_t a1, uint64_t *a2, unsigned int a3, unsigned int a4, _DWORD *a5, uint64_t a6)
{
  *&v54[3] = 0;
  *v54 = 0;
  v53 = 0;
  v10 = (a2 + 1);
  v11 = a2[1] + (a3 << 6);
  v52 = 0;
  *a5 = 0;
  v12 = a4;
  v13 = *(v11 + 48) + 16 * a4;
  if (*(v13 + 8))
  {
    v14 = 0;
    v15 = 0;
    while (!cstdlib_strstr(*(*v13 + v14), "{SEP"))
    {
      ++v15;
      v13 = *(v11 + 48) + 16 * v12;
      v14 += 56;
      if (v15 >= *(v13 + 8))
      {
        goto LABEL_5;
      }
    }

LABEL_16:
    v17 = 0;
LABEL_17:
    v20 = 0;
LABEL_18:
    if (!*(a1 + 144))
    {
      v21 = *(v11 + 48) + 16 * v12;
      v22 = *(v21 + 8);
      if (*(v21 + 8))
      {
        v23 = *v21;
        *(v21 + 12) = 0;
        if (v22 != 1)
        {
          v24 = 0;
          v25 = (v23 + 64);
          for (i = 1; i != v22; ++i)
          {
            v27 = *v25;
            v25 += 28;
            if (v27 < *(v23 + 56 * v24 + 8))
            {
              v24 = i;
              *(v21 + 12) = i;
            }
          }
        }
      }

LABEL_25:
      *a5 = 1;
    }

    if (v20)
    {
LABEL_27:
      heap_Free(*(*a2 + 8), v20);
    }
  }

  else
  {
LABEL_5:
    if ((utf8_getUTF8Char(*(v11 + 40), 0, v54) & 0x80000000) == 0)
    {
      NextUtf8Offset = 0;
      while (cstdlib_strlen(*(v11 + 40)) > NextUtf8Offset)
      {
        if (utf8_Utf8CharTo16bit(v54, &v53) && v53 - 40960 <= 0xFFFFADFF)
        {
          if (!*(a2 + 16))
          {
            goto LABEL_16;
          }

          v18 = 0;
          v19 = 24;
          while (cstdlib_strcmp((a2[3] + v19 - 17), "0000"))
          {
            ++v18;
            v19 += 48;
            if (v18 >= *(a2 + 16))
            {
              goto LABEL_16;
            }
          }

          v17 = a2[3];
          if (!v17)
          {
            goto LABEL_17;
          }

          v29 = *(v17 + v19);
          if (!v29)
          {
            goto LABEL_16;
          }

          v30 = heap_Calloc(*(*a2 + 8), 1, 8 * *(v29 + 1296) - 8);
          if (!v30)
          {
            return 2314215434;
          }

          v20 = v30;
          inited = hlp_initFeatureVector(*a2, v30, (*(*(v17 + v19) + 1296) - 1));
          if ((inited & 0x80000000) != 0)
          {
            v17 = inited;
            goto LABEL_27;
          }

          v32 = *a2;
          v33 = *(v17 + v19);
          v34 = *(v33 + 1312);
          v35 = *(v33 + 1296);
          v36 = *(a6 + 48);
          v50[2] = *(a6 + 32);
          v50[3] = v36;
          v50[4] = *(a6 + 64);
          v51 = *(a6 + 80);
          v37 = *(a6 + 16);
          v50[0] = *a6;
          v50[1] = v37;
          hlp_setFeatureVector(v32, v20, v34, v35, v10, a3, 0xFFFFFFFF, 0, 0, v50);
          v38 = v17;
          v17 = igtree_Process(*(v17 + v19), v20, &v52);
          if ((v17 & 0x80000000) != 0)
          {
            goto LABEL_27;
          }

          v39 = *(*(v38 + v19) + 1296) - 1;
          if (*(*(v38 + v19) + 1296) != 1)
          {
            v40 = *a2;
            v41 = v39;
            v42 = v20;
            do
            {
              v43 = *v42++;
              heap_Free(*(v40 + 8), v43);
              --v41;
            }

            while (v41);
          }

          if (cstdlib_strcmp(v52, "NOMATCH"))
          {
            v44 = *(v11 + 48) + 16 * v12;
            if (*(v44 + 8))
            {
              v45 = 0;
              v46 = 0;
              while (1)
              {
                v47 = cstdlib_strcmp(v52, *(*v44 + v45));
                v48 = *(v11 + 48);
                if (!v47)
                {
                  break;
                }

                ++v46;
                v44 = v48 + 16 * v12;
                v45 += 56;
                if (v46 >= *(v44 + 8))
                {
                  goto LABEL_18;
                }
              }

              *(v48 + 16 * v12 + 12) = v46;
              goto LABEL_25;
            }
          }

          goto LABEL_18;
        }

        NextUtf8Offset = utf8_GetNextUtf8Offset(*(v11 + 40), NextUtf8Offset);
        if ((utf8_getUTF8Char(*(v11 + 40), NextUtf8Offset, v54) & 0x80000000) != 0)
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

uint64_t hlp_CallDepesFunc(uint64_t *a1)
{
  v61 = *MEMORY[0x277D85DE8];
  v58 = 0;
  __s = 0;
  v57 = 0;
  cstdlib_strcpy(a1[19], "");
  cstdlib_strcpy(a1[21], "");
  for (i = 0; ; ++i)
  {
    cstdlib_strcpy(__dst, "cross_token");
    v3 = cstdlib_strlen(__dst);
    v4 = i;
    if (i)
    {
      cstdlib_strcat(a1[19], " ");
      cstdlib_strcat(a1[21], " ");
    }

    v5 = a1[13];
    v6 = i;
    v7 = *(v5 + i);
    v55 = v3;
    if (*(v5 + i))
    {
      v8 = i;
      while ((v7 > 0x20 || ((1 << v7) & 0x100002600) == 0) && v7 != 95)
      {
        v8 = ++i;
        v7 = *(v5 + i);
        if (!*(v5 + i))
        {
          v56 = 1;
          goto LABEL_12;
        }
      }

      v56 = 0;
LABEL_12:
      v9 = i;
    }

    else
    {
      v56 = 1;
      v9 = i;
      v8 = i;
    }

    *(v5 + v8) = 0;
    v10 = Utf8_LengthInUtf8chars(a1[13], v9);
    v11 = Utf8_LengthInUtf8chars(a1[13], v4);
    *(a1[14] + v10) = 0;
    log_OutText(*(*a1 + 32), "FE_HMOGRPH", 5, 0, "%s L1: %s", v12, v13, v14, __dst);
    v15 = *(a1[9] + 120);
    v16 = a1[13];
    v17 = cstdlib_strlen((v16 + v6));
    v18 = v15(a1[7], a1[8], 0, v16 + v6, v17);
    if ((v18 & 0x80000000) != 0)
    {
      return v18;
    }

    v22 = v11;
    log_OutText(*(*a1 + 32), "FE_HMOGRPH", 5, 0, "%s L2: %s", v19, v20, v21, __dst);
    v23 = *(a1[9] + 120);
    v24 = a1[14];
    v25 = cstdlib_strlen((v24 + v22));
    v18 = v23(a1[7], a1[8], 1, v24 + v22, v25);
    if ((v18 & 0x80000000) != 0)
    {
      return v18;
    }

    if (((*(a1[9] + 80))(a1[7], a1[8], __dst) & 0x80000000) != 0)
    {
      __dst[v55] = 0;
      v18 = (*(a1[9] + 80))(a1[7], a1[8], __dst);
      if ((v18 & 0x80000000) != 0)
      {
        return v18;
      }
    }

    v18 = (*(a1[9] + 128))(a1[7], a1[8], 0, &__s, &v57);
    if ((v18 & 0x80000000) != 0)
    {
      return v18;
    }

    __s[v57] = 0;
    log_OutText(*(*a1 + 32), "FE_HMOGRPH", 5, 0, "%s O1: %s", v26, v27, v28, __dst);
    v32 = (*(a1[9] + 128))(a1[7], a1[8], 1, &v58, &v57);
    if ((v32 & 0x80000000) != 0)
    {
      return v32;
    }

    *(v58 + v57) = 0;
    log_OutText(*(*a1 + 32), "FE_HMOGRPH", 5, 0, "%s O2: %s", v29, v30, v31, __dst);
    if (cstdlib_strlen(__s))
    {
      v33 = 0;
      v34 = 0;
      do
      {
        v35 = &__s[v33];
        if (__s[v33] == 126)
        {
          v36 = cstdlib_strlen(v35 + 1);
          cstdlib_memmove(v35, v35 + 1, v36 + 1);
          --v34;
        }

        else
        {
          v37 = cstdlib_strlen("¡");
          if (!cstdlib_strncmp(v35, "¡", v37))
          {
            v38 = &__s[v33];
            v39 = cstdlib_strlen(&__s[v33 + 2]);
            cstdlib_memmove(v38 + 1, v38 + 2, v39 + 1);
            __s[v33] = 126;
          }
        }

        v33 = ++v34;
      }

      while (cstdlib_strlen(__s) > v34);
    }

    v40 = cstdlib_strlen(a1[19]);
    v41 = v40 + cstdlib_strlen(__s) + 2;
    v42 = a1[19];
    if (v41 >= 0x81u)
    {
      break;
    }

LABEL_30:
    cstdlib_strcat(v42, __s);
    v48 = 0;
    v49 = v58;
    while (1)
    {
      v50 = v48;
      v51 = *(v58 + v48);
      if (v51 != 32 && v51 != 126)
      {
        break;
      }

      ++v48;
    }

    if (*(v58 + v48))
    {
      while (v51 != 32 && v51 != 126)
      {
        LOBYTE(v51) = *(v58 + ++v48);
      }

      *(v58 + v48) = 0;
      v49 = v58;
    }

    if (cstdlib_strcmp((v49 + v50), ""))
    {
      v52 = (v58 + v50);
    }

    else
    {
      v52 = "*";
    }

    cstdlib_strcat(a1[21], v52);
    if (v56)
    {
      return v32;
    }
  }

  v43 = heap_Realloc(*(*a1 + 8), a1[19], v41);
  if (v43)
  {
    v42 = v43;
    a1[19] = v43;
    goto LABEL_30;
  }

  log_OutPublic(*(*a1 + 32), "FE_HMOGRPH", 37000, 0, v44, v45, v46, v47, v54);
  return 2314215434;
}

uint64_t hlp_AppendPhon(uint64_t a1, char *a2, char *__s, uint64_t a4)
{
  if (cstdlib_strlen(__s) >= 2 && !cstdlib_strchr(__s, 32))
  {
    __s[1] = 0;
  }

  if (cstdlib_strlen(a4) >= 2 && !cstdlib_strchr(a4, 32))
  {
    *(a4 + 1) = 0;
  }

  if (cstdlib_strcmp(a2, ""))
  {
    v8 = cstdlib_strlen(*(a1 + 152));
    v9 = v8 + cstdlib_strlen(a2) + 7;
    if (v9 >= 0x81u)
    {
      v10 = heap_Realloc(*(*a1 + 8), *(a1 + 152), v9);
      if (!v10 || (*(a1 + 152) = v10, (v15 = heap_Realloc(*(*a1 + 8), *(a1 + 168), v9)) == 0))
      {
        v43 = 2314215434;
        log_OutPublic(*(*a1 + 32), "FE_HMOGRPH", 37000, 0, v11, v12, v13, v14, v45);
        return v43;
      }

      *(a1 + 168) = v15;
    }

    cstdlib_strcat(*(a1 + 152), "◄");
    cstdlib_strcat(*(a1 + 168), " ");
    v16 = cstdlib_strstr(a2, "◄");
    if (cstdlib_strchr(__s, 32) || !v16)
    {
      cstdlib_strcat(*(a1 + 152), a2);
      cstdlib_strcat(*(a1 + 168), a4);
      v40 = cstdlib_strlen(a2);
      v41 = Utf8_LengthInUtf8chars(a2, v40);
      if (v41 > cstdlib_strlen(a4))
      {
        v42 = 0;
        do
        {
          cstdlib_strcat(*(a1 + 168), "~");
          ++v42;
        }

        while ((v41 - cstdlib_strlen(a4)) > v42);
      }
    }

    else
    {
      v17 = cstdlib_strlen("◄");
      v18 = cstdlib_strstr(&v16[v17], "◄");
      if (!v18)
      {
        log_OutPublic(*(*a1 + 32), "FE_HMOGRPH", 37000, 0, v19, v20, v21, v22, v45);
        return 2314215431;
      }

      v23 = v18;
      v24 = *(a1 + 152);
      v25 = cstdlib_strlen("◄");
      cstdlib_strncat(v24, a2, (v25 + v16 - a2));
      v26 = cstdlib_strlen("◄");
      if (Utf8_LengthInUtf8chars(a2, v16 - a2 + v26))
      {
        v27 = 0;
        do
        {
          cstdlib_strcat(*(a1 + 168), " ");
          ++v27;
          v28 = cstdlib_strlen("◄");
        }

        while (Utf8_LengthInUtf8chars(a2, v16 - a2 + v28) > v27);
      }

      v29 = *(a1 + 152);
      v30 = &v16[cstdlib_strlen("◄")];
      v31 = cstdlib_strlen("◄");
      cstdlib_strncat(v29, v30, (v23 - v16 - v31));
      cstdlib_strcat(*(a1 + 168), a4);
      v32 = Utf8_LengthInUtf8chars(v16, v23 - v16);
      if (cstdlib_strlen(a4) - v32 <= -2)
      {
        v33 = 0;
        do
        {
          cstdlib_strcat(*(a1 + 168), "~");
          ++v33;
        }

        while (v32 + ~cstdlib_strlen(a4) > v33);
      }

      cstdlib_strcat(*(a1 + 152), v23);
      v34 = v23 - a2;
      v35 = cstdlib_strlen(a2);
      v36 = Utf8_LengthInUtf8chars(a2, v35) << 16;
      if (v36 > (Utf8_LengthInUtf8chars(a2, v34) << 16))
      {
        v37 = 0;
        do
        {
          cstdlib_strcat(*(a1 + 168), " ");
          ++v37;
          v38 = cstdlib_strlen(a2);
          v39 = Utf8_LengthInUtf8chars(a2, v38);
        }

        while (v39 - Utf8_LengthInUtf8chars(a2, v34) > v37);
      }
    }

    cstdlib_strcat(*(a1 + 152), "◄");
    cstdlib_strcat(*(a1 + 168), " ");
  }

  return 0;
}

uint64_t hlp_ProcessNTokens(uint64_t *a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  cstdlib_strcpy(a1[19], "");
  cstdlib_strcpy(a1[21], "");
  v8 = *(a2 + 16);
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
      if (++v9 >= v8)
      {
        goto LABEL_11;
      }
    }

    v11 = 0;
    v12 = 0;
    while (1)
    {
      v13 = *(*(v10 + 48) + v11) + 56 * *(*(v10 + 48) + v11 + 12);
      cstdlib_strcpy(a1[22], *(v13 + 32));
      appended = hlp_AppendPhon(a1, *v13, *(v13 + 16), *(v13 + 24));
      if ((appended & 0x80000000) != 0)
      {
        return appended;
      }

      ++v12;
      v11 += 16;
      if (v12 >= *(v10 + 56))
      {
        v8 = *(a2 + 16);
        goto LABEL_10;
      }
    }
  }

LABEL_11:
  v15 = cstdlib_strlen("¡");
  v16 = cstdlib_strlen(a1[19]) * v15 + 1;
  v17 = a1[13];
  if (!v17 || *(a1 + 60) < v16)
  {
    v18 = heap_Realloc(*(*a1 + 8), a1[13], v16);
    if (!v18)
    {
      goto LABEL_33;
    }

    v17 = v18;
    a1[13] = v18;
    a1[15] = v16;
  }

  v23 = a1[14];
  if (v23 && *(a1 + 64) >= v16)
  {
    goto LABEL_19;
  }

  v24 = heap_Realloc(*(*a1 + 8), v23, v16);
  if (!v24)
  {
LABEL_33:
    v36 = 2314215434;
    log_OutPublic(*(*a1 + 32), "FE_HMOGRPH", 37000, 0, v19, v20, v21, v22, v37);
    return v36;
  }

  a1[14] = v24;
  a1[16] = v16;
  v17 = a1[13];
LABEL_19:
  cstdlib_strcpy(v17, a1[19]);
  cstdlib_strcpy(a1[14], a1[21]);
  if (cstdlib_strlen(a1[13]))
  {
    v25 = 0;
    v26 = 0;
    v27 = 0;
    do
    {
      v28 = a1[13];
      v29 = cstdlib_strlen("◄");
      if (cstdlib_strncmp((v28 + v25), "◄", v29))
      {
        v30 = (a1[13] + v25);
        if (*v30 == 126 && v26)
        {
          v32 = cstdlib_strlen((a1[13] + v25));
          cstdlib_memmove(v30 + 1, v30, v32 + 1);
          v33 = a1[13];
          v34 = cstdlib_strlen("¡");
          cstdlib_memcpy((v33 + v25), "¡", v34);
          v26 = 1;
        }
      }

      else
      {
        v26 = !v26;
      }

      v25 = ++v27;
    }

    while (cstdlib_strlen(a1[13]) > v27);
  }

  return hlp_CallDepesFunc(a1);
}

uint64_t stat_hmogrph_updateLingdb(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v140 = *MEMORY[0x277D85DE8];
  v118 = 0;
  v116 = 0;
  v117 = 0;
  v114 = 0;
  v115 = 0;
  v112 = 0;
  v113 = 0;
  v111 = 0;
  memset(v139, 0, 64);
  v110 = 0;
  v137 = 0u;
  v138 = 0u;
  v135 = 0u;
  v136 = 0u;
  v133 = 0u;
  v134 = 0u;
  v131 = 0u;
  v132 = 0u;
  v129 = 0u;
  v130 = 0u;
  v128 = 0u;
  v126 = 0u;
  v127 = 0u;
  v124 = 0u;
  v125 = 0u;
  *__s = 0u;
  v12 = (*(a2 + 104))(a3, a4, 1, 0, &v118);
  if ((v12 & 0x80000000) != 0)
  {
    return v12;
  }

  v13 = (*(a2 + 184))(a3, a4, v118, 0, &v114);
  if ((v13 & 0x80000000) == 0 && v114 == 1)
  {
    v13 = (*(a2 + 176))(a3, a4, v118, 0, &v111, &v115);
    if ((v13 & 0x80000000) == 0 && v115 >= 2u)
    {
      updated = (*(a2 + 104))(a3, a4, 2, v118, &v117 + 2);
      if ((updated & 0x80000000) != 0)
      {
        goto LABEL_125;
      }

      v109 = 0;
      v15 = 0;
      v16 = 0;
      v108 = a5;
      while (1)
      {
        if (!HIWORD(v117))
        {
          v79 = v139[0];
          if (!v139[0])
          {
            goto LABEL_120;
          }

          if (v113 != 4 || v109 != 0)
          {
            goto LABEL_119;
          }

          v81 = v110;
          if (!v110)
          {
            goto LABEL_119;
          }

          if (v110 == 1)
          {
            v82 = *(a2 + 160);
            v83 = __s[0];
            v84 = cstdlib_strlen(__s[0]);
            updated = v82(a3, a4, v79, 3, (v84 + 1), v83, &v114 + 2);
            if ((updated & 0x80000000) != 0)
            {
              goto LABEL_125;
            }

LABEL_119:
            hlp_freeWordPhoneList(a5, &v110, v139, __s);
LABEL_120:
            if (*(a1 + 144))
            {
              updated = hlp_updateLingdb_process_skipcrosstoekn_cleanup(a1, a2, a3, a4, v118);
              if ((updated & 0x80000000) != 0)
              {
                goto LABEL_125;
              }
            }

            updated = hlp_updateLingdb_delete_duplicated_words(*a1, a2, a3, a4, a5, v118, *(a1 + 384), a6);
            if ((updated & 0x80000000) != 0)
            {
              goto LABEL_125;
            }

            v13 = stat_hmogrph_selectSubOrWholeRcd(a1, a2, a3, a4, a5);
            if ((v13 & 0x80000000) == 0)
            {
              goto LABEL_126;
            }

            return v13;
          }

          v106 = a6;
          v97 = a1;
          v85 = 0;
          v86 = 0;
          v87 = 10000;
          while (1)
          {
            updated = (*(a2 + 168))(a3, a4, v139[v85], 7, 1, &v115 + 2, &v115);
            if ((updated & 0x80000000) != 0)
            {
              break;
            }

            if (HIWORD(v115) < v87)
            {
              v87 = HIWORD(v115);
              v86 = v85;
            }

            if (v81 == ++v85)
            {
              v88 = v139[v86];
              v89 = *(a2 + 160);
              v90 = __s[v86];
              v91 = cstdlib_strlen(v90);
              updated = v89(a3, a4, v88, 3, (v91 + 1), v90, &v114 + 2);
              a1 = v97;
              a6 = v106;
              if ((updated & 0x80000000) != 0)
              {
                break;
              }

              goto LABEL_119;
            }
          }

LABEL_125:
          v13 = updated;
LABEL_126:
          hlp_freeWordPhoneList(a5, &v110, v139, __s);
          return v13;
        }

        updated = (*(a2 + 168))(a3, a4);
        if ((updated & 0x80000000) != 0)
        {
          goto LABEL_125;
        }

        updated = (*(a2 + 168))(a3, a4, HIWORD(v117), 1, 1, &v116 + 2, &v115);
        if ((updated & 0x80000000) != 0)
        {
          goto LABEL_125;
        }

        updated = (*(a2 + 168))(a3, a4, HIWORD(v117), 2, 1, &v116, &v115);
        if ((updated & 0x80000000) != 0)
        {
          goto LABEL_125;
        }

        if (HIWORD(v116) > v116)
        {
          v13 = 2314223281;
          goto LABEL_126;
        }

        if (HIWORD(v116) == v15 && v116 == v16)
        {
          v17 = v113;
          if (v113 == 4)
          {
            goto LABEL_33;
          }
        }

        updated = (*(*(a1 + 48) + 136))(a3, a4, HIWORD(v117), &v117);
        if ((updated & 0x80000000) != 0)
        {
          goto LABEL_125;
        }

        if (v117)
        {
          updated = (*(*(a1 + 48) + 168))(a3, a4);
          if ((updated & 0x80000000) != 0)
          {
            goto LABEL_125;
          }
        }

        if (v112 == 4 && !v109)
        {
          v18 = v110;
          if (v110)
          {
            v102 = v15;
            if (v110 != 1)
            {
              v104 = a6;
              v95 = a1;
              v23 = 0;
              v24 = 0;
              v25 = 10000;
              while (1)
              {
                updated = (*(a2 + 168))(a3, a4, v139[v23], 7, 1, &v115 + 2, &v115);
                if ((updated & 0x80000000) != 0)
                {
                  goto LABEL_125;
                }

                if (HIWORD(v115) < v25)
                {
                  v25 = HIWORD(v115);
                  v24 = v23;
                }

                if (v18 == ++v23)
                {
                  v26 = *(a2 + 160);
                  v27 = v139[v24];
                  v28 = __s[v24];
                  v29 = cstdlib_strlen(v28);
                  updated = v26(a3, a4, v27, 3, (v29 + 1), v28, &v114 + 2);
                  a1 = v95;
                  a6 = v104;
                  goto LABEL_30;
                }
              }
            }

            v19 = *(a2 + 160);
            v20 = v139[0];
            v21 = __s[0];
            v22 = cstdlib_strlen(__s[0]);
            updated = v19(a3, a4, v20, 3, (v22 + 1), v21, &v114 + 2);
LABEL_30:
            v15 = v102;
            if ((updated & 0x80000000) != 0)
            {
              goto LABEL_125;
            }
          }
        }

        hlp_freeWordPhoneList(a5, &v110, v139, __s);
        v17 = v113;
        if (v113 <= 0xA && ((1 << v113) & 0x610) != 0)
        {
LABEL_33:
          v30 = v116;
          v31 = v109;
          if (HIWORD(v116) != v15 || v116 != v16)
          {
            v31 = 0;
          }

          v109 = v31;
          if (HIWORD(v116) != v15 || v116 != v16)
          {
            v15 = HIWORD(v116);
          }

          if (v17 == 9)
          {
            updated = (*(*(a1 + 48) + 136))(a3, a4, HIWORD(v117), &v117);
            if ((updated & 0x80000000) != 0)
            {
              goto LABEL_125;
            }

            if (v117)
            {
              updated = (*(*(a1 + 48) + 168))(a3, a4);
              if ((updated & 0x80000000) != 0)
              {
                goto LABEL_125;
              }
            }
          }

          if (!*(a1 + 144) || v113 != 9 || v112 != 17)
          {
            v100 = v116;
            v101 = HIWORD(v116);
            v44 = v110;
            v122 = 0;
            v121 = 0;
            __src = 0;
            v119 = 0;
            v107 = HIWORD(v117);
            v13 = (*(a2 + 184))(a3, a4);
            if ((v13 & 0x80000000) != 0 || !v119)
            {
              goto LABEL_65;
            }

            v105 = a6;
            v45 = (*(a2 + 176))(a3, a4, v107, 3, &__src, &v122);
            if ((v45 & 0x80000000) != 0)
            {
              v13 = v45;
              goto LABEL_126;
            }

            v119 = 0;
            v13 = (*(a2 + 184))(a3, a4, v107, 7, &v119);
            if ((v13 & 0x80000000) != 0 || !v119)
            {
              goto LABEL_64;
            }

            v13 = (*(a2 + 168))(a3, a4, v107, 7, 1, &v122 + 2, &v122);
            if ((v13 & 0x80000000) != 0)
            {
              goto LABEL_126;
            }

            v46 = cstdlib_strlen(__src);
            v47 = heap_Calloc(*(*a5 + 8), 1, v46 + 1);
            __s[v44] = v47;
            if (!v47)
            {
LABEL_128:
              v13 = 2314215434;
              log_OutPublic(*(*a5 + 32), "FE_HMOGRPH", 37000, 0, v48, v49, v50, v51, v93);
              goto LABEL_126;
            }

            cstdlib_strcpy(v47, __src);
            v52 = *(a5 + 16);
            if (*(a5 + 16))
            {
              v53 = (*(a5 + 8) + 56);
              while (*(v53 - 24) != v101 || *(v53 - 23) != v100)
              {
                v53 += 32;
                if (!--v52)
                {
                  goto LABEL_64;
                }
              }

              v96 = a1;
              v98 = v44;
              v94 = v30;
              v103 = v15;
              if (*v53)
              {
                v54 = 0;
                v55 = 0;
                v56 = 0;
                do
                {
                  v57 = (*(v53 - 1) + v54);
                  v58 = *(v57 + 6);
                  v59 = *(v57 + 4);
                  if (v59 <= v58)
                  {
                    LOWORD(v58) = v59 - 1;
                  }

                  v60 = *v57;
                  v61 = 56 * v58;
                  v56 += cstdlib_strlen(*(*v57 + v61));
                  if (cstdlib_strlen(*(v60 + v61)))
                  {
                    ++v56;
                  }

                  ++v55;
                  v54 += 16;
                }

                while (v55 < *v53);
              }

              else
              {
                LOWORD(v56) = 0;
              }

              a5 = v108;
              v62 = heap_Calloc(*(*v108 + 8), 1, v56 + 1);
              if (!v62)
              {
                goto LABEL_128;
              }

              __s1 = v62;
              cstdlib_strcpy(v62, "");
              if (*v53)
              {
                v63 = 0;
                v64 = 0;
                do
                {
                  v65 = *(v53 - 1) + v63;
                  v66 = *(v65 + 12);
                  v67 = *(v65 + 8);
                  if (v67 <= v66)
                  {
                    LOWORD(v66) = v67 - 1;
                  }

                  v68 = (*v65 + 56 * v66);
                  cstdlib_strcat(__s1, *v68);
                  if (cstdlib_strlen(*v68) && v64 != *v53 - 1)
                  {
                    if (cstdlib_strstr(*v68, "{SEP"))
                    {
                      LOWORD(v56) = v56 - 1;
                    }

                    else
                    {
                      cstdlib_strcat(__s1, ".");
                    }
                  }

                  v44 = v98;
                  ++v64;
                  v63 += 16;
                }

                while (v64 < *v53);
              }

              else
              {
                v44 = v98;
              }

              if (v56 >= 2u)
              {
                __s1[v56 - 1] = 0;
              }

              a1 = v96;
              v15 = v103;
              if (cstdlib_strcmp(__s1, __src) | v109)
              {
                v73 = *(a2 + 160);
                v74 = cstdlib_strlen("DELETED");
                v13 = v73(a3, a4, v107, 3, (v74 + 1), "DELETED", &v121);
                v78 = *v108;
                if ((v13 & 0x80000000) != 0)
                {
                  heap_Free(*(v78 + 8), __s1);
                  goto LABEL_126;
                }

                log_OutText(*(v78 + 32), "FE_HMOGRPH", 5, 0, "DELETED: from %d to %d, orth %s with phon %s and priority %d", v75, v76, v77, v101);
                v30 = v94;
                v72 = __s1;
              }

              else
              {
                log_OutText(*(*v108 + 32), "FE_HMOGRPH", 5, 0, "from %d to %d, orth %s, disambiguated phon %s, priority %d", v69, v70, v71, v101);
                v109 = 1;
                v72 = __s1;
                v30 = v94;
              }

              heap_Free(*(*v108 + 8), v72);
LABEL_64:
              a6 = v105;
LABEL_65:
              if ((v13 & 0x80000000) != 0)
              {
                goto LABEL_126;
              }
            }

            v139[v44] = HIWORD(v117);
            v110 = v44 + 1;
            goto LABEL_67;
          }

          updated = hlp_ProcessNTokens(a1, a5, HIWORD(v116), v116);
          if ((updated & 0x80000000) != 0)
          {
            goto LABEL_125;
          }

          v32 = v30;
          v33 = v15;
          v34 = *(*(a1 + 48) + 160);
          v35 = HIWORD(v117);
          v36 = cstdlib_strlen(*(a1 + 152));
          v37 = v34(a3, a4, v35, 3, (v36 + 1), *(a1 + 152), &v114 + 2);
          if ((v37 & 0x80000000) != 0 || (v38 = *(*(a1 + 48) + 160), v39 = HIWORD(v117), v40 = cstdlib_strlen(*(a1 + 168)), v37 = v38(a3, a4, v39, 6, (v40 + 1), *(a1 + 168), &v114 + 2), (v37 & 0x80000000) != 0) || (HIWORD(v115) = 4, v37 = (*(*(a1 + 48) + 160))(a3, a4, HIWORD(v117), 7, 1, &v115 + 2, &v114 + 2), (v37 & 0x80000000) != 0))
          {
            v13 = v37;
            a5 = v108;
            goto LABEL_126;
          }

          v41 = *(*(a1 + 48) + 160);
          v42 = HIWORD(v117);
          v43 = cstdlib_strlen(*(a1 + 176));
          updated = v41(a3, a4, v42, 9, (v43 + 1), *(a1 + 176), &v114 + 2);
          v15 = v33;
          v30 = v32;
          a5 = v108;
          if ((updated & 0x80000000) != 0)
          {
            goto LABEL_125;
          }
        }

        else
        {
          v30 = v16;
        }

LABEL_67:
        updated = (*(a2 + 120))(a3, a4, HIWORD(v117), &v117 + 2);
        v16 = v30;
        if ((updated & 0x80000000) != 0)
        {
          goto LABEL_125;
        }
      }
    }
  }

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

          if (cstdlib_strcmp(__s1, "DELETED"))
          {
            if (a7)
            {
              updated = updateNLUNE(a1, a3, a4, a2, HIWORD(v26), v16, a8);
              if ((updated & 0x80000000) != 0)
              {
                return updated;
              }

              ++v16;
            }
          }

          else
          {
            updated = (*(a2 + 192))(a3, a4, HIWORD(v26));
            if ((updated & 0x80000000) != 0)
            {
              return updated;
            }

            log_OutText(*(*a5 + 32), "FE_HMOGRPH", 5, 0, "delete a word record from pos %d to pos %d", v19, v20, v21, HIWORD(v27));
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
  v128 = 0;
  v129 = 0;
  if (a2 && a5)
  {
    v130 = 0;
    v127 = 0;
    if (*(a5 + 8))
    {
      v9 = 0;
      v10 = 0;
      do
      {
        v11 = a5[1] + (v10 << 6);
        v12 = *(v11 + 24);
        if (cstdlib_strcmp(v12, ""))
        {
          v13 = cstdlib_strcmp(v12, "poi");
          v14 = *(a5 + 8);
          if (v13)
          {
            if (*(a5 + 8))
            {
              v15 = 0;
              v16 = v14 << 6;
              while (1)
              {
                if (v9 != v15)
                {
                  v17 = a5[1];
                  v18 = v17 + (v10 << 6);
                  v19 = v17 + v15;
                  if (*(v18 + 8) >= *(v19 + 8) && *(v18 + 10) <= *(v19 + 10))
                  {
                    break;
                  }
                }

                v15 += 64;
                if (v16 == v15)
                {
                  goto LABEL_13;
                }
              }
            }

            else
            {
LABEL_13:
              if (hlp_hasRcdWithGivenPOIClass(v11, *(v11 + 24)))
              {
                *(v11 + 32) = 0;
                v20 = *(a5 + 8);
                if (*(a5 + 8))
                {
                  v21 = a5[1];
                  v22 = v21 + (v10 << 6);
                  v23 = (v21 + 32);
                  v24 = v10;
                  do
                  {
                    if (v24 && *(v22 + 8) <= *(v23 - 12) && *(v22 + 10) >= *(v23 - 11))
                    {
                      *v23 = 1;
                    }

                    --v24;
                    v23 += 16;
                    --v20;
                  }

                  while (v20);
                }
              }

              else if (stat_hmogrph_hasSubWordWithGivenTn((a5 + 1), v10, *(v11 + 24)))
              {
                *(v11 + 32) = 1;
                v40 = *(a5 + 8);
                if (*(a5 + 8))
                {
                  v41 = a5[1];
                  v42 = v41 + (v10 << 6);
                  v43 = (v41 + 32);
                  v44 = v10;
                  do
                  {
                    if (v44 && *(v42 + 8) <= *(v43 - 12) && *(v42 + 10) >= *(v43 - 11))
                    {
                      *v43 = 0;
                    }

                    --v44;
                    v43 += 16;
                    --v40;
                  }

                  while (v40);
                }
              }

              else if (hlp_hasRcdWithGivenPOIClass(v11, "poi"))
              {
                *(v11 + 32) = 0;
                v50 = *(a5 + 8);
                if (*(a5 + 8))
                {
                  v51 = a5[1];
                  v52 = v51 + (v10 << 6);
                  v53 = (v51 + 32);
                  v54 = v10;
                  do
                  {
                    if (v54 && *(v52 + 8) <= *(v53 - 12) && *(v52 + 10) >= *(v53 - 11))
                    {
                      *v53 = 1;
                    }

                    --v54;
                    v53 += 16;
                    --v50;
                  }

                  while (v50);
                }
              }

              else if (stat_hmogrph_hasSubWordWithGivenTn((a5 + 1), v10, "poi"))
              {
                *(v11 + 32) = 1;
                v60 = *(a5 + 8);
                if (*(a5 + 8))
                {
                  v61 = a5[1];
                  v62 = v61 + (v10 << 6);
                  v63 = (v61 + 32);
                  v64 = v10;
                  do
                  {
                    if (v64 && *(v62 + 8) <= *(v63 - 12) && *(v62 + 10) >= *(v63 - 11))
                    {
                      *v63 = 0;
                    }

                    --v64;
                    v63 += 16;
                    --v60;
                  }

                  while (v60);
                }
              }

              else
              {
                *(v11 + 32) = 0;
                v65 = *(a5 + 8);
                if (*(a5 + 8))
                {
                  v66 = a5[1];
                  v67 = v66 + (v10 << 6);
                  v68 = (v66 + 32);
                  v69 = v10;
                  do
                  {
                    if (v69 && *(v67 + 8) <= *(v68 - 12) && *(v67 + 10) >= *(v68 - 11))
                    {
                      *v68 = 1;
                    }

                    --v69;
                    v68 += 16;
                    --v65;
                  }

                  while (v65);
                }
              }
            }
          }

          else if (*(a5 + 8))
          {
            v30 = 0;
            v31 = v14 << 6;
            while (1)
            {
              if (v9 != v30)
              {
                v32 = a5[1];
                v33 = v32 + (v10 << 6);
                v34 = v32 + v30;
                if (*(v33 + 8) >= *(v34 + 8) && *(v33 + 10) <= *(v34 + 10))
                {
                  break;
                }
              }

              v30 += 64;
              if (v31 == v30)
              {
                goto LABEL_38;
              }
            }
          }

          else
          {
LABEL_38:
            if (hlp_hasRcdWithGivenPOIClass(v11, "poi"))
            {
              *(v11 + 32) = 0;
              v35 = *(a5 + 8);
              if (*(a5 + 8))
              {
                v36 = a5[1];
                v37 = v36 + (v10 << 6);
                v38 = (v36 + 32);
                v39 = v10;
                do
                {
                  if (v39 && *(v37 + 8) <= *(v38 - 12) && *(v37 + 10) >= *(v38 - 11))
                  {
                    *v38 = 1;
                  }

                  --v39;
                  v38 += 16;
                  --v35;
                }

                while (v35);
              }
            }

            else if (stat_hmogrph_hasSubWordWithGivenTn((a5 + 1), v10, "poi"))
            {
              *(v11 + 32) = 1;
              v45 = *(a5 + 8);
              if (*(a5 + 8))
              {
                v46 = a5[1];
                v47 = v46 + (v10 << 6);
                v48 = (v46 + 32);
                v49 = v10;
                do
                {
                  if (v49 && *(v47 + 8) <= *(v48 - 12) && *(v47 + 10) >= *(v48 - 11))
                  {
                    *v48 = 0;
                  }

                  --v49;
                  v48 += 16;
                  --v45;
                }

                while (v45);
              }
            }

            else
            {
              *(v11 + 32) = 0;
              v55 = *(a5 + 8);
              if (*(a5 + 8))
              {
                v56 = a5[1];
                v57 = v56 + (v10 << 6);
                v58 = (v56 + 32);
                v59 = v10;
                do
                {
                  if (v59 && *(v57 + 8) <= *(v58 - 12) && *(v57 + 10) >= *(v58 - 11))
                  {
                    *v58 = 1;
                  }

                  --v59;
                  v58 += 16;
                  --v55;
                }

                while (v55);
              }
            }
          }
        }

        else
        {
          if (*(a5 + 8))
          {
            v25 = 0;
            while (1)
            {
              if (v9 != v25)
              {
                v26 = a5[1];
                v27 = v26 + (v10 << 6);
                v28 = v26 + v25;
                if (*(v27 + 8) >= *(v28 + 8) && *(v27 + 10) <= *(v28 + 10))
                {
                  break;
                }
              }

              v25 += 64;
              if (*(a5 + 8) << 6 == v25)
              {
                goto LABEL_28;
              }
            }

            v29 = 1;
          }

          else
          {
LABEL_28:
            v29 = 0;
          }

          *(v11 + 32) = v29;
        }

        ++v10;
        v9 += 64;
      }

      while (v10 < *(a5 + 8));
    }

    v70 = a4;
    v71 = (*(a2 + 104))(a3, a4, 1, 0, &v128 + 2);
    if ((v71 & 0x80000000) != 0)
    {
      return v71;
    }

    else
    {
      v5 = (*(a2 + 104))(a3, a4, 2, HIWORD(v128), &v128);
      v72 = a1;
      if ((v5 & 0x80000000) == 0)
      {
        v73 = v128;
        if (v128)
        {
          do
          {
            v71 = (*(a2 + 120))(a3, v70, v73, &v127 + 2);
            if ((v71 & 0x80000000) != 0)
            {
              return v71;
            }

            v5 = (*(a2 + 168))(a3, v70, v128, 0, 1, &v130, &v127);
            if ((v5 & 0x80000000) != 0)
            {
              return v5;
            }

            if (v130 == 4 || (v130 == 9 ? (v74 = *(v72 + 144) == 0) : (v74 = 0), !v74 ? (v75 = 0) : (v75 = 1), v130 != 10 ? (v76 = v75 == 0) : (v76 = 0), !v76))
            {
              v71 = (*(a2 + 168))(a3, v70, v128, 1, 1, &v129 + 2, &v127);
              if ((v71 & 0x80000000) != 0)
              {
                return v71;
              }

              v71 = (*(a2 + 168))(a3, v70, v128, 2, 1, &v129, &v127);
              if ((v71 & 0x80000000) != 0)
              {
                return v71;
              }

              if (!*(a5 + 8))
              {
LABEL_187:
                v5 = 2314215424;
                log_OutText(*(*a5 + 32), "FE_HMOGRPH", 5, 0, "cant find lingdb word : no word found with pos=%d,%d", v77, v78, v79, HIWORD(v129));
                return v5;
              }

              v80 = 0;
              v81 = a5[1];
              v82 = 32;
              while (__PAIR64__(*(v81 + v82 - 22), *(v81 + v82 - 24)) != __PAIR64__(v129, HIWORD(v129)))
              {
                ++v80;
                v82 += 64;
                if (*(a5 + 8) == v80)
                {
                  goto LABEL_187;
                }
              }

              if (*(v81 + v82) == 1)
              {
                v5 = (*(a2 + 192))(a3, v70, v128);
                if ((v5 & 0x80000000) != 0)
                {
                  return v5;
                }

                log_OutText(*(*a5 + 32), "FE_HMOGRPH", 5, 0, "Due to POI priority, delete a word record from pos %d to pos %d", v83, v84, v85, HIWORD(v129));
                v86 = a5[1];
                if (*(v86 + v82) != 1)
                {
                  goto LABEL_184;
                }

                v87 = *(a5 + 8);
                if (*(a5 + 8))
                {
                  v88 = v86 + v82;
                  v89 = (v86 + 10);
                  v90 = v80;
                  do
                  {
                    if (v90 && *(v88 - 24) >= *(v89 - 1) && *(v88 - 22) <= *v89)
                    {
                      goto LABEL_184;
                    }

                    --v90;
                    v89 += 32;
                    --v87;
                  }

                  while (v87);
                  v91 = 0;
                  v5 = 0;
                  while (1)
                  {
                    if (v80 != v91)
                    {
                      v92 = a5[1] + (v91 << 6);
                      if (*(v88 - 24) <= *(v92 + 8))
                      {
                        v93 = *(v92 + 10);
                        if (*(v88 - 22) > v93)
                        {
                          break;
                        }
                      }
                    }

LABEL_180:
                    if (++v91 >= *(a5 + 8))
                    {
                      if ((v5 & 0x80000000) != 0)
                      {
                        return v5;
                      }

                      goto LABEL_184;
                    }
                  }

                  v94 = v70;
                  v95 = *a5;
                  v135 = 0;
                  v133 = 0;
                  __s = 0;
                  HIWORD(v132) = 0;
                  v71 = (*(a2 + 104))(a3, v94, 1, 0, &v135);
                  if ((v71 & 0x80000000) != 0)
                  {
                    return v71;
                  }

                  v5 = (*(a2 + 184))(a3, v94, v135, 0, &v133 + 2);
                  if ((v5 & 0x80000000) != 0)
                  {
                    v72 = a1;
                  }

                  else
                  {
                    v72 = a1;
                    if (HIWORD(v133) == 1)
                    {
                      v5 = (*(a2 + 176))(a3, a4, v135, 0, &__s, &v133);
                      if ((v5 & 0x80000000) == 0 && v133 >= 2u)
                      {
                        v96 = *(v95 + 8);
                        v97 = cstdlib_strlen(__s);
                        v98 = heap_Calloc(v96, 1, v97 + 2);
                        if (!v98)
                        {
                          log_OutPublic(*(v95 + 32), "FE_HMOGRPH", 37000, 0, v99, v100, v101, v102, v123);
                          return 2314215434;
                        }

                        v103 = v98;
                        cstdlib_strcpy(v98, __s);
                        v104 = cstdlib_strlen(&v103[v93]);
                        cstdlib_memmove(&v103[v93 + 1], &v103[v93], v104 + 1);
                        v103[v93] = 32;
                        v124 = *(a2 + 160);
                        v105 = v135;
                        v106 = cstdlib_strlen(v103);
                        v71 = v124(a3, a4, v105, 0, (v106 + 1), v103, &v132 + 2);
                        if ((v71 & 0x80000000) != 0)
                        {
                          return v71;
                        }

                        heap_Free(*(v95 + 8), v103);
                        v72 = a1;
                        v70 = a4;
                        goto LABEL_146;
                      }
                    }
                  }

                  v70 = a4;
                  if ((v5 & 0x80000000) != 0)
                  {
                    return v5;
                  }

LABEL_146:
                  v133 = 0;
                  LODWORD(__s) = 0;
                  v135 = 0;
                  v131 = 0;
                  v132 = 0;
                  v71 = (*(a2 + 104))(a3, v70, 1, 0, &v133);
                  if ((v71 & 0x80000000) != 0)
                  {
                    return v71;
                  }

                  v107 = (*(a2 + 104))(a3, v70, 2, v133, &v132 + 2);
                  v5 = v107;
                  if ((v107 & 0x80000000) == 0)
                  {
                    v108 = HIWORD(v132);
                    if (HIWORD(v132))
                    {
                      while (1)
                      {
                        v71 = (*(a2 + 120))(a3, v70, v108, &v132);
                        if ((v71 & 0x80000000) != 0)
                        {
                          return v71;
                        }

                        (*(a2 + 168))(a3, v70, HIWORD(v132), 0, 1, &__s, &v131 + 2);
                        v71 = (*(a2 + 168))(a3, v70, HIWORD(v132), 1, 1, &v135, &v131 + 2);
                        if ((v71 & 0x80000000) != 0)
                        {
                          return v71;
                        }

                        v71 = (*(a2 + 168))(a3, v70, HIWORD(v132), 2, 1, &v133 + 2, &v131 + 2);
                        if ((v71 & 0x80000000) != 0)
                        {
                          return v71;
                        }

                        if (v135 >= v93)
                        {
                          ++v135;
                          v109 = HIWORD(v133);
                        }

                        else
                        {
                          v109 = HIWORD(v133);
                          if (HIWORD(v133) <= v93)
                          {
                            goto LABEL_157;
                          }
                        }

                        HIWORD(v133) = v109 + 1;
LABEL_157:
                        v71 = (*(a2 + 160))(a3, v70, HIWORD(v132), 1, 1, &v135, &v131);
                        if ((v71 & 0x80000000) != 0)
                        {
                          return v71;
                        }

                        v71 = (*(a2 + 160))(a3, v70, HIWORD(v132), 2, 1, &v133 + 2, &v131);
                        if ((v71 & 0x80000000) != 0)
                        {
                          return v71;
                        }

                        v108 = v132;
                        HIWORD(v132) = v132;
                        if (!v132)
                        {
                          goto LABEL_162;
                        }
                      }
                    }
                  }

                  if ((v107 & 0x80000000) != 0)
                  {
                    return v5;
                  }

LABEL_162:
                  if (*(a5 + 8))
                  {
                    v110 = 0;
                    v111 = 0;
                    v112 = *(a5 + 8) << 6;
                    v113 = v80;
                    do
                    {
                      if (v113)
                      {
                        v114 = a5[1];
                        v115 = v114 + v110;
                        v116 = *(v114 + v110 + 8);
                        if (v116 >= v93)
                        {
                          *(v115 + 8) = v116 + 1;
                          v118 = *(v115 + 10);
                          v117 = (v115 + 10);
                          LOWORD(v116) = v118;
                          goto LABEL_169;
                        }

                        v116 = *(v115 + 10);
                        if (v116 > v93)
                        {
                          v117 = (v114 + (v111 << 6) + 10);
LABEL_169:
                          *v117 = v116 + 1;
                        }
                      }

                      ++v111;
                      --v113;
                      v110 += 64;
                    }

                    while (v112 != v110);
                  }

                  v135 = 0;
                  __s = 0;
                  HIWORD(v133) = 0;
                  v71 = (*(a2 + 104))(a3, v70, 1, 0, &v133 + 2);
                  if ((v71 & 0x80000000) != 0)
                  {
                    return v71;
                  }

                  v5 = (*(a2 + 176))(a3, v70, HIWORD(v133), 1, &__s, &v135);
                  if ((v5 & 0x80000000) != 0)
                  {
                    return v5;
                  }

                  v119 = v135;
                  if (v135)
                  {
                    v120 = __s + 16;
                    do
                    {
                      v121 = *(v120 - 1);
                      if (v121 >= v93)
                      {
                        *(v120 - 1) = v121 + 1;
                      }

                      else if (*v120 + v121 > v93)
                      {
                        ++*v120;
                      }

                      v120 += 32;
                      --v119;
                    }

                    while (v119);
                  }

                  goto LABEL_180;
                }
              }

              v5 = 0;
            }

LABEL_184:
            v73 = HIWORD(v127);
            LOWORD(v128) = HIWORD(v127);
          }

          while (HIWORD(v127));
        }
      }
    }
  }

  return v5;
}

uint64_t stat_hmogrph_getIOBTNToken(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, unsigned int a7, char *a8)
{
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v21 = 0;
  for (i = (*(a2 + 104))(a3, a4, 2, a5, &v24 + 2); ; i = (*(a2 + 120))(a3, a4, HIWORD(v24), &v24 + 2))
  {
    v16 = i;
    if ((i & 0x80000000) != 0)
    {
      break;
    }

    if (!HIWORD(v24))
    {
      cstdlib_strcpy(a8, "");
      return v16;
    }

    v17 = (*(a2 + 168))(a3, a4, HIWORD(v24), 0, 1, &v22, &v24);
    if ((v17 & 0x80000000) != 0)
    {
      return v17;
    }

    if (v22 == 6)
    {
      v17 = (*(*(a1 + 48) + 168))(a3, a4, HIWORD(v24), 1, 1, &v23 + 2, &v24);
      if ((v17 & 0x80000000) != 0)
      {
        return v17;
      }

      v17 = (*(*(a1 + 48) + 168))(a3, a4, HIWORD(v24), 2, 1, &v23, &v24);
      if ((v17 & 0x80000000) != 0)
      {
        return v17;
      }

      if (HIWORD(v23) <= a6 && v23 + 1 >= a7)
      {
        if (HIWORD(v23) + 1 == a6 || HIWORD(v23) == a6)
        {
          v20 = "B-";
        }

        else
        {
          v20 = "I-";
        }

        cstdlib_strcpy(a8, v20);
        v16 = (*(*(a1 + 48) + 176))(a3, a4, HIWORD(v24), 4, &v21, &v24);
        if ((v16 & 0x80000000) == 0)
        {
          cstdlib_strncat(a8, (v21 + 1), 0x3CuLL);
          a8[cstdlib_strlen(a8) - 1] = 0;
        }

        return v16;
      }
    }
  }

  return v16;
}

uint64_t stat_hmogrph_disambiguateWords(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v167 = *MEMORY[0x277D85DE8];
  v164 = 0;
  v165 = 0;
  v163 = 0;
  v162 = 0;
  v161 = 0;
  v159 = 0;
  v160 = 0;
  v158 = 0;
  v156 = 0;
  v157 = 0;
  v154 = 0;
  v155 = 0;
  memset(__c, 0, sizeof(__c));
  v10 = (*(a2 + 104))(a3, a4, 1, 0, &v165 + 2);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  v11 = (*(a2 + 184))(a3, a4, HIWORD(v165), 0, &v163);
  if ((v11 & 0x80000000) != 0)
  {
    return v11;
  }

  if (v163 != 1)
  {
    return v11;
  }

  v11 = (*(a2 + 176))(a3, a4, HIWORD(v165), 0, &v156, &v164);
  if ((v11 & 0x80000000) != 0 || v164 < 2u)
  {
    return v11;
  }

  v12 = *(a1 + 280);
  v10 = (*(v12 + 40))(*(a5 + 104), *(a5 + 112), &v158);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  v13 = *(a1 + 324);
  v14 = v158;
  if (cstdlib_strlen((a1 + 344)) + v14 != v13)
  {
    log_OutPublic(*(*a1 + 32), "FE_HMOGRPH", 37000, 0, v15, v16, v17, v18, v135);
    return 2314215449;
  }

  v11 = (*(a2 + 104))(a3, a4, 2, HIWORD(v165), &v165);
  if ((v11 & 0x80000000) == 0)
  {
    v19 = v165;
    if (v165)
    {
      __s = (a1 + 344);
      __s1 = 0;
      v20 = 0;
      __dst = 0;
      v142 = 0;
      v141 = 0;
      v149 = 0;
      v140 = v12;
      while (1)
      {
        v21 = (*(a2 + 168))(a3, a4, v19, 0, 1, &v159, &v164);
        if ((v21 & 0x80000000) != 0)
        {
LABEL_187:
          v11 = v21;
          goto LABEL_188;
        }

        if (v159 <= 0xA && ((1 << v159) & 0x610) != 0)
        {
          break;
        }

LABEL_28:
        v11 = (*(a2 + 120))(a3, a4, v165, &v165);
        if ((v11 & 0x80000000) == 0)
        {
          v19 = v165;
          if (v165)
          {
            continue;
          }
        }

        goto LABEL_188;
      }

      v21 = (*(*(a1 + 48) + 168))(a3, a4, v165, 1, 1, &v162, &v164);
      if ((v21 & 0x80000000) != 0)
      {
        goto LABEL_187;
      }

      v21 = (*(*(a1 + 48) + 168))(a3, a4, v165, 2, 1, &v161, &v164);
      if ((v21 & 0x80000000) != 0)
      {
        goto LABEL_187;
      }

      v23 = v161;
      v24 = v162;
      v25 = v161 - v162;
      if (v25 <= v149)
      {
        v31 = v162;
        v32 = __dst;
      }

      else
      {
        v26 = heap_Realloc(*(*a1 + 8), __dst, (v25 + 1));
        if (!v26)
        {
          goto LABEL_194;
        }

        v149 = v25;
        v31 = v162;
        v32 = v26;
      }

      cstdlib_strncpy(v32, (v156 + v31), v25);
      __dst = v32;
      if (v23 == v24)
      {
        *v32 = 0;
        goto LABEL_28;
      }

      if (cstdlib_strchr(__s, v32[(v25 - 1)]))
      {
        v33 = v25 - 1;
      }

      else
      {
        v33 = v25;
      }

      v32[v33] = 0;
      if (!v33)
      {
        goto LABEL_28;
      }

      v34 = cstdlib_strlen(v32);
      v35 = v34;
      v139 = v20;
      if (v34 > v142)
      {
        v36 = heap_Realloc(*(*a1 + 8), __s1, v34 + 1);
        if (v36)
        {
          __s1 = v36;
          v142 = v35;
LABEL_35:
          v143 = 0;
          v37 = 0;
          while (1)
          {
            NextUtf8Offset = utf8_GetNextUtf8Offset(&__dst[v37], 0);
            if (utf8_ToLower(__dst, v37, __src))
            {
              if (cstdlib_strlen(__src) <= NextUtf8Offset)
              {
                cstdlib_strcpy(&__s1[v143], __src);
                v143 = cstdlib_strlen(__s1);
              }

              else
              {
                v142 += 5;
                v39 = heap_Realloc(*(*a1 + 8), __s1, v142 + 1);
                if (!v39)
                {
LABEL_197:
                  v11 = 2314215434;
                  goto LABEL_198;
                }

                __s1 = v39;
              }
            }

            else
            {
              cstdlib_strncpy(&__s1[v143], &__dst[v37], NextUtf8Offset);
              v143 += NextUtf8Offset;
            }

            v37 += NextUtf8Offset;
            if (v37 >= v35)
            {
              v44 = v143;
              v32 = __dst;
              goto LABEL_45;
            }
          }
        }

LABEL_194:
        v11 = 2314215434;
LABEL_195:
        log_OutPublic(*(*a1 + 32), "FE_HMOGRPH", 37000, 0, v27, v28, v29, v30, v135);
LABEL_188:
        if (__s1)
        {
          heap_Free(*(*a1 + 8), __s1);
        }

        if (__dst)
        {
          heap_Free(*(*a1 + 8), __dst);
        }

        if (v20)
        {
          heap_Free(*(*a1 + 8), v20);
        }

        return v11;
      }

      if (v34)
      {
        goto LABEL_35;
      }

      v44 = 0;
LABEL_45:
      __s1[v44] = 0;
      if (IsModelHomograph(__s1, *(a5 + 136)))
      {
        log_OutText(*(*a1 + 32), "FE_HMOGRPH", 5, 0, "STATWORDHMOGRPH_PRESENT: %s", v45, v46, v47, __s1);
        v52 = v165;
        HIWORD(v164) = v165;
        if (v165)
        {
          v53 = 0;
          v54 = v161;
          v55 = v162;
          LOWORD(v56) = v165;
          while (1)
          {
            IOBTNToken = (*(a2 + 136))(a3, a4, v56, &v164 + 2);
            if ((IOBTNToken & 0x80000000) != 0)
            {
              break;
            }

            if (!HIWORD(v164))
            {
              goto LABEL_67;
            }

            IOBTNToken = (*(a2 + 168))(a3, a4);
            if ((IOBTNToken & 0x80000000) != 0)
            {
              break;
            }

            if (v159 > 0xA || ((1 << v159) & 0x610) == 0)
            {
              v56 = HIWORD(v164);
            }

            else
            {
              IOBTNToken = (*(*(a1 + 48) + 168))(a3, a4, HIWORD(v164), 1, 1, &v160 + 2, &v164);
              if ((IOBTNToken & 0x80000000) != 0)
              {
                break;
              }

              IOBTNToken = (*(*(a1 + 48) + 168))(a3, a4, HIWORD(v164), 2, 1, &v160, &v164);
              if ((IOBTNToken & 0x80000000) != 0)
              {
                break;
              }

              v56 = HIWORD(v164);
              if (HIWORD(v160) == v55 && v160 == v54)
              {
                v52 = HIWORD(v164);
              }

              else
              {
                if (++v53 == (*(a1 + 320) - 1) >> 1)
                {
                  HIWORD(v164) = 0;
                  v52 = v56;
                  goto LABEL_67;
                }

                v52 = HIWORD(v164);
                v55 = HIWORD(v160);
                v54 = v160;
              }
            }

            if (!v56)
            {
              goto LABEL_67;
            }
          }

LABEL_196:
          v11 = IOBTNToken;
LABEL_199:
          v20 = v139;
          goto LABEL_188;
        }

LABEL_67:
        v59 = *a1;
        if (!(*(a1 + 324) * *(a1 + 320)))
        {
          log_OutPublic(*(v59 + 32), "FE_HMOGRPH", 37000, 0, v48, v49, v50, v51, v135);
          v11 = 2314215449;
          goto LABEL_199;
        }

        v60 = 4 * (*(a1 + 324) * *(a1 + 320));
        v61 = heap_Alloc(*(v59 + 8), v60);
        v155 = v61;
        v20 = v139;
        if (!v61)
        {
          goto LABEL_194;
        }

        v62 = v61;
        memset_pattern16(v61, &unk_26ECDA830, v60);
        HIWORD(v164) = v52;
        if (v52)
        {
          v137 = 0;
          v144 = 0;
          v66 = 0;
          v67 = 0;
          while (1)
          {
            IOBTNToken = (*(a2 + 168))(a3, a4, v52, 0, 1, &v159, &v164);
            if ((IOBTNToken & 0x80000000) != 0)
            {
              goto LABEL_196;
            }

            if (v159 <= 0xA && ((1 << v159) & 0x610) != 0)
            {
              IOBTNToken = (*(*(a1 + 48) + 168))(a3, a4, HIWORD(v164), 1, 1, &v160 + 2, &v164);
              if ((IOBTNToken & 0x80000000) != 0)
              {
                goto LABEL_196;
              }

              IOBTNToken = (*(*(a1 + 48) + 168))(a3, a4, HIWORD(v164), 2, 1, &v160, &v164);
              if ((IOBTNToken & 0x80000000) != 0)
              {
                goto LABEL_196;
              }

              if (HIWORD(v160) != v67 || v160 != v66)
              {
                v69 = cstdlib_strlen(__s);
                v70 = v69;
                v71 = __dst;
                if (v69)
                {
                  v72 = v158;
                  do
                  {
                    v62[v72++] = 0.0;
                    --v70;
                  }

                  while (v70);
                }

                v73 = HIWORD(v160);
                v74 = v160 - HIWORD(v160);
                if (v74 > v149)
                {
                  v75 = heap_Realloc(*(*a1 + 8), __dst, (v74 + 1));
                  if (!v75)
                  {
                    goto LABEL_197;
                  }

                  v149 = v74;
                  v73 = HIWORD(v160);
                  v71 = v75;
                }

                cstdlib_strncpy(v71, (v156 + v73), v74);
                v71[v74] = 0;
                v76 = cstdlib_strcmp(__s1, v71);
                v77 = v137;
                if (HIWORD(v164) == v165)
                {
                  v78 = v137;
                }

                else
                {
                  v78 = 1;
                }

                if (!v76)
                {
                  v77 = v78;
                }

                v137 = v77;
                v79 = cstdlib_strchr(__s, v71[(v74 - 1)]);
                if (v79)
                {
                  v83 = *(a1 + 354 + (v79 - __s)) - 48;
                  v62[v158 + v83] = 1.0;
                  log_OutText(*(*a1 + 32), "FE_HMOGRPH", 5, 0, "STATWORDHMOGRPH_PUNC: %i", v80, v81, v82, v83);
                  v71[(v74 - 1)] = 0;
                }

                __dst = v71;
                IOBTNToken = stat_hmogrph_getIOBTNToken(a1, a2, a3, a4, HIWORD(v165), HIWORD(v160), v160, __src);
                if ((IOBTNToken & 0x80000000) != 0)
                {
                  goto LABEL_196;
                }

                if (cstdlib_strcmp(__src, ""))
                {
                  v87 = __src;
                }

                else
                {
                  v87 = v71;
                }

                log_OutText(*(*a1 + 32), "FE_HMOGRPH", 5, 0, "STATWORDHMOGRPH_WORD: %s", v84, v85, v86, v87);
                v88 = (*(v140 + 56))(*(a5 + 104), *(a5 + 112), v87, v62);
                v11 = v88;
                if ((v88 & 0x1FFF) == 0x14)
                {
                  if (*(a5 + 176))
                  {
                    v89 = *v87;
                    if ((v89 - 65) <= 0x19)
                    {
                      *v87 = v89 | 0x20;
                      LOWORD(v11) = (*(v140 + 56))(*(a5 + 104), *(a5 + 112), v87, v62);
                      *v87 = v89;
                    }
                  }

                  if ((v11 & 0x1FFF) == 0x14)
                  {
                    IOBTNToken = (*(v140 + 56))(*(a5 + 104), *(a5 + 112), a5 + 164, v62);
                    if ((IOBTNToken & 0x80000000) != 0)
                    {
                      goto LABEL_196;
                    }
                  }
                }

                else if ((v88 & 0x80000000) != 0)
                {
                  goto LABEL_199;
                }

                if (HIWORD(v164) == v165)
                {
                  v144 = *(a1 + 320) >> 1;
                }

                ++v144;
                v67 = HIWORD(v160);
                v66 = v160;
                v62 += *(a1 + 324);
              }
            }

            IOBTNToken = (*(a2 + 120))(a3, a4, HIWORD(v164), &v164 + 2);
            if ((IOBTNToken & 0x80000000) != 0)
            {
              goto LABEL_196;
            }

            if (v144 == *(a1 + 320))
            {
              HIWORD(v164) = 0;
LABEL_114:
              v90 = v137 == 1;
              v20 = v139;
              goto LABEL_115;
            }

            v52 = HIWORD(v164);
            if (!HIWORD(v164))
            {
              goto LABEL_114;
            }
          }
        }

        v90 = 0;
LABEL_115:
        log_OutText(*(*a1 + 32), "FE_HMOGRPH", 5, 0, "STATWORDHMOGRPH_FEATURE: BEGIN", v63, v64, v65, v135);
        if (*(a1 + 324) * *(a1 + 320))
        {
          v94 = 0;
          do
          {
            log_OutText(*(*a1 + 32), "FE_HMOGRPH", 5, 0, "%f", v91, v92, v93, COERCE__INT64(v155[v94++]));
          }

          while (v94 < (*(a1 + 324) * *(a1 + 320)));
        }

        log_OutText(*(*a1 + 32), "FE_HMOGRPH", 5, 0, "STATWORDHMOGRPH_FEATURE: END", v91, v92, v93, v136);
        v95 = *(a5 + 40);
        *(*v95 + 49) = *(a5 + 128) / 100.0;
        v21 = fi_predict(v95, &v155, *(a1 + 320), &v154, v96, v97, v98, v99);
        if ((v21 & 0x80000000) != 0)
        {
          goto LABEL_187;
        }

        v11 = 2314215434;
        LODWORD(__s2) = 0;
        if ((fi_shape_get_size((**(a5 + 40) + 92), &__s2) & 0x80000000) != 0)
        {
          v11 = 2314215431;
          goto LABEL_198;
        }

        if (__s2 != 1)
        {
          v11 = 2314215449;
LABEL_198:
          log_OutPublic(*(*a1 + 32), "FE_HMOGRPH", 37000, 0, v40, v41, v42, v43, v135);
          goto LABEL_199;
        }

        v100 = cstdlib_strlen(__s1);
        v101 = v100 + 18;
        if (v100 + 18 > v141)
        {
          v102 = heap_Realloc(*(*a1 + 8), v20, (v100 + 19));
          if (!v102)
          {
            goto LABEL_195;
          }

          v141 = v101;
          v20 = v102;
        }

        cstdlib_strcpy(v20, "statwordhmogrph__");
        cstdlib_strcat(v20, __s1);
        *&__c[1] = -1;
        v21 = (*(*(a1 + 96) + 96))(*(a1 + 80), *(a1 + 88), "fecfg", v20, &__c[3], &__c[1], __c);
        if ((v21 & 0x80000000) != 0)
        {
          goto LABEL_187;
        }

        if (!*&__c[1])
        {
          log_OutPublic(*(*a1 + 32), "FE_HMOGRPH", 37000, 0, v103, v104, v105, v106, v135);
          v11 = 2314215444;
          goto LABEL_188;
        }

        v107 = cstdlib_strchr(**&__c[3], __c[0]);
        if (v107)
        {
          *v107 = 0;
        }

        v108 = cstdlib_strlen(**&__c[3]);
        if (v141 < v108)
        {
          v109 = heap_Realloc(*(*a1 + 8), v20, v108 + 1);
          if (!v109)
          {
            goto LABEL_195;
          }

          v141 = v108;
          v20 = v109;
        }

        cstdlib_strcpy(v20, **&__c[3]);
        v32 = __dst;
        v139 = v20;
        if (*v154)
        {
          HomographPhon = GetHomographPhon(*v154, v20);
          if (HomographPhon != 0 && !v90)
          {
            v129 = HomographPhon;
            log_OutText(*(*a1 + 32), "FE_HMOGRPH", 5, 0, "STATWORDHMOGRPH_PHON: %s", v110, v111, v112, HomographPhon);
            v130 = v165;
            HIWORD(v164) = v165;
            if (v165)
            {
              v114 = 0;
              v146 = v162;
              v138 = v161;
              while (1)
              {
                IOBTNToken = (*(a2 + 168))(a3, a4, v130, 0, 1, &v159, &v164);
                if ((IOBTNToken & 0x80000000) != 0)
                {
                  goto LABEL_196;
                }

                if (v159 <= 0xA && ((1 << v159) & 0x610) != 0)
                {
                  IOBTNToken = (*(*(a1 + 48) + 168))(a3, a4, HIWORD(v164), 1, 1, &v160 + 2, &v164);
                  if ((IOBTNToken & 0x80000000) != 0)
                  {
                    goto LABEL_196;
                  }

                  IOBTNToken = (*(*(a1 + 48) + 168))(a3, a4, HIWORD(v164), 2, 1, &v160, &v164);
                  if ((IOBTNToken & 0x80000000) != 0)
                  {
                    goto LABEL_196;
                  }

                  if (HIWORD(v160) == v146 && v160 == v138)
                  {
                    IOBTNToken = (*(*(a1 + 48) + 176))(a3, a4, HIWORD(v164), 3, &v157, &v164);
                    if ((IOBTNToken & 0x80000000) != 0)
                    {
                      goto LABEL_196;
                    }

                    v132 = cstdlib_strcmp(v157, v129);
                    v133 = HIWORD(v164);
                    IOBTNToken = (*(a2 + 120))(a3, a4, HIWORD(v164), &v164 + 2);
                    if ((IOBTNToken & 0x80000000) != 0)
                    {
                      goto LABEL_196;
                    }

                    if (!v132)
                    {
                      v114 = v133;
                    }

                    v130 = HIWORD(v164);
                    if (HIWORD(v164))
                    {
                      continue;
                    }
                  }
                }

                v32 = __dst;
                goto LABEL_135;
              }
            }

            goto LABEL_183;
          }
        }

        log_OutText(*(*a1 + 32), "FE_HMOGRPH", 5, 0, "STATWORDHMOGRPH_PHON: <>", v110, v111, v112, v135);
      }

      v114 = 0;
LABEL_135:
      __dst = v32;
      v115 = v165;
      HIWORD(v164) = v165;
      if (v165)
      {
        v116 = v162;
        v117 = v161;
        do
        {
          IOBTNToken = (*(a2 + 168))(a3, a4, v115, 0, 1, &v159, &v164);
          if ((IOBTNToken & 0x80000000) != 0)
          {
            goto LABEL_196;
          }

          if (v159 > 0xA || ((1 << v159) & 0x610) == 0)
          {
            goto LABEL_165;
          }

          IOBTNToken = (*(*(a1 + 48) + 168))(a3, a4, HIWORD(v164), 1, 1, &v160 + 2, &v164);
          if ((IOBTNToken & 0x80000000) != 0)
          {
            goto LABEL_196;
          }

          IOBTNToken = (*(*(a1 + 48) + 168))(a3, a4, HIWORD(v164), 2, 1, &v160, &v164);
          if ((IOBTNToken & 0x80000000) != 0)
          {
            goto LABEL_196;
          }

          if (HIWORD(v160) != v116 || v160 != v117)
          {
LABEL_165:
            HIWORD(v164) = 0;
            break;
          }

          v119 = HIWORD(v164);
          IOBTNToken = (*(a2 + 120))(a3, a4, HIWORD(v164), &v164 + 2);
          if ((IOBTNToken & 0x80000000) != 0)
          {
            goto LABEL_196;
          }

          if (!v114 || v119 == v114)
          {
            LOWORD(v165) = v119;
            if (v119 == v114)
            {
              v151 = 0;
              __s2 = 0;
              IOBTNToken = (*(*(a1 + 48) + 176))(a3, a4, v114, 5, &__s2, &v164);
              if ((IOBTNToken & 0x80000000) != 0)
              {
                goto LABEL_196;
              }

              IOBTNToken = (*(*(a1 + 48) + 176))(a3, a4, v165, 14, &v151, &v164);
              if ((IOBTNToken & 0x80000000) != 0)
              {
                goto LABEL_196;
              }

              v120 = cstdlib_strlen(v151);
              v121 = cstdlib_strlen(__s2) + v120;
              if (v121 <= v141)
              {
                v123 = v139;
              }

              else
              {
                v122 = heap_Realloc(*(*a1 + 8), v139, v121 + 1);
                if (!v122)
                {
                  goto LABEL_197;
                }

                v141 = v121;
                v123 = v122;
              }

              cstdlib_strcpy(v123, "POS:");
              cstdlib_strcat(v123, __s2);
              cstdlib_strcat(v123, ";");
              v139 = v123;
              if (!cstdlib_strstr(v151, v123))
              {
                v124 = cstdlib_strstr(v151, "POS");
                if (v124)
                {
                  v125 = v124;
                  cstdlib_strncpy(v139, v151, v124 - v151);
                  v139[v125 - v151] = 0;
                  cstdlib_strcat(v139, "POS:");
                  cstdlib_strcat(v139, __s2);
                  v126 = cstdlib_strstr(v125, ";");
                  if (v126)
                  {
                    cstdlib_strcat(v139, v126);
                  }

                  v145 = *(*(a1 + 48) + 160);
                  v127 = v165;
                  v128 = cstdlib_strlen(v139);
                  IOBTNToken = v145(a3, a4, v127, 14, (v128 + 1), v139, &v163 + 2);
                  if ((IOBTNToken & 0x80000000) != 0)
                  {
                    goto LABEL_196;
                  }
                }
              }
            }
          }

          else
          {
            IOBTNToken = (*(a2 + 192))(a3, a4, v119);
            if ((IOBTNToken & 0x80000000) != 0)
            {
              goto LABEL_196;
            }
          }

          v115 = HIWORD(v164);
        }

        while (HIWORD(v164));
      }

LABEL_183:
      v20 = v139;
      goto LABEL_28;
    }
  }

  return v11;
}

char *IsModelHomograph(const char *a1, char *a2)
{
  v4 = cstdlib_strlen(a1);
  result = cstdlib_strstr(a2, a1);
  if (result)
  {
    if (result == a2 || *(result - 1) == 124)
    {
      return (!result[v4] || result[v4] == 124);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

char *GetHomographPhon(const char *a1, char *__s1)
{
  v2 = __s1;
  v4 = cstdlib_strstr(__s1, "=");
  if (v4)
  {
    while (1)
    {
      *v4++ = 0;
      v5 = cstdlib_strcmp(a1, v2);
      v6 = cstdlib_strstr(v4, "|");
      if (!v5)
      {
        break;
      }

      if (!v6)
      {
        return 0;
      }

      v2 = v6 + 1;
      v4 = cstdlib_strstr(v6 + 1, "=");
      if (!v4)
      {
        return v4;
      }
    }

    if (v6)
    {
      *v6 = 0;
    }
  }

  return v4;
}

char *hlp_filterWordCandIfTnHas(char *result)
{
  v1 = *(result + 28);
  if (*(result + 28))
  {
    v2 = result;
    v3 = 0;
    v4 = *(result + 6);
    do
    {
      v5 = v4 + 16 * v3;
      if (*(v5 + 8))
      {
        v6 = 0;
        v7 = 0;
        do
        {
          result = cstdlib_strstr(*(*v5 + v6 + 40), "poi");
          v4 = *(v2 + 6);
          if (result)
          {
            *(*(v4 + 16 * v3) + v6 + 48) = 1;
          }

          ++v7;
          v5 = v4 + 16 * v3;
          v6 += 56;
        }

        while (v7 < *(v5 + 8));
        v1 = *(v2 + 28);
      }

      ++v3;
    }

    while (v3 < v1);
  }

  return result;
}

uint64_t hlp_hasRcdWithGivenPOIClass(uint64_t a1, char *__s2)
{
  v2 = *(a1 + 56);
  if (!*(a1 + 56))
  {
    return 0;
  }

  v5 = 0;
  v6 = *(a1 + 48);
  while (1)
  {
    v7 = v6 + 16 * v5;
    if (*(v7 + 8))
    {
      break;
    }

LABEL_8:
    if (++v5 >= v2)
    {
      return 0;
    }
  }

  v8 = 0;
  v9 = 40;
  while (cstdlib_strcmp(*(*v7 + v9), __s2))
  {
    ++v8;
    v6 = *(a1 + 48);
    v7 = v6 + 16 * v5;
    v9 += 56;
    if (v8 >= *(v7 + 8))
    {
      v2 = *(a1 + 56);
      goto LABEL_8;
    }
  }

  return 1;
}

uint64_t hlp_filterWordCandIfTnIsNot(uint64_t result, char *__s2)
{
  v2 = *(result + 56);
  if (*(result + 56))
  {
    v4 = result;
    v5 = 0;
    v6 = *(result + 48);
    do
    {
      v7 = v6 + 16 * v5;
      if (*(v7 + 8))
      {
        v8 = 0;
        v9 = 0;
        do
        {
          result = cstdlib_strcmp(*(*v7 + v8 + 40), __s2);
          v6 = *(v4 + 48);
          if (result)
          {
            *(*(v6 + 16 * v5) + v8 + 48) = 1;
          }

          ++v9;
          v7 = v6 + 16 * v5;
          v8 += 56;
        }

        while (v9 < *(v7 + 8));
        v2 = *(v4 + 56);
      }

      ++v5;
    }

    while (v5 < v2);
  }

  return result;
}

uint64_t stat_hmogrph_hasSubWordWithGivenTn(uint64_t a1, unsigned int a2, char *__s2)
{
  v3 = *(a1 + 8);
  if (!*(a1 + 8))
  {
    return 0;
  }

  v6 = 0;
  v7 = 0;
  v8 = *a1 + (a2 << 6);
  v9 = a2 << 6;
  while (1)
  {
    if (v9 == v6)
    {
      goto LABEL_8;
    }

    v10 = *a1 + v6;
    if (*(v8 + 8) > *(v10 + 8) || *(v8 + 10) < *(*a1 + v6 + 10))
    {
      goto LABEL_8;
    }

    if (hlp_hasRcdWithGivenPOIClass(v10, __s2))
    {
      return 1;
    }

    v3 = *(a1 + 8);
LABEL_8:
    ++v7;
    v6 += 64;
    if (v7 >= v3)
    {
      return 0;
    }
  }
}

uint64_t nntn_AllInOneLoop(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v94 = *MEMORY[0x277D85DE8];
  v92 = 0;
  v91 = 0;
  v90 = 0;
  v89 = 0;
  v88 = 0;
  v87 = 0;
  v85 = 0;
  log_OutText(*(*a1 + 32), *(a1 + 184), 4, 0, "nntn : AllInOneLoop Begin", a6, a7, a8, v79);
  if ((paramc_ParamGetInt(*(*a1 + 40), "maxTNNNcallspersent", &v85) & 0x80000000) == 0)
  {
    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "set maxTNNNCallsPerSent to %d", v13, v14, v15, v85);
  }

  if (v85)
  {
    *(a1 + 872) = v85;
  }

  v16 = *(a1 + 168);
  *(*(*v16 + 16) + 32) = a1;
  v17 = setDomainsOnSentence_NNTN(a1, v9, v10, v11, v12, v13, v14, v15);
  if ((v17 & 0x80000000) != 0)
  {
    return v17;
  }

  DomainDefBlockInfo = mergeDomainsOnSentence_NNTN(a1, v18, v19, v20, v21, v22, v23, v24);
  if ((DomainDefBlockInfo & 0x80000000) == 0)
  {
    v26 = *v16;
    *(*(*v16 + 16) + 16) = *(a1 + 304);
    *(v26 + 64) = 16;
    *(v26 + 42) = *(a1 + 312);
    v27 = *(*(a1 + 264) + 16);
    NumberChildren = LDOTreeNode_GetNumberChildren(v27);
    v32 = *(*a1 + 32);
    v33 = *(a1 + 184);
    if (NumberChildren)
    {
      log_OutText(v32, v33, 4, 0, "tokentn : start loop...", v28, v29, v30, v80);
      v34 = *(v27 + 80);
      v35 = *(v27 + 88);
      v86 = v34;
      v81 = v35;
      if (v34 < v35)
      {
        v36 = 0;
        do
        {
          v83 = 0;
          __s1 = 0;
          v37 = *v34;
          v38 = LDOTreeNode_ComputeAbsoluteFrom(*v34, &v83 + 1);
          DomainRange = LH_ERROR_to_VERROR(v38);
          if ((DomainRange & 0x80000000) != 0 || (v46 = LDOTreeNode_ComputeAbsoluteTo(v37, &v83), DomainRange = LH_ERROR_to_VERROR(v46), (DomainRange & 0x80000000) != 0))
          {
LABEL_64:
            DomainDefBlockInfo = DomainRange;
            goto LABEL_65;
          }

          v47 = WORD2(v83);
          v48 = v83;
          Type = LDOObject_GetType(v37, &__s1);
          DomainDefBlockInfo = LH_ERROR_to_VERROR(Type);
          if ((DomainDefBlockInfo & 0x80000000) != 0)
          {
            goto LABEL_65;
          }

          *(*v16 + 72) = 0;
          if (cstdlib_strcmp(__s1, "TOKEN_ALPHA"))
          {
            v50 = v36;
          }

          else
          {
            v50 = 0;
          }

          if (!cstdlib_strcmp(__s1, "TOKEN_DIGIT"))
          {
            v50 = 1;
          }

          if (!cstdlib_strcmp(__s1, "TOKEN_PUNCT"))
          {
            v50 = 2;
          }

          if (!cstdlib_strcmp(__s1, "TOKEN_WSPACE"))
          {
            v50 = 3;
          }

          if (!cstdlib_strcmp(__s1, "TOKEN_DCT"))
          {
            v50 = 4;
          }

          if (!cstdlib_strcmp(__s1, "TOKEN_USER_TN"))
          {
            v50 = 5;
          }

          if (!cstdlib_strcmp(__s1, "TOKEN_INT_TN"))
          {
            v50 = 6;
          }

          if (cstdlib_strcmp(__s1, "TOKEN_CASEGENDER"))
          {
            v36 = v50;
          }

          else
          {
            v36 = 7;
          }

          if (v36 <= 2)
          {
            HIWORD(v90) = 0;
            FERuntimeData_GetActiveDomains(a1, v93, &v90 + 1, v47, v48, 0);
            log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "START basic token %d,%d ... %d active domains", v51, v52, v53, v47);
            if (HIWORD(v90))
            {
              v54 = 0;
              v55 = vceqq_s32(vdupq_n_s32(v36), xmmword_26ECDAC70);
              v56 = vmovn_s32(v55);
              v56.i16[3] = vmovn_s32(vmvnq_s8(*&v55)).i16[3];
              v82 = v56;
              while (1)
              {
                LOWORD(v90) = 0;
                v92 = 0;
                v57 = *v16;
                *(v57 + 46) = 0;
                *(v57 + 44) = v47;
                *(v57 + 56) = 0;
                DomainRange = FERuntimeData_GetDomainRange(a1, v93[v54], &v91);
                if ((DomainRange & 0x80000000) != 0)
                {
                  goto LABEL_64;
                }

                log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "Domain %d : range %d,%d", v43, v44, v45, v54);
                *(*v16 + 46) = *(v91 + 2);
                DomainRange = FERuntimeData_GetDomainBlockIndex(a1, v93[v54], &v90, &v92);
                if ((DomainRange & 0x80000000) != 0)
                {
                  goto LABEL_64;
                }

                DomainDefBlockInfo = FEData_blockData_newGetDomainDefBlockInfo(a1, v90, &v89, v41, v42, v43, v44, v45);
                if ((DomainDefBlockInfo & 0x80000000) != 0)
                {
                  goto LABEL_65;
                }

                if (v92 > *(v89 + 24))
                {
                  break;
                }

                v58 = *(v89 + 40) + 16 * *(*(v89 + 16) + 72 * v92 + 12);
                log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "doing domain %d, Domain[%s:%s] (applying %d rules)", v43, v44, v45, v54);
                if (*(v58 + 8))
                {
                  v59 = *v16;
                  if (*(*v16 + 72) != 1)
                  {
                    v60 = 0;
                    v61 = 0;
                    while (1)
                    {
                      v62 = *v58 + v60;
                      *(v59 + 40) = 0;
                      v63 = v59 + 40;
                      *(v63 + 16) = v62;
                      DomainDefBlockInfo = FEData_blockData_getTokenAndRegexData_NNTN(a1, v62, (v63 - 8), v63, (v63 - 16), &v88, v44, v45);
                      if ((DomainDefBlockInfo & 0x80000000) != 0)
                      {
                        goto LABEL_65;
                      }

                      if ((vmaxv_u16(vcltz_s16(vshl_n_s16(vand_s8(v82, vmovn_s32(vceqq_s32(vdupq_n_s32(v88), xmmword_26ECDAC80))), 0xFuLL))) & 1) != 0 || !v88)
                      {
                        break;
                      }

                      if (v88 == 5)
                      {
                        if ((v36 & 1) == 0)
                        {
                          break;
                        }
                      }

                      else if (v88 == 6 && v36 - 1 < 2)
                      {
                        break;
                      }

                      log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "rule %s (token %s, %d,%d) blocked by triggerType %s", v43, v44, v45, *(*v16 + 24));
LABEL_54:
                      if (++v61 < *(v58 + 8))
                      {
                        v60 += 24;
                        v59 = *v16;
                        if (*(*v16 + 72) != 1)
                        {
                          continue;
                        }
                      }

                      goto LABEL_56;
                    }

                    v65 = *v16;
                    v66 = *(*v16 + 16);
                    v67 = *(*v16 + 24);
                    v68 = *v66;
                    *(v68 + 82) = 0;
                    *(v68 + 40) = 0;
                    v66[2] = *(a1 + 304);
                    v66[3] = v67;
                    *(v68 + 96) = *(v65 + 56);
                    *(v68 + 104) = v90;
                    *(v68 + 106) = v92;
                    *(v66 + 26) = *(v65 + 44);
                    *(v66 + 27) = *(v65 + 46);
                    *(v66 + 11) = 0;
                    *(v66 + 12) = 0;
                    DomainDefBlockInfo = tokenizer_apply_regex_NNTN(a1, v65, &v86);
                    if ((DomainDefBlockInfo & 0x80000000) != 0)
                    {
                      goto LABEL_65;
                    }

                    v69 = *(*v16 + 16);
                    **(v69 + 8) = 0;
                    *(v69 + 44) = 0;
                    goto LABEL_54;
                  }
                }

LABEL_56:
                if (++v54 >= HIWORD(v90))
                {
                  goto LABEL_57;
                }
              }

              log_OutPublic(*(*a1 + 32), *(a1 + 184), 24028, "%s%d%s%d", v42, v43, v44, v45, "domain");
              return NNTNERROR(0);
            }

LABEL_57:
            log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "END of loop for basic token %d,%d", v43, v44, v45, v47);
            FERuntimeData_FreeMatches(a1, 0, v70, v71, v72, v73, v74, v75);
          }

          v34 = v86 + 1;
          v86 = v34;
        }

        while (v34 < v81);
      }

      if ((paramc_ParamGetStr(*(*a1 + 40), "spaceInPYT", &v87) & 0x80000000) == 0 && !LH_stricmp(v87, "yes"))
      {
        DomainDefBlockInfo = nntn_write_LD_T_INPUTSPACETAG(a1);
        if ((DomainDefBlockInfo & 0x80000000) != 0)
        {
          return DomainDefBlockInfo;
        }
      }

LABEL_65:
      FERuntimeData_FreeMatches(a1, 1, v40, v41, v42, v43, v44, v45);
      v32 = *(*a1 + 32);
      v33 = *(a1 + 184);
      v76 = "nntn : AllInOneLoop End (%x)";
      v80 = DomainDefBlockInfo;
      v77 = 4;
    }

    else
    {
      v76 = "no basic token records to process";
      v77 = 5;
    }

    log_OutText(v32, v33, v77, 0, v76, v28, v29, v30, v80);
  }

  return DomainDefBlockInfo;
}

uint64_t nntn_write_LD_T_INPUTSPACETAG(uint64_t a1)
{
  v2 = 0;
  v22 = 0;
  v23 = 0;
  v20 = 0;
  v21 = 0;
  v3 = *(*(a1 + 264) + 16);
  v4 = *(v3 + 80);
  if (v4 >= *(v3 + 88))
  {
LABEL_25:
    if (v21)
    {
      LDO_FreeLDOLabelVector(*(a1 + 264), &v20);
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
    while (1)
    {
      __s1 = 0;
      if (v5)
      {
        Type = LDOObject_GetType(*v5, &__s1);
        v8 = LH_ERROR_to_VERROR(Type);
        if ((v8 & 0x80000000) != 0)
        {
          return v8;
        }
      }

      v9 = LDOTreeNode_ComputeAbsoluteFrom(*v4, &v23 + 1);
      v8 = LH_ERROR_to_VERROR(v9);
      if ((v8 & 0x80000000) != 0)
      {
        return v8;
      }

      v10 = LDOTreeNode_ComputeAbsoluteTo(*v4, &v23);
      v2 = LH_ERROR_to_VERROR(v10);
      if ((v2 & 0x80000000) != 0)
      {
        return v2;
      }

      if (!v5 || cstdlib_strcmp(__s1, "TOKEN_PUNCT") && cstdlib_strcmp(__s1, "TOKEN_WSPACE"))
      {
        v11 = LDO_ComputeOverlappingLabels(*(a1 + 264), &v23 + 1, &v23, 0, &v20);
        v2 = LH_ERROR_to_VERROR(v11);
        if ((v2 & 0x80000000) != 0)
        {
          return v2;
        }

        for (i = v21; i < v22; ++i)
        {
          v18 = 0;
          v17 = 0;
          StringAttribute = LDOObject_GetStringAttribute(*i, "TNTAG", &v17, &v18);
          v2 = LH_ERROR_to_VERROR(StringAttribute);
          if ((v2 & 0x80000000) != 0)
          {
            goto LABEL_25;
          }

          if (v17 && !cstdlib_strcmp(v18, "_PI1a_"))
          {
            if (v6 == 1)
            {
              v14 = "left";
            }

            else
            {
              v14 = "none";
            }

            v15 = LDOObject_SetStringAttribute(*v4, "INPUTSPACETAG", v14);
            v2 = LH_ERROR_to_VERROR(v15);
            if ((v2 & 0x80000000) != 0)
            {
              goto LABEL_25;
            }

            v6 = 0;
          }
        }

        LDO_FreeLDOLabelVector(*(a1 + 264), &v20);
        v5 = v4;
      }

      else
      {
        v6 = 1;
      }

      if (++v4 >= *(v3 + 88))
      {
        goto LABEL_25;
      }
    }
  }

  return v2;
}

BOOL isEnglishLetter(const char *a1)
{
  v2 = cstdlib_strlen(a1);
  WCharFromUtf8 = utf8_GetWCharFromUtf8(a1, 0, v2);
  if (*a1 & 0xDFu) - 65 < 0x1A || (WCharFromUtf8 - 192) < 0x17 || (WCharFromUtf8 - 216) < 7u || (WCharFromUtf8 - 223) < 0x18u || (WCharFromUtf8 & 0xFFF8) == 0xF8 || (WCharFromUtf8 - 256) <= 0x36 && (WCharFromUtf8 & 1) == 0 || (WCharFromUtf8 - 328) >= 0xFFF1u && (WCharFromUtf8 & 1) != 0 || (WCharFromUtf8 - 330) <= 0x2E && (WCharFromUtf8 & 1) == 0 || (WCharFromUtf8 - 382) >= 0xFFFBu && (WCharFromUtf8)
  {
    return 1;
  }

  v5 = (WCharFromUtf8 - 312) < 0x11;
  if (WCharFromUtf8)
  {
    v5 = (WCharFromUtf8 - 312) > 0xFFC8u;
  }

  if (v5 || (WCharFromUtf8 - 376) >= 0xFFD1u && (WCharFromUtf8 & 1) != 0)
  {
    return 1;
  }

  if ((WCharFromUtf8 - 378) <= 4)
  {
    return (WCharFromUtf8 & 1) == 0;
  }

  return WCharFromUtf8 == 383;
}

uint64_t updateLDOTreeNode_CHN(uint64_t *a1, _DWORD *a2)
{
  v99 = 0;
  v100 = 0;
  __src = 0;
  __s1 = 0;
  v96 = 0;
  v4 = *(a1[33] + 16);
  NumberChildren = LDOTreeNode_GetNumberChildren(v4);
  *a2 = NumberChildren;
  if (!NumberChildren)
  {
    UTF8Char = 0;
    goto LABEL_124;
  }

  v6 = heap_Calloc(*(*a1 + 8), 1, *(a1 + 156) + 1);
  v11 = *a1;
  if (!v6)
  {
    log_OutPublic(*(v11 + 32), "FE_NNTN", 37000, 0, v7, v8, v9, v10, v87);
    UTF8Char = NNTNERROR(10);
    goto LABEL_124;
  }

  v12 = v6;
  v17 = heap_Calloc(*(v11 + 8), 1, *(a1 + 156) + 1);
  v18 = *a1;
  if (!v17)
  {
LABEL_106:
    log_OutPublic(*(v18 + 32), "FE_NNTN", 37000, 0, v13, v14, v15, v16, v87);
    UTF8Char = NNTNERROR(10);
    v76 = 0;
    v80 = 0;
    goto LABEL_121;
  }

  v19 = heap_Calloc(*(v18 + 8), 1, 48 * *a2);
  if (!v19)
  {
    v18 = *a1;
    goto LABEL_106;
  }

  v91 = v19;
  v20 = *(v4 + 80);
  if (v20 >= *(v4 + 88))
  {
    UTF8Char = 0;
LABEL_108:
    v80 = 1;
    v76 = v91;
    goto LABEL_121;
  }

  v89 = 0;
  while (1)
  {
    if (!v20)
    {
      v86 = 6;
      goto LABEL_130;
    }

    v21 = LDOTreeNode_ComputeText(*v20, &v100);
    v22 = LH_ERROR_to_VERROR(v21);
    if ((v22 & 0x80000000) != 0 || (v23 = LHString_BorrowCPtr(v100), v24 = LDOTreeNode_ComputeAbsoluteFrom(*v20, &v99 + 1), v22 = LH_ERROR_to_VERROR(v24), (v22 & 0x80000000) != 0) || (v25 = LDOTreeNode_ComputeAbsoluteTo(*v20, &v99), v22 = LH_ERROR_to_VERROR(v25), (v22 & 0x80000000) != 0))
    {
      UTF8Char = v22;
      goto LABEL_112;
    }

    v26 = v99;
    v27 = HIDWORD(v99);
    Type = LDOObject_GetType(*v20, &__s1);
    UTF8Char = LH_ERROR_to_VERROR(Type);
    if ((UTF8Char & 0x80000000) != 0)
    {
      goto LABEL_112;
    }

    if (!cstdlib_strcmp(__s1, "TOKEN_ALPHA"))
    {
      UTF8Char = utf8_getUTF8Char(v23, 0, v17);
      if ((UTF8Char & 0x80000000) != 0)
      {
        goto LABEL_112;
      }

      v92 = v26 - v27;
      if (v26 - v27 > cstdlib_strlen(v17))
      {
        break;
      }
    }

LABEL_97:
    v73 = LDOString_BorrowAllocator(v100);
    OOC_PlacementDeleteObject(v73, v100);
    if (++v20 >= *(v4 + 88))
    {
      v74 = v89;
      if (v89)
      {
        v75 = v89 - 1;
        v76 = v91;
        v77 = v91;
        do
        {
          v78 = v75;
          v79 = LDO_ReplaceNodes(a1[33], v77, v77 + 24);
          UTF8Char = LH_ERROR_to_VERROR(v79);
          if ((UTF8Char & 0x80000000) != 0)
          {
            break;
          }

          v75 = v78 - 1;
          v77 += 48;
        }

        while (v78);
        goto LABEL_113;
      }

      goto LABEL_108;
    }
  }

  v30 = OOCAllocator_Realloc((a1 + 28), 0, 64, &v96);
  if (v96)
  {
LABEL_112:
    v76 = v91;
    v74 = v89;
    goto LABEL_113;
  }

  v31 = v30;
  __b = v12;
  cstdlib_memcpy(v30, v20, 8uLL);
  NextUtf8Offset = 0;
  v33 = 0;
  v93 = 0;
  v94 = 0;
  v95 = 0;
  v34 = 0;
  v35 = (v91 + 48 * v89);
  *v35 = 8;
  v35[1] = v31;
  v35[2] = v31 + 8;
  v88 = v35;
  do
  {
    UTF8Char = utf8_getUTF8Char(v23, NextUtf8Offset, v17);
    if ((UTF8Char & 0x80000000) != 0)
    {
      goto LABEL_111;
    }

    v36 = cstdlib_strlen(v17);
    v37 = isEnglishLetter(v17);
    if (!(v37 | v33))
    {
      v53 = PNEW_LDOTreeNode_ConRoot((a1 + 28), (a1 + 28), v17, "TOKEN", "TOKEN_ALPHA", &__src);
      v39 = LH_ERROR_to_VERROR(v53);
      if ((v39 & 0x80000000) != 0)
      {
        goto LABEL_110;
      }

      LDOObject_SetU32Attribute(__src, "_TTYPE", 0);
      UTF8Char = LH_ERROR_to_VERROR(v54);
      if ((UTF8Char & 0x80000000) != 0)
      {
        goto LABEL_111;
      }

      v55 = &v34[-v94];
      v56 = (&v34[-v94] >> 3) + 1;
      if (v56 > v95)
      {
        v57 = 2 * v95;
        if (2 * v95 >= v95 + 1000000)
        {
          v57 = v95 + 1000000;
        }

        if (v57 > v56)
        {
          v56 = v57;
        }

        if (v56 <= 8)
        {
          v56 = 8;
        }

        v95 = v56;
        v58 = OOCAllocator_Realloc((a1 + 28), v94, 8 * v56, &v96);
        if (v96)
        {
          goto LABEL_111;
        }

        v94 = v58;
        v34 = (v58 + (v55 & 0x7FFFFFFF8));
      }

      cstdlib_memcpy(v34, &__src, 8uLL);
      v33 = 0;
      v34 += 8;
      v52 = v93 + 1;
LABEL_58:
      v93 = v52;
      goto LABEL_59;
    }

    if (v33 == 1 && !v37)
    {
      v38 = PNEW_LDOTreeNode_ConRoot((a1 + 28), (a1 + 28), __b, "TOKEN", "TOKEN_ALPHA", &__src);
      v39 = LH_ERROR_to_VERROR(v38);
      if ((v39 & 0x80000000) != 0)
      {
        goto LABEL_110;
      }

      LDOObject_SetU32Attribute(__src, "_TTYPE", 0);
      UTF8Char = LH_ERROR_to_VERROR(v40);
      if ((UTF8Char & 0x80000000) != 0)
      {
        goto LABEL_111;
      }

      v41 = (&v34[-v94] >> 3) + 1;
      if (v41 > v95)
      {
        v42 = 2 * v95;
        if (2 * v95 >= v95 + 1000000)
        {
          v42 = v95 + 1000000;
        }

        if (v42 > v41)
        {
          v41 = v42;
        }

        if (v41 <= 8)
        {
          v43 = 8;
        }

        else
        {
          v43 = v41;
        }

        v44 = OOCAllocator_Realloc((a1 + 28), v94, 8 * v43, &v96);
        if (v96)
        {
          goto LABEL_111;
        }

        v34 = (v44 + (&v34[-v94] & 0x7FFFFFFF8));
        v94 = v44;
        v95 = v43;
      }

      cstdlib_memcpy(v34, &__src, 8uLL);
      cstdlib_memset(__b, 0, 3uLL);
      v45 = PNEW_LDOTreeNode_ConRoot((a1 + 28), (a1 + 28), v17, "TOKEN", "TOKEN_ALPHA", &__src);
      v39 = LH_ERROR_to_VERROR(v45);
      if ((v39 & 0x80000000) != 0)
      {
        goto LABEL_110;
      }

      LDOObject_SetU32Attribute(__src, "_TTYPE", 0);
      UTF8Char = LH_ERROR_to_VERROR(v46);
      if ((UTF8Char & 0x80000000) != 0)
      {
        goto LABEL_111;
      }

      v47 = v34 + 8;
      v48 = (&v47[-v94] >> 3) + 1;
      if (v48 > v95)
      {
        v49 = 2 * v95;
        if (2 * v95 >= v95 + 1000000)
        {
          v49 = v95 + 1000000;
        }

        if (v49 > v48)
        {
          v48 = v49;
        }

        if (v48 <= 8)
        {
          v50 = 8;
        }

        else
        {
          v50 = v48;
        }

        v51 = OOCAllocator_Realloc((a1 + 28), v94, 8 * v50, &v96);
        if (v96)
        {
          goto LABEL_111;
        }

        v47 = (v51 + (&v47[-v94] & 0x7FFFFFFF8));
        v94 = v51;
        v95 = v50;
      }

      cstdlib_memcpy(v47, &__src, 8uLL);
      v33 = 0;
      v34 = v47 + 8;
      v52 = v93 + 2;
      goto LABEL_58;
    }

    v59 = NextUtf8Offset + v36;
    v60 = !v37;
    if (v33 != 1)
    {
      v60 = 1;
    }

    if (v60)
    {
      if (!v33 && v37)
      {
        *__b = 0;
        cstdlib_strcat(__b, v17);
        if (v59 == v92)
        {
          v67 = PNEW_LDOTreeNode_ConRoot((a1 + 28), (a1 + 28), __b, "TOKEN", "TOKEN_ALPHA", &__src);
          v39 = LH_ERROR_to_VERROR(v67);
          if ((v39 & 0x80000000) != 0)
          {
LABEL_110:
            UTF8Char = v39;
LABEL_111:
            v12 = __b;
            goto LABEL_112;
          }

          LDOObject_SetU32Attribute(__src, "_TTYPE", 0);
          UTF8Char = LH_ERROR_to_VERROR(v68);
          if ((UTF8Char & 0x80000000) != 0)
          {
            goto LABEL_111;
          }

          v69 = (&v34[-v94] >> 3) + 1;
          if (v69 > v95)
          {
            v70 = 2 * v95;
            if (2 * v95 >= v95 + 1000000)
            {
              v70 = v95 + 1000000;
            }

            if (v70 > v69)
            {
              v69 = v70;
            }

            if (v69 <= 8)
            {
              v71 = 8;
            }

            else
            {
              v71 = v69;
            }

            v72 = OOCAllocator_Realloc((a1 + 28), v94, 8 * v71, &v96);
            if (v96)
            {
              goto LABEL_111;
            }

            v34 = (v72 + (&v34[-v94] & 0x7FFFFFFF8));
            v94 = v72;
            v95 = v71;
          }

          cstdlib_memcpy(v34, &__src, 8uLL);
          v34 += 8;
          ++v93;
          cstdlib_memset(__b, 0, 3uLL);
        }

LABEL_94:
        v33 = 1;
      }
    }

    else
    {
      cstdlib_strcat(__b, v17);
      if (v59 != v92)
      {
        goto LABEL_94;
      }

      v61 = PNEW_LDOTreeNode_ConRoot((a1 + 28), (a1 + 28), __b, "TOKEN", "TOKEN_ALPHA", &__src);
      v39 = LH_ERROR_to_VERROR(v61);
      if ((v39 & 0x80000000) != 0)
      {
        goto LABEL_110;
      }

      LDOObject_SetU32Attribute(__src, "_TTYPE", 0);
      UTF8Char = LH_ERROR_to_VERROR(v62);
      if ((UTF8Char & 0x80000000) != 0)
      {
        goto LABEL_111;
      }

      v63 = (&v34[-v94] >> 3) + 1;
      if (v63 > v95)
      {
        v64 = 2 * v95;
        if (2 * v95 >= v95 + 1000000)
        {
          v64 = v95 + 1000000;
        }

        if (v64 > v63)
        {
          v63 = v64;
        }

        if (v63 <= 8)
        {
          v65 = 8;
        }

        else
        {
          v65 = v63;
        }

        v66 = OOCAllocator_Realloc((a1 + 28), v94, 8 * v65, &v96);
        if (v96)
        {
          goto LABEL_111;
        }

        v34 = (v66 + (&v34[-v94] & 0x7FFFFFFF8));
        v94 = v66;
        v95 = v65;
      }

      cstdlib_memcpy(v34, &__src, 8uLL);
      v34 += 8;
      ++v93;
      cstdlib_memset(__b, 0, 3uLL);
      v33 = 0;
    }

LABEL_59:
    NextUtf8Offset = utf8_GetNextUtf8Offset(v23, NextUtf8Offset);
  }

  while (NextUtf8Offset < v92);
  v88[3] = v95;
  v88[4] = v94;
  v88[5] = v34;
  if ((&v34[-v94] >> 3) == v93)
  {
    v12 = __b;
    ++v89;
    goto LABEL_97;
  }

  v86 = 0;
  v12 = __b;
LABEL_130:
  v74 = v89;
  UTF8Char = NNTNERROR(v86);
  v76 = v91;
LABEL_113:
  if (v74)
  {
    v81 = v74;
    v82 = v76 + 24;
    do
    {
      *(v82 - 24) = 0;
      v83 = *(v82 - 16);
      if (v83)
      {
        OOCAllocator_Free((a1 + 28), v83);
        *(v82 - 16) = 0;
      }

      *(v82 - 8) = 0;
      *v82 = 0;
      v84 = *(v82 + 8);
      if (v84)
      {
        OOCAllocator_Free((a1 + 28), v84);
        *(v82 + 8) = 0;
      }

      *(v82 + 16) = 0;
      v82 += 48;
      --v81;
    }

    while (v81);
  }

  v80 = 1;
LABEL_121:
  heap_Free(*(*a1 + 8), v12);
  if (v17)
  {
    heap_Free(*(*a1 + 8), v17);
    if (v80)
    {
      goto LABEL_123;
    }
  }

  else if (v80)
  {
LABEL_123:
    heap_Free(*(*a1 + 8), v76);
  }

LABEL_124:
  if (v96)
  {
    return NNTNERROR(0);
  }

  return UTF8Char;
}

uint64_t applyIgtreeExpansion(uint64_t a1, __int16 *a2, const char *a3, char **a4, _DWORD *a5)
{
  v10 = heap_Alloc(*(*a1 + 8), 1024);
  if (v10)
  {
    v15 = v10;
    cstdlib_strcpy(v10, "");
    v19 = fe_nntn_IGTR(a1, a2, a3, v15, a5, v16, v17, v18);
    if (*a5 == 1)
    {
      cstdlib_strcpy(*a4, v15);
    }

    heap_Free(*(*a1 + 8), v15);
    return v19;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), "FE_NNTN", 37000, 0, v11, v12, v13, v14, v21);

    return NNTNERROR(10);
  }
}

uint64_t applyNNExpansion(_DWORD *a1, __int16 *a2, char **a3)
{
  v6 = heap_Alloc(*(*a1 + 8), 1024);
  if (v6)
  {
    v11 = v6;
    cstdlib_strcpy(v6, "");
    v15 = *(*a1 + 32);
    if (a1[210])
    {
      log_OutText(v15, "FE_NNTN", 5, 0, "FI prediction enabled", v12, v13, v14, 0);
      v19 = fe_mnc_nntn_Process(a1, a2, v11);
      if ((v19 & 0x80000000) != 0)
      {
        log_OutText(*(*a1 + 32), "FE_NNTN", 5, 0, "FI prediction failed", v16, v17, v18, 0);
      }

      else
      {
        cstdlib_strcpy(*a3, v11);
      }
    }

    else
    {
      log_OutText(v15, "FE_NNTN", 5, 0, "FI prediction is not enabled", v12, v13, v14, 0);
      v19 = 0;
    }

    heap_Free(*(*a1 + 8), v11);
    return v19;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), "FE_NNTN", 37000, 0, v7, v8, v9, v10, v21);

    return NNTNERROR(10);
  }
}

uint64_t writeExpandFuncNameToLDO(uint64_t a1, char *a2, uint64_t *a3, unsigned __int16 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26 = 0;
  v11 = *a4;
  v24 = a4[1];
  v25 = v11;
  log_OutText(*(*a1 + 32), *(a1 + 184), 4, 0, "nntn : writeExpandFuncNameToLDO Begin (%s)", a6, a7, a8, *a3);
  v12 = LDO_AddLabelOnSubstring(*(a1 + 264), "TOKEN", "TOKEN", &v25, &v24, &v26);
  v13 = LH_ERROR_to_VERROR(v12);
  if ((v13 & 0x80000000) != 0)
  {
    goto LABEL_8;
  }

  LDOObject_SetU32Attribute(v26, "_TTYPE", 6);
  v13 = LH_ERROR_to_VERROR(v17);
  if ((v13 & 0x80000000) != 0)
  {
    goto LABEL_8;
  }

  v18 = LDOObject_SetStringAttribute(v26, "TNTAG", a2);
  v13 = LH_ERROR_to_VERROR(v18);
  if ((v13 & 0x80000000) != 0)
  {
    goto LABEL_8;
  }

  v19 = LDOObject_SetStringAttribute(v26, "TNFUNCTAG", *a3);
  v13 = LH_ERROR_to_VERROR(v19);
  if ((v13 & 0x80000000) != 0)
  {
    goto LABEL_8;
  }

  v20 = LDOObject_SetStringAttribute(v26, "NORM", "");
  v21 = LH_ERROR_to_VERROR(v20);
  if ((v21 & 0x80000000) == 0 && *(a1 + 418))
  {
    v22 = LDOObject_SetStringAttribute(v26, "LANGMAP", *(a1 + 408));
    v13 = LH_ERROR_to_VERROR(v22);
LABEL_8:
    v21 = v13;
  }

  log_OutText(*(*a1 + 32), *(a1 + 184), 4, 0, "nntn : writeExpandFuncNameToLDO End (%x) ", v14, v15, v16, v21);
  return v21;
}

uint64_t sortExpansionNNTN(uint64_t *a1, uint64_t a2)
{
  v26 = 0;
  v4 = heap_Alloc(*(*a1 + 8), 256);
  *(*(a2 + 16) + 56) = v4;
  v9 = *a1;
  if (!v4)
  {
    log_OutPublic(*(v9 + 32), "FE_NNTN", 37000, 0, v5, v6, v7, v8, v25);
    v22 = NNTNERROR(10);
    v14 = 0;
    goto LABEL_22;
  }

  v14 = heap_Calloc(*(v9 + 8), 1, 8);
  if (!v14)
  {
    log_OutPublic(*(*a1 + 32), "FE_NNTN", 37000, 0, v10, v11, v12, v13, v25);
    v21 = NNTNERROR(10);
    goto LABEL_21;
  }

  v15 = *(a2 + 16);
  v16 = *(v15 + 8);
  v17 = *(v15 + 56);
  *v14 = v17;
  v18 = *(a2 + 24);
  v19 = *(**(a2 + 16) + 96);
  v20 = **(v19 + 8);
  if (v20 == 3)
  {
    v21 = applyIgtreeExpansion(a1, v16, *(a2 + 24), v14, &v26);
    if ((v21 & 0x80000000) != 0)
    {
      goto LABEL_21;
    }

    if (v26)
    {
      goto LABEL_20;
    }

    log_OutText(*(*a1 + 32), "FE_NNTN", 5, 0, "IGtree found NOMATCH. Set user-defined func from domain def file.", v11, v12, v13, 0);
LABEL_17:
    *v14 = *(v19 + 16);
    goto LABEL_20;
  }

  if (v20 == 2)
  {
    goto LABEL_17;
  }

  if (v20 != 1)
  {
    v22 = 0;
    goto LABEL_22;
  }

  if (*(a1 + 219) >= *(a1 + 218))
  {
    cstdlib_strcpy(v17, "DefaultFunc");
    goto LABEL_20;
  }

  if (cstdlib_strcmp(*(v19 + 16), "0"))
  {
    v21 = applyIgtreeExpansion(a1, v16, v18, v14, &v26);
    if ((v21 & 0x80000000) != 0)
    {
      goto LABEL_21;
    }

    if (v26)
    {
LABEL_20:
      v21 = writeExpandFuncNameToLDO(a1, v18, v14, v16, v10, v11, v12, v13);
      goto LABEL_21;
    }
  }

  v21 = applyNNExpansion(a1, v16, v14);
  if ((v21 & 0x80000000) == 0)
  {
    ++*(a1 + 219);
    goto LABEL_20;
  }

LABEL_21:
  v22 = v21;
LABEL_22:
  v23 = *(*(a2 + 16) + 56);
  if (v23)
  {
    heap_Free(*(*a1 + 8), v23);
    *(*(a2 + 16) + 56) = 0;
  }

  if (v14)
  {
    heap_Free(*(*a1 + 8), v14);
  }

  log_OutText(*(*a1 + 32), a1[23], 4, 0, "sortExpansionNNTN_new : DoExpansions End (%x)", v11, v12, v13, v22);
  return v22;
}

uint64_t fe_nntn_tryLoading_NNTN_igModel(_WORD *a1, uint64_t a2, uint64_t a3, char **a4)
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
  if ((Str & 0x80000000) != 0 || (Str = paramc_ParamGetStr(*(a3 + 40), "fecfg", &v27), (Str & 0x80000000) != 0) || (cstdlib_strcat(__s1, "nntnigrules_"), cstdlib_strcat(__s1, __s2), cstdlib_strcat(__s1, "_"), cstdlib_strcat(__s1, v27), Str = brokeraux_ComposeBrokerString(a3, __s1, 1, 1, __s2, 0, 0, v29, 0x100uLL), (Str & 0x80000000) != 0) || (Str = ssftriff_reader_ObjOpen(a1, a2, 2, v29, "IGTR", 1031, v26), (Str & 0x80000000) != 0))
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
      log_OutPublic(*(a3 + 32), "FE_NNTN", 37000, 0, v17, v18, v19, v20, v25);
      v21 = 2589990922;
    }
  }

  if (*v26)
  {
    v22 = ssftriff_reader_ObjClose(*v26, v9, v10, v11, v12, v13, v14, v15);
    if (v22 >= 0 || v21 <= -1)
    {
      return v21;
    }

    else
    {
      return v22;
    }
  }

  return v21;
}

uint64_t fe_nntn_IGTR(uint64_t a1, __int16 *a2, const char *a3, char *a4, _DWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 936);
  __s1 = 0;
  v9 = *(a1 + 944);
  if (!v9)
  {
    log_OutText(*(v8 + 32), "FE_NNTN", 0, 0, "IGTree model for nntn does not exist", a6, a7, a8, v59);
    return 0;
  }

  v15 = 2589990922;
  v16 = heap_Calloc(*(v8 + 8), 1, 8 * *(v9 + 1296) - 8);
  if (v16)
  {
    v17 = v16;
    v18 = *(v9 + 1296);
    if (v18 != 1)
    {
      v19 = a3;
      v20 = a4;
      v21 = a5;
      v22 = (v18 - 1);
      v23 = v16;
      while (1)
      {
        v24 = heap_Calloc(*(v8 + 8), 1, 65);
        *v23 = v24;
        if (!v24)
        {
          break;
        }

        cstdlib_strcpy(v24, "=");
        ++v23;
        if (!--v22)
        {
          v18 = *(v9 + 1296);
          a5 = v21;
          a4 = v20;
          a3 = v19;
          v15 = 2589990922;
          goto LABEL_8;
        }
      }

      log_OutPublic(*(v8 + 32), "FE_NNTN", 37000, 0, v25, v26, v27, v28, v59);
      v15 = 2589990922;
      goto LABEL_67;
    }

LABEL_8:
    __s = *(a1 + 304);
    v64 = *(a1 + 312);
    v29 = *(v9 + 1312);
    v30 = heap_Calloc(*(v8 + 8), 1, 2048);
    if (v30)
    {
      v62 = v18;
      v35 = v18 != 0;
      v36 = v18 - 1;
      if (v36 != 0 && v35)
      {
        v60 = a5;
        __dst = v30;
        v65 = a2;
        v37 = 0;
        while (cstdlib_strcmp(*(v29 + v37), "token"))
        {
          v37 += 8;
          if (8 * v36 == v37)
          {
            v15 = 0;
            goto LABEL_29;
          }
        }

        v41 = *a2;
        if ((v41 & 0x8000000000000000) == 0 && ((v42 = a2[1], v42 > v41) ? (v43 = v42 <= v64) : (v43 = 0), v43))
        {
          v44 = __dst;
          cstdlib_strncpy(__dst, &__s[v41], (v42 - v41));
        }

        else
        {
          v44 = __dst;
          cstdlib_strcpy(__dst, "=");
        }

        v15 = fe_nntn_IGTR_setFeature(v8, v29, v62, 3, v17, v44);
        if ((v15 & 0x80000000) != 0)
        {
LABEL_66:
          heap_Free(*(v8 + 8), __dst);
          goto LABEL_67;
        }

LABEL_29:
        v45 = 0;
        if (v36 <= 1)
        {
          v46 = 1;
        }

        else
        {
          v46 = v36;
        }

        v47 = 8 * v46;
        while (cstdlib_strcmp(*(v29 + v45), "lchar"))
        {
          v45 += 8;
          if (v47 == v45)
          {
            goto LABEL_37;
          }
        }

        nntn_feat_character(__s, v65, v64, -1, __dst);
        v15 = fe_nntn_IGTR_setFeature(v8, v29, v62, 2, v17, __dst);
        if ((v15 & 0x80000000) != 0)
        {
          goto LABEL_66;
        }

LABEL_37:
        v48 = 0;
        while (cstdlib_strcmp(*(v29 + v48), "llchar"))
        {
          v48 += 8;
          if (v47 == v48)
          {
            goto LABEL_42;
          }
        }

        nntn_feat_character(__s, v65, v64, -2, __dst);
        v15 = fe_nntn_IGTR_setFeature(v8, v29, v62, 1, v17, __dst);
        if ((v15 & 0x80000000) != 0)
        {
          goto LABEL_66;
        }

LABEL_42:
        v49 = 0;
        while (cstdlib_strcmp(*(v29 + v49), "l3char"))
        {
          v49 += 8;
          if (v47 == v49)
          {
            goto LABEL_47;
          }
        }

        nntn_feat_character(__s, v65, v64, -3, __dst);
        v15 = fe_nntn_IGTR_setFeature(v8, v29, v62, 0, v17, __dst);
        if ((v15 & 0x80000000) != 0)
        {
          goto LABEL_66;
        }

LABEL_47:
        v50 = 0;
        while (cstdlib_strcmp(*(v29 + v50), "rchar"))
        {
          v50 += 8;
          if (v47 == v50)
          {
            goto LABEL_52;
          }
        }

        nntn_feat_character(__s, v65, v64, 1, __dst);
        v15 = fe_nntn_IGTR_setFeature(v8, v29, v62, 4, v17, __dst);
        if ((v15 & 0x80000000) != 0)
        {
          goto LABEL_66;
        }

LABEL_52:
        v51 = 0;
        while (cstdlib_strcmp(*(v29 + v51), "rrchar"))
        {
          v51 += 8;
          if (v47 == v51)
          {
            goto LABEL_57;
          }
        }

        nntn_feat_character(__s, v65, v64, 2, __dst);
        v15 = fe_nntn_IGTR_setFeature(v8, v29, v62, 5, v17, __dst);
        if ((v15 & 0x80000000) != 0)
        {
          goto LABEL_66;
        }

LABEL_57:
        v52 = 0;
        while (cstdlib_strcmp(*(v29 + v52), "r3char"))
        {
          v52 += 8;
          if (v47 == v52)
          {
            goto LABEL_62;
          }
        }

        nntn_feat_character(__s, v65, v64, 3, __dst);
        v15 = fe_nntn_IGTR_setFeature(v8, v29, v62, 6, v17, __dst);
        if ((v15 & 0x80000000) != 0)
        {
          goto LABEL_66;
        }

LABEL_62:
        v53 = a4;
        v54 = 0;
        while (cstdlib_strcmp(*(v29 + v54), "tnpattern"))
        {
          v54 += 8;
          if (v47 == v54)
          {
            v55 = __dst;
            goto LABEL_75;
          }
        }

        v55 = __dst;
        cstdlib_strcpy(__dst, a3);
        v15 = fe_nntn_IGTR_setFeature(v8, v29, v62, 7, v17, __dst);
LABEL_75:
        heap_Free(*(v8 + 8), v55);
        a5 = v60;
        a4 = v53;
        if ((v15 & 0x80000000) != 0)
        {
          goto LABEL_67;
        }
      }

      else
      {
        heap_Free(*(v8 + 8), v30);
        v15 = 0;
      }

      igtree_Process(v9, v17, &__s1);
      if (cstdlib_strcmp(__s1, "NOMATCH"))
      {
        cstdlib_strcpy(a4, __s1);
        *a5 = 1;
      }

      else
      {
        log_OutText(*(v8 + 32), "FE_NNTN", 5, 0, "No igtree rule matched", v38, v39, v40, 0);
        *a5 = 0;
      }
    }

    else
    {
      log_OutPublic(*(v8 + 32), "FE_NNTN", 37000, 0, v31, v32, v33, v34, v59);
    }

LABEL_67:
    if (*(v9 + 1296) != 1)
    {
      v56 = (*(v9 + 1296) - 1);
      v57 = v17;
      do
      {
        if (*v57)
        {
          heap_Free(*(v8 + 8), *v57);
          *v57 = 0;
        }

        ++v57;
        --v56;
      }

      while (v56);
    }

    heap_Free(*(v8 + 8), v17);
  }

  return v15;
}

uint64_t fe_nntn_IGTR_isFeatureRequired(uint64_t a1, unsigned int a2, int a3, unsigned __int16 *a4)
{
  if (a2 < 2)
  {
    return 0;
  }

  v6 = 0;
  v7 = g_featureNames_0[a3];
  v8 = (a2 - 1);
  while (cstdlib_strcmp(*(a1 + 8 * v6), v7))
  {
    if (v8 <= ++v6)
    {
      return 0;
    }
  }

  *a4 = v6;
  return 1;
}

uint64_t fe_nntn_IGTR_setFeature(uint64_t a1, uint64_t a2, unsigned int a3, int a4, uint64_t a5, const char *a6)
{
  v20 = -1;
  result = fe_nntn_IGTR_isFeatureRequired(a2, a3, a4, &v20);
  if (result)
  {
    if (cstdlib_strcmp(a6, ""))
    {
      v10 = cstdlib_strlen(a6);
      v11 = v20;
      if (v10 <= 0x40)
      {
        v13 = *(a5 + 8 * v20);
      }

      else
      {
        v12 = cstdlib_strlen(a6);
        v13 = heap_Realloc(*(a1 + 8), *(a5 + 8 * v11), v12 + 1);
        if (!v13)
        {
          log_OutPublic(*(a1 + 32), "FE_NNTN", 37000, 0, v14, v15, v16, v17, v19);
          return 2589990922;
        }

        *(a5 + 8 * v11) = v13;
      }

      v18 = a6;
    }

    else
    {
      v13 = *(a5 + 8 * v20);
      v18 = "=";
    }

    cstdlib_strcpy(v13, v18);
    return 0;
  }

  return result;
}

char *nntn_feat_character(char *__s, __int16 *a2, signed int a3, int a4, char *__dst)
{
  v6 = *a2;
  if (v6 < 0)
  {
    goto LABEL_6;
  }

  v8 = a2[1];
  if (v6 >= v8 || v8 > a3)
  {
    goto LABEL_6;
  }

  v11 = a4;
  if (a4 < 0)
  {
    if (!*a2)
    {
      goto LABEL_6;
    }

    do
    {
      PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(__s, v6);
      v6 = PreviousUtf8Offset;
      v15 = ~v11++ == 0;
    }

    while (!v15 && PreviousUtf8Offset);
    goto LABEL_18;
  }

  if (!a4)
  {
    v6 = 0;
LABEL_21:
    if ((utf8_getUTF8Char(__s, v6, __dst) & 0x80000000) == 0)
    {
      result = cstdlib_strcmp(__dst, "");
      if (result)
      {
        return result;
      }
    }

    goto LABEL_6;
  }

  v6 = v8 - 1;
  if (v8 - 1 != a3)
  {
    do
    {
      NextUtf8Offset = utf8_GetNextUtf8Offset(__s, v6);
      v6 = NextUtf8Offset;
      --v11;
    }

    while (v11 && NextUtf8Offset != a3);
LABEL_18:
    if (!v11)
    {
      goto LABEL_21;
    }
  }

LABEL_6:

  return cstdlib_strcpy(__dst, "=");
}

uint64_t fe_nntn_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2589990913;
  }

  result = 0;
  *a2 = &ITokenizer;
  return result;
}

uint64_t NNTN_ClassOpen(_WORD *a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  if (!a3)
  {
    return 2589990919;
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

uint64_t NNTN_ObjOpen(_WORD *a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v79 = *MEMORY[0x277D85DE8];
  v76 = 0;
  v77 = 0;
  v74 = 0;
  v75 = 0;
  v5 = 2589990922;
  v72 = 0;
  v73 = 0;
  v70 = 0;
  v71 = 0;
  memset(v78, 0, sizeof(v78));
  if (!a5)
  {
    return 2589990919;
  }

  v69 = 0;
  *a5 = 0;
  *(a5 + 8) = 0;
  inited = InitRsrcFunction(a3, a4, &v77);
  if ((inited & 0x80000000) == 0)
  {
    inited = InitRsrcFunction(a1, a2, &v76);
    if ((inited & 0x80000000) == 0)
    {
      log_OutText(*(v77 + 32), "FE_NNTN", 4, 0, "nntn : ObjOpen Begin", v12, v13, v14, v66);
      v15 = heap_Calloc(*(v77 + 8), 1, 16);
      if (!v15)
      {
        log_OutPublic(*(v77 + 32), "FE_NNTN", 21000, 0, v16, v17, v18, v19, v67);
LABEL_49:
        v61 = *(v77 + 32);
        v62 = "nntn : ObjOpen End (%x)";
        v67 = v5;
        v63 = 4;
LABEL_50:
        log_OutText(v61, "FE_NNTN", v63, 0, v62, v25, v26, v27, v67);
        return v5;
      }

      v20 = v15;
      *v15 = 0;
      *(v15 + 8) = 0;
      v21 = heap_Calloc(*(v77 + 8), 1, 968);
      if (!v21)
      {
LABEL_48:
        NNTN_loc_ObjClose(v77, v20, v22, v23, v24, v25, v26, v27);
        goto LABEL_49;
      }

      v28 = v21;
      *v20 = v21;
      v68 = v20;
      *(v20 + 8) = 58765;
      v29 = v77;
      *v21 = v77;
      *(v21 + 8) = a3;
      v30 = v76;
      *(v21 + 16) = a4;
      *(v21 + 24) = v30;
      *(v21 + 32) = a1;
      *(v21 + 40) = a2;
      *(v21 + 96) = 0;
      v31 = (v21 + 96);
      *(v21 + 120) = 0;
      v32 = (v21 + 120);
      *(v21 + 104) = 0;
      *(v21 + 128) = 0;
      *(v21 + 152) = 0;
      *(v21 + 160) = 0;
      *(v21 + 176) = 0;
      *(v21 + 184) = "FE_NNTN";
      *(v21 + 336) = 0;
      *(v21 + 344) = 0;
      *(v21 + 352) = 0;
      *(v21 + 548) = 0;
      *(v21 + 552) = 0;
      *(v21 + 520) = 0;
      *(v21 + 528) = 0;
      *(v21 + 536) = 0;
      *(v21 + 544) = 0;
      *(v21 + 288) = 0;
      *(v21 + 296) = 0;
      *(v21 + 608) = 257;
      *(v21 + 856) = 0;
      *(v21 + 888) = 0;
      *(v21 + 280) = 32;
      if ((paramc_ParamGetUInt(*(v29 + 40), "tokentninitstrlen", &v72 + 1) & 0x80000000) == 0)
      {
        *(v28 + 280) = WORD2(v72);
      }

      *(v28 + 282) = 5;
      if ((paramc_ParamGetUInt(*(v77 + 40), "tokentnmaxpcreframeblocks", &v72 + 1) & 0x80000000) == 0)
      {
        *(v28 + 282) = WORD2(v72);
      }

      *(v28 + 284) = 20;
      if ((paramc_ParamGetUInt(*(v77 + 40), "tokentnnumframesinblock", &v72 + 1) & 0x80000000) == 0)
      {
        *(v28 + 284) = WORD2(v72);
      }

      v33 = nuance_pcre_ObjOpen(a3, a4, v28 + 136);
      if ((v33 & 0x80000000) != 0)
      {
        v60 = v33;
        log_OutPublic(*(*v28 + 32), *(v28 + 184), 24021, 0, v34, v35, v36, v37, v67);
        v5 = v60;
LABEL_47:
        v20 = v68;
        goto LABEL_48;
      }

      Object = addIdentifier2List(v28, "x");
      if ((Object & 0x80000000) == 0)
      {
        if ((objc_GetObject(*(v77 + 48), "FE_DCTLKP", &v74) & 0x80000000) != 0)
        {
          v65 = 24022;
        }

        else
        {
          v43 = v74;
          *(v28 + 88) = *(v74 + 8);
          *v31 = *(v43 + 16);
          if ((objc_GetObject(*(v77 + 48), "FE_DEPES", &v73) & 0x80000000) == 0)
          {
            v44 = v73;
            *(v28 + 112) = *(v73 + 8);
            *v32 = *(v44 + 16);
            Object = objc_GetObject(*(v77 + 48), "LINGDB", &v75);
            if ((Object & 0x80000000) == 0)
            {
              *(v28 + 64) = *(v75 + 8);
              IDStrings = FEData_ObjOpen_NNTN(a3, a4, v28, v23, v24, v25, v26, v27);
              v20 = v68;
              if ((IDStrings & 0x80000000) != 0)
              {
                goto LABEL_56;
              }

              IDStrings = FERuntimeData_ObjOpen(v28, v46, v22, v23, v24, v25, v26, v27);
              if ((IDStrings & 0x80000000) != 0)
              {
                goto LABEL_56;
              }

              IDStrings = FEFunctionMap_ObjOpen(v28, v47, v22, v23, v24, v25, v26, v27);
              if ((IDStrings & 0x80000000) != 0)
              {
                goto LABEL_56;
              }

              IDStrings = tokenizer_NNTN_ObjOpen(v28, v48, v22, v23, v24, v25, v26, v27);
              if ((IDStrings & 0x80000000) != 0)
              {
                goto LABEL_56;
              }

              IDStrings = textnormalizer_ObjOpen(v28, v49, v22, v23, v24, v25, v26, v27);
              if ((IDStrings & 0x80000000) != 0)
              {
                goto LABEL_56;
              }

              IDStrings = createIDStrings(v28);
              if ((IDStrings & 0x80000000) != 0)
              {
                goto LABEL_56;
              }

              if (!*(v28 + 336))
              {
                goto LABEL_57;
              }

              v50 = 0;
              do
              {
                log_OutText(*(*v28 + 32), *(v28 + 184), 5, 0, "nntn : identifier=%s", v25, v26, v27, *(*(v28 + 344) + 8 * v50++));
                v52 = *(v28 + 336);
              }

              while (v50 < v52);
              if (!*(v28 + 336))
              {
LABEL_57:
                log_OutPublic(*(*v28 + 32), "FE_NNTN", 24024, 0, v24, v25, v26, v27, v67);
                v5 = 2589990912;
                goto LABEL_48;
              }

              IDStrings = FEData_blockData_loadDataFiles_NNTN(v28, v52, *(v28 + 344), v51, v24, v25, v26, v27);
              if ((IDStrings & 0x80000000) != 0 || (IDStrings = getFECFGInfo(v28), (IDStrings & 0x80000000) != 0))
              {
LABEL_56:
                v5 = IDStrings;
                goto LABEL_48;
              }

              v53 = *v28;
              *(v28 + 848) = *v28;
              *(v28 + 876) = 0;
              if (!*(v28 + 840))
              {
                goto LABEL_35;
              }

              Object = nn_word_lkp_GetInterface(1u, &v69);
              if ((Object & 0x80000000) == 0)
              {
                *(v28 + 888) = v69;
                *(v28 + 896) = safeh_GetNullHandle();
                *(v28 + 904) = v54;
                *(v28 + 912) = safeh_GetNullHandle();
                *(v28 + 920) = v55;
                Object = (*(v69 + 16))(*(v28 + 896), *(v28 + 904), "nntn", a3, a4, v28 + 912);
                if ((Object & 0x80000000) == 0)
                {
                  inited = fi_model_getBrokerString_0(*v28, v78);
                  if ((inited & 0x80000000) == 0)
                  {
                    v56 = fi_init(a3, a4, a1, a2, &v71, 0, v78, "FINN", 1, 0);
                    if ((v56 & 0x80000000) != 0)
                    {
                      v5 = v56;
                      v61 = *(*v28 + 32);
                      v62 = "create FI model failed";
                      goto LABEL_61;
                    }

                    *(v28 + 856) = v71;
                    v53 = *v28;
LABEL_35:
                    *(v28 + 936) = v53;
                    if (!*(v28 + 928))
                    {
LABEL_38:
                      *(v28 + 192) = heap_Alloc;
                      *(v28 + 200) = heap_Calloc;
                      *(v28 + 208) = heap_Realloc;
                      *(v28 + 216) = heap_Free;
                      v58 = OOCAllocator_Con(v28 + 224, (v28 + 192), *(v53 + 8));
                      v5 = LH_ERROR_to_VERROR(v58);
                      if ((v5 & 0x80000000) == 0)
                      {
                        *(v28 + 264) = 0;
                        v20 = v68;
                        if (*(v28 + 840))
                        {
                          v5 = load_lua_code(v28, &v72);
                          if ((v5 & 0x80000000) != 0)
                          {
                            goto LABEL_48;
                          }
                        }

LABEL_55:
                        *a5 = v20;
                        *(a5 + 8) = 58764;
                        goto LABEL_49;
                      }

                      log_OutPublic(*(*v28 + 32), "FE_NNTN", 24024, 0, v59, v25, v26, v27, v67);
                      goto LABEL_47;
                    }

                    v57 = fe_nntn_tryLoading_NNTN_igModel(a3, a4, v53, &v70);
                    if ((v57 & 0x80000000) == 0)
                    {
                      *(v28 + 944) = v70;
                      v53 = *v28;
                      goto LABEL_38;
                    }

                    v5 = v57;
                    v61 = *(*v28 + 32);
                    v62 = "create Igtree model failed";
LABEL_61:
                    v63 = 5;
                    goto LABEL_50;
                  }

                  return inited;
                }
              }
            }

            goto LABEL_46;
          }

          v65 = 24023;
        }

        v20 = v68;
        log_OutPublic(*(*v28 + 32), *(v28 + 184), v65, 0, v39, v40, v41, v42, v67);
        v5 = 0;
        goto LABEL_55;
      }

LABEL_46:
      v5 = Object;
      goto LABEL_47;
    }
  }

  return inited;
}

uint64_t NNTN_ObjClose(uint64_t *a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 58764, 16) & 0x80000000) != 0 || (safeh_HandleCheck(*a1, a1[1], 58765, 968) & 0x80000000) != 0)
  {

    return TOKENTNERROR(8);
  }

  else
  {
    v3 = *a1;
    v4 = *(*a1 + 888);
    if (v4)
    {
      (*(v4 + 24))(*(v3 + 912), *(v3 + 920));
      *(v3 + 888) = 0;
    }

    if (*(v3 + 840))
    {
      v5 = *(v3 + 856);
      if (v5)
      {
        fi_deinit(*v3, *(v3 + 24), v5);
        *(v3 + 856) = 0;
      }

      if (*(v3 + 864) || *(v3 + 868))
      {
        *(v3 + 864) = 0;
      }
    }

    if (*(v3 + 928))
    {
      v6 = *(v3 + 944);
      if (v6)
      {
        igtree_Deinit(*v3, v6);
        heap_Free(*(*v3 + 8), *(v3 + 944));
        *(v3 + 944) = 0;
      }
    }

    v7 = *(v3 + 272);
    if (v7)
    {
      OOC_PlacementDeleteObject(v3 + 224, v7);
      *(v3 + 272) = 0;
    }

    OOCAllocator_Des();
    v8 = *(v3 + 184);
    log_OutText(*(*v3 + 32), v8, 4, 0, "nntn : ObjClose Begin", v9, v10, v11, v31);
    v12 = *v3;
    v20 = FEData_blockData_unloadDataFiles(v3, v13, v14, v15, v16, v17, v18, v19);
    NNTN_loc_ObjClose(v12, a1, v21, v22, v23, v24, v25, v26);
    log_OutText(*(v12 + 32), v8, 4, 0, "nntn : ObjClose End (%x)", v27, v28, v29, v20);
    return v20;
  }
}

uint64_t NNTN_ObjReopen(uint64_t *a1, int a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v36 = 0;
  v37 = 0;
  memset(v39, 0, sizeof(v39));
  v35 = 0;
  if ((safeh_HandleCheck(a1, a2, 58764, 16) & 0x80000000) == 0)
  {
    v38 = 0;
    if ((safeh_HandleCheck(*a1, a1[1], 58765, 968) & 0x80000000) == 0)
    {
      v3 = *a1;
      v4 = *(v3 + 344);
      if (v4)
      {
        if (*(v3 + 336))
        {
          v5 = 0;
          do
          {
            heap_Free(*(*v3 + 8), *(*(v3 + 344) + 8 * v5));
            *(*(v3 + 344) + 8 * v5++) = 0;
          }

          while (v5 < *(v3 + 336));
          v4 = *(v3 + 344);
        }

        heap_Free(*(*v3 + 8), v4);
        *(v3 + 344) = 0;
        *(v3 + 336) = 0;
        *(v3 + 352) = 0;
        *(v3 + 608) = 257;
      }

      IDStrings = addIdentifier2List(v3, "x");
      if ((IDStrings & 0x80000000) == 0)
      {
        IDStrings = createIDStrings(v3);
        if ((IDStrings & 0x80000000) == 0)
        {
          if (!*(v3 + 344))
          {
            return 6;
          }

          if (*(v3 + 336))
          {
            v12 = 0;
            do
            {
              log_OutText(*(*v3 + 32), *(v3 + 184), 5, 0, "nntn : identifier=%s", v9, v10, v11, *(*(v3 + 344) + 8 * v12++));
            }

            while (v12 < *(v3 + 336));
          }

          v13 = *(v3 + 888);
          if (v13)
          {
            v38 = *(v3 + 888);
            (*(v13 + 24))(*(v3 + 912), *(v3 + 920));
            *(v3 + 888) = 0;
          }

          if (*(v3 + 840))
          {
            v14 = *(v3 + 856);
            if (v14)
            {
              fi_deinit(*v3, *(v3 + 24), v14);
              *(v3 + 856) = 0;
            }

            if (*(v3 + 864) || *(v3 + 868))
            {
              *(v3 + 864) = 0;
            }
          }

          if (*(v3 + 928))
          {
            v15 = *(v3 + 944);
            if (v15)
            {
              igtree_Deinit(*v3, v15);
              heap_Free(*(*v3 + 8), *(v3 + 944));
              *(v3 + 944) = 0;
            }

            if (*(v3 + 936))
            {
              *(v3 + 936) = 0;
            }
          }

          v16 = *(v3 + 288);
          if (v16)
          {
            heap_Free(*(*v3 + 8), v16);
            *(v3 + 288) = 0;
          }

          IDStrings = FEData_blockData_unloadUnusedDataFiles(v3, *(v3 + 336), *(v3 + 344), v7, v8, v9, v10, v11);
          if ((IDStrings & 0x80000000) == 0)
          {
            IDStrings = getFECFGInfo(v3);
            if ((IDStrings & 0x80000000) == 0)
            {
              if (!*(v3 + 336))
              {
                log_OutPublic(*(*v3 + 32), "FE_NNTN", 24024, 0, v18, v19, v20, v21, v34);
                return 2589990912;
              }

              DataFiles_NNTN = FEData_blockData_loadDataFiles_NNTN(v3, *(v3 + 336), *(v3 + 344), v17, v18, v19, v20, v21);
              if ((DataFiles_NNTN & 0x80000000) != 0)
              {
                goto LABEL_50;
              }

              v23 = *v3;
              *(v3 + 848) = *v3;
              if (!*(v3 + 840))
              {
                goto LABEL_40;
              }

              IDStrings = nn_word_lkp_GetInterface(1u, &v38);
              if ((IDStrings & 0x80000000) == 0)
              {
                *(v3 + 888) = v38;
                *(v3 + 896) = safeh_GetNullHandle();
                *(v3 + 904) = v24;
                *(v3 + 912) = safeh_GetNullHandle();
                *(v3 + 920) = v25;
                IDStrings = (*(v38 + 16))(*(v3 + 896), *(v3 + 904), "nntn", *(v3 + 8), *(v3 + 16), v3 + 912);
                if ((IDStrings & 0x80000000) == 0)
                {
                  BrokerString_0 = fi_model_getBrokerString_0(*v3, v39);
                  if ((BrokerString_0 & 0x80000000) != 0)
                  {
                    return BrokerString_0;
                  }

                  DataFiles_NNTN = fi_init(*(v3 + 8), *(v3 + 16), *(v3 + 32), *(v3 + 40), &v37, 0, v39, "FINN", 1, 0);
                  if ((DataFiles_NNTN & 0x80000000) != 0)
                  {
                    v32 = *(*v3 + 32);
                    v33 = "create FI model failed";
                    goto LABEL_59;
                  }

                  *(v3 + 856) = v37;
                  v23 = *v3;
LABEL_40:
                  *(v3 + 936) = v23;
                  if (!*(v3 + 928))
                  {
LABEL_43:
                    if (*(v3 + 840))
                    {
                      DataFiles_NNTN = load_lua_code(v3, &v35);
                      if ((DataFiles_NNTN & 0x80000000) != 0)
                      {
LABEL_50:
                        v31 = *(v3 + 272);
                        if (v31)
                        {
                          OOC_PlacementDeleteObject(v3 + 224, v31);
                          *(v3 + 272) = 0;
                        }

                        OOCAllocator_Des();
                      }
                    }

                    return DataFiles_NNTN;
                  }

                  DataFiles_NNTN = fe_nntn_tryLoading_NNTN_igModel(*(v3 + 8), *(v3 + 16), v23, &v36);
                  if ((DataFiles_NNTN & 0x80000000) == 0)
                  {
                    *(v3 + 944) = v36;
                    goto LABEL_43;
                  }

                  v32 = *(*v3 + 32);
                  v33 = "create Igtree model failed";
LABEL_59:
                  log_OutText(v32, "FE_NNTN", 5, 0, v33, v27, v28, v29, v34);
                  return DataFiles_NNTN;
                }
              }
            }
          }
        }
      }

      DataFiles_NNTN = IDStrings;
      goto LABEL_50;
    }
  }

  return TOKENTNERROR(8);
}

uint64_t NNTN_ProcessStart(uint64_t *a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 58764, 16) & 0x80000000) != 0 || (safeh_HandleCheck(*a1, a1[1], 58765, 968) & 0x80000000) != 0)
  {

    return TOKENTNERROR(8);
  }

  else
  {
    v6 = *a1;
    log_OutText(*(**a1 + 32), *(*a1 + 184), 4, 0, "nntn : ProcessStart Begin", v3, v4, v5, v17);
    if (*(v6 + 336))
    {
      v15 = nuance_pcre_Init(*(v6 + 136), *(v6 + 144), *(v6 + 282), *(v6 + 284));
      if ((v15 & 0x80000000) != 0)
      {
        log_OutPublic(*(*v6 + 32), *(v6 + 184), 24051, 0, v11, v12, v13, v14, v18);
      }

      log_OutText(*(*v6 + 32), *(v6 + 184), 4, 0, "nntn : ProcessStart End (%x)", v12, v13, v14, v15);
    }

    else
    {
      log_OutPublic(*(*v6 + 32), "FE_NNTN", 24024, 0, v7, v8, v9, v10, v18);
      return 2589990912;
    }

    return v15;
  }
}

uint64_t NNTN_Process(uint64_t *a1, int a2, void *a3, int a4, _DWORD *a5)
{
  v55 = 0;
  v54 = 0;
  v53 = 0;
  if ((safeh_HandleCheck(a1, a2, 58764, 16) & 0x80000000) == 0 && (safeh_HandleCheck(*a1, a1[1], 58765, 968) & 0x80000000) == 0)
  {
    v12 = *a1;
    log_OutText((*v12)[4], v12[23], 4, 0, "NNTN : Process Begin", v9, v10, v11, v51);
    v12[9] = a3;
    *(v12 + 20) = a4;
    *(v12 + 219) = 0;
    *(v12 + 137) = log_GetLogLevel((*v12)[4]) > 4;
    v12[33] = 0;
    v13 = LingDBHasSentence(v12[8], v12[9], v12[10], &v55);
    if ((v13 & 0x80000000) != 0)
    {
      return v13;
    }

    if (!v55)
    {
      goto LABEL_48;
    }

    inited = initLDO((v12 + 28), v12 + 33);
    if ((inited & 0x80000000) != 0)
    {
      goto LABEL_53;
    }

    inited = importFromLingDB(*v12, v12[8], v12[9], v12[10], v12 + 33);
    if ((inited & 0x80000000) != 0)
    {
      goto LABEL_53;
    }

    v13 = 2589990922;
    v15 = LDO_ComputeText(v12[33], &v54);
    if ((LH_ERROR_to_VERROR(v15) & 0x80000000) != 0)
    {
      goto LABEL_54;
    }

    v12[38] = LHString_BorrowCPtr(v54);
    *(v12 + 156) = LHString_Length(v54);
    log_OutText((*v12)[4], v12[23], 5, 0, "<LOGFE> processing sentence : _%s_", v16, v17, v18, v12[38]);
    v19 = heap_Calloc((*v12)[1], 1, *(v12 + 156) + 1);
    v12[69] = v19;
    if (!v19)
    {
      goto LABEL_54;
    }

    *(v12 + 157) = 1;
    if (*(v12 + 156))
    {
      v20 = 0;
      while (utf8_strchr(g_szSpace, v12[38] + v20))
      {
        v20 += utf8_determineUTF8CharLength(*(v12[38] + v20));
        v21 = *(v12 + 156);
        if (v21 <= v20)
        {
          goto LABEL_18;
        }
      }

      v21 = *(v12 + 156);
LABEL_18:
      if (v21 > v20)
      {
        do
        {
          v20 = v20;
          if (utf8_strchr(g_szSpace, v12[38] + v20))
          {
            ++*(v12 + 157);
            for (i = *(v12[38] + v20); ; i = *(v12[38] + v20))
            {
              v20 += utf8_determineUTF8CharLength(i);
              if (*(v12 + 156) <= v20 || !utf8_strchr(g_szSpace, v12[38] + v20))
              {
                break;
              }
            }
          }

          else
          {
            LOWORD(v20) = v20 + utf8_determineUTF8CharLength(*(v12[38] + v20));
          }
        }

        while (*(v12 + 156) > v20);
      }
    }

    inited = initStrRes(v12, (v12 + 49));
    if ((inited & 0x80000000) != 0)
    {
      goto LABEL_53;
    }

    inited = initStrRes(v12, (v12 + 51));
    if ((inited & 0x80000000) != 0)
    {
      goto LABEL_53;
    }

    inited = initStrRes(v12, (v12 + 61));
    if ((inited & 0x80000000) != 0)
    {
      goto LABEL_53;
    }

    inited = initStrRes(v12, (v12 + 70));
    if ((inited & 0x80000000) != 0)
    {
      goto LABEL_53;
    }

    inited = initStrRes(v12, (v12 + 72));
    if ((inited & 0x80000000) != 0)
    {
      goto LABEL_53;
    }

    inited = initStrRes(v12, (v12 + 74));
    if ((inited & 0x80000000) != 0)
    {
      goto LABEL_53;
    }

    inited = initStrRes(v12, (v12 + 63));
    if ((inited & 0x80000000) != 0)
    {
      goto LABEL_53;
    }

    inited = initAlignmentData(v12);
    if ((inited & 0x80000000) != 0)
    {
      goto LABEL_53;
    }

    inited = initMatchList(v12);
    if ((inited & 0x80000000) != 0)
    {
      goto LABEL_53;
    }

    inited = initSolutionList(v12);
    if ((inited & 0x80000000) != 0)
    {
      goto LABEL_53;
    }

    v24 = heap_Calloc((*v12)[1], 1, 40);
    v12[40] = v24;
    v29 = *v12;
    if (v24)
    {
      v30 = heap_Calloc(*(v29 + 8), 1, 48);
      v12[41] = v30;
      if (v30)
      {
        if (*(v12 + 238) == 1)
        {
          inited = updateLDOTreeNode_CHN(v12, &v53);
          if ((inited & 0x80000000) != 0)
          {
            goto LABEL_53;
          }

          if (!v53)
          {
            *a5 = 1;
            goto LABEL_53;
          }
        }

        inited = nntn_AllInOneLoop(v12, v31, v32, v33, v25, v26, v27, v28);
        if ((inited & 0x80000000) == 0)
        {
          v37 = v12[34];
          if (!v37)
          {
            log_OutText((*v12)[4], v12[23], 0, 0, "NNTN : error - pLuaVMLDO is NULL", v34, v35, v36, v52);
            v13 = 2589990918;
            goto LABEL_54;
          }

          v38 = LuaVMLDO_RunFunction(v37, "run", v12[33]);
          inited = LH_ERROR_to_VERROR(v38);
          if ((inited & 0x80000000) == 0)
          {
            if (*(v12 + 137) != 1 || (inited = dumpTokenRecordsInLingDB(v12, "At End of Processing", 1, v39, v40, v41, v42, v43), (inited & 0x80000000) == 0))
            {
              inited = exportToLingDB(*v12, v12[8], v12[9], v12[10], (v12 + 28), v12[33], 1, 1);
              if ((inited & 0x80000000) == 0)
              {
                v13 = replaceBasicTokensWithTokenIntTnInLingDB(*v12, v12[8], v12[9], v12[10], v12[33], v12[23]);
                if ((v13 & 0x80000000) != 0)
                {
LABEL_54:
                  if (v54)
                  {
                    OOC_PlacementDeleteObject((v12 + 28), v54);
                    v54 = 0;
                  }

                  v44 = v12[33];
                  if (v44)
                  {
                    deinitLDO((v12 + 28), v44);
                    v12[33] = 0;
                  }

                  v45 = v12[69];
                  if (v45)
                  {
                    heap_Free((*v12)[1], v45);
                    v12[69] = 0;
                  }

                  clearStrRes(*v12, (v12 + 49));
                  clearStrRes(*v12, (v12 + 51));
                  clearStrRes(*v12, (v12 + 61));
                  clearStrRes(*v12, (v12 + 70));
                  clearStrRes(*v12, (v12 + 72));
                  clearStrRes(*v12, (v12 + 74));
                  clearStrRes(*v12, (v12 + 63));
                  freeAlignmentData(v12);
                  freeMatchList(v12);
                  freeSolutionList(v12);
                  v49 = v12[40];
                  if (v49)
                  {
                    heap_Free((*v12)[1], v49);
                    v12[40] = 0;
                  }

                  v50 = v12[41];
                  if (v50)
                  {
                    heap_Free((*v12)[1], v50);
                    v12[41] = 0;
                  }

                  log_OutText((*v12)[4], v12[23], 4, 0, "nntn : Process End (%x)", v46, v47, v48, v13);
                  return v13;
                }

LABEL_48:
                *a5 = 1;
                goto LABEL_54;
              }
            }
          }
        }

LABEL_53:
        v13 = inited;
        goto LABEL_54;
      }

      v29 = *v12;
    }

    log_OutPublic(*(v29 + 32), v12[23], 24048, 0, v25, v26, v27, v28, v52);
    goto LABEL_54;
  }

  return TOKENTNERROR(8);
}

uint64_t NNTN_ProcessEnd(uint64_t *a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 58764, 16) & 0x80000000) != 0 || (safeh_HandleCheck(*a1, a1[1], 58765, 968) & 0x80000000) != 0)
  {

    return TOKENTNERROR(8);
  }

  else
  {
    v6 = *a1;
    log_OutText(*(*v6 + 32), *(v6 + 184), 4, 0, "nntn : ProcessEnd Begin", v3, v4, v5, v12);
    v7 = nuance_pcre_DeInit(*(v6 + 136), *(v6 + 144));
    log_OutText(*(*v6 + 32), *(v6 + 184), 4, 0, "nntn : ProcessEnd End (%x)", v8, v9, v10, v7);
    return 0;
  }
}

uint64_t addIdentifier2List(uint64_t a1, char *__s2)
{
  v4 = *(a1 + 336);
  if (*(a1 + 336))
  {
    v5 = 0;
    do
    {
      v6 = *(a1 + 344);
      if (v6)
      {
        if (!cstdlib_strcmp(*(v6 + 8 * v5), __s2))
        {
          return 0;
        }

        v4 = *(a1 + 336);
      }

      ++v5;
    }

    while (v5 < v4);
    if (!v4)
    {
      goto LABEL_10;
    }

    v7 = heap_Realloc(*(*a1 + 8), *(a1 + 344), 8 * v4 + 8);
    if (!v7)
    {
      goto LABEL_13;
    }
  }

  else
  {
LABEL_10:
    v7 = heap_Calloc(*(*a1 + 8), 1, 8);
    if (!v7)
    {
LABEL_13:
      v17 = 2589990922;
      log_OutPublic(*(*a1 + 32), *(a1 + 184), 24048, 0, v8, v9, v10, v11, v19);
      return v17;
    }
  }

  *(a1 + 344) = v7;
  v12 = *(*a1 + 8);
  v13 = cstdlib_strlen(__s2);
  v14 = heap_Calloc(v12, 1, (v13 + 1));
  v15 = *(a1 + 336);
  *(*(a1 + 344) + 8 * v15) = v14;
  v16 = *(*(a1 + 344) + 8 * v15);
  if (!v16)
  {
    goto LABEL_13;
  }

  cstdlib_strcpy(v16, __s2);
  v17 = 0;
  ++*(a1 + 336);
  return v17;
}

uint64_t createIDStrings(_BYTE *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  __s = 0;
  *__s2 = 0u;
  v19 = 0u;
  *__s1 = 0u;
  v17 = 0u;
  *v14 = 0u;
  v15 = 0u;
  result = paramc_ParamGet(*(*a1 + 40), "langcode", &__s, 0);
  if ((result & 0x80000000) == 0)
  {
    if (cstdlib_strlen(__s))
    {
      v3 = 0;
      v4 = 0;
      do
      {
        v5 = __s;
        v6 = __s[v3];
        __s1[v3] = v6;
        __s2[v3] = v6;
        v3 = ++v4;
      }

      while (cstdlib_strlen(v5) > v4);
    }

    strcpy(&__s2[2], "x");
    __s1[3] = 0;
    if (!cstdlib_strcmp(__s1, "cah"))
    {
      __s2[1] = 110;
    }

    result = paramc_ParamGet(*(*a1 + 40), "voice", &__s, 0);
    if ((result & 0x80000000) == 0)
    {
      if (cstdlib_strlen(__s) <= 0x1A)
      {
        if (cstdlib_strlen(__s))
        {
          v7 = 0;
          v8 = 0;
          do
          {
            v9 = __s;
            v14[v7] = __s[v7];
            v7 = ++v8;
          }

          while (cstdlib_strlen(v9) > v8);
        }

        v14[cstdlib_strlen(__s)] = 0;
        if (cstdlib_strlen(__s2) >= 1)
        {
          v10 = 0;
          do
          {
            __s2[v10] = ssft_tolower(__s2[v10]);
            ++v10;
          }

          while (cstdlib_strlen(__s2) > v10);
        }

        if (cstdlib_strlen(__s1) >= 1)
        {
          v11 = 0;
          do
          {
            __s1[v11] = ssft_tolower(__s1[v11]);
            ++v11;
          }

          while (cstdlib_strlen(__s1) > v11);
        }

        if (cstdlib_strlen(v14) >= 1)
        {
          v12 = 0;
          do
          {
            v14[v12] = ssft_tolower(v14[v12]);
            ++v12;
          }

          while (cstdlib_strlen(v14) > v12);
        }

        result = addIdentifier2List(a1, __s2);
        if ((result & 0x80000000) == 0)
        {
          a1[352] = a1[336];
          result = addIdentifier2List(a1, __s1);
          if ((result & 0x80000000) == 0)
          {
            return addIdentifier2List(a1, v14);
          }
        }
      }

      else
      {
        return 2589990912;
      }
    }
  }

  return result;
}

uint64_t getFECFGInfo(uint64_t a1)
{
  v2 = 2589991940;
  v27 = -1;
  __c_1 = 0;
  __c = 0;
  v3 = 2589990912;
  if (((*(*(a1 + 88) + 96))(*(a1 + 96), *(a1 + 104), "fecfg", "nrpart_g2p", &__c_1, &v27, &__c) & 0x80000000) != 0)
  {
    return v3;
  }

  if (v27 == 1 && __c_1 != 0)
  {
    v5 = cstdlib_strchr(*__c_1, __c);
    if (v5)
    {
      *v5 = 0;
    }

    *(a1 + 608) = cstdlib_atoi(*__c_1);
  }

  v27 = -1;
  if (((*(*(a1 + 88) + 96))(*(a1 + 96), *(a1 + 104), "fecfg", "nrpart_tn", &__c_1, &v27, &__c) & 0x80000000) != 0)
  {
    return v3;
  }

  if (v27 == 1 && __c_1)
  {
    v6 = cstdlib_strchr(*__c_1, __c);
    if (v6)
    {
      *v6 = 0;
    }

    *(a1 + 609) = cstdlib_atoi(*__c_1);
  }

  v27 = -1;
  if (((*(*(a1 + 88) + 96))(*(a1 + 96), *(a1 + 104), "fecfg", "nntn_nn_step", &__c_1, &v27, &__c) & 0x80000000) == 0)
  {
    v7 = v27;
    if (v27)
    {
      *(a1 + 864) = 0;
      if (v7 == 1 && __c_1)
      {
        v8 = cstdlib_strchr(*__c_1, __c);
        if (v8)
        {
          *v8 = 0;
        }

        *(a1 + 864) = LH_atou(*__c_1);
      }

      v27 = -1;
      if (((*(*(a1 + 88) + 96))(*(a1 + 96), *(a1 + 104), "fecfg", "nntn_nn_vect", &__c_1, &v27, &__c) & 0x80000000) == 0)
      {
        v9 = v27;
        if (v27)
        {
          *(a1 + 868) = 0;
          if (v9 == 1 && __c_1)
          {
            v10 = cstdlib_strchr(*__c_1, __c);
            if (v10)
            {
              *v10 = 0;
            }

            *(a1 + 868) = LH_atou(*__c_1);
          }

          v27 = -1;
          if (((*(*(a1 + 88) + 96))(*(a1 + 96), *(a1 + 104), "fecfg", "nntn_nn_max", &__c_1, &v27, &__c) & 0x80000000) == 0)
          {
            v11 = v27;
            if (v27)
            {
              *(a1 + 872) = 0;
              if (v11 == 1 && __c_1)
              {
                v12 = cstdlib_strchr(*__c_1, __c);
                if (v12)
                {
                  *v12 = 0;
                }

                *(a1 + 872) = LH_atou(*__c_1);
              }

              *(a1 + 880) = 0;
              v27 = -1;
              if (((*(*(a1 + 88) + 96))(*(a1 + 96), *(a1 + 104), "fecfg", "nntn_window_option", &__c_1, &v27, &__c) & 0x80000000) != 0 || (v16 = v27) == 0)
              {
                log_OutText(*(*a1 + 32), "FE_NNTN", 5, 0, "Load nntn_window_option from CFG failed, use default 0.", v13, v14, v15, v24);
                v16 = v27;
              }

              if (v16 == 1 && __c_1)
              {
                v17 = cstdlib_strchr(*__c_1, __c);
                if (v17)
                {
                  *v17 = 0;
                }

                *(a1 + 880) = LH_atou(*__c_1);
              }

              v27 = -1;
              if (((*(*(a1 + 88) + 96))(*(a1 + 96), *(a1 + 104), "fecfg", "nntn_use_NNTN", &__c_1, &v27, &__c) & 0x80000000) == 0 && v27)
              {
                if (v27 == 1 && __c_1)
                {
                  v18 = cstdlib_strchr(*__c_1, __c);
                  if (v18)
                  {
                    *v18 = 0;
                  }

                  if (!cstdlib_strcmp(*__c_1, "yes"))
                  {
                    *(a1 + 840) = 1;
                  }
                }

                v27 = -1;
                if (((*(*(a1 + 88) + 96))(*(a1 + 96), *(a1 + 104), "fecfg", "nntn_use_NNTN_IGTree", &__c_1, &v27, &__c) & 0x80000000) == 0 && v27)
                {
                  if (v27 == 1 && __c_1)
                  {
                    v19 = cstdlib_strchr(*__c_1, __c);
                    if (v19)
                    {
                      *v19 = 0;
                    }

                    if (!cstdlib_strcmp(*__c_1, "yes"))
                    {
                      *(a1 + 928) = 1;
                    }
                  }

                  v27 = -1;
                  if (((*(*(a1 + 88) + 96))(*(a1 + 96), *(a1 + 104), "fecfg", "nntn_one_char_per_node", &__c_1, &v27, &__c) & 0x80000000) == 0 && v27)
                  {
                    if (v27 == 1 && __c_1)
                    {
                      v20 = cstdlib_strchr(*__c_1, __c);
                      if (v20)
                      {
                        *v20 = 0;
                      }

                      if (!cstdlib_strcmp(*__c_1, "yes"))
                      {
                        *(a1 + 952) = 1;
                      }
                    }

                    v27 = -1;
                    v21 = (*(*(a1 + 88) + 96))(*(a1 + 96), *(a1 + 104), "fecfg", "nntn_feat_focus", &__c_1, &v27, &__c);
                    if ((v21 & 0x80000000) == 0)
                    {
                      if (v27)
                      {
                        v3 = v21;
                        if (v27 == 1 && __c_1)
                        {
                          v22 = cstdlib_strchr(*__c_1, __c);
                          if (v22)
                          {
                            *v22 = 0;
                          }

                          if (!cstdlib_strcmp(*__c_1, "yes"))
                          {
                            *(a1 + 956) = 1;
                          }
                        }

                        return v3;
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

  return v2;
}

uint64_t fi_model_getBrokerString_0(uint64_t a1, _BYTE *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = 0;
  __s2 = 0;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  *__s1 = 0u;
  v8 = 0u;
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", &__s2);
  if ((result & 0x80000000) == 0)
  {
    result = paramc_ParamGetStr(*(a1 + 40), "fecfg", &v5);
    if ((result & 0x80000000) == 0)
    {
      cstdlib_strcat(__s1, "nntn_");
      cstdlib_strcat(__s1, __s2);
      cstdlib_strcat(__s1, "_");
      cstdlib_strcat(__s1, v5);
      return brokeraux_ComposeBrokerString(a1, __s1, 1, 1, __s2, 0, 0, a2, 0x100uLL);
    }
  }

  return result;
}

uint64_t load_lua_code(uint64_t a1, _DWORD *a2)
{
  *a2 = 0;
  v4 = *(a1 + 272);
  if (v4)
  {
    OOC_PlacementDeleteObject(a1 + 224, v4);
    *(a1 + 272) = 0;
  }

  OOCAllocator_Des();
  IsLuaCodeAvailable = LuaVMLDO_IsLuaCodeAvailable(*(a1 + 8), *(a1 + 16), 0, a2);
  v6 = LH_ERROR_to_VERROR(IsLuaCodeAvailable);
  if ((v6 & 0x80000000) == 0)
  {
    if (*a2 != 1)
    {
      return v6;
    }

    *a2 = 0;
    v7 = OOCAllocator_Con(a1 + 224, (a1 + 192), *(*a1 + 8));
    v8 = LH_ERROR_to_VERROR(v7);
    if ((v8 & 0x80000000) != 0 || (v9 = PNEW_LuaVMLDO_Con(a1 + 224, a1 + 224, *(a1 + 8), *(a1 + 16), "FE_NNTN", (a1 + 272)), v8 = LH_ERROR_to_VERROR(v9), (v8 & 0x80000000) != 0))
    {
      v6 = v8;
    }

    else
    {
      ScriptFromRIFF = LuaVMLDO_LoadScriptFromRIFF(*(a1 + 272), 0);
      v6 = LH_ERROR_to_VERROR(ScriptFromRIFF);
      if ((v6 & 0x80000000) == 0)
      {
        *a2 = 1;
        return v6;
      }
    }
  }

  v11 = *(a1 + 272);
  if (v11)
  {
    OOC_PlacementDeleteObject(a1 + 224, v11);
    *(a1 + 272) = 0;
  }

  OOCAllocator_Des();
  return v6;
}

uint64_t NNTN_loc_ObjClose(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v9 = result;
    log_OutText(*(result + 32), "FE_NNTN", 4, 0, "nntn : loc ObjClose Begin", a6, a7, a8, v67);
    NullHandle = safeh_GetNullHandle();
    v12 = 0;
    if (!safeh_HandlesEqual(*a2, a2[1], NullHandle, v11))
    {
      result = safeh_HandleCheck(*a2, a2[1], 58765, 968);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      LODWORD(v12) = result;
      v20 = *a2;
      v21 = tokenizer_NNTN_ObjClose(*a2, v13, v14, v15, v16, v17, v18, v19);
      if (v21 < 0)
      {
        LODWORD(v12) = v21;
      }

      v29 = textnormalizer_ObjClose(v20, v22, v23, v24, v25, v26, v27, v28);
      if (v29 < 0)
      {
        LODWORD(v12) = v29;
      }

      v30 = safeh_GetNullHandle();
      if (!safeh_HandlesEqual(*(v20 + 136), *(v20 + 144), v30, v31))
      {
        v39 = nuance_pcre_ObjClose(*(v20 + 136), *(v20 + 144));
        if (v39 < 0)
        {
          LODWORD(v12) = v39;
        }
      }

      v40 = FEData_ObjClose_NNTN(v20, v32, v33, v34, v35, v36, v37, v38);
      if (v40 < 0)
      {
        LODWORD(v12) = v40;
      }

      *(v20 + 152) = 0;
      v48 = FERuntimeData_ObjClose(v20, v41, v42, v43, v44, v45, v46, v47);
      if (v48 < 0)
      {
        LODWORD(v12) = v48;
      }

      *(v20 + 176) = 0;
      v56 = FEFunctionMap_ObjClose(v20, v49, v50, v51, v52, v53, v54, v55);
      if (v56 >= 0)
      {
        v12 = v12;
      }

      else
      {
        v12 = v56;
      }

      *(v20 + 160) = 0;
      if (*(v20 + 88))
      {
        objc_ReleaseObject(*(v9 + 48), "FE_DCTLKP");
      }

      if (*(v20 + 112))
      {
        objc_ReleaseObject(*(v9 + 48), "FE_DEPES");
      }

      if (*(v20 + 64))
      {
        objc_ReleaseObject(*(v9 + 48), "LINGDB");
      }

      v57 = *(v20 + 344);
      if (v57)
      {
        if (*(v20 + 336))
        {
          v58 = 0;
          do
          {
            heap_Free(*(v9 + 8), *(*(v20 + 344) + 8 * v58));
            *(*(v20 + 344) + 8 * v58++) = 0;
          }

          while (v58 < *(v20 + 336));
          v57 = *(v20 + 344);
        }

        heap_Free(*(v9 + 8), v57);
      }

      v59 = *(v20 + 288);
      if (v59)
      {
        heap_Free(*(v9 + 8), v59);
      }

      v60 = *(v20 + 888);
      if (v60)
      {
        v12 = (*(v60 + 24))(*(v20 + 912), *(v20 + 920));
        *(v20 + 888) = 0;
      }

      if (*(v20 + 840))
      {
        v61 = *(v20 + 856);
        if (v61)
        {
          v12 = fi_deinit(*v20, *(v20 + 24), v61);
          *(v20 + 856) = 0;
        }

        if (*(v20 + 864) || *(v20 + 868))
        {
          *(v20 + 864) = 0;
        }
      }

      if (*(v20 + 928))
      {
        v62 = *(v20 + 944);
        if (v62)
        {
          igtree_Deinit(*v20, v62);
          heap_Free(*(*v20 + 8), *(v20 + 944));
          *(v20 + 944) = 0;
        }

        if (*(v20 + 936))
        {
          *(v20 + 936) = 0;
        }
      }

      v63 = *(v20 + 272);
      if (v63)
      {
        OOC_PlacementDeleteObject(v20 + 224, v63);
        *(v20 + 272) = 0;
      }

      OOCAllocator_Des();
      heap_Free(*(v9 + 8), v20);
    }

    heap_Free(*(v9 + 8), a2);
    return log_OutText(*(v9 + 32), "FE_NNTN", 4, 0, "nntn : loc ObjClose End (%x)", v64, v65, v66, v12);
  }

  return result;
}

uint64_t setDomainsOnSentence_NNTN(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v87 = *MEMORY[0x277D85DE8];
  v85 = 0;
  v84 = 0;
  v82 = 0;
  v83 = 0;
  if (a1)
  {
    log_OutText(*(*a1 + 32), a1[23], 4, 0, "nntn : setDomainsOnSentence_NNTN Begin", a6, a7, a8, v74);
    DomainDefBlockInfo = dumpTokenRecordsInLingDB(a1, "TRACE", 1, v9, v10, v11, v12, v13);
    if ((DomainDefBlockInfo & 0x80000000) == 0)
    {
      FEData_blockData_getDomains2SearchIn(a1, *(a1 + 168), a1[43], v86, &v84, 0, v14, v15);
      log_OutText(*(*a1 + 32), a1[23], 4, 0, "nntn : %d block(s) to search in", v17, v18, v19, v84);
      if (v84)
      {
        for (i = 0; i < v84; ++i)
        {
          FEData_blockData_newGetDomainDefBlockInfo(a1, v86[i], &v83, v20, v21, v22, v23, v24);
          if (*(v83 + 24))
          {
            v26 = 0;
            v27 = 0;
            do
            {
              log_OutText(*(*a1 + 32), a1[23], 4, 0, "nntn : domain[%d,%d,%s,type=%d] marker %s%s %s", v22, v23, v24, i);
              ++v27;
              v26 += 72;
            }

            while (v27 < *(v83 + 24));
          }
        }

        v28 = *(a1[33] + 32);
        v29 = *(v28 + 24);
        if (v29 < *(v28 + 32))
        {
          do
          {
            __s2 = 0;
            v80 = 0;
            StringAttribute = LDOObject_GetStringAttribute(*v29, "TNTAG", &v80, &__s2);
            DomainDefBlockInfo = LH_ERROR_to_VERROR(StringAttribute);
            if ((DomainDefBlockInfo & 0x80000000) != 0)
            {
              return DomainDefBlockInfo;
            }

            if (v80)
            {
              v79 = 0;
              v78 = 0;
              AbsoluteFrom = LDOLabel_GetAbsoluteFrom(*v29);
              v76 = v29;
              AbsoluteTo = LDOLabel_GetAbsoluteTo(*v29);
              log_OutText(*(*a1 + 32), a1[23], 5, 0, "doing DB token %s %d,%d", v33, v34, v35, __s2);
              if (v84)
              {
                v38 = 0;
                v39 = AbsoluteFrom;
                v40 = 0;
                v41 = 0;
                v77 = v39;
                do
                {
                  FEData_blockData_newGetDomainDefBlockInfo(a1, v86[v38], &v83, v36, v37, v22, v23, v24);
                  IsRemappable = FEData_blockData_IsRemappable(a1, __s2, &v79, &v78 + 1, &v78, v42, v43, v44);
                  v82 = 0;
                  if (IsRemappable == 1)
                  {
                    log_OutText(*(*a1 + 32), a1[23], 5, 0, "domain %s is remappable to %s", v22, v23, v24, __s2);
                    v41 = HIWORD(v78);
                    v40 = v78;
                    DomainDefBlockInfo = FEData_blockData_newGetDomainDefBlockInfo(a1, v78, &v82, v46, v47, v48, v49, v50);
                    if ((DomainDefBlockInfo & 0x80000000) != 0)
                    {
                      return DomainDefBlockInfo;
                    }

                    v55 = v82;
                    if (v82)
                    {
LABEL_25:
                      v59 = v55[2];
                      DomainDefBlockInfo = FERuntimeData_AddDomainRange(a1, &v85);
                      if ((DomainDefBlockInfo & 0x80000000) != 0)
                      {
                        return DomainDefBlockInfo;
                      }

                      v63 = (v59 + 72 * v41);
                      v64 = v85;
                      v85[3] = v40;
                      v64[2] = v41;
                      *v64 = v77;
                      v64[1] = AbsoluteTo;
                      *(v64 + 2) = 1;
                      log_OutText(*(*a1 + 32), a1[23], 5, 0, "Set Active Domain[%s:%s] range %d,%d", v60, v61, v62, *v82);
                      if (!cstdlib_strcmp((*(v63 + 6) + *v63), a1[36]) || *(v63 + 15) == 1)
                      {
                        log_OutText(*(*a1 + 32), a1[23], 5, 0, "normal domain OR was remapped to EscNormal - set additional domains, if any", v22, v23, v24, v75);
                        v65 = v83;
                        if (*(v83 + 24))
                        {
                          v66 = 0;
                          v67 = 48;
                          do
                          {
                            if (v41 != v66)
                            {
                              v68 = *(v65 + 16);
                              if (!cstdlib_strcmp((*(v68 + v67) + *(v68 + v67 - 48)), a1[36]) || *(v68 + v67 + 12) == 1)
                              {
                                DomainDefBlockInfo = FERuntimeData_AddDomainRange(a1, &v85);
                                if ((DomainDefBlockInfo & 0x80000000) != 0)
                                {
                                  return DomainDefBlockInfo;
                                }

                                v72 = v85;
                                v85[3] = v86[v38];
                                v72[2] = v66;
                                *v72 = v77;
                                v72[1] = AbsoluteTo;
                                *(v72 + 2) = 1;
                                log_OutText(*(*a1 + 32), a1[23], 5, 0, "Set (as mapped to normal) Active Domain[%s:%s] range %d,%d", v69, v70, v71, *v83);
                              }
                            }

                            ++v66;
                            v65 = v83;
                            v67 += 72;
                          }

                          while (v66 < *(v83 + 24));
                        }
                      }

                      goto LABEL_36;
                    }

                    log_OutPublic(*(*a1 + 32), a1[23], 24041, "%s%s", v51, v52, v53, v54, "skipping undefined remapped domain:");
                  }

                  else
                  {
                    v55 = v83;
                    if (*(v83 + 24))
                    {
                      v56 = 0;
                      v57 = 0;
                      while (1)
                      {
                        v58 = cstdlib_strcmp((*(v55[2] + v56 + 48) + *(v55[2] + v56)), __s2);
                        v55 = v83;
                        if (!v58)
                        {
                          break;
                        }

                        ++v57;
                        v56 += 72;
                        if (v57 >= *(v83 + 24))
                        {
                          goto LABEL_22;
                        }
                      }

                      v40 = v86[v38];
                      v82 = v83;
                      v41 = v57;
                      if (v83)
                      {
                        goto LABEL_25;
                      }
                    }

                    else
                    {
LABEL_22:
                      v55 = v82;
                      if (v82)
                      {
                        goto LABEL_25;
                      }
                    }
                  }

LABEL_36:
                  ++v38;
                }

                while (v38 < v84);
              }

              v29 = v76;
            }

            ++v29;
          }

          while (v29 < *(*(a1[33] + 32) + 32));
        }

        log_OutText(*(*a1 + 32), a1[23], 4, 0, "nntn : setDomainsOnSentence_NNTN End (%x)", v22, v23, v24, DomainDefBlockInfo);
      }

      else
      {
        return 0;
      }
    }

    return DomainDefBlockInfo;
  }

  else
  {

    return NNTNERROR(7);
  }
}

uint64_t mergeDomainsOnSentence_NNTN(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v43 = *MEMORY[0x277D85DE8];
  v40 = 0;
  v41 = 0;
  v38 = 0;
  v37 = 0;
  v36 = 0;
  v34 = 0;
  v35 = 0;
  if (a1)
  {
    log_OutText(*(*a1 + 32), a1[23], 4, 0, "nntn : mergeDomainsOnSentence_NNTN Begin", a6, a7, a8, v33);
    v39 = 0;
    FERuntimeData_GetActiveDomains(a1, v42, &v39, 0, *(a1 + 156), 1);
    if (v39)
    {
      v9 = 0;
      v10 = 1;
      do
      {
        FERuntimeData_GetDomainRange(a1, v42[v9], &v41);
        DomainBlockIndex = FERuntimeData_GetDomainBlockIndex(a1, v42[v9++], &v38, &v37 + 1);
        v15 = v39;
        v16 = v10;
        if (v9 < v39)
        {
          while (1)
          {
            FERuntimeData_GetDomainRange(a1, v42[v16], &v40);
            v17 = FERuntimeData_GetDomainBlockIndex(a1, v42[v16], &v37, &v36);
            if (*(v40 + 2) == 1 && v37 == v38 && v36 == HIWORD(v37) && *v41 == *v40 && v41[1] == v40[1])
            {
              *(v40 + 2) = 0;
              log_OutText(*(*a1 + 32), a1[23], 4, 0, "nntn : Remove duplicate domain %d,%d RANGE %d,%d ?", v12, v13, v14, 1);
            }

            if ((v17 & 0x80000000) != 0)
            {
              goto LABEL_44;
            }

            ++v16;
            v15 = v39;
            if (v16 >= v39)
            {
              goto LABEL_15;
            }
          }
        }

        v17 = DomainBlockIndex;
LABEL_15:
        ++v10;
      }

      while (v9 < v15);
      if (v15)
      {
        v18 = 0;
        while (1)
        {
          FERuntimeData_GetDomainRange(a1, v42[v18], &v41);
          DomainDefBlockInfo = FERuntimeData_GetDomainBlockIndex(a1, v42[v18], &v38, &v37 + 1);
          if ((DomainDefBlockInfo & 0x80000000) != 0)
          {
            goto LABEL_43;
          }

          DomainDefBlockInfo = FEData_blockData_newGetDomainDefBlockInfo(a1, v38, &v35, v20, v21, v12, v13, v14);
          if ((DomainDefBlockInfo & 0x80000000) != 0)
          {
            goto LABEL_43;
          }

          v22 = (*(v35 + 16) + 72 * HIWORD(v37));
          if (*(*(v35 + 40) + 16 * v22[6] + 8) && *(v41 + 2) == 1)
          {
            v23 = v41[1];
            log_OutText(*(*a1 + 32), a1[23], 4, 0, "nntn : Modify domain %s RANGE %d,%d ?", v12, v13, v14, *(v22 + 6) + *v22);
            if (v18 < v39)
            {
              v24 = v18;
              do
              {
                FERuntimeData_GetDomainRange(a1, v42[v24], &v40);
                DomainDefBlockInfo = FERuntimeData_GetDomainBlockIndex(a1, v42[v24], &v37, &v36);
                if ((DomainDefBlockInfo & 0x80000000) != 0)
                {
                  goto LABEL_43;
                }

                DomainDefBlockInfo = FEData_blockData_newGetDomainDefBlockInfo(a1, v37, &v34, v25, v26, v12, v13, v14);
                if ((DomainDefBlockInfo & 0x80000000) != 0)
                {
                  goto LABEL_43;
                }

                if (v40 != v41 && *(v40 + 2) == 1)
                {
                  v27 = *v40;
                  if (v27 == v23 || v27 == *v41 && v40[1] == v41[1])
                  {
                    v28 = (*(v34 + 16) + 72 * v36);
                    if (!cstdlib_strcmp((*(v22 + 6) + *v22), (*(v28 + 6) + *v28)))
                    {
                      v23 = v40[1];
                      log_OutText(*(*a1 + 32), a1[23], 4, 0, "nntn : Modify domain %s RANGE %d,%d -> %d %d (merge with %s)", v29, v30, v31, *(v22 + 6) + *v22);
                      *(v40 + 2) = 0;
                    }
                  }
                }
              }

              while (++v24 < v39);
            }

            if (v41[1] != v23)
            {
              DomainDefBlockInfo = FERuntimeData_UpdateDomainRange(a1, v18, v23);
              if ((DomainDefBlockInfo & 0x80000000) != 0)
              {
                goto LABEL_43;
              }
            }
          }

          if (++v18 >= v39)
          {
            goto LABEL_42;
          }
        }
      }

      if ((v17 & 0x80000000) != 0)
      {
        goto LABEL_44;
      }
    }

LABEL_42:
    DomainDefBlockInfo = FERuntimeData_PruneAndDumpActiveDomains(a1);
LABEL_43:
    v17 = DomainDefBlockInfo;
LABEL_44:
    log_OutText(*(*a1 + 32), a1[23], 4, 0, "nntn : mergeDomainsOnSentence_NNTN End (%x)", v12, v13, v14, v17);
    return v17;
  }

  else
  {

    return NNTNERROR(7);
  }
}

uint64_t stat_mnctn_seq2rule(uint64_t a1, uint64_t *a2, __int16 *a3, char *a4)
{
  v8 = *a2;
  v64 = 0;
  v62 = 0;
  v9 = a2[5];
  v10 = (*(v9 + 40))(a2[8], a2[9], &v64);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  v11 = heap_Calloc(*(v8 + 8), 1, 8);
  if (!v11)
  {
    v34 = 2589990922;
    log_OutPublic(*(v8 + 32), "FE_NNTN", 37000, 0, v12, v13, v14, v15, v55);
    return v34;
  }

  v16 = v11;
  v17 = heap_Calloc(*(v8 + 8), 1, 2048);
  if (!v17)
  {
    v34 = 2589990922;
    log_OutPublic(*(v8 + 32), "FE_NNTN", 37000, 0, v18, v19, v20, v21, v55);
    v35 = *(v8 + 8);
    v36 = v16;
    goto LABEL_51;
  }

  v22 = v17;
  v23 = *(a2 + 5);
  if (*(a1 + 956) == 1)
  {
    ++v23;
  }

  v24 = heap_Alloc(*(v8 + 8), 4 * (v23 * *(a2 + 4)));
  v63 = v24;
  if (!v24)
  {
    v34 = 2589990922;
    log_OutPublic(*(v8 + 32), "FE_NNTN", 37000, 0, v25, v26, v27, v28, v55);
    goto LABEL_50;
  }

  v29 = *a3;
  __dst = a4;
  v60 = v24;
  if (*(a2 + 8) == 1)
  {
    v30 = *(a2 + 4);
    v31 = a3[1] - v29;
    if (v30 == v31)
    {
      v32 = 0;
    }

    else
    {
      v32 = v30 - v31;
    }

    v56 = ((v32 & 1) + v32) >> 1;
    v33 = -v56;
  }

  else
  {
    v31 = a3[1] - v29;
    LOWORD(v56) = 7;
    LOWORD(v33) = -7;
  }

  cstdlib_strncpy(v22, (*(a1 + 304) + v29), (v31 + 1));
  v41 = 0;
  v59 = 0;
  v42 = 0;
  v22[a3[1] - *a3] = 0;
LABEL_18:
  v43 = v41;
  while (1)
  {
    v44 = *(a2 + 4);
    if (v44 <= v43)
    {
      break;
    }

    if ((v33 & 0x8000) != 0)
    {
      nnGetChar(*(a1 + 304), a3, v33, v16);
      LOWORD(v33) = v33 + 1;
      if (cstdlib_strcmp(v16, ""))
      {
        v61 = v42;
LABEL_35:
        v48 = *(a1 + 956);
        v49 = 0.0;
        goto LABEL_36;
      }
    }

    else
    {
      v61 = v42;
      if (v59)
      {
        if (v56 < 1)
        {
          cstdlib_strcpy(v16, "</s>");
        }

        else
        {
          nnGetChar(*(a1 + 304), a3, (8 - v56), v16);
          if (!cstdlib_strcmp(v16, ""))
          {
            cstdlib_strcpy(v16, "</s>");
          }

          LOWORD(v56) = v56 - 1;
        }

        goto LABEL_35;
      }

      v58 = v8;
      if ((v42 & 0x8000) == 0)
      {
        v45 = v42;
        if (v42)
        {
          NextUtf8Offset = 0;
          while (NextUtf8Offset != cstdlib_strlen(v22))
          {
            NextUtf8Offset = utf8_GetNextUtf8Offset(v22, NextUtf8Offset);
            v47 = v45--;
            if (v47 <= 1)
            {
              goto LABEL_31;
            }
          }
        }

        else
        {
          NextUtf8Offset = 0;
LABEL_31:
          if ((utf8_getUTF8Char(v22, NextUtf8Offset, v16) & 0x80000000) == 0)
          {
            goto LABEL_33;
          }
        }
      }

      cstdlib_strcpy(v16, "");
LABEL_33:
      v42 = v61 + 1;
      v59 = 1;
      v8 = v58;
      if (cstdlib_strcmp(v16, ""))
      {
        ++v61;
        v59 = 0;
        v48 = *(a1 + 956);
        v49 = 1.0;
LABEL_36:
        if (v48 == 1)
        {
          *v60 = v49;
          v50 = v60 + 1;
        }

        else
        {
          v50 = v60;
        }

        if (((*(v9 + 56))(a2[8], a2[9], v16, v50) & 0x1FFF) == 0x14)
        {
          log_OutText(*(v8 + 32), "FE_NNTN", 5, 0, "No embedding vector for character %s . Fall back!", v38, v39, v40, v16);
          cstdlib_strcpy(v16, "</s>");
          (*(v9 + 56))(a2[8], a2[9], v16, v50);
        }

        v41 = v43 + 1;
        v60 = &v50[v64];
        v42 = v61;
        goto LABEL_18;
      }
    }
  }

  v34 = fi_predict(a2[1], &v63, v44, &v62, v37, v38, v39, v40);
  if ((v34 & 0x80000000) != 0)
  {
    log_OutText(*(v8 + 32), "FE_NNTN", 5, 0, "FIhmogrph Prediction Failed", v51, v52, v53, 0);
  }

  else
  {
    cstdlib_strcpy(__dst, *v62);
  }

LABEL_50:
  heap_Free(*(v8 + 8), v16);
  v35 = *(v8 + 8);
  v36 = v22;
LABEL_51:
  heap_Free(v35, v36);
  return v34;
}

uint64_t nnGetChar(char *__s, __int16 *a2, int a3, char *__dst)
{
  NextUtf8Offset = *a2;
  if ((NextUtf8Offset & 0x80000000) == 0)
  {
    v6 = a2[1];
    if (NextUtf8Offset < v6)
    {
      v7 = a3;
      if ((a3 & 0x80000000) == 0)
      {
        if (a3)
        {
          NextUtf8Offset = v6 - 1;
          while (NextUtf8Offset != cstdlib_strlen(__s))
          {
            NextUtf8Offset = utf8_GetNextUtf8Offset(__s, NextUtf8Offset);
            v9 = v7--;
            if (v9 <= 1)
            {
              goto LABEL_15;
            }
          }

          goto LABEL_16;
        }

        NextUtf8Offset = 0;
LABEL_15:
        result = utf8_getUTF8Char(__s, NextUtf8Offset, __dst);
        if ((result & 0x80000000) == 0)
        {
          return result;
        }

        goto LABEL_16;
      }

      if (*a2)
      {
        do
        {
          PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(__s, NextUtf8Offset);
          NextUtf8Offset = PreviousUtf8Offset;
          v11 = ~v7 == 0;
          LOWORD(v7) = v7 + 1;
        }

        while (!v11 && PreviousUtf8Offset);
        if (!v7)
        {
          goto LABEL_15;
        }
      }
    }
  }

LABEL_16:

  return cstdlib_strcpy(__dst, "");
}

uint64_t FEData_ObjOpen_NNTN(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  log_OutText(*(*a3 + 32), a3[23], 4, 0, "fe_data : ObjOpen Begin", a6, a7, a8, v27);
  v9 = heap_Calloc(*(*a3 + 8), 1, 24);
  if (v9)
  {
    v16 = v9;
    a3[19] = v9;
    v17 = FEData_functionData_ObjOpen(a3, v9, v10, v11, v12, v13, v14, v15);
    if ((v17 & 0x80000000) != 0 || (v17 = FEData_domainDefs_ObjOpen(a3, v16 + 1, v19, v20, v21, v22, v23, v24), (v17 & 0x80000000) != 0))
    {
      v25 = v17;
    }

    else
    {
      v25 = FEData_blockData_ObjOpen(a3, v16 + 2, v19, v20, v21, v22, v23, v24);
      if ((v25 & 0x80000000) == 0)
      {
LABEL_8:
        log_OutText(*(*a3 + 32), a3[23], 4, 0, "fe_data : ObjOpen End (%x)", v22, v23, v24, v25);
        return v25;
      }
    }

    FEData_ObjClose_NNTN(a3, v18, v19, v20, v21, v22, v23, v24);
    goto LABEL_8;
  }

  log_OutPublic(*(*a3 + 32), a3[23], 24048, 0, v12, v13, v14, v15, v28);

  return NNTNERROR(10);
}

uint64_t FEData_ObjClose_NNTN(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1[19];
  if (v8)
  {
    log_OutText(*(*a1 + 32), a1[23], 4, 0, "fe_data : ObjClose Begin", a6, a7, a8, v39);
    v17 = FEData_functionData_ObjClose(a1, v10, v11, v12, v13, v14, v15, v16);
    LODWORD(v18) = v17 & (v17 >> 31);
    v26 = FEData_blockData_ObjClose_NNTN(a1, v19, v20, v21, v22, v23, v24, v25);
    if (v26 < 0)
    {
      LODWORD(v18) = v26;
    }

    v34 = FEData_domainDefs_ObjClose(a1, v27, v28, v29, v30, v31, v32, v33);
    if (v34 >= 0)
    {
      v18 = v18;
    }

    else
    {
      v18 = v34;
    }

    heap_Free(*(*a1 + 8), v8);
    a1[19] = 0;
    log_OutText(*(*a1 + 32), a1[23], 4, 0, "fe_data : ObjClose End (%x)", v35, v36, v37, v18);
    return v18;
  }

  else
  {

    return NNTNERROR(8);
  }
}

uint64_t FEData_blockData_ObjClose_NNTN(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1[19] + 16);
  v10 = *(*a1 + 32);
  v11 = a1[23];
  if (v9)
  {
    log_OutText(v10, v11, 4, 0, "blockData : ObjClose Begin", a6, a7, a8, v16);
    log_OutText(*(*a1 + 32), a1[23], 4, 0, "blockData : ObjClose End (%x)", v12, v13, v14, 0);
    heap_Free(*(*a1 + 8), v9);
    return 0;
  }

  else
  {
    log_OutPublic(v10, v11, 24049, 0, a5, a6, a7, a8, v16);

    return FEDATA_ERROR(7);
  }
}

uint64_t FEData_blockData_newGetPriorityList_NNTN(void *a1, unsigned int a2, unsigned int a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1[19] + 16);
  if (v8)
  {
    if (*v8 <= a2)
    {
      log_OutPublic(*(*a1 + 32), a1[23], 24041, "%s%d%s%d", a5, a6, a7, a8, "domain");
    }

    else
    {
      v9 = *(*(*(*(v8 + 17) + 8) + 8 * a2) + 16);
      if (*(v9 + 48) > a3)
      {
        *a4 = *(v9 + 40) + 16 * a3;
        return 0;
      }

      log_OutPublic(*(*a1 + 32), a1[23], 24043, "%s%d%s%d", a5, a6, a7, a8, "priorityListIndex");
    }

    v11 = 25;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24049, 0, a5, a6, a7, a8, v12);
    v11 = 7;
  }

  return FEDATA_ERROR(v11);
}

uint64_t FEData_blockData_getTokenAndCheckData_NNTN(void *a1, uint64_t a2, void *a3, _WORD *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1[19] + 16);
  if (v10)
  {
    v11 = *(*(*(*(v10 + 136) + 8) + 8 * *(*a2 + 2)) + 8);
    v12 = *(v11 + 48) + 32 * *(*a2 + 4);
    *a3 = *(v11 + 24) + *(v12 + 4);
    v13 = *(v12 + 24);
    if (a4)
    {
      *a4 = v13;
    }

    if (v13)
    {
      v14 = *(v12 + 8);
    }

    else
    {
      v14 = 0;
    }

    *a5 = v14;
    return 0;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24049, 0, a5, a6, a7, a8, v8);

    return FEDATA_ERROR(7);
  }
}

uint64_t FEData_blockData_getTokenData_NNTN(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1[19] + 16);
  if (v10)
  {
    v11 = *(*(*(*(v10 + 136) + 8) + 8 * *(*a2 + 2)) + 8);
    *a3 = *(v11 + 24) + *(*(v11 + 48) + 32 * *(*a2 + 4) + 4);
    return 0;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24049, 0, a5, a6, a7, a8, v8);

    return FEDATA_ERROR(7);
  }
}

uint64_t FEData_blockData_getTokenAndExpansionData_NNTN(void *a1, uint64_t a2, void *a3, _WORD *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1[19] + 16);
  if (v10)
  {
    v11 = *(*(*(*(v10 + 136) + 8) + 8 * *(*a2 + 2)) + 8);
    v12 = *(v11 + 48) + 32 * *(*a2 + 4);
    *a3 = *(v11 + 24) + *(v12 + 4);
    v13 = *(v12 + 26);
    *a4 = v13;
    if (v13)
    {
      v14 = *(v12 + 16);
    }

    else
    {
      v14 = 0;
    }

    *a5 = v14;
    return 0;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24049, 0, a5, a6, a7, a8, v8);

    return FEDATA_ERROR(7);
  }
}

uint64_t FEData_blockData_getTokenAndExpansionPathDetail(void *a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1[19] + 16);
  if (v10)
  {
    v11 = *(*(*(*(v10 + 136) + 8) + 8 * *(*a2 + 2)) + 8);
    *a3 = *(v11 + 24) + *(*(v11 + 48) + 32 * *(*a2 + 4) + 4);
    *a4 = a2[1];
    *a5 = a2[2];
    return 0;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24049, 0, a5, a6, a7, a8, v8);

    return FEDATA_ERROR(7);
  }
}

uint64_t FEData_blockData_getTokenAndRegexData_NNTN(void *a1, uint64_t a2, void *a3, _WORD *a4, void *a5, _DWORD *a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1[19] + 16);
  if (v10)
  {
    v11 = *(*(*(*(v10 + 136) + 8) + 8 * *(*a2 + 2)) + 8);
    v12 = v11[6] + 32 * *(*a2 + 4);
    v13 = v11[8] + 16 * *(v12 + 6);
    *a4 = *(v13 + 10);
    *a6 = *(v13 + 12);
    *a3 = v11[4] + *(v13 + 4);
    *a5 = v11[3] + *(v12 + 4);
    return 0;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24049, 0, a5, a6, a7, a8, v8);

    return FEDATA_ERROR(7);
  }
}

uint64_t FEData_blockData_loadDataFiles_NNTN(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v104 = *MEMORY[0x277D85DE8];
  v9 = *(a1 + 152);
  v94 = 0;
  memset(v103, 0, sizeof(v103));
  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  *__dst = 0u;
  v96 = 0u;
  v93 = 0;
  __s2 = 0;
  __src = 0;
  v90 = 0;
  v10 = *(v9 + 16);
  if (!v10)
  {
    v11 = *(*a1 + 32);
    v12 = *(a1 + 184);
    v13 = 24049;
    goto LABEL_5;
  }

  if (!*v10)
  {
    v16 = *a1;
    if (*(a1 + 352) > *(a1 + 336))
    {
      log_OutPublic(*(v16 + 32), *(a1 + 184), 24056, "%s%d%s%d", a5, a6, a7, a8, "invalid language identifier index");
      v14 = 0;
      goto LABEL_6;
    }

    if ((paramc_ParamGetStr(*(v16 + 40), "langcode", &v90) & 0x80000000) != 0)
    {
      v90 = "";
    }

    if ((paramc_ParamGetStr(*(*a1 + 40), "fecfg", &__s2) & 0x80000000) == 0)
    {
      cstdlib_strcpy(__dst, "nntokentn/");
      cstdlib_strcat(__dst, *(a3 + 8 * *(a1 + 352)));
      cstdlib_strcat(__dst, "/");
      cstdlib_strcat(__dst, __s2);
      v18 = brokeraux_ComposeBrokerString(*a1, __dst, 1, 1, v90, 0, 0, v103, 0x80uLL);
      if ((v18 & 0x80000000) != 0)
      {
        return FEDATA_ERROR(v18);
      }

      RsrcHandleForThisApi = getRsrcHandleForThisApi(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 32));
      if ((ssftriff_reader_ObjOpen(RsrcHandleForThisApi, v20, 2, v103, "TOKN", 1031, &v94) & 0x80000000) == 0)
      {
LABEL_18:
        Chunk = ssftriff_reader_FindChunk(v94, "CFIG", 0, &v93, &__src);
        v32 = Chunk & 0x1FFF;
        if ((Chunk & 0x80000000) == 0 || v32 == 20)
        {
          if (v32 == 20)
          {
            v33 = 0;
            v34 = 0;
            v35 = 0;
          }

          else
          {
            v89 = 0;
            cstdlib_memcpy(&v89 + 2, __src, 2uLL);
            v34 = HIWORD(v89);
            if (HIWORD(v89))
            {
              if (HIWORD(v89) == 3)
              {
                cstdlib_memcpy(&v89, __src + 2, 2uLL);
                v34 = 0;
                v33 = v89 == 1;
                v35 = 1;
              }

              else
              {
                cstdlib_memcpy(&v89, __src + 2, 2uLL);
                v33 = v89 == 1;
                if (HIWORD(v89) < 2u)
                {
                  v34 = 0;
                  v35 = 0;
                }

                else
                {
                  cstdlib_memcpy(&v89, __src + 4, 2uLL);
                  v35 = 0;
                  v34 = v89 == 1;
                }
              }
            }

            else
            {
              v33 = 0;
              v35 = 0;
            }

            Chunk = ssftriff_reader_CloseChunk(v94);
            if ((Chunk & 0x80000000) != 0)
            {
              goto LABEL_106;
            }
          }

          Chunk = ssftriff_reader_FindChunk(v94, "FILE", 0, &v93, &__src);
          if ((Chunk & 0x80000000) == 0)
          {
            cstdlib_memcpy(v10, __src, 2uLL);
            Chunk = ssftriff_reader_CloseChunk(v94);
            if ((Chunk & 0x80000000) == 0)
            {
              cstdlib_strcpy(v10 + 2, v103);
              DataBlockFromFileRefCnt = readDataBlockFromFileRefCnt(a1, v94, v33, v34, v35, v103);
              if ((DataBlockFromFileRefCnt & 0x80000000) == 0)
              {
                ssftriff_reader_ObjClose(v94, v37, v38, v39, v28, v29, v30, v31);
                v94 = 0;
                v47 = *v10;
                if (*v10)
                {
                  v88 = DataBlockFromFileRefCnt;
                  v48 = 0;
                  v49 = 0;
                  do
                  {
                    v50 = *(*(*(v10 + 17) + 8) + 8 * v48);
                    if (v50)
                    {
                      v51 = *(v50 + 16);
                      if (v51)
                      {
                        v52 = 0;
                        while (v52 < *(v51 + 24))
                        {
                          v53 = (*(v51 + 16) + 72 * v52);
                          if (*(v53 + 16) == 1)
                          {
                            v54 = *(a1 + 288);
                            if (v54)
                            {
                              if (cstdlib_strcmp(v54, (*(v53 + 6) + *v53)))
                              {
                                log_OutPublic(*(*a1 + 32), *(a1 + 184), 24053, "%s%s%s%s", v43, v44, v45, v46, "first assigned");
                                goto LABEL_105;
                              }
                            }

                            else
                            {
                              v55 = *(*a1 + 8);
                              v56 = cstdlib_strlen((*(v53 + 6) + *v53));
                              v57 = heap_Calloc(v55, 1, (v56 + 1));
                              *(a1 + 288) = v57;
                              if (!v57)
                              {
                                log_OutPublic(*(*a1 + 32), *(a1 + 184), 24048, 0, v58, v59, v60, v61, v87);
                                v18 = 10;
                                return FEDATA_ERROR(v18);
                              }

                              cstdlib_strcpy(v57, (*(v53 + 6) + *v53));
                              *(a1 + 296) = v48;
                              *(a1 + 298) = v52;
                            }
                          }

                          if (*(v53 + 2) == 1)
                          {
                            v62 = *(v50 + 16);
                            if (*(v62 + 48))
                            {
                              v63 = 0;
                              while (1)
                              {
                                v64 = *(v62 + 40) + 16 * v63;
                                if (*(v64 + 8))
                                {
                                  v65 = 0;
                                  do
                                  {
                                    if (*v10)
                                    {
                                      v66 = 0;
                                      while (1)
                                      {
                                        v67 = *(*(*(v10 + 17) + 8) + 8 * v66);
                                        if (*v67 != 1 && *v67 != 4)
                                        {
                                          v69 = *(v50 + 16);
                                          if (*(v69 + 50))
                                          {
                                            if (*(v69 + 50) > **(*v64 + 24 * v65) && !cstdlib_strcmp(**(v67 + 8), *(*(v69 + 56) + 8 * **(*v64 + 24 * v65))))
                                            {
                                              break;
                                            }
                                          }
                                        }

                                        if (++v66 >= *v10)
                                        {
                                          goto LABEL_65;
                                        }
                                      }

                                      *(*(*v64 + 24 * v65) + 2) = v66;
                                      v49 = 1;
                                    }

                                    else
                                    {
LABEL_65:
                                      v49 = 0;
                                    }

                                    ++v65;
                                  }

                                  while (v65 < *(v64 + 8));
                                }

                                if (!v49)
                                {
                                  break;
                                }

                                ++v63;
                                v62 = *(v50 + 16);
                                v49 = 1;
                                if (v63 >= *(v62 + 48))
                                {
                                  goto LABEL_69;
                                }
                              }

                              log_OutPublic(*(*a1 + 32), *(a1 + 184), 24045, 0, v43, v44, v45, v46, v87);
                              return v88;
                            }
                          }

LABEL_69:
                          ++v52;
                          v51 = *(v50 + 16);
                          if (!v51)
                          {
                            break;
                          }
                        }
                      }

                      v47 = *v10;
                    }

                    if (v47)
                    {
                      v70 = 0;
                      v71 = *(v10 + 17);
                      do
                      {
                        v72 = *(*(v71 + 8) + 8 * v70);
                        if (v72)
                        {
                          v73 = *(v72 + 24);
                          if (v73)
                          {
                            v74 = 0;
                            do
                            {
                              if (v74 >= *(v73 + 16))
                              {
                                break;
                              }

                              if (v50)
                              {
                                v75 = *(v50 + 16);
                                if (v75)
                                {
                                  v76 = 0;
                                  v77 = *(*(v73 + 8) + 8 * v74);
                                  v78 = -1;
                                  do
                                  {
                                    if (++v78 >= *(v75 + 24))
                                    {
                                      break;
                                    }

                                    if (!cstdlib_strcmp(*v77, (*(*(v75 + 16) + v76 + 48) + *(*(v75 + 16) + v76))))
                                    {
                                      *(v77 + 10) = v48;
                                    }

                                    v76 += 72;
                                    v75 = *(v50 + 16);
                                  }

                                  while (v75);
                                }

                                v71 = *(v10 + 17);
                              }

                              v79 = *(*(v71 + 8) + 8 * v70);
                              if (!v79)
                              {
                                break;
                              }

                              ++v74;
                              v73 = *(v79 + 24);
                            }

                            while (v73);
                          }

                          v47 = *v10;
                        }

                        ++v70;
                      }

                      while (v70 < v47);
                    }

                    ++v48;
                  }

                  while (v48 < v47);
                  DataBlockFromFileRefCnt = v88;
                  if (v47)
                  {
                    for (i = 0; i < v47; ++i)
                    {
                      v81 = *(*(*(v10 + 17) + 8) + 8 * i);
                      if (v81)
                      {
                        v82 = *(v81 + 16);
                        if (v82)
                        {
                          v83 = 0;
                          v84 = -1;
                          do
                          {
                            if (++v84 >= *(v82 + 24))
                            {
                              break;
                            }

                            v85 = *(v82 + 16) + v83;
                            if (*(v85 + 40) && (!*(v85 + 8) || !*(v82 + 48)))
                            {
                              log_OutPublic(*(*a1 + 32), *(a1 + 184), 24062, 0, v43, v44, v45, v46, v87);
                            }

                            v83 += 72;
                            v82 = *(v81 + 16);
                          }

                          while (v82);
                        }

                        v47 = *v10;
                      }
                    }
                  }
                }

                if (!*(a1 + 288))
                {
                  log_OutPublic(*(*a1 + 32), *(a1 + 184), 24054, 0, v43, v44, v45, v46, v87);
LABEL_105:
                  v18 = 0;
                  return FEDATA_ERROR(v18);
                }

LABEL_108:
                if (v94)
                {
                  ssftriff_reader_ObjClose(v94, v40, v41, v42, v43, v44, v45, v46);
                }

                return DataBlockFromFileRefCnt;
              }

LABEL_107:
              log_OutPublic(*(*a1 + 32), *(a1 + 184), 24052, 0, v28, v29, v30, v31, v87);
              goto LABEL_108;
            }
          }
        }

LABEL_106:
        DataBlockFromFileRefCnt = Chunk;
        goto LABEL_107;
      }
    }

    cstdlib_strcpy(__dst, "nntokentn/");
    cstdlib_strcat(__dst, *(a3 + 8 * *(a1 + 352)));
    v18 = brokeraux_ComposeBrokerString(*a1, __dst, 1, 1, v90, 0, 0, v103, 0x80uLL);
    if ((v18 & 0x80000000) == 0)
    {
      v21 = getRsrcHandleForThisApi(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 32));
      if ((ssftriff_reader_ObjOpen(v21, v22, 0, v103, "TOKN", 1031, &v94) & 0x80000000) == 0)
      {
        goto LABEL_18;
      }

      log_OutPublic(*(*a1 + 32), *(a1 + 184), 24057, "%s%s", v23, v24, v25, v26, "Missing broker header file");
      v18 = 3;
    }

    return FEDATA_ERROR(v18);
  }

  v11 = *(*a1 + 32);
  v12 = *(a1 + 184);
  v13 = 24055;
LABEL_5:
  log_OutPublic(v11, v12, v13, 0, a5, a6, a7, a8, v86);
  v14 = 7;
LABEL_6:

  return FEDATA_ERROR(v14);
}