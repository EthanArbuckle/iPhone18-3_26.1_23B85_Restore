uint64_t hlp_AppendLidResultAsMarkers(uint64_t a1, uint64_t *a2, unsigned int *a3, unsigned int *a4, uint64_t *a5, unsigned int *a6, unsigned int *a7, int a8, const char *a9)
{
  v125 = *MEMORY[0x1E69E9840];
  v94 = *(a1 + 1890);
  if (!*(a1 + 1890))
  {
    result = 0;
    goto LABEL_98;
  }

  v10 = 0;
  v91 = (a1 + 1128);
  v92 = (a1 + 1140);
  while (1)
  {
    v100 = *(a1 + 1008);
    v11 = *(a1 + 1896) + 56 * v10;
    v12 = *(v11 + 10);
    v99 = *(v11 + 16);
    v124 = 0;
    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v118 = 0u;
    v119 = 0u;
    v116 = 0u;
    v117 = 0u;
    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    v110 = 0u;
    v111 = 0u;
    v109 = 0u;
    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    v104 = 0u;
    v101 = 0;
    result = paramc_ParamGetStr(*(*(a1 + 16) + 40), "lidoriginalvoice", &v101);
    if ((result & 0x80000000) != 0)
    {
      result = 0;
      v101 = 0;
    }

    v98 = v10;
    if (v12)
    {
      v96 = result;
      v95 = v11;
      v14 = 0;
      while (1)
      {
        v15 = *(v99 + 16 * v14);
        if (v14 && *(a1 + 1200))
        {
          if (LH_stricmp(*(v99 + 16 * v14), *(a1 + 1912)))
          {
            goto LABEL_53;
          }
        }

        else
        {
          v16 = *(a1 + 1066);
          if (!*(a1 + 1066))
          {
            goto LABEL_21;
          }

          v17 = *(a1 + 1072);
          v18 = v17;
          while (strcmp(v15, v18))
          {
            v18 += 24;
            if (!--v16)
            {
              goto LABEL_21;
            }
          }

          if (!v17 || (v100 || !*(v18 + 16)) && (!v100 || !*(v18 + 20)))
          {
LABEL_21:
            v19 = *(a1 + 1018);
            if (!*(a1 + 1018))
            {
              goto LABEL_53;
            }

            v20 = *(a1 + 1024);
            v21 = v20;
            while (strcmp(v15, v21))
            {
              v21 += 24;
              if (!--v19)
              {
                goto LABEL_53;
              }
            }

            if (!v20 || (v100 || !*(v21 + 16)) && (!v100 || !*(v21 + 20)))
            {
              goto LABEL_53;
            }
          }
        }

        v124 = 0;
        v122 = 0u;
        v123 = 0u;
        v120 = 0u;
        v121 = 0u;
        v118 = 0u;
        v119 = 0u;
        v116 = 0u;
        v117 = 0u;
        v114 = 0u;
        v115 = 0u;
        v112 = 0u;
        v113 = 0u;
        v110 = 0u;
        v111 = 0u;
        v109 = 0u;
        v107 = 0u;
        v108 = 0u;
        v105 = 0u;
        v106 = 0u;
        v103 = 0u;
        v104 = 0u;
        v22 = *(v15 + 2);
        if (*(a1 + 1120))
        {
          v23 = *(a1 + 1112);
          if (v23)
          {
            v24 = 0;
            v25 = 8;
            do
            {
              v26 = *(a1 + 1120);
              if (v22 == 120)
              {
                v27 = (v26 + v25);
              }

              else
              {
                v27 = (v26 + v25 - 8);
              }

              if (!strcmp(v15, v27))
              {
                if (v100 || !*(a1 + 96))
                {
                  goto LABEL_55;
                }

                __strcpy_chk();
                if (v101)
                {
                  __strcpy_chk();
                }

                if (((*(*(a1 + 96) + 112))(*(a1 + 80), *(a1 + 88), *(*(a1 + 16) + 24), *(*(a1 + 16) + 40), &v103) & 0x80000000) == 0)
                {
                  goto LABEL_55;
                }

                BYTE8(v111) = 0;
                if (((*(*(a1 + 96) + 96))(*(a1 + 80), *(a1 + 88), *(*(a1 + 16) + 24), *(*(a1 + 16) + 40), &v103) & 0x80000000) == 0)
                {
                  goto LABEL_55;
                }

                v23 = *(a1 + 1112);
              }

              ++v24;
              v25 += 16;
            }

            while (v24 < v23);
          }
        }

        else
        {
          if (v100 || !*(a1 + 96))
          {
            goto LABEL_55;
          }

          __strcpy_chk();
          if (v101)
          {
            __strcpy_chk();
          }

          if (((*(*(a1 + 96) + 112))(*(a1 + 80), *(a1 + 88), *(*(a1 + 16) + 24), *(*(a1 + 16) + 40), &v103) & 0x80000000) == 0 || (BYTE8(v111) = 0, ((*(*(a1 + 96) + 96))(*(a1 + 80), *(a1 + 88), *(*(a1 + 16) + 24), *(*(a1 + 16) + 40), &v103) & 0x80000000) == 0))
          {
LABEL_55:
            result = 0;
            v12 = v14;
            v10 = v98;
            v11 = v95;
            break;
          }
        }

LABEL_53:
        if (++v14 == v12)
        {
          v10 = v98;
          v11 = v95;
          result = v96;
          break;
        }
      }
    }

    if (v12 < *(v11 + 10))
    {
      break;
    }

LABEL_92:
    if (++v10 == v94)
    {
      goto LABEL_98;
    }
  }

  v97 = result;
  v28 = v11;
  v29 = *(v11 + 16);
  v30 = v12;
  v31 = *(v29 + 16 * v12);
  v32 = *(a1 + 992);
  ModelLng = hlp_FindModelLng(a1, v31, v32);
  v37 = v91;
  if (v32)
  {
    v38 = *(v29 + 16 * v12 + 8);
    v37 = v92;
    if (v38)
    {
      v39 = v38 / *(v28 + 24);
      v40 = *(a1 + 1148);
      v41 = v40 >= v39;
      v42 = v40 - v39;
      if (!v41)
      {
        v42 = 0;
      }

      v43 = *(a1 + 1144) + v42;
      *(a1 + 1192) = v43;
      *(a1 + 1196) = *v31;
      v80 = *(*(v28 + 16) + 16 * v12);
      log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "Setting bias %u: %s", v33, v34, v35, v43);
      v37 = v92;
    }
  }

  v44 = v28;
  if (*v37)
  {
    if (!*(v28 + 26))
    {
      v64 = *(v28 + 30);
LABEL_76:
      v84 = *(a1 + 1136);
      v83 = *(a1 + 1132);
      v82 = *(a1 + 1018);
      log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "Rejection for message: %u %u, %u %u, %u %u", v33, v34, v35, v12);
      v10 = v98;
      result = v97;
      goto LABEL_92;
    }

    if (v37[1] <= *(v28 + 26) && v37[2] >= *(v28 + 30))
    {
      goto LABEL_76;
    }
  }

  v45 = a4;
  result = hlp_AppendItemRaw32(a1, a2, a3, a4, 0x20u, 10);
  if ((result & 0x80000000) != 0)
  {
    goto LABEL_98;
  }

  v49 = *a2 + 32 * (*a4 - 1);
  if (*(a1 + 996) && *(a1 + 1188))
  {
    result = hlp_AppendItemRaw32(a1, a2, a3, a4, 0x20u, 10);
    if ((result & 0x80000000) != 0)
    {
      goto LABEL_98;
    }

    v50 = *a2;
    v51 = *a4;
    v52 = *a2 + 32 * (*a4 - 1);
    *v52 = 42;
    v53 = *v28;
    v54 = *(v28 + 4);
    v55 = *v28 + a8;
    *(v52 + 8) = 0;
    *(v52 + 12) = v55;
    *(v52 + 16) = v54 - v53;
    LH_utoa(*(a1 + 1192), __s, 0xAu);
    __strcat_chk();
    __strcat_chk();
    v56 = strlen(__s);
    v57 = heap_Alloc(*(*(a1 + 16) + 8), (v56 + 1));
    *(v52 + 24) = v57;
    if (!v57)
    {
      result = 2345672714;
      goto LABEL_98;
    }

    v49 = v50 + 32 * (v51 - 2);
    strcpy(v57, __s);
    v45 = a4;
    v44 = v28;
  }

  v10 = v98;
  v81 = *(*(v44 + 16) + 16 * v30);
  log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "Identified language for segment %u: %s", v46, v47, v48, v98);
  if (!ModelLng)
  {
    v76 = 2345672711;
    v77 = 48001;
    goto LABEL_97;
  }

  v62 = strlen(ModelLng + 8);
  if (a9)
  {
    v63 = v62 + strlen(a9) + 6;
  }

  else
  {
    v63 = v62 + 5;
  }

  v65 = heap_Alloc(*(*(a1 + 16) + 8), v63);
  if (v65)
  {
    v66 = v65;
    v67 = strcpy(v65, ModelLng + 8);
    v68 = &v66[strlen(v67)];
    if (*(a1 + 1008))
    {
      v68[4] = 0;
      v69 = 1684630623;
    }

    else
    {
      v68[4] = 0;
      v69 = 1768715871;
    }

    *v68 = v69;
    if (a9)
    {
      strcat(v66, a9);
    }

    *(v49 + 24) = v66;
    *v49 = 36;
    v70 = *v44;
    v71 = *(v44 + 4);
    v72 = *v44 + a8;
    *(v49 + 8) = 0;
    *(v49 + 12) = v72;
    *(v49 + 16) = v71 - v70;
    if (*(a1 + 996) && *(a1 + 1188))
    {
      v73 = a7;
      result = hlp_AppendItemRaw32(a1, a5, a6, a7, 4u, 10);
      if ((result & 0x80000000) != 0)
      {
        goto LABEL_98;
      }

      *(*a5 + 4 * (*a7 - 1)) = *v45 - 2;
      result = hlp_AppendItemRaw32(a1, a5, a6, a7, 4u, 10);
      if ((result & 0x80000000) != 0)
      {
        goto LABEL_98;
      }

      result = 0;
      v74 = *v45 - 1;
      v75 = *a5;
    }

    else
    {
      v73 = a7;
      result = hlp_AppendItemRaw32(a1, a5, a6, a7, 4u, 10);
      if ((result & 0x80000000) != 0)
      {
        goto LABEL_98;
      }

      result = 0;
      v74 = *v45 - 1;
      v75 = *a5;
    }

    *(v75 + 4 * (*v73 - 1)) = v74;
    goto LABEL_92;
  }

  v77 = 48000;
  v76 = 2345672714;
LABEL_97:
  log_OutPublic(*(*(a1 + 16) + 32), "FE_LID", v77, 0, v58, v59, v60, v61, v79);
  result = v76;
LABEL_98:
  v78 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t fe_lid_ClassOpen(_WORD *a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  if (!a3)
  {
    return 2345672711;
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

uint64_t fe_lid_ObjReopen(uint64_t a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 62400, 135000) & 0x80000000) != 0)
  {
    return 2345672712;
  }

  fe_lid_HlpClose(a1);

  return fe_lid_HlpOpen(a1);
}

uint64_t lidmde_ParseStemmingRules(uint64_t a1)
{
  v2 = a1 + 0x20000;
  v3 = *(a1 + 134976);
  v4 = strchr(v3, 59);
  if (v4)
  {
    v5 = 2;
    do
    {
      v4 = strchr(v4 + 1, 59);
      ++v5;
    }

    while (v4);
    v6 = v5;
  }

  else
  {
    v6 = 2;
  }

  v7 = 2345672711;
  v8 = heap_Calloc(*(*(a1 + 16) + 8), v6, 8);
  *(v2 + 3912) = v8;
  v13 = *(a1 + 16);
  if (!v8)
  {
    goto LABEL_16;
  }

  v14 = heap_Calloc(*(v13 + 8), v6, 8);
  *(v2 + 3920) = v14;
  if (!v14)
  {
    v13 = *(a1 + 16);
LABEL_16:
    log_OutPublic(*(v13 + 32), "FE_LID", 48000, 0, v9, v10, v11, v12, v27);
    return 2345672714;
  }

  v15 = strchr(v3, 59);
  if (v15)
  {
    v16 = v15;
    v17 = 0;
    v18 = 0;
    while (1)
    {
      *v16 = 0;
      v19 = strchr(v3, 44);
      if (!v19)
      {
        break;
      }

      *v19 = 0;
      v20 = v19 + 1;
      *(*(v2 + 3912) + 8 * v18) = v3;
      *(*(v2 + 3920) + 8 * v18) = v20;
      v3 = v16 + 1;
      if ((v16 - v20) >= v17)
      {
        v17 = v16 - v20;
      }

      v16 = strchr(v16 + 1, 59);
      ++v18;
      if (!v16)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
    v18 = 0;
    v17 = 0;
LABEL_18:
    v21 = strchr(v3, 44);
    if (v21)
    {
      *v21 = 0;
      v22 = v21 + 1;
      *(*(v2 + 3912) + 8 * v18) = v3;
      *(*(v2 + 3920) + 8 * v18) = v22;
      v23 = strlen(v22);
      v7 = 0;
      if (v23 >= v17)
      {
        v24 = v23;
      }

      else
      {
        v24 = v17;
      }

      *(v2 + 3888) = v24;
      v25 = (v18 + 1);
      *(*(v2 + 3912) + 8 * v25) = 0;
      *(*(v2 + 3920) + 8 * v25) = 0;
    }
  }

  return v7;
}

uint64_t lidmde_MainLangPlusSomeOtherLangs(_DWORD *a1, unsigned int a2, unsigned int a3)
{
  if (a1[a2])
  {
    v3 = a3 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    return 0;
  }

  v4 = a2;
  v5 = a3;
  while (!v4 || !*a1)
  {
    ++a1;
    --v4;
    if (!--v5)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t lidmde_SingleLang(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = 0;
    v3 = 0xFFFF;
    do
    {
      if (*(a1 + 4 * v2))
      {
        if (v3 != 0xFFFF)
        {
          goto LABEL_8;
        }

        v3 = v2;
      }

      ++v2;
    }

    while (a2 != v2);
  }

  else
  {
LABEL_8:
    LOWORD(v3) = -1;
  }

  return v3;
}

uint64_t lidmde_FindLangs(uint64_t a1, uint64_t a2, __int16 a3, const char *a4, __int16 a5, void *a6, _DWORD *a7, uint64_t a8)
{
  v53 = *MEMORY[0x1E69E9840];
  v15 = a1 + 0x20000;
  log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "Start ML2 LID MDE : %s", a6, a7, a8, a2);
  __s1 = a2;
  v49 = a5;
  v16 = (a3 - a2);
  if (v16 <= (a5 - a4))
  {
    v16 = (a5 - a4);
  }

  v17 = heap_Alloc(*(*(a1 + 16) + 8), v16 + *(v15 + 3888) + 1);
  if (v17)
  {
    v22 = v17;
    if (*(a1 + 1928))
    {
      bzero(a6, 4 * *(a1 + 1928));
    }

    if (**(v15 + 3912))
    {
      v45 = a3;
      v23 = 0;
      v24 = 0;
      v50 = 0;
      while (1)
      {
        *v22 = 0;
        v25 = lidmde_StemLookup2(a1, a4, v49, *(*(v15 + 3912) + 8 * v23), *(*(v15 + 3920) + 8 * v23), v22, a6, &v50);
        if ((v25 & 0x80000000) != 0)
        {
          goto LABEL_43;
        }

        if (!v50)
        {
          if (!strcmp(__s1, a4))
          {
            goto LABEL_20;
          }

          v25 = lidmde_StemLookup2(a1, __s1, v45, *(*(v15 + 3912) + 8 * v23), *(*(v15 + 3920) + 8 * v23), v22, a6, &v50);
          if ((v25 & 0x80000000) != 0)
          {
            goto LABEL_43;
          }

          if (!v50)
          {
LABEL_20:
            v30 = *(a1 + 1088);
            v50 = 0;
            *a7 = 0;
            if (!lidmde_HasVowelWord(*(v15 + 3896), v22) || Utf8_Utf8NbrOfSymbols(v22) < *(v15 + 3890))
            {
              v25 = 0;
LABEL_23:
              v27 = *a7 == 0;
              goto LABEL_24;
            }

            memset(v51, 0, 30);
            v25 = calcWScore(a1, v22, "merwfrq_latn", 1, *(v30 + 8), v52, v51);
            if ((v25 & 0x80000000) != 0)
            {
              goto LABEL_43;
            }

            if (!*(v30 + 8))
            {
              goto LABEL_23;
            }

            v34 = 0;
            v35 = 0;
            v46 = v30;
            v47 = v24;
            do
            {
              if (v52[v35])
              {
                v36 = v22;
                v37 = v15;
                v38 = a4;
                v39 = *(a1 + 1928);
                if (v39)
                {
                  v40 = 0;
                  for (i = 0; i < v39; ++i)
                  {
                    if (v35 == *(*(a1 + 1952) + 2 * i))
                    {
                      log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "ML2 LID (MDE) stem found as %s", v31, v32, v33, *(a1 + 1936) + v40);
                      v34 = 1;
                      *(a6 + i) = 1;
                      *a7 = 0;
                      v39 = *(a1 + 1928);
                    }

                    v40 += 8;
                  }
                }

                a4 = v38;
                v15 = v37;
                v22 = v36;
                v30 = v46;
                v24 = v47;
                if (!v34)
                {
                  *a7 = 1;
                }
              }

              ++v35;
            }

            while (v35 < *(v30 + 8));
            v50 = v34;
            v27 = *a7 == 0;
            if (!v34)
            {
              goto LABEL_24;
            }
          }
        }

        v26 = *(a1 + 1928);
        v27 = 1;
        if (*(a1 + 1928))
        {
          v28 = *(a1 + 1930);
          if (*(a6 + v28))
          {
            v29 = a6;
            while (!v28 || !*v29)
            {
              ++v29;
              --v28;
              if (!--v26)
              {
                v27 = 1;
                goto LABEL_24;
              }
            }

            goto LABEL_43;
          }
        }

LABEL_24:
        v23 = ++v24;
        if (!*(*(v15 + 3912) + 8 * v24) || !v27)
        {
          goto LABEL_43;
        }
      }
    }

    v25 = 0;
LABEL_43:
    heap_Free(*(*(a1 + 16) + 8), v22);
  }

  else
  {
    log_OutPublic(*(*(a1 + 16) + 32), "FE_LID", 48000, 0, v18, v19, v20, v21, v44);
    v25 = 2345672714;
  }

  v42 = *MEMORY[0x1E69E9840];
  return v25;
}

uint64_t lidmde_StemLookup2(uint64_t a1, const char *a2, __int16 a3, char *__s, const char *a5, char *a6, void *a7, _DWORD *a8)
{
  *a8 = 0;
  v15 = a3 - a2 - strlen(__s);
  __c = 0;
  v32 = 0;
  if (v15 < 0)
  {
    return 0;
  }

  v16 = v15 & 0x7FFF;
  if (strcmp(&a2[v16], __s))
  {
    return 0;
  }

  strncpy(a6, a2, v16);
  strcpy(&a6[v16], a5);
  if (!lidmde_HasVowelWord(*(a1 + 134968), a6) || Utf8_Utf8NbrOfSymbols(a6) < *(a1 + 134962))
  {
    return 0;
  }

  __c_1 = 1;
  v17 = (*(*(a1 + 64) + 152))(*(a1 + 48), *(a1 + 56), "ml2", a6, &v32, &__c_1, &__c, *(a1 + 2040));
  if ((v17 & 0x80000000) == 0 && __c_1)
  {
    v19 = *v32;
    v20 = strchr(*v32, __c);
    if (v20)
    {
      *v20 = 0;
      v19 = *v32;
    }

    if (!strcmp(v19, "all"))
    {
      log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "ML2 LID (MDE) stem found: %s as all", v21, v22, v23, a6);
      if (*(a1 + 1928))
      {
        memset_pattern16(a7, &unk_1C37BE170, 4 * *(a1 + 1928));
      }
    }

    else
    {
      v24 = *(a1 + 1928);
      if (*(a1 + 1928))
      {
        v25 = 0;
        v26 = *v32;
        v27 = *(a1 + 1936);
        while (1)
        {
          v28 = v25;
          if (!strcmp(v26, (v27 + 8 * v25)))
          {
            break;
          }

          v25 = v28 + 1;
          if (v28 + 1 >= v24)
          {
            goto LABEL_20;
          }
        }

        log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "ML2 LID (MDE) stem found: %s as %s", v29, v30, v31, a6);
        *(a7 + v28) = 1;
      }
    }

LABEL_20:
    *a8 = 1;
  }

  return v17;
}

uint64_t lidmde_HasVowelWord(char *a1, unsigned __int8 *a2)
{
  if (!*a2)
  {
    return 0;
  }

  v2 = a2;
  while (!utf8_strchr(a1, v2))
  {
    v2 += Utf8_LengthInBytes(v2, 1);
    if (!*v2)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t calcWScore(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, unsigned int a5, void *a6, uint64_t a7)
{
  *&__c[3] = 0;
  __c[0] = 0;
  *&__c[1] = a4;
  v15 = (*(*(a1 + 64) + 152))(*(a1 + 48), *(a1 + 56), a3, a2, &__c[3], &__c[1], __c, *(a1 + 1848));
  if ((v15 & 0x80000000) == 0)
  {
    if (a5)
    {
      bzero(a6, 4 * a5);
    }

    if (*&__c[1])
    {
      log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "LID found: %s", v12, v13, v14, a2);
      ++*(a7 + 4);
      v16 = **&__c[3];
      v17 = __c[0];
      v18 = strchr(**&__c[3], __c[0]);
      v19 = a5 != 0;
      if (v18)
      {
        v20 = a5 == 0;
      }

      else
      {
        v20 = 1;
      }

      if (v20)
      {
        v22 = 0;
      }

      else
      {
        v21 = v18;
        v22 = 0;
        do
        {
          if (v21 != v16)
          {
            *v21 = 0;
            *(a6 + v22) = LH_atou(v16);
            v17 = __c[0];
          }

          ++v22;
          v16 = v21 + 1;
          v23 = strchr(v21 + 1, v17);
          v19 = v22 < a5;
          if (!v23)
          {
            break;
          }

          v21 = v23;
        }

        while (v22 < a5);
      }

      if (*v16)
      {
        v24 = !v19;
      }

      else
      {
        v24 = 1;
      }

      if (!v24)
      {
        *(a6 + v22) = LH_atou(v16);
      }
    }
  }

  return v15;
}

uint64_t lid_Init(uint64_t a1)
{
  *(a1 + 1896) = 0;
  *(a1 + 1888) = 0;
  *(a1 + 1204) = 0x7172667472656DLL;
  *(a1 + 1460) = 0x7172667772656DLL;
  result = initLanguagesModel(a1, a1 + 1016, 0xFFFF);
  if ((result & 0x80000000) == 0)
  {
    result = initLanguagesModel(a1, a1 + 1064, 1);
    if ((result & 0x80000000) == 0 || *(a1 + 1018))
    {
      return 0;
    }
  }

  return result;
}

uint64_t initLanguagesModel(uint64_t a1, uint64_t a2, __int16 a3)
{
  v55 = *MEMORY[0x1E69E9840];
  __c_3 = 0;
  __c = 0;
  *a2 = a3;
  *(a2 + 24) = 0;
  *(a2 + 16) = 0;
  __c_1 = a3;
  v6 = (*(*(a1 + 64) + 96))(*(a1 + 48), *(a1 + 56), "lidcfg", "nrpartwgram_lid", &__c_3, &__c_1, &__c);
  v7 = 1;
  if ((v6 & 0x80000000) == 0 && __c_1)
  {
    v7 = LH_atou(*__c_3);
  }

  *(a1 + 1848) = v7;
  __c_1 = a3;
  v8 = (*(*(a1 + 64) + 96))(*(a1 + 48), *(a1 + 56), "lidcfg", "scripts", &__c_3, &__c_1, &__c);
  if ((v8 & 0x80000000) == 0)
  {
    if (!__c_1)
    {
LABEL_73:
      appended = 0;
      goto LABEL_76;
    }

    v9 = *__c_3;
    v10 = strchr(*__c_3, __c);
    if (v10)
    {
      *v10 = 0;
    }

    v11 = 1;
    *(a2 + 16) = 1;
    v12 = strchr(v9, 44);
    if (v12)
    {
      LOWORD(v11) = 1;
      do
      {
        LOWORD(v11) = v11 + 1;
        *(a2 + 16) = v11;
        v12 = strchr(v12 + 1, 44);
      }

      while (v12);
      v11 = v11;
    }

    v13 = heap_Calloc(*(*(a1 + 16) + 8), v11, 536);
    *(a2 + 24) = v13;
    if (!v13)
    {
LABEL_74:
      appended = 2345672714;
      log_OutPublic(*(*(a1 + 16) + 32), "FE_LID", 48000, 0, v14, v15, v16, v17, v49[0]);
      goto LABEL_76;
    }

    v18 = strchr(v9, 44);
    v19 = v18;
    if (v18)
    {
      *v18 = 0;
    }

    if (!*(a2 + 16))
    {
      goto LABEL_75;
    }

    v20 = 0;
    v21 = 0;
    do
    {
      v22 = *(a2 + 24);
      __strcpy_chk();
      if (v19)
      {
        v23 = strchr(v19 + 1, 44);
        v19 = v23;
        if (v23)
        {
          *v23 = 0;
        }
      }

      ++v21;
      v20 += 536;
    }

    while (v21 < *(a2 + 16));
    if (!*(a2 + 16))
    {
LABEL_75:
      appended = 0;
      *(a2 + 40) = 0;
      goto LABEL_76;
    }

    v24 = 0;
    qmemcpy(v49, "merwfrq_mertfrq_", sizeof(v49));
    while (1)
    {
      v25 = *(a2 + 24) + 536 * v24;
      v53[0] = 0;
      *&v53[3] = 0;
      *__src = v49[1];
      __src[8] = 0;
      __strcat_chk();
      __strcpy_chk();
      __src[8] = 0;
      *__src = v49[0];
      __strcat_chk();
      strcpy((v25 + 280), __src);
      strcpy(__src, "languages.");
      __strcat_chk();
      *&v53[1] = a3;
      v8 = (*(*(a1 + 64) + 96))(*(a1 + 48), *(a1 + 56), "lidcfg", __src, &v53[3], &v53[1], v53);
      if ((v8 & 0x80000000) != 0)
      {
        break;
      }

      v26 = **&v53[3];
      v27 = strchr(**&v53[3], v53[0]);
      if (v27)
      {
        *v27 = 0;
      }

      *(v25 + 8) = 1;
      v28 = strchr(v26, 44);
      if (v28)
      {
        v29 = 1;
        do
        {
          *(v25 + 8) = ++v29;
          v28 = strchr(v28 + 1, 44);
        }

        while (v28);
        v30 = v29;
      }

      else
      {
        v30 = 1;
      }

      v31 = heap_Calloc(*(*(a1 + 16) + 8), v30, 8);
      *(v25 + 16) = v31;
      if (!v31)
      {
        goto LABEL_74;
      }

      v32 = strchr(v26, 44);
      v33 = v32;
      if (v32)
      {
        *v32 = 0;
      }

      if (*(v25 + 8))
      {
        v34 = 0;
        v35 = 0;
        do
        {
          strcpy((*(v25 + 16) + v34), v26);
          if (v33)
          {
            v26 = v33 + 1;
            v36 = strchr(v33 + 1, 44);
            v33 = v36;
            if (v36)
            {
              *v36 = 0;
            }
          }

          ++v35;
          v34 += 8;
        }

        while (v35 < *(v25 + 8));
      }

      ++v24;
      v37 = *(a2 + 16);
      if (v24 >= v37)
      {
        *(a2 + 40) = 0;
        if (v37)
        {
          v38 = 0;
          v39 = 0;
          LODWORD(v49[1]) = -1949294585;
          while (1)
          {
            v40 = *(a2 + 24);
            if (!strcmp((v40 + v38), "latn"))
            {
              v43 = v39;
              v41 = a2 + 32;
              v42 = a1;
              v44 = 0;
              v45 = 591;
            }

            else if (!strcmp((v40 + v38), "cyrl"))
            {
              appendUnicodeRange(a1, a2 + 32, v39, 1024, 1327);
              appendUnicodeRange(a1, a2 + 32, v39, 11744, 11775);
              v41 = a2 + 32;
              v42 = a1;
              v43 = v39;
              v44 = 42560;
              v45 = 42655;
            }

            else if (!strcmp((v40 + v38), "deva"))
            {
              v43 = v39;
              v41 = a2 + 32;
              v42 = a1;
              v44 = 2304;
              v45 = 2431;
            }

            else if (!strcmp((v40 + v38), "tami"))
            {
              v43 = v39;
              v41 = a2 + 32;
              v42 = a1;
              v44 = 2944;
              v45 = 3071;
            }

            else if (!strcmp((v40 + v38), "telu"))
            {
              v43 = v39;
              v41 = a2 + 32;
              v42 = a1;
              v44 = 3072;
              v45 = 3199;
            }

            else if (!strcmp((v40 + v38), "beng"))
            {
              v43 = v39;
              v41 = a2 + 32;
              v42 = a1;
              v44 = 2432;
              v45 = 2559;
            }

            else if (!strcmp((v40 + v38), "kann"))
            {
              v43 = v39;
              v41 = a2 + 32;
              v42 = a1;
              v44 = 3200;
              v45 = 3327;
            }

            else if (!strcmp((v40 + v38), "hanx"))
            {
              appendUnicodeRange(a1, a2 + 32, v39, 13312, 19903);
              appendUnicodeRange(a1, a2 + 32, v39, 19968, 40879);
              appendUnicodeRange(a1, a2 + 32, v39, 0x20000, 173782);
              appendUnicodeRange(a1, a2 + 32, v39, 173824, 183983);
              v41 = a2 + 32;
              v45 = 195101;
              v42 = a1;
              v43 = v39;
              v44 = 194560;
            }

            else if (!strcmp((v40 + v38), "hrkt"))
            {
              appendUnicodeRange(a1, a2 + 32, v39, 12352, 12543);
              v41 = a2 + 32;
              v42 = a1;
              v43 = v39;
              v44 = 65381;
              v45 = 65439;
            }

            else if (!strcmp((v40 + v38), "hang"))
            {
              appendUnicodeRange(a1, a2 + 32, v39, 4352, 4607);
              appendUnicodeRange(a1, a2 + 32, v39, 44032, 55215);
              v41 = a2 + 32;
              v42 = a1;
              v43 = v39;
              v44 = 65440;
              v45 = 65500;
            }

            else if (!strcmp((v40 + v38), "arab"))
            {
              appendUnicodeRange(a1, a2 + 32, v39, 1536, 1791);
              appendUnicodeRange(a1, a2 + 32, v39, 1872, 1919);
              appendUnicodeRange(a1, a2 + 32, v39, 64336, 65023);
              v41 = a2 + 32;
              v42 = a1;
              v43 = v39;
              v44 = 65136;
              v45 = 65279;
            }

            else if (!strcmp((v40 + v38), "grek"))
            {
              appendUnicodeRange(a1, a2 + 32, v39, 880, 1023);
              v41 = a2 + 32;
              v42 = a1;
              v43 = v39;
              v44 = 7936;
              v45 = 0x1FFF;
            }

            else
            {
              if (strcmp((v40 + v38), "hebr"))
              {
                appended = LODWORD(v49[1]);
                goto LABEL_76;
              }

              appendUnicodeRange(a1, a2 + 32, v39, 1424, 1535);
              v41 = a2 + 32;
              v42 = a1;
              v43 = v39;
              v44 = 64285;
              v45 = 64320;
            }

            appended = appendUnicodeRange(v42, v41, v43, v44, v45);
            if ((appended & 0x80000000) == 0)
            {
              ++v39;
              v38 += 536;
              if (v39 < *(a2 + 16))
              {
                continue;
              }
            }

            goto LABEL_76;
          }
        }

        goto LABEL_73;
      }
    }
  }

  appended = v8;
LABEL_76:
  v47 = *MEMORY[0x1E69E9840];
  return appended;
}

uint64_t lid_Deinit(uint64_t a1)
{
  v2 = *(a1 + 1888);
  if (*(a1 + 1888))
  {
    v3 = 16;
    do
    {
      heap_Free(*(*(a1 + 16) + 8), *(*(a1 + 1896) + v3));
      v3 += 56;
      --v2;
    }

    while (v2);
  }

  v4 = *(a1 + 1896);
  if (v4)
  {
    heap_Free(*(*(a1 + 16) + 8), v4);
  }

  *(a1 + 1896) = 0;
  *(a1 + 1888) = 0;
  deinitLanguagesModel(a1, a1 + 1016);
  deinitLanguagesModel(a1, a1 + 1064);
  return 0;
}

void *deinitLanguagesModel(void *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if (*(a2 + 16))
  {
    v5 = 0;
    v6 = 16;
    do
    {
      v7 = *(a2 + 24);
      if (v7)
      {
        v8 = *(v7 + v6);
        if (v8)
        {
          result = heap_Free(*(v3[2] + 8), v8);
          v4 = *(a2 + 16);
        }
      }

      ++v5;
      v6 += 536;
    }

    while (v5 < v4);
  }

  v9 = *(a2 + 24);
  if (v9)
  {
    result = heap_Free(*(v3[2] + 8), v9);
    *(a2 + 24) = 0;
  }

  v10 = *(a2 + 40);
  if (v10)
  {
    result = heap_Free(*(v3[2] + 8), v10);
    *(a2 + 40) = 0;
  }

  return result;
}

uint64_t lid_Identify(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = a3;
  v4 = a2;
  v120 = *MEMORY[0x1E69E9840];
  v6 = 1064;
  if (!*(a1 + 992))
  {
    v6 = 1016;
  }

  v113 = a1 + v6;
  *(a1 + 1890) = 0;
  if (*(a1 + v6 + 16))
  {
    *&v119[0] = 0;
    *(a1 + 1890) = 0;
    if (!a3)
    {
      appended = 0;
      goto LABEL_141;
    }

    v7 = 0;
    appended = 0;
    v9 = 0;
    v109 = -1;
    v10 = -1;
    v111 = -1;
    do
    {
      U32FromUtf8 = utf8_GetU32FromUtf8(v4, v9, v3);
      v12 = (U32FromUtf8 & 0xDF) - 65 < 0x1A;
      if (U32FromUtf8 == 9 || U32FromUtf8 == 32)
      {
        v14 = v9;
      }

      else
      {
        v14 = v10;
      }

      if (U32FromUtf8 > 0xFE)
      {
        v12 = 1;
      }

      else
      {
        v10 = v14;
      }

      v15 = *(v113 + 34);
      if (*(v113 + 34))
      {
        v16 = (*(v113 + 40) + 8);
        while (*(v16 - 2) > U32FromUtf8 || *(v16 - 1) <= U32FromUtf8)
        {
          v16 += 6;
          if (!--v15)
          {
            goto LABEL_32;
          }
        }

        v17 = *v16;
        if (v17 >= 0 && v12)
        {
          if (*v16 != v109)
          {
            if (v7)
            {
              *(v7 + 4) = v111 + 1;
            }

            appended = appendCoLangSegment(a1, v119);
            if ((appended & 0x80000000) != 0)
            {
              goto LABEL_141;
            }

            v7 = *&v119[0];
            *(*&v119[0] + 8) = v17;
            if (v10 >= v111)
            {
              v18 = v10 + 1;
            }

            else
            {
              v18 = v9;
            }

            *v7 = v18;
            *(v7 + 10) = 0;
            v109 = v17;
          }

          v111 = v9;
        }

        v4 = a2;
      }

LABEL_32:
      v9 += utf8_determineUTF8CharLength(*(v4 + v9));
    }

    while (v9 < v3);
    if (v7)
    {
      *(v7 + 4) = v111 + 1;
    }

    v19 = v113;
    if ((appended & 0x80000000) != 0)
    {
      goto LABEL_141;
    }
  }

  else
  {
    *&v119[0] = 0;
    appended = appendCoLangSegment(a1, v119);
    if ((appended & 0x80000000) != 0)
    {
      goto LABEL_141;
    }

    v20 = *&v119[0];
    **&v119[0] = 0;
    *(v20 + 4) = v3;
    *(v20 + 8) = 0xFFFF;
    v19 = v113;
  }

  v21 = *(a1 + 1890);
  if (!*(a1 + 1890))
  {
    goto LABEL_141;
  }

  v22 = 0;
  v23 = v21 - 1;
  v24 = a1 + 1204;
  v25 = a1 + 1460;
  v26 = 0uLL;
  v102 = *(a1 + 1890);
  v101 = v21 - 1;
  while (1)
  {
    v27 = (*(a1 + 1896) + 56 * v22);
    if (!v22)
    {
      *v27 = 0;
    }

    if (v23 == v22)
    {
      v27[1] = v3;
    }

    v28 = *(v27 + 2);
    if ((v27[2] & 0x8000000000000000) != 0)
    {
      break;
    }

    v29 = *(v19 + 24) + 536 * *(v27 + 4);
    v30 = *(v29 + 8);
    if (*(v29 + 8))
    {
      v105 = v29 + 24;
      v110 = v29 + 280;
      v31 = *(v29 + 16);
      v32 = (v28 + 8);
      v33 = v30;
      do
      {
        *v32 = 0;
        *(v32 - 1) = v31;
        v31 += 8;
        v32 += 4;
        --v33;
      }

      while (v33);
      goto LABEL_54;
    }

LABEL_72:
    appended = 0;
    *(v27 + 5) = 0;
LABEL_135:
    if (++v22 == v21)
    {
      goto LABEL_141;
    }
  }

  v34 = *(v19 + 2);
  if (!*(v19 + 2))
  {
    goto LABEL_72;
  }

  v35 = *(v19 + 8);
  v36 = (v28 + 8);
  v37 = *(v19 + 2);
  do
  {
    *v36 = 0;
    *(v36 - 1) = v35;
    v35 += 24;
    v36 += 4;
    --v34;
  }

  while (v34);
  v105 = v24;
  v110 = v25;
  LODWORD(v30) = v37;
LABEL_54:
  *(v27 + 5) = v30;
  if (v30 < 2)
  {
    appended = 0;
    if (v30 == 1)
    {
      *(v28 + 8) = 0;
      *(v27 + 3) = 0;
    }

    goto LABEL_135;
  }

  v106 = v30;
  v38 = *v27;
  v39 = v27[1] - v38;
  v112 = *v19;
  v119[0] = v26;
  v119[1] = v26;
  v119[2] = v26;
  v119[3] = v26;
  v119[4] = v26;
  v119[5] = v26;
  v119[6] = v26;
  v119[7] = v26;
  v118[0] = v26;
  v118[1] = v26;
  v118[2] = v26;
  v118[3] = v26;
  v118[4] = v26;
  v118[5] = v26;
  v118[6] = v26;
  v118[7] = v26;
  *(v27 + 3) = 0;
  v108 = v27;
  v40 = normalizedDup(a1, v4 + v38, v39, v27 + 12);
  if (!v40)
  {
    log_OutPublic(*(*(a1 + 16) + 32), "FE_LID", 48000, 0, v41, v42, v43, v44, v100);
    appended = 2345672714;
    goto LABEL_141;
  }

  v45 = v40;
  v104 = v22;
  v116 = 0;
  v117 = v40;
  v115 = 0;
  v114 = 0;
  Word = nextWord(&v117);
  if (!Word)
  {
    appended = 0;
LABEL_77:
    v117 = v45;
    v51 = nextWord(&v117);
    v54 = v106;
    if (v51)
    {
      v55 = v51;
      v103 = v3;
      do
      {
        appended = calcWScore(a1, v55, v110, v112, v54, v118, (v108 + 12));
        if ((appended & 0x80000000) != 0)
        {
          goto LABEL_141;
        }

        v58 = v54;
        v59 = v118;
        traceScore(a1, "doLidString WSCORE THIS WORD", v55, v58, v28, v118, v56, v57);
        bzero(v119, 4 * v106);
        v62 = 0;
        v63 = 0;
        v64 = v106;
        do
        {
          if (*v59++)
          {
            v62 = 1;
          }

          else
          {
            v63 = 1;
          }

          --v64;
        }

        while (v64);
        if (v63)
        {
          v54 = v106;
          if (v62 || !IsFlatDistribution(a1, (v108 + 12), v55, (v55 - v45)))
          {
            appended = calcTScore(a1, v55, v105, v112, v106, v119, v28);
            if ((appended & 0x80000000) != 0)
            {
              goto LABEL_141;
            }
          }

          else
          {
            if (*(a1 + 1188))
            {
              v68 = v119;
              v69 = v28;
              v70 = v106;
              do
              {
                v71 = *v69;
                v69 += 2;
                if (LH_strnicmp(v71, a1 + 1196, 2uLL))
                {
                  v72 = 100;
                }

                else
                {
                  v72 = 10;
                }

                *v68++ = v72;
                --v70;
              }

              while (v70);
            }

            else
            {
              v73 = v119;
              v74 = v28;
              v75 = v106;
              do
              {
                v76 = *v74;
                v74 += 2;
                if (LH_strnicmp(v76, *(a1 + 1912), 2uLL))
                {
                  v77 = 100;
                }

                else
                {
                  v77 = 10;
                }

                *v73++ = v77;
                --v75;
              }

              while (v75);
            }

            v3 = v103;
            v54 = v106;
          }

          traceScore(a1, "doLidString TSCORE THIS WORD", v55, v54, v28, v119, v66, v67);
        }

        else
        {
          v54 = v106;
        }

        v78 = 0;
        v79 = v106;
        do
        {
          v80 = *(v118 + v78);
          if (!v80)
          {
            v80 = *(v119 + v78);
          }

          *(v28 + 4 * v78 + 8) += v80;
          v78 += 4;
          --v79;
        }

        while (v79);
        traceScore(a1, "doLidString COMBINED ALL WORDS UNTIL THIS WORD NOT BIASED", v55, v54, v28, 0, v60, v61);
        v55 = nextWord(&v117);
      }

      while (v55);
    }

    traceScore(a1, "doLidString ALL WORDS COMBINED NOT BIASED, NOT SORTED", "Result", v54, v28, 0, v52, v53);
    if (v108[12])
    {
      v108[15] = 100 * v108[14] / v108[12];
    }

    if (*(a1 + 1188))
    {
      v81 = (v28 + 8);
      v82 = v54;
      while (strncmp(*(v81 - 1), (a1 + 1196), 2uLL))
      {
        v81 += 4;
        if (!--v82)
        {
          goto LABEL_121;
        }
      }

      if (v108[13] && v108[14] && !*(a1 + 1920))
      {
        v95 = *(a1 + 1192) * v108[13];
        v96 = *v81 >= v95;
        v97 = *v81 - v95;
        if (v97 == 0 || !v96)
        {
          v97 = 1;
        }

        *v81 = v97;
      }

      else
      {
        *v81 = 0;
      }
    }

LABEL_121:
    ssft_qsort(v28, v54, 16, compareScore);
    if (*(a1 + 992))
    {
      v22 = v104;
      if (!*(a1 + 1168))
      {
        goto LABEL_134;
      }

      v85 = *(v28 + 8);
      v86 = *(v28 + 24);
      v87 = v85 - v86;
      if (v85 - v86 < 0)
      {
        v87 = v86 - v85;
      }

      if (v87 >= *(a1 + 1172))
      {
        goto LABEL_134;
      }

      v88 = *(v28 + 16);
      v89 = (a1 + 1176);
    }

    else
    {
      v22 = v104;
      if (!*(a1 + 1156))
      {
        goto LABEL_134;
      }

      v90 = *(v28 + 8);
      v91 = *(v28 + 24);
      v92 = v90 - v91;
      if (v90 - v91 < 0)
      {
        v92 = v91 - v90;
      }

      if (v92 >= *(a1 + 1160))
      {
        goto LABEL_134;
      }

      v88 = *(v28 + 16);
      v89 = (a1 + 1164);
    }

    if (!strcmp(v88, v89))
    {
      log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "fuzzy fallback from %s to %s: %7lu -> %7lu", v93, v83, v84, *v28);
      v94 = *v28;
      *v28 = *(v28 + 16);
      *(v28 + 16) = v94;
    }

LABEL_134:
    traceScore(a1, "doLidString ALL WORDS COMBINED BIASED AND/OR FUZZY CORRECTED, SORTED", "Result", v106, v28, 0, v83, v84);
    heap_Free(*(*(a1 + 16) + 8), v45);
    v4 = a2;
    v19 = v113;
    v21 = v102;
    v23 = v101;
    v25 = a1 + 1460;
    v24 = a1 + 1204;
    v26 = 0uLL;
    goto LABEL_135;
  }

  v47 = Word;
  while (1)
  {
    v115 = v112;
    appended = (*(*(a1 + 64) + 152))(*(a1 + 48), *(a1 + 56), v110, v47, &v116, &v115, &v114, *(a1 + 1848));
    if ((appended & 0x80000000) != 0)
    {
      break;
    }

    v48 = nextWord(&v117);
    if (!v115 && !IsFlatDistribution(a1, (v108 + 12), v47, (v47 - v45)))
    {
      while (1)
      {
        v49 = *v47;
        if (!*v47)
        {
          break;
        }

        {
          v49 = 32;
          *v47 = 32;
        }

        v47 += utf8_determineUTF8CharLength(v49);
      }
    }

    if (!v48)
    {
      goto LABEL_77;
    }

    v50 = v48 - 1;
    v47 = v48;
    if ((v48 - 1) > v45)
    {
      do
      {
        if (*v50 && !memchr(" \t\n", *v50, 4uLL))
        {
          break;
        }

        *v50-- = 32;
      }

      while (v50 > v45);
      v47 = v48;
    }
  }

LABEL_141:
  v98 = *MEMORY[0x1E69E9840];
  return appended;
}

uint64_t appendCoLangSegment(uint64_t a1, void *a2)
{
  v4 = *(a1 + 1888);
  v5 = (a1 + 1896);
  result = appendItemRaw16(a1, (a1 + 1896), (a1 + 1888), (a1 + 1890), 0x38u);
  if ((result & 0x80000000) == 0)
  {
    if (v4 >= *(a1 + 1888))
    {
LABEL_8:
      result = 0;
      *a2 = *v5 + 56 * *(a1 + 1890) - 56;
    }

    else
    {
      v7 = 56 * v4 + 16;
      while (1)
      {
        v8 = *(a1 + 1896);
        v9 = *(a1 + 1018);
        if (v9 <= *(a1 + 1066))
        {
          v9 = *(a1 + 1066);
        }

        v10 = heap_Calloc(*(*(a1 + 16) + 8), 1, 16 * v9);
        *(v8 + v7) = v10;
        if (!v10)
        {
          break;
        }

        ++v4;
        v7 += 56;
        if (v4 >= *(a1 + 1888))
        {
          goto LABEL_8;
        }
      }

      log_OutPublic(*(*(a1 + 16) + 32), "FE_LID", 48000, 0, v11, v12, v13, v14, v15);
      return 2345672714;
    }
  }

  return result;
}

uint64_t appendUnicodeRange(uint64_t a1, uint64_t a2, __int16 a3, int a4, int a5)
{
  result = appendItemRaw16(a1, (a2 + 8), a2, (a2 + 2), 0xCu);
  if ((result & 0x80000000) == 0)
  {
    v10 = *(a2 + 8) + 12 * *(a2 + 2);
    if (v10 != 12)
    {
      *(v10 - 4) = a3;
      *(v10 - 12) = a4;
      *(v10 - 8) = a5 + 1;
    }
  }

  return result;
}

uint64_t appendItemRaw16(uint64_t a1, uint64_t *a2, unsigned __int16 *a3, _WORD *a4, unsigned int a5)
{
  v5 = 2345672714;
  if (!a2)
  {
    return 2345672711;
  }

  v9 = *a2;
  if (v9)
  {
    v10 = *a4;
    v11 = *a3;
    if (v10 < v11)
    {
LABEL_9:
      v5 = 0;
      *a4 = v10 + 1;
      return v5;
    }

    v12 = v11 + 10;
    v13 = heap_Realloc(*(*(a1 + 16) + 8), v9, (v11 + 10) * a5);
    if (v13)
    {
LABEL_8:
      *a2 = v13;
      *a3 = v12;
      LOWORD(v10) = *a4;
      goto LABEL_9;
    }
  }

  else
  {
    *a3 = 0;
    *a4 = 0;
    v12 = *a3 + 10;
    v13 = heap_Alloc(*(*(a1 + 16) + 8), v12 * a5);
    if (v13)
    {
      goto LABEL_8;
    }
  }

  return v5;
}

uint64_t normalizedDup(uint64_t a1, uint64_t a2, unsigned int a3, _WORD *a4)
{
  v4 = a4;
  v53 = *MEMORY[0x1E69E9840];
  a4[4] = 0;
  __s2[0] = 0;
  result = heap_Alloc(*(*(a1 + 16) + 8), (4 * a3) | 1);
  if (result)
  {
    if (a3)
    {
      v8 = 0;
      v9 = 0;
      LOWORD(v10) = 0;
      v48 = 0;
      v49 = 0;
      v50 = 0;
      v11 = 0;
      v44 = v4 + 5;
      v12 = result;
      v13 = a3 - 1;
      v45 = a3 - 2;
      v14 = 1;
      v46 = result;
      v15 = a3;
      v47 = a3;
      while (1)
      {
        v16 = (a2 + v11);
        v17 = *v16;
        v18 = v17 - 10;
        if ((v17 - 10) > 0x36)
        {
          goto LABEL_10;
        }

        if (((1 << v18) & 0x7F003FFF800000) != 0)
        {
          goto LABEL_15;
        }

        if (((1 << v18) & 0x420009) == 0)
        {
LABEL_10:
          v20 = (v17 - 91);
          if (v20 > 0x22)
          {
            break;
          }

          if (((1 << (v17 - 91)) & 0x70000002FLL) != 0)
          {
            goto LABEL_15;
          }

          if (v20 != 4)
          {
            break;
          }
        }

        *v12++ = 32;
        LOWORD(v10) = v10 + 1;
        v19 = 1;
LABEL_46:
        v11 += v19;
        if (v11 >= v15)
        {
          v37 = v49 == 0;
          v38 = v50 != 0;
          v39 = v8 != 0;
          v40 = v4[4];
          if (v40 >= 0xA)
          {
            result = v46;
            goto LABEL_92;
          }

          result = v46;
          if (v14)
          {
            v41 = v9;
            v10 = v10;
            v42 = v48;
LABEL_87:
            if (&v12[-result - v42 - v10 - v41 - 2] >= 3 && !v38)
            {
LABEL_89:
              if (v39)
              {
                goto LABEL_90;
              }

LABEL_92:
              ++*v4;
              if (!v37 && !v38)
              {
                ++v4;
                goto LABEL_96;
              }

              goto LABEL_97;
            }
          }

          else
          {
            if (v49)
            {
              v37 = 0;
              goto LABEL_92;
            }

            v37 = 1;
            LOWORD(v42) = v48;
            if (!v50)
            {
              goto LABEL_89;
            }
          }

LABEL_90:
          v4[4] = v40 + 1;
          v4[v40 + 5] = v42;
          goto LABEL_92;
        }
      }

      v21 = v17 - 171;
      v22 = v21 > 0x10;
      v23 = (1 << v21) & 0x10019;
      if (!v22 && v23 != 0)
      {
LABEL_15:
        if (!v10)
        {
          goto LABEL_26;
        }

        v25 = v4[4];
        if (v25 > 9)
        {
LABEL_23:
          v9 = 0;
          v48 = (v12 - v46);
          ++*v4;
          v14 = 1;
          if (!v49 || v50)
          {
            v49 = 0;
            v50 = 0;
            v8 = 0;
            if (!v11)
            {
LABEL_30:
              {
                LOWORD(v10) = 0;
                *v12++ = *v16;
                goto LABEL_44;
              }

              if (!v11)
              {
LABEL_51:
                LOWORD(v10) = 0;
LABEL_52:
                v19 = 1;
                goto LABEL_45;
              }

              v26 = v11 - 1;
LABEL_38:
              v27 = memchr("_ \r\n\x1B", *(a2 + v26), 6uLL);
              LOWORD(v10) = 0;
              v19 = 1;
              if (v27 || v11 == v13)
              {
                goto LABEL_45;
              }

              if (v11 < v13 && memchr("_ \r\n\x1B", v16[1], 6uLL))
              {
                LOWORD(v10) = 0;
LABEL_45:
                v15 = v47;
                goto LABEL_46;
              }

              if (v11 == v45)
              {
                LODWORD(v16) = *v16;
                {
                  goto LABEL_51;
                }
              }

              else
              {
                LOBYTE(v16) = *v16;
              }

              LOWORD(v10) = 0;
              *v12++ = v16;
LABEL_44:
              ++v9;
              v19 = 1;
              v8 = 1;
              goto LABEL_45;
            }

LABEL_29:
            v26 = v11 - 1;
            if (!memchr("_ \r\n\x1B", *(a2 + v26), 6uLL))
            {
              goto LABEL_38;
            }

            goto LABEL_30;
          }

          v49 = 0;
          v50 = 0;
          v9 = 0;
          v8 = 0;
          ++v4[1];
LABEL_26:
          if (!v11)
          {
            goto LABEL_30;
          }

          goto LABEL_29;
        }

        if (v14)
        {
          if (&v12[-v46 - v48 - v10 - v9 - 2] < 3)
          {
LABEL_22:
            v4[4] = v25 + 1;
            v44[v25] = v48;
            goto LABEL_23;
          }
        }

        else if (v49)
        {
          goto LABEL_23;
        }

        if (!(v50 | v8))
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }

      if (!v10)
      {
        v30 = v49;
        v31 = v50;
LABEL_68:
        v32 = *v16;
        if ((v32 - 48) < 0xAu)
        {
          v31 = 1;
        }

        else
        {
          v30 = 1;
        }

        v49 = v30;
        v50 = v31;
        v33 = utf8_determineUTF8CharLength(v32);
        if (v33 >= 2)
        {
          v19 = v33;
          __s2[0] = 0;
          __strncpy_chk();
          __s1[v19] = 0;
          utf8_ToLower(__s1, 0, __s2);
          v14 = v14 && strcmp(__s1, __s2);
          strcpy(v12, __s2);
          v36 = strlen(__s2);
          LOWORD(v10) = 0;
          v8 = 0;
          v12 += v36;
          goto LABEL_45;
        }

        v34 = ssft_tolower(*v16);
        *v12 = v34;
        if (!v14 || (v35 = *v16, v14 = 1, (v35 - 58) <= 0xFFFFFFF5) && v34 == v35)
        {
          v14 = 0;
        }

        LOWORD(v10) = 0;
        v8 = 0;
        ++v12;
        goto LABEL_52;
      }

      v29 = v4[4];
      if (v29 <= 9)
      {
        if (v14)
        {
          if (&v12[-v46 - v48 - v10 - v9 - 2] < 3)
          {
            goto LABEL_63;
          }
        }

        else if (v49)
        {
          goto LABEL_64;
        }

        if (v50 | v8)
        {
LABEL_63:
          v4[4] = v29 + 1;
          v44[v29] = v48;
        }
      }

LABEL_64:
      v9 = 0;
      v48 = (v12 - v46);
      ++*v4;
      v14 = 1;
      if (!v49 || v50)
      {
        v30 = 0;
        v31 = 0;
      }

      else
      {
        v30 = 0;
        v31 = 0;
        v9 = 0;
        ++v4[1];
      }

      goto LABEL_68;
    }

    v40 = v4[4];
    if (v40 < 0xA)
    {
      v38 = 0;
      v42 = 0;
      v10 = 0;
      v41 = 0;
      v39 = 0;
      v37 = 1;
      v12 = result;
      goto LABEL_87;
    }

    v12 = result;
LABEL_96:
    ++*v4;
LABEL_97:
    *v12 = 0;
  }

  v43 = *MEMORY[0x1E69E9840];
  return result;
}

unsigned __int8 *nextWord(uint64_t *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v3 = *v2;
  if (!*v2)
  {
    return 0;
  }

  v4 = v2 + 1;
  while (memchr(" \t\n", v3, 4uLL))
  {
    v5 = *v4++;
    v3 = v5;
    if (!v5)
    {
      return 0;
    }
  }

  v6 = v4 - 1;
  *a1 = (v4 - 1);
  v8 = *(v4 - 1);
  if (v8)
  {
    while (!memchr(" \t\n", v8, 4uLL))
    {
      *a1 = v4;
      v9 = *v4++;
      v8 = v9;
      if (!v9)
      {
        goto LABEL_12;
      }
    }

    *(v4 - 1) = 0;
    v10 = *a1 + 1;
  }

  else
  {
LABEL_12:
    v10 = 0;
  }

  *a1 = v10;
  return v6;
}

uint64_t calcTScore(uint64_t a1, char *__s, uint64_t a3, __int16 a4, unsigned int a5, void *a6, void *a7)
{
  v61 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    bzero(a6, 4 * a5);
  }

  v11 = (strlen(__s) + 4);
  v12 = heap_Alloc(*(*(a1 + 16) + 8), v11 + 1);
  if (v12)
  {
    v17 = v12;
    memset(__c, 0, sizeof(__c));
    strcpy(v12, "__");
    strcpy(v12 + 2, __s);
    v18 = 0;
    strcpy((v17 + v11 - 2), "__");
    v60[3] = 0;
    if (v11 < 3)
    {
LABEL_40:
      heap_Free(*(*(a1 + 16) + 8), v17);
    }

    else
    {
      v19 = 0;
      v20 = 0;
      v51 = v11 - 2;
      v49 = a5 != 0;
      v21 = a5;
      v50 = 4 * a5;
      v52 = a6;
      v56 = a5;
      while (1)
      {
        v60[0] = 0;
        v57 = v20;
        v22 = utf8_determineUTF8CharLength(*(v17 + v20));
        v23 = 0;
        v24 = 0;
        do
        {
          v25 = utf8_determineUTF8CharLength(*(v17 + (v23 + v19)));
          __strncat_chk();
          v23 += v25;
        }

        while (v24++ < 2);
        v27 = v22 <= 1 ? 0 : v22;
        v28 = v27 ? v27 - 1 : 0;
        *&__c[1] = a4;
        v18 = (*(*(a1 + 64) + 96))(*(a1 + 48), *(a1 + 56), a3, v60, &__c[3], &__c[1], __c);
        if ((v18 & 0x80000000) != 0)
        {
          break;
        }

        v31 = v56;
        if (v56)
        {
          bzero(v59, v50);
        }

        if (*&__c[1])
        {
          v32 = **&__c[3];
          v33 = __c[0];
          v34 = strchr(**&__c[3], __c[0]);
          if (v34)
          {
            v35 = v56 == 0;
          }

          else
          {
            v35 = 1;
          }

          if (v35)
          {
            v38 = 0;
            v36 = v49;
          }

          else
          {
            v37 = v34;
            v38 = 0;
            do
            {
              if (v37 != v32)
              {
                *v37 = 0;
                v59[v38] = LH_atou(v32);
                v33 = __c[0];
              }

              ++v38;
              v32 = v37 + 1;
              v39 = strchr(v37 + 1, v33);
              v36 = v38 < v21;
              if (!v39)
              {
                break;
              }

              v37 = v39;
            }

            while (v38 < v21);
          }

          if (*v32)
          {
            v40 = !v36;
          }

          else
          {
            v40 = 1;
          }

          v31 = v56;
          if (!v40)
          {
            v59[v38] = LH_atou(v32);
          }
        }

        if (v31)
        {
          v41 = v59;
          v42 = v21;
          v43 = v52;
          do
          {
            v45 = *v41++;
            v44 = v45;
            if (!v45)
            {
              v44 = *(a1 + 1152);
            }

            *v43++ += v44;
            --v42;
          }

          while (v42);
        }

        traceScore(a1, "calcTScore TSCORES ACCUMULATED", v60, v31, a7, v52, v29, v30);
        v20 = v57 + v28 + 1;
        v19 = (v57 + v28 + 1);
        if (v51 <= v20)
        {
          goto LABEL_40;
        }
      }
    }
  }

  else
  {
    log_OutPublic(*(*(a1 + 16) + 32), "FE_LID", 48000, 0, v13, v14, v15, v16, v48);
    v18 = 2345672714;
  }

  v46 = *MEMORY[0x1E69E9840];
  return v18;
}

uint64_t traceScore(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a6;
  LODWORD(v10) = a4;
  v12 = *(*(a1 + 16) + 32);
  if (a2)
  {
    result = log_OutText(v12, "FE_LID", 5, 0, "%s %s", a6, a7, a8, a2);
  }

  else
  {
    result = log_OutText(v12, "FE_LID", 5, 0, "%s", a6, a7, a8, a3);
  }

  if (v8)
  {
    if (v10)
    {
      v17 = v10;
      do
      {
        v19 = *a5;
        a5 += 2;
        v18 = v19;
        LODWORD(v19) = *v8++;
        result = log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "%s: %7lu", v14, v15, v16, v18);
        --v17;
      }

      while (v17);
    }
  }

  else if (v10)
  {
    v10 = v10;
    v20 = a5 + 1;
    do
    {
      v21 = *(v20 - 1);
      v22 = *v20;
      v20 += 4;
      result = log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "%s: %7lu", v14, v15, v16, v21);
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t IsFlatDistribution(uint64_t a1, uint64_t a2, char *__s, int a4)
{
  v8 = strchr(__s, 64);
  if ((!v8 || !strchr(v8, 46)) && !strstr(__s, "http") && !strstr(__s, "ftp") && !strstr(__s, "www."))
  {
    v12 = strstr(__s, ".com");
    v13 = v12 == 0;
    if (*(a2 + 8) && !v12)
    {
      v14 = (a2 + 10);
      v15 = 1;
      do
      {
        v17 = *v14++;
        v16 = v17;
        v13 = v17 != a4;
        if (v15 >= *(a2 + 8))
        {
          break;
        }

        ++v15;
      }

      while (v16 != a4);
    }

    if (v13)
    {
      return 0;
    }
  }

  log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "Acronym or digit or punctuation or url or e-mail address: %s => flat distribution with very small bias toward main language or memory", v9, v10, v11, __s);
  return 1;
}

uint64_t dcteg_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 2)
  {
    return 2231377921;
  }

  result = 0;
  *a2 = &IDcteg;
  return result;
}

uint64_t dcteg_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v8 = 2231377927;
  v23 = 0;
  NullHandle = safeh_GetNullHandle();
  v11 = safeh_HandlesEqual(a3, a4, NullHandle, v10);
  if (a5)
  {
    if (!v11)
    {
      *a5 = 0;
      *(a5 + 8) = 0;
      inited = InitRsrcFunction(a3, a4, &v23);
      if ((inited & 0x80000000) == 0)
      {
        v13 = inited;
        v14 = heap_Calloc(*(v23 + 8), 1, 80);
        if (v14)
        {
          v19 = v14;
          *v14 = a3;
          *(v14 + 8) = a4;
          v20 = v23;
          *(v14 + 16) = v23;
          *(v14 + 72) = 1;
          dctlist_ObjOpen((v14 + 24), *(v20 + 8));
          *a5 = v19;
          *(a5 + 8) = 752;
          return v13;
        }

        else
        {
          log_OutPublic(*(v23 + 32), "DCTEG", 4400, 0, v15, v16, v17, v18, v22);
          return 2231377930;
        }
      }
    }
  }

  return v8;
}

uint64_t dcteg_ObjClose(uint64_t a1, int a2)
{
  v9 = 0;
  v10 = 0;
  v3 = safeh_HandleCheck(a1, a2, 752, 80);
  if ((v3 & 0x80000000) != 0)
  {
    return v3;
  }

  inited = InitRsrcFunction(*a1, *(a1 + 8), &v9);
  if ((inited & 0x80000000) == 0)
  {
    Next = dctlist_GetNext(a1 + 24, &v10);
    if (Next)
    {
      v6 = Next;
      do
      {
        p_unloadDct(a1, v6);
        v6 = dctlist_GetNext(a1 + 24, &v10);
      }

      while (v6);
    }

    dctlist_ObjClose(a1 + 24);
    v7 = *(a1 + 48);
    if (v7)
    {
      inited = CloseEDCTObj(v7);
    }

    heap_Free(*(v9 + 8), a1);
  }

  return inited;
}

uint64_t dcteg_LoadDictionary(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v4 = 2231377930;
  v79 = 0;
  v5 = 2231377927;
  if (!a3 || !a4)
  {
    return v5;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  inited = safeh_HandleCheck(a1, a2, 752, 80);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = InitRsrcFunction(*a1, *(a1 + 8), &v79);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  if (*a3 && p_checkIfPresent(a1, *a3))
  {
    v14 = *a3;
    if (!*a3)
    {
      v14 = "Unknown";
    }

    log_OutText(v79[4], "DCTEG", 3, 0, "dcteg_LoadDictionary failed, already loaded: %s", v11, v12, v13, v14);
    return 2231378968;
  }

  v16 = *(a3 + 8);
  if (v16 && *v16 && p_checkIfPresent(a1, v16))
  {
    v17 = *(a3 + 8);
    if (!v17)
    {
      v17 = "Unknown";
    }

    log_OutText(v79[4], "DCTEG", 3, 0, "dcteg_LoadDictionary failed, already loaded: %s", v11, v12, v13, v17);
    return 2231377939;
  }

  if (!*a3)
  {
    if (!*(a3 + 16))
    {
      log_OutPublic(v79[4], "DCTEG", 4408, 0, v10, v11, v12, v13, v74);
      return v5;
    }

    v37 = heap_Calloc(v79[1], 1, 112);
    v23 = v79;
    if (!v37)
    {
      goto LABEL_44;
    }

    v24 = v37;
    *v37 = v79[1];
    v35 = *(a3 + 32);
    if (v35)
    {
      v38 = "application/edct-bin-dictionary";
      if (strstr(*(a3 + 32), "application/edct-bin-dictionary"))
      {
        goto LABEL_40;
      }

      if (strstr(v35, "application/octet-stream"))
      {
        goto LABEL_40;
      }

      v38 = "application/cdct-bin-dictionary";
      if (strstr(v35, "application/cdct-bin-dictionary"))
      {
        goto LABEL_40;
      }

      v38 = "application/x-vocalizer-userdct-pointer";
      if (strstr(v35, "application/x-vocalizer-userdct-pointer"))
      {
        goto LABEL_40;
      }

      if (strstr(v35, "application/vmp-bin-dictionary"))
      {
        v38 = "application/edct-bin-dictionary";
LABEL_40:
        *(v24 + 16) = v38;
        v39 = strstr(v35, "mode=langoverwriting");
        v40 = "mode=standard";
        if (v39)
        {
          v40 = "mode=langoverwriting";
        }

        *(v24 + 32) = v40;
        if (strstr(v35, "application/x-vocalizer-userdct-pointer"))
        {
          v41 = 4;
        }

        else
        {
          v41 = *(a3 + 24);
        }

        *(v24 + 64) = v41;
        *(v24 + 44) = 0;
        *(v24 + 48) = *(a3 + 16);
        goto LABEL_50;
      }
    }

    log_OutPublic(v79[4], "DCTEG", 4403, "%s%s%s%s", v19, v20, v21, v22, "name");
    v4 = 2231378966;
    goto LABEL_88;
  }

  v18 = heap_Calloc(v79[1], 1, 112);
  v23 = v79;
  if (!v18)
  {
LABEL_44:
    log_OutPublic(v23[4], "DCTEG", 4400, 0, v19, v20, v21, v22, v74);
    return 2231377930;
  }

  v24 = v18;
  *v18 = v79[1];
  v25 = *(a1 + 16);
  *(v18 + 96) = 0;
  v26 = (v18 + 96);
  *(v18 + 48) = 0;
  v27 = v18 + 48;
  *(v18 + 44) = 0;
  *(v18 + 64) = 0;
  v28 = v18 + 64;
  UDct = brk_DataOpenEx(*(v25 + 24), *a3, 0, v18 + 96);
  if ((UDct & 0x80000000) != 0)
  {
    goto LABEL_87;
  }

  UDct = brk_DataMapEx(*(v25 + 24), *v26, 0, v28, v27);
  if ((UDct & 0x80000000) != 0)
  {
    goto LABEL_87;
  }

  v35 = *(a3 + 32);
  if (!v35 || !*v35)
  {
    v75 = *a3;
    log_OutPublic(*(v25 + 32), "DCTEG", 4415, "%s%s", v31, v32, v33, v34, "uri");
    v4 = 2231377922;
    goto LABEL_88;
  }

  v36 = "application/edct-bin-dictionary";
  if (strstr(*(a3 + 32), "application/edct-bin-dictionary") || strstr(v35, "application/octet-stream") || (v36 = "application/cdct-bin-dictionary", strstr(v35, "application/cdct-bin-dictionary")) || (v36 = "application/x-vocalizer-userdct-pointer", strstr(v35, "application/x-vocalizer-userdct-pointer")))
  {
    *(v24 + 16) = v36;
  }

  else
  {
    *(v24 + 16) = "application/octet-stream";
  }

  if (strstr(v35, "mode=langoverwriting"))
  {
    *(v24 + 32) = "mode=langoverwriting";
  }

  else
  {
    *(v24 + 32) = "mode=standard";
  }

LABEL_50:
  v42 = v79;
  v43 = strstr(v35, "type=");
  if (v43)
  {
    v44 = v43 + 5;
    v45 = strchr(v43 + 5, 59);
    if (!v45)
    {
      v45 = &v44[strlen(v44)];
    }

    v46 = v45 - v44;
    v47 = heap_Alloc(v42[1], (v45 - v44 + 1));
    *(v24 + 24) = v47;
    if (!v47)
    {
      v70 = v42[4];
      goto LABEL_77;
    }

    v52 = v46;
    if (v46)
    {
      v53 = 0;
      do
      {
        *(*(v24 + 24) + v53) = __tolower(v44[v53]);
        ++v53;
      }

      while (v52 != v53);
      v47 = *(v24 + 24);
    }

    *(v47 + v52) = 0;
    v42 = v79;
  }

  else
  {
    *(v24 + 24) = 0;
  }

  if (*(a3 + 8))
  {
    v54 = *(a3 + 8);
  }

  else
  {
    v54 = "Unknown";
  }

  v55 = strlen(v54);
  v56 = heap_Alloc(v42[1], (v55 + 1));
  *(v24 + 8) = v56;
  if (!v56 || ((strcpy(v56, v54), *a3) ? (v57 = *a3) : (v57 = "Unknown"), v58 = strlen(v57), v59 = heap_Alloc(v79[1], (v58 + 1)), (*(v24 + 56) = v59) == 0))
  {
    v70 = v79[4];
LABEL_77:
    log_OutPublic(v70, "DCTEG", 4400, 0, v48, v49, v50, v51, v74);
    goto LABEL_88;
  }

  strcpy(v59, v57);
  if (*(v24 + 56) && *(a3 + 32))
  {
    v78 = *(v24 + 16);
    v76 = *(v24 + 56);
    log_OutEvent(v79[4], 12, "%s%s%s%s", v60, v61, v62, v63, v64, "URI");
  }

  v65 = *(v24 + 16);
  if (strcmp(v65, "application/edct-bin-dictionary") && strcmp(v65, "application/cdct-bin-dictionary") && strcmp(v65, "application/x-vocalizer-userdct-pointer"))
  {
    *a3;
    log_OutPublic(v79[4], "DCTEG", 4403, "%s%s%s%s", v66, v67, v68, v69, "name");
LABEL_86:
    v4 = v5;
    goto LABEL_88;
  }

  v71 = *(a1 + 48);
  if (!v71)
  {
    UDct = OpenEDCTObj(*a1, *(a1 + 8), a1 + 48);
    if ((UDct & 0x80000000) != 0)
    {
LABEL_87:
      v4 = UDct;
      goto LABEL_88;
    }

    v71 = *(a1 + 48);
  }

  UDct = LoadUDct(v71, v24);
  if ((UDct & 0x80000000) != 0)
  {
    goto LABEL_87;
  }

  if (*(a1 + 72))
  {
    UDct = dcteg_hlp_InitializeMWDct(v79, a1, v24);
    if ((UDct & 0x80000000) != 0)
    {
      goto LABEL_87;
    }
  }

  *(v24 + 40) = 1;
  v5 = dctlist_Add(a1 + 24, v24);
  if ((v5 & 0x80000000) == 0)
  {
    *a4 = v24;
    *(a4 + 8) = 753;
    goto LABEL_86;
  }

  *(v24 + 8);
  log_OutPublic(v79[4], "DCTEG", 4418, "%s%s", v31, v32, v33, v34, "name");
  v4 = v5 | 0x85002000;
LABEL_88:
  if (*(v24 + 56) && *(a3 + 32))
  {
    v77 = *(v24 + 56);
    log_OutEvent(v79[4], 13, "%s%s%s%s", v30, v31, v32, v33, v34, "URI");
  }

  v72 = *(v24 + 48);
  if (v72)
  {
    brk_DataUnmap(v79[3], *(v24 + 96), v72);
  }

  v73 = *(v24 + 96);
  if (v73)
  {
    brk_DataClose(v79[3], v73);
  }

  if ((v4 & 0x80000000) != 0)
  {
    p_unloadDct(a1, v24);
  }

  return v4;
}

uint64_t dcteg_UnloadDictionary(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v15 = 0;
  inited = safeh_HandleCheck(a1, a2, 752, 80);
  if ((inited & 0x80000000) == 0)
  {
    inited = safeh_HandleCheck(a3, a4, 753, 112);
    if ((inited & 0x80000000) == 0)
    {
      inited = InitRsrcFunction(*a1, *(a1 + 8), &v15);
      if ((inited & 0x80000000) == 0)
      {
        v8 = dctlist_Remove(a1 + 24, a3);
        if ((v8 & 0x80000000) != 0)
        {
          v13 = v8;
          *(a3 + 8);
          log_OutPublic(*(v15 + 32), "DCTEG", 4410, "%s%s", v9, v10, v11, v12, "name");
          return v13;
        }

        return p_unloadDct(a1, a3);
      }
    }
  }

  return inited;
}

uint64_t dcteg_SetExternalCallback(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  result = safeh_HandleCheck(a1, a2, 752, 80);
  if ((result & 0x80000000) == 0)
  {
    result = InitRsrcFunction(*a1, *(a1 + 8), &v8);
    if ((result & 0x80000000) == 0)
    {
      *(a1 + 56) = a3;
      *(a1 + 64) = a4;
    }
  }

  return result;
}

uint64_t dcteg_IsDictActive(uint64_t a1, int a2)
{
  v7 = 0;
  if ((safeh_HandleCheck(a1, a2, 752, 80) & 0x80000000) != 0)
  {
    return 0;
  }

  Next = dctlist_GetNext(a1 + 24, &v7);
  if (!Next)
  {
    return *(a1 + 56) != 0;
  }

  v4 = Next;
  while (1)
  {
    v5 = *(v4 + 16);
    if ((!strcmp(v5, "application/edct-bin-dictionary") || !strcmp(v5, "application/cdct-bin-dictionary") || !strcmp(v5, "application/x-vocalizer-userdct-pointer")) && *(v4 + 40) == 1)
    {
      break;
    }

    v4 = dctlist_GetNext(a1 + 24, &v7);
    if (!v4)
    {
      return *(a1 + 56) != 0;
    }
  }

  return 1;
}

uint64_t dcteg_EnableDictionary(uint64_t a1, int a2, uint64_t a3, int a4, unsigned int a5)
{
  v20 = 0;
  inited = safeh_HandleCheck(a1, a2, 752, 80);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = safeh_HandleCheck(a3, a4, 753, 112);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = InitRsrcFunction(*a1, *(a1 + 8), &v20);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  if (*(a3 + 40) == 1)
  {
    v13 = *(a3 + 8);
    if (!v13)
    {
      v13 = "Unknown";
    }

    log_OutText(*(v20 + 32), "DCTEG", 3, 0, "dcteg_EnableDictionary failed, already enabled: %s", v10, v11, v12, v13);
    return 2231378970;
  }

  else
  {
    v14 = dctlist_Move(a1 + 24, a3, a5);
    if ((v14 & 0x80000000) != 0)
    {
      *(a3 + 8);
      log_OutPublic(*(v20 + 32), "DCTEG", 4411, "%s%s", v16, v17, v18, v19, "name");
    }

    else
    {
      *(a3 + 40) = 1;
    }
  }

  return v14;
}

uint64_t dcteg_DisableDictionary(uint64_t a1, int a2, uint64_t a3, int a4)
{
  inited = safeh_HandleCheck(a3, a4, 753, 112);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v18 = 0;
  inited = safeh_HandleCheck(a1, a2, 752, 80);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = InitRsrcFunction(*a1, *(a1 + 8), &v18);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  if (*(a3 + 40))
  {
    v15 = dctlist_Move(a1 + 24, a3, 0xFFFFFFFF);
    if ((v15 & 0x80000000) != 0)
    {
      *(a3 + 8);
      log_OutPublic(*(v18 + 32), "DCTEG", 4412, "%s%s", v11, v12, v13, v14, "name");
      return v15 | 0x85002000;
    }

    else
    {
      *(a3 + 40) = 0;
    }
  }

  else
  {
    v17 = *(a3 + 8);
    if (!v17)
    {
      v17 = "Unknown";
    }

    log_OutText(*(v18 + 32), "DCTEG", 3, 0, "dcteg_DisableDictionary failed, already disabled: %s", v8, v9, v10, v17);
    return 2231378957;
  }

  return v15;
}

uint64_t dcteg_DisableAllDictionaries(uint64_t a1, int a2)
{
  v6 = 0;
  v3 = safeh_HandleCheck(a1, a2, 752, 80);
  if ((v3 & 0x80000000) == 0)
  {
    for (i = dctlist_GetNext(a1 + 24, &v6); i; i = dctlist_GetNext(a1 + 24, &v6))
    {
      *v6 = -1;
      *(i + 40) = 0;
    }
  }

  return v3;
}

uint64_t dcteg_Lookup_Utf8(void *a1, uint64_t a2, _BYTE *a3, const char *a4, const char *a5, _WORD *a6, const char *a7, _DWORD *a8, char *a9, _BYTE *a10, void *a11, int a12)
{
  v73 = *MEMORY[0x1E69E9840];
  v19 = 2231377920;
  v70 = 0;
  v71 = 0;
  NullHandle = safeh_GetNullHandle();
  if (a12 == 2)
  {
    v22 = 111;
  }

  else
  {
    v22 = 0;
  }

  if (a12 == 1)
  {
    v22 = 108;
  }

  if (!a1)
  {
    v19 = 2231377928;
    goto LABEL_15;
  }

  LODWORD(v65) = v21;
  v66 = NullHandle;
  v68 = a8;
  v67 = v22;
  v23 = *(a1[2] + 40);
  *__s1 = 0;
  __s[0] = 0;
  Str = paramc_ParamGetStr(v23, "langcode", __s1);
  if ((Str & 0x80000000) != 0)
  {
LABEL_14:
    v19 = Str;
    goto LABEL_15;
  }

  if (!*__s1 || strlen(*__s1) != 3)
  {
    Str = 2231377920;
    goto LABEL_14;
  }

  v63 = a7;
  __strcpy_chk();
  if ((objc_GetObject(*(a1[2] + 48), "CLMOBJECT", &v70) & 0x80000000) != 0)
  {
    v25 = 1;
  }

  else
  {
    v65 = v70[3];
    v66 = v70[2];
    v25 = v70[1] == 0;
  }

  v64 = v25;
  __s1[0] = 0;
  if (a4 && (v28 = strlen(a4)) != 0)
  {
    if (v28 + 1 > 0xC)
    {
      goto LABEL_70;
    }

    __strcpy_chk();
    if (strlen(__s1) >= 1)
    {
      v29 = 0;
      do
      {
        __s1[v29] = __tolower(__s1[v29]);
        ++v29;
      }

      while (strlen(__s1) > v29);
    }

    v30 = strstr(__s1, "normal");
    if (v30 || (v30 = strstr(__s1, "lid")) != 0)
    {
      strcpy(v30, __s);
    }
  }

  else
  {
    __strcpy_chk();
  }

  if (a5)
  {
    v31 = strlen(a5);
    v32 = heap_Alloc(*(a1[2] + 8), (v31 + 1));
    if (!v32)
    {
      log_OutPublic(*(a1[2] + 32), "DCTEG", 4400, 0, v33, v34, v35, v36, v60);
      v19 = 2231377930;
      goto LABEL_70;
    }

    v37 = v32;
    if (strlen(a5) < 1)
    {
      v40 = 0;
    }

    else
    {
      v38 = 0;
      v39 = 0;
      do
      {
        utf8_ToLower(a5, v38, &v37[v39++]);
        v38 = v39;
      }

      while (v39 < strlen(a5));
      v40 = v39;
    }

    v37[v40] = 0;
  }

  else
  {
    v37 = 0;
  }

  Next = dctlist_GetNext((a1 + 3), &v71);
  if (!Next)
  {
LABEL_51:
    v55 = a1[7];
    if (v55)
    {
      Str = v55(a1[8], a3, a6, v63);
    }

    else if (Str < 0)
    {
      Str = Str;
    }

    else
    {
      Str = 2231377940;
    }

    goto LABEL_67;
  }

  v42 = Next;
  while (1)
  {
    v43 = *(v42 + 16);
    if (strcmp(v43, "application/edct-bin-dictionary") && strcmp(v43, "application/cdct-bin-dictionary") && strcmp(v43, "application/x-vocalizer-userdct-pointer"))
    {
      *(v42 + 8);
      log_OutPublic(*(a1[2] + 32), "DCTEG", 4413, "%s%s%s%s", v44, v45, v46, v47, "name");
      Str = 2231377927;
      goto LABEL_67;
    }

    if (*(v42 + 40) != 1)
    {
      goto LABEL_50;
    }

    v48 = !strcmp(*(v42 + 32), "mode=langoverwriting") ? 0 : __s1;
    UDctEntry = RetrieveUDctEntry(a1, v42, v48, v37, a3, v63, a6, a9, a10, v68);
    Str = UDctEntry;
    if (UDctEntry >= 0 && !v64)
    {
      break;
    }

    if ((UDctEntry & 0x80000000) == 0)
    {
      v58 = a11;
      goto LABEL_62;
    }

    if (a12)
    {
      v61 = *(v42 + 8);
      log_OutTraceTuningData(*(a1[2] + 32), v67, "%s%s %s%s %s%u", v50, v51, v52, v53, v54, "NAME");
    }

LABEL_50:
    v42 = dctlist_GetNext((a1 + 3), &v71);
    if (!v42)
    {
      goto LABEL_51;
    }
  }

  v56 = safeh_GetNullHandle();
  v58 = a11;
  if (!safeh_HandlesEqual(v66, v65, v56, v57) && *v68 == 1)
  {
    if (*(v42 + 8))
    {
      v59 = *(v42 + 8);
    }

    log_OutText(*(a1[2] + 32), "DCTEG", 4, 0, "Validating transcription [%s] [LNG=%s LOO=%s] [%s]", v52, v53, v54, v63);
    Str = 0;
  }

LABEL_62:
  if (v58)
  {
    *v58 = *(v42 + 56);
  }

  if (a12)
  {
    v62 = *(v42 + 8);
    log_OutTraceTuningData(*(a1[2] + 32), v67, "%s%s %s%s %s%s %s%u", v50, v51, v52, v53, v54, "NAME");
  }

LABEL_67:
  if (v37)
  {
    heap_Free(*(a1[2] + 8), v37);
  }

  v19 = Str;
LABEL_70:
  if (!v64)
  {
    objc_ReleaseObject(*(a1[2] + 48), "CLMOBJECT");
  }

LABEL_15:
  v26 = *MEMORY[0x1E69E9840];
  return v19;
}

uint64_t dcteg_LookupMultiWordLengths(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4, char *a5, unsigned __int16 *a6)
{
  v29[2] = *MEMORY[0x1E69E9840];
  v6 = 2231377940;
  __s = 0;
  v29[0] = 0;
  v7 = *a4;
  __s1 = 0;
  if (a1)
  {
    v13 = *(a1 + 16);
    if (!v13 || (v14 = *(v13 + 40)) == 0 || (paramc_ParamGetStr(v14, "disablemultiworddictionarywithoutescseqlookup", &__s1) & 0x80000000) != 0 || !__s1 || strcmp(__s1, "yes"))
    {
      *a5 = 0;
      Next = dctlist_GetNext(a1 + 24, v29);
      if (Next)
      {
        v16 = 0;
        v17 = 0;
        do
        {
          while ((ssftmap_FindReadOnly(*(Next + 88), a3, &__s) & 0x80000000) == 0 && strlen(__s) + v16 < v7)
          {
            strcat(a5, __s);
            v16 += strlen(__s);
            *a4 = v16;
            Next = dctlist_GetNext(a1 + 24, v29);
            v6 = 0;
            v17 = 1;
            if (!Next)
            {
              goto LABEL_17;
            }
          }

          Next = dctlist_GetNext(a1 + 24, v29);
        }

        while (Next);
        if ((v17 & 1) == 0)
        {
          goto LABEL_33;
        }

LABEL_17:
        if (*a4)
        {
          v18 = strlen(a5);
          v19 = v18;
          if (v18)
          {
            v20 = 0;
            v21 = v18;
            do
            {
              while (v19 > v20 && a5[v20] == 32)
              {
                ++v20;
              }

              if (v19 <= v20)
              {
                v22 = 0;
              }

              else
              {
                LOWORD(v22) = 0;
                do
                {
                  v23 = a5[v20];
                  if (v23 == 32)
                  {
                    break;
                  }

                  *(v29 + v22) = v23;
                  ++v20;
                  LOWORD(v22) = v22 + 1;
                }

                while (v19 > v20);
                v22 = v22;
              }

              *(v29 + v22) = 0;
              v24 = LH_atoi(v29);
              if (*a6 < v24)
              {
                *a6 = v24;
              }
            }

            while (v20 < v21);
          }
        }

        v6 = 0;
      }
    }
  }

  else
  {
    v6 = 2231377928;
  }

LABEL_33:
  v25 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t p_unloadDct(uint64_t a1, uint64_t a2)
{
  v27 = 0;
  inited = InitRsrcFunction(*a1, *(a1 + 8), &v27);
  if ((inited & 0x80000000) == 0)
  {
    *(a2 + 8);
    log_OutTraceTuningData(*(v27 + 32), 103, "%s%s %s%s", v4, v5, v6, v7, v8, "BEG");
    v14 = *(a2 + 88);
    if (!v14 || (inited = ssftmap_ObjClose(v14), (inited & 0x80000000) == 0))
    {
      v16 = *(a2 + 16);
      if (!v16)
      {
        inited = 2231377927;
        *(a2 + 8);
        log_OutPublic(*(v27 + 32), "DCTEG", 4405, "%s%s", v10, v11, v12, v13, "name");
        goto LABEL_13;
      }

      if (strcmp(*(a2 + 16), "application/edct-bin-dictionary") && strcmp(v16, "application/cdct-bin-dictionary") && strcmp(v16, "application/x-vocalizer-userdct-pointer"))
      {
        inited = 2231377927;
        *(a2 + 8);
        log_OutPublic(*(v27 + 32), "DCTEG", 4404, "%s%s%s%s", v17, v18, v19, v20, "name");
LABEL_13:
        v22 = *(a2 + 8);
        if (v22)
        {
          heap_Free(*(v27 + 8), v22);
        }

        v23 = *(a2 + 24);
        if (v23)
        {
          heap_Free(*(v27 + 8), v23);
        }

        v24 = *(a2 + 56);
        if (v24)
        {
          heap_Free(*(v27 + 8), v24);
        }

        v25 = *(a2 + 48);
        if (v25 && *(a2 + 44))
        {
          heap_Free(*(v27 + 8), v25);
        }

        heap_Free(*(v27 + 8), a2);
        goto LABEL_23;
      }

      v21 = *(a1 + 48);
      if (!v21)
      {
        goto LABEL_13;
      }

      inited = UnloadUDct(v21, a2);
      if ((inited & 0x80000000) == 0)
      {
        goto LABEL_13;
      }
    }

LABEL_23:
    log_OutTraceTuningData(*(v27 + 32), 103, "%s%s %s%u", v15, v10, v11, v12, v13, "END");
  }

  return inited;
}

uint64_t p_checkIfPresent(uint64_t a1, const char *a2)
{
  v7 = 0;
  do
  {
    Next = dctlist_GetNext(a1 + 24, &v7);
    v5 = Next;
  }

  while (Next && strcmp(a2, *(Next + 8)));
  return v5;
}

uint64_t dcteg_hlp_InitializeMWDct(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v69 = *MEMORY[0x1E69E9840];
  v65 = 0;
  v66 = 0;
  v4 = *(*(a2 + 16) + 8);
  *__s1 = xmmword_1F42D3EF0;
  v63 = *off_1F42D3F00;
  v64 = off_1F42D3F10;
  v5 = ssftmap_ObjOpen(v4, 0, __s1, (a3 + 88));
  if ((v5 & 0x80000000) != 0)
  {
    goto LABEL_61;
  }

  v6 = *(a3 + 72);
  if (v6)
  {
    Dictionary_FetchKeys(v6, &v66, &v65);
  }

  else
  {
    if (strstr(*(a3 + 16), "application/x-vocalizer-userdct-pointer"))
    {
      v44 = *(a3 + 48);
      if (v44)
      {
        __s1[0] = 0;
        v45 = (*(*v44 + 24))(v44 - *(*v44 + 48));
        if (v45)
        {
          v46 = (**v45)(v45 - *(*v45 + 64), 414531107, __s1);
          v5 = LH_ERROR_to_VERROR(v46);
          if ((v5 & 0x80000000) == 0 && __s1[0])
          {
            v47 = (*(*__s1[0] + 16))(&__s1[0][-*(*__s1[0] + 32)], &v66, &v65);
            v5 = LH_ERROR_to_VERROR(v47);
          }

          if ((v5 & 0x80000000) != 0)
          {
            goto LABEL_61;
          }
        }

        else
        {
          v5 = 0;
        }

        goto LABEL_5;
      }
    }

    v59 = *(a3 + 80);
    if (!v59)
    {
      goto LABEL_5;
    }

    Keys = CDSObject_FetchKeys(v59, &v66, &v65);
  }

  v5 = LH_ERROR_to_VERROR(Keys);
  if ((v5 & 0x80000000) != 0)
  {
LABEL_61:
    v23 = 0;
    goto LABEL_62;
  }

LABEL_5:
  if (!v65)
  {
    goto LABEL_61;
  }

  v8 = 0;
  v9 = 0;
  v60 = 0;
  while (1)
  {
    v10 = v66[v8];
    v11 = strlen(v10);
    v12 = v11;
    if (v11)
    {
      v13 = 0;
      v14 = 0;
      v15 = v11;
      do
      {
        if (v12 > v14)
        {
          v16 = v14;
          if (utf8_BelongsToSet(0, v10, v14, v12))
          {
            while (1)
            {
              NextUtf8Offset = utf8_GetNextUtf8Offset(v10, v14);
              v14 = NextUtf8Offset;
              if (v12 <= NextUtf8Offset)
              {
                break;
              }

              LOWORD(v16) = NextUtf8Offset;
              if (!utf8_BelongsToSet(0, v10, NextUtf8Offset, v12))
              {
                v16 = v16;
                goto LABEL_14;
              }
            }
          }

          else
          {
LABEL_14:
            if (v12 > v14 && !utf8_BelongsToSet(0, v10, v14, v12))
            {
              do
              {
                v14 = utf8_GetNextUtf8Offset(v10, v14);
              }

              while (v12 > v14 && !utf8_BelongsToSet(0, v10, v14, v12));
              v16 = v14;
            }

            ++v13;
            v14 = v16;
          }
        }
      }

      while (v14 < v15);
      if (v13 >= 2)
      {
        break;
      }
    }

    v23 = v9;
LABEL_52:
    ++v8;
    v9 = v23;
    if (v8 >= v65)
    {
      goto LABEL_62;
    }
  }

  v18 = v66[v8];
  v19 = strlen(v18);
  if (v19)
  {
    v20 = 0;
    if (utf8_BelongsToSet(0, v18, 0, v19))
    {
      while (1)
      {
        v21 = utf8_GetNextUtf8Offset(v18, v20);
        v20 = v21;
        if (v19 <= v21)
        {
          break;
        }

        if (!utf8_BelongsToSet(0, v18, v21, v19))
        {
          goto LABEL_26;
        }
      }

      LOWORD(v22) = v21;
    }

    else
    {
LABEL_26:
      v22 = v20;
      do
      {
        if (utf8_BelongsToSet(0, v18, v22, v19))
        {
          break;
        }

        v22 = utf8_GetNextUtf8Offset(v18, v22);
      }

      while (v19 > v22);
    }
  }

  else
  {
    LOWORD(v20) = 0;
    LOWORD(v22) = 0;
  }

  v24 = (v22 - v20);
  if (v60 >= v24)
  {
    v23 = v9;
  }

  else
  {
    v23 = heap_Realloc(*(a1 + 8), v9, v24 + 1);
    v60 = (v22 - v20);
    if (!v23)
    {
      v5 = 2231377930;
      log_OutPublic(*(a1 + 32), "DCTEG", 4400, 0, v25, v26, v27, v28, v60);
      v23 = v9;
      goto LABEL_62;
    }
  }

  for (i = 0; v19 > i; i = utf8_GetNextUtf8Offset(v18, i))
  {
    if (!utf8_BelongsToSet(0, v18, i, v19))
    {
      break;
    }
  }

  v30 = 0;
  if (v24)
  {
    v31 = 0;
    do
    {
      utf8_ToLower(v18, i, v23 + v30);
      i += utf8_determineUTF8CharLength(v18[i]);
      v31 += utf8_determineUTF8CharLength(*(v23 + v30));
      v30 = v31;
    }

    while (v24 > v31);
  }

  *(v23 + v30) = 0;
  v32 = *(a3 + 88);
  __s1[0] = 0;
  __s2 = 32;
  LH_itoa(v13, v68, 0xAu);
  __strcat_chk();
  if ((ssftmap_FindReadOnly(v32, v23, __s1) & 0x80000000) != 0)
  {
    v5 = ssftmap_Insert(v32, v23, &__s2);
    if ((v5 & 0x80000000) != 0)
    {
      goto LABEL_62;
    }

    goto LABEL_52;
  }

  v33 = __s1[0];
  if (strstr(__s1[0], &__s2))
  {
    v5 = 0;
    goto LABEL_52;
  }

  v34 = strlen(v33);
  v35 = strlen(&__s2);
  v36 = heap_Calloc(*(a1 + 8), v35 + v34, 1);
  if (!v36)
  {
    v5 = 2231377930;
    log_OutPublic(*(a1 + 32), "DCTEG", 4400, 0, v37, v38, v39, v40, v60);
    goto LABEL_62;
  }

  v41 = v36;
  v42 = strcpy(v36, __s1[0]);
  strcat(v42, v68);
  v43 = ssftmap_Remove(v32, v23);
  if ((v43 & 0x80000000) == 0)
  {
    v43 = ssftmap_Insert(v32, v23, v41);
  }

  v5 = v43;
  heap_Free(*(a1 + 8), v41);
  if ((v5 & 0x80000000) == 0)
  {
    goto LABEL_52;
  }

  while (1)
  {
LABEL_62:
    if (v23)
    {
      heap_Free(*(a1 + 8), v23);
    }

    v48 = *(a3 + 72);
    if (v48)
    {
      Dictionary_ReturnKeys(v48, v66);
LABEL_77:
      v55 = v5;
      goto LABEL_79;
    }

    if (!strstr(*(a3 + 16), "application/x-vocalizer-userdct-pointer") || (v49 = *(a3 + 48)) == 0 || v5)
    {
      v56 = *(a3 + 80);
      if (v56)
      {
        CDSObject_ReturnKeys(v56, v66);
      }

      goto LABEL_77;
    }

    v50 = v66;
    __s1[0] = 0;
    v51 = (*(*v49 + 24))(v49 - *(*v49 + 48));
    if (!v51)
    {
      break;
    }

    v52 = (**v51)(v51 - *(*v51 + 64), 414531107, __s1);
    v53 = LH_ERROR_to_VERROR(v52);
    if ((v53 & 0x80000000) == 0 && __s1[0])
    {
      v54 = (*(*__s1[0] + 24))(&__s1[0][-*(*__s1[0] + 32)], v50);
      v53 = LH_ERROR_to_VERROR(v54);
    }

    v5 = 0;
    v55 = 0;
    if ((v53 & 0x80000000) == 0)
    {
      goto LABEL_79;
    }
  }

  v55 = 0;
LABEL_79:
  v57 = *MEMORY[0x1E69E9840];
  return v55;
}

uint64_t dctlist_ObjOpen(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = a2;
  return 0;
}

uint64_t dctlist_ObjClose(uint64_t a1)
{
  for (i = *(a1 + 8); i; i = *(a1 + 8))
  {
    dctlist_Remove(a1, *(i + 8));
  }

  return 0;
}

uint64_t dctlist_Remove(uint64_t a1, uint64_t a2)
{
  result = 2231377940;
  v5 = *(a1 + 8);
  if (v5)
  {
    if (*(v5 + 8) == a2)
    {
      v8 = *(v5 + 16);
      *(a1 + 8) = v8;
      if (!v8)
      {
        *(a1 + 16) = 0;
      }

      heap_Free(*a1, v5);
      return 0;
    }

    else
    {
      while (1)
      {
        v6 = v5;
        v5 = *(v5 + 16);
        if (!v5)
        {
          break;
        }

        if (*(v5 + 8) == a2)
        {
          v7 = *(v5 + 16);
          heap_Free(*a1, v5);
          *(v6 + 16) = v7;
          if (v7)
          {
            return 0;
          }

          result = 0;
          *(a1 + 16) = v6;
          return result;
        }
      }
    }
  }

  return result;
}

uint64_t dctlist_Add(uint64_t a1, uint64_t a2)
{
  v4 = heap_Calloc(*a1, 1, 24);
  if (v4)
  {
    *v4 = -1;
    *(v4 + 8) = a2;
    *(v4 + 16) = 0;
    v6 = (a1 + 8);
    v5 = *(a1 + 8);
    if (v5)
    {
      if (*v5 == -1)
      {
        *(v4 + 16) = v5;
        goto LABEL_10;
      }

      do
      {
        v7 = v5;
        v5 = *(v5 + 16);
      }

      while (v5);
      *(v7 + 16) = v4;
    }

    else
    {
      *(a1 + 8) = v4;
    }

    v6 = (a1 + 16);
LABEL_10:
    v8 = 0;
    *v6 = v4;
    return v8;
  }

  return 2231377930;
}

uint64_t dctlist_Move(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = 2231377940;
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = *(a1 + 8);
    do
    {
      v10 = *(v9 + 1);
      v11 = *v9;
      if (v10 == a2)
      {
        v6 = v8;
        if (v11 == a3)
        {
          return 0;
        }
      }

      if (a3 != -1 && v11 == a3)
      {
        return 2231378969;
      }

      if (v11 <= a3 && v10 != a2)
      {
        v7 = v9;
      }

      if (v6 && v7)
      {
        break;
      }

      v8 = v9;
      v9 = *(v9 + 2);
    }

    while (v9);
    if (a3 == -1 && v7 && *(v7 + 2) != *(a1 + 16))
    {
      v7 = *(a1 + 16);
    }

    if (v6 == v7)
    {
      if (v6)
      {
        v4 = *(v6 + 2);
      }

      goto LABEL_34;
    }

    if (v6)
    {
      v13 = *(v6 + 2);
      v14 = *(v13 + 16);
      *(v6 + 2) = v14;
      v15 = v4;
      v4 = v13;
      if (v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (*(v4 + 8) != a2)
      {
        return v3;
      }

      v15 = *(v4 + 16);
      *v5 = v15;
      if (v15)
      {
LABEL_28:
        if (v7)
        {
          *(v4 + 16) = *(v7 + 2);
          *(v7 + 2) = v4;
          if (*(v4 + 16))
          {
LABEL_34:
            v3 = 0;
            *v4 = a3;
            return v3;
          }

          v5 = (a1 + 16);
        }

        else
        {
          *(v4 + 16) = v15;
        }

        *v5 = v4;
        goto LABEL_34;
      }

      v6 = 0;
      v13 = v4;
    }

    *(a1 + 16) = v6;
    v4 = v13;
    goto LABEL_28;
  }

  return v3;
}

uint64_t dctlist_GetNext(uint64_t a1, uint64_t a2)
{
  if (*a2)
  {
    v2 = *(*a2 + 16);
  }

  else
  {
    v2 = *(a1 + 8);
  }

  *a2 = v2;
  if (v2)
  {
    return *(v2 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t OpenEDCTObj(_WORD *a1, uint64_t a2, uint64_t a3)
{
  v17 = 0;
  inited = InitRsrcFunction(a1, a2, &v17);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v7 = heap_Calloc(*(v17 + 8), 1, 128);
  *a3 = v7;
  if (!v7)
  {
    v13 = 2231377930;
    v14 = 4400;
    goto LABEL_7;
  }

  *v7 = a1;
  v7[1] = a2;
  *(*a3 + 16) = heap_Alloc;
  *(*a3 + 24) = heap_Calloc;
  *(*a3 + 32) = heap_Realloc;
  *(*a3 + 40) = heap_Free;
  *(*a3 + 88) = dcteg_fread;
  *(*a3 + 96) = dcteg_fseek;
  *(*a3 + 112) = dcteg_ffinished;
  *(*a3 + 104) = dcteg_ferror;
  *(*a3 + 120) = 0;
  v12 = OOCAllocator_Con(*a3 + 48, (*a3 + 16), *(v17 + 8));
  v13 = LH_ERROR_to_VERROR(v12);
  if ((v13 & 0x80000000) != 0)
  {
    v14 = 4477;
LABEL_7:
    log_OutPublic(*(v17 + 32), "DCTEG", v14, 0, v8, v9, v10, v11, v16);
  }

  return v13;
}

size_t dcteg_fread(void *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 68);
  if (a3 * a2 >= (*(a4 + 64) - v5))
  {
    v6 = (*(a4 + 64) - v5);
  }

  else
  {
    v6 = a3 * a2;
  }

  if (v6)
  {
    memcpy(a1, (*(a4 + 48) + v5), v6);
    *(a4 + 68) += v6;
  }

  return v6 / a2;
}

uint64_t dcteg_fseek(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == 2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      return 1;
    }

    v3 = *(a1 + 64);
LABEL_10:
    if (v3 >= -a2)
    {
      goto LABEL_11;
    }

    return 1;
  }

  if (a3 == 1)
  {
    v3 = *(a1 + 68);
    if ((a2 & 0x8000000000000000) == 0)
    {
LABEL_11:
      LODWORD(a2) = v3 + a2;
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (a3 || a2 < 0)
  {
    return 1;
  }

LABEL_12:
  if (a2 >= *(a1 + 64))
  {
    return 1;
  }

  v4 = 0;
  *(a1 + 68) = a2;
  return v4;
}

uint64_t dcteg_ffinished(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 48);
    if (v2)
    {
      if (*(a1 + 44))
      {
        heap_Free(*a1, v2);
      }

      *(a1 + 48) = 0;
    }
  }

  return 0;
}

uint64_t CloseEDCTObj(uint64_t a1)
{
  v4 = 0;
  inited = InitRsrcFunction(*a1, *(a1 + 8), &v4);
  if ((inited & 0x80000000) == 0)
  {
    heap_Free(*(v4 + 8), a1);
  }

  return inited;
}

uint64_t hlp_TraceTuningData_UDctEntries(uint64_t a1, uint64_t a2)
{
  v30 = 0u;
  v31 = 0u;
  v28 = 0;
  v29 = 0;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  v24 = 0;
  v2 = *(*(a2 + 72) + 128);
  inited = InitRsrcFunction(*a1, *(a1 + 8), &v24);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  Info = edct_DctGetInfo(v2, &v30);
  v5 = LH_ERROR_to_VERROR(Info);
  if ((v5 & 0x80000000) == 0 && !v31)
  {
    edct_DctItOpen(*(v2 + 48), v2, &v29);
    v7 = LH_ERROR_to_VERROR(v6);
    if ((v7 & 0x80000000) == 0)
    {
      while (1)
      {
        v8 = edct_DctItCurrent(v29, &v28, &v27, &v26 + 1, &v26);
        v5 = LH_ERROR_to_VERROR(v8);
        if ((v5 & 0x80000000) != 0)
        {
          goto LABEL_27;
        }

        if (!v28 || v27 == 0)
        {
          goto LABEL_27;
        }

        if (HIDWORD(v26))
        {
          break;
        }

LABEL_21:
        v21 = edct_DctItIncrement(v29);
        v7 = LH_ERROR_to_VERROR(v21);
        if ((v7 & 0x80000000) != 0)
        {
          goto LABEL_26;
        }

        HasEnded = edct_DctItHasEnded(v29, &v25);
        v5 = LH_ERROR_to_VERROR(HasEnded);
        if ((v5 & 0x80000000) != 0 || v25)
        {
          goto LABEL_27;
        }
      }

      v15 = 0;
      v16 = 0;
      while (1)
      {
        v17 = v27 + v15;
        if (!*(v27 + v15 + 56))
        {
          strlen(*(v17 + 48));
        }

        v18 = *(v24 + 32);
        if (*v17 == 2)
        {
          v20 = *(v27 + v15 + 48);
        }

        else
        {
          if (*v17)
          {
            log_OutTraceTuningData(v18, 102, "%s%s %s%s %s%s", v9, v10, v11, v12, v13, "USERDCTKEY");
            goto LABEL_20;
          }

          v19 = *(v27 + v15 + 48);
        }

        log_OutTraceTuningData(v18, 102, "%s%s %s%.*s %s%s", v9, v10, v11, v12, v13, "USERDCTKEY");
LABEL_20:
        ++v16;
        v15 += 64;
        if (v16 >= HIDWORD(v26))
        {
          goto LABEL_21;
        }
      }
    }

LABEL_26:
    v5 = v7;
  }

LABEL_27:
  if (v29)
  {
    edct_DctItClose(v29);
  }

  return v5;
}

uint64_t LoadUDct(uint64_t a1, uint64_t a2)
{
  v41 = 0;
  v4 = *(a2 + 16);
  v40 = 0;
  memset(v39, 0, sizeof(v39));
  inited = InitRsrcFunction(*a1, *(a1 + 8), &v41);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  *(a2 + 68) = 0;
  if (strcmp(v4, "application/edct-bin-dictionary"))
  {
    if (strcmp(v4, "application/cdct-bin-dictionary"))
    {
      if (!strcmp(v4, "application/x-vocalizer-userdct-pointer"))
      {
        *(a2 + 104) = *(a2 + 48);
        return inited;
      }

      log_OutPublic(*(v41 + 32), "DCTEG", 4403, "%s%s", v6, v7, v8, v9, "contentType");
      inited = 2231378966;
      goto LABEL_20;
    }

    v22 = PNEW_CDSObject_Con(a1 + 48, a1 + 48, (a1 + 88), a2, 0, (a2 + 80));
    v23 = LH_ERROR_to_VERROR(v22);
    if ((v23 & 0x80000000) != 0)
    {
      inited = v23;
      v36 = *(a2 + 8);
      log_OutPublic(*(v41 + 32), "DCTEG", 4481, "%s%s%s%x", v24, v25, v26, v27, "name");
      *(a2 + 104) = 0;
LABEL_20:
      if (*(a2 + 72) || *(a2 + 80))
      {
        UnloadUDct(a1, a2);
      }

      return inited;
    }

    Interface = CDSObject_QueryInterface(*(a2 + 80), 414531721, (a2 + 104));
    inited = LH_ERROR_to_VERROR(Interface);
    if ((inited & 0x80000000) == 0)
    {
      return inited;
    }

    v34 = *(a2 + 8);
    log_OutPublic(*(v41 + 32), "DCTEG", 4482, "%s%s%s%x", v29, v30, v31, v32, "name");
LABEL_19:
    *(a2 + 104) = 0;
    goto LABEL_20;
  }

  v10 = PNEW_Dictionary_Con(a1 + 48, a1 + 48, v39, (a1 + 88), a2, (a1 + 120), 1, (a2 + 72));
  v11 = LH_ERROR_to_VERROR(v10);
  if ((v11 & 0x80000000) != 0)
  {
    inited = v11;
    v35 = *(a2 + 8);
    log_OutPublic(*(v41 + 32), "DCTEG", 4478, "%s%s%s%x", v12, v13, v14, v15, "name");
    goto LABEL_19;
  }

  if (*(a2 + 48) && !*(a2 + 44))
  {
    inited = 2231377945;
    v38 = *(a2 + 8);
    log_OutPublic(*(v41 + 32), "DCTEG", 4479, "%s%s", v12, v13, v14, v15, "name");
    goto LABEL_20;
  }

  v16 = Dictionary_QueryInterface(*(a2 + 72), 414531721, (a2 + 104));
  inited = LH_ERROR_to_VERROR(v16);
  v21 = *(v41 + 32);
  if ((inited & 0x80000000) != 0)
  {
    v37 = *(a2 + 8);
    log_OutPublic(v21, "DCTEG", 4480, "%s%s%s%x", v17, v18, v19, v20, "name");
    goto LABEL_19;
  }

  if (log_HasTraceTuningDataSubscriber(v21))
  {
    hlp_TraceTuningData_UDctEntries(a1, a2);
  }

  return inited;
}

uint64_t UnloadUDct(uint64_t a1, void *a2)
{
  v12 = 0;
  v3 = a2[2];
  inited = InitRsrcFunction(*a1, *(a1 + 8), &v12);
  if ((inited & 0x80000000) == 0)
  {
    if (!strcmp(v3, "application/edct-bin-dictionary"))
    {
      v9 = a2[9];
      if (v9)
      {
        Dictionary_Des(v9);
        heap_Free(*(v12 + 8), a2[9]);
        a2[9] = 0;
      }
    }

    else if (!strcmp(v3, "application/cdct-bin-dictionary"))
    {
      v10 = a2[10];
      if (v10)
      {
        CDSObject_Des(v10);
        heap_Free(*(v12 + 8), a2[10]);
        a2[10] = 0;
      }
    }

    else if (strcmp(v3, "application/x-vocalizer-userdct-pointer"))
    {
      log_OutPublic(*(v12 + 32), "DCTEG", 4404, "%s%s", v5, v6, v7, v8, "contentType");
      return 2231378966;
    }
  }

  return inited;
}

uint64_t RetrieveUDctEntry(uint64_t a1, uint64_t a2, char *a3, char *__s, _BYTE *a5, const char *a6, _WORD *a7, char *a8, _BYTE *a9, _DWORD *a10)
{
  v51 = a7;
  v52 = a6;
  v10 = *(a1 + 16);
  v50 = 0;
  v49 = 0;
  v11 = *(a2 + 16);
  v48 = 0;
  if (!__s)
  {
    return 2231377940;
  }

  v18 = *(a2 + 24);
  if (v18)
  {
    if (!strhelper_csv_HasElem(v18, __s))
    {
      return 2231377940;
    }
  }

  *a8 = 0;
  if (a9)
  {
    *a9 = 0;
  }

  v47 = 0;
  UInt = paramc_ParamGetUInt(*(v10 + 40), "numberoutputtranscriptions", &v49);
  v20 = v49;
  if (UInt < 0)
  {
    v20 = 1;
  }

  v45 = v20;
  if (paramc_ParamGetUInt(*(v10 + 40), "numberoutputorthsubstitutes", &v49) < 0)
  {
    v21 = 1;
  }

  else
  {
    v21 = v49;
  }

  v22 = 2231377927;
  if (a5 && *(a1 + 48) && v11 && a7 && *a5)
  {
    v23 = v21;
    v24 = (*(**(a2 + 104) + 16))(*(a2 + 104) - *(**(a2 + 104) + 48), &v47);
    if ((LH_ERROR_to_VERROR(v24) & 0x80000000) == 0)
    {
      if (*v47)
      {
        for (i = 0; i != 3; ++i)
        {
          __s2[i] = __tolower(*(*v47 + i));
        }

        __s2[3] = 0;
        v26 = 2231377940;
        if (!a3 || strstr(a3, __s2))
        {
          v27 = (***(a2 + 104))(*(a2 + 104) - *(**(a2 + 104) + 48), a5, &v48, &v50);
          v28 = LH_ERROR_to_VERROR(v27);
          v29 = v48;
          if (v28 < 0 || (v30 = v50) == 0 || !v48)
          {
            if (v28 < 0)
            {
              v22 = v28;
            }

            else
            {
              v22 = 2231377940;
            }

LABEL_47:
            if (v29)
            {
              v39 = (*(**(a2 + 104) + 8))(*(a2 + 104) - *(**(a2 + 104) + 48));
              v40 = LH_ERROR_to_VERROR(v39);
              if ((v40 & 0x80000000) != 0)
              {
                v44 = v40;
                log_OutText(*(v10 + 32), "DCTEG", 3, 0, "MSG_ITransLookUp_ReturnTranscriptions failed: %x", v41, v42, v43, v40);
                return v44;
              }
            }

            return v22;
          }

          *a10 = *v48;
          strcpy(a8, __s2);
          if (a9)
          {
            v35 = v47[1];
            if (v35)
            {
              if (strlen(v35) == 3)
              {
                for (j = 0; j != 3; ++j)
                {
                  a9[j] = __tolower(*(v47[1] + j));
                }

                a9[3] = 0;
              }
            }
          }

          if (*v48 == 4)
          {
            if (v23 >= v30)
            {
              v37 = v30;
            }

            else
            {
              v37 = v23;
            }
          }

          else
          {
            if (*v48 != 1)
            {
              log_OutPublic(*(v10 + 32), "DCTEG", 4476, "%s%d", v31, v32, v33, v34, "contentType");
              goto LABEL_46;
            }

            if (v45 >= v30)
            {
              v37 = v30;
            }

            else
            {
              v37 = v45;
            }
          }

          v26 = GetnTranscriptions(&v48, &v52, &v51, v37);
LABEL_46:
          v29 = v48;
          v22 = v26;
          goto LABEL_47;
        }
      }
    }

    return 2231377940;
  }

  return v22;
}

uint64_t GetnTranscriptions(void *a1, const char **a2, _WORD **a3, unsigned int a4)
{
  **a2 = 0;
  if (a4)
  {
    v7 = 0;
    v8 = 0;
    v9 = a4;
    while (1)
    {
      v10 = *a1 + 24 * v7;
      v12 = *(v10 + 8);
      v11 = *(v10 + 16);
      if (v11)
      {
        v13 = 0;
        while (v12[v13])
        {
          if (v11 == ++v13)
          {
            goto LABEL_9;
          }
        }

        LODWORD(v11) = v13;
      }

LABEL_9:
      v14 = v8 + v11 + 1;
      if (v14 > **a3)
      {
        return 2231377929;
      }

      if (v7)
      {
        *&(*a2)[strlen(*a2)] = 18;
        v8 = v14;
      }

      else
      {
        v8 += v11;
      }

      strcat(*a2, v12);
      if (++v7 == v9)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    v8 = 0;
LABEL_16:
    result = 0;
    (*a2)[v8] = 0;
    **a3 = v8;
  }

  return result;
}

uint64_t LD_createChild(uint64_t a1, int a2, unsigned int a3, unsigned int a4, _WORD *a5)
{
  v29 = 0;
  if ((safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) != 0)
  {
    return 2300583944;
  }

  if (*(a1 + 48) > a4 && (v14 = *(*(a1 + 64) + 8 * a4)) != 0)
  {
    if (a3 > 1)
    {
      if (*(v14 + 2) == LD_ChildParentD[a3])
      {
        v15 = LD_createRec(a1, a3, &v29, v9, v10, v11, v12, v13);
        if ((v15 & 0x80000000) == 0)
        {
          v21 = 0;
          v22 = v29;
          *(v29 + 8) = v14;
          v23 = (v14 + 32);
          *(v22 + 24) = 0;
          *(v22 + 32) = 0;
          v24 = 1;
          do
          {
            v25 = v24;
            v26 = v23[v21];
            if (v26 && *(v26 + 2) == a3)
            {
              *(v22 + 16) = v26;
              *(v23[v21] + 24) = v22;
              v23[v21] = v22;
              goto LABEL_22;
            }

            v24 = 0;
            v21 = 1;
          }

          while ((v25 & 1) != 0);
          v27 = *v23;
          if (*v23)
          {
            if (*(v14 + 40))
            {
              log_OutPublic(*(*a1 + 32), "LINGDB", 20030, "%s%u%s%u", v17, v18, v19, v20, "childType");
              return 2300591643;
            }

            v27 = 1;
          }

          v23[v27] = v22;
          *(v22 + 16) = 0;
LABEL_22:
          *a5 = *v22;
          *(a1 + 72) = 1;
        }
      }

      else
      {
        v28 = *(v14 + 2);
        log_OutPublic(*(*a1 + 32), "LINGDB", 20006, "%s%u%s%u", v10, v11, v12, v13, "childType");
        return 2300591619;
      }
    }

    else
    {
      v15 = 2300591618;
      log_OutPublic(*(*a1 + 32), "LINGDB", 20005, "%s%u", v10, v11, v12, v13, "childType");
    }
  }

  else
  {
    log_OutPublic(*(*a1 + 32), "LINGDB", 20020, "%s%u", v10, v11, v12, v13, "record");
    return 2300591633;
  }

  return v15;
}

uint64_t LD_createRec(uint64_t *a1, unsigned int a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 - 7 <= 0xFFFFFFF9)
  {
    v10 = 2300591625;
    v11 = *(*a1 + 32);
    v31 = "method";
    v12 = "%s%s%s%u";
    v13 = 20012;
LABEL_3:
    log_OutPublic(v11, "LINGDB", v13, v12, a5, a6, a7, a8, v31);
    return v10;
  }

  v14 = *(a1 + 12);
  if (v14 - 1 >= *(a1 + 15))
  {
    log_OutPublic(*(*a1 + 32), "LINGDB", 20019, 0, a5, a6, a7, a8, v31);
    return 2300591632;
  }

  v16 = *(a1 + 13);
  if (v14 >= v16)
  {
    v17 = *(a1 + 14) + v16;
    log_OutText(*(*a1 + 32), "LINGDB", 5, 0, "LINGDB LD_reallocSentRecList : Begin (from %u to %u)", a6, a7, a8, *(a1 + 13));
    v18 = heap_Realloc(*(*a1 + 8), a1[8], 8 * v17);
    if (!v18)
    {
      v10 = 2300583946;
      v11 = *(*a1 + 32);
      v13 = 20004;
      goto LABEL_22;
    }

    a1[8] = v18;
    *(a1 + 13) = v17;
    bzero((v18 + 8 * *(a1 + 12)), 8 * (v17 - *(a1 + 12)));
    log_OutText(*(*a1 + 32), "LINGDB", 5, 0, "LINGDB LD_reallocSentRecList : End (%x)", v19, v20, v21, 0);
  }

  v22 = LD_HeapAlloc((a1 + 1), LD_createRec_recordSizeLookup[a2]);
  *a3 = v22;
  if (!v22)
  {
    v10 = 2300583946;
    v11 = *(*a1 + 32);
    v13 = 20000;
LABEL_22:
    v12 = 0;
    goto LABEL_3;
  }

  v23 = *(a1 + 12);
  *(a1[8] + 8 * v23) = v22;
  v24 = *a3;
  *v24 = v23;
  *(v24 + 2) = a2;
  *(a1 + 12) = v23 + 1;
  if (v23 + 1 > v23 && (v25 = *(a1[8] + 8 * v23)) != 0)
  {
    v26 = &LD_FIELDOFFSETSD + 904 * *(v25 + 2);
    v27 = *(v26 + 4);
    if (*(v26 + 4))
    {
      v28 = 0;
      do
      {
        v29 = &v26[40 * v28 + 24];
        if (!*(v29 + 16))
        {
          *(v25 + *v29 - *v26) = 0;
        }

        ++v28;
      }

      while (v27 > v28);
    }

    v10 = 0;
    *(a1 + 18) = 1;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), "LINGDB", 20020, "%s%u", a5, a6, a7, a8, "record");
    return 2300591633;
  }

  return v10;
}

uint64_t LD_createNext(uint64_t a1, int a2, unsigned int a3, _WORD *a4)
{
  v20 = 0;
  if ((safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) != 0)
  {
    return 2300583944;
  }

  if (*(a1 + 48) > a3 && (v12 = *(*(a1 + 64) + 8 * a3)) != 0)
  {
    v13 = *(v12 + 2);
    if (v13 == 1)
    {
      v14 = 2300591620;
      log_OutPublic(*(*a1 + 32), "LINGDB", 20007, 0, v8, v9, v10, v11, v19);
    }

    else
    {
      v16 = LD_createRec(a1, v13, &v20, v7, v8, v9, v10, v11);
      if ((v16 & 0x80000000) != 0)
      {
        return v16;
      }

      else
      {
        v17 = v20;
        *(v20 + 24) = v12;
        *(v17 + 8) = *(v12 + 8);
        *(v12 + 16) = v17;
        *(v17 + 32) = 0;
        v18 = *(v17 + 16);
        if (v18)
        {
          *(v18 + 24) = v17;
        }

        v14 = 0;
        *a4 = *v17;
        *(a1 + 72) = 1;
      }
    }
  }

  else
  {
    log_OutPublic(*(*a1 + 32), "LINGDB", 20020, "%s%u", v8, v9, v10, v11, "record");
    return 2300591633;
  }

  return v14;
}

uint64_t LD_findChild(uint64_t a1, int a2, int a3, unsigned int a4, _WORD *a5)
{
  if ((safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) != 0)
  {
    return 2300583944;
  }

  if (a3 == 1)
  {
    v13 = *(a1 + 64) != 0;
  }

  else
  {
    if (*(a1 + 48) <= a4 || (v15 = *(*(a1 + 64) + 8 * a4)) == 0)
    {
      log_OutPublic(*(*a1 + 32), "LINGDB", 20020, "%s%u", v9, v10, v11, v12, "record");
      return 2300591633;
    }

    if (*(v15 + 2) != LD_ChildParentD[a3])
    {
      v14 = 2300591623;
      v23 = *(v15 + 2);
      log_OutPublic(*(*a1 + 32), "LINGDB", 20010, "%s%s%s%u%s%u%s%u", v9, v10, v11, v12, "method");
      return v14;
    }

    v16 = 0;
    v13 = 0;
    v17 = v15 + 32;
    v18 = 1;
    do
    {
      v19 = v18;
      v20 = *(v17 + 8 * v16);
      if (v20)
      {
        v21 = v13 == 0;
      }

      else
      {
        v21 = 0;
      }

      if (!v21)
      {
        break;
      }

      v13 = *(v20 + 2) == a3 ? *v20 : 0;
      v18 = 0;
      v16 = 1;
    }

    while ((v19 & 1) != 0);
    if (!v13)
    {
      log_OutPublic(*(*a1 + 32), "LINGDB", 20011, "%s%u%s%u%s%u", v9, v10, v11, v12, "childKey");
      return 2300591624;
    }
  }

  v14 = 0;
  *a5 = v13;
  return v14;
}

uint64_t LD_findNextCommonParent(uint64_t a1, int a2, unsigned int a3, _WORD *a4)
{
  if ((safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) != 0)
  {
    v14 = 8200;
    return v14 | 0x89200000;
  }

  if (*(a1 + 48) <= a3 || (v11 = *(*(a1 + 64) + 8 * a3)) == 0)
  {
    log_OutPublic(*(*a1 + 32), "LINGDB", 20020, "%s%u", v7, v8, v9, v10, "record");
    v14 = 15889;
    return v14 | 0x89200000;
  }

  v12 = *(v11 + 16);
  if (v12)
  {
    LOWORD(v12) = *v12;
  }

  result = 0;
  *a4 = v12;
  return result;
}

uint64_t LD_nextInSent(uint64_t a1, int a2, unsigned int a3, _WORD *a4)
{
  v16 = 0;
  if ((safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) != 0)
  {
    return 2300583944;
  }

  NextCommonParent = LD_findNextCommonParent(a1, a2, a3, &v16);
  if ((NextCommonParent & 0x80000000) != 0)
  {
    return NextCommonParent;
  }

  if (v16)
  {
    goto LABEL_4;
  }

  if (*(a1 + 48) <= a3 || (v14 = *(*(a1 + 64) + 8 * a3)) == 0)
  {
    log_OutPublic(*(*a1 + 32), "LINGDB", 20020, "%s%u", v9, v10, v11, v12, "record");
    return 2300591633;
  }

  if ((*(v14 + 2) & 0xFE) == 2)
  {
LABEL_4:
    v13 = 0;
    *a4 = v16;
  }

  else
  {
    v13 = 2300591625;
    log_OutPublic(*(*a1 + 32), "LINGDB", 20012, "%s%s%s%u%s%u", v9, v10, v11, v12, "method");
  }

  return v13;
}

uint64_t LD_findDirect(void *a1, int a2, int a3, int a4, _WORD *a5)
{
  v10 = 2300583944;
  if ((safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) == 0 && (safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) == 0)
  {
    v15 = a1[8] != 0;
    v25 = a1[8] != 0;
    if (a3 != 1)
    {
      if (a3 != 2)
      {
        v10 = 2300591625;
        log_OutPublic(*(*a1 + 32), "LINGDB", 20013, "%s%u", v11, v12, v13, v14, "recordType");
        return v10;
      }

      Child = LD_findChild(a1, a2, 2, v15, &v25);
      if ((Child & 0x80000000) != 0)
      {
        return Child;
      }

      LOWORD(v15) = v25;
      if (!v25)
      {
        log_OutPublic(*(*a1 + 32), "LINGDB", 20013, "%s%u", v17, v18, v19, v20, "recordType");
        return 2300591626;
      }

      v24 = v25;
      v21 = a4 - 1;
      if (v21)
      {
        v22 = 1;
        while (1)
        {
          Child = LD_findNextCommonParent(a1, a2, v15, &v24);
          if ((Child & 0x80000000) != 0)
          {
            return Child;
          }

          LOWORD(v15) = v24;
          if (v22 < v21)
          {
            ++v22;
            if (v24)
            {
              continue;
            }
          }

          break;
        }
      }
    }

    v10 = 0;
    *a5 = v15;
  }

  return v10;
}

uint64_t LD_writeField(uint64_t a1, int a2, unsigned int a3, unsigned int a4, unsigned int a5, const char **a6, _WORD *a7)
{
  v13 = 2300583946;
  if ((safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) != 0)
  {
    return 2300583944;
  }

  if (*(a1 + 48) > a3 && (v18 = *(*(a1 + 64) + 8 * a3)) != 0)
  {
    if (*(v18 + 2) && (v19 = &LD_FIELDOFFSETSD + 904 * *(v18 + 2), *(v19 + 4) > a4))
    {
      v20 = &v19[40 * a4];
      v21 = *v19;
      v22 = *(v20 + 3);
      v37 = *(v20 + 4);
      v23 = &v22[-*v19];
      *(v18 + *(v19 + 2) - *v19 + a4) = 1;
      v24 = *(v20 + 20);
      v25 = *(v20 + 21);
      if (v24)
      {
        if (v24 < a5)
        {
          a5 = v24;
        }

        memcpy(&v23[v18], a6, v25 * a5);
      }

      else
      {
        v27 = v25 * a5;
        v28 = LD_HeapAlloc(a1 + 8, v25 * a5);
        *&v23[v18] = v28;
        if (!v28)
        {
          return v13;
        }

        memcpy(v28, a6, v27);
        if (v22 == &unk_1C37BE348 && a5 != 0)
        {
          v36 = v21;
          v30 = a5;
          v31 = a6 + 3;
          v32 = 24;
          do
          {
            if (marker_hasNonConstCharPtrArg(*(v31 - 6)))
            {
              if (*v31)
              {
                v33 = strlen(*v31);
              }

              else
              {
                v33 = 0;
              }

              v34 = LD_HeapAlloc(a1 + 8, v33 + 1);
              if (!v34)
              {
                return v13;
              }

              if (v33)
              {
                v34 = strcpy(v34, *v31);
              }

              else
              {
                *v34 = 0;
              }

              *(*&v23[v18] + v32) = v34;
            }

            v31 += 4;
            v32 += 32;
            --v30;
          }

          while (v30);
          v21 = v36;
        }
      }

      if (v37)
      {
        *(v18 + v37 - v21) = a5;
      }

      v13 = 0;
      *a7 = a5;
      *(a1 + 72) = 1;
    }

    else
    {
      v13 = 2300591629;
      v35 = *(v18 + 2);
      log_OutPublic(*(*a1 + 32), "LINGDB", 20016, "%s%s%s%u%s%u%s%u", v14, v15, v16, v17, "method");
    }
  }

  else
  {
    log_OutPublic(*(*a1 + 32), "LINGDB", 20020, "%s%u", v14, v15, v16, v17, "record");
    return 2300591633;
  }

  return v13;
}

uint64_t LD_readField(uint64_t a1, int a2, unsigned int a3, unsigned int a4, unsigned int a5, void *a6, _WORD *a7)
{
  *a7 = 0;
  if ((safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) != 0)
  {
    return 2300583944;
  }

  if (*(a1 + 48) > a3 && (v17 = *(*(a1 + 64) + 8 * a3)) != 0)
  {
    if (*(v17 + 2) && (v18 = &LD_FIELDOFFSETSD + 904 * *(v17 + 2), *(v18 + 4) > a4))
    {
      v19 = *v18;
      if (*(v17 + *(v18 + 2) - *v18 + a4) == 1)
      {
        v20 = &v18[40 * a4];
        v22 = *(v20 + 3);
        v21 = v20 + 24;
        v23 = (v17 + v22 - v19);
        v24 = *(v21 + 1);
        v25 = (v17 + v24 - v19);
        if (!v24)
        {
          v25 = (v21 + 16);
        }

        v26 = *v25;
        if (v26 < a5)
        {
          a5 = v26;
        }

        if (*(v21 + 8) || (v23 = *v23) != 0)
        {
          memcpy(a6, v23, *(v21 + 9) * a5);
          v27 = 0;
          *a7 = a5;
        }

        else
        {
          v27 = 2300591633;
          log_OutPublic(*(*a1 + 32), "LINGDB", 20020, "%s%s%s%u%s%u%s%u", v13, v14, v15, v16, "method");
        }
      }

      else
      {
        v29 = *(v17 + 2);
        log_OutPublic(*(*a1 + 32), "LINGDB", 20017, "%s%u%s%u%s%u", v13, v14, v15, v16, "recordType");
        return 2300591630;
      }
    }

    else
    {
      v30 = *(v17 + 2);
      log_OutPublic(*(*a1 + 32), "LINGDB", 20016, "%s%s%s%u%s%u%s%u", v13, v14, v15, v16, "method");
      return 2300591629;
    }
  }

  else
  {
    v27 = 2300591633;
    log_OutPublic(*(*a1 + 32), "LINGDB", 20020, "%s%u", v13, v14, v15, v16, "record");
  }

  return v27;
}

uint64_t LD_readDirectField(uint64_t a1, int a2, unsigned int a3, unsigned int a4, void *a5, _WORD *a6)
{
  if ((safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) != 0)
  {
    return 2300583944;
  }

  if (*(a1 + 48) > a3 && (v15 = *(*(a1 + 64) + 8 * a3)) != 0)
  {
    if (*(v15 + 2) && (v16 = &LD_FIELDOFFSETSD + 904 * *(v15 + 2), *(v16 + 4) > a4))
    {
      v17 = *v16;
      if (*(v15 + *(v16 + 2) - *v16 + a4) == 1)
      {
        v18 = &v16[40 * a4];
        v19 = *(v18 + 3);
        v18 += 24;
        v20 = (v15 + v19 - v17);
        LODWORD(v19) = *(v18 + 8);
        v21 = v18 + 16;
        v22 = v19;
        v23 = *(v21 - 1);
        v24 = (v15 + v23 - v17);
        if (!v23)
        {
          v24 = v21;
        }

        v25 = *v24;
        if (v22 || (v20 = *v20) != 0)
        {
          v26 = 0;
          *a5 = v20;
          *a6 = v25;
        }

        else
        {
          v26 = 2300591633;
          log_OutPublic(*(*a1 + 32), "LINGDB", 20020, "%s%u%s%u%s%u", v11, v12, v13, v14, "recordType");
        }
      }

      else
      {
        v28 = *(v15 + 2);
        log_OutPublic(*(*a1 + 32), "LINGDB", 20017, "%s%u%s%u%s%u", v11, v12, v13, v14, "recordType");
        return 2300591630;
      }
    }

    else
    {
      v29 = *(v15 + 2);
      log_OutPublic(*(*a1 + 32), "LINGDB", 20016, "%s%s%s%u%s%u%s%u", v11, v12, v13, v14, "method");
      return 2300591629;
    }
  }

  else
  {
    v26 = 2300591633;
    log_OutPublic(*(*a1 + 32), "LINGDB", 20020, "%s%u", v11, v12, v13, v14, "record");
  }

  return v26;
}

uint64_t LD_enquireField(uint64_t a1, int a2, unsigned int a3, unsigned int a4, _WORD *a5)
{
  if ((safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) != 0)
  {
    return 2300583944;
  }

  v13 = 2300591633;
  if (*(a1 + 48) > a3)
  {
    v14 = *(*(a1 + 64) + 8 * a3);
    if (v14)
    {
      if (*(v14 + 2) && (v15 = &LD_FIELDOFFSETSD + 904 * *(v14 + 2), *(v15 + 4) > a4))
      {
        v13 = 0;
        *a5 = *(v14 + *(v15 + 2) - *v15 + a4);
      }

      else
      {
        v17 = *(v14 + 2);
        log_OutPublic(*(*a1 + 32), "LINGDB", 20016, "%s%s%s%u%s%u%s%u", v9, v10, v11, v12, "method");
        return 2300591629;
      }
    }
  }

  return v13;
}

uint64_t LD_enquireChild(uint64_t a1, int a2, int a3, unsigned int a4, _WORD *a5)
{
  if ((safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) != 0)
  {
    return 2300583944;
  }

  if (a3 == 1)
  {
    LOWORD(v13) = 1;
LABEL_4:
    v14 = 0;
    *a5 = v13;
    return v14;
  }

  v14 = 2300591633;
  if (*(a1 + 48) > a4)
  {
    v15 = *(*(a1 + 64) + 8 * a4);
    if (v15)
    {
      if (*(v15 + 2) != LD_ChildParentD[a3])
      {
        v23 = *(v15 + 2);
        log_OutPublic(*(*a1 + 32), "LINGDB", 20010, "%s%s%s%u%s%u%s%u", v9, v10, v11, v12, "method");
        return 2300591623;
      }

      v16 = 0;
      v13 = 0;
      v17 = v15 + 32;
      v18 = 1;
      do
      {
        v19 = *(v17 + 8 * v16);
        if (v19)
        {
          v20 = v13 == 0;
        }

        else
        {
          v20 = 0;
        }

        if (!v20)
        {
          break;
        }

        v21 = v18;
        v13 = *(v19 + 2) == a3 ? *v19 : 0;
        v18 = 0;
        v16 = 1;
      }

      while ((v21 & 1) != 0);
      goto LABEL_4;
    }
  }

  return v14;
}

uint64_t LD_getDBChangedStatus(uint64_t a1, int a2, _DWORD *a3)
{
  if ((safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) == 0)
  {
    *a3 = *(a1 + 72);
  }

  return 0;
}

uint64_t LD_resetDBChangedStatus(uint64_t a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) == 0)
  {
    *(a1 + 72) = 0;
  }

  return 0;
}

uint64_t LD_checkBEConsistency(void *a1, int a2, char a3, char a4, char *a5, char *a6)
{
  v6 = a6;
  v66 = 0;
  v64 = 0;
  __s = 0;
  v63 = 0;
  v61 = 0;
  if (a5 && a6)
  {
    *a5 = 0;
    *a6 = 0;
  }

  if ((safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) != 0)
  {
    return 2300583944;
  }

  v67 = 0;
  v59 = 0;
  v12 = a1[8] != 0;
  v13 = LD_enquireChild(a1, a2, 2, v12, &v67);
  if ((v13 & 0x80000000) == 0)
  {
    v57 = a5;
    v54 = v12;
    v58 = a4;
    v14 = v67;
    if (v67)
    {
      v15 = 0;
      v16 = 0;
      v53 = 0;
      v60 = 0;
      v55 = 0;
      v56 = v6;
      while (1)
      {
        v17 = LD_readField(a1, a2, v14, 0, 1u, &v59, &v62);
        if ((v17 & 0x80000000) != 0)
        {
          return v17;
        }

        if ((v59 - 9) >= 6)
        {
          if (v59 == 15)
          {
            if ((a3 & 0x10) != 0)
            {
              v17 = LD_checkPHR_TNTAG(a1, a2, v58, v16, v14, v57, v6);
              if ((v17 & 0x80000000) != 0)
              {
                return v17;
              }
            }

            v55 = 0;
            v66 = v14;
            v15 = v14;
            v41 = v14;
            v53 = v16;
            goto LABEL_106;
          }

          if (v59 != 4)
          {
            goto LABEL_75;
          }
        }

        v62 = 0;
        v17 = LD_enquireField(a1, a2, v14, 3u, &v60);
        if ((v17 & 0x80000000) != 0)
        {
          return v17;
        }

        if (!v60)
        {
          goto LABEL_14;
        }

        v17 = LD_readDirectField(a1, a2, v14, 3u, &__s, &v62);
        if ((v17 & 0x80000000) != 0)
        {
          return v17;
        }

        if (!v62)
        {
LABEL_14:
          __s = &v63;
        }

        v17 = LD_enquireField(a1, a2, v14, 0xDu, &v61);
        if ((v17 & 0x80000000) != 0)
        {
          return v17;
        }

        v18 = v61;
        if (v61)
        {
          v17 = LD_readDirectField(a1, a2, v14, 0xDu, &v64, &v62);
          if ((v17 & 0x80000000) != 0)
          {
            return v17;
          }

          if (!v62)
          {
            v18 = 0;
            v61 = 0;
          }
        }

        if ((a3 & 7) != 0)
        {
          v19 = __s;
          strcpy(&v71 + 4, "1");
          __s2 = 0;
          if (v18)
          {
            v20 = 0;
          }

          else
          {
            LD_setErrorDescription(v57, v56, 0, v14, "missing PRM");
            v20 = 1;
          }

          v22 = (a3 & 2) == 0 || v18 != 0;
          if ((a3 & 4) == 0 && v22 || !*v19 || strchr(v19, 39) || strchr(v19, 34) || strstr(v19, "'2"))
          {
            v6 = v56;
          }

          else
          {
            strcpy(&v71 + 4, "0");
            v6 = v56;
            if ((a3 & 4) != 0 && v18)
            {
              v17 = LD_readDirectField(a1, a2, v14, 0xDu, &__s2, &v72);
              if ((v17 & 0x80000000) != 0)
              {
                return v17;
              }

              if (strcmp(&v71 + 4, __s2))
              {
                LD_setErrorDescription(v57, v56, 0, v14, "PRM != 0 without stress marker");
                v20 = 1;
              }
            }
          }

          if ((v58 & 1) != 0 && v20)
          {
            v23 = strlen(&v71 + 4);
            v17 = LD_writeField(a1, a2, v14, 0xDu, (v23 + 1), (&v71 + 4), &v71 + 3);
            if ((v17 & 0x80000000) != 0)
            {
              return v17;
            }

            v18 = 1;
            v61 = 1;
          }
        }

        if ((a3 & 8) != 0)
        {
          WORD2(v71) = 0;
          if ((safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) != 0)
          {
            return 2300583944;
          }

          __s2 = 0;
          v17 = LD_readDirectField(a1, a2, v14, 5u, &__s2, &v72);
          if ((v17 & 0x80000000) != 0)
          {
            return v17;
          }

          if ((LD_enquireField(a1, a2, v14, 0xEu, &v71 + 2) & 0x80000000) == 0 && !WORD2(v71))
          {
            LD_setErrorDescription(v57, v6, 0, v14, "missing NLU field");
            if (v58)
            {
              v35 = __s2;
              v36 = strlen(__s2);
              v37 = heap_Alloc(*(*a1 + 8), (v36 + 5));
              if (!v37)
              {
                goto LABEL_142;
              }

              v38 = v37;
              strcpy(v37, "POS:");
              v39 = strcat(v37, v35);
              v40 = strlen(v39);
              v13 = LD_writeField(a1, a2, v14, 0xEu, (v40 + 1), v38, &v71 + 3);
              heap_Free(*(*a1 + 8), v38);
              v6 = v56;
              if ((v13 & 0x80000000) != 0)
              {
                return v13;
              }
            }
          }
        }

        if ((a3 & 0x60) != 0)
        {
          v24 = __s;
          if ((safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) != 0)
          {
            return 2300583944;
          }

          if (v18)
          {
            __s2 = 0;
            v17 = LD_readDirectField(a1, a2, v14, 0xDu, &__s2, &v72);
            if ((v17 & 0x80000000) != 0)
            {
              return v17;
            }

            v25 = atoi(__s2);
            if ((a3 & 0x20) == 0 || v25)
            {
              if ((a3 & 0x40) == 0 || !v25 || !*v24 || strchr(v24, 39) || strchr(v24, 34) || strchr(v24, 42) || strchr(v24, 91))
              {
                goto LABEL_74;
              }

              if (strchr(v24, 45))
              {
                if (v57)
                {
                  *v57 = v14;
                }

                if (v6)
                {
                  *(v6 + 24) = 0;
                  *(v6 + 21) = unk_1C37BE5C6;
                  *(v6 + 11) = unk_1C37BE5C8;
                  *(v6 + 3) = unk_1C37BE5CC;
                  *(v6 + 4) = xmmword_1C37BE5DC;
                  *(v6 + 5) = unk_1C37BE5EC;
                  strcpy(v6, "missing marker of primary stress (unsafe)");
                }

                if ((v58 & 2) == 0)
                {
                  goto LABEL_74;
                }
              }

              else
              {
                LD_setErrorDescription(v57, v6, 0, v14, "missing marker of primary stress (safe)");
                if ((v58 & 1) == 0)
                {
                  goto LABEL_74;
                }
              }

              v43 = *v24;
              if (v43 == 39)
              {
                v44 = 2 * (v24[1] == 50);
                v43 = v24[v44];
              }

              else
              {
                v44 = 0;
              }

              v45 = &v24[v44];
              if (v43 == 96)
              {
                v46 = v45 + 1;
              }

              else
              {
                v46 = v45;
              }

              v47 = strlen(v46);
              v48 = heap_Alloc(*(*a1 + 8), (v47 + 2));
              if (!v48)
              {
LABEL_142:
                log_OutPublic(*(*a1 + 32), "LINGDB", 20000, 0, v28, v29, v30, v31, v52);
                return 2300583946;
              }

              v32 = v48;
              *v48 = 39;
              strcat(v48, v46);
            }

            else
            {
              if (!strchr(v24, 39) && !strchr(v24, 34) && !strstr(v24, "'2"))
              {
                goto LABEL_74;
              }

              LD_setErrorDescription(v57, v6, 0, v14, "spurious stress marker in unaccented word");
              if ((v58 & 1) == 0)
              {
                goto LABEL_74;
              }

              v26 = strlen(v24);
              v27 = heap_Alloc(*(*a1 + 8), (v26 + 1));
              if (!v27)
              {
                goto LABEL_142;
              }

              v32 = v27;
              v33 = strcpy(v27, v24);
              mosynt_RemoveAllSubstrOcc(v33, "'2");
              mosynt_RemoveAllSubstrOcc(v32, "'");
              mosynt_RemoveAllSubstrOcc(v32, "");
            }

            v34 = strlen(v32);
            v13 = LD_writeField(a1, a2, v14, 3u, (v34 + 1), v32, &v71 + 3);
            heap_Free(*(*a1 + 8), v32);
            v6 = v56;
            if ((v13 & 0x80000000) != 0)
            {
              return v13;
            }
          }
        }

LABEL_74:
        if ((a3 & 0x10) != 0)
        {
          WORD1(v71) = 0;
          if (!v15)
          {
            LD_setErrorDescription(v57, v6, 0, v14, "missing initial phrase record");
            if (v58)
            {
              LODWORD(__s2) = 15;
              LOWORD(v71) = 0;
              v70 = 200;
              v69 = 0;
              v17 = LD_createPrev(a1, a2, v14, &v66);
              if ((v17 & 0x80000000) != 0)
              {
                return v17;
              }

              WORD2(v71) = 0;
              v17 = LD_enquireField(a1, a2, v14, 1u, &v71 + 1);
              if ((v17 & 0x80000000) != 0)
              {
                return v17;
              }

              if (WORD1(v71))
              {
                v17 = LD_readField(a1, a2, v14, 1u, 1u, &v71 + 4, &v72);
                if ((v17 & 0x80000000) != 0)
                {
                  return v17;
                }

                v15 = v66;
                v17 = LD_writeField(a1, a2, v66, 1u, 1u, (&v71 + 4), &v71 + 3);
                if ((v17 & 0x80000000) != 0)
                {
                  return v17;
                }

                v17 = LD_writeField(a1, a2, v15, 2u, 1u, (&v71 + 4), &v71 + 3);
                if ((v17 & 0x80000000) != 0)
                {
                  return v17;
                }
              }

              else
              {
                v15 = v66;
              }

              v17 = LD_writeField(a1, a2, v15, 0, 1u, &__s2, &v71 + 3);
              if ((v17 & 0x80000000) != 0)
              {
                return v17;
              }

              v42 = strlen(&v69);
              v17 = LD_writeField(a1, a2, v15, 4u, (v42 + 1), &v69, &v71 + 3);
              if ((v17 & 0x80000000) != 0)
              {
                return v17;
              }

              v17 = LD_writeField(a1, a2, v15, 7u, 1u, &v71, &v71 + 3);
              if ((v17 & 0x80000000) != 0)
              {
                return v17;
              }

              v17 = LD_writeField(a1, a2, v15, 8u, 1u, &v70, &v71 + 3);
              if ((v17 & 0x80000000) != 0)
              {
                return v17;
              }
            }
          }

          if (!v55)
          {
            WORD1(v71) = 0;
            if (v15)
            {
              HIDWORD(v71) = 0;
              v13 = LD_enquireField(a1, a2, v15, 1u, &v71 + 1);
              if ((v13 & 0x80000000) != 0)
              {
                goto LABEL_104;
              }

              if (!WORD1(v71))
              {
                goto LABEL_104;
              }

              v13 = LD_enquireField(a1, a2, v14, 1u, &v71 + 1);
              if ((v13 & 0x80000000) != 0 || !WORD1(v71))
              {
                goto LABEL_104;
              }

              v17 = LD_readField(a1, a2, v15, 1u, 1u, &v71 + 4, &__s2);
              if ((v17 & 0x80000000) != 0)
              {
                return v17;
              }

              v17 = LD_readField(a1, a2, v14, 1u, 1u, &v71 + 6, &__s2);
              if ((v17 & 0x80000000) != 0)
              {
                return v17;
              }

              if (HIWORD(v71) != WORD2(v71))
              {
                LD_setErrorDescription(v57, v6, 0, v15, "inconsistent phrase FROMPOS");
                if (v58)
                {
                  v13 = LD_writeField(a1, a2, v15, 1u, 1u, (&v71 + 6), &v72);
LABEL_104:
                  if ((v13 & 0x80000000) != 0)
                  {
                    return v13;
                  }
                }
              }
            }
          }

          v55 = 1;
          v41 = v15;
          goto LABEL_106;
        }

LABEL_75:
        v41 = v16;
LABEL_106:
        v17 = LD_nextInSent(a1, a2, v14, &v67);
        if ((v17 & 0x80000000) != 0)
        {
          return v17;
        }

        v14 = v67;
        v16 = v41;
        if (!v67)
        {
          if ((a3 & 0x10) == 0)
          {
            v13 = 0;
            goto LABEL_138;
          }

          if (v55)
          {
            v49 = v15;
            v50 = v57;
            v17 = LD_checkPHR_TNTAG(a1, a2, v58, v49, 0, v57, v6);
          }

          else
          {
            v50 = v57;
            v17 = LD_checkPHR_final(a1, a2, v58, v53, &v66, v57, v6);
          }

          if ((v17 & 0x80000000) == 0)
          {
            v13 = LD_checkPHR_TOPOS(a1, a2, v58, v54, v50, v6);
            if ((v13 & 0x80000000) != 0)
            {
              return v13;
            }

LABEL_138:
            if ((a3 & 0x80) == 0)
            {
              return v13;
            }

            return LD_checkRECPROMPT(a1, a2, v58, v54, v57, v6);
          }

          return v17;
        }
      }
    }
  }

  return v13;
}

uint64_t LD_checkPHR_TNTAG(uint64_t a1, int a2, char a3, unsigned int a4, unsigned int a5, char *a6, char *a7)
{
  v25 = 0;
  v26 = 0;
  if (!a4)
  {
    return 0;
  }

  HIWORD(__s) = 0;
  result = LD_enquireField(a1, a2, a4, 4u, &__s + 3);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  if (!HIWORD(__s))
  {
    goto LABEL_10;
  }

  WORD2(__s) = 0;
  result = LD_readDirectField(a1, a2, a4, 4u, &v26, &__s + 2);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  if (!WORD2(__s) || (v15 = v26) == 0)
  {
LABEL_10:
    LD_setErrorDescription(a6, a7, 0, a4, "undefined phrase type");
    if ((a3 & 1) == 0)
    {
      return 0;
    }

    if (a5)
    {
      v17 = 80;
    }

    else
    {
      v17 = 84;
    }

    LOWORD(__s) = v17;
    v18 = (strlen(&__s) + 1);
    p_s = &__s;
    v20 = a1;
    v21 = a2;
    v22 = a4;
    return LD_writeField(v20, v21, v22, 4u, v18, p_s, &__s + 1);
  }

  v16 = *v26;
  if (v16 == 89)
  {
    result = 0;
    if (!a5 || v26[1])
    {
      return result;
    }
  }

  else
  {
    if (v16 != 84)
    {
      if (*v26)
      {
        return 0;
      }

      goto LABEL_10;
    }

    result = 0;
    if (v26[1] || !a5)
    {
      return result;
    }
  }

  LD_setErrorDescription(a6, a7, 0, a4, "non-final phrase of final type");
  if ((a3 & 1) == 0)
  {
    return 0;
  }

  strcpy(&__s, "P");
  v23 = strlen(&__s);
  result = LD_writeField(a1, a2, a4, 4u, (v23 + 1), &__s, &__s + 1);
  if ((result & 0x80000000) == 0)
  {
    result = LD_enquireField(a1, a2, a5, 4u, &__s + 3);
    if ((result & 0x80000000) == 0)
    {
      if (HIWORD(__s))
      {
        result = LD_readDirectField(a1, a2, a5, 4u, &v25, &__s + 2);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        if (WORD2(__s))
        {
          if (v25)
          {
            v24 = *v25;
            if ((v24 == 89 || v24 == 84) && !v25[1])
            {
              return 0;
            }
          }
        }
      }

      v18 = (strlen(v15) + 1);
      v20 = a1;
      v21 = a2;
      v22 = a5;
      p_s = v15;
      return LD_writeField(v20, v21, v22, 4u, v18, p_s, &__s + 1);
    }
  }

  return result;
}

uint64_t LD_checkPHR_final(uint64_t a1, int a2, char a3, unsigned int a4, __int16 *a5, char *a6, char *__dst)
{
  if (!*a5)
  {
    return 0;
  }

  LD_setErrorDescription(a6, __dst, 0, *a5, "dangling final phrase record");
  if ((a3 & 1) == 0)
  {
    return 0;
  }

  if (!a4 || (__s = 0, result = LD_readDirectField(a1, a2, *a5, 4u, &__s, &v16), (result & 0x80000000) == 0) && (v13 = strlen(__s), result = LD_writeField(a1, a2, a4, 4u, (v13 + 1), __s, &v15), (result & 0x80000000) == 0))
  {
    result = LD_deleteRec(a1, a2, *a5);
    if ((result & 0x80000000) == 0)
    {
      result = 0;
      *a5 = a4;
    }
  }

  return result;
}

uint64_t LD_checkPHR_TOPOS(uint64_t a1, int a2, char a3, unsigned int a4, char *a5, char *a6)
{
  v19 = 0;
  v18 = 0;
  v16 = 0;
  LODWORD(v17) = 0;
  result = LD_enquireChild(a1, a2, 2, a4, &v19);
  if ((result & 0x80000000) == 0)
  {
    v12 = 0;
    v13 = 0;
    while (1)
    {
      v14 = v19;
      if (!v19)
      {
        break;
      }

      result = LD_readField(a1, a2, v19, 0, 1u, &v18, &v17 + 3);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      if ((v18 - 9) < 6 || v18 == 4)
      {
        v12 = v14;
      }

      else if (v18 == 15)
      {
        if (!v13)
        {
          goto LABEL_23;
        }

        result = LD_enquireField(a1, a2, v13, 2u, &v16);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        if (!v16)
        {
          goto LABEL_23;
        }

        result = LD_readField(a1, a2, v13, 2u, 1u, &v17, &v17 + 3);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = LD_enquireField(a1, a2, v14, 1u, &v16);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        if (!v16)
        {
          goto LABEL_23;
        }

        result = LD_readField(a1, a2, v14, 1u, 1u, &v17 + 2, &v17 + 3);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        if (v17 != WORD1(v17) && (LD_setErrorDescription(a5, a6, 0, v13, "inconsistent phrase TOPOS"), (a3 & 1) != 0))
        {
          result = LD_writeField(a1, a2, v13, 2u, 1u, (&v17 + 2), &v17 + 2);
          v13 = v14;
          if ((result & 0x80000000) != 0)
          {
            return result;
          }
        }

        else
        {
LABEL_23:
          v13 = v14;
        }
      }

      result = LD_nextInSent(a1, a2, v14, &v19);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }
    }

    result = 0;
    if (v13)
    {
      if (v12)
      {
        result = LD_enquireField(a1, a2, v12, 2u, &v16);
        if ((result & 0x80000000) == 0)
        {
          if (v16)
          {
            result = LD_readField(a1, a2, v12, 2u, 1u, &v17, &v17 + 3);
            if ((result & 0x80000000) == 0)
            {
              result = LD_enquireField(a1, a2, v13, 2u, &v16);
              if ((result & 0x80000000) == 0)
              {
                if (v16)
                {
                  result = LD_readField(a1, a2, v13, 2u, 1u, &v16 + 2, &v17 + 3);
                  if ((result & 0x80000000) == 0)
                  {
                    if (v17 != HIWORD(v16) && (LD_setErrorDescription(a5, a6, 0, v13, "inconsistent TOPOS of final phrase record"), (a3 & 1) != 0))
                    {
                      return LD_writeField(a1, a2, v13, 2u, 1u, &v17, &v17 + 2);
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
      }
    }
  }

  return result;
}

uint64_t LD_checkRECPROMPT(uint64_t a1, int a2, char a3, unsigned int a4, char *a5, char *a6)
{
  v21 = 0;
  *(&v20 + 2) = 11;
  LOWORD(v20) = 0;
  result = LD_findChild(a1, a2, 2, a4, &v21);
  if ((result & 0x80000000) == 0)
  {
    v12 = 0;
    v13 = 4;
    while (1)
    {
      v14 = v21;
      if (!v21)
      {
        return 0;
      }

      result = LD_readField(a1, a2, v21, 0, 1u, &v20 + 2, &v23);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      if ((*(&v20 + 2) - 9) < 6 || *(&v20 + 2) == 4)
      {
        break;
      }

LABEL_33:
      result = LD_nextInSent(a1, a2, v14, &v21);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }
    }

    if (v12)
    {
      if ((v13 & 0xFFFFFFFD) == 0xC)
      {
        if ((*(&v20 + 2) | 2) != 0xE)
        {
LABEL_15:
          result = LD_readField(a1, a2, v12, 8u, 1u, &v20, &v23);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          if (!v20)
          {
            LD_setErrorDescription(a5, a6, 0, v12, "End of recorded prompt should coincide with phrase boundary: inserted short break");
            LOWORD(v20) = 1;
            if (a3)
            {
              *(&v19 + 2) = 15;
              LOWORD(v19) = 0;
              HIBYTE(v18) = 0;
              *(&v18 + 2) = 0;
              LOWORD(v18) = 0;
              result = LD_writeField(a1, a2, v12, 8u, 1u, &v20, &v22);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              result = LD_writeField(a1, a2, v12, 0x12u, 9u, "external", &v22);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              result = LD_createPrev(a1, a2, v14, &v18 + 2);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              result = LD_enquireField(a1, a2, v14, 1u, &v18 + 1);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              if (WORD1(v18))
              {
                result = LD_readField(a1, a2, v14, 1u, 1u, &v18, &v23);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                v16 = WORD2(v18);
                result = LD_writeField(a1, a2, WORD2(v18), 1u, 1u, &v18, &v22);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                result = LD_writeField(a1, a2, v16, 2u, 1u, &v18, &v22);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }
              }

              else
              {
                v16 = WORD2(v18);
              }

              result = LD_writeField(a1, a2, v16, 0, 1u, (&v19 + 2), &v22);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              v17 = strlen(&v18 + 7);
              result = LD_writeField(a1, a2, v16, 4u, (v17 + 1), (&v18 + 7), &v22);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              result = LD_writeField(a1, a2, v16, 7u, 1u, &v19, &v22);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              result = LD_writeField(a1, a2, v16, 8u, 1u, &v20, &v22);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }
            }
          }
        }
      }

      else if (*(&v20 + 2) == 14)
      {
        goto LABEL_15;
      }
    }

    v13 = *(&v20 + 2);
    v12 = v14;
    goto LABEL_33;
  }

  return result;
}

uint64_t LD_traverseWordRecsFromTokenRec(uint64_t a1, uint64_t a2, unsigned __int16 *a3, uint64_t (*a4)(uint64_t, uint64_t, unsigned __int16 *, uint64_t), uint64_t a5)
{
  while (1)
  {
    if (!*a3)
    {
      return 0;
    }

    result = a4(a1, a2, a3, a5);
    if ((result & 0x1FFF) == 0x1E1C)
    {
      break;
    }

    if ((result & 0x80000000) == 0)
    {
      result = LD_nextInSent(a1, a2, *a3, a3);
      if ((result & 0x80000000) == 0)
      {
        continue;
      }
    }

    return result;
  }

  v11 = *a3;

  return LD_nextInSent(a1, a2, v11, a3);
}

uint64_t LD_traverseWordRecs(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t (*a4)(uint64_t, uint64_t, unsigned __int16 *, uint64_t), uint64_t (*a5)(uint64_t, uint64_t, unsigned __int16 *, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, unsigned __int16 *, uint64_t), uint64_t (*a7)(uint64_t, uint64_t, unsigned __int16 *, uint64_t), uint64_t a8)
{
  v16 = 0;
  result = LD_findChild(a1, a2, 2, a3, &v16);
  if ((result & 0x80000000) == 0)
  {
    if (!a4)
    {
      goto LABEL_5;
    }

    result = a4(a1, a2, &v16, a8);
    if ((result & 0x80000000) == 0)
    {
      while (v16)
      {
        result = a5(a1, a2, &v16, a8);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = LD_nextInSent(a1, a2, v16, &v16);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        if (a6)
        {
          result = a6(a1, a2, &v16, a8);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }
        }

        else
        {
LABEL_5:
          result = 0;
        }
      }

      if (a7)
      {
        return a7(a1, a2, &v16, a8);
      }
    }
  }

  return result;
}

uint64_t lingdb_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2300583937;
  }

  result = 0;
  *a2 = &iLingDB;
  return result;
}

char *LD_setErrorDescription(char *result, char *__dst, int a3, __int16 a4, char *__src)
{
  if (result && (a3 || !*result))
  {
    *result = a4;
    if (!__dst)
    {
      return result;
    }
  }

  else if (!__dst)
  {
    return result;
  }

  if (a3 || !*__dst)
  {
    return strncpy(__dst, __src, 0x64uLL);
  }

  return result;
}

uint64_t LD_createPrev(uint64_t a1, int a2, unsigned int a3, _WORD *a4)
{
  v20 = 0;
  if ((safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) != 0)
  {
    return 2300583944;
  }

  if (*(a1 + 48) <= a3 || (v12 = *(*(a1 + 64) + 8 * a3)) == 0)
  {
    log_OutPublic(*(*a1 + 32), "LINGDB", 20020, "%s%u", v8, v9, v10, v11, "record");
    return 2300591633;
  }

  v13 = *(v12 + 2);
  if (v13 == 1)
  {
    v14 = 2300591621;
    log_OutPublic(*(*a1 + 32), "LINGDB", 20008, 0, v8, v9, v10, v11, v19);
    return v14;
  }

  v16 = *(v12 + 24);
  if (v16)
  {
    v17 = LD_createNext(a1, a2, *v16, &v20);
    if ((v17 & 0x80000000) != 0)
    {
      return v17;
    }

    v14 = 0;
    goto LABEL_14;
  }

  v18 = *(v12 + 8);
  if (!v18)
  {
    log_OutPublic(*(*a1 + 32), "LINGDB", 20009, "%s%s%s%u%s%u", v8, v9, v10, v11, "method");
    return 2300591622;
  }

  v14 = LD_createChild(a1, a2, v13, *v18, &v20);
  if ((v14 & 0x80000000) == 0)
  {
LABEL_14:
    *a4 = v20;
    *(a1 + 72) = 1;
  }

  return v14;
}

uint64_t LD_deleteRec(uint64_t a1, int a2, uint64_t a3)
{
  if ((safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) != 0)
  {
    return 2300583944;
  }

  *(a1 + 72) = 1;

  return LD_deleteRecordRecursive(a1, a3, a3, v5, v6, v7, v8, v9);
}

uint64_t LD_deleteRecordRecursive(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 48) > a2 && (v10 = *(*(a1 + 64) + 8 * a2)) != 0)
  {
    v12 = 0;
    v13 = 1;
    do
    {
      v14 = *(v10 + 32 + 8 * v12);
      if (!v14)
      {
        break;
      }

      v15 = v13;
      v16 = LD_deleteRecordRecursive(a1, *v14, a3);
      if (v16)
      {
        return v16;
      }

      v13 = 0;
      v12 = 1;
    }

    while ((v15 & 1) != 0);
    if (a2 == a3)
    {
      v17 = *(v10 + 24);
      if (v17)
      {
        v18 = *(v10 + 16);
        if (v18)
        {
          *(v18 + 24) = v17;
          *(*(v10 + 24) + 16) = v18;
        }

        else
        {
          *(v17 + 16) = 0;
        }
      }

      else
      {
        v22 = 0;
        v23 = *(v10 + 8) + 32;
        v24 = 1;
        do
        {
          v25 = *(v23 + 8 * v22);
          if (!v25)
          {
            goto LABEL_20;
          }

          v26 = v22;
          v27 = v24;
          v24 = 0;
          v22 = 1;
        }

        while ((v27 & (v25 != v10)) != 0);
        if (v25 != v10)
        {
LABEL_20:
          v19 = 2300591631;
          v31 = *(v10 + 2);
          log_OutPublic(*(*a1 + 32), "LINGDB", 20018, "%s%u%s%u", a5, a6, a7, a8, "recordType");
          return v19;
        }

        v28 = *(v10 + 16);
        if (v28)
        {
          *(v23 + 8 * v26) = v28;
          *(*(v10 + 16) + 24) = 0;
        }

        else
        {
          *(v23 + 8 * v26) = 0;
          if (v27)
          {
            v29 = *(v10 + 8);
            v30 = *(v29 + 40);
            if (v30)
            {
              *(v29 + 32) = v30;
              *(*(v10 + 8) + 40) = 0;
            }
          }
        }
      }
    }

    else
    {
      v21 = *(v10 + 16);
      if (v21)
      {
        v16 = LD_deleteRecordRecursive(a1, *v21, a3);
        if (v16)
        {
          return v16;
        }
      }
    }

    v19 = 0;
    *(*(a1 + 64) + 8 * a2) = 0;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), "LINGDB", 20020, "%s%u", a5, a6, a7, a8, "record");
    return 2300591633;
  }

  return v19;
}

uint64_t LD_objOpen(uint64_t a1, uint64_t a2, _WORD *a3, int a4, uint64_t a5)
{
  v31 = 0;
  v30 = 0;
  *a5 = 0;
  *(a5 + 8) = 0;
  inited = InitRsrcFunction(a3, a4, &v30);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  log_OutText(*(v30 + 32), "LINGDB", 4, 0, "LINGDB ObjOpen: Begin", v7, v8, v9, v25);
  v10 = heap_Calloc(*(v30 + 8), 1, 80);
  v15 = v30;
  if (v10)
  {
    v16 = v10;
    *v10 = v30;
    *(v10 + 48) = 1;
    if ((paramc_ParamGetUInt(*(v15 + 40), "lingdbrecordinitialsize", (v10 + 52)) & 0x80000000) != 0)
    {
      v16[13] = 128;
    }

    if ((paramc_ParamGetUInt(*(v30 + 40), "lingdbrecordgrowbysize", v16 + 14) & 0x80000000) != 0)
    {
      v16[14] = 128;
    }

    if ((paramc_ParamGetUInt(*(v30 + 40), "lingdbmaxrecords", v16 + 15) & 0x80000000) != 0)
    {
      v16[15] = -1;
    }

    if ((paramc_ParamGetUInt(*(v30 + 40), "lingdbrecpoolinitialsize", &v31 + 1) & 0x80000000) != 0)
    {
      HIDWORD(v31) = 10240;
    }

    if ((paramc_ParamGetUInt(*(v30 + 40), "lingdbrecpoolgrowsize", &v31) & 0x80000000) != 0)
    {
      LODWORD(v31) = 4096;
    }

    v29 = v16[12];
    v28 = v16[15];
    v27 = v16[14];
    log_OutText(*(*v16 + 32), "LINGDB", 5, 0, "endMallocdID=%u, growBySize=%u, maxRecords=%u, recPoolInitial=%u, recPoolGrow=%u, currentSentID=%u", v17, v18, v19, v16[13]);
    LD_HeapInit((v16 + 2), v30, "records/fields", SHIDWORD(v31), v31);
    *a5 = v16;
    *(a5 + 8) = 45762;
    v20 = LD_reset(v16, *(a5 + 8));
    if ((v20 & 0x80000000) != 0)
    {
      LD_objClose(*a5, *(a5 + 8));
      *a5 = 0;
      *(a5 + 8) = 0;
    }

    log_OutText(*(v30 + 32), "LINGDB", 4, 0, "LINGDB ObjOpen: End (%x)", v21, v22, v23, v20);
  }

  else
  {
    log_OutPublic(*(v30 + 32), "LINGDB", 20000, 0, v11, v12, v13, v14, v26);
    return 2300583946;
  }

  return v20;
}

uint64_t LD_objClose(void *a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) != 0)
  {
    return 2300583944;
  }

  v7 = *a1;
  log_OutText(*(*a1 + 32), "LINGDB", 4, 0, "LINGDB ObjClose : Begin", v4, v5, v6, v20);
  LD_HeapFreePool(a1 + 1, v8, v9, v10, v11, v12, v13, v14);
  LD_clear(a1, a2);
  v15 = a1[8];
  if (v15)
  {
    heap_Free(*(*a1 + 8), v15);
  }

  heap_Free(*(*a1 + 8), a1);
  log_OutText(*(v7 + 32), "LINGDB", 4, 0, "LINGDB ObjClose : End (%x)", v16, v17, v18, 0);
  return 0;
}

uint64_t LD_objReopen(uint64_t a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) != 0)
  {
    return 2300583944;
  }

  v6 = *a1;
  log_OutText(*(*a1 + 32), "LINGDB", 4, 0, "LINGDB ObjReopen : Begin", v3, v4, v5, v11);
  log_OutText(*(v6 + 32), "LINGDB", 4, 0, "LINGDB ObjReopen : End (%x)", v7, v8, v9, 0);
  return 0;
}

uint64_t LD_reset(uint64_t *a1, int a2)
{
  v3 = 2300583944;
  v25 = 0;
  if ((safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) == 0)
  {
    log_OutText(*(*a1 + 32), "LINGDB", 4, 0, "LINGDB LD_reset : Begin", v4, v5, v6, v23);
    v14 = *(a1 + 12);
    if (v14 == 1)
    {
      if (!a1[8])
      {
        v15 = heap_Calloc(*(*a1 + 8), *(a1 + 13), 8);
        a1[8] = v15;
        if (!v15)
        {
          log_OutPublic(*(*a1 + 32), "LINGDB", 20000, 0, v10, v11, v12, v13, v24);
          return 2300583946;
        }
      }

      LD_HeapResetPool((a1 + 1), v7, v8, v9, v10, v11, v12, v13);
      v21 = LD_createRec(a1, 1u, &v25, v16, v17, v18, v19, v20);
      if ((v21 & 0x80000000) != 0)
      {
        return v21;
      }
    }

    else if (v14 != 2)
    {
      log_OutPublic(*(*a1 + 32), "LINGDB", 20003, 0, v10, v11, v12, v13, v24);
      return 2300591616;
    }

    a1[9] = 0;
    log_OutText(*(*a1 + 32), "LINGDB", 4, 0, "LINGDB LD_reset : End (%x)", v11, v12, v13, 0);
    return 0;
  }

  return v3;
}

uint64_t LD_clear(uint64_t a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) != 0)
  {
    return 2300583944;
  }

  log_OutText(*(*a1 + 32), "LINGDB", 4, 0, "LINGDB LD_clear : Begin", v3, v4, v5, v14);
  *(a1 + 72) = 0;
  if (*(a1 + 64))
  {
    LD_HeapResetPool(a1 + 8, v6, v7, v8, v9, v10, v11, v12);
    *(a1 + 48) = 1;
  }

  log_OutText(*(*a1 + 32), "LINGDB", 4, 0, "LINGDB LD_clear : End (%x)", v10, v11, v12, 0);
  return 0;
}

uint64_t LD_findParent(uint64_t a1, int a2, unsigned int a3, _WORD *a4)
{
  if ((safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) != 0)
  {
    v14 = 8200;
    return v14 | 0x89200000;
  }

  if (*(a1 + 48) <= a3 || (v11 = *(*(a1 + 64) + 8 * a3)) == 0)
  {
    log_OutPublic(*(*a1 + 32), "LINGDB", 20020, "%s%u", v7, v8, v9, v10, "record");
    v14 = 15889;
    return v14 | 0x89200000;
  }

  v12 = *(v11 + 8);
  if (v12)
  {
    LOWORD(v12) = *v12;
  }

  result = 0;
  *a4 = v12;
  return result;
}

uint64_t LD_findPrevCommonParent(uint64_t a1, int a2, unsigned int a3, _WORD *a4)
{
  if ((safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) != 0)
  {
    v14 = 8200;
    return v14 | 0x89200000;
  }

  if (*(a1 + 48) <= a3 || (v11 = *(*(a1 + 64) + 8 * a3)) == 0)
  {
    log_OutPublic(*(*a1 + 32), "LINGDB", 20020, "%s%u", v7, v8, v9, v10, "record");
    v14 = 15889;
    return v14 | 0x89200000;
  }

  v12 = *(v11 + 24);
  if (v12)
  {
    LOWORD(v12) = *v12;
  }

  result = 0;
  *a4 = v12;
  return result;
}

uint64_t LD_prevInSent(uint64_t a1, int a2, unsigned int a3, _WORD *a4)
{
  v16 = 0;
  if ((safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) != 0)
  {
    return 2300583944;
  }

  PrevCommonParent = LD_findPrevCommonParent(a1, a2, a3, &v16);
  if ((PrevCommonParent & 0x80000000) != 0)
  {
    return PrevCommonParent;
  }

  if (v16)
  {
    goto LABEL_4;
  }

  if (*(a1 + 48) <= a3 || (v14 = *(*(a1 + 64) + 8 * a3)) == 0)
  {
    log_OutPublic(*(*a1 + 32), "LINGDB", 20020, "%s%u", v9, v10, v11, v12, "record");
    return 2300591633;
  }

  if ((*(v14 + 2) & 0xFE) == 2)
  {
LABEL_4:
    v13 = 0;
    *a4 = v16;
  }

  else
  {
    v13 = 2300591625;
    log_OutPublic(*(*a1 + 32), "LINGDB", 20012, "%s%s%s%u%s%u", v9, v10, v11, v12, "method");
  }

  return v13;
}

uint64_t LD_checkIfIsInPrompt(uint64_t a1, int a2, unsigned int a3, _DWORD *a4)
{
  v16 = 0;
  LODWORD(__n) = 0;
  v15 = 0;
  v14 = 11;
  __s1 = 0;
  *a4 = 0;
  if ((safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) != 0)
  {
    return 2300583944;
  }

  v8 = *(a1 + 64) != 0;
  v9 = LD_enquireChild(a1, a2, 2, v8, &v15);
  result = 0;
  if ((v9 & 0x80000000) == 0)
  {
    if (v15)
    {
      result = LD_findChild(a1, a2, 2, v8, &__n + 1);
      if ((result & 0x80000000) == 0)
      {
        while (1)
        {
          v11 = WORD1(__n);
          v12 = !WORD1(__n) || HIWORD(v16) > a3;
          if (v12 || *a4)
          {
            break;
          }

          result = LD_readField(a1, a2, WORD1(__n), 1u, 1u, &v16 + 2, &__n);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          if (HIWORD(v16) <= a3)
          {
            result = LD_readField(a1, a2, v11, 0, 1u, &v14, &__n);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            if (v14 == 5)
            {
              result = LD_readDirectField(a1, a2, v11, 4u, &__s1, &__n);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              if (__n && !strncmp(__s1, "prompt", __n))
              {
                result = LD_readField(a1, a2, v11, 2u, 1u, &v16, &__n);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                if (v16 > a3)
                {
                  *a4 = 1;
                }
              }
            }
          }

          result = LD_nextInSent(a1, a2, v11, &__n + 1);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }
        }

        return 0;
      }
    }
  }

  return result;
}

uint64_t LD_setPhonInDepes(uint64_t a1, int a2, int a3)
{
  if ((safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) != 0)
  {
    return 2300583944;
  }

  result = 0;
  *(a1 + 76) = a3;
  return result;
}

uint64_t LD_dumpDBViaLogging(uint64_t *a1, uint64_t a2, int a3, const char *a4, int a5, unsigned int a6, int a7)
{
  v23[256] = *MEMORY[0x1E69E9840];
  if ((safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) == 0)
  {
    v22 = 0;
    if (log_GetLogLevel(*(*a1 + 32)) >= a6)
    {
      bzero(v23, 0x800uLL);
      v18 = *"LINGDB";
      v19 = unk_1C37BE2C8;
      v20 = xmmword_1C37BE2D8;
      v21 = unk_1C37BE2E8;
      LOWORD(v22) = 146;
      HIDWORD(v22) = a6;
      v17 = *(*a1 + 32);
      if (a3)
      {
        LOWORD(v22) = a3;
      }

      if (a4)
      {
        LD_logOutputCB(&v17, a4);
        LD_logOutputCB(&v17, "\n");
      }

      if (a5 == 1)
      {
        v16 = 0;
        if (LD_getDBChangedStatus(a1, a2, &v16) || v16 != 1)
        {
          LD_logOutputCB(&v17, "LingDB unchanged since last call\n");
          goto LABEL_14;
        }

        LD_resetDBChangedStatus(a1, a2);
      }

      dumpSentenceRecord(a1, a2, LD_logOutputCB, &v17, a7);
    }

LABEL_14:
    result = 0;
    goto LABEL_15;
  }

  result = 2300583944;
LABEL_15:
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t dumpSentenceRecord(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t, const char *), uint64_t a4, int a5)
{
  v9 = a1;
  v52 = 0;
  v51 = 0;
  v50 = 0;
  result = LD_findDirect(a1, a2, 1, 0, &v52);
  if (!result)
  {
    v11 = v52;
    if (v52)
    {
      v12 = word_1F42D42A8;
      v55 = 0;
      if ((LD_enquireField(v9, a2, v52, 0, &v55 + 1) & 0x80000000) == 0 && HIWORD(v55) == 1 && (LD_readDirectField(v9, a2, v11, 0, &v50, &v55) & 0x80000000) == 0 && v55 <= 1u)
      {
        v50 = 0;
      }

      a3(a4, "<SentenceRecord>\n");
      if (v12)
      {
        v13 = 0;
        do
        {
          HIDWORD(v41) = a5;
          LOWORD(v41) = v52;
          (*(&LD_FIELDOFFSETSD + 5 * v13 + 120))(v9, a2, a3, a4, "  ", v13, *(&LD_FIELDOFFSETSD + 5 * v13 + 119), *(&LD_FIELDOFFSETSD + 20 * v13 + 472), v41);
          ++v13;
        }

        while (v12 > v13);
      }

      v14 = LD_enquireChild(v9, a2, 3, v52, &v51);
      v15 = v51;
      if (v14)
      {
        v16 = 1;
      }

      else
      {
        v16 = v51 == 0;
      }

      if (!v16)
      {
        v17 = word_1F42D49B8;
        do
        {
          a3(a4, " <TokenRecord>\n");
          if (v17)
          {
            v18 = 0;
            do
            {
              HIDWORD(v41) = a5;
              LOWORD(v41) = v15;
              (*(&LD_FIELDOFFSETSD + 5 * v18 + 346))(v9, a2, a3, a4, "    ", v18, *(&LD_FIELDOFFSETSD + 5 * v18 + 345), *(&LD_FIELDOFFSETSD + 20 * v18 + 1376), v41);
              ++v18;
            }

            while (v17 > v18);
          }

          a3(a4, " </TokenRecord>\n");
          LD_nextInSent(v9, a2, v51, &v51);
          v15 = v51;
        }

        while (v51);
      }

      v19 = LD_enquireChild(v9, a2, 2, v52, &v51);
      v20 = v51;
      if (v19)
      {
        v21 = 1;
      }

      else
      {
        v21 = v51 == 0;
      }

      if (!v21)
      {
        v45 = word_1F42D4D40;
        v46 = word_1F42D4630;
        v49 = a5;
        v48 = v9;
        v47 = word_1F42D50C8;
        do
        {
          v22 = v50;
          v44 = v20;
          v53 = v20;
          a3(a4, " <WordRecord>\n");
          if (v22)
          {
            v54 = 0;
            v55 = 0;
            if ((safeh_HandleCheck(v9, a2, 45762, 80) & 0x80000000) == 0)
            {
              v23 = *v9;
              if ((LD_enquireField(v9, a2, v44, 2u, &v54) & 0x80000000) == 0 && v54 == 1 && (LD_enquireField(v9, a2, v44, 1u, &v54) & 0x80000000) == 0 && v54 == 1 && (LD_readField(v9, a2, v44, 1u, 1u, &v55, &v55 + 1) & 0x80000000) == 0 && (LD_readField(v9, a2, v44, 2u, 1u, &v54 + 2, &v55 + 1) & 0x80000000) == 0)
              {
                v43 = v23;
                v24 = HIWORD(v54) - v55;
                v25 = a5 ? xmlaux_calculateExtraEscapeBytes(v22 + v55, HIWORD(v54) - v55) : 0;
                __n = v24;
                v26 = v25 + v24;
                v27 = heap_Alloc(*(v43 + 8), (v26 + 1));
                if (v27)
                {
                  v28 = (v22 + v55);
                  v29 = v27;
                  if (a5)
                  {
                    xmlaux_escape(v27, v28, __n);
                  }

                  else
                  {
                    strncpy(v27, v28, __n);
                  }

                  *(v29 + v26) = 0;
                  a3(a4, "    ");
                  a3(a4, "<");
                  a3(a4, "LD_W_ORTH");
                  a3(a4, "> ");
                  a3(a4, v29);
                  a3(a4, " </");
                  a3(a4, "LD_W_ORTH");
                  a3(a4, ">\n");
                  heap_Free(*(v43 + 8), v29);
                }
              }
            }
          }

          if (v46)
          {
            v30 = 0;
            do
            {
              HIDWORD(v41) = a5;
              LOWORD(v41) = v44;
              (*(&LD_FIELDOFFSETSD + 5 * v30 + 233))(v9, a2, a3, a4, "    ", v30, *(&LD_FIELDOFFSETSD + 5 * v30 + 232), *(&LD_FIELDOFFSETSD + 20 * v30 + 924), v41);
              ++v30;
            }

            while (v46 > v30);
          }

          if (!LD_enquireChild(v9, a2, 4, v44, &v53))
          {
            for (i = v53; v53; a5 = v49)
            {
              HIWORD(v55) = i;
              a3(a4, "    <SI_LAYER>\n");
              v32 = &LD_FIELDOFFSETSD;
              v33 = v9;
              if (v45)
              {
                v34 = a5;
                v35 = 0;
                do
                {
                  v36 = v32;
                  HIDWORD(v41) = v34;
                  LOWORD(v41) = i;
                  (*&v32[20 * v35 + 1836])(v33, a2, a3, a4, "      ", v35, *&v32[20 * v35 + 1832], v32[20 * v35 + 1828], v41);
                  v32 = v36;
                  ++v35;
                }

                while (v45 > v35);
              }

              if (!LD_enquireChild(v33, a2, 5, i, &v55 + 1))
              {
                for (j = HIWORD(v55); HIWORD(v55); j = HIWORD(v55))
                {
                  a3(a4, "      <SI_W_TOKEN>\n");
                  v38 = &LD_FIELDOFFSETSD;
                  if (v47)
                  {
                    v39 = 0;
                    do
                    {
                      v40 = v38;
                      HIDWORD(v41) = v49;
                      LOWORD(v41) = j;
                      (*&v38[20 * v39 + 2288])(v48, a2, a3, a4, "        ", v39, *&v38[20 * v39 + 2284], v38[20 * v39 + 2280], v41);
                      v38 = v40;
                      ++v39;
                    }

                    while (v47 > v39);
                  }

                  a3(a4, "      </SI_W_TOKEN>\n");
                  LD_findNextCommonParent(v48, a2, HIWORD(v55), &v55 + 1);
                }
              }

              a3(a4, "    </SI_LAYER>\n");
              v9 = v48;
              LD_findNextCommonParent(v48, a2, v53, &v53);
              i = v53;
            }
          }

          a3(a4, " </WordRecord>\n");
          LD_nextInSent(v9, a2, v51, &v51);
          v20 = v51;
        }

        while (v51);
      }

      return (a3)(a4, "</SentenceRecord>\n");
    }
  }

  return result;
}

uint64_t loc_printLH_U8String(uint64_t a1, int a2, void (*a3)(uint64_t, const char *), uint64_t a4, const char *a5, unsigned int a6, const char *a7, unsigned int a8, int a9, int a10)
{
  v27 = 0;
  v25 = 0;
  v26 = 0;
  result = LD_enquireField(a1, a2, a8, a6, &v26 + 1);
  if ((result & 0x80000000) == 0 && HIWORD(v26) == 1)
  {
    LD_readDirectField(a1, a2, a8, a6, &v27, &v26);
    v19 = v26;
    if (v26)
    {
      while (!v27[v19 - 1])
      {
        LOWORD(v26) = --v19;
        if (!v19)
        {
          v19 = 0;
          break;
        }
      }
    }

    if (a10)
    {
      v20 = Utf8_DepesLengthInBytesUtf8(v27, v19);
      result = heap_Alloc(*(*a1 + 8), v20 + 1);
      if (!result)
      {
        return result;
      }

      v21 = result;
      utf8_DepesToUtf8(v27, v26, 0, result, v20, &v25, 0);
      v19 = v25;
      v21[v25] = 0;
      LOWORD(v26) = v19;
      v27 = v21;
    }

    else
    {
      v21 = 0;
    }

    if (a9 && (v22 = xmlaux_calculateExtraEscapeBytes(v27, v19)) != 0)
    {
      v23 = v22;
      result = heap_Alloc(*(*a1 + 8), v22 + v26 + 1);
      if (!result)
      {
LABEL_18:
        if (v21)
        {
          return heap_Free(*(*a1 + 8), v21);
        }

        return result;
      }

      v24 = result;
      xmlaux_escape(result, v27, v26);
      v24[v23 + v26] = 0;
      v27 = v24;
    }

    else
    {
      v24 = 0;
    }

    a3(a4, a5);
    a3(a4, "<");
    a3(a4, a7);
    a3(a4, "> ");
    a3(a4, v27);
    a3(a4, " </");
    a3(a4, a7);
    result = (a3)(a4, ">\n");
    if (v24)
    {
      result = heap_Free(*(*a1 + 8), v24);
    }

    goto LABEL_18;
  }

  return result;
}

uint64_t LD_printTokenType(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, const char *), uint64_t a4, const char *a5, unsigned int a6, const char *a7, unsigned int a8, unsigned __int16 a9)
{
  v19 = 0;
  v20 = 0;
  v18 = 0;
  result = LD_enquireField(a1, a2, a9, a6, &v19 + 1);
  if ((result & 0x80000000) == 0 && HIWORD(v19) == 1)
  {
    LD_readField(a1, a2, a9, a6, a8, &v20, &v19);
    LD_getTokenType(a1, a2, v20, &v18);
    a3(a4, a5);
    a3(a4, "<");
    a3(a4, a7);
    a3(a4, "> ");
    a3(a4, v18);
    a3(a4, " </");
    a3(a4, a7);
    return (a3)(a4, ">\n");
  }

  return result;
}

uint64_t LD_printWordType(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, const char *), uint64_t a4, const char *a5, unsigned int a6, const char *a7, unsigned int a8, unsigned __int16 a9)
{
  v19 = 0;
  v20 = 0;
  v18 = 0;
  result = LD_enquireField(a1, a2, a9, a6, &v19 + 1);
  if ((result & 0x80000000) == 0 && HIWORD(v19) == 1)
  {
    LD_readField(a1, a2, a9, a6, a8, &v20, &v19);
    LD_getWordType(a1, a2, v20, &v18);
    a3(a4, a5);
    a3(a4, "<");
    a3(a4, a7);
    a3(a4, "> ");
    a3(a4, v18);
    a3(a4, " </");
    a3(a4, a7);
    return (a3)(a4, ">\n");
  }

  return result;
}

uint64_t LD_printLH_BOOL(uint64_t a1, int a2, void (*a3)(uint64_t, const char *), uint64_t a4, const char *a5, unsigned int a6, const char *a7, unsigned int a8, unsigned __int16 a9)
{
  v19 = 0;
  v20 = 0;
  result = LD_enquireField(a1, a2, a9, a6, &v19 + 1);
  if ((result & 0x80000000) == 0 && HIWORD(v19) == 1)
  {
    LD_readField(a1, a2, a9, a6, a8, &v20, &v19);
    a3(a4, a5);
    a3(a4, "<");
    a3(a4, a7);
    a3(a4, "> ");
    if (v20)
    {
      v18 = "true";
    }

    else
    {
      v18 = "false";
    }

    a3(a4, v18);
    a3(a4, " </");
    a3(a4, a7);
    return (a3)(a4, ">\n");
  }

  return result;
}

uint64_t LD_printLH_U16(uint64_t a1, int a2, void (*a3)(uint64_t, const char *), uint64_t a4, const char *a5, unsigned int a6, const char *a7, unsigned int a8, unsigned __int16 a9)
{
  v20 = 0;
  v19 = 0;
  result = LD_enquireField(a1, a2, a9, a6, &v20);
  if ((result & 0x80000000) == 0 && v20 == 1)
  {
    LD_readField(a1, a2, a9, a6, a8, &v20 + 2, &v19);
    LH_utoa(HIWORD(v20), v18, 0xAu);
    a3(a4, a5);
    a3(a4, "<");
    a3(a4, a7);
    a3(a4, "> ");
    a3(a4, v18);
    a3(a4, " </");
    a3(a4, a7);
    return (a3)(a4, ">\n");
  }

  return result;
}

uint64_t LD_printLH_U32Array(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int16 a9)
{
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = v9;
  v30 = *MEMORY[0x1E69E9840];
  v26 = 0;
  result = LD_enquireField(v9, v20, a9, v12, &v26 + 1);
  if ((result & 0x80000000) == 0 && HIWORD(v26) == 1)
  {
    LD_readField(v22, v21, a9, v13, 0x400u, v29, &v26);
    v28[0] = 0;
    if (v26)
    {
      v24 = 0;
      do
      {
        LH_utoa(v29[v24], v27, 0xAu);
        __strcat_chk();
        __strcat_chk();
        ++v24;
      }

      while (v24 < v26);
    }

    v19(v17, v15);
    v19(v17, "<");
    v19(v17, v11);
    v19(v17, "> ");
    v19(v17, v28);
    v19(v17, "</");
    v19(v17, v11);
    result = (v19)(v17, ">\n");
  }

  v25 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t LD_printLH_U16String(uint64_t a1, int a2, void (*a3)(uint64_t, const char *), uint64_t a4, const char *a5, unsigned int a6, const char *a7, uint64_t a8, unsigned __int16 a9)
{
  v24 = *MEMORY[0x1E69E9840];
  v21 = 0;
  v20 = 0;
  result = LD_enquireField(a1, a2, a9, a6, &v21);
  if ((result & 0x80000000) == 0 && v21 == 1)
  {
    LD_readField(a1, a2, a9, a6, 0x20u, v22, &v20);
    v23[0] = 0;
    if (v20)
    {
      for (i = 0; i < v20; ++i)
      {
        LH_itoa(v22[i], v19, 0xAu);
        __strcat_chk();
        __strcat_chk();
      }
    }

    a3(a4, a5);
    a3(a4, "<");
    a3(a4, a7);
    a3(a4, "> ");
    a3(a4, v23);
    a3(a4, " </");
    a3(a4, a7);
    result = (a3)(a4, ">\n");
  }

  v18 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CB_appendString(uint64_t a1, char *__s)
{
  v4 = strlen(__s);
  v5 = v4;
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = *(a1 + 16);
    if (v7 > strlen(*(a1 + 8)) + v4)
    {
LABEL_7:
      strcat(v6, __s);
      return 0;
    }

    v8 = v5 + v7 + 50;
    *(a1 + 16) = v8;
    v9 = heap_Realloc(*(*a1 + 8), v6, v8);
  }

  else
  {
    v10 = v4 + *(a1 + 16) + 50;
    *(a1 + 16) = v10;
    v9 = heap_Calloc(*(*a1 + 8), 1, v10);
  }

  v6 = v9;
  if (v9)
  {
    *(a1 + 8) = v9;
    goto LABEL_7;
  }

  return 10;
}

uint64_t LD_printMarkerT(uint64_t *a1, int a2, void (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8, unsigned __int16 a9, unsigned int a10)
{
  v15 = a1;
  v39 = 0;
  v37 = 0;
  v38 = 0;
  __s = 0;
  v35 = *a1;
  result = LD_enquireField(a1, a2, a9, a6, &v39 + 1);
  v17 = 0;
  if ((result & 0x80000000) == 0 && HIWORD(v39) == 1)
  {
    v31 = v15;
    LD_readDirectField(v15, a2, a9, a6, &v38, &v39);
    v18 = a5;
    a3(a4, a5);
    a3(a4, "<");
    v30 = a7;
    a3(a4, a7);
    a3(a4, ">\n");
    if (v39)
    {
      v19 = 0;
      v20 = 0;
      v33 = 0;
      v34 = 0;
      v21 = a10;
      v22 = "  <MARKER> ";
      while (1)
      {
        a3(a4, v18);
        a3(a4, v22);
        if (__s)
        {
          *__s = 0;
        }

        marker_serialize_tostring(CB_appendString, &v35, v38 + v19, 0);
        v23 = __s;
        if (v21)
        {
          v24 = strlen(__s);
          v25 = xmlaux_calculateExtraEscapeBytes(__s, v24);
          if (v25)
          {
            v26 = v22;
            v27 = v21;
            v28 = v25 + v24;
            if (v33 <= v25 + v24)
            {
              if (v34)
              {
                heap_Free(*(*v31 + 8), v34);
              }

              v33 = 2 * v28;
              result = heap_Alloc(*(*v31 + 8), (2 * v28) & 0xFFFFFFFE);
              v17 = result;
              if (!result)
              {
                v15 = v31;
                goto LABEL_23;
              }

              v18 = a5;
            }

            else
            {
              v17 = v34;
            }

            xmlaux_escape(v17, v23, v24 + 1);
            v34 = v17;
            v23 = v17;
            v21 = v27;
            v22 = v26;
          }
        }

        if (v23)
        {
          v29 = v23;
        }

        else
        {
          v29 = "";
        }

        a3(a4, v29);
        a3(a4, " </MARKER>\n");
        ++v20;
        v19 += 32;
        if (v20 >= v39)
        {
          goto LABEL_22;
        }
      }
    }

    v34 = 0;
LABEL_22:
    a3(a4, v18);
    a3(a4, "</");
    a3(a4, v30);
    result = (a3)(a4, ">\n");
    v15 = v31;
    v17 = v34;
  }

LABEL_23:
  if (__s)
  {
    result = heap_Free(*(*v15 + 8), __s);
  }

  if (v17)
  {
    return heap_Free(*(*v15 + 8), v17);
  }

  return result;
}

uint64_t LD_logOutputCB(uint64_t a1, const char *a2)
{
  v4 = (a1 + 80);
  v5 = strlen((a1 + 80));
  if (strlen(a2) + v5 >= 0x800)
  {
    result = log_OutText(*a1, a1 + 8, *(a1 + 76), 0, "%s", v6, v7, v8, v4);
    if (!result)
    {
      result = log_OutText(*a1, a1 + 8, *(a1 + 76), 0, "%s", v10, v11, v12, a2);
    }

    goto LABEL_6;
  }

  v13 = strcat(v4, a2);
  v17 = strlen(v13) - 1;
  if (v4[v17] == 10)
  {
    v4[v17] = 0;
    result = log_OutText(*a1, a1 + 8, *(a1 + 76), 0, "%s", v14, v15, v16, v4);
LABEL_6:
    *v4 = 0;
    return result;
  }

  return 0;
}

double LD_HeapInit(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 24) = a4;
  *(a1 + 28) = a5;
  return result;
}

uint64_t LD_HeapAlloc(uint64_t a1, int a2)
{
  v4 = (a1 + 16);
  v3 = *(a1 + 16);
  v5 = (a2 + 7) & 0xFFFFFFF8;
  if (v3)
  {
    while (1)
    {
      v6 = v3;
      result = v3[2];
      if ((result + v5) <= v3[3])
      {
        goto LABEL_16;
      }

      v3 = *v3;
      if (!*v6)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = 0;
LABEL_6:
  if (*(a1 + 32) || (v8 = *(a1 + 24), v8 <= v5))
  {
    if (*(a1 + 28) <= v5)
    {
      v8 = (a2 + 7) & 0xFFFFFFF8;
    }

    else
    {
      v8 = *(a1 + 28);
    }
  }

  result = heap_Calloc(*(*a1 + 8), 1, v8 + 32);
  if (result)
  {
    v9 = result;
    result += 32;
    v9[2] = result;
    v9[3] = result + v8;
    *v9 = 0;
    v9[1] = result;
    *(a1 + 32) += v8;
    if (v6)
    {
      v10 = v6;
    }

    else
    {
      v10 = v4;
    }

    *v10 = v9;
    v6 = v9;
LABEL_16:
    *(a1 + 36) += v5;
    v6[2] = result + v5;
  }

  return result;
}

void LD_HeapResetPool(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && *a1)
  {
    LD_HeapLogStats(a1, "before ResetPool", a3, a4, a5, a6, a7, a8);
    for (i = *(a1 + 16); i; i = *i)
    {
      v10 = i[1];
      i[2] = v10;
      bzero(v10, (*(i + 6) - v10));
    }

    *(a1 + 36) = 0;
  }
}

uint64_t LD_HeapLogStats(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result && *result)
  {
    v8 = (result + 16);
    v9 = -1;
    do
    {
      v8 = *v8;
      ++v9;
    }

    while (v8);
    v13 = *(result + 28);
    v11 = *(result + 32);
    v12 = *(result + 24);
    v10 = *(result + 36);
    return log_OutText(*(*result + 32), "LINGDB", 5, 0, "LD_Heap %s %s: alloc=%lu pool=%lu initial=%lu grow=%lu blocks=%lu", a6, a7, a8, *(result + 8));
  }

  return result;
}

void *LD_HeapFreePool(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    v8 = result;
    if (*result)
    {
      result = LD_HeapLogStats(result, "before FreePool", a3, a4, a5, a6, a7, a8);
      v9 = v8[2];
      if (v9)
      {
        do
        {
          v10 = *v9;
          result = heap_Free(*(*v8 + 8), v9);
          v9 = v10;
        }

        while (v10);
      }

      v8[2] = 0;
      v8[4] = 0;
    }
  }

  return result;
}

unint64_t fix16_exp(uint64_t a1)
{
  if (!a1)
  {
    return 0x10000;
  }

  if (a1 == 0x10000)
  {
    return 178145;
  }

  if (a1 > 681391)
  {
    return 0x7FFFFFFFLL;
  }

  if (a1 < -726817)
  {
    return 0;
  }

  v3 = int64_from_int32(0x10000);
  v4 = int64_from_int32(a1);
  v5 = int64_add(v3, v4);
  v6 = int64_from_int32(a1);
  v7 = 2;
  for (i = 3; i != 13; ++i)
  {
    v9 = int64_mul_i64_i32(v6, a1);
    v6 = int64_shift(v9, -16);
    v10 = int64_div_i64_i32(v6, v7);
    v11 = int64_add(v5, v10);
    v5 = v11;
    v7 *= i;
  }

  return int64_lo(v11);
}

uint64_t int64_shift(uint64_t a1, int a2)
{
  v2 = -a2;
  v3 = v2 <= 31;
  v4 = ((2 * a1) << (a2 - 1)) | (HIDWORD(a1) >> v2);
  LODWORD(v5) = a1 >> v2;
  if (!v3)
  {
    v4 = 0;
    LODWORD(v5) = 0;
  }

  v6 = (a1 << a2) | (HIDWORD(a1) >> 1 >> ~a2);
  LODWORD(v7) = HIDWORD(a1) << a2;
  if (a2 > 0x1F)
  {
    LODWORD(v7) = 0;
    v6 = 0;
  }

  if (a2 >= 1)
  {
    v7 = v7;
  }

  else
  {
    v7 = v4;
  }

  if (a2 >= 1)
  {
    v5 = v6;
  }

  else
  {
    v5 = v5;
  }

  return v5 | (v7 << 32);
}

uint64_t int64_mul_i64_i32(unint64_t a1, int a2)
{
  v2 = a1 ^ a2;
  v3 = -a1;
  if (HIDWORD(a1))
  {
    v3 = ~a1;
  }

  if ((a1 & 0x80000000) != 0)
  {
    v4 = -(a1 & 0xFFFFFFFF00000000);
  }

  else
  {
    v3 = a1;
    v4 = a1;
  }

  if (a2 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = -a2;
  }

  v6 = (v3 >> 16) * HIWORD(v5);
  v7 = (v3 >> 16) * v5 + v3 * HIWORD(v5);
  v8 = v3 * v5 + HIWORD(v5) * HIWORD(v4);
  v9 = v6 + (v7 << 16);
  v10 = 65537 * v8 + HIWORD(v7);
  v11 = -v10;
  if (v9)
  {
    v11 = ~v10;
  }

  v12 = v2 >= 0;
  if (v2 < 0)
  {
    v13 = v11;
  }

  else
  {
    v13 = v10;
  }

  if (v12)
  {
    v14 = v9;
  }

  else
  {
    v14 = -v9;
  }

  return v13 | (v14 << 32);
}

unint64_t int64_div_i64_i32(unint64_t a1, int a2)
{
  v2 = a1 ^ a2;
  v3 = -a1;
  if (HIDWORD(a1))
  {
    v3 = ~a1;
  }

  if ((a1 & 0x80000000) != 0)
  {
    v4 = -(a1 & 0xFFFFFFFF00000000);
  }

  else
  {
    v3 = a1;
    v4 = a1;
  }

  v5 = HIDWORD(v4);
  if (a2 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = -a2;
  }

  v7 = v3 / v6;
  v8 = v3 % v6;
  v9 = v5 / v6;
  v10 = v5 % v6;
  v11 = v6 << 32;
  v12 = 0x100000000;
  while (v8 > v11 || v8 == v11 && HIDWORD(v11) < v10)
  {
    v11 = (__PAIR64__(v11, HIDWORD(v11)) >> 31) | (HIDWORD(v11) << 33);
    v12 = (__PAIR64__(v12, HIDWORD(v12)) >> 31) | (HIDWORD(v12) << 33);
  }

  for (; v8; v12 = v17 | (v18 << 32))
  {
    v13 = __ROR8__(v11, 33);
    v14 = v11 >> 1;
    v15 = v13;
    v16 = v8 <= v11 >> 1;
    v11 = (v11 >> 1) | (v13 << 32);
    v17 = (v12 >> 1);
    v18 = (v12 >> 33) | (v12 << 31);
    if (!v16 || v8 == v14 && v13 <= v10)
    {
      v19 = -v13;
      if (v15)
      {
        v20 = ~v11;
      }

      else
      {
        v20 = -v11;
      }

      v21 = v20 + v8;
      v22 = v8 < 0;
      v23 = __CFADD__(v10, v19);
      LODWORD(v10) = v10 + v19;
      if (v23)
      {
        v22 = 1;
      }

      v8 = v21 + v22;
      v24 = v7 + v17;
      v25 = v7 < 0;
      v23 = __CFADD__(v18, v9);
      v9 += v18;
      if (v23)
      {
        v25 = 1;
      }

      v7 = v24 + v25;
    }
  }

  v26 = v10 / v6;
  v27 = (v26 >> 31) + v7;
  v28 = v7 < 0;
  v23 = __CFADD__(v26, v9);
  v30 = v26 + v9;
  v29 = v30 == 0;
  v31 = v23 || v28;
  v32 = v27 + v31;
  v33 = v30 << 32;
  v34 = ~v32;
  if (v29)
  {
    v34 = -v32;
  }

  v35 = v34 - v33;
  v36 = v33 & 0xFFFFFFFF00000000 | v32;
  if (v2 < 0)
  {
    return v35;
  }

  else
  {
    return v36;
  }
}

uint64_t uint32_log2(uint64_t result)
{
  if (result)
  {
    v1 = WORD1(result);
    if (!WORD1(result))
    {
      v1 = result;
    }

    if (v1 <= 0xFF)
    {
      v2 = 16 * (WORD1(result) != 0);
    }

    else
    {
      v1 >>= 8;
      v2 = (16 * (WORD1(result) != 0)) | 8;
    }

    if (v1 > 0xF)
    {
      v1 >>= 4;
      v2 |= 4u;
    }

    if (v1 > 3)
    {
      v1 >>= 2;
      v2 |= 2u;
    }

    if (v1 <= 1)
    {
      return v2;
    }

    else
    {
      return v2 + 1;
    }
  }

  return result;
}

uint64_t fix16_add(int a1, int a2)
{
  if (((a2 + a1) ^ a1) > -1 || (a2 ^ a1) < 0)
  {
    return (a2 + a1);
  }

  else
  {
    return 0x80000000;
  }
}

uint64_t fix16_sub(int a1, int a2)
{
  if ((((a1 - a2) ^ a1) & (a2 ^ a1)) < 0 != v2)
  {
    return 0x80000000;
  }

  else
  {
    return (a1 - a2);
  }
}

uint64_t fix16_mul(int a1, int a2)
{
  v2 = (a2 >> 16) * a1 + a2 * (a1 >> 16);
  v3 = __PAIR64__((a2 >> 16) * (a1 >> 16), a2 * a1) + __PAIR64__(v2 >> 16, v2 << 16);
  v4 = (__PAIR64__((a2 >> 16) * (a1 >> 16), a2 * a1) + __PAIR64__(v2 >> 16, v2 << 16)) >> 16;
  if (SHIDWORD(v3) >> 31 == SHIDWORD(v3) >> 15)
  {
    return v4;
  }

  else
  {
    return 0x80000000;
  }
}

uint64_t fix16_div(int a1, int a2)
{
  if (!a2)
  {
    return 0x80000000;
  }

  if (a1 >= 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = -a1;
  }

  if (a2 >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = -a2;
  }

  if (v3 >= 0x100000)
  {
    v4 = v2 / ((v3 >> 17) + 1);
    v2 -= (v4 * v3) >> 17;
  }

  else
  {
    v4 = 0;
  }

  if ((v3 & 0xF) != 0)
  {
    v5 = 17;
  }

  else
  {
    v6 = 17;
    do
    {
      v7 = v3;
      v3 >>= 4;
      v5 = v6 - 4;
      if ((v7 & 0xF0) != 0)
      {
        break;
      }

      v8 = v6 > 7;
      v6 -= 4;
    }

    while (v8);
  }

  while (v2 && (v5 & 0x80000000) == 0)
  {
    v9 = v2 >> 28;
    if (v2 >> 28)
    {
      LOBYTE(v9) = 0;
      v11 = v2;
      if ((v2 & 0x80000000) != 0)
      {
        goto LABEL_23;
      }

      do
      {
LABEL_22:
        LOBYTE(v9) = v9 + 1;
        v11 *= 2;
      }

      while ((v11 & 0x80000000) == 0);
      goto LABEL_23;
    }

    v10 = v2;
    do
    {
      LOBYTE(v9) = v9 + 4;
      v11 = 16 * v10;
      v12 = HIBYTE(v10);
      v10 *= 16;
    }

    while (!v12);
    if ((v11 & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

LABEL_23:
    if (v5 >= v9)
    {
      v9 = v9;
    }

    else
    {
      v9 = v5;
    }

    v13 = v2 << v9;
    v14 = v5 - v9;
    v15 = v13 / v3;
    v4 += (v13 / v3) << v14;
    v16 = 0xFFFFFFFF >> v14;
    v2 = 2 * (v13 % v3);
    v5 = v14 - 1;
    if (v15 > v16)
    {
      return 0x80000000;
    }
  }

  v18 = v4 >> 1;
  if ((a2 ^ a1) >= 0)
  {
    return v18;
  }

  else
  {
    return -v18;
  }
}

uint64_t igtree_Init(_WORD *a1, int a2, uint64_t a3, char *a4)
{
  v60 = 0;
  *v59 = 0;
  v58 = 0;
  v57 = 0;
  v56 = 0;
  v55 = 0;
  bzero(a4, 0x640uLL);
  inited = InitRsrcFunction(a1, a2, &v55);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v13 = ssftriff_reader_OpenChunk(a3, &v56, &v60, v59, v9, v10, v11, v12);
  if ((v13 & 0x80000000) != 0)
  {
LABEL_56:
    if ((v13 & 0x1FFF) == 0xA)
    {
      return v13;
    }

    else
    {
      return 0;
    }
  }

  v19 = 2380275722;
  while (v56 ^ 0x52545344 | v57)
  {
    if (v56 ^ 0x54414546 | v57)
    {
      if (v56 ^ 0x4C424154 | v57)
      {
        if (v56 ^ 0x534F5041 | v57)
        {
          if (v56 ^ 0x4D414E46 | v57)
          {
            if (!(v56 ^ 0x41524150 | v57))
            {
              v20 = heap_Calloc(*(v55 + 8), v60 >> 2, 16);
              *(a4 + 166) = v20;
              if (!v20)
              {
                return v19;
              }

              v21 = v60;
              if (v60)
              {
                v22 = 0;
                v23 = 0;
                while (1)
                {
                  v58 = 0;
                  ssftriff_reader_ReadStringZ(a3, *v59, v21, v23, 0, &v58);
                  v24 = heap_Alloc(*(v55 + 8), v58);
                  *(*(a4 + 166) + 16 * v22) = v24;
                  if (!v24)
                  {
                    return v19;
                  }

                  inited = ssftriff_reader_ReadStringZ(a3, *v59, v60, v23, v24, &v58);
                  if ((inited & 0x80000000) != 0)
                  {
                    return inited;
                  }

                  v25 = v58 + v23;
                  v58 = 0;
                  ssftriff_reader_ReadStringZ(a3, *v59, v60, v25, 0, &v58);
                  v26 = heap_Alloc(*(v55 + 8), v58);
                  *(*(a4 + 166) + 16 * v22 + 8) = v26;
                  if (!v26)
                  {
                    return v19;
                  }

                  inited = ssftriff_reader_ReadStringZ(a3, *v59, v60, v25, v26, &v58);
                  if ((inited & 0x80000000) != 0)
                  {
                    return inited;
                  }

                  ++v22;
                  v23 = v58 + v25;
                  v21 = v60;
                  if (v23 >= v60)
                  {
                    goto LABEL_54;
                  }
                }
              }

              v22 = 0;
LABEL_54:
              *(a4 + 334) = v22;
            }
          }

          else
          {
            v49 = heap_Calloc(*(v55 + 8), v60 >> 1, 8);
            *(a4 + 164) = v49;
            if (!v49)
            {
              return v19;
            }

            v50 = v60;
            if (v60)
            {
              v51 = 0;
              v52 = 0;
              do
              {
                v58 = 0;
                ssftriff_reader_ReadStringZ(a3, *v59, v50, v52, 0, &v58);
                *(*(a4 + 164) + 8 * v51) = heap_Alloc(*(v55 + 8), v58);
                v53 = *(*(a4 + 164) + 8 * v51);
                if (!v53)
                {
                  return v19;
                }

                inited = ssftriff_reader_ReadStringZ(a3, *v59, v60, v52, v53, &v58);
                if ((inited & 0x80000000) != 0)
                {
                  return inited;
                }

                ++v51;
                v52 += v58;
                v50 = v60;
              }

              while (v52 < v60);
            }
          }
        }

        else
        {
          v58 = v60;
          v44 = heap_Alloc(*(v55 + 8), v60);
          *(a4 + 163) = v44;
          if (!v44)
          {
            return v19;
          }

          inited = ssftriff_reader_ReadStringZ(a3, *v59, v60, 0, v44, &v58);
          if ((inited & 0x80000000) != 0)
          {
            return inited;
          }
        }
      }

      else
      {
        inited = ssftriff_reader_DetachChunkData(a3, a4, v59, v14, v15, v16, v17, v18);
        if ((inited & 0x80001FFF) == 0x8000000A)
        {
          return inited;
        }

        a4[1296] = 0;
        if (v60 >= 2)
        {
          v35 = 0;
          LODWORD(v36) = 0;
          v37 = v60 >> 1;
          v38 = *v59;
          v39 = *v59 + 2;
          do
          {
            v40 = *(v38 + 2 * v36);
            if (v40 == 0xFFFF)
            {
              v41 = 0;
              do
              {
                v41 += 0xFFFF;
                v36 = (v36 + 1);
                v40 = *(v38 + 2 * v36);
              }

              while (v40 == 0xFFFF);
              v42 = v36;
            }

            else
            {
              v41 = 0;
              v42 = v36;
            }

            *&a4[8 * v35 + 272] = v39 + 2 * v42;
            v43 = v35 + 1;
            LODWORD(v36) = v36 + v41 + v40 + 1;
            ++v35;
          }

          while (v36 < v37);
          a4[1296] = v43;
        }
      }
    }

    else
    {
      v32 = v60;
      if (v60)
      {
        v33 = 0;
        v34 = *v59;
        do
        {
          *&a4[v33 + 16] = *(v34 + v33);
          v33 += 2;
        }

        while (v33 < v32);
      }
    }

LABEL_44:
    ssftriff_reader_CloseChunk(a3);
    v13 = ssftriff_reader_OpenChunk(a3, &v56, &v60, v59, v45, v46, v47, v48);
    if ((v13 & 0x80000000) != 0)
    {
      goto LABEL_56;
    }
  }

  v27 = heap_Calloc(*(v55 + 8), v60 >> 1, 8);
  *(a4 + 1) = v27;
  if (!v27)
  {
    return v19;
  }

  v28 = v60;
  if (!v60)
  {
    v29 = 0;
LABEL_41:
    *(a4 + 330) = v29;
    goto LABEL_44;
  }

  v29 = 0;
  v30 = 0;
  while (1)
  {
    v58 = 0;
    ssftriff_reader_ReadStringZ(a3, *v59, v28, v30, 0, &v58);
    *(*(a4 + 1) + 8 * v29) = heap_Alloc(*(v55 + 8), v58);
    v31 = *(*(a4 + 1) + 8 * v29);
    if (!v31)
    {
      return v19;
    }

    inited = ssftriff_reader_ReadStringZ(a3, *v59, v60, v30, v31, &v58);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    ++v29;
    v30 += v58;
    v28 = v60;
    if (v30 >= v60)
    {
      goto LABEL_41;
    }
  }
}

uint64_t igtree_Process(uint64_t a1, uint64_t a2, void *a3)
{
  v77 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 272);
  __src = v3;
  v4 = *(a1 + 1296);
  if (v4 < 2)
  {
    goto LABEL_38;
  }

  v41 = a3;
  v6 = 0;
  v3 = 0;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v7 = a1 + 272;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v61 = 0u;
  v76 = 0;
  v60 = 0u;
  v59 = 0u;
  v58 = 0u;
  v57 = 0u;
  v56 = 0u;
  v55 = 0u;
  v54 = 0u;
  v53 = 0u;
  v52 = 0u;
  v51 = 0u;
  v50 = 0u;
  v49 = 0u;
  v48 = 0u;
  v47 = 0u;
  v46 = 0u;
  v45 = 0u;
  v8 = v4 - 1;
  v9 = a1 + 16;
  v40 = a1;
  v10 = (a1 + 8);
  v11 = 1;
  v12 = v8;
  memset(__dst, 0, 512);
  v42 = v8;
  do
  {
    if (v11 >= 1)
    {
      v13 = v11;
      memcpy(__dst, &__src, 8 * v11);
      v14 = 0;
      v15 = 0;
      v11 = 0;
      v16 = v6 + 1;
      while (1)
      {
        v17 = *(__dst + v14);
        v20 = *v17;
        v18 = (v17 + 1);
        v19 = v20;
        if (v20)
        {
          break;
        }

LABEL_28:
        v36 = v14 == 0;
        if (v15)
        {
          v36 = 0;
        }

        if (v36 && v3 == 0)
        {
          v3 = v18;
        }

        if (++v14 == v13)
        {
          v12 = v42;
          if (!v15)
          {
            goto LABEL_34;
          }

          goto LABEL_36;
        }
      }

      v21 = *(__dst + v14) + 4 * v19;
      while (1)
      {
        v22 = *v18;
        if (v22 == 0xFFFF)
        {
          v32 = *(v7 + 8 * v16);
          v33 = &(&__src)[v11];
          v34 = v18[1];
          while (v34 == 0xFFFF)
          {
            v32 += 131070;
            v21 += 2;
            v34 = v18[2];
            ++v18;
          }
        }

        else
        {
          v23 = *(a2 + 8 * *(v9 + 2 * v6));
          v24 = *(*v10 + 8 * v22);
          if (*v23 != *v24)
          {
            goto LABEL_25;
          }

          v25 = v23 + 1;
          v26 = v24 + 1;
          do
          {
            v28 = *v25++;
            v27 = v28;
            v30 = *v26++;
            v29 = v30;
          }

          while (v27 == v30 && v29 != 0);
          if (v27 != v29)
          {
            goto LABEL_25;
          }

          v32 = *(v7 + 8 * v16);
          v33 = &(&__src)[v11];
          v34 = v18[1];
          while (v34 == 0xFFFF)
          {
            v32 += 131070;
            v21 += 2;
            v34 = v18[2];
            ++v18;
          }

          v15 = 1;
        }

        *v33 = (v32 + 2 * v34);
        ++v11;
LABEL_25:
        ++v18;
        v21 -= 2;
        do
        {
          v35 = *v18++;
          v21 += 2;
        }

        while (v35 == -1);
        if (v18 >= v21)
        {
          goto LABEL_28;
        }
      }
    }

    v11 = 0;
LABEL_34:
    if (!v11 && v3)
    {
      a3 = v41;
      goto LABEL_40;
    }

LABEL_36:
    v37 = v6 + 1;
    v6 = (v6 + 1);
  }

  while (v12 > v37);
  v3 = __src;
  a1 = v40;
  a3 = v41;
LABEL_38:
  v10 = (a1 + 8);
LABEL_40:
  *a3 = *(*v10 + 8 * *v3);
  v38 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t igtree_Deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ssftriff_reader_ReleaseChunkData(*a2, a2, a3, a4, a5, a6, a7, a8);
  if (*(a2 + 1320))
  {
    v10 = 0;
    do
    {
      heap_Free(*(a1 + 8), *(*(a2 + 8) + 8 * v10++));
    }

    while (*(a2 + 1320) > v10);
  }

  heap_Free(*(a1 + 8), *(a2 + 8));
  heap_Free(*(a1 + 8), *(a2 + 1304));
  v11 = *(a2 + 1312);
  if (v11)
  {
    v12 = *(a2 + 1296);
    if (*(a2 + 1296))
    {
      v13 = 0;
      do
      {
        v14 = *(*(a2 + 1312) + 8 * v13);
        if (v14)
        {
          heap_Free(*(a1 + 8), v14);
          v12 = *(a2 + 1296);
        }

        ++v13;
      }

      while (v13 < v12);
      v11 = *(a2 + 1312);
    }

    heap_Free(*(a1 + 8), v11);
  }

  v15 = *(a2 + 1328);
  if (v15)
  {
    if (*(a2 + 1336))
    {
      v16 = 0;
      do
      {
        heap_Free(*(a1 + 8), *(*(a2 + 1328) + 16 * v16));
        heap_Free(*(a1 + 8), *(*(a2 + 1328) + 16 * v16++ + 8));
      }

      while (*(a2 + 1336) > v16);
      v15 = *(a2 + 1328);
    }

    heap_Free(*(a1 + 8), v15);
  }

  return 0;
}

uint64_t igtree_Init_ReadOnly_ReferenceCnt(_WORD *a1, uint64_t a2, _WORD *a3, uint64_t a4, void *a5, int a6, uint64_t a7, uint64_t a8, __int16 a9, char a10)
{
  v23 = 0;
  v24 = 0;
  v21 = 0;
  v22 = 0;
  v20[4] = 0;
  result = InitRsrcFunction(a1, a2, &v24);
  if ((result & 0x80000000) == 0)
  {
    result = InitRsrcFunction(a3, a4, &v23);
    if ((result & 0x80000000) == 0)
    {
      v20[0] = a1;
      v20[1] = a2;
      v20[2] = a3;
      v20[3] = a4;
      __strcpy_chk();
      LODWORD(v21) = a6;
      BYTE6(v21) = a10;
      WORD2(v21) = a9;
      ObjcForThisApi = getObjcForThisApi(v24, v23);
      result = objc_GetAddRefCountedObject(ObjcForThisApi, a7, igtree_ObjcLoad, igtree_ObjcClose, v20, &v22);
      if ((result & 0x80000000) != 0)
      {
        v19 = 0;
      }

      else
      {
        v19 = *(v22 + 32);
      }

      *a5 = v19;
    }
  }

  return result;
}

uint64_t igtree_ObjcLoad(_WORD *a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5)
{
  v42 = 0;
  v43 = 0;
  inited = InitRsrcFunction(a1, a2, &v42);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = InitRsrcFunction(*(a5 + 16), *(a5 + 24), &v43);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v11 = *(v42 + 8);
  v12 = *(v43 + 32);
  v13 = *(a5 + 40);
  v14 = *(a5 + 44) | (*(a5 + 46) << 16);
  *v44 = 0;
  v15 = ssftriff_reader_ObjOpen(a1, a2, v13, a3, (a5 + 32), v14, v44);
  if ((v15 & 0x80000000) != 0)
  {
    v34 = v15;
    log_OutText(v12, "IGTREE", 3, 0, "failed to read IGtree %s data - going on without", v16, v17, v18, a3);
  }

  else
  {
    v19 = heap_Calloc(v11, 1, 1600);
    *(a4 + 32) = v19;
    if (v19)
    {
      v23 = igtree_Init(a1, a2, *v44, v19);
      if ((v23 & 0x80000000) != 0)
      {
        v34 = v23;
        v35 = "error initializing IGtree  %s - going on without";
        goto LABEL_12;
      }

      strcpy((*(a4 + 32) + 1340), a3);
      v34 = ssftriff_reader_ObjClose(*v44, v27, v28, v29, v30, v31, v32, v33);
      if ((v34 & 0x80000000) != 0)
      {
        v35 = "cannot complete reading IGtree  %s - going on without";
LABEL_12:
        log_OutText(v12, "IGTREE", 0, 0, v35, v24, v25, v26, a3);
      }
    }

    else
    {
      log_OutText(v12, "IGTREE", 0, 0, "no memory for IGtree  %s", v20, v21, v22, a3);
      log_OutPublic(v12, "IGTREE", 37000, 0, v36, v37, v38, v39, v41);
      return 2380275722;
    }
  }

  return v34;
}

uint64_t igtree_ObjcClose(_WORD *a1, int a2, uint64_t a3)
{
  v13 = 0;
  result = InitRsrcFunction(a1, a2, &v13);
  if ((result & 0x80000000) == 0)
  {
    v11 = *(a3 + 32);
    if (v11)
    {
      v12 = v13;
      igtree_Deinit(v13, v11, v5, v6, v7, v8, v9, v10);
      heap_Free(*(v12 + 8), v11);
    }

    return 0;
  }

  return result;
}

uint64_t igtree_Deinit_ReadOnly_DereferenceCnt(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjcForThisApi = getObjcForThisApi(a1, a2);

  return objc_ReleaseObject(ObjcForThisApi, a3 + 1340);
}

uint64_t posparser_ExtractPunctuation(void *a1, char *__s, char **a3, size_t *a4, char **a5, size_t *a6)
{
  v12 = strlen(__s);
  v13 = v12;
  v29 = 0;
  if (*a3)
  {
    **a3 = 0;
    v14 = *a3;
  }

  else
  {
    v14 = 0;
  }

  *a4 = 0;
  if (*a5)
  {
    **a5 = 0;
    v15 = *a5;
  }

  else
  {
    v15 = 0;
  }

  *a6 = 0;
  if (v12)
  {
    v16 = 0;
    while ((*(a1[3] + 128))(a1[1], a1[2], &__s[v16]))
    {
      v16 += utf8_determineUTF8CharLength(__s[v16]);
      if (v16 >= v13)
      {
        goto LABEL_13;
      }
    }

    if (v16)
    {
LABEL_13:
      *a4 = v16;
      v17 = heap_Realloc(*(*a1 + 8), v14, v16 + 1);
      if (!v17)
      {
LABEL_31:
        v26 = 2687508490;
        log_OutPublic(*(*a1 + 32), "POSPARSER", 68000, 0, v18, v19, v20, v21, v28);
        return v26;
      }

      v14 = v17;
      strncpy(v17, __s, *a4)[*a4] = 0;
    }

    v29 = v13 - 1;
    utf8_GetPreviousValidUtf8Offset(__s, &v29);
    if (v29 != -1)
    {
      v22 = v13;
      if ((*(a1[3] + 128))(a1[1], a1[2], &__s[v29]))
      {
        do
        {
          v22 = v29;
          PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(__s, v29);
          v29 = PreviousUtf8Offset;
        }

        while (PreviousUtf8Offset != -1 && (*(a1[3] + 128))(a1[1], a1[2], &__s[PreviousUtf8Offset]));
      }

      v24 = v13 - v22;
      if (v13 > v22)
      {
        *a6 = v24;
        v25 = heap_Realloc(*(*a1 + 8), v15, v24 + 1);
        if (v25)
        {
          v15 = v25;
          strncpy(v25, &__s[v22], *a6)[*a6] = 0;
          goto LABEL_22;
        }

        goto LABEL_31;
      }
    }
  }

LABEL_22:
  if (*a3)
  {
    *a3 = v14;
  }

  else if (v14)
  {
    heap_Free(*(*a1 + 8), v14);
  }

  if (*a5)
  {
    v26 = 0;
    *a5 = v15;
  }

  else
  {
    if (v15)
    {
      heap_Free(*(*a1 + 8), v15);
    }

    return 0;
  }

  return v26;
}