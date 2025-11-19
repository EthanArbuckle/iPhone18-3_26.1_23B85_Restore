uint64_t fe_wmp_ObjClose(uint64_t *a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 62342, 168);
  if ((v3 & 0x80000000) != 0)
  {
    return 2587893768;
  }

  v10 = v3;
  if (a1)
  {
    if (a1[3])
    {
      objc_ReleaseObject(*(*a1 + 48), "LINGDB");
    }

    if (a1[7])
    {
      objc_ReleaseObject(*(*a1 + 48), "FE_DCTLKP");
    }

    v11 = a1[4];
    if (v11)
    {
      igtree_Deinit(*a1, v11, v4, v5, v6, v7, v8, v9);
      heap_Free(*(*a1 + 8), a1[4]);
      a1[4] = 0;
    }

    heap_Free(*(*a1 + 8), a1);
  }

  return v10;
}

uint64_t fe_wmp_ObjReopen(uint64_t a1, int a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = 2587893766;
  memset(v14, 0, sizeof(v14));
  if ((safeh_HandleCheck(a1, a2, 62342, 168) & 0x80000000) != 0)
  {
    v3 = 2587893768;
  }

  else if (a1)
  {
    VoiceBrokerString = fe_wmp_CreateVoiceBrokerString(*a1, v14);
    if ((VoiceBrokerString & 0x80000000) == 0)
    {
      v11 = *(a1 + 32);
      if (v11)
      {
        igtree_Deinit(*a1, v11, v5, v6, v7, v8, v9, v10);
        heap_Free(*(*a1 + 8), *(a1 + 32));
        *(a1 + 32) = 0;
      }

      VoiceBrokerString = fe_wmp_tryLoadingWmpModel(*(a1 + 8), *(a1 + 16), *a1, (a1 + 32));
    }

    v3 = VoiceBrokerString;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t fe_wmp_ProcessStart(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 62342, 168);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2587893768;
  }
}

uint64_t fe_wmp_Process(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v48 = 0;
  v46 = 0;
  v47 = 0;
  *v45 = 0;
  v44 = 0;
  v43 = 0;
  v42 = 0;
  v40 = 0;
  __s1 = 0;
  *(a1 + 160) = 0;
  *a5 = 1;
  log_OutText(*(*a1 + 32), "FE_WMP", 5, 0, "[FE_WORD_MAP]: Entering", a6, a7, a8, v38);
  if (((*(*(a1 + 56) + 256))(*(a1 + 64), *(a1 + 72), "fewmp_act_wmp", "no", &__s1) & 0x80000000) != 0)
  {
    goto LABEL_3;
  }

  v11 = strcmp(__s1, "yes");
  *(a1 + 160) = v11 == 0;
  if (v11 || ((*(*(a1 + 56) + 256))(*(a1 + 64), *(a1 + 72), "fewmp_late_wmp", "no", &__s1) & 0x80000000) != 0)
  {
    goto LABEL_3;
  }

  *(a1 + 164) = strcmp(__s1, "yes") == 0;
  Str = paramc_ParamGetStr(*(*a1 + 40), "langcode", &v40);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  v29 = (*(*(a1 + 24) + 104))(a3, a4, 1, 0, &v47 + 2);
  if ((v29 & 0x80000000) != 0)
  {
    goto LABEL_3;
  }

  v26 = v29;
  if (((*(*(a1 + 24) + 184))(a3, a4, HIWORD(v47), 0, &v44) & 0x80000000) != 0)
  {
    return v26;
  }

  if (v44 != 1)
  {
    return v26;
  }

  v26 = (*(*(a1 + 24) + 176))(a3, a4, HIWORD(v47), 0, &v48, &v46 + 2);
  if ((v26 & 0x80000000) != 0)
  {
    return v26;
  }

  if (HIWORD(v46) < 2u)
  {
    return v26;
  }

  v30 = strlen(v48);
  if (!v30)
  {
    return v26;
  }

  v31 = heap_Alloc(*(*a1 + 8), v30 + 1);
  *(a1 + 40) = v31;
  if (!v31)
  {
    log_OutPublic(*(*a1 + 32), "FE_WMP", 37000, 0, v32, v33, v34, v35, v39);
    return 2587893770;
  }

  strcpy(v31, v48);
  if (((*(*(a1 + 24) + 176))(a3, a4, HIWORD(v47), 1, v45, &v44 + 2) & 0x80000000) != 0)
  {
    goto LABEL_3;
  }

  v36 = *a1;
  *(a1 + 80) = *a1;
  if ((fe_wmp_getSent(a1, v36, a3, a4, HIWORD(v47), *(a1 + 40), *v45, HIWORD(v44), a1 + 88, v40, &v43) & 0x80000000) != 0 || (fe_wmp_mapEachWord(a1, &v42) & 0x80000000) != 0 || !v42)
  {
    goto LABEL_3;
  }

  if (*(a1 + 164) != 1)
  {
    if (((*(*(a1 + 24) + 104))(a3, a4, 3, HIWORD(v47), &v47) & 0x80000000) != 0 || (fe_wmp_userTNBoundaryAdjust(a1, a3, a4, v43, v47, SHIWORD(v46), v46) & 0x80000000) != 0)
    {
      goto LABEL_3;
    }

    fe_wmp_AdjustMarkers(a1, *v45, HIWORD(v44), v40);
    goto LABEL_58;
  }

  v12 = v43;
  if ((fe_wmp_userTNBoundaryAdjustLateWMP(a1, a3, a4, v43, HIWORD(v47)) & 0x80000000) != 0)
  {
    goto LABEL_4;
  }

  if ((fe_wmp_adjustWordRecords(a1, a3, a4) & 0x80000000) == 0)
  {
    fe_wmp_AdjustMarkersLateWMP(a1, *v45, HIWORD(v44), v40);
LABEL_58:
    v37 = strlen(*(a1 + 40));
    (*(*(a1 + 24) + 160))(a3, a4, HIWORD(v47), 0, (v37 + 1), *(a1 + 40), &v46);
  }

LABEL_3:
  v12 = v43;
LABEL_4:
  if (v12)
  {
    heap_Free(*(*a1 + 8), v12);
  }

  v13 = *(a1 + 96);
  if (v13)
  {
    heap_Free(*(*a1 + 8), v13);
    *(a1 + 96) = 0;
  }

  v14 = *(a1 + 88);
  if (v14)
  {
    heap_Free(*(*a1 + 8), v14);
    *(a1 + 88) = 0;
  }

  v15 = *(a1 + 104);
  if (v15)
  {
    v16 = *(a1 + 136);
    if (*(a1 + 136))
    {
      v17 = 0;
      do
      {
        v18 = *(*(a1 + 104) + 8 * v17);
        if (v18)
        {
          heap_Free(*(*a1 + 8), v18);
          *(*(a1 + 104) + 8 * v17) = 0;
          v16 = *(a1 + 136);
        }

        ++v17;
      }

      while (v17 < v16);
      v15 = *(a1 + 104);
    }

    heap_Free(*(*a1 + 8), v15);
    *(a1 + 104) = 0;
  }

  v19 = *(a1 + 112);
  if (v19)
  {
    heap_Free(*(*a1 + 8), v19);
    *(a1 + 112) = 0;
  }

  v20 = *(a1 + 120);
  if (v20)
  {
    heap_Free(*(*a1 + 8), v20);
    *(a1 + 120) = 0;
  }

  v21 = *(a1 + 128);
  if (v21)
  {
    heap_Free(*(*a1 + 8), v21);
    *(a1 + 128) = 0;
  }

  v22 = *(a1 + 144);
  if (v22)
  {
    heap_Free(*(*a1 + 8), v22);
    *(a1 + 144) = 0;
  }

  v23 = *(a1 + 40);
  if (v23)
  {
    heap_Free(*(*a1 + 8), v23);
    *(a1 + 40) = 0;
  }

  v24 = *(a1 + 152);
  if (!v24)
  {
    return 0;
  }

  if (*(a1 + 136))
  {
    v25 = 0;
    do
    {
      heap_Free(*(*a1 + 8), *(*(a1 + 152) + 8 * v25));
      *(*(a1 + 152) + 8 * v25++) = 0;
    }

    while (v25 < *(a1 + 136));
    v24 = *(a1 + 152);
  }

  heap_Free(*(*a1 + 8), v24);
  v26 = 0;
  *(a1 + 152) = 0;
  return v26;
}

uint64_t fe_wmp_ProcessEnd(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 62342, 168);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2587893768;
  }
}

uint64_t fe_wmp_CreateVoiceBrokerString(uint64_t a1, char *a2)
{
  *v5 = 0;
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", v5);
  if ((result & 0x80000000) == 0)
  {
    return brokeraux_ComposeBrokerString(a1, "wordmap", 1, 1, *v5, 0, 0, a2, 0x100uLL);
  }

  return result;
}

uint64_t fe_wmp_tryLoadingWmpModel(_WORD *a1, uint64_t a2, uint64_t a3, char **a4)
{
  v32 = *MEMORY[0x1E69E9840];
  memset(v30, 0, 240);
  *v27 = 0;
  v28 = 0;
  *a4 = 0;
  *v29 = 0;
  memset(v31, 0, 128);
  v30[15] = 0u;
  Str = paramc_ParamGetStr(*(a3 + 40), "langcode", v29);
  if ((Str & 0x80000000) != 0 || (Str = paramc_ParamGetStr(*(a3 + 40), "fecfg", &v28), (Str & 0x80000000) != 0) || (__strcat_chk(), Str = brokeraux_ComposeBrokerString(a3, v31, 1, 1, *v29, 0, 0, v30, 0x100uLL), (Str & 0x80000000) != 0) || (Str = ssftriff_reader_ObjOpen(a1, a2, 2, v30, "IGTR", 1031, v27), (Str & 0x80000000) != 0))
  {
    v21 = Str;
  }

  else
  {
    v16 = heap_Calloc(*(a3 + 8), 1, 1600);
    *a4 = v16;
    if (v16)
    {
      v21 = igtree_Init(a1, a2, *v27, v16);
      ssftriff_reader_CloseChunk(*v27);
      if ((v21 & 0x80001FFF) == 0x14)
      {
        ssftriff_reader_CloseChunk(*v27);
        v21 = 0;
      }
    }

    else
    {
      log_OutPublic(*(a3 + 32), "FE_WMP", 37000, 0, v17, v18, v19, v20, v26);
      v21 = 2587893770;
    }
  }

  if (*v27)
  {
    v22 = ssftriff_reader_ObjClose(*v27, v9, v10, v11, v12, v13, v14, v15);
    if (v22 >= 0 || v21 <= -1)
    {
      v21 = v21;
    }

    else
    {
      v21 = v22;
    }
  }

  v24 = *MEMORY[0x1E69E9840];
  return v21;
}

uint64_t fe_wmp_getSent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *__s, uint64_t a7, unsigned int a8, uint64_t a9, const char *a10, uint64_t *a11)
{
  v62 = 0;
  v63 = 0;
  *a9 = 0;
  v18 = *(a2 + 8);
  v19 = strlen(__s);
  v20 = heap_Alloc(v18, v19 + 1);
  *(a9 + 8) = v20;
  if (!v20)
  {
    return 2587893770;
  }

  v65 = 0;
  v64 = 0;
  v61 = 0;
  strcpy(v20, __s);
  if (*(a1 + 164) == 1)
  {
    v70 = 0;
    v69 = 0;
    v68 = 0;
    v67 = 0;
    v66 = 0;
    v21 = (*(*(a1 + 24) + 104))(a3, a4, 2, a5, &v66);
    if ((v21 & 0x80000000) != 0)
    {
      return v21;
    }

    v56 = __s;
    v59 = a2;
    v22 = v66;
    if (v66)
    {
      v23 = 0;
      LOWORD(v24) = 0;
      v25 = 1;
      while (1)
      {
        v21 = (*(*(a1 + 24) + 168))(a3, a4, v22, 0, 1, &v70, &v69);
        if ((v21 & 0x80000000) != 0)
        {
          return v21;
        }

        if (v70 <= 0x11 && ((1 << v70) & 0x20210) != 0)
        {
          v21 = (*(*(a1 + 24) + 168))(a3, a4, v66, 1, 1, &v68, &v69);
          if ((v21 & 0x80000000) != 0)
          {
            return v21;
          }

          v21 = (*(*(a1 + 24) + 168))(a3, a4, v66, 2, 1, &v67, &v69);
          if ((v21 & 0x80000000) != 0)
          {
            return v21;
          }

          if (v25 == 1 || v23 != v68)
          {
            LOWORD(v24) = v24 + 1;
          }

          v23 = v68;
          v25 = 0;
        }

        v21 = (*(*(a1 + 24) + 120))(a3, a4, v66, &v66);
        if ((v21 & 0x80000000) != 0)
        {
          return v21;
        }

        v22 = v66;
        if (!v66)
        {
          goto LABEL_39;
        }
      }
    }

    LOWORD(v24) = 0;
LABEL_39:
    v58 = a7;
    v57 = a5;
  }

  else
  {
    if (!a8)
    {
      return 2587893767;
    }

    v56 = __s;
    v58 = a7;
    v59 = a2;
    v57 = a5;
    v24 = 0;
    v28 = a8;
    v29 = 1;
    do
    {
      if (*a7 == 36)
      {
        v30 = *(a7 + 24);
        v29 = !strcmp(v30, "normal") || !strcmp(v30, a10);
      }

      else
      {
        if (*a7 == 1)
        {
          v31 = v24 + 1;
        }

        else
        {
          v31 = v24;
        }

        if (v29)
        {
          v24 = v31;
        }

        v29 = v29;
      }

      a7 += 32;
      --v28;
    }

    while (v28);
  }

  v32 = 2587893767;
  if (!v24)
  {
    return v32;
  }

  *(a9 + 48) = v24;
  v33 = heap_Calloc(*(v59 + 8), v24, 4);
  *a11 = v33;
  if (!v33)
  {
    return v32;
  }

  if (!*(a1 + 164))
  {
    if (!a8)
    {
      goto LABEL_71;
    }

    v38 = v33;
    v39 = 0;
    v40 = a8;
    v41 = v58 + 12;
    v42 = 1;
    while (1)
    {
      v43 = *(v41 - 12);
      if (v43 == 36)
      {
        v44 = *(v41 + 12);
        if (strcmp(v44, "normal") && strcmp(v44, a10))
        {
LABEL_69:
          v42 = 0;
          goto LABEL_70;
        }
      }

      else
      {
        if (v42 != 1)
        {
          goto LABEL_69;
        }

        if (v43 == 1)
        {
          *(v38 + 4 * v39++) = *v41;
        }
      }

      v42 = 1;
LABEL_70:
      v41 += 32;
      if (!--v40)
      {
        goto LABEL_71;
      }
    }
  }

  v21 = (*(*(a1 + 24) + 104))(a3, a4, 2, v57, &v61);
  if ((v21 & 0x80000000) != 0)
  {
    return v21;
  }

  v34 = 0;
  v35 = 0;
  v36 = 1;
  while (v61)
  {
    v21 = (*(*(a1 + 24) + 168))(a3, a4);
    if ((v21 & 0x80000000) != 0)
    {
      return v21;
    }

    if (v65 <= 0x11 && ((1 << v65) & 0x20210) != 0)
    {
      v21 = (*(*(a1 + 24) + 168))(a3, a4, v61, 1, 1, &v63, &v64);
      if ((v21 & 0x80000000) != 0)
      {
        return v21;
      }

      v21 = (*(*(a1 + 24) + 168))(a3, a4, v61, 2, 1, &v62, &v64);
      if ((v21 & 0x80000000) != 0)
      {
        return v21;
      }

      if (v36 == 1 || v35 != v63)
      {
        v36 = 0;
        *(*a11 + 4 * v34++) = *(v58 + 12) + v63;
        v35 = v63;
      }

      else
      {
        v36 = 0;
      }
    }

    v32 = (*(*(a1 + 24) + 120))(a3, a4, v61, &v61);
    if ((v32 & 0x80000000) != 0)
    {
      return v32;
    }
  }

LABEL_71:
  v45 = heap_Calloc(*(v59 + 8), v24, 8);
  *a9 = v45;
  if (!v45)
  {
    return 2587893770;
  }

  v46 = heap_Calloc(*(v59 + 8), v24, 8);
  *(a9 + 64) = v46;
  if (!v46)
  {
    return 2587893770;
  }

  v47 = heap_Calloc(*(v59 + 8), v24, 8);
  *(a9 + 16) = v47;
  if (!v47)
  {
    return 2587893770;
  }

  v48 = 0;
  do
  {
    *(*(a9 + 16) + 8 * v48++) = 0;
  }

  while (v24 != v48);
  v49 = heap_Calloc(*(v59 + 8), v24, 2);
  *(a9 + 32) = v49;
  if (!v49)
  {
    return 2587893770;
  }

  v50 = heap_Calloc(*(v59 + 8), v24, 2);
  *(a9 + 40) = v50;
  v32 = 2587893770;
  if (v50)
  {
    v51 = 0;
    do
    {
      v52 = *(*a11 + 4 * v51) - *(v58 + 12);
      *(*(a9 + 32) + 2 * v51) = v52;
      *(*a9 + 8 * v51) = *(a9 + 8) + v52;
      if (v51 + 1 >= v24)
      {
        *(*(a9 + 40) + 2 * v51) = strlen(v56);
      }

      else
      {
        v53 = *(*a11 + 4 * (v51 + 1));
        v54 = *(*a11 + 4 * v51);
        *(*(a9 + 40) + 2 * v51) = *(*(a9 + 32) + 2 * v51) + v53 + ~v54;
        *(~v54 + *(*a9 + 8 * v51) + v53) = 0;
      }

      ++v51;
    }

    while (v24 != v51);
    return fe_wmp_getPos(a1, a3, a4, a9, v57, v59);
  }

  return v32;
}

uint64_t fe_wmp_mapEachWord(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 80);
  v5 = *(a1 + 136);
  __s1 = 0;
  v6 = 2 * strlen(*(a1 + 40));
  if (v6 <= 8 * v5)
  {
    v6 = 9 * v5;
  }

  v7 = heap_Calloc(*(v4 + 8), 1, v6 + 1);
  if (v7)
  {
    v12 = v7;
    *v7 = 0;
    v13 = *(a1 + 32);
    if (v13)
    {
      v14 = 2587893770;
      v62 = heap_Alloc(*(v4 + 8), 8 * *(v13 + 1296) - 8);
      if (v62)
      {
        v60 = a2;
        if (*(v13 + 1296) != 1)
        {
          v15 = (*(v13 + 1296) - 1);
          v16 = v62;
          do
          {
            v17 = heap_Calloc(*(v4 + 8), 1, 65);
            *v16 = v17;
            if (!v17)
            {
              goto LABEL_99;
            }

            *v17 = 61;
            ++v16;
          }

          while (--v15);
        }

        v22 = heap_Calloc(*(v4 + 8), v5, 2);
        *(a1 + 112) = v22;
        if (v22)
        {
          *(a1 + 144) = heap_Calloc(*(v4 + 8), v5, 2);
          __s = v12;
          if (*(a1 + 136))
          {
            v23 = 0;
            LODWORD(v24) = 0;
            while (1)
            {
              v25 = *(v13 + 1312);
              v26 = *(v13 + 1296);
              v27 = heap_Calloc(*(v4 + 8), 1, 2048);
              if (!v27)
              {
                goto LABEL_99;
              }

              v28 = v27;
              v61 = v24;
              if (v26 <= 1)
              {
                heap_Free(*(v4 + 8), v27);
                v14 = 0;
              }

              else
              {
                v29 = 0;
                while (strcmp(*(v25 + v29), "word"))
                {
                  v29 += 8;
                  if (8 * (v26 - 1) == v29)
                  {
                    v14 = 0;
                    goto LABEL_23;
                  }
                }

                v30 = "=";
                if (v23 < *(a1 + 136))
                {
                  v30 = *(*(a1 + 88) + 8 * v23);
                }

                v14 = fe_wmp_setFeature(v4, v25, v26, 2, v62, v30);
                if ((v14 & 0x80000000) != 0)
                {
LABEL_103:
                  heap_Free(*(v4 + 8), v28);
                  v12 = __s;
                  goto LABEL_100;
                }

LABEL_23:
                v31 = 0;
                if (v26 - 1 <= 1)
                {
                  v32 = 1;
                }

                else
                {
                  v32 = v26 - 1;
                }

                v33 = 8 * v32;
                while (strcmp(*(v25 + v31), "pos"))
                {
                  v31 += 8;
                  if (v33 == v31)
                  {
                    goto LABEL_33;
                  }
                }

                v34 = "=";
                if (v23 < *(a1 + 136))
                {
                  v34 = *(*(a1 + 152) + 8 * v23);
                }

                v14 = fe_wmp_setFeature(v4, v25, v26, 5, v62, v34);
                if ((v14 & 0x80000000) != 0)
                {
                  goto LABEL_103;
                }

LABEL_33:
                v35 = 0;
                while (strcmp(*(v25 + v35), "lpos"))
                {
                  v35 += 8;
                  if (v33 == v35)
                  {
                    goto LABEL_42;
                  }
                }

                if (v23 && v23 - 1 < *(a1 + 136))
                {
                  v36 = *(*(a1 + 152) + 8 * (v23 - 1));
                }

                else
                {
                  v36 = "=";
                }

                v14 = fe_wmp_setFeature(v4, v25, v26, 6, v62, v36);
                if ((v14 & 0x80000000) != 0)
                {
                  goto LABEL_103;
                }

LABEL_42:
                v37 = 0;
                while (strcmp(*(v25 + v37), "rpos"))
                {
                  v37 += 8;
                  if (v33 == v37)
                  {
                    goto LABEL_49;
                  }
                }

                v38 = "=";
                if (v23 + 1 < *(a1 + 136))
                {
                  v38 = *(*(a1 + 152) + 8 * (v23 + 1));
                }

                v14 = fe_wmp_setFeature(v4, v25, v26, 7, v62, v38);
                if ((v14 & 0x80000000) != 0)
                {
                  goto LABEL_103;
                }

LABEL_49:
                v39 = 0;
                while (strcmp(*(v25 + v39), "lword"))
                {
                  v39 += 8;
                  if (v33 == v39)
                  {
                    goto LABEL_58;
                  }
                }

                if (v23 && v23 - 1 < *(a1 + 136))
                {
                  v40 = *(*(a1 + 88) + 8 * (v23 - 1));
                }

                else
                {
                  v40 = "=";
                }

                v14 = fe_wmp_setFeature(v4, v25, v26, 1, v62, v40);
                if ((v14 & 0x80000000) != 0)
                {
                  goto LABEL_103;
                }

LABEL_58:
                v41 = 0;
                while (strcmp(*(v25 + v41), "llword"))
                {
                  v41 += 8;
                  if (v33 == v41)
                  {
                    goto LABEL_67;
                  }
                }

                if (v23 < 2 || v23 - 2 >= *(a1 + 136))
                {
                  v42 = "=";
                }

                else
                {
                  v42 = *(*(a1 + 88) + 8 * (v23 - 2));
                }

                v14 = fe_wmp_setFeature(v4, v25, v26, 0, v62, v42);
                if ((v14 & 0x80000000) != 0)
                {
                  goto LABEL_103;
                }

LABEL_67:
                v43 = 0;
                while (strcmp(*(v25 + v43), "rword"))
                {
                  v43 += 8;
                  if (v33 == v43)
                  {
                    goto LABEL_74;
                  }
                }

                v44 = "=";
                if (v23 + 1 < *(a1 + 136))
                {
                  v44 = *(*(a1 + 88) + 8 * (v23 + 1));
                }

                v14 = fe_wmp_setFeature(v4, v25, v26, 3, v62, v44);
                if ((v14 & 0x80000000) != 0)
                {
                  goto LABEL_103;
                }

LABEL_74:
                v45 = 0;
                while (strcmp(*(v25 + v45), "rrword"))
                {
                  v45 += 8;
                  if (v33 == v45)
                  {
                    v12 = __s;
                    LODWORD(v24) = v61;
                    goto LABEL_81;
                  }
                }

                v46 = "=";
                LODWORD(v24) = v61;
                if (v23 + 2 < *(a1 + 136))
                {
                  v46 = *(*(a1 + 88) + 8 * (v23 + 2));
                }

                v14 = fe_wmp_setFeature(v4, v25, v26, 4, v62, v46);
                v12 = __s;
LABEL_81:
                heap_Free(*(v4 + 8), v28);
                if ((v14 & 0x80000000) != 0)
                {
                  goto LABEL_100;
                }
              }

              igtree_Process(v13, v62, &__s1);
              v47 = *(*(a1 + 120) + 2 * v23);
              if (v24 < v47)
              {
                strncat(v12, (*(a1 + 40) + v24), v47 - v24);
              }

              v48 = __s1;
              if (!strcmp(__s1, "NOMATCH"))
              {
                strcat(v12, *(*(a1 + 88) + 8 * v23));
              }

              else
              {
                strcat(v12, v48);
                v49 = __s1;
                v50 = strlen(__s1);
                *(*(a1 + 112) + 2 * v23) = v50 - strlen(*(*(a1 + 88) + 8 * v23));
                *(*(a1 + 144) + 2 * v23) = 1;
                v51 = strlen(v49);
                *(*(a1 + 104) + 8 * v23) = heap_Calloc(*(v4 + 8), 1, v51 + 1);
                strcpy(*(*(a1 + 104) + 8 * v23), __s1);
                *v60 = 1;
              }

              v24 = *(*(a1 + 128) + 2 * v23++);
              if (v23 >= *(a1 + 136))
              {
                goto LABEL_92;
              }
            }
          }

          v24 = 0;
          v14 = 0;
LABEL_92:
          if (strlen(*(a1 + 40)) > v24)
          {
            strcat(v12, (*(a1 + 40) + v24));
          }

          if (*(v13 + 1296) != 1)
          {
            v52 = (*(v13 + 1296) - 1);
            v53 = v62;
            do
            {
              v54 = *v53++;
              heap_Free(*(v4 + 8), v54);
              --v52;
            }

            while (v52);
          }

          v12 = __s;
          v55 = strlen(__s);
          v56 = heap_Realloc(*(v4 + 8), *(a1 + 40), v55 + 1);
          *(a1 + 40) = v56;
          if (!v56)
          {
LABEL_99:
            log_OutPublic(*(v4 + 32), "FE_WMP", 37000, 0, v18, v19, v20, v21, v58);
            v14 = 2587893770;
            goto LABEL_100;
          }

          strcpy(v56, __s);
        }

LABEL_100:
        heap_Free(*(v4 + 8), v62);
      }
    }

    else
    {
      log_OutText(*(v4 + 32), "FE_WMP", 0, 0, "IGTree model for wordmap does not exist", v9, v10, v11, v58);
      v14 = 0;
    }

    heap_Free(*(v4 + 8), v12);
    return v14;
  }

  v14 = 2587893770;
  log_OutPublic(*(v4 + 32), "FE_WMP", 37000, 0, v8, v9, v10, v11, v58);
  return v14;
}

uint64_t fe_wmp_userTNBoundaryAdjustLateWMP(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, uint64_t a5)
{
  v20 = 0;
  v18 = 0;
  v19 = 0;
  v17 = 0;
  result = (*(*(a1 + 24) + 104))(a2, a3, 2, a5, &v17);
  if ((result & 0x80000000) == 0)
  {
    while (v17)
    {
      result = (*(*(a1 + 24) + 168))(a2, a3, v17, 0, 1, &v20 + 4, &v18 + 2);
      if ((result & 0x80000000) != 0)
      {
        break;
      }

      v10 = v17;
      if ((HIDWORD(v20) - 5) > 1)
      {
        goto LABEL_24;
      }

      result = (*(*(a1 + 24) + 168))(a2, a3, v17, 1, 1, &v20, &v18 + 2);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = (*(*(a1 + 24) + 168))(a2, a3, v17, 2, 1, &v19, &v18 + 2);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      if (v19)
      {
        if (*(a1 + 136))
        {
          v11 = 0;
          v12 = 0;
          v13 = 0;
          do
          {
            v14 = a4[v11];
            if (v14 >= *a4 + v19)
            {
              break;
            }

            v13 += *(*(a1 + 112) + 2 * v11);
            v15 = v14 >= v20 + *a4 ? 0 : *(*(a1 + 112) + 2 * v11);
            v12 += v15;
            ++v11;
          }

          while (*(a1 + 136) != v11);
        }

        else
        {
          v13 = 0;
          v12 = 0;
        }

        v19 += v13;
        LODWORD(v20) = v12 + v20;
      }

      result = (*(*(a1 + 24) + 160))(a2, a3, v17, 1, 1, &v20, &v18);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = (*(*(a1 + 24) + 160))(a2, a3, v17, 2, 1, &v19, &v18);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v10 = v17;
      if (HIDWORD(v20) == 5)
      {
        if (v20 == v19)
        {
          v16 = v17;
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
LABEL_24:
        v16 = 0;
      }

      result = (*(*(a1 + 24) + 120))(a2, a3, v10, &v17);
      if ((result & 0x80000000) == 0)
      {
        if (!v16)
        {
          continue;
        }

        result = (*(*(a1 + 24) + 192))(a2, a3, v16);
        if ((result & 0x80000000) == 0)
        {
          continue;
        }
      }

      return result;
    }
  }

  return result;
}

uint64_t fe_wmp_adjustWordRecords(void *a1, uint64_t a2, uint64_t a3)
{
  v35 = 0;
  v34 = 0;
  v33 = 0;
  v31 = 0;
  v32 = 0;
  memset(__c, 0, sizeof(__c));
  v29 = 0;
  v27 = 0;
  __s = 0;
  v26 = 0;
  v24 = 0;
  v25 = 0;
  v23 = 0;
  v22 = 0;
  v21 = 0;
  result = (*(a1[3] + 104))(a2, a3, 1, 0, &v29);
  if ((result & 0x80000000) == 0)
  {
    result = (*(a1[3] + 104))(a2, a3, 2, v29, &v35 + 2);
    if ((result & 0x80000000) == 0)
    {
      v7 = HIWORD(v35);
      if (HIWORD(v35))
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = 1;
        do
        {
          result = (*(a1[3] + 168))(a2, a3, v7, 0, 1, &v32, &v35);
          if ((result & 0x80000000) != 0)
          {
            break;
          }

          if (v32 == 9 || v32 == 4)
          {
            result = (*(a1[3] + 168))(a2, a3, HIWORD(v35), 1, 1, &v34, &v35);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            result = (*(a1[3] + 168))(a2, a3, HIWORD(v35), 2, 1, &v33, &v35);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            if (v34)
            {
              v13 = 0;
            }

            else
            {
              v13 = v11;
            }

            if (v34 > v10)
            {
              v11 = 1;
            }

            else
            {
              v11 = v13;
            }

            if (v34 > v10)
            {
              ++v9;
            }

            if (*(a1[18] + 2 * v9) == 1 && v11 == 1)
            {
              __s = 0;
              *&__c[1] = 0;
              LOWORD(v31) = 0;
              result = (*(a1[3] + 176))(a2, a3, HIWORD(v35), 3, &__s, &v35);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              result = (*(a1[7] + 232))(a1[8], a1[9], "wmp_dct", *(a1[13] + 8 * v9), &__c[1], &v31, __c, 0);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              if (v31)
              {
                __s = **&__c[1];
                v15 = strchr(__s, __c[0]);
                if (v15)
                {
                  *v15 = 0;
                }
              }

              result = (*(a1[3] + 176))(a2, a3, HIWORD(v35), 5, &v27, &v35);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              result = (*(a1[3] + 168))(a2, a3, HIWORD(v35), 7, 1, &v26, &v35);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              result = (*(a1[3] + 176))(a2, a3, HIWORD(v35), 6, &v25, &v35);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              result = (*(a1[3] + 176))(a2, a3, HIWORD(v35), 9, &v24, &v35);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              result = (*(a1[3] + 176))(a2, a3, HIWORD(v35), 14, &v23, &v35);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              v16 = a1[14];
              LOWORD(v22) = *(a1[15] + 2 * v9) + v8;
              v21 = *(a1[16] + 2 * v9) + v8 + *(v16 + 2 * v9);
              result = (*(a1[3] + 160))(a2, a3, HIWORD(v35), 1, 1, &v22, &v22 + 2);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              result = (*(a1[3] + 160))(a2, a3, HIWORD(v35), 2, 1, &v21, &v22 + 2);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              v17 = strlen(__s);
              result = (*(a1[3] + 160))(a2, a3, HIWORD(v35), 3, (v17 + 1), __s, &v22 + 2);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              v18 = *(a1[14] + 2 * v9);
              result = (*(a1[3] + 120))(a2, a3, HIWORD(v35), &v35 + 2);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              v8 += v18;
              if (HIWORD(v35))
              {
                result = (*(a1[3] + 168))(a2, a3);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                result = (*(a1[3] + 168))(a2, a3, HIWORD(v35), 1, 1, &v31 + 2, &v35);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                if (HIWORD(v31) == v34)
                {
                  v19 = HIWORD(v35);
                  if (HIWORD(v35))
                  {
                    while (v32 == 9 || v32 == 4)
                    {
                      result = (*(a1[3] + 120))(a2, a3, v19, &v35 + 2);
                      if ((result & 0x80000000) != 0)
                      {
                        return result;
                      }

                      result = (*(a1[3] + 168))(a2, a3, HIWORD(v35), 0, 1, &v32, &v35);
                      if ((result & 0x80000000) != 0)
                      {
                        return result;
                      }

                      result = (*(a1[3] + 168))(a2, a3, HIWORD(v35), 1, 1, &v31 + 2, &v35);
                      if ((result & 0x80000000) != 0)
                      {
                        return result;
                      }

                      result = (*(a1[3] + 192))(a2, a3, v19);
                      if ((result & 0x80000000) != 0)
                      {
                        return result;
                      }

                      if (HIWORD(v31) == v34)
                      {
                        v19 = HIWORD(v35);
                        if (HIWORD(v35))
                        {
                          continue;
                        }
                      }

                      break;
                    }
                  }
                }
              }
            }

            else
            {
              result = (*(a1[3] + 168))(a2, a3, HIWORD(v35), 1, 1, &v34, &v35);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              result = (*(a1[3] + 168))(a2, a3, HIWORD(v35), 2, 1, &v33, &v35);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              LOWORD(v22) = v34 + v8;
              v21 = v33 + v8;
              result = (*(a1[3] + 160))(a2, a3, HIWORD(v35), 1, 1, &v22, &v22 + 2);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              result = (*(a1[3] + 160))(a2, a3, HIWORD(v35), 2, 1, &v21, &v22 + 2);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              result = (*(a1[3] + 120))(a2, a3, HIWORD(v35), &v35 + 2);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }
            }

            v10 = v34;
          }

          else
          {
            result = (*(a1[3] + 120))(a2, a3, HIWORD(v35), &v35 + 2);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }
          }

          v7 = HIWORD(v35);
        }

        while (HIWORD(v35));
      }
    }
  }

  return result;
}

uint64_t fe_wmp_AdjustMarkersLateWMP(uint64_t result, uint64_t a2, unsigned int a3, const char *a4)
{
  v25 = result;
  v5 = *(result + 136);
  if (*(result + 136))
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 1;
    v24 = *(result + 136);
    do
    {
      if (v8 + 1 >= v5)
      {
        v12 = (v25[16] + 2 * v5 - 2);
      }

      else
      {
        v12 = (v25[15] + 2 * (v8 + 1));
      }

      v13 = *v12;
      v14 = (a2 + 32 * v9);
      for (i = v14[3]; i < v13; i = v14[3])
      {
        v16 = *v14;
        v14[1] += v10;
        v17 = i + v10;
        v14[3] = v17;
        if (v16 == 36)
        {
          v18 = *(v14 + 3);
          result = strcmp(v18, "normal");
          v11 = 1;
          if (result)
          {
            result = strcmp(v18, a4);
            if (result)
            {
              v11 = 0;
            }
          }
        }

        else if (v17 != v13 - 1 && v16 == 1)
        {
          if (v11)
          {
            v19 = *(v25[14] + 2 * v8);
          }

          else
          {
            v19 = 0;
          }

          v14[2] += v19;
          v20 = v9 + 1;
          if (v20 < a3)
          {
            v21 = (a2 + 32 * v20);
            if (*v21 == 37)
            {
              v22 = v21[3];
              v23 = v21[4] + v19;
              v21[1] += v10;
              v21[3] = v22 + v10;
              v21[4] = v23;
              ++v9;
            }
          }

          v10 += v19;
        }

        v14 = (a2 + 32 * ++v9);
      }

      ++v8;
      v5 = v24;
    }

    while (v8 != v24);
  }

  else
  {
    v10 = 0;
  }

  *(a2 + 8) += v10;
  *(a2 + 16) += v10;
  return result;
}

uint64_t fe_wmp_userTNBoundaryAdjust(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, int a5, __int16 a6, __int16 a7)
{
  v24 = a5;
  v23 = a6;
  v22 = a7;
  v19 = 0;
  v20 = 0;
  if (!a5)
  {
    return 0;
  }

  v21 = 0;
  while (1)
  {
    result = (*(*(a1 + 24) + 168))(a2, a3, a5, 0, 1, &v21, &v23);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    v12 = v24;
    if ((v21 - 4) > 2)
    {
      goto LABEL_24;
    }

    result = (*(*(a1 + 24) + 168))(a2, a3, v24, 1, 1, &v20, &v23);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    result = (*(*(a1 + 24) + 168))(a2, a3, v24, 2, 1, &v19, &v23);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    if (v19)
    {
      if (*(a1 + 136))
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        do
        {
          v16 = a4[v13];
          if (v16 >= *a4 + v19)
          {
            break;
          }

          v15 += *(*(a1 + 112) + 2 * v13);
          v17 = v16 >= v20 + *a4 ? 0 : *(*(a1 + 112) + 2 * v13);
          v14 += v17;
          ++v13;
        }

        while (*(a1 + 136) != v13);
      }

      else
      {
        v15 = 0;
        v14 = 0;
      }

      v19 += v15;
      v20 += v14;
    }

    result = (*(*(a1 + 24) + 160))(a2, a3, v24, 1, 1, &v20, &v22);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    result = (*(*(a1 + 24) + 160))(a2, a3, v24, 2, 1, &v19, &v22);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    v12 = v24;
    if (v21 == 5)
    {
      if (v20 == v19)
      {
        v18 = v24;
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
LABEL_24:
      v18 = 0;
    }

    result = (*(*(a1 + 24) + 120))(a2, a3, v12, &v24);
    if ((result & 0x80000000) == 0)
    {
      if (!v18 || (result = (*(*(a1 + 24) + 192))(a2, a3, v18), (result & 0x80000000) == 0))
      {
        LOWORD(a5) = v24;
        if (v24)
        {
          continue;
        }
      }
    }

    return result;
  }
}

uint64_t fe_wmp_AdjustMarkers(uint64_t result, uint64_t a2, unsigned int a3, const char *a4)
{
  if (a3)
  {
    v6 = result;
    v7 = 0;
    v8 = 0;
    v9 = a3;
    v10 = a2 + 12;
    v11 = 1;
    do
    {
      v12 = *(v10 - 12);
      *(v10 - 8) += v7;
      *v10 += v7;
      if (v12 == 1)
      {
        if (v11)
        {
          v14 = *(*(v6 + 112) + 2 * v8++);
        }

        else
        {
          v14 = 0;
        }

        *(v10 - 4) += v14;
        v7 += v14;
      }

      else if (v12 == 36)
      {
        v13 = *(v10 + 12);
        result = strcmp(v13, "normal");
        v11 = 1;
        if (result)
        {
          result = strcmp(v13, a4);
          if (result)
          {
            v11 = 0;
          }
        }
      }

      v10 += 32;
      --v9;
    }

    while (v9);
  }

  else
  {
    v7 = 0;
  }

  *(a2 + 8) += v7;
  *(a2 + 16) += v7;
  return result;
}

uint64_t fe_wmp_getPos(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21 = 0;
  __s = 0;
  v19 = 0;
  v17 = 0;
  v18 = 0;
  result = (*(*(a1 + 24) + 104))(a2, a3, 2, a5, &v21);
  if ((result & 0x80000000) == 0)
  {
    v12 = v21;
    if (v21)
    {
      v13 = 0;
      while (1)
      {
        result = (*(*(a1 + 24) + 168))(a2, a3, v12, 0, 1, &v18, &v19);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        if (v18 <= 0x11 && ((1 << v18) & 0x20210) != 0)
        {
          result = (*(*(a1 + 24) + 168))(a2, a3, v21, 1, 1, &v17 + 2, &v19);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = (*(*(a1 + 24) + 168))(a2, a3, v21, 2, 1, &v17, &v19);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          if (v13 < *(a4 + 48) && HIWORD(v17) == *(*(a4 + 32) + 2 * v13))
          {
            result = (*(*(a1 + 24) + 176))(a2, a3, v21, 5, &__s, &v19);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            v15 = strlen(__s);
            *(*(a4 + 64) + 8 * v13) = heap_Calloc(*(a6 + 8), 1, v15 + 1);
            v16 = *(*(a4 + 64) + 8 * v13);
            if (!v16)
            {
              return 2587893770;
            }

            strcpy(v16, __s);
            ++v13;
          }
        }

        result = (*(*(a1 + 24) + 120))(a2, a3, v21, &v21);
        if ((result & 0x80000000) == 0)
        {
          v12 = v21;
          if (v21)
          {
            continue;
          }
        }

        return result;
      }
    }
  }

  return result;
}

uint64_t fe_wmp_isFeatureRequired(uint64_t a1, unsigned int a2, int a3, unsigned __int16 *a4)
{
  if (a2 < 2)
  {
    return 0;
  }

  v6 = 0;
  v7 = g_featureNames_5[a3];
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

uint64_t fe_wmp_setFeature(uint64_t a1, uint64_t a2, unsigned int a3, int a4, uint64_t a5, const char *a6)
{
  v18 = -1;
  result = fe_wmp_isFeatureRequired(a2, a3, a4, &v18);
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
      v12 = heap_Realloc(*(a1 + 8), *(a5 + 8 * v18), v11 + 1);
      if (!v12)
      {
        log_OutPublic(*(a1 + 32), "FE_WMP", 37000, 0, v13, v14, v15, v16, v17);
        return 2587893770;
      }

      *(a5 + 8 * v10) = v12;
    }

    strcpy(v12, a6);
    return 0;
  }

  return result;
}

uint64_t fe_text_analyzer_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2592088065;
  }

  result = 0;
  *a2 = &IFeTextAnalyzer;
  return result;
}

uint64_t fe_text_analyzer_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v162 = *MEMORY[0x1E69E9840];
  v152 = 0;
  v153 = 0;
  v5 = 2592088071;
  v151 = 0;
  memset(v161, 0, sizeof(v161));
  if (!a5)
  {
    goto LABEL_14;
  }

  *a5 = 0;
  *(a5 + 8) = 0;
  inited = InitRsrcFunction(a3, a4, &v153);
  if ((inited & 0x80000000) != 0)
  {
    v5 = inited;
    goto LABEL_14;
  }

  v10 = heap_Calloc(*(v153 + 8), 1, 80);
  if (!v10)
  {
    log_OutPublic(*(v153 + 32), "FE_TEXT_ANALYZER", 37000, 0, v11, v12, v13, v14, v140);
    v5 = 2592088074;
    goto LABEL_13;
  }

  v15 = v10;
  *a5 = v10;
  *(a5 + 8) = 62347;
  *(v10 + 32) = 0;
  *(v10 + 72) = 0;
  Object = objc_GetObject(*(v153 + 48), "LINGDB", &v152);
  if ((Object & 0x80000000) != 0)
  {
    goto LABEL_11;
  }

  *(v15 + 24) = *(v152 + 8);
  Object = objc_GetObject(*(v153 + 48), "FE_DCTLKP", &v151);
  if ((Object & 0x80000000) != 0)
  {
    goto LABEL_11;
  }

  v17 = v151;
  *(v15 + 40) = *(v151 + 8);
  *(v15 + 48) = *(v17 + 16);
  v18 = v153;
  *v15 = v153;
  *(v15 + 8) = a3;
  *(v15 + 16) = a4;
  Object = fe_text_analyzer_CreateBrokerString(v18, v161);
  if ((Object & 0x80000000) != 0)
  {
LABEL_11:
    v5 = Object;
LABEL_13:
    fe_text_analyzer_ObjClose(*a5, *(a5 + 8));
    *a5 = 0;
    *(a5 + 8) = 0;
    goto LABEL_14;
  }

  v20 = *v15;
  v19 = *(v15 + 8);
  v21 = *(v15 + 16);
  *v160 = 0;
  v159 = 0;
  *v158 = 0;
  v157 = 0;
  v156 = 0;
  v155 = 0;
  v154 = 0;
  v22 = ssftriff_reader_ObjOpen(v19, v21, 2, v161, "STLE", 5, v160);
  if (v22 < 0 && (v22 & 0x1FFF) != 0x14)
  {
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    LODWORD(v31) = 0;
    goto LABEL_107;
  }

  v34 = ssftriff_reader_OpenChunk(*v160, &v156, &v159, v158, v23, v24, v25, v26);
  if ((v34 & 0x80000000) == 0)
  {
    v36 = 0;
    v37 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    while (1)
    {
      if (v156 ^ 0x454E494C | v157)
      {
        if (v156 ^ 0x4E4B4F54 | v157)
        {
          if (!(v156 ^ 0x4E454C54 | v157))
          {
            ssftriff_reader_GetChunkData(*v160, v159, &v155, v35, v23, v24, v25, v26);
            v28 = heap_Calloc(*(v20 + 8), 1, 8 * *v155);
            if (!v28)
            {
              goto LABEL_89;
            }

            ++v36;
            if (v29 && v31)
            {
              v51 = 0;
              do
              {
                v52 = heap_Calloc(*(v20 + 8), 1, 4 * *(v29 + 4 * v51));
                *(v28 + 8 * v51) = v52;
                if (!v52)
                {
                  goto LABEL_89;
                }

                if (*(v29 + 4 * v51))
                {
                  v53 = 0;
                  v54 = v155;
                  do
                  {
                    *(v52 + 4 * v53) = v54[(v36 + v53)];
                    ++v53;
                  }

                  while (v53 < *(v29 + 4 * v51));
                  v36 += v53;
                }

                ++v51;
              }

              while (v51 != v31);
              v37 = v31;
              goto LABEL_52;
            }

            goto LABEL_51;
          }

          if (v156 ^ 0x4E454C4C | v157)
          {
            if (v156 ^ 0x454C5552 | v157)
            {
              goto LABEL_52;
            }

            v30 = heap_Alloc(*(v20 + 8), 8 * v31);
            if (!v30)
            {
LABEL_89:
              log_OutPublic(*(*v15 + 32), "FE_TEXT_ANALYZER", 37000, 0, v38, v39, v40, v41, v140);
              goto LABEL_107;
            }

            v154 = 0;
            if (v27 && v159)
            {
              v144 = v31;
              v42 = 0;
              v37 = 0;
              while (1)
              {
                v154 = 0;
                v43 = heap_Alloc(*(v20 + 8), (*(v27 + 4 * v37) + 1));
                *(v30 + 8 * v37) = v43;
                if (!v43)
                {
                  break;
                }

                ssftriff_reader_ReadStringZ(*v160, *v158, v159, v42, 0, &v154);
                ssftriff_reader_ReadStringZ(*v160, *v158, v159, v42, *(v30 + 8 * v37++), &v154);
                v42 += v154;
                if (v42 >= v159)
                {
                  v31 = v144;
                  goto LABEL_52;
                }
              }

              log_OutPublic(*(*v15 + 32), "FE_TEXT_ANALYZER", 37000, 0, v44, v45, v46, v47, v140);
              LODWORD(v31) = v144;
              goto LABEL_107;
            }

LABEL_51:
            v37 = 0;
            goto LABEL_52;
          }

          v27 = heap_Calloc(*(v20 + 8), 1, 4 * v31);
          if (!v27)
          {
            v131 = *(*v15 + 32);
LABEL_108:
            log_OutPublic(v131, "FE_TEXT_ANALYZER", 37000, 0, v23, v24, v25, v26, v140);
            goto LABEL_109;
          }

          ssftriff_reader_GetChunkData(*v160, v159, &v155, v55, v23, v24, v25, v26);
          if (!v31)
          {
            goto LABEL_51;
          }

          v56 = 0;
          v57 = v155;
          do
          {
            *(v27 + 4 * v56) = v57[v56];
            ++v56;
          }

          while (v31 != v56);
        }

        else
        {
          ssftriff_reader_GetChunkData(*v160, v159, &v155, v35, v23, v24, v25, v26);
          v48 = heap_Calloc(*(v20 + 8), 1, 4 * v31);
          v29 = v48;
          if (!v48)
          {
            goto LABEL_89;
          }

          if (v37 >= v31)
          {
            goto LABEL_52;
          }

          v49 = v155;
          v50 = v37;
          do
          {
            *(v48 + 4 * v50) = v49[v50];
            ++v50;
          }

          while (v31 != v50);
        }

        v37 = v31;
      }

      else
      {
        ssftriff_reader_GetChunkData(*v160, v159, &v155, v35, v23, v24, v25, v26);
        v31 = *v155;
      }

LABEL_52:
      ssftriff_reader_CloseChunk(*v160);
      v34 = ssftriff_reader_OpenChunk(*v160, &v156, &v159, v158, v58, v59, v60, v61);
      if (v34 < 0)
      {
        goto LABEL_55;
      }
    }
  }

  LODWORD(v31) = 0;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v27 = 0;
LABEL_55:
  if ((v34 & 0x1FFF) != 0x14)
  {
LABEL_107:
    v131 = *(v20 + 32);
    goto LABEL_108;
  }

  v62 = heap_Calloc(*(v20 + 8), 1, 32);
  if (!v62)
  {
    log_OutPublic(*(v20 + 32), "FE_TEXT_ANALYZER", 37000, 0, v63, v64, v65, v66, v140);
LABEL_106:
    *(v15 + 32) = 0;
    goto LABEL_107;
  }

  v67 = v62;
  *(v62 + 9) = 0;
  *(v62 + 16) = 0;
  v68 = heap_Calloc(*(v20 + 8), 1, 128);
  *v67 = v68;
  if (!v68)
  {
    v130 = *(v20 + 32);
    goto LABEL_95;
  }

  strcpy(v68, "START");
  v73 = heap_Calloc(*(v20 + 8), 1, 128);
  if (!v73)
  {
    v130 = *(*v15 + 32);
LABEL_95:
    log_OutPublic(v130, "FE_TEXT_ANALYZER", 37000, 0, v69, v70, v71, v72, v140);
LABEL_103:
    if (*v67)
    {
      heap_Free(*(v20 + 8), *v67);
    }

    heap_Free(*(v20 + 8), v67);
    goto LABEL_106;
  }

  v74 = v73;
  if (!v31)
  {
    goto LABEL_88;
  }

  v75 = 0;
  v141 = v31;
  v142 = v67;
  v76 = 0uLL;
  v77 = v67;
  v143 = v27;
  v145 = v31;
  v148 = v28;
  v150 = v30;
  while (2)
  {
    v147 = v75;
    v74[6] = v76;
    v74[7] = v76;
    v74[4] = v76;
    v74[5] = v76;
    v74[2] = v76;
    v74[3] = v76;
    *v74 = v76;
    v74[1] = v76;
    memcpy(v74, *(v30 + 8 * v75), **(v28 + 8 * v75));
    v78 = v147;
    LODWORD(v79) = 0;
    v149 = 0;
    while (1)
    {
      v80 = *(v77 + 9);
      if (*(v77 + 9))
      {
        v79 = v79;
        while (2)
        {
          v81 = v77[2];
          v82 = v80;
          v83 = v80;
          v84 = v81;
          while (!*v84 || strcmp(*v84, v74))
          {
            v84 += 32;
            if (!--v83)
            {
              v86 = v147;
              LODWORD(v87) = *(v29 + 4 * v147) - 1;
              goto LABEL_72;
            }
          }

          v86 = v147;
          v87 = (*(v29 + 4 * v147) - 1);
          if (v79 < v87)
          {
            v28 = v148;
            v85 = v149 + *(*(v148 + 8 * v147) + 4 * v79++) + 1;
            v74[6] = 0uLL;
            v74[7] = 0uLL;
            v74[4] = 0uLL;
            v74[5] = 0uLL;
            v74[2] = 0uLL;
            v74[3] = 0uLL;
            *v74 = 0uLL;
            v74[1] = 0uLL;
            v149 = v85;
            memcpy(v74, (*(v150 + 8 * v147) + v85), *(*(v148 + 8 * v147) + 4 * v79));
            v80 = *(v84 + 9);
            v77 = v84;
            if (*(v84 + 9))
            {
              continue;
            }

            v27 = v143;
            LODWORD(v31) = v145;
            v78 = v147;
            goto LABEL_77;
          }

          break;
        }

LABEL_72:
        v30 = v150;
        if (v87 == v79)
        {
          v27 = v143;
          LODWORD(v31) = v145;
          goto LABEL_85;
        }

        v88 = *(*(v148 + 8 * v86) + 4 * v79);
        v89 = heap_Realloc(*(v20 + 8), v81, 32 * v82 + 32);
        if (!v89)
        {
          log_OutPublic(*(v20 + 32), "FE_TEXT_ANALYZER", 37000, 0, v90, v91, v92, v93, v141);
          v27 = v143;
          goto LABEL_102;
        }

        v94 = (v88 + 1);
        v77[2] = v89;
        *(v89 + 32 * *(v77 + 9) + 9) = 0;
        v95 = (v89 + 32 * *(v77 + 9));
        *v95 = 0;
        v95[2] = 0;
        v95[3] = 0;
        v96 = heap_Alloc(*(v20 + 8), v94);
        *(v77[2] + 32 * *(v77 + 9)) = v96;
        if (v96)
        {
          v101 = v77 + 9;
          v146 = v79;
          memcpy(v96, v74, v94);
          v31 = v77[2];
          goto LABEL_81;
        }

        log_OutPublic(*(v20 + 32), "FE_TEXT_ANALYZER", 37000, 0, v97, v98, v99, v100, v141);
        v27 = v143;
        goto LABEL_101;
      }

      v84 = v77;
LABEL_77:
      if (v79 == *(v29 + 4 * v78) - 1)
      {
        break;
      }

      v102 = *(*(v28 + 8 * v78) + 4 * v79);
      v103 = heap_Alloc(*(v20 + 8), 32);
      if (!v103)
      {
        log_OutPublic(*(v20 + 32), "FE_TEXT_ANALYZER", 37000, 0, v104, v105, v106, v107, v141);
LABEL_101:
        v30 = v150;
LABEL_102:
        heap_Free(*(v20 + 8), v74);
        v28 = v148;
        LODWORD(v31) = v145;
        v67 = v142;
        goto LABEL_103;
      }

      v31 = v103;
      v108 = (v102 + 1);
      *(v103 + 9) = 0;
      *v103 = 0;
      *(v103 + 16) = 0;
      *(v103 + 24) = 0;
      v109 = heap_Alloc(*(v20 + 8), v108);
      *v31 = v109;
      if (!v109)
      {
        log_OutPublic(*(v20 + 32), "FE_TEXT_ANALYZER", 37000, 0, v110, v111, v112, v113, v141);
        heap_Free(*(v20 + 8), v31);
        goto LABEL_101;
      }

      v101 = (v84 + 9);
      v146 = v79;
      memcpy(v109, v74, v108);
      *(v84 + 16) = v31;
LABEL_81:
      v114 = *(*(v148 + 8 * v147) + 4 * v146);
      v115 = *v101;
      v77 = (v31 + 32 * v115);
      *v101 = v115 + 1;
      v116 = v149 + v114 + 1;
      LODWORD(v79) = v79 + 1;
      v74[6] = 0u;
      v74[7] = 0u;
      v74[4] = 0u;
      v74[5] = 0u;
      v74[2] = 0u;
      v74[3] = 0u;
      *v74 = 0u;
      v74[1] = 0u;
      memcpy(v74, (*(v150 + 8 * v147) + v116), *(*(v148 + 8 * v147) + 4 * v79));
      v78 = v147;
      v149 = v116;
      v28 = v148;
      v27 = v143;
      LODWORD(v31) = v145;
      if (v79 >= *(v29 + 4 * v147))
      {
        goto LABEL_87;
      }
    }

    v77 = v84;
    LODWORD(v87) = v79;
    v30 = v150;
LABEL_85:
    v117 = heap_Alloc(*(v20 + 8), 128);
    v77[3] = v117;
    if (!v117)
    {
      log_OutPublic(*(*v15 + 32), "FE_TEXT_ANALYZER", 37000, 0, v118, v119, v120, v121, v141);
      goto LABEL_102;
    }

    memcpy(v117, (*(v30 + 8 * v147) + v149), *(*(v148 + 8 * v147) + 4 * v87));
    v78 = v147;
    v122 = *(*(v148 + 8 * v147) + 4 * v87);
    v28 = v148;
    *(v77[3] + v122) = 0;
    v77 = v142;
LABEL_87:
    v75 = v78 + 1;
    v67 = v142;
    v30 = v150;
    v76 = 0uLL;
    if (v75 != v141)
    {
      continue;
    }

    break;
  }

LABEL_88:
  heap_Free(*(v20 + 8), v74);
  *(v15 + 32) = v67;
LABEL_109:
  if (*v160)
  {
    ssftriff_reader_ObjClose(*v160, v123, v124, v125, v126, v127, v128, v129);
  }

  if (v30)
  {
    v132 = v28;
    v133 = v27;
    if (v31)
    {
      v134 = v31;
      v135 = v30;
      do
      {
        if (*v135)
        {
          heap_Free(*(v20 + 8), *v135);
          *v135 = 0;
        }

        ++v135;
        --v134;
      }

      while (v134);
    }

    heap_Free(*(v20 + 8), v30);
    v27 = v133;
    v28 = v132;
  }

  if (v28)
  {
    v136 = v28;
    v137 = v27;
    if (v31)
    {
      v138 = v31;
      v139 = v136;
      do
      {
        if (*v139)
        {
          heap_Free(*(v20 + 8), *v139);
          *v139 = 0;
        }

        ++v139;
        --v138;
      }

      while (v138);
    }

    heap_Free(*(v20 + 8), v136);
    v27 = v137;
  }

  if (v27)
  {
    heap_Free(*(v20 + 8), v27);
  }

  if (v29)
  {
    heap_Free(*(v20 + 8), v29);
  }

  v5 = 0;
LABEL_14:
  v32 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t fe_text_analyzer_ObjClose(void **a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 62347, 80);
  if ((v3 & 0x80000000) != 0)
  {
    return 2592088072;
  }

  v4 = v3;
  if (a1)
  {
    if (a1[3])
    {
      objc_ReleaseObject((*a1)[6], "LINGDB");
    }

    if (a1[5])
    {
      objc_ReleaseObject((*a1)[6], "FE_DCTLKP");
    }

    v5 = a1[4];
    if (v5)
    {
      loc_text_analyzer_free_node(*a1, v5);
      v6 = a1[4];
      if (v6)
      {
        heap_Free((*a1)[1], v6);
      }

      a1[4] = 0;
    }

    heap_Free((*a1)[1], a1);
  }

  return v4;
}

uint64_t fe_text_analyzer_ObjReopen(uint64_t *a1, int a2)
{
  v7 = *MEMORY[0x1E69E9840];
  BrokerString = 2592088070;
  memset(v6, 0, sizeof(v6));
  if ((safeh_HandleCheck(a1, a2, 62347, 80) & 0x80000000) != 0)
  {
    BrokerString = 2592088072;
  }

  else if (a1)
  {
    BrokerString = fe_text_analyzer_CreateBrokerString(*a1, v6);
  }

  v4 = *MEMORY[0x1E69E9840];
  return BrokerString;
}

uint64_t fe_text_analyzer_ProcessStart(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 62347, 80);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2592088072;
  }
}

uint64_t fe_text_analyzer_Process(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v94 = *MEMORY[0x1E69E9840];
  v77 = 0;
  v75 = 0;
  v76 = 0;
  v74 = 0;
  v73 = 0;
  __c_3 = 0;
  __c_1 = 0;
  __c = 0;
  v68 = 0;
  v69 = 0;
  v67 = 0;
  v65 = 0;
  __s = 0;
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v81 = 0u;
  v79 = 0u;
  v80 = 0u;
  *__s2 = 0u;
  *(a1 + 16) = 0;
  *a5 = 1;
  log_OutText((*a1)[4], "FE_TEXT_ANALYZER", 5, 0, "[FE_TEXT_ANALYZER]: Entering", a6, a7, a8, v60);
  *(a1 + 16) = 0;
  if (((a1[5][12])(a1[6], a1[7], "fecfg", "fetext_act_text_analyzer", &__c_3, &__c_1, &__c) & 0x80000000) == 0 && __c_1)
  {
    v11 = *__c_3;
    v12 = strchr(*__c_3, __c);
    if (v12)
    {
      *v12 = 0;
      v11 = *__c_3;
    }

    if (!strcmp(v11, "yes"))
    {
      *(a1 + 16) = 1;
    }
  }

  __c_1 = 0;
  v13 = (a1[5][12])(a1[6], a1[7], "fecfg", "fetext_trigger", &__c_3, &__c_1, &__c);
  v14 = 0;
  if ((v13 & 0x80000000) == 0 && __c_1)
  {
    v15 = v13;
    v16 = *__c_3;
    v17 = strchr(*__c_3, __c);
    if (v17)
    {
      *v17 = 0;
      v16 = *__c_3;
    }

    strlen(v16);
    __memcpy_chk();
    v14 = v15;
  }

  if (*(a1 + 16))
  {
    v18 = a1[4];
    if (v18)
    {
      v14 = (a1[3][13])(a3, a4, 1, 0, &v76 + 2);
      if ((v14 & 0x80000000) == 0 && ((a1[3][23])(a3, a4, HIWORD(v76), 0, &v73) & 0x80000000) == 0 && v73 == 1)
      {
        v14 = (a1[3][22])(a3, a4, HIWORD(v76), 0, &v77, &v75 + 2);
        if ((v14 & 0x80000000) == 0 && HIWORD(v75) >= 2u)
        {
          if (*v77)
          {
            v14 = (a1[3][22])(a3, a4, HIWORD(v76), 1, &v74, &v73 + 2);
            if ((v14 & 0x80000000) == 0)
            {
              v19 = HIWORD(v73);
              if (HIWORD(v73))
              {
                v20 = 0;
                v21 = v74;
                v22 = 24;
                while (*(v21 + v22 - 24) != 60 || strcmp(*(v21 + v22), __s2))
                {
                  ++v20;
                  v22 += 32;
                  if (v19 == v20)
                  {
                    goto LABEL_26;
                  }
                }

                v14 = (a1[3][13])(a3, a4, 2, HIWORD(v76), &v76);
                if ((v14 & 0x80000000) == 0)
                {
                  v64 = heap_Calloc((*a1)[1], 1, 32);
                  if (!v64)
                  {
                    v14 = 2592088074;
                    log_OutPublic((*a1)[4], "FE_TEXT_ANALYZER", 37000, 0, v25, v26, v27, v28, v61);
                    goto LABEL_26;
                  }

                  v29 = v76;
                  if (v76)
                  {
                    v30 = 0;
                    v62 = 0;
                    v31 = -1;
                    v32 = v64;
                    while (1)
                    {
                      v33 = (a1[3][21])(a3, a4, v29, 0, 1, &v68 + 4, &v75 + 2);
                      if ((v33 & 0x80000000) != 0)
                      {
                        break;
                      }

                      v33 = (a1[3][21])(a3, a4, v76, 1, 1, &v68, &v75 + 2);
                      if ((v33 & 0x80000000) != 0)
                      {
                        break;
                      }

                      v33 = (a1[3][21])(a3, a4, v76, 2, 1, &v67, &v75 + 2);
                      if ((v33 & 0x80000000) != 0)
                      {
                        break;
                      }

                      if ((HIDWORD(v68) == 9 || HIDWORD(v68) == 4) && (v68 > v30 || v31 == -1))
                      {
                        v33 = (a1[3][22])(a3, a4, v76, 5, &__s, &v75 + 2);
                        if ((v33 & 0x80000000) != 0)
                        {
                          break;
                        }

                        if (v31 == -1)
                        {
                          v31 = v76;
                        }

                        v34 = heap_Calloc((*a1)[1], 1, (v67 - v68 + 1));
                        *v32 = v34;
                        if (!v34)
                        {
                          goto LABEL_65;
                        }

                        memcpy(v34, &v77[v68], (v67 - v68));
                        *(*v32 + (v67 - v68)) = 0;
                        v39 = strlen(__s);
                        v40 = heap_Calloc((*a1)[1], 1, v39 + 1);
                        *(v32 + 8) = v40;
                        if (!v40)
                        {
                          goto LABEL_65;
                        }

                        v41 = v40;
                        v42 = strlen(__s);
                        memcpy(v41, __s, v42);
                        *(*(v32 + 8) + strlen(__s)) = 0;
                        v43 = heap_Calloc((*a1)[1], 1, 32);
                        *(v32 + 24) = v43;
                        if (!v43)
                        {
                          goto LABEL_65;
                        }

                        *(v32 + 16) = v62;
                        v30 = v68;
                        ++v62;
                        v32 = v43;
                      }

                      v14 = (a1[3][15])(a3, a4, v76, &v76);
                      if ((v14 & 0x80000000) != 0)
                      {
                        goto LABEL_66;
                      }

                      v29 = v76;
                      if (!v76)
                      {
                        goto LABEL_47;
                      }
                    }

                    v14 = v33;
                  }

                  else
                  {
LABEL_47:
                    v44 = heap_Calloc((*a1)[1], 1, 128);
                    v65 = v44;
                    if (v44)
                    {
                      v63 = v44;
                      v45 = 0;
                      v46 = 0;
                      v47 = 1;
                      v48 = v64;
                      do
                      {
                        if (loc_match_against_rules(v48, &v69, v18, &v65, v47) && *(v69 + 16) - *(v48 + 16) > v45)
                        {
                          v45 = *(v69 + 16) - *(v48 + 16);
                          v46 = 1;
                        }

                        v47 = 0;
                        v48 = *(v48 + 24);
                      }

                      while (v48);
                      v49 = 0;
                      if (v20 && v46 == 1)
                      {
                        v50 = heap_Calloc((*a1)[1], 1, 32 * HIWORD(v73));
                        v49 = v50;
                        if (v50)
                        {
                          if (HIWORD(v73))
                          {
                            v55 = 0;
                            v56 = (v50 + v22);
                            v57 = 32 * HIWORD(v73);
                            do
                            {
                              if (v20)
                              {
                                v58 = (v50 + v55);
                                v59 = *(v74 + v55 + 16);
                                *v58 = *(v74 + v55);
                                v58[1] = v59;
                              }

                              else
                              {
                                *(v56 - 6) = 60;
                                *(v56 - 20) = *(v74 + v22 - 20);
                                *v56 = v63;
                              }

                              v55 += 32;
                              --v20;
                            }

                            while (v57 != v55);
                          }

                          v14 = (a1[3][20])(a3, a4, HIWORD(v76), 1);
                        }

                        else
                        {
                          v14 = 2592088074;
                          log_OutPublic((*a1)[4], "FE_TEXT_ANALYZER", 37000, 0, v51, v52, v53, v54, v61);
                        }
                      }

                      goto LABEL_67;
                    }

LABEL_65:
                    v14 = 2592088074;
                    log_OutPublic((*a1)[4], "FE_TEXT_ANALYZER", 37000, 0, v35, v36, v37, v38, v61);
                  }

LABEL_66:
                  v49 = 0;
LABEL_67:
                  loc_text_analyzer_free_orth(*a1, v64);
                  heap_Free((*a1)[1], v64);
                  if (v65)
                  {
                    heap_Free((*a1)[1], v65);
                  }

                  if (v49)
                  {
                    heap_Free((*a1)[1], v49);
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_26:
  v23 = *MEMORY[0x1E69E9840];
  return v14;
}

uint64_t fe_text_analyzer_ProcessEnd(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 62347, 80);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2592088072;
  }
}

uint64_t fe_text_analyzer_CreateBrokerString(uint64_t a1, char *a2)
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

void *loc_text_analyzer_free_node(void *result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    v4 = *a2;
    if (v4)
    {
      result = heap_Free(result[1], v4);
      *a2 = 0;
    }

    v5 = *(a2 + 24);
    if (v5)
    {
      result = heap_Free(v3[1], v5);
      *(a2 + 24) = 0;
    }

    if (*(a2 + 9))
    {
      v6 = 0;
      v7 = 0;
      do
      {
        result = loc_text_analyzer_free_node(v3, *(a2 + 16) + v6);
        ++v7;
        v6 += 32;
      }

      while (v7 < *(a2 + 9));
    }

    v8 = *(a2 + 16);
    if (v8)
    {
      result = heap_Free(v3[1], v8);
    }

    *(a2 + 16) = 0;
  }

  return result;
}

uint64_t loc_match_against_rules(uint64_t a1, void *a2, char **a3, char **a4, int a5)
{
  v6 = 0;
  v7 = a5 == 1;
  while (1)
  {
    v8 = *(a3 + 9);
    if (!*(a3 + 9))
    {
      return 0;
    }

    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = a3[2];
    do
    {
      v13 = *v12;
      v14 = strchr(*v12, 58);
      if (v14)
      {
        v11 = v13;
        v10 = v14 + 1;
      }

      if (!v11)
      {
        v15 = *a1;
        if (v13)
        {
          v17 = v15 == 0;
        }

        else
        {
          v17 = 1;
        }

        if (v17)
        {
          goto LABEL_26;
        }

        v16 = v13;
        goto LABEL_18;
      }

      if (strstr(v11, "POS:") && (v15 = *(a1 + 8)) != 0 || v7 && strstr(v11, "BEG:") && (v15 = *a1) != 0)
      {
        v16 = v10;
LABEL_18:
        if (!strcmp(v16, v15))
        {
          goto LABEL_29;
        }

        goto LABEL_26;
      }

      if (strstr(v11, "NOT:") && *a1)
      {
        if (strcmp(v10, *a1))
        {
LABEL_29:
          v6 = v12;
          goto LABEL_30;
        }
      }

      else if (strstr(v11, "ELIP:"))
      {
        v6 = v12;
        v9 = 1;
      }

LABEL_26:
      v12 += 4;
      --v8;
    }

    while (v8);
    if (!v9)
    {
      return 0;
    }

LABEL_30:
    a1 = *(a1 + 24);
    if (!a1)
    {
      return 0;
    }

    v7 = 0;
    v18 = v6[3];
    a3 = v6;
    if (v18)
    {
      strcpy(*a4, v18);
      *a2 = a1;
      return 1;
    }
  }
}

void *loc_text_analyzer_free_orth(void *result, uint64_t *a2)
{
  if (a2)
  {
    v3 = result;
    v4 = *a2;
    if (v4)
    {
      heap_Free(result[1], v4);
    }

    v5 = a2[1];
    if (v5)
    {
      heap_Free(v3[1], v5);
    }

    result = loc_text_analyzer_free_orth(v3, a2[3]);
    v6 = a2[3];
    if (v6)
    {
      result = heap_Free(v3[1], v6);
    }

    a2[3] = 0;
  }

  return result;
}

uint64_t lidword_Identify(uint64_t a1, const void *a2, unsigned int a3, uint64_t *a4, unsigned int *a5, unsigned int *a6, uint64_t *a7, unsigned int *a8, unsigned int *a9)
{
  v313[64] = *MEMORY[0x1E69E9840];
  inserted = 2345672714;
  v300 = 0;
  v298 = 0;
  if (!a1)
  {
    inserted = 2345672711;
    goto LABEL_335;
  }

  if (!*(a1 + 1924))
  {
    inserted = 0;
    goto LABEL_335;
  }

  v18 = heap_Calloc(*(*(a1 + 16) + 8), 1, a3 + 1);
  if (!v18)
  {
    log_OutPublic(*(*(a1 + 16) + 32), "FE_LID", 48000, 0, v19, v20, v21, v22, v258);
    goto LABEL_335;
  }

  v23 = v18;
  memcpy(v18, a2, a3);
  v23[a3] = 0;
  v24 = strlen(v23);
  if (*(*a4 + 16) < v24)
  {
LABEL_5:
    inserted = 0;
    v25 = 0;
LABEL_330:
    v186 = 0;
    goto LABEL_331;
  }

  if (*a6 >= 2)
  {
    v26 = 1;
    do
    {
      v27 = *(*a4 + 32 * v26);
      v28 = v27 > 0x28;
      v29 = (1 << v27) & 0x10000200080;
      if (!v28 && v29 != 0)
      {
        goto LABEL_5;
      }
    }

    while (*a6 > ++v26);
  }

  memset(v297, 0, 30);
  v25 = lidword_normalizedDup(a1, v23, v24, v297, 1);
  if (!v25 || (v35 = strlen(v23), (v36 = lidword_normalizedDup(a1, v23, v35, v297, 0)) == 0))
  {
    log_OutPublic(*(*(a1 + 16) + 32), "FE_LID", 48000, 0, v31, v32, v33, v34, v258);
    goto LABEL_330;
  }

  v37 = v36;
  v277 = a5;
  v279 = a7;
  v280 = a8;
  v38 = a1 + 2044;
  bzero((a1 + 2044), 0x20000uLL);
  memset((a1 + 133116), 255, 0x400uLL);
  *(a1 + 134140) = 0u;
  *(a1 + 134156) = 0u;
  *(a1 + 134172) = 0u;
  *(a1 + 134188) = 0u;
  *(a1 + 134204) = 0u;
  *(a1 + 134220) = 0u;
  *(a1 + 134236) = 0u;
  *(a1 + 134252) = 0u;
  *(a1 + 134268) = 0u;
  *(a1 + 134284) = 0u;
  *(a1 + 134300) = 0u;
  *(a1 + 134316) = 0u;
  *(a1 + 134332) = 0u;
  *(a1 + 134348) = 0u;
  *(a1 + 134364) = 0u;
  *(a1 + 134380) = 0u;
  *(a1 + 134396) = 0u;
  *(a1 + 134412) = 0u;
  *(a1 + 134428) = 0u;
  *(a1 + 134444) = 0u;
  *(a1 + 134460) = 0u;
  *(a1 + 134476) = 0u;
  *(a1 + 134492) = 0u;
  *(a1 + 134508) = 0u;
  *(a1 + 134524) = 0u;
  *(a1 + 134540) = 0u;
  *(a1 + 134556) = 0u;
  *(a1 + 134572) = 0u;
  *(a1 + 134588) = 0u;
  *(a1 + 134604) = 0u;
  *(a1 + 134620) = 0u;
  *(a1 + 134636) = 0u;
  *(a1 + 134876) = 0u;
  *(a1 + 134892) = 0u;
  *(a1 + 134844) = 0u;
  *(a1 + 134860) = 0u;
  *(a1 + 134812) = 0u;
  *(a1 + 134828) = 0u;
  *(a1 + 134780) = 0u;
  *(a1 + 134796) = 0u;
  *(a1 + 134748) = 0u;
  *(a1 + 134764) = 0u;
  *(a1 + 134716) = 0u;
  *(a1 + 134732) = 0u;
  *(a1 + 134684) = 0u;
  *(a1 + 134700) = 0u;
  *(a1 + 134652) = 0u;
  *(a1 + 134668) = 0u;
  v278 = a6;
  lidword_CheckLangTags(a1, v23, a4, a6);
  v281 = v25;
  v301 = v25;
  lidword_AdvanceSkippingSpacesInNormSW(&v301, &v300);
  v286 = v37;
  v299 = v37;
  lidword_AdvanceSkippingSpacesInNormSW(&v299, &v298);
  v39 = v300;
  v40 = v301;
  v290 = a4;
  v293 = a1 + 133116;
  v287 = v23;
  v41 = 0;
  if (v300 == v301)
  {
LABEL_241:
    v185 = v41;
    lidword_ExtractFeats(a1, v23, v41);
    v186 = v286;
    v299 = v286;
    lidword_AdvanceSkippingSpacesInNormSW(&v299, &v298);
    v194 = v298;
    v193 = v299;
    v195 = a1 + 133116;
    if (v298 == v299)
    {
LABEL_328:
      lidword_Smoothing(a1, v185, v187, v188, v189, v190, v191, v192);
      inserted = lidword_InsertLangTags(a1, v23, a4, v277, v278, v185, v279, v280, a9);
      v25 = v281;
      goto LABEL_331;
    }

    v196 = 0;
    v284 = v185;
    while (1)
    {
      if (!*v193 || v196 > 0xFF)
      {
        goto LABEL_328;
      }

      if (*(v195 + 4 * v196) != -1)
      {
        goto LABEL_327;
      }

      v197 = *(a1 + 2026) + *(a1 + 2030) * *(a1 + 1928) + 3;
      v198 = *v194;
      *v194 = 0;
      __sa = v193;
      log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "ML2 LID NN fallback: %s", v190, v191, v192, v193);
      *v194 = v198;
      v199 = *(a1 + 2024) * v197;
      v200 = heap_Alloc(*(*(a1 + 16) + 8), 4 * v199);
      v313[0] = v200;
      if (!v200)
      {
        v214 = *(a1 + 16);
        goto LABEL_341;
      }

      v205 = v200;
      v292 = v38;
      if (v199)
      {
        memset_pattern16(v200, &unk_1C37BD390, 4 * v199);
      }

      v310[0] = 0;
      v289 = *(a1 + 2024);
      a4 = v290;
      if (*(a1 + 2016))
      {
LABEL_250:
        v206 = 0;
        v207 = __sa;
        if (v194 == __sa || !v289)
        {
          goto LABEL_267;
        }

        v208 = 0;
        v209 = 0;
        do
        {
          v210 = &v207[v209];
          v211 = Utf8_LengthInBytes(v210, 1);
          strncpy(*(*(a1 + 2016) + 8 * v208), v210, v211);
          v207 = __sa;
          v212 = *(*(a1 + 2016) + 8 * v208++);
          *(v212 + v211) = 0;
          v209 += v211;
        }

        while ((v194 - __sa) > v209 && v208 < v289);
        v206 = v208;
        v23 = v287;
        a4 = v290;
      }

      else
      {
        v214 = *(a1 + 16);
        v215 = heap_Calloc(*(v214 + 8), 1, (8 * v289) | 1);
        *(a1 + 2016) = v215;
        if (!v215)
        {
          goto LABEL_341;
        }

        if (v289)
        {
          v216 = 0;
          v185 = v284;
          while (1)
          {
            *(*(a1 + 2016) + v216) = heap_Calloc(*(v214 + 8), 1, 5);
            if (!*(*(a1 + 2016) + v216))
            {
              break;
            }

            v216 += 8;
            if (8 * v289 == v216)
            {
              goto LABEL_250;
            }
          }

LABEL_341:
          log_OutPublic(*(v214 + 32), "FE_LID", 48000, 0, v201, v202, v203, v204, v266);
          v221 = 2345672714;
LABEL_342:
          inserted = v221;
          goto LABEL_343;
        }

        v206 = 0;
      }

      v185 = v284;
LABEL_267:
      if (!*(a1 + 1960) || (v217 = *(a1 + 134912)) == 0)
      {
LABEL_336:
        v221 = 2345672704;
        goto LABEL_342;
      }

      if (v206)
      {
        v218 = 0;
        v219 = v197;
        v220 = v206;
        do
        {
          v221 = (*(*(a1 + 1960) + 56))(*(a1 + 1984), *(a1 + 1992), *(*(a1 + 2016) + 8 * v218), *(a1 + 2008));
          if ((v221 & 0x1FFF) == 0x14)
          {
            if (((*(*(a1 + 1960) + 56))(*(a1 + 1984), *(a1 + 1992), "$MEANC2V$", *(a1 + 2008)) & 0x1FFF) == 0x14)
            {
              goto LABEL_336;
            }
          }

          else if ((v221 & 0x80000000) != 0)
          {
            goto LABEL_342;
          }

          memcpy(&v205[(v218 * v219)], *(a1 + 2008), 4 * *(a1 + 2026));
          v223 = v218 * v219 + *(a1 + 2026);
          v224 = *(a1 + 2030);
          if (*(a1 + 2030))
          {
            v225 = 0;
            v226 = *(a1 + 1928);
            v227 = v292;
            v195 = a1 + 133116;
            do
            {
              if (v226)
              {
                v228 = *(a1 + 2028);
                v230 = v225 + v196 < v228 || v225 + v196 >= v228 + v185;
                v231 = (v227 - (v228 << 9));
                v232 = v223;
                v233 = v226;
                do
                {
                  v222 = -1.0;
                  if (!v230)
                  {
                    v222 = *v231;
                  }

                  v205[v232++] = v222;
                  ++v231;
                  --v233;
                }

                while (v233);
              }

              v223 += v226;
              ++v225;
              v227 += 512;
            }

            while (v225 != v224);
          }

          else
          {
            v195 = a1 + 133116;
          }

          LOBYTE(v222) = *(a1 + 134396 + v196);
          v234 = LODWORD(v222);
          v205[v223] = v234;
          LOBYTE(v234) = *(a1 + 134652 + v196);
          v235 = LODWORD(v234);
          v205[v223 + 1] = v235;
          LOBYTE(v235) = *(a1 + 134140 + v196);
          v205[v223 + 2] = LODWORD(v235);
          ++v218;
        }

        while (v218 != v220);
        a4 = v290;
        v217 = *(a1 + 134912);
      }

      else
      {
        v195 = a1 + 133116;
      }

      v221 = fi_predict(v217, v313, *(a1 + 2024), v310, v201, v202, v203, v204);
      v38 = v292;
      if ((v221 & 0x80000000) != 0)
      {
        goto LABEL_342;
      }

      v239 = *(a1 + 1928);
      if (*(a1 + 1928))
      {
        v240 = 0;
        do
        {
          v241 = *(v292 + v240);
          if (v241)
          {
            v242 = 1;
          }

          else
          {
            v242 = 4 * v239 - 4 == v240;
          }

          v240 += 4;
        }

        while (!v242);
        v243 = 0;
        v244 = 0;
        v245 = 0.0;
        v186 = v286;
        do
        {
          v246 = v245;
          v247 = v244;
          v245 = *(v310[0] + 4 * v243);
          if (v246 < v245)
          {
            v248 = *(v310[0] + 4 * v243);
          }

          else
          {
            v248 = v246;
          }

          if (v246 < v245)
          {
            v244 = v243;
          }

          else
          {
            v244 = v244;
          }

          if (v241 && v246 < v245)
          {
            v244 = v243;
            if (!*(v292 + 4 * v243))
            {
              log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "ML2 LID prune out NN predictions if languages not in the LID1.0 destination field", v236, v237, v238, v266);
              LODWORD(v239) = *(a1 + 1928);
              v245 = v246;
              v244 = v247;
            }
          }

          else
          {
            v245 = v248;
          }

          ++v243;
        }

        while (v243 < v239);
        v249 = v244;
        if (v239)
        {
          __sb = v244;
          v250 = 0;
          v251 = 0;
          do
          {
            v252 = *(v310[0] + 4 * v251);
            v267 = *(a1 + 1936) + v250;
            log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "ML2 LID [%3d] %1.5lf : %s %s", v236, v237, v238, v251++);
            v250 += 8;
          }

          while (v251 < *(a1 + 1928));
          v38 = v292;
          v195 = a1 + 133116;
          v23 = v287;
          a4 = v290;
          v249 = __sb;
        }

        else
        {
          v195 = a1 + 133116;
        }
      }

      else
      {
        v249 = 0;
        v245 = 0.0;
        v186 = v286;
      }

      v253 = *(a1 + 2036);
      if (v245 <= v253 && v249 != *(a1 + 1930))
      {
        v254 = *(a1 + 2032);
        v255 = *(*(a1 + 16) + 32);
        if (v245 <= v254)
        {
          log_OutText(v255, "FE_LID", 5, 0, "ML2 LID NN thresholding set to %f triggered: falling back on main language", v236, v237, v238, COERCE__INT64(v254));
          v249 = *(a1 + 1930);
        }

        else
        {
          log_OutText(v255, "FE_LID", 5, 0, "ML2 LID NN thresholding set to %f triggered: falling back on language smoothing", v236, v237, v238, COERCE__INT64(v253));
          v249 = -3;
        }
      }

      *(v195 + 4 * v196) = v249;
LABEL_327:
      lidword_AdvanceSkippingSpacesInNormEW(&v299, &v298);
      ++v196;
      v194 = v298;
      v193 = v299;
      v38 += 512;
      if (v298 == v299)
      {
        goto LABEL_328;
      }
    }
  }

  v274 = a1 + 133116;
  v42 = 1;
  v291 = a1 + 2044;
  while (1)
  {
    if (!*v40 || v41 > 0xFFu)
    {
      goto LABEL_241;
    }

    v43 = v41;
    if (*(v293 + 4 * v41) == -4)
    {
      goto LABEL_240;
    }

    v288 = v41;
    v45 = v298;
    v44 = v299;
    v306[0] = 0;
    v306[1] = 0;
    *(v307 + 6) = 0;
    v307[0] = 0;
    v282 = *(a1 + 1088);
    v285 = v41;
    v305 = 0;
    v304 = 0;
    v303 = 0;
    v302 = 0;
    v310[0] = 0;
    *&__c[1] = 0;
    __c[0] = 0;
    v46 = *v298;
    *v298 = 0;
    LOWORD(v308) = 1;
    __s = v44;
    Langs = (*(*(a1 + 64) + 96))(*(a1 + 48), *(a1 + 56), "ml2mw");
    if ((Langs & 0x80000000) != 0)
    {
      goto LABEL_338;
    }

    if (v308)
    {
      v48 = 0;
      do
      {
        *(v313 + v48) = LH_atou(*(v310[0] + 8 * v48));
        ++v48;
      }

      while (v48 < v308);
      ssft_qsort(v313, v308, 1, compare_2);
      if (v308)
      {
        v52 = 0;
        while (1)
        {
          *v298 = v46;
          v53 = __s;
          if (*__s)
          {
            v53 = __s;
            do
            {
              v54 = strlen(v53);
              if (utf8_BelongsToSet(0, v53, 0, v54))
              {
                break;
              }

              v53 += Utf8_LengthInBytes(v53, 1);
            }

            while (*v53);
          }

          *&__c[3] = v53;
          v55 = *v53;
          v56 = *(v313 + v52);
          if (*v53 && v56 >= 2)
          {
            v57 = 1;
            do
            {
              lidword_AdvanceToEndMultiword(&__c[3]);
              ++v57;
              v53 = *&__c[3];
              v55 = **&__c[3];
              v56 = *(v313 + v52);
            }

            while (**&__c[3] && v56 > v57);
          }

          else
          {
            v57 = 1;
          }

          if (v56 == v57)
          {
            *v53 = 0;
            log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "ML2 LID multi word case-sensitive lookup : %s", v49, v50, v51, __s);
            *&__c[1] = 1;
            Langs = (*(*(a1 + 64) + 152))(*(a1 + 48), *(a1 + 56), "ml2", __s, v310, &__c[1], __c, *(a1 + 2040));
            if ((Langs & 0x80000000) != 0)
            {
              goto LABEL_338;
            }

            *v53 = v55;
            if (*&__c[1] == 1)
            {
              break;
            }
          }

          if (++v52 >= v308)
          {
            v45 = v298;
            goto LABEL_46;
          }
        }

        v103 = *v310[0];
        if (!strcmp(*v310[0], "all"))
        {
          v108 = -3;
        }

        else
        {
          v107 = *(a1 + 1928);
          if (*(a1 + 1928))
          {
            v108 = 0;
            v109 = *(a1 + 1936);
            do
            {
              if (!strcmp((v109 + 8 * v108), v103))
              {
                break;
              }

              ++v108;
            }

            while (v107 > v108);
          }

          else
          {
            v108 = 0;
          }
        }

        v42 = *(v313 + v52);
        if (*(v313 + v52))
        {
          v128 = (v291 + (v288 << 9) + 4 * v108);
          v129 = (v274 + 4 * v288);
          v130 = *(v313 + v52);
          do
          {
            if ((v108 & 0x8000) == 0)
            {
              *v128 = 1;
            }

            *v129++ = v108;
            v128 += 128;
            --v130;
          }

          while (v130);
        }

        v131 = *(*(a1 + 16) + 32);
        if (v108 < 0)
        {
          log_OutText(v131, "FE_LID", 5, 0, "ML2 LID found ambiguously in ML2 lexicon", v104, v105, v106, v259);
        }

        else
        {
          log_OutText(v131, "FE_LID", 5, 0, "ML2 LID found unambiguously in ML2 lexicon: %s", v104, v105, v106, *(a1 + 1944) + 8 * v108);
        }

        v39 = v300;
        if (*v300 && *(v313 + v52) >= 2u)
        {
          v132 = 1;
          do
          {
            lidword_AdvanceToEndMultiword(&v300);
            v39 = v300;
            if (!*v300)
            {
              break;
            }

            ++v132;
          }

          while (v132 < *(v313 + v52));
        }

        v298 = v53;
        a4 = v290;
        if (v42 > 1)
        {
LABEL_172:
          v23 = v287;
          v38 = a1 + 2044;
          v43 = v285;
          goto LABEL_240;
        }
      }

      else
      {
LABEL_46:
        *v45 = v46;
        if ((Langs & 0x80000000) != 0)
        {
          goto LABEL_338;
        }

        v39 = v300;
      }
    }

    else
    {
      *v45 = v46;
    }

    v310[0] = 0;
    *&__c[1] = 0;
    __c[0] = 0;
    v58 = *v39;
    *v39 = 0;
    LOWORD(v308) = 1;
    Langs = (*(*(a1 + 64) + 96))(*(a1 + 48), *(a1 + 56), "ml2mw", v40, v310, &v308, __c);
    if ((Langs & 0x80000000) != 0)
    {
      goto LABEL_338;
    }

    if (v308)
    {
      v59 = 0;
      do
      {
        *(v313 + v59) = LH_atou(*(v310[0] + 8 * v59));
        ++v59;
      }

      while (v59 < v308);
      ssft_qsort(v313, v308, 1, compare_2);
      if (v308)
      {
        v63 = 0;
        while (1)
        {
          *v300 = v58;
          v64 = v40;
          if (*v40)
          {
            v64 = v40;
            do
            {
              v65 = strlen(v64);
              if (utf8_BelongsToSet(0, v64, 0, v65))
              {
                break;
              }

              v64 += Utf8_LengthInBytes(v64, 1);
            }

            while (*v64);
          }

          *&__c[3] = v64;
          v66 = *v64;
          v67 = *(v313 + v63);
          if (*v64 && v67 >= 2)
          {
            v68 = 1;
            do
            {
              lidword_AdvanceToEndMultiword(&__c[3]);
              ++v68;
              v64 = *&__c[3];
              v66 = **&__c[3];
              v67 = *(v313 + v63);
            }

            while (**&__c[3] && v67 > v68);
          }

          else
          {
            v68 = 1;
          }

          if (v67 == v68)
          {
            *v64 = 0;
            log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "ML2 LID multi word lookup : %s", v60, v61, v62, v40);
            *&__c[1] = 1;
            Langs = (*(*(a1 + 64) + 152))(*(a1 + 48), *(a1 + 56), "ml2", v40, v310, &__c[1], __c, *(a1 + 2040));
            if ((Langs & 0x80000000) != 0)
            {
              goto LABEL_338;
            }

            *v64 = v66;
            if (*&__c[1] == 1)
            {
              break;
            }
          }

          if (++v63 >= v308)
          {
            goto LABEL_70;
          }
        }

        v113 = *v310[0];
        if (!strcmp(*v310[0], "all"))
        {
          v118 = -3;
        }

        else
        {
          v117 = *(a1 + 1928);
          if (*(a1 + 1928))
          {
            v118 = 0;
            v119 = *(a1 + 1936);
            do
            {
              if (!strcmp((v119 + 8 * v118), v113))
              {
                break;
              }

              ++v118;
            }

            while (v117 > v118);
          }

          else
          {
            v118 = 0;
          }
        }

        v133 = *(v313 + v63);
        if (*(v313 + v63))
        {
          v134 = (v291 + (v288 << 9) + 4 * v118);
          v135 = (v274 + 4 * v288);
          v136 = *(v313 + v63);
          do
          {
            if ((v118 & 0x8000) == 0)
            {
              *v134 = 1;
            }

            *v135++ = v118;
            v134 += 128;
            --v136;
          }

          while (v136);
        }

        v137 = *(*(a1 + 16) + 32);
        if (v118 < 0)
        {
          log_OutText(v137, "FE_LID", 5, 0, "ML2 LID found ambiguously in ML2 lexicon", v114, v115, v116, v260);
        }

        else
        {
          log_OutText(v137, "FE_LID", 5, 0, "ML2 LID found unambiguously in ML2 lexicon: %s", v114, v115, v116, *(a1 + 1944) + 8 * v118);
        }

        if (*v298)
        {
          v138 = 1;
          do
          {
            if (v138 >= *(v313 + v63))
            {
              break;
            }

            lidword_AdvanceToEndMultiword(&v298);
            ++v138;
          }

          while (*v298);
        }

        v300 = v64;
        v42 = v133;
        a4 = v290;
        if (v133 > 1)
        {
          goto LABEL_172;
        }
      }

      else
      {
LABEL_70:
        v64 = v300;
        *v300 = v58;
        if ((Langs & 0x80000000) != 0)
        {
          goto LABEL_338;
        }
      }
    }

    else
    {
      v64 = v300;
      *v300 = v58;
    }

    v69 = *v64;
    *v64 = 0;
    HIWORD(v304) = 0;
    v70 = (*(*(a1 + 64) + 120))(*(a1 + 48), *(a1 + 56), v40, 20, "femwtn", "", &v305, &v304 + 2);
    if ((v70 & 0x80000000) != 0)
    {
      break;
    }

    if (!HIWORD(v304))
    {
      goto LABEL_94;
    }

    v74 = 0;
    do
    {
      v312[v74] = LH_atou(*(v305 + 8 * v74));
      ++v74;
    }

    while (v74 < HIWORD(v304));
    ssft_qsort(v312, HIWORD(v304), 1, compare_2);
    if (!HIWORD(v304))
    {
LABEL_94:
      v81 = v300;
      *v300 = v69;
      v82 = v298;
      v310[0] = 0;
      v310[1] = 0;
      *(v311 + 6) = 0;
      v311[0] = 0;
      v83 = *(a1 + 1088);
      *&__c[3] = 0;
      __c[0] = 0;
      v84 = *v81;
      v85 = *v298;
      v308 = 0;
      *v81 = 0;
      *v82 = 0;
      log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "ML2 LID word lookup : %s", v71, v72, v73, v40);
      *&__c[1] = 1;
      Langs = (*(*(a1 + 64) + 152))(*(a1 + 48), *(a1 + 56), "ml2", __s, &__c[3], &__c[1], __c, *(a1 + 2040));
      if ((Langs & 0x80000000) != 0)
      {
        goto LABEL_235;
      }

      v283 = v85;
      v38 = a1 + 2044;
      v275 = v84;
      if (*&__c[1])
      {
        goto LABEL_96;
      }

      v269 = v83;
      if (strcmp(v40, __s))
      {
        *&__c[1] = 1;
        Langs = (*(*(a1 + 64) + 152))(*(a1 + 48), *(a1 + 56), "ml2", v40, &__c[3], &__c[1], __c, *(a1 + 2040));
        v23 = v287;
        a4 = v290;
        if ((Langs & 0x80000000) == 0)
        {
          v83 = v269;
          if (!*&__c[1])
          {
            goto LABEL_107;
          }

LABEL_96:
          v86 = v83;
          v272 = v82;
          v87 = **&__c[3];
          v88 = strchr(**&__c[3], __c[0]);
          v270 = v81;
          if (v88)
          {
            *v88 = 0;
            v87 = **&__c[3];
          }

          v23 = v287;
          a4 = v290;
          if (strcmp(v87, "all"))
          {
            v92 = *(a1 + 1928);
            if (*(a1 + 1928))
            {
              v93 = 0;
              v94 = *(a1 + 1936);
              while (strcmp(v94, v87))
              {
                ++v93;
                v94 += 8;
                if (v92 == v93)
                {
                  goto LABEL_132;
                }
              }

              LOWORD(v92) = v93;
LABEL_132:
              v38 = a1 + 2044;
            }

            *(v38 + (v288 << 9) + 4 * v92) = 1;
            *(v293 + 4 * v288) = v92;
            log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "ML2 LID found unambiguously in ML2 lexicon: %s", v89, v90, v91, *(a1 + 1944) + 8 * v92);
            *v270 = v275;
            *v272 = v283;
            goto LABEL_238;
          }

          *(v293 + 4 * v288) = -3;
          Langs = calcWScore(a1, v40, "merwfrq_latn", 1, *(v86 + 8), (v291 + (v288 << 9)), v310);
          if ((Langs & 0x80000000) == 0)
          {
            log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "ML2 LID found ambiguously in ML2 lexicon", v110, v111, v112, v261);
            *v81 = v275;
            *v272 = v283;
LABEL_119:
            calcWPenalties(a1, v285, 0, v98, v99, v100, v101, v102, v263);
          }
        }

        goto LABEL_238;
      }

LABEL_107:
      *&__c[1] = 0;
      v262 = 0;
      Langs = (*(*(a1 + 64) + 240))(*(a1 + 48), *(a1 + 56), "tn", v40, &__c[3], &__c[1], __c, *(a1 + 134920));
      v23 = v287;
      a4 = v290;
      if ((Langs & 0x80000000) != 0)
      {
        goto LABEL_238;
      }

      if (*&__c[1])
      {
        log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "ML2 LID TN word : %s", v95, v96, v97, v40);
        *(v293 + 4 * v288) = -3;
        Langs = calcWScore(a1, v40, "merwfrq_latn", 1, *(v269 + 8), (v291 + (v288 << 9)), v310);
        if ((Langs & 0x80000000) == 0)
        {
          *v81 = v275;
          *v82 = v283;
          goto LABEL_119;
        }

LABEL_238:
        v42 = 1;
        goto LABEL_239;
      }

      v271 = v81;
      if (*v40)
      {
        v139 = 1;
        v140 = v40;
        do
        {
          if (!v139)
          {
            goto LABEL_178;
          }

          v141 = strlen(v140);
          v142 = utf8_BelongsToSet(6u, v140, 0, v141);
          v139 = v142 == 0;
          v140 += Utf8_LengthInBytes(v140, 1);
        }

        while (*v140);
        if (v142)
        {
LABEL_178:
          log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "ML2 LID digit word : %s", v95, v96, v97, v40);
          v268 = 1;
          goto LABEL_179;
        }

        v268 = 0;
LABEL_179:
        if (*v40)
        {
          v143 = 1;
          v144 = v40;
          do
          {
            if (!v143)
            {
              LODWORD(v145) = 0;
              goto LABEL_190;
            }

            v145 = utf8_strchr(*(a1 + 134928), v144);
            if (!v145)
            {
              v143 = 0;
            }

            v144 += Utf8_LengthInBytes(v144, 1);
          }

          while (*v144);
          if (v145)
          {
            goto LABEL_188;
          }

LABEL_190:
          if (*__s)
          {
            v146 = __s;
            while (lidword_IsUppercase(v146) || utf8_strchr(*(a1 + 134944), v146))
            {
              v146 += Utf8_LengthInBytes(v146, 1);
              if (!*v146)
              {
                goto LABEL_195;
              }
            }

            v147 = 0;
          }

          else
          {
LABEL_195:
            log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "ML2 LID acronym word : %s", v95, v96, v97, __s);
            v147 = 1;
          }

          v273 = v82;
          if (*v40)
          {
            v148 = 0;
            v149 = v40;
            while (utf8_strchr(*(a1 + 134952), v149) || utf8_strchr(*(a1 + 134944), v149))
            {
              v149 += Utf8_LengthInBytes(v149, 1);
              ++v148;
              if (!*v149)
              {
                if (v148 < 4u)
                {
                  break;
                }

                log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "ML2 LID consonant word : %s", v150, v151, v152, v40);
                v153 = 1;
                goto LABEL_204;
              }
            }
          }

          v153 = 0;
LABEL_204:
          v154 = strchr(v40, 64);
          if (!v154 || !strchr(v154, 46))
          {
            v159 = 1u;
            v160 = "http";
            while (!strstr(v40, v160))
            {
              v160 = szURL[v159++];
              if (v159 == 15)
              {
                v158 = 0;
                goto LABEL_211;
              }
            }
          }

          log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "ML2 LID URL or EMail : %s", v155, v156, v157, v40);
          v158 = 1;
LABEL_211:
          if (((v268 | v145 | v147) & 1) != 0 || v158 | v153)
          {
            *(v293 + 4 * v288) = *(a1 + 1930);
            *v271 = v275;
            *v273 = v283;
            a4 = v290;
            if (v285)
            {
              v172 = (v288 - 1);
              if (*(v293 + 4 * v172) == *(a1 + 1930))
              {
                v38 = a1 + 2044;
                memcpy((v291 + (v288 << 9)), (v291 + (v172 << 9)), 0x200uLL);
                goto LABEL_238;
              }
            }
          }

          else
          {
            v161 = (v291 + (v288 << 9));
            Langs = calcWScore(a1, v40, "merwfrq_latn", 1, *(v269 + 8), v161, v310);
            if ((Langs & 0x80000000) != 0)
            {
              goto LABEL_236;
            }

            if (lidword_OutOfLID2(a1, v285))
            {
              *(v293 + 4 * v288) = *(a1 + 1930);
              log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "ML2 LID fallback to the main language (language code is not in LID2 subset): %s", v164, v165, v166, v40);
              *v271 = v275;
              *v273 = v283;
              calcWPenalties(a1, v285, 0, v167, v168, v169, v170, v171, v265);
              goto LABEL_236;
            }

            if (!*(a1 + 134976))
            {
LABEL_233:
              *v271 = v275;
              *v273 = v283;
              v182 = v285;
              v183 = a1;
              v184 = 1;
              goto LABEL_234;
            }

            v173 = *(v269 + 8);
            if (*(v269 + 8))
            {
              do
              {
                if (*v161++)
                {
                  goto LABEL_233;
                }
              }

              while (--v173);
            }

            Langs = lidmde_FindLangs(a1, v40, v271, __s, v273, v313, &v308, v166);
            if ((Langs & 0x80000000) == 0)
            {
              if (v308)
              {
                *(v293 + 4 * v288) = *(a1 + 1930);
                log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "ML2 LID (MDE) fallback to the main language (language code is not in LID2 subset): %s", v175, v176, v177, v40);
              }

              else
              {
                v178 = lidmde_SingleLang(v313, *(a1 + 1928));
                if (v178 < 0)
                {
                  if (!lidmde_MainLangPlusSomeOtherLangs(v313, *(a1 + 1930), *(a1 + 1928)))
                  {
                    goto LABEL_233;
                  }

                  *(v293 + 4 * v288) = -3;
                  log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "ML2 LID (MDE) found ambiguously", v164, v165, v166, v262);
                }

                else
                {
                  *(v293 + 4 * v288) = v178;
                  log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "ML2 LID (MDE) found unambiguously: %s", v179, v180, v181, *(a1 + 1944) + 8 * v178);
                }
              }

              *v271 = v275;
              *v273 = v283;
              v182 = v285;
              v183 = a1;
              v184 = 0;
LABEL_234:
              calcWPenalties(v183, v182, v184, v162, v163, v164, v165, v166, v262);
            }

LABEL_235:
            v23 = v287;
LABEL_236:
            a4 = v290;
          }

          v38 = a1 + 2044;
          goto LABEL_238;
        }
      }

      else
      {
        v268 = 0;
      }

LABEL_188:
      log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "ML2 LID punctuation word : %s", v95, v96, v97, v40);
      LODWORD(v145) = 1;
      goto LABEL_190;
    }

    v75 = 0;
    while (1)
    {
      *v300 = v69;
      v76 = v40;
      if (*v40)
      {
        v76 = v40;
        do
        {
          v77 = strlen(v76);
          if (utf8_BelongsToSet(0, v76, 0, v77))
          {
            break;
          }

          v76 += Utf8_LengthInBytes(v76, 1);
        }

        while (*v76);
      }

      v302 = v76;
      v78 = *v76;
      v79 = v312[v75];
      if (*v76 && v79 >= 2)
      {
        v80 = 1;
        do
        {
          lidword_AdvanceToEndMultiword(&v302);
          ++v80;
          v76 = v302;
          v78 = *v302;
          v79 = v312[v75];
        }

        while (*v302 && v79 > v80);
      }

      else
      {
        v80 = 1;
      }

      if (v79 == v80)
      {
        *v76 = 0;
        log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "ML2 LID TN multi word lookup : %s", v71, v72, v73, v40);
        LOWORD(v304) = 0;
        Langs = (*(*(a1 + 64) + 240))(*(a1 + 48), *(a1 + 56), "tn", v40, &v305, &v304, &v303, *(a1 + 134920), 0);
        if ((Langs & 0x80000000) != 0)
        {
          goto LABEL_338;
        }

        *v76 = v78;
        if (v304 == 1)
        {
          break;
        }
      }

      if (++v75 >= HIWORD(v304))
      {
        goto LABEL_94;
      }
    }

    log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "ML2 LID TN multi word : %s", v71, v72, v73, v40);
    if (v312[v75])
    {
      v120 = 0;
      v276 = v300;
      v121 = (v291 + (v288 << 9));
      do
      {
        *(v274 + 4 * v288 + 4 * v120) = -3;
        Langs = calcWScore(a1, v40, "merwfrq_latn", 1, *(v282 + 8), v121, v306);
        if ((Langs & 0x80000000) != 0)
        {
          goto LABEL_338;
        }

        *v276 = v69;
        calcWPenalties(a1, (v288 + v120++), 0, v122, v123, v124, v125, v126, v264);
        v121 += 512;
      }

      while (v120 < v312[v75]);
      v42 = v312[v75];
    }

    else
    {
      v42 = 0;
    }

    a4 = v290;
    if (*v298)
    {
      v127 = 1;
      do
      {
        if (v127 >= v312[v75])
        {
          break;
        }

        lidword_AdvanceToEndMultiword(&v298);
        ++v127;
      }

      while (*v298);
    }

    v300 = v76;
    v23 = v287;
    v38 = a1 + 2044;
LABEL_239:
    v43 = v285;
    if ((Langs & 0x80000000) != 0)
    {
      inserted = Langs;
      goto LABEL_343;
    }

LABEL_240:
    lidword_AdvanceSkippingSpacesInNormEW(&v301, &v300);
    lidword_AdvanceSkippingSpacesInNormEW(&v299, &v298);
    v39 = v300;
    v40 = v301;
    v41 = v42 + v43;
    if (v300 == v301)
    {
      goto LABEL_241;
    }
  }

  Langs = v70;
LABEL_338:
  inserted = Langs;
  v23 = v287;
LABEL_343:
  v25 = v281;
  v186 = v286;
LABEL_331:
  heap_Free(*(*(a1 + 16) + 8), v23);
  if (v25)
  {
    heap_Free(*(*(a1 + 16) + 8), v25);
  }

  if (v186)
  {
    heap_Free(*(*(a1 + 16) + 8), v186);
  }

LABEL_335:
  v256 = *MEMORY[0x1E69E9840];
  return inserted;
}

uint64_t lidword_normalizedDup(uint64_t a1, char *a2, unsigned int a3, _WORD *a4, int a5)
{
  v6 = a4;
  v52 = *MEMORY[0x1E69E9840];
  a4[4] = 0;
  __s2[0] = 0;
  result = heap_Alloc(*(*(a1 + 16) + 8), (4 * a3) | 1);
  if (result)
  {
    v43 = result;
    if (a3)
    {
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v44 = a1;
      v45 = 0;
      v48 = 0;
      v49 = 0;
      v14 = 0;
      v15 = a1 + 0x20000;
      v42 = v6 + 5;
      v41 = a5;
      v16 = __s2;
      if (!a5)
      {
        v16 = __s1;
      }

      __src = v16;
      v46 = a3;
      v47 = 1;
      v17 = result;
      while (1)
      {
        v18 = &a2[v14];
        if (utf8_strchr(*(v15 + 3856), v18))
        {
          break;
        }

        v20 = strlen(&a2[v14]);
        if (!utf8_BelongsToSet(0, &a2[v14], 0, v20))
        {
          if (v13)
          {
            v23 = v6[4];
            if (v23 > 9)
            {
              goto LABEL_56;
            }

            if (v47)
            {
              if (&v17[-v43 - v45 - v13 - v12 - 2] < 3)
              {
LABEL_55:
                v6[4] = v23 + 1;
                v42[v23] = v45;
                goto LABEL_56;
              }
            }

            else if (v48)
            {
              goto LABEL_56;
            }

            if (v49 | v11)
            {
              goto LABEL_55;
            }

LABEL_56:
            v12 = 0;
            v45 = (v17 - v43);
            ++*v6;
            if (!v48 || v49)
            {
              v47 = 1;
              v24 = 0;
              v25 = 0;
            }

            else
            {
              v24 = 0;
              v25 = 0;
              v12 = 0;
              ++v6[1];
              v47 = 1;
            }
          }

          else
          {
            v24 = v48;
            v25 = v49;
          }

          v26 = strlen(&a2[v14]);
          v27 = utf8_BelongsToSet(6u, &a2[v14], 0, v26);
          if (!v27)
          {
            v24 = 1;
          }

          v48 = v24;
          if (v27)
          {
            v25 = 1;
          }

          v28 = utf8_determineUTF8CharLength(*v18);
          v49 = v25;
          if (v28 < 2)
          {
            v29 = *v18;
            if (v41)
            {
              LOBYTE(v29) = ssft_tolower(v29);
            }

            *v17 = v29;
            v31 = 0;
            if (v47)
            {
              v30 = strlen(&a2[v14]);
              if (utf8_BelongsToSet(6u, &a2[v14], 0, v30) || *v17 != *v18)
              {
                v31 = 1;
              }
            }

            v47 = v31;
            v13 = 0;
            v11 = 0;
            ++v17;
            v21 = 1;
          }

          else
          {
            v21 = v28;
            __s2[0] = 0;
            __strncpy_chk();
            __s1[v21] = 0;
            utf8_ToLower(__s1, 0, __s2);
            v47 = v47 && strcmp(__s1, __s2);
            strcpy(v17, __src);
            v13 = 0;
            v11 = 0;
            v17 += strlen(__src);
          }

          goto LABEL_29;
        }

        *v17++ = 32;
        v21 = utf8_determineUTF8CharLength(*v18);
        ++v13;
LABEL_29:
        v14 += v21;
        if (v14 >= v46)
        {
          v32 = v48 == 0;
          v33 = v49 != 0;
          v34 = v11 != 0;
          v35 = v6[4];
          if (v35 >= 0xA)
          {
            goto LABEL_103;
          }

          if (v47)
          {
            v36 = v12;
            v37 = v13;
            result = v43;
            v38 = v45;
LABEL_99:
            if (&v17[-result - v38 - v37 - v36 - 2] >= 3 && !v33)
            {
LABEL_101:
              if (v34)
              {
                goto LABEL_102;
              }

LABEL_103:
              ++*v6;
              if (v32)
              {
                result = v43;
              }

              else
              {
                result = v43;
                if (!v33)
                {
                  ++v6;
                  goto LABEL_108;
                }
              }

              goto LABEL_109;
            }
          }

          else
          {
            if (v48)
            {
              v32 = 0;
              goto LABEL_103;
            }

            v32 = 1;
            LOWORD(v38) = v45;
            if (!v49)
            {
              goto LABEL_101;
            }
          }

LABEL_102:
          v6[4] = v35 + 1;
          v6[v35 + 5] = v38;
          goto LABEL_103;
        }
      }

      if (!v13)
      {
        v22 = v44;
        goto LABEL_27;
      }

      v19 = v6[4];
      if (v19 <= 9)
      {
        if (v47)
        {
          if (&v17[-v43 - v45 - v13 - v12 - 2] < 3)
          {
            goto LABEL_22;
          }
        }

        else if (v48)
        {
          goto LABEL_23;
        }

        if (v49 | v11)
        {
LABEL_22:
          v6[4] = v19 + 1;
          v42[v19] = v45;
        }
      }

LABEL_23:
      v12 = 0;
      v45 = (v17 - v43);
      ++*v6;
      v22 = v44;
      if (!v48 || v49)
      {
        v47 = 1;
        v48 = 0;
        v49 = 0;
        v11 = 0;
      }

      else
      {
        v48 = 0;
        v49 = 0;
        v12 = 0;
        v11 = 0;
        ++v6[1];
        v47 = 1;
      }

LABEL_27:
      if (utf8_strchr(*(v15 + 3864), &a2[v14]))
      {
LABEL_28:
        v21 = utf8_determineUTF8CharLength(*v18);
        strncpy(v17, &a2[v14], v21);
        v13 = 0;
        ++v12;
        v11 = 1;
        v17 += v21;
        goto LABEL_29;
      }

      if (!v14 || lidword_CharAtOffsetSatisfies(v22, a2, v14, -1, lidword_IsSpace) || lidword_CharAtOffsetSatisfies(v22, a2, v14, -1, lidword_IsPunc) && (!lidword_CharAtOffsetSatisfies(v22, a2, v14, -2, lidword_True) || lidword_CharAtOffsetSatisfies(v22, a2, v14, -2, lidword_IsSpace)))
      {
        if (!lidword_CharAtOffsetSatisfies(v22, a2, v14, 1, lidword_True) || lidword_CharAtOffsetSatisfies(v22, a2, v14, 1, lidword_IsSpace) || !lidword_CharAtOffsetSatisfies(v22, a2, v14, 1, lidword_IsPunc) && lidword_CharAtOffsetSatisfies(v22, a2, v14, 2, lidword_IsPunc) || lidword_CharAtOffsetSatisfies(v22, a2, v14, 1, lidword_IsPunc) && (!lidword_CharAtOffsetSatisfies(v22, a2, v14, 2, lidword_True) || lidword_CharAtOffsetSatisfies(v22, a2, v14, 2, lidword_IsSpace)) || lidword_CharAtOffsetSatisfies(v22, a2, v14, 1, lidword_IsPunc) && lidword_CharAtOffsetSatisfies(v22, a2, v14, 2, lidword_IsPunc) && (!lidword_CharAtOffsetSatisfies(v22, a2, v14, 3, lidword_True) || lidword_CharAtOffsetSatisfies(v22, a2, v14, 3, lidword_IsSpace)))
        {
          goto LABEL_28;
        }

        if (!v14)
        {
          goto LABEL_49;
        }
      }

      if (lidword_CharAtOffsetSatisfies(v22, a2, v14, -1, lidword_IsSpace) || lidword_CharAtOffsetSatisfies(v22, a2, v14, -1, lidword_IsPunc) && (!lidword_CharAtOffsetSatisfies(v22, a2, v14, -2, lidword_True) || lidword_CharAtOffsetSatisfies(v22, a2, v14, -2, lidword_IsSpace)) || !lidword_CharAtOffsetSatisfies(v22, a2, v14, 1, lidword_True) || lidword_CharAtOffsetSatisfies(v22, a2, v14, 1, lidword_IsSpace) || !lidword_CharAtOffsetSatisfies(v22, a2, v14, 1, lidword_IsPunc) && lidword_CharAtOffsetSatisfies(v22, a2, v14, 2, lidword_IsPunc) || lidword_CharAtOffsetSatisfies(v22, a2, v14, 1, lidword_IsPunc) && (!lidword_CharAtOffsetSatisfies(v22, a2, v14, 2, lidword_True) || lidword_CharAtOffsetSatisfies(v22, a2, v14, 2, lidword_IsSpace)) || lidword_CharAtOffsetSatisfies(v22, a2, v14, 1, lidword_IsPunc) && lidword_CharAtOffsetSatisfies(v22, a2, v14, 2, lidword_IsPunc) && (!lidword_CharAtOffsetSatisfies(v22, a2, v14, 3, lidword_True) || lidword_CharAtOffsetSatisfies(v22, a2, v14, 3, lidword_IsSpace)))
      {
LABEL_49:
        v21 = utf8_determineUTF8CharLength(*v18);
        v13 = 0;
        goto LABEL_29;
      }

      goto LABEL_28;
    }

    v35 = v6[4];
    if (v35 < 0xA)
    {
      v33 = 0;
      v38 = 0;
      v37 = 0;
      v36 = 0;
      v34 = 0;
      v32 = 1;
      v17 = result;
      goto LABEL_99;
    }

    v17 = result;
LABEL_108:
    ++*v6;
LABEL_109:
    *v17 = 0;
  }

  v39 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t lidword_CheckLangTags(uint64_t a1, unsigned __int8 *a2, uint64_t *a3, unsigned int *a4)
{
  v6 = a2;
  v20 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v18 = a2;
  result = lidword_AdvanceSkippingSpacesInNormSW(&v18, &v17);
  v9 = v18;
  if (v17 != v18)
  {
    v10 = 0;
    do
    {
      if (!*v9 || v10 > 0xFF)
      {
        break;
      }

      v11 = *a3;
      v12 = *a4;
      __dst[0] = 0;
      if (v12 >= 2)
      {
        v13 = *(v11 + 12) + v9 - v6;
        for (i = 1; i < v12; ++i)
        {
          v15 = v11 + 32 * i;
          if (v13 < *(v15 + 12))
          {
            break;
          }

          if (*v15 == 36)
          {
            strncpy(__dst, *(v15 + 24), 0x13uLL);
          }
        }

        if (__dst[0] && (!strstr(__dst, *(a1 + 1912)) && !strstr(__dst, "normal") || strstr(__dst, "noautolid")))
        {
          *(a1 + 133116 + 4 * v10) = -4;
        }
      }

      result = lidword_AdvanceSkippingSpacesInNormEW(&v18, &v17);
      ++v10;
      v9 = v18;
    }

    while (v17 != v18);
  }

  v16 = *MEMORY[0x1E69E9840];
  return result;
}

unsigned __int8 **lidword_AdvanceSkippingSpacesInNormSW(unsigned __int8 **result, unsigned __int8 **a2)
{
  v3 = *result;
  if (**result)
  {
    v4 = result;
    do
    {
      v5 = strlen(v3);
      result = utf8_BelongsToSet(0, v3, 0, v5);
      v3 = *v4;
      if (!result)
      {
        break;
      }

      result = Utf8_LengthInBytes(*v4, 1);
      v3 = &(*v4)[result];
      *v4 = v3;
    }

    while (*v3);
  }

  while (1)
  {
    *a2 = v3;
    if (!*v3)
    {
      break;
    }

    v6 = strlen(v3);
    result = utf8_BelongsToSet(0, v3, 0, v6);
    if (result)
    {
      break;
    }

    result = Utf8_LengthInBytes(*a2, 1);
    v3 = &(*a2)[result];
  }

  return result;
}

uint64_t lidword_AdvanceSkippingSpacesInNormEW(uint64_t result, unsigned __int8 **a2)
{
  v3 = result;
  for (i = *a2; *i; *a2 = i)
  {
    v5 = strlen(i);
    result = utf8_BelongsToSet(0, i, 0, v5);
    i = *a2;
    if (!result)
    {
      break;
    }

    result = Utf8_LengthInBytes(*a2, 1);
    i = &(*a2)[result];
  }

  *v3 = i;
  for (j = *a2; *j; *a2 = j)
  {
    v7 = strlen(j);
    result = utf8_BelongsToSet(0, j, 0, v7);
    if (result)
    {
      break;
    }

    result = Utf8_LengthInBytes(*a2, 1);
    j = &(*a2)[result];
  }

  return result;
}

uint64_t lidword_ExtractFeats(uint64_t a1, unsigned __int8 *a2, int a3)
{
  v16 = 0;
  v17 = a2;
  result = lidword_AdvanceSkippingSpacesInNormSW(&v17, &v16);
  v6 = v16;
  v7 = v17;
  if (v16 != v17)
  {
    v8 = 0;
    v9 = a1 + 134140;
    v10 = a1 + 134396;
    v11 = a1 + 134652;
    v15 = a3 - 1;
    do
    {
      if (!*v7 || v8 > 0xFF)
      {
        break;
      }

      PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(v7, v6 - v7);
      if (*v7)
      {
        if (lidword_IsUppercase(v7))
        {
          *(v9 + v8) = 1;
        }

        if (*v7 && utf8_strchr(*(a1 + 134928), v7))
        {
          *(v10 + v8) = 1;
          if (v8)
          {
            *(v11 + (v8 - 1)) = 1;
          }

          v13 = v7;
          if (*v7)
          {
            v13 = v7;
            while (utf8_strchr(*(a1 + 134928), v13))
            {
              v13 += Utf8_LengthInBytes(v13, 1);
              if (!*v13)
              {
                goto LABEL_16;
              }
            }

            v17 = v13;
            if (*v13 && lidword_IsUppercase(v13))
            {
              *(v9 + v8) = 1;
            }
          }

          else
          {
LABEL_16:
            v17 = v13;
          }
        }
      }

      v14 = &v7[PreviousUtf8Offset];
      if (*v14 && utf8_strchr(*(a1 + 134928), v14))
      {
        *(v11 + v8) = 1;
        if (v15 > v8)
        {
          *(v8 + v10 + 1) = 1;
        }
      }

      result = lidword_AdvanceSkippingSpacesInNormEW(&v17, &v16);
      ++v8;
      v6 = v16;
      v7 = v17;
    }

    while (v16 != v17);
  }

  return result;
}

uint64_t lidword_Smoothing(uint64_t result, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v9 = result;
    v10 = 0;
    v11 = 0;
    v21 = result + 133116;
    v12 = (result + 133120);
    v13 = 1 - a2;
    v14 = (result + 133112);
    do
    {
      v15 = v14[1];
      if (v15 + 3 <= 1)
      {
        if (a2 == 1 || v10)
        {
          if (!v10 || v13 || *v14 == *(v9 + 1930) || v15 != -2 || *v14 == -4)
          {
            if (!v10)
            {
              goto LABEL_19;
            }

            if (!v13)
            {
              goto LABEL_19;
            }

            v19 = *v14;
            if (*v14 == *(v9 + 1930) || v19 == -4 || v19 != v14[2])
            {
              goto LABEL_19;
            }

            v18 = (v21 + 4 * v11 - 4);
            v17 = "ML2 LID smoothing with previous word";
          }

          else
          {
            v17 = "ML2 LID smoothing with previous word";
            v18 = v14;
          }
        }

        else
        {
          v16 = *v12 != *(v9 + 1930) && v15 == -2;
          if (!v16 || (v17 = "ML2 LID smoothing with next word", v18 = v12, (*v12 & 0x80000000) != 0))
          {
LABEL_19:
            log_OutText(*(*(v9 + 16) + 32), "FE_LID", 5, 0, "ML2 LID fallback on main language", a6, a7, a8, v20);
            v15 = *(v9 + 1930);
            v14[1] = v15;
LABEL_28:
            result = log_OutText(*(*(v9 + 16) + 32), "FE_LID", 5, 0, "ML2 LID final prediction : %s", a6, a7, a8, *(v9 + 1944) + 8 * v15);
            goto LABEL_29;
          }
        }

        result = log_OutText(*(*(v9 + 16) + 32), "FE_LID", 5, 0, v17, a6, a7, a8, v20);
        v15 = *v18;
        v14[1] = *v18;
      }

      if ((v15 & 0x80000000) == 0)
      {
        goto LABEL_28;
      }

LABEL_29:
      ++v11;
      ++v13;
      --v10;
      ++v14;
    }

    while (v13 != 1);
  }

  return result;
}

uint64_t lidword_InsertLangTags(uint64_t a1, unsigned __int8 *a2, uint64_t *a3, unsigned int *a4, unsigned int *a5, int a6, uint64_t *a7, unsigned int *a8, unsigned int *a9)
{
  v37 = *MEMORY[0x1E69E9840];
  v34 = 0;
  v35 = a2;
  v32 = a2;
  lidword_AdvanceSkippingSpacesInNormSW(&v35, &v34);
  v13 = v34;
  v12 = v35;
  if (v34 != v35)
  {
    v14 = 0;
    inserted = 0;
    v16 = 0;
    v17 = 0;
    v18 = a1 + 133116;
    v28 = a6 - 1;
    while (1)
    {
      if (!*v12 || v14 > 0xFF)
      {
        goto LABEL_36;
      }

      v19 = *(v18 + 4 * v14);
      if ((v19 & 0x80000000) == 0 && !strstr((*(a1 + 1944) + 8 * v19), *(a1 + 1912)))
      {
        __strcpy_chk();
        __strcat_chk();
        v20 = v12 - v32;
        if (*a5 < 2)
        {
          v21 = a3;
        }

        else
        {
          v21 = a3;
          v22 = 1;
          do
          {
            v23 = *a3 + 32 * v22;
            if ((*(*a3 + 12) + v20) < *(v23 + 12))
            {
              break;
            }

            if (*v23 == 36)
            {
              v17 = *(v23 + 24);
            }

            ++v22;
          }

          while (*a5 > v22);
        }

        if (!v17)
        {
          v17 = "normal";
        }

        if (!strcmp(v17, __s2))
        {
          inserted = 0;
        }

        else
        {
          appended = hlp_AppendItemRaw32(a1, v21, a4, a5, 0x20u, 10);
          if ((appended & 0x80000000) != 0)
          {
            goto LABEL_37;
          }

          inserted = lidword_InsertLangMarker(a1, *v21, *a5, v20, __s2, 1, a7, a8, a9);
          v16 = v17;
          if ((inserted & 0x80000000) != 0)
          {
            goto LABEL_36;
          }
        }

        if (v28 == v14)
        {
          if (!v16)
          {
            goto LABEL_7;
          }
        }

        else
        {
          if (v28 <= v14)
          {
            goto LABEL_7;
          }

          if (*(v18 + 4 * v14) == *(v18 + 4 * v14 + 4) || v16 == 0)
          {
            goto LABEL_7;
          }
        }

        appended = hlp_AppendItemRaw32(a1, a3, a4, a5, 0x20u, 10);
        if ((appended & 0x80000000) != 0)
        {
LABEL_37:
          inserted = appended;
          goto LABEL_36;
        }

        inserted = lidword_InsertLangMarker(a1, *a3, *a5, v13 - v32, v16, 0, a7, a8, a9);
        if ((inserted & 0x80000000) != 0)
        {
          goto LABEL_36;
        }
      }

LABEL_7:
      lidword_AdvanceSkippingSpacesInNormEW(&v35, &v34);
      ++v14;
      v13 = v34;
      v12 = v35;
      if (v34 == v35)
      {
        goto LABEL_36;
      }
    }
  }

  inserted = 0;
LABEL_36:
  v26 = *MEMORY[0x1E69E9840];
  return inserted;
}

uint64_t lidword_Init(void *a1)
{
  v73 = *MEMORY[0x1E69E9840];
  v1 = 2345672714;
  memset(v72, 0, 256);
  memset(v71, 0, sizeof(v71));
  memset(__c, 0, sizeof(__c));
  if (!a1)
  {
    v1 = 2345672711;
    goto LABEL_55;
  }

  v3 = a1 + 0x4000;
  v69 = 0;
  __src = 0;
  v4 = a1[136];
  v5 = (a1 + 16871);
  *(a1 + 8433) = 0uLL;
  *(a1 + 8434) = 0uLL;
  *(a1 + 67480) = 0;
  *(a1 + 16871) = 0uLL;
  *(a1 + 16873) = 0uLL;
  *(a1 + 481) = 0;
  if ((paramc_ParamGetStr(*(a1[2] + 40), "ml2lid", &__src) & 0x80000000) == 0 && __src && *__src == 110 && __src[1] == 111 && !__src[2] || (lidword_GetU16Param(a1, "nrlanguages", a1 + 964) & 0x80000000) != 0)
  {
    LODWORD(v1) = -1949294572;
    goto LABEL_52;
  }

  *(a1 + 481) = 1;
  *(a1 + 1012) = 21;
  U16Param = lidword_GetU16Param(a1, "maxwordlen", a1 + 1012);
  if (U16Param < 0 && (U16Param & 0x1FFF) != 0x14)
  {
    goto LABEL_49;
  }

  *(a1 + 1013) = 100;
  U16Param = lidword_GetU16Param(a1, "embdim", a1 + 1013);
  if (U16Param < 0 && (U16Param & 0x1FFF) != 0x14)
  {
    goto LABEL_49;
  }

  *(a1 + 1014) = 1;
  U16Param = lidword_GetU16Param(a1, "contextlength", a1 + 1014);
  if (U16Param < 0 && (U16Param & 0x1FFF) != 0x14)
  {
    goto LABEL_49;
  }

  *(a1 + 1020) = 1;
  U16Param = lidword_GetU16Param(a1, "nrpart", a1 + 1020);
  if (U16Param < 0 && (U16Param & 0x1FFF) != 0x14)
  {
    goto LABEL_49;
  }

  *(a1 + 508) = 1061997773;
  U16Param = lidword_GetF32Param(a1, "nnthreshold", a1 + 508);
  if (U16Param < 0 && (U16Param & 0x1FFF) != 0x14)
  {
    goto LABEL_49;
  }

  *(a1 + 509) = 1064514355;
  U16Param = lidword_GetF32Param(a1, "ctxtnnthreshold", a1 + 509);
  if (U16Param < 0 && (U16Param & 0x1FFF) != 0x14)
  {
    goto LABEL_49;
  }

  __src = 0;
  U16Param = lidword_GetTextParam(a1, "punclist", &__src);
  if (U16Param < 0 && (U16Param & 0x1FFF) != 0x14)
  {
    goto LABEL_49;
  }

  v7 = __src;
  if (!__src)
  {
  }

  v8 = strlen(v7);
  v9 = heap_Alloc(*(a1[2] + 8), v8 + 1);
  v3[482] = v9;
  if (!v9)
  {
    goto LABEL_87;
  }

  strcpy(v9, __src);
  __src = 0;
  U16Param = lidword_GetTextParam(a1, "punccurrencylist", &__src);
  if (U16Param < 0 && (U16Param & 0x1FFF) != 0x14)
  {
    goto LABEL_49;
  }

  v14 = __src;
  if (!__src)
  {
    v14 = "€£$";
    __src = "€£$";
  }

  v15 = strlen(v14);
  v16 = heap_Alloc(*(a1[2] + 8), v15 + 1);
  v3[483] = v16;
  if (!v16)
  {
    goto LABEL_87;
  }

  strcpy(v16, __src);
  __src = 0;
  U16Param = lidword_GetTextParam(a1, "puncincludedlist", &__src);
  if (U16Param < 0 && (U16Param & 0x1FFF) != 0x14)
  {
    goto LABEL_49;
  }

  v17 = __src;
  if (!__src)
  {
    v17 = ".&-/";
    __src = ".&-/";
  }

  v18 = strlen(v17);
  v19 = heap_Alloc(*(a1[2] + 8), v18 + 1);
  v3[484] = v19;
  if (!v19)
  {
    goto LABEL_87;
  }

  strcpy(v19, __src);
  __src = 0;
  U16Param = lidword_GetTextParam(a1, "consonantlist", &__src);
  if (U16Param < 0 && (U16Param & 0x1FFF) != 0x14)
  {
    goto LABEL_49;
  }

  v20 = __src;
  if (!__src)
  {
    v20 = "bcdfghjklmnpqrstvwxzß";
    __src = "bcdfghjklmnpqrstvwxzß";
  }

  v21 = strlen(v20);
  v22 = heap_Alloc(*(a1[2] + 8), v21 + 1);
  v3[485] = v22;
  if (!v22)
  {
    goto LABEL_87;
  }

  strcpy(v22, __src);
  *(v3 + 1945) = 4;
  v67 = v3;
  U16Param = lidword_GetU16Param(a1, "mdeminstemlen", v3 + 1945);
  if (U16Param < 0 && (U16Param & 0x1FFF) != 0x14)
  {
    goto LABEL_49;
  }

  __src = 0;
  U16Param = lidword_GetTextParam(a1, "mdestemvowels", &__src);
  if (U16Param < 0 && (U16Param & 0x1FFF) != 0x14)
  {
    goto LABEL_49;
  }

  v23 = __src;
  if (!__src)
  {
    v23 = "aeiouy";
    __src = "aeiouy";
  }

  v24 = strlen(v23);
  v25 = heap_Alloc(*(a1[2] + 8), v24 + 1);
  *v5 = v25;
  if (!v25)
  {
    goto LABEL_87;
  }

  strcpy(v25, __src);
  __src = 0;
  U16Param = lidword_GetTextParam(a1, "mdestemmingrules", &__src);
  if (U16Param < 0 && (U16Param & 0x1FFF) != 0x14)
  {
    goto LABEL_49;
  }

  if (__src)
  {
    v28 = strlen(__src);
    v29 = heap_Alloc(*(a1[2] + 8), v28 + 1);
    v3[488] = v29;
    if (!v29)
    {
      goto LABEL_87;
    }

    strcpy(v29, __src);
    U16Param = lidmde_ParseStemmingRules(a1);
    if (U16Param < 0)
    {
      goto LABEL_49;
    }
  }

  v30 = heap_Calloc(*(a1[2] + 8), *(a1 + 964), 8);
  a1[242] = v30;
  v31 = a1[2];
  if (!v30)
  {
    goto LABEL_88;
  }

  v32 = heap_Calloc(*(v31 + 8), *(a1 + 964), 8);
  a1[243] = v32;
  v31 = a1[2];
  if (!v32)
  {
    goto LABEL_88;
  }

  v33 = heap_Calloc(*(v31 + 8), *(a1 + 964), 2);
  a1[244] = v33;
  if (v33)
  {
    U16Param = lidword_InitLangParams(a1);
    if ((U16Param & 0x80000000) == 0)
    {
      v34 = *(v4 + 8);
      if (*(v4 + 8))
      {
        v35 = 0;
        v36 = *(a1 + 964);
        v37 = v36;
        do
        {
          if (v37)
          {
            v38 = 0;
            v39 = (*(v4 + 16) + 8 * v35);
            v40 = a1[242];
            do
            {
              if (!strcmp(v39, v40))
              {
                *(a1[244] + 2 * v38) = v35;
                v36 = *(a1 + 964);
              }

              ++v38;
              v40 += 8;
            }

            while (v38 < v36);
            v34 = *(v4 + 8);
            v37 = v36;
          }

          ++v35;
        }

        while (v35 < v34);
      }

      Interface = nn_word_lkp_GetInterface(1u, a1 + 245);
      if ((Interface & 0x80000000) == 0)
      {
        a1[246] = safeh_GetNullHandle();
        a1[247] = v42;
        a1[248] = safeh_GetNullHandle();
        a1[249] = v43;
        Interface = (*(a1[245] + 16))(a1[246], a1[247], "lid", *a1, a1[1], a1 + 248);
        if ((Interface & 0x80000000) == 0)
        {
          Interface = (*(a1[245] + 40))(a1[248], a1[249], a1 + 250);
          if ((Interface & 0x80000000) == 0)
          {
            log_OutText(*(a1[2] + 32), "FE_LID", 5, 0, "word2vec length %d", v44, v45, v46, *(a1 + 500));
            v47 = heap_Alloc(*(a1[2] + 8), 4 * *(a1 + 500));
            a1[251] = v47;
            if (!v47)
            {
              log_OutPublic(*(a1[2] + 32), "FE_LID", 48000, 0, v48, v49, v50, v51, v64);
              goto LABEL_55;
            }

            *(a1 + 1015) = (2 * *(a1 + 1014)) | 1;
            *&__c[1] = -1;
            Interface = (*(a1[8] + 96))(a1[6], a1[7], "fecfg", "nrpart_tn", &__c[3], &__c[1], __c);
            if ((Interface & 0x80000000) == 0)
            {
              *(v67 + 3848) = 1;
              if (*&__c[1])
              {
                v52 = **&__c[3];
                v53 = strchr(**&__c[3], __c[0]);
                if (v53)
                {
                  *v53 = 0;
                  v52 = **&__c[3];
                }

                *(v67 + 3848) = atoi(v52);
              }

              strcpy(v71, "ml2rnn");
              v54 = a1[239];
              __strcat_chk();
              Interface = brokeraux_ComposeBrokerString(a1[2], v71, 1, 0, a1[239], 0, 0, v72, 0x100uLL);
              if ((Interface & 0x80000000) == 0)
              {
                Interface = fi_init(*a1, a1[1], a1[3], a1[4], &v69, 2, v72, "FINN", 1, 0);
                if ((Interface & 0x80000000) != 0)
                {
                  Interface = brokeraux_ComposeBrokerString(a1[2], "ml2rnn", 1, 0, a1[239], 0, 0, v72, 0x100uLL);
                  if ((Interface & 0x80000000) != 0)
                  {
                    goto LABEL_95;
                  }

                  Interface = fi_init(*a1, a1[1], a1[3], a1[4], &v69, 0, v72, "FINN", 1, 0);
                  if ((Interface & 0x80000000) != 0)
                  {
                    v1 = 2345672704;
                    goto LABEL_55;
                  }
                }

                v58 = *v69;
                v59 = *(*v69 + 56);
                if (*(*v69 + 52) == 2)
                {
                  if (v59 == *(a1 + 1012) && *(v58 + 60) == *(a1 + 1013) + *(a1 + 1015) * *(a1 + 964) + 3)
                  {
                    v67[480] = v69;
                    goto LABEL_95;
                  }
                }

                else
                {
                  v60 = *(a1 + 1013);
                  v61 = *(a1 + 964);
                  v62 = *(a1 + 1015);
                }

                v66 = *(a1 + 1012);
                v65 = *(v58 + 60);
                log_OutText(*(a1[2] + 32), "FE_LID", 5, 0, "expected (%d, %d) got (%d, %d)", v55, v56, v57, v59);
                v1 = 2345672729;
                goto LABEL_55;
              }
            }
          }
        }
      }

LABEL_95:
      v1 = Interface;
      goto LABEL_55;
    }

LABEL_49:
    LODWORD(v1) = U16Param;
    goto LABEL_52;
  }

LABEL_87:
  v31 = a1[2];
LABEL_88:
  log_OutPublic(*(v31 + 32), "FE_LID", 48000, 0, v10, v11, v12, v13, v63);
LABEL_52:
  if ((v1 & 0x1FFF) == 0x14)
  {
    v1 = 0;
  }

  else
  {
    v1 = v1;
  }

LABEL_55:
  v26 = *MEMORY[0x1E69E9840];
  return v1;
}

uint64_t lidword_Deinit(uint64_t a1)
{
  if (!a1)
  {
    return 2345672711;
  }

  if (!*(a1 + 1924))
  {
    return 0;
  }

  v2 = *(a1 + 1936);
  if (v2)
  {
    heap_Free(*(*(a1 + 16) + 8), v2);
  }

  v3 = *(a1 + 1944);
  if (v3)
  {
    heap_Free(*(*(a1 + 16) + 8), v3);
  }

  v4 = *(a1 + 1952);
  if (v4)
  {
    heap_Free(*(*(a1 + 16) + 8), v4);
  }

  v5 = *(a1 + 2008);
  if (v5)
  {
    heap_Free(*(*(a1 + 16) + 8), v5);
  }

  v6 = *(a1 + 1960);
  if (v6)
  {
    v7 = (*(v6 + 24))(*(a1 + 1984), *(a1 + 1992));
    if ((v7 & 0x80000000) != 0)
    {
      return v7;
    }

    *(a1 + 1960) = 0;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 2016);
  if (v8)
  {
    v9 = *(a1 + 2024);
    if (*(a1 + 2024))
    {
      v10 = 0;
      do
      {
        v11 = *(*(a1 + 2016) + 8 * v10);
        if (v11)
        {
          heap_Free(*(*(a1 + 16) + 8), v11);
          *(*(a1 + 2016) + 8 * v10) = 0;
          v9 = *(a1 + 2024);
        }

        ++v10;
      }

      while (v10 < v9);
      v8 = *(a1 + 2016);
    }

    heap_Free(*(*(a1 + 16) + 8), v8);
    *(a1 + 2016) = 0;
  }

  v12 = *(a1 + 134912);
  if (v12)
  {
    v7 = fi_deinit(*(a1 + 16), *(a1 + 40), v12);
    *(a1 + 134912) = 0;
  }

  v13 = *(a1 + 134928);
  if (v13)
  {
    heap_Free(*(*(a1 + 16) + 8), v13);
  }

  v14 = *(a1 + 134936);
  if (v14)
  {
    heap_Free(*(*(a1 + 16) + 8), v14);
  }

  v15 = *(a1 + 134944);
  if (v15)
  {
    heap_Free(*(*(a1 + 16) + 8), v15);
  }

  v16 = *(a1 + 134952);
  if (v16)
  {
    heap_Free(*(*(a1 + 16) + 8), v16);
  }

  v17 = *(a1 + 134968);
  if (v17)
  {
    heap_Free(*(*(a1 + 16) + 8), v17);
  }

  v18 = *(a1 + 134976);
  if (v18)
  {
    heap_Free(*(*(a1 + 16) + 8), v18);
  }

  v19 = *(a1 + 134984);
  if (v19)
  {
    heap_Free(*(*(a1 + 16) + 8), v19);
  }

  v20 = *(a1 + 134992);
  if (v20)
  {
    heap_Free(*(*(a1 + 16) + 8), v20);
  }

  *(a1 + 1928) = 0;
  return v7;
}

uint64_t lidword_CharAtOffsetSatisfies(uint64_t a1, char *__s, unsigned int PreviousUtf8Offset, int a4, uint64_t (*a5)(uint64_t, char *))
{
  v5 = a4;
  if (a4 < 0)
  {
    while (PreviousUtf8Offset)
    {
      PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(__s, PreviousUtf8Offset);
      if (__CFADD__(v5++, 1))
      {
        v9 = strlen(__s);
        goto LABEL_11;
      }
    }

    return 0;
  }

  v9 = strlen(__s);
  if (v5)
  {
    v10 = v5 + 1;
    while (PreviousUtf8Offset < v9)
    {
      PreviousUtf8Offset = utf8_GetNextUtf8Offset(__s, PreviousUtf8Offset);
      if (--v10 <= 1)
      {
        goto LABEL_11;
      }
    }

    return 0;
  }

LABEL_11:
  if (PreviousUtf8Offset >= v9)
  {
    return 0;
  }

  return a5(a1, &__s[PreviousUtf8Offset]);
}

uint64_t lidword_IsSpace(int a1, char *__s)
{
  v3 = strlen(__s);

  return utf8_BelongsToSet(0, __s, 0, v3);
}

const char **lidword_AdvanceToEndMultiword(const char **result)
{
  v1 = *result;
  if (**result)
  {
    v2 = result;
    while (1)
    {
      v3 = strlen(v1);
      result = utf8_BelongsToSet(0, v1, 0, v3);
      v4 = *v2;
      if (!result)
      {
        break;
      }

      result = Utf8_LengthInBytes(*v2, 1);
      v1 = &(*v2)[result];
      *v2 = v1;
      if (!*v1)
      {
        return result;
      }
    }

    while (*v4)
    {
      v5 = strlen(v4);
      result = utf8_BelongsToSet(0, v4, 0, v5);
      if (result)
      {
        break;
      }

      result = Utf8_LengthInBytes(*v2, 1);
      v4 = &(*v2)[result];
      *v2 = v4;
    }
  }

  return result;
}

uint64_t calcWPenalties(uint64_t result, unsigned int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v27 = *MEMORY[0x1E69E9840];
  v9 = *(result + 1928);
  if (!*(result + 1928))
  {
    goto LABEL_11;
  }

  v11 = result;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = a2;
  v16 = *(result + 1952);
  do
  {
    v17 = *(result + 2044 + (a2 << 9) + 4 * *(v16 + 2 * v12));
    v18 = v17 == 0;
    v19 = v17 != 0;
    if (!v18)
    {
      v14 = v12;
      ++v13;
    }

    __src[v12++] = v19;
  }

  while (v9 != v12);
  result = memcpy((result + (a2 << 9) + 2044), __src, 4 * v9);
  if (!v13)
  {
    goto LABEL_11;
  }

  if (v13 == 1)
  {
    if (a3)
    {
      *(v11 + 4 * v15 + 133116) = v14;
    }

    result = log_OutText(*(*(v11 + 16) + 32), "FE_LID", 5, 0, "ML2 LID found unambiguously in ML1 lexicon: %s", v20, v21, v22, *(v11 + 1944) + 8 * v14);
LABEL_11:
    v23 = *MEMORY[0x1E69E9840];
    return result;
  }

  v24 = *(*(v11 + 16) + 32);
  v25 = *MEMORY[0x1E69E9840];

  return log_OutText(v24, "FE_LID", 5, 0, "ML2 LID found ambiguously in ML1 lexicon", v20, v21, v22, a9);
}

uint64_t lidword_OutOfLID2(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 1088);
  v3 = *(v2 + 8);
  if (*(v2 + 8))
  {
    v4 = 0;
    v5 = 0;
    while (1)
    {
      if (*(a1 + 2044 + (a2 << 9) + 4 * v4))
      {
        v6 = *(a1 + 1928);
        if (*(a1 + 1928))
        {
          v7 = *(a1 + 1952);
          do
          {
            v8 = *v7++;
            if (v4 == v8)
            {
              return 0;
            }
          }

          while (--v6);
        }

        v5 = 1;
      }

      if (++v4 == v3)
      {
        return v5;
      }
    }
  }

  return 0;
}

uint64_t lidword_InsertLangMarker(uint64_t a1, uint64_t a2, int a3, int a4, const char *a5, int a6, uint64_t *a7, unsigned int *a8, unsigned int *a9)
{
  v14 = a3 - 1;
  if (a6)
  {
    if (v14 >= 2)
    {
      for (i = 1; i < v14; ++i)
      {
        if ((*(a2 + 12) + a4) < *(a2 + 32 * i + 12))
        {
          break;
        }
      }

      j = i - 1;
    }

    else
    {
      j = 0;
    }
  }

  else if (v14 >= 2)
  {
    for (j = 1; j < v14; ++j)
    {
      if ((*(a2 + 12) + a4) <= *(a2 + 32 * j + 12))
      {
        break;
      }
    }
  }

  else
  {
    j = 1;
  }

  v17 = j;
  v18 = (a2 + 32 * j);
  memmove(v18 + 8, v18, 32 * (v14 - j));
  v19 = *a9;
  if (v19)
  {
    v20 = 0;
    v21 = *a7;
    do
    {
      v22 = *(v21 + 4 * v20);
      if (v22 >= v17)
      {
        *(v21 + 4 * v20) = v22 + 1;
        v19 = *a9;
      }

      ++v20;
    }

    while (v20 < v19);
  }

  *v18 = 36;
  v23 = strlen(a5);
  v24 = heap_Alloc(*(*(a1 + 16) + 8), (v23 + 1));
  *(v18 + 3) = v24;
  if (!v24)
  {
    log_OutPublic(*(*(a1 + 16) + 32), "FE_LID", 48000, 0, v25, v26, v27, v28, v32);
    return 2345672714;
  }

  strcpy(v24, a5);
  *(v18 + 3) = (*(a2 + 12) + a4);
  if (v14 <= v17)
  {
    v30 = *(v18 - 7);
    goto LABEL_24;
  }

  v29 = v18[9];
  v30 = *(v18 - 7);
  if (v29 <= v30)
  {
LABEL_24:
    v29 = v30;
  }

  v18[1] = v29;
  v18[2] = 0;
  result = hlp_AppendItemRaw32(a1, a7, a8, a9, 4u, 10);
  if ((result & 0x80000000) == 0)
  {
    *(*a7 + 4 * (*a9 - 1)) = v17;
  }

  return result;
}

uint64_t lidword_GetU16Param(void *a1, uint64_t a2, _WORD *a3)
{
  *&__c[3] = 0;
  __c[0] = 0;
  *&__c[1] = 1;
  v4 = (*(a1[8] + 96))(a1[6], a1[7], "ml2cfg", a2, &__c[3], &__c[1], __c);
  if ((v4 & 0x80000000) == 0)
  {
    if (*&__c[1])
    {
      v5 = **&__c[3];
      v6 = strchr(**&__c[3], __c[0]);
      if (v6)
      {
        *v6 = 0;
        v5 = **&__c[3];
      }

      *a3 = LH_atou(v5);
    }

    else
    {
      return 2345672724;
    }
  }

  return v4;
}

uint64_t lidword_GetF32Param(void *a1, uint64_t a2, float *a3)
{
  *&__c[3] = 0;
  __c[0] = 0;
  *&__c[1] = 1;
  v4 = (*(a1[8] + 96))(a1[6], a1[7], "ml2cfg", a2, &__c[3], &__c[1], __c);
  if ((v4 & 0x80000000) == 0)
  {
    if (*&__c[1])
    {
      v5 = **&__c[3];
      v6 = strchr(**&__c[3], __c[0]);
      if (v6)
      {
        *v6 = 0;
        v5 = **&__c[3];
      }

      v7 = atof(v5);
      *a3 = v7;
    }

    else
    {
      return 2345672724;
    }
  }

  return v4;
}

uint64_t lidword_GetTextParam(void *a1, uint64_t a2, void *a3)
{
  *&__c[3] = 0;
  __c[0] = 0;
  *&__c[1] = 1;
  v4 = (*(a1[8] + 96))(a1[6], a1[7], "ml2cfg", a2, &__c[3], &__c[1], __c);
  if ((v4 & 0x80000000) == 0)
  {
    if (*&__c[1])
    {
      v5 = **&__c[3];
      v6 = strchr(**&__c[3], __c[0]);
      if (v6)
      {
        *v6 = 0;
        v5 = **&__c[3];
      }

      *a3 = v5;
    }

    else
    {
      return 2345672724;
    }
  }

  return v4;
}

uint64_t lidword_InitLangParams(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  __s1 = 0;
  **(a1 + 1936) = 6579559;
  *(*(a1 + 1936) + 8) = 7892581;
  if (*(a1 + 1928) == 3)
  {
    *(*(a1 + 1936) + 16) = 7893606;
  }

  LangParam = lidword_GetLangParam(a1, "languages");
  if ((LangParam & 0x80000000) == 0 || (v3 = LangParam, (LangParam & 0x1FFF) == 0x14))
  {
    *(a1 + 1930) = 0;
    **(a1 + 1944) = 6579559;
    *(*(a1 + 1944) + 8) = 6778469;
    if (*(a1 + 1928) == 3)
    {
      *(*(a1 + 1944) + 16) = 6713958;
    }

    strcpy(v9, "languages.");
    v4 = *(a1 + 1912);
    __strcat_chk();
    v5 = lidword_GetLangParam(a1, v9);
    v3 = v5;
    if ((v5 & 0x80000000) == 0 || (v5 & 0x1FFF) == 0x14)
    {
      paramc_ParamGetStr(*(*(a1 + 16) + 40), "extraesclang", &__s1);
      if (__s1)
      {
        AdjustLanguageGroupMappingLID2((a1 + 1928), __s1);
      }
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t lidword_GetLangParam(void *a1, const char *a2)
{
  *&__c[3] = 0;
  __c[0] = 0;
  *&__c[1] = 1;
  v4 = (*(a1[8] + 96))(a1[6], a1[7], "ml2cfg", a2, &__c[3], &__c[1], __c);
  if ((v4 & 0x80000000) == 0)
  {
    if (*&__c[1])
    {
      v5 = **&__c[3];
      v6 = strchr(**&__c[3], __c[0]);
      if (v6)
      {
        *v6 = 0;
        v5 = **&__c[3];
      }

      v7 = strchr(v5, 44);
      if (v7)
      {
        v8 = 0;
        do
        {
          if (!strcmp(a2, "languages"))
          {
            v9 = 242;
          }

          else
          {
            v9 = 243;
          }

          strncpy((a1[v9] + 8 * v8++), v5, (v7 - v5));
          v5 = v7 + 1;
          v7 = strchr(v7 + 1, 44);
        }

        while (v7);
        v7 = v8;
      }

      v10 = strcmp(a2, "languages");
      v11 = 243;
      if (!v10)
      {
        v11 = 242;
      }

      strcpy((a1[v11] + 8 * v7), v5);
    }

    else
    {
      return 2345672724;
    }
  }

  return v4;
}

char *lid_make_language_group(char *a1, const char *a2)
{
  strcpy(a1, a2)[2] = 120;
  v4 = &FE_LID_LANG_2_LANG_GROUP;
  v5 = 4;
  do
  {
    result = strcmp(v4, a2);
    if (!result)
    {
      result = strcpy(a1, v4 + 4);
    }

    v4 += 8;
    --v5;
  }

  while (v5);
  return result;
}

uint64_t fe_lid_HlpClose(uint64_t a1)
{
  v2 = *(*(a1 + 16) + 40);
  v16 = a1;
  v15 = xmmword_1F42D3E60;
  v17 = xmmword_1F42D3E60;
  paramc_ListenerRemove(v2, "extraesclang", &v16);
  v3 = *(*(a1 + 16) + 40);
  v16 = a1;
  v17 = v15;
  paramc_ListenerRemove(v3, "lidlanguages", &v16);
  v4 = *(*(a1 + 16) + 40);
  v16 = a1;
  v17 = v15;
  paramc_ListenerRemove(v4, "lidscope", &v16);
  v5 = *(*(a1 + 16) + 40);
  v16 = a1;
  v17 = v15;
  paramc_ListenerRemove(v5, "lidmode", &v16);
  v6 = *(*(a1 + 16) + 40);
  v16 = a1;
  v17 = v15;
  paramc_ListenerRemove(v6, "lidvoiceswitch", &v16);
  v7 = *(*(a1 + 16) + 40);
  v16 = a1;
  v17 = v15;
  paramc_ListenerRemove(v7, "membiasedrejectparam1", &v16);
  v8 = *(*(a1 + 16) + 40);
  v16 = a1;
  v17 = v15;
  paramc_ListenerRemove(v8, "membiasedrejectparam2", &v16);
  v9 = *(a1 + 1880);
  if (v9)
  {
    heap_Free(*(*(a1 + 16) + 8), v9);
    *(a1 + 1880) = 0;
  }

  v10 = *(a1 + 1024);
  if (v10)
  {
    heap_Free(*(*(a1 + 16) + 8), v10);
    *(a1 + 1024) = 0;
  }

  v11 = *(a1 + 1072);
  if (v11)
  {
    heap_Free(*(*(a1 + 16) + 8), v11);
    *(a1 + 1072) = 0;
  }

  v12 = *(a1 + 1904);
  if (v12)
  {
    heap_Free(*(*(a1 + 16) + 8), v12);
    *(a1 + 1904) = 0;
  }

  v13 = *(a1 + 1120);
  if (v13)
  {
    heap_Free(*(*(a1 + 16) + 8), v13);
    *(a1 + 1120) = 0;
    *(a1 + 1112) = 0;
  }

  lid_Deinit(a1);
  return lidword_Deinit(a1);
}

uint64_t fe_lid_ParamCheckChange(int a1, char *__s1, char *a3, _DWORD *a4)
{
  if (!strcmp(__s1, "lidscope"))
  {
    if (!LH_stricmp(a3, "none"))
    {
      goto LABEL_25;
    }

    v7 = "user-defined";
  }

  else
  {
    if (strcmp(__s1, "lidmode"))
    {
      if (!strcmp(__s1, "lidlanguages"))
      {
        if (a3 && *a3)
        {
          v8 = 2345672719;
          v9 = strlen(a3);
          v10 = 0;
          v11 = 1;
          do
          {
            v12 = a3[v10];
            if ((v11 & 3) != 0)
            {
              if ((v12 & 0xFFFFFFDF) - 91 < 0xFFFFFFE6)
              {
                goto LABEL_26;
              }
            }

            else if (v12 && v12 != 44)
            {
              goto LABEL_26;
            }

            v10 = v11;
          }

          while (v9 >= v11++);
        }
      }

      else if (!strcmp(__s1, "lidvoiceswitch") && LH_stricmp(a3, "yes"))
      {
        v7 = "no";
        goto LABEL_9;
      }

LABEL_25:
      v8 = 0;
      goto LABEL_26;
    }

    if (!LH_stricmp(a3, "rejection") || !LH_stricmp(a3, "memory-bias") || !LH_stricmp(a3, "bias-mlset"))
    {
      goto LABEL_25;
    }

    v7 = "forced-choice";
  }

LABEL_9:
  if (LH_stricmp(a3, v7))
  {
    v8 = 2345672719;
  }

  else
  {
    v8 = 0;
  }

LABEL_26:
  *a4 = v8 >= 0;
  return v8;
}

uint64_t fe_lid_ParamLearnChange(uint64_t a1, char *__s1, char *a3)
{
  if (!strcmp(__s1, "lidscope"))
  {
    result = LH_stricmp(a3, "none");
    if (!result)
    {
      *(a1 + 1004) = 0;
      return result;
    }

    result = LH_stricmp(a3, "user-defined");
    if (result)
    {
      result = LH_stricmp(a3, "message");
      if (result)
      {
        return 2345672719;
      }

      v10 = 2;
    }

    else
    {
      v10 = 1;
    }

    *(a1 + 1004) = v10;
    return result;
  }

  if (!strcmp(__s1, "lidmode"))
  {
    result = LH_stricmp(a3, "rejection");
    if (result)
    {
      result = LH_stricmp(a3, "forced-choice");
      if (!result)
      {
        *(a1 + 1140) = 0;
        *(a1 + 1188) = 0;
        *(a1 + 1200) = 0;
        *(a1 + 1128) = 0;
        return result;
      }

      result = LH_stricmp(a3, "memory-bias");
      if (result)
      {
        result = LH_stricmp(a3, "bias-mlset");
        if (result)
        {
          return 2345672719;
        }

        v11 = (a1 + 1128);
        *(a1 + 1188) = 1;
        *(a1 + 1200) = 1;
      }

      else
      {
        v11 = (a1 + 1128);
        *(a1 + 1188) = 1;
        *(a1 + 1200) = 0;
      }

      *v11 = xmmword_1C37BE010;
      v12 = 279172874250000;
    }

    else
    {
      *(a1 + 1188) = 0;
      *(a1 + 1200) = 0;
      *(a1 + 1128) = xmmword_1C37BE020;
      v12 = 1000;
    }

    *(a1 + 1144) = v12;
    return result;
  }

  if (strcmp(__s1, "lidlanguages"))
  {
    if (strcmp(__s1, "lidvoiceswitch"))
    {
      if (!strcmp(__s1, "membiasedrejectparam1"))
      {
        v13 = LH_atou(a3);
        result = 0;
        *(a1 + 1132) = v13;
        *(a1 + 1144) = v13;
      }

      else if (!strcmp(__s1, "membiasedrejectparam2"))
      {
        v14 = LH_atou(a3);
        result = 0;
        *(a1 + 1136) = v14;
        *(a1 + 1148) = v14;
      }

      else
      {
        if (!strcmp(__s1, "extraesclang"))
        {
          if (*(a1 + 1066))
          {
            v6 = 0;
            v7 = 20;
            do
            {
              if (*(*(a1 + 1072) + v7) == 1)
              {
                __strcpy_chk();
                __s2[2] = 0;
                v8 = strstr(a3, __s2);
                if (v8)
                {
                  if (v8 == a3 || *(v8 - 1) == 44)
                  {
                    strncpy((*(a1 + 1072) + v7 - 12), v8, 3uLL);
                  }
                }
              }

              ++v6;
              v7 += 24;
            }

            while (v6 < *(a1 + 1066));
          }

          AdjustLanguageGroupMappingLID2((a1 + 1928), a3);
        }

        return 0;
      }

      return result;
    }

    result = LH_stricmp(a3, "yes");
    if (!result)
    {
      *(a1 + 1008) = 0;
      return result;
    }

    result = LH_stricmp(a3, "no");
    if (!result)
    {
      *(a1 + 1008) = 1;
      return result;
    }

    return 2345672719;
  }

  return hlp_SetActiveLngs(a1, a3);
}

uint64_t fe_lid_ObjOpen(_WORD *a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v27 = 0;
  v28 = 0;
  v5 = 2345672711;
  v26 = 0;
  if (!a5)
  {
    return v5;
  }

  *a5 = 0;
  *(a5 + 8) = 0;
  inited = InitRsrcFunction(a3, a4, &v28);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = InitRsrcFunction(a1, a2, &v27);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v12 = heap_Calloc(*(v28 + 8), 1, 135000);
  if (!v12)
  {
    log_OutPublic(*(v28 + 32), "FE_LID", 48000, 0, v13, v14, v15, v16, v25);
    return 2345672714;
  }

  v17 = v12;
  *v12 = a3;
  v12[1] = a4;
  v19 = v27;
  v18 = v28;
  v12[2] = v28;
  v12[3] = a1;
  v12[4] = a2;
  v12[5] = v19;
  Object = objc_GetObject(*(v18 + 48), "SYNTHSTREAM", &v26);
  if ((Object & 0x80000000) != 0 || (*(v17 + 72) = *(v26 + 8), Object = objc_GetObject(*(v28 + 48), "FE_DCTLKP", &v26), (Object & 0x80000000) != 0))
  {
    v5 = Object;
    *a5 = v17;
    *(a5 + 8) = 62400;
LABEL_11:
    fe_lid_ObjClose(v17, *(a5 + 8));
    *a5 = 0;
    *(a5 + 8) = 0;
    return v5;
  }

  v21 = v26;
  *(v17 + 64) = *(v26 + 8);
  *(v17 + 48) = *(v21 + 16);
  if ((objc_GetObject(*(v28 + 48), "COMPQUERY", &v26) & 0x80000000) != 0)
  {
    *(v17 + 96) = 0;
    *(v17 + 80) = safeh_GetNullHandle();
    *(v17 + 88) = v23;
  }

  else
  {
    v22 = v26;
    *(v17 + 96) = *(v26 + 8);
    *(v17 + 80) = *(v22 + 16);
  }

  v5 = fe_lid_HlpOpen(v17);
  *a5 = v17;
  *(a5 + 8) = 62400;
  if ((v5 & 0x80000000) != 0)
  {
    goto LABEL_11;
  }

  return v5;
}

uint64_t fe_lid_HlpOpen(uint64_t a1)
{
  v133 = *MEMORY[0x1E69E9840];
  v129 = 0;
  v128 = 0;
  v127 = 0;
  v126 = 0;
  v124 = 0;
  v125 = 0;
  v122 = 0;
  __s = 0;
  v120 = 0;
  __src = 0;
  v2 = *(a1 + 16);
  if ((paramc_ParamGetStr(*(v2 + 40), "mlset", &__s) & 0x80000000) != 0 || (v3 = __s, !*__s))
  {
    Str = paramc_ParamGetStr(*(v2 + 40), "langcode", &__s);
    if ((Str & 0x80000000) != 0)
    {
      goto LABEL_17;
    }

    v3 = __s;
  }

  v9 = strlen(v3);
  v10 = heap_Alloc(*(*(a1 + 16) + 8), v9 + 1);
  if (!v10)
  {
    v16 = 2345672714;
    *(a1 + 1904) = 0;
    goto LABEL_227;
  }

  v11 = v10;
  v12 = strcpy(v10, v3);
  *(a1 + 1904) = v12;
  if (strlen(v12) >= 1)
  {
    v13 = 0;
    do
    {
      v11[v13] = __tolower(v11[v13]);
      ++v13;
      v11 = *(a1 + 1904);
    }

    while (strlen(v11) > v13);
  }

  if ((paramc_ParamGetStr(*(*(a1 + 16) + 40), "extraesclang", &v122) & 0x80000000) == 0)
  {
    v14 = *(v2 + 40);
    *__s2 = a1;
    v131 = xmmword_1F42D3E60;
    Str = paramc_ListenerAdd(v14, "extraesclang", __s2);
    if ((Str & 0x80000000) != 0)
    {
      goto LABEL_17;
    }
  }

  paramc_ParamGetStr(*(*(a1 + 16) + 40), "langcode", &__src);
  *(a1 + 1008) = 0;
  if ((paramc_ParamGetStr(*(v2 + 40), "lidvoiceswitch", &v124) & 0x80000000) != 0)
  {
    Str = paramc_ParamSetStr(*(v2 + 40), "lidvoiceswitch", "no");
    if ((Str & 0x80000000) != 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (!LH_stricmp(v124, "yes"))
    {
      v15 = 0;
      goto LABEL_20;
    }

    if (!LH_stricmp(v124, "no"))
    {
      v15 = 1;
LABEL_20:
      *(a1 + 1008) = v15;
    }
  }

  v18 = *(a1 + 1904);
  if (!v18)
  {
    goto LABEL_63;
  }

  if (strlen(v18) < 4)
  {
    goto LABEL_63;
  }

  paramc_ParamGetStr(*(v2 + 40), "lidlanguages", &v120);
  v23 = v122;
  if (!v122 || !*v122)
  {
    goto LABEL_63;
  }

  v24 = 0;
  v25 = 0;
  v26 = 0;
  do
  {
    if ((++v26 & 3) != 0)
    {
      v27 = v23[v24];
      if ((v27 & 0xFFFFFFDF) - 91 > 0xFFFFFFE5)
      {
        __s2[v25++] = ssft_tolower(v27);
      }

      else
      {
        log_OutPublic(*(*(a1 + 16) + 32), "FE_LID", 60003, "%s%s", v19, v20, v21, v22, "extraesclang");
      }
    }

    else
    {
      __s2[v25] = 0;
      if (v23[v24] && v23[v24] != 44)
      {
        log_OutPublic(*(*(a1 + 16) + 32), "FE_LID", 60003, "%s%s", v19, v20, v21, v22, "extraesclang");
      }

      else if (!strstr(*(a1 + 1904), __s2) || !LH_stricmp(__src, __s2))
      {
        log_OutPublic(*(*(a1 + 16) + 32), "FE_LID", 60004, "%s%s", v28, v29, v30, v31, "language");
      }

      v25 = 0;
    }

    v24 = v26;
    v23 = v122;
    v32 = strlen(v122);
  }

  while (v32 >= v26);
  v33 = heap_Alloc(*(*(a1 + 16) + 8), v32 + 5);
  if (!v33)
  {
    v16 = 2345672714;
    v17 = *(*(a1 + 16) + 32);
    v44 = 60000;
LABEL_75:
    log_OutPublic(v17, "FE_LID", v44, 0, v5, v6, v7, v8, v118);
    goto LABEL_227;
  }

  v34 = v33;
  v35 = strcpy(v33, __src);
  *&v34[strlen(v35)] = 44;
  strcat(v34, v122);
  paramc_ParamGetStr(*(v2 + 40), "lidlanguages", &v120);
  v36 = v120;
  if (*v34)
  {
    if (v120 && *v120)
    {
      __s2[0] = 0;
      strncpy(__dst, v34, 0x7FuLL);
      __dst[127] = 0;
      v37 = __dst[0];
      if (__dst[0])
      {
        v38 = 0;
        v39 = __dst;
        do
        {
          v40 = v39;
          if (v37)
          {
            while (v37 != 44)
            {
              v41 = *++v40;
              v37 = v41;
              ++v38;
              if (!v41)
              {
                goto LABEL_51;
              }
            }

            v42 = 0;
            do
            {
              v40[v42] = 0;
              v43 = v40[++v42];
            }

            while (v43 == 44);
            v38 += v42;
          }

LABEL_51:
          if (strstr(v36, v39))
          {
            if (__s2[0])
            {
              __strcat_chk();
            }

            __strcat_chk();
          }

          v39 = &__dst[v38];
          v37 = __dst[v38];
        }

        while (__dst[v38]);
      }

      goto LABEL_61;
    }
  }

  else if (!v120)
  {
    __s2[0] = 0;
    goto LABEL_61;
  }

  __strcpy_chk();
LABEL_61:
  active = paramc_ParamSetStr(*(*(a1 + 16) + 40), "lidlanguages", __s2);
  if ((active & 0x80000000) != 0)
  {
    goto LABEL_226;
  }

  heap_Free(*(*(a1 + 16) + 8), v34);
LABEL_63:
  v46 = *(v2 + 40);
  *__s2 = a1;
  v119 = xmmword_1F42D3E60;
  v131 = xmmword_1F42D3E60;
  v16 = paramc_ListenerAdd(v46, "lidvoiceswitch", __s2);
  v47 = *(a1 + 16);
  if ((v16 & 0x80000000) != 0)
  {
    v17 = *(v47 + 32);
    goto LABEL_74;
  }

  active = hlp_FillDicLMLanguages(v47, a1 + 1016, *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 1904), v122, 0xFFFF);
  if ((active & 0x80001FFF) == 0x8000000A)
  {
    goto LABEL_226;
  }

  active = hlp_FillDicLMLanguages(*(a1 + 16), a1 + 1064, *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 1904), v122, 1);
  if ((active & 0x80001FFF) == 0x8000000A)
  {
    goto LABEL_226;
  }

  if (!*(a1 + 1018) && !*(a1 + 1066))
  {
    goto LABEL_225;
  }

  *(a1 + 1004) = 0;
  active = paramc_ParamGet(*(*(a1 + 16) + 40), "langcode", (a1 + 1912), 0);
  if ((active & 0x80000000) != 0)
  {
    goto LABEL_226;
  }

  v48 = *(a1 + 1018);
  if (!(v48 | *(a1 + 1066)))
  {
    goto LABEL_70;
  }

  v49 = *(a1 + 1066);
  *(a1 + 1152) = 69077;
  if (v48 <= v49)
  {
    v48 = v49;
  }

  v50 = heap_Calloc(*(*(a1 + 16) + 8), 1, 16 * v48);
  *(a1 + 1880) = v50;
  if (!v50)
  {
    v16 = 2345672714;
    goto LABEL_18;
  }

  Str = lid_Init(a1);
  if ((Str & 0x80000000) != 0)
  {
    goto LABEL_17;
  }

  if (*(a1 + 1066))
  {
    Str = lidword_Init(a1);
    if ((Str & 0x80000000) != 0)
    {
      goto LABEL_17;
    }
  }

  v51 = *(a1 + 96);
  if (v51)
  {
    v16 = (*(v51 + 64))(*(a1 + 80), *(a1 + 88), &unk_1C37BE0C2, 0, &v126);
    if ((v16 & 0x80001FFF) == 0x8000000A)
    {
      goto LABEL_227;
    }

    if (v126)
    {
      v52 = heap_Calloc(*(v2 + 8), v126, 86);
      if (!v52)
      {
        v17 = *(v2 + 32);
        goto LABEL_74;
      }

      v53 = v52;
      active = (*(*(a1 + 96) + 64))(*(a1 + 80), *(a1 + 88), &unk_1C37BE0C2, v52, &v126);
      if ((active & 0x80000000) == 0)
      {
        if (v126)
        {
          v54 = 0;
          do
          {
            v55 = v54;
            v56 = v53 + 86 * v54;
            v59 = *(v56 + 64);
            v58 = (v56 + 64);
            v57 = v59;
            if (v59)
            {
              v60 = 0;
              v61 = v58;
              do
              {
                *v61 = ssft_tolower(v57);
                v62 = v53 + 86 * v55 + ++v60;
                v63 = *(v62 + 64);
                v61 = (v62 + 64);
                v57 = v63;
              }

              while (v63);
            }

            ModelLng = hlp_FindModelLng(a1, v58, 1);
            if (ModelLng || (lid_make_language_group(__dst, v58), (ModelLng = hlp_FindModelLng(a1, __dst, 1)) != 0))
            {
              *(ModelLng + 4) = 1;
            }

            v65 = hlp_FindModelLng(a1, v58, 0);
            if (v65 || (lid_make_language_group(__dst, v58), (v65 = hlp_FindModelLng(a1, __dst, 1)) != 0))
            {
              *(v65 + 4) = 1;
            }

            v54 = v55 + 1;
          }

          while (v126 > (v55 + 1));
        }

        heap_Free(*(v2 + 8), v53);
        goto LABEL_100;
      }

LABEL_226:
      v16 = active;
      goto LABEL_227;
    }
  }

LABEL_100:
  v128 = -1;
  active = (*(*(a1 + 64) + 96))(*(a1 + 48), *(a1 + 56), "lidcfg", "lidscope", &v129, &v128, &v127);
  if ((active & 0x80000000) != 0)
  {
    goto LABEL_226;
  }

  if (v128)
  {
    goto LABEL_235;
  }

  v128 = 1;
  active = (*(*(a1 + 64) + 96))(*(a1 + 48), *(a1 + 56), "lidcfg", "lidscope", &v129, &v128, &v127);
  if ((active & 0x80000000) != 0)
  {
    goto LABEL_226;
  }

  if (v128)
  {
LABEL_235:
    if (strstr(*v129, "user-defined"))
    {
      v66 = 1;
    }

    else
    {
      v66 = 2;
    }

    *(a1 + 1004) = v66;
  }

LABEL_70:
  if ((paramc_ParamGetStr(*(v2 + 40), "lidlanguages", &v124) & 0x80000000) != 0)
  {
    Str = paramc_ParamSetStr(*(v2 + 40), "lidlanguages", &unk_1C37BE0C2);
    if ((Str & 0x80000000) == 0)
    {
      goto LABEL_107;
    }

LABEL_17:
    v16 = Str;
LABEL_18:
    v17 = *(*(a1 + 16) + 32);
LABEL_74:
    v44 = 48000;
    goto LABEL_75;
  }

  active = hlp_SetActiveLngs(a1, v124);
  if ((active & 0x80000000) != 0)
  {
    goto LABEL_226;
  }

LABEL_107:
  v67 = *(v2 + 40);
  *__s2 = a1;
  v131 = v119;
  Str = paramc_ListenerAdd(v67, "lidlanguages", __s2);
  if ((Str & 0x80000000) != 0)
  {
    goto LABEL_17;
  }

  if ((paramc_ParamGetStr(*(v2 + 40), "lidscope", &v124) & 0x80000000) == 0)
  {
    if (LH_stricmp(v124, "none"))
    {
      if (LH_stricmp(v124, "user-defined"))
      {
        v68 = LH_stricmp(v124, "message");
        v69 = v119;
        if (v68)
        {
          goto LABEL_126;
        }

        v70 = 2;
        goto LABEL_125;
      }

      v70 = 1;
    }

    else
    {
      v70 = 0;
    }

    v69 = v119;
LABEL_125:
    *(a1 + 1004) = v70;
    goto LABEL_126;
  }

  v71 = *(a1 + 1004);
  v72 = "message";
  if (v71 == 1)
  {
    v72 = "user-defined";
  }

  if (v71)
  {
    v73 = v72;
  }

  else
  {
    v73 = "none";
  }

  Str = paramc_ParamSetStr(*(v2 + 40), "lidscope", v73);
  v69 = v119;
  if ((Str & 0x80000000) != 0)
  {
    goto LABEL_17;
  }

LABEL_126:
  v74 = *(v2 + 40);
  *__s2 = a1;
  v131 = v69;
  Str = paramc_ListenerAdd(v74, "lidscope", __s2);
  if ((Str & 0x80000000) != 0)
  {
    goto LABEL_17;
  }

  if ((paramc_ParamGetUInt(*(v2 + 40), "membiasedrejectparam1", &v125 + 1) & 0x80000000) != 0)
  {
    v75 = 0;
    HIDWORD(v125) = 0;
  }

  else
  {
    if ((paramc_ParamGetUInt(*(v2 + 40), "membiasedrejectparam2", &v125) & 0x80000000) == 0)
    {
      v75 = v125 != 0;
      v76 = v125 == 0;
      goto LABEL_133;
    }

    v75 = 0;
    v125 = 0;
  }

  v76 = 1;
LABEL_133:
  *(a1 + 1140) = 0;
  *(a1 + 1128) = 0;
  *(a1 + 1188) = 0;
  *(a1 + 1200) = 0;
  v128 = -1;
  active = (*(*(a1 + 64) + 96))(*(a1 + 48), *(a1 + 56), "lidcfg", "lidmode", &v129, &v128, &v127);
  if ((active & 0x80000000) != 0)
  {
    goto LABEL_226;
  }

  if (v128 && strstr(*v129, "rejection"))
  {
    *(a1 + 1128) = 1;
  }

  v128 = 1;
  v77 = 0;
  if (((*(*(a1 + 64) + 96))(*(a1 + 48), *(a1 + 56), "lidcfg", "lidmode", &v129, &v128, &v127) & 0x80000000) == 0 && v128)
  {
    v78 = *v129;
    if (strstr(*v129, "rejection"))
    {
      *(a1 + 1140) = 1;
    }

    if (strstr(v78, "memory-bias"))
    {
      v77 = 1;
      *(a1 + 1188) = 1;
      *(a1 + 1200) = 0;
    }

    else
    {
      v77 = 0;
    }

    if (strstr(v78, "bias-mlset"))
    {
      v77 = 1;
      *(a1 + 1188) = 1;
      *(a1 + 1200) = 1;
    }
  }

  if ((paramc_ParamGetStr(*(v2 + 40), "lidmode", &v124) & 0x80000000) == 0)
  {
    if (LH_stricmp(v124, "rejection"))
    {
      if (LH_stricmp(v124, "forced-choice"))
      {
        if (LH_stricmp(v124, "memory-bias"))
        {
          v79 = LH_stricmp(v124, "bias-mlset");
          v80 = v119;
          if (v79)
          {
            goto LABEL_166;
          }

          v81 = 0;
          v82 = 1;
          v83 = 1;
          goto LABEL_165;
        }

        v81 = 0;
        v83 = 0;
        v82 = 1;
      }

      else
      {
        v81 = 0;
        v82 = 0;
        v83 = 0;
      }
    }

    else
    {
      v82 = 0;
      v83 = 0;
      v81 = 1;
    }

    v80 = v119;
LABEL_165:
    *(a1 + 1128) = v81;
    *(a1 + 1140) = v81;
    *(a1 + 1188) = v82;
    *(a1 + 1200) = v83;
    goto LABEL_166;
  }

  if (*(a1 + 1128) || *(a1 + 1140))
  {
    v84 = *(v2 + 40);
    v85 = "rejection";
  }

  else if (*(a1 + 1188))
  {
    v84 = *(v2 + 40);
    v85 = "memory-bias";
  }

  else
  {
    v84 = *(v2 + 40);
    if (*(a1 + 1200))
    {
      v85 = "bias-mlset";
    }

    else
    {
      v85 = "forced-choice";
    }
  }

  v16 = paramc_ParamSetStr(v84, "lidmode", v85);
  v80 = v119;
  if ((v16 & 0x80000000) != 0)
  {
    goto LABEL_18;
  }

LABEL_166:
  v86 = *(v2 + 40);
  *__s2 = a1;
  v131 = v80;
  Str = paramc_ListenerAdd(v86, "lidmode", __s2);
  if ((Str & 0x80000000) != 0)
  {
    goto LABEL_17;
  }

  v87 = (a1 + 1132);
  *(a1 + 1132) = 0x3200000000;
  *(a1 + 1144) = 0x3200000000;
  v88 = *(a1 + 1128);
  if (v88)
  {
    if (*(a1 + 1188) != 1)
    {
      if (v88 == 1)
      {
LABEL_174:
        v91 = 0;
        *v87 = 1000;
        *(a1 + 1144) = 1000;
LABEL_198:
        *(a1 + 1148) = v91;
        goto LABEL_199;
      }

      v89 = *(a1 + 1140);
      goto LABEL_173;
    }

LABEL_178:
    if (v75)
    {
      v93 = v125;
      v92 = HIDWORD(v125);
      *(a1 + 1132) = HIDWORD(v125);
      *(a1 + 1136) = v93;
      *(a1 + 1144) = v92;
      *(a1 + 1148) = v93;
    }

    if (v77)
    {
      v94 = !v76;
    }

    else
    {
      v94 = 1;
    }

    if (v94)
    {
      if (((!v76 | v77) & 1) == 0)
      {
        *v87 = 279172874250000;
        *(a1 + 1144) = 10000;
        v91 = 65000;
        goto LABEL_198;
      }
    }

    else
    {
      v128 = -1;
      active = (*(*(a1 + 64) + 96))(*(a1 + 48), *(a1 + 56), "lidcfg", "rejectparam1", &v129, &v128, &v127);
      if ((active & 0x80000000) != 0)
      {
        goto LABEL_226;
      }

      if (v128)
      {
        *v87 = LH_atou(*v129);
      }

      v128 = -1;
      active = (*(*(a1 + 64) + 96))(*(a1 + 48), *(a1 + 56), "lidcfg", "rejectparam2", &v129, &v128, &v127);
      if ((active & 0x80000000) != 0)
      {
        goto LABEL_226;
      }

      if (v128)
      {
        *(a1 + 1136) = LH_atou(*v129);
      }

      v128 = 1;
      if (((*(*(a1 + 64) + 96))(*(a1 + 48), *(a1 + 56), "lidcfg", "rejectparam1", &v129, &v128, &v127) & 0x80000000) == 0 && v128)
      {
        *(a1 + 1144) = LH_atou(*v129);
      }

      v128 = 1;
      if (((*(*(a1 + 64) + 96))(*(a1 + 48), *(a1 + 56), "lidcfg", "rejectparam2", &v129, &v128, &v127) & 0x80000000) == 0 && v128)
      {
        v91 = LH_atou(*v129);
        goto LABEL_198;
      }
    }

    goto LABEL_199;
  }

  v89 = *(a1 + 1140);
  v90 = *(a1 + 1188);
  if (!v89)
  {
    if (v90 != 1)
    {
      if (!v90)
      {
        v91 = 0;
        *(a1 + 1136) = 0;
        goto LABEL_198;
      }

      goto LABEL_199;
    }

    goto LABEL_178;
  }

  if (v90 == 1)
  {
    goto LABEL_178;
  }

LABEL_173:
  if (v89 == 1)
  {
    goto LABEL_174;
  }

LABEL_199:
  Str = paramc_ParamSetUInt(*(v2 + 40), "membiasedrejectparam1", *(a1 + 1144));
  if ((Str & 0x80000000) != 0)
  {
    goto LABEL_17;
  }

  Str = paramc_ParamSetUInt(*(v2 + 40), "membiasedrejectparam2", *(a1 + 1148));
  if ((Str & 0x80000000) != 0)
  {
    goto LABEL_17;
  }

  v95 = *(v2 + 40);
  *__s2 = a1;
  v131 = v119;
  Str = paramc_ListenerAdd(v95, "membiasedrejectparam1", __s2);
  if ((Str & 0x80000000) != 0)
  {
    goto LABEL_17;
  }

  v96 = *(v2 + 40);
  *__s2 = a1;
  v131 = v119;
  Str = paramc_ListenerAdd(v96, "membiasedrejectparam2", __s2);
  if ((Str & 0x80000000) != 0)
  {
    goto LABEL_17;
  }

  *(a1 + 1180) = 0;
  v128 = -1;
  active = (*(*(a1 + 64) + 96))(*(a1 + 48), *(a1 + 56), "lidcfg", "numfallback", &v129, &v128, &v127);
  if ((active & 0x80000000) != 0)
  {
    goto LABEL_226;
  }

  if (v128)
  {
    *(a1 + 1180) = 1;
  }

  v128 = 1;
  if (((*(*(a1 + 64) + 96))(*(a1 + 48), *(a1 + 56), "lidcfg", "numfallback", &v129, &v128, &v127) & 0x80000000) == 0 && v128)
  {
    *(a1 + 1184) = 1;
  }

  *(a1 + 1156) = xmmword_1C37BE030;
  *(a1 + 1172) = 0x786E65000003E8;
  v128 = -1;
  active = (*(*(a1 + 64) + 96))(*(a1 + 48), *(a1 + 56), "lidcfg", "fuzzythreshold", &v129, &v128, &v127);
  if ((active & 0x80000000) != 0)
  {
    goto LABEL_226;
  }

  if (v128)
  {
    *(a1 + 1156) = 1;
    v97 = LH_atou(*v129);
    *(a1 + 1160) = v97;
    log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "setting fuzzy matching threshold to %7lu", v98, v99, v100, v97);
  }

  v128 = 1;
  if (((*(*(a1 + 64) + 96))(*(a1 + 48), *(a1 + 56), "lidcfg", "fuzzythreshold", &v129, &v128, &v127) & 0x80000000) == 0 && v128)
  {
    *(a1 + 1168) = 1;
    v101 = LH_atou(*v129);
    *(a1 + 1172) = v101;
    log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "setting common fuzzy matching threshold to %7lu", v102, v103, v104, v101);
  }

  v128 = -1;
  active = (*(*(a1 + 64) + 96))(*(a1 + 48), *(a1 + 56), "lidcfg", "fuzzyfallbacklang", &v129, &v128, &v127);
  if ((active & 0x80000000) != 0)
  {
    goto LABEL_226;
  }

  v105 = (a1 + 1164);
  if (v128)
  {
    v106 = *v129;
    v107 = strlen(*v129);
    *(a1 + 1156) = 1;
    *v105 = *v106;
    if (v107 >= 4)
    {
      *(a1 + 1167) = 0;
    }

    log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "setting fuzzy matching fallback language to %s", v108, v109, v110, a1 + 1164);
  }

  v128 = 1;
  v16 = 0;
  if (((*(*(a1 + 64) + 96))(*(a1 + 48), *(a1 + 56), "lidcfg", "fuzzyfallbacklang", &v129, &v128, &v127) & 0x80000000) == 0 && v128)
  {
    v111 = *v129;
    v112 = strlen(*v129);
    *(a1 + 1156) = 1;
    *v105 = *v111;
    if (v112 >= 4)
    {
      *(a1 + 1167) = 0;
    }

    log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "setting fuzzy matching fallback language to %s", v113, v114, v115, a1 + 1164);
LABEL_225:
    v16 = 0;
  }

LABEL_227:
  v116 = *MEMORY[0x1E69E9840];
  return v16;
}

uint64_t fe_lid_ObjClose(void *a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 62400, 135000);
  if ((result & 0x80000000) != 0)
  {
    return 2345672712;
  }

  if (a1)
  {
    if (a1[9])
    {
      objc_ReleaseObject(*(a1[2] + 48), "SYNTHSTREAM");
    }

    if (a1[8])
    {
      objc_ReleaseObject(*(a1[2] + 48), "FE_DCTLKP");
    }

    if (a1[12])
    {
      objc_ReleaseObject(*(a1[2] + 48), "COMPQUERY");
    }

    fe_lid_HlpClose(a1);
    heap_Free(*(a1[2] + 8), a1);
    return 0;
  }

  return result;
}

uint64_t fe_lid_ProcessStart(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  __s1 = 0;
  v17 = 0;
  v16 = 0;
  v7 = safeh_HandleCheck(a1, a2, 62400, 135000);
  if ((v7 & 0x80000000) != 0)
  {
    return 2345672712;
  }

  v8 = v7;
  synstrmaux_InitStreamOpener(a1 + 104, *(*(a1 + 16) + 32), "FE_LID");
  *(a1 + 1000) = 0;
  if ((paramc_ParamGetStr(*(*(a1 + 16) + 40), "textanalysison", &__s1) & 0x80000000) == 0 && __s1 && *__s1 && !strcmp(__s1, "yes"))
  {
    *(a1 + 996) = 1;
  }

  if (*(a1 + 1188))
  {
    *(a1 + 1192) = *(a1 + 1144);
    if (*(a1 + 996))
    {
      *(a1 + 1000) = 0;
      paramc_ParamSetUInt(*(*(a1 + 16) + 40), "initcommonbiasvalue", 0);
      paramc_ParamSetStr(*(*(a1 + 16) + 40), "initcommonbiaslanguage", &unk_1C37BE0C2);
      if (*(a1 + 1000))
      {
        goto LABEL_20;
      }
    }

    else
    {
      if ((paramc_ParamGetUInt(*(*(a1 + 16) + 40), "initcommonbiasvalue", &v17) & 0x80000000) == 0)
      {
        if (v17)
        {
          if ((paramc_ParamGetStr(*(*(a1 + 16) + 40), "initcommonbiaslanguage", &v16) & 0x80000000) == 0)
          {
            v13 = v16;
            if (v16)
            {
              *(a1 + 1192) = v17;
              *(a1 + 1000) = 1;
LABEL_19:
              *(a1 + 1196) = *v13;
              goto LABEL_20;
            }
          }
        }
      }

      *(a1 + 1000) = 0;
    }

    v13 = *(a1 + 1912);
    goto LABEL_19;
  }

LABEL_20:
  if (*(a1 + 1004))
  {
    if (*(a1 + 1018) || *(a1 + 1066))
    {
      synstrmaux_RegisterInStream((a1 + 104), "text/plain;charset=utf-8", 0, a1 + 928);
      synstrmaux_RegisterInStream((a1 + 104), "application/x-realspeak-markers-pp;version=4.0", 0, a1 + 944);
      synstrmaux_RegisterOutStream((a1 + 104), "text/plain;charset=utf-8", a1 + 960);
      synstrmaux_RegisterOutStream((a1 + 104), "application/x-realspeak-markers-pp;version=4.0", a1 + 976);
      v8 = synstrmaux_OpenStreams((a1 + 104), *(a1 + 72), a3, a4);
      if ((v8 & 0x80000000) != 0)
      {
        synstrmaux_CloseStreams((a1 + 104), *(a1 + 72));
      }
    }

    else
    {
      log_OutPublic(*(*(a1 + 16) + 32), "FE_LID", 48002, 0, v9, v10, v11, v12, v15);
      return 2345672707;
    }
  }

  return v8;
}

uint64_t hlp_AppendItemRaw32(uint64_t a1, uint64_t *a2, unsigned int *a3, unsigned int *a4, unsigned int a5, int a6)
{
  v6 = 2345672714;
  if (!a2)
  {
    return 2345672711;
  }

  v10 = *a2;
  if (v10)
  {
    v11 = *a4 + 1;
    v12 = *a3;
    if (v11 <= *a3)
    {
LABEL_9:
      v6 = 0;
      *a4 = v11;
      return v6;
    }

    v13 = v12 + a6;
    v14 = heap_Realloc(*(*(a1 + 16) + 8), v10, (v12 + a6) * a5);
    if (!v14)
    {
      return v6;
    }

LABEL_8:
    *a2 = v14;
    *a3 = v13;
    v11 = *a4 + 1;
    goto LABEL_9;
  }

  *a3 = 0;
  *a4 = 0;
  v13 = *a3 + a6;
  v14 = heap_Calloc(*(*(a1 + 16) + 8), a5, v13);
  if (v14)
  {
    goto LABEL_8;
  }

  return v6;
}

uint64_t fe_lid_Process(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v188 = *MEMORY[0x1E69E9840];
  v173 = 0;
  v171 = 0;
  v172 = 0;
  v169 = 0;
  v170 = 0;
  v168 = 0;
  v7 = safeh_HandleCheck(a1, a2, 62400, 135000);
  if ((v7 & 0x80000000) != 0)
  {
    Str = 2345672712;
    goto LABEL_333;
  }

  Str = v7;
  *a5 = 1;
  v9 = *(a1 + 928);
  if (v9)
  {
    v10 = (*(*(a1 + 72) + 144))(v9, *(a1 + 936), &v173, &v172);
    if ((v10 & 0x80000000) != 0)
    {
      Str = v10;
      goto LABEL_333;
    }

    Str = (*(*(a1 + 72) + 144))(*(a1 + 944), *(a1 + 952), &v172 + 4, &v172);
    if ((Str & 0x80000000) == 0)
    {
      if (v173)
      {
        v185 = 0;
        v186 = 0;
        v184 = 0;
        v183 = 0;
        v182 = 0;
        v180 = 0;
        v181 = 0;
        v178 = 0;
        v179 = 0;
        v177 = 0;
        *(a1 + 992) = 1;
        if (((*(*(a1 + 64) + 80))(*(a1 + 48), *(a1 + 56), "mertfrq", 0, &v177) & 0x80000000) != 0 || !v177)
        {
          v22 = (*(*(a1 + 64) + 80))(*(a1 + 48), *(a1 + 56), "mertfrq_latn", 0, &v177) < 0 || v177 == 0;
          v11 = v22;
          v12 = 1180;
          if (v22)
          {
            v12 = 1184;
          }
        }

        else
        {
          v11 = 0;
          v12 = 1180;
        }

        *(a1 + 992) = v11;
        v23 = *(a1 + v12);
        appended = (*(*(a1 + 72) + 88))(*(a1 + 928), *(a1 + 936), &v186, &v185 + 4);
        if ((appended & 0x80000000) != 0 || (v25 = HIDWORD(v185), appended = (*(*(a1 + 72) + 88))(*(a1 + 944), *(a1 + 952), &v184, &v183), (appended & 0x80000000) != 0) || (v183 >>= 5, v181 = 0, appended = hlp_AppendItemRaw32(a1, &v181, &v180, &v180 + 1, 0x20u, v183 + 10), (appended & 0x80000000) != 0))
        {
          Str = appended;
          v26 = 0;
          goto LABEL_39;
        }

        HIDWORD(v180) = 0;
        if (*v184 == 0x4000)
        {
          LODWORD(v185) = v184[3];
        }

        else
        {
          (*(*(a1 + 72) + 136))(*(a1 + 928), *(a1 + 936), &v185);
        }

        v158 = v23;
        v156 = v25;
        __src[0] = 0;
        if ((paramc_ParamGetStr(*(*(a1 + 16) + 40), "lidon", &v182) & 0x80000000) != 0)
        {
          v36 = 0;
        }

        else
        {
          __strcpy_chk();
          v34 = v182;
          v35 = strcmp(v182, "unknown") == 0;
          if (strlen(v34) == 3)
          {
            v35 = 2;
          }

          if (!strncmp(v34, "vceunkn", 7uLL))
          {
            v35 = 3;
          }

          if (!strcmp(v34, "unknown:noautolid"))
          {
            v36 = 4;
          }

          else
          {
            v36 = v35;
          }
        }

        v37 = v183;
        if (v183)
        {
          v160 = v36;
          v38 = 0;
          v39 = 0;
          do
          {
            v40 = &v184[8 * v39];
            if (*v40 == 36)
            {
              v41 = *(v40 + 24);
              v42 = strcmp(v41, "unknownint") && strcmp(v41, "normal") != 0;
              if (*(a1 + 996))
              {
                hlp_SetParamcTAHasUserUnknown(a1, v40, v37 - v38);
                v43 = *(v40 + 24);
                if (!strcmp(v43, "ins_unknown"))
                {
                  *v43 = 0x6E776F6E6B6E75;
                }
              }
            }

            else
            {
              v42 = 0;
            }

            v38 = ++v39;
            v37 = v183;
          }

          while (v183 > v39 && !v42);
          if (v183)
          {
            v164 = 0;
            v45 = 0;
            v159 = 0;
            v46 = v160;
            v161 = v160;
            v47 = v160;
            while (1)
            {
              v48 = &v184[8 * v45];
              if (*(a1 + 1004) == 2)
              {
                v49 = v48[3];
                v50 = v49 != v185;
                if (v49 == v185)
                {
                  v51 = 0;
                }

                else
                {
                  v51 = HIDWORD(v185);
                }
              }

              else
              {
                v50 = 0;
                v51 = 0;
              }

              v52 = *v48;
              if (v46 && v52 == 36)
              {
                v53 = *(v48 + 3);
                if (!strcmp(v53, "unknown"))
                {
                  v47 = 1;
                }

                if (strlen(v53) == 3)
                {
                  v47 = 2;
                }

                if (!strncmp(v53, "vceunkn", 7uLL))
                {
                  v47 = 3;
                }

                if (!strcmp(v53, "unknown:noautolid"))
                {
                  v47 = 4;
                }

                __strcpy_chk();
                v52 = *v48;
                v161 = v47;
              }

              if (v52 == 36 && (!*(a1 + 1188) || (v54 = *(v48 + 3), strcmp(v54, "normal")) && strcmp(v54, "normal:noautolid") || (*(a1 + 1192) = *(a1 + 1144), *(a1 + 1196) = **(a1 + 1912), *v48 == 36)) && ((v55 = *(v48 + 3), !(strcmp(v55, "unknownint") | v42)) || !strcmp(v55, "unknown") || !strcmp(v55, "unknown:noautolid") || !strncmp(v55, "vceunkn", 7uLL) || !strcmp(v55, "unknownmem")))
              {
                *(a1 + 1920) = 0;
                *(a1 + 1920) = strcmp(*(v48 + 3), "unknownmem") == 0;
                if (!strncmp(*(v48 + 3), "vceunkn", 7uLL))
                {
                  *(a1 + 1008) = 0;
                }

                v58 = v48[3];
                v57 = v58 - v185;
                v51 = HIDWORD(v185) - (v58 - v185);
                v59 = v45;
                while (v183 > ++v59)
                {
                  v60 = v184[8 * v59];
                  if (v60 == 36 || v60 == 7)
                  {
                    __s1 = 0;
                    v51 = v184[8 * v59 + 3] - v58;
                    goto LABEL_120;
                  }
                }

                __s1 = 0;
LABEL_120:
                v56 = 1;
              }

              else
              {
                __s1 = v47;
                v56 = 0;
                v57 = 0;
                if (!v50)
                {
                  goto LABEL_138;
                }
              }

              if (v51)
              {
                v62 = *(v48 + 3);
                v163 = v57;
                if (!strncmp(v62, "vceunkn", 7uLL))
                {
                  v157 = v51;
                  __s = 0;
                  Str = paramc_ParamGetStr(*(*(a1 + 16) + 40), "lidlanguages", &__s);
                  if (__s && *__s)
                  {
                    v67 = strlen(__s);
                    v68 = heap_Alloc(*(*(a1 + 16) + 8), (v67 + 1));
                    if (!v68)
                    {
                      goto LABEL_313;
                    }

                    v66 = v68;
                    strcpy(v68, __s);
                  }

                  else
                  {
                    v66 = 0;
                  }

                  if ((Str & 0x80000000) == 0)
                  {
                    v69 = paramc_ParamSetStr(*(*(a1 + 16) + 40), "lidlanguages", 0);
                    if ((v69 & 0x80000000) != 0)
                    {
                      Str = v69;
                      if (v66)
                      {
                        heap_Free(*(*(a1 + 16) + 8), v66);
                      }

LABEL_313:
                      v26 = v159;
LABEL_39:
                      v27 = 0;
LABEL_40:
                      v28 = HIDWORD(v178);
                      if (HIDWORD(v178))
                      {
                        v29 = 0;
                        do
                        {
                          v30 = *(v181 + 32 * v179[v29] + 24);
                          if (v30)
                          {
                            heap_Free(*(*(a1 + 16) + 8), v30);
                            v28 = HIDWORD(v178);
                          }

                          ++v29;
                        }

                        while (v29 < v28);
                      }

                      if (v26)
                      {
                        v31 = *(v26 + 24);
                        if (v31)
                        {
                          heap_Free(*(*(a1 + 16) + 8), v31);
                        }
                      }

                      if (v181)
                      {
                        heap_Free(*(*(a1 + 16) + 8), v181);
                      }

                      if (v179)
                      {
                        heap_Free(*(*(a1 + 16) + 8), v179);
                      }

                      if (v27)
                      {
                        v32 = *(*(a1 + 16) + 8);
                        v33 = v27;
                        goto LABEL_332;
                      }

                      goto LABEL_333;
                    }
                  }

                  v63 = v45;
                  v64 = v56;
                  v65 = *(v48 + 3) + 7;
                  v62 = *(v48 + 3);
                  v51 = v157;
                }

                else
                {
                  v63 = v45;
                  v64 = v56;
                  v65 = 0;
                  v66 = 0;
                }

                v70 = strcmp(v62, "unknown:noautolid");
                v71 = lid_Identify(a1, &v186[v163], v51);
                if ((v71 & 0x80000000) != 0)
                {
                  Str = v71;
                  if (v66)
                  {
                    heap_Free(*(*(a1 + 16) + 8), v66);
                  }

                  goto LABEL_307;
                }

                v72 = v62 + 7;
                if (v70)
                {
                  v72 = v65;
                }

                v73 = hlp_AppendLidResultAsMarkers(a1, &v181, &v180, &v180 + 1, &v179, &v178, &v178 + 1, v185 + v163, v72);
                if ((v73 & 0x80000000) != 0)
                {
                  Str = v73;
                  v26 = v159;
                  if (v66)
                  {
                    heap_Free(*(*(a1 + 16) + 8), v66);
                  }

                  goto LABEL_39;
                }

                v46 = v160;
                v56 = v64;
                v45 = v63;
                if (v66)
                {
                  Str = paramc_ParamSetStr(*(*(a1 + 16) + 40), "lidlanguages", v66);
                  heap_Free(*(*(a1 + 16) + 8), v66);
                  if ((Str & 0x80000000) != 0)
                  {
                    goto LABEL_307;
                  }
                }
              }

LABEL_138:
              if (v56)
              {
                goto LABEL_158;
              }

              v74 = hlp_AppendItemRaw32(a1, &v181, &v180, &v180 + 1, 0x20u, 10);
              if ((v74 & 0x80000000) != 0)
              {
                goto LABEL_304;
              }

              v75 = HIDWORD(v180) - 1;
              if (SHIDWORD(v180) > 1)
              {
                v76 = 0;
                v77 = HIDWORD(v180) - 2;
                while (*(v181 + 32 * v77 + 12) > v48[3])
                {
                  ++v76;
                  v78 = v77-- <= 0;
                  if (v78)
                  {
                    v77 = -1;
                    goto LABEL_148;
                  }
                }

                LOWORD(v75) = v76;
LABEL_148:
                v79 = (v77 + 1);
                if (v75)
                {
                  memmove((v181 + 32 * v79 + 32), (v181 + 32 * v79), 32 * v75);
                  v80 = HIDWORD(v178);
                  if (HIDWORD(v178))
                  {
                    v81 = v179;
                    do
                    {
                      if (*v81 >= v79)
                      {
                        ++*v81;
                      }

                      ++v81;
                      --v80;
                    }

                    while (v80);
                  }

                  goto LABEL_157;
                }

                v75 = v77 + 1;
              }

              v79 = v75;
LABEL_157:
              v82 = (v181 + 32 * v79);
              v83 = *(v48 + 1);
              *v82 = *v48;
              v82[1] = v83;
LABEL_158:
              v47 = __s1;
              v84 = *v48 == 0x4000 && (__s1 & 0xFFFFFFFD) == 1;
              if (v84 && v183 - 1 > v164 && v48[8] != 36)
              {
                v85 = v48[3];
                v86 = v85 - v185;
                v87 = HIDWORD(v185) - (v85 - v185);
                v88 = v45;
                while (v183 > ++v88)
                {
                  v89 = v184[8 * v88];
                  if (v89 == 36 || v89 == 7)
                  {
                    v87 = v184[8 * v88 + 3] - v85;
                    break;
                  }
                }

                if (v87)
                {
                  v74 = lid_Identify(a1, &v186[v86], v87);
                  if ((v74 & 0x80000000) != 0 || (v74 = hlp_AppendLidResultAsMarkers(a1, &v181, &v180, &v180 + 1, &v179, &v178, &v178 + 1, v185 + v86, 0), (v74 & 0x80000000) != 0))
                  {
LABEL_304:
                    Str = v74;
LABEL_307:
                    v27 = 0;
                    goto LABEL_308;
                  }
                }

                goto LABEL_202;
              }

              if (*v48 != 0x4000 || __s1 != 2)
              {
                goto LABEL_203;
              }

              if (v183 - 1 > v164 && v48[8] != 36)
              {
                Str = hlp_AppendItemRaw32(a1, &v181, &v180, &v180 + 1, 0x20u, 10);
                if ((Str & 0x80000000) != 0)
                {
                  goto LABEL_307;
                }

                v91 = HIDWORD(v180) - 1;
                if (SHIDWORD(v180) > 1)
                {
                  v92 = 0;
                  v93 = HIDWORD(v180) - 2;
                  while (*(v181 + 32 * v93 + 12) > v48[3])
                  {
                    ++v92;
                    v78 = v93-- <= 0;
                    if (v78)
                    {
                      v93 = -1;
                      goto LABEL_191;
                    }
                  }

                  LOWORD(v91) = v92;
LABEL_191:
                  v94 = (v93 + 1);
                  if (v91)
                  {
                    memmove((v181 + 32 * v94 + 32), (v181 + 32 * v94), 32 * v91);
                    v95 = HIDWORD(v178);
                    if (HIDWORD(v178))
                    {
                      v96 = v179;
                      do
                      {
                        if (*v96 >= v94)
                        {
                          ++*v96;
                        }

                        ++v96;
                        --v95;
                      }

                      while (v95);
                    }

LABEL_200:
                    v97 = v181 + 32 * v94;
                    v98 = *(v97 - 16);
                    *v97 = *(v97 - 32);
                    *(v97 + 16) = v98;
                    *v97 = 36;
                    v99 = heap_Alloc(*(*(a1 + 16) + 8), 8);
                    v159 = v97;
                    *(v97 + 24) = v99;
                    if (!v99)
                    {
                      goto LABEL_307;
                    }

                    strcpy(v99, __src);
LABEL_202:
                    v47 = 0;
                    goto LABEL_203;
                  }

                  v91 = v93 + 1;
                }

                v94 = v91;
                goto LABEL_200;
              }

              v47 = 2;
LABEL_203:
              v164 = ++v45;
              if (v183 <= v45)
              {
                goto LABEL_211;
              }
            }
          }

          v159 = 0;
          v36 = v160;
        }

        else
        {
          v159 = 0;
        }

        v161 = v36;
LABEL_211:
        if (v161 > 2)
        {
          v100 = v158;
          if (v161 == 3)
          {
            v101 = "vceunkn";
          }

          else
          {
            v101 = "unknown:noautolid";
          }
        }

        else
        {
          v100 = v158;
          if (v161 == 1)
          {
            v101 = "unknown";
          }

          else if (v161 == 2)
          {
            v101 = __src;
          }

          else
          {
            v101 = &unk_1C37BE0C2;
          }
        }

        paramc_ParamSetStr(*(*(a1 + 16) + 40), "lidon", v101);
        v102 = HIDWORD(v180);
        if (HIDWORD(v180))
        {
          v103 = 0;
          v27 = 0;
          v104 = 0;
          v105 = 0;
          v106 = 0;
          __s1a = "normal";
          while (1)
          {
            v107 = (v181 + 32 * v106);
            v108 = *v107;
            if (*v107 == 21)
            {
              goto LABEL_283;
            }

            if (v108 == 34)
            {
              break;
            }

            if (v108 != 36)
            {
              if (v108 != 1 || v100 == 0)
              {
                goto LABEL_284;
              }

              if (v104)
              {
                v112 = 0;
                v113 = 1;
                goto LABEL_253;
              }

              v162 = v105;
              v165 = v27;
              v116 = v185;
              v117 = *(*(a1 + 16) + 8);
              v118 = v186;
              v120 = v107[3];
              v119 = v107[4];
              v121 = heap_Alloc(v117, (v119 + 1));
              if (v121)
              {
                v122 = v121;
                v123 = v120 - v116;
                v124 = strncpy(v121, &v118[v123], v119);
                v124[v119] = 0;
                CurrentUtf8Offset = utf8_GetCurrentUtf8Offset(v124, 0);
                v126 = CurrentUtf8Offset + v119;
                if (CurrentUtf8Offset < CurrentUtf8Offset + v119)
                {
                  NextUtf8Offset = CurrentUtf8Offset;
                  while (!utf8_BelongsToSet(6u, v122, NextUtf8Offset, v119))
                  {
                    NextUtf8Offset = utf8_GetNextUtf8Offset(v122, NextUtf8Offset);
                    if (NextUtf8Offset >= v126)
                    {
                      goto LABEL_251;
                    }
                  }

                  heap_Free(v117, v122);
                  v134 = heap_Realloc(*(*(a1 + 16) + 8), v165, (*(v181 + 32 * v106 + 16) + 7));
                  if (!v134)
                  {
                    log_OutPublic(*(*(a1 + 16) + 32), "FE_LID", 48000, 0, v135, v136, v137, v138, v155);
                    Str = 2345672714;
                    goto LABEL_333;
                  }

                  v27 = v134;
                  strcpy(v134, "mlnum_");
                  v100 = v158;
                  v104 = 0;
                  if (*(v181 + 32 * v106 + 16))
                  {
                    v139 = 0;
                    LOWORD(v140) = 0;
                    while (1)
                    {
                      v141 = v186[v139 + v123];
                      if (v141 == 255)
                      {
                        break;
                      }

                      v134[v140 + 6] = v141;
                      LOWORD(v140) = v140 + 1;
                      v139 = v140;
                      if (*(v181 + 32 * v106 + 16) <= v140)
                      {
                        v140 = v140;
                        goto LABEL_273;
                      }
                    }

                    v112 = 1;
                  }

                  else
                  {
                    v140 = 0;
LABEL_273:
                    __s = 0;
                    v174 = 0;
                    if (*(a1 + 992))
                    {
                      v142 = 1;
                    }

                    else
                    {
                      v142 = -1;
                    }

                    v175 = v142;
                    v134[v140 + 6] = 0;
                    v128 = (*(*(a1 + 64) + 96))(*(a1 + 48), *(a1 + 56), "lidcfg", v134, &__s, &v175, &v174);
                    v112 = v175 == 0;
                    if ((v128 & 0x80000000) != 0)
                    {
                      goto LABEL_303;
                    }
                  }

                  v105 = v162;
                  v113 = !v112;
                  if (!v112 || v162)
                  {
LABEL_253:
                    if (!v105 || v112)
                    {
                      v105 = v112;
                    }

                    else
                    {
                      v105 = 0;
                      if (strcmp(__s1a, "normal"))
                      {
                        goto LABEL_256;
                      }
                    }
                  }

                  else
                  {
                    v105 = 1;
                    if (!strcmp(__s1a, "normal"))
                    {
LABEL_283:
                      v104 = 0;
                    }

                    else
                    {
                      v113 = 0;
LABEL_256:
                      v128 = hlp_AppendItemRaw32(a1, &v181, &v180, &v180 + 1, 0x20u, 10);
                      if ((v128 & 0x80000000) != 0)
                      {
                        goto LABEL_303;
                      }

                      memmove((v181 + 32 * v106 + 32), (v181 + 32 * v106), 32 * (HIDWORD(v180) + ~v103));
                      v129 = HIDWORD(v178);
                      if (HIDWORD(v178))
                      {
                        v130 = v179;
                        do
                        {
                          if (*v130 >= v103)
                          {
                            ++*v130;
                          }

                          ++v130;
                          --v129;
                        }

                        while (v129);
                      }

                      v131 = v181 + 32 * v106;
                      *v131 = 36;
                      v132 = "normal";
                      if (v113)
                      {
                        v132 = __s1a;
                      }

                      *(v131 + 24) = v132;
                      v133 = v181 + 32 * v106;
                      *(v133 + 4) = 0;
                      *(v133 + 8) = 0;
                      *(v133 + 12) = *(v133 + 44);
                      ++v106;
                    }
                  }

LABEL_284:
                  ++v106;
                  v102 = HIDWORD(v180);
                  goto LABEL_285;
                }

LABEL_251:
                heap_Free(v117, v122);
              }

              v112 = 0;
              v113 = 1;
              v100 = v158;
              v27 = v165;
              v105 = v162;
              v104 = 0;
              goto LABEL_253;
            }

            v109 = v104;
            v110 = *(v107 + 3);
            if (!strcmp(v110, "unknown") || !strcmp(v110, "unknown:noautolid") || !strcmp(v110, "unknownint") || !strncmp(v110, "vceunkn", 7uLL) || !strcmp(v110, "unknownmem"))
            {
              HIDWORD(v180) = --v102;
              if (v102 > v103)
              {
                memmove(v107, v107 + 8, 32 * (v102 - v103));
                v114 = HIDWORD(v178);
                v104 = v109;
                if (HIDWORD(v178))
                {
                  v115 = v179;
                  do
                  {
                    if (*v115 > v103)
                    {
                      --*v115;
                    }

                    ++v115;
                    --v114;
                  }

                  while (v114);
                }

                goto LABEL_285;
              }
            }

            else
            {
              v105 = 0;
              ++v106;
              __s1a = v110;
            }

            v104 = v109;
LABEL_285:
            v103 = v106;
            if (v102 <= v106)
            {
              goto LABEL_288;
            }
          }

          v104 = 1;
          goto LABEL_284;
        }

        v27 = 0;
LABEL_288:
        v128 = lidword_Identify(a1, v186, HIDWORD(v185), &v181, &v180, &v180 + 1, &v179, &v178, &v178 + 1);
        if ((v128 & 0x80000000) != 0)
        {
LABEL_303:
          Str = v128;
LABEL_308:
          v26 = v159;
          goto LABEL_40;
        }

        v143 = HIDWORD(v180);
        if (HIDWORD(v180))
        {
          v144 = 0;
          do
          {
            v145 = v181 + 32 * v144;
            if (*v145 == 36)
            {
              v146 = strstr(*(v145 + 24), ":noautolid");
              if (v146)
              {
                *v146 = 0;
                v143 = HIDWORD(v180);
              }
            }

            ++v144;
          }

          while (v143 > v144);
        }

        v26 = v159;
        if (v156)
        {
          v147 = (*(*(a1 + 72) + 104))(*(a1 + 960), *(a1 + 968), v186);
          if ((v147 & 0x80000000) != 0)
          {
LABEL_302:
            Str = v147;
            goto LABEL_40;
          }

          v143 = HIDWORD(v180);
        }

        v147 = (*(*(a1 + 72) + 104))(*(a1 + 976), *(a1 + 984), v181, 32 * v143);
        if ((v147 & 0x80000000) == 0)
        {
          if (!HIDWORD(v185) || (v147 = (*(*(a1 + 72) + 96))(*(a1 + 928), *(a1 + 936)), (v147 & 0x80000000) == 0))
          {
            v147 = (*(*(a1 + 72) + 96))(*(a1 + 944), *(a1 + 952), 32 * v183);
          }
        }

        goto LABEL_302;
      }

      v13 = v172;
      if (!v172)
      {
        *a5 = 0;
        goto LABEL_330;
      }

      if (!HIDWORD(v172))
      {
        goto LABEL_328;
      }

      InputOutputMarkers = hlp_GetInputOutputMarkers(a1, &v171, &v170, &v169 + 1, &v169, &v168);
      if ((InputOutputMarkers & 0x80000000) != 0)
      {
        Str = InputOutputMarkers;
      }

      else
      {
        if (!v172 && *(a1 + 1004) == 1 && v169)
        {
          v15 = v169 - 1;
          v16 = v170;
          v17 = v169 - 1;
          v18 = "unknown";
          while (1)
          {
            v19 = v16 + 32 * v15;
            if (*v19 == 36)
            {
              v20 = *(v19 + 24);
              if (!strcmp(v20, "unknown"))
              {
                goto LABEL_317;
              }

              if (!strcmp(v20, "unknown:noautolid"))
              {
                v18 = "unknown:noautolid";
                goto LABEL_317;
              }

              if (!strncmp(v20, "vceunkn", 7uLL))
              {
                v18 = "vceunkn";
                goto LABEL_317;
              }

              if (!strcmp(v20, "normal"))
              {
                break;
              }
            }

            --v15;
            if (!v17--)
            {
              goto LABEL_318;
            }
          }

          v18 = "normal";
LABEL_317:
          v148 = *v19;
          *(a1 + 1832) = *(v19 + 16);
          *(a1 + 1816) = v148;
          *(a1 + 1840) = v18;
        }

LABEL_318:
        v149 = HIDWORD(v169);
        if (*(a1 + 996))
        {
          v150 = HIDWORD(v169) == 0;
        }

        else
        {
          v150 = 1;
        }

        if (!v150)
        {
          v151 = 0;
          v152 = 0;
          do
          {
            hlp_SetParamcTAHasUserUnknown(a1, v171 + 32 * v152++, v149 - v151);
            v151 = v152;
            v149 = HIDWORD(v169);
          }

          while (HIDWORD(v169) > v152);
        }

        Str = (*(*(a1 + 72) + 120))(*(a1 + 976), *(a1 + 984), (32 * v169));
        v170 = 0;
        if ((Str & 0x80000000) != 0)
        {
          goto LABEL_330;
        }

        if (!HIDWORD(v169) || (Str = (*(*(a1 + 72) + 96))(*(a1 + 944), *(a1 + 952), (32 * HIDWORD(v169))), (Str & 0x80000000) == 0))
        {
          v13 = v172;
LABEL_328:
          if (v13)
          {
            Str = synstrmaux_CloseOutStreamsOnly((a1 + 104), *(a1 + 72));
          }

          goto LABEL_330;
        }
      }

      if (v170)
      {
        (*(*(a1 + 72) + 120))(*(a1 + 976), *(a1 + 984), 0);
      }

LABEL_330:
      v33 = v168;
      if (v168)
      {
        v32 = *(*(a1 + 16) + 8);
LABEL_332:
        heap_Free(v32, v33);
      }
    }
  }

LABEL_333:
  v153 = *MEMORY[0x1E69E9840];
  return Str;
}

uint64_t hlp_GetInputOutputMarkers(uint64_t a1, uint64_t *a2, uint64_t *a3, int *a4, _DWORD *a5, void *a6)
{
  v45 = *MEMORY[0x1E69E9840];
  __s1 = 0;
  *a5 = 0;
  *a4 = 0;
  v12 = (*(*(a1 + 72) + 88))(*(a1 + 944), *(a1 + 952), a2);
  if ((v12 & 0x80000000) != 0)
  {
    v18 = v12;
    goto LABEL_46;
  }

  *a4 = *a4 >> 5;
  v44 = 0;
  if ((paramc_ParamGetStr(*(*(a1 + 16) + 40), "lidon", &__s1) & 0x80000000) != 0)
  {
    goto LABEL_28;
  }

  __strcpy_chk();
  v13 = __s1;
  if (!strcmp(__s1, "unknown:noautolid"))
  {
    v17 = 4;
    goto LABEL_13;
  }

  v14 = strncmp(v13, "vceunkn", 7uLL);
  v15 = strlen(v13);
  v16 = strcmp(v13, "unknown") == 0;
  if (v15 == 3)
  {
    v16 = 2;
  }

  if (v14)
  {
    v17 = v16;
  }

  else
  {
    v17 = 3;
  }

  if (v17)
  {
LABEL_13:
    if (*a4 < 2)
    {
      goto LABEL_29;
    }

    v19 = *a2;
    if (**a2 != 0x4000 || v19[8] != 36)
    {
      goto LABEL_29;
    }

    v20 = *(v19 + 7);
    if (strcmp(v20, "unknown"))
    {
      if (!strcmp(v20, "vceunkn"))
      {
        goto LABEL_26;
      }

      v21 = strcmp(v20, "unknown:noautolid");
      v22 = *(*(a1 + 16) + 40);
      if (!v21)
      {
LABEL_24:
        v24 = "unknown:noautolid";
LABEL_27:
        paramc_ParamSetStr(v22, "lidon", v24);
        goto LABEL_28;
      }

      paramc_ParamSetStr(v22, "lidon", v13);
      if (*(*a2 + 64) != 36)
      {
LABEL_28:
        v17 = 0;
        goto LABEL_29;
      }

      v23 = *(*a2 + 88);
      if (strcmp(v23, "unknown"))
      {
        if (strncmp(v23, "vceunkn", 7uLL))
        {
          if (!strcmp(v23, "unknown:noautolid"))
          {
            v22 = *(*(a1 + 16) + 40);
            goto LABEL_24;
          }

          goto LABEL_28;
        }

LABEL_26:
        v22 = *(*(a1 + 16) + 40);
        v24 = "vceunkn";
        goto LABEL_27;
      }
    }

    v22 = *(*(a1 + 16) + 40);
    v24 = "unknown";
    goto LABEL_27;
  }

LABEL_29:
  v18 = (*(*(a1 + 72) + 112))(*(a1 + 976), *(a1 + 984), a3, (32 * *a4 + 160));
  if ((v18 & 0x80000000) == 0)
  {
    v25 = *a4;
    if (v25)
    {
      if (*(a1 + 1816) == 36)
      {
        v26 = *a2;
        if (**a2 == 0x4000)
        {
          v27 = *a3;
          v28 = v26[1];
          *v27 = *v26;
          v27[1] = v28;
          v29 = *a3;
          *(v29 + 8) = *(a1 + 1816);
          *(v29 + 7) = *(a1 + 1840);
          *(*a3 + 44) = *(*a2 + 12);
          *(a1 + 1816) = 0u;
          *(a1 + 1832) = 0u;
          v30 = *a4;
          if (*a4 >= 2)
          {
            memcpy((*a3 + 64), (*a2 + 32), 32 * (v30 - 1));
            v30 = *a4;
          }

          v31 = v30 + 1;
          goto LABEL_45;
        }
      }

      v32 = *a3;
      v33 = *a2;
      if (v17 == 2)
      {
        v36 = v33[1];
        *v32 = *v33;
        v32[1] = v36;
        *(*a3 + 32) = 36;
        *(*a3 + 56) = heap_Alloc(*(*(a1 + 16) + 8), 8);
        v37 = *(*a3 + 56);
        if (!v37)
        {
          v18 = 2345672714;
          goto LABEL_46;
        }

        strcpy(v37, __s1);
        *a6 = *(*a3 + 56);
      }

      else
      {
        if (v17 != 1)
        {
          memcpy(v32, v33, 32 * v25);
          v31 = *a4;
LABEL_45:
          *a5 = v31;
          goto LABEL_46;
        }

        v34 = v33[1];
        *v32 = *v33;
        v32[1] = v34;
        v35 = *a3;
        *(v35 + 32) = 36;
        *(v35 + 56) = "unknown";
      }

      v38 = *a2;
      v39 = *a3;
      *(*a3 + 44) = *(*a2 + 12);
      v40 = *a4;
      if (*a4 >= 2)
      {
        memcpy((v39 + 64), (v38 + 32), 32 * (v40 - 1));
        v40 = *a4;
      }

      v31 = v40 + 1;
      goto LABEL_45;
    }
  }

LABEL_46:
  v41 = *MEMORY[0x1E69E9840];
  return v18;
}

uint64_t hlp_SetParamcTAHasUserUnknown(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (*(result + 996))
  {
    if (*a2 == 36 && a3 != 0)
    {
      v6 = result;
      v7 = 0;
      v8 = *(a2 + 12);
      while (1)
      {
        v9 = a2 + 32 * v7;
        if (v8 == *(v9 + 12) && *v9 == 36)
        {
          v10 = *(v9 + 24);
          if (!strcmp(v10, "unknown"))
          {
            break;
          }

          result = strcmp(v10, "unknown:noautolid");
          if (!result)
          {
            break;
          }
        }

        if (a3 <= ++v7)
        {
          return result;
        }
      }

      v11 = *(a2 + 24);
      if (!strcmp(v11, "ins_unknown"))
      {
        strcpy(v11, v10);
      }

      v12 = *(*(v6 + 16) + 40);

      return paramc_ParamSetStr(v12, "hasuserunknowninserted", "yes");
    }
  }

  return result;
}

uint64_t fe_lid_ProcessEnd(uint64_t a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 62400, 135000) & 0x80000000) != 0)
  {
    return 2345672712;
  }

  if (*(a1 + 996) == 1)
  {
    *(a1 + 996) = 0;
  }

  v3 = *(a1 + 72);

  return synstrmaux_CloseStreams((a1 + 104), v3);
}

char *AdjustLanguageGroupMappingLID2(char *result, char *__s1)
{
  if (*result)
  {
    v3 = result;
    v4 = 0;
    v5 = 0;
    do
    {
      result = strstr(__s1, (*(v3 + 2) + v4));
      if (!result)
      {
        __strcpy_chk();
        __s2[2] = 0;
        result = strstr(__s1, __s2);
        if (result)
        {
          if (result == __s1 || *(result - 1) == 44)
          {
            result = strncpy((*(v3 + 2) + v4), result, 3uLL);
          }
        }
      }

      ++v5;
      v4 += 8;
    }

    while (v5 < *v3);
  }

  return result;
}

uint64_t fe_lid_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2345672705;
  }

  result = 0;
  *a2 = &IFeLid;
  return result;
}

uint64_t hlp_FillDicLMLanguages(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, char *a7, __int16 a8)
{
  *&__c[3] = 0;
  __c[0] = 0;
  *&__c[1] = a8;
  v12 = (*(a5 + 96))(a3, a4, "lidcfg", "languages", &__c[3], &__c[1], __c);
  if ((v12 & 0x80000000) == 0)
  {
    if (*&__c[1])
    {
      v13 = **&__c[3];
      v14 = strchr(**&__c[3], __c[0]);
      if (v14)
      {
        *v14 = 0;
        v13 = **&__c[3];
      }

      v15 = 1;
      *(a2 + 2) = 1;
      v16 = strchr(v13, 44);
      if (v16)
      {
        LOWORD(v15) = 1;
        do
        {
          LOWORD(v15) = v15 + 1;
          *(a2 + 2) = v15;
          v16 = strchr(v16 + 1, 44);
        }

        while (v16);
        v15 = v15;
      }

      v17 = heap_Calloc(*(a1 + 8), v15, 24);
      *(a2 + 8) = v17;
      if (v17)
      {
        v22 = **&__c[3];
        v23 = strchr(**&__c[3], 44);
        v24 = v23;
        if (v23)
        {
          *v23 = 0;
        }

        if (*(a2 + 2))
        {
          v25 = 0;
          while (1)
          {
            v26 = *(a2 + 8);
            __strcpy_chk();
            v27 = *(a2 + 8) + 24 * v25;
            __strcpy_chk();
            *(*(a2 + 8) + 24 * v25 + 16) = 0;
            __strcpy_chk();
            HIBYTE(v36) = 0;
            if (!a7)
            {
              goto LABEL_18;
            }

            v28 = strstr(a7, &v36 + 1);
            v29 = v28;
            if (v28)
            {
              if (v28 != a7)
              {
                break;
              }
            }

LABEL_19:
            if (!a6 || v29 || (v30 = strstr(a6, &v36 + 1), (v29 = v30) == 0) || v30 == a6)
            {
              if (!v29)
              {
LABEL_26:
                v31 = 4;
                v32 = &FE_LID_LANG_2_LANG_GROUP;
                while (strcmp(v32 + 4, v22))
                {
                  v32 += 8;
                  if (!--v31)
                  {
                    goto LABEL_33;
                  }
                }

                v29 = strstr(a6, v32);
                if (v29)
                {
                  goto LABEL_31;
                }

LABEL_33:
                *(*(a2 + 8) + 24 * v25 + 20) = 0;
                if (!v24)
                {
                  goto LABEL_36;
                }

LABEL_34:
                v22 = v24 + 1;
                v34 = strchr(v24 + 1, 44);
                v24 = v34;
                if (v34)
                {
                  *v34 = 0;
                }

                goto LABEL_36;
              }
            }

            else if (*(v30 - 1) != 44)
            {
              goto LABEL_26;
            }

LABEL_31:
            v33 = *(a2 + 8) + 24 * v25;
            *(v33 + 20) = 1;
            strncpy((v33 + 8), v29, 3uLL);
            if (v24)
            {
              goto LABEL_34;
            }

LABEL_36:
            if (++v25 >= *(a2 + 2))
            {
              return v12;
            }
          }

          if (*(v28 - 1) == 44)
          {
            goto LABEL_31;
          }

LABEL_18:
          v29 = 0;
          goto LABEL_19;
        }
      }

      else
      {
        log_OutPublic(*(a1 + 32), "FE_LID", 48000, 0, v18, v19, v20, v21, v36);
        return 2345672714;
      }
    }

    else
    {
      *(a2 + 2) = 0;
      *(a2 + 8) = 0;
    }
  }

  return v12;
}

const char *hlp_FindModelLng(uint64_t a1, char *__s1, int a3)
{
  if (a3)
  {
    v4 = *(a1 + 1066);
    if (*(a1 + 1066))
    {
      for (i = *(a1 + 1072); strcmp(__s1, i); i += 24)
      {
        if (!--v4)
        {
          return 0;
        }
      }

      return i;
    }

    return 0;
  }

  v6 = *(a1 + 1018);
  if (!*(a1 + 1018))
  {
    return 0;
  }

  for (i = *(a1 + 1024); strcmp(__s1, i); i += 24)
  {
    if (!--v6)
    {
      return 0;
    }
  }

  return i;
}

uint64_t hlp_SetActiveLngs(uint64_t a1, char *__s)
{
  *__s1 = 0;
  v4 = *(a1 + 1120);
  if (v4)
  {
    heap_Free(*(*(a1 + 16) + 8), v4);
    *(a1 + 1120) = 0;
    *(a1 + 1112) = 0;
  }

  if (!__s || !*__s)
  {
    return 0;
  }

  v5 = strlen(__s);
  if (v5)
  {
    v6 = 1;
    v7 = __s;
    LODWORD(v8) = 1;
    do
    {
      v9 = *v7++;
      if (v9 == 44)
      {
        v8 = (v8 + 1);
      }

      else
      {
        v8 = v8;
      }
    }

    while (v5 > v6++);
  }

  else
  {
    v8 = 1;
  }

  v11 = heap_Calloc(*(*(a1 + 16) + 8), v8, 16);
  *(a1 + 1120) = v11;
  if (v11)
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    while (1)
    {
      v20 = __s[v16];
      if (v20 != 44 && v20 != 0)
      {
        if (v17 > 2)
        {
          v19 = 1;
        }

        else
        {
          __s1[v17 + 4] = ssft_tolower(v20);
        }

        ++v17;
        goto LABEL_56;
      }

      if (v17 == 3)
      {
        break;
      }

      v17 = 0;
      v19 = 1;
LABEL_56:
      v16 = ++v18;
      if (strlen(__s) < v18)
      {
        if (v19)
        {
          log_OutPublic(*(*(a1 + 16) + 32), "FE_LID", 48005, "%s%s", v37, v38, v39, v40, "languageCodeList");
        }

        return 0;
      }
    }

    lid_make_language_group(__s1, &__s1[4]);
    v25 = *(a1 + 1066);
    if (*(a1 + 1066))
    {
      v26 = *(a1 + 1072);
      v27 = v26;
      v28 = *(a1 + 1066);
      while (strcmp(&__s1[4], v27))
      {
        v27 += 24;
        if (!--v28)
        {
          v29 = v26;
          goto LABEL_32;
        }
      }

      v29 = v26;
      if (v26)
      {
LABEL_36:
        if (*(v27 + 4) || *(v27 + 5))
        {
LABEL_52:
          v36 = *(a1 + 1120) + 16 * *(a1 + 1112);
          __strcpy_chk();
          strcpy((*(a1 + 1120) + 16 * *(a1 + 1112) + 8), __s1);
          v17 = 0;
          ++*(a1 + 1112);
          goto LABEL_56;
        }

        v30 = 1;
LABEL_40:
        v31 = *(a1 + 1018);
        if (!*(a1 + 1018))
        {
          goto LABEL_53;
        }

        v32 = *(a1 + 1024);
        v33 = v32;
        v34 = *(a1 + 1018);
        while (strcmp(&__s1[4], v33))
        {
          v33 += 24;
          if (!--v34)
          {
            v35 = v32;
            goto LABEL_46;
          }
        }

        v35 = v32;
        if (!v32)
        {
LABEL_46:
          while (strcmp(__s1, v35))
          {
            v35 += 24;
            if (!--v31)
            {
              goto LABEL_53;
            }
          }

          v33 = v35;
          if (!v32)
          {
LABEL_53:
            if ((v30 & 1) == 0)
            {
              log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "Language %s cannot be added to the language identifier active languages: not supported by the Vocalizer models", v22, v23, v24, &__s1[4]);
            }

LABEL_55:
            v17 = 0;
            goto LABEL_56;
          }
        }

        if (!*(v33 + 4) && !*(v33 + 5))
        {
          goto LABEL_55;
        }

        goto LABEL_52;
      }

LABEL_32:
      while (strcmp(__s1, v29))
      {
        v29 += 24;
        if (!--v25)
        {
          goto LABEL_39;
        }
      }

      v27 = v29;
      if (v26)
      {
        goto LABEL_36;
      }
    }

LABEL_39:
    v30 = 0;
    goto LABEL_40;
  }

  log_OutPublic(*(*(a1 + 16) + 32), "FE_LID", 48000, 0, v12, v13, v14, v15, v42);
  return 2345672714;
}