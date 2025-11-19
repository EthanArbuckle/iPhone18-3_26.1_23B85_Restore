uint64_t fe_phrasing_Process_NNPhrasing(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6)
{
  v6 = a1;
  v98[0] = 0;
  v97 = 0;
  v96 = 0;
  *a6 = 1;
  v7 = *(*(a1 + 1528) + 1072);
  if (*(*(a1 + 1528) + 1072))
  {
    v8 = 0;
    v91 = *(*(a1 + 1528) + 1072);
    do
    {
      v9 = *(v6[191] + 1064) + 184 * v8;
      v10 = *(v9 + 56);
      v11 = strlen(v10);
      if (!v11)
      {
        break;
      }

      if (doesWordEndInCommaNN(v10, ",:;.?!|_~'<>{}#()[]^\\=@/&$*#"))
      {
        v12 = &v10[v11];
        if (memchr(",:;.?!|_~'<>{}#()[]^\\=@/&$*#", *(v12 - 1), 0x1EuLL))
        {
          v13 = 0;
          while (1)
          {
            v14 = Utf8_LengthInBytes(&v10[v13], 1);
            if (!utf8_IsChineseLetter(&v10[v13]))
            {
              break;
            }

LABEL_11:
            v13 += v14;
            if (v13 >= v11)
            {
              v17 = 0;
              LOBYTE(v16) = *(v12 - 1);
              goto LABEL_14;
            }
          }

          v15 = 0;
          v16 = v10[v13];
          while (v16 != asc_1C38DB09D[v15])
          {
            if (++v15 == 9)
            {
              goto LABEL_11;
            }
          }

          v17 = 1;
LABEL_14:
          *(v9 + 104) = v16;
          *(v9 + 108) = v17;
          *(v9 + 100) = 1;
          v7 = v91;
          v6 = a1;
        }
      }

      if (v11 == 1)
      {
        v18 = memchr(",:;.?!|_~'<>{}#()[]^\\=@/&$*#", *v10, 0x1EuLL);
        if (v8)
        {
          if (v18 && *(*(v6[191] + 1064) + 184 * (v8 - 1) + 108))
          {
            *(v9 + 108) = 1;
          }
        }
      }

      ++v8;
    }

    while (v8 != v7);
  }

  if (!*(a5 + 1104))
  {
    *(a5 + 1176) = 2;
    *(a5 + 1120) = 0x10000;
  }

  *(a5 + 1104) = 0;
  v19 = *(v6 + 381);
  NNSentenceData = getNNSentenceData(*v6, v6[7], a3, a4, v6[191]);
  if ((NNSentenceData & 0x80000000) == 0)
  {
    if (*(a5 + 1088))
    {
      NNSentenceData = doesNNCustermizedFE(*v6, v6[191], v98);
      if ((NNSentenceData & 0x80000000) == 0)
      {
        if (*(a5 + 1072))
        {
          v95 = 0;
          if (v6[206])
          {
            v21 = heap_Calloc(*(*v6 + 8), *(v6[191] + 1072), 8);
            v26 = *v6;
            if (!v21)
            {
              NNSentenceData = 2315264010;
              log_OutPublic(*(v26 + 32), "FE_PHRASING", 37000, 0, v22, v23, v24, v25, v87);
              goto LABEL_112;
            }

            v27 = v21;
            v32 = heap_Calloc(*(v26 + 8), *(v6[191] + 1072), 8);
            v33 = *v6;
            if (!v32)
            {
              v34 = 0;
              goto LABEL_89;
            }

            v34 = heap_Calloc(*(v33 + 8), *(v6[191] + 1072), 8);
            if (!v34)
            {
LABEL_88:
              v33 = *v6;
              goto LABEL_89;
            }
          }

          else
          {
            v27 = 0;
            v32 = 0;
            v34 = 0;
          }

          v35 = v6[191];
          v36 = *(v35 + 536);
          if (*(v35 + 536))
          {
            v37 = 0;
            v38 = (v35[133] + 176);
            do
            {
              v39 = *(v38 - 3);
              if (v39)
              {
                v40 = *v39;
                if (v40 == 83)
                {
                  if (v39[1])
                  {
                    goto LABEL_43;
                  }
                }

                else
                {
                  if (v40 == 69)
                  {
                    v41 = v39[1];
LABEL_43:
                    v37 += strlen(*(v38 - 15));
                    goto LABEL_44;
                  }

                  if (v40 != 66 || v39[1])
                  {
                    goto LABEL_43;
                  }
                }

                v37 = strlen(*(v38 - 15));
              }

LABEL_44:
              *v38 = v37;
              v38 += 46;
              --v36;
            }

            while (v36);
          }

          if (!v98[0] && *(a5 + 1072))
          {
            v64 = 0;
            v65 = 76;
            do
            {
              v66 = *(a5 + 1064);
              v67 = *(v66 + v65 - 4);
              if (v67 == 1)
              {
                v68 = 3;
              }

              else
              {
                if (v67)
                {
                  goto LABEL_73;
                }

                v68 = 1;
              }

              *(v66 + v65) = v68;
LABEL_73:
              *(v66 + v65 - 28) = 0;
              hlp_NLUStrFind(*(v66 + v65 - 36), "POS", (v66 + v65 - 28), &v95);
              if (v27)
              {
                v69 = heap_Alloc(*(*a1 + 8), v95 + 1);
                *(v27 + 8 * v64) = v69;
                if (!v69)
                {
                  v6 = a1;
                  goto LABEL_88;
                }

                strncpy(v69, *(*(a5 + 1064) + v65 - 28), v95);
                *(*(v27 + 8 * v64) + v95) = 0;
              }

              if (v32)
              {
                v70 = heap_Alloc(*(*a1 + 8), v95 + 1);
                *(v32 + 8 * v64) = v70;
                if (!v70)
                {
                  goto LABEL_85;
                }

                strncpy(v70, *(*(a5 + 1064) + v65 - 28), v95);
                *(*(v32 + 8 * v64) + v95) = 0;
              }

              if (v34)
              {
                v75 = strlen(*(*(a5 + 1064) + v65 - 20));
                v76 = heap_Alloc(*(*a1 + 8), v75 + 1);
                *(v34 + 8 * v64) = v76;
                if (!v76)
                {
LABEL_85:
                  NNSentenceData = 2315264010;
                  v6 = a1;
                  log_OutPublic(*(*a1 + 32), "FE_PHRASING", 37000, 0, v71, v72, v73, v74, v87);
                  goto LABEL_63;
                }

                strcpy(v76, *(*(a5 + 1064) + v65 - 20));
              }

              ++v64;
              v65 += 184;
            }

            while (v64 < *(a5 + 1072));
          }

          v6 = a1;
          if (!v32 || !v27 || !v34)
          {
LABEL_55:
            v49 = *a1;
            v50 = *(a1 + 1664);
            v51 = *(a1 + 1672);
            v52 = *(a1 + 1544);
            v53 = *(a1 + 1552);
            v54 = *(a1 + 1608);
            v93[2] = *(a1 + 1592);
            v93[3] = v54;
            v93[4] = *(a1 + 1624);
            v94 = *(a1 + 1640);
            v55 = *(a1 + 1576);
            v93[0] = *(a1 + 1560);
            v93[1] = v55;
            updated = nnpuncPhrasing(v49, a5, v52, v53, v93, v50, v51);
            if ((updated & 0x80000000) != 0 || (updated = updateLingdbNNPhrasing(*a1, *(a1 + 56), a3, a4, *(a1 + 1528), *(a1 + 1656), *(a1 + 1664), *(a1 + 1524)), (updated & 0x80000000) != 0))
            {
              NNSentenceData = updated;
LABEL_63:
              v63 = 0;
            }

            else
            {
              v57 = strlen(*(*(a1 + 1528) + 1088));
              v58 = heap_Alloc(*(*a1 + 8), v57 + 1);
              v63 = v58;
              if (v58)
              {
                memset(v58, 32, v57);
                *(v63 + v57) = 0;
                NNSentenceData = fe_phrasing_mosynt_SplitWords(a1, a3, a4, *(a5 + 1096), v63, &v97);
                if ((NNSentenceData & 0x80000000) == 0 && v97)
                {
                  NNSentenceData = fe_phrasing_mosynt_AdjustSentenceAndMarkers(a1, a3, a4, *(a5 + 1096), v57, (v97 + v57), v63);
                }
              }

              else
              {
                NNSentenceData = 2315264010;
                log_OutPublic(*(*a1 + 32), "FE_PHRASING", 37000, 0, v59, v60, v61, v62, v87);
              }
            }

            if (!v27)
            {
              goto LABEL_96;
            }

            goto LABEL_90;
          }

          v42 = heap_Calloc(*(*a1 + 8), *(*(a1 + 1528) + 1072), 24);
          v96 = v42;
          v33 = *a1;
          if (v42)
          {
            if ((fe_phrasing_genLW(v33, *(a1 + 1528), v32, v34, v27, &v96) & 0x80000000) == 0)
            {
              fe_phrasing_ProcessIGTree(a1, v42, v43, v44, v45, v46, v47, v48, v87);
            }

            freeIwInfo(a1, v42);
            goto LABEL_55;
          }

LABEL_89:
          NNSentenceData = 2315264010;
          log_OutPublic(*(v33 + 32), "FE_PHRASING", 37000, 0, v28, v29, v30, v31, v87);
          v63 = 0;
LABEL_90:
          v77 = *(a5 + 1072);
          if (*(a5 + 1072))
          {
            v78 = 0;
            do
            {
              v79 = *(v27 + 8 * v78);
              if (v79)
              {
                heap_Free(*(*v6 + 8), v79);
                v77 = *(a5 + 1072);
              }

              ++v78;
            }

            while (v78 < v77);
          }

          heap_Free(*(*v6 + 8), v27);
LABEL_96:
          if (v32)
          {
            v80 = *(a5 + 1072);
            if (*(a5 + 1072))
            {
              v81 = 0;
              do
              {
                v82 = *(v32 + 8 * v81);
                if (v82)
                {
                  heap_Free(*(*v6 + 8), v82);
                  v80 = *(a5 + 1072);
                }

                ++v81;
              }

              while (v81 < v80);
            }

            heap_Free(*(*v6 + 8), v32);
          }

          if (v34)
          {
            v83 = *(a5 + 1072);
            if (*(a5 + 1072))
            {
              v84 = 0;
              do
              {
                v85 = *(v34 + 8 * v84);
                if (v85)
                {
                  heap_Free(*(*v6 + 8), v85);
                  v83 = *(a5 + 1072);
                }

                ++v84;
              }

              while (v84 < v83);
            }

            heap_Free(*(*v6 + 8), v34);
          }

          if (v63)
          {
            heap_Free(*(*v6 + 8), v63);
          }
        }
      }
    }
  }

LABEL_112:
  freeSentenceDataNN(*v6, v6[191]);
  return NNSentenceData;
}

uint64_t fe_phrasing_genLW(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v37 = *(a2 + 1072);
  if (!*(a2 + 1072))
  {
    return 0;
  }

  v8 = a3;
  v9 = a2;
  v10 = a1;
  v11 = 0;
  v38 = *a6;
  while (1)
  {
    v40 = 0;
    __lasts = 0;
    v39 = 0;
    v12 = *(a5 + 8 * v11);
    if (!v12)
    {
      return 2315264007;
    }

    v13 = v11;
    if (!*(a4 + 8 * v11) || !*(v8 + 8 * v11))
    {
      return 2315264007;
    }

    v14 = 0;
    if (strtok_r(v12, "-", &__lasts))
    {
      do
      {
        ++v14;
      }

      while (strtok_r(0, "-", &__lasts));
    }

    v15 = heap_Calloc(*(v10 + 8), 1, 8 * v14);
    v20 = (v38 + 24 * v13);
    *(v20 + 2) = v15;
    if (!v15)
    {
      break;
    }

    v21 = strlen(*(v9 + 1088));
    *(v20 + 1) = v21 + 1;
    v22 = heap_Calloc(*(v10 + 8), 1, (v21 + 1) * v14);
    *(v20 + 1) = v22;
    if (!v22)
    {
      break;
    }

    v23 = *(v8 + 8 * v13);
    v24 = a4;
    v25 = *(a4 + 8 * v13);
    *v20 = v14;
    v26 = strtok_r(v23, "-", &v40);
    v27 = strtok_r(v25, "-", &v39);
    v28 = 0;
    v29 = v26 != 0;
    v30 = v27 != 0;
    if (v26)
    {
      v31 = v27;
      if (v27)
      {
        v28 = 0;
        while (v28 <= v14)
        {
          strcpy((*(v20 + 2) + 8 * v28), v26);
          strcpy((*(v20 + 1) + *(v20 + 1) * v28), v31);
          v26 = strtok_r(0, "-", &v40);
          v32 = strtok_r(0, "-", &v39);
          ++v28;
          v29 = v26 != 0;
          v30 = v32 != 0;
          if (v26)
          {
            v31 = v32;
            if (v32)
            {
              continue;
            }
          }

          goto LABEL_16;
        }

        return 2315264015;
      }
    }

LABEL_16:
    if (v29 || v30)
    {
      return 2315264007;
    }

    if (*v20 != v28)
    {
      return 2315264015;
    }

    v11 = v13 + 1;
    a4 = v24;
    v10 = a1;
    v8 = a3;
    v9 = a2;
    if (v13 + 1 >= v37)
    {
      return 0;
    }
  }

  log_OutPublic(*(v10 + 32), "FE_PHRASING", 37000, 0, v16, v17, v18, v19, a2);
  return 2315264010;
}

void *fe_phrasing_ProcessIGTree(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = *a1;
  v10 = *(a1[191] + 1072);
  __s1 = 0;
  v11 = a1[206];
  if (v11)
  {
    v13 = a1;
    result = heap_Alloc(*(v9 + 8), 8 * *(v11 + 1296) - 8);
    v98 = result;
    if (!result)
    {
      return result;
    }

    if (*(v11 + 1296) == 1)
    {
LABEL_7:
      v97 = a2;
      if (!v10)
      {
LABEL_230:
        if (*(v11 + 1296) != 1)
        {
          v90 = (*(v11 + 1296) - 1);
          v91 = v98;
          do
          {
            v92 = *v91++;
            heap_Free(*(v9 + 8), v92);
            --v90;
          }

          while (v90);
        }

        return heap_Free(*(v9 + 8), v98);
      }

      v22 = 0;
      v94 = v10;
      v95 = v13;
      v96 = v11;
      while (1)
      {
        v23 = *(v11 + 1312);
        v24 = *(v11 + 1296);
        v25 = v13[191];
        v100 = 0;
        v26 = heap_Calloc(*(v9 + 8), 1, 2048);
        if (!v26)
        {
          break;
        }

        v27 = v26;
        if (v24 < 2)
        {
          v31 = 0;
        }

        else
        {
          v28 = 0;
          v29 = (v24 - 1);
          while (1)
          {
            v30 = *(v23 + 8 * v28);
            if (*v30 == 112 && v30[1] == 119 && !v30[2])
            {
              break;
            }

            if (v29 == ++v28)
            {
              v31 = 0;
              goto LABEL_17;
            }
          }

          v100 = v28;
          v88 = fe_phrasing_feat_word(v25, v22, 0);
          v31 = fe_phrasing_setFeature(v9, v23, v24, 0, v98, v88);
          if (v31 < 0)
          {
            goto LABEL_225;
          }

LABEL_17:
          v32 = 0;
          if (v29 <= 1)
          {
            v33 = 1;
          }

          else
          {
            v33 = (v24 - 1);
          }

          while (strcmp(*(v23 + 8 * v32), "pwlen"))
          {
            if (v33 == ++v32)
            {
              goto LABEL_25;
            }
          }

          v100 = v32;
          *v27 = 0;
          v34 = strlen(v27);
          fe_phrasing_feat_wordlen(v25, v22, 0, &v27[v34]);
          v31 = fe_phrasing_setFeature(v9, v23, v24, 1, v98, v27);
          if (v31 < 0)
          {
            goto LABEL_225;
          }

LABEL_25:
          v35 = 0;
          while (strcmp(*(v23 + 8 * v35), "lpwlen"))
          {
            if (v33 == ++v35)
            {
              goto LABEL_30;
            }
          }

          v100 = v35;
          *v27 = 0;
          v36 = strlen(v27);
          fe_phrasing_feat_wordlen(v25, v22, -1, &v27[v36]);
          v31 = fe_phrasing_setFeature(v9, v23, v24, 2, v98, v27);
          if (v31 < 0)
          {
            goto LABEL_225;
          }

LABEL_30:
          v37 = 0;
          while (strcmp(*(v23 + 8 * v37), "llpwlen"))
          {
            if (v33 == ++v37)
            {
              goto LABEL_35;
            }
          }

          v100 = v37;
          *v27 = 0;
          v38 = strlen(v27);
          fe_phrasing_feat_wordlen(v25, v22, -2, &v27[v38]);
          v31 = fe_phrasing_setFeature(v9, v23, v24, 3, v98, v27);
          if (v31 < 0)
          {
            goto LABEL_225;
          }

LABEL_35:
          v39 = 0;
          while (strcmp(*(v23 + 8 * v39), "rpwlen"))
          {
            if (v33 == ++v39)
            {
              goto LABEL_40;
            }
          }

          v100 = v39;
          *v27 = 0;
          v40 = strlen(v27);
          fe_phrasing_feat_wordlen(v25, v22, 1, &v27[v40]);
          v31 = fe_phrasing_setFeature(v9, v23, v24, 4, v98, v27);
          if (v31 < 0)
          {
            goto LABEL_225;
          }

LABEL_40:
          v41 = 0;
          v42 = 8 * v33;
          while (strcmp(*(v23 + v41), "rrpwlen"))
          {
            v41 += 8;
            if (v42 == v41)
            {
              goto LABEL_45;
            }
          }

          *v27 = 0;
          v43 = strlen(v27);
          fe_phrasing_feat_wordlen(v25, v22, 2, &v27[v43]);
          v31 = fe_phrasing_setFeature(v9, v23, v24, 5, v98, v27);
          if (v31 < 0)
          {
            goto LABEL_225;
          }

LABEL_45:
          v44 = 0;
          while (strcmp(*(v23 + 8 * v44), "pos"))
          {
            if (v33 == ++v44)
            {
              goto LABEL_52;
            }
          }

          v100 = v44;
          v45 = "=";
          if (v22 < *(v25 + 1072))
          {
            v45 = *(*(v25 + 1064) + 184 * v22 + 48);
          }

          v31 = fe_phrasing_setFeature(v9, v23, v24, 6, v98, v45);
          if (v31 < 0)
          {
            goto LABEL_225;
          }

LABEL_52:
          v46 = 0;
          while (strcmp(*(v23 + v46), "lpos"))
          {
            v46 += 8;
            if (v42 == v46)
            {
              goto LABEL_61;
            }
          }

          if (v22 && v22 - 1 < *(v25 + 1072))
          {
            v47 = *(*(v25 + 1064) + 184 * (v22 - 1) + 48);
          }

          else
          {
            v47 = "=";
          }

          v31 = fe_phrasing_setFeature(v9, v23, v24, 7, v98, v47);
          if (v31 < 0)
          {
            goto LABEL_225;
          }

LABEL_61:
          v48 = 0;
          while (strcmp(*(v23 + v48), "rpos"))
          {
            v48 += 8;
            if (v42 == v48)
            {
              goto LABEL_68;
            }
          }

          v49 = "=";
          if (v22 + 1 < *(v25 + 1072))
          {
            v49 = *(*(v25 + 1064) + 184 * (v22 + 1) + 48);
          }

          v31 = fe_phrasing_setFeature(v9, v23, v24, 8, v98, v49);
          if (v31 < 0)
          {
            goto LABEL_225;
          }

LABEL_68:
          v50 = 0;
          while (strcmp(*(v23 + v50), "bpos"))
          {
            v50 += 8;
            if (v42 == v50)
            {
              goto LABEL_75;
            }
          }

          v51 = "=";
          if (v22 < *(v25 + 1072))
          {
            v51 = *(v97 + 24 * v22 + 16);
          }

          v31 = fe_phrasing_setFeature(v9, v23, v24, 9, v98, v51);
          if (v31 < 0)
          {
            goto LABEL_225;
          }

LABEL_75:
          v52 = 0;
          while (strcmp(*(v23 + v52), "blpos"))
          {
            v52 += 8;
            if (v42 == v52)
            {
              goto LABEL_84;
            }
          }

          if (v22 && v22 - 1 < *(v25 + 1072))
          {
            v53 = *(v97 + 24 * (v22 - 1) + 16);
          }

          else
          {
            v53 = "=";
          }

          v31 = fe_phrasing_setFeature(v9, v23, v24, 10, v98, v53);
          if (v31 < 0)
          {
            goto LABEL_225;
          }

LABEL_84:
          v54 = 0;
          while (strcmp(*(v23 + v54), "brpos"))
          {
            v54 += 8;
            if (v42 == v54)
            {
              goto LABEL_91;
            }
          }

          v55 = "=";
          if (v22 + 1 < *(v25 + 1072))
          {
            v55 = *(v97 + 24 * (v22 + 1) + 16);
          }

          v31 = fe_phrasing_setFeature(v9, v23, v24, 11, v98, v55);
          if (v31 < 0)
          {
            goto LABEL_225;
          }

LABEL_91:
          v56 = 0;
          while (strcmp(*(v23 + v56), "epos"))
          {
            v56 += 8;
            if (v42 == v56)
            {
              goto LABEL_98;
            }
          }

          v57 = "=";
          if (v22 < *(v25 + 1072))
          {
            v57 = (*(v97 + 24 * v22 + 16) + 8 * *(v97 + 24 * v22) - 8);
          }

          v31 = fe_phrasing_setFeature(v9, v23, v24, 12, v98, v57);
          if (v31 < 0)
          {
            goto LABEL_225;
          }

LABEL_98:
          v58 = 0;
          while (strcmp(*(v23 + v58), "elpos"))
          {
            v58 += 8;
            if (v42 == v58)
            {
              goto LABEL_107;
            }
          }

          if (v22 && v22 - 1 < *(v25 + 1072))
          {
            v59 = (*(v97 + 24 * (v22 - 1) + 16) + 8 * *(v97 + 24 * (v22 - 1)) - 8);
          }

          else
          {
            v59 = "=";
          }

          v31 = fe_phrasing_setFeature(v9, v23, v24, 13, v98, v59);
          if (v31 < 0)
          {
            goto LABEL_225;
          }

LABEL_107:
          v60 = 0;
          while (strcmp(*(v23 + 8 * v60), "erpos"))
          {
            if (v33 == ++v60)
            {
              goto LABEL_114;
            }
          }

          v100 = v60;
          v61 = "=";
          if (v22 + 1 < *(v25 + 1072))
          {
            v61 = (*(v97 + 24 * (v22 + 1) + 16) + 8 * *(v97 + 24 * (v22 + 1)) - 8);
          }

          v31 = fe_phrasing_setFeature(v9, v23, v24, 14, v98, v61);
          if (v31 < 0)
          {
            goto LABEL_225;
          }

LABEL_114:
          v62 = 0;
          while (strcmp(*(v23 + v62), "bchar"))
          {
            v62 += 8;
            if (v42 == v62)
            {
              goto LABEL_119;
            }
          }

          fe_phrasing_feat_character(v25, v22, 0, 0, v27);
          v31 = fe_phrasing_setFeature(v9, v23, v24, 15, v98, v27);
          if (v31 < 0)
          {
            goto LABEL_225;
          }

LABEL_119:
          v63 = 0;
          while (strcmp(*(v23 + 8 * v63), "echar"))
          {
            if (v33 == ++v63)
            {
              goto LABEL_124;
            }
          }

          v100 = v63;
          fe_phrasing_feat_character(v25, v22, -1, 0, v27);
          v31 = fe_phrasing_setFeature(v9, v23, v24, 16, v98, v27);
          if (v31 < 0)
          {
            goto LABEL_225;
          }

LABEL_124:
          v64 = 0;
          while (strcmp(*(v23 + v64), "elchar"))
          {
            v64 += 8;
            if (v42 == v64)
            {
              goto LABEL_129;
            }
          }

          fe_phrasing_feat_character(v25, v22, -1, -1, v27);
          v31 = fe_phrasing_setFeature(v9, v23, v24, 17, v98, v27);
          if (v31 < 0)
          {
            goto LABEL_225;
          }

LABEL_129:
          v65 = 0;
          while (strcmp(*(v23 + 8 * v65), "erchar"))
          {
            if (v33 == ++v65)
            {
              goto LABEL_134;
            }
          }

          v100 = v65;
          fe_phrasing_feat_character(v25, v22, -1, 1, v27);
          v31 = fe_phrasing_setFeature(v9, v23, v24, 18, v98, v27);
          if (v31 < 0)
          {
            goto LABEL_225;
          }

LABEL_134:
          v66 = 0;
          while (strcmp(*(v23 + v66), "blwword"))
          {
            v66 += 8;
            if (v42 == v66)
            {
              goto LABEL_141;
            }
          }

          v67 = "=";
          if (v22 < *(v25 + 1072))
          {
            v67 = *(v97 + 24 * v22 + 8);
          }

          v31 = fe_phrasing_setFeature(v9, v23, v24, 19, v98, v67);
          if (v31 < 0)
          {
            goto LABEL_225;
          }

LABEL_141:
          v68 = 0;
          while (strcmp(*(v23 + 8 * v68), "elwword"))
          {
            if (v33 == ++v68)
            {
              goto LABEL_148;
            }
          }

          v100 = v68;
          v69 = "=";
          if (v22 < *(v25 + 1072))
          {
            v69 = (*(v97 + 24 * v22 + 8) + (*(v97 + 24 * v22) - 1) * *(v97 + 24 * v22 + 4));
          }

          v31 = fe_phrasing_setFeature(v9, v23, v24, 20, v98, v69);
          if (v31 < 0)
          {
            goto LABEL_225;
          }

LABEL_148:
          v70 = 0;
          while (strcmp(*(v23 + v70), "lpw"))
          {
            v70 += 8;
            if (v42 == v70)
            {
              goto LABEL_153;
            }
          }

          v71 = fe_phrasing_feat_word(v25, v22, -1);
          v31 = fe_phrasing_setFeature(v9, v23, v24, 21, v98, v71);
          if (v31 < 0)
          {
            goto LABEL_225;
          }

LABEL_153:
          v72 = 0;
          while (strcmp(*(v23 + v72), "rpw"))
          {
            v72 += 8;
            if (v42 == v72)
            {
              goto LABEL_158;
            }
          }

          v73 = fe_phrasing_feat_word(v25, v22, 1);
          v31 = fe_phrasing_setFeature(v9, v23, v24, 22, v98, v73);
          if (v31 < 0)
          {
            goto LABEL_225;
          }

LABEL_158:
          v74 = 0;
          while (strcmp(*(v23 + 8 * v74), "blchar"))
          {
            if (v33 == ++v74)
            {
              goto LABEL_163;
            }
          }

          v100 = v74;
          fe_phrasing_feat_character(v25, v22, 0, -1, v27);
          v31 = fe_phrasing_setFeature(v9, v23, v24, 23, v98, v27);
          if (v31 < 0)
          {
            goto LABEL_225;
          }

LABEL_163:
          v75 = 0;
          while (strcmp(*(v23 + v75), "brchar"))
          {
            v75 += 8;
            if (v42 == v75)
            {
              goto LABEL_168;
            }
          }

          fe_phrasing_feat_character(v25, v22, 0, 1, v27);
          v31 = fe_phrasing_setFeature(v9, v23, v24, 24, v98, v27);
          if (v31 < 0)
          {
            goto LABEL_225;
          }

LABEL_168:
          v76 = 0;
          while (strcmp(*(v23 + v76), "blpwword"))
          {
            v76 += 8;
            if (v42 == v76)
            {
              goto LABEL_177;
            }
          }

          if (v22 && v22 - 1 < *(v25 + 1072))
          {
            v77 = *(v97 + 24 * (v22 - 1) + 8);
          }

          else
          {
            v77 = "=";
          }

          v31 = fe_phrasing_setFeature(v9, v23, v24, 25, v98, v77);
          if (v31 < 0)
          {
            goto LABEL_225;
          }

LABEL_177:
          v78 = 0;
          while (strcmp(*(v23 + v78), "brpwword"))
          {
            v78 += 8;
            if (v42 == v78)
            {
              goto LABEL_184;
            }
          }

          v79 = "=";
          if (v22 + 1 < *(v25 + 1072))
          {
            v79 = *(v97 + 24 * (v22 + 1) + 8);
          }

          v31 = fe_phrasing_setFeature(v9, v23, v24, 26, v98, v79);
          if (v31 < 0)
          {
            goto LABEL_225;
          }

LABEL_184:
          v80 = 0;
          while (strcmp(*(v23 + 8 * v80), "elpwword"))
          {
            if (v33 == ++v80)
            {
              goto LABEL_193;
            }
          }

          v100 = v80;
          if (v22 && v22 - 1 < *(v25 + 1072))
          {
            v81 = (*(v97 + 24 * (v22 - 1) + 8) + (*(v97 + 24 * (v22 - 1)) - 1) * *(v97 + 24 * (v22 - 1) + 4));
          }

          else
          {
            v81 = "=";
          }

          v31 = fe_phrasing_setFeature(v9, v23, v24, 27, v98, v81);
          if (v31 < 0)
          {
LABEL_225:
            heap_Free(*(v9 + 8), v27);
            return heap_Free(*(v9 + 8), v98);
          }
        }

LABEL_193:
        if (fe_phrasing_isFeatureRequired(v23, v24, 28, &v100))
        {
          v82 = "=";
          if (v22 + 1 < *(v25 + 1072))
          {
            v82 = (*(v97 + 24 * (v22 + 1) + 8) + (*(v97 + 24 * (v22 + 1)) - 1) * *(v97 + 24 * (v22 + 1) + 4));
          }

          v31 = fe_phrasing_setFeature(v9, v23, v24, 28, v98, v82);
          if (v31 < 0)
          {
            goto LABEL_225;
          }
        }

        if (fe_phrasing_isFeatureRequired(v23, v24, 29, &v100))
        {
          v83 = "=";
          if (v22 < *(v25 + 1072))
          {
            if (**(*(v25 + 1064) + 184 * v22 + 56) - 48 >= 0xA)
            {
              v83 = "0";
            }

            else
            {
              v83 = "1";
            }
          }

          v31 = fe_phrasing_setFeature(v9, v23, v24, 29, v98, v83);
          if (v31 < 0)
          {
            goto LABEL_225;
          }
        }

        if (fe_phrasing_isFeatureRequired(v23, v24, 30, &v100))
        {
          if (v22 && v22 - 1 < *(v25 + 1072))
          {
            v84 = **(*(v25 + 1064) + 184 * (v22 - 1) + 56) - 48 >= 0xA ? "0" : "1";
          }

          else
          {
            v84 = "=";
          }

          v31 = fe_phrasing_setFeature(v9, v23, v24, 30, v98, v84);
          if (v31 < 0)
          {
            goto LABEL_225;
          }
        }

        if (fe_phrasing_isFeatureRequired(v23, v24, 31, &v100))
        {
          v85 = "=";
          if (v22 + 1 < *(v25 + 1072))
          {
            if (**(*(v25 + 1064) + 184 * (v22 + 1) + 56) - 48 >= 0xA)
            {
              v85 = "0";
            }

            else
            {
              v85 = "1";
            }
          }

          v31 = fe_phrasing_setFeature(v9, v23, v24, 31, v98, v85);
        }

        heap_Free(*(v9 + 8), v27);
        v11 = v96;
        if (v31 < 0 || (igtree_Process(v96, v98, &__s1) & 0x80000000) != 0)
        {
          return heap_Free(*(v9 + 8), v98);
        }

        v86 = __s1;
        v13 = v95;
        if (strcmp(__s1, "NOMATCH"))
        {
          v87 = atoi(v86);
          if (v87 <= 3)
          {
            *(*(v95[191] + 1064) + 184 * v22 + 76) = v87;
          }
        }

        if (++v22 == v94)
        {
          goto LABEL_230;
        }
      }
    }

    else
    {
      v15 = (*(v11 + 1296) - 1);
      v16 = result;
      while (1)
      {
        v17 = heap_Calloc(*(v9 + 8), 1, 65);
        *v16 = v17;
        if (!v17)
        {
          break;
        }

        *v17 = 61;
        ++v16;
        if (!--v15)
        {
          goto LABEL_7;
        }
      }
    }

    log_OutPublic(*(v9 + 32), "FE_PHRASING", 37000, 0, v18, v19, v20, v21, v93);
    return heap_Free(*(v9 + 8), v98);
  }

  v89 = *(v9 + 32);

  return log_OutText(v89, "FE_PHRASING", 0, 0, "IGTree model for phrasing does not exist. Skip processing IGTree.", a6, a7, a8, a9);
}

void *freeIwInfo(void *result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    if (*(result[191] + 1072))
    {
      v4 = 0;
      v5 = (a2 + 16);
      do
      {
        heap_Free(*(*v3 + 8), *(v5 - 1));
        *(v5 - 1) = 0;
        heap_Free(*(*v3 + 8), *v5);
        *v5 = 0;
        v5 += 3;
        ++v4;
      }

      while (v4 < *(v3[191] + 1072));
    }

    v6 = *(*v3 + 8);

    return heap_Free(v6, a2);
  }

  return result;
}

uint64_t fe_phrasing_Process(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v42 = 0;
  v43 = 0;
  v41 = 0;
  v40 = 0;
  v39 = 0;
  if ((safeh_HandleCheck(a1, a2, 62343, 1728) & 0x80000000) != 0)
  {
    return 2315264008;
  }

  *&__c[1] = 0;
  v10 = (a1[7][13])(a3, a4, 1, 0, &__c[3]);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  if (((a1[7][23])(a3, a4, *&__c[3], 0, &__c[1]) & 0x80000000) != 0 || *&__c[1] != 1)
  {
    inserted = 0;
    *a5 = 1;
    return inserted;
  }

  if (*(a1 + 364))
  {
    v11 = a1[191];
    *(v11 + 548) = *&__c[3];
    *(v11 + 549) = 1;
  }

  v12 = a1[12];
  v13 = a1[13];
  v14 = a1[11];
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  v10 = (v13[12])(v14, v12, "fecfg", "usecompound", &__c[3], &__c[1], __c);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  v15 = 1;
  if (*&__c[1] == 1 && *&__c[3])
  {
    v16 = **&__c[3];
    v17 = strchr(**&__c[3], __c[0]);
    if (v17)
    {
      *v17 = 0;
      v16 = **&__c[3];
    }

    if (!strcmp("yes", v16) || !strcmp("YES", v16))
    {
      v15 = 0;
    }
  }

  v21 = paramc_ParamGetInt((*a1)[5], "nnpausingoverride", &v43) >= 0 && v43 == 1;
  v22 = !v21;
  if (v21)
  {
    log_OutText((*a1)[4], "FE_PHRASING", 5, 0, "NN pausing Override enabled - NN pausing will skipped even if data loaded", v18, v19, v20, 0);
  }

  if ((paramc_ParamGetInt((*a1)[5], "nnpausingminwordspan", &v43) & 0x80000000) != 0 || (v26 = v43, v43 > 0x270E))
  {
    v26 = 0xFFFFFFFFLL;
    if (!v22)
    {
      goto LABEL_37;
    }
  }

  else
  {
    log_OutText((*a1)[4], "FE_PHRASING", 5, 0, "NN pausing min word span set to %d", v23, v24, v25, v43);
    if (!v22)
    {
      goto LABEL_37;
    }
  }

  if (*(a1 + 324) == 1)
  {
    log_OutText((*a1)[4], "FE_PHRASING", 5, 0, "NN Phrasing Enabled", v23, v24, v25, 0);
    v10 = hlp_MarkSildursExternal(a1, a3, a4);
    if ((v10 & 0x80000000) != 0)
    {
      return v10;
    }

    v10 = hlp_Markup(a1, a3, a4);
    if ((v10 & 0x80000000) != 0)
    {
      return v10;
    }

    v10 = fe_phrasing_Process_NN_Phrasing(a1, a2, a3, a4, a5, v26, &v42);
    if ((v10 & 0x80000000) != 0)
    {
      return v10;
    }

    v10 = hlp_SetExternalSildurs(a1, a3, a4);
    if ((v10 & 0x80000000) != 0)
    {
      return v10;
    }

    v10 = hlp_SetInternalSildurs(a1, a3, a4, 1);
    if ((v10 & 0x80000000) != 0)
    {
      return v10;
    }
  }

LABEL_37:
  if (!*(a1 + 40))
  {
LABEL_56:
    if (*(a1 + 364))
    {
      v36 = pw_Process(a3, a4, a1[7], *a1, a1[191], a1[181], a1[183], a1 + 186, *(a1 + 365), &v39, a1[192], *(a1 + 381), *(a1 + 380));
      if ((v36 & 0x80000000) != 0)
      {
        inserted = v36;
        freeSentenceDataNN(*a1, a1[191]);
        return inserted;
      }

      v10 = hlp_MarkSildursExternal(a1, a3, a4);
      if ((v10 & 0x80000000) == 0)
      {
        setbndfromTN(*a1, v39, a1[191]);
        v10 = fe_phrasing_Process_NNPhrasing(a1, a2, a3, a4, a1[191], a5);
        if ((v10 & 0x80000000) == 0)
        {
          v10 = hlp_SetExternalSildurs(a1, a3, a4);
          if ((v10 & 0x80000000) == 0)
          {
            v10 = hlp_SetInternalSildurs(a1, a3, a4, 1);
            if ((v10 & 0x80000000) == 0)
            {
              inserted = hlp_InsertWordPhraseBoundaries(a1, a3, a4, a1[206] != 0, 0, 0);
              if ((inserted & 0x80000000) != 0)
              {
                return inserted;
              }

              if (*(a1 + 320) == 1)
              {
                inserted = hlp_setNLUPOSMappings(a1, a3, a4);
                if ((inserted & 0x80000000) != 0)
                {
                  return inserted;
                }
              }

              if (!*(a1 + 420))
              {
                return inserted;
              }

              return fe_stress_process(*a1, a3, a4, a1[7], a1[212], a1[183], a1[213], a1[214], a1[211], *(a1 + 860), *(a1 + 421));
            }
          }
        }
      }
    }

    else if (*(a1 + 28))
    {
      log_OutText((*a1)[4], "FE_PHRASING", 5, 0, "FEPHRRES: CRF Phrasing Enabled", v23, v24, v25, 0);
      v10 = hlp_MarkSildursExternal(a1, a3, a4);
      if ((v10 & 0x80000000) == 0)
      {
        v10 = fe_phrasing_Process_CRFPhrasing(a1, a2, a3, a4, a5);
        if ((v10 & 0x80000000) == 0)
        {
          v10 = hlp_SetExternalSildurs(a1, a3, a4);
          if ((v10 & 0x80000000) == 0)
          {
            v10 = hlp_SetInternalSildurs(a1, a3, a4, 1);
            if ((v10 & 0x80000000) == 0)
            {
              inserted = hlp_InsertWordPhraseBoundaries(a1, a3, a4, 0, 0, 0);
              if ((inserted & 0x80000000) != 0 || *(a1 + 320) != 1)
              {
                return inserted;
              }

              return hlp_setNLUPOSMappings(a1, a3, a4);
            }
          }
        }
      }
    }

    else
    {
      v37 = v15 ^ 1;
      if (!*(a1 + 29))
      {
        v37 = 1;
      }

      if (v37)
      {
        return fe_phrasing_Process_Depes(a1, a2, a3, a4, a5);
      }

      else
      {
        v10 = hlp_MarkSildursExternal(a1, a3, a4);
        if ((v10 & 0x80000000) == 0)
        {
          v10 = hlp_SetExternalSildurs(a1, a3, a4);
          if ((v10 & 0x80000000) == 0)
          {
            v10 = fe_phrasing_Process_Mosynt(a1, a2, a3, a4, a5);
            if ((v10 & 0x80000000) == 0)
            {
              return hlp_SetInternalSildurs(a1, a3, a4, 0);
            }
          }
        }
      }
    }

    return v10;
  }

  v10 = hlp_MarkSildursExternal(a1, a3, a4);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  if ((fe_phrasing_Process_PandP(a1, a2, a3, a4, a5) & 0x80000000) != 0)
  {
    log_OutText((*a1)[4], "FE_PHRASING", 5, 0, "FEPHRRES: processing failed, fall back to alternative method", v28, v29, v30, 0);
    v10 = paramc_ParamSetUInt((*a1)[5], "prmigactive", 0);
    if ((v10 & 0x80000000) != 0)
    {
      return v10;
    }

    goto LABEL_56;
  }

  v10 = hlp_Markup(a1, a3, a4);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  v10 = hlp_SetExternalSildurs(a1, a3, a4);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  v10 = hlp_SetInternalSildurs(a1, a3, a4, 0);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  inserted = paramc_ParamSetUInt((*a1)[5], "prmigactive", 1u);
  if ((inserted & 0x80000000) == 0)
  {
    if (*(a1 + 320) != 1 || (inserted = hlp_setNLUPOSMappings(a1, a3, a4), (inserted & 0x80000000) == 0))
    {
      if (v22 && *(a1 + 324) == 1 && *(a1 + 720) && v42 == 1)
      {
        v31 = hlp_RemoveWordPhraseBoundaries(a1, a3, a4, *(a1 + 720), &v41, &v40);
        v32 = v41;
        if ((v31 & 0x80000000) == 0)
        {
          v31 = hlp_InsertWordPhraseBoundaries(a1, a3, a4, 1, v41, v40);
          if ((v31 & 0x80000000) == 0)
          {
            log_OutText((*a1)[4], "FE_PHRASING", 5, 0, "NN Phrasing : cleanup lingdb (numwords=%d)", v33, v34, v35, *(a1 + 720));
            v31 = NNPausing_cleanLingdb(*a1, a1[7], a3, a4, (a1 + 163));
          }
        }

        inserted = v31;
        if (v32)
        {
          heap_Free((*a1)[1], v32);
        }
      }
    }
  }

  return inserted;
}

uint64_t hlp_MarkSildursExternal(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = 0;
  v15 = 0;
  v12 = 0;
  v13 = 0;
  v11 = 0;
  v6 = (*(*(a1 + 56) + 104))(a2, a3, 1, 0, &v14 + 2);
  if ((v6 & 0x80000000) == 0 && ((*(*(a1 + 56) + 184))(a2, a3, HIWORD(v14), 0, &v15 + 2) & 0x80000000) == 0 && HIWORD(v15) == 1)
  {
    v6 = (*(*(a1 + 56) + 176))(a2, a3, HIWORD(v14), 0, &v11, &v13 + 2);
    if ((v6 & 0x80000000) == 0 && HIWORD(v13) >= 2u)
    {
      v6 = (*(*(a1 + 56) + 104))(a2, a3, 2, HIWORD(v14), &v14);
      if ((v6 & 0x80000000) == 0)
      {
        v7 = v14;
        if (v14)
        {
          while (1)
          {
            v8 = (*(*(a1 + 56) + 168))(a2, a3, v7, 0, 1, &v12, &v13 + 2);
            if ((v8 & 0x80000000) != 0)
            {
              break;
            }

            if (v12 <= 0xA && ((1 << v12) & 0x610) != 0)
            {
              v8 = (*(*(a1 + 56) + 184))(a2, a3, v14, 8, &v15 + 2);
              if ((v8 & 0x80000000) != 0)
              {
                break;
              }

              if (HIWORD(v15))
              {
                v8 = (*(*(a1 + 56) + 168))(a2, a3, v14, 8, 1, &v15, &v13 + 2);
                if ((v8 & 0x80000000) != 0)
                {
                  break;
                }

                if (v15)
                {
                  v8 = (*(*(a1 + 56) + 160))(a2, a3, v14, 18, 9, "external", &v13);
                  if ((v8 & 0x80000000) != 0)
                  {
                    break;
                  }
                }
              }
            }

            v6 = (*(*(a1 + 56) + 120))(a2, a3, v14, &v14);
            if ((v6 & 0x80000000) == 0)
            {
              v7 = v14;
              if (v14)
              {
                continue;
              }
            }

            return v6;
          }

          return v8;
        }
      }
    }
  }

  return v6;
}

uint64_t hlp_Markup(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = 0;
  v31 = 0;
  v29 = 0;
  v28 = 0;
  v26 = 0;
  v27 = 0;
  v25 = 1;
  __s = 0;
  v23 = 0;
  v22 = 0;
  v6 = (*(*(a1 + 56) + 104))(a2, a3, 1, 0, &v29 + 2);
  if ((v6 & 0x80000000) == 0 && ((*(*(a1 + 56) + 184))(a2, a3, HIWORD(v29), 0, &v23) & 0x80000000) == 0 && v23 == 1)
  {
    v6 = (*(*(a1 + 56) + 176))(a2, a3, HIWORD(v29), 0, &v22, &v31 + 2);
    if ((v6 & 0x80000000) == 0 && HIWORD(v31) >= 2u)
    {
      v7 = (*(*(a1 + 56) + 104))(a2, a3, 2, HIWORD(v29), &v29);
      if ((v7 & 0x80000000) != 0)
      {
        return v7;
      }

      v6 = (*(*(a1 + 56) + 176))(a2, a3, HIWORD(v29), 1, &v28, &v27 + 2);
      if ((v6 & 0x80000000) == 0)
      {
        v8 = v29;
        if (v29)
        {
          v9 = 0;
          v10 = 0;
          v11 = 0;
          v12 = 0;
          v13 = *(v28 + 12);
          while (1)
          {
            v7 = (*(*(a1 + 56) + 168))(a2, a3, v8, 0, 1, &v30, &v31 + 2);
            if ((v7 & 0x80000000) != 0)
            {
              return v7;
            }

            if ((v30 - 9) < 2 || v30 == 4)
            {
              v7 = (*(*(a1 + 56) + 168))(a2, a3, v29, 1, 1, &v27, &v31 + 2);
              if ((v7 & 0x80000000) != 0)
              {
                return v7;
              }

              v7 = (*(*(a1 + 56) + 168))(a2, a3, v29, 2, 1, &v26 + 2, &v31 + 2);
              if ((v7 & 0x80000000) != 0)
              {
                return v7;
              }

              LOWORD(v26) = 0;
              v15 = HIWORD(v27);
              if (v9 >= HIWORD(v27))
              {
                v15 = v9;
              }

              else
              {
                v16 = 0;
                v17 = v9;
                v18 = v28 + 32 * v9 + 12;
                while (1)
                {
                  v19 = (*v18 - v13);
                  if ((HIWORD(v26) - ((HIWORD(v26) - v27) > 1)) <= (*v18 - v13))
                  {
                    break;
                  }

                  if (*(v18 - 12) == 8)
                  {
                    v16 += *(v18 + 12);
                    LOWORD(v26) = v16;
                  }

                  ++v17;
                  v18 += 32;
                  if (HIWORD(v27) == v17)
                  {
                    goto LABEL_34;
                  }
                }

                v15 = v17;
LABEL_34:
                if (v16 && v10)
                {
                  v7 = (*(*(a1 + 56) + 160))(a2, a3, v10, 8, 1, &v26, &v31);
                  if ((v7 & 0x80000000) != 0)
                  {
                    return v7;
                  }

                  v7 = (*(*(a1 + 56) + 160))(a2, a3, v10, 18, 9, "external", &v31);
                  if ((v7 & 0x80000000) != 0)
                  {
                    return v7;
                  }

                  v16 = v26;
                }

                if (v16 && v12)
                {
                  if (v11 && v27 == v11)
                  {
                    v7 = (*(*(a1 + 56) + 160))(a2, a3, v12, 7, 1, &v25, &v31);
                    if ((v7 & 0x80000000) != 0)
                    {
                      return v7;
                    }

                    v7 = (*(*(a1 + 56) + 160))(a2, a3, v12, 8, 1, &v26, &v31);
                    if ((v7 & 0x80000000) != 0)
                    {
                      return v7;
                    }
                  }

                  else if (v27 != v11)
                  {
                    v7 = (*(*(a1 + 56) + 88))(a2, a3, v29, &v29);
                    if ((v7 & 0x80000000) != 0)
                    {
                      return v7;
                    }

                    v30 = 15;
                    v7 = (*(*(a1 + 56) + 160))(a2, a3, v29, 0, 1, &v30, &v31);
                    if ((v7 & 0x80000000) != 0)
                    {
                      return v7;
                    }

                    v7 = (*(*(a1 + 56) + 160))(a2, a3, v29, 1, 1, &v27, &v31);
                    if ((v7 & 0x80000000) != 0)
                    {
                      return v7;
                    }

                    v7 = (*(*(a1 + 56) + 168))(a2, a3, v12, 2, 1, &v26 + 2, &v31 + 2);
                    if ((v7 & 0x80000000) != 0)
                    {
                      return v7;
                    }

                    v7 = (*(*(a1 + 56) + 160))(a2, a3, v29, 2, 1, &v26 + 2, &v31);
                    if ((v7 & 0x80000000) != 0)
                    {
                      return v7;
                    }

                    v7 = (*(*(a1 + 56) + 160))(a2, a3, v12, 2, 1, &v27, &v31);
                    if ((v7 & 0x80000000) != 0)
                    {
                      return v7;
                    }

                    v7 = (*(*(a1 + 56) + 176))(a2, a3, v12, 4, &__s, &v31 + 2);
                    if ((v7 & 0x80000000) != 0)
                    {
                      return v7;
                    }

                    v20 = strlen(__s);
                    v7 = (*(*(a1 + 56) + 160))(a2, a3, v29, 4, (v20 + 1), __s, &v31);
                    if ((v7 & 0x80000000) != 0)
                    {
                      return v7;
                    }

                    v7 = (*(*(a1 + 56) + 160))(a2, a3, v12, 4, 2, "P", &v31);
                    if ((v7 & 0x80000000) != 0)
                    {
                      return v7;
                    }

                    v7 = (*(*(a1 + 56) + 160))(a2, a3, v29, 7, 1, &v25, &v31);
                    if ((v7 & 0x80000000) != 0)
                    {
                      return v7;
                    }

                    v7 = (*(*(a1 + 56) + 160))(a2, a3, v29, 8, 1, &v26, &v31);
                    if ((v7 & 0x80000000) != 0)
                    {
                      return v7;
                    }

                    v12 = v29;
                    v11 = v27;
                    v7 = (*(*(a1 + 56) + 120))(a2, a3, v29, &v29);
                    if ((v7 & 0x80000000) != 0)
                    {
                      return v7;
                    }
                  }
                }
              }

              v10 = v29;
              v9 = v15;
            }

            else if (v30 == 15)
            {
              v12 = v29;
              v7 = (*(*(a1 + 56) + 168))(a2, a3, v29, 1, 1, &v27, &v31 + 2);
              if ((v7 & 0x80000000) != 0)
              {
                return v7;
              }

              v11 = v27;
            }

            v6 = (*(*(a1 + 56) + 120))(a2, a3, v29, &v29);
            if ((v6 & 0x80000000) == 0)
            {
              v8 = v29;
              if (v29)
              {
                continue;
              }
            }

            return v6;
          }
        }
      }
    }
  }

  return v6;
}

uint64_t hlp_SetExternalSildurs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v57 = *MEMORY[0x1E69E9840];
  v53 = 0;
  v54 = 0;
  v51 = 0;
  v52 = 0;
  v50 = 0;
  HIWORD(v49) = 0;
  v48 = 0;
  v47 = 0;
  v43 = 0;
  v42 = 0;
  v6 = (*(*(a1 + 56) + 104))(a2, a3, 1, 0, &v54);
  if ((v6 & 0x80000000) == 0 && ((*(*(a1 + 56) + 184))(a2, a3, v54, 0, &v54 + 2) & 0x80000000) == 0 && HIWORD(v54) == 1)
  {
    v6 = (*(*(a1 + 56) + 176))(a2, a3, v54, 0, &v42, &v53);
    if ((v6 & 0x80000000) == 0 && v53 >= 2u)
    {
      updated = (*(*(a1 + 56) + 176))(a2, a3, v54, 1, &v48, &v47);
      if ((updated & 0x80000000) != 0)
      {
LABEL_80:
        v6 = updated;
      }

      else
      {
        v8 = *(v48 + 12);
        v6 = (*(*(a1 + 56) + 104))(a2, a3, 2, v54, &v53 + 2);
        if ((v6 & 0x80000000) == 0)
        {
          v51 = 0;
          HIWORD(v50) = 0;
          v46 = 0;
          v45 = 0;
          strcpy(__s1, "normal");
          strcpy(v56, "normal");
          v44 = 0;
          v49 = 0;
          v9 = HIWORD(v53);
          if (HIWORD(v53))
          {
            v10 = 0;
            v11 = 0;
            v12 = 0;
            v13 = 0;
            while (1)
            {
              updated = (*(*(a1 + 56) + 168))(a2, a3, v9, 0, 1, &v52, &v53);
              if ((updated & 0x80000000) != 0)
              {
                goto LABEL_80;
              }

              if (v52 > 0xA || ((1 << v52) & 0x610) == 0)
              {
                v31 = HIWORD(v53);
                v21 = v12;
                goto LABEL_76;
              }

              updated = (*(*(a1 + 56) + 168))(a2, a3, HIWORD(v53), 1, 1, &v51 + 2, &v53);
              if ((updated & 0x80000000) != 0)
              {
                goto LABEL_80;
              }

              updated = (*(*(a1 + 56) + 168))(a2, a3, HIWORD(v53), 2, 1, &v51, &v53);
              if ((updated & 0x80000000) != 0)
              {
                goto LABEL_80;
              }

              HIWORD(v49) = 0;
              if (v13)
              {
                updated = (*(*(a1 + 56) + 168))(a2, a3, v13, 2, 1, &v49 + 2, &v53);
                if ((updated & 0x80000000) != 0)
                {
                  goto LABEL_80;
                }
              }

              __strcpy_chk();
              updated = hlp_UpdateDomain(a1, a2, a3, v54, &v46, HIWORD(v51), v51, &v45, v56);
              if ((updated & 0x80000000) != 0)
              {
                goto LABEL_80;
              }

              if (v45)
              {
                updated = (*(*(a1 + 56) + 168))(a2, a3);
                if ((updated & 0x80000000) != 0)
                {
                  goto LABEL_80;
                }

                v15 = HIWORD(v50);
              }

              else
              {
                v15 = v51;
                HIWORD(v50) = v51;
              }

              v41 = v13;
              if (v15 && v11 < v47)
              {
                v16 = v10;
                v17 = (v15 - 1);
                v18 = v11;
                v19 = (v48 + 32 * v11);
                v20 = (v19[3] - v8);
                v21 = v12;
                if (v17 >= (*(v19 + 6) - v8))
                {
                  v21 = v12;
                  while (1)
                  {
                    if (*v19 == 31)
                    {
                      v21 = v19[6];
                    }

                    if (v47 - 1 == v18)
                    {
                      break;
                    }

                    v22 = v19[11] - v8;
                    v19 += 8;
                    ++v18;
                    if (v17 < v22)
                    {
                      v11 = v18;
                      goto LABEL_34;
                    }
                  }

                  v11 = v47;
                }
              }

              else
              {
                v16 = v10;
                v21 = v12;
              }

LABEL_34:
              hlp_GetDomainPauseDur(a1, "spell", &v44, &v43);
              v23 = strstr(__s1, "spell");
              v24 = strstr(v56, "spell");
              v10 = v16;
              if (v23)
              {
                if (v24)
                {
                  v25 = v41;
                  if (!HIWORD(v49) || ((v26 = *(v42 + HIWORD(v49) - 1), v27 = v26 > 0x3F, v28 = (1 << v26) & 0x8C00500200000000, !v27) ? (v29 = v28 == 0) : (v29 = 1), v29))
                  {
                    LOWORD(v12) = 0;
                    v30 = 1;
                  }

                  else
                  {
                    v30 = 0;
                    if (!v12)
                    {
                      LOWORD(v12) = v44;
                    }
                  }

                  goto LABEL_55;
                }

                v25 = v41;
                if (!v12)
                {
LABEL_51:
                  v30 = 0;
                  if (v43)
                  {
                    LOWORD(v12) = v44;
                  }

                  else
                  {
                    LOWORD(v12) = 200;
                  }

                  goto LABEL_55;
                }

                v30 = 0;
              }

              else if (v24)
              {
                v25 = v41;
                if (!v21)
                {
                  goto LABEL_51;
                }

                v30 = 0;
                LOWORD(v12) = v21;
              }

              else
              {
                LOWORD(v12) = 0;
                v30 = 1;
                v25 = v41;
              }

LABEL_55:
              if (v10 >= v47)
              {
                v32 = 0;
              }

              else
              {
                v32 = 0;
                v33 = v10;
                v34 = v48 + 32 * v10 + 12;
                while (1)
                {
                  v35 = (*v34 - v8);
                  if ((v51 - ((v51 - HIWORD(v51)) > 1)) <= (*v34 - v8))
                  {
                    break;
                  }

                  if (*(v34 - 12) == 8)
                  {
                    v32 += *(v34 + 12);
                  }

                  ++v33;
                  v34 += 32;
                  if (v47 == v33)
                  {
                    v10 = v47;
                    goto LABEL_64;
                  }
                }

                v10 = v33;
              }

LABEL_64:
              if (v30)
              {
                v36 = 0;
              }

              else
              {
                v36 = v12;
              }

              v37 = v30 ^ 1;
              v38 = v32 == 0;
              if (!v32)
              {
                v32 = v36;
              }

              LOWORD(v49) = v32;
              if (!v38)
              {
                v37 = 1;
              }

              if (v25)
              {
                if (v37)
                {
                  updated = (*(*(a1 + 56) + 160))(a2, a3, v25, 8, 1, &v49, &v50);
                  if ((updated & 0x80000000) != 0)
                  {
                    goto LABEL_80;
                  }

                  updated = (*(*(a1 + 56) + 160))(a2, a3, v25, 18, 9, "external", &v50);
                  if ((updated & 0x80000000) != 0)
                  {
                    goto LABEL_80;
                  }
                }
              }

              v31 = HIWORD(v53);
              v13 = HIWORD(v53);
LABEL_76:
              v6 = (*(*(a1 + 56) + 120))(a2, a3, v31, &v53 + 2);
              if ((v6 & 0x80000000) == 0)
              {
                v9 = HIWORD(v53);
                v12 = v21;
                if (HIWORD(v53))
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
  }

  v39 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t hlp_SetInternalSildurs(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v35 = *MEMORY[0x1E69E9840];
  v31 = 0;
  v32 = 0;
  v29 = 0;
  v30 = 0;
  v28 = 0;
  HIWORD(v27) = 0;
  v23 = 0;
  v20 = 0;
  v8 = (*(*(a1 + 56) + 104))(a2, a3, 1, 0, &v32);
  if ((v8 & 0x80000000) == 0 && ((*(*(a1 + 56) + 184))(a2, a3, v32, 0, &v32 + 2) & 0x80000000) == 0 && HIWORD(v32) == 1)
  {
    v8 = (*(*(a1 + 56) + 176))(a2, a3, v32, 0, &v20, &v31);
    if ((v8 & 0x80000000) == 0 && v31 >= 2u)
    {
      v8 = (*(*(a1 + 56) + 104))(a2, a3, 2, v32, &v31 + 2);
      if ((v8 & 0x80000000) == 0)
      {
        LOWORD(v28) = 0;
        v26 = 0;
        v27 = 0;
        v29 = 0;
        v24 = 0;
        strcpy(__s, "normal");
        strcpy(v34, "normal");
        v9 = HIWORD(v31);
        if (HIWORD(v31))
        {
          LOWORD(v10) = 0;
          v11 = 0;
          while (1)
          {
            updated = (*(*(a1 + 56) + 168))(a2, a3, v9, 0, 1, &v30, &v31);
            if ((updated & 0x80000000) != 0)
            {
LABEL_52:
              v8 = updated;
              goto LABEL_53;
            }

            if ((v30 - 9) < 2 || v30 == 4)
            {
              break;
            }

            if (v30 == 15)
            {
              v10 = HIWORD(v31);
              updated = (*(*(a1 + 56) + 168))(a2, a3, HIWORD(v31), 1, 1, &v28, &v31);
              if ((updated & 0x80000000) != 0)
              {
                goto LABEL_52;
              }

              updated = (*(*(a1 + 56) + 168))(a2, a3, v10, 7, 1, &v27 + 2, &v31);
              if ((updated & 0x80000000) != 0)
              {
                goto LABEL_52;
              }
            }

LABEL_48:
            v8 = (*(*(a1 + 56) + 120))(a2, a3, HIWORD(v31), &v31 + 2);
            if ((v8 & 0x80000000) != 0)
            {
              goto LABEL_53;
            }

            v9 = HIWORD(v31);
            if (!HIWORD(v31))
            {
              if (!v11)
              {
                goto LABEL_53;
              }

              HIWORD(v26) = 0;
              updated = (*(*(a1 + 56) + 160))(a2, a3, v11, 8, 1, &v26 + 2, &v28 + 2);
              goto LABEL_52;
            }
          }

          updated = (*(*(a1 + 56) + 168))(a2, a3, HIWORD(v31), 1, 1, &v29 + 2, &v31);
          if ((updated & 0x80000000) != 0)
          {
            goto LABEL_52;
          }

          updated = (*(*(a1 + 56) + 168))(a2, a3, HIWORD(v31), 2, 1, &v29, &v31);
          if ((updated & 0x80000000) != 0)
          {
            goto LABEL_52;
          }

          LOWORD(v27) = 0;
          if (v11)
          {
            updated = (*(*(a1 + 56) + 168))(a2, a3, v11, 2, 1, &v27, &v31);
            if ((updated & 0x80000000) != 0)
            {
              goto LABEL_52;
            }

            LOWORD(v26) = 0;
            v25 = 0;
            updated = hlp_ReadSildur(a1, a2, a3, v11, &v26, &v25);
            if ((updated & 0x80000000) != 0)
            {
              goto LABEL_52;
            }

            if (v25)
            {
              v14 = 0;
            }

            else
            {
              if (v26)
              {
                v15 = a4 == 0;
              }

              else
              {
                v15 = 1;
              }

              v14 = v15;
            }
          }

          else
          {
            LOWORD(v26) = 0;
            v25 = 0;
            v14 = 1;
          }

          __strcpy_chk();
          updated = hlp_UpdateDomain(a1, a2, a3, v32, &v24 + 1, HIWORD(v29), v29, &v24, v34);
          if ((updated & 0x80000000) != 0)
          {
            goto LABEL_52;
          }

          hlp_GetDomainPauseDur(a1, __s, &v23, &v21);
          hlp_GetDomainPauseDur(a1, v34, &v22, &v21);
          v16 = v23;
          HIWORD(v26) = 0;
          v17 = v10 != 0;
          if (v14)
          {
            if (!HIWORD(v29) || !v10 || (v17 = 1, v28 != HIWORD(v29)) || HIWORD(v27) > 1u)
            {
LABEL_42:
              if (v11)
              {
                updated = (*(*(a1 + 56) + 160))(a2, a3, v11, 8, 1, &v26 + 2, &v28 + 2);
                if ((updated & 0x80000000) != 0)
                {
                  goto LABEL_52;
                }
              }

              if (v17 && v28 == HIWORD(v29))
              {
                updated = (*(*(a1 + 56) + 160))(a2, a3, v10, 8, 1, &v26 + 2, &v28 + 2);
                if ((updated & 0x80000000) != 0)
                {
                  goto LABEL_52;
                }
              }

              v11 = HIWORD(v31);
              goto LABEL_48;
            }
          }

          else
          {
            v16 = v26;
          }

          HIWORD(v26) = v16;
          goto LABEL_42;
        }
      }
    }
  }

LABEL_53:
  v18 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t hlp_setNLUPOSMappings(void *a1, uint64_t a2, uint64_t a3)
{
  v40 = 0;
  v41 = 0;
  v39 = 0;
  *v38 = 0;
  v37 = 0;
  *&__n[1] = 0;
  __n[0] = 0;
  v34 = 0;
  __s = 0;
  v32 = 0;
  v33 = 0;
  if ((com_mosynt_GetCfgParamVal(a1[11], a1[12], a1[13], "fephrase_max_search_key", "64", &v32) & 0x80000000) != 0)
  {
    v6 = 64;
  }

  else
  {
    v6 = atoi(v32);
  }

  v7 = heap_Calloc(*(*a1 + 8), 1, v6);
  if (v7)
  {
    v12 = v7;
    v13 = (*(a1[7] + 104))(a2, a3, 1, 0, &v41 + 2);
    if ((v13 & 0x80000000) != 0)
    {
LABEL_33:
      v14 = v13;
    }

    else
    {
      v14 = (*(a1[7] + 184))(a2, a3, HIWORD(v41), 0, &v37);
      if ((v14 & 0x80000000) == 0 && v37 == 1)
      {
        v14 = (*(a1[7] + 176))(a2, a3, HIWORD(v41), 0, &v33, &v40 + 2);
        if ((v14 & 0x80000000) == 0 && HIWORD(v40) >= 2u)
        {
          v14 = (*(a1[7] + 104))(a2, a3, 2, HIWORD(v41), &v41);
          if ((v14 & 0x80000000) == 0)
          {
            v15 = v41;
            if (v41)
            {
              while (1)
              {
                v13 = (*(a1[7] + 168))(a2, a3, v15, 0, 1, &v39, &v40 + 2);
                if ((v13 & 0x80000000) != 0)
                {
                  goto LABEL_33;
                }

                if (v39 <= 0xA && ((1 << v39) & 0x610) != 0)
                {
                  v13 = (*(a1[7] + 176))(a2, a3, v41, 5, &__s, &v40 + 2);
                  if ((v13 & 0x80000000) != 0)
                  {
                    goto LABEL_33;
                  }

                  if (strlen(__s) != 1)
                  {
                    v13 = (*(a1[7] + 184))(a2, a3, v41, 14, &v37);
                    if ((v13 & 0x80000000) != 0)
                    {
                      goto LABEL_33;
                    }

                    if (v37)
                    {
                      v13 = (*(a1[7] + 176))(a2, a3, v41, 14, v38, &v40 + 2);
                      if ((v13 & 0x80000000) != 0)
                      {
                        goto LABEL_33;
                      }

                      if (!HIWORD(v40))
                      {
                        *v12 = *__s;
                        *(v12 + 1) = 0;
                        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "NLUPOSMAP from %s to %s (default in lieu of NLU field)", v17, v18, v19, __s);
                        v24 = *(a1[7] + 160);
                        v25 = (strlen(v12) + 1);
                        v26 = a2;
                        v27 = a3;
                        v28 = v41;
                        v29 = v12;
                        goto LABEL_28;
                      }

                      hlp_NLUStrFind(*v38, "POS", &__n[1], __n);
                      strncpy(v12, *&__n[1], __n[0]);
                      *(v12 + __n[0]) = 0;
                      if ((ssftmap_FindReadOnly(a1[161], v12, &v34) & 0x1FFF) != 0x14)
                      {
                        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "NLUPOSMAP from %s (NLU %s) to %s", v20, v21, v22, __s);
                        v24 = *(a1[7] + 160);
                        v25 = (strlen(v34) + 1);
                        v26 = a2;
                        v27 = a3;
                        v28 = v41;
                        v29 = v34;
LABEL_28:
                        v13 = v24(v26, v27, v28, 5, v25, v29, &v40);
                        if ((v13 & 0x80000000) != 0)
                        {
                          goto LABEL_33;
                        }

                        goto LABEL_29;
                      }

                      *(v12 + 1) = 0;
                      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "NLUPOSMAP from %s (NLU %s) to %s", v20, v21, v22, __s);
                      v23 = strlen(v12);
                      v13 = (*(a1[7] + 160))(a2, a3, v41, 5, (v23 + 1), v12, &v40);
                      if ((v13 & 0x80000000) != 0)
                      {
                        goto LABEL_33;
                      }
                    }
                  }
                }

LABEL_29:
                v14 = (*(a1[7] + 120))(a2, a3, v41, &v41);
                if ((v14 & 0x80000000) == 0)
                {
                  v15 = v41;
                  if (v41)
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
    }

    heap_Free(*(*a1 + 8), v12);
  }

  else
  {
    log_OutPublic(*(*a1 + 32), "FE_PHRASING", 37000, 0, v8, v9, v10, v11, v31);
    return 2315264010;
  }

  return v14;
}

uint64_t hlp_RemoveWordPhraseBoundaries(void *a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t *a5, _WORD *a6)
{
  v26 = 0;
  v27 = 0;
  v24 = 0;
  v25 = 0;
  v23 = 0;
  *a6 = 0;
  result = (*(a1[7] + 104))(a2, a3, 1, 0, &v27 + 2);
  if ((result & 0x80000000) == 0)
  {
    result = (*(a1[7] + 152))(a2, a3, 2, HIWORD(v27), &v23);
    if ((result & 0x80000000) == 0)
    {
      if (!v23)
      {
        goto LABEL_26;
      }

      result = (*(a1[7] + 104))(a2, a3, 2, HIWORD(v27), &v27);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v13 = v27;
      if (v27)
      {
        v14 = 0;
        v15 = 4 * a4;
        do
        {
          result = (*(a1[7] + 168))(a2, a3, v13, 0, 1, &v26, &v25 + 2);
          if ((result & 0x80000000) != 0)
          {
            break;
          }

          v16 = v27;
          if (v26 <= 0xA && ((1 << v26) & 0x610) != 0)
          {
            result = (*(a1[7] + 168))(a2, a3, v27, 1, 1, &v24, &v25 + 2);
            if ((result & 0x80000000) != 0)
            {
              break;
            }

            result = (*(a1[7] + 168))(a2, a3, v27, 2, 1, &v23 + 2, &v25 + 2);
            if ((result & 0x80000000) != 0)
            {
              break;
            }

            if (*a6 && v14)
            {
              *(v14 + 4 * (*a6 - 1) + 2) = HIWORD(v23);
            }
          }

          result = (*(a1[7] + 120))(a2, a3, v27, &v27);
          if ((result & 0x80000000) != 0)
          {
            break;
          }

          if (v26 == 15)
          {
            result = (*(a1[7] + 168))(a2, a3, v16, 1, 1, &v25, &v25 + 2);
            if ((result & 0x80000000) != 0)
            {
              break;
            }

            result = (*(a1[7] + 168))(a2, a3, v16, 2, 1, &v24 + 2, &v25 + 2);
            if ((result & 0x80000000) != 0)
            {
              break;
            }

            if (!v14)
            {
              v14 = heap_Calloc(*(*a1 + 8), 1, v15);
              if (!v14)
              {
                log_OutPublic(*(*a1 + 32), "FE_PHRASING", 37000, 0, v18, v19, v20, v21, v22);
                result = 2315264010;
                break;
              }
            }

            *(v14 + 4 * *a6) = v25;
            *(v14 + 4 * (*a6)++ + 2) = HIWORD(v24);
            result = (*(a1[7] + 192))(a2, a3, v16);
          }

          v13 = v27;
        }

        while (v27);
      }

      else
      {
LABEL_26:
        v14 = 0;
      }

      *a5 = v14;
    }
  }

  return result;
}

uint64_t hlp_InsertWordPhraseBoundaries(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, unsigned int a6)
{
  v41[0] = 0;
  v39 = 0;
  v40 = 0;
  v37 = 0;
  v38 = 0;
  v36 = 0;
  v34 = 0;
  __s = 0;
  __s1 = 0;
  v32 = 0;
  result = (*(*(a1 + 56) + 104))(a2, a3, 1, 0, v41);
  if ((result & 0x80000000) == 0)
  {
    result = (*(*(a1 + 56) + 152))(a2, a3, 2, v41[0], &v32);
    if ((result & 0x80000000) == 0)
    {
      if (!v32 || (result = (*(*(a1 + 56) + 104))(a2, a3, 2, v41[0], &v40 + 2), (result & 0x80000000) == 0))
      {
        v13 = HIWORD(v40);
        v14 = 1;
        if (HIWORD(v40))
        {
          v15 = 0;
          v31 = 0;
          if (a4 == 1)
          {
            v16 = 0;
          }

          else
          {
            v16 = 200;
          }

          v29 = v16;
          v30 = (a5 + 2);
          v17 = -1;
          v18 = "*?";
          while (1)
          {
            result = (*(*(a1 + 56) + 168))(a2, a3, v13, 0, 1, &v39, &v38 + 2);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            if ((v39 - 9) < 2 || v39 == 4)
            {
              break;
            }

            if (v39 == 15)
            {
              LOWORD(v40) = HIWORD(v40);
            }

LABEL_71:
            result = (*(*(a1 + 56) + 120))(a2, a3, HIWORD(v40), &v40 + 2);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            v13 = HIWORD(v40);
            if (!HIWORD(v40))
            {
              v14 = v15 == 0;
              goto LABEL_82;
            }
          }

          result = (*(*(a1 + 56) + 168))(a2, a3, HIWORD(v40), 1, 1, &v37 + 2, &v38 + 2);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = (*(*(a1 + 56) + 168))(a2, a3, HIWORD(v40), 2, 1, &v37, &v38 + 2);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = (*(*(a1 + 56) + 168))(a2, a3, HIWORD(v40), 8, 1, &v36, &v38 + 2);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = (*(*(a1 + 56) + 184))(a2, a3, HIWORD(v40), 18, &v32 + 2);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          LOWORD(v32) = 0;
          if (a6)
          {
            v21 = v30;
            v20 = a6;
            do
            {
              v22 = *v21;
              v21 += 2;
              if (v22 == v37)
              {
                LOWORD(v32) = 1;
              }

              --v20;
            }

            while (v20);
          }

          if (HIWORD(v32))
          {
            result = (*(*(a1 + 56) + 176))(a2, a3, HIWORD(v40), 18, &__s1, &v38 + 2);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            v31 = strcmp(__s1, "external") == 0;
          }

          result = (*(*(a1 + 56) + 176))(a2, a3, HIWORD(v40), 3, &v34, &v38 + 2);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          if (strstr(v34, v18))
          {
            v15 = 1;
          }

          v23 = HIWORD(v37);
          v24 = v37;
          if (HIWORD(v37) > v37)
          {
            return 2315271857;
          }

          if (!v40)
          {
            result = hlp_InsertWordPhrase(a1, a2, a3, HIWORD(v40), SHIWORD(v37), v37, 0, v29, &v40);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

LABEL_48:
            if (v36)
            {
              v25 = v18;
              v43 = HIWORD(v40);
              v42 = 0;
              v41[1] = 0;
              if (((*(*(a1 + 56) + 120))(a2, a3) & 0x80000000) == 0)
              {
                v26 = 0;
                while (v43 && ((*(*(a1 + 56) + 168))(a2, a3) & 0x80000000) == 0)
                {
                  if (v42 == 15)
                  {
                    v26 = 1;
                  }

                  else if ((v42 - 9) < 2 || v42 == 4)
                  {
                    if (v26)
                    {
                      break;
                    }

                    v17 = v36;
                    v18 = v25;
                    if (v36 <= 0x1Du && !v31)
                    {
                      v36 = 0;
                      result = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v40), 8, 1, &v36, &v38);
                      if ((result & 0x80000000) != 0)
                      {
                        return result;
                      }

                      v17 = v36;
                    }

                    goto LABEL_71;
                  }

                  if (((*(*(a1 + 56) + 120))(a2, a3, v43, &v43) & 0x80000000) != 0)
                  {
                    break;
                  }
                }
              }

              v18 = v25;
            }

            else if (v32 == 1 && a4 == 1)
            {
              v17 = 0;
            }

            goto LABEL_71;
          }

          if (v17 < 1)
          {
            if (v17)
            {
LABEL_45:
              if (!a4)
              {
                result = (*(*(a1 + 56) + 160))(a2, a3, v40, 2, 1, &v37, &v38);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }
              }

              v17 = -1;
              goto LABEL_48;
            }

            if (a4 == 1)
            {
              result = (*(*(a1 + 56) + 160))(a2, a3);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              v23 = HIWORD(v37);
              v24 = v37;
            }

            result = hlp_InsertWordPhrase(a1, a2, a3, HIWORD(v40), v23, v24, 2, 0, &v40);
          }

          else
          {
            if (a4 == 1)
            {
              result = (*(*(a1 + 56) + 160))(a2, a3);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              v23 = HIWORD(v37);
              v24 = v37;
            }

            result = hlp_InsertWordPhrase(a1, a2, a3, HIWORD(v40), v23, v24, 1, v17, &v40);
          }

          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          goto LABEL_45;
        }

LABEL_82:
        if (a4 == 1 && v40)
        {
          result = (*(*(a1 + 56) + 160))(a2, a3, v40, 2, 1, &v37, &v38);
          if ((result & 0x80000000) != 0 || !v40)
          {
            return result;
          }
        }

        else if (!v40)
        {
          return result;
        }

        result = (*(*(a1 + 56) + 176))(a2, a3, v41[0], 0, &__s, &v38 + 2);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        if (__s && *__s)
        {
          if (__s[strlen(__s) - 1] == 63 || !v14)
          {
            return (*(*(a1 + 56) + 160))(a2, a3, v40, 4, 2, "Y", &v38);
          }
        }

        else if (!v14)
        {
          return (*(*(a1 + 56) + 160))(a2, a3, v40, 4, 2, "Y", &v38);
        }

        return (*(*(a1 + 56) + 160))(a2, a3, v40, 4, 2, "T", &v38);
      }
    }
  }

  return result;
}

uint64_t fe_phrasing_Process_Depes(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v65 = *MEMORY[0x1E69E9840];
  v62 = 0;
  v60 = 0;
  v61 = 0;
  v59 = 0;
  v58 = 0;
  v57 = 0;
  v55 = 0;
  __s = 0;
  v54 = 0;
  v53 = 0;
  __s1 = 0;
  v51 = 0;
  *a5 = 1;
  v8 = (*(a1[7] + 104))(a3, a4, 1, 0, &v61 + 2);
  if ((v8 & 0x80000000) != 0)
  {
    goto LABEL_35;
  }

  if (((*(a1[7] + 184))(a3, a4, HIWORD(v61), 0, &v53) & 0x80000000) != 0)
  {
    goto LABEL_35;
  }

  if (v53 != 1)
  {
    goto LABEL_35;
  }

  v8 = (*(a1[7] + 176))(a3, a4, HIWORD(v61), 0, &v62, &v59 + 2);
  if ((v8 & 0x80000000) != 0 || HIWORD(v59) < 2u)
  {
    goto LABEL_35;
  }

  v9 = (*(a1[7] + 176))(a3, a4, HIWORD(v61), 1, &v55, &v54 + 2);
  if ((v9 & 0x80000000) != 0)
  {
    v8 = v9;
    goto LABEL_35;
  }

  v10 = *(v55 + 12);
  LastTnMarkerUpToPos = (*(a1[7] + 104))(a3, a4, 2, HIWORD(v61), &v61);
  if ((LastTnMarkerUpToPos & 0x80000000) != 0)
  {
    goto LABEL_26;
  }

  v12 = 1;
  v13 = 1;
  while (1)
  {
    if (!v61)
    {
      v22 = heap_Alloc(*(*a1 + 8), v12 + 128);
      a1[17] = v22;
      if (!v22 || (*v22 = 0, v27 = heap_Alloc(*(*a1 + 8), v12), (a1[18] = v27) == 0) || (*v27 = 0, v28 = heap_Alloc(*(*a1 + 8), v12), (a1[19] = v28) == 0))
      {
        v8 = 2315264010;
        log_OutPublic(*(*a1 + 32), "FE_PHRASING", 37000, 0, v23, v24, v25, v26, v48);
        goto LABEL_27;
      }

      *v28 = 0;
      LastTnMarkerUpToPos = (*(a1[7] + 104))(a3, a4, 2, HIWORD(v61), &v61);
      if ((LastTnMarkerUpToPos & 0x80000000) == 0)
      {
        LOWORD(v29) = v61;
        HIWORD(v60) = v61;
        if (v61)
        {
          v30 = 0;
          do
          {
            LastTnMarkerUpToPos = (*(a1[7] + 168))(a3, a4, v29, 0, 1, &v57, &v59 + 2);
            if ((LastTnMarkerUpToPos & 0x80000000) != 0)
            {
              goto LABEL_26;
            }

            if (v57 - 9 < 2 || v57 == 4)
            {
              *v63 = 0;
              v50 = 0;
              v53 = 0;
              LastTnMarkerUpToPos = (*(a1[7] + 168))(a3, a4, HIWORD(v60), 1, 1, &v59, &v59 + 2);
              if ((LastTnMarkerUpToPos & 0x80000000) != 0)
              {
                goto LABEL_26;
              }

              LastTnMarkerUpToPos = (*(a1[7] + 168))(a3, a4, HIWORD(v60), 2, 1, &v58, &v59 + 2);
              if ((LastTnMarkerUpToPos & 0x80000000) != 0)
              {
                goto LABEL_26;
              }

              if ((v58 - v59) <= 1)
              {
                v32 = 0;
              }

              else
              {
                v32 = -1;
              }

              *v63 = 0;
              v33 = v54;
              v34 = HIWORD(v54);
              if (v54 < HIWORD(v54))
              {
                v49 = v30;
                v35 = v60;
                v36 = 32 * v54;
                do
                {
                  if ((*(v55 + v36 + 12) - v10) >= (v58 + v32))
                  {
                    break;
                  }

                  if (*(v55 + v36) == 8 && v35 != 0)
                  {
                    *v63 += *(v55 + v36 + 24);
                    LastTnMarkerUpToPos = (*(a1[7] + 160))(a3, a4, v35, 8, 1, v63, &v50);
                    if ((LastTnMarkerUpToPos & 0x80000000) != 0)
                    {
                      goto LABEL_26;
                    }

                    LastTnMarkerUpToPos = (*(a1[7] + 160))(a3, a4, v35, 18, 9, "external", &v50);
                    if ((LastTnMarkerUpToPos & 0x80000000) != 0)
                    {
                      goto LABEL_26;
                    }

                    v34 = HIWORD(v54);
                  }

                  ++v33;
                  v36 += 32;
                }

                while (v33 < v34);
                v30 = v49;
              }

              LOWORD(v54) = v33;
              *v63 = 0;
              if (((*(a1[7] + 184))(a3, a4, HIWORD(v60), 8, &v53) & 0x80000000) != 0 || !v53)
              {
                LastTnMarkerUpToPos = (*(a1[7] + 160))(a3, a4, HIWORD(v60), 8, 1, v63, &v50);
                if ((LastTnMarkerUpToPos & 0x80000000) != 0)
                {
                  goto LABEL_26;
                }
              }

              v38 = HIWORD(v60);
              LOWORD(v60) = HIWORD(v60);
            }

            else if (v57 == 5)
            {
              v39 = HIWORD(v60);
              v38 = v30;
              if (HIWORD(v60) != v30)
              {
                LastTnMarkerUpToPos = (*(a1[7] + 176))(a3, a4, HIWORD(v60), 4, &__s1, &v59 + 2);
                if ((LastTnMarkerUpToPos & 0x80000000) != 0)
                {
                  goto LABEL_26;
                }

                LastTnMarkerUpToPos = (*(a1[7] + 168))(a3, a4, HIWORD(v60), 1, 1, &v59, &v59 + 2);
                if ((LastTnMarkerUpToPos & 0x80000000) != 0)
                {
                  goto LABEL_26;
                }

                LastTnMarkerUpToPos = (*(a1[7] + 168))(a3, a4, HIWORD(v60), 2, 1, &v58, &v59 + 2);
                if ((LastTnMarkerUpToPos & 0x80000000) != 0)
                {
                  goto LABEL_26;
                }

                LastTnMarkerUpToPos = hlp_GetLastTnMarkerUpToPos(a1, a3, a4, HIWORD(v61), v59, v64);
                if ((LastTnMarkerUpToPos & 0x80000000) != 0)
                {
                  goto LABEL_26;
                }

                v40 = __s1;
                if (!strcmp(__s1, "phon"))
                {
                  v40 = v64;
                  __s1 = v64;
                }

                LastTnMarkerUpToPos = hlp_Remap(a1, a3, a4, HIWORD(v61), HIWORD(v60), v40, &v58);
                if ((LastTnMarkerUpToPos & 0x80000000) != 0)
                {
                  goto LABEL_26;
                }

                v51 = 0;
                strcpy(v63, "tnpausedur");
                v41 = strlen(__s1);
                if (v41 < 255 - strlen(v63))
                {
                  __strcat_chk();
                  if ((paramc_ParamGetUInt(*(*a1 + 40), v63, &v51) & 0x80000000) != 0)
                  {
                    v51 = 0;
                  }
                }

                v42 = __s1;
                if (strstr(__s1, "spell"))
                {
                  v43 = HIWORD(v54);
                  v44 = v58;
                  v45 = v55;
                  if (HIWORD(v54))
                  {
                    v46 = (v55 + 12);
                    do
                    {
                      v47 = (*v46 - v10);
                      if (v58 <= (*v46 - v10))
                      {
                        break;
                      }

                      if (*(v46 - 3) == 31)
                      {
                        v51 = v46[3];
                      }

                      v46 += 8;
                      --v43;
                    }

                    while (v43);
                  }
                }

                else
                {
                  v44 = v58;
                  v45 = v55;
                }

                LastTnMarkerUpToPos = hlp_Phrasing(a1, v62, v44, v42, a3, a4, &v61, v45, &v54, &v54 + 1, v10, v51, &v60, v12);
                if ((LastTnMarkerUpToPos & 0x80000000) != 0)
                {
                  goto LABEL_26;
                }

                v29 = v61;
                HIWORD(v60) = v61;
                v30 = v39;
                if (!v61)
                {
                  break;
                }

                continue;
              }
            }

            else
            {
              v38 = HIWORD(v60);
            }

            LastTnMarkerUpToPos = (*(a1[7] + 120))(a3, a4, v38, &v60 + 2);
            if ((LastTnMarkerUpToPos & 0x80000000) != 0)
            {
              goto LABEL_26;
            }

            v29 = HIWORD(v60);
            if (!v61)
            {
              break;
            }
          }

          while (v29);
        }

        LastTnMarkerUpToPos = hlp_InsertWordPhraseBoundaries(a1, a3, a4, 0, 0, 0);
      }

LABEL_26:
      v8 = LastTnMarkerUpToPos;
      goto LABEL_27;
    }

    LastTnMarkerUpToPos = (*(a1[7] + 168))(a3, a4);
    if ((LastTnMarkerUpToPos & 0x80000000) != 0)
    {
      goto LABEL_26;
    }

    if (v57 > 0xA || ((1 << v57) & 0x610) == 0)
    {
      goto LABEL_25;
    }

    if (!v13)
    {
      ++v12;
    }

    LastTnMarkerUpToPos = (*(a1[7] + 168))(a3, a4, v61, 1, 1, &v59, &v59 + 2);
    if ((LastTnMarkerUpToPos & 0x80000000) != 0)
    {
      goto LABEL_26;
    }

    LastTnMarkerUpToPos = (*(a1[7] + 168))(a3, a4, v61, 2, 1, &v58, &v59 + 2);
    if ((LastTnMarkerUpToPos & 0x80000000) != 0)
    {
      goto LABEL_26;
    }

    LastTnMarkerUpToPos = (*(a1[7] + 176))(a3, a4, v61, 5, &__s, &v59 + 2);
    if ((LastTnMarkerUpToPos & 0x80000000) != 0)
    {
      goto LABEL_26;
    }

    if (v58 < v59)
    {
      break;
    }

    v15 = strlen(__s);
    v13 = 0;
    if (v15 <= (v58 - v59))
    {
      v16 = v58 - v59;
    }

    else
    {
      v16 = v15;
    }

    v12 += v16;
LABEL_25:
    LastTnMarkerUpToPos = (*(a1[7] + 120))(a3, a4, v61, &v61);
    if ((LastTnMarkerUpToPos & 0x80000000) != 0)
    {
      goto LABEL_26;
    }
  }

  v8 = 2315271857;
LABEL_27:
  v17 = a1[17];
  if (v17)
  {
    heap_Free(*(*a1 + 8), v17);
  }

  a1[17] = 0;
  v18 = a1[18];
  if (v18)
  {
    heap_Free(*(*a1 + 8), v18);
  }

  a1[18] = 0;
  v19 = a1[19];
  if (v19)
  {
    heap_Free(*(*a1 + 8), v19);
  }

  a1[19] = 0;
LABEL_35:
  v20 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t fe_phrasing_ProcessEnd(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 62343, 1728);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2315264008;
  }
}

uint64_t fe_phrasing_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2315264001;
  }

  result = 0;
  *a2 = &IFePhrasing;
  return result;
}

uint64_t hlp_ReadSildur(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _WORD *a5, _DWORD *a6)
{
  *a5 = 0;
  *a6 = 0;
  if (!a4)
  {
    return 0;
  }

  v17 = 0;
  __s1 = 0;
  v15 = 0;
  v12 = (*(*(a1 + 56) + 184))(a2, a3, a4, 8, &v17);
  if ((v12 & 0x80000000) != 0)
  {
    return v12;
  }

  if (v17)
  {
    v12 = (*(*(a1 + 56) + 168))(a2, a3, a4, 8, 1, a5, &v15);
    if ((v12 & 0x80000000) != 0)
    {
      return v12;
    }
  }

  v13 = (*(*(a1 + 56) + 184))(a2, a3, a4, 18, &v17);
  if ((v13 & 0x80000000) == 0)
  {
    if (v17)
    {
      v13 = (*(*(a1 + 56) + 176))(a2, a3, a4, 18, &__s1, &v15);
      if ((v13 & 0x80000000) == 0 && !strcmp(__s1, "external"))
      {
        *a6 = 1;
      }
    }
  }

  return v13;
}

uint64_t hlp_CopyWordRec(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0;
  v11 = 0;
  v18 = 0;
  __s = 0;
  v16 = 0;
  v15 = 0;
  while (1)
  {
    result = (*(*(a1 + 56) + 184))(a2, a3, a4, v11, &v18 + 2);
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    if (HIWORD(v18))
    {
      if (v11 <= 0x11u && ((1 << v11) & 0x20186) != 0)
      {
        result = (*(*(a1 + 56) + 168))(a2, a3, a4, v11, 1, &v18, &v16 + 2);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        if (v11 == 8 && *(a1 + 112) && v18)
        {
          v15 = 0;
          v10 = 1;
          (*(*(a1 + 56) + 160))(a2, a3, a4, 8, 1, &v15, &v16);
        }

        result = (*(*(a1 + 56) + 160))(a2, a3, a5, v11, 1, &v18, &v16);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }
      }

      else
      {
        result = (*(*(a1 + 56) + 176))(a2, a3, a4);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v14 = strlen(__s);
        result = (*(*(a1 + 56) + 160))(a2, a3, a5, v11, (v14 + 1), __s, &v16);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }
      }
    }

    v13 = v11++;
    if (v13 >= 0x15)
    {
      if (v10 == 1)
      {
        result = (*(*(a1 + 56) + 184))(a2, a3, a4, 7, &v18 + 2);
        if ((result & 0x80000000) == 0)
        {
          v15 = 3;
          return (*(*(a1 + 56) + 160))(a2, a3, a4, 7, 1, &v15, &v16);
        }
      }

      return result;
    }
  }

  return result;
}

uint64_t hlp_splitNLURangeTags(uint64_t *a1, char *__s, uint64_t *a3, unsigned __int8 **a4)
{
  v4 = 2315264010;
  if (!__s)
  {
    return 2315264007;
  }

  v7 = __s;
  v8 = *a1;
  v9 = *(*a1 + 8);
  v10 = strlen(__s);
  v11 = heap_Calloc(v9, 1, v10 + 1);
  if (v11)
  {
    v12 = v11;
    strcpy(v11, v7);
    v13 = strlen(v7);
    v14 = heap_Calloc(*(v8 + 8), 1, v13 + 1);
    if (!v14)
    {
      v92 = *(v8 + 8);
      v93 = v12;
LABEL_234:
      heap_Free(v92, v93);
      return v4;
    }

    v105 = a4;
    v113 = v14;
    strcpy(v14, v7);
    v15 = 0;
    v16 = v7;
    do
    {
      if (hlp_NLUStrKeyLen(v16) >= 3)
      {
        v17 = *v16 - 69;
        v18 = v17 > 0xE;
        v19 = (1 << v17) & 0x4011;
        v20 = v18 || v19 == 0;
        if (!v20 && v16[1] == 95)
        {
          ++v15;
        }
      }

      v16 = hlp_NLUStrNext(v16);
    }

    while (v16);
    if (!v15)
    {
      goto LABEL_235;
    }

    v21 = heap_Calloc(*(v8 + 8), 8, v15);
    if (!v21)
    {
LABEL_233:
      heap_Free(*(v8 + 8), v12);
      v92 = *(v8 + 8);
      v93 = v113;
      goto LABEL_234;
    }

    v22 = v21;
    v110 = 0;
    v111 = v12;
    v23 = v7;
    v106 = a3;
    v112 = v7;
    do
    {
      v24 = hlp_NLUStrKeyLen(v23);
      if (v24 >= 3)
      {
        v25 = *v23 - 69;
        v18 = v25 > 0xE;
        v26 = (1 << v25) & 0x4011;
        v27 = v18 || v26 == 0;
        if (!v27 && v23[1] == 95)
        {
          v28 = v24;
          v29 = heap_Calloc(*(v8 + 8), 1, v24 - 1);
          if (!v29)
          {
            v114 = v22;
            goto LABEL_227;
          }

          v30 = v29;
          strncpy(v29, v23 + 2, v28 - 2);
          v31 = v110;
          if (v110)
          {
            v32 = v110;
            v33 = v22;
            v34 = v110;
            while (1)
            {
              if (!*v33)
              {
LABEL_28:
                a3 = v106;
                v31 = v110;
                v7 = v112;
                goto LABEL_30;
              }

              if (!strcmp(*v33, v30))
              {
                break;
              }

              ++v33;
              if (!--v34)
              {
                goto LABEL_28;
              }
            }

            heap_Free(*(v8 + 8), v30);
            a3 = v106;
            v7 = v112;
          }

          else
          {
            v32 = 0;
LABEL_30:
            *(v22 + 8 * v32) = v30;
            v110 = v31 + 1;
          }
        }
      }

      v23 = hlp_NLUStrNext(v23);
    }

    while (v23);
    v35 = *(v8 + 8);
    if (!v110)
    {
      heap_Free(v35, v22);
      goto LABEL_235;
    }

    v114 = heap_Realloc(v35, v22, 8 * v110);
    if (v114)
    {
      v104 = heap_Calloc(*(v8 + 8), 2, v110);
      if (v104)
      {
        v36 = v7;
        do
        {
          v37 = hlp_NLUStrKeyLen(v36);
          if (v37 >= 3)
          {
            v38 = *v36 - 69;
            v18 = v38 > 0xE;
            v39 = (1 << v38) & 0x4011;
            v40 = v18 || v39 == 0;
            if (!v40 && v36[1] == 95)
            {
              v41 = 0;
              v42 = v37 - 2;
              do
              {
                v43 = *(v114 + 8 * v41);
                if (!v43)
                {
                  break;
                }

                if (!strncmp(v43, v36 + 2, v42))
                {
                  if ((v41 & 0x8000) == 0)
                  {
                    ++*(v104 + 2 * (v41 & 0x7FFF));
                  }

                  break;
                }

                ++v41;
              }

              while (v110 != v41);
            }
          }

          v36 = hlp_NLUStrNext(v36);
        }

        while (v36);
        v44 = heap_Calloc(*(v8 + 8), 8, v110);
        if (v44)
        {
          v45 = v44;
          v46 = 0;
          do
          {
            v47 = heap_Calloc(*(v8 + 8), 8, *(v104 + 2 * v46));
            *(v45 + 8 * v46) = v47;
            if (!v47)
            {
              goto LABEL_212;
            }

            ++v46;
          }

          while (v110 != v46);
          v48 = heap_Calloc(*(v8 + 8), 2, v110);
          if (!v48)
          {
LABEL_212:
            v63 = 0;
            goto LABEL_213;
          }

          v108 = v48;
          v49 = v7;
          do
          {
            v50 = hlp_NLUStrKeyLen(v49);
            if (v50 >= 3)
            {
              v51 = *v49 - 69;
              v18 = v51 > 0xE;
              v52 = (1 << v51) & 0x4011;
              if (!v18 && v52 != 0 && v49[1] == 95)
              {
                KeyIdx = hlp_getKeyIdx(v114, v110, v49 + 2, (v50 - 2));
                if ((KeyIdx & 0x80000000) == 0)
                {
                  v55 = KeyIdx;
                  v56 = *(v45 + 8 * KeyIdx);
                  v57 = hlp_NLUStrKeyValue(v49);
                  v58 = v57;
                  v59 = v57 ? hlp_NLUStrLength(v57) : 0;
                  if (!hlp_checkValExist(v56, *(v108 + 2 * v55), v58, v59))
                  {
                    v60 = heap_Calloc(*(v8 + 8), 1, v59 + 1);
                    if (!v60)
                    {
                      v12 = v111;
                      v63 = v108;
                      goto LABEL_213;
                    }

                    if (v58)
                    {
                      v60 = strncpy(v60, v58, v59);
                    }

                    v61 = *(v108 + 2 * v55);
                    *(v56 + 8 * v61) = v60;
                    *(v108 + 2 * v55) = v61 + 1;
                  }
                }
              }
            }

            v49 = hlp_NLUStrNext(v49);
          }

          while (v49);
          v12 = v111;
          v62 = v112;
          v63 = v108;
          while (1)
          {
            v64 = heap_Realloc(*(v8 + 8), *(v45 + 8 * v49), 8 * *(v108 + 2 * v49));
            if (!v64)
            {
              break;
            }

            *(v45 + 8 * v49++) = v64;
            if (v110 == v49)
            {
              v65 = 0;
              while (!*(v63 + 2 * v65))
              {
LABEL_204:
                if (++v65 == v110)
                {
                  v4 = 0;
                  goto LABEL_213;
                }
              }

              v66 = 0;
              v109 = v65;
              while (2)
              {
                v67 = *(v114 + 8 * v65);
                v68 = *(*(v45 + 8 * v65) + 8 * v66);
                v116 = 0;
                v115 = 0;
                if (v68)
                {
                  v69 = strlen(v68);
                }

                else
                {
                  v69 = 0;
                }

                v70 = strlen(v67);
                v71 = heap_Calloc(*(v8 + 8), 1, v70 + 3);
                if (!v71)
                {
                  v82 = 0;
                  v84 = 0;
                  goto LABEL_159;
                }

                v72 = v71;
                strcpy(v71, "S_");
                strcat(v71, v67);
                v73 = strlen(v67);
                v74 = heap_Calloc(*(v8 + 8), 1, v73 + 3);
                v75 = v74;
                if (v74)
                {
                  v107 = v69;
                  strcpy(v74, "I_");
                  strcat(v74, v67);
                  v76 = strlen(v67);
                  v77 = heap_Calloc(*(v8 + 8), 1, v76 + 3);
                  v78 = v77;
                  if (!v77)
                  {
                    v82 = 0;
                    v84 = 0;
                    goto LABEL_154;
                  }

                  strcpy(v77, "E_");
                  strcat(v77, v67);
                  if (!hlp_NLUStrFind(v62, v72, &v115, &v116) || (!v68 || v116 || *v68 != 32 || *(v68 + 1)) && (!v68 || v69 != v116 || strncmp(v68, v115, v116)))
                  {
                    heap_Free(*(v8 + 8), v72);
                    v72 = 0;
                  }

                  if (!hlp_NLUStrFind(v62, v75, &v115, &v116) || (!v68 || v116 || *v68 != 32 || *(v68 + 1)) && (!v68 || v69 != v116 || strncmp(v68, v115, v116)))
                  {
                    heap_Free(*(v8 + 8), v75);
                    v75 = 0;
                  }

                  if (!hlp_NLUStrFind(v62, v78, &v115, &v116) || (!v68 || v116 || *v68 != 32 || *(v68 + 1)) && (!v68 || v69 != v116 || strncmp(v68, v115, v116)))
                  {
                    heap_Free(*(v8 + 8), v78);
                    v78 = 0;
                  }

                  v79 = strlen(v62);
                  v80 = heap_Calloc(*(v8 + 8), 1, v79 + 1);
                  v81 = v62;
                  v82 = v80;
                  if (v80)
                  {
                    v83 = strlen(v81);
                    v84 = heap_Calloc(*(v8 + 8), 1, v83 + 1);
                    if (v84)
                    {
                      if (v72 && !v75 && !v78)
                      {
                        strcpy(v82, "S_");
                        strcat(v82, v67);
                        if (v107)
                        {
                          *&v82[strlen(v82)] = 58;
                          if (v68)
                          {
                            strcat(v82, v68);
                          }

                          strcpy(v84, "I_");
                          strcat(v84, v67);
                          *&v84[strlen(v84)] = 58;
                          v85 = v68;
                          if (!v68)
                          {
                            v78 = 0;
                            v75 = 0;
                            goto LABEL_154;
                          }

LABEL_153:
                          strcat(v84, v85);
LABEL_154:
                          heap_Free(*(v8 + 8), v72);
LABEL_155:
                          if (v75)
                          {
LABEL_156:
                            heap_Free(*(v8 + 8), v75);
                          }

                          if (v78)
                          {
                            goto LABEL_158;
                          }

LABEL_159:
                          if (v68 && *v68 == 32 && !*(v68 + 1))
                          {
                            v68 = 0;
                          }

                          v12 = v111;
                          hlp_NLUStrRemoveRangeKey(v111, v67, v68);
                          hlp_NLUStrRemoveRangeKey(v113, v67, v68);
                          v89 = strlen(v111);
                          if (v89 && v111[v89 - 1] != 59)
                          {
                            *&v111[strlen(v111)] = 59;
                          }

                          strcat(v111, v82);
                          v90 = strlen(v113);
                          v63 = v108;
                          if (v90 && v113[v90 - 1] != 59)
                          {
                            *&v113[strlen(v113)] = 59;
                          }

                          strcat(v113, v84);
                          if (v82)
                          {
                            heap_Free(*(v8 + 8), v82);
                          }

                          v65 = v109;
                          if (v84)
                          {
                            heap_Free(*(v8 + 8), v84);
                          }

                          ++v66;
                          v62 = v112;
                          if (v66 >= *(v108 + 2 * v109))
                          {
                            goto LABEL_204;
                          }

                          continue;
                        }

                        v78 = 0;
                        v75 = 0;
LABEL_151:
                        v84[2] = 0;
                        v88 = 24393;
LABEL_152:
                        *v84 = v88;
                        v85 = v67;
                        goto LABEL_153;
                      }

                      if (v72)
                      {
                        v86 = 1;
                      }

                      else
                      {
                        v86 = v75 == 0;
                      }

                      v87 = !v86;
                      if (!v86 && !v78)
                      {
                        strcpy(v82, "I_");
                        strcat(v82, v67);
                        if (v107)
                        {
                          *&v82[strlen(v82)] = 58;
                          if (v68)
                          {
                            strcat(v82, v68);
                          }

                          strcpy(v84, "I_");
                          strcat(v84, v67);
                          *&v84[strlen(v84)] = 58;
                          if (!v68)
                          {
                            v78 = 0;
                            goto LABEL_156;
                          }

                          goto LABEL_149;
                        }

                        v78 = 0;
                        strcpy(v84, "I_");
LABEL_183:
                        strcat(v84, v67);
                        goto LABEL_156;
                      }

                      if (!v72 && !v75 && v78)
                      {
                        strcpy(v82, "I_");
                        strcat(v82, v67);
                        if (!v107)
                        {
                          strcpy(v84, "E_");
                          strcat(v84, v67);
                          goto LABEL_158;
                        }

                        *&v82[strlen(v82)] = 58;
                        if (v68)
                        {
                          strcat(v82, v68);
                        }

                        strcpy(v84, "E_");
                        strcat(v84, v67);
                        *&v84[strlen(v84)] = 58;
                        if (!v68)
                        {
LABEL_158:
                          heap_Free(*(v8 + 8), v78);
                          goto LABEL_159;
                        }

                        goto LABEL_149;
                      }

                      if (v72 && v78)
                      {
                        strcpy(v82, "S_");
                        strcat(v82, v67);
                        if (v107)
                        {
                          *&v82[strlen(v82)] = 58;
                          if (v68)
                          {
                            strcat(v82, v68);
                          }

                          strcpy(v84, "E_");
                          strcat(v84, v67);
                          *&v84[strlen(v84)] = 58;
                          v85 = v68;
                          if (v68)
                          {
                            goto LABEL_153;
                          }

                          goto LABEL_154;
                        }

                        v84[2] = 0;
                        v88 = 24389;
                        goto LABEL_152;
                      }

                      if (v72 && v75 && !v78)
                      {
                        strcpy(v82, "S_");
                        strcat(v82, v67);
                        if (!v107)
                        {
                          v78 = 0;
                          goto LABEL_151;
                        }

                        *&v82[strlen(v82)] = 58;
                        if (v68)
                        {
                          strcat(v82, v68);
                        }

                        strcpy(v84, "I_");
                        strcat(v84, v67);
                        *&v84[strlen(v84)] = 58;
                        if (v68)
                        {
                          v85 = v68;
                          goto LABEL_153;
                        }

LABEL_124:
                        v78 = 0;
                        goto LABEL_154;
                      }

                      v91 = v87 ^ 1;
                      if (!v78)
                      {
                        v91 = 1;
                      }

                      if ((v91 & 1) == 0)
                      {
                        strcpy(v82, "I_");
                        strcat(v82, v67);
                        if (!v107)
                        {
                          strcpy(v84, "E_");
                          goto LABEL_183;
                        }

                        *&v82[strlen(v82)] = 58;
                        if (v68)
                        {
                          strcat(v82, v68);
                        }

                        strcpy(v84, "E_");
                        strcat(v84, v67);
                        *&v84[strlen(v84)] = 58;
                        if (!v68)
                        {
                          goto LABEL_156;
                        }

LABEL_149:
                        strcat(v84, v68);
                        goto LABEL_155;
                      }
                    }
                  }

                  else
                  {
                    v84 = 0;
                  }

                  if (v72)
                  {
                    goto LABEL_154;
                  }

                  goto LABEL_155;
                }

                break;
              }

              v82 = 0;
              v84 = 0;
              goto LABEL_124;
            }
          }

LABEL_213:
          v95 = 0;
          do
          {
            v96 = *(v45 + 8 * v95);
            if (v96)
            {
              if (v63)
              {
                v97 = *(v63 + 2 * v95);
                if (v97)
                {
                  for (i = 0; i < v97; ++i)
                  {
                    v99 = *(*(v45 + 8 * v95) + 8 * i);
                    if (v99)
                    {
                      heap_Free(*(v8 + 8), v99);
                      v97 = *(v63 + 2 * v95);
                    }
                  }

                  v96 = *(v45 + 8 * v95);
                }
              }

              heap_Free(*(v8 + 8), v96);
            }

            ++v95;
          }

          while (v95 != v110);
          heap_Free(*(v8 + 8), v45);
          if (v63)
          {
            heap_Free(*(v8 + 8), v63);
          }
        }

        a3 = v106;
        heap_Free(*(v8 + 8), v104);
LABEL_227:
        v94 = v110;
        if (!v110)
        {
          goto LABEL_232;
        }

LABEL_228:
        v100 = 0;
        v101 = v94;
        do
        {
          v102 = *(v114 + 8 * v100);
          if (v102)
          {
            heap_Free(*(v8 + 8), v102);
          }

          ++v100;
        }

        while (v101 != v100);
LABEL_232:
        heap_Free(*(v8 + 8), v114);
        if (v4)
        {
          goto LABEL_233;
        }

LABEL_235:
        v4 = 0;
        *a3 = v12;
        *v105 = v113;
        return v4;
      }
    }

    else
    {
      v114 = v22;
    }

    v94 = v110;
    goto LABEL_228;
  }

  return v4;
}

uint64_t hlp_GetSubPosForSEPX(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, const char *a5, unsigned int a6, int a7, char **a8)
{
  v15 = heap_Calloc(*(*a1 + 8), 1, a6 + 1);
  *a8 = v15;
  if (!v15)
  {
    return 2315264010;
  }

  if (a2 >= a3)
  {
    v18 = 1;
    if (a7)
    {
      goto LABEL_8;
    }

LABEL_17:
    LOWORD(v22) = 0;
    if (a6 && v18)
    {
      v22 = 0;
      while (a5[v22] != 45 || --v18)
      {
        if (++v22 >= a6)
        {
          goto LABEL_27;
        }
      }

      v18 = 0;
    }

LABEL_27:
    if ((a6 - 1 == v22) == v18)
    {
      v23 = v22;
LABEL_30:
      v24 = a5;
      goto LABEL_31;
    }

LABEL_29:
    v23 = a6;
    goto LABEL_30;
  }

  v16 = (a4 + a2);
  v17 = a3 - a2;
  v18 = 1;
  do
  {
    v19 = *v16++;
    if (v19 == 45)
    {
      ++v18;
    }

    --v17;
  }

  while (v17);
  if (!a7)
  {
    goto LABEL_17;
  }

LABEL_8:
  LOWORD(v20) = a6 - 1;
  if (a6 != 1 && v18)
  {
    v20 = (a6 - 1);
    while (a5[v20] != 45 || --v18)
    {
      if (!--v20)
      {
        goto LABEL_24;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  if (v18)
  {
    goto LABEL_29;
  }

LABEL_25:
  v23 = ((~v20 | 0xFFFF0000) + a6);
  v24 = &a5[v20 + 1];
LABEL_31:
  strncpy(v15, v24, v23);
  return 0;
}

uint64_t hlp_UpdateDomain(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int16 *a5, unsigned int a6, unsigned int a7, unsigned __int16 *a8, char *a9)
{
  v13 = a4;
  v31 = 0;
  v30 = 0;
  v29 = 0;
  __src = 0;
  *a8 = 0;
  v17 = *a5;
  if (*a5)
  {
    v25 = a4;
    v31 = *a5;
    v28 = 0;
    v27 = 0;
    goto LABEL_3;
  }

  v21 = (*(*(a1 + 56) + 104))(a2, a3, 2, a4, &v31);
  if ((v21 & 0x80000000) == 0)
  {
    v25 = v13;
    v17 = v31;
    v28 = 0;
    v27 = 0;
    if (v31)
    {
      do
      {
LABEL_3:
        v18 = (*(*(a1 + 56) + 168))(a2, a3, v17, 0, 1, &v30, &v29);
        if ((v18 & 0x80000000) != 0)
        {
          return v18;
        }

        v19 = v31;
        if (v30 == 5)
        {
          *a5 = v31;
          v18 = (*(*(a1 + 56) + 168))(a2, a3);
          if ((v18 & 0x80000000) != 0)
          {
            return v18;
          }

          v18 = (*(*(a1 + 56) + 168))(a2, a3, v31, 2, 1, &v27, &v29);
          if ((v18 & 0x80000000) != 0)
          {
            return v18;
          }

          v20 = 0;
          v19 = v31;
          if (v28 <= a6 && v27 >= a7)
          {
            *a8 = v31;
            v20 = 1;
          }
        }

        else
        {
          v20 = 0;
        }

        v21 = (*(*(a1 + 56) + 120))(a2, a3, v19, &v31);
        if ((v21 & 0x80000000) != 0)
        {
          return v21;
        }

        v17 = v31;
        if (v31)
        {
          v22 = v20;
        }

        else
        {
          v22 = 1;
        }
      }

      while ((v22 & 1) == 0 && v28 <= a6);
      if ((v20 & 1) == 0)
      {
        goto LABEL_24;
      }

      v21 = (*(*(a1 + 56) + 176))(a2, a3, *a8, 4, &__src, &v29);
      if ((v21 & 0x80000000) == 0)
      {
        v23 = strncpy(a9, __src, 0x100uLL);
        a9[256] = 0;
        if (!strcmp(v23, "phon"))
        {
          return hlp_GetLastTnMarkerUpToPos(a1, a2, a3, v25, v28, a9);
        }
      }
    }

    else
    {
LABEL_24:
      strncpy(a9, "normal", 0x100uLL);
      a9[256] = 0;
    }
  }

  return v21;
}

uint64_t hlp_GetDomainPauseDur(uint64_t a1, char *__s, int *a3, _DWORD *a4)
{
  v14 = *MEMORY[0x1E69E9840];
  *a3 = 0;
  *a4 = 0;
  strcpy(__sa, "tnpausedur");
  v8 = strlen(__s);
  result = strlen(__sa);
  if (v8 < 255 - result)
  {
    v12 = 0;
    __strcat_chk();
    result = paramc_ParamGetUInt(*(*a1 + 40), __sa, &v12);
    if ((result & 0x80000000) != 0 || !v12)
    {
      result = strstr(__s, "spell");
      if (result)
      {
        v10 = 100;
      }

      else
      {
        v10 = 200;
      }

      *a3 = v10;
    }

    else
    {
      *a3 = v12;
      *a4 = 1;
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t hlp_GetLastTnMarkerUpToPos(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, char *a6)
{
  v14 = 0;
  v13 = 0;
  result = (*(*(a1 + 56) + 176))(a2, a3, a4, 1, &v14, &v13);
  if ((result & 0x80000000) == 0)
  {
    v9 = v14 + 12;
    v10 = *(v14 + 12);
    strncpy(a6, "normal", 0xFFuLL);
    a6[255] = 0;
    v11 = v13;
    if (v13)
    {
      do
      {
        v12 = (*v9 - v10);
        if (a5 < (*v9 - v10))
        {
          break;
        }

        if (*(v9 - 12) == 21)
        {
          strncpy(a6, *(v9 + 12), 0xFFuLL);
          a6[255] = 0;
        }

        v9 += 32;
        --v11;
      }

      while (v11);
    }

    return 0;
  }

  return result;
}

uint64_t hlp_Remap(void *a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, const char *a6, _WORD *a7)
{
  v34 = *MEMORY[0x1E69E9840];
  v31 = a5;
  v30 = 0;
  v29 = 0;
  __s1 = 0;
  v27 = 0;
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  v25 = 0;
  v24 = -1;
  v33[0] = 0;
  v12 = (*(a1[7] + 120))(a2, a3, a5, &v31);
  if ((v12 & 0x80000000) == 0)
  {
    v13 = v31;
    if (v31)
    {
      while (1)
      {
        LastTnMarkerUpToPos = (*(a1[7] + 168))(a2, a3, v13, 0, 1, &v29, &v30);
        if ((LastTnMarkerUpToPos & 0x80000000) != 0)
        {
          break;
        }

        if (v29 == 5)
        {
          LastTnMarkerUpToPos = (*(a1[7] + 176))(a2, a3, v31, 4, &__s1, &v30);
          if ((LastTnMarkerUpToPos & 0x80000000) != 0)
          {
            break;
          }

          v15 = __s1;
          if (!strcmp(__s1, "phon"))
          {
            LastTnMarkerUpToPos = (*(a1[7] + 168))(a2, a3, v31, 1, 1, &v27 + 2, &v30);
            if ((LastTnMarkerUpToPos & 0x80000000) != 0)
            {
              break;
            }

            LastTnMarkerUpToPos = hlp_GetLastTnMarkerUpToPos(a1, a2, a3, a4, SHIWORD(v27), v32);
            if ((LastTnMarkerUpToPos & 0x80000000) != 0)
            {
              break;
            }

            v15 = v32;
            __s1 = v32;
          }

          strcpy(v33, "phrasing_");
          strlen(v15);
          __strcat_chk();
          LastTnMarkerUpToPos = (*(a1[13] + 96))(a1[11], a1[12], "fecfg", v33, &__c[3], &__c[1], __c);
          if ((LastTnMarkerUpToPos & 0x80000000) != 0)
          {
            break;
          }

          strcpy(v33, "phrasing_");
          strlen(a6);
          __strcat_chk();
          v12 = (*(a1[13] + 96))(a1[11], a1[12], "fecfg", v33, &v25, &v24, __c);
          if ((v12 & 0x80000000) != 0)
          {
            goto LABEL_35;
          }

          if (*&__c[1])
          {
            v16 = strchr(**&__c[3], __c[0]);
            if (v16)
            {
              *v16 = 0;
            }
          }

          if (v24)
          {
            v17 = strchr(*v25, __c[0]);
            if (v17)
            {
              *v17 = 0;
            }
          }

          v18 = __s1;
          if (strcmp(a6, __s1))
          {
            if (*&__c[1] != 1 || v24)
            {
              if (*&__c[1] || v24 != 1)
              {
                if (*&__c[1] != 1 || v24 != 1)
                {
                  goto LABEL_35;
                }

                v20 = **&__c[3];
                v19 = *v25;
              }

              else
              {
                v19 = *v25;
                v20 = v18;
              }
            }

            else
            {
              v19 = **&__c[3];
              v20 = a6;
            }

            if (strcmp(v20, v19))
            {
              goto LABEL_35;
            }
          }

          LastTnMarkerUpToPos = (*(a1[7] + 168))(a2, a3, v31, 2, 1, &v27, &v30);
          if ((LastTnMarkerUpToPos & 0x80000000) != 0)
          {
            break;
          }

          *a7 = v27;
        }

        v12 = (*(a1[7] + 120))(a2, a3, v31, &v31);
        if ((v12 & 0x80000000) == 0)
        {
          v13 = v31;
          if (v31)
          {
            continue;
          }
        }

        goto LABEL_35;
      }

      v12 = LastTnMarkerUpToPos;
    }
  }

LABEL_35:
  v21 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t hlp_Phrasing(uint64_t a1, char *a2, unsigned int a3, const char *a4, uint64_t a5, uint64_t a6, unsigned __int16 *a7, uint64_t a8, _WORD *a9, unsigned __int16 *a10, __int16 a11, int a12, unsigned __int16 *a13, unsigned __int16 a14)
{
  v15 = a7;
  v110 = *MEMORY[0x1E69E9840];
  v106 = 0;
  v107 = 0;
  v105 = 0;
  v103 = 0;
  __s2 = 0;
  v101 = 0;
  v102 = 0;
  v100 = 0;
  v99 = 0;
  v98 = 0;
  v97 = 0;
  v96 = *a7;
  v21 = v96;
  strcpy(__s, "phrasing");
  v22 = strlen(__s);
  **(a1 + 136) = 0;
  **(a1 + 144) = 0;
  **(a1 + 152) = 0;
  v23 = (*(*(a1 + 56) + 168))(a5, a6, v21, 1, 1, &v106 + 2, &v107 + 2);
  if ((v23 & 0x80000000) != 0)
  {
    goto LABEL_162;
  }

  v93 = v15;
  v92 = a8;
  v94 = HIWORD(v106);
  if (v21 && HIWORD(v106) < a3)
  {
    v24 = 1;
    do
    {
      v23 = (*(*(a1 + 56) + 168))(a5, a6, v21, 0, 1, &v105, &v107 + 2);
      if ((v23 & 0x80000000) != 0)
      {
        goto LABEL_162;
      }

      if (v105 <= 0xA && ((1 << v105) & 0x610) != 0)
      {
        v23 = (*(*(a1 + 56) + 168))(a5, a6, v96, 2, 1, &v106, &v107 + 2);
        if ((v23 & 0x80000000) != 0)
        {
          goto LABEL_162;
        }

        v23 = (*(*(a1 + 56) + 176))(a5, a6, v96, 5, &__s2, &v107 + 2);
        if ((v23 & 0x80000000) != 0)
        {
          goto LABEL_162;
        }

        v23 = (*(*(a1 + 56) + 176))(a5, a6, v96, 9, &v103, &v107 + 2);
        if ((v23 & 0x80000000) != 0)
        {
          goto LABEL_162;
        }

        if (!v24)
        {
          v26 = HIWORD(v106);
          PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(a2, HIWORD(v106));
          strncat(*(a1 + 136), &a2[HIWORD(v106) - (v26 - PreviousUtf8Offset)], (v26 - PreviousUtf8Offset));
          *(*(a1 + 144) + strlen(*(a1 + 144))) = 32;
          *(*(a1 + 152) + strlen(*(a1 + 152))) = 32;
        }

        if (HIWORD(v106) > v106)
        {
          v56 = 2315271857;
          goto LABEL_163;
        }

        strncat(*(a1 + 136), &a2[HIWORD(v106)], v106 - HIWORD(v106));
        strcat(*(a1 + 144), __s2);
        strncat(*(a1 + 152), v103, 1uLL);
        v28 = __s2;
        v29 = strlen(__s2);
        v30 = v106 - HIWORD(v106);
        if (v29 <= (v106 - HIWORD(v106)))
        {
          if (v30 > v29)
          {
            v33 = Utf8_LengthInUtf8chars(&a2[HIWORD(v106)], v30);
            v34 = v33 - strlen(__s2);
            if (v34 >= 1)
            {
              v35 = v34;
              if (v34)
              {
                do
                {
                  *(*(a1 + 144) + strlen(*(a1 + 144))) = 126;
                  --v35;
                }

                while (v35);
              }
            }

            v36 = Utf8_LengthInUtf8chars(&a2[HIWORD(v106)], v106 - HIWORD(v106));
            if (v36 > 1)
            {
              v37 = (v36 - 1);
              if (v36 != 1)
              {
                do
                {
                  strncat(*(a1 + 152), v103, 1uLL);
                  --v37;
                }

                while (v37);
              }
            }
          }
        }

        else
        {
          if (v29 - v106 + HIWORD(v106))
          {
            v31 = 0;
            do
            {
              *(*(a1 + 136) + strlen(*(a1 + 136))) = 126;
              ++v31;
              v28 = __s2;
            }

            while (strlen(__s2) - v106 + HIWORD(v106) > v31);
          }

          if (strlen(v28) != 1)
          {
            v32 = 0;
            do
            {
              strncat(*(a1 + 152), v103, 1uLL);
              ++v32;
            }

            while (strlen(__s2) - 1 > v32);
          }
        }

        v24 = 0;
      }

      v23 = (*(*(a1 + 56) + 120))(a5, a6, v96, &v96);
      if ((v23 & 0x80000000) != 0)
      {
        goto LABEL_162;
      }

      if (!v96)
      {
        break;
      }

      v23 = (*(*(a1 + 56) + 168))(a5, a6);
      if ((v23 & 0x80000000) != 0)
      {
        goto LABEL_162;
      }

      LOWORD(v21) = v96;
      if (!v96)
      {
        break;
      }
    }

    while (HIWORD(v106) < a3);
  }

  v23 = (*(*(a1 + 104) + 104))(*(a1 + 88), *(a1 + 96), a4, *(a1 + 136), a14);
  if ((v23 & 0x80000000) != 0)
  {
    goto LABEL_162;
  }

  v89 = *(a1 + 136);
  log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "%s L1: %s", v38, v39, v40, __s);
  v41 = strlen(*(a1 + 136));
  v23 = (*(*(a1 + 80) + 120))(*(a1 + 64), *(a1 + 72), 0, *(a1 + 136), v41);
  if ((v23 & 0x80000000) != 0)
  {
    goto LABEL_162;
  }

  v90 = *(a1 + 144);
  log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "%s L2: %s", v42, v43, v44, __s);
  v45 = strlen(*(a1 + 144));
  v23 = (*(*(a1 + 80) + 120))(*(a1 + 64), *(a1 + 72), 1, *(a1 + 144), v45);
  if ((v23 & 0x80000000) != 0)
  {
    goto LABEL_162;
  }

  v91 = *(a1 + 152);
  log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "%s L5: %s", v46, v47, v48, __s);
  v49 = strlen(*(a1 + 152));
  v23 = (*(*(a1 + 80) + 120))(*(a1 + 64), *(a1 + 72), 4, *(a1 + 152), v49);
  if ((v23 & 0x80000000) != 0)
  {
    goto LABEL_162;
  }

  if (strcmp(a4, "normal") && strlen(a4) + v22 + 2 <= 0xFF)
  {
    __strcat_chk();
    __strcat_chk();
  }

  if (((*(*(a1 + 80) + 80))(*(a1 + 64), *(a1 + 72), __s) & 0x80000000) != 0)
  {
    __s[v22] = 0;
    (*(*(a1 + 80) + 80))(*(a1 + 64), *(a1 + 72), __s);
  }

  v23 = (*(*(a1 + 80) + 128))(*(a1 + 64), *(a1 + 72), 0, &v102, &v100 + 2);
  if ((v23 & 0x80000000) != 0)
  {
    goto LABEL_162;
  }

  v102[HIWORD(v100)] = 0;
  log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "%s O1: %s", v50, v51, v52, __s);
  v23 = (*(*(a1 + 80) + 128))(*(a1 + 64), *(a1 + 72), 2, &v101, &v100 + 2);
  if ((v23 & 0x80000000) != 0)
  {
    goto LABEL_162;
  }

  v101[HIWORD(v100)] = 0;
  log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "%s O3: %s", v53, v54, v55, __s);
  if (!v94)
  {
    if (strchr(v101, 87))
    {
      v59 = strrchr(a2, 63);
      if (v59)
      {
        if (v59 != a2 && *(v59 - 1) != 32)
        {
          *v59 = 46;
        }
      }
    }
  }

  v23 = (*(*(a1 + 56) + 168))(a5, a6, *v15, 1, 1, &v106 + 2, &v107 + 2);
  if ((v23 & 0x80000000) != 0)
  {
    goto LABEL_162;
  }

  v56 = (*(*(a1 + 56) + 136))(a5, a6, *v15, &v97);
  if ((v56 & 0x80000000) == 0)
  {
    if (!v97)
    {
      goto LABEL_70;
    }

    v56 = (*(*(a1 + 56) + 168))(a5, a6);
    if ((v56 & 0x80000000) != 0)
    {
      goto LABEL_163;
    }

    v57 = v97;
    if (v97)
    {
      do
      {
        if (v105 <= 0xA && ((1 << v105) & 0x610) != 0)
        {
          goto LABEL_71;
        }

        v56 = (*(*(a1 + 56) + 136))(a5, a6, v57, &v97);
        if ((v56 & 0x80000000) != 0)
        {
          goto LABEL_163;
        }

        if (!v97)
        {
          break;
        }

        v56 = (*(*(a1 + 56) + 168))(a5, a6);
        if ((v56 & 0x80000000) != 0)
        {
          goto LABEL_163;
        }

        v57 = v97;
      }

      while (v97);
      v57 = 0;
    }

    else
    {
LABEL_70:
      v57 = 0;
    }

LABEL_71:
    v60 = v102;
    if (*v102 == 35)
    {
      memset(v108, 0, 11);
      LOWORD(v100) = 200;
      ++v102;
      if (v60[1] == 91)
      {
        v102 = v60 + 2;
        v61 = v60[2];
        if (v60[2])
        {
          v62 = 0;
          LOWORD(v63) = 0;
          v64 = v60 + 3;
          while (v61 != 93 && v62 <= 9)
          {
            v108[v62] = v61;
            v102 = &v64[v62];
            v61 = v64[v62++];
            LOWORD(v63) = v63 + 1;
            if (!v61)
            {
              goto LABEL_81;
            }
          }

          LOWORD(v63) = v62;
LABEL_81:
          v63 = v63;
        }

        else
        {
          v63 = 0;
        }

        v108[v63] = 0;
      }

      v65 = a12;
      if (!a12)
      {
        v65 = atoi(v108);
      }

      LOWORD(v100) = v65;
      if (v57)
      {
        v56 = hlp_ReadSildur(a1, a5, a6, v57, &v99, &v98);
        if ((v56 & 0x80000000) != 0)
        {
          goto LABEL_163;
        }

        if (!v98)
        {
          v56 = (*(*(a1 + 56) + 160))(a5, a6, v97, 8, 1, &v100, &v107);
          if ((v56 & 0x80000000) != 0)
          {
            goto LABEL_163;
          }
        }
      }
    }

    v66 = *v15;
    if (*v15)
    {
      v67 = HIWORD(v106) >= a3;
    }

    else
    {
      v67 = 1;
    }

    if (!v67)
    {
      do
      {
        v23 = (*(*(a1 + 56) + 168))(a5, a6, v66, 0, 1, &v105, &v107 + 2);
        if ((v23 & 0x80000000) != 0)
        {
          goto LABEL_162;
        }

        if (v105 <= 0xA && ((1 << v105) & 0x610) != 0)
        {
          v23 = (*(*(a1 + 56) + 168))(a5, a6, *v15, 1, 1, &v106 + 2, &v107 + 2);
          if ((v23 & 0x80000000) != 0)
          {
            goto LABEL_162;
          }

          v23 = (*(*(a1 + 56) + 168))(a5, a6, *v15, 2, 1, &v106, &v107 + 2);
          if ((v23 & 0x80000000) != 0)
          {
            goto LABEL_162;
          }

          v69 = v102 + 1;
          for (i = v102 + 3; ; ++i)
          {
            v71 = *(v69 - 1);
            if (v71 <= 0x22)
            {
              if (!*(v69 - 1) || v71 == 32)
              {
LABEL_111:
                *v108 = 0;
                LOWORD(v100) = 0;
                if (((*(*(a1 + 56) + 184))(a5, a6, *v15, 8, v108) & 0x80000000) == 0 && *v108 == 1)
                {
                  v23 = (*(*(a1 + 56) + 168))(a5, a6, *v15, 8, 1, &v100, &v107 + 2);
                  if ((v23 & 0x80000000) != 0)
                  {
                    goto LABEL_162;
                  }
                }

                if (!v100)
                {
LABEL_115:
                  v23 = (*(*(a1 + 56) + 160))(a5, a6, *v15, 8, 1, &v100, &v107);
                  if ((v23 & 0x80000000) != 0)
                  {
                    goto LABEL_162;
                  }
                }

LABEL_132:
                v78 = v102;
                v79 = *v102;
                while (1)
                {
                  v80 = v78;
                  if (((v79 - 93) > 0x21 || ((1 << (v79 - 93)) & 0x200000005) == 0) && v79 != 32)
                  {
                    break;
                  }

                  ++v78;
                  v102 = v80 + 1;
                  v79 = v80[1];
                  if (v79 == 35)
                  {
                    v81 = v80 + 2;
                    do
                    {
                      if (v79 == 32)
                      {
                        break;
                      }

                      if (v79 == 95)
                      {
                        break;
                      }

                      v102 = v81;
                      v82 = *v81++;
                      v79 = v82;
                    }

                    while (v82);
                    v78 = v81 - 1;
                  }
                }

                if ((v106 - HIWORD(v106)) <= 1)
                {
                  v83 = 0;
                }

                else
                {
                  v83 = -1;
                }

                LOWORD(v100) = 0;
                v84 = *a9;
                if (v84 < *a10)
                {
                  do
                  {
                    v85 = v92 + 32 * v84;
                    if ((*(v85 + 12) - a11) >= (v106 + v83))
                    {
                      break;
                    }

                    if (*v85 == 8 && v97 != 0)
                    {
                      LOWORD(v100) = v100 + *(v85 + 24);
                      v23 = (*(*(a1 + 56) + 160))(a5, a6);
                      if ((v23 & 0x80000000) != 0)
                      {
                        goto LABEL_162;
                      }

                      v23 = (*(*(a1 + 56) + 160))(a5, a6, v97, 18, 9, "external", &v107);
                      if ((v23 & 0x80000000) != 0)
                      {
                        goto LABEL_162;
                      }

                      LOWORD(v84) = *a9;
                    }

                    LOWORD(v84) = v84 + 1;
                    *a9 = v84;
                  }

                  while (*a10 > v84);
                }

                v15 = v93;
                v72 = *v93;
                v97 = *v93;
                goto LABEL_156;
              }
            }

            else
            {
              if (v71 == 35)
              {
                memset(v108, 0, 11);
                LOWORD(v100) = 200;
                v102 = v69;
                if (*v69 == 91)
                {
                  v102 = v69 + 1;
                  v73 = v69[1];
                  if (v69[1])
                  {
                    v74 = 0;
                    v75 = 0;
                    while (v73 != 93 && v74 <= 9)
                    {
                      v108[v74++] = v73;
                      ++v75;
                      v102 = i;
                      v76 = *i++;
                      v73 = v76;
                      if (!v76)
                      {
                        goto LABEL_127;
                      }
                    }

                    v75 = v74;
                  }

                  else
                  {
                    v75 = 0;
                  }

LABEL_127:
                  v108[v75] = 0;
                }

                v77 = a12;
                if (!a12)
                {
                  v77 = atoi(v108);
                }

                LOWORD(v100) = v77;
                v23 = hlp_ReadSildur(a1, a5, a6, *v15, &v99, &v98);
                if ((v23 & 0x80000000) == 0)
                {
                  if (!v98)
                  {
                    goto LABEL_115;
                  }

                  goto LABEL_132;
                }

LABEL_162:
                v56 = v23;
                goto LABEL_163;
              }

              if (v71 == 95 || v71 == 126)
              {
                goto LABEL_111;
              }
            }

            v102 = v69++;
          }
        }

        v72 = *v15;
LABEL_156:
        v56 = (*(*(a1 + 56) + 120))(a5, a6, v72, v15);
        if ((v56 & 0x80000000) != 0)
        {
          goto LABEL_163;
        }

        if (!*v15)
        {
          break;
        }

        v56 = (*(*(a1 + 56) + 168))(a5, a6);
        if ((v56 & 0x80000000) != 0)
        {
          goto LABEL_163;
        }

        v66 = *v15;
        if (!*v15)
        {
          break;
        }
      }

      while (HIWORD(v106) < a3);
    }

    *a13 = v97;
  }

LABEL_163:
  v87 = *MEMORY[0x1E69E9840];
  return v56;
}

uint64_t hlp_InsertWordPhrase(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, __int16 a6, __int16 a7, __int16 a8, unsigned __int16 *a9)
{
  v18 = a5;
  v17 = a6;
  v16 = a7;
  v15 = a8;
  v14 = 15;
  result = (*(*(a1 + 56) + 88))(a2, a3, a4, a9);
  if ((result & 0x80000000) == 0)
  {
    v13 = 0;
    result = (*(*(a1 + 56) + 160))(a2, a3, *a9, 0, 1, &v14, &v13);
    if ((result & 0x80000000) == 0)
    {
      result = (*(*(a1 + 56) + 160))(a2, a3, *a9, 1, 1, &v18, &v13);
      if ((result & 0x80000000) == 0)
      {
        result = (*(*(a1 + 56) + 160))(a2, a3, *a9, 2, 1, &v17, &v13);
        if ((result & 0x80000000) == 0)
        {
          result = (*(*(a1 + 56) + 160))(a2, a3, *a9, 4, 2, "P", &v13);
          if ((result & 0x80000000) == 0)
          {
            result = (*(*(a1 + 56) + 160))(a2, a3, *a9, 7, 1, &v16, &v13);
            if ((result & 0x80000000) == 0)
            {
              return (*(*(a1 + 56) + 160))(a2, a3, *a9, 8, 1, &v15, &v13);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t fe_phrasing_isFeatureRequired(uint64_t a1, unsigned int a2, int a3, unsigned __int16 *a4)
{
  if (a2 < 2)
  {
    return 0;
  }

  v6 = 0;
  v7 = g_featureNames_3[a3];
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

uint64_t fe_phrasing_setFeature(uint64_t a1, uint64_t a2, unsigned int a3, int a4, uint64_t a5, const char *a6)
{
  v18 = -1;
  result = fe_phrasing_isFeatureRequired(a2, a3, a4, &v18);
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
        log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v13, v14, v15, v16, v17);
        return 2315264010;
      }

      *(a5 + 8 * v10) = v12;
    }

    strcpy(v12, a6);
    return 0;
  }

  return result;
}

const char *fe_phrasing_feat_word(uint64_t a1, int a2, int a3)
{
  v3 = a3 + a2;
  if (a3 + a2 < 0 || v3 >= *(a1 + 1072))
  {
    return "=";
  }

  v4 = *(*(a1 + 1064) + 184 * v3 + 56);
  v5 = strlen(v4);
  if (v5)
  {
    if (doesWordEndInCommaNN(v4, ",:;.?!|_~'<>{}#()[]^\\=@/&$*#"))
    {
      v6 = &v4[v5];
      if (memchr(",:;.?!|_~'<>{}#()[]^\\=@/&$*#", *(v6 - 1), 0x1EuLL))
      {
        *(v6 - 1) = 0;
      }
    }
  }

  return v4;
}

char *fe_phrasing_feat_wordlen(char *result, int a2, int a3, char *a4)
{
  *a4 = 0;
  v5 = a3 + a2;
  if (a3 + a2 < 0 || v5 >= *(result + 536))
  {
    *a4 = 61;
  }

  else
  {
    v6 = Utf8_Utf8NbrOfSymbols(*(*(result + 133) + 184 * v5 + 56)) - 1;

    return LH_itoa(v6, a4, 0xAu);
  }

  return result;
}

char *fe_phrasing_feat_character(uint64_t a1, int a2, int a3, int a4, _WORD *a5)
{
  bzero(a5, 0x800uLL);
  result = fe_phrasing_feat_word(a1, a2, a4);
  v11 = result;
  if (*result == 61 && !result[1])
  {
    goto LABEL_6;
  }

  result = strlen(result);
  v12 = result;
  v13 = result;
  if (!result)
  {
    goto LABEL_6;
  }

  if (a3)
  {
    result = utf8_GetPreviousUtf8Offset(v11, result);
    if (result > v13)
    {
LABEL_6:
      *a5 = 61;
      return result;
    }

    v16 = &v11[result];
    NextUtf8Offset = (v12 - result);
    v15 = a5;
  }

  else
  {
    NextUtf8Offset = utf8_GetNextUtf8Offset(v11, 0);
    v15 = a5;
    v16 = v11;
  }

  return strncpy(v15, v16, NextUtf8Offset);
}

uint64_t fe_phrasing_ClassOpen(_WORD *a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  if (!a3)
  {
    return 2315264007;
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

uint64_t statcomp_isDctFeature(char *__s1, _WORD *a2, uint64_t *a3)
{
  v3 = *(a3 + 4);
  if (!*(a3 + 4))
  {
    return 0;
  }

  v6 = 0;
  v7 = *a3;
  while (strcmp(__s1, *(v7 + 8 * v6)))
  {
    if (v3 == ++v6)
    {
      return 0;
    }
  }

  *a2 = v6;
  return 1;
}

uint64_t statcomp_isDctMappedFeature(char *__s1, _WORD *a2, unsigned __int16 *a3)
{
  v3 = a3[4];
  if (!a3[4])
  {
    return 0;
  }

  v6 = 0;
  for (i = (*a3 + 8); strcmp(__s1, *i); i += 2)
  {
    if (v3 == ++v6)
    {
      return 0;
    }
  }

  *a2 = v6;
  return 1;
}

uint64_t statcomp_isDynamicFeature(char *__s1, _WORD *a2)
{
  v4 = 0;
  while (1)
  {
    v5 = g_statcomp_FeatureNames[v4];
    if (!strcmp(__s1, v5))
    {
      break;
    }

    v6 = strlen(v5);
    v7 = strlen(__s1);
    if (v7 > v6 && !strcmp(&__s1[v7 - v6], v5))
    {
      break;
    }

    if (++v4 == 7)
    {
      return 0;
    }
  }

  *a2 = v4;
  return 1;
}

uint64_t statcomp_setFeature(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, char *__s)
{
  if (strlen(__s) <= 0x20)
  {
    v11 = *(a4 + 8 * a3);
  }

  else
  {
    v10 = strlen(__s);
    v11 = heap_Realloc(*(a2 + 8), *(a4 + 8 * a3), v10 + 1);
    if (!v11)
    {
      log_OutPublic(*(a2 + 32), "FE_POS", 35000, 0, v12, v13, v14, v15, v32);
      return 2313166858;
    }

    *(a4 + 8 * a3) = v11;
  }

  strcpy(v11, __s);
  v16 = *(a1 + 1336);
  if (!v16)
  {
    return 0;
  }

  v17 = *(a4 + 8 * a3);
  v18 = *(*(a1 + 1312) + 8 * a3);
  v19 = strlen(v18);
  v20 = 0;
  v21 = *(a1 + 1328);
  while (1)
  {
    v22 = v20;
    if (!strncmp(*(v21 + 16 * v20), v18, v19))
    {
      break;
    }

    v20 = v22 + 1;
    if (v16 <= (v22 + 1))
    {
      return 0;
    }
  }

  v24 = *(v21 + 16 * v22 + 8);
  v25 = strstr(v24, v17);
  if (v25)
  {
    v26 = v25;
    v27 = strlen(v17);
    v28 = strlen(v24);
    v29 = v28;
    v30 = &v24[v28];
    while (v26 != v24 || v29 != v27 && (v29 <= v27 + 1 || v26[v27] != 32))
    {
      if (v26 > v24)
      {
        v31 = &v26[v27];
        if (v30 > (v31 + 1) && *v31 == 32)
        {
          if (*(v26 - 1) == 32)
          {
            return 0;
          }
        }

        else if (v30 == v31)
        {
          return 0;
        }
      }

      v26 = strstr(&v26[v27], v17);
      if (!v26)
      {
        goto LABEL_23;
      }
    }

    return 0;
  }

LABEL_23:
  result = 0;
  *v17 = 61;
  return result;
}

uint64_t statcomp_setDynamicFeature(uint64_t a1, uint64_t a2, int a3, unsigned int a4, uint64_t a5, const char **a6, const char **a7, int a8, unsigned __int16 a9)
{
  LODWORD(v9) = a8;
  v34 = *MEMORY[0x1E69E9840];
  v15 = g_statcomp_FeatureNames[a3];
  v16 = strcmp(v15, "CW_SYLLABLE_LEN");
  if (v16 && strcmp(v15, "SYLLABLE_LEN_AS_FRACTION"))
  {
    if (!strcmp(v15, "CW_ORTH_LEN"))
    {
      if (v9)
      {
LABEL_16:
        LODWORD(v19) = 0;
        v9 = v9;
        v22 = a6;
        do
        {
          v23 = *v22++;
          LODWORD(v19) = v19 + strlen(v23);
          --v9;
        }

        while (v9);
        goto LABEL_18;
      }
    }

    else if (!strcmp(v15, "ORTH_LEN_AS_FRACTION") && v9 != 0)
    {
      goto LABEL_16;
    }

    LOWORD(v18) = 0;
    LOWORD(v19) = 0;
    goto LABEL_20;
  }

  if (!v9)
  {
    LOWORD(v19) = 0;
LABEL_18:
    LOWORD(v18) = 0;
    goto LABEL_19;
  }

  v18 = 0;
  v19 = v9;
  v20 = a7;
  do
  {
    v21 = *v20++;
    v18 += strlen(v21);
    --v19;
  }

  while (v19);
LABEL_19:
  v24 = v18;
  if (v16)
  {
LABEL_20:
    v24 = v18;
    LOWORD(v18) = v19;
    if (strcmp(v15, "CW_ORTH_LEN"))
    {
      goto LABEL_22;
    }
  }

  LH_itoa(v18, __s, 0xAu);
LABEL_22:
  if (!strcmp(v15, "SYLLABLE_LEN"))
  {
    v27 = a7[a9];
LABEL_33:
    v28 = strlen(v27);
    goto LABEL_34;
  }

  if (!strcmp(v15, "SYLLABLE_LEN_AS_FRACTION"))
  {
    if (v24)
    {
      v25 = strlen(a7[a9]);
      v26 = v24;
      goto LABEL_31;
    }

LABEL_38:
    v28 = 0;
    goto LABEL_34;
  }

  if (!strcmp(v15, "ORTH_LEN"))
  {
    v27 = a6[a9];
    goto LABEL_33;
  }

  if (strcmp(v15, "ORTH_LEN_AS_FRACTION"))
  {
    goto LABEL_35;
  }

  if (!v19)
  {
    goto LABEL_38;
  }

  v25 = strlen(a6[a9]);
  v26 = v19;
LABEL_31:
  v28 = v25 / v26;
LABEL_34:
  LH_itoa(v28, __s, 0xAu);
LABEL_35:
  if (!strcmp(v15, "ORTH"))
  {
    v29 = a6[a9];
    __strcpy_chk();
  }

  result = statcomp_setFeature(a2, a1, a4, a5, __s);
  v31 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t statcomp_initFeatureVector(uint64_t a1, void *a2, unsigned int a3)
{
  if (!a3)
  {
    return 0;
  }

  v5 = a3;
  while (1)
  {
    v6 = heap_Calloc(*(a1 + 8), 1, 33);
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

  log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v7, v8, v9, v10, v12);
  return 2313166858;
}

void *statcomp_freeFeatureVector(void *result, uint64_t *a2, unsigned int a3)
{
  if (a3)
  {
    v4 = result;
    v5 = a3;
    do
    {
      v6 = *a2++;
      result = heap_Free(v4[1], v6);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t statcomp_dumpFeatureVectorAndResult(uint64_t a1, int a2, const char **a3, _WORD *a4, char *__s, char *a6, uint64_t a7, uint64_t a8, char *__sa)
{
  if (!a2)
  {
    return 0;
  }

  v15 = statcomp_add2Str(a1, a3, a4, __s);
  if ((v15 & 0x80000000) != 0)
  {
    return v15;
  }

  v15 = statcomp_add2Str(a1, a3, a4, " ");
  if ((v15 & 0x80000000) != 0)
  {
    return v15;
  }

  v15 = statcomp_add2Str(a1, a3, a4, a6);
  if ((v15 & 0x80000000) != 0)
  {
    return v15;
  }

  v15 = statcomp_add2Str(a1, a3, a4, " ");
  if ((v15 & 0x80000000) != 0)
  {
    return v15;
  }

  if (*(a7 + 1296) >= 2u)
  {
    v16 = 0;
    do
    {
      v15 = statcomp_add2Str(a1, a3, a4, *(*(a7 + 1312) + 8 * v16));
      if ((v15 & 0x80000000) != 0)
      {
        return v15;
      }

      v15 = statcomp_add2Str(a1, a3, a4, "=");
      if ((v15 & 0x80000000) != 0)
      {
        return v15;
      }

      v15 = statcomp_add2Str(a1, a3, a4, *(a8 + 8 * v16));
      if ((v15 & 0x80000000) != 0)
      {
        return v15;
      }

      v15 = statcomp_add2Str(a1, a3, a4, " ");
      if ((v15 & 0x80000000) != 0)
      {
        return v15;
      }
    }

    while (*(a7 + 1296) - 1 > ++v16);
  }

  v15 = statcomp_add2Str(a1, a3, a4, "PRED=");
  if ((v15 & 0x80000000) != 0)
  {
    return v15;
  }

  v15 = statcomp_add2Str(a1, a3, a4, __sa);
  if ((v15 & 0x80000000) != 0)
  {
    return v15;
  }

  v15 = statcomp_add2Str(a1, a3, a4, " ");
  if ((v15 & 0x80000000) != 0)
  {
    return v15;
  }

  log_OutText(*(a1 + 32), "FE_POS", 5, 0, "%s", v17, v18, v19, *a3);
  **a3 = 0;
  if (*(a7 + 1296) >= 2u)
  {
    v20 = 0;
    do
    {
      v15 = statcomp_add2Str(a1, a3, a4, *(a8 + 8 * v20));
      if ((v15 & 0x80000000) != 0)
      {
        return v15;
      }

      v15 = statcomp_add2Str(a1, a3, a4, " ");
      if ((v15 & 0x80000000) != 0)
      {
        return v15;
      }
    }

    while (*(a7 + 1296) - 1 > ++v20);
  }

  v15 = statcomp_add2Str(a1, a3, a4, "PRED=");
  if ((v15 & 0x80000000) != 0)
  {
    return v15;
  }

  v15 = statcomp_add2Str(a1, a3, a4, __sa);
  if ((v15 & 0x80000000) != 0)
  {
    return v15;
  }

  v24 = statcomp_add2Str(a1, a3, a4, " ");
  if ((v24 & 0x80000000) == 0)
  {
    log_OutText(*(a1 + 32), "FE_POS", 5, 0, "%s", v21, v22, v23, *a3);
    **a3 = 0;
  }

  return v24;
}

uint64_t statpos_checkIfActive(uint64_t a1, uint64_t a2, uint64_t a3, _WORD *a4, uint64_t a5, uint64_t a6, _DWORD *a7, int *a8, _BOOL4 *a9, _BOOL4 *a10, _BOOL4 *a11)
{
  v65 = *MEMORY[0x1E69E9840];
  v61 = 0;
  memset(v64, 0, sizeof(v64));
  v60 = 0;
  v58 = 0;
  v59 = 0;
  *a8 = 0;
  *a9 = 0;
  *a10 = 0;
  *a11 = 0;
  v17 = a7 + 354;
  *(a7 + 354) = 0u;
  a7[358] = 0;
  result = paramc_ParamGetUInt(*(a6 + 40), "statpos_do_corpus_alignment", &v60);
  if ((result & 0x1FFF) != 0x14)
  {
    if ((result & 0x80000000) != 0)
    {
      goto LABEL_52;
    }

    if (v60 == 1)
    {
      *v17 = 1;
    }
  }

  result = paramc_ParamGetUInt(*(a6 + 40), "nluactive", &v60);
  if ((result & 0x1FFF) != 0x14)
  {
    if ((result & 0x80000000) != 0)
    {
      goto LABEL_52;
    }

    if (v60 == 1)
    {
      a7[358] = 1;
    }
  }

  result = statpos_igtrees_getBrkStrs(a6, v63, v62, 0x100uLL);
  if ((result & 0x80000000) != 0)
  {
    goto LABEL_52;
  }

  result = ssftriff_reader_ObjOpen(a4, a5, 2, v63, "IGTR", 1031, &v58);
  if ((result & 0x80000000) != 0)
  {
    if ((result & 0x1FFF) == 0xA)
    {
      goto LABEL_52;
    }

    log_OutText(*(a6 + 32), "FE_POS", 5, 0, "statPOS %s tree not found", v23, v24, v25, v63);
  }

  else
  {
    result = ssftriff_reader_ObjClose(v58, v19, v20, v21, v22, v23, v24, v25);
    if ((result & 0x80000000) != 0)
    {
      goto LABEL_52;
    }

    a7[356] = 1;
  }

  result = ssftriff_reader_ObjOpen(a4, a5, 2, v62, "IGTR", 1031, &v58);
  if ((result & 0x80000000) != 0)
  {
    if ((result & 0x1FFF) == 0xA)
    {
      goto LABEL_52;
    }

    log_OutText(*(a6 + 32), "FE_POS", 5, 0, "statPOS %s tree not found", v30, v31, v32, v62);
  }

  else
  {
    result = ssftriff_reader_ObjClose(v58, v26, v27, v28, v29, v30, v31, v32);
    if ((result & 0x80000000) != 0)
    {
      goto LABEL_52;
    }

    a7[356] = 1;
  }

  result = statpos_get_broker_string(a6, &v59);
  if ((result & 0x80000000) != 0)
  {
    goto LABEL_52;
  }

  v33 = ssftriff_reader_ObjOpen(a4, a5, 2, v59, "CRPH", 1031, &v58);
  if ((v33 & 0x80000000) == 0)
  {
    info_from_dct = ssftriff_reader_ObjClose(v58, v34, v35, v36, v37, v38, v39, v40);
    if ((info_from_dct & 0x80000000) != 0)
    {
LABEL_46:
      v42 = info_from_dct;
      goto LABEL_47;
    }

    a7[357] = 1;
LABEL_26:
    if (!a7[356] && !a7[357] && !*v17)
    {
      v42 = 0;
      goto LABEL_47;
    }

    info_from_dct = statpos_get_info_from_dct(a6, a1, a2, a3, "fecfg", "mdesegpos_morpheme_processing", 0, a9, "BOOL");
    if ((info_from_dct & 0x80000000) != 0)
    {
      goto LABEL_46;
    }

    info_from_dct = statpos_get_info_from_dct(a6, a1, a2, a3, "fecfg", "statphr_kok_force_igtree", 0, a10, "BOOL");
    if ((info_from_dct & 0x80000000) != 0)
    {
      goto LABEL_46;
    }

    if (*a10)
    {
      log_OutText(*(a6 + 32), "FE_POS", 5, 0, "Key statphr_kok_force_igtree is set, use statphr IGTree data instead of hardcoded values", v43, v44, v45, 0);
    }

    info_from_dct = statpos_get_info_from_dct(a6, a1, a2, a3, "fecfg", "statphr_kok_remove_unaligned_phrase_boundaries", 0, a11, "BOOL");
    if ((info_from_dct & 0x80000000) != 0)
    {
      goto LABEL_46;
    }

    if (*a11)
    {
      log_OutText(*(a6 + 32), "FE_POS", 5, 0, "Key statphr_kok_remove_unaligned_phrase_boundaries is set, IGTree prediction overridden if phrase boundary is inside eojeol", v46, v47, v48, 0);
    }

    if (*v17 == 1)
    {
      v49 = a7[356];
      if (v49 != 1)
      {
        v49 = a7[357] == 1;
      }
    }

    else if (a7[357] != 1 || (v49 = *a9) == 0)
    {
LABEL_42:
      info_from_dct = getBrokerString_0(a6, v64, 0x80uLL);
      if ((info_from_dct & 0x80000000) == 0)
      {
        v50 = brk_DataOpenEx(*(a6 + 24), v64, 1, &v61);
        if ((v50 & 0x80000000) != 0)
        {
          v42 = v50;
          if (a7[358] == 1)
          {
            v55 = "openNLP statPOS rules not found";
          }

          else
          {
            v55 = "MS statPOS rules not found";
          }

          log_OutText(*(a6 + 32), "FE_POS", 5, 0, v55, v51, v52, v53, 0);
        }

        else
        {
          a7[355] = 1;
          v42 = brk_DataClose(*(a6 + 24), v61);
          if ((v42 & 0x80000000) == 0)
          {
            *a8 = 1;
          }
        }

        goto LABEL_47;
      }

      goto LABEL_46;
    }

    *a8 = v49;
    goto LABEL_42;
  }

  v42 = v33;
  if ((v33 & 0x1FFF) != 0xA)
  {
    log_OutText(*(a6 + 32), "FE_POS", 5, 0, "statPOS %s CRF not found", v38, v39, v40, v59);
    goto LABEL_26;
  }

LABEL_47:
  if (v59)
  {
    heap_Free(*(a6 + 8), v59);
  }

  if ((v42 & 0x1FFF) == 0xA)
  {
    result = v42;
  }

  else
  {
    result = 0;
  }

LABEL_52:
  v54 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t statpos_load_resources(uint64_t a1, uint64_t a2, uint64_t a3, _WORD *a4, uint64_t a5, _WORD *a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, int a13, _DWORD *a14, int a15)
{
  v39 = *MEMORY[0x1E69E9840];
  v35 = 0;
  *a12 = a8;
  *(a12 + 1448) = a10;
  *(a12 + 1464) = a11;
  *(a12 + 1472) = a1;
  *(a12 + 1480) = a2;
  *(a12 + 1488) = a3;
  if (!a13)
  {
    *(a12 + 200) = 0;
    *(a12 + 208) = 0;
    inited = nuance_pcre_ObjOpen(a4, a5, a12 + 200);
    if ((inited & 0x80000000) == 0)
    {
      AddRefCountedObject = nuance_pcre_Init(*(a12 + 200), *(a12 + 208), 0x1Eu, 50);
      if ((AddRefCountedObject & 0x80000000) != 0)
      {
        goto LABEL_23;
      }

      if (*(a12 + 1424) == 1)
      {
        v34 = 0;
        inited = InitRsrcFunction(a6, a7, &v34);
        if ((inited & 0x80000000) != 0)
        {
          goto LABEL_22;
        }

        inited = statpos_igtrees_getBrkStrs(a8, v38, v37, 0x100uLL);
        if ((inited & 0x80000000) != 0)
        {
          goto LABEL_22;
        }

        __strcpy_chk();
        __strcat_chk();
        ObjcForThisApi = getObjcForThisApi(a8, v34);
        AddRefCountedObject = objc_GetAddRefCountedObject(ObjcForThisApi, v36, statpos_igtrees_ObjcLoad, statpos_igtrees_ObjcClose, a8, &v35);
        if ((AddRefCountedObject & 0x80000000) != 0)
        {
          goto LABEL_23;
        }

        memcpy((a12 + 784), *(v35 + 32), 0x218uLL);
      }

      if (*(a12 + 1428) == 1)
      {
        AddRefCountedObject = statpos_crf_load(a4, a5, a6, a7, a8, a9, *(a12 + 1448), *(a12 + 1456), *(a12 + 1464), a12 + 1320, a12 + 8, (a12 + 1384), a15);
        if ((AddRefCountedObject & 0x80000000) != 0)
        {
          goto LABEL_23;
        }
      }

      if (a15)
      {
        *(a12 + 8) = a8;
        *(a12 + 384) = 5;
      }

      else
      {
        AddRefCountedObject = statpos_rules_load(a4, a5, a8, *(a12 + 1448), *(a12 + 1456), *(a12 + 1464), a12 + 8, v30);
        if ((AddRefCountedObject & 0x80000000) != 0)
        {
          goto LABEL_23;
        }
      }

      if (*(a12 + 1424) == 1 && *(a12 + 800) != *(a12 + 160))
      {
        *a14 = 0;
        v33 = *(a12 + 160);
        log_OutText(*(a8 + 32), "FE_POS", 5, 0, "set UseStatPOS to FALSE; OOV model differs in igtrees(%d) versus rules(%d)", v28, v29, v30, *(a12 + 800));
      }

      goto LABEL_23;
    }

LABEL_22:
    AddRefCountedObject = inited;
    goto LABEL_23;
  }

  if (*(a12 + 1420) != 1)
  {
    AddRefCountedObject = 0;
    goto LABEL_21;
  }

  *(a12 + 200) = 0;
  *(a12 + 208) = 0;
  inited = nuance_pcre_ObjOpen(a4, a5, a12 + 200);
  if ((inited & 0x80000000) != 0)
  {
    goto LABEL_22;
  }

  AddRefCountedObject = nuance_pcre_Init(*(a12 + 200), *(a12 + 208), 0x1Eu, 50);
  if ((AddRefCountedObject & 0x80000000) != 0)
  {
LABEL_23:
    v32 = *MEMORY[0x1E69E9840];
    return AddRefCountedObject;
  }

  if (a15)
  {
LABEL_21:
    *(a12 + 8) = a8;
    *(a12 + 384) = 5;
    goto LABEL_23;
  }

  v21 = *(a12 + 1464);
  v22 = *(a12 + 1448);
  v23 = *(a12 + 1456);
  v24 = *MEMORY[0x1E69E9840];

  return statpos_rules_load(a4, a5, a8, v22, v23, v21, a12 + 8, v19);
}

uint64_t statpos_unload_resources(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25 = 0;
  if (a5)
  {
    if (*(a4 + 1420) == 1)
    {
      statpos_rules_unload((a4 + 8), a2, a3, a4, a5, a6, a7, a8);
      NullHandle = safeh_GetNullHandle();
      if (!safeh_HandlesEqual(*(a4 + 200), *(a4 + 208), NullHandle, v10))
      {
        nuance_pcre_DeInit(*(a4 + 200), *(a4 + 208));
        nuance_pcre_ObjClose(*(a4 + 200), *(a4 + 208));
      }
    }

    return 0;
  }

  else
  {
    v13 = a6;
    inited = InitRsrcFunction(a1, a2, &v25);
    if ((inited & 0x80000000) == 0)
    {
      statpos_crf_unload(a3, v25, a4 + 1320, a4 + 8, (a4 + 1384), v13);
      if (*(a4 + 1424))
      {
        ObjcForThisApi = getObjcForThisApi(a3, v25);
        objc_ReleaseObject(ObjcForThisApi, a4 + 808);
      }

      statpos_rules_unload((a4 + 8), v15, v16, v17, v18, v19, v20, v21);
      v23 = safeh_GetNullHandle();
      if (!safeh_HandlesEqual(*(a4 + 200), *(a4 + 208), v23, v24))
      {
        nuance_pcre_DeInit(*(a4 + 200), *(a4 + 208));
        nuance_pcre_ObjClose(*(a4 + 200), *(a4 + 208));
      }
    }
  }

  return inited;
}

uint64_t statpos_process(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12, int a13, int a14, unsigned int a15)
{
  v23 = a12 == 1 && (*(a10 + 1436) | a13) == 0 && a14 == 1;
  *(a10 + 752) = a7;
  *(a10 + 760) = a8;
  *(a10 + 768) = a9;
  SentenceData = statpos_getSentenceData(a6, a4, a5, a10, a15);
  if ((SentenceData & 0x80000000) == 0 && *(a10 + 656))
  {
    if (a11 || (updated = statpos_disambiguatePOSTags(a10), (updated & 0x80000000) == 0))
    {
      if (*(a10 + 1416) == 1)
      {
        updated = statpos_updateNLULingdbField(a6, a4, a5, a10);
      }

      else if (a15 != 1 || (updated = statpos_setMorphemePRON(a1, a2, a3, a10), (updated & 0x80000000) == 0))
      {
        updated = statpos_alignDisambiguatedPOSToLingdb(a10, a15, v24, v25, v26, v27, v28, v29);
        if ((updated & 0x80000000) == 0)
        {
          updated = statpos_updatePOSLingdbWithDisambiguatedPOS(a6, a4, a5, a10, v23, a15);
        }
      }
    }

    SentenceData = updated;
  }

  statpos_freeSentenceData(a10);
  return SentenceData;
}

uint64_t statPOS_call_one_word(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char **a5, const char **a6, char **a7, uint64_t a8)
{
  v55 = *MEMORY[0x1E69E9840];
  v53 = 0;
  v51 = 0;
  __s = 0;
  strcpy(v54, "one_word");
  v49 = *a5;
  log_OutText(*(a1 + 32), "FE_POS", 5, 0, "%s L1: %s", a6, a7, a8, v54);
  v15 = *a5;
  v16 = strlen(v15);
  v17 = (*(a4 + 120))(a2, a3, 0, v15, v16);
  if ((v17 & 0x80000000) != 0 || (v50 = *a6, log_OutText(*(a1 + 32), "FE_POS", 5, 0, "%s L2: %s", v18, v19, v20, v54), v21 = strlen(*a6), v17 = (*(a4 + 120))(a2, a3, 1, *a6, v21), (v17 & 0x80000000) != 0) || (v17 = (*(a4 + 80))(a2, a3, v54), (v17 & 0x80000000) != 0) || (v17 = (*(a4 + 128))(a2, a3, 0, &__s, &v53), (v17 & 0x80000000) != 0))
  {
    v22 = v17;
  }

  else
  {
    __s[v53] = 0;
    v22 = (*(a4 + 128))(a2, a3, 0, &v51, &v53);
    if ((v22 & 0x80000000) == 0)
    {
      v51[v53] = 0;
      v23 = __s;
      if (*__s)
      {
        v24 = 0;
        v25 = 0;
        do
        {
          v26 = &v23[v24];
          if (v23[v24] == 126)
          {
            v27 = strlen(v26 + 2);
            memmove(v26 + 1, v26 + 2, v27 + 1);
            __s[v24] = 126;
            v23 = __s;
          }

          v24 = ++v25;
          v28 = strlen(v23);
        }

        while (v28 > v25);
        v29 = v28 + 1;
      }

      else
      {
        v29 = 1;
      }

      v32 = heap_Calloc(*(a1 + 8), 1, v29);
      *a7 = v32;
      if (v32)
      {
        strcpy(v32, __s);
        log_OutText(*(a1 + 32), "FE_POS", 5, 0, "%s O1 (phonetics) : %s", v37, v38, v39, v54);
        v43 = v51;
        if (*v51)
        {
          v44 = 0;
          v45 = 0;
          do
          {
            v46 = &v43[v44];
            if (v43[v44] == 126)
            {
              v47 = strlen(v46 + 2);
              memmove(v46 + 1, v46 + 2, v47 + 1);
              v51[v44] = 126;
              v43 = v51;
            }

            v44 = ++v45;
          }

          while (strlen(v43) > v45);
        }

        log_OutText(*(a1 + 32), "FE_POS", 5, 0, "%s O3 (POS code): %s (ignored)", v40, v41, v42, v54);
      }

      else
      {
        log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v33, v34, v35, v36, v48);
        v22 = 2313166858;
      }
    }
  }

  v30 = *MEMORY[0x1E69E9840];
  return v22;
}

uint64_t statphr_setFeature(uint64_t a1, char *__s1, char **a3, const char *a4)
{
  v8 = 0;
  while (strcmp(__s1, g_statphr_FeatureNames[v8]))
  {
    ++a3;
    if (++v8 == 8)
    {
      return 0;
    }
  }

  if (*a4)
  {
    if (strlen(a4) < 0x41 || (v9 = strlen(a4), result = resizeNFeature(a1, a3, (v9 + 1)), (result & 0x80000000) == 0))
    {
      strcpy(*a3, a4);
      return 0;
    }
  }

  else
  {
    result = 0;
    **a3 = 95;
  }

  return result;
}

uint64_t statphr_setNFeature(uint64_t a1, char *__s1, char **a3, const char *a4, unsigned int a5)
{
  v10 = 0;
  while (strcmp(__s1, g_statphr_FeatureNames[v10]))
  {
    ++a3;
    if (++v10 == 8)
    {
      return 0;
    }
  }

  if (!a5 || *a4)
  {
    if (a5 < 0x41 || (result = resizeNFeature(a1, a3, (a5 + 1)), (result & 0x80000000) == 0))
    {
      strncpy(*a3, a4, a5);
      result = 0;
      (*a3)[a5] = 0;
    }
  }

  else
  {
    result = 0;
    **a3 = 95;
  }

  return result;
}

uint64_t resizeNFeature(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  v5 = heap_Realloc(*(a1 + 8), *a2, a3);
  if (v5)
  {
    v10 = v5;
    result = 0;
    *a2 = v10;
  }

  else
  {
    log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v6, v7, v8, v9, v12);
    return 2313166858;
  }

  return result;
}

uint64_t statphr_initFeatureVector(uint64_t a1, char **a2, unsigned int a3)
{
  if (!a3)
  {
    return 0;
  }

  v5 = 0;
  v6 = 8 * a3 - 8;
  while (1)
  {
    v7 = heap_Calloc(*(a1 + 8), 1, 65);
    a2[v5 / 8] = v7;
    if (!v7)
    {
      break;
    }

    result = statphr_setFeature(a1, g_statphr_FeatureNames[v5 / 8], a2, "_");
    if ((result & 0x80000000) == 0)
    {
      v13 = v6 == v5;
      v5 += 8;
      if (!v13)
      {
        continue;
      }
    }

    return result;
  }

  log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v8, v9, v10, v11, v14);
  return 2313166858;
}

uint64_t statphr_dumpFeatureVectorAndResult(uint64_t a1, uint64_t a2, char *__src)
{
  v14 = *MEMORY[0x1E69E9840];
  strncpy(__dst, __src, 0x100uLL);
  v5 = 0;
  __dst[255] = 0;
  do
  {
    v6 = strlen(*(a2 + v5));
    if (v6 + strlen(__dst) + 2 > 0xFF)
    {
      break;
    }

    __strcat_chk();
    v10 = *(a2 + v5);
    __strcat_chk();
    v5 += 8;
  }

  while (v5 != 64);
  result = log_OutText(*(a1 + 32), "FE_POS", 5, 0, "%s", v7, v8, v9, __dst);
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t statphr_getIgtreeBrkStr(uint64_t a1, char *a2, unint64_t a3)
{
  *v7 = 0;
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", v7);
  if ((result & 0x80000000) == 0)
  {
    return brokeraux_ComposeBrokerString(a1, "statphr_igtree", 1, 1, *v7, 0, 0, a2, a3);
  }

  return result;
}

uint64_t statphr_readIGTree(_WORD *a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5, void *a6, _DWORD *a7)
{
  v16 = *MEMORY[0x1E69E9840];
  *a7 = 0;
  result = statphr_getIgtreeBrkStr(a5, v15, 0x100uLL);
  if ((result & 0x80000000) == 0)
  {
    result = igtree_Init_ReadOnly_ReferenceCnt(a1, a2, a3, a4, a6, 2, v15, "IGTR", 1031, 0);
    if ((result & 0x80000000) != 0)
    {
      result = 0;
      *a6 = 0;
    }

    else
    {
      *a7 = 1;
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t statphr_searchInIGTreeParamDefs(uint64_t a1, char *__s2, const char *a3)
{
  v3 = *(a1 + 1336);
  if (!v3)
  {
    return 0;
  }

  v6 = 0;
  v7 = *(a1 + 1328);
  while (1)
  {
    v8 = v7 + 16 * v6;
    if (!strcmp(*v8, __s2))
    {
      v9 = strstr(*(v8 + 8), a3);
      if (v9)
      {
        break;
      }
    }

LABEL_4:
    if (v3 <= ++v6)
    {
      return 0;
    }
  }

  v10 = v9;
  while (*(v10 - 1) != 32 || v10[strlen(a3)] != 32)
  {
    v10 = strstr(v10 + 1, a3);
    if (!v10)
    {
      goto LABEL_4;
    }
  }

  return 1;
}

uint64_t statphr_Process(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v223 = *MEMORY[0x1E69E9840];
  v220 = 0;
  v221 = 0;
  v219 = 0;
  v218 = 0;
  v216 = 0;
  v217 = 0;
  v215 = 0;
  memset(v222, 0, sizeof(v222));
  __src = 0;
  v213 = -1;
  v212 = 0;
  v210 = 0;
  v209 = 0;
  v15 = paramc_ParamGetInt(*(a1 + 40), "statcompwidescope", &v209) >= 0 && v209 == 0;
  v16 = (*(a2 + 104))(a3, a4, 1, 0, &v221);
  if ((v16 & 0x80000000) != 0)
  {
    v17 = v16;
    goto LABEL_49;
  }

  v17 = (*(a2 + 184))(a3, a4, v221, 0, &v221 + 2);
  if ((v17 & 0x80000000) == 0 && HIWORD(v221) == 1)
  {
    v17 = (*(a2 + 176))(a3, a4, v221, 0, &v217, &v220);
    if ((v17 & 0x80000000) == 0 && v220 >= 2u)
    {
      v18 = heap_Calloc(*(a1 + 8), 1, 32);
      if (!v18 || (v23 = v18, v205 = a6, *v18 = 0, v24 = strlen(v217), (v25 = heap_Calloc(*(a1 + 8), 1, v24 + 1)) == 0))
      {
        v17 = 2313166858;
        log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v19, v20, v21, v22, v176);
        goto LABEL_49;
      }

      v26 = v25;
      strcpy(v25, v217);
      v27 = (*(a2 + 104))(a3, a4, 2, v221, &v220 + 2);
      if ((v27 & 0x80000000) != 0)
      {
        v17 = v27;
        v32 = 0;
        v37 = 0;
        v33 = 0;
        v34 = 0;
        goto LABEL_31;
      }

      v198 = a7;
      v202 = v23;
      v203 = v26;
      v206 = 0;
      v28 = -1;
      while (HIWORD(v220))
      {
        v29 = (*(a2 + 168))(a3, a4);
        if ((v29 & 0x80000000) != 0)
        {
          goto LABEL_27;
        }

        if (v218 <= 0xA && ((1 << v218) & 0x610) != 0)
        {
          v29 = (*(a2 + 168))(a3, a4, HIWORD(v220), 1, 1, &v215 + 2, &v220);
          if ((v29 & 0x80000000) != 0)
          {
            goto LABEL_27;
          }

          v31 = v206;
          if (HIWORD(v215) != v28)
          {
            v31 = v206 + 1;
          }

          v206 = v31;
          v28 = HIWORD(v215);
        }

        v29 = (*(a2 + 120))(a3, a4, HIWORD(v220), &v220 + 2);
        if ((v29 & 0x80000000) != 0)
        {
LABEL_27:
          v17 = v29;
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v35 = 0;
          v36 = 0;
          v37 = v206;
          goto LABEL_32;
        }
      }

      v37 = v206;
      v204 = heap_Calloc(*(a1 + 8), 1, v206 << 6);
      if (!v204)
      {
        v17 = 2313166858;
        log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v44, v45, v46, v47, v176);
        v32 = 0;
        v33 = 0;
        v34 = 0;
        v35 = 0;
        v36 = 0;
        goto LABEL_32;
      }

      if (v206)
      {
        v48 = 0;
        while (1)
        {
          inited = statphr_initFeatureVector(a1, (v204 + 8 * v48), 8u);
          if ((inited & 0x80000000) != 0)
          {
            break;
          }

          v48 += 8;
          if (8 * v206 <= v48)
          {
            goto LABEL_55;
          }
        }

LABEL_123:
        v17 = inited;
        v32 = 0;
        v34 = 0;
        v35 = 0;
        v36 = 0;
        v37 = v206;
        v26 = v203;
        v33 = v204;
        goto LABEL_32;
      }

LABEL_55:
      inited = (*(a2 + 104))(a3, a4, 2, v221, &v220 + 2);
      if ((inited & 0x80000000) != 0)
      {
        goto LABEL_123;
      }

      v183 = 8 * v206;
      __s1 = 0;
      v193 = 0;
      v199 = 0;
      v26 = v203;
      v53 = -1;
      while (HIWORD(v220))
      {
        v54 = (*(a2 + 168))(a3, a4);
        if ((v54 & 0x80000000) != 0)
        {
          goto LABEL_120;
        }

        if (v218 - 9 < 2)
        {
          goto LABEL_62;
        }

        if (v218 != 6)
        {
          if (v218 != 4)
          {
            goto LABEL_119;
          }

LABEL_62:
          v54 = (*(a2 + 168))(a3, a4, HIWORD(v220), 1, 1, &v215 + 2, &v220);
          if ((v54 & 0x80000000) != 0)
          {
            goto LABEL_120;
          }

          if (HIWORD(v215) != v53)
          {
            v208 = 0;
            v207 = 0;
            HIWORD(v221) = 0;
            v17 = (*(a2 + 184))(a3, a4, HIWORD(v220), 14, &v221 + 2);
            if ((v17 & 0x80000000) != 0)
            {
              goto LABEL_277;
            }

            if (HIWORD(v221) != 1)
            {
              goto LABEL_277;
            }

            v17 = (*(a2 + 176))(a3, a4, HIWORD(v220), 14, &v216, &v220);
            if ((v17 & 0x80000000) != 0)
            {
              goto LABEL_277;
            }

            if (!hlp_NLUStrFind(v216, "POS", &v208, &v207))
            {
              log_OutText(*(a1 + 32), "FE_POS", 5, 0, "statPHR: internal ERROR - found a WordRecord %d without POS (NLU=%s), bailing out", v55, v56, v57, HIWORD(v220));
LABEL_277:
              v37 = v206;
LABEL_278:
              v33 = v204;
              v34 = v193;
              goto LABEL_282;
            }

            if (__s1 && !v199)
            {
              v58 = 0;
              v185 = (v204 + 8 * __s1);
              v195 = (v185 - 64);
              do
              {
                v59 = &g_statphr_FeatureNames[v58++];
              }

              while (strcmp("pos", v59[1]));
              v60 = v195[v58];
              v61 = strstr(v60, "_BVB");
              if (v61)
              {
                *v61 = 0;
              }

              v62 = statphr_setFeature(a1, "Lpos", v185, v60);
              if ((v62 & 0x80000000) != 0)
              {
                goto LABEL_124;
              }

              v62 = statphr_setNFeature(a1, "Rpos", v195, v208, v207);
              if ((v62 & 0x80000000) != 0)
              {
                goto LABEL_124;
              }
            }

            if (__s1 >= 9u && !v199)
            {
              v62 = statphr_setNFeature(a1, "RRpos", (v204 - 128 + 8 * __s1), v208, v207);
              if ((v62 & 0x80000000) != 0)
              {
                goto LABEL_124;
              }
            }

            v63 = (v204 + 8 * __s1);
            v62 = statphr_setNFeature(a1, "pos", v63, v208, v207);
            if ((v62 & 0x80000000) != 0)
            {
              goto LABEL_124;
            }

            if (HIWORD(v215) > v213 && v212)
            {
              v64 = (v204 + 8 * __s1);
              v65 = v212[3];
              v212[3] = 0;
              statphr_setFeature(a1, "Lpos", v64, v212 + 1);
              v62 = statphr_setFeature(a1, "Lchunk", v64, v212 + 1);
              if ((v62 & 0x80000000) != 0)
              {
                goto LABEL_124;
              }

              v212[3] = v65;
              if (__s1 >= 9u)
              {
                v66 = v212[3];
                v212[3] = 0;
                v62 = statphr_setFeature(a1, "Rpos", v64 - 16, v212 + 1);
                if ((v62 & 0x80000000) != 0)
                {
                  goto LABEL_124;
                }

                v212[3] = v66;
                if (__s1 >= 0x11u)
                {
                  v67 = v212[3];
                  v212[3] = 0;
                  v62 = statphr_setFeature(a1, "RRpos", v64 - 24, v212 + 1);
                  if ((v62 & 0x80000000) != 0)
                  {
                    goto LABEL_124;
                  }

                  v212[3] = v67;
                }
              }

              v213 = -1;
              v212 = 0;
              v63 = (v204 + 8 * __s1);
            }

            v62 = (*(a2 + 168))(a3, a4, HIWORD(v220), 2, 1, &v215, &v220);
            if ((v62 & 0x80000000) != 0 || (v62 = statphr_set_WBND_feature(a1, v63, v217, HIWORD(v215), 1), (v62 & 0x80000000) != 0) || (v182 = v63, v62 = statphr_set_WBND_feature(a1, v63, v217, v215, 0), (v62 & 0x80000000) != 0))
            {
LABEL_124:
              v17 = v62;
              v37 = v206;
              v26 = v203;
              goto LABEL_278;
            }

            v68 = v215 - HIWORD(v215);
            v196 = heap_Realloc(*(a1 + 8), v193, (v215 - HIWORD(v215)) + 1);
            if (!v196)
            {
              v34 = v193;
              v17 = 2313166858;
              log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v69, v70, v71, v72, v176);
LABEL_280:
              v37 = v206;
              v26 = v203;
LABEL_281:
              v33 = v204;
LABEL_282:
              v32 = 0;
LABEL_31:
              v35 = 0;
              v36 = 0;
LABEL_32:
              heap_Free(*(a1 + 8), v23);
              heap_Free(*(a1 + 8), v26);
              if (v32)
              {
                heap_Free(*(a1 + 8), v32);
              }

              if (v36)
              {
                heap_Free(*(a1 + 8), v36);
              }

              if (v35)
              {
                heap_Free(*(a1 + 8), v35);
              }

              if (v34)
              {
                heap_Free(*(a1 + 8), v34);
              }

              if (v33)
              {
                if (v37)
                {
                  v38 = 0;
                  v39 = 8 * v37;
                  do
                  {
                    for (i = 0; i != 64; i += 8)
                    {
                      v41 = *(v33 + 8 * v38 + i);
                      if (v41)
                      {
                        heap_Free(*(a1 + 8), v41);
                      }
                    }

                    v38 += 8;
                  }

                  while (v39 > v38);
                }

                heap_Free(*(a1 + 8), v33);
              }

              goto LABEL_49;
            }

            v73 = HIWORD(v215);
            v74 = v215;
            if (HIWORD(v215) < v215)
            {
              v199 = 0;
              v194 = 0;
              v186 = v68;
              while (1)
              {
                v75 = v73;
                v76 = &v217[v73];
                v77 = *v76;
                if (memchr(",:;.?!'", v77, 9uLL))
                {
                  v78 = memchr(",:;.?!", v77, 7uLL);
                  v79 = v199;
                  if (v78)
                  {
                    v79 = 1;
                  }

                  v199 = v79;
                  v73 = v75 + 1;
                }

                else
                {
                  NextUtf8Offset = utf8_GetNextUtf8Offset(v76, 0);
                  if (utf8_ToLower(v217, v75, __s))
                  {
                    if (strlen(__s) > NextUtf8Offset)
                    {
                      v81 = heap_Realloc(*(a1 + 8), v196, (v186 + 5) + 1);
                      if (!v81)
                      {
                        v17 = 2313166858;
                        log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v82, v83, v84, v85, v176);
                        v34 = v196;
                        v23 = v202;
                        goto LABEL_280;
                      }

                      v186 += 5;
                      v196 = v81;
                    }

                    else
                    {
                      strcpy(&v196[v194], __s);
                      v194 = strlen(v196);
                    }
                  }

                  else
                  {
                    strncpy(&v196[v194], &v217[v75], NextUtf8Offset);
                    v194 += NextUtf8Offset;
                  }

                  v73 = v75 + NextUtf8Offset;
                  v74 = v215;
                }

                if (v73 >= v74)
                {
                  v86 = v194;
                  goto LABEL_115;
                }
              }
            }

            v86 = 0;
            v199 = 0;
LABEL_115:
            v196[v86] = 0;
            v23 = v202;
            v26 = v203;
            if (*v196)
            {
              if (statphr_searchInIGTreeParamDefs(a5, "orthtokeep", v196))
              {
                v87 = statphr_setFeature(a1, "orth", v182, v196);
                if ((v87 & 0x80000000) != 0)
                {
                  v17 = v87;
                  v34 = v196;
                  v37 = v206;
                  goto LABEL_281;
                }
              }
            }

            __s1 += 8;
            v193 = v196;
            v53 = HIWORD(v215);
          }

          goto LABEL_119;
        }

        v54 = (*(a2 + 168))(a3, a4, HIWORD(v220), 2, 1, &v213, &v220);
        if ((v54 & 0x80000000) != 0 || (v54 = (*(a2 + 176))(a3, a4, HIWORD(v220), 4, &v212, &v220), (v54 & 0x80000000) != 0))
        {
LABEL_120:
          v17 = v54;
          v32 = 0;
          v35 = 0;
          v36 = 0;
LABEL_121:
          v37 = v206;
          v33 = v204;
          v34 = v193;
          goto LABEL_32;
        }

        if (strlen(v212) < 4 || !strcmp(v212, "_PR_"))
        {
          v212 = 0;
          v213 = -1;
        }

        v26 = v203;
LABEL_119:
        v54 = (*(a2 + 120))(a3, a4, HIWORD(v220), &v220 + 2);
        if ((v54 & 0x80000000) != 0)
        {
          goto LABEL_120;
        }
      }

      log_OutText(*(a1 + 32), "FE_POS", 5, 0, "Predicting PHR with IGtree", v50, v51, v52, v176);
      v17 = (*(a2 + 104))(a3, a4, 2, v221, &v220 + 2);
      if ((v17 & 0x80000000) != 0 || (v88 = HIWORD(v220)) == 0)
      {
        v32 = 0;
        v35 = 0;
        v36 = 0;
        goto LABEL_121;
      }

      __s1a = 0;
      v197 = 0;
      v184 = 0;
      v89 = 0;
      v181 = 0;
      v187 = 0;
      v180 = 0;
      __s2 = 0;
      v179 = 0;
      v200 = -1;
      while (2)
      {
        v90 = (*(a2 + 168))(a3, a4, v88, 0, 1, &v218, &v220);
        if ((v90 & 0x80000000) != 0)
        {
LABEL_283:
          v17 = v90;
LABEL_284:
          v37 = v206;
          goto LABEL_292;
        }

        if (v218 > 0xA || ((1 << v218) & 0x610) == 0)
        {
          goto LABEL_271;
        }

        v90 = (*(a2 + 168))(a3, a4, HIWORD(v220), 1, 1, &v215 + 2, &v220);
        if ((v90 & 0x80000000) != 0)
        {
          goto LABEL_283;
        }

        v90 = (*(a2 + 168))(a3, a4, HIWORD(v220), 2, 1, &v215, &v220);
        if ((v90 & 0x80000000) != 0)
        {
          goto LABEL_283;
        }

        strncpy(v26, &v217[HIWORD(v215)], v215 - HIWORD(v215));
        v26[v215 - HIWORD(v215)] = 0;
        if (HIWORD(v215) == v200)
        {
LABEL_255:
          if (__src)
          {
            v112 = (*(a2 + 176))(a3, a4, HIWORD(v220), 14, &v216, &v220);
            if ((v112 & 0x80000000) != 0)
            {
              goto LABEL_286;
            }

            v155 = *(a1 + 8);
            if (v187)
            {
              v156 = strlen(v23);
              v157 = v156 + strlen(v216) + 8;
              v158 = __s1a;
              v159 = heap_Realloc(v155, __s1a, v157);
              if (!v159)
              {
                goto LABEL_294;
              }

              v164 = v159;
              v165 = strcpy(v159, v216);
              v166 = v23;
            }

            else
            {
              v167 = strlen(__src);
              v168 = v167 + strlen(v216) + 8;
              v158 = __s1a;
              v169 = heap_Realloc(v155, __s1a, v168);
              if (!v169)
              {
LABEL_294:
                v36 = v158;
                v17 = 2313166858;
                log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v160, v161, v162, v163, v177);
                v37 = v206;
                v26 = v203;
                v33 = v204;
                v34 = v193;
                v35 = v197;
                v32 = v179;
                goto LABEL_32;
              }

              v164 = v169;
              v165 = strcpy(v169, v216);
              v166 = __src;
            }

            v170 = hlp_NLUStrSet(v165, "PHR", v166);
            __s1a = v164;
            if (v89)
            {
              v174 = 66;
            }

            else
            {
              if (!HIDWORD(v181))
              {
LABEL_267:
                if (!v187)
                {
                  strcpy(v23, __src);
                }

                log_OutText(*(a1 + 32), "FE_POS", 5, 0, "STATPHR : word=%s NLU=%s", v171, v172, v173, v203);
                v175 = strlen(v164);
                v112 = (*(a2 + 160))(a3, a4, HIWORD(v220), 14, (v175 + 1), v164, &v219);
                if ((v112 & 0x80000000) == 0)
                {
                  v26 = v203;
                  goto LABEL_271;
                }

LABEL_286:
                v17 = v112;
                goto LABEL_291;
              }

              v174 = 73;
            }

            v170[4] = v174;
            goto LABEL_267;
          }

LABEL_271:
          v17 = (*(a2 + 120))(a3, a4, HIWORD(v220), &v220 + 2);
          if ((v17 & 0x80000000) != 0)
          {
            goto LABEL_284;
          }

          v88 = HIWORD(v220);
          if (!HIWORD(v220))
          {
            goto LABEL_284;
          }

          continue;
        }

        break;
      }

      v92 = 0;
      v201 = (v204 + 8 * v184);
      while (strcmp("pos", g_statphr_FeatureNames[v92]))
      {
        if (++v92 == 8)
        {
          v93 = 0;
          goto LABEL_141;
        }
      }

      v93 = v201[v92];
LABEL_141:
      if (statphr_searchInIGTreeParamDefs(a5, "preppos", v93))
      {
        v94 = v184 + 8;
        v95 = v184 + 40;
        if (v95 > (v184 + 8) && v183 > (v184 + 8))
        {
          v188 = v93;
          if (v95 >= v183)
          {
            v96 = 8 * v206;
          }

          else
          {
            v96 = v184 + 40;
          }

          do
          {
            v97 = v204 + 8 * v94;
            if (**v97 != 95 || *(*v97 + 1))
            {
              v98 = 0;
              while (strcmp("pos", g_statphr_FeatureNames[v98]))
              {
                if (++v98 == 8)
                {
                  v99 = 0;
                  goto LABEL_154;
                }
              }

              v99 = *(v97 + v98 * 8);
LABEL_154:
              v23 = v202;
              if (!statphr_searchInIGTreeParamDefs(a5, "verbpos", v99))
              {
                v94 += 8;
                continue;
              }

              v100 = strlen(v188);
              v101 = heap_Realloc(*(a1 + 8), v197, (v100 + 5));
              if (!v101)
              {
                v17 = 2313166858;
                log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v102, v103, v104, v105, v177);
                goto LABEL_291;
              }

              v106 = v101;
              v107 = strcpy(v101, v188);
              strcpy(&v106[strlen(v107)], "_BVB");
              v108 = statphr_setFeature(a1, "pos", v201, v106);
              if ((v108 & 0x80000000) != 0)
              {
                v17 = v108;
                v35 = v106;
                v37 = v206;
                v26 = v203;
                v33 = v204;
                v34 = v193;
                goto LABEL_293;
              }

              v197 = v106;
            }

            v94 = 8 * v206;
          }

          while (v96 > v94);
        }
      }

      v189 = __src;
      if (__src)
      {
        v109 = 0;
        do
        {
          v110 = &g_statphr_FeatureNames[v109++];
        }

        while (strcmp("Lchunk", v110[1]));
        v111 = v201[v109];
        if (*v111 == 95 && !v111[1] && (**v201 != 95 || (*v201)[1]))
        {
          statphr_setFeature(a1, "Lchunk", v201, v189);
        }
      }

      if (v205 != 1)
      {
        goto LABEL_183;
      }

      v112 = (*(a2 + 176))(a3, a4, HIWORD(v220), 14, &v216, &v220);
      if ((v112 & 0x80000000) != 0)
      {
        goto LABEL_286;
      }

      v113 = v216;
      if (v216)
      {
        v114 = v15;
      }

      else
      {
        v114 = 0;
      }

      if (v114)
      {
        v115 = strstr(v216, "COMP:");
        if (v115)
        {
          v190 = 0;
          v116 = v181;
          if (v115[5] == 66)
          {
            v116 = 1;
          }

          v180 = v115[5] == 66;
          LODWORD(v181) = v116;
LABEL_185:
          if (*(a5 + 1296) >= 2u)
          {
            v119 = 0;
            do
            {
              v120 = 0;
              v121 = *(a5 + 1312);
              v122 = *(v121 + 8 * v119);
              while (strcmp(v122, g_statphr_FeatureNames[v120]))
              {
                if (++v120 == 8)
                {
                  v126 = 0;
                  goto LABEL_192;
                }
              }

              v126 = v201[v120];
LABEL_192:
              *(v222 + v119) = v126;
              log_OutText(*(a1 + 32), "FE_POS", 5, 0, "Feature %s is %s", v123, v124, v125, *(v121 + 8 * v119++));
            }

            while (*(a5 + 1296) - 1 > v119);
          }

          v127 = igtree_Process(a5, v222, &__src);
          if ((v127 & 0x80000000) != 0)
          {
LABEL_289:
            v17 = v127;
            goto LABEL_290;
          }

          statphr_dumpFeatureVectorAndResult(a1, v201, __src);
          v131 = *__src;
          if (__s1a)
          {
            if (v131 != 73 || strstr(__s1a, __src + 1))
            {
              goto LABEL_197;
            }
          }

          else if (v131 != 73)
          {
LABEL_197:
            v132 = 0;
            v133 = 1;
LABEL_200:
            if (v205)
            {
              if (v190)
              {
                v89 = v132;
                v181 = 0;
                v180 = 0;
                goto LABEL_231;
              }

              v143 = *__src;
              if (v143 == 66)
              {
                v89 = v132;
                if (v181 != 1)
                {
                  v181 = 0;
                  goto LABEL_231;
                }
              }

              else
              {
                v89 = v132;
                if (!v132)
                {
                  v187 = 0;
                  HIDWORD(v181) = 0;
                  goto LABEL_253;
                }

                if (v143 != 73 || v181 != 1)
                {
                  HIDWORD(v181) = 0;
                  v187 = 0;
                  v89 = 1;
                  v23 = v202;
                  v26 = v203;
                  if (!v198)
                  {
                    goto LABEL_254;
                  }

                  goto LABEL_238;
                }
              }

              if (v180)
              {
                HIDWORD(v181) = 0;
              }

              else
              {
                v153 = *v202;
                if (v153 == 79)
                {
                  v154 = -v202[1];
                }

                else
                {
                  v154 = 79 - v153;
                }

                if (v154)
                {
                  *v202 = 73;
                  log_OutText(*(a1 + 32), "FE_POS", 5, 0, "STATPHR : Force PHR to %s as bisects compound", v128, v129, v130, v202);
                  v180 = 0;
                  HIDWORD(v181) = 0;
                  if (v89)
                  {
                    v89 = *__src != 73;
                  }

                  LODWORD(v181) = 1;
                  v187 = 1;
                  goto LABEL_253;
                }

                HIDWORD(v181) = 0;
                v180 = 0;
              }

              LODWORD(v181) = 1;
              goto LABEL_231;
            }

            v89 = v132;
            v127 = (*(a2 + 176))(a3, a4, HIWORD(v220), 5, &v210, &v220);
            if ((v127 & 0x80000000) != 0)
            {
              goto LABEL_289;
            }

            HIDWORD(v181) = 0;
            v134 = v210;
            if (!__s1a || !__s2)
            {
LABEL_230:
              __s2 = strstr(v134, ",COMP");
LABEL_231:
              if (v198)
              {
                if (!v133)
                {
                  v89 = 1;
                  v23 = v202;
                  v26 = v203;
                  goto LABEL_238;
                }

                if (__src)
                {
                  v89 = 0;
                  v187 = 0;
                  v23 = v202;
                  v26 = v203;
                  if (*__src != 66)
                  {
                    goto LABEL_254;
                  }

LABEL_238:
                  if (statphr_isWBND(v201))
                  {
                    v187 = 0;
                  }

                  else
                  {
                    log_OutText(*(a1 + 32), "FE_POS", 5, 0, "STATPHR : Force PHR from %s to I-* as it bisects eojeol", v150, v151, v152, __src);
                    v187 = 0;
                    v89 = 0;
                    HIDWORD(v181) = 1;
                  }

                  goto LABEL_254;
                }

                v187 = 0;
                v89 = 0;
              }

              else
              {
                v187 = 0;
              }

LABEL_253:
              v23 = v202;
              v26 = v203;
LABEL_254:
              v184 += 8;
              v200 = HIWORD(v215);
              goto LABEL_255;
            }

            if (!strstr(v210, __s2) || *__src == 73 || (v135 = strstr(__s1a, "PHR:"), (__src = v135) == 0))
            {
              HIDWORD(v181) = 0;
              goto LABEL_230;
            }

            __src = v135 + 4;
            v136 = v135[4];
            v137 = strlen(v135 + 4);
            v138 = heap_Realloc(*(a1 + 8), v179, (v137 + 1));
            if (v138)
            {
              HIDWORD(v181) = v136 == 66;
              __src = strcpy(v138, __src);
              v134 = v210;
              v179 = __src;
              goto LABEL_230;
            }

            v17 = 2313166858;
            log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v139, v140, v141, v142, v177);
LABEL_290:
            v23 = v202;
LABEL_291:
            v37 = v206;
            v26 = v203;
LABEL_292:
            v33 = v204;
            v34 = v193;
            v35 = v197;
LABEL_293:
            v32 = v179;
            v36 = __s1a;
            goto LABEL_32;
          }

          log_OutText(*(a1 + 32), "FE_POS", 5, 0, "Forcing consistency of IOB tags", v128, v129, v130, v177);
          v133 = 0;
          v132 = 1;
          goto LABEL_200;
        }
      }

      if (v113 && !v15)
      {
        v144 = strstr(v113, "S_COMP:");
        if (v144)
        {
          v145 = 1;
        }

        else
        {
          v145 = v180;
        }

        v146 = strstr(v113, "I_COMP:");
        v147 = v181;
        if (v146 | v144)
        {
          v147 = 1;
        }

        LODWORD(v181) = v147;
        v148 = strstr(v113, "E_COMP:");
        if (v148 | v146)
        {
          v149 = 0;
        }

        else
        {
          v149 = v145;
        }

        v180 = v149;
        v118 = (v148 | v146 | v144) == 0;
      }

      else
      {
LABEL_183:
        v118 = 1;
      }

      v190 = v118;
      goto LABEL_185;
    }
  }

LABEL_49:
  v42 = *MEMORY[0x1E69E9840];
  return v17;
}

uint64_t statphr_set_WBND_feature(uint64_t a1, char **a2, char *__s, unsigned int a4, int a5)
{
  if (a4)
  {
    v8 = a5 == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  if (a4 && (v10 = a4, strlen(__s) > a4) && __s[(v10 - v9)] != 32)
  {
    v12 = "0";
  }

  else
  {
    v12 = "1";
  }

  if (a5)
  {
    v13 = "Lwbnd";
  }

  else
  {
    v13 = "Rwbnd";
  }

  return statphr_setFeature(a1, v13, a2, v12);
}

BOOL statphr_isWBND(uint64_t a1)
{
  v2 = 0;
  while (strcmp("Lwbnd", g_statphr_FeatureNames[v2]))
  {
    if (++v2 == 8)
    {
      return 0;
    }
  }

  v3 = *(a1 + v2 * 8);
  return v3 && *v3 == 49 && !v3[1];
}

uint64_t statphr_MorphemeProcess(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = 0;
  v30 = 0;
  v27 = 0;
  v28 = 0;
  __s = 0;
  v26 = 0;
  v8 = (*(a2 + 104))(a3, a4, 1, 0, &v30);
  if ((v8 & 0x80000000) != 0)
  {
    return v8;
  }

  v9 = (*(a2 + 184))(a3, a4, v30, 0, &v30 + 2);
  if ((v9 & 0x80000000) == 0 && HIWORD(v30) == 1)
  {
    v9 = (*(a2 + 176))(a3, a4, v30, 0, &v26, &v29);
    if ((v9 & 0x80000000) == 0 && v29 >= 2u)
    {
      v9 = (*(a2 + 104))(a3, a4, 2, v30, &v29 + 2);
      if ((v9 & 0x80000000) == 0)
      {
        v10 = HIWORD(v29);
        if (HIWORD(v29))
        {
          v11 = 0;
          while (1)
          {
            v12 = (*(a2 + 168))(a3, a4, v10, 0, 1, &v27, &v29);
            if ((v12 & 0x80000000) != 0)
            {
LABEL_31:
              v9 = v12;
              goto LABEL_34;
            }

            if (v27 <= 0xA && ((1 << v27) & 0x610) != 0)
            {
              v9 = (*(a2 + 184))(a3, a4, HIWORD(v29), 14, &v30 + 2);
              if ((v9 & 0x80000000) != 0 || HIWORD(v30) != 1)
              {
                goto LABEL_34;
              }

              v12 = (*(a2 + 176))(a3, a4, HIWORD(v29), 14, &__s, &v29);
              if ((v12 & 0x80000000) != 0)
              {
                goto LABEL_31;
              }

              v14 = strlen(__s);
              v15 = heap_Realloc(*(a1 + 8), v11, v14 + 10);
              if (!v15)
              {
                log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v16, v17, v18, v19, __s);
                v9 = 2313166858;
LABEL_34:
                v20 = v11;
                if (!v11)
                {
                  return v9;
                }

LABEL_35:
                heap_Free(*(a1 + 8), v20);
                return v9;
              }

              v20 = v15;
              strcpy(v15, __s);
              v21 = (*(a2 + 168))(a3, a4, HIWORD(v29), 1, 1, &v28, &v29);
              if ((v21 & 0x80000000) != 0 || (!v28 ? (v22 = "PHR:B-WP") : *(v26 + v28 - 1) != 95 ? (v22 = "PHR:B-WP") : (v22 = "PHR:I-WP"), hlp_NLUStrJoin(v20, v22), v23 = strlen(v20), v21 = (*(a2 + 160))(a3, a4, HIWORD(v29), 14, (v23 + 1), v20, &v28 + 2), (v21 & 0x80000000) != 0))
              {
                v9 = v21;
                goto LABEL_35;
              }

              v11 = v20;
            }

            v9 = (*(a2 + 120))(a3, a4, HIWORD(v29), &v29 + 2);
            if ((v9 & 0x80000000) == 0)
            {
              v10 = HIWORD(v29);
              if (HIWORD(v29))
              {
                continue;
              }
            }

            goto LABEL_34;
          }
        }
      }
    }
  }

  return v9;
}

uint64_t statcomp_setParams(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  if ((paramc_ParamGetInt(*(a1 + 40), "statcompdetailtrace", &v5) & 0x80000000) == 0)
  {
    *(a2 + 8) = v5;
  }

  if ((paramc_ParamGetInt(*(a1 + 40), "statcompsrctrace", &v5) & 0x80000000) == 0)
  {
    *(a2 + 10) = v5;
  }

  *(a2 + 12) = 1;
  if ((paramc_ParamGetInt(*(a1 + 40), "statcompwidescope", &v5) & 0x80000000) == 0 && !v5)
  {
    *(a2 + 12) = 0;
  }

  return 0;
}

uint64_t statcomp_rules_unload(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a1;
  v10 = *(a1 + 272);
  if (v10)
  {
    heap_Free(*(v9 + 8), v10);
    *(a1 + 272) = 0;
  }

  v11 = *(a1 + 288);
  if (v11)
  {
    v12 = ssftriff_reader_ReleaseChunkData(v11, v10, a3, a4, a5, a6, a7, a8);
    if ((v12 & 0x80000000) != 0)
    {
      return v12;
    }

    *(a1 + 288) = 0;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(a1 + 312);
  if (v13)
  {
    heap_Free(*(v9 + 8), v13);
    *(a1 + 312) = 0;
  }

  v14 = *(a1 + 328);
  if (v14)
  {
    v12 = ssftriff_reader_ReleaseChunkData(v14, v13, a3, a4, a5, a6, a7, a8);
    if ((v12 & 0x80000000) != 0)
    {
      return v12;
    }

    *(a1 + 328) = 0;
  }

  v15 = *(a1 + 232);
  if (v15)
  {
    heap_Free(*(v9 + 8), v15);
    *(a1 + 232) = 0;
  }

  v16 = *(a1 + 248);
  if (v16)
  {
    v12 = ssftriff_reader_ReleaseChunkData(v16, v15, a3, a4, a5, a6, a7, a8);
    if ((v12 & 0x80000000) != 0)
    {
      return v12;
    }

    *(a1 + 248) = 0;
  }

  if (*(a1 + 72))
  {
    v17 = 0;
    v18 = 104;
    do
    {
      v19 = *(a1 + 64);
      if (v19)
      {
        heap_Free(*(v9 + 8), *(v19 + v18 - 96));
        v20 = *(a1 + 64) + v18;
        *(v20 - 96) = 0;
        freeRULEREGEXES(v9, v20 - 80);
        freeRULEREGEXES(v9, *(a1 + 64) + v18 - 64);
        v21 = *(a1 + 64);
        v22 = *(v21 + v18 - 48);
        if (v22 && *(v21 + v18 - 40))
        {
          heap_Free(*(v9 + 8), v22);
          v21 = *(a1 + 64);
          *(v21 + v18 - 48) = 0;
        }

        freeRULEREGEXES(v9, v21 + v18 - 32);
        heap_Free(*(v9 + 8), *(*(a1 + 64) + v18 - 16));
        v23 = (*(a1 + 64) + v18);
        *(v23 - 2) = 0;
        heap_Free(*(v9 + 8), *v23);
        *(*(a1 + 64) + v18) = 0;
      }

      if (*(a1 + 88))
      {
        heap_Free(*(v9 + 8), *(a1 + 80));
        *(a1 + 80) = 0;
        *(a1 + 88) = 0;
      }

      if (*(a1 + 104))
      {
        heap_Free(*(v9 + 8), *(a1 + 96));
        *(a1 + 96) = 0;
        *(a1 + 104) = 0;
      }

      ++v17;
      v18 += 120;
    }

    while (v17 < *(a1 + 72));
    if (*(a1 + 72))
    {
      heap_Free(*(v9 + 8), *(a1 + 64));
      *(a1 + 64) = 0;
      *(a1 + 72) = 0;
    }
  }

  v24 = *(a1 + 32);
  if (v24)
  {
    heap_Free(*(v9 + 8), v24);
    *(a1 + 32) = 0;
  }

  *(a1 + 40) = 0;
  v25 = *(a1 + 48);
  if (v25)
  {
    if (*(a1 + 56))
    {
      v26 = 0;
      v27 = 0;
      do
      {
        heap_Free(*(v9 + 8), *(v25 + v26));
        v25 = *(a1 + 48);
        v28 = v25 + v26;
        *v28 = 0;
        *(v28 + 8) = 0;
        ++v27;
        v26 += 16;
      }

      while (v27 < *(a1 + 56));
    }

    heap_Free(*(v9 + 8), v25);
    *(a1 + 48) = 0;
  }

  *(a1 + 56) = 0;
  v29 = *(a1 + 340);
  if (*(a1 + 340))
  {
    v30 = 0;
    do
    {
      v31 = *(a1 + 344);
      if (v31)
      {
        heap_Free(*(v9 + 8), *(v31 + 8 * v30));
        *(*(a1 + 344) + 8 * v30) = 0;
        v29 = *(a1 + 340);
      }

      ++v30;
    }

    while (v30 < v29);
    heap_Free(*(v9 + 8), *(a1 + 344));
    *(a1 + 344) = 0;
    *(a1 + 340) = 0;
  }

  v32 = *(a1 + 352);
  if (v32)
  {
    heap_Free(*(v9 + 8), v32);
    *(a1 + 352) = 0;
  }

  v33 = *(a1 + 360);
  if (v33)
  {
    heap_Free(*(v9 + 8), v33);
    *(a1 + 360) = 0;
  }

  if (*(a1 + 136))
  {
    v34 = 0;
    do
    {
      v35 = *(a1 + 152);
      if (v35)
      {
        heap_Free(*(v9 + 8), *(v35 + 8 * v34));
        *(*(a1 + 152) + 8 * v34) = 0;
      }

      v36 = *(a1 + 160);
      if (v36)
      {
        v37 = *(v36 + 8 * v34);
        if (v37)
        {
          v12 = igtree_Deinit(v9, v37, a3, a4, a5, a6, a7, a8);
          if ((v12 & 0x80000000) != 0)
          {
            return v12;
          }

          heap_Free(*(v9 + 8), *(*(a1 + 160) + 8 * v34));
          *(*(a1 + 160) + 8 * v34) = 0;
        }
      }

      v38 = *(a1 + 168);
      if (v38)
      {
        v39 = *(v38 + 8 * v34);
        if (v39)
        {
          if (*(v39 + 8))
          {
            v40 = 0;
            do
            {
              v41 = *v39;
              if (v41)
              {
                heap_Free(*(v9 + 8), *(v41 + 8 * v40));
                *(**(*(a1 + 168) + 8 * v34) + 8 * v40) = 0;
                v38 = *(a1 + 168);
              }

              ++v40;
              v39 = *(v38 + 8 * v34);
            }

            while (v40 < *(v39 + 8));
          }

          heap_Free(*(v9 + 8), *v39);
          v42 = *(a1 + 168);
          **(v42 + 8 * v34) = 0;
          heap_Free(*(v9 + 8), *(v42 + 8 * v34));
          *(*(a1 + 168) + 8 * v34) = 0;
        }
      }

      v43 = *(a1 + 176);
      if (v43)
      {
        v44 = *(v43 + 8 * v34);
        if (v44)
        {
          heap_Free(*(v9 + 8), v44);
          *(*(a1 + 176) + 8 * v34) = 0;
        }
      }

      v45 = *(a1 + 184);
      if (v45)
      {
        v46 = *(v45 + 8 * v34);
        if (v46)
        {
          heap_Free(*(v9 + 8), *v46);
          v47 = *(a1 + 184);
          **(v47 + 8 * v34) = 0;
          heap_Free(*(v9 + 8), *(v47 + 8 * v34));
          *(*(a1 + 184) + 8 * v34) = 0;
        }
      }

      ++v34;
    }

    while (v34 < *(a1 + 136));
    heap_Free(*(v9 + 8), *(a1 + 144));
    *(a1 + 144) = 0;
    heap_Free(*(v9 + 8), *(a1 + 152));
    *(a1 + 152) = 0;
    heap_Free(*(v9 + 8), *(a1 + 160));
    *(a1 + 160) = 0;
    heap_Free(*(v9 + 8), *(a1 + 168));
    *(a1 + 168) = 0;
    heap_Free(*(v9 + 8), *(a1 + 176));
    *(a1 + 176) = 0;
    heap_Free(*(v9 + 8), *(a1 + 184));
    *(a1 + 184) = 0;
    *(a1 + 136) = 0;
  }

  v48 = *(a1 + 128);
  if (*(a1 + 128))
  {
    v49 = 0;
    v50 = 0;
    v51 = *(a1 + 120);
    v52 = v51;
    do
    {
      if (v52)
      {
        heap_Free(*(v9 + 8), *(v52 + v49));
        v53 = (*(a1 + 120) + v49);
        *v53 = 0;
        heap_Free(*(v9 + 8), v53[1]);
        v51 = *(a1 + 120);
        *(v51 + v49 + 8) = 0;
        v48 = *(a1 + 128);
        v52 = v51;
      }

      ++v50;
      v49 += 16;
    }

    while (v50 < v48);
    *(a1 + 128) = 0;
    heap_Free(*(v9 + 8), v51);
    *(a1 + 120) = 0;
  }

  return v12;
}

void *freeRULEREGEXES(void *result, uint64_t a2)
{
  if (a2)
  {
    v3 = *a2;
    if (v3)
    {
      v4 = result;
      if (*(a2 + 8))
      {
        v5 = 0;
        v6 = 0;
        do
        {
          v7 = *a2;
          v8 = *(*a2 + v5);
          if (v8)
          {
            if (*(v8 + 8))
            {
              heap_Free(v4[1], *v8);
              *v8 = 0;
              v8 = *(v7 + v5);
            }

            heap_Free(v4[1], v8);
            *(v7 + v5) = 0;
          }

          v9 = v7 + v5;
          v10 = *(v9 + 8);
          if (v10)
          {
            if (*(v10 + 8))
            {
              heap_Free(v4[1], *v10);
              *v10 = 0;
              v10 = *(v9 + 8);
            }

            heap_Free(v4[1], v10);
            *(v9 + 8) = 0;
          }

          v11 = *(v9 + 16);
          if (v11)
          {
            if (*(v11 + 8))
            {
              heap_Free(v4[1], *v11);
              *v11 = 0;
              v11 = *(v9 + 16);
            }

            heap_Free(v4[1], v11);
            *(v9 + 16) = 0;
          }

          ++v6;
          v5 += 24;
        }

        while (v6 < *(a2 + 8));
        v3 = *a2;
      }

      result = heap_Free(v4[1], v3);
      *a2 = 0;
    }
  }

  return result;
}

uint64_t statcomp_rules_load(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a7;
  v9 = a6;
  v12 = a3;
  v264[17] = *MEMORY[0x1E69E9840];
  v260 = 0;
  v259 = 0;
  v257 = 0;
  v258 = 0;
  v255 = 0;
  v256 = 0;
  memset(v263, 0, sizeof(v263));
  *a4 = a3;
  *(a4 + 338) = 5;
  log_OutText(*(a3 + 32), "FE_POS", 5, 0, "loading StatCOMP rules", a6, a7, a8, 0);
  __s = 0;
  memset(v264, 0, 128);
  *__s2 = 0;
  Str = paramc_ParamGetStr(*(v12 + 40), "langcode", &__s);
  if ((Str & 0x80000000) != 0)
  {
    goto LABEL_193;
  }

  v253 = a1;
  v254 = a2;
  v16 = __s;
  if (*__s)
  {
    v17 = 0;
    do
    {
      v18 = v17;
      __s2[v17] = __tolower(v16[v17]);
      ++v17;
      v16 = __s;
      v19 = strlen(__s);
    }

    while (v18 <= 1 && v17 < v19);
  }

  else
  {
    v17 = 0;
  }

  __s2[v17] = 0;
  if (strcmp(v16, __s2))
  {
    Str = paramc_ParamSetStr(*(v12 + 40), "langcode", __s2);
    if ((Str & 0x80000000) != 0)
    {
      goto LABEL_193;
    }

    __s = __s2;
  }

  __strcpy_chk();
  __strcat_chk();
  __strcat_chk();
  Str = brokeraux_ComposeBrokerString(v12, v264, 0, 1, __s, 0, 0, v263, 0x80uLL);
  if ((Str & 0x80000000) != 0)
  {
    goto LABEL_193;
  }

  Str = brk_DataOpenEx(*(v12 + 24), v263, 1, &v255);
  if ((Str & 0x80000000) != 0)
  {
    goto LABEL_193;
  }

  Str = brk_DataClose(*(v12 + 24), v255);
  if ((Str & 0x80000000) != 0)
  {
    goto LABEL_193;
  }

  Str = ssftriff_reader_ObjOpen(v253, a2, 0, v263, "SCMP", 1031, &v260);
  if ((Str & 0x80000000) != 0)
  {
    goto LABEL_193;
  }

  v249 = a5;
  do
  {
    LODWORD(v27) = ssftriff_reader_OpenChunk(v260, &v258, &v257, &v256, v20, v21, v22, v23);
    if ((v27 & 0x80000000) != 0)
    {
      break;
    }

    if (v258 ^ 0x47494643 | v259)
    {
      if (!(v258 ^ 0x54455353 | v259))
      {
        v34 = v256;
        v35 = *v256;
        *(a4 + 40) = v35;
        v36 = heap_Calloc(*(*a4 + 8), 1, (8 * v35) | 1);
        *(a4 + 32) = v36;
        if (!v36)
        {
          goto LABEL_127;
        }

        if (*(a4 + 40))
        {
          v41 = 0;
          v42 = 0;
          v43 = 2;
          do
          {
            *(*(a4 + 32) + v41) = *(v34 + v43);
            v44 = v43 + 4;
            *(*(a4 + 32) + v41 + 4) = *(v34 + v44);
            v43 = v44 + 4;
            ++v42;
            v41 += 8;
          }

          while (v42 < *(a4 + 40));
        }

        LODWORD(v27) = 0;
        goto LABEL_95;
      }

      if (v258 ^ 0x50414D53 | v259)
      {
        if (v258 ^ 0x4C555243 | v259)
        {
          if (!(v258 ^ 0x58474552 | v259))
          {
            v28 = v260;
            v82 = v256;
            v264[0] = v256;
            v83 = *v256;
            *(a4 + 216) = *v256;
            if (v83)
            {
              v84 = (*(v82 + 1) + 8);
              *(a4 + 224) = v82 + v84;
              v85 = (v84 + v83);
            }

            else
            {
              v85 = 4;
            }

            v90 = *(v82 + v85);
            *(a4 + 240) = v90;
            v91 = heap_Calloc(*(*a4 + 8), 1, (4 * v90) | 1);
            *(a4 + 232) = v91;
            if (!v91)
            {
              goto LABEL_127;
            }

            if (*(a4 + 240))
            {
              v93 = 0;
              v94 = v85 + 2;
              do
              {
                *(*(a4 + 232) + 4 * v93) = *(v82 + v94);
                v94 += 4;
                ++v93;
              }

              while (v93 < *(a4 + 240));
            }

            v95 = (a4 + 248);
            goto LABEL_94;
          }

          if (!(v258 ^ 0x53525453 | v259))
          {
            v28 = v260;
            v86 = v256;
            v264[0] = v256;
            v87 = *v256;
            *(a4 + 296) = *v256;
            if (v87)
            {
              v88 = (*(v86 + 1) + 8);
              *(a4 + 304) = v86 + v88;
              v89 = (v88 + v87);
            }

            else
            {
              v89 = 4;
            }

            v96 = *(v86 + v89);
            *(a4 + 320) = v96;
            v97 = heap_Calloc(*(*a4 + 8), 1, (4 * v96) | 1);
            *(a4 + 312) = v97;
            if (!v97)
            {
              goto LABEL_127;
            }

            if (*(a4 + 320))
            {
              v98 = 0;
              v99 = v89 + 2;
              do
              {
                *(*(a4 + 312) + 4 * v98) = *(v86 + v99);
                v99 += 4;
                ++v98;
              }

              while (v98 < *(a4 + 320));
            }

            v95 = (a4 + 328);
            goto LABEL_94;
          }

          if (!(v258 ^ 0x54534552 | v259))
          {
            v28 = v260;
            v29 = v256;
            v264[0] = v256;
            v30 = *v256;
            *(a4 + 256) = *v256;
            if (v30)
            {
              v31 = (*(v29 + 1) + 8);
              *(a4 + 264) = v29 + v31;
              v32 = (v31 + v30);
            }

            else
            {
              v32 = 4;
            }

            v100 = *(v29 + v32);
            *(a4 + 280) = v100;
            v101 = heap_Calloc(*(*a4 + 8), 1, (4 * v100) | 1);
            *(a4 + 272) = v101;
            if (!v101)
            {
              goto LABEL_127;
            }

            if (*(a4 + 280))
            {
              v102 = 0;
              v103 = v32 + 2;
              do
              {
                *(*(a4 + 272) + 4 * v102) = *(v29 + v103);
                v103 += 4;
                ++v102;
              }

              while (v102 < *(a4 + 280));
            }

            v95 = (a4 + 288);
LABEL_94:
            v27 = ssftriff_reader_DetachChunkData(v28, v95, v264, v92, v37, v38, v39, v40);
            if ((v27 & 0x80000000) != 0)
            {
              goto LABEL_194;
            }
          }
        }

        else
        {
          v54 = v256;
          v55 = *v256;
          *(a4 + 72) = v55;
          v56 = heap_Calloc(*(*a4 + 8), 1, (120 * v55) | 1);
          *(a4 + 64) = v56;
          if (!v56)
          {
            goto LABEL_127;
          }

          if (*(a4 + 72))
          {
            v57 = 0;
            v58 = 2;
            do
            {
              v59 = 120 * v57;
              *(v56 + 120 * v57) = *(v54 + v58);
              *(*(a4 + 64) + 120 * v57 + 4) = *(v54 + v58 + 4);
              *(*(a4 + 64) + 120 * v57 + 16) = *(v54 + v58 + 8);
              v60 = heap_Calloc(*(*a4 + 8), 1, (4 * *(*(a4 + 64) + 120 * v57 + 16)) | 1);
              v61 = *(a4 + 64);
              *(v61 + 120 * v57 + 8) = v60;
              if (!v60)
              {
                goto LABEL_127;
              }

              v62 = v58 + 10;
              v63 = v61 + 120 * v57;
              v64 = *(v63 + 16);
              if (*(v63 + 16))
              {
                do
                {
                  v65 = *(v54 + v62);
                  v62 += 2;
                  *v60++ = v65;
                  --v64;
                }

                while (v64);
              }

              LODWORD(v264[0]) = v62;
              Str = readRULEREGEXES(*a4, v54, v264, (v63 + 24));
              if ((Str & 0x80000000) != 0)
              {
                goto LABEL_193;
              }

              Str = readRULEREGEXES(*a4, v54, v264, (*(a4 + 64) + 120 * v57 + 40));
              if ((Str & 0x80000000) != 0)
              {
                goto LABEL_193;
              }

              v66 = v264[0];
              *(*(a4 + 64) + v59 + 64) = *(v54 + LODWORD(v264[0]));
              v67 = heap_Calloc(*(*a4 + 8), 1, (8 * *(*(a4 + 64) + v59 + 64)) | 1);
              v68 = *(a4 + 64);
              *(v68 + v59 + 56) = v67;
              if (!v67)
              {
                goto LABEL_127;
              }

              if (*(v68 + 120 * v57 + 64))
              {
                v69 = 0;
                v70 = 0;
                do
                {
                  *(*(v68 + v59 + 56) + v69) = *(v54 + (v66 + v69 + 2));
                  *(*(*(a4 + 64) + v59 + 56) + v69 + 4) = *(v54 + (v66 + v69 + 6));
                  ++v70;
                  v68 = *(a4 + 64);
                  v69 += 8;
                }

                while (v70 < *(v68 + v59 + 64));
                v71 = v66 + v69 + 2;
              }

              else
              {
                v71 = v66 + 2;
              }

              LODWORD(v264[0]) = v71;
              Str = readRULEREGEXES(*a4, v54, v264, (v68 + 120 * v57 + 72));
              if ((Str & 0x80000000) != 0)
              {
                goto LABEL_193;
              }

              v72 = v264[0];
              *(*(a4 + 64) + v59 + 96) = *(v54 + LODWORD(v264[0]));
              v73 = heap_Calloc(*(*a4 + 8), 1, (8 * *(*(a4 + 64) + v59 + 96)) | 1);
              v74 = *(a4 + 64);
              *(v74 + v59 + 88) = v73;
              if (!v73)
              {
                goto LABEL_127;
              }

              if (*(v74 + 120 * v57 + 96))
              {
                v75 = 0;
                v76 = 0;
                do
                {
                  *(*(v74 + v59 + 88) + v75) = *(v54 + (v72 + v75 + 2));
                  *(*(*(a4 + 64) + v59 + 88) + v75 + 4) = *(v54 + (v72 + v75 + 6));
                  ++v76;
                  v74 = *(a4 + 64);
                  v75 += 8;
                }

                while (v76 < *(v74 + v59 + 96));
                v77 = v72 + v75 + 2;
              }

              else
              {
                v77 = v72 + 2;
              }

              *(v74 + v59 + 112) = *(v54 + v77);
              v78 = heap_Calloc(*(*a4 + 8), 1, (8 * *(*(a4 + 64) + v59 + 112)) | 1);
              v56 = *(a4 + 64);
              *(v56 + v59 + 104) = v78;
              v79 = (v56 + v59 + 104);
              if (!v78)
              {
                goto LABEL_127;
              }

              if (*(v56 + v59 + 112))
              {
                v80 = 0;
                v81 = 0;
                do
                {
                  *(*v79 + v80) = *(v54 + v77 + v80 + 2);
                  *(*(*(a4 + 64) + v59 + 104) + v80 + 4) = *(v54 + v77 + v80 + 6);
                  ++v81;
                  v56 = *(a4 + 64);
                  v79 = (v56 + v59 + 104);
                  v80 += 8;
                }

                while (v81 < *(v56 + v59 + 112));
                v58 = v77 + v80 + 2;
              }

              else
              {
                v58 = v77 + 2;
              }

              LODWORD(v264[0]) = v58;
            }

            while (++v57 < *(a4 + 72));
          }

          LODWORD(v27) = 0;
        }
      }

      else
      {
        v45 = v256;
        v46 = *v256;
        *(a4 + 56) = v46;
        v47 = heap_Calloc(*(*a4 + 8), 1, (16 * v46) | 1);
        *(a4 + 48) = v47;
        if (!v47)
        {
          goto LABEL_127;
        }

        if (*(a4 + 56))
        {
          v48 = 0;
          v49 = 2;
          while (1)
          {
            *(v47 + 16 * v48 + 8) = *(v45 + v49);
            v50 = heap_Calloc(*(*a4 + 8), 1, (8 * *(*(a4 + 48) + 16 * v48 + 8)) | 1);
            v47 = *(a4 + 48);
            v51 = v47 + 16 * v48;
            *v51 = v50;
            if (!v50)
            {
              break;
            }

            if (*(v51 + 8))
            {
              v52 = 0;
              v53 = 0;
              do
              {
                *(*v51 + v52) = *(v45 + v49 + v52 + 2);
                *(*(*(a4 + 48) + 16 * v48) + v52 + 4) = *(v45 + v49 + v52 + 6);
                ++v53;
                v47 = *(a4 + 48);
                v51 = v47 + 16 * v48;
                v52 += 8;
              }

              while (v53 < *(v51 + 8));
              v49 += v52 + 2;
            }

            else
            {
              v49 += 2;
            }

            if (++v48 >= *(a4 + 56))
            {
              goto LABEL_42;
            }
          }

LABEL_127:
          v27 = 2313166858;
          goto LABEL_128;
        }

LABEL_42:
        LODWORD(v27) = 0;
      }
    }

    else
    {
      LODWORD(v27) = 0;
      v33 = v256;
      *(a4 + 16) = *v256;
      *(a4 + 18) = v33[1];
      *(a4 + 20) = v33[2];
    }

LABEL_95:
    v104 = ssftriff_reader_CloseChunk(v260);
    if (v104 < 0)
    {
      LODWORD(v27) = v104;
    }
  }

  while ((v27 & 0x80000000) == 0);
  v105 = v27 & 0x1FFF;
  v27 = 2313166858;
  if (v105 == 10)
  {
    goto LABEL_194;
  }

  ssftriff_reader_ObjClose(v260, v24, v25, v26, v20, v21, v22, v23);
  v260 = 0;
  *(a4 + 88) = 0;
  *(a4 + 22) = 0x10000;
  *(a4 + 26) = 2;
  *(a4 + 336) = 0;
  *(a4 + 104) = 0;
  v247 = (a4 + 104);
  v106 = *(a4 + 72);
  if (!*(a4 + 72))
  {
    LOWORD(v108) = 0;
    v124 = 0;
    goto LABEL_132;
  }

  v241 = v12;
  v242 = v9;
  v244 = v8;
  v251 = 0;
  v107 = 0;
  v108 = 0;
  v246 = 0;
  v110 = *(a4 + 304);
  v109 = *(a4 + 312);
  v111 = *(a4 + 64);
  while (2)
  {
    v112 = strlen((v110 + *(v109 + 4 * v111[1])));
    if (v112 > v108)
    {
      v108 = v112;
    }

    v113 = v108;
    v114 = *(v109 + 4 * *v111);
    v115 = strlen((v110 + v114));
    if (v115 >= 7)
    {
      v117 = v115;
      if (!strncmp((v110 + v114), "HYPHEN", 6uLL))
      {
        v118 = (a4 + 88);
        v119 = ++v251;
LABEL_109:
        *v118 = v119;
      }

      else if (v117 >= 9 && !strncmp((v110 + v114), "COMPOUND", 8uLL))
      {
        v118 = (a4 + 104);
        v119 = ++v246;
        goto LABEL_109;
      }
    }

    v108 = v113;
    v120 = *(v111 + 8);
    if (v120 > v107)
    {
      *(a4 + 336) = v120;
      v107 = v120;
      if (v120 >= 0x11)
      {
        log_OutPublic(*(*a4 + 32), "FE_POS", 35007, "%s%s", v116, v38, v39, v40, "maximum words");
        v27 = 2313166848;
        goto LABEL_194;
      }
    }

    v111 += 30;
    if (--v106)
    {
      continue;
    }

    break;
  }

  v9 = v242;
  v8 = v244;
  v121 = v246;
  if (v251)
  {
    v122 = heap_Calloc(*(*a4 + 8), 1, (2 * v251) | 1);
    *(a4 + 80) = v122;
    if (!v122)
    {
      goto LABEL_128;
    }

    v121 = *v247;
  }

  if (v121)
  {
    v123 = heap_Calloc(*(*a4 + 8), 1, (2 * v121) | 1);
    *(a4 + 96) = v123;
    if (!v123)
    {
LABEL_128:
      v137 = *a4;
      goto LABEL_129;
    }
  }

  v124 = *(a4 + 72);
  *(a4 + 88) = 0;
  *(a4 + 104) = 0;
  if (v124)
  {
    v125 = 0;
    v126 = *(a4 + 304);
    v127 = *(a4 + 312);
    v128 = *(a4 + 64);
    v12 = v241;
    do
    {
      v129 = *v128;
      v128 += 30;
      v130 = *(v127 + 4 * v129);
      v131 = strlen((v126 + v130));
      if (v131 >= 7)
      {
        v132 = v131;
        v133 = strncmp((v126 + v130), "HYPHEN", 6uLL);
        v134 = (a4 + 80);
        v135 = (a4 + 88);
        if (!v133 || v132 >= 9 && (v136 = strncmp((v126 + v130), "COMPOUND", 8uLL), v134 = (a4 + 96), v135 = (a4 + 104), !v136))
        {
          *(*v134 + 2 * (*v135)++) = v125;
        }
      }

      ++v125;
    }

    while (v125 < *(a4 + 72));
    v124 = *v247;
    v9 = v242;
    v8 = v244;
  }

  else
  {
    v12 = v241;
  }

LABEL_132:
  log_OutText(*(*a4 + 32), "FE_POS", 5, 0, "%d OPEN RULES", v38, v39, v40, v124);
  if (*(a4 + 104))
  {
    v142 = 0;
    do
    {
      v143 = (*(a4 + 64) + 120 * *(*(a4 + 96) + 2 * v142));
      v239 = *(v143 + 16);
      log_OutText(*(*a4 + 32), "FE_POS", 5, 0, "label=%s (%d words)", v139, v140, v141, *(a4 + 304) + *(*(a4 + 312) + 4 * *v143));
      ++v142;
    }

    while (v142 < *(a4 + 104));
  }

  log_OutText(*(*a4 + 32), "FE_POS", 5, 0, "%d HYPHENATED RULES", v139, v140, v141, *(a4 + 88));
  if (*(a4 + 88))
  {
    v147 = 0;
    do
    {
      v148 = (*(a4 + 64) + 120 * *(*(a4 + 80) + 2 * v147));
      v240 = *(v148 + 16);
      log_OutText(*(*a4 + 32), "FE_POS", 5, 0, "label=%s (%d words)", v144, v145, v146, *(a4 + 304) + *(*(a4 + 312) + 4 * *v148));
      ++v147;
    }

    while (v147 < *(a4 + 88));
  }

  v264[0] = 0;
  LOWORD(__s) = -1;
  __s2[0] = 0;
  Str = (*(v8 + 96))(v249, v9, "fecfg", "compoundabbrendingstrip", v264, &__s, __s2);
  if ((Str & 0x80000000) != 0)
  {
LABEL_193:
    v27 = Str;
    goto LABEL_194;
  }

  *(a4 + 340) = 0;
  *(a4 + 344) = 0;
  if (__s == 1 && v264[0])
  {
    v149 = strchr(*v264[0], 44);
    if (v149)
    {
      v150 = v108;
      v151 = 0;
      do
      {
        v152 = v151++;
        *(a4 + 340) = v151;
        v149 = strchr(v149 + 1, 44);
      }

      while (v149);
      v153 = v152 + 2;
      LOWORD(v108) = v150;
    }

    else
    {
      v153 = 1;
    }

    *(a4 + 340) = v153;
    v154 = heap_Calloc(*(*a4 + 8), 1, (8 * v153) | 1);
    *(a4 + 344) = v154;
    if (!v154)
    {
      goto LABEL_128;
    }

    *(a4 + 340) = 0;
    v155 = *v264[0];
    v156 = strchr(*v264[0], __s2[0]);
    if (v156)
    {
      *v156 = 0;
      v155 = *v264[0];
    }

    if (v155)
    {
      v157 = strchr(v155, 44);
      if (v157)
      {
        v158 = v157;
        do
        {
          *v158 = 0;
          v159 = strlen(v155);
          v160 = heap_Calloc(*(*a4 + 8), 1, (v159 + 1));
          v161 = *(a4 + 340);
          *(*(a4 + 344) + 8 * v161) = v160;
          v162 = *(*(a4 + 344) + 8 * v161);
          if (!v162)
          {
            goto LABEL_128;
          }

          strcpy(v162, v155);
          v155 = v158 + 1;
          ++*(a4 + 340);
          v158 = strchr(v158 + 1, 44);
        }

        while (v158);
      }

      v163 = strlen(v155);
      v164 = heap_Calloc(*(*a4 + 8), 1, (v163 + 1));
      v165 = *(a4 + 340);
      *(*(a4 + 344) + 8 * v165) = v164;
      v166 = *(*(a4 + 344) + 8 * v165);
      if (!v166)
      {
        goto LABEL_128;
      }

      strcpy(v166, v155);
      ++*(a4 + 340);
    }
  }

  if (!v108)
  {
LABEL_161:
    *(a4 + 136) = 0;
    *(a4 + 368) = 0;
    v248 = *(a4 + 72);
    if (!*(a4 + 72))
    {
      goto LABEL_195;
    }

    v243 = v9;
    v245 = v8;
    v169 = 0;
    v170 = 0;
    v171 = 0;
    v250 = *(a4 + 64);
    do
    {
      v252 = v170;
      v172 = v250 + 120 * v170;
      v173 = *(v172 + 64);
      if (*(v172 + 64))
      {
        v175 = *(a4 + 304);
        v174 = *(a4 + 312);
        v176 = (*(v172 + 56) + 4);
        do
        {
          if (!strcmp((v175 + *(v174 + 4 * *(v176 - 1))), "IGTREE"))
          {
            *(a4 + 136) = ++v169;
            v177 = strlen((v175 + *(v174 + 4 * *v176)));
            if (v177 > v171)
            {
              v171 = v177;
            }
          }

          v176 += 2;
          --v173;
        }

        while (v173);
      }

      v178 = v250 + 120 * v252;
      v179 = *(v178 + 96);
      if (*(v178 + 96))
      {
        v181 = *(a4 + 304);
        v180 = *(a4 + 312);
        v182 = (*(v178 + 88) + 4);
        do
        {
          if (!strcmp((v181 + *(v180 + 4 * *(v182 - 1))), "IGTREE"))
          {
            *(a4 + 136) = ++v169;
            v183 = strlen((v181 + *(v180 + 4 * *v182)));
            if (v183 > v171)
            {
              v171 = v183;
            }
          }

          v182 += 2;
          --v179;
        }

        while (v179);
      }

      v184 = v250 + 120 * v252;
      v185 = *(v184 + 112);
      if (*(v184 + 112))
      {
        v187 = *(a4 + 304);
        v186 = *(a4 + 312);
        v188 = (*(v184 + 104) + 4);
        do
        {
          if (!strcmp((v187 + *(v186 + 4 * *(v188 - 1))), "IGTREE"))
          {
            *(a4 + 136) = ++v169;
            v189 = strlen((v187 + *(v186 + 4 * *v188)));
            if (v189 > v171)
            {
              v171 = v189;
            }
          }

          v188 += 2;
          --v185;
        }

        while (v185);
      }

      v170 = v252 + 1;
    }

    while (v252 + 1 != v248);
    if (!v169)
    {
LABEL_195:
      v27 = 0;
      goto LABEL_194;
    }

    *(a4 + 116) = 0;
    *(a4 + 112) = 0;
    Str = (*(v245 + 72))(v249, v243, "compounds_feature_map");
    if ((Str & 0x80000000) == 0)
    {
      Str = (*(v245 + 72))(v249, v243, "compounds_feature_key", a4 + 112);
      if ((Str & 0x80000000) == 0)
      {
        Str = getDctIgtreeMappings(a4, v249, v243, v245, a4 + 120);
        if ((Str & 0x80000000) == 0)
        {
          v190 = Str;
          v191 = heap_Calloc(*(v12 + 8), 1, 20 * *(a4 + 136));
          *(a4 + 144) = v191;
          if (v191)
          {
            v192 = heap_Calloc(*(v12 + 8), 1, 8 * *(a4 + 136));
            *(a4 + 152) = v192;
            if (v192)
            {
              if (*(a4 + 136))
              {
                v193 = 0;
                while (1)
                {
                  *(*(a4 + 152) + 8 * v193) = heap_Calloc(*(v12 + 8), 1, v171 + 1);
                  if (!*(*(a4 + 152) + 8 * v193))
                  {
                    break;
                  }

                  ++v193;
                  v194 = *(a4 + 136);
                  if (v193 >= v194)
                  {
                    v195 = 8 * v194;
                    goto LABEL_197;
                  }
                }
              }

              else
              {
                v195 = 0;
LABEL_197:
                v198 = heap_Calloc(*(v12 + 8), 1, v195);
                *(a4 + 160) = v198;
                if (v198)
                {
                  if (*(a4 + 136))
                  {
                    v199 = 0;
                    while (1)
                    {
                      *(*(a4 + 160) + 8 * v199) = heap_Calloc(*(v12 + 8), 1, 1600);
                      if (!*(*(a4 + 160) + 8 * v199))
                      {
                        break;
                      }

                      ++v199;
                      v200 = *(a4 + 136);
                      if (v199 >= v200)
                      {
                        v201 = 8 * v200;
                        goto LABEL_204;
                      }
                    }
                  }

                  else
                  {
                    v201 = 0;
LABEL_204:
                    v202 = heap_Calloc(*(v12 + 8), 1, v201);
                    *(a4 + 168) = v202;
                    if (v202)
                    {
                      if (*(a4 + 136))
                      {
                        v203 = 0;
                        while (1)
                        {
                          *(*(a4 + 168) + 8 * v203) = heap_Calloc(*(v12 + 8), 1, 16);
                          if (!*(*(a4 + 168) + 8 * v203))
                          {
                            break;
                          }

                          ++v203;
                          v204 = *(a4 + 136);
                          if (v203 >= v204)
                          {
                            v205 = 8 * v204;
                            goto LABEL_211;
                          }
                        }
                      }

                      else
                      {
                        v205 = 0;
LABEL_211:
                        v206 = heap_Calloc(*(v12 + 8), 1, v205);
                        *(a4 + 176) = v206;
                        if (v206)
                        {
                          v207 = heap_Calloc(*(v12 + 8), 1, 8 * *(a4 + 136));
                          *(a4 + 184) = v207;
                          if (v207)
                          {
                            LODWORD(v208) = *(a4 + 136);
                            if (!*(a4 + 136))
                            {
LABEL_217:
                              if (*(a4 + 72))
                              {
                                v210 = 0;
                                v211 = 0;
                                v212 = *(a4 + 64);
                                do
                                {
                                  v213 = v212 + 120 * v210;
                                  if (*(v213 + 64))
                                  {
                                    v214 = 0;
                                    v215 = 0;
                                    v216 = (v213 + 56);
                                    do
                                    {
                                      v217 = *(a4 + 304);
                                      v218 = *(a4 + 312);
                                      v219 = *v216;
                                      if (!strcmp((v217 + *(v218 + 4 * *(*v216 + v214))), "IGTREE"))
                                      {
                                        v190 = setIGTreeInfo(v253, v254, a4, v211, (v217 + *(v218 + 4 * *(v219 + v214 + 4))), v249, v243, v245);
                                        if ((v190 & 0x80000000) != 0)
                                        {
                                          goto LABEL_242;
                                        }

                                        ++v211;
                                        v212 = *(a4 + 64);
                                      }

                                      ++v215;
                                      v220 = v212 + 120 * v210;
                                      v216 = (v220 + 56);
                                      v214 += 8;
                                    }

                                    while (v215 < *(v220 + 64));
                                  }

                                  v221 = v212 + 120 * v210;
                                  if (*(v221 + 96))
                                  {
                                    v222 = 0;
                                    v223 = 0;
                                    v224 = (v221 + 88);
                                    do
                                    {
                                      v225 = *(a4 + 304);
                                      v226 = *(a4 + 312);
                                      v227 = *v224;
                                      if (!strcmp((v225 + *(v226 + 4 * *(*v224 + v222))), "IGTREE"))
                                      {
                                        v190 = setIGTreeInfo(v253, v254, a4, v211, (v225 + *(v226 + 4 * *(v227 + v222 + 4))), v249, v243, v245);
                                        if ((v190 & 0x80000000) != 0)
                                        {
                                          goto LABEL_242;
                                        }

                                        ++v211;
                                        v212 = *(a4 + 64);
                                      }

                                      ++v223;
                                      v228 = v212 + 120 * v210;
                                      v224 = (v228 + 88);
                                      v222 += 8;
                                    }

                                    while (v223 < *(v228 + 96));
                                  }

                                  v229 = v212 + 120 * v210;
                                  if (*(v229 + 112))
                                  {
                                    v230 = 0;
                                    v231 = 0;
                                    v232 = (v229 + 104);
                                    do
                                    {
                                      v233 = *(a4 + 304);
                                      v234 = *(a4 + 312);
                                      v235 = *v232;
                                      if (!strcmp((v233 + *(v234 + 4 * *(*v232 + v230))), "IGTREE"))
                                      {
                                        v190 = setIGTreeInfo(v253, v254, a4, v211, (v233 + *(v234 + 4 * *(v235 + v230 + 4))), v249, v243, v245);
                                        if ((v190 & 0x80000000) != 0)
                                        {
                                          goto LABEL_242;
                                        }

                                        ++v211;
                                        v212 = *(a4 + 64);
                                      }

                                      ++v231;
                                      v236 = v212 + 120 * v210;
                                      v232 = (v236 + 104);
                                      v230 += 8;
                                    }

                                    while (v231 < *(v236 + 112));
                                  }

                                  ++v210;
                                }

                                while (v210 < *(a4 + 72));
                                LODWORD(v208) = *(a4 + 136);
                              }

                              if (v208)
                              {
                                v237 = 0;
                                do
                                {
                                  setIGTreeWord2Nindex(a4, v237++);
                                }

                                while (*(a4 + 136) > v237);
                              }

LABEL_242:
                              v27 = v190;
                              goto LABEL_194;
                            }

                            v209 = 0;
                            while (1)
                            {
                              *(*(a4 + 184) + 8 * v209) = heap_Calloc(*(v12 + 8), 1, 8);
                              if (!*(*(a4 + 184) + 8 * v209))
                              {
                                break;
                              }

                              ++v209;
                              v208 = *(a4 + 136);
                              if (v209 >= v208)
                              {
                                goto LABEL_217;
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

          v138 = *(v12 + 32);
          goto LABEL_130;
        }
      }
    }

    goto LABEL_193;
  }

  v167 = heap_Calloc(*(*a4 + 8), 1, v108 + 11);
  *(a4 + 352) = v167;
  v137 = *a4;
  if (v167)
  {
    v168 = heap_Calloc(*(v137 + 8), 1, v108 + 11);
    *(a4 + 360) = v168;
    if (!v168)
    {
      goto LABEL_128;
    }

    goto LABEL_161;
  }

LABEL_129:
  v138 = *(v137 + 32);
LABEL_130:
  log_OutPublic(v138, "FE_POS", 35000, 0, v37, v38, v39, v40, v238);
LABEL_194:
  v196 = *MEMORY[0x1E69E9840];
  return v27;
}